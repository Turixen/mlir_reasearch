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
	.quad	0x3fc80ce0b912dba5              # double 0.187893
	.quad	0x3feead948dc11e43              # double 0.95868900000000001
	.quad	0x3fd0c51dabe2717a              # double 0.26203100000000001
	.quad	0x3fded52c16df3f96              # double 0.48176099999999999
	.quad	0x3fdf81ba7fc32ebe              # double 0.49229299999999998
	.quad	0x3f8db76b3bb83cf3              # double 0.01451
	.quad	0x3feebb341e14bdfd              # double 0.96035199999999998
	.quad	0x3fd19f90539fba45              # double 0.275364
	.quad	0x3fed9ad2135daad6              # double 0.925149
	.quad	0x3fd00f01fb82c2bd              # double 0.25091599999999997
	.quad	0x3fc21b4bb5e0f7fd              # double 0.141458
	.quad	0x3fe30dd1e53a81dc              # double 0.59543699999999999
	.quad	0x3feb461522a6f3f5              # double 0.85230499999999998
	.quad	0x3facfbfc6540cc79              # double 0.056610000000000001
	.quad	0x3fdbb59146e4c0df              # double 0.43295699999999998
	.quad	0x3fe4a6bb55ac03ff              # double 0.64535299999999995
	.quad	0x3fdbe94ee392e1ef              # double 0.43611499999999997
	.quad	0x3fe9eb4c7f349386              # double 0.80997300000000005
	.quad	0x3feb9719f7f8ca82              # double 0.86219500000000004
	.quad	0x3fc18665e02ea961              # double 0.13691400000000001
	.quad	0x3fe231f255f3519c              # double 0.56859700000000002
	.quad	0x3fe0b4c7f3493858              # double 0.52206799999999998
	.quad	0x3fcdcb1465e89225              # double 0.23275999999999999
	.quad	0x3fd650507a6bd6e9              # double 0.34865200000000002
	.quad	0x3fe86b8305d95dd5              # double 0.76312400000000002
	.quad	0x3fdcba5a038194c0              # double 0.448874
	.quad	0x3fd3f3882278d0cc              # double 0.31173899999999999
	.quad	0x3fe80bd87b56b873              # double 0.75144599999999995
	.quad	0x3fea52f3c2dadb83              # double 0.82262599999999997
	.quad	0x3fe7c1b328b6d86f              # double 0.74239500000000003
	.quad	0x3f9b1d92b7fe08af              # double 0.02648
	.quad	0x3fedbad18d25edd0              # double 0.92905499999999996
	.quad	0x3fd28d2a1f8e3ac1              # double 0.28986600000000001
	.quad	0x3fef44284dfce315              # double 0.97706999999999999
	.quad	0x3fbed98bf7f06706              # double 0.120507
	.quad	0x3fd884662bae03b4              # double 0.383081
	.quad	0x3fd4ef8487b99d45              # double 0.32711899999999999
	.quad	0x3fee3cf4e874c900              # double 0.94494100000000003
	.quad	0x3fd3171e29b6b2af              # double 0.298286
	.quad	0x3fd6794ea077036d              # double 0.35115400000000002
	.quad	0x3fddf53c579f2346              # double 0.46809299999999998
	.quad	0x3fe3a1ff2e48e8a7              # double 0.61352499999999999
	.quad	0x3fe131d2e0e30447              # double 0.53733200000000003
	.quad	0x3fdb2da122fad6cb              # double 0.42465999999999998
	.quad	0x3fe1510b1feeb2d1              # double 0.54114300000000004
	.quad	0x3fcc880d801b4352              # double 0.22290199999999999
	.quad	0x3fd5f5ec80c73abd              # double 0.34313500000000002
	.quad	0x3fc310d38cda6e76              # double 0.148951
	.quad	0x3fed2e8e1d6494d5              # double 0.91193299999999999
	.quad	0x3fec5d4e8fb00bcc              # double 0.88639000000000001
	.quad	0x3fe4d5c0fcb4f1e5              # double 0.65109300000000003
	.quad	0x3fdbc83ec892ab69              # double 0.43409700000000001
	.quad	0x3fb098d477bbf940              # double 0.064832000000000001
	.quad	0x3fe61752977c88e8              # double 0.69034700000000004
	.quad	0x3fe14473cd573648              # double 0.53960600000000003
	.quad	0x3fdd5fe974a3400c              # double 0.45897900000000003
	.quad	0x3fdbc679cc74b839              # double 0.43398900000000001
	.quad	0x3fb087229e90795f              # double 0.064561999999999994
	.quad	0x3fc77cd466f5019f              # double 0.18349699999999999
	.quad	0x3fdb071c53f39d1b              # double 0.42230899999999999
	.quad	0x3fefde28aa433509              # double 0.995869
	.quad	0x3fe240fcb4f1e4b4              # double 0.57043299999999997
	.quad	0x3fc1b34a44c7b02d              # double 0.13828399999999999
	.quad	0x3fe74940bbb1f256              # double 0.72769200000000001
	.quad	0x3fe7d22a6f3f52fc              # double 0.74440499999999998
	.quad	0x3fe4481d3aa369fd              # double 0.63380300000000001
	.quad	0x3fead3e0bd44998d              # double 0.838364
	.quad	0x3fde28c36da87a07              # double 0.47123799999999999
	.quad	0x3fcb450efdc9c4db              # double 0.21304500000000001
	.quad	0x3fef22467be553ac              # double 0.97293399999999996
	.quad	0x3fd1f950b955f783              # double 0.28084199999999998
	.quad	0x3fe8f34938583622              # double 0.779698
	.quad	0x3fde3d3a1d323fee              # double 0.47248699999999999
	.quad	0x3fe7704ff43419e3              # double 0.73246
	.quad	0x3fb7d04a2fcefaa4              # double 0.093021999999999994
	.quad	0x3fdaf63c31df761d              # double 0.42127900000000001
	.quad	0x3fed9148fd9fd36f              # double 0.92398499999999995
	.quad	0x3fb0ace24bba12b6              # double 0.065138000000000001
	.quad	0x3f932ca57a786c22              # double 0.018724999999999999
	.quad	0x3fd437b07075b3e1              # double 0.31589899999999999
	.quad	0x3fec5495182a9931              # double 0.88532500000000003
	.quad	0x3fe4af4adbc664d4              # double 0.64639800000000003
	.quad	0x3feeedaec4a4095f              # double 0.96651399999999998
	.quad	0x3fdd81d3aa369fcf              # double 0.46104899999999999
	.quad	0x3fc0ef566490a351              # double 0.132304
	.quad	0x3fbbebe1650a45d4              # double 0.109068
	.quad	0x3fe72d7f950b955f              # double 0.72430399999999995
	.quad	0x3fe426e32e3821af              # double 0.62974699999999995
	.quad	0x3fb308feac42e98a              # double 0.074356000000000005
	.quad	0x3fd54af0bf1a5ca3              # double 0.33269900000000002
	.quad	0x3fe3a1b3aeee9574              # double 0.61348899999999995
	.quad	0x3fdfefc371da37ef              # double 0.49900899999999998
	.quad	0x3fde0a1be2b4959e              # double 0.46936699999999998
	.quad	0x3fd76ac647778dd6              # double 0.365892
	.quad	0x3fd66f19934efcbd              # double 0.35053099999999998
	.quad	0x3fdacd35a858793e              # double 0.41877500000000001
	.quad	0x3fbc5f17bd8be729              # double 0.11082599999999999
	.quad	0x3fe47b07075b3e14              # double 0.64001799999999998
	.quad	0x3fd1f2f555821294              # double 0.28045399999999998
	.quad	0x3fbbf2e48e8a71de              # double 0.10917499999999999
	.quad	0x3f9be76c8b439581              # double 0.02725
	.quad	0x3fd763c31df761cc              # double 0.36546400000000001
	.quad	0x3fe571dc50ce4ead              # double 0.67014899999999999
	.quad	0x3fe89eb4202d9cf1              # double 0.76937299999999997
	.quad	0x3fd44577d955714c              # double 0.31674000000000002
	.quad	0x3fd73f67f4dbdf8f              # double 0.36324499999999998
	.quad	0x3fadf88fc9363f57              # double 0.058536999999999999
	.quad	0x3fe63a2163fdd65a              # double 0.69459599999999999
	.quad	0x3fe93f0dc768dfbd              # double 0.78894699999999995
	.quad	0x3fb02ce4649906cd              # double 0.063185000000000005
	.quad	0x3fedabf338716095              # double 0.92723999999999995
	.quad	0x3fa5ac258d5842b7              # double 0.042328999999999999
	.quad	0x3fee6ca46e08f217              # double 0.950762
	.quad	0x3fddd790752da986              # double 0.46628199999999997
	.quad	0x3feb1ca18bd66278              # double 0.84724500000000003
	.quad	0x3fd6df761cbccf29              # double 0.35738900000000001
	.quad	0x3feb3864cb5bb385              # double 0.850634
	.quad	0x3fc327243137b070              # double 0.14963199999999999
	.quad	0x3fe1a031ceaf251c              # double 0.55080499999999999
	.quad	0x3fe9faa25d8d79d1              # double 0.81184500000000004
	.quad	0x3fe3f449129888f8              # double 0.62356999999999996
	.quad	0x3fc5368ad6883772              # double 0.16572700000000001
	.quad	0x3fd7c1eff9f87f02              # double 0.37121199999999999
	.quad	0x3fc276640a6b93cd              # double 0.14423800000000001
	.quad	0x3fe9e1ef73c0c1fd              # double 0.80883000000000005
	.quad	0x3fdd1c3265add9c2              # double 0.45484599999999997
	.quad	0x3fc49d0635a426bb              # double 0.16104199999999999
	.quad	0x3fe8b05b7cfe5860              # double 0.77152799999999999
	.quad	0x3fd270de8f6cefed              # double 0.28813899999999998
	.quad	0x3fe7116440f23897              # double 0.72087299999999999
	.quad	0x3fe7f98fa376922e              # double 0.74921400000000005
	.quad	0x3fe3c477ff151e75              # double 0.61773299999999998
	.quad	0x3fdb3d20f2becedd              # double 0.42560599999999998
	.quad	0x3fbb93dd97f62b6b              # double 0.107725
	.quad	0x3fde014b599aa609              # double 0.468829
	.quad	0x3fe721e1d2178f69              # double 0.72288600000000003
	.quad	0x3fd64fe36d22424a              # double 0.34862599999999999
	.quad	0x3fdc45d41fa76534              # double 0.44176199999999999
	.quad	0x3fc6e4fb97bb7308              # double 0.17886299999999999
	.quad	0x3fb2f459d99029ae              # double 0.074040999999999996
	.quad	0x3fdfefed634549b6              # double 0.49901899999999999
	.quad	0x3fdb585be1a82624              # double 0.42726799999999998
	.quad	0x3fe7f0739b024f66              # double 0.74810200000000004
	.quad	0x3fc07aaef2c73259              # double 0.128744
	.quad	0x3fb1a469d7342edc              # double 0.068915000000000004
	.quad	0x3fd60f062d40aaeb              # double 0.344667
	.quad	0x3fd2b6fe2e6ea854              # double 0.29241899999999998
	.quad	0x3fd4985ad538ac19              # double 0.321799
	.quad	0x3fd6a786c226809d              # double 0.35397499999999998
	.quad	0x3fe16a619da9c993              # double 0.54423600000000005
	.quad	0x3fe70d49949e8816              # double 0.72037200000000001
	.quad	0x3fb09b413986338b              # double 0.064868999999999996
	.quad	0x3fd85f8d2e514c23              # double 0.380832
	.quad	0x3fcb208e15011905              # double 0.21193100000000001
	.quad	0x3feecc447c30d307              # double 0.96243500000000004
	.quad	0x3fdb074a771c970f              # double 0.42231999999999997
	.quad	0x3fee5f394b7b2895              # double 0.94912399999999997
	.quad	0x3fd18ef77f27fe4c              # double 0.27435100000000001
	.quad	0x3fd79f7f8ca8198f              # double 0.36910999999999999
	.quad	0x3fe41c6f36ef8056              # double 0.628471
	.quad	0x3fda3f141205bc02              # double 0.41010000000000002
	.quad	0x3fd0d5885d31337f              # double 0.26303300000000002
	.quad	0x3fefea6c1a048e04              # double 0.99736599999999997
	.quad	0x3fee0691ea78af3e              # double 0.93830199999999997
	.quad	0x3fe292a0ec743201              # double 0.580399
	.quad	0x3fca1c0ca600b029              # double 0.203981
	.quad	0x3fbed22424a276b8              # double 0.120394
	.quad	0x3fd1feb074a771c9              # double 0.28116999999999998
	.quad	0x3fd04f440af1cb8a              # double 0.25483800000000001
	.quad	0x3fcfdedf1e0828c3              # double 0.24898899999999999
	.quad	0x3fe0ad905c033615              # double 0.52118699999999996
	.quad	0x3fe0dc63ae2541d9              # double 0.52690300000000001
	.quad	0x3fc5af74cd31769b              # double 0.16941700000000001
	.quad	0x3feb243dccea28fe              # double 0.84817399999999998
	.quad	0x3fefd2c59fb1e18f              # double 0.994479
	.quad	0x3fe68c8472c0e7bc              # double 0.70465299999999997
	.quad	0x3fe66eeb702602c9              # double 0.70104
	.quad	0x3fd373eee5258927              # double 0.30395100000000003
	.quad	0x3fd278af3e468cac              # double 0.28861599999999998
	.quad	0x3fda92f6e82949a5              # double 0.41521999999999998
	.quad	0x3fe6a19eb6390c91              # double 0.707229
	.quad	0x3fe3aac53b0813cb              # double 0.61459600000000003
	.quad	0x3fbadb50f40e5a36              # double 0.104909
	.quad	0x3fe7e43ed959a30a              # double 0.74661200000000005
	.quad	0x3fdfd199bb2788db              # double 0.497168
	.quad	0x3feb2dfb506dd69d              # double 0.84936299999999998
	.quad	0x3fc339eadd590c0b              # double 0.15020500000000001
	.quad	0x3fdc0d349be8ff32              # double 0.43830599999999997
	.quad	0x3fec627179bfdf7f              # double 0.88701700000000006
	.quad	0x3fe61e85fd04a2fd              # double 0.69122600000000001
	.quad	0x3fe5bcddd6e04c06              # double 0.67930500000000005
	.quad	0x3fe64db7ae5796c0              # double 0.69698700000000002
	.quad	0x3fd7e2b8c75c4a84              # double 0.37321300000000002
	.quad	0x3fdc0eb67c286f8b              # double 0.43839800000000001
	.quad	0x3fc46c1a048e043a              # double 0.159549
	.quad	0x3fe0ea35935fc3b5              # double 0.52859
	.quad	0x3feeaea960b6f9fd              # double 0.95882100000000003
	.quad	0x3fdab25f633ce63a              # double 0.41713699999999998
	.quad	0x3fe9bbb40b34e768              # double 0.80416299999999996
	.quad	0x3fe20fd7e45803cd              # double 0.56443399999999999
	.quad	0x3fc5f17bd8be7297              # double 0.171432
	.quad	0x3fea7a7eb6bf444e              # double 0.82745299999999999
	.quad	0x3fea5bf0563ed0f6              # double 0.82372299999999998
	.quad	0x3fc2a70d1fa33376              # double 0.14572299999999999
	.quad	0x3fd56b59146e4c0e              # double 0.334677
	.quad	0x3fd2ca07f66e86c6              # double 0.29358099999999998
	.quad	0x3fe8883771865519              # double 0.76662799999999998
	.quad	0x3fca61ae70c1333c              # double 0.20610600000000001
	.quad	0x3fd12ddbdb5d8948              # double 0.268424
	.quad	0x3fdea8826aa8eb46              # double 0.47903499999999999
	.quad	0x3fece05ccc89b0ee              # double 0.90238799999999997
	.quad	0x3fc0eeb702602c91              # double 0.13228500000000001
	.quad	0x3fb8fd08d4bad7d8              # double 0.097611000000000003
	.quad	0x3fd67a4a48f96e16              # double 0.35121400000000003
	.quad	0x3fcbf62b6ae7d567              # double 0.21845000000000001
	.quad	0x3fd2aa3ad18d25ee              # double 0.29164000000000001
	.quad	0x3febcf4e874c8ffc              # double 0.86905600000000005
	.quad	0x3fe330ee49f51698              # double 0.59972300000000001
	.quad	0x3fe3b9cb6848beb6              # double 0.61643000000000003
	.quad	0x3fa0feef5ec80c74              # double 0.033195000000000002
	.quad	0x3fed397785729b28              # double 0.91326499999999999
	.quad	0x3fc0d41b75a74c0a              # double 0.13147300000000001
	.quad	0x3fe411ab8e8ea39c              # double 0.62715699999999996
	.quad	0x3fe0cff64cf8d717              # double 0.52538600000000002
	.quad	0x3fe0ea5f84cad57c              # double 0.52861000000000002
	.quad	0x3fecb97fe8ee6b83              # double 0.897644
	.quad	0x3f93a365cb35f3d8              # double 0.019178000000000001
	.quad	0x3fe16736049ecb32              # double 0.54384900000000003
	.quad	0x3f9096787ce95fab              # double 0.016199000000000002
	.quad	0x3fd1104d551d68c7              # double 0.26662000000000002
	.quad	0x3fef9e16d6dc1a48              # double 0.98804800000000003
	.quad	0x3fe3eacc92146a1a              # double 0.62241199999999997
	.quad	0x3fef8655193708ab              # double 0.98514800000000002
	.quad	0x3fe5e78e1932d6ed              # double 0.68451600000000001
	.quad	0x3fee866a11ec918e              # double 0.95390799999999998
	.quad	0x3fe20b135979181a              # double 0.56385200000000002
	.quad	0x3fd0c7b890d5a5b9              # double 0.26218999999999998
	.quad	0x3fd6199fe43675de              # double 0.34531400000000001
	.quad	0x3fd2732df505d0fa              # double 0.28827999999999998
	.quad	0x3fd4aa21a719b4dd              # double 0.322884
	.quad	0x3fdfda33bd9cae21              # double 0.497693
	.quad	0x3fc19ffd60e94ee4              # double 0.13769500000000001
	.quad	0x3fe69f383f0bae8a              # double 0.70693600000000001
	.quad	0x3fee4443914f483d              # double 0.94583300000000003
	.quad	0x3fb4ee9dd7ecbb80              # double 0.081766000000000005
	.quad	0x3fbbbcf4e874c900              # double 0.108352
	.quad	0x3fcd446f9b994e1a              # double 0.22865099999999999
	.quad	0x3fe239799e518f3f              # double 0.56951600000000002
	.quad	0x3fdac33721d53cde              # double 0.41816500000000001
	.quad	0x3fe95ee99a62ed35              # double 0.79283599999999999
	.quad	0x3fd780cb6c7a7c9e              # double 0.36723600000000001
	.quad	0x3fe0ca4d2b2bfdb5              # double 0.52469500000000002
	.quad	0x3fc6294141e9af5c              # double 0.17313400000000001
	.quad	0x3fd0c7b02d59d55e              # double 0.26218799999999998
	.quad	0x3fdd65c70435efa6              # double 0.459337
	.quad	0x3fdb172ef0ae5365              # double 0.42329
	.quad	0x3fd001c4fc1df330              # double 0.250108
	.quad	0x3fd18815e39713ad              # double 0.27393099999999998
	.quad	0x3fd2eb4202d9cf14              # double 0.29560900000000001
	.quad	0x3fe12f4f0d844d01              # double 0.53702499999999997
	.quad	0x3fec6598e10cf5b2              # double 0.88740200000000002
	.quad	0x3fd18637bd05af6c              # double 0.27381699999999998
	.quad	0x3feadbd72bcb5fe5              # double 0.83933599999999997
	.quad	0x3fea278290689870              # double 0.81732300000000002
	.quad	0x3fec68448cf7caa7              # double 0.88772799999999996
	.quad	0x3fe0e3cb81733227              # double 0.52780700000000003
	.quad	0x3fd773cd573647bb              # double 0.36644300000000002
	.quad	0x3fd420f2becedd48              # double 0.31451099999999999
	.quad	0x3fa54c55432873bd              # double 0.041598000000000003
	.quad	0x3fe6582773e24fec              # double 0.69826100000000002
	.quad	0x3fe11c3ce2089e34              # double 0.53469699999999998
	.quad	0x3fd9f7f498c3b0c4              # double 0.40575899999999998
	.quad	0x3febc855da272863              # double 0.868205
	.quad	0x3fe87b8b26394fad              # double 0.76508100000000001
	.quad	0x3fe9ee9dd7ecbb80              # double 0.81037800000000004
	.quad	0x3fa90b630a91537a              # double 0.048915
	.quad	0x3fe0408fa7a85016              # double 0.50788100000000003
	.quad	0x3fc53ae685db76b4              # double 0.16586000000000001
	.quad	0x3fe237d1fe64f54d              # double 0.56931399999999999
	.quad	0x3fb739b024f6598e              # double 0.090723999999999999
	.quad	0x3fd526e5471715c6              # double 0.33049899999999999
	.quad	0x3fa6b87379746024              # double 0.044375999999999999
	.quad	0x3fe9beb18116ebd5              # double 0.80452800000000002
	.quad	0x3fee78af3e468cac              # double 0.95223199999999996
	.quad	0x3fe666ab9b23dd55              # double 0.70003300000000002
	.quad	0x3fc72ee84ad794a7              # double 0.181119
	.quad	0x3fee9d66adb402d1              # double 0.95671399999999995
	.quad	0x3fe7aa8650e77920              # double 0.73956599999999994
	.quad	0x3fc73586ca89fc6e              # double 0.18132100000000001
	.quad	0x3fcd04816f0068dc              # double 0.22670000000000001
	.quad	0x3fe409070fbeb9e5              # double 0.62610200000000005
	.quad	0x3fe561bb05faebc4              # double 0.66818
	.quad	0x3fe9e1bf37b8d3f2              # double 0.80880700000000005
	.quad	0x3fe74c20d5629d84              # double 0.728043
	.quad	0x3feca569b17481b2              # double 0.89519199999999999
	.quad	0x3feecf93bc0a06ea              # double 0.962839
	.quad	0x3fd0c17ebaf10236              # double 0.26180999999999999
	.quad	0x3fecaae4b0186120              # double 0.89586100000000001
	.quad	0x3fc92ef911cf355d              # double 0.196746
	.quad	0x3feb2391d57ff9b5              # double 0.84809199999999996
	.quad	0x3fe39d4d834091c1              # double 0.61295200000000005
	.quad	0x3fee09118c197e56              # double 0.93860699999999997
	.quad	0x3fd73254e6e221c9              # double 0.36244700000000002
	.quad	0x3fd1c6fbd273d5bb              # double 0.27777000000000002
	.quad	0x3fea64dc22ab25b3              # double 0.82481199999999999
	.quad	0x3fd021858bc59b80              # double 0.25204599999999999
	.quad	0x3fe6e453d20f2bed              # double 0.71537200000000001
	.quad	0x3fef188f42fe8251              # double 0.97174799999999994
	.quad	0x3fd31611ba3ca750              # double 0.29822199999999999
	.quad	0x3fc4d9f0a1be2b49              # double 0.16290099999999999
	.quad	0x3fd03d5bab21815a              # double 0.253745
	.quad	0x3fea99c9d5a187a5              # double 0.83127300000000004
	.quad	0x3fe8d7f0ed3d859d              # double 0.77636000000000005
	.quad	0x3fe7522a6f3f52fc              # double 0.72877999999999998
	.quad	0x3fc524e9c4545847              # double 0.165189
	.quad	0x3fe78f4517614595              # double 0.73623899999999998
	.quad	0x3fe062b8c75c4a84              # double 0.51205100000000003
	.quad	0x3fe1a35f80991794              # double 0.55119300000000004
	.quad	0x3fea8d3ae685db77              # double 0.82974000000000003
	.quad	0x3fd80d5a5b9628cc              # double 0.37581500000000001
	.quad	0x3fd853eb399f5dff              # double 0.38012200000000002
	.quad	0x3feb9f98b71b8aa0              # double 0.86323199999999999
	.quad	0x3fd59ef954eb13e0              # double 0.33782800000000002
	.quad	0x3fdec6eb0b7c3505              # double 0.48089100000000001
	.quad	0x3fd2d6b65a9a8049              # double 0.29435499999999998
	.quad	0x3fe6127f5e84f095              # double 0.68975799999999998
	.quad	0x3fa34b0e1b4bb5e1              # double 0.037682
	.quad	0x3fc00a2877ee4e27              # double 0.12531
	.quad	0x3fc591e646f15619              # double 0.168515
	.quad	0x3fe47fb480a5accd              # double 0.64058899999999996
	.quad	0x3fdaedbf8b9baa15              # double 0.420761
	.quad	0x3fe601c0ca600b03              # double 0.68771400000000005
	.quad	0x3fd32d5171e29b6b              # double 0.29964099999999999
	.quad	0x3fe5947f13059642              # double 0.674377
	.quad	0x3fddacb85a4f00ef              # double 0.463667
	.quad	0x3fee2c9f2fdb8fde              # double 0.94294699999999998
	.quad	0x3fe165f30e7ff584              # double 0.54369500000000004
	.quad	0x3fd84c122749f0e5              # double 0.37964300000000001
	.quad	0x3fe4989bd8383ada              # double 0.64362900000000001
	.quad	0x3fc3c0767d34df05              # double 0.154311
	.quad	0x3fc39eadd590c0ad              # double 0.15328
	.quad	0x3f9d14a0a0f4d7ae              # double 0.028399000000000001
	.quad	0x3fe371c75818c5ca              # double 0.60763900000000004
	.quad	0x3fc7c6e2a80064aa              # double 0.18575700000000001
	.quad	0x3fe7520f2becedd5              # double 0.72876700000000005
	.quad	0x3fe20def416bdb1a              # double 0.56420099999999995
	.quad	0x3fe46c3dab5c39bd              # double 0.63821300000000003
	.quad	0x3fa23315d701d9f5              # double 0.035546000000000001
	.quad	0x3fca8b19a415f45e              # double 0.20737
	.quad	0x3fe2c806290eed03              # double 0.58691700000000002
	.quad	0x3fe5c8c2e770bd01              # double 0.68075699999999995
	.quad	0x3feaf359ff4fd6d8              # double 0.84220600000000001
	.quad	0x3feb33354c12274a              # double 0.85000100000000001
	.quad	0x3fe69b6d43d03969              # double 0.70647300000000002
	.quad	0x3fefd4d1e96c3fc4              # double 0.99472899999999997
	.quad	0x3fe74db163baba7c              # double 0.72823400000000005
	.quad	0x3fe39a9da597d49d              # double 0.61262399999999995
	.quad	0x3fe6746ed245b292              # double 0.70171300000000003
	.quad	0x3fe793d5347a5b10              # double 0.73679600000000001
	.quad	0x3fe5307075b3e143              # double 0.66216299999999995
	.quad	0x3fe2d432873bc904              # double 0.58840300000000001
	.quad	0x3fcdb9496249a134              # double 0.23221700000000001
	.quad	0x3fc1dab5c39bcba3              # double 0.139487
	.quad	0x3fd0b2a6b0d95140              # double 0.26090400000000002
	.quad	0x3fb5e4a38327674d              # double 0.085519999999999999
	.quad	0x3fe40201cd5f99c4              # double 0.62524500000000005
	.quad	0x3febcdaf4adbc665              # double 0.86885800000000002
	.quad	0x3fa0140dd3fe1976              # double 0.031403
	.quad	0x3feaf8769ec2ce46              # double 0.84282999999999997
	.quad	0x3fda98b71b8aa002              # double 0.41557100000000002
	.quad	0x3fead83e8576cce6              # double 0.838897
	.quad	0x3fc05abc0e38a7e7              # double 0.12776899999999999
	.quad	0x3fdbfa8f7db6e504              # double 0.437168
	.quad	0x3fd4cb35f3d7d391              # double 0.324903
	.quad	0x3fdb1f36262cba73              # double 0.42377999999999999
	.quad	0x3fe88b97785729b3              # double 0.76704000000000006
	.quad	0x3fe47cc39ffd60e9              # double 0.64022999999999997
	.quad	0x3fda573215fcc187              # double 0.41157199999999999
	.quad	0x3fe1a4ca4f440af2              # double 0.55136600000000002
	.quad	0x3fd2d7b634dad320              # double 0.29441600000000001
	.quad	0x3fe166b8305d95dd              # double 0.54378899999999997
	.quad	0x3fd6065300581494              # double 0.344136
	.quad	0x3fe8da1a93293d10              # double 0.77662399999999998
	.quad	0x3fe49b23dd54da4d              # double 0.64393800000000001
	.quad	0x3feb38e086bdf4c3              # double 0.85069300000000003
	.quad	0x3fe1d375c8d9f905              # double 0.55706299999999997
	.quad	0x3fe5735c182ecaef              # double 0.67033200000000004
	.quad	0x3fc3d8c6d612c6ac              # double 0.155053
	.quad	0x3fe60370cdc8754f              # double 0.68791999999999998
	.quad	0x3fe9c0d90e23af32              # double 0.80479100000000003
	.quad	0x3fd9647baa9b499d              # double 0.396758
	.quad	0x3fee81c714fce747              # double 0.95334200000000002
	.quad	0x3fea4a98aa8650e7              # double 0.82160599999999995
	.quad	0x3fef277a2cecc815              # double 0.97356900000000001
	.quad	0x3fd49d2391d57ffa              # double 0.32209100000000002
	.quad	0x3fda87c200c0f020              # double 0.41453600000000002
	.quad	0x3fc1eca25529fe00              # double 0.14003399999999999
	.quad	0x3fea084c6a3bddfd              # double 0.81351300000000004
	.quad	0x3fec203a322af577              # double 0.87893399999999999
	.quad	0x3fd577b395c42203              # double 0.33543099999999998
	.quad	0x3feca7ef9db22d0e              # double 0.89549999999999996
	.quad	0x3fdd0164840e171a              # double 0.45321
	.quad	0x3fcbcbddb9841aac              # double 0.21715899999999999
	.quad	0x3feaac16df3f9618              # double 0.833507
	.quad	0x3fa6cedd48451330              # double 0.044547000000000003
	.quad	0x3f5733226c3b927d              # double 0.0014159999999999999
	.quad	0x3fd5d4ae429e0a42              # double 0.34110600000000002
	.quad	0x3fe92515ce9e5e24              # double 0.78577699999999994
	.quad	0x3fe20b220791c4b9              # double 0.563859
	.quad	0x3fc5bc1acde19fc3              # double 0.16980300000000001
	.quad	0x3fec6c0f88333fc8              # double 0.88819099999999995
	.quad	0x3fefc68ec52a411c              # double 0.99298799999999998
	.quad	0x3fd3dd15f02c4d66              # double 0.31036900000000001
	.quad	0x3fe03fa4c61d8623              # double 0.50776900000000003
	.quad	0x3fd77e0ac7da1ec5              # double 0.36706800000000001
	.quad	0x3fb47357e670e2c1              # double 0.079884999999999998
	.quad	0x3fc0432ca57a786c              # double 0.12705
	.quad	0x3fe358c6d612c6ac              # double 0.60458699999999999
	.quad	0x3fdc72085b18548b              # double 0.44446000000000002
	.quad	0x3fbe6b50b0f27bb3              # double 0.118825
	.quad	0x3fb00a6b93ccd0ff              # double 0.062659000000000006
	.quad	0x3fd7f141205bc01a              # double 0.37409999999999999
	.quad	0x3fd5b020c49ba5e3              # double 0.33887499999999998
	.quad	0x3fa4256bca5375c9              # double 0.039348000000000001
	.quad	0x3fe7f79207d4e098              # double 0.74897100000000005
	.quad	0x3fe9a0d349be8ff3              # double 0.80088199999999998
	.quad	0x3fdb19695d91ab8f              # double 0.42342600000000002
	.quad	0x3fe7e8cef672b884              # double 0.74716899999999997
	.quad	0x3fe6454de7ea5f85              # double 0.69596000000000002
	.quad	0x3feb283d35eb7458              # double 0.84866200000000003
	.quad	0x3fe066a550870111              # double 0.51253000000000004
	.quad	0x3fe93940fecdd0d9              # double 0.78823900000000002
	.quad	0x3fecfe06961c3697              # double 0.90600899999999995
	.quad	0x3fda0e8858ff7597              # double 0.40713700000000003
	.quad	0x3fe52ce032db1e9f              # double 0.66172799999999998
	.quad	0x3fb0e4fb97bb7308              # double 0.065993999999999997
	.quad	0x3fde8ceb356da017              # double 0.47735100000000003
	.quad	0x3fed6cd4aa10e022              # double 0.91953499999999999
	.quad	0x3fe692253111f0c3              # double 0.70533999999999997
	.quad	0x3fd2eb67c286f8ad              # double 0.29561799999999999
	.quad	0x3fcd12fd32c625ea              # double 0.22714200000000001
	.quad	0x3fdb23033a4723ab              # double 0.424012
	.quad	0x3fe33e61cffeb075              # double 0.60136500000000004
	.quad	0x3fc3024f6598e10d              # double 0.148508
	.quad	0x3fe788094e5d5b25              # double 0.73535600000000001
	.quad	0x3fb8827b6fe2e6eb              # double 0.095741000000000007
	.quad	0x3fec0e991ff7164c              # double 0.87678199999999995
	.quad	0x3fd242d490e66cb1              # double 0.285329
	.quad	0x3fe4aabcd78c4370              # double 0.64584200000000003
	.quad	0x3fbb66b6177ea1c7              # double 0.10703600000000001
	.quad	0x3fb3d7d3910c2c5e              # double 0.077511999999999997
	.quad	0x3fc3ccc89b0ee49f              # double 0.15468699999999999
	.quad	0x3fce8e15011904b4              # double 0.23871100000000001
	.quad	0x3feb73343fa2ad3f              # double 0.85781300000000005
	.quad	0x3fd08a3f8982cb21              # double 0.258438
	.quad	0x3fe392599ed7c6fc              # double 0.61161500000000002
	.quad	0x3fcc372606fac604              # double 0.22043299999999999
	.quad	0x3f74812be48a58b4              # double 0.005006
	.quad	0x3fe837f38c5436b9              # double 0.75683
	.quad	0x3fc44588a04d1202              # double 0.15837200000000001
	.quad	0x3fe1a93293d102bc              # double 0.55190399999999995
	.quad	0x3fe8c4c5974e65bf              # double 0.77402000000000004
	.quad	0x3fd43486f049a997              # double 0.31570599999999999
	.quad	0x3fc43f141205bc02              # double 0.15817500000000001
	.quad	0x3fb1d8c6d612c6ac              # double 0.069713999999999998
	.quad	0x3fe5bf5946c332f0              # double 0.67960799999999999
	.quad	0x3fbbfbefd00713f0              # double 0.10931299999999999
	.quad	0x3fe89ec7000431be              # double 0.76938200000000001
	.quad	0x3fe6fcac8e68e3ef              # double 0.71834399999999998
	.quad	0x3fb883cafb3b7521              # double 0.095760999999999999
	.quad	0x3fd55c853c148345              # double 0.33377200000000001
	.quad	0x3fdc2c881e4712e4              # double 0.440218
	.quad	0x3fcc0e1f7d73c925              # double 0.21918099999999999
	.quad	0x3fea7caa7589efd8              # double 0.82771799999999995
	.quad	0x3fc18fabda0dfdf0              # double 0.13719700000000001
	.quad	0x3fd20ce0b912dba5              # double 0.28203600000000001
	.quad	0x3fdeebd4cfd08d4c              # double 0.48314400000000002
	.quad	0x3fe0789e774eebf6              # double 0.51472399999999996
	.quad	0x3fef13059641f645              # double 0.97107200000000004
	.quad	0x3fc378ab0c88a47f              # double 0.15212000000000001
	.quad	0x3fdfe7296f6512a9              # double 0.49848399999999998
	.quad	0x3fb58f0c77dd872f              # double 0.084213999999999997
	.quad	0x3fc291fb3fa6defc              # double 0.14507999999999999
	.quad	0x3fda6e8af81626b3              # double 0.412997
	.quad	0x3fdf0bb2bba98eda              # double 0.48508899999999999
	.quad	0x3fb3152f3c2dadb8              # double 0.074541999999999997
	.quad	0x3fdc4a98aa8650e7              # double 0.44205299999999997
	.quad	0x3fcb62b6ae7d566d              # double 0.21395
	.quad	0x3fd3164840e1719f              # double 0.29823499999999997
	.quad	0x3fd5db7f1737542a              # double 0.34152199999999999
	.quad	0x3fdd8c7e28240b78              # double 0.4617
	.quad	0x3fcaffeb074a771d              # double 0.21093500000000001
	.quad	0x3fe566f9335d249e              # double 0.66881999999999997
	.quad	0x3fe456c2efd438d2              # double 0.63559100000000002
	.quad	0x3fe0a03c4b09e98e              # double 0.51956000000000002
	.quad	0x3fe606ab14ec204f              # double 0.68831399999999998
	.quad	0x3fedd5970b49e01e              # double 0.93232300000000001
	.quad	0x3fc9d3dc8b86b160              # double 0.20177800000000001
	.quad	0x3fd0e1b8ed1bf7ad              # double 0.26377699999999998
	.quad	0x3fe132314013ec46              # double 0.53737699999999999
	.quad	0x3fd8823c85c24c40              # double 0.38294899999999998
	.quad	0x3fe23d640e9d51b5              # double 0.569994
	.quad	0x3fd3567dbb16c1e3              # double 0.30215399999999998
	.quad	0x3fe7813cab81f96a              # double 0.73452600000000001
	.quad	0x3fd2df9378ee2867              # double 0.29489599999999999
	.quad	0x3fe62a10e0221427              # double 0.692635
	.quad	0x3fe0b08feac42e99              # double 0.52155300000000004
	.quad	0x3fd06833c60029f1              # double 0.25635999999999998
	.quad	0x3fd578e9f6a93f29              # double 0.335505
	.quad	0x3fea202b841248d8              # double 0.81642700000000001
	.quad	0x3fea2c5e2cdc011d              # double 0.81791599999999998
	.quad	0x3fc578bbd3804535              # double 0.16774700000000001
	.quad	0x3fdb188b11409a24              # double 0.423373
	.quad	0x3fdcdcdb37c99ae9              # double 0.45097999999999999
	.quad	0x3feceed02cd39da1              # double 0.90415199999999996
	.quad	0x3fd6478854cdb7ae              # double 0.34811599999999998
	.quad	0x3fbe9e3c968943e1              # double 0.119602
	.quad	0x3fdebb384fd2a62b              # double 0.48017700000000002
	.quad	0x3fc7439de481f538              # double 0.181751
	.quad	0x3fe3bd66277c45cc              # double 0.61687000000000003
	.quad	0x3fad58c8eef1bac3              # double 0.057318000000000001
	.quad	0x3fdaa1a500d5e8d5              # double 0.41611599999999999
	.quad	0x3fe04a87e38eb032              # double 0.50909800000000005
	.quad	0x3fec53cff64cf8d7              # double 0.88523099999999999
	.quad	0x3fb41de26916440f              # double 0.078580999999999998
	.quad	0x3fe350870110a138              # double 0.60358000000000001
	.quad	0x3fe08153bd167664              # double 0.515787
	.quad	0x3fd5a3e7d135115a              # double 0.33812900000000001
	.quad	0x3fd82f72b4528284              # double 0.37789600000000001
	.quad	0x3fd31e03f705857b              # double 0.298707
	.quad	0x3f9dbf0563ed0f62              # double 0.029048999999999998
	.quad	0x3fe6471b47842310              # double 0.69618000000000002
	.quad	0x3fc5d944aa53fc01              # double 0.17069300000000001
	.quad	0x3faa5bb7b6bb1290              # double 0.051480999999999999
	.quad	0x3fe1aeb80ecfa69c              # double 0.55257800000000001
	.quad	0x3fc2ae7d566cf41f              # double 0.14595
	.quad	0x3fe178bdec5f394b              # double 0.54598899999999995
	.quad	0x3fea0aa00192a737              # double 0.81379699999999999
	.quad	0x3fe2624bba12b5e5              # double 0.57449899999999998
	.quad	0x3fc930b5aa715832              # double 0.196799
	.quad	0x3fb37ced916872b0              # double 0.076124999999999998
	.quad	0x3fda037d63022dd8              # double 0.40646300000000002
	.quad	0x3fef9d6adf71eaff              # double 0.98796600000000001
	.quad	0x3fe5700abf76a2f5              # double 0.66992700000000005
	.quad	0x3fdddc1615ebfa8f              # double 0.46655799999999997
	.quad	0x3fef272a7bd48cb5              # double 0.97353100000000003
	.quad	0x3fd1733226c3b928              # double 0.27265600000000001
	.quad	0x3fbbfd60e94ee393              # double 0.109335
	.quad	0x3fe6357c4e2f37fc              # double 0.69402900000000001
	.quad	0x3fec8d477bbf93ff              # double 0.89224599999999998
	.quad	0x3fd3c1ebc83a96d5              # double 0.30871100000000001
	.quad	0x3fdc12cadddf43c8              # double 0.43864700000000001
	.quad	0x3fe2852d666a9824              # double 0.57875699999999997
	.quad	0x3fef045dc8323359              # double 0.969283
	.quad	0x3fea62a5e785b5b7              # double 0.824542
	.quad	0x3fdfc4c9c90c4dec              # double 0.49638599999999999
	.quad	0x3fd6f4b61fe21d97              # double 0.358686
	.quad	0x3fe2996744b2b778              # double 0.58122600000000002
	.quad	0x3fd4855da272862f              # double 0.32063999999999998
	.quad	0x3fef968943e10060              # double 0.98712599999999994
	.quad	0x3fe7b6eb4e981388              # double 0.74107900000000004
	.quad	0x3f6fb6134ce3de61              # double 0.0038709999999999999
	.quad	0x3fee0b6523704791              # double 0.93889100000000003
	.quad	0x3fb845cbbc2b94d9              # double 0.094814999999999997
	.quad	0x3fe404a72ead9275              # double 0.62556800000000001
	.quad	0x3fe98ffb8b263950              # double 0.79882600000000004
	.quad	0x3fe2cefcbd556085              # double 0.58776700000000004
	.quad	0x3fd52af9a8cdea03              # double 0.33074799999999999
	.quad	0x3fbc20d5629d840a              # double 0.109876
	.quad	0x3fe35e19fc2a886a              # double 0.60523700000000002
	.quad	0x3fe33356da0168b6              # double 0.60001700000000002
	.quad	0x3fe404b1ab0856e7              # double 0.62557300000000005
	.quad	0x3fee856a37ac3eb8              # double 0.95378600000000002
	.quad	0x3fd02ee41919ac79              # double 0.25286199999999998
	.quad	0x3fcea1be2b4959e6              # double 0.239311
	.quad	0x3fea2c625e99e94b              # double 0.81791800000000003
	.quad	0x3f9a83b1d0c80410              # double 0.025892999999999999
	.quad	0x3fd9b2af1455219b              # double 0.40153100000000003
	.quad	0x3fc6fdb8fde2ef4e              # double 0.179618
	.quad	0x3fcf9f1ae2da554c              # double 0.24704300000000001
	.quad	0x3feb4538ef34d6a1              # double 0.85219999999999996
	.quad	0x3fb8e5b4245f5ad9              # double 0.097254999999999994
	.quad	0x3fd3da76d97b30f9              # double 0.31020900000000001
	.quad	0x3fef0e1d6494d50f              # double 0.97047300000000003
	.quad	0x3fe276ec5b078d93              # double 0.577017
	.quad	0x3fec9f9f01b866e4              # double 0.89448499999999997
	.quad	0x3fcde29307af20ea              # double 0.23347699999999999
	.quad	0x3fd63db7f1737543              # double 0.34751700000000002
	.quad	0x3fdf706d50657321              # double 0.49123699999999998
	.quad	0x3fd9530ced4e4c94              # double 0.39569399999999999
	.quad	0x3fe9b13be22e5de1              # double 0.80288499999999996
	.quad	0x3fdddd26b723ee1c              # double 0.46662300000000001
	.quad	0x3fea7c5692b3cc4b              # double 0.82767800000000002
	.quad	0x3fe2429bf162ae4b              # double 0.570631
	.quad	0x3fe0a8848387df5d              # double 0.52057100000000001
	.quad	0x3fe1aac753e707e1              # double 0.55209699999999995
	.quad	0x3f9d466f5019f3c7              # double 0.028589
	.quad	0x3fe9c2b0ea18372e              # double 0.80501599999999995
	.quad	0x3fe60e71476af89c              # double 0.68926299999999996
	.quad	0x3fdf2a2c2374794f              # double 0.48694900000000002
	.quad	0x3fdc7c7c5260f5e4              # double 0.44509799999999999
	.quad	0x3fe489a240314877              # double 0.64180099999999995
	.quad	0x3fdabf83382e44b7              # double 0.417939
	.quad	0x3fe35cd7060bb2bc              # double 0.60508300000000004
	.quad	0x3fe5632e3821af7d              # double 0.66835699999999998
	.quad	0x3fe5e00d1b71758e              # double 0.68359999999999999
	.quad	0x3feb845996744b2b              # double 0.85990599999999995
	.quad	0x3fe25308bb906467              # double 0.57263600000000003
	.quad	0x3fefe3c968943e10              # double 0.996556
	.quad	0x3fea142d490e66cb              # double 0.81496299999999999
	.quad	0x3fd9f98b71b8aa00              # double 0.40585599999999999
	.quad	0x3fc27d34df04ddb5              # double 0.14444599999999999
	.quad	0x3fefc6d82ba5a038              # double 0.99302299999999998
	.quad	0x3fce2f2f9873ffac              # double 0.235815
	.quad	0x3fe00b45ae5ffa3c              # double 0.50137600000000004
	.quad	0x3fa9991361dc93ea              # double 0.049995999999999999
	.quad	0x3fe1b59146e4c0df              # double 0.55341399999999996
	.quad	0x3fe450247021d10b              # double 0.63478299999999999
	.quad	0x3fe4beb18116ebd5              # double 0.64827800000000002
	.quad	0x3fe3c4fe36d22425              # double 0.61779700000000004
	.quad	0x3fbfef9db22d0e56              # double 0.12475
	.quad	0x3fd6d0b30b5aa716              # double 0.35648800000000003
	.quad	0x3feb63beec39799e              # double 0.85592599999999996
	.quad	0x3fac74538ef34d6a              # double 0.055574999999999999
	.quad	0x3fad55a3a08398a6              # double 0.057293999999999998
	.quad	0x3fe46d916872b021              # double 0.63837500000000003
	.quad	0x3fc5cc39ffd60e95              # double 0.170295
	.quad	0x3fd2bc44bf4cb189              # double 0.29274099999999997
	.quad	0x3fe326d2674080fa              # double 0.59848900000000005
	.quad	0x3fcc9c2c1b10fd7e              # double 0.22351599999999999
	.quad	0x3fe8bc2b94d94079              # double 0.77297000000000005
	.quad	0x3fead475a31a4bdc              # double 0.83843500000000004
	.quad	0x3feaae2541d8e864              # double 0.83375799999999999
	.quad	0x3fd5f0025bfad29a              # double 0.34277400000000002
	.quad	0x3fe60b524399b2c4              # double 0.68888199999999999
	.quad	0x3fee4e93e1c9b414              # double 0.94709200000000004
	.quad	0x3f928dc981beb181              # double 0.018119
	.quad	0x3feab211cb039ef1              # double 0.83423700000000001
	.quad	0x3fd2d8409e55c0fd              # double 0.29444900000000002
	.quad	0x3fefdd8d79d0a676              # double 0.99579499999999999
	.quad	0x3fe5a187a4a48f97              # double 0.67596800000000001
	.quad	0x3fc64bc27631b585              # double 0.17418700000000001
	.quad	0x3fe71ffb480a5acd              # double 0.72265400000000002
	.quad	0x3feb6323bbc6eb0b              # double 0.85585199999999995
	.quad	0x3fd6bab649d388a9              # double 0.35514600000000002
	.quad	0x3fbf08bb906466b2              # double 0.121227
	.quad	0x3f8fe86833c6002a              # double 0.01558
	.quad	0x3fd74d8ba40d90e2              # double 0.36410799999999999
	.quad	0x3fe55ac68a936c59              # double 0.66733100000000001
	.quad	0x3fed6e807bbb6241              # double 0.91973899999999997
	.quad	0x3fdc2bf5515054ac              # double 0.44018299999999999
	.quad	0x3fd09068986fcdee              # double 0.25881399999999999
	.quad	0x3fde35f3d7d3910c              # double 0.47204299999999999
	.quad	0x3fe7cc89b0ee49f5              # double 0.74371799999999999
	.quad	0x3fe2882adc4c9c91              # double 0.57912200000000003
	.quad	0x3fecb927d45a5fc8              # double 0.89760200000000001
	.quad	0x3fd931d712a0ec74              # double 0.39366699999999999
	.quad	0x3fd4e6ddf00abf77              # double 0.32659100000000002
	.quad	0x3fec59e6256366d8              # double 0.88597400000000004
	.quad	0x3fdb92428d434a02              # double 0.43080200000000002
	.quad	0x3fdccd0bb6ed6777              # double 0.450015
	.quad	0x3fec2f23033a4724              # double 0.88075400000000003
	.quad	0x3fa0fe047d3d4281              # double 0.033188000000000002
	.quad	0x3fe9a5e353f7ced9              # double 0.80149999999999999
	.quad	0x3fb11aeb3dd11be7              # double 0.066817000000000001
	.quad	0x3fdfd31b9b66f933              # double 0.49725999999999998
	.quad	0x3fe5eae7d566cf42              # double 0.68492500000000001
	.quad	0x3fe60fa7a85015c2              # double 0.689411
	.quad	0x3fd6c6822ff08894              # double 0.35586600000000002
	.quad	0x3fd6f5275ee99a63              # double 0.358713
	.quad	0x3fa146c332f01755              # double 0.033743000000000002
	.quad	0x3fe1d273d5bab218              # double 0.55693999999999999
	.quad	0x3fe03122b7baecd0              # double 0.50599799999999995
	.quad	0x3fd4295e9e1b089a              # double 0.315025
	.quad	0x3fa4b46bacf74470              # double 0.040439000000000003
	.quad	0x3fd19e2bcf91a32b              # double 0.275279
	.quad	0x3fd1116659d12cae              # double 0.26668700000000001
	.quad	0x3feda580c308feac              # double 0.92645299999999997
	.quad	0x3fe6bcbc48f10a9a              # double 0.71053900000000003
	.quad	0x3fdc848387df5cf2              # double 0.44558799999999998
	.quad	0x3fc272c94b380cb7              # double 0.14412800000000001
	.quad	0x3fb6f01754b05b7d              # double 0.089601
	.quad	0x3fe02291fb3fa6df              # double 0.50422
	.quad	0x3fd198b71b8aa002              # double 0.27494600000000002
	.quad	0x3fdd0bbf50e34763              # double 0.45384200000000002
	.quad	0x3fe62424a276b7ed              # double 0.69191199999999997
	.quad	0x3fe23d4ae429e0a4              # double 0.56998199999999999
	.quad	0x3fdbaceaaf35e311              # double 0.43242900000000001
	.quad	0x3feda53b8e4b87be              # double 0.92642000000000002
	.quad	0x3fe476ddaceee0f4              # double 0.63951000000000002
	.quad	0x3fe8f63c31df761d              # double 0.78005800000000003
	.quad	0x3fc6be40420f6f09              # double 0.17768100000000001
	.quad	0x3fe135d894812be5              # double 0.53782300000000005
	.quad	0x3fedd7f3061c79b3              # double 0.93261099999999997
	.quad	0x3fdec1c6088d6d3b              # double 0.48057699999999998
	.quad	0x3feda048e043a216              # double 0.92581599999999997
	.quad	0x3fd727a20578e5c5              # double 0.361794
	.quad	0x3fec666ec9e236c1              # double 0.88750399999999996
	.quad	0x3fd7fe36d22424a2              # double 0.37489099999999997
	.quad	0x3faa4180d3cff64d              # double 0.051281
	.quad	0x3fe7477bbf93ff26              # double 0.72747600000000001
	.quad	0x3fe20bae89eba6ad              # double 0.56392600000000004
	.quad	0x3fe14766c6de7642              # double 0.53996599999999995
	.quad	0x3fdf5dd095af294e              # double 0.49010100000000001
	.quad	0x3fd5574f722e1ac5              # double 0.33345399999999997
	.quad	0x3fc8feac42e9899c              # double 0.195272
	.quad	0x3fd40b0292817764              # double 0.31317200000000001
	.quad	0x3fe233aabcd78c43              # double 0.56880699999999995
	.quad	0x3fd49b0ee49f5169              # double 0.32196399999999997
	.quad	0x3fe900bcbe61cfff              # double 0.78134000000000003
	.quad	0x3fd6204f2ae07e5a              # double 0.34572199999999997
	.quad	0x3fb054ef459d9903              # double 0.063796000000000005
	.quad	0x3fe5e96e58a32f45              # double 0.68474500000000005
	.quad	0x3fc48b19a415f45e              # double 0.160495
	.quad	0x3fd8df71eafee6fb              # double 0.38863799999999998
	.quad	0x3fb17082491afc05              # double 0.068123000000000003
	.quad	0x3fd6c79b34a44c7b              # double 0.355933
	.quad	0x3fea17bb73083559              # double 0.81539700000000004
	.quad	0x3fe82174c4cdfaca              # double 0.75408399999999998
	.quad	0x3fe9020c49ba5e35              # double 0.78149999999999997
	.quad	0x3feb770153bd1676              # double 0.85827699999999996
	.quad	0x3fe6a87c200c0f02              # double 0.708067
	.quad	0x3fd84fb549f94856              # double 0.37986500000000001
	.quad	0x3fee32378ab0c88a              # double 0.94362999999999997
	.quad	0x3fe4742fe82517e7              # double 0.63918299999999995
	.quad	0x3fe45e84f09528f2              # double 0.63653800000000005
	.quad	0x3fe77a6bd6e8af81              # double 0.73369399999999996
	.quad	0x3fe088bda9435ac9              # double 0.51669200000000004
	.quad	0x3fd60ce91c8eac00              # double 0.34453800000000001
	.quad	0x3fec7077ccc03793              # double 0.88872899999999999
	.quad	0x3fb5c55000c9539c              # double 0.085042000000000006
	.quad	0x3fd5dbb59ddc1e79              # double 0.34153499999999998
	.quad	0x3fae8c26138fffbd              # double 0.059663000000000001
	.quad	0x3fc0ea0fd3b29a1c              # double 0.13214300000000001
	.quad	0x3fdf36d655e28aa4              # double 0.48772199999999999
	.quad	0x3fd6885d31337eb3              # double 0.35207300000000002
	.quad	0x3fb0f1b25f633ce6              # double 0.066187999999999997
	.quad	0x3fcba16e7a311e86              # double 0.215864
	.quad	0x3feeedd69d30270f              # double 0.96653299999999997
	.quad	0x3fd5f6ec5b078d93              # double 0.343196
	.quad	0x3fa62de8709741d1              # double 0.043319000000000003
	.quad	0x3fe65f138bcdfefc              # double 0.69910600000000001
	.quad	0x3fe7a339c0ebedfa              # double 0.73867499999999997
	.quad	0x3fe4fdd872f33ca3              # double 0.65598699999999999
	.quad	0x3fe1da8155d5f56a              # double 0.55792299999999995
	.quad	0x3fc576ff3ade2260              # double 0.16769400000000001
	.quad	0x3fc262bae03b3e9a              # double 0.14363799999999999
	.quad	0x3fcc90cd423d9232              # double 0.22316900000000001
	.quad	0x3fe4fc914b167ec8              # double 0.65583100000000005
	.quad	0x3fe38b630a91537a              # double 0.610765
	.quad	0x3fe40bf3bea91d9b              # double 0.62645899999999999
	.quad	0x3fd312dfd694ccab              # double 0.29802699999999999
	.quad	0x3fc226cc1ca3a4b5              # double 0.14180899999999999
	.quad	0x3fe9945308bb9064              # double 0.79935599999999995
	.quad	0x3fb76f9fcb0c026d              # double 0.091547000000000003
	.quad	0x3fdc8aa00192a737              # double 0.445961
	.quad	0x3fd1306e5cd4ed2d              # double 0.26858100000000001
	.quad	0x3fc27cc7d1bb4917              # double 0.14443300000000001
	.quad	0x3fd04acaff6d3309              # double 0.25456499999999999
	.quad	0x3fe362046c764ae0              # double 0.605715
	.quad	0x3fea716f4384ba0f              # double 0.82634700000000005
	.quad	0x3fea1fd7a13c254a              # double 0.81638699999999997
	.quad	0x3fef014727dcbddc              # double 0.96890600000000004
	.quad	0x3fed9728a6117721              # double 0.92470200000000002
	.quad	0x3fef968f8e7ddca5              # double 0.98712900000000003
	.quad	0x3fe46043a2163fdd              # double 0.63675099999999996
	.quad	0x3fc5553ef6b5d463              # double 0.16666400000000001
	.quad	0x3fefb08bb906466b              # double 0.99030099999999998
	.quad	0x3fe6eb91b3f20a74              # double 0.716256
	.quad	0x3fc2f826edaa92e6              # double 0.148198
	.quad	0x3fe3a9cbab649d39              # double 0.61447700000000005
	.quad	0x3fdd641700cd8559              # double 0.45923399999999998
	.quad	0x3fe183925bb7b6bb              # double 0.54731099999999999
	.quad	0x3fd9f572de43ed96              # double 0.40560600000000002
	.quad	0x3fe16e78183f91e6              # double 0.54473499999999997
	.quad	0x3fd9cc0379314446              # double 0.40307700000000002
	.quad	0x3fd201b866e43aa8              # double 0.28135500000000002
	.quad	0x3fc0a350d2806af4              # double 0.12998399999999999
	.quad	0x3fe8ded8d36b4c7f              # double 0.77720299999999998
	.quad	0x3feadeb95e5aff2a              # double 0.83968799999999999
	.quad	0x3fe8b2ca57a786c2              # double 0.77182499999999998
	.quad	0x3fadd54da4ce8102              # double 0.058268
	.quad	0x3fdd2c40d0aaa7df              # double 0.45582600000000001
	.quad	0x3fd34330d738609a              # double 0.30097600000000002
	.quad	0x3feec9b845564b66              # double 0.96212399999999998
	.quad	0x3febc792d1287c20              # double 0.86811199999999999
	.quad	0x3fee2f2d7f950b95              # double 0.94325899999999996
	.quad	0x3fd1f8f8a4c1ebc8              # double 0.28082099999999999
	.quad	0x3fd970196d8f4f94              # double 0.39746700000000001
	.quad	0x3fd04567125dd096              # double 0.25423600000000002
	.quad	0x3fe7999bb2788db0              # double 0.73750099999999996
	.quad	0x3fd6afa2f05a708f              # double 0.35447000000000001
	.quad	0x3fdde6c4c5974e66              # double 0.46721000000000001
	.quad	0x3fd9070b8cfbfc65              # double 0.39105499999999999
	.quad	0x3fecd50870110a13              # double 0.90100499999999994
	.quad	0x3fee04cad57bc7f7              # double 0.93808499999999995
	.quad	0x3fcf4a7f8012dfd7              # double 0.24446100000000001
	.quad	0x3fbc8ace24bba12b              # double 0.11149299999999999
	.quad	0x3fca1ede1198aeb8              # double 0.204067
	.quad	0x3fefec0b5675579b              # double 0.997564
	.quad	0x3faf56eac8605682              # double 0.061210000000000001
	.quad	0x3feb11600f34506a              # double 0.84587100000000004
	.quad	0x3fd9bc903ea704bc              # double 0.40213399999999999
	.quad	0x3fe974e65bea0ba2              # double 0.79552
	.quad	0x3fe78364388ebcc7              # double 0.73478900000000003
	.quad	0x3fc867168f8e7ddd              # double 0.19064600000000001
	.quad	0x3fc0eb0b7c3504c5              # double 0.13217300000000001
	.quad	0x3fe470f9d2bf5515              # double 0.638791
	.quad	0x3fee76db940fecdd              # double 0.95200899999999999
	.quad	0x3fb858eeae9ee45c              # double 0.095106999999999997
	.quad	0x3fe548f10a99b6f6              # double 0.66515400000000002
	.quad	0x3fd61ed9dfdac68b              # double 0.34563300000000002
	.quad	0x3fe3664f54d1e96c              # double 0.60623899999999997
	.quad	0x3fd03b3636f3b214              # double 0.25361400000000001
	.quad	0x3fedcca70d1fa333              # double 0.93123199999999995
	.quad	0x3fd4ac753e707e17              # double 0.32302599999999998
	.quad	0x3fa5413122b7baed              # double 0.041513000000000001
	.quad	0x3fc252c59fb1e18f              # double 0.143151
	.quad	0x3fd49cf13cee9dd8              # double 0.322079
	.quad	0x3fdcc4d65e460675              # double 0.44951400000000002
	.quad	0x3fd77c49fd7a13c2              # double 0.36696099999999998
	.quad	0x3fe448e4755ffe6d              # double 0.63389799999999996
	.quad	0x3fef53b8e4b87bdd              # double 0.97897
	.quad	0x3fe6d9578a2a90cd              # double 0.71403099999999997
	.quad	0x3fde1422ccb3a259              # double 0.46997899999999998
	.quad	0x3feceb15f88fc936              # double 0.90369699999999997
	.quad	0x3fd71e68a0d349bf              # double 0.36123100000000002
	.quad	0x3fe653a81dc0db27              # double 0.697712
	.quad	0x3fedb2b12d3415b1              # double 0.92806299999999997
	.quad	0x3fe290cb295e9e1b              # double 0.580175
	.quad	0x3fc3963992c8c500              # double 0.15302199999999999
	.quad	0x3f74983d790752db              # double 0.0050280000000000004
	.quad	0x3fe5aef6f8f04146              # double 0.67760799999999999
	.quad	0x3fe5f37542a23c00              # double 0.68596900000000005
	.quad	0x3fdd62b27cbf6e3f              # double 0.45914899999999997
	.quad	0x3fd75c4a83b1d0c8              # double 0.365008
	.quad	0x3fe4042d8c2a454e              # double 0.62551000000000001
	.quad	0x3fd1b42cc2d6a9c5              # double 0.27662199999999998
	.quad	0x3fe109f40a2877ee              # double 0.53246499999999997
	.quad	0x3fc020d5629d840a              # double 0.126002
	.quad	0x3fc5ceb78897e996              # double 0.17037099999999999
	.quad	0x3fc6f6273929ed39              # double 0.17938699999999999
	.quad	0x3fe4938bcdfefbf4              # double 0.643011
	.quad	0x3fc1c304ccee5abc              # double 0.138764
	.quad	0x3fe4aad601ffb481              # double 0.64585400000000004
	.quad	0x3fee517c5ef62f9d              # double 0.94744700000000004
	.quad	0x3fe41e236c15d2d0              # double 0.62867899999999999
	.quad	0x3feaf789a459103d              # double 0.84271700000000005
	.quad	0x3fd50318b9346994              # double 0.32831399999999999
	.quad	0x3fda847f562174c5              # double 0.41433700000000001
	.quad	0x3fdb4f3fd933e35c              # double 0.42671199999999998
	.quad	0x3fa2146a1a500d5f              # double 0.035312000000000003
	.quad	0x3fc5991bc5586445              # double 0.168735
	.quad	0x3fd6496ededaec4a              # double 0.34823199999999999
	.quad	0x3fd6ffa7eb6bf445              # double 0.35935400000000001
	.quad	0x3fd5d5b6805a2d73              # double 0.341169
	.quad	0x3fe0c2cc2d6a9c56              # double 0.52377899999999999
	.quad	0x3fdc26d8b1dd5d3e              # double 0.43987100000000001
	.quad	0x3fe38a0b1bbcf4e8              # double 0.61060099999999995
	.quad	0x3fdf6bf01322f273              # double 0.49096299999999998
	.quad	0x3fe7eb1c432ca57a              # double 0.74744999999999995
	.quad	0x3fdc6644d87724fb              # double 0.44374200000000003
	.quad	0x3fe0927b2cc70868              # double 0.51788100000000004
	.quad	0x3fcc304ccee5abc1              # double 0.220224
	.quad	0x3fc2a78af3e468cb              # double 0.14573800000000001
	.quad	0x3febb686a4ca4f44              # double 0.86603099999999999
	.quad	0x3feb96073de1e2df              # double 0.86206400000000005
	.quad	0x3fe436a400fba882              # double 0.63166999999999995
	.quad	0x3febe6f2e8c0485a              # double 0.87194199999999999
	.quad	0x3fe7859ea57214f0              # double 0.73506099999999996
	.quad	0x3fe6ad55a3a08399              # double 0.70865900000000004
	.quad	0x3fcc087442c7fbad              # double 0.21900800000000001
	.quad	0x3fd3605ab3aabcd8              # double 0.30275600000000003
	.quad	0x3feb8826aa8eb463              # double 0.86036999999999997
	.quad	0x3fb3296f6512a950              # double 0.074851
	.quad	0x3feaeb6177ea1c69              # double 0.84123300000000001
	.quad	0x3fddd912556d19df              # double 0.46637400000000001
	.quad	0x3f7dc50ce4ead0c4              # double 0.0072680000000000002
	.quad	0x3fe20e496ededaec              # double 0.56424399999999997
	.quad	0x3fe9b7ac3eb7cbb4              # double 0.80367100000000002
	.quad	0x3fcfa5b9628cbd12              # double 0.24724499999999999
	.quad	0x3f7cc319c5a3e39f              # double 0.0070219999999999996
	.quad	0x3fb81e7967caea74              # double 0.094214999999999993
	.quad	0x3f5e7967caea747e              # double 0.0018600000000000001
	.quad	0x3fb9070fbeb9e493              # double 0.097764000000000004
	.quad	0x3fe56bb1290257c9              # double 0.66939599999999999
	.quad	0x3fd6b09635610add              # double 0.35452800000000001
	.quad	0x3f9fa4c61d8622c4              # double 0.030901999999999999
	.quad	0x3fc19b994e1a3f46              # double 0.13756099999999999
	.quad	0x3fedb736cdf266ba              # double 0.92861499999999997
	.quad	0x3fdbd3dc8b86b160              # double 0.43480600000000003
	.quad	0x3fe6c6540cc78e9f              # double 0.71170999999999995
	.quad	0x3fd56a8b8f14db59              # double 0.33462799999999998
	.quad	0x3fd92a27f1b69121              # double 0.39319799999999999
	.quad	0x3fe4d8f4f93bc0a0              # double 0.65148399999999995
	.quad	0x3fcb63992c8c5005              # double 0.213977
	.quad	0x3fe172862f5989df              # double 0.54522999999999999
	.quad	0x3f964628027d88c2              # double 0.021752000000000001
	.quad	0x3fedc28d434a01ac              # double 0.92999900000000002
	.quad	0x3fdd91148fd9fd37              # double 0.46198
	.quad	0x3fd20b955f78359c              # double 0.28195700000000001
	.quad	0x3fcefee6fb4c3c19              # double 0.24215400000000001
	.quad	0x3fe9f166e008e9b4              # double 0.81071800000000004
	.quad	0x3fcd49949e8815e4              # double 0.22880800000000001
	.quad	0x3fc3d9988d2a1f8e              # double 0.15507799999999999
	.quad	0x3fed2bb01c92ddbe              # double 0.91158300000000003
	.quad	0x3fd04195cc857f30              # double 0.25400299999999998
	.quad	0x3fb059c8c9320d99              # double 0.063869999999999996
	.quad	0x3fe4cc8bc9cd3e0c              # double 0.64996900000000002
	.quad	0x3fc9b6dca07f66e8              # double 0.20089299999999999
	.quad	0x3fd262845996744b              # double 0.28726299999999999
	.quad	0x3fe741d084e831ad              # double 0.72678399999999999
	.quad	0x3fee2b0856e696a2              # double 0.94275299999999995
	.quad	0x3fda4aada33bd9cb              # double 0.41080800000000001
	.quad	0x3fe0168512231833              # double 0.502749
	.quad	0x3fe40f25a250f840              # double 0.62684899999999999
	.quad	0x3fb44651f3e89a89              # double 0.079198000000000005
	.quad	0x3fdd636b09635611              # double 0.45919300000000002
	.quad	0x3fea1791819d2392              # double 0.81537700000000002
	.quad	0x3fed594d0dcfcc5c              # double 0.91715100000000004
	.quad	0x3fe65b402d16b980              # double 0.69863900000000001
	.quad	0x3fd049d7ba6698bb              # double 0.25450699999999998
	.quad	0x3fddb777d0f1f57b              # double 0.46432299999999999
	.quad	0x3fce9a2c669057d1              # double 0.23907999999999999
	.quad	0x3fcf0fb65668c261              # double 0.24266699999999999
	.quad	0x3fc45f28848387df              # double 0.15915399999999999
	.quad	0x3f9e61cffeb074a7              # double 0.029669999999999998
	.quad	0x3fc59fb1e18efbb1              # double 0.168936
	.quad	0x3fef646cfc829cfe              # double 0.98100900000000002
	.quad	0x3fe8aa9930be0ded              # double 0.77082499999999998
	.quad	0x3fecf79207d4e098              # double 0.90522100000000005
	.quad	0x3fe256a7ac81d3aa              # double 0.57307799999999998
	.quad	0x3fdf84a9478c868c              # double 0.49247200000000002
	.quad	0x3fb3ae03b3e9a6f8              # double 0.076873999999999998
	.quad	0x3fe0076188b1140a              # double 0.50090100000000004
	.quad	0x3fb6ad4f5903a754              # double 0.088581999999999994
	.quad	0x3fecb964a59c065b              # double 0.89763099999999996
	.quad	0x3fe8dd9e40c8472c              # double 0.77705299999999999
	.quad	0x3fb83126e978d4fe              # double 0.0945
	.quad	0x3fe6be9a6f826edb              # double 0.71076700000000004
	.quad	0x3fe39795b35b0bbf              # double 0.61225399999999996
	.quad	0x3fe456c508b32ce9              # double 0.63559200000000005
	.quad	0x3fcdd88c1db0142f              # double 0.23317099999999999
	.quad	0x3fe4d755bccaf70a              # double 0.65128600000000003
	.quad	0x3fd2eb463497b741              # double 0.29560999999999998
	.quad	0x3fedcf4c6e6d9be5              # double 0.93155500000000002
	.quad	0x3fa898b2e9ccb7d4              # double 0.048039999999999999
	.quad	0x3fee49e6687f455a              # double 0.94652099999999995
	.quad	0x3fcbbbd7b2031ceb              # double 0.21667
	.quad	0x3fbb8726d04e618d              # double 0.107531
	.quad	0x3fef33aabcd78c43              # double 0.97505699999999995
	.quad	0x3fe10df7a4e7ab75              # double 0.53295499999999996
	.quad	0x3fe6e95faa8a82a5              # double 0.71598799999999996
	.quad	0x3fd7baecd07852f8              # double 0.370784
	.quad	0x3fb393ccd0fe8ab5              # double 0.076474
	.quad	0x3fe05c7abfb9bed3              # double 0.51128899999999999
	.quad	0x3fe06e5eedcc20d5              # double 0.51347299999999996
	.quad	0x3fef68427418d691              # double 0.98147700000000004
	.quad	0x3fe7a4228997c3d7              # double 0.73878600000000005
	.quad	0x3fdeb9170d62bf12              # double 0.480047
	.quad	0x3fe024fa8b4bf8fd              # double 0.50451400000000002
	.quad	0x3fe5d421c044284e              # double 0.682145
	.quad	0x3fef160d887ebf23              # double 0.97144200000000002
	.quad	0x3fdc59b8023a6ce3              # double 0.44297599999999998
	.quad	0x3fdf64840e1719f8              # double 0.49051
	.quad	0x3fc29270b06c43f6              # double 0.145094
	.quad	0x3fe7da964e8b7e4e              # double 0.74543300000000001
	.quad	0x3fe9046412cf0f9d              # double 0.78178599999999998
	.quad	0x3fbec59fb1e18efc              # double 0.120203
	.quad	0x3fd50dbf0563ed0f              # double 0.32896399999999998
	.quad	0x3fb4070329802c0a              # double 0.078231999999999995
	.quad	0x3fea42f1ed17c5ef              # double 0.82067199999999996
	.quad	0x3fe19ceaf251c194              # double 0.55040500000000003
	.quad	0x3fe11d12cadddf44              # double 0.53479900000000002
	.quad	0x3fa58d5842b734b5              # double 0.042093999999999999
	.quad	0x3fdd83f0bae89eba              # double 0.46117799999999998
	.quad	0x3fd9f41f212d7732              # double 0.40552500000000002
	.quad	0x3fe8704ddb5525cc              # double 0.76370899999999997
	.quad	0x3fc0b1ee2435696e              # double 0.13042999999999999
	.quad	0x3fee6093532e7b3e              # double 0.94928900000000005
	.quad	0x3fb3839cd8127b2d              # double 0.076227000000000003
	.quad	0x3fd557d5a9eb2075              # double 0.333486
	.quad	0x3fedb039ef0f16f4              # double 0.92776199999999997
	.quad	0x3fea10257c914b16              # double 0.81447099999999995
	.quad	0x3fe8e44955b4677b              # double 0.77786699999999998
	.quad	0x3fe28383ad9f0a1c              # double 0.57855400000000001
	.quad	0x3fc2712e40852b4e              # double 0.14407900000000001
	.quad	0x3fe8e8c47a17f413              # double 0.77841400000000005
	.quad	0x3fe0e5e892253112              # double 0.52806500000000001
	.quad	0x3fa78359bc33f855              # double 0.045924
	.quad	0x3fe80d08919ef955              # double 0.75159100000000001
	.quad	0x3feae013660e51d2              # double 0.83985299999999996
	.quad	0x3feb459d99029ae5              # double 0.85224800000000001
	.quad	0x3fe0c727dcbddb98              # double 0.52431099999999997
	.quad	0x3fe07d6f97679032              # double 0.51531199999999999
	.quad	0x3fd6beec39799e52              # double 0.35540300000000002
	.quad	0x3fef6c61522a6f3f              # double 0.98197999999999996
	.quad	0x3fe72737110e453d              # double 0.72353699999999999
	.quad	0x3fd322ab25b317f0              # double 0.29899100000000001
	.quad	0x3fe5f079e59f2baa              # double 0.68560500000000002
	.quad	0x3fe83c536d655e29              # double 0.75736400000000004
	.quad	0x3fe76bfa8f7db6e5              # double 0.731931
	.quad	0x3fcb5af294dd7236              # double 0.21371299999999999
	.quad	0x3fcc72e275ab7dc8              # double 0.22225600000000001
	.quad	0x3fcb6616b54e2b06              # double 0.21405299999999999
	.quad	0x3fd52784a9478c87              # double 0.33053700000000003
	.quad	0x3fd7fe9b7bf1e8e6              # double 0.374915
	.quad	0x3fd3918a009f6230              # double 0.30575799999999997
	.quad	0x3fedf507e9d94d0e              # double 0.93616100000000002
	.quad	0x3fbb9f98b71b8aa0              # double 0.107904
	.quad	0x3fe4f0435efa615b              # double 0.65432900000000005
	.quad	0x3fcd36bd2b6f1993              # double 0.22823299999999999
	.quad	0x3fd9310129cbab65              # double 0.39361600000000002
	.quad	0x3feb3b83cf2cf95d              # double 0.85101499999999997
	.quad	0x3fdc3e4abe6a337b              # double 0.44130200000000003
	.quad	0x3fedea26e5471716              # double 0.93483300000000003
	.quad	0x3fd217bd8be7296f              # double 0.28269899999999998
	.quad	0x3fd688094e5d5b25              # double 0.352053
	.quad	0x3fc17da61e0c5a81              # double 0.13664699999999999
	.quad	0x3fe12e83a109d063              # double 0.53692799999999996
	.quad	0x3fdd46dc5d638866              # double 0.45745000000000002
	.quad	0x3fa3441bb8c32a8d              # double 0.037629000000000003
	.quad	0x3fc030caa326e115              # double 0.12648899999999999
	.quad	0x3fe3a0945f9df549              # double 0.61335200000000001
	.quad	0x3fd617d6b65a9a80              # double 0.34520499999999998
	.quad	0x3fef4e7cd0353719              # double 0.97833099999999995
	.quad	0x3fe5f44f5d35653d              # double 0.68607300000000004
	.quad	0x3fcf41205bc01a37              # double 0.244175
	.quad	0x3fd024180d3cff65              # double 0.25220300000000001
	.quad	0x3fda3a3a8e71476b              # double 0.409804
	.quad	0x3fe49e01de269164              # double 0.64428799999999997
	.quad	0x3fe619e731d2e0e3              # double 0.690662
	.quad	0x3fe1d199bb2788db              # double 0.556836
	.quad	0x3fd794d940789614              # double 0.36846000000000001
	.quad	0x3fe950b0f27bb2ff              # double 0.79110000000000003
	.quad	0x3febb59ddc1e7968              # double 0.86592000000000002
	.quad	0x3fece1da7b0b3919              # double 0.90256999999999998
	.quad	0x3fd87dbf487fcb92              # double 0.38267499999999999
	.quad	0x3fc0f0739b024f66              # double 0.13233800000000001
	.quad	0x3fe413dd97f62b6b              # double 0.62742500000000001
	.quad	0x3fe4f12e40852b4e              # double 0.65444100000000005
	.quad	0x3fe634549b62c775              # double 0.69388799999999995
	.quad	0x3fe58d64d7f0ed3e              # double 0.67351000000000005
	.quad	0x3feb1d1d4738a3b5              # double 0.84730399999999995
	.quad	0x3fe923bbc6eb0b7c              # double 0.78561199999999997
	.quad	0x3fd01fd9ba1b1961              # double 0.251944
	.quad	0x3fd250ce4ead0c3d              # double 0.28618199999999999
	.quad	0x3fe4fa85015c2092              # double 0.65558099999999997
	.quad	0x3fdaed288ce703b0              # double 0.42072500000000002
	.quad	0x3feb907d912556d2              # double 0.86138800000000004
	.quad	0x3fded9a52263d817              # double 0.48203400000000002
	.quad	0x3fe4830e3cd9a522              # double 0.64099799999999996
	.quad	0x3fd6c94b380cb6c8              # double 0.35603600000000002
	.quad	0x3fd366cb10342aaa              # double 0.303149
	.quad	0x3fc3e9d0e991ff71              # double 0.15557299999999999
	.quad	0x3febcd7add15f02c              # double 0.86883299999999996
	.quad	0x3fe8360ae9680e06              # double 0.75659699999999996
	.quad	0x3fd5dd69d30270f4              # double 0.34163900000000003
	.quad	0x3fdb25d074213a0c              # double 0.42418299999999998
	.quad	0x3fc1ddfc9ff92f2b              # double 0.13958699999999999
	.quad	0x3fd6d11be6e65387              # double 0.35651300000000002
	.quad	0x3fe2938583621fb0              # double 0.58050800000000002
	.quad	0x3fe269ff0cbaf966              # double 0.57543900000000003
	.quad	0x3f9fdac68a936c59              # double 0.031108
	.quad	0x3fc4ec5b078d92fb              # double 0.163463
	.quad	0x3fe79d27c3936827              # double 0.73793399999999998
	.quad	0x3fec02cf52b90a78              # double 0.87534299999999998
	.quad	0x3fa31ad2135daad6              # double 0.037314
	.quad	0x3fb88d1958969a0b              # double 0.095903000000000002
	.quad	0x3fec781a5870da5e              # double 0.88966100000000004
	.quad	0x3fe2e0a41a261bf3              # double 0.58992199999999995
	.quad	0x3fc8f1800a7c5ac4              # double 0.19486999999999999
	.quad	0x3fee5d2f1a9fbe77              # double 0.94887500000000002
	.quad	0x3fc3daa4fca42aed              # double 0.15511
	.quad	0x3fe269d51b4fe79f              # double 0.57541900000000001
	.quad	0x3fb6924f227d028a              # double 0.088169999999999998
	.quad	0x3fe47d3d4280ae10              # double 0.64028799999999997
	.quad	0x3fdf5efa615a8deb              # double 0.490172
	.quad	0x3feea2af5771001d              # double 0.95735899999999996
	.quad	0x3fdccfede97d06bc              # double 0.45019100000000001
	.quad	0x3fe6ee2eb1c432ca              # double 0.71657499999999996
	.quad	0x3fa66adb402d16b9              # double 0.043783999999999997
	.quad	0x3fc8f6be37de939f              # double 0.19503000000000001
	.quad	0x3fe20a6b93ccd0ff              # double 0.56377200000000005
	.quad	0x3fe25be5d9e40c84              # double 0.57371799999999995
	.quad	0x3fd6cd29131ec0b5              # double 0.35627199999999998
	.quad	0x3fe2f023e9ea1405              # double 0.59181399999999995
	.quad	0x3fdbc6540cc78e9f              # double 0.43397999999999998
	.quad	0x3f8e35c5b4aa9718              # double 0.014751
	.quad	0x3fc544e50c5eb314              # double 0.16616500000000001
	.quad	0x3fd66173b85e80bf              # double 0.34969800000000001
	.quad	0x3f9b456b441bb8c3              # double 0.026631999999999999
	.quad	0x3fe039628cbd1245              # double 0.50700500000000004
	.quad	0x3febe29f9ce8d973              # double 0.87141400000000002
	.quad	0x3fd5c04c8bc9cd3e              # double 0.339862
	.quad	0x3fe74ce3de6149c7              # double 0.72813600000000001
	.quad	0x3fe92df505d0fa59              # double 0.78686
	.quad	0x3fe2b6cbd987c632              # double 0.58481399999999994
	.quad	0x3fc8a39c51dabe27              # double 0.192493
	.quad	0x3fee8121682f9442              # double 0.95326299999999997
	.quad	0x3fa403ff69014b5a              # double 0.039093000000000003
	.quad	0x3fee179bfdf7e804              # double 0.94038200000000005
	.quad	0x3fea50c1b97353b5              # double 0.82235800000000003
	.quad	0x3fd6e1cde5d18091              # double 0.35753200000000002
	.quad	0x3fe0a76534373f31              # double 0.52043399999999995
	.quad	0x3fca45803cd141a7              # double 0.20524600000000001
	.quad	0x3fc328522ea0fd3b              # double 0.149668
	.quad	0x3faa7b9170d62bf1              # double 0.051723999999999999
	.quad	0x3fd2d7a99fa11a97              # double 0.29441299999999998
	.quad	0x3fc04cd74927913f              # double 0.12734500000000001
	.quad	0x3fe5f79207d4e098              # double 0.68647100000000005
	.quad	0x3fe7411e42e12620              # double 0.72669899999999998
	.quad	0x3fa469b5a63f9a4a              # double 0.039869000000000002
	.quad	0x3fe317dae81882ae              # double 0.59666200000000003
	.quad	0x3fb1105e1c15097d              # double 0.066656000000000007
	.quad	0x3fe78ebedfa43fe6              # double 0.73617500000000002
	.quad	0x3fdaa875d56f32be              # double 0.41653200000000001
	.quad	0x3fd83704790b8499              # double 0.37835800000000003
	.quad	0x3fee8daa0cae642c              # double 0.954793
	.quad	0x3fea5b573eab367a              # double 0.82364999999999999
	.quad	0x3fdaa0f9096bb98c              # double 0.41607499999999997
	.quad	0x3fb202d9cf13ceea              # double 0.070356000000000002
	.quad	0x3fd8d8b1dd5d3dc9              # double 0.38822600000000002
	.quad	0x3fb35eb7457c0b13              # double 0.075663999999999995
	.quad	0x3fd5fed20296b335              # double 0.34367799999999998
	.quad	0x3fbdd5f56a7ac81d              # double 0.116546
	.quad	0x3fd54febd09e12a5              # double 0.33300299999999999
	.quad	0x3fc94d056c508b33              # double 0.19766300000000001
	.quad	0x3fb3f1843c3a42f2              # double 0.077904000000000001
	.quad	0x3fd7f2d3c792d128              # double 0.37419599999999997
	.quad	0x3fe04944ed6fda83              # double 0.50894399999999995
	.quad	0x3fe8c714fce746cc              # double 0.77430200000000004
	.quad	0x3fcac08b75ea67e8              # double 0.20900099999999999
	.quad	0x3fe4b5fa22706d50              # double 0.64721399999999996
	.quad	0x3fa769014b599aa6              # double 0.045723
	.quad	0x3fcd30df9bdc69f9              # double 0.22805400000000001
	.quad	0x3fe3f81a5870da5e              # double 0.62403600000000004
	.quad	0x3fec55da272862f6              # double 0.88548000000000004
	.quad	0x3fe71c8216c61523              # double 0.72223000000000004
	.quad	0x3fe97c19c17225b7              # double 0.79639899999999997
	.quad	0x3fc24007570c5650              # double 0.14257900000000001
	.quad	0x3feae503fb374363              # double 0.84045599999999998
	.quad	0x3fdf7253da72a7bd              # double 0.49135299999999998
	.quad	0x3fda57e23f24d8fd              # double 0.41161399999999998
	.quad	0x3fd056798958d9b6              # double 0.255278
	.quad	0x3fc6705c896dd26b              # double 0.17530399999999999
	.quad	0x3f9b2a27f1b69121              # double 0.026527999999999999
	.quad	0x3fd0ad42c3c9eecc              # double 0.260575
	.quad	0x3fd988094e5d5b25              # double 0.398928
	.quad	0x3fe41f23465625a7              # double 0.62880100000000005
	.quad	0x3fb5caafbc1acde2              # double 0.085124000000000005
	.quad	0x3fed8854cdb7ae58              # double 0.92289200000000005
	.quad	0x3fc14467381d7dbf              # double 0.13489999999999999
	.quad	0x3feaf2fba01eeed9              # double 0.84216100000000005
	.quad	0x3fd32352eb5f5f0b              # double 0.29903099999999999
	.quad	0x3fe624484944ed70              # double 0.69192900000000002
	.quad	0x3fe48ede54b48d3b              # double 0.64244000000000001
	.quad	0x3fdec3d25247cb71              # double 0.48070200000000002
	.quad	0x3fd469e7fb267c6c              # double 0.31896400000000003
	.quad	0x3fe66805a2d72ffd              # double 0.70019799999999999
	.quad	0x3fcc4f8f8a4c1ebd              # double 0.22117800000000001
	.quad	0x3fedd1efb6dca07f              # double 0.93187699999999996
	.quad	0x3fc93eee52589268              # double 0.19723299999999999
	.quad	0x3fb007dd44135547              # double 0.062619999999999995
	.quad	0x3fee2b4fa48301a8              # double 0.94278700000000004
	.quad	0x3fdf6bb98c7e2824              # double 0.49095
	.quad	0x3fed828a1dfb938a              # double 0.92218500000000003
	.quad	0x3fe23fee2c98e53f              # double 0.57030400000000003
	.quad	0x3fc56e8af81626b3              # double 0.167436
	.quad	0x3fefbe5321e603d5              # double 0.99198299999999994
	.quad	0x3fe5a9ae4f3343fa              # double 0.67696299999999998
	.quad	0x3fb8f5b1c8648840              # double 0.097499000000000002
	.quad	0x3f808c3f3e0370ce              # double 0.0080800000000000004
	.quad	0x3fefc463065f9592              # double 0.99272300000000002
	.quad	0x3fb98244e93e1c9b              # double 0.099643999999999996
	.quad	0x3fd3d9e83e425aee              # double 0.31017499999999998
	.quad	0x3fc4ebe596c82e02              # double 0.16344900000000001
	.quad	0x3fe4193b3a68b19a              # double 0.62807999999999997
	.quad	0x3fd5ea033e78e193              # double 0.34240799999999999
	.quad	0x3febc6e6d9be4cd7              # double 0.86802999999999997
	.quad	0x3fe87f5a5332acfb              # double 0.76554599999999995
	.quad	0x3fbaab042528ae75              # double 0.104172
	.quad	0x3fc565ecc3e3193f              # double 0.16717299999999999
	.quad	0x3fe69d53cddd6e05              # double 0.70670500000000003
	.quad	0x3fe8163779e9d0ea              # double 0.75271200000000005
	.quad	0x3fc4cfd8f0c77dd8              # double 0.16259299999999999
	.quad	0x3fe6e76640a6b93d              # double 0.71574700000000002
	.quad	0x3fc84f6dfc5cdd51              # double 0.18992400000000001
	.quad	0x3fb6f5989df1172f              # double 0.089685000000000001
	.quad	0x3fe527d45a5fc7e7              # double 0.66111200000000003
	.quad	0x3fed82c4d65e4606              # double 0.92221299999999995
	.quad	0x3fda64388ebcc6c5              # double 0.41236699999999998
	.quad	0x3fe6b152f3c2dadc              # double 0.70914600000000005
	.quad	0x3fe62163fdd65a14              # double 0.69157599999999997
	.quad	0x3feaf05ea24cc682              # double 0.84184199999999998
	.quad	0x3fb5e00d1b71758e              # double 0.085449999999999998
	.quad	0x3fd9a65cf67b1c00              # double 0.400779
	.quad	0x3fe206ee30caa327              # double 0.56334600000000001
	.quad	0x3fe4022ff08893b8              # double 0.62526700000000002
	.quad	0x3feecf15e7c8d196              # double 0.96277900000000005
	.quad	0x3f9a2a4db163baba              # double 0.025551999999999998
	.quad	0x3fed3780346dc5d6              # double 0.91302499999999998
	.quad	0x3fe30c6d612c6ac2              # double 0.59526699999999999
	.quad	0x3fc7811f4f50a02c              # double 0.18362800000000001
	.quad	0x3fd5fa4c61d8622c              # double 0.34340199999999999
	.quad	0x3fe6b97353b4b2fb              # double 0.71013800000000005
	.quad	0x3fdaf0563ed0f627              # double 0.42091899999999999
	.quad	0x3feec0db2702a348              # double 0.96104199999999995
	.quad	0x3fe028997c3d6840              # double 0.50495599999999996
	.quad	0x3fdd90eed02cd39e              # double 0.46197100000000002
	.quad	0x3fea31832fcac8e7              # double 0.81854400000000005
	.quad	0x3fe9e9142b302f73              # double 0.80970200000000003
	.quad	0x3fc0b7995ee136e7              # double 0.130603
	.quad	0x3fe9ee392e1ef73c              # double 0.81032999999999999
	.quad	0x3fb86e8f29d40ee0              # double 0.095436999999999994
	.quad	0x3fd9512231832fcb              # double 0.39557700000000001
	.quad	0x3fbbca1059ea5721              # double 0.108552
	.quad	0x3fe92a12f901083e              # double 0.78638600000000003
	.quad	0x3fbadcd2d44dca8e              # double 0.104932
	.quad	0x3fd8e7c06e19b90f              # double 0.38914500000000002
	.quad	0x3fdfe0ce0b912dba              # double 0.49809599999999998
	.quad	0x3fdf1337eb28d866              # double 0.48554799999999998
	.quad	0x3fb8244e93e1c9b4              # double 0.094303999999999999
	.quad	0x3fd02a454de7ea60              # double 0.25258000000000003
	.quad	0x3febec17ebaf1023              # double 0.87256999999999996
	.quad	0x3fc3b4dcebfec13c              # double 0.15395700000000001
	.quad	0x3fc6d4e4c942d491              # double 0.178372
	.quad	0x3fcda7f3cf70153c              # double 0.23168800000000001
	.quad	0x3fc766f9335d249e              # double 0.18282999999999999
	.quad	0x3fac4028e4fb97bb              # double 0.055176999999999997
	.quad	0x3fe7bda5119ce076              # double 0.7419
	.quad	0x3fef35781c714fce              # double 0.97527699999999995
	.quad	0x3fe5c436fc158fb4              # double 0.68020199999999997
	.quad	0x3fc3cfb3311a543f              # double 0.154776
	.quad	0x3fa52c59fb1e18f0              # double 0.041354000000000002
	.quad	0x3fd7ecd4aa10e022              # double 0.37383
	.quad	0x3fe87f6f4be835df              # double 0.76555600000000001
	.quad	0x3fd9bb5e0f7fcfc4              # double 0.402061
	.quad	0x3fcf470eb24a6a87              # double 0.24435599999999999
	.quad	0x3fe32e40852b4d8c              # double 0.59939600000000004
	.quad	0x3fd0761cbccf28c8              # double 0.25720900000000002
	.quad	0x3fd92a737110e454              # double 0.39321600000000001
	.quad	0x3fd491c087442c80              # double 0.32139600000000002
	.quad	0x3fd139f340d4dc66              # double 0.26916200000000001
	.quad	0x3feb44e93e1c9b41              # double 0.85216199999999998
	.quad	0x3fd48d4fdf3b645a              # double 0.32112499999999999
	.quad	0x3fe1ee34fc610f0f              # double 0.56032800000000005
	.quad	0x3fd259d55e6bc622              # double 0.28673300000000002
	.quad	0x3fe7abc0e38a7e74              # double 0.73971600000000004
	.quad	0x3fefdd1c3ac929aa              # double 0.99574099999999999
	.quad	0x3fe1a1f8e3ac0c63              # double 0.55102200000000001
	.quad	0x3fa832b990afe60c              # double 0.047261999999999998
	.quad	0x3fe28e94ee392e1f              # double 0.579905
	.quad	0x3fbde2de8709741d              # double 0.116743
	.quad	0x3fe26364bec679cc              # double 0.57463299999999995
	.quad	0x3fd1d61b2a27f1b7              # double 0.27869300000000002
	.quad	0x3fd0145953586ca9              # double 0.25124200000000002
	.quad	0x3fe2ccee5abc0e39              # double 0.58751600000000004
	.quad	0x3fe10068db8bac71              # double 0.53129999999999999
	.quad	0x3fe48abb44e50c5f              # double 0.64193500000000003
	.quad	0x3fe0a8d434a01abd              # double 0.52060899999999999
	.quad	0x3fd824463065f959              # double 0.37721399999999999
	.quad	0x3fedefcdee34fc61              # double 0.93552299999999999
	.quad	0x3fe9759253543aeb              # double 0.79560200000000003
	.quad	0x3fe18b8066c2acb8              # double 0.54827899999999996
	.quad	0x3fc02de00d1b7176              # double 0.12640000000000001
	.quad	0x3fe3d15f02c4d65e              # double 0.61930799999999997
	.quad	0x3fc3f138bcdfefbf              # double 0.15579899999999999
	.quad	0x3fd59baa1511dffc              # double 0.33762599999999998
	.quad	0x3fef147f13059642              # double 0.971252
	.quad	0x3fd4afc47e49b1fb              # double 0.32322800000000002
	.quad	0x3fed88461f9f01b8              # double 0.92288499999999996
	.quad	0x3fc2e1deacc92147              # double 0.14751800000000001
	.quad	0x3fe957abb8800eae              # double 0.79195199999999999
	.quad	0x3fda71b8aa00192a              # double 0.41319099999999997
	.quad	0x3fd3a0663c74fb55              # double 0.30666500000000002
	.quad	0x3fe4314445aa2e3c              # double 0.63101399999999996
	.quad	0x3fb09cc319c5a3e4              # double 0.064892000000000005
	.quad	0x3fe1d306a2b17050              # double 0.55701000000000001
	.quad	0x3fe9ba0407cc7d1c              # double 0.80395700000000003
	.quad	0x3fb2e3821af7d30b              # double 0.073784000000000002
	.quad	0x3fbef0f16f4384ba              # double 0.120864
	.quad	0x3fc2d538ac18f81f              # double 0.14713200000000001
	.quad	0x3fe441919ac79703              # double 0.63300400000000001
	.quad	0x3fd5d2ed783dff3f              # double 0.340999
	.quad	0x3fc3a1a0cf1800a8              # double 0.15337000000000001
	.quad	0x3fb075e6362a5e78              # double 0.064298999999999995
	.quad	0x3fe8639f77292c49              # double 0.76216099999999998
	.quad	0x3fee78c64fdb09a6              # double 0.95224299999999995
	.quad	0x3f9efe4ffc9795b3              # double 0.030266999999999999
	.quad	0x3fd9238da3c21188              # double 0.39279500000000001
	.quad	0x3fe31a6b50b0f27c              # double 0.59697500000000003
	.quad	0x3fe28a5269595fee              # double 0.57938500000000004
	.quad	0x3fb9abd1aa821f2a              # double 0.10027800000000001
	.quad	0x3fd77af640639d5e              # double 0.36687999999999998
	.quad	0x3fda9b62c77574f7              # double 0.41573399999999999
	.quad	0x3feb0a2877ee4e27              # double 0.84499000000000002
	.quad	0x3fd16933a0407cc8              # double 0.27204600000000001
	.quad	0x3fecb4b72c5197a2              # double 0.89705999999999997
	.quad	0x3fe11289dadfb507              # double 0.53351300000000001
	.quad	0x3feb522ea0fd3b2a              # double 0.85378200000000004
	.quad	0x3fee1fd36f7e3d1d              # double 0.94138500000000003
	.quad	0x3fe367b3d8e00086              # double 0.60640899999999998
	.quad	0x3fd007faa044ae86              # double 0.25048700000000002
	.quad	0x3fded46f587d6f97              # double 0.48171599999999998
	.quad	0x3fd9a76d97b30f8c              # double 0.40084399999999998
	.quad	0x3fd393c03bc4d22d              # double 0.30589300000000003
	.quad	0x3fd32cd7cf5f4e44              # double 0.29961199999999999
	.quad	0x3fc85fb71fbc5dea              # double 0.19042100000000001
	.quad	0x3fc800c0f01fb82c              # double 0.187523
	.quad	0x3fe3bf8fcd67fd3f              # double 0.61713399999999996
	.quad	0x3fe08489d27c3937              # double 0.51617900000000005
	.quad	0x3fdb2917507e9d95              # double 0.42438300000000001
	.quad	0x3fe3e7cd03537197              # double 0.62204599999999999
	.quad	0x3fdbf80dc33721d5              # double 0.43701499999999999
	.quad	0x3fe01c2e33eff195              # double 0.50344
	.quad	0x3fef6351deefe500              # double 0.98087400000000002
	.quad	0x3fe3e6adb402d16c              # double 0.62190900000000005
	.quad	0x3fe2206e9ff0cbb0              # double 0.56645900000000005
	.quad	0x3fcab68cef672b88              # double 0.20869599999999999
	.quad	0x3fedc8e68e3ef284              # double 0.93077399999999999
	.quad	0x3fe1328522ea0fd4              # double 0.53741700000000003
	.quad	0x3fe413059641f645              # double 0.62732200000000005
	.quad	0x3fc87778dd616f87              # double 0.19114600000000001
	.quad	0x3feaa2b5a20ddc62              # double 0.83236200000000005
	.quad	0x3fd1b3b7521144cc              # double 0.27659400000000001
	.quad	0x3fb595ee136e71ce              # double 0.084319000000000005
	.quad	0x3fee2f533f42352f              # double 0.94327700000000003
	.quad	0x3fb6a033e78e1933              # double 0.088382000000000002
	.quad	0x3f9fb2aae297396d              # double 0.030955
	.quad	0x3fc2bd987c6327ee              # double 0.14641100000000001
	.quad	0x3fd5bec679cc74b8              # double 0.33976899999999999
	.quad	0x3febdfd8adab9f56              # double 0.87107500000000004
	.quad	0x3fe19c1d6cf850df              # double 0.55030699999999999
	.quad	0x3fe3d7b2031ceaf2              # double 0.62007999999999996
	.quad	0x3fc34dbdf8f47304              # double 0.15081
	.quad	0x3feda7a20578e5c5              # double 0.92671300000000001
	.quad	0x3fef246e08f21709              # double 0.97319699999999997
	.quad	0x3fe1889c1b54195d              # double 0.54792600000000002
	.quad	0x3fd1594f26aec072              # double 0.27107599999999998
	.quad	0x3fd9a2f48c2e770c              # double 0.40057100000000001
	.quad	0x3fee4af2d7f950b9              # double 0.94664899999999996
	.quad	0x3fe50a17b0f6ad71              # double 0.65748200000000001
	.quad	0x3fc36965f5275eea              # double 0.15165400000000001
	.quad	0x3fe42dfb506dd69d              # double 0.63061299999999998
	.quad	0x3fcc82cf52b90a78              # double 0.222742
	.quad	0x3fdea5ce5b4245f6              # double 0.47887000000000002
	.quad	0x3fc0262cba732df5              # double 0.126165
	.quad	0x3fe78800eae18aca              # double 0.73535200000000001
	.quad	0x3fec1eb6390c9108              # double 0.878749
	.quad	0x3fe71c087442c7fc              # double 0.72217200000000004
	.quad	0x3fbc0c4156e264e5              # double 0.10956200000000001
	.quad	0x3fd2bbe4473cd573              # double 0.29271799999999998
	.quad	0x3fe886013660e51d              # double 0.76635799999999998
	.quad	0x3fefc050bd87b56c              # double 0.99222600000000005
	.quad	0x3f80ff972474538f              # double 0.0083
	.quad	0x3fe8b8fde2ef4e01              # double 0.77258199999999999
	.quad	0x3fec868db8bac711              # double 0.89142500000000002
	.quad	0x3fc5c18b502ababf              # double 0.16996900000000001
	.quad	0x3fd6cd898b2e9ccb              # double 0.35629499999999997
	.quad	0x3fcfd66adb402d17              # double 0.24873100000000001
	.quad	0x3fcc56de33269df9              # double 0.22140099999999999
	.quad	0x3fe114df8b157258              # double 0.53379799999999999
	.quad	0x3fc2ab474107314d              # double 0.14585200000000001
	.quad	0x3fd544f1a1986b9c              # double 0.33233299999999999
	.quad	0x3fe6ad9f0a1be2b5              # double 0.70869400000000005
	.quad	0x3fda7e62dc6e2a80              # double 0.413964
	.quad	0x3fe0302d59d55e6c              # double 0.50588100000000003
	.quad	0x3fd6e3fbbd7b2032              # double 0.35766500000000001
	.quad	0x3fed8635a426bb56              # double 0.92263300000000004
	.quad	0x3fcc82949a5657fb              # double 0.22273499999999999
	.quad	0x3fe3cbd1244a6224              # double 0.61863000000000001
	.quad	0x3fd5cfe9b7bf1e8e              # double 0.34081499999999998
	.quad	0x3feebaba7b9170d6              # double 0.96029399999999998
	.quad	0x3fe4fbc7f77af640              # double 0.65573499999999996
	.quad	0x3fe3ec764adff823              # double 0.62261500000000003
	.quad	0x3fe3fced916872b0              # double 0.62462499999999999
	.quad	0x3fe0b01c92ddbdb6              # double 0.52149800000000002
	.quad	0x3fcf594f26aec072              # double 0.24491299999999999
	.quad	0x3fd97079e59f2baa              # double 0.39749000000000001
	.quad	0x3fd9e0ce0b912dba              # double 0.40434599999999998
	.quad	0x3fc84a4095f2452c              # double 0.18976599999999999
	.quad	0x3fe1d269595feda6              # double 0.55693499999999996
	.quad	0x3fe7c85e3da2f8be              # double 0.74320900000000001
	.quad	0x3fd53e78e1932d6f              # double 0.33193800000000001
	.quad	0x3feff01754b05b7d              # double 0.998058
	.quad	0x3fcd836a832b990b              # double 0.230573
	.quad	0x3fdba1ec4e7253da              # double 0.43175799999999998
	.quad	0x3fd0fb3fa6defc7a              # double 0.26533499999999999
	.quad	0x3fd961d4306e5cd5              # double 0.396596
	.quad	0x3fc1f8f47304039b              # double 0.14041000000000001
	.quad	0x3fefbfdd65a14489              # double 0.99217100000000002
	.quad	0x3fb9f15a4acf312b              # double 0.101339
	.quad	0x3fece88377186552              # double 0.90338300000000005
	.quad	0x3feafd566cf41f21              # double 0.84342499999999998
	.quad	0x3fe3fb69984a0e41              # double 0.62444
	.quad	0x3fb7525460aa64c3              # double 0.0911
	.quad	0x3fd474ea8da7f3cf              # double 0.31963599999999998
	.quad	0x3fdc5d28d002e233              # double 0.44318600000000002
	.quad	0x3fcca6117720c8cd              # double 0.22381799999999999
	.quad	0x3fe1ba5e353f7cee              # double 0.55400000000000005
	.quad	0x3fe63f401c4fc1df              # double 0.69522099999999998
	.quad	0x3fa85a2d72ffd1dd              # double 0.047563000000000001
	.quad	0x3fd7fc47e49b1fac              # double 0.37477300000000002
	.quad	0x3fefcf1e4b44a1f1              # double 0.99403300000000005
	.quad	0x3fa643cc07aaef2c              # double 0.043485999999999997
	.quad	0x3fb9fb2edfe75bc4              # double 0.101489
	.quad	0x3fde06e19b90ea9e              # double 0.46916999999999998
	.quad	0x3fecb2b3461309c8              # double 0.896814
	.quad	0x3fecfd1351159c49              # double 0.90589299999999995
	.quad	0x3fda5cdd50a88f00              # double 0.41191800000000001
	.quad	0x3fe490a569b17482              # double 0.64265700000000003
	.quad	0x3fe53a8c586876e2              # double 0.66339700000000001
	.quad	0x3fe83061c79b34a4              # double 0.75590599999999996
	.quad	0x3fd623b7952d234f              # double 0.34593000000000002
	.quad	0x3fadeb0fadf2ecf2              # double 0.058434
	.quad	0x3fe67a4a48f96e16              # double 0.70242800000000005
	.quad	0x3fe3f5ff609dcf89              # double 0.62377899999999997
	.quad	0x3fb63c42a66dbd73              # double 0.086857000000000004
	.quad	0x3fda121ab4b72c52              # double 0.40735500000000002
	.quad	0x3fd5d334c5da6a44              # double 0.34101599999999999
	.quad	0x3fe97d7c2ca148bb              # double 0.79656800000000005
	.quad	0x3fd3f3b213e3e293              # double 0.311749
	.quad	0x3fe9c003254e6e22              # double 0.80468899999999999
	.quad	0x3fe61a6b50b0f27c              # double 0.69072500000000003
	.quad	0x3fcf38b47c73eee5              # double 0.243918
	.quad	0x3fe574666ec9e237              # double 0.67045900000000003
	.quad	0x3febb526527a2058              # double 0.86586300000000005
	.quad	0x3fe73dd11be6e654              # double 0.72629600000000005
	.quad	0x3fec1d2bf5515055              # double 0.87856100000000004
	.quad	0x3fdea4bdba0a5269              # double 0.47880499999999998
	.quad	0x3f90653005814941              # double 0.016011000000000001
	.quad	0x3fb66601bc98a223              # double 0.087494000000000002
	.quad	0x3fe874a1272c94b4              # double 0.76423700000000005
	.quad	0x3fe2ed8904f6dfc6              # double 0.59149600000000002
	.quad	0x3fc5af7d30ad46f6              # double 0.16941800000000001
	.quad	0x3fbfb906466b1e5c              # double 0.123917
	.quad	0x3fe67a1a0cf1800a              # double 0.70240499999999995
	.quad	0x3fe79dfb9389b520              # double 0.73803499999999999
	.quad	0x3fb2634117f8444a              # double 0.071827000000000002
	.quad	0x3fe50dc768dfbd6a              # double 0.65793199999999996
	.quad	0x3fce8051c9f72f77              # double 0.238291
	.quad	0x3fd5ff47735c182f              # double 0.34370600000000001
	.quad	0x3fde53825e13b18e              # double 0.47384700000000002
	.quad	0x3fd92f8bdec5f395              # double 0.39352700000000002
	.quad	0x3f77774aba387592              # double 0.0057289999999999997
	.quad	0x3fefa6ce358298cc              # double 0.98911199999999999
	.quad	0x3fea748c2e770bd0              # double 0.82672699999999999
	.quad	0x3fc190d173fb7a5f              # double 0.13723199999999999
	.quad	0x3fdc7e6b3fe9fadb              # double 0.445216
	.quad	0x3fea472e275ab7dc              # double 0.82118899999999994
	.quad	0x3fe2e1d8622c4502              # double 0.59006899999999995
	.quad	0x3fe38a2014727dcc              # double 0.61061100000000001
	.quad	0x3fc063497b7414a5              # double 0.12803
	.quad	0x3fcd454152b0a6fc              # double 0.22867599999999999
	.quad	0x3fea653c9abb01c9              # double 0.82485799999999998
	.quad	0x3fe702c9081c2e34              # double 0.71909000000000001
	.quad	0x3fdef50e34762952              # double 0.483707
	.quad	0x3feb2c9081c2e33f              # double 0.84919
	.quad	0x3fe6942d490e66cb              # double 0.70558799999999999
	.quad	0x3fcbff04577d9557              # double 0.21872
	.quad	0x3fd63571d1d4738a              # double 0.34701199999999999
	.quad	0x3fec7603925bb7b7              # double 0.88940600000000003
	.quad	0x3f9b2a6b0d9513f9              # double 0.026529
	.quad	0x3fefc5b291b823c8              # double 0.99288299999999996
	.quad	0x3fe23c1eff9f87f0              # double 0.56983899999999998
	.quad	0x3fcbfa8f7db6e504              # double 0.218584
	.quad	0x3fe7e2ed352220bc              # double 0.74645099999999998
	.quad	0x3fe012923e5b8562              # double 0.50226700000000002
	.quad	0x3fe82641b328b6d8              # double 0.75466999999999995
	.quad	0x3fc2b0d0edc3bd5a              # double 0.14602100000000001
	.quad	0x3fc14e1a3f4666ed              # double 0.13519600000000001
	.quad	0x3fe020b3d4ae429e              # double 0.503992
	.quad	0x3feb8c7c0f451761              # double 0.86089899999999997
	.quad	0x3fe985c03361565c              # double 0.79757699999999998
	.quad	0x3fef7d88c1db0143              # double 0.984074
	.quad	0x3fc38b3700474d9c              # double 0.15268599999999999
	.quad	0x3fd269c23b7952d2              # double 0.28770499999999999
	.quad	0x3fe5a743a647fdc6              # double 0.67666800000000005
	.quad	0x3fe29f2fdb8fde2f              # double 0.581932
	.quad	0x3fc1704790b84988              # double 0.136239
	.quad	0x3fc4c0485a0be511              # double 0.16211800000000001
	.quad	0x3fdbeeb2d0a24463              # double 0.436444
	.quad	0x3fde6cd29131ec0b              # double 0.47539199999999998
	.quad	0x3fc89984a0e410b6              # double 0.19218499999999999
	.quad	0x3fe3b1960fa15db3              # double 0.61542799999999998
	.quad	0x3fd0ab042528ae75              # double 0.260438
	.quad	0x3fc82e7f6f4be836              # double 0.188919
	.quad	0x3fb3fb9bed30f063              # double 0.078058000000000002
	.quad	0x3fbab484d76ab580              # double 0.10431699999999999
	.quad	0x3fbbd3804534bd77              # double 0.108696
	.quad	0x3f9a21a719b4dcec              # double 0.025519
	.quad	0x3fdbe4606748e475              # double 0.43581399999999998
	.quad	0x3fed3358f2e05ccd              # double 0.91251800000000005
	.quad	0x3fd47521144cbe1f              # double 0.31964900000000002
	.quad	0x3fd3bead4f5903a7              # double 0.30851299999999998
	.quad	0x3fb39bdc69f8c21e              # double 0.076596999999999998
	.quad	0x3fed94057082491b              # double 0.924319
	.quad	0x3fe3cc165907d912              # double 0.61866299999999996
	.quad	0x3fc85e785b5b7069              # double 0.190383
	.quad	0x3fe0ddbdb5d89481              # double 0.52706799999999998
	.quad	0x3fbf64adff822bbf              # double 0.12263
	.quad	0x3fdb5946c332f017              # double 0.42732399999999998
	.quad	0x3fb796d0917d6b66              # double 0.092145000000000004
	.quad	0x3fd41c6088d6d3b7              # double 0.31423200000000001
	.quad	0x3fcb9620685553ef              # double 0.21551899999999999
	.quad	0x3fe47138bcdfefbf              # double 0.63882099999999997
	.quad	0x3fe9eb2af145521a              # double 0.80995700000000004
	.quad	0x3fc3ed288ce703b0              # double 0.15567500000000001
	.quad	0x3fd7c4da9003eea2              # double 0.37139
	.quad	0x3fd2b7f9d6f112fd              # double 0.29247899999999999
	.quad	0x3fecfe308787485e              # double 0.90602899999999997
	.quad	0x3fe37c5260f5e41d              # double 0.60892599999999997
	.quad	0x3fc070d1fa333765              # double 0.128443
	.quad	0x3f8b7f9d6f112fd3              # double 0.013427
	.quad	0x3feb029cfdd22856              # double 0.84406899999999996
	.quad	0x3feae8c26138fffc              # double 0.84091300000000002
	.quad	0x3fe0bb5e0f7fcfc4              # double 0.522872
	.quad	0x3fa4940bbb1f255f              # double 0.040191999999999999
	.quad	0x3fa29c779a6b50b1              # double 0.03635
	.quad	0x3fe60e68e3ef2841              # double 0.68925899999999996
	.quad	0x3fefafff36ac6477              # double 0.99023399999999994
	.quad	0x3fcdeac42e9899bf              # double 0.23372699999999999
	.quad	0x3feb1e731d2e0e30              # double 0.84746699999999997
	.quad	0x3fe9399b2c40d0ab              # double 0.78828200000000004
	.quad	0x3fc3418d6909aed5              # double 0.15043799999999999
	.quad	0x3fbf662fdfc19c17              # double 0.122653
	.quad	0x3fb35b8130164841              # double 0.075615000000000002
	.quad	0x3fee4083126e978d              # double 0.94537499999999997
	.quad	0x3fe5971e29b6b2af              # double 0.67469699999999999
	.quad	0x3feb94a6eb91b3f2              # double 0.861896
	.quad	0x3fd8a50d6b228dca              # double 0.38507400000000003
	.quad	0x3fe30a67620ee8d1              # double 0.59501999999999999
	.quad	0x3fc676d117b5286b              # double 0.17550099999999999
	.quad	0x3fb3b95a294141ea              # double 0.077047000000000004
	.quad	0x3fd1995aaf78feef              # double 0.27498499999999998
	.quad	0x3fd25b4edb2f661f              # double 0.28682299999999999
	.quad	0x3fc58f68be2f7b18              # double 0.16843900000000001
	.quad	0x3fe50dc981beb181              # double 0.65793299999999999
	.quad	0x3fe118958d9b5e96              # double 0.53425100000000003
	.quad	0x3fdd4d0dcfcc5b8e              # double 0.45782800000000001
	.quad	0x3fc39ba1b1960fa1              # double 0.15318699999999999
	.quad	0x3fdc84e831ad2136              # double 0.44561200000000001
	.quad	0x3fb370ef566490a3              # double 0.075941999999999996
	.quad	0x3fef9b36bd2b6f1a              # double 0.98769700000000005
	.quad	0x3fcb1bbcf4e874c9              # double 0.211784
	.quad	0x3fe2220ff540895d              # double 0.566658
	.quad	0x3fe52e5de15ca6ca              # double 0.66191
	.quad	0x3fe672367e414e7f              # double 0.70144200000000001
	.quad	0x3fb82949a5657fb7              # double 0.094380000000000006
	.quad	0x3fdf1947cfa26a23              # double 0.48591800000000002
	.quad	0x3fe112b7fe08aefb              # double 0.53353499999999998
	.quad	0x3fdcc0d2c386d2ed              # double 0.44926899999999997
	.quad	0x3fde04b3c3e74afd              # double 0.46903699999999998
	.quad	0x3fcf529fe004b7f6              # double 0.24470900000000001
	.quad	0x3fae0e0eb67c2870              # double 0.058701000000000003
	.quad	0x3fe7efa1e3eaf683              # double 0.74800199999999994
	.quad	0x3fe8032b990afe61              # double 0.75038700000000003
	.quad	0x3fd4377186551937              # double 0.315884
	.quad	0x3fded84901d19158              # double 0.48195100000000002
	.quad	0x3fea93293d102bc7              # double 0.83046399999999998
	.quad	0x3fd7d5dc4007570c              # double 0.37242799999999998
	.quad	0x3fc50aaa7ded6ba9              # double 0.16438800000000001
	.quad	0x3fc69ea140570825              # double 0.17671600000000001
	.quad	0x3fe53a450acc0bdd              # double 0.66336300000000004
	.quad	0x3fd098aa8650e779              # double 0.25931799999999999
	.quad	0x3fe77840181e03f7              # double 0.733429
	.quad	0x3fe30bf5d78811b2              # double 0.59521000000000002
	.quad	0x3fd69eba6aca7935              # double 0.35343799999999997
	.quad	0x3fe7b2bfdb4cc250              # double 0.74056999999999995
	.quad	0x3fe854ae429e0a42              # double 0.76033700000000004
	.quad	0x3fdc7620ee8d10f5              # double 0.44470999999999999
	.quad	0x3fee9a2e7f6f4be8              # double 0.95632099999999997
	.quad	0x3fe0ff822bbecaac              # double 0.53119000000000005
	.quad	0x3fd5b24e9c454584              # double 0.33900799999999998
	.quad	0x3fbd1633482be8bc              # double 0.11362
	.quad	0x3fe83eec39799e52              # double 0.75768100000000005
	.quad	0x3fd00d6b228dc982              # double 0.25081900000000001
	.quad	0x3feb7d4bf0995aaf              # double 0.85904499999999995
	.quad	0x3fec22595bbbe879              # double 0.879193
	.quad	0x3fc2d5ae1cde5d18              # double 0.147146
	.quad	0x3fdf948dc11e42e1              # double 0.49344199999999999
	.quad	0x3fc6ffb04ee7c4a0              # double 0.179678
	.quad	0x3fd0815e39713ad6              # double 0.25789600000000001
	.quad	0x3fe16b356da0168b              # double 0.54433699999999996
	.quad	0x3fef03d790752daa              # double 0.96921900000000005
	.quad	0x3fd7c0724b76f6d7              # double 0.37112099999999998
	.quad	0x3fa4b9884c6a3bde              # double 0.040478
	.quad	0x3fc4b9e492bc2fc7              # double 0.16192300000000001
	.quad	0x3fc387bdcf0307f2              # double 0.15257999999999999
	.quad	0x3fe934959e625636              # double 0.78766899999999995
	.quad	0x3fd53d7d3910c2c6              # double 0.33187800000000001
	.quad	0x3fb40192a737110e              # double 0.078148999999999996
	.quad	0x3fe6f457c0b13598              # double 0.71732700000000005
	.quad	0x3fe4113a4f8726d0              # double 0.62710299999999997
	.quad	0x3fb21272c94b380d              # double 0.070594000000000004
	.quad	0x3fdee7ff583a53b9              # double 0.48291000000000001
	.quad	0x3fe9d87f88765ba7              # double 0.80767800000000001
	.quad	0x3fdf530489d27c39              # double 0.48944199999999999
	.quad	0x3fe96e8af81626b3              # double 0.79474400000000001
	.quad	0x3fceb13dfb0d51f8              # double 0.239784
	.quad	0x3fe4c0e9d51b4fe8              # double 0.64854900000000004
	.quad	0x3faf2fba01eeed89              # double 0.060911
	.quad	0x3fe0d2c9d16fc9bc              # double 0.52573099999999995
	.quad	0x3fea88a697aeddce              # double 0.82918099999999995
	.quad	0x3fdb53ac4f7ec354              # double 0.42698199999999997
	.quad	0x3fc50fd7e45803cd              # double 0.164546
	.quad	0x3fee69a0ad8a1166              # double 0.95039399999999996
	.quad	0x3f9961804d983947              # double 0.024785999999999999
	.quad	0x3fd9141a6937d1fe              # double 0.39185199999999998
	.quad	0x3fe75017dae81883              # double 0.72852700000000004
	.quad	0x3fed0090b417ca21              # double 0.90631899999999999
	.quad	0x3fcabf7f06705c89              # double 0.20896899999999999
	.quad	0x3fcf06ee30caa327              # double 0.242399
	.quad	0x3fcd82b1f687b13a              # double 0.23055100000000001
	.quad	0x3fe50b7e4de3b8a2              # double 0.65765300000000004
	.quad	0x3fe5ef9b994e1a3f              # double 0.68549899999999997
	.quad	0x3fedd9c49774256c              # double 0.93283300000000002
	.quad	0x3fb7a8a3f8982cb2              # double 0.092416999999999999
	.quad	0x3fe9c00b88ca3e7d              # double 0.80469299999999999
	.quad	0x3fe3d425f202107b              # double 0.61964699999999995
	.quad	0x3feed1782d38476f              # double 0.96306999999999998
	.quad	0x3fb19b4dcebfec14              # double 0.068776000000000004
	.quad	0x3fae87d2c7b890d6              # double 0.059630000000000002
	.quad	0x3fc9f4eca686e7e6              # double 0.202787
	.quad	0x3fdbad3e920c069e              # double 0.43244899999999997
	.quad	0x3fe7639f77292c49              # double 0.73091099999999998
	.quad	0x3fd96d4801f75105              # double 0.39729500000000001
	.quad	0x3fd5044f1a1986ba              # double 0.32838800000000001
	.quad	0x3fdb61e4f765fd8b              # double 0.42785000000000001
	.quad	0x3f9f8df7a4e7ab75              # double 0.030814999999999999
	.quad	0x3fbea14057082492              # double 0.119648
	.quad	0x3fe4fe154434e337              # double 0.65601600000000004
	.quad	0x3fe3b543aeab7996              # double 0.61587700000000001
	.quad	0x3fee17aeddce7cd0              # double 0.94039099999999998
	.quad	0x3fe1cf1a1986b9c3              # double 0.556531
	.quad	0x3fcf6f3b213e3e29              # double 0.24558199999999999
	.quad	0x3fd34b48d3ae685e              # double 0.30147000000000002
	.quad	0x3fe8c74751ce28ed              # double 0.77432599999999996
	.quad	0x3fd072580c308feb              # double 0.25697900000000001
	.quad	0x3fddca18bd66277c              # double 0.46545999999999998
	.quad	0x3fe9bad5bee3d5fe              # double 0.80405700000000002
	.quad	0x3fcbc45cbbc2b94e              # double 0.21693000000000001
	.quad	0x3fb7c371da37ef5b              # double 0.092826000000000006
	.quad	0x3fb80841ede1198b              # double 0.093876000000000001
	.quad	0x3fe1a7d45a5fc7e7              # double 0.55173700000000003
	.quad	0x3fdb33d6c7219221              # double 0.425039
	.quad	0x3feaa86f8ad2567a              # double 0.83306100000000005
	.quad	0x3fbf14013ec460ee              # double 0.12139900000000001
	.quad	0x3fe454e6e221c8a8              # double 0.63536400000000004
	.quad	0x3fe2dd4845132f88              # double 0.58951200000000004
	.quad	0x3fd4bf5d78811b1e              # double 0.32418000000000002
	.quad	0x3fefd9d7774aba38              # double 0.99534199999999994
	.quad	0x3fd336f7e3d1cc10              # double 0.30023
	.quad	0x3fecfd0d0678c005              # double 0.90588999999999997
	.quad	0x3fe760ae9680e065              # double 0.73055199999999998
	.quad	0x3fe0ac450268900c              # double 0.52102899999999996
	.quad	0x3fda56d5cfaacd9f              # double 0.41155000000000003
	.quad	0x3f7fcf3dc054ef46              # double 0.0077660000000000003
	.quad	0x3fa31bde82d7b635              # double 0.037322000000000001
	.quad	0x3fe2e6e653868fd2              # double 0.59068600000000004
	.quad	0x3fce33a4723aafff              # double 0.23595099999999999
	.quad	0x3fcde225fa658c4c              # double 0.233464
	.quad	0x3fe7356da0168b5d              # double 0.72527200000000003
	.quad	0x3fd5da554b8bef8d              # double 0.341451
	.quad	0x3fe634d8ba40d90e              # double 0.69395099999999998
	.quad	0x3febb393ab430f49              # double 0.86567099999999997
	.quad	0x3feef7531db445ed              # double 0.96769099999999996
	.quad	0x3fecf2734f82f512              # double 0.90459599999999996
	.quad	0x3fdec868b9fdbd30              # double 0.48098200000000002
	.quad	0x3fbadfd694ccab3f              # double 0.104978
	.quad	0x3fed6bfca85caafc              # double 0.91943200000000002
	.quad	0x3feb18548a9bcfd5              # double 0.84672000000000003
	.quad	0x3fe4faaac1094a2c              # double 0.65559900000000004
	.quad	0x3fed340d4dc65c70              # double 0.91260399999999997
	.quad	0x3fd7353b4b2fa93b              # double 0.362624
	.quad	0x3fcaaf1455219a84              # double 0.20846799999999999
	.quad	0x3fee00f345069a4e              # double 0.937616
	.quad	0x3fd951c193b3a68b              # double 0.39561499999999999
	.quad	0x3fccda5daf07bfe8              # double 0.225414
	.quad	0x3fbabfb9bed30f06              # double 0.104488
	.quad	0x3fe92e33eff19503              # double 0.78688999999999998
	.quad	0x3fe519d883ba3444              # double 0.65940500000000002
	.quad	0x3fe20dbad3a604e2              # double 0.56417600000000001
	.quad	0x3fbb73affb04ee7c              # double 0.107234
	.quad	0x3fefd5454152b0a7              # double 0.994784
	.quad	0x3fd3f449129888f8              # double 0.31178499999999998
	.quad	0x3fe19f212d773190              # double 0.55067500000000003
	.quad	0x3fecbae685db76b4              # double 0.89781500000000002
	.quad	0x3fef5771001d5c31              # double 0.97942399999999996
	.quad	0x3fe3ae4f3343fa2b              # double 0.61502800000000002
	.quad	0x3fdcc51dabe2717a              # double 0.44953100000000001
	.quad	0x3fd24bba12b5e52a              # double 0.28587200000000001
	.quad	0x3fd29830e3cd9a52              # double 0.29053899999999999
	.quad	0x3fe646bacf7446fa              # double 0.69613400000000003
	.quad	0x3fd5d0a67620ee8d              # double 0.34086
	.quad	0x3fe265d9e40c8473              # double 0.57493300000000003
	.quad	0x3fb3a97e132b55ef              # double 0.076804999999999998
	.quad	0x3fe9999bb2788db0              # double 0.80000099999999996
	.quad	0x3f9ef284167a95c8              # double 0.030221999999999999
	.quad	0x3fef0e410b630a91              # double 0.97048999999999996
	.quad	0x3fea082cf52b90a8              # double 0.81349800000000005
	.quad	0x3fc821d10b1feeb3              # double 0.18853200000000001
	.quad	0x3fde4f2ae07e5a79              # double 0.473582
	.quad	0x3fe40eae18ac9f30              # double 0.62679200000000002
	.quad	0x3fe40ecd8dbcec85              # double 0.626807
	.quad	0x3fadd67ba237cdcd              # double 0.058277000000000002
	.quad	0x3fddcae21101b003              # double 0.46550799999999998
	.quad	0x3fda229e90795f67              # double 0.40836299999999998
	.quad	0x3fb85b078d92fb1a              # double 0.095139000000000001
	.quad	0x3fd3a83f4eca686e              # double 0.30714399999999997
	.quad	0x3fc2fa376922d949              # double 0.148261
	.quad	0x3fd170ef566490a3              # double 0.27251799999999998
	.quad	0x3fed770153bd1676              # double 0.92077699999999996
	.quad	0x3feebbf50e347629              # double 0.96044399999999996
	.quad	0x3feefb2cc70867ae              # double 0.96816100000000005
	.quad	0x3fde7c5ac471b478              # double 0.47633999999999999
	.quad	0x3fc3e64f54d1e96c              # double 0.15546599999999999
	.quad	0x3fbc2773e24febd1              # double 0.10997700000000001
	.quad	0x3fd6a786c226809d              # double 0.35397499999999998
	.quad	0x3fe30a43bb40b34e              # double 0.59500299999999995
	.quad	0x3feb73cf70153bd1              # double 0.85788699999999996
	.quad	0x3fe378726d04e619              # double 0.60845300000000002
	.quad	0x3fc7130df9bdc6a0              # double 0.18026900000000001
	.quad	0x3fdbc70867ad8e43              # double 0.43402299999999999
	.quad	0x3fe7710880d801b4              # double 0.73254799999999998
	.quad	0x3fedec7a7c9de050              # double 0.93511699999999998
	.quad	0x3feaac27a63736ce              # double 0.83351500000000001
	.quad	0x3fed2339c0ebedfa              # double 0.91054999999999997
	.quad	0x3fe9fe60c38f3669              # double 0.81230199999999997
	.quad	0x3fd8d4f9c1f85d74              # double 0.38799899999999998
	.quad	0x3fe81f23465625a7              # double 0.75380100000000005
	.quad	0x3fc4943e10060781              # double 0.160774
	.quad	0x3fa65907d912556d              # double 0.043647999999999999
	.quad	0x3fc32ce032db1e9f              # double 0.149807
	.quad	0x3fe34199fe43675e              # double 0.60175800000000002
	.quad	0x3fec943bf727136a              # double 0.89309499999999997
	.quad	0x3fc8d24e160d887f              # double 0.19391800000000001
	.quad	0x3fe1125785f8d2e5              # double 0.53348899999999999
	.quad	0x3febeb28d8665e03              # double 0.87245600000000001
	.quad	0x3feeaa60913a4f87              # double 0.95829799999999998
	.quad	0x3feabae03b3e9a70              # double 0.83531200000000005
	.quad	0x3fe0ad72ffd1dcd7              # double 0.521173
	.quad	0x3fddcd141a6937d2              # double 0.465642
	.quad	0x3fc2efed634549b6              # double 0.147947
	.quad	0x3fdf8fb43d89ce4a              # double 0.49314599999999997
	.quad	0x3fdf4230fcf80dc3              # double 0.48841499999999999
	.quad	0x3fcaca70d1fa3337              # double 0.20930299999999999
	.quad	0x3fde5dc8323358f3              # double 0.47447400000000001
	.quad	0x3fa769014b599aa6              # double 0.045723
	.quad	0x3fdaa29c779a6b51              # double 0.41617500000000002
	.quad	0x3fe72d70e6f2e8c0              # double 0.72429699999999997
	.quad	0x3fe56bb55ac03ff7              # double 0.66939800000000005
	.quad	0x3fe38d4fdf3b645a              # double 0.61099999999999999
	.quad	0x3fe2a3c85c24c405              # double 0.58249300000000004
	.quad	0x3fdd9c90c4dec1c2              # double 0.46268100000000001
	.quad	0x3f98c3b0c4588a05              # double 0.024184000000000001
	.quad	0x3fd6a25d8d79d0a6              # double 0.35365999999999997
	.quad	0x3fd80b0292817764              # double 0.37567200000000001
	.quad	0x3fdadc37a3db3bfb              # double 0.41969099999999998
	.quad	0x3fd6454de7ea5f85              # double 0.34798000000000001
	.quad	0x3fe94fe79ee02a78              # double 0.79100400000000004
	.quad	0x3fec74ddf86e3b47              # double 0.889266
	.quad	0x3fc8074ea8da7f3d              # double 0.187723
	.quad	0x3fe3fe154434e337              # double 0.62476600000000004
	.quad	0x3fe50b8066c2acb8              # double 0.65765399999999996
	.quad	0x3fc090eed02cd39e              # double 0.12942300000000001
	.quad	0x3fd0eeb2d0a24463              # double 0.264569
	.quad	0x3fe82d38476f2a5a              # double 0.75551999999999997
	.quad	0x3fb6bfdb4cc25072              # double 0.088864999999999999
	.quad	0x3fe53d9018e75793              # double 0.66376500000000005
	.quad	0x3fa5158b827fa1a1              # double 0.041180000000000001
	.quad	0x3f851611ba3ca750              # double 0.010296
	.quad	0x3fdaab4fa48301a8              # double 0.41670600000000002
	.quad	0x3fd0ad0c3d25247d              # double 0.26056200000000002
	.quad	0x3fe1425aee631f8a              # double 0.53935
	.quad	0x3fcbafb7e90ff972              # double 0.21629999999999999
	.quad	0x3f773b85e80bed74              # double 0.005672
	.quad	0x3fdea172abef06b3              # double 0.47860399999999997
	.quad	0x3fe4d3111f0c34c2              # double 0.65076500000000004
	.quad	0x3fce856605ee568a              # double 0.23844599999999999
	.quad	0x3fe0e69f05ea24cc              # double 0.52815199999999995
	.quad	0x3fe8bc7d5ed06fef              # double 0.77300899999999995
	.quad	0x3fd5dc1e7967caea              # double 0.34155999999999997
	.quad	0x3fbcd306a2b17050              # double 0.112595
	.quad	0x3fe2a5119ce075f7              # double 0.58265
	.quad	0x3fd782235b4edb2f              # double 0.36731799999999998
	.quad	0x3fdf352220bc382a              # double 0.487618
	.quad	0x3fd6b384fd2a62aa              # double 0.35470699999999999
	.quad	0x3fcf8201cd5f99c4              # double 0.24615500000000001
	.quad	0x3fd8e835dedf1e08              # double 0.38917299999999999
	.quad	0x3faf049a9973d9ec              # double 0.060581999999999997
	.quad	0x3fdca671ef30a4e3              # double 0.44765899999999997
	.quad	0x3fb00724b76f6d76              # double 0.062608999999999998
	.quad	0x3fee04a72ead9275              # double 0.93806800000000001
	.quad	0x3febb267c6b8b695              # double 0.86552799999999996
	.quad	0x3fb17c914b167ec8              # double 0.068307000000000007
	.quad	0x3fdf3d816aceaaf3              # double 0.48812899999999998
	.quad	0x3fea1ada76d97b31              # double 0.815778
	.quad	0x3fcc4e379b77c02b              # double 0.221137
	.quad	0x3fec45b6c3760bf6              # double 0.88351000000000002
	.quad	0x3fd22e275ab7dc7b              # double 0.28406700000000001
	.quad	0x3fe2014b599aa609              # double 0.56265799999999999
	.quad	0x3fa11f0c34c1a8ac              # double 0.033439999999999998
	.quad	0x3fdd6c4827b6fe2e              # double 0.45973399999999998
	.quad	0x3fd8e21d96e9bbf1              # double 0.38880100000000001
	.quad	0x3fe3afe60c38f367              # double 0.61522200000000005
	.quad	0x3fdec714fce746cc              # double 0.48090100000000002
	.quad	0x3fe97064ece9a2c6              # double 0.79496999999999995
	.quad	0x3fc00fd3b29a1ba0              # double 0.12548300000000001
	.quad	0x3fe2c6fdeb52c9d1              # double 0.58679099999999995
	.quad	0x3feec51b93037d63              # double 0.96156099999999999
	.quad	0x3fe7c5f9df548ece              # double 0.74291700000000005
	.quad	0x3fe2c8c5004fb118              # double 0.58700799999999997
	.quad	0x3fe00f10a99b6f5d              # double 0.50183900000000004
	.quad	0x3fd6d27c39368273              # double 0.356597
	.quad	0x3fb0bc27631b584b              # double 0.065370999999999999
	.quad	0x3fe823a8e71476b0              # double 0.75435300000000005
	.quad	0x3fd9354c122749f1              # double 0.39387800000000001
	.quad	0x3fdfc271fff79c84              # double 0.49624299999999999
	.quad	0x3feb1b6f5caf2d80              # double 0.84709900000000005
	.quad	0x3fed9cde5d18090b              # double 0.92539899999999997
	.quad	0x3fe393a71151611c              # double 0.61177400000000004
	.quad	0x3fefced0b30b5aa7              # double 0.99399599999999999
	.quad	0x3fe99fff79c842fa              # double 0.80078099999999997
	.quad	0x3fa0522ea0fd3b2a              # double 0.031877000000000003
	.quad	0x3fd8872f33ca31e8              # double 0.38325100000000001
	.quad	0x3fd2204af922962d              # double 0.283221
	.quad	0x3fd9e425aee631f9              # double 0.40455000000000002
	.quad	0x3fb4f6f08cc575c0              # double 0.081892999999999994
	.quad	0x3fd79de050374ff8              # double 0.36901099999999998
	.quad	0x3f9239e6ab9b23dd              # double 0.017798999999999999
	.quad	0x3fdd5b78cc9a77e6              # double 0.458708
	.quad	0x3fb6836eb4e98138              # double 0.087942999999999993
	.quad	0x3fec05857afea3df              # double 0.87567399999999995
	.quad	0x3fe11797cc39ffd6              # double 0.53412999999999999
	.quad	0x3fcce5e679463cfb              # double 0.22576599999999999
	.quad	0x3fe3c4e2f37fbefd              # double 0.617784
	.quad	0x3fb99008205ff1d8              # double 0.099853999999999998
	.quad	0x3fc45332acfb762e              # double 0.15878900000000001
	.quad	0x3fe179702e6644d8              # double 0.54607399999999995
	.quad	0x3fd73a9f383f0baf              # double 0.36295300000000003
	.quad	0x3febbc903ea704bc              # double 0.86676799999999998
	.quad	0x3fec36b6e0d23d4f              # double 0.88167899999999999
	.quad	0x3fd0328b6d86ec18              # double 0.253085
	.quad	0x3fb2af35e310dbf0              # double 0.072985999999999995
	.quad	0x3fa880d801b43526              # double 0.047857999999999998
	.quad	0x3fb94877681669cf              # double 0.098762000000000003
	.quad	0x3fc32cbea4ebdd33              # double 0.14980299999999999
	.quad	0x3fb3607c4199fe43              # double 0.075690999999999994
	.quad	0x3fe51fadafd11383              # double 0.66011699999999995
	.quad	0x3fd89f87f023e9ea              # double 0.384737
	.quad	0x3fe0004b7f5a5333              # double 0.50003600000000004
	.quad	0x3fb2b68cef672b88              # double 0.073097999999999996
	.quad	0x3fe1e33acd5b6806              # double 0.55898800000000004
	.quad	0x3fc33743632c1f43              # double 0.15012400000000001
	.quad	0x3fec5c74751ce28f              # double 0.88628600000000002
	.quad	0x3fe4c107314ca926              # double 0.648563
	.quad	0x3fcbcac083126e98              # double 0.21712500000000001
	.quad	0x3fe930d73860999e              # double 0.78721200000000002
	.quad	0x3fedd65a14488c61              # double 0.93241600000000002
	.quad	0x3fd3256366d7a56e              # double 0.29915700000000001
	.quad	0x3fddb05faebc408e              # double 0.46389000000000002
	.quad	0x3fe4bc7b45f17bd9              # double 0.64800800000000003
	.quad	0x3fc8052502eec7c9              # double 0.18765699999999999
	.quad	0x3fc1da4052d666aa              # double 0.13947300000000001
	.quad	0x3fb32e59af9ebe9d              # double 0.074926000000000006
	.quad	0x3fe02148ba83f4ed              # double 0.50406300000000004
	.quad	0x3fde67e414e7ee91              # double 0.47509099999999999
	.quad	0x3fdede3b8a19c9d6              # double 0.48231400000000002
	.quad	0x3fbb78359bc33f85              # double 0.107303
	.quad	0x3fee70cfe154434e              # double 0.95127099999999998
	.quad	0x3fd98e3ac0c62e4d              # double 0.39930599999999999
	.quad	0x3fe0e2e90364388f              # double 0.52769900000000003
	.quad	0x3fe6c5c78a6dacac              # double 0.71164300000000003
	.quad	0x3f9fa8b4bf8fcd68              # double 0.030917
	.quad	0x3fe343c9eecbfb16              # double 0.60202500000000003
	.quad	0x3fdb2ca148ba83f5              # double 0.424599
	.quad	0x3fc0da1a93293d10              # double 0.131656
	.quad	0x3fc0df0d413122b8              # double 0.13180700000000001
	.quad	0x3fec283f4eca686e              # double 0.87991299999999995
	.quad	0x3fd725204af92296              # double 0.36164099999999999
	.quad	0x3fd9daceee0f3cb4              # double 0.40398000000000001
	.quad	0x3fea35696e58a32f              # double 0.81901999999999997
	.quad	0x3fb47ad080b673c5              # double 0.079999000000000001
	.quad	0x3fe2b968d759ee89              # double 0.58513300000000001
	.quad	0x3fee93f6c2699c7c              # double 0.95556200000000002
	.quad	0x3fed2012599ed7c7              # double 0.910165
	.quad	0x3fe7577318fc5048              # double 0.72942499999999999
	.quad	0x3fd07e9d94d0dcfd              # double 0.25772800000000001
	.quad	0x3fc8c7c0f4517614              # double 0.19359599999999999
	.quad	0x3fe4e0f7fcfc3f81              # double 0.65246199999999999
	.quad	0x3fd08476f2a5a46a              # double 0.25808500000000001
	.quad	0x3fea4093d9663843              # double 0.82038299999999997
	.quad	0x3fe8d4c33b539325              # double 0.775972
	.quad	0x3fcc5cc426351def              # double 0.221581
	.quad	0x3fa5909f1f14983d              # double 0.042118999999999997
	.quad	0x3fd2a28bb0a2ca9b              # double 0.29117100000000001
	.quad	0x3feb4a0a0f4d7add              # double 0.85278799999999999
	.quad	0x3fec14f483cafb3b              # double 0.87755799999999995
	.quad	0x3fe5951611ba3ca7              # double 0.67444899999999997
	.quad	0x3fe4f23cc8de2ac3              # double 0.65456999999999999
	.quad	0x3fe8fcfa26a22b39              # double 0.78088100000000005
	.quad	0x3fe7ddb3397dd00f              # double 0.74581299999999995
	.quad	0x3fe9eb356da0168b              # double 0.80996199999999996
	.quad	0x3fee8e5e679463d0              # double 0.95487900000000003
	.quad	0x3fc46583e8576cce              # double 0.15934799999999999
	.quad	0x3fe6a13e3e29307b              # double 0.70718300000000001
	.quad	0x3fc6d76ab5807fed              # double 0.178449
	.quad	0x3fe0e30ec3116228              # double 0.52771699999999999
	.quad	0x3fefe2541d8e8640              # double 0.99637799999999998
	.quad	0x3fb9e3a7daa4fca4              # double 0.10113
	.quad	0x3fc2985f06f69446              # double 0.14527499999999999
	.quad	0x3fd4b549f94855da              # double 0.32356499999999999
	.quad	0x3fd0db7f1737542a              # double 0.26339699999999999
	.quad	0x3fe2f6d97b30f8c6              # double 0.59263299999999997
	.quad	0x3fc387df5cf2495e              # double 0.152584
	.quad	0x3fe251c7de5082cf              # double 0.57248299999999996
	.quad	0x3fe9ffcdab191dde              # double 0.81247599999999998
	.quad	0x3feb9c8a7a41e57e              # double 0.86285900000000004
	.quad	0x3fd791c087442c80              # double 0.36827100000000002
	.quad	0x3feea9ed3953dea4              # double 0.95824299999999995
	.quad	0x3fe4edefc7a39820              # double 0.65404499999999999
	.quad	0x3fd6a5fc7e6b3fea              # double 0.353881
	.quad	0x3fd18561d4306e5d              # double 0.27376600000000001
	.quad	0x3fdcef954eb13dfb              # double 0.452123
	.quad	0x3fdd2c3009b30729              # double 0.455822
	.quad	0x3feb45fe111276fb              # double 0.852294
	.quad	0x3fda219a847b2464              # double 0.40830100000000003
	.quad	0x3feeb84db9c7368b              # double 0.95999800000000001
	.quad	0x3fcc4f00ef1348b2              # double 0.221161
	.quad	0x3fe7f6fd21ff2e49              # double 0.74890000000000001
	.quad	0x3fe06060fe47991c              # double 0.51176500000000003
	.quad	0x3fe4ffbefd00713f              # double 0.656219
	.quad	0x3f831098d477bbf9              # double 0.0093089999999999995
	.quad	0x3fd938c9752977c9              # double 0.39409100000000002
	.quad	0x3fb0ed80a17b0f6b              # double 0.066124000000000002
	.quad	0x3fe5df7c6759ab6d              # double 0.683531
	.quad	0x3fcb68d759ee88df              # double 0.21413699999999999
	.quad	0x3fe398266772d5e0              # double 0.61232299999999995
	.quad	0x3fdb773e24febd0a              # double 0.42915300000000001
	.quad	0x3fe8dfdef8487b9a              # double 0.77732800000000002
	.quad	0x3fe10fadf2ecf206              # double 0.53316399999999997
	.quad	0x3fddef2c7325918a              # double 0.467723
	.quad	0x3fcf0d7be9856a38              # double 0.24259900000000001
	.quad	0x3febdeefe4ffc979              # double 0.87096399999999996
	.quad	0x3fdcc44bf4cb1898              # double 0.44948100000000002
	.quad	0x3fecad905c033615              # double 0.89618699999999996
	.quad	0x3fd2778dd616f86a              # double 0.288547
	.quad	0x3fdc1dc0db2702a3              # double 0.43931599999999998
	.quad	0x3fe6ec3760bf5d79              # double 0.71633500000000006
	.quad	0x3fba1c68ec52a412              # double 0.101996
	.quad	0x3fe68ff327aa68f5              # double 0.70507200000000003
	.quad	0x3fdf3c1ce6c093d9              # double 0.48804399999999998
	.quad	0x3fe7ce24bba12b5e              # double 0.74391399999999996
	.quad	0x3fcb529fe004b7f6              # double 0.21345900000000001
	.quad	0x3fea24a05dd8f92b              # double 0.816971
	.quad	0x3fe43215fcc1871e              # double 0.63111399999999995
	.quad	0x3fdf54bcf0b6b6e1              # double 0.48954700000000001
	.quad	0x3fe688ebcc6c54bd              # double 0.70421400000000001
	.quad	0x3fa33df2a9d627bf              # double 0.037581999999999997
	.quad	0x3fae57fb69984a0e              # double 0.059264999999999998
	.quad	0x3fe75898b2e9ccb8              # double 0.72956500000000002
	.quad	0x3fefc1615ebfa8f8              # double 0.99235600000000001
	.quad	0x3fba82c6ef3d3a1d              # double 0.103558
	.quad	0x3fc7e24febd09e13              # double 0.18659400000000001
	.quad	0x3fe3a1511dffc548              # double 0.61344200000000004
	.quad	0x3fd0c9363f572de4              # double 0.26228099999999999
	.quad	0x3fe8aca57a786c22              # double 0.77107499999999995
	.quad	0x3fe69bf37b8d3f18              # double 0.70653699999999997
	.quad	0x3fee6d9be4cd7492              # double 0.95087999999999995
	.quad	0x3fe307d0aed99cbf              # double 0.59470400000000001
	.quad	0x3fcd139c94f69caa              # double 0.227161
	.quad	0x3feb52fc2656abde              # double 0.85387999999999997
	.quad	0x3fd6e3c105186db5              # double 0.357651
	.quad	0x3fe58f3eccc46951              # double 0.673736
	.quad	0x3fb5882adc4c9c91              # double 0.084109000000000003
	.quad	0x3fd267d77fae3609              # double 0.28758800000000001
	.quad	0x3fe1748c2e770bd0              # double 0.54547699999999999
	.quad	0x3fda35fc3b4f6167              # double 0.40954499999999999
	.quad	0x3fc853d20f2becee              # double 0.190058
	.quad	0x3feea048e043a216              # double 0.95706599999999997
	.quad	0x3fe4dff822bbecab              # double 0.65234000000000003
	.quad	0x3fcbd54da4ce8102              # double 0.217447
	.quad	0x3fc5ff04577d9557              # double 0.171845
	.quad	0x3fd063800218def4              # double 0.256073
	.quad	0x3fcf50092ccf6be3              # double 0.24462999999999999
	.quad	0x3fe11e1d2178f68c              # double 0.53492600000000001
	.quad	0x3f8df3300de4c511              # double 0.014624
	.quad	0x3fc19fa11a975afb              # double 0.137684
	.quad	0x3fef273f748a1598              # double 0.97354099999999998
	.quad	0x3fe80512231832fd              # double 0.75061900000000004
	.quad	0x3fe82656abde3fbc              # double 0.75468000000000001
	.quad	0x3fd20afa2f05a709              # double 0.28192
	.quad	0x3fe7e4d1a6506141              # double 0.74668199999999996
	.quad	0x3fd31cf355cd91ef              # double 0.29864200000000002
	.quad	0x3feca1709310129d              # double 0.89470700000000003
	.quad	0x3fa22e7f6f4be836              # double 0.035511000000000001
	.quad	0x3fec3f91e646f156              # double 0.88275999999999999
	.quad	0x3fe767f90d9d7775              # double 0.73144200000000004
	.quad	0x3fd788a04d12018a              # double 0.36771399999999999
	.quad	0x3fe81de8b3b32053              # double 0.75365099999999996
	.quad	0x3fcc806af46aa088              # double 0.22266900000000001
	.quad	0x3feb6b59146e4c0e              # double 0.856854
	.quad	0x3fcd0fa58f7121ab              # double 0.22703999999999999
	.quad	0x3fd875a74c09c3ce              # double 0.38218099999999999
	.quad	0x3fee7c7820a30db7              # double 0.95269400000000004
	.quad	0x3fc9af102363b257              # double 0.200655
	.quad	0x3fc165b20b8066c3              # double 0.13591600000000001
	.quad	0x3fc6909aed56b010              # double 0.176288
	.quad	0x3fd411d798d8a97a              # double 0.31358900000000001
	.quad	0x3fe060f1b25f633d              # double 0.51183400000000001
	.quad	0x3fede49906cca2db              # double 0.93415499999999996
	.quad	0x3fbc7bbb62413db8              # double 0.111263
	.quad	0x3febd9d3458cd20b              # double 0.87034
	.quad	0x3fef7444e0daa0cb              # double 0.98294300000000001
	.quad	0x3fd889e34330d738              # double 0.38341599999999998
	.quad	0x3fb522b7baecd078              # double 0.082560999999999996
	.quad	0x3fd4f605ab3aabcd              # double 0.32751599999999997
	.quad	0x3fdc05532617c1be              # double 0.43782500000000002
	.quad	0x3fa2f5ba2be0589b              # double 0.037031000000000001
	.quad	0x3fdf2a0ec7432010              # double 0.48694199999999999
	.quad	0x3fdff8c21e1d2179              # double 0.499558
	.quad	0x3fcb2c7b890d5a5c              # double 0.21229500000000001
	.quad	0x3fd98650e779207d              # double 0.39882299999999998
	.quad	0x3fead2a843808851              # double 0.83821500000000004
	.quad	0x3fe2b8e29f9ce8d9              # double 0.58506899999999995
	.quad	0x3fe6266772d5e072              # double 0.69218800000000003
	.quad	0x3fe2a600b0292817              # double 0.58276399999999995
	.quad	0x3fe681d19157abb9              # double 0.70334700000000006
	.quad	0x3fa3a908a265f0f6              # double 0.038399000000000003
	.quad	0x3fd0126634117f84              # double 0.25112299999999999
	.quad	0x3fee637585be1a82              # double 0.94964099999999996
	.quad	0x3fedd41743e963dc              # double 0.93213999999999996
	.quad	0x3fcec5c9a34ca0c3              # double 0.24041100000000001
	.quad	0x3fdedd15f02c4d66              # double 0.48224400000000001
	.quad	0x3fea6ba8c586876e              # double 0.82564199999999999
	.quad	0x3fd3436b8f9b1316              # double 0.30098999999999998
	.quad	0x3fee6d6777079e5a              # double 0.95085500000000001
	.quad	0x3fd9a9ef5232d2bb              # double 0.40099699999999999
	.quad	0x3fca7179bfdf7e80              # double 0.20658799999999999
	.quad	0x3fed9888f861a60d              # double 0.92486999999999997
	.quad	0x3fc789d6adf71eb0              # double 0.183894
	.quad	0x3fdbc996b76709fa              # double 0.43417899999999998
	.quad	0x3fb53b18dac258d6              # double 0.082933000000000006
	.quad	0x3fb67296f6512a95              # double 0.087686
	.quad	0x3f94da09cc319c5a              # double 0.020362999999999999
	.quad	0x3fcabd4cfd08d4bb              # double 0.208902
	.quad	0x3fc9a604e1e71045              # double 0.200379
	.quad	0x3fce65e892253112              # double 0.237485
	.quad	0x3fdfdf43c7d5ed07              # double 0.498002
	.quad	0x3fe1651b0ccbc05d              # double 0.54359199999999996
	.quad	0x3fe8854cdb7ae579              # double 0.76627199999999995
	.quad	0x3fa5bab21815a07b              # double 0.042439999999999999
	.quad	0x3fc1785729b280f1              # double 0.136485
	.quad	0x3feeda858793dd98              # double 0.964175
	.quad	0x3fe433fa6defc7a4              # double 0.63134500000000005
	.quad	0x3fe6158537e2c55d              # double 0.69012700000000005
	.quad	0x3fd06f36ef8055fc              # double 0.25678800000000002
	.quad	0x3fd15bc44bf4cb19              # double 0.27122600000000002
	.quad	0x3fe23317efe0ce0c              # double 0.56873700000000005
	.quad	0x3fc71611ba3ca750              # double 0.18036099999999999
	.quad	0x3fe3b6bd2b6f1993              # double 0.61605699999999997
	.quad	0x3fc1b1c864883fd5              # double 0.138238
	.quad	0x3febe74f2f123c43              # double 0.87198600000000004
	.quad	0x3fd873affb04ee7c              # double 0.38206099999999998
	.quad	0x3fcd1f70de8f6cf0              # double 0.227522
	.quad	0x3fe08893b7d84902              # double 0.51667200000000002
	.quad	0x3fe719029ae4f334              # double 0.72180299999999997
	.quad	0x3fc79e30014f8b59              # double 0.18451500000000001
	.quad	0x3fe27fe6d58c8eef              # double 0.57811299999999999
	.quad	0x3fd5e7210be9424e              # double 0.34223199999999998
	.quad	0x3fd7f0f16f4384ba              # double 0.374081
	.quad	0x3fd5dd1a21ea3593              # double 0.34161999999999998
	.quad	0x3fdfea67e846a5d7              # double 0.49868200000000001
	.quad	0x3fea96dd26b723ee              # double 0.83091599999999999
	.quad	0x3fef8c36da87a073              # double 0.98586600000000002
	.quad	0x3fd74199fe43675e              # double 0.36337900000000001
	.quad	0x3fd3814940bbb1f2              # double 0.30476599999999998
	.quad	0x3fa14877681669cf              # double 0.033756000000000001
	.quad	0x3fd3f6273929ed39              # double 0.31189899999999998
	.quad	0x3fe9f776c4827b70              # double 0.81145800000000001
	.quad	0x3fea23b7952d234f              # double 0.81686000000000003
	.quad	0x3fdd85015c209247              # double 0.46124300000000001
	.quad	0x3fd05109070fbeba              # double 0.25494600000000001
	.quad	0x3fec0110a137f38c              # double 0.87512999999999996
	.quad	0x3fda286f8ad2567a              # double 0.40871800000000003
	.quad	0x3fdcf722e1ac57e2              # double 0.45258399999999999
	.quad	0x3fe8e5321e603d57              # double 0.77797799999999995
	.quad	0x3fe0775b81301648              # double 0.51456999999999997
	.quad	0x3fe9c4a1f080303c              # double 0.80525299999999999
	.quad	0x3fecbc83a96d4c34              # double 0.89801200000000003
	.quad	0x3fe165492ff4ba52              # double 0.54361400000000004
	.quad	0x3fcd71c10d7be985              # double 0.23003399999999999
	.quad	0x3fedb8433d6c7219              # double 0.92874299999999999
	.quad	0x3fdc136e71cda2b6              # double 0.43868600000000002
	.quad	0x3fcf0c5eb313be23              # double 0.242565
	.quad	0x3fec24180d3cff65              # double 0.87940600000000002
	.quad	0x3fe9685b9e8c47a1              # double 0.79398899999999994
	.quad	0x3fe1eb69db65ecc4              # double 0.55998700000000001
	.quad	0x3feab352a8438088              # double 0.83438999999999997
	.quad	0x3fd8a5a038194c01              # double 0.38510899999999998
	.quad	0x3fec414a4d2b2bfe              # double 0.88297000000000003
	.quad	0x3fe6bae46cfc829d              # double 0.710314
	.quad	0x3fe0c677b395c422              # double 0.524227
	.quad	0x3fe0c5c5718eb895              # double 0.524142
	.quad	0x3fe78aa64c2f837b              # double 0.73567499999999997
	.quad	0x3febd1bf7ad4b274              # double 0.86935399999999996
	.quad	0x3fa375c8d9f9053a              # double 0.038008
	.quad	0x3fb683f4eca686e8              # double 0.087951000000000001
	.quad	0x3fd58f9b13165d3a              # double 0.33689000000000002
	.quad	0x3fa605ee568a5050              # double 0.043013999999999997
	.quad	0x3fd95ac03ff69015              # double 0.39616400000000002
	.quad	0x3fd957b41bfbdf09              # double 0.395978
	.quad	0x3fea6ab9b23dd54e              # double 0.82552800000000004
	.quad	0x3feca272862f598a              # double 0.89483000000000001
	.quad	0x3fb30b8cfbfc6541              # double 0.074395000000000003
	.quad	0x3fd8b1bbcf4e874d              # double 0.38584800000000002
	.quad	0x3fe4348f53c579f2              # double 0.63141599999999998
	.quad	0x3fec13c89f40a287              # double 0.87741499999999994
	.quad	0x3feaeb313be22e5e              # double 0.84121000000000001
	.quad	0x3fe4c1bda5119ce0              # double 0.64864999999999995
	.quad	0x3f7bb384fd2a62aa              # double 0.0067629999999999999
	.quad	0x3fe23f705857afea              # double 0.57024399999999997
	.quad	0x3fe0732378ab0c89              # double 0.51405500000000004
	.quad	0x3fea27a20578e5c5              # double 0.81733800000000001
	.quad	0x3fe2695b78cc9a78              # double 0.57536100000000001
	.quad	0x3fc94b7b28954a80              # double 0.19761600000000001
	.quad	0x3fc216df3f961805              # double 0.141323
	.quad	0x3fddac29bf162ae5              # double 0.46363300000000002
	.quad	0x3fec2e90364388ec              # double 0.88068400000000002
	.quad	0x3fe0af4f0d844d01              # double 0.52139999999999997
	.quad	0x3fe0ba860dcb9a9e              # double 0.52276900000000004
	.quad	0x3fc481d3aa369fcf              # double 0.16021199999999999
	.quad	0x3fa6cb31c219eb64              # double 0.044519000000000003
	.quad	0x3fe545c78a6dacac              # double 0.66476800000000003
	.quad	0x3f9719b4dcebfec1              # double 0.022558999999999999
	.quad	0x3fd4fbacb4289119              # double 0.32786100000000001
	.quad	0x3fddefb2aae29739              # double 0.46775499999999998
	.quad	0x3fe3256bca5375c9              # double 0.59831800000000002
	.quad	0x3fe308b75ea67e84              # double 0.59481399999999995
	.quad	0x3fd7176145953587              # double 0.36080200000000001
	.quad	0x3fe13cb1cc964628              # double 0.538659
	.quad	0x3fc0af81626b2f23              # double 0.130356
	.quad	0x3fdf225742dcf462              # double 0.48647099999999999
	.quad	0x3fcd6777079e59f3              # double 0.22972000000000001
	.quad	0x3fe1c024b33daf8e              # double 0.554705
	.quad	0x3fce06b7aa25d8d8              # double 0.23458000000000001
	.quad	0x3fd136d22424a277              # double 0.26897100000000002
	.quad	0x3fdc63f141205bc0              # double 0.44359999999999999
	.quad	0x3fbdb25f633ce63a              # double 0.116003
	.quad	0x3fea7dc7abfb9bed              # double 0.82785399999999998
	.quad	0x3fd2ad46f587d6f9              # double 0.29182599999999997
	.quad	0x3fefdc2d2780778a              # double 0.99562700000000004
	.quad	0x3fc5cd2d44dca8e3              # double 0.170324
	.quad	0x3fe85ae1cde5d181              # double 0.76109400000000005
	.quad	0x3fce00431bde82d8              # double 0.23438300000000001
	.quad	0x3f84794ea077036d              # double 0.0099970000000000006
	.quad	0x3feac475e6362a5e              # double 0.83648199999999995
	.quad	0x3fe84d37c1376d55              # double 0.75942600000000005
	.quad	0x3fdf7d2c7b890d5a              # double 0.49201499999999998
	.quad	0x3fda50c1b97353b5              # double 0.41117900000000002
	.quad	0x3fdf9595feda6613              # double 0.49350500000000003
	.quad	0x3fd18e757928e0ca              # double 0.27432000000000001
	.quad	0x3fe8277e5eaab042              # double 0.75482099999999996
	.quad	0x3fec20a73f748a16              # double 0.87898600000000005
	.quad	0x3feeeffc115df655              # double 0.96679499999999995
	.quad	0x3fe9c51761459536              # double 0.80530900000000005
	.quad	0x3fe66c0724b76f6d              # double 0.70068699999999995
	.quad	0x3fe864cb5bb384fd              # double 0.76230399999999998
	.quad	0x3fdf9d30270f3882              # double 0.49396899999999999
	.quad	0x3fe06e675147f130              # double 0.51347699999999996
	.quad	0x3fe7ba98eda22f6a              # double 0.74152799999999996
	.quad	0x3fe782e87d2c7b89              # double 0.73472999999999999
	.quad	0x3fd0413986338b48              # double 0.25398100000000001
	.quad	0x3fc6e45c358afc48              # double 0.178844
	.quad	0x3fe6b419e30014f9              # double 0.70948500000000003
	.quad	0x3fec4baf965b20b8              # double 0.884239
	.quad	0x3fc5ba775fb2edfe              # double 0.16975299999999999
	.quad	0x3fec644955b4677b              # double 0.88724199999999998
	.quad	0x3fe3130164840e17              # double 0.59606999999999999
	.quad	0x3fdb7e49b1fab96f              # double 0.42958299999999999
	.quad	0x3fef81dc0db2702a              # double 0.98460199999999998
	.quad	0x3fe77ae5796bfca8              # double 0.73375199999999996
	.quad	0x3fd08726d04e618d              # double 0.25824900000000001
	.quad	0x3fd0c52a411c2a02              # double 0.26203399999999999
	.quad	0x3fde8b7e4de3b8a2              # double 0.47726400000000002
	.quad	0x3fef549949e8815e              # double 0.97907699999999998
	.quad	0x3fcd1361dc93ea2d              # double 0.22715399999999999
	.quad	0x3fc738d60a633051              # double 0.181422
	.quad	0x3fea8b6523704791              # double 0.82951600000000003
	.quad	0x3fee83c297bfa4c6              # double 0.95358399999999999
	.quad	0x3fd8d00f776c4828              # double 0.38769900000000002
	.quad	0x3fd806ee30caa327              # double 0.37542300000000001
	.quad	0x3fe4867f0aa21a72              # double 0.64141800000000004
	.quad	0x3fc63161a1db877b              # double 0.17338200000000001
	.quad	0x3fcfb43526527a20              # double 0.24768699999999999
	.quad	0x3fb8157eed45e918              # double 0.094077999999999995
	.quad	0x3fa920c069e7fb26              # double 0.049077999999999997
	.quad	0x3fc3e9531550ca1d              # double 0.155558
	.quad	0x3fe353c148344c38              # double 0.60397400000000001
	.quad	0x3fd135fc3b4f6167              # double 0.26891999999999999
	.quad	0x3fe91c12f09d8c6d              # double 0.78467699999999996
	.quad	0x3fc8e8af81626b2f              # double 0.194601
	.quad	0x3fd00713f077ccc0              # double 0.25043199999999999
	.quad	0x3fe6d98e10cf5b1d              # double 0.71405700000000005
	.quad	0x3feddbdf8f473040              # double 0.93308999999999997
	.quad	0x3fd0eb313be22e5e              # double 0.26435500000000001
	.quad	0x3fe683f0bae89eba              # double 0.70360599999999995
	.quad	0x3fed807bbb62413e              # double 0.92193400000000003
	.quad	0x3fde6e08f2170931              # double 0.475466
	.quad	0x3fb233269df97aab              # double 0.071093000000000003
	.quad	0x3fecfea8112ba16e              # double 0.90608599999999995
	.quad	0x3fe1ccb1897a67a5              # double 0.55623699999999998
	.quad	0x3fea556084a515cf              # double 0.82292200000000004
	.quad	0x3fb354d1e96c3fc4              # double 0.075512999999999997
	.quad	0x3fefc2374794ea07              # double 0.99245799999999995
	.quad	0x3fdd0fc71d606317              # double 0.45408799999999999
	.quad	0x3fcb83d790752daa              # double 0.21496100000000001
	.quad	0x3febd232d2bb2357              # double 0.86940899999999999
	.quad	0x3fe3a5c5f7c6759b              # double 0.61398600000000003
	.quad	0x3fefda63f9a49c2c              # double 0.99540899999999998
	.quad	0x3fee217f4128bf3c              # double 0.941589
	.quad	0x3fccb1cc96462802              # double 0.22417599999999999
	.quad	0x3fe1e5796bfca85d              # double 0.55926200000000004
	.quad	0x3fe58da3c21187e8              # double 0.67354000000000003
	.quad	0x3fa7fbce4217d285              # double 0.046843000000000003
	.quad	0x3fce90abb44e50c6              # double 0.23879
	.quad	0x3fe7642396073de2              # double 0.73097400000000001
	.quad	0x3fda0ffda4052d66              # double 0.40722599999999998
	.quad	0x3fd3126e978d4fdf              # double 0.29799999999999999
	.quad	0x3feb6e6d9be4cd75              # double 0.85723000000000005
	.quad	0x3fc0a1059ea57215              # double 0.129914
	.quad	0x3fdf935b91f70de9              # double 0.493369
	.quad	0x3fe4892684cf073a              # double 0.64174200000000003
	.quad	0x3fdad3953dea465a              # double 0.41916399999999998
	.quad	0x3fed5af4adbc664d              # double 0.91735299999999997
	.quad	0x3fe8d6cf850df15a              # double 0.77622199999999997
	.quad	0x3fe364f765fd8adb              # double 0.60607500000000003
	.quad	0x3fe937154003254e              # double 0.78797399999999995
	.quad	0x3f6355475a31a4be              # double 0.0023600000000000001
	.quad	0x3febd035371971c1              # double 0.86916599999999999
	.quad	0x3fe760bd44998d04              # double 0.73055899999999996
	.quad	0x3febe6644d877250              # double 0.87187400000000004
	.quad	0x3fe0e70c1333b96b              # double 0.52820400000000001
	.quad	0x3fe9c0bbb1f255f3              # double 0.80477699999999996
	.quad	0x3fdddc1e7967caea              # double 0.46655999999999997
	.quad	0x3fd8ec0f88333fc8              # double 0.38940799999999998
	.quad	0x3fc046a5d6bebe16              # double 0.12715599999999999
	.quad	0x3fe57e1975f2cb64              # double 0.67164299999999999
	.quad	0x3fdc88509bf9c62a              # double 0.44581999999999999
	.quad	0x3febf43e963dc487              # double 0.87356500000000004
	.quad	0x3fa923a29c779a6b              # double 0.049099999999999998
	.quad	0x3fd1d9c27e953155              # double 0.278916
	.quad	0x3fc4e5929670196e              # double 0.16325600000000001
	.quad	0x3fdc545c78a6dacb              # double 0.44264900000000001
	.quad	0x3fe19f4906034f40              # double 0.55069400000000002
	.quad	0x3feba0a0f4d7add1              # double 0.86335799999999996
	.quad	0x3fd510f94c87980f              # double 0.32916099999999998
	.quad	0x3fc479e59f2ba9d2              # double 0.15997
	.quad	0x3fe8860fe47991bc              # double 0.76636499999999996
	.quad	0x3feedaa4fca42aed              # double 0.96418999999999999
	.quad	0x3fe97f3f0fe047d4              # double 0.79678300000000001
	.quad	0x3f9612c6ac215b9a              # double 0.021555999999999999
	.quad	0x3fe1596e9bbf0dc7              # double 0.54216699999999995
	.quad	0x3fe154024b33daf9              # double 0.54150500000000001
	.quad	0x3fb04567125dd096              # double 0.063559000000000004
	.quad	0x3fd62e2b8c75c4a8              # double 0.34656799999999999
	.quad	0x3fbc6fcdee34fc61              # double 0.111081
	.quad	0x3fe813d102bc72e2              # double 0.75241899999999995
	.quad	0x3fe1985cee17a030              # double 0.54984900000000003
	.quad	0x3fe5f10ecb74ddf8              # double 0.68567599999999995
	.quad	0x3f7898b2e9ccb7d4              # double 0.0060049999999999999
	.quad	0x3fe62aef2c732592              # double 0.69274100000000005
	.quad	0x3fe0bf0dc768dfbd              # double 0.52332199999999995
	.quad	0x3fd5273d5bab2181              # double 0.33051999999999998
	.quad	0x3fd7e9ab29e4d5d8              # double 0.373637
	.quad	0x3fba8f5c28f5c28f              # double 0.10375
	.quad	0x3fefe2584f4c6e6e              # double 0.99638000000000004
	.quad	0x3fcc7f88765ba6f0              # double 0.22264200000000001
	.quad	0x3fe83a6698bb4d49              # double 0.75712900000000005
	.quad	0x3fd60164840e171a              # double 0.343835
	.quad	0x3fbaeb3dd11be6e6              # double 0.105152
	.quad	0x3fe4af4491298890              # double 0.64639500000000005
	.quad	0x3febd8dbcec84f90              # double 0.87022200000000005
	.quad	0x3fb2c3c9eecbfb16              # double 0.073300000000000004
	.quad	0x3fc5e2cdc011d367              # double 0.170984
	.quad	0x3fece75ddd2ae8e2              # double 0.90324300000000002
	.quad	0x3f95bb384fd2a62b              # double 0.021222000000000001
	.quad	0x3fe28cd855970b4a              # double 0.57969300000000001
	.quad	0x3fdc371da37ef5a9              # double 0.44086399999999998
	.quad	0x3fdad1287c200c0f              # double 0.419016
	.quad	0x3f91fbc5de9c022a              # double 0.017562000000000001
	.quad	0x3f9ebe1650a45d42              # double 0.030022
	.quad	0x3f92d72ffd1dcd70              # double 0.018398999999999999
	.quad	0x3fc91a6506141637              # double 0.19611799999999999
	.quad	0x3f568b5cbff47736              # double 0.0013760000000000001
	.quad	0x3fcfaa8a82a5614e              # double 0.247392
	.quad	0x3fe3d95feda66128              # double 0.62028499999999998
	.quad	0x3fa466b1e5c0b999              # double 0.039845999999999999
	.quad	0x3fe7b32f01754b06              # double 0.74062300000000003
	.quad	0x3fe192b5e529bae4              # double 0.54915899999999995
	.quad	0x3fdffcdab191dde3              # double 0.49980799999999997
	.quad	0x3fefecaab8a5ce5b              # double 0.99763999999999997
	.quad	0x3fdbd8383ad9f0a2              # double 0.43507200000000001
	.quad	0x3fe9fe49b1fab96f              # double 0.81229099999999999
	.quad	0x3fef0dda48b65237              # double 0.97044099999999999
	.quad	0x3fdd80a9de8b3b32              # double 0.460978
	.quad	0x3fa2888b545c78a7              # double 0.036198000000000001
	.quad	0x3fe9a9fe004b7f5a              # double 0.80200099999999996
	.quad	0x3fe718655193708b              # double 0.72172800000000004
	.quad	0x3fd86eb0b7c3504c              # double 0.38175599999999998
	.quad	0x3fefece13f4a98ab              # double 0.99766600000000005
	.quad	0x3fa6d4e4c942d491              # double 0.044593000000000001
	.quad	0x3fd480841ede1199              # double 0.32034400000000002
	.quad	0x3fe6d803cd141a69              # double 0.71386899999999998
	.quad	0x3fedcd74927913e8              # double 0.93132999999999999
	.quad	0x3fe18bb6ed677708              # double 0.54830500000000004
	.quad	0x3fd8d10f51ac9afe              # double 0.38775999999999999
	.quad	0x3fe8cba51a005c46              # double 0.77485899999999996
	.quad	0x3fd9677b395c4220              # double 0.39694099999999999
	.quad	0x3fb6dc3bd5992429              # double 0.089298000000000002
	.quad	0x3feb3e9ea1405708              # double 0.85139399999999998
	.quad	0x3fc565881a1554fc              # double 0.167161
	.quad	0x3fe9c386d2ed783e              # double 0.805118
	.quad	0x3fe0a50f840181e0              # double 0.52014899999999997
	.quad	0x3f9a4d6e47dc37a4              # double 0.025686
	.quad	0x3fcba294141e9af6              # double 0.21589900000000001
	.quad	0x3fe13f0fe047d3d4              # double 0.53894799999999998
	.quad	0x3fd08a697aeddce8              # double 0.25844800000000001
	.quad	0x3fd490470a808c82              # double 0.32130599999999998
	.quad	0x3fd65492ff4ba51a              # double 0.348912
	.quad	0x3fe2e83e425aee63              # double 0.59084999999999999
	.quad	0x3fee94e5d5b24e9c              # double 0.95567599999999996
	.quad	0x3fe1bb14a90470a8              # double 0.554087
	.quad	0x3fdaff4fd6d7e88a              # double 0.42183300000000001
	.quad	0x3fde41aef6f8f041              # double 0.47275899999999998
	.quad	0x3fe97a376922d949              # double 0.79616900000000002
	.quad	0x3fd6577d955714ba              # double 0.34909000000000001
	.quad	0x3fedf51697f1f9ad              # double 0.936168
	.quad	0x3fd1105e1c15097d              # double 0.26662400000000003
	.quad	0x3fca395810624dd3              # double 0.204875
	.quad	0x3fd1178b3700474e              # double 0.26706200000000002
	.quad	0x3fd98066c2acb85a              # double 0.39846199999999998
	.quad	0x3fec1cf355cd91ef              # double 0.87853400000000004
	.quad	0x3fa2b1d4f9c1f85d              # double 0.036512999999999997
	.quad	0x3fd0ba7b9170d62c              # double 0.261382
	.quad	0x3fe9deaab042528b              # double 0.80843100000000001
	.quad	0x3f9e7f2c3009b307              # double 0.029781999999999999
	.quad	0x3fdfcca70d1fa333              # double 0.49686599999999997
	.quad	0x3faf1455219a847b              # double 0.060701999999999999
	.quad	0x3febc7baa9b499d0              # double 0.86813099999999999
	.quad	0x3fe8aee84ad794a7              # double 0.77135100000000001
	.quad	0x3fc4f28c79f66623              # double 0.16365199999999999
	.quad	0x3fc430c23fab10ba              # double 0.15773799999999999
	.quad	0x3fd8cd855970b49e              # double 0.387544
	.quad	0x3feec75e6362a5e8              # double 0.96183700000000005
	.quad	0x3fc376c4827b6fe3              # double 0.152062
	.quad	0x3fec4a89fc6da448              # double 0.88409899999999997
	.quad	0x3fbd78705425f202              # double 0.115119
	.quad	0x3fe3e3bcd35a8588              # double 0.62155000000000005
	.quad	0x3fed74256bca5376              # double 0.92042800000000002
	.quad	0x3fba81ecd4aa10e0              # double 0.103545
	.quad	0x3fecde74299d883c              # double 0.90215500000000004
	.quad	0x3fbf1960fa15db34              # double 0.12148100000000001
	.quad	0x3fdbeacc92146a1a              # double 0.43620599999999998
	.quad	0x3fee3cf0b6b6e0d2              # double 0.94493899999999997
	.quad	0x3fd88a7e73a365cb              # double 0.38345299999999999
	.quad	0x3feb1cb252ce032e              # double 0.84725300000000003
	.quad	0x3fe8004534bd76ee              # double 0.75003299999999995
	.quad	0x3fa26d698fe69271              # double 0.035991000000000002
	.quad	0x3fdaecc814d7279a              # double 0.42070200000000002
	.quad	0x3fcf43d89ce4a7b5              # double 0.244258
	.quad	0x3fbc5cdd50a88f00              # double 0.110792
	.quad	0x3fed0ebedfa43fe6              # double 0.90805000000000002
	.quad	0x3fe5de3fbbd7b203              # double 0.68337999999999999
	.quad	0x3fe478ad25679896              # double 0.63973100000000005
	.quad	0x3fe2f8e7ddca4b12              # double 0.59288399999999997
	.quad	0x3fd9079e59f2ba9d              # double 0.39108999999999999
	.quad	0x3fea59641f644956              # double 0.82341200000000003
	.quad	0x3feecf56eac86057              # double 0.96281000000000005
	.quad	0x3fc5538ac18f81e9              # double 0.16661200000000001
	.quad	0x3fdfee525892684d              # double 0.498921
	.quad	0x3fe6fb7414a4d2b3              # double 0.71819500000000003
	.quad	0x3fd7861a60d4562e              # double 0.36756
	.quad	0x3fef98e10cf5b1c8              # double 0.98741199999999995
	.quad	0x3fe0fedc7ef177a7              # double 0.531111
	.quad	0x3fd15000c9539b89              # double 0.27050800000000003
	.quad	0x3fd3f77292c49342              # double 0.31197799999999998
	.quad	0x3fd0047d3d4280ae              # double 0.250274
	.quad	0x3fe1d1b0ccbc05d5              # double 0.55684699999999998
	.quad	0x3fea9a79fec99f1b              # double 0.83135700000000001
	.quad	0x3fe889a88ace24bc              # double 0.76680400000000004
	.quad	0x3fe9cab606b7aa26              # double 0.80599500000000002
	.quad	0x3fdf6a76965f5276              # double 0.490873
	.quad	0x3fe40140dd3fe197              # double 0.62515299999999996
	.quad	0x3fd7883771865519              # double 0.36768899999999999
	.quad	0x3fe9826edaa92e62              # double 0.79717199999999999
	.quad	0x3fe8f2f33ca31e7e              # double 0.77965700000000004
	.quad	0x3feabbfb58d1526e              # double 0.83544700000000005
	.quad	0x3fedca4d2b2bfdb5              # double 0.93094500000000002
	.quad	0x3fe5d8eeae9ee45c              # double 0.68273099999999998
	.quad	0x3fef32fec56d5cfb              # double 0.97497500000000003
	.quad	0x3fde23ee1bd1ed9e              # double 0.470943
	.quad	0x3fe179420b3d4ae4              # double 0.54605199999999998
	.quad	0x3fe895ad106ee30d              # double 0.76827100000000004
	.quad	0x3f993f6c2699c7bd              # double 0.024656000000000001
	.quad	0x3fc830f49491f2dc              # double 0.188994
	.quad	0x3fc80620ab713272              # double 0.18768699999999999
	.quad	0x3fe02a19439de482              # double 0.505139
	.quad	0x3fd6f3a14cec41dd              # double 0.35861999999999999
	.quad	0x3fbc6d5065732160              # double 0.111043
	.quad	0x3fa86ee30caa326e              # double 0.047721
	.quad	0x3fece145953586cb              # double 0.90249900000000005
	.quad	0x3fd43c6c97d8cf3a              # double 0.31618800000000002
	.quad	0x3fefbae03b3e9a70              # double 0.99156200000000005
	.quad	0x3febd260f5e41d4b              # double 0.86943099999999995
	.quad	0x3fc9e26916440f24              # double 0.20222200000000001
	.quad	0x3fe83f401c4fc1df              # double 0.75772099999999998
	.quad	0x3fe200431bde82d8              # double 0.56253200000000003
	.quad	0x3fbc70329802c0a5              # double 0.11108700000000001
	.quad	0x3fd75204af922963              # double 0.36438100000000001
	.quad	0x3fe29c347e8ccdd9              # double 0.58156799999999997
	.quad	0x3feb8763a1900820              # double 0.86027699999999995
	.quad	0x3fc1b4d48882f0e1              # double 0.13833100000000001
	.quad	0x3fe17e49b1fab96f              # double 0.54666599999999999
	.quad	0x3fafd6b65a9a8049              # double 0.062184999999999997
	.quad	0x3fdf913e81450efe              # double 0.49324000000000001
	.quad	0x3fec558a76102795              # double 0.88544199999999995
	.quad	0x3fa3456b441bb8c3              # double 0.037638999999999999
	.quad	0x3fe5824b33daf8df              # double 0.67215499999999995
	.quad	0x3fd454a7f8012dfd              # double 0.31766699999999998
	.quad	0x3fc2dbf0563ed0f6              # double 0.147337
	.quad	0x3feb6bb55ac03ff7              # double 0.85689800000000005
	.quad	0x3fe837c3504c48ae              # double 0.75680700000000001
	.quad	0x3fc3d00f776c4828              # double 0.15478700000000001
	.quad	0x3fd399b6f5caf2d8              # double 0.306257
	.quad	0x3fe8e48e8a71de6a              # double 0.77790000000000004
	.quad	0x3f985d31337eb28e              # double 0.023793000000000002
	.quad	0x3fc6977c88e79aae              # double 0.17649799999999999
	.quad	0x3feba51a005c4652              # double 0.86390400000000001
	.quad	0x3fbfe62dc6e2a800              # double 0.12460599999999999
	.quad	0x3fe3a2af5771001d              # double 0.61360899999999996
	.quad	0x3fe51bb4916ca46e              # double 0.659632
	.quad	0x3fe430bbf50e3476              # double 0.63094899999999998
	.quad	0x3fee0d5a5b9628cc              # double 0.93913000000000002
	.quad	0x3fde490a350d2807              # double 0.47320800000000002
	.quad	0x3fa682517e77d524              # double 0.043963000000000002
	.quad	0x3fd6af8df7a4e7ab              # double 0.35446499999999997
	.quad	0x3fe515097c80841f              # double 0.65881800000000001
	.quad	0x3fbb0e0a84be4042              # double 0.105683
	.quad	0x3fde9ecf63800219              # double 0.47844300000000001
	.quad	0x3fdcbfdb4cc25072              # double 0.44921
	.quad	0x3fe2716d2aa5c5f8              # double 0.57634600000000002
	.quad	0x3fbb0d9513f8db49              # double 0.10567600000000001
	.quad	0x3fe235675579af19              # double 0.56901900000000005
	.quad	0x3fe7e3c105186db5              # double 0.74655199999999999
	.quad	0x3fc46c7eae5bc87e              # double 0.15956100000000001
	.quad	0x3fd903d9a95421c0              # double 0.39085999999999999
	.quad	0x3fe61ae0c1765775              # double 0.69078099999999998
	.quad	0x3fd447baa9b499d0              # double 0.31687799999999999
	.quad	0x3fe346de76427c7c              # double 0.60240099999999996
	.quad	0x3fcfdeacc92146a2              # double 0.24898300000000001
	.quad	0x3fd16177ea1c68ec              # double 0.27157399999999998
	.quad	0x3fe7f86c226809d5              # double 0.74907500000000005
	.quad	0x3fd331f8a0902de0              # double 0.299925
	.quad	0x3fd0b5e95b78cc9a              # double 0.26110299999999997
	.quad	0x3fc697d8cf398e97              # double 0.176509
	.quad	0x3fc9496249a133c2              # double 0.19755200000000001
	.quad	0x3fd2a80064a9cdc4              # double 0.29150399999999999
	.quad	0x3fa2fab53d640e9d              # double 0.037068999999999998
	.quad	0x3fea34a87e38eb03              # double 0.81892799999999999
	.quad	0x3fe74877681669cf              # double 0.72759600000000002
	.quad	0x3feb9ad85dfa871a              # double 0.86265199999999997
	.quad	0x3fddc026cc1ca3a5              # double 0.46485300000000002
	.quad	0x3fd0d184c271fff8              # double 0.26278800000000002
	.quad	0x3feb4bee807bbb62              # double 0.85301899999999997
	.quad	0x3fe7a7a85015c209              # double 0.73921599999999998
	.quad	0x3fdfefbf401c4fc2              # double 0.49900800000000001
	.quad	0x3fc685f4a1272c95              # double 0.17596300000000001
	.quad	0x3fd2c226809d4952              # double 0.29310000000000003
	.quad	0x3feecdbdf8f47304              # double 0.96261499999999999
	.quad	0x3fe01fe64f54d1e9              # double 0.50389399999999995
	.quad	0x3fce046c764adff8              # double 0.23451
	.quad	0x3fcf77af640639d6              # double 0.24584
	.quad	0x3fcb8c5436b8f9b1              # double 0.21521999999999999
	.quad	0x3fe8bf4a98aa8651              # double 0.77335100000000001
	.quad	0x3fe3c6fdeb52c9d1              # double 0.61804099999999995
	.quad	0x3fd539f340d4dc66              # double 0.33166200000000001
	.quad	0x3fd092923e5b8562              # double 0.25894600000000001
	.quad	0x3fc214940bbb1f25              # double 0.14125299999999999
	.quad	0x3fdf963dc486ad2e              # double 0.49354500000000001
	.quad	0x3fee71b691212514              # double 0.95138100000000003
	.quad	0x3fe1eb0318b9346a              # double 0.55993800000000005
	.quad	0x3fef20620ab71327              # double 0.97270299999999998
	.quad	0x3f92839042d8c2a4              # double 0.018079999999999999
	.quad	0x3fe0a6b93ccd0fe9              # double 0.52035200000000004
	.quad	0x3fe1c37c5692b3cc              # double 0.55511299999999997
	.quad	0x3fc1ab29e4d5d80e              # double 0.13803599999999999
	.quad	0x3feb5efc7a398202              # double 0.85534500000000002
	.quad	0x3fd7a47ecfe9b7bf              # double 0.36941499999999999
	.quad	0x3fc6b8305d95dd4c              # double 0.17749599999999999
	.quad	0x3fc78b1dd5d3dc8c              # double 0.18393300000000001
	.quad	0x3feb63ef284167a9              # double 0.85594899999999996
	.quad	0x3fefe9707182235b              # double 0.99724599999999996
	.quad	0x3fc0c9539b888723              # double 0.13114400000000001
	.quad	0x3fe84983d790752e              # double 0.75897400000000004
	.quad	0x3f92517e77d523b3              # double 0.017888999999999999
	.quad	0x3fbee05ccc89b0ee              # double 0.120611
	.quad	0x3fe7127d45a5fc7e              # double 0.72100699999999995
	.quad	0x3fe4b94b7b28954a              # double 0.64761899999999994
	.quad	0x3fb0cc35ce182667              # double 0.065615999999999994
	.quad	0x3faf6ea4228997c4              # double 0.061391000000000001
	.quad	0x3fd4604e1e71044f              # double 0.31837799999999999
	.quad	0x3fdd6327ed84d339              # double 0.459177
	.quad	0x3fd90079a2834d27              # double 0.390654
	.quad	0x3fef3bd5992428d4              # double 0.97605399999999997
	.quad	0x3fd2222d5171e29b              # double 0.28333599999999998
	.quad	0x3fce49667b5f1bef              # double 0.23661499999999999
	.quad	0x3fe066a98244e93e              # double 0.51253199999999999
	.quad	0x3fec7c3b4f616723              # double 0.89016499999999998
	.quad	0x3fdcedbf8b9baa15              # double 0.452011
	.quad	0x3fe651f1cfbb9496              # double 0.69750299999999998
	.quad	0x3fc60828c36da87a              # double 0.172124
	.quad	0x3faf55ffe6d58c8f              # double 0.061203
	.quad	0x3fe86ef5ec80c73b              # double 0.76354500000000003
	.quad	0x3fefa4e160d887ec              # double 0.988877
	.quad	0x3fceecaeea63b689              # double 0.24159800000000001
	.quad	0x3fe0bbb1f255f352              # double 0.52291200000000004
	.quad	0x3fedbca31e7d9989              # double 0.92927700000000002
	.quad	0x3fb6ae5bc87db2b3              # double 0.088597999999999996
	.quad	0x3fe58fc0d2c386d3              # double 0.67379800000000001
	.quad	0x3fefe7903211cb04              # double 0.99701700000000004
	.quad	0x3fe81c6d1e108c3f              # double 0.75346999999999997
	.quad	0x3fe028dc981beb18              # double 0.50498799999999999
	.quad	0x3fd1d2391d57ff9b              # double 0.27845599999999998
	.quad	0x3fbf2d4d4024b33e              # double 0.121785
	.quad	0x3fe46b2af145521a              # double 0.63808200000000004
	.quad	0x3fe39c065b63d3e5              # double 0.61279600000000001
	.quad	0x3feda79357603926              # double 0.92670600000000003
	.quad	0x3fe8bf3bea91d9b2              # double 0.77334400000000003
	.quad	0x3fddc864883fd502              # double 0.46535599999999999
	.quad	0x3fd92220bc382a13              # double 0.392708
	.quad	0x3fe403cd141a6938              # double 0.62546400000000002
	.quad	0x3feaa23bff8a8f3b              # double 0.83230400000000004
	.quad	0x3fdf6837f7be121f              # double 0.49073600000000001
	.quad	0x3fe12d2fe3f359ff              # double 0.53676599999999997
	.quad	0x3fb4f4c6e6d9be4d              # double 0.081860000000000002
	.quad	0x3f804ee7c49fd7a1              # double 0.0079629999999999995
	.quad	0x3fd4677f6b1a2a4e              # double 0.31881700000000002
	.quad	0x3fd16c2acb85a4f0              # double 0.272227
	.quad	0x3fcd23aafff36ac6              # double 0.22765099999999999
	.quad	0x3fb4b673c4f3ba77              # double 0.080908999999999995
	.quad	0x3fe8ccb1897a67a5              # double 0.77498699999999998
	.quad	0x3fe663e6c4c5974e              # double 0.69969499999999996
	.quad	0x3fec89f40a2877ee              # double 0.89183999999999997
	.quad	0x3fd9ac258d5842b7              # double 0.40113199999999999
	.quad	0x3fe8f4afd5454153              # double 0.77986900000000003
	.quad	0x3fe63eec39799e52              # double 0.69518100000000005
	.quad	0x3fd4eae18ac9f2fe              # double 0.32683600000000002
	.quad	0x3fdfa87e38eb0319              # double 0.49465900000000002
	.quad	0x3fead32830a0b1bc              # double 0.83827600000000002
	.quad	0x3fdeee84ad794a6f              # double 0.48330800000000002
	.quad	0x3fced905c0336156              # double 0.24099799999999999
	.quad	0x3fc900ef1348b220              # double 0.19534099999999999
	.quad	0x3fed83c8e25c810a              # double 0.92233699999999996
	.quad	0x3fefff4128bf3beb              # double 0.99990900000000004
	.quad	0x3fef7064ece9a2c6              # double 0.98246999999999995
	.quad	0x3fde71e29b6b2af1              # double 0.47570099999999998
	.quad	0x3fef829ae4f33440              # double 0.98469300000000004
	.quad	0x3fe7c50ce4ead0c4              # double 0.74280400000000002
	.quad	0x3fed4e39b456b442              # double 0.91579900000000003
	.quad	0x3fe93c0a06e9ff0d              # double 0.78857900000000003
	.quad	0x3fbe615a8deb0fae              # double 0.118673
	.quad	0x3fd8c3fc43b2dd37              # double 0.38696199999999997
	.quad	0x3fd8a00e27e0ef9a              # double 0.38476900000000003
	.quad	0x3fb1bf162ae4b018              # double 0.069321999999999995
	.quad	0x3fe58aaa7ded6ba9              # double 0.67317700000000003
	.quad	0x3f9eefe4ffc9795b              # double 0.030211999999999999
	.quad	0x3fe3948fd9fd36f8              # double 0.61188500000000001
	.quad	0x3fc2a0ba1f4b1ee2              # double 0.14552999999999999
	.quad	0x3fcba20578e5c4eb              # double 0.21588199999999999
	.quad	0x3fd73d96638433d7              # double 0.36313400000000001
	.quad	0x3fc1df1172ef0ae5              # double 0.13961999999999999
	.quad	0x3fe7feb28d8665e0              # double 0.74984099999999997
	.quad	0x3fe275e41d4b6a62              # double 0.57689100000000004
	.quad	0x3fe919f7f8ca8199              # double 0.78442000000000001
	.quad	0x3fe76202539756c9              # double 0.73071399999999997
	.quad	0x3fa3bc6eb0b7c350              # double 0.038546999999999998
	.quad	0x3fa596a6a012599f              # double 0.042165000000000001
	.quad	0x3fd70053e2d6238e              # double 0.35939500000000002
	.quad	0x3fe78b912dba4d6e              # double 0.73578699999999997
	.quad	0x3f8d76683c297bfa              # double 0.014385999999999999
	.quad	0x3fd81d53cddd6e05              # double 0.37679000000000001
	.quad	0x3fed8af5fd47bedb              # double 0.92321299999999995
	.quad	0x3fda5d462c343b71              # double 0.411943
	.quad	0x3fd1a276b7ed41b7              # double 0.27554099999999998
	.quad	0x3fea70c77dd872f3              # double 0.82626699999999997
	.quad	0x3fe3084c6a3bddfd              # double 0.59476300000000004
	.quad	0x3fdd845dc8323359              # double 0.461204
	.quad	0x3fda64f54d1e96c4              # double 0.412412
	.quad	0x3fc9f727136a4010              # double 0.20285500000000001
	.quad	0x3fa2db8348f53c58              # double 0.036831000000000003
	.quad	0x3fd4e62dc6e2a800              # double 0.32654899999999998
	.quad	0x3fd5fc6540cc78ea              # double 0.34353
	.quad	0x3fcdaabcd78c4370              # double 0.23177300000000001
	.quad	0x3fcbabda0dfdef85              # double 0.21618200000000001
	.quad	0x3fe8e4bcad9ad85e              # double 0.777922
	.quad	0x3fe7c88c60cbf2b2              # double 0.74323099999999998
	.quad	0x3fe0b387160956c1              # double 0.52191500000000002
	.quad	0x3fe8873365881a15              # double 0.76650399999999996
	.quad	0x3fe3ca3a4b5568e8              # double 0.61843599999999999
	.quad	0x3fde053e2d6238da              # double 0.46906999999999999
	.quad	0x3fd26fc158fb43d9              # double 0.28807100000000002
	.quad	0x3fe752806af46aa1              # double 0.72882100000000005
	.quad	0x3fd2d42c3c9eecc0              # double 0.29420000000000002
	.quad	0x3fe325e56cd6c2f0              # double 0.59837600000000002
	.quad	0x3fdc32b55ef1fddf              # double 0.44059500000000001
	.quad	0x3fe2b3acd5b6805a              # double 0.58443299999999998
	.quad	0x3fca2df9378ee286              # double 0.20452799999999999
	.quad	0x3fe83504c48adeec              # double 0.75647200000000003
	.quad	0x3fee585dfa871a3b              # double 0.94828699999999999
	.quad	0x3fe6c20d5629d841              # double 0.71118800000000004
	.quad	0x3fced173fb7a5f42              # double 0.24076700000000001
	.quad	0x3feac07cc7d1bb49              # double 0.83599699999999999
	.quad	0x3faca48f96e15875              # double 0.055943
	.quad	0x3fe4361fe21d96ea              # double 0.63160700000000003
	.quad	0x3fd78b220791c4b9              # double 0.367867
	.quad	0x3fed52d87f88765c              # double 0.91636300000000003
	.quad	0x3fd44c48adeebb34              # double 0.31715599999999999
	.quad	0x3fe49dcd7060bb2c              # double 0.64426300000000003
	.quad	0x3feef5b1c8648840              # double 0.96749200000000001
	.quad	0x3fe427c5ac471b48              # double 0.62985500000000005
	.quad	0x3fe481ba7fc32ebe              # double 0.64083599999999996
	.quad	0x3fb78b1572580c31              # double 0.091966000000000006
	.quad	0x3feea3bff8a8f3aa              # double 0.95748900000000003
	.quad	0x3fd2a027525460aa              # double 0.29102499999999998
	.quad	0x3fd0b4e11dbca969              # double 0.26103999999999999
	.quad	0x3fcfae4f3343fa2b              # double 0.247507
	.quad	0x3fe8feed45e9185d              # double 0.78111900000000001
	.quad	0x3fe4596851223183              # double 0.63591399999999998
	.quad	0x3f622fad6cb53501              # double 0.0022200000000000002
	.quad	0x3fdab85e80bed741              # double 0.41750300000000001
	.quad	0x3feee9e3c968943e              # double 0.96605099999999999
	.quad	0x3feb952d234eb9a1              # double 0.86195999999999995
	.quad	0x3fccda554b8bef8d              # double 0.225413
	.quad	0x3fe6aea52ef911cf              # double 0.70881899999999998
	.quad	0x3fd789bd8383ad9f              # double 0.367782
	.quad	0x3feb11afc04c8bca              # double 0.84590900000000002
	.quad	0x3fe78296b3354c12              # double 0.73469099999999998
	.quad	0x3fed0407cc7d1bb5              # double 0.90674200000000005
	.quad	0x3fde2c061847f562              # double 0.47143699999999999
	.quad	0x3fd7b341e14bdfd2              # double 0.37031599999999998
	.quad	0x3fbd4812be48a58b              # double 0.114381
	.quad	0x3fe185186db50f41              # double 0.54749700000000001
	.quad	0x3fc9bd6a593a2df9              # double 0.20109299999999999
	.quad	0x3fe93a3875925354              # double 0.78835699999999997
	.quad	0x3fe77ced916872b0              # double 0.73399999999999999
	.quad	0x3fe1de5d18090b41              # double 0.55839399999999995
	.quad	0x3fb21f7d73c92578              # double 0.070792999999999995
	.quad	0x3fd2d6f976790321              # double 0.29437099999999999
	.quad	0x3fe27c5ac471b478              # double 0.57767999999999997
	.quad	0x3fdb2b6284599674              # double 0.42452299999999998
	.quad	0x3fc8a715831f03d1              # double 0.19259899999999999
	.quad	0x3fc029e0a41a261c              # double 0.126278
	.quad	0x3fde0ecb74ddf86e              # double 0.46965299999999999
	.quad	0x3feac061847f5621              # double 0.83598399999999995
	.quad	0x3fc3fe75bc44bf4d              # double 0.15620300000000001
	.quad	0x3fdec011d3671ac1              # double 0.48047299999999998
	.quad	0x3fe2f9b77c02afde              # double 0.59298300000000004
	.quad	0x3fba6937d1fe64f5              # double 0.103168
	.quad	0x3fe95c03361565c3              # double 0.79248200000000002
	.quad	0x3fdc67f4dbdf8f47              # double 0.44384499999999999
	.quad	0x3fae266fd651b0cd              # double 0.058887000000000002
	.quad	0x3fc8e8f29d40ee07              # double 0.194609
	.quad	0x3fe6f56861e92924              # double 0.71745700000000001
	.quad	0x3faddaceee0f3cb4              # double 0.058310000000000001
	.quad	0x3fe6c558644523f6              # double 0.71158999999999994
	.quad	0x3fe4d610adcd2d45              # double 0.65113100000000002
	.quad	0x3fba3cc8de2ac322              # double 0.10249
	.quad	0x3fc4b1ab0856e697              # double 0.16167200000000001
	.quad	0x3fbe81ecd4aa10e0              # double 0.11917
	.quad	0x3fc284cf0739b025              # double 0.144678
	.quad	0x3fd15015c209246c              # double 0.270513
	.quad	0x3fd927aa68f4b620              # double 0.39304600000000001
	.quad	0x3f9b823c85c24c40              # double 0.026863999999999999
	.quad	0x3fe26073de1e2de8              # double 0.57427399999999995
	.quad	0x3fef5492ff4ba51a              # double 0.979074
	.quad	0x3fef01d19157abb9              # double 0.96897200000000005
	.quad	0x3fe66fb2aae29739              # double 0.70113499999999995
	.quad	0x3fbe145953586ca9              # double 0.11749800000000001
	.quad	0x3fe337de939eadd6              # double 0.60057000000000005
	.quad	0x3fea9c8216c61523              # double 0.83160500000000004
	.quad	0x3fb1b4aa9717df1a              # double 0.069163000000000002
	.quad	0x3fd84c271fff79c8              # double 0.37964799999999999
	.quad	0x3fe072da122fad6d              # double 0.51402000000000003
	.quad	0x3fd8fc2224edf612              # double 0.39038899999999999
	.quad	0x3fdc8e1932d6ece1              # double 0.44617299999999999
	.quad	0x3feed104d551d68c              # double 0.96301499999999995
	.quad	0x3fe84d898b2e9ccb              # double 0.75946499999999995
	.quad	0x3fe4f85f8d2e514c              # double 0.65531899999999998
	.quad	0x3fe83d017dae8188              # double 0.75744699999999998
	.quad	0x3fe3520d130df9be              # double 0.60376600000000002
	.quad	0x3fdc29fe004b7f5a              # double 0.44006299999999998
	.quad	0x3fe0b82a12f90108              # double 0.52248099999999997
	.quad	0x3fc0c426351deefe              # double 0.13098599999999999
	.quad	0x3fde1db877ab3248              # double 0.47056399999999998
	.quad	0x3fe9f95d4e8fb00c              # double 0.81169000000000002
	.quad	0x3fc83c9eecbfb15b              # double 0.18934999999999999
	.quad	0x3fe69db22d0e5604              # double 0.70674999999999999
	.quad	0x3fd71ecd4aa10e02              # double 0.36125499999999999
	.quad	0x3feac7820a30db6a              # double 0.83685399999999999
	.quad	0x3fea431df761cbcd              # double 0.82069300000000001
	.quad	0x3fba20ab71327243              # double 0.102061
	.quad	0x3fe683dbc23315d7              # double 0.703596
	.quad	0x3fc127243137b070              # double 0.13400699999999999
	.quad	0x3fe883f705857aff              # double 0.76610900000000004
	.quad	0x3fba696a26e54717              # double 0.103171
	.quad	0x3fb41083dbc23316              # double 0.078377000000000002
	.quad	0x3fea4ebfec13b9f1              # double 0.82211299999999998
	.quad	0x3fe6b3354c12274a              # double 0.70937600000000001
	.quad	0x3feb8407cc7d1bb5              # double 0.85986700000000005
	.quad	0x3fd932e7b3d8e001              # double 0.39373200000000003
	.quad	0x3fe9e00d1b71758e              # double 0.80859999999999999
	.quad	0x3fbacdaf4adbc665              # double 0.104701
	.quad	0x3fe8b5efa615a8df              # double 0.77220900000000003
	.quad	0x3fd164388ebcc6c5              # double 0.27174199999999998
	.quad	0x3fd52a1f8e3ac0c6              # double 0.33069599999999999
	.quad	0x3fcebc83a96d4c34              # double 0.24012800000000001
	.quad	0x3fde99ed7c6fbd27              # double 0.47814499999999999
	.quad	0x3fb30fadf2ecf206              # double 0.074457999999999996
	.quad	0x3fc1b8887229e908              # double 0.13844400000000001
	.quad	0x3fe57505d0fa58f7              # double 0.67053499999999999
	.quad	0x3fd5a98244e93e1d              # double 0.33847100000000002
	.quad	0x3fb9eecbfb15b574              # double 0.1013
	.quad	0x3fd9d31fcd24e161              # double 0.40351100000000001
	.quad	0x3fc0aeb80ecfa69c              # double 0.130332
	.quad	0x3feb8a2877ee4e27              # double 0.86061500000000002
	.quad	0x3fb532d6ece13f4b              # double 0.082807000000000006
	.quad	0x3fe1c37824d4cb9f              # double 0.55511100000000002
	.quad	0x3fe5e94ccab3edd9              # double 0.68472900000000003
	.quad	0x3fe11df1172ef0ae              # double 0.53490499999999996
	.quad	0x3f7ddf43c7d5ed07              # double 0.007293
	.quad	0x3fe618915bdd7668              # double 0.69049899999999997
	.quad	0x3fe1967ec7863bef              # double 0.54962100000000003
	.quad	0x3fc1b749adc8fb87              # double 0.138406
	.quad	0x3fc9ba4d6e47dc38              # double 0.20099800000000001
	.quad	0x3fdf57d9dba908a2              # double 0.48973699999999998
	.quad	0x3fe17483cafb3b75              # double 0.54547299999999999
	.quad	0x3feeccf4a558ea7d              # double 0.96251900000000001
	.quad	0x3fee1652bd3c3611              # double 0.94022499999999998
	.quad	0x3fd644567125dd09              # double 0.34792099999999998
	.quad	0x3fe67d24180d3cff              # double 0.70277599999999996
	.quad	0x3fe4ccee5abc0e39              # double 0.65001600000000004
	.quad	0x3fefbf2b239a38fc              # double 0.99208600000000002
	.quad	0x3fe178e9f6a93f29              # double 0.54601
	.quad	0x3fd04bb5e0f7fcfc              # double 0.25462099999999999
	.quad	0x3fe93250b524399b              # double 0.78739199999999998
	.quad	0x3fea37824d4cb9ed              # double 0.819276
	.quad	0x3fe92a23bff8a8f4              # double 0.78639400000000003
	.quad	0x3fe2f5d9a0f0a5f0              # double 0.59251100000000001
	.quad	0x3fcad81adea89763              # double 0.20971999999999999
	.quad	0x3fe93b0813cab820              # double 0.78845600000000004
	.quad	0x3fc19af1886df82b              # double 0.137541
	.quad	0x3f858c8eef1bac2e              # double 0.010522
	.quad	0x3fe9855b89939219              # double 0.79752900000000004
	.quad	0x3fe03f65dbfceb79              # double 0.50773900000000005
	.quad	0x3fe8b17268d32831              # double 0.77166100000000004
	.quad	0x3fda128bf3bea91e              # double 0.40738200000000002
	.quad	0x3fd8d894812be48a              # double 0.38821899999999998
	.quad	0x3fcb21e603d57796              # double 0.21197199999999999
	.quad	0x3fdc9707182235b5              # double 0.446718
	.quad	0x3fd4c1a47a9e2bd0              # double 0.32431900000000002
	.quad	0x3fbe2a5e785b5b70              # double 0.11783399999999999
	.quad	0x3fe6dfb71fbc5dea              # double 0.71480900000000003
	.quad	0x3fec144ed6fda837              # double 0.87747900000000001
	.quad	0x3fd922ccb3a2595c              # double 0.39274900000000001
	.quad	0x3fbcb178b3700475              # double 0.112083
	.quad	0x3fdcfc2656abde40              # double 0.45289000000000001
	.quad	0x3fee7542a23bff8b              # double 0.95181400000000005
	.quad	0x3fe0ddd095af294e              # double 0.52707700000000002
	.quad	0x3fe89b413986338b              # double 0.76895199999999997
	.quad	0x3fe0513b5bf6a0dc              # double 0.50991600000000004
	.quad	0x3fe77a58f7121ab5              # double 0.73368500000000003
	.quad	0x3fd40e9d51b4fe7a              # double 0.313392
	.quad	0x3fe621be2b4959e6              # double 0.69161899999999998
	.quad	0x3fd15bb384fd2a63              # double 0.27122200000000002
	.quad	0x3fdb3365881a1555              # double 0.425012
	.quad	0x3fec8cf7caa7589f              # double 0.892208
	.quad	0x3fc480e065300581              # double 0.16018299999999999
	.quad	0x3fdc03ea704bc276              # double 0.43773899999999999
	.quad	0x3fcd52220bc382a1              # double 0.22906899999999999
	.quad	0x3fdf96af038e29fa              # double 0.49357200000000001
	.quad	0x3fedc156e264e486              # double 0.92985099999999998
	.quad	0x3fd78305d95dd4c7              # double 0.36737199999999998
	.quad	0x3fe1a3315d701d9f              # double 0.55117099999999997
	.quad	0x3fe8e368f08461fa              # double 0.77776000000000001
	.quad	0x3fd2400b88ca3e7d              # double 0.285159
	.quad	0x3fc32cf0f9d2bf55              # double 0.149809
	.quad	0x3fe080abf76a2f49              # double 0.51570700000000003
	.quad	0x3fd236d655e28aa4              # double 0.28459699999999999
	.quad	0x3fa85532617c1bda              # double 0.047524999999999998
	.quad	0x3fe60b1bbcf4e875              # double 0.68885600000000002
	.quad	0x3fe370563ed0f627              # double 0.60746299999999998
	.quad	0x3fce62f5989df117              # double 0.23739499999999999
	.quad	0x3fb66e978d4fdf3b              # double 0.087624999999999995
	.quad	0x3fd1d92fb19e731d              # double 0.27888099999999999
	.quad	0x3f7814940bbb1f25              # double 0.0058789999999999997
	.quad	0x3fea38327674d163              # double 0.81935999999999998
	.quad	0x3fc3ccd962068555              # double 0.15468899999999999
	.quad	0x3fcfbb05faebc409              # double 0.247895
	.quad	0x3fd485729b280f13              # double 0.32064500000000001
	.quad	0x3fe02e2b8c75c4a8              # double 0.50563599999999997
	.quad	0x3fef8cc144028e50              # double 0.98593200000000003
	.quad	0x3fe60620ab713272              # double 0.68824799999999997
	.quad	0x3fd07e2c55c96031              # double 0.25770100000000001
	.quad	0x3fc2f61672324c83              # double 0.14813499999999999
	.quad	0x3f9e89656eefa1e4              # double 0.029821
	.quad	0x3fe5101f31f46ed2              # double 0.65821799999999997
	.quad	0x3fad43aeab7995ee              # double 0.057156999999999999
	.quad	0x3fae5471715c63ae              # double 0.059237999999999999
	.quad	0x3fa539b8887229e9              # double 0.041456
	.quad	0x3fe267afa7221859              # double 0.57515700000000003
	.quad	0x3feb0ff972474539              # double 0.84570000000000001
	.quad	0x3fd27ebf22c01e69              # double 0.28898600000000002
	.quad	0x3fc80d2c386d2ed8              # double 0.18790200000000001
	.quad	0x3fdfd740c4156e26              # double 0.49751299999999998
	.quad	0x3fe8649d388a8b09              # double 0.76228200000000002
	.quad	0x3fe968e60807357e              # double 0.79405499999999996
	.quad	0x3fe07574f722e1ac              # double 0.51433799999999996
	.quad	0x3fdd05f6ba0620ab              # double 0.45348899999999998
	.quad	0x3fed1ede1198aeb8              # double 0.91001799999999999
	.quad	0x3fe8bf24d8fd5cb8              # double 0.77333300000000005
	.quad	0x3fe9662fdfc19c17              # double 0.79372399999999999
	.quad	0x3fd2d6a161e4f766              # double 0.29435
	.quad	0x3fc5ca7d6733ebc0              # double 0.170242
	.quad	0x3fde5bc87db2b346              # double 0.474352
	.quad	0x3feb19a415f45e0b              # double 0.84687999999999997
	.quad	0x3fd9c083126e978d              # double 0.40237499999999998
	.quad	0x3fcfe4ef0281ba80              # double 0.24917400000000001
	.quad	0x3fe0de97d06bbdbe              # double 0.52717199999999997
	.quad	0x3fe9e9a6f826edab              # double 0.80977200000000005
	.quad	0x3fcc4ece9a2c6690              # double 0.22115499999999999
	.quad	0x3fb559a30984e400              # double 0.083399000000000001
	.quad	0x3fe046dc5d638866              # double 0.50865000000000005
	.quad	0x3fec8c8cd63cb817              # double 0.89215699999999998
	.quad	0x3fd4f190d173fb7a              # double 0.32724399999999998
	.quad	0x3fd1995ee136e71d              # double 0.27498600000000001
	.quad	0x3fd83fa2ad3e920c              # double 0.378884
	.quad	0x3fe0d651b0ccbc06              # double 0.52616200000000002
	.quad	0x3fae687f455a7d24              # double 0.059390999999999999
	.quad	0x3fe395464dc22ab2              # double 0.61197199999999996
	.quad	0x3fe3690bc7b45f18              # double 0.60657300000000003
	.quad	0x3feb8dcfcc5b8dc5              # double 0.86106099999999997
	.quad	0x3fe0aeafab53d641              # double 0.52132400000000001
	.quad	0x3fe68a3f8982cb21              # double 0.704376
	.quad	0x3fe2a40fa9c12f0a              # double 0.58252700000000002
	.quad	0x3fc048e8a71de69b              # double 0.127225
	.quad	0x3fc56733ebbfd71b              # double 0.167212
	.quad	0x3fe9f7d0f1f57b42              # double 0.81150100000000003
	.quad	0x3fe77f0aa21a719b              # double 0.73425799999999997
	.quad	0x3fc310ba6266fd65              # double 0.148948
	.quad	0x3fe790ff97247454              # double 0.73645000000000005
	.quad	0x3fed3d2b6f19934f              # double 0.913717
	.quad	0x3fe9bcb81733226c              # double 0.80428699999999997
	.quad	0x3fe388893b7d8490              # double 0.61041699999999999
	.quad	0x3fed412f09d8c6d6              # double 0.91420699999999999
	.quad	0x3fdef78bbd380453              # double 0.48385899999999998
	.quad	0x3feae7c49fd7a13c              # double 0.84079199999999998
	.quad	0x3fdf9e8815e39714              # double 0.49405100000000002
	.quad	0x3fed753e707e175d              # double 0.92056199999999999
	.quad	0x3fcebc6a7ef9db23              # double 0.24012500000000001
	.quad	0x3fe908bda9435ac9              # double 0.78231700000000004
	.quad	0x3fd189118c197e56              # double 0.27399099999999998
	.quad	0x3fe550f6273929ed              # double 0.66613299999999998
	.quad	0x3fc9f9acffa7eb6c              # double 0.202932
	.quad	0x3f913a92a3055326              # double 0.016825
	.quad	0x3fe3f61cbccf28c8              # double 0.62379300000000004
	.quad	0x3fe8e7f6f4be835e              # double 0.77831600000000001
	.quad	0x3fd252b0a6fc58ac              # double 0.28629700000000002
	.quad	0x3fe7e1049235f80a              # double 0.74621800000000005
	.quad	0x3fe70caa326e1156              # double 0.72029600000000005
	.quad	0x3fd6266ba493c89f              # double 0.34609499999999999
	.quad	0x3feef40e5a35d67c              # double 0.96729200000000004
	.quad	0x3fd452c59fb1e18f              # double 0.317552
	.quad	0x3fe72bf9830e3cda              # double 0.72411800000000004
	.quad	0x3fea96c3fc43b2dd              # double 0.83090399999999998
	.quad	0x3fd6f44d44567126              # double 0.35866100000000001
	.quad	0x3fda7cbf6e3f78bc              # double 0.41386400000000001
	.quad	0x3fe8d6c508b32ce9              # double 0.77621700000000005
	.quad	0x3fd22da98676a726              # double 0.28403699999999998
	.quad	0x3fd14d6e47dc37a4              # double 0.27035100000000001
	.quad	0x3fe060a41a261bf3              # double 0.51179699999999995
	.quad	0x3fc72f23033a4724              # double 0.18112600000000001
	.quad	0x3fd35710880d801b              # double 0.30218899999999999
	.quad	0x3fb09b738e6d15ad              # double 0.064871999999999999
	.quad	0x3fe892be48a58b3f              # double 0.76791299999999996
	.quad	0x3fceb7f5a5332ad0              # double 0.23998900000000001
	.quad	0x3fd85c52e72da123              # double 0.380635
	.quad	0x3fe4cb31c219eb64              # double 0.64980400000000005
	.quad	0x3fe502cb20fb224b              # double 0.65659100000000004
	.quad	0x3fed1ac14c660a20              # double 0.90951599999999999
	.quad	0x3fed48b86b15f890              # double 0.91512700000000002
	.quad	0x3fb2ff7dfa00e27e              # double 0.074210999999999999
	.quad	0x3fc599029ae4f334              # double 0.16873199999999999
	.quad	0x3fbfa493c89f40a3              # double 0.12360500000000001
	.quad	0x3fb4f3cb3e5753a4              # double 0.081845000000000001
	.quad	0x3fe69f53825e13b2              # double 0.70694900000000005
	.quad	0x3fc89e7fb267c6b9              # double 0.19233700000000001
	.quad	0x3fd5a61e0c5a8156              # double 0.33826400000000001
	.quad	0x3fecc3c18b502abb              # double 0.89889600000000003
	.quad	0x3fd1b780346dc5d6              # double 0.27682499999999999
	.quad	0x3fc1418d6909aed5              # double 0.13481299999999999
	.quad	0x3fe83ecedd484513              # double 0.75766699999999998
	.quad	0x3fe0e154434e336a              # double 0.52750600000000003
	.quad	0x3fbd6bca5375c8da              # double 0.114926
	.quad	0x3fc8df2ecf206424              # double 0.19431100000000001
	.quad	0x3fdf76ff3ade2260              # double 0.49163800000000002
	.quad	0x3fd516fc9bc77143              # double 0.32952799999999999
	.quad	0x3fd6dcdf69878317              # double 0.35723100000000002
	.quad	0x3feec1b328b6d86f              # double 0.96114500000000002
	.quad	0x3fda2314013ec461              # double 0.408391
	.quad	0x3fef08fa7a85015c              # double 0.96984599999999998
	.quad	0x3fe0ecaeea63b689              # double 0.52889200000000003
	.quad	0x3fd1bc664d3bf2f5              # double 0.27712399999999998
	.quad	0x3fd86d15ad106ee3              # double 0.381658
	.quad	0x3fdaea2d2fe3f35a              # double 0.420543
	.quad	0x3fea531769a91106              # double 0.82264300000000001
	.quad	0x3fecd1dabe27179c              # double 0.900617
	.quad	0x3fed393ab430f495              # double 0.91323600000000005
	.quad	0x3fe61ac79702e664              # double 0.69076899999999997
	.quad	0x3fe83018611fd588              # double 0.75587099999999996
	.quad	0x3fe861719f7f8ca8              # double 0.76189499999999999
	.quad	0x3fdb7a4a48f96e16              # double 0.42933900000000003
	.quad	0x3fbf357e670e2c13              # double 0.12191
	.quad	0x3fe015f676ea4229              # double 0.50268100000000004
	.quad	0x3fe2d9641f644956              # double 0.58903700000000003
	.quad	0x3fe4e9531550ca1d              # double 0.65348200000000001
	.quad	0x3fe018e10cf5b1c8              # double 0.50303699999999996
	.quad	0x3fe34f11b60ae968              # double 0.60340199999999999
	.quad	0x3fd7ca36199780bb              # double 0.37171700000000002
	.quad	0x3fe08d73860999dd              # double 0.51726700000000003
	.quad	0x3fd37cd466f5019f              # double 0.30449399999999999
	.quad	0x3fe5ceb356da0169              # double 0.68148200000000003
	.quad	0x3fd927bb2fec56d6              # double 0.39305000000000001
	.quad	0x3fe6820a30db6a1f              # double 0.70337400000000005
	.quad	0x3feff240fa9c12f1              # double 0.99832200000000004
	.quad	0x3fd8c68661ae70c1              # double 0.38711699999999999
	.quad	0x3fd3ca8e2e2b8c76              # double 0.30923800000000001
	.quad	0x3fe294b380cb6c7a              # double 0.58065199999999995
	.quad	0x3fdb5f202107b784              # double 0.42768099999999998
	.quad	0x3fe7d96a6a01259a              # double 0.74529000000000001
	.quad	0x3fd11bfbdf090f73              # double 0.26733299999999999
	.quad	0x3fb03ac929aa1d75              # double 0.063396999999999995
	.quad	0x3fc32474538ef34d              # double 0.14954999999999999
	.quad	0x3fe4a81ba7fc32ec              # double 0.64552100000000001
	.quad	0x3fdea5ca29845dc8              # double 0.47886899999999999
	.quad	0x3fd60ce4ead0c3d2              # double 0.34453699999999998
	.quad	0x3fc115054ac29bf1              # double 0.13345399999999999
	.quad	0x3fc69973d9ec7000              # double 0.17655799999999999
	.quad	0x3fea65f9591cd1c8              # double 0.82494800000000001
	.quad	0x3fecc382a12f9011              # double 0.89886600000000005
	.quad	0x3fda90b84988094e              # double 0.41508299999999998
	.quad	0x3fd07d8cf398e970              # double 0.25766299999999998
	.quad	0x3fcf966be7afa722              # double 0.246778
	.quad	0x3fe627a41e57d9dc              # double 0.69233900000000004
	.quad	0x3fe286466b1e5c0c              # double 0.57889100000000004
	.quad	0x3fdd11ada76d97b3              # double 0.454204
	.quad	0x3fe8ea3df6db9410              # double 0.77859400000000001
	.quad	0x3fe2569f4906034f              # double 0.57307399999999997
	.quad	0x3fe777b9e060fe48              # double 0.73336500000000004
	.quad	0x3f9f0e90bc7b45f1              # double 0.030328999999999998
	.quad	0x3fe88f7121ab4b73              # double 0.76751000000000003
	.quad	0x3fefc93ea2d2fe3f              # double 0.99331599999999997
	.quad	0x3fa925785f8d2e51              # double 0.049113999999999998
	.quad	0x3fed953586ca89fc              # double 0.92446399999999995
	.quad	0x3fe4474fb549f948              # double 0.63370499999999996
	.quad	0x3fe88461f9f01b86              # double 0.76615999999999995
	.quad	0x3fe85f45e0b4e11e              # double 0.76163000000000003
	.quad	0x3fd144e50c5eb314              # double 0.26983000000000001
	.quad	0x3fe521c8a7a41e58              # double 0.66037400000000002
	.quad	0x3fe29b1b79d909f2              # double 0.58143400000000001
	.quad	0x3fddadddf43c7d5f              # double 0.46373700000000001
	.quad	0x3fdea67a52ac753e              # double 0.47891099999999998
	.quad	0x3fd250dae3e6c4c6              # double 0.28618500000000002
	.quad	0x3fe4a3f8982cb210              # double 0.64501600000000003
	.quad	0x3fd289b52007dd44              # double 0.289655
	.quad	0x3fef2f89c5e6ff7e              # double 0.974553
	.quad	0x3fe02cb85a4f00ef              # double 0.50545899999999999
	.quad	0x3fe945bd0e12e83a              # double 0.78976299999999999
	.quad	0x3fd7df9378ee2867              # double 0.37302099999999999
	.quad	0x3fd341aac53b0814              # double 0.30088300000000001
	.quad	0x3fa71ed17c5ef630              # double 0.045157000000000003
	.quad	0x3fe509118c197e56              # double 0.65735699999999997
	.quad	0x3fdd74bc6a7ef9db              # double 0.46024999999999999
	.quad	0x3fdc9b8023a6ce36              # double 0.44699100000000003
	.quad	0x3fe44d099e0e7360              # double 0.63440399999999997
	.quad	0x3fe9392189bd8384              # double 0.78822400000000003
	.quad	0x3fea3465625a682b              # double 0.81889599999999996
	.quad	0x3fde12d3415b1423              # double 0.46989900000000001
	.quad	0x3fa5907d912556d2              # double 0.042118000000000003
	.quad	0x3fb8b5350092ccf7              # double 0.096515000000000004
	.quad	0x3fe346b69db65ecc              # double 0.60238199999999997
	.quad	0x3fbc20c49ba5e354              # double 0.109875
	.quad	0x3fd7f2f9873ffac2              # double 0.37420500000000001
	.quad	0x3fd81361dc93ea2d              # double 0.37618299999999999
	.quad	0x3fc22b27cbf6e3f8              # double 0.14194200000000001
	.quad	0x3fe9e72b884406c0              # double 0.80946899999999999
	.quad	0x3fb04be40420f6f1              # double 0.063658000000000006
	.quad	0x3fe8b9fdbd2fa0d7              # double 0.77270399999999995
	.quad	0x3fe1be1a8262456f              # double 0.55445599999999995
	.quad	0x3fdcf572de43ed96              # double 0.45248100000000002
	.quad	0x3fe71f4f50a02b84              # double 0.72257199999999999
	.quad	0x3fd25d4a5df2239e              # double 0.28694399999999998
	.quad	0x3fdbba6aca793576              # double 0.433253
	.quad	0x3fd478e9f6a93f29              # double 0.31988
	.quad	0x3fdcf761cbccf28c              # double 0.45259899999999997
	.quad	0x3fe0bae46cfc829d              # double 0.522814
	.quad	0x3fe31e8a2ec28b2a              # double 0.59747799999999995
	.quad	0x3fe95feda6612839              # double 0.79296
	.quad	0x3fed94d0dcfcc5b9              # double 0.92441600000000002
	.quad	0x3fe466c2acb85a4f              # double 0.637544
	.quad	0x3fec7c158fb43d8a              # double 0.89014700000000002
	.quad	0x3fd6d5ae1cde5d18              # double 0.356792
	.quad	0x3fd9b27cbf6e3f79              # double 0.40151900000000001
	.quad	0x3fe67138bcdfefbf              # double 0.70132099999999997
	.quad	0x3fcb6d7e889c1b54              # double 0.214279
	.quad	0x3fa76640a6b93ccd              # double 0.045702
	.quad	0x3fe21fadafd11383              # double 0.56636699999999995
	.quad	0x3fdc5d206c8711d8              # double 0.44318400000000002
	.quad	0x3fdd235f80991794              # double 0.45528400000000002
	.quad	0x3fe33af31b152f3c              # double 0.60094599999999998
	.quad	0x3fd25757d5a9eb20              # double 0.28658099999999997
	.quad	0x3fdb8e432441fea8              # double 0.430558
	.quad	0x3fea8870110a137f              # double 0.82915499999999998
	.quad	0x3fec1422ccb3a259              # double 0.87745799999999996
	.quad	0x3fcfac57e23f24d9              # double 0.247447
	.quad	0x3fe5bfc0096feb4a              # double 0.67965699999999996
	.quad	0x3fecf50e34762952              # double 0.904914
	.quad	0x3fd6e34b945308bc              # double 0.35762300000000002
	.quad	0x3fc52f2b66b6177f              # double 0.16550200000000001
	.quad	0x3fea1f90539fba45              # double 0.816353
	.quad	0x3fdfca29845dc832              # double 0.49671399999999999
	.quad	0x3fa1357603925bb8              # double 0.033611000000000002
	.quad	0x3fe3e20ccff21b3b              # double 0.62134400000000001
	.quad	0x3fe971a1986b9c30              # double 0.79512099999999997
	.quad	0x3fd14794ea077037              # double 0.26999400000000001
	.quad	0x3fe42d3e920c069e              # double 0.63052299999999994
	.quad	0x3fb9b6805a2d7300              # double 0.100441
	.quad	0x3feabb0e5e679464              # double 0.83533400000000002
	.quad	0x3fe477f06705c897              # double 0.63964100000000002
	.quad	0x3fdb19c17225b74a              # double 0.42344700000000002
	.quad	0x3fd01569f4906035              # double 0.251307
	.quad	0x3fddcd5f99c38b05              # double 0.46566000000000002
	.quad	0x3fd823897204295a              # double 0.37716899999999998
	.quad	0x3fdebe1a8262456f              # double 0.48035299999999997
	.quad	0x3fd34d6a161e4f76              # double 0.30159999999999998
	.quad	0x3fba0c176577531e              # double 0.101747
	.quad	0x3feae2e4d1a65061              # double 0.84019699999999997
	.quad	0x3fddf49cf56eac86              # double 0.468055
	.quad	0x3fe1bba12b5e529c              # double 0.55415400000000004
	.quad	0x3fe7aabef06b3786              # double 0.73959299999999994
	.quad	0x3fe3553ef6b5d463              # double 0.60415600000000003
	.quad	0x3fda23358f2e05cd              # double 0.40839900000000001
	.quad	0x3fe7a055757d5a9f              # double 0.73832200000000003
	.quad	0x3fe9ea6a012599ed              # double 0.80986499999999995
	.quad	0x3fedf7a919695d92              # double 0.93648200000000004
	.quad	0x3fe58e79aae6c8f7              # double 0.67364199999999996
	.quad	0x3fbc1a36e2eb1c43              # double 0.109775
	.quad	0x3fca5a682b62845a              # double 0.20588400000000001
	.quad	0x3fe375d78811b1d9              # double 0.60813499999999998
	.quad	0x3fd8fe047d3d4281              # double 0.39050400000000002
	.quad	0x3f7126634117f844              # double 0.0041869999999999997
	.quad	0x3f78a43bb40b34e7              # double 0.0060159999999999996
	.quad	0x3fc8c81d3aa369fd              # double 0.193607
	.quad	0x3fd616c61522a6f4              # double 0.34514
	.quad	0x3fe4f3e89a88ace2              # double 0.65477399999999997
	.quad	0x3fe53ea704bc2763              # double 0.66389799999999999
	.quad	0x3feabfaf42784a94              # double 0.83589899999999994
	.quad	0x3fe3fe718a86d71f              # double 0.62480999999999998
	.quad	0x3fda7e670e2c12ae              # double 0.41396500000000003
	.quad	0x3fe37b7c7820a30e              # double 0.60882400000000003
	.quad	0x3faabd5dc4007571              # double 0.052226000000000002
	.quad	0x3fde558644523f68              # double 0.47397
	.quad	0x3fd86cfc829cfdd2              # double 0.38165199999999999
	.quad	0x3fe60c0053e2d624              # double 0.68896500000000005
	.quad	0x3fe38bd017dae819              # double 0.61081700000000005
	.quad	0x3fd1dc4c9c90c4df              # double 0.27907100000000001
	.quad	0x3fefb7b07075b3e1              # double 0.99117299999999997
	.quad	0x3fee7eaa2a0a9585              # double 0.95296199999999998
	.quad	0x3fee1847f562174c              # double 0.94046399999999996
	.quad	0x3fe0fd77fae3608d              # double 0.530941
	.quad	0x3fdb280ae1049236              # double 0.424319
	.quad	0x3fe0cf4e874c8ffc              # double 0.52530600000000005
	.quad	0x3fe8c9f2fdb8fde3              # double 0.77465200000000001
	.quad	0x3fe182e2328f9f45              # double 0.54722700000000002
	.quad	0x3fe209bd8383ad9f              # double 0.563689
	.quad	0x3fb085e3da2f8bdf              # double 0.064543000000000003
	.quad	0x3fd9f972474538ef              # double 0.40584999999999999
	.quad	0x3fb05ec3dab5c39c              # double 0.063946000000000003
	.quad	0x3feee675147f1306              # double 0.96563200000000005
	.quad	0x3fc65df2239e6aba              # double 0.17474200000000001
	.quad	0x3fcbd66adb402d17              # double 0.21748100000000001
	.quad	0x3fa7aaef2c732592              # double 0.046226000000000003
	.quad	0x3fb8a32f44912989              # double 0.096240000000000006
	.quad	0x3fec82773e24febd              # double 0.890926
	.quad	0x3fb87f3493858362              # double 0.095690999999999998
	.quad	0x3fe536e503fb3743              # double 0.66295099999999996
	.quad	0x3fd1202539756c94              # double 0.26758700000000002
	.quad	0x3fe963608d08919f              # double 0.793381
	.quad	0x3fe0a11a975afaf8              # double 0.51966599999999996
	.quad	0x3fc7cc1871e6cd29              # double 0.185916
	.quad	0x3fd0021d10b1feeb              # double 0.25012899999999999
	.quad	0x3fd510b1feeb2d0a              # double 0.32914399999999999
	.quad	0x3fdc94c016052503              # double 0.446579
	.quad	0x3fe637154003254e              # double 0.69422399999999995
	.quad	0x3fe544f7ec3547e0              # double 0.66466899999999995
	.quad	0x3fcd8327674d1633              # double 0.23056499999999999
	.quad	0x3fe56cbb7f9d6f11              # double 0.66952299999999998
	.quad	0x3f93b18dac258d58              # double 0.019231999999999999
	.quad	0x3fc0d538ac18f81f              # double 0.13150700000000001
	.quad	0x3fdcf5be5d9e40c8              # double 0.45249899999999998
	.quad	0x3fb71cda2b5a20de              # double 0.090284000000000003
	.quad	0x3fb1f6555c52e72e              # double 0.070165000000000005
	.quad	0x3fcfdd3bafd976ff              # double 0.24893899999999999
	.quad	0x3fc66a4441787054              # double 0.175118
	.quad	0x3fe2064883fd5022              # double 0.56326699999999996
	.quad	0x3fb05ccc89b0ee4a              # double 0.063916000000000001
	.quad	0x3fec2a0663c74fb5              # double 0.88012999999999997
	.quad	0x3fac9752977c88e8              # double 0.055842000000000003
	.quad	0x3fe1a9e0a41a261c              # double 0.55198700000000001
	.quad	0x3fd913b9f127f5e8              # double 0.39182899999999998
	.quad	0x3fdd60cbf2b239a4              # double 0.45903300000000002
	.quad	0x3fb523a29c779a6b              # double 0.082574999999999996
	.quad	0x3fb55ef1fddebd90              # double 0.083479999999999998
	.quad	0x3fa85d31337eb28e              # double 0.047586000000000003
	.quad	0x3fbe2ff08893b7d8              # double 0.117919
	.quad	0x3fdec426351deefe              # double 0.48072199999999998
	.quad	0x3fdc924af0bf1a5d              # double 0.44642900000000002
	.quad	0x3fe4eaec0724b76f              # double 0.65367699999999995
	.quad	0x3fac4b4d056c508b              # double 0.055261999999999999
	.quad	0x3feaa7aa68f4b620              # double 0.83296700000000001
	.quad	0x3fe05616f86a0989              # double 0.51050899999999999
	.quad	0x3feb9b823c85c24c              # double 0.86273299999999997
	.quad	0x3feeeb6390c91080              # double 0.96623400000000004
	.quad	0x3fdf1fe21d96e9bc              # double 0.486321
	.quad	0x3fef6c226809d495              # double 0.98194999999999998
	.quad	0x3fef4b252ce032db              # double 0.97792299999999998
	.quad	0x3fce63736cdf266c              # double 0.23741000000000001
	.quad	0x3fd2249a133c1ce7              # double 0.28348400000000001
	.quad	0x3fe7b5350092ccf7              # double 0.74087000000000003
	.quad	0x3fe96160d887ebf2              # double 0.79313699999999998
	.quad	0x3fe52f35e310dbf0              # double 0.66201299999999996
	.quad	0x3fee6f08cc575c07              # double 0.95105399999999995
	.quad	0x3fdf46d3f9e7b80b              # double 0.48869800000000002
	.quad	0x3fc535653c9abb02              # double 0.16569200000000001
	.quad	0x3fd69a49c2c1b110              # double 0.35316700000000001
	.quad	0x3fef91a975afaf86              # double 0.98653100000000005
	.quad	0x3fbad55a3a08398a              # double 0.10481799999999999
	.quad	0x3fe6c5f394b7b289              # double 0.71166399999999996
	.quad	0x3fe24d39da16616b              # double 0.57192699999999996
	.quad	0x3f979aae6c8f7553              # double 0.023050999999999999
	.quad	0x3fdf726d04e618ce              # double 0.49135899999999999
	.quad	0x3fe3eaa6d2674081              # double 0.622394
	.quad	0x3faed6ba8c586877              # double 0.060232000000000001
	.quad	0x3fa2c01e68a0d34a              # double 0.036622000000000002
	.quad	0x3fd46f0cfe154435              # double 0.31927800000000001
	.quad	0x3fd98e29f9ce8d97              # double 0.39930199999999999
	.quad	0x3fef342aa9f7b5af              # double 0.97511800000000004
	.quad	0x3fd3d53cddd6e04c              # double 0.30989
	.quad	0x3fc9a2ad3e920c07              # double 0.20027700000000001
	.quad	0x3fc5c422036006d1              # double 0.170048
	.quad	0x3fd906961c36976c              # double 0.39102700000000001
	.quad	0x3fecb0df9bdc69f9              # double 0.89659100000000003
	.quad	0x3fa16616b54e2b06              # double 0.033981999999999998
	.quad	0x3fbd41b75a74c09c              # double 0.114284
	.quad	0x3fd9c2480e8c8abd              # double 0.40248299999999998
	.quad	0x3fe5d4f5903a7547              # double 0.68224600000000002
	.quad	0x3fe7be3c105186db              # double 0.74197199999999996
	.quad	0x3fea7345069a4df4              # double 0.82657099999999994
	.quad	0x3fbd64f97edc7ef1              # double 0.11482199999999999
	.quad	0x3fd05c182ecaeea6              # double 0.25562099999999999
	.quad	0x3fe3d2aa5c5f7c67              # double 0.61946599999999996
	.quad	0x3fe9acdc011d3672              # double 0.80235100000000004
	.quad	0x3fe36a055757d5aa              # double 0.60669200000000001
	.quad	0x3fb0b039ef0f16f4              # double 0.065188999999999997
	.quad	0x3fdae9ff0cbaf966              # double 0.42053200000000002
	.quad	0x3fe24bec679cc74c              # double 0.57176800000000005
	.quad	0x3fe0f4cb1897a67a              # double 0.52988199999999996
	.quad	0x3fe02cf312b1b36c              # double 0.50548700000000002
	.quad	0x3fe5029068986fce              # double 0.65656300000000001
	.quad	0x3fe792839042d8c3              # double 0.73663500000000004
	.quad	0x3fe088b97785729b              # double 0.51668999999999998
	.quad	0x3fb9b18548a9bcfd              # double 0.100365
	.quad	0x3fa705a708ede54b              # double 0.044964999999999998
	.quad	0x3fd4ecbfb15b573f              # double 0.32695000000000002
	.quad	0x3fc4600b02928177              # double 0.15918099999999999
	.quad	0x3fc15807fed20297              # double 0.13549900000000001
	.quad	0x3fecdf138bcdfefc              # double 0.902231
	.quad	0x3fe9e9df97aaac11              # double 0.80979900000000005
	.quad	0x3fc51e29b6b2af14              # double 0.16498299999999999
	.quad	0x3fbcbbd3804534bd              # double 0.11224099999999999
	.quad	0x3fcec2a454de7ea6              # double 0.240315
	.quad	0x3fe45093964a59c0              # double 0.63483599999999996
	.quad	0x3fe59908e581cf78              # double 0.67493099999999995
	.quad	0x3fd19c12f09d8c6d              # double 0.27515099999999998
	.quad	0x3fb4c9539b888723              # double 0.081197000000000005
	.quad	0x3fea41c3efae7925              # double 0.82052800000000004
	.quad	0x3fe39d0a67620ee9              # double 0.61292000000000002
	.quad	0x3fd7f8055fbb517a              # double 0.37451299999999998
	.quad	0x3f97689ca18bd662              # double 0.022859999999999998
	.quad	0x3fc05eb313be22e6              # double 0.12789
	.quad	0x3fd0a5b530ced4e5              # double 0.26011400000000001
	.quad	0x3fead785f8d2e515              # double 0.83880900000000003
	.quad	0x3fe9e5082cf52b91              # double 0.80920800000000004
	.quad	0x3fdd40a2877ee4e2              # double 0.45706999999999998
	.quad	0x3fe238ed1bf7ad4b              # double 0.56944899999999998
	.quad	0x3fe960f1b25f633d              # double 0.79308400000000001
	.quad	0x3fdb8f2e05ccc89b              # double 0.430614
	.quad	0x3fed9c4545846e8f              # double 0.92532599999999998
	.quad	0x3fea2658c4bd33d3              # double 0.81718100000000005
	.quad	0x3fe3a593a2df9379              # double 0.61396200000000001
	.quad	0x3fed19ae924f227d              # double 0.909385
	.quad	0x3fc48344c37e6f72              # double 0.16025600000000001
	.quad	0x3fedd3111f0c34c2              # double 0.93201500000000004
	.quad	0x3fde5cee17a02fb6              # double 0.47442200000000001
	.quad	0x3fee06bbdbe3c105              # double 0.93832199999999999
	.quad	0x3fcc2467be553ac5              # double 0.219861
	.quad	0x3fb2fef7c243dccf              # double 0.074203000000000005
	.quad	0x3fe9fccc03793144              # double 0.81210899999999996
	.quad	0x3fb6523704790b85              # double 0.087192000000000006
	.quad	0x3fe56b8305d95dd5              # double 0.66937400000000002
	.quad	0x3fc0f26aec0724b7              # double 0.13239799999999999
	.quad	0x3fddeff9f87f023f              # double 0.46777200000000002
	.quad	0x3fb4c660a2014728              # double 0.081152000000000002
	.quad	0x3fd6c9363f572de4              # double 0.35603099999999999
	.quad	0x3fed4ed6fda836eb              # double 0.91587399999999997
	.quad	0x3fe0ae5bc87db2b3              # double 0.52128399999999997
	.quad	0x3fdc7c6b8b69552e              # double 0.44509399999999999
	.quad	0x3fe3e2b27cbf6e3f              # double 0.62142299999999995
	.quad	0x3fd8845132f87ad1              # double 0.38307600000000003
	.quad	0x3fe45efa615a8deb              # double 0.63659399999999999
	.quad	0x3fc109a671ef30a5              # double 0.133107
	.quad	0x3fc16b2af145521a              # double 0.13608300000000001
	.quad	0x3fdbb4fa48301a7a              # double 0.432921
	.quad	0x3fd3c17ebaf10236              # double 0.30868499999999999
	.quad	0x3fe88f3882278d0d              # double 0.76748300000000003
	.quad	0x3fc16e3715400325              # double 0.13617599999999999
	.quad	0x3fb0b90214ad362f              # double 0.065323000000000006
	.quad	0x3fc530df9bdc69f9              # double 0.16555400000000001
	.quad	0x3fc2452c59fb1e19              # double 0.142736
	.quad	0x3fec7b1e18efbb0e              # double 0.89002899999999996
	.quad	0x3fed362a5e785b5b              # double 0.91286199999999995
	.quad	0x3fc893e1c9b41398              # double 0.19201299999999999
	.quad	0x3f8ac9afe1da7b0b              # double 0.01308
	.quad	0x3fee7c1df3300de5              # double 0.95265100000000003
	.quad	0x3fe0a48301a79fed              # double 0.52008200000000004
	.quad	0x3fe3cf398e970718              # double 0.61904599999999999
	.quad	0x3fc3edb7281fd9ba              # double 0.155692
	.quad	0x3fefa76534373f31              # double 0.98918399999999995
	.quad	0x3fd3acffa7eb6bf4              # double 0.30743399999999999
	.quad	0x3fe27b02d59d55e7              # double 0.57751600000000003
	.quad	0x3fb5caafbc1acde2              # double 0.085124000000000005
	.quad	0x3fd6a3db3bfb58d1              # double 0.35375099999999998
	.quad	0x3fd1f0563ed0f627              # double 0.28029399999999999
	.quad	0x3fc8ea4228997c3d              # double 0.19464899999999999
	.quad	0x3fcbc47e49b1fab9              # double 0.21693399999999999
	.quad	0x3fe0e994185058de              # double 0.52851300000000001
	.quad	0x3fc2944ed6fda837              # double 0.145151
	.quad	0x3fe6ec4827b6fe2e              # double 0.71634299999999995
	.quad	0x3fd9a2b5a20ddc62              # double 0.40055600000000002
	.quad	0x3fe2997e56473472              # double 0.581237
	.quad	0x3fe1033e78e1932d              # double 0.53164599999999995
	.quad	0x3fe0a9cfdd228566              # double 0.520729
	.quad	0x3fee0bfe3b03e20d              # double 0.93896400000000002
	.quad	0x3fea615ca6ca03c5              # double 0.82438500000000003
	.quad	0x3fbac9c0a8d21bc1              # double 0.104641
	.quad	0x3fc19ed7c6fbd274              # double 0.13766
	.quad	0x3fe5d61d4306e5cd              # double 0.68238699999999997
	.quad	0x3fdbf0e4da09cc32              # double 0.43657800000000002
	.quad	0x3fa56eefa1e3eaf7              # double 0.041862000000000003
	.quad	0x3feaecacd184c272              # double 0.841391
	.quad	0x3fc6eb13dfb0d520              # double 0.17904900000000001
	.quad	0x3fe59f969e3c9689              # double 0.67573099999999997
	.quad	0x3fb05dfa871a3b15              # double 0.063934000000000005
	.quad	0x3fe061dc93ea2d30              # double 0.51194600000000001
	.quad	0x3f8161a1db877ab3              # double 0.0084869999999999997
	.quad	0x3fecb26e115592da              # double 0.89678100000000005
	.quad	0x3fda31f46ed245b3              # double 0.40929900000000002
	.quad	0x3fa30ab2e1693c04              # double 0.037191000000000002
	.quad	0x3fc34013ec460ed8              # double 0.150393
	.quad	0x3fe30f041461b6d4              # double 0.59558299999999997
	.quad	0x3fe582602c9081c3              # double 0.67216500000000001
	.quad	0x3fdfc77dd872f33d              # double 0.49655100000000002
	.quad	0x3fdfb5393250b524              # double 0.49543599999999999
	.quad	0x3fdc25529fe004b8              # double 0.439778
	.quad	0x3fa6920c069e7fb2              # double 0.044082999999999997
	.quad	0x3fdcd35a858793de              # double 0.45040000000000002
	.quad	0x3fe5d36d655e28aa              # double 0.68205899999999997
	.quad	0x3fd9dea897635e74              # double 0.40421499999999999
	.quad	0x3feb0c521dda059a              # double 0.84525399999999995
	.quad	0x3fc946b26bf8769f              # double 0.19747000000000001
	.quad	0x3fc5f85510d38cda              # double 0.17164099999999999
	.quad	0x3fd852ce032db1ea              # double 0.380054
	.quad	0x3fccac6cdaf4adbc              # double 0.22401199999999999
	.quad	0x3fdc925785f8d2e5              # double 0.446432
	.quad	0x3f9c0b9991361dc9              # double 0.027387999999999999
	.quad	0x3fed40a06e9ff0cc              # double 0.91413900000000003
	.quad	0x3fe907789a459104              # double 0.78216200000000002
	.quad	0x3fdedce7cd035372              # double 0.48223300000000002
	.quad	0x3fbd48a9bcfd4bf1              # double 0.11439000000000001
	.quad	0x3fe209bd8383ad9f              # double 0.563689
	.quad	0x3fd323a6ce358299              # double 0.29905100000000001
	.quad	0x3fd26672fba01eef              # double 0.28750300000000001
	.quad	0x3fc5774256bca537              # double 0.16770199999999999
	.quad	0x3fe8b46fdeb52c9d              # double 0.77202599999999999
	.quad	0x3fe75ce39b456b44              # double 0.73008899999999999
	.quad	0x3fd59da9c99285a9              # double 0.33774799999999999
	.quad	0x3fe2bc60029f16b1              # double 0.58549499999999999
	.quad	0x3fe6b48d3ae685db              # double 0.70953999999999995
	.quad	0x3faff9b56323bbc7              # double 0.062452000000000001
	.quad	0x3fea4b1ab0856e69              # double 0.82166799999999995
	.quad	0x3fdd40cc78e9f6a9              # double 0.45707999999999999
	.quad	0x3fd025a250f84018              # double 0.25229699999999999
	.quad	0x3fd8587d6f976790              # double 0.38040099999999999
	.quad	0x3fe9a6bf8769ec2d              # double 0.80160500000000001
	.quad	0x3fea8dd82fd75e20              # double 0.82981499999999996
	.quad	0x3fea82d59d55e6bc              # double 0.82847099999999995
	.quad	0x3fe883621fafc8b0              # double 0.766038
	.quad	0x3fd59ccb7d41743f              # double 0.33769500000000002
	.quad	0x3fb4c996b76709fa              # double 0.081200999999999995
	.quad	0x3fd8233df2a9d628              # double 0.37715100000000001
	.quad	0x3fb743fa2ad3e921              # double 0.090881000000000003
	.quad	0x3fd4296b3354c122              # double 0.31502799999999997
	.quad	0x3fefe2845996744b              # double 0.99640099999999998
	.quad	0x3fe76e88df37329c              # double 0.73224299999999998
	.quad	0x3fda0c521dda059a              # double 0.40700199999999997
	.quad	0x3fe724873365881a              # double 0.72320899999999999
	.quad	0x3fec42699c7bcc29              # double 0.88310699999999998
	.quad	0x3feae8f4b61fe21e              # double 0.84093700000000005
	.quad	0x3fde6fb4c3c18b50              # double 0.47556799999999999
	.quad	0x3fedb827fa1a0cf2              # double 0.92873000000000006
	.quad	0x3fe5158537e2c55d              # double 0.65887700000000005
	.quad	0x3fe3be78e1932d6f              # double 0.61700100000000002
	.quad	0x3fe32cbc8c0ce91d              # double 0.59921100000000005
	.quad	0x3fc145953586ca8a              # double 0.134936
	.quad	0x3fe8405f6ba0620b              # double 0.75785800000000003
	.quad	0x3fb0259e1f3a57eb              # double 0.063074000000000005
	.quad	0x3feaee2435696e59              # double 0.84157000000000004
	.quad	0x3fd90fe047d3d428              # double 0.391594
	.quad	0x3f9cf91a32b12d34              # double 0.028294
	.quad	0x3fe8cf80dc33721d              # double 0.77532999999999996
	.quad	0x3fe344028e4fb97c              # double 0.60205200000000003
	.quad	0x3fc2de6ddf00abf7              # double 0.14741299999999999
	.quad	0x3fc4dea897635e74              # double 0.163045
	.quad	0x3fe14bb5e0f7fcfc              # double 0.54049199999999997
	.quad	0x3fd3d32c625e99e9              # double 0.30976399999999998
	.quad	0x3fc81fe21d96e9bc              # double 0.188473
	.quad	0x3fca2fbe33acd5b7              # double 0.20458200000000001
	.quad	0x3facd0dcfcc5b8dc              # double 0.056280999999999998
	.quad	0x3fd2cd0fe8ab4fa5              # double 0.29376600000000003
	.quad	0x3fc7b7281fd9ba1b              # double 0.185277
	.quad	0x3feb0de093532e7b              # double 0.84544399999999997
	.quad	0x3fdd2b90a7829069              # double 0.45578400000000002
	.quad	0x3fcd5c9e6687f456              # double 0.22938900000000001
	.quad	0x3fbd5d91ab8e8ea4              # double 0.11470900000000001
	.quad	0x3f6085f4a1272c95              # double 0.0020170000000000001
	.quad	0x3fe04e50c5eb313c              # double 0.50956000000000001
	.quad	0x3fe0e1cffeb074a7              # double 0.52756499999999995
	.quad	0x3fe86d43d03968d7              # double 0.76333799999999996
	.quad	0x3fbf0ec311622813              # double 0.121319
	.quad	0x3fe1350092ccf6be              # double 0.53771999999999998
	.quad	0x3fe95d206c8711d8              # double 0.79261800000000004
	.quad	0x3fdd09203a322af5              # double 0.45368199999999997
	.quad	0x3fde9df548ecd8dc              # double 0.47839100000000001
	.quad	0x3fd009a671ef30a5              # double 0.25058900000000001
	.quad	0x3fe3c111ada76d98              # double 0.61731800000000003
	.quad	0x3feff75d9a0f0a5f              # double 0.998946
	.quad	0x3fe591d3671ac14c              # double 0.67405099999999996
	.quad	0x3fec6d30f062d40b              # double 0.88832900000000004
	.quad	0x3fd4dca07f66e86c              # double 0.32596599999999998
	.quad	0x3fc4a960b6f9fcb1              # double 0.16141900000000001
	.quad	0x3fe339e060fe4799              # double 0.60081499999999999
	.quad	0x3fd535158b827fa2              # double 0.33136500000000002
	.quad	0x3fe57b4a2339c0ec              # double 0.67130000000000001
	.quad	0x3f9e1d2178f68be3              # double 0.029408
	.quad	0x3fa4968943e10060              # double 0.040210999999999997
	.quad	0x3fc5eda661283904              # double 0.171315
	.quad	0x3fefcea077036c9c              # double 0.99397299999999999
	.quad	0x3fd6fa0945f9df55              # double 0.35901100000000002
	.quad	0x3feb9670196d8f50              # double 0.86211400000000005
	.quad	0x3fef37d63022dd7b              # double 0.97556600000000004
	.quad	0x3fc5d96e9bbf0dc7              # double 0.17069799999999999
	.quad	0x3fe1da038194c016              # double 0.557863
	.quad	0x3fd022ea0fd3b29a              # double 0.25213099999999999
	.quad	0x3fe51dcf893faf42              # double 0.65988899999999995
	.quad	0x3fb851eb851eb852              # double 0.095000000000000001
	.quad	0x3fdb423d9231c64c              # double 0.42591800000000002
	.quad	0x3fe0d91cd1c7de51              # double 0.52650300000000005
	.quad	0x3fd22e1262025397              # double 0.28406199999999998
	.quad	0x3fdad72799a1fd15              # double 0.41938199999999998
	.quad	0x3feda400fba8826b              # double 0.92627000000000004
	.quad	0x3fc1f572de43ed96              # double 0.14030300000000001
	.quad	0x3fe0396af038e2a0              # double 0.50700900000000004
	.quad	0x3fc490cd423d9232              # double 0.16066900000000001
	.quad	0x3fed7398e9707182              # double 0.92036099999999998
	.quad	0x3fe8e4d1a6506141              # double 0.77793199999999996
	.quad	0x3f997edc7ef177a7              # double 0.024898
	.quad	0x3fc90164840e171a              # double 0.195355
	.quad	0x3fef962cfd8f0c78              # double 0.98708200000000001
	.quad	0x3feeb90c9107faa0              # double 0.96008899999999997
	.quad	0x3fdc7f7be121ee67              # double 0.44528099999999998
	.quad	0x3fe122a90cd423d9              # double 0.53548099999999998
	.quad	0x3fefcb662fdfc19c              # double 0.99357899999999998
	.quad	0x3fdfbc1eff9f87f0              # double 0.49585699999999999
	.quad	0x3fcb888f861a60d4              # double 0.21510499999999999
	.quad	0x3fe72dc4c9c90c4e              # double 0.72433700000000001
	.quad	0x3fd736ef8055fbb5              # double 0.36272799999999999
	.quad	0x3fcbd18090b417ca              # double 0.217331
	.quad	0x3fd7648c7192ea53              # double 0.365512
	.quad	0x3fe414dd72367e41              # double 0.62754699999999997
	.quad	0x3fe86dd26b723ee2              # double 0.76340600000000003
	.quad	0x3fd60ae1049235f8              # double 0.344414
	.quad	0x3fe930b7c3504c49              # double 0.78719700000000004
	.quad	0x3fd3009b30728e93              # double 0.29691200000000001
	.quad	0x3fe5d2deca2552a0              # double 0.68199100000000001
	.quad	0x3fe79424e5929670              # double 0.73683399999999999
	.quad	0x3feb94c22ee4191a              # double 0.86190900000000004
	.quad	0x3fe78fcb4f1e4b45              # double 0.73630300000000004
	.quad	0x3fec835158b827fa              # double 0.89102999999999999
	.quad	0x3fc47c30d306a2b1              # double 0.16003999999999999
	.quad	0x3fd7d801b4352652              # double 0.37255899999999997
	.quad	0x3fe3b700474d9c6b              # double 0.616089
	.quad	0x3fe426c5d206c871              # double 0.62973299999999999
	.quad	0x3fb0215b9a5a89b9              # double 0.063008999999999996
	.quad	0x3fed6c9c0a8d21bc              # double 0.91950799999999999
	.quad	0x3fd39563a9f383f1              # double 0.30599300000000001
	.quad	0x3fd384ba0e842742              # double 0.30497600000000002
	.quad	0x3fe114ad362e9036              # double 0.53377399999999997
	.quad	0x3fed07df5cf2495e              # double 0.90721099999999999
	.quad	0x3fc1be0157eed45f              # double 0.13861100000000001
	.quad	0x3fe702c9081c2e34              # double 0.71909000000000001
	.quad	0x3fd3449dbec2480f              # double 0.30106300000000003
	.quad	0x3fe1e3c536d655e3              # double 0.55905400000000005
	.quad	0x3fd485dfa871a3b1              # double 0.32067099999999998
	.quad	0x3febd6f976790321              # double 0.86999199999999999
	.quad	0x3fd5775b81301648              # double 0.33540999999999999
	.quad	0x3fd282278d0cc35d              # double 0.28919400000000001
	.quad	0x3fd878b7a1c25d07              # double 0.38236799999999999
	.quad	0x3fda4e8fb00bcbe6              # double 0.41104499999999999
	.quad	0x3fe7e559f6ec5b08              # double 0.74674700000000005
	.quad	0x3fd97368ad688377              # double 0.39766899999999999
	.quad	0x3fb62845996744b3              # double 0.086552000000000004
	.quad	0x3fe7abd5dc400757              # double 0.73972599999999999
	.quad	0x3fe64d61b2a27f1b              # double 0.69694599999999995
	.quad	0x3fcf23f67f4dbdf9              # double 0.243285
	.quad	0x3fe11ca5bd944aa5              # double 0.53474699999999997
	.quad	0x3fd33affb04ee7c5              # double 0.30047600000000002
	.quad	0x3fe01fc4c165907e              # double 0.50387800000000005
	.quad	0x3fd5cd5f99c38b05              # double 0.34066000000000002
	.quad	0x3fd2c90c4dec1c1d              # double 0.29352099999999998
	.quad	0x3fd3d3910c2c5e2d              # double 0.30978800000000001
	.quad	0x3fee70995aaf78ff              # double 0.95124500000000001
	.quad	0x3fe84c20d5629d84              # double 0.75929299999999999
	.quad	0x3f7f4f50a02b8412              # double 0.0076439999999999998
	.quad	0x3fc5e8a2ec28b2a7              # double 0.17116200000000001
	.quad	0x3fec102de00d1b71              # double 0.87697499999999995
	.quad	0x3fd55cfaacd9e83e              # double 0.33379999999999999
	.quad	0x3fdcd9f0a1be2b49              # double 0.45080199999999998
	.quad	0x3fe8d2806af46aa1              # double 0.77569600000000005
	.quad	0x3fe3012dfd694ccb              # double 0.59389400000000003
	.quad	0x3fe914c660a20147              # double 0.78378599999999998
	.quad	0x3fc178e5c4eb56fc              # double 0.13650200000000001
	.quad	0x3fe9996312f4cf4a              # double 0.79997399999999996
	.quad	0x3fc6601bc98a222d              # double 0.17480799999999999
	.quad	0x3fe549f0e4da09cc              # double 0.66527599999999998
	.quad	0x3fed8c1333b96af0              # double 0.92334899999999998
	.quad	0x3fd5a133c1ce6c09              # double 0.33796399999999999
	.quad	0x3fee0d173fb7a5f4              # double 0.93909799999999998
	.quad	0x3fe69c6d1e108c3f              # double 0.70659499999999997
	.quad	0x3f9d67fd3f5b5fa2              # double 0.028716999999999999
	.quad	0x3fec5d377e1b8ed2              # double 0.88637900000000003
	.quad	0x3fd3641b328b6d87              # double 0.302985
	.quad	0x3fc36b5d462c343b              # double 0.15171399999999999
	.quad	0x3fa585dfa871a3b1              # double 0.042036999999999998
	.quad	0x3fe6e5c4eb56fb8f              # double 0.71554799999999996
	.quad	0x3fd7ab25b317efe1              # double 0.36982100000000001
	.quad	0x3fc0848beb5b2d4d              # double 0.12904499999999999
	.quad	0x3fe13d5fdcdf6988              # double 0.53874200000000005
	.quad	0x3fe896744b2b777d              # double 0.76836599999999999
	.quad	0x3fbcd8ba40d90e24              # double 0.112682
	.quad	0x3fe478a0902de00d              # double 0.63972499999999999
	.quad	0x3fee40767d34df05              # double 0.94536900000000001
	.quad	0x3fd7cab3edd8b60f              # double 0.37174699999999999
	.quad	0x3fde333764f11b61              # double 0.47187600000000002
	.quad	0x3fed5612c6ac215c              # double 0.91675700000000004
	.quad	0x3fdf0d1b71758e22              # double 0.48517500000000002
	.quad	0x3fef4938583621fb              # double 0.977688
	.quad	0x3fde3ffef39085f5              # double 0.47265600000000002
	.quad	0x3fc0556d19dece57              # double 0.127607
	.quad	0x3fd2df0d413122b8              # double 0.29486400000000001
	.quad	0x3fe49248d7e02646              # double 0.64285700000000001
	.quad	0x3fd7e66cb10342ab              # double 0.37343900000000002
	.quad	0x3feb9f05ea24cc68              # double 0.86316199999999998
	.quad	0x3fe85dfa871a3b15              # double 0.76147200000000004
	.quad	0x3fc9b7952d234eba              # double 0.20091500000000001
	.quad	0x3fcf496aad1d041d              # double 0.24442800000000001
	.quad	0x3fed3e3193f6c26a              # double 0.91384200000000004
	.quad	0x3fd0348f53c579f2              # double 0.25320799999999999
	.quad	0x3f9e07e5a78f25a2              # double 0.029326999999999999
	.quad	0x3fb9f70de8f6ceff              # double 0.101426
	.quad	0x3fe32f2734f82f51              # double 0.59950599999999998
	.quad	0x3fe099bf5946c333              # double 0.51876800000000001
	.quad	0x3fca71ac14c660a2              # double 0.206594
	.quad	0x3fb1336deb95e5b0              # double 0.067191000000000001
	.quad	0x3fc1efe931876189              # double 0.14013400000000001
	.quad	0x3fdc30df9bdc69f9              # double 0.44048300000000001
	.quad	0x3fd8897e996312f5              # double 0.38339200000000001
	.quad	0x3fc6cca2db61bb06              # double 0.17812
	.quad	0x3fd60c0ad03d9a95              # double 0.34448499999999999
	.quad	0x3fc465c70435efa6              # double 0.159356
	.quad	0x3fdf4b7b28954a80              # double 0.48898200000000003
	.quad	0x3fe82cc92146a1a5              # double 0.755467
	.quad	0x3fc054a3c64345d0              # double 0.127583
	.quad	0x3fe3c5d41fa76534              # double 0.61789899999999998
	.quad	0x3fedd19bd4067cf2              # double 0.93183700000000003
	.quad	0x3fd2e1eb4202d9cf              # double 0.295039
	.quad	0x3fe850aaa7ded6bb              # double 0.75984700000000005
	.quad	0x3fd090257c914b16              # double 0.25879799999999997
	.quad	0x3fe28956c0d6f545              # double 0.57926500000000003
	.quad	0x3fe4234eb9a176de              # double 0.62931000000000004
	.quad	0x3fe20e10cf5b1c86              # double 0.56421699999999997
	.quad	0x3fda3660e51d25ab              # double 0.40956900000000002
	.quad	0x3fd0be6e653868fd              # double 0.26162299999999999
	.quad	0x3fb279357603925c              # double 0.072162000000000004
	.quad	0x3fafc9363f572de4              # double 0.062081999999999998
	.quad	0x3fce8a71de69ad43              # double 0.23860000000000001
	.quad	0x3feeca3c64345cff              # double 0.96218700000000001
	.quad	0x3fe4a120e1f7d73d              # double 0.64466900000000005
	.quad	0x3fddcaff6d330942              # double 0.46551500000000001
	.quad	0x3fda52bd3c361134              # double 0.4113
	.quad	0x3fb79eadd590c0ad              # double 0.092265
	.quad	0x3fe25d9c27e95315              # double 0.57392699999999996
	.quad	0x3fec9cb252ce032e              # double 0.89412800000000003
	.quad	0x3fe14a0c282c6ef4              # double 0.54028900000000002
	.quad	0x3fe6ca05dd8f92b0              # double 0.71216100000000004
	.quad	0x3fe96bbdbe3c1052              # double 0.79440200000000005
	.quad	0x3fd03a2df9378ee3              # double 0.25355100000000003
	.quad	0x3fdf57de0d66f0d0              # double 0.48973800000000001
	.quad	0x3fc6e4d1a6506141              # double 0.17885799999999999
	.quad	0x3feab749adc8fb87              # double 0.834874
	.quad	0x3feecf4c6e6d9be5              # double 0.96280500000000002
	.quad	0x3fc22b9d3cbc48f1              # double 0.141956
	.quad	0x3fcbebd09e12a51e              # double 0.21813399999999999
	.quad	0x3fec5bea0ba1f4b2              # double 0.88622000000000001
	.quad	0x3fd905b39e279dd4              # double 0.39097300000000001
	.quad	0x3fe14e6c093d9664              # double 0.54082300000000005
	.quad	0x3fdc62a1b5c7cd8a              # double 0.44352000000000003
	.quad	0x3fe1c68ec52a411c              # double 0.55548799999999998
	.quad	0x3fe8e4649906cca3              # double 0.77788000000000002
	.quad	0x3fd11c3265add9c2              # double 0.26734599999999997
	.quad	0x3fc1e3c968943e10              # double 0.139764
	.quad	0x3fdcaa715831f03d              # double 0.447903
	.quad	0x3fe76ae9ee45c359              # double 0.73180100000000003
	.quad	0x3fd90407cc7d1bb5              # double 0.39087100000000002
	.quad	0x3fe626c3b927d45a              # double 0.69223199999999996
	.quad	0x3fc7214f0520d131              # double 0.180704
	.quad	0x3fe042dadb8348f5              # double 0.50816099999999997
	.quad	0x3fec006290eed02d              # double 0.87504700000000002
	.quad	0x3fe186bdf4c2b51c              # double 0.54769800000000002
	.quad	0x3fe0c23b7952d235              # double 0.52371000000000001
	.quad	0x3fd3d25247cb70ac              # double 0.30971199999999999
	.quad	0x3fed5a76d97b30f9              # double 0.91729300000000003
	.quad	0x3fbbaacd9e83e426              # double 0.108075
	.quad	0x3fc4d6a161e4f766              # double 0.1628
	.quad	0x3feff01d9f4d37c1              # double 0.99806099999999997
	.quad	0x3feaaa25d8d79d0a              # double 0.83326999999999996
	.quad	0x3fd94aada33bd9cb              # double 0.39518300000000001
	.quad	0x3feefc17a89331a1              # double 0.96827300000000005
	.quad	0x3fe556605ee568a5              # double 0.666794
	.quad	0x3fe68be7296f6513              # double 0.70457800000000004
	.quad	0x3fe3106466b1e5c1              # double 0.59575100000000003
	.quad	0x3fac4d65e4606749              # double 0.055278000000000001
	.quad	0x3fd4ffc115df6556              # double 0.32811000000000001
	.quad	0x3feb729d40ee06d9              # double 0.85774099999999998
	.quad	0x3feb5336deb95e5b              # double 0.853908
	.quad	0x3fe1a9dc725c3dee              # double 0.55198499999999995
	.quad	0x3feaca515ce9e5e2              # double 0.83719699999999997
	.quad	0x3fee28d434a01abd              # double 0.94248399999999999
	.quad	0x3fe04f67b1c0010c              # double 0.50969299999999995
	.quad	0x3fec4bf0995aaf79              # double 0.88427
	.quad	0x3fe0489f40a2877f              # double 0.50886500000000001
	.quad	0x3fd62fad6cb53501              # double 0.34666000000000002
	.quad	0x3fe0823422467be5              # double 0.51589399999999996
	.quad	0x3fbfa6266fd651b1              # double 0.123629
	.quad	0x3fe6dc209246bf01              # double 0.71437099999999998
	.quad	0x3fc13de1e2de8709              # double 0.13470099999999999
	.quad	0x3fd3a9a8049667b6              # double 0.30723
	.quad	0x3fb89f94855da273              # double 0.096185000000000007
	.quad	0x3fd7ccd962068555              # double 0.37187799999999999
	.quad	0x3fd7d76683c297c0              # double 0.37252200000000002
	.quad	0x3fe35256798958da              # double 0.60380100000000003
	.quad	0x3feaa0168b5cbff4              # double 0.83204199999999994
	.quad	0x3fd7f6db940fecdd              # double 0.374442
	.quad	0x3fc7ebd9018e7579              # double 0.186885
	.quad	0x3feebdfb0d51f81a              # double 0.96069099999999996
	.quad	0x3fe073a57eaa2a0b              # double 0.51411700000000005
	.quad	0x3fe570867ad8e432              # double 0.66998599999999997
	.quad	0x3fef48a159817b96              # double 0.97761600000000004
	.quad	0x3fea8aa21a719b4e              # double 0.82942300000000002
	.quad	0x3fdd0b524399b2c4              # double 0.453816
	.quad	0x3fc830121682f944              # double 0.188967
	.quad	0x3fe865109070fbec              # double 0.76233700000000004
	.quad	0x3fac443914f483cb              # double 0.055208
	.quad	0x3fe2b163baba7b91              # double 0.58415399999999995
	.quad	0x3fd55b1422ccb3a2              # double 0.33368399999999998
	.quad	0x3fbb59ccfaeff5c7              # double 0.106839
	.quad	0x3fd425f202107b78              # double 0.31481599999999998
	.quad	0x3fe67625204af923              # double 0.70192200000000005
	.quad	0x3fe8ef284167a95d              # double 0.77919400000000005
	.quad	0x3fd8d3458cd20afa              # double 0.38789499999999999
	.quad	0x3fe854da4ce8101f              # double 0.76035799999999998
	.quad	0x3fe6c98e53eb399f              # double 0.71210399999999996
	.quad	0x3fe2141a6937d1fe              # double 0.56495399999999996
	.quad	0x3fe09ea140570825              # double 0.51936400000000005
	.quad	0x3fe8fdd872f33ca3              # double 0.78098699999999999
	.quad	0x3fea6dfc5cdd50a9              # double 0.82592600000000005
	.quad	0x3fb95e39713ad5bf              # double 0.099094000000000002
	.quad	0x3feef156191148fe              # double 0.96696000000000004
	.quad	0x3fee230984e3ffef              # double 0.94177699999999998
	.quad	0x3fe219fc2a8869c6              # double 0.56567199999999995
	.quad	0x3fdb0bed740c4157              # double 0.42260300000000001
	.quad	0x3fecf446f9b994e2              # double 0.90481900000000004
	.quad	0x3fe577a7008a697b              # double 0.67085600000000001
	.quad	0x3fe5aa66dbd72bcb              # double 0.67705099999999996
	.quad	0x3fc40296b3354c12              # double 0.156329
	.quad	0x3fe7aa454de7ea60              # double 0.73953500000000005
	.quad	0x3fd9e6256366d7a5              # double 0.40467199999999998
	.quad	0x3fb9475a31a4bdba              # double 0.098744999999999999
	.quad	0x3fed59ab6d00b45b              # double 0.91719600000000001
	.quad	0x3fe10285ec3dab5c              # double 0.53155799999999997
	.quad	0x3fe090fd7e45803d              # double 0.51769900000000002
	.quad	0x3fe9700cd855970b              # double 0.79492799999999997
	.quad	0x3faf7121ab4b72c5              # double 0.061409999999999999
	.quad	0x3fc786013660e51d              # double 0.183777
	.quad	0x3fc98c0053e2d624              # double 0.19958500000000001
	.quad	0x3fd880064a9cdc44              # double 0.38281399999999999
	.quad	0x3fd42ee84ad794a7              # double 0.315363
	.quad	0x3fc2cf312b1b36bd              # double 0.146948
	.quad	0x3fe73e3193f6c26a              # double 0.72634200000000004
	.quad	0x3fd7c226809d4952              # double 0.37122500000000003
	.quad	0x3fefb90c9107faa0              # double 0.99133899999999997
	.quad	0x3fcde18efbb0e5e6              # double 0.23344599999999999
	.quad	0x3fe07ccc03793144              # double 0.51523399999999997
	.quad	0x3fe7a413db7f1737              # double 0.73877899999999996
	.quad	0x3fe90f3882278d0d              # double 0.78310800000000003
	.quad	0x3fe6acc92146a1a5              # double 0.708592
	.quad	0x3fc4cbea4ebdd335              # double 0.16247300000000001
	.quad	0x3fdafe974a3400b9              # double 0.42178900000000003
	.quad	0x3fec0e4da09cc31a              # double 0.87674600000000003
	.quad	0x3fe58fc71d606317              # double 0.67380099999999998
	.quad	0x3fcd327243137b07              # double 0.228102
	.quad	0x3fed24bba12b5e53              # double 0.91073400000000004
	.quad	0x3fd024638c975297              # double 0.25222099999999997
	.quad	0x3fd0791819d2391d              # double 0.25739099999999998
	.quad	0x3fc65f9591cd1c7e              # double 0.174792
	.quad	0x3fc55cb790fb6567              # double 0.16689200000000001
	.quad	0x3fd8e518f3eccc47              # double 0.38898300000000002
	.quad	0x3fe5da836eb4e981              # double 0.68292399999999998
	.quad	0x3fe31a3b14a90471              # double 0.59695200000000004
	.quad	0x3fe9c4b09e98dcdb              # double 0.80525999999999998
	.quad	0x3fe5583c6c97d8cf              # double 0.66702099999999998
	.quad	0x3fd0da8bd230b9dc              # double 0.26333899999999999
	.quad	0x3fdf2e6ea8544780              # double 0.487209
	.quad	0x3fe088aac96cc5fc              # double 0.516683
	.quad	0x3fcf8ba40d90e23b              # double 0.246449
	.quad	0x3fe6563a9f383f0c              # double 0.69802600000000004
	.quad	0x3feb870b8cfbfc65              # double 0.86023499999999997
	.quad	0x3fe51971c10d7bea              # double 0.65935600000000005
	.quad	0x3fefcb2314013ec4              # double 0.99354699999999995
	.quad	0x3fd5723ee1bd1eda              # double 0.33509800000000001
	.quad	0x3fedea6a012599ed              # double 0.93486499999999995
	.quad	0x3f90828c36da87a0              # double 0.016122999999999998
	.quad	0x3febdd249e44fa05              # double 0.87074499999999999
	.quad	0x3fb97efe0ce0b913              # double 0.099594000000000002
	.quad	0x3fe84f3fd933e35c              # double 0.75967399999999996
	.quad	0x3fd3056c508b32cf              # double 0.29720600000000003
	.quad	0x3fe182be8bc169c2              # double 0.54720999999999997
	.quad	0x3fdee3d1cc100e6b              # double 0.482655
	.quad	0x3feb4028e4fb97bb              # double 0.85158199999999995
	.quad	0x3fe00fd5cb790fb6              # double 0.50193299999999996
	.quad	0x3fab18548a9bcfd5              # double 0.052920000000000002
	.quad	0x3fef69185cee17a0              # double 0.98157899999999997
	.quad	0x3fd843201040bfe4              # double 0.37909700000000002
	.quad	0x3fdbce2d1f1cfbb9              # double 0.43445899999999998
	.quad	0x3fc0067cf1c3265b              # double 0.125198
	.quad	0x3feefe3d1cc100e7              # double 0.96853500000000003
	.quad	0x3fb6a18372e6a769              # double 0.088401999999999994
	.quad	0x3fcb2e9ccb7d4174              # double 0.21235999999999999
	.quad	0x3fcb57928e0c9d9d              # double 0.21360999999999999
	.quad	0x3fc66bd6e8af8162              # double 0.17516599999999999
	.quad	0x3fdc977c88e79aae              # double 0.44674599999999998
	.quad	0x3fe8b64e054690de              # double 0.772254
	.quad	0x3fec1c4b90214ad3              # double 0.87845399999999996
	.quad	0x3fcd0abb44e50c5f              # double 0.22689000000000001
	.quad	0x3fe7fe3b03e20cd0              # double 0.74978400000000001
	.quad	0x3fd8f7d30ad46f58              # double 0.39012599999999997
	.quad	0x3fe0c8a9bcfd4bf1              # double 0.52449500000000004
	.quad	0x3fec1b4bb5e0f7fd              # double 0.878332
	.quad	0x3feb02a12f901084              # double 0.84407100000000001
	.quad	0x3fd212d77318fc50              # double 0.28239999999999998
	.quad	0x3fd685be1a826245              # double 0.35191299999999998
	.quad	0x3fef3da5119ce076              # double 0.976275
	.quad	0x3fc43ac0c62e4d1a              # double 0.15804299999999999
	.quad	0x3fdcea9a3d2d87f9              # double 0.45181900000000003
	.quad	0x3faca85caafbc1ad              # double 0.055972000000000001
	.quad	0x3fe8f3d3a1d323ff              # double 0.77976400000000001
	.quad	0x3feb07852f7f498c              # double 0.84466799999999997
	.quad	0x3fd3c5f7c6759ab7              # double 0.30895800000000001
	.quad	0x3fef4b039ef0f16f              # double 0.97790699999999997
	.quad	0x3feb80e496ededaf              # double 0.85948400000000003
	.quad	0x3fd3b5b2d4d4024b              # double 0.30796499999999999
	.quad	0x3fa56494d50ebaae              # double 0.041783000000000001
	.quad	0x3fe09b97353b4b30              # double 0.51899300000000004
	.quad	0x3fc57ec3547e0696              # double 0.167931
	.quad	0x3feb022ff08893b8              # double 0.84401700000000002
	.quad	0x3fe645132f87ad08              # double 0.695932
	.quad	0x3fee28e0c9d9d346              # double 0.94249000000000005
	.quad	0x3f989d27c3936827              # double 0.024036999999999999
	.quad	0x3f7a07b352a84381              # double 0.0063550000000000004
	.quad	0x3fed94445aa2e3c5              # double 0.92434899999999998
	.quad	0x3fd385d31337eb29              # double 0.30504300000000001
	.quad	0x3fa6e37154003255              # double 0.044704000000000001
	.quad	0x3fb0ed2cbea4ebdd              # double 0.066118999999999997
	.quad	0x3fe770ac3a860dcc              # double 0.73250400000000004
	.quad	0x3febb868fd199bb2              # double 0.86626099999999995
	.quad	0x3fea84a72ead9275              # double 0.82869300000000001
	.quad	0x3fe27774aba38759              # double 0.57708199999999998
	.quad	0x3fdbb9baa1511e00              # double 0.43321100000000001
	.quad	0x3febb14445aa2e3c              # double 0.86538899999999996
	.quad	0x3fe39c6b05319829              # double 0.61284400000000006
	.quad	0x3fce1f31f46ed246              # double 0.23532700000000001
	.quad	0x3fbba81dc0db2703              # double 0.10803400000000001
	.quad	0x3fbf4091c087442c              # double 0.12207899999999999
	.quad	0x3fcd07d0aed99cbf              # double 0.226801
	.quad	0x3fe76f826edaa92e              # double 0.73236199999999996
	.quad	0x3fedcfa8b4bf8fcd              # double 0.93159899999999995
	.quad	0x3fe0756c93a71151              # double 0.51433399999999996
	.quad	0x3fdd4aa53fc00970              # double 0.457681
	.quad	0x3fe430ea18372e6a              # double 0.63097099999999995
	.quad	0x3fd42b3892ee84ad              # double 0.31513799999999997
	.quad	0x3fe0ec69b5a63f9a              # double 0.52885899999999997
	.quad	0x3fad1676640a6b94              # double 0.056812000000000001
	.quad	0x3faf574f722e1ac5              # double 0.061212999999999997
	.quad	0x3fee27bd48cb4aed              # double 0.94235100000000005
	.quad	0x3fec176bc1eff9f8              # double 0.87785899999999994
	.quad	0x3fd10b780346dc5d              # double 0.26632499999999998
	.quad	0x3fc06adb402d16b9              # double 0.12826099999999999
	.quad	0x3fe4c6455eaee200              # double 0.64920299999999997
	.quad	0x3fdb0c1333b96af0              # double 0.42261199999999999
	.quad	0x3fd4f1172ef0ae53              # double 0.32721499999999998
	.quad	0x3fe5970b49e01de2              # double 0.67468799999999995
	.quad	0x3fe0f5a964e8b7e5              # double 0.52998800000000001
	.quad	0x3fbd5bab21815a08              # double 0.11468
	.quad	0x3fdb23f24d8fd5cb              # double 0.42406899999999997
	.quad	0x3fe4c42c7fbacb43              # double 0.64894700000000005
	.quad	0x3fc5491f2dc2b0ea              # double 0.166294
	.quad	0x3fec20a958537e2c              # double 0.87898699999999996
	.quad	0x3fc44c8366516db1              # double 0.158585
	.quad	0x3fe0cadddf43c7d6              # double 0.52476400000000001
	.quad	0x3fdf2a497fa5d28d              # double 0.486956
	.quad	0x3fd4ee807bbb6241              # double 0.32705699999999999
	.quad	0x3fcde1869835158c              # double 0.23344500000000001
	.quad	0x3fec1b8aa00192a7              # double 0.87836199999999998
	.quad	0x3fed8201cd5f99c4              # double 0.92212000000000005
	.quad	0x3fede5753a3ec02f              # double 0.93425999999999998
	.quad	0x3fe56fc58ab92c06              # double 0.66989399999999999
	.quad	0x3fc4defc7a398202              # double 0.16305500000000001
	.quad	0x3fd84b3c3e74afd5              # double 0.37959199999999998
	.quad	0x3fe340f88333fc87              # double 0.60168100000000002
	.quad	0x3f892fb19e731d2e              # double 0.012298
	.quad	0x3fa6c2699c7bcc29              # double 0.044451999999999998
	.quad	0x3fd962e90364388f              # double 0.39666200000000001
	.quad	0x3fac2fc69728a611              # double 0.055051999999999997
	.quad	0x3fed9e3c968943e1              # double 0.925566
	.quad	0x3fee5e310dbf0564              # double 0.948998
	.quad	0x3fee3ddb9841aac5              # double 0.94505099999999997
	.quad	0x3fe388d6d3b6cbda              # double 0.61045400000000005
	.quad	0x3fa133a0407cc7d2              # double 0.033597000000000002
	.quad	0x3fd94b945308bb90              # double 0.39523799999999998
	.quad	0x3fe3cc1871e6cd29              # double 0.61866399999999999
	.quad	0x3febfb480a5accd5              # double 0.87442399999999998
	.quad	0x3feb092ccf6be37e              # double 0.84487000000000001
	.quad	0x3fda56eefa1e3eaf              # double 0.41155599999999998
	.quad	0x3fef3220791c4b90              # double 0.97486899999999999
	.quad	0x3fb597b30f8c64fe              # double 0.084346000000000004
	.quad	0x3fb6d86ec17ebaf1              # double 0.08924
	.quad	0x3fe6f394b7b28955              # double 0.71723400000000004
	.quad	0x3fd05c6c11a11234              # double 0.25564100000000001
	.quad	0x3fc56323bbc6eb0b              # double 0.16708799999999999
	.quad	0x3feb3e07a28bb0a3              # double 0.85132200000000002
	.quad	0x3fdc52c9d16fc9bc              # double 0.44255299999999997
	.quad	0x3feac2bf9830e3ce              # double 0.83627300000000004
	.quad	0x3fe49aaa3ad18d26              # double 0.64388000000000001
	.quad	0x3fe0b884406c00da              # double 0.52252399999999999
	.quad	0x3fac26138fffbce4              # double 0.054977999999999999
	.quad	0x3fd39ff0cbaf965b              # double 0.30663699999999999
	.quad	0x3fe2dfaca3619978              # double 0.58980399999999999
	.quad	0x3fbd819d2391d580              # double 0.115259
	.quad	0x3fed76f4be835dee              # double 0.92077100000000001
	.quad	0x3fad0e3476295209              # double 0.056749000000000001
	.quad	0x3fe956ece13f4a99              # double 0.79186100000000004
	.quad	0x3fec0079a2834d27              # double 0.875058
	.quad	0x3fd02bcf91a32b13              # double 0.25267400000000001
	.quad	0x3fe6e0e30446b69e              # double 0.71495200000000003
	.quad	0x3fd192d98bf7f067              # double 0.274588
	.quad	0x3f82e514c22ee419              # double 0.0092259999999999998
	.quad	0x3fd08d6d3b6cbd98              # double 0.25863199999999997
	.quad	0x3fdcca5375c8d9f9              # double 0.449849
	.quad	0x3fb056f75d9a0f0a              # double 0.063826999999999995
	.quad	0x3fdf7cb70ac3a861              # double 0.49198700000000001
	.quad	0x3fef3fd71b046845              # double 0.97654300000000004
	.quad	0x3fbe72324c836651              # double 0.11892999999999999
	.quad	0x3fd59be4cd749279              # double 0.33764
	.quad	0x3fd08e3ac0c62e4d              # double 0.25868099999999999
	.quad	0x3fd587c200c0f020              # double 0.33641100000000002
	.quad	0x3fd16eefa1e3eaf7              # double 0.27239600000000003
	.quad	0x3fc8cf0739b024f6              # double 0.19381799999999999
	.quad	0x3fcd48a159817b96              # double 0.22877900000000001
	.quad	0x3fe4e06fac6045bb              # double 0.652397
	.quad	0x3fdd428d434a01ac              # double 0.45718700000000001
	.quad	0x3fda1deacc92146a              # double 0.40807599999999999
	.quad	0x3fd397cc39ffd60f              # double 0.30614000000000002
	.quad	0x3fe95996744b2b77              # double 0.79218599999999995
	.quad	0x3fac67168f8e7ddd              # double 0.055474000000000002
	.quad	0x3fe4ee136e71cda3              # double 0.65406200000000003
	.quad	0x3fd6b31c219eb639              # double 0.354682
	.quad	0x3fe55b445ed4a1ad              # double 0.66739099999999996
	.quad	0x3fc74477ff151e75              # double 0.18177699999999999
	.quad	0x3fccfe36d22424a2              # double 0.22650799999999999
	.quad	0x3fefdcb9a9da597d              # double 0.99569399999999996
	.quad	0x3fedb1e7d9988d2a              # double 0.92796699999999999
	.quad	0x3fed71348b220792              # double 0.92006900000000003
	.quad	0x3fea85985ad538ac              # double 0.82880799999999998
	.quad	0x3fe253e0bd44998d              # double 0.572739
	.quad	0x3fec2c3eb7cbb3c8              # double 0.88040099999999999
	.quad	0x3fea81882adc4c9d              # double 0.82831200000000005
	.quad	0x3fe0c37824d4cb9f              # double 0.52386100000000002
	.quad	0x3fdbe1975f2cb641              # double 0.43564399999999998
	.quad	0x3fead3cbc48f10aa              # double 0.83835400000000004
	.quad	0x3fe2d234eb9a176e              # double 0.58816000000000002
	.quad	0x3fdc17a89331a08c              # double 0.438944
	.quad	0x3fe70a43bb40b34e              # double 0.72000299999999995
	.quad	0x3fe58e7bc3c5bd0e              # double 0.67364299999999999
	.quad	0x3fd17e77d523b363              # double 0.27334399999999998
	.quad	0x3fac4cbe1eb4202e              # double 0.055273000000000003
	.quad	0x3fdfcee5abc0e38a              # double 0.49700299999999997
	.quad	0x3febd6f112fd32c6              # double 0.86998799999999998
	.quad	0x3fe5a8848387df5d              # double 0.67682100000000001
	.quad	0x3fe8a2d0e5604189              # double 0.76987499999999998
	.quad	0x3f2fd9ba1b1960fa              # double 2.43E-4
	.quad	0x3fdd7546d3f9e7b8              # double 0.460283
	.quad	0x3fcce28ed5f138bd              # double 0.225664
	.quad	0x3fe7659d12cadddf              # double 0.73115399999999997
	.quad	0x3fe9febaf102363b              # double 0.81234499999999998
	.quad	0x3fe2c5953586ca8a              # double 0.586619
	.quad	0x3fe8e56473471f79              # double 0.77800199999999997
	.quad	0x3fc31f57b41bfbdf              # double 0.149394
	.quad	0x3fe06cdaf4adbc66              # double 0.51328799999999997
	.quad	0x3fe9793ff25e56cd              # double 0.79605099999999995
	.quad	0x3fb5564b662fdfc2              # double 0.083348000000000005
	.quad	0x3fe780d3cff64cf9              # double 0.73447600000000002
	.quad	0x3fed6785b5b70692              # double 0.91888700000000001
	.quad	0x3fc1eacc92146a1a              # double 0.13997799999999999
	.quad	0x3fe96fdc9c4da900              # double 0.79490499999999997
	.quad	0x3fe8ec15d2d01c0d              # double 0.77881900000000004
	.quad	0x3fe2fb139c94f69d              # double 0.59314900000000004
	.quad	0x3fe1fd0f1f57b41c              # double 0.562141
	.quad	0x3fd8ebe1650a45d4              # double 0.38939699999999999
	.quad	0x3fb6398201cd5f9a              # double 0.086815000000000003
	.quad	0x3fcdacbc8c0ce91d              # double 0.23183400000000001
	.quad	0x3fdff6f4be835dee              # double 0.499448
	.quad	0x3fe217720c8cd63d              # double 0.56536200000000003
	.quad	0x3fe478bdec5f394b              # double 0.63973899999999995
	.quad	0x3feb137f38c5436c              # double 0.84613000000000004
	.quad	0x3fd73f9e7b80a9df              # double 0.36325800000000003
	.quad	0x3fe4ba3ca7503b82              # double 0.64773400000000003
	.quad	0x3fe8f55ffe6d58c9              # double 0.77995300000000001
	.quad	0x3fef039ef0f16f44              # double 0.96919200000000005
	.quad	0x3febe236c15d2d02              # double 0.87136400000000003
	.quad	0x3fe1dca29845dc83              # double 0.55818299999999998
	.quad	0x3fd084ad794a6eb9              # double 0.25809799999999999
	.quad	0x3fe29aeb3dd11be7              # double 0.58141100000000001
	.quad	0x3fd45c13fd0d0679              # double 0.31812000000000001
	.quad	0x3fc59791819d2392              # double 0.168688
	.quad	0x3fd7cdb7ae5796c0              # double 0.37193100000000001
	.quad	0x3fc363fdd65a1449              # double 0.15148900000000001
	.quad	0x3fb3ebbfd71b0468              # double 0.077815999999999996
	.quad	0x3f82f23033a4723b              # double 0.0092510000000000005
	.quad	0x3fe2591eeaa6d267              # double 0.57337899999999997
	.quad	0x3fe22396073de1e3              # double 0.56684400000000001
	.quad	0x3fc15c209246bf01              # double 0.13562399999999999
	.quad	0x3fe1edbb59ddc1e8              # double 0.56027000000000005
	.quad	0x3fe7944028e4fb98              # double 0.73684700000000003
	.quad	0x3fc51cb039ef0f17              # double 0.164938
	.quad	0x3feccc9c90c4dec2              # double 0.89997700000000003
	.quad	0x3fd33365881a1555              # double 0.300012
	.quad	0x3fe844934267839d              # double 0.75837100000000002
	.quad	0x3fcec8e68e3ef284              # double 0.240506
	.quad	0x3fee5cd0bb6ed677              # double 0.94882999999999995
	.quad	0x3fe85d63886594af              # double 0.76139999999999997
	.quad	0x3fee129888f861a6              # double 0.93976999999999999
	.quad	0x3fb71bac2df0d413              # double 0.090265999999999999
	.quad	0x3fd9768dfbd6a594              # double 0.39786100000000002
	.quad	0x3fd541700cd85597              # double 0.332119
	.quad	0x3fcf48ba83f4eca7              # double 0.24440700000000001
	.quad	0x3feaf540895d0b74              # double 0.84243800000000002
	.quad	0x3fc43f034b0e1b4c              # double 0.15817300000000001
	.quad	0x3fd9a95c853c1483              # double 0.40096199999999999
	.quad	0x3fc7474107314ca9              # double 0.181862
	.quad	0x3fe160828c36da88              # double 0.54303100000000004
	.quad	0x3fd8940fecdd0d8d              # double 0.38403700000000002
	.quad	0x3fe887fed20296b3              # double 0.76660099999999998
	.quad	0x3fe1c0d2c386d2ed              # double 0.55478799999999995
	.quad	0x3fe5a1ad6451b930              # double 0.67598599999999998
	.quad	0x3fdcd1287c200c0f              # double 0.450266
	.quad	0x3fc21d8622c45027              # double 0.14152600000000001
	.quad	0x3fa48f96e158750c              # double 0.040157999999999999
	.quad	0x3fe7fa97e132b55f              # double 0.74934000000000001
	.quad	0x3fe7716b11c6d1e1              # double 0.732595
	.quad	0x3fed240b780346dc              # double 0.91064999999999995
	.quad	0x3fe0907314ca9260              # double 0.51763300000000001
	.quad	0x3f84d4024b33daf9              # double 0.01017
	.quad	0x3fc9ea3df6db9410              # double 0.202461
	.quad	0x3fda4e4430b178b3              # double 0.41102699999999998
	.quad	0x3fdc7da61e0c5a81              # double 0.44516899999999998
	.quad	0x3fd8fa2f05a708ee              # double 0.39027000000000001
	.quad	0x3fe225accd53048a              # double 0.56709900000000002
	.quad	0x3fe641a261bf37b9              # double 0.69551200000000002
	.quad	0x3fd53ba775fb2ee0              # double 0.33176600000000001
	.quad	0x3faa79dd3bafd977              # double 0.051711
	.quad	0x3fe96e696a26e547              # double 0.79472799999999999
	.quad	0x3fb21f5be5d9e40d              # double 0.070791000000000007
	.quad	0x3feb41c3efae7925              # double 0.85177800000000004
	.quad	0x3fbdbbadc0980b24              # double 0.116145
	.quad	0x3fb499f1ae2da555              # double 0.080474000000000004
	.quad	0x3fe552ef911cf356              # double 0.66637400000000002
	.quad	0x3fc895e9e1b089a0              # double 0.192075
	.quad	0x3fd72c9d16fc9bc7              # double 0.36209799999999998
	.quad	0x3feec0010c6f7a0b              # double 0.96093799999999995
	.quad	0x3fc471b4784230fd              # double 0.15972
	.quad	0x3fd78533b1077469              # double 0.36750500000000003
	.quad	0x3fe0c4d22c881e47              # double 0.52402599999999999
	.quad	0x3fda2fc2656abde4              # double 0.409165
	.quad	0x3fde4be40420f6f1              # double 0.47338200000000002
	.quad	0x3fe39fd9ba1b1961              # double 0.613263
	.quad	0x3feb5e0d66f0cfe1              # double 0.85523099999999996
	.quad	0x3fc9d48cb4aec8d6              # double 0.20179900000000001
	.quad	0x3fdd9691a75cd0bb              # double 0.46231499999999998
	.quad	0x3feb00f345069a4e              # double 0.843866
	.quad	0x3fef205143bf7271              # double 0.97269499999999997
	.quad	0x3f5b2a27f1b69121              # double 0.001658
	.quad	0x3fc6d6238da3c212              # double 0.17841000000000001
	.quad	0x3fd6d18090b417ca              # double 0.35653699999999999
	.quad	0x3f7273d5bab21816              # double 0.0045050000000000003
	.quad	0x3fd62d4d4024b33e              # double 0.34651500000000002
	.quad	0x3feeeb5b2d4d4025              # double 0.96623000000000003
	.quad	0x3fecc2e126202539              # double 0.89878899999999995
	.quad	0x3fefd1d4738a3b58              # double 0.99436400000000002
	.quad	0x3fb2f5dbb9cf9a07              # double 0.074064000000000005
	.quad	0x3fec8b08dd1e53a8              # double 0.89197199999999999
	.quad	0x3fc7d16fc9bc7714              # double 0.18607899999999999
	.quad	0x3fc1899bf5946c33              # double 0.13701199999999999
	.quad	0x3fd073b85e80bed7              # double 0.25706299999999999
	.quad	0x3fd68cf398e97072              # double 0.35235300000000003
	.quad	0x3fef3a5e353f7cee              # double 0.97587500000000005
	.quad	0x3fec12839042d8c3              # double 0.87726000000000004
	.quad	0x3fcc121ee675147f              # double 0.219303
	.quad	0x3fe9b76d5497310a              # double 0.80364100000000005
	.quad	0x3feb01f10667f90e              # double 0.84398700000000004
	.quad	0x3fecf42bb6672fba              # double 0.904806
	.quad	0x3feb8bfe3b03e20d              # double 0.86083900000000002
	.quad	0x3fe21656eefa1e3f              # double 0.56522700000000003
	.quad	0x3fdcc97d8cf398e9              # double 0.44979799999999998
	.quad	0x3fe93ef8ceb356da              # double 0.788937
	.quad	0x3fe03a3ec02f2f98              # double 0.50710999999999995
	.quad	0x3fc7e01de2691644              # double 0.186527
	.quad	0x3fdebb05faebc409              # double 0.48016500000000001
	.quad	0x3fe89ce4a7b4e54f              # double 0.76915199999999995
	.quad	0x3fec3c83a96d4c34              # double 0.88238700000000003
	.quad	0x3fee3c48f10a99b7              # double 0.944859
	.quad	0x3fdcefe4ffc9795b              # double 0.45214199999999999
	.quad	0x3fea41fea8112ba1              # double 0.82055599999999995
	.quad	0x3fd021ea35935fc4              # double 0.25207000000000002
	.quad	0x3fe13f91e646f156              # double 0.53900999999999999
	.quad	0x3fd5531550ca1cef              # double 0.33319599999999999
	.quad	0x3fd591ab8e8ea39c              # double 0.33701599999999998
	.quad	0x3fda05814940bbb2              # double 0.406586
	.quad	0x3fd259210385c67e              # double 0.28669
	.quad	0x3fa5938151a43782              # double 0.042140999999999998
	.quad	0x3fe6641700cd8559              # double 0.69971799999999995
	.quad	0x3fd3fa22706d5065              # double 0.31214199999999998
	.quad	0x3fadfdef8487b99d              # double 0.058577999999999998
	.quad	0x3fd4c87980f55de6              # double 0.32473600000000002
	.quad	0x3fe7f59ccfaeff5c              # double 0.74873199999999995
	.quad	0x3fecc9539b888723              # double 0.89957600000000004
	.quad	0x3fef44e0daa0cae6              # double 0.97715799999999997
	.quad	0x3fde510d38cda6e7              # double 0.47369699999999998
	.quad	0x3fd3e29f9ce8d973              # double 0.31070700000000001
	.quad	0x3fefc3fa2ad3e921              # double 0.99267300000000002
	.quad	0x3fab9e279dd3bafe              # double 0.053941000000000003
	.quad	0x3fdda6612839042e              # double 0.46328000000000003
	.quad	0x3fd3b3bb83cf2cf9              # double 0.30784499999999998
	.quad	0x3fd49acffa7eb6bf              # double 0.32194899999999999
	.quad	0x3fee945953586ca9              # double 0.95560900000000004
	.quad	0x3fdcae3a3a8e7147              # double 0.44813399999999998
	.quad	0x3fd0d2d44dca8e2e              # double 0.26286799999999999
	.quad	0x3fec1333b96af039              # double 0.87734400000000001
	.quad	0x3fd04f2f123c42a6              # double 0.25483299999999998
	.quad	0x3fc9991bc5586445              # double 0.199985
	.quad	0x3fd7ea3161a1db87              # double 0.37366899999999997
	.quad	0x3febdac68a936c59              # double 0.87045600000000001
	.quad	0x3fe5d0092ccf6be3              # double 0.68164499999999995
	.quad	0x3fee017763e4abe7              # double 0.93767900000000004
	.quad	0x3feed823422467be              # double 0.96388399999999996
	.quad	0x3fdd23b7952d234f              # double 0.45530500000000002
	.quad	0x3fc25ecc3e3193f7              # double 0.14351800000000001
	.quad	0x3fd73b927d45a5fc              # double 0.36301099999999997
	.quad	0x3fed38759253543b              # double 0.91314200000000001
	.quad	0x3fd6509bf9c62a1b              # double 0.34866999999999998
	.quad	0x3fb43211cb039ef1              # double 0.078889000000000001
	.quad	0x3fe508c8259e1f3a              # double 0.65732199999999996
	.quad	0x3fdf4bdfd2630ec3              # double 0.489006
	.quad	0x3fe81f14983d7907              # double 0.75379399999999996
	.quad	0x3fd13022dd7a99fa              # double 0.268563
	.quad	0x3fd8e6362a5e785b              # double 0.38905099999999998
	.quad	0x3fe032c625e99e95              # double 0.50619800000000004
	.quad	0x3feee440f2389720              # double 0.96536299999999997
	.quad	0x3fbe8c154c985f07              # double 0.119325
	.quad	0x3feabaeab7995ee1              # double 0.83531699999999998
	.quad	0x3fd24f8f8a4c1ebd              # double 0.28610600000000003
	.quad	0x3fd3f00abf76a2f5              # double 0.31152600000000003
	.quad	0x3fde3eccc46950fc              # double 0.47258299999999998
	.quad	0x3fdce8dda48b6523              # double 0.45171299999999998
	.quad	0x3fd351159c497742              # double 0.30182399999999998
	.quad	0x3fe848eabffcdab2              # double 0.75890100000000005
	.quad	0x3fd92c450268900c              # double 0.39332699999999998
	.quad	0x3fe0dd78811b1d93              # double 0.52703500000000003
	.quad	0x3fe2625a682b6284              # double 0.57450599999999996
	.quad	0x3fcd32df505d0fa6              # double 0.22811500000000001
	.quad	0x3fee74b407032980              # double 0.95174599999999998
	.quad	0x3fdc034b0e1b4bb6              # double 0.43770100000000001
	.quad	0x3fe45821294573a8              # double 0.63575800000000005
	.quad	0x3fd85b078d92fb1a              # double 0.38055600000000001
	.quad	0x3fe9a163fdd65a14              # double 0.80095099999999996
	.quad	0x3fedce0fc2eba27b              # double 0.93140400000000001
	.quad	0x3fe985f6ba0620ab              # double 0.79760299999999995
	.quad	0x3feeb4e11dbca969              # double 0.95957999999999998
	.quad	0x3fe19c94f69ca9ef              # double 0.55036399999999996
	.quad	0x3fdb55a7d24180d4              # double 0.42710300000000001
	.quad	0x3fec3358f2e05ccd              # double 0.88126800000000005
	.quad	0x3fc42aa19439de48              # double 0.157551
	.quad	0x3fd2bc3c5bd0e12f              # double 0.29273900000000003
	.quad	0x3fdb5e28aa433509              # double 0.427622
	.quad	0x3fe4f2ffd1dcd706              # double 0.65466299999999999
	.quad	0x3fe2a31a4bdba0a5              # double 0.58240999999999998
	.quad	0x3fe1761240746456              # double 0.54566300000000001
	.quad	0x3fc556c93a711516              # double 0.166711
	.quad	0x3fe4dfc3b4f61672              # double 0.65231499999999998
	.quad	0x3fed6c6de76427c8              # double 0.91948600000000003
	.quad	0x3fcd8b60f1b25f63              # double 0.23081599999999999
	.quad	0x3fe6cca4f440af1d              # double 0.71248100000000003
	.quad	0x3fe1dcd7060bb2bc              # double 0.55820800000000004
	.quad	0x3fee12ec6bce8534              # double 0.93981000000000003
	.quad	0x3febfa95c853c148              # double 0.87433899999999998
	.quad	0x3fda2031ceaf251c              # double 0.40821499999999999
	.quad	0x3fe9d69d30270f39              # double 0.80744800000000005
	.quad	0x3fdc0b178b370047              # double 0.43817699999999998
	.quad	0x3fea38e8ea39c51e              # double 0.81944700000000004
	.quad	0x3fe24d22c881e471              # double 0.57191599999999998
	.quad	0x3fb1adb8348f53c5              # double 0.069056999999999993
	.quad	0x3f86e7a311e85fd0              # double 0.011183999999999999
	.quad	0x3fd4ec56d5cfaace              # double 0.32692500000000002
	.quad	0x3fe6b97bb7308356              # double 0.71014200000000005
	.quad	0x3fe972799a1fd157              # double 0.79522400000000004
	.quad	0x3fd4631f8a0902de              # double 0.31855
	.quad	0x3fed31fab96f21f7              # double 0.91235100000000002
	.quad	0x3fcb3269df97aaac              # double 0.212476
	.quad	0x3fb7ec679cc74b84              # double 0.093451000000000006
	.quad	0x3fe33ef06b37867f              # double 0.601433
	.quad	0x3fe708d2a1f8e3ac              # double 0.71982699999999999
	.quad	0x3fa9cf355cd91eeb              # double 0.050409000000000002
	.quad	0x3fd93bc903ea704c              # double 0.39427400000000001
	.quad	0x3fce8aac96cc5fc0              # double 0.23860700000000001
	.quad	0x3fe4d347a5b0ff11              # double 0.65079100000000001
	.quad	0x3fe27e06961c3697              # double 0.57788399999999995
	.quad	0x3fda8ace24bba12b              # double 0.41472199999999998
	.quad	0x3fca4020817fc760              # double 0.20508199999999999
	.quad	0x3fe1070110a137f4              # double 0.53210500000000005
	.quad	0x3faf0d413122b7bb              # double 0.060648000000000001
	.quad	0x3fc22f0e0a84be40              # double 0.14206099999999999
	.quad	0x3fe11c23b7952d23              # double 0.53468499999999997
	.quad	0x3fead627bf61aa3f              # double 0.838642
	.quad	0x3f5c10d7be9856a3              # double 0.0017129999999999999
	.quad	0x3fc619c17225b74a              # double 0.17266100000000001
	.quad	0x3fb60a2014727dcc              # double 0.086092000000000002
	.quad	0x3feca087ca643cc0              # double 0.89459599999999995
	.quad	0x3fd0bb23571d1d47              # double 0.26142199999999999
	.quad	0x3fd44794ea077037              # double 0.31686900000000001
	.quad	0x3fd261565c2d2780              # double 0.28719099999999997
	.quad	0x3fc88d21bc126a66              # double 0.19180700000000001
	.quad	0x3fc9a4723aafff37              # double 0.20033100000000001
	.quad	0x3fbdd388a8b08dd2              # double 0.116509
	.quad	0x3fe4cf69ca9ef523              # double 0.65031899999999998
	.quad	0x3fb55d1c3ac929aa              # double 0.083451999999999998
	.quad	0x3fe90869c66d373b              # double 0.782277
	.quad	0x3fefd3b8e4b87bdd              # double 0.994595
	.quad	0x3fdb4c22ee41919b              # double 0.42652200000000001
	.quad	0x3fd5aaa7ded6ba8c              # double 0.33854099999999998
	.quad	0x3fe1ca18bd66277c              # double 0.55591999999999997
	.quad	0x3fe0a8522ea0fd3b              # double 0.52054699999999998
	.quad	0x3feb4f93bc0a06ea              # double 0.853464
	.quad	0x3febf84230fcf80e              # double 0.87405500000000003
	.quad	0x3fc50c77dd872f34              # double 0.16444300000000001
	.quad	0x3fec1ed7c6fbd274              # double 0.87876500000000001
	.quad	0x3fad855970b49e02              # double 0.057658000000000001
	.quad	0x3fafa333764f11b6              # double 0.061792
	.quad	0x3fb079702e6644d8              # double 0.064352999999999994
	.quad	0x3fec1185cee17a03              # double 0.877139
	.quad	0x3fe50ee6b8305d96              # double 0.65806900000000002
	.quad	0x3fbdb6a1e81cb46c              # double 0.116068
	.quad	0x3fe906c00da1a933              # double 0.78207400000000005
	.quad	0x3fc8746455eaee20              # double 0.191052
	.quad	0x3fd2611fd5885d31              # double 0.28717799999999999
	.quad	0x3fe54aafbc1acde2              # double 0.66536700000000004
	.quad	0x3f609aed56b00ffe              # double 0.0020270000000000002
	.quad	0x3fe17cb923a29c78              # double 0.54647500000000004
	.quad	0x3fd6c6e2a80064aa              # double 0.35588900000000001
	.quad	0x3f78eeae9ee45c36              # double 0.0060870000000000004
	.quad	0x3fb7e553ac4f7ec3              # double 0.093342999999999995
	.quad	0x3fe6dc1c6088d6d4              # double 0.71436900000000003
	.quad	0x3fda80346dc5d639              # double 0.41407500000000003
	.quad	0x3fbe9930be0ded29              # double 0.11952500000000001
	.quad	0x3feac2e126202539              # double 0.83628899999999995
	.quad	0x3fe6dfeda6612839              # double 0.714835
	.quad	0x3fe7abf9830e3cda              # double 0.73974300000000004
	.quad	0x3fd204b7f5a5332b              # double 0.28153800000000001
	.quad	0x3fe8b64e054690de              # double 0.772254
	.quad	0x3fe10b47c73eee52              # double 0.53262699999999996
	.quad	0x3fe7e8bc169c23b8              # double 0.74716000000000005
	.quad	0x3febc1f212d77319              # double 0.867425
	.quad	0x3fe72c5197a24895              # double 0.72416000000000003
	.quad	0x3f94bb1af3a14cec              # double 0.020244999999999999
	.quad	0x3fddca7935760392              # double 0.46548299999999998
	.quad	0x3fc9f83382e44b6f              # double 0.20288700000000001
	.quad	0x3fef9800a7c5ac47              # double 0.98730499999999998
	.quad	0x3fd11df3300de4c5              # double 0.267453
	.quad	0x3fe53cea6c1a048e              # double 0.663686
	.quad	0x3fefbb6aa4b9884c              # double 0.99162799999999995
	.quad	0x3fe5075b3e1437c5              # double 0.65714799999999995
	.quad	0x3fe6bc8e25c810a5              # double 0.71051699999999995
	.quad	0x3fe51ce6c093d966              # double 0.65977799999999998
	.quad	0x3fd7851654d61b2a              # double 0.36749799999999999
	.quad	0x3fcfa0f0a5efe932              # double 0.24709900000000001
	.quad	0x3fe65da272862f5a              # double 0.69893000000000005
	.quad	0x3fcad666a98244e9              # double 0.20966799999999999
	.quad	0x3fe5d883ba3443d4              # double 0.68267999999999995
	.quad	0x3fee0941c8216c61              # double 0.93862999999999996
	.quad	0x3fddbe2f7b17ce53              # double 0.46473300000000001
	.quad	0x3fd844bf4cb1897a              # double 0.37919599999999998
	.quad	0x3fc3bb7b6bb12902              # double 0.15415899999999999
	.quad	0x3fd4146e4c0df58c              # double 0.313747
	.quad	0x3fe5ba6efc371da3              # double 0.67900799999999994
	.quad	0x3fdee45803cd141a              # double 0.48268699999999998
	.quad	0x3fe169e7fb267c6c              # double 0.54417800000000005
	.quad	0x3fd2e88df37329c3              # double 0.29544399999999998
	.quad	0x3fd7d3e4ef0281ba              # double 0.37230799999999997
	.quad	0x3fe424e9c4545847              # double 0.62950600000000001
	.quad	0x3fe33111f0c34c1b              # double 0.59974000000000005
	.quad	0x3fa6718a86d71f36              # double 0.043834999999999999
	.quad	0x3fa7d73c925785f9              # double 0.046564000000000001
	.quad	0x3fcfc1acde19fc2b              # double 0.24809800000000001
	.quad	0x3fe6ada98676a726              # double 0.70869899999999997
	.quad	0x3fe2253111f0c34c              # double 0.56703999999999999
	.quad	0x3fec43d89ce4a7b5              # double 0.88328200000000001
	.quad	0x3fedc75818c5c9a3              # double 0.93058399999999997
	.quad	0x3fd581fd9ba1b196              # double 0.336059
	.quad	0x3fe49991361dc93f              # double 0.64374600000000004
	.quad	0x3fcb6c3760bf5d79              # double 0.21424000000000001
	.quad	0x3feeb5525cc42635              # double 0.95963399999999998
	.quad	0x3fdccde19fc2a887              # double 0.45006600000000002
	.quad	0x3fe60b5cbff47736              # double 0.68888700000000003
	.quad	0x3fec60f3cb3e5754              # double 0.88683500000000003
	.quad	0x3fdb83e425aee632              # double 0.429925
	.quad	0x3fd9973d9ec70004              # double 0.39985599999999999
	.quad	0x3fd78e79aae6c8f7              # double 0.36807099999999998
	.quad	0x3fce95d91ab8e8ea              # double 0.23894799999999999
	.quad	0x3fd6bef8ceb356da              # double 0.355406
	.quad	0x3feca999567dbb17              # double 0.89570300000000003
	.quad	0x3fe8a63b688bda94              # double 0.77029199999999997
	.quad	0x3fe1404ea4a8c155              # double 0.53910000000000002
	.quad	0x3fd06fe718a86d72              # double 0.25683
	.quad	0x3fd53f63c31df762              # double 0.33199400000000001
	.quad	0x3fd1307f23cc8de3              # double 0.26858500000000002
	.quad	0x3fd8453d20f2becf              # double 0.37922600000000001
	.quad	0x3fe029cbab649d39              # double 0.50510200000000005
	.quad	0x3fecfa7221858bc6              # double 0.90557200000000004
	.quad	0x3fd832f87ad080b6              # double 0.37811099999999997
	.quad	0x3fd3ceb78897e996              # double 0.30949199999999999
	.quad	0x3fd94f6dfc5cdd51              # double 0.39547300000000002
	.quad	0x3fdc40a2877ee4e2              # double 0.44144499999999998
	.quad	0x3feb5c4007570c56              # double 0.85501099999999997
	.quad	0x3fd1cec84f8f8a4c              # double 0.27824599999999999
	.quad	0x3fc48fc9363f572e              # double 0.160638
	.quad	0x3f93eee525892685              # double 0.019466000000000001
	.quad	0x3fd6c6195464dc23              # double 0.35584100000000002
	.quad	0x3fd3a671ef30a4e3              # double 0.30703399999999997
	.quad	0x3fda4c2b51bd61f6              # double 0.41089900000000001
	.quad	0x3fe805058dde7a74              # double 0.75061299999999997
	.quad	0x3fcda7f3cf70153c              # double 0.23168800000000001
	.quad	0x3fec71d3ed527e52              # double 0.88889499999999999
	.quad	0x3fef3ef49cf56ead              # double 0.97643500000000005
	.quad	0x3fe38adcd2d44dcb              # double 0.61070100000000005
	.quad	0x3f860ae9680e0653              # double 0.010763
	.quad	0x3f8907d912556d1a              # double 0.012222
	.quad	0x3fda13b5bf6a0dbb              # double 0.40745300000000001
	.quad	0x3fde71eafee6fb4c              # double 0.47570299999999999
	.quad	0x3fde9b6b2af14552              # double 0.47823599999999999
	.quad	0x3fd87878b7a1c25d              # double 0.382353
	.quad	0x3fdb368ad6883772              # double 0.42520400000000003
	.quad	0x3fe3a9ef5232d2bb              # double 0.61449399999999998
	.quad	0x3fe5d206c8711d7a              # double 0.68188800000000005
	.quad	0x3fda2d05f2884838              # double 0.40899799999999997
	.quad	0x3fe26043a2163fdd              # double 0.57425099999999996
	.quad	0x3fc3003eea209aaa              # double 0.14844499999999999
	.quad	0x3fd701c0ca600b03              # double 0.35948200000000002
	.quad	0x3fe4d93a2df9378f              # double 0.65151700000000001
	.quad	0x3fae4d3bf2f55582              # double 0.059182999999999999
	.quad	0x3fea7a54c5543287              # double 0.82743299999999997
	.quad	0x3fcdf78bbd380453              # double 0.23411699999999999
	.quad	0x3fd4ab191dde3758              # double 0.32294299999999998
	.quad	0x3fede0828c36da88              # double 0.93365600000000004
	.quad	0x3fe9f0196d8f4f94              # double 0.81055900000000002
	.quad	0x3fe3d40cc78e9f6b              # double 0.61963500000000005
	.quad	0x3f9de225fa658c4c              # double 0.029183000000000001
	.quad	0x3fd0bbf93ff25e57              # double 0.26147300000000001
	.quad	0x3fd45c0fcb4f1e4b              # double 0.31811899999999999
	.quad	0x3fdbf034b0e1b4bb              # double 0.43653599999999998
	.quad	0x3fe83471f79420b4              # double 0.75640200000000001
	.quad	0x3fe3f965b20b8067              # double 0.62419400000000003
	.quad	0x3fd63e3193f6c26a              # double 0.34754600000000002
	.quad	0x3fd447a5b0ff10ed              # double 0.31687300000000002
	.quad	0x3f96cf41f212d773              # double 0.022275
	.quad	0x3f926fe718a86d72              # double 0.018005
	.quad	0x3fed86e7e62dc6e3              # double 0.92271800000000004
	.quad	0x3fd55814940bbb1f              # double 0.33350099999999999
	.quad	0x3fdd92ccf6be37df              # double 0.46208500000000002
	.quad	0x3fc807cc7d1bb491              # double 0.18773799999999999
	.quad	0x3fbb3d7d3910c2c6              # double 0.106407
	.quad	0x3fe92f3e468cac4b              # double 0.78701699999999997
	.quad	0x3f9a83f4eca686e8              # double 0.025894
	.quad	0x3fe1862d40aaeafb              # double 0.54762900000000003
	.quad	0x3fe850edc3bd5992              # double 0.75987899999999997
	.quad	0x3fc0cb7d41743e96              # double 0.13120999999999999
	.quad	0x3fe9a3d70a3d70a4              # double 0.80125000000000001
	.quad	0x3fb031df761cbccf              # double 0.063260999999999998
	.quad	0x3fec4bee807bbb62              # double 0.88426899999999997
	.quad	0x3feafb07075b3e14              # double 0.84314299999999997
	.quad	0x3fafbca1059ea572              # double 0.061985999999999999
	.quad	0x3fe2eb2f23033a47              # double 0.59120899999999998
	.quad	0x3fd715b1422ccb3a              # double 0.36069899999999999
	.quad	0x3fe2754f3775b813              # double 0.57682
	.quad	0x3fd08709741d084f              # double 0.25824200000000003
	.quad	0x3febc5ef62f9ca5c              # double 0.86791200000000001
	.quad	0x3fd2cb81733226c4              # double 0.29367100000000002
	.quad	0x3feafcaa7589efd8              # double 0.84334299999999995
	.quad	0x3fe4cadff822bbed              # double 0.64976500000000004
	.quad	0x3fe6f6512a94ff00              # double 0.71756799999999998
	.quad	0x3fdaf57f737da61e              # double 0.421234
	.quad	0x3fe9c4028e4fb97c              # double 0.80517700000000003
	.quad	0x3fe486cca2db61bb              # double 0.641455
	.quad	0x3fe084f4c6e6d9be              # double 0.51622999999999997
	.quad	0x3fedd814940bbb1f              # double 0.93262699999999998
	.quad	0x3fe94e5f7403dddb              # double 0.79081699999999999
	.quad	0x3fe374eebf65dbfd              # double 0.60802400000000001
	.quad	0x3feaf498c3b0c459              # double 0.84235800000000005
	.quad	0x3fc61d755bccaf71              # double 0.17277400000000001
	.quad	0x3febe032db1e9f27              # double 0.87111799999999995
	.quad	0x3fe985be1a826245              # double 0.79757599999999995
	.quad	0x3fa09656eefa1e3f              # double 0.032397000000000002
	.quad	0x3fe63361565c2d28              # double 0.69377200000000006
	.quad	0x3fb91c087442c7fc              # double 0.098084000000000004
	.quad	0x3fe11ca5bd944aa5              # double 0.53474699999999997
	.quad	0x3fba78d0cc35ce18              # double 0.103406
	.quad	0x3fb5a8bd230b9dc3              # double 0.084606000000000001
	.quad	0x3fc777d955714b9d              # double 0.18334500000000001
	.quad	0x3fed3af102363b25              # double 0.91344499999999995
	.quad	0x3f9e0a41a261bf38              # double 0.029336000000000001
	.quad	0x3fcfa4484944ed70              # double 0.247201
	.quad	0x3fe4208bfc2224ee              # double 0.628973
	.quad	0x3fcf95464dc22ab2              # double 0.24674299999999999
	.quad	0x3fe00281ba7fc32f              # double 0.50030600000000003
	.quad	0x3feea90eed02cd3a              # double 0.95813700000000002
	.quad	0x3fee6cb5350092cd              # double 0.95077
	.quad	0x3fdfd9e40c8472c1              # double 0.49767400000000001
	.quad	0x3fbdb9a5a89b951c              # double 0.11611399999999999
	.quad	0x3fd920f6f08cc576              # double 0.39263700000000001
	.quad	0x3fb2cb4289118c19              # double 0.073413999999999993
	.quad	0x3fe311a975afaf86              # double 0.59590600000000005
	.quad	0x3fc4d24e160d887f              # double 0.16266800000000001
	.quad	0x3fe3435ac8a37260              # double 0.60197199999999995
	.quad	0x3fef441355475a32              # double 0.97706000000000004
	.quad	0x3fa97f84449dbec2              # double 0.049800999999999998
	.quad	0x3fea074ea8da7f3d              # double 0.813392
	.quad	0x3fec81beb18116ec              # double 0.89083800000000001
	.quad	0x3fe5f0d62bf11f92              # double 0.68564899999999995
	.quad	0x3feff9463cfb3312              # double 0.99917900000000004
	.quad	0x3fd5524399b2c40d              # double 0.333146
	.quad	0x3fdb1fab96f21f6d              # double 0.42380800000000002
	.quad	0x3fe6b67e414e7ee9              # double 0.70977699999999999
	.quad	0x3fdd499d0203e63f              # double 0.45761800000000002
	.quad	0x3fd3c6bce8533b10              # double 0.30900499999999997
	.quad	0x3fcef86a098915be              # double 0.241956
	.quad	0x3fc84662bae03b3f              # double 0.18964800000000001
	.quad	0x3feb345ae5ffa3ba              # double 0.85014100000000004
	.quad	0x3fdd92ddbdb5d895              # double 0.46208900000000003
	.quad	0x3fd2fe8ab4fa4830              # double 0.29678599999999999
	.quad	0x3fd1e04c05921038              # double 0.27931499999999998
	.quad	0x3fede79ee02a77a3              # double 0.93452400000000002
	.quad	0x3fe658750c1b9735              # double 0.69829799999999997
	.quad	0x3f9f6b5d462c343b              # double 0.030682999999999998
	.quad	0x3fe1fd113836a833              # double 0.56214200000000003
	.quad	0x3fea6004b7f5a533              # double 0.82422099999999998
	.quad	0x3fe870ed3d859c8d              # double 0.76378500000000005
	.quad	0x3fd1e88df37329c3              # double 0.27981899999999998
	.quad	0x3feae8ccdd93c46e              # double 0.84091800000000005
	.quad	0x3fdd19b0ab2e1694              # double 0.45469300000000001
	.quad	0x3febce5d5b24e9c4              # double 0.86894099999999996
	.quad	0x3fe7dbd72bcb5fe5              # double 0.74558599999999997
	.quad	0x3fec844284dfce31              # double 0.89114499999999996
	.quad	0x3fd555a7d24180d4              # double 0.33335300000000001
	.quad	0x3fb317efe0ce0b91              # double 0.074583999999999998
	.quad	0x3fd2d6ba8c586877              # double 0.29435600000000001
	.quad	0x3fec593c46d82ba6              # double 0.88589300000000004
	.quad	0x3fed82107b784663              # double 0.92212700000000003
	.quad	0x3fc489118c197e56              # double 0.16043299999999999
	.quad	0x3f9d31337eb28d86              # double 0.028507999999999999
	.quad	0x3fdaf340d4dc65c7              # double 0.421097
	.quad	0x3fc3e1f3a57eaa2a              # double 0.155333
	.quad	0x3fee354c122749f1              # double 0.94400600000000001
	.quad	0x3fcf423d9231c64c              # double 0.24420900000000001
	.quad	0x3fef0d1526d8b1dd              # double 0.97034699999999995
	.quad	0x3fc450b524399b2c              # double 0.15871299999999999
	.quad	0x3fe5711b60ae9681              # double 0.67005700000000001
	.quad	0x3fef64606748e475              # double 0.98100299999999995
	.quad	0x3feecdd2f1a9fbe7              # double 0.96262499999999995
	.quad	0x3fe5e32e3821af7d              # double 0.68398199999999998
	.quad	0x3fdb22a2c2374795              # double 0.423989
	.quad	0x3fe527418d6909af              # double 0.66104200000000002
	.quad	0x3fd453ef6b5d462c              # double 0.31762299999999999
	.quad	0x3fe55cf893faf428              # double 0.66759900000000005
	.quad	0x3fece295208e1501              # double 0.90265899999999999
	.quad	0x3fe72235b4edb2f6              # double 0.72292599999999996
	.quad	0x3fe7c84944ed6fdb              # double 0.74319900000000005
	.quad	0x3fd788b11409a240              # double 0.36771799999999999
	.quad	0x3fb4ec636b096356              # double 0.081731999999999999
	.quad	0x3fe76392e1ef73c1              # double 0.73090500000000003
	.quad	0x3fd88feac42e989a              # double 0.38378400000000001
	.quad	0x3fec0807357e670e              # double 0.87597999999999998
	.quad	0x3febf583a53b8e4c              # double 0.87372000000000005
	.quad	0x3fe590214ad362e9              # double 0.673844
	.quad	0x3fd9aa0cae642bfa              # double 0.40100400000000003
	.quad	0x3fe2077ab324851b              # double 0.56341300000000005
	.quad	0x3fed56c508b32ce9              # double 0.91684200000000005
	.quad	0x3febe10cf5b1c865              # double 0.87122200000000005
	.quad	0x3fecfc0f45176146              # double 0.90576900000000005
	.quad	0x3fef583c6c97d8cf              # double 0.97952099999999997
	.quad	0x3fdaf6555c52e72e              # double 0.42128500000000002
	.quad	0x3fd287ca643cc07b              # double 0.28953800000000002
	.quad	0x3fc1069a4df47f99              # double 0.13301399999999999
	.quad	0x3fe43b40b34e7686              # double 0.63223300000000004
	.quad	0x3fcac3fc43b2dd37              # double 0.20910599999999999
	.quad	0x3fccb93469941850              # double 0.22440199999999999
	.quad	0x3fed99c5a3e39f77              # double 0.92502099999999998
	.quad	0x3fd3c4199fe43676              # double 0.30884400000000001
	.quad	0x3fe4814b599aa609              # double 0.64078299999999999
	.quad	0x3fd24794ea077037              # double 0.28561900000000001
	.quad	0x3fe114c447c30d30              # double 0.53378499999999995
	.quad	0x3fe22d0e56041893              # double 0.56799999999999995
	.quad	0x3fed3ce4217d284a              # double 0.91368300000000002
	.quad	0x3fdb8f3a9b068124              # double 0.43061700000000003
	.quad	0x3fed891c087442c8              # double 0.922987
	.quad	0x3fe8d989df1172ef              # double 0.776555
	.quad	0x3fbe53eb399f5dff              # double 0.118468
	.quad	0x3fe79f83be6601bd              # double 0.73822200000000004
	.quad	0x3fdd93ee5eedcc21              # double 0.46215400000000001
	.quad	0x3fe8c48f10a99b6f              # double 0.77399399999999996
	.quad	0x3fb97d7c2ca148bb              # double 0.099571000000000007
	.quad	0x3fe01c1f85d744f6              # double 0.50343300000000002
	.quad	0x3f96f0068db8bac7              # double 0.0224
	.quad	0x3fb8efed634549b6              # double 0.097410999999999997
	.quad	0x3fd6cecc814d727a              # double 0.35637200000000002
	.quad	0x3fe3d43d03968d76              # double 0.61965800000000004
	.quad	0x3fdee87d2c7b890d              # double 0.48293999999999998
	.quad	0x3fedd71b0468448d              # double 0.932508
	.quad	0x3fc50e6f2e8c0486              # double 0.16450300000000001
	.quad	0x3fe1cead0c3d2524              # double 0.55647899999999995
	.quad	0x3fd038d60a633051              # double 0.253469
	.quad	0x3fefaf901083dbc2              # double 0.99018099999999998
	.quad	0x3fe1484f8f8a4c1f              # double 0.54007700000000003
	.quad	0x3fe10bdec5f394b8              # double 0.53269900000000003
	.quad	0x3fe42e5ffa3b9ae1              # double 0.63066100000000003
	.quad	0x3fee9b8023a6ce36              # double 0.95648200000000005
	.quad	0x3fd64fe36d22424a              # double 0.34862599999999999
	.quad	0x3fedfe5a78f25a25              # double 0.93729899999999999
	.quad	0x3fec56084a515cea              # double 0.88550200000000001
	.quad	0x3fd21a261bf37b8d              # double 0.28284599999999999
	.quad	0x3fd83b57c4e2f380              # double 0.37862200000000001
	.quad	0x3fe3d8c08b75ea68              # double 0.62020900000000001
	.quad	0x3fd08ac18f81e8a3              # double 0.258469
	.quad	0x3fc4fb762d83c6c9              # double 0.16392399999999999
	.quad	0x3fcf110e453d20f3              # double 0.24270800000000001
	.quad	0x3fe1cc122749f0e5              # double 0.55616100000000002
	.quad	0x3fadd851654d61b3              # double 0.058291000000000003
	.quad	0x3fe48728e92d55a4              # double 0.64149900000000004
	.quad	0x3fee91f70de8f6cf              # double 0.955318
	.quad	0x3fedaa9930be0ded              # double 0.92707499999999998
	.quad	0x3fd98cb4aec8d5c7              # double 0.39921299999999998
	.quad	0x3fe37c1376d54973              # double 0.60889599999999999
	.quad	0x3fe1c1743e963dc5              # double 0.55486500000000005
	.quad	0x3fe2484d76ab5808              # double 0.571326
	.quad	0x3fe77d1bb4916ca4              # double 0.73402199999999995
	.quad	0x3fa30489d27c3937              # double 0.037144000000000003
	.quad	0x3fef709b738e6d16              # double 0.98249600000000004
	.quad	0x3fdcdb5d894812be              # double 0.45088899999999998
	.quad	0x3fc17d0f1f57b41c              # double 0.136629
	.quad	0x3febb47a5b0ff10f              # double 0.86578100000000002
	.quad	0x3fea4f2cf95d4e90              # double 0.82216500000000003
	.quad	0x3fc1fd60e94ee393              # double 0.140545
	.quad	0x3fd1ac68a936c58f              # double 0.276148
	.quad	0x3fc60d349be8ff32              # double 0.17227799999999999
	.quad	0x3fe5abe27179bfdf              # double 0.67723199999999995
	.quad	0x3fe9bef49cf56ead              # double 0.80456000000000005
	.quad	0x3fe54484944ed6fe              # double 0.66461400000000004
	.quad	0x3f96e115592d98bf              # double 0.022342999999999998
	.quad	0x3f90203e63e8dda5              # double 0.015748000000000002
	.quad	0x3fcff2452c59fb1e              # double 0.249581
	.quad	0x3fe270c34c1a8ac6              # double 0.57626500000000003
	.quad	0x3fe6380ecfa69be1              # double 0.69434300000000004
	.quad	0x3fea889a02752546              # double 0.829175
	.quad	0x3fe8ffa7eb6bf445              # double 0.78120800000000001
	.quad	0x3feeab5807fed203              # double 0.95841600000000004
	.quad	0x3fc9233df2a9d628              # double 0.19638800000000001
	.quad	0x3f6886df82b1f688              # double 0.0029940000000000001
	.quad	0x3fde6523704790b8              # double 0.47492299999999998
	.quad	0x3fead940789613d3              # double 0.83901999999999999
	.quad	0x3fda6e86c6583e85              # double 0.41299599999999997
	.quad	0x3feb3dfd2630ec31              # double 0.85131699999999999
	.quad	0x3fe575c8d9f9053a              # double 0.670628
	.quad	0x3fc8e48626f60e0f              # double 0.19447400000000001
	.quad	0x3feeb2b990afe60c              # double 0.95931699999999997
	.quad	0x3fc506705c896dd2              # double 0.16425899999999999
	.quad	0x3fd3bd76ee73e682              # double 0.30843900000000002
	.quad	0x3fe7dd67ba237cdd              # double 0.74577700000000002
	.quad	0x3fbcd0dcfcc5b8dc              # double 0.112562
	.quad	0x3fc439b456b441bc              # double 0.15801100000000001
	.quad	0x3fb0d8ba40d90e24              # double 0.065807000000000004
	.quad	0x3fd0812be48a58b4              # double 0.257884
	.quad	0x3fef9e55c0fcb4f2              # double 0.98807800000000001
	.quad	0x3fe730a0b1bbcf4f              # double 0.72468600000000005
	.quad	0x3fdfe939eadd590c              # double 0.49861
	.quad	0x3fed125bb7b6bb13              # double 0.90849100000000005
	.quad	0x3fe8900c521dda06              # double 0.76758400000000004
	.quad	0x3fb2de657b84db9c              # double 0.073705999999999994
	.quad	0x3fa260f5e41d4b6a              # double 0.035895999999999997
	.quad	0x3fac4ed6fda836eb              # double 0.055288999999999998
	.quad	0x3fe3c7f349385836              # double 0.61815799999999999
	.quad	0x3fe859c8c9320d99              # double 0.76095999999999997
	.quad	0x3fb9a708ede54b49              # double 0.100205
	.quad	0x3fedaeb1c432ca58              # double 0.92757500000000004
	.quad	0x3fdb1055b8993922              # double 0.42287200000000003
	.quad	0x3fefadba4d6e47dc              # double 0.98995699999999997
	.quad	0x3feac9d9d3458cd2              # double 0.83714
	.quad	0x3f9991361dc93ea3              # double 0.024968000000000001
	.quad	0x3feeaf661f18c9fb              # double 0.95891099999999995
	.quad	0x3fe86bc408d8ec96              # double 0.76315500000000003
	.quad	0x3fe9e0999dcb5782              # double 0.80866700000000002
	.quad	0x3fe8bd4cfd08d4bb              # double 0.77310800000000002
	.quad	0x3fe088919ef954eb              # double 0.51667099999999999
	.quad	0x3fcf69a0ad8a1166              # double 0.24541099999999999
	.quad	0x3fbd32b55ef1fddf              # double 0.114055
	.quad	0x3fb22cecc814d728              # double 0.070998000000000006
	.quad	0x3fef85dfa871a3b1              # double 0.98509199999999996
	.quad	0x3fd2dac68a936c59              # double 0.294603
	.quad	0x3fd3af20ea5b530d              # double 0.307564
	.quad	0x3fea8f6cefed6345              # double 0.83000799999999997
	.quad	0x3fe049be8ff327aa              # double 0.50900199999999995
	.quad	0x3fa73083558a7610              # double 0.045291999999999999
	.quad	0x3feb33ca31e7d999              # double 0.85007200000000005
	.quad	0x3fe52ce032db1e9f              # double 0.66172799999999998
	.quad	0x3fe7e53868fd199c              # double 0.74673100000000003
	.quad	0x3feda6eb91b3f20a              # double 0.92662599999999995
	.quad	0x3fb1461b6d43d039              # double 0.067475999999999994
	.quad	0x3fa7f562174c4ce0              # double 0.046794000000000002
	.quad	0x3fcf4ca925fe974a              # double 0.24452699999999999
	.quad	0x3fea583a53b8e4b8              # double 0.82326999999999995
	.quad	0x3fefeec5b078d930              # double 0.99789700000000003
	.quad	0x3fd5ac68a936c58f              # double 0.338648
	.quad	0x3fe906b59146e4c1              # double 0.78206900000000001
	.quad	0x3feef503b81b64e0              # double 0.96740899999999996
	.quad	0x3fe8ad2fe3f359ff              # double 0.77114099999999997
	.quad	0x3fd51348b220791c              # double 0.32930199999999998
	.quad	0x3febd32c625e99e9              # double 0.86952799999999997
	.quad	0x3fee5cca70d1fa33              # double 0.94882699999999998
	.quad	0x3fbe830a0b1bbcf5              # double 0.119187
	.quad	0x3fe69e7d9988d2a2              # double 0.706847
	.quad	0x3fe17db4cc250721              # double 0.54659500000000005
	.quad	0x3fd818fc504816f0              # double 0.376525
	.quad	0x3fc0847b24638c97              # double 0.12904299999999999
	.quad	0x3fe8b4f3fd933e36              # double 0.77208900000000003
	.quad	0x3fcecc1ca3a4b557              # double 0.24060400000000001
	.quad	0x3fe248e25c810a57              # double 0.57139700000000004
	.quad	0x3fe4933e35c5b4ab              # double 0.64297400000000005
	.quad	0x3fde156191148fda              # double 0.470055
	.quad	0x3fe5959e6256366d              # double 0.67451399999999995
	.quad	0x3fef08aac96cc5fc              # double 0.969808
	.quad	0x3fcf735c182ecaef              # double 0.24570800000000001
	.quad	0x3fd7c7607c4199fe              # double 0.37154399999999999
	.quad	0x3fddb9d7fd82773e              # double 0.46446799999999999
	.quad	0x3fb16eac8605681f              # double 0.068095000000000003
	.quad	0x3fd37cc7d1bb4917              # double 0.30449100000000001
	.quad	0x3fddf316e3715400              # double 0.46796199999999999
	.quad	0x3fd6e09bb6aa4b99              # double 0.35745900000000003
	.quad	0x3fd5436b8f9b1316              # double 0.33223999999999998
	.quad	0x3fd90ffda4052d66              # double 0.39160099999999998
	.quad	0x3fe359c49774256c              # double 0.60470800000000002
	.quad	0x3fd74f3fd933e35c              # double 0.36421199999999998
	.quad	0x3fde94e1a3f4666f              # double 0.47783700000000001
	.quad	0x3fd86bdb1a6d6990              # double 0.38158300000000001
	.quad	0x3fe449c4da9003ef              # double 0.63400500000000004
	.quad	0x3fe146f9b994e1a4              # double 0.53991400000000001
	.quad	0x3fc9ad6451b93038              # double 0.200604
	.quad	0x3fe8b5d462c343b7              # double 0.77219599999999999
	.quad	0x3fec525cc426351e              # double 0.88505400000000001
	.quad	0x3fee8387df5cf249              # double 0.95355599999999996
	.quad	0x3fae26916440f239              # double 0.058888000000000003
	.quad	0x3fdab88ca3e7d135              # double 0.417514
	.quad	0x3fdf908a265f0f5a              # double 0.493197
	.quad	0x3fe5d10d38cda6e7              # double 0.68176899999999996
	.quad	0x3fd876d549731099              # double 0.38225300000000001
	.quad	0x3fecf01322f27350              # double 0.90430600000000005
	.quad	0x3feab5e529bae46d              # double 0.834704
	.quad	0x3fe99129888f861a              # double 0.79896999999999996
	.quad	0x3fedb48909289dae              # double 0.928288
	.quad	0x3fbdff4fd6d7e88a              # double 0.117177
	.quad	0x3fef1e42e1262025              # double 0.97244399999999997
	.quad	0x3fcbeacc92146a1a              # double 0.21810299999999999
	.quad	0x3fdc4185058dde7a              # double 0.44149899999999997
	.quad	0x3fcddd22856605ee              # double 0.23331099999999999
	.quad	0x3fd6fadafd113837              # double 0.35906100000000002
	.quad	0x3fe5960d887ebf23              # double 0.67456700000000003
	.quad	0x3fe5f811f4f50a03              # double 0.68653200000000003
	.quad	0x3fdb4f0d844d013b              # double 0.42670000000000002
	.quad	0x3fec4404a72ead92              # double 0.88330299999999995
	.quad	0x3fd80941c8216c61              # double 0.37556499999999998
	.quad	0x3fc227c7c5260f5e              # double 0.14183899999999999
	.quad	0x3fef6202539756c9              # double 0.98071399999999997
	.quad	0x3fe4bb645a1cac08              # double 0.64787499999999998
	.quad	0x3fe0ca1f080303c0              # double 0.52467299999999994
	.quad	0x3fd7e15011904b3c              # double 0.37312699999999999
	.quad	0x3fe9081e4712e408              # double 0.78224099999999996
	.quad	0x3fbfd5a9eb2074eb              # double 0.12435400000000001
	.quad	0x3fe751372a38b8ae              # double 0.72866399999999998
	.quad	0x3fdaab862b27cbf7              # double 0.41671900000000001
	.quad	0x3f9ee6b8305d95dd              # double 0.030176999999999999
	.quad	0x3fa7b5d031055b8a              # double 0.046309000000000003
	.quad	0x3fd005c4651f3e8a              # double 0.25035200000000002
	.quad	0x3fef33f63c31df76              # double 0.97509299999999999
	.quad	0x3fde92ddbdb5d895              # double 0.47771400000000003
	.quad	0x3fbea5e785b5b707              # double 0.11971900000000001
	.quad	0x3fe78f861a60d456              # double 0.73626999999999998
	.quad	0x3feb3f727136a401              # double 0.851495
	.quad	0x3f8f487fcb923a2a              # double 0.015275
	.quad	0x3fe6ead0c3d25248              # double 0.71616400000000002
	.quad	0x3fe487b99d451fc5              # double 0.64156800000000003
	.quad	0x3fe5b4a2339c0ebf              # double 0.67830000000000001
	.quad	0x3fd9980b242070b9              # double 0.39990500000000001
	.quad	0x3fe453198288051d              # double 0.63514400000000004
	.quad	0x3fefb4cc25072086              # double 0.99082000000000003
	.quad	0x3fdd34ce3de6149c              # double 0.45634799999999998
	.quad	0x3fdc49a9973d9ec7              # double 0.441996
	.quad	0x3fdb77ccc0379314              # double 0.42918699999999999
	.quad	0x3fc6c80c73abc947              # double 0.17798
	.quad	0x3fe8ca3400b88ca4              # double 0.77468300000000001
	.quad	0x3fe4c88c60cbf2b2              # double 0.64948099999999998
	.quad	0x3fe4ab68cef672b9              # double 0.64592400000000005
	.quad	0x3fb9a31a4bdba0a5              # double 0.100145
	.quad	0x3fe9d11dffc5479d              # double 0.80677699999999997
	.quad	0x3fe12027525460aa              # double 0.53517499999999996
	.quad	0x3fc4da3c21187e7c              # double 0.16291
	.quad	0x3faf15831f03d146              # double 0.060711000000000001
	.quad	0x3fe697c80841ede1              # double 0.70602799999999999
	.quad	0x3f9eacc92146a1a5              # double 0.029956
	.quad	0x3fca870110a137f4              # double 0.20724500000000001
	.quad	0x3fd5f3882278d0cc              # double 0.34298899999999999
	.quad	0x3fc05625a682b628              # double 0.12762899999999999
	.quad	0x3fe594ec204f2ae0              # double 0.67442899999999995
	.quad	0x3fe06ea854477ff1              # double 0.51350799999999996
	.quad	0x3fef9335d249e450              # double 0.98672000000000004
	.quad	0x3fcd5097c80841ee              # double 0.229022
	.quad	0x3fbb349385836220              # double 0.106271
	.quad	0x3fe727f1b6912125              # double 0.72362599999999999
	.quad	0x3fe287b139c94f6a              # double 0.57906400000000002
	.quad	0x3fed2c0e7bc3c5bd              # double 0.91162799999999999
	.quad	0x3f978316a055757d              # double 0.022960999999999999
	.quad	0x3fc224b33daf8df8              # double 0.14174500000000001
	.quad	0x3fd7dab9f559b3d0              # double 0.37272499999999997
	.quad	0x3fcd0b06c43f5f91              # double 0.22689899999999999
	.quad	0x3fa1d6f112fd32c6              # double 0.034842999999999999
	.quad	0x3fc252ac753e707e              # double 0.143148
	.quad	0x3fe39d495182a993              # double 0.61294999999999999
	.quad	0x3fe38e6299524bfd              # double 0.61113099999999998
	.quad	0x3fcc4d013a92a305              # double 0.22109999999999999
	.quad	0x3fbd48fd9fd36f7e              # double 0.114395
	.quad	0x3fc51a08bfc2224f              # double 0.164857
	.quad	0x3fda55bccaf709b7              # double 0.41148299999999999
	.quad	0x3fe8b6134ce3de61              # double 0.77222599999999997
	.quad	0x3fed57b41bfbdf09              # double 0.91695599999999999
	.quad	0x3fd4ef954eb13dfb              # double 0.327123
	.quad	0x3fe4d0edc3bd5992              # double 0.65050399999999997
	.quad	0x3febe6106ab14ec2              # double 0.871834
	.quad	0x3fd6955b4677b396              # double 0.35286600000000001
	.quad	0x3feff4d9c6b0531a              # double 0.99863900000000005
	.quad	0x3fdbb6177ea1c68f              # double 0.43298900000000001
	.quad	0x3fcec49ba5e353f8              # double 0.24037500000000001
	.quad	0x3fe299ef954eb13e              # double 0.581291
	.quad	0x3febf1bcdbbe0158              # double 0.87325900000000001
	.quad	0x3fbdac68a936c58f              # double 0.115912
	.quad	0x3fe3f2c94b380cb7              # double 0.62338700000000002
	.quad	0x3febf07182235b4f              # double 0.87310100000000002
	.quad	0x3fe5bc18b502abac              # double 0.67921100000000001
	.quad	0x3fd0e90795f676ea              # double 0.26422299999999999
	.quad	0x3fb9bab21815a07b              # double 0.100505
	.quad	0x3fc27f5e84f09529              # double 0.144512
	.quad	0x3fc936e71cda2b5a              # double 0.196988
	.quad	0x3fef8feac42e989a              # double 0.98631800000000003
	.quad	0x3fee1b0ccbc05d53              # double 0.94080200000000003
	.quad	0x3fef991361dc93ea              # double 0.98743599999999998
	.quad	0x3fe4a8e92d55a3a1              # double 0.64561900000000005
	.quad	0x3fcbb224aada33be              # double 0.21637400000000001
	.quad	0x3fe84723aafff36b              # double 0.75868400000000003
	.quad	0x3fd7a771c970f7ba              # double 0.36959500000000001
	.quad	0x3feee9d7342edbb6              # double 0.96604500000000004
	.quad	0x3fef8791c4b90215              # double 0.98529900000000003
	.quad	0x3fe6f913e81450f0              # double 0.71790500000000002
	.quad	0x3fd029b280f12c28              # double 0.25254500000000002
	.quad	0x3fe02b27cbf6e3f8              # double 0.50526800000000005
	.quad	0x3fea0123810e8859              # double 0.812639
	.quad	0x3fce28997c3d6840              # double 0.23561399999999999
	.quad	0x3feeffc7607c419a              # double 0.968723
	.quad	0x3feb873365881a15              # double 0.86025399999999996
	.quad	0x3fe53eab367a0f91              # double 0.66390000000000005
	.quad	0x3fe93d9ec7000432              # double 0.78877200000000003
	.quad	0x3fb9095af294dd72              # double 0.097798999999999997
	.quad	0x3fc98ec95bff0457              # double 0.19966999999999999
	.quad	0x3fdcc8ffb8b26395              # double 0.449768
	.quad	0x3fc9e071c53f39d2              # double 0.20216200000000001
	.quad	0x3fe6ed288ce703b0              # double 0.71645000000000003
	.quad	0x3fc78fb43d89ce4a              # double 0.18407299999999999
	.quad	0x3fe190d38cda6e76              # double 0.548929
	.quad	0x3fdcbff47735c183              # double 0.449216
	.quad	0x3fee0b73d188f430              # double 0.93889800000000001
	.quad	0x3fe22ae8e1d6494d              # double 0.56773799999999996
	.quad	0x3fe1abd1aa821f2a              # double 0.55222400000000005
	.quad	0x3fe6bec892ab68cf              # double 0.710789
	.quad	0x3fe0cfa05143bf72              # double 0.52534499999999995
	.quad	0x3fe20678c0053e2d              # double 0.56328999999999996
	.quad	0x3feea3c64345cfee              # double 0.95749200000000001
	.quad	0x3fe9cfa05143bf72              # double 0.80659499999999995
	.quad	0x3fe96670e2c12ad8              # double 0.79375499999999999
	.quad	0x3fcfa415f45e0b4e              # double 0.247195
	.quad	0x3fd7fd86a8fc0d2c              # double 0.37484899999999999
	.quad	0x3fea5a9435ac8a37              # double 0.82355699999999998
	.quad	0x3fd26a1a500d5e8d              # double 0.28772599999999998
	.quad	0x3fe6985cee17a030              # double 0.70609900000000003
	.quad	0x3feddcdd50a88f00              # double 0.93321100000000001
	.quad	0x3fdb116a8b8f14db              # double 0.42293799999999998
	.quad	0x3fc5fdc5931ca7d6              # double 0.17180699999999999
	.quad	0x3fe4c7304039abf3              # double 0.64931499999999998
	.quad	0x3fd51aeb3dd11be7              # double 0.32976800000000001
	.quad	0x3fdf446b69db65ed              # double 0.48855100000000001
	.quad	0x3fe381ffb480a5ad              # double 0.60961900000000002
	.quad	0x3fde1198aeb80ed0              # double 0.46982400000000002
	.quad	0x3fda05a2d72ffd1e              # double 0.40659400000000001
	.quad	0x3fe2cb6848beb5b3              # double 0.58733000000000002
	.quad	0x3fa5e17e34b94531              # double 0.042736000000000003
	.quad	0x3fe70e8858ff7597              # double 0.72052400000000005
	.quad	0x3fe7704577d95571              # double 0.73245499999999997
	.quad	0x3fc56030c23fab11              # double 0.16699800000000001
	.quad	0x3fb5eca25529fe00              # double 0.085641999999999996
	.quad	0x3fa631f8a0902de0              # double 0.04335
	.quad	0x3fd11a500d5e8d54              # double 0.267231
	.quad	0x3fed60242d05f288              # double 0.91798599999999997
	.quad	0x3fef1e2de8709742              # double 0.97243400000000002
	.quad	0x3fc8b20fb224aada              # double 0.19293399999999999
	.quad	0x3fdc940789613d32              # double 0.44653500000000002
	.quad	0x3fefcc1ca3a4b557              # double 0.99366600000000004
	.quad	0x3fd00cd855970b4a              # double 0.25078400000000001
	.quad	0x3fe0de939eadd591              # double 0.52717000000000003
	.quad	0x3fec5604189374bc              # double 0.88549999999999995
	.quad	0x3fee57b84db9c737              # double 0.94820800000000005
	.quad	0x3fe3705c896dd26b              # double 0.60746599999999995
	.quad	0x3f916872b020c49c              # double 0.017000000000000001
	.quad	0x3fd23e1437c5692b              # double 0.28503899999999999
	.quad	0x3fe1970b49e01de2              # double 0.54968799999999995
	.quad	0x3fae516db0dd82fd              # double 0.059214999999999997
	.quad	0x3fd2b8348f53c57a              # double 0.292493
	.quad	0x3fea7aa8a82a5615              # double 0.82747300000000001
	.quad	0x3fd4f10a99b6f5cb              # double 0.327212
	.quad	0x3fe1d7ff9b56323c              # double 0.55761700000000003
	.quad	0x3fdd18a86d71f362              # double 0.45462999999999998
	.quad	0x3fe0903211cb039f              # double 0.51760200000000001
	.quad	0x3fe25b9a5a89b952              # double 0.57368200000000003
	.quad	0x3fdc3c9eecbfb15b              # double 0.44119999999999998
	.quad	0x3fe15e43ed959a31              # double 0.54275700000000004
	.quad	0x3fd6d77fae3608d1              # double 0.35690300000000003
	.quad	0x3fef759253543aeb              # double 0.98310200000000003
	.quad	0x3fdfe73a365cb35f              # double 0.49848799999999999
	.quad	0x3fea14013ec460ee              # double 0.81494200000000006
	.quad	0x3fd5852b4d8ba40e              # double 0.33625300000000002
	.quad	0x3fb97f4128bf3beb              # double 0.099598000000000006
	.quad	0x3fd423f24d8fd5cb              # double 0.31469399999999997
	.quad	0x3fe1e6a337a80cfa              # double 0.55940400000000001
	.quad	0x3fd15f7403dddb12              # double 0.271451
	.quad	0x3fe890d38cda6e76              # double 0.767679
	.quad	0x3fae35e74299d884              # double 0.059005000000000002
	.quad	0x3fd4ce3de6149c6f              # double 0.32508799999999999
	.quad	0x3feb0661ae70c133              # double 0.84452899999999997
	.quad	0x3fe69dd1a21ea359              # double 0.70676499999999998
	.quad	0x3fe62771c970f7ba              # double 0.69231500000000001
	.quad	0x3fec432ebe596c83              # double 0.88320100000000001
	.quad	0x3f9fcfc3f811f4f5              # double 0.031066
	.quad	0x3feaeee73e681a9c              # double 0.84166300000000004
	.quad	0x3fe26a4ebdd334c6              # double 0.57547700000000002
	.quad	0x3fd7a6a444178705              # double 0.36954599999999999
	.quad	0x3fedce5b4245f5ae              # double 0.93144000000000005
	.quad	0x3fe7e0a63305100a              # double 0.74617299999999998
	.quad	0x3fda8b827fa1a0cf              # double 0.41476499999999999
	.quad	0x3fef86940357a355              # double 0.98517799999999999
	.quad	0x3fe2ea8112ba16e8              # double 0.59112600000000004
	.quad	0x3fbf56da0168b5cc              # double 0.122419
	.quad	0x3fa2aa3ad18d25ee              # double 0.036455000000000001
	.quad	0x3fe05041cc532a49              # double 0.50979699999999994
	.quad	0x3fd3c9752977c88e              # double 0.30917099999999997
	.quad	0x3fe53f3bea91d9b2              # double 0.66396900000000003
	.quad	0x3fe4ca686e7e62dc              # double 0.64970799999999995
	.quad	0x3fda74256bca5376              # double 0.41333900000000001
	.quad	0x3fed49774256bca5              # double 0.91521799999999998
	.quad	0x3feeb87379746024              # double 0.96001599999999998
	.quad	0x3fb41adea897635e              # double 0.078534999999999993
	.quad	0x3fded451fc4c1659              # double 0.481709
	.quad	0x3fba81882adc4c9d              # double 0.10353900000000001
	.quad	0x3fe9101d19157abc              # double 0.78321700000000005
	.quad	0x3fdcee84ad794a6f              # double 0.45205800000000002
	.quad	0x3f88cda6e75ff60a              # double 0.012111
	.quad	0x3fdeece9a2c66905              # double 0.48320999999999997
	.quad	0x3fdbd6777079e59f              # double 0.43496499999999999
	.quad	0x3fe857eaa2a0a958              # double 0.76073199999999996
	.quad	0x3fce3cf2cf95d4e9              # double 0.236235
	.quad	0x3fe40de8f6cefed6              # double 0.62669799999999998
	.quad	0x3fe29af5ba2be059              # double 0.58141600000000004
	.quad	0x3feaa7ed84d338f8              # double 0.83299900000000004
	.quad	0x3fe3886162f166e0              # double 0.610398
	.quad	0x3fc90f0e90bc7b46              # double 0.195772
	.quad	0x3fd09b56323bbc6f              # double 0.25948100000000002
	.quad	0x3fdba83b1d0c8041              # double 0.432143
	.quad	0x3fee58cb07d0aeda              # double 0.94833900000000004
	.quad	0x3fef515ad106ee31              # double 0.97868100000000002
	.quad	0x3fda5247cb70ac3b              # double 0.41127200000000003
	.quad	0x3fd58cd20afa2f06              # double 0.33672000000000002
	.quad	0x3fe5ca6223e18698              # double 0.68095499999999998
	.quad	0x3fbca958537e2c56              # double 0.111959
	.quad	0x3fe7859ea57214f0              # double 0.73506099999999996
	.quad	0x3fe86d6777079e5a              # double 0.76335500000000001
	.quad	0x3fc7d1aa821f2991              # double 0.186086
	.quad	0x3fc46d2674080f99              # double 0.159581
	.quad	0x3fc4eee957470eb2              # double 0.16354099999999999
	.quad	0x3fe0e6772d5e071c              # double 0.52813299999999996
	.quad	0x3fd8b395c4220360              # double 0.385961
	.quad	0x3fc9be76c8b43958              # double 0.201125
	.quad	0x3fe40fcd67fd3f5b              # double 0.62692899999999996
	.quad	0x3fde8a8f3a9b0681              # double 0.47720699999999999
	.quad	0x3fb9cdd50a88effe              # double 0.100797
	.quad	0x3fdbd972cd7cf5f5              # double 0.43514700000000001
	.quad	0x3fd3ea704bc27632              # double 0.31118400000000002
	.quad	0x3fe3c2352eb5f5f1              # double 0.61745700000000003
	.quad	0x3fe3138151a43782              # double 0.59613099999999997
	.quad	0x3fe390060780fdc1              # double 0.61133099999999996
	.quad	0x3fe3078fabda0dfe              # double 0.59467300000000001
	.quad	0x3fcba89331a08bfc              # double 0.216082
	.quad	0x3fd882f0e0a84be4              # double 0.382992
	.quad	0x3fe87f2e48e8a71e              # double 0.76552500000000001
	.quad	0x3fe9368f08461f9f              # double 0.78791
	.quad	0x3fe1393469941850              # double 0.53823299999999996
	.quad	0x3fd04ff865d7cb2e              # double 0.25488100000000002
	.quad	0x3fb245e4e69f05ea              # double 0.071378999999999998
	.quad	0x3fe3e9ff0cbaf966              # double 0.62231400000000003
	.quad	0x3fcca161e4f765fe              # double 0.22367500000000001
	.quad	0x3fdc0791c4b90215              # double 0.43796200000000002
	.quad	0x3fe6d4bad7d7c2ca              # double 0.71346799999999999
	.quad	0x3fee0194c0160525              # double 0.937693
	.quad	0x3f9009b30728e92d              # double 0.015661999999999999
	.quad	0x3fe3361565c2d278              # double 0.600352
	.quad	0x3fd1743201040bfe              # double 0.27271699999999999
	.quad	0x3fca57f3061c79b3              # double 0.20580899999999999
	.quad	0x3fe16ad0c3d25248              # double 0.54428900000000002
	.quad	0x3fe21cdc443914f5              # double 0.56602300000000005
	.quad	0x3fc09aaa3ad18d26              # double 0.12972
	.quad	0x3feeedf3f961804e              # double 0.96654700000000005
	.quad	0x3fe00389f83be660              # double 0.50043199999999999
	.quad	0x3fe5f56eac860568              # double 0.68620999999999999
	.quad	0x3fd673cd573647bb              # double 0.35081800000000002
	.quad	0x3fcafa9c12f09d8c              # double 0.21077299999999999
	.quad	0x3fea1fcd24e160d9              # double 0.81638200000000005
	.quad	0x3fe1000a7c5ac472              # double 0.53125500000000003
	.quad	0x3fe5f1800a7c5ac4              # double 0.68572999999999995
	.quad	0x3fbdfcf3dc054ef4              # double 0.117141
	.quad	0x3fc2433d6c721922              # double 0.142677
	.quad	0x3fe54cb5bb384fd3              # double 0.66561400000000004
	.quad	0x3fed884c6a3bddfd              # double 0.92288800000000004
	.quad	0x3fe6ae33eff19503              # double 0.70876499999999998
	.quad	0x3fe21d6f112fd32c              # double 0.56609299999999996
	.quad	0x3fe4bb3a68b19a41              # double 0.64785499999999996
	.quad	0x3fd88a5ce5b4245f              # double 0.38344499999999998
	.quad	0x3fdba09cc319c5a4              # double 0.43167800000000001
	.quad	0x3fe65d76683c297c              # double 0.698909
	.quad	0x3fefbebe1650a45d              # double 0.99203399999999997
	.quad	0x3fa87d6f97679032              # double 0.047832
	.quad	0x3fd4e8f6cefed634              # double 0.32671899999999998
	.quad	0x3fdcef8487b99d45              # double 0.45211899999999999
	.quad	0x3fe7bf50e3476295              # double 0.74210399999999999
	.quad	0x3fb9374bc6a7ef9e              # double 0.098500000000000004
	.quad	0x3fe53910c2c5e2ce              # double 0.66321600000000003
	.quad	0x3fe503a7546d3f9e              # double 0.65669599999999995
	.quad	0x3fc18bd66277c45d              # double 0.13708000000000001
	.quad	0x3fd41cc532a497fa              # double 0.31425599999999998
	.quad	0x3fefcb85a4f00ef1              # double 0.99359399999999997
	.quad	0x3fe94988094e5d5b              # double 0.79022599999999998
	.quad	0x3fc6344c37e6f71a              # double 0.17347099999999999
	.quad	0x3fe54988094e5d5b              # double 0.66522599999999998
	.quad	0x3fb28900c521dda0              # double 0.072402999999999995
	.quad	0x3fac9a77e5eaab04              # double 0.055865999999999999
	.quad	0x3fe21b17481b21c4              # double 0.56580699999999995
	.quad	0x3fecfa76534373f3              # double 0.90557399999999999
	.quad	0x3fe79187e7c06e1a              # double 0.73651500000000003
	.quad	0x3fdddbdf8f473040              # double 0.46654499999999999
	.quad	0x3fe987852f7f498c              # double 0.79779299999999997
	.quad	0x3fe2d7f0ed3d859d              # double 0.58886000000000005
	.quad	0x3fcb57bc7f77af64              # double 0.213615
	.quad	0x3fec9c94f69ca9ef              # double 0.89411399999999996
	.quad	0x3fe2a8d8665e02eb              # double 0.58311100000000005
	.quad	0x3fe3d45c78a6dacb              # double 0.61967300000000003
	.quad	0x3fd894a2b9d3cbc5              # double 0.38407200000000002
	.quad	0x3fccd002e2328f9f              # double 0.22509799999999999
	.quad	0x3fd64d4cb9ecf638              # double 0.348468
	.quad	0x3fdbbdb1a6d698fe              # double 0.43345299999999998
	.quad	0x3fde6bacf7446f9c              # double 0.47532200000000002
	.quad	0x3fe7f1d606317269              # double 0.74827100000000002
	.quad	0x3fe5aa62aa19439e              # double 0.67704900000000001
	.quad	0x3fdfe496ededaec5              # double 0.49832700000000002
	.quad	0x3fb16bdb1a6d6990              # double 0.068052000000000001
	.quad	0x3feb028a1dfb938a              # double 0.84406000000000003
	.quad	0x3feb327aa68f4b62              # double 0.849912
	.quad	0x3fc6c061847f5621              # double 0.17774599999999999
	.quad	0x3fd404039abf3387              # double 0.312745
	.quad	0x3fbbf3e0370cdc87              # double 0.10919
	.quad	0x3fe41cc100e6afcd              # double 0.62851000000000001
	.quad	0x3fef2a60913a4f87              # double 0.97392299999999998
	.quad	0x3fce2a0a958537e3              # double 0.23565800000000001
	.quad	0x3fe6a2fcefaa4767              # double 0.70739600000000002
	.quad	0x3fc02c9081c2e33f              # double 0.12636
	.quad	0x3fc5d96e9bbf0dc7              # double 0.17069799999999999
	.quad	0x3fd899d883ba3444              # double 0.38439000000000001
	.quad	0x3fd672de43ed959a              # double 0.35076099999999999
	.quad	0x3fd2cefed634549b              # double 0.29388399999999998
	.quad	0x3fdefcb0c026cc1d              # double 0.48417300000000002
	.quad	0x3fe4042528ae74f3              # double 0.62550600000000001
	.quad	0x3fca55a7d24180d4              # double 0.20573900000000001
	.quad	0x3feaf11f926c7eae              # double 0.84193399999999996
	.quad	0x3fec911f0c34c1a9              # double 0.89271500000000004
	.quad	0x3fe6db09a671ef31              # double 0.71423800000000004
	.quad	0x3fe33cf0b6b6e0d2              # double 0.60118899999999997
	.quad	0x3fc5cf1c3265adda              # double 0.17038300000000001
	.quad	0x3fde9ef5232d2bb2              # double 0.47845199999999999
	.quad	0x3fe1cb9cb6848beb              # double 0.55610499999999996
	.quad	0x3fe9122962cfd8f1              # double 0.78346700000000002
	.quad	0x3fefbc4f3ba775fb              # double 0.99173699999999997
	.quad	0x3fc92d44dca8e2e3              # double 0.19669400000000001
	.quad	0x3fd4e6d9be4cd749              # double 0.32658999999999999
	.quad	0x3fd07867f0aa21a7              # double 0.25734899999999999
	.quad	0x3fd77ae5796bfca8              # double 0.36687599999999998
	.quad	0x3fd64e874c8ffb8b              # double 0.34854299999999999
	.quad	0x3fed453f39d1b2e6              # double 0.91470300000000004
	.quad	0x3fd77d77fae3608d              # double 0.367033
	.quad	0x3fd87f3cf70153bd              # double 0.382766
	.quad	0x3fb439cd8127b2cc              # double 0.079006999999999994
	.quad	0x3fc3533f42352eb6              # double 0.150978
	.quad	0x3fd8de8f6cefed63              # double 0.38858399999999998
	.quad	0x3fdb0c62e4d1a650              # double 0.42263099999999998
	.quad	0x3feb52007dd44135              # double 0.85375999999999996
	.quad	0x3fb3bedb7281fd9c              # double 0.077131000000000005
	.quad	0x3fde7f993d5347a6              # double 0.47653800000000002
	.quad	0x3fe355b6805a2d73              # double 0.604213
	.quad	0x3fee5929670196d9              # double 0.948384
	.quad	0x3fdea4e7ab756430              # double 0.47881499999999999
	.quad	0x3fd86f7a0b5ed8d3              # double 0.38180399999999998
	.quad	0x3fe24197e5647347              # double 0.57050699999999999
	.quad	0x3fc4ba6aca793576              # double 0.161939
	.quad	0x3feee138fffbce42              # double 0.96499299999999999
	.quad	0x3fec4ca70d1fa333              # double 0.88435699999999995
	.quad	0x3fcb6238da3c2118              # double 0.21393499999999999
	.quad	0x3fe3134699418506              # double 0.59610300000000005
	.quad	0x3fe795e9e1b089a0              # double 0.73704999999999998
	.quad	0x3fe66a1405708249              # double 0.70044899999999999
	.quad	0x3fe67eef5ec80c74              # double 0.70299500000000004
	.quad	0x3fe2d44998d045fe              # double 0.58841399999999999
	.quad	0x3fd7a159817b95a3              # double 0.36922300000000002
	.quad	0x3fce234a87e38eb0              # double 0.23545199999999999
	.quad	0x3fb1e1d2178f68be              # double 0.069851999999999997
	.quad	0x3fed1ee675147f13              # double 0.910022
	.quad	0x3fec15d701d9f4d3              # double 0.87766599999999995
	.quad	0x3fdf9f44d4456712              # double 0.49409599999999998
	.quad	0x3fe122c881e4712e              # double 0.53549599999999997
	.quad	0x3fe7e0a84be40421              # double 0.746174
	.quad	0x3fb5abd1aa821f2a              # double 0.084653000000000006
	.quad	0x3fdbf8b588e368f1              # double 0.43705500000000003
	.quad	0x3fcafe3f359ff4fd              # double 0.21088399999999999
	.quad	0x3fe3d275ee99a62f              # double 0.61944100000000002
	.quad	0x3fe66de97d06bbdc              # double 0.70091700000000001
	.quad	0x3fd851159c497742              # double 0.37994899999999998
	.quad	0x3faab90a7829068a              # double 0.052193000000000003
	.quad	0x3fee9344806290ef              # double 0.95547700000000002
	.quad	0x3feb9ff4fd6d7e89              # double 0.86327600000000004
	.quad	0x3fe9360f1b25f634              # double 0.78784900000000002
	.quad	0x3fd584167a95c854              # double 0.33618700000000001
	.quad	0x3fe3882f0e0a84be              # double 0.61037399999999997
	.quad	0x3fd6badc0980b242              # double 0.355155
	.quad	0x3fdfae3608d0891a              # double 0.495008
	.quad	0x3fe7f14983d79075              # double 0.74820399999999998
	.quad	0x3fbb6976bc1effa0              # double 0.10707800000000001
	.quad	0x3fb77ae5796bfca8              # double 0.091718999999999995
	.quad	0x3fe29b845564b663              # double 0.581484
	.quad	0x3fed98c5c9a34ca1              # double 0.92489900000000003
	.quad	0x3fd8bd4067cf1c32              # double 0.38655099999999998
	.quad	0x3fec95e7c8d19589              # double 0.89329899999999995
	.quad	0x3fdbdfbd6a593a2e              # double 0.435531
	.quad	0x3fe63a27ae9ab29e              # double 0.69459899999999997
	.quad	0x3fcbd44998d045fe              # double 0.217416
	.quad	0x3fd605425f202108              # double 0.34407100000000002
	.quad	0x3fd9fee2c98e53eb              # double 0.40618199999999999
	.quad	0x3fe87f822bbecaac              # double 0.76556500000000005
	.quad	0x3feb454de7ea5f85              # double 0.85221000000000002
	.quad	0x3fe4ef21f6cacd18              # double 0.65419099999999997
	.quad	0x3fac9e8815e39714              # double 0.055897000000000002
	.quad	0x3fd65e679463cfb3              # double 0.34951199999999999
	.quad	0x3feeb05532617c1c              # double 0.95902500000000001
	.quad	0x3fe6f4a3400b88ca              # double 0.71736299999999997
	.quad	0x3feca491afc04c8c              # double 0.89508900000000002
	.quad	0x3fa93708aac96cc6              # double 0.049248
	.quad	0x3fe8e2eb1c432ca5              # double 0.77769999999999995
	.quad	0x3fd079b77c02afde              # double 0.25742900000000002
	.quad	0x3feefbb9496249a1              # double 0.96822799999999997
	.quad	0x3fe21ed9dfdac68b              # double 0.56626600000000005
	.quad	0x3fb5845dc8323359              # double 0.084051000000000001
	.quad	0x3fe18a19c9d5a188              # double 0.54810800000000004
	.quad	0x3fdd9cbee807bbb6              # double 0.46269199999999999
	.quad	0x3feed9ad85dfa872              # double 0.96407200000000004
	.quad	0x3fea22749f0e4da1              # double 0.81670600000000004
	.quad	0x3fdc267c6b8b6955              # double 0.43984899999999999
	.quad	0x3fcf577963992c8c              # double 0.24485699999999999
	.quad	0x3fe8683c297bfa4c              # double 0.76272399999999995
	.quad	0x3fe07af640639d5e              # double 0.51500999999999997
	.quad	0x3fcc144028e4fb98              # double 0.21936800000000001
	.quad	0x3fc1285a921ccd96              # double 0.134044
	.quad	0x3feb4200c0f01fb8              # double 0.85180699999999998
	.quad	0x3fe21e8815e39714              # double 0.56622700000000004
	.quad	0x3f76cc5fbf83382e              # double 0.0055659999999999998
	.quad	0x3fbd3ec460ed80a1              # double 0.11423899999999999
	.quad	0x3fe41667b5f1bef5              # double 0.62773500000000004
	.quad	0x3fdb8dac258d5843              # double 0.43052200000000002
	.quad	0x3feab48909289dae              # double 0.834538
	.quad	0x3fbb3ce63a5c1c61              # double 0.10639800000000001
	.quad	0x3fef7a4a48f96e16              # double 0.98367800000000005
	.quad	0x3fe2ba1d323fee2d              # double 0.58521900000000004
	.quad	0x3fe414db59578a2b              # double 0.62754600000000005
	.quad	0x3fa67c8d1958969a              # double 0.043919
	.quad	0x3fde48adeebb341e              # double 0.473186
	.quad	0x3feda4e7ab756430              # double 0.92637999999999998
	.quad	0x3fca514c22ee4192              # double 0.20560600000000001
	.quad	0x3fdd19220ff54089              # double 0.45465899999999998
	.quad	0x3fedfacc4ef88b97              # double 0.93686499999999995
	.quad	0x3fea8c9539b88872              # double 0.82966099999999998
	.quad	0x3fd538f7985271bd              # double 0.33160200000000001
	.quad	0x3fb9af3a14cec41e              # double 0.10033
	.quad	0x3fdc9a2403148777              # double 0.44690800000000003
	.quad	0x3fe42cd5b6805a2d              # double 0.63047299999999995
	.quad	0x3fe80dd3fe1975f3              # double 0.75168800000000002
	.quad	0x3fc855f3519bd406              # double 0.19012299999999999
	.quad	0x3fe19ed7c6fbd274              # double 0.55064000000000002
	.quad	0x3fe8c69d7342edbb              # double 0.77424499999999996
	.quad	0x3fd8c942d490e66d              # double 0.38728400000000002
	.quad	0x3fdc04577d955715              # double 0.43776500000000002
	.quad	0x3fb6f87ad080b674              # double 0.089729000000000003
	.quad	0x3fd3080b673c4f3c              # double 0.29736600000000002
	.quad	0x3fcc09edbf8b9baa              # double 0.219053
	.quad	0x3fc025e99e94ab1d              # double 0.12615699999999999
	.quad	0x3fdd5604189374bc              # double 0.45837499999999998
	.quad	0x3fee890f733a8a40              # double 0.95423100000000005
	.quad	0x3fef06fcdee34fc6              # double 0.96960299999999999
	.quad	0x3fe8479d4d834092              # double 0.75874200000000003
	.quad	0x3fc6e13f4a98aa86              # double 0.17874899999999999
	.quad	0x3fe151b71758e219              # double 0.54122499999999996
	.quad	0x3fd50218def416be              # double 0.32825300000000002
	.quad	0x3fe464e48626f60e              # double 0.63731599999999999
	.quad	0x3fde199780baa583              # double 0.47031200000000001
	.quad	0x3fe34b662fdfc19c              # double 0.60295399999999999
	.quad	0x3fe35b4cc2507208              # double 0.60489499999999996
	.quad	0x3fe959817b95a294              # double 0.79217599999999999
	.quad	0x3fcd8c5436b8f9b1              # double 0.23084499999999999
	.quad	0x3fe658adab9f559b              # double 0.69832499999999997
	.quad	0x3fe7c0f238972043              # double 0.74230300000000005
	.quad	0x3feb6f1fddebd902              # double 0.85731500000000005
	.quad	0x3fc124b76f6d7625              # double 0.133933
	.quad	0x3fdb01fb82c2bd7f              # double 0.42199599999999998
	.quad	0x3fde15a4acf312b2              # double 0.47007100000000002
	.quad	0x3fd3dda48b652370              # double 0.31040299999999998
	.quad	0x3fe43c46d82ba5a0              # double 0.63235799999999998
	.quad	0x3fd3796bfca85cab              # double 0.304286
	.quad	0x3fcdc68ec52a411c              # double 0.232622
	.quad	0x3fdbe5bc87db2b34              # double 0.43589699999999998
	.quad	0x3fe3d2b6f19934f0              # double 0.61947200000000002
	.quad	0x3fca01040bfe3b04              # double 0.203156
	.quad	0x3fdc8359bc33f855              # double 0.445517
	.quad	0x3feefebaf102363b              # double 0.96859499999999998
	.quad	0x3fa6e5abc0e38a7e              # double 0.044720999999999997
	.quad	0x3fbd5af294dd7236              # double 0.11466899999999999
	.quad	0x3fe54db163baba7c              # double 0.66573400000000005
	.quad	0x3fe5bfdf7e8038a0              # double 0.67967200000000005
	.quad	0x3fae2a1b5c7cd899              # double 0.058915000000000002
	.quad	0x3fef7fef39085f4a              # double 0.98436699999999999
	.quad	0x3fd9a3ec02f2f987              # double 0.40062999999999999
	.quad	0x3fe0c2d490e66cb1              # double 0.523783
	.quad	0x3fd16c11a11233df              # double 0.27222099999999999
	.quad	0x3fe6d5193708aac9              # double 0.71351299999999995
	.quad	0x3fe36965f5275eea              # double 0.60661600000000004
	.quad	0x3fdbc0ce91c8eac0              # double 0.433643
	.quad	0x3fde1c9f72f76e61              # double 0.470497
	.quad	0x3fd4cb4aec8d5c74              # double 0.32490799999999997
	.quad	0x3fede9a4df47f994              # double 0.93477100000000001
	.quad	0x3fe00efdc9c4da90              # double 0.50183
	.quad	0x3fd5698fe69270b0              # double 0.33456799999999998
	.quad	0x3fe0082491afc04d              # double 0.50099400000000005
	.quad	0x3fdadd0d8cb07d0b              # double 0.419742
	.quad	0x3fde79f666234a88              # double 0.47619400000000001
	.quad	0x3fe02b92c061847f              # double 0.50531899999999996
	.quad	0x3fe302b628459967              # double 0.59408099999999997
	.quad	0x3fcc4c0df58c08b7              # double 0.22107099999999999
	.quad	0x3fd6cfb762d83c6d              # double 0.35642800000000002
	.quad	0x3fe2ccad57bc7f78              # double 0.58748500000000003
	.quad	0x3feeecfa69be09bb              # double 0.96642799999999995
	.quad	0x3fe3f345069a4df4              # double 0.62344599999999994
	.quad	0x3fb084e831ad2136              # double 0.064528000000000002
	.quad	0x3fd5edc7ef177a70              # double 0.342638
	.quad	0x3fe2d905c0336156              # double 0.58899199999999996
	.quad	0x3fd64e1a3f4666ed              # double 0.34851700000000002
	.quad	0x3fd4e1bd1ed9dfdb              # double 0.32627800000000001
	.quad	0x3fe39c79b34a44c8              # double 0.61285100000000003
	.quad	0x3fddc7000431bde8              # double 0.46527099999999999
	.quad	0x3fef2938de6ddf01              # double 0.97378200000000003
	.quad	0x3fefe642bf9830e4              # double 0.99685800000000002
	.quad	0x3fefbc21187e7c07              # double 0.99171500000000001
	.quad	0x3fd9317268d32831              # double 0.39364300000000002
	.quad	0x3f92f05a708ede55              # double 0.018495000000000001
	.quad	0x3fdc2f1ed17c5ef6              # double 0.44037599999999999
	.quad	0x3fe4a1dda059a73b              # double 0.64475899999999997
	.quad	0x3fe88d0edc3bd599              # double 0.76721899999999998
	.quad	0x3fed6d56b00ffda4              # double 0.91959699999999999
	.quad	0x3fda6d938151a438              # double 0.41293800000000003
	.quad	0x3fd94a9478c868ba              # double 0.395177
	.quad	0x3fc009917939a7c1              # double 0.12529199999999999
	.quad	0x3fdbfb8b26394fad              # double 0.43722800000000001
	.quad	0x3fa999bb2788db05              # double 0.050000999999999997
	.quad	0x3fd21bd61f5be5da              # double 0.28294900000000001
	.quad	0x3fd032830a0b1bbd              # double 0.253083
	.quad	0x3fd7ff4ba51a005c              # double 0.37495699999999998
	.quad	0x3fec009917939a7c              # double 0.87507299999999998
	.quad	0x3fe6ac5197a24895              # double 0.70853500000000003
	.quad	0x3fd66733ebbfd71b              # double 0.350049
	.quad	0x3fd2368ad6883772              # double 0.28457900000000003
	.quad	0x3fe6192ea52ef912              # double 0.69057400000000002
	.quad	0x3fe4ababead4f590              # double 0.64595599999999997
	.quad	0x3fd730f062d40aaf              # double 0.36236200000000002
	.quad	0x3fe5e138fffbce42              # double 0.68374299999999999
	.quad	0x3fe3c111ada76d98              # double 0.61731800000000003
	.quad	0x3fe8afec56d5cfab              # double 0.77147500000000002
	.quad	0x3f9509bf9c62a1b6              # double 0.020545000000000001
	.quad	0x3fa2c01e68a0d34a              # double 0.036622000000000002
	.quad	0x3fc3102363b25700              # double 0.14893000000000001
	.quad	0x3fe593c89f40a287              # double 0.67428999999999994
	.quad	0x3fc262456f75d9a1              # double 0.143624
	.quad	0x3fe914c447c30d30              # double 0.78378499999999995
	.quad	0x3fd8b05319828805              # double 0.38576199999999999
	.quad	0x3fe5b19a415f45e1              # double 0.67793000000000003
	.quad	0x3fe30baa582dbe7f              # double 0.59517399999999998
	.quad	0x3fe27c08fa7a8501              # double 0.57764099999999996
	.quad	0x3fdb734f82f51266              # double 0.42891299999999999
	.quad	0x3fe428869c66d374              # double 0.62994700000000003
	.quad	0x3fa397dd00f776c5              # double 0.038268000000000003
	.quad	0x3fe8862d40aaeafb              # double 0.76637900000000003
	.quad	0x3fe35350092ccf6c              # double 0.60392000000000001
	.quad	0x3fe8e536501e2585              # double 0.77798
	.quad	0x3fe2f1cfbb949625              # double 0.59201800000000004
	.quad	0x3fc06fef7c243dcd              # double 0.128416
	.quad	0x3f99bc77143393ab              # double 0.025132999999999999
	.quad	0x3fe77fc5479d4d83              # double 0.73434699999999997
	.quad	0x3fe226612839042e              # double 0.56718500000000005
	.quad	0x3fd6b7b6bb129025              # double 0.35496299999999997
	.quad	0x3fe1fb2cc70867ae              # double 0.56191100000000005
	.quad	0x3fe448e68e3ef284              # double 0.63389899999999999
	.quad	0x3fd4aa4766c6de76              # double 0.32289299999999999
	.quad	0x3fcbb05faebc408e              # double 0.21632000000000001
	.quad	0x3fc6b66b6177ea1c              # double 0.17744199999999999
	.quad	0x3fe752bd3c361134              # double 0.72885
	.quad	0x3febea39c51dabe2              # double 0.87234199999999995
	.quad	0x3fc15c6c11a11234              # double 0.135633
	.quad	0x3fe14f5d35653c9b              # double 0.54093800000000003
	.quad	0x3fecbf20a73f748a              # double 0.89833099999999999
	.quad	0x3fe3857d1782d384              # double 0.61004499999999995
	.quad	0x3fe0972ef0ae5365              # double 0.518455
	.quad	0x3fe301e8a2ec28b3              # double 0.59398300000000004
	.quad	0x3fe24f4c6e6d9be5              # double 0.57218000000000002
	.quad	0x3f559c49774256bd              # double 0.0013190000000000001
	.quad	0x3fd3db940fecdd0e              # double 0.31027700000000003
	.quad	0x3fea06d71f36262d              # double 0.81333500000000003
	.quad	0x3fef6317268d3283              # double 0.98084599999999999
	.quad	0x3fe2defe93187619              # double 0.58972100000000005
	.quad	0x3fec5393250b5244              # double 0.88520200000000004
	.quad	0x3fedd4cfd08d4bad              # double 0.93222799999999995
	.quad	0x3faecd8dbcec84f9              # double 0.060162
	.quad	0x3fec51c5c5718eb9              # double 0.88498200000000005
	.quad	0x3fd06cdaf4adbc66              # double 0.25664399999999998
	.quad	0x3fe29c7de5082cf5              # double 0.58160299999999998
	.quad	0x3fd87bb73083558a              # double 0.38255099999999997
	.quad	0x3fe97d21ff2e48e9              # double 0.79652500000000004
	.quad	0x3fea257646ae3a3b              # double 0.81707300000000005
	.quad	0x3febd7d3910c2c5e              # double 0.87009599999999998
	.quad	0x3fd532bdc26dce3a              # double 0.33122200000000002
	.quad	0x3fdde481f53825e1              # double 0.46707199999999999
	.quad	0x3fe96a550870110a              # double 0.79422999999999999
	.quad	0x3fbd32d6ece13f4b              # double 0.11405700000000001
	.quad	0x3fed5e56cd6c2efd              # double 0.91776599999999997
	.quad	0x3fe549adc8fb86f4              # double 0.66524399999999995
	.quad	0x3fd4c33f85510d39              # double 0.32441700000000001
	.quad	0x3fed5573647baa9b              # double 0.91668099999999997
	.quad	0x3fc0b9f559b3d07d              # double 0.13067500000000001
	.quad	0x3feaf56861e92924              # double 0.84245700000000001
	.quad	0x3fe662b8c75c4a84              # double 0.69955100000000003
	.quad	0x3fd3d0e560418937              # double 0.30962499999999998
	.quad	0x3fd248e043a21640              # double 0.28569800000000001
	.quad	0x3fee861e92923e5c              # double 0.95387200000000005
	.quad	0x3fcde26916440f24              # double 0.23347200000000001
	.quad	0x3fd2dcd2d44dca8e              # double 0.29472799999999999
	.quad	0x3fe2c4ae85b9e8c4              # double 0.58650899999999995
	.quad	0x3fd36d22424a276b              # double 0.30353599999999997
	.quad	0x3fe507b99d451fc5              # double 0.65719300000000003
	.quad	0x3fe531e9f2778141              # double 0.66234300000000002
	.quad	0x3fe258409e55c0fd              # double 0.57327300000000003
	.quad	0x3fe637e6f71a7e31              # double 0.69432400000000005
	.quad	0x3fe376837f7be122              # double 0.60821700000000001
	.quad	0x3fb8787485e3da30              # double 0.095588000000000006
	.quad	0x3fd018d6909aed57              # double 0.25151600000000002
	.quad	0x3fec2aa7ded6ba8c              # double 0.88020699999999996
	.quad	0x3fabaeee957470eb              # double 0.054068999999999999
	.quad	0x3fe4f1c970f7b9e0              # double 0.65451499999999996
	.quad	0x3fcda13c254a3c64              # double 0.23148299999999999
	.quad	0x3fca4cbe1eb4202e              # double 0.20546700000000001
	.quad	0x3fcf18b0d0edc3bd              # double 0.24294099999999999
	.quad	0x3fe43524399b2c41              # double 0.63148700000000002
	.quad	0x3fd68fc9363f572e              # double 0.35252600000000001
	.quad	0x3fef8a43bb40b34e              # double 0.98562799999999995
	.quad	0x3fe04d65e4606749              # double 0.50944800000000001
	.quad	0x3f9d9fd36f7e3d1d              # double 0.028930000000000001
	.quad	0x3fa4f1a1986b9c30              # double 0.040905999999999998
	.quad	0x3fe43d9231c64ba9              # double 0.63251599999999997
	.quad	0x3fe35ec5f394b7b3              # double 0.60531900000000005
	.quad	0x3fe253c579f23465              # double 0.57272599999999996
	.quad	0x3f8c67dfe32a0664              # double 0.01387
	.quad	0x3fe1cb4aec8d5c74              # double 0.55606599999999995
	.quad	0x3fd06594af4f0d84              # double 0.25619999999999998
	.quad	0x3fc425b749adc8fc              # double 0.15740100000000001
	.quad	0x3fe66b313be22e5e              # double 0.70058500000000001
	.quad	0x3fcc525892684cf0              # double 0.22126299999999999
	.quad	0x3f9a48b652370479              # double 0.025668
	.quad	0x3fe764606748e475              # double 0.73100299999999996
	.quad	0x3fce60f5e41d4b6a              # double 0.23733399999999999
	.quad	0x3fd9e5ffa3b9ae0c              # double 0.40466299999999999
	.quad	0x3fb0050bd87b56b8              # double 0.062576999999999994
	.quad	0x3fa18915bdd76684              # double 0.034249000000000002
	.quad	0x3fe74fdd22856606              # double 0.72849900000000001
	.quad	0x3fd33400b88ca3e8              # double 0.30004900000000001
	.quad	0x3fe376f6d7625205              # double 0.60827200000000003
	.quad	0x3fd7131a8ef77f28              # double 0.360541
	.quad	0x3feeacdc011d3672              # double 0.95860100000000004
	.quad	0x3fc7b2702a3486f0              # double 0.18513299999999999
	.quad	0x3fd06e8f29d40ee0              # double 0.25674799999999998
	.quad	0x3fe34f54d1e96c40              # double 0.60343400000000003
	.quad	0x3fe15bff04577d95              # double 0.54247999999999996
	.quad	0x3fdd441bb8c32a8d              # double 0.45728200000000002
	.quad	0x3feded02cd39da16              # double 0.93518199999999996
	.quad	0x3fe24197e5647347              # double 0.57050699999999999
	.quad	0x3fe85f30e7ff583a              # double 0.76161999999999996
	.quad	0x3fe1f38a3b57c4e3              # double 0.56097900000000001
	.quad	0x3fe006e7e62dc6e3              # double 0.50084300000000004
	.quad	0x3fe2be4cd7492791              # double 0.58572999999999997
	.quad	0x3fdd7ad4b2745bf2              # double 0.46062199999999998
	.quad	0x3feccdcca70d1fa3              # double 0.90012199999999998
	.quad	0x3fd825742dcf4624              # double 0.37728600000000001
	.quad	0x3fd74662bae03b3f              # double 0.36367100000000002
	.quad	0x3febcc07aaef2c73              # double 0.86865599999999998
	.quad	0x3fea72a9d627bf62              # double 0.82649700000000004
	.quad	0x3fcf96f21f6cacd2              # double 0.24679400000000001
	.quad	0x3fe03f811f4f50a0              # double 0.50775199999999998
	.quad	0x3fdf91212513b5bf              # double 0.49323299999999998
	.quad	0x3fe5178f68be2f7b              # double 0.65912599999999999
	.quad	0x3fdd9513f8db4891              # double 0.46222400000000002
	.quad	0x3fef1b499d0203e6              # double 0.97208099999999997
	.quad	0x3fcc6ad2dcb1465f              # double 0.22201000000000001
	.quad	0x3fd654ac29bf162b              # double 0.34891800000000001
	.quad	0x3fd8f893faf42785              # double 0.39017200000000002
	.quad	0x3fc21af7d30ad46f              # double 0.14144799999999999
	.quad	0x3fed32df505d0fa6              # double 0.91246000000000005
	.quad	0x3fec40b135979182              # double 0.88289700000000004
	.quad	0x3fc703ea704bc276              # double 0.17980699999999999
	.quad	0x3fe40a5ce5b4245f              # double 0.62626499999999996
	.quad	0x3fe72b4fa48301a8              # double 0.72403700000000004
	.quad	0x3fd23b96af038e2a              # double 0.284887
	.quad	0x3fe9d1b2e59af9ec              # double 0.806848
	.quad	0x3fe8f0d62bf11f92              # double 0.77939899999999995
	.quad	0x3fbede00d1b71759              # double 0.120575
	.quad	0x3fedf77af640639d              # double 0.93645999999999996
	.quad	0x3fecd2630ec31162              # double 0.90068199999999998
	.quad	0x3fdbeac42e9899bf              # double 0.43620399999999998
	.quad	0x3fee9fddebd9018e              # double 0.95701499999999995
	.quad	0x3fd013879c4113c7              # double 0.25119200000000003
	.quad	0x3fe3b990afe60c39              # double 0.61640200000000001
	.quad	0x3fefc8cd63cb8173              # double 0.99326199999999997
	.quad	0x3fd680e8c8abd5dc              # double 0.35161799999999999
	.quad	0x3fe9d379fa97e133              # double 0.80706500000000003
	.quad	0x3fe80140dd3fe197              # double 0.75015299999999996
	.quad	0x3fec413fd0d0678c              # double 0.88296499999999999
	.quad	0x3fea9ee2435696e6              # double 0.83189500000000005
	.quad	0x3fb9515054ac29bf              # double 0.098896999999999999
	.quad	0x3fef2be0589acbc9              # double 0.97410600000000002
	.quad	0x3fb1fa333764f11b              # double 0.070223999999999995
	.quad	0x3fdb80cb6c7a7c9e              # double 0.42973600000000001
	.quad	0x3fedbc9cd3e0bd45              # double 0.92927400000000004
	.quad	0x3fef646cfc829cfe              # double 0.98100900000000002
	.quad	0x3f7113836a832b99              # double 0.004169
	.quad	0x3fc432d2bb23571d              # double 0.157801
	.quad	0x3fe02bba98eda22f              # double 0.50533799999999995
	.quad	0x3fe907ad080b673c              # double 0.78218699999999996
	.quad	0x3fe76d43d03968d7              # double 0.73208799999999996
	.quad	0x3feff4a1272c94b4              # double 0.99861200000000005
	.quad	0x3fe4272862f5989e              # double 0.62978000000000001
	.quad	0x3fe98af1cb89d6ae              # double 0.798211
	.quad	0x3fdb30be0ded288d              # double 0.42485000000000001
	.quad	0x3feef318fc504817              # double 0.967175
	.quad	0x3fa650a45d41fa76              # double 0.043583999999999998
	.quad	0x3fb15ee136e71cda              # double 0.067853999999999998
	.quad	0x3fe2a3cea6c1a049              # double 0.58249600000000001
	.quad	0x3fc4ed6fda836eb5              # double 0.163496
	.quad	0x3fd1b912dba4d6e4              # double 0.27692099999999997
	.quad	0x3fed7a1e3eaf6838              # double 0.921157
	.quad	0x3fd58216c61522a7              # double 0.336065
	.quad	0x3fe3e4302b40f66a              # double 0.62160499999999996
	.quad	0x3fe721e3eaf6837f              # double 0.72288699999999995
	.quad	0x3fe1f9c62a1b5c7d              # double 0.56174000000000002
	.quad	0x3fd329d40ee06d94              # double 0.29942800000000003
	.quad	0x3fe21ef5232d2bb2              # double 0.56627899999999998
	.quad	0x3fd19f623076c051              # double 0.27535300000000001
	.quad	0x3fe976ad70e6f2e9              # double 0.79573700000000003
	.quad	0x3fea45aa2e3c536d              # double 0.82100399999999996
	.quad	0x3fb4e5f7403dddb1              # double 0.081633999999999998
	.quad	0x3fe9c812be48a58b              # double 0.80567299999999997
	.quad	0x3fa4c5974e65bea1              # double 0.040570000000000002
	.quad	0x3fe8dd4c76d117b5              # double 0.77701399999999998
	.quad	0x3fd911b1d92b7fe1              # double 0.39170500000000003
	.quad	0x3fe3446d82ba5a04              # double 0.60210300000000005
	.quad	0x3fe4713f077ccc03              # double 0.63882399999999995
	.quad	0x3fc7f0aa21a719b5              # double 0.187032
	.quad	0x3fc2b8c75c4a83b2              # double 0.14626400000000001
	.quad	0x3feab02b40f66a55              # double 0.834005
	.quad	0x3fef135daad60200              # double 0.97111400000000003
	.quad	0x3fd409dcf893faf4              # double 0.31310199999999999
	.quad	0x3fe20e219652bd3c              # double 0.56422499999999998
	.quad	0x3fd5bee3d5fdcdf7              # double 0.33977600000000002
	.quad	0x3fd960ae9680e065              # double 0.39652599999999999
	.quad	0x3fe56325d4a5df22              # double 0.66835299999999997
	.quad	0x3fe2e74299d883ba              # double 0.59072999999999998
	.quad	0x3fd4daa92e62131b              # double 0.32584600000000002
	.quad	0x3fd01016ce789e77              # double 0.25098199999999998
	.quad	0x3fca39f77292c493              # double 0.20489399999999999
	.quad	0x3fe6196312f4cf4a              # double 0.69059899999999996
	.quad	0x3fe6b5c182ecaeea              # double 0.70968699999999996
	.quad	0x3fe5bf0bae89eba7              # double 0.67957100000000004
	.quad	0x3fabc03bc4d22c88              # double 0.054200999999999999
	.quad	0x3faab777d0f1f57b              # double 0.052180999999999998
	.quad	0x3fe21a2a4db163bb              # double 0.56569400000000003
	.quad	0x3fd0a77e5eaab042              # double 0.26022299999999998
	.quad	0x3fecd04816f0068e              # double 0.90042500000000003
	.quad	0x3fed0de6ddf00abf              # double 0.90794699999999995
	.quad	0x3fef94f26aec0725              # double 0.98693200000000003
	.quad	0x3fac65a57646ae3a              # double 0.055462999999999998
	.quad	0x3fcc49e44fa05144              # double 0.22100500000000001
	.quad	0x3fc2a1059ea57215              # double 0.145539
	.quad	0x3fd92df0d413122b              # double 0.39342899999999997
	.quad	0x3fae90ff97247454              # double 0.059700000000000003
	.quad	0x3fda3c64345cfedf              # double 0.40993600000000002
	.quad	0x3fe8687b139c94f7              # double 0.76275400000000004
	.quad	0x3fc0d1e96c3fc43b              # double 0.131406
	.quad	0x3fc773d9ec700043              # double 0.183223
	.quad	0x3fee4e874c8ffb8b              # double 0.94708599999999998
	.quad	0x3fe007cc7d1bb491              # double 0.50095199999999995
	.quad	0x3fed47b24638c975              # double 0.91500199999999998
	.quad	0x3fc831bde82d7b63              # double 0.18901799999999999
	.quad	0x3febfb9170d62bf1              # double 0.87445899999999999
	.quad	0x3fe6e805a2d72ffd              # double 0.71582299999999999
	.quad	0x3fe96d2aa5c5f7c6              # double 0.79457599999999995
	.quad	0x3fefd2fa0d77b7c8              # double 0.99450400000000005
	.quad	0x3fe6b72e6a76965f              # double 0.70986099999999996
	.quad	0x3fdcb32ce89656ef              # double 0.448436
	.quad	0x3fe9b2f87ad080b6              # double 0.80309699999999995
	.quad	0x3fcec2df0d413123              # double 0.24032200000000001
	.quad	0x3fb676ea4228997c              # double 0.087751999999999997
	.quad	0x3fd8f75536933a04              # double 0.390096
	.quad	0x3fecc628027d88c2              # double 0.89918900000000002
	.quad	0x3fe4b220791c4b90              # double 0.64674399999999999
	.quad	0x3fdfd655e28aa433              # double 0.49745699999999998
	.quad	0x3fd0b0b39192641b              # double 0.26078499999999999
	.quad	0x3fe50385c67dfe33              # double 0.65668000000000004
	.quad	0x3fe9708893b7d849              # double 0.794987
	.quad	0x3fe294f0520d130e              # double 0.580681
	.quad	0x3fbec8e68e3ef284              # double 0.120253
	.quad	0x3fc8d2b2bfdb4cc2              # double 0.19392999999999999
	.quad	0x3fd469a0ad8a1166              # double 0.31894699999999998
	.quad	0x3fed8e8427418d69              # double 0.923647
	.quad	0x3fa227d028a1dfb9              # double 0.035459999999999998
	.quad	0x3fe9562174c4cdfb              # double 0.79176400000000002
	.quad	0x3fe3980b242070b9              # double 0.61231000000000002
	.quad	0x3fef767b1c0010c7              # double 0.983213
	.quad	0x3fdc62e90364388f              # double 0.44353700000000001
	.quad	0x3feb8225742dcf46              # double 0.85963699999999998
	.quad	0x3fb55e28aa433509              # double 0.083468000000000001
	.quad	0x3fe639389b52007e              # double 0.69448500000000002
	.quad	0x3fe9b8c9752977c9              # double 0.80380700000000005
	.quad	0x3fe19dfdac68a937              # double 0.55053600000000003
	.quad	0x3f88af3e468cac4b              # double 0.012052999999999999
	.quad	0x3fcd82dbe7f2c301              # double 0.23055600000000001
	.quad	0x3fd7cd141a6937d2              # double 0.371892
	.quad	0x3fda4f7ec3547e07              # double 0.41110200000000002
	.quad	0x3fc46aca79357604              # double 0.15950900000000001
	.quad	0x3f9bc59b8023a6ce              # double 0.027120999999999999
	.quad	0x3fd6e90ff9724745              # double 0.35797499999999999
	.quad	0x3fdffb65668c2614              # double 0.49971900000000002
	.quad	0x3fd3d0c3d25247cb              # double 0.30961699999999998
	.quad	0x3fa84988094e5d5b              # double 0.047435999999999999
	.quad	0x3fe0454152b0a6fc              # double 0.50845399999999996
	.quad	0x3fd9eb074a771c97              # double 0.40497
	.quad	0x3fe02fc69728a611              # double 0.50583199999999995
	.quad	0x3fefd91ab8e8ea3a              # double 0.99525200000000003
	.quad	0x3fd9605ee568a505              # double 0.396507
	.quad	0x3f87f950b955f783              # double 0.011705999999999999
	.quad	0x3fe56e17a02fb5d0              # double 0.66968899999999998
	.quad	0x3fd0850df15a4acf              # double 0.25812099999999999
	.quad	0x3feefa7eb6bf444e              # double 0.96807799999999999
	.quad	0x3fcd4fd6d7e889c2              # double 0.22899900000000001
	.quad	0x3fd33ac4f7ec3548              # double 0.30046200000000001
	.quad	0x3fe8c12ad81adea9              # double 0.77358000000000005
	.quad	0x3feee188b11409a2              # double 0.96503099999999997
	.quad	0x3fd7c0b9991361dd              # double 0.37113800000000002
	.quad	0x3fe6be81450efdca              # double 0.71075500000000003
	.quad	0x3fd4a0620ab71327              # double 0.32228899999999999
	.quad	0x3fd2e0c9d9d3458d              # double 0.29497000000000001
	.quad	0x3fe7c1461b6d43d0              # double 0.74234299999999998
	.quad	0x3febc9fd7a13c255              # double 0.86840700000000004
	.quad	0x3fd95532617c1bda              # double 0.39582499999999998
	.quad	0x3fe8983d790752db              # double 0.76858400000000004
	.quad	0x3f8adea897635e74              # double 0.01312
	.quad	0x3fccf1bac2df0d41              # double 0.22612699999999999
	.quad	0x3fed89cc319c5a3e              # double 0.92307099999999997
	.quad	0x3fdd6f08cc575c07              # double 0.45990199999999998
	.quad	0x3fec7709b738e6d1              # double 0.88953099999999996
	.quad	0x3fe62aa3ad18d25f              # double 0.69270500000000002
	.quad	0x3fc1dcd7060bb2bc              # double 0.13955200000000001
	.quad	0x3fa95379fa97e133              # double 0.049465000000000002
	.quad	0x3feadeebb341e14c              # double 0.83971200000000001
	.quad	0x3fd6becaab8a5ce6              # double 0.35539500000000002
	.quad	0x3fe06b3fe9fadafd              # double 0.51309199999999999
	.quad	0x3fdf2ea0fd3b29a2              # double 0.48722100000000002
	.quad	0x3fedc92ddbdb5d89              # double 0.93080799999999997
	.quad	0x3fc367c286f8ad25              # double 0.15160399999999999
	.quad	0x3fe8ac79702e6645              # double 0.77105400000000002
	.quad	0x3fe1163779e9d0ea              # double 0.53396200000000005
	.quad	0x3fb941a6937d1fe6              # double 0.098657999999999995
	.quad	0x3fdfab8a5ce5b424              # double 0.49484499999999998
	.quad	0x3fe73e63e8dda48b              # double 0.72636599999999996
	.quad	0x3fc2eb0b7c3504c5              # double 0.14779800000000001
	.quad	0x3fe9df090f733a8a              # double 0.80847599999999997
	.quad	0x3fdfbf26f1dc50ce              # double 0.49604199999999998
	.quad	0x3fdfdd76683c297c              # double 0.497892
	.quad	0x3f9700cd855970b5              # double 0.022464000000000001
	.quad	0x3fe2a5c1c6088d6d              # double 0.58273399999999997
	.quad	0x3feeddfeb8d82342              # double 0.96459899999999998
	.quad	0x3fef5dc4007570c5              # double 0.98019599999999995
	.quad	0x3fcb45d851654d62              # double 0.21306900000000001
	.quad	0x3fdf49b62c77574f              # double 0.48887399999999998
	.quad	0x3fc8eca686e7e62e              # double 0.19472200000000001
	.quad	0x3fd8bfb58d1526d9              # double 0.38670100000000002
	.quad	0x3fcbf84449dbec25              # double 0.21851400000000001
	.quad	0x3fe44fbb9496249a              # double 0.63473299999999999
	.quad	0x3feea958537e2c56              # double 0.95817200000000002
	.quad	0x3fee21db877ab325              # double 0.94163300000000005
	.quad	0x3fd833f42352eb5f              # double 0.37817099999999998
	.quad	0x3fc2db163baba7b9              # double 0.147311
	.quad	0x3fb01b10fd7e4580              # double 0.062912999999999997
	.quad	0x3fcc2bd7f51efb6e              # double 0.22008800000000001
	.quad	0x3fe251c9f72f76e6              # double 0.57248399999999999
	.quad	0x3fbd842b734b5137              # double 0.115298
	.quad	0x3feacba732df505d              # double 0.83735999999999999
	.quad	0x3fee84662bae03b4              # double 0.953662
	.quad	0x3fe8f8183f91e647              # double 0.78028500000000001
	.quad	0x3fddbbf50e347629              # double 0.46459699999999998
	.quad	0x3fef934699418506              # double 0.98672800000000005
	.quad	0x3f93797460242d06              # double 0.019018
	.quad	0x3fed246173b85e81              # double 0.91069100000000003
	.quad	0x3fe44050bd87b56c              # double 0.63285100000000005
	.quad	0x3fe12b29e4d5d80e              # double 0.53651899999999997
	.quad	0x3fdb5ac03ff69015              # double 0.42741400000000002
	.quad	0x3fd2e14bdfd2630f              # double 0.29500100000000001
	.quad	0x3fe6a6d2674080fa              # double 0.70786400000000005
	.quad	0x3fdfbdb1a6d698fe              # double 0.49595299999999998
	.quad	0x3fe77d8adab9f55a              # double 0.73407500000000003
	.quad	0x3fc0fa26a22b3893              # double 0.132634
	.quad	0x3fc66fbd273d5bab              # double 0.175285
	.quad	0x3fb48dd1e53a81dc              # double 0.080288999999999999
	.quad	0x3fe74b6848beb5b3              # double 0.72795500000000002
	.quad	0x3fd3cecc814d727a              # double 0.30949700000000002
	.quad	0x3fe8f12c27a63737              # double 0.77944000000000002
	.quad	0x3fc73f63c31df762              # double 0.18162200000000001
	.quad	0x3fe0a5a250f84018              # double 0.52021899999999999
	.quad	0x3febdfa00e27e0f0              # double 0.87104800000000004
	.quad	0x3febd5c31593e5fb              # double 0.86984399999999995
	.quad	0x3fcd56c0d6f544bb              # double 0.22921
	.quad	0x3fe5e91c8eabffce              # double 0.68470600000000004
	.quad	0x3fe25529fe004b7f              # double 0.57289599999999996
	.quad	0x3fd66191148fd9fd              # double 0.34970499999999999
	.quad	0x3fef039042d8c2a4              # double 0.96918499999999996
	.quad	0x3fb2ff5c6c11a112              # double 0.074208999999999997
	.quad	0x3f8451fc4c165908              # double 0.0099220000000000002
	.quad	0x3fd58ba40d90e23b              # double 0.336648
	.quad	0x3fce50507a6bd6e9              # double 0.23682600000000001
	.quad	0x3fe8230984e3ffef              # double 0.75427699999999998
	.quad	0x3fd5512231832fcb              # double 0.33307700000000001
	.quad	0x3fec26a22b3892ef              # double 0.87971600000000005
	.quad	0x3fc61c6088d6d3b7              # double 0.17274100000000001
	.quad	0x3fcb220ff540895d              # double 0.211977
	.quad	0x3fdd3621fafc8b00              # double 0.45642899999999997
	.quad	0x3fefaf3a14cec41e              # double 0.99014000000000002
	.quad	0x3fd87b30f8c64fdb              # double 0.382519
	.quad	0x3feb05ee568a5050              # double 0.84447399999999995
	.quad	0x3fead1d68c692f6f              # double 0.83811500000000005
	.quad	0x3fc260807357e671              # double 0.14357
	.quad	0x3fe680cb6c7a7c9e              # double 0.70322200000000001
	.quad	0x3fd29830e3cd9a52              # double 0.29053899999999999
	.quad	0x3fea00f776c4827b              # double 0.81261799999999995
	.quad	0x3fe43e4cd7492791              # double 0.63260499999999997
	.quad	0x3fe378ceb356da01              # double 0.60849699999999995
	.quad	0x3fe6ce0114d2f5dc              # double 0.71264700000000003
	.quad	0x3fd2800eae18ac9f              # double 0.28906599999999999
	.quad	0x3fe1b417ca2120e2              # double 0.553234
	.quad	0x3fe219ac79702e66              # double 0.56563399999999997
	.quad	0x3fc62a80064a9cdc              # double 0.17317199999999999
	.quad	0x3fd091e646f15619              # double 0.258905
	.quad	0x3fe180c9539b8887              # double 0.54697099999999998
	.quad	0x3feb0cf7caa7589f              # double 0.845333
	.quad	0x3fde180d3cff64d0              # double 0.47021800000000002
	.quad	0x3fc67cd035371972              # double 0.17568400000000001
	.quad	0x3fe8f18c9fb6134d              # double 0.77948600000000001
	.quad	0x3fbbc9abb01c92de              # double 0.108546
	.quad	0x3fd4292817763e4b              # double 0.31501200000000001
	.quad	0x3fe7865b63d3e4ef              # double 0.735151
	.quad	0x3fdf6aceaaf35e31              # double 0.490894
	.quad	0x3fe32f9ebe9c8861              # double 0.59956299999999996
	.quad	0x3fcb3300de4c5111              # double 0.21249399999999999
	.quad	0x3fe5679463cfb331              # double 0.66889399999999999
	.quad	0x3fecc13986338b48              # double 0.89858700000000002
	.quad	0x3fecd7f51efb6dca              # double 0.901362
	.quad	0x3fbf9f666234a87e              # double 0.123526
	.quad	0x3fdcb5fa22706d50              # double 0.44860699999999998
	.quad	0x3fd43d9231c64ba9              # double 0.31625799999999998
	.quad	0x3fce016052502eec              # double 0.23441699999999999
	.quad	0x3fe3941e9af5ba2c              # double 0.61183100000000001
	.quad	0x3fde1fa333764f12              # double 0.47068100000000002
	.quad	0x3fe3de13b18dac26              # double 0.62085900000000005
	.quad	0x3feec69728a61177              # double 0.96174199999999998
	.quad	0x3fd33c03bc4d22c9              # double 0.30053800000000003
	.quad	0x3fea68709741d085              # double 0.82524900000000001
	.quad	0x3fc77a786c22680a              # double 0.183425
	.quad	0x3fe986f8ad256799              # double 0.79772600000000005
	.quad	0x3fd22b884406c00e              # double 0.28390700000000002
	.quad	0x3fe6f8055fbb517a              # double 0.71777599999999997
	.quad	0x3fef1c0ca600b029              # double 0.97217399999999998
	.quad	0x3fd06a2f48c2e771              # double 0.25648100000000001
	.quad	0x3fa2e7f6f4be835e              # double 0.036926
	.quad	0x3fec77574f722e1b              # double 0.88956800000000003
	.quad	0x3feb7d1782d38477              # double 0.85902000000000001
	.quad	0x3fe8374ff865d7cb              # double 0.75675199999999998
	.quad	0x3fe167b3d8e00086              # double 0.54390899999999998
	.quad	0x3fe12e2fbe33acd6              # double 0.53688800000000003
	.quad	0x3fcb892ee84ad795              # double 0.21512400000000001
	.quad	0x3fd5f64cf8d716d3              # double 0.34315800000000002
	.quad	0x3fef52a62aa1943a              # double 0.97883900000000001
	.quad	0x3fdc8d92fb19e732              # double 0.44614100000000001
	.quad	0x3fb0059210385c68              # double 0.062585000000000002
	.quad	0x3fc477e5eaab0425              # double 0.159909
	.quad	0x3fe2639713ad5bee              # double 0.57465699999999997
	.quad	0x3fe87fb8b26394fb              # double 0.76559100000000002
	.quad	0x3fc1fa76534373f3              # double 0.140456
	.quad	0x3fee914d2f5dbb9d              # double 0.955237
	.quad	0x3fdc9374bc6a7efa              # double 0.44650000000000001
	.quad	0x3fe7cd76ab5807ff              # double 0.74383100000000002
	.quad	0x3fe3b165d3996fa8              # double 0.61540499999999998
	.quad	0x3fc041e57d9dba91              # double 0.12701100000000001
	.quad	0x3fe9d460aa64c2f8              # double 0.80717499999999998
	.quad	0x3fe9b0d306a2b170              # double 0.80283499999999997
	.quad	0x3fd7f4e874c8ffb9              # double 0.37432300000000002
	.quad	0x3fc37a56de33269e              # double 0.152171
	.quad	0x3fe7436544fe36d2              # double 0.72697699999999998
	.quad	0x3fc4534bd76ee73e              # double 0.15879199999999999
	.quad	0x3fed8e8640208180              # double 0.92364800000000002
	.quad	0x3fec32e9ccb7d417              # double 0.88121499999999997
	.quad	0x3fe7cf8b588e368f              # double 0.744085
	.quad	0x3fed832fcac8e68e              # double 0.92226399999999997
	.quad	0x3fc62f944241c3f0              # double 0.17332700000000001
	.quad	0x3fedb9b66f9335d2              # double 0.92891999999999997
	.quad	0x3fe0dc853c148345              # double 0.52691900000000003
	.quad	0x3fed213e3e29307b              # double 0.91030800000000001
	.quad	0x3fd814e7ee9142b3              # double 0.376276
	.quad	0x3fbebcc6c54bcf0b              # double 0.12006799999999999
	.quad	0x3fe506cca2db61bb              # double 0.65708
	.quad	0x3fcbf42352eb5f5f              # double 0.218388
	.quad	0x3fdbcbbc2b94d940              # double 0.43430999999999997
	.quad	0x3fd49d0e991ff716              # double 0.32208599999999998
	.quad	0x3fef365a9a804966              # double 0.97538499999999995
	.quad	0x3fbc1ca3a4b5568f              # double 0.10981200000000001
	.quad	0x3feae82d7b634dad              # double 0.84084199999999998
	.quad	0x3fe79ccfaeff5c6c              # double 0.73789199999999999
	.quad	0x3fee61719f7f8ca8              # double 0.94939499999999998
	.quad	0x3fe53f8fcd67fd3f              # double 0.66400899999999996
	.quad	0x3fd6e0b0af5fd47c              # double 0.357464
	.quad	0x3fe58e8c8abd5dc4              # double 0.673651
	.quad	0x3fce982cb20fb225              # double 0.23901900000000001
	.quad	0x3fe55d54da4ce810              # double 0.66764299999999999
	.quad	0x3fdca6efc371da38              # double 0.447689
	.quad	0x3fe572ae07e5a78f              # double 0.67024899999999998
	.quad	0x3fe85b2f661f18ca              # double 0.761131
	.quad	0x3fd653c148344c38              # double 0.34886200000000001
	.quad	0x3fe6691a75cd0bb7              # double 0.70033000000000001
	.quad	0x3fe5f5e41d4b6a62              # double 0.68626600000000004
	.quad	0x3fe22c4d65e46067              # double 0.56790799999999997
	.quad	0x3fecf2ead9274e23              # double 0.90465300000000004
	.quad	0x3fb3a2ad3e920c07              # double 0.076701000000000005
	.quad	0x3f9544bb1af3a14d              # double 0.02077
	.quad	0x3fe576e1deacc921              # double 0.67076199999999997
	.quad	0x3fde3d6c72192210              # double 0.472499
	.quad	0x3fe322b1704ff434              # double 0.59798499999999999
	.quad	0x3fd8a20ddc619546              # double 0.38489099999999998
	.quad	0x3fdd392189bd8384              # double 0.45661200000000002
	.quad	0x3fcc40fa9c12f09e              # double 0.22073300000000001
	.quad	0x3fe3160956c0d6f5              # double 0.59643999999999997
	.quad	0x3fc600eae18ac9f3              # double 0.171903
	.quad	0x3fe799220ff54089              # double 0.73744299999999996
	.quad	0x3fd9cc20d5629d84              # double 0.403084
	.quad	0x3fede835dedf1e08              # double 0.93459599999999998
	.quad	0x3fef164628027d89              # double 0.97146900000000002
	.quad	0x3f9f88b97785729b              # double 0.030794999999999999
	.quad	0x3fcb8327674d1633              # double 0.21493999999999999
	.quad	0x3fe4e9a2c669057d              # double 0.65351999999999999
	.quad	0x3fd44aa9717df19d              # double 0.31705699999999998
	.quad	0x3fdd02b40f66a551              # double 0.45329000000000003
	.quad	0x3fe1c58255b035bd              # double 0.55535999999999996
	.quad	0x3fdc2becedd48451              # double 0.44018099999999999
	.quad	0x3fe5b224aada33be              # double 0.67799600000000004
	.quad	0x3fc8478854cdb7ae              # double 0.18968299999999999
	.quad	0x3fe14fb97bb73083              # double 0.54098199999999996
	.quad	0x3fde146e4c0df58c              # double 0.469997
	.quad	0x3fc3670196d8f4f9              # double 0.15158099999999999
	.quad	0x3fe1464fdb09a672              # double 0.53983300000000001
	.quad	0x3fe5286940357a35              # double 0.66118299999999997
	.quad	0x3fe3064ece9a2c67              # double 0.59452000000000005
	.quad	0x3fde39e279dd3bb0              # double 0.47228300000000001
	.quad	0x3fe8ec6583e8576d              # double 0.77885700000000002
	.quad	0x3fe7a54c55432874              # double 0.73892800000000003
	.quad	0x3fe20705425f2021              # double 0.563357
	.quad	0x3fe7d65c2d278078              # double 0.74491700000000005
	.quad	0x3fe05e4a38327675              # double 0.51151000000000002
	.quad	0x3fe3dc443914f484              # double 0.62063800000000002
	.quad	0x3fd8a14488c60cbf              # double 0.38484299999999999
	.quad	0x3fda54d1e96c3fc4              # double 0.41142699999999999
	.quad	0x3fd521294573a798              # double 0.33014900000000003
	.quad	0x3fcdda2f8bdec5f4              # double 0.23322100000000001
	.quad	0x3fc7bdf090f733a9              # double 0.18548400000000001
	.quad	0x3fe103621fafc8b0              # double 0.531663
	.quad	0x3fe7fd9dba908a26              # double 0.74970899999999996
	.quad	0x3fb113a4f8726d05              # double 0.066706000000000001
	.quad	0x3fe21b6d43d03969              # double 0.56584800000000002
	.quad	0x3fe3fcb4f1e4b44a              # double 0.62459799999999999
	.quad	0x3fe5c6f587d6f976              # double 0.68053699999999995
	.quad	0x3fd12046c764ae00              # double 0.26759500000000003
	.quad	0x3fecae4d1a650614              # double 0.89627699999999999
	.quad	0x3fd2fc04c8bc9cd4              # double 0.29663200000000001
	.quad	0x3fdf399f5dfeb8d8              # double 0.48789199999999999
	.quad	0x3fd84463065f9592              # double 0.37917400000000001
	.quad	0x3fd2a99fa11a975b              # double 0.291603
	.quad	0x3fea85e80bed740c              # double 0.82884599999999997
	.quad	0x3fee05425f202108              # double 0.93814200000000003
	.quad	0x3fec1ecf63800219              # double 0.87876100000000001
	.quad	0x3fec1bc98a222d51              # double 0.87839199999999995
	.quad	0x3fe8ef262888b546              # double 0.77919300000000002
	.quad	0x3fc08aefb2aae297              # double 0.12923999999999999
	.quad	0x3fd4915379fa97e1              # double 0.32136999999999999
	.quad	0x3fbc11c2a0232096              # double 0.10964599999999999
	.quad	0x3fc6cf9e3864cb5c              # double 0.17821100000000001
	.quad	0x3fe71ea140570825              # double 0.72248900000000005
	.quad	0x3fb9d15f02c4d65e              # double 0.100851
	.quad	0x3feb3eee52589268              # double 0.85143199999999997
	.quad	0x3fd328c79f666235              # double 0.29936400000000002
	.quad	0x3fd66848beb5b2d5              # double 0.35011500000000001
	.quad	0x3fed3f727136a401              # double 0.913995
	.quad	0x3fd1e050374ff866              # double 0.27931600000000001
	.quad	0x3fecbf0dc768dfbd              # double 0.89832199999999995
	.quad	0x3fcb7e6f71a7e308              # double 0.21479599999999999
	.quad	0x3fe259f6ec5b078e              # double 0.57348200000000005
	.quad	0x3f9897a67a52ac75              # double 0.024015999999999999
	.quad	0x3fbc0053e2d6238e              # double 0.10938000000000001
	.quad	0x3fe0845fe1112770              # double 0.51615900000000003
	.quad	0x3fe6991148fd9fd3              # double 0.70618499999999995
	.quad	0x3fe4076e1deacc92              # double 0.62590699999999999
	.quad	0x3fd6f609dcf893fb              # double 0.358767
	.quad	0x3fd2cb4289118c19              # double 0.29365599999999997
	.quad	0x3fe9c8472c0e7bc4              # double 0.80569800000000002
	.quad	0x3fd2ae642bf9830e              # double 0.29189399999999999
	.quad	0x3f6f23465625a683              # double 0.0038010000000000001
	.quad	0x3fa82afdda8bd231              # double 0.047203000000000002
	.quad	0x3fe7bbf2f5558213              # double 0.74169300000000005
	.quad	0x3fdd9ad42c3c9eed              # double 0.46257500000000001
	.quad	0x3fe31df97aaac109              # double 0.59740899999999997
	.quad	0x3fd5c3b4f6167232              # double 0.34006999999999998
	.quad	0x3fef5ea465a57647              # double 0.98030300000000003
	.quad	0x3fc0ec41dd1a21ea              # double 0.13220999999999999
	.quad	0x3f7efe931876188b              # double 0.0075669999999999999
	.quad	0x3fe7658a32f44913              # double 0.73114500000000004
	.quad	0x3fc7f6555c52e72e              # double 0.18720500000000001
	.quad	0x3fe0fa1c25d07421              # double 0.53053099999999997
	.quad	0x3fd0851654d61b2a              # double 0.25812299999999999
	.quad	0x3f67dd00f776c482              # double 0.0029129999999999998
	.quad	0x3fddd1244a6223e2              # double 0.46589000000000003
	.quad	0x3fedee3d5fdcdf6a              # double 0.93533200000000005
	.quad	0x3fe16672fba01eef              # double 0.54375600000000002
	.quad	0x3fef4204f2ae07e6              # double 0.97680900000000004
	.quad	0x3fdb746887a8d64d              # double 0.42897999999999997
	.quad	0x3fd98ec0f88333fd              # double 0.39933800000000003
	.quad	0x3fc4ba8c586876e2              # double 0.161943
	.quad	0x3fd3d55a3a08398a              # double 0.30989699999999998
	.quad	0x3fdcd06bbdbe3c10              # double 0.45022099999999998
	.quad	0x3fef684cf0739b02              # double 0.98148199999999997
	.quad	0x3fca1882adc4c9c9              # double 0.203873
	.quad	0x3fefaa433508f649              # double 0.98953400000000002
	.quad	0x3fe42ee631f8a090              # double 0.63072499999999998
	.quad	0x3fd1710cb295e9e2              # double 0.27252500000000002
	.quad	0x3feb51351159c497              # double 0.85366299999999995
	.quad	0x3fe830318b934699              # double 0.75588299999999997
	.quad	0x3fef0f840181e03f              # double 0.97064399999999995
	.quad	0x3fea10214ad362e9              # double 0.814469
	.quad	0x3fe5d0dae3e6c4c6              # double 0.68174500000000005
	.quad	0x3fc8a1b5c7cd898b              # double 0.19243499999999999
	.quad	0x3fe4a56bca5375c9              # double 0.64519300000000002
	.quad	0x3fe7e8ad68837718              # double 0.74715299999999996
	.quad	0x3fe1702602c9081c              # double 0.54493999999999998
	.quad	0x3fdf7d1782d38477              # double 0.49201
	.quad	0x3fe5625e99e94ab2              # double 0.66825800000000002
	.quad	0x3fe6cf7a919695d9              # double 0.71282699999999999
	.quad	0x3fe7e5cf67b1c001              # double 0.74680299999999999
	.quad	0x3fd76e5471715c64              # double 0.36610900000000002
	.quad	0x3fd399524bfd2e94              # double 0.30623299999999998
	.quad	0x3fe0cd8fd5cb7910              # double 0.52509300000000003
	.quad	0x3fd39ef0f16f4385              # double 0.30657600000000002
	.quad	0x3fe184102ff8ec10              # double 0.54737100000000005
	.quad	0x3fe5fa63736cdf26              # double 0.68681499999999995
	.quad	0x3fe66275ab7dc7ac              # double 0.699519
	.quad	0x3fc3c1f85d744f5d              # double 0.15435699999999999
	.quad	0x3fd320817fc7607c              # double 0.29885899999999999
	.quad	0x3fede23f24d8fd5d              # double 0.93386800000000003
	.quad	0x3fa6f88b9778572a              # double 0.044865000000000002
	.quad	0x3fe262cba732df50              # double 0.57455999999999996
	.quad	0x3feda8d002e23290              # double 0.92685700000000004
	.quad	0x3fd0a4c1ebc83a97              # double 0.26005600000000001
	.quad	0x3fe5bf7ced916873              # double 0.67962500000000003
	.quad	0x3fcce1ef73c0c1fd              # double 0.22564500000000001
	.quad	0x3fd0ae81882adc4d              # double 0.26065100000000002
	.quad	0x3fc1ad4b2745bf27              # double 0.138101
	.quad	0x3f945996744b2b77              # double 0.019872999999999998
	.quad	0x3fdaad5bee3d5fdd              # double 0.41683100000000001
	.quad	0x3fcc373f316e3715              # double 0.22043599999999999
	.quad	0x3fe95612c6ac215c              # double 0.79175700000000004
	.quad	0x3fe4859641f64495              # double 0.64130699999999996
	.quad	0x3fe1a6ce358298cc              # double 0.55161199999999999
	.quad	0x3fc097fa5d28d003              # double 0.129638
	.quad	0x3fe3e91a75cd0bb7              # double 0.62220500000000001
	.quad	0x3fd4d084e831ad21              # double 0.32522699999999999
	.quad	0x3fc58298cc144029              # double 0.168048
	.quad	0x3fe3e5d9e40c8473              # double 0.62180800000000003
	.quad	0x3f95568e820e6299              # double 0.020837999999999999
	.quad	0x3fe1288effe2a3cf              # double 0.53620100000000004
	.quad	0x3fcdf2cb641700ce              # double 0.23397200000000001
	.quad	0x3f6511dffc5479d5              # double 0.0025720000000000001
	.quad	0x3fb4fd199bb2788e              # double 0.081987000000000004
	.quad	0x3fd09795b35b0bbf              # double 0.25925199999999998
	.quad	0x3febeb56fb8f57f7              # double 0.87247799999999998
	.quad	0x3fe768fd199bb279              # double 0.73156600000000005
	.quad	0x3fc8937d1fe64f55              # double 0.192001
	.quad	0x3fdfa19439de481f              # double 0.49423699999999998
	.quad	0x3fc6ad03d9a95422              # double 0.17715500000000001
	.quad	0x3fd7fc158fb43d8a              # double 0.37476100000000001
	.quad	0x3fe3a324c8366517              # double 0.61366500000000002
	.quad	0x3fc69185cee17a03              # double 0.176316
	.quad	0x3fee2606fac6045c              # double 0.94214200000000003
	.quad	0x3fe7758e219652bd              # double 0.73309999999999997
	.quad	0x3fd555ffe6d58c8f              # double 0.333374
	.quad	0x3fecc007570c5650              # double 0.89844100000000005
	.quad	0x3fef5f9378ee2867              # double 0.98041699999999998
	.quad	0x3fe12adc4c9c90c5              # double 0.53648200000000001
	.quad	0x3fac40d0aaa7ded7              # double 0.055182000000000002
	.quad	0x3fe34e6e221c8a7a              # double 0.60332399999999997
	.quad	0x3fcb995ee136e71d              # double 0.215618
	.quad	0x3fedf127f5e84f09              # double 0.93568799999999996
	.quad	0x3fe524052d666a98              # double 0.66064699999999998
	.quad	0x3fdd6bf01322f273              # double 0.45971299999999998
	.quad	0x3fd6ee8d10f51aca              # double 0.35831000000000002
	.quad	0x3fc93471f79420b4              # double 0.196913
	.quad	0x3fc79d7774aba387              # double 0.18449299999999999
	.quad	0x3fd8acd5b6805a2d              # double 0.38554899999999998
	.quad	0x3fbba0407cc7d1bb              # double 0.107914
	.quad	0x3fdcc56d5cfaacda              # double 0.44955000000000001
	.quad	0x3feba0c8cd63cb81              # double 0.86337699999999995
	.quad	0x3fee555821294574              # double 0.94791800000000003
	.quad	0x3fef2749f0e4da0a              # double 0.97354600000000002
	.quad	0x3fc0d2a1f8e3ac0c              # double 0.13142799999999999
	.quad	0x3fd23a604e1e7104              # double 0.28481299999999998
	.quad	0x3fd19c49774256bd              # double 0.27516400000000002
	.quad	0x3f8c408d8ec95bff              # double 0.013795
	.quad	0x3fe27e5eaab04253              # double 0.57792600000000005
	.quad	0x3feddcd2d44dca8e              # double 0.93320599999999998
	.quad	0x3fe7ddb9841aac54              # double 0.74581600000000003
	.quad	0x3fe63c297bfa4c62              # double 0.69484400000000002
	.quad	0x3fd60f94c87980f5              # double 0.34470099999999998
	.quad	0x3fb1640e9d51b4fe              # double 0.067932999999999993
	.quad	0x3fa5db9841aac53b              # double 0.042691
	.quad	0x3fe058e64b231401              # double 0.51085199999999997
	.quad	0x3fd3ed02cd39da16              # double 0.31134099999999998
	.quad	0x3fc2096787ce95fb              # double 0.14091200000000001
	.quad	0x3fd14ea8da7f3cf7              # double 0.270426
	.quad	0x3fdab6ae7d566cf4              # double 0.41739999999999999
	.quad	0x3fef532c625e99e9              # double 0.97890299999999996
	.quad	0x3fd87a41e57d9dbb              # double 0.38246200000000002
	.quad	0x3fe7a7b4e54f7a92              # double 0.73922200000000005
	.quad	0x3fdce48a58b3f63c              # double 0.45144899999999999
	.quad	0x3fc18efbb0e5e679              # double 0.13717599999999999
	.quad	0x3feab27aa68f4b62              # double 0.834287
	.quad	0x3fec24af0bf1a5ca              # double 0.87947799999999998
	.quad	0x3fe48c6d612c6ac2              # double 0.64214199999999999
	.quad	0x3fe97b7e90ff9724              # double 0.79632499999999994
	.quad	0x3fe8c38088509bfa              # double 0.77386500000000003
	.quad	0x3fec4810a569b175              # double 0.88379700000000005
	.quad	0x3fe5079c4113c686              # double 0.65717899999999996
	.quad	0x3fe0407aaef2c732              # double 0.50787099999999996
	.quad	0x3fe59dcb5781c715              # double 0.675512
	.quad	0x3fefac03ff69014b              # double 0.98974799999999996
	.quad	0x3fc7d4e09784ec63              # double 0.18618399999999999
	.quad	0x3fee7340d4dc65c7              # double 0.951569
	.quad	0x3fe9621b7e0ac7da              # double 0.79322599999999999
	.quad	0x3fe858e64b231401              # double 0.76085199999999997
	.quad	0x3fd6526527a20579              # double 0.34877900000000001
	.quad	0x3fc4836eb4e98138              # double 0.16026099999999999
	.quad	0x3fd1860999dcb578              # double 0.27380599999999999
	.quad	0x3fd04ddb5525cc42              # double 0.25475199999999998
	.quad	0x3fe4b60d0247021d              # double 0.64722299999999999
	.quad	0x3fa4a9ef5232d2bb              # double 0.040358999999999999
	.quad	0x3fd4e54f7a919696              # double 0.32649600000000001
	.quad	0x3fec54e2b063e07a              # double 0.88536199999999998
	.quad	0x3fe311ea78af3e47              # double 0.59593700000000005
	.quad	0x3fcf2e9ccb7d4174              # double 0.24360999999999999
	.quad	0x3f97e1fc08fa7a85              # double 0.023323
	.quad	0x3fd171da37ef5a96              # double 0.27257399999999998
	.quad	0x3fe65cb1465e8922              # double 0.69881499999999996
	.quad	0x3feba4bdba0a5269              # double 0.86385999999999996
	.quad	0x3fd126634117f844              # double 0.26796799999999998
	.quad	0x3fc5d1a21ea35936              # double 0.17046
	.quad	0x3fd7910c2c5e2cdc              # double 0.368228
	.quad	0x3fd3e2cdc011d367              # double 0.31071799999999999
	.quad	0x3fd0f5b5fa22706d              # double 0.26499699999999998
	.quad	0x3fee2dd7a99fa11b              # double 0.94309600000000005
	.quad	0x3fe3691a75cd0bb7              # double 0.60658000000000001
	.quad	0x3fd01e9f2778140e              # double 0.25186900000000001
	.quad	0x3fa9c8a7a41e57da              # double 0.050359000000000001
	.quad	0x3fef5e6149c6f36f              # double 0.980271
	.quad	0x3fee4a70d1fa3337              # double 0.94658699999999996
	.quad	0x3fdce27179bfdf7f              # double 0.45132100000000003
	.quad	0x3fe45ebfa8f7db6e              # double 0.63656599999999997
	.quad	0x3f70268900c521de              # double 0.0039430000000000003
	.quad	0x3fba98676a7264a1              # double 0.10388799999999999
	.quad	0x3febb1769a91105e              # double 0.86541299999999999
	.quad	0x3fefc20f6f08cc57              # double 0.99243899999999996
	.quad	0x3fb3033a4723ab00              # double 0.074268000000000001
	.quad	0x3fe81c560c7c0f45              # double 0.75345899999999999
	.quad	0x3fdc53b4b2fa93af              # double 0.44260899999999997
	.quad	0x3fd3210be9424e59              # double 0.29889199999999999
	.quad	0x3fe919567dbb16c2              # double 0.78434300000000001
	.quad	0x3fe86daa92e62132              # double 0.76338700000000004
	.quad	0x3fd977fae3608d09              # double 0.39794800000000002
	.quad	0x3fdc83b1d0c80410              # double 0.44553799999999999
	.quad	0x3fc299a62ed35222              # double 0.145314
	.quad	0x3fea8e7ddca4b125              # double 0.82989400000000002
	.quad	0x3fd6027d88c1db01              # double 0.34390199999999999
	.quad	0x3fd5f1d81f106680              # double 0.34288600000000002
	.quad	0x3fdb07570c564f98              # double 0.422323
	.quad	0x3fd6559f6ec5b079              # double 0.34897600000000001
	.quad	0x3fe4be9856a37ac4              # double 0.64826600000000001
	.quad	0x3febb51159c49774              # double 0.86585299999999998
	.quad	0x3fe8b3743632c1f4              # double 0.77190599999999998
	.quad	0x3fb33cf70153bd16              # double 0.075148999999999994
	.quad	0x3fb3746887a8d64d              # double 0.075994999999999993
	.quad	0x3fed7db4cc250721              # double 0.92159500000000005
	.quad	0x3fd4cb9a9da597d5              # double 0.32492700000000002
	.quad	0x3fec116659d12cae              # double 0.87712400000000001
	.quad	0x3fe71d2178f68be3              # double 0.722306
	.quad	0x3fe0ac0a4a05dd90              # double 0.52100100000000005
	.quad	0x3fea03f705857aff              # double 0.81298400000000004
	.quad	0x3fe90372e6a76966              # double 0.781671
	.quad	0x3fe2e9d7342edbb6              # double 0.59104500000000004
	.quad	0x3fc159c49774256c              # double 0.13555200000000001
	.quad	0x3fe82376922d948e              # double 0.75432900000000003
	.quad	0x3fead2502eec7c95              # double 0.83817299999999995
	.quad	0x3fe8d1dcd7060bb3              # double 0.77561800000000003
	.quad	0x3fedcaf709b738e7              # double 0.93102600000000002
	.quad	0x3fec74ff865d7cb3              # double 0.88928200000000002
	.quad	0x3f654a7f8012dfd7              # double 0.0025990000000000002
	.quad	0x3fd4f63800218def              # double 0.32752799999999999
	.quad	0x3fa3f37b8d3f1844              # double 0.038967000000000002
	.quad	0x3fe0045dc8323359              # double 0.50053300000000001
	.quad	0x3fef834d26fa3fcd              # double 0.98477800000000004
	.quad	0x3fdaae1cde5d1809              # double 0.416877
	.quad	0x3fe8b382e44b6e93              # double 0.77191299999999996
	.quad	0x3fe08055fbb517a4              # double 0.51566599999999996
	.quad	0x3fee7d028a1dfb94              # double 0.95276000000000005
	.quad	0x3fe9ccbe1eb4202e              # double 0.80624300000000004
	.quad	0x3fd023a6ce358299              # double 0.25217600000000001
	.quad	0x3fe0ae6a76965f52              # double 0.52129099999999995
	.quad	0x3fdbbf93ff25e56d              # double 0.43356800000000001
	.quad	0x3febd6f976790321              # double 0.86999199999999999
	.quad	0x3fcab1e5c0b99913              # double 0.20855399999999999
	.quad	0x3faf861a60d4562e              # double 0.06157
	.quad	0x3fb494f69ca9ef52              # double 0.080397999999999997
	.quad	0x3fe85d5b24e9c454              # double 0.76139599999999996
	.quad	0x3fd29aa1d755bccb              # double 0.290688
	.quad	0x3fe62aa5c5f7c676              # double 0.69270600000000004
	.quad	0x3fd41c8216c61523              # double 0.31424000000000002
	.quad	0x3fb22c01e68a0d35              # double 0.070984000000000005
	.quad	0x3fb5dcb5781c7150              # double 0.085399000000000002
	.quad	0x3fd93a14cec41dd2              # double 0.39417000000000002
	.quad	0x3fe9eb3bb83cf2d0              # double 0.80996500000000005
	.quad	0x3fd6fbb9496249a1              # double 0.35911399999999999
	.quad	0x3fef9a133c1ce6c1              # double 0.98755800000000004
	.quad	0x3fe7694ab1d4f9c2              # double 0.731603
	.quad	0x3fd4961804d98394              # double 0.32166099999999997
	.quad	0x3fcd72b4528283d3              # double 0.23006299999999999
	.quad	0x3fed0298cc144029              # double 0.90656700000000001
	.quad	0x3fece47dc37a3db4              # double 0.90289200000000002
	.quad	0x3fbc181e03f70585              # double 0.10974299999999999
	.quad	0x3fdc08f648c7192f              # double 0.43804700000000002
	.quad	0x3fcbd9b1b79d909f              # double 0.217581
	.quad	0x3fe09fc2a8869c67              # double 0.51950200000000002
	.quad	0x3fd741e9af5ba2be              # double 0.363398
	.quad	0x3fd06e08f2170931              # double 0.256716
	.quad	0x3fe7b2b777d0f1f5              # double 0.74056599999999995
	.quad	0x3fe9406e19b90eaa              # double 0.78911500000000001
	.quad	0x3fcc985f06f69446              # double 0.22339999999999999
	.quad	0x3fee395e5aff2a17              # double 0.94450299999999998
	.quad	0x3fab7b07075b3e14              # double 0.053672999999999998
	.quad	0x3fe264e48626f60e              # double 0.57481599999999999
	.quad	0x3fe932d2bb23571d              # double 0.78745399999999999
	.quad	0x3fe0498e53eb399f              # double 0.50897899999999996
	.quad	0x3fc9c8b0079a2835              # double 0.201437
	.quad	0x3fe1a908a265f0f6              # double 0.55188400000000004
	.quad	0x3fd2c6cdaf4adbc6              # double 0.29338399999999998
	.quad	0x3fdb39de481f5382              # double 0.42540699999999998
	.quad	0x3fc0c40d0aaa7ded              # double 0.13098299999999999
	.quad	0x3fbf0739b024f65a              # double 0.12120400000000001
	.quad	0x3fdb3c8e25c810a5              # double 0.42557099999999998
	.quad	0x3fcd11a543f1c758              # double 0.227101
	.quad	0x3fca6338b47c73ef              # double 0.206153
	.quad	0x3fefc2cc2d6a9c56              # double 0.99252899999999999
	.quad	0x3faecb5350092ccf              # double 0.060144999999999997
	.quad	0x3fda102bc72e275b              # double 0.40723700000000002
	.quad	0x3fa7911cf355cd92              # double 0.046029
	.quad	0x3fc390b84988094e              # double 0.15285399999999999
	.quad	0x3fe0c4e2f37fbefd              # double 0.524034
	.quad	0x3fef0f88333fc86d              # double 0.970646
	.quad	0x3fd62845996744b3              # double 0.34620800000000002
	.quad	0x3fe830c23fab10ba              # double 0.75595199999999996
	.quad	0x3febbda5119ce076              # double 0.8669
	.quad	0x3fee7b45f17bd8be              # double 0.95254799999999995
	.quad	0x3fd6afe1da7b0b39              # double 0.35448499999999999
	.quad	0x3fd84ba0e8427419              # double 0.37961600000000001
	.quad	0x3fea11ab8e8ea39c              # double 0.81465699999999996
	.quad	0x3fc506f694467382              # double 0.164275
	.quad	0x3fad260f5e41d4b7              # double 0.056931000000000002
	.quad	0x3fd732ca57a786c2              # double 0.36247499999999999
	.quad	0x3fed010e8858ff76              # double 0.90637900000000005
	.quad	0x3fd17a9e2bcf91a3              # double 0.27310899999999999
	.quad	0x3fad34373f316e37              # double 0.057038999999999999
	.quad	0x3fe9c9491f2dc2b1              # double 0.80582100000000001
	.quad	0x3fe77a0b5ed8d36b              # double 0.73364799999999997
	.quad	0x3fdeade225fa658c              # double 0.47936299999999998
	.quad	0x3fd12ff8ec0f8833              # double 0.26855299999999999
	.quad	0x3febcd2b2bfdb4cc              # double 0.86879499999999998
	.quad	0x3fcc4fb1183b6028              # double 0.22118199999999999
	.quad	0x3fd56b8305d95dd5              # double 0.33468700000000001
	.quad	0x3fd3ad080b673c4f              # double 0.30743599999999999
	.quad	0x3fea28283d35eb74              # double 0.81740199999999996
	.quad	0x3fdecfaacd9e83e4              # double 0.48142499999999999
	.quad	0x3fc8d6ece13f4a99              # double 0.19405900000000001
	.quad	0x3fee4ec84f8f8a4c              # double 0.94711699999999998
	.quad	0x3fe9f4a1272c94b4              # double 0.81111200000000005
	.quad	0x3fe7d9a30984e400              # double 0.74531700000000001
	.quad	0x3fdb326e115592da              # double 0.42495300000000003
	.quad	0x3fdea9fbe76c8b44              # double 0.47912500000000002
	.quad	0x3fc3e3d1cc100e6b              # double 0.15539
	.quad	0x3fe335fe542e557e              # double 0.60034100000000001
	.quad	0x3fea95bdd76683c3              # double 0.83077900000000005
	.quad	0x3fc92b66b6177ea2              # double 0.19663700000000001
	.quad	0x3f908fa7a85015c2              # double 0.016173
	.quad	0x3feb59f4d37c1377              # double 0.85473100000000002
	.quad	0x3fe17748a159817c              # double 0.54581100000000005
	.quad	0x3fe9398c7e28240b              # double 0.78827499999999995
	.quad	0x3fd82ef911cf355d              # double 0.37786700000000001
	.quad	0x3fe4868986fcdee3              # double 0.64142299999999997
	.quad	0x3fdf10d7be9856a3              # double 0.48540299999999997
	.quad	0x3fd53836a832b991              # double 0.33155600000000002
	.quad	0x3fde38151a437825              # double 0.47217300000000001
	.quad	0x3fe9644d87724fa9              # double 0.79349400000000003
	.quad	0x3fe45989df1172ef              # double 0.63593
	.quad	0x3f9e225fa658c4bd              # double 0.029427999999999999
	.quad	0x3fdff81626b2f230              # double 0.49951699999999999
	.quad	0x3fea063e07a28bb1              # double 0.81326200000000004
	.quad	0x3fcd1676640a6b94              # double 0.22724800000000001
	.quad	0x3fda71b4784230fd              # double 0.41319
	.quad	0x3f9084a515ce9e5e              # double 0.016131
	.quad	0x3fe686cebbba55d2              # double 0.70395600000000003
	.quad	0x3fc4f54d1e96c3fc              # double 0.16373599999999999
	.quad	0x3fefa224edf61240              # double 0.98854299999999994
	.quad	0x3feb055da272862f              # double 0.84440499999999996
	.quad	0x3fddb990afe60c39              # double 0.464451
	.quad	0x3feffa0f9096bb99              # double 0.99927500000000002
	.quad	0x3fc242c7fbacb429              # double 0.14266300000000001
	.quad	0x3fe2edfc5cdd50a9              # double 0.59155100000000005
	.quad	0x3fa30446b69db65f              # double 0.037142000000000001
	.quad	0x3fe3e79aae6c8f75              # double 0.62202199999999996
	.quad	0x3fdc8c6d612c6ac2              # double 0.446071
	.quad	0x3f9f7fcfc3f811f5              # double 0.030761
	.quad	0x3fd2fe47991bc558              # double 0.29676999999999998
	.quad	0x3fe29ee02a77a2cf              # double 0.58189400000000002
	.quad	0x3fb88882f0e0a84c              # double 0.095833000000000001
	.quad	0x3fefacb4289118c2              # double 0.98983200000000005
	.quad	0x3fe3b2d2bb23571d              # double 0.61557899999999999
	.quad	0x3f85caf2d7f950b9              # double 0.010640999999999999
	.quad	0x3fe2948dc11e42e1              # double 0.58063399999999998
	.quad	0x3f69220ff540895d              # double 0.003068
	.quad	0x3fe47ee2c98e53eb              # double 0.64048899999999998
	.quad	0x3fbe40e9d51b4fe8              # double 0.11817800000000001
	.quad	0x3fd60d887ebf22c0              # double 0.34457599999999999
	.quad	0x3fe0658c4bd33d29              # double 0.51239599999999996
	.quad	0x3fdd7edc7ef177a7              # double 0.460868
	.quad	0x3fed1cd1c7de5083              # double 0.90976800000000002
	.quad	0x3fd612f09d8c6d61              # double 0.34490599999999999
	.quad	0x3fe758b1dd5d3dc9              # double 0.72957700000000003
	.quad	0x3fe4b5ce18266773              # double 0.64719300000000002
	.quad	0x3fa923c42a66dbd7              # double 0.049100999999999999
	.quad	0x3fdb4ef0281ba7fc              # double 0.42669299999999999
	.quad	0x3fcfaa3f034b0e1b              # double 0.24738299999999999
	.quad	0x3fc261b6d43d0397              # double 0.14360700000000001
	.quad	0x3fdea072d1aeb3dd              # double 0.478543
	.quad	0x3fbb926c7eae5bc8              # double 0.10770299999999999
	.quad	0x3f80110a137f38c5              # double 0.0078449999999999995
	.quad	0x3fc561aa3f034b0e              # double 0.167043
	.quad	0x3fe391b1d92b7fe1              # double 0.61153500000000005
	.quad	0x3fe6febf22c01e69              # double 0.71859700000000004
	.quad	0x3fdd79e9d0e991ff              # double 0.46056599999999998
	.quad	0x3fe3d188f42fe825              # double 0.61932799999999999
	.quad	0x3fc455c0fcb4f1e5              # double 0.15886700000000001
	.quad	0x3fd1b93469941850              # double 0.27692899999999998
	.quad	0x3fec7229e90795f6              # double 0.88893599999999995
	.quad	0x3fdf0afa2f05a709              # double 0.485045
	.quad	0x3fd97bd05af6c69b              # double 0.39818199999999998
	.quad	0x3fe2b5781c714fce              # double 0.58465199999999995
	.quad	0x3fef2a5c5f7c675a              # double 0.97392100000000004
	.quad	0x3fe5e7a743a647fe              # double 0.68452800000000003
	.quad	0x3fb72c625e99e94b              # double 0.090521000000000004
	.quad	0x3fe044cdfaca361a              # double 0.50839900000000005
	.quad	0x3febc49dbec2480f              # double 0.86775100000000005
	.quad	0x3fef31f03d145d85              # double 0.97484599999999999
	.quad	0x3fd315c209246bf0              # double 0.298203
	.quad	0x3feb23315d701d9f              # double 0.84804599999999997
	.quad	0x3fd9b29a1b9f98b7              # double 0.40152599999999999
	.quad	0x3fd081626b2f2303              # double 0.25789699999999999
	.quad	0x3f71cc100e6afcce              # double 0.0043449999999999999
	.quad	0x3fd1503fb3743633              # double 0.27052300000000001
	.quad	0x3fbb9628cbd1244a              # double 0.10775999999999999
	.quad	0x3fd6983947496aad              # double 0.35304099999999999
	.quad	0x3fe4c5aa2e3c536d              # double 0.64912899999999996
	.quad	0x3fceb93ccd0fe8ab              # double 0.24002799999999999
	.quad	0x3fee7a7c9de05037              # double 0.95245199999999997
	.quad	0x3feb6a6a012599ed              # double 0.85673999999999995
	.quad	0x3fd8940357a35504              # double 0.38403399999999999
	.quad	0x3fe2b70ef566490a              # double 0.58484599999999998
	.quad	0x3fd5c9afe1da7b0b              # double 0.34043499999999999
	.quad	0x3f92220bc382a130              # double 0.017708000000000002
	.quad	0x3fdf6cbd987c6328              # double 0.491012
	.quad	0x3fe0435ac8a37260              # double 0.50822199999999995
	.quad	0x3fef73a9b0681238              # double 0.98286899999999999
	.quad	0x3fdc1a6506141637              # double 0.43911099999999997
	.quad	0x3fa2240314877681              # double 0.035430999999999997
	.quad	0x3fe69acde19fc2a9              # double 0.70639700000000005
	.quad	0x3feb13e81450efdd              # double 0.84618000000000004
	.quad	0x3feec22ab25b317f              # double 0.961202
	.quad	0x3fd227bb2fec56d6              # double 0.28367500000000001
	.quad	0x3fd2123c42a66dbd              # double 0.28236299999999998
	.quad	0x3fd8a3ad18d25edd              # double 0.38499
	.quad	0x3f895b35b0bbf50e              # double 0.012381
	.quad	0x3fd8fbdf090f733b              # double 0.39037300000000003
	.quad	0x3fd6247cb70ac3a8              # double 0.34597699999999998
	.quad	0x3fbfb7414a4d2b2c              # double 0.12389
	.quad	0x3fcc774eebf65dc0              # double 0.22239100000000001
	.quad	0x3fe3ecdd0d8cb07d              # double 0.622664
	.quad	0x3fd910fd7e45803d              # double 0.39166200000000001
	.quad	0x3fdbfb480a5accd5              # double 0.43721199999999999
	.quad	0x3fe3841aac53b081              # double 0.60987599999999997
	.quad	0x3fde6bd6e8af8162              # double 0.47533199999999998
	.quad	0x3fd019e731d2e0e3              # double 0.251581
	.quad	0x3fe971886df82b1f              # double 0.79510899999999995
	.quad	0x3fbe924f227d028a              # double 0.11942
	.quad	0x3fd5d199bb2788db              # double 0.340918
	.quad	0x3fdb3beec39799e5              # double 0.42553299999999999
	.quad	0x3fc25f4a1272c94b              # double 0.14353299999999999
	.quad	0x3fec355043e5321e              # double 0.88150799999999996
	.quad	0x3fc870196d8f4f94              # double 0.19092100000000001
	.quad	0x3fed9a4df47f993d              # double 0.92508599999999996
	.quad	0x3fecefa615a8deb1              # double 0.904254
	.quad	0x3fd918b934699418              # double 0.39213399999999998
	.quad	0x3fe799f7f8ca8199              # double 0.73754500000000001
	.quad	0x3febcf09528f190d              # double 0.86902299999999999
	.quad	0x3fe03a92a3055326              # double 0.50714999999999999
	.quad	0x3fe05e093532e7b4              # double 0.51147900000000002
	.quad	0x3fe21986b9c304cd              # double 0.56561600000000001
	.quad	0x3fef25ce5b4245f6              # double 0.97336500000000004
	.quad	0x3fc83fcc9ea9a3d3              # double 0.189447
	.quad	0x3fe84e3ffef39086              # double 0.759552
	.quad	0x3fe500e6afcce1c6              # double 0.65636000000000005
	.quad	0x3fe44ef672b88440              # double 0.63463899999999995
	.quad	0x3f885be1a8262457              # double 0.011894
	.quad	0x3fedfa5d28d002e2              # double 0.93681199999999998
	.quad	0x3fef4a3c64345cff              # double 0.97781200000000001
	.quad	0x3fea2c083126e979              # double 0.81787500000000002
	.quad	0x3fe57d5885d31338              # double 0.67155100000000001
	.quad	0x3fd96f75d9a0f0a6              # double 0.397428
	.quad	0x3fe628e92d55a3a1              # double 0.69249400000000005
	.quad	0x3fec1ba5e353f7cf              # double 0.87837500000000002
	.quad	0x3fe607e9d94d0dd0              # double 0.68846600000000002
	.quad	0x3fee0b630a91537a              # double 0.93889
	.quad	0x3fdaa747d805e5f3              # double 0.41646
	.quad	0x3fe9856c508b32cf              # double 0.79753700000000005
	.quad	0x3fdd2773e24febd1              # double 0.45553300000000002
	.quad	0x3fed6c6de76427c8              # double 0.91948600000000003
	.quad	0x3fe7223bff8a8f3b              # double 0.72292900000000004
	.quad	0x3fcce90364388ebd              # double 0.22586100000000001
	.quad	0x3fe71d14e3bcd35b              # double 0.72230000000000005
	.quad	0x3fd5faf42784a948              # double 0.34344200000000003
	.quad	0x3fe1a7e308787486              # double 0.55174400000000001
	.quad	0x3fd460c38f366949              # double 0.31840600000000002
	.quad	0x3fe5f5818c5c9a35              # double 0.68621900000000002
	.quad	0x3fd3a13c254a3c64              # double 0.30671599999999999
	.quad	0x3fcd27243137b070              # double 0.22775699999999999
	.quad	0x3fd76aec0724b76f              # double 0.36590099999999998
	.quad	0x3fdf1049235f8099              # double 0.48536899999999999
	.quad	0x3fe15859c8c9320e              # double 0.54203500000000004
	.quad	0x3fdbe9b7bf1e8e61              # double 0.43614000000000003
	.quad	0x3fc9476af89c5e70              # double 0.197492
	.quad	0x3fbe38b8ae31d713              # double 0.11805300000000001
	.quad	0x3feb6b0fadf2ecf2              # double 0.856819
	.quad	0x3fe23ad5bee3d5fe              # double 0.56968200000000002
	.quad	0x3fe59d0203e63e8e              # double 0.67541600000000002
	.quad	0x3faa424a276b7ed4              # double 0.051286999999999999
	.quad	0x3fec062b27cbf6e4              # double 0.875753
	.quad	0x3fd6c9d16fc9bc77              # double 0.356068
	.quad	0x3fd916e7a311e860              # double 0.39202300000000001
	.quad	0x3fee8d0aaa7ded6c              # double 0.95471700000000003
	.quad	0x3feadf0f5a1016ce              # double 0.83972899999999995
	.quad	0x3fa6b0d9513f8db5              # double 0.044318000000000003
	.quad	0x3fed4226809d4952              # double 0.91432500000000005
	.quad	0x3fe93f9830e3cd9a              # double 0.78901299999999996
	.quad	0x3fe7d4690de09353              # double 0.74467899999999998
	.quad	0x3fec8b545c78a6db              # double 0.89200800000000002
	.quad	0x3fe171e0828c36db              # double 0.54515100000000005
	.quad	0x3fb9e0b4e11dbca9              # double 0.10108499999999999
	.quad	0x3fe75bb9cf9a06a7              # double 0.72994700000000001
	.quad	0x3fe22250f840181e              # double 0.566689
	.quad	0x3fa92b5e529bae47              # double 0.049159000000000001
	.quad	0x3fead73eab367a10              # double 0.83877500000000005
	.quad	0x3fd158a32f44912a              # double 0.27103500000000003
	.quad	0x3fe07e308787485e              # double 0.51540399999999997
	.quad	0x3fc9767903211cb0              # double 0.19892799999999999
	.quad	0x3febb7f5a5332ad0              # double 0.86620600000000003
	.quad	0x3fcb8e5c4eb56fb9              # double 0.215282
	.quad	0x3fdc5515054ac29c              # double 0.442693
	.quad	0x3fe488fa7a85015c              # double 0.64172099999999999
	.quad	0x3fe8bcf70153bd16              # double 0.77306699999999995
	.quad	0x3fe2aa92e62131a9              # double 0.58332200000000001
	.quad	0x3fc756084a515cea              # double 0.182313
	.quad	0x3fef734938583622              # double 0.982823
	.quad	0x3fea5a1ec4e7253e              # double 0.82350100000000004
	.quad	0x3fdd8487b99d4520              # double 0.46121400000000001
	.quad	0x3fe6332f01754b06              # double 0.69374800000000003
	.quad	0x3fe78ce91c8eac00              # double 0.73595100000000002
	.quad	0x3fdcd1bb4916ca47              # double 0.45030100000000001
	.quad	0x3fee9b456b441bb9              # double 0.95645400000000003
	.quad	0x3fed92b7fe08aefb              # double 0.92415999999999998
	.quad	0x3fea39bed30f062d              # double 0.81954899999999997
	.quad	0x3fc749f0e4da09cc              # double 0.18194399999999999
	.quad	0x3fd43dea465a5764              # double 0.31627899999999998
	.quad	0x3fc036d22424a277              # double 0.12667300000000001
	.quad	0x3feb34b945308bb9              # double 0.850186
	.quad	0x3fec5fe542e557de              # double 0.88670599999999999
	.quad	0x3fdb9e12a51e321a              # double 0.43152299999999999
	.quad	0x3fea0fb43d89ce4a              # double 0.81441699999999995
	.quad	0x3fc25ed4a1ad6452              # double 0.14351900000000001
	.quad	0x3fd66edaa92e6213              # double 0.35051599999999999
	.quad	0x3fcd2cadddf43c7d              # double 0.22792599999999999
	.quad	0x3fee31337eb28d86              # double 0.94350599999999996
	.quad	0x3fe613986338b47c              # double 0.68989199999999995
	.quad	0x3facc1a8ac5c13fd              # double 0.056165
	.quad	0x3f88ce2d1f1cfbb9              # double 0.012112
	.quad	0x3fe54e8d972cd7cf              # double 0.66583899999999996
	.quad	0x3feeb91b3f20a73f              # double 0.96009599999999994
	.quad	0x3fe5f92f2b66b617              # double 0.68666799999999995
	.quad	0x3fe46234a87e38eb              # double 0.636988
	.quad	0x3fbc20a30db6a1e8              # double 0.109873
	.quad	0x3fe34c7d1bb4916d              # double 0.60308700000000004
	.quad	0x3fed29e0a41a261c              # double 0.911362
	.quad	0x3fcbf1cfbb949625              # double 0.21831700000000001
	.quad	0x3fd6cf312b1b36bd              # double 0.35639599999999999
	.quad	0x3feb8205ff1d81f1              # double 0.859622
	.quad	0x3fea76ff3ade2260              # double 0.82702600000000003
	.quad	0x3fee0142f61ed5ae              # double 0.93765399999999999
	.quad	0x3fe77a311e85fd05              # double 0.73366600000000004
	.quad	0x3fcbec5f394b7b29              # double 0.21815100000000001
	.quad	0x3fe744d44567125e              # double 0.72715200000000002
	.quad	0x3fe109f1f14983d8              # double 0.53246400000000005
	.quad	0x3fb437c5692b3cc5              # double 0.078976000000000005
	.quad	0x3fd9d80a17b0f6ad              # double 0.40381099999999998
	.quad	0x3fbc110a137f38c5              # double 0.109635
	.quad	0x3fec677d523b3637              # double 0.88763300000000001
	.quad	0x3fe2403dddb1209f              # double 0.57034200000000002
	.quad	0x3fd60a63305100a4              # double 0.34438400000000002
	.quad	0x3fe1a7243137b070              # double 0.55165299999999995
	.quad	0x3fd1935b91f70de9              # double 0.274619
	.quad	0x3fe5c8d9f90539fc              # double 0.68076800000000004
	.quad	0x3fee104b3c3e74b0              # double 0.93948900000000002
	.quad	0x3feb1b34a44c7b03              # double 0.84707100000000002
	.quad	0x3feb724b76f6d762              # double 0.85770199999999996
	.quad	0x3fedaa7ded6ba8c6              # double 0.92706200000000005
	.quad	0x3fe81ca9ef5232d3              # double 0.75349900000000003
	.quad	0x3fd3ff9f87f023ea              # double 0.312477
	.quad	0x3fe8f2e8c0485a0c              # double 0.77965200000000001
	.quad	0x3fe36777079e59f3              # double 0.60638000000000003
	.quad	0x3fd0b3f20a73f749              # double 0.26098300000000002
	.quad	0x3f87b8d3f1843c3a              # double 0.011583
	.quad	0x3fe2f5c6c11a1123              # double 0.59250199999999997
	.quad	0x3fd92f1ed17c5ef6              # double 0.39350099999999999
	.quad	0x3fe82bda0dfdef85              # double 0.75535300000000005
	.quad	0x3fe62305532617c2              # double 0.69177500000000003
	.quad	0x3fd8dfefbf401c50              # double 0.38866800000000001
	.quad	0x3fda21dda059a73b              # double 0.40831699999999999
	.quad	0x3fdc715c63ae2542              # double 0.44441900000000001
	.quad	0x3fe0644523f67f4e              # double 0.51224000000000003
	.quad	0x3fd390bc7b45f17c              # double 0.30570900000000001
	.quad	0x3fa56d3b6cbd987c              # double 0.041848999999999997
	.quad	0x3feb73a57eaa2a0b              # double 0.85786700000000005
	.quad	0x3feb71758e219653              # double 0.85760000000000003
	.quad	0x3fd383f0bae89eba              # double 0.30492799999999998
	.quad	0x3fdfec3547e06962              # double 0.49879200000000001
	.quad	0x3fca14488c60cbf3              # double 0.20374400000000001
	.quad	0x3fd6f7c243dccea3              # double 0.35887200000000002
	.quad	0x3fd4a0407cc7d1bb              # double 0.32228099999999998
	.quad	0x3fbf76d549731099              # double 0.122907
	.quad	0x3fee9f0c34c1a8ac              # double 0.95691499999999996
	.quad	0x3fe3f268d32830a1              # double 0.62334100000000003
	.quad	0x3feeb8e8ea39c51e              # double 0.96007200000000004
	.quad	0x3feab18dac258d58              # double 0.83417399999999997
	.quad	0x3f89da9c99285a92              # double 0.012624
	.quad	0x3fedcaf0bf1a5ca3              # double 0.93102300000000004
	.quad	0x3fe505e1c15097c8              # double 0.656968
	.quad	0x3fdef4d37c1376d5              # double 0.48369299999999998
	.quad	0x3fcf3671ac14c661              # double 0.24384900000000001
	.quad	0x3fcd809917939a7c              # double 0.230487
	.quad	0x3fdd4aa10e022142              # double 0.45767999999999998
	.quad	0x3fcfa7e308787486              # double 0.247311
	.quad	0x3fd1d3ae685db76b              # double 0.27854499999999999
	.quad	0x3fe3c1461b6d43d0              # double 0.61734299999999998
	.quad	0x3fe765668c261390              # double 0.731128
	.quad	0x3fe77b224aada33c              # double 0.73378100000000002
	.quad	0x3fe203fb3743632c              # double 0.56298599999999999
	.quad	0x3fded5a5b9628cbd              # double 0.48179
	.quad	0x3f9a4d6e47dc37a4              # double 0.025686
	.quad	0x3fe204449dbec248              # double 0.56302099999999999
	.quad	0x3fe3a0b8066c2acc              # double 0.61336900000000005
	.quad	0x3fd4e0008637bd06              # double 0.32617200000000002
	.quad	0x3fb46a2b1704ff43              # double 0.079744999999999996
	.quad	0x3fe0704790b84988              # double 0.513706
	.quad	0x3fae9e5e2478854d              # double 0.059802000000000001
	.quad	0x3febc58eeae9ee46              # double 0.86786600000000003
	.quad	0x3fe9051654d61b2a              # double 0.78187099999999998
	.quad	0x3fef02d16b97fe8f              # double 0.96909400000000001
	.quad	0x3fef759685122318              # double 0.98310399999999997
	.quad	0x3fe0c8909289dae0              # double 0.52448300000000003
	.quad	0x3fe41f1ae2da554c              # double 0.62879700000000005
	.quad	0x3fe24b1cc9646280              # double 0.57166899999999998
	.quad	0x3fd202f2f9873ffb              # double 0.28143000000000001
	.quad	0x3fec9272c94b380d              # double 0.89287700000000003
	.quad	0x3f7d35653c9abb02              # double 0.0071310000000000002
	.quad	0x3f77eaa2a0a95853              # double 0.0058389999999999996
	.quad	0x3fd61b8aa00192a7              # double 0.34543099999999999
	.quad	0x3fe313ee5eedcc21              # double 0.59618300000000002
	.quad	0x3fe0f9fcb0c026cc              # double 0.53051599999999999
	.quad	0x3fdfa5d28d002e23              # double 0.49449599999999999
	.quad	0x3fdb3e8576cce5f7              # double 0.42569099999999999
	.quad	0x3fe451d25aab4741              # double 0.634988
	.quad	0x3fe16939eadd590c              # double 0.544095
	.quad	0x3f8465625a682b63              # double 0.0099590000000000008
	.quad	0x3fd50c521dda059a              # double 0.32887699999999997
	.quad	0x3fe4157abb8800eb              # double 0.62762200000000001
	.quad	0x3fe8efcdee34fc61              # double 0.77927299999999999
	.quad	0x3fe0e02a77a2cecd              # double 0.52736400000000005
	.quad	0x3fb0e2089e34330d              # double 0.065948999999999994
	.quad	0x3fe5adba4d6e47dc              # double 0.67745699999999998
	.quad	0x3f5461b6d43d0397              # double 0.0012440000000000001
	.quad	0x3fea72ffd1dcd706              # double 0.82653799999999999
	.quad	0x3fda97f1f9acffa8              # double 0.415524
	.quad	0x3f69aa60913a4f87              # double 0.0031329999999999999
	.quad	0x3f708919ef954eb1              # double 0.0040369999999999998
	.quad	0x3fe3db37c99ae925              # double 0.62051000000000001
	.quad	0x3fbc86cebbba55d2              # double 0.111432
	.quad	0x3fe56030c23fab11              # double 0.66799200000000003
	.quad	0x3fe11351159c4977              # double 0.53360799999999997
	.quad	0x3fe5007bbb62413e              # double 0.65630900000000003
	.quad	0x3fd35ca6ca03c4b1              # double 0.30253000000000002
	.quad	0x3fe7bf705857afea              # double 0.74211899999999997
	.quad	0x3fe4457e23f24d90              # double 0.63348300000000002
	.quad	0x3fdadb50f40e5a36              # double 0.41963600000000001
	.quad	0x3fdefa615a8deb10              # double 0.48403200000000002
	.quad	0x3fd2e9c886162f16              # double 0.29551899999999998
	.quad	0x3fd5eff9f87f023f              # double 0.34277200000000002
	.quad	0x3fe74d67fd3f5b60              # double 0.72819900000000004
	.quad	0x3fef37e90ff97247              # double 0.97557499999999996
	.quad	0x3fe2d7774aba3876              # double 0.58880200000000005
	.quad	0x3fecd5de58e64b23              # double 0.90110699999999999
	.quad	0x3fe2ae3e6c4c5975              # double 0.58377000000000001
	.quad	0x3fe140a06e9ff0cc              # double 0.53913900000000003
	.quad	0x3fed9e9d0e991ff7              # double 0.92561199999999999
	.quad	0x3fe982afdda8bd23              # double 0.79720299999999999
	.quad	0x3fd227f1b6912125              # double 0.283688
	.quad	0x3fe90f190d173fb8              # double 0.78309300000000004
	.quad	0x3fd8e047d3d4280b              # double 0.38868900000000001
	.quad	0x3fe3b860999dcb58              # double 0.61625700000000005
	.quad	0x3fe91461b6d43d04              # double 0.78373800000000004
	.quad	0x3fd6c5931ca7d673              # double 0.35580899999999999
	.quad	0x3f4a79fec99f1ae3              # double 8.0800000000000001E-4
	.quad	0x3fdb69e3c968943e              # double 0.428338
	.quad	0x3fe1d935fc3b4f61              # double 0.55776499999999996
	.quad	0x3febeaa2a0a95853              # double 0.87239199999999995
	.quad	0x3fe726117720c8cd              # double 0.72339699999999996
	.quad	0x3fb8aa53fc0096ff              # double 0.096349000000000004
	.quad	0x3fc181733226c3b9              # double 0.136763
	.quad	0x3fe4e2e4d1a65061              # double 0.65269699999999997
	.quad	0x3fe194ab1d4f9c20              # double 0.54939800000000005
	.quad	0x3fde90ea9e6eeb70              # double 0.47759499999999999
	.quad	0x3fe68153bd167664              # double 0.703287
	.quad	0x3fe68d823422467c              # double 0.70477400000000001
	.quad	0x3fc01ab4b72c5198              # double 0.12581500000000001
	.quad	0x3f98fb86f47b677f              # double 0.024396999999999999
	.quad	0x3fb431055b899392              # double 0.078872999999999998
	.quad	0x3fecfc99ae924f22              # double 0.90583499999999995
	.quad	0x3fe33d6c72192210              # double 0.601248
	.quad	0x3fed68ea39c51dac              # double 0.91905700000000001
	.quad	0x3feef9c1f85d744f              # double 0.96798799999999995
	.quad	0x3fcd4aa9717df19d              # double 0.22884099999999999
	.quad	0x3fdc78cc9a77e5eb              # double 0.44487300000000002
	.quad	0x3febce054690de09              # double 0.86889899999999998
	.quad	0x3fdfe920c069e7fb              # double 0.49860399999999999
	.quad	0x3fea36bb1290257d              # double 0.81918100000000005
	.quad	0x3fe2da2b5a20ddc6              # double 0.58913199999999999
	.quad	0x3fe3f3d3a1d323ff              # double 0.62351400000000001
	.quad	0x3fca1a261bf37b8d              # double 0.20392299999999999
	.quad	0x3fe5e7fb267c6b8b              # double 0.68456799999999995
	.quad	0x3fe64bc27631b585              # double 0.69674800000000003
	.quad	0x3fe1a619da9c9928              # double 0.55152599999999996
	.quad	0x3fe92888b545c78a              # double 0.78619799999999995
	.quad	0x3f93eff1950331e4              # double 0.019470000000000001
	.quad	0x3fd47dbf487fcb92              # double 0.32017499999999999
	.quad	0x3fd0c33b5393250b              # double 0.26191599999999998
	.quad	0x3fb0b827fa1a0cf2              # double 0.065310000000000007
	.quad	0x3fe0e848beb5b2d5              # double 0.52835500000000002
	.quad	0x3fe6a4f8726d04e6              # double 0.70763799999999999
	.quad	0x3fea0372e6a76966              # double 0.812921
	.quad	0x3fb0f9c1f85d744f              # double 0.066310999999999995
	.quad	0x3fedaa737110e454              # double 0.92705700000000001
	.quad	0x3fcfc0ebedfa43fe              # double 0.24807499999999999
	.quad	0x3f85219a847b2464              # double 0.010318000000000001
	.quad	0x3fd80ca600b02928              # double 0.37577199999999999
	.quad	0x3fdb7f3061c79b35              # double 0.42963800000000002
	.quad	0x3fea3be6601bc98a              # double 0.81981199999999999
	.quad	0x3fe6c1bb8c32a8ca              # double 0.71114900000000003
	.quad	0x3fe08a393ee5eedd              # double 0.51687300000000003
	.quad	0x3fb78ae31d712a0f              # double 0.091963000000000003
	.quad	0x3fe74a3400b88ca4              # double 0.72780800000000001
	.quad	0x3feba745bf26f1dc              # double 0.86416899999999996
	.quad	0x3febf689ca18bd66              # double 0.87384499999999998
	.quad	0x3fd04940bbb1f256              # double 0.254471
	.quad	0x3fd2ec4e7253da73              # double 0.29567300000000002
	.quad	0x3feceb4e9813879c              # double 0.90372399999999997
	.quad	0x3fec13dfb0d51f82              # double 0.87742600000000004
	.quad	0x3fee379314445aa3              # double 0.94428400000000001
	.quad	0x3fecbc77143393ab              # double 0.89800599999999997
	.quad	0x3fbcde19fc2a886a              # double 0.112764
	.quad	0x3fdc35e310dbf056              # double 0.44078899999999999
	.quad	0x3fad3804534bd76f              # double 0.057068000000000001
	.quad	0x3fe9b0d73860999e              # double 0.80283700000000002
	.quad	0x3fee27d6733ebbfd              # double 0.94236299999999995
	.quad	0x3fe54a2120e1f7d7              # double 0.66529899999999997
	.quad	0x3fa69531550ca1cf              # double 0.044107
	.quad	0x3fef43fa2ad3e921              # double 0.97704800000000002
	.quad	0x3fd386c6583e8577              # double 0.30510100000000001
	.quad	0x3fd07baecd07852f              # double 0.25754899999999997
	.quad	0x3fedfde5082cf52c              # double 0.93724300000000004
	.quad	0x3fd746801711947d              # double 0.363678
	.quad	0x3fcd83621fafc8b0              # double 0.230572
	.quad	0x3fc902f72b452828              # double 0.19540299999999999
	.quad	0x3fd46f21f6cacd18              # double 0.31928299999999998
	.quad	0x3fe2219220ff5409              # double 0.56659800000000005
	.quad	0x3fbeff1950331e3a              # double 0.12107999999999999
	.quad	0x3fdf545c78a6dacb              # double 0.48952400000000001
	.quad	0x3fd7ab649d388a8b              # double 0.369836
	.quad	0x3fe8c3b4f6167232              # double 0.77388999999999997
	.quad	0x3fe31dc93ea2d2fe              # double 0.59738599999999997
	.quad	0x3fc09fd7a13c254a              # double 0.12987799999999999
	.quad	0x3fe5c4e93e1c9b41              # double 0.68028699999999998
	.quad	0x3fe725093964a59c              # double 0.723271
	.quad	0x3fcd95c422036007              # double 0.23113300000000001
	.quad	0x3fd6d8be7296f651              # double 0.35697899999999999
	.quad	0x3f9806af46aa087d              # double 0.023463000000000001
	.quad	0x3fd32374794ea077              # double 0.299039
	.quad	0x3fe074299d883ba3              # double 0.51417999999999997
	.quad	0x3fd349c6f36ef805              # double 0.30137799999999998
	.quad	0x3fe167a311e85fd0              # double 0.54390099999999997
	.quad	0x3fdd42a23bff8a8f              # double 0.45719199999999999
	.quad	0x3f877c02afdda8bd              # double 0.011467
	.quad	0x3fa0e5e679463cfb              # double 0.033003999999999999
	.quad	0x3fdb478c868b9fdc              # double 0.42624200000000001
	.quad	0x3fedeffc115df655              # double 0.93554499999999996
	.quad	0x3f9f212d77318fc5              # double 0.0304
	.quad	0x3fbaddaceee0f3cb              # double 0.104945
	.quad	0x3fcae9bbf0dc768e              # double 0.210258
	.quad	0x3f9be835dedf1e08              # double 0.027252999999999999
	.quad	0x3fb985271bcdbbe0              # double 0.099687999999999998
	.quad	0x3fe1a3a08398a655              # double 0.55122400000000005
	.quad	0x3fe05371971c10d8              # double 0.51018600000000003
	.quad	0x3f9ee06d938151a4              # double 0.030152999999999999
	.quad	0x3fd7d8c2a454de7f              # double 0.37260500000000002
	.quad	0x3fde4178705425f2              # double 0.472746
	.quad	0x3fe72b81f969e3c9              # double 0.72406099999999995
	.quad	0x3fe8d273d5bab218              # double 0.77568999999999999
	.quad	0x3fd1f737da61e0c6              # double 0.28071400000000002
	.quad	0x3fe42e297396d091              # double 0.63063499999999995
	.quad	0x3fe9574f722e1ac5              # double 0.79190799999999995
	.quad	0x3fd7fc8f32378ab1              # double 0.37479000000000001
	.quad	0x3fe58cdc8754f377              # double 0.67344499999999996
	.quad	0x3fe0c85c24c404a7              # double 0.52445799999999998
	.quad	0x3fe2cae21101b003              # double 0.58726599999999995
	.quad	0x3fc62f72b4528284              # double 0.173323
	.quad	0x3fed32a27f1b6912              # double 0.91243099999999999
	.quad	0x3fe055de58e64b23              # double 0.51048199999999999
	.quad	0x3fed28f7db6e5040              # double 0.91125100000000003
	.quad	0x3fde1ae2da554b8c              # double 0.470391
	.quad	0x3fe50b8066c2acb8              # double 0.65765399999999996
	.quad	0x3fc6fc8b0079a283              # double 0.17958199999999999
	.quad	0x3fc6f8ceb356da01              # double 0.17946799999999999
	.quad	0x3fe70f6cefed6345              # double 0.72063299999999997
	.quad	0x3fe93c3a42f1ed18              # double 0.78860200000000003
	.quad	0x3fd0288ce703afb8              # double 0.252475
	.quad	0x3fe0a1be2b4959e6              # double 0.51974399999999998
	.quad	0x3fbe1672324c8366              # double 0.11753
	.quad	0x3fe7e3779e9d0e99              # double 0.74651699999999999
	.quad	0x3fcd5e84f09528f2              # double 0.22944700000000001
	.quad	0x3fe225657fb69985              # double 0.56706500000000004
	.quad	0x3fcb91cd1c7de508              # double 0.215387
	.quad	0x3fe0144aa53fc009              # double 0.50247699999999995
	.quad	0x3fe636c9c0a8d21c              # double 0.69418800000000003
	.quad	0x3fd83c148344c37e              # double 0.37866699999999998
	.quad	0x3fe9e77f6b1a2a4e              # double 0.80950900000000003
	.quad	0x3fb7bacb4289118c              # double 0.092693999999999999
	.quad	0x3fc27243137b0707              # double 0.14411199999999999
	.quad	0x3fe27e36d22424a2              # double 0.57790699999999995
	.quad	0x3fe0b62845996745              # double 0.52223600000000003
	.quad	0x3fd9cbb3c81908e6              # double 0.40305800000000003
	.quad	0x3fe7dbb7b6bb1290              # double 0.74557099999999998
	.quad	0x3f9a8112ba16e7a3              # double 0.025883
	.quad	0x3fb9478c868b9fdc              # double 0.098748000000000002
	.quad	0x3f872ef0ae536502              # double 0.01132
	.quad	0x3fe37b04ee7c49fd              # double 0.60876699999999995
	.quad	0x3fef2975afaf8594              # double 0.97381099999999998
	.quad	0x3fed101f31f46ed2              # double 0.90821799999999997
	.quad	0x3fc9985ad538ac19              # double 0.199962
	.quad	0x3fe71eff9f87f024              # double 0.72253400000000001
	.quad	0x3fd06a98244e93e2              # double 0.25650600000000001
	.quad	0x3feebc89f40a2878              # double 0.960515
	.quad	0x3fce7ddca4b124d1              # double 0.23821600000000001
	.quad	0x3fee9591cd1c7de5              # double 0.955758
	.quad	0x3fef6f49cf56eac8              # double 0.98233499999999995
	.quad	0x3fe5dcebfec13b9f              # double 0.68321799999999999
	.quad	0x3fc2edbb59ddc1e8              # double 0.14788000000000001
	.quad	0x3fd7d28d002e2329              # double 0.372226
	.quad	0x3fc722856605ee57              # double 0.18074100000000001
	.quad	0x3fc1c7bcc2938de7              # double 0.138908
	.quad	0x3fd9ea5f84cad57c              # double 0.40493000000000001
	.quad	0x3fe80eae18ac9f30              # double 0.75179200000000002
	.quad	0x3facfdb09a671ef3              # double 0.056623
	.quad	0x3fd5964a59c065b6              # double 0.33729799999999999
	.quad	0x3fdd10c6f7a0b5ee              # double 0.45414900000000002
	.quad	0x3fb4fbfc6540cc79              # double 0.081970000000000001
	.quad	0x3fd5ce4649906cca              # double 0.34071499999999999
	.quad	0x3fe05755bccaf70a              # double 0.51066100000000003
	.quad	0x3fddf58c08b75ea6              # double 0.46811199999999997
	.quad	0x3fc3af74cd31769b              # double 0.15379200000000001
	.quad	0x3f87a3db3bfb58d1              # double 0.011542999999999999
	.quad	0x3fc0b1ab0856e697              # double 0.13042200000000001
	.quad	0x3fe23dcad14a0a0f              # double 0.57004299999999997
	.quad	0x3fef07e5a78f25a2              # double 0.96971399999999996
	.quad	0x3fc7d3458cd20afa              # double 0.18613499999999999
	.quad	0x3fcb479d4d834092              # double 0.21312300000000001
	.quad	0x3fee67381d7dbf48              # double 0.95009999999999994
	.quad	0x3fed894c447c30d3              # double 0.92301
	.quad	0x3fd9f9ebe9c88616              # double 0.40587899999999999
	.quad	0x3fd096d0917d6b66              # double 0.25920500000000002
	.quad	0x3fe20644523f67f5              # double 0.56326500000000002
	.quad	0x3fe2b4a2339c0ebf              # double 0.58455000000000001
	.quad	0x3fac04a72ead9275              # double 0.054723000000000001
	.quad	0x3fdcb6bf444e0daa              # double 0.448654
	.quad	0x3fe05e4e69f05ea2              # double 0.51151199999999997
	.quad	0x3fe9a674080f98fa              # double 0.80156899999999998
	.quad	0x3fe29ab0856e696a              # double 0.58138299999999998
	.quad	0x3fd2d6b228dc981c              # double 0.294354
	.quad	0x3fe0f8fabda0dfdf              # double 0.530393
	.quad	0x3fe29897a67a52ac              # double 0.58112699999999995
	.quad	0x3fe7cba732df505d              # double 0.74360999999999999
	.quad	0x3fc8d77b7c7820a3              # double 0.194076
	.quad	0x3fe62a79bbadc098              # double 0.692685
	.quad	0x3fdc1e2584f4c6e7              # double 0.43934000000000001
	.quad	0x3f613a4f8726d04e              # double 0.0021029999999999998
	.quad	0x3fe75783dff3f0fe              # double 0.729433
	.quad	0x3fba5f5275ee99a6              # double 0.103017
	.quad	0x3febde1198aeb80f              # double 0.87085800000000002
	.quad	0x3fe2cf440af1cb8a              # double 0.58780100000000002
	.quad	0x3fe962de8709741d              # double 0.793319
	.quad	0x3fe8fabfb9bed30f              # double 0.780609
	.quad	0x3fcf3311a543f1c7              # double 0.24374599999999999
	.quad	0x3fd4f36262cba733              # double 0.32735500000000001
	.quad	0x3fe502a3486f049b              # double 0.65657200000000004
	.quad	0x3fb50795f676ea42              # double 0.082146999999999997
	.quad	0x3fdd34acaff6d331              # double 0.45634000000000002
	.quad	0x3febb20b8066c2ad              # double 0.86548400000000003
	.quad	0x3fe8c8216c61522a              # double 0.77442999999999995
	.quad	0x3fc695faa8a82a56              # double 0.176452
	.quad	0x3fe8d0d2806af46b              # double 0.77549100000000004
	.quad	0x3fd78bbd3804534c              # double 0.36790400000000001
	.quad	0x3fc86394face67d7              # double 0.19053899999999999
	.quad	0x3fe7058bc59b8024              # double 0.71942700000000004
	.quad	0x3fefa771c970f7ba              # double 0.98919000000000001
	.quad	0x3fd14af0bf1a5ca3              # double 0.27019900000000002
	.quad	0x3fa5c3bd5992428d              # double 0.042508999999999998
	.quad	0x3fd717481b21c476              # double 0.36079600000000001
	.quad	0x3fe9d4b48d3ae686              # double 0.80721500000000002
	.quad	0x3fccd97b30f8c650              # double 0.225387
	.quad	0x3feaeccc46950fc7              # double 0.84140599999999999
	.quad	0x3fc3445ed4a1ad64              # double 0.15052399999999999
	.quad	0x3fd1e9d94d0dcfcc              # double 0.27989799999999998
	.quad	0x3fc40ac7da1ec4e7              # double 0.156579
	.quad	0x3fe99f44d4456712              # double 0.80069199999999996
	.quad	0x3fe20826aa8eb463              # double 0.56349499999999997
	.quad	0x3fadc11e42e12620              # double 0.058113999999999999
	.quad	0x3fe27d60e94ee393              # double 0.57780500000000001
	.quad	0x3feb7e06961c3697              # double 0.85913399999999995
	.quad	0x3fd0a9d627bf61aa              # double 0.26036599999999999
	.quad	0x3fee91819d2391d5              # double 0.95526199999999994
	.quad	0x3fb29dc725c3dee8              # double 0.072720000000000007
	.quad	0x3fe9f49adc8fb86f              # double 0.81110899999999997
	.quad	0x3fe84e746cb966be              # double 0.75957699999999995
	.quad	0x3fd2d8cb07d0aeda              # double 0.29448200000000002
	.quad	0x3fe209246bf01323              # double 0.56361600000000001
	.quad	0x3fef9157abb8800f              # double 0.98649200000000003
	.quad	0x3fda00f345069a4e              # double 0.406308
	.quad	0x3fefe6516db0dd83              # double 0.996865
	.quad	0x3fed8101f31f46ed              # double 0.92199799999999998
	.quad	0x3fdf145d851654d6              # double 0.48561799999999999
	.quad	0x3fde52b4d8ba40d9              # double 0.473798
	.quad	0x3fc5171e29b6b2af              # double 0.164768
	.quad	0x3fc69930be0ded29              # double 0.17655000000000001
	.quad	0x3fe07f6b1a2a4db1              # double 0.51555399999999996
	.quad	0x3fc10214ad362e90              # double 0.13287599999999999
	.quad	0x3fdaf5e84f09528f              # double 0.42125899999999999
	.quad	0x3fd179b34a44c7b0              # double 0.27305299999999999
	.quad	0x3fd66317268d3283              # double 0.349798
	.quad	0x3fe22784a9478c87              # double 0.56732400000000005
	.quad	0x3fdfdcc20d5629d8              # double 0.49784899999999999
	.quad	0x3fe162dc6e2a8006              # double 0.54331799999999997
	.quad	0x3fb14ed2cbea4ebe              # double 0.067609000000000002
	.quad	0x3fdfe44b6e935b92              # double 0.498309
	.quad	0x3faf83382e44b6e9              # double 0.061547999999999999
	.quad	0x3fc931e3a7daa4fd              # double 0.19683500000000001
	.quad	0x3fd7c521dda059a7              # double 0.37140699999999999
	.quad	0x3fddaada33bd9cae              # double 0.46355299999999999
	.quad	0x3fdb5c7cd898b2ea              # double 0.42752000000000001
	.quad	0x3fdbd330941c8217              # double 0.43476500000000001
	.quad	0x3fe9a9d8409e55c1              # double 0.801983
	.quad	0x3fd5cd6c2efd438d              # double 0.34066299999999999
	.quad	0x3fec6f88b9778573              # double 0.88861500000000004
	.quad	0x3fe14959e6256367              # double 0.54020400000000002
	.quad	0x3fdba98aa8650e78              # double 0.43222300000000002
	.quad	0x3febff6d330941c8              # double 0.87492999999999999
	.quad	0x3fd3bf3387160957              # double 0.30854500000000001
	.quad	0x3fb3634dad31fcd2              # double 0.075733999999999996
	.quad	0x3fe0755ffe6d58c9              # double 0.51432800000000001
	.quad	0x3fd40f2becedd484              # double 0.31342599999999998
	.quad	0x3fe16f8ad2567989              # double 0.54486599999999996
	.quad	0x3fab0d0edc3bd599              # double 0.052833999999999999
	.quad	0x3feece075f6fd220              # double 0.96265
	.quad	0x3f86494d50ebaade              # double 0.010881999999999999
	.quad	0x3fe924dd2f1a9fbe              # double 0.78574999999999995
	.quad	0x3feb4df69878316a              # double 0.853267
	.quad	0x3fda8b1dd5d3dc8c              # double 0.41474100000000003
	.quad	0x3fe07c3b4f616723              # double 0.51516499999999998
	.quad	0x3fe158b60f1b25f6              # double 0.54207899999999998
	.quad	0x3fe20efdc9c4da90              # double 0.56433
	.quad	0x3fadb4677b395c42              # double 0.058016999999999999
	.quad	0x3fedaf640639d5e5              # double 0.92766000000000004
	.quad	0x3fcdc59b8023a6ce              # double 0.23259299999999999
	.quad	0x3fe742480e8c8abd              # double 0.72684099999999996
	.quad	0x3fde13db7f173754              # double 0.46996199999999999
	.quad	0x3fec763800218def              # double 0.88943099999999997
	.quad	0x3fe27adafd113837              # double 0.57749700000000004
	.quad	0x3fdc9f6a93f290ac              # double 0.44723000000000002
	.quad	0x3fe584e3ffef3908              # double 0.67247199999999996
	.quad	0x3fc1530ced4e4c94              # double 0.135347
	.quad	0x3fdafdfc19c17226              # double 0.42175200000000002
	.quad	0x3fc393e5fb71fbc6              # double 0.152951
	.quad	0x3fe83f0dc768dfbd              # double 0.75769699999999995
	.quad	0x3fe918915bdd7668              # double 0.78424899999999997
	.quad	0x3fe09f9acffa7eb7              # double 0.51948300000000003
	.quad	0x3fe98cb295e9e1b1              # double 0.79842500000000005
	.quad	0x3fea99fa11a975b0              # double 0.83129600000000003
	.quad	0x3fedc52e72da1230              # double 0.93032000000000004
	.quad	0x3fd2347a5b0ff10f              # double 0.28445300000000001
	.quad	0x3fd172606fac6046              # double 0.27260600000000001
	.quad	0x3fe963800218def4              # double 0.79339599999999999
	.quad	0x3fe36cc5fbf83383              # double 0.60702800000000001
	.quad	0x3fe0d0d6b228dc98              # double 0.52549299999999999
	.quad	0x3fea04901d19157b              # double 0.81305700000000003
	.quad	0x3fc714c22ee4191a              # double 0.18032100000000001
	.quad	0x3fe54436fc158fb4              # double 0.66457699999999997
	.quad	0x3fec688bda9435ad              # double 0.88776200000000005
	.quad	0x3fb05436b8f9b131              # double 0.063784999999999994
	.quad	0x3fddb63d3e4ef028              # double 0.46424799999999999
	.quad	0x3fee364388ebcc6c              # double 0.94412399999999996
	.quad	0x3fdacfb3311a543f              # double 0.41892699999999999
	.quad	0x3fd0d5d3dc8b86b1              # double 0.26305099999999998
	.quad	0x3fea420d5629d841              # double 0.82056300000000004
	.quad	0x3fe2cbc8c0ce91c9              # double 0.58737600000000001
	.quad	0x3fe030ff10ecb74e              # double 0.50598100000000001
	.quad	0x3fb74fe79ee02a78              # double 0.091063000000000005
	.quad	0x3febaedfe75bc44c              # double 0.865097
	.quad	0x3fdb5a89b951c5c5              # double 0.42740099999999998
	.quad	0x3fe0d460aa64c2f8              # double 0.52592499999999998
	.quad	0x3feed464dc22ab26              # double 0.96342700000000003
	.quad	0x3fc39e060fe47992              # double 0.15326000000000001
	.quad	0x3fc1f26f1dc50ce5              # double 0.140211
	.quad	0x3fda5668c2613900              # double 0.411524
	.quad	0x3fe89c36976bc1f0              # double 0.769069
	.quad	0x3fdc85dfa871a3b1              # double 0.44567099999999998
	.quad	0x3f7b845564b662fe              # double 0.006718
	.quad	0x3fdc6f587d6f9768              # double 0.44429600000000002
	.quad	0x3fe557603925bb7b              # double 0.66691599999999995
	.quad	0x3feb8aa21a719b4e              # double 0.86067300000000002
	.quad	0x3fc85729b280f12c              # double 0.19016
	.quad	0x3fd402602c9081c3              # double 0.31264500000000001
	.quad	0x3fe868ab4fa48302              # double 0.76277700000000004
	.quad	0x3fe1fbe553ac4f7f              # double 0.56199900000000003
	.quad	0x3fdf2e59af9ebe9d              # double 0.48720400000000003
	.quad	0x3fe10780fdc1615f              # double 0.53216600000000003
	.quad	0x3fd6a0a958537e2c              # double 0.35355599999999998
	.quad	0x3fab7eb28d8665e0              # double 0.053700999999999999
	.quad	0x3fc218a43bb40b35              # double 0.141377
	.quad	0x3fe1d1aa821f2991              # double 0.55684400000000001
	.quad	0x3feb843e5321e604              # double 0.85989300000000001
	.quad	0x3fe5adc6e2a80065              # double 0.67746300000000004
	.quad	0x3fc0ca0c282c6ef4              # double 0.131166
	.quad	0x3feb80841ede1199              # double 0.85943800000000004
	.quad	0x3fe334a2339c0ebf              # double 0.60017500000000001
	.quad	0x3febf89e774eebf6              # double 0.87409899999999996
	.quad	0x3fa9d2391d57ff9b              # double 0.050431999999999998
	.quad	0x3fe2a65cf67b1c00              # double 0.58280799999999999
	.quad	0x3fef5fb0d51f81a6              # double 0.98043100000000005
	.quad	0x3fdbc8eef1bac2df              # double 0.434139
	.quad	0x3fdc4bcf0b6b6e0d              # double 0.44212699999999999
	.quad	0x3fc1c55000c9539c              # double 0.13883400000000001
	.quad	0x3fd5039ef0f16f44              # double 0.32834600000000003
	.quad	0x3fe07cc7d1bb4917              # double 0.51523200000000002
	.quad	0x3fe8551b4fe79ee0              # double 0.76038899999999998
	.quad	0x3feb7b80a9de8b3b              # double 0.85882599999999998
	.quad	0x3fdf00f776c4827b              # double 0.48443399999999998
	.quad	0x3febef672b884407              # double 0.87297400000000003
	.quad	0x3fe62098915bdd76              # double 0.69147899999999995
	.quad	0x3fdea48f96e15875              # double 0.478794
	.quad	0x3fe7de3da2f8bdec              # double 0.74587899999999996
	.quad	0x3f7247cb70ac3a86              # double 0.004463
	.quad	0x3fe8ad106ee30caa              # double 0.77112599999999998
	.quad	0x3fda474538ef34d7              # double 0.41060000000000002
	.quad	0x3fecc3675ddd2ae9              # double 0.89885300000000001
	.quad	0x3fc11aa821f2990f              # double 0.13362599999999999
	.quad	0x3fd1e514c22ee419              # double 0.27960699999999999
	.quad	0x3fe66b2074ea8da8              # double 0.70057700000000001
	.quad	0x3fea177ea1c68ec5              # double 0.81536799999999998
	.quad	0x3fde6c82e019b0ab              # double 0.47537299999999999
	.quad	0x3fda0096feb4a665              # double 0.40628599999999998
	.quad	0x3fe0fc2656abde40              # double 0.53078000000000003
	.quad	0x3fb22e1ac57e23f2              # double 0.071015999999999996
	.quad	0x3fefa0ba1f4b1ee2              # double 0.98836999999999997
	.quad	0x3fee50e12e83a10a              # double 0.94737300000000002
	.quad	0x3fedbe878fabda0e              # double 0.929508
	.quad	0x3fd03779e9d0e992              # double 0.253386
	.quad	0x3fdf6e3b46fdeb53              # double 0.49110300000000001
	.quad	0x3fd34ddb5525cc42              # double 0.30162699999999998
	.quad	0x3fe172ae07e5a78f              # double 0.54524899999999998
	.quad	0x3fe720ddc6195465              # double 0.72276200000000002
	.quad	0x3f9f07bfe7e1fc09              # double 0.030303
	.quad	0x3feaf61240746456              # double 0.84253800000000001
	.quad	0x3fe7fe047d3d4281              # double 0.74975800000000004
	.quad	0x3fe4430d306a2b17              # double 0.633185
	.quad	0x3fd023033a4723ab              # double 0.252137
	.quad	0x3fe0c6bce8533b10              # double 0.52425999999999995
	.quad	0x3fb2c332f01754b0              # double 0.073290999999999995
	.quad	0x3fdbea0ba1f4b1ee              # double 0.43615999999999999
	.quad	0x3fd724851a869403              # double 0.36160399999999998
	.quad	0x3fe59acde19fc2a9              # double 0.67514700000000005
	.quad	0x3fdbff2e48e8a71e              # double 0.43745000000000001
	.quad	0x3fb55ebfa8f7db6e              # double 0.083476999999999995
	.quad	0x3fdde8c47a17f413              # double 0.46733200000000003
	.quad	0x3feec32a8c9b8455              # double 0.96132399999999995
	.quad	0x3fc3807789a45910              # double 0.15235799999999999
	.quad	0x3fde1d0c80410300              # double 0.47052300000000002
	.quad	0x3fe235daad601ffb              # double 0.56907399999999997
	.quad	0x3fe2fcf80dc33722              # double 0.59338000000000002
	.quad	0x3fe9769014b599aa              # double 0.79572299999999996
	.quad	0x3fd4b6a619da9c99              # double 0.32364799999999999
	.quad	0x3fec3b46fdeb52ca              # double 0.88223600000000002
	.quad	0x3fca7b99d451fc4c              # double 0.206897
	.quad	0x3fe62fdfc19c1722              # double 0.69334399999999996
	.quad	0x3fd7f666234a87e4              # double 0.37441400000000002
	.quad	0x3fe160a2014727dd              # double 0.54304600000000003
	.quad	0x3fb82a9930be0ded              # double 0.094399999999999998
	.quad	0x3fde0329802c0a4a              # double 0.468943
	.quad	0x3fe547a7c9de0503              # double 0.66499699999999995
	.quad	0x3fe402517e77d524              # double 0.62528300000000003
	.quad	0x3fe843632c1f42bb              # double 0.75822599999999996
	.quad	0x3fc4e9ff0cbaf966              # double 0.16339100000000001
	.quad	0x3feda0168b5cbff4              # double 0.92579199999999994
	.quad	0x3fd4320d9945b6c3              # double 0.31555499999999997
	.quad	0x3fb6173b85e80bed              # double 0.086291999999999994
	.quad	0x3febf19f7f8ca81a              # double 0.87324500000000005
	.quad	0x3fe4dfb0d51f81a6              # double 0.65230600000000005
	.quad	0x3fe3c4cdfaca361a              # double 0.61777400000000005
	.quad	0x3fdf5907d912556d              # double 0.48980899999999999
	.quad	0x3fa8da1a93293d10              # double 0.048538999999999999
	.quad	0x3fef8487b99d4520              # double 0.98492800000000002
	.quad	0x3fef66e008e9b38d              # double 0.98130799999999995
	.quad	0x3fca30446b69db66              # double 0.204598
	.quad	0x3fe09105e1c15098              # double 0.51770300000000002
	.quad	0x3fee73d9ec700043              # double 0.95164199999999999
	.quad	0x3fdb2a9930be0ded              # double 0.42447499999999999
	.quad	0x3fcc809d495182aa              # double 0.22267500000000001
	.quad	0x3fe7672324c83665              # double 0.73133999999999999
	.quad	0x3fe4bfa2ad3e920c              # double 0.648393
	.quad	0x3fd2cb46bacf7447              # double 0.293657
	.quad	0x3fdfa9c99285a922              # double 0.49473800000000001
	.quad	0x3fe0503d9a95421c              # double 0.509795
	.quad	0x3feb584b1ab0856e              # double 0.85452799999999995
	.quad	0x3fe95a294141e9af              # double 0.79225599999999996
	.quad	0x3fd7cedd48451330              # double 0.37200100000000003
	.quad	0x3fccfe47991bc558              # double 0.22650999999999999
	.quad	0x3fb39c1f85d744f6              # double 0.076601000000000002
	.quad	0x3fef18372e6a7696              # double 0.97170599999999996
	.quad	0x3fecbf961804d984              # double 0.89838700000000004
	.quad	0x3fdff483cafb3b75              # double 0.49929899999999999
	.quad	0x3fcb040bfe3b03e2              # double 0.211061
	.quad	0x3fe2ab81f969e3c9              # double 0.58343599999999995
	.quad	0x3fe53215fcc1871e              # double 0.66236399999999995
	.quad	0x3fdd9f59ccfaeff6              # double 0.46285100000000001
	.quad	0x3fd82c7b890d5a5c              # double 0.37771500000000002
	.quad	0x3fe73cb3e5753a3f              # double 0.72616000000000003
	.quad	0x3fceb3461309c800              # double 0.239846
	.quad	0x3fef482be8bc169c              # double 0.97755999999999998
	.quad	0x3fe4866e43aa79bc              # double 0.64141000000000004
	.quad	0x3febbeee52589268              # double 0.86705699999999997
	.quad	0x3fc3a5a038194c01              # double 0.15349199999999999
	.quad	0x3fc10ca1cef240fb              # double 0.13319800000000001
	.quad	0x3fedb242070b8cfc              # double 0.92801
	.quad	0x3fd88f2170931013              # double 0.38373600000000002
	.quad	0x3fe469a0ad8a1166              # double 0.63789399999999996
	.quad	0x3fd1eaa2a0a95853              # double 0.27994599999999997
	.quad	0x3fd0234eb9a176de              # double 0.25215500000000002
	.quad	0x3feb01b003686a4d              # double 0.84395600000000004
	.quad	0x3fe9ef262888b546              # double 0.81044300000000002
	.quad	0x3fd243526527a205              # double 0.28535899999999997
	.quad	0x3fd596a6a012599f              # double 0.33732000000000001
	.quad	0x3f96698bb4d48883              # double 0.021887
	.quad	0x3fe69240746455eb              # double 0.70535300000000001
	.quad	0x3fdd957470eb24a7              # double 0.46224700000000002
	.quad	0x3fe1d8622c450269              # double 0.55766400000000005
	.quad	0x3fe19aa1d755bccb              # double 0.550126
	.quad	0x3f93ea704bc27632              # double 0.019449000000000001
	.quad	0x3fdc63022dd7a9a0              # double 0.44354300000000002
	.quad	0x3fc013b18dac258d              # double 0.12560099999999999
	.quad	0x3fe35d4845132f88              # double 0.60513700000000004
	.quad	0x3fe377d73c925786              # double 0.608379
	.quad	0x3fee0f08461f9f02              # double 0.93933500000000003
	.quad	0x3fa00f98fa376923              # double 0.031369000000000001
	.quad	0x3fda220bc382a130              # double 0.40832800000000002
	.quad	0x3fdfcbd556084a51              # double 0.49681599999999998
	.quad	0x3fdbf36694898f60              # double 0.43673099999999998
	.quad	0x3fe9a2bbecaab8a6              # double 0.80111500000000002
	.quad	0x3fe73f8982cb20fb              # double 0.72650599999999999
	.quad	0x3fd2eaa6d2674081              # double 0.295572
	.quad	0x3fdebea0ba1f4b1f              # double 0.48038500000000001
	.quad	0x3fee4f440af1cb8a              # double 0.94717600000000002
	.quad	0x3feca5e56cd6c2f0              # double 0.89525100000000002
	.quad	0x3fe4d4e8fb00bcbe              # double 0.65098999999999996
	.quad	0x3fe605d0fa58f712              # double 0.68820999999999999
	.quad	0x3fe124d6e47dc37a              # double 0.53574699999999997
	.quad	0x3fea877036c9c0a9              # double 0.82903300000000002
	.quad	0x3fd606f262888b54              # double 0.34417399999999998
	.quad	0x3fd478359bc33f85              # double 0.31983699999999998
	.quad	0x3fe252a411c2a023              # double 0.57258799999999999
	.quad	0x3fefaef911cf355d              # double 0.99010900000000001
	.quad	0x3fce0dc33721d53d              # double 0.234795
	.quad	0x3fd870b49e01de27              # double 0.38187900000000002
	.quad	0x3fa65fb71fbc5dea              # double 0.043699000000000002
	.quad	0x3fe59bd8383ad9f1              # double 0.67527400000000004
	.quad	0x3fe5d0c5eb313be2              # double 0.68173499999999998
	.quad	0x3fe2ffd1dcd7060c              # double 0.59372800000000003
	.quad	0x3fed4067cf1c3266              # double 0.91411200000000004
	.quad	0x3fd1a055757d5a9f              # double 0.27541100000000002
	.quad	0x3fe095182a9930be              # double 0.51819999999999999
	.quad	0x3fd09f5dfeb8d823              # double 0.25972699999999999
	.quad	0x3fd72c98e53eb39a              # double 0.362097
	.quad	0x3fec06338b47c73f              # double 0.87575700000000001
	.quad	0x3fd00ccbc05d52c1              # double 0.25078099999999998
	.quad	0x3fd8ccd0fe8ab4fa              # double 0.38750099999999998
	.quad	0x3fd484d76ab58080              # double 0.320608
	.quad	0x3fdd7c45cbbc2b95              # double 0.46071000000000001
	.quad	0x3fa663c74fb549f9              # double 0.043729999999999998
	.quad	0x3f837c1376d54973              # double 0.0095139999999999998
	.quad	0x3fd8e785b5b70692              # double 0.389131
	.quad	0x3fe547dc37a3db3c              # double 0.665022
	.quad	0x3fd742917507e9d9              # double 0.36343799999999998
	.quad	0x3fe0ffa3b9ae0c17              # double 0.53120599999999996
	.quad	0x3fc654ef459d9903              # double 0.17446700000000001
	.quad	0x3fddc37e6f71a7e3              # double 0.465057
	.quad	0x3fc4436fc158fb44              # double 0.158308
	.quad	0x3fdb11276fb09204              # double 0.42292200000000002
	.quad	0x3fd17542a23bff8b              # double 0.27278200000000002
	.quad	0x3fc0a02b841248d8              # double 0.129888
	.quad	0x3fb79cc74b838c11              # double 0.092235999999999999
	.quad	0x3fe338b69552e2fc              # double 0.60067300000000001
	.quad	0x3fe867ab7564302b              # double 0.76265499999999997
	.quad	0x3fdce75bc44bf4cb              # double 0.45162099999999999
	.quad	0x3fdf1e57d9dba909              # double 0.48622700000000002
	.quad	0x3fd456eac8605682              # double 0.317805
	.quad	0x3fe450247021d10b              # double 0.63478299999999999
	.quad	0x3fe24267839cd812              # double 0.57060599999999995
	.quad	0x3fe0345cfede97d0              # double 0.50639199999999995
	.quad	0x3fd88bbd3804534c              # double 0.38352900000000001
	.quad	0x3fe2281344806291              # double 0.56739200000000001
	.quad	0x3f8eb4a66559f6ec              # double 0.014992999999999999
	.quad	0x3fbd424e59296702              # double 0.11429300000000001
	.quad	0x3fea8d9945b6c376              # double 0.82978499999999999
	.quad	0x3fb3c73eee525892              # double 0.077258999999999994
	.quad	0x3fde6fcdee34fc61              # double 0.475574
	.quad	0x3fee2352eb5f5f0b              # double 0.94181199999999998
	.quad	0x3fe12263d816aceb              # double 0.53544800000000004
	.quad	0x3fceb6f19934efcc              # double 0.239958
	.quad	0x3fe2fa93af74cd31              # double 0.59308799999999995
	.quad	0x3fda842b734b5137              # double 0.41431699999999999
	.quad	0x3fe2bf0fe047d3d4              # double 0.58582299999999998
	.quad	0x3fcf46b26bf8769f              # double 0.24434500000000001
	.quad	0x3fd8a415f45e0b4e              # double 0.385015
	.quad	0x3fe1000000000000              # double 0.53125
	.quad	0x3fcf85a4f00ef135              # double 0.24626600000000001
	.quad	0x3fea30941c8216c6              # double 0.81842999999999999
	.quad	0x3fdf82491afc04c9              # double 0.49232700000000001
	.quad	0x3fe82426bb55ac04              # double 0.754413
	.quad	0x3fe39973d9ec7000              # double 0.61248199999999997
	.quad	0x3fe43708aac96cc6              # double 0.631718
	.quad	0x3fbf484d76ab5808              # double 0.122197
	.quad	0x3fe051e321a2e7f7              # double 0.509996
	.quad	0x3fc0c6ac215b9a5b              # double 0.13106300000000001
	.quad	0x3fe4dce7cd035372              # double 0.65196600000000005
	.quad	0x3fec55e6bc621b7e              # double 0.885486
	.quad	0x3fd9f01fb82c2bd8              # double 0.405281
	.quad	0x3fc9cce1c58255b0              # double 0.20156499999999999
	.quad	0x3fe91c49774256bd              # double 0.78470300000000004
	.quad	0x3fd5d477bbf93ff2              # double 0.34109299999999998
	.quad	0x3feb608aefb2aae3              # double 0.85553500000000005
	.quad	0x3fdd23315d701d9f              # double 0.45527299999999998
	.quad	0x3fee540ee06d9381              # double 0.94776099999999996
	.quad	0x3fbe682b62845996              # double 0.11877699999999999
	.quad	0x3fe30de8f6cefed6              # double 0.59544799999999998
	.quad	0x3fe3859641f64495              # double 0.61005699999999996
	.quad	0x3fc86e19b90ea9e7              # double 0.19086
	.quad	0x3fd11600f345069a              # double 0.26696799999999998
	.quad	0x3fe19ce28ed5f139              # double 0.55040100000000003
	.quad	0x3fb2116659d12cae              # double 0.070578000000000002
	.quad	0x3fd1d47bedb72820              # double 0.27859400000000001
	.quad	0x3fd0d451fc4c1659              # double 0.262959
	.quad	0x3fec5b5525cc4263              # double 0.88614899999999996
	.quad	0x3fe1ecebbba55d1c              # double 0.56017099999999997
	.quad	0x3fcfb5286b59146e              # double 0.24771599999999999
	.quad	0x3fe257f737da61e1              # double 0.57323800000000003
	.quad	0x3fe82133c1ce6c09              # double 0.75405299999999997
	.quad	0x3feb39c7368ad688              # double 0.85080299999999998
	.quad	0x3fe949c2c1b10fd8              # double 0.79025400000000001
	.quad	0x3fe016d8f4f93bc1              # double 0.50278900000000004
	.quad	0x3fb91bf7ad4b2746              # double 0.098083000000000003
	.quad	0x3fe2bc4f3ba775fb              # double 0.58548699999999998
	.quad	0x3fc6e09fe86833c6              # double 0.17873
	.quad	0x3fe703c07ee0b0af              # double 0.71920799999999996
	.quad	0x3fe8e557de0d66f1              # double 0.77799600000000002
	.quad	0x3fe89669ced0b30b              # double 0.76836099999999996
	.quad	0x3fece43cc07aaef3              # double 0.90286100000000002
	.quad	0x3f7e58e64b231401              # double 0.0074089999999999998
	.quad	0x3fb094c447c30d30              # double 0.064769999999999994
	.quad	0x3fea0f8e7ddca4b1              # double 0.81439899999999998
	.quad	0x3fe486940357a355              # double 0.641428
	.quad	0x3fb957bc7f77af64              # double 0.098994999999999999
	.quad	0x3fed0eb24a6a875d              # double 0.90804399999999996
	.quad	0x3fe07b86f47b677f              # double 0.51507899999999995
	.quad	0x3fcd38583621fafd              # double 0.22828200000000001
	.quad	0x3fb9e40c8472c0e8              # double 0.101136
	.quad	0x3fe35ce5b4245f5b              # double 0.60509000000000002
	.quad	0x3fedd5043e5321e6              # double 0.932253
	.quad	0x3fee6219652bd3c3              # double 0.94947499999999996
	.quad	0x3fc0bf22c01e68a1              # double 0.130833
	.quad	0x3fdcfa1e3eaf6838              # double 0.452766
	.quad	0x3fee83fb3743632c              # double 0.95361099999999998
	.quad	0x3fc2ba3875925354              # double 0.14630799999999999
	.quad	0x3fc73cff64cf8d71              # double 0.18154899999999999
	.quad	0x3fe2a09cc319c5a4              # double 0.58210600000000001
	.quad	0x3fad56084a515cea              # double 0.057297000000000001
	.quad	0x3fe38dc55000c954              # double 0.61105600000000004
	.quad	0x3fddb841248d7e02              # double 0.46437099999999998
	.quad	0x3fecff498c3b0c46              # double 0.90616300000000005
	.quad	0x3fe27ae147ae147b              # double 0.57750000000000001
	.quad	0x3fc248301a79feca              # double 0.14282800000000001
	.quad	0x3fda76e1deacc921              # double 0.41350599999999998
	.quad	0x3fd7f14983d79075              # double 0.37410199999999999
	.quad	0x3feb9611ba3ca750              # double 0.86206899999999997
	.quad	0x3fe79784ec636b09              # double 0.73724599999999996
	.quad	0x3f95f28848387df6              # double 0.021433000000000001
	.quad	0x3fedb8a19c9d5a18              # double 0.92878799999999995
	.quad	0x3fef779207d4e098              # double 0.98334600000000005
	.quad	0x3fe7d2c9d16fc9bc              # double 0.74448099999999995
	.quad	0x3fd5462c343b70ef              # double 0.33240799999999998
	.quad	0x3feead2dcb1465e9              # double 0.95864000000000004
	.quad	0x3fe2c26138fffbce              # double 0.58622799999999997
	.quad	0x3fe919e0e736049f              # double 0.78440900000000002
	.quad	0x3fe8afc69728a611              # double 0.77145699999999995
	.quad	0x3fd5b1d92b7fe08b              # double 0.33898
	.quad	0x3f7e00d1b71758e2              # double 0.0073249999999999999
	.quad	0x3feb79ca5bd944aa              # double 0.85861699999999996
	.quad	0x3fd627ed84d338f8              # double 0.34618700000000002
	.quad	0x3fe891e646f15619              # double 0.76780999999999999
	.quad	0x3fc08c26138fffbd              # double 0.129277
	.quad	0x3fe822ab25b317f0              # double 0.75423200000000001
	.quad	0x3fd247a9e2bcf91a              # double 0.28562399999999999
	.quad	0x3fefdc9a34ca0c28              # double 0.99567899999999998
	.quad	0x3fe411c8eabffcdb              # double 0.62717100000000003
	.quad	0x3fcbc0e38a7e73a3              # double 0.21682399999999999
	.quad	0x3fe1a1059ea57215              # double 0.55090600000000001
	.quad	0x3fd5a3a4b5568e82              # double 0.338113
	.quad	0x3fd5c4c9c90c4dec              # double 0.34013599999999999
	.quad	0x3fced2135daad602              # double 0.240786
	.quad	0x3fe078ee28672757              # double 0.51476200000000005
	.quad	0x3fd5444178705426              # double 0.332291
	.quad	0x3fe9879c4113c686              # double 0.79780399999999996
	.quad	0x3fb862b27cbf6e3f              # double 0.095255999999999993
	.quad	0x3fea126c7eae5bc8              # double 0.81474899999999995
	.quad	0x3fe8329802c0a4a0              # double 0.75617599999999995
	.quad	0x3fe2350d2806af47              # double 0.56897600000000004
	.quad	0x3fe4e3476295208e              # double 0.65274399999999999
	.quad	0x3fe8ddf2239e6aba              # double 0.77709300000000003
	.quad	0x3fb52b5e529bae47              # double 0.082693000000000003
	.quad	0x3feb12641b328b6e              # double 0.84599500000000005
	.quad	0x3fc8d83c6c97d8cf              # double 0.19409899999999999
	.quad	0x3fea54152b0a6fc6              # double 0.82276400000000005
	.quad	0x3fcaff43419e3001              # double 0.21091499999999999
	.quad	0x3fd9ed5f138bcdff              # double 0.405113
	.quad	0x3fc90b28522ea0fd              # double 0.19565299999999999
	.quad	0x3fed6cb966be7afa              # double 0.91952199999999995
	.quad	0x3fe17ceb78897e99              # double 0.54649899999999996
	.quad	0x3fd1c8e25c810a57              # double 0.27788600000000002
	.quad	0x3fdf7de5082cf52c              # double 0.49205900000000002
	.quad	0x3fe1104f6dfc5cdd              # double 0.53324099999999997
	.quad	0x3fdb0cc35ce18266              # double 0.42265399999999997
	.quad	0x3fb9600f345069a5              # double 0.099122000000000002
	.quad	0x3fd2ec743201040c              # double 0.295682
	.quad	0x3fe2d82dbe7f2c30              # double 0.588889
	.quad	0x3fef464dc22ab25b              # double 0.97733199999999997
	.quad	0x3fe49ab0856e696a              # double 0.64388299999999998
	.quad	0x3fda3519bd4067cf              # double 0.40949099999999999
	.quad	0x3fbae0b0af5fd47c              # double 0.104991
	.quad	0x3fefab40f66a5508              # double 0.98965499999999995
	.quad	0x3feb99fa11a975b0              # double 0.86254600000000003
	.quad	0x3fe6998f1d3ed528              # double 0.70624500000000001
	.quad	0x3fe783b81b64e054              # double 0.73482899999999995
	.quad	0x3fa6a1a500d5e8d5              # double 0.044201999999999998
	.quad	0x3fd9aa64c2f837b5              # double 0.40102500000000002
	.quad	0x3fe308919ef954eb              # double 0.59479599999999999
	.quad	0x3fe4c981beb18117              # double 0.64959800000000001
	.quad	0x3fe4f3eab367a0f9              # double 0.654775
	.quad	0x3fde7ac81d3aa36a              # double 0.476244
	.quad	0x3fe7e121ee675148              # double 0.74623200000000001
	.quad	0x3fc77f7be121ee67              # double 0.18357799999999999
	.quad	0x3fbb634dad31fcd2              # double 0.106984
	.quad	0x3fe1b3311a543f1c              # double 0.55312399999999995
	.quad	0x3fd494e5d5b24e9c              # double 0.32158799999999998
	.quad	0x3fede5929670196e              # double 0.93427400000000005
	.quad	0x3fde518b0d0edc3c              # double 0.47372700000000001
	.quad	0x3fc1c8c0ce91c8eb              # double 0.13893900000000001
	.quad	0x3fe7af7f498c3b0c              # double 0.74017299999999997
	.quad	0x3fd589f40a2877ee              # double 0.33654499999999998
	.quad	0x3fe1ba0a52695960              # double 0.55396000000000001
	.quad	0x3fc705100a393ee6              # double 0.179842
	.quad	0x3fd83636f3b213e4              # double 0.37830900000000001
	.quad	0x3fe238bcdfefbf40              # double 0.56942599999999999
	.quad	0x3feaf505d0fa58f7              # double 0.84240999999999999
	.quad	0x3feafbaecd07852f              # double 0.84322299999999994
	.quad	0x3fef8474d9c6b053              # double 0.98491899999999998
	.quad	0x3fe0bf0fe047d3d4              # double 0.52332299999999998
	.quad	0x3fed17d8cf398e97              # double 0.909161
	.quad	0x3fec16aceaaf35e3              # double 0.87776799999999999
	.quad	0x3fe7e149c6f36ef8              # double 0.746251
	.quad	0x3fd17c3504c48adf              # double 0.273206
	.quad	0x3fb4435efa615a8e              # double 0.079153000000000001
	.quad	0x3fe31157abb8800f              # double 0.59586700000000004
	.quad	0x3fe3057d1782d384              # double 0.59441999999999995
	.quad	0x3fe66a960b6f9fcb              # double 0.70051099999999999
	.quad	0x3fe70303c07ee0b1              # double 0.71911800000000003
	.quad	0x3fe30eb0318b9347              # double 0.59554300000000004
	.quad	0x3fe35bec2480e8c9              # double 0.60497100000000004
	.quad	0x3fe4e2435696e58a              # double 0.65261999999999998
	.quad	0x3fdcb4edb2f661f2              # double 0.44854300000000003
	.quad	0x3fe4a031ceaf251c              # double 0.64455499999999999
	.quad	0x3fe60adcd2d44dcb              # double 0.68882600000000005
	.quad	0x3fd33986338b47c7              # double 0.30038599999999999
	.quad	0x3fa3b03e20ccff22              # double 0.038454000000000002
	.quad	0x3fe5903211cb039f              # double 0.67385200000000001
	.quad	0x3fe1547e06961c37              # double 0.54156400000000005
	.quad	0x3fe20df58c08b75f              # double 0.56420400000000004
	.quad	0x3fecd17e77d523b3              # double 0.90057299999999996
	.quad	0x3feac3526527a205              # double 0.83634299999999995
	.quad	0x3fd116c1e364bec6              # double 0.26701399999999997
	.quad	0x3fc0e73e681a9b8d              # double 0.13205700000000001
	.quad	0x3fd6250f840181e0              # double 0.34601199999999999
	.quad	0x3feaa0b5ed8d36b5              # double 0.83211800000000002
	.quad	0x3fdfd2a1f8e3ac0c              # double 0.49723099999999998
	.quad	0x3fadc69f8c21e1d2              # double 0.058155999999999999
	.quad	0x3fe9907d912556d2              # double 0.79888800000000004
	.quad	0x3fe8a599ed7c6fbd              # double 0.77021499999999998
	.quad	0x3fde7c7820a30db7              # double 0.47634700000000002
	.quad	0x3fdda305532617c2              # double 0.46307500000000001
	.quad	0x3fd3ebcc6c54bcf1              # double 0.31126700000000002
	.quad	0x3fd373ffac1d29dc              # double 0.30395499999999998
	.quad	0x3fd6800218def417              # double 0.35156300000000001
	.quad	0x3fb1fff79c842fa5              # double 0.070311999999999999
	.quad	0x3fdb75cd0bb6ed67              # double 0.42906499999999997
	.quad	0x3fee195ee136e71d              # double 0.94059700000000002
	.quad	0x3fe2723033a4723b              # double 0.57643900000000003
	.quad	0x3feb777d0f1f57b4              # double 0.85833599999999998
	.quad	0x3fe0f7fae3608d09              # double 0.53027100000000005
	.quad	0x3fe8efbd273d5bab              # double 0.77926499999999999
	.quad	0x3fe11b823c85c24c              # double 0.53460799999999997
	.quad	0x3fdcf2f9873ffac2              # double 0.45233000000000001
	.quad	0x3fc35be5d9e40c84              # double 0.15124199999999999
	.quad	0x3fe0f79207d4e098              # double 0.53022100000000005
	.quad	0x3fc30a4e379b77c0              # double 0.148752
	.quad	0x3fefd7bc7f77af64              # double 0.99508499999999999
	.quad	0x3fe8bb5393250b52              # double 0.77286699999999997
	.quad	0x3fecac083126e979              # double 0.89600000000000002
	.quad	0x3fd38beb5b2d4d40              # double 0.30541499999999999
	.quad	0x3fcd0de093532e7b              # double 0.22698599999999999
	.quad	0x3fef2f6e82949a56              # double 0.97453999999999996
	.quad	0x3fe060b6f9fcb0c0              # double 0.51180599999999998
	.quad	0x3fdeb7ed41b75a75              # double 0.47997600000000001
	.quad	0x3fe0d52c16df3f96              # double 0.52602199999999999
	.quad	0x3fa94ccab3edd8b6              # double 0.049414
	.quad	0x3fca00b029281776              # double 0.20314599999999999
	.quad	0x3fef29670196d8f5              # double 0.973804
	.quad	0x3fd71b003686a4ca              # double 0.36102299999999998
	.quad	0x3fde51e75360d024              # double 0.47374899999999998
	.quad	0x3fe01c8a7a41e57e              # double 0.50348400000000004
	.quad	0x3fd79f0a1be2b496              # double 0.36908200000000002
	.quad	0x3fcac8cd63cb8173              # double 0.20925299999999999
	.quad	0x3fe2ea8b8f14db59              # double 0.59113099999999996
	.quad	0x3fa783382e44b6e9              # double 0.045922999999999999
	.quad	0x3fdbd7ba6698bb4d              # double 0.43504199999999998
	.quad	0x3fc0f922962cfd8f              # double 0.132603
	.quad	0x3fed80c73abc9470              # double 0.92196999999999996
	.quad	0x3fdbe364bec679cc              # double 0.43575399999999997
	.quad	0x3fe0371b8aa00193              # double 0.50672700000000004
	.quad	0x3fe8b33764f11b61              # double 0.77187700000000004
	.quad	0x3fe28902de00d1b7              # double 0.57922499999999999
	.quad	0x3faeddce7cd03537              # double 0.060285999999999999
	.quad	0x3fe5684f09528f19              # double 0.66898299999999999
	.quad	0x3fa118a009f62307              # double 0.033390999999999997
	.quad	0x3fd3f993d5347a5b              # double 0.312108
	.quad	0x3fcda671ef30a4e3              # double 0.23164199999999999
	.quad	0x3fd77d6b65a9a805              # double 0.36703000000000002
	.quad	0x3fd926e115592d99              # double 0.39299800000000001
	.quad	0x3fd0418d6909aed5              # double 0.25400099999999998
	.quad	0x3fc27829068986fd              # double 0.144292
	.quad	0x3fd77f950b955f78              # double 0.36716199999999999
	.quad	0x3fd9ce52deca2553              # double 0.40321800000000002
	.quad	0x3fcaef77f27fe4bd              # double 0.21043300000000001
	.quad	0x3fc435158b827fa2              # double 0.15787000000000001
	.quad	0x3fcb99e518f3eccc              # double 0.21563399999999999
	.quad	0x3fe3d0c5eb313be2              # double 0.61923499999999998
	.quad	0x3fde4b44a1f08030              # double 0.47334399999999999
	.quad	0x3fccde8f6cefed63              # double 0.22554199999999999
	.quad	0x3fc315df6555c52e              # double 0.14910499999999999
	.quad	0x3fe65c422036006d              # double 0.69876199999999999
	.quad	0x3fe78b1dd5d3dc8c              # double 0.73573200000000005
	.quad	0x3fefea39c51dabe2              # double 0.99734199999999995
	.quad	0x3fd34b76f6d76252              # double 0.301481
	.quad	0x3fafed84d338f798              # double 0.062358999999999998
	.quad	0x3fc461522a6f3f53              # double 0.15922
	.quad	0x3fae4473cd573648              # double 0.059116000000000002
	.quad	0x3fd601083dbc2331              # double 0.34381299999999998
	.quad	0x3fda0539fba450ad              # double 0.40656900000000001
	.quad	0x3fdeb463497b7415              # double 0.47976000000000002
	.quad	0x3fd3d1bf7ad4b274              # double 0.30967699999999998
	.quad	0x3fe681754b05b7d0              # double 0.70330300000000001
	.quad	0x3fae17a02fb5d031              # double 0.058774
	.quad	0x3fe4d4b2745bf26f              # double 0.65096399999999999
	.quad	0x3fbe9db65ecc3e32              # double 0.11959400000000001
	.quad	0x3fea545a5fc7e6b4              # double 0.822797
	.quad	0x3fd348e4755ffe6d              # double 0.30132399999999998
	.quad	0x3feb93682730c671              # double 0.86174399999999995
	.quad	0x3fd0b2e59af9ebea              # double 0.26091900000000001
	.quad	0x3fe1e9878316a055              # double 0.55975699999999995
	.quad	0x3fd776fb09203a32              # double 0.36663699999999999
	.quad	0x3feec84d76ab5808              # double 0.961951
	.quad	0x3fd454e6e221c8a8              # double 0.31768200000000002
	.quad	0x3fb430f49491f2dc              # double 0.078871999999999998
	.quad	0x3fcbe5eaab042529              # double 0.21795400000000001
	.quad	0x3fe7496030c23fab              # double 0.72770699999999999
	.quad	0x3fd42834d26fa3fd              # double 0.31495400000000001
	.quad	0x3fd30eed02cd39da              # double 0.297786
	.quad	0x3fe4eb2074ea8da8              # double 0.65370200000000001
	.quad	0x3fe7748a159817b9              # double 0.73297599999999996
	.quad	0x3fd9c98e53eb399f              # double 0.40292699999999998
	.quad	0x3fdd2d6a9c560c7c              # double 0.455897
	.quad	0x3fb6bc947064ecea              # double 0.088815000000000005
	.quad	0x3fe4542a23bff8a9              # double 0.63527400000000001
	.quad	0x3faa2b3892ee84ad              # double 0.051110999999999997
	.quad	0x3fdda14057082492              # double 0.46296700000000002
	.quad	0x3fa89917939a7c18              # double 0.048043000000000002
	.quad	0x3fd2fbf83382e44b              # double 0.29662899999999998
	.quad	0x3fedf9fa97e132b5              # double 0.93676499999999996
	.quad	0x3fe2763e4abe6a33              # double 0.57693399999999995
	.quad	0x3feca1a93293d103              # double 0.89473400000000003
	.quad	0x3fe48d10f51ac9b0              # double 0.64222000000000001
	.quad	0x3fe91cf56eac8605              # double 0.78478499999999995
	.quad	0x3fe8737da61e0c5b              # double 0.76409800000000005
	.quad	0x3fe60cb4aec8d5c7              # double 0.68905099999999997
	.quad	0x3fe43c70c996b767              # double 0.632378
	.quad	0x3f96644d87724fa9              # double 0.021867000000000001
	.quad	0x3fe601a5870da5db              # double 0.68770100000000001
	.quad	0x3fe68164840e171a              # double 0.703295
	.quad	0x3fe29bde82d7b635              # double 0.58152700000000002
	.quad	0x3fd8cd1c7de5082d              # double 0.387519
	.quad	0x3fdd8ee6b8305d96              # double 0.46184700000000001
	.quad	0x3fea247ecfe9b7bf              # double 0.81695499999999999
	.quad	0x3fbdac14c660a201              # double 0.115907
	.quad	0x3fece8d10f51ac9b              # double 0.90342
	.quad	0x3fe5c5e6ff7dfa01              # double 0.68040800000000001
	.quad	0x3fe8fb1c0010c6f8              # double 0.78065300000000004
	.quad	0x3fc87229e90795f6              # double 0.19098399999999999
	.quad	0x3feb7caea747d806              # double 0.85897000000000001
	.quad	0x3fd2bae03b3e9a70              # double 0.29265600000000003
	.quad	0x3feaa25b749adc90              # double 0.83231900000000003
	.quad	0x3fea9b5a63f9a49c              # double 0.83146399999999998
	.quad	0x3fe0214057082492              # double 0.50405900000000003
	.quad	0x3fe739a5a89b951c              # double 0.72578699999999996
	.quad	0x3fe76236c15d2d02              # double 0.73073900000000003
	.quad	0x3fee240b780346dc              # double 0.94189999999999995
	.quad	0x3fd534ca0c282c6f              # double 0.331347
	.quad	0x3fe090ea9e6eeb70              # double 0.51768999999999998
	.quad	0x3fea7865d7cb2d90              # double 0.82719699999999996
	.quad	0x3facfe36d22424a2              # double 0.056626999999999997
	.quad	0x3fe12dcd2d44dca9              # double 0.53684100000000001
	.quad	0x3fdc8a4c1ebc83a9              # double 0.44594099999999998
	.quad	0x3fef65bea0ba1f4b              # double 0.98116999999999998
	.quad	0x3fd94b1ab0856e69              # double 0.39520899999999998
	.quad	0x3fc3515054ac29bf              # double 0.150919
	.quad	0x3fec0c88a47ecfea              # double 0.87653000000000003
	.quad	0x3fc772f76e6106ab              # double 0.183196
	.quad	0x3fea258f7121ab4b              # double 0.81708499999999995
	.quad	0x3fe9c3e100607810              # double 0.80516100000000002
	.quad	0x3fe4c37c5692b3cc              # double 0.64886299999999997
	.quad	0x3fe74692f6e8294a              # double 0.72736500000000004
	.quad	0x3fb59524bfd2e947              # double 0.084307000000000007
	.quad	0x3fe55b1209edbf8c              # double 0.66736700000000004
	.quad	0x3fe4860780fdc161              # double 0.64136099999999996
	.quad	0x3fe08c8eef1bac2e              # double 0.51715800000000001
	.quad	0x3fd7937d1fe64f55              # double 0.36837700000000001
	.quad	0x3fbcc9b845564b66              # double 0.112453
	.quad	0x3f89496249a133c2              # double 0.012347
	.quad	0x3fe94f26aec0724b              # double 0.79091199999999995
	.quad	0x3fb5bcba30121683              # double 0.084911
	.quad	0x3fd8f4e0114d2f5e              # double 0.38994600000000001
	.quad	0x3fb3cea6c1a048e0              # double 0.077371999999999996
	.quad	0x3fe73ac710cb295f              # double 0.72592500000000004
	.quad	0x3fe45e0b4e11dbcb              # double 0.63648000000000005
	.quad	0x3fe44857f3061c7a              # double 0.63383100000000003
	.quad	0x3fdd4651f3e89a89              # double 0.45741700000000002
	.quad	0x3fc8f301eabbcb1d              # double 0.19491600000000001
	.quad	0x3fe78d0aaa7ded6c              # double 0.73596700000000004
	.quad	0x3fd4a46e08f21709              # double 0.32253599999999999
	.quad	0x3fe89361dc93ea2d              # double 0.76799099999999998
	.quad	0x3fbd322f2734f82f              # double 0.114047
	.quad	0x3fdb1cffeb074a77              # double 0.42364499999999999
	.quad	0x3fda1f8a0902de01              # double 0.40817500000000001
	.quad	0x3fe148b439581062              # double 0.54012499999999997
	.quad	0x3febebc621b7e0ac              # double 0.87253099999999994
	.quad	0x3fe616af038e29fa              # double 0.69026900000000002
	.quad	0x3fd1025bfad29995              # double 0.26576899999999998
	.quad	0x3fb4916ca46e08f2              # double 0.080343999999999998
	.quad	0x3feffec7863beec4              # double 0.99985100000000004
	.quad	0x3fedec3116228134              # double 0.93508199999999996
	.quad	0x3fde0f2becedd484              # double 0.46967599999999998
	.quad	0x3fe4767b1c0010c7              # double 0.639463
	.quad	0x3fc5ce8533b10774              # double 0.17036499999999999
	.quad	0x3fee8cfbfc6540cc              # double 0.95470999999999994
	.quad	0x3feae7e62dc6e2a8              # double 0.840808
	.quad	0x3fc20df58c08b75f              # double 0.14105100000000001
	.quad	0x3fe8a7243137b070              # double 0.77040299999999995
	.quad	0x3feb18372e6a7696              # double 0.84670599999999996
	.quad	0x3fe1755ffe6d58c9              # double 0.54557800000000001
	.quad	0x3fe21c2a02320968              # double 0.56593800000000005
	.quad	0x3fe8496030c23fab              # double 0.75895699999999999
	.quad	0x3fe94cd962068555              # double 0.79063099999999997
	.quad	0x3feaa4766c6de764              # double 0.83257599999999998
	.quad	0x3fdb0ffda4052d66              # double 0.42285099999999998
	.quad	0x3fc43a08398a6549              # double 0.15802099999999999
	.quad	0x3fb710ba6266fd65              # double 0.090098999999999999
	.quad	0x3fd2fbfc6540cc79              # double 0.29663
	.quad	0x3fb31d4f9c1f85d7              # double 0.074665999999999996
	.quad	0x3fe01650a45d41fa              # double 0.50272399999999995
	.quad	0x3fc4bdf4c2b51bd6              # double 0.162047
	.quad	0x3fc9a7546d3f9e7c              # double 0.20041900000000001
	.quad	0x3fef3ed527e52157              # double 0.97641999999999995
	.quad	0x3fec15831f03d146              # double 0.87762600000000002
	.quad	0x3feac2a454de7ea6              # double 0.83626
	.quad	0x3fe04b89d6adf71f              # double 0.50922100000000003
	.quad	0x3fbbaa9b499d0204              # double 0.108072
	.quad	0x3fed3584b1ab0857              # double 0.91278300000000001
	.quad	0x3fe335e95b78cc9a              # double 0.60033099999999995
	.quad	0x3fe476b5d462c344              # double 0.63949100000000003
	.quad	0x3fb43d790752da98              # double 0.079062999999999994
	.quad	0x3fd92aa19439de48              # double 0.39322699999999999
	.quad	0x3fe0cbfd2e946801              # double 0.52490099999999995
	.quad	0x3fecbe0589acbc8c              # double 0.89819599999999999
	.quad	0x3fe8dd2ae8e1d649              # double 0.77699799999999997
	.quad	0x3fd2b0ab2e1693c0              # double 0.29203299999999999
	.quad	0x3fe190d173fb7a5f              # double 0.54892799999999997
	.quad	0x3fc1f340d4dc65c7              # double 0.140236
	.quad	0x3fde26916440f239              # double 0.47110400000000002
	.quad	0x3fee7d1bb4916ca4              # double 0.95277199999999995
	.quad	0x3fdad24180d3cff6              # double 0.41908299999999998
	.quad	0x3fe48a936c58eeaf              # double 0.64191600000000004
	.quad	0x3fda7a398201cd60              # double 0.41371000000000002
	.quad	0x3fd75f78359bc340              # double 0.36520200000000003
	.quad	0x3fcd02c4d65e4606              # double 0.22664699999999999
	.quad	0x3fe1805814940bbb              # double 0.54691699999999999
	.quad	0x3fef528283d35eb7              # double 0.97882199999999996
	.quad	0x3fa1001d5c31593e              # double 0.033203999999999997
	.quad	0x3fce93af74cd3177              # double 0.23888200000000001
	.quad	0x3fe73254e6e221c9              # double 0.72489400000000004
	.quad	0x3fe0428b2a6b0d95              # double 0.50812299999999999
	.quad	0x3feed785f8d2e515              # double 0.96380900000000002
	.quad	0x3fcef6f08cc575c0              # double 0.24191099999999999
	.quad	0x3fd8af9a8cdea034              # double 0.38571800000000001
	.quad	0x3fd6047d3d4280ae              # double 0.344024
	.quad	0x3fe1e145953586cb              # double 0.55874900000000005
	.quad	0x3fea7a17f4128bf4              # double 0.82740400000000002
	.quad	0x3fa085b18548a9bd              # double 0.03227
	.quad	0x3fecd506573215fd              # double 0.90100400000000003
	.quad	0x3fd6840e1719f7f9              # double 0.35181000000000001
	.quad	0x3fd858d9b5e95b79              # double 0.38042300000000001
	.quad	0x3fc3caea747d805e              # double 0.15462999999999999
	.quad	0x3fe2ff77af64063a              # double 0.59368500000000002
	.quad	0x3feebb8a19c9d5a2              # double 0.96039300000000005
	.quad	0x3fed56f75d9a0f0a              # double 0.91686599999999996
	.quad	0x3fd5e5c4eb56fb8f              # double 0.34214899999999998
	.quad	0x3fdcb17481b21c47              # double 0.44833099999999998
	.quad	0x3fd1d36f7e3d1cc1              # double 0.27853
	.quad	0x3fda3ae2541d8e86              # double 0.40984399999999999
	.quad	0x3fc0d1a650614163              # double 0.13139799999999999
	.quad	0x3fc1bc5de9c0229a              # double 0.13856099999999999
	.quad	0x3fe5fb634dad31fd              # double 0.68693700000000002
	.quad	0x3fe0aa0cae642bfa              # double 0.52075800000000005
	.quad	0x3fda5870da5daf08              # double 0.41164800000000001
	.quad	0x3fdebc1acde19fc3              # double 0.48023100000000002
	.quad	0x3fed9d627bf61aa4              # double 0.925462
	.quad	0x3fe88d045fe11127              # double 0.76721399999999995
	.quad	0x3fe4046c764adff8              # double 0.62553999999999998
	.quad	0x3fdd87ad080b673c              # double 0.46140599999999998
	.quad	0x3fb88a58b3f63c32              # double 0.095861000000000001
	.quad	0x3fe1a01040bfe3b0              # double 0.55078899999999997
	.quad	0x3fd9c158fb43d89d              # double 0.40242600000000001
	.quad	0x3fe80cb8e086bdf5              # double 0.75155300000000003
	.quad	0x3fc22be0589acbc9              # double 0.14196400000000001
	.quad	0x3fd70d6b228dc982              # double 0.36019400000000001
	.quad	0x3feb932b55ef1fde              # double 0.86171500000000001
	.quad	0x3fe11888f861a60d              # double 0.53424499999999997
	.quad	0x3fea41cc532a4980              # double 0.82053200000000004
	.quad	0x3fe125785f8d2e51              # double 0.53582399999999997
	.quad	0x3fe09a34ca0c282c              # double 0.51882399999999995
	.quad	0x3fdb221c8a7a41e5              # double 0.42395699999999997
	.quad	0x3fcfb341e14bdfd2              # double 0.24765799999999999
	.quad	0x3fcbb4aa9717df1a              # double 0.216451
	.quad	0x3fde018e757928e1              # double 0.46884500000000001
	.quad	0x3feab9d5e4a38327              # double 0.83518499999999996
	.quad	0x3fd404816f0068dc              # double 0.31277500000000003
	.quad	0x3fe90b32ce89656f              # double 0.78261700000000001
	.quad	0x3fe27b267c6b8b69              # double 0.57753299999999996
	.quad	0x3fe94fede97d06bc              # double 0.79100700000000001
	.quad	0x3fbe4a38327674d1              # double 0.11831999999999999
	.quad	0x3fb59c6b05319829              # double 0.084418000000000007
	.quad	0x3fe6df505d0fa58f              # double 0.71475999999999995
	.quad	0x3fe4f457c0b13598              # double 0.65482700000000005
	.quad	0x3fe7b3c60029f16b              # double 0.74069499999999999
	.quad	0x3fc110dbf0563ed1              # double 0.133327
	.quad	0x3fd833c60029f16b              # double 0.37816
	.quad	0x3fe7a6bd6e8af816              # double 0.73910399999999998
	.quad	0x3fd7374ff865d7cb              # double 0.36275099999999999
	.quad	0x3fe3e1bf37b8d3f2              # double 0.62130700000000005
	.quad	0x3fdae25c810a569b              # double 0.42006599999999999
	.quad	0x3fe4671ac14c660a              # double 0.63758599999999999
	.quad	0x3fe2b3a4723aafff              # double 0.58442899999999998
	.quad	0x3fccfcf80dc33722              # double 0.22647
	.quad	0x3fca82c6ef3d3a1d              # double 0.20711599999999999
	.quad	0x3fc24ee7c49fd7a1              # double 0.14303299999999999
	.quad	0x3fe2e76a7264a16a              # double 0.59074899999999997
	.quad	0x3fd0b890d5a5b963              # double 0.26126500000000002
	.quad	0x3fd06516db0dd830              # double 0.25617000000000001
	.quad	0x3feab14445aa2e3c              # double 0.83413899999999996
	.quad	0x3fe561fe21d96e9c              # double 0.66821200000000003
	.quad	0x3fce0589acbc8c0d              # double 0.234544
	.quad	0x3fe3b49e01de2691              # double 0.61579799999999996
	.quad	0x3fe7b9baa1511e00              # double 0.74142200000000003
	.quad	0x3febaa8a82a5614e              # double 0.864568
	.quad	0x3fe21db65ecc3e32              # double 0.56612700000000005
	.quad	0x3fda265add9c27e9              # double 0.40859099999999998
	.quad	0x3fceb86b15f88fc9              # double 0.24000299999999999
	.quad	0x3fc1252ce032db1f              # double 0.13394700000000001
	.quad	0x3fe5640420f6f08d              # double 0.66845900000000003
	.quad	0x3fdd624dd2f1a9fc              # double 0.45912500000000001
	.quad	0x3fccca03c4b09e99              # double 0.224915
	.quad	0x3fdec38f36694899              # double 0.480686
	.quad	0x3fe14d2d44dca8e3              # double 0.54067100000000001
	.quad	0x3fc40d6f544bb1af              # double 0.15665999999999999
	.quad	0x3fc405681ecd4aa1              # double 0.156415
	.quad	0x3fe64cb1897a67a5              # double 0.69686199999999998
	.quad	0x3fec4ecc814d727a              # double 0.88461900000000004
	.quad	0x3fd0c8eabffcdab2              # double 0.26226300000000002
	.quad	0x3fbf65cb35f3d7d4              # double 0.12264700000000001
	.quad	0x3fc67c8d1958969a              # double 0.175676
	.quad	0x3fd890f301eabbcb              # double 0.38384699999999999
	.quad	0x3fd74f61672324c8              # double 0.36421999999999999
	.quad	0x3fec1dadfb506dd7              # double 0.87862300000000004
	.quad	0x3fd751b4fe79ee03              # double 0.36436200000000002
	.quad	0x3fccb91b3f20a73f              # double 0.22439899999999999
	.quad	0x3fd2c968943e1006              # double 0.293543
	.quad	0x3fcda6efc371da38              # double 0.231657
	.quad	0x3fb5a0ad8a11665a              # double 0.084483000000000002
	.quad	0x3fe2dc0980b24207              # double 0.58935999999999999
	.quad	0x3feaf179bfdf7e80              # double 0.84197699999999998
	.quad	0x3fce7d24180d3cff              # double 0.23819399999999999
	.quad	0x3fcb0ea9e6eeb702              # double 0.21138499999999999
	.quad	0x3feaaccd530489d2              # double 0.83359399999999995
	.quad	0x3fddfe79ee02a77a              # double 0.46865699999999999
	.quad	0x3fcba365cb35f3d8              # double 0.215924
	.quad	0x3fe15783dff3f0fe              # double 0.541933
	.quad	0x3fd181a9b8cb8e08              # double 0.27353899999999998
	.quad	0x3fa06a2b1704ff43              # double 0.032059999999999998
	.quad	0x3fedde0b4e11dbcb              # double 0.93335500000000005
	.quad	0x3fc9cd141a6937d2              # double 0.201571
	.quad	0x3fe0064883fd5022              # double 0.50076699999999996
	.quad	0x3fd067f4dbdf8f47              # double 0.25634499999999999
	.quad	0x3fed2b14ec204f2b              # double 0.91150900000000001
	.quad	0x3fd54039abf33871              # double 0.33204499999999998
	.quad	0x3fe2f0c996b7670a              # double 0.591893
	.quad	0x3fec304ccee5abc1              # double 0.88089600000000001
	.quad	0x3f9364bec679cc75              # double 0.018939000000000001
	.quad	0x3fc60d1b71758e22              # double 0.17227500000000001
	.quad	0x3fcad5b6805a2d73              # double 0.209647
	.quad	0x3fe628f7db6e5040              # double 0.69250100000000003
	.quad	0x3fb7cddd6e04c059              # double 0.092984999999999998
	.quad	0x3fee2ca36199780c              # double 0.94294900000000003
	.quad	0x3fc0baf965b20b80              # double 0.13070599999999999
	.quad	0x3f9d05af6c69b5a6              # double 0.028341999999999999
	.quad	0x3fe4448f10a99b6f              # double 0.63336899999999996
	.quad	0x3feeaa60913a4f87              # double 0.95829799999999998
	.quad	0x3fee70ac3a860dcc              # double 0.95125400000000004
	.quad	0x3fe6e8d10f51ac9b              # double 0.71592
	.quad	0x3fede557de0d66f1              # double 0.93424600000000002
	.quad	0x3fdf96af038e29fa              # double 0.49357200000000001
	.quad	0x3fdcd755bccaf70a              # double 0.45064300000000002
	.quad	0x3fe7c27631b584b2              # double 0.74248800000000004
	.quad	0x3fec7a3b9ae0c176              # double 0.88992099999999996
	.quad	0x3fe558d9b5e95b79              # double 0.66709600000000002
	.quad	0x3fb8a1059ea57215              # double 0.096207000000000001
	.quad	0x3fefe25a682b6284              # double 0.99638099999999996
	.quad	0x3fbbb8800eae18ad              # double 0.10828400000000001
	.quad	0x3fb7a14cec41dd1a              # double 0.092304999999999998
	.quad	0x3fc4d362e9036439              # double 0.16270100000000001
	.quad	0x3faea6c1a048e044              # double 0.059866000000000003
	.quad	0x3fe6a78f25a250f8              # double 0.70795399999999997
	.quad	0x3fdb007dd4413554              # double 0.42190499999999997
	.quad	0x3fe8f284167a95c8              # double 0.77960399999999996
	.quad	0x3fd13b81b64e0547              # double 0.26925700000000002
	.quad	0x3fd7b2af1455219b              # double 0.37028100000000003
	.quad	0x3fc7287c200c0f02              # double 0.180923
	.quad	0x3fd01c3ac929aa1d              # double 0.25172299999999997
	.quad	0x3fe20c5c9a34ca0c              # double 0.56400899999999998
	.quad	0x3fec909289dadfb5              # double 0.892648
	.quad	0x3fe7045996744b2b              # double 0.71928099999999995
	.quad	0x3fd40c4dec1c1d6d              # double 0.313251
	.quad	0x3fdd16db0dd82fd7              # double 0.45451999999999998
	.quad	0x3fb07cd898b2e9cd              # double 0.064405000000000004
	.quad	0x3fdb7f1b69121251              # double 0.42963299999999999
	.quad	0x3feaac9d16fc9bc7              # double 0.83357099999999995
	.quad	0x3fd061d8622c4502              # double 0.25597199999999998
	.quad	0x3fe98c2e770bd018              # double 0.79836200000000002
	.quad	0x3fd135d249e44fa0              # double 0.26890999999999998
	.quad	0x3fe15e9185cee17a              # double 0.542794
	.quad	0x3fea4792d1287c20              # double 0.82123699999999999
	.quad	0x3fb03f0bae89eba7              # double 0.063462000000000005
	.quad	0x3fb6ca36199780bb              # double 0.089023000000000005
	.quad	0x3fe4a79bbadc0981              # double 0.64546000000000003
	.quad	0x3fd9d58c8eef1bac              # double 0.40365899999999999
	.quad	0x3fc033acd5b6805a              # double 0.126577
	.quad	0x3fe3c5cdd50a88f0              # double 0.617896
	.quad	0x3fe72d2dcb1465e9              # double 0.72426500000000005
	.quad	0x3fe1e9fadafd1138              # double 0.55981199999999998
	.quad	0x3fe20296b3354c12              # double 0.56281599999999998
	.quad	0x3fd127bb2fec56d6              # double 0.26805000000000001
	.quad	0x3fe4b22f2734f82f              # double 0.64675099999999996
	.quad	0x3fe6bea2d2fe3f36              # double 0.71077100000000004
	.quad	0x3fd0d78c436fc159              # double 0.263156
	.quad	0x3fef92dfd694ccab              # double 0.98667899999999997
	.quad	0x3f90ad8a116659d1              # double 0.016286999999999999
	.quad	0x3fec94f0520d130e              # double 0.893181
	.quad	0x3feaf826edaa92e6              # double 0.84279199999999999
	.quad	0x3fefed1e108c3f3e              # double 0.997695
	.quad	0x3fe6ccdfaca36199              # double 0.71250899999999995
	.quad	0x3fe95d28d002e233              # double 0.79262200000000005
	.quad	0x3fea9709310129cc              # double 0.83093700000000003
	.quad	0x3fe6dc8fb86f47b6              # double 0.71442399999999995
	.quad	0x3fe182773e24febd              # double 0.547176
	.quad	0x3fc7a398201cd5fa              # double 0.18468000000000001
	.quad	0x3fe0114d2f5dbb9d              # double 0.502112
	.quad	0x3fed1cc964628028              # double 0.90976400000000002
	.quad	0x3fe03a3ec02f2f98              # double 0.50710999999999995
	.quad	0x3fe2333764f11b61              # double 0.56875200000000004
	.quad	0x3fecfe718a86d71f              # double 0.90605999999999998
	.quad	0x3fecc388ebcc6c55              # double 0.89886900000000003
	.quad	0x3fe536f5caf2d7f9              # double 0.66295899999999996
	.quad	0x3fec469d7342edbb              # double 0.88361999999999996
	.quad	0x3fec4f227d028a1e              # double 0.88466
	.quad	0x3fbfba55d1c3ac93              # double 0.12393700000000001
	.quad	0x3fdd49d7ba6698bb              # double 0.45763199999999998
	.quad	0x3febed56b00ffda4              # double 0.87272199999999999
	.quad	0x3fd794185058dde8              # double 0.36841400000000002
	.quad	0x3fbf1fcd24e160d9              # double 0.12157900000000001
	.quad	0x3fd9d9e40c8472c1              # double 0.40392400000000001
	.quad	0x3fdc1aa3f034b0e2              # double 0.43912600000000002
	.quad	0x3fdc3c70c996b767              # double 0.441189
	.quad	0x3feaa91fb3fa6df0              # double 0.83314500000000002
	.quad	0x3fc2e9707182235b              # double 0.14774899999999999
	.quad	0x3fec590e23af31b1              # double 0.88587099999999996
	.quad	0x3fabc4f3ba775fb3              # double 0.054237
	.quad	0x3fe44b3e5753a3ec              # double 0.634185
	.quad	0x3fc315d701d9f4d3              # double 0.14910399999999999
	.quad	0x3f97e38eb0318b93              # double 0.023328999999999999
	.quad	0x3feb62aa19439de5              # double 0.85579400000000005
	.quad	0x3fdf29e0a41a261c              # double 0.486931
	.quad	0x3fb51fb3fa6defc8              # double 0.082515000000000005
	.quad	0x3fe820d77b7c7821              # double 0.75400900000000004
	.quad	0x3fbc9b30728e92d5              # double 0.111743
	.quad	0x3fa124f227d028a2              # double 0.033485000000000001
	.quad	0x3fe51e16d6dc1a48              # double 0.65992300000000004
	.quad	0x3fe9c111ada76d98              # double 0.80481800000000003
	.quad	0x3fd5d3b6cbd987c6              # double 0.34104699999999999
	.quad	0x3fec25c3dee78184              # double 0.87961
	.quad	0x3fe6caada33bd9cb              # double 0.71224100000000001
	.quad	0x3fc8904f6dfc5cdd              # double 0.19190399999999999
	.quad	0x3fea4245f5ad96a7              # double 0.82059000000000004
	.quad	0x3fd3bb23571d1d47              # double 0.30829699999999999
	.quad	0x3f9093d96638433d              # double 0.016188999999999999
	.quad	0x3fa5ba2be0589acc              # double 0.042436000000000001
	.quad	0x3fd4f166e008e9b4              # double 0.32723400000000002
	.quad	0x3feaa3b14a90470b              # double 0.83248200000000006
	.quad	0x3fe953910c2c5e2d              # double 0.79145100000000002
	.quad	0x3fea35b70691ea79              # double 0.81905700000000004
	.quad	0x3fdc17d2849cb253              # double 0.43895400000000001
	.quad	0x3fe06ee957470eb2              # double 0.51353899999999997
	.quad	0x3fea8142f61ed5ae              # double 0.82827899999999999
	.quad	0x3fd16f6d7625204b              # double 0.272426
	.quad	0x3fed4784230fcf81              # double 0.91498000000000002
	.quad	0x3fea88bda9435ac9              # double 0.82919200000000004
	.quad	0x3fb063ae2541d8e8              # double 0.064020999999999995
	.quad	0x3fcfd96e9bbf0dc7              # double 0.24882299999999999
	.quad	0x3fec54a5df2239e7              # double 0.88533300000000004
	.quad	0x3fea01b866e43aa8              # double 0.81271000000000004
	.quad	0x3fe7ebca5375c8da              # double 0.747533
	.quad	0x3fe37a398201cd60              # double 0.60867000000000004
	.quad	0x3fea737329c347e9              # double 0.82659300000000002
	.quad	0x3fbeb91b3f20a73f              # double 0.12001199999999999
	.quad	0x3fd359b8023a6ce3              # double 0.30235099999999998
	.quad	0x3fc675ee99a62ed3              # double 0.17547399999999999
	.quad	0x3fd2c7eae5bc87db              # double 0.29345199999999999
	.quad	0x3fc71327243137b0              # double 0.18027199999999999
	.quad	0x3fe93f8db4890929              # double 0.78900800000000004
	.quad	0x3fa5d9c27e953155              # double 0.042677
	.quad	0x3fe5b72e6a76965f              # double 0.67861099999999996
	.quad	0x3fe879a49c2c1b11              # double 0.764849
	.quad	0x3fd9c636b0963561              # double 0.402723
	.quad	0x3febf4b1ee243569              # double 0.87361999999999995
	.quad	0x3fd6000000000000              # double 0.34375
	.quad	0x3fde2f166e008e9b              # double 0.47162399999999999
	.quad	0x3fd4ba16e7a311e8              # double 0.32385799999999998
	.quad	0x3fe2c7eae5bc87db              # double 0.58690399999999998
	.quad	0x3fcf1394317acc4f              # double 0.242785
	.quad	0x3fb294898f605ab4              # double 0.072579000000000005
	.quad	0x3fd634eb9a176ddb              # double 0.34698000000000001
	.quad	0x3fd74ad794a6eb92              # double 0.36394300000000002
	.quad	0x3f97967caea747d8              # double 0.023035
	.quad	0x3fd3577531db445f              # double 0.30221300000000001
	.quad	0x3fe7e789e774eebf              # double 0.74701399999999996
	.quad	0x3fbcf483cafb3b75              # double 0.113106
	.quad	0x3fe83dd97f62b6ae              # double 0.75754999999999995
	.quad	0x3fcec386d2ed783e              # double 0.240342
	.quad	0x3fe3d464dc22ab26              # double 0.61967700000000003
	.quad	0x3fdf74d1633482bf              # double 0.49150500000000003
	.quad	0x3fe91d1b2e59af9f              # double 0.78480300000000003
	.quad	0x3fa4ca70d1fa3337              # double 0.040606999999999997
	.quad	0x3fbcc3e3193f6c27              # double 0.11236400000000001
	.quad	0x3fbbc579f2346562              # double 0.108482
	.quad	0x3fe41ff7164c729f              # double 0.62890199999999996
	.quad	0x3fe8894812be48a6              # double 0.76675800000000005
	.quad	0x3fdaefc7a398201d              # double 0.42088500000000001
	.quad	0x3fd79a4df47f993d              # double 0.36879299999999998
	.quad	0x3fed87e175d13d75              # double 0.92283700000000002
	.quad	0x3faef7e3d1cc100e              # double 0.060484999999999997
	.quad	0x3fe49db877ab3248              # double 0.64425299999999996
	.quad	0x3fc70678c0053e2d              # double 0.17988499999999999
	.quad	0x3fe6c7f562174c4d              # double 0.71190900000000001
	.quad	0x3feb37d63022dd7b              # double 0.85056600000000004
	.quad	0x3fe6f924af0bf1a6              # double 0.71791300000000002
	.quad	0x3fed7b8d3f1843c4              # double 0.92133200000000003
	.quad	0x3fc8caf709b738e7              # double 0.19369400000000001
	.quad	0x3fecc8eef1bac2df              # double 0.89952799999999999
	.quad	0x3fd124aada33bd9d              # double 0.26786300000000002
	.quad	0x3fc44ffc9795b35b              # double 0.158691
	.quad	0x3fe6652157689ca2              # double 0.69984500000000005
	.quad	0x3fc74d594f26aec0              # double 0.18204799999999999
	.quad	0x3fd061bb05faebc4              # double 0.255965
	.quad	0x3feee466b1e5c0ba              # double 0.96538100000000004
	.quad	0x3fc4f28c79f66623              # double 0.16365199999999999
	.quad	0x3fd0fd1dcd7060bb              # double 0.26544899999999999
	.quad	0x3fdda35935fc3b4f              # double 0.46309499999999998
	.quad	0x3fc1df761cbccf29              # double 0.13963200000000001
	.quad	0x3febbc3c5bd0e12f              # double 0.86672800000000005
	.quad	0x3fe2d0a45d41fa76              # double 0.58796899999999996
	.quad	0x3fedeca46e08f217              # double 0.935137
	.quad	0x3fa084c6a3bddfca              # double 0.032263
	.quad	0x3fc6bb3c81908e58              # double 0.177589
	.quad	0x3fceee6b8305d95e              # double 0.241651
	.quad	0x3fe6a9e90795f677              # double 0.70824100000000001
	.quad	0x3fe30ede54b48d3b              # double 0.59556500000000001
	.quad	0x3fef671476af89c6              # double 0.98133300000000001
	.quad	0x3f9b76709fa54c55              # double 0.026818999999999999
	.quad	0x3fd7507a6bd6e8b0              # double 0.36428700000000003
	.quad	0x3fa16c1e364bec68              # double 0.034028000000000003
	.quad	0x3fd09f94855da273              # double 0.25974000000000003
	.quad	0x3fececb10342aa9f              # double 0.90389299999999995
	.quad	0x3f90624dd2f1a9fc              # double 0.016
	.quad	0x3feec43b2dd377e2              # double 0.96145400000000003
	.quad	0x3fdc927913e81451              # double 0.44644
	.quad	0x3fcfc2656abde3fc              # double 0.24812000000000001
	.quad	0x3fcc5ab3aabcd78c              # double 0.22151799999999999
	.quad	0x3fa3a27ae9ab29e5              # double 0.038349000000000001
	.quad	0x3fe60c1db0142f62              # double 0.68897900000000001
	.quad	0x3fd41bc126a65cf6              # double 0.31419399999999997
	.quad	0x3fea6c7219220ff5              # double 0.82573799999999997
	.quad	0x3fcddad7518b0d0f              # double 0.233241
	.quad	0x3fd6b0a2ca9ac365              # double 0.35453099999999999
	.quad	0x3fe6bc6eb0b7c350              # double 0.71050199999999997
	.quad	0x3fed6047d3d4280b              # double 0.91800300000000001
	.quad	0x3f9d22c881e4712e              # double 0.028452999999999999
	.quad	0x3fe86c5d206c8712              # double 0.76322800000000002
	.quad	0x3fe2d8bc59b8023a              # double 0.58895699999999995
	.quad	0x3fe498d25edd0529              # double 0.64365499999999998
	.quad	0x3fe6f6c69b5a63fa              # double 0.71762400000000004
	.quad	0x3fd7096feb4a6656              # double 0.35995100000000002
	.quad	0x3fe7a5785f8d2e51              # double 0.73894899999999997
	.quad	0x3fe327b4e54f7a92              # double 0.59859700000000005
	.quad	0x3fb59d0203e63e8e              # double 0.084427000000000002
	.quad	0x3fec7a3fcc9ea9a4              # double 0.88992300000000001
	.quad	0x3faef6512a94ff00              # double 0.060472999999999999
	.quad	0x3fe8e9984a0e410b              # double 0.77851499999999996
	.quad	0x3fccf29d40ee06d9              # double 0.22615399999999999
	.quad	0x3fd7ea3df6db9410              # double 0.373672
	.quad	0x3fefd77963992c8c              # double 0.99505299999999996
	.quad	0x3fede8f6cefed634              # double 0.93468799999999996
	.quad	0x3fcce9b38d60a633              # double 0.225882
	.quad	0x3feb36fc158fb43e              # double 0.85046200000000005
	.quad	0x3fb3ba3443d46b27              # double 0.077060000000000003
	.quad	0x3fe3ccb3a2595bbc              # double 0.61873800000000001
	.quad	0x3fdb358f2e05ccc9              # double 0.42514400000000002
	.quad	0x3fe45d377e1b8ed2              # double 0.63637900000000003
	.quad	0x3febf060bb2bba99              # double 0.87309300000000001
	.quad	0x3fea11f926c7eae6              # double 0.81469400000000003
	.quad	0x3fd91e0828c36da8              # double 0.39245799999999997
	.quad	0x3fe5098d477bbf94              # double 0.657416
	.quad	0x3fd6713f077ccc03              # double 0.35066199999999997
	.quad	0x3fe9e53868fd199c              # double 0.80923100000000003
	.quad	0x3fd12b8c75c4a83b              # double 0.26828299999999999
	.quad	0x3fc62f166e008e9b              # double 0.17331199999999999
	.quad	0x3fe6a25d8d79d0a6              # double 0.70731999999999995
	.quad	0x3fe65b9841aac53b              # double 0.698681
	.quad	0x3feefc88e79aae6d              # double 0.96832700000000004
	.quad	0x3fc6e28ed5f138bd              # double 0.178789
	.quad	0x3fe033d07c84b5dd              # double 0.50632500000000003
	.quad	0x3fe8acc92146a1a5              # double 0.771092
	.quad	0x3fe31934efcbd556              # double 0.596827
	.quad	0x3fee10de093532e8              # double 0.93955900000000003
	.quad	0x3fe7b62e90364389              # double 0.74098900000000001
	.quad	0x3fdb50f40e5a35d6              # double 0.42681599999999997
	.quad	0x3fece23d0bfa0946              # double 0.902617
	.quad	0x3fe289a459103c8e              # double 0.57930199999999998
	.quad	0x3fe86e2eb1c432ca              # double 0.76344999999999996
	.quad	0x3fe2275ee99a62ed              # double 0.56730599999999998
	.quad	0x3fe74ad362e90364              # double 0.72788399999999998
	.quad	0x3fe7f8e3ac0c62e5              # double 0.74913200000000002
	.quad	0x3fe720e1f7d73c92              # double 0.72276399999999996
	.quad	0x3fefce8b7e4de3b9              # double 0.99396300000000004
	.quad	0x3fea0c77dd872f34              # double 0.81402200000000002
	.quad	0x3fec3d66277c45cc              # double 0.88249500000000002
	.quad	0x3feb8f16f4384ba1              # double 0.86121700000000001
	.quad	0x3fc06b8b69552e30              # double 0.12828200000000001
	.quad	0x3fc3dbb16c1e364c              # double 0.155142
	.quad	0x3fe64ff865d7cb2e              # double 0.69726200000000005
	.quad	0x3fe8e779207d4e09              # double 0.77825599999999995
	.quad	0x3fec03e425aee632              # double 0.875475
	.quad	0x3fe120d77b7c7821              # double 0.53525900000000004
	.quad	0x3fbd2999567dbb17              # double 0.113916
	.quad	0x3fe2ea6e32e3821b              # double 0.591117
	.quad	0x3fe6b4ca0c282c6f              # double 0.70956900000000001
	.quad	0x3fba8b19a415f45e              # double 0.103685
	.quad	0x3febba6698bb4d49              # double 0.86650400000000005
	.quad	0x3fec8fbca1059ea5              # double 0.89254599999999995
	.quad	0x3fbebd4cfd08d4bb              # double 0.120076
	.quad	0x3f98b502ababead5              # double 0.024128
	.quad	0x3fb38561d4306e5d              # double 0.076254000000000002
	.quad	0x3fb31dc50ce4ead1              # double 0.074673000000000003
	.quad	0x3fe010c0ad03d9a9              # double 0.50204499999999996
	.quad	0x3fe8042b734b5137              # double 0.75050899999999998
	.quad	0x3feb5c7abfb9bed3              # double 0.85503899999999999
	.quad	0x3fd35510d38cda6e              # double 0.30206699999999997
	.quad	0x3fd01d755bccaf71              # double 0.25179800000000002
	.quad	0x3fe77416bdb1a6d7              # double 0.73292100000000004
	.quad	0x3fea946a1a500d5f              # double 0.83061700000000005
	.quad	0x3fe88ed5f138bce0              # double 0.767436
	.quad	0x3fe87b07075b3e14              # double 0.76501799999999997
	.quad	0x3fd7856605ee568a              # double 0.36751699999999998
	.quad	0x3fec78ec0f883340              # double 0.88976100000000002
	.quad	0x3fec4422036006d1              # double 0.88331700000000002
	.quad	0x3fe3374794ea0770              # double 0.60049799999999998
	.quad	0x3fd3d03d9a95421c              # double 0.309585
	.quad	0x3fdcb2b3461309c8              # double 0.448407
	.quad	0x3fe156fb8f57f738              # double 0.54186800000000002
	.quad	0x3fecee158750c1b9              # double 0.90406299999999995
	.quad	0x3fdc0d2c386d2ed8              # double 0.43830400000000003
	.quad	0x3fcc6aa087ca643d              # double 0.22200400000000001
	.quad	0x3fedadf71eafee70              # double 0.92748600000000003
	.quad	0x3fe1f3fd933e35c6              # double 0.56103400000000003
	.quad	0x3fef164a59c065b6              # double 0.97147099999999997
	.quad	0x3fef2c1f42bb6673              # double 0.974136
	.quad	0x3fc07dd441355476              # double 0.12884000000000001
	.quad	0x3fab0bbf50e34763              # double 0.052824000000000003
	.quad	0x3fe36468cac4b4d0              # double 0.60600699999999996
	.quad	0x3fd374eebf65dbfd              # double 0.304012
	.quad	0x3feb3c1acde19fc3              # double 0.85108700000000004
	.quad	0x3fc34959e6256367              # double 0.150676
	.quad	0x3fba923e5b8561d4              # double 0.103794
	.quad	0x3fc36c58eeae9ee4              # double 0.15174399999999999
	.quad	0x3fedd73215fcc187              # double 0.93251899999999999
	.quad	0x3fd1182ecaeea63b              # double 0.26710099999999998
	.quad	0x3fc9018611fd5886              # double 0.195359
	.quad	0x3fe19991361dc93f              # double 0.54999600000000004
	.quad	0x3f771d1d4738a3b5              # double 0.0056429999999999996
	.quad	0x3fd0e14bdfd2630f              # double 0.26375100000000001
	.quad	0x3fa77b17ce52deca              # double 0.045860999999999999
	.quad	0x3fd43810e8858ff7              # double 0.31592199999999998
	.quad	0x3fe4e223e1869835              # double 0.65260499999999999
	.quad	0x3fea0a1dfb9389b5              # double 0.81373499999999999
	.quad	0x3fdc3bd1676640a7              # double 0.44115100000000002
	.quad	0x3fd4a7f8012dfd69              # double 0.32275199999999998
	.quad	0x3fdcdf58c08b75ea              # double 0.45113199999999998
	.quad	0x3fc7c054ef459d99              # double 0.185557
	.quad	0x3fdd331a08bfc222              # double 0.45624399999999998
	.quad	0x3fed7e73a365cb36              # double 0.92168600000000001
	.quad	0x3fe66687f455a7d2              # double 0.70001599999999997
	.quad	0x3f978d0cc35ce182              # double 0.022998999999999999
	.quad	0x3fc1baecd07852f8              # double 0.138517
	.quad	0x3fcc7008a697aede              # double 0.22216900000000001
	.quad	0x3fd26a337a80cf9e              # double 0.28773199999999999
	.quad	0x3fe8adddf43c7d5f              # double 0.77122400000000002
	.quad	0x3fed73083558a761              # double 0.920292
	.quad	0x3fc917c5ef62f9ca              # double 0.19603799999999999
	.quad	0x3fab9b456b441bb9              # double 0.053919000000000002
	.quad	0x3fd2d4280ae10492              # double 0.29419899999999999
	.quad	0x3fecac4b4d056c51              # double 0.89603200000000005
	.quad	0x3fe483c4b09e98dd              # double 0.64108500000000002
	.quad	0x3fd8b1ab0856e697              # double 0.38584400000000002
	.quad	0x3fed48e043a21640              # double 0.91514600000000001
	.quad	0x3fe9fa8b4bf8fcd6              # double 0.81183399999999994
	.quad	0x3fe75f0b28522ea1              # double 0.730352
	.quad	0x3fe6a0ba1f4b1ee2              # double 0.70711999999999997
	.quad	0x3fe9edca07f66e87              # double 0.81027700000000003
	.quad	0x3fe1ddce7cd03537              # double 0.55832599999999999
	.quad	0x3fe9d3d4280ae105              # double 0.80710800000000005
	.quad	0x3fcac804102ff8ec              # double 0.209229
	.quad	0x3fec352220bc382a              # double 0.88148599999999999
	.quad	0x3fb3d7a13c254a3c              # double 0.077508999999999995
	.quad	0x3fd324f6598e10cf              # double 0.29913099999999998
	.quad	0x3fef40f238972043              # double 0.97667800000000004
	.quad	0x3fbe4dd2f1a9fbe7              # double 0.11837499999999999
	.quad	0x3fbc8fb86f47b678              # double 0.111568
	.quad	0x3fdb3acd5b6805a3              # double 0.42546400000000001
	.quad	0x3fe4f640639d5e4a              # double 0.65505999999999998
	.quad	0x3fb5f3c70c996b76              # double 0.085750999999999993
	.quad	0x3fdec1f42bb66730              # double 0.48058800000000002
	.quad	0x3fc9720c8cd63cb8              # double 0.198793
	.quad	0x3fe8683c297bfa4c              # double 0.76272399999999995
	.quad	0x3fdc7e670e2c12ae              # double 0.44521500000000003
	.quad	0x3fd4c0db2702a348              # double 0.32427099999999998
	.quad	0x3fc4cdd0d8cb07d1              # double 0.16253100000000001
	.quad	0x3fc25f7c6759ab6d              # double 0.143539
	.quad	0x3fe0efb6dca07f67              # double 0.52926200000000001
	.quad	0x3fe6cfcc5b8dc550              # double 0.712866
	.quad	0x3faf3d5bab21815a              # double 0.061015
	.quad	0x3febfb890d5a5b96              # double 0.87445499999999998
	.quad	0x3fe1fc8d1958969a              # double 0.562079
	.quad	0x3fdd74fb549f9485              # double 0.46026499999999998
	.quad	0x3fba91d9b1b79d91              # double 0.10378800000000001
	.quad	0x3fd0a9717df19d67              # double 0.26034200000000002
	.quad	0x3fd5ffa7eb6bf445              # double 0.34372900000000001
	.quad	0x3fed89a88ace24bc              # double 0.92305400000000004
	.quad	0x3fe8cfb3311a543f              # double 0.77535399999999999
	.quad	0x3fecef08cc575c07              # double 0.90417899999999995
	.quad	0x3fc93882278d0cc3              # double 0.19703699999999999
	.quad	0x3fc08672756861e9              # double 0.129103
	.quad	0x3fea420b3d4ae42a              # double 0.82056200000000001
	.quad	0x3fed7ccc03793144              # double 0.92148399999999996
	.quad	0x3fd5b3cc4ac6cdaf              # double 0.33909899999999998
	.quad	0x3fde0f4517614595              # double 0.46968199999999999
	.quad	0x3fb85aa2e3c536d6              # double 0.095132999999999995
	.quad	0x3fe4049667b5f1bf              # double 0.62556
	.quad	0x3fcda322af577100              # double 0.231541
	.quad	0x3fe79e03f705857b              # double 0.738039
	.quad	0x3fc01a3f4666ec9e              # double 0.125801
	.quad	0x3fd6271fff79c843              # double 0.346138
	.quad	0x3fe2eb5f5f0b2852              # double 0.59123199999999998
	.quad	0x3fd49a459103c8e2              # double 0.32191599999999998
	.quad	0x3fc075ee99a62ed3              # double 0.12859899999999999
	.quad	0x3feb23d2d87f8876              # double 0.84812299999999996
	.quad	0x3fe54a2db61bb060              # double 0.66530500000000004
	.quad	0x3fccdc8754f3775c              # double 0.22548000000000001
	.quad	0x3fe1fc88e79aae6d              # double 0.56207700000000005
	.quad	0x3f9e5fb71fbc5dea              # double 0.029662000000000001
	.quad	0x3feb888f861a60d4              # double 0.86041999999999996
	.quad	0x3fdf4217d2849cb2              # double 0.48840899999999998
	.quad	0x3fee9672324c8366              # double 0.95586499999999996
	.quad	0x3fece7c286f8ad25              # double 0.90329099999999996
	.quad	0x3fd6ccb7d41743e9              # double 0.35624499999999998
	.quad	0x3fa3fc6540cc78ea              # double 0.039035
	.quad	0x3f9b69552e2fbe34              # double 0.026769000000000001
	.quad	0x3feeefef7c243dcd              # double 0.966789
	.quad	0x3fd3e84f09528f19              # double 0.311054
	.quad	0x3fe03fbdf090f734              # double 0.50778100000000004
	.quad	0x3fb366d7a56de332              # double 0.075787999999999994
	.quad	0x3fd538583621fafd              # double 0.33156400000000003
	.quad	0x3fcae8e1d6494d51              # double 0.210232
	.quad	0x3fe1b30f8c64fdb1              # double 0.55310800000000004
	.quad	0x3fe2ef2c7325918a              # double 0.591696
	.quad	0x3fc219f3c70c996b              # double 0.14141699999999999
	.quad	0x3fd077fae3608d09              # double 0.25732300000000002
	.quad	0x3fdd473cd573647c              # double 0.45747300000000002
	.quad	0x3fcc5fd8adab9f56              # double 0.22167500000000001
	.quad	0x3fa58be7296f6513              # double 0.042083000000000002
	.quad	0x3fb4dc8754f3775c              # double 0.081490000000000007
	.quad	0x3fec5ad96a6a0126              # double 0.88609000000000004
	.quad	0x3fe2cfd2a62aa194              # double 0.58786899999999997
	.quad	0x3fa686833c60029f              # double 0.043994999999999999
	.quad	0x3fe976cefed63455              # double 0.79575300000000004
	.quad	0x3fe992ad81adea89              # double 0.79915499999999995
	.quad	0x3fc4c3b0c4588a05              # double 0.16222200000000001
	.quad	0x3fe03ab21815a07b              # double 0.50716499999999998
	.quad	0x3fe7b7e6f71a7e31              # double 0.74119900000000005
	.quad	0x3fd85a74c09c3ce2              # double 0.380521
	.quad	0x3fe9bc44bf4cb189              # double 0.80423199999999995
	.quad	0x3fe50e3ef284167b              # double 0.65798900000000005
	.quad	0x3fccd5ae1cde5d18              # double 0.225271
	.quad	0x3fe9410b630a9153              # double 0.78918999999999995
	.quad	0x3fe5aa0a958537e3              # double 0.67700700000000003
	.quad	0x3feaa51a005c4652              # double 0.83265400000000001
	.quad	0x3fedc30f49491f2e              # double 0.93006100000000003
	.quad	0x3fe14cd962068555              # double 0.54063099999999997
	.quad	0x3fea6f1348b22079              # double 0.82605899999999999
	.quad	0x3fe307f455a7d242              # double 0.59472100000000006
	.quad	0x3fe0f2170931012a              # double 0.52955200000000002
	.quad	0x3fc3f705857afea4              # double 0.155976
	.quad	0x3fcc5ac471b47842              # double 0.22151999999999999
	.quad	0x3fce15336deb95e6              # double 0.23502200000000001
	.quad	0x3fb1870da5daf07c              # double 0.068467
	.quad	0x3fef4a6eb91b3f21              # double 0.97783600000000003
	.quad	0x3fd21f18c9fb6135              # double 0.28314800000000001
	.quad	0x3fd9b3d4ae429e0a              # double 0.40160099999999999
	.quad	0x3fd63e20ccff21b4              # double 0.34754200000000002
	.quad	0x3fc643aa79bbadc1              # double 0.17394000000000001
	.quad	0x3fd0e9ea14057082              # double 0.26427699999999998
	.quad	0x3fe05be5d9e40c84              # double 0.51121799999999995
	.quad	0x3fdabcdfefbf401c              # double 0.41777799999999998
	.quad	0x3feff3e681a9b8cc              # double 0.99852300000000004
	.quad	0x3fdac304ccee5abc              # double 0.418153
	.quad	0x3fd623d9231c64bb              # double 0.34593800000000002
	.quad	0x3fd1f78bbd380453              # double 0.28073399999999998
	.quad	0x3fe04e3bcd35a858              # double 0.50954999999999995
	.quad	0x3fcd3d5bab21815a              # double 0.228435
	.quad	0x3fd7beb18116ebd5              # double 0.37101400000000001
	.quad	0x3fea1a21ea359360              # double 0.81569000000000002
	.quad	0x3fe34ee5abc0e38a              # double 0.60338099999999995
	.quad	0x3fd96d19dece5711              # double 0.39728400000000003
	.quad	0x3fc1e1198aeb80ed              # double 0.139682
	.quad	0x3fde9eba6aca7935              # double 0.47843799999999997
	.quad	0x3f90053e2d6238da              # double 0.015644999999999999
	.quad	0x3fcffa97e132b55f              # double 0.249835
	.quad	0x3fe487bdcf0307f2              # double 0.64156999999999997
	.quad	0x3fe5b293d102bc73              # double 0.67804900000000001
	.quad	0x3fd7a7ce0fc2eba2              # double 0.36961699999999997
	.quad	0x3fdf37f38c5436b9              # double 0.48779
	.quad	0x3fe02480e8c8abd6              # double 0.50445600000000002
	.quad	0x3fee5c8754f3775c              # double 0.94879500000000005
	.quad	0x3fe89f9f01b866e4              # double 0.76948499999999997
	.quad	0x3fec0f4517614595              # double 0.87686399999999998
	.quad	0x3fded20296b3354c              # double 0.481568
	.quad	0x3fd4b313be22e5de              # double 0.32343
	.quad	0x3fe330d51f81a587              # double 0.59971099999999999
	.quad	0x3fe86a22b3892ee8              # double 0.76295599999999997
	.quad	0x3fe7bb7521144cbe              # double 0.74163299999999999
	.quad	0x3fb1fd2630ec3116              # double 0.070268999999999998
	.quad	0x3fef493c89f40a28              # double 0.97768999999999994
	.quad	0x3fd66145953586cb              # double 0.34968700000000003
	.quad	0x3fdada0dfdef8488              # double 0.41955900000000002
	.quad	0x3fe052f7f498c3b1              # double 0.51012800000000003
	.quad	0x3fe7bbc2b94d9408              # double 0.74167000000000005
	.quad	0x3fd17e4de3b8a19d              # double 0.27333400000000002
	.quad	0x3fcf6da0168b5cc0              # double 0.245533
	.quad	0x3fd1059210385c68              # double 0.26596500000000001
	.quad	0x3fe3229845dc8323              # double 0.59797299999999998
	.quad	0x3febdacabc515486              # double 0.87045799999999995
	.quad	0x3fd3fe2a3cea6c1a              # double 0.312388
	.quad	0x3fdb3f077ccc0379              # double 0.42572199999999999
	.quad	0x3fe8c4a4095f2453              # double 0.77400400000000003
	.quad	0x3fa48216c61522a7              # double 0.040055
	.quad	0x3fdbc044284dfce3              # double 0.43361
	.quad	0x3fe2612620253975              # double 0.57435899999999995
	.quad	0x3fe788919ef954eb              # double 0.73542099999999999
	.quad	0x3fd1c126a65cf67b              # double 0.27741399999999999
	.quad	0x3fdbf07bfe7e1fc1              # double 0.43655300000000002
	.quad	0x3fd8083dbc23315d              # double 0.37550299999999998
	.quad	0x3febc430b178b370              # double 0.867699
	.quad	0x3fe6f62b6ae7d567              # double 0.71755000000000002
	.quad	0x3f9705857afea3df              # double 0.022481999999999999
	.quad	0x3fe02d70e6f2e8c0              # double 0.50554699999999997
	.quad	0x3febe0ef99806f26              # double 0.87120799999999998
	.quad	0x3fed1fa333764f12              # double 0.91011200000000003
	.quad	0x3fd0f7f498c3b0c4              # double 0.26513399999999998
	.quad	0x3fecfe4de3b8a19d              # double 0.90604300000000004
	.quad	0x3fe42b042528ae75              # double 0.63025100000000001
	.quad	0x3f9fd3b29a1b9f99              # double 0.031081000000000001
	.quad	0x3fcb4bd76ee73e68              # double 0.213252
	.quad	0x3fd122a2c2374795              # double 0.267739
	.quad	0x3fe96a78af3e468d              # double 0.79424700000000004
	.quad	0x3fdfb45ae5ffa3ba              # double 0.49538300000000002
	.quad	0x3fe51e9d0e991ff7              # double 0.65998699999999999
	.quad	0x3fada16616b54e2b              # double 0.057872
	.quad	0x3fe11b2a27f1b691              # double 0.53456599999999999
	.quad	0x3fdfed527e521577              # double 0.49886000000000003
	.quad	0x3fc9e731d2e0e304              # double 0.20236799999999999
	.quad	0x3fefa8869c66d374              # double 0.98932200000000003
	.quad	0x3fe839192641b329              # double 0.75697000000000003
	.quad	0x3fee28027d88c1db              # double 0.942384
	.quad	0x3fd0ab68cef672b9              # double 0.26046200000000003
	.quad	0x3fee56bca5375c8e              # double 0.94808800000000004
	.quad	0x3fd5cdfefbf401c5              # double 0.340698
	.quad	0x3fdb4d0dcfcc5b8e              # double 0.42657800000000001
	.quad	0x3fbd9f0a1be2b496              # double 0.11570800000000001
	.quad	0x3fc2e18ac9f2fdb9              # double 0.147508
	.quad	0x3fe18b28522ea0fd              # double 0.54823699999999997
	.quad	0x3fee297e132b55ef              # double 0.94256499999999999
	.quad	0x3fbfa4f8726d04e6              # double 0.123611
	.quad	0x3fbfb3e9a6f826ee              # double 0.123839
	.quad	0x3fd31d29dc725c3e              # double 0.298655
	.quad	0x3fe6939eadd590c1              # double 0.70552000000000004
	.quad	0x3fedba322af57710              # double 0.928979
	.quad	0x3fd4c32a8c9b8455              # double 0.32441199999999998
	.quad	0x3fb0d0edc3bd5992              # double 0.065687999999999996
	.quad	0x3fe0d0ca1cef2410              # double 0.52548700000000004
	.quad	0x3fe579a8cdea033e              # double 0.67110099999999995
	.quad	0x3fc8bd230b9dc2f4              # double 0.193272
	.quad	0x3fe743e963dc486b              # double 0.72704000000000002
	.quad	0x3fdc8f8e7ddca4b1              # double 0.44626199999999999
	.quad	0x3fe27924af0bf1a6              # double 0.57728800000000002
	.quad	0x3fecf607c4199fe4              # double 0.90503299999999997
	.quad	0x3fe02176ddaceee1              # double 0.50408500000000001
	.quad	0x3fe1e85fd04a2fcf              # double 0.559616
	.quad	0x3fd95182a9930be1              # double 0.39560000000000001
	.quad	0x3fe7508f648c7193              # double 0.72858400000000001
	.quad	0x3fd224f6598e10cf              # double 0.28350599999999998
	.quad	0x3fead903a7546d40              # double 0.83899100000000004
	.quad	0x3fd01f70de8f6cf0              # double 0.251919
	.quad	0x3fe3ae8c0485a0be              # double 0.61505699999999996
	.quad	0x3fbb2e7b3d8e0008              # double 0.10617799999999999
	.quad	0x3feabe5fb71fbc5e              # double 0.83573900000000001
	.quad	0x3fd11d6494d50ebb              # double 0.26741900000000002
	.quad	0x3fb7af8594291750              # double 0.092521999999999993
	.quad	0x3fe119bb2788db05              # double 0.53439099999999995
	.quad	0x3feaf00ef1348b22              # double 0.841804
	.quad	0x3f8dbe3c105186db              # double 0.014522999999999999
	.quad	0x3fef366516db0dd8              # double 0.97538999999999997
	.quad	0x3fe9506fef7c243e              # double 0.79106900000000002
	.quad	0x3fd3e3369b9d7fd8              # double 0.31074299999999999
	.quad	0x3fbdd6adf71eafee              # double 0.11655699999999999
	.quad	0x3fd441aac53b0814              # double 0.31650800000000001
	.quad	0x3fbcd67fd3f5b5fa              # double 0.112648
	.quad	0x3fa0539fba450acc              # double 0.031888
	.quad	0x3fd4aa1d755bccaf              # double 0.32288299999999998
	.quad	0x3fed543d03968d76              # double 0.91653300000000004
	.quad	0x3fdd3b5bf6a0dbad              # double 0.45674799999999999
	.quad	0x3fe416030c23fab1              # double 0.62768699999999999
	.quad	0x3fbc9741d084e832              # double 0.111683
	.quad	0x3fea02a12f901084              # double 0.81282100000000001
	.quad	0x3fcdf761cbccf28c              # double 0.23411199999999999
	.quad	0x3fdb3c18b502abac              # double 0.425543
	.quad	0x3fdee175d13d74d6              # double 0.48251100000000002
	.quad	0x3fe2ac9f2fdb8fde              # double 0.58357199999999998
	.quad	0x3fd58ca3e7d13511              # double 0.33670899999999998
	.quad	0x3f6bf9c62a1b5c7d              # double 0.0034150000000000001
	.quad	0x3fd218d25edd0529              # double 0.28276499999999999
	.quad	0x3fe4b10fd7e45804              # double 0.64661400000000002
	.quad	0x3fef2cb20fb224ab              # double 0.97420600000000001
	.quad	0x3fd0d4dc65c70436              # double 0.262992
	.quad	0x3feb40a6b93ccd10              # double 0.85164200000000001
	.quad	0x3fd87f0aa21a719b              # double 0.38275399999999998
	.quad	0x3fb8016052502eec              # double 0.093770999999999993
	.quad	0x3fdb6dce39b456b4              # double 0.42857699999999999
	.quad	0x3fe1e76427c7c526              # double 0.55949599999999999
	.quad	0x3faf036c9c0a8d22              # double 0.060573000000000002
	.quad	0x3fed854ef459d990              # double 0.92252299999999998
	.quad	0x3fe972bcb5fe542e              # double 0.79525599999999996
	.quad	0x3fdd7ded6ba8c587              # double 0.46081100000000003
	.quad	0x3fe2570c564f97ee              # double 0.57312600000000002
	.quad	0x3fe223f034b0e1b5              # double 0.56688700000000003
	.quad	0x3fe2548a9bcfd4bf              # double 0.57282
	.quad	0x3fd7bef49cf56ead              # double 0.37103000000000003
	.quad	0x3fc9735c182ecaef              # double 0.19883300000000001
	.quad	0x3f6e2de8709741d1              # double 0.0036840000000000002
	.quad	0x3fb2baade657b84e              # double 0.073161000000000004
	.quad	0x3fe6472e275ab7dc              # double 0.69618899999999995
	.quad	0x3feed9ad85dfa872              # double 0.96407200000000004
	.quad	0x3fbe61ae70c1333c              # double 0.11867800000000001
	.quad	0x3fd99dcb5781c715              # double 0.400256
	.quad	0x3fe983afb7e90ff9              # double 0.79732499999999995
	.quad	0x3f8ef1fddebd9019              # double 0.01511
	.quad	0x3fdcee45c358afc4              # double 0.45204299999999997
	.quad	0x3fe038327674d163              # double 0.50685999999999998
	.quad	0x3fe0191148fd9fd3              # double 0.50305999999999995
	.quad	0x3fcf3f077ccc0379              # double 0.24411099999999999
	.quad	0x3fc070b8cfbfc654              # double 0.12844
	.quad	0x3feb3d2fa0d77b7c              # double 0.85121899999999994
	.quad	0x3fe2ea11ec918e32              # double 0.59107299999999996
	.quad	0x3fd072ef0ae53650              # double 0.25701499999999999
	.quad	0x3fe622a0a958537e              # double 0.69172699999999998
	.quad	0x3fd1593a2df9378f              # double 0.27107100000000001
	.quad	0x3fde6052502eec7d              # double 0.47462900000000002
	.quad	0x3fe56e02a77a2ced              # double 0.66967900000000002
	.quad	0x3fed32d6ece13f4b              # double 0.91245600000000004
	.quad	0x3fc0ccff21b3aeef              # double 0.13125600000000001
	.quad	0x3fc32c1f42bb6673              # double 0.149784
	.quad	0x3fc6842fa5093965              # double 0.17590900000000001
	.quad	0x3fec32d2bb23571d              # double 0.88120399999999999
	.quad	0x3fcc8c5004fb1184              # double 0.22303200000000001
	.quad	0x3fd23dab5c39bcba              # double 0.28501399999999999
	.quad	0x3fecd434a01abd1b              # double 0.90090400000000004
	.quad	0x3fd95b3e1437c569              # double 0.39619399999999999
	.quad	0x3fe3278290689870              # double 0.59857300000000002
	.quad	0x3fbfe63e8dda48b6              # double 0.124607
	.quad	0x3feded2cbea4ebdd              # double 0.93520199999999998
	.quad	0x3fee15d0b73d188f              # double 0.94016299999999997
	.quad	0x3fe9ed655e28aa43              # double 0.81022899999999998
	.quad	0x3fe098e757928e0d              # double 0.51866500000000004
	.quad	0x3fe85a2b5a20ddc6              # double 0.76100699999999999
	.quad	0x3fce53c148344c38              # double 0.236931
	.quad	0x3fe6f826edaa92e6              # double 0.71779199999999999
	.quad	0x3fb7a8f7db6e5040              # double 0.092422000000000004
	.quad	0x3feb06f8ad256799              # double 0.84460100000000005
	.quad	0x3feb062b27cbf6e4              # double 0.844503
	.quad	0x3fb7542a23bff8a9              # double 0.091128000000000001
	.quad	0x3fea0856e696a26e              # double 0.81351799999999996
	.quad	0x3fdec5479d4d8341              # double 0.48079100000000002
	.quad	0x3fc811a975afaf86              # double 0.18803900000000001
	.quad	0x3fe0a98aa8650e78              # double 0.52069600000000005
	.quad	0x3fe987314ca925ff              # double 0.79775300000000005
	.quad	0x3fef06af46aa087d              # double 0.96956600000000003
	.quad	0x3fe222163fdd65a1              # double 0.56666099999999997
	.quad	0x3fd99b77c02afddb              # double 0.40011400000000003
	.quad	0x3fcf38fffbce4218              # double 0.243927
	.quad	0x3fb2698bb4d48883              # double 0.071923000000000001
	.quad	0x3fd6bca1059ea572              # double 0.355263
	.quad	0x3f95892684cf073a              # double 0.021031000000000001
	.quad	0x3fef9707182235b5              # double 0.987186
	.quad	0x3fd4e40c8472c0e8              # double 0.32641900000000001
	.quad	0x3fd6c914b167ec78              # double 0.35602299999999998
	.quad	0x3fdec34c1a8ac5c1              # double 0.48066999999999999
	.quad	0x3fdda57eaa2a0a96              # double 0.46322600000000003
	.quad	0x3fc121c475e6362a              # double 0.13384299999999999
	.quad	0x3fd77e132b55ef20              # double 0.36707000000000001
	.quad	0x3fd74abe6a337a81              # double 0.36393700000000001
	.quad	0x3feb39dc2f405f6c              # double 0.85081300000000004
	.quad	0x3feda1d755bccaf7              # double 0.926006
	.quad	0x3f9f0c34c1a8ac5c              # double 0.03032
	.quad	0x3fd331550ca1cef2              # double 0.29988599999999999
	.quad	0x3fef22ec28b2a6b1              # double 0.97301300000000001
	.quad	0x3fd09c66d373affb              # double 0.259546
	.quad	0x3feb37d63022dd7b              # double 0.85056600000000004
	.quad	0x3fb90d0678c0053e              # double 0.097854999999999997
	.quad	0x3fed5184c271fff8              # double 0.91620100000000004
	.quad	0x3f97fbefd00713f0              # double 0.023421999999999998
	.quad	0x3fee116228134480              # double 0.93962199999999996
	.quad	0x3fce4d7f0ed3d85a              # double 0.23674000000000001
	.quad	0x3fe147021d10b1ff              # double 0.53991800000000001
	.quad	0x3fd77403dddb120a              # double 0.366456
	.quad	0x3fed3f91e646f156              # double 0.91400999999999999
	.quad	0x3fe889acbc8c0ce9              # double 0.76680599999999999
	.quad	0x3fedef36ef8055fc              # double 0.93545100000000003
	.quad	0x3feaae6a76965f52              # double 0.83379099999999995
	.quad	0x3fd6d640e9d51b50              # double 0.35682700000000001
	.quad	0x3fdbb9884c6a3bde              # double 0.433199
	.quad	0x3fa29131ec0b5675              # double 0.036263999999999998
	.quad	0x3fd16577531db446              # double 0.271818
	.quad	0x3fc9f25e56cd6c2f              # double 0.202709
	.quad	0x3fb885b18548a9bd              # double 0.09579
	.quad	0x3fe24968943e1006              # double 0.571461
	.quad	0x3fc2586013660e52              # double 0.143322
	.quad	0x3fdd62413db7f173              # double 0.45912199999999997
	.quad	0x3fe8f5f0b28522ea              # double 0.78002199999999999
	.quad	0x3fbdb3e1437c5693              # double 0.116026
	.quad	0x3fde1adea897635e              # double 0.47038999999999997
	.quad	0x3fe32148ba83f4ed              # double 0.59781300000000004
	.quad	0x3fe7b9170d62bf12              # double 0.741344
	.quad	0x3fe9f78bbd380453              # double 0.81146799999999997
	.quad	0x3fd0bd9018e75793              # double 0.26157000000000002
	.quad	0x3fd072474538ef35              # double 0.25697500000000001
	.quad	0x3fcb141205bc01a3              # double 0.21154999999999999
	.quad	0x3fe67ff79c842fa5              # double 0.703121
	.quad	0x3fc5085f4a1272c9              # double 0.16431799999999999
	.quad	0x3fb34f93bc0a06ea              # double 0.075433
	.quad	0x3fd70142f61ed5ae              # double 0.35945199999999999
	.quad	0x3fd81ae70c1333b9              # double 0.37664199999999998
	.quad	0x3fe7e2174c4cdfad              # double 0.74634900000000004
	.quad	0x3fdb003254e6e222              # double 0.42188700000000001
	.quad	0x3feafd1782d38477              # double 0.84339500000000001
	.quad	0x3fe16a077036c9c1              # double 0.54419300000000004
	.quad	0x3fb6392e1ef73c0c              # double 0.086809999999999998
	.quad	0x3fefc2d6a9c560c8              # double 0.99253400000000002
	.quad	0x3fe6935daad60200              # double 0.70548900000000003
	.quad	0x3fecf455a7d24181              # double 0.90482600000000002
	.quad	0x3fcd5f676ea4228a              # double 0.22947400000000001
	.quad	0x3fe39a048e043a21              # double 0.61255099999999996
	.quad	0x3fe0dab9f559b3d0              # double 0.52669999999999995
	.quad	0x3fc19192641b328b              # double 0.13725499999999999
	.quad	0x3fb08fd9fd36f7e4              # double 0.064695000000000003
	.quad	0x3fc30abb44e50c5f              # double 0.14876500000000001
	.quad	0x3fd14b76f6d76252              # double 0.270231
	.quad	0x3fc302b40f66a551              # double 0.14852000000000001
	.quad	0x3fcc32873bc903ea              # double 0.22029199999999999
	.quad	0x3fd9d4e09784ec63              # double 0.40361799999999998
	.quad	0x3feaf1cfbb949625              # double 0.84201800000000004
	.quad	0x3fe633d8e0008638              # double 0.69382900000000003
	.quad	0x3fde9a77e5eaab04              # double 0.47817799999999999
	.quad	0x3fba4f00ef1348b2              # double 0.102768
	.quad	0x3fe29cb89d6adf72              # double 0.58163100000000001
	.quad	0x3fef34f1e4b44a1f              # double 0.97521299999999999
	.quad	0x3fc14c6e6d9be4cd              # double 0.13514499999999999
	.quad	0x3fe3835dedf1e083              # double 0.60978600000000005
	.quad	0x3fca2363b256ffc1              # double 0.204205
	.quad	0x3fe572a5a469d734              # double 0.67024499999999998
	.quad	0x3f99f0a1be2b495a              # double 0.025332
	.quad	0x3fd02da98676a726              # double 0.25278699999999998
	.quad	0x3fd0130df9bdc6a0              # double 0.25116300000000003
	.quad	0x3fb171d1d4738a3b              # double 0.068142999999999995
	.quad	0x3fed6573215fcc18              # double 0.91863399999999995
	.quad	0x3feb87c6327ed84d              # double 0.86032399999999998
	.quad	0x3fe1fa4e7ab75643              # double 0.561805
	.quad	0x3fb3ae147ae147ae              # double 0.076874999999999998
	.quad	0x3fedbaf102363b25              # double 0.92906999999999995
	.quad	0x3fe46ba8c586876e              # double 0.63814199999999999
	.quad	0x3fd2cb1465e89225              # double 0.29364499999999999
	.quad	0x3fc439b456b441bc              # double 0.15801100000000001
	.quad	0x3febd3415b1422cd              # double 0.86953800000000003
	.quad	0x3fdb3dc8b86b15f9              # double 0.42564600000000002
	.quad	0x3fe0356b87379746              # double 0.506521
	.quad	0x3fc1e1c9b4139863              # double 0.13970299999999999
	.quad	0x3fe15716d2aa5c5f              # double 0.54188099999999995
	.quad	0x3fbbcd573647baaa              # double 0.108602
	.quad	0x3fe4d5b89939218a              # double 0.65108900000000003
	.quad	0x3fe3c5ac471b4784              # double 0.61787999999999998
	.quad	0x3fc3e02645e4e69f              # double 0.155278
	.quad	0x3fd5ce5b4245f5ae              # double 0.34072000000000002
	.quad	0x3fcfec918e325d4a              # double 0.24940699999999999
	.quad	0x3fe8cae85b9e8c48              # double 0.77476900000000004
	.quad	0x3fdd49491f2dc2b1              # double 0.457598
	.quad	0x3fe8a35f80991794              # double 0.76994300000000004
	.quad	0x3fd420ddc6195465              # double 0.31450600000000001
	.quad	0x3fc4a6e32e3821af              # double 0.16134299999999999
	.quad	0x3fc2c6ac215b9a5b              # double 0.14668800000000001
	.quad	0x3fda255b035bd513              # double 0.40853
	.quad	0x3fe7fc0096feb4a6              # double 0.74951199999999996
	.quad	0x3fc0e66cb10342ab              # double 0.13203200000000001
	.quad	0x3fee8aaeafab53d6              # double 0.95442899999999997
	.quad	0x3fa80064a9cdc444              # double 0.046878000000000003
	.quad	0x3fdd141e9af5ba2c              # double 0.45435300000000001
	.quad	0x3fd76dbd72bcb5fe              # double 0.36607299999999998
	.quad	0x3fd7f8e3ac0c62e5              # double 0.37456600000000001
	.quad	0x3f93dab5c39bcba3              # double 0.019389
	.quad	0x3f97f0aa21a719b5              # double 0.023379
	.quad	0x3fe122b5a20ddc62              # double 0.53548700000000005
	.quad	0x3fe183ff69014b5a              # double 0.54736300000000004
	.quad	0x3f622749f0e4da0a              # double 0.0022160000000000001
	.quad	0x3fede98bb4d48883              # double 0.93475900000000001
	.quad	0x3fe4977ea1c68ec5              # double 0.64349299999999998
	.quad	0x3fe6fd8cf398e970              # double 0.71845099999999995
	.quad	0x3fef1efd86a8fc0d              # double 0.97253299999999998
	.quad	0x3fb8983d790752db              # double 0.096073000000000006
	.quad	0x3fddcf9a06a6e32e              # double 0.46579599999999999
	.quad	0x3fe14345cfede97d              # double 0.539462
	.quad	0x3fdcd377e1b8ed1c              # double 0.450407
	.quad	0x3fce40c8472c0e7c              # double 0.23635200000000001
	.quad	0x3fd8eee957470eb2              # double 0.38958199999999998
	.quad	0x3fe24bbe4473cd57              # double 0.57174599999999998
	.quad	0x3fd914ca925fe975              # double 0.39189400000000002
	.quad	0x3fed9e3c968943e1              # double 0.925566
	.quad	0x3fec1c886162f167              # double 0.87848300000000001
	.quad	0x3fd1736049ecb31c              # double 0.27266699999999999
	.quad	0x3feef969e3c96894              # double 0.96794599999999997
	.quad	0x3fca0f6f08cc575c              # double 0.203596
	.quad	0x3fdf749adc8fb86f              # double 0.49149199999999998
	.quad	0x3fd50fc71d606317              # double 0.32908799999999999
	.quad	0x3fec2d6883771865              # double 0.88054299999999996
	.quad	0x3fe5e2131a8ef77f              # double 0.68384699999999998
	.quad	0x3fe1a8112ba16e7a              # double 0.55176599999999998
	.quad	0x3fe1aab042528ae7              # double 0.55208599999999997
	.quad	0x3fd993708aac96cc              # double 0.39962399999999998
	.quad	0x3fed320535c9e668              # double 0.91235599999999994
	.quad	0x3fe73adc0980b242              # double 0.725935
	.quad	0x3fe5b9fdbd2fa0d7              # double 0.67895399999999995
	.quad	0x3fdc6ae3a3a8e714              # double 0.44402399999999997
	.quad	0x3feb1758e219652c              # double 0.84660000000000001
	.quad	0x3fe5f304039abf34              # double 0.68591500000000005
	.quad	0x3feb2a94ff0025c0              # double 0.84894800000000004
	.quad	0x3fefe425aee631f9              # double 0.99660000000000004
	.quad	0x3fe4484b5dcc63f1              # double 0.63382499999999997
	.quad	0x3fb85a1cac083127              # double 0.095125000000000001
	.quad	0x3fd24e1e71044f1a              # double 0.28601799999999999
	.quad	0x3fe3fefe0ce0b913              # double 0.62487700000000002
	.quad	0x3fecd959a30984e4              # double 0.901532
	.quad	0x3febae83a109d063              # double 0.86505299999999996
	.quad	0x3fc2a6a012599ed8              # double 0.14571000000000001
	.quad	0x3fe8d9a0f0a5efe9              # double 0.77656599999999998
	.quad	0x3fd0aed56b00ffda              # double 0.26067099999999999
	.quad	0x3fec7c32ebe596c8              # double 0.89016099999999998
	.quad	0x3fe021cef240fa9c              # double 0.50412699999999999
	.quad	0x3fe7a2ad3e920c07              # double 0.73860800000000004
	.quad	0x3fd326b723ee1bd2              # double 0.299238
	.quad	0x3fe4bd512ec6bce8              # double 0.64810999999999996
	.quad	0x3fdcae85b9e8c47a              # double 0.44815199999999999
	.quad	0x3fef9ccd96206855              # double 0.98789099999999996
	.quad	0x3fe6919695d91ab9              # double 0.70527200000000001
	.quad	0x3fd2ae2da554b8bf              # double 0.291881
	.quad	0x3fc38c75c4a83b1d              # double 0.152724
	.quad	0x3feb2936c58eeaea              # double 0.84878100000000001
	.quad	0x3fe6b549f94855da              # double 0.70962999999999998
	.quad	0x3fb44d013a92a305              # double 0.079299999999999995
	.quad	0x3fe42fa2f05a708f              # double 0.63081500000000001
	.quad	0x3fd2fbb0e5e67946              # double 0.29661199999999999
	.quad	0x3fee81c714fce747              # double 0.95334200000000002
	.quad	0x3feb53c148344c38              # double 0.85397400000000001
	.quad	0x3feb4a9cdc443915              # double 0.852858
	.quad	0x3fd28e71476af89c              # double 0.28994399999999998
	.quad	0x3fe6065f9591cd1c              # double 0.68827799999999995
	.quad	0x3fb407570c564f98              # double 0.078237000000000001
	.quad	0x3fe39975f2cb6417              # double 0.612483
	.quad	0x3fb6d30f062d40ab              # double 0.089158000000000001
	.quad	0x3f853586ca89fc6e              # double 0.010356000000000001
	.quad	0x3fcc299524bfd2e9              # double 0.22001899999999999
	.quad	0x3fe3b8b69552e2fc              # double 0.61629800000000001
	.quad	0x3feaeb37867f0aa2              # double 0.84121299999999999
	.quad	0x3fc040420f6f08cc              # double 0.12696099999999999
	.quad	0x3fc4a0dbad3a604e              # double 0.161159
	.quad	0x3fe2cb7d41743e96              # double 0.58733999999999997
	.quad	0x3fdd2ab25b317efe              # double 0.455731
	.quad	0x3feece28ed5f138c              # double 0.96266600000000002
	.quad	0x3feb498e53eb399f              # double 0.85272899999999996
	.quad	0x3fc1abc947064ecf              # double 0.13805500000000001
	.quad	0x3fdab951c5c5718f              # double 0.41756100000000002
	.quad	0x3fb0cab3edd8b60f              # double 0.065592999999999999
	.quad	0x3fe40a4c1ebc83a9              # double 0.62625699999999995
	.quad	0x3fe975818c5c9a35              # double 0.79559400000000002
	.quad	0x3fdccebfec13b9f1              # double 0.45011899999999999
	.quad	0x3fdd02ababead4f6              # double 0.45328800000000002
	.quad	0x3fe7521ff2e48e8a              # double 0.72877499999999995
	.quad	0x3feefbeb9e492bc3              # double 0.968252
	.quad	0x3fe592253111f0c3              # double 0.67408999999999997
	.quad	0x3fcaf16f4384ba0f              # double 0.21049300000000001
	.quad	0x3fe9e2f9ca5bd945              # double 0.80895700000000004
	.quad	0x3fd63343fa2ad3e9              # double 0.34687899999999999
	.quad	0x3fc2acaff6d33094              # double 0.145895
	.quad	0x3fdf3404ea4a8c15              # double 0.48754999999999998
	.quad	0x3fe2df761cbccf29              # double 0.58977800000000002
	.quad	0x3fe0d83e8576cce6              # double 0.526397
	.quad	0x3fd3280ae1049236              # double 0.299319
	.quad	0x3fdadfdef8487b9a              # double 0.41991400000000001
	.quad	0x3fa837b4a2339c0f              # double 0.047300000000000002
	.quad	0x3fe50869c66d373b              # double 0.657277
	.quad	0x3fecf1a3b14a9047              # double 0.904497
	.quad	0x3f894e1a3f4666ed              # double 0.012356000000000001
	.quad	0x3fcd0995aaf78fef              # double 0.226855
	.quad	0x3fed32e7b3d8e001              # double 0.91246400000000005
	.quad	0x3fde62ed352220bc              # double 0.47478799999999999
	.quad	0x3fea3eee52589268              # double 0.82018199999999997
	.quad	0x3feb54e2b063e07a              # double 0.85411199999999998
	.quad	0x3feb8afe60c38f36              # double 0.86071699999999995
	.quad	0x3fead22c881e4713              # double 0.83815600000000001
	.quad	0x3fd423c42a66dbd7              # double 0.31468299999999999
	.quad	0x3fea2424a276b7ed              # double 0.81691199999999997
	.quad	0x3fdf3da72a7bd48d              # double 0.48813800000000002
	.quad	0x3fd80caa326e1156              # double 0.37577300000000002
	.quad	0x3fe551ed9dfdac69              # double 0.66625100000000004
	.quad	0x3fe2347c73eee526              # double 0.56890700000000005
	.quad	0x3fe4241c3efae792              # double 0.62940799999999997
	.quad	0x3fd7b9ae0c176577              # double 0.37070799999999998
	.quad	0x3fac054ef459d990              # double 0.054727999999999999
	.quad	0x3fcdfeda66128390              # double 0.23433999999999999
	.quad	0x3fe2d64302b40f67              # double 0.58865500000000004
	.quad	0x3fa8b6d86ec17ebb              # double 0.04827
	.quad	0x3fe3d273d5bab218              # double 0.61943999999999999
	.quad	0x3fe992ff4ba51a00              # double 0.79919399999999996
	.quad	0x3fe41c193b3a68b2              # double 0.62843000000000004
	.quad	0x3fb0811b1d92b7fe              # double 0.06447
	.quad	0x3fecd4bf0995aaf8              # double 0.90097000000000005
	.quad	0x3f99003eea209aaa              # double 0.024414999999999999
	.quad	0x3fdddde7a743a648              # double 0.466669
	.quad	0x3f8e77d523b3636f              # double 0.014877
	.quad	0x3fde6bb98c7e2824              # double 0.475325
	.quad	0x3f72849cb252ce03              # double 0.0045209999999999998
	.quad	0x3fa5eca25529fe00              # double 0.042820999999999998
	.quad	0x3fe0b03e20ccff22              # double 0.52151400000000003
	.quad	0x3fc277bbf93ff25e              # double 0.14427899999999999
	.quad	0x3fe3e805a2d72ffd              # double 0.62207299999999999
	.quad	0x3fe30ba40d90e23b              # double 0.59517100000000001
	.quad	0x3fd80281ba7fc32f              # double 0.37515300000000001
	.quad	0x3fee27418d6909af              # double 0.94229200000000002
	.quad	0x3fe472c3009b3073              # double 0.63900900000000005
	.quad	0x3fc937d1fe64f54d              # double 0.197016
	.quad	0x3feb693e1c9b413a              # double 0.85659700000000005
	.quad	0x3fd338eb0318b934              # double 0.30034899999999998
	.quad	0x3fe4137b07075b3e              # double 0.62737799999999999
	.quad	0x3fdafd75e2046c76              # double 0.42171999999999998
	.quad	0x3fe0775536933a04              # double 0.514567
	.quad	0x3fe2b458cd20afa3              # double 0.58451500000000001
	.quad	0x3fd2882adc4c9c91              # double 0.28956100000000001
	.quad	0x3fbce6c093d96638              # double 0.112896
	.quad	0x3fe302a12f901084              # double 0.59407100000000002
	.quad	0x3fe15aad601ffb48              # double 0.542319
	.quad	0x3feff8cc9a77e5eb              # double 0.99912100000000003
	.quad	0x3fc5e603d577963a              # double 0.17108200000000001
	.quad	0x3fc343aeab7995ee              # double 0.150503
	.quad	0x3fc8ff9f87f023ea              # double 0.195301
	.quad	0x3fa54ed2cbea4ebe              # double 0.041617000000000001
	.quad	0x3fe3cb966be7afa7              # double 0.61860199999999999
	.quad	0x3fb9a0cf1800a7c6              # double 0.10011
	.quad	0x3f9b4e54f7a91969              # double 0.026665999999999999
	.quad	0x3fedcdee34fc610f              # double 0.93138799999999999
	.quad	0x3fb59e6256366d7a              # double 0.084447999999999995
	.quad	0x3fc0a0e410b630a9              # double 0.12991
	.quad	0x3fe60f9096bb98c8              # double 0.68940000000000001
	.quad	0x3fd6deebb341e14c              # double 0.35735600000000001
	.quad	0x3fd6f6e82949a565              # double 0.35881999999999997
	.quad	0x3fc13ed527e52157              # double 0.13472999999999999
	.quad	0x3fe4536d655e28aa              # double 0.63518399999999997
	.quad	0x3fc8d948dc11e42e              # double 0.194131
	.quad	0x3fbc3b60285ec3db              # double 0.110281
	.quad	0x3fd0f70de8f6ceff              # double 0.26507900000000001
	.quad	0x3fec0068db8bac71              # double 0.87504999999999999
	.quad	0x3fe73827fa1a0cf2              # double 0.72560500000000006
	.quad	0x3fe8454de7ea5f85              # double 0.75846000000000002
	.quad	0x3f90ac3a860dcb9b              # double 0.016282000000000001
	.quad	0x3fc796073de1e2df              # double 0.18426600000000001
	.quad	0x3fe79fab96f21f6d              # double 0.73824100000000004
	.quad	0x3fcb37f38c5436b9              # double 0.212645
	.quad	0x3f8e6362a5e785b6              # double 0.014838
	.quad	0x3fbcfa15db3397dd              # double 0.113191
	.quad	0x3fdb59e6256366d8              # double 0.42736200000000002
	.quad	0x3febb00bcbe61d00              # double 0.86524000000000001
	.quad	0x3feda749f0e4da0a              # double 0.92667100000000002
	.quad	0x3fef36523704790c              # double 0.97538100000000005
	.quad	0x3fd1bd44998d0460              # double 0.27717700000000001
	.quad	0x3fe258adab9f559b              # double 0.57332499999999997
	.quad	0x3fc72a62aa19439e              # double 0.180981
	.quad	0x3fd73458cd20afa3              # double 0.36257
	.quad	0x3fba9db65ecc3e32              # double 0.10396900000000001
	.quad	0x3fb3ddca4b124d0a              # double 0.077603000000000005
	.quad	0x3fd3613d31b9b670              # double 0.30281000000000002
	.quad	0x3fd4ed06fef7c244              # double 0.32696700000000001
	.quad	0x3fbd28bf3bea91da              # double 0.113903
	.quad	0x3fd8bbf93ff25e57              # double 0.38647300000000001
	.quad	0x3fd1b59ddc1e7968              # double 0.27671000000000001
	.quad	0x3f88cfbfc6540cc8              # double 0.012115000000000001
	.quad	0x3fd6f023e9ea1405              # double 0.35840699999999998
	.quad	0x3fe154866a11ec92              # double 0.54156800000000005
	.quad	0x3fc4705425f20210              # double 0.15967799999999999
	.quad	0x3fe5c3a2163fdd66              # double 0.68013100000000004
	.quad	0x3fda6da87a072d1b              # double 0.412943
	.quad	0x3fd000b029281776              # double 0.25004199999999999
	.quad	0x3fd2c521dda059a7              # double 0.29328199999999999
	.quad	0x3fa4083126e978d5              # double 0.039125
	.quad	0x3fea9e731d2e0e30              # double 0.83184199999999997
	.quad	0x3fc1e5082cf52b91              # double 0.13980200000000001
	.quad	0x3fdba0a958537e2c              # double 0.43168099999999998
	.quad	0x3feb099bf5946c33              # double 0.84492299999999998
	.quad	0x3fdd69595feda661              # double 0.45955499999999999
	.quad	0x3fc5e76c8b439581              # double 0.171125
	.quad	0x3fe81c6088d6d3b7              # double 0.75346400000000002
	.quad	0x3fc75f0b28522ea1              # double 0.182588
	.quad	0x3fe60216c61522a7              # double 0.68775500000000001
	.quad	0x3fe37d566cf41f21              # double 0.60904999999999998
	.quad	0x3fe93f8fcd67fd3f              # double 0.78900899999999996
	.quad	0x3fb62b4959e62563              # double 0.086597999999999994
	.quad	0x3fe9231832fcac8e              # double 0.78553399999999995
	.quad	0x3fe80f062d40aaeb              # double 0.751834
	.quad	0x3fd34039abf33871              # double 0.30079499999999998
	.quad	0x3feed1bb4916ca47              # double 0.96310200000000001
	.quad	0x3fc1201040bfe3b0              # double 0.13379099999999999
	.quad	0x3fd1bc01a36e2eb2              # double 0.27710000000000001
	.quad	0x3fc3f5b5fa22706d              # double 0.15593599999999999
	.quad	0x3fd101fb82c2bd7f              # double 0.26574599999999998
	.quad	0x3fddb02d59d55e6c              # double 0.46387800000000001
	.quad	0x3fcd43bf727136a4              # double 0.22863
	.quad	0x3fe16be7afa72218              # double 0.54442199999999996
	.quad	0x3fe55905c0336156              # double 0.66711699999999996
	.quad	0x3f85dbb9cf9a06a7              # double 0.010673
	.quad	0x3fddab9b23dd54da              # double 0.46359899999999998
	.quad	0x3fec1b9b66f9335d              # double 0.87836999999999998
	.quad	0x3f8641f644955b46              # double 0.010867999999999999
	.quad	0x3feb4f7ec3547e07              # double 0.85345400000000005
	.quad	0x3fe6846e8f29d40f              # double 0.70366600000000001
	.quad	0x3fceb777d0f1f57b              # double 0.23997399999999999
	.quad	0x3fc4a6c1a048e044              # double 0.16133900000000001
	.quad	0x3fcebc5154866a12              # double 0.240122
	.quad	0x3fe68316a055757d              # double 0.70350199999999996
	.quad	0x3fcc69a4df47f994              # double 0.221974
	.quad	0x3fe0ec918e325d4a              # double 0.52887799999999996
	.quad	0x3fd3934699418506              # double 0.30586400000000002
	.quad	0x3fd8362a5e785b5b              # double 0.37830599999999998
	.quad	0x3fe900a393ee5eee              # double 0.78132800000000002
	.quad	0x3fb5cebfec13b9f1              # double 0.085185999999999998
	.quad	0x3fd73b85e80bed74              # double 0.363008
	.quad	0x3fee1d2178f68be3              # double 0.941056
	.quad	0x3fd892c8c5004fb1              # double 0.38395899999999999
	.quad	0x3fd90dbad3a604e2              # double 0.39146300000000001
	.quad	0x3fe1184a0e410b63              # double 0.534215
	.quad	0x3fd7a3b9ae0c1765              # double 0.36936799999999997
	.quad	0x3fc21711947cfa27              # double 0.14132900000000001
	.quad	0x3f9a31a4bdba0a52              # double 0.025579999999999999
	.quad	0x3fd85471715c63ae              # double 0.38015399999999999
	.quad	0x3fc56872b020c49c              # double 0.16725000000000001
	.quad	0x3fd88c32a8c9b845              # double 0.38355699999999998
	.quad	0x3fe8371da37ef5a9              # double 0.75672799999999996
	.quad	0x3fe0baade657b84e              # double 0.52278800000000003
	.quad	0x3fe3d5347a5b0ff1              # double 0.61977599999999999
	.quad	0x3fb4a24463065f96              # double 0.080601000000000005
	.quad	0x3fd972b020c49ba6              # double 0.39762500000000001
	.quad	0x3fcc7304039abf34              # double 0.22226000000000001
	.quad	0x3fe96d740c4156e2              # double 0.79461099999999996
	.quad	0x3feaae3e6c4c5975              # double 0.83377000000000001
	.quad	0x3fdc2428d434a01b              # double 0.43970700000000001
	.quad	0x3f9335d249e44fa0              # double 0.018759999999999999
	.quad	0x3fc677dd872f33ca              # double 0.17553299999999999
	.quad	0x3f94228997c3d684              # double 0.019663
	.quad	0x3fe876ff3ade2260              # double 0.76452600000000003
	.quad	0x3febaff08893b7d8              # double 0.86522699999999997
	.quad	0x3fc1e4ef0281ba80              # double 0.13979900000000001
	.quad	0x3fd00242d05f2885              # double 0.25013800000000003
	.quad	0x3fe43c408d8ec95c              # double 0.632355
	.quad	0x3feecfbb9496249a              # double 0.96285799999999999
	.quad	0x3fd65f5f0b28522f              # double 0.34957100000000002
	.quad	0x3fe5f1476af89c5e              # double 0.68570299999999995
	.quad	0x3fe6976ddaceee0f              # double 0.70598499999999997
	.quad	0x3fe0052934acaff7              # double 0.50063000000000002
	.quad	0x3fc6f6d7625204b0              # double 0.17940800000000001
	.quad	0x3fe3bc27631b584b              # double 0.61671799999999999
	.quad	0x3f7651b0ccbc05d5              # double 0.0054489999999999999
	.quad	0x3fed6d0b30b5aa71              # double 0.91956099999999996
	.quad	0x3fee4ca0c282c6ef              # double 0.94685399999999997
	.quad	0x3fcf5b5fa22706d5              # double 0.244976
	.quad	0x3fdaae297396d091              # double 0.41687999999999997
	.quad	0x3fc8dad31fcd24e1              # double 0.19417799999999999
	.quad	0x3fe88288051c9f73              # double 0.765934
	.quad	0x3fe49e3a7daa4fca              # double 0.64431499999999997
	.quad	0x3fd122ea0fd3b29a              # double 0.26775599999999999
	.quad	0x3fd15126634117f8              # double 0.27057799999999999
	.quad	0x3fe30ffda4052d66              # double 0.59570199999999995
	.quad	0x3fc3c0fcb4f1e4b4              # double 0.15432699999999999
	.quad	0x3fe26efe4ffc9796              # double 0.57604900000000003
	.quad	0x3fe3bd25247cb70b              # double 0.61683900000000003
	.quad	0x3fef1aed56b00ffe              # double 0.97203700000000004
	.quad	0x3fdf653c9abb01c9              # double 0.49055399999999999
	.quad	0x3feb2edfe75bc44c              # double 0.849472
	.quad	0x3fead0dcfcc5b8dc              # double 0.83799599999999996
	.quad	0x3fc2c8605681ecd5              # double 0.14674000000000001
	.quad	0x3fa4e032db1e9f27              # double 0.040772999999999997
	.quad	0x3fe7e36d22424a27              # double 0.74651199999999995
	.quad	0x3fe2872b020c49ba              # double 0.57899999999999996
	.quad	0x3fe767168f8e7ddd              # double 0.73133400000000004
	.quad	0x3fdfd9513f8db489              # double 0.497639
	.quad	0x3fee8de2ac322292              # double 0.95482
	.quad	0x3fd4f7878b7a1c26              # double 0.32760800000000001
	.quad	0x3fe04adbc664d3bf              # double 0.50913799999999998
	.quad	0x3fe87be121ee6751              # double 0.76512199999999997
	.quad	0x3fc58ce2d1f1cfbc              # double 0.16836200000000001
	.quad	0x3fee67903211cb04              # double 0.95014200000000004
	.quad	0x3fdade33269df97b              # double 0.41981200000000002
	.quad	0x3fd8c804102ff8ec              # double 0.387208
	.quad	0x3fdd3d5fdcdf6988              # double 0.45687100000000003
	.quad	0x3fe47168f8e7ddca              # double 0.63884399999999997
	.quad	0x3fc5fa0945f9df55              # double 0.17169300000000001
	.quad	0x3fd197bfa4c61d86              # double 0.27488699999999999
	.quad	0x3fec852934acaff7              # double 0.89125500000000002
	.quad	0x3fef9c12f09d8c6d              # double 0.98780199999999995
	.quad	0x3fe17301eabbcb1d              # double 0.54528900000000002
	.quad	0x3fe9183d790752db              # double 0.78420900000000004
	.quad	0x3fe8d807fed20297              # double 0.77637100000000003
	.quad	0x3fc7700cd855970b              # double 0.18310699999999999
	.quad	0x3fe3d42a23bff8a9              # double 0.61964900000000001
	.quad	0x3fd8ae9680e06530              # double 0.385656
	.quad	0x3fde3532e7b3d8e0              # double 0.471997
	.quad	0x3fec825bfad29995              # double 0.89091299999999995
	.quad	0x3fbaa7ef9db22d0e              # double 0.104125
	.quad	0x3fb3d1aa821f2991              # double 0.077418000000000001
	.quad	0x3fef51372a38b8ae              # double 0.97866399999999998
	.quad	0x3fd04b018611fd59              # double 0.25457800000000003
	.quad	0x3fe6e9db65ecc3e3              # double 0.71604699999999999
	.quad	0x3fce01b43526527a              # double 0.234427
	.quad	0x3fdeb5cbff47735c              # double 0.47984599999999999
	.quad	0x3fddde481f53825e              # double 0.466692
	.quad	0x3fe813cee9dd7ecc              # double 0.75241800000000003
	.quad	0x3feae09dcf893faf              # double 0.83991899999999997
	.quad	0x3f9606b7aa25d8d8              # double 0.021510000000000001
	.quad	0x3fc0532a497fa5d3              # double 0.12753800000000001
	.quad	0x3fdcdfb9389b5200              # double 0.45115499999999997
	.quad	0x3fee54562e09fe87              # double 0.94779500000000005
	.quad	0x3fd597bfa4c61d86              # double 0.33738699999999999
	.quad	0x3fef3bf93ff25e57              # double 0.97607100000000002
	.quad	0x3fe9569d30270f39              # double 0.79182300000000005
	.quad	0x3fcf7060bb2bba99              # double 0.245617
	.quad	0x3feaf30e7ff583a5              # double 0.84216999999999997
	.quad	0x3fb34a1272c94b38              # double 0.075348999999999999
	.quad	0x3fe7731b152f3c2e              # double 0.73280100000000004
	.quad	0x3fe794488c60cbf3              # double 0.73685100000000003
	.quad	0x3fe16df1e0828c37              # double 0.54467100000000002
	.quad	0x3fd8cc39ffd60e95              # double 0.387465
	.quad	0x3feedc6c11a11234              # double 0.96440700000000001
	.quad	0x3fe6d4de7ea5f84d              # double 0.71348500000000004
	.quad	0x3feee15011904b3c              # double 0.96500399999999997
	.quad	0x3fdb316e37154003              # double 0.42489199999999999
	.quad	0x3fbb7b07075b3e14              # double 0.107346
	.quad	0x3fe90b0f27bb2fec              # double 0.78259999999999996
	.quad	0x3fa5cc426351def0              # double 0.042574000000000001
	.quad	0x3fc4b7c3504c48ae              # double 0.161858
	.quad	0x3fa48626f60e0eb6              # double 0.040085999999999997
	.quad	0x3fe85e8f6cefed63              # double 0.76154299999999997
	.quad	0x3fc99b5e95b78cca              # double 0.20005400000000001
	.quad	0x3fb01e68a0d349bf              # double 0.062964000000000006
	.quad	0x3fd14302b40f66a5              # double 0.26971499999999998
	.quad	0x3fb8e66cb10342ab              # double 0.097266000000000005
	.quad	0x3fe349f51697f1fa              # double 0.60277800000000004
	.quad	0x3fe592641b328b6e              # double 0.67412000000000005
	.quad	0x3fd551f3e89a88ad              # double 0.33312700000000001
	.quad	0x3fb64e69f05ea24d              # double 0.087134000000000003
	.quad	0x3fec16bdb1a6d699              # double 0.877776
	.quad	0x3fef6d740c4156e2              # double 0.98211099999999996
	.quad	0x3febeb56fb8f57f7              # double 0.87247799999999998
	.quad	0x3fc694898f605ab4              # double 0.17640800000000001
	.quad	0x3fe7fe2e6ea85447              # double 0.74977799999999994
	.quad	0x3fd85a5fc7e6b3ff              # double 0.38051600000000002
	.quad	0x3fee2b841248d7e0              # double 0.94281199999999998
	.quad	0x3fcb0c1333b96af0              # double 0.21130599999999999
	.quad	0x3fe018b71b8aa002              # double 0.50301700000000005
	.quad	0x3fe88fbca1059ea5              # double 0.76754599999999995
	.quad	0x3fcdf8a0902de00d              # double 0.23415
	.quad	0x3f94d72799a1fd15              # double 0.020351999999999999
	.quad	0x3fe4416df3f96180              # double 0.63298699999999997
	.quad	0x3fea042528ae74f3              # double 0.81300600000000001
	.quad	0x3fc78f7121ab4b73              # double 0.18406500000000001
	.quad	0x3fe5669270b06c44              # double 0.668771
	.quad	0x3fdb9a73b42cc2d7              # double 0.43130200000000002
	.quad	0x3faa1ab4b72c5198              # double 0.050985000000000003
	.quad	0x3fa70691ea78af3e              # double 0.044971999999999998
	.quad	0x3fa475c4a83b1d0d              # double 0.039961000000000003
	.quad	0x3fdaab3edd8b60f2              # double 0.41670200000000002
	.quad	0x3fd8baa9b499d020              # double 0.38639299999999999
	.quad	0x3fb443a2163fdd66              # double 0.079157000000000005
	.quad	0x3fbe1554fbdad752              # double 0.11751300000000001
	.quad	0x3fda4de7ea5f84cb              # double 0.41100500000000001
	.quad	0x3fd4e02a77a2cecd              # double 0.32618200000000003
	.quad	0x3fe1b9e6ab9b23dd              # double 0.55394299999999996
	.quad	0x3feed84901d19158              # double 0.96390200000000003
	.quad	0x3fc6ebcc6c54bcf1              # double 0.17907100000000001
	.quad	0x3fea49fb6134ce3e              # double 0.82153100000000001
	.quad	0x3fddce4217d2849d              # double 0.46571400000000002
	.quad	0x3fd541d8e8640208              # double 0.33214399999999999
	.quad	0x3fe46dd8b60f1b26              # double 0.638409
	.quad	0x3fe8a7136a400fbb              # double 0.77039500000000005
	.quad	0x3fdf327674d16335              # double 0.48745500000000003
	.quad	0x3feb330f8c64fdb1              # double 0.84998300000000004
	.quad	0x3fe415c209246bf0              # double 0.62765599999999999
	.quad	0x3fd06e6d9be4cd75              # double 0.25674000000000002
	.quad	0x3fecd0a88effe2a4              # double 0.90047100000000002
	.quad	0x3fe54eb9a176ddad              # double 0.66586000000000001
	.quad	0x3fc6fbb0e5e67946              # double 0.17955599999999999
	.quad	0x3fee8841ede1198b              # double 0.95413300000000001
	.quad	0x3fe58b3700474d9c              # double 0.67324399999999995
	.quad	0x3f8f676ea4228998              # double 0.015334
	.quad	0x3fe968d10f51ac9b              # double 0.794045
	.quad	0x3fd5e9d51b4fe79f              # double 0.34239700000000001
	.quad	0x3fd0cb46bacf7447              # double 0.262407
	.quad	0x3feabd6c72192210              # double 0.835623
	.quad	0x3fd0faa4766c6de7              # double 0.26529799999999998
	.quad	0x3fc078f25a250f84              # double 0.128691
	.quad	0x3fddde5082cf52b9              # double 0.466694
	.quad	0x3fdf53b4b2fa93af              # double 0.48948399999999997
	.quad	0x3fd5e4c51116a8b9              # double 0.342088
	.quad	0x3fdb6ad70e6f2e8c              # double 0.428396
	.quad	0x3fe893fd0d0678c0              # double 0.768065
	.quad	0x3fe70dbcec84f8f9              # double 0.72042700000000004
	.quad	0x3fe3686a4ca4f441              # double 0.60649600000000004
	.quad	0x3fd5bf5d78811b1e              # double 0.33980500000000002
	.quad	0x3fed7ca42aed1394              # double 0.92146499999999997
	.quad	0x3fe7c3760bf5d788              # double 0.74260999999999999
	.quad	0x3feddffe6d58c8ef              # double 0.93359300000000001
	.quad	0x3fb25c1c6088d6d4              # double 0.071718000000000004
	.quad	0x3fe14d48882f0e0b              # double 0.54068400000000005
	.quad	0x3fe1978d4fdf3b64              # double 0.54974999999999996
	.quad	0x3fdb620ab7132724              # double 0.42785899999999999
	.quad	0x3fe1f785729b280f              # double 0.56146499999999999
	.quad	0x3fec6ce789e774ef              # double 0.88829400000000003
	.quad	0x3fc0377186551937              # double 0.126692
	.quad	0x3fe88281ba7fc32f              # double 0.76593100000000003
	.quad	0x3fdce62dc6e2a800              # double 0.45154899999999998
	.quad	0x3fd91198aeb80ed0              # double 0.39169900000000002
	.quad	0x3fcc39ffd60e94ee              # double 0.22051999999999999
	.quad	0x3fd16744b2b777d1              # double 0.271928
	.quad	0x3fe78bb6ed677708              # double 0.73580500000000004
	.quad	0x3fe4f7fcfc3f811f              # double 0.65527199999999997
	.quad	0x3fc3940789613d32              # double 0.15295500000000001
	.quad	0x3fef6e264e48626f              # double 0.98219599999999995
	.quad	0x3fc114877681669d              # double 0.133439
	.quad	0x3fe7ecca2db61bb0              # double 0.74765499999999996
	.quad	0x3fe027b0b3919264              # double 0.50484499999999999
	.quad	0x3fc58e9f6a93f291              # double 0.16841500000000001
	.quad	0x3fe9b97bb7308356              # double 0.80389200000000005
	.quad	0x3fe6aa64c2f837b5              # double 0.70830000000000004
	.quad	0x3feb070da5daf07c              # double 0.844611
	.quad	0x3f99cb252ce032db              # double 0.025189
	.quad	0x3fe6cfca42aed139              # double 0.71286499999999997
	.quad	0x3fd51b71758e2196              # double 0.32979999999999998
	.quad	0x3fe6f7d73c925786              # double 0.717754
	.quad	0x3fe62e2541d8e864              # double 0.693133
	.quad	0x3fda9b34a44c7b03              # double 0.41572300000000001
	.quad	0x3fea369552e2fbe3              # double 0.81916299999999997
	.quad	0x3fe5e6c093d96638              # double 0.68441799999999997
	.quad	0x3fd6e924f227d029              # double 0.35798000000000002
	.quad	0x3fc339085f4a1273              # double 0.15017800000000001
	.quad	0x3fb47d0aed99cbef              # double 0.080033000000000007
	.quad	0x3fdc31bde82d7b63              # double 0.44053599999999998
	.quad	0x3fe2b9713ad5bee4              # double 0.58513700000000002
	.quad	0x3fe637fe08aefb2b              # double 0.69433500000000004
	.quad	0x3fe26ad4f5903a75              # double 0.57554099999999997
	.quad	0x3fe3ff6f4be835df              # double 0.62493100000000001
	.quad	0x3fd671ac14c660a2              # double 0.350688
	.quad	0x3fec5432873bc904              # double 0.885278
	.quad	0x3fe9838c111ada77              # double 0.79730800000000002
	.quad	0x3fe12e33eff19503              # double 0.53688999999999998
	.quad	0x3fe1d959a30984e4              # double 0.557782
	.quad	0x3fdbe5e679463cfb              # double 0.43590699999999999
	.quad	0x3fe40f733a8a3f8a              # double 0.62688600000000005
	.quad	0x3fd0d551d68c692f              # double 0.26301999999999998
	.quad	0x3fa2a4db163baba8              # double 0.036414000000000002
	.quad	0x3fd1ab191dde3758              # double 0.27606799999999998
	.quad	0x3fe8979e16d6dc1a              # double 0.76850799999999997
	.quad	0x3fe31dc725c3dee8              # double 0.59738500000000005
	.quad	0x3fd5ea033e78e193              # double 0.34240799999999999
	.quad	0x3faa01eeed8904f7              # double 0.050796000000000001
	.quad	0x3fee9c53f39d1b2e              # double 0.95658299999999996
	.quad	0x3fb462b27cbf6e3f              # double 0.079630999999999993
	.quad	0x3fd3588e368f0846              # double 0.30227999999999999
	.quad	0x3fed1289dadfb507              # double 0.90851300000000001
	.quad	0x3fb4b4f1e4b44a1f              # double 0.080886
	.quad	0x3fddc254a3c64346              # double 0.46498600000000001
	.quad	0x3fdf9374bc6a7efa              # double 0.49337500000000001
	.quad	0x3fe936fe2e6ea854              # double 0.78796299999999996
	.quad	0x3fb4e1932d6ece14              # double 0.081567000000000001
	.quad	0x3fd2baa9b499d020              # double 0.29264299999999999
	.quad	0x3feb0a47ecfe9b7c              # double 0.845005
	.quad	0x3fe7b1769a91105e              # double 0.74041299999999999
	.quad	0x3fea8203e63e8dda              # double 0.82837099999999997
	.quad	0x3fdb965b20b8066c              # double 0.43105199999999999
	.quad	0x3febc3aeab7995ee              # double 0.86763699999999999
	.quad	0x3fdae48626f60e0f              # double 0.42019800000000002
	.quad	0x3fe8a917507e9d95              # double 0.77064100000000002
	.quad	0x3fe176c050bd87b5              # double 0.54574599999999995
	.quad	0x3fd743fe5c91d14e              # double 0.36352499999999999
	.quad	0x3fdc3d7d3910c2c6              # double 0.44125300000000001
	.quad	0x3feea4db163baba8              # double 0.95762400000000003
	.quad	0x3fe9219652bd3c36              # double 0.78534999999999999
	.quad	0x3fee156e264e4862              # double 0.94011599999999995
	.quad	0x3fec2441fea8112c              # double 0.87942600000000004
	.quad	0x3fef7c1bda5119ce              # double 0.9839
	.quad	0x3fe71d495182a993              # double 0.72232499999999999
	.quad	0x3fc31359791819d2              # double 0.14902799999999999
	.quad	0x3fdd70e6f2e8c048              # double 0.46001599999999998
	.quad	0x3fe17396d0917d6b              # double 0.54535999999999996
	.quad	0x3fd1cb5fe542e558              # double 0.27803800000000001
	.quad	0x3fe9fab7564302b4              # double 0.81185499999999999
	.quad	0x3fe6b324851a8694              # double 0.709368
	.quad	0x3fefa148ba83f4ed              # double 0.98843800000000003
	.quad	0x3fd2a1986b9c304d              # double 0.29111300000000001
	.quad	0x3febcc9c90c4dec2              # double 0.86872700000000003
	.quad	0x3fc9b9b66f9335d2              # double 0.20097999999999999
	.quad	0x3fd3b4e9813879c4              # double 0.307917
	.quad	0x3fe29ec0b567557a              # double 0.58187900000000004
	.quad	0x3fe320f0a5efe932              # double 0.59777100000000005
	.quad	0x3fdd7ce0fc2eba28              # double 0.46074700000000002
	.quad	0x3fea74dbdf8f4730              # double 0.82676499999999997
	.quad	0x3fee78e9f6a93f29              # double 0.95226
	.quad	0x3fdf1287c200c0f0              # double 0.48550599999999999
	.quad	0x3fe8fb267c6b8b69              # double 0.78065799999999996
	.quad	0x3feb23b14a90470b              # double 0.84810700000000006
	.quad	0x3fe409efd86a8fc1              # double 0.62621300000000002
	.quad	0x3feea821f2990f30              # double 0.95802399999999999
	.quad	0x3fab3c1ce6c093d9              # double 0.053192999999999997
	.quad	0x3fe2798d8a979e17              # double 0.57733800000000002
	.quad	0x3fb37c88e79aae6d              # double 0.076119000000000006
	.quad	0x3fe30895d0b73d19              # double 0.59479800000000005
	.quad	0x3fe8afff36ac6477              # double 0.77148399999999995
	.quad	0x3fe055e4a3832767              # double 0.51048499999999997
	.quad	0x3fcc0b88ca3e7d13              # double 0.21910199999999999
	.quad	0x3fe1cb0c026cc1ca              # double 0.55603599999999997
	.quad	0x3fe40c2c5e2cdc01              # double 0.62648599999999999
	.quad	0x3fe08c9107faa045              # double 0.51715900000000004
	.quad	0x3fdbb777d0f1f57b              # double 0.43307299999999999
	.quad	0x3fd396af038e29fa              # double 0.30607200000000001
	.quad	0x3fe8a56366d7a56e              # double 0.77018900000000001
	.quad	0x3feeb8dc55000c95              # double 0.96006599999999997
	.quad	0x3fd21ed17c5ef630              # double 0.28313100000000002
	.quad	0x3fba605ee568a505              # double 0.103033
	.quad	0x3fdf0b912dba4d6e              # double 0.48508099999999998
	.quad	0x3fd29ca5bd944aa5              # double 0.29081099999999999
	.quad	0x3fc3009b30728e93              # double 0.148456
	.quad	0x3fca4b76f6d76252              # double 0.205428
	.quad	0x3fe57214f0520d13              # double 0.67017599999999999
	.quad	0x3fbdc065b63d3e4f              # double 0.116217
	.quad	0x3f91e7967caea748              # double 0.017485000000000001
	.quad	0x3fda99cbee807bbb              # double 0.41563699999999998
	.quad	0x3fdea30db6a1e81d              # double 0.47870200000000002
	.quad	0x3fd55f3d7d3910c3              # double 0.33393800000000001
	.quad	0x3fee258b3f63c31e              # double 0.942083
	.quad	0x3fea2f31b152f3c3              # double 0.81826100000000002
	.quad	0x3fee125dd095af29              # double 0.93974199999999997
	.quad	0x3fe12ccb3a2595bc              # double 0.53671800000000003
	.quad	0x3fd0c8d9f90539fc              # double 0.26225900000000002
	.quad	0x3fd08bac710cb296              # double 0.258525
	.quad	0x3fe98f42fe82517e              # double 0.79873799999999995
	.quad	0x3fe633daf8df7a4e              # double 0.69382999999999995
	.quad	0x3f7cf9a06a6e32e4              # double 0.0070740000000000004
	.quad	0x3fea8094e5d5b24f              # double 0.82819600000000004
	.quad	0x3fe0fee2c98e53eb              # double 0.53111399999999998
	.quad	0x3fe6bb517a46173c              # double 0.71036600000000005
	.quad	0x3fcc0f2389720429              # double 0.21921199999999999
	.quad	0x3fea530ced4e4c94              # double 0.82263799999999998
	.quad	0x3fe62363b256ffc1              # double 0.69181999999999999
	.quad	0x3fa1d4306e5cd4ed              # double 0.034821999999999999
	.quad	0x3fdac9abb01c92de              # double 0.41855900000000001
	.quad	0x3fea9b23dd54da4d              # double 0.83143800000000001
	.quad	0x3fe0c15f45e0b4e1              # double 0.52360499999999999
	.quad	0x3fe986594af4f0d8              # double 0.79764999999999997
	.quad	0x3fe40323358f2e06              # double 0.62538300000000002
	.quad	0x3fe1bff47735c183              # double 0.55468200000000001
	.quad	0x3fe2cf1e4b44a1f1              # double 0.58778300000000006
	.quad	0x3fe3bc59b8023a6d              # double 0.61674200000000001
	.quad	0x3fecd976ff3ade22              # double 0.90154599999999996
	.quad	0x3fe0fc504816f007              # double 0.53080000000000005
	.quad	0x3fda68a936c58eeb              # double 0.412638
	.quad	0x3fdfbf5515054ac3              # double 0.49605300000000002
	.quad	0x3fe6d6f976790321              # double 0.71374199999999999
	.quad	0x3fe3db6c3760bf5d              # double 0.62053499999999995
	.quad	0x3fb87064ece9a2c6              # double 0.095464999999999994
	.quad	0x3fcb8b502ababead              # double 0.21518899999999999
	.quad	0x3fdb7f66e86c6584              # double 0.42965100000000001
	.quad	0x3fefcbf8fcd67fd4              # double 0.993649
	.quad	0x3fd59bf162ae4b02              # double 0.33764300000000003
	.quad	0x3fe8e35610adcd2d              # double 0.77775099999999997
	.quad	0x3f7b994e1a3f4667              # double 0.0067380000000000001
	.quad	0x3fe72ab8a5ce5b42              # double 0.72396499999999997
	.quad	0x3fe7385a4f00ef13              # double 0.72562899999999997
	.quad	0x3f87121ab4b72c52              # double 0.011265000000000001
	.quad	0x3fea3ebe1650a45d              # double 0.82015899999999997
	.quad	0x3fafcd035371971c              # double 0.062111
	.quad	0x3fe802235b4edb2f              # double 0.75026099999999996
	.quad	0x3f58655193708aad              # double 0.0014890000000000001
	.quad	0x3fe12a77a2cecc81              # double 0.53643399999999997
	.quad	0x3fe9edbb59ddc1e8              # double 0.81027000000000005
	.quad	0x3feb09203a322af5              # double 0.84486399999999995
	.quad	0x3fdfd46b26bf876a              # double 0.49734
	.quad	0x3fd97b45f17bd8be              # double 0.39814899999999998
	.quad	0x3fafe80389f83be6              # double 0.062316999999999997
	.quad	0x3fea6557de0d66f1              # double 0.82487100000000002
	.quad	0x3fc12b6f19934efd              # double 0.13413800000000001
	.quad	0x3fe76d19dece5711              # double 0.73206800000000005
	.quad	0x3fea3d6c72192210              # double 0.819998
	.quad	0x3fe29a88ace24bba              # double 0.58136399999999999
	.quad	0x3fe34ac083126e98              # double 0.60287500000000005
	.quad	0x3fe34b039ef0f16f              # double 0.60290699999999997
	.quad	0x3fed1800a7c5ac47              # double 0.90917999999999999
	.quad	0x3fdfd5c31593e5fb              # double 0.49742199999999998
	.quad	0x3fca74c09c3ce209              # double 0.20668800000000001
	.quad	0x3fd06473471f7942              # double 0.256131
	.quad	0x3fe2a27d028a1dfc              # double 0.58233500000000005
	.quad	0x3fea666666666666              # double 0.82499999999999996
	.quad	0x3fee0f648c7192ea              # double 0.93937899999999996
	.quad	0x3fcee60807357e67              # double 0.241395
	.quad	0x3fb6f8bdec5f394b              # double 0.089732999999999993
	.quad	0x3fec61deacc92147              # double 0.88694700000000004
	.quad	0x3feb4fd2a62aa194              # double 0.85349399999999997
	.quad	0x3fe5452c59fb1e19              # double 0.66469400000000001
	.quad	0x3fbebc83a96d4c34              # double 0.120064
	.quad	0x3fe5dc725c3dee78              # double 0.68315999999999999
	.quad	0x3fea45ae5ffa3b9b              # double 0.82100600000000001
	.quad	0x3fe40969a0ad8a11              # double 0.62614899999999996
	.quad	0x3fd3532e7b3d8e00              # double 0.301952
	.quad	0x3fe999934efcbd55              # double 0.79999699999999996
	.quad	0x3fa8aa21a719b4dd              # double 0.048173000000000001
	.quad	0x3fefdc69f8c21e1d              # double 0.99565599999999998
	.quad	0x3fe72b5e529bae47              # double 0.72404400000000002
	.quad	0x3fd09641f644955b              # double 0.25917099999999998
	.quad	0x3fd328240b780347              # double 0.29932500000000001
	.quad	0x3fdcd8e432441feb              # double 0.45073800000000003
	.quad	0x3fd61b8ed1bf7ad5              # double 0.34543200000000002
	.quad	0x3fb22ad3e920c06a              # double 0.070966000000000001
	.quad	0x3feafb6dca07f66f              # double 0.84319200000000005
	.quad	0x3fc74fce746cb967              # double 0.18212300000000001
	.quad	0x3fd5056c508b32cf              # double 0.32845600000000003
	.quad	0x3fd56adb402d16b9              # double 0.33464699999999997
	.quad	0x3fd259791819d239              # double 0.28671099999999999
	.quad	0x3fe1ac215b9a5a8a              # double 0.55226200000000003
	.quad	0x3fe15a4052d666aa              # double 0.54226700000000005
	.quad	0x3fe6f2cf95d4e8fb              # double 0.71714
	.quad	0x3fe58b30b5aa7158              # double 0.67324099999999998
	.quad	0x3fe861719f7f8ca8              # double 0.76189499999999999
	.quad	0x3fb723571d1d4739              # double 0.090383000000000005
	.quad	0x3fe928fc0d2c386d              # double 0.78625299999999998
	.quad	0x3fe47c7607c419a0              # double 0.64019300000000001
	.quad	0x3fe73e8576cce5f7              # double 0.72638199999999997
	.quad	0x3fc06c4c5974e65c              # double 0.128305
	.quad	0x3fed74eca686e7e6              # double 0.92052299999999998
	.quad	0x3fef156c0d6f544c              # double 0.97136500000000003
	.quad	0x3fd5c621b7e0ac7e              # double 0.34021800000000002
	.quad	0x3fa36976bc1effa0              # double 0.037914000000000003
	.quad	0x3fd69d5a187a4a49              # double 0.353354
	.quad	0x3fb0f722e1ac57e2              # double 0.066270999999999997
	.quad	0x3fdc1733226c3b92              # double 0.43891599999999997
	.quad	0x3fa596c82e019b0b              # double 0.042166000000000002
	.quad	0x3feef0c34c1a8ac6              # double 0.96689000000000003
	.quad	0x3feccae85b9e8c48              # double 0.89976900000000004
	.quad	0x3fe64091c087442c              # double 0.69538199999999994
	.quad	0x3feeca6ca03c4b0a              # double 0.96221000000000001
	.quad	0x3fa2b3edd8b60f1b              # double 0.036528999999999999
	.quad	0x3fc294ee392e1ef7              # double 0.14516999999999999
	.quad	0x3fdae52deca2552a              # double 0.420238
	.quad	0x3fbeb81f969e3c97              # double 0.11999700000000001
	.quad	0x3fddb8348f53c57a              # double 0.464368
	.quad	0x3fe7ca148ba83f4f              # double 0.74341800000000002
	.quad	0x3fca70a808c8259e              # double 0.206563
	.quad	0x3fe130ea18372e6a              # double 0.53722099999999995
	.quad	0x3fe0d288ce703afb              # double 0.52569999999999995
	.quad	0x3fef1e59f2ba9d1f              # double 0.97245499999999995
	.quad	0x3fd3edd052934acb              # double 0.31139
	.quad	0x3fdd91f70de8f6cf              # double 0.462034
	.quad	0x3fdb363b256ffc11              # double 0.42518499999999998
	.quad	0x3fdf02b841248d7e              # double 0.484541
	.quad	0x3fee5002e2328f9f              # double 0.94726699999999997
	.quad	0x3fea52deca2552a0              # double 0.82261600000000001
	.quad	0x3fea77b9e060fe48              # double 0.82711500000000004
	.quad	0x3fb1d8b60f1b25f6              # double 0.069712999999999997
	.quad	0x3fe39a1554fbdad7              # double 0.61255899999999996
	.quad	0x3fe7d5454152b0a7              # double 0.744784
	.quad	0x3fda4f3343fa2ad4              # double 0.411084
	.quad	0x3fdc88509bf9c62a              # double 0.44581999999999999
	.quad	0x3fe77a072d1aeb3e              # double 0.73364600000000002
	.quad	0x3fe1148ba83f4eca              # double 0.53375799999999995
	.quad	0x3fdd7c5ac471b478              # double 0.46071499999999999
	.quad	0x3feba64c2f837b4a              # double 0.86404999999999998
	.quad	0x3fcd5515054ac29c              # double 0.229159
	.quad	0x3feefad4b2745bf2              # double 0.96811899999999995
	.quad	0x3fe721c8a7a41e58              # double 0.72287400000000002
	.quad	0x3fde6ee73e681a9c              # double 0.47551900000000002
	.quad	0x3f985729b280f12c              # double 0.023769999999999999
	.quad	0x3f77df19d66adb40              # double 0.0058279999999999998
	.quad	0x3fe7cee392e1ef74              # double 0.74400500000000003
	.quad	0x3fe069680e065300              # double 0.51286699999999996
	.quad	0x3fe238433d6c7219              # double 0.56936799999999999
	.quad	0x3fc19f5dfeb8d823              # double 0.13767599999999999
	.quad	0x3fe701d3aa369fcf              # double 0.71897299999999997
	.quad	0x3fef278af3e468cb              # double 0.97357700000000002
	.quad	0x3fe8da48b6523704              # double 0.77664599999999994
	.quad	0x3fe9ff69014b599b              # double 0.81242800000000004
	.quad	0x3fd22f2f9873ffac              # double 0.28412999999999999
	.quad	0x3fe801cf7878b7a2              # double 0.75022100000000003
	.quad	0x3fcd599aa60913a5              # double 0.229297
	.quad	0x3fde8eef1bac2df1              # double 0.47747400000000001
	.quad	0x3fee8df9bdc69f8c              # double 0.95483099999999998
	.quad	0x3fe4671044f1a198              # double 0.63758099999999995
	.quad	0x3fdbf6a0dbad3a60              # double 0.43692799999999998
	.quad	0x3fef246bf01322f2              # double 0.97319599999999995
	.quad	0x3fef9713ad5bee3d              # double 0.98719199999999995
	.quad	0x3fcbae46cfc829d0              # double 0.216256
	.quad	0x3fe35338f7985272              # double 0.60390900000000003
	.quad	0x3fd558ea7ce0fc2f              # double 0.33355200000000002
	.quad	0x3fe9766c6de76428              # double 0.79570600000000002
	.quad	0x3fb102ff8ec0f883              # double 0.066451999999999997
	.quad	0x3fefedd8b60f1b26              # double 0.997784
	.quad	0x3fcd015c209246bf              # double 0.226604
	.quad	0x3fe6ebf01322f273              # double 0.71630099999999997
	.quad	0x3fddc94b380cb6c8              # double 0.46541100000000002
	.quad	0x3fe227264a16a487              # double 0.56727899999999998
	.quad	0x3fb3c2a8869c66d3              # double 0.077188999999999994
	.quad	0x3feb388ca3e7d135              # double 0.85065299999999999
	.quad	0x3fd1e529bae46cfd              # double 0.27961200000000003
	.quad	0x3fd15432873bc904              # double 0.270764
	.quad	0x3fefe25a682b6284              # double 0.99638099999999996
	.quad	0x3fe41bbf0dc768e0              # double 0.62838700000000003
	.quad	0x3fdefe3b03e20cd0              # double 0.484267
	.quad	0x3fe91650a45d41fa              # double 0.78397399999999995
	.quad	0x3fe29591cd1c7de5              # double 0.580758
	.quad	0x3fcf83ad9f0a1be3              # double 0.24620600000000001
	.quad	0x3fe3116a8b8f14db              # double 0.59587599999999996
	.quad	0x3fb327fe4bcad9ae              # double 0.074829000000000007
	.quad	0x3fd06aa4b9884c6a              # double 0.25650899999999999
	.quad	0x3fcafb762d83c6c9              # double 0.21079899999999999
	.quad	0x3fe1f0d62bf11f92              # double 0.56064899999999995
	.quad	0x3fe58409e55c0fcb              # double 0.67236799999999997
	.quad	0x3fe7a57a786c2268              # double 0.73895
	.quad	0x3fe09d6f112fd32c              # double 0.51921799999999996
	.quad	0x3fd574256bca5376              # double 0.33521400000000001
	.quad	0x3f8df7e80389f83c              # double 0.014633
	.quad	0x3fc082491afc04c9              # double 0.12897600000000001
	.quad	0x3fc3d2d01c0ca601              # double 0.15487100000000001
	.quad	0x3fe5d002e2328f9f              # double 0.68164199999999997
	.quad	0x3fa787ad080b673c              # double 0.045956999999999998
	.quad	0x3fdc46b26bf8769f              # double 0.44181500000000001
	.quad	0x3fe82f7d30ad46f6              # double 0.75579700000000005
	.quad	0x3fc74b599aa60914              # double 0.18198700000000001
	.quad	0x3fe3d783dff3f0fe              # double 0.620058
	.quad	0x3fd3f355cd91eeaa              # double 0.31172699999999998
	.quad	0x3fa1c886162f166e              # double 0.034733
	.quad	0x3fe09103c8e25c81              # double 0.517702
	.quad	0x3fe1cd9c6b053198              # double 0.55634899999999998
	.quad	0x3fd344241c3efae8              # double 0.30103400000000002
	.quad	0x3fc241248d7e0264              # double 0.14261299999999999
	.quad	0x3feff09b738e6d16              # double 0.99812100000000004
	.quad	0x3fdd4b945308bb90              # double 0.45773799999999998
	.quad	0x3fa38da3c21187e8              # double 0.038190000000000002
	.quad	0x3fa06db50f40e5a3              # double 0.032086999999999997
	.quad	0x3fea7fef39085f4a              # double 0.82811699999999999
	.quad	0x3fe4c77bbf93ff26              # double 0.64935100000000001
	.quad	0x3fd537d63022dd7b              # double 0.33153300000000002
	.quad	0x3fe4bf3e0370cdc8              # double 0.64834499999999995
	.quad	0x3fe15ad106ee30cb              # double 0.54233600000000004
	.quad	0x3fe35332acfb762e              # double 0.60390600000000005
	.quad	0x3fe17dbd2fa0d77b              # double 0.54659899999999995
	.quad	0x3fe3ecd8dbcec850              # double 0.62266200000000005
	.quad	0x3febcbfb15b573eb              # double 0.86865000000000003
	.quad	0x3fd5a4d2b2bfdb4d              # double 0.33818500000000001
	.quad	0x3fe4e7210be9424e              # double 0.65321399999999996
	.quad	0x3fd21f3a57eaa2a1              # double 0.28315600000000002
	.quad	0x3fc8e297396d0918              # double 0.194415
	.quad	0x3fd203686a4ca4f4              # double 0.28145799999999999
	.quad	0x3fe7f9f01b866e44              # double 0.74926000000000003
	.quad	0x3fe079f44d445671              # double 0.51488699999999998
	.quad	0x3fe79b10fd7e4580              # double 0.73767899999999997
	.quad	0x3fe458622c450269              # double 0.63578900000000005
	.quad	0x3fe276fb09203a32              # double 0.57702399999999998
	.quad	0x3fee3fbdf090f734              # double 0.94528100000000003
	.quad	0x3fef8b9baa1511e0              # double 0.985792
	.quad	0x3fbe42bf9830e3ce              # double 0.11820600000000001
	.quad	0x3fc925aab4741073              # double 0.196462
	.quad	0x3fe2cf7caa7589f0              # double 0.58782800000000002
	.quad	0x3fe217d06bbdbe3c              # double 0.56540699999999999
	.quad	0x3fed51c7de5082cf              # double 0.91623299999999996
	.quad	0x3fe4214f0520d131              # double 0.62906600000000001
	.quad	0x3fdba1b1960fa15e              # double 0.43174400000000002
	.quad	0x3fc584ba0e842742              # double 0.16811300000000001
	.quad	0x3feb852f7f498c3b              # double 0.86000799999999999
	.quad	0x3fd96102795703f3              # double 0.39654600000000001
	.quad	0x3fd95faa8a82a561              # double 0.39646399999999998
	.quad	0x3fe0607e5a78f25a              # double 0.51177899999999998
	.quad	0x3fbcd4024b33daf9              # double 0.11261
	.quad	0x3fe0a502eec7c958              # double 0.52014300000000002
	.quad	0x3fb79463cfb3311a              # double 0.092107999999999995
	.quad	0x3fdb5a3e39f77293              # double 0.42738300000000001
	.quad	0x3fe0dc1615ebfa8f              # double 0.52686599999999995
	.quad	0x3feefaaef2c73259              # double 0.96810099999999998
	.quad	0x3fed6dd69d30270f              # double 0.91965799999999998
	.quad	0x3fbaaa19439de482              # double 0.104158
	.quad	0x3fda24dd2f1a9fbe              # double 0.40849999999999997
	.quad	0x3fe850e991ff7165              # double 0.75987700000000002
	.quad	0x3fca1f31f46ed246              # double 0.20407700000000001
	.quad	0x3fb5130df9bdc6a0              # double 0.082322000000000006
	.quad	0x3fcf854046412cf1              # double 0.246254
	.quad	0x3fee67dbb16c1e36              # double 0.95017799999999997
	.quad	0x3feb0ef566490a35              # double 0.84557599999999999
	.quad	0x3fe73af533f42353              # double 0.72594700000000001
	.quad	0x3fde3efae7924af1              # double 0.47259400000000001
	.quad	0x3fce4dec1c1d6cf8              # double 0.23675299999999999
	.quad	0x3feceec5b078d930              # double 0.90414700000000003
	.quad	0x3fd8610f0e90bc7b              # double 0.38092399999999998
	.quad	0x3fd95a8deb0fadf3              # double 0.396152
	.quad	0x3fbf7be121ee6751              # double 0.122984
	.quad	0x3fd385be1a826245              # double 0.30503799999999998
	.quad	0x3feff963992c8c50              # double 0.999193
	.quad	0x3fe88d759ee88df3              # double 0.76726799999999995
	.quad	0x3fd0c664d3bf2f55              # double 0.26210899999999998
	.quad	0x3fe03dcad14a0a0f              # double 0.50754299999999997
	.quad	0x3fdbf6ba0620ab71              # double 0.43693399999999999
	.quad	0x3fdecd2d44dca8e3              # double 0.48127300000000001
	.quad	0x3fe6fd3d4280ae10              # double 0.71841299999999997
	.quad	0x3fe90bda9435ac8a              # double 0.78269699999999998
	.quad	0x3fafebd09e12a51e              # double 0.062345999999999999
	.quad	0x3fd9bd5dc4007571              # double 0.40218300000000001
	.quad	0x3fa052934acaff6d              # double 0.031879999999999999
	.quad	0x3fcc40b780346dc6              # double 0.220725
	.quad	0x3fef59ea57214f05              # double 0.97972599999999998
	.quad	0x3fefe7ddca4b124d              # double 0.99705399999999999
	.quad	0x3fee16dd26b723ee              # double 0.94029099999999999
	.quad	0x3feef4c2b51bd61f              # double 0.96737799999999996
	.quad	0x3fee13d74d594f27              # double 0.93992200000000004
	.quad	0x3fce2480e8c8abd6              # double 0.235489
	.quad	0x3feb13660e51d25b              # double 0.84611800000000004
	.quad	0x3fb3ed527e521577              # double 0.077840000000000006
	.quad	0x3feffadafd113837              # double 0.99937200000000003
	.quad	0x3feace789e774eec              # double 0.837704
	.quad	0x3fd9a8d64d7f0ed4              # double 0.40093000000000001
	.quad	0x3fe39f90539fba45              # double 0.613228
	.quad	0x3feb55842b734b51              # double 0.85418899999999998
	.quad	0x3fd062aa19439de5              # double 0.25602200000000003
	.quad	0x3fe3de95b78cc9a7              # double 0.62092099999999995
	.quad	0x3fee2b3cc4ac6cdb              # double 0.942778
	.quad	0x3fe6fcc7d1bb4917              # double 0.71835700000000002
	.quad	0x3fb0f56eac860568              # double 0.066244999999999998
	.quad	0x3fe27fc9795b35b1              # double 0.57809900000000003
	.quad	0x3fa8893b7d84901d              # double 0.047921999999999999
	.quad	0x3fb1f505d0fa58f7              # double 0.070144999999999999
	.quad	0x3fe91096bb98c7e3              # double 0.78327500000000005
	.quad	0x3fe856cf850df15a              # double 0.76059699999999997
	.quad	0x3fdee8d10f51ac9b              # double 0.48296
	.quad	0x3fce148ba83f4eca              # double 0.23500199999999999
	.quad	0x3fe1816aceaaf35e              # double 0.54704799999999998
	.quad	0x3fe1f865d7cb2d90              # double 0.56157199999999996
	.quad	0x3fe568d5410f94c8              # double 0.66904699999999995
	.quad	0x3fd122962cfd8f0c              # double 0.26773599999999997
	.quad	0x3fd5b6805a2d7300              # double 0.33926400000000001
	.quad	0x3fe1f3e89a88ace2              # double 0.56102399999999997
	.quad	0x3febff822bbecaac              # double 0.87494000000000005
	.quad	0x3fddb5a20ddc6195              # double 0.46421099999999998
	.quad	0x3fc1caea747d805e              # double 0.13900499999999999
	.quad	0x3fbab7564302b40f              # double 0.10435999999999999
	.quad	0x3fef0f68be2f7b18              # double 0.97063100000000002
	.quad	0x3fe1f644955b4678              # double 0.56131200000000003
	.quad	0x3fcc27e9531550ca              # double 0.219968
	.quad	0x3fd315c63ae2541e              # double 0.29820400000000002
	.quad	0x3fef7a6defc7a398              # double 0.98369499999999998
	.quad	0x3fe61cc319c5a3e4              # double 0.69101100000000004
	.quad	0x3fe9c0ad03d9a954              # double 0.80476999999999998
	.quad	0x3fd342d490e66cb1              # double 0.300954
	.quad	0x3fcb7635e74299d9              # double 0.21454500000000001
	.quad	0x3fe80e991ff7164c              # double 0.75178199999999995
	.quad	0x3fe3bea4ebdd334c              # double 0.61702199999999996
	.quad	0x3feb0364388ebcc7              # double 0.84416400000000003
	.quad	0x3f9dc26dce39b457              # double 0.029062000000000001
	.quad	0x3fd1367a0f9096bc              # double 0.26895000000000002
	.quad	0x3fd10d0678c0053e              # double 0.26641999999999999
	.quad	0x3fba8e4fb97bb731              # double 0.10373400000000001
	.quad	0x3feb18cc144028e5              # double 0.846777
	.quad	0x3fe9e9ccb7d41744              # double 0.80979
	.quad	0x3fd228d434a01abd              # double 0.28374199999999999
	.quad	0x3fd11f8e3ac0c62e              # double 0.26755099999999998
	.quad	0x3fe68f6f08cc575c              # double 0.705009
	.quad	0x3fd2582dbe7f2c30              # double 0.286632
	.quad	0x3fc3d5347a5b0ff1              # double 0.154944
	.quad	0x3fe2b4fa48301a7a              # double 0.584592
	.quad	0x3fd7f41f212d7732              # double 0.37427500000000002
	.quad	0x3fcbd701d9f4d37c              # double 0.217499
	.quad	0x3fe3a4484944ed70              # double 0.61380400000000002
	.quad	0x3fd2fef39085f4a1              # double 0.29681099999999999
	.quad	0x3fefb854046412cf              # double 0.99125099999999999
	.quad	0x3feef9420b3d4ae4              # double 0.96792699999999998
	.quad	0x3fc467e846a5d6bf              # double 0.15942100000000001
	.quad	0x3fd3411c2a023209              # double 0.30084899999999998
	.quad	0x3fdac4b4d056c509              # double 0.41825600000000002
	.quad	0x3fe2f6f08cc575c0              # double 0.59264399999999995
	.quad	0x3feb23d2d87f8876              # double 0.84812299999999996
	.quad	0x3fdf814940bbb1f2              # double 0.49226599999999998
	.quad	0x3feca2ec28b2a6b1              # double 0.89488800000000002
	.quad	0x3fd4a3c21187e7c0              # double 0.32249499999999998
	.quad	0x3fc8d7060bb2bbaa              # double 0.19406200000000001
	.quad	0x3fc82d5171e29b6b              # double 0.188883
	.quad	0x3fe6ac4f7ec3547e              # double 0.708534
	.quad	0x3fef650c5eb313be              # double 0.98108499999999998
	.quad	0x3fed5a8155d5f56a              # double 0.91729799999999995
	.quad	0x3febf29f59ccfaf0              # double 0.873367
	.quad	0x3fdd771001d5c316              # double 0.46039200000000002
	.quad	0x3fef0090b417ca21              # double 0.96881899999999998
	.quad	0x3fe3a9802c0a4a06              # double 0.61444100000000001
	.quad	0x3fda0c49ba5e353f              # double 0.40699999999999997
	.quad	0x3fe517396d0917d7              # double 0.65908500000000003
	.quad	0x3fe7c069e7fb267c              # double 0.74223799999999995
	.quad	0x3fa6075f6fd21ff3              # double 0.043025000000000001
	.quad	0x3fdf7a919695d91b              # double 0.49185600000000002
	.quad	0x3fea7314ca925fe9              # double 0.82654799999999995
	.quad	0x3fd37e23f24d8fd6              # double 0.30457400000000001
	.quad	0x3fc04fa8b4bf8fcd              # double 0.12743099999999999
	.quad	0x3fe4b73083558a76              # double 0.64736199999999999
	.quad	0x3fdac01a36e2eb1c              # double 0.41797499999999999
	.quad	0x3fe2c39ffd60e94f              # double 0.58638000000000001
	.quad	0x3fce9dd7ecbb7f9d              # double 0.23919199999999999
	.quad	0x3feb4f11b60ae968              # double 0.85340199999999999
	.quad	0x3feeced4e4c942d5              # double 0.96274800000000004
	.quad	0x3fc928522ea0fd3b              # double 0.196543
	.quad	0x3fe58e736049ecb3              # double 0.67363899999999999
	.quad	0x3fd87789a459103d              # double 0.38229600000000002
	.quad	0x3fea996d8f4f93bc              # double 0.83122899999999999
	.quad	0x3fee73519bd4067d              # double 0.95157700000000001
	.quad	0x3fe0df56a7ac81d4              # double 0.52726300000000004
	.quad	0x3fd8a60913a4f872              # double 0.38513399999999998
	.quad	0x3fe5898b2e9ccb7d              # double 0.67303999999999997
	.quad	0x3feb6177ea1c68ec              # double 0.85564799999999996
	.quad	0x3fe7b845564b6630              # double 0.74124400000000001
	.quad	0x3fe05eb95e5aff2a              # double 0.51156299999999999
	.quad	0x3fe02dc0980b2420              # double 0.50558499999999995
	.quad	0x3fdc900c521dda06              # double 0.44629200000000002
	.quad	0x3fc7b98c7e28240b              # double 0.18534999999999999
	.quad	0x3fdd8522ea0fd3b3              # double 0.46125100000000002
	.quad	0x3fe1247021d10b20              # double 0.53569800000000001
	.quad	0x3fbcf61672324c83              # double 0.11312999999999999
	.quad	0x3fe0d19157abb880              # double 0.52558199999999999
	.quad	0x3fd174a771c970f8              # double 0.27274500000000002
	.quad	0x3fc2a550870110a1              # double 0.14566999999999999
	.quad	0x3fe0a428d434a01b              # double 0.52003900000000003
	.quad	0x3fed9bd4067cf1c3              # double 0.92527199999999998
	.quad	0x3fe74a70d1fa3337              # double 0.72783699999999996
	.quad	0x3fd8bad7d7c2ca15              # double 0.38640400000000003
	.quad	0x3fd352b0a6fc58ac              # double 0.30192200000000002
	.quad	0x3fd9fc9363f572de              # double 0.40604099999999999
	.quad	0x3fe82305532617c2              # double 0.75427500000000003
	.quad	0x3fd22c2374794ea0              # double 0.28394399999999997
	.quad	0x3fd97353b4b2fa94              # double 0.39766400000000002
	.quad	0x3fdcdf090f733a8a              # double 0.45111299999999999
	.quad	0x3fe88d801b435265              # double 0.76727299999999998
	.quad	0x3fdba7ac81d3aa37              # double 0.43210900000000002
	.quad	0x3feb426138fffbce              # double 0.85185299999999997
	.quad	0x3fd7b6177ea1c68f              # double 0.37048900000000001
	.quad	0x3fe0d1611ba3ca75              # double 0.525559
	.quad	0x3feafd06bbdbe3c1              # double 0.843387
	.quad	0x3fd6e0f3cb3e5754              # double 0.35748000000000002
	.quad	0x3feb577318fc5048              # double 0.85442499999999999
	.quad	0x3fe9cb3c3e74afd5              # double 0.80605899999999997
	.quad	0x3fb69eb2074ea8da              # double 0.088358999999999993
	.quad	0x3fb997c3d68405b4              # double 0.099972000000000005
	.quad	0x3fd0442c7fbacb43              # double 0.25416100000000003
	.quad	0x3fe0fd2630ec3116              # double 0.53090199999999999
	.quad	0x3fda76c8b4395810              # double 0.41349999999999998
	.quad	0x3fec1ceaf251c194              # double 0.87853000000000003
	.quad	0x3fe92b8a5ce5b424              # double 0.78656499999999995
	.quad	0x3feb40f66a550870              # double 0.85167999999999999
	.quad	0x3fe71691a75cd0bb              # double 0.72150499999999995
	.quad	0x3fdeb53d640e9d52              # double 0.47981200000000002
	.quad	0x3fcd5b4edb2f661f              # double 0.229349
	.quad	0x3fe927d24180d3d0              # double 0.786111
	.quad	0x3fe793bc0a06e9ff              # double 0.73678399999999999
	.quad	0x3fc1227d028a1dfc              # double 0.13386500000000001
	.quad	0x3fee666ec9e236c1              # double 0.95000399999999996
	.quad	0x3fe3eeb2d0a24463              # double 0.622888
	.quad	0x3fe59693c03bc4d2              # double 0.67463099999999998
	.quad	0x3fc18b71b8aa0019              # double 0.137068
	.quad	0x3fc5e3f359ff4fd7              # double 0.171019
	.quad	0x3fa0e7ff583a53b9              # double 0.033020000000000001
	.quad	0x3fef512018a43bb4              # double 0.97865299999999999
	.quad	0x3fea91b60ae9680e              # double 0.830287
	.quad	0x3fe2169a0ad8a116              # double 0.56525899999999996
	.quad	0x3f88fabda0dfdef8              # double 0.012197
	.quad	0x3fe11131ec0b5675              # double 0.53334899999999996
	.quad	0x3feecf67b1c0010c              # double 0.96281799999999995
	.quad	0x3fd2ae6c8f755369              # double 0.29189599999999999
	.quad	0x3fe69142b302f72b              # double 0.70523199999999997
	.quad	0x3febfa46173b85e8              # double 0.87430099999999999
	.quad	0x3fe328b8f14db595              # double 0.59872099999999995
	.quad	0x3fead885d31337eb              # double 0.83893099999999998
	.quad	0x3fd38dbcec84f8f9              # double 0.30552600000000002
	.quad	0x3fea2ecaeea63b69              # double 0.81821200000000005
	.quad	0x3feba6d04e618ce3              # double 0.86411300000000002
	.quad	0x3fb8ea18372e6a77              # double 0.097322000000000006
	.quad	0x3fe6e9f6a93f290b              # double 0.71606000000000003
	.quad	0x3fd47faa044ae85c              # double 0.32029200000000002
	.quad	0x3fe1d9f4d37c1377              # double 0.55785600000000002
	.quad	0x3fdd82a12f901084              # double 0.46109800000000001
	.quad	0x3fe0ad46f587d6f9              # double 0.52115199999999995
	.quad	0x3fe705d744f5d356              # double 0.71946299999999996
	.quad	0x3fea468661ae70c1              # double 0.82110899999999998
	.quad	0x3fe7562e09fe8683              # double 0.72926999999999997
	.quad	0x3fecc7fdc5931ca8              # double 0.89941300000000002
	.quad	0x3fdf6cc5fbf83383              # double 0.49101400000000001
	.quad	0x3fe5bc297bfa4c62              # double 0.67921900000000002
	.quad	0x3fd7d1a21ea35936              # double 0.37217
	.quad	0x3f76a37ac3eb7cbb              # double 0.0055269999999999998
	.quad	0x3fcd75c0767d34df              # double 0.230156
	.quad	0x3fe2bee3d5fdcdf7              # double 0.58580200000000004
	.quad	0x3fab59578a2a90cd              # double 0.053415999999999998
	.quad	0x3fe47b3b7521144d              # double 0.64004300000000003
	.quad	0x3fe5c50acc0bdcad              # double 0.68030299999999999
	.quad	0x3fc58ce2d1f1cfbc              # double 0.16836200000000001
	.quad	0x3feb4d78c436fc16              # double 0.85320700000000005
	.quad	0x3fe1792f2b66b617              # double 0.54604299999999995
	.quad	0x3fe467ddca4b124d              # double 0.637679
	.quad	0x3fe8507e9d94d0dd              # double 0.759826
	.quad	0x3fc1fd694ccab3ee              # double 0.140546
	.quad	0x3fe534dad31fcd25              # double 0.66270200000000001
	.quad	0x3fec69d51b4fe79f              # double 0.88791900000000001
	.quad	0x3fd6bdd334c5da6a              # double 0.35533599999999999
	.quad	0x3fbabf9830e3cd9a              # double 0.104486
	.quad	0x3fef9070fbeb9e49              # double 0.98638199999999998
	.quad	0x3fb767d34df04ddb              # double 0.091427999999999995
	.quad	0x3fb39bcba3012168              # double 0.076595999999999997
	.quad	0x3fe0ca6223e18698              # double 0.52470499999999998
	.quad	0x3fd48b26394face6              # double 0.32099299999999997
	.quad	0x3fd7df0d413122b8              # double 0.37298900000000001
	.quad	0x3fdc6e978d4fdf3b              # double 0.44424999999999998
	.quad	0x3fe45b8dc55000c9              # double 0.63617599999999996
	.quad	0x3fe6d87724fa8b4c              # double 0.713924
	.quad	0x3fdebc33f85510d4              # double 0.48023700000000002
	.quad	0x3fd490b84988094e              # double 0.32133299999999998
	.quad	0x3fd63f316e371540              # double 0.347607
	.quad	0x3feaa07b352a8438              # double 0.83209
	.quad	0x3fec66fb4c3c18b5              # double 0.887571
	.quad	0x3fe62aa7ded6ba8c              # double 0.69270699999999996
	.quad	0x3fe3ff51efb6dca0              # double 0.62491699999999994
	.quad	0x3fcf91ff7164c72a              # double 0.246643
	.quad	0x3fd51ede1198aeb8              # double 0.330009
	.quad	0x3f99ee88df37329c              # double 0.025323999999999999
	.quad	0x3fd837b07075b3e1              # double 0.37839899999999999
	.quad	0x3fc2909289dadfb5              # double 0.145037
	.quad	0x3fc01d53cddd6e05              # double 0.12589500000000001
	.quad	0x3fee1e75360d0247              # double 0.941218
	.quad	0x3fca3eb7cbb3c819              # double 0.205039
	.quad	0x3fea25742dcf4624              # double 0.81707200000000002
	.quad	0x3f8d4f15e7c8d196              # double 0.014311000000000001
	.quad	0x3fd15c2d2780778a              # double 0.27125100000000002
	.quad	0x3fbe7807789a4591              # double 0.119019
	.quad	0x3fdf10cf5b1c8649              # double 0.48540100000000003
	.quad	0x3fe5e3cb81733227              # double 0.68405700000000003
	.quad	0x3fe0b6a832b990b0              # double 0.52229700000000001
	.quad	0x3fa142b302f72b45              # double 0.033711999999999999
	.quad	0x3fe05e95b78cc9a7              # double 0.51154599999999995
	.quad	0x3fe8f48e4755ffe7              # double 0.77985300000000002
	.quad	0x3fb91ff7164c729f              # double 0.098143999999999995
	.quad	0x3fefd6c0d6f544bb              # double 0.99496499999999998
	.quad	0x3fb470eb24a6a876              # double 0.079848000000000002
	.quad	0x3fb886df82b1f688              # double 0.095808000000000004
	.quad	0x3fed2b990afe60c4              # double 0.91157200000000004
	.quad	0x3fafce746cb966be              # double 0.062121999999999997
	.quad	0x3fe7b886594af4f1              # double 0.74127500000000002
	.quad	0x3fe42497fa5d28d0              # double 0.629467
	.quad	0x3fe0c44e0daa0cae              # double 0.52396299999999996
	.quad	0x3f914e3bcd35a858              # double 0.016899999999999998
	.quad	0x3fe8d332acfb762e              # double 0.77578100000000005
	.quad	0x3fb05d95dd4c76d1              # double 0.063927999999999999
	.quad	0x3fec4f7a919695d9              # double 0.88470199999999999
	.quad	0x3f6a08bfc2224edf              # double 0.0031779999999999998
	.quad	0x3feb1f4906034f40              # double 0.84756900000000002
	.quad	0x3fd855757d5a9eb2              # double 0.380216
	.quad	0x3fa4e358298cc144              # double 0.040797
	.quad	0x3fea7570c564f97f              # double 0.82683600000000002
	.quad	0x3fe8d9a95421c044              # double 0.77656999999999998
	.quad	0x3fe42b191dde3758              # double 0.63026099999999996
	.quad	0x3fd776102795703f              # double 0.36658099999999999
	.quad	0x3fde33fc86cebbba              # double 0.47192299999999998
	.quad	0x3fcc6defc7a39820              # double 0.222105
	.quad	0x3fea055da272862f              # double 0.81315499999999996
	.quad	0x3fd993c89f40a287              # double 0.39964499999999997
	.quad	0x3fdb2d5171e29b6b              # double 0.42464099999999999
	.quad	0x3fdc8e9f6a93f291              # double 0.44620500000000002
	.quad	0x3fc87b1c0010c6f8              # double 0.19125700000000001
	.quad	0x3fcfb4cc25072086              # double 0.24770500000000001
	.quad	0x3fdc09fa54c55433              # double 0.43810900000000003
	.quad	0x3fcd7342edbb59de              # double 0.23008000000000001
	.quad	0x3fdb36c15d2d01c1              # double 0.42521700000000001
	.quad	0x3fe2ca72ead9274e              # double 0.58721299999999998
	.quad	0x3fec19f3c70c996b              # double 0.87816799999999995
	.quad	0x3fd59f2fdb8fde2f              # double 0.337841
	.quad	0x3fd6b11409a24031              # double 0.35455799999999998
	.quad	0x3fb9ca18bd66277c              # double 0.10074
	.quad	0x3fd65a858793dd98              # double 0.349275
	.quad	0x3feb8a58b3f63c32              # double 0.86063800000000001
	.quad	0x3fec87b784662bae              # double 0.891567
	.quad	0x3fe10abd5dc40075              # double 0.53256099999999995
	.quad	0x3faf32bdc26dce3a              # double 0.060934000000000002
	.quad	0x3fcd970b49e01de2              # double 0.23117199999999999
	.quad	0x3fcc7ee9142b302f              # double 0.22262299999999999
	.quad	0x3fe87bacb4289119              # double 0.76509700000000003
	.quad	0x3fe97c200c0f01fc              # double 0.79640200000000005
	.quad	0x3fe54e160d887ebf              # double 0.66578199999999998
	.quad	0x3fdb181e03f70585              # double 0.42334699999999997
	.quad	0x3feb9ac57e23f24e              # double 0.86264300000000005
	.quad	0x3fedb74ff865d7cb              # double 0.92862699999999998
	.quad	0x3fd39b0ee49f5169              # double 0.30633899999999997
	.quad	0x3fe2f2dc2b0ea183              # double 0.59214599999999995
	.quad	0x3fd430b9dc2f405f              # double 0.31547399999999998
	.quad	0x3fe98ecb74ddf86e              # double 0.79868099999999997
	.quad	0x3fc5e7d9988d2a20              # double 0.17113800000000001
	.quad	0x3fe7976ff3ade226              # double 0.737236
	.quad	0x3fe97b82c2bd7f52              # double 0.79632700000000001
	.quad	0x3fdc2be0589acbc9              # double 0.44017800000000001
	.quad	0x3feb2f61ed5ae1ce              # double 0.84953400000000001
	.quad	0x3fc6a82a5614df8b              # double 0.177007
	.quad	0x3fc82e2328f9f44d              # double 0.18890799999999999
	.quad	0x3febd8adab9f559b              # double 0.87019999999999997
	.quad	0x3fc7c49774256bca              # double 0.18568699999999999
	.quad	0x3f86494d50ebaade              # double 0.010881999999999999
	.quad	0x3fe0245d41fa7653              # double 0.50443899999999997
	.quad	0x3fb6832b990afe61              # double 0.087939000000000003
	.quad	0x3fe0640e9d51b4fe              # double 0.51221399999999995
	.quad	0x3fef4449dbec2481              # double 0.97708600000000001
	.quad	0x3fea5aff2a172abf              # double 0.82360800000000001
	.quad	0x3fe698fe69270b07              # double 0.70617600000000003
	.quad	0x3fe5048beb5b2d4d              # double 0.65680499999999997
	.quad	0x3fe918d477bbf940              # double 0.78428100000000001
	.quad	0x3fed96f86a098916              # double 0.92467900000000003
	.quad	0x3fe1ae297396d091              # double 0.55250999999999995
	.quad	0x3fe4d4aa10e02214              # double 0.65095999999999998
	.quad	0x3fe3aaa9f7b5aea3              # double 0.61458299999999999
	.quad	0x3fdff9591cd1c7de              # double 0.49959399999999998
	.quad	0x3fdd60a63305100a              # double 0.45902399999999999
	.quad	0x3fe42b7fe08aefb3              # double 0.63031000000000004
	.quad	0x3fc6f0a5efe93187              # double 0.17921899999999999
	.quad	0x3feb6cbb7f9d6f11              # double 0.85702299999999998
	.quad	0x3fa98090b417ca21              # double 0.049808999999999999
	.quad	0x3fd8b380cb6c7a7d              # double 0.38595600000000002
	.quad	0x3fe78ee06d938152              # double 0.73619100000000004
	.quad	0x3fe97607c4199fe4              # double 0.79565799999999997
	.quad	0x3feca517e77d523b              # double 0.89515299999999998
	.quad	0x3fd5ecc814d7279a              # double 0.34257700000000002
	.quad	0x3fdc375c8d9f9054              # double 0.44087900000000002
	.quad	0x3fcd36f7e3d1cc10              # double 0.22824
	.quad	0x3fd79899bf5946c3              # double 0.36868899999999999
	.quad	0x3fe8f2becedd4845              # double 0.77963199999999999
	.quad	0x3fdff01754b05b7d              # double 0.499029
	.quad	0x3fee4dcca70d1fa3              # double 0.94699699999999998
	.quad	0x3fe4a2e3c536d656              # double 0.64488400000000001
	.quad	0x3fc6ac322291fb40              # double 0.17713000000000001
	.quad	0x3fd771ac14c660a2              # double 0.366313
	.quad	0x3fedafcce1c58256              # double 0.92771000000000003
	.quad	0x3fd8947cfa26a22b              # double 0.38406299999999999
	.quad	0x3fee7cefaa4766c7              # double 0.95275100000000001
	.quad	0x3fe6679ee02a77a3              # double 0.70014900000000002
	.quad	0x3fe99613d31b9b67              # double 0.79957
	.quad	0x3fe4d74d594f26af              # double 0.65128200000000003
	.quad	0x3fed76d330941c82              # double 0.92075499999999999
	.quad	0x3fea1e8c47a17f41              # double 0.81622899999999998
	.quad	0x3fe22161e4f765fe              # double 0.56657500000000005
	.quad	0x3fe80ea5b530ced5              # double 0.75178800000000001
	.quad	0x3fae3608d08919f0              # double 0.059006000000000003
	.quad	0x3fa22b7baecd0785              # double 0.035487999999999999
	.quad	0x3fd6fa8b4bf8fcd6              # double 0.35904199999999997
	.quad	0x3fec610adcd2d44e              # double 0.88684600000000002
	.quad	0x3fd0451fc4c16590              # double 0.25421899999999997
	.quad	0x3fe2e19b90ea9e6f              # double 0.59004000000000001
	.quad	0x3fed6a747d805e5f              # double 0.91924499999999998
	.quad	0x3fc721bc126a65cf              # double 0.18071699999999999
	.quad	0x3fd8bc1eff9f87f0              # double 0.38648199999999999
	.quad	0x3fdefac1d29dc726              # double 0.48405500000000001
	.quad	0x3fc377e1b8ed1bf8              # double 0.15209600000000001
	.quad	0x3fea8221426fe719              # double 0.82838500000000004
	.quad	0x3feed6fb8f57f738              # double 0.96374300000000001
	.quad	0x3fcaa5a469d7342f              # double 0.20818
	.quad	0x3fe6323358f2e05d              # double 0.69362800000000002
	.quad	0x3fe2304039abf338              # double 0.56838999999999995
	.quad	0x3fd62e59af9ebe9d              # double 0.34657900000000003
	.quad	0x3fd1e4430b178b37              # double 0.279557
	.quad	0x3fbdd76683c297c0              # double 0.116568
	.quad	0x3feb0e8858ff7597              # double 0.84552400000000005
	.quad	0x3fcb53cddd6e04c0              # double 0.21349499999999999
	.quad	0x3fe577f27fe4bcae              # double 0.67089200000000004
	.quad	0x3fd9e6299524bfd3              # double 0.404673
	.quad	0x3fd9aa64c2f837b5              # double 0.40102500000000002
	.quad	0x3fd9a92e62131a8f              # double 0.400951
	.quad	0x3fcaa5df2239e6ac              # double 0.20818700000000001
	.quad	0x3fe46c5f394b7b29              # double 0.63822900000000005
	.quad	0x3fd8c892ab68cef6              # double 0.38724199999999998
	.quad	0x3fec7cbf6e3f78bc              # double 0.89022800000000001
	.quad	0x3fe4497d8cf398e9              # double 0.63397099999999995
	.quad	0x3fea93c89f40a287              # double 0.83053999999999994
	.quad	0x3fdaa10e02214270              # double 0.41608000000000001
	.quad	0x3fe1f79e9d0e9920              # double 0.561477
	.quad	0x3fe3b61565c2d278              # double 0.615977
	.quad	0x3fbecd4aa10e0221              # double 0.12032
	.quad	0x3fe3122b7baecd08              # double 0.59596800000000005
	.quad	0x3f838ef34d6a161e              # double 0.0095499999999999995
	.quad	0x3fe6ef19934efcbd              # double 0.71668699999999996
	.quad	0x3fe2c5d206c8711d              # double 0.58664799999999995
	.quad	0x3fd5e19fc2a8869c              # double 0.34189599999999998
	.quad	0x3fd421af7d30ad47              # double 0.314556
	.quad	0x3fcc7b784662bae0              # double 0.22251799999999999
	.quad	0x3fe099806f262889              # double 0.51873800000000003
	.quad	0x3fe900d1b71758e2              # double 0.78134999999999999
	.quad	0x3fd0f63800218def              # double 0.26502799999999999
	.quad	0x3fdd51dabe27179c              # double 0.458121
	.quad	0x3fe965082cf52b91              # double 0.79358300000000004
	.quad	0x3fd082fd75e2046c              # double 0.25799499999999997
	.quad	0x3fe659b8023a6ce3              # double 0.69845199999999996
	.quad	0x3fd9e6b8305d95dd              # double 0.40470699999999998
	.quad	0x3fecededaec4a409              # double 0.90404399999999996
	.quad	0x3fb50225742dcf46              # double 0.082063999999999998
	.quad	0x3fddc80841ede11a              # double 0.46533400000000003
	.quad	0x3fe9ac386d2ed784              # double 0.80227300000000001
	.quad	0x3fe5ab4959e62563              # double 0.67715899999999996
	.quad	0x3fe848e68e3ef284              # double 0.75889899999999999
	.quad	0x3fe2ae9899bf5947              # double 0.58381300000000003
	.quad	0x3fc06f9b994e1a3f              # double 0.12840599999999999
	.quad	0x3fe671737542a23c              # double 0.701349
	.quad	0x3fcfafb7e90ff972              # double 0.24754999999999999
	.quad	0x3fb67fe4bcad9ad8              # double 0.087888999999999995
	.quad	0x3fd079e9d0e991ff              # double 0.25744099999999998
	.quad	0x3fe5f5946c332f01              # double 0.68622799999999995
	.quad	0x3fe234267839cd81              # double 0.56886599999999998
	.quad	0x3feec215b9a5a89c              # double 0.96119200000000004
	.quad	0x3fee76ad70e6f2e9              # double 0.95198700000000003
	.quad	0x3fd7bc33f85510d4              # double 0.37086200000000002
	.quad	0x3fc3542a23bff8a9              # double 0.151006
	.quad	0x3fe2329802c0a4a0              # double 0.56867599999999996
	.quad	0x3fd9b3a2595bbbe8              # double 0.40158899999999997
	.quad	0x3fe8a291fb3fa6df              # double 0.769845
	.quad	0x3fdeadc4c9c90c4e              # double 0.479356
	.quad	0x3fea9adc8fb86f48              # double 0.83140400000000003
	.quad	0x3fb9d7dbf487fcb9              # double 0.10095
	.quad	0x3fec654b48d3ae68              # double 0.88736499999999996
	.quad	0x3fe4721f6cacd185              # double 0.63893100000000003
	.quad	0x3fe74215b9a5a89c              # double 0.72681700000000005
	.quad	0x3fd05aea3161a1dc              # double 0.25554900000000003
	.quad	0x3fecbcb3e5753a3f              # double 0.89803500000000003
	.quad	0x3fd5c53b0813cab8              # double 0.34016299999999999
	.quad	0x3fcbd7b2031ceaf2              # double 0.21751999999999999
	.quad	0x3fe55655e28aa433              # double 0.66678899999999997
	.quad	0x3fdda3443d46b26c              # double 0.46309
	.quad	0x3fd343f5f91600f3              # double 0.30102299999999999
	.quad	0x3fbdbd4067cf1c32              # double 0.11616899999999999
	.quad	0x3fdafdd65a14488c              # double 0.42174299999999998
	.quad	0x3fd96ff3ade225fa              # double 0.39745799999999998
	.quad	0x3fe577574f722e1b              # double 0.67081800000000003
	.quad	0x3fd5ea5f84cad57c              # double 0.34243000000000001
	.quad	0x3fda118c197e5647              # double 0.40732099999999999
	.quad	0x3fe441248d7e0264              # double 0.63295199999999996
	.quad	0x3f9895d0b73d188f              # double 0.024008999999999999
	.quad	0x3fe1ffc5479d4d83              # double 0.56247199999999997
	.quad	0x3fd884230fcf80dc              # double 0.38306499999999999
	.quad	0x3fb2ca7935760392              # double 0.073401999999999995
	.quad	0x3fee395c42203600              # double 0.94450199999999995
	.quad	0x3fc65f28848387df              # double 0.17477899999999999
	.quad	0x3fe668576cce5f74              # double 0.700237
	.quad	0x3fef6b6390c91080              # double 0.98185900000000004
	.quad	0x3fb9f57b41bfbdf1              # double 0.10140200000000001
	.quad	0x3fedeb8b69552e30              # double 0.93500300000000003
	.quad	0x3fe37f1d81f10668              # double 0.609267
	.quad	0x3fd32fd75e2046c7              # double 0.29979499999999998
	.quad	0x3f9ad18d25edd053              # double 0.026190000000000001
	.quad	0x3fcb3c46d82ba5a0              # double 0.21277699999999999
	.quad	0x3fe618f605ab3aac              # double 0.69054700000000002
	.quad	0x3fcdda2f8bdec5f4              # double 0.23322100000000001
	.quad	0x3fe9305faebc408e              # double 0.78715500000000005
	.quad	0x3fe1a21a719b4dcf              # double 0.55103800000000003
	.quad	0x3fe0a90cd423d923              # double 0.52063599999999999
	.quad	0x3fd30a2014727dcc              # double 0.29749300000000001
	.quad	0x3fe8fd30ad46f588              # double 0.78090700000000002
	.quad	0x3fb443b2dd377e1c              # double 0.079158000000000006
	.quad	0x3fc0be37de939eae              # double 0.130805
	.quad	0x3fe30900c521dda0              # double 0.59484899999999996
	.quad	0x3fe759018e757929              # double 0.72961500000000001
	.quad	0x3fe72500d5e8d541              # double 0.72326699999999999
	.quad	0x3feb865300581494              # double 0.86014699999999999
	.quad	0x3feab1ab0856e697              # double 0.83418800000000004
	.quad	0x3fe787852f7f498c              # double 0.73529299999999997
	.quad	0x3fd386bdf4c2b51c              # double 0.30509900000000001
	.quad	0x3fec8fd7e45803cd              # double 0.89255899999999999
	.quad	0x3fdb69a91105e1c1              # double 0.42832399999999998
	.quad	0x3fe68281ba7fc32f              # double 0.70343100000000003
	.quad	0x3fd265a9a8049668              # double 0.28745500000000002
	.quad	0x3fea8b1572580c31              # double 0.82947800000000005
	.quad	0x3fda87fcb923a29c              # double 0.41454999999999997
	.quad	0x3fbd610adcd2d44e              # double 0.114762
	.quad	0x3fec45f17bd8be73              # double 0.88353800000000005
	.quad	0x3fd5f76a2f48c2e7              # double 0.34322599999999998
	.quad	0x3fc3ca9ef5232d2c              # double 0.15462100000000001
	.quad	0x3fd7567125dd095b              # double 0.364651
	.quad	0x3fe39f340d4dc65c              # double 0.61318399999999995
	.quad	0x3fbbda0dfdef8488              # double 0.108796
	.quad	0x3fd39da597d49d7c              # double 0.30649700000000002
	.quad	0x3fc0e6c093d96638              # double 0.13204199999999999
	.quad	0x3fec2602c9081c2e              # double 0.87963999999999998
	.quad	0x3fb46d0d49949e88              # double 0.079788999999999999
	.quad	0x3fa1309c7ffde721              # double 0.033574
	.quad	0x3fed5d9a0f0a5eff              # double 0.91767600000000005
	.quad	0x3fc6aca793576039              # double 0.177144
	.quad	0x3fe199c7bcc2938e              # double 0.55002200000000001
	.quad	0x3fd9e84ad794a6ec              # double 0.40480300000000002
	.quad	0x3fc0a78af3e468cb              # double 0.13011300000000001
	.quad	0x3fe7d9be4cd74928              # double 0.74533000000000005
	.quad	0x3fe73be878fabda1              # double 0.72606300000000001
	.quad	0x3fbfe996312f4cf5              # double 0.124658
	.quad	0x3fd113e81450efdd              # double 0.26684000000000002
	.quad	0x3fed1b2a27f1b691              # double 0.90956599999999999
	.quad	0x3fc11159c4977425              # double 0.13334199999999999
	.quad	0x3fee6073de1e2de8              # double 0.94927399999999995
	.quad	0x3fddf56eac860568              # double 0.46810499999999999
	.quad	0x3fc8ec8d5c74751d              # double 0.194719
	.quad	0x3fd45faebc408d8f              # double 0.31834000000000001
	.quad	0x3fc5fa43fe5c91d1              # double 0.17169999999999999
	.quad	0x3fc0308787485e3e              # double 0.12648100000000001
	.quad	0x3fe907f88765ba6f              # double 0.782223
	.quad	0x3fd56a161e4f7660              # double 0.33460000000000001
	.quad	0x3fc9a8ac5c13fd0d              # double 0.20046
	.quad	0x3fd1188f42fe8251              # double 0.26712399999999997
	.quad	0x3fd9378ab0c88a48              # double 0.394015
	.quad	0x3fe187e5a78f25a2              # double 0.54783899999999996
	.quad	0x3fbc29bf162ae4b0              # double 0.110012
	.quad	0x3fde5ecc3e3193f7              # double 0.47453600000000001
	.quad	0x3fe05b6a1e81cb47              # double 0.51115900000000003
	.quad	0x3fe1aa10e0221427              # double 0.55201
	.quad	0x3fe3e73a365cb35f              # double 0.62197599999999997
	.quad	0x3fc149adc8fb86f4              # double 0.13506099999999999
	.quad	0x3fd77f13059641f6              # double 0.36713099999999999
	.quad	0x3fe5f5a964e8b7e5              # double 0.68623800000000001
	.quad	0x3fb1013a92a30553              # double 0.066424999999999998
	.quad	0x3feea778140dd3fe              # double 0.95794299999999999
	.quad	0x3fef0dcfcc5b8dc5              # double 0.97043599999999996
	.quad	0x3feee8db8bac710d              # double 0.96592500000000003
	.quad	0x3fd67a85015c2092              # double 0.35122799999999998
	.quad	0x3fdbde093532e7b4              # double 0.43542700000000001
	.quad	0x3fc4224edf612407              # double 0.15729699999999999
	.quad	0x3faa45d41fa76534              # double 0.051313999999999999
	.quad	0x3fe7c6e4c0df58c1              # double 0.74302900000000005
	.quad	0x3fed527c39368273              # double 0.91631899999999999
	.quad	0x3fdfce8533b10774              # double 0.49697999999999998
	.quad	0x3fe74cdb7ae5796c              # double 0.728132
	.quad	0x3fe87a28bb0a2caa              # double 0.76491200000000004
	.quad	0x3fd3cf2495e17e35              # double 0.30951800000000002
	.quad	0x3feccf15e7c8d196              # double 0.90027900000000005
	.quad	0x3fce518f3eccc469              # double 0.23686399999999999
	.quad	0x3fa0b673c4f3ba77              # double 0.032641999999999997
	.quad	0x3fe7fa1a0cf1800a              # double 0.74927999999999995
	.quad	0x3fd7067cf1c3265b              # double 0.35977100000000001
	.quad	0x3fe2ee264e48626f              # double 0.59157099999999996
	.quad	0x3fe35b1209edbf8c              # double 0.60486700000000004
	.quad	0x3fe13d2d87f88766              # double 0.53871800000000003
	.quad	0x3fd19057d1782d38              # double 0.27443499999999998
	.quad	0x3fea30ff10ecb74e              # double 0.81848100000000001
	.quad	0x3fec02235b4edb2f              # double 0.87526099999999996
	.quad	0x3fe37125dd095af3              # double 0.60756200000000005
	.quad	0x3fe1674afd545415              # double 0.54385899999999998
	.quad	0x3fd48eb0318b9347              # double 0.32120900000000002
	.quad	0x3fe71693c03bc4d2              # double 0.72150599999999998
	.quad	0x3fd813a4f8726d05              # double 0.37619900000000001
	.quad	0x3fd34dd72367e415              # double 0.30162600000000001
	.quad	0x3fdd387df5cf2496              # double 0.45657300000000001
	.quad	0x3fa0ce4ead0c3d25              # double 0.032823999999999999
	.quad	0x3fdc97cc39ffd60f              # double 0.44676500000000002
	.quad	0x3fd59b77c02afddb              # double 0.33761400000000003
	.quad	0x3fc772d5e071c53f              # double 0.18319199999999999
	.quad	0x3fbb311a543f1c76              # double 0.10621800000000001
	.quad	0x3fec4660a2014728              # double 0.88359100000000002
	.quad	0x3feb90624dd2f1aa              # double 0.861375
	.quad	0x3fe980192a737111              # double 0.79688700000000001
	.quad	0x3fe10c2c5e2cdc01              # double 0.53273599999999999
	.quad	0x3fd02cadddf43c7d              # double 0.25272699999999998
	.quad	0x3fe6081a1554fbdb              # double 0.68848900000000002
	.quad	0x3fe67e1fc08fa7a8              # double 0.70289599999999997
	.quad	0x3fddda3c21187e7c              # double 0.466445
	.quad	0x3fc74f82f5126634              # double 0.182114
	.quad	0x3fe02ebe596c82e0              # double 0.50570599999999999
	.quad	0x3fe34ab606b7aa26              # double 0.60287000000000002
	.quad	0x3fd912dfd694ccab              # double 0.39177699999999999
	.quad	0x3fe629fbe76c8b44              # double 0.69262500000000005
	.quad	0x3fe31a133c1ce6c1              # double 0.59693300000000005
	.quad	0x3fef4725c3dee782              # double 0.97743500000000005
	.quad	0x3fdd9628cbd1244a              # double 0.46228999999999998
	.quad	0x3fdfc77143393ab4              # double 0.49654799999999999
	.quad	0x3fe5f0e2c12ad81b              # double 0.68565500000000001
	.quad	0x3fd472e275ab7dc8              # double 0.31951200000000002
	.quad	0x3fe5b1055b899392              # double 0.67785899999999999
	.quad	0x3fdb90752da98677              # double 0.43069200000000002
	.quad	0x3fb8f63800218def              # double 0.097506999999999996
	.quad	0x3fd3769ec2ce464a              # double 0.30411500000000002
	.quad	0x3fefa76b7ed41b76              # double 0.98918700000000004
	.quad	0x3fdf5692b3cc4ac7              # double 0.48965900000000001
	.quad	0x3fd58a159817b95a              # double 0.33655299999999999
	.quad	0x3febf1ae2da554b9              # double 0.87325200000000003
	.quad	0x3fd9fa58f7121ab5              # double 0.40590500000000002
	.quad	0x3fd3dabe27179bfe              # double 0.310226
	.quad	0x3fc84534bd76ee74              # double 0.189612
	.quad	0x3fbda9a8049667b6              # double 0.11587
	.quad	0x3fe7b4bd76ee73e7              # double 0.74081300000000005
	.quad	0x3f6db65ecc3e3194              # double 0.003627
	.quad	0x3fbaf166e008e9b4              # double 0.10524600000000001
	.quad	0x3fe5b4289118c198              # double 0.67824200000000001
	.quad	0x3f89bbadc0980b24              # double 0.012565
	.quad	0x3fe111f0c34c1a8b              # double 0.53344000000000003
	.quad	0x3fd29cdc443914f5              # double 0.29082400000000003
	.quad	0x3fa546d3f9e7b80b              # double 0.041556000000000003
	.quad	0x3fcfcfc3f811f4f5              # double 0.248528
	.quad	0x3fed1c25d074213a              # double 0.90968599999999999
	.quad	0x3fe882107b784663              # double 0.76587700000000003
	.quad	0x3fe54c35ce182667              # double 0.66555299999999995
	.quad	0x3fdb5e785b5b7069              # double 0.42764099999999999
	.quad	0x3fd0518b0d0edc3c              # double 0.25497700000000001
	.quad	0x3fe1daad601ffb48              # double 0.557944
	.quad	0x3fdd76cce5f7403e              # double 0.46037600000000001
	.quad	0x3fc6ce5f7403dddb              # double 0.178173
	.quad	0x3fd54430b178b370              # double 0.332287
	.quad	0x3febd069a4df47fa              # double 0.86919100000000005
	.quad	0x3fc8bc947064ecea              # double 0.19325500000000001
	.quad	0x3fd0da6e75ff609e              # double 0.26333200000000001
	.quad	0x3fe9f6b3bb83cf2d              # double 0.811365
	.quad	0x3fde43526527a205              # double 0.47285899999999997
	.quad	0x3fd2327674d16335              # double 0.28433000000000003
	.quad	0x3fc6c21e1d2178f7              # double 0.17779900000000001
	.quad	0x3fce2a9930be0ded              # double 0.235675
	.quad	0x3fe4c7a5b0ff10ed              # double 0.64937100000000003
	.quad	0x3fe9ec7863beec39              # double 0.81011599999999995
	.quad	0x3fead7c4e2f37fbf              # double 0.838839
	.quad	0x3fc4c669057d1783              # double 0.162305
	.quad	0x3fefd4195cc857f3              # double 0.99464099999999999
	.quad	0x3fede1e71044f1a2              # double 0.93382600000000004
	.quad	0x3fe5930164840e17              # double 0.67419499999999999
	.quad	0x3fe6b6eb4e981388              # double 0.70982900000000004
	.quad	0x3fa77e1b8ed1bf7b              # double 0.045884000000000001
	.quad	0x3fad6e04c0592104              # double 0.057480000000000003
	.quad	0x3fbfbb9496249a13              # double 0.123956
	.quad	0x3fee2dc2b0ea1837              # double 0.94308599999999998
	.quad	0x3fba0578e5c4eb57              # double 0.101646
	.quad	0x3fe7f46887a8d64d              # double 0.74858499999999994
	.quad	0x3fc08b4bf8fcd680              # double 0.129251
	.quad	0x3fed4968943e1006              # double 0.915211
	.quad	0x3fd762d83c6c97d9              # double 0.36540800000000001
	.quad	0x3fd6bf93ff25e56d              # double 0.35544300000000001
	.quad	0x3fe836deb95e5aff              # double 0.75669799999999998
	.quad	0x3febe523704790b8              # double 0.87172099999999997
	.quad	0x3fe834245f5ad96a              # double 0.75636499999999995
	.quad	0x3fcfb4e54f7a9197              # double 0.24770800000000001
	.quad	0x3fc3fe4bcad9ad86              # double 0.156198
	.quad	0x3fb58d79d0a67621              # double 0.084190000000000001
	.quad	0x3fc9e8d5410f94c8              # double 0.20241799999999999
	.quad	0x3f95985ad538ac19              # double 0.021089
	.quad	0x3fd682d38476f2a6              # double 0.35173500000000002
	.quad	0x3fd7db48909289db              # double 0.37275900000000001
	.quad	0x3fe4d3d640e9d51b              # double 0.65085899999999997
	.quad	0x3fea7faa044ae85c              # double 0.82808400000000004
	.quad	0x3fd685b9e8c47a18              # double 0.351912
	.quad	0x3fe6c024b33daf8e              # double 0.710955
	.quad	0x3fc5988d2a1f8e3b              # double 0.16871800000000001
	.quad	0x3fd1241c3efae792              # double 0.26782899999999998
	.quad	0x3fd5f91a32b12d34              # double 0.343329
	.quad	0x3feec75818c5c9a3              # double 0.96183399999999996
	.quad	0x3fd0055fbb517a46              # double 0.25032799999999999
	.quad	0x3fae49b1fab96f22              # double 0.059156
	.quad	0x3fa60242d05f2885              # double 0.042986000000000003
	.quad	0x3fd55072085b1855              # double 0.33303500000000003
	.quad	0x3fcc6fa3fcc9ea9a              # double 0.22215699999999999
	.quad	0x3fe6ed86ec17ebaf              # double 0.71649499999999999
	.quad	0x3fe0cb3c3e74afd5              # double 0.52480899999999997
	.quad	0x3fed2e5de15ca6ca              # double 0.91191
	.quad	0x3fee2ab68cef672c              # double 0.94271400000000005
	.quad	0x3fea020817fc7608              # double 0.81274800000000003
	.quad	0x3fd7f0520d130dfa              # double 0.37404300000000001
	.quad	0x3fe08c521dda059a              # double 0.51712899999999995
	.quad	0x3fe3914b167ec786              # double 0.61148599999999997
	.quad	0x3fd45454152b0a70              # double 0.31764700000000001
	.quad	0x3fd53215fcc1871e              # double 0.33118199999999998
	.quad	0x3fe5670c1333b96b              # double 0.66882900000000001
	.quad	0x3fe3f570c564f97f              # double 0.62371100000000002
	.quad	0x3fd2eb6bf444e0db              # double 0.29561900000000002
	.quad	0x3fe2df7e80389f84              # double 0.58978200000000003
	.quad	0x3feca856605ee569              # double 0.89554900000000004
	.quad	0x3fdfd4845132f87b              # double 0.49734600000000001
	.quad	0x3fd120ff540895d1              # double 0.26763900000000002
	.quad	0x3fea420d5629d841              # double 0.82056300000000004
	.quad	0x3feac55eaee2003b              # double 0.83659300000000003
	.quad	0x3fde0880d801b435              # double 0.46926899999999999
	.quad	0x3fead3b29a1b9f99              # double 0.83834200000000003
	.quad	0x3fe14a48f96e1587              # double 0.54031799999999996
	.quad	0x3fef0a7c5ac471b4              # double 0.97002999999999994
	.quad	0x3fe339ecf6380022              # double 0.60082100000000005
	.quad	0x3fda8c8abd5dc400              # double 0.41482799999999997
	.quad	0x3fd9567dbb16c1e3              # double 0.39590399999999998
	.quad	0x3fd700e27e0ef998              # double 0.359429
	.quad	0x3fc1633482be8bc1              # double 0.13583999999999999
	.quad	0x3feb66f0cfe15443              # double 0.85631599999999997
	.quad	0x3fd0dd052934acb0              # double 0.26349
	.quad	0x3fe576f08cc575c0              # double 0.67076899999999995
	.quad	0x3fd22c9081c2e33f              # double 0.28397
	.quad	0x3fdfbaa582dbe7f3              # double 0.49576700000000001
	.quad	0x3fc866a98244e93e              # double 0.190633
	.quad	0x3fc21754b05b7cfe              # double 0.14133699999999999
	.quad	0x3fd6ff972474538f              # double 0.35935
	.quad	0x3fea676640a6b93d              # double 0.82512200000000002
	.quad	0x3fd17a5b0ff10ecb              # double 0.27309299999999997
	.quad	0x3fd44577d955714c              # double 0.31674000000000002
	.quad	0x3fcd4d6a161e4f76              # double 0.22892499999999999
	.quad	0x3fe751287c200c0f              # double 0.728657
	.quad	0x3fd8fa97e132b55f              # double 0.390295
	.quad	0x3fef12f4cf4a558f              # double 0.97106400000000003
	.quad	0x3fb64873365881a1              # double 0.087042999999999995
	.quad	0x3fd9da1ec4e7253e              # double 0.40393800000000002
	.quad	0x3fbbd9cae21101b0              # double 0.108792
	.quad	0x3fefce50c5eb313c              # double 0.99393500000000001
	.quad	0x3fd3859c8c9320da              # double 0.30503000000000002
	.quad	0x3fe3d332acfb762e              # double 0.61953100000000005
	.quad	0x3fef5479d4d83409              # double 0.97906199999999998
	.quad	0x3fdb51ce28ed5f14              # double 0.42686800000000003
	.quad	0x3fb9b2f661f18ca0              # double 0.100387
	.quad	0x3fdc363f572de43f              # double 0.44081100000000001
	.quad	0x3fe10ccff21b3aef              # double 0.53281400000000001
	.quad	0x3fd16db0dd82fd76              # double 0.27232000000000001
	.quad	0x3fe3951e75360d02              # double 0.61195299999999997
	.quad	0x3fea66c4c5974e66              # double 0.82504500000000003
	.quad	0x3fcaade657b84dba              # double 0.20843200000000001
	.quad	0x3fd135d67ba237ce              # double 0.26891100000000001
	.quad	0x3fd40f1f57b41bfc              # double 0.31342300000000001
	.quad	0x3fef85b9e8c47a18              # double 0.985074
	.quad	0x3fd66bfca85caafc              # double 0.35034100000000001
	.quad	0x3fd28a159817b95a              # double 0.28967799999999999
	.quad	0x3fbf124d099e0e73              # double 0.12137299999999999
	.quad	0x3fbc47c30d306a2b              # double 0.11047
	.quad	0x3fd080dc33721d54              # double 0.25786500000000001
	.quad	0x3fef468448cf7caa              # double 0.97735799999999995
	.quad	0x3fe815379fa97e13              # double 0.75258999999999998
	.quad	0x3fd2019f3c70c997              # double 0.28134900000000002
	.quad	0x3fe4a2d2fe3f35a0              # double 0.644876
	.quad	0x3fd35918a009f623              # double 0.302313
	.quad	0x3fe78cd855970b4a              # double 0.73594300000000001
	.quad	0x3fdd216c61522a6f              # double 0.45516499999999999
	.quad	0x3fe621ccd9620685              # double 0.69162599999999996
	.quad	0x3fede81a9b8cb8e1              # double 0.93458300000000005
	.quad	0x3fcbcffeb074a772              # double 0.21728500000000001
	.quad	0x3fdc454de7ea5f85              # double 0.44173000000000001
	.quad	0x3fde39da16616b55              # double 0.47228100000000001
	.quad	0x3fe463c31df761cc              # double 0.63717800000000002
	.quad	0x3fec8c7e28240b78              # double 0.89215
	.quad	0x3f990d9d7774aba4              # double 0.024466000000000002
	.quad	0x3fc9b30728e92d56              # double 0.20077600000000001
	.quad	0x3fc996d8f4f93bc1              # double 0.19991600000000001
	.quad	0x3fd07d1351159c49              # double 0.25763399999999997
	.quad	0x3fb454477ff151e7              # double 0.079410999999999995
	.quad	0x3fdab1bbcf4e874d              # double 0.41709800000000002
	.quad	0x3fcc563ed0f62739              # double 0.221382
	.quad	0x3fe90b2a6b0d9514              # double 0.782613
	.quad	0x3fea376b3bb83cf3              # double 0.81926500000000002
	.quad	0x3fdbae70c1333b97              # double 0.43252200000000002
	.quad	0x3fed59210385c67e              # double 0.91713
	.quad	0x3fd2525892684cf0              # double 0.28627599999999997
	.quad	0x3fe6c0b34e768598              # double 0.71102299999999996
	.quad	0x3fec529fe004b7f6              # double 0.88508600000000004
	.quad	0x3fecda1cac083127              # double 0.90162500000000001
	.quad	0x3fd82e7f6f4be836              # double 0.37783800000000001
	.quad	0x3fe7c9c6f36ef805              # double 0.74338099999999996
	.quad	0x3fd40e8858ff7597              # double 0.31338700000000003
	.quad	0x3fd71fea8112ba17              # double 0.36132300000000001
	.quad	0x3f94b6a619da9c99              # double 0.020227999999999999
	.quad	0x3fe183d9a95421c0              # double 0.54734499999999997
	.quad	0x3fbb87bdcf0307f2              # double 0.10754
	.quad	0x3fe67995ee136e72              # double 0.70234200000000002
	.quad	0x3fc8e9813879c411              # double 0.19462599999999999
	.quad	0x3fc61b5c7cd898b3              # double 0.17271
	.quad	0x3fd79a5657fb6998              # double 0.36879499999999998
	.quad	0x3fdc6c2acb85a4f0              # double 0.444102
	.quad	0x3fd8d256798958da              # double 0.38783800000000002
	.quad	0x3fd46b69db65ecc4              # double 0.31905600000000001
	.quad	0x3fe47c58ab92c062              # double 0.64017900000000005
	.quad	0x3fd3b7ed41b75a75              # double 0.30810100000000001
	.quad	0x3fe3bd4cfd08d4bb              # double 0.61685800000000002
	.quad	0x3fd3d5b24e9c4546              # double 0.30991800000000003
	.quad	0x3fd68ac9f2fdb8fe              # double 0.35222100000000001
	.quad	0x3fee6553ac4f7ec3              # double 0.94986899999999996
	.quad	0x3fe4c1eff9f87f02              # double 0.64867399999999997
	.quad	0x3fe8aa843808850a              # double 0.77081500000000003
	.quad	0x3fda581cf7878b7a              # double 0.41162799999999999
	.quad	0x3fc920afa2f05a71              # double 0.19631000000000001
	.quad	0x3fc933ebbfd71b04              # double 0.19689699999999999
	.quad	0x3fe66f32bdc26dce              # double 0.70107399999999997
	.quad	0x3fafe77d523b3637              # double 0.062313
	.quad	0x3fd5f3775b813016              # double 0.34298499999999998
	.quad	0x3feaaf1455219a84              # double 0.83387199999999994
	.quad	0x3fd11b823c85c24c              # double 0.26730399999999999
	.quad	0x3fee80c521dda05a              # double 0.95321900000000004
	.quad	0x3faa265f0f5a1017              # double 0.051074000000000001
	.quad	0x3fe4c87db2b34613              # double 0.649474
	.quad	0x3feb41a261bf37b9              # double 0.85176200000000002
	.quad	0x3fd28f1d3ed527e5              # double 0.28998499999999999
	.quad	0x3fb258d5842b734b              # double 0.071667999999999996
	.quad	0x3fe5f3061c79b34a              # double 0.68591599999999997
	.quad	0x3feb7a9c12f09d8c              # double 0.85871699999999995
	.quad	0x3fc78b26394face6              # double 0.18393399999999999
	.quad	0x3fe16ae9ee45c359              # double 0.54430100000000003
	.quad	0x3fe72e09fe86833c              # double 0.72436999999999996
	.quad	0x3fcfe8ee6b8305d9              # double 0.24929599999999999
	.quad	0x3fe5c7735c182ecb              # double 0.68059700000000001
	.quad	0x3fe0db8561d4306e              # double 0.52679699999999996
	.quad	0x3fdbafff36ac6477              # double 0.43261699999999997
	.quad	0x3feb456f75d9a0f1              # double 0.85222600000000004
	.quad	0x3fe7fb04ee7c49fd              # double 0.74939199999999995
	.quad	0x3fe06feb4a66559f              # double 0.51366199999999995
	.quad	0x3fc9731098d477bc              # double 0.198824
	.quad	0x3fcc52ce032db1ea              # double 0.221277
	.quad	0x3fea8d5c74751ce3              # double 0.82975600000000005
	.quad	0x3fb9869835158b82              # double 0.099709999999999993
	.quad	0x3fd979a2834d26fa              # double 0.39804899999999999
	.quad	0x3fe528ac5c13fd0d              # double 0.661215
	.quad	0x3fee4a07f66e86c6              # double 0.94653699999999996
	.quad	0x3fe6a62aa19439de              # double 0.70778399999999997
	.quad	0x3fdd22706d506573              # double 0.45522699999999999
	.quad	0x3fcc9fe004b7f5a5              # double 0.22362899999999999
	.quad	0x3fbe68c26138fffc              # double 0.118786
	.quad	0x3f8e681a9b8cb8e1              # double 0.014847000000000001
	.quad	0x3fe8cca0c282c6ef              # double 0.77497899999999997
	.quad	0x3fd70e27e0ef9980              # double 0.36023899999999998
	.quad	0x3f8801b43526527a              # double 0.011722
	.quad	0x3f71ce28ed5f138c              # double 0.0043470000000000002
	.quad	0x3fedca8c154c985f              # double 0.930975
	.quad	0x3fe4491d14e3bcd3              # double 0.63392499999999996
	.quad	0x3fca832b990afe61              # double 0.20712800000000001
	.quad	0x3fecb8cb8e086bdf              # double 0.89755799999999997
	.quad	0x3fe77ad8e4324420              # double 0.733746
	.quad	0x3fb776f6d7625205              # double 0.091659000000000004
	.quad	0x3fbdee136e71cda3              # double 0.116914
	.quad	0x3fda909289dadfb5              # double 0.415074
	.quad	0x3fc9f633ce63a5c2              # double 0.20282600000000001
	.quad	0x3fe1a83f4eca686e              # double 0.55178799999999995
	.quad	0x3fb0b32ce89656ef              # double 0.065234
	.quad	0x3feb24c8366516db              # double 0.84823999999999999
	.quad	0x3fe8907b784662bb              # double 0.76763700000000001
	.quad	0x3fe7d6da0168b5cc              # double 0.744977
	.quad	0x3fbd88c1db0142f6              # double 0.115368
	.quad	0x3fe81bfbdf090f73              # double 0.75341599999999997
	.quad	0x3fd818b502ababeb              # double 0.37650800000000001
	.quad	0x3fead0c804102ff9              # double 0.83798600000000001
	.quad	0x3fe8df394b7b2895              # double 0.77724899999999997
	.quad	0x3f802c4d65e46067              # double 0.0078969999999999995
	.quad	0x3fde2352eb5f5f0b              # double 0.47090599999999999
	.quad	0x3fcd0dae3e6c4c59              # double 0.22697999999999999
	.quad	0x3fb7a615a8deb0fb              # double 0.092378000000000002
	.quad	0x3fd84c5974e65bea              # double 0.37966
	.quad	0x3fe9adcf4623d0c0              # double 0.80246700000000004
	.quad	0x3fe98f345069a4df              # double 0.79873099999999997
	.quad	0x3fc088b545c78a6e              # double 0.12917200000000001
	.quad	0x3fe6a949a5657fb7              # double 0.70816500000000004
	.quad	0x3fd27dd872f33ca3              # double 0.28893099999999999
	.quad	0x3fe63738e6d15ad1              # double 0.694241
	.quad	0x3fc2ff3ade225fa6              # double 0.14841399999999999
	.quad	0x3fefb9a5a89b951c              # double 0.99141199999999995
	.quad	0x3fd0394b7b28954a              # double 0.25349699999999997
	.quad	0x3fe7b1e18efbb0e6              # double 0.74046400000000001
	.quad	0x3fdd0fa58f7121ab              # double 0.45407999999999998
	.quad	0x3fc8691ea78af3e4              # double 0.19070799999999999
	.quad	0x3fec89fe86833c60              # double 0.89184499999999999
	.quad	0x3fef3e5fb71fbc5e              # double 0.97636400000000001
	.quad	0x3fe8976bc1eff9f8              # double 0.76848399999999994
	.quad	0x3f89157abb8800eb              # double 0.012248
	.quad	0x3fe8d1dcd7060bb3              # double 0.77561800000000003
	.quad	0x3f969a0ad8a11666              # double 0.022072000000000001
	.quad	0x3f81611ba3ca7504              # double 0.0084860000000000005
	.quad	0x3fe73d859c8c9321              # double 0.72626000000000002
	.quad	0x3f8053198288051d              # double 0.0079710000000000006
	.quad	0x3fcd61dc93ea2d30              # double 0.229549
	.quad	0x3fdd9eba6aca7935              # double 0.46281299999999997
	.quad	0x3fe02f09d8c6d613              # double 0.50574200000000002
	.quad	0x3fb3aa9b499d0204              # double 0.076822000000000001
	.quad	0x3fc763c31df761cc              # double 0.18273200000000001
	.quad	0x3fe1a75ab7dc7ac0              # double 0.55167900000000003
	.quad	0x3fe81307af20ea5b              # double 0.75232299999999996
	.quad	0x3fd0eb9e492bc2fc              # double 0.26438099999999998
	.quad	0x3fd0df8b1572580c              # double 0.26364399999999999
	.quad	0x3fe323a29c779a6b              # double 0.59809999999999997
	.quad	0x3fec371971c10d7c              # double 0.881726
	.quad	0x3fe1953dea465a57              # double 0.54946799999999996
	.quad	0x3fb697396d0917d7              # double 0.088245000000000004
	.quad	0x3fd1fa7221858bc6              # double 0.28091100000000002
	.quad	0x3fed096feb4a6656              # double 0.90740200000000004
	.quad	0x3fe2cd3e0bd44999              # double 0.58755400000000002
	.quad	0x3fe30ff972474539              # double 0.59570000000000001
	.quad	0x3fee8359bc33f855              # double 0.95353399999999999
	.quad	0x3fdfc810a569b175              # double 0.49658600000000003
	.quad	0x3fd5666234a87e39              # double 0.334374
	.quad	0x3fd5f8ca8198f1d4              # double 0.34331
	.quad	0x3fef36544fe36d22              # double 0.97538199999999997
	.quad	0x3feebd66277c45cc              # double 0.96062000000000002
	.quad	0x3fe03a92a3055326              # double 0.50714999999999999
	.quad	0x3fe29670196d8f50              # double 0.58086400000000005
	.quad	0x3fc4eeb702602c91              # double 0.16353500000000001
	.quad	0x3fd261fe21d96e9c              # double 0.28723100000000001
	.quad	0x3fd841c8216c6152              # double 0.37901499999999999
	.quad	0x3fe86fb6dca07f67              # double 0.76363700000000001
	.quad	0x3fb55b24e9c45458              # double 0.083421999999999996
	.quad	0x3fb7ec13b9f127f6              # double 0.093446000000000001
	.quad	0x3fe5d0a244630660              # double 0.68171800000000005
	.quad	0x3fef09070fbeb9e5              # double 0.96985200000000004
	.quad	0x3fb1bdc69f8c21e2              # double 0.069302000000000002
	.quad	0x3fc9c68661ae70c1              # double 0.20137099999999999
	.quad	0x3fe4d0225742dcf4              # double 0.65040699999999996
	.quad	0x3febb3d29563a9f4              # double 0.86570100000000005
	.quad	0x3fd640d90e23af32              # double 0.34770800000000002
	.quad	0x3fe1a8a1dfb9389b              # double 0.55183499999999996
	.quad	0x3fe0db50f40e5a36              # double 0.52677200000000002
	.quad	0x3fe10cda6e75ff61              # double 0.53281900000000004
	.quad	0x3fe8b66b6177ea1c              # double 0.77226799999999995
	.quad	0x3fed9d0a67620ee9              # double 0.92542000000000002
	.quad	0x3fc1a87a072d1aeb              # double 0.13795399999999999
	.quad	0x3fc824dd2f1a9fbe              # double 0.18862499999999999
	.quad	0x3fd1a2be0589acbd              # double 0.27555800000000003
	.quad	0x3fec03fb3743632c              # double 0.87548599999999998
	.quad	0x3fe61f969e3c9689              # double 0.69135599999999997
	.quad	0x3fe88bd66277c45d              # double 0.76707000000000003
	.quad	0x3fba2a90cd423d92              # double 0.102212
	.quad	0x3feefa0945f9df55              # double 0.96802200000000004
	.quad	0x3fd9cfe586013661              # double 0.40331400000000001
	.quad	0x3feb717bd8be7297              # double 0.857603
	.quad	0x3fd46ad70e6f2e8c              # double 0.319021
	.quad	0x3faf11f926c7eae6              # double 0.060684000000000002
	.quad	0x3fe6ad3c792d1288              # double 0.70864700000000003
	.quad	0x3fdcbb341e14bdfd              # double 0.44892599999999999
	.quad	0x3fe6cf4c6e6d9be5              # double 0.71280500000000002
	.quad	0x3fec25efe9318762              # double 0.87963100000000005
	.quad	0x3fe5d082cf52b90a              # double 0.68170299999999995
	.quad	0x3fe0a8a6117720c9              # double 0.52058700000000002
	.quad	0x3fc5460aa64c2f83              # double 0.16619999999999999
	.quad	0x3fda51fc4c165908              # double 0.41125400000000001
	.quad	0x3fd35718eb895076              # double 0.30219099999999999
	.quad	0x3fe5231c64ba94bc              # double 0.66053600000000001
	.quad	0x3febf02a3486f04a              # double 0.87306700000000004
	.quad	0x3fe0382a12f90108              # double 0.50685599999999997
	.quad	0x3fe3fd30ad46f588              # double 0.62465700000000002
	.quad	0x3fefd0b524399b2c              # double 0.99422699999999997
	.quad	0x3fd9024f6598e10d              # double 0.390766
	.quad	0x3fe96df1e0828c37              # double 0.79467100000000002
	.quad	0x3fd3ac7da1ec4e72              # double 0.30740299999999998
	.quad	0x3fe545260f5e41d5              # double 0.66469100000000003
	.quad	0x3feb313be22e5de1              # double 0.84975999999999996
	.quad	0x3fe0291105e1c151              # double 0.50501300000000005
	.quad	0x3fd8333333333333              # double 0.37812499999999999
	.quad	0x3fefb524399b2c41              # double 0.99086200000000002
	.quad	0x3fea34d056c508b3              # double 0.81894699999999998
	.quad	0x3fc232441fea8113              # double 0.14215900000000001
	.quad	0x3fe0278290689870              # double 0.50482300000000002
	.quad	0x3fe418f1d3ed527e              # double 0.62804499999999996
	.quad	0x3fde42d05f288484              # double 0.47282800000000003
	.quad	0x3fd01351159c4977              # double 0.25117899999999999
	.quad	0x3fe6e659d12cadde              # double 0.71561900000000001
	.quad	0x3fe1aaa9f7b5aea3              # double 0.55208299999999999
	.quad	0x3fe20d130df9bdc7              # double 0.56409600000000004
	.quad	0x3fe8fa7c9de05037              # double 0.78057699999999997
	.quad	0x3feddbe3c105186e              # double 0.93309200000000003
	.quad	0x3fecc5c5718eb895              # double 0.899142
	.quad	0x3fa4f0307f23cc8e              # double 0.040895000000000001
	.quad	0x3fce9142b302f72b              # double 0.23880799999999999
	.quad	0x3feeede97d06bbdc              # double 0.96654200000000001
	.quad	0x3fd8bf487fcb923a              # double 0.38667499999999999
	.quad	0x3fd4db877ab32485              # double 0.32589899999999999
	.quad	0x3fd2e1ac57e23f25              # double 0.29502400000000001
	.quad	0x3fe4cedf61240746              # double 0.65025299999999997
	.quad	0x3fbf4cb1897a67a5              # double 0.122264
	.quad	0x3fc20db2702a3487              # double 0.141043
	.quad	0x3fd6fd00713f077d              # double 0.35919200000000001
	.quad	0x3fedc3fa2ad3e921              # double 0.93017300000000003
	.quad	0x3fe49511dffc547a              # double 0.64319700000000002
	.quad	0x3fd6d76ab5807fed              # double 0.35689799999999999
	.quad	0x3feadef62f9ca5be              # double 0.83971700000000005
	.quad	0x3fe44c2f837b4a23              # double 0.63429999999999997
	.quad	0x3fef69552e2fbe34              # double 0.98160800000000003
	.quad	0x3fdf33c1ce6c093e              # double 0.48753400000000002
	.quad	0x3fe32b12d3415b14              # double 0.59900799999999998
	.quad	0x3faca38327674d16              # double 0.055934999999999999
	.quad	0x3fd97dd00f776c48              # double 0.39830399999999999
	.quad	0x3fb8bc59b8023a6d              # double 0.096624000000000002
	.quad	0x3fe3dd052934acb0              # double 0.62073
	.quad	0x3fe755c0fcb4f1e5              # double 0.72921800000000003
	.quad	0x3f9c215b9a5a89b9              # double 0.027470999999999999
	.quad	0x3fea2edfe75bc44c              # double 0.818222
	.quad	0x3fdca43bb40b34e7              # double 0.44752399999999998
	.quad	0x3fea40ee06d93815              # double 0.82042599999999999
	.quad	0x3fd2b9f98b71b8aa              # double 0.292601
	.quad	0x3fd488fc9363f573              # double 0.32086100000000001
	.quad	0x3fd454a7f8012dfd              # double 0.31766699999999998
	.quad	0x3fdee1198aeb80ed              # double 0.482489
	.quad	0x3fef1294573a7979              # double 0.97101800000000004
	.quad	0x3fedc05f6ba0620b              # double 0.92973300000000003
	.quad	0x3fe7692f6e82949a              # double 0.73158999999999996
	.quad	0x3fbe0f2becedd484              # double 0.117419
	.quad	0x3fe5fe0ce0b912dc              # double 0.68726200000000004
	.quad	0x3fe2f1f57b41bfbe              # double 0.59203600000000001
	.quad	0x3fedcea28fe260b3              # double 0.93147400000000002
	.quad	0x3fe4b380cb6c7a7d              # double 0.64691200000000004
	.quad	0x3fdc58fb43d89ce5              # double 0.44293100000000002
	.quad	0x3fe304e3ffef3908              # double 0.59434699999999996
	.quad	0x3fa3302f72b45283              # double 0.037477000000000003
	.quad	0x3fea5953586ca8a0              # double 0.82340400000000002
	.quad	0x3fd05bbbe878fabe              # double 0.25559900000000002
	.quad	0x3fe3cb124d099e0e              # double 0.61853899999999995
	.quad	0x3fca85fd04a2fcf0              # double 0.20721400000000001
	.quad	0x3fe6b7824d4cb9ed              # double 0.709901
	.quad	0x3fea10be9424e593              # double 0.81454400000000005
	.quad	0x3fb1db877ab32485              # double 0.069755999999999999
	.quad	0x3fc724a6a875d56f              # double 0.18080599999999999
	.quad	0x3f8a493c89f40a28              # double 0.012834999999999999
	.quad	0x3fe5b6c58eeae9ee              # double 0.67856099999999997
	.quad	0x3fe5f811f4f50a03              # double 0.68653200000000003
	.quad	0x3fe949a133c1ce6c              # double 0.79023799999999999
	.quad	0x3fe3b37c99ae924f              # double 0.61565999999999999
	.quad	0x3fdb0c4588a04d12              # double 0.422624
	.quad	0x3f8c947064ece9a3              # double 0.013955
	.quad	0x3fd2b139c94f69cb              # double 0.29206700000000002
	.quad	0x3f8e6bc621b7e0ac              # double 0.014853999999999999
	.quad	0x3fee25fe974a3401              # double 0.94213800000000003
	.quad	0x3fe680431bde82d8              # double 0.70315700000000003
	.quad	0x3fdad6cf850df15a              # double 0.41936099999999998
	.quad	0x3fefe6cd29131ec1              # double 0.99692400000000003
	.quad	0x3fe4f16d2aa5c5f8              # double 0.65447100000000002
	.quad	0x3fedc47c30d306a3              # double 0.93023500000000003
	.quad	0x3fd803fb3743632c              # double 0.37524299999999999
	.quad	0x3fdd0eb24a6a875d              # double 0.45402199999999998
	.quad	0x3fd4cbd987c6327f              # double 0.32494200000000001
	.quad	0x3fc9522a6f3f52fc              # double 0.19782
	.quad	0x3fde3ed0f627392a              # double 0.472584
	.quad	0x3fe9ecefed63454a              # double 0.81017300000000003
	.quad	0x3fdb4d4cb9ecf638              # double 0.426593
	.quad	0x3febad3a604e1e71              # double 0.864896
	.quad	0x3fc868c26138fffc              # double 0.19069700000000001
	.quad	0x3fdf5e071c53f39d              # double 0.49011399999999999
	.quad	0x3fe99d2bf5515055              # double 0.80043600000000004
	.quad	0x3fcb2bdc26dce39b              # double 0.21227599999999999
	.quad	0x3fab0b178b370047              # double 0.052818999999999998
	.quad	0x3fb2fcac8e68e3ef              # double 0.074167999999999998
	.quad	0x3fd79ae4f3343fa3              # double 0.36882900000000002
	.quad	0x3feb5db76b3bb83d              # double 0.85519000000000001
	.quad	0x3fe02541d8e86402              # double 0.504548
	.quad	0x3fea087ebf22c01e              # double 0.81353699999999995
	.quad	0x3fd1e85b9e8c47a1              # double 0.27980699999999997
	.quad	0x3fbd7225b749adc9              # double 0.115023
	.quad	0x3fe3b2c83ec892ab              # double 0.61557399999999995
	.quad	0x3fe6503fb3743633              # double 0.69729600000000003
	.quad	0x3fee3ce63a5c1c61              # double 0.94493400000000005
	.quad	0x3fe0286f8ad2567a              # double 0.50493600000000005
	.quad	0x3fe1fcb70ac3a861              # double 0.56209900000000002
	.quad	0x3fde986fcdee34fc              # double 0.47805399999999998
	.quad	0x3fcb060bb2bba98f              # double 0.211122
	.quad	0x3fe4305b7cfe5860              # double 0.63090299999999999
	.quad	0x3febfe23f24d8fd6              # double 0.87477300000000002
	.quad	0x3fe795af294dd723              # double 0.73702199999999995
	.quad	0x3fea01e03f705858              # double 0.81272900000000003
	.quad	0x3fecb65881a15550              # double 0.89725900000000003
	.quad	0x3fa3ed30f062d40b              # double 0.038919000000000002
	.quad	0x3fa74d37c1376d55              # double 0.045511000000000003
	.quad	0x3fdcd306a2b17050              # double 0.45038
	.quad	0x3fe07d028a1dfb94              # double 0.51526000000000005
	.quad	0x3fe0be7d1351159c              # double 0.52325299999999997
	.quad	0x3fc89e2bcf91a32b              # double 0.192327
	.quad	0x3fed0e30446b69db              # double 0.90798199999999996
	.quad	0x3fe21782d38476f3              # double 0.56537000000000004
	.quad	0x3fdeabffcdab191e              # double 0.47924800000000001
	.quad	0x3fe40f1f57b41bfc              # double 0.62684600000000001
	.quad	0x3fdfc743201040c0              # double 0.49653700000000001
	.quad	0x3fe64b6e935b91f7              # double 0.69670799999999999
	.quad	0x3fd37546d3f9e7b8              # double 0.304033
	.quad	0x3feb01eabbcb1cc9              # double 0.84398399999999996
	.quad	0x3fdd8240b780346e              # double 0.46107500000000001
	.quad	0x3fe7e4606748e475              # double 0.74662799999999996
	.quad	0x3fd9feb8d8234224              # double 0.40617199999999998
	.quad	0x3fe2d6ffc115df65              # double 0.58874499999999996
	.quad	0x3fb2fa93af74cd31              # double 0.074135999999999994
	.quad	0x3fc0c9107faa044b              # double 0.131136
	.quad	0x3fc09c23b7952d23              # double 0.12976499999999999
	.quad	0x3fcbdcad14a0a0f5              # double 0.217672
	.quad	0x3feef6922d948dc1              # double 0.96759899999999998
	.quad	0x3fe0e21d96e9bbf1              # double 0.52760200000000002
	.quad	0x3fe8a699c7bcc294              # double 0.77033700000000004
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	53                              # 0x35
	.quad	71                              # 0x47
	.quad	89                              # 0x59
	.quad	138                             # 0x8a
	.quad	155                             # 0x9b
	.quad	172                             # 0xac
	.quad	219                             # 0xdb
	.quad	232                             # 0xe8
	.quad	252                             # 0xfc
	.quad	297                             # 0x129
	.quad	318                             # 0x13e
	.quad	341                             # 0x155
	.quad	388                             # 0x184
	.quad	409                             # 0x199
	.quad	430                             # 0x1ae
	.quad	478                             # 0x1de
	.quad	499                             # 0x1f3
	.quad	517                             # 0x205
	.quad	561                             # 0x231
	.quad	584                             # 0x248
	.quad	602                             # 0x25a
	.quad	648                             # 0x288
	.quad	670                             # 0x29e
	.quad	692                             # 0x2b4
	.quad	736                             # 0x2e0
	.quad	761                             # 0x2f9
	.quad	785                             # 0x311
	.quad	835                             # 0x343
	.quad	857                             # 0x359
	.quad	881                             # 0x371
	.quad	928                             # 0x3a0
	.quad	948                             # 0x3b4
	.quad	970                             # 0x3ca
	.quad	1019                            # 0x3fb
	.quad	1035                            # 0x40b
	.quad	1062                            # 0x426
	.quad	1108                            # 0x454
	.quad	1134                            # 0x46e
	.quad	1156                            # 0x484
	.quad	1202                            # 0x4b2
	.quad	1219                            # 0x4c3
	.quad	1243                            # 0x4db
	.quad	1290                            # 0x50a
	.quad	1308                            # 0x51c
	.quad	1329                            # 0x531
	.quad	1379                            # 0x563
	.quad	1401                            # 0x579
	.quad	1421                            # 0x58d
	.quad	1471                            # 0x5bf
	.quad	1501                            # 0x5dd
	.quad	1526                            # 0x5f6
	.quad	1570                            # 0x622
	.quad	1592                            # 0x638
	.quad	1616                            # 0x650
	.quad	1663                            # 0x67f
	.quad	1681                            # 0x691
	.quad	1704                            # 0x6a8
	.quad	1754                            # 0x6da
	.quad	1773                            # 0x6ed
	.quad	1797                            # 0x705
	.quad	1847                            # 0x737
	.quad	1862                            # 0x746
	.quad	1881                            # 0x759
	.quad	1931                            # 0x78b
	.quad	1957                            # 0x7a5
	.quad	1981                            # 0x7bd
	.quad	2031                            # 0x7ef
	.quad	2055                            # 0x807
	.quad	2072                            # 0x818
	.quad	2120                            # 0x848
	.quad	2141                            # 0x85d
	.quad	2164                            # 0x874
	.quad	2208                            # 0x8a0
	.quad	2227                            # 0x8b3
	.quad	2243                            # 0x8c3
	.quad	2288                            # 0x8f0
	.quad	2312                            # 0x908
	.quad	2335                            # 0x91f
	.quad	2378                            # 0x94a
	.quad	2402                            # 0x962
	.quad	2424                            # 0x978
	.quad	2467                            # 0x9a3
	.quad	2484                            # 0x9b4
	.quad	2504                            # 0x9c8
	.quad	2549                            # 0x9f5
	.quad	2567                            # 0xa07
	.quad	2590                            # 0xa1e
	.quad	2635                            # 0xa4b
	.quad	2658                            # 0xa62
	.quad	2684                            # 0xa7c
	.quad	2734                            # 0xaae
	.quad	2755                            # 0xac3
	.quad	2783                            # 0xadf
	.quad	2835                            # 0xb13
	.quad	2849                            # 0xb21
	.quad	2867                            # 0xb33
	.quad	2912                            # 0xb60
	.quad	2939                            # 0xb7b
	.quad	2953                            # 0xb89
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
