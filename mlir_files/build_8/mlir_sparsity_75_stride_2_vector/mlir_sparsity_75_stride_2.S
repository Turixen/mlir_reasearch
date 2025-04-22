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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	0x3feb3f1843c3a42f              # double 0.85145199999999999
	.quad	0x3fe3dc2d2780778a              # double 0.62062700000000004
	.quad	0x3feb2a715831f03d              # double 0.84893099999999999
	.quad	0x3fca77ff151e7536              # double 0.206787
	.quad	0x3fdaa250f840181e              # double 0.416157
	.quad	0x3fe23fb58d1526d9              # double 0.57027700000000003
	.quad	0x3fd44a5df2239e6b              # double 0.31703900000000002
	.quad	0x3fd5e1b4bb5e0f80              # double 0.34190100000000001
	.quad	0x3fcc65c70435efa6              # double 0.221856
	.quad	0x3fd67082491afc05              # double 0.35061700000000001
	.quad	0x3fcd8fffbce4217d              # double 0.230957
	.quad	0x3fbe8848387df5cf              # double 0.119267
	.quad	0x3fe2d2a843808851              # double 0.58821500000000004
	.quad	0x3fde8a1dfb9389b5              # double 0.47717999999999999
	.quad	0x3fe97587d6f97679              # double 0.795597
	.quad	0x3feafdc5931ca7d6              # double 0.84347799999999995
	.quad	0x3fdaeae5bc87db2b              # double 0.42058699999999999
	.quad	0x3fd3f666234a87e4              # double 0.31191400000000002
	.quad	0x3fe7708aac96cc60              # double 0.73248800000000002
	.quad	0x3fafa22706d50657              # double 0.061783999999999999
	.quad	0x3fd0644955b4677b              # double 0.25612099999999999
	.quad	0x3fec19008205ff1e              # double 0.87805200000000005
	.quad	0x3fe2e44b6e935b92              # double 0.590368
	.quad	0x3fe29ab29e4d5d81              # double 0.58138400000000001
	.quad	0x3fe0a9802c0a4a06              # double 0.52069100000000001
	.quad	0x3fe5130be0ded289              # double 0.65857500000000002
	.quad	0x3fbf082491afc04d              # double 0.12121800000000001
	.quad	0x3fee7cbd556084a5              # double 0.95272699999999999
	.quad	0x3f99f40a2877ee4e              # double 0.025344999999999999
	.quad	0x3fcca686e7e62dc7              # double 0.223832
	.quad	0x3fea1c2a02320968              # double 0.81593800000000005
	.quad	0x3f98cd20afa2f05a              # double 0.024219999999999998
	.quad	0x3feca8aa433508f6              # double 0.89558899999999997
	.quad	0x3fe4a3a6ce358299              # double 0.64497700000000002
	.quad	0x3fe5df0d413122b8              # double 0.68347800000000003
	.quad	0x3fe5cc4cdfaca362              # double 0.68118900000000004
	.quad	0x3fedd5bee3d5fdce              # double 0.932342
	.quad	0x3fddf9c1f85d744f              # double 0.46836899999999998
	.quad	0x3fc51dbca9691a76              # double 0.16497000000000001
	.quad	0x3fdab445ed4a1ad6              # double 0.41725299999999999
	.quad	0x3fec47863beec398              # double 0.88373100000000004
	.quad	0x3fe4cfa8b4bf8fcd              # double 0.65034899999999995
	.quad	0x3fd67c84b5dcc63f              # double 0.35135
	.quad	0x3feed24bfd2e9468              # double 0.96317099999999999
	.quad	0x3fbe92817763e4ac              # double 0.119423
	.quad	0x3fe83fd933e35c5b              # double 0.75779399999999997
	.quad	0x3fda3161a1db877b              # double 0.40926400000000002
	.quad	0x3fac6583e8576cce              # double 0.055461999999999997
	.quad	0x3fe525a250f84018              # double 0.66084399999999999
	.quad	0x3fd8398a65492ff5              # double 0.37851200000000002
	.quad	0x3fdf33226c3b927d              # double 0.48749599999999998
	.quad	0x3fd89dece5710881              # double 0.38463900000000001
	.quad	0x3fed69b9d7fd8277              # double 0.91915599999999997
	.quad	0x3fc8f5771001d5c3              # double 0.194991
	.quad	0x3fe582645e4e69f0              # double 0.67216699999999996
	.quad	0x3fead20afa2f05a7              # double 0.83814
	.quad	0x3fe625f202107b78              # double 0.69213199999999997
	.quad	0x3fc1fc08fa7a8501              # double 0.14050399999999999
	.quad	0x3fe5258b3f63c31e              # double 0.660833
	.quad	0x3fed98e10cf5b1c8              # double 0.92491199999999996
	.quad	0x3fe2217d2849cb25              # double 0.56658799999999998
	.quad	0x3fc5fdac68a936c6              # double 0.17180400000000001
	.quad	0x3fec5aa92e62131b              # double 0.88606700000000005
	.quad	0x3f756c0d6f544bb2              # double 0.0052300000000000003
	.quad	0x3fb51958969a0ad9              # double 0.082418000000000005
	.quad	0x3fc85e3da2f8bdec              # double 0.19037599999999999
	.quad	0x3fe2986fcdee34fc              # double 0.58110799999999996
	.quad	0x3fdad7add15f02c5              # double 0.41941400000000001
	.quad	0x3fae6d58c8eef1bb              # double 0.059428000000000002
	.quad	0x3fc7a2be0589acbd              # double 0.18465400000000001
	.quad	0x3fea67168f8e7ddd              # double 0.82508400000000004
	.quad	0x3fa7cd24e160d888              # double 0.046487000000000001
	.quad	0x3fe481c714fce747              # double 0.64084200000000002
	.quad	0x3fe50c67168f8e7e              # double 0.65776400000000002
	.quad	0x3fc8ccbc05d52c17              # double 0.193748
	.quad	0x3fe749fd7a13c255              # double 0.72778200000000004
	.quad	0x3fe99563a9f383f1              # double 0.79948600000000003
	.quad	0x3fd2e17a02fb5d03              # double 0.295012
	.quad	0x3fe1d7518b0d0edc              # double 0.55753399999999997
	.quad	0x3fc22ff08893b7d8              # double 0.14208799999999999
	.quad	0x3feed86a8fc0d2c4              # double 0.96391800000000005
	.quad	0x3fdce4c51116a8b9              # double 0.451463
	.quad	0x3fdb2ec6bce8533b              # double 0.42473
	.quad	0x3fbeca148ba83f4f              # double 0.120271
	.quad	0x3fe5c886162f166e              # double 0.680728
	.quad	0x3fe1ef5019f3c70d              # double 0.56046300000000004
	.quad	0x3fc1d9dba908a266              # double 0.139461
	.quad	0x3fdde4abe6a337a8              # double 0.467082
	.quad	0x3fdbde3b8a19c9d6              # double 0.43543900000000002
	.quad	0x3fea1626b2f23034              # double 0.81520400000000003
	.quad	0x3fe9cd74927913e8              # double 0.80632999999999999
	.quad	0x3fdba250f840181e              # double 0.431782
	.quad	0x3fd7f93bc0a06ea0              # double 0.374587
	.quad	0x3fe467620ee8d10f              # double 0.63761999999999996
	.quad	0x3fad55c52e72da12              # double 0.057294999999999999
	.quad	0x3fa8ede54b48d3ae              # double 0.048689999999999997
	.quad	0x3fe9aa5614df8b15              # double 0.80204299999999995
	.quad	0x3fb1f666234a87e4              # double 0.070166000000000006
	.quad	0x3fe16b2074ea8da8              # double 0.54432700000000001
	.quad	0x3fe55aee631f8a09              # double 0.66735
	.quad	0x3fe41042d8c2a455              # double 0.62698500000000001
	.quad	0x3feddc22ab25b318              # double 0.93312200000000001
	.quad	0x3fdfd740c4156e26              # double 0.49751299999999998
	.quad	0x3fbd947cfa26a22b              # double 0.115547
	.quad	0x3fdfa875d56f32be              # double 0.49465700000000001
	.quad	0x3fda73abc947064f              # double 0.41331000000000001
	.quad	0x3fe251676640a6b9              # double 0.57243699999999997
	.quad	0x3fdbbc23315d701e              # double 0.43335800000000002
	.quad	0x3fe7495182a9930c              # double 0.72770000000000001
	.quad	0x3fe527cbf6e3f78c              # double 0.66110800000000003
	.quad	0x3fc9cc532a497fa6              # double 0.201548
	.quad	0x3fe0dc0767d34df0              # double 0.52685899999999997
	.quad	0x3fe1d5970b49e01e              # double 0.55732300000000001
	.quad	0x3fd05aa715831f04              # double 0.25553300000000001
	.quad	0x3fe49e364bec679d              # double 0.64431300000000002
	.quad	0x3f671e29b6b2af14              # double 0.0028219999999999999
	.quad	0x3fe9b1183b60285f              # double 0.80286800000000003
	.quad	0x3fd14070329802c1              # double 0.26955800000000002
	.quad	0x3fba73d5bab21816              # double 0.10333000000000001
	.quad	0x3fd0ded6ba8c5868              # double 0.26360099999999997
	.quad	0x3fd5c21187e7c06e              # double 0.33996999999999999
	.quad	0x3fc9f77af640639d              # double 0.20286499999999999
	.quad	0x3fedd0acc0bdcad1              # double 0.93172299999999997
	.quad	0x3fe10d2c386d2ed8              # double 0.53285800000000005
	.quad	0x3fdb1d4306e5cd4f              # double 0.42366100000000001
	.quad	0x3fd9fe9b7bf1e8e6              # double 0.406165
	.quad	0x3fdd39e279dd3bb0              # double 0.45665800000000001
	.quad	0x3fe7f78140dd3fe2              # double 0.74896300000000005
	.quad	0x3fd1d573647baa9b              # double 0.27865299999999998
	.quad	0x3fdd9de481f53826              # double 0.46276200000000001
	.quad	0x3fedc90c4dec1c1d              # double 0.93079199999999995
	.quad	0x3fe5c4d22c881e47              # double 0.68027599999999999
	.quad	0x3fe9882cf52b90a8              # double 0.79787300000000005
	.quad	0x3fe6e1f9f01b866e              # double 0.71508499999999997
	.quad	0x3fcd6fc9bc771434              # double 0.22997400000000001
	.quad	0x3fdfe3150dae3e6c              # double 0.49823499999999998
	.quad	0x3fee28ed5f138bce              # double 0.942496
	.quad	0x3fef254e6e221c8a              # double 0.97330399999999995
	.quad	0x3fe7d0c804102ff9              # double 0.74423600000000001
	.quad	0x3fe8beaf6837f7be              # double 0.77327699999999999
	.quad	0x3fecbeccc46950fc              # double 0.89829099999999995
	.quad	0x3fe5c0a2877ee4e2              # double 0.67976499999999995
	.quad	0x3fef6d6ba8c58687              # double 0.98210699999999995
	.quad	0x3febfb15b573eab3              # double 0.87439999999999996
	.quad	0x3fe4b6f19934efcc              # double 0.64733200000000002
	.quad	0x3fc1852f7f498c3b              # double 0.136877
	.quad	0x3fdbdc7ef177a701              # double 0.43533300000000003
	.quad	0x3fd9f023e9ea1405              # double 0.40528199999999998
	.quad	0x3fde6a832b990afe              # double 0.47525099999999998
	.quad	0x3fd416f86a098916              # double 0.31390200000000001
	.quad	0x3fa5f78359bc33f8              # double 0.042903999999999998
	.quad	0x3fe175147f130596              # double 0.54554199999999997
	.quad	0x3fe6ba0a52695960              # double 0.71021000000000001
	.quad	0x3fe63476295208e1              # double 0.69390399999999997
	.quad	0x3fe2751266341180              # double 0.57679100000000005
	.quad	0x3fec311c6d1e108c              # double 0.88099499999999997
	.quad	0x3feb2085b18548aa              # double 0.84772000000000003
	.quad	0x3fef44ed6fda836f              # double 0.97716400000000003
	.quad	0x3fd6a9a8049667b6              # double 0.354105
	.quad	0x3fc4c111ada76d98              # double 0.16214200000000001
	.quad	0x3fdf544fe36d2242              # double 0.48952099999999998
	.quad	0x3fe3fe8ccdd93c47              # double 0.62482300000000002
	.quad	0x3fee5e310dbf0564              # double 0.948998
	.quad	0x3fbfed20296b3355              # double 0.124712
	.quad	0x3fcb3bfb58d1526e              # double 0.21276800000000001
	.quad	0x3fed518b0d0edc3c              # double 0.91620400000000001
	.quad	0x3f9ec31162281345              # double 0.030041000000000002
	.quad	0x3feb5260f5e41d4b              # double 0.85380599999999995
	.quad	0x3fd4bf7f06705c89              # double 0.32418799999999998
	.quad	0x3fe2a4d4cb9ecf64              # double 0.58262100000000006
	.quad	0x3f642b302f72b453              # double 0.0024620000000000002
	.quad	0x3fe27405f6ba0621              # double 0.57666300000000004
	.quad	0x3feb3b3a68b19a41              # double 0.85097999999999996
	.quad	0x3fd484f8f8a4c1ec              # double 0.32061600000000001
	.quad	0x3fa0b1bbcf4e874d              # double 0.032606000000000003
	.quad	0x3fcbfbd6a593a2e0              # double 0.21862300000000001
	.quad	0x3fe3002c0a4a05de              # double 0.59377100000000005
	.quad	0x3fe0703d145d8516              # double 0.51370099999999996
	.quad	0x3fe1106ab14ec205              # double 0.53325400000000001
	.quad	0x3fdebaa9b499d020              # double 0.48014299999999999
	.quad	0x3feb0f9b13165d3a              # double 0.84565500000000005
	.quad	0x3fb229a5ebb7739f              # double 0.070947999999999997
	.quad	0x3fe3049a9973d9ec              # double 0.59431199999999995
	.quad	0x3fb8308feac42e99              # double 0.094491000000000006
	.quad	0x3fea3aabcd78c437              # double 0.819662
	.quad	0x3fd814013ec460ee              # double 0.37622100000000003
	.quad	0x3fc9e4cd74927914              # double 0.202295
	.quad	0x3fc849cb252ce033              # double 0.189752
	.quad	0x3fd8794ea077036d              # double 0.38240400000000002
	.quad	0x3fdf1971c10d7bea              # double 0.48592800000000003
	.quad	0x3fd653005814940c              # double 0.34881600000000001
	.quad	0x3fe37023e9ea1405              # double 0.60743899999999995
	.quad	0x3fe1d1aa821f2991              # double 0.55684400000000001
	.quad	0x3fe35538ac18f81f              # double 0.60415300000000005
	.quad	0x3fec5bf26f1dc50d              # double 0.88622400000000001
	.quad	0x3fe8357a355043e5              # double 0.75652799999999998
	.quad	0x3fe53c23315d701e              # double 0.66359100000000004
	.quad	0x3fe82706d5065732              # double 0.75476399999999999
	.quad	0x3fe83c44bf4cb189              # double 0.75735699999999995
	.quad	0x3fc158d9b5e95b79              # double 0.13552400000000001
	.quad	0x3fd57db2b346130a              # double 0.33579700000000001
	.quad	0x3fecbd9cae21101b              # double 0.898146
	.quad	0x3fe5f4c2b51bd61f              # double 0.68612799999999996
	.quad	0x3fd52c55c96030c2              # double 0.33083099999999999
	.quad	0x3fda655e28aa4335              # double 0.412437
	.quad	0x3feece075f6fd220              # double 0.96265
	.quad	0x3fda80b673c4f3ba              # double 0.41410599999999997
	.quad	0x3fc7f4eca686e7e6              # double 0.187162
	.quad	0x3fef27cbf6e3f78c              # double 0.97360800000000002
	.quad	0x3fe65e9185cee17a              # double 0.699044
	.quad	0x3fe0737542a23c00              # double 0.51409400000000005
	.quad	0x3fc9f090f733a8a4              # double 0.202654
	.quad	0x3fde929aa1d755bd              # double 0.47769800000000001
	.quad	0x3fd5f93bc0a06ea0              # double 0.343337
	.quad	0x3fca80064a9cdc44              # double 0.20703199999999999
	.quad	0x3fe80b3b320535ca              # double 0.75137100000000001
	.quad	0x3fb51904b3c3e74b              # double 0.082413
	.quad	0x3fdeb4d48882f0e1              # double 0.47978700000000002
	.quad	0x3fd90d8cb07d0aee              # double 0.39145200000000002
	.quad	0x3fc30c88a47ecfea              # double 0.14882000000000001
	.quad	0x3fed2a51e321a2e8              # double 0.911416
	.quad	0x3fca8ac5c13fd0d0              # double 0.20735999999999999
	.quad	0x3fe3e525892684cf              # double 0.621722
	.quad	0x3fe2a7ae9ab29e4d              # double 0.58296899999999996
	.quad	0x3fccaac1094a2b9d              # double 0.22396099999999999
	.quad	0x3fed7f8012dfd695              # double 0.92181400000000002
	.quad	0x3fe92a2a0a958538              # double 0.78639700000000001
	.quad	0x3fcf43e100607810              # double 0.244259
	.quad	0x3fecc4fc1df3300e              # double 0.89904600000000001
	.quad	0x3fe30e5604189375              # double 0.59550000000000003
	.quad	0x3febedd26b723ee2              # double 0.87278100000000003
	.quad	0x3fd18de2ac322292              # double 0.274285
	.quad	0x3fce0b135979181a              # double 0.234713
	.quad	0x3fd26b6e0d23d4f1              # double 0.28780699999999998
	.quad	0x3fbf8cb8e086bdf5              # double 0.123241
	.quad	0x3fe3159e6256366d              # double 0.59638899999999995
	.quad	0x3fe4d1611ba3ca75              # double 0.650559
	.quad	0x3fd8327243137b07              # double 0.378079
	.quad	0x3fcaae429e0a41a2              # double 0.20844299999999999
	.quad	0x3fe7fc2224edf612              # double 0.74952799999999997
	.quad	0x3fe678f8a4c1ebc8              # double 0.70226699999999997
	.quad	0x3fd1a593a2df9379              # double 0.275731
	.quad	0x3fd5fe82517e77d5              # double 0.34365899999999999
	.quad	0x3fe49e1d2178f68c              # double 0.64430100000000001
	.quad	0x3fd8d96a6a01259a              # double 0.38827
	.quad	0x3fe4fac81d3aa36a              # double 0.655613
	.quad	0x3fe71eb6390c9108              # double 0.722499
	.quad	0x3fde78f68be2f7b1              # double 0.47613299999999997
	.quad	0x3fe03f22c01e68a1              # double 0.50770700000000002
	.quad	0x3fdd8d434a01abd2              # double 0.46174700000000002
	.quad	0x3fe7a7cbf6e3f78c              # double 0.73923300000000003
	.quad	0x3f9c0a06e9ff0cbb              # double 0.027382
	.quad	0x3fe7d09e12a51e32              # double 0.74421599999999999
	.quad	0x3fe8e0e51d25aab4              # double 0.77745299999999994
	.quad	0x3fe9e07e5a78f25a              # double 0.80865399999999998
	.quad	0x3fe385ccc89b0ee5              # double 0.61008300000000004
	.quad	0x3fa6e631f8a0902e              # double 0.044725000000000001
	.quad	0x3fe7efd86a8fc0d3              # double 0.74802800000000003
	.quad	0x3fe1f566490a350d              # double 0.56120599999999998
	.quad	0x3fd69578a2a90cd4              # double 0.35287299999999999
	.quad	0x3fd6847f562174c5              # double 0.35183700000000001
	.quad	0x3fef547e06961c37              # double 0.97906400000000004
	.quad	0x3fdcee06d938151a              # double 0.45202799999999999
	.quad	0x3fe2aaae297396d1              # double 0.58333500000000005
	.quad	0x3fed23161a1db878              # double 0.91053300000000004
	.quad	0x3fe7378ab0c88a48              # double 0.72553000000000001
	.quad	0x3feafcf80dc33722              # double 0.84338000000000002
	.quad	0x3fcec34c1a8ac5c1              # double 0.24033499999999999
	.quad	0x3fd8fff79c842fa5              # double 0.390623
	.quad	0x3f84cf4a558ea7ce              # double 0.010161
	.quad	0x3fe86eeb702602c9              # double 0.76354
	.quad	0x3fe82e07e5a78f26              # double 0.75561900000000004
	.quad	0x3fef93836a832b99              # double 0.98675699999999999
	.quad	0x3fb6ee73e681a9b9              # double 0.089576000000000003
	.quad	0x3fe03a71151611ba              # double 0.50713399999999997
	.quad	0x3fef78f25a250f84              # double 0.98351399999999999
	.quad	0x3fc75097c80841ee              # double 0.182147
	.quad	0x3f759817b95a2941              # double 0.0052719999999999998
	.quad	0x3feb6266fd651b0d              # double 0.85576200000000002
	.quad	0x3fdb038194c01605              # double 0.42208899999999999
	.quad	0x3fe617e56473471f              # double 0.69041699999999995
	.quad	0x3fe9ad03d9a95422              # double 0.80237000000000003
	.quad	0x3fd8644523f67f4e              # double 0.38112000000000001
	.quad	0x3fa849667b5f1bef              # double 0.047434999999999998
	.quad	0x3fd0c3c5bd0e12e8              # double 0.26194899999999999
	.quad	0x3fea44241c3efae8              # double 0.82081800000000005
	.quad	0x3fe48fde2ef4e011              # double 0.64256199999999997
	.quad	0x3fd1aba387592535              # double 0.27610099999999999
	.quad	0x3fbd3415b1422ccb              # double 0.114076
	.quad	0x3fc022ee41919ac8              # double 0.12606600000000001
	.quad	0x3fc83e6c4c5974e6              # double 0.18940499999999999
	.quad	0x3fec07ad080b673c              # double 0.87593699999999996
	.quad	0x3fce73a365cb35f4              # double 0.237904
	.quad	0x3fea7d1fe64f54d2              # double 0.82777400000000001
	.quad	0x3fe6e733ebbfd71b              # double 0.715723
	.quad	0x3fd64da9003eea21              # double 0.34849000000000002
	.quad	0x3fd983558a761028              # double 0.39864100000000002
	.quad	0x3fdee3ffef39085f              # double 0.48266599999999998
	.quad	0x3fe8480e8c8abd5e              # double 0.75879600000000003
	.quad	0x3feb1ef30a4e379b              # double 0.84752799999999995
	.quad	0x3fc5362e90364389              # double 0.165716
	.quad	0x3feefbdcf0307f24              # double 0.96824500000000002
	.quad	0x3fedce8d972cd7cf              # double 0.93146399999999996
	.quad	0x3fa17edc7ef177a7              # double 0.034171
	.quad	0x3fd8f45e0b4e11dc              # double 0.38991500000000001
	.quad	0x3fec93f4a98aa865              # double 0.89306099999999999
	.quad	0x3fc554fbdad7518b              # double 0.166656
	.quad	0x3fcb0ec311622813              # double 0.21138799999999999
	.quad	0x3fe7e822ff08893b              # double 0.74708699999999995
	.quad	0x3fc66351deefe500              # double 0.17490600000000001
	.quad	0x3fd74c122749f0e5              # double 0.36401800000000001
	.quad	0x3fdd0cf1800a7c5b              # double 0.45391500000000001
	.quad	0x3fb676102795703f              # double 0.087738999999999998
	.quad	0x3fed11ada76d97b3              # double 0.90840799999999999
	.quad	0x3fe5c08d8ec95bff              # double 0.679755
	.quad	0x3feadaf07bfe7e20              # double 0.83922600000000002
	.quad	0x3fef22a90cd423d9              # double 0.97298099999999998
	.quad	0x3fe78329802c0a4a              # double 0.734761
	.quad	0x3fa7f609dcf893fb              # double 0.046799
	.quad	0x3fd74a6a875d56f3              # double 0.36391699999999999
	.quad	0x3fc441d4b6a619db              # double 0.15825900000000001
	.quad	0x3fe7cfd8f0c77dd8              # double 0.74412199999999995
	.quad	0x3fde5a8155d5f56a              # double 0.47427399999999997
	.quad	0x3fdc1e0c5a8155d6              # double 0.439334
	.quad	0x3f872a38b8ae31d7              # double 0.011311
	.quad	0x3fe3753a3ec02f30              # double 0.60806000000000004
	.quad	0x3fd7f21f6cacd185              # double 0.37415300000000001
	.quad	0x3fe96117720c8cd6              # double 0.79310199999999997
	.quad	0x3fcf1ac14c660a20              # double 0.243004
	.quad	0x3fe6d846e8f29d41              # double 0.71390100000000001
	.quad	0x3fed24052d666a98              # double 0.91064699999999998
	.quad	0x3fdac382a12f9011              # double 0.41818300000000003
	.quad	0x3fcc6e5471715c64              # double 0.22211700000000001
	.quad	0x3fe876d7625204b0              # double 0.76450700000000005
	.quad	0x3fe9679cc74b838c              # double 0.79389799999999999
	.quad	0x3fe65dfa871a3b15              # double 0.69897200000000004
	.quad	0x3fb31cfbb949624a              # double 0.074661000000000005
	.quad	0x3fea98c5c9a34ca1              # double 0.83114900000000003
	.quad	0x3facfaeff5c6c11a              # double 0.056602
	.quad	0x3fc52f2b66b6177f              # double 0.16550200000000001
	.quad	0x3fca344c37e6f71a              # double 0.20472099999999999
	.quad	0x3fe4c6ed245b291c              # double 0.64928300000000005
	.quad	0x3fd208aefb2aae29              # double 0.28177999999999997
	.quad	0x3fe216d2aa5c5f7c              # double 0.56528599999999996
	.quad	0x3f817e77d523b363              # double 0.0085419999999999992
	.quad	0x3fecc77143393ab4              # double 0.89934599999999997
	.quad	0x3fd05ef1fddebd90              # double 0.25579499999999999
	.quad	0x3fed9ca3a4b5568f              # double 0.92537100000000005
	.quad	0x3fe181733226c3b9              # double 0.54705199999999998
	.quad	0x3f88811b1d92b7fe              # double 0.011965
	.quad	0x3fb28cdea033e78e              # double 0.072461999999999999
	.quad	0x3fc2c58eeae9ee46              # double 0.14665400000000001
	.quad	0x3feb4bf0995aaf79              # double 0.85302
	.quad	0x3fa3994e1a3f4667              # double 0.038279000000000001
	.quad	0x3fed3504c48adeec              # double 0.91272200000000003
	.quad	0x3fd00767d34df04e              # double 0.25045200000000001
	.quad	0x3fb28262456f75da              # double 0.072302000000000005
	.quad	0x3fe8786a098915be              # double 0.76469900000000002
	.quad	0x3fe4cc74b838c112              # double 0.64995800000000004
	.quad	0x3f792c8c5004fb12              # double 0.0061460000000000004
	.quad	0x3fe6041461b6d43d              # double 0.687998
	.quad	0x3fd13d9ec7000432              # double 0.26938600000000001
	.quad	0x3fe50f062d40aaeb              # double 0.658084
	.quad	0x3fd7f34938583622              # double 0.374224
	.quad	0x3feb0dd616f86a0a              # double 0.84543900000000005
	.quad	0x3fef04901d19157b              # double 0.96930700000000002
	.quad	0x3fe4556084a515cf              # double 0.63542200000000004
	.quad	0x3fe6b65881a15550              # double 0.70975900000000003
	.quad	0x3fd137867f0aa21a              # double 0.26901399999999998
	.quad	0x3fe8cf2ae07e5a79              # double 0.77528900000000001
	.quad	0x3fd5d9c27e953155              # double 0.341416
	.quad	0x3fe83ec02f2f9874              # double 0.75766
	.quad	0x3fd52480e8c8abd6              # double 0.33035300000000001
	.quad	0x3fef0d32830a0b1c              # double 0.97036100000000002
	.quad	0x3fe4c182ecaeea64              # double 0.64862200000000003
	.quad	0x3f917a46173b85e8              # double 0.017068
	.quad	0x3fd93eb7cbb3c819              # double 0.394453
	.quad	0x3fd1dde37585be1b              # double 0.27916800000000003
	.quad	0x3fe1f3de1e2de871              # double 0.56101900000000005
	.quad	0x3fe4b07075b3e143              # double 0.64653799999999995
	.quad	0x3fa6b37867f0aa22              # double 0.044338000000000002
	.quad	0x3fec3682730c6717              # double 0.88165400000000005
	.quad	0x3fe9b4a66559f6ec              # double 0.80330199999999996
	.quad	0x3fd33387160956c1              # double 0.30002000000000001
	.quad	0x3fcc62bae03b3e9a              # double 0.22176299999999999
	.quad	0x3feb30a0b1bbcf4f              # double 0.84968600000000005
	.quad	0x3feb3e20ccff21b4              # double 0.85133400000000003
	.quad	0x3fe77008a697aede              # double 0.73242600000000002
	.quad	0x3fa627bf61aa3f03              # double 0.043271999999999998
	.quad	0x3fe97f7596851223              # double 0.79680899999999999
	.quad	0x3fa812be48a58b3f              # double 0.047017999999999997
	.quad	0x3fc641b328b6d86f              # double 0.17388000000000001
	.quad	0x3fe7855fbb517a46              # double 0.73503099999999999
	.quad	0x3fc0ef5ec80c73ac              # double 0.13230500000000001
	.quad	0x3fd961c79b34a44c              # double 0.39659299999999997
	.quad	0x3fe0e47dc37a3db4              # double 0.52789200000000003
	.quad	0x3fe6f57928e0c9da              # double 0.71746500000000002
	.quad	0x3fc20fecdd0d8cb0              # double 0.14111099999999999
	.quad	0x3fe43e5b8561d430              # double 0.63261199999999995
	.quad	0x3fb530f062d40aaf              # double 0.082778000000000004
	.quad	0x3fcbf5be5d9e40c8              # double 0.21843699999999999
	.quad	0x3fed49cb252ce033              # double 0.91525800000000002
	.quad	0x3fe2322291fb3fa7              # double 0.56862000000000001
	.quad	0x3fe77e308787485e              # double 0.73415399999999997
	.quad	0x3fd9e6601bc98a22              # double 0.40468599999999999
	.quad	0x3fe53c31df761cbd              # double 0.66359800000000002
	.quad	0x3feebbafd976ff3b              # double 0.96041100000000001
	.quad	0x3fcb3f42352eb5f6              # double 0.212868
	.quad	0x3fcd5ddd2ae8e1d6              # double 0.22942699999999999
	.quad	0x3fa68dda48b65237              # double 0.044051
	.quad	0x3fc68adeebb341e1              # double 0.17611299999999999
	.quad	0x3fefe73c4f3ba776              # double 0.996977
	.quad	0x3fe1e3cd9a52263e              # double 0.55905800000000005
	.quad	0x3fc14c660a201472              # double 0.13514399999999999
	.quad	0x3fd3a3f034b0e1b5              # double 0.30688100000000001
	.quad	0x3fec88effe2a3cea              # double 0.89171599999999995
	.quad	0x3febae70c1333b97              # double 0.86504400000000004
	.quad	0x3fe44d44567125dd              # double 0.634432
	.quad	0x3fe818b0d0edc3bd              # double 0.75301399999999996
	.quad	0x3fc29856a37ac3eb              # double 0.14527399999999999
	.quad	0x3fe1d45a5fc7e6b4              # double 0.557172
	.quad	0x3fce0008637bd05b              # double 0.234376
	.quad	0x3fe1a5fc7e6b3fea              # double 0.551512
	.quad	0x3fdb204af922962d              # double 0.423846
	.quad	0x3fe21461b6d43d04              # double 0.56498800000000005
	.quad	0x3fe2fcf80dc33722              # double 0.59338000000000002
	.quad	0x3fed527e5215768a              # double 0.91632000000000002
	.quad	0x3feeb1c0010c6f7a              # double 0.959198
	.quad	0x3fb8f1800a7c5ac4              # double 0.097434999999999993
	.quad	0x3fede6b3fe9fadb0              # double 0.93441200000000002
	.quad	0x3febf98d8a979e17              # double 0.87421300000000002
	.quad	0x3fede8f29d40ee07              # double 0.93468600000000002
	.quad	0x3fef96a26e547171              # double 0.98713799999999995
	.quad	0x3fe3c90e66cb1034              # double 0.61829299999999998
	.quad	0x3fbd106ee30caa32              # double 0.11353199999999999
	.quad	0x3fe26892253111f1              # double 0.57526500000000003
	.quad	0x3fed00c9539b8887              # double 0.90634599999999998
	.quad	0x3fe17e931876188b              # double 0.54670099999999999
	.quad	0x3fecdd69d30270f4              # double 0.90202800000000005
	.quad	0x3fe30331e3a7daa5              # double 0.59414
	.quad	0x3fdc71ef30a4e37a              # double 0.44445400000000002
	.quad	0x3fad0268900c521e              # double 0.056659000000000001
	.quad	0x3fec9f83be6601bd              # double 0.89447200000000004
	.quad	0x3fe149235f809918              # double 0.54017800000000005
	.quad	0x3fee13964a59c066              # double 0.93989100000000003
	.quad	0x3fe1b1c864883fd5              # double 0.552952
	.quad	0x3fee2599ed7c6fbd              # double 0.94208999999999998
	.quad	0x3fd0bc87db2b3461              # double 0.26150699999999999
	.quad	0x3fd004102ff8ec10              # double 0.25024800000000003
	.quad	0x3fbfed0f6273929f              # double 0.124711
	.quad	0x3fe676af89c5e6ff              # double 0.70198799999999995
	.quad	0x3fde49cf56eac860              # double 0.47325499999999998
	.quad	0x3fc621101b003687              # double 0.17288400000000001
	.quad	0x3fd4e785b5b70692              # double 0.326631
	.quad	0x3fea540895d0b73d              # double 0.82275799999999999
	.quad	0x3fd1de481f53825e              # double 0.279192
	.quad	0x3fd5af7d30ad46f6              # double 0.33883600000000003
	.quad	0x3fef394b7b28954a              # double 0.97574399999999994
	.quad	0x3fee483a96d4c33b              # double 0.94631699999999996
	.quad	0x3fe6c521dda059a7              # double 0.71156399999999997
	.quad	0x3fe7b005814940bc              # double 0.74023700000000003
	.quad	0x3fee470eb24a6a87              # double 0.94617399999999996
	.quad	0x3fee5666a98244e9              # double 0.94804699999999997
	.quad	0x3fd2daf07bfe7e20              # double 0.29461300000000001
	.quad	0x3fda44c7b02d59d5              # double 0.41044799999999998
	.quad	0x3fe5697f1f9acffa              # double 0.66912799999999995
	.quad	0x3fc33aa369fcf3dc              # double 0.150227
	.quad	0x3fc250f840181e04              # double 0.143096
	.quad	0x3fe425edd052934b              # double 0.62963000000000002
	.quad	0x3fde03e63e8dda49              # double 0.46898800000000002
	.quad	0x3fefc9eecbfb15b5              # double 0.99339999999999994
	.quad	0x3fcaae74f2f123c4              # double 0.208449
	.quad	0x3fe04003254e6e22              # double 0.50781399999999999
	.quad	0x3fc121682f944242              # double 0.13383200000000001
	.quad	0x3fd886f47b677f6b              # double 0.38323699999999999
	.quad	0x3fe3fa41e57d9dbb              # double 0.62429900000000005
	.quad	0x3f415592d98bf7f0              # double 5.2899999999999996E-4
	.quad	0x3fc70a67620ee8d1              # double 0.180005
	.quad	0x3fbb4916ca46e08f              # double 0.106584
	.quad	0x3fed9e774eebf65e              # double 0.92559400000000003
	.quad	0x3fe8cf0b6b6e0d24              # double 0.77527400000000001
	.quad	0x3fe8b3700474d9c7              # double 0.77190400000000003
	.quad	0x3fe7d288ce703afb              # double 0.74444999999999995
	.quad	0x3fe0158537e2c55d              # double 0.50262700000000005
	.quad	0x3fe00db0574b4070              # double 0.50167099999999998
	.quad	0x3fd4ad2999567dbb              # double 0.323069
	.quad	0x3fb4b20fb224aada              # double 0.080841999999999997
	.quad	0x3fedd7774aba3876              # double 0.93255200000000005
	.quad	0x3fdf9289dadfb507              # double 0.49331900000000001
	.quad	0x3fba81fd9ba1b196              # double 0.103546
	.quad	0x3fe50e5e679463d0              # double 0.65800400000000003
	.quad	0x3fe5072b020c49ba              # double 0.65712499999999996
	.quad	0x3fc99d451fc4c166              # double 0.20011200000000001
	.quad	0x3fec34acaff6d331              # double 0.88143000000000005
	.quad	0x3fc7fbefd00713f0              # double 0.18737599999999999
	.quad	0x3fd9db445ed4a1ad              # double 0.40400799999999998
	.quad	0x3fe3bedd8b60f1b2              # double 0.61704899999999996
	.quad	0x3fd066e008e9b38d              # double 0.25627899999999998
	.quad	0x3fe9940789613d32              # double 0.79932000000000003
	.quad	0x3fc8414e7ee9142b              # double 0.18949299999999999
	.quad	0x3fe783d9a95421c0              # double 0.73484499999999997
	.quad	0x3fe0663a5c1c6089              # double 0.51247900000000002
	.quad	0x3fede5e4606748e4              # double 0.93431299999999994
	.quad	0x3fc4666666666666              # double 0.15937499999999999
	.quad	0x3fa0ffb8b26394fb              # double 0.033201000000000001
	.quad	0x3fe5038194c01605              # double 0.65667799999999998
	.quad	0x3fd0b866e43aa79c              # double 0.26125500000000001
	.quad	0x3feb13d102bc72e2              # double 0.84616899999999995
	.quad	0x3fede5a9a8049668              # double 0.93428500000000003
	.quad	0x3fce8b08dd1e53a8              # double 0.238618
	.quad	0x3fd0c059210385c6              # double 0.26173999999999997
	.quad	0x3fd8d230b9dc2f40              # double 0.38782899999999998
	.quad	0x3fdef41aef6f8f04              # double 0.483649
	.quad	0x3fe81845dc832336              # double 0.75296300000000005
	.quad	0x3fbffae3608d0892              # double 0.12492200000000001
	.quad	0x3fecd1fe64f54d1f              # double 0.90063400000000005
	.quad	0x3fd2cef240fa9c13              # double 0.293881
	.quad	0x3fe2c1205bc01a37              # double 0.58607500000000001
	.quad	0x3fdb7318fc504817              # double 0.4289
	.quad	0x3febf5dfeb8d8234              # double 0.87376399999999998
	.quad	0x3fde6887a8d64d7f              # double 0.47513
	.quad	0x3fc86234a87e38eb              # double 0.190497
	.quad	0x3fdade58e64b2314              # double 0.419821
	.quad	0x3fdc20bc382a12f9              # double 0.439498
	.quad	0x3fed010e8858ff76              # double 0.90637900000000005
	.quad	0x3fea7049a9973d9f              # double 0.82620700000000002
	.quad	0x3fdd3764f11b60af              # double 0.45650600000000002
	.quad	0x3fed1e4f765fd8ae              # double 0.90995000000000004
	.quad	0x3fee98201cd5f99c              # double 0.95606999999999997
	.quad	0x3fec1e98dcdb37ca              # double 0.87873500000000004
	.quad	0x3fdb681669ced0b3              # double 0.428228
	.quad	0x3fe06dc7ef177a70              # double 0.513401
	.quad	0x3fd1bf1e8e608073              # double 0.27728999999999998
	.quad	0x3fe749731098d478              # double 0.72771600000000003
	.quad	0x3fd77d63022dd7aa              # double 0.36702800000000002
	.quad	0x3fd55464dc22ab26              # double 0.33327600000000002
	.quad	0x3f8ab3aabcd78c43              # double 0.013037999999999999
	.quad	0x3fe1653eb399f5e0              # double 0.54360900000000001
	.quad	0x3feffb69984a0e41              # double 0.99943999999999999
	.quad	0x3fc66394face67d7              # double 0.17491399999999999
	.quad	0x3fb6c7b890d5a5b9              # double 0.088984999999999995
	.quad	0x3fc07570c564f97f              # double 0.128584
	.quad	0x3febabe27179bfdf              # double 0.86473199999999995
	.quad	0x3fe21f559b3d07c8              # double 0.56632499999999997
	.quad	0x3fda1ec0b567557a              # double 0.40812700000000002
	.quad	0x3fe608db0574b407              # double 0.688581
	.quad	0x3fd54a771c970f7c              # double 0.33267000000000002
	.quad	0x3fd601d9f4d37c13              # double 0.34386299999999997
	.quad	0x3fd436bd2b6f1993              # double 0.31584099999999998
	.quad	0x3fd6ba3ca7503b82              # double 0.35511700000000002
	.quad	0x3fdb8e4fb97bb731              # double 0.43056100000000003
	.quad	0x3fe6a294141e9af6              # double 0.70734600000000003
	.quad	0x3fe9a8283d35eb74              # double 0.80177699999999996
	.quad	0x3fd8feb074a771c9              # double 0.39054499999999998
	.quad	0x3fedd935fc3b4f61              # double 0.93276499999999996
	.quad	0x3fef6cc814d7279a              # double 0.98202900000000004
	.quad	0x3fcc5710880d801b              # double 0.22140699999999999
	.quad	0x3fef351bd61f5be6              # double 0.97523300000000002
	.quad	0x3fde24851a869403              # double 0.47097899999999998
	.quad	0x3fcda376922d948e              # double 0.23155100000000001
	.quad	0x3fc09cd3e0bd449a              # double 0.12978600000000001
	.quad	0x3fe24d6c2efd438d              # double 0.57195099999999999
	.quad	0x3fe1b08feac42e99              # double 0.55280300000000004
	.quad	0x3feb7e308787485e              # double 0.85915399999999997
	.quad	0x3fe984c48adeebb3              # double 0.79745699999999997
	.quad	0x3fdaa9930be0ded3              # double 0.41660000000000003
	.quad	0x3fddc209246bf013              # double 0.46496799999999999
	.quad	0x3fe3a4b9884c6a3c              # double 0.61385800000000001
	.quad	0x3fe604534bd76ee7              # double 0.68802799999999997
	.quad	0x3fb1001d5c31593e              # double 0.066407999999999995
	.quad	0x3fbc61c79b34a44c              # double 0.11086699999999999
	.quad	0x3fe41029ae4f3344              # double 0.626973
	.quad	0x3fc16f6d7625204b              # double 0.136213
	.quad	0x3f881cf7878b7a1c              # double 0.011774
	.quad	0x3fe64bd556084a51              # double 0.69675699999999996
	.quad	0x3fd14d50ebaade65              # double 0.27034399999999997
	.quad	0x3fc11be6e6538690              # double 0.13366400000000001
	.quad	0x3fe7005c4651f3e9              # double 0.71879400000000004
	.quad	0x3fdb4af922962cfe              # double 0.42645100000000002
	.quad	0x3fd3fcdee34fc611              # double 0.312309
	.quad	0x3fdf24399b2c40d1              # double 0.48658600000000002
	.quad	0x3fdfcdc8754f3776              # double 0.49693500000000002
	.quad	0x3fd4b8d823422468              # double 0.32378200000000001
	.quad	0x3fdde3c105186db5              # double 0.467026
	.quad	0x3fd72c6ac215b9a6              # double 0.36208600000000002
	.quad	0x3fcd2d0a24463066              # double 0.227937
	.quad	0x3fe2a54c55432874              # double 0.58267800000000003
	.quad	0x3fea1290257c914b              # double 0.81476599999999999
	.quad	0x3fee8ae1049235f8              # double 0.95445299999999999
	.quad	0x3fd51c970f7b9e06              # double 0.32987
	.quad	0x3fe95515054ac29c              # double 0.791636
	.quad	0x3fd7e1b4bb5e0f80              # double 0.37315100000000001
	.quad	0x3fe0d55821294574              # double 0.52604300000000004
	.quad	0x3fc1362e90364389              # double 0.134466
	.quad	0x3fcf21ff2e48e8a7              # double 0.243225
	.quad	0x3fd949235f809918              # double 0.39508900000000002
	.quad	0x3fe1746887a8d64d              # double 0.54545999999999994
	.quad	0x3fe773a57eaa2a0b              # double 0.73286700000000005
	.quad	0x3fd8f9c62a1b5c7d              # double 0.39024500000000001
	.quad	0x3fc03d46b26bf877              # double 0.12687000000000001
	.quad	0x3fb19bb2788db057              # double 0.068781999999999996
	.quad	0x3fdb823422467be5              # double 0.42982199999999998
	.quad	0x3fe4387df5cf2496              # double 0.63189600000000001
	.quad	0x3fccc61d8622c450              # double 0.224796
	.quad	0x3fef66d15ad106ee              # double 0.98130099999999998
	.quad	0x3fb501e2584f4c6e              # double 0.082059999999999994
	.quad	0x3fe08d759ee88df3              # double 0.51726799999999995
	.quad	0x3f75cfaacd9e83e4              # double 0.0053249999999999999
	.quad	0x3fc596fa82e87d2c              # double 0.16866999999999999
	.quad	0x3fd91dd1a21ea359              # double 0.39244499999999999
	.quad	0x3fd00b8cfbfc6541              # double 0.25070500000000001
	.quad	0x3fc7481b21c475e6              # double 0.18188799999999999
	.quad	0x3fe0931a8ef77f28              # double 0.517957
	.quad	0x3fd690470a808c82              # double 0.35255599999999998
	.quad	0x3fe46b11c6d1e109              # double 0.63807000000000003
	.quad	0x3fe214573a797892              # double 0.56498300000000001
	.quad	0x3feafe62dc6e2a80              # double 0.843553
	.quad	0x3fcd143bf727136a              # double 0.22717999999999999
	.quad	0x3fe225fc7e6b3fea              # double 0.567137
	.quad	0x3feae84ad794a6ec              # double 0.84085600000000004
	.quad	0x3fe929845dc83233              # double 0.78631799999999996
	.quad	0x3fe32db402d16b98              # double 0.599329
	.quad	0x3fe3457e23f24d90              # double 0.60223300000000002
	.quad	0x3fe9a35b4edb2f66              # double 0.80119099999999999
	.quad	0x3fc05e3da2f8bdec              # double 0.12787599999999999
	.quad	0x3fda1040bfe3b03e              # double 0.40724199999999999
	.quad	0x3fe79b9b66f9335d              # double 0.73774499999999998
	.quad	0x3fde58cd20afa2f0              # double 0.47416999999999998
	.quad	0x3fc908cc575c0768              # double 0.195581
	.quad	0x3fe70daa0cae642c              # double 0.720418
	.quad	0x3fe62bffcdab191e              # double 0.69287100000000001
	.quad	0x3fe9fb267c6b8b69              # double 0.81190799999999996
	.quad	0x3fd8640a6b93ccd1              # double 0.381106
	.quad	0x3fee70e6f2e8c048              # double 0.95128199999999996
	.quad	0x3fe8ef6f8f041462              # double 0.77922800000000003
	.quad	0x3fc41e4f765fd8ae              # double 0.15717500000000001
	.quad	0x3fd3bf9c62a1b5c8              # double 0.30857000000000001
	.quad	0x3faa7fc32ebe596d              # double 0.051756000000000003
	.quad	0x3fe78aaeafab53d6              # double 0.73567899999999997
	.quad	0x3fdab13165d39970              # double 0.41706500000000002
	.quad	0x3fc2dfdef8487b9a              # double 0.147457
	.quad	0x3fd57b28954a7f80              # double 0.335642
	.quad	0x3feb1f623076c051              # double 0.84758100000000003
	.quad	0x3fe16e696a26e547              # double 0.54472799999999999
	.quad	0x3fecc77574f722e2              # double 0.89934800000000004
	.quad	0x3fe51fc2a8869c67              # double 0.66012700000000002
	.quad	0x3fcfc2c1b10fd7e4              # double 0.24813099999999999
	.quad	0x3fea176ff3ade226              # double 0.815361
	.quad	0x3fef6f4e0114d2f6              # double 0.98233700000000002
	.quad	0x3fe5888f861a60d4              # double 0.67291999999999996
	.quad	0x3fd2f4666ec9e237              # double 0.29616700000000001
	.quad	0x3fd5c918e325d4a6              # double 0.34039900000000001
	.quad	0x3fea0eae18ac9f30              # double 0.81429200000000002
	.quad	0x3fbad959a30984e4              # double 0.104879
	.quad	0x3fb4ec95bff04578              # double 0.081735000000000002
	.quad	0x3fa5cb9a9da597d5              # double 0.042569000000000003
	.quad	0x3fe18090b417ca21              # double 0.54694399999999999
	.quad	0x3fb52849cb252ce0              # double 0.082645999999999997
	.quad	0x3fe35fc9ff92f2b6              # double 0.60544299999999995
	.quad	0x3fd45714b9cb6849              # double 0.31781500000000001
	.quad	0x3fe87c9363f572de              # double 0.76520699999999997
	.quad	0x3fe7c41fea8112ba              # double 0.74269099999999999
	.quad	0x3fde6a6a012599ed              # double 0.47524499999999997
	.quad	0x3fe479d0a67620ef              # double 0.63987000000000005
	.quad	0x3fdba0a5269595ff              # double 0.43168000000000001
	.quad	0x3fd7df761cbccf29              # double 0.37301400000000001
	.quad	0x3fc9fa333764f11b              # double 0.20294799999999999
	.quad	0x3fe0e555c52e72da              # double 0.52799499999999999
	.quad	0x3fc96a4873365882              # double 0.19855600000000001
	.quad	0x3fc2c03ff69014b6              # double 0.14649200000000001
	.quad	0x3fe0bfa0945f9df5              # double 0.52339199999999997
	.quad	0x3fc69d7342edbb5a              # double 0.17668
	.quad	0x3fe03009b30728e9              # double 0.50586399999999998
	.quad	0x3fe174b61fe21d97              # double 0.54549700000000001
	.quad	0x3feb72ffd1dcd706              # double 0.85778799999999999
	.quad	0x3fd7dd872f33ca32              # double 0.37289600000000001
	.quad	0x3fe21c6088d6d3b7              # double 0.56596400000000002
	.quad	0x3fe0bc4f3ba775fb              # double 0.52298699999999998
	.quad	0x3feb017763e4abe7              # double 0.84392900000000004
	.quad	0x3fe17b82c2bd7f52              # double 0.54632700000000001
	.quad	0x3fd2fea3df6db941              # double 0.296792
	.quad	0x3fef00389f83be66              # double 0.968777
	.quad	0x3fe064628027d88c              # double 0.51225399999999999
	.quad	0x3fc0d8c2a454de7f              # double 0.13161500000000001
	.quad	0x3f9e83a109d0635a              # double 0.029798999999999999
	.quad	0x3fee276965f5275f              # double 0.94231100000000001
	.quad	0x3fe4005e5f30e7ff              # double 0.62504499999999996
	.quad	0x3fee729d40ee06d9              # double 0.95149099999999998
	.quad	0x3fe11a9fbe76c8b4              # double 0.53449999999999998
	.quad	0x3fec72239e6ab9b2              # double 0.88893299999999997
	.quad	0x3fda76af89c5e6ff              # double 0.41349399999999997
	.quad	0x3fd5d0247021d10b              # double 0.34082899999999999
	.quad	0x3fc4e924f227d029              # double 0.16336500000000001
	.quad	0x3fd3698fe69270b0              # double 0.30331799999999998
	.quad	0x3fe6448cf7caa759              # double 0.69586800000000004
	.quad	0x3fca28e4fb97bb73              # double 0.204373
	.quad	0x3fe1f7b5aea3161a              # double 0.56148799999999999
	.quad	0x3fe6413db7f17375              # double 0.69546399999999997
	.quad	0x3fd244f5d35653ca              # double 0.28545900000000002
	.quad	0x3fd9cbab649d388b              # double 0.40305600000000003
	.quad	0x3fbc94f69ca9ef52              # double 0.111648
	.quad	0x3feaa3e186983516              # double 0.83250500000000005
	.quad	0x3fe910539fba450b              # double 0.78324300000000002
	.quad	0x3fb926fa3fcc9eaa              # double 0.098251000000000004
	.quad	0x3fe15d2d01c0ca60              # double 0.542624
	.quad	0x3fe0c19e30014f8b              # double 0.52363499999999996
	.quad	0x3fc2a009f623076c              # double 0.145509
	.quad	0x3fe6859c8c9320da              # double 0.70381000000000005
	.quad	0x3fe15c3dee781840              # double 0.54251000000000005
	.quad	0x3fce13f4a98aa865              # double 0.234984
	.quad	0x3fd3d9513f8db489              # double 0.310139
	.quad	0x3fcd3122b7baecd0              # double 0.22806199999999999
	.quad	0x3fe82eea63b688be              # double 0.75572700000000004
	.quad	0x3fcb6a593a2df938              # double 0.21418300000000001
	.quad	0x3fd90e2c12ad81ae              # double 0.39149
	.quad	0x3f71c5c5718eb895              # double 0.004339
	.quad	0x3fc7e939eadd590c              # double 0.186805
	.quad	0x3fe57f3061c79b35              # double 0.67177600000000004
	.quad	0x3fba71fff79c8430              # double 0.103302
	.quad	0x3fce54ef459d9903              # double 0.23696700000000001
	.quad	0x3feff65dbfceb789              # double 0.99882400000000004
	.quad	0x3fe660b4e11dbca9              # double 0.69930499999999995
	.quad	0x3fee23a6ce358299              # double 0.94185200000000002
	.quad	0x3fe40ed5f138bce0              # double 0.62681100000000001
	.quad	0x3fe3ce48626f60e1              # double 0.61893100000000001
	.quad	0x3fe1223e18698351              # double 0.53542999999999996
	.quad	0x3fda0d844d013a93              # double 0.40707500000000002
	.quad	0x3fee7a26a22b3893              # double 0.95241100000000001
	.quad	0x3fec7cce1c58255b              # double 0.890235
	.quad	0x3fe6d2849cb252ce              # double 0.713198
	.quad	0x3fe3a708ede54b49              # double 0.61414000000000002
	.quad	0x3fe67fd3f5b5fa22              # double 0.70310399999999995
	.quad	0x3fc8383ad9f0a1be              # double 0.189216
	.quad	0x3fe9b94317acc4f0              # double 0.80386500000000005
	.quad	0x3fd28f8a4c1ebc84              # double 0.29001100000000002
	.quad	0x3fc88d21bc126a66              # double 0.19180700000000001
	.quad	0x3fc2a5b530ced4e5              # double 0.14568200000000001
	.quad	0x3fef70f7b9e060fe              # double 0.98253999999999997
	.quad	0x3fd6acf7446f9b99              # double 0.35430699999999998
	.quad	0x3fde6455eaee2004              # double 0.47487400000000002
	.quad	0x3fdc484944ed6fdb              # double 0.44191200000000003
	.quad	0x3fd99274e22a2c23              # double 0.39956399999999997
	.quad	0x3fe73645a1cac083              # double 0.72537499999999999
	.quad	0x3fd3c55000c9539c              # double 0.30891800000000003
	.quad	0x3fbdcdc443914f48              # double 0.116421
	.quad	0x3fbea00192a73711              # double 0.119629
	.quad	0x3fb6161e4f765fd9              # double 0.086275000000000004
	.quad	0x3fe680e065300581              # double 0.70323199999999997
	.quad	0x3fbe8e2e2b8c75c5              # double 0.119357
	.quad	0x3fc472c0e7bc3c5c              # double 0.15975200000000001
	.quad	0x3fd895c853c14834              # double 0.38414199999999998
	.quad	0x3fee7b224aada33c              # double 0.95253100000000001
	.quad	0x3fefc43d46b26bf8              # double 0.99270499999999994
	.quad	0x3fd2add15f02c4d6              # double 0.29185899999999998
	.quad	0x3fd7ba1b1960fa16              # double 0.37073400000000001
	.quad	0x3fbeb6f19934efcc              # double 0.119979
	.quad	0x3feb57ecbb7f9d6f              # double 0.85448299999999999
	.quad	0x3fd9126a65cf67b2              # double 0.39174900000000001
	.quad	0x3fb9e2ac322291fb              # double 0.101115
	.quad	0x3fa4bab649d388a9              # double 0.040487000000000002
	.quad	0x3fed13122b7baecd              # double 0.908578
	.quad	0x3fe1542c3c9eecc0              # double 0.54152500000000003
	.quad	0x3fedc5fe111276fb              # double 0.930419
	.quad	0x3fea511be6e65387              # double 0.82240100000000005
	.quad	0x3fde04790b849881              # double 0.46902300000000002
	.quad	0x3fd8f50a02b84125              # double 0.38995600000000002
	.quad	0x3fe643fc43b2dd37              # double 0.69579899999999995
	.quad	0x3fd25347a5b0ff11              # double 0.286333
	.quad	0x3febb4bd76ee73e7              # double 0.86581300000000005
	.quad	0x3fe8260d4562e0a0              # double 0.75464500000000001
	.quad	0x3fe6e9f2778140dd              # double 0.71605799999999997
	.quad	0x3fdf43b2dd377e1c              # double 0.48850700000000002
	.quad	0x3fe32bcf91a32b13              # double 0.59909800000000002
	.quad	0x3fca87e38eb0318c              # double 0.20727200000000001
	.quad	0x3fea6f240fa9c12f              # double 0.826067
	.quad	0x3fe0b18116ebd4d0              # double 0.52166800000000002
	.quad	0x3fd5e0f3cb3e5754              # double 0.34185500000000002
	.quad	0x3fd08aefb2aae297              # double 0.25847999999999999
	.quad	0x3fee84ec636b0963              # double 0.95372599999999996
	.quad	0x3fe9ddfeb8d82342              # double 0.80834899999999998
	.quad	0x3fe18281ba7fc32f              # double 0.54718100000000003
	.quad	0x3fea4fa8b4bf8fcd              # double 0.82222399999999995
	.quad	0x3fe58e38a7e73a36              # double 0.67361099999999996
	.quad	0x3fefeffe2a3cea6c              # double 0.99804599999999998
	.quad	0x3fe9a8522ea0fd3b              # double 0.80179699999999998
	.quad	0x3fed3471f79420b4              # double 0.91265200000000001
	.quad	0x3fc12ff4ba51a006              # double 0.13427600000000001
	.quad	0x3fdfc7325918a00a              # double 0.496533
	.quad	0x3fd2b367a0f9096c              # double 0.29220000000000002
	.quad	0x3feb78ca8198f1d4              # double 0.858495
	.quad	0x3fd01a9b8cb8e087              # double 0.25162400000000001
	.quad	0x3fe272c3009b3073              # double 0.57650900000000005
	.quad	0x3fde625e99e94ab2              # double 0.47475400000000001
	.quad	0x3fd8704ff43419e3              # double 0.381855
	.quad	0x3fad1fc4c165907e              # double 0.056883000000000003
	.quad	0x3feabdfd2630ec31              # double 0.83569199999999999
	.quad	0x3fdb4463065f9592              # double 0.42604900000000001
	.quad	0x3fe5d45a5fc7e6b4              # double 0.682172
	.quad	0x3fd53e24febd09e1              # double 0.33191799999999999
	.quad	0x3fe68244e93e1c9b              # double 0.70340199999999997
	.quad	0x3fcc7f13059641f6              # double 0.22262799999999999
	.quad	0x3fbb0ccbc05d52c1              # double 0.10566399999999999
	.quad	0x3fe55681ecd4aa11              # double 0.66681000000000001
	.quad	0x3fe8e63a5c1c6089              # double 0.77810400000000002
	.quad	0x3fd86dfc5cdd50a9              # double 0.38171300000000002
	.quad	0x3fe48fd7e45803cd              # double 0.64255899999999999
	.quad	0x3feb5fe75bc44bf5              # double 0.85545700000000002
	.quad	0x3fcd4bb5e0f7fcfc              # double 0.22887299999999999
	.quad	0x3fee3fdb4cc25072              # double 0.945295
	.quad	0x3fe606f262888b54              # double 0.68834799999999996
	.quad	0x3fdbb2f23033a472              # double 0.43279699999999999
	.quad	0x3fe518b71b8aa002              # double 0.65926700000000005
	.quad	0x3fe007d912556d1a              # double 0.50095800000000001
	.quad	0x3fa521dda059a73b              # double 0.041273999999999998
	.quad	0x3fcd13be22e5de16              # double 0.22716500000000001
	.quad	0x3fcdc07ee0b0af60              # double 0.232437
	.quad	0x3feb889a02752546              # double 0.860425
	.quad	0x3fe891105e1c1509              # double 0.76770799999999995
	.quad	0x3fee5b5b70691ea8              # double 0.94865200000000005
	.quad	0x3fe57de2ef4e0115              # double 0.67161700000000002
	.quad	0x3fdbcd67fd3f5b60              # double 0.43441200000000002
	.quad	0x3feb155714b9cb68              # double 0.84635499999999997
	.quad	0x3fe39569f4906035              # double 0.61198900000000001
	.quad	0x3fd74a72ead9274e              # double 0.36391899999999999
	.quad	0x3fc86cfc829cfdd2              # double 0.190826
	.quad	0x3fe5dca6ca03c4b1              # double 0.68318500000000004
	.quad	0x3feb59fd36f7e3d2              # double 0.85473500000000002
	.quad	0x3fe424894c447c31              # double 0.62946000000000002
	.quad	0x3feb8b2c83ec892b              # double 0.86073900000000003
	.quad	0x3fd48d9f90539fba              # double 0.32114399999999999
	.quad	0x3fe4fc84b5dcc63f              # double 0.65582499999999999
	.quad	0x3feb1c4b90214ad3              # double 0.84720399999999996
	.quad	0x3feb9c3efae7924b              # double 0.86282300000000001
	.quad	0x3fe2b0caa326e115              # double 0.58408099999999996
	.quad	0x3fa434c1a8ac5c14              # double 0.039465
	.quad	0x3fdfef8ceb356da0              # double 0.498996
	.quad	0x3fea5b2b3461309c              # double 0.82362899999999994
	.quad	0x3febdc11e42e1262              # double 0.870614
	.quad	0x3febe6b6177ea1c7              # double 0.87191300000000005
	.quad	0x3fe65f9bdc69f8c2              # double 0.69917099999999999
	.quad	0x3fbe17e34b945309              # double 0.117552
	.quad	0x3fe05410f94c8798              # double 0.51026199999999999
	.quad	0x3fd0bc903ea704bc              # double 0.26150899999999999
	.quad	0x3fdcc0c1fc8f3238              # double 0.44926500000000003
	.quad	0x3fdb275ee99a62ed              # double 0.42427799999999999
	.quad	0x3fd94b2b777d0f1f              # double 0.39521299999999998
	.quad	0x3fe04ca2db61bb06              # double 0.509355
	.quad	0x3fe3633eff195033              # double 0.60586499999999999
	.quad	0x3fccfc9363f572de              # double 0.22645799999999999
	.quad	0x3fed94f8b588e369              # double 0.92443500000000001
	.quad	0x3fe09389b52007dd              # double 0.51800999999999997
	.quad	0x3fe8a146a1a500d6              # double 0.76968700000000001
	.quad	0x3feaead0c3d25248              # double 0.84116400000000002
	.quad	0x3fedbb96af038e2a              # double 0.929149
	.quad	0x3fe0af7d30ad46f6              # double 0.52142200000000005
	.quad	0x3fce2acb85a4f00f              # double 0.235681
	.quad	0x3fe21ec4e7253da7              # double 0.56625599999999998
	.quad	0x3fe8c567125dd096              # double 0.77409700000000004
	.quad	0x3faab649d388a8b1              # double 0.052172000000000003
	.quad	0x3fc45c9a34ca0c28              # double 0.159076
	.quad	0x3fd7188b11409a24              # double 0.360873
	.quad	0x3f74ab1d4f9c1f86              # double 0.0050460000000000001
	.quad	0x3fe60feef5ec80c7              # double 0.68944499999999997
	.quad	0x3fe5bca31e7d9989              # double 0.67927700000000002
	.quad	0x3fbbf47735c182ed              # double 0.109199
	.quad	0x3fea1ced0b30b5aa              # double 0.81603099999999995
	.quad	0x3fdb6cc1ca3a4b55              # double 0.42851299999999998
	.quad	0x3fe8460029f16b12              # double 0.75854500000000002
	.quad	0x3fdf202107b78466              # double 0.48633599999999999
	.quad	0x3fce10c6f7a0b5ee              # double 0.23488700000000001
	.quad	0x3fdb21426fe718a8              # double 0.42390499999999998
	.quad	0x3fe83e76c8b43958              # double 0.75762499999999999
	.quad	0x3fefd058dde7a744              # double 0.99418300000000003
	.quad	0x3febce95faa8a82a              # double 0.86896799999999996
	.quad	0x3fcae8533b107747              # double 0.21021500000000001
	.quad	0x3fe8ce789e774eec              # double 0.775204
	.quad	0x3fe54866a11ec919              # double 0.66508800000000001
	.quad	0x3fe50e29f9ce8d97              # double 0.65797899999999998
	.quad	0x3fe280e496ededaf              # double 0.57823400000000003
	.quad	0x3fee8adeebb341e1              # double 0.95445199999999997
	.quad	0x3fe5b5fa22706d50              # double 0.67846399999999996
	.quad	0x3fe67965b20b8067              # double 0.70231900000000003
	.quad	0x3fed3841248d7e02              # double 0.91311699999999996
	.quad	0x3fe3b0e7ff583a54              # double 0.61534500000000003
	.quad	0x3fef6c99f1ae2da5              # double 0.98200699999999996
	.quad	0x3fda2bdc26dce39b              # double 0.40892699999999998
	.quad	0x3fe150870110a138              # double 0.54108000000000001
	.quad	0x3fca5bb7b6bb1290              # double 0.205924
	.quad	0x3febb69db65ecc3e              # double 0.86604199999999998
	.quad	0x3fe9e4d7f0ed3d86              # double 0.80918500000000004
	.quad	0x3fe57d75e2046c76              # double 0.67156499999999997
	.quad	0x3fac25f202107b78              # double 0.054976999999999998
	.quad	0x3fd41a261bf37b8d              # double 0.31409599999999999
	.quad	0x3fefec4a4095f245              # double 0.99759399999999998
	.quad	0x3fd78672756861e9              # double 0.36758099999999999
	.quad	0x3fe6d816aceaaf36              # double 0.71387800000000001
	.quad	0x3fd60d0edc3bd599              # double 0.34454699999999999
	.quad	0x3fe636c15d2d01c1              # double 0.69418400000000002
	.quad	0x3fed5818c5c9a34d              # double 0.91700400000000004
	.quad	0x3fe02f42784a9479              # double 0.50576900000000002
	.quad	0x3fe60a1be2b4959e              # double 0.68873399999999996
	.quad	0x3fea5097c80841ee              # double 0.82233800000000001
	.quad	0x3fb2709fa54c5543              # double 0.072030999999999998
	.quad	0x3f8994e1a3f4666f              # double 0.012491
	.quad	0x3fb6c3c9eecbfb16              # double 0.088925000000000004
	.quad	0x3fc22528ae74f2f1              # double 0.141759
	.quad	0x3fe5ba6698bb4d49              # double 0.67900400000000005
	.quad	0x3fb720d9945b6c37              # double 0.090344999999999995
	.quad	0x3fd15dd8f92af9a9              # double 0.27135300000000001
	.quad	0x3fd6727136a400fc              # double 0.35073500000000002
	.quad	0x3feb4812be48a58b              # double 0.85254799999999997
	.quad	0x3fec654b48d3ae68              # double 0.88736499999999996
	.quad	0x3fe78247021d10b2              # double 0.734653
	.quad	0x3fefed41b75a74c1              # double 0.99771200000000004
	.quad	0x3feaed7e889c1b54              # double 0.84149099999999998
	.quad	0x3fd769728a611772              # double 0.365811
	.quad	0x3fe748cd63cb8173              # double 0.72763699999999998
	.quad	0x3fd1a5a469d7342f              # double 0.27573500000000001
	.quad	0x3fda1800a7c5ac47              # double 0.40771499999999999
	.quad	0x3feff8dd616f86a1              # double 0.99912900000000004
	.quad	0x3fd590c9107faa04              # double 0.33696199999999998
	.quad	0x3fd21f85d744f5d3              # double 0.28317399999999998
	.quad	0x3fec6b0318b9346a              # double 0.88806300000000005
	.quad	0x3fab46fdeb52c9d1              # double 0.053275999999999997
	.quad	0x3fd5260f5e41d4b7              # double 0.33044800000000002
	.quad	0x3fee231c64ba94bc              # double 0.94178600000000001
	.quad	0x3fc9b2bba98eda23              # double 0.200767
	.quad	0x3fc8ed1394317acc              # double 0.19473499999999999
	.quad	0x3faf6295208e1501              # double 0.061298999999999999
	.quad	0x3fe58a30db6a1e82              # double 0.67311900000000002
	.quad	0x3fee6136e71cda2b              # double 0.94936699999999996
	.quad	0x3faffaa044ae85ba              # double 0.062459000000000001
	.quad	0x3fe570a808c8259e              # double 0.67000199999999999
	.quad	0x3fecc1fc8f32378b              # double 0.89868000000000003
	.quad	0x3fbba29c779a6b51              # double 0.10795
	.quad	0x3fce366d7a56de33              # double 0.236036
	.quad	0x3fd51ab8e8ea39c5              # double 0.32975599999999999
	.quad	0x3fe4c5eb313be22e              # double 0.64915999999999996
	.quad	0x3fe09ecb31c219eb              # double 0.51938399999999996
	.quad	0x3feb9b38d60a6330              # double 0.86269799999999996
	.quad	0x3fdef6f8f041461b              # double 0.48382399999999998
	.quad	0x3fdb517e77d523b3              # double 0.42684899999999998
	.quad	0x3fe1e5fb71fbc5df              # double 0.55932400000000004
	.quad	0x3fde8a116659d12d              # double 0.47717700000000002
	.quad	0x3feeebf65dbfceb8              # double 0.96630400000000005
	.quad	0x3fd08e368f084620              # double 0.25868000000000002
	.quad	0x3fdc005c4651f3e9              # double 0.43752200000000002
	.quad	0x3fd7dd97f62b6ae8              # double 0.37290000000000001
	.quad	0x3fb2c636b0963561              # double 0.073336999999999999
	.quad	0x3fd027dcbddb9842              # double 0.25243300000000002
	.quad	0x3fcc63736cdf266c              # double 0.22178500000000001
	.quad	0x3fd16cc5fbf83383              # double 0.27226400000000001
	.quad	0x3fedcd7f0ed3d85a              # double 0.93133500000000002
	.quad	0x3fc4102795703f2d              # double 0.15674299999999999
	.quad	0x3fad64f97edc7ef1              # double 0.057410999999999997
	.quad	0x3fb88f75536933a0              # double 0.095938999999999996
	.quad	0x3fed35d249e44fa0              # double 0.91281999999999996
	.quad	0x3fe049be8ff327aa              # double 0.50900199999999995
	.quad	0x3fd6ccd530489d28              # double 0.35625200000000001
	.quad	0x3fe95c358afc47e5              # double 0.79250600000000004
	.quad	0x3fe2be22e5de15ca              # double 0.58570999999999995
	.quad	0x3fe2a9aa1d755bcd              # double 0.58321100000000003
	.quad	0x3fda7735c182ecaf              # double 0.413526
	.quad	0x3fe806df82b1f688              # double 0.75083900000000003
	.quad	0x3fe57abfb9bed30f              # double 0.671234
	.quad	0x3fc07789a459103d              # double 0.12864800000000001
	.quad	0x3fd286ca89fc6da4              # double 0.28947699999999998
	.quad	0x3fea44588a04d120              # double 0.82084299999999998
	.quad	0x3fc6b45ae5ffa3ba              # double 0.17737900000000001
	.quad	0x3fd51ac14c660a20              # double 0.329758
	.quad	0x3fd9eda661283904              # double 0.40512999999999999
	.quad	0x3fe2c2e9899bf594              # double 0.58629299999999995
	.quad	0x3fd6ccee5abc0e39              # double 0.35625800000000002
	.quad	0x3fd187ce95faa8a8              # double 0.27391399999999999
	.quad	0x3fbfa7221858bc5a              # double 0.123644
	.quad	0x3fe30dac258d5843              # double 0.59541900000000003
	.quad	0x3fe9dc810a569b17              # double 0.80816699999999997
	.quad	0x3fcc583621fafc8b              # double 0.221442
	.quad	0x3fe7e97d06bbdbe4              # double 0.74725200000000003
	.quad	0x3fb7764f11b60ae9              # double 0.091648999999999994
	.quad	0x3fe6790d9d7774ac              # double 0.70227700000000004
	.quad	0x3feb8f3eccc46951              # double 0.861236
	.quad	0x3feec1b75a74c09c              # double 0.96114699999999997
	.quad	0x3fd49eecbfb15b57              # double 0.32219999999999999
	.quad	0x3fea781a5870da5e              # double 0.82716100000000004
	.quad	0x3fefae70c1333b97              # double 0.99004400000000003
	.quad	0x3fe25054ac29bf16              # double 0.57230599999999998
	.quad	0x3fe4bd76ee73e682              # double 0.64812800000000004
	.quad	0x3fd8f049a9973d9f              # double 0.38966600000000001
	.quad	0x3fa7ac81d3aa36a0              # double 0.046238000000000001
	.quad	0x3fe1e8cef672b884              # double 0.55966899999999997
	.quad	0x3fcfddc1e7967caf              # double 0.24895500000000001
	.quad	0x3fcd34d6a161e4f7              # double 0.22817499999999999
	.quad	0x3fed2cc70867ad8e              # double 0.91171599999999997
	.quad	0x3fe84fdf3b645a1d              # double 0.75975000000000004
	.quad	0x3fec4b295e9e1b09              # double 0.88417500000000004
	.quad	0x3fca96dd26b723ee              # double 0.207729
	.quad	0x3fe1b55475a31a4c              # double 0.55338500000000002
	.quad	0x3fe6aa12f901083e              # double 0.70826100000000003
	.quad	0x3fe97038e29f9ce9              # double 0.79494900000000002
	.quad	0x3fc0115df6555c53              # double 0.12553
	.quad	0x3fd0864cb5bb3850              # double 0.25819700000000001
	.quad	0x3f7785f8d2e514c2              # double 0.0057429999999999998
	.quad	0x3fe12a62aa19439e              # double 0.53642400000000001
	.quad	0x3fda4ad794a6eb92              # double 0.41081800000000002
	.quad	0x3fecfd08d4bad7d8              # double 0.90588800000000003
	.quad	0x3fb3db1a6d698fe7              # double 0.077562000000000006
	.quad	0x3fced77318fc5048              # double 0.24095
	.quad	0x3fed314a90470a81              # double 0.91226700000000005
	.quad	0x3fefabe27179bfdf              # double 0.98973199999999994
	.quad	0x3fe606fcdee34fc6              # double 0.68835299999999999
	.quad	0x3fec8f648c7192ea              # double 0.89250399999999996
	.quad	0x3fec1f5dfeb8d823              # double 0.87882899999999997
	.quad	0x3feb852b4d8ba40e              # double 0.86000600000000005
	.quad	0x3fe22f6e82949a56              # double 0.56828999999999996
	.quad	0x3feb3a9f383f0baf              # double 0.85090600000000005
	.quad	0x3fbb7b5aea3161a2              # double 0.107351
	.quad	0x3fd792ccf6be37df              # double 0.36833500000000002
	.quad	0x3fdeab7132724313              # double 0.47921399999999997
	.quad	0x3fc44a6223e18698              # double 0.15851999999999999
	.quad	0x3fe71cb89d6adf72              # double 0.72225600000000001
	.quad	0x3fee9db877ab3248              # double 0.95675299999999996
	.quad	0x3fe224638c975297              # double 0.56694199999999995
	.quad	0x3fed65604189374c              # double 0.91862500000000002
	.quad	0x3fe661847f562175              # double 0.69940400000000003
	.quad	0x3fccc4827b6fe2e7              # double 0.224747
	.quad	0x3fe28438088509c0              # double 0.57864000000000004
	.quad	0x3fe8460aa64c2f83              # double 0.75854999999999995
	.quad	0x3fe405a921ccd962              # double 0.625691
	.quad	0x3fb2102795703f2d              # double 0.070558999999999997
	.quad	0x3fdbb76709fa54c5              # double 0.43306899999999998
	.quad	0x3fa0298cc144028e              # double 0.031566999999999998
	.quad	0x3fe4af74cd31769b              # double 0.64641800000000005
	.quad	0x3fea3f83382e44b7              # double 0.82025300000000001
	.quad	0x3fe4eb4e9813879c              # double 0.65372399999999997
	.quad	0x3feb50c3d25247cb              # double 0.85360899999999995
	.quad	0x3fd453f39d1b2e5a              # double 0.31762400000000002
	.quad	0x3fe3cda9003eea21              # double 0.61885500000000004
	.quad	0x3fdcd9945b6c3761              # double 0.45078000000000001
	.quad	0x3fddb54195cc857f              # double 0.46418799999999999
	.quad	0x3fdc3d7d3910c2c6              # double 0.44125300000000001
	.quad	0x3fd6ab862b27cbf7              # double 0.35421900000000001
	.quad	0x3fcf780baa582dbe              # double 0.24585099999999999
	.quad	0x3fdba1cef240fa9c              # double 0.431751
	.quad	0x3fcca0d349be8ff3              # double 0.223658
	.quad	0x3fe528a3f8982cb2              # double 0.66121099999999999
	.quad	0x3fd9a01eeed8904f              # double 0.40039799999999998
	.quad	0x3fd03af31b152f3c              # double 0.25359799999999999
	.quad	0x3fb8e9e5e2478855              # double 0.097319000000000003
	.quad	0x3fc9662fdfc19c17              # double 0.198431
	.quad	0x3fdbc62e4d1a6506              # double 0.433971
	.quad	0x3fdbe368f08461fa              # double 0.435755
	.quad	0x3fe35a9c99285a92              # double 0.60481099999999999
	.quad	0x3feea7d88c1db014              # double 0.95798899999999997
	.quad	0x3fe949e6687f455a              # double 0.79027099999999995
	.quad	0x3fdb31d712a0ec74              # double 0.42491699999999999
	.quad	0x3fedd5da272862f6              # double 0.93235500000000004
	.quad	0x3fe44d4024b33db0              # double 0.63443000000000005
	.quad	0x3fe1f4f50a02b841              # double 0.56115199999999998
	.quad	0x3fe91b866e43aa7a              # double 0.78461000000000003
	.quad	0x3fc802c0a4a05dd9              # double 0.187584
	.quad	0x3f9ac9afe1da7b0b              # double 0.026159999999999999
	.quad	0x3fd9a2163fdd65a1              # double 0.40051799999999999
	.quad	0x3fec758c08b75ea6              # double 0.88934899999999995
	.quad	0x3fc73215fcc1871e              # double 0.18121599999999999
	.quad	0x3fe81a459103c8e2              # double 0.75320699999999996
	.quad	0x3fc585d744f5d356              # double 0.16814699999999999
	.quad	0x3fb8827b6fe2e6eb              # double 0.095741000000000007
	.quad	0x3f2cd5f99c38b04b              # double 2.2000000000000001E-4
	.quad	0x3fef778140dd3fe2              # double 0.98333800000000005
	.quad	0x3fe70f3eccc46951              # double 0.720611
	.quad	0x3fe9decc3e3193f7              # double 0.80844700000000003
	.quad	0x3fe57607c4199fe4              # double 0.67065799999999998
	.quad	0x3fe68303c07ee0b1              # double 0.70349300000000003
	.quad	0x3fd5c7f349385836              # double 0.34032899999999999
	.quad	0x3fcca077036c9c0b              # double 0.22364700000000001
	.quad	0x3fda5bc44bf4cb19              # double 0.41185100000000002
	.quad	0x3fe8ffc9795b35b1              # double 0.78122400000000003
	.quad	0x3fd8b09635610add              # double 0.38577800000000001
	.quad	0x3fddf401c4fc1df3              # double 0.46801799999999999
	.quad	0x3fa0589acbc8c0cf              # double 0.031926000000000003
	.quad	0x3fd858bc59b8023a              # double 0.38041599999999998
	.quad	0x3fc3fa22706d5065              # double 0.15607099999999999
	.quad	0x3f92ba5a038194c0              # double 0.018289
	.quad	0x3fb25c3dee781840              # double 0.071720000000000006
	.quad	0x3fd6c03bc4d22c88              # double 0.35548299999999999
	.quad	0x3fd931769a91105e              # double 0.39364399999999999
	.quad	0x3fdf373affb04ee8              # double 0.48774600000000001
	.quad	0x3fcb78ab0c88a47f              # double 0.21462000000000001
	.quad	0x3fe12f5dbb9cf9a0              # double 0.53703199999999995
	.quad	0x3fd978c868b9fdbd              # double 0.39799699999999999
	.quad	0x3fe5dc5931ca7d67              # double 0.68314799999999998
	.quad	0x3feacac083126e98              # double 0.83725000000000005
	.quad	0x3fe8ffbefd00713f              # double 0.781219
	.quad	0x3fc01f10667f90da              # double 0.125948
	.quad	0x3fe8364388ebcc6c              # double 0.75662399999999996
	.quad	0x3fe4c5c13fd0d068              # double 0.64914000000000005
	.quad	0x3fd1a1986b9c304d              # double 0.27548800000000001
	.quad	0x3fe1a5fe974a3401              # double 0.55151300000000003
	.quad	0x3fecbfd71b046845              # double 0.89841800000000005
	.quad	0x3f87c7820a30db6a              # double 0.011611
	.quad	0x3fcea1e81cb46bad              # double 0.239316
	.quad	0x3fe38637bd05af6c              # double 0.61013399999999995
	.quad	0x3fc0be1eb4202d9d              # double 0.130802
	.quad	0x3fe1aa843808850a              # double 0.55206500000000003
	.quad	0x3fec7b82c2bd7f52              # double 0.89007700000000001
	.quad	0x3fa6d698fe69270b              # double 0.044606
	.quad	0x3fd62b777d0f1f58              # double 0.34640300000000002
	.quad	0x3fef9f8a0902de01              # double 0.98822500000000002
	.quad	0x3fddff1950331e3a              # double 0.46869499999999997
	.quad	0x3feb1bfdf7e8038a              # double 0.847167
	.quad	0x3fdcd2dcb1465e89              # double 0.45036999999999999
	.quad	0x3fe92096787ce960              # double 0.78522800000000003
	.quad	0x3feab11a543f1c76              # double 0.83411900000000005
	.quad	0x3fde7e80389f83be              # double 0.47647099999999998
	.quad	0x3fe6fef9db22d0e5              # double 0.71862499999999996
	.quad	0x3fd959146e4c0df6              # double 0.39606200000000003
	.quad	0x3fe713ea2d2fe3f3              # double 0.72118099999999996
	.quad	0x3fe7aca9ac365450              # double 0.73982700000000001
	.quad	0x3fe1cbd1244a6224              # double 0.55613000000000001
	.quad	0x3fdb4013ec460ed8              # double 0.425786
	.quad	0x3fe7037d63022dd8              # double 0.71917600000000004
	.quad	0x3fac5b078d92fb1a              # double 0.055382000000000001
	.quad	0x3fcf43c7d5ed06ff              # double 0.244256
	.quad	0x3fe3edc7ef177a70              # double 0.622776
	.quad	0x3fdecc4ac6cdaf4b              # double 0.48121900000000001
	.quad	0x3fb1c28f5c28f5c3              # double 0.069375000000000006
	.quad	0x3fee9e34330d7386              # double 0.956812
	.quad	0x3fd1670e2c12ad82              # double 0.27191500000000002
	.quad	0x3fd136deb95e5aff              # double 0.26897399999999999
	.quad	0x3fcc5729b280f12c              # double 0.22141
	.quad	0x3fd27a52ac753e70              # double 0.28871599999999997
	.quad	0x3fd5cf2064239607              # double 0.34076699999999999
	.quad	0x3fdd882278d0cc36              # double 0.46143400000000001
	.quad	0x3fd9acc92146a1a5              # double 0.401171
	.quad	0x3fd43b6cbd987c63              # double 0.31612699999999999
	.quad	0x3fe3acbea4ebdd33              # double 0.61483699999999997
	.quad	0x3fed4577d955714c              # double 0.91473000000000004
	.quad	0x3fe1a515ce9e5e24              # double 0.55140199999999995
	.quad	0x3feee40c8472c0e8              # double 0.96533800000000002
	.quad	0x3feadb899392189c              # double 0.83929900000000001
	.quad	0x3fcd72c5197a2489              # double 0.23006499999999999
	.quad	0x3fd107faa044ae86              # double 0.26611200000000002
	.quad	0x3fd1eab367a0f909              # double 0.27994999999999998
	.quad	0x3fe532f01754b05b              # double 0.66246799999999995
	.quad	0x3fe8b673c4f3ba77              # double 0.77227199999999996
	.quad	0x3fe37f737da61e0c              # double 0.60930799999999996
	.quad	0x3fdac9c4da9003ef              # double 0.41856500000000002
	.quad	0x3fd4c9363f572de4              # double 0.32478099999999999
	.quad	0x3fe830941c8216c6              # double 0.75592999999999999
	.quad	0x3feb5306a2b17050              # double 0.85388500000000001
	.quad	0x3fd366dbd72bcb60              # double 0.30315300000000001
	.quad	0x3fedc692f6e8294a              # double 0.93049000000000004
	.quad	0x3fdd2c16df3f9618              # double 0.455816
	.quad	0x3fe9e922d948dc12              # double 0.80970900000000001
	.quad	0x3fd9909aed56b010              # double 0.399451
	.quad	0x3fe84ff43419e300              # double 0.75975999999999999
	.quad	0x3f90b6f9fcb0c027              # double 0.016323000000000001
	.quad	0x3fe25454152b0a70              # double 0.57279400000000003
	.quad	0x3fb2b239a38fbca1              # double 0.073032
	.quad	0x3fecac5197a24895              # double 0.89603500000000003
	.quad	0x3fe53f8982cb20fb              # double 0.66400599999999999
	.quad	0x3fe5d26527a20579              # double 0.68193300000000001
	.quad	0x3fb686833c60029f              # double 0.087989999999999999
	.quad	0x3fc56544fe36d224              # double 0.167153
	.quad	0x3fd1f79c842fa509              # double 0.28073799999999999
	.quad	0x3fdd496249a133c2              # double 0.45760400000000001
	.quad	0x3fb7deb52c9d16fd              # double 0.093242000000000005
	.quad	0x3fda0e51d25aab47              # double 0.40712399999999999
	.quad	0x3f88e864020817fc              # double 0.012161999999999999
	.quad	0x3fc8ef4e0114d2f6              # double 0.194803
	.quad	0x3fee9f53825e13b2              # double 0.95694900000000005
	.quad	0x3fb1f3300de4c511              # double 0.070116999999999999
	.quad	0x3fb0fca42aed1394              # double 0.066354999999999997
	.quad	0x3fda410b630a9153              # double 0.41021999999999997
	.quad	0x3fd7cd3e0bd44999              # double 0.37190200000000001
	.quad	0x3fe9da4ce8101f32              # double 0.80789800000000001
	.quad	0x3faa65add9c27e95              # double 0.051556999999999999
	.quad	0x3fec647778dd6170              # double 0.88726400000000005
	.quad	0x3fda5d249e44fa05              # double 0.411935
	.quad	0x3fb047e49b1fab97              # double 0.063597000000000001
	.quad	0x3fe570de8f6cefed              # double 0.67002799999999996
	.quad	0x3fe73e1650a45d42              # double 0.726329
	.quad	0x3fea9d6f112fd32c              # double 0.83171799999999995
	.quad	0x3fd654195cc857f3              # double 0.348883
	.quad	0x3fd011904b3c3e75              # double 0.25107200000000002
	.quad	0x3fc0ab7132724313              # double 0.13023199999999999
	.quad	0x3fcf249e44fa0514              # double 0.24330499999999999
	.quad	0x3f9fd5cb790fb656              # double 0.031088999999999999
	.quad	0x3fda9a2403148777              # double 0.41565800000000003
	.quad	0x3fcdc79b34a44c7b              # double 0.232654
	.quad	0x3fd5dc6e2a80064b              # double 0.34157900000000002
	.quad	0x3fc11148fd9fd36f              # double 0.13333999999999999
	.quad	0x3fef96659d12cade              # double 0.98710900000000001
	.quad	0x3fee2afbc1acde1a              # double 0.942747
	.quad	0x3fba3608d08919f0              # double 0.10238700000000001
	.quad	0x3fdb26e5471715c6              # double 0.42424899999999999
	.quad	0x3fd401eabbcb1cc9              # double 0.31261699999999998
	.quad	0x3fca7eae5bc87db3              # double 0.20699100000000001
	.quad	0x3fe9055fbb517a46              # double 0.78190599999999999
	.quad	0x3fb62ccb3a2595bc              # double 0.086621000000000004
	.quad	0x3fcddca4b124d09a              # double 0.233296
	.quad	0x3fe8ff08893b7d85              # double 0.78113200000000005
	.quad	0x3fc381cf7878b7a2              # double 0.15239900000000001
	.quad	0x3fe719cbee807bbb              # double 0.72189899999999996
	.quad	0x3fde2231832fcac9              # double 0.47083700000000001
	.quad	0x3f8a57eaa2a0a958              # double 0.012862999999999999
	.quad	0x3fe956f112fd32c6              # double 0.79186299999999998
	.quad	0x3fe54095f2452c5a              # double 0.664134
	.quad	0x3fea190d173fb7a6              # double 0.81555800000000001
	.quad	0x3fe2461522a6f3f5              # double 0.57105499999999998
	.quad	0x3fd251a86940357a              # double 0.28623399999999999
	.quad	0x3fea4d184c271fff              # double 0.82191099999999995
	.quad	0x3febd7689ca18bd6              # double 0.87004499999999996
	.quad	0x3f9f14db59578a2b              # double 0.030353000000000002
	.quad	0x3f9e3a7daa4fca43              # double 0.029520000000000001
	.quad	0x3fee1290257c914b              # double 0.93976599999999999
	.quad	0x3fcd3ccd0fe8ab50              # double 0.22841800000000001
	.quad	0x3feaf64adff822bc              # double 0.842565
	.quad	0x3fcac97d8cf398e9              # double 0.20927399999999999
	.quad	0x3fedd714b9cb6849              # double 0.93250500000000003
	.quad	0x3fe7b6a832b990b0              # double 0.74104700000000001
	.quad	0x3fd3ac81d3aa36a0              # double 0.30740400000000001
	.quad	0x3fd3e7924af0bf1a              # double 0.31100899999999998
	.quad	0x3fe67ca85caafbc2              # double 0.70271700000000004
	.quad	0x3fe70f6f08cc575c              # double 0.720634
	.quad	0x3fe2413986338b48              # double 0.57046200000000002
	.quad	0x3fe1d11dffc5479d              # double 0.55677699999999997
	.quad	0x3fd87db2b346130a              # double 0.38267200000000001
	.quad	0x3fb49a027525460b              # double 0.080475000000000005
	.quad	0x3fe3d6861e92923e              # double 0.61993699999999996
	.quad	0x3fb0669057d1782d              # double 0.064064999999999997
	.quad	0x3fcf54195cc857f3              # double 0.244754
	.quad	0x3fd4bed30f062d41              # double 0.32414700000000002
	.quad	0x3fd8130df9bdc6a0              # double 0.37616300000000003
	.quad	0x3fcd4185058dde7a              # double 0.22856199999999999
	.quad	0x3fbad77318fc5048              # double 0.10485
	.quad	0x3fd8b367a0f9096c              # double 0.38595000000000002
	.quad	0x3fde790752da9867              # double 0.47613699999999998
	.quad	0x3fc5a322af577100              # double 0.169041
	.quad	0x3fe430142f61ed5b              # double 0.63086900000000001
	.quad	0x3fd4752da98676a7              # double 0.31965199999999999
	.quad	0x3fefded4a1ad6452              # double 0.99595100000000003
	.quad	0x3feadc8d9f9053a0              # double 0.83942300000000003
	.quad	0x3fea3b55ac03ff69              # double 0.819743
	.quad	0x3fd7838c111ada77              # double 0.36740400000000001
	.quad	0x3fa6f6d7625204b0              # double 0.044852000000000003
	.quad	0x3feaa03a322af577              # double 0.83205899999999999
	.quad	0x3fe3f5c4a83b1d0d              # double 0.62375100000000006
	.quad	0x3fee6b67c286f8ad              # double 0.95061099999999998
	.quad	0x3fedd6366d7a56de              # double 0.93239899999999998
	.quad	0x3fd044178705425f              # double 0.25415599999999999
	.quad	0x3fd29da597d49d7c              # double 0.29087200000000002
	.quad	0x3fc8489d27c39368              # double 0.189716
	.quad	0x3fd74916ca46e08f              # double 0.36383599999999999
	.quad	0x3fd8dc5931ca7d67              # double 0.38844899999999999
	.quad	0x3fe1bfb9bed30f06              # double 0.55465399999999998
	.quad	0x3fe2357e670e2c13              # double 0.56903000000000004
	.quad	0x3fc724fa8b4bf8fd              # double 0.180816
	.quad	0x3fed51bd61f5be5e              # double 0.91622800000000004
	.quad	0x3fcd1348b220791c              # double 0.22715099999999999
	.quad	0x3fe4c0fecdd0d8cb              # double 0.648559
	.quad	0x3fabad3a604e1e71              # double 0.054056
	.quad	0x3fc84bba12b5e52a              # double 0.18981100000000001
	.quad	0x3fe6b3bfb58d1527              # double 0.70944200000000002
	.quad	0x3fd6f644955b4678              # double 0.35878100000000002
	.quad	0x3fe31ccd96206855              # double 0.59726599999999996
	.quad	0x3fd36fb4c3c18b50              # double 0.30369299999999999
	.quad	0x3fda7d1351159c49              # double 0.41388399999999997
	.quad	0x3fe86b8950763a19              # double 0.763127
	.quad	0x3fdfc83ec892ab69              # double 0.49659700000000001
	.quad	0x3fe38379314445aa              # double 0.60979899999999998
	.quad	0x3feffb267c6b8b69              # double 0.99940799999999996
	.quad	0x3fe10a372606fac6              # double 0.532497
	.quad	0x3fe481d5c31593e6              # double 0.640849
	.quad	0x3fe2de1198aeb80f              # double 0.58960800000000002
	.quad	0x3fe117edc7ef177a              # double 0.53417099999999995
	.quad	0x3fcac386d2ed783e              # double 0.209092
	.quad	0x3fbcc271fff79c84              # double 0.112342
	.quad	0x3fe5a3ec02f2f987              # double 0.67625999999999997
	.quad	0x3fef4d44567125dd              # double 0.97818199999999999
	.quad	0x3fecf7dfa00e27e1              # double 0.90525800000000001
	.quad	0x3fe63f6e3f78bbd4              # double 0.69524300000000006
	.quad	0x3fb0f2170931012a              # double 0.066194000000000003
	.quad	0x3fd96c58eeae9ee4              # double 0.39723799999999998
	.quad	0x3fed3e5109070fbf              # double 0.91385700000000003
	.quad	0x3fd0d60a63305101              # double 0.26306400000000002
	.quad	0x3fd2989df1172ef1              # double 0.29056500000000002
	.quad	0x3fe1a87e38eb0319              # double 0.55181800000000003
	.quad	0x3fa6cfa69be09bb7              # double 0.044553000000000002
	.quad	0x3fc72c386d2ed784              # double 0.181037
	.quad	0x3fe42c258d5842b7              # double 0.63038899999999998
	.quad	0x3fe7cb641700cd85              # double 0.74357799999999996
	.quad	0x3fb41b21c475e636              # double 0.078538999999999997
	.quad	0x3f9a22f6a50d6b23              # double 0.025524000000000002
	.quad	0x3fef97785729b281              # double 0.98724
	.quad	0x3fb56d5cfaacd9e8              # double 0.083699999999999997
	.quad	0x3fc44fc1df3300de              # double 0.15868399999999999
	.quad	0x3fd2eec7c957cd46              # double 0.29582399999999998
	.quad	0x3fd7ed8d36b4c7f3              # double 0.37387399999999998
	.quad	0x3fcafb97bb730835              # double 0.21080299999999999
	.quad	0x3feecf13cee9dd7f              # double 0.96277800000000002
	.quad	0x3fd0a4ce8101f31f              # double 0.26005899999999998
	.quad	0x3fe749cb252ce033              # double 0.72775800000000002
	.quad	0x3fead87d6f976790              # double 0.83892699999999998
	.quad	0x3fc7ede97d06bbdc              # double 0.186948
	.quad	0x3feb0ad8a116659d              # double 0.84507399999999999
	.quad	0x3fe9a450acc0bdcb              # double 0.80130800000000002
	.quad	0x3fd51eabbcb1cc96              # double 0.32999699999999998
	.quad	0x3fe6bd1aa821f299              # double 0.71058399999999999
	.quad	0x3fda216c61522a6f              # double 0.40828999999999999
	.quad	0x3fd228cbd1244a62              # double 0.28373999999999999
	.quad	0x3fe668cac4b4d057              # double 0.70029200000000003
	.quad	0x3fe791f4f50a02b8              # double 0.73656699999999997
	.quad	0x3fc4ee0f3cb3e575              # double 0.16351499999999999
	.quad	0x3fdcea960b6f9fcb              # double 0.451818
	.quad	0x3fde2c55c96030c2              # double 0.47145599999999999
	.quad	0x3fd09528f190d174              # double 0.259104
	.quad	0x3fe5e69f05ea24cc              # double 0.68440199999999995
	.quad	0x3fd83e5321e603d5              # double 0.37880399999999997
	.quad	0x3fc14794ea077037              # double 0.13499700000000001
	.quad	0x3fee9a6f826edaa9              # double 0.95635199999999998
	.quad	0x3fa1a6b50b0f27bb              # double 0.034474999999999999
	.quad	0x3fe0a49e44fa0514              # double 0.52009499999999997
	.quad	0x3fccefbb0e5e6794              # double 0.22606599999999999
	.quad	0x3fed9c12f09d8c6d              # double 0.92530199999999996
	.quad	0x3fa553cddd6e04c0              # double 0.041654999999999998
	.quad	0x3fefd8c8eef1bac3              # double 0.99521300000000001
	.quad	0x3fdab10ba6266fd6              # double 0.41705599999999998
	.quad	0x3fe59cd5f99c38b0              # double 0.67539499999999997
	.quad	0x3fef6e58a32f4491              # double 0.98221999999999998
	.quad	0x3fee94a6eb91b3f2              # double 0.955646
	.quad	0x3fedb7fe08aefb2b              # double 0.92871000000000004
	.quad	0x3fe38448cf7caa76              # double 0.60989800000000005
	.quad	0x3fee318b93469942              # double 0.94354800000000005
	.quad	0x3fc4bf11f926c7eb              # double 0.162081
	.quad	0x3fb52ec6bce8533b              # double 0.082744999999999999
	.quad	0x3fca4f54d1e96c40              # double 0.20554600000000001
	.quad	0x3fec405b39e279dd              # double 0.88285599999999997
	.quad	0x3fd64712e40852b5              # double 0.34808800000000001
	.quad	0x3fe7ec679cc74b84              # double 0.74760800000000005
	.quad	0x3fe009310129cbab              # double 0.50112199999999996
	.quad	0x3fc3f3300de4c511              # double 0.155859
	.quad	0x3fad13f8db489093              # double 0.056793000000000003
	.quad	0x3feba5df2239e6ac              # double 0.86399800000000004
	.quad	0x3fc8d4801f75104d              # double 0.19398499999999999
	.quad	0x3fca6ac215b9a5a9              # double 0.20638300000000001
	.quad	0x3fd9143393ab430f              # double 0.39185799999999998
	.quad	0x3fe888d08919ef95              # double 0.76670099999999997
	.quad	0x3fe89d0a67620ee9              # double 0.76917000000000002
	.quad	0x3fec8d3cff64cf8d              # double 0.89224099999999995
	.quad	0x3fd9b862b27cbf6e              # double 0.40187899999999999
	.quad	0x3fe7c9491f2dc2b1              # double 0.74332100000000001
	.quad	0x3fd6d5e4a3832767              # double 0.35680499999999998
	.quad	0x3fd412ad81adea89              # double 0.31363999999999997
	.quad	0x3fe6756a7ac81d3b              # double 0.70183300000000004
	.quad	0x3fe06b13dfb0d520              # double 0.51307100000000005
	.quad	0x3fe158644523f67f              # double 0.54203999999999997
	.quad	0x3fd099780baa582e              # double 0.25936700000000001
	.quad	0x3fda3cd9a52263d8              # double 0.409964
	.quad	0x3facc6e6d9be4cd7              # double 0.056204999999999998
	.quad	0x3fbde03f705857b0              # double 0.116703
	.quad	0x3fda581cf7878b7a              # double 0.41162799999999999
	.quad	0x3fe34b3c3e74afd5              # double 0.60293399999999997
	.quad	0x3fd1d00713f077cd              # double 0.27832200000000001
	.quad	0x3fe98b7c3504c48b              # double 0.79827700000000001
	.quad	0x3feaa9da597d49d8              # double 0.83323400000000003
	.quad	0x3fec66b3fe9fadb0              # double 0.88753700000000002
	.quad	0x3fe9c9320d9945b7              # double 0.80581000000000003
	.quad	0x3fedc88c60cbf2b2              # double 0.93073099999999998
	.quad	0x3fc7b70691ea78af              # double 0.18527299999999999
	.quad	0x3fe3ff77af64063a              # double 0.62493500000000002
	.quad	0x3fedc3bd5992428d              # double 0.93014399999999997
	.quad	0x3fe7c80a5accd530              # double 0.74316899999999997
	.quad	0x3f9324851a869403              # double 0.018693999999999999
	.quad	0x3febf48a159817b9              # double 0.87360099999999996
	.quad	0x3fdf9f2778140dd4              # double 0.494089
	.quad	0x3fe17b65668c2614              # double 0.54631300000000005
	.quad	0x3fef0b178b370047              # double 0.97010399999999996
	.quad	0x3fe03c72e275ab7e              # double 0.50737900000000002
	.quad	0x3fa97a24894c447c              # double 0.049759999999999999
	.quad	0x3fd65be1a8262457              # double 0.349358
	.quad	0x3fda45dc8323358f              # double 0.41051399999999999
	.quad	0x3feca84167a95c85              # double 0.89553899999999997
	.quad	0x3fdbf5dbb9cf9a07              # double 0.43688100000000002
	.quad	0x3fe54046412cf0fa              # double 0.66409600000000002
	.quad	0x3fe370867ad8e432              # double 0.60748599999999997
	.quad	0x3fe979e59f2ba9d2              # double 0.79613
	.quad	0x3fd6a109d0635a42              # double 0.35357899999999998
	.quad	0x3fe36534373f316e              # double 0.60610399999999998
	.quad	0x3fe49c560c7c0f45              # double 0.64408399999999999
	.quad	0x3fe1b09203a322af              # double 0.55280399999999996
	.quad	0x3fef5ca29845dc83              # double 0.98005799999999998
	.quad	0x3fef3124d099e0e7              # double 0.97474899999999997
	.quad	0x3fe2cd37c1376d55              # double 0.58755100000000005
	.quad	0x3fc9b7521144cbe2              # double 0.200907
	.quad	0x3fd0b1c864883fd5              # double 0.260851
	.quad	0x3fe61a8049667b5f              # double 0.69073499999999999
	.quad	0x3fed111276fb0920              # double 0.90833399999999997
	.quad	0x3fd596bfca85cab0              # double 0.33732600000000001
	.quad	0x3fe1a8b6d86ec17f              # double 0.55184500000000003
	.quad	0x3fe06c636b096356              # double 0.51323099999999999
	.quad	0x3fc3b1c864883fd5              # double 0.153863
	.quad	0x3fe09cdc443914f5              # double 0.51914800000000005
	.quad	0x3fe4f15e7c8d1959              # double 0.65446400000000005
	.quad	0x3fd3409a24031487              # double 0.30081799999999997
	.quad	0x3fc11c3265add9c2              # double 0.13367299999999999
	.quad	0x3fee2087ca643cc0              # double 0.94147099999999994
	.quad	0x3fdf26dce39b456b              # double 0.48674699999999999
	.quad	0x3fc889fc6da44849              # double 0.19171099999999999
	.quad	0x3fda0a9de8b3b320              # double 0.40689799999999998
	.quad	0x3fc5db7f1737542a              # double 0.170761
	.quad	0x3fe51f2dc2b0ea18              # double 0.66005599999999998
	.quad	0x3fea1ab8e8ea39c5              # double 0.81576199999999999
	.quad	0x3fd71376d5497311              # double 0.36056300000000002
	.quad	0x3fe70ff327aa68f5              # double 0.72069700000000003
	.quad	0x3fbe92e62131a8ef              # double 0.11942899999999999
	.quad	0x3fe8af5dbb9cf9a0              # double 0.77140699999999995
	.quad	0x3fedd805e5f30e80              # double 0.93262
	.quad	0x3fe40bcbe61cffeb              # double 0.62644
	.quad	0x3feaaf42784a9479              # double 0.83389400000000002
	.quad	0x3fe8ae7f6f4be836              # double 0.77130100000000001
	.quad	0x3fe07ec7863beec4              # double 0.51547600000000005
	.quad	0x3fdab9a176ddacef              # double 0.41758000000000001
	.quad	0x3fe76bd6e8af8162              # double 0.73191399999999995
	.quad	0x3fe5a7fa1a0cf180              # double 0.676755
	.quad	0x3fc65753a3ec02f3              # double 0.17454
	.quad	0x3feabf3bea91d9b2              # double 0.83584400000000003
	.quad	0x3fea56ba8c586877              # double 0.82308700000000001
	.quad	0x3fdb83a53b8e4b88              # double 0.42991000000000001
	.quad	0x3fe62e770bd017db              # double 0.69317200000000001
	.quad	0x3fc41de26916440f              # double 0.157162
	.quad	0x3fdc0a9de8b3b320              # double 0.43814799999999998
	.quad	0x3f86909aed56b010              # double 0.011018
	.quad	0x3fc0dcc20d5629d8              # double 0.13173699999999999
	.quad	0x3fd33ad9f0a1be2b              # double 0.30046699999999998
	.quad	0x3fdb943e10060781              # double 0.430923
	.quad	0x3fe3ba0e8427418d              # double 0.61646199999999995
	.quad	0x3fc1620ee8d10f52              # double 0.13580500000000001
	.quad	0x3fb2a087ca643cc0              # double 0.072761999999999993
	.quad	0x3fe281754b05b7d0              # double 0.57830300000000001
	.quad	0x3fdbaa8eb463497b              # double 0.43228499999999997
	.quad	0x3fd5d490e66cb103              # double 0.34109899999999999
	.quad	0x3fd4b039ef0f16f4              # double 0.32325599999999999
	.quad	0x3fc2e07e5a78f25a              # double 0.147476
	.quad	0x3fe6439bcba30121              # double 0.69575299999999995
	.quad	0x3fe03ecedd484513              # double 0.50766699999999998
	.quad	0x3fe8f28848387df6              # double 0.77960600000000002
	.quad	0x3fe6f7a4e7ab7564              # double 0.71772999999999998
	.quad	0x3fee30489d27c393              # double 0.94339399999999995
	.quad	0x3fc19bcba3012168              # double 0.13756699999999999
	.quad	0x3fe116a6a012599f              # double 0.53401500000000002
	.quad	0x3fd0a8e71476af8a              # double 0.26030900000000001
	.quad	0x3fe3b07075b3e143              # double 0.61528799999999995
	.quad	0x3fd3db61bb05faec              # double 0.31026500000000001
	.quad	0x3fea56c2efd438d2              # double 0.82309100000000002
	.quad	0x3fb8a78290689870              # double 0.096306000000000002
	.quad	0x3fd4d8383ad9f0a2              # double 0.32569700000000001
	.quad	0x3fce218def416bdb              # double 0.235399
	.quad	0x3fe96173b85e80bf              # double 0.79314600000000002
	.quad	0x3fee831ceaf251c2              # double 0.95350500000000005
	.quad	0x3fd16805a2d72ffd              # double 0.27197399999999999
	.quad	0x3fd852b90a782907              # double 0.38004900000000003
	.quad	0x3fc1a322af577100              # double 0.137791
	.quad	0x3f7611ba3ca7503c              # double 0.0053880000000000004
	.quad	0x3fe7a990f301eabc              # double 0.73944900000000002
	.quad	0x3fe75bd512ec6bcf              # double 0.72996000000000005
	.quad	0x3fd63986338b47c7              # double 0.34726099999999999
	.quad	0x3fde1d81f10667f9              # double 0.470551
	.quad	0x3fe6fc3d68405b3a              # double 0.71829100000000001
	.quad	0x3fee504a2fcefaa4              # double 0.94730099999999994
	.quad	0x3fe7b3fe9fadafd1              # double 0.74072199999999999
	.quad	0x3fee6ce5710880d8              # double 0.95079299999999999
	.quad	0x3fee79d0a67620ef              # double 0.95237000000000005
	.quad	0x3fedff8012dfd695              # double 0.93743900000000002
	.quad	0x3f85e41d4b6a619e              # double 0.010689000000000001
	.quad	0x3fc0f190d173fb7a              # double 0.13237199999999999
	.quad	0x3feae86a4ca4f441              # double 0.84087100000000004
	.quad	0x3fadba4d6e47dc38              # double 0.058062000000000002
	.quad	0x3fe5d25edd052935              # double 0.68193000000000004
	.quad	0x3fdbab367a0f9097              # double 0.43232500000000001
	.quad	0x3fdcdebd9018e758              # double 0.45109500000000002
	.quad	0x3fe8dde15ca6ca04              # double 0.77708500000000002
	.quad	0x3fe102795703f2d4              # double 0.53155200000000002
	.quad	0x3fc3b29a1b9f98b7              # double 0.153888
	.quad	0x3fe7e694898f605b              # double 0.74689700000000003
	.quad	0x3fe5bfc0096feb4a              # double 0.67965699999999996
	.quad	0x3fed34fe79ee02a7              # double 0.91271899999999995
	.quad	0x3fc3722e1ac57e24              # double 0.151922
	.quad	0x3fecde1e2de87097              # double 0.90211399999999997
	.quad	0x3fd52d98bf7f0670              # double 0.33090799999999998
	.quad	0x3f969552e2fbe33b              # double 0.022054000000000001
	.quad	0x3fe7c100e6afcce2              # double 0.74231000000000003
	.quad	0x3fe0e5b8561d4307              # double 0.52804200000000001
	.quad	0x3fe7a333764f11b6              # double 0.738672
	.quad	0x3fe646bacf7446fa              # double 0.69613400000000003
	.quad	0x3fec9f77292c4934              # double 0.89446599999999998
	.quad	0x3fef0e9b38d60a63              # double 0.97053299999999997
	.quad	0x3fc89731098d477c              # double 0.19211400000000001
	.quad	0x3fc566e008e9b38d              # double 0.16720199999999999
	.quad	0x3fe7cccee5abc0e4              # double 0.74375100000000005
	.quad	0x3fd687160956c0d7              # double 0.351995
	.quad	0x3fc9f6a0dbad3a60              # double 0.20283899999999999
	.quad	0x3fd506dd69d30271              # double 0.328544
	.quad	0x3feeaf8594291750              # double 0.95892599999999995
	.quad	0x3fc73edd8b60f1b2              # double 0.18160599999999999
	.quad	0x3fe254bad7d7c2ca              # double 0.57284299999999999
	.quad	0x3fed535a858793de              # double 0.91642500000000005
	.quad	0x3feb32bdc26dce3a              # double 0.84994400000000003
	.quad	0x3fbaca148ba83f4f              # double 0.104646
	.quad	0x3fc9a604e1e71045              # double 0.200379
	.quad	0x3fc108893b7d8490              # double 0.133073
	.quad	0x3fda0c804102ff8f              # double 0.40701300000000001
	.quad	0x3f9e8af81626b2f2              # double 0.029826999999999999
	.quad	0x3fd64046412cf0fa              # double 0.34767300000000001
	.quad	0x3feecb4289118c19              # double 0.96231199999999994
	.quad	0x3fe5baafff36ac64              # double 0.67903899999999995
	.quad	0x3fe1c23d9231c64c              # double 0.55496100000000004
	.quad	0x3fd58f10a99b6f5d              # double 0.33685700000000002
	.quad	0x3fecc0b780346dc6              # double 0.89852500000000002
	.quad	0x3fe95f2452c59fb2              # double 0.79286400000000001
	.quad	0x3fb92f7f498c3b0c              # double 0.098380999999999996
	.quad	0x3f7ada76d97b30f9              # double 0.0065560000000000002
	.quad	0x3fad90e23af31b15              # double 0.057745999999999999
	.quad	0x3fd0d03968d759ef              # double 0.26270900000000003
	.quad	0x3fbc50acc0bdcad1              # double 0.110606
	.quad	0x3fc91105e1c15098              # double 0.19583200000000001
	.quad	0x3fe2c2aed1394318              # double 0.58626500000000004
	.quad	0x3fe64c319c5a3e3a              # double 0.696801
	.quad	0x3fd9284dfce3150e              # double 0.39308500000000002
	.quad	0x3fd59da597d49d7c              # double 0.33774700000000002
	.quad	0x3fecedf82b1f687b              # double 0.90404899999999999
	.quad	0x3fea3d87b56b8738              # double 0.82001100000000005
	.quad	0x3fde9cf56eac8605              # double 0.47832999999999998
	.quad	0x3fefb269df97aaac              # double 0.99052899999999999
	.quad	0x3fea48605681ecd5              # double 0.82133500000000004
	.quad	0x3fdd9d5e4a383276              # double 0.46272999999999997
	.quad	0x3fe34d07852f7f4a              # double 0.60315300000000005
	.quad	0x3fda0a06e9ff0cbb              # double 0.406862
	.quad	0x3fd6b0fadf2ecf20              # double 0.35455199999999998
	.quad	0x3f94d983947496ab              # double 0.020361000000000001
	.quad	0x3fe636b2af145522              # double 0.69417700000000004
	.quad	0x3fec9f6a93f290ac              # double 0.89446000000000003
	.quad	0x3fe0645803cd141a              # double 0.51224899999999995
	.quad	0x3fe734f82f512663              # double 0.72521599999999997
	.quad	0x3fe4936e71cda2b6              # double 0.64299700000000004
	.quad	0x3fe950ebaade657c              # double 0.79112800000000005
	.quad	0x3fe7ff0aa21a719b              # double 0.74988299999999997
	.quad	0x3fed52e2fbe33acd              # double 0.91636799999999996
	.quad	0x3fcb6c82e019b0ab              # double 0.214249
	.quad	0x3fd4b6a1e81cb46c              # double 0.32364700000000002
	.quad	0x3feb2e3821af7d31              # double 0.84939200000000004
	.quad	0x3fd1c17225b749ae              # double 0.27743200000000001
	.quad	0x3fe2ac4d65e46067              # double 0.58353299999999997
	.quad	0x3fd70168b5cbff47              # double 0.35946099999999997
	.quad	0x3f9f35e310dbf056              # double 0.030478999999999999
	.quad	0x3fb0882f0e0a84be              # double 0.064577999999999997
	.quad	0x3fef8e6f2e8c0486              # double 0.98613700000000004
	.quad	0x3fe2c6a1a500d5e9              # double 0.58674700000000002
	.quad	0x3faba0e8427418d7              # double 0.053962000000000003
	.quad	0x3fee3d7b2031ceaf              # double 0.94500499999999998
	.quad	0x3fd0dbf8b9baa151              # double 0.26342599999999999
	.quad	0x3fec11947cfa26a2              # double 0.87714599999999998
	.quad	0x3fe222ca9ac36545              # double 0.566747
	.quad	0x3fed26b723ee1bd2              # double 0.91097600000000001
	.quad	0x3fb2c84f8f8a4c1f              # double 0.073369000000000004
	.quad	0x3f88d25edd052935              # double 0.012120000000000001
	.quad	0x3fc22773e24febd1              # double 0.14182900000000001
	.quad	0x3fc2d14a0a0f4d7b              # double 0.147012
	.quad	0x3fddcd31769a9110              # double 0.46564899999999998
	.quad	0x3f90d6b228dc981c              # double 0.016444
	.quad	0x3fd585015c209247              # double 0.33624300000000001
	.quad	0x3fdce8ab4fa48302              # double 0.45170100000000002
	.quad	0x3fe7bba98eda22f7              # double 0.74165800000000004
	.quad	0x3fdd4c55432873bd              # double 0.45778400000000002
	.quad	0x3fd3704ff43419e3              # double 0.30373
	.quad	0x3fe097e996312f4d              # double 0.518544
	.quad	0x3fe4d1fa333764f1              # double 0.65063199999999999
	.quad	0x3fe268c47a17f413              # double 0.57528900000000005
	.quad	0x3fedf6577531db44              # double 0.93632099999999995
	.quad	0x3fcaa29845dc8323              # double 0.20808699999999999
	.quad	0x3fe7bee3d5fdcdf7              # double 0.74205200000000004
	.quad	0x3fe3022dd7a99fa1              # double 0.59401599999999999
	.quad	0x3fe5b940fecdd0d9              # double 0.67886400000000002
	.quad	0x3f631876188b1141              # double 0.0023310000000000002
	.quad	0x3fe45a61e0c5a815              # double 0.63603299999999996
	.quad	0x3fe8c4b90214ad36              # double 0.77401399999999998
	.quad	0x3fd57b02d59d55e7              # double 0.33563300000000001
	.quad	0x3febf2c7325918a0              # double 0.87338599999999999
	.quad	0x3fd2626b2f23033a              # double 0.28725699999999998
	.quad	0x3fd8d3e920c069e8              # double 0.387934
	.quad	0x3fca19a847b24639              # double 0.20390800000000001
	.quad	0x3fb3c33f85510d39              # double 0.077198000000000003
	.quad	0x3fe636ef8055fbb5              # double 0.69420599999999999
	.quad	0x3fde6837f7be121f              # double 0.47511100000000001
	.quad	0x3fec6f049a9973da              # double 0.88855200000000001
	.quad	0x3fa7587d6f976790              # double 0.045596999999999999
	.quad	0x3feccb0e1b4bb5e1              # double 0.899787
	.quad	0x3feeccec41dd1a22              # double 0.96251500000000001
	.quad	0x3fe9fad6cb535009              # double 0.81186999999999998
	.quad	0x3fabebe1650a45d4              # double 0.054533999999999999
	.quad	0x3fcba9da597d49d8              # double 0.21612100000000001
	.quad	0x3fe3bcab81f969e4              # double 0.61678100000000002
	.quad	0x3feb751697f1f9ad              # double 0.858043
	.quad	0x3fcd4d7add15f02c              # double 0.22892699999999999
	.quad	0x3fed41fa76534374              # double 0.914304
	.quad	0x3fca956c0d6f544c              # double 0.20768500000000001
	.quad	0x3fcb705857afea3e              # double 0.214366
	.quad	0x3fefea704bc27632              # double 0.99736800000000003
	.quad	0x3fc3240746455eaf              # double 0.149537
	.quad	0x3fd4ded6ba8c5868              # double 0.32610099999999997
	.quad	0x3fc83d145d851655              # double 0.189364
	.quad	0x3fe70d9513f8db49              # double 0.72040800000000005
	.quad	0x3fd200b029281776              # double 0.28129199999999999
	.quad	0x3feca5b0ff10ecb7              # double 0.89522599999999997
	.quad	0x3feb0750c1b97354              # double 0.84464300000000003
	.quad	0x3f9812be48a58b3f              # double 0.023508999999999999
	.quad	0x3fdeb5393250b524              # double 0.47981099999999999
	.quad	0x3feb7ec7863beec4              # double 0.85922600000000004
	.quad	0x3fee14c016052503              # double 0.94003300000000001
	.quad	0x3fe33c558644523f              # double 0.60111499999999995
	.quad	0x3fe179f87f023e9f              # double 0.54613900000000004
	.quad	0x3fe8fcf1c3265ade              # double 0.78087700000000004
	.quad	0x3febf9e59f2ba9d2              # double 0.874255
	.quad	0x3fdafa7221858bc6              # double 0.42153600000000002
	.quad	0x3febb0b39192641b              # double 0.86531999999999998
	.quad	0x3fd80d62bf11f927              # double 0.37581700000000001
	.quad	0x3fcab441bb8c32a9              # double 0.20862600000000001
	.quad	0x3fd8a4a05dd8f92b              # double 0.385048
	.quad	0x3fd366b1e5c0b999              # double 0.303143
	.quad	0x3feb9cf9a06a6e33              # double 0.86291200000000001
	.quad	0x3fe7e5f7403dddb1              # double 0.74682199999999999
	.quad	0x3fae364bec679cc7              # double 0.059007999999999998
	.quad	0x3fe0484d76ab5808              # double 0.508826
	.quad	0x3fe1693e1c9b413a              # double 0.54409700000000005
	.quad	0x3fb4d9513f8db489              # double 0.081441
	.quad	0x3feba161e4f765fe              # double 0.86345000000000005
	.quad	0x3fe826a22b3892ef              # double 0.75471600000000005
	.quad	0x3fdcb3f63c31df76              # double 0.44848399999999999
	.quad	0x3fcdfab10ba62670              # double 0.234213
	.quad	0x3fe0337867f0aa22              # double 0.50628300000000004
	.quad	0x3fce6a8fc0d2c387              # double 0.237627
	.quad	0x3fe5a0e8427418d7              # double 0.67589200000000005
	.quad	0x3fe961a1db877ab3              # double 0.79316799999999998
	.quad	0x3fb9903a7546d3fa              # double 0.099857000000000001
	.quad	0x3fe2be0589acbc8c              # double 0.58569599999999999
	.quad	0x3fe1aead9274e22a              # double 0.55257299999999998
	.quad	0x3fea49c90c4dec1c              # double 0.82150699999999998
	.quad	0x3fd463baba7b9171              # double 0.31858700000000001
	.quad	0x3fa4013ec460ed81              # double 0.039072000000000003
	.quad	0x3fe975f4e4430b18              # double 0.79564900000000005
	.quad	0x3fd3e7ff583a53b9              # double 0.31103500000000001
	.quad	0x3febbe3193f6c26a              # double 0.86696700000000004
	.quad	0x3fd3bd61f5be5d9e              # double 0.30843399999999999
	.quad	0x3fe7816f0068db8c              # double 0.73455000000000004
	.quad	0x3fe215a6c5d206c8              # double 0.56514299999999995
	.quad	0x3fe1299d883ba344              # double 0.53632999999999997
	.quad	0x3fec0d1526d8b1dd              # double 0.87659699999999996
	.quad	0x3fd14295a6c5d207              # double 0.26968900000000001
	.quad	0x3fe793c03bc4d22d              # double 0.73678600000000005
	.quad	0x3feba80f12c27a63              # double 0.86426499999999995
	.quad	0x3febd4003254e6e2              # double 0.86962899999999999
	.quad	0x3fdb8d36b4c7f349              # double 0.43049399999999999
	.quad	0x3fd465d3996fa82f              # double 0.31871500000000003
	.quad	0x3fc061e92923e5b8              # double 0.12798799999999999
	.quad	0x3fd8b5c39bcba301              # double 0.38609399999999999
	.quad	0x3fec7bfc6540cc79              # double 0.89013500000000001
	.quad	0x3feda4d2b2bfdb4d              # double 0.92637000000000003
	.quad	0x3fe26935b91f70df              # double 0.57534300000000005
	.quad	0x3fe8f59ccfaeff5c              # double 0.77998199999999995
	.quad	0x3fde55821294573a              # double 0.47396899999999997
	.quad	0x3fe0311c6d1e108c              # double 0.50599499999999997
	.quad	0x3febffaa044ae85c              # double 0.87495900000000004
	.quad	0x3fe8bcb81733226c              # double 0.77303699999999997
	.quad	0x3feee935b91f70df              # double 0.96596800000000004
	.quad	0x3fc5e154434e336a              # double 0.17093900000000001
	.quad	0x3fd1b7564302b40f              # double 0.27681499999999998
	.quad	0x3fe9e4649906cca3              # double 0.80913000000000002
	.quad	0x3fe80be5109070fc              # double 0.751452
	.quad	0x3fe1141a6937d1fe              # double 0.53370399999999996
	.quad	0x3fe06db7281fd9ba              # double 0.51339299999999999
	.quad	0x3fe4ebb98c7e2824              # double 0.653775
	.quad	0x3fec9a49c2c1b110              # double 0.89383400000000002
	.quad	0x3fda46412cf0f9d3              # double 0.41053800000000001
	.quad	0x3fe30e779207d4e1              # double 0.59551600000000005
	.quad	0x3fe5cb1ee2435697              # double 0.68104500000000001
	.quad	0x3fe39ea9a3d2d880              # double 0.61311800000000005
	.quad	0x3fdc024f6598e10d              # double 0.437641
	.quad	0x3feaf0435efa615b              # double 0.84182900000000005
	.quad	0x3fdcbc408d8ec95c              # double 0.44899
	.quad	0x3fdbe7c8d195896a              # double 0.43602200000000002
	.quad	0x3fb4605681ecd4aa              # double 0.079594999999999999
	.quad	0x3fe05cfcc5b8dc55              # double 0.511351
	.quad	0x3fe77583a53b8e4c              # double 0.73309500000000005
	.quad	0x3fdfeb95e5aff2a1              # double 0.49875399999999998
	.quad	0x3fd74395810624dd              # double 0.36349999999999999
	.quad	0x3fe9680e06530058              # double 0.79395199999999999
	.quad	0x3fd518c197e56473              # double 0.32963599999999998
	.quad	0x3fe3ed3953dea466              # double 0.62270800000000004
	.quad	0x3fecdfefbf401c50              # double 0.90233600000000003
	.quad	0x3fe060c176577532              # double 0.51181100000000002
	.quad	0x3fe148e043a21640              # double 0.54014600000000002
	.quad	0x3fd988db0574b407              # double 0.398978
	.quad	0x3fda251c193b3a69              # double 0.40851500000000002
	.quad	0x3fd0a743a647fdc6              # double 0.26020900000000002
	.quad	0x3fee27c17a89331a              # double 0.942353
	.quad	0x3f863b256ffc115e              # double 0.010855
	.quad	0x3fc17b4a2339c0ec              # double 0.136575
	.quad	0x3fd603b81b64e054              # double 0.34397699999999998
	.quad	0x3fb41743e963dc48              # double 0.078479999999999994
	.quad	0x3fed388ca3e7d135              # double 0.91315299999999999
	.quad	0x3fe21b024f6598e1              # double 0.56579699999999999
	.quad	0x3fe83d102bc72e27              # double 0.75745399999999996
	.quad	0x3fe897fe8ee6b830              # double 0.76855399999999996
	.quad	0x3fcc9db65ecc3e32              # double 0.22356300000000001
	.quad	0x3fd34d338f798527              # double 0.30158699999999999
	.quad	0x3fd546fdeb52c9d1              # double 0.33245799999999998
	.quad	0x3fb1c054ef459d99              # double 0.069341
	.quad	0x3febde8d5410f94d              # double 0.87091700000000005
	.quad	0x3febb25b317efe0d              # double 0.86552200000000001
	.quad	0x3fe224edf6124074              # double 0.56700799999999996
	.quad	0x3fbbbe22e5de15ca              # double 0.10836999999999999
	.quad	0x3fef62584f4c6e6e              # double 0.98075500000000004
	.quad	0x3fd89d7ba6698bb5              # double 0.38461200000000001
	.quad	0x3fd43dee78183f92              # double 0.31628000000000001
	.quad	0x3fe9efeb4a66559f              # double 0.81053699999999995
	.quad	0x3fdf6f60e0eb67c3              # double 0.49117300000000003
	.quad	0x3fd1868fd199bb28              # double 0.27383800000000003
	.quad	0x3fe46f7e3d1cc101              # double 0.63861000000000001
	.quad	0x3fd49310129cbab6              # double 0.32147599999999998
	.quad	0x3fb8028e4fb97bb7              # double 0.093788999999999997
	.quad	0x3fd19335d249e450              # double 0.27461000000000002
	.quad	0x3fc3dd1a21ea3593              # double 0.15518499999999999
	.quad	0x3fe5d6d5cfaacd9f              # double 0.68247500000000005
	.quad	0x3fb2392e1ef73c0c              # double 0.071184999999999998
	.quad	0x3fe8d1aa821f2991              # double 0.77559400000000001
	.quad	0x3fe03211cb039ef1              # double 0.50611200000000001
	.quad	0x3fe29e2bcf91a32b              # double 0.58180799999999999
	.quad	0x3fdeac4b4d056c51              # double 0.47926600000000003
	.quad	0x3fc37e670e2c12ae              # double 0.15229500000000001
	.quad	0x3fb35b3e1437c569              # double 0.075610999999999998
	.quad	0x3f990470a808c826              # double 0.024431000000000001
	.quad	0x3fc7a3a08398a655              # double 0.18468100000000001
	.quad	0x3fe19116a8b8f14e              # double 0.54896100000000003
	.quad	0x3fdcb45ae5ffa3ba              # double 0.44850800000000002
	.quad	0x3fe17d8adab9f55a              # double 0.54657500000000003
	.quad	0x3fdeea5b530ced4e              # double 0.48305399999999998
	.quad	0x3fd490d173fb7a5f              # double 0.32133899999999999
	.quad	0x3f9a1dfb9389b520              # double 0.025505
	.quad	0x3fd5c1333b96af04              # double 0.33991700000000002
	.quad	0x3fe9ab4fa48301a8              # double 0.80216200000000004
	.quad	0x3fd3ce18266772d6              # double 0.30945400000000001
	.quad	0x3fd1b2aae297396d              # double 0.27653
	.quad	0x3fd6a261bf37b8d4              # double 0.353661
	.quad	0x3fef28cdea033e79              # double 0.97373100000000001
	.quad	0x3fe13a8e71476af9              # double 0.53839800000000004
	.quad	0x3fe2928e0c9d9d34              # double 0.58038999999999996
	.quad	0x3feb6e675147f130              # double 0.85722699999999996
	.quad	0x3fe5d68405b39e28              # double 0.68243600000000004
	.quad	0x3fe1bb0e5e679464              # double 0.55408400000000002
	.quad	0x3fe1cd07852f7f4a              # double 0.55627800000000005
	.quad	0x3fc3d640e9d51b50              # double 0.154976
	.quad	0x3fce45f5ad96a6a0              # double 0.23651
	.quad	0x3fd8e58e64b23140              # double 0.389011
	.quad	0x3fd961f9f01b866e              # double 0.39660499999999999
	.quad	0x3fe037da61e0c5a8              # double 0.50681799999999999
	.quad	0x3fefdc6e2a80064b              # double 0.99565800000000004
	.quad	0x3fd74562e09fe868              # double 0.36360999999999999
	.quad	0x3fe1c9949e8815e4              # double 0.55585700000000005
	.quad	0x3fdb61522a6f3f53              # double 0.427815
	.quad	0x3fe3682d7b634dad              # double 0.60646699999999998
	.quad	0x3fde50e347629521              # double 0.47368700000000002
	.quad	0x3fe2fa919695d91b              # double 0.59308700000000003
	.quad	0x3fd5cdd93c46d82c              # double 0.34068900000000002
	.quad	0x3fb46822ff08893b              # double 0.079713999999999993
	.quad	0x3fe1edf82b1f687b              # double 0.56029899999999999
	.quad	0x3fda5753a3ec02f3              # double 0.41158
	.quad	0x3fe9f4eca686e7e6              # double 0.81114799999999998
	.quad	0x3fe4e718a86d71f3              # double 0.65320999999999996
	.quad	0x3fc1c432ca57a787              # double 0.13880000000000001
	.quad	0x3f96177ea1c68ec5              # double 0.021573999999999999
	.quad	0x3febc4eb56fb8f58              # double 0.867788
	.quad	0x3fe064020817fc76              # double 0.512208
	.quad	0x3fe2031ceaf251c2              # double 0.56288000000000005
	.quad	0x3fc12aae297396d1              # double 0.13411500000000001
	.quad	0x3fe3f6e1deacc921              # double 0.62388699999999997
	.quad	0x3fead8dde7a743a6              # double 0.83897299999999997
	.quad	0x3febc4aa53fc0097              # double 0.867757
	.quad	0x3fd2be3c105186db              # double 0.29286099999999998
	.quad	0x3fd7503b81b64e05              # double 0.36427199999999998
	.quad	0x3fd085f06f694467              # double 0.25817499999999999
	.quad	0x3fea03f4eca686e8              # double 0.81298300000000001
	.quad	0x3fe288b75ea67e84              # double 0.57918899999999995
	.quad	0x3fe3fe73a365cb36              # double 0.62481100000000001
	.quad	0x3fb3394b7b28954a              # double 0.075092999999999993
	.quad	0x3fe84c9c90c4dec2              # double 0.75935200000000003
	.quad	0x3fb673a365cb35f4              # double 0.087702000000000002
	.quad	0x3fbe9973d9ec7000              # double 0.119529
	.quad	0x3fddff583a53b8e5              # double 0.46871000000000002
	.quad	0x3fee70f16f4384ba              # double 0.95128699999999999
	.quad	0x3fe0802e2328f9f4              # double 0.51564699999999997
	.quad	0x3feb57c0b1359792              # double 0.85446200000000005
	.quad	0x3fde74ea8da7f3cf              # double 0.47588599999999998
	.quad	0x3fea2684cf0739b0              # double 0.81720199999999998
	.quad	0x3fe20203e63e8dda              # double 0.56274599999999997
	.quad	0x3fe05e5aff2a172b              # double 0.51151800000000003
	.quad	0x3fe2285ec3dab5c4              # double 0.56742800000000004
	.quad	0x3fe2619b90ea9e6f              # double 0.57441500000000001
	.quad	0x3fe6ed938151a438              # double 0.71650100000000005
	.quad	0x3fee97e34b945309              # double 0.95604100000000003
	.quad	0x3fcccc35ce182667              # double 0.22498199999999999
	.quad	0x3fed6d56b00ffda4              # double 0.91959699999999999
	.quad	0x3fb3449129888f86              # double 0.075264999999999999
	.quad	0x3fe8cb4070329803              # double 0.77481100000000003
	.quad	0x3fee1c23b7952d23              # double 0.94093499999999997
	.quad	0x3fee7a99fa11a976              # double 0.95246600000000003
	.quad	0x3fe39e81cb46bacf              # double 0.61309899999999995
	.quad	0x3fe7ad70e6f2e8c0              # double 0.73992199999999997
	.quad	0x3fb57481b21c475e              # double 0.083808999999999994
	.quad	0x3fd8065300581494              # double 0.375386
	.quad	0x3fd8f64cf8d716d3              # double 0.39003300000000002
	.quad	0x3fe5c6b69db65ecc              # double 0.68050699999999997
	.quad	0x3fde9af9ebe9c886              # double 0.478209
	.quad	0x3fdd1f969e3c9689              # double 0.45505299999999999
	.quad	0x3fcc6c093d966384              # double 0.22204699999999999
	.quad	0x3fd0ba7fc32ebe59              # double 0.26138299999999998
	.quad	0x3fe9f03afb7e9100              # double 0.81057500000000005
	.quad	0x3fe751bf7ad4b274              # double 0.72872899999999996
	.quad	0x3fec557de0d66f0d              # double 0.885436
	.quad	0x3fdf0a5269595fee              # double 0.48500500000000002
	.quad	0x3fe938da3c21187e              # double 0.78818999999999995
	.quad	0x3fde7b17ce52deca              # double 0.47626299999999999
	.quad	0x3f7be6e653868fd2              # double 0.0068120000000000003
	.quad	0x3fcc4db9c7368ad7              # double 0.22112200000000001
	.quad	0x3fde35d67ba237ce              # double 0.47203600000000001
	.quad	0x3fcad349be8ff328              # double 0.20957300000000001
	.quad	0x3fc66f5019f3c70d              # double 0.17527200000000001
	.quad	0x3fe798c5c9a34ca1              # double 0.73739900000000003
	.quad	0x3fc73682730c6717              # double 0.18135100000000001
	.quad	0x3fb28650e779207d              # double 0.072361999999999996
	.quad	0x3fe96ff9f87f023f              # double 0.79491900000000004
	.quad	0x3fbaddaceee0f3cb              # double 0.104945
	.quad	0x3fe69b5a63f9a49c              # double 0.70646399999999998
	.quad	0x3fe60bfe3b03e20d              # double 0.68896400000000002
	.quad	0x3fed09917939a7c1              # double 0.90741799999999995
	.quad	0x3fe4a91105e1c151              # double 0.64563800000000005
	.quad	0x3fde34e3369b9d80              # double 0.47197800000000001
	.quad	0x3fcc2888b545c78a              # double 0.21998699999999999
	.quad	0x3febc2c7fbacb429              # double 0.86752700000000005
	.quad	0x3fe5f60e0eb67c28              # double 0.68628599999999995
	.quad	0x3fcb081c2e33eff2              # double 0.21118500000000001
	.quad	0x3fa1e060fe47991c              # double 0.034915000000000002
	.quad	0x3feb1c1f85d744f6              # double 0.84718300000000002
	.quad	0x3fcdd50a88effe2a              # double 0.23306399999999999
	.quad	0x3fdf5ffa3b9ae0c1              # double 0.49023299999999997
	.quad	0x3feea8f9f44d4456              # double 0.95812699999999995
	.quad	0x3fa3ff47735c182f              # double 0.039057000000000001
	.quad	0x3fefc61b6d43d039              # double 0.99293299999999995
	.quad	0x3fb5471715c63ae2              # double 0.083115999999999995
	.quad	0x3fc8352eb5f5f0b3              # double 0.18912300000000001
	.quad	0x3fe75592d98bf7f0              # double 0.72919599999999996
	.quad	0x3fc330ced4e4c943              # double 0.149927
	.quad	0x3fd15996744b2b77              # double 0.27109299999999997
	.quad	0x3fefd70e6f2e8c05              # double 0.99500200000000005
	.quad	0x3fc1484d76ab5808              # double 0.135019
	.quad	0x3fc39b13165d3997              # double 0.15317
	.quad	0x3feb3fbbd7b2031d              # double 0.85153000000000001
	.quad	0x3fded8a548238540              # double 0.48197299999999998
	.quad	0x3f40a569b17481b2              # double 5.0799999999999999E-4
	.quad	0x3fb63f141205bc02              # double 0.086900000000000005
	.quad	0x3f85f45e0b4e11dc              # double 0.01072
	.quad	0x3fed96c1e364bec6              # double 0.92465299999999995
	.quad	0x3fa37f7be121ee67              # double 0.038081999999999998
	.quad	0x3fdc551d68c692f7              # double 0.44269500000000001
	.quad	0x3fc5baba7b9170d6              # double 0.169761
	.quad	0x3fef9fec99f1ae2e              # double 0.98827200000000004
	.quad	0x3fd1db6a1e81cb47              # double 0.27901700000000002
	.quad	0x3fc6744b2b777d0f              # double 0.175424
	.quad	0x3fe1ef9b994e1a3f              # double 0.56049899999999997
	.quad	0x3fe52f8df7a4e7ab              # double 0.66205499999999995
	.quad	0x3fe14b2314013ec4              # double 0.54042199999999996
	.quad	0x3fd9a148ba83f4ed              # double 0.40046900000000002
	.quad	0x3fe4bfab10ba6267              # double 0.648397
	.quad	0x3fde3c1ce6c093d9              # double 0.47241899999999998
	.quad	0x3fd90dcfcc5b8dc5              # double 0.39146799999999998
	.quad	0x3fe4b1b152f3c2db              # double 0.64669100000000002
	.quad	0x3fd6e0ef99806f26              # double 0.35747899999999999
	.quad	0x3fd684cad57bc7f7              # double 0.35185499999999997
	.quad	0x3fbbb81b64e05469              # double 0.108278
	.quad	0x3fddf33ca31e7d9a              # double 0.46797100000000003
	.quad	0x3fe39802c0a4a05e              # double 0.61230600000000002
	.quad	0x3fc7654d61b2a27f              # double 0.182779
	.quad	0x3fdb6916440f2389              # double 0.42828899999999998
	.quad	0x3fe208a265f0f5a1              # double 0.563554
	.quad	0x3fd4f47304039abf              # double 0.32741999999999999
	.quad	0x3fe47e23f24d8fd6              # double 0.64039800000000002
	.quad	0x3fe56679463cfb33              # double 0.66875899999999999
	.quad	0x3fec3e09bb6aa4ba              # double 0.88257300000000005
	.quad	0x3fd05a2d72ffd1dd              # double 0.25550400000000001
	.quad	0x3f7e2de8709741d1              # double 0.0073680000000000004
	.quad	0x3fd5b46bacf74470              # double 0.33913700000000002
	.quad	0x3fbfb3d8e0008638              # double 0.123838
	.quad	0x3fedde2046c764ae              # double 0.933365
	.quad	0x3fe9f2a38b8ae31d              # double 0.81086899999999995
	.quad	0x3fe03c81908e581d              # double 0.507386
	.quad	0x3fdb2730c67168f9              # double 0.42426700000000001
	.quad	0x3fe1a048e043a216              # double 0.55081599999999997
	.quad	0x3fca4be40420f6f1              # double 0.20544100000000001
	.quad	0x3fe2052502eec7c9              # double 0.56312799999999996
	.quad	0x3fdb79dd3bafd977              # double 0.429313
	.quad	0x3fe9839cd8127b2d              # double 0.79731600000000002
	.quad	0x3feb4ae21101b003              # double 0.85289099999999995
	.quad	0x3fd4885d31337eb3              # double 0.32082300000000002
	.quad	0x3faf0281ba7fc32f              # double 0.060566000000000002
	.quad	0x3fd1e49f51697f20              # double 0.27957900000000002
	.quad	0x3fe9504c48adeebb              # double 0.79105199999999998
	.quad	0x3fd82f23033a4724              # double 0.37787700000000002
	.quad	0x3fb24894c447c30d              # double 0.071419999999999997
	.quad	0x3fd7a808c8259e1f              # double 0.36963099999999999
	.quad	0x3fe2c1f212d77319              # double 0.586175
	.quad	0x3fe95b3397dd00f7              # double 0.79238299999999995
	.quad	0x3fe941fea8112ba1              # double 0.78930599999999995
	.quad	0x3fd9fef7c243dccf              # double 0.40618700000000002
	.quad	0x3fe2c5d851654d62              # double 0.58665100000000003
	.quad	0x3fe3d119ce075f70              # double 0.61927500000000002
	.quad	0x3fe6e798958d9b5f              # double 0.71577100000000005
	.quad	0x3fe2e02ea960b6fa              # double 0.589866
	.quad	0x3fd93b03e20ccff2              # double 0.39422699999999999
	.quad	0x3feb2b27cbf6e3f8              # double 0.84901800000000005
	.quad	0x3fe28d23d4f15e7d              # double 0.57972900000000005
	.quad	0x3fd7fe86833c6003              # double 0.37491000000000002
	.quad	0x3fcfc2d27807789a              # double 0.24813299999999999
	.quad	0x3fe18f25a250f840              # double 0.54872399999999999
	.quad	0x3fd2b8a5ce5b4246              # double 0.29252
	.quad	0x3fbf455a7d24180d              # double 0.122152
	.quad	0x3fd01adea897635e              # double 0.25163999999999997
	.quad	0x3fd5b9f98b71b8aa              # double 0.339476
	.quad	0x3fe9064883fd5022              # double 0.78201699999999996
	.quad	0x3fee8c32a8c9b845              # double 0.95461399999999996
	.quad	0x3fe6a6dce39b456b              # double 0.70786899999999997
	.quad	0x3fe965cf67b1c001              # double 0.79367799999999999
	.quad	0x3fe8327ed84d338f              # double 0.75616399999999995
	.quad	0x3fd87e73a365cb36              # double 0.382718
	.quad	0x3fc42c12ad81adeb              # double 0.15759500000000001
	.quad	0x3fb55d91ab8e8ea4              # double 0.083459000000000005
	.quad	0x3fe085857afea3df              # double 0.51629899999999995
	.quad	0x3fe4d03fb3743633              # double 0.65042100000000003
	.quad	0x3fe4c20d5629d841              # double 0.64868800000000004
	.quad	0x3fdf313be22e5de1              # double 0.48737999999999998
	.quad	0x3fa22fcefaa4766c              # double 0.035520999999999997
	.quad	0x3fe3af3a14cec41e              # double 0.61514000000000002
	.quad	0x3fd66dacabc51548              # double 0.35044399999999998
	.quad	0x3fe06ad4f5903a75              # double 0.51304099999999997
	.quad	0x3fd3dadb8348f53c              # double 0.31023299999999998
	.quad	0x3fe27cdee34fc611              # double 0.57774300000000001
	.quad	0x3fbb37eb28d8665e              # double 0.106322
	.quad	0x3fe1c7304039abf3              # double 0.55556499999999998
	.quad	0x3fe75f676ea4228a              # double 0.73039600000000005
	.quad	0x3fe06e6d9be4cd75              # double 0.51348000000000005
	.quad	0x3fc0bc72e275ab7e              # double 0.13075100000000001
	.quad	0x3fda4bba12b5e52a              # double 0.41087200000000001
	.quad	0x3fe22dab9f559b3d              # double 0.568075
	.quad	0x3fe92e9899bf5947              # double 0.78693800000000003
	.quad	0x3febf34938583622              # double 0.873448
	.quad	0x3f966772d5e071c5              # double 0.021878999999999999
	.quad	0x3fcfe1b8ed1bf7ad              # double 0.24907599999999999
	.quad	0x3fe3d171e29b6b2b              # double 0.61931700000000001
	.quad	0x3fdf306a2b1704ff              # double 0.48732999999999999
	.quad	0x3fec5681ecd4aa11              # double 0.88556000000000001
	.quad	0x3fd0202d9cf13cef              # double 0.25196400000000002
	.quad	0x3fcd2a38b8ae31d7              # double 0.227851
	.quad	0x3fe9ecacd184c272              # double 0.810141
	.quad	0x3fd455a7d24180d4              # double 0.31772800000000001
	.quad	0x3fb68e60807357e6              # double 0.088109999999999993
	.quad	0x3fc00bbb1f255f35              # double 0.125358
	.quad	0x3fe5d186db50f40e              # double 0.68182699999999996
	.quad	0x3fe8b078d92fb19e              # double 0.77154199999999995
	.quad	0x3fd1d9f90539fba4              # double 0.27892899999999998
	.quad	0x3fe8328b6d86ec18              # double 0.75617000000000001
	.quad	0x3feebc903ea704bc              # double 0.96051799999999998
	.quad	0x3fdb78183f91e647              # double 0.429205
	.quad	0x3fe6371327243138              # double 0.69422300000000003
	.quad	0x3fdd3d145d851655              # double 0.45685300000000001
	.quad	0x3fb923d4f15e7c8d              # double 0.098202999999999999
	.quad	0x3fecb506dd69d302              # double 0.89709799999999995
	.quad	0x3fcdf15a4acf312b              # double 0.233928
	.quad	0x3fdd704ff43419e3              # double 0.45998
	.quad	0x3fb753f7ced91687              # double 0.091124999999999998
	.quad	0x3feed90c0ad03d9b              # double 0.96399500000000004
	.quad	0x3fd0d7c2ca148ba8              # double 0.26316899999999999
	.quad	0x3fd47ac3eb7cbb3d              # double 0.31999300000000003
	.quad	0x3fe0f5ff609dcf89              # double 0.53002899999999997
	.quad	0x3fc4ed5f138bcdff              # double 0.163494
	.quad	0x3fc147496aad1d04              # double 0.134988
	.quad	0x3feed553ef6b5d46              # double 0.96354099999999998
	.quad	0x3fb4c282c6ef3d3a              # double 0.081092999999999998
	.quad	0x3fb54f5903a7546d              # double 0.083241999999999997
	.quad	0x3feb21c68ec52a41              # double 0.84787299999999999
	.quad	0x3fe1c05f6ba0620b              # double 0.55473300000000003
	.quad	0x3fdaae5796bfca86              # double 0.41689100000000001
	.quad	0x3fec53f1843c3a43              # double 0.88524700000000001
	.quad	0x3fc31d0c80410300              # double 0.14932400000000001
	.quad	0x3fdad05f28848388              # double 0.41896800000000001
	.quad	0x3fbdf90539fba451              # double 0.117081
	.quad	0x3fe87e542e557de1              # double 0.76542100000000002
	.quad	0x3fdf57d9dba908a2              # double 0.48973699999999998
	.quad	0x3fb554eb13dfb0d5              # double 0.083326999999999998
	.quad	0x3fdf127f5e84f095              # double 0.48550399999999999
	.quad	0x3fcd496249a133c2              # double 0.22880200000000001
	.quad	0x3fe5aa2c2374794f              # double 0.67702300000000004
	.quad	0x3fe77d3f5b5fa227              # double 0.734039
	.quad	0x3fe2c68cac4b4d05              # double 0.58673699999999995
	.quad	0x3feea5dd095af295              # double 0.95774700000000001
	.quad	0x3fd1358f2e05ccc9              # double 0.26889400000000002
	.quad	0x3fd4f6b5d462c344              # double 0.32755800000000002
	.quad	0x3fee4be835dedf1e              # double 0.946766
	.quad	0x3fee1cb252ce032e              # double 0.94100300000000003
	.quad	0x3fe9c1f85d744f5d              # double 0.80492799999999998
	.quad	0x3fed9a975afaf859              # double 0.92512099999999997
	.quad	0x3fdb77b7c7820a31              # double 0.42918200000000001
	.quad	0x3fc3d9cae21101b0              # double 0.155084
	.quad	0x3fe71e518f3eccc4              # double 0.72245099999999995
	.quad	0x3fea21a500d5e8d5              # double 0.81660699999999997
	.quad	0x3fed31769a91105e              # double 0.91228799999999999
	.quad	0x3fd59b17481b21c4              # double 0.33759099999999997
	.quad	0x3fe2992ea52ef912              # double 0.58119900000000002
	.quad	0x3fcad48882f0e0a8              # double 0.20961099999999999
	.quad	0x3fe4fb9bed30f063              # double 0.65571400000000002
	.quad	0x3fe0d48882f0e0a8              # double 0.52594399999999997
	.quad	0x3fc1f8fcd67fd3f6              # double 0.14041100000000001
	.quad	0x3fd7158fb43d89ce              # double 0.36069099999999998
	.quad	0x3fe66534373f316e              # double 0.69985399999999998
	.quad	0x3fe373c4f3ba7760              # double 0.60788200000000003
	.quad	0x3fdb6872b020c49c              # double 0.42825000000000002
	.quad	0x3fe36503fb374363              # double 0.60608099999999998
	.quad	0x3fef388a8b08dd1e              # double 0.97565199999999996
	.quad	0x3fed8096feb4a665              # double 0.92194699999999996
	.quad	0x3feb1ea57214f052              # double 0.84749099999999999
	.quad	0x3fb99bf5946c332f              # double 0.100036
	.quad	0x3fd2ff69014b599b              # double 0.29683900000000002
	.quad	0x3fe3a81fd9ba1b19              # double 0.61427299999999996
	.quad	0x3fd6f9db22d0e560              # double 0.35899999999999999
	.quad	0x3fe2c51b93037d63              # double 0.586561
	.quad	0x3fdb749adc8fb86f              # double 0.42899199999999998
	.quad	0x3fc04edf61240746              # double 0.12740699999999999
	.quad	0x3fda035371971c11              # double 0.40645300000000001
	.quad	0x3fe16e30caa326e1              # double 0.54470099999999999
	.quad	0x3fe94ad362e90364              # double 0.79038399999999997
	.quad	0x3fdd7e9d94d0dcfd              # double 0.46085300000000001
	.quad	0x3fb1edbf8b9baa15              # double 0.070033999999999999
	.quad	0x3fe3f81a5870da5e              # double 0.62403600000000004
	.quad	0x3f860b6f9fcb0c02              # double 0.010763999999999999
	.quad	0x3fdbeb8950763a19              # double 0.436251
	.quad	0x3fba35c5b4aa9718              # double 0.102383
	.quad	0x3fbcf20642396074              # double 0.113068
	.quad	0x3fee625e99e94ab2              # double 0.94950800000000002
	.quad	0x3fd145a1cac08312              # double 0.26987499999999998
	.quad	0x3feafc6759ab6d01              # double 0.84331100000000003
	.quad	0x3fef24463065f959              # double 0.97317799999999998
	.quad	0x3fdd32e7b3d8e001              # double 0.45623200000000003
	.quad	0x3fd9023a6ce3582a              # double 0.39076100000000002
	.quad	0x3fca2e019b0ab2e1              # double 0.20452899999999999
	.quad	0x3fe49888f861a60d              # double 0.64361999999999997
	.quad	0x3fe0c11c2a023209              # double 0.52357299999999996
	.quad	0x3fc7ee2c98e53eb4              # double 0.18695600000000001
	.quad	0x3fded9d3458cd20b              # double 0.482045
	.quad	0x3fe215bbbe878fac              # double 0.56515300000000002
	.quad	0x3fc3fd2630ec3116              # double 0.156163
	.quad	0x3fd44712e40852b5              # double 0.31683800000000001
	.quad	0x3fefa9fbe76c8b44              # double 0.98950000000000004
	.quad	0x3fc5f2a9d627bf62              # double 0.17146800000000001
	.quad	0x3fe828bb0a2ca9ac              # double 0.75497199999999997
	.quad	0x3fe88f605ab3aabd              # double 0.76750200000000002
	.quad	0x3fe0a3bff8a8f3aa              # double 0.51998900000000003
	.quad	0x3fdc0aa64c2f837b              # double 0.43814999999999998
	.quad	0x3fb838e29f9ce8d9              # double 0.094617999999999994
	.quad	0x3fe727589efd86a9              # double 0.723553
	.quad	0x3fe504f4c6e6d9be              # double 0.65685499999999997
	.quad	0x3fd357eed45e9186              # double 0.30224200000000001
	.quad	0x3fcb3bc0a06e9ff1              # double 0.21276100000000001
	.quad	0x3fed6d288ce703b0              # double 0.91957500000000003
	.quad	0x3fe28f0a5efe9318              # double 0.57996099999999995
	.quad	0x3fb1ea9a3d2d87f9              # double 0.069986000000000007
	.quad	0x3fe6b77c02afdda9              # double 0.70989800000000003
	.quad	0x3fe1d74927913e81              # double 0.55752999999999997
	.quad	0x3fe5cc20d5629d84              # double 0.681168
	.quad	0x3fdc945b6c3760bf              # double 0.44655499999999998
	.quad	0x3fea522a6f3f52fc              # double 0.82252999999999998
	.quad	0x3fe02f405f6ba062              # double 0.505768
	.quad	0x3fed0c60cbf2b23a              # double 0.90776100000000004
	.quad	0x3fe5f65ba6efc372              # double 0.68632300000000002
	.quad	0x3febbe1eb4202d9d              # double 0.86695800000000001
	.quad	0x3fd1f19934efcbd5              # double 0.28037099999999998
	.quad	0x3fd9c621b7e0ac7e              # double 0.40271800000000002
	.quad	0x3feee4f97edc7ef1              # double 0.96545099999999994
	.quad	0x3fcd542a23bff8a9              # double 0.229131
	.quad	0x3fef7e2a3cea6c1a              # double 0.984151
	.quad	0x3fe58fa7a85015c2              # double 0.673786
	.quad	0x3fd48a979e16d6dc              # double 0.32095899999999999
	.quad	0x3fe8e736049ecb32              # double 0.77822400000000003
	.quad	0x3fc388765ba6efc3              # double 0.15260199999999999
	.quad	0x3fabb9f127f5e84f              # double 0.054153
	.quad	0x3fd06577531db446              # double 0.256193
	.quad	0x3fd085729b280f13              # double 0.25814500000000001
	.quad	0x3fef9fd9ba1b1961              # double 0.988263
	.quad	0x3fdc0ab2e1693c04              # double 0.43815300000000001
	.quad	0x3fd2349be8ff327b              # double 0.28446100000000002
	.quad	0x3fb3dbf487fcb924              # double 0.077575000000000005
	.quad	0x3fe8baffb04ee7c5              # double 0.77282700000000004
	.quad	0x3fd9da554b8bef8d              # double 0.403951
	.quad	0x3fdd7fc32ebe596d              # double 0.46092300000000003
	.quad	0x3fee8121682f9442              # double 0.95326299999999997
	.quad	0x3feb24c61d8622c4              # double 0.84823899999999996
	.quad	0x3fd835d67ba237ce              # double 0.37828600000000001
	.quad	0x3faee6fb4c3c18b5              # double 0.060356
	.quad	0x3fe3cdee34fc610f              # double 0.61888799999999999
	.quad	0x3fe58b1feeb2d0a2              # double 0.67323299999999997
	.quad	0x3f5b60ae9680e065              # double 0.001671
	.quad	0x3fdbae3a3a8e7147              # double 0.43250899999999998
	.quad	0x3fd7c69728a61177              # double 0.37149599999999999
	.quad	0x3fd0b71fbc5de9c0              # double 0.26117699999999999
	.quad	0x3fe0c9a5657fb69a              # double 0.52461500000000005
	.quad	0x3fe88daa0cae642c              # double 0.767293
	.quad	0x3fd46df82b1f687b              # double 0.319212
	.quad	0x3fef60a2014727dd              # double 0.98054600000000002
	.quad	0x3fc4447c30d306a3              # double 0.15834000000000001
	.quad	0x3fda6e3b46fdeb53              # double 0.41297800000000001
	.quad	0x3fcad2d44dca8e2e              # double 0.209559
	.quad	0x3fd3c069e7fb267c              # double 0.30861899999999998
	.quad	0x3fe35a250f840182              # double 0.60475400000000001
	.quad	0x3fbd249e44fa0514              # double 0.11384
	.quad	0x3fd7f7878b7a1c26              # double 0.37448300000000001
	.quad	0x3fe3f2dc2b0ea183              # double 0.62339599999999995
	.quad	0x3fc68c586876e1df              # double 0.17615800000000001
	.quad	0x3fe54f0739b024f6              # double 0.66589699999999996
	.quad	0x3fb45ac471b47842              # double 0.079509999999999997
	.quad	0x3fec3a57eaa2a0a9              # double 0.88212199999999996
	.quad	0x3fee2cabc5154867              # double 0.94295300000000004
	.quad	0x3fe9f4ea8da7f3cf              # double 0.81114699999999995
	.quad	0x3fd9645a1cac0831              # double 0.39674999999999999
	.quad	0x3fe4c63065f9591d              # double 0.64919300000000002
	.quad	0x3fd762cba732df50              # double 0.36540499999999998
	.quad	0x3fdb348f53c579f2              # double 0.42508299999999999
	.quad	0x3fe7c40d0aaa7ded              # double 0.74268199999999995
	.quad	0x3fe903b3e9a6f827              # double 0.78170200000000001
	.quad	0x3fb8064a9cdc4439              # double 0.093845999999999999
	.quad	0x3fd9296f6512a950              # double 0.393154
	.quad	0x3fe992018a43bb41              # double 0.79907300000000003
	.quad	0x3fd86c8f75536934              # double 0.38162600000000002
	.quad	0x3fe78a8d21bc126a              # double 0.73566299999999996
	.quad	0x3fefa6351deefe50              # double 0.989039
	.quad	0x3fe2a1ad6451b930              # double 0.58223599999999998
	.quad	0x3fdd00da1a93293d              # double 0.453177
	.quad	0x3fda958d9b5e95b8              # double 0.41537800000000002
	.quad	0x3fdb60999dcb5782              # double 0.42777100000000001
	.quad	0x3fc43968d759ee89              # double 0.158002
	.quad	0x3fbb49be8ff327aa              # double 0.10659399999999999
	.quad	0x3feeb2d6ece13f4b              # double 0.95933100000000004
	.quad	0x3fedfc8b0079a283              # double 0.93707799999999997
	.quad	0x3fc1cdc443914f48              # double 0.13909199999999999
	.quad	0x3fea16e58a32f449              # double 0.81529499999999999
	.quad	0x3fe5023e9ea14057              # double 0.656524
	.quad	0x3fe3225b749adc90              # double 0.59794400000000003
	.quad	0x3fefe2089e34330d              # double 0.99634199999999994
	.quad	0x3fe9f4927913e814              # double 0.81110499999999996
	.quad	0x3fc3badc0980b242              # double 0.15414
	.quad	0x3fc33b107746887b              # double 0.15024000000000001
	.quad	0x3f91b71758e21965              # double 0.017299999999999999
	.quad	0x3fef2745bf26f1dc              # double 0.97354399999999996
	.quad	0x3fc38d8a979e16d7              # double 0.152757
	.quad	0x3fd69b499d0203e6              # double 0.35322799999999999
	.quad	0x3fe9bab649d388a9              # double 0.80404200000000003
	.quad	0x3fe3ccd530489d28              # double 0.61875400000000003
	.quad	0x3fed93f8db489093              # double 0.92431300000000005
	.quad	0x3fcb3d188f42fe82              # double 0.21280199999999999
	.quad	0x3fef294ff0025bfb              # double 0.97379300000000001
	.quad	0x3fbff37b8d3f1844              # double 0.124809
	.quad	0x3fc509070fbeb9e5              # double 0.16433800000000001
	.quad	0x3fe1f7d0f1f57b42              # double 0.56150100000000003
	.quad	0x3fc83e9ea1405708              # double 0.189411
	.quad	0x3fe0f944241c3efb              # double 0.53042800000000001
	.quad	0x3fc4bd6e8af81627              # double 0.16203100000000001
	.quad	0x3fce6e978d4fdf3b              # double 0.23774999999999999
	.quad	0x3fed54f9c1f85d74              # double 0.91662299999999996
	.quad	0x3fda4dad31fcd24e              # double 0.410991
	.quad	0x3fcad338f7985272              # double 0.20957100000000001
	.quad	0x3fdd85271bcdbbe0              # double 0.461252
	.quad	0x3feff6fd21ff2e49              # double 0.99890000000000001
	.quad	0x3fe1fe7c06e19b91              # double 0.56231500000000001
	.quad	0x3fdb969a0ad8a116              # double 0.43106699999999998
	.quad	0x3fd35b91f70de8f7              # double 0.30246400000000001
	.quad	0x3fd033fc86cebbba              # double 0.25317299999999998
	.quad	0x3fba308787485e3e              # double 0.10230300000000001
	.quad	0x3fa9de8b3b320536              # double 0.050526000000000001
	.quad	0x3fe8b6d22424a277              # double 0.77231700000000003
	.quad	0x3fe1fa0f9096bb99              # double 0.56177500000000002
	.quad	0x3fc2fcdee34fc611              # double 0.148342
	.quad	0x3fd332e7b3d8e001              # double 0.29998200000000003
	.quad	0x3fe29a9b8cb8e087              # double 0.58137300000000003
	.quad	0x3fc5f359ff4fd6d8              # double 0.171489
	.quad	0x3fe6ab606b7aa25e              # double 0.70842000000000005
	.quad	0x3fe505b18548a9bd              # double 0.656945
	.quad	0x3fd2d61b2a27f1b7              # double 0.29431800000000002
	.quad	0x3fb4163779e9d0ea              # double 0.078464000000000005
	.quad	0x3feb8448cf7caa76              # double 0.85989800000000005
	.quad	0x3fd96c8b43958106              # double 0.39724999999999999
	.quad	0x3fd154866a11ec92              # double 0.27078400000000002
	.quad	0x3fe83220791c4b90              # double 0.75611899999999999
	.quad	0x3fe72b51bd61f5be              # double 0.72403799999999996
	.quad	0x3fd25360d0247022              # double 0.28633900000000001
	.quad	0x3fe0de8709741d08              # double 0.52716399999999997
	.quad	0x3fbdf7403dddb121              # double 0.11705400000000001
	.quad	0x3fd2e90364388ebd              # double 0.29547200000000001
	.quad	0x3fa7d4bf0995aaf8              # double 0.046545000000000003
	.quad	0x3fd0621fafc8b008              # double 0.25598900000000002
	.quad	0x3fe1ff1950331e3a              # double 0.56238999999999995
	.quad	0x3fc0842fa5093965              # double 0.12903400000000001
	.quad	0x3fe89731098d477c              # double 0.76845600000000002
	.quad	0x3fc00d887ebf22c0              # double 0.125413
	.quad	0x3fecfcaa7589efd8              # double 0.90584299999999995
	.quad	0x3fd9e6149c6f36f0              # double 0.40466800000000003
	.quad	0x3fc3cffeb074a772              # double 0.15478500000000001
	.quad	0x3fda4fc1df3300de              # double 0.41111799999999998
	.quad	0x3fdade8b3b320536              # double 0.41983300000000001
	.quad	0x3fcc09b30728e92d              # double 0.21904599999999999
	.quad	0x3fcb28283d35eb74              # double 0.21216299999999999
	.quad	0x3fe976ab5807fed2              # double 0.795736
	.quad	0x3fed47fdc5931ca8              # double 0.91503800000000002
	.quad	0x3fe8a467be553ac5              # double 0.770069
	.quad	0x3fe18eef1bac2df1              # double 0.54869800000000002
	.quad	0x3facd9e83e425aee              # double 0.056349999999999997
	.quad	0x3fcdf98b71b8aa00              # double 0.234178
	.quad	0x3fd117a02fb5d031              # double 0.267067
	.quad	0x3fe81e57d9dba909              # double 0.75370400000000004
	.quad	0x3fc1f6f4be835dee              # double 0.140349
	.quad	0x3fe873eab367a0f9              # double 0.76415
	.quad	0x3fe5ea2d2fe3f35a              # double 0.684836
	.quad	0x3fec14c016052503              # double 0.87753300000000001
	.quad	0x3fec2e2da554b8bf              # double 0.880637
	.quad	0x3fe0843a2163fdd6              # double 0.51614099999999996
	.quad	0x3fc1f36ac647778e              # double 0.140241
	.quad	0x3feafb8d3f1843c4              # double 0.84320700000000003
	.quad	0x3fda6544fe36d224              # double 0.41243099999999999
	.quad	0x3fe85ca6ca03c4b1              # double 0.76131000000000004
	.quad	0x3feba426bb55ac04              # double 0.863788
	.quad	0x3f96822ff08893b8              # double 0.021981000000000001
	.quad	0x3fe485cee17a02fb              # double 0.64133399999999996
	.quad	0x3fe065dbfceb7889              # double 0.51243399999999995
	.quad	0x3fd3aff6d330941d              # double 0.30761500000000003
	.quad	0x3fdd3c89f40a2878              # double 0.45682
	.quad	0x3fe65ce9e5e24788              # double 0.69884199999999996
	.quad	0x3fe154801f75104d              # double 0.54156499999999996
	.quad	0x3fe68561d4306e5d              # double 0.70378200000000002
	.quad	0x3fe9229c779a6b51              # double 0.78547500000000003
	.quad	0x3fe1321e603d5779              # double 0.53736799999999996
	.quad	0x3fc2d0bb6ed67770              # double 0.14699499999999999
	.quad	0x3fd46e696a26e547              # double 0.31923899999999999
	.quad	0x3fc1c4199fe43676              # double 0.138797
	.quad	0x3feb63e4abe6a338              # double 0.85594400000000004
	.quad	0x3fdb3d859c8c9321              # double 0.42563000000000001
	.quad	0x3fe545a5fc7e6b40              # double 0.66475200000000001
	.quad	0x3fcdb951c5c5718f              # double 0.23221800000000001
	.quad	0x3fe102235b4edb2f              # double 0.53151099999999996
	.quad	0x3fe1884c6a3bddfd              # double 0.54788800000000004
	.quad	0x3fd6a08398a65493              # double 0.353547
	.quad	0x3fa85fd04a2fcefb              # double 0.047606000000000002
	.quad	0x3fc6fe9b7bf1e8e6              # double 0.179645
	.quad	0x3fe282773e24febd              # double 0.578426
	.quad	0x3fd219ac79702e66              # double 0.28281699999999999
	.quad	0x3fc811dbca9691a7              # double 0.18804499999999999
	.quad	0x3fa2f8df7a4e7ab7              # double 0.037054999999999998
	.quad	0x3fbae43aa79bbadc              # double 0.105045
	.quad	0x3fed2d0a24463066              # double 0.911748
	.quad	0x3fe9e3cd9a52263e              # double 0.80905800000000005
	.quad	0x3fb04b1ab0856e69              # double 0.063645999999999994
	.quad	0x3fedb00ffda4052d              # double 0.92774199999999996
	.quad	0x3fd7b44e50c5eb31              # double 0.37037999999999999
	.quad	0x3fece88377186552              # double 0.90338300000000005
	.quad	0x3fec90e8858ff759              # double 0.89268899999999995
	.quad	0x3fd3d933e35c5b4b              # double 0.31013200000000002
	.quad	0x3f7102bc72e275ab              # double 0.0041529999999999996
	.quad	0x3fdb54f7a919695e              # double 0.42706100000000002
	.quad	0x3fe6246173b85e81              # double 0.69194100000000003
	.quad	0x3fed092684cf073a              # double 0.90736700000000003
	.quad	0x3fe79a52263d816b              # double 0.73758800000000002
	.quad	0x3fea28f7db6e5040              # double 0.81750100000000003
	.quad	0x3fe92604e1e71045              # double 0.78589100000000001
	.quad	0x3faf850df15a4acf              # double 0.061561999999999999
	.quad	0x3fc7bcfd4bf0995b              # double 0.18545500000000001
	.quad	0x3fedec3547e06962              # double 0.93508400000000003
	.quad	0x3febec460ed80a18              # double 0.87259200000000003
	.quad	0x3fb647a9e2bcf91a              # double 0.087030999999999997
	.quad	0x3fc4a012599ed7c7              # double 0.161135
	.quad	0x3fe5e820e6299525              # double 0.68458600000000003
	.quad	0x3fea4628027d88c2              # double 0.82106400000000002
	.quad	0x3fe5612620253975              # double 0.66810899999999995
	.quad	0x3fee06db50f40e5a              # double 0.93833699999999998
	.quad	0x3fd7bc2b94d94079              # double 0.37086000000000002
	.quad	0x3fdf4bc27631b585              # double 0.48899900000000002
	.quad	0x3fbf2bfdb4cc2507              # double 0.121765
	.quad	0x3fe510e0221426fe              # double 0.65830999999999995
	.quad	0x3fb36f08cc575c07              # double 0.075912999999999994
	.quad	0x3fe6f47304039abf              # double 0.71733999999999998
	.quad	0x3f823fee2c98e53f              # double 0.0089110000000000005
	.quad	0x3fe7abcb5fe542e5              # double 0.73972099999999996
	.quad	0x3f93e20ccff21b3b              # double 0.019417
	.quad	0x3fee51fe64f54d1f              # double 0.94750900000000005
	.quad	0x3fdae236c15d2d02              # double 0.42005700000000001
	.quad	0x3fe6243dccea28fe              # double 0.69192399999999998
	.quad	0x3fd448cf7caa758a              # double 0.316944
	.quad	0x3fc2047d3d4280ae              # double 0.140762
	.quad	0x3fd1d09e12a51e32              # double 0.27835799999999999
	.quad	0x3fd9f3a9b0681238              # double 0.405497
	.quad	0x3feb2ec0724b76f7              # double 0.84945700000000002
	.quad	0x3fe882b1f687b13a              # double 0.76595400000000002
	.quad	0x3fe013db7f173754              # double 0.50242399999999998
	.quad	0x3fe3e6299524bfd3              # double 0.62184600000000001
	.quad	0x3fe158eeae9ee45c              # double 0.54210599999999998
	.quad	0x3fedbe9c886162f1              # double 0.92951799999999996
	.quad	0x3fec84ccee5abc0e              # double 0.89121099999999998
	.quad	0x3fd53da2f8bdec5f              # double 0.33188699999999999
	.quad	0x3fe6c0b5675579af              # double 0.71102399999999999
	.quad	0x3fe5571f36262cba              # double 0.66688499999999995
	.quad	0x3fe0f89c5e6ff7e0              # double 0.53034800000000004
	.quad	0x3fdbd551d68c692f              # double 0.43489499999999998
	.quad	0x3fb218372e6a7696              # double 0.070681999999999995
	.quad	0x3f825a250f840182              # double 0.0089610000000000002
	.quad	0x3fdbf22c01e68a0d              # double 0.43665599999999999
	.quad	0x3fe1b161a1db877b              # double 0.55290300000000003
	.quad	0x3fe2efda836eb4ea              # double 0.59177900000000005
	.quad	0x3fd8818c5c9a34ca              # double 0.382907
	.quad	0x3fbd5d4e8fb00bcc              # double 0.114705
	.quad	0x3fe298dcdb37c99b              # double 0.58116000000000001
	.quad	0x3fc4f69ca9ef5233              # double 0.163776
	.quad	0x3fa39f559b3d07c8              # double 0.038324999999999998
	.quad	0x3fe5718c9fb6134d              # double 0.67011100000000001
	.quad	0x3fee402afdda8bd2              # double 0.94533299999999998
	.quad	0x3fdabcd78c436fc1              # double 0.41777599999999998
	.quad	0x3fe15a76d97b30f9              # double 0.54229300000000003
	.quad	0x3fe984c8bc9cd3e1              # double 0.79745900000000003
	.quad	0x3fe38c564f97edc8              # double 0.61088100000000001
	.quad	0x3fde8769ec2ce465              # double 0.47701500000000002
	.quad	0x3fd0cc89b0ee49f5              # double 0.262484
	.quad	0x3fec2c083126e979              # double 0.88037500000000002
	.quad	0x3fc60a4a05dd8f93              # double 0.17218900000000001
	.quad	0x3fb904d551d68c69              # double 0.097729999999999997
	.quad	0x3fe8bf5d78811b1e              # double 0.77336000000000005
	.quad	0x3fd2796bfca85cab              # double 0.288661
	.quad	0x3febe36d22424a27              # double 0.87151199999999995
	.quad	0x3fd3f9873ffac1d3              # double 0.31210500000000002
	.quad	0x3fb1deefe4ffc979              # double 0.069807999999999995
	.quad	0x3fcd9ba1b1960fa1              # double 0.23131199999999999
	.quad	0x3fd6292c49342678              # double 0.34626299999999999
	.quad	0x3fe527c5ac471b48              # double 0.66110500000000005
	.quad	0x3feb17bd8be7296f              # double 0.84664799999999996
	.quad	0x3fe523033a4723ab              # double 0.660524
	.quad	0x3fd2e37de939eadd              # double 0.29513499999999998
	.quad	0x3fdaa8bd230b9dc3              # double 0.416549
	.quad	0x3fe1abbcb1cc9646              # double 0.55221399999999998
	.quad	0x3fed262888b545c8              # double 0.91090800000000005
	.quad	0x3fd37f77af64063a              # double 0.30465500000000001
	.quad	0x3fe67e64f54d1e97              # double 0.70292900000000003
	.quad	0x3fd384cad57bc7f7              # double 0.30497999999999997
	.quad	0x3fea93250b52439a              # double 0.83046200000000003
	.quad	0x3fdd03afb7e90ff9              # double 0.45334999999999998
	.quad	0x3fe2a4bba12b5e53              # double 0.58260900000000004
	.quad	0x3fc771c970f7b9e0              # double 0.18315999999999999
	.quad	0x3fef6277c45cbbc3              # double 0.98077000000000003
	.quad	0x3fdc5ffe6d58c8ef              # double 0.443359
	.quad	0x3fe4dbd944aa53fc              # double 0.651837
	.quad	0x3fd45f0f5a1016ce              # double 0.31830199999999997
	.quad	0x3fe26cbb7f9d6f11              # double 0.57577299999999998
	.quad	0x3fee1fe43675ddd3              # double 0.94139300000000004
	.quad	0x3f8611ba3ca7503c              # double 0.010776000000000001
	.quad	0x3fdbafd976ff3ade              # double 0.43260799999999999
	.quad	0x3fe74013ec460ed8              # double 0.726572
	.quad	0x3fd4a1e81cb46bad              # double 0.322382
	.quad	0x3fb45154866a11ed              # double 0.079366000000000006
	.quad	0x3fe275c4a83b1d0d              # double 0.57687600000000006
	.quad	0x3fe49450efdc9c4e              # double 0.64310500000000004
	.quad	0x3fe6cdd93c46d82c              # double 0.71262800000000004
	.quad	0x3fdb7dae81882adc              # double 0.42954599999999998
	.quad	0x3fe4bd9018e75793              # double 0.64814000000000005
	.quad	0x3feb09528f190d17              # double 0.84488799999999997
	.quad	0x3fde8eb0318b9347              # double 0.47745900000000002
	.quad	0x3fee502cd39da166              # double 0.94728699999999999
	.quad	0x3feae494d50ebaae              # double 0.84040300000000001
	.quad	0x3fec9c0a8d21bc12              # double 0.89404799999999995
	.quad	0x3fe107314ca925ff              # double 0.53212800000000005
	.quad	0x3fe5b02b40f66a55              # double 0.677755
	.quad	0x3fe1423fab10ba62              # double 0.53933699999999996
	.quad	0x3fe125fe974a3401              # double 0.53588800000000003
	.quad	0x3fb262aa19439de5              # double 0.071818000000000007
	.quad	0x3fbb09e98dcdb37d              # double 0.10562000000000001
	.quad	0x3fdd67c6b8b69553              # double 0.45945900000000001
	.quad	0x3fe29db22d0e5604              # double 0.58174999999999999
	.quad	0x3fe96876e1deacc9              # double 0.79400199999999999
	.quad	0x3f9b78cc9a77e5eb              # double 0.026828000000000001
	.quad	0x3fe431422ccb3a26              # double 0.63101300000000005
	.quad	0x3fa4bec679cc74b8              # double 0.040517999999999998
	.quad	0x3fb36da87a072d1b              # double 0.075892000000000001
	.quad	0x3fd09acffa7eb6bf              # double 0.25944899999999999
	.quad	0x3fb8101f31f46ed2              # double 0.093995999999999996
	.quad	0x3fc7adc0980b2420              # double 0.18498999999999999
	.quad	0x3fd8294573a79789              # double 0.37751899999999999
	.quad	0x3fee9c0229a5ebb7              # double 0.95654399999999995
	.quad	0x3feda4e9c4545847              # double 0.92638100000000001
	.quad	0x3fd6105186db50f4              # double 0.344746
	.quad	0x3fc051e321a2e7f7              # double 0.127499
	.quad	0x3fd2841248d7e026              # double 0.28931099999999998
	.quad	0x3fe6e7839cd8127b              # double 0.71576099999999998
	.quad	0x3fd9c0980b242071              # double 0.40238000000000002
	.quad	0x3fe95fe75bc44bf5              # double 0.79295700000000002
	.quad	0x3fe0ae07e5a78f26              # double 0.52124400000000004
	.quad	0x3fe9736ac647778e              # double 0.79533900000000002
	.quad	0x3fe8dd7a99fa11a9              # double 0.77703599999999995
	.quad	0x3fe818e53eb399f6              # double 0.75303900000000001
	.quad	0x3fe1845fe1112770              # double 0.54740900000000003
	.quad	0x3fe1af965b20b806              # double 0.55268399999999995
	.quad	0x3fc6b838c111ada7              # double 0.17749699999999999
	.quad	0x3fb21847f562174c              # double 0.070682999999999996
	.quad	0x3fefdf3300de4c51              # double 0.99599599999999999
	.quad	0x3fe22a044ae85b9f              # double 0.56762900000000005
	.quad	0x3fece2d1f1cfbb95              # double 0.90268800000000005
	.quad	0x3fc39c62a1b5c7ce              # double 0.15321000000000001
	.quad	0x3fc56af89c5e6ff8              # double 0.167327
	.quad	0x3fefbde1e2de8709              # double 0.99192899999999994
	.quad	0x3fd044cbe1eb4203              # double 0.25419900000000001
	.quad	0x3fe65f06f6944674              # double 0.69910000000000005
	.quad	0x3fe986f8ad256799              # double 0.79772600000000005
	.quad	0x3fc5d00713f077cd              # double 0.17041100000000001
	.quad	0x3fe2d0efdc9c4da9              # double 0.588005
	.quad	0x3fe5ef99806f2629              # double 0.68549800000000005
	.quad	0x3fe0acbc8c0ce91d              # double 0.52108600000000005
	.quad	0x3fe90ab4fa48301a              # double 0.78255699999999995
	.quad	0x3f8244a6223e186a              # double 0.0089200000000000008
	.quad	0x3fe096e158750c1c              # double 0.51841800000000005
	.quad	0x3fb7e846a5d6bebe              # double 0.093387999999999998
	.quad	0x3fee8bc382a12f90              # double 0.95456099999999999
	.quad	0x3fd26965f5275eea              # double 0.28768300000000002
	.quad	0x3fd35564b662fdfc              # double 0.30208699999999999
	.quad	0x3fd28fb43d89ce4a              # double 0.29002099999999997
	.quad	0x3feac677b395c422              # double 0.836727
	.quad	0x3fc1d8e0008637bd              # double 0.139431
	.quad	0x3fea68f4b61fe21e              # double 0.82531200000000005
	.quad	0x3fa72b020c49ba5e              # double 0.045249999999999999
	.quad	0x3fe2aa27f1b69121              # double 0.58327099999999998
	.quad	0x3fe8349385836220              # double 0.75641800000000003
	.quad	0x3fe8633269df97ab              # double 0.76210900000000004
	.quad	0x3fee70307f23cc8e              # double 0.95119500000000001
	.quad	0x3feb4c2f837b4a23              # double 0.85304999999999997
	.quad	0x3fdfebaf102363b2              # double 0.49875999999999998
	.quad	0x3fde0f66a5508701              # double 0.46969
	.quad	0x3febebfca85caafc              # double 0.87255700000000002
	.quad	0x3fe8372606fac604              # double 0.75673199999999996
	.quad	0x3fdf66cf41f212d7              # double 0.49064999999999998
	.quad	0x3fe4db7cfe586013              # double 0.65179299999999996
	.quad	0x3fd008398a654930              # double 0.250502
	.quad	0x3fe89ae924f227d0              # double 0.76890999999999998
	.quad	0x3fdd3b927d45a5fc              # double 0.45676099999999997
	.quad	0x3fecec1a048e043a              # double 0.90382099999999999
	.quad	0x3fba4e379b77c02b              # double 0.102756
	.quad	0x3fe5b82a12f90108              # double 0.67873099999999997
	.quad	0x3face379b77c02b0              # double 0.056423000000000001
	.quad	0x3fb703e20ccff21b              # double 0.089902999999999997
	.quad	0x3fd812b1b36bd2b7              # double 0.376141
	.quad	0x3fd3ea24cc6822ff              # double 0.311166
	.quad	0x3fe246b26bf8769f              # double 0.57113000000000003
	.quad	0x3fed36d00b45ae60              # double 0.912941
	.quad	0x3fe3c98a222d5172              # double 0.61835200000000001
	.quad	0x3fe40a137f38c543              # double 0.62622999999999995
	.quad	0x3fe646bce8533b10              # double 0.69613499999999995
	.quad	0x3fc504ee7c49fd7a              # double 0.164213
	.quad	0x3fe852674080f990              # double 0.76005900000000004
	.quad	0x3febeee30caa326e              # double 0.87291099999999999
	.quad	0x3fdc612839042d8c              # double 0.44342999999999999
	.quad	0x3fea4122749f0e4e              # double 0.82045100000000004
	.quad	0x3fd5adc4c9c90c4e              # double 0.338731
	.quad	0x3fe7c31593e5fb72              # double 0.742564
	.quad	0x3feca077036c9c0b              # double 0.89458800000000005
	.quad	0x3fe998cc144028e5              # double 0.799902
	.quad	0x3feb2b14ec204f2b              # double 0.84900900000000001
	.quad	0x3fd80c4dec1c1d6d              # double 0.375751
	.quad	0x3fea509e12a51e32              # double 0.82234099999999999
	.quad	0x3fcfa4484944ed70              # double 0.247201
	.quad	0x3fe90bbf50e34763              # double 0.78268400000000005
	.quad	0x3fc6e1ac57e23f25              # double 0.178762
	.quad	0x3fc6bb7739f340d5              # double 0.177596
	.quad	0x3fc1ae4f3343fa2b              # double 0.138132
	.quad	0x3fecc0852b4d8ba4              # double 0.89850099999999999
	.quad	0x3fd70e736049ecb3              # double 0.36025699999999999
	.quad	0x3fb27c8d1958969a              # double 0.072212999999999999
	.quad	0x3fcd50f40e5a35d6              # double 0.22903299999999999
	.quad	0x3fe09d53cddd6e05              # double 0.51920500000000003
	.quad	0x3fe7ae4d1a650614              # double 0.74002699999999999
	.quad	0x3fdd154434e3369c              # double 0.45442300000000002
	.quad	0x3fe8073365881a15              # double 0.75087899999999996
	.quad	0x3fdc2f1ed17c5ef6              # double 0.44037599999999999
	.quad	0x3fcae379b77c02b0              # double 0.210067
	.quad	0x3fbaa0cae642bf98              # double 0.104016
	.quad	0x3fd017ebaf102364              # double 0.25146000000000002
	.quad	0x3fe4ccec41dd1a22              # double 0.65001500000000001
	.quad	0x3fd1528f190d1740              # double 0.27066400000000002
	.quad	0x3feba24031487768              # double 0.86355599999999999
	.quad	0x3fd5ceee0f3cb3e5              # double 0.34075499999999997
	.quad	0x3febe4b2314013ec              # double 0.87166699999999996
	.quad	0x3fef4606748e4756              # double 0.977298
	.quad	0x3fe6c1c3efae7925              # double 0.71115300000000004
	.quad	0x3fe6e22a2c237479              # double 0.71510799999999997
	.quad	0x3fe0dc2f405f6ba0              # double 0.52687799999999996
	.quad	0x3fe08e64b2314014              # double 0.51738200000000001
	.quad	0x3fdf879c4113c686              # double 0.49265199999999998
	.quad	0x3feefedc7ef177a7              # double 0.96861099999999999
	.quad	0x3fc9b3c81908e582              # double 0.20079900000000001
	.quad	0x3feb5e41d4b6a61a              # double 0.85525600000000002
	.quad	0x3fe42f5558212945              # double 0.63077799999999995
	.quad	0x3fd556861e92923e              # double 0.33340599999999998
	.quad	0x3fe1c4113c68661b              # double 0.55518400000000001
	.quad	0x3fea8f6ad70e6f2f              # double 0.83000700000000005
	.quad	0x3fb162e09fe86834              # double 0.067915000000000003
	.quad	0x3fe6f9aae6c8f755              # double 0.71797699999999998
	.quad	0x3fdd97d49d7ba66a              # double 0.46239200000000003
	.quad	0x3feac679cc74b839              # double 0.83672800000000003
	.quad	0x3fe5a0a958537e2c              # double 0.67586199999999996
	.quad	0x3fae6f2e8c0485a1              # double 0.059442000000000002
	.quad	0x3fcd6d7e889c1b54              # double 0.229904
	.quad	0x3fe6aee2003ab863              # double 0.70884800000000003
	.quad	0x3feb2c81d3aa36a0              # double 0.84918300000000002
	.quad	0x3fec77b9e060fe48              # double 0.88961500000000004
	.quad	0x3feb9b30728e92d5              # double 0.86269399999999996
	.quad	0x3f4975f2cb641701              # double 7.7700000000000002E-4
	.quad	0x3fb9f2778140dd40              # double 0.101356
	.quad	0x3fd74d37c1376d55              # double 0.36408800000000002
	.quad	0x3fddf81a5870da5e              # double 0.46826800000000002
	.quad	0x3fefb93469941850              # double 0.99135799999999996
	.quad	0x3fe2fdd65a14488c              # double 0.59348599999999996
	.quad	0x3fe8dccc89b0ee4a              # double 0.776953
	.quad	0x3fcdac57e23f24d9              # double 0.231822
	.quad	0x3fee882278d0cc36              # double 0.95411800000000002
	.quad	0x3fd82795703f2d3c              # double 0.37741599999999997
	.quad	0x3fec8ce4ead0c3d2              # double 0.89219899999999996
	.quad	0x3fd6d099e0e73605              # double 0.35648200000000002
	.quad	0x3fec5e17e34b9453              # double 0.886486
	.quad	0x3fc127674d163348              # double 0.134015
	.quad	0x3fe61ac14c660a20              # double 0.69076599999999999
	.quad	0x3fecc75a31a4bdba              # double 0.899335
	.quad	0x3fc4ec5b078d92fb              # double 0.163463
	.quad	0x3feaca3c64345cff              # double 0.83718700000000001
	.quad	0x3fd6513b5bf6a0dc              # double 0.34870800000000002
	.quad	0x3fee19a415f45e0b              # double 0.94062999999999997
	.quad	0x3fd036501e2584f5              # double 0.25331500000000001
	.quad	0x3fe5d7cd466f501a              # double 0.68259300000000001
	.quad	0x3fe59578a2a90cd4              # double 0.67449599999999998
	.quad	0x3fdf76d549731099              # double 0.49162800000000001
	.quad	0x3fdbcc532a497fa6              # double 0.43434600000000001
	.quad	0x3fa682d7b634dad3              # double 0.043966999999999999
	.quad	0x3feb5c443914f484              # double 0.85501300000000002
	.quad	0x3fbf9830e3cd9a52              # double 0.123416
	.quad	0x3fe0704bc27631b6              # double 0.51370800000000005
	.quad	0x3fdf0ec743201041              # double 0.48527700000000001
	.quad	0x3fa8533b10774688              # double 0.047509999999999997
	.quad	0x3feb8f1d3ed527e5              # double 0.86121999999999999
	.quad	0x3fb2221c8a7a41e5              # double 0.070832999999999993
	.quad	0x3fea89aed56b0100              # double 0.82930700000000002
	.quad	0x3fcb50763a190082              # double 0.213393
	.quad	0x3fe43790fb65668c              # double 0.63178299999999998
	.quad	0x3fbbda2f8bdec5f4              # double 0.10879800000000001
	.quad	0x3fedb4eb9a176ddb              # double 0.92833500000000002
	.quad	0x3fe0a0a958537e2c              # double 0.51961199999999996
	.quad	0x3fddba237cdcca71              # double 0.46448600000000001
	.quad	0x3fe066f71a7e3088              # double 0.51256900000000005
	.quad	0x3fd8a76d97b30f8c              # double 0.38521899999999998
	.quad	0x3fec6a619da9c993              # double 0.88798600000000005
	.quad	0x3fe1159a30984e40              # double 0.533887
	.quad	0x3fdd9f383f0bae8a              # double 0.462843
	.quad	0x3fe8fcf1c3265ade              # double 0.78087700000000004
	.quad	0x3fe43b7521144cbe              # double 0.63225799999999999
	.quad	0x3fc03f811f4f50a0              # double 0.126938
	.quad	0x3fe72a5a469d7343              # double 0.72392000000000001
	.quad	0x3fea7601797cc3a0              # double 0.826905
	.quad	0x3fd0ecf206423960              # double 0.26446199999999997
	.quad	0x3fb91f926c7eae5c              # double 0.098138000000000003
	.quad	0x3fdec1a47a9e2bd0              # double 0.48056900000000002
	.quad	0x3fd4807357e670e3              # double 0.32034000000000001
	.quad	0x3feefbbb62413db8              # double 0.968229
	.quad	0x3fa6366d7a56de33              # double 0.043383999999999999
	.quad	0x3fa3677f6b1a2a4e              # double 0.037899000000000002
	.quad	0x3fe6bc18b502abac              # double 0.71046100000000001
	.quad	0x3fafe8ab4fa48302              # double 0.062322000000000002
	.quad	0x3fe3db4cc2507208              # double 0.62051999999999996
	.quad	0x3fdf8e1932d6ece1              # double 0.49304799999999999
	.quad	0x3fc12990f301eabc              # double 0.13408100000000001
	.quad	0x3fe80c4dec1c1d6d              # double 0.751502
	.quad	0x3fef0eae18ac9f30              # double 0.97054200000000002
	.quad	0x3feb9244a6223e18              # double 0.86160499999999995
	.quad	0x3fd6614df8b15726              # double 0.34968900000000003
	.quad	0x3fd40c3d25247cb7              # double 0.313247
	.quad	0x3fdffe154434e337              # double 0.49988300000000002
	.quad	0x3fdd95d0b73d188f              # double 0.46226899999999999
	.quad	0x3fe6477dd872f33d              # double 0.69622700000000004
	.quad	0x3fedef3f52fc2657              # double 0.93545500000000004
	.quad	0x3fe7662131a8ef78              # double 0.73121700000000001
	.quad	0x3fe90bac710cb296              # double 0.78267500000000001
	.quad	0x3fddc73abc947065              # double 0.465285
	.quad	0x3fe6f5e2046c764b              # double 0.71751500000000001
	.quad	0x3fdfd3d4280ae105              # double 0.49730400000000002
	.quad	0x3fd4ab430f49491f              # double 0.32295299999999999
	.quad	0x3fe0b7a1c25d0742              # double 0.52241599999999999
	.quad	0x3fea0f16f4384ba1              # double 0.81434200000000001
	.quad	0x3fe8bf961804d984              # double 0.77338700000000004
	.quad	0x3fe381e68a0d349c              # double 0.60960700000000001
	.quad	0x3fe85718eb895076              # double 0.76063199999999997
	.quad	0x3fd0d2391d57ff9b              # double 0.26283099999999998
	.quad	0x3fe11654d61b2a28              # double 0.53397600000000001
	.quad	0x3fee387df5cf2496              # double 0.94439600000000001
	.quad	0x3fe53024f6598e11              # double 0.66212700000000002
	.quad	0x3fd3d798d8a979e1              # double 0.31003399999999998
	.quad	0x3fe9080f98fa3769              # double 0.78223399999999998
	.quad	0x3fd7e3476295208e              # double 0.373247
	.quad	0x3fd55a2d72ffd1dd              # double 0.33362900000000001
	.quad	0x3fe8b7e90ff97247              # double 0.77244999999999997
	.quad	0x3fbc63497b7414a5              # double 0.11089
	.quad	0x3fed7cc1871e6cd3              # double 0.92147900000000005
	.quad	0x3f94020817fc7608              # double 0.019539000000000001
	.quad	0x3fd4f97aaac1094a              # double 0.32772699999999999
	.quad	0x3fc7e5321e603d57              # double 0.18668199999999999
	.quad	0x3fee7123c42a66dc              # double 0.95131100000000001
	.quad	0x3fefdf5f0b28522f              # double 0.99601700000000004
	.quad	0x3fbacf850df15a4b              # double 0.104729
	.quad	0x3feb6653868fd19a              # double 0.85624100000000003
	.quad	0x3fe908f217093101              # double 0.78234199999999998
	.quad	0x3fd7ca7935760392              # double 0.37173299999999998
	.quad	0x3faa5edd052934ad              # double 0.051505000000000002
	.quad	0x3fe5ea2f48c2e771              # double 0.68483700000000003
	.quad	0x3fc4e7ee9142b303              # double 0.163328
	.quad	0x3fd9e56cd6c2efd4              # double 0.40462799999999999
	.quad	0x3fe0cd44567125dd              # double 0.525057
	.quad	0x3fee17d6b65a9a80              # double 0.94040999999999997
	.quad	0x3fd253e2d6238da4              # double 0.28637000000000001
	.quad	0x3fcf36933a0407cc              # double 0.24385299999999999
	.quad	0x3fe6b224aada33be              # double 0.70924600000000004
	.quad	0x3fe58c4588a04d12              # double 0.673373
	.quad	0x3fee2b5c39bcba30              # double 0.94279299999999999
	.quad	0x3fd3325918a009f6              # double 0.29994799999999999
	.quad	0x3fe35ff3f0fe047d              # double 0.60546299999999997
	.quad	0x3fe19ec4e7253da7              # double 0.55063099999999998
	.quad	0x3fe5180f55de58e6              # double 0.65918699999999997
	.quad	0x3fec92fd32c625ea              # double 0.89294300000000004
	.quad	0x3fc850507a6bd6e9              # double 0.18995100000000001
	.quad	0x3fe76f4384ba0e84              # double 0.73233199999999998
	.quad	0x3fd0b3c3e74afd54              # double 0.26097199999999998
	.quad	0x3fed1db445ed4a1b              # double 0.90987600000000002
	.quad	0x3fb59cbee807bbb6              # double 0.084422999999999998
	.quad	0x3feee7a0f9096bba              # double 0.96577500000000005
	.quad	0x3fe1935fc3b4f616              # double 0.54923999999999995
	.quad	0x3f98605681ecd4aa              # double 0.023805
	.quad	0x3fea072f33ca31e8              # double 0.81337700000000002
	.quad	0x3fd10eb24a6a875d              # double 0.26652199999999998
	.quad	0x3fe666c4c5974e66              # double 0.70004500000000003
	.quad	0x3fea1a75cd0bb6ed              # double 0.81572999999999996
	.quad	0x3fd44a558ea7ce10              # double 0.31703700000000001
	.quad	0x3fe943e100607810              # double 0.78953600000000002
	.quad	0x3fe8246173b85e81              # double 0.75444100000000003
	.quad	0x3fbfaa9b499d0204              # double 0.123697
	.quad	0x3fd2ece5710880d8              # double 0.295709
	.quad	0x3fe26a1c68ec52a4              # double 0.57545299999999999
	.quad	0x3fec5054ac29bf16              # double 0.88480599999999998
	.quad	0x3fbaeefa1e3eaf68              # double 0.105209
	.quad	0x3fe2c70435efa616              # double 0.58679400000000004
	.quad	0x3fc2bfa0945f9df5              # double 0.14647299999999999
	.quad	0x3fdad188f42fe825              # double 0.41903899999999999
	.quad	0x3fb515ce9e5e2479              # double 0.082364000000000007
	.quad	0x3fde37b07075b3e1              # double 0.47214899999999999
	.quad	0x3fd399e518f3eccc              # double 0.30626799999999998
	.quad	0x3fe82d256798958e              # double 0.75551100000000004
	.quad	0x3fd8e1eb4202d9cf              # double 0.388789
	.quad	0x3fd45ae1cde5d181              # double 0.31804700000000002
	.quad	0x3feadf78359bc340              # double 0.83977900000000005
	.quad	0x3fe5aa38b8ae31d7              # double 0.67702899999999999
	.quad	0x3fe6cc100e6afcce              # double 0.71240999999999999
	.quad	0x3fdac4a83b1d0c80              # double 0.41825299999999999
	.quad	0x3fc79a49c2c1b110              # double 0.184396
	.quad	0x3fe1802c0a4a05de              # double 0.54689600000000005
	.quad	0x3fd57a4a48f96e16              # double 0.33558900000000003
	.quad	0x3fdc7c6fbd273d5c              # double 0.44509500000000002
	.quad	0x3fc1d73c925785f9              # double 0.139381
	.quad	0x3fe2642bf9830e3d              # double 0.57472800000000002
	.quad	0x3fe995ebfa8f7db7              # double 0.79955100000000001
	.quad	0x3fd8c9eecbfb15b5              # double 0.38732499999999997
	.quad	0x3fd7e1c58255b036              # double 0.37315500000000001
	.quad	0x3fe99960fa15db34              # double 0.79997300000000004
	.quad	0x3fedcecc814d727a              # double 0.93149400000000004
	.quad	0x3fefa97e132b55ef              # double 0.98943999999999998
	.quad	0x3fe058f0c77dd873              # double 0.51085700000000001
	.quad	0x3fe8f646ae3a3a8e              # double 0.78006299999999995
	.quad	0x3fd0d19157abb880              # double 0.262791
	.quad	0x3f8db76b3bb83cf3              # double 0.01451
	.quad	0x3fd3e57d9dba908a              # double 0.31088199999999999
	.quad	0x3fac154c985f06f7              # double 0.054850000000000003
	.quad	0x3fde0eb67c286f8b              # double 0.46964800000000001
	.quad	0x3fe22d3a604e1e71              # double 0.568021
	.quad	0x3fd60ff10ecb74de              # double 0.344723
	.quad	0x3fbaa7bd48cb4aed              # double 0.10412200000000001
	.quad	0x3fd6e0daa0cae643              # double 0.35747400000000001
	.quad	0x3fedf416bdb1a6d7              # double 0.93604600000000004
	.quad	0x3fb14a6eb91b3f21              # double 0.067542000000000005
	.quad	0x3fcfc5154866a11f              # double 0.24820200000000001
	.quad	0x3f85aaf78feef5ed              # double 0.010580000000000001
	.quad	0x3feb718eb8950764              # double 0.85761200000000004
	.quad	0x3feaaca36199780c              # double 0.83357400000000003
	.quad	0x3fea20f6f08cc576              # double 0.81652400000000003
	.quad	0x3fe69b6d43d03969              # double 0.70647300000000002
	.quad	0x3febfc1df3300de5              # double 0.87452600000000003
	.quad	0x3fed36eb4e981388              # double 0.91295400000000004
	.quad	0x3fe3377e1b8ed1bf              # double 0.60052399999999995
	.quad	0x3fb6d080b673c4f4              # double 0.089119000000000004
	.quad	0x3febed5065732160              # double 0.87271900000000002
	.quad	0x3fd392c8c5004fb1              # double 0.30583399999999999
	.quad	0x3fee295e9e1b089a              # double 0.94255
	.quad	0x3fec00389f83be66              # double 0.875027
	.quad	0x3fe0efcdee34fc61              # double 0.52927299999999999
	.quad	0x3fbb3d188f42fe82              # double 0.106401
	.quad	0x3fd61b4bb5e0f7fd              # double 0.345416
	.quad	0x3fd2e542e557de0d              # double 0.29524299999999998
	.quad	0x3fc782a9930be0df              # double 0.183675
	.quad	0x3fe454b6a619da9d              # double 0.63534100000000004
	.quad	0x3fe883126e978d50              # double 0.76600000000000001
	.quad	0x3fe2fcac8e68e3ef              # double 0.59334399999999998
	.quad	0x3fea0288051c9f73              # double 0.812809
	.quad	0x3fc2f284167a95c8              # double 0.14802599999999999
	.quad	0x3fea00ae10492360              # double 0.81258300000000005
	.quad	0x3fbe87d2c7b890d6              # double 0.11926
	.quad	0x3fee31d0c8041030              # double 0.943581
	.quad	0x3fcade43ed959a31              # double 0.20990800000000001
	.quad	0x3fe6f7c243dccea3              # double 0.71774400000000005
	.quad	0x3fc87c9de0503750              # double 0.191303
	.quad	0x3fdfa38759253544              # double 0.49435600000000002
	.quad	0x3fec0b1bbcf4e875              # double 0.87635600000000002
	.quad	0x3fb4a9691a75cd0c              # double 0.080710000000000004
	.quad	0x3fe9af61ed5ae1ce              # double 0.80265900000000001
	.quad	0x3fe15f7a4e7ab756              # double 0.54290499999999997
	.quad	0x3fe7c55c96030c24              # double 0.742842
	.quad	0x3fecb2dd377e1b8f              # double 0.89683400000000002
	.quad	0x3fc5f2b239a38fbd              # double 0.17146900000000001
	.quad	0x3fed713ad5bee3d6              # double 0.920072
	.quad	0x3fee6bb341e14be0              # double 0.95064700000000001
	.quad	0x3fc0029f16b11c6d              # double 0.12508
	.quad	0x3fdd7fae3608d089              # double 0.46091799999999999
	.quad	0x3fe098c3b0c4588a              # double 0.518648
	.quad	0x3fef6f36ef8055fc              # double 0.98232600000000003
	.quad	0x3fc95781c714fce7              # double 0.19798299999999999
	.quad	0x3fe3878b7a1c25d0              # double 0.61029599999999995
	.quad	0x3fe137e6f71a7e31              # double 0.53807400000000005
	.quad	0x3fe8ef1348b22079              # double 0.77918399999999999
	.quad	0x3fe4334a44c7b02d              # double 0.63126099999999996
	.quad	0x3fcb4e22a2c23748              # double 0.21332200000000001
	.quad	0x3fe6d36d655e28aa              # double 0.71330899999999997
	.quad	0x3fef7e1975f2cb64              # double 0.98414299999999999
	.quad	0x3fe7439de481f538              # double 0.72700399999999998
	.quad	0x3fedb964a59c065b              # double 0.92888099999999996
	.quad	0x3fe2e2eb1c432ca5              # double 0.59019999999999995
	.quad	0x3fc7864cb5bb3850              # double 0.183786
	.quad	0x3fe652ef911cf356              # double 0.69762400000000002
	.quad	0x3fed99ae924f227d              # double 0.92501
	.quad	0x3fe4e91212513b5c              # double 0.653451
	.quad	0x3fe1c8f32378ab0d              # double 0.55578000000000005
	.quad	0x3feb4fb549f94856              # double 0.85348000000000002
	.quad	0x3fe95f138bcdfefc              # double 0.792856
	.quad	0x3fee070fbeb9e493              # double 0.93836200000000003
	.quad	0x3f8b0c4588a04d12              # double 0.013207
	.quad	0x3fe611be6e653869              # double 0.689666
	.quad	0x3fe6d5e071c53f3a              # double 0.71360800000000002
	.quad	0x3fe7f6ba0620ab71              # double 0.74886799999999998
	.quad	0x3fdfb324851a8694              # double 0.495309
	.quad	0x3fd3393ee5eedcc2              # double 0.300369
	.quad	0x3fe57778dd616f87              # double 0.67083400000000004
	.quad	0x3fed458eeae9ee46              # double 0.91474100000000003
	.quad	0x3fcdd99029ae4f33              # double 0.23320199999999999
	.quad	0x3f9cc4ac6cdaf4ae              # double 0.028094000000000001
	.quad	0x3fbcc5436b8f9b13              # double 0.112385
	.quad	0x3feb8d887ebf22c0              # double 0.86102699999999999
	.quad	0x3fe1b8a5ce5b4246              # double 0.55379
	.quad	0x3fe2999567dbb16c              # double 0.58124799999999999
	.quad	0x3fe6e2e4d1a65061              # double 0.71519699999999997
	.quad	0x3fe509070fbeb9e5              # double 0.65735200000000005
	.quad	0x3fd59a133c1ce6c1              # double 0.33752900000000002
	.quad	0x3fe975232d2bb235              # double 0.79554899999999995
	.quad	0x3fd00ef566490a35              # double 0.250913
	.quad	0x3fdc0e1b4bb5e0f8              # double 0.438361
	.quad	0x3fe6b78897e99631              # double 0.70990399999999998
	.quad	0x3feeb841248d7e02              # double 0.95999199999999996
	.quad	0x3fb41cb46bacf744              # double 0.078562999999999994
	.quad	0x3fe1873365881a15              # double 0.54775399999999996
	.quad	0x3fb7a52ac753e708              # double 0.092364000000000002
	.quad	0x3fe21f644955b467              # double 0.56633199999999995
	.quad	0x3febf2e6a76965f5              # double 0.87340099999999998
	.quad	0x3fed69185cee17a0              # double 0.91907899999999997
	.quad	0x3fd1a355043e5322              # double 0.27559400000000001
	.quad	0x3fc1b517a46173b8              # double 0.13833899999999999
	.quad	0x3fe2b38f7985271c              # double 0.58441900000000002
	.quad	0x3fbc522ea0fd3b2a              # double 0.11062900000000001
	.quad	0x3fdac8fb86f47b67              # double 0.41851699999999997
	.quad	0x3feb1d6f112fd32c              # double 0.84734299999999995
	.quad	0x3fe951a650614163              # double 0.79121699999999995
	.quad	0x3fe1631b584b1ab1              # double 0.54334800000000005
	.quad	0x3fbae82949a56580              # double 0.105105
	.quad	0x3fc00389f83be660              # double 0.125108
	.quad	0x3fef9ae924f227d0              # double 0.98765999999999998
	.quad	0x3fa79a8cdea033e8              # double 0.046101000000000003
	.quad	0x3fe829a8049667b6              # double 0.75508500000000001
	.quad	0x3fb1ff822bbecaac              # double 0.070305000000000006
	.quad	0x3feb18548a9bcfd5              # double 0.84672000000000003
	.quad	0x3fed5069a4df47fa              # double 0.91606600000000005
	.quad	0x3fb0661ae70c1334              # double 0.064058000000000004
	.quad	0x3fd001083dbc2331              # double 0.25006299999999998
	.quad	0x3fb1e5f30e7ff584              # double 0.069915000000000005
	.quad	0x3fd832c1f42bb667              # double 0.37809799999999999
	.quad	0x3fe4ad666a98244f              # double 0.64616700000000005
	.quad	0x3fdc945f9df548ed              # double 0.44655600000000001
	.quad	0x3febc144028e4fb9              # double 0.86734199999999995
	.quad	0x3fe12ababead4f59              # double 0.536466
	.quad	0x3fca1355475a31a5              # double 0.20371500000000001
	.quad	0x3fd0a1ec4e7253da              # double 0.25988299999999998
	.quad	0x3fd5ea18372e6a77              # double 0.34241300000000002
	.quad	0x3fe7ad6a9c560c7c              # double 0.73991899999999999
	.quad	0x3fdaa0c282c6ef3d              # double 0.41606199999999999
	.quad	0x3fe68a0d349be8ff              # double 0.70435199999999998
	.quad	0x3fe37e86833c6003              # double 0.60919500000000004
	.quad	0x3fea5b59578a2a91              # double 0.82365100000000002
	.quad	0x3fe8345cfede97d0              # double 0.75639199999999995
	.quad	0x3fee9248d7e02646              # double 0.95535700000000001
	.quad	0x3fe7cdf04ddb5526              # double 0.74388900000000002
	.quad	0x3fd99f559b3d07c8              # double 0.40034999999999998
	.quad	0x3fab7e2c55c96031              # double 0.053697000000000002
	.quad	0x3fe13c408d8ec95c              # double 0.538605
	.quad	0x3fd59695d91ab8e9              # double 0.337316
	.quad	0x3fdc9f559b3d07c8              # double 0.44722499999999998
	.quad	0x3fee8ae536501e26              # double 0.95445500000000005
	.quad	0x3f96f6512a94ff00              # double 0.022423999999999999
	.quad	0x3fed10060780fdc1              # double 0.90820599999999996
	.quad	0x3fe0b05faebc408e              # double 0.52153000000000005
	.quad	0x3fe6371758e21965              # double 0.69422499999999998
	.quad	0x3fed0aa433508f65              # double 0.90754900000000005
	.quad	0x3fde934267839cd8              # double 0.477738
	.quad	0x3fe3ca85caafbc1b              # double 0.61847200000000002
	.quad	0x3fc164adff822bbf              # double 0.13588500000000001
	.quad	0x3fe769595feda661              # double 0.73160999999999998
	.quad	0x3fdde0f7fcfc3f81              # double 0.46685599999999999
	.quad	0x3fe41d7dbf487fcc              # double 0.62860000000000005
	.quad	0x3feb0d8a979e16d7              # double 0.84540300000000002
	.quad	0x3fe33cb5fe542e55              # double 0.60116099999999995
	.quad	0x3fe23122b7baecd0              # double 0.56849799999999995
	.quad	0x3fc4032db1e9f278              # double 0.15634700000000001
	.quad	0x3fead1116a8b8f15              # double 0.83802100000000002
	.quad	0x3fe2820e6299524c              # double 0.578376
	.quad	0x3fc19f666234a87e              # double 0.13767699999999999
	.quad	0x3fe2756eac860568              # double 0.57683499999999999
	.quad	0x3feea59c065b63d4              # double 0.95771600000000001
	.quad	0x3feaf77af640639d              # double 0.84270999999999996
	.quad	0x3fd8dbbe0157eed4              # double 0.38841199999999998
	.quad	0x3fda82e44b6e935c              # double 0.41423900000000002
	.quad	0x3feea480e8c8abd6              # double 0.95758100000000002
	.quad	0x3fd19d0635a426bb              # double 0.27520899999999998
	.quad	0x3fe7e0807357e671              # double 0.74615500000000001
	.quad	0x3fda0a73f748a15a              # double 0.40688800000000003
	.quad	0x3fe3829cfdd22856              # double 0.60969399999999996
	.quad	0x3fe19ddc1e7967cb              # double 0.55052000000000001
	.quad	0x3fd7d8409e55c0fd              # double 0.37257400000000002
	.quad	0x3fdf1a2e7f6f4be8              # double 0.48597299999999999
	.quad	0x3fe5220ff540895d              # double 0.660408
	.quad	0x3feaaf7d30ad46f6              # double 0.83392200000000005
	.quad	0x3feb8a65492ff4ba              # double 0.86064399999999996
	.quad	0x3fc455b035bd512f              # double 0.15886500000000001
	.quad	0x3fee60ce0b912dba              # double 0.94931699999999997
	.quad	0x3fe06bc621b7e0ac              # double 0.51315599999999995
	.quad	0x3fe0ae62131a8ef7              # double 0.52128699999999994
	.quad	0x3fed9e646f156191              # double 0.92558499999999999
	.quad	0x3feead42c3c9eecc              # double 0.95865
	.quad	0x3fdc328f9f44d445              # double 0.44058599999999998
	.quad	0x3fd43c1ce6c093d9              # double 0.31616899999999998
	.quad	0x3fde7c286f8ad256              # double 0.47632799999999997
	.quad	0x3feeed2ed783dff4              # double 0.966453
	.quad	0x3fe24db59578a2a9              # double 0.57198599999999999
	.quad	0x3fe9cf8726d04e62              # double 0.80658300000000005
	.quad	0x3fe16e49f51697f2              # double 0.544713
	.quad	0x3fd7f0b6b6e0d23d              # double 0.37406699999999998
	.quad	0x3fdc2da122fad6cb              # double 0.44028499999999998
	.quad	0x3fef1b6d43d03969              # double 0.97209800000000001
	.quad	0x3fd2dd872f33ca32              # double 0.29477100000000001
	.quad	0x3fb05069a4df47fa              # double 0.063727000000000006
	.quad	0x3fe160aa64c2f838              # double 0.54305000000000003
	.quad	0x3fe7bfca85caafbc              # double 0.74216199999999999
	.quad	0x3feb8fa9c12f09d9              # double 0.86128700000000002
	.quad	0x3fde276fb09203a3              # double 0.47115699999999999
	.quad	0x3fd425dd095af295              # double 0.31481100000000001
	.quad	0x3fdcab862b27cbf7              # double 0.44796900000000001
	.quad	0x3fe5e07e5a78f25a              # double 0.68365399999999998
	.quad	0x3feabbba55d1c3ad              # double 0.83541600000000005
	.quad	0x3fead44567125dd1              # double 0.83841200000000005
	.quad	0x3fda1ee2435696e6              # double 0.40813500000000003
	.quad	0x3fe97694467381d8              # double 0.79572500000000002
	.quad	0x3f87d41743e963dc              # double 0.011635
	.quad	0x3fec4c660a201472              # double 0.88432599999999995
	.quad	0x3fd45b63d3e4ef03              # double 0.31807800000000003
	.quad	0x3fd83ae2541d8e86              # double 0.37859399999999999
	.quad	0x3fa691ea78af3e47              # double 0.044082000000000003
	.quad	0x3fdab1e18efbb0e6              # double 0.41710700000000001
	.quad	0x3feff94a6eb91b3f              # double 0.99918099999999998
	.quad	0x3fc99799e518f3ed              # double 0.19993900000000001
	.quad	0x3fe6abe6a337a80d              # double 0.708484
	.quad	0x3f9faf42784a9479              # double 0.030942000000000001
	.quad	0x3fdce85fd04a2fcf              # double 0.451683
	.quad	0x3fdb13122b7baecd              # double 0.423039
	.quad	0x3feb8739b024f65a              # double 0.86025700000000005
	.quad	0x3fe324e7ab756430              # double 0.59825499999999998
	.quad	0x3fed35c9e6687f45              # double 0.91281599999999996
	.quad	0x3feb1ea57214f052              # double 0.84749099999999999
	.quad	0x3fc07a5b0ff10ecb              # double 0.12873399999999999
	.quad	0x3fc88e043a2163fe              # double 0.191834
	.quad	0x3fb4677b395c4220              # double 0.079703999999999997
	.quad	0x3fed9bf7ad4b2746              # double 0.92528900000000003
	.quad	0x3fd304b3c3e74afd              # double 0.29716199999999998
	.quad	0x3fc68a8b08dd1e54              # double 0.17610300000000001
	.quad	0x3fddd37c1376d549              # double 0.46603299999999998
	.quad	0x3fbd5c74751ce28f              # double 0.114692
	.quad	0x3feb3eaf6837f7be              # double 0.85140199999999999
	.quad	0x3fd880dc33721d54              # double 0.38286500000000001
	.quad	0x3fdeb0ff10ecb74e              # double 0.47955300000000001
	.quad	0x3fe1fa24894c447c              # double 0.56178499999999998
	.quad	0x3fc8f1d3ed527e52              # double 0.19488
	.quad	0x3fe983d577963993              # double 0.79734300000000002
	.quad	0x3fc1059ea57214f0              # double 0.13298399999999999
	.quad	0x3febdfe111276fb1              # double 0.87107900000000005
	.quad	0x3fea2c83ec892ab7              # double 0.81793400000000005
	.quad	0x3fec4fe36d22424a              # double 0.88475199999999998
	.quad	0x3fa6ea63b688bda9              # double 0.044756999999999998
	.quad	0x3fde5c39bcba3012              # double 0.474379
	.quad	0x3feb87aaef2c7326              # double 0.86031100000000005
	.quad	0x3fe2efac6045baf5              # double 0.59175699999999998
	.quad	0x3fdc9d16fc9bc771              # double 0.44708799999999999
	.quad	0x3fe60d823422467c              # double 0.68914900000000001
	.quad	0x3fe863992c8c5005              # double 0.762158
	.quad	0x3fb286b59146e4c1              # double 0.072368000000000002
	.quad	0x3feef69ca9ef5233              # double 0.96760400000000001
	.quad	0x3fdc929670196d8f              # double 0.44644699999999998
	.quad	0x3fc6e6d9be4cd749              # double 0.17892
	.quad	0x3fe99ef73c0c1fc9              # double 0.80065500000000001
	.quad	0x3fe907f66e86c658              # double 0.78222199999999997
	.quad	0x3fa07075b3e1437c              # double 0.032107999999999998
	.quad	0x3fc765fd8adab9f5              # double 0.18279999999999999
	.quad	0x3feecfd08d4bad7d              # double 0.96286799999999994
	.quad	0x3fe385be1a826245              # double 0.61007599999999995
	.quad	0x3fef8e736049ecb3              # double 0.98613899999999998
	.quad	0x3fd20ffda4052d66              # double 0.28222599999999998
	.quad	0x3fd764a16a487336              # double 0.36551699999999998
	.quad	0x3fc9d97f62b6ae7d              # double 0.20194999999999999
	.quad	0x3f9dc26dce39b457              # double 0.029062000000000001
	.quad	0x3fed63992c8c5005              # double 0.918408
	.quad	0x3fdd21d53cddd6e0              # double 0.45518999999999998
	.quad	0x3fe7194185058dde              # double 0.72183299999999995
	.quad	0x3fe37e80389f83be              # double 0.60919199999999996
	.quad	0x3fa48f10a99b6f5d              # double 0.040154000000000002
	.quad	0x3fd5270f3882278d              # double 0.330509
	.quad	0x3fc20cb6c7a7c9de              # double 0.141013
	.quad	0x3fdebc9cd3e0bd45              # double 0.48026200000000002
	.quad	0x3fd6474d9c6b0532              # double 0.34810200000000002
	.quad	0x3fe3b89b52007dd4              # double 0.61628499999999997
	.quad	0x3fe97164c729f59d              # double 0.79509200000000002
	.quad	0x3fd9d69d30270f39              # double 0.40372400000000003
	.quad	0x3fbe0d77b7c7820a              # double 0.117393
	.quad	0x3fc5f69014b599aa              # double 0.17158699999999999
	.quad	0x3fe1c163779e9d0f              # double 0.55485700000000004
	.quad	0x3fd77b4e54f7a919              # double 0.36690099999999998
	.quad	0x3fc826c3b927d45a              # double 0.18868299999999999
	.quad	0x3fe0d42a23bff8a9              # double 0.52589900000000001
	.quad	0x3fc1d0635a426bb5              # double 0.13917199999999999
	.quad	0x3fd2c8216c61522a              # double 0.29346499999999998
	.quad	0x3fcbc11e42e12620              # double 0.216831
	.quad	0x3fe1c1e364bec67a              # double 0.55491800000000002
	.quad	0x3fe4603925bb7b6c              # double 0.63674600000000003
	.quad	0x3fce3f5f91600f34              # double 0.23630899999999999
	.quad	0x3fbf0e1b4bb5e0f8              # double 0.121309
	.quad	0x3fc60a2014727dcc              # double 0.172184
	.quad	0x3fd6232096787ce9              # double 0.34589399999999998
	.quad	0x3feb6ddaceee0f3d              # double 0.85716000000000003
	.quad	0x3fea50bfa0945f9e              # double 0.822357
	.quad	0x3fe69fd7a13c254a              # double 0.70701199999999997
	.quad	0x3fe97ad6cb535009              # double 0.79624499999999998
	.quad	0x3fdf03e63e8dda49              # double 0.48461300000000002
	.quad	0x3fee2917507e9d95              # double 0.94251600000000002
	.quad	0x3fd5935fc3b4f616              # double 0.33711999999999998
	.quad	0x3f904a72ead9274e              # double 0.015909
	.quad	0x3fb40c0f01fb82c3              # double 0.078309000000000004
	.quad	0x3fc8854cdb7ae579              # double 0.19156799999999999
	.quad	0x3fe2a9f7b5aea316              # double 0.58324799999999999
	.quad	0x3fce583e8576cce6              # double 0.237068
	.quad	0x3fe512f6e82949a5              # double 0.65856499999999996
	.quad	0x3fc4a72ead9274e2              # double 0.161352
	.quad	0x3fe770bd017dae82              # double 0.73251200000000005
	.quad	0x3fe4a1858bc59b80              # double 0.64471699999999998
	.quad	0x3fd49d16fc9bc771              # double 0.32208799999999999
	.quad	0x3fc0ed99cbee807c              # double 0.13225100000000001
	.quad	0x3fb847d3d4280ae1              # double 0.094846
	.quad	0x3fecbcea6c1a048e              # double 0.898061
	.quad	0x3fdc3632c1f42bb6              # double 0.44080799999999998
	.quad	0x3fb81a79fec99f1b              # double 0.094154000000000002
	.quad	0x3fe2eaca79357604              # double 0.59116100000000005
	.quad	0x3f901754b05b7cfe              # double 0.015713999999999999
	.quad	0x3fcf1b0ccbc05d53              # double 0.24301300000000001
	.quad	0x3faafe60c38f3669              # double 0.052721999999999998
	.quad	0x3fec2c2df0d41312              # double 0.88039299999999998
	.quad	0x3febb4117f84449e              # double 0.86573100000000003
	.quad	0x3fd7ba01eeed8905              # double 0.370728
	.quad	0x3fc7d00713f077cd              # double 0.18603600000000001
	.quad	0x3fdc7e9d94d0dcfd              # double 0.44522800000000001
	.quad	0x3fee022bbecaab8a              # double 0.93776499999999996
	.quad	0x3fe8b20535c9e668              # double 0.77173099999999994
	.quad	0x3fd61159c4977425              # double 0.34480899999999998
	.quad	0x3fe5e5a78f25a251              # double 0.684284
	.quad	0x3feb86338b47c73f              # double 0.86013200000000001
	.quad	0x3fea81c2e33eff19              # double 0.82833999999999997
	.quad	0x3fe7e2174c4cdfad              # double 0.74634900000000004
	.quad	0x3fefc6e4c0df58c1              # double 0.99302900000000005
	.quad	0x3fe6a2c669057d18              # double 0.70737000000000005
	.quad	0x3fee082f0e0a84be              # double 0.93849899999999997
	.quad	0x3fc900de4c51116b              # double 0.19533900000000001
	.quad	0x3fec4985f06f6944              # double 0.88397499999999995
	.quad	0x3fe2daf8df7a4e7b              # double 0.58923000000000003
	.quad	0x3fe28129cbab649d              # double 0.57826699999999998
	.quad	0x3fe68db8bac710cb              # double 0.70479999999999998
	.quad	0x3fe9ededaec4a409              # double 0.81029399999999996
	.quad	0x3fde5371971c10d8              # double 0.47384300000000001
	.quad	0x3fe873fb7a5f41af              # double 0.764158
	.quad	0x3fefdc6e2a80064b              # double 0.99565800000000004
	.quad	0x3fef90880d801b43              # double 0.98639299999999996
	.quad	0x3fe5e51f3e89a88b              # double 0.68421900000000002
	.quad	0x3fe0bd8be7296f65              # double 0.52313799999999999
	.quad	0x3fe9895af294dd72              # double 0.79801699999999998
	.quad	0x3fe60e5a35d67ba2              # double 0.68925199999999998
	.quad	0x3fe692599ed7c6fc              # double 0.70536500000000002
	.quad	0x3fe6910e453d20f3              # double 0.70520700000000003
	.quad	0x3fef1b6d43d03969              # double 0.97209800000000001
	.quad	0x3fc78012dfd694cd              # double 0.18359600000000001
	.quad	0x3f94185058dde7a7              # double 0.019623999999999999
	.quad	0x3fed4c100e6afcce              # double 0.91553499999999999
	.quad	0x3fa95faa8a82a561              # double 0.049557999999999998
	.quad	0x3fbffad2999567dc              # double 0.124921
	.quad	0x3fe092a737110e45              # double 0.51790199999999997
	.quad	0x3fddcd8127b2cc71              # double 0.46566800000000003
	.quad	0x3fe617c3d68405b4              # double 0.69040100000000004
	.quad	0x3fef4a1272c94b38              # double 0.97779199999999999
	.quad	0x3fe65c2b0ea18373              # double 0.69875100000000001
	.quad	0x3fbda9b8cb8e086c              # double 0.115871
	.quad	0x3fe946455eaee200              # double 0.78982799999999997
	.quad	0x3fe3bfd71b046845              # double 0.61716800000000005
	.quad	0x3fe5577d955714ba              # double 0.66693000000000002
	.quad	0x3fd161cbccf28c7a              # double 0.271594
	.quad	0x3fec5a6612839043              # double 0.88603500000000002
	.quad	0x3fdc57b84db9c737              # double 0.44285400000000003
	.quad	0x3fc4c144028e4fb9              # double 0.16214799999999999
	.quad	0x3fc8e0008637bd06              # double 0.19433600000000001
	.quad	0x3fe2d1dabe27179c              # double 0.588117
	.quad	0x3fe18cfbfc6540cc              # double 0.54845999999999995
	.quad	0x3fefb9c0ebedfa44              # double 0.991425
	.quad	0x3fe9750c1b97353b              # double 0.79553799999999997
	.quad	0x3fe34d29131ec0b5              # double 0.60316899999999996
	.quad	0x3fdef687b139c94f              # double 0.48379699999999998
	.quad	0x3fdc6861e92923e6              # double 0.44387100000000002
	.quad	0x3fec5b2d4d4024b3              # double 0.88612999999999997
	.quad	0x3fd17110e453d20f              # double 0.27252599999999999
	.quad	0x3fe3f121ab4b72c5              # double 0.62318499999999999
	.quad	0x3fbed56b00ffda40              # double 0.120444
	.quad	0x3fea93f8db489093              # double 0.83056300000000005
	.quad	0x3fc8f861a60d4563              # double 0.19508
	.quad	0x3fdc5e6362a5e786              # double 0.44326100000000002
	.quad	0x3fdab05faebc408e              # double 0.41701500000000002
	.quad	0x3f80ecb74ddf86e4              # double 0.0082640000000000005
	.quad	0x3fe222a4db163bac              # double 0.56672900000000004
	.quad	0x3fe60b0292817764              # double 0.68884400000000001
	.quad	0x3faae21101b00368              # double 0.052505999999999997
	.quad	0x3fef276d97b30f8c              # double 0.97356299999999995
	.quad	0x3fd2f92f2b66b617              # double 0.29645899999999997
	.quad	0x3fe783e63e8dda49              # double 0.73485100000000003
	.quad	0x3fd74acf312b1b37              # double 0.36394100000000001
	.quad	0x3fe5cbf0995aaf79              # double 0.681145
	.quad	0x3fd724cc6822ff09              # double 0.36162100000000003
	.quad	0x3fba7ea5f84cad58              # double 0.103495
	.quad	0x3fe807bbb62413db              # double 0.75094399999999994
	.quad	0x3fe8eacc92146a1a              # double 0.77866199999999997
	.quad	0x3fdd847f562174c5              # double 0.46121200000000001
	.quad	0x3fd195d0b73d188f              # double 0.27476899999999999
	.quad	0x3fc47c7c5260f5e4              # double 0.160049
	.quad	0x3fed32c625e99e95              # double 0.91244800000000004
	.quad	0x3fdbaf46aa087ca6              # double 0.43257299999999999
	.quad	0x3fb4c436fc158fb4              # double 0.081118999999999997
	.quad	0x3fcd68405b39e27a              # double 0.229744
	.quad	0x3fd5e3d5fdcdf698              # double 0.34203099999999997
	.quad	0x3fdd4c33b5393251              # double 0.45777600000000002
	.quad	0x3fe7fd41743e963e              # double 0.74966500000000003
	.quad	0x3fe84ee5abc0e38a              # double 0.75963099999999995
	.quad	0x3fe465b63d3e4ef0              # double 0.63741599999999998
	.quad	0x3fec7c49fd7a13c2              # double 0.89017199999999996
	.quad	0x3fe99edbf8b9baa1              # double 0.80064199999999996
	.quad	0x3fdf3621fafc8b00              # double 0.48767899999999997
	.quad	0x3fa3f7ced916872b              # double 0.039
	.quad	0x3febdc0767d34df0              # double 0.87060899999999997
	.quad	0x3fd6a8d21bc126a6              # double 0.35405399999999998
	.quad	0x3fd650a45d41fa76              # double 0.34867199999999998
	.quad	0x3fe1b641700cd856              # double 0.55349800000000005
	.quad	0x3fe8d306a2b17050              # double 0.77576000000000001
	.quad	0x3fefed3d859c8c93              # double 0.99770999999999998
	.quad	0x3fd95c63ae2541d9              # double 0.39626400000000001
	.quad	0x3fd77f455a7d2418              # double 0.367143
	.quad	0x3fed5d5b24e9c454              # double 0.91764599999999996
	.quad	0x3fe99bb2788db057              # double 0.80025599999999997
	.quad	0x3f99f7f8ca8198f2              # double 0.025360000000000001
	.quad	0x3fef98a43bb40b35              # double 0.98738300000000001
	.quad	0x3fe766106ab14ec2              # double 0.731209
	.quad	0x3feb45996744b2b7              # double 0.85224599999999995
	.quad	0x3fd8b05319828805              # double 0.38576199999999999
	.quad	0x3fd5b6c3760bf5d8              # double 0.33928000000000003
	.quad	0x3fdc30446b69db66              # double 0.440446
	.quad	0x3fd3658c4bd33d29              # double 0.30307299999999998
	.quad	0x3feea732df505d10              # double 0.95791000000000004
	.quad	0x3fe5ee02a77a2ced              # double 0.68530400000000002
	.quad	0x3fe38366516db0de              # double 0.60979000000000005
	.quad	0x3fc47c200c0f01fc              # double 0.16003800000000001
	.quad	0x3fc1506dd69d3027              # double 0.135267
	.quad	0x3fe724180d3cff65              # double 0.72315600000000002
	.quad	0x3fe40bd66277c45d              # double 0.62644500000000003
	.quad	0x3fe09ed5ae1cde5d              # double 0.51938899999999999
	.quad	0x3fde6145953586cb              # double 0.47468700000000003
	.quad	0x3fe8be2b4959e625              # double 0.77321399999999996
	.quad	0x3fe9e54b48d3ae68              # double 0.80923999999999996
	.quad	0x3fd8e12a51e321a3              # double 0.38874300000000001
	.quad	0x3fbba7008a697aee              # double 0.108017
	.quad	0x3fd3856a37ac3eb8              # double 0.30501800000000001
	.quad	0x3fe106162f166e01              # double 0.53199300000000005
	.quad	0x3fe9f5ad96a6a012              # double 0.81123999999999996
	.quad	0x3f7d249e44fa0514              # double 0.0071149999999999998
	.quad	0x3fb14ccab3edd8b6              # double 0.067577999999999999
	.quad	0x3fd76b76709fa54c              # double 0.36593399999999998
	.quad	0x3fd4cd035371971c              # double 0.325013
	.quad	0x3fe6930be0ded289              # double 0.70545000000000002
	.quad	0x3fd72ea960b6f9fd              # double 0.36222300000000002
	.quad	0x3fc591361dc93ea3              # double 0.168494
	.quad	0x3fb658e64b231401              # double 0.087293999999999997
	.quad	0x3feb7efbf401c4fc              # double 0.85925099999999998
	.quad	0x3fdeead4f5903a75              # double 0.48308299999999998
	.quad	0x3feb4ce5f7403dde              # double 0.85313700000000003
	.quad	0x3fed2afff36ac647              # double 0.91149899999999995
	.quad	0x3fece76640a6b93d              # double 0.90324700000000002
	.quad	0x3fc19591cd1c7de5              # double 0.137377
	.quad	0x3fe2ec8711d798d9              # double 0.59137300000000004
	.quad	0x3fe8263f9a49c2c2              # double 0.75466900000000003
	.quad	0x3fb5a6c5d206c871              # double 0.084575999999999998
	.quad	0x3f9559b3d07c84b6              # double 0.02085
	.quad	0x3f4b5c7cd898b2ea              # double 8.3500000000000002E-4
	.quad	0x3fd2d744f5d35654              # double 0.29438900000000001
	.quad	0x3feab9dc2f405f6c              # double 0.83518800000000004
	.quad	0x3fd4ee3d5fdcdf6a              # double 0.32704100000000003
	.quad	0x3fc8d32830a0b1bc              # double 0.19394400000000001
	.quad	0x3fb4bfc2224edf61              # double 0.081050999999999998
	.quad	0x3fee6e6106ab14ec              # double 0.95097399999999998
	.quad	0x3fe45c22ab25b318              # double 0.63624700000000001
	.quad	0x3fd2c7c5260f5e42              # double 0.29344300000000001
	.quad	0x3fd3e62dc6e2a800              # double 0.31092399999999998
	.quad	0x3fe6e23076c050be              # double 0.71511100000000005
	.quad	0x3fe713d74d594f27              # double 0.72117200000000004
	.quad	0x3fe86f1561911490              # double 0.76356000000000002
	.quad	0x3fcef23897204296              # double 0.24176700000000001
	.quad	0x3fc867d77fae3609              # double 0.19066900000000001
	.quad	0x3fa5a6e75ff609dd              # double 0.042289
	.quad	0x3fc45d63886594af              # double 0.15909999999999999
	.quad	0x3fde48f96e158751              # double 0.47320400000000001
	.quad	0x3fe4b734b51372a4              # double 0.64736400000000005
	.quad	0x3fc95771001d5c31              # double 0.19798099999999999
	.quad	0x3fdcf28848387df6              # double 0.45230300000000001
	.quad	0x3fdb53111f0c34c2              # double 0.42694500000000002
	.quad	0x3fed7bb0e5e67946              # double 0.92134899999999997
	.quad	0x3fcaf0f9d2bf5515              # double 0.210479
	.quad	0x3fee85ee568a5050              # double 0.95384899999999995
	.quad	0x3fd6f7ced916872b              # double 0.358875
	.quad	0x3fed40d2c386d2ed              # double 0.91416299999999995
	.quad	0x3fce6cebbba55d1c              # double 0.23769899999999999
	.quad	0x3fd031337eb28d86              # double 0.25300299999999998
	.quad	0x3fa049667b5f1bef              # double 0.031809999999999998
	.quad	0x3fd5160d887ebf23              # double 0.32947100000000001
	.quad	0x3fdb1e4b44a1f080              # double 0.42372399999999999
	.quad	0x3fe5a5918a009f62              # double 0.67646099999999998
	.quad	0x3fd4a06e9ff0cbb0              # double 0.32229200000000002
	.quad	0x3fe19f81a5870da6              # double 0.55072100000000002
	.quad	0x3fd5e6b8305d95dd              # double 0.34220699999999998
	.quad	0x3fdcc5718eb89507              # double 0.44955099999999998
	.quad	0x3fa8b9dc2f405f6c              # double 0.048293000000000003
	.quad	0x3fe9cfe154434e33              # double 0.80662599999999995
	.quad	0x3fe49b5c7cd898b3              # double 0.64396500000000001
	.quad	0x3f992bc2fc69728a              # double 0.024580999999999999
	.quad	0x3fea07af20ea5b53              # double 0.81343799999999999
	.quad	0x3fc100a393ee5eee              # double 0.13283200000000001
	.quad	0x3fd93cd573647bab              # double 0.39433800000000002
	.quad	0x3fdbc0b5675579af              # double 0.43363699999999999
	.quad	0x3febeba493c89f41              # double 0.87251500000000004
	.quad	0x3fef4cab3edd8b61              # double 0.978109
	.quad	0x3fe9ef240fa9c12f              # double 0.810442
	.quad	0x3fef9aa821f2990f              # double 0.98762899999999997
	.quad	0x3feadce7cd035372              # double 0.83946600000000005
	.quad	0x3f9a775fb2edfe76              # double 0.025846000000000001
	.quad	0x3fdc87f455a7d242              # double 0.44579800000000003
	.quad	0x3f9aa1d755bccaf7              # double 0.026008
	.quad	0x3fe9cffc9795b35b              # double 0.80663899999999999
	.quad	0x3fbc202d9cf13cef              # double 0.10986600000000001
	.quad	0x3fea3cd78c436fc1              # double 0.81992699999999996
	.quad	0x3fea5c6e2a80064b              # double 0.82378300000000004
	.quad	0x3fd219b0ab2e1694              # double 0.28281800000000001
	.quad	0x3fbe49c2c1b10fd8              # double 0.118313
	.quad	0x3fa788fc9363f573              # double 0.045967000000000001
	.quad	0x3fe5faca36199781              # double 0.68686400000000003
	.quad	0x3fe7b41e14bdfd26              # double 0.74073699999999998
	.quad	0x3fe8610adcd2d44e              # double 0.76184600000000002
	.quad	0x3fdc1ee675147f13              # double 0.439386
	.quad	0x3feededd052934ad              # double 0.96470500000000003
	.quad	0x3fe9388ebcc6c54c              # double 0.78815400000000002
	.quad	0x3feb703afb7e9100              # double 0.85745000000000005
	.quad	0x3fed1a5ebb7739f3              # double 0.90946899999999997
	.quad	0x3fe7eda4484944ed              # double 0.74775899999999995
	.quad	0x3fea6a0ba1f4b1ee              # double 0.82544499999999998
	.quad	0x3fedced6fda836eb              # double 0.93149899999999997
	.quad	0x3fcedad31fcd24e1              # double 0.24105299999999999
	.quad	0x3fee8726d04e618d              # double 0.95399800000000001
	.quad	0x3fe936f19934efcc              # double 0.78795700000000001
	.quad	0x3fe3a133c1ce6c09              # double 0.61342799999999997
	.quad	0x3fc75feda6612839              # double 0.182615
	.quad	0x3fb3fee2c98e53eb              # double 0.078107999999999997
	.quad	0x3fcf7a355043e532              # double 0.245917
	.quad	0x3fec28da7f3cf701              # double 0.87998699999999996
	.quad	0x3fda95e5aff2a173              # double 0.41539900000000002
	.quad	0x3fe0be596c82e01a              # double 0.52323600000000003
	.quad	0x3fe7b3d4ae429e0a              # double 0.74070199999999997
	.quad	0x3fe2df7e80389f84              # double 0.58978200000000003
	.quad	0x3fd56e1deacc9214              # double 0.33484599999999998
	.quad	0x3fc14ab1d4f9c1f8              # double 0.13509199999999999
	.quad	0x3fd0778dd616f86a              # double 0.257297
	.quad	0x3fd015b573eab368              # double 0.25132500000000002
	.quad	0x3fee27e308787486              # double 0.94236900000000001
	.quad	0x3fd2ef954eb13dfb              # double 0.295873
	.quad	0x3fd8f34938583622              # double 0.389849
	.quad	0x3feee9f6a93f290b              # double 0.96606000000000002
	.quad	0x3fefec0d6f544bb2              # double 0.99756500000000004
	.quad	0x3f97525460aa64c3              # double 0.022775
	.quad	0x3fb9983947496aad              # double 0.099978999999999998
	.quad	0x3fe8142b302f72b4              # double 0.75246199999999996
	.quad	0x3f90b28522ea0fd4              # double 0.016306000000000001
	.quad	0x3fd9b12d3415b142              # double 0.40143899999999999
	.quad	0x3fec22bbecaab8a6              # double 0.87924000000000002
	.quad	0x3faa6a875d56f32c              # double 0.051594000000000001
	.quad	0x3fe1d4cb9ecf6380              # double 0.557226
	.quad	0x3fddb320535c9e67              # double 0.46405800000000003
	.quad	0x3fe4cd099e0e7360              # double 0.65002899999999997
	.quad	0x3fcec016052502ef              # double 0.24023700000000001
	.quad	0x3fe1ff38c5436b90              # double 0.56240500000000004
	.quad	0x3fe9ec6de76427c8              # double 0.81011100000000003
	.quad	0x3fcb56084a515cea              # double 0.213563
	.quad	0x3feae6490a350d28              # double 0.840611
	.quad	0x3fe23c21187e7c07              # double 0.56984000000000001
	.quad	0x3fdeee2435696e59              # double 0.48328500000000002
	.quad	0x3fd1458cd20afa2f              # double 0.26987
	.quad	0x3fe5c399b2c40d0b              # double 0.68012700000000004
	.quad	0x3fdd2ae4b0186120              # double 0.45574300000000001
	.quad	0x3fe0c5718eb89507              # double 0.52410199999999996
	.quad	0x3feb614163779e9d              # double 0.85562199999999999
	.quad	0x3fdb84944ed6fda8              # double 0.42996699999999999
	.quad	0x3fa463ae2541d8e8              # double 0.039822999999999997
	.quad	0x3fed5a554b8bef8d              # double 0.91727700000000001
	.quad	0x3f780b242070b8d0              # double 0.0058700000000000002
	.quad	0x3fea3a83f4eca687              # double 0.81964300000000001
	.quad	0x3fe8cd22c881e471              # double 0.77504099999999998
	.quad	0x3f8018e757928e0d              # double 0.0078600000000000006
	.quad	0x3fcfd8409e55c0fd              # double 0.24878700000000001
	.quad	0x3fe149cd3e0bd44a              # double 0.54025900000000004
	.quad	0x3fd19acbc8c0ce92              # double 0.27507300000000001
	.quad	0x3fde526527a20579              # double 0.47377900000000001
	.quad	0x3fdee70c1333b96b              # double 0.482852
	.quad	0x3fe0508919ef954f              # double 0.50983100000000003
	.quad	0x3fe4874c8ffb8b26              # double 0.64151599999999998
	.quad	0x3fe2ef587d6f9768              # double 0.59171700000000005
	.quad	0x3fd38a6117720c8d              # double 0.30532100000000001
	.quad	0x3f971ac14c660a20              # double 0.022563
	.quad	0x3fe76ec5b078d930              # double 0.73227200000000003
	.quad	0x3fefc755ffe6d58d              # double 0.99308300000000004
	.quad	0x3fd6a3e39f77292c              # double 0.35375299999999998
	.quad	0x3fe237e2c55c9603              # double 0.56932199999999999
	.quad	0x3fade071c53f39d2              # double 0.058353000000000002
	.quad	0x3fee4f5f4e4430b1              # double 0.94718899999999995
	.quad	0x3fd3f4adbc664d3c              # double 0.311809
	.quad	0x3febcf82f5126634              # double 0.86908099999999999
	.quad	0x3feced22424a276b              # double 0.90394699999999994
	.quad	0x3fa244e93e1c9b41              # double 0.035681999999999998
	.quad	0x3fcc55e28aa43351              # double 0.22137100000000001
	.quad	0x3fd10fd7e45803cd              # double 0.266592
	.quad	0x3fcfd19157abb880              # double 0.248583
	.quad	0x3fb120f2becedd48              # double 0.066908999999999996
	.quad	0x3faee47dc37a3db4              # double 0.060337000000000002
	.quad	0x3fe17fb8b26394fb              # double 0.54684100000000002
	.quad	0x3fc17281fd9ba1b2              # double 0.13630700000000001
	.quad	0x3fef1fff79c842fa              # double 0.97265599999999997
	.quad	0x3fe7b305100a393f              # double 0.74060300000000001
	.quad	0x3fe9097204295a6c              # double 0.78240299999999995
	.quad	0x3fed0b9baa1511e0              # double 0.907667
	.quad	0x3fdf2c1f42bb6673              # double 0.487068
	.quad	0x3fe309e12a51e322              # double 0.59495600000000004
	.quad	0x3fefc167a95c853c              # double 0.99235899999999999
	.quad	0x3f9fa11a975afaf8              # double 0.030887999999999999
	.quad	0x3fdab7bf1e8e6080              # double 0.41746499999999997
	.quad	0x3fe449dbec2480e9              # double 0.63401600000000002
	.quad	0x3fdac7bcc2938de7              # double 0.41844100000000001
	.quad	0x3fef7de939eadd59              # double 0.98411999999999999
	.quad	0x3fd69b845564b663              # double 0.353242
	.quad	0x3fdece9a2c669058              # double 0.48136000000000001
	.quad	0x3fdee46cfc829cfe              # double 0.48269200000000001
	.quad	0x3fed6fc371da37ef              # double 0.91989299999999996
	.quad	0x3fdbd6c2efd438d2              # double 0.43498300000000001
	.quad	0x3fefbd6c72192210              # double 0.991873
	.quad	0x3fe4e47baa9b499d              # double 0.652891
	.quad	0x3fd0a51a005c4652              # double 0.260077
	.quad	0x3fe369f6a93f290b              # double 0.60668500000000003
	.quad	0x3fe2b3a68b19a416              # double 0.58443000000000001
	.quad	0x3fe8da294141e9af              # double 0.77663099999999996
	.quad	0x3fc7dc0db2702a35              # double 0.18640300000000001
	.quad	0x3fd96fc158fb43d9              # double 0.39744600000000002
	.quad	0x3fb26a875d56f32c              # double 0.071938000000000002
	.quad	0x3fced8a979e16d6e              # double 0.24098700000000001
	.quad	0x3feca6b2f23033a4              # double 0.89534899999999995
	.quad	0x3fc028f5c28f5c29              # double 0.12625
	.quad	0x3fe5c6e6d9be4cd7              # double 0.68052999999999997
	.quad	0x3fcd3f290abb44e5              # double 0.22849
	.quad	0x3fdafcc5b8dc5500              # double 0.421678
	.quad	0x3fe9cd423d9231c6              # double 0.80630599999999997
	.quad	0x3fdfb0a6fc58ab93              # double 0.49515700000000001
	.quad	0x3fe630d306a2b170              # double 0.69345999999999997
	.quad	0x3fc28db8bac710cb              # double 0.14495
	.quad	0x3fe88a6fc58ab92c              # double 0.76689899999999999
	.quad	0x3fea8da7f3cf7015              # double 0.82979199999999997
	.quad	0x3f73c89f40a2877f              # double 0.0048300000000000001
	.quad	0x3fe62157689ca18c              # double 0.69157000000000002
	.quad	0x3fd37b4e54f7a919              # double 0.30440099999999998
	.quad	0x3fdb7d41743e963e              # double 0.42952000000000001
	.quad	0x3fe7366b6177ea1c              # double 0.72539299999999995
	.quad	0x3fa9886df82b1f68              # double 0.049868999999999997
	.quad	0x3fed03f705857aff              # double 0.90673400000000004
	.quad	0x3fe351f3e89a88ad              # double 0.60375400000000001
	.quad	0x3fd24528283d35eb              # double 0.28547099999999997
	.quad	0x3fde9973d9ec7000              # double 0.47811599999999999
	.quad	0x3fc72b4528283d36              # double 0.181008
	.quad	0x3fd35d52c16df3f9              # double 0.30257099999999998
	.quad	0x3fed533f42352eb6              # double 0.916412
	.quad	0x3fcc3ad18d25edd0              # double 0.22054499999999999
	.quad	0x3fe6b0c4588a04d1              # double 0.70907799999999999
	.quad	0x3feb9bc558644524              # double 0.862765
	.quad	0x3fe5fb28954a7f80              # double 0.68690899999999999
	.quad	0x3f8c443914f483cb              # double 0.013802
	.quad	0x3fbd19695d91ab8f              # double 0.11366900000000001
	.quad	0x3fdb29cfdd228566              # double 0.424427
	.quad	0x3fe72a369fcf3dc0              # double 0.72390299999999996
	.quad	0x3fec9ad85dfa871a              # double 0.89390199999999997
	.quad	0x3faf2ecf20642396              # double 0.060904
	.quad	0x3feaed5f138bcdff              # double 0.841476
	.quad	0x3fc8bedfa43fe5c9              # double 0.193325
	.quad	0x3fd99a30984e3fff              # double 0.400036
	.quad	0x3fe58f27bb2fec57              # double 0.67372500000000002
	.quad	0x3fda3cbc48f10a9a              # double 0.40995700000000002
	.quad	0x3fb245e4e69f05ea              # double 0.071378999999999998
	.quad	0x3fcdd944aa53fc01              # double 0.23319300000000001
	.quad	0x3fe3a6d04e618ce3              # double 0.61411300000000002
	.quad	0x3fee91b3f20a73f7              # double 0.95528599999999997
	.quad	0x3fbb81c714fce747              # double 0.107449
	.quad	0x3fe32d57bc7f77af              # double 0.59928499999999996
	.quad	0x3fc3ee568a50507a              # double 0.15571099999999999
	.quad	0x3fc688a47ecfe9b8              # double 0.17604500000000001
	.quad	0x3fe0b3a2595bbbe8              # double 0.52192799999999995
	.quad	0x3fe6a617c1bda512              # double 0.70777500000000004
	.quad	0x3fe2058bc59b8024              # double 0.56317700000000004
	.quad	0x3feaa799a1fd156a              # double 0.832959
	.quad	0x3fed71e29b6b2af1              # double 0.92015199999999997
	.quad	0x3fd46273929ed395              # double 0.31850899999999999
	.quad	0x3fdf3b42cc2d6a9c              # double 0.48799199999999998
	.quad	0x3fe5a0b8066c2acc              # double 0.67586900000000005
	.quad	0x3fdea415f45e0b4e              # double 0.478765
	.quad	0x3fec7589efd86a90              # double 0.88934800000000003
	.quad	0x3fce678c0053e2d6              # double 0.237535
	.quad	0x3fe092cf0f9d2bf5              # double 0.51792099999999996
	.quad	0x3fecbec460ed80a1              # double 0.89828699999999995
	.quad	0x3fee4ca2db61bb06              # double 0.946855
	.quad	0x3fd3b8066c2acb86              # double 0.30810700000000002
	.quad	0x3fd9fb480a5accd5              # double 0.40596199999999999
	.quad	0x3fca5cbbc2b94d94              # double 0.205955
	.quad	0x3fee75ba2be0589b              # double 0.95187100000000002
	.quad	0x3fbea4ca4f440af2              # double 0.119702
	.quad	0x3fdec193b3a68b1a              # double 0.48056500000000002
	.quad	0x3fc6915379fa97e1              # double 0.17630999999999999
	.quad	0x3fed9d5c31593e60              # double 0.92545900000000003
	.quad	0x3fe876102795703f              # double 0.76441199999999998
	.quad	0x3fdf424a276b7ed4              # double 0.48842099999999999
	.quad	0x3fda5c5b4aa9717e              # double 0.411887
	.quad	0x3fe53bd9cae21102              # double 0.66355600000000003
	.quad	0x3fbba76534373f31              # double 0.10802299999999999
	.quad	0x3fc37c02afdda8bd              # double 0.152222
	.quad	0x3fef859a73b42cc3              # double 0.98505900000000001
	.quad	0x3fead887ebf22c02              # double 0.83893200000000001
	.quad	0x3fe79a38fbca105a              # double 0.73757600000000001
	.quad	0x3fd17d4e09784ec6              # double 0.27327299999999999
	.quad	0x3fe1209cc319c5a4              # double 0.53523100000000001
	.quad	0x3fdee321a2e7f6f5              # double 0.48261300000000001
	.quad	0x3fd53aeab7995ee1              # double 0.33172099999999999
	.quad	0x3fed50df15a4acf3              # double 0.91612199999999999
	.quad	0x3fe099a847b24639              # double 0.51875700000000002
	.quad	0x3fe344b90214ad36              # double 0.60213899999999998
	.quad	0x3fdbed5ae1cde5d2              # double 0.43636200000000003
	.quad	0x3fe3762f9ca5bd94              # double 0.60817699999999997
	.quad	0x3f8404ea4a8c154d              # double 0.0097750000000000007
	.quad	0x3fa295208e150119              # double 0.036294
	.quad	0x3fe16503fb374363              # double 0.54358099999999998
	.quad	0x3fa733ca31e7d999              # double 0.045317000000000003
	.quad	0x3fec4fc610f0e90c              # double 0.88473800000000002
	.quad	0x3fe0af8df7a4e7ab              # double 0.52142999999999995
	.quad	0x3fe9d9d12cadddf4              # double 0.80783899999999997
	.quad	0x3fabb384fd2a62aa              # double 0.054103999999999999
	.quad	0x3fee068b9fdbd2fa              # double 0.93829899999999999
	.quad	0x3fe1e8b5cbff4773              # double 0.55965699999999996
	.quad	0x3fa3d102bc72e276              # double 0.038704000000000002
	.quad	0x3fdb451b93037d63              # double 0.426093
	.quad	0x3fdede54b48d3ae7              # double 0.48232000000000003
	.quad	0x3fcedd052934acb0              # double 0.24112
	.quad	0x3fecb1e7d9988d2a              # double 0.89671699999999999
	.quad	0x3fec7a5093964a5a              # double 0.88993100000000003
	.quad	0x3f953825e13b18db              # double 0.020722000000000001
	.quad	0x3fe4b5bb384fd2a6              # double 0.64718399999999998
	.quad	0x3fe3fab53d640e9d              # double 0.62435399999999996
	.quad	0x3fe3a9cdc443914f              # double 0.61447799999999997
	.quad	0x3fe5999bb2788db0              # double 0.67500099999999996
	.quad	0x3fee7727136a4010              # double 0.95204500000000003
	.quad	0x3fc1267c6b8b6955              # double 0.13398699999999999
	.quad	0x3fe599da9c99285b              # double 0.67503100000000005
	.quad	0x3fe8067cf1c3265b              # double 0.75079200000000001
	.quad	0x3f85a63f9a49c2c2              # double 0.010571000000000001
	.quad	0x3fee3ea91d9b1b7a              # double 0.94514900000000002
	.quad	0x3fe6b851eb851eb8              # double 0.70999999999999996
	.quad	0x3fc0a76102795704              # double 0.130108
	.quad	0x3fed667d77fae361              # double 0.91876100000000005
	.quad	0x3fe5e6dbd72bcb60              # double 0.68443100000000001
	.quad	0x3fd997e996312f4d              # double 0.399897
	.quad	0x3feda6dacabc5155              # double 0.92661800000000005
	.quad	0x3fef898b2e9ccb7d              # double 0.98553999999999997
	.quad	0x3fe689e98dcdb37d              # double 0.70433500000000004
	.quad	0x3fe701450efdc9c5              # double 0.71890500000000002
	.quad	0x3fe6f3f0fe047d3d              # double 0.71727799999999997
	.quad	0x3f83bc0a06e9ff0d              # double 0.0096360000000000004
	.quad	0x3f832830a0b1bbcf              # double 0.0093539999999999994
	.quad	0x3fc7e18efbb0e5e6              # double 0.18657099999999999
	.quad	0x3f9dc22ab25b317f              # double 0.029061
	.quad	0x3fd654a7f8012dfd              # double 0.34891699999999998
	.quad	0x3fed9b36bd2b6f1a              # double 0.92519700000000005
	.quad	0x3feed7603925bb7b              # double 0.96379099999999995
	.quad	0x3fd30f4517614595              # double 0.29780699999999999
	.quad	0x3fea6d0d49949e88              # double 0.82581199999999999
	.quad	0x3fe81650a45d41fa              # double 0.75272399999999995
	.quad	0x3fc355c52e72da12              # double 0.15105499999999999
	.quad	0x3fa68ad688377186              # double 0.044027999999999998
	.quad	0x3fec8438088509c0              # double 0.89114000000000004
	.quad	0x3fea898d477bbf94              # double 0.829291
	.quad	0x3fda657fb69984a1              # double 0.41244500000000001
	.quad	0x3fc7496aad1d041d              # double 0.18192800000000001
	.quad	0x3fdcca70d1fa3337              # double 0.44985599999999998
	.quad	0x3fc3774256bca537              # double 0.15207699999999999
	.quad	0x3fe93f572de43ed9              # double 0.78898199999999996
	.quad	0x3fc330489d27c393              # double 0.14991099999999999
	.quad	0x3feab62845996745              # double 0.83473600000000003
	.quad	0x3fecb8aa00192a73              # double 0.89754199999999995
	.quad	0x3fad8e219652bd3c              # double 0.057724999999999999
	.quad	0x3faf219220ff5409              # double 0.060803000000000003
	.quad	0x3fec164628027d89              # double 0.87771900000000003
	.quad	0x3feed2630ec31162              # double 0.96318199999999998
	.quad	0x3fd1d7a13c254a3c              # double 0.27878599999999998
	.quad	0x3fcc7d6733ebbfd7              # double 0.222577
	.quad	0x3fd278cc9a77e5eb              # double 0.28862300000000002
	.quad	0x3fde5f4e4430b179              # double 0.47456700000000002
	.quad	0x3fd9a0ec74320104              # double 0.400447
	.quad	0x3fc149c6f36ef805              # double 0.13506399999999999
	.quad	0x3fe26612839042d9              # double 0.57496000000000003
	.quad	0x3fe81819d2391d58              # double 0.752942
	.quad	0x3fd728aa433508f6              # double 0.36185699999999998
	.quad	0x3fecbb7f9d6f1130              # double 0.89788800000000002
	.quad	0x3fe022fcefaa4767              # double 0.50427100000000002
	.quad	0x3fbaaec0724b76f7              # double 0.104229
	.quad	0x3fd189bd8383ad9f              # double 0.274032
	.quad	0x3fd29b13165d3997              # double 0.290715
	.quad	0x3fef6102795703f3              # double 0.98059200000000001
	.quad	0x3fef48d1958969a1              # double 0.97763900000000003
	.quad	0x3fdf8644523f67f5              # double 0.49257000000000001
	.quad	0x3fd4f640639d5e4a              # double 0.32752999999999999
	.quad	0x3feb9d9f4d37c137              # double 0.86299099999999995
	.quad	0x3fe730d9513f8db5              # double 0.72471300000000005
	.quad	0x3fe5ece13f4a98ab              # double 0.68516600000000005
	.quad	0x3fe2676640a6b93d              # double 0.57512200000000002
	.quad	0x3fb80a17b0f6ad71              # double 0.093904000000000001
	.quad	0x3fd09231c64ba94c              # double 0.25892300000000001
	.quad	0x3fcf6188b11409a2              # double 0.24516399999999999
	.quad	0x3fdeec4e7253da73              # double 0.48317300000000002
	.quad	0x3fe2ae7924af0bf2              # double 0.58379800000000004
	.quad	0x3fdcbdd76683c298              # double 0.44908700000000001
	.quad	0x3fea47e8ccdd93c4              # double 0.82127799999999995
	.quad	0x3fe0ae275ab7dc7b              # double 0.52125900000000003
	.quad	0x3fca3d790752da98              # double 0.20500099999999999
	.quad	0x3fa217d2849cb253              # double 0.035338000000000001
	.quad	0x3fea67620ee8d10f              # double 0.82511999999999996
	.quad	0x3fd2049235f80991              # double 0.28152899999999997
	.quad	0x3fdaaa79bbadc098              # double 0.416655
	.quad	0x3fa39e279dd3bafe              # double 0.038316000000000003
	.quad	0x3fed721b3aeee957              # double 0.92017899999999997
	.quad	0x3fdf7168f8e7ddca              # double 0.49129699999999998
	.quad	0x3fd0ed3953dea466              # double 0.26447900000000002
	.quad	0x3fe1bfa0945f9df5              # double 0.55464199999999997
	.quad	0x3fe308d6d3b6cbda              # double 0.59482900000000005
	.quad	0x3fded7e45803cd14              # double 0.48192699999999999
	.quad	0x3fe402773e24febd              # double 0.625301
	.quad	0x3fd05058dde7a744              # double 0.25490400000000002
	.quad	0x3fd9673c4f3ba776              # double 0.396926
	.quad	0x3fe3a2b3892ee84b              # double 0.61361100000000002
	.quad	0x3fe4a9ed3953dea4              # double 0.64574299999999996
	.quad	0x3f94ea8da7f3cf70              # double 0.020426
	.quad	0x3fdfc30d306a2b17              # double 0.49628
	.quad	0x3fd8f6cacd184c27              # double 0.39006299999999999
	.quad	0x3fde258d5842b735              # double 0.47104200000000002
	.quad	0x3fec80da1a93293d              # double 0.89072899999999999
	.quad	0x3fd51ada76d97b31              # double 0.329764
	.quad	0x3fd211904b3c3e75              # double 0.28232200000000002
	.quad	0x3fed2eec7c957cd4              # double 0.91197799999999995
	.quad	0x3fdc2dbe7f2c300a              # double 0.44029200000000002
	.quad	0x3fef1ec2ce464990              # double 0.97250499999999995
	.quad	0x3fc867dfe32a0664              # double 0.19067000000000001
	.quad	0x3fe2e30a915379fb              # double 0.59021500000000005
	.quad	0x3fe093db7f173754              # double 0.51804899999999998
	.quad	0x3fe45c486ad2dcb1              # double 0.63626499999999997
	.quad	0x3fbc9741d084e832              # double 0.111683
	.quad	0x3fdbc069e7fb267c              # double 0.43361899999999998
	.quad	0x3fe99103c8e25c81              # double 0.798952
	.quad	0x3fedf566490a350d              # double 0.93620599999999998
	.quad	0x3fef776c4827b6fe              # double 0.98332799999999998
	.quad	0x3fa4af0bf1a5ca2a              # double 0.040398000000000003
	.quad	0x3fec7c5ac471b478              # double 0.89017999999999997
	.quad	0x3fe558750c1b9735              # double 0.66704799999999997
	.quad	0x3fda3b29a1b9f98b              # double 0.40986099999999998
	.quad	0x3fc0959e6256366d              # double 0.12956599999999999
	.quad	0x3f9060bb2bba98ee              # double 0.015994000000000001
	.quad	0x3fc8c6bce8533b10              # double 0.19356499999999999
	.quad	0x3fdd7b99d451fc4c              # double 0.460669
	.quad	0x3fdad25edd052935              # double 0.41909000000000002
	.quad	0x3fe781a79fec99f2              # double 0.73457700000000004
	.quad	0x3fef8aefb2aae297              # double 0.98570999999999997
	.quad	0x3fee993d5347a5b1              # double 0.956206
	.quad	0x3fe11df97aaac109              # double 0.53490899999999997
	.quad	0x3fe7221858bc59b8              # double 0.722912
	.quad	0x3fdad8b1dd5d3dc9              # double 0.41947600000000002
	.quad	0x3f8dcdf69878316a              # double 0.014553
	.quad	0x3fc42467be553ac5              # double 0.157361
	.quad	0x3fc97f737da61e0c              # double 0.19920199999999999
	.quad	0x3fd65b035bd512ec              # double 0.34930499999999998
	.quad	0x3fe9e7924af0bf1a              # double 0.80951799999999996
	.quad	0x3fe05cd2d44dca8e              # double 0.51133099999999998
	.quad	0x3f928bb0a2ca9ac3              # double 0.018110999999999999
	.quad	0x3fe96dd052934acb              # double 0.794655
	.quad	0x3fc1973d9ec70004              # double 0.13742799999999999
	.quad	0x3fb7e74afd545415              # double 0.093372999999999998
	.quad	0x3fdf387df5cf2496              # double 0.48782300000000001
	.quad	0x3fe0d143bf727137              # double 0.52554500000000004
	.quad	0x3fd6b6a1e81cb46c              # double 0.35489700000000002
	.quad	0x3fd2dce7cd035372              # double 0.29473300000000002
	.quad	0x3fe48a4c1ebc83a9              # double 0.64188199999999995
	.quad	0x3fd3a07f66e86c66              # double 0.30667100000000003
	.quad	0x3fbd25edd052934b              # double 0.11386
	.quad	0x3fe1ac929aa1d756              # double 0.55231600000000003
	.quad	0x3fedc0053e2d6239              # double 0.92969000000000002
	.quad	0x3feb9cae21101b00              # double 0.86287599999999998
	.quad	0x3fdbb4b2fa93af75              # double 0.43290400000000001
	.quad	0x3fe31abf33871609              # double 0.59701499999999996
	.quad	0x3feeb89f83be6602              # double 0.96003700000000003
	.quad	0x3fc7d6bebe1650a4              # double 0.18624099999999999
	.quad	0x3fe18854cdb7ae58              # double 0.54789200000000005
	.quad	0x3feb8759253543af              # double 0.86027200000000004
	.quad	0x3fe4c692f6e8294a              # double 0.64924000000000004
	.quad	0x3fe3cba732df505d              # double 0.61860999999999999
	.quad	0x3fb24430b178b370              # double 0.071353
	.quad	0x3feb23ca7503b81b              # double 0.84811899999999996
	.quad	0x3fe7444e0daa0cae              # double 0.72708799999999996
	.quad	0x3fe5bc2b94d94079              # double 0.67922000000000005
	.quad	0x3fd03b107746887b              # double 0.25360500000000002
	.quad	0x3fb430b178b37004              # double 0.078867999999999994
	.quad	0x3fb781e8a2ec28b3              # double 0.091826000000000005
	.quad	0x3fd343d46b26bf87              # double 0.30101499999999998
	.quad	0x3fefff0aa21a719b              # double 0.99988299999999996
	.quad	0x3fcd82dbe7f2c301              # double 0.23055600000000001
	.quad	0x3fe0b50d2806af47              # double 0.52210100000000004
	.quad	0x3fc800fba8826aa9              # double 0.18753
	.quad	0x3fd356f32bdc26dd              # double 0.30218200000000001
	.quad	0x3fd56d6dc1a47a9e              # double 0.33480399999999999
	.quad	0x3fee56d3b6cbd988              # double 0.94809900000000002
	.quad	0x3fee72ead9274e23              # double 0.95152800000000004
	.quad	0x3fe3882491afc04d              # double 0.61036900000000005
	.quad	0x3fd1f01b866e43aa              # double 0.28027999999999997
	.quad	0x3fcf4e6e221c8a7a              # double 0.24458099999999999
	.quad	0x3fe2539fba450acc              # double 0.57270799999999999
	.quad	0x3fe0e25204af9229              # double 0.52762699999999996
	.quad	0x3fda3c2dadb8348f              # double 0.40992299999999998
	.quad	0x3fe486705c896dd2              # double 0.64141099999999995
	.quad	0x3fee20407cc7d1bb              # double 0.94143699999999997
	.quad	0x3fe4351159c49774              # double 0.63147799999999998
	.quad	0x3fb08b6523704791              # double 0.064627000000000004
	.quad	0x3fdfd13d74d594f2              # double 0.49714599999999998
	.quad	0x3fb4af922962cfd9              # double 0.080804000000000001
	.quad	0x3fb77a0b5ed8d36b              # double 0.091705999999999996
	.quad	0x3fde36b4c7f34938              # double 0.47208899999999998
	.quad	0x3fe6922d948dc11e              # double 0.70534399999999997
	.quad	0x3fef0ee8d10f51ad              # double 0.97057000000000004
	.quad	0x3fdf446f9b994e1a              # double 0.48855199999999999
	.quad	0x3fd99945b6c3760c              # double 0.39998
	.quad	0x3fcd81f969e3c969              # double 0.23052900000000001
	.quad	0x3fc163b256ffc116              # double 0.135855
	.quad	0x3fe1eef1bac2df0d              # double 0.56041799999999997
	.quad	0x3fe10d6f544bb1af              # double 0.53288999999999997
	.quad	0x3fe2d7f3061c79b3              # double 0.58886099999999997
	.quad	0x3fe451efb6dca07f              # double 0.63500199999999996
	.quad	0x3fd5c67dfe32a066              # double 0.34023999999999999
	.quad	0x3fe3d9a95421c044              # double 0.62031999999999998
	.quad	0x3f98b7a1c25d0742              # double 0.024138
	.quad	0x3fd04ce8101f31f4              # double 0.25469399999999998
	.quad	0x3fe650268900c522              # double 0.69728400000000001
	.quad	0x3fd4478c868b9fdc              # double 0.31686700000000001
	.quad	0x3fd34d338f798527              # double 0.30158699999999999
	.quad	0x3fdaa7b0b3919264              # double 0.41648499999999999
	.quad	0x3fe2429bf162ae4b              # double 0.570631
	.quad	0x3fb1ec7000431bdf              # double 0.070014000000000007
	.quad	0x3fe313ccd0fe8ab5              # double 0.596167
	.quad	0x3fe2e440f2389720              # double 0.59036299999999997
	.quad	0x3fdc7fbacb428912              # double 0.44529600000000003
	.quad	0x3fcf7689ca18bd66              # double 0.245805
	.quad	0x3f9641b328b6d86f              # double 0.021735000000000001
	.quad	0x3fea4a07f66e86c6              # double 0.82153699999999996
	.quad	0x3fe30665e02ea961              # double 0.59453100000000003
	.quad	0x3fbd5a4acf312b1b              # double 0.114659
	.quad	0x3fee8305d95dd4c7              # double 0.95349399999999995
	.quad	0x3fe3eddce7cd0353              # double 0.62278599999999995
	.quad	0x3fa51244a6223e18              # double 0.041154999999999997
	.quad	0x3fd5d8b60f1b25f6              # double 0.34135199999999999
	.quad	0x3fea99fe43675ddd              # double 0.83129799999999998
	.quad	0x3fd591148fd9fd37              # double 0.33698
	.quad	0x3fe86fd21ff2e48f              # double 0.76365000000000005
	.quad	0x3fe869d7342edbb6              # double 0.76292000000000004
	.quad	0x3fe46787ce95faa9              # double 0.63763800000000004
	.quad	0x3f8fd36f7e3d1cc1              # double 0.01554
	.quad	0x3fd1d96638433d6c              # double 0.27889399999999998
	.quad	0x3fb0667f90d9d777              # double 0.064063999999999996
	.quad	0x3fa173fb7a5f41af              # double 0.034088
	.quad	0x3fef78e1932d6ece              # double 0.98350599999999999
	.quad	0x3fe73599aa60913a              # double 0.72529299999999997
	.quad	0x3fc978e5c4eb56fc              # double 0.19900200000000001
	.quad	0x3fd92263d816aceb              # double 0.39272400000000002
	.quad	0x3fee02363b256ffc              # double 0.93776999999999999
	.quad	0x3fdefddebd9018e7              # double 0.48424499999999998
	.quad	0x3fb04790b8498809              # double 0.063591999999999996
	.quad	0x3fdcd627bf61aa3f              # double 0.450571
	.quad	0x3fa7ce0fc2eba27b              # double 0.046494000000000001
	.quad	0x3fd63c792d1287c2              # double 0.347441
	.quad	0x3fc77b17ce52deca              # double 0.183444
	.quad	0x3feae33482be8bc1              # double 0.84023499999999995
	.quad	0x3fe4d2b4d8ba40d9              # double 0.65072099999999999
	.quad	0x3fcc5ebb7739f341              # double 0.221641
	.quad	0x3fde2e557de0d66f              # double 0.471578
	.quad	0x3feacbec679cc74c              # double 0.83739300000000005
	.quad	0x3fdfc957cd466f50              # double 0.49666399999999999
	.quad	0x3fe852d87f88765c              # double 0.76011300000000003
	.quad	0x3fb13a71151611ba              # double 0.067297999999999997
	.quad	0x3fedbf705857afea              # double 0.92961899999999997
	.quad	0x3fcd1fddebd9018e              # double 0.22753499999999999
	.quad	0x3fd55aaf78feef5f              # double 0.33366000000000001
	.quad	0x3fed46cb966be7b0              # double 0.91489200000000004
	.quad	0x3fe12d8c2a454de8              # double 0.53681000000000001
	.quad	0x3fdeac57e23f24d9              # double 0.479269
	.quad	0x3fe8f5b1c8648840              # double 0.77999200000000002
	.quad	0x3fb68155d5f56a7b              # double 0.087911000000000003
	.quad	0x3fea5432873bc904              # double 0.822778
	.quad	0x3fe2af07bfe7e1fc              # double 0.583866
	.quad	0x3fd45e529bae46d0              # double 0.31825700000000001
	.quad	0x3fb01083dbc23316              # double 0.062752000000000002
	.quad	0x3fd9c0f451761459              # double 0.40240199999999998
	.quad	0x3fefc8ffb8b26395              # double 0.993286
	.quad	0x3fefc65e89225311              # double 0.99296499999999998
	.quad	0x3fe2d34bd76ee73e              # double 0.58829299999999995
	.quad	0x3fd95c182ecaeea6              # double 0.39624599999999999
	.quad	0x3fe33415b1422ccb              # double 0.60010799999999997
	.quad	0x3feb17720c8cd63d              # double 0.84661200000000003
	.quad	0x3fdeb5e0f7fcfc40              # double 0.47985100000000003
	.quad	0x3fd6bae46cfc829d              # double 0.355157
	.quad	0x3fee3584b1ab0857              # double 0.94403300000000001
	.quad	0x3fdf2c3c9eecbfb1              # double 0.48707499999999998
	.quad	0x3fcc1e3eaf6837f8              # double 0.21967300000000001
	.quad	0x3fd2e5a78f25a251              # double 0.295267
	.quad	0x3feb7f06705c896e              # double 0.85925600000000002
	.quad	0x3fbe158750c1b973              # double 0.117516
	.quad	0x3fe406705c896dd2              # double 0.62578599999999995
	.quad	0x3fea823a6ce3582a              # double 0.82839700000000005
	.quad	0x3fdfa50d6b228dca              # double 0.49444900000000003
	.quad	0x3fdd3dddb1209edc              # double 0.456901
	.quad	0x3fd18c21e1d2178f              # double 0.27417799999999998
	.quad	0x3fe90fc2eba27aea              # double 0.78317400000000004
	.quad	0x3fef8a3b57c4e2f3              # double 0.98562399999999994
	.quad	0x3fb242aed1394318              # double 0.071330000000000005
	.quad	0x3fef4ca925fe974a              # double 0.97810799999999998
	.quad	0x3fe84a7935760392              # double 0.75909099999999996
	.quad	0x3fc5cad9ad85dfa8              # double 0.17025299999999999
	.quad	0x3fe046d612c6ac21              # double 0.50864699999999996
	.quad	0x3fe1cfa8b4bf8fcd              # double 0.55659899999999995
	.quad	0x3fa7965b20b8066c              # double 0.046068999999999999
	.quad	0x3fe41635610adcd3              # double 0.62771100000000002
	.quad	0x3fd1a2e3c536d656              # double 0.27556700000000001
	.quad	0x3fd7640a6b93ccd1              # double 0.365481
	.quad	0x3fde548a9bcfd4bf              # double 0.47391
	.quad	0x3fca90b417ca2121              # double 0.207541
	.quad	0x3feae7c8d195896a              # double 0.84079400000000004
	.quad	0x3fe741919ac79703              # double 0.72675400000000001
	.quad	0x3feacfbb9496249a              # double 0.83785799999999999
	.quad	0x3fd4deb95e5aff2a              # double 0.32609399999999999
	.quad	0x3fe8c7e49b1fab97              # double 0.77440100000000001
	.quad	0x3f99310129cbab65              # double 0.024601000000000001
	.quad	0x3fe4bc31df761cbd              # double 0.64797300000000002
	.quad	0x3fe262cdc011d367              # double 0.57456099999999999
	.quad	0x3fdd0539fba450ad              # double 0.45344400000000001
	.quad	0x3fce4cf8d716d2aa              # double 0.23672399999999999
	.quad	0x3fc05f4a1272c94b              # double 0.12790799999999999
	.quad	0x3fdc4d1a65061416              # double 0.44220599999999999
	.quad	0x3fd7b4edb2f661f2              # double 0.37041800000000003
	.quad	0x3fdc82235b4edb2f              # double 0.44544299999999998
	.quad	0x3fc1acffa7eb6bf4              # double 0.13809199999999999
	.quad	0x3fb0d39da16616b5              # double 0.065728999999999996
	.quad	0x3fefa51c193b3a69              # double 0.98890500000000003
	.quad	0x3fe7bf8db4890929              # double 0.74213300000000004
	.quad	0x3fc310129cbab64a              # double 0.148928
	.quad	0x3fe19af1886df82b              # double 0.55016399999999999
	.quad	0x3fe50bd017dae819              # double 0.65769200000000005
	.quad	0x3fd0a0a0f4d7add1              # double 0.25980399999999998
	.quad	0x3fa2b4fa48301a7a              # double 0.036537
	.quad	0x3f83dfb0d51f81a6              # double 0.0097040000000000008
	.quad	0x3fee658a32f44913              # double 0.94989500000000004
	.quad	0x3fc19bd4067cf1c3              # double 0.137568
	.quad	0x3fd87c3504c48adf              # double 0.382581
	.quad	0x3fe9dd76683c297c              # double 0.808284
	.quad	0x3febd3671ac14c66              # double 0.869556
	.quad	0x3fe4963fdd65a145              # double 0.64334100000000005
	.quad	0x3fe4517614595358              # double 0.63494399999999995
	.quad	0x3febc5da6a444178              # double 0.86790199999999995
	.quad	0x3fe38e7bc3c5bd0e              # double 0.61114299999999999
	.quad	0x3fe9d2ce032db1ea              # double 0.80698300000000001
	.quad	0x3fcff950b955f783              # double 0.24979599999999999
	.quad	0x3fd9b634dad31fcd              # double 0.40174599999999999
	.quad	0x3fb4e7cd03537197              # double 0.081661999999999998
	.quad	0x3fe856c508b32ce9              # double 0.76059200000000005
	.quad	0x3fe9b6dca07f66e8              # double 0.80357199999999995
	.quad	0x3fe20331e3a7daa5              # double 0.56289
	.quad	0x3fd9b5b70691ea79              # double 0.40171600000000002
	.quad	0x3fc7de9c0229a5ec              # double 0.18648100000000001
	.quad	0x3fd88bd66277c45d              # double 0.38353500000000001
	.quad	0x3fe268576cce5f74              # double 0.575237
	.quad	0x3fe2749adc8fb86f              # double 0.57673399999999997
	.quad	0x3fe30da1a93293d1              # double 0.595414
	.quad	0x3fe743fe5c91d14e              # double 0.72704999999999997
	.quad	0x3f88d36b4c7f3494              # double 0.012122000000000001
	.quad	0x3fecaa737110e454              # double 0.89580700000000001
	.quad	0x3fb7e931876188b1              # double 0.093401999999999999
	.quad	0x3fd7992428d434a0              # double 0.36872199999999999
	.quad	0x3fda087442c7fbad              # double 0.40676600000000002
	.quad	0x3fee80c308feac43              # double 0.95321800000000001
	.quad	0x3fa7442c7fbacb43              # double 0.045442000000000003
	.quad	0x3fe825918a009f62              # double 0.75458599999999998
	.quad	0x3fa368ad68837718              # double 0.037907999999999997
	.quad	0x3fe63ecaab8a5ce6              # double 0.69516500000000003
	.quad	0x3fda053198288052              # double 0.40656700000000001
	.quad	0x3fdca836eb4e9814              # double 0.44776700000000003
	.quad	0x3fe8c6bce8533b10              # double 0.77425999999999995
	.quad	0x3fc5985ad538ac19              # double 0.168712
	.quad	0x3fe0e0f3cb3e5754              # double 0.52746000000000004
	.quad	0x3fdc756861e92924              # double 0.44466600000000001
	.quad	0x3fe16a033e78e193              # double 0.54419099999999998
	.quad	0x3fd85069a4df47fa              # double 0.37990800000000002
	.quad	0x3feab73f316e3715              # double 0.83486899999999997
	.quad	0x3fe1829cfdd22856              # double 0.54719399999999996
	.quad	0x3fc5c3ce2089e343              # double 0.17003799999999999
	.quad	0x3feb879c4113c686              # double 0.86030399999999996
	.quad	0x3fa6d19dece57109              # double 0.044568000000000003
	.quad	0x3fcd9b024f6598e1              # double 0.231293
	.quad	0x3fefc586876e1deb              # double 0.99286200000000002
	.quad	0x3fb80d801b435265              # double 0.093955999999999998
	.quad	0x3fea0dc768dfbd6a              # double 0.81418199999999996
	.quad	0x3fb6d0e560418937              # double 0.089124999999999996
	.quad	0x3fefc1db0142f61f              # double 0.99241400000000001
	.quad	0x3fea47dc37a3db3c              # double 0.821272
	.quad	0x3fdaac8605681ecd              # double 0.41677999999999998
	.quad	0x3febd805e5f30e80              # double 0.87012
	.quad	0x3fddeab7995ee137              # double 0.46745100000000001
	.quad	0x3fc9a62ed352220c              # double 0.20038400000000001
	.quad	0x3fe514d2f5dbb9d0              # double 0.65879200000000004
	.quad	0x3fdb89fc6da44849              # double 0.43029699999999999
	.quad	0x3fee8c60cbf2b23a              # double 0.95463600000000004
	.quad	0x3fdded5ae1cde5d2              # double 0.46761200000000003
	.quad	0x3fdc2c4d65e46067              # double 0.44020399999999998
	.quad	0x3fdfbb23571d1d47              # double 0.49579699999999999
	.quad	0x3fe02ff6d330941d              # double 0.50585500000000005
	.quad	0x3fdc7143393ab431              # double 0.444413
	.quad	0x3fde64840e1719f8              # double 0.474885
	.quad	0x3feb673a365cb35f              # double 0.85635099999999997
	.quad	0x3fd725204af92296              # double 0.36164099999999999
	.quad	0x3fa1c432ca57a787              # double 0.034700000000000002
	.quad	0x3feb305319828805              # double 0.84964899999999999
	.quad	0x3fb693e1c9b41398              # double 0.088193999999999995
	.quad	0x3fdf003eea209aaa              # double 0.48438999999999999
	.quad	0x3fd28c2e770bd018              # double 0.28980600000000001
	.quad	0x3fa983947496aad2              # double 0.049832000000000001
	.quad	0x3fe662ed352220bc              # double 0.69957599999999998
	.quad	0x3febc9795b35b0bc              # double 0.868344
	.quad	0x3feda9c347e8ccde              # double 0.92697300000000005
	.quad	0x3fecb2e3821af7d3              # double 0.896837
	.quad	0x3fbc9fb6134ce3de              # double 0.11181199999999999
	.quad	0x3febebb1290257c9              # double 0.87252099999999999
	.quad	0x3fe825657fb69985              # double 0.75456500000000004
	.quad	0x3fc5d2e946801712              # double 0.17049900000000001
	.quad	0x3fe53886594af4f1              # double 0.66315000000000002
	.quad	0x3fe46675147f1306              # double 0.63750700000000005
	.quad	0x3fab71327243137b              # double 0.053598
	.quad	0x3fe3eb24a6a875d5              # double 0.62245399999999995
	.quad	0x3fdd0fecdd0d8cb0              # double 0.45409699999999997
	.quad	0x3fea5666a98244e9              # double 0.82304699999999997
	.quad	0x3fb9b163baba7b91              # double 0.10036299999999999
	.quad	0x3fc60e94ee392e1f              # double 0.17232
	.quad	0x3fc9a82e87d2c7b9              # double 0.20044500000000001
	.quad	0x3fa73de1e2de8709              # double 0.045393999999999997
	.quad	0x3fa3ce2089e34331              # double 0.038682000000000001
	.quad	0x3fef2bfdb4cc2507              # double 0.97411999999999998
	.quad	0x3fc6b97fe8ee6b83              # double 0.177536
	.quad	0x3f82c0e7bc3c5bd1              # double 0.0091570000000000002
	.quad	0x3fe4db6c3760bf5d              # double 0.65178499999999995
	.quad	0x3feb16ce789e774f              # double 0.84653400000000001
	.quad	0x3fef66490a350d28              # double 0.98123599999999999
	.quad	0x3fd230121682f944              # double 0.28418399999999999
	.quad	0x3fe331d92b7fe08b              # double 0.59983500000000001
	.quad	0x3fde44aa53fc0097              # double 0.472941
	.quad	0x3feca82e87d2c7b9              # double 0.89553000000000005
	.quad	0x3fe23925bb7b6bb1              # double 0.56947599999999998
	.quad	0x3fd9f8bdec5f394b              # double 0.40580699999999997
	.quad	0x3fe9f17df19d66ae              # double 0.81072900000000003
	.quad	0x3fb4d25edd052935              # double 0.081335000000000005
	.quad	0x3fd2beb18116ebd5              # double 0.29288900000000001
	.quad	0x3fcc0d130df9bdc7              # double 0.21914900000000001
	.quad	0x3fe88d77b7c7820a              # double 0.76726899999999998
	.quad	0x3fe3671ac14c660a              # double 0.60633599999999999
	.quad	0x3fe9573215fcc187              # double 0.79189399999999999
	.quad	0x3fe39c5a3e39f773              # double 0.61283600000000005
	.quad	0x3fcdf383f0bae89f              # double 0.23399400000000001
	.quad	0x3fefeaad1d041cc5              # double 0.99739699999999997
	.quad	0x3fc10d173fb7a5f4              # double 0.133212
	.quad	0x3fc109b738e6d15b              # double 0.13310900000000001
	.quad	0x3fe14f5d35653c9b              # double 0.54093800000000003
	.quad	0x3f88e53eb399f5e0              # double 0.012156
	.quad	0x3fd6976ff3ade226              # double 0.352993
	.quad	0x3feb87e5a78f25a2              # double 0.86033899999999996
	.quad	0x3fd258a761027957              # double 0.286661
	.quad	0x3fe974299d883ba3              # double 0.79542999999999997
	.quad	0x3fd9d84901d19158              # double 0.40382600000000002
	.quad	0x3fed4e5b4245f5ae              # double 0.91581500000000005
	.quad	0x3fcb457c0b135979              # double 0.213058
	.quad	0x3fca956c0d6f544c              # double 0.20768500000000001
	.quad	0x3fee7b6dca07f66f              # double 0.95256700000000005
	.quad	0x3fda379fa97e132b              # double 0.40964499999999998
	.quad	0x3fc39b5e95b78cca              # double 0.15317900000000001
	.quad	0x3fe6faacd9e83e42              # double 0.71809999999999996
	.quad	0x3fee0130164840e1              # double 0.93764499999999995
	.quad	0x3feb97c1bda5119d              # double 0.86227500000000001
	.quad	0x3feece7253da72a8              # double 0.96270100000000002
	.quad	0x3fee2c12ad81adeb              # double 0.94288000000000005
	.quad	0x3fc0c25072085b18              # double 0.13092999999999999
	.quad	0x3fbffc6540cc78ea              # double 0.124945
	.quad	0x3feba0d9945b6c37              # double 0.86338499999999996
	.quad	0x3fe3cdc22ab25b31              # double 0.61886699999999994
	.quad	0x3fcbc2224edf6124              # double 0.216862
	.quad	0x3fe4355043e5321e              # double 0.63150799999999996
	.quad	0x3fe7f2abef06b378              # double 0.74837299999999995
	.quad	0x3fe958969a0ad8a1              # double 0.79206399999999999
	.quad	0x3fdf280f12c27a63              # double 0.48681999999999997
	.quad	0x3fe44804102ff8ec              # double 0.63379099999999999
	.quad	0x3fee6d30f062d40b              # double 0.95082900000000004
	.quad	0x3fc6c471b4784231              # double 0.17787
	.quad	0x3fefbab649d388a9              # double 0.99154200000000003
	.quad	0x3feb73343fa2ad3f              # double 0.85781300000000005
	.quad	0x3fedd1dcd7060bb3              # double 0.93186800000000003
	.quad	0x3fda3682730c6717              # double 0.40957700000000002
	.quad	0x3fe0a9a8049667b6              # double 0.52071000000000001
	.quad	0x3febe37de939eadd              # double 0.87151999999999996
	.quad	0x3fd46b59146e4c0e              # double 0.319052
	.quad	0x3fa3a1b1960fa15e              # double 0.038343000000000002
	.quad	0x3fe06351deefe500              # double 0.51212400000000002
	.quad	0x3fc76f75d9a0f0a6              # double 0.183089
	.quad	0x3fa775b813016484              # double 0.04582
	.quad	0x3febbe4cd7492791              # double 0.86697999999999997
	.quad	0x3fd3344c37e6f71a              # double 0.30006699999999997
	.quad	0x3feeff4fd6d7e88a              # double 0.96866600000000003
	.quad	0x3fe4ed117b5286b6              # double 0.65393900000000005
	.quad	0x3fd4914f483cafb4              # double 0.32136900000000002
	.quad	0x3f9601bc98a222d5              # double 0.021491
	.quad	0x3fd9a8826aa8eb46              # double 0.40090999999999999
	.quad	0x3febac4b4d056c51              # double 0.86478200000000005
	.quad	0x3fe627cbf6e3f78c              # double 0.69235800000000003
	.quad	0x3fe110dbf0563ed1              # double 0.533308
	.quad	0x3fded6e8af81626b              # double 0.48186699999999999
	.quad	0x3fe18e5604189375              # double 0.54862500000000003
	.quad	0x3fb5695d91ab8e8f              # double 0.083639000000000005
	.quad	0x3fe39be4cd749279              # double 0.61277999999999999
	.quad	0x3fe7ba42f1ed17c6              # double 0.74148700000000001
	.quad	0x3fe1c86ad2dcb146              # double 0.55571499999999996
	.quad	0x3fdbd20296b3354c              # double 0.434693
	.quad	0x3fe6e1975f2cb641              # double 0.71503799999999995
	.quad	0x3fe2a2467be553ac              # double 0.58230899999999997
	.quad	0x3fab211cb039ef0f              # double 0.052986999999999999
	.quad	0x3fd7d1f601797cc4              # double 0.37219000000000002
	.quad	0x3fcf0fe8ab4fa483              # double 0.242673
	.quad	0x3fcc56ffc115df65              # double 0.22140499999999999
	.quad	0x3fa5436b8f9b1316              # double 0.041529999999999997
	.quad	0x3fc49de050374ff8              # double 0.16106799999999999
	.quad	0x3fb0fc504816f007              # double 0.066350000000000006
	.quad	0x3fd9669ced0b30b6              # double 0.39688800000000002
	.quad	0x3feda2d2fe3f35a0              # double 0.926126
	.quad	0x3fced04e618ce2d2              # double 0.240732
	.quad	0x3fb72495e17e34b9              # double 0.090401999999999996
	.quad	0x3fdc8b9fdbd2fa0d              # double 0.44602199999999997
	.quad	0x3fe851394317acc5              # double 0.75991500000000001
	.quad	0x3fe0bfc2224edf61              # double 0.52340799999999998
	.quad	0x3f8593e5fb71fbc6              # double 0.010536
	.quad	0x3fe1666a98244e94              # double 0.54375200000000001
	.quad	0x3fecc9081c2e33f0              # double 0.89954000000000001
	.quad	0x3fe49220ff540896              # double 0.64283800000000002
	.quad	0x3fe513122b7baecd              # double 0.658578
	.quad	0x3fd79f77292c4934              # double 0.36910799999999999
	.quad	0x3fb843e5321e603d              # double 0.094785999999999995
	.quad	0x3fbc6c11a11233df              # double 0.111024
	.quad	0x3fccef0ae536501e              # double 0.226045
	.quad	0x3fde7b9e060fe47a              # double 0.47629500000000002
	.quad	0x3fdaaa0cae642bfa              # double 0.41662900000000003
	.quad	0x3fb7ce52deca2553              # double 0.092992000000000005
	.quad	0x3fd6b44e50c5eb31              # double 0.35475499999999999
	.quad	0x3fe688df37329c34              # double 0.70420799999999995
	.quad	0x3fd76dd26b723ee2              # double 0.36607800000000001
	.quad	0x3fda5e0b4e11dbcb              # double 0.41199000000000002
	.quad	0x3fefcffeb074a772              # double 0.99414000000000002
	.quad	0x3fc535653c9abb02              # double 0.16569200000000001
	.quad	0x3fc39192641b328b              # double 0.15287999999999999
	.quad	0x3fe22919695d91ac              # double 0.56751700000000005
	.quad	0x3fbaf74cd31769a9              # double 0.105336
	.quad	0x3fdb5accd530489d              # double 0.42741699999999999
	.quad	0x3fe334a66559f6ec              # double 0.60017699999999996
	.quad	0x3fe8a78af3e468cb              # double 0.77045200000000003
	.quad	0x3fdadef416bdb1a7              # double 0.41985800000000001
	.quad	0x3fde595feda66128              # double 0.47420499999999999
	.quad	0x3fd48c26138fffbd              # double 0.32105400000000001
	.quad	0x3fef96feb4a6655a              # double 0.987182
	.quad	0x3fd32f9873ffac1d              # double 0.29977999999999999
	.quad	0x3fe8008c8259e1f4              # double 0.75006700000000003
	.quad	0x3fef718655193709              # double 0.98260800000000003
	.quad	0x3fd9e086bdf4c2b5              # double 0.40432899999999999
	.quad	0x3fd3b588e368f084              # double 0.30795499999999998
	.quad	0x3fead6605ee568a5              # double 0.838669
	.quad	0x3fdae9ff0cbaf966              # double 0.42053200000000002
	.quad	0x3fe994c447c30d30              # double 0.79940999999999995
	.quad	0x3fe15df43c7d5ed0              # double 0.54271899999999995
	.quad	0x3fec5d462c343b71              # double 0.88638600000000001
	.quad	0x3fec4cff21b3aeef              # double 0.88439900000000005
	.quad	0x3fc4016052502eec              # double 0.15629199999999999
	.quad	0x3fc15fe542e557de              # double 0.135739
	.quad	0x3fe2669ad42c3c9f              # double 0.57502500000000001
	.quad	0x3fe5c60cbf2b239a              # double 0.68042599999999998
	.quad	0x3fea4cd0fe8ab4fa              # double 0.82187699999999997
	.quad	0x3fde101b003686a5              # double 0.46973300000000001
	.quad	0x3fda418d6909aed5              # double 0.41025099999999998
	.quad	0x3fd853005814940c              # double 0.38006600000000001
	.quad	0x3fcd711947cfa26a              # double 0.230014
	.quad	0x3feb3547e06961c3              # double 0.85025399999999995
	.quad	0x3fe5333764f11b61              # double 0.66250200000000004
	.quad	0x3fcc12cf0f9d2bf5              # double 0.21932399999999999
	.quad	0x3fefeb1c432ca57a              # double 0.99744999999999995
	.quad	0x3fe579db22d0e560              # double 0.67112499999999997
	.quad	0x3fd06601bc98a223              # double 0.25622600000000001
	.quad	0x3fd2bcc6c54bcf0b              # double 0.29277199999999998
	.quad	0x3fe4ab4528283d36              # double 0.64590700000000001
	.quad	0x3fd3cf7878b7a1c2              # double 0.30953799999999998
	.quad	0x3feb949e8815e397              # double 0.86189199999999999
	.quad	0x3fec6f60e0eb67c3              # double 0.88859600000000005
	.quad	0x3fe75b22d0e56042              # double 0.72987500000000005
	.quad	0x3fd2c0f88333fc87              # double 0.29302800000000001
	.quad	0x3faf1da37ef5a965              # double 0.060773000000000001
	.quad	0x3fe1ccbe1eb4202e              # double 0.55624300000000004
	.quad	0x3fec7b395c422036              # double 0.890042
	.quad	0x3fec4a4095f2452c              # double 0.88406399999999996
	.quad	0x3fd87531db445ed5              # double 0.38215300000000002
	.quad	0x3fd85cb790fb6567              # double 0.38065900000000003
	.quad	0x3fe49f127f5e84f1              # double 0.64441800000000005
	.quad	0x3fde3e5fb71fbc5e              # double 0.472557
	.quad	0x3f9ac710cb295e9e              # double 0.02615
	.quad	0x3fe598090b417ca2              # double 0.67480899999999999
	.quad	0x3fd7696e58a32f45              # double 0.36581000000000002
	.quad	0x3fd5146e4c0df58c              # double 0.329372
	.quad	0x3fd91d323fee2c99              # double 0.39240700000000001
	.quad	0x3fd6d37c1376d549              # double 0.35665799999999998
	.quad	0x3faf58e219652bd4              # double 0.061225000000000002
	.quad	0x3fccd05f28848388              # double 0.225109
	.quad	0x3fda4e09784ec637              # double 0.41101300000000002
	.quad	0x3fd78dac258d5843              # double 0.36802200000000002
	.quad	0x3fedc7fdc5931ca8              # double 0.93066300000000002
	.quad	0x3fc764c729f59cd0              # double 0.18276300000000001
	.quad	0x3fa4fa69be09bb6b              # double 0.040973000000000002
	.quad	0x3fed8a0f4d7add16              # double 0.92310300000000001
	.quad	0x3fe0c0cc78e9f6a9              # double 0.52353499999999997
	.quad	0x3fe38e64b2314014              # double 0.61113200000000001
	.quad	0x3fefe01ffb480a5b              # double 0.99610900000000002
	.quad	0x3fd5942d490e66cb              # double 0.337169
	.quad	0x3fcd6cefed63454a              # double 0.22988700000000001
	.quad	0x3fd2ef0ae536501e              # double 0.29583999999999999
	.quad	0x3fe3bb2fec56d5d0              # double 0.61660000000000004
	.quad	0x3fbe1101b003686a              # double 0.117447
	.quad	0x3fee449ba5e353f8              # double 0.94587500000000002
	.quad	0x3fd2f49cf56eac86              # double 0.29618
	.quad	0x3fbb3d07c84b5dcc              # double 0.10639999999999999
	.quad	0x3fec1f3c70c996b7              # double 0.87881299999999996
	.quad	0x3fcfd0bfa0945f9e              # double 0.248558
	.quad	0x3fd1ad4b2745bf27              # double 0.276202
	.quad	0x3fe9bd70a3d70a3d              # double 0.80437499999999995
	.quad	0x3fe5a6266fd651b1              # double 0.67653200000000002
	.quad	0x3fd76a6e32e3821b              # double 0.365871
	.quad	0x3fe04c70867ad8e4              # double 0.50933099999999998
	.quad	0x3fef2b1b36bd2b6f              # double 0.97401199999999998
	.quad	0x3fd26edaa92e6213              # double 0.28801599999999999
	.quad	0x3feb56c7219220ff              # double 0.85434299999999996
	.quad	0x3fa5bca9691a75cd              # double 0.042455
	.quad	0x3fb5dc2f405f6ba0              # double 0.085390999999999995
	.quad	0x3fee93165d3996fb              # double 0.95545500000000005
	.quad	0x3fe8aa1f8e3ac0c6              # double 0.77076699999999998
	.quad	0x3fdd9f3c70c996b7              # double 0.46284399999999998
	.quad	0x3fb59c7bcc2938de              # double 0.084418999999999994
	.quad	0x3fe729e4d5d80e49              # double 0.72386399999999995
	.quad	0x3f746b26bf8769ec              # double 0.0049849999999999998
	.quad	0x3f9a86940357a355              # double 0.025904
	.quad	0x3fa5629d8409e55c              # double 0.041768
	.quad	0x3fee1ef30a4e379b              # double 0.94127799999999995
	.quad	0x3fd66ab5807fed20              # double 0.35026299999999999
	.quad	0x3fe240af1cb89d6b              # double 0.57039600000000001
	.quad	0x3fe94ebbba55d1c4              # double 0.79086100000000003
	.quad	0x3fdf9b1b79d909f2              # double 0.493842
	.quad	0x3fedc197e5647347              # double 0.92988199999999999
	.quad	0x3fdac06e19b90eaa              # double 0.41799500000000001
	.quad	0x3fcabe6a337a80d0              # double 0.20893600000000001
	.quad	0x3fe0b4b51372a38c              # double 0.52205900000000005
	.quad	0x3fea948ba83f4eca              # double 0.83063299999999995
	.quad	0x3fcae789e774eebf              # double 0.21019099999999999
	.quad	0x3fe1a756861e9292              # double 0.55167699999999997
	.quad	0x3fdaf5903a7546d4              # double 0.421238
	.quad	0x3fe43ae89eba6aca              # double 0.63219099999999995
	.quad	0x3fc50f733a8a3f8a              # double 0.16453400000000001
	.quad	0x3fecbbcb1cc96463              # double 0.89792400000000006
	.quad	0x3fd936e71cda2b5a              # double 0.39397599999999999
	.quad	0x3fb1028a1dfb938a              # double 0.066445000000000004
	.quad	0x3fef1bcba3012168              # double 0.97214299999999997
	.quad	0x3fee9ecf63800219              # double 0.95688600000000001
	.quad	0x3fcf87b56b873797              # double 0.24632899999999999
	.quad	0x3fd9727136a400fc              # double 0.39761000000000002
	.quad	0x3fda242070b8cfc0              # double 0.40845500000000001
	.quad	0x3fc3d2d01c0ca601              # double 0.15487100000000001
	.quad	0x3fadfb506dd69d30              # double 0.058557999999999999
	.quad	0x3fe8031f03d145d8              # double 0.75038099999999996
	.quad	0x3fe6ad2dcb1465e9              # double 0.70864000000000005
	.quad	0x3fd9f73c0c1fc8f3              # double 0.40571499999999999
	.quad	0x3fe82908a265f0f6              # double 0.75500900000000004
	.quad	0x3fe2671cda2b5a21              # double 0.57508700000000001
	.quad	0x3fdda12f901083dc              # double 0.46296300000000001
	.quad	0x3fe4593e5fb71fbc              # double 0.63589399999999996
	.quad	0x3fe52b063e07a28c              # double 0.66150200000000003
	.quad	0x3fc02e4d1a650614              # double 0.126413
	.quad	0x3fd9eeae9ee45c36              # double 0.40519300000000003
	.quad	0x3fe3cf28c79f6662              # double 0.61903799999999998
	.quad	0x3fc62ae4b0186120              # double 0.173184
	.quad	0x3fc72c061847f562              # double 0.181031
	.quad	0x3fe4cd573647baaa              # double 0.65006600000000003
	.quad	0x3fe3b5eb7457c0b1              # double 0.61595699999999998
	.quad	0x3fd7162ae4b01861              # double 0.36072799999999999
	.quad	0x3fdbb6dca07f66e8              # double 0.43303599999999998
	.quad	0x3fca39f77292c493              # double 0.20489399999999999
	.quad	0x3fd0cef240fa9c13              # double 0.262631
	.quad	0x3fec20620ab71327              # double 0.87895299999999998
	.quad	0x3fe12becedd48451              # double 0.53661199999999998
	.quad	0x3fe9db445ed4a1ad              # double 0.80801599999999996
	.quad	0x3fdf794a6eb91b3f              # double 0.49177799999999999
	.quad	0x3fed60fc2eba27af              # double 0.91808900000000004
	.quad	0x3fecae90364388ec              # double 0.89630900000000002
	.quad	0x3fc1ebb7739f340d              # double 0.14000599999999999
	.quad	0x3fcc65625a682b63              # double 0.22184400000000001
	.quad	0x3fe54adff822bbed              # double 0.66539000000000004
	.quad	0x3fefb1d712a0ec74              # double 0.99045899999999997
	.quad	0x3fe81fc6da448494              # double 0.75387899999999996
	.quad	0x3fe765082cf52b91              # double 0.73108300000000004
	.quad	0x3fd979357603925c              # double 0.39802300000000002
	.quad	0x3fe034a87e38eb03              # double 0.50642799999999999
	.quad	0x3fec8f55de58e64b              # double 0.89249699999999998
	.quad	0x3fe8265492ff4ba5              # double 0.75467899999999999
	.quad	0x3fe3e0ce0b912dba              # double 0.62119199999999997
	.quad	0x3fe08909289dadfb              # double 0.51672799999999997
	.quad	0x3fbff9830e3cd9a5              # double 0.124901
	.quad	0x3fdeb12d3415b142              # double 0.47956399999999999
	.quad	0x3fdc106ee30caa32              # double 0.43850299999999998
	.quad	0x3fe597225b749add              # double 0.67469900000000005
	.quad	0x3fefcfa8b4bf8fcd              # double 0.99409899999999995
	.quad	0x3fe0784cad57bc7f              # double 0.51468499999999995
	.quad	0x3fc847cb70ac3a86              # double 0.189691
	.quad	0x3fedf80fdc1615ec              # double 0.936531
	.quad	0x3fe5f71a7e308787              # double 0.68641399999999997
	.quad	0x3fb73e1437c5692b              # double 0.090790999999999997
	.quad	0x3fdb0caa326e1156              # double 0.42264800000000002
	.quad	0x3fe67faa044ae85c              # double 0.70308400000000004
	.quad	0x3fdf90214ad362e9              # double 0.493172
	.quad	0x3fcd495182a9930c              # double 0.2288
	.quad	0x3fe6ba0620ab7132              # double 0.71020799999999995
	.quad	0x3fc84a515ce9e5e2              # double 0.18976799999999999
	.quad	0x3fc0b7b28954a7f8              # double 0.130606
	.quad	0x3fcdc6c11a11233e              # double 0.232628
	.quad	0x3fc8661ae70c1334              # double 0.19061600000000001
	.quad	0x3fefc3c9eecbfb16              # double 0.99265000000000003
	.quad	0x3fedf9e59f2ba9d2              # double 0.936755
	.quad	0x3fe7f4ff865d7cb3              # double 0.74865700000000002
	.quad	0x3fd173bc903ea705              # double 0.27268900000000001
	.quad	0x3feb45cdd50a88f0              # double 0.852271
	.quad	0x3f4b54195cc857f3              # double 8.3399999999999999E-4
	.quad	0x3fc05f633ce63a5c              # double 0.127911
	.quad	0x3fe0be4473cd5736              # double 0.52322599999999997
	.quad	0x3fe3794855da2728              # double 0.60855499999999996
	.quad	0x3fe6db8561d4306e              # double 0.71429699999999996
	.quad	0x3fed08893b7d8490              # double 0.90729199999999999
	.quad	0x3fd0284167a95c85              # double 0.25245699999999999
	.quad	0x3fd9ed5ae1cde5d2              # double 0.40511200000000003
	.quad	0x3fc58f7121ab4b73              # double 0.16844000000000001
	.quad	0x3fe5b77186551937              # double 0.678643
	.quad	0x3fefb40b34e7685a              # double 0.99072800000000005
	.quad	0x3fd762174c4cdfad              # double 0.36536200000000002
	.quad	0x3fa2f1886df82b1f              # double 0.036998999999999997
	.quad	0x3fec724d8fd5cb79              # double 0.88895299999999999
	.quad	0x3fcd483cafb3b752              # double 0.228767
	.quad	0x3fe99fbc5de9c023              # double 0.80074900000000004
	.quad	0x3fd52f4cf4a558ea              # double 0.33101199999999997
	.quad	0x3fe3568a50507a6c              # double 0.60431400000000002
	.quad	0x3fe9f1b4784230fd              # double 0.810755
	.quad	0x3feeb968d759ee89              # double 0.96013300000000001
	.quad	0x3fe261565c2d2780              # double 0.57438199999999995
	.quad	0x3fd869ec2ce46499              # double 0.381465
	.quad	0x3fcb6cb5350092cd              # double 0.214255
	.quad	0x3fd43471f79420b4              # double 0.31570100000000001
	.quad	0x3fd500d5e8d54110              # double 0.32817600000000002
	.quad	0x3fd08f75536933a0              # double 0.25875599999999999
	.quad	0x3fa28954a7f8012e              # double 0.036204
	.quad	0x3fcde8a2ec28b2a7              # double 0.23366200000000001
	.quad	0x3fedd8a761027957              # double 0.932697
	.quad	0x3fe1e7d34df04ddb              # double 0.55954899999999996
	.quad	0x3fd68405b39e279e              # double 0.35180800000000001
	.quad	0x3fe01626b2f23034              # double 0.50270400000000004
	.quad	0x3fb7d00713f077cd              # double 0.093018000000000003
	.quad	0x3fcf892684cf073a              # double 0.24637300000000001
	.quad	0x3fe06f8ceb356da0              # double 0.51361699999999999
	.quad	0x3fd056b441bb8c33              # double 0.25529200000000002
	.quad	0x3fd8eaf6837f7be1              # double 0.38934099999999999
	.quad	0x3fee5cdf69878317              # double 0.94883700000000004
	.quad	0x3fe61b280f12c27a              # double 0.69081499999999996
	.quad	0x3fbc0a7c5ac471b4              # double 0.10953499999999999
	.quad	0x3f83f1843c3a42f2              # double 0.0097380000000000001
	.quad	0x3fefabc0e38a7e74              # double 0.98971600000000004
	.quad	0x3fec6b8d82342246              # double 0.88812899999999995
	.quad	0x3fdf21294573a798              # double 0.48639900000000003
	.quad	0x3fd6ba3875925354              # double 0.35511599999999999
	.quad	0x3fc30fe8ab4fa483              # double 0.148923
	.quad	0x3fd6432441fea811              # double 0.34784799999999999
	.quad	0x3fa6b4202d9cf13d              # double 0.044343
	.quad	0x3fea262ed352220c              # double 0.81716100000000002
	.quad	0x3fd0649d388a8b09              # double 0.25614100000000001
	.quad	0x3fb35d13d74d594f              # double 0.075638999999999998
	.quad	0x3fefb250b524399b              # double 0.99051699999999998
	.quad	0x3febc67168f8e7de              # double 0.86797400000000002
	.quad	0x3fd2437824d4cb9f              # double 0.28536800000000001
	.quad	0x3fe550efdc9c4da9              # double 0.66613
	.quad	0x3fe16a28fe260b2d              # double 0.54420900000000005
	.quad	0x3fabe1437c5692b4              # double 0.054453000000000001
	.quad	0x3fd7336deb95e5b0              # double 0.362514
	.quad	0x3fe0038e29f9ce8e              # double 0.50043400000000005
	.quad	0x3fdd118c197e5647              # double 0.45419599999999999
	.quad	0x3feb304ab606b7aa              # double 0.84964499999999998
	.quad	0x3fb8e7bc3c5bd0e1              # double 0.097285999999999997
	.quad	0x3fec591ab8e8ea3a              # double 0.88587700000000003
	.quad	0x3febd556084a515d              # double 0.86979200000000001
	.quad	0x3fed5da272862f5a              # double 0.91768000000000005
	.quad	0x3fe08ccdd93c46d8              # double 0.51718799999999998
	.quad	0x3fe5aeb1c432ca58              # double 0.67757500000000004
	.quad	0x3fdf0d413122b7bb              # double 0.485184
	.quad	0x3fd89eb2074ea8da              # double 0.38468599999999997
	.quad	0x3fdb754b05b7cfe6              # double 0.42903400000000003
	.quad	0x3fee16073de1e2df              # double 0.94018900000000005
	.quad	0x3fcb8eb0318b9347              # double 0.21529200000000001
	.quad	0x3fd0cf6be37de93a              # double 0.26266
	.quad	0x3fdca99b6f5caf2d              # double 0.44785199999999997
	.quad	0x3fe0a9e90795f677              # double 0.52074100000000001
	.quad	0x3fee9d57ff9b5632              # double 0.95670699999999997
	.quad	0x3fee98ac9f2fdb90              # double 0.95613700000000001
	.quad	0x3fe16514c22ee419              # double 0.54358899999999999
	.quad	0x3fef0f7985271bce              # double 0.97063900000000003
	.quad	0x3fc726f1dc50ce4f              # double 0.18087600000000001
	.quad	0x3faab239a38fbca1              # double 0.052141
	.quad	0x3fe5492bc2fc6973              # double 0.66518200000000005
	.quad	0x3f758969a0ad8a11              # double 0.0052579999999999997
	.quad	0x3fc5905c03361566              # double 0.16846800000000001
	.quad	0x3fe5191148fd9fd3              # double 0.65930999999999995
	.quad	0x3fe6f63e4abe6a33              # double 0.71755899999999995
	.quad	0x3fed6cf63800218e              # double 0.91955100000000001
	.quad	0x3fee910e453d20f3              # double 0.95520700000000003
	.quad	0x3fd52d3415b1422d              # double 0.33088400000000001
	.quad	0x3fd077e5eaab0425              # double 0.25731799999999999
	.quad	0x3fefff3f0fe047d4              # double 0.99990800000000001
	.quad	0x3fef748c2e770bd0              # double 0.98297699999999999
	.quad	0x3f97724fa8b4bf90              # double 0.022897000000000001
	.quad	0x3feffe06961c3697              # double 0.99975899999999995
	.quad	0x3fe9aacd9e83e426              # double 0.80210000000000004
	.quad	0x3fe5e1bb05faebc4              # double 0.683805
	.quad	0x3fd8a21ea35935fc              # double 0.38489499999999999
	.quad	0x3fd782c6ef3d3a1d              # double 0.36735699999999999
	.quad	0x3fac68ec52a411c3              # double 0.055488000000000003
	.quad	0x3facd87724fa8b4c              # double 0.056339
	.quad	0x3fe0f23465625a68              # double 0.52956599999999998
	.quad	0x3fd37403dddb120a              # double 0.303956
	.quad	0x3f789374bc6a7efa              # double 0.0060000000000000001
	.quad	0x3fd52178f68be2f8              # double 0.33016800000000002
	.quad	0x3fde73c4f3ba7760              # double 0.47581600000000002
	.quad	0x3fe8b26bf8769ec3              # double 0.77178000000000002
	.quad	0x3fe25f28848387df              # double 0.57411599999999996
	.quad	0x3fecf89c5e6ff7e0              # double 0.90534800000000004
	.quad	0x3fcedfc5cdd50a89              # double 0.241204
	.quad	0x3fdbf694467381d8              # double 0.43692500000000001
	.quad	0x3fd5f0d844d013a9              # double 0.34282499999999999
	.quad	0x3fecc7a398201cd6              # double 0.89937
	.quad	0x3fe6a64a16a48733              # double 0.70779899999999996
	.quad	0x3fe5e1522a6f3f53              # double 0.683755
	.quad	0x3feb4f1800a7c5ac              # double 0.85340499999999996
	.quad	0x3fd98893b7d84902              # double 0.39896100000000001
	.quad	0x3fe08655193708ab              # double 0.51639800000000002
	.quad	0x3fe91b4fe79ee02a              # double 0.78458399999999995
	.quad	0x3fead028a1dfb939              # double 0.83791000000000004
	.quad	0x3fc725aab4741073              # double 0.180837
	.quad	0x3fe4c0f01fb82c2c              # double 0.64855200000000002
	.quad	0x3feb14fce746cb96              # double 0.84631199999999995
	.quad	0x3fe28e60807357e6              # double 0.57987999999999995
	.quad	0x3fe0e7924af0bf1a              # double 0.52826799999999996
	.quad	0x3fd326edaa92e621              # double 0.29925099999999999
	.quad	0x3fd1a48301a79fed              # double 0.27566600000000002
	.quad	0x3fead28283d35eb7              # double 0.83819699999999997
	.quad	0x3fe593ec460ed80a              # double 0.67430699999999999
	.quad	0x3fbdb068123810e9              # double 0.11597300000000001
	.quad	0x3fe21ce28ed5f139              # double 0.56602600000000003
	.quad	0x3fd494467381d7dc              # double 0.32155
	.quad	0x3fe4a9930be0ded3              # double 0.64570000000000005
	.quad	0x3fe7d940789613d3              # double 0.74526999999999999
	.quad	0x3fe36113404ea4a9              # double 0.60560000000000003
	.quad	0x3fc637f7be121ee6              # double 0.17358299999999999
	.quad	0x3fdd66be7afa7222              # double 0.45939600000000003
	.quad	0x3fe0e7168f8e7ddd              # double 0.52820900000000004
	.quad	0x3fe6ba40d90e23af              # double 0.71023599999999998
	.quad	0x3feedf8b1572580c              # double 0.96478799999999997
	.quad	0x3fd735b91f70de8f              # double 0.36265399999999998
	.quad	0x3fed26a012599ed8              # double 0.91096500000000002
	.quad	0x3fa11eeaa6d26741              # double 0.033439000000000003
	.quad	0x3fb3fcc9ea9a3d2e              # double 0.078076000000000006
	.quad	0x3fe585b7cfe58601              # double 0.67257299999999998
	.quad	0x3feda82c6ef3d3a2              # double 0.92677900000000002
	.quad	0x3f97b95a294141ea              # double 0.023168000000000001
	.quad	0x3f919695d91ab8e9              # double 0.017176
	.quad	0x3fdc13c68661ae71              # double 0.43870700000000001
	.quad	0x3fb9ff3f0fe047d4              # double 0.101551
	.quad	0x3fe434d8ba40d90e              # double 0.63145099999999998
	.quad	0x3fbdc0db2702a348              # double 0.11622399999999999
	.quad	0x3fd645f5ad96a6a0              # double 0.34802
	.quad	0x3fd1233df2a9d628              # double 0.26777600000000001
	.quad	0x3fd86f08cc575c07              # double 0.38177699999999998
	.quad	0x3fcc73b42cc2d6aa              # double 0.22228100000000001
	.quad	0x3fd701b003686a4d              # double 0.35947800000000002
	.quad	0x3fccac96cc5fbf83              # double 0.22401699999999999
	.quad	0x3fc944f5d35653ca              # double 0.19741700000000001
	.quad	0x3fc1a7221858bc5a              # double 0.13791300000000001
	.quad	0x3fabd816aceaaf36              # double 0.054383000000000001
	.quad	0x3fe1fd82773e24ff              # double 0.56219600000000003
	.quad	0x3fd5ef9db22d0e56              # double 0.34275
	.quad	0x3fdb328f9f44d445              # double 0.42496099999999998
	.quad	0x3fed797460242d06              # double 0.92107600000000001
	.quad	0x3fef8b0af5fd47bf              # double 0.98572300000000001
	.quad	0x3fdafaacd9e83e42              # double 0.42154999999999998
	.quad	0x3fedd12cadddf43c              # double 0.93178399999999994
	.quad	0x3fd31ad6451b9303              # double 0.29851299999999997
	.quad	0x3fdb71e6cd29131f              # double 0.42882700000000001
	.quad	0x3fdd99780baa582e              # double 0.46249200000000001
	.quad	0x3fd6d859c8c9320e              # double 0.35695500000000002
	.quad	0x3fd35f7403dddb12              # double 0.302701
	.quad	0x3fda8c8eef1bac2e              # double 0.414829
	.quad	0x3fdf94573a797892              # double 0.49342900000000001
	.quad	0x3fe565ffa3b9ae0c              # double 0.66870099999999999
	.quad	0x3fca26bb55ac03ff              # double 0.20430699999999999
	.quad	0x3fe56c0b5675579b              # double 0.66943900000000001
	.quad	0x3feb6fdc9c4da900              # double 0.85740499999999997
	.quad	0x3feb05d0fa58f712              # double 0.84445999999999999
	.quad	0x3fd5e99a62ed3522              # double 0.34238299999999999
	.quad	0x3fcbcf4e874c8ffc              # double 0.21726400000000001
	.quad	0x3fe42a92e62131a9              # double 0.63019700000000001
	.quad	0x3fedb7bf1e8e6080              # double 0.92867999999999995
	.quad	0x3fe5ef5019f3c70d              # double 0.68546300000000004
	.quad	0x3fe835ac8a372607              # double 0.756552
	.quad	0x3fecf2170931012a              # double 0.90455200000000002
	.quad	0x3fdbceaaf35e310e              # double 0.43448900000000001
	.quad	0x3fc6cbc8c0ce91c9              # double 0.178094
	.quad	0x3fed49bc77143394              # double 0.91525100000000003
	.quad	0x3fea6939eadd590c              # double 0.82534499999999999
	.quad	0x3fd06da4484944ed              # double 0.25669199999999998
	.quad	0x3fe9238b8ae31d71              # double 0.78558899999999998
	.quad	0x3fd285942917507f              # double 0.28940300000000002
	.quad	0x3fb0e8b7e4de3b8a              # double 0.066050999999999999
	.quad	0x3f82c40d0aaa7ded              # double 0.0091629999999999992
	.quad	0x3fe746cb966be7b0              # double 0.72739200000000004
	.quad	0x3fe6bbcb1cc96463              # double 0.71042400000000006
	.quad	0x3fd53d07c84b5dcc              # double 0.33184999999999998
	.quad	0x3fd060e51d25aab4              # double 0.25591399999999997
	.quad	0x3fef33d07c84b5dd              # double 0.97507500000000002
	.quad	0x3fc5f51697f1f9ad              # double 0.171542
	.quad	0x3fdf02363b256ffc              # double 0.48451
	.quad	0x3fd3a58b3f63c31e              # double 0.306979
	.quad	0x3f95cd0bb6ed6777              # double 0.02129
	.quad	0x3fea9656eefa1e3f              # double 0.83085200000000003
	.quad	0x3fef32f01754b05b              # double 0.97496799999999994
	.quad	0x3fc3b8d3f1843c3a              # double 0.15407799999999999
	.quad	0x3fd1e58a32f44913              # double 0.27963500000000002
	.quad	0x3fd1ab324851a869              # double 0.27607399999999999
	.quad	0x3fedd4b2745bf26f              # double 0.93221399999999999
	.quad	0x3fd80dbad3a604e2              # double 0.37583800000000001
	.quad	0x3fe631ceaf251c19              # double 0.69357999999999997
	.quad	0x3fd4c575c0767d35              # double 0.32455200000000001
	.quad	0x3fe146412cf0f9d3              # double 0.53982600000000003
	.quad	0x3fe5971e29b6b2af              # double 0.67469699999999999
	.quad	0x3f92ea0fd3b29a1c              # double 0.018471000000000001
	.quad	0x3fe734330d73860a              # double 0.72512200000000004
	.quad	0x3fe440e38a7e73a3              # double 0.63292099999999996
	.quad	0x3fe8d017dae81883              # double 0.77540200000000004
	.quad	0x3fc84f54d1e96c40              # double 0.18992100000000001
	.quad	0x3fd85dd4c76d117b              # double 0.38072699999999998
	.quad	0x3fe76544fe36d224              # double 0.73111199999999998
	.quad	0x3fe06f9b994e1a3f              # double 0.51362399999999997
	.quad	0x3fc89d7342edbb5a              # double 0.192305
	.quad	0x3fcba01eeed8904f              # double 0.21582399999999999
	.quad	0x3fd628aa433508f6              # double 0.34623199999999998
	.quad	0x3feb1eadd590c0ad              # double 0.847495
	.quad	0x3fdc6f21f6cacd18              # double 0.44428299999999998
	.quad	0x3f9b2f23033a4724              # double 0.026547000000000001
	.quad	0x3fe43e0ded288ce7              # double 0.632575
	.quad	0x3fe887b56b873797              # double 0.76656599999999997
	.quad	0x3fb258b3f63c31df              # double 0.071665999999999994
	.quad	0x3fdae468cac4b4d0              # double 0.42019099999999998
	.quad	0x3fee33482be8bc17              # double 0.94376000000000004
	.quad	0x3fe04d141a6937d2              # double 0.509409
	.quad	0x3fdd2339c0ebedfa              # double 0.45527499999999999
	.quad	0x3fe625fc7e6b3fea              # double 0.692137
	.quad	0x3fe59a0f0a5efe93              # double 0.67505599999999999
	.quad	0x3fa066c2acb85a4f              # double 0.032034
	.quad	0x3fb16f6512a94ff0              # double 0.068106
	.quad	0x3fd83f1843c3a42f              # double 0.37885099999999999
	.quad	0x3fe48cc9a77e5eab              # double 0.64218600000000003
	.quad	0x3f97cd898b2e9ccb              # double 0.023244999999999998
	.quad	0x3fd29435ac8a3726              # double 0.290296
	.quad	0x3fe7f325918a009f              # double 0.74843099999999996
	.quad	0x3fee4adbc664d3bf              # double 0.94663799999999998
	.quad	0x3fcdbf0dc768dfbd              # double 0.23239299999999999
	.quad	0x3fe0dd91ab8e8ea4              # double 0.52704700000000004
	.quad	0x3fd22396073de1e3              # double 0.28342200000000001
	.quad	0x3faeb1c432ca57a8              # double 0.059950000000000003
	.quad	0x3fd69d0203e63e8e              # double 0.35333300000000001
	.quad	0x3fe4d16b97fe8ee7              # double 0.65056400000000003
	.quad	0x3fe37060bb2bba99              # double 0.60746800000000001
	.quad	0x3fd33a2163fdd65a              # double 0.300423
	.quad	0x3fb1106ee30caa32              # double 0.066656999999999994
	.quad	0x3fe697e996312f4d              # double 0.706044
	.quad	0x3fd4dedf1e0828c3              # double 0.32610299999999998
	.quad	0x3fe0ccaf709b738e              # double 0.52498599999999995
	.quad	0x3fef013879c4113c              # double 0.96889899999999995
	.quad	0x3fec7939a7c17a89              # double 0.88979799999999998
	.quad	0x3fe369df97aaac11              # double 0.60667400000000005
	.quad	0x3fdc74e65bea0ba2              # double 0.444635
	.quad	0x3fda535c9e6687f4              # double 0.41133799999999998
	.quad	0x3fe6a860dcb9a9da              # double 0.70805399999999996
	.quad	0x3fe41fadafd11383              # double 0.62886699999999995
	.quad	0x3fdce85b9e8c47a1              # double 0.45168199999999997
	.quad	0x3fe3f7b5aea3161a              # double 0.62398799999999999
	.quad	0x3feb003686a4ca4f              # double 0.84377599999999997
	.quad	0x3fdfb018611fd588              # double 0.49512299999999998
	.quad	0x3fe62ac1094a2b9d              # double 0.69271899999999997
	.quad	0x3fe9bb05faebc409              # double 0.80408000000000002
	.quad	0x3fa354c122749f0e              # double 0.037755999999999998
	.quad	0x3f511ada76d97b31              # double 0.001044
	.quad	0x3fdd3ec892ab68cf              # double 0.456957
	.quad	0x3fd7dc1e7967caea              # double 0.37280999999999997
	.quad	0x3f85350092ccf6be              # double 0.010355
	.quad	0x3fe50df37329c348              # double 0.65795300000000001
	.quad	0x3f8cf5f4e4430b18              # double 0.014141000000000001
	.quad	0x3fcaab7995ee136e              # double 0.20835799999999999
	.quad	0x3fd6889c1b54195d              # double 0.35208800000000001
	.quad	0x3fdff102363b2570              # double 0.499085
	.quad	0x3fdf0bd017dae819              # double 0.48509600000000003
	.quad	0x3f9a0c282c6ef3d4              # double 0.025437000000000001
	.quad	0x3fc10e8858ff7597              # double 0.13325600000000001
	.quad	0x3fd856861e92923e              # double 0.38028099999999998
	.quad	0x3fc55ef1fddebd90              # double 0.16696
	.quad	0x3fde7fb69984a0e4              # double 0.476545
	.quad	0x3fe2a157689ca18c              # double 0.58219500000000002
	.quad	0x3fe73f705857afea              # double 0.72649399999999997
	.quad	0x3fd514e3bcd35a86              # double 0.32940000000000003
	.quad	0x3fa973fb7a5f41af              # double 0.049713
	.quad	0x3fecd82ba5a03819              # double 0.90138799999999997
	.quad	0x3fe63b0e5e679464              # double 0.69470900000000002
	.quad	0x3fe5311a543f1c76              # double 0.66224400000000005
	.quad	0x3fcec77574f722e2              # double 0.24046200000000001
	.quad	0x3fbc09f623076c05              # double 0.109527
	.quad	0x3fbcac29bf162ae5              # double 0.112002
	.quad	0x3fd9791819d2391d              # double 0.39801599999999998
	.quad	0x3fdef255f3519bd4              # double 0.483541
	.quad	0x3fdf527a20578e5c              # double 0.48940899999999998
	.quad	0x3fe3d3f39d1b2e5a              # double 0.61962300000000003
	.quad	0x3fcf1f03d145d851              # double 0.24313399999999999
	.quad	0x3fa3fe1975f2cb64              # double 0.039047999999999999
	.quad	0x3fb9c78a6dacabc5              # double 0.100701
	.quad	0x3fdc641f644955b4              # double 0.44361099999999998
	.quad	0x3fef2ec6bce8533b              # double 0.97445999999999999
	.quad	0x3fd83ac929aa1d75              # double 0.37858799999999998
	.quad	0x3fe7ffeb074a771d              # double 0.74999000000000005
	.quad	0x3fe13ed30f062d41              # double 0.53891900000000004
	.quad	0x3f93a647fdc5931d              # double 0.019189000000000001
	.quad	0x3fc04c9c90c4dec2              # double 0.12733800000000001
	.quad	0x3fd748b220791c4c              # double 0.36381200000000002
	.quad	0x3fe19c0ca600b029              # double 0.55029899999999998
	.quad	0x3fc130728e92d55a              # double 0.13429099999999999
	.quad	0x3fe8bad5bee3d5fe              # double 0.77280700000000002
	.quad	0x3fde2f2b66b6177f              # double 0.47162900000000002
	.quad	0x3fd956191148fda0              # double 0.39588000000000001
	.quad	0x3fe797481b21c476              # double 0.73721700000000001
	.quad	0x3fe54e8101f31f47              # double 0.66583300000000001
	.quad	0x3fec37d63022dd7b              # double 0.88181600000000004
	.quad	0x3fba3305100a393f              # double 0.102341
	.quad	0x3fccd2e514c22ee4              # double 0.225186
	.quad	0x3feebc33f85510d4              # double 0.96047400000000004
	.quad	0x3fdf7d73c9257860              # double 0.49203200000000002
	.quad	0x3fe8132f87ad080b              # double 0.75234199999999996
	.quad	0x3fb69cdc443914f5              # double 0.088331000000000007
	.quad	0x3fda4c61d8622c45              # double 0.410912
	.quad	0x3feef69014b599aa              # double 0.96759799999999996
	.quad	0x3fe939ffd60e94ee              # double 0.78832999999999998
	.quad	0x3fe248605681ecd5              # double 0.57133500000000004
	.quad	0x3fac0f4517614595              # double 0.054803999999999999
	.quad	0x3fec4f2f123c42a6              # double 0.88466599999999995
	.quad	0x3fef759ee88df373              # double 0.98310799999999998
	.quad	0x3fe0e81669ced0b3              # double 0.528331
	.quad	0x3fd3a921ccd96207              # double 0.30719800000000003
	.quad	0x3feaa8d8665e02eb              # double 0.83311100000000005
	.quad	0x3fe14853c148344c              # double 0.54007899999999998
	.quad	0x3fece55e28aa4335              # double 0.902999
	.quad	0x3fcadbad3a604e1e              # double 0.20982899999999999
	.quad	0x3fe72cbc8c0ce91d              # double 0.72421100000000005
	.quad	0x3fe6cc016052502f              # double 0.71240300000000001
	.quad	0x3feef12e40852b4e              # double 0.96694100000000005
	.quad	0x3fdca9eb2074ea8e              # double 0.44787100000000002
	.quad	0x3fe919439de481f5              # double 0.78433399999999998
	.quad	0x3fccce67d77fae36              # double 0.225049
	.quad	0x3fda5b8dc55000c9              # double 0.41183799999999998
	.quad	0x3fdb2ea0fd3b29a2              # double 0.42472100000000002
	.quad	0x3fa410d7be9856a3              # double 0.039190999999999997
	.quad	0x3fef1e53a81dc0db              # double 0.97245199999999998
	.quad	0x3fcbbb40b34e7686              # double 0.21665200000000001
	.quad	0x3fdaa033e78e1933              # double 0.41602800000000001
	.quad	0x3fc396073de1e2df              # double 0.15301600000000001
	.quad	0x3fd3f9a49c2c1b11              # double 0.312112
	.quad	0x3fbe8049667b5f1c              # double 0.119145
	.quad	0x3fe20913a4f8726d              # double 0.563608
	.quad	0x3fdaf26aec0724b7              # double 0.42104599999999998
	.quad	0x3fbc49235f809918              # double 0.11049100000000001
	.quad	0x3fd5a36e2eb1c433              # double 0.33810000000000001
	.quad	0x3facc5974e65bea1              # double 0.056195000000000002
	.quad	0x3fea1d3aa369fcf4              # double 0.81606800000000001
	.quad	0x3fe3bb7f9d6f1130              # double 0.61663800000000002
	.quad	0x3fe3932f87ad080b              # double 0.61171699999999996
	.quad	0x3fe90eeae9ee45c3              # double 0.78307099999999996
	.quad	0x3f9834091c087443              # double 0.023636000000000001
	.quad	0x3fe7cc8ffb8b2639              # double 0.74372099999999997
	.quad	0x3fc68ae74f2f123c              # double 0.17611399999999999
	.quad	0x3fe4ceb78897e996              # double 0.65023399999999998
	.quad	0x3fd679c4113c6866              # double 0.35118199999999999
	.quad	0x3fec7722e1ac57e2              # double 0.88954299999999997
	.quad	0x3fe97c7c5260f5e4              # double 0.79644599999999998
	.quad	0x3fee575e2046c765              # double 0.94816500000000004
	.quad	0x3fec8d5c74751ce3              # double 0.89225600000000005
	.quad	0x3fb29b9d7fd82774              # double 0.072687000000000002
	.quad	0x3fd40f6ad70e6f2f              # double 0.31344100000000003
	.quad	0x3fdde0ef99806f26              # double 0.46685399999999999
	.quad	0x3fe62f1ed17c5ef6              # double 0.69325199999999998
	.quad	0x3fe590fb65668c26              # double 0.67394799999999999
	.quad	0x3fde860dcb9a9da6              # double 0.47693200000000002
	.quad	0x3fe17dfa00e27e0f              # double 0.546628
	.quad	0x3fa3508f648c7193              # double 0.037724000000000001
	.quad	0x3fe364217d2849cb              # double 0.60597299999999998
	.quad	0x3feb765dbfceb789              # double 0.85819900000000005
	.quad	0x3f841aef6f8f0414              # double 0.0098169999999999993
	.quad	0x3fd24d8ba40d90e2              # double 0.28598299999999999
	.quad	0x3fe80d8665e02ea9              # double 0.75165099999999996
	.quad	0x3fed1b0468448cf8              # double 0.90954800000000002
	.quad	0x3fefb97bb7308356              # double 0.99139200000000005
	.quad	0x3fda5be1a8262457              # double 0.411858
	.quad	0x3fe0e06d938151a4              # double 0.52739599999999998
	.quad	0x3fea3b14a90470a8              # double 0.819712
	.quad	0x3fd5a4f8726d04e6              # double 0.33819399999999999
	.quad	0x3fedc7c30d306a2b              # double 0.93063499999999999
	.quad	0x3fe64080f98fa377              # double 0.69537400000000005
	.quad	0x3fece1f3a57eaa2a              # double 0.902582
	.quad	0x3fbc8882f0e0a84c              # double 0.111458
	.quad	0x3fe2f6e82949a565              # double 0.59263999999999994
	.quad	0x3fe63fc0096feb4a              # double 0.69528199999999996
	.quad	0x3fc4e7f6f4be835e              # double 0.163329
	.quad	0x3fc7d651b0ccbc06              # double 0.186228
	.quad	0x3fd75efe93187619              # double 0.36517300000000003
	.quad	0x3fe1b940fecdd0d9              # double 0.55386400000000002
	.quad	0x3fe9d20f2becedd5              # double 0.80689200000000005
	.quad	0x3fdfecbfb15b573f              # double 0.49882500000000002
	.quad	0x3fcaecc814d7279a              # double 0.21035100000000001
	.quad	0x3fe4f2b66b6177ea              # double 0.65462799999999999
	.quad	0x3fda7214f0520d13              # double 0.413213
	.quad	0x3fe65e6ff7dfa00e              # double 0.69902799999999998
	.quad	0x3fd198fe69270b07              # double 0.27496300000000001
	.quad	0x3fef10c2c5e2cdc0              # double 0.97079599999999999
	.quad	0x3fae6f71a7e30878              # double 0.059443999999999997
	.quad	0x3feb1bed30f062d4              # double 0.84715899999999999
	.quad	0x3fd619b4dcebfec1              # double 0.34531899999999999
	.quad	0x3fdc105e1c15097d              # double 0.43849900000000003
	.quad	0x3fec9dc50ce4ead1              # double 0.89425900000000003
	.quad	0x3fe341700cd85597              # double 0.601738
	.quad	0x3fe1a4af0bf1a5ca              # double 0.55135299999999998
	.quad	0x3fe49b823c85c24c              # double 0.64398299999999997
	.quad	0x3fbd917939a7c17b              # double 0.11550100000000001
	.quad	0x3fe8060fe47991bc              # double 0.75073999999999996
	.quad	0x3fb2c52a411c2a02              # double 0.073320999999999997
	.quad	0x3febe1975f2cb641              # double 0.87128799999999995
	.quad	0x3fe7a82a5614df8b              # double 0.73927799999999999
	.quad	0x3fe526d8b1dd5d3e              # double 0.66099200000000002
	.quad	0x3fe87bacb4289119              # double 0.76509700000000003
	.quad	0x3fdc670196d8f4f9              # double 0.44378699999999999
	.quad	0x3fc6f2a5a469d734              # double 0.17927999999999999
	.quad	0x3fd78a697aeddce8              # double 0.36782300000000001
	.quad	0x3fe635ce18266773              # double 0.69406800000000002
	.quad	0x3fd0d438d1d8a548              # double 0.26295299999999999
	.quad	0x3fdd53a3ec02f2fa              # double 0.45823000000000003
	.quad	0x3fe806c8711d798e              # double 0.75082800000000005
	.quad	0x3fd439a7c17a8933              # double 0.31601899999999999
	.quad	0x3fd12ee84ad794a7              # double 0.268488
	.quad	0x3fd64edf61240746              # double 0.34856399999999998
	.quad	0x3fd8959a30984e40              # double 0.384131
	.quad	0x3fb204d12018a43c              # double 0.070386000000000004
	.quad	0x3fac7f77af64063a              # double 0.055660000000000001
	.quad	0x3fd936a832b990b0              # double 0.39396100000000001
	.quad	0x3fe544a6223e186a              # double 0.66463000000000005
	.quad	0x3fd7640e9d51b4fe              # double 0.36548199999999997
	.quad	0x3fefc1df3300de4c              # double 0.99241599999999996
	.quad	0x3feeaf76e6106ab1              # double 0.95891899999999996
	.quad	0x3fdba16a48733659              # double 0.43172700000000003
	.quad	0x3feafa7c9de05037              # double 0.84307699999999997
	.quad	0x3fe1ecd8dbcec850              # double 0.56016200000000005
	.quad	0x3fc7bfa4c61d8623              # double 0.18553600000000001
	.quad	0x3fb4ff43419e3001              # double 0.082019999999999996
	.quad	0x3fcdbb384fd2a62b              # double 0.23227600000000001
	.quad	0x3fce0ce0b912dba5              # double 0.234768
	.quad	0x3f95c39bcba30121              # double 0.021253999999999999
	.quad	0x3fe98a8f3a9b0681              # double 0.79816399999999998
	.quad	0x3fd0abbcb1cc9646              # double 0.26048199999999999
	.quad	0x3fdc45803cd141a7              # double 0.44174200000000002
	.quad	0x3fe0ee158750c1b9              # double 0.52906299999999995
	.quad	0x3fce6a4ca4f440af              # double 0.237619
	.quad	0x3fe0b13dfb0d51f8              # double 0.52163599999999999
	.quad	0x3fb929670196d8f5              # double 0.098288
	.quad	0x3feb92b1b36bd2b7              # double 0.86165700000000001
	.quad	0x3fe1a85caafbc1ad              # double 0.55180200000000001
	.quad	0x3fd77446f9b994e2              # double 0.36647200000000002
	.quad	0x3fd3bccf28c79f66              # double 0.30839899999999998
	.quad	0x3fc31d92b7fe08af              # double 0.14934
	.quad	0x3fe9488e79aae6c9              # double 0.790107
	.quad	0x3fe613879c4113c7              # double 0.68988400000000005
	.quad	0x3fed72e05ccc89b1              # double 0.92027300000000001
	.quad	0x3fcfa63f9a49c2c2              # double 0.24726100000000001
	.quad	0x3fb1475a31a4bdba              # double 0.067494999999999999
	.quad	0x3feed072085b1855              # double 0.96294500000000005
	.quad	0x3fe948301a79feca              # double 0.79006200000000004
	.quad	0x3fea0c154c985f07              # double 0.813975
	.quad	0x3fd0940789613d32              # double 0.25903500000000002
	.quad	0x3fd69531550ca1cf              # double 0.352856
	.quad	0x3fe8a5edd052934b              # double 0.77025500000000002
	.quad	0x3fd39830e3cd9a52              # double 0.30616399999999999
	.quad	0x3fc733a8a3f8982d              # double 0.18126400000000001
	.quad	0x3fd0a9b8cb8e086c              # double 0.26035900000000001
	.quad	0x3febde17e34b9453              # double 0.870861
	.quad	0x3fe21d1f601797cc              # double 0.56605499999999997
	.quad	0x3feb18cc144028e5              # double 0.846777
	.quad	0x3fd3f10ecb74ddf8              # double 0.31158799999999998
	.quad	0x3fe9a0ee8d10f51b              # double 0.80089500000000002
	.quad	0x3fd2dc8b86b15f89              # double 0.294711
	.quad	0x3fee615ca6ca03c5              # double 0.94938500000000003
	.quad	0x3febe92d55a3a084              # double 0.87221400000000004
	.quad	0x3feabcb3e5753a3f              # double 0.83553500000000003
	.quad	0x3fd5d744f5d35654              # double 0.34126400000000001
	.quad	0x3fc85bf26f1dc50d              # double 0.190306
	.quad	0x3fe6bdff3f0fe048              # double 0.71069300000000002
	.quad	0x3fead01c0ca600b0              # double 0.83790399999999998
	.quad	0x3fe33700474d9c6b              # double 0.600464
	.quad	0x3fe71c15097c8084              # double 0.72217799999999999
	.quad	0x3fd2cf52b90a7829              # double 0.293904
	.quad	0x3fd04b018611fd59              # double 0.25457800000000003
	.quad	0x3fd43f572de43ed9              # double 0.31636599999999998
	.quad	0x3fed44c165907d91              # double 0.91464299999999998
	.quad	0x3fe50d844d013a93              # double 0.65790000000000004
	.quad	0x3fc2c79f666234a8              # double 0.14671699999999999
	.quad	0x3fdde39f77292c49              # double 0.46701799999999999
	.quad	0x3feaa704bc27631b              # double 0.83288799999999996
	.quad	0x3fd10ea5b530ced5              # double 0.26651900000000001
	.quad	0x3f596d8f4f93bc0a              # double 0.001552
	.quad	0x3fda2ed352220bc4              # double 0.40910800000000003
	.quad	0x3fee4fc610f0e90c              # double 0.94723800000000002
	.quad	0x3feb36da87a072d2              # double 0.85044600000000004
	.quad	0x3fd19cd8127b2cc7              # double 0.275198
	.quad	0x3fe2f9a49c2c1b11              # double 0.592974
	.quad	0x3fe21f83be6601bd              # double 0.56634700000000004
	.quad	0x3fe51d755bccaf71              # double 0.65984600000000004
	.quad	0x3fe92eddce7cd035              # double 0.78697099999999998
	.quad	0x3fc6983d790752db              # double 0.17652100000000001
	.quad	0x3fd0e1da7b0b3919              # double 0.26378499999999999
	.quad	0x3fe1e9e5e2478855              # double 0.55980200000000002
	.quad	0x3fe1037d63022dd8              # double 0.53167600000000004
	.quad	0x3fc9405f6ba0620b              # double 0.19727700000000001
	.quad	0x3fdef3300de4c511              # double 0.483593
	.quad	0x3fc217225b749add              # double 0.14133100000000001
	.quad	0x3fbe8a50507a6bd7              # double 0.119298
	.quad	0x3fe32c14c660a201              # double 0.59913099999999997
	.quad	0x3fac823854046413              # double 0.055681000000000001
	.quad	0x3fd9a57646ae3a3b              # double 0.40072400000000002
	.quad	0x3fc34cb1897a67a5              # double 0.150778
	.quad	0x3fe3038194c01605              # double 0.59417799999999998
	.quad	0x3fe0cefcbd556085              # double 0.52526700000000004
	.quad	0x3fef189374bc6a7f              # double 0.97175
	.quad	0x3fef5cc20d5629d8              # double 0.98007299999999997
	.quad	0x3feff0ed3d859c8d              # double 0.99816000000000004
	.quad	0x3fde3868fd199bb2              # double 0.47219299999999997
	.quad	0x3fe9cb20fb224aae              # double 0.80604600000000004
	.quad	0x3fa7349385836220              # double 0.045323000000000002
	.quad	0x3fe2fb02d59d55e7              # double 0.59314100000000003
	.quad	0x3feb80ecfa69be0a              # double 0.85948800000000003
	.quad	0x3fe61c4b90214ad3              # double 0.69095399999999996
	.quad	0x3fef72e6a76965f5              # double 0.98277599999999998
	.quad	0x3fe61a005c4651f4              # double 0.69067400000000001
	.quad	0x3fc45b4aa9717df2              # double 0.15903600000000001
	.quad	0x3feef4cf4a558ea8              # double 0.96738400000000002
	.quad	0x3fe894af4f0d844d              # double 0.76815
	.quad	0x3fec7c5479d4d834              # double 0.89017699999999999
	.quad	0x3fd65158b827fa1a              # double 0.348715
	.quad	0x3fd5fd9fd36f7e3d              # double 0.34360499999999999
	.quad	0x3fe4bca5375c8da0              # double 0.64802800000000005
	.quad	0x3fc5fa658c4bd33d              # double 0.171704
	.quad	0x3fe181c4fc1df330              # double 0.54709099999999999
	.quad	0x3feb47e6b3fe9fae              # double 0.85252700000000003
	.quad	0x3fe24a686e7e62dc              # double 0.57158299999999995
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.quad	0x3fdb7281fd9ba1b2              # double 0.42886400000000002
	.quad	0x3feb1c5c5718eb89              # double 0.84721199999999997
	.quad	0x3fda031ceaf251c2              # double 0.40644000000000002
	.quad	0x3fad955714b9cb68              # double 0.057779999999999998
	.quad	0x3fc10dcfcc5b8dc5              # double 0.13323399999999999
	.quad	0x3fd92aa5c5f7c676              # double 0.39322800000000002
	.quad	0x3fd97075b3e1437c              # double 0.39748899999999998
	.quad	0x3f8cdfefbf401c50              # double 0.014099
	.quad	0x3fe0aa92e62131a9              # double 0.52082200000000001
	.quad	0x3fc9a52ac753e708              # double 0.200353
	.quad	0x3fe6de99e94ab1d5              # double 0.714673
	.quad	0x3fc6aa7589efd86b              # double 0.17707700000000001
	.quad	0x3fead8537e2c55c9              # double 0.83890699999999996
	.quad	0x3fdf36e71cda2b5a              # double 0.48772599999999999
	.quad	0x3fe119780baa582e              # double 0.53435900000000003
	.quad	0x3fdfd94d0dcfcc5c              # double 0.49763800000000002
	.quad	0x3fe72e87d2c7b891              # double 0.72443000000000002
	.quad	0x3fdb75ea67e846a6              # double 0.42907200000000001
	.quad	0x3fdd058dde7a743a              # double 0.45346399999999998
	.quad	0x3feeee32e3821af8              # double 0.96657700000000001
	.quad	0x3feebad18d25edd0              # double 0.96030499999999996
	.quad	0x3fce41248d7e0264              # double 0.23636299999999999
	.quad	0x3feb6c1a048e043a              # double 0.85694599999999999
	.quad	0x3fdab9fdbd2fa0d7              # double 0.41760199999999997
	.quad	0x3fed0a1be2b4959e              # double 0.90748399999999996
	.quad	0x3fe1bd4067cf1c32              # double 0.55435199999999996
	.quad	0x3fe2da187a4a48f9              # double 0.58912299999999995
	.quad	0x3feef640639d5e4a              # double 0.96755999999999998
	.quad	0x3fcd5c182ecaeea6              # double 0.22937299999999999
	.quad	0x3fad9253543aeab8              # double 0.057757000000000003
	.quad	0x3fc5a743a647fdc6              # double 0.16916700000000001
	.quad	0x3fe9cdab191dde37              # double 0.80635599999999996
	.quad	0x3fe49fec99f1ae2e              # double 0.64452200000000004
	.quad	0x3fdf954a7f8012e0              # double 0.49348700000000001
	.quad	0x3fe29b8887229e90              # double 0.58148599999999995
	.quad	0x3fed99e30014f8b6              # double 0.92503500000000005
	.quad	0x3fe9344806290eed              # double 0.787632
	.quad	0x3fda314013ec460f              # double 0.40925600000000001
	.quad	0x3fe49203a322af57              # double 0.64282399999999995
	.quad	0x3fe0c1ebc83a96d5              # double 0.52367200000000003
	.quad	0x3feda5a469d7342f              # double 0.92647000000000002
	.quad	0x3fef6daec4a4095f              # double 0.98213899999999998
	.quad	0x3fd947304039abf3              # double 0.39496999999999999
	.quad	0x3fcef40e5a35d67c              # double 0.24182300000000001
	.quad	0x3fdc6f826edaa92e              # double 0.44430599999999998
	.quad	0x3fb4ff540895d0b7              # double 0.082020999999999997
	.quad	0x3fd260f1b25f633d              # double 0.28716700000000001
	.quad	0x3fee8811b1d92b80              # double 0.95411000000000001
	.quad	0x3fe90cd63cb81733              # double 0.78281699999999999
	.quad	0x3fed166e008e9b39              # double 0.90898800000000002
	.quad	0x3fe20b6d86ec17ec              # double 0.56389500000000004
	.quad	0x3fdaa3f4666ec9e2              # double 0.41625699999999999
	.quad	0x3fe8a08398a65493              # double 0.769594
	.quad	0x3fe6b2f87ad080b6              # double 0.70934699999999995
	.quad	0x3fe5d6bca5375c8e              # double 0.68246300000000004
	.quad	0x3fead2dcb1465e89              # double 0.83823999999999999
	.quad	0x3fe5aa3cea6c1a05              # double 0.67703100000000005
	.quad	0x3fcf9bb2788db057              # double 0.24693899999999999
	.quad	0x3fe1431162281345              # double 0.53943700000000006
	.quad	0x3fe1eb56fb8f57f7              # double 0.55997799999999998
	.quad	0x3fee419e30014f8b              # double 0.94550999999999996
	.quad	0x3fe9e3779e9d0e99              # double 0.80901699999999999
	.quad	0x3fc382ecaeea63b7              # double 0.15243300000000001
	.quad	0x3fdf709fa54c5543              # double 0.49124899999999999
	.quad	0x3fe3b99b2c40d0ab              # double 0.61640700000000004
	.quad	0x3fe8ba94bbe4473d              # double 0.77277600000000002
	.quad	0x3fc7c2b0ea18372e              # double 0.18562899999999999
	.quad	0x3fd9f00abf76a2f5              # double 0.40527600000000003
	.quad	0x3fd9c85c24c404a7              # double 0.40285399999999999
	.quad	0x3fb712a0ec743201              # double 0.090128
	.quad	0x3fcb82cb20fb224b              # double 0.21492900000000001
	.quad	0x3feb6f416bdb1a6d              # double 0.85733099999999995
	.quad	0x3fe9d523b3636f3b              # double 0.80726799999999999
	.quad	0x3fcfc01a36e2eb1c              # double 0.24804999999999999
	.quad	0x3f95e6ff7dfa00e2              # double 0.021388999999999998
	.quad	0x3fec62d1f1cfbb95              # double 0.88706300000000005
	.quad	0x3feb7c243dccea29              # double 0.858904
	.quad	0x3fa9df97aaac1095              # double 0.050534000000000003
	.quad	0x3fe933bd9cae2110              # double 0.78756599999999999
	.quad	0x3fe8f316e3715400              # double 0.77967399999999998
	.quad	0x3fed2b191dde3758              # double 0.91151099999999996
	.quad	0x3fea9950331e3a7e              # double 0.83121500000000004
	.quad	0x3fd11ee2435696e6              # double 0.26751000000000003
	.quad	0x3fe65479d4d83409              # double 0.69781199999999999
	.quad	0x3fe405857afea3df              # double 0.62567399999999995
	.quad	0x3fd0190d173fb7a6              # double 0.251529
	.quad	0x3fc5cbf6e3f78bbd              # double 0.17028699999999999
	.quad	0x3fd6fc2eba27ae9b              # double 0.35914200000000002
	.quad	0x3fe50ea9e6eeb702              # double 0.65803999999999996
	.quad	0x3fe0031487768167              # double 0.50037600000000004
	.quad	0x3fd41fc08fa7a850              # double 0.314438
	.quad	0x3fbde108c3f3e037              # double 0.116715
	.quad	0x3fd291dde37585be              # double 0.29015299999999999
	.quad	0x3f9b81b64e054691              # double 0.026862
	.quad	0x3fd19a671ef30a4e              # double 0.27504899999999999
	.quad	0x3fea7b267c6b8b69              # double 0.82753299999999996
	.quad	0x3fd80064a9cdc444              # double 0.37502400000000002
	.quad	0x3fe1216c61522a6f              # double 0.53532999999999997
	.quad	0x3fb5938151a43782              # double 0.084281999999999995
	.quad	0x3fbc128bf3bea91e              # double 0.10965800000000001
	.quad	0x3fdc7292c4934268              # double 0.44449300000000003
	.quad	0x3fd4c69f8c21e1d2              # double 0.32462299999999999
	.quad	0x3fc1d86a8fc0d2c4              # double 0.13941700000000001
	.quad	0x3fe39b6d43d03969              # double 0.61272300000000002
	.quad	0x3fd34c37e6f71a7e              # double 0.30152699999999999
	.quad	0x3f9b2e59af9ebe9d              # double 0.026544000000000002
	.quad	0x3fca0c176577531e              # double 0.20349400000000001
	.quad	0x3f5c7de5082cf52c              # double 0.0017390000000000001
	.quad	0x3fd305f28848387e              # double 0.297238
	.quad	0x3fe8a6937d1fe64f              # double 0.77033399999999996
	.quad	0x3fdffb2edfe75bc4              # double 0.49970599999999998
	.quad	0x3fa14ab1d4f9c1f8              # double 0.033772999999999997
	.quad	0x3fd1daceee0f3cb4              # double 0.27898000000000001
	.quad	0x3fa8bd230b9dc2f4              # double 0.048318
	.quad	0x3fdc57f737da61e1              # double 0.44286900000000001
	.quad	0x3fe0e18266772d5e              # double 0.527528
	.quad	0x3fd07110e453d20f              # double 0.25690099999999999
	.quad	0x3fd4d2f5dbb9cf9a              # double 0.325376
	.quad	0x3fe8c460ed80a17b              # double 0.77397199999999999
	.quad	0x3fecbda5119ce076              # double 0.89815
	.quad	0x3fd89ee45c358afc              # double 0.38469799999999998
	.quad	0x3fdfe34b945308bc              # double 0.49824800000000002
	.quad	0x3fe0198288051c9f              # double 0.50311399999999995
	.quad	0x3fdeb2074ea8da7f              # double 0.47961599999999999
	.quad	0x3fd47c286f8ad256              # double 0.32007799999999997
	.quad	0x3fda996b76709fa5              # double 0.41561399999999998
	.quad	0x3fd25eb313be22e6              # double 0.28703000000000001
	.quad	0x3feef2495e17e34c              # double 0.96707600000000004
	.quad	0x3fdb4866a11ec919              # double 0.42629400000000001
	.quad	0x3fcf4dbdf8f47304              # double 0.24456
	.quad	0x3fc29c1b54195cc8              # double 0.14538899999999999
	.quad	0x3fb3b2edfe75bc45              # double 0.076949000000000004
	.quad	0x3fb247baa9b499d0              # double 0.071406999999999998
	.quad	0x3fd8aeafab53d641              # double 0.385662
	.quad	0x3fcd107746887a8d              # double 0.22706499999999999
	.quad	0x3fe699c5a3e39f77              # double 0.70627099999999998
	.quad	0x3f9c55432873bc90              # double 0.027668999999999999
	.quad	0x3fee0642396073de              # double 0.93826399999999999
	.quad	0x3fd7d5454152b0a7              # double 0.372392
	.quad	0x3fc57e90ff972474              # double 0.16792499999999999
	.quad	0x3fe69991361dc93f              # double 0.70624600000000004
	.quad	0x3fe54083126e978d              # double 0.66412499999999997
	.quad	0x3fae4ef0281ba7fc              # double 0.059195999999999999
	.quad	0x3fb32324c8366517              # double 0.074755000000000002
	.quad	0x3fecb89f83be6602              # double 0.89753700000000003
	.quad	0x3fb4b04ab606b7aa              # double 0.080814999999999997
	.quad	0x3fe5776c4827b6fe              # double 0.67082799999999998
	.quad	0x3fe29ede1198aeb8              # double 0.58189299999999999
	.quad	0x3fc21bc126a65cf6              # double 0.14147199999999999
	.quad	0x3fbe4095f2452c5a              # double 0.118173
	.quad	0x3fe4cbe835dedf1e              # double 0.649891
	.quad	0x3fe77127f5e84f09              # double 0.73256299999999996
	.quad	0x3fd5cdd93c46d82c              # double 0.34068900000000002
	.quad	0x3fef3cfd4bf0995b              # double 0.97619500000000003
	.quad	0x3fd4deebb341e14c              # double 0.32610600000000001
	.quad	0x3fd01a6937d1fe65              # double 0.251612
	.quad	0x3f99fa11a975afb0              # double 0.025368000000000002
	.quad	0x3fc55fdcdf698783              # double 0.166988
	.quad	0x3f7d0635a426bb56              # double 0.0070860000000000003
	.quad	0x3fc39c304ccee5ac              # double 0.15320400000000001
	.quad	0x3fd5396d0917d6b6              # double 0.33162999999999998
	.quad	0x3fe16a7264a16a48              # double 0.54424399999999995
	.quad	0x3fc01b21c475e636              # double 0.125828
	.quad	0x3fe0cac4b4d056c5              # double 0.524752
	.quad	0x3fe7435efa615a8e              # double 0.72697400000000001
	.quad	0x3fe224f6598e10cf              # double 0.56701199999999996
	.quad	0x3fe575b1c8648840              # double 0.67061700000000002
	.quad	0x3fc5de5082cf52b9              # double 0.170847
	.quad	0x3fe340767d34df05              # double 0.60161900000000001
	.quad	0x3fe36ea4228997c4              # double 0.60725600000000002
	.quad	0x3fc0c929aa1d755c              # double 0.13113900000000001
	.quad	0x3fe9c0ee06d93815              # double 0.80480099999999999
	.quad	0x3fe14d7060bb2bbb              # double 0.54070300000000004
	.quad	0x3fd45cf2495e17e3              # double 0.31817299999999998
	.quad	0x3fe84bee807bbb62              # double 0.75926899999999997
	.quad	0x3fe8e70c1333b96b              # double 0.77820400000000001
	.quad	0x3fe7d573647baa9b              # double 0.74480599999999997
	.quad	0x3fe9f35c182ecaef              # double 0.81095700000000004
	.quad	0x3fb68d002e2328fa              # double 0.088089
	.quad	0x3fe1f99a1fd1569f              # double 0.56171899999999997
	.quad	0x3fe120ba1f4b1ee2              # double 0.53524499999999997
	.quad	0x3fbd883ba3443d47              # double 0.11536
	.quad	0x3feb43009b30728f              # double 0.85192900000000005
	.quad	0x3fe120f6f08cc576              # double 0.53527400000000003
	.quad	0x3fecc297bfa4c61e              # double 0.89875400000000005
	.quad	0x3fe01c475e6362a6              # double 0.50345200000000001
	.quad	0x3f578b3700474d9c              # double 0.0014369999999999999
	.quad	0x3feef37110e453d2              # double 0.96721699999999999
	.quad	0x3fd327e0ef99806f              # double 0.29930899999999999
	.quad	0x3fe5a1ab4b72c519              # double 0.67598499999999995
	.quad	0x3fea9b003686a4ca              # double 0.83142099999999997
	.quad	0x3fd9d1f601797cc4              # double 0.40344000000000002
	.quad	0x3fe420f0a5efe932              # double 0.62902100000000005
	.quad	0x3fe7174a3400b88d              # double 0.72159300000000004
	.quad	0x3fe0385a4f00ef13              # double 0.50687899999999997
	.quad	0x3fef5dfc9ff92f2b              # double 0.98022299999999995
	.quad	0x3fe76c95bff04578              # double 0.73200500000000002
	.quad	0x3fd9426bb55ac040              # double 0.394679
	.quad	0x3fe6eff7dfa00e28              # double 0.71679300000000001
	.quad	0x3fe8d2ef911cf356              # double 0.77574900000000002
	.quad	0x3fcaaa7589efd86b              # double 0.20832700000000001
	.quad	0x3fef7d34df04ddb5              # double 0.98403399999999996
	.quad	0x3fe1ea11ec918e32              # double 0.55982299999999996
	.quad	0x3fe750d6b228dc98              # double 0.72861799999999999
	.quad	0x3fd5f3519bd4067d              # double 0.342976
	.quad	0x3fe99d0203e63e8e              # double 0.80041600000000002
	.quad	0x3fe4722e1ac57e24              # double 0.63893800000000001
	.quad	0x3fcbc810a569b175              # double 0.21704300000000001
	.quad	0x3fca8ecd8dbcec85              # double 0.207483
	.quad	0x3fec9207d4e09785              # double 0.89282600000000001
	.quad	0x3fdce6f71a7e3088              # double 0.45159700000000003
	.quad	0x3fe6857d1782d384              # double 0.70379499999999995
	.quad	0x3fdcd43d03968d76              # double 0.45045400000000002
	.quad	0x3fe94a72ead9274e              # double 0.79033799999999998
	.quad	0x3fd35e529bae46d0              # double 0.30263200000000001
	.quad	0x3fe7415f45e0b4e1              # double 0.72672999999999999
	.quad	0x3fca366516db0dd8              # double 0.20478499999999999
	.quad	0x3feaf3e681a9b8cc              # double 0.84227300000000004
	.quad	0x3fc47c5260f5e41d              # double 0.16004399999999999
	.quad	0x3fdf09741d084e83              # double 0.48495199999999999
	.quad	0x3fc311f0c34c1a8b              # double 0.14898500000000001
	.quad	0x3fe1c0ad03d9a954              # double 0.55476999999999999
	.quad	0x3fda5cf2495e17e3              # double 0.41192299999999998
	.quad	0x3fef1858bc59b802              # double 0.97172199999999997
	.quad	0x3fefe1cde5d18091              # double 0.99631400000000003
	.quad	0x3fd17d4e09784ec6              # double 0.27327299999999999
	.quad	0x3fd56748e4755ffe              # double 0.33442899999999998
	.quad	0x3fe9bde3fbbd7b20              # double 0.80442999999999997
	.quad	0x3fec2b21815a07b3              # double 0.88026499999999996
	.quad	0x3fda3821af7d30ad              # double 0.40967599999999998
	.quad	0x3fd802b841248d7e              # double 0.375166
	.quad	0x3fb9b59578a2a90d              # double 0.100427
	.quad	0x3fef32e9ccb7d417              # double 0.97496499999999997
	.quad	0x3fede5e679463cfb              # double 0.93431399999999998
	.quad	0x3fc98548a9bcfd4c              # double 0.19938
	.quad	0x3fe917b0f6ad70e7              # double 0.78414200000000001
	.quad	0x3fef3e1650a45d42              # double 0.976329
	.quad	0x3fd96d7e889c1b54              # double 0.39730799999999999
	.quad	0x3fe17e2c55c96031              # double 0.54665200000000003
	.quad	0x3fc08ab4fa48301a              # double 0.12923299999999999
	.quad	0x3fe01e1d2178f68c              # double 0.50367600000000001
	.quad	0x3fde4e4c942d490e              # double 0.47352899999999998
	.quad	0x3fe4584d338f7985              # double 0.63577899999999998
	.quad	0x3f5e6cd29131ec0b              # double 0.0018569999999999999
	.quad	0x3fe33f487fcb923a              # double 0.60147499999999998
	.quad	0x3fccf9ca5bd944aa              # double 0.22637299999999999
	.quad	0x3fcbd6a593a2df93              # double 0.21748799999999999
	.quad	0x3fc85d18090b417d              # double 0.19034100000000001
	.quad	0x3fdb236c15d2d01c              # double 0.424037
	.quad	0x3fe49d29dc725c3e              # double 0.64418500000000001
	.quad	0x3fd828bb0a2ca9ac              # double 0.37748599999999999
	.quad	0x3fe1450ce4ead0c4              # double 0.53967900000000002
	.quad	0x3fe1bb83cf2cf95d              # double 0.55413999999999997
	.quad	0x3fe095d2d01c0ca6              # double 0.518289
	.quad	0x3fed08bfc2224edf              # double 0.90731799999999996
	.quad	0x3fee118a009f6230              # double 0.93964099999999995
	.quad	0x3fef8d6b228dc982              # double 0.98601300000000003
	.quad	0x3fc79a95421c0443              # double 0.18440500000000001
	.quad	0x3fdaa5657fb69985              # double 0.41634500000000002
	.quad	0x3fd31c2e33eff195              # double 0.298595
	.quad	0x3fdeaa00192a7371              # double 0.479126
	.quad	0x3fed496aad1d041d              # double 0.91521200000000003
	.quad	0x3fe0217d2849cb25              # double 0.50408799999999998
	.quad	0x3fd9992428d434a0              # double 0.39997199999999999
	.quad	0x3fe085e80bed740c              # double 0.51634599999999997
	.quad	0x3fe34fdf3b645a1d              # double 0.60350000000000004
	.quad	0x3fdcf1c75818c5ca              # double 0.45225700000000002
	.quad	0x3feb1001d5c31594              # double 0.84570400000000001
	.quad	0x3fe94c165907d912              # double 0.79053799999999996
	.quad	0x3fe730b39192641b              # double 0.72469499999999998
	.quad	0x3fddc647778dd617              # double 0.465227
	.quad	0x3fe61ee02a77a2cf              # double 0.69126900000000002
	.quad	0x3fecd14c22ee4192              # double 0.90054900000000004
	.quad	0x3fe172452c59fb1e              # double 0.54519899999999999
	.quad	0x3fba3c64345cfedf              # double 0.10248400000000001
	.quad	0x3fe98d6909aed56b              # double 0.798512
	.quad	0x3fc7f3e0370cdc87              # double 0.18712999999999999
	.quad	0x3fd8093532e7b3d9              # double 0.37556200000000001
	.quad	0x3fe8b5f1bef49cf5              # double 0.77220999999999995
	.quad	0x3fec307075b3e143              # double 0.88091299999999995
	.quad	0x3fdb60fa15db3398              # double 0.42779400000000001
	.quad	0x3fba121ee675147f              # double 0.101839
	.quad	0x3fb42bb6672fba02              # double 0.078792
	.quad	0x3fd69389b52007dd              # double 0.35275499999999999
	.quad	0x3fe1c6822ff08894              # double 0.55548200000000003
	.quad	0x3fdf0d51f81a5871              # double 0.48518800000000001
	.quad	0x3fb37b28954a7f80              # double 0.076097999999999998
	.quad	0x3fb5d52c16df3f96              # double 0.085283999999999998
	.quad	0x3feaa3d70a3d70a4              # double 0.83250000000000001
	.quad	0x3fd4484944ed6fdb              # double 0.31691200000000003
	.quad	0x3fd632ce89656ef0              # double 0.34685100000000002
	.quad	0x3fe4705425f20210              # double 0.63871199999999995
	.quad	0x3fd378140dd3fe19              # double 0.30420399999999997
	.quad	0x3fc5cfa26a22b389              # double 0.17039899999999999
	.quad	0x3fe003a96d4c33b5              # double 0.50044699999999998
	.quad	0x3fc2b6848beb5b2d              # double 0.14619499999999999
	.quad	0x3fd59b2c40d0aaa8              # double 0.33759600000000001
	.quad	0x3fe9b545c78a6dad              # double 0.80337800000000004
	.quad	0x3fd98fabda0dfdf0              # double 0.39939400000000003
	.quad	0x3fc402ea960b6fa0              # double 0.15633900000000001
	.quad	0x3fe4a98676a7264a              # double 0.64569399999999999
	.quad	0x3fc4b9a9da597d4a              # double 0.161916
	.quad	0x3fe00b84988094e6              # double 0.50140600000000002
	.quad	0x3fc3ce63a5c1c609              # double 0.15473600000000001
	.quad	0x3fed2fb3b7521145              # double 0.91207300000000002
	.quad	0x3fdce9d0e991ff71              # double 0.45177099999999998
	.quad	0x3feac96ededaec4a              # double 0.83708899999999997
	.quad	0x3fefa235b4edb2f6              # double 0.98855099999999996
	.quad	0x3feb9ae70c1333b9              # double 0.86265899999999995
	.quad	0x3fe35efa615a8deb              # double 0.60534399999999999
	.quad	0x3f9ed2cbea4ebdd3              # double 0.030100999999999999
	.quad	0x3fd0d21bc126a65d              # double 0.262824
	.quad	0x3fdcfe260b2c83ed              # double 0.45301200000000003
	.quad	0x3fac41fea8112ba1              # double 0.055190999999999997
	.quad	0x3feea2f48c2e770c              # double 0.95739200000000002
	.quad	0x3feb4bf2b239a390              # double 0.85302100000000003
	.quad	0x3fe13854046412cf              # double 0.53812599999999999
	.quad	0x3fed329c347e8cce              # double 0.91242800000000002
	.quad	0x3fd207a28bb0a2cb              # double 0.28171600000000002
	.quad	0x3fd56f9b994e1a3f              # double 0.33493699999999998
	.quad	0x3fbb98d8a979e16d              # double 0.10780099999999999
	.quad	0x3f947cfa26a22b39              # double 0.020008000000000001
	.quad	0x3fea0982cb20fb22              # double 0.81366099999999997
	.quad	0x3fefe1565c2d2780              # double 0.99625699999999995
	.quad	0x3fdd357e670e2c13              # double 0.45639000000000002
	.quad	0x3fe2b324851a8694              # double 0.584368
	.quad	0x3fb1e4f765fd8adb              # double 0.069900000000000004
	.quad	0x3fc864b2314013ec              # double 0.19057299999999999
	.quad	0x3fe3eb65a9a80496              # double 0.62248499999999996
	.quad	0x3fd6018611fd5886              # double 0.34384300000000001
	.quad	0x3fc877681669ced1              # double 0.19114400000000001
	.quad	0x3fd7dc37a3db3bfb              # double 0.37281599999999998
	.quad	0x3fd6b18548a9bcfd              # double 0.35458499999999998
	.quad	0x3fe2ea4873365882              # double 0.59109900000000004
	.quad	0x3fc4345cfede97d0              # double 0.15784799999999999
	.quad	0x3f84cfd08d4bad7d              # double 0.010161999999999999
	.quad	0x3fd018f81e8a2ec3              # double 0.25152400000000003
	.quad	0x3fcbdd3bafd976ff              # double 0.21768899999999999
	.quad	0x3fd3a4766c6de764              # double 0.30691299999999999
	.quad	0x3feeba98eda22f6a              # double 0.96027799999999996
	.quad	0x3fe8638c9752977d              # double 0.76215200000000005
	.quad	0x3fa72e275ab7dc7b              # double 0.045274000000000002
	.quad	0x3fdc34acaff6d331              # double 0.44071500000000002
	.quad	0x3fe80cfbfc6540cc              # double 0.75158499999999994
	.quad	0x3fe39322f2734f83              # double 0.611711
	.quad	0x3faf036c9c0a8d22              # double 0.060573000000000002
	.quad	0x3fe472e6a76965f5              # double 0.63902599999999998
	.quad	0x3fc87bc3c5bd0e13              # double 0.191277
	.quad	0x3fe5ecd07852f7f5              # double 0.68515800000000004
	.quad	0x3fde7d9dba908a26              # double 0.47641699999999998
	.quad	0x3fe757add15f02c5              # double 0.72945300000000002
	.quad	0x3fe7e121ee675148              # double 0.74623200000000001
	.quad	0x3fe8560e94ee392e              # double 0.76050499999999999
	.quad	0x3fc2699c7bcc2939              # double 0.143848
	.quad	0x3fed595dd4c76d11              # double 0.91715899999999995
	.quad	0x3fdd5350092ccf6c              # double 0.45821000000000001
	.quad	0x3fcf5f78359bc340              # double 0.24510100000000001
	.quad	0x3fd37f8012dfd695              # double 0.30465700000000001
	.quad	0x3fd9e2cdc011d367              # double 0.40446799999999999
	.quad	0x3fc9f0f5a1016ce8              # double 0.20266600000000001
	.quad	0x3fc9a2be0589acbd              # double 0.20027900000000001
	.quad	0x3fe5c6b8b69552e3              # double 0.680508
	.quad	0x3fbce06530058149              # double 0.112799
	.quad	0x3fd7a7b0b3919264              # double 0.36960999999999999
	.quad	0x3fb79e492bc2fc69              # double 0.092258999999999994
	.quad	0x3fea32df505d0fa6              # double 0.81871000000000005
	.quad	0x3fc155b4677b395c              # double 0.13542799999999999
	.quad	0x3fd20d130df9bdc7              # double 0.28204800000000002
	.quad	0x3fde3f4eca686e7e              # double 0.47261399999999998
	.quad	0x3fe0a597d49d7ba6              # double 0.52021399999999995
	.quad	0x3fd6f8f47304039b              # double 0.35894500000000001
	.quad	0x3fdcf61aa3f034b1              # double 0.45252100000000001
	.quad	0x3fe8af23033a4724              # double 0.77137900000000003
	.quad	0x3fb44ec636b09635              # double 0.079326999999999995
	.quad	0x3fe63ce63a5c1c61              # double 0.69493400000000005
	.quad	0x3fecdd031055b899              # double 0.90197899999999998
	.quad	0x3febae03b3e9a6f8              # double 0.86499199999999998
	.quad	0x3fc00f1b25f633ce              # double 0.12546099999999999
	.quad	0x3fda0c308feac42f              # double 0.40699400000000002
	.quad	0x3fe05ee34fc610f1              # double 0.51158300000000001
	.quad	0x3fe206e3b46fdeb5              # double 0.56334099999999998
	.quad	0x3fdb54c985f06f69              # double 0.42704999999999999
	.quad	0x3fe466a98244e93e              # double 0.63753199999999999
	.quad	0x3fc5a8ef77f27fe5              # double 0.16921800000000001
	.quad	0x3fe1c56b441bb8c3              # double 0.55534899999999998
	.quad	0x3fea4ecc814d727a              # double 0.82211900000000004
	.quad	0x3fc5f77af640639d              # double 0.17161499999999999
	.quad	0x3fc5f57b41bfbdf1              # double 0.17155400000000001
	.quad	0x3fef3215fcc1871e              # double 0.97486399999999995
	.quad	0x3fe86ff5c6c11a11              # double 0.76366699999999998
	.quad	0x3fcd3f0fe047d3d4              # double 0.228487
	.quad	0x3fed3324851a8694              # double 0.91249299999999999
	.quad	0x3feb29a3d2d87f88              # double 0.84883299999999995
	.quad	0x3fec8520d130df9c              # double 0.89125100000000001
	.quad	0x3fe89bd1ed9dfdac              # double 0.76902099999999995
	.quad	0x3fee7080303c07ee              # double 0.951233
	.quad	0x3fe0cbe1eb4202da              # double 0.52488800000000002
	.quad	0x3fe683c4b09e98dd              # double 0.70358500000000002
	.quad	0x3fe40537e2c55c96              # double 0.625637
	.quad	0x3fb3809917939a7c              # double 0.076180999999999999
	.quad	0x3fe44169c23b7953              # double 0.63298500000000002
	.quad	0x3fc92dd377e1b8ed              # double 0.196711
	.quad	0x3febcd2d44dca8e3              # double 0.86879600000000001
	.quad	0x3fe69dabe27179c0              # double 0.70674700000000001
	.quad	0x3fe9a5a250f84018              # double 0.80146899999999999
	.quad	0x3fe808787485e3da              # double 0.75103399999999998
	.quad	0x3fe9d1aa821f2991              # double 0.80684400000000001
	.quad	0x3fe8fac6045baf53              # double 0.78061199999999997
	.quad	0x3fe33eec39799e52              # double 0.60143100000000005
	.quad	0x3fdc6d5065732160              # double 0.44417200000000001
	.quad	0x3febadba4d6e47dc              # double 0.86495699999999997
	.quad	0x3fe40292817763e5              # double 0.62531400000000004
	.quad	0x3fe77a02fb5d0310              # double 0.73364399999999996
	.quad	0x3fd7caf2d7f950b9              # double 0.37176199999999998
	.quad	0x3fd244e0daa0cae6              # double 0.28545399999999999
	.quad	0x3fd8878316a05575              # double 0.38327099999999997
	.quad	0x3fdff6a0dbad3a60              # double 0.49942799999999998
	.quad	0x3fe1a38759253544              # double 0.55121200000000004
	.quad	0x3fc86ddf00abf76a              # double 0.19085299999999999
	.quad	0x3fee2b7995ee136e              # double 0.94280699999999995
	.quad	0x3feea888b545c78a              # double 0.95807299999999995
	.quad	0x3fe71de69ad42c3d              # double 0.72240000000000004
	.quad	0x3fe7efd21ff2e48f              # double 0.74802500000000005
	.quad	0x3fe3975afaf85943              # double 0.61222600000000005
	.quad	0x3fd59817b95a2941              # double 0.33740799999999999
	.quad	0x3fd593af74cd3177              # double 0.33713900000000002
	.quad	0x3f9f240fa9c12f0a              # double 0.030411000000000001
	.quad	0x3fd1e8ff327aa68f              # double 0.27984599999999998
	.quad	0x3fe6a0ad8a11665a              # double 0.70711400000000002
	.quad	0x3fccbb2bba98eda2              # double 0.22446199999999999
	.quad	0x3fdce496ededaec5              # double 0.45145200000000002
	.quad	0x3fe1c3fa2ad3e921              # double 0.55517300000000003
	.quad	0x3fd953d640e9d51b              # double 0.39574199999999998
	.quad	0x3fe0b20d9945b6c3              # double 0.52173499999999995
	.quad	0x3fe7955d5f56a7ad              # double 0.73698300000000005
	.quad	0x3fd82d490e66cb10              # double 0.37776399999999999
	.quad	0x3fee1a91105e1c15              # double 0.940743
	.quad	0x3fe1b0d0edc3bd5a              # double 0.55283400000000005
	.quad	0x3fbed99cbee807bc              # double 0.120508
	.quad	0x3fe0d321e603d578              # double 0.52577300000000005
	.quad	0x3fd376c8b4395810              # double 0.30412499999999998
	.quad	0x3feb48301a79feca              # double 0.85256200000000004
	.quad	0x3feb73a365cb35f4              # double 0.85786600000000001
	.quad	0x3fe4bba98eda22f7              # double 0.64790800000000004
	.quad	0x3fe9b5b70691ea79              # double 0.80343200000000004
	.quad	0x3fc4f3f52fc2656b              # double 0.16369500000000001
	.quad	0x3fc515bdd76683c3              # double 0.16472600000000001
	.quad	0x3fdc9df548ecd8dc              # double 0.44714100000000001
	.quad	0x3fdbde6ddf00abf7              # double 0.43545099999999998
	.quad	0x3fc982235b4edb2f              # double 0.19928399999999999
	.quad	0x3fedd084e831ad21              # double 0.93170399999999998
	.quad	0x3fd5312f4cf4a559              # double 0.331127
	.quad	0x3fd82120e1f7d73d              # double 0.37702200000000002
	.quad	0x3fe30ac3a860dcba              # double 0.59506400000000004
	.quad	0x3fd7575c0767d34e              # double 0.364707
	.quad	0x3feec2c3c9eecbfb              # double 0.96127499999999999
	.quad	0x3feb51569f490603              # double 0.85367899999999997
	.quad	0x3fadb5525cc42635              # double 0.058023999999999999
	.quad	0x3fedd698fe69270b              # double 0.932446
	.quad	0x3fe4c0d90e23af32              # double 0.64854100000000003
	.quad	0x3fe53506dd69d302              # double 0.66272299999999995
	.quad	0x3fefb265add9c27f              # double 0.99052700000000004
	.quad	0x3fe9ddfc9ff92f2b              # double 0.80834799999999996
	.quad	0x3fcd62bf11f926c8              # double 0.229576
	.quad	0x3fb04816f0068db9              # double 0.063600000000000004
	.quad	0x3f9fa2f05a708ede              # double 0.030894999999999999
	.quad	0x3fd7e8b3b320535d              # double 0.37357800000000002
	.quad	0x3fb7bf83382e44b7              # double 0.092766000000000001
	.quad	0x3fdeb1d0c8041030              # double 0.479603
	.quad	0x3fc2da87a072d1af              # double 0.14729400000000001
	.quad	0x3fcd2fec56d5cfab              # double 0.22802500000000001
	.quad	0x3fb91947cfa26a23              # double 0.098042000000000004
	.quad	0x3fed9e96c3fc43b3              # double 0.92560900000000002
	.quad	0x3fe2726f1dc50ce5              # double 0.57646900000000001
	.quad	0x3fece5753a3ec02f              # double 0.90300999999999998
	.quad	0x3fdc48a159817b96              # double 0.44193300000000002
	.quad	0x3faf75104d551d69              # double 0.061440000000000002
	.quad	0x3fe8ccf0739b024f              # double 0.77501699999999996
	.quad	0x3fe2bfa6defc7a3a              # double 0.58589500000000005
	.quad	0x3fc8fee6fb4c3c19              # double 0.19527900000000001
	.quad	0x3fd4c610f0e90bc8              # double 0.32458900000000002
	.quad	0x3fd7ffcdab191dde              # double 0.37498799999999999
	.quad	0x3fe5cc61d8622c45              # double 0.681199
	.quad	0x3fe86177ea1c68ec              # double 0.76189799999999996
	.quad	0x3fe6041ede1198af              # double 0.68800300000000003
	.quad	0x3fd621b7e0ac7da2              # double 0.345808
	.quad	0x3fc78ea7ce0fc2ec              # double 0.18404100000000001
	.quad	0x3feed72de43ed95a              # double 0.96376700000000004
	.quad	0x3fe32dcf4623d0c0              # double 0.59934200000000004
	.quad	0x3fc7e44fa05143bf              # double 0.18665499999999999
	.quad	0x3fe01f2dc2b0ea18              # double 0.50380599999999998
	.quad	0x3fe4d56d19dece57              # double 0.65105299999999999
	.quad	0x3fe86935b91f70df              # double 0.76284300000000005
	.quad	0x3fe9e9dd7ecbb7fa              # double 0.80979800000000002
	.quad	0x3fd32aa9f7b5aea3              # double 0.299479
	.quad	0x3fdf29131ec0b567              # double 0.48688199999999998
	.quad	0x3fcd041461b6d43d              # double 0.226687
	.quad	0x3fdb8255b035bd51              # double 0.42982999999999999
	.quad	0x3feb6e525892684d              # double 0.85721700000000001
	.quad	0x3fcf6733ebbfd71b              # double 0.245337
	.quad	0x3fd37603925bb7b7              # double 0.30407800000000001
	.quad	0x3febe0a2014727dd              # double 0.87117100000000003
	.quad	0x3febf62b6ae7d567              # double 0.87380000000000002
	.quad	0x3feaa3af31b152f4              # double 0.83248100000000002
	.quad	0x3fe185271bcdbbe0              # double 0.54750399999999999
	.quad	0x3fd346e08f217093              # double 0.301201
	.quad	0x3fea6603d577963a              # double 0.82495300000000005
	.quad	0x3fef6c093d966384              # double 0.98193799999999997
	.quad	0x3feaf95f676ea423              # double 0.84294100000000005
	.quad	0x3fea2db8348f53c5              # double 0.81808099999999995
	.quad	0x3fefe974a3400b89              # double 0.99724800000000002
	.quad	0x3fe959817b95a294              # double 0.79217599999999999
	.quad	0x3fe1b3cc4ac6cdaf              # double 0.55319799999999997
	.quad	0x3fee276534373f31              # double 0.94230899999999995
	.quad	0x3faa602c9081c2e3              # double 0.051514999999999998
	.quad	0x3fe5ea65cf67b1c0              # double 0.684863
	.quad	0x3fe3fa5b0ff10ecb              # double 0.62431099999999995
	.quad	0x3fdac4a83b1d0c80              # double 0.41825299999999999
	.quad	0x3fb5f9bdc69f8c22              # double 0.085842000000000001
	.quad	0x3fdcd9dba908a266              # double 0.450797
	.quad	0x3fef035158b827fa              # double 0.96915499999999999
	.quad	0x3fe606c6583e8577              # double 0.68832700000000002
	.quad	0x3fd46e82949a5658              # double 0.319245
	.quad	0x3feebcb1cc964628              # double 0.96053399999999999
	.quad	0x3fe429ae4f3343fa              # double 0.63008799999999998
	.quad	0x3fc820ddc6195465              # double 0.188503
	.quad	0x3fe9658a32f44913              # double 0.79364500000000004
	.quad	0x3fe2003cd141a693              # double 0.56252899999999995
	.quad	0x3fdda148ba83f4ed              # double 0.46296900000000002
	.quad	0x3fc10691ea78af3e              # double 0.13301299999999999
	.quad	0x3fe121cac083126f              # double 0.53537500000000005
	.quad	0x3fa4d8127b2cc708              # double 0.040710999999999997
	.quad	0x3fe5034d26fa3fcd              # double 0.65665300000000004
	.quad	0x3fd540d4dc65c704              # double 0.33208199999999999
	.quad	0x3fed4a70d1fa3337              # double 0.91533699999999996
	.quad	0x3fdbd66adb402d17              # double 0.43496200000000002
	.quad	0x3fb871b4784230fd              # double 0.095485
	.quad	0x3fbbaade657b84dc              # double 0.10807600000000001
	.quad	0x3fdd1d5c31593e60              # double 0.45491700000000002
	.quad	0x3fb9a8049667b5f2              # double 0.10022
	.quad	0x3fc3739f340d4dc6              # double 0.15196599999999999
	.quad	0x3fd03037d63022dd              # double 0.25294299999999997
	.quad	0x3fdc0e3cd9a52264              # double 0.43836900000000001
	.quad	0x3fd7107faa044ae8              # double 0.36038199999999998
	.quad	0x3fe41aa60913a4f8              # double 0.62825299999999995
	.quad	0x3fd5494d50ebaade              # double 0.33259899999999998
	.quad	0x3fed8917d6b65a9b              # double 0.92298500000000006
	.quad	0x3fd8f9335d249e45              # double 0.39021
	.quad	0x3fe740b9991361dd              # double 0.72665100000000005
	.quad	0x3fdc298cc144028e              # double 0.44003599999999998
	.quad	0x3fc1db3397dd00f7              # double 0.13950199999999999
	.quad	0x3fd5b33daf8df7a5              # double 0.33906500000000001
	.quad	0x3fc37b9e060fe47a              # double 0.15221000000000001
	.quad	0x3fec44545846e8f3              # double 0.88334100000000004
	.quad	0x3fe605b9e8c47a18              # double 0.68819900000000001
	.quad	0x3fd5e093532e7b3e              # double 0.34183200000000002
	.quad	0x3fbfef5a964e8b7e              # double 0.124746
	.quad	0x3fe76777079e59f3              # double 0.73138000000000003
	.quad	0x3fd93a7546d3f9e8              # double 0.39419300000000002
	.quad	0x3fc5aa79bbadc098              # double 0.169265
	.quad	0x3fd7a02b841248d8              # double 0.36915100000000001
	.quad	0x3fe78d0678c0053e              # double 0.73596499999999998
	.quad	0x3fe741f212d77319              # double 0.7268
	.quad	0x3fc682517e77d524              # double 0.17585200000000001
	.quad	0x3fe1822bbecaab8a              # double 0.54713999999999996
	.quad	0x3fa228997c3d6840              # double 0.035465999999999998
	.quad	0x3fe1d145d851654d              # double 0.55679599999999996
	.quad	0x3fa0385c67dfe32a              # double 0.03168
	.quad	0x3fde87a072d1aeb4              # double 0.47702800000000001
	.quad	0x3fedcd72799a1fd1              # double 0.93132899999999996
	.quad	0x3fee8ce2d1f1cfbc              # double 0.95469800000000004
	.quad	0x3fe9f160956c0d6f              # double 0.81071499999999996
	.quad	0x3fcc9edbf8b9baa1              # double 0.22359799999999999
	.quad	0x3fa868b9fdbd2fa1              # double 0.047674000000000001
	.quad	0x3fd74eb56fb8f57f              # double 0.36417899999999997
	.quad	0x3fe4c2e9899bf594              # double 0.64879299999999995
	.quad	0x3feb4b039ef0f16f              # double 0.85290699999999997
	.quad	0x3fececf206423960              # double 0.90392399999999994
	.quad	0x3feecc729f59ccfb              # double 0.962457
	.quad	0x3fa73519bd4067cf              # double 0.045326999999999999
	.quad	0x3fe179ebe9c88616              # double 0.54613299999999998
	.quad	0x3fe1b4ce3de6149c              # double 0.55332099999999995
	.quad	0x3fea4dca8e2e2b8c              # double 0.82199599999999994
	.quad	0x3fc385942917507f              # double 0.15251400000000001
	.quad	0x3fc6c74b838c111b              # double 0.177957
	.quad	0x3fd1321e603d5779              # double 0.26868399999999998
	.quad	0x3fef987a4a48f96e              # double 0.98736299999999999
	.quad	0x3fe71e9d0e991ff7              # double 0.72248699999999999
	.quad	0x3fea682949a56580              # double 0.82521500000000003
	.quad	0x3fe9c545846e8f2a              # double 0.80533100000000002
	.quad	0x3fdaab25b317efe1              # double 0.41669600000000001
	.quad	0x3fc995bbbe878fac              # double 0.199882
	.quad	0x3fdbb7a5f41aef70              # double 0.43308400000000002
	.quad	0x3fea14c447c30d30              # double 0.81503499999999995
	.quad	0x3fb52428d434a01b              # double 0.082583000000000004
	.quad	0x3fe343fa2ad3e921              # double 0.60204800000000003
	.quad	0x3fe6f3dc054ef45a              # double 0.71726800000000002
	.quad	0x3fe8218def416bdb              # double 0.75409599999999999
	.quad	0x3fdcf6cacd184c27              # double 0.45256299999999999
	.quad	0x3fe00e3ef284167b              # double 0.50173900000000005
	.quad	0x3fe8ea960b6f9fcb              # double 0.77863599999999999
	.quad	0x3fe6a3e7d135115a              # double 0.70750800000000003
	.quad	0x3fe0d753a3ec02f3              # double 0.526285
	.quad	0x3fdc67c6b8b69553              # double 0.44383400000000001
	.quad	0x3fdb98dcdb37c99b              # double 0.431205
	.quad	0x3fe28dbf0563ed0f              # double 0.57980299999999996
	.quad	0x3fd94ed6fda836eb              # double 0.39543699999999998
	.quad	0x3fe21791819d2392              # double 0.56537700000000002
	.quad	0x3fde734b51372a39              # double 0.47578700000000002
	.quad	0x3feef07bfe7e1fc1              # double 0.96685600000000004
	.quad	0x3fed6134ce3de615              # double 0.91811600000000004
	.quad	0x3fd7bc33f85510d4              # double 0.37086200000000002
	.quad	0x3fe50a24463065f9              # double 0.65748799999999996
	.quad	0x3fc169db65ecc3e3              # double 0.136043
	.quad	0x3fc7186db50f40e6              # double 0.18043300000000001
	.quad	0x3fe0ddb5525cc426              # double 0.52706399999999998
	.quad	0x3fed0da7f3cf7015              # double 0.90791699999999997
	.quad	0x3feca2706d506573              # double 0.89482899999999999
	.quad	0x3fe663864cb5bb38              # double 0.69964899999999997
	.quad	0x3fd1e4fb97bb7308              # double 0.27960099999999999
	.quad	0x3feef8e1932d6ece              # double 0.96788099999999999
	.quad	0x3fc06ca03c4b09ea              # double 0.12831500000000001
	.quad	0x3fe3d7f737da61e1              # double 0.62011300000000003
	.quad	0x3fad61d4306e5cd5              # double 0.057387000000000001
	.quad	0x3fe9c1cc532a4980              # double 0.80490700000000004
	.quad	0x3fe76801711947d0              # double 0.73144600000000004
	.quad	0x3fdce85b9e8c47a1              # double 0.45168199999999997
	.quad	0x3fd65321e603d578              # double 0.34882400000000002
	.quad	0x3fe419ae924f227d              # double 0.628135
	.quad	0x3fbd572580c308ff              # double 0.114611
	.quad	0x3fe91aaa3ad18d26              # double 0.78450500000000001
	.quad	0x3fa146801711947d              # double 0.033741
	.quad	0x3feed3a604e1e710              # double 0.96333599999999997
	.quad	0x3fe5076e1deacc92              # double 0.65715699999999999
	.quad	0x3fdca05dd8f92afa              # double 0.44728800000000002
	.quad	0x3fb5288ce703afb8              # double 0.082650000000000001
	.quad	0x3fecfc06e19b90eb              # double 0.90576500000000004
	.quad	0x3fd106e19b90ea9e              # double 0.26604499999999998
	.quad	0x3fd66d6dc1a47a9e              # double 0.35042899999999999
	.quad	0x3fc3797460242d06              # double 0.152144
	.quad	0x3fea79b994e1a3f4              # double 0.82735899999999995
	.quad	0x3fee8ef566490a35              # double 0.95495099999999999
	.quad	0x3fe200fba8826aa9              # double 0.56262000000000001
	.quad	0x3fd380a17b0f6ad7              # double 0.304726
	.quad	0x3fee7b549f94855e              # double 0.95255500000000004
	.quad	0x3fed5c6195464dc2              # double 0.91752699999999998
	.quad	0x3fe78357a355043e              # double 0.73478299999999996
	.quad	0x3fcb5c28f5c28f5c              # double 0.21375
	.quad	0x3fd2e3c105186db5              # double 0.295151
	.quad	0x3fdbecb31c219eb6              # double 0.43632199999999999
	.quad	0x3fd0bfa8f7db6e50              # double 0.26169799999999999
	.quad	0x3fe1a0ab71327243              # double 0.55086299999999999
	.quad	0x3fcbb42cc2d6a9c5              # double 0.21643599999999999
	.quad	0x3fe8cab81f969e3d              # double 0.77474600000000005
	.quad	0x3fed0767d34df04e              # double 0.90715400000000002
	.quad	0x3fe05adfb506dd6a              # double 0.51109300000000002
	.quad	0x3fe44f13cee9dd7f              # double 0.63465300000000002
	.quad	0x3fe591a543f1c758              # double 0.67402899999999999
	.quad	0x3fecb291b823c85c              # double 0.89679799999999998
	.quad	0x3fe13b8c32a8c9b8              # double 0.53851899999999997
	.quad	0x3fe99b4784230fd0              # double 0.80020500000000006
	.quad	0x3fa8b39192641b33              # double 0.048245000000000003
	.quad	0x3feaf3d188f42fe8              # double 0.84226299999999998
	.quad	0x3faa76fb09203a32              # double 0.051688999999999999
	.quad	0x3fe42c6045baf534              # double 0.63041700000000001
	.quad	0x3fe6ff10ecb74de0              # double 0.71863600000000005
	.quad	0x3fd5f1bac2df0d41              # double 0.34287899999999999
	.quad	0x3f9e653868fd199c              # double 0.029683000000000001
	.quad	0x3fe6e264e48626f6              # double 0.71513599999999999
	.quad	0x3fe94ed6fda836eb              # double 0.79087399999999997
	.quad	0x3fe1369db65ecc3e              # double 0.53791699999999998
	.quad	0x3fd5846e8f29d40f              # double 0.33620800000000001
	.quad	0x3fe835a858793dd9              # double 0.75654999999999994
	.quad	0x3fced794a6eb91b4              # double 0.240954
	.quad	0x3fe6a9f383f0bae9              # double 0.70824600000000004
	.quad	0x3fd01aa821f2990f              # double 0.25162699999999999
	.quad	0x3fdd5e84f09528f2              # double 0.45889400000000002
	.quad	0x3fe49c6b05319829              # double 0.64409400000000006
	.quad	0x3fe48cef672b8844              # double 0.642204
	.quad	0x3fd5265add9c27e9              # double 0.33046599999999998
	.quad	0x3fbdc087442c7fbb              # double 0.116219
	.quad	0x3fe0bc4d22c881e4              # double 0.52298599999999995
	.quad	0x3fe9cc22ee41919b              # double 0.80616900000000002
	.quad	0x3fe431e9f2778141              # double 0.63109300000000002
	.quad	0x3feca81ba7fc32ec              # double 0.89552100000000001
	.quad	0x3fda61f5be5d9e41              # double 0.41222900000000001
	.quad	0x3fbc64a9cdc44391              # double 0.110911
	.quad	0x3feece4430b178b3              # double 0.96267899999999995
	.quad	0x3fcba437824d4cba              # double 0.215949
	.quad	0x3fd267e846a5d6bf              # double 0.28759200000000001
	.quad	0x3fe7e221c8a7a41e              # double 0.74635399999999996
	.quad	0x3fd42f5126634118              # double 0.315388
	.quad	0x3fd9cad9ad85dfa8              # double 0.40300599999999998
	.quad	0x3fbf59bc33f85511              # double 0.122463
	.quad	0x3fdfe93e1c9b413a              # double 0.49861100000000003
	.quad	0x3fd7f97aaac1094a              # double 0.37460199999999999
	.quad	0x3fe2999780baa583              # double 0.58124900000000002
	.quad	0x3fedf6e1deacc921              # double 0.93638699999999997
	.quad	0x3fece7d1351159c5              # double 0.90329800000000005
	.quad	0x3fd5b11409a24031              # double 0.33893299999999998
	.quad	0x3fe515e7c8d19589              # double 0.65892399999999995
	.quad	0x3fee11d14e3bcd36              # double 0.93967500000000004
	.quad	0x3fec78183f91e647              # double 0.88966000000000001
	.quad	0x3fec8fc0d2c386d3              # double 0.89254800000000001
	.quad	0x3fe14ffeb074a772              # double 0.54101500000000002
	.quad	0x3fedf4afd5454153              # double 0.93611900000000003
	.quad	0x3fca059210385c68              # double 0.203295
	.quad	0x3fee0194c0160525              # double 0.937693
	.quad	0x3fd108dd1e53a81e              # double 0.26616600000000001
	.quad	0x3fdcd1f601797cc4              # double 0.45031500000000002
	.quad	0x3fd5831ad2135dab              # double 0.33612700000000001
	.quad	0x3fe7e045baf533f4              # double 0.74612699999999998
	.quad	0x3fe9f9cc74b838c1              # double 0.81174299999999999
	.quad	0x3fe278897e996313              # double 0.577214
	.quad	0x3fbee19b90ea9e6f              # double 0.12063
	.quad	0x3fec2b1d4f9c1f86              # double 0.88026300000000002
	.quad	0x3fb17f4128bf3beb              # double 0.068348000000000006
	.quad	0x3fe64fd8f0c77dd8              # double 0.69724699999999995
	.quad	0x3feceddf00abf76a              # double 0.90403699999999998
	.quad	0x3fc04af0bf1a5ca3              # double 0.12728700000000001
	.quad	0x3fe8e2845996744b              # double 0.77765099999999998
	.quad	0x3fedf44d44567126              # double 0.93607200000000002
	.quad	0x3fb539756c93a711              # double 0.082907999999999996
	.quad	0x3fe7ef2a5a469d73              # double 0.74794499999999997
	.quad	0x3fb6fba01eeed890              # double 0.089776999999999995
	.quad	0x3fd597a24894c448              # double 0.33738000000000001
	.quad	0x3fe4b700474d9c6b              # double 0.647339
	.quad	0x3fd3eff9f87f023f              # double 0.31152200000000002
	.quad	0x3f9bc621b7e0ac7e              # double 0.027123000000000001
	.quad	0x3fecb2031ceaf252              # double 0.89673000000000003
	.quad	0x3fb0d92fb19e731d              # double 0.065813999999999998
	.quad	0x3fdb7a6bd6e8af81              # double 0.42934699999999998
	.quad	0x3fe298090b417ca2              # double 0.58105899999999999
	.quad	0x3fe10a67620ee8d1              # double 0.53251999999999999
	.quad	0x3fd3e31d712a0ec7              # double 0.31073699999999999
	.quad	0x3fee0563ed0f6274              # double 0.93815800000000004
	.quad	0x3fcf6f19934efcbd              # double 0.24557799999999999
	.quad	0x3fe1b6f5caf2d7f9              # double 0.55358399999999996
	.quad	0x3feae707e175d13d              # double 0.84070199999999995
	.quad	0x3fe818611fd5885d              # double 0.75297599999999998
	.quad	0x3feda908a265f0f6              # double 0.92688400000000004
	.quad	0x3fb2848beb5b2d4d              # double 0.072334999999999997
	.quad	0x3fd955043e5321e6              # double 0.395814
	.quad	0x3fc01b9f98b71b8b              # double 0.12584300000000001
	.quad	0x3fe730e7ff583a54              # double 0.72472000000000003
	.quad	0x3f7df00abf76a2f5              # double 0.0073090000000000004
	.quad	0x3fd22367e414e7ef              # double 0.28341100000000002
	.quad	0x3fe6013ec460ed81              # double 0.68765200000000004
	.quad	0x3fddd2aa5c5f7c67              # double 0.46598299999999998
	.quad	0x3fdf02ea960b6fa0              # double 0.48455300000000001
	.quad	0x3fc4c1b97353b4b3              # double 0.162162
	.quad	0x3fd076d97b30f8c6              # double 0.25725399999999998
	.quad	0x3fee12ee84ad794a              # double 0.93981099999999995
	.quad	0x3fe57e996312f4cf              # double 0.67170399999999997
	.quad	0x3fe04df8b1572581              # double 0.50951800000000003
	.quad	0x3fe4ad2fe3f359ff              # double 0.64614099999999997
	.quad	0x3fe6360f1b25f634              # double 0.69409900000000002
	.quad	0x3fe91f4d37c1376d              # double 0.78507099999999996
	.quad	0x3fcd8a4c1ebc83a9              # double 0.23078299999999999
	.quad	0x3fbe15ca6ca03c4b              # double 0.11752
	.quad	0x3fc0cdc8754f3776              # double 0.13128000000000001
	.quad	0x3fcc1919ac79702e              # double 0.21951599999999999
	.quad	0x3fde0980b242070c              # double 0.46933000000000002
	.quad	0x3fc3184c271fff7a              # double 0.14917900000000001
	.quad	0x3fde2c3c9eecbfb1              # double 0.47144999999999998
	.quad	0x3fa7d1569f490603              # double 0.046518999999999998
	.quad	0x3fef8dae3e6c4c59              # double 0.98604499999999994
	.quad	0x3fe4f623076c050c              # double 0.65504600000000002
	.quad	0x3fe835d031055b8a              # double 0.75656900000000005
	.quad	0x3fce4a1f080303c0              # double 0.23663699999999999
	.quad	0x3fe4ea098915bdd7              # double 0.65356899999999996
	.quad	0x3fe7076e1deacc92              # double 0.71965699999999999
	.quad	0x3fdc0ba1f4b1ee24              # double 0.43820999999999999
	.quad	0x3fe6b0f49491f2dc              # double 0.70910099999999998
	.quad	0x3fcd51a437824d4d              # double 0.22905400000000001
	.quad	0x3fe0a6634117f844              # double 0.52031099999999997
	.quad	0x3fed98bf7f06705d              # double 0.92489600000000005
	.quad	0x3fea42acb85a4f01              # double 0.82063900000000001
	.quad	0x3fe09c864883fd50              # double 0.51910699999999999
	.quad	0x3fd6ba732df505d1              # double 0.35513
	.quad	0x3fd5059a73b42cc3              # double 0.32846700000000001
	.quad	0x3fdc838c111ada77              # double 0.44552900000000001
	.quad	0x3fdb98b71b8aa002              # double 0.43119600000000002
	.quad	0x3fdd4e50c5eb313c              # double 0.45790500000000001
	.quad	0x3fe61552e2fbe33b              # double 0.69010300000000002
	.quad	0x3fc13c68661ae70c              # double 0.134656
	.quad	0x3fed2263d816aceb              # double 0.91044800000000004
	.quad	0x3fe4e1b4bb5e0f80              # double 0.65255200000000002
	.quad	0x3fecb743632c1f43              # double 0.89737100000000003
	.quad	0x3fe89426fe718a87              # double 0.76808500000000002
	.quad	0x3feefdc5931ca7d6              # double 0.96847799999999995
	.quad	0x3fc9413986338b48              # double 0.19730300000000001
	.quad	0x3fb7c5cdd50a88f0              # double 0.092862
	.quad	0x3fa12189bd8383ae              # double 0.033459000000000003
	.quad	0x3fd3cc9ea9a3d2d8              # double 0.30936399999999997
	.quad	0x3fe123315d701d9f              # double 0.53554599999999997
	.quad	0x3fe61a048e043a21              # double 0.69067599999999996
	.quad	0x3fe41c58255b035c              # double 0.62846000000000002
	.quad	0x3fef9172ef0ae536              # double 0.98650499999999997
	.quad	0x3fc26a4441787054              # double 0.143868
	.quad	0x3fdac69b5a63f9a5              # double 0.41837200000000002
	.quad	0x3fc7f9830e3cd9a5              # double 0.187302
	.quad	0x3fec8be7296f6513              # double 0.89207800000000004
	.quad	0x3fc1c579f2346562              # double 0.13883899999999999
	.quad	0x3fd72d7b634dad32              # double 0.362151
	.quad	0x3fd69d388a8b08dd              # double 0.35334599999999999
	.quad	0x3fd9ba493c89f40a              # double 0.40199499999999999
	.quad	0x3fe874299d883ba3              # double 0.76417999999999997
	.quad	0x3fd6a322af577100              # double 0.35370699999999999
	.quad	0x3fd3f42bb6672fba              # double 0.311778
	.quad	0x3fef080d801b4352              # double 0.96973299999999996
	.quad	0x3fe33cdfefbf401c              # double 0.60118099999999997
	.quad	0x3fedd19bd4067cf2              # double 0.93183700000000003
	.quad	0x3fd81f926c7eae5c              # double 0.37692700000000001
	.quad	0x3fe5c8909289dae0              # double 0.68073300000000003
	.quad	0x3fb2f5ec80c73abd              # double 0.074065000000000006
	.quad	0x3febd28d002e2329              # double 0.869452
	.quad	0x3fd1de6ddf00abf7              # double 0.27920099999999998
	.quad	0x3fc6676a7264a16a              # double 0.17503099999999999
	.quad	0x3fe21e2bcf91a32b              # double 0.56618299999999999
	.quad	0x3fe70986fcdee350              # double 0.71991300000000003
	.quad	0x3fef3dd76683c298              # double 0.97629900000000002
	.quad	0x3fbdd57ff9b56324              # double 0.116539
	.quad	0x3feb3ab430f49492              # double 0.85091600000000001
	.quad	0x3fee67d9988d2a20              # double 0.95017700000000004
	.quad	0x3fcfa5c1c6088d6d              # double 0.24724599999999999
	.quad	0x3fe38bc9cd3e0bd4              # double 0.61081399999999997
	.quad	0x3fd17de5082cf52c              # double 0.27330900000000002
	.quad	0x3fd5cf52b90a7829              # double 0.340779
	.quad	0x3feaf49adc8fb86f              # double 0.84235899999999997
	.quad	0x3fee285ec3dab5c4              # double 0.94242800000000004
	.quad	0x3fe17baecd07852f              # double 0.54634799999999994
	.quad	0x3feda49c2c1b10fd              # double 0.92634399999999995
	.quad	0x3fd21465e8922531              # double 0.282495
	.quad	0x3f8e16d6dc1a47aa              # double 0.014692
	.quad	0x3fe491361dc93ea3              # double 0.64272600000000002
	.quad	0x3fd00247021d10b2              # double 0.250139
	.quad	0x3fe4333333333333              # double 0.63124999999999998
	.quad	0x3fe6bbd1676640a7              # double 0.71042700000000003
	.quad	0x3fe9c02afdda8bd2              # double 0.80470799999999998
	.quad	0x3fa09070fbeb9e49              # double 0.032351999999999999
	.quad	0x3fee93ec460ed80a              # double 0.95555699999999999
	.quad	0x3fe00e10cf5b1c86              # double 0.50171699999999997
	.quad	0x3fe43966be7afa72              # double 0.63200699999999999
	.quad	0x3fda38fffbce4218              # double 0.40972900000000001
	.quad	0x3fee25e353f7ced9              # double 0.94212499999999999
	.quad	0x3fdfce95faa8a82a              # double 0.49698399999999998
	.quad	0x3feb3061c79b34a4              # double 0.84965599999999996
	.quad	0x3fd0c7da1ec4e725              # double 0.26219799999999999
	.quad	0x3fdd035bd512ec6c              # double 0.45333000000000001
	.quad	0x3fca513b5bf6a0dc              # double 0.20560400000000001
	.quad	0x3fdcf8bdec5f394b              # double 0.45268199999999997
	.quad	0x3fab6390c9107faa              # double 0.053494
	.quad	0x3fb2195464dc22ab              # double 0.070698999999999998
	.quad	0x3fe2eb723ee1bd1f              # double 0.59124100000000002
	.quad	0x3fd2915379fa97e1              # double 0.29011999999999999
	.quad	0x3fee568837718655              # double 0.94806299999999999
	.quad	0x3fe5601bc98a222d              # double 0.66798199999999996
	.quad	0x3f774b4070329803              # double 0.0056870000000000002
	.quad	0x3febc7778dd616f8              # double 0.86809899999999995
	.quad	0x3fe0dac8a3726070              # double 0.52670700000000004
	.quad	0x3fe75aa92e62131b              # double 0.72981700000000005
	.quad	0x3fd208f648c7192f              # double 0.28179700000000002
	.quad	0x3fd66ca89fc6da45              # double 0.35038200000000003
	.quad	0x3fec012dfd694ccb              # double 0.87514400000000003
	.quad	0x3fb3f8b9baa1511e              # double 0.078014
	.quad	0x3fe1b4edb2f661f2              # double 0.55333600000000005
	.quad	0x3f8b2b3461309c80              # double 0.013266
	.quad	0x3fcd2bdc26dce39b              # double 0.22790099999999999
	.quad	0x3fdc5cfede97d06c              # double 0.44317600000000001
	.quad	0x3fd9804102ff8ec1              # double 0.398453
	.quad	0x3fe5e2b4959e6256              # double 0.68392399999999998
	.quad	0x3fcd393250b5243a              # double 0.22830800000000001
	.quad	0x3fc453f39d1b2e5a              # double 0.15881200000000001
	.quad	0x3feeae9ee45c358b              # double 0.958816
	.quad	0x3fa2d1287c200c0f              # double 0.036752
	.quad	0x3fcb43d89ce4a7b5              # double 0.213008
	.quad	0x3fed2b55ef1fddec              # double 0.91154000000000001
	.quad	0x3fde461b6d43d039              # double 0.47302899999999998
	.quad	0x3fd2d0a67620ee8d              # double 0.293985
	.quad	0x3fe0d07852f7f499              # double 0.52544800000000003
	.quad	0x3fe57809917939a8              # double 0.67090300000000003
	.quad	0x3fdb49f0e4da09cc              # double 0.42638799999999999
	.quad	0x3fe3625e99e94ab2              # double 0.60575800000000002
	.quad	0x3fee499f1ae2da55              # double 0.94648699999999997
	.quad	0x3fd9fe047d3d4281              # double 0.40612900000000002
	.quad	0x3fad04c48adeebb3              # double 0.056676999999999998
	.quad	0x3fd4713f077ccc03              # double 0.31941199999999997
	.quad	0x3fe197aaac1094a3              # double 0.54976400000000003
	.quad	0x3fe763a9f383f0bb              # double 0.73091600000000001
	.quad	0x3fd79780baa582dc              # double 0.36862200000000001
	.quad	0x3fd02014727dcbde              # double 0.25195800000000002
	.quad	0x3fb97214f0520d13              # double 0.099396999999999999
	.quad	0x3fe63352a8438088              # double 0.69376499999999997
	.quad	0x3f9089a027525461              # double 0.016150000000000001
	.quad	0x3fd7bda5119ce076              # double 0.37095
	.quad	0x3fe34a05dd8f92b0              # double 0.60278600000000004
	.quad	0x3fe8b035bd512ec7              # double 0.77151000000000003
	.quad	0x3fc34cb1897a67a5              # double 0.150778
	.quad	0x3fc25daf07bfe7e2              # double 0.143484
	.quad	0x3fe12b96f21f6cad              # double 0.53657100000000002
	.quad	0x3fe2b9cb6848beb6              # double 0.58518000000000003
	.quad	0x3fe9ac42e9899bf6              # double 0.80227800000000005
	.quad	0x3fd62d7b634dad32              # double 0.346526
	.quad	0x3fcfacf7446f9b99              # double 0.24746599999999999
	.quad	0x3fb0870110a137f4              # double 0.064560000000000006
	.quad	0x3fde730c67168f8e              # double 0.47577199999999997
	.quad	0x3fc83c4b09e98dce              # double 0.18934000000000001
	.quad	0x3feaba2df9378ee3              # double 0.83522700000000005
	.quad	0x3fec1e108c3f3e03              # double 0.87866999999999995
	.quad	0x3fefee696a26e547              # double 0.99785299999999998
	.quad	0x3fefcfa05143bf72              # double 0.99409499999999995
	.quad	0x3fe9e59f2ba9d1f6              # double 0.80928
	.quad	0x3fe60637bd05af6c              # double 0.68825899999999995
	.quad	0x3fefa71de69ad42c              # double 0.98914999999999997
	.quad	0x3fdeadf71eafee70              # double 0.47936800000000002
	.quad	0x3fdb832b990afe61              # double 0.42988100000000001
	.quad	0x3fd0596c82e019b1              # double 0.25545800000000002
	.quad	0x3fe557c6fbd273d6              # double 0.66696500000000003
	.quad	0x3fc001797cc39ffd              # double 0.12504499999999999
	.quad	0x3fe1823a6ce3582a              # double 0.54714700000000005
	.quad	0x3fdfb73083558a76              # double 0.495556
	.quad	0x3fe99a5870da5daf              # double 0.800091
	.quad	0x3fde08e581cf7879              # double 0.46929300000000002
	.quad	0x3fec52391d57ff9b              # double 0.88503699999999996
	.quad	0x3fd651deefe4ffc9              # double 0.34874699999999997
	.quad	0x3fd7abead4f5903a              # double 0.36986799999999997
	.quad	0x3fc5c903ea704bc2              # double 0.17019699999999999
	.quad	0x3fd7897a67a52ac7              # double 0.36776599999999998
	.quad	0x3fdd72c94b380cb7              # double 0.46013100000000001
	.quad	0x3fe7a606fac6045c              # double 0.73901700000000003
	.quad	0x3feca4b5568e820e              # double 0.89510599999999996
	.quad	0x3fe7112ba16e7a31              # double 0.72084599999999999
	.quad	0x3fdea433508f648c              # double 0.47877199999999998
	.quad	0x3fca85a921ccd962              # double 0.207204
	.quad	0x3fe39d55e6bc621b              # double 0.61295599999999995
	.quad	0x3fe1cbccf28c79f6              # double 0.55612799999999996
	.quad	0x3fe9ccf6be37de94              # double 0.80627000000000004
	.quad	0x3fe2e640a6b93ccd              # double 0.59060699999999999
	.quad	0x3fc8d82ba5a03819              # double 0.19409699999999999
	.quad	0x3fe25b35b0bbf50e              # double 0.57363399999999998
	.quad	0x3febb13be22e5de1              # double 0.86538499999999996
	.quad	0x3fd7b213e3e29308              # double 0.37024400000000002
	.quad	0x3fe95119ce075f70              # double 0.79115000000000002
	.quad	0x3feee7a311e85fd0              # double 0.96577599999999997
	.quad	0x3fb95d1c3ac929aa              # double 0.099076999999999998
	.quad	0x3fabbc0a06e9ff0d              # double 0.054169000000000002
	.quad	0x3fed1ffb480a5acd              # double 0.91015400000000002
	.quad	0x3fd6790fb65668c2              # double 0.35113899999999998
	.quad	0x3f9f7a919695d91b              # double 0.030741000000000001
	.quad	0x3feaaff8ec0f8833              # double 0.83398099999999997
	.quad	0x3fe30461f9f01b86              # double 0.59428499999999995
	.quad	0x3fe939fdbd2fa0d7              # double 0.78832899999999995
	.quad	0x3fd2d612c6ac215c              # double 0.29431600000000002
	.quad	0x3fde953586ca89fc              # double 0.47785699999999998
	.quad	0x3fe8abde3fbbd7b2              # double 0.77098
	.quad	0x3fef8919ef954eb1              # double 0.98548599999999997
	.quad	0x3fce3e6c4c5974e6              # double 0.23627999999999999
	.quad	0x3fd896f21f6cacd2              # double 0.38421300000000003
	.quad	0x3fbcfb224aada33c              # double 0.113207
	.quad	0x3fb0b2c83ec892ab              # double 0.065227999999999994
	.quad	0x3fdeab474107314d              # double 0.47920400000000002
	.quad	0x3fded20afa2f05a7              # double 0.48157
	.quad	0x3fd13bbc6eb0b7c3              # double 0.26927099999999998
	.quad	0x3fd568448cf7caa7              # double 0.33448899999999998
	.quad	0x3faafd113836a833              # double 0.052712000000000002
	.quad	0x3fe069df97aaac11              # double 0.51292400000000005
	.quad	0x3fd02dba4d6e47dc              # double 0.25279099999999999
	.quad	0x3fe074128bf3bea9              # double 0.51416899999999999
	.quad	0x3fb2ad0c3d25247d              # double 0.072953000000000004
	.quad	0x3fe6809917939a7c              # double 0.70319799999999999
	.quad	0x3fd8d89ce4a7b4e5              # double 0.38822099999999998
	.quad	0x3febe6601bc98a22              # double 0.87187199999999998
	.quad	0x3fec90d7be9856a3              # double 0.89268099999999995
	.quad	0x3fe42a66dbd72bcb              # double 0.63017599999999996
	.quad	0x3fdf74c09c3ce209              # double 0.49150100000000002
	.quad	0x3fc206b7aa25d8d8              # double 0.14083000000000001
	.quad	0x3fde56084a515cea              # double 0.47400100000000001
	.quad	0x3fed6672fba01eef              # double 0.91875600000000002
	.quad	0x3fe294e3bcd35a86              # double 0.58067500000000005
	.quad	0x3fe6588c1db0142f              # double 0.69830899999999996
	.quad	0x3fe4a22b3892ee85              # double 0.64479600000000004
	.quad	0x3fe794ccab3edd8b              # double 0.73691399999999996
	.quad	0x3fc14195cc857f30              # double 0.13481399999999999
	.quad	0x3fed215336deb95e              # double 0.91031799999999996
	.quad	0x3fc58b2e9ccb7d41              # double 0.16830999999999999
	.quad	0x3fd1d89ce4a7b4e5              # double 0.27884599999999998
	.quad	0x3fb3b352a8438088              # double 0.076954999999999996
	.quad	0x3fea383cf2cf95d5              # double 0.81936500000000001
	.quad	0x3fdbaccd530489d2              # double 0.43242199999999997
	.quad	0x3fe8132f87ad080b              # double 0.75234199999999996
	.quad	0x3fccb7baecd07853              # double 0.224357
	.quad	0x3fd4644523f67f4e              # double 0.31862000000000001
	.quad	0x3fd5d6bebe1650a4              # double 0.34123199999999998
	.quad	0x3fe1cb380cb6c7a8              # double 0.55605700000000002
	.quad	0x3fcb003eea209aaa              # double 0.21094499999999999
	.quad	0x3fea31ceaf251c19              # double 0.81857999999999997
	.quad	0x3fd61550ca1cef24              # double 0.345051
	.quad	0x3fc83d5fdcdf6988              # double 0.18937300000000001
	.quad	0x3feb2a7ded6ba8c6              # double 0.84893700000000005
	.quad	0x3fcfa6a444178705              # double 0.24727299999999999
	.quad	0x3fe38b9fdbd2fa0d              # double 0.61079399999999995
	.quad	0x3fca7d1bb4916ca4              # double 0.20694299999999999
	.quad	0x3fedd9fd36f7e3d2              # double 0.93286000000000002
	.quad	0x3fe618bf7f06705d              # double 0.69052100000000005
	.quad	0x3fee6fbf401c4fc2              # double 0.95114100000000001
	.quad	0x3fcd7f3061c79b35              # double 0.23044400000000001
	.quad	0x3fcbd80e496ededb              # double 0.217531
	.quad	0x3fdb3e3e29307af2              # double 0.425674
	.quad	0x3fef6601bc98a223              # double 0.98120200000000001
	.quad	0x3fd961d4306e5cd5              # double 0.396596
	.quad	0x3fd619e30014f8b6              # double 0.34533000000000003
	.quad	0x3febd0c3d25247cb              # double 0.86923399999999995
	.quad	0x3fea3320535c9e67              # double 0.81874100000000005
	.quad	0x3fc9ec460ed80a18              # double 0.20252300000000001
	.quad	0x3fe83762d83c6c98              # double 0.75676100000000002
	.quad	0x3fd00752da98676a              # double 0.25044699999999998
	.quad	0x3fe90fa9c12f09d9              # double 0.78316200000000002
	.quad	0x3fd52fd75e2046c7              # double 0.33104499999999998
	.quad	0x3feb8bfe3b03e20d              # double 0.86083900000000002
	.quad	0x3fec43d68405b39e              # double 0.88328099999999998
	.quad	0x3fcbca29845dc832              # double 0.21710699999999999
	.quad	0x3fd8b2bfdb4cc250              # double 0.38590999999999998
	.quad	0x3fe244c7b02d59d5              # double 0.57089599999999996
	.quad	0x3fec37b6bb129025              # double 0.88180099999999995
	.quad	0x3fc38fd5cb790fb6              # double 0.15282699999999999
	.quad	0x3fef66f71a7e3088              # double 0.98131900000000005
	.quad	0x3fdd305d95dd4c77              # double 0.45607700000000001
	.quad	0x3fefa32096787ce9              # double 0.98866299999999995
	.quad	0x3fce665e02ea960b              # double 0.23749899999999999
	.quad	0x3fc971b0468448cf              # double 0.19878199999999999
	.quad	0x3fdb3ffef39085f5              # double 0.42578100000000002
	.quad	0x3fcc76295208e150              # double 0.222356
	.quad	0x3fe556ffc115df65              # double 0.66686999999999996
	.quad	0x3fe8b24638c97529              # double 0.77176199999999995
	.quad	0x3fe4612e83a109d0              # double 0.63686299999999996
	.quad	0x3fd0810624dd2f1b              # double 0.25787500000000002
	.quad	0x3fe60e10cf5b1c86              # double 0.68921699999999997
	.quad	0x3f76ce789e774eec              # double 0.005568
	.quad	0x3fe7a29c779a6b51              # double 0.73860000000000003
	.quad	0x3fd0cd31769a9110              # double 0.26252399999999998
	.quad	0x3fe059103c8e25c8              # double 0.51087199999999999
	.quad	0x3feea5fe974a3401              # double 0.95776300000000003
	.quad	0x3fedd84f4c6e6d9c              # double 0.93265500000000001
	.quad	0x3fe68df9bdc69f8c              # double 0.70483099999999999
	.quad	0x3fe3f3a365cb35f4              # double 0.62349100000000002
	.quad	0x3fe139ef0f16f438              # double 0.53832199999999997
	.quad	0x3fefecf63800218e              # double 0.99767600000000001
	.quad	0x3fe863f141205bc0              # double 0.76219999999999999
	.quad	0x3fe7fee4e26d4802              # double 0.749865
	.quad	0x3fe0b4395810624e              # double 0.52200000000000002
	.quad	0x3fc866b1e5c0b999              # double 0.190634
	.quad	0x3fefa60f5e41d4b7              # double 0.98902100000000003
	.quad	0x3fd2da7f3cf70154              # double 0.29458600000000001
	.quad	0x3fe667b80a9de8b4              # double 0.70016100000000003
	.quad	0x3fe8312f4cf4a559              # double 0.75600400000000001
	.quad	0x3fea6032db1e9f27              # double 0.82424299999999995
	.quad	0x3feccb380cb6c7a8              # double 0.89980700000000002
	.quad	0x3fe544ae85b9e8c4              # double 0.66463399999999995
	.quad	0x3fb38eb0318b9347              # double 0.076396000000000006
	.quad	0x3fed5bc23315d702              # double 0.91745100000000002
	.quad	0x3fe7ce746cb966be              # double 0.74395199999999995
	.quad	0x3fef0ed80a17b0f7              # double 0.97056200000000003
	.quad	0x3fd549b62c77574f              # double 0.33262399999999998
	.quad	0x3fcc355043e5321e              # double 0.22037699999999999
	.quad	0x3fe53c68661ae70c              # double 0.66362399999999999
	.quad	0x3fcf2b777d0f1f58              # double 0.24351400000000001
	.quad	0x3f91d4738a3b57c5              # double 0.017412
	.quad	0x3f881e03f705857b              # double 0.011776
	.quad	0x3fa768be2f7b17ce              # double 0.045720999999999998
	.quad	0x3fe6362a5e785b5b              # double 0.69411199999999995
	.quad	0x3fec1ccd96206855              # double 0.87851599999999996
	.quad	0x3fad9ddc1e7967cb              # double 0.057845000000000001
	.quad	0x3fc3f90539fba451              # double 0.15603700000000001
	.quad	0x3fedcccccccccccd              # double 0.93125000000000002
	.quad	0x3fdea704bc27631b              # double 0.47894399999999998
	.quad	0x3fd919b90ea9e6ef              # double 0.39219500000000002
	.quad	0x3fc72cd7cf5f4e44              # double 0.18105599999999999
	.quad	0x3fd4ec7863beec39              # double 0.32693299999999997
	.quad	0x3fcfbca1059ea572              # double 0.247944
	.quad	0x3fd0cc5b8dc55001              # double 0.26247300000000001
	.quad	0x3fb523d4f15e7c8d              # double 0.082577999999999999
	.quad	0x3fe397e996312f4d              # double 0.612294
	.quad	0x3fee2d01c0ca600b              # double 0.942994
	.quad	0x3fdc10cf5b1c8649              # double 0.43852600000000003
	.quad	0x3fee0f68be2f7b18              # double 0.93938100000000002
	.quad	0x3fe20270f3882279              # double 0.56279800000000002
	.quad	0x3fc06fd651b0ccbc              # double 0.128413
	.quad	0x3fc46d2674080f99              # double 0.159581
	.quad	0x3fefddb3397dd00f              # double 0.99581299999999994
	.quad	0x3f846bacf7446f9c              # double 0.0099710000000000007
	.quad	0x3fde0164840e171a              # double 0.468835
	.quad	0x3fd90bfa0945f9df              # double 0.39135599999999998
	.quad	0x3fc081344806290f              # double 0.128943
	.quad	0x3fd448fd9fd36f7e              # double 0.31695499999999999
	.quad	0x3fcf93ab430f4949              # double 0.246694
	.quad	0x3fd1e4abe6a337a8              # double 0.279582
	.quad	0x3fed709b738e6d16              # double 0.91999600000000004
	.quad	0x3fb0725c3dee7818              # double 0.064244999999999997
	.quad	0x3fc266a98244e93e              # double 0.143758
	.quad	0x3fd0e785b5b70692              # double 0.264131
	.quad	0x3fb25a469d7342ee              # double 0.071690000000000004
	.quad	0x3fc9651b0ccbc05d              # double 0.19839799999999999
	.quad	0x3fe6b1832fcac8e7              # double 0.70916900000000005
	.quad	0x3fe4284dfce3150e              # double 0.62992000000000004
	.quad	0x3fe1f8f041461b6d              # double 0.56163799999999997
	.quad	0x3fe75c69f8c21e1d              # double 0.73003099999999999
	.quad	0x3fe79d92b7fe08af              # double 0.737985
	.quad	0x3fe4fb1e18efbb0e              # double 0.65565399999999996
	.quad	0x3fe9034091c08744              # double 0.78164699999999998
	.quad	0x3fc039ffd60e94ee              # double 0.12676999999999999
	.quad	0x3fb3041461b6d43d              # double 0.074281
	.quad	0x3fee592b7fe08af0              # double 0.94838500000000003
	.quad	0x3fe9c8a9bcfd4bf1              # double 0.80574500000000004
	.quad	0x3fec1b66f9335d25              # double 0.87834500000000004
	.quad	0x3fed0a04d12018a4              # double 0.90747299999999997
	.quad	0x3febaa087ca643cc              # double 0.86450599999999999
	.quad	0x3fed938de6ddf00b              # double 0.92426200000000003
	.quad	0x3fec1b4bb5e0f7fd              # double 0.878332
	.quad	0x3fd5fed634549b63              # double 0.34367900000000001
	.quad	0x3fdc51eb851eb852              # double 0.4425
	.quad	0x3fb662ed352220bc              # double 0.087446999999999997
	.quad	0x3fd0065300581494              # double 0.250386
	.quad	0x3fe0355ef1fddebe              # double 0.50651500000000005
	.quad	0x3fa0e086bdf4c2b5              # double 0.032962999999999999
	.quad	0x3fe571fbc5de9c02              # double 0.67016399999999998
	.quad	0x3fe924af0bf1a5ca              # double 0.78572799999999998
	.quad	0x3fe6092684cf073a              # double 0.68861700000000003
	.quad	0x3faf65dbfceb7889              # double 0.061323999999999997
	.quad	0x3fd964fdb09a671f              # double 0.396789
	.quad	0x3fcb3a797891e215              # double 0.21272199999999999
	.quad	0x3fec2ce032db1e9f              # double 0.88047799999999998
	.quad	0x3fecd095af294dd7              # double 0.90046199999999998
	.quad	0x3fc2d4ed2cbea4ec              # double 0.147123
	.quad	0x3fd4573eab367a10              # double 0.31782500000000002
	.quad	0x3f9a4766c6de7642              # double 0.025662999999999998
	.quad	0x3fd7ee2c98e53eb4              # double 0.37391200000000002
	.quad	0x3fe5bacb4289118c              # double 0.67905199999999999
	.quad	0x3fd272d1aeb3dd12              # double 0.28825800000000001
	.quad	0x3feded7a56de3327              # double 0.93523900000000004
	.quad	0x3f502363b256ffc1              # double 9.8499999999999998E-4
	.quad	0x3fe6284167a95c85              # double 0.69241399999999997
	.quad	0x3fcf6177ea1c68ec              # double 0.24516199999999999
	.quad	0x3fc193e5fb71fbc6              # double 0.137326
	.quad	0x3fe390f94c87980f              # double 0.61144699999999996
	.quad	0x3fece1a3f4666eca              # double 0.90254400000000001
	.quad	0x3fea8ad46f587d70              # double 0.82944700000000005
	.quad	0x3fd67a786c22680a              # double 0.35122500000000001
	.quad	0x3fcf72d5e071c53f              # double 0.24569199999999999
	.quad	0x3fed57de0d66f0d0              # double 0.91697600000000001
	.quad	0x3fd96cfc829cfdd2              # double 0.39727699999999999
	.quad	0x3f9eb78897e99631              # double 0.029996999999999999
	.quad	0x3fc4bdba0a526959              # double 0.16203999999999999
	.quad	0x3fe2cf67b1c0010c              # double 0.58781799999999995
	.quad	0x3fe288bda9435ac9              # double 0.57919200000000004
	.quad	0x3fed7be121ee6751              # double 0.92137199999999997
	.quad	0x3fe0d5b89939218a              # double 0.52608900000000003
	.quad	0x3fe15512ec6bce85              # double 0.54163499999999998
	.quad	0x3fe44751ce28ed5f              # double 0.63370599999999999
	.quad	0x3fcd07f23cc8de2b              # double 0.22680500000000001
	.quad	0x3fe7be78e1932d6f              # double 0.74200100000000002
	.quad	0x3fe89f2778140dd4              # double 0.769428
	.quad	0x3fe4ff84449dbec2              # double 0.65619099999999997
	.quad	0x3fa34ca0c282c6ef              # double 0.037693999999999998
	.quad	0x3fd63b107746887b              # double 0.34735500000000002
	.quad	0x3fdbb4d48882f0e1              # double 0.43291200000000002
	.quad	0x3fe8476d117b5287              # double 0.75871900000000003
	.quad	0x3fed2365cb35f3d8              # double 0.91057100000000002
	.quad	0x3f92d87f88765ba7              # double 0.018404
	.quad	0x3fdac7de5082cf53              # double 0.41844900000000002
	.quad	0x3fe5668c26139000              # double 0.66876800000000003
	.quad	0x3fd76e008e9b38d6              # double 0.366089
	.quad	0x3fd1dc768dfbd6a6              # double 0.27908100000000002
	.quad	0x3fe754e6e221c8a8              # double 0.72911400000000004
	.quad	0x3fe30705425f2021              # double 0.594607
	.quad	0x3fa0bf1a5ca29846              # double 0.032708000000000001
	.quad	0x3fb6c7a7c9de0503              # double 0.088983999999999994
	.quad	0x3fea01cd5f99c38b              # double 0.81272
	.quad	0x3fd7c2ce4649906d              # double 0.37126500000000001
	.quad	0x3fa30c23fab10ba6              # double 0.037201999999999999
	.quad	0x3fe016d2aa5c5f7c              # double 0.50278599999999996
	.quad	0x3fee2e62131a8ef7              # double 0.94316199999999994
	.quad	0x3fcfdeb52c9d16fd              # double 0.24898400000000001
	.quad	0x3fe61be4cd749279              # double 0.69090499999999999
	.quad	0x3fed74c6e6d9be4d              # double 0.92050500000000002
	.quad	0x3fe0ac79702e6645              # double 0.52105400000000002
	.quad	0x3fe5f8316a055758              # double 0.68654700000000002
	.quad	0x3fcc02ea960b6fa0              # double 0.21883900000000001
	.quad	0x3feef6db940fecdd              # double 0.96763399999999999
	.quad	0x3fe14020817fc760              # double 0.53907799999999995
	.quad	0x3fc01797cc39ffd6              # double 0.12572
	.quad	0x3fe9c82385404641              # double 0.80568099999999998
	.quad	0x3fbd27a20578e5c5              # double 0.113886
	.quad	0x3fc5e2cdc011d367              # double 0.170984
	.quad	0x3feedefc7a398202              # double 0.96472000000000002
	.quad	0x3fd19d3458cd20b0              # double 0.27522000000000002
	.quad	0x3fea78769ec2ce46              # double 0.82720499999999997
	.quad	0x3fbc955b4677b396              # double 0.111654
	.quad	0x3fe1c58ab92c0618              # double 0.55536399999999997
	.quad	0x3fef33b107746888              # double 0.97506000000000003
	.quad	0x3fed0995aaf78fef              # double 0.90742
	.quad	0x3f8b280f12c27a63              # double 0.013259999999999999
	.quad	0x3fed3b46fdeb52ca              # double 0.91348600000000002
	.quad	0x3fdf8f6cefed6345              # double 0.49312899999999998
	.quad	0x3fcf5fa22706d506              # double 0.24510599999999999
	.quad	0x3fe5836a832b990b              # double 0.672292
	.quad	0x3fee02f944241c3f              # double 0.937863
	.quad	0x3fe08bb906466b1e              # double 0.51705599999999996
	.quad	0x3fd1d744f5d35654              # double 0.27876400000000001
	.quad	0x3fea412f09d8c6d6              # double 0.82045699999999999
	.quad	0x3feaeb80ecfa69be              # double 0.841248
	.quad	0x3fd383a96d4c33b5              # double 0.30491099999999999
	.quad	0x3fd16084a515ce9e              # double 0.27151599999999998
	.quad	0x3fec9f2778140dd4              # double 0.894428
	.quad	0x3fd3b4d056c508b3              # double 0.30791099999999999
	.quad	0x3fd6dadfb506dd6a              # double 0.35710900000000001
	.quad	0x3fdd606b7aa25d8d              # double 0.45900999999999997
	.quad	0x3fd69363f572de44              # double 0.352746
	.quad	0x3fea8a4e379b77c0              # double 0.82938299999999998
	.quad	0x3fde6d97b30f8c65              # double 0.475439
	.quad	0x3fef845fe1112770              # double 0.98490900000000003
	.quad	0x3fe89f01b866e43b              # double 0.76941000000000004
	.quad	0x3fe638f57f737da6              # double 0.69445299999999999
	.quad	0x3fed7b4a2339c0ec              # double 0.9213
	.quad	0x3fe0aafff36ac647              # double 0.52087399999999995
	.quad	0x3fb904b3c3e74afd              # double 0.097727999999999995
	.quad	0x3fd10ebedfa43fe6              # double 0.26652500000000001
	.quad	0x3fe99f0e4da09cc3              # double 0.80066599999999999
	.quad	0x3fe279b77c02afde              # double 0.57735800000000004
	.quad	0x3fe274e874c8ffb9              # double 0.57677100000000003
	.quad	0x3f6b7e0ac7da1ec5              # double 0.003356
	.quad	0x3fe79817b95a2941              # double 0.73731599999999997
	.quad	0x3fecad9274e22a2c              # double 0.89618799999999998
	.quad	0x3fe9808c8259e1f4              # double 0.79694200000000003
	.quad	0x3fedf4afd5454153              # double 0.93611900000000003
	.quad	0x3fd0e77d523b3637              # double 0.264129
	.quad	0x3feab2acfb762d84              # double 0.83431100000000002
	.quad	0x3fec4b838c111ada              # double 0.88421799999999995
	.quad	0x3fdcdd8b60f1b25f              # double 0.45102199999999998
	.quad	0x3fd0c87980f55de6              # double 0.26223600000000002
	.quad	0x3fe70ff759685122              # double 0.72069899999999998
	.quad	0x3fb4abc5154866a1              # double 0.080745999999999998
	.quad	0x3fd8674080f98fa3              # double 0.38130199999999997
	.quad	0x3fb66f9335d249e4              # double 0.087639999999999996
	.quad	0x3fd2238da3c21188              # double 0.28342000000000001
	.quad	0x3feae7cf1c3265ae              # double 0.84079700000000002
	.quad	0x3fe0bd33d29563aa              # double 0.52309600000000001
	.quad	0x3fafcd24e160d888              # double 0.062112000000000001
	.quad	0x3fe69c4545846e8f              # double 0.70657599999999998
	.quad	0x3fecfb97bb730835              # double 0.90571199999999996
	.quad	0x3fef0effe2a3cea7              # double 0.97058100000000002
	.quad	0x3fe4909f1f14983d              # double 0.64265399999999995
	.quad	0x3fe007f88765ba6f              # double 0.500973
	.quad	0x3fe0e8a71de69ad4              # double 0.52839999999999998
	.quad	0x3fde6f47b677f6b2              # double 0.47554200000000002
	.quad	0x3fecfac3eb7cbb3d              # double 0.90561100000000005
	.quad	0x3fcd59ee88df3733              # double 0.22930700000000001
	.quad	0x3fdf7829068986fd              # double 0.49170900000000001
	.quad	0x3fb8545846e8f29d              # double 0.095036999999999996
	.quad	0x3fed4f8726d04e62              # double 0.91595800000000005
	.quad	0x3fd9c8d1958969a1              # double 0.40288200000000002
	.quad	0x3fd13f4a98aa8651              # double 0.26948800000000001
	.quad	0x3fd778fabda0dfdf              # double 0.366759
	.quad	0x3fd7cefaa4766c6e              # double 0.37200800000000001
	.quad	0x3fe464840e1719f8              # double 0.63727
	.quad	0x3f6df3300de4c511              # double 0.003656
	.quad	0x3fc247baa9b499d0              # double 0.142814
	.quad	0x3fe0f110e453d20f              # double 0.52942699999999998
	.quad	0x3fe0bea4ebdd334c              # double 0.52327199999999996
	.quad	0x3fd914db59578a2b              # double 0.39189800000000002
	.quad	0x3feb6efe4ffc9796              # double 0.85729900000000003
	.quad	0x3fe0b48b220791c5              # double 0.52203900000000003
	.quad	0x3fab9fba450acc0c              # double 0.053953000000000001
	.quad	0x3fef5d80e496edee              # double 0.98016400000000004
	.quad	0x3fddf5f91600f345              # double 0.468138
	.quad	0x3fd172de43ed959a              # double 0.27263599999999999
	.quad	0x3fc0577531db445f              # double 0.127669
	.quad	0x3feafa5093964a5a              # double 0.84305600000000003
	.quad	0x3fe932ce89656ef0              # double 0.78745200000000004
	.quad	0x3feaa291fb3fa6df              # double 0.832345
	.quad	0x3fd2949e8815e397              # double 0.290321
	.quad	0x3fb3ad8e432441ff              # double 0.076867000000000005
	.quad	0x3fb38305d95dd4c7              # double 0.076217999999999994
	.quad	0x3fea40d90e23af32              # double 0.82041600000000003
	.quad	0x3fd9f7e3d1cc100e              # double 0.40575499999999998
	.quad	0x3f5d8a5482385404              # double 0.0018029999999999999
	.quad	0x3fee69d94d0dcfcc              # double 0.95042099999999996
	.quad	0x3fcf70f7b9e060fe              # double 0.24563499999999999
	.quad	0x3fefbd273d5bab22              # double 0.99184000000000005
	.quad	0x3fe947a398201cd6              # double 0.789995
	.quad	0x3fc063065f9591cd              # double 0.128022
	.quad	0x3fef8e9f6a93f291              # double 0.98616000000000003
	.quad	0x3fd2e18266772d5e              # double 0.295014
	.quad	0x3feebc1eff9f87f0              # double 0.96046399999999998
	.quad	0x3fd055a7d24180d4              # double 0.25522800000000001
	.quad	0x3fd012018a43bb41              # double 0.25109900000000002
	.quad	0x3fc474c09c3ce209              # double 0.15981300000000001
	.quad	0x3febfa95c853c148              # double 0.87433899999999998
	.quad	0x3f741205bc01a36e              # double 0.0048999999999999998
	.quad	0x3fd6de7a743a6480              # double 0.35732900000000001
	.quad	0x3fec8dde7a743a64              # double 0.89231799999999994
	.quad	0x3fdf34b0e1b4bb5e              # double 0.487591
	.quad	0x3fd970b8cfbfc654              # double 0.397505
	.quad	0x3fe084ccee5abc0e              # double 0.51621099999999998
	.quad	0x3fd2a6e75ff609dd              # double 0.291437
	.quad	0x3fe016d8f4f93bc1              # double 0.50278900000000004
	.quad	0x3fc6a41a261bf37c              # double 0.17688300000000001
	.quad	0x3fc1c1df3300de4c              # double 0.13872899999999999
	.quad	0x3fe2772b4528283d              # double 0.57704699999999998
	.quad	0x3fea5525cc426352              # double 0.82289400000000001
	.quad	0x3fdfe2b8c75c4a84              # double 0.49821300000000002
	.quad	0x3fb1f59ccfaeff5c              # double 0.070153999999999994
	.quad	0x3feca3ca7503b81b              # double 0.89499399999999996
	.quad	0x3fb6a3ad18d25edd              # double 0.088435
	.quad	0x3feaf2a38b8ae31d              # double 0.84211899999999995
	.quad	0x3fe59d7342edbb5a              # double 0.67547000000000001
	.quad	0x3fe1bcfd4bf0995b              # double 0.55432000000000003
	.quad	0x3f947735c182ecaf              # double 0.019986
	.quad	0x3facc1ca3a4b5569              # double 0.056166000000000001
	.quad	0x3fd4c148344c37e7              # double 0.324297
	.quad	0x3fd72aae297396d1              # double 0.36198000000000002
	.quad	0x3fc28869c66d373b              # double 0.144788
	.quad	0x3fb4d12018a43bb4              # double 0.081315999999999999
	.quad	0x3fe31b0468448cf8              # double 0.59704800000000002
	.quad	0x3fc037e6f71a7e31              # double 0.12670600000000001
	.quad	0x3fe815a8deb0fadf              # double 0.75264399999999998
	.quad	0x3fe22f533f42352f              # double 0.56827700000000003
	.quad	0x3fc424bba12b5e53              # double 0.15737100000000001
	.quad	0x3fda465e89225311              # double 0.41054499999999999
	.quad	0x3fd0866a11ec918e              # double 0.25820399999999999
	.quad	0x3fe19c1f85d744f6              # double 0.55030800000000002
	.quad	0x3fd7266772d5e072              # double 0.36171900000000001
	.quad	0x3fd07ae147ae147b              # double 0.25750000000000001
	.quad	0x3fbe30014f8b588e              # double 0.11792
	.quad	0x3fd76e19b90ea9e7              # double 0.366095
	.quad	0x3fe00713f077ccc0              # double 0.50086399999999998
	.quad	0x3fa668e3ef284168              # double 0.043769000000000002
	.quad	0x3fc9987c6327ed85              # double 0.199966
	.quad	0x3fe4f648c7192ea5              # double 0.65506399999999998
	.quad	0x3fe5ef21f6cacd18              # double 0.68544099999999997
	.quad	0x3fdb374794ea0770              # double 0.42524899999999999
	.quad	0x3fd71ea78af3e469              # double 0.36124600000000001
	.quad	0x3fedccc037931444              # double 0.93124399999999996
	.quad	0x3fc48ac5c13fd0d0              # double 0.16048499999999999
	.quad	0x3fe8537c1376d549              # double 0.76019099999999995
	.quad	0x3fec9a048e043a21              # double 0.89380099999999996
	.quad	0x3fd09b23dd54da4d              # double 0.25946900000000001
	.quad	0x3fd654866a11ec92              # double 0.34890900000000002
	.quad	0x3fe2c057082491b0              # double 0.58597900000000003
	.quad	0x3fda8f648c7192ea              # double 0.41500199999999998
	.quad	0x3fe85ce18266772d              # double 0.76133799999999996
	.quad	0x3fe21c92ddbdb5d9              # double 0.56598800000000005
	.quad	0x3fef4f82f5126634              # double 0.97845599999999999
	.quad	0x3fe794d50ebaade6              # double 0.73691799999999996
	.quad	0x3f926aec0724b76f              # double 0.017985999999999999
	.quad	0x3fc6dcb1465e8922              # double 0.17860999999999999
	.quad	0x3fe105b7cfe58601              # double 0.53194799999999998
	.quad	0x3fc89bf9c62a1b5c              # double 0.19225999999999999
	.quad	0x3fd82502eec7c958              # double 0.37725900000000001
	.quad	0x3fd1aca36199780c              # double 0.27616200000000002
	.quad	0x3fd6fd4bf0995aaf              # double 0.35920999999999997
	.quad	0x3fe34c55432873bd              # double 0.60306800000000005
	.quad	0x3fec3f76a2f48c2e              # double 0.88274699999999995
	.quad	0x3fc2b97fe8ee6b83              # double 0.146286
	.quad	0x3fd08bd230b9dc2f              # double 0.25853399999999999
	.quad	0x3f94b380cb6c7a7d              # double 0.020216000000000001
	.quad	0x3feb463065f9591d              # double 0.85231800000000002
	.quad	0x3fefbd5bab21815a              # double 0.991865
	.quad	0x3fe03ca5375c8da0              # double 0.50740300000000005
	.quad	0x3fdf72f33ca31e7e              # double 0.49139100000000002
	.quad	0x3fdddc8b86b15f89              # double 0.466586
	.quad	0x3fefc794ea077037              # double 0.99311300000000002
	.quad	0x3fc402107b784663              # double 0.15631300000000001
	.quad	0x3fe8ed04e618ce2d              # double 0.77893299999999999
	.quad	0x3fe978e3ac0c62e5              # double 0.79600700000000002
	.quad	0x3fe2d0f40e5a35d6              # double 0.58800699999999995
	.quad	0x3fe934528283d35f              # double 0.78763700000000003
	.quad	0x3fe47ed634549b63              # double 0.64048300000000002
	.quad	0x3fdf2b7baecd0785              # double 0.48702899999999999
	.quad	0x3fdaab9b23dd54da              # double 0.41672399999999998
	.quad	0x3fdfa9bcfd4bf099              # double 0.49473499999999998
	.quad	0x3fd9ccd0fe8ab4fa              # double 0.40312599999999998
	.quad	0x3fe11b56323bbc6f              # double 0.53458700000000003
	.quad	0x3fd619220ff54089              # double 0.34528399999999998
	.quad	0x3fed7aebc408d8ed              # double 0.92125500000000005
	.quad	0x3fdefe21d96e9bbf              # double 0.484261
	.quad	0x3f93b96af038e2a0              # double 0.019262000000000001
	.quad	0x3fc5464dc22ab25b              # double 0.16620799999999999
	.quad	0x3fe6c70867ad8e43              # double 0.71179599999999998
	.quad	0x3fc8b10342aa9f7b              # double 0.19290199999999999
	.quad	0x3fcefb4c3c18b503              # double 0.24204400000000001
	.quad	0x3fcf668c26139000              # double 0.24531700000000001
	.quad	0x3fe74d8dbcec84f9              # double 0.728217
	.quad	0x3fe44ddd6e04c059              # double 0.63450499999999999
	.quad	0x3feb5caf2d7f950c              # double 0.85506400000000004
	.quad	0x3fc18372e6a76966              # double 0.136824
	.quad	0x3fd555e28aa43351              # double 0.33336700000000002
	.quad	0x3fe74df04ddb5526              # double 0.72826400000000002
	.quad	0x3fef6e06d938151a              # double 0.98218099999999997
	.quad	0x3feefd08d4bad7d8              # double 0.96838800000000002
	.quad	0x3fe696638433d6c7              # double 0.70585799999999999
	.quad	0x3fc59c49774256bd              # double 0.16883200000000001
	.quad	0x3fe441615ebfa8f8              # double 0.63298100000000002
	.quad	0x3fe717c1bda5119d              # double 0.72165000000000001
	.quad	0x3fc8bdec5f394b7b              # double 0.193296
	.quad	0x3fe050b524399b2c              # double 0.50985199999999997
	.quad	0x3feedc443914f484              # double 0.96438800000000002
	.quad	0x3fdabcb5fe542e55              # double 0.41776799999999997
	.quad	0x3fea185f06f69446              # double 0.81547499999999995
	.quad	0x3fb0d5f99c38b04b              # double 0.065765000000000004
	.quad	0x3fc7fc32ebe596c8              # double 0.187384
	.quad	0x3fdc21b3aeee9574              # double 0.43955699999999998
	.quad	0x3feba7418d6909af              # double 0.86416700000000002
	.quad	0x3fd12acb85a4f00f              # double 0.268237
	.quad	0x3fe7267e846a5d6c              # double 0.72344900000000001
	.quad	0x3fc91a32b12d3416              # double 0.19611200000000001
	.quad	0x3fec1f85d744f5d3              # double 0.87884799999999996
	.quad	0x3fee4812be48a58b              # double 0.94629799999999997
	.quad	0x3fe06ed6777079e6              # double 0.51353000000000004
	.quad	0x3fe0bcba30121683              # double 0.523038
	.quad	0x3fe85c13fd0d0679              # double 0.76124000000000003
	.quad	0x3fe7f75d9a0f0a5f              # double 0.748946
	.quad	0x3fed27631b584b1b              # double 0.91105800000000003
	.quad	0x3fd259e1f3a57eaa              # double 0.28673599999999999
	.quad	0x3fc5f37b8d3f1844              # double 0.17149300000000001
	.quad	0x3fb2cc5fbf83382e              # double 0.073430999999999996
	.quad	0x3fe7281dc0db2703              # double 0.72364700000000004
	.quad	0x3fe389d27c393682              # double 0.61057399999999995
	.quad	0x3fba3358f2e05ccd              # double 0.10234600000000001
	.quad	0x3fbe8e60807357e6              # double 0.11935999999999999
	.quad	0x3fea290257c914b1              # double 0.81750599999999995
	.quad	0x3fee3d72bcb5fe54              # double 0.94500099999999997
	.quad	0x3fddfb6134ce3de6              # double 0.468468
	.quad	0x3fb3adf2ecf20642              # double 0.076872999999999996
	.quad	0x3fd0245b291b823d              # double 0.25221900000000003
	.quad	0x3fd4830a0b1bbcf5              # double 0.32049800000000001
	.quad	0x3fe7e45803cd141a              # double 0.74662399999999995
	.quad	0x3fe6c96249a133c2              # double 0.71208300000000002
	.quad	0x3fb6da98676a7265              # double 0.089273000000000005
	.quad	0x3fd591148fd9fd37              # double 0.33698
	.quad	0x3fb1d872f33ca31e              # double 0.069708999999999993
	.quad	0x3fe76c1c1d6cf851              # double 0.73194700000000001
	.quad	0x3fea0ee286727568              # double 0.81431699999999996
	.quad	0x3fede9e1b089a027              # double 0.93479999999999996
	.quad	0x3fc77de0d66f0cfe              # double 0.183529
	.quad	0x3fd0f45176145953              # double 0.26491199999999998
	.quad	0x3fcf7867f0aa21a7              # double 0.245862
	.quad	0x3fe51f77292c4934              # double 0.66009099999999998
	.quad	0x3fecdc5d63886595              # double 0.90190000000000003
	.quad	0x3fa7b00bcbe61d00              # double 0.046265000000000001
	.quad	0x3fc126202539756d              # double 0.13397600000000001
	.quad	0x3fd65a4acf312b1b              # double 0.34926099999999999
	.quad	0x3fce90257c914b16              # double 0.23877399999999999
	.quad	0x3fe19ee02a77a2cf              # double 0.55064400000000002
	.quad	0x3fecd07852f7f499              # double 0.90044800000000003
	.quad	0x3faf8f68be2f7b18              # double 0.061641000000000001
	.quad	0x3fd8f06f69446738              # double 0.38967499999999999
	.quad	0x3fd98644523f67f5              # double 0.39882000000000001
	.quad	0x3fb64e379b77c02b              # double 0.087131
	.quad	0x3fe16bc83a96d4c3              # double 0.54440699999999997
	.quad	0x3fb8d6e47dc37a3e              # double 0.097029000000000004
	.quad	0x3fed139a7c17a893              # double 0.90864299999999998
	.quad	0x3fe44343b70ef566              # double 0.63321099999999997
	.quad	0x3fe60f66a5508701              # double 0.68937999999999999
	.quad	0x3febd740c4156e26              # double 0.87002599999999997
	.quad	0x3fd5bc664d3bf2f5              # double 0.33962399999999998
	.quad	0x3f97c49fd7a13c25              # double 0.023210999999999999
	.quad	0x3fe9a178f68be2f8              # double 0.80096100000000003
	.quad	0x3fed6cacd184c272              # double 0.919516
	.quad	0x3fea8807357e670e              # double 0.82910499999999998
	.quad	0x3fea04944ed6fda8              # double 0.81305899999999998
	.quad	0x3fcc37824d4cb9ed              # double 0.220444
	.quad	0x3fc1d25aab474107              # double 0.13923199999999999
	.quad	0x3fe1a8d434a01abd              # double 0.55185899999999999
	.quad	0x3fc837f7be121ee6              # double 0.18920799999999999
	.quad	0x3fc70a808c8259e2              # double 0.180008
	.quad	0x3fd52dd7a99fa11b              # double 0.33092300000000002
	.quad	0x3fee1455219a847b              # double 0.93998199999999998
	.quad	0x3fe281b003686a4d              # double 0.57833100000000004
	.quad	0x3f9b39192641b329              # double 0.026585000000000001
	.quad	0x3fcc765ba6efc372              # double 0.222362
	.quad	0x3fe4958d9b5e95b8              # double 0.64325600000000005
	.quad	0x3fe4c710cb295e9e              # double 0.64929999999999999
	.quad	0x3fb9f90539fba451              # double 0.101456
	.quad	0x3fee74107314ca92              # double 0.95166799999999996
	.quad	0x3feab9389b52007e              # double 0.83511000000000002
	.quad	0x3fdfb66f9335d24a              # double 0.49551000000000001
	.quad	0x3fe104bc27631b58              # double 0.53182799999999997
	.quad	0x3fcb69e3c968943e              # double 0.214169
	.quad	0x3fe0ef8ad2567989              # double 0.52924099999999996
	.quad	0x3fcb26fa3fcc9eaa              # double 0.21212700000000001
	.quad	0x3fe442e33eff1950              # double 0.63316499999999998
	.quad	0x3fdd05c896dd26b7              # double 0.45347799999999999
	.quad	0x3f9843c3a42f1ed1              # double 0.023695999999999998
	.quad	0x3fe17d1782d38477              # double 0.54652000000000001
	.quad	0x3fd45182a9930be1              # double 0.31747500000000001
	.quad	0x3fd5e121ee675148              # double 0.341866
	.quad	0x3fe9f48a159817b9              # double 0.81110099999999996
	.quad	0x3fe49c3ce2089e34              # double 0.64407199999999998
	.quad	0x3fe5de892253111f              # double 0.68341499999999999
	.quad	0x3fac6887a8d64d7f              # double 0.055485
	.quad	0x3fe9e275ab7dc7ac              # double 0.808894
	.quad	0x3fb6eec7c957cd46              # double 0.089580999999999993
	.quad	0x3fe5237ef5a964e9              # double 0.66058300000000003
	.quad	0x3fe5f2e275ab7dc8              # double 0.68589900000000004
	.quad	0x3feaebc83a96d4c3              # double 0.84128199999999997
	.quad	0x3feb383f0bae89ec              # double 0.85061600000000003
	.quad	0x3fdd1f31f46ed246              # double 0.45502900000000002
	.quad	0x3fb611cb039ef0f1              # double 0.086208999999999994
	.quad	0x3fbad04e618ce2d2              # double 0.104741
	.quad	0x3fec61eb4202d9cf              # double 0.88695299999999999
	.quad	0x3fbba5093964a59c              # double 0.107987
	.quad	0x3fef4bec679cc74c              # double 0.97801800000000005
	.quad	0x3fbc7d3d4280ae10              # double 0.111286
	.quad	0x3feee6e221c8a7a4              # double 0.96568399999999998
	.quad	0x3fea1244a6223e18              # double 0.81472999999999995
	.quad	0x3fec925785f8d2e5              # double 0.89286399999999999
	.quad	0x3fdb15011904b3c4              # double 0.42315700000000001
	.quad	0x3fc76f112fd32c62              # double 0.18307699999999999
	.quad	0x3fecd20d130df9be              # double 0.90064100000000002
	.quad	0x3fcbe670e2c12ad8              # double 0.21797
	.quad	0x3fe70e496ededaec              # double 0.72049399999999997
	.quad	0x3fe7018c5c9a34ca              # double 0.71893899999999999
	.quad	0x3fcd82c2bd7f51f0              # double 0.23055300000000001
	.quad	0x3fcb14445aa2e3c5              # double 0.21155599999999999
	.quad	0x3fe2a433508f648c              # double 0.58254399999999995
	.quad	0x3fcba7e308787486              # double 0.216061
	.quad	0x3fe5a949a5657fb7              # double 0.67691500000000004
	.quad	0x3fc93293d102bc73              # double 0.196856
	.quad	0x3fb47bdcf0307f24              # double 0.080015000000000003
	.quad	0x3f9ddbdb5d894813              # double 0.029159000000000001
	.quad	0x3fbfb6aa4b9884c7              # double 0.12388100000000001
	.quad	0x3fd20f49491f2dc3              # double 0.28218300000000002
	.quad	0x3fea9899bf5946c3              # double 0.83112799999999998
	.quad	0x3feca72c94b380cb              # double 0.89540699999999995
	.quad	0x3fd390795f676ea4              # double 0.30569299999999999
	.quad	0x3fdc04577d955715              # double 0.43776500000000002
	.quad	0x3fe123b7952d234f              # double 0.53561000000000003
	.quad	0x3fdeac3a860dcb9b              # double 0.47926200000000002
	.quad	0x3fe608c3f3e0370d              # double 0.68857000000000002
	.quad	0x3fe14fb549f94856              # double 0.54098000000000002
	.quad	0x3fc7edfa43fe5c92              # double 0.18695000000000001
	.quad	0x3fe16e9ff0cbaf96              # double 0.54475399999999996
	.quad	0x3fea57518b0d0edc              # double 0.82315899999999997
	.quad	0x3fb4e075f6fd21ff              # double 0.081549999999999997
	.quad	0x3fd87c88e79aae6d              # double 0.38260100000000002
	.quad	0x3fd610e8858ff759              # double 0.34478199999999998
	.quad	0x3fe33e553ac4f7ec              # double 0.60135899999999998
	.quad	0x3febd0acc0bdcad1              # double 0.86922299999999997
	.quad	0x3fdd2cd7cf5f4e44              # double 0.45586199999999999
	.quad	0x3fe1cde19fc2a887              # double 0.55638200000000004
	.quad	0x3fd64ef0281ba7fc              # double 0.34856799999999999
	.quad	0x3feb58d9b5e95b79              # double 0.85459600000000002
	.quad	0x3fe32fe3f359ff50              # double 0.59959600000000002
	.quad	0x3fe0bd1676640a6c              # double 0.52308200000000005
	.quad	0x3fefb07075b3e143              # double 0.99028799999999994
	.quad	0x3fef2b94d9407896              # double 0.97406999999999999
	.quad	0x3fc7fbce4217d285              # double 0.18737200000000001
	.quad	0x3fe4291105e1c151              # double 0.63001300000000005
	.quad	0x3f9d2d87f88765ba              # double 0.028493999999999998
	.quad	0x3fecba8826aa8eb4              # double 0.89776999999999995
	.quad	0x3fd7b55ac03ff690              # double 0.370444
	.quad	0x3fee38e4b87bdcf0              # double 0.94444499999999998
	.quad	0x3fed527e5215768a              # double 0.91632000000000002
	.quad	0x3fdb13f4a98aa865              # double 0.423093
	.quad	0x3fbb89a459103c8e              # double 0.107569
	.quad	0x3fe52b4528283d36              # double 0.66153200000000001
	.quad	0x3fecf20642396074              # double 0.90454400000000001
	.quad	0x3fe6d56084a515cf              # double 0.71354700000000004
	.quad	0x3fe5ada33bd9cae2              # double 0.67744599999999999
	.quad	0x3fc461b6d43d0397              # double 0.15923200000000001
	.quad	0x3fe1e5753a3ec02f              # double 0.55925999999999998
	.quad	0x3fc328522ea0fd3b              # double 0.149668
	.quad	0x3fe8d834091c0874              # double 0.77639199999999997
	.quad	0x3fcd4de7ea5f84cb              # double 0.22894
	.quad	0x3fc14373f316e371              # double 0.13487099999999999
	.quad	0x3fd9c84f8f8a4c1f              # double 0.40285100000000001
	.quad	0x3fc0f861a60d4563              # double 0.13258
	.quad	0x3fcebb44e50c5eb3              # double 0.24009
	.quad	0x3fa60eb67c286f8b              # double 0.043081000000000001
	.quad	0x3fe317b95a294142              # double 0.59664600000000001
	.quad	0x3fe20dd616f86a0a              # double 0.56418900000000005
	.quad	0x3fce6f587d6f9768              # double 0.23777300000000001
	.quad	0x3fd0eff5c6c11a11              # double 0.26464599999999999
	.quad	0x3fd178feef5ec80c              # double 0.27300999999999997
	.quad	0x3fe82dfd694ccab4              # double 0.755614
	.quad	0x3fea8ffb8b263950              # double 0.83007600000000004
	.quad	0x3fe8d5000c9539b9              # double 0.77600100000000005
	.quad	0x3fe7b95a294141ea              # double 0.74137600000000003
	.quad	0x3fe739c0ebedfa44              # double 0.7258
	.quad	0x3fcdf56a7ac81d3b              # double 0.23405200000000001
	.quad	0x3fc71a75cd0bb6ed              # double 0.18049499999999999
	.quad	0x3fe6a9c12f09d8c7              # double 0.70822200000000002
	.quad	0x3fe62fd75e2046c7              # double 0.69333999999999996
	.quad	0x3feffa7eb6bf444e              # double 0.99932799999999999
	.quad	0x3fe06473471f7942              # double 0.512262
	.quad	0x3fc006317268d328              # double 0.12518899999999999
	.quad	0x3fd5084a515ce9e6              # double 0.32863100000000001
	.quad	0x3fe63fe9fadafd11              # double 0.69530199999999998
	.quad	0x3fc56bb98c7e2824              # double 0.16735
	.quad	0x3fb538de6ddf00ac              # double 0.082899
	.quad	0x3fc4cecc814d727a              # double 0.16256100000000001
	.quad	0x3fe5c3fc43b2dd37              # double 0.68017399999999995
	.quad	0x3fc7acd5b6805a2d              # double 0.18496199999999999
	.quad	0x3fe4292e62131a8f              # double 0.630027
	.quad	0x3fe9e234a87e38eb              # double 0.808863
	.quad	0x3fcd5a3a08398a65              # double 0.22931599999999999
	.quad	0x3fecf09fa54c5543              # double 0.90437299999999998
	.quad	0x3fe15fa22706d506              # double 0.54292399999999996
	.quad	0x3fecdd744f5d3565              # double 0.90203299999999997
	.quad	0x3f8db65ecc3e3194              # double 0.014508
	.quad	0x3fe3ab6f19934efd              # double 0.61467700000000003
	.quad	0x3fd6ab53d640e9d5              # double 0.35420699999999999
	.quad	0x3fe78eb67c286f8b              # double 0.73617100000000002
	.quad	0x3fe67dae81882adc              # double 0.70284199999999997
	.quad	0x3fca1b75a74c09c4              # double 0.20396300000000001
	.quad	0x3fea5c5931ca7d67              # double 0.82377299999999998
	.quad	0x3fe55f4a1272c94b              # double 0.66788199999999998
	.quad	0x3fe244567125dd09              # double 0.57084199999999996
	.quad	0x3fe31d6f112fd32c              # double 0.59734299999999996
	.quad	0x3fe1c28f5c28f5c3              # double 0.55500000000000005
	.quad	0x3fb1c443914f483d              # double 0.069401000000000004
	.quad	0x3fef83b1d0c80410              # double 0.98482599999999998
	.quad	0x3fb60999dcb5781c              # double 0.086083999999999994
	.quad	0x3fe21ab6d00b45ae              # double 0.56576099999999996
	.quad	0x3fcb6c4827b6fe2e              # double 0.21424199999999999
	.quad	0x3fbc2acb85a4f00f              # double 0.110028
	.quad	0x3fd5239e6ab9b23e              # double 0.33029900000000001
	.quad	0x3fe2aa53fc0096ff              # double 0.58329200000000003
	.quad	0x3f9f77f27fe4bcae              # double 0.030731000000000001
	.quad	0x3fd88c6d612c6ac2              # double 0.383571
	.quad	0x3fe41522a6f3f530              # double 0.62758000000000003
	.quad	0x3fda29a5ebb7739f              # double 0.40879199999999999
	.quad	0x3fd293682730c671              # double 0.29024699999999998
	.quad	0x3fd717b0f6ad70e7              # double 0.360821
	.quad	0x3fdaf4e874c8ffb9              # double 0.42119800000000002
	.quad	0x3fc148f53c579f23              # double 0.13503899999999999
	.quad	0x3fe705a4f00ef135              # double 0.71943900000000005
	.quad	0x3fbe3d4f15e7c8d2              # double 0.11812300000000001
	.quad	0x3fe3baabcd78c437              # double 0.616537
	.quad	0x3fe72e7924af0bf2              # double 0.72442300000000004
	.quad	0x3fe66c84f8f8a4c2              # double 0.70074700000000001
	.quad	0x3fec67c49fd7a13c              # double 0.88766699999999998
	.quad	0x3fe2bd102bc72e27              # double 0.58557899999999996
	.quad	0x3fec4a7b4e54f7a9              # double 0.88409199999999999
	.quad	0x3fe70f0c77dd872f              # double 0.72058699999999998
	.quad	0x3fe7c371da37ef5b              # double 0.74260800000000005
	.quad	0x3fea52849cb252ce              # double 0.822573
	.quad	0x3feaaa326e115593              # double 0.83327600000000002
	.quad	0x3fe23b107746887b              # double 0.56971000000000005
	.quad	0x3fecc4b6e935b91f              # double 0.89901299999999995
	.quad	0x3feabd556084a516              # double 0.83561200000000002
	.quad	0x3fa9949e8815e397              # double 0.049961999999999999
	.quad	0x3fe831a6d698fe69              # double 0.75606099999999998
	.quad	0x3fe8e8a71de69ad4              # double 0.77839999999999998
	.quad	0x3fc9be0157eed45f              # double 0.20111100000000001
	.quad	0x3fe72e6a76965f52              # double 0.72441599999999995
	.quad	0x3fefde0f7fcfc3f8              # double 0.99585699999999999
	.quad	0x3fd426394face67d              # double 0.31483299999999997
	.quad	0x3fe52fcefaa4766c              # double 0.66208599999999995
	.quad	0x3fc8ca686e7e62dc              # double 0.19367699999999999
	.quad	0x3fec9b2c40d0aaa8              # double 0.89394200000000001
	.quad	0x3fd9df1172ef0ae5              # double 0.40423999999999999
	.quad	0x3fe95d80e496edee              # double 0.79266400000000004
	.quad	0x3fd237a80cf9e386              # double 0.28464699999999998
	.quad	0x3fe9826aa8eb4635              # double 0.79717000000000005
	.quad	0x3fea662fdfc19c17              # double 0.82497399999999999
	.quad	0x3fe3b3b5393250b5              # double 0.61568699999999998
	.quad	0x3fe75410f94c8798              # double 0.72901199999999999
	.quad	0x3fcb8e3ac0c62e4d              # double 0.215278
	.quad	0x3fe31a5ebb7739f3              # double 0.59696899999999997
	.quad	0x3fc3f761cbccf28c              # double 0.15598699999999999
	.quad	0x3fe7cf7caa7589f0              # double 0.74407800000000002
	.quad	0x3fe7bb59ddc1e796              # double 0.74161999999999995
	.quad	0x3f98ee6b8305d95e              # double 0.024347000000000001
	.quad	0x3fe0c21e1d2178f7              # double 0.52369600000000005
	.quad	0x3fce4a1f080303c0              # double 0.23663699999999999
	.quad	0x3fe39d9b1b79d90a              # double 0.61298900000000001
	.quad	0x3fe119d883ba3444              # double 0.53440500000000002
	.quad	0x3fc09df1172ef0ae              # double 0.12981999999999999
	.quad	0x3fdae060fe47991c              # double 0.41994500000000001
	.quad	0x3fc10e23af31b153              # double 0.133244
	.quad	0x3fe1d4fdf3b645a2              # double 0.55725000000000002
	.quad	0x3fd7b1f255f3519c              # double 0.37023600000000001
	.quad	0x3fc107182235b4ee              # double 0.13302900000000001
	.quad	0x3fd2220791c4b902              # double 0.283327
	.quad	0x3fdd5347a5b0ff11              # double 0.458208
	.quad	0x3fe6df15a4acf313              # double 0.71473200000000003
	.quad	0x3fe8da3a08398a65              # double 0.77663899999999997
	.quad	0x3fd697785729b281              # double 0.352995
	.quad	0x3fe184c6a3bddfca              # double 0.547458
	.quad	0x3fe75a2f8bdec5f4              # double 0.72975900000000005
	.quad	0x3fcca3400b88ca3e              # double 0.22373199999999999
	.quad	0x3fd002fb5d031056              # double 0.25018200000000002
	.quad	0x3fa628ed5f138bce              # double 0.043281
	.quad	0x3fe98c692f6e8295              # double 0.79839000000000004
	.quad	0x3fd0bdb5d894812c              # double 0.26157900000000001
	.quad	0x3fe36de76427c7c5              # double 0.60716599999999998
	.quad	0x3fbbbd9cae21101b              # double 0.108362
	.quad	0x3fd826bf8769ec2d              # double 0.37736500000000001
	.quad	0x3fe628b4bf8fcd68              # double 0.692469
	.quad	0x3fefc7fbacb42891              # double 0.99316199999999998
	.quad	0x3fe0cb380cb6c7a8              # double 0.52480700000000002
	.quad	0x3fb45985ad538ac2              # double 0.079491000000000006
	.quad	0x3fc0e3ef284167a9              # double 0.13195599999999999
	.quad	0x3fe7b64e054690de              # double 0.741004
	.quad	0x3fe4c6e2a80064aa              # double 0.64927800000000002
	.quad	0x3fdc10a99b6f5caf              # double 0.43851699999999999
	.quad	0x3fb33343fa2ad3e9              # double 0.075000999999999998
	.quad	0x3fe287b56b873797              # double 0.57906599999999997
	.quad	0x3fce3254e6e221c9              # double 0.23591100000000001
	.quad	0x3fab08dd1e53a81e              # double 0.052802000000000002
	.quad	0x3fe99d0e991ff716              # double 0.80042199999999997
	.quad	0x3fe0201abd1aa822              # double 0.50391900000000001
	.quad	0x3fec9d55e6bc621b              # double 0.89420599999999995
	.quad	0x3fd0a34ca0c282c7              # double 0.259967
	.quad	0x3fedb73affb04ee8              # double 0.92861700000000003
	.quad	0x3fc1e4a38327674d              # double 0.13979
	.quad	0x3fd4f3ade225fa66              # double 0.32737300000000003
	.quad	0x3fb80a17b0f6ad71              # double 0.093904000000000001
	.quad	0x3fedaf965b20b806              # double 0.92768399999999995
	.quad	0x3fd8dc981beb1811              # double 0.38846399999999998
	.quad	0x3fd49731098d477c              # double 0.32172800000000001
	.quad	0x3fe53bff8a8f3a9b              # double 0.663574
	.quad	0x3fe920296b3354c1              # double 0.78517599999999999
	.quad	0x3fd52d40aaeafab5              # double 0.33088699999999999
	.quad	0x3fee26916440f239              # double 0.94220800000000005
	.quad	0x3fec1b003686a4ca              # double 0.87829599999999997
	.quad	0x3fb4ecfa69be09bb              # double 0.081740999999999994
	.quad	0x3fde73affb04ee7c              # double 0.47581099999999998
	.quad	0x3fc9497b7414a4d3              # double 0.19755500000000001
	.quad	0x3fd21b866e43aa7a              # double 0.28293000000000001
	.quad	0x3fccd099e0e73605              # double 0.22511600000000001
	.quad	0x3fd8304039abf338              # double 0.37794499999999998
	.quad	0x3fd750d2806af46b              # double 0.36430800000000002
	.quad	0x3fa830a0b1bbcf4f              # double 0.047246000000000003
	.quad	0x3fdcb0b7c3504c49              # double 0.44828600000000002
	.quad	0x3fb9eaab042528ae              # double 0.10123699999999999
	.quad	0x3fe5135daad60200              # double 0.65861400000000003
	.quad	0x3fe20112ba16e7a3              # double 0.56263099999999999
	.quad	0x3fccd362e9036439              # double 0.22520100000000001
	.quad	0x3fed86013660e51d              # double 0.92260799999999998
	.quad	0x3feadf2452c59fb2              # double 0.83973900000000001
	.quad	0x3fb2e07e5a78f25a              # double 0.073737999999999998
	.quad	0x3fc1655e28aa4335              # double 0.135906
	.quad	0x3fd7e48e8a71de6a              # double 0.37332500000000002
	.quad	0x3fe0d73a797891e2              # double 0.52627299999999999
	.quad	0x3feab12f4cf4a559              # double 0.83412900000000001
	.quad	0x3fdbd1a650614163              # double 0.43467099999999997
	.quad	0x3fac51b93037d630              # double 0.055310999999999999
	.quad	0x3fe20c5c9a34ca0c              # double 0.56400899999999998
	.quad	0x3fd84bf8fcd67fd4              # double 0.379637
	.quad	0x3feb64adff822bbf              # double 0.85604000000000002
	.quad	0x3fef3df8f4730404              # double 0.97631500000000004
	.quad	0x3fd1f39085f4a127              # double 0.28049099999999999
	.quad	0x3fdaa9b499d0203e              # double 0.41660799999999998
	.quad	0x3fe821fafc8b007a              # double 0.75414800000000004
	.quad	0x3f91ede1198aeb81              # double 0.017509
	.quad	0x3fe8e9db65ecc3e3              # double 0.77854699999999999
	.quad	0x3fdb466b1e5c0b9a              # double 0.42617300000000002
	.quad	0x3fd8cecc814d727a              # double 0.38762200000000002
	.quad	0x3fd25831f03d145e              # double 0.28663300000000003
	.quad	0x3fac7a7c9de05037              # double 0.055621999999999998
	.quad	0x3fc7804d98394749              # double 0.18360299999999999
	.quad	0x3fe082c6ef3d3a1d              # double 0.51596399999999998
	.quad	0x3fe3e06530058149              # double 0.62114199999999997
	.quad	0x3fec4a89fc6da448              # double 0.88409899999999997
	.quad	0x3febbad18d25edd0              # double 0.86655499999999996
	.quad	0x3fbac061847f5621              # double 0.10449799999999999
	.quad	0x3fea907746887a8d              # double 0.83013499999999996
	.quad	0x3fe0aff4ba51a006              # double 0.52147900000000003
	.quad	0x3fd329c347e8ccde              # double 0.29942400000000002
	.quad	0x3feb822ff08893b8              # double 0.85964200000000002
	.quad	0x3fe4547e06961c37              # double 0.63531400000000005
	.quad	0x3febead4f5903a75              # double 0.87241599999999997
	.quad	0x3fe98327674d1633              # double 0.79725999999999997
	.quad	0x3fdbab1d4f9c1f86              # double 0.43231900000000001
	.quad	0x3fb7b7952d234eba              # double 0.092645000000000005
	.quad	0x3fec3647baa9b49a              # double 0.88162600000000002
	.quad	0x3fe42bb01c92ddbe              # double 0.63033300000000003
	.quad	0x3fcb6312f4cf4a56              # double 0.21396100000000001
	.quad	0x3febb82c2bd7f51f              # double 0.866232
	.quad	0x3fe1bf162ae4b018              # double 0.55457599999999996
	.quad	0x3fe66ff9f87f023f              # double 0.70116900000000004
	.quad	0x3fed7b4e54f7a919              # double 0.92130199999999995
	.quad	0x3fd09d5a187a4a49              # double 0.259604
	.quad	0x3fb4a515ce9e5e24              # double 0.080643999999999993
	.quad	0x3fe1b08feac42e99              # double 0.55280300000000004
	.quad	0x3fe33c98a222d517              # double 0.60114699999999999
	.quad	0x3fd7cc63f141205c              # double 0.37185000000000001
	.quad	0x3fd25ad106ee30cb              # double 0.28679300000000002
	.quad	0x3fd2d1a21ea35936              # double 0.294045
	.quad	0x3fe7dfb9389b5200              # double 0.74605999999999995
	.quad	0x3fea6f240fa9c12f              # double 0.826067
	.quad	0x3fde93d5347a5b10              # double 0.477773
	.quad	0x3fec586013660e52              # double 0.88578800000000002
	.quad	0x3fb168b5cbff4773              # double 0.068003999999999995
	.quad	0x3fe2fab324851a87              # double 0.59310300000000005
	.quad	0x3fe00b32ce89656f              # double 0.50136700000000001
	.quad	0x3fcabe0589acbc8c              # double 0.208924
	.quad	0x3fd72cfd8f0c77de              # double 0.36212100000000003
	.quad	0x3fbe9f9ce8d972cd              # double 0.11962299999999999
	.quad	0x3fdaceaaf35e310e              # double 0.41886400000000001
	.quad	0x3fdc0b49e01de269              # double 0.438189
	.quad	0x3fd0f312b1b36bd3              # double 0.26483600000000002
	.quad	0x3feb51cc100e6afd              # double 0.85373500000000002
	.quad	0x3fd911f4f50a02b8              # double 0.39172099999999999
	.quad	0x3fe0f34b51372a39              # double 0.52969900000000003
	.quad	0x3fe96640a6b93ccd              # double 0.79373199999999999
	.quad	0x3fcafc69728a6117              # double 0.21082799999999999
	.quad	0x3fd635c9e6687f45              # double 0.34703299999999998
	.quad	0x3fe9413db7f17375              # double 0.78921399999999997
	.quad	0x3fb6aa087ca643cc              # double 0.088532
	.quad	0x3feb0e991ff7164c              # double 0.84553199999999995
	.quad	0x3fd4e96c3fc43b2e              # double 0.32674700000000001
	.quad	0x3fe14d855970b49e              # double 0.540713
	.quad	0x3fdb66b1e5c0b999              # double 0.428143
	.quad	0x3fc0f355cd91eeaa              # double 0.13242599999999999
	.quad	0x3fe87585be1a8262              # double 0.76434599999999997
	.quad	0x3fb5e59f2ba9d1f6              # double 0.085534999999999999
	.quad	0x3fe93cd78c436fc1              # double 0.78867699999999996
	.quad	0x3fe221272c94b381              # double 0.56654700000000002
	.quad	0x3fd866adb402d16c              # double 0.38126700000000002
	.quad	0x3fe7d87724fa8b4c              # double 0.745174
	.quad	0x3fe703dbc23315d7              # double 0.719221
	.quad	0x3fcb353b4b2fa93b              # double 0.212562
	.quad	0x3fea533f42352eb6              # double 0.822662
	.quad	0x3fd2ff25e56cd6c3              # double 0.296823
	.quad	0x3fe64f3775b81301              # double 0.69716999999999996
	.quad	0x3fe1813660e51d26              # double 0.54702300000000004
	.quad	0x3fb97ecbb7f9d6f1              # double 0.099590999999999999
	.quad	0x3fe153a3ec02f2fa              # double 0.54146000000000005
	.quad	0x3fd4a92a30553261              # double 0.32282499999999997
	.quad	0x3feb82fd75e2046c              # double 0.85973999999999994
	.quad	0x3fdc61bb05faebc4              # double 0.443465
	.quad	0x3fe8b139c94f69cb              # double 0.77163400000000004
	.quad	0x3fea9af5ba2be059              # double 0.83141600000000004
	.quad	0x3fe135a63f9a49c3              # double 0.53779900000000003
	.quad	0x3fd77785729b280f              # double 0.36667
	.quad	0x3fe5fa072d1aeb3e              # double 0.68677100000000002
	.quad	0x3fd59bae46cfc82a              # double 0.33762700000000001
	.quad	0x3fd1a1c25d074214              # double 0.27549800000000002
	.quad	0x3fee59e1f3a57eaa              # double 0.94847199999999998
	.quad	0x3feb4842fa509396              # double 0.85257099999999997
	.quad	0x3fe405985ad538ac              # double 0.62568299999999999
	.quad	0x3fac8de2ac322292              # double 0.05577
	.quad	0x3fa7fc9795b35b0c              # double 0.046849000000000002
	.quad	0x3fe899652bd3c361              # double 0.76872499999999999
	.quad	0x3fd3ae07e5a78f26              # double 0.30749700000000002
	.quad	0x3fce7d566cf41f21              # double 0.2382
	.quad	0x3fee04901d19157b              # double 0.93805700000000003
	.quad	0x3fe9e97aeddce7cd              # double 0.809751
	.quad	0x3fd46501e2584f4c              # double 0.31866499999999998
	.quad	0x3fd92e9899bf5947              # double 0.39346900000000001
	.quad	0x3fe64ffc9795b35b              # double 0.69726399999999999
	.quad	0x3fe366e43aa79bbb              # double 0.60631000000000002
	.quad	0x3fef2871a3b14a90              # double 0.97368699999999997
	.quad	0x3fd949d7ba6698bb              # double 0.39513199999999998
	.quad	0x3fd47ae5796bfca8              # double 0.32000099999999998
	.quad	0x3fe759ff4fd6d7e9              # double 0.72973600000000005
	.quad	0x3fd553a3ec02f2fa              # double 0.33323000000000003
	.quad	0x3fb6736049ecb31c              # double 0.087697999999999998
	.quad	0x3fef6e0b0af5fd48              # double 0.98218300000000002
	.quad	0x3f96994185058dde              # double 0.022068999999999998
	.quad	0x3fdaa8b08dd1e53b              # double 0.41654600000000003
	.quad	0x3fe8d22ea0fd3b2a              # double 0.77565700000000004
	.quad	0x3fd4c9c4da9003ef              # double 0.32481500000000002
	.quad	0x3fe4bda2f8bdec5f              # double 0.64814899999999998
	.quad	0x3fe8c11c2a023209              # double 0.77357299999999996
	.quad	0x3fee26a22b3892ef              # double 0.94221600000000005
	.quad	0x3fea51569f490603              # double 0.82242899999999997
	.quad	0x3fd5199bb2788db0              # double 0.32968799999999998
	.quad	0x3fdf888f861a60d4              # double 0.49270999999999998
	.quad	0x3fecafd32c625e9a              # double 0.89646300000000001
	.quad	0x3fdd1059ea57214f              # double 0.454123
	.quad	0x3fd147b677f6b1a3              # double 0.27000200000000002
	.quad	0x3fd361d4306e5cd5              # double 0.302846
	.quad	0x3fe0f7ccc0379314              # double 0.53024899999999997
	.quad	0x3feed7c0b1359792              # double 0.96383700000000005
	.quad	0x3fce5ef62f9ca5be              # double 0.23727300000000001
	.quad	0x3f99fcb0c026cc1d              # double 0.025378000000000001
	.quad	0x3fe4dd441355475a              # double 0.65200999999999998
	.quad	0x3fec110c2c5e2cdc              # double 0.87708099999999999
	.quad	0x3fdfb14ec204f2ae              # double 0.495197
	.quad	0x3fe5cbc27631b585              # double 0.68112300000000003
	.quad	0x3fb77d84901d1915              # double 0.091758999999999993
	.quad	0x3fcf2b990afe60c4              # double 0.24351800000000001
	.quad	0x3fdbb7521144cbe2              # double 0.433064
	.quad	0x3fab05faebc408d9              # double 0.052780000000000001
	.quad	0x3fe66117720c8cd6              # double 0.69935199999999997
	.quad	0x3fd0dd76683c297c              # double 0.263517
	.quad	0x3fd0e0b0af5fd47c              # double 0.263714
	.quad	0x3feedf97aaac1095              # double 0.96479400000000004
	.quad	0x3fed70f3882278d1              # double 0.92003800000000002
	.quad	0x3fd22c83ec892ab7              # double 0.28396700000000002
	.quad	0x3fb8c08b75ea67e8              # double 0.096687999999999996
	.quad	0x3fe39641f644955b              # double 0.61209199999999997
	.quad	0x3fd51e7d9988d2a2              # double 0.329986
	.quad	0x3fe634c5da6a4441              # double 0.69394199999999995
	.quad	0x3fb8691ea78af3e4              # double 0.095353999999999994
	.quad	0x3fdb7d34df04ddb5              # double 0.42951699999999998
	.quad	0x3faed7a56de3326a              # double 0.060239000000000001
	.quad	0x3fd7600b02928177              # double 0.36523699999999998
	.quad	0x3fe071b25f633ce6              # double 0.51387899999999997
	.quad	0x3fc81869835158b8              # double 0.188245
	.quad	0x3f7526d8b1dd5d3e              # double 0.0051640000000000002
	.quad	0x3f9df266ba493c8a              # double 0.029245
	.quad	0x3fe93ed959a30985              # double 0.78892200000000001
	.quad	0x3fe67ee4e26d4802              # double 0.70299
	.quad	0x3fe51231c64ba94c              # double 0.65847100000000003
	.quad	0x3fe74be1eb4202da              # double 0.72801300000000002
	.quad	0x3fe4dbb7b6bb1290              # double 0.65182099999999998
	.quad	0x3fc33c0c1fc8f323              # double 0.15026999999999999
	.quad	0x3fe07f3cf70153bd              # double 0.51553199999999999
	.quad	0x3fe45872f33ca31e              # double 0.63579699999999995
	.quad	0x3fe9a038194c0160              # double 0.80080799999999996
	.quad	0x3fcbab96f21f6cad              # double 0.21617400000000001
	.quad	0x3fc5a294141e9af6              # double 0.16902400000000001
	.quad	0x3fe9ef0f16f4384c              # double 0.81043200000000004
	.quad	0x3fc77fc7607c419a              # double 0.183587
	.quad	0x3fde4545846e8f2a              # double 0.47297800000000001
	.quad	0x3fe3faaac1094a2c              # double 0.62434900000000004
	.quad	0x3fcaefcbd556084a              # double 0.21044299999999999
	.quad	0x3fd21d4b6a619daa              # double 0.28303800000000001
	.quad	0x3fe0356b87379746              # double 0.506521
	.quad	0x3fd71394317acc4f              # double 0.36057
	.quad	0x3fe0a7ed84d338f8              # double 0.52049900000000004
	.quad	0x3fc046b69db65ecc              # double 0.12715799999999999
	.quad	0x3fa2a27f1b691212              # double 0.036395999999999998
	.quad	0x3fc9d0b73d188f43              # double 0.201682
	.quad	0x3fce4e7ab7564303              # double 0.23677000000000001
	.quad	0x3fe220ea5b530ced              # double 0.56651799999999997
	.quad	0x3fe0643ed959a30a              # double 0.51223700000000005
	.quad	0x3feab413986338b4              # double 0.83448199999999994
	.quad	0x3fe78aa00192a737              # double 0.73567199999999999
	.quad	0x3fe8801711947cfa              # double 0.76563599999999998
	.quad	0x3fe9aca36199780c              # double 0.80232400000000003
	.quad	0x3feb040bfe3b03e2              # double 0.84424399999999999
	.quad	0x3fe9cfd4bf0995ab              # double 0.80662
	.quad	0x3fd9e4de3b8a19ca              # double 0.40459400000000001
	.quad	0x3fe34e93e1c9b414              # double 0.60334200000000004
	.quad	0x3fb76bb1290257c9              # double 0.091486999999999999
	.quad	0x3fdc6b1a2a4db164              # double 0.44403700000000002
	.quad	0x3fe19b97353b4b30              # double 0.55024300000000004
	.quad	0x3fe7709310129cbb              # double 0.73249200000000003
	.quad	0x3fde8e3ef284167b              # double 0.47743200000000002
	.quad	0x3fd9e736049ecb32              # double 0.40473700000000001
	.quad	0x3fee9e7967caea74              # double 0.95684499999999994
	.quad	0x3fe09626b2f23034              # double 0.51832900000000004
	.quad	0x3fcbedd8b60f1b26              # double 0.218196
	.quad	0x3fdfeb52c9d16fca              # double 0.49873800000000001
	.quad	0x3fa6eb702602c908              # double 0.044764999999999999
	.quad	0x3fd007fed20296b3              # double 0.25048799999999999
	.quad	0x3fe128d64d7f0ed4              # double 0.53623500000000002
	.quad	0x3fd84e1e71044f1a              # double 0.37976799999999999
	.quad	0x3fd5b3f20a73f749              # double 0.33910800000000002
	.quad	0x3fd924fa8b4bf8fd              # double 0.39288200000000001
	.quad	0x3fe8eab14ec204f3              # double 0.77864900000000004
	.quad	0x3fd1654d61b2a27f              # double 0.27180799999999999
	.quad	0x3fc8495e17e34b94              # double 0.18973899999999999
	.quad	0x3fd9f53825e13b19              # double 0.40559200000000001
	.quad	0x3fc176cce5f7403e              # double 0.136438
	.quad	0x3fbf2756861e9292              # double 0.121694
	.quad	0x3fe5e95d91ab8e8f              # double 0.68473700000000004
	.quad	0x3fdf5a63f9a49c2c              # double 0.48989199999999999
	.quad	0x3febe8c47a17f413              # double 0.87216400000000005
	.quad	0x3fdb51e75360d024              # double 0.42687399999999998
	.quad	0x3fd27afa7221858c              # double 0.28875600000000001
	.quad	0x3fe78d4bad7d7c2d              # double 0.73599800000000004
	.quad	0x3fe00eb8950763a2              # double 0.50179700000000005
	.quad	0x3fdf95a6c5d206c8              # double 0.49350899999999998
	.quad	0x3fecb076c050bd88              # double 0.89654100000000003
	.quad	0x3fe7748c2e770bd0              # double 0.73297699999999999
	.quad	0x3fd6d09e12a51e32              # double 0.35648299999999999
	.quad	0x3fcd9a30984e3fff              # double 0.231268
	.quad	0x3fd4c8c0ce91c8eb              # double 0.32475300000000001
	.quad	0x3fe8c0c8472c0e7c              # double 0.77353300000000002
	.quad	0x3fe3bf8982cb20fb              # double 0.61713099999999999
	.quad	0x3fa195cc857f3062              # double 0.034346000000000002
	.quad	0x3fa004b7f5a5332b              # double 0.031286000000000001
	.quad	0x3fc5e99e94ab1d50              # double 0.17119200000000001
	.quad	0x3fe52caff6d33094              # double 0.66170499999999999
	.quad	0x3fe486940357a355              # double 0.641428
	.quad	0x3fe2b992c8c50050              # double 0.58515300000000003
	.quad	0x3fca19b0ab2e1694              # double 0.20390900000000001
	.quad	0x3fea5a9003eea20a              # double 0.82355500000000004
	.quad	0x3fd271fff79c8430              # double 0.28820800000000002
	.quad	0x3fcad9513f8db489              # double 0.209757
	.quad	0x3fd566277c45cbbc              # double 0.33435999999999999
	.quad	0x3fdfdd334c5da6a4              # double 0.49787599999999999
	.quad	0x3fe70bb2bba98eda              # double 0.72017799999999998
	.quad	0x3fd70be9424e5929              # double 0.36010199999999998
	.quad	0x3fe851a21ea35936              # double 0.759965
	.quad	0x3fec54738a3b57c5              # double 0.88530900000000001
	.quad	0x3fca2acb85a4f00f              # double 0.204431
	.quad	0x3fa23fee2c98e53f              # double 0.035644000000000002
	.quad	0x3fd2ce703afb7e91              # double 0.29385
	.quad	0x3fcc41aac53b0814              # double 0.22075400000000001
	.quad	0x3fc998d8a979e16d              # double 0.19997699999999999
	.quad	0x3fe38fcd67fd3f5b              # double 0.61130399999999996
	.quad	0x3fc4b6d00b45ae60              # double 0.161829
	.quad	0x3feaab3edd8b60f2              # double 0.83340400000000003
	.quad	0x3fb0ff0025bfad2a              # double 0.066391000000000006
	.quad	0x3fbe584f4c6e6d9c              # double 0.118535
	.quad	0x3fde0746455eaee2              # double 0.469194
	.quad	0x3fdc4c7f34938583              # double 0.44216899999999998
	.quad	0x3fe077985271bcdc              # double 0.51459900000000003
	.quad	0x3fde72da122fad6d              # double 0.47576000000000002
	.quad	0x3feccda6e75ff60a              # double 0.90010400000000002
	.quad	0x3fa27cbf6e3f78bc              # double 0.036108000000000001
	.quad	0x3fe16e06d938151a              # double 0.54468099999999997
	.quad	0x3fe114fce746cb96              # double 0.53381199999999995
	.quad	0x3fe41159c4977425              # double 0.62711799999999995
	.quad	0x3fd642edbb59ddc2              # double 0.34783500000000001
	.quad	0x3fe9e3e6c4c5974e              # double 0.80906999999999996
	.quad	0x3feec102ff8ec0f9              # double 0.96106100000000005
	.quad	0x3fd96d0d49949e88              # double 0.397281
	.quad	0x3fe4976577531db4              # double 0.64348099999999997
	.quad	0x3fe6800218def417              # double 0.70312600000000003
	.quad	0x3fd30cf5b1c86488              # double 0.29766599999999999
	.quad	0x3fe0c52c59fb1e19              # double 0.52406900000000001
	.quad	0x3fe326d4801f7510              # double 0.59848999999999997
	.quad	0x3fdc8f75536933a0              # double 0.44625599999999999
	.quad	0x3fd52fb19e731d2e              # double 0.331036
	.quad	0x3fd62706d5065732              # double 0.346132
	.quad	0x3fbbbfe7e1fc08fa              # double 0.10839699999999999
	.quad	0x3fc41c475e6362a6              # double 0.157113
	.quad	0x3fc7226c3b927d46              # double 0.18073800000000001
	.quad	0x3fd4e82d7b634dad              # double 0.32667099999999999
	.quad	0x3fd34299d883ba34              # double 0.30093999999999999
	.quad	0x3fc5e481f53825e1              # double 0.17103599999999999
	.quad	0x3fd4420b3d4ae42a              # double 0.31653100000000001
	.quad	0x3fea76b1a2a4db16              # double 0.82698899999999997
	.quad	0x3fc38e10cf5b1c86              # double 0.15277299999999999
	.quad	0x3fec7d1dcd7060bb              # double 0.89027299999999998
	.quad	0x3feb5bca9691a75d              # double 0.85495500000000002
	.quad	0x3fdac36976bc1f00              # double 0.41817700000000002
	.quad	0x3fe8c63f141205bc              # double 0.77419999999999999
	.quad	0x3fed47cfa26a22b4              # double 0.91501600000000005
	.quad	0x3fe80387df5cf249              # double 0.75043099999999996
	.quad	0x3fdc9e90795f676f              # double 0.44717800000000002
	.quad	0x3fef3b7f9d6f1130              # double 0.97601300000000002
	.quad	0x3f9273929ed3953e              # double 0.018019
	.quad	0x3fe9737fbefd0071              # double 0.79534899999999997
	.quad	0x3f6e492bc2fc6973              # double 0.0036970000000000002
	.quad	0x3fda48c2e770bd01              # double 0.41069099999999997
	.quad	0x3fe7c7325918a00a              # double 0.743066
	.quad	0x3fd6572de43ed95a              # double 0.34907100000000002
	.quad	0x3fd7cf63800218df              # double 0.372033
	.quad	0x3fedba6698bb4d49              # double 0.92900400000000005
	.quad	0x3fe7443b2dd377e2              # double 0.72707900000000003
	.quad	0x3fb480841ede1199              # double 0.080086000000000004
	.quad	0x3fd4c1ca3a4b5569              # double 0.32432800000000001
	.quad	0x3fc009dcf893faf4              # double 0.125301
	.quad	0x3fe18008637bd05b              # double 0.546879
	.quad	0x3fd91b2a27f1b691              # double 0.39228299999999999
	.quad	0x3fd6981beb18116f              # double 0.35303400000000001
	.quad	0x3feea47cb70ac3a8              # double 0.95757899999999995
	.quad	0x3fec2c669057d178              # double 0.88041999999999998
	.quad	0x3fbcaf4f0d844d01              # double 0.11205
	.quad	0x3feb4857f3061c7a              # double 0.85258100000000003
	.quad	0x3fce6e653868fd1a              # double 0.23774400000000001
	.quad	0x3fe419c38b04ab60              # double 0.62814499999999995
	.quad	0x3fdab20fb224aada              # double 0.41711799999999999
	.quad	0x3fe4d594f26aec07              # double 0.65107199999999998
	.quad	0x3fe9226e5471715c              # double 0.78545299999999995
	.quad	0x3feb954a7f8012e0              # double 0.86197400000000001
	.quad	0x3fe8925fe974a340              # double 0.76786799999999999
	.quad	0x3fe76a400fba8827              # double 0.73172000000000004
	.quad	0x3faa5a250f840182              # double 0.051469000000000001
	.quad	0x3fe2e88bda9435ad              # double 0.59088700000000005
	.quad	0x3facc5b8dc55000d              # double 0.056196000000000003
	.quad	0x3fe20e3476295209              # double 0.56423400000000001
	.quad	0x3fbda847b24638c9              # double 0.11584899999999999
	.quad	0x3fd580d801b43526              # double 0.33598899999999998
	.quad	0x3f85daad601ffb48              # double 0.010671
	.quad	0x3fb062b27cbf6e3f              # double 0.064005999999999993
	.quad	0x3fcfd35eb7457c0b              # double 0.248638
	.quad	0x3fe64a5df2239e6b              # double 0.69657800000000003
	.quad	0x3fe1329802c0a4a0              # double 0.53742599999999996
	.quad	0x3fcaf0307f23cc8e              # double 0.210455
	.quad	0x3fdfb0e1b4bb5e0f              # double 0.49517099999999997
	.quad	0x3fba3bddfc9ff92f              # double 0.102476
	.quad	0x3fed91a543f1c758              # double 0.92402899999999999
	.quad	0x3fcf81c714fce747              # double 0.24614800000000001
	.quad	0x3fb1de15ca6ca03c              # double 0.069794999999999996
	.quad	0x3fe2012be48a58b4              # double 0.562643
	.quad	0x3fef23c64345cfee              # double 0.97311700000000001
	.quad	0x3fb2568a50507a6c              # double 0.071633000000000002
	.quad	0x3fe414877681669d              # double 0.62750600000000001
	.quad	0x3fd6071c53f39d1b              # double 0.34418399999999999
	.quad	0x3fd74da09cc319c6              # double 0.36411300000000002
	.quad	0x3fe4a25fa658c4bd              # double 0.64482099999999998
	.quad	0x3fda9da9c99285a9              # double 0.41587299999999999
	.quad	0x3fe38d36b4c7f349              # double 0.61098799999999998
	.quad	0x3faf9fa97e132b56              # double 0.061765
	.quad	0x3feba9bf162ae4b0              # double 0.86447099999999999
	.quad	0x3fe00b39192641b3              # double 0.50136999999999998
	.quad	0x3fe2474538ef34d7              # double 0.57120000000000004
	.quad	0x3fe20b524399b2c4              # double 0.56388199999999999
	.quad	0x3fe4a97e132b55ef              # double 0.64568999999999999
	.quad	0x3fbf73e24febd09e              # double 0.122862
	.quad	0x3fe1f10cb295e9e2              # double 0.56067500000000003
	.quad	0x3fe0fd5a9eb2074f              # double 0.53092700000000004
	.quad	0x3fc2c43f5f91600f              # double 0.14661399999999999
	.quad	0x3fdc202d9cf13cef              # double 0.43946400000000002
	.quad	0x3fe2a5ebb7739f34              # double 0.58275399999999999
	.quad	0x3fe50a0d349be8ff              # double 0.65747699999999998
	.quad	0x3fe6903211cb039f              # double 0.70510200000000001
	.quad	0x3fc39f7f8ca8198f              # double 0.153305
	.quad	0x3fa5028a1dfb938a              # double 0.041035000000000002
	.quad	0x3fe0d38cda6e75ff              # double 0.52582399999999996
	.quad	0x3fe3b90c9107faa0              # double 0.61633899999999997
	.quad	0x3fe2bb7d84901d19              # double 0.58538699999999999
	.quad	0x3fe91d451fc4c166              # double 0.78482300000000005
	.quad	0x3fe6b50b0f27bb30              # double 0.70960000000000001
	.quad	0x3fe7b71758e21965              # double 0.74109999999999998
	.quad	0x3fecff993d5347a6              # double 0.90620100000000003
	.quad	0x3febaf48c2e770bd              # double 0.865147
	.quad	0x3fe5794ea077036d              # double 0.67105800000000004
	.quad	0x3feabbd7b2031ceb              # double 0.83543000000000001
	.quad	0x3fc83ce2089e3433              # double 0.189358
	.quad	0x3fc48882f0e0a84c              # double 0.160416
	.quad	0x3fca54152b0a6fc6              # double 0.20569100000000001
	.quad	0x3fddad81adea8976              # double 0.46371499999999999
	.quad	0x3fecd842b734b513              # double 0.90139899999999995
	.quad	0x3fd6dc50ce4ead0c              # double 0.35719699999999999
	.quad	0x3fe8fa17f4128bf4              # double 0.78052900000000002
	.quad	0x3fec472c0e7bc3c6              # double 0.88368800000000003
	.quad	0x3fedd53cddd6e04c              # double 0.93227999999999999
	.quad	0x3fe36cd6c2efd439              # double 0.60703600000000002
	.quad	0x3fefbdd334c5da6a              # double 0.99192199999999997
	.quad	0x3fefe1aa3f034b0e              # double 0.99629699999999999
	.quad	0x3fbcff972474538f              # double 0.113275
	.quad	0x3fea3d31b9b66f93              # double 0.81996999999999998
	.quad	0x3fd5fa43fe5c91d1              # double 0.34339999999999998
	.quad	0x3fe0c06c00da1a93              # double 0.52348899999999998
	.quad	0x3fdb635a426bb55b              # double 0.42793900000000001
	.quad	0x3fbfaebc408d8ec9              # double 0.12376
	.quad	0x3feee0c7c0f45176              # double 0.96493899999999999
	.quad	0x3fd77f950b955f78              # double 0.36716199999999999
	.quad	0x3fe01212513b5bf7              # double 0.50220600000000004
	.quad	0x3fe5bbdbe3c10518              # double 0.67918199999999995
	.quad	0x3fdf7ec7863beec4              # double 0.49211300000000002
	.quad	0x3fd8694ccab3edd9              # double 0.38142700000000002
	.quad	0x3fc7a743a647fdc6              # double 0.18479200000000001
	.quad	0x3fc7f5f0b28522ea              # double 0.187193
	.quad	0x3feb856a37ac3eb8              # double 0.86003600000000002
	.quad	0x3fe98ae74f2f123c              # double 0.79820599999999997
	.quad	0x3fe32771c970f7ba              # double 0.59856500000000001
	.quad	0x3fdbc0980b242071              # double 0.43363000000000002
	.quad	0x3fe457518b0d0edc              # double 0.63565899999999997
	.quad	0x3fe48e71476af89c              # double 0.64238799999999996
	.quad	0x3fb3702602c9081c              # double 0.075929999999999997
	.quad	0x3fd1b9b66f9335d2              # double 0.27695999999999998
	.quad	0x3fc97281fd9ba1b2              # double 0.19880700000000001
	.quad	0x3fbd564b662fdfc2              # double 0.11459800000000001
	.quad	0x3fce34a01abd1aa8              # double 0.235981
	.quad	0x3fb5c6195464dc23              # double 0.085054000000000005
	.quad	0x3fdcf6e82949a565              # double 0.45256999999999997
	.quad	0x3fedff84449dbec2              # double 0.93744099999999997
	.quad	0x3fcfe3193f6c269a              # double 0.24911800000000001
	.quad	0x3fe965c4eb56fb8f              # double 0.79367299999999996
	.quad	0x3fad00b45ae5ffa4              # double 0.056646000000000002
	.quad	0x3fe1865d7cb2d906              # double 0.54765200000000003
	.quad	0x3fe7b2acfb762d84              # double 0.74056100000000002
	.quad	0x3fd566516db0dd83              # double 0.33437
	.quad	0x3fe1837f7be121ee              # double 0.54730199999999996
	.quad	0x3fe5d5432873bc90              # double 0.68228299999999997
	.quad	0x3fb0431bde82d7b6              # double 0.063523999999999997
	.quad	0x3fe3ca31e7d9988d              # double 0.61843199999999998
	.quad	0x3fe129435ac8a372              # double 0.53628699999999996
	.quad	0x3fea8beb5b2d4d40              # double 0.82957999999999998
	.quad	0x3fedbd4f15e7c8d2              # double 0.92935900000000005
	.quad	0x3fb39c51dabe2718              # double 0.076604000000000005
	.quad	0x3fc28ef77f27fe4c              # double 0.14498800000000001
	.quad	0x3fe25610adcd2d45              # double 0.57300600000000002
	.quad	0x3fbe20ee8d10f51b              # double 0.11769
	.quad	0x3fda71d1d4738a3b              # double 0.41319699999999998
	.quad	0x3fd9f1d81f106680              # double 0.40538600000000002
	.quad	0x3fef96787ce95fab              # double 0.98711800000000005
	.quad	0x3fe0599cbee807bc              # double 0.51093900000000003
	.quad	0x3fe6ed4c33b53932              # double 0.71646699999999996
	.quad	0x3fe38372e6a76966              # double 0.609796
	.quad	0x3fa1c0ca600b0293              # double 0.034674000000000003
	.quad	0x3fe2e81cb46bacf7              # double 0.59083399999999997
	.quad	0x3fedc66d373affb0              # double 0.93047199999999997
	.quad	0x3fae35c5b4aa9718              # double 0.059004000000000001
	.quad	0x3fe1462a1b5c7cd9              # double 0.53981500000000004
	.quad	0x3fd74e4430b178b3              # double 0.36415199999999998
	.quad	0x3fdbb5675579af19              # double 0.43294700000000003
	.quad	0x3f860ae9680e0653              # double 0.010763
	.quad	0x3fe80164840e171a              # double 0.75017
	.quad	0x3fd6bda5119ce076              # double 0.355325
	.quad	0x3fc0ac647778dd61              # double 0.13026099999999999
	.quad	0x3f86683c297bfa4c              # double 0.010940999999999999
	.quad	0x3fe7158d9b5e95b8              # double 0.72138100000000005
	.quad	0x3fe5986fcdee34fc              # double 0.67485799999999996
	.quad	0x3fe708ebcc6c54bd              # double 0.71983900000000001
	.quad	0x3febfa4e7ab75643              # double 0.874305
	.quad	0x3fee64755ffe6d59              # double 0.94976300000000002
	.quad	0x3fd92d0a24463066              # double 0.393374
	.quad	0x3feeb1769a91105e              # double 0.95916299999999999
	.quad	0x3fe2cd3e0bd44999              # double 0.58755400000000002
	.quad	0x3fd79cf56eac8605              # double 0.36895499999999998
	.quad	0x3fd35471715c63ae              # double 0.30202899999999999
	.quad	0x3fc9ed0f6273929f              # double 0.202547
	.quad	0x3fb243bb40b34e77              # double 0.071346000000000007
	.quad	0x3fe978c436fc1590              # double 0.79599200000000003
	.quad	0x3fde4b09e98dcdb3              # double 0.47332999999999997
	.quad	0x3feffe004b7f5a53              # double 0.99975599999999997
	.quad	0x3fe3bfdb4cc25072              # double 0.61717
	.quad	0x3f8b77c02afdda8c              # double 0.013412
	.quad	0x3fef4f1800a7c5ac              # double 0.97840499999999996
	.quad	0x3f8512ec6bce8534              # double 0.010290000000000001
	.quad	0x3fcd7f0ed3d859c9              # double 0.23044000000000001
	.quad	0x3fd0e4cd74927914              # double 0.26396500000000001
	.quad	0x3fd91654d61b2a28              # double 0.391988
	.quad	0x3fedcd898b2e9ccb              # double 0.93133999999999995
	.quad	0x3f38a43bb40b34e7              # double 3.7599999999999998E-4
	.quad	0x3fe085caafbc1ace              # double 0.51633200000000001
	.quad	0x3fd685b18548a9bd              # double 0.35191
	.quad	0x3fdbb8305d95dd4c              # double 0.43311699999999997
	.quad	0x3f90196d8f4f93bc              # double 0.015722
	.quad	0x3fee89a459103c8e              # double 0.95430199999999998
	.quad	0x3fda05425f202108              # double 0.40657100000000002
	.quad	0x3fea8201cd5f99c4              # double 0.82837000000000005
	.quad	0x3faaaa7ded6ba8c6              # double 0.052082000000000003
	.quad	0x3fea0331e3a7daa5              # double 0.81289
	.quad	0x3fdd3ac0c62e4d1a              # double 0.45671099999999998
	.quad	0x3fd42e3821af7d31              # double 0.31532100000000002
	.quad	0x3fc980cb6c7a7c9e              # double 0.199243
	.quad	0x3fd40b8cfbfc6541              # double 0.31320500000000001
	.quad	0x3febe887a8d64d7f              # double 0.87213499999999999
	.quad	0x3feb95e39713ad5c              # double 0.862047
	.quad	0x3fb0a1cef240fa9c              # double 0.064968999999999999
	.quad	0x3fea66b3fe9fadb0              # double 0.82503700000000002
	.quad	0x3fd35104d551d68c              # double 0.30181999999999998
	.quad	0x3fc274538ef34d6a              # double 0.144175
	.quad	0x3fa12d3415b1422d              # double 0.033548000000000001
	.quad	0x3fe707b99d451fc5              # double 0.71969300000000003
	.quad	0x3fdc8919ef954eb1              # double 0.44586799999999999
	.quad	0x3fe926eb91b3f20a              # double 0.78600099999999995
	.quad	0x3fe3443914f483cb              # double 0.602078
	.quad	0x3fcd1526d8b1dd5d              # double 0.22720799999999999
	.quad	0x3fed35ed8d36b4c8              # double 0.91283300000000001
	.quad	0x3fd756de33269df9              # double 0.36467699999999997
	.quad	0x3feaf5afaf859429              # double 0.84249099999999999
	.quad	0x3fe66b8950763a19              # double 0.700627
	.quad	0x3fe2cbbc2b94d940              # double 0.58736999999999995
	.quad	0x3fe48f840181e03f              # double 0.64251899999999995
	.quad	0x3fe8f0bae89eba6b              # double 0.77938600000000002
	.quad	0x3fd6ded288ce703b              # double 0.35735
	.quad	0x3fb59d66adb402d1              # double 0.084432999999999994
	.quad	0x3fe24dd50a88effe              # double 0.57200099999999998
	.quad	0x3fec3320535c9e67              # double 0.88124100000000005
	.quad	0x3fee6abde3fbbd7b              # double 0.95052999999999999
	.quad	0x3fb53a2df9378ee3              # double 0.082919000000000007
	.quad	0x3fe164ece9a2c669              # double 0.54357
	.quad	0x3fe1aea747d805e6              # double 0.55257000000000001
	.quad	0x3fe0cc2f837b4a23              # double 0.52492499999999997
	.quad	0x3fc9a647fdc5931d              # double 0.20038700000000001
	.quad	0x3fe7b397dd00f777              # double 0.74067300000000003
	.quad	0x3fe1bacb4289118c              # double 0.55405199999999999
	.quad	0x3fd143aeab7995ee              # double 0.269756
	.quad	0x3fed81fd9ba1b196              # double 0.92211799999999999
	.quad	0x3fedb13165d39970              # double 0.92788000000000004
	.quad	0x3feb327243137b07              # double 0.849908
	.quad	0x3fc9f9830e3cd9a5              # double 0.202927
	.quad	0x3fe3c2aed1394318              # double 0.61751500000000004
	.quad	0x3fd9892684cf073a              # double 0.39899600000000002
	.quad	0x3fb47219220ff541              # double 0.079866000000000006
	.quad	0x3fda20535c9e6688              # double 0.408223
	.quad	0x3fed4536d655e28b              # double 0.91469900000000004
	.quad	0x3fe7fb549f94855e              # double 0.74943000000000004
	.quad	0x3fe8c46d82ba5a04              # double 0.77397800000000005
	.quad	0x3fdf4c5974e65bea              # double 0.489035
	.quad	0x3fe77811f4f50a03              # double 0.73340700000000003
	.quad	0x3fddfcdee34fc611              # double 0.468559
	.quad	0x3fac88e79aae6c8f              # double 0.055731999999999997
	.quad	0x3fd01b5c7cd898b3              # double 0.25167
	.quad	0x3fdddc6195464dc2              # double 0.46657599999999999
	.quad	0x3fe90d21bc126a66              # double 0.78285300000000002
	.quad	0x3fceeb702602c908              # double 0.24156
	.quad	0x3fe1b9f559b3d07d              # double 0.55395000000000005
	.quad	0x3fe43a4d6e47dc38              # double 0.63211700000000004
	.quad	0x3fa54e8fb00bcbe6              # double 0.041614999999999999
	.quad	0x3fc3199bb2788db0              # double 0.14921899999999999
	.quad	0x3fcfcc63f141205c              # double 0.24842500000000001
	.quad	0x3fd8c38f36694899              # double 0.386936
	.quad	0x3fc08e60807357e6              # double 0.12934499999999999
	.quad	0x3fe21bed30f062d4              # double 0.565909
	.quad	0x3fe29ebc83a96d4c              # double 0.58187699999999998
	.quad	0x3fb5960fa15db339              # double 0.084320999999999993
	.quad	0x3fe943d46b26bf87              # double 0.78952999999999995
	.quad	0x3fe69a88ace24bba              # double 0.70636399999999999
	.quad	0x3fe8382c2bd7f51f              # double 0.756857
	.quad	0x3fcd8f2e05ccc89b              # double 0.230932
	.quad	0x3feb2d9ad85dfa87              # double 0.84931699999999999
	.quad	0x3fee6173b85e80bf              # double 0.94939600000000002
	.quad	0x3fb0f227d028a1e0              # double 0.066195000000000004
	.quad	0x3fe4f01322f27350              # double 0.65430600000000005
	.quad	0x3fe1cf97edc7ef17              # double 0.55659099999999995
	.quad	0x3fedc5de9c0229a6              # double 0.93040400000000001
	.quad	0x3fc0a4b9884c6a3c              # double 0.130027
	.quad	0x3fe866d9be4cd749              # double 0.76255499999999998
	.quad	0x3fe9364e054690de              # double 0.787879
	.quad	0x3fe795182a9930be              # double 0.73694999999999999
	.quad	0x3fe23fdf7e8038a0              # double 0.57029700000000005
	.quad	0x3fda32441fea8113              # double 0.40931800000000002
	.quad	0x3fcc2cba732df506              # double 0.22011500000000001
	.quad	0x3fd8e0008637bd06              # double 0.38867200000000002
	.quad	0x3fc5c49774256bca              # double 0.17006199999999999
	.quad	0x3fa2719b4dcebfec              # double 0.036022999999999999
	.quad	0x3fea5bc44bf4cb19              # double 0.82370200000000005
	.quad	0x3fe56e525892684d              # double 0.66971700000000001
	.quad	0x3fe8449dbec2480f              # double 0.75837600000000005
	.quad	0x3f827dcbddb9841b              # double 0.0090290000000000005
	.quad	0x3fe8adea897635e7              # double 0.77122999999999997
	.quad	0x3fd5d60a63305101              # double 0.34118900000000002
	.quad	0x3fe0dc981beb1811              # double 0.52692799999999995
	.quad	0x3fe970c77dd872f3              # double 0.79501699999999997
	.quad	0x3fd6f7164c729f5a              # double 0.35883100000000001
	.quad	0x3fea508b32ce8965              # double 0.82233199999999995
	.quad	0x3fc6ebc408d8ec96              # double 0.17907000000000001
	.quad	0x3fa69e7fb267c6b9              # double 0.044178000000000002
	.quad	0x3fc2ba27ae9ab29e              # double 0.14630599999999999
	.quad	0x3f954c985f06f694              # double 0.020799999999999999
	.quad	0x3fc625fa658c4bd3              # double 0.17303399999999999
	.quad	0x3f814c22ee41919b              # double 0.0084460000000000003
	.quad	0x3fd12c6ef3d3a1d3              # double 0.26833699999999999
	.quad	0x3fce0a4a05dd8f93              # double 0.23468900000000001
	.quad	0x3fa6659d12cadddf              # double 0.043743999999999998
	.quad	0x3fdc04e1e71044f2              # double 0.43779800000000002
	.quad	0x3fcad5c74751ce29              # double 0.209649
	.quad	0x3fec050374ff865d              # double 0.87561199999999995
	.quad	0x3fe493f4a98aa865              # double 0.64306099999999999
	.quad	0x3feb3ec2480e8c8b              # double 0.85141100000000003
	.quad	0x3fc6a6223e186983              # double 0.17694499999999999
	.quad	0x3fcae5796bfca85d              # double 0.21012800000000001
	.quad	0x3fe31ac36544fe37              # double 0.59701700000000002
	.quad	0x3feb64ba94bbe447              # double 0.85604599999999997
	.quad	0x3fc9963992c8c500              # double 0.19989699999999999
	.quad	0x3feb1934efcbd556              # double 0.846827
	.quad	0x3fd6569b17481b22              # double 0.34903600000000001
	.quad	0x3fc4d8a979e16d6e              # double 0.16286200000000001
	.quad	0x3fe536f19934efcc              # double 0.66295700000000002
	.quad	0x3fe7a5ebb7739f34              # double 0.73900399999999999
	.quad	0x3fa9d6494d50ebab              # double 0.050463000000000001
	.quad	0x3fe67f4128bf3beb              # double 0.70303400000000005
	.quad	0x3fef444e0daa0cae              # double 0.97708799999999996
	.quad	0x3feb587b56b87379              # double 0.85455099999999995
	.quad	0x3fe965fd8adab9f5              # double 0.79369999999999996
	.quad	0x3fbf65a9a8049668              # double 0.122645
	.quad	0x3fbbeb5b2d4d4025              # double 0.10906
	.quad	0x3fdc5054ac29bf16              # double 0.44240299999999999
	.quad	0x3fbc73797460242d              # double 0.111137
	.quad	0x3fe7196d8f4f93bc              # double 0.721854
	.quad	0x3fbc8b6523704791              # double 0.111502
	.quad	0x3fdf1e14bdfd2631              # double 0.486211
	.quad	0x3fca44b6e935b91f              # double 0.20522199999999999
	.quad	0x3fe59c560c7c0f45              # double 0.67533399999999999
	.quad	0x3fdf7dfe32a0663c              # double 0.49206499999999997
	.quad	0x3fb2d68837718655              # double 0.073585999999999999
	.quad	0x3fd2ce789e774eec              # double 0.293852
	.quad	0x3fb4787485e3da30              # double 0.079963000000000006
	.quad	0x3fdba6ca03c4b09f              # double 0.43205500000000002
	.quad	0x3fc9db3bfb58d152              # double 0.20200299999999999
	.quad	0x3f751e75360d0247              # double 0.005156
	.quad	0x3fd04af0bf1a5ca3              # double 0.25457400000000002
	.quad	0x3fbed72ffd1dcd70              # double 0.12047099999999999
	.quad	0x3fe33124d099e0e7              # double 0.59974899999999998
	.quad	0x3fd9cfaacd9e83e4              # double 0.40329999999999999
	.quad	0x3fe66e807bbb6241              # double 0.70098899999999997
	.quad	0x3fc104816f0068dc              # double 0.13295000000000001
	.quad	0x3fe72ecf20642396              # double 0.724464
	.quad	0x3fd35000c9539b89              # double 0.30175800000000003
	.quad	0x3fedd8a116659d13              # double 0.93269400000000002
	.quad	0x3fc0d36b4c7f3494              # double 0.13145200000000001
	.quad	0x3fe345ed4a1ad645              # double 0.60228599999999999
	.quad	0x3fef6937d1fe64f5              # double 0.98159399999999996
	.quad	0x3fef872b020c49ba              # double 0.98524999999999996
	.quad	0x3fa089a027525461              # double 0.032300000000000002
	.quad	0x3fcbb84db9c7368b              # double 0.216562
	.quad	0x3febc8754f3775b8              # double 0.86821999999999999
	.quad	0x3fd7972474538ef3              # double 0.36859999999999998
	.quad	0x3fe32fa0d77b7c78              # double 0.59956399999999999
	.quad	0x3feb163992c8c500              # double 0.84646299999999997
	.quad	0x3f93fee2c98e53eb              # double 0.019526999999999999
	.quad	0x3fcfa98eda22f6a5              # double 0.247362
	.quad	0x3fa8df58c08b75ea              # double 0.048578999999999997
	.quad	0x3fd77e23f24d8fd6              # double 0.36707400000000001
	.quad	0x3feec4d44567125e              # double 0.96152700000000002
	.quad	0x3fd5d44998d045fe              # double 0.341082
	.quad	0x3fe74b0c026cc1ca              # double 0.72791099999999997
	.quad	0x3fd392e1ef73c0c2              # double 0.30584
	.quad	0x3fee8e4755ffe6d6              # double 0.95486800000000005
	.quad	0x3fef7737da61e0c6              # double 0.98330300000000004
	.quad	0x3fec9a49c2c1b110              # double 0.89383400000000002
	.quad	0x3fedc7f349385836              # double 0.93065799999999999
	.quad	0x3f7df3300de4c511              # double 0.0073119999999999999
	.quad	0x3fe1468661ae70c1              # double 0.53985899999999998
	.quad	0x3feed1a21ea35936              # double 0.96309
	.quad	0x3fd568dfbd6a593a              # double 0.33452599999999999
	.quad	0x3feca6223e186983              # double 0.89527999999999996
	.quad	0x3fe26aab042528ae              # double 0.57552099999999995
	.quad	0x3feb69ab29e4d5d8              # double 0.85664899999999999
	.quad	0x3fdaa137f38c5437              # double 0.41609000000000002
	.quad	0x3f70b1feeb2d0a24              # double 0.0040759999999999998
	.quad	0x3fe6a4463065f959              # double 0.70755299999999999
	.quad	0x3fd8d97b30f8c650              # double 0.38827400000000001
	.quad	0x3fed382c2bd7f51f              # double 0.913107
	.quad	0x3fe59f94855da273              # double 0.67573000000000005
	.quad	0x3fe5c20f6f08cc57              # double 0.67993899999999996
	.quad	0x3fe030caa326e115              # double 0.50595599999999996
	.quad	0x3fe0eafee6fb4c3c              # double 0.52868599999999999
	.quad	0x3fe28cbf2b239a39              # double 0.579681
	.quad	0x3fe7d803cd141a69              # double 0.74511899999999998
	.quad	0x3febacfb762d83c7              # double 0.86486600000000002
	.quad	0x3feaf0a808c8259e              # double 0.84187699999999999
	.quad	0x3fdb9df97aaac109              # double 0.43151699999999998
	.quad	0x3fc503afb7e90ff9              # double 0.16417499999999999
	.quad	0x3fd02ed352220bc4              # double 0.25285800000000003
	.quad	0x3fe1248301a79fed              # double 0.53570700000000004
	.quad	0x3fc5e481f53825e1              # double 0.17103599999999999
	.quad	0x3fdfb4916ca46e09              # double 0.495396
	.quad	0x3fd2e1deacc92147              # double 0.29503600000000002
	.quad	0x3fd8f1e0828c36db              # double 0.38976300000000003
	.quad	0x3fbac0f88333fc87              # double 0.104507
	.quad	0x3fccd17c5ef62f9d              # double 0.22514300000000001
	.quad	0x3fe2bc4f3ba775fb              # double 0.58548699999999998
	.quad	0x3fedbf401c4fc1df              # double 0.92959599999999998
	.quad	0x3fe4a32b12d3415b              # double 0.64491799999999999
	.quad	0x3fe43e1eb4202d9d              # double 0.63258300000000001
	.quad	0x3fe6e4dc22ab25b3              # double 0.71543699999999999
	.quad	0x3febac9afe1da7b1              # double 0.86482000000000003
	.quad	0x3fedbd72bcb5fe54              # double 0.92937599999999997
	.quad	0x3fc0d66f0cfe1544              # double 0.13154399999999999
	.quad	0x3fe4ec918e325d4a              # double 0.65387799999999996
	.quad	0x3fe8b3a4723aafff              # double 0.77192899999999998
	.quad	0x3fed38bef8ceb357              # double 0.91317700000000002
	.quad	0x3fe3b3acd5b6805a              # double 0.61568299999999998
	.quad	0x3fd449e44fa05144              # double 0.31701000000000001
	.quad	0x3fdc5681ecd4aa11              # double 0.44278000000000001
	.quad	0x3f98fe260b2c83ed              # double 0.024407000000000002
	.quad	0x3fe825cc426351df              # double 0.75461400000000001
	.quad	0x3fed8af81626b2f2              # double 0.92321399999999998
	.quad	0x3f91db0142f61ed6              # double 0.017437000000000001
	.quad	0x3feaab777d0f1f58              # double 0.83343100000000003
	.quad	0x3fd054e2b063e07a              # double 0.25518099999999999
	.quad	0x3f8c6a7ef9db22d1              # double 0.013875
	.quad	0x3fe276577531db44              # double 0.57694599999999996
	.quad	0x3fe0a4fa8b4bf8fd              # double 0.52013900000000002
	.quad	0x3fd3ca5375c8d9f9              # double 0.309224
	.quad	0x3fea5810624dd2f2              # double 0.82325000000000004
	.quad	0x3fec63886594af4f              # double 0.88714999999999999
	.quad	0x3fe772c94b380cb7              # double 0.73276200000000002
	.quad	0x3feee57fb69984a1              # double 0.96551500000000001
	.quad	0x3fd6744b2b777d0f              # double 0.35084799999999999
	.quad	0x3fdd8205ff1d81f1              # double 0.461061
	.quad	0x3fecd614df8b1572              # double 0.90113299999999996
	.quad	0x3fc0ce8101f31f47              # double 0.131302
	.quad	0x3fd49595feda6613              # double 0.32163000000000003
	.quad	0x3fe2e297396d0918              # double 0.59016000000000002
	.quad	0x3fe35c358afc47e5              # double 0.60500600000000004
	.quad	0x3fed6daa92e62132              # double 0.91963700000000004
	.quad	0x3fd9c3265add9c28              # double 0.402536
	.quad	0x3fe2c32873bc903f              # double 0.58632300000000004
	.quad	0x3fd637f7be121ee6              # double 0.34716599999999997
	.quad	0x3fe2ed916872b021              # double 0.59150000000000003
	.quad	0x3fc7f59ccfaeff5c              # double 0.18718299999999999
	.quad	0x3fed907d912556d2              # double 0.92388800000000004
	.quad	0x3fcbd15f02c4d65e              # double 0.21732699999999999
	.quad	0x3fd96efc371da37f              # double 0.397399
	.quad	0x3fde17763e4abe6a              # double 0.47018199999999999
	.quad	0x3f7f2ba9d1f60179              # double 0.0076099999999999996
	.quad	0x3fe6f4f0d844d014              # double 0.71740000000000004
	.quad	0x3fc210060780fdc1              # double 0.14111399999999999
	.quad	0x3fe7fa398201cd60              # double 0.74929500000000004
	.quad	0x3fea9a32b12d3416              # double 0.83132300000000003
	.quad	0x3feb3239a38fbca1              # double 0.849881
	.quad	0x3fe36b09635610ae              # double 0.60681600000000002
	.quad	0x3fe031e3a7daa4fd              # double 0.50609000000000004
	.quad	0x3fe9d07a6bd6e8b0              # double 0.80669900000000005
	.quad	0x3fea9b823c85c24c              # double 0.83148299999999997
	.quad	0x3fd66cc1ca3a4b55              # double 0.35038799999999998
	.quad	0x3fe9435696e58a33              # double 0.78947000000000001
	.quad	0x3fee8a41a261bf38              # double 0.95437700000000003
	.quad	0x3fe6f59685122318              # double 0.71747899999999998
	.quad	0x3fe2a5ca29845dc8              # double 0.58273799999999998
	.quad	0x3fe4ef8487b99d45              # double 0.65423799999999999
	.quad	0x3fd84b2b777d0f1f              # double 0.37958799999999998
	.quad	0x3fe4d0edc3bd5992              # double 0.65050399999999997
	.quad	0x3fe9dddf43c7d5ed              # double 0.808334
	.quad	0x3fd8a88ace24bba1              # double 0.38528699999999999
	.quad	0x3fd11847f562174c              # double 0.26710699999999998
	.quad	0x3feb546b26bf876a              # double 0.85405500000000001
	.quad	0x3fe7dc0980b24207              # double 0.74560999999999999
	.quad	0x3fe3c0ee06d93815              # double 0.61730099999999999
	.quad	0x3fc4d78c436fc159              # double 0.162828
	.quad	0x3fdb22467be553ac              # double 0.42396699999999998
	.quad	0x3fe02e3821af7d31              # double 0.50564200000000004
	.quad	0x3fd81719f7f8ca82              # double 0.37641000000000002
	.quad	0x3fececfe9b7bf1e9              # double 0.90393000000000001
	.quad	0x3fc1657fb69984a1              # double 0.13591
	.quad	0x3fe936d655e28aa4              # double 0.78794399999999997
	.quad	0x3fd499bf5946c333              # double 0.321884
	.quad	0x3fe48357a355043e              # double 0.64103299999999996
	.quad	0x3fe998c197e56473              # double 0.79989699999999997
	.quad	0x3fee6c13b9f127f6              # double 0.95069300000000001
	.quad	0x3fa314a90470a809              # double 0.037267000000000002
	.quad	0x3fe92cf0f9d2bf55              # double 0.78673599999999999
	.quad	0x3fe1f77af640639d              # double 0.56145999999999996
	.quad	0x3feefbb2fec56d5d              # double 0.968225
	.quad	0x3fe686a6e32e3822              # double 0.70393700000000003
	.quad	0x3fd8c50ce4ead0c4              # double 0.38702700000000001
	.quad	0x3fe0e2e6ea854478              # double 0.527698
	.quad	0x3fd36ab9b23dd54e              # double 0.30338900000000002
	.quad	0x3fdcf5989df1172f              # double 0.45249
	.quad	0x3fd81c3265add9c2              # double 0.37672099999999997
	.quad	0x3fea9e29b6b2af14              # double 0.83180699999999996
	.quad	0x3fd752da98676a72              # double 0.36443199999999998
	.quad	0x3fc19bf5946c332f              # double 0.137572
	.quad	0x3fe75ce7cd035372              # double 0.73009100000000005
	.quad	0x3fba598e10cf5b1d              # double 0.10292900000000001
	.quad	0x3fe3d019f3c70c99              # double 0.61915299999999995
	.quad	0x3fd8c100e6afcce2              # double 0.38678000000000001
	.quad	0x3fa567ba237cdcca              # double 0.041806999999999997
	.quad	0x3fdd3a2df9378ee3              # double 0.45667600000000003
	.quad	0x3fe4d52e2fbe33ad              # double 0.65102300000000002
	.quad	0x3fdd0539fba450ad              # double 0.45344400000000001
	.quad	0x3fe3b1d92b7fe08b              # double 0.61546000000000001
	.quad	0x3fe126aca7935760              # double 0.53597099999999998
	.quad	0x3feb719d66adb403              # double 0.85761900000000002
	.quad	0x3fdde06530058149              # double 0.46682099999999999
	.quad	0x3fec644fa05143bf              # double 0.88724499999999995
	.quad	0x3fecfb7414a4d2b3              # double 0.90569500000000003
	.quad	0x3fe9d42e557de0d6              # double 0.80715099999999995
	.quad	0x3fe3cc3e3193f6c2              # double 0.61868199999999995
	.quad	0x3fe4a4399b2c40d1              # double 0.64504700000000004
	.quad	0x3fe5884406c00da2              # double 0.67288400000000004
	.quad	0x3fe5c1e57d9dba91              # double 0.67991900000000005
	.quad	0x3fe05f58c08b75ea              # double 0.51163899999999995
	.quad	0x3fe99dcf893faf42              # double 0.80051399999999995
	.quad	0x3fe1bfd0d0678c00              # double 0.55466499999999996
	.quad	0x3fe9ad70e6f2e8c0              # double 0.80242199999999997
	.quad	0x3fdab8d823422468              # double 0.41753200000000001
	.quad	0x3fe034a87e38eb03              # double 0.50642799999999999
	.quad	0x3fe0bab21815a07b              # double 0.52278999999999998
	.quad	0x3fc4f9ca5bd944aa              # double 0.16387299999999999
	.quad	0x3facc55432873bc9              # double 0.056193
	.quad	0x3fee5d1c3ac929aa              # double 0.94886599999999999
	.quad	0x3feb2b8c75c4a83b              # double 0.84906599999999999
	.quad	0x3fe5767f4dbdf8f4              # double 0.67071499999999995
	.quad	0x3fe6b688bda9435b              # double 0.70978200000000002
	.quad	0x3fe8ffbce4217d28              # double 0.78121799999999997
	.quad	0x3fbed6a9c560c7c1              # double 0.120463
	.quad	0x3fee7583a53b8e4c              # double 0.95184500000000005
	.quad	0x3fee05532617c1be              # double 0.93815000000000004
	.quad	0x3f7055b89939218a              # double 0.0039880000000000002
	.quad	0x3fe8ee45c358afc4              # double 0.77908599999999994
	.quad	0x3fe592fb19e731d3              # double 0.67419200000000001
	.quad	0x3fd6a1ec4e7253da              # double 0.35363299999999998
	.quad	0x3febd421c044284e              # double 0.869645
	.quad	0x3fef2747d805e5f3              # double 0.97354499999999999
	.quad	0x3fe9769ca9ef5233              # double 0.79572900000000002
	.quad	0x3fe86de33269df98              # double 0.76341400000000004
	.quad	0x3fe5546b26bf876a              # double 0.66655500000000001
	.quad	0x3fe922ad3e920c07              # double 0.78548300000000004
	.quad	0x3fd310880d801b43              # double 0.29788399999999998
	.quad	0x3fee5898b2e9ccb8              # double 0.94831500000000001
	.quad	0x3fd18a3b57c4e2f3              # double 0.27406199999999997
	.quad	0x3fe22b3461309c80              # double 0.567774
	.quad	0x3fee2b4b72c5197a              # double 0.94278499999999998
	.quad	0x3fe05fbb517a4617              # double 0.51168599999999997
	.quad	0x3fc96ca46e08f217              # double 0.198628
	.quad	0x3fe188b75ea67e84              # double 0.54793899999999995
	.quad	0x3fe6e045baf533f4              # double 0.71487699999999998
	.quad	0x3fd486c6583e8577              # double 0.32072600000000001
	.quad	0x3fe83c89f40a2878              # double 0.75739000000000001
	.quad	0x3feac2e557de0d67              # double 0.83629100000000001
	.quad	0x3fe579af1886df83              # double 0.67110400000000003
	.quad	0x3fdf8afc47e49b20              # double 0.49285800000000002
	.quad	0x3fd5eefa1e3eaf68              # double 0.34271099999999999
	.quad	0x3fc4a897635e742a              # double 0.16139500000000001
	.quad	0x3fd73868fd199bb2              # double 0.36281799999999997
	.quad	0x3fd7ab4b72c5197a              # double 0.36982999999999999
	.quad	0x3fe3a02d9cf13cef              # double 0.61330300000000004
	.quad	0x3fd298d477bbf940              # double 0.290578
	.quad	0x3fd362cfd8f0c77e              # double 0.30290600000000001
	.quad	0x3fb7352a84380885              # double 0.090654999999999999
	.quad	0x3fed456b441bb8c3              # double 0.91472399999999998
	.quad	0x3fd955e28aa43351              # double 0.39586700000000002
	.quad	0x3feee7a52ac753e7              # double 0.96577699999999999
	.quad	0x3fc1e3a7daa4fca4              # double 0.13976
	.quad	0x3fd39e90795f676f              # double 0.30655300000000002
	.quad	0x3fec4d1c7de5082d              # double 0.884413
	.quad	0x3fe94959e6256367              # double 0.79020400000000002
	.quad	0x3fd3ca46e08f2171              # double 0.30922100000000002
	.quad	0x3fddb5cbff47735c              # double 0.46422099999999999
	.quad	0x3fe9d434a01abd1b              # double 0.80715400000000004
	.quad	0x3fbdbc664d3bf2f5              # double 0.116156
	.quad	0x3fe557774aba3876              # double 0.66692700000000005
	.quad	0x3fd58ab0c88a47ed              # double 0.33659
	.quad	0x3fd6964e8b7e4de4              # double 0.35292400000000002
	.quad	0x3fdb10ba6266fd65              # double 0.42289599999999999
	.quad	0x3fc388db0574b407              # double 0.152614
	.quad	0x3fbe9cfdd2285660              # double 0.11958299999999999
	.quad	0x3fe303d790752daa              # double 0.59421900000000005
	.quad	0x3febc1df3300de4c              # double 0.86741599999999996
	.quad	0x3fe681344806290f              # double 0.70327200000000001
	.quad	0x3fe59c0229a5ebb7              # double 0.67529399999999995
	.quad	0x3fc1381d7dbf4880              # double 0.13452500000000001
	.quad	0x3fdd7481b21c475e              # double 0.46023599999999998
	.quad	0x3fc045803cd141a7              # double 0.12712100000000001
	.quad	0x3fd4ad2dcb1465e9              # double 0.32307000000000002
	.quad	0x3fc13daf8df7a4e8              # double 0.13469500000000001
	.quad	0x3fcf4b1ee2435697              # double 0.24448
	.quad	0x3fefdbb9cf9a06a7              # double 0.99557200000000001
	.quad	0x3fea8cef672b8844              # double 0.82970399999999999
	.quad	0x3fe177caa7589efe              # double 0.54587300000000005
	.quad	0x3fe73463497b7415              # double 0.72514500000000004
	.quad	0x3fe413dd97f62b6b              # double 0.62742500000000001
	.quad	0x3fdec714fce746cc              # double 0.48090100000000002
	.quad	0x3fea75536933a040              # double 0.82682199999999995
	.quad	0x3fcd857afea3df6e              # double 0.23063600000000001
	.quad	0x3fe9733226c3b928              # double 0.79531200000000002
	.quad	0x3fd8100a393ee5ef              # double 0.37597900000000001
	.quad	0x3feb28ef77f27fe5              # double 0.84874700000000003
	.quad	0x3fe79b0ccbc05d53              # double 0.73767700000000003
	.quad	0x3fefa93293d102bc              # double 0.98940399999999995
	.quad	0x3fd4db48909289db              # double 0.32588400000000001
	.quad	0x3fec4b31c219eb64              # double 0.88417900000000004
	.quad	0x3fedbc6c97d8cf3a              # double 0.92925100000000005
	.quad	0x3fe72d0c3d25247d              # double 0.72424900000000003
	.quad	0x3fdff09d8c6d612c              # double 0.49906099999999998
	.quad	0x3fd6b70ac3a860dd              # double 0.35492200000000002
	.quad	0x3fe2a4a48f96e158              # double 0.58259799999999995
	.quad	0x3fea2c9081c2e33f              # double 0.81794
	.quad	0x3fe18c75c4a83b1d              # double 0.54839599999999999
	.quad	0x3fe769878316a055              # double 0.73163199999999995
	.quad	0x3feb910c2c5e2cdc              # double 0.86145599999999999
	.quad	0x3fe764ece9a2c669              # double 0.73107
	.quad	0x3fe1eac647778dd6              # double 0.55990899999999999
	.quad	0x3fe93c6a7ef9db23              # double 0.78862500000000002
	.quad	0x3fea6df612407464              # double 0.82592299999999996
	.quad	0x3fea854690de0935              # double 0.82876899999999998
	.quad	0x3fdde34b945308bc              # double 0.46699800000000002
	.quad	0x3fc6d60a63305101              # double 0.17840700000000001
	.quad	0x3fd1b107746887a9              # double 0.27643000000000001
	.quad	0x3fd412d3415b1423              # double 0.31364900000000001
	.quad	0x3fad9231c64ba94c              # double 0.057756000000000002
	.quad	0x3fd932b55ef1fddf              # double 0.39372000000000001
	.quad	0x3febb3edd8b60f1b              # double 0.86571399999999998
	.quad	0x3fea212513b5bf6a              # double 0.81654599999999999
	.quad	0x3fe8c7c73eee5259              # double 0.77438700000000005
	.quad	0x3fe75a597d49d7ba              # double 0.72977899999999996
	.quad	0x3fd93f67f4dbdf8f              # double 0.39449499999999998
	.quad	0x3fd316b54e2b063e              # double 0.298261
	.quad	0x3fc4cd07852f7f4a              # double 0.16250700000000001
	.quad	0x3fe13cab81f969e4              # double 0.53865600000000002
	.quad	0x3fedfd0d0678c005              # double 0.93713999999999997
	.quad	0x3fbc8fa7a85015c2              # double 0.111567
	.quad	0x3fe405510d38cda7              # double 0.62564900000000001
	.quad	0x3fcd17d6b65a9a80              # double 0.22728999999999999
	.quad	0x3fd4eb2074ea8da8              # double 0.326851
	.quad	0x3f7bbcf4e874c900              # double 0.0067720000000000002
	.quad	0x3fe86fe0ce0b912e              # double 0.76365700000000003
	.quad	0x3fde59e1f3a57eaa              # double 0.47423599999999999
	.quad	0x3fe63b2bba98eda2              # double 0.69472299999999998
	.quad	0x3fe0d3111f0c34c2              # double 0.52576500000000004
	.quad	0x3fd8c50ce4ead0c4              # double 0.38702700000000001
	.quad	0x3fdda7c17a89331a              # double 0.463364
	.quad	0x3fb374ff865d7cb3              # double 0.076004000000000002
	.quad	0x3febdc22ab25b318              # double 0.87062200000000001
	.quad	0x3fea1ec4e7253da7              # double 0.81625599999999998
	.quad	0x3fde3e4ef0281ba8              # double 0.472553
	.quad	0x3fb40c521dda059a              # double 0.078312999999999993
	.quad	0x3f76ededaec4a409              # double 0.0055979999999999997
	.quad	0x3fb7ade225fa658c              # double 0.092496999999999996
	.quad	0x3fea58c8eef1bac3              # double 0.82333800000000001
	.quad	0x3fe1b58afc47e49b              # double 0.55341099999999999
	.quad	0x3fe68eb463497b74              # double 0.70491999999999999
	.quad	0x3fe2f1dc50ce4ead              # double 0.59202399999999999
	.quad	0x3fe89b52007dd441              # double 0.76895999999999998
	.quad	0x3feb11d798d8a97a              # double 0.84592800000000001
	.quad	0x3fea5b2f661f18ca              # double 0.823631
	.quad	0x3fec75d13d74d595              # double 0.88938200000000001
	.quad	0x3fe19422ccb3a259              # double 0.54933299999999996
	.quad	0x3fdcddb1209edbf9              # double 0.45103100000000002
	.quad	0x3fd3fbbd7b2031cf              # double 0.31224000000000002
	.quad	0x3fe20870110a137f              # double 0.56352999999999998
	.quad	0x3fc31a5ca29845dd              # double 0.14924200000000001
	.quad	0x3fe85df6555c52e7              # double 0.76146999999999998
	.quad	0x3fe45e6362a5e786              # double 0.63652200000000003
	.quad	0x3fe415d91ab8e8ea              # double 0.62766699999999997
	.quad	0x3fa1654d61b2a27f              # double 0.033975999999999999
	.quad	0x3fe4d232d2bb2357              # double 0.65065899999999999
	.quad	0x3fb5d6cf850df15a              # double 0.085308999999999995
	.quad	0x3fe17a24894c447c              # double 0.54615999999999998
	.quad	0x3fe36b5f5f0b2852              # double 0.60685699999999998
	.quad	0x3fe34c33b5393251              # double 0.60305200000000003
	.quad	0x3fc9ba6698bb4d49              # double 0.20100100000000001
	.quad	0x3fed7c5ac471b478              # double 0.92142999999999997
	.quad	0x3fd52cbea4ebdd33              # double 0.33085599999999998
	.quad	0x3fe1d63022dd7a9a              # double 0.557396
	.quad	0x3fee41a8ac5c13fd              # double 0.94551499999999999
	.quad	0x3fef245f5ad96a6a              # double 0.97319
	.quad	0x3fe7e290eed02cd4              # double 0.74640700000000004
	.quad	0x3fe408db0574b407              # double 0.626081
	.quad	0x3fecf141205bc01a              # double 0.90444999999999998
	.quad	0x3fe4cec636b09635              # double 0.65024099999999996
	.quad	0x3fd52fd32c625e9a              # double 0.331044
	.quad	0x3f8b402d16b97fe9              # double 0.013306
	.quad	0x3fe83a3443d46b27              # double 0.75710500000000003
	.quad	0x3fee4f67b1c0010c              # double 0.94719299999999995
	.quad	0x3fe2afd75e2046c7              # double 0.58396499999999996
	.quad	0x3fe38155d5f56a7b              # double 0.60953800000000002
	.quad	0x3feb7f950b955f78              # double 0.85932399999999998
	.quad	0x3fe5c6aa087ca644              # double 0.68050100000000002
	.quad	0x3fd6f84cad57bc7f              # double 0.35890499999999997
	.quad	0x3fb02773e24febd1              # double 0.063102000000000005
	.quad	0x3fbeb3dd11be6e65              # double 0.119932
	.quad	0x3fe4fd84901d1915              # double 0.65594699999999995
	.quad	0x3feaaa044ae85b9f              # double 0.83325400000000005
	.quad	0x3fc09c6f36ef8056              # double 0.129774
	.quad	0x3fdd2dbe7f2c300a              # double 0.45591700000000002
	.quad	0x3f7656eefa1e3eaf              # double 0.0054539999999999996
	.quad	0x3fed57f737da61e1              # double 0.91698800000000003
	.quad	0x3fd6c2acb85a4f01              # double 0.355632
	.quad	0x3fe40acc0bdcad15              # double 0.62631800000000004
	.quad	0x3fe0d286b59146e5              # double 0.52569900000000003
	.quad	0x3fe8aac1094a2b9d              # double 0.77084399999999997
	.quad	0x3fee0c5a8155d5f5              # double 0.93900799999999995
	.quad	0x3fd4460ed80a17b1              # double 0.316776
	.quad	0x3fd22aa9f7b5aea3              # double 0.283854
	.quad	0x3fb4e618ce2d1f1d              # double 0.081636
	.quad	0x3fe48ac3a860dcba              # double 0.64193900000000004
	.quad	0x3fdb9f3c70c996b7              # double 0.43159399999999998
	.quad	0x3fdde40420f6f08d              # double 0.46704200000000001
	.quad	0x3fec512ec6bce853              # double 0.88490999999999997
	.quad	0x3fe647c73eee5259              # double 0.69626200000000005
	.quad	0x3fc154c122749f0e              # double 0.13539899999999999
	.quad	0x3fe1604189374bc7              # double 0.54300000000000004
	.quad	0x3fb30dd82fd75e20              # double 0.074429999999999996
	.quad	0x3fc7df97aaac1095              # double 0.18651100000000001
	.quad	0x3fb7481b21c475e6              # double 0.090943999999999997
	.quad	0x3fe95f0b28522ea1              # double 0.792852
	.quad	0x3fe621d96e9bbf0e              # double 0.69163200000000002
	.quad	0x3fbeecf206423960              # double 0.12080299999999999
	.quad	0x3fe4de69ad42c3ca              # double 0.65215000000000001
	.quad	0x3fc20d887ebf22c0              # double 0.141038
	.quad	0x3fb3c98a222d5172              # double 0.077294000000000001
	.quad	0x3fc4f9a06a6e32e4              # double 0.16386800000000001
	.quad	0x3fe4e73c4f3ba776              # double 0.653227
	.quad	0x3fb294dd72367e41              # double 0.072583999999999996
	.quad	0x3fe6506bbdbe3c10              # double 0.69731699999999996
	.quad	0x3fd91e2584f4c6e7              # double 0.39246500000000001
	.quad	0x3fe945f9df548ece              # double 0.78979200000000005
	.quad	0x3f9c2f405f6ba062              # double 0.027524
	.quad	0x3fc29528f190d174              # double 0.145177
	.quad	0x3fe8f80346dc5d64              # double 0.78027500000000005
	.quad	0x3fec1b951c5c5719              # double 0.87836700000000001
	.quad	0x3fddb71b8aa00193              # double 0.46430100000000002
	.quad	0x3fdb3aeee957470f              # double 0.42547200000000002
	.quad	0x3fe0018c5c9a34ca              # double 0.50018899999999999
	.quad	0x3fbca372606fac60              # double 0.111869
	.quad	0x3fd520535c9e6688              # double 0.330098
	.quad	0x3fe85df43c7d5ed0              # double 0.76146899999999995
	.quad	0x3fe71ba1b1960fa1              # double 0.72212299999999996
	.quad	0x3fefe86c6583e857              # double 0.99712199999999995
	.quad	0x3fc45814940bbb1f              # double 0.158938
	.quad	0x3fb8ac7da1ec4e72              # double 0.096381999999999995
	.quad	0x3feaa0c069e7fb26              # double 0.83212299999999995
	.quad	0x3fef704577d95571              # double 0.98245499999999996
	.quad	0x3fdf3f811f4f50a0              # double 0.48825099999999999
	.quad	0x3f89567dbb16c1e3              # double 0.012371999999999999
	.quad	0x3fb2324c8366516e              # double 0.071080000000000004
	.quad	0x3fd65b4aa9717df2              # double 0.34932200000000002
	.quad	0x3f972f76e6106ab1              # double 0.022641999999999999
	.quad	0x3fda7abb8800eae2              # double 0.41374100000000003
	.quad	0x3fe508e15011904b              # double 0.65733399999999997
	.quad	0x3fd822b7baecd078              # double 0.37711899999999998
	.quad	0x3fe9a5e13b18dac2              # double 0.80149899999999996
	.quad	0x3fd8b4bf8fcd67fd              # double 0.38603199999999999
	.quad	0x3fe48c8259e1f3a5              # double 0.64215199999999995
	.quad	0x3fb76a93f290abb4              # double 0.091469999999999996
	.quad	0x3fdc6f0cfe154435              # double 0.44427800000000001
	.quad	0x3fe12c18f81e8a2f              # double 0.53663300000000003
	.quad	0x3fef60f3cb3e5754              # double 0.98058500000000003
	.quad	0x3fdabaf533f42353              # double 0.417661
	.quad	0x3fea87182235b4ee              # double 0.82899100000000003
	.quad	0x3febe28027d88c1e              # double 0.87139900000000003
	.quad	0x3fe3afd113836a83              # double 0.61521199999999998
	.quad	0x3fd09d27c3936827              # double 0.25959199999999999
	.quad	0x3fefeff7dfa00e28              # double 0.99804300000000001
	.quad	0x3fe6edfc5cdd50a9              # double 0.71655100000000005
	.quad	0x3fdefcf80dc33722              # double 0.48419000000000001
	.quad	0x3fceb042528ae74f              # double 0.23975399999999999
	.quad	0x3fe25afd113836a8              # double 0.57360699999999998
	.quad	0x3fed393ccd0fe8ab              # double 0.91323699999999997
	.quad	0x3fe18a2ec28b2a6b              # double 0.54811799999999999
	.quad	0x3fd326f60e0eb67c              # double 0.29925299999999999
	.quad	0x3fda7cfe58601366              # double 0.413879
	.quad	0x3fc2c4d65e460675              # double 0.14663200000000001
	.quad	0x3fba595bbbe878fb              # double 0.102926
	.quad	0x3feda75ee99a62ed              # double 0.92668099999999998
	.quad	0x3fe9bcf70153bd16              # double 0.80431699999999995
	.quad	0x3febf062d40aaeb0              # double 0.87309400000000004
	.quad	0x3fd4fa58f7121ab5              # double 0.32778000000000002
	.quad	0x3fe7681450efdc9c              # double 0.73145499999999997
	.quad	0x3fc226bb55ac03ff              # double 0.14180699999999999
	.quad	0x3fe4823422467be5              # double 0.64089399999999996
	.quad	0x3fc192a737110e45              # double 0.13728799999999999
	.quad	0x3fc2db8348f53c58              # double 0.14732400000000001
	.quad	0x3fe0aa94ff0025c0              # double 0.52082300000000004
	.quad	0x3fdb527a20578e5c              # double 0.42690899999999998
	.quad	0x3fe8a4febd09e12a              # double 0.77014099999999996
	.quad	0x3fd08f4b61fe21d9              # double 0.25874599999999998
	.quad	0x3fdebf22c01e68a1              # double 0.48041600000000001
	.quad	0x3fdb4e874c8ffb8b              # double 0.42666799999999999
	.quad	0x3fd13f85510d38ce              # double 0.26950200000000002
	.quad	0x3fdbfc2eba27ae9b              # double 0.43726700000000002
	.quad	0x3fc4c39ffd60e94f              # double 0.16222
	.quad	0x3febba3443d46b27              # double 0.86648000000000003
	.quad	0x3fe38b7c3504c48b              # double 0.61077700000000001
	.quad	0x3fd3e8f6cefed634              # double 0.31109399999999998
	.quad	0x3fc3d976ff3ade22              # double 0.15507399999999999
	.quad	0x3fef2a23bff8a8f4              # double 0.97389400000000003
	.quad	0x3fe8a7243137b070              # double 0.77040299999999995
	.quad	0x3fd8323bbc6eb0b8              # double 0.37806600000000001
	.quad	0x3fe35771001d5c31              # double 0.60442399999999996
	.quad	0x3fdf17ebaf102364              # double 0.48583500000000002
	.quad	0x3fe42178f68be2f8              # double 0.62908600000000003
	.quad	0x3fe7321815a07b35              # double 0.72486499999999998
	.quad	0x3fdabd1aa821f299              # double 0.417792
	.quad	0x3fe173387160956c              # double 0.54531499999999999
	.quad	0x3fda2fb19e731d2e              # double 0.409161
	.quad	0x3fd4ba6efc371da3              # double 0.32387899999999997
	.quad	0x3feb64ba94bbe447              # double 0.85604599999999997
	.quad	0x3fdc000431bde82d              # double 0.43750099999999997
	.quad	0x3fe873cf70153bd1              # double 0.76413699999999996
	.quad	0x3fd164f11b60ae97              # double 0.27178600000000003
	.quad	0x3fcf20c069e7fb26              # double 0.24318699999999999
	.quad	0x3fd5e35c5b4aa971              # double 0.34200199999999997
	.quad	0x3fd32a0663c74fb5              # double 0.29943999999999998
	.quad	0x3fe7630446b69db6              # double 0.73083699999999996
	.quad	0x3fe90cc144028e50              # double 0.78280700000000003
	.quad	0x3fd78d2a1f8e3ac1              # double 0.36799100000000001
	.quad	0x3fad823422467be5              # double 0.057633999999999998
	.quad	0x3fef661f18c9fb61              # double 0.98121599999999997
	.quad	0x3fe30b45ae5ffa3c              # double 0.59512600000000004
	.quad	0x3fe1e238da3c2118              # double 0.55886499999999995
	.quad	0x3fdcc386d2ed783e              # double 0.449434
	.quad	0x3fd2d8d79d0a6762              # double 0.294485
	.quad	0x3fec92be48a58b3f              # double 0.89291299999999996
	.quad	0x3fe326d4801f7510              # double 0.59848999999999997
	.quad	0x3fed243bb40b34e7              # double 0.91067299999999995
	.quad	0x3feaf8a4c1ebc83b              # double 0.84285200000000005
	.quad	0x3fe508051c9f72f7              # double 0.65722899999999995
	.quad	0x3fd14eb9a176ddad              # double 0.27043
	.quad	0x3fec7c19c17225b7              # double 0.89014899999999997
	.quad	0x3fec6736049ecb32              # double 0.88759900000000003
	.quad	0x3fd2d9d7774aba38              # double 0.29454599999999997
	.quad	0x3f7d5f56a7ac81d4              # double 0.0071710000000000003
	.quad	0x3fe255171e29b6b3              # double 0.57288700000000004
	.quad	0x3faf9d6f112fd32c              # double 0.061747999999999997
	.quad	0x3fe337b6bb129025              # double 0.60055099999999995
	.quad	0x3fdb36eb4e981388              # double 0.42522700000000002
	.quad	0x3fcada33bd9cae21              # double 0.209784
	.quad	0x3feaf9314445aa2e              # double 0.84291899999999997
	.quad	0x3fb87e7c06e19b91              # double 0.095680000000000001
	.quad	0x3fe0889c1b54195d              # double 0.51667600000000002
	.quad	0x3fe2e3ef284167a9              # double 0.59032399999999996
	.quad	0x3fe641fc8f32378b              # double 0.69555500000000003
	.quad	0x3f98d08919ef954f              # double 0.024233000000000001
	.quad	0x3fb6ed783dff3f10              # double 0.089561000000000001
	.quad	0x3fcb141a6937d1fe              # double 0.21155099999999999
	.quad	0x3fe095e39713ad5c              # double 0.51829700000000001
	.quad	0x3fca5c13fd0d0679              # double 0.20593500000000001
	.quad	0x3fb7809917939a7c              # double 0.091805999999999999
	.quad	0x3fe717ebaf102364              # double 0.72167000000000003
	.quad	0x3feb61d4306e5cd5              # double 0.85569200000000001
	.quad	0x3fd17a9e2bcf91a3              # double 0.27310899999999999
	.quad	0x3fe09455219a847b              # double 0.51810699999999998
	.quad	0x3fd9cc1ca3a4b557              # double 0.40308300000000002
	.quad	0x3fd492a737110e45              # double 0.32145099999999999
	.quad	0x3fefb1487768166a              # double 0.99039100000000002
	.quad	0x3fec30db6a1e81cb              # double 0.88096399999999997
	.quad	0x3feb8ba40d90e23b              # double 0.86079600000000001
	.quad	0x3fe4299d883ba344              # double 0.63007999999999997
	.quad	0x3fcb373affb04ee8              # double 0.21262300000000001
	.quad	0x3fed8605681ecd4b              # double 0.92261000000000004
	.quad	0x3fc2d17c5ef62f9d              # double 0.14701800000000001
	.quad	0x3fabdf090f733a8a              # double 0.054435999999999998
	.quad	0x3fe5766e86c6583f              # double 0.67070700000000005
	.quad	0x3fed6236c15d2d02              # double 0.91823900000000003
	.quad	0x3febea76965f5276              # double 0.87237100000000001
	.quad	0x3fc0ebbba55d1c3b              # double 0.13219400000000001
	.quad	0x3fe444545846e8f3              # double 0.63334100000000004
	.quad	0x3fd0705857afea3e              # double 0.256857
	.quad	0x3fcc2f405f6ba062              # double 0.220192
	.quad	0x3fdce7e1fc08fa7b              # double 0.45165300000000003
	.quad	0x3fcd78f68be2f7b1              # double 0.23025399999999999
	.quad	0x3fb370691ea78af4              # double 0.075934000000000001
	.quad	0x3fed93f8db489093              # double 0.92431300000000005
	.quad	0x3fd1fdb09a671ef3              # double 0.281109
	.quad	0x3fc34267839cd812              # double 0.15046399999999999
	.quad	0x3fe39e3a7daa4fca              # double 0.61306499999999997
	.quad	0x3fd63bd5992428d4              # double 0.34740199999999999
	.quad	0x3fe9d0268900c522              # double 0.80665900000000001
	.quad	0x3fee1595feda6613              # double 0.94013500000000005
	.quad	0x3fb8f0b6b6e0d23d              # double 0.097422999999999996
	.quad	0x3feaf45176145953              # double 0.84232399999999996
	.quad	0x3fe2041cc532a498              # double 0.563002
	.quad	0x3fe04386d2ed783e              # double 0.508243
	.quad	0x3feed38ef34d6a16              # double 0.96332499999999999
	.quad	0x3fdfe1c58255b036              # double 0.49815500000000001
	.quad	0x3fc03e9ea1405708              # double 0.126911
	.quad	0x3fe9e939eadd590c              # double 0.80971999999999999
	.quad	0x3fe4c23d9231c64c              # double 0.64871100000000004
	.quad	0x3fcc450268900c52              # double 0.220856
	.quad	0x3fb1ddd2ae8e1d65              # double 0.069791000000000006
	.quad	0x3fe6417a89331a09              # double 0.69549300000000003
	.quad	0x3fe4943e10060781              # double 0.643096
	.quad	0x3fe94471b4784231              # double 0.789605
	.quad	0x3fe75892684cf074              # double 0.72956200000000004
	.quad	0x3fa6c02f2f987400              # double 0.044435000000000002
	.quad	0x3f98c47a17f4128c              # double 0.024187
	.quad	0x3fc19ce8d972cd7d              # double 0.137601
	.quad	0x3fe2647fdc5931ca              # double 0.57476799999999995
	.quad	0x3fbec5d206c8711d              # double 0.12020599999999999
	.quad	0x3fe954738a3b57c5              # double 0.79155900000000001
	.quad	0x3fe781dc0db2702a              # double 0.73460199999999998
	.quad	0x3fa5e3da2f8bdec6              # double 0.042754
	.quad	0x3fde404a72ead927              # double 0.47267399999999998
	.quad	0x3fd41a543f1c7582              # double 0.31410700000000003
	.quad	0x3fe9761240746456              # double 0.79566300000000001
	.quad	0x3fd4d2391d57ff9b              # double 0.32533099999999998
	.quad	0x3feda089e34330d7              # double 0.92584699999999998
	.quad	0x3fa17ebaf102363b              # double 0.034169999999999999
	.quad	0x3fb677f6b1a2a4db              # double 0.087767999999999999
	.quad	0x3fec8eb8950763a2              # double 0.89242200000000005
	.quad	0x3fd17eed45e9185d              # double 0.273372
	.quad	0x3fda285ec3dab5c4              # double 0.40871400000000002
	.quad	0x3fede757928e0c9e              # double 0.93449000000000004
	.quad	0x3fec45803cd141a7              # double 0.88348400000000005
	.quad	0x3fe8f91e646f1562              # double 0.78041000000000005
	.quad	0x3fecf4b838c111ae              # double 0.90487300000000004
	.quad	0x3fd814ec204f2ae0              # double 0.37627699999999997
	.quad	0x3fe97ecbb7f9d6f1              # double 0.79672799999999999
	.quad	0x3fd9ea2d2fe3f35a              # double 0.404918
	.quad	0x3fe2738a3b57c4e3              # double 0.57660400000000001
	.quad	0x3fcfe40c8472c0e8              # double 0.24914700000000001
	.quad	0x3f997b30f8c64fdb              # double 0.024884
	.quad	0x3fa8a50507a6bd6f              # double 0.048134000000000003
	.quad	0x3fd12ab25b317efe              # double 0.268231
	.quad	0x3fca451b93037d63              # double 0.205234
	.quad	0x3fe373471f79420b              # double 0.60782199999999997
	.quad	0x3fd8410f94c87981              # double 0.378971
	.quad	0x3fc1b3d8e0008638              # double 0.13830100000000001
	.quad	0x3fec496aad1d041d              # double 0.88396200000000003
	.quad	0x3fc3378ee2867275              # double 0.15013299999999999
	.quad	0x3fb2cf850df15a4b              # double 0.073479000000000003
	.quad	0x3fe6f7e80389f83c              # double 0.71776200000000001
	.quad	0x3fe5e820e6299525              # double 0.68458600000000003
	.quad	0x3fe9e86a4ca4f441              # double 0.80962100000000004
	.quad	0x3fd1897204295a6c              # double 0.27401399999999998
	.quad	0x3fb40346dc5d6388              # double 0.078174999999999994
	.quad	0x3fe0fae3608d0892              # double 0.53062600000000004
	.quad	0x3fe66cd8dbcec850              # double 0.70078700000000005
	.quad	0x3fe74ef672b88440              # double 0.72838899999999995
	.quad	0x3fd708787485e3da              # double 0.35989199999999999
	.quad	0x3fe097b7414a4d2b              # double 0.51851999999999998
	.quad	0x3fdeddb1209edbf9              # double 0.48228100000000002
	.quad	0x3fed8ac5c13fd0d0              # double 0.92318999999999996
	.quad	0x3fee662dc6e2a800              # double 0.94997299999999996
	.quad	0x3fe798b0d0edc3bd              # double 0.73738899999999996
	.quad	0x3fd8e8533b107747              # double 0.38918000000000003
	.quad	0x3fd32f6e82949a56              # double 0.29976999999999998
	.quad	0x3fd05ce9e5e24788              # double 0.25567099999999998
	.quad	0x3f6ee675147f1306              # double 0.0037720000000000002
	.quad	0x3fe392018a43bb41              # double 0.61157300000000003
	.quad	0x3fd783dbc23315d7              # double 0.367423
	.quad	0x3fe9bb213e3e2930              # double 0.80409299999999995
	.quad	0x3fd29ca5bd944aa5              # double 0.29081099999999999
	.quad	0x3fe5462a1b5c7cd9              # double 0.66481500000000004
	.quad	0x3fd4cbddb9841aac              # double 0.32494299999999998
	.quad	0x3fed9b691212513b              # double 0.92522099999999996
	.quad	0x3fe3e63e8dda48b6              # double 0.62185599999999996
	.quad	0x3fe4d9a30984e400              # double 0.65156700000000001
	.quad	0x3fed30270f388228              # double 0.91212800000000005
	.quad	0x3fd71ec0b567557a              # double 0.36125200000000002
	.quad	0x3fe61f18c9fb6135              # double 0.69129600000000002
	.quad	0x3fe752f5dbb9cf9a              # double 0.728877
	.quad	0x3fe6464fdb09a672              # double 0.69608300000000001
	.quad	0x3fe42a25d8d79d0a              # double 0.63014499999999996
	.quad	0x3fe9eea854477ff1              # double 0.81038299999999996
	.quad	0x3fed695b78cc9a78              # double 0.91911100000000001
	.quad	0x3fdf9085f4a1272d              # double 0.49319600000000002
	.quad	0x3fe46a50d6b228dd              # double 0.63797800000000005
	.quad	0x3fde54a7f8012dfd              # double 0.47391699999999998
	.quad	0x3fbe78183f91e647              # double 0.11902
	.quad	0x3fd17ded6ba8c587              # double 0.27331100000000003
	.quad	0x3fd385942917507f              # double 0.30502800000000002
	.quad	0x3fe341fc8f32378b              # double 0.60180500000000003
	.quad	0x3fee4a46e08f2171              # double 0.94656700000000005
	.quad	0x3fe56cb5350092cd              # double 0.66952
	.quad	0x3fe8b256ffc115df              # double 0.77176999999999996
	.quad	0x3fd2960b6f9fcb0c              # double 0.290408
	.quad	0x3fc4070b8cfbfc65              # double 0.15646499999999999
	.quad	0x3fe1a163fdd65a14              # double 0.55095099999999997
	.quad	0x3fed9528f190d174              # double 0.924458
	.quad	0x3fdf9c0a8d21bc12              # double 0.49389899999999998
	.quad	0x3f8f94855da27286              # double 0.01542
	.quad	0x3fe6e5de15ca6ca0              # double 0.71555999999999997
	.quad	0x3fe9f090f733a8a4              # double 0.810616
	.quad	0x3fa96f21f6cacd18              # double 0.049675999999999998
	.quad	0x3fb8ac7da1ec4e72              # double 0.096381999999999995
	.quad	0x3fe720d5629d840a              # double 0.72275800000000001
	.quad	0x3fba2f5989df1173              # double 0.102285
	.quad	0x3fd774794ea07703              # double 0.36648399999999998
	.quad	0x3fc5803cd141a693              # double 0.16797599999999999
	.quad	0x3fb93b8e4b87bdcf              # double 0.098565
	.quad	0x3fec3c64345cfedf              # double 0.88237200000000005
	.quad	0x3fe723f034b0e1b5              # double 0.72313700000000003
	.quad	0x3fe949081c2e33f0              # double 0.79016500000000001
	.quad	0x3fe7dec5f394b7b3              # double 0.74594400000000005
	.quad	0x3fe42c0e7bc3c5bd              # double 0.63037799999999999
	.quad	0x3fe1a67620ee8d11              # double 0.55157
	.quad	0x3fcbc925785f8d2e              # double 0.21707599999999999
	.quad	0x3fda34a87e38eb03              # double 0.40946399999999999
	.quad	0x3fe3d4ac29bf162b              # double 0.61971100000000001
	.quad	0x3fee7bcc2938de6e              # double 0.95261200000000001
	.quad	0x3fcae54f7a919696              # double 0.210123
	.quad	0x3fc41c4fc1df3301              # double 0.157114
	.quad	0x3fc596fa82e87d2c              # double 0.16866999999999999
	.quad	0x3fc358c8eef1bac3              # double 0.151147
	.quad	0x3fd4e9424e592967              # double 0.326737
	.quad	0x3feac78854cdb7ae              # double 0.83685699999999996
	.quad	0x3fe01b951c5c5719              # double 0.50336700000000001
	.quad	0x3fe7d929670196d9              # double 0.745259
	.quad	0x3fde4af4f0d844d0              # double 0.473325
	.quad	0x3fe9f65dbfceb789              # double 0.81132400000000005
	.quad	0x3feb60d66f0cfe15              # double 0.85557099999999997
	.quad	0x3fe6d27a20578e5c              # double 0.71319299999999997
	.quad	0x3fed6a550870110a              # double 0.91922999999999999
	.quad	0x3fee0e79aae6c8f7              # double 0.93926699999999996
	.quad	0x3fcccff21b3aeee9              # double 0.22509599999999999
	.quad	0x3fe7aaae297396d1              # double 0.73958500000000005
	.quad	0x3fe5f2e48e8a71de              # double 0.68589999999999995
	.quad	0x3fd31fc4c165907e              # double 0.29881400000000002
	.quad	0x3fe23a9f383f0baf              # double 0.56965600000000005
	.quad	0x3feac6887a8d64d8              # double 0.83673500000000001
	.quad	0x3fe231df761cbccf              # double 0.56858799999999998
	.quad	0x3fc4c343b70ef566              # double 0.16220899999999999
	.quad	0x3fd800cd855970b5              # double 0.37504900000000002
	.quad	0x3fe58c0ce91c8eac              # double 0.673346
	.quad	0x3fdcc2656abde3fc              # double 0.44936500000000001
	.quad	0x3fea525892684cf0              # double 0.82255199999999995
	.quad	0x3fee57d7c2ca148c              # double 0.94822300000000003
	.quad	0x3fe57154003254e7              # double 0.67008400000000001
	.quad	0x3fe281e2584f4c6e              # double 0.57835499999999995
	.quad	0x3febed6777079e5a              # double 0.87273000000000001
	.quad	0x3febca6a875d56f3              # double 0.86845899999999998
	.quad	0x3fe716c61522a6f4              # double 0.72153
	.quad	0x3fed66d373affb05              # double 0.91880200000000001
	.quad	0x3fed8b8066c2acb8              # double 0.92327899999999996
	.quad	0x3faf961804d98394              # double 0.061691999999999997
	.quad	0x3fe42137f38c5437              # double 0.62905500000000003
	.quad	0x3fdb4a1f080303c0              # double 0.42639899999999997
	.quad	0x3fc84545846e8f2a              # double 0.189614
	.quad	0x3fd3db59578a2a91              # double 0.31026300000000001
	.quad	0x3fe085a4f00ef135              # double 0.51631400000000005
	.quad	0x3fed094e5d5b24ea              # double 0.90738600000000003
	.quad	0x3fb932830a0b1bbd              # double 0.098427000000000001
	.quad	0x3fe7694ee392e1ef              # double 0.73160499999999995
	.quad	0x3f7ccea28fe260b3              # double 0.0070330000000000002
	.quad	0x3fde1897a67a52ac              # double 0.47025099999999997
	.quad	0x3fec873bc903ea70              # double 0.89150799999999997
	.quad	0x3fe0d657fb69984a              # double 0.52616499999999999
	.quad	0x3fc5224aada33bda              # double 0.16510900000000001
	.quad	0x3fd2cfd8f0c77dd8              # double 0.29393599999999998
	.quad	0x3fe2fae3608d0892              # double 0.59312600000000004
	.quad	0x3fb7201040bfe3b0              # double 0.090332999999999996
	.quad	0x3fe09de69ad42c3d              # double 0.51927500000000004
	.quad	0x3fbac8a372606fac              # double 0.10462399999999999
	.quad	0x3feaaab474107315              # double 0.83333800000000002
	.quad	0x3fe2225b749adc90              # double 0.56669400000000003
	.quad	0x3fe1debb7739f341              # double 0.55843900000000002
	.quad	0x3fe89acffa7eb6bf              # double 0.76889799999999997
	.quad	0x3fe003afb7e90ff9              # double 0.50044999999999995
	.quad	0x3fe69059ea57214f              # double 0.705121
	.quad	0x3fe275a1016ce78a              # double 0.57685900000000001
	.quad	0x3fe473929ed3953e              # double 0.63910800000000001
	.quad	0x3fea7e5c91d14e3c              # double 0.82792500000000002
	.quad	0x3fb1e3c968943e10              # double 0.069882
	.quad	0x3fe443c3a42f1ed1              # double 0.63327199999999995
	.quad	0x3feeb9cd8127b2cc              # double 0.96018099999999995
	.quad	0x3fef55043e5321e6              # double 0.979128
	.quad	0x3fdaa747d805e5f3              # double 0.41646
	.quad	0x3fee5742dcf4623d              # double 0.94815199999999999
	.quad	0x3fb43137b07075b4              # double 0.078876000000000002
	.quad	0x3fc394855da27286              # double 0.15296999999999999
	.quad	0x3fe61528f190d174              # double 0.690083
	.quad	0x3fe0a48f96e15875              # double 0.52008799999999999
	.quad	0x3fc9de050374ff86              # double 0.20208799999999999
	.quad	0x3fb0cc46950fc71d              # double 0.065616999999999995
	.quad	0x3fd3a786c226809d              # double 0.30709999999999998
	.quad	0x3f6ab4b72c5197a2              # double 0.0032599999999999999
	.quad	0x3fd4268900c521de              # double 0.31485200000000002
	.quad	0x3fb4163779e9d0ea              # double 0.078464000000000005
	.quad	0x3fe65a0be5109071              # double 0.698492
	.quad	0x3fe39cef240fa9c1              # double 0.61290699999999998
	.quad	0x3fd6148fd9fd36f8              # double 0.34500500000000001
	.quad	0x3fb9477bbf93ff26              # double 0.098747000000000001
	.quad	0x3fd9d90e23af31b1              # double 0.40387299999999998
	.quad	0x3fd9aee631f8a090              # double 0.40129999999999999
	.quad	0x3fb7456b441bb8c3              # double 0.090902999999999998
	.quad	0x3fe6c97fa5d28d00              # double 0.71209699999999998
	.quad	0x3fe8df82b1f687b1              # double 0.77728399999999997
	.quad	0x3fcfd30ad46f587d              # double 0.24862799999999999
	.quad	0x3fd3f36262cba733              # double 0.31173000000000001
	.quad	0x3fe802d59d55e6bc              # double 0.75034599999999995
	.quad	0x3fe6e5a14488c60d              # double 0.71553100000000003
	.quad	0x3f9984a0e410b631              # double 0.024920000000000001
	.quad	0x3feefad4b2745bf2              # double 0.96811899999999995
	.quad	0x3fd6c8de2ac32229              # double 0.35600999999999999
	.quad	0x3fc4ca600b029281              # double 0.16242599999999999
	.quad	0x3fe27e82517e77d5              # double 0.57794299999999998
	.quad	0x3fed5c8754f3775c              # double 0.91754500000000005
	.quad	0x3fe9298244e93e1d              # double 0.78631700000000004
	.quad	0x3fd08cf398e97072              # double 0.25860300000000003
	.quad	0x3fee0b0f27bb2fec              # double 0.93884999999999996
	.quad	0x3fe0199bb2788db0              # double 0.50312599999999996
	.quad	0x3fcbf644955b4678              # double 0.21845300000000001
	.quad	0x3fe31a415f45e0b5              # double 0.59695500000000001
	.quad	0x3fe815f02c4d65e4              # double 0.75267799999999995
	.quad	0x3fd663a5c1c6088d              # double 0.34983199999999998
	.quad	0x3fe8d5f99c38b04b              # double 0.77612000000000003
	.quad	0x3fb4e6e221c8a7a4              # double 0.081647999999999998
	.quad	0x3fd6a10e02214270              # double 0.35358000000000001
	.quad	0x3fe706290eed02cd              # double 0.71950199999999997
	.quad	0x3fbe6b50b0f27bb3              # double 0.118825
	.quad	0x3feeefbf401c4fc2              # double 0.96676600000000001
	.quad	0x3feec8d5c74751ce              # double 0.96201599999999998
	.quad	0x3fe3cea077036c9c              # double 0.618973
	.quad	0x3fe30181e03f7058              # double 0.59393399999999996
	.quad	0x3fe60270f3882279              # double 0.68779800000000002
	.quad	0x3fcf3f4a98aa8651              # double 0.244119
	.quad	0x3fe670b6b6e0d23d              # double 0.70125899999999997
	.quad	0x3fcb8a19c9d5a188              # double 0.21515200000000001
	.quad	0x3fd1d816aceaaf36              # double 0.27881400000000001
	.quad	0x3fc177292c493426              # double 0.13644899999999999
	.quad	0x3feeb35f3d7d3911              # double 0.95939600000000002
	.quad	0x3fe4421e1d2178f7              # double 0.63307100000000005
	.quad	0x3fe4633269df97ab              # double 0.63710900000000004
	.quad	0x3fec7ff151e75361              # double 0.89061800000000002
	.quad	0x3fbe18def416bdb2              # double 0.117567
	.quad	0x3fe966f2e8c0485a              # double 0.79381699999999999
	.quad	0x3fc07bf61aa3f035              # double 0.12878300000000001
	.quad	0x3fdde9a2c669057d              # double 0.46738499999999999
	.quad	0x3fe6d425f202107b              # double 0.71339699999999995
	.quad	0x3fdfc0b5675579af              # double 0.49613699999999999
	.quad	0x3fb71337eb28d866              # double 0.090136999999999994
	.quad	0x3fea7926c7eae5bd              # double 0.82728900000000005
	.quad	0x3fca3a2163fdd65a              # double 0.204899
	.quad	0x3fd38655193708ab              # double 0.30507400000000001
	.quad	0x3fd5f57b41bfbdf1              # double 0.34310800000000002
	.quad	0x3fb4c92146a1a501              # double 0.081194000000000002
	.quad	0x3fe293b18dac258d              # double 0.58052899999999996
	.quad	0x3fe6d22424a276b8              # double 0.71315200000000001
	.quad	0x3fe44f97edc7ef17              # double 0.63471599999999995
	.quad	0x3fd8b1422ccb3a26              # double 0.38581900000000002
	.quad	0x3fded1ed9dfdac69              # double 0.48156300000000002
	.quad	0x3fbd38ef34d6a162              # double 0.11415
	.quad	0x3fc1c69f8c21e1d2              # double 0.138874
	.quad	0x3fca09246bf01323              # double 0.203404
	.quad	0x3fd139e6ab9b23dd              # double 0.26915899999999998
	.quad	0x3fd0f6b1a2a4db16              # double 0.26505699999999999
	.quad	0x3fd469f05ea24cc7              # double 0.31896600000000003
	.quad	0x3feb5bd0e12e83a1              # double 0.854958
	.quad	0x3fec3161a1db877b              # double 0.88102800000000003
	.quad	0x3fe4c426351deefe              # double 0.64894399999999997
	.quad	0x3fe2ba9d1f601798              # double 0.58528000000000002
	.quad	0x3fbb93ee5eedcc21              # double 0.107726
	.quad	0x3fd041205bc01a37              # double 0.25397500000000001
	.quad	0x3fe35ca07f66e86c              # double 0.60505699999999996
	.quad	0x3fb423d9231c64bb              # double 0.078672000000000006
	.quad	0x3fc7cb252ce032db              # double 0.185887
	.quad	0x3fd92d16b97fe8ee              # double 0.39337699999999998
	.quad	0x3fefd55821294574              # double 0.99479300000000003
	.quad	0x3fd43fd933e35c5b              # double 0.31639699999999998
	.quad	0x3fde8ff759685122              # double 0.47753699999999999
	.quad	0x3fe7c299d883ba34              # double 0.74250499999999997
	.quad	0x3fee281344806291              # double 0.94239200000000001
	.quad	0x3fc70d62bf11f927              # double 0.18009600000000001
	.quad	0x3fe5f3fd933e35c6              # double 0.68603400000000003
	.quad	0x3fa35e95b78cc9a7              # double 0.037830999999999997
	.quad	0x3fe85f47f993d534              # double 0.76163099999999994
	.quad	0x3feed92b7fe08af0              # double 0.96401000000000003
	.quad	0x3fc96188b11409a2              # double 0.19828899999999999
	.quad	0x3fe30b3d4ae429e1              # double 0.59512200000000004
	.quad	0x3fa21e1d2178f68c              # double 0.035386000000000001
	.quad	0x3fe659817b95a294              # double 0.69842599999999999
	.quad	0x3fe748e4755ffe6d              # double 0.72764799999999996
	.quad	0x3fd95b1422ccb3a2              # double 0.39618399999999998
	.quad	0x3fe8a031ceaf251c              # double 0.76955499999999998
	.quad	0x3fefec8d5c74751d              # double 0.99762600000000001
	.quad	0x3fe9ef9335d249e4              # double 0.81049499999999996
	.quad	0x3fee96f4384ba0e8              # double 0.95592699999999997
	.quad	0x3fc0317268d32831              # double 0.12650900000000001
	.quad	0x3fcd2c6ac215b9a6              # double 0.22791800000000001
	.quad	0x3fe38639d5e4a383              # double 0.61013499999999998
	.quad	0x3fec1bf162ae4b02              # double 0.87841100000000005
	.quad	0x3fcbbf6a0dbad3a6              # double 0.216779
	.quad	0x3fd42e83a109d063              # double 0.31533899999999998
	.quad	0x3fd0ed4e4c942d49              # double 0.264484
	.quad	0x3fc7728a6117720d              # double 0.18318300000000001
	.quad	0x3fe26efa1e3eaf68              # double 0.57604699999999998
	.quad	0x3fdc1715c63ae254              # double 0.43890899999999999
	.quad	0x3fdffec13b9f127f              # double 0.49992399999999998
	.quad	0x3fe9c61f9f01b867              # double 0.80543500000000001
	.quad	0x3fe497a02fb5d031              # double 0.643509
	.quad	0x3fed0f6cefed6345              # double 0.90813299999999997
	.quad	0x3fa8a697aeddce7d              # double 0.048146000000000001
	.quad	0x3fb2bf9830e3cd9a              # double 0.073235999999999996
	.quad	0x3fdd9f2ba9d1f601              # double 0.46283999999999997
	.quad	0x3fe7593c46d82ba6              # double 0.72964300000000004
	.quad	0x3faf9a6b50b0f27c              # double 0.061725000000000002
	.quad	0x3fe61b54195cc858              # double 0.69083600000000001
	.quad	0x3fc0e7924af0bf1a              # double 0.13206699999999999
	.quad	0x3fdb99bb2788db05              # double 0.43125799999999997
	.quad	0x3fc981733226c3b9              # double 0.199263
	.quad	0x3fc184ec636b0963              # double 0.13686899999999999
	.quad	0x3fe691ada76d97b3              # double 0.70528299999999999
	.quad	0x3fc6f6d7625204b0              # double 0.17940800000000001
	.quad	0x3fcd9bd4067cf1c3              # double 0.231318
	.quad	0x3f83ffac1d29dc72              # double 0.0097649999999999994
	.quad	0x3fef664b2314013f              # double 0.98123700000000002
	.quad	0x3fa8c75c4a83b1d1              # double 0.048396000000000002
	.quad	0x3feeac0c62e4d1a6              # double 0.95850199999999997
	.quad	0x3fe5765dbfceb789              # double 0.67069900000000005
	.quad	0x3feef29f59ccfaf0              # double 0.967117
	.quad	0x3fefc1e364bec67a              # double 0.99241800000000002
	.quad	0x3fed4ffeb074a772              # double 0.91601500000000002
	.quad	0x3fc193e5fb71fbc6              # double 0.137326
	.quad	0x3fdca5fc7e6b3fea              # double 0.447631
	.quad	0x3fec5f45e0b4e11e              # double 0.88663000000000003
	.quad	0x3fe2de84f09528f2              # double 0.58966300000000005
	.quad	0x3fb05058dde7a744              # double 0.063726000000000005
	.quad	0x3fdfc408d8ec95c0              # double 0.49634
	.quad	0x3fc6568a50507a6c              # double 0.174516
	.quad	0x3fe4a0620ab71327              # double 0.64457799999999998
	.quad	0x3fe93777d0f1f57b              # double 0.78802099999999997
	.quad	0x3fcc8398a65492ff              # double 0.22276599999999999
	.quad	0x3feff89613d31b9b              # double 0.99909499999999995
	.quad	0x3fc47ea5f84cad58              # double 0.16011500000000001
	.quad	0x3fd330a915379fa9              # double 0.29984499999999997
	.quad	0x3fdff166e008e9b4              # double 0.49910900000000002
	.quad	0x3fe85640e9d51b50              # double 0.76052900000000001
	.quad	0x3fe4ecf850df15a5              # double 0.65392700000000004
	.quad	0x3fd81aa821f2990f              # double 0.37662699999999999
	.quad	0x3fc72a172abef06b              # double 0.18097199999999999
	.quad	0x3fcb5d249e44fa05              # double 0.21378
	.quad	0x3fe042070b8cfbfc              # double 0.50805999999999996
	.quad	0x3feb356da0168b5d              # double 0.85027200000000003
	.quad	0x3fe5c057082491b0              # double 0.67972900000000003
	.quad	0x3fc4055fbb517a46              # double 0.156414
	.quad	0x3fda90b417ca2121              # double 0.41508200000000001
	.quad	0x3fe8167ec7863bef              # double 0.75274600000000003
	.quad	0x3f880ecfa69be09c              # double 0.011747
	.quad	0x3fdeb05b7cfe5860              # double 0.479514
	.quad	0x3fececdd0d8cb07d              # double 0.903914
	.quad	0x3fd92cb641700cd8              # double 0.39335399999999998
	.quad	0x3fca2b94d9407896              # double 0.204455
	.quad	0x3faeebf65dbfceb8              # double 0.060394000000000003
	.quad	0x3fc8e5eedcc20d56              # double 0.194517
	.quad	0x3fe861d6494d50ec              # double 0.76194300000000003
	.quad	0x3fcc6961c36976bc              # double 0.221966
	.quad	0x3fe9723897204296              # double 0.79519300000000004
	.quad	0x3fefa619da9c9928              # double 0.98902599999999996
	.quad	0x3feb673e681a9b8d              # double 0.85635300000000003
	.quad	0x3fe4d5b24e9c4546              # double 0.65108600000000005
	.quad	0x3fd579d0a67620ef              # double 0.33556000000000002
	.quad	0x3fe43dc8b86b15f9              # double 0.63254200000000005
	.quad	0x3fe142b0ea18372e              # double 0.53939099999999995
	.quad	0x3fd7956c0d6f544c              # double 0.36849500000000002
	.quad	0x3fd2310129cbab65              # double 0.28424100000000002
	.quad	0x3fe743fc43b2dd37              # double 0.72704899999999995
	.quad	0x3fdeb0ccbc05d52c              # double 0.479541
	.quad	0x3fef64bec679cc75              # double 0.98104800000000003
	.quad	0x3fe27a0b5ed8d36b              # double 0.57739799999999997
	.quad	0x3fceea0fd3b29a1c              # double 0.24151800000000001
	.quad	0x3f8eff9f87f023ea              # double 0.015136
	.quad	0x3fc5e85fd04a2fcf              # double 0.171154
	.quad	0x3fdacd8127b2cc71              # double 0.41879300000000003
	.quad	0x3fba0c9d9d3458cd              # double 0.101755
	.quad	0x3fdaefa1e3eaf683              # double 0.42087599999999997
	.quad	0x3fe6b5e0f7fcfc40              # double 0.70970200000000006
	.quad	0x3fe1463f141205bc              # double 0.539825
	.quad	0x3fdc16fc9bc77143              # double 0.43890299999999999
	.quad	0x3fd0021d10b1feeb              # double 0.25012899999999999
	.quad	0x3fa4940bbb1f255f              # double 0.040191999999999999
	.quad	0x3fcdbc98a222d517              # double 0.232318
	.quad	0x3fd2471f79420b3d              # double 0.28559099999999998
	.quad	0x3fd360d0247021d1              # double 0.302784
	.quad	0x3fe38da7f3cf7015              # double 0.61104199999999997
	.quad	0x3fdf7aaef2c73259              # double 0.49186299999999999
	.quad	0x3fe204039abf3387              # double 0.56298999999999999
	.quad	0x3fd43914f483cafb              # double 0.31598399999999999
	.quad	0x3fee802c0a4a05de              # double 0.95314600000000005
	.quad	0x3fd2f8f041461b6d              # double 0.29644399999999999
	.quad	0x3fd91dd1a21ea359              # double 0.39244499999999999
	.quad	0x3fea33bfb58d1527              # double 0.81881700000000002
	.quad	0x3fb8face67d77fae              # double 0.097576999999999997
	.quad	0x3fe6c95bff04577e              # double 0.71208000000000005
	.quad	0x3fd72606fac6045c              # double 0.36169600000000002
	.quad	0x3fd22edfe75bc44c              # double 0.284111
	.quad	0x3fea2dc4c9c90c4e              # double 0.81808700000000001
	.quad	0x3fe56dd052934acb              # double 0.669655
	.quad	0x3fe8f635e74299d9              # double 0.78005500000000005
	.quad	0x3fe3a4851a869403              # double 0.61383299999999996
	.quad	0x3fe89c2a02320968              # double 0.76906300000000005
	.quad	0x3feef672b884406c              # double 0.96758399999999999
	.quad	0x3fb79d3cbc48f10b              # double 0.092243000000000006
	.quad	0x3fe248f96e158751              # double 0.57140800000000003
	.quad	0x3fd0832b990afe61              # double 0.25800600000000001
	.quad	0x3fbfac2df0d41312              # double 0.123721
	.quad	0x3fd488bda9435ac9              # double 0.32084600000000002
	.quad	0x3fd4a7c9de050375              # double 0.322741
	.quad	0x3fe1e5cd4ed2cbea              # double 0.55930199999999997
	.quad	0x3f9fc2224edf6124              # double 0.031014
	.quad	0x3fd4f0d413122b7c              # double 0.32719900000000002
	.quad	0x3fe07a0f9096bb99              # double 0.51490000000000002
	.quad	0x3fe6c4d65e460675              # double 0.71152800000000005
	.quad	0x3fb4f227d028a1e0              # double 0.081820000000000004
	.quad	0x3fdc8427418d690a              # double 0.44556600000000002
	.quad	0x3faa615a8deb0fae              # double 0.051524
	.quad	0x3fe02e7d566cf41f              # double 0.50567499999999999
	.quad	0x3fe66e41919ac797              # double 0.700959
	.quad	0x3fe0c868b9fdbd30              # double 0.52446400000000004
	.quad	0x3fe19f2ba9d1f601              # double 0.55067999999999995
	.quad	0x3fe5fe08aefb2aae              # double 0.68725999999999998
	.quad	0x3fdf22962cfd8f0c              # double 0.48648599999999997
	.quad	0x3fbdf7c6759ab6d0              # double 0.117062
	.quad	0x3fd5dc8754f3775c              # double 0.34158500000000003
	.quad	0x3fe940b34e768598              # double 0.78914799999999996
	.quad	0x3fee5d31337eb28e              # double 0.94887600000000005
	.quad	0x3fe25c810a569b17              # double 0.57379199999999997
	.quad	0x3fdd77f6b1a2a4db              # double 0.460447
	.quad	0x3feeabef06b37868              # double 0.958488
	.quad	0x3fb0c985f06f6944              # double 0.065574999999999994
	.quad	0x3fd4a1b9f98b71b9              # double 0.32237100000000002
	.quad	0x3fc8bb55ac03ff69              # double 0.193217
	.quad	0x3fe506d2ed783dff              # double 0.65708299999999997
	.quad	0x3feadc4eb56fb8f5              # double 0.83939299999999994
	.quad	0x3f98cb4aec8d5c74              # double 0.024212999999999998
	.quad	0x3fb8438088509bfa              # double 0.094780000000000003
	.quad	0x3fe3b836a832b991              # double 0.61623700000000003
	.quad	0x3fce7ef177a7008a              # double 0.23824899999999999
	.quad	0x3fdb82a5614df8b1              # double 0.42984899999999998
	.quad	0x3fcbaf640639d5e5              # double 0.21629000000000001
	.quad	0x3fd195bff04577d9              # double 0.27476499999999998
	.quad	0x3fe58d4dc65c7043              # double 0.67349899999999996
	.quad	0x3fc6ab2e1693c03c              # double 0.17709900000000001
	.quad	0x3f931fcd24e160d9              # double 0.018676000000000002
	.quad	0x3fed1a2a4db163bb              # double 0.90944400000000003
	.quad	0x3fa5e8f6cefed634              # double 0.042792999999999998
	.quad	0x3fc6a9930be0ded3              # double 0.17705000000000001
	.quad	0x3feadba4d6e47dc3              # double 0.83931199999999995
	.quad	0x3feb0f7b9e060fe4              # double 0.84563999999999994
	.quad	0x3feb36e0d23d4f16              # double 0.85044900000000001
	.quad	0x3fed98aa8650e779              # double 0.92488599999999999
	.quad	0x3fd858cd20afa2f0              # double 0.38041999999999998
	.quad	0x3fa1101b003686a5              # double 0.033326000000000001
	.quad	0x3fe09ab4b72c5198              # double 0.51888500000000004
	.quad	0x3fc7b29a1b9f98b7              # double 0.185138
	.quad	0x3fe25e2cdc011d36              # double 0.57399599999999995
	.quad	0x3fbbe86833c6002a              # double 0.109015
	.quad	0x3fe07f3493858362              # double 0.51552799999999999
	.quad	0x3fc1a9435ac8a372              # double 0.13797799999999999
	.quad	0x3fec379314445aa3              # double 0.88178400000000001
	.quad	0x3fe1b6bb1290257d              # double 0.55355600000000005
	.quad	0x3fec7a0945f9df55              # double 0.88989700000000005
	.quad	0x3feb30b178b37004              # double 0.84969399999999994
	.quad	0x3fc4f312b1b36bd3              # double 0.16366800000000001
	.quad	0x3feef546d3f9e7b8              # double 0.96744099999999999
	.quad	0x3fde8d759ee88df3              # double 0.47738399999999998
	.quad	0x3fe00856e696a26e              # double 0.50101799999999996
	.quad	0x3fa84e3ffef39086              # double 0.047472
	.quad	0x3fd5e542e557de0d              # double 0.34211799999999998
	.quad	0x3fcaacc92146a1a5              # double 0.208398
	.quad	0x3fafbdcf0307f23d              # double 0.061995000000000001
	.quad	0x3fd44e65bea0ba1f              # double 0.31728499999999998
	.quad	0x3fe02adc4c9c90c5              # double 0.50523200000000001
	.quad	0x3fddf0995aaf78ff              # double 0.46781
	.quad	0x3fe491afc04c8bca              # double 0.64278400000000002
	.quad	0x3fc0107314ca9260              # double 0.125502
	.quad	0x3fd67af20ea5b531              # double 0.35125400000000001
	.quad	0x3fc1e542e557de0d              # double 0.13980899999999999
	.quad	0x3fd5b6fe2e6ea854              # double 0.33929399999999998
	.quad	0x3fc69802c0a4a05e              # double 0.176514
	.quad	0x3fdcbc27631b584b              # double 0.44898399999999999
	.quad	0x3fef2be48a58b3f6              # double 0.97410799999999997
	.quad	0x3fd0753e707e175d              # double 0.257156
	.quad	0x3fd2d972cd7cf5f5              # double 0.29452200000000001
	.quad	0x3fe33022dd7a99fa              # double 0.59962599999999999
	.quad	0x3f6a261bf37b8d3f              # double 0.003192
	.quad	0x3fdff66e86c6583f              # double 0.49941600000000003
	.quad	0x3fe4ce9e5e247885              # double 0.65022199999999997
	.quad	0x3fedc011d3671ac1              # double 0.92969599999999997
	.quad	0x3fde8a32f4491299              # double 0.47718500000000003
	.quad	0x3fea9fd9ba1b1961              # double 0.832013
	.quad	0x3fc410e8858ff759              # double 0.15676599999999999
	.quad	0x3fddf88b9778572a              # double 0.46829500000000002
	.quad	0x3fdb0ccbc05d52c1              # double 0.42265599999999998
	.quad	0x3fe88be2f7b17ce5              # double 0.76707599999999998
	.quad	0x3fe250e779207d4e              # double 0.572376
	.quad	0x3fc3b42cc2d6a9c5              # double 0.15393599999999999
	.quad	0x3fb0bda9435ac8a3              # double 0.065393999999999994
	.quad	0x3fc87ec7863beec4              # double 0.19136900000000001
	.quad	0x3fc9b5c7cd898b2f              # double 0.20086000000000001
	.quad	0x3fe012e83a109d06              # double 0.50230799999999998
	.quad	0x3fe913ccd0fe8ab5              # double 0.783667
	.quad	0x3fc7362e90364389              # double 0.181341
	.quad	0x3fd859ddc1e7967d              # double 0.38048500000000002
	.quad	0x3fd7139c94f69caa              # double 0.360572
	.quad	0x3fd838e6d15ad107              # double 0.378473
	.quad	0x3fedc4c165907d91              # double 0.93026799999999998
	.quad	0x3fd2631f8a0902de              # double 0.2873
	.quad	0x3feab02b40f66a55              # double 0.834005
	.quad	0x3fe4674080f98fa3              # double 0.63760399999999995
	.quad	0x3fbc89c1b54195cd              # double 0.11147700000000001
	.quad	0x3fe4937b07075b3e              # double 0.64300299999999999
	.quad	0x3fd70e38a7e73a36              # double 0.36024299999999998
	.quad	0x3fec5b877ab32485              # double 0.88617299999999999
	.quad	0x3fe33f83382e44b7              # double 0.60150300000000001
	.quad	0x3fe723465625a683              # double 0.72305600000000003
	.quad	0x3fe89b21c475e636              # double 0.76893699999999998
	.quad	0x3fd74e93e1c9b414              # double 0.36417100000000002
	.quad	0x3fd5378ee2867275              # double 0.33151599999999998
	.quad	0x3fe28431bde82d7b              # double 0.57863699999999996
	.quad	0x3fd492e1ef73c0c2              # double 0.321465
	.quad	0x3fd82e59af9ebe9d              # double 0.37782900000000003
	.quad	0x3feff6c8b4395810              # double 0.99887499999999996
	.quad	0x3fd7559b3d07c84b              # double 0.36459999999999998
	.quad	0x3fba47778dd616f8              # double 0.10265299999999999
	.quad	0x3fe01991361dc93f              # double 0.50312100000000004
	.quad	0x3fd4209aaa3ad18d              # double 0.31448999999999999
	.quad	0x3fe019bf5946c333              # double 0.50314300000000001
	.quad	0x3fe7dcebfec13b9f              # double 0.74571799999999999
	.quad	0x3fe6b4dcebfec13c              # double 0.70957800000000004
	.quad	0x3fe76e9ff0cbaf96              # double 0.73225399999999996
	.quad	0x3fe0a797891e2153              # double 0.52045799999999998
	.quad	0x3f9889c1b54195cd              # double 0.023963000000000002
	.quad	0x3f9138fffbce4218              # double 0.016819000000000001
	.quad	0x3fef02ba5a038195              # double 0.96908300000000002
	.quad	0x3fc4077036c9c0a9              # double 0.156477
	.quad	0x3fda62d40aaeafab              # double 0.41228199999999998
	.quad	0x3fd027913e81450f              # double 0.252415
	.quad	0x3fd1290abb44e50c              # double 0.26812999999999998
	.quad	0x3febd692b3cc4ac7              # double 0.86994300000000002
	.quad	0x3fc4adf71eafee70              # double 0.16155900000000001
	.quad	0x3fc820685553ef6b              # double 0.18848899999999999
	.quad	0x3fe7fddca4b124d1              # double 0.74973900000000004
	.quad	0x3fe63ed0f627392a              # double 0.69516800000000001
	.quad	0x3fbeab25b317efe1              # double 0.119799
	.quad	0x3fe17e60c38f3669              # double 0.54667699999999997
	.quad	0x3fd0ffa3b9ae0c17              # double 0.26560299999999998
	.quad	0x3fc8eed02cd39da1              # double 0.19478799999999999
	.quad	0x3fb39830e3cd9a52              # double 0.076540999999999998
	.quad	0x3fe1aeff5c6c11a1              # double 0.55261199999999999
	.quad	0x3fc3fddebd9018e7              # double 0.15618499999999999
	.quad	0x3fec5f02c4d65e46              # double 0.886598
	.quad	0x3fc199b2c40d0aaa              # double 0.13750299999999999
	.quad	0x3fe56603d577963a              # double 0.66870300000000005
	.quad	0x3fe918a65492ff4c              # double 0.78425900000000003
	.quad	0x3fc5526d8b1dd5d4              # double 0.166578
	.quad	0x3fd0ce5710880d80              # double 0.26259399999999999
	.quad	0x3fe293a4f8726d05              # double 0.58052300000000001
	.quad	0x3fe6e05ccc89b0ee              # double 0.71488799999999997
	.quad	0x3fd07296f6512a95              # double 0.256994
	.quad	0x3fee07b139c94f6a              # double 0.93843900000000002
	.quad	0x3fbca32f44912989              # double 0.11186500000000001
	.quad	0x3fe2605ee568a505              # double 0.574264
	.quad	0x3fdf2bb6672fba02              # double 0.487043
	.quad	0x3fe3b0d51f81a587              # double 0.61533599999999999
	.quad	0x3fb9d22856605ee5              # double 0.10086299999999999
	.quad	0x3fe5763c31df761d              # double 0.67068300000000003
	.quad	0x3faab68cef672b88              # double 0.052173999999999998
	.quad	0x3fefc2c1b10fd7e4              # double 0.99252399999999996
	.quad	0x3f9eb95e5aff2a17              # double 0.030003999999999999
	.quad	0x3feec3cc07aaef2c              # double 0.96140099999999995
	.quad	0x3fec463cfb3311a5              # double 0.88357399999999997
	.quad	0x3fe693b3a68b19a4              # double 0.70552999999999999
	.quad	0x3fea7e56473471f8              # double 0.82792200000000005
	.quad	0x3fe6dd11be6e6538              # double 0.71448599999999995
	.quad	0x3fe1ae4d1a650614              # double 0.55252699999999999
	.quad	0x3fe063f141205bc0              # double 0.51219999999999999
	.quad	0x3fc745846e8f29d4              # double 0.181809
	.quad	0x3fc8ff9f87f023ea              # double 0.195301
	.quad	0x3fe2111f0c34c1a9              # double 0.56459000000000004
	.quad	0x3fc77edc7ef177a7              # double 0.183559
	.quad	0x3fbfcb4f1e4b44a2              # double 0.124196
	.quad	0x3fe8f8e3ac0c62e5              # double 0.78038200000000002
	.quad	0x3fedab81f969e3c9              # double 0.92718599999999995
	.quad	0x3fe5d27c39368273              # double 0.68194399999999999
	.quad	0x3fa61869835158b8              # double 0.043154999999999999
	.quad	0x3fe6c929aa1d755c              # double 0.71205600000000002
	.quad	0x3fe1f5b1c8648840              # double 0.56124200000000002
	.quad	0x3fe34d013a92a305              # double 0.60314999999999996
	.quad	0x3f998288051c9f73              # double 0.024912
	.quad	0x3feb8cae642bf983              # double 0.86092299999999999
	.quad	0x3fb3f4ba51a005c4              # double 0.077952999999999995
	.quad	0x3f88327674d16335              # double 0.011815000000000001
	.quad	0x3fe1551f81a5870e              # double 0.54164100000000004
	.quad	0x3fe837867f0aa21a              # double 0.75677799999999995
	.quad	0x3fe336f5caf2d7f9              # double 0.60045899999999996
	.quad	0x3fe839abf3387161              # double 0.75704000000000005
	.quad	0x3f9d9988d2a1f8e4              # double 0.028906000000000001
	.quad	0x3fe19733226c3b92              # double 0.54970699999999995
	.quad	0x3fe26b723ee1bd1f              # double 0.57561600000000002
	.quad	0x3fe698548a9bcfd5              # double 0.70609500000000003
	.quad	0x3fdd58b827fa1a0d              # double 0.45854
	.quad	0x3fc16dc1a47a9e2c              # double 0.13616200000000001
	.quad	0x3fe4c358afc47e4a              # double 0.64884600000000003
	.quad	0x3fcc7f4dbdf8f473              # double 0.222635
	.quad	0x3fe834c7f3493858              # double 0.75644299999999998
	.quad	0x3fef6a8da7f3cf70              # double 0.98175699999999999
	.quad	0x3fb3cb2d905c0336              # double 0.077318999999999998
	.quad	0x3fe7c31df761cbcd              # double 0.74256800000000001
	.quad	0x3fdd2a6b0d9513f9              # double 0.45571400000000001
	.quad	0x3fa99aa60913a4f8              # double 0.050007999999999997
	.quad	0x3fc5ff79c842fa51              # double 0.17185900000000001
	.quad	0x3fdfd29563a9f384              # double 0.497228
	.quad	0x3fec3152f3c2dadc              # double 0.88102100000000005
	.quad	0x3fd5aacd9e83e426              # double 0.33855000000000002
	.quad	0x3f723d4f15e7c8d2              # double 0.0044530000000000004
	.quad	0x3fe3a24031487768              # double 0.61355599999999999
	.quad	0x3fe7a29e90795f67              # double 0.73860099999999995
	.quad	0x3fc48b5cbff47736              # double 0.16050300000000001
	.quad	0x3fd4239a38fbca10              # double 0.31467299999999998
	.quad	0x3fc6b6d86ec17ebb              # double 0.177455
	.quad	0x3fd9d4738a3b57c5              # double 0.40359200000000001
	.quad	0x3fc307c84b5dcc64              # double 0.148675
	.quad	0x3fefa4b33daf8df8              # double 0.98885500000000003
	.quad	0x3fccbffcdab191de              # double 0.224609
	.quad	0x3fd0cd1c7de5082d              # double 0.262519
	.quad	0x3fbd38fffbce4218              # double 0.114151
	.quad	0x3fd472474538ef35              # double 0.31947500000000001
	.quad	0x3fba0d23d4f15e7d              # double 0.10176300000000001
	.quad	0x3fd3c7820a30db6a              # double 0.30905199999999999
	.quad	0x3fdb35b4edb2f662              # double 0.425153
	.quad	0x3f6070fbeb9e492c              # double 0.0020070000000000001
	.quad	0x3fe47eeb2d0a2446              # double 0.64049299999999998
	.quad	0x3fedb94face67d78              # double 0.928871
	.quad	0x3fe565668c261390              # double 0.668628
	.quad	0x3fd3473471f79421              # double 0.30122100000000002
	.quad	0x3fc0a80064a9cdc4              # double 0.13012699999999999
	.quad	0x3faefd651b0ccbc0              # double 0.060526999999999997
	.quad	0x3fe46683c297bfa5              # double 0.63751400000000003
	.quad	0x3fc9ee2435696e59              # double 0.20258000000000001
	.quad	0x3fca0b780346dc5d              # double 0.20347499999999999
	.quad	0x3fedbcc07aaef2c7              # double 0.92929099999999998
	.quad	0x3fc6b6e935b91f71              # double 0.177457
	.quad	0x3fd5be0ded288ce7              # double 0.339725
	.quad	0x3fe078dd616f86a1              # double 0.51475400000000004
	.quad	0x3feecb33daf8df7a              # double 0.96230499999999997
	.quad	0x3fbaecbfb15b573f              # double 0.105175
	.quad	0x3fe5c243dccea290              # double 0.67996400000000001
	.quad	0x3fe84d1a65061416              # double 0.75941199999999998
	.quad	0x3fe6f39f340d4dc6              # double 0.71723899999999996
	.quad	0x3feda0d5629d840a              # double 0.92588300000000001
	.quad	0x3fc1634549b62c77              # double 0.13584199999999999
	.quad	0x3fb9d96e9bbf0dc7              # double 0.10097399999999999
	.quad	0x3faf5b8130164841              # double 0.061245000000000001
	.quad	0x3feb54e8fb00bcbe              # double 0.85411499999999996
	.quad	0x3feaa6defc7a3982              # double 0.83287
	.quad	0x3fc12495e17e34b9              # double 0.13392899999999999
	.quad	0x3fe56ca25529fe00              # double 0.66951099999999997
	.quad	0x3fc3ce0fc2eba27b              # double 0.154726
	.quad	0x3f87fbefd00713f0              # double 0.011710999999999999
	.quad	0x3fe308637bd05af7              # double 0.59477400000000002
	.quad	0x3fe1ffc5479d4d83              # double 0.56247199999999997
	.quad	0x3fee256798958d9b              # double 0.94206599999999996
	.quad	0x3fc359d55e6bc622              # double 0.15117900000000001
	.quad	0x3fe508765ba6efc3              # double 0.65728299999999995
	.quad	0x3fea68cef672b884              # double 0.82529399999999997
	.quad	0x3fe85ac03ff69015              # double 0.76107800000000003
	.quad	0x3fd447f13059641f              # double 0.31689099999999998
	.quad	0x3fe1d15054ac29bf              # double 0.55680099999999999
	.quad	0x3f836694898f605b              # double 0.0094730000000000005
	.quad	0x3fdd5f84cad57bc8              # double 0.458955
	.quad	0x3fdb7314ca925fe9              # double 0.42889899999999997
	.quad	0x3f8a3e39f77292c5              # double 0.012814000000000001
	.quad	0x3fea78ad25679896              # double 0.82723100000000005
	.quad	0x3fe831af3a14cec4              # double 0.75606499999999998
	.quad	0x3fd10589acbc8c0d              # double 0.265963
	.quad	0x3fdf38ac18f81e8a              # double 0.48783399999999999
	.quad	0x3fd06145953586cb              # double 0.25593700000000003
	.quad	0x3fedd98bf7f06706              # double 0.93280600000000002
	.quad	0x3feecb09e98dcdb3              # double 0.96228499999999994
	.quad	0x3fedb5aa715831f0              # double 0.92842599999999997
	.quad	0x3fce43dccea28fe2              # double 0.23644599999999999
	.quad	0x3fe2b226c3b927d4              # double 0.58424699999999996
	.quad	0x3fec1392189bd838              # double 0.87738899999999997
	.quad	0x3feb11212513b5bf              # double 0.84584099999999995
	.quad	0x3feaceb9a176ddad              # double 0.83773500000000001
	.quad	0x3fe6bc42a66dbd73              # double 0.71048100000000003
	.quad	0x3fb3a8f7db6e5040              # double 0.076797000000000004
	.quad	0x3fb3ef284167a95d              # double 0.077868000000000007
	.quad	0x3fe74d855970b49e              # double 0.728213
	.quad	0x3fe9b630a91537a0              # double 0.80349000000000003
	.quad	0x3fc4b1ab0856e697              # double 0.16167200000000001
	.quad	0x3feed1159c497742              # double 0.96302299999999996
	.quad	0x3fedccd31769a911              # double 0.931253
	.quad	0x3fe7da8bd230b9dc              # double 0.74542799999999998
	.quad	0x3fe9072f33ca31e8              # double 0.78212700000000002
	.quad	0x3fe080e6afcce1c6              # double 0.51573500000000005
	.quad	0x3fdc6049ecb31c22              # double 0.44337700000000002
	.quad	0x3fc9e0d66f0cfe15              # double 0.20217399999999999
	.quad	0x3feaa849cb252ce0              # double 0.83304299999999997
	.quad	0x3fd31a36e2eb1c43              # double 0.29847499999999999
	.quad	0x3fef69e5e2478855              # double 0.98167700000000002
	.quad	0x3fbf9463cfb3311a              # double 0.123358
	.quad	0x3fc6f7fcfc3f811f              # double 0.17944299999999999
	.quad	0x3fe91635610adcd3              # double 0.78396100000000002
	.quad	0x3fdb4185058dde7a              # double 0.42587399999999997
	.quad	0x3fd1a697aeddce7d              # double 0.27579300000000001
	.quad	0x3fe6803ab862b27d              # double 0.70315300000000003
	.quad	0x3fd4eb9e492bc2fc              # double 0.32688099999999998
	.quad	0x3fd60a88effe2a3d              # double 0.344393
	.quad	0x3fe2dc6e2a80064b              # double 0.58940800000000004
	.quad	0x3f77eed45e9185cf              # double 0.0058430000000000001
	.quad	0x3fb7ce63a5c1c609              # double 0.092993000000000006
	.quad	0x3fe94588a04d1202              # double 0.78973800000000005
	.quad	0x3f773647baa9b49a              # double 0.0056670000000000002
	.quad	0x3fed6f60e0eb67c3              # double 0.91984600000000005
	.quad	0x3feb65fb71fbc5df              # double 0.85619900000000004
	.quad	0x3fdc6f0068db8bac              # double 0.44427499999999998
	.quad	0x3fc505c896dd26b7              # double 0.164239
	.quad	0x3fe62a369fcf3dc0              # double 0.69265299999999996
	.quad	0x3fc9b677f6b1a2a5              # double 0.200881
	.quad	0x3fef28bf3bea91da              # double 0.97372400000000003
	.quad	0x3fd7eabffcdab192              # double 0.37370300000000001
	.quad	0x3fcb64f97edc7ef1              # double 0.21401899999999999
	.quad	0x3fe97a6bd6e8af81              # double 0.79619399999999996
	.quad	0x3fe597a02fb5d031              # double 0.674759
	.quad	0x3fc2d1287c200c0f              # double 0.147008
	.quad	0x3f689bd8383ad9f1              # double 0.0030040000000000002
	.quad	0x3fe9f46cb966be7b              # double 0.811087
	.quad	0x3fdf5247cb70ac3b              # double 0.48939700000000003
	.quad	0x3fee3ec2480e8c8b              # double 0.94516100000000003
	.quad	0x3fdd08e581cf7879              # double 0.45366800000000002
	.quad	0x3f529888f861a60d              # double 0.0011349999999999999
	.quad	0x3fd0898b2e9ccb7d              # double 0.25839499999999999
	.quad	0x3fb1e060fe47991c              # double 0.069830000000000003
	.quad	0x3fe5fc6da4484945              # double 0.68706400000000001
	.quad	0x3fded5f138bcdff0              # double 0.48180800000000001
	.quad	0x3fbbd816aceaaf36              # double 0.108766
	.quad	0x3fee6392e1ef73c1              # double 0.94965500000000003
	.quad	0x3fc1228dc981beb2              # double 0.13386700000000001
	.quad	0x3feb90752da98677              # double 0.86138400000000004
	.quad	0x3fd0255b035bd513              # double 0.25228
	.quad	0x3fe5e8405b39e27a              # double 0.68460100000000002
	.quad	0x3fe9b4070329802c              # double 0.80322599999999999
	.quad	0x3fcbb139c94f69cb              # double 0.21634600000000001
	.quad	0x3fb78f9b13165d3a              # double 0.092035000000000005
	.quad	0x3fe3bcd573647bab              # double 0.61680100000000004
	.quad	0x3fe82a737110e454              # double 0.75518200000000001
	.quad	0x3fe32eafab53d641              # double 0.59944900000000001
	.quad	0x3fe97809917939a8              # double 0.79590300000000003
	.quad	0x3f7bd8383ad9f0a2              # double 0.0067980000000000002
	.quad	0x3fddbccaf709b739              # double 0.46464800000000001
	.quad	0x3fe419bd4067cf1c              # double 0.62814199999999998
	.quad	0x3fef2b4959e62563              # double 0.97403399999999995
	.quad	0x3fdcabc947064ecf              # double 0.44798500000000002
	.quad	0x3fe786cca2db61bb              # double 0.735205
	.quad	0x3fc412513b5bf6a1              # double 0.156809
	.quad	0x3fe22f0bf1a5ca2a              # double 0.56824300000000005
	.quad	0x3fd82b1b36bd2b6f              # double 0.37763099999999999
	.quad	0x3fd893964a59c066              # double 0.38400800000000002
	.quad	0x3fef547bedb72820              # double 0.97906300000000001
	.quad	0x3fd8e642bf9830e4              # double 0.38905400000000001
	.quad	0x3fede1e92923e5b8              # double 0.93382699999999996
	.quad	0x3fe05f2452c59fb2              # double 0.51161400000000001
	.quad	0x3fe5e11dbca9691a              # double 0.68372999999999995
	.quad	0x3fe8bad9f0a1be2b              # double 0.77280899999999997
	.quad	0x3fd14662bae03b3f              # double 0.26992100000000002
	.quad	0x3febe4ba94bbe447              # double 0.87167099999999997
	.quad	0x3fefb2c625e99e95              # double 0.99057300000000003
	.quad	0x3f804577d955714c              # double 0.0079450000000000007
	.quad	0x3fef5ba4d6e47dc3              # double 0.97993699999999994
	.quad	0x3fc73860999dcb58              # double 0.18140800000000001
	.quad	0x3fdaaf3a14cec41e              # double 0.41694500000000001
	.quad	0x3fe97c5ef62f9ca6              # double 0.79643200000000003
	.quad	0x3fec8d823422467c              # double 0.89227400000000001
	.quad	0x3f7310129cbab64a              # double 0.0046540000000000002
	.quad	0x3fa8c7192ea52ef9              # double 0.048394
	.quad	0x3fe514c660a20147              # double 0.65878599999999998
	.quad	0x3fc52bdc26dce39b              # double 0.16540099999999999
	.quad	0x3fc21682f944241c              # double 0.14131199999999999
	.quad	0x3fe183a322af5771              # double 0.547319
	.quad	0x3fed7ac3eb7cbb3d              # double 0.92123600000000005
	.quad	0x3fe4e6cd29131ec1              # double 0.65317400000000003
	.quad	0x3feaa25b749adc90              # double 0.83231900000000003
	.quad	0x3feb71cda2b5a20e              # double 0.85764200000000002
	.quad	0x3fc5f8a8f3a9b068              # double 0.171651
	.quad	0x3fbcfdc1615ebfa9              # double 0.113247
	.quad	0x3fe509a671ef30a5              # double 0.65742800000000001
	.quad	0x3fd4b6c3760bf5d8              # double 0.32365500000000003
	.quad	0x3fe0e5d9e40c8473              # double 0.52805800000000003
	.quad	0x3fe2db4677b395c4              # double 0.58926699999999999
	.quad	0x3fe873343fa2ad3f              # double 0.76406300000000005
	.quad	0x3fe04fd6d7e889c2              # double 0.50974600000000003
	.quad	0x3fd8e39713ad5bee              # double 0.38889099999999999
	.quad	0x3fea3e20ccff21b4              # double 0.82008400000000003
	.quad	0x3fe4c9fd7a13c255              # double 0.64965700000000004
	.quad	0x3fecd9e83e425aee              # double 0.90159999999999996
	.quad	0x3fd438ac18f81e8a              # double 0.31595899999999999
	.quad	0x3feffe7e1fc08fa8              # double 0.99981600000000003
	.quad	0x3fe7cf0307f23cc9              # double 0.74402000000000001
	.quad	0x3f8532e7b3d8e001              # double 0.010351000000000001
	.quad	0x3fe423e39f77292c              # double 0.62938099999999997
	.quad	0x3fed5e6bc621b7e1              # double 0.91777600000000004
	.quad	0x3fe17e718a86d71f              # double 0.54668499999999998
	.quad	0x3fdfdcf893faf428              # double 0.49786200000000003
	.quad	0x3fc9ba7fc32ebe59              # double 0.20100399999999999
	.quad	0x3fd3c1ebc83a96d5              # double 0.30871100000000001
	.quad	0x3fd376cce5f7403e              # double 0.30412600000000001
	.quad	0x3fcfb40b34e7685a              # double 0.24768200000000001
	.quad	0x3fe64167a95c853c              # double 0.69548399999999999
	.quad	0x3fe25c22ab25b318              # double 0.57374700000000001
	.quad	0x3fa5a3a08398a655              # double 0.042264000000000003
	.quad	0x3fd0b10ba6266fd6              # double 0.26080599999999998
	.quad	0x3fe12e21101b0037              # double 0.53688100000000005
	.quad	0x3fe3d55a3a08398a              # double 0.61979399999999996
	.quad	0x3fc5925bb7b6bb13              # double 0.16852900000000001
	.quad	0x3fd9275ee99a62ed              # double 0.39302799999999999
	.quad	0x3fea0123810e8859              # double 0.812639
	.quad	0x3fe892e83a109d06              # double 0.76793299999999998
	.quad	0x3fac0e7bc3c5bd0e              # double 0.054797999999999999
	.quad	0x3f878bbd3804534c              # double 0.011497
	.quad	0x3fe3877036c9c0a9              # double 0.61028300000000002
	.quad	0x3fe3a2706d506573              # double 0.61357899999999999
	.quad	0x3fefc677b395c422              # double 0.992977
	.quad	0x3fe519c17225b74a              # double 0.65939400000000004
	.quad	0x3feff243137b0707              # double 0.99832299999999996
	.quad	0x3f7aa821f2990f30              # double 0.0065079999999999999
	.quad	0x3fecd92fb19e731d              # double 0.90151199999999998
	.quad	0x3feb7546d3f9e7b8              # double 0.858066
	.quad	0x3fc7a09cc319c5a4              # double 0.184589
	.quad	0x3fee8ced4e4c942d              # double 0.95470299999999997
	.quad	0x3fbbf20a73f748a1              # double 0.109162
	.quad	0x3fdecf1800a7c5ac              # double 0.48138999999999998
	.quad	0x3fc12b5e529bae47              # double 0.13413600000000001
	.quad	0x3febd31b9b66f933              # double 0.86951999999999996
	.quad	0x3fe89e83e425aee6              # double 0.76934999999999998
	.quad	0x3febd20afa2f05a7              # double 0.86939
	.quad	0x3fc88f6cefed6345              # double 0.19187699999999999
	.quad	0x3fcc7b2cc70867ae              # double 0.22250900000000001
	.quad	0x3fead798d8a979e1              # double 0.83881799999999995
	.quad	0x3fe8f5cd0bb6ed67              # double 0.78000499999999995
	.quad	0x3fd0183f91e646f1              # double 0.25147999999999998
	.quad	0x3fcb6e696a26e547              # double 0.214307
	.quad	0x3fdf276fb09203a3              # double 0.48678199999999999
	.quad	0x3fef8d0247021d11              # double 0.98596300000000003
	.quad	0x3fe16876e1deacc9              # double 0.54400199999999999
	.quad	0x3fbafd651b0ccbc0              # double 0.10542899999999999
	.quad	0x3f9beec39799e519              # double 0.027278
	.quad	0x3fb4a137f38c5437              # double 0.080585000000000004
	.quad	0x3fc8dec1c1d6cf85              # double 0.194298
	.quad	0x3fd188f42fe82518              # double 0.27398400000000001
	.quad	0x3fd7038e29f9ce8e              # double 0.35959200000000002
	.quad	0x3fe9cde19fc2a887              # double 0.80638200000000004
	.quad	0x3fd806ab14ec204f              # double 0.37540699999999999
	.quad	0x3fe13c89f40a2878              # double 0.53864000000000001
	.quad	0x3feed5bccaf709b7              # double 0.96359099999999997
	.quad	0x3fe48e086bdf4c2b              # double 0.64233799999999996
	.quad	0x3fdfb8cfbfc6540d              # double 0.49565500000000001
	.quad	0x3fdd384ba0e84274              # double 0.45656099999999999
	.quad	0x3fe8ffda4052d667              # double 0.78123200000000004
	.quad	0x3fd4d15ad106ee31              # double 0.32527800000000001
	.quad	0x3fc3a2b5a20ddc62              # double 0.15340300000000001
	.quad	0x3fec9b280f12c27a              # double 0.89393999999999996
	.quad	0x3fe481b43526527a              # double 0.64083299999999999
	.quad	0x3fda2d666a98244f              # double 0.40902100000000002
	.quad	0x3fd927913e81450f              # double 0.39304
	.quad	0x3fcdece5710880d8              # double 0.233792
	.quad	0x3fcb4c33b5393251              # double 0.21326300000000001
	.quad	0x3fee7b7c7820a30e              # double 0.95257400000000003
	.quad	0x3fe3b99f5dfeb8d8              # double 0.61640899999999998
	.quad	0x3fd93fc43b2dd378              # double 0.39451700000000001
	.quad	0x3fd4ee78183f91e6              # double 0.32705499999999998
	.quad	0x3fde9717df19d66b              # double 0.47797200000000001
	.quad	0x3fe5a39c51dabe27              # double 0.67622199999999999
	.quad	0x3fa9c4da9003eea2              # double 0.05033
	.quad	0x3feeac3c9eecbfb1              # double 0.95852499999999996
	.quad	0x3fc255c0fcb4f1e5              # double 0.14324200000000001
	.quad	0x3fe4b4c3c18b502b              # double 0.64706600000000003
	.quad	0x3fc313165d3996fb              # double 0.14902000000000001
	.quad	0x3fef7f3493858362              # double 0.98427799999999999
	.quad	0x3fedcd3e0bd44999              # double 0.93130400000000002
	.quad	0x3fd996a26e547171              # double 0.39981899999999998
	.quad	0x3fec91eeaa6d2674              # double 0.89281399999999999
	.quad	0x3fe97038e29f9ce9              # double 0.79494900000000002
	.quad	0x3fd067839cd8127b              # double 0.25631799999999999
	.quad	0x3feea22706d50657              # double 0.95729399999999998
	.quad	0x3f80f062d40aaeb0              # double 0.0082710000000000006
	.quad	0x3fed04a2fcefaa47              # double 0.90681599999999996
	.quad	0x3fdd11a975afaf86              # double 0.45420300000000002
	.quad	0x3fe321dda059a73b              # double 0.59788399999999997
	.quad	0x3fe7e6ab9b23dd55              # double 0.74690800000000002
	.quad	0x3feb263305100a39              # double 0.84841299999999997
	.quad	0x3fdcf8b588e368f1              # double 0.45268000000000003
	.quad	0x3fddb2e9ccb7d417              # double 0.46404499999999999
	.quad	0x3fa7e586013660e5              # double 0.046672999999999999
	.quad	0x3fe5567125dd095b              # double 0.66680200000000001
	.quad	0x3fd4a74c09c3ce21              # double 0.32271100000000003
	.quad	0x3fec0cf398e97072              # double 0.87658100000000005
	.quad	0x3fe4534df04ddb55              # double 0.63516899999999998
	.quad	0x3fe3c7fdc5931ca8              # double 0.61816300000000002
	.quad	0x3fd0e770bd017daf              # double 0.26412600000000003
	.quad	0x3f9f4a98aa8650e7              # double 0.030557999999999998
	.quad	0x3fd68a7610279570              # double 0.35220099999999999
	.quad	0x3fcc43914f483cb0              # double 0.22081200000000001
	.quad	0x3fe4a3854046412d              # double 0.64496100000000001
	.quad	0x3fdb3e9ea1405708              # double 0.42569699999999999
	.quad	0x3fb640fa9c12f09e              # double 0.086929000000000006
	.quad	0x3fe85e95b78cc9a7              # double 0.76154599999999995
	.quad	0x3fe4c0e9d51b4fe8              # double 0.64854900000000004
	.quad	0x3fd55c5b4aa9717e              # double 0.333762
	.quad	0x3fcfcdcca70d1fa3              # double 0.24846799999999999
	.quad	0x3fdf8fa376922d95              # double 0.49314200000000002
	.quad	0x3fc3b7cfe5860136              # double 0.15404699999999999
	.quad	0x3fe0dc5d63886595              # double 0.52690000000000003
	.quad	0x3fd2c297bfa4c61e              # double 0.29312700000000003
	.quad	0x3fe46e86c6583e85              # double 0.63849199999999995
	.quad	0x3fddaf965b20b806              # double 0.46384199999999998
	.quad	0x3fe96b7457c0b136              # double 0.79436700000000005
	.quad	0x3fd5f112fd32c626              # double 0.342839
	.quad	0x3fe4684ad794a6ec              # double 0.63773100000000005
	.quad	0x3fbbbe0157eed45f              # double 0.10836800000000001
	.quad	0x3fd83dd97f62b6ae              # double 0.37877499999999997
	.quad	0x3fb50f40e5a35d68              # double 0.082264000000000004
	.quad	0x3febe4ef0281ba80              # double 0.87169600000000003
	.quad	0x3fede9e1b089a027              # double 0.93479999999999996
	.quad	0x3fd5baba7b9170d6              # double 0.33952199999999999
	.quad	0x3fe28d5c74751ce3              # double 0.57975600000000005
	.quad	0x3fcf1a975afaf859              # double 0.24299899999999999
	.quad	0x3fd8839cd8127b2d              # double 0.38303300000000001
	.quad	0x3fc8209aaa3ad18d              # double 0.188495
	.quad	0x3fa7b5286b59146e              # double 0.046303999999999998
	.quad	0x3fdf10b630a91538              # double 0.48539500000000002
	.quad	0x3fd17b9170d62bf1              # double 0.27316699999999999
	.quad	0x3fdb9ecb31c219eb              # double 0.43156699999999998
	.quad	0x3fe28af5fd47bedb              # double 0.57946299999999995
	.quad	0x3fd5ee1bd1ed9dfe              # double 0.34265800000000002
	.quad	0x3fec00ae10492360              # double 0.87508300000000005
	.quad	0x3febf023e9ea1405              # double 0.87306399999999995
	.quad	0x3fe1f87ce95faa8b              # double 0.56158300000000005
	.quad	0x3fdca6ce358298cc              # double 0.447681
	.quad	0x3fadd462c343b70f              # double 0.058261
	.quad	0x3fdbcf7caa7589f0              # double 0.43453900000000001
	.quad	0x3fd067dbb16c1e36              # double 0.25633899999999998
	.quad	0x3fd0b9d7fd82773e              # double 0.26134299999999999
	.quad	0x3fde5714b9cb6849              # double 0.47406500000000001
	.quad	0x3f789374bc6a7efa              # double 0.0060000000000000001
	.quad	0x3fe70752da98676a              # double 0.71964399999999995
	.quad	0x3fdd5c5f7c6759ab              # double 0.45876299999999998
	.quad	0x3fd747a17f4128bf              # double 0.36374699999999999
	.quad	0x3fcb49491f2dc2b1              # double 0.213174
	.quad	0x3fd9ba8c586876e2              # double 0.40201100000000001
	.quad	0x3feb9804d9839475              # double 0.86230700000000005
	.quad	0x3f926c7eae5bc87e              # double 0.017992000000000001
	.quad	0x3fd6009f623076c0              # double 0.34378799999999998
	.quad	0x3fec09acbc8c0ce9              # double 0.87618099999999999
	.quad	0x3fe06cb5350092cd              # double 0.51327
	.quad	0x3fe2d0c804102ff9              # double 0.58798600000000001
	.quad	0x3fc77f7be121ee67              # double 0.18357799999999999
	.quad	0x3fe16a5f84cad57c              # double 0.54423500000000002
	.quad	0x3fe6b6d00b45ae60              # double 0.709816
	.quad	0x3fdeb71fbc5de9c0              # double 0.47992699999999999
	.quad	0x3fc497b7414a4d2b              # double 0.16088
	.quad	0x3fcbc25d074213a1              # double 0.21686900000000001
	.quad	0x3fed343526527a20              # double 0.91262299999999996
	.quad	0x3fe0726f1dc50ce5              # double 0.51396900000000001
	.quad	0x3fd0a4ca4f440af2              # double 0.26005800000000001
	.quad	0x3feaf80baa582dbe              # double 0.84277899999999994
	.quad	0x3fcbe29307af20ea              # double 0.21785199999999999
	.quad	0x3fd4e1869835158c              # double 0.32626500000000003
	.quad	0x3feec52c59fb1e19              # double 0.961569
	.quad	0x3fe423bbc6eb0b7c              # double 0.62936199999999998
	.quad	0x3fd5d0635a426bb5              # double 0.34084399999999998
	.quad	0x3fe77d1fe64f54d2              # double 0.73402400000000001
	.quad	0x3fe2d04816f0068e              # double 0.58792500000000003
	.quad	0x3fe3a29c779a6b51              # double 0.61360000000000003
	.quad	0x3fc938fffbce4218              # double 0.197052
	.quad	0x3fda8bcdfefbf402              # double 0.41478300000000001
	.quad	0x3fc954866a11ec92              # double 0.19789200000000001
	.quad	0x3fef2845996744b3              # double 0.97366600000000003
	.quad	0x3fdaa07b352a8438              # double 0.416045
	.quad	0x3fe8b545c78a6dad              # double 0.77212800000000004
	.quad	0x3fd476e1deacc921              # double 0.31975599999999998
	.quad	0x3fe14aff6d330942              # double 0.54040500000000002
	.quad	0x3f7465e892253112              # double 0.0049800000000000001
	.quad	0x3fdd7caea747d806              # double 0.46073500000000001
	.quad	0x3fc600d1b71758e2              # double 0.1719
	.quad	0x3fea40181e03f706              # double 0.82032400000000005
	.quad	0x3fddff822bbecaac              # double 0.46872000000000003
	.quad	0x3fb530489d27c393              # double 0.082767999999999994
	.quad	0x3f96a337a80cf9e4              # double 0.022107000000000002
	.quad	0x3fea404ea4a8c155              # double 0.82035000000000002
	.quad	0x3fd53bc0a06e9ff1              # double 0.33177200000000001
	.quad	0x3fa19806f262888b              # double 0.034362999999999998
	.quad	0x3fbab191dde37586              # double 0.104272
	.quad	0x3fd1ece13f4a98ab              # double 0.28008300000000003
	.quad	0x3fe54cfaeff5c6c1              # double 0.66564699999999999
	.quad	0x3fea37329c347e8d              # double 0.81923800000000002
	.quad	0x3fea209aaa3ad18d              # double 0.81647999999999998
	.quad	0x3fc39ff4fd6d7e89              # double 0.15331900000000001
	.quad	0x3fecd7a355043e53              # double 0.90132299999999999
	.quad	0x3fed28049667b5f2              # double 0.91113500000000003
	.quad	0x3fef60f5e41d4b6a              # double 0.98058599999999996
	.quad	0x3fedc9c4da9003ef              # double 0.93088000000000004
	.quad	0x3fd6bae03b3e9a70              # double 0.35515600000000003
	.quad	0x3fd2ed84d338f798              # double 0.29574699999999998
	.quad	0x3fdb1eff9f87f024              # double 0.423767
	.quad	0x3fe366b3fe9fadb0              # double 0.60628700000000002
	.quad	0x3fed5a3a08398a65              # double 0.91726399999999997
	.quad	0x3fe16c7000431bdf              # double 0.54448700000000005
	.quad	0x3fdafae7924af0bf              # double 0.42156399999999999
	.quad	0x3fe35c52e72da123              # double 0.60502
	.quad	0x3fc40f4517614595              # double 0.15671599999999999
	.quad	0x3fe5e2131a8ef77f              # double 0.68384699999999998
	.quad	0x3f93e425aee631f9              # double 0.019425000000000001
	.quad	0x3fe7756861e92924              # double 0.73308200000000001
	.quad	0x3fe06b09635610ae              # double 0.51306600000000002
	.quad	0x3fcdc6c97d8cf399              # double 0.232629
	.quad	0x3fd3f0bf1a5ca298              # double 0.31156899999999998
	.quad	0x3fe3140dd3fe1976              # double 0.59619800000000001
	.quad	0x3fe5c436fc158fb4              # double 0.68020199999999997
	.quad	0x3fdf0bf1a5ca2984              # double 0.48510399999999998
	.quad	0x3fd4e6149c6f36f0              # double 0.32654300000000003
	.quad	0x3fe7572580c308ff              # double 0.72938800000000004
	.quad	0x3fd8b80a9de8b3b3              # double 0.38623299999999999
	.quad	0x3fd48ef77f27fe4c              # double 0.32122600000000001
	.quad	0x3fd657d5a9eb2075              # double 0.349111
	.quad	0x3feff3b645a1cac1              # double 0.99850000000000005
	.quad	0x3fe22c6045baf534              # double 0.56791700000000001
	.quad	0x3fe0c33b5393250b              # double 0.52383199999999996
	.quad	0x3fed0a30db6a1e82              # double 0.90749400000000002
	.quad	0x3fe40cf9e3864cb6              # double 0.62658400000000003
	.quad	0x3fd45892684cf074              # double 0.31790600000000002
	.quad	0x3faac7da1ec4e725              # double 0.052305999999999998
	.quad	0x3fd0d441355475a3              # double 0.26295499999999999
	.quad	0x3fedf3cb3e5753a4              # double 0.93601
	.quad	0x3f6d57ff9b56323c              # double 0.0035820000000000001
	.quad	0x3feaa1a500d5e8d5              # double 0.83223199999999997
	.quad	0x3fc09ee45c358afc              # double 0.12984899999999999
	.quad	0x3fe21991361dc93f              # double 0.56562100000000004
	.quad	0x3f9c2a454de7ea60              # double 0.027505000000000002
	.quad	0x3fdc7d5a9eb2074f              # double 0.44515100000000002
	.quad	0x3fd0669ced0b30b6              # double 0.25626300000000002
	.quad	0x3fbac42e9899bf59              # double 0.104556
	.quad	0x3fe6513f8db48909              # double 0.69741799999999998
	.quad	0x3fe9b4549b62c775              # double 0.80326299999999995
	.quad	0x3fee1f8e3ac0c62e              # double 0.94135199999999997
	.quad	0x3fe4f78359bc33f8              # double 0.65521399999999996
	.quad	0x3fedc1ebc83a96d5              # double 0.92992200000000003
	.quad	0x3fb71ac14c660a20              # double 0.090251999999999999
	.quad	0x3fdc216c61522a6f              # double 0.43953999999999999
	.quad	0x3fad8c6d612c6ac2              # double 0.057711999999999999
	.quad	0x3fea88094e5d5b25              # double 0.82910600000000001
	.quad	0x3fe12fc47e49b1fb              # double 0.53708100000000003
	.quad	0x3fd87ad8e4324420              # double 0.382498
	.quad	0x3fdfe23f24d8fd5d              # double 0.49818400000000002
	.quad	0x3fe8c080f98fa377              # double 0.77349900000000005
	.quad	0x3fd464e054690de1              # double 0.31865700000000002
	.quad	0x3fb78fffbce4217d              # double 0.092040999999999998
	.quad	0x3fe3aedfe75bc44c              # double 0.615097
	.quad	0x3fe7a7f5e84f0953              # double 0.73925300000000005
	.quad	0x3fc19192641b328b              # double 0.13725499999999999
	.quad	0x3fe5245b291b823d              # double 0.66068800000000005
	.quad	0x3fc5f84449dbec25              # double 0.17163900000000001
	.quad	0x3fe1f23465625a68              # double 0.56081599999999998
	.quad	0x3fdb2452c59fb1e2              # double 0.42409200000000002
	.quad	0x3fcf3005814940bc              # double 0.24365300000000001
	.quad	0x3fd11f70de8f6cf0              # double 0.267544
	.quad	0x3fc39b23dd54da4d              # double 0.153172
	.quad	0x3fe61832fcac8e69              # double 0.69045400000000001
	.quad	0x3fe7473eee525892              # double 0.72744699999999995
	.quad	0x3fe15f676ea4228a              # double 0.54289600000000005
	.quad	0x3fe0863e07a28bb1              # double 0.51638700000000004
	.quad	0x3fe29f7f8ca8198f              # double 0.58196999999999999
	.quad	0x3fd76b69db65ecc4              # double 0.36593100000000001
	.quad	0x3fd8533f42352eb6              # double 0.380081
	.quad	0x3fd11309c7ffde72              # double 0.266787
	.quad	0x3fc329cbab649d39              # double 0.14971300000000001
	.quad	0x3fe042784a9478c8              # double 0.50811399999999995
	.quad	0x3fea078fabda0dfe              # double 0.81342300000000001
	.quad	0x3fe9c5f394b7b289              # double 0.80541399999999996
	.quad	0x3feb8d8665e02ea9              # double 0.86102599999999996
	.quad	0x3fdfef416bdb1a6d              # double 0.49897799999999998
	.quad	0x3feb28fc0d2c386d              # double 0.84875299999999998
	.quad	0x3fd12ccf6be37de9              # double 0.26835999999999999
	.quad	0x3fe33e10060780fe              # double 0.60132600000000003
	.quad	0x3fcaf7a919695d92              # double 0.21068300000000001
	.quad	0x3fd08b5cbff47736              # double 0.25850600000000001
	.quad	0x3fd3412cf0f9d2bf              # double 0.30085299999999998
	.quad	0x3fd59d7fd82773e2              # double 0.33773799999999998
	.quad	0x3fa693e1c9b41398              # double 0.044096999999999997
	.quad	0x3fe1d2999567dbb1              # double 0.55695799999999995
	.quad	0x3fea109070fbeb9e              # double 0.81452199999999997
	.quad	0x3f8c6e2a80064a9d              # double 0.013882
	.quad	0x3fe10b9baa1511e0              # double 0.532667
	.quad	0x3fd08754f3775b81              # double 0.25825999999999999
	.quad	0x3fdcb6f9fcb0c027              # double 0.44866800000000001
	.quad	0x3febee7e62dc6e2b              # double 0.87286300000000006
	.quad	0x3fca333764f11b61              # double 0.20468800000000001
	.quad	0x3fe7ab5a20ddc619              # double 0.73966699999999996
	.quad	0x3fdb24d8fd5cb791              # double 0.424124
	.quad	0x3febd09e12a51e32              # double 0.86921599999999999
	.quad	0x3fea6b65a9a80496              # double 0.82560999999999996
	.quad	0x3fafc7820a30db6a              # double 0.062068999999999999
	.quad	0x3f8db2b3461309c8              # double 0.014501
	.quad	0x3fe5f06f69446738              # double 0.68559999999999999
	.quad	0x3fe943aeab7995ee              # double 0.78951199999999999
	.quad	0x3fccf9b994e1a3f4              # double 0.22637099999999999
	.quad	0x3fc23f24d8fd5cb8              # double 0.14255200000000001
	.quad	0x3fe7c9eecbfb15b5              # double 0.74339999999999995
	.quad	0x3fdfeadd590c0ad0              # double 0.49870999999999999
	.quad	0x3fda0ff540895d0b              # double 0.40722399999999997
	.quad	0x3fdb04af922962d0              # double 0.42216100000000001
	.quad	0x3fefbfca85caafbc              # double 0.99216199999999998
	.quad	0x3fef59641f644956              # double 0.97966200000000003
	.quad	0x3fec4504816f0069              # double 0.88342500000000002
	.quad	0x3fdc1d19157abb88              # double 0.439276
	.quad	0x3fe62d666a98244f              # double 0.69304200000000005
	.quad	0x3fe43003686a4ca5              # double 0.63086100000000001
	.quad	0x3fc9821294573a79              # double 0.19928199999999999
	.quad	0x3fd4a6f3f52fc265              # double 0.32268999999999998
	.quad	0x3fdb9f01b866e43b              # double 0.43158000000000002
	.quad	0x3fe7b9fdbd2fa0d7              # double 0.74145399999999995
	.quad	0x3fe03397dd00f777              # double 0.50629800000000003
	.quad	0x3fe724a276b7ed42              # double 0.72322200000000003
	.quad	0x3fe6f84a9478c869              # double 0.71780900000000003
	.quad	0x3fc161b2a27f1b69              # double 0.135794
	.quad	0x3fec33f85510d38d              # double 0.88134400000000002
	.quad	0x3fa6c58eeae9ee46              # double 0.044476000000000002
	.quad	0x3fdc7214f0520d13              # double 0.444463
	.quad	0x3fe4315f88fc9364              # double 0.631027
	.quad	0x3fcfa0b5ed8d36b5              # double 0.24709200000000001
	.quad	0x3fd8ffa3b9ae0c17              # double 0.39060299999999998
	.quad	0x3f94dfce3150dae4              # double 0.020385
	.quad	0x3fcaf062d40aaeb0              # double 0.21046100000000001
	.quad	0x3fddd31b9b66f933              # double 0.46600999999999998
	.quad	0x3fea155d5f56a7ad              # double 0.81510800000000005
	.quad	0x3fe9864020817fc7              # double 0.79763799999999996
	.quad	0x3fe9c66d373affb0              # double 0.80547199999999997
	.quad	0x3fe83a6efc371da3              # double 0.75713299999999994
	.quad	0x3fc8f648c7192ea5              # double 0.19501599999999999
	.quad	0x3fd72fd75e2046c7              # double 0.36229499999999998
	.quad	0x3f90c804102ff8ec              # double 0.016388
	.quad	0x3fec539b8887229f              # double 0.88520600000000005
	.quad	0x3fe179b13165d399              # double 0.54610499999999995
	.quad	0x3fd6c1ebc83a96d5              # double 0.35558600000000001
	.quad	0x3fc5008a697aeddd              # double 0.164079
	.quad	0x3febb6177ea1c68f              # double 0.86597800000000003
	.quad	0x3feb7ab324851a87              # double 0.85872800000000005
	.quad	0x3fe9d99cbee807bc              # double 0.80781400000000003
	.quad	0x3fd7fc8f32378ab1              # double 0.37479000000000001
	.quad	0x3fc80bd44998d046              # double 0.187861
	.quad	0x3fda9f3c70c996b7              # double 0.41596899999999998
	.quad	0x3fce9310129cbab6              # double 0.23886299999999999
	.quad	0x3fd06e3715400325              # double 0.25672699999999998
	.quad	0x3fd9a1d755bccaf7              # double 0.400503
	.quad	0x3fa47ae147ae147b              # double 0.040000000000000001
	.quad	0x3fec049235f80991              # double 0.87555799999999995
	.quad	0x3fd0443d46b26bf8              # double 0.25416499999999997
	.quad	0x3fe0e91a75cd0bb7              # double 0.52845500000000001
	.quad	0x3fe80fe047d3d428              # double 0.751938
	.quad	0x3fe8c892ab68cef6              # double 0.77448399999999995
	.quad	0x3fe42f7d30ad46f6              # double 0.63079700000000005
	.quad	0x3feb28650e779208              # double 0.84868100000000002
	.quad	0x3fda222d5171e29b              # double 0.40833599999999998
	.quad	0x3fed76af89c5e6ff              # double 0.92073799999999995
	.quad	0x3fe6dd590c0ad03e              # double 0.71452000000000004
	.quad	0x3fb101e2584f4c6e              # double 0.066434999999999994
	.quad	0x3fe8d729b280f12c              # double 0.77626499999999998
	.quad	0x3fdf871a3b14a904              # double 0.49262099999999998
	.quad	0x3fea1f94855da273              # double 0.81635500000000005
	.quad	0x3fea6718a86d71f3              # double 0.82508499999999996
	.quad	0x3fb2ee957470eb25              # double 0.073953000000000005
	.quad	0x3fe7d68c692f6e83              # double 0.74494000000000005
	.quad	0x3fe4ce160d887ebf              # double 0.65015699999999998
	.quad	0x3fd1c0d6f544bb1b              # double 0.277395
	.quad	0x3fe9f127f5e84f09              # double 0.81068799999999996
	.quad	0x3feb5e56cd6c2efd              # double 0.85526599999999997
	.quad	0x3feffa5b0ff10ecb              # double 0.99931099999999994
	.quad	0x3fe4b00ffda4052d              # double 0.64649199999999996
	.quad	0x3fe75c4651f3e89b              # double 0.73001400000000005
	.quad	0x3feb0c1db0142f62              # double 0.84522900000000001
	.quad	0x3fe981e03f705858              # double 0.79710400000000003
	.quad	0x3fcf99e518f3eccc              # double 0.24688399999999999
	.quad	0x3fe6c297bfa4c61e              # double 0.71125400000000005
	.quad	0x3fc77cbb3c81908e              # double 0.18349399999999999
	.quad	0x3fdd53111f0c34c2              # double 0.45819500000000002
	.quad	0x3fe3fa24894c447c              # double 0.62428499999999998
	.quad	0x3fead05d0fa58f71              # double 0.83793499999999999
	.quad	0x3fe35851654d61b3              # double 0.60453100000000004
	.quad	0x3fe7111cf355cd92              # double 0.72083900000000001
	.quad	0x3fddec679cc74b84              # double 0.46755400000000003
	.quad	0x3fe80d2e514c22ee              # double 0.75160899999999997
	.quad	0x3fd58c3f3e0370ce              # double 0.33668500000000001
	.quad	0x3fc35d13d74d594f              # double 0.151278
	.quad	0x3fe0faf859429175              # double 0.530636
	.quad	0x3fe0d2f1a9fbe76d              # double 0.52575000000000005
	.quad	0x3fe895b35b0bbf51              # double 0.76827400000000001
	.quad	0x3fe27566490a350d              # double 0.57683099999999998
	.quad	0x3fe250fc71d60631              # double 0.57238599999999995
	.quad	0x3fc791361dc93ea3              # double 0.184119
	.quad	0x3febb877ab324852              # double 0.86626800000000004
	.quad	0x3fe45245b291b824              # double 0.63504300000000002
	.quad	0x3fea8adeebb341e1              # double 0.82945199999999997
	.quad	0x3fe08d434a01abd2              # double 0.51724400000000004
	.quad	0x3fd8db65ecc3e319              # double 0.38839099999999999
	.quad	0x3fc8df04ddb5525d              # double 0.19430600000000001
	.quad	0x3fef776a2f48c2e7              # double 0.98332699999999995
	.quad	0x3fe0ee221c8a7a42              # double 0.52906900000000001
	.quad	0x3fd89c7ffde7210c              # double 0.384552
	.quad	0x3fd771044f1a1987              # double 0.36627300000000002
	.quad	0x3fc579c842fa5094              # double 0.16777900000000001
	.quad	0x3fef0110a137f38c              # double 0.96887999999999996
	.quad	0x3fcd8305d95dd4c7              # double 0.23056099999999999
	.quad	0x3fde5dc8323358f3              # double 0.47447400000000001
	.quad	0x3fdd0489d27c3937              # double 0.45340200000000003
	.quad	0x3feeb29e4d5d80e5              # double 0.95930400000000004
	.quad	0x3fdb6d43d03968d7              # double 0.42854399999999998
	.quad	0x3fb668c26138fffc              # double 0.087536000000000003
	.quad	0x3fd99068986fcdee              # double 0.39943899999999999
	.quad	0x3fdc6cfc829cfdd2              # double 0.44415199999999999
	.quad	0x3fd56861e92923e6              # double 0.33449600000000002
	.quad	0x3fd1fcdab191dde3              # double 0.28105799999999997
	.quad	0x3fdf4b76f6d76252              # double 0.488981
	.quad	0x3fe43415b1422ccb              # double 0.63135799999999997
	.quad	0x3fe5314ca925fe97              # double 0.66226799999999997
	.quad	0x3fc8867ad8e43244              # double 0.191604
	.quad	0x3fecf0563ed0f627              # double 0.90433799999999998
	.quad	0x3fe8cc7f34938583              # double 0.77496299999999996
	.quad	0x3fe110dbf0563ed1              # double 0.533308
	.quad	0x3fd0cb923a29c77a              # double 0.26242500000000002
	.quad	0x3fe3c43d46b26bf8              # double 0.61770499999999995
	.quad	0x3fd0f73c0c1fc8f3              # double 0.26508999999999999
	.quad	0x3fdf31337eb28d86              # double 0.48737799999999998
	.quad	0x3fc850614163779f              # double 0.18995300000000001
	.quad	0x3fc159ccfaeff5c7              # double 0.13555300000000001
	.quad	0x3fa7eeb2d0a24463              # double 0.046743
	.quad	0x3fe2b8cfbfc6540d              # double 0.58506000000000002
	.quad	0x3fe971c10d7be985              # double 0.79513599999999995
	.quad	0x3fec89917939a7c1              # double 0.89179299999999995
	.quad	0x3fe8699a62ed3522              # double 0.76289099999999999
	.quad	0x3fea3dd11be6e654              # double 0.82004600000000005
	.quad	0x3fe8482385404641              # double 0.75880599999999998
	.quad	0x3fdbf1a1986b9c30              # double 0.43662299999999998
	.quad	0x3fedf77af640639d              # double 0.93645999999999996
	.quad	0x3fd4b90a7829068a              # double 0.32379400000000003
	.quad	0x3fd589eba6aca793              # double 0.33654299999999998
	.quad	0x3fe93ad9f0a1be2b              # double 0.78843399999999997
	.quad	0x3fe5c3914f483cb0              # double 0.68012300000000003
	.quad	0x3fe096b76709fa55              # double 0.51839800000000003
	.quad	0x3fdfff0cbaf965b2              # double 0.499942
	.quad	0x3fe8111ada76d97b              # double 0.75208799999999998
	.quad	0x3fda0be5109070fc              # double 0.406976
	.quad	0x3fefcf8726d04e62              # double 0.99408300000000005
	.quad	0x3fead3910c2c5e2d              # double 0.83832600000000002
	.quad	0x3fd3946801711948              # double 0.30593300000000001
	.quad	0x3fa132d6ece13f4b              # double 0.033591000000000003
	.quad	0x3fe3846a5d6bebe1              # double 0.60991399999999996
	.quad	0x3fe68b5aa715831f              # double 0.704511
	.quad	0x3feb1669ced0b30b              # double 0.84648599999999996
	.quad	0x3fea10624dd2f1aa              # double 0.8145
	.quad	0x3fdd4dd2f1a9fbe7              # double 0.45787499999999998
	.quad	0x3fd7a81dc0db2703              # double 0.36963600000000002
	.quad	0x3fe3c1d8e8640208              # double 0.61741299999999999
	.quad	0x3fd9e68e3ef28416              # double 0.40469699999999997
	.quad	0x3fe4714b9cb6848c              # double 0.63883000000000001
	.quad	0x3fd187b56b873797              # double 0.27390799999999998
	.quad	0x3fe3a276b7ed41b7              # double 0.61358199999999996
	.quad	0x3fe77d2c7b890d5a              # double 0.73402999999999996
	.quad	0x3fd6a6ce358298cc              # double 0.353931
	.quad	0x3fcb1c2a02320968              # double 0.21179700000000001
	.quad	0x3fec93d96638433d              # double 0.89304799999999995
	.quad	0x3fdf5942917507ea              # double 0.48982300000000001
	.quad	0x3fe8ccdfaca36199              # double 0.77500899999999995
	.quad	0x3fea086bdf4c2b52              # double 0.81352800000000003
	.quad	0x3fe95a122fad6cb5              # double 0.79224499999999998
	.quad	0x3fc89c6f36ef8056              # double 0.192274
	.quad	0x3fe2a0b5ed8d36b5              # double 0.58211800000000002
	.quad	0x3fedd0e12e83a10a              # double 0.93174800000000002
	.quad	0x3fec45ed4a1ad645              # double 0.88353599999999999
	.quad	0x3fea5ffe6d58c8ef              # double 0.82421800000000001
	.quad	0x3fe0ab841248d7e0              # double 0.52093699999999998
	.quad	0x3f97867f0aa21a72              # double 0.022974000000000001
	.quad	0x3fe6c1d8e8640208              # double 0.71116299999999999
	.quad	0x3fdc46f9b994e1a4              # double 0.441832
	.quad	0x3fed6f77f27fe4bd              # double 0.91985700000000004
	.quad	0x3fb1be2b4959e625              # double 0.069307999999999995
	.quad	0x3fded99cbee807bc              # double 0.48203200000000002
	.quad	0x3fd74284dfce3151              # double 0.36343500000000001
	.quad	0x3fdc3f705857afea              # double 0.44137199999999999
	.quad	0x3fed9fb3fa6defc8              # double 0.92574500000000004
	.quad	0x3fdbb4202d9cf13d              # double 0.432869
	.quad	0x3fec2c450268900c              # double 0.88040399999999996
	.quad	0x3fefa4ca4f440af2              # double 0.98886600000000002
	.quad	0x3fe7d7603925bb7b              # double 0.74504099999999995
	.quad	0x3fe0accd530489d2              # double 0.52109399999999995
	.quad	0x3fe2a9068986fcdf              # double 0.58313300000000001
	.quad	0x3fdc33c1ce6c093e              # double 0.44065900000000002
	.quad	0x3fecdd95dd4c76d1              # double 0.90204899999999999
	.quad	0x3fea92e83a109d06              # double 0.83043299999999998
	.quad	0x3fee5953586ca8a0              # double 0.94840400000000002
	.quad	0x3feb1461b6d43d04              # double 0.84623800000000004
	.quad	0x3fe0922fad6cb535              # double 0.517845
	.quad	0x3fd7bb1af3a14cec              # double 0.37079499999999999
	.quad	0x3fe146088d6d3b6d              # double 0.53979900000000003
	.quad	0x3fd9a8deb0fadf2f              # double 0.40093200000000001
	.quad	0x3fc35ebfa8f7db6e              # double 0.15132899999999999
	.quad	0x3f900b45ae5ffa3c              # double 0.015668000000000001
	.quad	0x3fd885f4a1272c95              # double 0.38317600000000002
	.quad	0x3fe4a89331a08bfc              # double 0.64557799999999999
	.quad	0x3fcb55bccaf709b7              # double 0.21355399999999999
	.quad	0x3fb07368ad688377              # double 0.064260999999999999
	.quad	0x3fa0754f3775b813              # double 0.032145
	.quad	0x3fea33461309c800              # double 0.81875900000000001
	.quad	0x3fad271bcdbbe015              # double 0.056938999999999997
	.quad	0x3fe4f589efd86a90              # double 0.65497300000000003
	.quad	0x3fec8027d88c1db0              # double 0.89064399999999999
	.quad	0x3fe142f61ed5ae1d              # double 0.53942400000000001
	.quad	0x3fdc05d0fa58f712              # double 0.43785499999999999
	.quad	0x3fe15a72a7bd48cb              # double 0.54229099999999997
	.quad	0x3fd255ef1fddebd9              # double 0.286495
	.quad	0x3fead3aa369fcf3e              # double 0.83833800000000003
	.quad	0x3fd1c829cfdd2285              # double 0.27784199999999998
	.quad	0x3feff8c868b9fdbd              # double 0.99911899999999997
	.quad	0x3fe45d28d002e233              # double 0.63637200000000005
	.quad	0x3fd54db163baba7c              # double 0.33286700000000002
	.quad	0x3fb9f633ce63a5c2              # double 0.101413
	.quad	0x3fc410adcd2d44dd              # double 0.15675900000000001
	.quad	0x3fe28a99b6f5caf3              # double 0.57941900000000002
	.quad	0x3feb37e6f71a7e31              # double 0.85057400000000005
	.quad	0x3fac94b380cb6c7a              # double 0.055821999999999997
	.quad	0x3fcffddebd9018e7              # double 0.24993499999999999
	.quad	0x3fd69142b302f72b              # double 0.35261599999999999
	.quad	0x3fe695ce9e5e2479              # double 0.70578700000000005
	.quad	0x3fe9a3315d701d9f              # double 0.80117099999999997
	.quad	0x3fb230446b69db66              # double 0.071049000000000001
	.quad	0x3fdc2e62131a8ef7              # double 0.44033099999999997
	.quad	0x3fece73c4f3ba776              # double 0.903227
	.quad	0x3fd5f9a49c2c1b11              # double 0.343362
	.quad	0x3fae0b4e11dbca97              # double 0.058680000000000003
	.quad	0x3fe0c85c24c404a7              # double 0.52445799999999998
	.quad	0x3fcbb634dad31fcd              # double 0.216498
	.quad	0x3fe9d9620685553f              # double 0.807786
	.quad	0x3fe66527a20578e6              # double 0.69984800000000003
	.quad	0x3fe6020817fc7608              # double 0.68774800000000003
	.quad	0x3fdefa5093964a5a              # double 0.48402800000000001
	.quad	0x3fe4ad2135daad60              # double 0.64613399999999999
	.quad	0x3fc7d95dd4c76d11              # double 0.18632099999999999
	.quad	0x3fd0a350d2806af4              # double 0.25996799999999998
	.quad	0x3fc1c054ef459d99              # double 0.138682
	.quad	0x3fef266dbd72bcb6              # double 0.973441
	.quad	0x3fd33065f9591cd2              # double 0.29982900000000001
	.quad	0x3fd5b88ca3e7d135              # double 0.339389
	.quad	0x3fede9ccb7d41744              # double 0.93479
	.quad	0x3fd98bc59b8023a7              # double 0.39915600000000001
	.quad	0x3fed3f8982cb20fb              # double 0.91400599999999999
	.quad	0x3feee1cde5d18091              # double 0.96506400000000003
	.quad	0x3fd75492ff4ba51a              # double 0.364537
	.quad	0x3fe00257c914b168              # double 0.50028600000000001
	.quad	0x3fe587fcb923a29c              # double 0.67284999999999995
	.quad	0x3fd7bc5154866a12              # double 0.370869
	.quad	0x3fd707e175d13d75              # double 0.35985600000000001
	.quad	0x3fb8271fff79c843              # double 0.094347
	.quad	0x3fd0fe718a86d71f              # double 0.26552999999999999
	.quad	0x3feb426fe718a86d              # double 0.85185999999999995
	.quad	0x3fea893faf42784b              # double 0.82925400000000005
	.quad	0x3fe0305532617c1c              # double 0.50590000000000002
	.quad	0x3fe38e9707182236              # double 0.61115600000000003
	.quad	0x3feb706f69446738              # double 0.85747499999999999
	.quad	0x3fde08aac96cc5fc              # double 0.469279
	.quad	0x3fc8acc92146a1a5              # double 0.192773
	.quad	0x3fe287bdcf0307f2              # double 0.57906999999999997
	.quad	0x3feecf398e970718              # double 0.96279599999999998
	.quad	0x3fe5ac669057d178              # double 0.67729499999999998
	.quad	0x3fd65c4a83b1d0c8              # double 0.349383
	.quad	0x3fe80bd017dae819              # double 0.75144200000000005
	.quad	0x3fcf1f36262cba73              # double 0.24314
	.quad	0x3fe341a261bf37b9              # double 0.60176200000000002
	.quad	0x3fee6c11a11233df              # double 0.95069199999999998
	.quad	0x3fcc95d91ab8e8ea              # double 0.22332299999999999
	.quad	0x3fe0781a5870da5e              # double 0.51466100000000004
	.quad	0x3fe78887229e9079              # double 0.73541599999999996
	.quad	0x3fbc288051c9f72f              # double 0.10999299999999999
	.quad	0x3fd2f22c01e68a0d              # double 0.29603099999999999
	.quad	0x3fe0f6ddaceee0f4              # double 0.53013500000000002
	.quad	0x3fcf3c792d1287c2              # double 0.244033
	.quad	0x3fd52df0d413122b              # double 0.33092899999999997
	.quad	0x3feae7f0aa21a71a              # double 0.84081300000000003
	.quad	0x3fe5cdb7ae5796c0              # double 0.68136200000000002
	.quad	0x3fdced783dff3f10              # double 0.45199400000000001
	.quad	0x3fe45e58e64b2314              # double 0.636517
	.quad	0x3fdf48b652370479              # double 0.488813
	.quad	0x3fd59d451fc4c166              # double 0.33772400000000002
	.quad	0x3fd60da1a93293d1              # double 0.344582
	.quad	0x3fda62e4d1a65061              # double 0.41228599999999999
	.quad	0x3fa43e10060780fe              # double 0.039536000000000002
	.quad	0x3fd8e44fa05143bf              # double 0.38893499999999998
	.quad	0x3fb0fba8826aa8eb              # double 0.066339999999999996
	.quad	0x3fe6ad16b97fe8ee              # double 0.70862899999999995
	.quad	0x3f93382e44b6e936              # double 0.018769000000000001
	.quad	0x3fe30ecfa69be09c              # double 0.59555800000000003
	.quad	0x3fed938bcdfefbf4              # double 0.92426099999999999
	.quad	0x3fda436b8f9b1316              # double 0.41036499999999998
	.quad	0x3fcf384fd2a62aa2              # double 0.24390600000000001
	.quad	0x3fe4f46ed245b292              # double 0.65483800000000003
	.quad	0x3fbca42aed139431              # double 0.11187999999999999
	.quad	0x3fef6c679cc74b84              # double 0.98198300000000005
	.quad	0x3fe467b80a9de8b4              # double 0.63766100000000003
	.quad	0x3f91737542a23c00              # double 0.017042000000000002
	.quad	0x3fa7eb4a66559f6f              # double 0.046717000000000002
	.quad	0x3feb6b67c286f8ad              # double 0.85686099999999998
	.quad	0x3fe60d6f544bb1af              # double 0.68913999999999997
	.quad	0x3fa5a1ec4e7253da              # double 0.042250999999999997
	.quad	0x3fe7b38b47c73eee              # double 0.74066699999999996
	.quad	0x3fd376145953586d              # double 0.30408200000000002
	.quad	0x3fe53fd933e35c5b              # double 0.66404399999999997
	.quad	0x3fe7d1b71758e219              # double 0.74434999999999996
	.quad	0x3feafd04a2fcefaa              # double 0.84338599999999997
	.quad	0x3fe13cd573647bab              # double 0.53867600000000004
	.quad	0x3fdd860dcb9a9da6              # double 0.46130700000000002
	.quad	0x3fec6030c23fab11              # double 0.88674200000000003
	.quad	0x3fdd9435ac8a3726              # double 0.462171
	.quad	0x3fe214a4d2b2bfdb              # double 0.56501999999999997
	.quad	0x3fa6e6d9be4cd749              # double 0.044729999999999999
	.quad	0x3fd4329802c0a4a0              # double 0.31558799999999998
	.quad	0x3fae87b139c94f6a              # double 0.059629000000000001
	.quad	0x3feae29b6b2af145              # double 0.84016199999999996
	.quad	0x3fe3b5efa615a8df              # double 0.61595900000000003
	.quad	0x3fe815d4e8fb00bd              # double 0.75266500000000003
	.quad	0x3fbc7e5a78f25a25              # double 0.111303
	.quad	0x3fe0f7d30ad46f58              # double 0.53025199999999995
	.quad	0x3fbe5b4245f5ad97              # double 0.11858
	.quad	0x3fe4ae85b9e8c47a              # double 0.64630399999999999
	.quad	0x3fe7f6be37de939f              # double 0.74887000000000004
	.quad	0x3feabce8533b1077              # double 0.83555999999999997
	.quad	0x3fe2779420b3d4ae              # double 0.57709699999999997
	.quad	0x3fd15eb313be22e6              # double 0.27140500000000001
	.quad	0x3fea33cc4ac6cdaf              # double 0.81882299999999997
	.quad	0x3fdae4712e40852b              # double 0.42019299999999998
	.quad	0x3fd2053198288052              # double 0.28156700000000001
	.quad	0x3fed72606fac6046              # double 0.92021200000000003
	.quad	0x3fe16748e4755ffe              # double 0.54385799999999995
	.quad	0x3fb2d6a9c560c7c1              # double 0.073588000000000001
	.quad	0x3fe56c460ed80a18              # double 0.66946700000000003
	.quad	0x3fef7327aa68f4b6              # double 0.98280699999999999
	.quad	0x3fcdabead4f5903a              # double 0.23180899999999999
	.quad	0x3fda7daa4fca42af              # double 0.41392000000000001
	.quad	0x3fd92bf5515054ac              # double 0.39330799999999999
	.quad	0x3fd6e99e94ab1d50              # double 0.35800900000000002
	.quad	0x3fa73ade225fa659              # double 0.045371000000000002
	.quad	0x3fe3a4638c975297              # double 0.61381699999999995
	.quad	0x3fe9f485e3da2f8c              # double 0.81109900000000001
	.quad	0x3fe908d4bad7d7c3              # double 0.78232800000000002
	.quad	0x3fd0575c0767d34e              # double 0.255332
	.quad	0x3fd60941c8216c61              # double 0.34431499999999998
	.quad	0x3fe4c4955b4677b4              # double 0.64899700000000005
	.quad	0x3fd3de82d7b634db              # double 0.31045600000000001
	.quad	0x3fed64fb97bb7308              # double 0.91857699999999998
	.quad	0x3fc6f3d3a1d323ff              # double 0.179316
	.quad	0x3fed8cb8e086bdf5              # double 0.92342800000000003
	.quad	0x3feeef672b884407              # double 0.96672400000000002
	.quad	0x3fe7890b417ca212              # double 0.73547899999999999
	.quad	0x3fe419bf5946c333              # double 0.62814300000000001
	.quad	0x3fed3397dd00f777              # double 0.91254800000000003
	.quad	0x3fe22c2374794ea0              # double 0.56788799999999995
	.quad	0x3fd639042d8c2a45              # double 0.34722999999999998
	.quad	0x3fc99ca5bd944aa5              # double 0.20009299999999999
	.quad	0x3fe08f6f08cc575c              # double 0.517509
	.quad	0x3fe5accb3a2595bc              # double 0.67734300000000003
	.quad	0x3fd408461f9f01b8              # double 0.31300499999999998
	.quad	0x3feb150331e3a7db              # double 0.84631500000000004
	.quad	0x3fcb5104d551d68c              # double 0.21340999999999999
	.quad	0x3fd2747d805e5f31              # double 0.28836000000000001
	.quad	0x3fe64f80dc33721d              # double 0.69720499999999996
	.quad	0x3feb7ecdd0d8cb08              # double 0.85922900000000002
	.quad	0x3fc2d4d4024b33db              # double 0.14712
	.quad	0x3fcb288ce703afb8              # double 0.212175
	.quad	0x3fa746aa087ca644              # double 0.045461000000000001
	.quad	0x3fe33ee3d5fdcdf7              # double 0.60142700000000004
	.quad	0x3fd4982cb20fb225              # double 0.32178800000000002
	.quad	0x3fd3a08398a65493              # double 0.306672
	.quad	0x3fa9a261bf37b8d4              # double 0.050067
	.quad	0x3fce40f238972043              # double 0.23635700000000001
	.quad	0x3fc4ca03c4b09e99              # double 0.162415
	.quad	0x3fe04623d0bfa094              # double 0.50856199999999996
	.quad	0x3fee0d62bf11f927              # double 0.93913400000000002
	.quad	0x3fe14c9c90c4dec2              # double 0.54060200000000003
	.quad	0x3faac79702e6644e              # double 0.052304000000000003
	.quad	0x3fb78cfbfc6540cc              # double 0.091994999999999993
	.quad	0x3fcece91c8eabffd              # double 0.240679
	.quad	0x3fc8e08f21709310              # double 0.194353
	.quad	0x3fe1ca0a0f4d7add              # double 0.55591299999999999
	.quad	0x3fe0774256bca537              # double 0.51455799999999996
	.quad	0x3fee960b6f9fcb0c              # double 0.95581599999999999
	.quad	0x3fab05faebc408d9              # double 0.052780000000000001
	.quad	0x3fe0f7b17ce52ded              # double 0.53023600000000004
	.quad	0x3fe2466b1e5c0b9a              # double 0.57109600000000005
	.quad	0x3fe0c430b178b370              # double 0.523949
	.quad	0x3fe7a0ab71327243              # double 0.73836299999999999
	.quad	0x3fee214057082492              # double 0.94155900000000003
	.quad	0x3fef2cc4ef88b978              # double 0.97421500000000005
	.quad	0x3fcd710880d801b4              # double 0.23001199999999999
	.quad	0x3fdff33ca31e7d9a              # double 0.49922100000000003
	.quad	0x3fa9e71044f1a198              # double 0.050590999999999997
	.quad	0x3fcc244e93e1c9b4              # double 0.219858
	.quad	0x3fe240bdcad14a0a              # double 0.57040299999999999
	.quad	0x3fccb3b320535c9e              # double 0.22423399999999999
	.quad	0x3fef28283d35eb74              # double 0.97365199999999996
	.quad	0x3fae5a78f25a2510              # double 0.059284000000000003
	.quad	0x3fd164cb5bb384fd              # double 0.27177699999999999
	.quad	0x3fe58379314445aa              # double 0.67229899999999998
	.quad	0x3fb22aa19439de48              # double 0.070962999999999998
	.quad	0x3feac647778dd617              # double 0.836704
	.quad	0x3feb4c6822ff0889              # double 0.85307699999999997
	.quad	0x3fdd729f59ccfaf0              # double 0.460121
	.quad	0x3fe5b0d9513f8db5              # double 0.67783800000000005
	.quad	0x3fe9a29c779a6b51              # double 0.80110000000000003
	.quad	0x3fab5e310dbf0564              # double 0.053453000000000001
	.quad	0x3fe383bc4d22c882              # double 0.60983100000000001
	.quad	0x3fde40a6b93ccd10              # double 0.47269600000000001
	.quad	0x3fb2b87379746024              # double 0.073126999999999998
	.quad	0x3fd6b8dc55000c95              # double 0.35503299999999999
	.quad	0x3fd69b456b441bb9              # double 0.35322700000000001
	.quad	0x3fdea74c09c3ce21              # double 0.47896100000000003
	.quad	0x3fa6bdd334c5da6a              # double 0.044416999999999998
	.quad	0x3fde8d1958969a0b              # double 0.47736200000000001
	.quad	0x3fc1ad5bee3d5fdd              # double 0.138103
	.quad	0x3fded91ab8e8ea3a              # double 0.48200100000000001
	.quad	0x3fd216e7a311e860              # double 0.28264800000000001
	.quad	0x3fe12732df505d10              # double 0.53603500000000004
	.quad	0x3fce4007570c5650              # double 0.23632900000000001
	.quad	0x3fedc373f316e371              # double 0.93010899999999996
	.quad	0x3fee071a3b14a904              # double 0.93836699999999995
	.quad	0x3fea96f86a098916              # double 0.83092900000000003
	.quad	0x3fde409e55c0fcb5              # double 0.472694
	.quad	0x3fda172ef0ae5365              # double 0.407665
	.quad	0x3fe385dfa871a3b1              # double 0.61009199999999997
	.quad	0x3fc1a4c61d8622c4              # double 0.13784099999999999
	.quad	0x3fed6c39799e518f              # double 0.91946099999999997
	.quad	0x3fefc91afc04c8bd              # double 0.99329900000000004
	.quad	0x3fdb0fa58f7121ab              # double 0.42282999999999998
	.quad	0x3fe907d912556d1a              # double 0.78220800000000001
	.quad	0x3fc8f05a708ede55              # double 0.19483500000000001
	.quad	0x3fa416df3f961805              # double 0.039237000000000001
	.quad	0x3fe7c2c3c9eecbfb              # double 0.74252499999999999
	.quad	0x3fa9e060fe47991c              # double 0.050540000000000002
	.quad	0x3fe5be3c105186db              # double 0.67947199999999996
	.quad	0x3fc894812be48a59              # double 0.19203200000000001
	.quad	0x3fe44003254e6e22              # double 0.63281399999999999
	.quad	0x3fd1e33269df97ab              # double 0.27949200000000002
	.quad	0x3fea8383ad9f0a1c              # double 0.82855400000000001
	.quad	0x3fe30d38cda6e760              # double 0.595364
	.quad	0x3fdeefd00713f078              # double 0.48338700000000001
	.quad	0x3fd08e1932d6ece1              # double 0.25867299999999999
	.quad	0x3fd5ddb9841aac54              # double 0.34165800000000002
	.quad	0x3fe8980f55de58e6              # double 0.76856199999999997
	.quad	0x3fe4f166e008e9b4              # double 0.65446800000000005
	.quad	0x3fe3a26e5471715c              # double 0.61357799999999996
	.quad	0x3fc71d68c692f6e8              # double 0.180585
	.quad	0x3fdffb549f94855e              # double 0.49971500000000002
	.quad	0x3fe9dcee17a02fb6              # double 0.80821900000000002
	.quad	0x3fe9fb17ce52deca              # double 0.81190099999999998
	.quad	0x3fc06a7ef9db22d1              # double 0.12825
	.quad	0x3fcbc2e33eff1950              # double 0.21688499999999999
	.quad	0x3fd33a2163fdd65a              # double 0.300423
	.quad	0x3fe5a18372e6a769              # double 0.67596599999999996
	.quad	0x3fedfc84b5dcc63f              # double 0.93707499999999999
	.quad	0x3f8e6cd29131ec0b              # double 0.014855999999999999
	.quad	0x3fef3ca9691a75cd              # double 0.97615499999999999
	.quad	0x3fcf139c94f69caa              # double 0.242786
	.quad	0x3fc512c27a63736d              # double 0.164635
	.quad	0x3fe4118c197e5647              # double 0.62714199999999998
	.quad	0x3fe1b8c32a8c9b84              # double 0.55380399999999996
	.quad	0x3fd194855da27286              # double 0.27468999999999999
	.quad	0x3fb31feeb2d0a244              # double 0.074705999999999995
	.quad	0x3feebc1eff9f87f0              # double 0.96046399999999998
	.quad	0x3fe1ee525892684d              # double 0.56034200000000001
	.quad	0x3fba9c779a6b50b1              # double 0.10395
	.quad	0x3fefae9ccb7d4174              # double 0.99006499999999997
	.quad	0x3fe9863beec3979a              # double 0.79763600000000001
	.quad	0x3fe509d495182a99              # double 0.65744999999999998
	.quad	0x3fea1331a08bfc22              # double 0.81484299999999998
	.quad	0x3fe76358298cc144              # double 0.730877
	.quad	0x3fefe9531550ca1d              # double 0.997232
	.quad	0x3fca896dd26b723f              # double 0.207319
	.quad	0x3fe91b0468448cf8              # double 0.78454800000000002
	.quad	0x3fda9ad85dfa871a              # double 0.41570099999999999
	.quad	0x3fd49e4d5d80e497              # double 0.322162
	.quad	0x3fcd28c79f666235              # double 0.22780700000000001
	.quad	0x3fee73cd573647bb              # double 0.95163600000000004
	.quad	0x3fe8122749f0e4da              # double 0.752216
	.quad	0x3fef6c2efd438d1e              # double 0.98195600000000005
	.quad	0x3fef137d1fe64f55              # double 0.97112900000000001
	.quad	0x3fe0a77e5eaab042              # double 0.52044599999999996
	.quad	0x3fde73b85e80bed7              # double 0.47581299999999999
	.quad	0x3fcc615a8deb0fae              # double 0.221721
	.quad	0x3fdf344806290eed              # double 0.487566
	.quad	0x3fe168e60807357e              # double 0.54405499999999996
	.quad	0x3fe5c199fe43675e              # double 0.67988300000000002
	.quad	0x3fb6674080f98fa3              # double 0.087512999999999994
	.quad	0x3fd449c2c1b10fd8              # double 0.31700200000000001
	.quad	0x3fdeab1d4f9c1f86              # double 0.47919400000000001
	.quad	0x3fbdd6bebe1650a4              # double 0.11655799999999999
	.quad	0x3fe84a05dd8f92b0              # double 0.75903600000000004
	.quad	0x3fe89e1b089a0275              # double 0.76929999999999998
	.quad	0x3fdedc26dce39b45              # double 0.48218699999999998
	.quad	0x3fd6d1633482be8c              # double 0.35653000000000001
	.quad	0x3fe7a749f0e4da0a              # double 0.73917100000000002
	.quad	0x3feb23b9ae0c1765              # double 0.84811099999999995
	.quad	0x3fe471cfbb949625              # double 0.63889300000000004
	.quad	0x3fe3410b630a9153              # double 0.60168999999999995
	.quad	0x3fd17820a30db6a2              # double 0.27295700000000001
	.quad	0x3fcf3b5393250b52              # double 0.24399799999999999
	.quad	0x3fe8ab96f21f6cad              # double 0.77094600000000002
	.quad	0x3fee7353b4b2fa94              # double 0.95157800000000003
	.quad	0x3fe31057d1782d38              # double 0.59574499999999997
	.quad	0x3fe09e8815e39714              # double 0.51935200000000004
	.quad	0x3fd12c386d2ed784              # double 0.26832400000000001
	.quad	0x3fd84efcbd556085              # double 0.37982100000000002
	.quad	0x3fd787ce95faa8a8              # double 0.36766399999999999
	.quad	0x3fe87d3910c2c5e3              # double 0.76528600000000002
	.quad	0x3fe0279fec99f1ae              # double 0.50483699999999998
	.quad	0x3fd7ea0ba1f4b1ee              # double 0.37365999999999999
	.quad	0x3fb30cbaf965b20c              # double 0.074413000000000007
	.quad	0x3fd6adfb506dd69d              # double 0.35436899999999999
	.quad	0x3fecb700474d9c6b              # double 0.897339
	.quad	0x3fe06236c15d2d02              # double 0.51198900000000003
	.quad	0x3fb28448cf7caa76              # double 0.072331000000000006
	.quad	0x3fa7e73a365cb35f              # double 0.046685999999999998
	.quad	0x3fe2359ddc1e7968              # double 0.56904500000000002
	.quad	0x3febc6cfc829cfdd              # double 0.86801899999999999
	.quad	0x3fd89ca9ef5232d3              # double 0.38456200000000001
	.quad	0x3fc0df15a4acf313              # double 0.13180800000000001
	.quad	0x3fcec89b0ee49f51              # double 0.24049699999999999
	.quad	0x3fd41cd5f99c38b0              # double 0.31425999999999998
	.quad	0x3fe9e2328f9f44d4              # double 0.80886199999999996
	.quad	0x3fdc4cc25072085b              # double 0.44218499999999999
	.quad	0x3fb7e5fb71fbc5df              # double 0.093353000000000005
	.quad	0x3fa2849cb252ce03              # double 0.036167999999999999
	.quad	0x3fd530d73860999e              # double 0.33110600000000001
	.quad	0x3fd46d04e618ce2d              # double 0.31915399999999999
	.quad	0x3fba120e1f7d73c9              # double 0.101838
	.quad	0x3fd2158fb43d89ce              # double 0.28256599999999998
	.quad	0x3fef8e219652bd3c              # double 0.98609999999999997
	.quad	0x3fe155e28aa43351              # double 0.54173400000000005
	.quad	0x3fe3c4bd33d29564              # double 0.61776600000000004
	.quad	0x3fd9fba8826aa8eb              # double 0.40598499999999998
	.quad	0x3fee6eeb702602c9              # double 0.95104
	.quad	0x3fe7e9899bf5946c              # double 0.74725799999999998
	.quad	0x3fc5d8383ad9f0a2              # double 0.17066100000000001
	.quad	0x3fddddf86e3b46fe              # double 0.466673
	.quad	0x3fdfbd09e12a51e3              # double 0.49591299999999999
	.quad	0x3fe3e032db1e9f27              # double 0.62111799999999995
	.quad	0x3fd7ff5c6c11a112              # double 0.37496099999999999
	.quad	0x3fe08d3ae685db77              # double 0.51724000000000003
	.quad	0x3fe7f7d523b3636f              # double 0.74900299999999997
	.quad	0x3fea2921ccd96207              # double 0.81752100000000005
	.quad	0x3fee8ab713272431              # double 0.95443299999999998
	.quad	0x3fb6d17c5ef62f9d              # double 0.089134000000000005
	.quad	0x3fe44eb356da0169              # double 0.63460700000000003
	.quad	0x3fe409070fbeb9e5              # double 0.62610200000000005
	.quad	0x3fe1159e6256366d              # double 0.53388899999999995
	.quad	0x3fd5669ced0b30b6              # double 0.33438800000000002
	.quad	0x3fe11070fbeb9e49              # double 0.53325699999999998
	.quad	0x3fe6fd06bbdbe3c1              # double 0.718387
	.quad	0x3f821b3aeee95747              # double 0.0088409999999999999
	.quad	0x3fbd934efcbd5561              # double 0.11552900000000001
	.quad	0x3fd6c864883fd502              # double 0.35598099999999999
	.quad	0x3fd2947496aad1d0              # double 0.29031099999999999
	.quad	0x3fdd4b1ab0856e69              # double 0.45770899999999998
	.quad	0x3fee048e043a2164              # double 0.938056
	.quad	0x3fe3c5f5ad96a6a0              # double 0.61791499999999999
	.quad	0x3fefb393ab430f49              # double 0.99067099999999996
	.quad	0x3fe959ccfaeff5c7              # double 0.79221200000000003
	.quad	0x3fdd5b63d3e4ef03              # double 0.45870300000000003
	.quad	0x3fde6b11c6d1e109              # double 0.47528500000000001
	.quad	0x3fe8acba732df506              # double 0.77108500000000002
	.quad	0x3fdd199fe43675de              # double 0.45468900000000001
	.quad	0x3fd0632c1f42bb66              # double 0.25605299999999998
	.quad	0x3fe4d7ff9b56323c              # double 0.65136700000000003
	.quad	0x3fae4840e1719f80              # double 0.059145000000000003
	.quad	0x3fa303e20ccff21b              # double 0.037138999999999998
	.quad	0x3feec163779e9d0f              # double 0.96110700000000004
	.quad	0x3fd80f3882278d0d              # double 0.37592900000000001
	.quad	0x3fae7cf1c3265ade              # double 0.059547000000000003
	.quad	0x3fd9c122749f0e4e              # double 0.40241300000000002
	.quad	0x3fdf2ef0ae536502              # double 0.48724000000000001
	.quad	0x3fefc1bfbdf090f7              # double 0.99240099999999997
	.quad	0x3fd1a8cdea033e79              # double 0.27592800000000001
	.quad	0x3fe95d5f56a7ac82              # double 0.79264800000000002
	.quad	0x3fc9202107b78466              # double 0.196293
	.quad	0x3fc6b4202d9cf13d              # double 0.177372
	.quad	0x3fd78d1d8a548238              # double 0.36798799999999998
	.quad	0x3fee99e0e736049f              # double 0.95628400000000002
	.quad	0x3fe3e00f345069a5              # double 0.62110100000000001
	.quad	0x3fe5d96e9bbf0dc7              # double 0.68279199999999995
	.quad	0x3fdb8f0c77dd872f              # double 0.43060599999999999
	.quad	0x3fdf49c2c1b10fd8              # double 0.48887700000000001
	.quad	0x3fe0c7bcc2938de7              # double 0.52438200000000001
	.quad	0x3fc2c11a11233df3              # double 0.14651800000000001
	.quad	0x3fef8a6dacabc515              # double 0.98564799999999996
	.quad	0x3fe5fadafd113837              # double 0.68687200000000004
	.quad	0x3fc255000c9539b9              # double 0.14321900000000001
	.quad	0x3fcfc5931ca7d673              # double 0.24821699999999999
	.quad	0x3fe42e9680e06530              # double 0.630687
	.quad	0x3fcb1b584b1ab085              # double 0.21177199999999999
	.quad	0x3fea9dece5710881              # double 0.83177800000000002
	.quad	0x3fe8c636b0963561              # double 0.774196
	.quad	0x3fe2810e8858ff76              # double 0.57825400000000005
	.quad	0x3feab8561d4306e6              # double 0.83500200000000002
	.quad	0x3fe459ee88df3733              # double 0.63597800000000004
	.quad	0x3fd6b823c85c24c4              # double 0.354989
	.quad	0x3fcf8bef8ceb356e              # double 0.24645800000000001
	.quad	0x3feaef7c243dccea              # double 0.84173399999999998
	.quad	0x3fe759e83e425aee              # double 0.72972499999999996
	.quad	0x3fe1c79702e6644e              # double 0.55561400000000005
	.quad	0x3feec486ad2dcb14              # double 0.96148999999999995
	.quad	0x3fd3ef49cf56eac8              # double 0.31147999999999998
	.quad	0x3fe38e1f7d73c925              # double 0.61109899999999995
	.quad	0x3fe0b83cf2cf95d5              # double 0.52249000000000001
	.quad	0x3fdc9c23b7952d23              # double 0.44702999999999998
	.quad	0x3feb57d3910c2c5e              # double 0.85447099999999998
	.quad	0x3fdb25a682b62846              # double 0.42417300000000002
	.quad	0x3fe10e8ea39c51db              # double 0.53302700000000003
	.quad	0x3fc8c1ebc83a96d5              # double 0.19341800000000001
	.quad	0x3fb7bba55d1c3ac9              # double 0.092706999999999998
	.quad	0x3f9fb549f94855da              # double 0.030964999999999999
	.quad	0x3fe8defc7a398202              # double 0.77722000000000002
	.quad	0x3fdaf605ab3aabcd              # double 0.42126599999999997
	.quad	0x3fd467ec7863beec              # double 0.31884299999999999
	.quad	0x3fd9bc664d3bf2f5              # double 0.40212399999999998
	.quad	0x3fe16efc371da37f              # double 0.544798
	.quad	0x3feacf7446f9b995              # double 0.83782400000000001
	.quad	0x3fb38e5c4eb56fb9              # double 0.076391000000000001
	.quad	0x3fe87c7e6b3fe9fb              # double 0.76519700000000002
	.quad	0x3fe91e8e60807358              # double 0.78498000000000001
	.quad	0x3fe4d041cc532a49              # double 0.65042199999999994
	.quad	0x3fe55c67dfe32a06              # double 0.66752999999999996
	.quad	0x3faddcc63f141206              # double 0.058325000000000002
	.quad	0x3fe099f5dfeb8d82              # double 0.51879399999999998
	.quad	0x3fe3ba2df9378ee3              # double 0.61647700000000005
	.quad	0x3fe709310129cbab              # double 0.71987199999999996
	.quad	0x3fda3eab367a0f91              # double 0.41007500000000002
	.quad	0x3fe66c69b5a63f9a              # double 0.70073399999999997
	.quad	0x3fe39244a6223e18              # double 0.61160499999999995
	.quad	0x3fee9b3f20a73f75              # double 0.95645100000000005
	.quad	0x3feb78bdec5f394b              # double 0.85848899999999995
	.quad	0x3fd848beb5b2d4d4              # double 0.37944
	.quad	0x3fe71b003686a4ca              # double 0.72204599999999997
	.quad	0x3fe5431df761cbcd              # double 0.66444300000000001
	.quad	0x3fd9af07bfe7e1fc              # double 0.401308
	.quad	0x3faca38327674d16              # double 0.055934999999999999
	.quad	0x3fe3b10129cbab65              # double 0.61535700000000004
	.quad	0x3fceaec8d5c74752              # double 0.23970900000000001
	.quad	0x3fa3e9ea14057082              # double 0.038893999999999998
	.quad	0x3fc8ece9a2c66905              # double 0.19472999999999999
	.quad	0x3fd5e086bdf4c2b5              # double 0.34182899999999999
	.quad	0x3fe690f94c87980f              # double 0.70519699999999996
	.quad	0x3fd4277c45cbbc2c              # double 0.31491000000000002
	.quad	0x3fb21016ce789e77              # double 0.070557999999999996
	.quad	0x3feb54a3c64345d0              # double 0.85408200000000001
	.quad	0x3fd8ccea28fe260b              # double 0.38750699999999999
	.quad	0x3fec75fb2edfe75c              # double 0.88940200000000002
	.quad	0x3fedaff8ec0f8833              # double 0.92773099999999997
	.quad	0x3fecb59578a2a90d              # double 0.89716600000000002
	.quad	0x3fe00763a1900820              # double 0.50090199999999996
	.quad	0x3fd0f1455219a848              # double 0.26472600000000002
	.quad	0x3feca59c065b63d4              # double 0.89521600000000001
	.quad	0x3fe18f062d40aaeb              # double 0.548709
	.quad	0x3fb4b6b6e0d23d4f              # double 0.080912999999999999
	.quad	0x3fea374ddf86e3b4              # double 0.81925099999999995
	.quad	0x3fe9f6d7625204b0              # double 0.81138200000000005
	.quad	0x3f706573215fcc18              # double 0.0040029999999999996
	.quad	0x3fd79dba908a265f              # double 0.369002
	.quad	0x3fce35158b827fa2              # double 0.23599500000000001
	.quad	0x3fd80e736049ecb3              # double 0.37588199999999999
	.quad	0x3fec4bccf28c79f6              # double 0.88425299999999996
	.quad	0x3fc9ffbce4217d28              # double 0.20311699999999999
	.quad	0x3fb4a137f38c5437              # double 0.080585000000000004
	.quad	0x3feb5ff1d81f1066              # double 0.85546199999999994
	.quad	0x3f913122b7baecd0              # double 0.016788999999999998
	.quad	0x3feede5d18090b41              # double 0.96464399999999994
	.quad	0x3fc9e69ad42c3c9f              # double 0.20235
	.quad	0x3fe97b4e54f7a919              # double 0.79630199999999995
	.quad	0x3fe5264a16a48733              # double 0.66092399999999996
	.quad	0x3fe41743e963dc48              # double 0.62783999999999995
	.quad	0x3fec13059641f645              # double 0.87732200000000005
	.quad	0x3fec7d50225742dd              # double 0.89029700000000001
	.quad	0x3fe3d8c4bd33d295              # double 0.62021099999999996
	.quad	0x3fe74e9813879c41              # double 0.72834399999999999
	.quad	0x3feecdf266ba493d              # double 0.96264000000000005
	.quad	0x3fecf7f06705c897              # double 0.90526600000000002
	.quad	0x3fd93aabcd78c437              # double 0.394206
	.quad	0x3fdad031055b8994              # double 0.41895700000000002
	.quad	0x3fdacc8de2ac3223              # double 0.41873500000000002
	.quad	0x3fe7f44f5d35653d              # double 0.74857300000000004
	.quad	0x3fe5574b40703298              # double 0.666906
	.quad	0x3fdcf840181e03f7              # double 0.452652
	.quad	0x3fab2db1e9f27781              # double 0.053082999999999998
	.quad	0x3fe5e4606748e475              # double 0.68412799999999996
	.quad	0x3fa00c521dda059a              # double 0.031343999999999997
	.quad	0x3fde45a1cac08312              # double 0.47299999999999998
	.quad	0x3feb90de093532e8              # double 0.86143400000000003
	.quad	0x3fd7bb1af3a14cec              # double 0.37079499999999999
	.quad	0x3fb148882f0e0a85              # double 0.067513000000000004
	.quad	0x3fdebc2fc69728a6              # double 0.480236
	.quad	0x3fed29b8cb8e086c              # double 0.91134300000000001
	.quad	0x3fee7852f7f498c4              # double 0.95218800000000003
	.quad	0x3fe5669f05ea24cc              # double 0.66877699999999995
	.quad	0x3fe96c1a048e043a              # double 0.79444599999999999
	.quad	0x3fe14d6a161e4f76              # double 0.54069999999999996
	.quad	0x3fece22813448063              # double 0.90260700000000005
	.quad	0x3fe869ccb7d41744              # double 0.762915
	.quad	0x3fef43c3a42f1ed1              # double 0.97702199999999994
	.quad	0x3fec295421c04428              # double 0.88004499999999997
	.quad	0x3fe7c64fdb09a672              # double 0.74295800000000001
	.quad	0x3fe43e9c886162f1              # double 0.63264299999999996
	.quad	0x3fd148f10a99b6f6              # double 0.27007700000000001
	.quad	0x3fd02dcb1465e892              # double 0.25279499999999999
	.quad	0x3fe244113c68661b              # double 0.57080900000000001
	.quad	0x3fe6bfe1975f2cb6              # double 0.71092299999999997
	.quad	0x3fe2ebf22c01e68a              # double 0.59130199999999999
	.quad	0x3fd36916440f2389              # double 0.30328899999999998
	.quad	0x3fc39988d2a1f8e4              # double 0.15312300000000001
	.quad	0x3fedb5807fed2029              # double 0.92840599999999995
	.quad	0x3feb674afd545415              # double 0.85635899999999998
	.quad	0x3fc60ebedfa43fe6              # double 0.17232500000000001
	.quad	0x3fccade657b84dba              # double 0.22405700000000001
	.quad	0x3fc9c36113404ea5              # double 0.20127500000000001
	.quad	0x3fec7f4128bf3beb              # double 0.89053400000000005
	.quad	0x3fe61ce6c093d966              # double 0.69102799999999998
	.quad	0x3fc2dc1a47a9e2bd              # double 0.147342
	.quad	0x3fe3054690de0935              # double 0.59439399999999998
	.quad	0x3fe388ce703afb7f              # double 0.61045000000000005
	.quad	0x3fe04ea4a8c154ca              # double 0.50960000000000005
	.quad	0x3f92f05a708ede55              # double 0.018495000000000001
	.quad	0x3fcf3311a543f1c7              # double 0.24374599999999999
	.quad	0x3fe933a68b19a416              # double 0.78755500000000001
	.quad	0x3fd82474538ef34d              # double 0.37722499999999998
	.quad	0x3fef182ecaeea63b              # double 0.97170199999999995
	.quad	0x3fbe5892684cf074              # double 0.11853900000000001
	.quad	0x3fd74a83b1d0c804              # double 0.363923
	.quad	0x3fd96a7264a16a48              # double 0.39712199999999998
	.quad	0x3f6d0e991ff7164c              # double 0.0035469999999999998
	.quad	0x3fcaba51a005c465              # double 0.208811
	.quad	0x3fe11c0a8d21bc12              # double 0.53467299999999995
	.quad	0x3fc23c07ee0b0af6              # double 0.142457
	.quad	0x3fecae1ef73c0c20              # double 0.89625500000000002
	.quad	0x3feb8fb224aada34              # double 0.86129100000000002
	.quad	0x3fefaa9f7b5aea31              # double 0.98957799999999995
	.quad	0x3fe483126e978d50              # double 0.64100000000000001
	.quad	0x3fe8dc70435efa61              # double 0.77690899999999996
	.quad	0x3fdf60e0eb67c287              # double 0.490288
	.quad	0x3fe75d97f62b6ae8              # double 0.73017500000000002
	.quad	0x3fcecea28fe260b3              # double 0.24068100000000001
	.quad	0x3f9ab8a5ce5b4246              # double 0.026095
	.quad	0x3fbca5375c8d9f90              # double 0.111896
	.quad	0x3fce17b0f6ad70e7              # double 0.235098
	.quad	0x3fcc0cae642bf983              # double 0.219137
	.quad	0x3fe32849cb252ce0              # double 0.59866799999999998
	.quad	0x3fe99654d61b2a28              # double 0.79960100000000001
	.quad	0x3fe7109d0635a427              # double 0.72077800000000003
	.quad	0x3fd20b0f27bb2fec              # double 0.28192499999999998
	.quad	0x3fd9559b3d07c84b              # double 0.39584999999999998
	.quad	0x3fd9101f31f46ed2              # double 0.39160899999999998
	.quad	0x3fe627f5e84f0953              # double 0.69237800000000005
	.quad	0x3fec9e603d577964              # double 0.89433300000000004
	.quad	0x3feebda9435ac8a3              # double 0.96065199999999995
	.quad	0x3fd9c105186db50f              # double 0.40240599999999999
	.quad	0x3fd2b5e0f7fcfc40              # double 0.29235100000000003
	.quad	0x3fe59704ff43419e              # double 0.67468499999999998
	.quad	0x3fddba6698bb4d49              # double 0.46450200000000003
	.quad	0x3feb8d62bf11f927              # double 0.86100900000000002
	.quad	0x3fd0753a3ec02f30              # double 0.25715500000000002
	.quad	0x3fad490e66cb1034              # double 0.057197999999999999
	.quad	0x3fc886cebbba55d2              # double 0.19161400000000001
	.quad	0x3fc1f8f47304039b              # double 0.14041000000000001
	.quad	0x3f9cf80dc33721d5              # double 0.028289999999999999
	.quad	0x3fd377b395c42203              # double 0.30418099999999998
	.quad	0x3fd54d4cb9ecf638              # double 0.332843
	.quad	0x3fe2c50268900c52              # double 0.58654899999999999
	.quad	0x3feb5c5718eb8950              # double 0.85502199999999995
	.quad	0x3fda0dc33721d53d              # double 0.40709000000000001
	.quad	0x3fd0f1ae2da554b9              # double 0.26475100000000001
	.quad	0x3fec55347a5b0ff1              # double 0.88540099999999999
	.quad	0x3fdc1d323fee2c99              # double 0.43928200000000001
	.quad	0x3feacacd184c2720              # double 0.837256
	.quad	0x3fd719d66adb402d              # double 0.360952
	.quad	0x3fe93305100a393f              # double 0.78747800000000001
	.quad	0x3fe92925fe974a34              # double 0.78627299999999999
	.quad	0x3fee2b53d640e9d5              # double 0.94278899999999999
	.quad	0x3fe334d056c508b3              # double 0.60019699999999998
	.quad	0x3fc2f7f498c3b0c4              # double 0.14819199999999999
	.quad	0x3feb6dbf8b9baa15              # double 0.85714699999999999
	.quad	0x3fdfae18ac9f2fdc              # double 0.49500100000000002
	.quad	0x3fe5b906466b1e5c              # double 0.67883599999999999
	.quad	0x3fe6e9a6f826edab              # double 0.71602200000000005
	.quad	0x3fbc528283d35eb7              # double 0.110634
	.quad	0x3fea0ad8a116659d              # double 0.81382399999999999
	.quad	0x3fe07b3fa6defc7a              # double 0.51504499999999998
	.quad	0x3fe8c76295208e15              # double 0.774339
	.quad	0x3fe3c814d72799a2              # double 0.618174
	.quad	0x3fb9578a2a90cd42              # double 0.098991999999999996
	.quad	0x3fe2bd102bc72e27              # double 0.58557899999999996
	.quad	0x3fe0f56a7ac81d3b              # double 0.52995800000000004
	.quad	0x3fe9667d77fae361              # double 0.79376100000000005
	.quad	0x3fe57a28bb0a2caa              # double 0.67116200000000004
	.quad	0x3fc7ad6cb5350093              # double 0.18498000000000001
	.quad	0x3fe214ee392e1ef7              # double 0.56505499999999997
	.quad	0x3fe6e106ab14ec20              # double 0.71496899999999997
	.quad	0x3fbb953dea465a57              # double 0.10774599999999999
	.quad	0x3fdb9eadd590c0ad              # double 0.43156
	.quad	0x3fb194f26aec0725              # double 0.068679000000000004
	.quad	0x3fd82480e8c8abd6              # double 0.37722800000000001
	.quad	0x3fea452a411c2a02              # double 0.82094299999999998
	.quad	0x3fefe9813879c411              # double 0.99725399999999997
	.quad	0x3fe824a05dd8f92b              # double 0.754471
	.quad	0x3fe3bc5154866a12              # double 0.61673800000000001
	.quad	0x3fe73dd11be6e654              # double 0.72629600000000005
	.quad	0x3feac5718eb89507              # double 0.83660199999999996
	.quad	0x3fd586c6583e8577              # double 0.33635100000000001
	.quad	0x3fb14c33b5393251              # double 0.067569000000000004
	.quad	0x3fc8ec9e236c15d3              # double 0.19472100000000001
	.quad	0x3fed68d5410f94c8              # double 0.91904699999999995
	.quad	0x3fa015a07b352a84              # double 0.031414999999999998
	.quad	0x3fb98ec95bff0457              # double 0.099834999999999993
	.quad	0x3fe186f262888b54              # double 0.54772299999999996
	.quad	0x3fd849731098d478              # double 0.37948300000000001
	.quad	0x3fc82a3cea6c1a05              # double 0.18878900000000001
	.quad	0x3fe6aeee957470eb              # double 0.70885399999999998
	.quad	0x3f8aacd9e83e425b              # double 0.013025
	.quad	0x3fe10b04ab606b7b              # double 0.53259500000000004
	.quad	0x3fe009acbc8c0ce9              # double 0.50118099999999999
	.quad	0x3fc7d701d9f4d37c              # double 0.186249
	.quad	0x3fe1009d495182aa              # double 0.53132500000000005
	.quad	0x3fd69f4d37c1376d              # double 0.35347299999999998
	.quad	0x3fbc371da37ef5a9              # double 0.11021599999999999
	.quad	0x3fb0c0df58c08b76              # double 0.065443000000000001
	.quad	0x3fe8f1b691212514              # double 0.77950600000000003
	.quad	0x3fec2b53d640e9d5              # double 0.88028899999999999
	.quad	0x3fca18f81e8a2ec3              # double 0.20388700000000001
	.quad	0x3fe048b220791c4c              # double 0.50887400000000005
	.quad	0x3fe59bd1ed9dfdac              # double 0.67527099999999995
	.quad	0x3fcf0afe60c38f36              # double 0.24252299999999999
	.quad	0x3fbb1ceaf251c194              # double 0.10591
	.quad	0x3fedd3e0bd44998d              # double 0.932114
	.quad	0x3fd4efe931876189              # double 0.32714300000000002
	.quad	0x3fbf1d4f9c1f85d7              # double 0.121541
	.quad	0x3fcab5f5f0b28523              # double 0.208678
	.quad	0x3fee995464dc22ab              # double 0.95621699999999998
	.quad	0x3fe6a38b8ae31d71              # double 0.70746399999999998
	.quad	0x3fefb22291fb3fa7              # double 0.99049500000000001
	.quad	0x3fe682b1f687b13a              # double 0.70345400000000002
	.quad	0x3fec1c4545846e8f              # double 0.87845099999999998
	.quad	0x3fd36c97d8cf398f              # double 0.30350300000000002
	.quad	0x3fe628262456f75e              # double 0.69240100000000004
	.quad	0x3fda95af294dd723              # double 0.41538599999999998
	.quad	0x3fe794013ec460ee              # double 0.73681700000000006
	.quad	0x3fe72f37fbefd007              # double 0.72451399999999999
	.quad	0x3fea7d21ff2e48e9              # double 0.82777500000000004
	.quad	0x3fea82517e77d524              # double 0.82840800000000003
	.quad	0x3fed5e892253111f              # double 0.91778999999999999
	.quad	0x3fd35c182ecaeea6              # double 0.30249599999999999
	.quad	0x3fc75b8130164841              # double 0.18248
	.quad	0x3fe8d4c76d117b53              # double 0.77597400000000005
	.quad	0x3fc0fd8f0c77dd87              # double 0.13273799999999999
	.quad	0x3fe6defe93187619              # double 0.71472100000000005
	.quad	0x3fd230e7ff583a54              # double 0.28423500000000002
	.quad	0x3fef77d30ad46f58              # double 0.98337699999999994
	.quad	0x3fbe6ff7dfa00e28              # double 0.118896
	.quad	0x3fdce503fb374363              # double 0.45147799999999999
	.quad	0x3fcf0e66cb10342b              # double 0.24262700000000001
	.quad	0x3fe9723465625a68              # double 0.79519099999999998
	.quad	0x3fe82936c58eeaea              # double 0.75503100000000001
	.quad	0x3fe09465e8922531              # double 0.51811499999999999
	.quad	0x3fe295f88fc9363f              # double 0.58080699999999996
	.quad	0x3febdd074213a0c7              # double 0.87073100000000003
	.quad	0x3fbd5a07b352a844              # double 0.11465500000000001
	.quad	0x3feb81450efdc9c5              # double 0.85953000000000002
	.quad	0x3fd803f705857aff              # double 0.37524200000000002
	.quad	0x3fe78aa433508f65              # double 0.73567400000000005
	.quad	0x3fe85d1c3ac929aa              # double 0.76136599999999999
	.quad	0x3feffabfb9bed30f              # double 0.99935899999999999
	.quad	0x3fdfd4b2745bf26f              # double 0.49735699999999999
	.quad	0x3fda97f62b6ae7d5              # double 0.41552499999999998
	.quad	0x3fecb721d53cddd7              # double 0.89735500000000001
	.quad	0x3fdc8c5c9a34ca0c              # double 0.44606699999999999
	.quad	0x3fd2599ed7c6fbd2              # double 0.28671999999999997
	.quad	0x3febf47f993d5348              # double 0.87359600000000004
	.quad	0x3fd4304039abf338              # double 0.31544499999999998
	.quad	0x3fdeb65668c26139              # double 0.479879
	.quad	0x3fb76295208e1501              # double 0.091347999999999999
	.quad	0x3fe94adff822bbed              # double 0.79039000000000004
	.quad	0x3fd5e6f71a7e3088              # double 0.34222200000000003
	.quad	0x3fe382eec7c957cd              # double 0.60973299999999997
	.quad	0x3fc1dc725c3dee78              # double 0.13954
	.quad	0x3fd5c2ca148ba83f              # double 0.34001399999999998
	.quad	0x3fdb81908e581cf8              # double 0.42978300000000003
	.quad	0x3fe6f0c996b7670a              # double 0.716893
	.quad	0x3fdfe29f9ce8d973              # double 0.49820700000000001
	.quad	0x3fec21ccd9620685              # double 0.87912599999999996
	.quad	0x3fe6b4edb2f661f2              # double 0.70958600000000005
	.quad	0x3fef2be8bc169c24              # double 0.97411000000000003
	.quad	0x3fdab16c1e364bec              # double 0.41707899999999998
	.quad	0x3fd2be2f7b17ce53              # double 0.29285800000000001
	.quad	0x3f854a7f8012dfd7              # double 0.010396000000000001
	.quad	0x3fe7121ee675147f              # double 0.72096199999999999
	.quad	0x3feb5703f2d3c793              # double 0.85437200000000002
	.quad	0x3fdb5c4a83b1d0c8              # double 0.427508
	.quad	0x3fd31e96c3fc43b3              # double 0.29874200000000001
	.quad	0x3fc71bf7ad4b2746              # double 0.18054100000000001
	.quad	0x3fe0ce93e1c9b414              # double 0.52521700000000004
	.quad	0x3fe953005814940c              # double 0.79138200000000002
	.quad	0x3fa77e5eaab04253              # double 0.045886000000000003
	.quad	0x3fe74426351deefe              # double 0.72706899999999997
	.quad	0x3fef05bc01a36e2f              # double 0.96945000000000003
	.quad	0x3fe992d77318fc50              # double 0.79917499999999997
	.quad	0x3fe5896787ce95fb              # double 0.67302300000000004
	.quad	0x3fe46698bb4d4888              # double 0.63752399999999998
	.quad	0x3fe09e12a51e321a              # double 0.51929599999999998
	.quad	0x3fe8c77dd872f33d              # double 0.77435200000000004
	.quad	0x3fca8a265f0f5a10              # double 0.207341
	.quad	0x3fe2e2456f75d9a1              # double 0.59012100000000001
	.quad	0x3fe49ce4a7b4e54f              # double 0.64415199999999995
	.quad	0x3fcc06290eed02cd              # double 0.21893799999999999
	.quad	0x3fec07314ca925ff              # double 0.87587800000000005
	.quad	0x3fc040e9d51b4fe8              # double 0.12698100000000001
	.quad	0x3fe94628027d88c2              # double 0.78981400000000002
	.quad	0x3fed02eec7c957cd              # double 0.90660799999999997
	.quad	0x3feb6f1561911490              # double 0.85731000000000002
	.quad	0x3fed43dee78183f9              # double 0.91453499999999999
	.quad	0x3fc38140dd3fe197              # double 0.15238199999999999
	.quad	0x3fd58bb906466b1e              # double 0.33665299999999998
	.quad	0x3fc9faf42784a948              # double 0.20297100000000001
	.quad	0x3fe21fe21d96e9bc              # double 0.56639200000000001
	.quad	0x3fc8302b40f66a55              # double 0.18897
	.quad	0x3fe01dba908a265f              # double 0.50362899999999999
	.quad	0x3fea0a808c8259e2              # double 0.81378200000000001
	.quad	0x3fa22e3c536d655e              # double 0.035508999999999999
	.quad	0x3fd957082491afc0              # double 0.39593699999999998
	.quad	0x3fe9ea65cf67b1c0              # double 0.809863
	.quad	0x3fe21dda059a73b4              # double 0.56614399999999998
	.quad	0x3fe00f3882278d0d              # double 0.50185800000000003
	.quad	0x3fe1f3a797891e21              # double 0.56099299999999996
	.quad	0x3fe8272a7bd48cb5              # double 0.75478100000000004
	.quad	0x3fed8c111ada76d9              # double 0.92334799999999995
	.quad	0x3fe9b213e3e29308              # double 0.80298800000000004
	.quad	0x3fe0af8bdec5f395              # double 0.52142900000000003
	.quad	0x3fb9461b6d43d039              # double 0.098725999999999994
	.quad	0x3fe80f3882278d0d              # double 0.75185800000000003
	.quad	0x3fbbc4e2f37fbefd              # double 0.108473
	.quad	0x3fc66362a5e785b6              # double 0.17490800000000001
	.quad	0x3fee5d18090b417d              # double 0.94886400000000004
	.quad	0x3fdcc1a048e043a2              # double 0.449318
	.quad	0x3fa32e1693c03bc5              # double 0.037461000000000001
	.quad	0x3fb1dd8f92af9a8d              # double 0.069787000000000002
	.quad	0x3fe62456f75d9a0f              # double 0.691936
	.quad	0x3fe1769ec2ce464a              # double 0.54573000000000005
	.quad	0x3feceb24a6a875d5              # double 0.90370399999999995
	.quad	0x3feccf3fd933e35c              # double 0.90029899999999996
	.quad	0x3fc1198aeb80ecfa              # double 0.13359199999999999
	.quad	0x3fef2250f840181e              # double 0.972939
	.quad	0x3fec02c0a4a05dd9              # double 0.875336
	.quad	0x3fef02b841248d7e              # double 0.969082
	.quad	0x3fea35568e820e63              # double 0.81901100000000004
	.quad	0x3fb9e9af5ba2be06              # double 0.10122200000000001
	.quad	0x3fd33fc43b2dd378              # double 0.30076700000000001
	.quad	0x3f9fcc5b8dc55001              # double 0.031053000000000001
	.quad	0x3fe0a888b545c78a              # double 0.52057299999999995
	.quad	0x3f81c7de5082cf53              # double 0.0086820000000000004
	.quad	0x3fb37ccc03793144              # double 0.076122999999999996
	.quad	0x3fa5532617c1bda5              # double 0.04165
	.quad	0x3fdc8ceb356da017              # double 0.44610100000000003
	.quad	0x3fe0a7807789a459              # double 0.52044699999999999
	.quad	0x3fe3bc148344c37e              # double 0.61670899999999995
	.quad	0x3fd24e22a2c23748              # double 0.28601900000000002
	.quad	0x3fc60a9de8b3b320              # double 0.17219899999999999
	.quad	0x3fde914b167ec786              # double 0.47761799999999999
	.quad	0x3fd93cb81733226c              # double 0.39433099999999999
	.quad	0x3fe63a55d1c3ac93              # double 0.69462100000000004
	.quad	0x3fde4febd09e12a5              # double 0.47362799999999999
	.quad	0x3fc7d566cf41f213              # double 0.1862
	.quad	0x3fda10b1feeb2d0a              # double 0.40726899999999999
	.quad	0x3fd060999dcb5782              # double 0.25589600000000001
	.quad	0x3fee9c065b63d3e5              # double 0.95654600000000001
	.quad	0x3fb98b60f1b25f63              # double 0.099782999999999997
	.quad	0x3fbd321e603d5779              # double 0.11404599999999999
	.quad	0x3fcb12cadddf43c8              # double 0.211511
	.quad	0x3fe3b4edb2f661f2              # double 0.61583600000000005
	.quad	0x3fe01c36976bc1f0              # double 0.503444
	.quad	0x3fb69ee45c358afc              # double 0.088361999999999996
	.quad	0x3fd26145953586cb              # double 0.28718700000000003
	.quad	0x3feeaee84ad794a7              # double 0.958851
	.quad	0x3fe4968943e10060              # double 0.64337599999999995
	.quad	0x3f30e8858ff75968              # double 2.5799999999999998E-4
	.quad	0x3fdb4cd74927913f              # double 0.42656500000000003
	.quad	0x3fda91d14e3bcd36              # double 0.41515000000000002
	.quad	0x3fd3fde7210be942              # double 0.31237199999999998
	.quad	0x3fe6e3736cdf266c              # double 0.71526500000000004
	.quad	0x3fd5e8ea39c51dac              # double 0.34234100000000001
	.quad	0x3febf80baa582dbe              # double 0.87402899999999994
	.quad	0x3fc2fba8826aa8eb              # double 0.14830499999999999
	.quad	0x3fec384ba0e84274              # double 0.88187199999999998
	.quad	0x3fed14df8b157258              # double 0.90879799999999999
	.quad	0x3fe96d6ba8c58687              # double 0.79460699999999995
	.quad	0x3fdf22c01e68a0d3              # double 0.48649599999999998
	.quad	0x3fb262aa19439de5              # double 0.071818000000000007
	.quad	0x3fd6d61b2a27f1b7              # double 0.35681800000000002
	.quad	0x3fbfd7d3910c2c5e              # double 0.124387
	.quad	0x3fe6113a4f8726d0              # double 0.68960299999999997
	.quad	0x3fc3950331e3a7db              # double 0.15298500000000001
	.quad	0x3fc8827b6fe2e6eb              # double 0.19148200000000001
	.quad	0x3fc38383ad9f0a1c              # double 0.152451
	.quad	0x3fe73fa6defc7a3a              # double 0.72652000000000005
	.quad	0x3feaa31e7d9988d3              # double 0.83241200000000004
	.quad	0x3fdaaee631f8a090              # double 0.41692499999999999
	.quad	0x3fdfa7e308787486              # double 0.49462200000000001
	.quad	0x3fda0813cab81f97              # double 0.40674300000000002
	.quad	0x3fe9f15831f03d14              # double 0.81071099999999995
	.quad	0x3fecbc01a36e2eb2              # double 0.89795000000000003
	.quad	0x3fb8e65bea0ba1f5              # double 0.097265000000000004
	.quad	0x3fe63ae2541d8e86              # double 0.69468799999999997
	.quad	0x3fe71a8049667b5f              # double 0.72198499999999999
	.quad	0x3fe9e0bd44998d04              # double 0.80868399999999995
	.quad	0x3fe3f04bc27631b6              # double 0.62308300000000005
	.quad	0x3fe40997c3d68406              # double 0.62617100000000003
	.quad	0x3fe4b25b317efe0d              # double 0.64677200000000001
	.quad	0x3fbb3cc4ac6cdaf5              # double 0.106396
	.quad	0x3fe384f8f8a4c1ec              # double 0.60998200000000002
	.quad	0x3fecdf633ce63a5c              # double 0.90226899999999998
	.quad	0x3fd8ecc3e3193f6c              # double 0.38945099999999999
	.quad	0x3fed67ea5f84cad5              # double 0.91893499999999995
	.quad	0x3fe5f355cd91eeaa              # double 0.68595399999999995
	.quad	0x3fedf09d8c6d612c              # double 0.93562199999999995
	.quad	0x3fc739da16616b55              # double 0.181453
	.quad	0x3feb079e59f2ba9d              # double 0.84467999999999999
	.quad	0x3fabf7ad4b2745bf              # double 0.054623999999999999
	.quad	0x3feddd206c8711d8              # double 0.93324300000000004
	.quad	0x3fee8ad03d9a9542              # double 0.95444499999999999
	.quad	0x3feb45dc8323358f              # double 0.85227799999999998
	.quad	0x3fde199bb2788db0              # double 0.47031299999999998
	.quad	0x3fee90ff97247454              # double 0.95520000000000004
	.quad	0x3fd81871e6cd2913              # double 0.37649199999999999
	.quad	0x3fed635610adcd2d              # double 0.91837599999999997
	.quad	0x3fc99830e3cd9a52              # double 0.199957
	.quad	0x3fec0e820e629952              # double 0.87677099999999997
	.quad	0x3fb457f3061c79b3              # double 0.079466999999999996
	.quad	0x3fe09b9b66f9335d              # double 0.51899499999999998
	.quad	0x3fe8323358f2e05d              # double 0.75612800000000002
	.quad	0x3fe019a1fd1569f5              # double 0.50312900000000005
	.quad	0x3fef1357603925bb              # double 0.97111099999999994
	.quad	0x3fe0a75cd0bb6ed6              # double 0.52042999999999995
	.quad	0x3fb928283d35eb74              # double 0.098268999999999995
	.quad	0x3fa314ec204f2ae0              # double 0.037268999999999997
	.quad	0x3fd301797cc39ffd              # double 0.29696499999999998
	.quad	0x3fc0a04d12018a44              # double 0.12989200000000001
	.quad	0x3fc41711947cfa27              # double 0.15695400000000001
	.quad	0x3fecd4866a11ec92              # double 0.90094300000000005
	.quad	0x3fec3e6e653868fd              # double 0.88262099999999999
	.quad	0x3fd25c28f5c28f5c              # double 0.28687499999999999
	.quad	0x3fe4bc18b502abac              # double 0.64796100000000001
	.quad	0x3fe2bca1059ea572              # double 0.58552599999999999
	.quad	0x3f95c4651f3e89a9              # double 0.021257000000000002
	.quad	0x3fe1e0dcb9a9da59              # double 0.55869899999999995
	.quad	0x3fdb8db0574b4070              # double 0.43052299999999999
	.quad	0x3fd4e6c8f7553693              # double 0.32658599999999999
	.quad	0x3fd602a77a2cecc8              # double 0.343912
	.quad	0x3fc867168f8e7ddd              # double 0.19064600000000001
	.quad	0x3fdcb02d59d55e6c              # double 0.44825300000000001
	.quad	0x3fed599cbee807bc              # double 0.91718900000000003
	.quad	0x3fd35219a847b246              # double 0.30188599999999999
	.quad	0x3fcb8d5842b734b5              # double 0.215251
	.quad	0x3fef17b0f6ad70e7              # double 0.971642
	.quad	0x3fe97d1dcd7060bb              # double 0.79652299999999998
	.quad	0x3fe39248d7e02646              # double 0.61160700000000001
	.quad	0x3fd93c9eecbfb15b              # double 0.39432499999999998
	.quad	0x3fec5c9c4da9003f              # double 0.88630500000000001
	.quad	0x3feb083126e978d5              # double 0.84475
	.quad	0x3fef3f1c75818c5d              # double 0.97645400000000004
	.quad	0x3fb3a6efc371da38              # double 0.076766000000000001
	.quad	0x3fd63760bf5d7881              # double 0.34712999999999999
	.quad	0x3fda7064ece9a2c6              # double 0.41310999999999998
	.quad	0x3fea331e3a7daa50              # double 0.81874000000000002
	.quad	0x3fea84a0e410b631              # double 0.82869000000000004
	.quad	0x3fdeabc0e38a7e74              # double 0.47923300000000002
	.quad	0x3fe69392189bd838              # double 0.70551399999999997
	.quad	0x3fefa43bb40b34e7              # double 0.98879799999999995
	.quad	0x3fd312ec6bce8534              # double 0.29803000000000002
	.quad	0x3fd7e279dd3bafd9              # double 0.37319799999999997
	.quad	0x3fa50a67620ee8d1              # double 0.041095
	.quad	0x3fee8123810e8859              # double 0.953264
	.quad	0x3fdf339c0ebedfa4              # double 0.48752499999999999
	.quad	0x3fd2675ddd2ae8e2              # double 0.28755900000000001
	.quad	0x3f8a109d0635a427              # double 0.012727
	.quad	0x3feb3a3ec02f2f98              # double 0.85085999999999995
	.quad	0x3fee24ca4f440af2              # double 0.94199100000000002
	.quad	0x3fd2fadafd113837              # double 0.29656100000000002
	.quad	0x3fb2bd3c36113405              # double 0.073200000000000001
	.quad	0x3fa585dfa871a3b1              # double 0.042036999999999998
	.quad	0x3feab8aa00192a73              # double 0.83504199999999995
	.quad	0x3fdd0852b4d8ba41              # double 0.45363300000000001
	.quad	0x3fd80f6f08cc575c              # double 0.375942
	.quad	0x3fd9fb6134ce3de6              # double 0.405968
	.quad	0x3fe4599cbee807bc              # double 0.63593900000000003
	.quad	0x3fd4980f55de58e6              # double 0.32178099999999998
	.quad	0x3fc0a2120e1f7d74              # double 0.12994600000000001
	.quad	0x3fd3a897635e742a              # double 0.30716500000000002
	.quad	0x3fd0bd2b6f19934f              # double 0.261546
	.quad	0x3faa2120e1f7d73d              # double 0.051034000000000003
	.quad	0x3fdb21294573a798              # double 0.42389900000000003
	.quad	0x3fe2812dfd694ccb              # double 0.57826900000000003
	.quad	0x3fdff3387160956c              # double 0.49922
	.quad	0x3fe5ee6106ab14ec              # double 0.68534899999999999
	.quad	0x3feb617a02fb5d03              # double 0.85564899999999999
	.quad	0x3fe5eb78897e9963              # double 0.68499399999999999
	.quad	0x3fe1c358afc47e4a              # double 0.55509600000000003
	.quad	0x3fd3fcac8e68e3ef              # double 0.31229699999999999
	.quad	0x3fe109d0635a426c              # double 0.53244800000000003
	.quad	0x3fe701cb46bacf74              # double 0.71896899999999997
	.quad	0x3fee6705c896dd27              # double 0.95007600000000003
	.quad	0x3fcfd07c84b5dcc6              # double 0.24854999999999999
	.quad	0x3fea5a187a4a48f9              # double 0.82349799999999995
	.quad	0x3fd07fe8ee6b8306              # double 0.25780700000000001
	.quad	0x3fd21e7967caea74              # double 0.28310999999999997
	.quad	0x3fea4dec1c1d6cf8              # double 0.82201199999999996
	.quad	0x3fe4306e5cd4ed2d              # double 0.63091200000000003
	.quad	0x3fe5b96f21f6cacd              # double 0.67888599999999999
	.quad	0x3fe16744b2b777d1              # double 0.54385600000000001
	.quad	0x3fdc8c1db0142f62              # double 0.446052
	.quad	0x3faef30a4e379b78              # double 0.060448000000000002
	.quad	0x3fd08bf7f06705c9              # double 0.25854300000000002
	.quad	0x3fedab5c39bcba30              # double 0.92716799999999999
	.quad	0x3feba0a30db6a1e8              # double 0.86335899999999999
	.quad	0x3fe3b76f6d762520              # double 0.61614199999999997
	.quad	0x3fe3fbce4217d285              # double 0.62448800000000004
	.quad	0x3fca5e4e69f05ea2              # double 0.20600299999999999
	.quad	0x3fe576c8b4395810              # double 0.67074999999999996
	.quad	0x3fe1ddf00abf76a3              # double 0.558342
	.quad	0x3feb19fa11a975b0              # double 0.84692100000000003
	.quad	0x3fcf8e29f9ce8d97              # double 0.246526
	.quad	0x3fde342edbb59ddc              # double 0.47193499999999999
	.quad	0x3fe19be4cd749279              # double 0.55027999999999999
	.quad	0x3febd938151a4378              # double 0.87026599999999998
	.quad	0x3fe11389b52007dd              # double 0.53363499999999997
	.quad	0x3fe598ac9f2fdb90              # double 0.67488700000000001
	.quad	0x3f92c1f42bb66730              # double 0.018318000000000001
	.quad	0x3fedf08ede54b48d              # double 0.93561499999999997
	.quad	0x3feb850374ff865d              # double 0.85998699999999995
	.quad	0x3fcb524bfd2e9468              # double 0.213449
	.quad	0x3fe1f93bc0a06ea0              # double 0.56167400000000001
	.quad	0x3fcb8327674d1633              # double 0.21493999999999999
	.quad	0x3fbe0535c9e6687f              # double 0.117267
	.quad	0x3fd680e496ededaf              # double 0.35161700000000001
	.quad	0x3fa8e4da09cc319c              # double 0.048620999999999998
	.quad	0x3fd7e1e2de870974              # double 0.37316199999999999
	.quad	0x3fad592d98bf7f06              # double 0.057320999999999997
	.quad	0x3feecece9a2c6690              # double 0.96274499999999996
	.quad	0x3fe172a5a469d734              # double 0.54524499999999998
	.quad	0x3fd950a45d41fa76              # double 0.39554699999999998
	.quad	0x3fe3c8e043a21640              # double 0.61827100000000002
	.quad	0x3fd34b44a1f08030              # double 0.30146899999999999
	.quad	0x3fdd8ccdd93c46d8              # double 0.46171899999999999
	.quad	0x3fe193b3a68b19a4              # double 0.54927999999999999
	.quad	0x3fdb9d8c6d612c6b              # double 0.43149100000000001
	.quad	0x3fbf0d844d013a93              # double 0.12130000000000001
	.quad	0x3fd170b8cfbfc654              # double 0.272505
	.quad	0x3fa929ed3953dea4              # double 0.049147999999999997
	.quad	0x3fe211ff7164c72a              # double 0.564697
	.quad	0x3fd96b26bf8769ec              # double 0.39716499999999999
	.quad	0x3fc076c050bd87b5              # double 0.12862399999999999
	.quad	0x3fcfa74c09c3ce21              # double 0.24729300000000001
	.quad	0x3fec4d48882f0e0b              # double 0.88443400000000005
	.quad	0x3f941bb8c32a8c9c              # double 0.019637000000000002
	.quad	0x3fddec95bff04578              # double 0.46756500000000001
	.quad	0x3fd6fdfc19c17226              # double 0.35925200000000002
	.quad	0x3fdad83c6c97d8cf              # double 0.41944799999999999
	.quad	0x3f86ddaceee0f3cb              # double 0.011165
	.quad	0x3feab2b3461309c8              # double 0.834314
	.quad	0x3feaf18a86d71f36              # double 0.84198499999999998
	.quad	0x3fe8cccab3edd8b6              # double 0.77499899999999999
	.quad	0x3fe0efae7924af0c              # double 0.52925800000000001
	.quad	0x3fc4b8b69552e2fc              # double 0.161887
	.quad	0x3fdc9b77c02afddb              # double 0.44698900000000003
	.quad	0x3fed2ccf6be37de9              # double 0.91171999999999997
	.quad	0x3fdb8e9b38d60a63              # double 0.43057899999999999
	.quad	0x3fd05cf2495e17e3              # double 0.25567299999999998
	.quad	0x3fd45f84cad57bc8              # double 0.31833
	.quad	0x3fee906cca2db61c              # double 0.95513000000000003
	.quad	0x3fd01b089a027525              # double 0.25164999999999998
	.quad	0x3fc65375c8d9f905              # double 0.17442199999999999
	.quad	0x3fec05b18548a9bd              # double 0.875695
	.quad	0x3fe2a072d1aeb3dd              # double 0.58208599999999999
	.quad	0x3fe2dc981beb1811              # double 0.58942799999999995
	.quad	0x3fd127631b584b1b              # double 0.26802900000000002
	.quad	0x3fed01ba7fc32ebe              # double 0.90646099999999996
	.quad	0x3fecaef4e0114d2f              # double 0.89635699999999996
	.quad	0x3feb1d0c80410300              # double 0.84729600000000005
	.quad	0x3fd48240b780346e              # double 0.32045000000000001
	.quad	0x3fec68cef672b884              # double 0.88779399999999997
	.quad	0x3fcf458cd20afa2f              # double 0.24431
	.quad	0x3fc0a5269595feda              # double 0.13003999999999999
	.quad	0x3fe7c8b220791c4c              # double 0.74324900000000005
	.quad	0x3fe77ca2120e1f7d              # double 0.73396399999999995
	.quad	0x3fe04964628027d9              # double 0.50895900000000005
	.quad	0x3fe633eff1950332              # double 0.69384000000000001
	.quad	0x3feb7f43419e3001              # double 0.85928499999999997
	.quad	0x3fd8720c8cd63cb8              # double 0.38196099999999999
	.quad	0x3fe048216c61522a              # double 0.50880499999999995
	.quad	0x3fed6ed8904f6dfc              # double 0.91978099999999995
	.quad	0x3fed12e1ef73c0c2              # double 0.908555
	.quad	0x3fdb795b35b0bbf5              # double 0.429282
	.quad	0x3fe68cac4b4d056c              # double 0.70467199999999997
	.quad	0x3fc405681ecd4aa1              # double 0.156415
	.quad	0x3fc50446b69db65f              # double 0.16419300000000001
	.quad	0x3fd5743632c1f42c              # double 0.33521800000000002
	.quad	0x3fe8577531db445f              # double 0.76067600000000002
	.quad	0x3fde294573a79789              # double 0.47126899999999999
	.quad	0x3fe8ef08cc575c07              # double 0.77917899999999995
	.quad	0x3fdf7c1376d54973              # double 0.491948
	.quad	0x3feae10f0e90bc7b              # double 0.83997299999999997
	.quad	0x3fe88950763a1901              # double 0.76676200000000005
	.quad	0x3fed509e12a51e32              # double 0.91609099999999999
	.quad	0x3fc368f08461f9f0              # double 0.15164
	.quad	0x3fd53ab862b27cbf              # double 0.33170899999999998
	.quad	0x3fefbc792d1287c2              # double 0.991757
	.quad	0x3fe36b4a66559f6f              # double 0.60684700000000003
	.quad	0x3fe2b2e9ccb7d417              # double 0.58433999999999997
	.quad	0x3fd2de050374ff86              # double 0.29480099999999998
	.quad	0x3fcb741d084e831b              # double 0.214481
	.quad	0x3fbf1758e219652c              # double 0.12145
	.quad	0x3fe0a75cd0bb6ed6              # double 0.52042999999999995
	.quad	0x3feedb5fa22706d5              # double 0.96427899999999999
	.quad	0x3fdb4091c087442c              # double 0.42581599999999997
	.quad	0x3fe51da16616b54e              # double 0.65986699999999998
	.quad	0x3fd5b224aada33be              # double 0.33899800000000002
	.quad	0x3fee02ecaeea63b7              # double 0.93785700000000005
	.quad	0x3fe97b95a294141f              # double 0.79633600000000004
	.quad	0x3fe47b30f8c64fdb              # double 0.640038
	.quad	0x3fdd486f049a9974              # double 0.45754600000000001
	.quad	0x3fe0734f82f51266              # double 0.51407599999999998
	.quad	0x3fddba7fc32ebe59              # double 0.46450799999999998
	.quad	0x3fed0dcb9a9da598              # double 0.90793400000000002
	.quad	0x3fd8f340d4dc65c7              # double 0.389847
	.quad	0x3fa6ddf00abf76a3              # double 0.044662
	.quad	0x3fe4ce09784ec637              # double 0.65015100000000003
	.quad	0x3fe5cf0d844d013b              # double 0.68152500000000005
	.quad	0x3fbf1172ef0ae536              # double 0.12136
	.quad	0x3fd823d0bfa09460              # double 0.37718600000000002
	.quad	0x3fdc96b76709fa55              # double 0.44669900000000001
	.quad	0x3fbb3343fa2ad3e9              # double 0.106251
	.quad	0x3fc453543aeab799              # double 0.15879299999999999
	.quad	0x3fe1577fae3608d1              # double 0.54193100000000005
	.quad	0x3fee0897e996312f              # double 0.93854899999999997
	.quad	0x3fea5477bbf93ff2              # double 0.82281099999999996
	.quad	0x3fe2fc9363f572de              # double 0.59333199999999997
	.quad	0x3fc10d6b228dc982              # double 0.13322200000000001
	.quad	0x3fc0eaa6d2674081              # double 0.132161
	.quad	0x3fef28d002e23290              # double 0.97373200000000004
	.quad	0x3fe6c1e9af5ba2be              # double 0.711171
	.quad	0x3fa1042d8c2a454e              # double 0.033235000000000001
	.quad	0x3fe386fef7c243dd              # double 0.61022900000000002
	.quad	0x3fefff4128bf3beb              # double 0.99990900000000004
	.quad	0x3fdce1deacc92147              # double 0.45128600000000002
	.quad	0x3fde3f572de43ed9              # double 0.47261599999999998
	.quad	0x3fa2a68f4b61fe22              # double 0.036427000000000001
	.quad	0x3fd70470a808c826              # double 0.35964600000000002
	.quad	0x3fbd7214f0520d13              # double 0.115022
	.quad	0x3fb9682f944241c4              # double 0.099246
	.quad	0x3fe5cca70d1fa333              # double 0.68123199999999995
	.quad	0x3feee4b2314013ec              # double 0.96541699999999996
	.quad	0x3fee8fc0d2c386d3              # double 0.95504800000000001
	.quad	0x3fe6edfa43fe5c92              # double 0.71655000000000002
	.quad	0x3fb005814940bbb2              # double 0.062584000000000001
	.quad	0x3fe088e9b38d60a6              # double 0.51671299999999998
	.quad	0x3fd2d29dc725c3df              # double 0.29410500000000001
	.quad	0x3feec3aa79bbadc1              # double 0.96138500000000004
	.quad	0x3fef559f6ec5b079              # double 0.97920200000000001
	.quad	0x3fc2831ad2135dab              # double 0.144626
	.quad	0x3fa97f84449dbec2              # double 0.049800999999999998
	.quad	0x3fe9d4434e3369ba              # double 0.80716100000000002
	.quad	0x3fd452f3c2dadb83              # double 0.31756299999999998
	.quad	0x3febb54c122749f1              # double 0.86588100000000001
	.quad	0x3fe7538476f2a5a4              # double 0.72894499999999995
	.quad	0x3fec5ad106ee30cb              # double 0.88608600000000004
	.quad	0x3fd700eae18ac9f3              # double 0.359431
	.quad	0x3fed2a19439de482              # double 0.911389
	.quad	0x3fe673083558a761              # double 0.701542
	.quad	0x3fd37214f0520d13              # double 0.303838
	.quad	0x3fdaefae7924af0c              # double 0.420879
	.quad	0x3feeaeff5c6c11a1              # double 0.95886199999999999
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	50                              # 0x32
	.quad	100                             # 0x64
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	200                             # 0xc8
	.quad	200                             # 0xc8
	.quad	250                             # 0xfa
	.quad	250                             # 0xfa
	.quad	300                             # 0x12c
	.quad	300                             # 0x12c
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	400                             # 0x190
	.quad	400                             # 0x190
	.quad	450                             # 0x1c2
	.quad	450                             # 0x1c2
	.quad	500                             # 0x1f4
	.quad	500                             # 0x1f4
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	650                             # 0x28a
	.quad	650                             # 0x28a
	.quad	700                             # 0x2bc
	.quad	700                             # 0x2bc
	.quad	750                             # 0x2ee
	.quad	750                             # 0x2ee
	.quad	800                             # 0x320
	.quad	800                             # 0x320
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	900                             # 0x384
	.quad	900                             # 0x384
	.quad	950                             # 0x3b6
	.quad	950                             # 0x3b6
	.quad	1000                            # 0x3e8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1050                            # 0x41a
	.quad	1100                            # 0x44c
	.quad	1100                            # 0x44c
	.quad	1150                            # 0x47e
	.quad	1150                            # 0x47e
	.quad	1200                            # 0x4b0
	.quad	1200                            # 0x4b0
	.quad	1250                            # 0x4e2
	.quad	1250                            # 0x4e2
	.quad	1300                            # 0x514
	.quad	1300                            # 0x514
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1400                            # 0x578
	.quad	1400                            # 0x578
	.quad	1450                            # 0x5aa
	.quad	1450                            # 0x5aa
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.quad	1550                            # 0x60e
	.quad	1550                            # 0x60e
	.quad	1600                            # 0x640
	.quad	1600                            # 0x640
	.quad	1650                            # 0x672
	.quad	1650                            # 0x672
	.quad	1700                            # 0x6a4
	.quad	1700                            # 0x6a4
	.quad	1750                            # 0x6d6
	.quad	1750                            # 0x6d6
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1900                            # 0x76c
	.quad	1900                            # 0x76c
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
	.quad	2000                            # 0x7d0
	.quad	2000                            # 0x7d0
	.quad	2050                            # 0x802
	.quad	2050                            # 0x802
	.quad	2100                            # 0x834
	.quad	2100                            # 0x834
	.quad	2150                            # 0x866
	.quad	2150                            # 0x866
	.quad	2200                            # 0x898
	.quad	2200                            # 0x898
	.quad	2250                            # 0x8ca
	.quad	2250                            # 0x8ca
	.quad	2300                            # 0x8fc
	.quad	2300                            # 0x8fc
	.quad	2350                            # 0x92e
	.quad	2350                            # 0x92e
	.quad	2400                            # 0x960
	.quad	2400                            # 0x960
	.quad	2450                            # 0x992
	.quad	2450                            # 0x992
	.quad	2500                            # 0x9c4
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
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
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_2500xf64, 20000

	.section	".note.GNU-stack","",@progbits
