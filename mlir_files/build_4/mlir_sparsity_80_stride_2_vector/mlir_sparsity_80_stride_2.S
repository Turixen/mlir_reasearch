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
	.quad	0x3fa37fbefd00713f              # double 0.038084
	.quad	0x3fecd000c9539b89              # double 0.90039100000000005
	.quad	0x3fec489f40a2877f              # double 0.88386500000000001
	.quad	0x3fd3e7210be9424e              # double 0.31098199999999998
	.quad	0x3fe36177ea1c68ec              # double 0.60564799999999996
	.quad	0x3f8b1fab96f21f6d              # double 0.013244000000000001
	.quad	0x3fd1de69ad42c3ca              # double 0.2792
	.quad	0x3fdfa1f8e3ac0c63              # double 0.49426100000000001
	.quad	0x3fde944aa53fc009              # double 0.47780099999999998
	.quad	0x3fe40d477bbf93ff              # double 0.62662099999999998
	.quad	0x3fd38661ae70c133              # double 0.30507699999999999
	.quad	0x3fe18cd20afa2f06              # double 0.54844000000000004
	.quad	0x3fd6aa4766c6de76              # double 0.35414299999999999
	.quad	0x3fcea3cea6c1a049              # double 0.239374
	.quad	0x3fe753ac4f7ec354              # double 0.72896399999999995
	.quad	0x3fda6030c23fab11              # double 0.41212100000000002
	.quad	0x3f97589efd86a8fc              # double 0.022799
	.quad	0x3f90e30446b69db6              # double 0.016490999999999999
	.quad	0x3fed58a761027957              # double 0.917072
	.quad	0x3fa6d00b45ae5ffa              # double 0.044555999999999998
	.quad	0x3feca5657fb69985              # double 0.89519000000000004
	.quad	0x3fe4e310dbf0563f              # double 0.65271800000000002
	.quad	0x3fe70b524399b2c4              # double 0.72013199999999999
	.quad	0x3fb8669057d1782d              # double 0.095314999999999997
	.quad	0x3fd7ffa3b9ae0c17              # double 0.37497799999999998
	.quad	0x3fde7b30f8c64fdb              # double 0.476269
	.quad	0x3fec75903a7546d4              # double 0.889351
	.quad	0x3fe6f21b3aeee957              # double 0.71705399999999997
	.quad	0x3fc3bb384fd2a62b              # double 0.15415100000000001
	.quad	0x3fe66df1e0828c37              # double 0.70092100000000002
	.quad	0x3fd5bb6672fba01f              # double 0.339563
	.quad	0x3fc009784ec636b1              # double 0.12528900000000001
	.quad	0x3fe8bbd1676640a7              # double 0.77292700000000003
	.quad	0x3fed3a08398a6549              # double 0.91333399999999998
	.quad	0x3fddc4651f3e89a9              # double 0.46511200000000003
	.quad	0x3fdb6fef7c243dcd              # double 0.428707
	.quad	0x3fd2b4677b395c42              # double 0.29226099999999999
	.quad	0x3fed69ca9ef5232d              # double 0.91916399999999998
	.quad	0x3fe5ee2003ab862b              # double 0.68531799999999998
	.quad	0x3fd8ce24bba12b5e              # double 0.38758199999999998
	.quad	0x3fe45cdb37c99ae9              # double 0.63633499999999998
	.quad	0x3fd00e8858ff7597              # double 0.25088700000000003
	.quad	0x3fcaa6b93ccd0fe9              # double 0.20821300000000001
	.quad	0x3fdc4fb1183b6028              # double 0.44236399999999998
	.quad	0x3fe4373083558a76              # double 0.63173699999999999
	.quad	0x3feae0d66f0cfe15              # double 0.83994599999999997
	.quad	0x3fd677079e59f2bb              # double 0.35101500000000002
	.quad	0x3fe02bbcb1cc9646              # double 0.50533899999999998
	.quad	0x3feacf4c6e6d9be5              # double 0.83780500000000002
	.quad	0x3fd41bbcf4e874c9              # double 0.314193
	.quad	0x3fef76f4be835dee              # double 0.98327100000000001
	.quad	0x3fec085f4a1272c9              # double 0.87602199999999997
	.quad	0x3fd66473471f7942              # double 0.349881
	.quad	0x3fe93c5bd0e12e84              # double 0.78861800000000004
	.quad	0x3f8942917507e9d9              # double 0.012333999999999999
	.quad	0x3fe1a1a2e7f6f4bf              # double 0.55098100000000005
	.quad	0x3fe70e581cf7878b              # double 0.72050099999999995
	.quad	0x3fef22a0a958537e              # double 0.97297699999999998
	.quad	0x3fc25b9e8c47a17f              # double 0.14342099999999999
	.quad	0x3fdea3bddfc9ff93              # double 0.478744
	.quad	0x3fbda027525460aa              # double 0.11572499999999999
	.quad	0x3f903dddb1209edc              # double 0.015861
	.quad	0x3fe0b49e01de2691              # double 0.52204799999999996
	.quad	0x3fddf355cd91eeaa              # double 0.46797699999999998
	.quad	0x3fe77da836eb4e98              # double 0.73408899999999999
	.quad	0x3fbb6ae7d566cf42              # double 0.1071
	.quad	0x3fa5fce3150dae3e              # double 0.042944999999999997
	.quad	0x3fdbec02f2f98740              # double 0.43628
	.quad	0x3fba05bc01a36e2f              # double 0.10165
	.quad	0x3fe0c723aafff36b              # double 0.52430900000000003
	.quad	0x3fb2d58c8eef1bac              # double 0.073570999999999998
	.quad	0x3fdad7060bb2bbaa              # double 0.41937400000000002
	.quad	0x3fe97922962cfd8f              # double 0.79603699999999999
	.quad	0x3fed63d5fdcdf698              # double 0.91843699999999995
	.quad	0x3fecb790fb65668c              # double 0.89740799999999998
	.quad	0x3fe78a45d41fa765              # double 0.73562899999999998
	.quad	0x3fe4405d52c16df4              # double 0.632857
	.quad	0x3feade657b84db9c              # double 0.83964799999999994
	.quad	0x3fd74f61672324c8              # double 0.36421999999999999
	.quad	0x3fd984c271fff79d              # double 0.39872800000000003
	.quad	0x3fd5082cf52b90a8              # double 0.32862400000000003
	.quad	0x3feda25b749adc90              # double 0.92606900000000003
	.quad	0x3fe175b3e1437c57              # double 0.54561800000000005
	.quad	0x3fddfe542e557de1              # double 0.46864800000000001
	.quad	0x3fd8d6494d50ebab              # double 0.38807900000000001
	.quad	0x3fe38897e996312f              # double 0.61042399999999997
	.quad	0x3fc81ce6c093d966              # double 0.18838199999999999
	.quad	0x3fe9c4a6223e186a              # double 0.80525500000000005
	.quad	0x3fe3381b64e05469              # double 0.60059899999999999
	.quad	0x3fe4d8fd5cb790fb              # double 0.65148799999999996
	.quad	0x3fe136a619da9c99              # double 0.53792099999999998
	.quad	0x3f8a99fa11a975b0              # double 0.012989000000000001
	.quad	0x3fddcd4ed2cbea4f              # double 0.46565600000000001
	.quad	0x3fe82c5c13fd0d06              # double 0.75541499999999995
	.quad	0x3fdb72c94b380cb7              # double 0.42888100000000001
	.quad	0x3fedcab81f969e3d              # double 0.93099600000000005
	.quad	0x3f9b71327243137b              # double 0.026799
	.quad	0x3fe3097204295a6c              # double 0.59490299999999996
	.quad	0x3fdbe37585be1a82              # double 0.43575799999999998
	.quad	0x3fe8d466f5019f3c              # double 0.77592799999999995
	.quad	0x3fea42c7fbacb429              # double 0.82065200000000005
	.quad	0x3fe208b97785729b              # double 0.56356499999999998
	.quad	0x3fce6f2e8c0485a1              # double 0.23776800000000001
	.quad	0x3fea5f28848387df              # double 0.82411599999999996
	.quad	0x3fee534df04ddb55              # double 0.94766899999999998
	.quad	0x3fe798a009f62307              # double 0.73738099999999995
	.quad	0x3fc6141e9af5ba2c              # double 0.172489
	.quad	0x3fe9509bf9c62a1b              # double 0.79108999999999996
	.quad	0x3fe870563ed0f627              # double 0.76371299999999998
	.quad	0x3fd3521dda059a74              # double 0.30188700000000002
	.quad	0x3fb6106ab14ec205              # double 0.086188000000000001
	.quad	0x3fe628848387df5d              # double 0.69244600000000001
	.quad	0x3fdc049a9973d9ec              # double 0.43778099999999998
	.quad	0x3fee051a86940358              # double 0.93812300000000004
	.quad	0x3fd79c2c1b10fd7e              # double 0.36890699999999998
	.quad	0x3fc40fd3b29a1ba0              # double 0.15673300000000001
	.quad	0x3fe16045baf533f4              # double 0.54300199999999998
	.quad	0x3fc870b8cfbfc654              # double 0.19094
	.quad	0x3fdfd35653c9abb0              # double 0.49727399999999999
	.quad	0x3fd03de6149c6f37              # double 0.253778
	.quad	0x3fe3be5b8561d430              # double 0.61698699999999995
	.quad	0x3fe59c0ca600b029              # double 0.67529899999999998
	.quad	0x3fe9903a7546d3fa              # double 0.79885600000000001
	.quad	0x3f8219a847b24639              # double 0.0088380000000000003
	.quad	0x3fe34f9c1f85d745              # double 0.603468
	.quad	0x3fc677f6b1a2a4db              # double 0.175536
	.quad	0x3fd9e8dda48b6523              # double 0.40483799999999998
	.quad	0x3fe70c026cc1ca3a              # double 0.72021599999999997
	.quad	0x3f89641f644955b4              # double 0.012397999999999999
	.quad	0x3fdf6f4384ba0e84              # double 0.49116599999999999
	.quad	0x3fef1a91105e1c15              # double 0.97199299999999999
	.quad	0x3fe589dadfb506dd              # double 0.67307799999999995
	.quad	0x3fd29b0ab2e1693c              # double 0.290713
	.quad	0x3fe74cb3a2595bbc              # double 0.72811300000000001
	.quad	0x3fe1ba68b19a415f              # double 0.55400499999999997
	.quad	0x3fe98e9f6a93f291              # double 0.79866000000000004
	.quad	0x3fec0a43bb40b34e              # double 0.87625299999999995
	.quad	0x3fe23456b441bb8c              # double 0.56888899999999998
	.quad	0x3fe22ae6c8f75537              # double 0.56773700000000005
	.quad	0x3fd46e935b91f70e              # double 0.319249
	.quad	0x3fd2a86d71f36263              # double 0.29153000000000001
	.quad	0x3fdbbe27179bfdf8              # double 0.43348100000000001
	.quad	0x3fed90ea9e6eeb70              # double 0.92393999999999998
	.quad	0x3fd616fc9bc77143              # double 0.34515299999999999
	.quad	0x3f99d451fc4c1659              # double 0.025224
	.quad	0x3fc73c36113404ea              # double 0.18152499999999999
	.quad	0x3fdce5d5b24e9c45              # double 0.45152799999999998
	.quad	0x3fd1d82ba5a03819              # double 0.27881899999999998
	.quad	0x3fd47903211cb03a              # double 0.319886
	.quad	0x3fe14ece9a2c6690              # double 0.54086999999999996
	.quad	0x3feb4be40420f6f1              # double 0.85301400000000005
	.quad	0x3fea413122b7baed              # double 0.82045800000000002
	.quad	0x3face358298cc144              # double 0.056422
	.quad	0x3fcb1b4784230fd0              # double 0.21177000000000001
	.quad	0x3fee020a30db6a1f              # double 0.93774900000000005
	.quad	0x3fdc35eb7457c0b1              # double 0.44079099999999999
	.quad	0x3fefe40a6b93ccd1              # double 0.996587
	.quad	0x3fe3871c53f39d1b              # double 0.61024299999999998
	.quad	0x3fe55c1a47a9e2bd              # double 0.667493
	.quad	0x3feb6c918e325d4a              # double 0.85700299999999996
	.quad	0x3fe94c70867ad8e4              # double 0.79058099999999997
	.quad	0x3fea37cfe5860136              # double 0.81931299999999996
	.quad	0x3fef9b068123810f              # double 0.98767400000000005
	.quad	0x3fe489e774eebf66              # double 0.64183400000000002
	.quad	0x3fe654b2745bf26f              # double 0.69783899999999999
	.quad	0x3fd62e72da122fad              # double 0.34658499999999998
	.quad	0x3fe2da98676a7265              # double 0.58918400000000004
	.quad	0x3fe047c0f4517614              # double 0.50875899999999996
	.quad	0x3fe65851654d61b3              # double 0.69828100000000004
	.quad	0x3fcee0daa0cae643              # double 0.24123700000000001
	.quad	0x3fda2ca148ba83f5              # double 0.408974
	.quad	0x3feb0323358f2e06              # double 0.84413300000000002
	.quad	0x3fd368900c521dda              # double 0.303257
	.quad	0x3fe3864cb5bb3850              # double 0.61014400000000002
	.quad	0x3fe0c0096feb4a66              # double 0.52344199999999996
	.quad	0x3fe69984a0e410b6              # double 0.70623999999999998
	.quad	0x3fcb3c254a3c6434              # double 0.21277299999999999
	.quad	0x3fcfa7b0b3919264              # double 0.247305
	.quad	0x3fbafc69728a6117              # double 0.10541399999999999
	.quad	0x3fbc1aef6f8f0414              # double 0.10978599999999999
	.quad	0x3fd00d1fa333764f              # double 0.250801
	.quad	0x3fe58705425f2021              # double 0.672732
	.quad	0x3fee7a311e85fd05              # double 0.95241600000000004
	.quad	0x3fcf49731098d478              # double 0.24442900000000001
	.quad	0x3fe073affb04ee7c              # double 0.51412199999999997
	.quad	0x3feb115df6555c53              # double 0.84587000000000001
	.quad	0x3fecb704790b8499              # double 0.89734100000000006
	.quad	0x3fd5de3fbbd7b203              # double 0.34168999999999999
	.quad	0x3fce4955b4677b39              # double 0.23661299999999999
	.quad	0x3feea9f59ccfaeff              # double 0.95824699999999995
	.quad	0x3fca351deefe4ffd              # double 0.20474600000000001
	.quad	0x3fe1d4306e5cd4ed              # double 0.55715199999999998
	.quad	0x3fe87b15b573eab3              # double 0.76502499999999996
	.quad	0x3fe8bb85e80bed74              # double 0.77289099999999999
	.quad	0x3fe81af5ba2be059              # double 0.75329100000000004
	.quad	0x3fe732314013ec46              # double 0.72487699999999999
	.quad	0x3fe4002e2328f9f4              # double 0.62502199999999997
	.quad	0x3feba0c8cd63cb81              # double 0.86337699999999995
	.quad	0x3fc997d49d7ba66a              # double 0.19994600000000001
	.quad	0x3fd78d4bad7d7c2d              # double 0.36799900000000002
	.quad	0x3fb208bfc2224edf              # double 0.070445999999999995
	.quad	0x3fdf34a44c7b02d6              # double 0.48758800000000002
	.quad	0x3fefb4bb5e0f7fd0              # double 0.99081200000000003
	.quad	0x3fe3f809917939a8              # double 0.62402800000000003
	.quad	0x3f9d1fe64f54d1e9              # double 0.028441999999999999
	.quad	0x3fe02ec6bce8533b              # double 0.50570999999999999
	.quad	0x3fa2604e1e71044f              # double 0.035890999999999999
	.quad	0x3f8fec13b9f127f6              # double 0.015587
	.quad	0x3fea005e5f30e7ff              # double 0.81254499999999996
	.quad	0x3fdb713f077ccc03              # double 0.42878699999999997
	.quad	0x3feb8f53c579f234              # double 0.86124599999999995
	.quad	0x3fe662bcf91a32b1              # double 0.69955299999999998
	.quad	0x3fc122c01e68a0d3              # double 0.13387299999999999
	.quad	0x3fd0bcf91a32b12d              # double 0.26153399999999999
	.quad	0x3fe4f7963992c8c5              # double 0.655223
	.quad	0x3fe250c804102ff9              # double 0.57236100000000001
	.quad	0x3fe3e5f5275ee99a              # double 0.62182099999999996
	.quad	0x3fb51d4738a3b57c              # double 0.082477999999999996
	.quad	0x3fd6c447c30d306a              # double 0.35572999999999999
	.quad	0x3fd79dfdac68a937              # double 0.36901800000000001
	.quad	0x3f9ef8055fbb517a              # double 0.030242999999999999
	.quad	0x3fd7d594f26aec07              # double 0.37241099999999999
	.quad	0x3fd966c2acb85a4f              # double 0.396897
	.quad	0x3feb1906cca2db62              # double 0.84680500000000003
	.quad	0x3fefd805e5f30e80              # double 0.99512
	.quad	0x3fe79e29b6b2af14              # double 0.73805699999999996
	.quad	0x3fe0ccc6822ff089              # double 0.52499700000000005
	.quad	0x3f96ba8c586876e2              # double 0.022196
	.quad	0x3fde17df19d66adb              # double 0.47020699999999999
	.quad	0x3fb5e43ed959a30a              # double 0.085514000000000006
	.quad	0x3fe73f359ff4fd6d              # double 0.72646599999999995
	.quad	0x3fe8c9e01de26916              # double 0.77464299999999997
	.quad	0x3fe4f48c2e770bd0              # double 0.65485199999999999
	.quad	0x3fe739991361dc94              # double 0.72578100000000001
	.quad	0x3fc28fb86f47b678              # double 0.145011
	.quad	0x3feffd2a62aa1944              # double 0.99965400000000004
	.quad	0x3fec822ff08893b8              # double 0.89089200000000002
	.quad	0x3fcfdd3bafd976ff              # double 0.24893899999999999
	.quad	0x3fe431e5c0b99913              # double 0.63109099999999996
	.quad	0x3fd2f0d413122b7c              # double 0.29594900000000002
	.quad	0x3fd5f89c5e6ff7e0              # double 0.34329900000000002
	.quad	0x3fe23b3a68b19a41              # double 0.56972999999999996
	.quad	0x3fe4e5796bfca85d              # double 0.65301200000000004
	.quad	0x3fe504449dbec248              # double 0.65677099999999999
	.quad	0x3fddfa11a975afb0              # double 0.46838800000000003
	.quad	0x3f99a3d2d87f8876              # double 0.025038999999999999
	.quad	0x3fe755b89939218a              # double 0.72921400000000003
	.quad	0x3fe6a0ab71327243              # double 0.70711299999999999
	.quad	0x3fecaf20ea5b530d              # double 0.89637800000000001
	.quad	0x3fe9fe670e2c12ae              # double 0.81230500000000005
	.quad	0x3fee5ba4d6e47dc3              # double 0.94868699999999995
	.quad	0x3fde92d55a3a083a              # double 0.47771200000000003
	.quad	0x3fe25616f86a0989              # double 0.57300899999999999
	.quad	0x3fdf93a2df9378ee              # double 0.49338599999999999
	.quad	0x3fe1f9420b3d4ae4              # double 0.56167699999999998
	.quad	0x3fe158f7121ab4b7              # double 0.54210999999999998
	.quad	0x3feb9e55c0fcb4f2              # double 0.86307800000000001
	.quad	0x3fd93bb40b34e768              # double 0.39426899999999998
	.quad	0x3fe06ef1bac2df0d              # double 0.51354299999999997
	.quad	0x3fdaa50507a6bd6f              # double 0.41632200000000003
	.quad	0x3fa2e48e8a71de6a              # double 0.036900000000000002
	.quad	0x3fe8cf5f4e4430b1              # double 0.77531399999999995
	.quad	0x3f989f40a2877ee5              # double 0.024045
	.quad	0x3fe554fbdad7518b              # double 0.66662399999999999
	.quad	0x3fd4d530489d27c4              # double 0.32551200000000002
	.quad	0x3fe1c4f3ba775fb3              # double 0.55529200000000001
	.quad	0x3fe538130164840e              # double 0.66309499999999999
	.quad	0x3fd363f572de43ee              # double 0.30297600000000002
	.quad	0x3fdc63baba7b9171              # double 0.44358700000000001
	.quad	0x3feba369fcf3dc05              # double 0.86369799999999997
	.quad	0x3fe9025e13b18dac              # double 0.78153899999999998
	.quad	0x3fd99d7fd82773e2              # double 0.40023799999999998
	.quad	0x3fee7d1bb4916ca4              # double 0.95277199999999995
	.quad	0x3fc56837f7be121f              # double 0.167243
	.quad	0x3fe666f2e8c0485a              # double 0.70006699999999999
	.quad	0x3fe77192ea52ef91              # double 0.73261399999999999
	.quad	0x3fd35dfa871a3b15              # double 0.30261100000000002
	.quad	0x3fe6005c4651f3e9              # double 0.68754400000000004
	.quad	0x3fc2bc9cd3e0bd45              # double 0.14638100000000001
	.quad	0x3fd144ed6fda836f              # double 0.26983200000000002
	.quad	0x3fee1e92923e5b85              # double 0.94123199999999996
	.quad	0x3fb9d31337eb28d8              # double 0.10087699999999999
	.quad	0x3feccae21101b003              # double 0.89976599999999995
	.quad	0x3fe2c4545846e8f3              # double 0.58646600000000004
	.quad	0x3feb74bc6a7ef9db              # double 0.85799999999999998
	.quad	0x3fc05a9a8049667b              # double 0.12776499999999999
	.quad	0x3fd2dc6195464dc2              # double 0.29470099999999999
	.quad	0x3fdeeb0b7c3504c5              # double 0.48309600000000003
	.quad	0x3fde923a29c779a7              # double 0.47767500000000002
	.quad	0x3fd27ed41b75a74c              # double 0.288991
	.quad	0x3fdb020817fc7608              # double 0.42199900000000001
	.quad	0x3fea973b85e80bed              # double 0.83096099999999995
	.quad	0x3fdbb6c7a7c9de05              # double 0.433031
	.quad	0x3fef790752da9867              # double 0.98352399999999995
	.quad	0x3fe27648c7192ea5              # double 0.57693899999999998
	.quad	0x3feb40767d34df05              # double 0.85161900000000001
	.quad	0x3fe564bcad9ad85e              # double 0.668547
	.quad	0x3feeaed99cbee808              # double 0.95884400000000002
	.quad	0x3fe5ab7132724313              # double 0.67717799999999995
	.quad	0x3feaa34eb9a176de              # double 0.83243500000000004
	.quad	0x3fcc28bb0a2ca9ac              # double 0.21999299999999999
	.quad	0x3feb0f6ad70e6f2f              # double 0.84563200000000005
	.quad	0x3fdffd933e35c5b5              # double 0.49985200000000002
	.quad	0x3fdb9a0f0a5efe93              # double 0.43127799999999999
	.quad	0x3fe053825e13b18e              # double 0.51019400000000004
	.quad	0x3fe437414a4d2b2c              # double 0.631745
	.quad	0x3febf1dc50ce4ead              # double 0.87327399999999999
	.quad	0x3fed6baade657b85              # double 0.91939300000000002
	.quad	0x3feb28fe260b2c84              # double 0.848754
	.quad	0x3fc5d67ba237cdcd              # double 0.17060800000000001
	.quad	0x3fc78055fbb517a4              # double 0.18360399999999999
	.quad	0x3fdbe5aff2a172ac              # double 0.435894
	.quad	0x3f7bf6a0dbad3a60              # double 0.0068269999999999997
	.quad	0x3fdf7f5e84f09529              # double 0.492149
	.quad	0x3fe2c7c73eee5259              # double 0.58688700000000005
	.quad	0x3feb6e264e48626f              # double 0.85719599999999996
	.quad	0x3fc9ea0ba1f4b1ee              # double 0.202455
	.quad	0x3fcaaeafab53d641              # double 0.208456
	.quad	0x3fdf2a94ff0025c0              # double 0.48697400000000002
	.quad	0x3fddbde3fbbd7b20              # double 0.46471499999999999
	.quad	0x3fd45b8130164841              # double 0.31808500000000001
	.quad	0x3fee98fc504816f0              # double 0.956175
	.quad	0x3fd7e56473471f79              # double 0.37337599999999999
	.quad	0x3fd9c3e74afd5454              # double 0.402582
	.quad	0x3fda4ce3de6149c7              # double 0.410943
	.quad	0x3fd7cdb37c99ae92              # double 0.37192999999999998
	.quad	0x3feeb28b6d86ec18              # double 0.959295
	.quad	0x3fb2dcb1465e8922              # double 0.073679999999999995
	.quad	0x3fe8a7b0b3919264              # double 0.77046999999999998
	.quad	0x3fddfcb4f1e4b44a              # double 0.46854899999999999
	.quad	0x3fd3e68e3ef28416              # double 0.31094699999999997
	.quad	0x3fdb81beb18116ec              # double 0.42979400000000001
	.quad	0x3fc12e8c0485a0be              # double 0.13423299999999999
	.quad	0x3feab19e731d2e0e              # double 0.83418199999999998
	.quad	0x3fe7244c7b02d59d              # double 0.72318099999999996
	.quad	0x3fe57c3504c48adf              # double 0.67141200000000001
	.quad	0x3fe04185058dde7a              # double 0.50799799999999995
	.quad	0x3fe93474107314cb              # double 0.78765300000000005
	.quad	0x3fdb380cb6c7a7ca              # double 0.42529600000000001
	.quad	0x3fd629ae4f3343fa              # double 0.34629399999999999
	.quad	0x3fe2ef5019f3c70d              # double 0.59171300000000004
	.quad	0x3fa85d744f5d3565              # double 0.047587999999999998
	.quad	0x3fd5603925bb7b6c              # double 0.33399800000000002
	.quad	0x3fe1ae7924af0bf2              # double 0.55254800000000004
	.quad	0x3fe9288ce703afb8              # double 0.78620000000000001
	.quad	0x3fe71a5ebb7739f3              # double 0.72196899999999997
	.quad	0x3fd15321e603d578              # double 0.27069900000000002
	.quad	0x3feb2411c2a02321              # double 0.84815300000000005
	.quad	0x3fe0881a1554fbdb              # double 0.51661400000000002
	.quad	0x3fef0eae18ac9f30              # double 0.97054200000000002
	.quad	0x3feff1f36262cba7              # double 0.99828499999999997
	.quad	0x3fb553bd1676640a              # double 0.083308999999999994
	.quad	0x3fedcc4ac6cdaf4b              # double 0.93118800000000002
	.quad	0x3fea907314ca9260              # double 0.830133
	.quad	0x3fe85f676ea4228a              # double 0.76164600000000005
	.quad	0x3fb9e76427c7c526              # double 0.101187
	.quad	0x3fed2c625e99e94b              # double 0.91166800000000003
	.quad	0x3fe53ee5eedcc20d              # double 0.66392799999999996
	.quad	0x3feedd052934acb0              # double 0.96448
	.quad	0x3fddb645a1cac083              # double 0.46425
	.quad	0x3fe33899392189be              # double 0.60065900000000005
	.quad	0x3fd77f5e84f09529              # double 0.367149
	.quad	0x3fec5e7ea5f84cad              # double 0.88653499999999996
	.quad	0x3fe75ffe6d58c8ef              # double 0.73046800000000001
	.quad	0x3feae9856a37ac3f              # double 0.84100600000000003
	.quad	0x3fd2fc9795b35b0c              # double 0.29666700000000001
	.quad	0x3fdb110e453d20f3              # double 0.42291600000000001
	.quad	0x3fa117d6b65a9a80              # double 0.033384999999999998
	.quad	0x3fedd1ac9afe1da8              # double 0.93184500000000003
	.quad	0x3fd4d113836a832c              # double 0.32526100000000002
	.quad	0x3fd30f840181e03f              # double 0.29782199999999998
	.quad	0x3fd32deca25529fe              # double 0.299678
	.quad	0x3fd931c219eb6391              # double 0.39366200000000001
	.quad	0x3fd9f9d6f112fd33              # double 0.40587400000000001
	.quad	0x3fe90214ad362e90              # double 0.78150399999999998
	.quad	0x3fea507c84b5dcc6              # double 0.82232499999999997
	.quad	0x3fdc985271bcdbbe              # double 0.446797
	.quad	0x3fd6da22f6a50d6b              # double 0.35706399999999999
	.quad	0x3feaa76d97b30f8c              # double 0.83293799999999995
	.quad	0x3fe497353b4b2fa9              # double 0.64345799999999997
	.quad	0x3fe026bb55ac03ff              # double 0.50472799999999995
	.quad	0x3fdf6eeb702602c9              # double 0.491145
	.quad	0x3fbc371da37ef5a9              # double 0.11021599999999999
	.quad	0x3fd44cf0739b024f              # double 0.31719599999999998
	.quad	0x3fed27807789a459              # double 0.91107199999999999
	.quad	0x3fe3516b97fe8ee7              # double 0.60368900000000003
	.quad	0x3fe5c755ffe6d58d              # double 0.68058300000000005
	.quad	0x3fe99ebc83a96d4c              # double 0.80062699999999997
	.quad	0x3feb6de1198aeb81              # double 0.85716300000000001
	.quad	0x3fd2861e92923e5c              # double 0.28943600000000003
	.quad	0x3fe200f345069a4e              # double 0.562616
	.quad	0x3feeea3bddfc9ff9              # double 0.96609299999999997
	.quad	0x3fdd6a2b1704ff43              # double 0.45960499999999999
	.quad	0x3feae147ae147ae1              # double 0.83999999999999997
	.quad	0x3feb2a60913a4f87              # double 0.84892299999999998
	.quad	0x3fd9242070b8cfc0              # double 0.39283000000000001
	.quad	0x3feee3ac0c62e4d2              # double 0.96529200000000004
	.quad	0x3fec04e618ce2d1f              # double 0.87559799999999999
	.quad	0x3fdb8f7985271bce              # double 0.43063200000000001
	.quad	0x3fe6bd33d29563aa              # double 0.71059600000000001
	.quad	0x3fd993293d102bc7              # double 0.39960699999999999
	.quad	0x3febf4b1ee243569              # double 0.87361999999999995
	.quad	0x3fe29ac14c660a20              # double 0.58139099999999999
	.quad	0x3fde290eed02cd3a              # double 0.47125600000000001
	.quad	0x3fca2b27cbf6e3f8              # double 0.20444200000000001
	.quad	0x3fe0546d3f9e7b81              # double 0.51030600000000004
	.quad	0x3fb0f8f8a4c1ebc8              # double 0.066298999999999997
	.quad	0x3fba8ac5c13fd0d0              # double 0.10367999999999999
	.quad	0x3fe4842b734b5137              # double 0.64113399999999998
	.quad	0x3fe5539b8887229f              # double 0.66645600000000005
	.quad	0x3fdf9014b599aa61              # double 0.49316900000000002
	.quad	0x3fe56cbd987c6328              # double 0.66952400000000001
	.quad	0x3fd169835158b828              # double 0.272065
	.quad	0x3fe655ed06fef7c2              # double 0.69798899999999997
	.quad	0x3fd010d38cda6e76              # double 0.251027
	.quad	0x3feeb178b3700475              # double 0.95916400000000001
	.quad	0x3fe8ab191dde3758              # double 0.77088599999999996
	.quad	0x3febd1b71758e219              # double 0.86934999999999996
	.quad	0x3fe9a0b5ed8d36b5              # double 0.80086800000000002
	.quad	0x3fb67ce0fc2eba28              # double 0.087843000000000004
	.quad	0x3fafb1c0010c6f7a              # double 0.061903
	.quad	0x3fe6bffef39085f5              # double 0.71093700000000004
	.quad	0x3fd98da7f3cf7015              # double 0.39927099999999999
	.quad	0x3fe7b84fd2a62aa2              # double 0.74124900000000005
	.quad	0x3fe62a9930be0ded              # double 0.69269999999999998
	.quad	0x3fd7e8d5410f94c8              # double 0.37358599999999997
	.quad	0x3fc670b8cfbfc654              # double 0.175315
	.quad	0x3fe62e09fe86833c              # double 0.69311999999999996
	.quad	0x3fe55c8fb86f47b6              # double 0.66754899999999995
	.quad	0x3fc5b7e0ac7da1ec              # double 0.16967399999999999
	.quad	0x3fe4ace24bba12b6              # double 0.64610400000000001
	.quad	0x3fe57d24180d3cff              # double 0.67152599999999996
	.quad	0x3fb308aac96cc5fc              # double 0.074351
	.quad	0x3fe1d67dbb16c1e3              # double 0.55743299999999996
	.quad	0x3fb6f0ae536501e2              # double 0.089609999999999995
	.quad	0x3fe68d25edd05293              # double 0.70472999999999997
	.quad	0x3fd4354c122749f1              # double 0.31575300000000001
	.quad	0x3fd4126202539757              # double 0.31362200000000001
	.quad	0x3fbdb9841aac53b1              # double 0.11611200000000001
	.quad	0x3fdb19bd4067cf1c              # double 0.42344599999999999
	.quad	0x3fe959d12cadddf4              # double 0.79221399999999997
	.quad	0x3fe9a222d5171e2a              # double 0.80104200000000003
	.quad	0x3f74a4d2b2bfdb4d              # double 0.0050400000000000002
	.quad	0x3fec36bd2b6f1993              # double 0.88168199999999997
	.quad	0x3fe060b6f9fcb0c0              # double 0.51180599999999998
	.quad	0x3fc2548a9bcfd4bf              # double 0.143205
	.quad	0x3fe72f46aa087ca6              # double 0.72452099999999997
	.quad	0x3fdff648c7192ea5              # double 0.49940699999999999
	.quad	0x3fb7f950b955f783              # double 0.093647999999999995
	.quad	0x3fe423cc8de2ac32              # double 0.62936999999999999
	.quad	0x3fd7d0bb6ed67770              # double 0.37211499999999997
	.quad	0x3fc8ae536501e258              # double 0.19281999999999999
	.quad	0x3feb6c7eae5bc87e              # double 0.85699400000000003
	.quad	0x3faebedfa43fe5c9              # double 0.060049999999999999
	.quad	0x3feccf765fd8adac              # double 0.90032500000000004
	.quad	0x3fc91f687b139c95              # double 0.196271
	.quad	0x3fa5ca07f66e86c6              # double 0.042556999999999998
	.quad	0x3fc5a91105e1c151              # double 0.16922200000000001
	.quad	0x3fd349774256bca5              # double 0.30135899999999999
	.quad	0x3fbecdd0d8cb07d1              # double 0.120328
	.quad	0x3fd3fee2c98e53eb              # double 0.31243199999999999
	.quad	0x3fd1a48b65237048              # double 0.27566800000000002
	.quad	0x3fecbed740c4156e              # double 0.89829599999999998
	.quad	0x3fe0e98fe69270b0              # double 0.52851099999999995
	.quad	0x3fe1cb790fb65669              # double 0.55608800000000003
	.quad	0x3fbd52f3c2dadb83              # double 0.114547
	.quad	0x3fe9b9841aac53b1              # double 0.80389600000000005
	.quad	0x3fe4f6922d948dc1              # double 0.65509899999999999
	.quad	0x3fcb2873bc903ea7              # double 0.212172
	.quad	0x3fe1ca5bd944aa54              # double 0.555952
	.quad	0x3fee06bbdbe3c105              # double 0.93832199999999999
	.quad	0x3fe419695d91ab8f              # double 0.62810200000000005
	.quad	0x3fd358dde7a743a6              # double 0.30229899999999998
	.quad	0x3fdc0b39192641b3              # double 0.43818499999999999
	.quad	0x3fd047ecfe9b7bf2              # double 0.25439000000000001
	.quad	0x3fe2766a55087011              # double 0.576955
	.quad	0x3fec080f98fa3769              # double 0.87598399999999998
	.quad	0x3f9189bd8383ad9f              # double 0.017127
	.quad	0x3faae7924af0bf1a              # double 0.052547999999999997
	.quad	0x3fe6184e3ffef391              # double 0.69046700000000005
	.quad	0x3fdfc3504c48adef              # double 0.49629600000000001
	.quad	0x3fcd9b994e1a3f46              # double 0.23131099999999999
	.quad	0x3fe5146a1a500d5f              # double 0.65874200000000005
	.quad	0x3fdede97d06bbdbe              # double 0.48233599999999999
	.quad	0x3fcdd523b3636f3b              # double 0.233067
	.quad	0x3feaa580c308feac              # double 0.83270299999999997
	.quad	0x3fd76e158750c1b9              # double 0.36609399999999997
	.quad	0x3fe00c88a47ecfea              # double 0.50153000000000003
	.quad	0x3fc28e3ef284167b              # double 0.14496600000000001
	.quad	0x3fe1d4bf0995aaf8              # double 0.55722000000000005
	.quad	0x3fee8e0008637bd0              # double 0.95483399999999996
	.quad	0x3fa2b3cc4ac6cdaf              # double 0.036527999999999998
	.quad	0x3fe52055757d5a9f              # double 0.66019700000000003
	.quad	0x3fa8ea9e6eeb7026              # double 0.048665
	.quad	0x3fe62224edf61240              # double 0.69166799999999995
	.quad	0x3fe00225742dcf46              # double 0.50026199999999998
	.quad	0x3fce47cb70ac3a86              # double 0.236566
	.quad	0x3fdeabda0dfdef85              # double 0.47923900000000003
	.quad	0x3fdfcf4623d0bfa1              # double 0.49702600000000002
	.quad	0x3fc95821294573a8              # double 0.19800200000000001
	.quad	0x3fea66d373affb05              # double 0.82505200000000001
	.quad	0x3fc5b55ac03ff690              # double 0.169597
	.quad	0x3fe1e8a0d349be90              # double 0.55964700000000001
	.quad	0x3f9c28f5c28f5c29              # double 0.0275
	.quad	0x3fd269014b599aa6              # double 0.287659
	.quad	0x3fb422ab25b317f0              # double 0.078654000000000001
	.quad	0x3fb6ca148ba83f4f              # double 0.089021000000000003
	.quad	0x3fe169ced0b30b5b              # double 0.54416600000000004
	.quad	0x3fefad2999567dbb              # double 0.98988799999999999
	.quad	0x3fd294b380cb6c7a              # double 0.29032599999999997
	.quad	0x3fec16ededaec4a4              # double 0.87779899999999999
	.quad	0x3fdadd26b723ee1c              # double 0.41974800000000001
	.quad	0x3fd777574f722e1b              # double 0.36665900000000001
	.quad	0x3f92795703f2d3c8              # double 0.018041000000000001
	.quad	0x3fe65c37a3db3bfb              # double 0.69875699999999996
	.quad	0x3fb68ef77f27fe4c              # double 0.088119000000000003
	.quad	0x3f8f3d7d3910c2c6              # double 0.015254
	.quad	0x3fdb780346dc5d64              # double 0.42920000000000003
	.quad	0x3fcbc5154866a11f              # double 0.21695200000000001
	.quad	0x3fecf049a9973d9f              # double 0.90433200000000002
	.quad	0x3fed920c069e7fb2              # double 0.92407799999999995
	.quad	0x3fd0743632c1f42c              # double 0.25709300000000002
	.quad	0x3fe0b9ae0c176577              # double 0.52266599999999996
	.quad	0x3feb54f5903a7547              # double 0.85412100000000002
	.quad	0x3fe6a2036006d0d5              # double 0.70727700000000004
	.quad	0x3faaa1511dffc548              # double 0.052012000000000003
	.quad	0x3fbade54b48d3ae7              # double 0.10495500000000001
	.quad	0x3fd9e004b7f5a533              # double 0.40429799999999999
	.quad	0x3fe770ae536501e2              # double 0.73250499999999996
	.quad	0x3fd1894812be48a6              # double 0.27400400000000003
	.quad	0x3fe847000431bde8              # double 0.75866699999999998
	.quad	0x3fdc078d92fb19e7              # double 0.43796099999999999
	.quad	0x3feb11a543f1c758              # double 0.84590399999999999
	.quad	0x3fc4c3c9eecbfb16              # double 0.16222500000000001
	.quad	0x3fcf07d0aed99cbf              # double 0.242426
	.quad	0x3fc89906cca2db62              # double 0.19217000000000001
	.quad	0x3fe08adcd2d44dcb              # double 0.51695100000000005
	.quad	0x3fe2eef8055fbb51              # double 0.59167099999999995
	.quad	0x3fe8adb1e9f27781              # double 0.77120299999999997
	.quad	0x3fe99df1172ef0ae              # double 0.80052999999999996
	.quad	0x3fd4fe931876188b              # double 0.328038
	.quad	0x3fdc4a6eb91b3f21              # double 0.44204300000000002
	.quad	0x3fc0f6f08cc575c0              # double 0.13253599999999999
	.quad	0x3fd574927913e814              # double 0.33523999999999998
	.quad	0x3fe8fef39085f4a1              # double 0.78112199999999998
	.quad	0x3fee7a743a647fdc              # double 0.95244799999999996
	.quad	0x3fef24180d3cff65              # double 0.97315600000000002
	.quad	0x3fe5bd7b2031ceaf              # double 0.67937999999999998
	.quad	0x3fe3f444e0daa0cb              # double 0.62356800000000001
	.quad	0x3fd45cfede97d06c              # double 0.31817600000000001
	.quad	0x3fe452934acaff6d              # double 0.63507999999999998
	.quad	0x3feb228134480629              # double 0.84796199999999999
	.quad	0x3fe9af922962cfd9              # double 0.80268200000000001
	.quad	0x3fe0e2e4d1a65061              # double 0.52769699999999997
	.quad	0x3fe6269df97aaac1              # double 0.692214
	.quad	0x3fe41b738e6d15ad              # double 0.62835099999999999
	.quad	0x3fdc6a4873365882              # double 0.44398700000000002
	.quad	0x3fd13760bf5d7881              # double 0.26900499999999999
	.quad	0x3fe96c4827b6fe2e              # double 0.79446799999999995
	.quad	0x3fda01ffb480a5ad              # double 0.40637200000000001
	.quad	0x3fd76cd29131ec0b              # double 0.36601699999999998
	.quad	0x3fc8b7564302b40f              # double 0.19309499999999999
	.quad	0x3fd22f76e6106ab1              # double 0.28414699999999998
	.quad	0x3fbff290abb44e51              # double 0.124795
	.quad	0x3fe3fec13b9f127f              # double 0.62484799999999996
	.quad	0x3fe79cbccf28c79f              # double 0.73788299999999996
	.quad	0x3fe159ddc1e7967d              # double 0.54222000000000004
	.quad	0x3fe52d9cf13cee9e              # double 0.66181800000000002
	.quad	0x3fde59578a2a90cd              # double 0.47420299999999999
	.quad	0x3fb25c70435efa61              # double 0.071722999999999995
	.quad	0x3fc0a25d8d79d0a6              # double 0.12995499999999999
	.quad	0x3fe385a708ede54b              # double 0.61006499999999997
	.quad	0x3fb04ef88b977857              # double 0.063704999999999998
	.quad	0x3fe0003eea209aaa              # double 0.50002999999999997
	.quad	0x3fe16be9c886162f              # double 0.54442299999999999
	.quad	0x3fe2f6be37de939f              # double 0.59262000000000004
	.quad	0x3fe062b27cbf6e3f              # double 0.51204799999999995
	.quad	0x3fed97c3d68405b4              # double 0.92477600000000004
	.quad	0x3fc4d86ec17ebaf1              # double 0.162855
	.quad	0x3fc2c2a454de7ea6              # double 0.146565
	.quad	0x3fb053f39d1b2e5a              # double 0.063781000000000004
	.quad	0x3fe99c864883fd50              # double 0.80035699999999999
	.quad	0x3fcf4e5d5b24e9c4              # double 0.24457899999999999
	.quad	0x3fc8d7d7c2ca148c              # double 0.19408700000000001
	.quad	0x3fd0e40420f6f08d              # double 0.26391700000000001
	.quad	0x3feac827b6fe2e6f              # double 0.83693300000000004
	.quad	0x3fc5829068986fce              # double 0.168047
	.quad	0x3fd6ad57bc7f77af              # double 0.35432999999999998
	.quad	0x3fe27afc8b0079a3              # double 0.57751300000000005
	.quad	0x3fd18cd20afa2f06              # double 0.27422000000000002
	.quad	0x3fd967ad8e432442              # double 0.396953
	.quad	0x3fe8bccf28c79f66              # double 0.77304799999999996
	.quad	0x3fe08c4156e264e5              # double 0.51712100000000005
	.quad	0x3feec944ed6fda83              # double 0.96206899999999995
	.quad	0x3fec4126a65cf67b              # double 0.88295299999999999
	.quad	0x3fd5116228134480              # double 0.32918599999999998
	.quad	0x3febfd2a62aa1944              # double 0.87465400000000004
	.quad	0x3fb909aed56b0100              # double 0.097804000000000002
	.quad	0x3fe8440f23897204              # double 0.75830799999999998
	.quad	0x3fc9727136a400fc              # double 0.19880500000000001
	.quad	0x3fdf03fb3743632c              # double 0.48461799999999999
	.quad	0x3fb46583e8576cce              # double 0.079673999999999994
	.quad	0x3fee0e9b38d60a63              # double 0.93928299999999998
	.quad	0x3fb65daf07bfe7e2              # double 0.087367
	.quad	0x3fdfa2f8bdec5f39              # double 0.49432199999999998
	.quad	0x3fd86df82b1f687b              # double 0.381712
	.quad	0x3fc26c3b927d45a6              # double 0.143928
	.quad	0x3fedd74927913e81              # double 0.93252999999999997
	.quad	0x3fda694898f605ab              # double 0.41267599999999999
	.quad	0x3fe13955f78359bc              # double 0.53824899999999998
	.quad	0x3fc14c8ffb8b2639              # double 0.13514899999999999
	.quad	0x3fee810e8858ff76              # double 0.95325400000000005
	.quad	0x3fe3ac42e9899bf6              # double 0.61477800000000005
	.quad	0x3fe0ae5ffa3b9ae1              # double 0.52128600000000003
	.quad	0x3fe1c069e7fb267c              # double 0.55473799999999995
	.quad	0x3fe8020c49ba5e35              # double 0.75024999999999997
	.quad	0x3f80ced4e4c942d5              # double 0.0082070000000000007
	.quad	0x3fe78a8f3a9b0681              # double 0.73566399999999998
	.quad	0x3fe95338f7985272              # double 0.79140900000000003
	.quad	0x3fdcce9a2c669058              # double 0.45011000000000001
	.quad	0x3fec1f72f76e6107              # double 0.87883900000000004
	.quad	0x3fdb667b5f1bef4a              # double 0.42813000000000001
	.quad	0x3fe790795f676ea4              # double 0.73638599999999999
	.quad	0x3fe1087a8d64d7f1              # double 0.53228500000000001
	.quad	0x3fd3cae21101b003              # double 0.30925799999999998
	.quad	0x3fe359ab6d00b45b              # double 0.60469600000000001
	.quad	0x3fe9d308bb906467              # double 0.80701100000000003
	.quad	0x3fea6dbf8b9baa15              # double 0.82589699999999999
	.quad	0x3fe6bfa6defc7a3a              # double 0.71089500000000005
	.quad	0x3fe1bd07c84b5dcc              # double 0.55432499999999996
	.quad	0x3fe03dee78183f92              # double 0.50756000000000001
	.quad	0x3fd9aa10e0221427              # double 0.401005
	.quad	0x3fc97867f0aa21a7              # double 0.198987
	.quad	0x3fb3704790b84988              # double 0.075931999999999999
	.quad	0x3fe55831f03d145e              # double 0.66701600000000005
	.quad	0x3fcf2ae07e5a78f2              # double 0.24349599999999999
	.quad	0x3fe6d710880d801b              # double 0.71375299999999997
	.quad	0x3fd0f151e75360d0              # double 0.26472899999999999
	.quad	0x3fe0b9eadd590c0b              # double 0.52269500000000002
	.quad	0x3fc62bc72e275ab8              # double 0.173211
	.quad	0x3fedd23b3636f3b2              # double 0.93191299999999999
	.quad	0x3fd117225b749add              # double 0.26703700000000002
	.quad	0x3fc0610f0e90bc7b              # double 0.12796199999999999
	.quad	0x3fd0d92b7fe08af0              # double 0.26325500000000002
	.quad	0x3fc44cb5bb384fd3              # double 0.15859100000000001
	.quad	0x3fdeb5286b59146e              # double 0.47980699999999998
	.quad	0x3fef20685553ef6b              # double 0.97270599999999995
	.quad	0x3fcd4b7b28954a80              # double 0.22886600000000001
	.quad	0x3fe04da09cc319c6              # double 0.50947600000000004
	.quad	0x3fc0106ab14ec205              # double 0.125501
	.quad	0x3fed6a7264a16a48              # double 0.91924399999999995
	.quad	0x3fea25c3dee78184              # double 0.81711
	.quad	0x3fe8e963dc486ad3              # double 0.77849000000000002
	.quad	0x3fe8ff737da61e0c              # double 0.78118299999999996
	.quad	0x3fb81248d7e02646              # double 0.094029000000000001
	.quad	0x3fe686162f166e01              # double 0.70386800000000005
	.quad	0x3fe57e62dc6e2a80              # double 0.671678
	.quad	0x3fefc5cbbc2b94d9              # double 0.99289499999999997
	.quad	0x3fd13311a543f1c7              # double 0.26874199999999998
	.quad	0x3fc4588a04d12019              # double 0.15895200000000001
	.quad	0x3fbacb20fb224aae              # double 0.10466200000000001
	.quad	0x3facaa7589efd86b              # double 0.055988000000000003
	.quad	0x3fae4649906cca2e              # double 0.059130000000000002
	.quad	0x3fee2077036c9c0b              # double 0.94146300000000005
	.quad	0x3fe8416bdb1a6d6a              # double 0.75798600000000005
	.quad	0x3fe83ebbfd71b047              # double 0.75765800000000005
	.quad	0x3fd4a3a08398a655              # double 0.32248700000000002
	.quad	0x3fd54028e4fb97bb              # double 0.33204099999999998
	.quad	0x3fe675ab7dc7abfc              # double 0.70186400000000004
	.quad	0x3fec4154c985f06f              # double 0.88297499999999995
	.quad	0x3fed4cfaeff5c6c1              # double 0.91564699999999999
	.quad	0x3fdd52157689ca19              # double 0.45813500000000001
	.quad	0x3fdd11409a240315              # double 0.45417800000000003
	.quad	0x3fdfbbcb1cc96463              # double 0.49583700000000003
	.quad	0x3fed445ed4a1ad64              # double 0.91459599999999996
	.quad	0x3fd0ff2a172abef0              # double 0.26557399999999998
	.quad	0x3fee4faeff5c6c12              # double 0.94722700000000004
	.quad	0x3fe1dde15ca6ca04              # double 0.55833500000000003
	.quad	0x3fd5347a5b0ff10f              # double 0.33132800000000001
	.quad	0x3fef0ac18f81e8a3              # double 0.970063
	.quad	0x3fe88e4b87bdcf03              # double 0.76737
	.quad	0x3fdd595feda66128              # double 0.45857999999999999
	.quad	0x3fd94070329802c1              # double 0.39455800000000002
	.quad	0x3fd50dfdef8487ba              # double 0.32897900000000002
	.quad	0x3fdc30f8c64fdb0a              # double 0.44048900000000002
	.quad	0x3fdea33bd9cae211              # double 0.478713
	.quad	0x3fd0d3458cd20afa              # double 0.26289499999999999
	.quad	0x3fe45610adcd2d45              # double 0.63550600000000002
	.quad	0x3fe0d2263d816acf              # double 0.52565300000000004
	.quad	0x3fef48adeebb341e              # double 0.97762199999999999
	.quad	0x3fe53cf0b6b6e0d2              # double 0.66368899999999997
	.quad	0x3fb20f9096bb98c8              # double 0.070550000000000002
	.quad	0x3fc8e28ed5f138bd              # double 0.194414
	.quad	0x3fe022a2c2374795              # double 0.50422800000000001
	.quad	0x3fcc897635e7429a              # double 0.222945
	.quad	0x3fd27192ea52ef91              # double 0.28818199999999999
	.quad	0x3fc0295208e15012              # double 0.12626100000000001
	.quad	0x3fea11d14e3bcd36              # double 0.81467500000000004
	.quad	0x3fe883126e978d50              # double 0.76600000000000001
	.quad	0x3fe5d7060bb2bbaa              # double 0.68249800000000005
	.quad	0x3fd851a86940357a              # double 0.37998399999999999
	.quad	0x3fdd7de0d66f0cfe              # double 0.460808
	.quad	0x3feca5e353f7ced9              # double 0.89524999999999999
	.quad	0x3fe5be1c9b413986              # double 0.67945699999999998
	.quad	0x3febe0b6f9fcb0c0              # double 0.87118099999999998
	.quad	0x3fe18b1bbcf4e875              # double 0.54823100000000002
	.quad	0x3fef8c8cd63cb817              # double 0.98590699999999997
	.quad	0x3fd725fe974a3401              # double 0.36169400000000002
	.quad	0x3feff6f4be835dee              # double 0.99889600000000001
	.quad	0x3febbaeee957470f              # double 0.86656900000000003
	.quad	0x3fe726351deefe50              # double 0.723414
	.quad	0x3fec070fbeb9e493              # double 0.87586200000000003
	.quad	0x3fdebaba7b9170d6              # double 0.48014699999999999
	.quad	0x3fea60285ec3dab6              # double 0.82423800000000003
	.quad	0x3fc9939a7c17a893              # double 0.19981699999999999
	.quad	0x3fefa3033a4723ab              # double 0.988649
	.quad	0x3fc7009b30728e93              # double 0.179706
	.quad	0x3f831d2e0e30446b              # double 0.0093329999999999992
	.quad	0x3fef381b64e05469              # double 0.97559899999999999
	.quad	0x3fa88b11409a2403              # double 0.047935999999999999
	.quad	0x3face8d972cd7cf6              # double 0.056464
	.quad	0x3fb3476295208e15              # double 0.075308
	.quad	0x3fda5bf26f1dc50d              # double 0.41186200000000001
	.quad	0x3fd8ace24bba12b6              # double 0.38555200000000001
	.quad	0x3fd137d63022dd7b              # double 0.26903300000000002
	.quad	0x3feb9d451fc4c166              # double 0.86294800000000005
	.quad	0x3fea9b1b79d909f2              # double 0.83143400000000001
	.quad	0x3fe611947cfa26a2              # double 0.68964599999999998
	.quad	0x3fe424e592967019              # double 0.62950399999999995
	.quad	0x3fc202d9cf13ceea              # double 0.140712
	.quad	0x3fca4588a04d1202              # double 0.20524700000000001
	.quad	0x3fdb885d31337eb3              # double 0.43019800000000002
	.quad	0x3febaaa19439de48              # double 0.86457899999999999
	.quad	0x3fdbadc0980b2420              # double 0.43247999999999998
	.quad	0x3fef03be6601bc99              # double 0.96920700000000004
	.quad	0x3fe42d794a6eb91b              # double 0.63055099999999997
	.quad	0x3feef22c01e68a0d              # double 0.96706199999999997
	.quad	0x3fcb1fddebd9018e              # double 0.21190999999999999
	.quad	0x3fddf57b41bfbdf1              # double 0.46810800000000002
	.quad	0x3feb1f81a5870da6              # double 0.84759600000000002
	.quad	0x3fd77d1fe64f54d2              # double 0.367012
	.quad	0x3fde229e90795f67              # double 0.47086299999999998
	.quad	0x3fefaacfb762d83c              # double 0.98960099999999995
	.quad	0x3fefb74bc6a7ef9e              # double 0.99112500000000003
	.quad	0x3fd3465625a682b6              # double 0.30116799999999999
	.quad	0x3fe8393ccd0fe8ab              # double 0.75698699999999997
	.quad	0x3fca007dd4413554              # double 0.20313999999999999
	.quad	0x3fea21a2e7f6f4bf              # double 0.81660600000000005
	.quad	0x3fce89f40a2877ee              # double 0.23858499999999999
	.quad	0x3fc04b018611fd59              # double 0.12728900000000001
	.quad	0x3fe3c7cb70ac3a86              # double 0.61813899999999999
	.quad	0x3fe8f22e1ac57e24              # double 0.779563
	.quad	0x3fd1646ae3a3a8e7              # double 0.271754
	.quad	0x3fd7f0cbaf965b21              # double 0.37407200000000002
	.quad	0x3fc4b05b7cfe5860              # double 0.161632
	.quad	0x3fe873f52fc2656b              # double 0.76415500000000003
	.quad	0x3fe6ea400fba8827              # double 0.71609500000000004
	.quad	0x3fe05eca25529fe0              # double 0.511571
	.quad	0x3fbc090b417ca212              # double 0.109513
	.quad	0x3fe64df69878316a              # double 0.697017
	.quad	0x3fe4de00d1b71759              # double 0.65210000000000001
	.quad	0x3fc30fe8ab4fa483              # double 0.148923
	.quad	0x3fdbaab474107315              # double 0.43229400000000001
	.quad	0x3fd399ae924f227d              # double 0.306255
	.quad	0x3fd92862f5989df1              # double 0.39308999999999999
	.quad	0x3fe565e2478854ce              # double 0.66868700000000003
	.quad	0x3fc389c5e6ff7dfa              # double 0.152642
	.quad	0x3fef1ccfaeff5c6c              # double 0.97226699999999999
	.quad	0x3f97c17a89331a09              # double 0.023199000000000001
	.quad	0x3fb4b5675579af19              # double 0.080893000000000007
	.quad	0x3fe07a072d1aeb3e              # double 0.51489600000000002
	.quad	0x3fec02ea960b6fa0              # double 0.87535600000000002
	.quad	0x3fdc54195cc857f3              # double 0.442633
	.quad	0x3fe29ea57214f052              # double 0.58186599999999999
	.quad	0x3fb579e16d6dc1a4              # double 0.083890999999999993
	.quad	0x3fa6525892684cf0              # double 0.043596999999999997
	.quad	0x3fe9be8ff327aa69              # double 0.804512
	.quad	0x3fe489c3ce2089e3              # double 0.64181699999999997
	.quad	0x3f9eebf65dbfceb8              # double 0.030197000000000002
	.quad	0x3fe6ca8198f1d3ed              # double 0.71221999999999996
	.quad	0x3fe043a860dcb9aa              # double 0.50825900000000002
	.quad	0x3fe7962ae4b01861              # double 0.73708099999999999
	.quad	0x3fd6f0d413122b7c              # double 0.35844900000000002
	.quad	0x3fe79b30728e92d5              # double 0.73769399999999996
	.quad	0x3fe1c1d8e8640208              # double 0.55491299999999999
	.quad	0x3fe71e12a51e321a              # double 0.72242099999999998
	.quad	0x3feb47a7c9de0503              # double 0.85249699999999995
	.quad	0x3fe59973d9ec7000              # double 0.67498199999999997
	.quad	0x3fe1ae9680e06530              # double 0.552562
	.quad	0x3fd686ec17ebaf10              # double 0.35198499999999999
	.quad	0x3fd970e2c12ad81b              # double 0.39751500000000001
	.quad	0x3fe5b9d5e4a38327              # double 0.67893499999999996
	.quad	0x3fe45d82fd75e204              # double 0.63641499999999995
	.quad	0x3fd2ffb04ee7c4a0              # double 0.29685600000000001
	.quad	0x3fe29bbadc0980b2              # double 0.58150999999999997
	.quad	0x3fdca604e1e71045              # double 0.447633
	.quad	0x3fcfb1183b60285f              # double 0.24759200000000001
	.quad	0x3feba6a444178705              # double 0.86409199999999997
	.quad	0x3fe0a584f4c6e6da              # double 0.52020500000000003
	.quad	0x3fe84b70ac3a860e              # double 0.75920900000000002
	.quad	0x3fe8468ec52a411c              # double 0.75861299999999998
	.quad	0x3febffa7eb6bf445              # double 0.87495800000000001
	.quad	0x3fe8bff8a8f3a9b0              # double 0.77343399999999995
	.quad	0x3fe8ce52deca2553              # double 0.77518600000000004
	.quad	0x3fe354152b0a6fc6              # double 0.60401400000000005
	.quad	0x3fe6929888f861a6              # double 0.70539499999999999
	.quad	0x3feb88919ef954eb              # double 0.86042099999999999
	.quad	0x3fe16050374ff866              # double 0.54300700000000002
	.quad	0x3fe4eb8305d95dd5              # double 0.65374900000000002
	.quad	0x3fea26698bb4d489              # double 0.81718900000000005
	.quad	0x3fdd3947496aad1d              # double 0.456621
	.quad	0x3fc2d1d8a5482385              # double 0.14702899999999999
	.quad	0x3fdc6eefa1e3eaf7              # double 0.44427100000000003
	.quad	0x3fe59f03d145d851              # double 0.67566099999999996
	.quad	0x3fc354d1e96c3fc4              # double 0.15102599999999999
	.quad	0x3fd7804102ff8ec1              # double 0.367203
	.quad	0x3fe61bae46cfc82a              # double 0.69087900000000002
	.quad	0x3fbce496ededaec5              # double 0.112863
	.quad	0x3fe705ec3dab5c3a              # double 0.71947300000000003
	.quad	0x3fe5d9fb1e18efbb              # double 0.68285899999999999
	.quad	0x3fbd5d91ab8e8ea4              # double 0.11470900000000001
	.quad	0x3fe4aa1b5c7cd899              # double 0.64576500000000003
	.quad	0x3fb48b545c78a6db              # double 0.080251000000000003
	.quad	0x3fe73484d76ab580              # double 0.72516099999999994
	.quad	0x3fd625247cb70ac4              # double 0.34601700000000002
	.quad	0x3feeab042528ae75              # double 0.958376
	.quad	0x3faaf6e82949a565              # double 0.052664999999999997
	.quad	0x3fc8dfaca3619978              # double 0.194326
	.quad	0x3fd9d206c8711d7a              # double 0.40344400000000002
	.quad	0x3fea3e0370cdc875              # double 0.82006999999999997
	.quad	0x3fdc5d8d79d0a676              # double 0.44320999999999999
	.quad	0x3fdc6cd29131ec0b              # double 0.44414199999999998
	.quad	0x3fe303126e978d50              # double 0.59412500000000001
	.quad	0x3fc12ecf20642396              # double 0.134241
	.quad	0x3fbecebbba55d1c4              # double 0.120342
	.quad	0x3fcc0c176577531e              # double 0.21911900000000001
	.quad	0x3fee9314445aa2e4              # double 0.95545400000000002
	.quad	0x3fe31a415f45e0b5              # double 0.59695500000000001
	.quad	0x3fe0244e93e1c9b4              # double 0.50443199999999999
	.quad	0x3fd58c9320d9945b              # double 0.33670499999999998
	.quad	0x3fe750bfa0945f9e              # double 0.728607
	.quad	0x3fc849ba5e353f7d              # double 0.18975
	.quad	0x3fced31fcd24e161              # double 0.240818
	.quad	0x3f9f7d73c9257860              # double 0.030752000000000002
	.quad	0x3fe6dc8d9f9053a0              # double 0.71442300000000003
	.quad	0x3fb1bc77143393ab              # double 0.069281999999999996
	.quad	0x3fe2220bc382a130              # double 0.56665600000000005
	.quad	0x3fb342bb6672fba0              # double 0.075236999999999998
	.quad	0x3fefe1e92923e5b8              # double 0.99632699999999996
	.quad	0x3fd4452c59fb1e19              # double 0.316722
	.quad	0x3fe30c0485a0be51              # double 0.595217
	.quad	0x3fca30ec31162281              # double 0.20461799999999999
	.quad	0x3fe22aa19439de48              # double 0.56770399999999999
	.quad	0x3fa5471715c63ae2              # double 0.041557999999999998
	.quad	0x3fe0d50870110a13              # double 0.52600499999999994
	.quad	0x3fe420ccff21b3af              # double 0.62900400000000001
	.quad	0x3feaac42e9899bf6              # double 0.83352800000000005
	.quad	0x3fbca686e7e62dc7              # double 0.111916
	.quad	0x3fe6c727dcbddb98              # double 0.71181099999999997
	.quad	0x3fdfef77f27fe4bd              # double 0.49899100000000002
	.quad	0x3fd14a66559f6ec6              # double 0.27016600000000002
	.quad	0x3fdc1a2a4db163bb              # double 0.43909700000000002
	.quad	0x3feae9bbf0dc768e              # double 0.841032
	.quad	0x3fe2ce39b456b442              # double 0.58767400000000003
	.quad	0x3fb162ae4b018612              # double 0.067912
	.quad	0x3fedc0df58c08b76              # double 0.92979400000000001
	.quad	0x3fd4774eebf65dc0              # double 0.31978200000000001
	.quad	0x3fe120b1bbcf4e87              # double 0.53524099999999997
	.quad	0x3fe82e5bc87db2b3              # double 0.75565899999999997
	.quad	0x3fef3404ea4a8c15              # double 0.97509999999999996
	.quad	0x3fd7e878fabda0e0              # double 0.37356400000000001
	.quad	0x3fe247192ea52ef9              # double 0.57117899999999999
	.quad	0x3fc8625e99e94ab2              # double 0.190502
	.quad	0x3fe3da5b9628cbd1              # double 0.62040499999999998
	.quad	0x3fef31b152f3c2db              # double 0.97481600000000001
	.quad	0x3fd8d972cd7cf5f5              # double 0.38827200000000001
	.quad	0x3fe5186fcdee34fc              # double 0.65923299999999996
	.quad	0x3fb7efe0ce0b912e              # double 0.093504000000000003
	.quad	0x3feb32fec56d5cfb              # double 0.84997500000000004
	.quad	0x3fdfefb6dca07f67              # double 0.49900600000000001
	.quad	0x3fece8f08461f9f0              # double 0.90343499999999999
	.quad	0x3fe1ebc408d8ec96              # double 0.56003000000000003
	.quad	0x3fe4689ca18bd662              # double 0.63776999999999995
	.quad	0x3feb3a2be0589acc              # double 0.85085100000000002
	.quad	0x3fe85eaab042528b              # double 0.76155600000000001
	.quad	0x3fd3dea897635e74              # double 0.31046499999999999
	.quad	0x3fe7fc9bc7714339              # double 0.74958599999999997
	.quad	0x3fe308d08919ef95              # double 0.59482599999999997
	.quad	0x3fea64c51116a8b9              # double 0.82480100000000001
	.quad	0x3f9c857f3061c79b              # double 0.027852999999999999
	.quad	0x3fba358298cc1440              # double 0.102379
	.quad	0x3fcc53b8e4b87bdd              # double 0.221305
	.quad	0x3fdc04f2ae07e5a8              # double 0.43780200000000002
	.quad	0x3fcf4bd76ee73e68              # double 0.244502
	.quad	0x3fee9f383f0bae8a              # double 0.95693600000000001
	.quad	0x3fed64b2314013ec              # double 0.91854199999999996
	.quad	0x3fdb6106ab14ec20              # double 0.42779699999999998
	.quad	0x3feb8a4e379b77c0              # double 0.86063299999999998
	.quad	0x3fdab87bdcf0307f              # double 0.41750999999999999
	.quad	0x3fee9847f562174c              # double 0.95608899999999996
	.quad	0x3fd6f6555c52e72e              # double 0.35878500000000002
	.quad	0x3fed12a737110e45              # double 0.90852699999999997
	.quad	0x3fddcbff47735c18              # double 0.46557599999999999
	.quad	0x3fd89abb01c92ddc              # double 0.38444400000000001
	.quad	0x3fdad37c1376d549              # double 0.41915799999999998
	.quad	0x3fb00cf9e3864cb6              # double 0.062698000000000004
	.quad	0x3feb821f2990f302              # double 0.85963400000000001
	.quad	0x3fe6e605ee568a50              # double 0.71557899999999997
	.quad	0x3fdf43632c1f42bb              # double 0.48848799999999998
	.quad	0x3fc56e2eb1c432ca              # double 0.16742499999999999
	.quad	0x3fe33f63c31df762              # double 0.60148800000000002
	.quad	0x3fe417bb73083559              # double 0.62789700000000004
	.quad	0x3fe83bc2b94d9408              # double 0.75729500000000005
	.quad	0x3fc9fee2c98e53eb              # double 0.20309099999999999
	.quad	0x3fde1b2e59af9ebf              # double 0.47040900000000002
	.quad	0x3fd97b02d59d55e7              # double 0.39813300000000001
	.quad	0x3fed5e5082cf52b9              # double 0.917763
	.quad	0x3fec0a5269595fee              # double 0.87626000000000004
	.quad	0x3fd245f9df548ece              # double 0.28552100000000002
	.quad	0x3fdf63e4abe6a338              # double 0.49047200000000002
	.quad	0x3fe8413fd0d0678c              # double 0.75796499999999999
	.quad	0x3fe8a68d32830a0b              # double 0.77033099999999999
	.quad	0x3fd2705425f20210              # double 0.28810599999999997
	.quad	0x3fc9f4ba51a005c4              # double 0.20278099999999999
	.quad	0x3fd51adea897635e              # double 0.32976499999999997
	.quad	0x3fe7bfb9bed30f06              # double 0.74215399999999998
	.quad	0x3fd2c9f72f76e610              # double 0.29357699999999998
	.quad	0x3fb488a47ecfe9b8              # double 0.080210000000000004
	.quad	0x3fe43c558644523f              # double 0.63236499999999995
	.quad	0x3fc6ee631f8a0903              # double 0.17915
	.quad	0x3fec1acde19fc2a9              # double 0.87827200000000005
	.quad	0x3fbf471f79420b3d              # double 0.122179
	.quad	0x3fe1212f901083dc              # double 0.53530100000000003
	.quad	0x3fd002ababead4f6              # double 0.25016300000000002
	.quad	0x3feb403bc4d22c88              # double 0.85159099999999999
	.quad	0x3fd5eb313be22e5e              # double 0.34248000000000001
	.quad	0x3fefd41d8e864021              # double 0.99464300000000005
	.quad	0x3feb17507e9d94d1              # double 0.84659600000000002
	.quad	0x3fe4e3d816aceaaf              # double 0.65281299999999998
	.quad	0x3fe859f2ba9d1f60              # double 0.76097999999999998
	.quad	0x3fd45d52c16df3f9              # double 0.31819599999999998
	.quad	0x3fde82adc4c9c90c              # double 0.47672599999999998
	.quad	0x3fdbb2e9ccb7d417              # double 0.43279499999999999
	.quad	0x3fe53cdbbe0157ef              # double 0.66367900000000002
	.quad	0x3fd63804534bd76f              # double 0.34716900000000001
	.quad	0x3fb77ed41b75a74c              # double 0.091778999999999999
	.quad	0x3fe294b380cb6c7a              # double 0.58065199999999995
	.quad	0x3fe0a6fe718a86d7              # double 0.52038499999999999
	.quad	0x3fd86aa087ca643d              # double 0.38150800000000001
	.quad	0x3fe5c61f9f01b867              # double 0.68043500000000001
	.quad	0x3fef99ac79702e66              # double 0.98750899999999997
	.quad	0x3fe23f4a98aa8651              # double 0.57022600000000001
	.quad	0x3fdc0bbf50e34763              # double 0.43821700000000002
	.quad	0x3fe3b0b5aa715832              # double 0.61532100000000001
	.quad	0x3fd827525460aa65              # double 0.37740000000000001
	.quad	0x3fede145953586cb              # double 0.93374900000000005
	.quad	0x3fe2496cc5fbf834              # double 0.57146300000000005
	.quad	0x3fc7e2ac322291fb              # double 0.18660499999999999
	.quad	0x3feb06c00da1a933              # double 0.84457400000000005
	.quad	0x3fbcb6e935b91f71              # double 0.112166
	.quad	0x3fd8e3c968943e10              # double 0.388903
	.quad	0x3fe938561d4306e6              # double 0.78812700000000002
	.quad	0x3fc0b4a66559f6ec              # double 0.13051299999999999
	.quad	0x3fe57021d10b1fef              # double 0.66993800000000003
	.quad	0x3fe053458cd20afa              # double 0.51016499999999998
	.quad	0x3f81e6cd29131ec1              # double 0.0087410000000000005
	.quad	0x3fd70d0247021d11              # double 0.36016900000000002
	.quad	0x3fe4bdfb0d51f81a              # double 0.64819099999999996
	.quad	0x3fd1a15db3397dd0              # double 0.275474
	.quad	0x3fcd484d76ab5808              # double 0.228769
	.quad	0x3fddb899392189be              # double 0.46439200000000003
	.quad	0x3fe1e71ac14c660a              # double 0.55946099999999999
	.quad	0x3fcb1fc4c165907e              # double 0.21190700000000001
	.quad	0x3fc2cb4aec8d5c74              # double 0.14682899999999999
	.quad	0x3fd6b7952d234eba              # double 0.35495500000000002
	.quad	0x3fe3711947cfa26a              # double 0.60755599999999998
	.quad	0x3fc6b5f5f0b28523              # double 0.177428
	.quad	0x3feecdcebfec13ba              # double 0.96262300000000001
	.quad	0x3feb89c5e6ff7dfa              # double 0.860568
	.quad	0x3feb2e4b018611fd              # double 0.84940099999999996
	.quad	0x3fe96e19b90ea9e7              # double 0.79469000000000001
	.quad	0x3fdb8dfbd6a593a3              # double 0.43054100000000001
	.quad	0x3f887a4a48f96e16              # double 0.011952000000000001
	.quad	0x3fc717481b21c476              # double 0.180398
	.quad	0x3fe06321a2e7f6f5              # double 0.51210100000000003
	.quad	0x3fc927f5e84f0953              # double 0.19653200000000001
	.quad	0x3fd96ee73e681a9c              # double 0.39739400000000002
	.quad	0x3feda459103c8e26              # double 0.92631200000000002
	.quad	0x3fe300b45ae5ffa4              # double 0.59383600000000003
	.quad	0x3fdb9667b5f1bef5              # double 0.43105500000000002
	.quad	0x3fd92f4491298890              # double 0.39351000000000003
	.quad	0x3fd85de58e64b231              # double 0.38073099999999999
	.quad	0x3fbba6efc371da38              # double 0.108016
	.quad	0x3fc38e6d15ad106f              # double 0.152784
	.quad	0x3fe0c6088d6d3b6d              # double 0.52417400000000003
	.quad	0x3febd79f23465626              # double 0.87007100000000004
	.quad	0x3fe8f4e22a2c2374              # double 0.77989299999999994
	.quad	0x3fd6c9363f572de4              # double 0.35603099999999999
	.quad	0x3fc5c2e33eff1950              # double 0.17000999999999999
	.quad	0x3fedeef3d3a1d324              # double 0.935419
	.quad	0x3fc5151e75360d02              # double 0.16470699999999999
	.quad	0x3fe331f03d145d85              # double 0.59984599999999999
	.quad	0x3fb8330d7386099a              # double 0.094529000000000001
	.quad	0x3fa3a6ce358298cc              # double 0.038381999999999999
	.quad	0x3fe01f969e3c9689              # double 0.50385599999999997
	.quad	0x3fd2986338b47c74              # double 0.290551
	.quad	0x3fe9fcc5b8dc5500              # double 0.81210599999999999
	.quad	0x3fefe6ba493c89f4              # double 0.99691499999999999
	.quad	0x3fddd82ba5a03819              # double 0.46631899999999998
	.quad	0x3fa8b5675579af19              # double 0.048259000000000003
	.quad	0x3fe1fb5aea3161a2              # double 0.56193300000000002
	.quad	0x3f67ca2120e1f7d7              # double 0.0029039999999999999
	.quad	0x3fe488bb906466b2              # double 0.64169100000000001
	.quad	0x3fb877574f722e1b              # double 0.095571000000000003
	.quad	0x3fcd8d477bbf93ff              # double 0.230874
	.quad	0x3fe7a5b0ff10ecb7              # double 0.73897599999999997
	.quad	0x3fc55db3397dd00f              # double 0.16692199999999999
	.quad	0x3fe14bf8fcd67fd4              # double 0.540524
	.quad	0x3fd0415f45e0b4e1              # double 0.25398999999999999
	.quad	0x3fcf03f2d3c792d1              # double 0.242308
	.quad	0x3fe354866a11ec92              # double 0.60406800000000005
	.quad	0x3fef53d4280ae105              # double 0.97898300000000004
	.quad	0x3fe7dbca9691a75d              # double 0.74558000000000002
	.quad	0x3fef42fe82517e78              # double 0.97692800000000001
	.quad	0x3fefaa7ded6ba8c6              # double 0.98956200000000005
	.quad	0x3fde4fb1183b6028              # double 0.47361399999999998
	.quad	0x3fd3e46cfc829cfe              # double 0.31081700000000001
	.quad	0x3fe8c51b93037d63              # double 0.774061
	.quad	0x3fb621b7e0ac7da2              # double 0.086452000000000001
	.quad	0x3fd84c33b5393251              # double 0.37965100000000002
	.quad	0x3fe80abb44e50c5f              # double 0.75131000000000003
	.quad	0x3fea0c9fb6134ce4              # double 0.81404100000000001
	.quad	0x3fedbe681a9b8cb9              # double 0.92949300000000001
	.quad	0x3fcf7d73c9257860              # double 0.24601600000000001
	.quad	0x3fec012599ed7c70              # double 0.87514000000000003
	.quad	0x3feefeb28d8665e0              # double 0.96859099999999997
	.quad	0x3fd21cb039ef0f17              # double 0.283001
	.quad	0x3fecfdfe32a0663c              # double 0.90600499999999994
	.quad	0x3fe3d98e10cf5b1d              # double 0.62030700000000005
	.quad	0x3fd730c67168f8e8              # double 0.36235200000000001
	.quad	0x3fee415f45e0b4e1              # double 0.94547999999999999
	.quad	0x3fe251f81a5870da              # double 0.57250599999999996
	.quad	0x3fd223dd54da4ce8              # double 0.283439
	.quad	0x3fc91a7e30878748              # double 0.19612099999999999
	.quad	0x3fe0a9d8409e55c1              # double 0.520733
	.quad	0x3fe55bb7b6bb1290              # double 0.66744599999999998
	.quad	0x3fdcb1fab96f21f7              # double 0.44836300000000001
	.quad	0x3fec621b7e0ac7da              # double 0.88697599999999999
	.quad	0x3fe202e2328f9f45              # double 0.56285200000000002
	.quad	0x3fedc5c5718eb895              # double 0.930392
	.quad	0x3fe9bbfd71b04684              # double 0.80419799999999996
	.quad	0x3fe531e7d9988d2a              # double 0.66234199999999999
	.quad	0x3feb9ee45c358afc              # double 0.86314599999999996
	.quad	0x3feb8129cbab649d              # double 0.85951699999999998
	.quad	0x3fed3e1650a45d42              # double 0.913829
	.quad	0x3fa2398201cd5f9a              # double 0.035595000000000002
	.quad	0x3fe774a771c970f8              # double 0.73299000000000003
	.quad	0x3fedc4178705425f              # double 0.93018699999999999
	.quad	0x3fe2715831f03d14              # double 0.57633599999999996
	.quad	0x3fa0244e93e1c9b4              # double 0.031526999999999999
	.quad	0x3fc726527a20578e              # double 0.18085699999999999
	.quad	0x3fe042d490e66cb1              # double 0.508158
	.quad	0x3fef101f31f46ed2              # double 0.97071799999999997
	.quad	0x3fec8b1bbcf4e875              # double 0.89198100000000002
	.quad	0x3fb16de33269df98              # double 0.068083000000000005
	.quad	0x3fd5f123c42a66dc              # double 0.34284300000000001
	.quad	0x3fe71a21ea359360              # double 0.72194000000000003
	.quad	0x3fdced5ae1cde5d2              # double 0.45198700000000003
	.quad	0x3fe5525aab474107              # double 0.66630299999999998
	.quad	0x3fcfdc37a3db3bfb              # double 0.24890799999999999
	.quad	0x3fe0c54bcf0b6b6e              # double 0.52408399999999999
	.quad	0x3fdab59578a2a90d              # double 0.41733300000000001
	.quad	0x3fe0356323bbc6eb              # double 0.506517
	.quad	0x3fee723ee1bd1eda              # double 0.95144600000000001
	.quad	0x3fdedab191dde376              # double 0.48209800000000003
	.quad	0x3fe07383f0bae89f              # double 0.51410100000000003
	.quad	0x3fe5a04af922962d              # double 0.675817
	.quad	0x3fd33e7d1351159c              # double 0.30068899999999998
	.quad	0x3fd3f07bfe7e1fc1              # double 0.31155300000000002
	.quad	0x3fe1dd249e44fa05              # double 0.55824499999999999
	.quad	0x3fe2b05532617c1c              # double 0.58402500000000002
	.quad	0x3feb86338b47c73f              # double 0.86013200000000001
	.quad	0x3fd9f0f9d2bf5515              # double 0.405333
	.quad	0x3fe261d6494d50ec              # double 0.57444300000000004
	.quad	0x3fe2dbee3d5fdcdf              # double 0.58934699999999995
	.quad	0x3fb89fe86833c600              # double 0.096189999999999998
	.quad	0x3fc322424a276b7f              # double 0.149483
	.quad	0x3faa6f60e0eb67c3              # double 0.051631000000000003
	.quad	0x3fd0e8d5410f94c8              # double 0.26421099999999997
	.quad	0x3fc00370cdc8754f              # double 0.12510499999999999
	.quad	0x3feac15097c80842              # double 0.83609800000000001
	.quad	0x3fc18ea7ce0fc2ec              # double 0.13716600000000001
	.quad	0x3fcbaabcd78c4370              # double 0.21614800000000001
	.quad	0x3fdb959e6256366d              # double 0.43100699999999997
	.quad	0x3fe72b239a38fbca              # double 0.72401599999999999
	.quad	0x3fc620578e5c4eb5              # double 0.17286199999999999
	.quad	0x3fc172bcb5fe542e              # double 0.13631399999999999
	.quad	0x3fe7715831f03d14              # double 0.73258599999999996
	.quad	0x3fe1c0b9991361dd              # double 0.55477600000000005
	.quad	0x3fe5050df15a4acf              # double 0.65686699999999998
	.quad	0x3fd173083558a761              # double 0.272646
	.quad	0x3fe1fc6540cc78ea              # double 0.56206
	.quad	0x3fe45b7f1737542a              # double 0.63616899999999998
	.quad	0x3fd0f0dc768dfbd7              # double 0.26470100000000002
	.quad	0x3fb8e30446b69db6              # double 0.097213999999999994
	.quad	0x3feea2e5de15ca6d              # double 0.95738500000000004
	.quad	0x3fe344c37e6f71a8              # double 0.60214400000000001
	.quad	0x3fe3b0fadf2ecf20              # double 0.61535399999999996
	.quad	0x3fc3a4ce8101f31f              # double 0.15346699999999999
	.quad	0x3fdc4a05dd8f92b0              # double 0.44201800000000002
	.quad	0x3fe5973b85e80bed              # double 0.67471099999999995
	.quad	0x3fd0f95d4e8fb00c              # double 0.26522000000000001
	.quad	0x3fc1f3061c79b34a              # double 0.14022899999999999
	.quad	0x3fc3733a8a3f8983              # double 0.15195400000000001
	.quad	0x3fd21843c3a42f1f              # double 0.28273100000000001
	.quad	0x3fd52f3c2dadb835              # double 0.33100800000000002
	.quad	0x3fb1ea033e78e193              # double 0.069976999999999998
	.quad	0x3fdba25d8d79d0a6              # double 0.43178499999999997
	.quad	0x3fd904fb1183b603              # double 0.39092900000000003
	.quad	0x3fbcdde7a743a648              # double 0.112761
	.quad	0x3fa795d4e8fb00bd              # double 0.046065000000000002
	.quad	0x3fe86542e557de0d              # double 0.76236099999999996
	.quad	0x3fded6ece13f4a99              # double 0.48186800000000002
	.quad	0x3fefe9270b06c43f              # double 0.99721099999999995
	.quad	0x3fdd3797460242d0              # double 0.45651799999999998
	.quad	0x3fdcb4bb5e0f7fd0              # double 0.44853100000000001
	.quad	0x3fd1b152f3c2dadc              # double 0.27644800000000003
	.quad	0x3feb126c7eae5bc8              # double 0.84599899999999995
	.quad	0x3fe1f78feef5ec81              # double 0.56147000000000002
	.quad	0x3fc642e9899bf594              # double 0.17391699999999999
	.quad	0x3fbc95e17e34b945              # double 0.111662
	.quad	0x3feed89acbc8c0cf              # double 0.96394100000000004
	.quad	0x3fedf3c4f3ba7760              # double 0.93600700000000003
	.quad	0x3fe721cef240fa9c              # double 0.72287699999999999
	.quad	0x3fed820a30db6a1f              # double 0.92212400000000005
	.quad	0x3fcf52d234eb9a17              # double 0.24471499999999999
	.quad	0x3fe11bac2df0d413              # double 0.53462799999999999
	.quad	0x3fe22775fb2edfe7              # double 0.56731699999999996
	.quad	0x3feeb254e6e221c9              # double 0.95926900000000003
	.quad	0x3fd29096bb98c7e3              # double 0.29007500000000003
	.quad	0x3fe5fe132b55ef20              # double 0.68726500000000001
	.quad	0x3fdaac8a372606fb              # double 0.41678100000000001
	.quad	0x3feeaa5c5f7c675a              # double 0.95829600000000004
	.quad	0x3fecd77531db445f              # double 0.90130100000000002
	.quad	0x3fede90de093532e              # double 0.93469899999999995
	.quad	0x3fdf4e09784ec637              # double 0.48913800000000002
	.quad	0x3fe8aa10e0221427              # double 0.77076
	.quad	0x3fcb6f08cc575c07              # double 0.21432599999999999
	.quad	0x3fd146ae3a3a8e71              # double 0.26993899999999998
	.quad	0x3fdc0e23af31b153              # double 0.438363
	.quad	0x3fc91d9b1b79d90a              # double 0.196216
	.quad	0x3fbc2ca148ba83f5              # double 0.110056
	.quad	0x3fee68a71de69ad4              # double 0.95027499999999998
	.quad	0x3fe110f51ac9afe2              # double 0.53332000000000002
	.quad	0x3fe3b02b40f66a55              # double 0.615255
	.quad	0x3fb32d1aeb3dd11c              # double 0.074907000000000001
	.quad	0x3fe082c0a4a05dd9              # double 0.515961
	.quad	0x3fca87b99d451fc5              # double 0.20726700000000001
	.quad	0x3fe146195464dc23              # double 0.53980700000000004
	.quad	0x3fe85b7281fd9ba2              # double 0.76116300000000003
	.quad	0x3fa33b96af038e2a              # double 0.037564
	.quad	0x3fb71e18efbb0e5e              # double 0.090302999999999994
	.quad	0x3fe834b0e1b4bb5e              # double 0.75643199999999999
	.quad	0x3fd272b4528283d3              # double 0.28825099999999998
	.quad	0x3fedf049a9973d9f              # double 0.93558200000000002
	.quad	0x3fe913f4a98aa865              # double 0.78368599999999999
	.quad	0x3fe7436976bc1f00              # double 0.72697900000000004
	.quad	0x3fcea14057082492              # double 0.23929600000000001
	.quad	0x3fea6557de0d66f1              # double 0.82487100000000002
	.quad	0x3fdcc319c5a3e39f              # double 0.44940799999999997
	.quad	0x3fde46455eaee200              # double 0.47303899999999999
	.quad	0x3fec5abc0e38a7e7              # double 0.88607599999999997
	.quad	0x3feba80064a9cdc4              # double 0.86425799999999997
	.quad	0x3fd03675ddd2ae8e              # double 0.25332399999999999
	.quad	0x3fc158e219652bd4              # double 0.13552500000000001
	.quad	0x3fd192ccf6be37df              # double 0.27458500000000002
	.quad	0x3fe4dd052934acb0              # double 0.65198
	.quad	0x3fe7c7863beec398              # double 0.74310600000000004
	.quad	0x3fe7ef2e8c0485a1              # double 0.74794700000000003
	.quad	0x3fc7f0bae89eba6b              # double 0.18703400000000001
	.quad	0x3fd3b19e731d2e0e              # double 0.30771599999999999
	.quad	0x3fcb89c5e6ff7dfa              # double 0.215142
	.quad	0x3fe6a0a958537e2c              # double 0.70711199999999996
	.quad	0x3fefaf4f0d844d01              # double 0.99014999999999997
	.quad	0x3fcb17b5286b5914              # double 0.21166099999999999
	.quad	0x3feb2719b4dcebff              # double 0.84852300000000003
	.quad	0x3fe6d1bd61f5be5e              # double 0.71310300000000004
	.quad	0x3fd787bdcf0307f2              # double 0.36765999999999999
	.quad	0x3fd04bfd2e946801              # double 0.25463799999999998
	.quad	0x3fd953b8e4b87bdd              # double 0.395735
	.quad	0x3fefc2acb85a4f01              # double 0.992514
	.quad	0x3feef5ad96a6a012              # double 0.96748999999999996
	.quad	0x3fd89ca5bd944aa5              # double 0.38456099999999999
	.quad	0x3fa9d0e991ff7165              # double 0.050422000000000002
	.quad	0x3fb247cb70ac3a86              # double 0.071407999999999999
	.quad	0x3fd8bba12b5e529c              # double 0.38645200000000002
	.quad	0x3fe92fbc1acde1a0              # double 0.78707700000000002
	.quad	0x3fec40420f6f08cc              # double 0.88284399999999996
	.quad	0x3fddb11409a24031              # double 0.46393299999999998
	.quad	0x3fd2a0be51090710              # double 0.29106100000000001
	.quad	0x3feca92817763e4b              # double 0.89564900000000003
	.quad	0x3fdcf76e6106ab15              # double 0.452602
	.quad	0x3fe932b777d0f1f5              # double 0.78744099999999995
	.quad	0x3fe8b29e4d5d80e5              # double 0.77180400000000005
	.quad	0x3fe8011d3671ac15              # double 0.75013600000000002
	.quad	0x3fcc7b9170d62bf1              # double 0.222521
	.quad	0x3fe3b0e5e679463d              # double 0.615344
	.quad	0x3fae66ec9e236c16              # double 0.059379000000000001
	.quad	0x3fe619524bfd2e94              # double 0.69059099999999995
	.quad	0x3fc667839cd8127b              # double 0.175034
	.quad	0x3fe984662bae03b4              # double 0.797412
	.quad	0x3fc5a0407cc7d1bb              # double 0.16895299999999999
	.quad	0x3fd6248d7e02645e              # double 0.34598099999999998
	.quad	0x3fdaf722e1ac57e2              # double 0.42133399999999999
	.quad	0x3fd241d084e831ad              # double 0.28526699999999999
	.quad	0x3fca4cbe1eb4202e              # double 0.20546700000000001
	.quad	0x3fef28869c66d374              # double 0.97369700000000003
	.quad	0x3fe2202539756c94              # double 0.56642400000000004
	.quad	0x3fda882adc4c9c91              # double 0.41456100000000001
	.quad	0x3fe22f9a8cdea034              # double 0.56831100000000001
	.quad	0x3fe28b30b5aa7158              # double 0.57949099999999998
	.quad	0x3fdbfb7e90ff9724              # double 0.43722499999999997
	.quad	0x3fe2321c475e6363              # double 0.56861700000000004
	.quad	0x3fbe4d099e0e7360              # double 0.118363
	.quad	0x3fdab9991361dc94              # double 0.417578
	.quad	0x3fc48cf7caa7589f              # double 0.160552
	.quad	0x3fa0b7e4de3b8a1a              # double 0.032653000000000001
	.quad	0x3fe0118c197e5647              # double 0.50214199999999998
	.quad	0x3febb7e4de3b8a1a              # double 0.86619800000000002
	.quad	0x3fac0c1fc8f32379              # double 0.054780000000000002
	.quad	0x3fee0ec311622813              # double 0.93930199999999997
	.quad	0x3fe8a936c58eeaea              # double 0.77065600000000001
	.quad	0x3fedc8ba83f4eca7              # double 0.93075300000000005
	.quad	0x3fd22e62131a8ef7              # double 0.28408099999999997
	.quad	0x3fe9fd49d7ba6699              # double 0.81216900000000003
	.quad	0x3f643393ab430f49              # double 0.0024659999999999999
	.quad	0x3fbc39042d8c2a45              # double 0.110245
	.quad	0x3fec501c0ca600b0              # double 0.88477899999999998
	.quad	0x3fdda597d49d7ba6              # double 0.46323199999999998
	.quad	0x3fe76785b5b70692              # double 0.73138700000000001
	.quad	0x3fc89f40a2877ee5              # double 0.19236
	.quad	0x3fc8b5807fed2029              # double 0.19303899999999999
	.quad	0x3fee4938583621fb              # double 0.946438
	.quad	0x3fef545846e8f29d              # double 0.97904599999999997
	.quad	0x3fc5a12b5e529bae              # double 0.16898099999999999
	.quad	0x3fea178b3700474e              # double 0.81537400000000004
	.quad	0x3fd127243137b070              # double 0.26801399999999997
	.quad	0x3fe50d801b435265              # double 0.65789799999999998
	.quad	0x3f9a38327674d163              # double 0.025604999999999999
	.quad	0x3fd66ca03c4b09ea              # double 0.35038000000000002
	.quad	0x3fc2925785f8d2e5              # double 0.145091
	.quad	0x3fd39107faa044af              # double 0.30572700000000003
	.quad	0x3fe7137d1fe64f55              # double 0.72112900000000002
	.quad	0x3fe8fd9988d2a1f9              # double 0.78095700000000001
	.quad	0x3fbaab7995ee136e              # double 0.10417899999999999
	.quad	0x3fefb4bd76ee73e7              # double 0.99081300000000005
	.quad	0x3fede933a0407cc8              # double 0.93471700000000002
	.quad	0x3fd22467be553ac5              # double 0.283472
	.quad	0x3fe180a393ee5eee              # double 0.54695300000000002
	.quad	0x3fd80e0653005815              # double 0.37585600000000002
	.quad	0x3fe7f3d9ec700043              # double 0.74851699999999999
	.quad	0x3fe069d7342edbb6              # double 0.51292000000000004
	.quad	0x3fef16df3f961805              # double 0.97154200000000001
	.quad	0x3fed316e37154003              # double 0.91228399999999998
	.quad	0x3fd53a3a8e71476b              # double 0.331679
	.quad	0x3fe845564b662fe0              # double 0.75846400000000002
	.quad	0x3fe77c243dccea29              # double 0.733904
	.quad	0x3fe111e85fd04a30              # double 0.53343600000000002
	.quad	0x3fc402afdda8bd23              # double 0.156332
	.quad	0x3fe624e379b77c03              # double 0.69200300000000003
	.quad	0x3fece596c82e019b              # double 0.903026
	.quad	0x3fed0288051c9f73              # double 0.906559
	.quad	0x3feb9cc100e6afcd              # double 0.86288500000000001
	.quad	0x3fe2fa85015c2092              # double 0.59308099999999997
	.quad	0x3fdf43bf727136a4              # double 0.48851
	.quad	0x3fe1bc8c0ce91c8f              # double 0.55426600000000004
	.quad	0x3fbeaa2a0a958538              # double 0.119784
	.quad	0x3fec68e60807357e              # double 0.88780499999999996
	.quad	0x3feedc9c4da9003f              # double 0.96443
	.quad	0x3fe7e17e34b94531              # double 0.74627600000000005
	.quad	0x3fb360ae9680e065              # double 0.075693999999999997
	.quad	0x3fe7366d7a56de33              # double 0.72539399999999998
	.quad	0x3feca3fab10ba626              # double 0.89501699999999995
	.quad	0x3fed250d6b228dca              # double 0.91077300000000005
	.quad	0x3fa842b734b51373              # double 0.047384000000000003
	.quad	0x3fa3369b9d7fd827              # double 0.037525999999999997
	.quad	0x3feb5c9e6687f456              # double 0.85505600000000004
	.quad	0x3fe90d6b228dc982              # double 0.78288800000000003
	.quad	0x3fbe8ac5c13fd0d0              # double 0.11930499999999999
	.quad	0x3fc89ff92f2b66b6              # double 0.192382
	.quad	0x3fed35935fc3b4f6              # double 0.91278999999999999
	.quad	0x3fedc9539b888723              # double 0.93082600000000004
	.quad	0x3fe1c02afdda8bd2              # double 0.55470799999999998
	.quad	0x3fc6f13cee9dd7ed              # double 0.17923700000000001
	.quad	0x3fe07961804d9839              # double 0.51481699999999997
	.quad	0x3fec3fbdf090f734              # double 0.88278100000000003
	.quad	0x3feeaeb1c432ca58              # double 0.95882500000000003
	.quad	0x3fe944dec1c1d6d0              # double 0.78965700000000005
	.quad	0x3fe2bd70a3d70a3d              # double 0.58562499999999995
	.quad	0x3fe62eec7c957cd4              # double 0.69322799999999996
	.quad	0x3fe949f72f76e610              # double 0.79027899999999995
	.quad	0x3fea2b1b36bd2b6f              # double 0.81776199999999999
	.quad	0x3fd707f66e86c658              # double 0.35986099999999999
	.quad	0x3fe55549731098d4              # double 0.66666099999999995
	.quad	0x3fc28d434a01abd2              # double 0.14493600000000001
	.quad	0x3fef13e5fb71fbc6              # double 0.97117900000000001
	.quad	0x3fdc9c27e9531551              # double 0.44703100000000001
	.quad	0x3fa45e6ff7dfa00e              # double 0.039782999999999999
	.quad	0x3fea3afd976ff3ae              # double 0.81970100000000001
	.quad	0x3fe3dec3dab5c39c              # double 0.62094300000000002
	.quad	0x3fe226bb55ac03ff              # double 0.56722799999999995
	.quad	0x3fe171a3b14a9047              # double 0.545122
	.quad	0x3fecae514c22ee42              # double 0.89627900000000005
	.quad	0x3fdbe34b945308bc              # double 0.43574800000000002
	.quad	0x3fdf66234a87e38f              # double 0.49060900000000002
	.quad	0x3fec96e371540032              # double 0.89341899999999996
	.quad	0x3fe7bfad2999567e              # double 0.74214800000000003
	.quad	0x3fd9b7995ee136e7              # double 0.40183099999999999
	.quad	0x3f9ae5796bfca85d              # double 0.026266000000000001
	.quad	0x3fe02c4d65e46067              # double 0.50540799999999997
	.quad	0x3fe65d0d8cb07d0b              # double 0.69885900000000001
	.quad	0x3fd364883fd50225              # double 0.30301099999999997
	.quad	0x3fe2715a4acf312b              # double 0.57633699999999999
	.quad	0x3feba9cbab649d39              # double 0.86447700000000005
	.quad	0x3fed1f51697f1f9b              # double 0.91007300000000002
	.quad	0x3fecbd07c84b5dcc              # double 0.89807499999999995
	.quad	0x3fe0f442c7fbacb4              # double 0.52981699999999998
	.quad	0x3fe4d004fb1183b6              # double 0.650393
	.quad	0x3fdd7ca643cc07ab              # double 0.460733
	.quad	0x3fa372a38b8ae31d              # double 0.037983999999999997
	.quad	0x3fe6a85ec3dab5c4              # double 0.70805300000000004
	.quad	0x3fd7b430f49491f3              # double 0.37037300000000001
	.quad	0x3fe700d5e8d54110              # double 0.71885200000000005
	.quad	0x3fda9420b3d4ae43              # double 0.41529100000000002
	.quad	0x3fc4580c308feac4              # double 0.15893699999999999
	.quad	0x3fecc3137b07075b              # double 0.89881299999999997
	.quad	0x3fc174e65bea0ba2              # double 0.13638
	.quad	0x3fd436ac647778dd              # double 0.31583699999999998
	.quad	0x3fea9a6937d1fe65              # double 0.831349
	.quad	0x3fdc37824d4cb9ed              # double 0.440888
	.quad	0x3fe70a5efe931876              # double 0.72001599999999999
	.quad	0x3fe811d14e3bcd36              # double 0.75217500000000004
	.quad	0x3fec5aa715831f04              # double 0.88606600000000002
	.quad	0x3fa1791819d2391d              # double 0.034126999999999998
	.quad	0x3fedbc77143393ab              # double 0.92925599999999997
	.quad	0x3fe10f861a60d456              # double 0.53314499999999998
	.quad	0x3fd49e6687f455a8              # double 0.32216800000000001
	.quad	0x3fe65ecc3e3193f7              # double 0.69907200000000003
	.quad	0x3fe142f837b4a234              # double 0.53942500000000004
	.quad	0x3fb5ac14c660a201              # double 0.084656999999999996
	.quad	0x3fa4ec204f2ae07e              # double 0.040863999999999998
	.quad	0x3fd473bc903ea705              # double 0.31956400000000001
	.quad	0x3feb73a57eaa2a0b              # double 0.85786700000000005
	.quad	0x3f9ff865d7cb2d90              # double 0.031220999999999999
	.quad	0x3fe70537e2c55c96              # double 0.719387
	.quad	0x3fe33311a543f1c7              # double 0.59998399999999996
	.quad	0x3fe10e25c810a56a              # double 0.53297700000000003
	.quad	0x3fd0b73083558a76              # double 0.261181
	.quad	0x3fc1ad85dfa871a4              # double 0.13810800000000001
	.quad	0x3fdbb8e086bdf4c3              # double 0.43315900000000002
	.quad	0x3fa8e8ea39c51dac              # double 0.048652000000000001
	.quad	0x3fd1bd1676640a6c              # double 0.27716600000000002
	.quad	0x3fd59e44fa05143c              # double 0.337785
	.quad	0x3fe58229a5ebb774              # double 0.67213900000000004
	.quad	0x3fe15a61e0c5a815              # double 0.54228299999999996
	.quad	0x3fe136b09635610b              # double 0.53792600000000002
	.quad	0x3fc66b0531982880              # double 0.17514099999999999
	.quad	0x3fb3ca643cc07aaf              # double 0.077307000000000001
	.quad	0x3fe3ff6d330941c8              # double 0.62492999999999999
	.quad	0x3fde67caea747d80              # double 0.47508499999999998
	.quad	0x3fdc2e72da122fad              # double 0.44033499999999998
	.quad	0x3fa03fd50225742e              # double 0.031737000000000001
	.quad	0x3fecc743201040c0              # double 0.89932400000000001
	.quad	0x3fdf8bc169c23b79              # double 0.49290499999999998
	.quad	0x3fe45f04ddb5525d              # double 0.63659900000000003
	.quad	0x3fcbab649d388a8b              # double 0.216168
	.quad	0x3fe90c5004fb1184              # double 0.78275300000000003
	.quad	0x3fe8c5c5718eb895              # double 0.774142
	.quad	0x3fb31704ff43419e              # double 0.074569999999999997
	.quad	0x3fd1bd9cae21101b              # double 0.277198
	.quad	0x3fe2b26bf8769ec3              # double 0.58428000000000002
	.quad	0x3fdb29fe004b7f5a              # double 0.42443799999999998
	.quad	0x3fd9b5781c714fce              # double 0.40170099999999997
	.quad	0x3fe2894c447c30d3              # double 0.57926
	.quad	0x3fd31183b60285ec              # double 0.29794399999999999
	.quad	0x3fc95aa715831f04              # double 0.19807900000000001
	.quad	0x3feccff0025bfad3              # double 0.90038300000000004
	.quad	0x3fe9f4213a0c6b48              # double 0.81105099999999997
	.quad	0x3fe8a923e5b8561d              # double 0.77064699999999997
	.quad	0x3feb09acbc8c0ce9              # double 0.84493099999999999
	.quad	0x3fed670c1333b96b              # double 0.91882900000000001
	.quad	0x3fe7740a2877ee4e              # double 0.73291499999999998
	.quad	0x3fea6414e7ee9143              # double 0.82471700000000003
	.quad	0x3fcc4ad794a6eb92              # double 0.22103400000000001
	.quad	0x3fe88cf9e3864cb6              # double 0.76720900000000003
	.quad	0x3fd6204295a6c5d2              # double 0.345719
	.quad	0x3fb74959e6256367              # double 0.090963000000000002
	.quad	0x3fe0d072085b1855              # double 0.52544500000000005
	.quad	0x3fd69b738e6d15ad              # double 0.353238
	.quad	0x3fc22f5126634118              # double 0.142069
	.quad	0x3feaf80dc33721d5              # double 0.84277999999999997
	.quad	0x3fecdfcc1871e6cd              # double 0.90231899999999998
	.quad	0x3fc6155d5f56a7ad              # double 0.17252700000000001
	.quad	0x3f8606b7aa25d8d8              # double 0.010755000000000001
	.quad	0x3fd0868fd199bb28              # double 0.25821300000000003
	.quad	0x3fde1eb4202d9cf1              # double 0.47062399999999999
	.quad	0x3fbfb9f127f5e84f              # double 0.123931
	.quad	0x3fc31d25aab47410              # double 0.14932699999999999
	.quad	0x3f53b9f127f5e84f              # double 0.001204
	.quad	0x3fe8fc0096feb4a6              # double 0.78076199999999996
	.quad	0x3fed3cf91a32b12d              # double 0.91369299999999998
	.quad	0x3fe4b9b66f9335d2              # double 0.64766999999999997
	.quad	0x3fc2c14c660a2014              # double 0.14652399999999999
	.quad	0x3fe7882adc4c9c91              # double 0.73537200000000003
	.quad	0x3fccb367a0f9096c              # double 0.22422500000000001
	.quad	0x3fa888f861a60d45              # double 0.047919999999999997
	.quad	0x3fd568661ae70c13              # double 0.33449699999999999
	.quad	0x3fe82d9274e22a2c              # double 0.75556299999999998
	.quad	0x3fc02ec28b2a6b0e              # double 0.12642700000000001
	.quad	0x3fd939c51dabe271              # double 0.39415099999999997
	.quad	0x3fe61b1b79d909f2              # double 0.69080900000000001
	.quad	0x3fe91a7e30878748              # double 0.78448399999999996
	.quad	0x3fe793c03bc4d22d              # double 0.73678600000000005
	.quad	0x3fd41a86940357a3              # double 0.31411899999999998
	.quad	0x3fc67ef9db22d0e5              # double 0.17574999999999999
	.quad	0x3fd04acf312b1b37              # double 0.25456600000000001
	.quad	0x3fd474c09c3ce209              # double 0.31962600000000002
	.quad	0x3fe8f110e453d20f              # double 0.77942699999999998
	.quad	0x3fe2d01e2584f4c7              # double 0.58790500000000001
	.quad	0x3fd84b167ec7863c              # double 0.379583
	.quad	0x3fe9e18266772d5e              # double 0.808778
	.quad	0x3fefbcec84f8f8a5              # double 0.99181200000000002
	.quad	0x3fd8f33ca31e7d9a              # double 0.38984600000000003
	.quad	0x3fde1ea78af3e469              # double 0.47062100000000001
	.quad	0x3fec16ce789e774f              # double 0.87778400000000001
	.quad	0x3fe35056c508b32d              # double 0.60355700000000001
	.quad	0x3fe89da597d49d7c              # double 0.76924400000000003
	.quad	0x3feb4b48d3ae685e              # double 0.85294000000000003
	.quad	0x3fb451dabe27179c              # double 0.079374
	.quad	0x3fcc915bdd76683c              # double 0.223186
	.quad	0x3fe62d5bee3d5fdd              # double 0.69303700000000001
	.quad	0x3febbbe878fabda1              # double 0.86668800000000001
	.quad	0x3fd3ad794a6eb91b              # double 0.30746299999999999
	.quad	0x3fe115bff04577d9              # double 0.53390499999999996
	.quad	0x3fe9c0724b76f6d7              # double 0.80474199999999996
	.quad	0x3fe3ec226809d495              # double 0.62257499999999999
	.quad	0x3fe1a72862f5989e              # double 0.55165500000000001
	.quad	0x3fdf7924af0bf1a6              # double 0.49176900000000001
	.quad	0x3febc209246bf013              # double 0.86743599999999998
	.quad	0x3fc7320535c9e668              # double 0.18121399999999999
	.quad	0x3fe3ca4d2b2bfdb5              # double 0.61844500000000002
	.quad	0x3fc6897e996312f5              # double 0.17607100000000001
	.quad	0x3fe2e1437c5692b4              # double 0.58999800000000002
	.quad	0x3fc1ca5bd944aa54              # double 0.138988
	.quad	0x3fe14176577531db              # double 0.53924099999999997
	.quad	0x3fe651fc4c165908              # double 0.69750800000000002
	.quad	0x3fde8d2a1f8e3ac1              # double 0.47736600000000001
	.quad	0x3fe88f96e158750c              # double 0.76752799999999998
	.quad	0x3fea8f57f737da62              # double 0.82999800000000001
	.quad	0x3fe8b8151a437825              # double 0.77247100000000002
	.quad	0x3fd667dfe32a0664              # double 0.35009000000000001
	.quad	0x3fdd07a6bd6e8af8              # double 0.453592
	.quad	0x3fe98ebaade657b8              # double 0.79867299999999997
	.quad	0x3fe69bc126a65cf6              # double 0.70651299999999995
	.quad	0x3fe00e64b2314014              # double 0.50175700000000001
	.quad	0x3fc8628027d88c1e              # double 0.19050600000000001
	.quad	0x3fe10255b035bd51              # double 0.53153499999999998
	.quad	0x3fe09016ce789e77              # double 0.51758899999999997
	.quad	0x3fd7eefe4ffc9796              # double 0.37396200000000002
	.quad	0x3fe61960fa15db34              # double 0.69059800000000005
	.quad	0x3feb7c6fbd273d5c              # double 0.85894000000000003
	.quad	0x3fce2ec28b2a6b0e              # double 0.23580200000000001
	.quad	0x3fea6f47b677f6b2              # double 0.82608400000000004
	.quad	0x3fe5a0ad8a11665a              # double 0.67586400000000002
	.quad	0x3fcf3cbc48f10a9a              # double 0.24404100000000001
	.quad	0x3fdf06f694467382              # double 0.48480000000000001
	.quad	0x3fe6a5dd095af295              # double 0.70774700000000001
	.quad	0x3fa3e2d6238da3c2              # double 0.03884
	.quad	0x3feeb57c4e2f37fc              # double 0.959654
	.quad	0x3fec244417870542              # double 0.87942699999999996
	.quad	0x3fed7fa7eb6bf445              # double 0.92183300000000001
	.quad	0x3fdc2b302f72b453              # double 0.44013600000000003
	.quad	0x3fe804a2fcefaa47              # double 0.75056599999999996
	.quad	0x3fb29bbf0dc768e0              # double 0.072689000000000004
	.quad	0x3fd22363b256ffc1              # double 0.28341
	.quad	0x3fe2c26bb55ac040              # double 0.586233
	.quad	0x3f86aceaaf35e311              # double 0.011072
	.quad	0x3fe2ec15d2d01c0d              # double 0.59131900000000004
	.quad	0x3fd466dbd72bcb60              # double 0.31877800000000001
	.quad	0x3fc03126e978d4fe              # double 0.1265
	.quad	0x3fe43b7b6bb12902              # double 0.63226099999999996
	.quad	0x3fe55ee78183f91e              # double 0.66783499999999996
	.quad	0x3fd771327243137b              # double 0.366284
	.quad	0x3fe3acbea4ebdd33              # double 0.61483699999999997
	.quad	0x3fd8b4fa48301a7a              # double 0.386046
	.quad	0x3fd3265f0f5a1017              # double 0.29921700000000001
	.quad	0x3feff296f6512a95              # double 0.998363
	.quad	0x3fdf1aeb3dd11be7              # double 0.48601800000000001
	.quad	0x3febb0b7c3504c49              # double 0.86532200000000004
	.quad	0x3fde9d8409e55c10              # double 0.47836400000000001
	.quad	0x3fcac8605681ecd5              # double 0.20924000000000001
	.quad	0x3fecd3b4b2fa93af              # double 0.90084299999999995
	.quad	0x3fec680389f83be6              # double 0.88769699999999996
	.quad	0x3fef9b75a74c09c4              # double 0.98772700000000002
	.quad	0x3fe85df6555c52e7              # double 0.76146999999999998
	.quad	0x3fe775fb2edfe75c              # double 0.73315200000000003
	.quad	0x3fe68e4755ffe6d6              # double 0.70486800000000005
	.quad	0x3fdebe878fabda0e              # double 0.480379
	.quad	0x3fea4970f7b9e061              # double 0.821465
	.quad	0x3feaf81626b2f230              # double 0.84278399999999998
	.quad	0x3f9a55d1c3ac929b              # double 0.025718000000000001
	.quad	0x3fd9f6e3f78bbd38              # double 0.405694
	.quad	0x3fe13ee3d5fdcdf7              # double 0.53892700000000004
	.quad	0x3fecb3bd9cae2110              # double 0.89694099999999999
	.quad	0x3fc40e1f7d73c925              # double 0.15668099999999999
	.quad	0x3fe19aa1d755bccb              # double 0.550126
	.quad	0x3fed96a055757d5b              # double 0.92463700000000004
	.quad	0x3fed33edd8b60f1b              # double 0.91258899999999998
	.quad	0x3fd757c914b167ec              # double 0.36473299999999997
	.quad	0x3fde3686a4ca4f44              # double 0.472078
	.quad	0x3fe55d851654d61b              # double 0.66766599999999998
	.quad	0x3fcb7f62b6ae7d56              # double 0.21482499999999999
	.quad	0x3fe77f6d330941c8              # double 0.73430499999999999
	.quad	0x3fe7d421c044284e              # double 0.744645
	.quad	0x3fe47c0d2c386d2f              # double 0.64014300000000002
	.quad	0x3fd8f5caf2d7f951              # double 0.39000200000000002
	.quad	0x3fe22096787ce960              # double 0.56647800000000004
	.quad	0x3fdabf6a0dbad3a6              # double 0.417933
	.quad	0x3fe4be1437c5692b              # double 0.64820299999999997
	.quad	0x3fd1188b11409a24              # double 0.267123
	.quad	0x3fece5e2478854ce              # double 0.90306200000000003
	.quad	0x3fdae6c8f7553693              # double 0.42033599999999999
	.quad	0x3fca88051c9f72f7              # double 0.20727599999999999
	.quad	0x3fe4830a0b1bbcf5              # double 0.64099600000000001
	.quad	0x3fe9cb0e1b4bb5e1              # double 0.806037
	.quad	0x3fe643201040bfe4              # double 0.69569400000000003
	.quad	0x3f85b70691ea78af              # double 0.010603
	.quad	0x3fe4dc4c9c90c4df              # double 0.65189200000000003
	.quad	0x3fe9629d8409e55c              # double 0.79328799999999999
	.quad	0x3fd7bd1ed9dfdac7              # double 0.37091800000000003
	.quad	0x3fe831ee2435696e              # double 0.75609499999999996
	.quad	0x3fe3629307af20ea              # double 0.60578299999999996
	.quad	0x3fec5881a1554fbe              # double 0.88580400000000004
	.quad	0x3fe3ded288ce703b              # double 0.62095
	.quad	0x3fc502602c9081c3              # double 0.164135
	.quad	0x3fd38815e39713ad              # double 0.30518099999999998
	.quad	0x3fe0cf2cf95d4e90              # double 0.52529000000000003
	.quad	0x3fe10f3cb3e5753a              # double 0.53310999999999997
	.quad	0x3fd2eb9e492bc2fc              # double 0.29563099999999998
	.quad	0x3fd26d15ad106ee3              # double 0.287908
	.quad	0x3fe4d22424a276b8              # double 0.65065200000000001
	.quad	0x3fec9bc77143393b              # double 0.89401600000000003
	.quad	0x3fefc03361565c2d              # double 0.99221199999999998
	.quad	0x3fe3784cad57bc7f              # double 0.60843499999999995
	.quad	0x3febc32873bc903f              # double 0.86757300000000004
	.quad	0x3fe4fa8b4bf8fcd6              # double 0.65558399999999994
	.quad	0x3fc245996744b2b7              # double 0.14274899999999999
	.quad	0x3fe11bc126a65cf6              # double 0.53463799999999995
	.quad	0x3fd71f2990f301eb              # double 0.36127700000000001
	.quad	0x3fe33b73083558a7              # double 0.60100699999999996
	.quad	0x3fe89cd1c7de5083              # double 0.76914300000000002
	.quad	0x3fcba83f4eca686e              # double 0.21607199999999999
	.quad	0x3fc7d3671ac14c66              # double 0.186139
	.quad	0x3fe8aca793576039              # double 0.77107599999999998
	.quad	0x3fe83ce63a5c1c61              # double 0.75743400000000005
	.quad	0x3fa5bca9691a75cd              # double 0.042455
	.quad	0x3fe532788db0574b              # double 0.66241099999999997
	.quad	0x3fef82be8bc169c2              # double 0.98470999999999997
	.quad	0x3fe2c486ad2dcb14              # double 0.58648999999999996
	.quad	0x3fdaf3cf70153bd1              # double 0.42113099999999998
	.quad	0x3fcb141205bc01a3              # double 0.21154999999999999
	.quad	0x3fcefe260b2c83ed              # double 0.24213100000000001
	.quad	0x3fe8169a0ad8a116              # double 0.75275899999999996
	.quad	0x3fe6889e34330d74              # double 0.70417700000000005
	.quad	0x3fd74156e264e486              # double 0.36336299999999999
	.quad	0x3feb2c94b380cb6c              # double 0.84919199999999994
	.quad	0x3fd33fee2c98e53f              # double 0.30077700000000002
	.quad	0x3fac4c165907d912              # double 0.055267999999999998
	.quad	0x3faf01b866e43aa8              # double 0.060560000000000003
	.quad	0x3fc6b8a5ce5b4246              # double 0.17751
	.quad	0x3fe079e3864cb5bb              # double 0.51487899999999998
	.quad	0x3fecdf5275ee99a6              # double 0.90226099999999998
	.quad	0x3fe0e85db76b3bb8              # double 0.52836499999999997
	.quad	0x3fb3f4128bf3bea9              # double 0.077942999999999998
	.quad	0x3fd9deefe4ffc979              # double 0.40423199999999998
	.quad	0x3f9fa26a22b3892f              # double 0.030893
	.quad	0x3fdae6106ab14ec2              # double 0.420292
	.quad	0x3fba9db65ecc3e32              # double 0.10396900000000001
	.quad	0x3fe71c432ca57a78              # double 0.72219999999999995
	.quad	0x3fa0121682f94424              # double 0.031387999999999999
	.quad	0x3f9f5b5fa22706d5              # double 0.030622
	.quad	0x3fe9b36bd2b6f199              # double 0.80315199999999998
	.quad	0x3febb163baba7b91              # double 0.86540399999999995
	.quad	0x3fed3ca5375c8da0              # double 0.91365300000000004
	.quad	0x3fe11ae924f227d0              # double 0.53453499999999998
	.quad	0x3fce875d56f32bdc              # double 0.238506
	.quad	0x3fc773860999dcb5              # double 0.18321299999999999
	.quad	0x3f88f25a250f8402              # double 0.012181000000000001
	.quad	0x3fe4f4c6e6d9be4d              # double 0.65488000000000002
	.quad	0x3fcf6aceaaf35e31              # double 0.245447
	.quad	0x3fd97839cd8127b3              # double 0.39796300000000001
	.quad	0x3fe6474538ef34d7              # double 0.69620000000000004
	.quad	0x3fd515a4acf312b2              # double 0.32944600000000002
	.quad	0x3fcb3a9b06812381              # double 0.212726
	.quad	0x3fec237ac3eb7cbb              # double 0.87933099999999997
	.quad	0x3fdb79b77c02afde              # double 0.42930400000000002
	.quad	0x3fddb923a29c779a              # double 0.46442499999999998
	.quad	0x3fe4b645a1cac083              # double 0.64724999999999999
	.quad	0x3fc8d65e4606748e              # double 0.19404199999999999
	.quad	0x3fcbd4067cf1c326              # double 0.21740799999999999
	.quad	0x3fe501beb18116ec              # double 0.65646300000000002
	.quad	0x3fd98e7ddca4b125              # double 0.39932200000000001
	.quad	0x3fd23e5b8561d430              # double 0.28505599999999998
	.quad	0x3fd1314445aa2e3c              # double 0.26863199999999998
	.quad	0x3fe963c536d655e3              # double 0.79342900000000005
	.quad	0x3fe6a94573a79789              # double 0.70816299999999999
	.quad	0x3fd5725c3dee7818              # double 0.33510499999999999
	.quad	0x3fc900c521dda05a              # double 0.19533600000000001
	.quad	0x3feb81711947cfa2              # double 0.85955099999999995
	.quad	0x3fe0f544bb1af3a1              # double 0.52993999999999997
	.quad	0x3fed6a550870110a              # double 0.91922999999999999
	.quad	0x3fef49e44fa05144              # double 0.97777000000000002
	.quad	0x3feb1fc8f32378ab              # double 0.84762999999999999
	.quad	0x3fe5a1b3aeee9574              # double 0.67598899999999995
	.quad	0x3fdca26a22b3892f              # double 0.44741300000000001
	.quad	0x3fe6e685db76b3bc              # double 0.71564000000000005
	.quad	0x3fdfaacd9e83e426              # double 0.49480000000000002
	.quad	0x3feac8344c37e6f7              # double 0.83693899999999999
	.quad	0x3fea720a73f748a1              # double 0.82642099999999996
	.quad	0x3fd7c11e42e12620              # double 0.37116199999999999
	.quad	0x3fc594d0dcfcc5b9              # double 0.168604
	.quad	0x3fb9ba6efc371da3              # double 0.10050099999999999
	.quad	0x3fbade225fa658c5              # double 0.104952
	.quad	0x3fe4d0635a426bb5              # double 0.65043799999999996
	.quad	0x3fd04f93bc0a06ea              # double 0.254857
	.quad	0x3fe6220ddc619546              # double 0.69165699999999997
	.quad	0x3fecf0fbeb9e492c              # double 0.90441700000000002
	.quad	0x3fe890d5a5b9628d              # double 0.76768000000000003
	.quad	0x3fd93e3e29307af2              # double 0.394424
	.quad	0x3fec4e9813879c41              # double 0.88459399999999999
	.quad	0x3fefc8f75536933a              # double 0.993282
	.quad	0x3fe4734b51372a39              # double 0.63907400000000003
	.quad	0x3feb0a9de8b3b320              # double 0.84504599999999996
	.quad	0x3fdbbc83a96d4c34              # double 0.43338100000000002
	.quad	0x3fb7359ff4fd6d7f              # double 0.090662000000000006
	.quad	0x3fea6455eaee2004              # double 0.82474800000000003
	.quad	0x3fec6b78897e9963              # double 0.88811899999999999
	.quad	0x3fd3dc22ab25b318              # double 0.310311
	.quad	0x3fef3ce8533b1077              # double 0.97618499999999996
	.quad	0x3fe7b27674d16335              # double 0.74053500000000005
	.quad	0x3fe543a42f1ed17c              # double 0.66450699999999996
	.quad	0x3fe5efc7a398201d              # double 0.68552000000000002
	.quad	0x3fd3281344806291              # double 0.299321
	.quad	0x3feea2ea0fd3b29a              # double 0.95738699999999999
	.quad	0x3fe37e4de3b8a19d              # double 0.60916800000000004
	.quad	0x3fd0ee568a50507a              # double 0.26454699999999998
	.quad	0x3fec8f51ac9afe1e              # double 0.89249500000000004
	.quad	0x3fe7668a0d349be9              # double 0.731267
	.quad	0x3fd81ada76d97b31              # double 0.376639
	.quad	0x3fd2256ffc115df6              # double 0.28353499999999998
	.quad	0x3fc17d7c2ca148bb              # double 0.13664200000000001
	.quad	0x3feed66490a350d3              # double 0.96367100000000005
	.quad	0x3fc6c1c1d6cf850e              # double 0.177788
	.quad	0x3fe9a45b291b823d              # double 0.80131300000000005
	.quad	0x3fb0813cab81f96a              # double 0.064472000000000002
	.quad	0x3fab0b178b370047              # double 0.052818999999999998
	.quad	0x3fecf4ddf86e3b47              # double 0.904891
	.quad	0x3febfabfb9bed30f              # double 0.874359
	.quad	0x3fc8a98aa8650e78              # double 0.19267400000000001
	.quad	0x3fe5d8644523f67f              # double 0.68266499999999997
	.quad	0x3fe244fc1df3300e              # double 0.57092100000000001
	.quad	0x3fe28e0a84be4042              # double 0.57983899999999999
	.quad	0x3fc851fc4c165908              # double 0.190002
	.quad	0x3fe2dcbff47735c2              # double 0.58944700000000005
	.quad	0x3fac3f3e0370cdc8              # double 0.055169999999999997
	.quad	0x3fdc69f05ea24cc7              # double 0.44396600000000003
	.quad	0x3feb6874c8ffb8b2              # double 0.85650099999999996
	.quad	0x3fe2c33f85510d39              # double 0.58633400000000002
	.quad	0x3fe8dca4b124d09a              # double 0.77693400000000001
	.quad	0x3feacadbc664d3bf              # double 0.83726299999999998
	.quad	0x3fd8b0f27bb2fec5              # double 0.38579999999999998
	.quad	0x3fd2134ce3de614a              # double 0.28242800000000001
	.quad	0x3fe8d9c49774256c              # double 0.77658300000000002
	.quad	0x3fd61351159c4977              # double 0.34492899999999999
	.quad	0x3fe0ea7264a16a48              # double 0.52861899999999995
	.quad	0x3fe777c243dccea3              # double 0.73336900000000005
	.quad	0x3fe6d2630ec31162              # double 0.71318199999999998
	.quad	0x3fe6bddb9841aac5              # double 0.71067599999999997
	.quad	0x3fd3ca9ef5232d2c              # double 0.30924200000000002
	.quad	0x3fe38029f16b11c7              # double 0.60939500000000002
	.quad	0x3fb9d13d74d594f2              # double 0.10084899999999999
	.quad	0x3fe376c4827b6fe3              # double 0.60824800000000001
	.quad	0x3fe340980b242071              # double 0.60163500000000003
	.quad	0x3fe4e42e12620254              # double 0.65285400000000005
	.quad	0x3fd5b76709fa54c5              # double 0.33931899999999998
	.quad	0x3fc1d3996fa82e88              # double 0.13927
	.quad	0x3fefe9be09bb6aa5              # double 0.99728300000000003
	.quad	0x3fd9e1049235f80a              # double 0.40435900000000002
	.quad	0x3fed72dc2b0ea183              # double 0.92027099999999995
	.quad	0x3fde5475a31a4bdc              # double 0.47390500000000002
	.quad	0x3fd0fcc9ea9a3d2e              # double 0.26542900000000003
	.quad	0x3feb6e99a62ed352              # double 0.85725099999999999
	.quad	0x3fed0ab713272431              # double 0.90755799999999998
	.quad	0x3fe7964a59c065b6              # double 0.73709599999999997
	.quad	0x3fda84d76ab58080              # double 0.414358
	.quad	0x3fe446da4484944f              # double 0.63364900000000002
	.quad	0x3f820fb224aada34              # double 0.0088190000000000004
	.quad	0x3fef9b4dcebfec14              # double 0.98770800000000003
	.quad	0x3fe73fc2224edf61              # double 0.72653299999999998
	.quad	0x3fc65692b3cc4ac7              # double 0.17451700000000001
	.quad	0x3fd41c432ca57a78              # double 0.31422499999999998
	.quad	0x3fdc35b4edb2f662              # double 0.440778
	.quad	0x3fdf36deb95e5aff              # double 0.48772399999999999
	.quad	0x3fa249e44fa05144              # double 0.035720000000000002
	.quad	0x3fcb9e1f3a57eaa3              # double 0.21576300000000001
	.quad	0x3fd92ac753e707e1              # double 0.39323599999999997
	.quad	0x3fd564e48626f60e              # double 0.334283
	.quad	0x3fe4d9791819d239              # double 0.65154699999999999
	.quad	0x3febe18266772d5e              # double 0.871278
	.quad	0x3feb6ae5bc87db2b              # double 0.85679899999999998
	.quad	0x3fd6d41b75a74c0a              # double 0.35669600000000001
	.quad	0x3fe9250d6b228dca              # double 0.78577300000000005
	.quad	0x3fb771b8aa00192a              # double 0.091578999999999993
	.quad	0x3fccddc6195464dc              # double 0.225518
	.quad	0x3fd3e931876188b1              # double 0.311108
	.quad	0x3fb6c343b70ef566              # double 0.088916999999999996
	.quad	0x3fcaf52b90a78290              # double 0.21060699999999999
	.quad	0x3fdd1ca7d6733ebc              # double 0.454874
	.quad	0x3fe59a5ebb7739f3              # double 0.67509399999999997
	.quad	0x3fe7e64f54d1e96c              # double 0.74686399999999997
	.quad	0x3fe313404ea4a8c1              # double 0.59609999999999996
	.quad	0x3fe4c67168f8e7de              # double 0.64922400000000002
	.quad	0x3fc05058dde7a744              # double 0.12745200000000001
	.quad	0x3fda47bedb7281fe              # double 0.41062900000000002
	.quad	0x3fdad7add15f02c5              # double 0.41941400000000001
	.quad	0x3faf13cee9dd7ecc              # double 0.060698000000000002
	.quad	0x3fe7fc9de0503750              # double 0.749587
	.quad	0x3f9a4acf312b1b37              # double 0.025676000000000001
	.quad	0x3f9ae2da554b8bf0              # double 0.026256000000000002
	.quad	0x3fefea465a57646b              # double 0.99734800000000001
	.quad	0x3fb785d744f5d356              # double 0.091885999999999995
	.quad	0x3fee628ed5f138bd              # double 0.94953100000000001
	.quad	0x3fefb69db65ecc3e              # double 0.99104199999999998
	.quad	0x3fe156c93a711516              # double 0.54184399999999999
	.quad	0x3fedae44b6e935b9              # double 0.92752299999999999
	.quad	0x3fe80e991ff7164c              # double 0.75178199999999995
	.quad	0x3fe64fb3311a543f              # double 0.69722899999999999
	.quad	0x3fe96225fa658c4c              # double 0.79323100000000001
	.quad	0x3fd6b68cef672b88              # double 0.35489199999999999
	.quad	0x3fc9672b884406c0              # double 0.198461
	.quad	0x3fce6234a87e38eb              # double 0.237372
	.quad	0x3fec44a83b1d0c80              # double 0.88338099999999997
	.quad	0x3fe4dcdf69878317              # double 0.65196200000000004
	.quad	0x3fde748e4755ffe7              # double 0.47586400000000001
	.quad	0x3fefd4e4c942d491              # double 0.99473800000000001
	.quad	0x3fe57ed634549b63              # double 0.67173300000000002
	.quad	0x3fd2a18bd66277c4              # double 0.29110999999999998
	.quad	0x3fc03ab862b27cbf              # double 0.12679199999999999
	.quad	0x3fd27be9856a37ac              # double 0.28881299999999999
	.quad	0x3fe139de481f5382              # double 0.53831399999999996
	.quad	0x3fe64e0daa0cae64              # double 0.69702799999999998
	.quad	0x3fe954b05b7cfe58              # double 0.79158799999999996
	.quad	0x3fe9a096787ce960              # double 0.80085300000000003
	.quad	0x3fd9338b47c73eee              # double 0.39377099999999998
	.quad	0x3fe5e41919ac7970              # double 0.68409399999999998
	.quad	0x3fd04eca686e7e63              # double 0.25480900000000001
	.quad	0x3fbf00ffda4052d6              # double 0.12110899999999999
	.quad	0x3fedf01754b05b7d              # double 0.935558
	.quad	0x3fd2293d102bc72e              # double 0.28376699999999999
	.quad	0x3fe5ffa5d28d002e              # double 0.68745699999999998
	.quad	0x3fe6830c23fab10c              # double 0.70349700000000004
	.quad	0x3fc622ccb3a2595c              # double 0.17293700000000001
	.quad	0x3fe6942b302f72b4              # double 0.70558699999999996
	.quad	0x3fec5c5d63886595              # double 0.88627500000000003
	.quad	0x3fdd18a009f62307              # double 0.45462799999999998
	.quad	0x3fe451f1cfbb9496              # double 0.63500299999999998
	.quad	0x3fe8057082491afc              # double 0.75066399999999999
	.quad	0x3fc6e03b3e9a6f82              # double 0.17871799999999999
	.quad	0x3fcec77dd872f33d              # double 0.24046300000000001
	.quad	0x3feeea5d6bebe165              # double 0.96610899999999999
	.quad	0x3fea4c319c5a3e3a              # double 0.821801
	.quad	0x3fdbff3f0fe047d4              # double 0.43745400000000001
	.quad	0x3fc0ea077036c9c1              # double 0.13214200000000001
	.quad	0x3fda9e731d2e0e30              # double 0.41592099999999999
	.quad	0x3fe712146a1a500d              # double 0.72095699999999996
	.quad	0x3feae8b3b320535d              # double 0.84090600000000004
	.quad	0x3fd103925bb7b6bb              # double 0.265843
	.quad	0x3fe539b8887229e9              # double 0.663296
	.quad	0x3fe0daa715831f04              # double 0.52669100000000002
	.quad	0x3f6c304ccee5abc1              # double 0.003441
	.quad	0x3fafc19c17225b75              # double 0.062024000000000003
	.quad	0x3fe7475a31a4bdba              # double 0.72746
	.quad	0x3fba8e0c9d9d3459              # double 0.10373
	.quad	0x3fe4ae1262025397              # double 0.64624899999999996
	.quad	0x3fe84f8b588e368f              # double 0.75971
	.quad	0x3fcd5ba2be0589ad              # double 0.22935900000000001
	.quad	0x3feeb636f3b213e4              # double 0.95974300000000001
	.quad	0x3faf53a3ec02f2fa              # double 0.061185000000000003
	.quad	0x3fe8059c8c9320da              # double 0.75068500000000005
	.quad	0x3febdfb0d51f81a6              # double 0.87105600000000005
	.quad	0x3fcde0a41a261bf3              # double 0.23341799999999999
	.quad	0x3fcc4d5d80e496ee              # double 0.221111
	.quad	0x3fe9d7ff9b56323c              # double 0.80761700000000002
	.quad	0x3fbfd1aa821f2991              # double 0.124293
	.quad	0x3fe1b358f2e05ccd              # double 0.55314300000000005
	.quad	0x3fed6b52c9d16fca              # double 0.91935100000000003
	.quad	0x3fd760999dcb5782              # double 0.36527100000000001
	.quad	0x3fe970de8f6cefed              # double 0.79502799999999996
	.quad	0x3fdc3cb81733226c              # double 0.44120599999999999
	.quad	0x3fbda4f00ef1348b              # double 0.115798
	.quad	0x3fe4d3111f0c34c2              # double 0.65076500000000004
	.quad	0x3feaebc83a96d4c3              # double 0.84128199999999997
	.quad	0x3fe067f0aa21a71a              # double 0.51268800000000003
	.quad	0x3fadddb1209edbf9              # double 0.058332000000000002
	.quad	0x3fe7143bf727136a              # double 0.72121999999999997
	.quad	0x3fe62c57e23f24d9              # double 0.692913
	.quad	0x3fdee21101b00368              # double 0.48254799999999998
	.quad	0x3fc34c122749f0e5              # double 0.150759
	.quad	0x3fe87e8ccdd93c47              # double 0.76544800000000002
	.quad	0x3fe99845dc832336              # double 0.79983800000000005
	.quad	0x3fe27893faf42785              # double 0.57721900000000004
	.quad	0x3fd5e707e175d13d              # double 0.34222599999999997
	.quad	0x3fc9cf4623d0bfa1              # double 0.20163800000000001
	.quad	0x3fc46aa8eb463498              # double 0.15950500000000001
	.quad	0x3f5b0ccbc05d52c1              # double 0.0016509999999999999
	.quad	0x3fce9b30728e92d5              # double 0.23911099999999999
	.quad	0x3fe6d5eaee2003ac              # double 0.71361300000000005
	.quad	0x3feaddc6195464dc              # double 0.83957199999999998
	.quad	0x3fd8d9274e22a2c2              # double 0.38825399999999999
	.quad	0x3fc03dee78183f92              # double 0.12689
	.quad	0x3fed0cc144028e50              # double 0.90780700000000003
	.quad	0x3fc7cc100e6afcce              # double 0.185915
	.quad	0x3fed532830a0b1bc              # double 0.91640100000000002
	.quad	0x3fd8008205ff1d82              # double 0.375031
	.quad	0x3fdc928e0c9d9d34              # double 0.44644499999999998
	.quad	0x3fe713be22e5de16              # double 0.72116000000000002
	.quad	0x3fe1c9491f2dc2b1              # double 0.55582100000000001
	.quad	0x3fd6b0b7c3504c49              # double 0.35453600000000002
	.quad	0x3fe50f4d7add15f0              # double 0.65811799999999998
	.quad	0x3f9544bb1af3a14d              # double 0.02077
	.quad	0x3fed73775b813016              # double 0.92034499999999997
	.quad	0x3fe213a0c6b484d7              # double 0.56489599999999995
	.quad	0x3fb488b545c78a6e              # double 0.080211000000000004
	.quad	0x3fdb74b838c111ae              # double 0.42899900000000002
	.quad	0x3fef3c70c996b767              # double 0.97612799999999999
	.quad	0x3fb986db50f40e5a              # double 0.099713999999999997
	.quad	0x3fe2d94f26aec072              # double 0.58902699999999997
	.quad	0x3fe1812599ed7c70              # double 0.54701500000000003
	.quad	0x3fe9b632c1f42bb6              # double 0.80349099999999996
	.quad	0x3fdc215fcc1871e7              # double 0.43953700000000001
	.quad	0x3fee265add9c27e9              # double 0.94218199999999996
	.quad	0x3fc6e9b38d60a633              # double 0.179007
	.quad	0x3fb252157689ca19              # double 0.071565000000000004
	.quad	0x3fbb37b8d3f1843c              # double 0.106319
	.quad	0x3fe59f1f14983d79              # double 0.675674
	.quad	0x3fc0d4fdf3b645a2              # double 0.13150000000000001
	.quad	0x3fe188e581cf7879              # double 0.54796100000000003
	.quad	0x3fe99422ccb3a259              # double 0.79933299999999996
	.quad	0x3fe2195cc857f306              # double 0.56559599999999999
	.quad	0x3f433c1ce6c093d9              # double 5.8699999999999996E-4
	.quad	0x3fed5892684cf074              # double 0.91706200000000004
	.quad	0x3fd12962cfd8f0c7              # double 0.26815099999999997
	.quad	0x3fe034549b62c775              # double 0.50638799999999995
	.quad	0x3fee82afdda8bd23              # double 0.95345299999999999
	.quad	0x3fe22af1455219a8              # double 0.56774199999999997
	.quad	0x3fb588094e5d5b25              # double 0.084107000000000001
	.quad	0x3feadc4007570c56              # double 0.83938599999999997
	.quad	0x3fd344241c3efae8              # double 0.30103400000000002
	.quad	0x3feb59231c64ba95              # double 0.85463100000000003
	.quad	0x3feb2be0589acbc9              # double 0.84910600000000003
	.quad	0x3fd47f84449dbec2              # double 0.32028299999999998
	.quad	0x3fe65fefbf401c50              # double 0.69921100000000003
	.quad	0x3fe8b5dedf1e0829              # double 0.77220100000000003
	.quad	0x3febe6be7afa7222              # double 0.87191700000000005
	.quad	0x3febae7d566cf41f              # double 0.86504999999999999
	.quad	0x3fea60ed80a17b0f              # double 0.82433199999999995
	.quad	0x3fdb1c3efae7924b              # double 0.423599
	.quad	0x3fcfcdc443914f48              # double 0.24846699999999999
	.quad	0x3fe432bfdb4cc250              # double 0.63119499999999995
	.quad	0x3fcf89ce4a7b4e55              # double 0.246393
	.quad	0x3fc5f401c4fc1df3              # double 0.17150899999999999
	.quad	0x3fe2359791819d24              # double 0.56904200000000005
	.quad	0x3fb146d3f9e7b80b              # double 0.067487000000000005
	.quad	0x3fd543b70ef56649              # double 0.332258
	.quad	0x3feafd4e09784ec6              # double 0.84342099999999998
	.quad	0x3fb493c89f40a287              # double 0.080379999999999993
	.quad	0x3fe7153bd1676641              # double 0.72134200000000004
	.quad	0x3fedd9945b6c3761              # double 0.93281000000000003
	.quad	0x3fe8d3825e13b18e              # double 0.77581900000000004
	.quad	0x3feef1476af89c5e              # double 0.96695299999999995
	.quad	0x3fe243dccea28fe2              # double 0.57078399999999996
	.quad	0x3fbd44028e4fb97c              # double 0.114319
	.quad	0x3fd1a99fa11a975b              # double 0.275978
	.quad	0x3fe823f8982cb210              # double 0.75439100000000003
	.quad	0x3fe80f8e7ddca4b1              # double 0.75189899999999998
	.quad	0x3fd6cb70ac3a860e              # double 0.35616700000000001
	.quad	0x3fefd43f1c75818c              # double 0.99465899999999995
	.quad	0x3fe1e4b2314013ec              # double 0.55916699999999997
	.quad	0x3fdb88094e5d5b25              # double 0.430178
	.quad	0x3fe4c8216c61522a              # double 0.64942999999999995
	.quad	0x3fcc23bff8a8f3aa              # double 0.21984100000000001
	.quad	0x3fe754d1e96c3fc4              # double 0.72910399999999997
	.quad	0x3fab5f809917939a              # double 0.053462999999999997
	.quad	0x3fde688bda9435ad              # double 0.47513100000000003
	.quad	0x3fe24c426351def0              # double 0.57180900000000001
	.quad	0x3fe8ea2b1704ff43              # double 0.77858499999999997
	.quad	0x3fc0027d88c1db01              # double 0.12507599999999999
	.quad	0x3fc1c15097c80842              # double 0.138712
	.quad	0x3fb5332acfb762d8              # double 0.082811999999999997
	.quad	0x3fe4756a7ac81d3b              # double 0.63933300000000004
	.quad	0x3fdf7be121ee6751              # double 0.49193599999999998
	.quad	0x3feebb7739f340d5              # double 0.96038400000000001
	.quad	0x3fe4f666234a87e4              # double 0.65507800000000005
	.quad	0x3fdacd423d9231c6              # double 0.41877799999999998
	.quad	0x3fef8d4dc65c7043              # double 0.98599899999999995
	.quad	0x3fe9255d1c3ac92a              # double 0.78581100000000004
	.quad	0x3fc90364388ebcc7              # double 0.19541600000000001
	.quad	0x3fe54ae21101b003              # double 0.66539099999999995
	.quad	0x3fefe9984a0e410b              # double 0.99726499999999995
	.quad	0x3fad31fcd24e160e              # double 0.057022000000000003
	.quad	0x3fea3061c79b34a4              # double 0.81840599999999996
	.quad	0x3fe310214ad362e9              # double 0.595719
	.quad	0x3fdf308feac42e99              # double 0.48733900000000002
	.quad	0x3fdddd50a88effe3              # double 0.46663300000000002
	.quad	0x3fdfbe6a337a80d0              # double 0.49599700000000002
	.quad	0x3fc1055b89939219              # double 0.13297600000000001
	.quad	0x3fe16c9e236c15d3              # double 0.54450900000000002
	.quad	0x3fdfb4959e625636              # double 0.49539699999999998
	.quad	0x3fe159578a2a90cd              # double 0.54215599999999997
	.quad	0x3fd09f6a93f290ac              # double 0.25973000000000002
	.quad	0x3fed7fb267c6b8b7              # double 0.92183800000000005
	.quad	0x3fe75eefe4ffc979              # double 0.73033899999999996
	.quad	0x3fc5475a31a4bdba              # double 0.16624
	.quad	0x3feb43cc07aaef2c              # double 0.85202599999999995
	.quad	0x3fead54fbdad7519              # double 0.83853900000000003
	.quad	0x3fef9d4f9c1f85d7              # double 0.98795299999999997
	.quad	0x3fd998bf7f06705d              # double 0.39994800000000003
	.quad	0x3fbab0ea18372e6a              # double 0.10426199999999999
	.quad	0x3fe6e8ff327aa68f              # double 0.71594199999999997
	.quad	0x3fe7e41b328b6d87              # double 0.74659500000000001
	.quad	0x3fc9a415f45e0b4e              # double 0.20032
	.quad	0x3f86883771865519              # double 0.011002
	.quad	0x3fec448adeebb342              # double 0.88336700000000001
	.quad	0x3fe24c942d490e67              # double 0.57184800000000002
	.quad	0x3fe009741d084e83              # double 0.50115399999999999
	.quad	0x3fc0bdcad14a0a0f              # double 0.13079199999999999
	.quad	0x3fdad413122b7baf              # double 0.41919400000000001
	.quad	0x3fe0e777079e59f3              # double 0.52825500000000003
	.quad	0x3fead9d55e6bc622              # double 0.83909100000000003
	.quad	0x3fded2cbea4ebdd3              # double 0.48161599999999999
	.quad	0x3fdcdc22ab25b318              # double 0.450936
	.quad	0x3fef9fb3fa6defc8              # double 0.98824500000000004
	.quad	0x3fdb15ce9e5e2479              # double 0.42320600000000003
	.quad	0x3fe41348b220791c              # double 0.62735399999999997
	.quad	0x3fe84f227d028a1e              # double 0.75966
	.quad	0x3fdc266ba493c89f              # double 0.43984499999999999
	.quad	0x3fe1fddebd9018e7              # double 0.56223999999999996
	.quad	0x3fc94d50ebaade65              # double 0.19767199999999999
	.quad	0x3f95a14488c60cbf              # double 0.021122999999999999
	.quad	0x3feb4c3c18b502ac              # double 0.85305600000000003
	.quad	0x3fd2c6a3bddfca00              # double 0.29337400000000002
	.quad	0x3fe060daa0cae643              # double 0.51182300000000003
	.quad	0x3fe5235b4edb2f66              # double 0.66056599999999999
	.quad	0x3feab84988094e5d              # double 0.83499599999999996
	.quad	0x3fe1fdac68a936c6              # double 0.56221600000000005
	.quad	0x3fc8f312b1b36bd3              # double 0.19491800000000001
	.quad	0x3fc42dd7a99fa11b              # double 0.15764900000000001
	.quad	0x3fee37c99ae924f2              # double 0.94430999999999998
	.quad	0x3fca4fc1df3300de              # double 0.20555899999999999
	.quad	0x3fd5b0d0edc3bd5a              # double 0.33891700000000002
	.quad	0x3fb88c3f3e0370ce              # double 0.095890000000000003
	.quad	0x3fefd2a1f8e3ac0c              # double 0.99446199999999995
	.quad	0x3fe375a1016ce78a              # double 0.60810900000000001
	.quad	0x3fe082539756c93a              # double 0.51590899999999995
	.quad	0x3fb2a5a469d7342f              # double 0.072840000000000002
	.quad	0x3f9fa376922d948e              # double 0.030897000000000001
	.quad	0x3feb7ba6698bb4d5              # double 0.85884400000000005
	.quad	0x3fb9d4845132f87b              # double 0.100899
	.quad	0x3fd9209246bf0132              # double 0.39261299999999999
	.quad	0x3fcfedc7ef177a70              # double 0.249444
	.quad	0x3fd76c4827b6fe2e              # double 0.36598399999999998
	.quad	0x3fecc9b845564b66              # double 0.89962399999999998
	.quad	0x3fec9ed3953dea46              # double 0.89438799999999996
	.quad	0x3fe9b4f82f512663              # double 0.80334099999999997
	.quad	0x3fed30a915379fa9              # double 0.91218999999999995
	.quad	0x3fec6325d4a5df22              # double 0.88710299999999997
	.quad	0x3fdbcc74b838c112              # double 0.43435400000000002
	.quad	0x3fe5f8c868b9fdbd              # double 0.68661899999999998
	.quad	0x3fddc5197a24894c              # double 0.46515499999999999
	.quad	0x3fe0608d08919ef9              # double 0.51178599999999996
	.quad	0x3fe596c1e364bec6              # double 0.67465299999999995
	.quad	0x3fcb5a426bb55ac0              # double 0.21369199999999999
	.quad	0x3fa62ed352220bc4              # double 0.043326000000000003
	.quad	0x3fea2d794a6eb91b              # double 0.81805099999999997
	.quad	0x3fd5356da0168b5d              # double 0.33138600000000001
	.quad	0x3fe0bcba30121683              # double 0.523038
	.quad	0x3fe91d6adf71eaff              # double 0.78484100000000001
	.quad	0x3fee5188f42fe825              # double 0.94745299999999999
	.quad	0x3fe7cb5fe542e558              # double 0.74357600000000001
	.quad	0x3fd04b7f5a5332ad              # double 0.254608
	.quad	0x3fc154866a11ec92              # double 0.13539200000000001
	.quad	0x3fd3bf6e3f78bbd4              # double 0.30855900000000003
	.quad	0x3fd5dbf0563ed0f6              # double 0.34154899999999999
	.quad	0x3fe0b01a79fec99f              # double 0.52149699999999999
	.quad	0x3fe77b84db9c7369              # double 0.73382800000000004
	.quad	0x3fead0cc35ce1826              # double 0.83798799999999996
	.quad	0x3fd648f10a99b6f6              # double 0.34820200000000001
	.quad	0x3fe5de3fbbd7b203              # double 0.68337999999999999
	.quad	0x3faf8ee286727568              # double 0.061636999999999997
	.quad	0x3fe6e034f3fd933e              # double 0.71486899999999998
	.quad	0x3fe5ebb55ac03ff7              # double 0.68502300000000005
	.quad	0x3fc669f8c21e1d21              # double 0.17510899999999999
	.quad	0x3fb7e414e7ee9143              # double 0.093324000000000004
	.quad	0x3fededf82b1f687b              # double 0.93529899999999999
	.quad	0x3fdba6b93ccd0fe9              # double 0.43205100000000002
	.quad	0x3fe09f9f01b866e4              # double 0.51948499999999997
	.quad	0x3fd5172ef0ae5365              # double 0.32954
	.quad	0x3fc97cf5f4e4430b              # double 0.199126
	.quad	0x3fe830d0edc3bd5a              # double 0.75595900000000005
	.quad	0x3fda69552e2fbe34              # double 0.41267900000000002
	.quad	0x3fe62ad601ffb481              # double 0.69272900000000004
	.quad	0x3fd4acc0bdcad14a              # double 0.323044
	.quad	0x3fec52178f68be2f              # double 0.88502099999999995
	.quad	0x3fcb3b0813cab820              # double 0.21273900000000001
	.quad	0x3fe0f58e219652bd              # double 0.52997499999999997
	.quad	0x3fe047192ea52ef9              # double 0.50867899999999999
	.quad	0x3fe56af6837f7be1              # double 0.66930699999999999
	.quad	0x3fd865a14488c60d              # double 0.38120300000000001
	.quad	0x3fdc0624dd2f1aa0              # double 0.43787500000000001
	.quad	0x3fd001bc98a222d5              # double 0.25010599999999999
	.quad	0x3fd6da9003eea20a              # double 0.35709000000000002
	.quad	0x3fe3df3b645a1cac              # double 0.621
	.quad	0x3fe8b50b0f27bb30              # double 0.77210000000000001
	.quad	0x3fd5e02ea960b6fa              # double 0.341808
	.quad	0x3feb6a704bc27632              # double 0.85674300000000003
	.quad	0x3fecec7219220ff5              # double 0.90386299999999997
	.quad	0x3fed435ac8a37260              # double 0.91447199999999995
	.quad	0x3fc9a71151611ba4              # double 0.20041100000000001
	.quad	0x3fe207f66e86c658              # double 0.56347199999999997
	.quad	0x3fc451c9f72f76e6              # double 0.158746
	.quad	0x3fdcdc50ce4ead0c              # double 0.45094699999999999
	.quad	0x3fd78eb0318b9347              # double 0.36808400000000002
	.quad	0x3feeae9ccb7d4174              # double 0.95881499999999997
	.quad	0x3fa4ac4b4d056c51              # double 0.040377000000000003
	.quad	0x3fd88cd20afa2f06              # double 0.38359500000000002
	.quad	0x3fec486f049a9974              # double 0.88384200000000001
	.quad	0x3fed801711947cfa              # double 0.92188599999999998
	.quad	0x3f9bead4f5903a75              # double 0.027262999999999999
	.quad	0x3fda91105e1c1509              # double 0.41510399999999997
	.quad	0x3fc94f3fd933e35c              # double 0.19773099999999999
	.quad	0x3fe6d5f3519bd406              # double 0.71361699999999995
	.quad	0x3fe39fc4c165907e              # double 0.61325300000000005
	.quad	0x3fc99d12cadddf44              # double 0.20010600000000001
	.quad	0x3fe9be09bb6aa4ba              # double 0.80444800000000005
	.quad	0x3fe14d07852f7f4a              # double 0.54065300000000005
	.quad	0x3fd1a56de33269e0              # double 0.27572200000000002
	.quad	0x3fd9832b990afe61              # double 0.39863100000000001
	.quad	0x3fe241b328b6d86f              # double 0.57052000000000003
	.quad	0x3fd61eafee6fb4c4              # double 0.34562300000000001
	.quad	0x3fd62fa93af74cd3              # double 0.34665899999999999
	.quad	0x3fead846e8f29d41              # double 0.83890100000000001
	.quad	0x3fd73f141205bc02              # double 0.36322500000000002
	.quad	0x3fb1ff1d81f10668              # double 0.070299
	.quad	0x3fe76f954eb13dfb              # double 0.73237099999999999
	.quad	0x3fe4b6c7a7c9de05              # double 0.647312
	.quad	0x3fc845f5ad96a6a0              # double 0.189635
	.quad	0x3fdfb1c864883fd5              # double 0.495226
	.quad	0x3feea558ea7ce0fc              # double 0.95768399999999997
	.quad	0x3fed98bb4d48882f              # double 0.92489399999999999
	.quad	0x3fe6d4195cc857f3              # double 0.713391
	.quad	0x3fe9add7a99fa11b              # double 0.80247100000000005
	.quad	0x3fd0974a3400b88d              # double 0.25923400000000002
	.quad	0x3faabda0dfdef848              # double 0.052227999999999997
	.quad	0x3fb974d594f26aec              # double 0.099438999999999999
	.quad	0x3fa1f05ea24cc682              # double 0.035036999999999999
	.quad	0x3fab28d8665e02eb              # double 0.053046000000000003
	.quad	0x3fdd1650a45d41fa              # double 0.45448699999999997
	.quad	0x3fefdd0fa58f7122              # double 0.99573500000000004
	.quad	0x3fee06bbdbe3c105              # double 0.93832199999999999
	.quad	0x3fe90663c74fb54a              # double 0.78203
	.quad	0x3feee1a8262456f7              # double 0.96504599999999995
	.quad	0x3fd7debd9018e758              # double 0.37297000000000002
	.quad	0x3fa6e5cd4ed2cbea              # double 0.044721999999999998
	.quad	0x3fe710e23af31b15              # double 0.72081099999999998
	.quad	0x3fa0691ea78af3e4              # double 0.032051999999999997
	.quad	0x3fca63f9a49c2c1b              # double 0.206176
	.quad	0x3fe033397dd00f77              # double 0.50625299999999995
	.quad	0x3fe9f8a2a90cd424              # double 0.81160100000000001
	.quad	0x3fe55976ff3ade22              # double 0.66717099999999996
	.quad	0x3febe2413db7f173              # double 0.87136899999999995
	.quad	0x3fb92923e5b8561d              # double 0.098283999999999996
	.quad	0x3fedd54da4ce8102              # double 0.93228800000000001
	.quad	0x3fe3d4dc65c70436              # double 0.61973400000000001
	.quad	0x3fe1ca8e2e2b8c76              # double 0.55597600000000003
	.quad	0x3fe910129cbab64a              # double 0.78321200000000002
	.quad	0x3fc40713f077ccc0              # double 0.15646599999999999
	.quad	0x3fd2e31d712a0ec7              # double 0.29511199999999999
	.quad	0x3fe71f81a5870da6              # double 0.72259600000000002
	.quad	0x3feb1b3aeee95747              # double 0.84707399999999999
	.quad	0x3fda10ba6266fd65              # double 0.40727099999999999
	.quad	0x3fc4984e3ffef391              # double 0.16089800000000001
	.quad	0x3fe5c1e9af5ba2be              # double 0.679921
	.quad	0x3fefc41dd1a21ea3              # double 0.99268999999999996
	.quad	0x3fc90d0edc3bd599              # double 0.195711
	.quad	0x3fe013e81450efdd              # double 0.50243000000000004
	.quad	0x3fe9bd987c6327ee              # double 0.80439400000000005
	.quad	0x3fb4a0a0f4d7add1              # double 0.080575999999999995
	.quad	0x3fd711c6d1e108c4              # double 0.36046
	.quad	0x3fe41df548ecd8dc              # double 0.62865700000000002
	.quad	0x3fc1143bf727136a              # double 0.13342999999999999
	.quad	0x3fec089a02752546              # double 0.87605
	.quad	0x3fe90ef77f27fe4c              # double 0.78307700000000002
	.quad	0x3fcc2a2c2374794f              # double 0.22003700000000001
	.quad	0x3f9188b11409a240              # double 0.017122999999999999
	.quad	0x3fe383b81b64e054              # double 0.60982899999999995
	.quad	0x3fee3f0dc768dfbd              # double 0.94519699999999995
	.quad	0x3fe33630a91537a0              # double 0.60036500000000004
	.quad	0x3fe8ec1c1d6cf851              # double 0.77882200000000001
	.quad	0x3fc8b884406c00da              # double 0.193131
	.quad	0x3fd212cf0f9d2bf5              # double 0.28239799999999998
	.quad	0x3fcf1f601797cc3a              # double 0.243145
	.quad	0x3fd27bcc2938de6e              # double 0.28880600000000001
	.quad	0x3f952e2fbe33acd6              # double 0.020684000000000001
	.quad	0x3feedde15ca6ca04              # double 0.96458500000000002
	.quad	0x3fc5b8ed1bf7ad4b              # double 0.169706
	.quad	0x3fd5727dcbddb984              # double 0.33511299999999999
	.quad	0x3fdc47c30d306a2b              # double 0.44188
	.quad	0x3fe63bbc6eb0b7c3              # double 0.69479199999999997
	.quad	0x3fc70e6f2e8c0486              # double 0.18012800000000001
	.quad	0x3fe7429e0a41a262              # double 0.72688200000000003
	.quad	0x3fd0a93af74cd317              # double 0.26032899999999998
	.quad	0x3feb46173b85e80c              # double 0.852306
	.quad	0x3fef017dae81882b              # double 0.96893200000000001
	.quad	0x3fe1a7e0ef99806f              # double 0.55174299999999998
	.quad	0x3fe7d471715c63ae              # double 0.74468299999999998
	.quad	0x3fd2d3aa369fcf3e              # double 0.29416900000000001
	.quad	0x3fd84f722e1ac57e              # double 0.37984899999999999
	.quad	0x3fe670b49e01de27              # double 0.70125800000000005
	.quad	0x3fe19cd5f99c38b0              # double 0.55039499999999997
	.quad	0x3f9ea897635e742a              # double 0.029940000000000001
	.quad	0x3fed29d627bf61aa              # double 0.91135699999999997
	.quad	0x3fc561aa3f034b0e              # double 0.167043
	.quad	0x3fd6ccd0fe8ab4fa              # double 0.35625099999999998
	.quad	0x3fdb01f31f46ed24              # double 0.42199399999999998
	.quad	0x3fecb775b8130165              # double 0.89739500000000005
	.quad	0x3fd8e8f6cefed634              # double 0.38921899999999998
	.quad	0x3fb79a38fbca105a              # double 0.092197000000000001
	.quad	0x3fcaa832b990afe6              # double 0.208258
	.quad	0x3fcd5f5f0b28522f              # double 0.22947300000000001
	.quad	0x3fe795ee136e71ce              # double 0.73705200000000004
	.quad	0x3fa26612839042d9              # double 0.035935000000000002
	.quad	0x3feba4febd09e12a              # double 0.86389099999999996
	.quad	0x3fe71a32b12d3416              # double 0.72194800000000003
	.quad	0x3fece92f6e82949a              # double 0.90346499999999996
	.quad	0x3feeaa8650e77920              # double 0.95831599999999994
	.quad	0x3fe0f4cb1897a67a              # double 0.52988199999999996
	.quad	0x3fcd2fb19e731d2e              # double 0.228018
	.quad	0x3fe7bb0c4588a04d              # double 0.74158299999999999
	.quad	0x3fe91d94d0dcfcc6              # double 0.78486100000000003
	.quad	0x3fe6ab0c88a47ed0              # double 0.70838000000000001
	.quad	0x3fecf685985ad539              # double 0.90509300000000004
	.quad	0x3fb068b9fdbd2fa1              # double 0.064098000000000002
	.quad	0x3febfd77fae3608d              # double 0.874691
	.quad	0x3fde5d0fa58f7122              # double 0.47443000000000002
	.quad	0x3fe07840181e03f7              # double 0.514679
	.quad	0x3fefcd141a6937d2              # double 0.993784
	.quad	0x3fc6d30f062d40ab              # double 0.178316
	.quad	0x3fd94e3369b9d7fe              # double 0.39539800000000003
	.quad	0x3fe8aa2e3c536d65              # double 0.77077399999999996
	.quad	0x3fcdf9bdc69f8c22              # double 0.234184
	.quad	0x3feea98aa8650e78              # double 0.95819600000000004
	.quad	0x3fe01cd1c7de5083              # double 0.50351800000000002
	.quad	0x3fe473471f79420b              # double 0.63907199999999997
	.quad	0x3fd884d338f79852              # double 0.38310699999999998
	.quad	0x3fddb124d099e0e7              # double 0.46393699999999999
	.quad	0x3fea6a6a012599ed              # double 0.82548999999999995
	.quad	0x3fe9a87c200c0f02              # double 0.801817
	.quad	0x3feeaf4f0d844d01              # double 0.95889999999999997
	.quad	0x3fef8d1fa333764f              # double 0.98597699999999999
	.quad	0x3fe3610060780fdc              # double 0.60559099999999999
	.quad	0x3fd5763a19008206              # double 0.335341
	.quad	0x3fd0d57ff9b56324              # double 0.26303100000000001
	.quad	0x3fded8d79d0a6762              # double 0.481985
	.quad	0x3fe837dc7abfb9bf              # double 0.75681900000000002
	.quad	0x3fa96a6a012599ed              # double 0.049639999999999997
	.quad	0x3fe822339c0ebee0              # double 0.75417500000000003
	.quad	0x3fe2a363b256ffc1              # double 0.58244499999999999
	.quad	0x3fd45ad96a6a0126              # double 0.31804500000000002
	.quad	0x3fd8b04ee7c49fd8              # double 0.38576100000000002
	.quad	0x3fe3ad7518b0d0ee              # double 0.61492400000000003
	.quad	0x3fde78c436fc1590              # double 0.47612100000000002
	.quad	0x3fbc010c6f7a0b5f              # double 0.109391
	.quad	0x3fd6a2595bbbe879              # double 0.353659
	.quad	0x3fcd2599ed7c6fbd              # double 0.22771
	.quad	0x3fe888094e5d5b25              # double 0.76660600000000001
	.quad	0x3fda1a79fec99f1b              # double 0.40786600000000001
	.quad	0x3fdda6266fd651b1              # double 0.46326600000000001
	.quad	0x3fdb73fb7a5f41af              # double 0.428954
	.quad	0x3fcb756c93a71151              # double 0.21452099999999999
	.quad	0x3fe9b9a38fbca106              # double 0.80391100000000004
	.quad	0x3fb178f68be2f7b1              # double 0.068251999999999993
	.quad	0x3fec7c84b5dcc63f              # double 0.89019999999999999
	.quad	0x3fdcc7ef177a7009              # double 0.44970300000000002
	.quad	0x3fe10e4da09cc31a              # double 0.53299600000000003
	.quad	0x3fe666e43aa79bbb              # double 0.70006000000000002
	.quad	0x3fefef177a7008a7              # double 0.99793600000000004
	.quad	0x3fd8314013ec460f              # double 0.37800600000000001
	.quad	0x3fe08fd9fd36f7e4              # double 0.51756000000000002
	.quad	0x3fa53f7ced916873              # double 0.041500000000000002
	.quad	0x3fe537585be1a826              # double 0.66300599999999998
	.quad	0x3fe8865d7cb2d906              # double 0.76640200000000003
	.quad	0x3fecbdcad14a0a0f              # double 0.89816799999999997
	.quad	0x3fefcd26fa3fcc9f              # double 0.99379300000000003
	.quad	0x3fdf346dc5d63886              # double 0.48757499999999998
	.quad	0x3fe8a276b7ed41b7              # double 0.76983199999999996
	.quad	0x3fdff227d028a1e0              # double 0.49915500000000002
	.quad	0x3feedb9c7368ad69              # double 0.96430800000000005
	.quad	0x3fdc39c0ebedfa44              # double 0.441025
	.quad	0x3fe4748e4755ffe7              # double 0.63922800000000002
	.quad	0x3fd5a63b688bda94              # double 0.33827099999999999
	.quad	0x3fcce85b9e8c47a1              # double 0.22584099999999999
	.quad	0x3fe2652157689ca2              # double 0.57484500000000005
	.quad	0x3fe40a1dfb9389b5              # double 0.62623499999999999
	.quad	0x3fe9b20d9945b6c3              # double 0.80298499999999995
	.quad	0x3fd8567dbb16c1e3              # double 0.38027899999999998
	.quad	0x3febff5e84f09529              # double 0.87492300000000001
	.quad	0x3fe63fd0d0678c00              # double 0.69528999999999996
	.quad	0x3fee4b72c5197a25              # double 0.94671000000000005
	.quad	0x3feff18c9fb6134d              # double 0.99823600000000001
	.quad	0x3fbe4dd2f1a9fbe7              # double 0.11837499999999999
	.quad	0x3f9d62bf11f926c8              # double 0.028697
	.quad	0x3fe28331e3a7daa5              # double 0.578515
	.quad	0x3fe90c1b97353b4b              # double 0.78272799999999998
	.quad	0x3fdbd70e6f2e8c05              # double 0.43500100000000003
	.quad	0x3feeae05ccc89b0f              # double 0.95874300000000001
	.quad	0x3fd0050bd87b56b8              # double 0.25030799999999997
	.quad	0x3fcd3d8e0008637c              # double 0.22844100000000001
	.quad	0x3fe12f7d30ad46f6              # double 0.53704700000000005
	.quad	0x3fd18cd63cb81733              # double 0.27422099999999999
	.quad	0x3fca05681ecd4aa1              # double 0.20329
	.quad	0x3fe5dab9f559b3d0              # double 0.68294999999999995
	.quad	0x3feed0edc3bd5992              # double 0.96300399999999997
	.quad	0x3fc8ac53b0813cac              # double 0.19275900000000001
	.quad	0x3fe2e833c60029f1              # double 0.59084499999999995
	.quad	0x3fb6c743201040c0              # double 0.088978000000000002
	.quad	0x3fd5b3aeee957471              # double 0.339092
	.quad	0x3fb1c4eb56fb8f58              # double 0.069411
	.quad	0x3fe50ef99806f263              # double 0.65807800000000005
	.quad	0x3fc64d4cb9ecf638              # double 0.174234
	.quad	0x3fd510e0221426fe              # double 0.32915499999999998
	.quad	0x3fe949c90c4dec1c              # double 0.79025699999999998
	.quad	0x3fd67d0f1f57b41c              # double 0.351383
	.quad	0x3fcda38fbca1059f              # double 0.23155400000000001
	.quad	0x3fe0d2c386d2ed78              # double 0.52572799999999997
	.quad	0x3fd0f405f6ba0621              # double 0.26489400000000002
	.quad	0x3fd1b61fe21d96ea              # double 0.27674100000000001
	.quad	0x3fea0259e1f3a57f              # double 0.81278700000000004
	.quad	0x3fd390214ad362e9              # double 0.305672
	.quad	0x3fded81f10667f91              # double 0.48194100000000001
	.quad	0x3f915c63ae2541d9              # double 0.016954
	.quad	0x3f40a569b17481b2              # double 5.0799999999999999E-4
	.quad	0x3fe1b584b1ab0857              # double 0.55340800000000001
	.quad	0x3fe5496ededaec4a              # double 0.66521399999999997
	.quad	0x3fe24727dcbddb98              # double 0.57118599999999997
	.quad	0x3fed55970b49e01e              # double 0.91669800000000001
	.quad	0x3feb30121682f944              # double 0.84961799999999998
	.quad	0x3fe015dd4c76d118              # double 0.50266900000000003
	.quad	0x3fe9b1af3a14cec4              # double 0.80293999999999998
	.quad	0x3fe8f1e8e6080735              # double 0.77952999999999995
	.quad	0x3fe8cd2b2bfdb4cc              # double 0.77504499999999998
	.quad	0x3fe0fc7e6b3fe9fb              # double 0.53082200000000002
	.quad	0x3fd745b291b823c8              # double 0.36362899999999998
	.quad	0x3fe1009917939a7c              # double 0.53132299999999999
	.quad	0x3fe841461b6d43d0              # double 0.75796799999999998
	.quad	0x3fe1d230b9dc2f40              # double 0.55690799999999996
	.quad	0x3fe515bbbe878fac              # double 0.65890300000000002
	.quad	0x3feafde7210be942              # double 0.84349399999999997
	.quad	0x3fca114d2f5dbb9d              # double 0.203653
	.quad	0x3fea207f66e86c66              # double 0.81646700000000005
	.quad	0x3fd551f3e89a88ad              # double 0.33312700000000001
	.quad	0x3fedb52a84380885              # double 0.928365
	.quad	0x3fd76e503fb37436              # double 0.36610799999999999
	.quad	0x3fda9246bf01322f              # double 0.41517799999999999
	.quad	0x3fe1f0435efa615b              # double 0.56057900000000005
	.quad	0x3fc8af9a8cdea034              # double 0.192859
	.quad	0x3fce85a921ccd962              # double 0.238454
	.quad	0x3fe679591cd1c7de              # double 0.70231299999999997
	.quad	0x3fb2a497fa5d28d0              # double 0.072824
	.quad	0x3fee4851a8694035              # double 0.94632799999999995
	.quad	0x3feda76fb09203a3              # double 0.92668899999999998
	.quad	0x3fe5f77af640639d              # double 0.68645999999999996
	.quad	0x3fe419f5dfeb8d82              # double 0.62816899999999998
	.quad	0x3feab762d83c6c98              # double 0.83488600000000002
	.quad	0x3fe3a95c853c1483              # double 0.61442399999999997
	.quad	0x3fd0db59578a2a91              # double 0.26338800000000001
	.quad	0x3fef577d955714ba              # double 0.97943000000000002
	.quad	0x3fe7faebc408d8ed              # double 0.74938000000000005
	.quad	0x3fe61e731d2e0e30              # double 0.69121699999999997
	.quad	0x3fb16e158750c1b9              # double 0.068085999999999994
	.quad	0x3fe6044ae85b9e8c              # double 0.68802399999999997
	.quad	0x3fd959578a2a90cd              # double 0.39607799999999999
	.quad	0x3fe6f0c996b7670a              # double 0.716893
	.quad	0x3fe9ea37ac3eb7cc              # double 0.80984100000000003
	.quad	0x3fe797f84449dbec              # double 0.73730099999999998
	.quad	0x3fd32962cfd8f0c7              # double 0.29940099999999997
	.quad	0x3f9463065f9591cd              # double 0.019909
	.quad	0x3fe1fe3b03e20cd0              # double 0.56228400000000001
	.quad	0x3fdf0cbaf965b20c              # double 0.48515200000000003
	.quad	0x3fe8e234a87e38eb              # double 0.777613
	.quad	0x3fec9b5a63f9a49c              # double 0.89396399999999998
	.quad	0x3fdf7c0f45176146              # double 0.49194700000000002
	.quad	0x3fe02c215b9a5a8a              # double 0.50538700000000003
	.quad	0x3febc649906cca2e              # double 0.86795500000000003
	.quad	0x3feacfe9b7bf1e8e              # double 0.83787999999999996
	.quad	0x3fe05bd944aa53fc              # double 0.511212
	.quad	0x3feb59817b95a294              # double 0.85467599999999999
	.quad	0x3fe6b20b8066c2ad              # double 0.70923400000000003
	.quad	0x3feecf9c1f85d745              # double 0.962843
	.quad	0x3fc192ea52ef911d              # double 0.137296
	.quad	0x3fa4f8726d04e619              # double 0.040958000000000001
	.quad	0x3fdb91e215336dec              # double 0.43077900000000002
	.quad	0x3fee596638433d6c              # double 0.94841299999999995
	.quad	0x3fec6940357a3550              # double 0.88784799999999997
	.quad	0x3fd1bfad2999567e              # double 0.27732400000000001
	.quad	0x3fa9fd9ba1b19610              # double 0.050763000000000003
	.quad	0x3fcd43d03968d75a              # double 0.228632
	.quad	0x3fbe5d7cb2d905c0              # double 0.118614
	.quad	0x3fef084e831ad213              # double 0.96976399999999995
	.quad	0x3feab1c64ba94bbe              # double 0.83420099999999997
	.quad	0x3febcd6c2efd438d              # double 0.86882599999999999
	.quad	0x3fc0653868fd199c              # double 0.12808900000000001
	.quad	0x3fd77f0ed3d859c9              # double 0.36713000000000001
	.quad	0x3fe76b9a176ddacf              # double 0.73188500000000001
	.quad	0x3fdebe0157eed45f              # double 0.48034700000000002
	.quad	0x3fe6f96e158750c2              # double 0.71794800000000003
	.quad	0x3fcd2ffd1dcd7061              # double 0.22802700000000001
	.quad	0x3fef86a098915bdd              # double 0.98518399999999994
	.quad	0x3fe29e92923e5b85              # double 0.58185699999999996
	.quad	0x3fe318bd66277c46              # double 0.59677000000000002
	.quad	0x3fd061f9f01b866e              # double 0.25597999999999999
	.quad	0x3fec53ed527e5215              # double 0.88524499999999995
	.quad	0x3fceb92c061847f5              # double 0.24002599999999999
	.quad	0x3fe063b46fdeb52d              # double 0.51217100000000004
	.quad	0x3fc7db5525cc4263              # double 0.18638099999999999
	.quad	0x3fed0eed02cd39da              # double 0.90807199999999999
	.quad	0x3fe1b97fe8ee6b83              # double 0.553894
	.quad	0x3fde17df19d66adb              # double 0.47020699999999999
	.quad	0x3f90be0ded288ce7              # double 0.01635
	.quad	0x3fa21dda059a73b4              # double 0.035383999999999999
	.quad	0x3fde51c5c5718eb9              # double 0.47374100000000002
	.quad	0x3fc2efaa4766c6de              # double 0.14793899999999999
	.quad	0x3fc13bd9cae21102              # double 0.13463900000000001
	.quad	0x3fd1b5aea3161a1e              # double 0.27671400000000002
	.quad	0x3fdbf394b7b28955              # double 0.43674200000000002
	.quad	0x3fe65525cc426352              # double 0.69789400000000001
	.quad	0x3fd50c9107faa045              # double 0.32889200000000002
	.quad	0x3fee0e820e629952              # double 0.93927099999999997
	.quad	0x3fd4ee88df37329c              # double 0.32705899999999999
	.quad	0x3fd8e0ac7da1ec4e              # double 0.38871299999999998
	.quad	0x3fd8e24febd09e13              # double 0.38881300000000002
	.quad	0x3fb7c59b8023a6ce              # double 0.092858999999999997
	.quad	0x3fe52595bbbe8790              # double 0.66083800000000004
	.quad	0x3fd1011d3671ac15              # double 0.26569300000000001
	.quad	0x3fe42af1455219a8              # double 0.63024199999999997
	.quad	0x3fe19cfdd2285660              # double 0.55041399999999996
	.quad	0x3fead143bf727137              # double 0.83804500000000004
	.quad	0x3febf789a459103d              # double 0.87396700000000005
	.quad	0x3fedbb0e5e679464              # double 0.92908400000000002
	.quad	0x3fe28f08461f9f02              # double 0.57996000000000003
	.quad	0x3fcf56fb8f57f738              # double 0.244842
	.quad	0x3fc16a055757d5aa              # double 0.136048
	.quad	0x3fed082f0e0a84be              # double 0.90724899999999997
	.quad	0x3f9dd1a21ea35936              # double 0.02912
	.quad	0x3fbb797460242d06              # double 0.107322
	.quad	0x3fa2f2f9873ffac2              # double 0.037010000000000001
	.quad	0x3fabc70c996b7671              # double 0.054253000000000003
	.quad	0x3fe102b628459967              # double 0.53158099999999997
	.quad	0x3fe60b242070b8d0              # double 0.68886000000000003
	.quad	0x3fdbfd5cb790fb65              # double 0.43733899999999998
	.quad	0x3fe689203a322af5              # double 0.70423899999999995
	.quad	0x3feef666234a87e4              # double 0.96757800000000004
	.quad	0x3fe252e2fbe33acd              # double 0.57261799999999996
	.quad	0x3fd6364388ebcc6c              # double 0.34706199999999998
	.quad	0x3fe80b49e01de269              # double 0.75137799999999999
	.quad	0x3fe5968b5cbff477              # double 0.67462699999999998
	.quad	0x3fe2e657b84db9c7              # double 0.59061799999999998
	.quad	0x3fb241919ac79703              # double 0.071313000000000001
	.quad	0x3fec192a737110e4              # double 0.87807199999999996
	.quad	0x3fe10e991ff7164c              # double 0.53303199999999995
	.quad	0x3fe9fddebd9018e7              # double 0.81223999999999996
	.quad	0x3fe7a45b291b823d              # double 0.73881300000000005
	.quad	0x3f95aee631f8a090              # double 0.021174999999999999
	.quad	0x3fdcda16616b54e3              # double 0.45081100000000002
	.quad	0x3fe9636d22424a27              # double 0.79338699999999995
	.quad	0x3fe9868986fcdee3              # double 0.79767299999999997
	.quad	0x3f8f5c6c11a11234              # double 0.015313
	.quad	0x3fd53f359ff4fd6d              # double 0.33198299999999997
	.quad	0x3fc6d0d49949e881              # double 0.17824799999999999
	.quad	0x3fd5ae9ee45c358b              # double 0.338783
	.quad	0x3fd6eb2074ea8da8              # double 0.358101
	.quad	0x3fe592556d19dece              # double 0.67411299999999996
	.quad	0x3fee7383f0bae89f              # double 0.95160100000000003
	.quad	0x3fc00685553ef6b6              # double 0.125199
	.quad	0x3fea773c0c1fc8f3              # double 0.82705499999999998
	.quad	0x3fd4836eb4e98138              # double 0.32052199999999997
	.quad	0x3fefe7b5f1bef49d              # double 0.997035
	.quad	0x3fcb356da0168b5d              # double 0.21256800000000001
	.quad	0x3fc74a4d2b2bfdb5              # double 0.18195500000000001
	.quad	0x3fe48f81e8a2ec29              # double 0.64251800000000003
	.quad	0x3fd3ca600b029281              # double 0.30922699999999997
	.quad	0x3febeffe2a3cea6c              # double 0.87304599999999998
	.quad	0x3fceccf6be37de94              # double 0.24063000000000001
	.quad	0x3fe94026cc1ca3a5              # double 0.78908100000000003
	.quad	0x3fe541db0142f61f              # double 0.66428900000000002
	.quad	0x3fe704988094e5d6              # double 0.71931100000000003
	.quad	0x3fea984a0e410b63              # double 0.83109
	.quad	0x3fe10769ec2ce465              # double 0.53215500000000004
	.quad	0x3fd1bf162ae4b018              # double 0.27728799999999998
	.quad	0x3fe96ae3a3a8e714              # double 0.79429799999999994
	.quad	0x3fd24f26aec0724b              # double 0.28608099999999997
	.quad	0x3fe28b7e4de3b8a2              # double 0.57952800000000004
	.quad	0x3fd624b33daf8df8              # double 0.34599000000000002
	.quad	0x3feb1897a67a52ac              # double 0.84675199999999994
	.quad	0x3fe8f1151611ba3d              # double 0.77942900000000004
	.quad	0x3fe4b58f2e05ccc9              # double 0.64716300000000004
	.quad	0x3fe9d6abde3fbbd8              # double 0.80745500000000003
	.quad	0x3fed3cfb3311a544              # double 0.913694
	.quad	0x3fc96f4384ba0e84              # double 0.198708
	.quad	0x3f663779e9d0e992              # double 0.002712
	.quad	0x3fd4c73eee525892              # double 0.32466099999999998
	.quad	0x3fe8907314ca9260              # double 0.767633
	.quad	0x3fe89dd5d3dc8b87              # double 0.76926700000000003
	.quad	0x3fd9a2c2374794ea              # double 0.400559
	.quad	0x3fe5e0913a4f8727              # double 0.68366300000000002
	.quad	0x3fd70adcd2d44dcb              # double 0.36003800000000002
	.quad	0x3fd01a6937d1fe65              # double 0.251612
	.quad	0x3fd25771001d5c31              # double 0.28658699999999998
	.quad	0x3fe5aa53fc0096ff              # double 0.67704200000000003
	.quad	0x3fd065061416377a              # double 0.256166
	.quad	0x3fd1b356da0168b6              # double 0.27657100000000001
	.quad	0x3fd7c39bcba30121              # double 0.37131399999999998
	.quad	0x3fd9bf3387160957              # double 0.40229500000000001
	.quad	0x3feb00cb6c7a7c9e              # double 0.84384700000000001
	.quad	0x3fdb72ead9274e23              # double 0.42888900000000002
	.quad	0x3feb52934acaff6d              # double 0.85382999999999998
	.quad	0x3fdc1fcd24e160d9              # double 0.43944100000000003
	.quad	0x3feed1b2e59af9ec              # double 0.963098
	.quad	0x3fc840181e03f706              # double 0.18945600000000001
	.quad	0x3fe4a2a0a958537e              # double 0.64485199999999998
	.quad	0x3febbe37de939eae              # double 0.86697000000000002
	.quad	0x3fefcfc610f0e90c              # double 0.99411300000000002
	.quad	0x3fc286c6583e8577              # double 0.14473800000000001
	.quad	0x3fe1e5dbfceb7889              # double 0.55930899999999995
	.quad	0x3fd7ac57e23f24d9              # double 0.369894
	.quad	0x3fe50a5accd53049              # double 0.65751400000000004
	.quad	0x3fea947f13059642              # double 0.830627
	.quad	0x3fd89873ffac1d2a              # double 0.38430500000000001
	.quad	0x3feb4efaa4766c6e              # double 0.85339100000000001
	.quad	0x3fdde3c105186db5              # double 0.467026
	.quad	0x3fe27fd82773e250              # double 0.57810600000000001
	.quad	0x3fe264e8b7e4de3c              # double 0.57481800000000005
	.quad	0x3fb1e5082cf52b91              # double 0.069901000000000005
	.quad	0x3fdacaeea63b688c              # double 0.41863600000000001
	.quad	0x3fed3c07ee0b0af6              # double 0.913578
	.quad	0x3fddd9b5e95b78cd              # double 0.46641300000000002
	.quad	0x3fe8b75ea67e846a              # double 0.77238399999999996
	.quad	0x3fd83d7d3910c2c6              # double 0.37875300000000001
	.quad	0x3fef00fdc1615ec0              # double 0.96887100000000003
	.quad	0x3fda151e75360d02              # double 0.40753899999999998
	.quad	0x3fef1c3265add9c2              # double 0.97219199999999995
	.quad	0x3fdf25918a009f62              # double 0.48666799999999999
	.quad	0x3fe1ce5d5b24e9c4              # double 0.55644099999999996
	.quad	0x3fe5cc3e3193f6c2              # double 0.68118199999999995
	.quad	0x3fe606a4ca4f440b              # double 0.68831100000000001
	.quad	0x3fc1aa582dbe7f2c              # double 0.13801099999999999
	.quad	0x3fcf29802c0a4a06              # double 0.243454
	.quad	0x3fee6da661283904              # double 0.95088499999999998
	.quad	0x3fc0158750c1b973              # double 0.12565699999999999
	.quad	0x3fddbf401c4fc1df              # double 0.46479799999999999
	.quad	0x3feb658a32f44913              # double 0.85614500000000004
	.quad	0x3fd4f54d1e96c3fc              # double 0.32747199999999999
	.quad	0x3fe53890d5a5b963              # double 0.66315500000000005
	.quad	0x3fa21b7e0ac7da1f              # double 0.035366000000000002
	.quad	0x3fed2a5c5f7c675a              # double 0.91142100000000004
	.quad	0x3fd80e1719f7f8cb              # double 0.37586000000000003
	.quad	0x3fd3b95a294141ea              # double 0.30818800000000002
	.quad	0x3fd1f255f3519bd4              # double 0.280416
	.quad	0x3fd4021d10b1feeb              # double 0.31262899999999999
	.quad	0x3fc8ed245b291b82              # double 0.19473699999999999
	.quad	0x3fe3b465625a682b              # double 0.61577099999999996
	.quad	0x3fed759ab6d00b46              # double 0.92060600000000004
	.quad	0x3fc07c84b5dcc63f              # double 0.1288
	.quad	0x3fe2bb7952d234ec              # double 0.58538500000000004
	.quad	0x3fd654003254e6e2              # double 0.34887699999999999
	.quad	0x3febcbbc2b94d940              # double 0.86861999999999995
	.quad	0x3fe1f2b4528283d3              # double 0.56087699999999996
	.quad	0x3fe13fceb78897ea              # double 0.53903900000000005
	.quad	0x3fd32f1a9fbe76c9              # double 0.29975000000000002
	.quad	0x3fe357fb69984a0e              # double 0.60448999999999997
	.quad	0x3fab37a80cf9e386              # double 0.053158999999999998
	.quad	0x3fe1d5d80e496edf              # double 0.55735400000000002
	.quad	0x3fec06013660e51d              # double 0.87573299999999998
	.quad	0x3fa0f53c579f2346              # double 0.033120999999999998
	.quad	0x3fde91148fd9fd37              # double 0.477605
	.quad	0x3fe7a606fac6045c              # double 0.73901700000000003
	.quad	0x3fe77e2c55c96031              # double 0.73415200000000003
	.quad	0x3fe0a5f202107b78              # double 0.52025699999999997
	.quad	0x3fac8ffb8b263950              # double 0.055786000000000002
	.quad	0x3fef16f21f6cacd2              # double 0.97155100000000005
	.quad	0x3fd75d8d79d0a676              # double 0.36508499999999999
	.quad	0x3fb4a66559f6ec5b              # double 0.080664
	.quad	0x3fda7aeddce7cd03              # double 0.41375299999999998
	.quad	0x3fd538433d6c7219              # double 0.33155899999999999
	.quad	0x3fe50bdec5f394b8              # double 0.65769900000000003
	.quad	0x3fb3a3db3bfb58d1              # double 0.076718999999999996
	.quad	0x3fc09068986fcdee              # double 0.12940699999999999
	.quad	0x3fc8d117b5286b59              # double 0.193881
	.quad	0x3fe825529fe004b8              # double 0.754556
	.quad	0x3fe32e1cde5d1809              # double 0.599379
	.quad	0x3fcb15831f03d146              # double 0.211594
	.quad	0x3fbcc2e770bd017e              # double 0.112349
	.quad	0x3fda026cc1ca3a4b              # double 0.40639799999999998
	.quad	0x3fc11a4bdba0a527              # double 0.13361500000000001
	.quad	0x3fe7691a75cd0bb7              # double 0.73158000000000001
	.quad	0x3fec614163779e9d              # double 0.88687199999999999
	.quad	0x3fe142a23bff8a8f              # double 0.53938399999999997
	.quad	0x3fdd3e3e29307af2              # double 0.456924
	.quad	0x3fc47b80a9de8b3b              # double 0.16001899999999999
	.quad	0x3fd5f96e158750c2              # double 0.34334900000000002
	.quad	0x3fdf8b9baa1511e0              # double 0.492896
	.quad	0x3fdcf69878316a05              # double 0.45255099999999998
	.quad	0x3fd4a415f45e0b4e              # double 0.322515
	.quad	0x3fc352d234eb9a17              # double 0.15096499999999999
	.quad	0x3fe9f123c42a66dc              # double 0.81068600000000001
	.quad	0x3fbc445aa2e3c537              # double 0.110418
	.quad	0x3fe12ed1394317ad              # double 0.53696500000000003
	.quad	0x3fe6dd91ab8e8ea4              # double 0.71454700000000004
	.quad	0x3fe375d78811b1d9              # double 0.60813499999999998
	.quad	0x3fd1e90364388ebd              # double 0.27984700000000001
	.quad	0x3fc0ed0b30b5aa71              # double 0.13223399999999999
	.quad	0x3fcefff36ac64778              # double 0.24218600000000001
	.quad	0x3fd2d5f138bcdff0              # double 0.29430800000000001
	.quad	0x3fe65e4e69f05ea2              # double 0.69901199999999997
	.quad	0x3fdde618ce2d1f1d              # double 0.467169
	.quad	0x3fcb5b6805a2d730              # double 0.213727
	.quad	0x3fd29b738e6d15ad              # double 0.290738
	.quad	0x3fd3c93a71151612              # double 0.30915700000000002
	.quad	0x3fd3d6fda836eb4f              # double 0.30999700000000002
	.quad	0x3fd554690de09353              # double 0.33327699999999999
	.quad	0x3fdbfdb8fde2ef4e              # double 0.437361
	.quad	0x3fa672756861e929              # double 0.043841999999999999
	.quad	0x3fd395aaf78feef6              # double 0.30601
	.quad	0x3fcec67168f8e7de              # double 0.24043100000000001
	.quad	0x3fe0073de1e2de87              # double 0.500884
	.quad	0x3fec39c0ebedfa44              # double 0.88205
	.quad	0x3fc0fb3b7521144d              # double 0.13266700000000001
	.quad	0x3fd0ff0cbaf965b2              # double 0.265567
	.quad	0x3fd1203a322af577              # double 0.267592
	.quad	0x3fda322af5771002              # double 0.40931200000000001
	.quad	0x3fd6818c5c9a34ca              # double 0.351657
	.quad	0x3fd013e81450efdd              # double 0.25121500000000002
	.quad	0x3fe28b8ae31d712a              # double 0.57953399999999999
	.quad	0x3fed6a832b990afe              # double 0.91925199999999996
	.quad	0x3feb112ba16e7a31              # double 0.84584599999999999
	.quad	0x3fcafe36d22424a2              # double 0.21088299999999999
	.quad	0x3fda3df6db940fed              # double 0.41003200000000001
	.quad	0x3fe92e44b6e935b9              # double 0.78689799999999999
	.quad	0x3fcb2ddbdb5d8948              # double 0.212337
	.quad	0x3fb96c7219220ff5              # double 0.099310999999999997
	.quad	0x3fc3d32c625e99e9              # double 0.15488199999999999
	.quad	0x3fe8b5ce18266773              # double 0.77219300000000002
	.quad	0x3fc386b15f88fc93              # double 0.15254799999999999
	.quad	0x3fd24e7ab7564303              # double 0.28604000000000002
	.quad	0x3fe643f1c75818c6              # double 0.69579400000000002
	.quad	0x3fea0a7e73a365cb              # double 0.81378099999999998
	.quad	0x3feb02ba5a038195              # double 0.84408300000000003
	.quad	0x3feb9fff79c842fa              # double 0.86328099999999997
	.quad	0x3feedf8d2e514c23              # double 0.964789
	.quad	0x3fbe30db6a1e81cb              # double 0.117933
	.quad	0x3fd2b2788db0574b              # double 0.29214299999999999
	.quad	0x3fe841a048e043a2              # double 0.75801099999999999
	.quad	0x3fc698244e93e1ca              # double 0.17651800000000001
	.quad	0x3fc97f4128bf3beb              # double 0.19919600000000001
	.quad	0x3fd08ef34d6a161e              # double 0.25872499999999998
	.quad	0x3fc82edbb59ddc1e              # double 0.18892999999999999
	.quad	0x3fa2cc0bdcad14a1              # double 0.036713000000000003
	.quad	0x3fb7c17a89331a09              # double 0.092796000000000003
	.quad	0x3fd88b827fa1a0cf              # double 0.38351499999999999
	.quad	0x3fc4b8c75c4a83b2              # double 0.16188900000000001
	.quad	0x3fd1bc5154866a12              # double 0.277119
	.quad	0x3fe73280f12c27a6              # double 0.72491499999999998
	.quad	0x3fe6c13fd0d0678c              # double 0.71109
	.quad	0x3fe4a86b59146e4c              # double 0.64555899999999999
	.quad	0x3fe6a9b280f12c28              # double 0.70821500000000004
	.quad	0x3fd15714b9cb6849              # double 0.27094000000000001
	.quad	0x3fa9157abb8800eb              # double 0.048992000000000001
	.quad	0x3fe256adf71eafee              # double 0.57308099999999995
	.quad	0x3fecca2120e1f7d7              # double 0.89967399999999997
	.quad	0x3fcb7ab324851a87              # double 0.21468200000000001
	.quad	0x3fd6b9389b52007e              # double 0.35505500000000001
	.quad	0x3fd0432441fea811              # double 0.25409799999999999
	.quad	0x3fcd73f316e37154              # double 0.230101
	.quad	0x3fd7c55000c9539c              # double 0.37141800000000003
	.quad	0x3fa3269df97aaac1              # double 0.037404
	.quad	0x3fc0763a19008206              # double 0.128608
	.quad	0x3fe170c564f97edc              # double 0.54501599999999994
	.quad	0x3fdb2d77318fc505              # double 0.42465000000000003
	.quad	0x3fcaa6223e186983              # double 0.20819499999999999
	.quad	0x3fd7b4395810624e              # double 0.37037500000000001
	.quad	0x3fc46351deefe500              # double 0.15928100000000001
	.quad	0x3fddd9be4cd74928              # double 0.46641500000000002
	.quad	0x3fd4df82b1f687b1              # double 0.32614199999999999
	.quad	0x3fd4df7a4e7ab756              # double 0.32613999999999999
	.quad	0x3fbb254e6e221c8a              # double 0.10603799999999999
	.quad	0x3fe00307f23cc8de              # double 0.50036999999999998
	.quad	0x3fe5c36b8f9b1316              # double 0.68010499999999996
	.quad	0x3fe2fecbb7f9d6f1              # double 0.59360299999999999
	.quad	0x3fe6f2de43ed959a              # double 0.71714699999999998
	.quad	0x3fd102e2328f9f45              # double 0.26580100000000001
	.quad	0x3fedeb3dd11be6e6              # double 0.93496599999999996
	.quad	0x3fe487fcb923a29c              # double 0.64159999999999995
	.quad	0x3fd1e6fb4c3c18b5              # double 0.279723
	.quad	0x3fdb372e6a76965f              # double 0.42524299999999998
	.quad	0x3febfb0f6ad70e6f              # double 0.87439699999999998
	.quad	0x3fe8f32df505d0fa              # double 0.77968499999999996
	.quad	0x3fe5811904b3c3e7              # double 0.67200899999999997
	.quad	0x3fdc2641b328b6d8              # double 0.43983499999999998
	.quad	0x3fdc8e368f084620              # double 0.44618000000000002
	.quad	0x3fc9ede97d06bbdc              # double 0.202573
	.quad	0x3fd96b8b69552e30              # double 0.39718900000000001
	.quad	0x3fdedf82b1f687b1              # double 0.48239199999999999
	.quad	0x3fba7b80a9de8b3b              # double 0.103447
	.quad	0x3fc5461309c7ffde              # double 0.16620099999999999
	.quad	0x3fe3e1da7b0b3919              # double 0.62131999999999998
	.quad	0x3fd4f48c2e770bd0              # double 0.32742599999999999
	.quad	0x3fe2777079e59f2c              # double 0.57708000000000004
	.quad	0x3fdb546d3f9e7b81              # double 0.42702800000000002
	.quad	0x3fe29fea8112ba17              # double 0.58202100000000001
	.quad	0x3fdb2c98e53eb39a              # double 0.424597
	.quad	0x3fee22291fb3fa6e              # double 0.94167000000000001
	.quad	0x3fcbe2c55c96030c              # double 0.217858
	.quad	0x3fd0d556084a515d              # double 0.263021
	.quad	0x3fe750a88effe2a4              # double 0.72859600000000002
	.quad	0x3fce30e3cd9a5226              # double 0.23586699999999999
	.quad	0x3fd2fbe33acd5b68              # double 0.296624
	.quad	0x3febe978d4fdf3b6              # double 0.87224999999999997
	.quad	0x3fd6f3d7d3910c2c              # double 0.35863299999999998
	.quad	0x3fc6d2cbea4ebdd3              # double 0.17830799999999999
	.quad	0x3fc2b356da0168b6              # double 0.14609800000000001
	.quad	0x3feb63c31df761cc              # double 0.85592800000000002
	.quad	0x3fcca1d755bccaf7              # double 0.223689
	.quad	0x3fe2732378ab0c89              # double 0.57655500000000004
	.quad	0x3fd42ba5a038194c              # double 0.315164
	.quad	0x3fe9ec3fc43b2dd3              # double 0.81008899999999995
	.quad	0x3fdd47a9e2bcf91a              # double 0.45749899999999999
	.quad	0x3fdf6adb402d16b9              # double 0.49089699999999997
	.quad	0x3fc5478c868b9fdc              # double 0.166246
	.quad	0x3fe04c0df58c08b7              # double 0.50928399999999996
	.quad	0x3fd46c3760bf5d79              # double 0.31910500000000003
	.quad	0x3fe46b59146e4c0e              # double 0.638104
	.quad	0x3fc8e7bc3c5bd0e1              # double 0.19457199999999999
	.quad	0x3fd806e5cd4ed2cc              # double 0.375421
	.quad	0x3fe750a88effe2a4              # double 0.72859600000000002
	.quad	0x3fb17cd466f5019f              # double 0.068310999999999997
	.quad	0x3feb13059641f645              # double 0.84607200000000005
	.quad	0x3fd5103c8e25c811              # double 0.32911600000000002
	.quad	0x3fea1cbee807bbb6              # double 0.81600899999999998
	.quad	0x3fd7ee6b8305d95e              # double 0.37392700000000001
	.quad	0x3fb958537e2c55c9              # double 0.099003999999999995
	.quad	0x3fec98e53eb399f6              # double 0.89366400000000001
	.quad	0x3fda1ac14c660a20              # double 0.407883
	.quad	0x3fdba21ea35935fc              # double 0.43176999999999999
	.quad	0x3fc47fcb923a29c7              # double 0.16014999999999999
	.quad	0x3fea2edbb59ddc1e              # double 0.81821999999999995
	.quad	0x3fe12eb3dd11be6e              # double 0.53695099999999996
	.quad	0x3fd0d14e3bcd35a8              # double 0.26277499999999998
	.quad	0x3fd7b7a1c25d0742              # double 0.370583
	.quad	0x3fee888509bf9c63              # double 0.95416500000000004
	.quad	0x3fe85dc1e7967caf              # double 0.76144500000000004
	.quad	0x3f7074213a0c6b48              # double 0.0040169999999999997
	.quad	0x3fde54c55432873c              # double 0.47392400000000001
	.quad	0x3fc4bfe3b03e20cd              # double 0.162106
	.quad	0x3fd9b2702a3486f0              # double 0.40151599999999998
	.quad	0x3feef83dff3f0fe0              # double 0.96780299999999996
	.quad	0x3fe9cbb7f9d6f113              # double 0.806118
	.quad	0x3fdc2bb23571d1d4              # double 0.44016699999999997
	.quad	0x3fbe35d67ba237ce              # double 0.118009
	.quad	0x3fb516872b020c4a              # double 0.082375000000000003
	.quad	0x3fdb7b5f1bef49cf              # double 0.42940499999999998
	.quad	0x3fe3e3497b7414a5              # double 0.62149500000000002
	.quad	0x3fe67ce746cb966c              # double 0.70274700000000001
	.quad	0x3fe365ba6efc371e              # double 0.60616800000000004
	.quad	0x3fd9286b59146e4c              # double 0.393092
	.quad	0x3fea3f961804d984              # double 0.82026200000000004
	.quad	0x3fe22265f0f5a101              # double 0.56669899999999995
	.quad	0x3fe4e41f644955b4              # double 0.65284699999999996
	.quad	0x3fdabbf50e347629              # double 0.41772199999999998
	.quad	0x3fea258f7121ab4b              # double 0.81708499999999995
	.quad	0x3fd969014b599aa6              # double 0.397034
	.quad	0x3fe3db078d92fb1a              # double 0.62048700000000001
	.quad	0x3f9413122b7baecd              # double 0.019604
	.quad	0x3fe000cf9e3864cb              # double 0.50009899999999996
	.quad	0x3fef228dc981beb2              # double 0.97296800000000006
	.quad	0x3fcf776c4827b6fe              # double 0.24583199999999999
	.quad	0x3fa7ff79c842fa51              # double 0.046871000000000003
	.quad	0x3fdcac9afe1da7b1              # double 0.44803500000000002
	.quad	0x3fd13137b07075b4              # double 0.26862900000000001
	.quad	0x3fe7411e42e12620              # double 0.72669899999999998
	.quad	0x3fc64d8fd5cb7910              # double 0.17424200000000001
	.quad	0x3feff587d6f97679              # double 0.99872199999999999
	.quad	0x3fc54c4cdfaca362              # double 0.16639100000000001
	.quad	0x3feb7709b738e6d1              # double 0.85828099999999996
	.quad	0x3fe3dc1a47a9e2bd              # double 0.620618
	.quad	0x3fe48856e696a26e              # double 0.64164299999999996
	.quad	0x3fc572cd7cf5f4e4              # double 0.16756599999999999
	.quad	0x3fd781ecd4aa10e0              # double 0.36730499999999999
	.quad	0x3fdf10667f90d9d7              # double 0.48537599999999997
	.quad	0x3fc1cc2938de6ddf              # double 0.139043
	.quad	0x3fe470d62bf11f92              # double 0.63877399999999995
	.quad	0x3fef2cd7cf5f4e44              # double 0.97422399999999997
	.quad	0x3fd495e17e34b945              # double 0.32164799999999999
	.quad	0x3fd1710cb295e9e2              # double 0.27252500000000002
	.quad	0x3feb9159c4977425              # double 0.86149299999999995
	.quad	0x3fd52788db0574b4              # double 0.330538
	.quad	0x3feb00d801b43526              # double 0.84385299999999996
	.quad	0x3fefaca148ba83f5              # double 0.989823
	.quad	0x3fd42f405f6ba062              # double 0.315384
	.quad	0x3fec6ed245b291b8              # double 0.88852799999999998
	.quad	0x3fe71973d9ec7000              # double 0.72185699999999997
	.quad	0x3fcfec13b9f127f6              # double 0.249392
	.quad	0x3fea5b940fecdd0e              # double 0.82367900000000005
	.quad	0x3feb65b20b8066c3              # double 0.85616400000000004
	.quad	0x3fbaa3ad18d25edd              # double 0.10406
	.quad	0x3fd54de7ea5f84cb              # double 0.33288000000000001
	.quad	0x3fa88c1db0142f62              # double 0.047944000000000001
	.quad	0x3fe882795703f2d4              # double 0.76592700000000002
	.quad	0x3fe064c0df58c08b              # double 0.51229899999999995
	.quad	0x3f814ca925fe974a              # double 0.0084469999999999996
	.quad	0x3fe07112fd32c626              # double 0.51380300000000001
	.quad	0x3faeaf038e29f9cf              # double 0.059929000000000003
	.quad	0x3fe2ecb966be7afa              # double 0.59139699999999995
	.quad	0x3fbd6cc5fbf83383              # double 0.114941
	.quad	0x3fe21c3ce2089e34              # double 0.56594699999999998
	.quad	0x3fd5d495182a9931              # double 0.34110000000000001
	.quad	0x3fe49572580c3090              # double 0.64324300000000001
	.quad	0x3fe34304ccee5abc              # double 0.60193099999999999
	.quad	0x3feeab8c75c4a83b              # double 0.95844099999999998
	.quad	0x3fe23886594af4f1              # double 0.56940000000000002
	.quad	0x3fe7cd87724fa8b5              # double 0.74383900000000003
	.quad	0x3fefc7778dd616f8              # double 0.99309899999999995
	.quad	0x3fb83fc43b2dd378              # double 0.094723000000000002
	.quad	0x3fe17d3d4280ae10              # double 0.54653799999999997
	.quad	0x3feefa9e2bcf91a3              # double 0.96809299999999998
	.quad	0x3fe38d9f90539fba              # double 0.61103799999999997
	.quad	0x3fe089a240314877              # double 0.51680099999999995
	.quad	0x3fe5dce7cd035372              # double 0.68321600000000005
	.quad	0x3fcdc054ef459d99              # double 0.232432
	.quad	0x3fe5438d1d8a5482              # double 0.66449599999999998
	.quad	0x3feb05985ad538ac              # double 0.84443299999999998
	.quad	0x3fdc97d8cf398e97              # double 0.446768
	.quad	0x3fc0c09c3ce2089e              # double 0.13087799999999999
	.quad	0x3fb65b63d3e4ef03              # double 0.087332000000000007
	.quad	0x3fb8d65e4606748e              # double 0.097020999999999996
	.quad	0x3fd248344c37e6f7              # double 0.28565699999999999
	.quad	0x3f992641b328b6d8              # double 0.024559999999999998
	.quad	0x3fdb2fd75e2046c7              # double 0.42479499999999998
	.quad	0x3fde0d9945b6c376              # double 0.46958
	.quad	0x3fe71815a07b352b              # double 0.72169000000000005
	.quad	0x3fefa02b841248d8              # double 0.98830200000000001
	.quad	0x3febc436fc158fb4              # double 0.86770199999999997
	.quad	0x3fba5bea0ba1f4b2              # double 0.102965
	.quad	0x3fca50bd87b56b87              # double 0.20558899999999999
	.quad	0x3fe2d1351159c497              # double 0.58803799999999995
	.quad	0x3fe01f212d773190              # double 0.50380000000000003
	.quad	0x3fefda33bd9cae21              # double 0.99538599999999999
	.quad	0x3fb2e642bf9830e4              # double 0.073826000000000003
	.quad	0x3fc09a34ca0c282c              # double 0.12970599999999999
	.quad	0x3fee4bbc2b94d940              # double 0.94674499999999994
	.quad	0x3fe9ce09784ec637              # double 0.80640100000000003
	.quad	0x3fed536933a0407d              # double 0.91643200000000002
	.quad	0x3fcdab8e8ea39c52              # double 0.231798
	.quad	0x3fe9920e1f7d73c9              # double 0.79907899999999998
	.quad	0x3fe14fb1183b6028              # double 0.54097799999999996
	.quad	0x3fe60c5a8155d5f5              # double 0.68900799999999995
	.quad	0x3fe102b628459967              # double 0.53158099999999997
	.quad	0x3fe9d41fa7653437              # double 0.80714399999999997
	.quad	0x3fc3045fe1112770              # double 0.14857100000000001
	.quad	0x3fe30f6cefed6345              # double 0.59563299999999997
	.quad	0x3fe6d5347a5b0ff1              # double 0.71352599999999999
	.quad	0x3fe47eeb2d0a2446              # double 0.64049299999999998
	.quad	0x3fce3bddfc9ff92f              # double 0.236202
	.quad	0x3fd99e7b80a9de8b              # double 0.40029799999999999
	.quad	0x3fb376a2f48c2e77              # double 0.076028999999999999
	.quad	0x3fdaeba27ae9ab2a              # double 0.42063200000000001
	.quad	0x3fe02f6c69b5a640              # double 0.50578900000000004
	.quad	0x3fdb2e7f6f4be836              # double 0.42471300000000001
	.quad	0x3fa6c80c73abc947              # double 0.044495
	.quad	0x3fdd1d2e0e30446b              # double 0.45490599999999998
	.quad	0x3fa0216c61522a6f              # double 0.031504999999999998
	.quad	0x3fd7744f5d35653d              # double 0.36647400000000002
	.quad	0x3fe5df41aef6f8f0              # double 0.68350299999999997
	.quad	0x3fe9cbd33d29563b              # double 0.80613100000000004
	.quad	0x3fcf6ff3ade225fa              # double 0.24560399999999999
	.quad	0x3fefb24a6a875d57              # double 0.990514
	.quad	0x3fe145bf26f1dc51              # double 0.53976400000000002
	.quad	0x3fd2a0b5ed8d36b5              # double 0.29105900000000001
	.quad	0x3fccd4dc65c70436              # double 0.225246
	.quad	0x3fe722d2fe3f35a0              # double 0.723001
	.quad	0x3fd159ea57214f05              # double 0.27111299999999999
	.quad	0x3fec9f10667f90da              # double 0.89441700000000002
	.quad	0x3f9e4c51116a8b8f              # double 0.029588
	.quad	0x3fdc592d98bf7f06              # double 0.44294299999999998
	.quad	0x3fe1947064ece9a3              # double 0.54937000000000002
	.quad	0x3fe7a8198f1d3ed5              # double 0.73926999999999998
	.quad	0x3fc157689ca18bd6              # double 0.13547999999999999
	.quad	0x3fe46c95bff04578              # double 0.63825500000000002
	.quad	0x3fe1c386d2ed783e              # double 0.555118
	.quad	0x3fd246173b85e80c              # double 0.285528
	.quad	0x3fc6f661f18c9fb6              # double 0.179394
	.quad	0x3fdf19b0ab2e1694              # double 0.48594300000000001
	.quad	0x3f85ec80c73abc94              # double 0.010704999999999999
	.quad	0x3fea912fd32c625f              # double 0.83022300000000004
	.quad	0x3fe2fbb73083558a              # double 0.59322699999999995
	.quad	0x3fe5a433508f648c              # double 0.67629399999999995
	.quad	0x3fedf709b738e6d1              # double 0.93640599999999996
	.quad	0x3fdc4b51372a38b9              # double 0.44209700000000002
	.quad	0x3fede4c0df58c08b              # double 0.93417399999999995
	.quad	0x3fa888b545c78a6e              # double 0.047918000000000002
	.quad	0x3fa737329c347e8d              # double 0.045343000000000001
	.quad	0x3fe541ebc83a96d5              # double 0.66429700000000003
	.quad	0x3fda267839cd8128              # double 0.40859800000000002
	.quad	0x3fa63497b7414a4d              # double 0.043369999999999999
	.quad	0x3fe90b11409a2403              # double 0.78260099999999999
	.quad	0x3fd4d04a2fcefaa4              # double 0.32521299999999997
	.quad	0x3fb5d883ba3443d4              # double 0.085334999999999994
	.quad	0x3fdd86ad2dcb1466              # double 0.46134500000000001
	.quad	0x3fe495ad106ee30d              # double 0.64327100000000004
	.quad	0x3fe6f93bc0a06ea0              # double 0.71792400000000001
	.quad	0x3fdd79e9d0e991ff              # double 0.46056599999999998
	.quad	0x3fdee6644d877250              # double 0.48281200000000002
	.quad	0x3fe0b923a29c779a              # double 0.52259999999999995
	.quad	0x3fd39c2c1b10fd7e              # double 0.30640699999999998
	.quad	0x3fc6cfa69be09bb7              # double 0.17821200000000001
	.quad	0x3fe32a6f3f52fc26              # double 0.59892999999999996
	.quad	0x3fd5a747d805e5f3              # double 0.338335
	.quad	0x3fe9191148fd9fd3              # double 0.78430999999999995
	.quad	0x3fe878e5c4eb56fc              # double 0.76475800000000004
	.quad	0x3fe22847b24638c9              # double 0.56741699999999995
	.quad	0x3fd1870110a137f4              # double 0.27386500000000003
	.quad	0x3fc7220ff540895d              # double 0.180727
	.quad	0x3feb9d29dc725c3e              # double 0.86293500000000001
	.quad	0x3fe38e25c810a56a              # double 0.61110200000000003
	.quad	0x3feb2c14c660a201              # double 0.84913099999999997
	.quad	0x3fb07abfb9bed30f              # double 0.064373
	.quad	0x3fd758dde7a743a6              # double 0.36479899999999998
	.quad	0x3fdef85942917508              # double 0.483908
	.quad	0x3fba8672756861e9              # double 0.103614
	.quad	0x3fe256f544bb1af4              # double 0.57311500000000004
	.quad	0x3fe6bd5fdcdf6988              # double 0.71061700000000005
	.quad	0x3fc31233df2a9d62              # double 0.14899299999999999
	.quad	0x3fe6afa5093964a6              # double 0.70894100000000004
	.quad	0x3fc34aa10e022142              # double 0.15071499999999999
	.quad	0x3feed983947496ab              # double 0.96405200000000002
	.quad	0x3fe6faeddce7cd03              # double 0.71813099999999996
	.quad	0x3fee746aa087ca64              # double 0.95171099999999997
	.quad	0x3fe75d872f33ca32              # double 0.73016700000000001
	.quad	0x3fef6004b7f5a533              # double 0.98047099999999998
	.quad	0x3fe2b98c7e28240b              # double 0.58514999999999995
	.quad	0x3fe12120e1f7d73d              # double 0.53529400000000005
	.quad	0x3fe8dfc7e6b3fea0              # double 0.77731700000000003
	.quad	0x3fec98d8a979e16d              # double 0.89365799999999995
	.quad	0x3fc5df97aaac1095              # double 0.17088600000000001
	.quad	0x3fe3e5cb35f3d7d4              # double 0.62180100000000005
	.quad	0x3fcfd28d002e2329              # double 0.248613
	.quad	0x3fddd6d3b6cbd988              # double 0.46623700000000001
	.quad	0x3fedb9170d62bf12              # double 0.928844
	.quad	0x3fdb856a37ac3eb8              # double 0.43001800000000001
	.quad	0x3f9bf11f926c7eae              # double 0.027286999999999999
	.quad	0x3fa15421c044284e              # double 0.033845
	.quad	0x3fef16c1e364bec6              # double 0.97152799999999995
	.quad	0x3fe3ad81adea8976              # double 0.61492999999999998
	.quad	0x3fd7c7000431bde8              # double 0.37152099999999999
	.quad	0x3f81a32b12d3415b              # double 0.0086119999999999998
	.quad	0x3fa54690de093533              # double 0.041554000000000001
	.quad	0x3fcc9f8c21e1d218              # double 0.22361900000000001
	.quad	0x3fee54cfd08d4bad              # double 0.94785299999999995
	.quad	0x3fb334f82f512663              # double 0.075026999999999996
	.quad	0x3fe378af3e468cac              # double 0.60848199999999997
	.quad	0x3fd0de69ad42c3ca              # double 0.263575
	.quad	0x3feb791e646f1562              # double 0.85853500000000005
	.quad	0x3fd0b7952d234eba              # double 0.26120500000000002
	.quad	0x3fd9b93469941850              # double 0.40192899999999998
	.quad	0x3fe8d1bb4916ca47              # double 0.77560200000000001
	.quad	0x3fe8ddb9841aac54              # double 0.77706600000000003
	.quad	0x3fe8e0ed80a17b0f              # double 0.77745699999999995
	.quad	0x3fb74e3369b9d7fe              # double 0.091037000000000006
	.quad	0x3feaed5f138bcdff              # double 0.841476
	.quad	0x3fd06d3b6cbd987c              # double 0.25666699999999998
	.quad	0x3fdf7763e4abe6a3              # double 0.49166199999999999
	.quad	0x3febcfa05143bf72              # double 0.86909499999999995
	.quad	0x3fe4154a7f8012e0              # double 0.62759900000000002
	.quad	0x3fd3b673c4f3ba77              # double 0.30801099999999998
	.quad	0x3fdf8d477bbf93ff              # double 0.49299799999999999
	.quad	0x3fc0ea3161a1db87              # double 0.13214699999999999
	.quad	0x3fe27865d7cb2d90              # double 0.57719699999999996
	.quad	0x3fdd653005814941              # double 0.45930100000000001
	.quad	0x3fcf0f49491f2dc3              # double 0.24265400000000001
	.quad	0x3fc744241c3efae8              # double 0.18176700000000001
	.quad	0x3fe578705425f202              # double 0.67095199999999999
	.quad	0x3fe0332ce89656ef              # double 0.506247
	.quad	0x3fba9d7342edbb5a              # double 0.103965
	.quad	0x3fba44c7b02d59d5              # double 0.10261199999999999
	.quad	0x3fc2ad601ffb480a              # double 0.14591599999999999
	.quad	0x3fac044284dfce31              # double 0.054719999999999998
	.quad	0x3faf7ad4b2745bf2              # double 0.061483999999999997
	.quad	0x3fe5518b0d0edc3c              # double 0.66620400000000002
	.quad	0x3feb33354c12274a              # double 0.85000100000000001
	.quad	0x3fe56a337a80cf9e              # double 0.66921399999999998
	.quad	0x3fe70a5efe931876              # double 0.72001599999999999
	.quad	0x3fd7629d8409e55c              # double 0.365394
	.quad	0x3feb67caea747d80              # double 0.85641999999999996
	.quad	0x3fc772474538ef35              # double 0.183175
	.quad	0x3fedf9cc74b838c1              # double 0.93674299999999999
	.quad	0x3fdd59f2ba9d1f60              # double 0.45861499999999999
	.quad	0x3fd0dd26b723ee1c              # double 0.26349800000000001
	.quad	0x3fd7f72f76e6106b              # double 0.37446200000000002
	.quad	0x3fec5273d5bab218              # double 0.88506499999999999
	.quad	0x3fea70520d130dfa              # double 0.82621100000000003
	.quad	0x3fe1b62845996745              # double 0.55348600000000003
	.quad	0x3fee99e94ab1d4fa              # double 0.95628800000000003
	.quad	0x3feb9752977c88e8              # double 0.86222200000000004
	.quad	0x3fcf8a009f623077              # double 0.24639900000000001
	.quad	0x3fc10364388ebcc7              # double 0.13291600000000001
	.quad	0x3fd7fb7a5f41aef7              # double 0.374724
	.quad	0x3fae89a88ace24bc              # double 0.059644000000000003
	.quad	0x3feae90795f676ea              # double 0.84094599999999997
	.quad	0x3fe896e158750c1c              # double 0.76841800000000004
	.quad	0x3fdf94317acc4ef9              # double 0.49342000000000003
	.quad	0x3fd110be9424e593              # double 0.26664700000000002
	.quad	0x3fd9115df6555c53              # double 0.39168500000000001
	.quad	0x3fe9e83c297bfa4c              # double 0.80959899999999995
	.quad	0x3fea189df1172ef1              # double 0.81550500000000004
	.quad	0x3faa1cef240fa9c1              # double 0.051001999999999999
	.quad	0x3fe13e0bd44998d0              # double 0.53882399999999997
	.quad	0x3fe6c105186db50f              # double 0.71106199999999997
	.quad	0x3fed8848387df5cf              # double 0.92288599999999998
	.quad	0x3fde4adff822bbed              # double 0.47332000000000002
	.quad	0x3fe616f0068db8bb              # double 0.69030000000000002
	.quad	0x3fd6739f340d4dc6              # double 0.35080699999999998
	.quad	0x3fe6afe1da7b0b39              # double 0.70896999999999999
	.quad	0x3fd9d1ed9dfdac69              # double 0.40343800000000002
	.quad	0x3fed0129cbab649d              # double 0.90639199999999998
	.quad	0x3fe94430b178b370              # double 0.789574
	.quad	0x3fda3c74fb549f95              # double 0.40994000000000003
	.quad	0x3fea36a400fba882              # double 0.81916999999999995
	.quad	0x3fe27060bb2bba99              # double 0.57621800000000001
	.quad	0x3fdddf5cf2495e18              # double 0.46675800000000001
	.quad	0x3fe405d0fa58f712              # double 0.62570999999999999
	.quad	0x3feae529bae46cfd              # double 0.84047400000000005
	.quad	0x3fed334e7685985b              # double 0.91251300000000002
	.quad	0x3fc4851a86940358              # double 0.16031200000000001
	.quad	0x3fe1e518f3eccc47              # double 0.55921600000000005
	.quad	0x3fe9d013a92a3055              # double 0.80664999999999998
	.quad	0x3fe657928e0c9d9d              # double 0.69818999999999998
	.quad	0x3fca2d1f1cfbb949              # double 0.20450199999999999
	.quad	0x3fc61b9f98b71b8b              # double 0.17271800000000001
	.quad	0x3fe79d6cf850df16              # double 0.73796700000000004
	.quad	0x3fd76837f7be121f              # double 0.36573600000000001
	.quad	0x3fceb4c7f3493858              # double 0.23989199999999999
	.quad	0x3fc3bd2fa0d77b7c              # double 0.15421099999999999
	.quad	0x3fd546887a8d64d8              # double 0.33243
	.quad	0x3fc1776c4827b6fe              # double 0.13645699999999999
	.quad	0x3fdf22e5de15ca6d              # double 0.48650500000000002
	.quad	0x3fd941a6937d1fe6              # double 0.39463199999999998
	.quad	0x3fc05f202107b784              # double 0.12790299999999999
	.quad	0x3fd534117f84449e              # double 0.33130300000000001
	.quad	0x3fec8b5675579af2              # double 0.89200900000000005
	.quad	0x3fe82396073de1e3              # double 0.75434400000000001
	.quad	0x3fc4e147ae147ae1              # double 0.16312499999999999
	.quad	0x3fcce86c6583e857              # double 0.22584299999999999
	.quad	0x3fe5649f51697f20              # double 0.66853300000000004
	.quad	0x3fd4dd11be6e6538              # double 0.32599299999999998
	.quad	0x3fe566256366d7a5              # double 0.66871899999999995
	.quad	0x3fecc6ef3d3a1d32              # double 0.89928399999999997
	.quad	0x3fd4879c4113c686              # double 0.32077699999999998
	.quad	0x3fd56e696a26e547              # double 0.33486399999999999
	.quad	0x3fd051f3e89a88ad              # double 0.25500200000000001
	.quad	0x3fd81105e1c15098              # double 0.37603900000000001
	.quad	0x3fe08ebaade657b8              # double 0.51742299999999997
	.quad	0x3fc982f512663411              # double 0.19930899999999999
	.quad	0x3fe8c475e6362a5e              # double 0.77398199999999995
	.quad	0x3fe45054ac29bf16              # double 0.63480599999999998
	.quad	0x3fe59d6adf71eaff              # double 0.67546600000000001
	.quad	0x3fdbdb7f1737542a              # double 0.43527199999999999
	.quad	0x3fd19a62ed352221              # double 0.27504800000000001
	.quad	0x3fbc6aa087ca643d              # double 0.111002
	.quad	0x3faf5232d2bb2357              # double 0.061173999999999999
	.quad	0x3fec2089e34330d7              # double 0.87897199999999998
	.quad	0x3fdb041461b6d43d              # double 0.422124
	.quad	0x3fa92c6ac215b9a6              # double 0.049167000000000002
	.quad	0x3fe3032b990afe61              # double 0.59413700000000003
	.quad	0x3fe508b75ea67e84              # double 0.65731399999999995
	.quad	0x3fed50b524399b2c              # double 0.91610199999999997
	.quad	0x3fd7ef6b5d462c34              # double 0.37398799999999999
	.quad	0x3fd0373f316e3715              # double 0.25337199999999999
	.quad	0x3fc9d1782d38476f              # double 0.201705
	.quad	0x3fe3362a5e785b5b              # double 0.60036199999999995
	.quad	0x3fe43ade225fa659              # double 0.63218600000000003
	.quad	0x3fd939eadd590c0b              # double 0.39416000000000001
	.quad	0x3fc1938151a43782              # double 0.13731399999999999
	.quad	0x3fea3b7952d234ec              # double 0.81976000000000004
	.quad	0x3fb95379fa97e133              # double 0.098930000000000004
	.quad	0x3fbd0f840181e03f              # double 0.11351799999999999
	.quad	0x3fec4e874c8ffb8b              # double 0.88458599999999998
	.quad	0x3fed238327674d16              # double 0.91058499999999998
	.quad	0x3fd00e6299524bfd              # double 0.25087799999999999
	.quad	0x3feba4180d3cff65              # double 0.86378100000000002
	.quad	0x3fbd3671ac14c661              # double 0.11411200000000001
	.quad	0x3feab76d5497310a              # double 0.83489100000000005
	.quad	0x3feb8129cbab649d              # double 0.85951699999999998
	.quad	0x3fe419d0203e63e9              # double 0.62815100000000001
	.quad	0x3fecc2d8c2a454de              # double 0.89878499999999995
	.quad	0x3fccb9baa1511e00              # double 0.22441800000000001
	.quad	0x3feaac322291fb40              # double 0.83352000000000004
	.quad	0x3fd9d2c7b890d5a6              # double 0.40349000000000002
	.quad	0x3fdd66e86c6583e8              # double 0.45940599999999998
	.quad	0x3fa935daad601ffb              # double 0.049238999999999998
	.quad	0x3fe7db6c3760bf5d              # double 0.74553499999999995
	.quad	0x3fd99641f644955b              # double 0.39979599999999998
	.quad	0x3fe3a4bdba0a5269              # double 0.61385999999999996
	.quad	0x3fd5eff5c6c11a11              # double 0.34277099999999999
	.quad	0x3fde0663c74fb54a              # double 0.46914
	.quad	0x3fd9cfaeff5c6c12              # double 0.40330100000000002
	.quad	0x3fefa42d05f28848              # double 0.98879099999999997
	.quad	0x3fe30c9fb6134ce4              # double 0.59529100000000001
	.quad	0x3fb26ea854477ff1              # double 0.072000999999999996
	.quad	0x3fe099524bfd2e94              # double 0.51871599999999995
	.quad	0x3fe57faa044ae85c              # double 0.67183400000000004
	.quad	0x3fc63dddb1209edc              # double 0.173763
	.quad	0x3fe3bcab81f969e4              # double 0.61678100000000002
	.quad	0x3fcc05dd8f92af9b              # double 0.21892900000000001
	.quad	0x3fd5d0f6273929ed              # double 0.34087899999999999
	.quad	0x3fe98342aa9f7b5b              # double 0.79727300000000001
	.quad	0x3fd36c9c0a8d21bc              # double 0.303504
	.quad	0x3feec4dec1c1d6d0              # double 0.96153200000000005
	.quad	0x3fb4bac710cb295f              # double 0.080975000000000005
	.quad	0x3feb9439de481f54              # double 0.86184400000000005
	.quad	0x3fc2135daad60200              # double 0.14121600000000001
	.quad	0x3fef9b8aa00192a7              # double 0.98773699999999997
	.quad	0x3fde5dd095af294e              # double 0.47447600000000001
	.quad	0x3fd3871e6cd29132              # double 0.305122
	.quad	0x3fe41cde5d18090b              # double 0.62852399999999997
	.quad	0x3fe8b5610adcd2d4              # double 0.77214099999999996
	.quad	0x3fe15cd4ed2cbea5              # double 0.54258200000000001
	.quad	0x3fe0fafa7221858c              # double 0.53063700000000003
	.quad	0x3fe4579d0a67620f              # double 0.63569500000000001
	.quad	0x3fda54866a11ec92              # double 0.41140900000000002
	.quad	0x3fe5d7f3061c79b3              # double 0.68261099999999997
	.quad	0x3fbcd0247021d10b              # double 0.112551
	.quad	0x3fa1bc33f85510d4              # double 0.034639000000000003
	.quad	0x3fe426b50b0f27bb              # double 0.62972499999999998
	.quad	0x3fe4c71f79420b3d              # double 0.64930699999999997
	.quad	0x3fcc9539b888722a              # double 0.223304
	.quad	0x3fe2050df15a4acf              # double 0.56311699999999998
	.quad	0x3fe34052d666a982              # double 0.60160199999999997
	.quad	0x3fdfb5bf6a0dbad4              # double 0.49546800000000002
	.quad	0x3fe23a71151611ba              # double 0.56963399999999997
	.quad	0x3fea497fa5d28d00              # double 0.82147199999999998
	.quad	0x3febeca25529fe00              # double 0.87263599999999997
	.quad	0x3fe1c07aaef2c732              # double 0.55474599999999996
	.quad	0x3fd9dca07f66e86c              # double 0.40409099999999998
	.quad	0x3fe1760e0eb67c28              # double 0.54566099999999995
	.quad	0x3fb294573a797892              # double 0.072576000000000002
	.quad	0x3fe168a50507a6bd              # double 0.54402399999999995
	.quad	0x3fe710257c914b16              # double 0.72072099999999995
	.quad	0x3fb23b7952d234ec              # double 0.071220000000000006
	.quad	0x3fc6f2495e17e34c              # double 0.17926900000000001
	.quad	0x3fd2fcefaa4766c7              # double 0.29668800000000001
	.quad	0x3fe6d5a7d24180d4              # double 0.71358100000000002
	.quad	0x3fe225c3dee78184              # double 0.56711
	.quad	0x3fc1bda5119ce076              # double 0.1386
	.quad	0x3fe4c0b135979182              # double 0.64852200000000004
	.quad	0x3fee0746455eaee2              # double 0.938388
	.quad	0x3fb8ad6883771865              # double 0.096395999999999996
	.quad	0x3fe3bc903ea704bc              # double 0.61676799999999998
	.quad	0x3fec4a1cef240faa              # double 0.88404700000000003
	.quad	0x3fec9a8049667b5f              # double 0.89385999999999999
	.quad	0x3fede672fba01eef              # double 0.93438100000000002
	.quad	0x3f91fc8f32378ab1              # double 0.017565000000000001
	.quad	0x3fec2ee84ad794a7              # double 0.88072600000000001
	.quad	0x3fef9bc126a65cf6              # double 0.98776299999999995
	.quad	0x3fcf23dd54da4ce8              # double 0.243282
	.quad	0x3fa6b15f88fc9364              # double 0.044322
	.quad	0x3fb666cb10342aaa              # double 0.087506
	.quad	0x3fd2f5ba2be0589b              # double 0.29624800000000001
	.quad	0x3feaf18655193709              # double 0.84198300000000004
	.quad	0x3fcf2becedd48451              # double 0.24352799999999999
	.quad	0x3fbd0214ad362e90              # double 0.113313
	.quad	0x3fc6116ebd4cfd09              # double 0.172407
	.quad	0x3fb048adeebb341e              # double 0.063608999999999999
	.quad	0x3fe290de093532e8              # double 0.58018400000000003
	.quad	0x3fe92a0ec7432010              # double 0.78638399999999997
	.quad	0x3febb5c7cd898b2f              # double 0.86594000000000004
	.quad	0x3fc52999567dbb17              # double 0.16533200000000001
	.quad	0x3fe6a834d26fa3fd              # double 0.70803300000000002
	.quad	0x3fec8f5c28f5c28f              # double 0.89249999999999996
	.quad	0x3fe7009f623076c0              # double 0.71882599999999996
	.quad	0x3fdda0f9096bb98c              # double 0.46294999999999997
	.quad	0x3fe17f43419e3001              # double 0.54678499999999997
	.quad	0x3fd2e8fb00bcbe62              # double 0.29547000000000001
	.quad	0x3fe8a656abde3fbc              # double 0.77030500000000001
	.quad	0x3fec2b777d0f1f58              # double 0.88030600000000003
	.quad	0x3fca86b59146e4c1              # double 0.207236
	.quad	0x3fd2f648c7192ea5              # double 0.29628199999999999
	.quad	0x3fe4d10f51ac9afe              # double 0.65051999999999999
	.quad	0x3fd9355043e5321e              # double 0.39387899999999998
	.quad	0x3fea1f98b71b8aa0              # double 0.81635699999999999
	.quad	0x3fd5d7c6fbd273d6              # double 0.34129500000000002
	.quad	0x3fe1ce2089e34331              # double 0.55641200000000002
	.quad	0x3fe4c48adeebb342              # double 0.64899200000000001
	.quad	0x3fe08c49ba5e353f              # double 0.51712499999999995
	.quad	0x3fd1124d099e0e73              # double 0.26674199999999998
	.quad	0x3feb4245f5ad96a7              # double 0.85184000000000004
	.quad	0x3fe5060bb2bba98f              # double 0.65698800000000002
	.quad	0x3fdd832b990afe61              # double 0.46113100000000001
	.quad	0x3fb5806f262888b5              # double 0.083990999999999996
	.quad	0x3feb58a548238540              # double 0.85457099999999997
	.quad	0x3fddae9ab29e4d5e              # double 0.46378200000000003
	.quad	0x3fc6a4c1ebc83a97              # double 0.176903
	.quad	0x3febc2396073de1e              # double 0.86745899999999998
	.quad	0x3f7347a5b0ff10ed              # double 0.0047070000000000002
	.quad	0x3fdf7b6fe2e6ea85              # double 0.49190899999999999
	.quad	0x3fdd576cce5f7404              # double 0.45846100000000001
	.quad	0x3fef437e6f71a7e3              # double 0.97698899999999999
	.quad	0x3fbbdc9c4da9003f              # double 0.108835
	.quad	0x3feb4c6c54bcf0b7              # double 0.85307900000000003
	.quad	0x3fe342bb6672fba0              # double 0.60189599999999999
	.quad	0x3fe773f748a15981              # double 0.73290599999999995
	.quad	0x3fd215ebfa8f7db7              # double 0.28258800000000001
	.quad	0x3fe52fad6cb53501              # double 0.66207000000000005
	.quad	0x3febf80baa582dbe              # double 0.87402899999999994
	.quad	0x3fec5d074213a0c7              # double 0.88635600000000003
	.quad	0x3feffab96f21f6cb              # double 0.99935600000000002
	.quad	0x3fe04d013a92a305              # double 0.50939999999999996
	.quad	0x3fe68ef99806f263              # double 0.70495300000000005
	.quad	0x3fefa96b3354c122              # double 0.98943099999999995
	.quad	0x3fef76f4be835dee              # double 0.98327100000000001
	.quad	0x3fdff359ff4fd6d8              # double 0.49922800000000001
	.quad	0x3fc39c065b63d3e5              # double 0.153199
	.quad	0x3fe98ee286727568              # double 0.79869199999999996
	.quad	0x3fd06c7eae5bc87e              # double 0.25662200000000002
	.quad	0x3fe8731b152f3c2e              # double 0.76405100000000004
	.quad	0x3fb6bdf4c2b51bd6              # double 0.088835999999999998
	.quad	0x3fd0fbca1059ea57              # double 0.26536799999999999
	.quad	0x3fe36683c297bfa5              # double 0.60626400000000003
	.quad	0x3fcca24463065f96              # double 0.22370200000000001
	.quad	0x3fd9c3ce2089e343              # double 0.40257599999999999
	.quad	0x3fe8a979e16d6dc2              # double 0.77068800000000004
	.quad	0x3fe41cf9a06a6e33              # double 0.62853700000000001
	.quad	0x3fea0adcd2d44dcb              # double 0.81382600000000005
	.quad	0x3fd391b3f20a73f7              # double 0.30576799999999998
	.quad	0x3fe34c857f3061c8              # double 0.60309100000000004
	.quad	0x3feaa7a63736cdf2              # double 0.83296499999999996
	.quad	0x3fbd3b9f127f5e85              # double 0.114191
	.quad	0x3fd30fd3b29a1ba0              # double 0.29784100000000002
	.quad	0x3febf0435efa615b              # double 0.87307900000000005
	.quad	0x3fd8548ecd8dbced              # double 0.38016100000000003
	.quad	0x3fd01276fb09203a              # double 0.25112699999999999
	.quad	0x3fc59fba450acc0c              # double 0.168937
	.quad	0x3fef88b545c78a6e              # double 0.98543800000000004
	.quad	0x3fe70bd66277c45d              # double 0.72019500000000003
	.quad	0x3fa121ccd9620685              # double 0.033460999999999998
	.quad	0x3fe12bb44e50c5eb              # double 0.53658499999999998
	.quad	0x3fbc811b1d92b7fe              # double 0.111345
	.quad	0x3fe9bc8e25c810a5              # double 0.80426699999999995
	.quad	0x3fd1326e115592da              # double 0.26870300000000003
	.quad	0x3fe3ad948dc11e43              # double 0.61493900000000001
	.quad	0x3f5f2990f301eabc              # double 0.001902
	.quad	0x3fc023d9231c64bb              # double 0.12609400000000001
	.quad	0x3fdd950b955f7836              # double 0.46222200000000002
	.quad	0x3fea98dac258d584              # double 0.83115899999999998
	.quad	0x3fe31695d91ab8e9              # double 0.59650700000000001
	.quad	0x3fefc61b6d43d039              # double 0.99293299999999995
	.quad	0x3fde9a027525460b              # double 0.47815000000000002
	.quad	0x3fe1163baba7b917              # double 0.53396399999999999
	.quad	0x3fd1acabc5154867              # double 0.27616400000000002
	.quad	0x3feb0ba40d90e23b              # double 0.84517100000000001
	.quad	0x3fe6b04ab606b7aa              # double 0.70901999999999998
	.quad	0x3fc1270b06c43f60              # double 0.13400400000000001
	.quad	0x3fe92157689ca18c              # double 0.78532000000000001
	.quad	0x3fe215d4e8fb00bd              # double 0.56516500000000003
	.quad	0x3fe91057d1782d38              # double 0.78324499999999997
	.quad	0x3fe6476d117b5287              # double 0.69621900000000003
	.quad	0x3fda6a50d6b228dd              # double 0.41273900000000002
	.quad	0x3fdf060bb2bba98f              # double 0.48474400000000001
	.quad	0x3fe7ad40aaeafab5              # double 0.73989899999999997
	.quad	0x3fdba50507a6bd6f              # double 0.43194700000000003
	.quad	0x3fb63476295208e1              # double 0.086737999999999996
	.quad	0x3fda25edd052934b              # double 0.40856500000000001
	.quad	0x3fce17fc7607c41a              # double 0.23510700000000001
	.quad	0x3fd0e675147f1306              # double 0.26406600000000002
	.quad	0x3fec42d6a9c560c8              # double 0.88315900000000003
	.quad	0x3fe0b78ee2867275              # double 0.52240699999999995
	.quad	0x3fcc15fcc1871e6d              # double 0.219421
	.quad	0x3fc80ffda4052d66              # double 0.18798799999999999
	.quad	0x3fdafdbd2fa0d77b              # double 0.42173699999999997
	.quad	0x3fe6951a437824d5              # double 0.70570100000000002
	.quad	0x3fe8d02ababead4f              # double 0.77541099999999996
	.quad	0x3fe309f623076c05              # double 0.59496599999999999
	.quad	0x3fc0a5df2239e6ac              # double 0.13006200000000001
	.quad	0x3fefd78e5c4eb570              # double 0.99506300000000003
	.quad	0x3fd745846e8f29d4              # double 0.363618
	.quad	0x3fc3eb18116ebd4d              # double 0.155612
	.quad	0x3fea7746887a8d65              # double 0.82706000000000002
	.quad	0x3fc1dc8b86b15f89              # double 0.139543
	.quad	0x3fc5dc4007570c56              # double 0.17078399999999999
	.quad	0x3fed353f7ced9168              # double 0.91274999999999995
	.quad	0x3fc83760bf5d7881              # double 0.18919
	.quad	0x3fe9332f01754b06              # double 0.78749800000000003
	.quad	0x3fd00f5a1016ce79              # double 0.25093700000000002
	.quad	0x3fd140895d0b73d2              # double 0.26956400000000003
	.quad	0x3fe7193708aac96d              # double 0.72182800000000003
	.quad	0x3fd8be76c8b43958              # double 0.386625
	.quad	0x3fe121a0cf1800a8              # double 0.53535500000000003
	.quad	0x3fe749e01de26916              # double 0.72776799999999997
	.quad	0x3fe0d1ce28ed5f14              # double 0.52561100000000005
	.quad	0x3fd386d71f36262d              # double 0.30510500000000002
	.quad	0x3feb0142f61ed5ae              # double 0.84390399999999999
	.quad	0x3fe1016f0068db8c              # double 0.53142500000000004
	.quad	0x3fbfb2fec56d5cfb              # double 0.123825
	.quad	0x3f9160956c0d6f54              # double 0.016969999999999999
	.quad	0x3fcf7625204af923              # double 0.24579300000000001
	.quad	0x3fe692146a1a500d              # double 0.70533199999999996
	.quad	0x3fb0dd50a88effe3              # double 0.065877000000000005
	.quad	0x3fee03ad9f0a1be3              # double 0.93794900000000003
	.quad	0x3fb08d4bad7d7c2d              # double 0.064656000000000005
	.quad	0x3fe6dc768dfbd6a6              # double 0.71441200000000005
	.quad	0x3fe390795f676ea4              # double 0.61138599999999999
	.quad	0x3fefc56b441bb8c3              # double 0.99284899999999998
	.quad	0x3f85ff609dcf8940              # double 0.010741000000000001
	.quad	0x3fc2726d04e618ce              # double 0.144117
	.quad	0x3fd9bb16c1e364bf              # double 0.40204400000000001
	.quad	0x3fd50196d8f4f93c              # double 0.32822200000000001
	.quad	0x3fb12e514c22ee42              # double 0.067113000000000006
	.quad	0x3fe50f7db6e503fb              # double 0.65814099999999998
	.quad	0x3fed1348b220791c              # double 0.90860399999999996
	.quad	0x3feaa63b688bda94              # double 0.83279199999999997
	.quad	0x3fc8823854046413              # double 0.19147400000000001
	.quad	0x3fc2d6451b93037d              # double 0.14716399999999999
	.quad	0x3fe1a9dc725c3dee              # double 0.55198499999999995
	.quad	0x3fec0e4fb97bb731              # double 0.87674700000000005
	.quad	0x3fea17c80841ede1              # double 0.81540299999999999
	.quad	0x3fdb0e5e679463d0              # double 0.42275200000000002
	.quad	0x3feb102363b25700              # double 0.84572000000000003
	.quad	0x3fde3d70a3d70a3d              # double 0.47249999999999998
	.quad	0x3fd276427c7c5261              # double 0.288468
	.quad	0x3feff4e22a2c2374              # double 0.99864299999999994
	.quad	0x3fc16ca46e08f217              # double 0.136128
	.quad	0x3fe3ba4b5568e821              # double 0.61649100000000001
	.quad	0x3fe4dc37a3db3bfb              # double 0.65188199999999996
	.quad	0x3fcd4003254e6e22              # double 0.228516
	.quad	0x3fe075d56f32bdc2              # double 0.51438399999999995
	.quad	0x3fd10cbf2b239a39              # double 0.266403
	.quad	0x3fba2456f75d9a0f              # double 0.102117
	.quad	0x3fe53380cb6c7a7d              # double 0.66253700000000004
	.quad	0x3fe233f42352eb5f              # double 0.56884199999999996
	.quad	0x3fd2ce703afb7e91              # double 0.29385
	.quad	0x3fe39014b599aa61              # double 0.61133800000000005
	.quad	0x3fe021f2990f301f              # double 0.50414400000000004
	.quad	0x3fe5ca6223e18698              # double 0.68095499999999998
	.quad	0x3fe0c37c5692b3cc              # double 0.52386299999999997
	.quad	0x3fde92af9a8cdea0              # double 0.47770299999999999
	.quad	0x3fdfa92e62131a8f              # double 0.494701
	.quad	0x3fd73e425aee6320              # double 0.36317500000000003
	.quad	0x3fe0ad46f587d6f9              # double 0.52115199999999995
	.quad	0x3fde355475a31a4c              # double 0.47200500000000001
	.quad	0x3fda56861e92923e              # double 0.41153099999999998
	.quad	0x3fd5b49e01de2691              # double 0.33914899999999998
	.quad	0x3fe324052d666a98              # double 0.59814699999999998
	.quad	0x3fe53519bd4067cf              # double 0.66273199999999999
	.quad	0x3fe52ceee0f3cb3e              # double 0.66173499999999996
	.quad	0x3feaab0c88a47ed0              # double 0.83338000000000001
	.quad	0x3fee5909f1f14984              # double 0.94836900000000001
	.quad	0x3fc4a044ae85b9e9              # double 0.16114100000000001
	.quad	0x3fe80635a426bb56              # double 0.75075800000000004
	.quad	0x3fe79930be0ded29              # double 0.73745000000000005
	.quad	0x3fc9357603925bb8              # double 0.19694400000000001
	.quad	0x3fdccc07aaef2c73              # double 0.44995299999999999
	.quad	0x3fde89a88ace24bc              # double 0.47715200000000002
	.quad	0x3fdd964628027d89              # double 0.46229700000000001
	.quad	0x3fdf1e4f765fd8ae              # double 0.48622500000000002
	.quad	0x3fe883b81b64e054              # double 0.76607899999999995
	.quad	0x3f927ed84d338f7a              # double 0.018062000000000002
	.quad	0x3fe5e681a9b8cb8e              # double 0.684388
	.quad	0x3fd55f7403dddb12              # double 0.333951
	.quad	0x3fd734b51372a38c              # double 0.36259200000000003
	.quad	0x3fe9214f0520d131              # double 0.78531600000000001
	.quad	0x3fe8fe9fadafd114              # double 0.78108200000000005
	.quad	0x3f81550ca1cef241              # double 0.008463
	.quad	0x3fe5b150dae3e6c5              # double 0.67789500000000003
	.quad	0x3fb2add590c0ad04              # double 0.072965000000000002
	.quad	0x3fe5c09c3ce2089e              # double 0.67976199999999998
	.quad	0x3fed24c404a72eae              # double 0.91073800000000005
	.quad	0x3fd50221426fe719              # double 0.32825500000000002
	.quad	0x3fc75158b827fa1a              # double 0.18217
	.quad	0x3fed919ce075f6fd              # double 0.92402499999999999
	.quad	0x3fe1758c08b75ea6              # double 0.54559899999999995
	.quad	0x3fdad8cf398e9707              # double 0.41948299999999999
	.quad	0x3f84d6a161e4f766              # double 0.010175
	.quad	0x3feb4827b6fe2e6f              # double 0.85255800000000004
	.quad	0x3fec5a0be5109071              # double 0.885992
	.quad	0x3fc73a68b19a415f              # double 0.18146999999999999
	.quad	0x3fe74c447c30d307              # double 0.72806000000000004
	.quad	0x3feb46b26bf8769f              # double 0.85238000000000003
	.quad	0x3fe7d2bf5515054b              # double 0.74447600000000003
	.quad	0x3fc2947064ece9a3              # double 0.14515500000000001
	.quad	0x3feff5f0b28522ea              # double 0.99877199999999999
	.quad	0x3fe871886df82b1f              # double 0.76385899999999995
	.quad	0x3fea15ce9e5e2479              # double 0.81516200000000005
	.quad	0x3fe65b2f661f18ca              # double 0.698631
	.quad	0x3fc91465e8922531              # double 0.195935
	.quad	0x3fc24c2f837b4a23              # double 0.14294999999999999
	.quad	0x3fc75b24e9c45458              # double 0.18246899999999999
	.quad	0x3feb9fd9ba1b1961              # double 0.863263
	.quad	0x3fc5228dc981beb2              # double 0.16511700000000001
	.quad	0x3fe9ce032db1e9f2              # double 0.80639799999999995
	.quad	0x3feff4eca686e7e6              # double 0.99864799999999998
	.quad	0x3fd3bec679cc74b8              # double 0.30851899999999999
	.quad	0x3fbf401c4fc1df33              # double 0.122072
	.quad	0x3fea13e3e29307af              # double 0.81492799999999999
	.quad	0x3fd90474d9c6b053              # double 0.39089699999999999
	.quad	0x3fa64b44a1f08030              # double 0.043542999999999998
	.quad	0x3fa6774eebf65dc0              # double 0.043879000000000001
	.quad	0x3fdb84cad57bc7f7              # double 0.42997999999999997
	.quad	0x3fd60f40e5a35d68              # double 0.34468100000000002
	.quad	0x3fee04901d19157b              # double 0.93805700000000003
	.quad	0x3fc3d744f5d35654              # double 0.15500700000000001
	.quad	0x3feca938de6ddf01              # double 0.89565700000000004
	.quad	0x3fda92ab68cef673              # double 0.41520200000000002
	.quad	0x3fdc5c853c148345              # double 0.44314700000000001
	.quad	0x3fe9dd2f1a9fbe77              # double 0.80825000000000002
	.quad	0x3fe8b6a1e81cb46c              # double 0.77229400000000003
	.quad	0x3fe231b36bd2b6f2              # double 0.56856700000000004
	.quad	0x3fecaa60913a4f87              # double 0.89579799999999998
	.quad	0x3fdea34ca0c282c7              # double 0.478717
	.quad	0x3fe415df6555c52e              # double 0.62766999999999995
	.quad	0x3fe2900a393ee5ef              # double 0.58008300000000002
	.quad	0x3fbdfc8f32378ab1              # double 0.117135
	.quad	0x3febc080f98fa377              # double 0.86724900000000005
	.quad	0x3feae43675ddd2af              # double 0.84035800000000005
	.quad	0x3f974213a0c6b485              # double 0.022713000000000001
	.quad	0x3fed64e69f05ea25              # double 0.91856700000000002
	.quad	0x3fd0bca9691a75cd              # double 0.261515
	.quad	0x3fef88c1db0142f6              # double 0.98544399999999999
	.quad	0x3fdb714fce746cb9              # double 0.42879099999999998
	.quad	0x3fe7ad601ffb480a              # double 0.73991399999999996
	.quad	0x3fe4cd24e160d888              # double 0.65004200000000001
	.quad	0x3f9540cc78e9f6a9              # double 0.020754999999999999
	.quad	0x3fe2369552e2fbe3              # double 0.56916299999999997
	.quad	0x3fd53f0bae89eba7              # double 0.33197300000000002
	.quad	0x3fe854f15e7c8d19              # double 0.76036899999999996
	.quad	0x3fe2c5953586ca8a              # double 0.586619
	.quad	0x3fc7e2cdc011d367              # double 0.186609
	.quad	0x3fcbd1aa821f2991              # double 0.217336
	.quad	0x3fde7eae5bc87db3              # double 0.47648200000000002
	.quad	0x3fed5794a6eb91b4              # double 0.916941
	.quad	0x3fde4fb549f94856              # double 0.47361500000000001
	.quad	0x3fe9a788db0574b4              # double 0.80170099999999999
	.quad	0x3fbdb0142f61ed5b              # double 0.115968
	.quad	0x3fd2607c4199fe43              # double 0.28713899999999998
	.quad	0x3fe8c9795b35b0bc              # double 0.774594
	.quad	0x3f8a75cd0bb6ed67              # double 0.012919999999999999
	.quad	0x3fd43193f6c2699c              # double 0.31552599999999997
	.quad	0x3fe474927913e814              # double 0.63922999999999996
	.quad	0x3fc4940bbb1f255f              # double 0.16076799999999999
	.quad	0x3fddb3aabcd78c43              # double 0.46409099999999998
	.quad	0x3f84445aa2e3c537              # double 0.0098960000000000002
	.quad	0x3fb9a95421c04428              # double 0.10024
	.quad	0x3fd1330941c8216c              # double 0.26873999999999998
	.quad	0x3fe230ced4e4c943              # double 0.56845800000000002
	.quad	0x3fe1b9f340d4dc66              # double 0.55394900000000002
	.quad	0x3fea588e368f0846              # double 0.82330999999999999
	.quad	0x3fe7f72d5e071c54              # double 0.748923
	.quad	0x3fd1ec7c957cd467              # double 0.280059
	.quad	0x3fe5c3c18b502abb              # double 0.68014600000000003
	.quad	0x3fc43af31b152f3c              # double 0.158049
	.quad	0x3fb51958969a0ad9              # double 0.082418000000000005
	.quad	0x3fe80637bd05af6c              # double 0.75075899999999995
	.quad	0x3fd861d4306e5cd5              # double 0.380971
	.quad	0x3fcffe2a3cea6c1a              # double 0.249944
	.quad	0x3fb1146e4c0df58c              # double 0.066718
	.quad	0x3fe40fe047d3d428              # double 0.626938
	.quad	0x3fd8cca2db61bb06              # double 0.38749
	.quad	0x3fdef2239e6ab9b2              # double 0.48352899999999999
	.quad	0x3fa9d7ba6698bb4d              # double 0.050473999999999998
	.quad	0x3fdd93af74cd3177              # double 0.46213900000000002
	.quad	0x3fd8753e707e175d              # double 0.382156
	.quad	0x3fda593e5fb71fbc              # double 0.41169699999999998
	.quad	0x3f9804d983947497              # double 0.023456000000000001
	.quad	0x3fd33be6601bc98a              # double 0.30053099999999999
	.quad	0x3feeb96073de1e2e              # double 0.96012900000000001
	.quad	0x3fc1cb252ce032db              # double 0.139012
	.quad	0x3fefa02b841248d8              # double 0.98830200000000001
	.quad	0x3fe67487fcb923a3              # double 0.70172500000000004
	.quad	0x3fe5e1f9f01b866e              # double 0.68383499999999997
	.quad	0x3fce7ce0fc2eba28              # double 0.23818600000000001
	.quad	0x3fd9302f72b45283              # double 0.39356600000000003
	.quad	0x3fe34eaf251c193b              # double 0.60335499999999997
	.quad	0x3fccc8366516db0e              # double 0.22486
	.quad	0x3fd3934267839cd8              # double 0.305863
	.quad	0x3fe35da6a4441787              # double 0.605182
	.quad	0x3fd5d4fdf3b645a2              # double 0.34112500000000001
	.quad	0x3fe2887a8d64d7f1              # double 0.57916000000000001
	.quad	0x3fe632fa93af74cd              # double 0.69372299999999998
	.quad	0x3f85e0f7fcfc3f81              # double 0.010683
	.quad	0x3fefae7b3d8e0008              # double 0.99004899999999995
	.quad	0x3fd81a0cf1800a7c              # double 0.37658999999999998
	.quad	0x3f9ab191dde37586              # double 0.026068000000000001
	.quad	0x3fc987bdcf0307f2              # double 0.19945499999999999
	.quad	0x3fe0d2ed783dff3f              # double 0.52574799999999999
	.quad	0x3fe8b84ba0e84274              # double 0.77249699999999998
	.quad	0x3fec8c5436b8f9b1              # double 0.89212999999999998
	.quad	0x3fbd60fa15db3398              # double 0.114761
	.quad	0x3fb8e0114d2f5dbc              # double 0.097169000000000005
	.quad	0x3fe2379fa97e132b              # double 0.56928999999999996
	.quad	0x3fb63358f2e05ccd              # double 0.086721000000000006
	.quad	0x3fdc306e5cd4ed2d              # double 0.44045600000000001
	.quad	0x3fe9dc52e72da123              # double 0.808145
	.quad	0x3fda00b88ca3e7d1              # double 0.40629399999999999
	.quad	0x3fee910a137f38c5              # double 0.95520499999999997
	.quad	0x3fe468b3b320535d              # double 0.63778100000000004
	.quad	0x3fe39be09bb6aa4c              # double 0.61277800000000004
	.quad	0x3fc33cb3e5753a3f              # double 0.15029000000000001
	.quad	0x3fe6eddaceee0f3d              # double 0.71653500000000003
	.quad	0x3fd689b52007dd44              # double 0.352155
	.quad	0x3fd1e54b48d3ae68              # double 0.27961999999999998
	.quad	0x3fec6f0281ba7fc3              # double 0.88855099999999998
	.quad	0x3fe08ba83f4eca68              # double 0.51704799999999995
	.quad	0x3fbea433508f648c              # double 0.11969299999999999
	.quad	0x3fc14c55432873bd              # double 0.13514200000000001
	.quad	0x3fdea9b8cb8e086c              # double 0.47910900000000001
	.quad	0x3fbc3aa79bbadc0a              # double 0.11027000000000001
	.quad	0x3fe3f5579af1886e              # double 0.623699
	.quad	0x3fd6e1ef73c0c1fd              # double 0.35754000000000002
	.quad	0x3fa7a2f05a708ede              # double 0.046164999999999998
	.quad	0x3fe09d27c3936827              # double 0.51918399999999998
	.quad	0x3fd7d4cfd08d4bad              # double 0.37236399999999997
	.quad	0x3fbd612c6ac215ba              # double 0.114764
	.quad	0x3fe3821d10b1feeb              # double 0.60963299999999998
	.quad	0x3fe884bc27631b58              # double 0.76620299999999997
	.quad	0x3feab3d4ae429e0a              # double 0.83445199999999997
	.quad	0x3fd50f1f57b41bfc              # double 0.32904800000000001
	.quad	0x3fe38cbf2b239a39              # double 0.610931
	.quad	0x3fe9f8359bc33f85              # double 0.81154899999999996
	.quad	0x3fe705100a393ee6              # double 0.71936800000000001
	.quad	0x3fe2e6dbd72bcb60              # double 0.59068100000000001
	.quad	0x3f9b8f9b13165d3a              # double 0.026915000000000001
	.quad	0x3fe6ee3f78bbd380              # double 0.71658299999999997
	.quad	0x3fe502539756c93a              # double 0.65653399999999995
	.quad	0x3fe96707e175d13d              # double 0.79382699999999995
	.quad	0x3fe8d8e864020818              # double 0.776478
	.quad	0x3fda7507e9d94d0e              # double 0.41339300000000001
	.quad	0x3fe636501e2584f5              # double 0.69413000000000002
	.quad	0x3fec5c4c9c90c4df              # double 0.88626700000000003
	.quad	0x3fe6ae2541d8e864              # double 0.708758
	.quad	0x3feae9c0229a5ebb              # double 0.84103399999999995
	.quad	0x3fe5fd50225742dd              # double 0.68717200000000001
	.quad	0x3fed8a41a261bf38              # double 0.92312700000000003
	.quad	0x3fdb6deb95e5aff3              # double 0.42858400000000002
	.quad	0x3fe27cd035371972              # double 0.57773600000000003
	.quad	0x3fd95082cf52b90a              # double 0.39553899999999997
	.quad	0x3fe9da16616b54e3              # double 0.80787200000000003
	.quad	0x3fd1dd7ecbb7f9d7              # double 0.279144
	.quad	0x3fea822bbecaab8a              # double 0.82838999999999996
	.quad	0x3fbcb827fa1a0cf2              # double 0.11218500000000001
	.quad	0x3fe3a2f05a708ede              # double 0.61363999999999996
	.quad	0x3fee3a4b5568e821              # double 0.94461600000000001
	.quad	0x3fec0635a426bb56              # double 0.87575800000000004
	.quad	0x3fcf2c061847f562              # double 0.243531
	.quad	0x3fe4d931ca7d6734              # double 0.65151300000000001
	.quad	0x3fe256861e92923e              # double 0.57306199999999996
	.quad	0x3fe40ba40d90e23b              # double 0.62642100000000001
	.quad	0x3fefaca793576039              # double 0.98982599999999998
	.quad	0x3fecf1e4b44a1f08              # double 0.904528
	.quad	0x3fe6c855da272863              # double 0.711955
	.quad	0x3fe03a6aca793576              # double 0.507131
	.quad	0x3fd09fe004b7f5a5              # double 0.25975799999999999
	.quad	0x3fa4f8b588e368f1              # double 0.040960000000000003
	.quad	0x3fdb93f290abb44e              # double 0.43090499999999998
	.quad	0x3fef96f21f6cacd2              # double 0.98717600000000005
	.quad	0x3fea6fef7c243dcd              # double 0.82616400000000001
	.quad	0x3fc62a5e785b5b70              # double 0.17316799999999999
	.quad	0x3fe80bb906466b1e              # double 0.75143099999999996
	.quad	0x3fecb6a1e81cb46c              # double 0.89729400000000003
	.quad	0x3fed4217d2849cb2              # double 0.91431799999999996
	.quad	0x3fd73cd141a6937d              # double 0.36308699999999999
	.quad	0x3fdde7fb267c6b8b              # double 0.46728399999999998
	.quad	0x3fe209bd8383ad9f              # double 0.563689
	.quad	0x3fef87b784662bae              # double 0.985317
	.quad	0x3fddfbd273d5bab2              # double 0.46849499999999999
	.quad	0x3f9fb82c2bd7f51f              # double 0.030976
	.quad	0x3fd943c7d5ed06ff              # double 0.394762
	.quad	0x3fd10d73860999dd              # double 0.26644600000000002
	.quad	0x3fe6f13059641f64              # double 0.71694199999999997
	.quad	0x3fdb789a459103c9              # double 0.42923600000000001
	.quad	0x3fe394dd72367e41              # double 0.61192199999999997
	.quad	0x3fd7200c0f01fb83              # double 0.36133100000000001
	.quad	0x3f8a62ed352220bc              # double 0.012884
	.quad	0x3fd842f1ed17c5ef              # double 0.37908599999999998
	.quad	0x3fe018bf7f06705d              # double 0.50302100000000005
	.quad	0x3fe2d655e28aa433              # double 0.58866399999999997
	.quad	0x3fa4cb5bb384fd2a              # double 0.040613999999999997
	.quad	0x3fddad256798958e              # double 0.46369300000000002
	.quad	0x3fcec98e53eb399f              # double 0.24052599999999999
	.quad	0x3febfa1c25d07421              # double 0.87428099999999997
	.quad	0x3fed9183b60285ec              # double 0.92401299999999997
	.quad	0x3fe10520d130df9c              # double 0.53187600000000002
	.quad	0x3fe79f9acffa7eb7              # double 0.73823300000000003
	.quad	0x3fe26b09635610ae              # double 0.57556600000000002
	.quad	0x3fe0b70691ea78af              # double 0.52234199999999997
	.quad	0x3fc971e29b6b2af1              # double 0.19878799999999999
	.quad	0x3feaa8a1dfb9389b              # double 0.83308499999999996
	.quad	0x3fd47268d32830a1              # double 0.31948300000000002
	.quad	0x3fe87c4e2f37fbf0              # double 0.76517400000000002
	.quad	0x3fc5a5a038194c01              # double 0.16911699999999999
	.quad	0x3fefc804102ff8ec              # double 0.99316599999999999
	.quad	0x3fcf2d55a3a08399              # double 0.24357100000000001
	.quad	0x3fec801711947cfa              # double 0.89063599999999998
	.quad	0x3fdebc1eff9f87f0              # double 0.48023199999999999
	.quad	0x3fd1cae21101b003              # double 0.27800799999999998
	.quad	0x3fe4334e7685985b              # double 0.63126300000000002
	.quad	0x3fdc522ea0fd3b2a              # double 0.44251600000000002
	.quad	0x3fedbca5375c8da0              # double 0.92927800000000004
	.quad	0x3fd671476af89c5e              # double 0.35066399999999998
	.quad	0x3fe856cf850df15a              # double 0.76059699999999997
	.quad	0x3fa3fbbd7b2031cf              # double 0.039030000000000002
	.quad	0x3feb8c436fc158fb              # double 0.86087199999999997
	.quad	0x3fcf75ea67e846a6              # double 0.245786
	.quad	0x3f772bcb5fe542e5              # double 0.0056569999999999997
	.quad	0x3fe97162ae4b0186              # double 0.79509099999999999
	.quad	0x3f4deacc92146a1a              # double 9.1299999999999997E-4
	.quad	0x3fe84ebfec13b9f1              # double 0.75961299999999998
	.quad	0x3fe28ccbc05d52c1              # double 0.57968699999999995
	.quad	0x3fb072d1aeb3dd12              # double 0.064252000000000004
	.quad	0x3fd1fc5479d4d834              # double 0.281026
	.quad	0x3fec87cc7d1bb491              # double 0.89157699999999995
	.quad	0x3fd95bc87db2b346              # double 0.396227
	.quad	0x3fd7958969a0ad8a              # double 0.368502
	.quad	0x3fe9f4e4430b178b              # double 0.81114399999999998
	.quad	0x3fb9a76d97b30f8c              # double 0.10021099999999999
	.quad	0x3fe3cebbba55d1c4              # double 0.61898600000000004
	.quad	0x3feb255d1c3ac92a              # double 0.84831100000000004
	.quad	0x3fdb7ab7564302b4              # double 0.429365
	.quad	0x3fe84ed2cbea4ebe              # double 0.75962200000000002
	.quad	0x3f7506573215fcc2              # double 0.0051330000000000004
	.quad	0x3fe6adba4d6e47dc              # double 0.70870699999999998
	.quad	0x3fe5ddebd9018e75              # double 0.68333999999999995
	.quad	0x3fc39b994e1a3f46              # double 0.15318599999999999
	.quad	0x3fc32a6b0d9513f9              # double 0.149732
	.quad	0x3fd462bf11f926c8              # double 0.318527
	.quad	0x3fd5851654d61b2a              # double 0.33624799999999999
	.quad	0x3fc67d24180d3cff              # double 0.17569399999999999
	.quad	0x3fd633daf8df7a4e              # double 0.34691499999999997
	.quad	0x3f87214f0520d131              # double 0.011294
	.quad	0x3fe4116ca46e08f2              # double 0.62712699999999999
	.quad	0x3fef7d9988d2a1f9              # double 0.98408200000000001
	.quad	0x3fe4af405f6ba062              # double 0.646393
	.quad	0x3fea1c15097c8084              # double 0.81592799999999998
	.quad	0x3fe2190afe60c38f              # double 0.56555699999999998
	.quad	0x3fe0ee75ff609dd0              # double 0.52910900000000005
	.quad	0x3fc46e4c0df58c09              # double 0.15961600000000001
	.quad	0x3fecca3e7d135116              # double 0.89968800000000004
	.quad	0x3fe194d50ebaade6              # double 0.54941799999999996
	.quad	0x3fe7493c89f40a28              # double 0.72768999999999995
	.quad	0x3fe64f7ec3547e07              # double 0.69720400000000005
	.quad	0x3fe06ee525892685              # double 0.51353700000000002
	.quad	0x3fee1b52007dd441              # double 0.94083499999999998
	.quad	0x3fed709741d084e8              # double 0.91999399999999998
	.quad	0x3feae39d5e4a3832              # double 0.84028499999999995
	.quad	0x3feeb8e29f9ce8d9              # double 0.96006899999999995
	.quad	0x3fda4567125dd096              # double 0.41048600000000002
	.quad	0x3fdaba908a265f0f              # double 0.41763699999999998
	.quad	0x3fd33f290abb44e5              # double 0.30073
	.quad	0x3fc89ca9ef5232d3              # double 0.19228100000000001
	.quad	0x3fdfe81450efdc9c              # double 0.49853999999999998
	.quad	0x3fe7e9899bf5946c              # double 0.74725799999999998
	.quad	0x3fdd91d57ff9b563              # double 0.46202599999999999
	.quad	0x3fe354801f75104d              # double 0.60406499999999996
	.quad	0x3f90685553ef6b5d              # double 0.016022999999999999
	.quad	0x3fddda122fad6cb5              # double 0.46643499999999999
	.quad	0x3fd94b3c3e74afd5              # double 0.39521699999999998
	.quad	0x3fd81c6088d6d3b7              # double 0.37673200000000001
	.quad	0x3fe768a50507a6bd              # double 0.73152399999999995
	.quad	0x3fe870cdc8754f37              # double 0.76376999999999995
	.quad	0x3feb846e8f29d40f              # double 0.85991600000000001
	.quad	0x3fe1d938151a4378              # double 0.55776599999999998
	.quad	0x3fedd21ff2e48e8a              # double 0.93189999999999995
	.quad	0x3fdeb3e1437c5693              # double 0.47972900000000002
	.quad	0x3fe34aab8a5ce5b4              # double 0.60286499999999998
	.quad	0x3facdaf4adbc664d              # double 0.056357999999999998
	.quad	0x3fe70e7bc3c5bd0e              # double 0.72051799999999999
	.quad	0x3fe11eb2074ea8da              # double 0.53499699999999994
	.quad	0x3fd11eafee6fb4c4              # double 0.26749800000000001
	.quad	0x3fee060bb2bba98f              # double 0.93823800000000002
	.quad	0x3f89d66adb402d17              # double 0.012616
	.quad	0x3fea9287c200c0f0              # double 0.83038699999999999
	.quad	0x3fedf446f9b994e2              # double 0.93606900000000004
	.quad	0x3fd18f4f93bc0a07              # double 0.274372
	.quad	0x3f8b291b823c85c2              # double 0.013261999999999999
	.quad	0x3fe08cb295e9e1b1              # double 0.51717500000000005
	.quad	0x3fe6b9da16616b55              # double 0.71018700000000001
	.quad	0x3fe43024f6598e11              # double 0.63087700000000002
	.quad	0x3fe58d4562e09fe8              # double 0.67349499999999995
	.quad	0x3feb403bc4d22c88              # double 0.85159099999999999
	.quad	0x3fc8323358f2e05d              # double 0.18903200000000001
	.quad	0x3feb2d256798958e              # double 0.84926100000000004
	.quad	0x3f85c52e72da1230              # double 0.010630000000000001
	.quad	0x3fd0765fd8adab9f              # double 0.25722499999999998
	.quad	0x3fddbfe7e1fc08fa              # double 0.46483799999999997
	.quad	0x3fdd6cd29131ec0b              # double 0.45976699999999998
	.quad	0x3fd01322f2734f83              # double 0.251168
	.quad	0x3fe0ad96a6a0125a              # double 0.52119000000000004
	.quad	0x3fd38448cf7caa76              # double 0.30494900000000003
	.quad	0x3fd5cc532a497fa6              # double 0.34059600000000001
	.quad	0x3fe33395c4220360              # double 0.600047
	.quad	0x3fe59083dbc23316              # double 0.67389100000000002
	.quad	0x3feb941a6937d1fe              # double 0.86182899999999996
	.quad	0x3fee952d234eb9a1              # double 0.95570999999999995
	.quad	0x3feb32a0663c74fb              # double 0.84992999999999996
	.quad	0x3fe55d590c0ad03e              # double 0.66764500000000004
	.quad	0x3fa7dd441355475a              # double 0.046609999999999999
	.quad	0x3fe113ccd0fe8ab5              # double 0.533667
	.quad	0x3fe960a63305100a              # double 0.79304799999999998
	.quad	0x3fcf39192641b329              # double 0.24393000000000001
	.quad	0x3fa8ea18372e6a77              # double 0.048661000000000003
	.quad	0x3fcb565c2d278078              # double 0.21357300000000001
	.quad	0x3fd3fea3df6db941              # double 0.312417
	.quad	0x3fe9ae0c17657753              # double 0.80249599999999999
	.quad	0x3fee577fae3608d1              # double 0.94818100000000005
	.quad	0x3fec8c3f3e0370ce              # double 0.89212000000000002
	.quad	0x3fe44ee17a02fb5d              # double 0.634629
	.quad	0x3fe7accf6be37de9              # double 0.73984499999999997
	.quad	0x3fec89e12a51e322              # double 0.89183100000000004
	.quad	0x3fd06db50f40e5a3              # double 0.25669599999999998
	.quad	0x3febc1d29dc725c4              # double 0.86741000000000001
	.quad	0x3fdb10fd7e45803d              # double 0.42291200000000001
	.quad	0x3fad9274e22a2c23              # double 0.057757999999999997
	.quad	0x3fd5d5d80e496edf              # double 0.34117700000000001
	.quad	0x3fc8cbb7f9d6f113              # double 0.193717
	.quad	0x3fe2832db1e9f278              # double 0.57851300000000005
	.quad	0x3fcfff4fd6d7e88a              # double 0.24997900000000001
	.quad	0x3fdcbac2df0d4131              # double 0.44889899999999999
	.quad	0x3fdf39de481f5382              # double 0.48790699999999998
	.quad	0x3fd01b25f633ce64              # double 0.25165700000000002
	.quad	0x3fe7effc115df655              # double 0.74804499999999996
	.quad	0x3fe03dec5f394b7b              # double 0.50755899999999998
	.quad	0x3fea3bafd976ff3b              # double 0.81978600000000001
	.quad	0x3fc58f4f93bc0a07              # double 0.168436
	.quad	0x3fed1fec99f1ae2e              # double 0.91014700000000004
	.quad	0x3fc615a8deb0fadf              # double 0.17253599999999999
	.quad	0x3fe8a2877ee4e26d              # double 0.76983999999999997
	.quad	0x3fe29cb252ce032e              # double 0.58162800000000003
	.quad	0x3fdc2c2bd7f51efb              # double 0.44019599999999998
	.quad	0x3fe97a17f4128bf4              # double 0.79615400000000002
	.quad	0x3febd5757d5a9eb2              # double 0.869807
	.quad	0x3fba0221426fe719              # double 0.101595
	.quad	0x3fe29f212d773190              # double 0.58192500000000003
	.quad	0x3fbfdd334c5da6a4              # double 0.124469
	.quad	0x3fec89741d084e83              # double 0.89177899999999999
	.quad	0x3fd934ca0c282c6f              # double 0.393847
	.quad	0x3fc5fea8112ba16e              # double 0.17183399999999999
	.quad	0x3fea62541d8e8640              # double 0.82450299999999999
	.quad	0x3fea0a2014727dcc              # double 0.81373600000000001
	.quad	0x3fc3d07c84b5dcc6              # double 0.15479999999999999
	.quad	0x3fe312146a1a500d              # double 0.59595699999999996
	.quad	0x3fbd974e65bea0ba              # double 0.11559
	.quad	0x3fd69c886162f167              # double 0.35330400000000001
	.quad	0x3fc482c6ef3d3a1d              # double 0.16024099999999999
	.quad	0x3fe86d9be4cd7492              # double 0.76337999999999995
	.quad	0x3fe96225fa658c4c              # double 0.79323100000000001
	.quad	0x3fe7aba16e7a311f              # double 0.73970100000000005
	.quad	0x3fe63738e6d15ad1              # double 0.694241
	.quad	0x3fed24e9c4545847              # double 0.91075600000000001
	.quad	0x3fe1080d801b4352              # double 0.53223299999999996
	.quad	0x3fd65c28f5c28f5c              # double 0.34937499999999999
	.quad	0x3faa597d49d7ba67              # double 0.051464000000000003
	.quad	0x3fdfacc4ef88b978              # double 0.49492000000000003
	.quad	0x3fb1cc63f141205c              # double 0.069525000000000003
	.quad	0x3fd3e892253111f1              # double 0.31107000000000001
	.quad	0x3fed8826aa8eb463              # double 0.92286999999999997
	.quad	0x3fe197e34b945309              # double 0.54979100000000003
	.quad	0x3fd62a737110e454              # double 0.34634100000000001
	.quad	0x3fe7ffbefd00713f              # double 0.749969
	.quad	0x3fb70f062d40aaeb              # double 0.090073
	.quad	0x3fda7dbb16c1e365              # double 0.41392400000000001
	.quad	0x3fd33cea6c1a048e              # double 0.300593
	.quad	0x3fd3a4095f2452c6              # double 0.30688700000000002
	.quad	0x3fc36da0168b5cc0              # double 0.151783
	.quad	0x3fdb5f6fd21ff2e5              # double 0.42770000000000002
	.quad	0x3fec69f6a93f290b              # double 0.88793500000000003
	.quad	0x3fe6f6af89c5e6ff              # double 0.71761299999999995
	.quad	0x3feb15e17e34b945              # double 0.84642099999999998
	.quad	0x3fe1ee696a26e547              # double 0.56035299999999999
	.quad	0x3fc7c903ea704bc2              # double 0.18582199999999999
	.quad	0x3fe9a671ef30a4e3              # double 0.80156799999999995
	.quad	0x3fe1a19eb6390c91              # double 0.550979
	.quad	0x3fd5abb01c92ddbe              # double 0.33860400000000002
	.quad	0x3fd1ccc037931444              # double 0.27812199999999998
	.quad	0x3fe63810e8858ff7              # double 0.69434399999999996
	.quad	0x3fede3de6149c6f3              # double 0.93406599999999995
	.quad	0x3fe6ba7546d3f9e8              # double 0.71026100000000003
	.quad	0x3fe0106ee30caa32              # double 0.50200599999999995
	.quad	0x3fd3be76c8b43958              # double 0.3085
	.quad	0x3fe4d83621fafc8b              # double 0.651393
	.quad	0x3fe3687b139c94f7              # double 0.60650400000000004
	.quad	0x3fd2415f45e0b4e1              # double 0.28523999999999999
	.quad	0x3fda8d434a01abd2              # double 0.41487200000000002
	.quad	0x3fe354e2b063e07a              # double 0.60411199999999998
	.quad	0x3feb87db2b346131              # double 0.86033400000000004
	.quad	0x3fef224cc6822ff1              # double 0.97293700000000005
	.quad	0x3fe6cb07d0aed99d              # double 0.71228400000000003
	.quad	0x3f936199780baa58              # double 0.018926999999999999
	.quad	0x3fd081c2e33eff19              # double 0.25791999999999998
	.quad	0x3fd2abb44e50c5eb              # double 0.29172999999999999
	.quad	0x3fe8296d4c33b539              # double 0.75505699999999998
	.quad	0x3fda2d72ffd1dcd7              # double 0.409024
	.quad	0x3fd30296b3354c12              # double 0.29703299999999999
	.quad	0x3fd96777079e59f3              # double 0.39694000000000002
	.quad	0x3fb79c62a1b5c7ce              # double 0.092230000000000006
	.quad	0x3fd33dbc23315d70              # double 0.30064299999999999
	.quad	0x3fe81372a38b8ae3              # double 0.75237399999999999
	.quad	0x3fe8d67125dd095b              # double 0.77617700000000001
	.quad	0x3feaeab9b23dd54e              # double 0.84115300000000004
	.quad	0x3fda0342aa9f7b5b              # double 0.406449
	.quad	0x3febb0014f8b588e              # double 0.86523499999999998
	.quad	0x3fe1fdc9c4da9004              # double 0.56223000000000001
	.quad	0x3fb9938151a43782              # double 0.099906999999999995
	.quad	0x3fdb77f27fe4bcae              # double 0.42919600000000002
	.quad	0x3fab74bc6a7ef9db              # double 0.053624999999999999
	.quad	0x3fd46e2eb1c432ca              # double 0.31922499999999998
	.quad	0x3fb9b17481b21c47              # double 0.10036399999999999
	.quad	0x3fcbe279dd3bafd9              # double 0.21784899999999999
	.quad	0x3fcbc3504c48adef              # double 0.21689800000000001
	.quad	0x3fde802c0a4a05de              # double 0.47657300000000002
	.quad	0x3fe13ff04577d955              # double 0.53905499999999995
	.quad	0x3fed2d18d25edd05              # double 0.91175499999999998
	.quad	0x3fdbacf312b1b36c              # double 0.43243100000000001
	.quad	0x3fe9359791819d24              # double 0.78779200000000004
	.quad	0x3fb7ee3d5fdcdf6a              # double 0.093479000000000006
	.quad	0x3fe280192a737111              # double 0.57813700000000001
	.quad	0x3fe7d99cbee807bc              # double 0.74531400000000003
	.quad	0x3fe9b660e51d25ab              # double 0.80351300000000003
	.quad	0x3fe6872085b18549              # double 0.70399500000000004
	.quad	0x3fdb4fb97bb73083              # double 0.42674099999999998
	.quad	0x3fe43b23571d1d47              # double 0.63221899999999998
	.quad	0x3fe7498c3b0c4589              # double 0.72772800000000004
	.quad	0x3fe9bdf8f4730404              # double 0.80444000000000004
	.quad	0x3fe6e7e1fc08fa7b              # double 0.71580600000000005
	.quad	0x3fd6a69be09bb6aa              # double 0.35391899999999998
	.quad	0x3fec2352eb5f5f0b              # double 0.87931199999999998
	.quad	0x3fe91f1ae2da554c              # double 0.78504700000000005
	.quad	0x3fec0a222d5171e3              # double 0.87623700000000004
	.quad	0x3fea839cd8127b2d              # double 0.82856600000000002
	.quad	0x3fe30de8f6cefed6              # double 0.59544799999999998
	.quad	0x3fe234f61672324d              # double 0.56896500000000005
	.quad	0x3fd5c01e68a0d34a              # double 0.33985100000000001
	.quad	0x3fd1ed9dfdac68a9              # double 0.28012799999999999
	.quad	0x3fd1e236c15d2d02              # double 0.27943200000000001
	.quad	0x3fbf10a99b6f5caf              # double 0.121348
	.quad	0x3fdb8ae31d712a0f              # double 0.43035200000000001
	.quad	0x3fe5dbc87db2b346              # double 0.68307899999999999
	.quad	0x3fcf3a0407cc7d1c              # double 0.24395800000000001
	.quad	0x3fd1bdc26dce39b4              # double 0.27720699999999998
	.quad	0x3fe9d604189374bc              # double 0.80737499999999995
	.quad	0x3fb044d013a92a30              # double 0.063549999999999995
	.quad	0x3fe60663c74fb54a              # double 0.68828
	.quad	0x3feed22a6f3f52fc              # double 0.96315499999999998
	.quad	0x3fd043d46b26bf87              # double 0.25413999999999998
	.quad	0x3fd3d7add15f02c5              # double 0.31003900000000001
	.quad	0x3fe24c51116a8b8f              # double 0.57181599999999999
	.quad	0x3fdc3d20f2becedd              # double 0.44123099999999998
	.quad	0x3feb5ff3f0fe047d              # double 0.85546299999999997
	.quad	0x3fd9cb5781c714fd              # double 0.40303600000000001
	.quad	0x3fcbab430f49491f              # double 0.216164
	.quad	0x3fe370b06c43f5f9              # double 0.60750599999999999
	.quad	0x3fe3a845996744b3              # double 0.61429100000000003
	.quad	0x3fe76e8f29d40ee0              # double 0.73224599999999995
	.quad	0x3fe164e69f05ea25              # double 0.54356700000000002
	.quad	0x3fd2cc144028e4fc              # double 0.29370600000000002
	.quad	0x3fba976bc1eff9f8              # double 0.10387299999999999
	.quad	0x3fd35de9c0229a5f              # double 0.30260700000000001
	.quad	0x3fe1508d4bad7d7c              # double 0.54108299999999998
	.quad	0x3fc2979e16d6dc1a              # double 0.14525199999999999
	.quad	0x3fe2e1b8ed1bf7ad              # double 0.59005399999999997
	.quad	0x3feaac98e53eb39a              # double 0.833569
	.quad	0x3fdb0c9107faa045              # double 0.42264200000000002
	.quad	0x3fefb914f483cafb              # double 0.99134299999999997
	.quad	0x3fe8c60029f16b12              # double 0.77417000000000002
	.quad	0x3fce20bc382a12f9              # double 0.235374
	.quad	0x3faa11cb039ef0f1              # double 0.050916999999999997
	.quad	0x3fe472b020c49ba6              # double 0.63900000000000001
	.quad	0x3fd6d53cddd6e04c              # double 0.356765
	.quad	0x3feb16feb4a6655a              # double 0.846557
	.quad	0x3fd07f38c5436b90              # double 0.25776500000000002
	.quad	0x3fe34473cd573648              # double 0.60210600000000003
	.quad	0x3fc729bae46cfc83              # double 0.18096100000000001
	.quad	0x3fe00240b780346e              # double 0.50027500000000003
	.quad	0x3fef3797460242d0              # double 0.97553599999999996
	.quad	0x3fe4a67a52ac753e              # double 0.64532199999999995
	.quad	0x3fe5ba797891e215              # double 0.67901299999999998
	.quad	0x3fe6f56c93a71151              # double 0.71745899999999996
	.quad	0x3fd4fa376922d949              # double 0.32777200000000001
	.quad	0x3fe999bf5946c333              # double 0.80001800000000001
	.quad	0x3fe4bd9231c64ba9              # double 0.64814099999999997
	.quad	0x3fe86b67c286f8ad              # double 0.76311099999999998
	.quad	0x3fd63e468cac4b4d              # double 0.347551
	.quad	0x3fe1503d9a95421c              # double 0.541045
	.quad	0x3fdf815e39713ad6              # double 0.49227100000000001
	.quad	0x3fe4f460242d05f3              # double 0.65483100000000005
	.quad	0x3fd9dbc23315d702              # double 0.40403800000000001
	.quad	0x3f6d7ba6698bb4d5              # double 0.0035990000000000002
	.quad	0x3fe83482be8bc16a              # double 0.75641000000000003
	.quad	0x3fde9d12cadddf44              # double 0.47833700000000001
	.quad	0x3fb14df8b1572581              # double 0.067596000000000003
	.quad	0x3fdd0168b5cbff47              # double 0.45321099999999997
	.quad	0x3fc09795b35b0bbf              # double 0.12962599999999999
	.quad	0x3fe649f2fdb8fde3              # double 0.69652700000000001
	.quad	0x3fd4755ffe6d58c9              # double 0.319664
	.quad	0x3fec8bcdfefbf402              # double 0.89206600000000003
	.quad	0x3fe16e8af81626b3              # double 0.54474400000000001
	.quad	0x3fe6769ca9ef5233              # double 0.70197900000000002
	.quad	0x3fcadddf43c7d5ed              # double 0.209896
	.quad	0x3fee98aeb80ecfa7              # double 0.95613800000000004
	.quad	0x3febee34fc610f0f              # double 0.87282800000000005
	.quad	0x3fb458ff75968512              # double 0.079482999999999998
	.quad	0x3fed8c3b0c4588a0              # double 0.92336799999999996
	.quad	0x3fdedf8b1572580c              # double 0.48239399999999999
	.quad	0x3fec9f1ae2da554c              # double 0.89442200000000005
	.quad	0x3fba2f166e008e9b              # double 0.102281
	.quad	0x3fcb10b1feeb2d0a              # double 0.211447
	.quad	0x3fe19e55c0fcb4f2              # double 0.55057800000000001
	.quad	0x3febcb81733226c4              # double 0.86859200000000003
	.quad	0x3fcca3cea6c1a049              # double 0.223749
	.quad	0x3fec1b823c85c24c              # double 0.87835799999999997
	.quad	0x3fe73b8a19c9d5a2              # double 0.72601800000000005
	.quad	0x3fe29044f1a1986c              # double 0.58011100000000004
	.quad	0x3fd5c7a398201cd6              # double 0.34031
	.quad	0x3fdd963dc486ad2e              # double 0.46229500000000001
	.quad	0x3fe58bd66277c45d              # double 0.67332000000000003
	.quad	0x3fc067ad8e432442              # double 0.128164
	.quad	0x3febe5bea0ba1f4b              # double 0.87179499999999999
	.quad	0x3fe9d6f544bb1af4              # double 0.80749000000000004
	.quad	0x3fe53018611fd588              # double 0.66212099999999996
	.quad	0x3fea9e59f2ba9d1f              # double 0.83182999999999996
	.quad	0x3f7de481f53825e1              # double 0.0072979999999999998
	.quad	0x3fec0a65492ff4ba              # double 0.87626899999999996
	.quad	0x3fec1a30984e3fff              # double 0.87819700000000001
	.quad	0x3feab1e18efbb0e6              # double 0.83421400000000001
	.quad	0x3fd7579f23465626              # double 0.36472300000000002
	.quad	0x3fe48cc144028e50              # double 0.64218200000000003
	.quad	0x3fd0d1e53a81dc0e              # double 0.26281100000000002
	.quad	0x3fe0dfeda6612839              # double 0.527335
	.quad	0x3fd30fe047d3d428              # double 0.297844
	.quad	0x3fe2aaeafab53d64              # double 0.58336399999999999
	.quad	0x3fdbb97353b4b2fb              # double 0.43319400000000002
	.quad	0x3feafe4de3b8a19d              # double 0.84354300000000004
	.quad	0x3fac36113404ea4b              # double 0.055100000000000003
	.quad	0x3feb3688bda9435b              # double 0.85040700000000002
	.quad	0x3fe4e086bdf4c2b5              # double 0.65240799999999999
	.quad	0x3fd92a23bff8a8f4              # double 0.39319700000000002
	.quad	0x3febc61f9f01b867              # double 0.86793500000000001
	.quad	0x3f9e996312f4cf4a              # double 0.029881999999999999
	.quad	0x3fedb81d7dbf4880              # double 0.92872500000000002
	.quad	0x3fa17b5286b59147              # double 0.034144000000000001
	.quad	0x3fe6fbd8be7296f6              # double 0.71824299999999996
	.quad	0x3fe55b20b8066c2b              # double 0.66737400000000002
	.quad	0x3fefb866e43aa79c              # double 0.99126000000000002
	.quad	0x3fbf0b28522ea0fd              # double 0.121264
	.quad	0x3fea8dac258d5843              # double 0.82979400000000003
	.quad	0x3fc991148fd9fd37              # double 0.19974
	.quad	0x3fe171a5ca29845e              # double 0.54512300000000002
	.quad	0x3fef6675147f1306              # double 0.98125700000000005
	.quad	0x3fc0a8b8f14db595              # double 0.13014899999999999
	.quad	0x3fd66fbd273d5bab              # double 0.35056999999999999
	.quad	0x3fe927d88c1db014              # double 0.78611399999999997
	.quad	0x3fe67da4052d666b              # double 0.70283700000000005
	.quad	0x3fe017353b4b2fa9              # double 0.50283299999999997
	.quad	0x3fd3841aac53b081              # double 0.30493799999999999
	.quad	0x3fc56ea4228997c4              # double 0.167439
	.quad	0x3fab81b64e054691              # double 0.053724000000000001
	.quad	0x3fe8a8d002e23290              # double 0.77060700000000004
	.quad	0x3febd4ac29bf162b              # double 0.86971100000000001
	.quad	0x3fed5321e603d578              # double 0.91639800000000005
	.quad	0x3fea86e3b46fdeb5              # double 0.82896599999999998
	.quad	0x3f731876188b1141              # double 0.0046620000000000003
	.quad	0x3fa817763e4abe6a              # double 0.047053999999999999
	.quad	0x3fcd13b5bf6a0dbb              # double 0.227164
	.quad	0x3fecc1cc532a4980              # double 0.89865700000000004
	.quad	0x3fe84d423d9231c6              # double 0.75943099999999997
	.quad	0x3fac68448cf7caa7              # double 0.055482999999999998
	.quad	0x3fe4c1e14bdfd263              # double 0.64866699999999999
	.quad	0x3fded4f5903a7547              # double 0.48174800000000001
	.quad	0x3feade69ad42c3ca              # double 0.83965000000000001
	.quad	0x3fcc7778dd616f87              # double 0.22239600000000001
	.quad	0x3fd36b3354c12275              # double 0.30341800000000002
	.quad	0x3feaa39e6ab9b23e              # double 0.83247300000000002
	.quad	0x3fd9e48a58b3f63c              # double 0.40457399999999999
	.quad	0x3fc7b98c7e28240b              # double 0.18534999999999999
	.quad	0x3fe24534bd76ee74              # double 0.57094800000000001
	.quad	0x3fe8bc579f234656              # double 0.77299099999999998
	.quad	0x3fdfdff3f0fe047d              # double 0.49804399999999999
	.quad	0x3fc26f8ad2567989              # double 0.14402899999999999
	.quad	0x3fe4048beb5b2d4d              # double 0.62555499999999997
	.quad	0x3fe1ed9dfdac68a9              # double 0.56025599999999998
	.quad	0x3fe3fbaa9b499d02              # double 0.624471
	.quad	0x3fef8d5410f94c88              # double 0.98600200000000004
	.quad	0x3feddb0ff10ecb75              # double 0.93299100000000001
	.quad	0x3fe9465c70435efa              # double 0.78983899999999996
	.quad	0x3feaf6427c7c5261              # double 0.842561
	.quad	0x3fccaa7ded6ba8c6              # double 0.22395300000000001
	.quad	0x3fc3d30270f38822              # double 0.15487699999999999
	.quad	0x3fe498201cd5f99c              # double 0.64356999999999998
	.quad	0x3fe52dd377e1b8ed              # double 0.66184399999999999
	.quad	0x3fe90655193708ab              # double 0.78202300000000002
	.quad	0x3fda559f6ec5b079              # double 0.41147600000000001
	.quad	0x3fc03d46b26bf877              # double 0.12687000000000001
	.quad	0x3fe8b862b27cbf6e              # double 0.77250799999999997
	.quad	0x3fcaa3f8982cb210              # double 0.20812900000000001
	.quad	0x3fcdafe1da7b0b39              # double 0.23193
	.quad	0x3fd6c6eb0b7c3505              # double 0.35589100000000001
	.quad	0x3fe8be4cd7492791              # double 0.77322999999999997
	.quad	0x3fe0302b40f66a55              # double 0.50588
	.quad	0x3fd6e1a8262456f7              # double 0.35752299999999998
	.quad	0x3fec1ac36544fe37              # double 0.87826700000000002
	.quad	0x3fd4d9be4cd74928              # double 0.32579000000000002
	.quad	0x3fee6a11ec918e32              # double 0.95044799999999996
	.quad	0x3fde34eb9a176ddb              # double 0.47198000000000001
	.quad	0x3fed06e19b90ea9e              # double 0.90708999999999995
	.quad	0x3fe3993f6c2699c8              # double 0.61245700000000003
	.quad	0x3fe7a159817b95a3              # double 0.73844600000000005
	.quad	0x3feb5e26916440f2              # double 0.85524299999999998
	.quad	0x3fc446f9b994e1a4              # double 0.158416
	.quad	0x3fbf52fc2656abde              # double 0.12236
	.quad	0x3fd348ba83f4eca7              # double 0.30131400000000003
	.quad	0x3fe382235b4edb2f              # double 0.60963599999999996
	.quad	0x3fdde7cd03537197              # double 0.46727299999999999
	.quad	0x3fe1a22b3892ee85              # double 0.55104600000000004
	.quad	0x3fc14794ea077037              # double 0.13499700000000001
	.quad	0x3f8ff583a53b8e4c              # double 0.015605000000000001
	.quad	0x3fe32cc4ef88b978              # double 0.59921500000000005
	.quad	0x3fec972474538ef3              # double 0.89344999999999997
	.quad	0x3fea4c76d117b528              # double 0.82183399999999995
	.quad	0x3fe7cee392e1ef74              # double 0.74400500000000003
	.quad	0x3fd18b9baa1511e0              # double 0.274146
	.quad	0x3f92e2328f9f44d4              # double 0.018440999999999999
	.quad	0x3fdc2ecf20642396              # double 0.440357
	.quad	0x3fe9a1cac083126f              # double 0.80100000000000005
	.quad	0x3fe81235f8099179              # double 0.75222299999999997
	.quad	0x3fd85b35b0bbf50e              # double 0.38056699999999999
	.quad	0x3fb201bc98a222d5              # double 0.070338999999999999
	.quad	0x3fe9ca925fe974a3              # double 0.80597799999999997
	.quad	0x3fe5a2f6a50d6b23              # double 0.67614300000000005
	.quad	0x3fc7fb15b573eab3              # double 0.18734999999999999
	.quad	0x3fedf674d1633483              # double 0.93633500000000003
	.quad	0x3fb3625204af9229              # double 0.075718999999999995
	.quad	0x3fc51d041cc532a5              # double 0.16494800000000001
	.quad	0x3fc60b5675579af2              # double 0.17222100000000001
	.quad	0x3fd7413122b7baed              # double 0.36335400000000001
	.quad	0x3fccc4e7253da72a              # double 0.22475899999999999
	.quad	0x3f9e0b4e11dbca97              # double 0.029340000000000001
	.quad	0x3fc87d0aed99cbef              # double 0.19131600000000001
	.quad	0x3fe2286b59146e4c              # double 0.56743399999999999
	.quad	0x3feb29cdc443914f              # double 0.84885299999999997
	.quad	0x3f74eb13dfb0d520              # double 0.0051070000000000004
	.quad	0x3fe6cd31769a9110              # double 0.71254799999999996
	.quad	0x3feb470c996b7671              # double 0.85242300000000004
	.quad	0x3fed1049235f8099              # double 0.90823799999999999
	.quad	0x3fc9e4712e40852b              # double 0.20228399999999999
	.quad	0x3fe384ab606b7aa2              # double 0.60994499999999996
	.quad	0x3fd79e9d0e991ff7              # double 0.369056
	.quad	0x3fdda098915bdd76              # double 0.46292699999999998
	.quad	0x3fec361565c2d278              # double 0.881602
	.quad	0x3fe6d2c59fb1e18f              # double 0.713229
	.quad	0x3fa455219a847b24              # double 0.039711999999999997
	.quad	0x3fc15885d31337eb              # double 0.135514
	.quad	0x3fc90b8cfbfc6541              # double 0.19566500000000001
	.quad	0x3fd151fc4c165908              # double 0.27062900000000001
	.quad	0x3fb0f36694898f60              # double 0.066213999999999995
	.quad	0x3fbeff7dfa00e27e              # double 0.121086
	.quad	0x3fec85e3da2f8bdf              # double 0.89134400000000003
	.quad	0x3fe129cfdd228566              # double 0.536354
	.quad	0x3fc800b029281776              # double 0.18752099999999999
	.quad	0x3fda5d13d74d594f              # double 0.41193099999999999
	.quad	0x3fe9602c9081c2e3              # double 0.79298999999999997
	.quad	0x3fc4c9c0a8d21bc1              # double 0.162407
	.quad	0x3fc6395810624dd3              # double 0.173625
	.quad	0x3fd83b8e4b87bdcf              # double 0.378635
	.quad	0x3fc38d477bbf93ff              # double 0.152749
	.quad	0x3fd9274e22a2c237              # double 0.39302399999999998
	.quad	0x3fdd57bc7f77af64              # double 0.45848
	.quad	0x3fd7c70c996b7671              # double 0.37152400000000002
	.quad	0x3feb4ef0281ba7fc              # double 0.85338599999999997
	.quad	0x3fb0b9dc2f405f6c              # double 0.065336000000000005
	.quad	0x3fe720f6f08cc576              # double 0.72277400000000003
	.quad	0x3fd562413db7f173              # double 0.33412199999999997
	.quad	0x3fd20b1bbcf4e875              # double 0.28192800000000001
	.quad	0x3fe8994e1a3f4667              # double 0.76871400000000001
	.quad	0x3fd488333fc86cec              # double 0.32081300000000001
	.quad	0x3fd31ada76d97b31              # double 0.298514
	.quad	0x3fc2a0a958537e2c              # double 0.14552799999999999
	.quad	0x3fd13dff3f0fe048              # double 0.26940900000000001
	.quad	0x3febae642bf9830e              # double 0.86503799999999997
	.quad	0x3feab02b40f66a55              # double 0.834005
	.quad	0x3feaf45e0b4e11dc              # double 0.84233000000000002
	.quad	0x3fe4250b524399b3              # double 0.62952200000000003
	.quad	0x3fd87f1737542a24              # double 0.38275700000000001
	.quad	0x3fe55425f202107b              # double 0.66652199999999995
	.quad	0x3fe05cb35f3d7d39              # double 0.51131599999999999
	.quad	0x3fe70a82a5614df9              # double 0.72003300000000003
	.quad	0x3fe68e7ddca4b125              # double 0.70489400000000002
	.quad	0x3fe44bc48f10a99b              # double 0.63424899999999995
	.quad	0x3febb30728e92d56              # double 0.86560400000000004
	.quad	0x3fea485c24c404a7              # double 0.82133299999999998
	.quad	0x3fb7e5c91d14e3bd              # double 0.093350000000000002
	.quad	0x3fe318bf7f06705d              # double 0.59677100000000005
	.quad	0x3fa4bb5e0f7fcfc4              # double 0.040492
	.quad	0x3fd60589acbc8c0d              # double 0.344088
	.quad	0x3fdcb990afe60c39              # double 0.448826
	.quad	0x3fa29691a75cd0bb              # double 0.036304999999999997
	.quad	0x3fd75b5b70691ea8              # double 0.36495100000000003
	.quad	0x3f5f212d77318fc5              # double 0.0019
	.quad	0x3fef33b107746888              # double 0.97506000000000003
	.quad	0x3fe9d70a3d70a3d7              # double 0.8075
	.quad	0x3fe93137b07075b4              # double 0.78725800000000001
	.quad	0x3fdd4b7f5a5332ad              # double 0.457733
	.quad	0x3fe66e9ff0cbaf96              # double 0.70100399999999996
	.quad	0x3fd3f9c62a1b5c7d              # double 0.31212000000000001
	.quad	0x3fe4199dcb5781c7              # double 0.62812699999999999
	.quad	0x3fe65e28aa433509              # double 0.698994
	.quad	0x3fd0d20296b3354c              # double 0.262818
	.quad	0x3fe8f1f9acffa7eb              # double 0.77953799999999995
	.quad	0x3fd20474d9c6b053              # double 0.28152199999999999
	.quad	0x3fc156c93a711516              # double 0.135461
	.quad	0x3fd01dc50ce4ead1              # double 0.25181700000000001
	.quad	0x3fb4625e99e94ab2              # double 0.079626000000000002
	.quad	0x3feb6b69db65ecc4              # double 0.85686200000000001
	.quad	0x3fe773061c79b34a              # double 0.73279099999999997
	.quad	0x3fd22cdc011d3672              # double 0.28398800000000002
	.quad	0x3feac1e14bdfd263              # double 0.83616699999999999
	.quad	0x3fe60780fdc1615f              # double 0.68841600000000003
	.quad	0x3fd36fa3fcc9ea9a              # double 0.30368899999999999
	.quad	0x3fd6a8eb463497b7              # double 0.35405999999999999
	.quad	0x3fe1b87bdcf0307f              # double 0.55376999999999998
	.quad	0x3fc8ef4e0114d2f6              # double 0.194803
	.quad	0x3fcc11a975afaf86              # double 0.21928900000000001
	.quad	0x3fee5ccea28fe261              # double 0.94882900000000003
	.quad	0x3fec4bf6e3f78bbd              # double 0.88427299999999998
	.quad	0x3fe5e490a350d280              # double 0.68415099999999995
	.quad	0x3fb2f8bdec5f394b              # double 0.074107999999999993
	.quad	0x3fe0d2ce032db1ea              # double 0.52573300000000001
	.quad	0x3fbed2fe3f359ff5              # double 0.120407
	.quad	0x3fee0e2c12ad81ae              # double 0.93923000000000001
	.quad	0x3fe64046412cf0fa              # double 0.69534600000000002
	.quad	0x3fdb71476af89c5e              # double 0.42878899999999998
	.quad	0x3fd37168f8e7ddca              # double 0.30379699999999998
	.quad	0x3fdcbc7f77af6406              # double 0.44900499999999999
	.quad	0x3fdd41a6937d1fe6              # double 0.45713199999999998
	.quad	0x3fe661c36976bc1f              # double 0.699434
	.quad	0x3fd756ffc115df65              # double 0.36468499999999998
	.quad	0x3fd8266fd651b0cd              # double 0.37734600000000001
	.quad	0x3fe2e7a311e85fd0              # double 0.59077599999999997
	.quad	0x3fe461869835158c              # double 0.63690500000000005
	.quad	0x3fc350d2806af46b              # double 0.15090400000000001
	.quad	0x3fee7774aba38759              # double 0.95208199999999998
	.quad	0x3fe85612c6ac215c              # double 0.76050700000000004
	.quad	0x3fd5ba3ca7503b82              # double 0.33949200000000002
	.quad	0x3fda5ddd2ae8e1d6              # double 0.41197899999999998
	.quad	0x3fd87b5f1bef49cf              # double 0.38252999999999998
	.quad	0x3fe35b09a671ef31              # double 0.60486300000000004
	.quad	0x3fb8655193708aad              # double 0.095296000000000006
	.quad	0x3fd6ef1fddebd902              # double 0.35834500000000002
	.quad	0x3fe6dc1c6088d6d4              # double 0.71436900000000003
	.quad	0x3fda2b12d3415b14              # double 0.40887899999999999
	.quad	0x3fd2a17f4128bf3c              # double 0.291107
	.quad	0x3feaf36ac647778e              # double 0.84221400000000002
	.quad	0x3fd81dbca9691a76              # double 0.37681500000000001
	.quad	0x3fddcc89b0ee49f5              # double 0.465609
	.quad	0x3fe8973fb7a5f41b              # double 0.76846300000000001
	.quad	0x3fe519a847b24639              # double 0.65938200000000002
	.quad	0x3feb4cf0739b024f              # double 0.85314199999999996
	.quad	0x3fb34aec8d5c7475              # double 0.075361999999999998
	.quad	0x3feca9da597d49d8              # double 0.89573400000000003
	.quad	0x3fe80ba83f4eca68              # double 0.75142299999999995
	.quad	0x3fecb6d00b45ae60              # double 0.897316
	.quad	0x3fc3807789a45910              # double 0.15235799999999999
	.quad	0x3fd2663c74fb54a0              # double 0.28749000000000002
	.quad	0x3fcd9a62ed352221              # double 0.23127400000000001
	.quad	0x3feb3bf50e347629              # double 0.85106899999999996
	.quad	0x3fbcd8ba40d90e24              # double 0.112682
	.quad	0x3fe1c39de481f538              # double 0.55512899999999998
	.quad	0x3fe0fba450acc0be              # double 0.53071800000000002
	.quad	0x3fb851654d61b2a2              # double 0.094991999999999993
	.quad	0x3fd836a400fba882              # double 0.37833499999999998
	.quad	0x3fbec710cb295e9e              # double 0.120225
	.quad	0x3fe30abb44e50c5f              # double 0.59506000000000003
	.quad	0x3fc1ab4b72c5197a              # double 0.13804
	.quad	0x3fec6f826edaa92e              # double 0.88861199999999996
	.quad	0x3fc70e3476295209              # double 0.180121
	.quad	0x3fe5b68cef672b88              # double 0.67853399999999997
	.quad	0x3fd6a222d5171e2a              # double 0.35364600000000002
	.quad	0x3fe8a9478c868ba0              # double 0.77066400000000001
	.quad	0x3fe965d3996fa82f              # double 0.79368000000000005
	.quad	0x3f944028e4fb97bb              # double 0.019775999999999998
	.quad	0x3fd83504c48adeec              # double 0.37823600000000002
	.quad	0x3fe06e7e62dc6e2b              # double 0.51348800000000006
	.quad	0x3fc321ccd9620685              # double 0.14946899999999999
	.quad	0x3fce7f6f4be835df              # double 0.238264
	.quad	0x3fe8ae1ef73c0c20              # double 0.77125500000000002
	.quad	0x3fdcbdbe3c105187              # double 0.44908100000000001
	.quad	0x3fc9c98a222d5172              # double 0.201463
	.quad	0x3fe76da87a072d1b              # double 0.73213600000000001
	.quad	0x3fc02014727dcbde              # double 0.12597900000000001
	.quad	0x3febbb98c7e28241              # double 0.86665000000000003
	.quad	0x3feb5579af1886e0              # double 0.85418400000000005
	.quad	0x3fd4cc70867ad8e4              # double 0.32497799999999999
	.quad	0x3fe3630ec3116228              # double 0.60584199999999999
	.quad	0x3fc715ce9e5e2479              # double 0.18035300000000001
	.quad	0x3febe8d759ee88df              # double 0.87217299999999998
	.quad	0x3fed9b79d909f1f1              # double 0.92522899999999997
	.quad	0x3fe1f168f8e7ddca              # double 0.56071899999999997
	.quad	0x3fe0ba6aca793576              # double 0.522756
	.quad	0x3fd9eaaf35e310dc              # double 0.404949
	.quad	0x3fdb02ea960b6fa0              # double 0.42205300000000001
	.quad	0x3fcc675147f13059              # double 0.22190299999999999
	.quad	0x3fec5041cc532a49              # double 0.88479699999999994
	.quad	0x3fd3594af4f0d845              # double 0.30232500000000001
	.quad	0x3fd58f96e158750c              # double 0.33688899999999999
	.quad	0x3f230164840e171a              # double 1.45E-4
	.quad	0x3fc63a6ce358298d              # double 0.17365800000000001
	.quad	0x3fdeac57e23f24d9              # double 0.479269
	.quad	0x3fe489e12a51e322              # double 0.64183100000000004
	.quad	0x3fc6cebbba55d1c4              # double 0.17818400000000001
	.quad	0x3fc5d45a5fc7e6b4              # double 0.170543
	.quad	0x3fca28d434a01abd              # double 0.204371
	.quad	0x3fef0bc59b8023a7              # double 0.97018700000000002
	.quad	0x3fc0aa6d26740810              # double 0.13020100000000001
	.quad	0x3fe18ad8a116659d              # double 0.54819899999999999
	.quad	0x3feca69df97aaac1              # double 0.895339
	.quad	0x3feaae2541d8e864              # double 0.83375799999999999
	.quad	0x3fe5a68b19a415f4              # double 0.67657999999999996
	.quad	0x3fcf9096bb98c7e3              # double 0.24660000000000001
	.quad	0x3fd7a2877ee4e26d              # double 0.36929499999999998
	.quad	0x3fddc45cbbc2b94e              # double 0.46511000000000002
	.quad	0x3f80cbaf965b20b8              # double 0.0082009999999999999
	.quad	0x3fd1d72367e414e8              # double 0.278756
	.quad	0x3fe789246bf01323              # double 0.73549100000000001
	.quad	0x3fe11a52263d816b              # double 0.53446300000000002
	.quad	0x3fec46de76427c7c              # double 0.88365099999999996
	.quad	0x3fe4b9496249a134              # double 0.64761800000000003
	.quad	0x3fcb9fa11a975afb              # double 0.215809
	.quad	0x3fd8886594af4f0e              # double 0.38332500000000003
	.quad	0x3fea702e6644d877              # double 0.82619399999999998
	.quad	0x3fd49d27c3936827              # double 0.32209199999999999
	.quad	0x3fe1afc47e49b1fb              # double 0.55270600000000003
	.quad	0x3fe5528ae74f2f12              # double 0.66632599999999997
	.quad	0x3fd96c3760bf5d79              # double 0.39723000000000003
	.quad	0x3fe7ed6777079e5a              # double 0.74773000000000001
	.quad	0x3fe10b1572580c31              # double 0.53260300000000005
	.quad	0x3fdb2c493426783a              # double 0.42457800000000001
	.quad	0x3fc481908e581cf8              # double 0.16020400000000001
	.quad	0x3fdab96f21f6cacd              # double 0.41756799999999999
	.quad	0x3fee90880d801b43              # double 0.95514299999999996
	.quad	0x3fd26277c45cbbc3              # double 0.28726000000000002
	.quad	0x3fdbcf63800218df              # double 0.434533
	.quad	0x3fe7ef7e3d1cc101              # double 0.74798500000000001
	.quad	0x3fdc2263d816aceb              # double 0.43959900000000002
	.quad	0x3fe637c1376d5497              # double 0.69430599999999998
	.quad	0x3fd2bbd3804534bd              # double 0.29271399999999997
	.quad	0x3feb14a2b9d3cbc5              # double 0.84626900000000005
	.quad	0x3f8bacb4289118c2              # double 0.013513000000000001
	.quad	0x3fe85b317efe0ce1              # double 0.76113200000000003
	.quad	0x3f8e3c105186db51              # double 0.014763
	.quad	0x3fee8270f3882279              # double 0.95342300000000002
	.quad	0x3fedf8b3700474da              # double 0.93660900000000002
	.quad	0x3fe8111f0c34c1a9              # double 0.75209000000000004
	.quad	0x3feac44bf4cb1898              # double 0.83646200000000004
	.quad	0x3fbdb35b0bbf50e3              # double 0.116018
	.quad	0x3fe1a53111f0c34c              # double 0.55141499999999999
	.quad	0x3fd7012dfd694ccb              # double 0.35944700000000002
	.quad	0x3feb75ddd2ae8e1d              # double 0.85813799999999996
	.quad	0x3fd2a6bd6e8af816              # double 0.29142699999999999
	.quad	0x3fd75c24c404a72f              # double 0.36499900000000002
	.quad	0x3fd1b86f47b677f7              # double 0.27688200000000002
	.quad	0x3fbbc792d1287c20              # double 0.108514
	.quad	0x3fd1806290eed02d              # double 0.27346100000000001
	.quad	0x3fec3bf0dc768dfc              # double 0.88231700000000001
	.quad	0x3fe4778359bc33f8              # double 0.63958899999999996
	.quad	0x3fe1731098d477bc              # double 0.545296
	.quad	0x3fcb21d53cddd6e0              # double 0.21196999999999999
	.quad	0x3fe33267c6b8b695              # double 0.59990299999999996
	.quad	0x3fcb6b11c6d1e109              # double 0.21420500000000001
	.quad	0x3fc854477ff151e7              # double 0.19007199999999999
	.quad	0x3fc4c38f36694899              # double 0.162218
	.quad	0x3fed52c7b890d5a6              # double 0.91635500000000003
	.quad	0x3fb940dd3fe1975f              # double 0.098645999999999998
	.quad	0x3fe0db4edb2f661f              # double 0.52677099999999999
	.quad	0x3feddca29845dc83              # double 0.93318299999999998
	.quad	0x3fe2033a4723ab00              # double 0.56289400000000001
	.quad	0x3fe356eefa1e3eaf              # double 0.60436199999999995
	.quad	0x3feec10f94c87981              # double 0.961067
	.quad	0x3fde9b34a44c7b03              # double 0.47822300000000001
	.quad	0x3fee5b877ab32485              # double 0.94867299999999999
	.quad	0x3fed1b77c02afddb              # double 0.90960300000000005
	.quad	0x3fb35696e58a32f4              # double 0.075539999999999996
	.quad	0x3fcedf2ecf206424              # double 0.24118600000000001
	.quad	0x3fba8405b39e279e              # double 0.103577
	.quad	0x3fe44d9e83e425af              # double 0.63447500000000001
	.quad	0x3fef952f3c2dadb8              # double 0.98696099999999997
	.quad	0x3fae605ee568a505              # double 0.059329
	.quad	0x3fea3e61cffeb075              # double 0.82011500000000004
	.quad	0x3fe25d441355475a              # double 0.57388499999999998
	.quad	0x3fef93d5347a5b10              # double 0.98679600000000001
	.quad	0x3fc214f0520d130e              # double 0.141264
	.quad	0x3fe9d976ff3ade22              # double 0.80779599999999996
	.quad	0x3fd1c729f59ccfaf              # double 0.277781
	.quad	0x3f88c111ada76d98              # double 0.012087000000000001
	.quad	0x3fde4c37e6f71a7e              # double 0.47340199999999999
	.quad	0x3fe2489d27c39368              # double 0.57136399999999998
	.quad	0x3fa634117f84449e              # double 0.043366000000000002
	.quad	0x3fd3759685122318              # double 0.30405199999999999
	.quad	0x3fdfb341e14bdfd2              # double 0.49531599999999998
	.quad	0x3fd522e5de15ca6d              # double 0.33025500000000002
	.quad	0x3fe223ee1bd1ed9e              # double 0.566886
	.quad	0x3fac845132f87ad1              # double 0.055697000000000003
	.quad	0x3fbc420f6f08cc57              # double 0.110383
	.quad	0x3fd13ae685db76b4              # double 0.26922000000000001
	.quad	0x3feea14ad362e903              # double 0.95718899999999996
	.quad	0x3fd5211cb039ef0f              # double 0.330146
	.quad	0x3fcf980f55de58e6              # double 0.24682799999999999
	.quad	0x3fdcea077036c9c1              # double 0.45178400000000002
	.quad	0x3fedcb295e9e1b09              # double 0.93105000000000004
	.quad	0x3fcaba8c586876e2              # double 0.208818
	.quad	0x3fda34091c087443              # double 0.40942600000000001
	.quad	0x3fe83b688bda9436              # double 0.75725200000000004
	.quad	0x3feba7243137b070              # double 0.86415299999999995
	.quad	0x3fd1b96f21f6cacd              # double 0.27694299999999999
	.quad	0x3fdfc8366516db0e              # double 0.49659500000000001
	.quad	0x3fe20bc7b45f17be              # double 0.56393800000000005
	.quad	0x3fe47240fa9c12f1              # double 0.63894700000000004
	.quad	0x3fe880cf9e3864cb              # double 0.76572399999999996
	.quad	0x3fddd5a5b9628cbd              # double 0.466165
	.quad	0x3fdcff7596851223              # double 0.45309199999999999
	.quad	0x3fe5e92f6e82949a              # double 0.68471499999999996
	.quad	0x3feb7694467381d8              # double 0.85822500000000002
	.quad	0x3faffeb074a771c9              # double 0.062489999999999997
	.quad	0x3fb31e4b44a1f080              # double 0.074680999999999997
	.quad	0x3fe907746887a8d6              # double 0.78215999999999997
	.quad	0x3fdce6601bc98a22              # double 0.45156099999999999
	.quad	0x3fb59f90539fba45              # double 0.084465999999999999
	.quad	0x3fc2048e043a2164              # double 0.140764
	.quad	0x3fd5079e59f2ba9d              # double 0.32858999999999999
	.quad	0x3fcf47cfa26a22b4              # double 0.24437900000000001
	.quad	0x3fcca8b08dd1e53b              # double 0.22389800000000001
	.quad	0x3fc6aa9f7b5aea31              # double 0.17708199999999999
	.quad	0x3fe23e7f2c3009b3              # double 0.570129
	.quad	0x3fe0bd72bcb5fe54              # double 0.52312599999999998
	.quad	0x3fe4798958d9b5e9              # double 0.63983599999999996
	.quad	0x3fec38c5436b8f9b              # double 0.88192999999999999
	.quad	0x3fd7a8bd230b9dc3              # double 0.369674
	.quad	0x3fd172ffd1dcd706              # double 0.272644
	.quad	0x3fe04a38327674d1              # double 0.50905999999999996
	.quad	0x3fe8ab649d388a8b              # double 0.770922
	.quad	0x3fb1e321a2e7f6f5              # double 0.069872000000000004
	.quad	0x3f4ab4b72c5197a2              # double 8.1499999999999997E-4
	.quad	0x3fbb0eb24a6a875d              # double 0.105693
	.quad	0x3fef2d72ffd1dcd7              # double 0.97429799999999999
	.quad	0x3fd61172ef0ae536              # double 0.34481499999999998
	.quad	0x3fe7f8e1932d6ece              # double 0.74913099999999999
	.quad	0x3fcb78705425f202              # double 0.214613
	.quad	0x3fe4b74ff865d7cb              # double 0.64737699999999998
	.quad	0x3fe4a862f5989df1              # double 0.64555499999999999
	.quad	0x3fd257a786c22681              # double 0.28660000000000002
	.quad	0x3fea3f2f55582129              # double 0.82021299999999997
	.quad	0x3fe4deb7457c0b13              # double 0.65218699999999996
	.quad	0x3fe8035371971c11              # double 0.75040600000000002
	.quad	0x3fe44d466f5019f4              # double 0.63443300000000002
	.quad	0x3fc36b11c6d1e109              # double 0.15170500000000001
	.quad	0x3fe592d98bf7f067              # double 0.674176
	.quad	0x3fe9800218def417              # double 0.79687600000000003
	.quad	0x3fb2279dd3bafd97              # double 0.070916999999999994
	.quad	0x3fe948adeebb341e              # double 0.79012199999999999
	.quad	0x3fe0f1b4784230fd              # double 0.529505
	.quad	0x3fe8254823854046              # double 0.75455099999999997
	.quad	0x3fea73bea91d9b1b              # double 0.82662899999999995
	.quad	0x3fcb4690de093533              # double 0.213091
	.quad	0x3fcba36e2eb1c433              # double 0.21592500000000001
	.quad	0x3fe835c9e6687f45              # double 0.75656599999999996
	.quad	0x3fecb39e279dd3bb              # double 0.896926
	.quad	0x3fea09f623076c05              # double 0.81371599999999999
	.quad	0x3fdd312b1b36bd2b              # double 0.45612599999999998
	.quad	0x3fa761aa3f034b0e              # double 0.045666999999999999
	.quad	0x3fdfa8869c66d374              # double 0.49466100000000002
	.quad	0x3fea39b8887229e9              # double 0.819546
	.quad	0x3fe6f6534373f317              # double 0.71756900000000001
	.quad	0x3fe33d2d87f88766              # double 0.60121800000000003
	.quad	0x3feb318116ebd4d0              # double 0.84979300000000002
	.quad	0x3fe49244a6223e18              # double 0.64285499999999995
	.quad	0x3fdc9170d62bf120              # double 0.44637700000000002
	.quad	0x3fe5ba0620ab7132              # double 0.67895799999999995
	.quad	0x3fe9a60b2c83ec89              # double 0.80151899999999998
	.quad	0x3feb898b2e9ccb7d              # double 0.86053999999999997
	.quad	0x3fb84f6dfc5cdd51              # double 0.094962000000000005
	.quad	0x3fe5beea209aaa3b              # double 0.67955500000000002
	.quad	0x3fdc868b9fdbd2fa              # double 0.445712
	.quad	0x3fd84f4c6e6d9be5              # double 0.37984000000000001
	.quad	0x3fd6e5b8561d4307              # double 0.35777100000000001
	.quad	0x3fc5455a7d24180d              # double 0.16617899999999999
	.quad	0x3fed41376d549731              # double 0.914211
	.quad	0x3fd563c31df761cc              # double 0.33421400000000001
	.quad	0x3feb55eaee2003ac              # double 0.85423800000000005
	.quad	0x3fd9a90470a808c8              # double 0.40094099999999999
	.quad	0x3fe5a8c586876e1e              # double 0.67685200000000001
	.quad	0x3fdef9830e3cd9a5              # double 0.48397899999999999
	.quad	0x3fd278e1932d6ece              # double 0.288628
	.quad	0x3fcd8a86d71f3626              # double 0.23079
	.quad	0x3fd65cdd50a88f00              # double 0.34941800000000001
	.quad	0x3fe16004b7f5a533              # double 0.54297099999999998
	.quad	0x3fcd038e29f9ce8e              # double 0.22667100000000001
	.quad	0x3fc3b4c3c18b502b              # double 0.15395400000000001
	.quad	0x3fbcefaa4766c6de              # double 0.11303199999999999
	.quad	0x3fd1945308bb9064              # double 0.27467799999999998
	.quad	0x3feff46cb966be7b              # double 0.998587
	.quad	0x3fe001083dbc2331              # double 0.50012599999999996
	.quad	0x3fdbc5260f5e41d5              # double 0.43390800000000002
	.quad	0x3fe6b417ca2120e2              # double 0.709484
	.quad	0x3f9103c8e25c810a              # double 0.016615999999999999
	.quad	0x3faa7a63736cdf26              # double 0.051714999999999997
	.quad	0x3fd5aad601ffb481              # double 0.33855200000000002
	.quad	0x3fe8ab14ec204f2b              # double 0.77088400000000001
	.quad	0x3fb8f5903a7546d4              # double 0.097497
	.quad	0x3fee7f04577d9557              # double 0.95300499999999999
	.quad	0x3fe8774aba387592              # double 0.76456199999999996
	.quad	0x3fb5f5f0b28522ea              # double 0.085783999999999999
	.quad	0x3fe8b2d6ece13f4b              # double 0.77183100000000004
	.quad	0x3fec0ba83f4eca68              # double 0.87642299999999995
	.quad	0x3fd349774256bca5              # double 0.30135899999999999
	.quad	0x3fef48eabffcdab2              # double 0.97765100000000005
	.quad	0x3fe2da37ef5a964f              # double 0.58913800000000005
	.quad	0x3fd13cff64cf8d71              # double 0.26934799999999998
	.quad	0x3fe76e503fb37436              # double 0.73221599999999998
	.quad	0x3fc020685553ef6b              # double 0.12598899999999999
	.quad	0x3f8dc69f8c21e1d2              # double 0.014539
	.quad	0x3fedbf63c31df762              # double 0.92961300000000002
	.quad	0x3fc2aab8a5ce5b42              # double 0.14583499999999999
	.quad	0x3fd7aa326e115593              # double 0.36976300000000001
	.quad	0x3fcbf72f76e6106b              # double 0.21848100000000001
	.quad	0x3fe9328954a7f801              # double 0.78741899999999998
	.quad	0x3f96ebd4cfd08d4c              # double 0.022384000000000001
	.quad	0x3fde54690de09353              # double 0.47390199999999999
	.quad	0x3fdde675147f1306              # double 0.46719100000000002
	.quad	0x3fcb65dbfceb7889              # double 0.21404599999999999
	.quad	0x3fed03dff3f0fe04              # double 0.90672299999999994
	.quad	0x3fd7aa1511dffc54              # double 0.36975599999999997
	.quad	0x3fd6a26e5471715c              # double 0.35366399999999998
	.quad	0x3fb430e3cd9a5226              # double 0.078870999999999996
	.quad	0x3fdd6e7a311e85fd              # double 0.459868
	.quad	0x3f985e80bed740c4              # double 0.023798
	.quad	0x3fdda0f0a5efe932              # double 0.46294800000000003
	.quad	0x3fd5b784662bae04              # double 0.33932600000000002
	.quad	0x3fe660780fdc1616              # double 0.69927600000000001
	.quad	0x3feb2c1f42bb6673              # double 0.849136
	.quad	0x3fe42c9f2fdb8fde              # double 0.63044699999999998
	.quad	0x3fe9cccab3edd8b6              # double 0.80624899999999999
	.quad	0x3fe6f74aba387592              # double 0.71768699999999996
	.quad	0x3fefe5753a3ec02f              # double 0.99675999999999997
	.quad	0x3fc074c8ffb8b264              # double 0.12856400000000001
	.quad	0x3fd0e3ffef39085f              # double 0.26391599999999998
	.quad	0x3fd08b4bf8fcd680              # double 0.25850200000000001
	.quad	0x3fe38663c74fb54a              # double 0.610155
	.quad	0x3fe072a38b8ae31d              # double 0.51399399999999995
	.quad	0x3feeccb3a2595bbc              # double 0.96248800000000001
	.quad	0x3fc86eb0b7c3504c              # double 0.19087799999999999
	.quad	0x3fc3e1da7b0b3919              # double 0.15533
	.quad	0x3fe8c0dd3fe1975f              # double 0.77354299999999998
	.quad	0x3fe270068db8bac7              # double 0.57617499999999999
	.quad	0x3fd764020817fc76              # double 0.365479
	.quad	0x3fe4c3dccea28fe2              # double 0.64890899999999996
	.quad	0x3febcf3775b81301              # double 0.86904499999999996
	.quad	0x3fd725529fe004b8              # double 0.361653
	.quad	0x3fdc55cd91eeaa6d              # double 0.44273699999999999
	.quad	0x3fe5ef62f9ca5bd9              # double 0.68547199999999997
	.quad	0x3fd7fec99f1ae2da              # double 0.37492599999999998
	.quad	0x3fecb06e5cd4ed2d              # double 0.89653700000000003
	.quad	0x3fd38ee6b8305d96              # double 0.30559700000000001
	.quad	0x3fa9c12f09d8c6d6              # double 0.050301999999999999
	.quad	0x3fdebc2fc69728a6              # double 0.480236
	.quad	0x3fdf5b7cfe586013              # double 0.48995899999999998
	.quad	0x3fdd9d30270f3882              # double 0.46271899999999999
	.quad	0x3fc6e3369b9d7fd8              # double 0.178809
	.quad	0x3fa6ba6aca793576              # double 0.044391
	.quad	0x3fe658b3f63c31df              # double 0.69832799999999995
	.quad	0x3fe8a1a93293d103              # double 0.76973400000000003
	.quad	0x3fc822b3892ee84b              # double 0.188559
	.quad	0x3febca36199780bb              # double 0.86843400000000004
	.quad	0x3fd4c7abfb9bed31              # double 0.324687
	.quad	0x3fed5af8df7a4e7b              # double 0.91735500000000003
	.quad	0x3fd71d8a54823854              # double 0.361178
	.quad	0x3fe709eba6aca793              # double 0.71996099999999996
	.quad	0x3fe1e7924af0bf1a              # double 0.55951799999999996
	.quad	0x3fd70c0ad03d9a95              # double 0.36010999999999999
	.quad	0x3fd3a9de8b3b3205              # double 0.30724299999999999
	.quad	0x3fd5c8f75536933a              # double 0.340391
	.quad	0x3fec79dd3bafd977              # double 0.889876
	.quad	0x3fe72619da9c9928              # double 0.72340099999999996
	.quad	0x3fe2a2e3c536d656              # double 0.58238400000000001
	.quad	0x3fe2c0d0aaa7ded7              # double 0.58603700000000003
	.quad	0x3fcd8793dd97f62b              # double 0.23069999999999999
	.quad	0x3feac12f09d8c6d6              # double 0.83608199999999999
	.quad	0x3fed651d25aab474              # double 0.91859299999999999
	.quad	0x3fe62a454de7ea60              # double 0.69266000000000005
	.quad	0x3fee06705c896dd2              # double 0.93828599999999995
	.quad	0x3fed3d46b26bf877              # double 0.91373000000000004
	.quad	0x3f914b599aa60914              # double 0.016889000000000001
	.quad	0x3fd4d2b2bfdb4cc2              # double 0.32535999999999998
	.quad	0x3fcfdbb16c1e364c              # double 0.248892
	.quad	0x3fc52ccf6be37de9              # double 0.16542999999999999
	.quad	0x3fe9ca90470a808d              # double 0.80597700000000005
	.quad	0x3fe72450acc0bdcb              # double 0.72318300000000002
	.quad	0x3feaeed45e9185cf              # double 0.84165400000000001
	.quad	0x3fd5bc621b7e0ac8              # double 0.33962300000000001
	.quad	0x3fdd1cef240fa9c1              # double 0.45489099999999999
	.quad	0x3fad31fcd24e160e              # double 0.057022000000000003
	.quad	0x3fea0ce2d1f1cfbc              # double 0.81407300000000004
	.quad	0x3fe291105e1c1509              # double 0.58020799999999995
	.quad	0x3fdc57f737da61e1              # double 0.44286900000000001
	.quad	0x3fead0d2806af46b              # double 0.83799100000000004
	.quad	0x3fc5105e1c15097d              # double 0.16456200000000001
	.quad	0x3feb746cb966be7b              # double 0.857962
	.quad	0x3feeee0d23d4f15e              # double 0.96655899999999995
	.quad	0x3febc241c3efae79              # double 0.86746299999999998
	.quad	0x3fc8b1c432ca57a8              # double 0.19292500000000001
	.quad	0x3feff125dd095af3              # double 0.99818700000000004
	.quad	0x3fcc28c36da87a07              # double 0.219994
	.quad	0x3fd7b73d188f42ff              # double 0.37055900000000003
	.quad	0x3fe2dea033e78e19              # double 0.58967599999999998
	.quad	0x3fed2c01e68a0d35              # double 0.91162200000000004
	.quad	0x3fdf9802c0a4a05e              # double 0.49365300000000001
	.quad	0x3f9f761cbccf28c8              # double 0.030724000000000001
	.quad	0x3fc5564302b40f67              # double 0.16669500000000001
	.quad	0x3feada5fc7e6b3ff              # double 0.83915700000000004
	.quad	0x3fe5198288051c9f              # double 0.65936399999999995
	.quad	0x3f93ad9f0a1be2b5              # double 0.019217000000000001
	.quad	0x3fafc43b2dd377e2              # double 0.062044000000000002
	.quad	0x3fd12ff8ec0f8833              # double 0.26855299999999999
	.quad	0x3fd96e008e9b38d6              # double 0.397339
	.quad	0x3f82bcb5fe542e55              # double 0.0091489999999999991
	.quad	0x3fe57ea5f84cad58              # double 0.67171000000000003
	.quad	0x3fdf5b5b70691ea8              # double 0.48995100000000003
	.quad	0x3fe26aa087ca643d              # double 0.57551600000000003
	.quad	0x3fdff43419e30015              # double 0.49928
	.quad	0x3fedcbd556084a51              # double 0.93113199999999996
	.quad	0x3fde00192a737111              # double 0.46875600000000001
	.quad	0x3fdd9717df19d66b              # double 0.46234700000000001
	.quad	0x3fc8070b8cfbfc65              # double 0.18771499999999999
	.quad	0x3fedb68ad6883772              # double 0.92853300000000005
	.quad	0x3fea169e3c968944              # double 0.81526100000000001
	.quad	0x3feb5da272862f5a              # double 0.85518000000000005
	.quad	0x3fe2137b07075b3e              # double 0.56487799999999999
	.quad	0x3fdcce8533b10774              # double 0.45010499999999998
	.quad	0x3fa57a13c254a3c6              # double 0.041946999999999998
	.quad	0x3fe94f0d844d013b              # double 0.79090000000000005
	.quad	0x3fd0deca25529fe0              # double 0.263598
	.quad	0x3fdfd1bf7ad4b274              # double 0.49717699999999998
	.quad	0x3fd54d5d80e496ee              # double 0.332847
	.quad	0x3fe04f95d4e8fb01              # double 0.50971500000000003
	.quad	0x3fe68c4588a04d12              # double 0.704623
	.quad	0x3fe95ebb7739f341              # double 0.79281400000000002
	.quad	0x3feeb23dd54da4cf              # double 0.95925800000000005
	.quad	0x3fd10913a4f8726d              # double 0.266179
	.quad	0x3fcf1f36262cba73              # double 0.24314
	.quad	0x3f8c02afdda8bd23              # double 0.013677
	.quad	0x3fa12146a1a500d6              # double 0.033457000000000001
	.quad	0x3febde76427c7c52              # double 0.87090599999999996
	.quad	0x3fcc0c308feac42f              # double 0.21912200000000001
	.quad	0x3fc74080f98fa377              # double 0.18165600000000001
	.quad	0x3fe20beb5b2d4d40              # double 0.56395499999999998
	.quad	0x3fda777079e59f2c              # double 0.41354000000000002
	.quad	0x3fe2a90cd423d923              # double 0.58313599999999999
	.quad	0x3fba4d5d80e496ee              # double 0.102743
	.quad	0x3feb5742dcf4623d              # double 0.85440199999999999
	.quad	0x3fd36d15ad106ee3              # double 0.303533
	.quad	0x3fe1eefc371da37f              # double 0.560423
	.quad	0x3fba03925bb7b6bb              # double 0.101617
	.quad	0x3fe6893532e7b3d9              # double 0.70424900000000001
	.quad	0x3fe8354c122749f1              # double 0.75650600000000001
	.quad	0x3fb068db8bac710d              # double 0.064100000000000004
	.quad	0x3fe59fe21d96e9bc              # double 0.67576700000000001
	.quad	0x3fec6d3b6cbd987c              # double 0.88833399999999995
	.quad	0x3fec0d64d7f0ed3e              # double 0.87663500000000005
	.quad	0x3fc2de76427c7c52              # double 0.14741399999999999
	.quad	0x3fd24b87bdcf0308              # double 0.28586
	.quad	0x3fe21a11233df2aa              # double 0.56568200000000002
	.quad	0x3fe9fa311e85fd05              # double 0.81179100000000004
	.quad	0x3fe1c575c0767d35              # double 0.55535400000000001
	.quad	0x3fe553cddd6e04c0              # double 0.66647999999999996
	.quad	0x3fde344c37e6f71a              # double 0.47194199999999997
	.quad	0x3febc141e9af5ba3              # double 0.86734100000000003
	.quad	0x3fa07229e90795f6              # double 0.032120999999999997
	.quad	0x3fb6b51bd61f5be6              # double 0.088701000000000002
	.quad	0x3fe3ed3f9e7b80aa              # double 0.62271100000000001
	.quad	0x3fe1f18655193709              # double 0.56073300000000004
	.quad	0x3fe2685122318330              # double 0.57523400000000002
	.quad	0x3f8c200c0f01fb83              # double 0.013733
	.quad	0x3fe44204f2ae07e6              # double 0.63305900000000004
	.quad	0x3fe15ee99a62ed35              # double 0.54283599999999999
	.quad	0x3fe9da6a44417870              # double 0.80791199999999996
	.quad	0x3fdc003686a4ca4f              # double 0.43751299999999999
	.quad	0x3fc4a6fc58ab92c0              # double 0.16134599999999999
	.quad	0x3fe9e785b5b70692              # double 0.80951200000000001
	.quad	0x3fe01f0c34c1a8ac              # double 0.50378999999999996
	.quad	0x3feead3c792d1288              # double 0.95864700000000002
	.quad	0x3fccdfefbf401c50              # double 0.22558400000000001
	.quad	0x3fe94e7cd0353719              # double 0.79083099999999995
	.quad	0x3fe05753a3ec02f3              # double 0.51066
	.quad	0x3fcfbe33acd5b680              # double 0.24799199999999999
	.quad	0x3fe137d63022dd7b              # double 0.53806600000000004
	.quad	0x3fe6c76d117b5287              # double 0.71184400000000003
	.quad	0x3fd24649906cca2e              # double 0.28554000000000002
	.quad	0x3fd9c4c9c90c4dec              # double 0.40263599999999999
	.quad	0x3fe276598e10cf5b              # double 0.57694699999999999
	.quad	0x3fe69c2a02320968              # double 0.70656300000000005
	.quad	0x3fae994185058dde              # double 0.059762999999999997
	.quad	0x3fe9f4e65bea0ba2              # double 0.811145
	.quad	0x3fc75d9a0f0a5eff              # double 0.18254400000000001
	.quad	0x3fe432a8c9b84556              # double 0.63118399999999997
	.quad	0x3feb74aba3875925              # double 0.85799199999999998
	.quad	0x3f9a3e7d1351159c              # double 0.025628999999999999
	.quad	0x3fcb6b1a2a4db164              # double 0.21420600000000001
	.quad	0x3feeed6dc1a47a9e              # double 0.96648299999999998
	.quad	0x3fe41758e219652c              # double 0.62785000000000002
	.quad	0x3fee9ecd4aa10e02              # double 0.95688499999999999
	.quad	0x3fbd64e8b7e4de3c              # double 0.11482100000000001
	.quad	0x3fcf430f49491f2e              # double 0.24423400000000001
	.quad	0x3f920296b3354c12              # double 0.017587999999999999
	.quad	0x3fe1c230fcf80dc3              # double 0.55495499999999998
	.quad	0x3feeea832b990afe              # double 0.96612699999999996
	.quad	0x3fecba6698bb4d49              # double 0.89775400000000005
	.quad	0x3fed19fc2a8869c6              # double 0.90942199999999995
	.quad	0x3fd6f5dbb9cf9a07              # double 0.35875600000000002
	.quad	0x3fe3992641b328b7              # double 0.61244500000000002
	.quad	0x3f92af9a8cdea034              # double 0.018248
	.quad	0x3fe7615011904b3c              # double 0.73062899999999997
	.quad	0x3fb14488c60cbf2b              # double 0.067451999999999998
	.quad	0x3fd06e221c8a7a42              # double 0.25672200000000001
	.quad	0x3fd154f7a919695e              # double 0.27081100000000002
	.quad	0x3fde561d4306e5cd              # double 0.47400599999999998
	.quad	0x3fda86db50f40e5a              # double 0.41448099999999999
	.quad	0x3fecb6113404ea4b              # double 0.89722500000000005
	.quad	0x3fefaa433508f649              # double 0.98953400000000002
	.quad	0x3fd2d9945b6c3761              # double 0.29453000000000001
	.quad	0x3fda281344806291              # double 0.408696
	.quad	0x3fe797891e215337              # double 0.73724800000000001
	.quad	0x3fc71244a6223e18              # double 0.18024499999999999
	.quad	0x3fc7a89331a08bfc              # double 0.184832
	.quad	0x3feaefa1e3eaf683              # double 0.84175199999999994
	.quad	0x3fb47a7c9de05037              # double 0.079993999999999996
	.quad	0x3fd2ecfe9b7bf1e9              # double 0.29571500000000001
	.quad	0x3fc44102ff8ec0f9              # double 0.15823400000000001
	.quad	0x3fe7fbb9496249a1              # double 0.74947799999999998
	.quad	0x3fe9b152f3c2dadc              # double 0.80289600000000005
	.quad	0x3febbb4f61672325              # double 0.86661500000000002
	.quad	0x3f9160d887ebf22c              # double 0.016971
	.quad	0x3fd58509bf9c62a2              # double 0.33624500000000002
	.quad	0x3fee0943e1006078              # double 0.93863099999999999
	.quad	0x3fecaf0e0a84be40              # double 0.89636899999999997
	.quad	0x3fe0c9e01de26916              # double 0.52464299999999997
	.quad	0x3fe38a63305100a4              # double 0.61064300000000005
	.quad	0x3fd0e31d712a0ec7              # double 0.26386199999999999
	.quad	0x3fcd394b7b28954a              # double 0.22831099999999999
	.quad	0x3fd4ab474107314d              # double 0.32295400000000002
	.quad	0x3fe622877ee4e26d              # double 0.69171499999999997
	.quad	0x3fd3952d234eb9a1              # double 0.30597999999999997
	.quad	0x3fe228d21bc126a6              # double 0.56748299999999996
	.quad	0x3fc9d0c804102ff9              # double 0.201684
	.quad	0x3fdc102363b25700              # double 0.43848500000000001
	.quad	0x3fe1994185058dde              # double 0.54995799999999995
	.quad	0x3fc352977c88e79b              # double 0.15095800000000001
	.quad	0x3feff3bc903ea705              # double 0.99850300000000002
	.quad	0x3fd3990f301eabbd              # double 0.30621700000000002
	.quad	0x3fe4495bff04577e              # double 0.63395500000000005
	.quad	0x3fd8bd5992428d43              # double 0.38655699999999998
	.quad	0x3fd9926c7eae5bc8              # double 0.39956199999999997
	.quad	0x3fef00ae10492360              # double 0.96883300000000005
	.quad	0x3fc7bd61f5be5d9e              # double 0.18546699999999999
	.quad	0x3fc74b05b7cfe586              # double 0.181977
	.quad	0x3fd95425f202107b              # double 0.39576099999999997
	.quad	0x3fcba1f4b1ee2435              # double 0.21587999999999999
	.quad	0x3fb1083dbc23315d              # double 0.066531999999999994
	.quad	0x3fe1fa4c61d8622c              # double 0.56180399999999997
	.quad	0x3feeb5f1bef49cf5              # double 0.95970999999999995
	.quad	0x3fe11ab6d00b45ae              # double 0.53451099999999996
	.quad	0x3fe7d955714b9cb7              # double 0.74528000000000005
	.quad	0x3fee517e77d523b3              # double 0.94744799999999996
	.quad	0x3feb760bf5d78812              # double 0.85816000000000003
	.quad	0x3fad83a53b8e4b88              # double 0.057645000000000002
	.quad	0x3fe80f8c64fdb09a              # double 0.75189799999999996
	.quad	0x3fe511a975afaf86              # double 0.65840600000000005
	.quad	0x3fd4cf28c79f6662              # double 0.32514399999999999
	.quad	0x3fe9a28dc981beb2              # double 0.80109300000000006
	.quad	0x3fda16e371540032              # double 0.40764699999999998
	.quad	0x3fd7df6124074645              # double 0.37300899999999998
	.quad	0x3febff1b69121251              # double 0.87489099999999997
	.quad	0x3fd63836a832b991              # double 0.34718100000000002
	.quad	0x3fe71958969a0ad9              # double 0.72184400000000004
	.quad	0x3fec2a21a719b4dd              # double 0.88014300000000001
	.quad	0x3fea8b45ae5ffa3c              # double 0.82950100000000004
	.quad	0x3fe04e93e1c9b414              # double 0.50959200000000004
	.quad	0x3fe0a615a8deb0fb              # double 0.52027400000000001
	.quad	0x3fece7d34df04ddb              # double 0.90329899999999996
	.quad	0x3feb254e6e221c8a              # double 0.84830399999999995
	.quad	0x3fcb4a5df2239e6b              # double 0.21320700000000001
	.quad	0x3fec15d4e8fb00bd              # double 0.87766500000000003
	.quad	0x3fe749bc77143394              # double 0.72775100000000004
	.quad	0x3fdab3edd8b60f1b              # double 0.41723199999999999
	.quad	0x3fe520f4d7add15f              # double 0.660273
	.quad	0x3fe7749491f2dc2b              # double 0.73298099999999999
	.quad	0x3fc97c02afdda8bd              # double 0.199097
	.quad	0x3fe1a7c5ac471b48              # double 0.55173000000000005
	.quad	0x3fed23315d701d9f              # double 0.91054599999999997
	.quad	0x3fbc39abf3387161              # double 0.11025500000000001
	.quad	0x3feac06c00da1a93              # double 0.83598899999999998
	.quad	0x3fb19ce075f6fd22              # double 0.0688
	.quad	0x3fb374794ea07703              # double 0.075995999999999994
	.quad	0x3fedc25d074213a1              # double 0.92997600000000002
	.quad	0x3fe402c6ef3d3a1d              # double 0.62533899999999998
	.quad	0x3fb1e731d2e0e304              # double 0.069933999999999996
	.quad	0x3fd61782d38476f3              # double 0.34518500000000002
	.quad	0x3fef5b0142f61ed6              # double 0.97985900000000004
	.quad	0x3fe7c96ededaec4a              # double 0.74333899999999997
	.quad	0x3fbb2abef06b3786              # double 0.10612099999999999
	.quad	0x3fe279a06a6e32e4              # double 0.57734700000000005
	.quad	0x3fdfd71b0468448d              # double 0.497504
	.quad	0x3fe8e36f3b213e3e              # double 0.77776299999999998
	.quad	0x3fd7448cf7caa759              # double 0.36355900000000002
	.quad	0x3fab682730c67169              # double 0.053529
	.quad	0x3f96f587d6f97679              # double 0.022421
	.quad	0x3fecab734b51372a              # double 0.89592899999999998
	.quad	0x3fce24edf6124074              # double 0.23550199999999999
	.quad	0x3fea168f8e7ddca5              # double 0.81525400000000003
	.quad	0x3fe0ffa7eb6bf445              # double 0.53120800000000001
	.quad	0x3fe2f24fa8b4bf90              # double 0.59207900000000002
	.quad	0x3fe1aae6c8f75537              # double 0.55211200000000005
	.quad	0x3fe367253da72a7c              # double 0.60634100000000002
	.quad	0x3feb36d00b45ae60              # double 0.850441
	.quad	0x3fd33ef6b5d462c3              # double 0.30071799999999999
	.quad	0x3fef95dd4c76d118              # double 0.98704400000000003
	.quad	0x3fe61ae924f227d0              # double 0.69078499999999998
	.quad	0x3feda71bcdbbe015              # double 0.92664899999999994
	.quad	0x3fe7c4f5d35653ca              # double 0.74279300000000004
	.quad	0x3fcb532e7b3d8e00              # double 0.213476
	.quad	0x3fc03925bb7b6bb1              # double 0.126744
	.quad	0x3fe91f080303c07f              # double 0.78503800000000001
	.quad	0x3fe0e42bf9830e3d              # double 0.52785300000000002
	.quad	0x3fee87357e670e2c              # double 0.95400499999999999
	.quad	0x3fc7851eb851eb85              # double 0.18375
	.quad	0x3fbe9ea140570825              # double 0.11960800000000001
	.quad	0x3feac450268900c5              # double 0.83646399999999999
	.quad	0x3fe2419e30014f8b              # double 0.57050999999999996
	.quad	0x3fa68cac4b4d056c              # double 0.044041999999999998
	.quad	0x3fef1157abb8800f              # double 0.97086700000000003
	.quad	0x3fd5ab4fa48301a8              # double 0.33858100000000002
	.quad	0x3fd8df9bdc69f8c2              # double 0.38864799999999999
	.quad	0x3fe8b1df761cbccf              # double 0.77171299999999998
	.quad	0x3fddae5bc87db2b3              # double 0.46376699999999998
	.quad	0x3fe69a500d5e8d54              # double 0.70633699999999999
	.quad	0x3f79231c64ba94bc              # double 0.0061370000000000001
	.quad	0x3fe3d6605ee568a5              # double 0.619919
	.quad	0x3fe5fae3608d0892              # double 0.68687600000000004
	.quad	0x3fd99cfdd2285660              # double 0.40020699999999998
	.quad	0x3fec945308bb9064              # double 0.89310599999999995
	.quad	0x3fc61f53825e13b2              # double 0.17283100000000001
	.quad	0x3fe433a68b19a416              # double 0.63130500000000001
	.quad	0x3fb866c2acb85a4f              # double 0.095318
	.quad	0x3fce7c6b8b69552e              # double 0.23817199999999999
	.quad	0x3fc57e132b55ef20              # double 0.16791
	.quad	0x3feff29b280f12c2              # double 0.99836499999999995
	.quad	0x3fe1c957cd466f50              # double 0.55582799999999999
	.quad	0x3fe7061847f56217              # double 0.71949399999999997
	.quad	0x3fd7bd3c36113405              # double 0.370925
	.quad	0x3feeb9c51dabe271              # double 0.96017699999999994
	.quad	0x3fe3fc5692b3cc4b              # double 0.62455300000000002
	.quad	0x3fd8c1c1d6cf850e              # double 0.386826
	.quad	0x3fd7ff4ba51a005c              # double 0.37495699999999998
	.quad	0x3fb4bf2b239a38fc              # double 0.081042000000000003
	.quad	0x3fe29049235f8099              # double 0.58011299999999999
	.quad	0x3fe04182ecaeea64              # double 0.50799700000000003
	.quad	0x3fb3daf8df7a4e7b              # double 0.077560000000000004
	.quad	0x3fe27c914b167ec8              # double 0.57770600000000005
	.quad	0x3fe203e425aee632              # double 0.562975
	.quad	0x3fe22cba732df506              # double 0.56796000000000002
	.quad	0x3fd3e6d9be4cd749              # double 0.31096499999999999
	.quad	0x3fdeabc5154866a1              # double 0.47923399999999999
	.quad	0x3fee34ce3de6149c              # double 0.94394599999999995
	.quad	0x3fde940357a35504              # double 0.47778399999999999
	.quad	0x3fea4dbbe0157eed              # double 0.82198899999999997
	.quad	0x3fecd7cd466f501a              # double 0.90134300000000001
	.quad	0x3fd5aab8a5ce5b42              # double 0.33854499999999998
	.quad	0x3fd468f4b61fe21e              # double 0.31890600000000002
	.quad	0x3fedf944241c3efb              # double 0.93667800000000001
	.quad	0x3fd6ba3443d46b27              # double 0.35511500000000001
	.quad	0x3fabe468cac4b4d0              # double 0.054476999999999998
	.quad	0x3fea150dae3e6c4c              # double 0.81506999999999996
	.quad	0x3fd19e12a51e321a              # double 0.27527299999999999
	.quad	0x3fe864840e1719f8              # double 0.76227
	.quad	0x3feae73c4f3ba776              # double 0.840727
	.quad	0x3fdda597d49d7ba6              # double 0.46323199999999998
	.quad	0x3fe2de6ff7dfa00e              # double 0.58965299999999998
	.quad	0x3fec1eeaa6d26741              # double 0.87877400000000006
	.quad	0x3feb5eebb341e14c              # double 0.85533700000000001
	.quad	0x3fd433daf8df7a4e              # double 0.31566499999999997
	.quad	0x3fe1075b3e1437c5              # double 0.53214799999999995
	.quad	0x3fd992c8c5004fb1              # double 0.39958399999999999
	.quad	0x3fdfd71b0468448d              # double 0.497504
	.quad	0x3fe34a1272c94b38              # double 0.60279199999999999
	.quad	0x3fb5ef416bdb1a6d              # double 0.085681999999999994
	.quad	0x3fe4ee8af81626b3              # double 0.65411900000000001
	.quad	0x3fe389118c197e56              # double 0.61048199999999997
	.quad	0x3fd8ec679cc74b84              # double 0.38942900000000003
	.quad	0x3fe4549731098d47              # double 0.63532599999999995
	.quad	0x3fe1b4395810624e              # double 0.55325000000000002
	.quad	0x3fed3a365cb35f3d              # double 0.91335599999999995
	.quad	0x3fe62ff6d330941d              # double 0.69335500000000005
	.quad	0x3fe3b3aeee957471              # double 0.61568400000000001
	.quad	0x3fbfe5753a3ec02f              # double 0.124595
	.quad	0x3fd4221858bc59b8              # double 0.314581
	.quad	0x3feb5c96030c23fb              # double 0.85505200000000003
	.quad	0x3fceadb402d16b98              # double 0.239676
	.quad	0x3fe2becaab8a5ce6              # double 0.58579000000000003
	.quad	0x3fb29b5a63f9a49c              # double 0.072682999999999998
	.quad	0x3fe23b9cf9a06a6e              # double 0.56977699999999998
	.quad	0x3fe339085f4a1273              # double 0.60071200000000002
	.quad	0x3fc5e0bd44998d04              # double 0.17092099999999999
	.quad	0x3fe6a78af3e468cb              # double 0.70795200000000003
	.quad	0x3fe4734d6a161e4f              # double 0.63907499999999995
	.quad	0x3fb9b23dd54da4cf              # double 0.10037600000000001
	.quad	0x3fa6a033e78e1933              # double 0.044191000000000001
	.quad	0x3fe10df58c08b75f              # double 0.53295400000000004
	.quad	0x3fbad46f587d6f97              # double 0.10480399999999999
	.quad	0x3fee3c70c996b767              # double 0.944878
	.quad	0x3fef94e3bcd35a86              # double 0.98692500000000005
	.quad	0x3f904c8bc9cd3e0c              # double 0.015917000000000001
	.quad	0x3fdb52b4d8ba40d9              # double 0.426923
	.quad	0x3fed8257c914b168              # double 0.92216100000000001
	.quad	0x3fec8e453d20f2bf              # double 0.89236700000000002
	.quad	0x3feb357c4e2f37fc              # double 0.850279
	.quad	0x3fe6492ff4ba51a0              # double 0.696434
	.quad	0x3fc46c7eae5bc87e              # double 0.15956100000000001
	.quad	0x3fe44fd8f0c77dd8              # double 0.63474699999999995
	.quad	0x3fd6b3397dd00f77              # double 0.35468899999999998
	.quad	0x3fc129a1b9f98b72              # double 0.13408300000000001
	.quad	0x3f81697f1f9acffa              # double 0.0085019999999999991
	.quad	0x3feab4677b395c42              # double 0.83452199999999999
	.quad	0x3fe4382e44b6e936              # double 0.63185800000000003
	.quad	0x3fe3140bbb1f255f              # double 0.59619699999999998
	.quad	0x3fe2dd5b24e9c454              # double 0.58952099999999996
	.quad	0x3fea32bfdb4cc250              # double 0.81869499999999995
	.quad	0x3fea38583621fafd              # double 0.81937800000000005
	.quad	0x3fe4ad05f2884838              # double 0.64612099999999995
	.quad	0x3fd7573215fcc187              # double 0.36469699999999999
	.quad	0x3fccb1a2a4db163c              # double 0.22417100000000001
	.quad	0x3fe929e4d5d80e49              # double 0.78636399999999995
	.quad	0x3fef725a250f8402              # double 0.98270900000000005
	.quad	0x3fa0a04d12018a44              # double 0.032473000000000002
	.quad	0x3fed961e4f765fd9              # double 0.92457500000000004
	.quad	0x3fe3ade43ed959a3              # double 0.614977
	.quad	0x3fd0651b0ccbc05d              # double 0.25617099999999998
	.quad	0x3fe7d4738a3b57c5              # double 0.74468400000000001
	.quad	0x3fcd8904f6dfc5ce              # double 0.230744
	.quad	0x3fe481b866e43aa8              # double 0.64083500000000004
	.quad	0x3fdcf10a99b6f5cb              # double 0.452212
	.quad	0x3fe42df0d413122b              # double 0.63060799999999995
	.quad	0x3fe0f4aba3875925              # double 0.52986699999999998
	.quad	0x3f84e3bcd35a8588              # double 0.010200000000000001
	.quad	0x3fefed373affb04f              # double 0.99770700000000001
	.quad	0x3fca7f77af64063a              # double 0.207015
	.quad	0x3fee64d3bf2f5558              # double 0.94980799999999998
	.quad	0x3fd7f1f57b41bfbe              # double 0.374143
	.quad	0x3fed5aad601ffb48              # double 0.917319
	.quad	0x3fd711a543f1c758              # double 0.36045199999999999
	.quad	0x3fec985f06f69446              # double 0.89359999999999995
	.quad	0x3fe987c84b5dcc64              # double 0.797825
	.quad	0x3f8817b95a294142              # double 0.011764
	.quad	0x3fd36e696a26e547              # double 0.30361399999999999
	.quad	0x3feb955d5f56a7ad              # double 0.86198300000000005
	.quad	0x3fe98724b76f6d76              # double 0.79774699999999998
	.quad	0x3fd121709310129d              # double 0.26766600000000002
	.quad	0x3fd823d0bfa09460              # double 0.37718600000000002
	.quad	0x3f94e5d5b24e9c45              # double 0.020407999999999999
	.quad	0x3fd3d627bf61aa3f              # double 0.309946
	.quad	0x3fad2ce032db1e9f              # double 0.056982999999999999
	.quad	0x3fe4f9e7b80a9de9              # double 0.65550600000000003
	.quad	0x3fd2090f733a8a40              # double 0.28180300000000003
	.quad	0x3fc121dda059a73b              # double 0.13384599999999999
	.quad	0x3feca8bb0a2ca9ac              # double 0.89559699999999997
	.quad	0x3fcdf8b9baa1511e              # double 0.234153
	.quad	0x3fe83688bda9435b              # double 0.75665700000000002
	.quad	0x3fe8fa76534373f3              # double 0.78057399999999999
	.quad	0x3fe85bc87db2b346              # double 0.76120399999999999
	.quad	0x3fc1c5154866a11f              # double 0.13882700000000001
	.quad	0x3fefde1198aeb80f              # double 0.99585800000000002
	.quad	0x3fd726c7eae5bc88              # double 0.36174200000000001
	.quad	0x3fe005d0fa58f712              # double 0.50070999999999999
	.quad	0x3fec4a3400b88ca4              # double 0.88405800000000001
	.quad	0x3f99a6f826edaa93              # double 0.025051
	.quad	0x3fc9c304ccee5abc              # double 0.201264
	.quad	0x3fe02686e7e62dc7              # double 0.50470300000000001
	.quad	0x3fefaf2d7f950b95              # double 0.99013399999999995
	.quad	0x3feaa2c669057d18              # double 0.83237000000000005
	.quad	0x3fd603a322af5771              # double 0.343972
	.quad	0x3fe45c443914f484              # double 0.63626300000000002
	.quad	0x3feb3af965b20b80              # double 0.85094899999999996
	.quad	0x3fe80650e779207d              # double 0.75077099999999997
	.quad	0x3fe4beaf6837f7be              # double 0.64827699999999999
	.quad	0x3fef7112fd32c626              # double 0.98255300000000001
	.quad	0x3fdfd3d4280ae105              # double 0.49730400000000002
	.quad	0x3fe2f77d0f1f57b4              # double 0.59271099999999999
	.quad	0x3fa30164840e171a              # double 0.03712
	.quad	0x3fea0427418d690a              # double 0.81300700000000004
	.quad	0x3fe05757d5a9eb20              # double 0.51066199999999995
	.quad	0x3fdb83126e978d50              # double 0.42987500000000001
	.quad	0x3fd2a6bd6e8af816              # double 0.29142699999999999
	.quad	0x3fec574f722e1ac5              # double 0.88565799999999995
	.quad	0x3fd482a12f901084              # double 0.32047300000000001
	.quad	0x3feb77681669ced1              # double 0.85832600000000003
	.quad	0x3fe0dc13fd0d0679              # double 0.52686500000000003
	.quad	0x3fe5bcd35a858794              # double 0.67930000000000001
	.quad	0x3fa33acd5b6805a3              # double 0.037558000000000001
	.quad	0x3fd9e429e0a41a26              # double 0.40455099999999999
	.quad	0x3fce2b5a20ddc619              # double 0.23569799999999999
	.quad	0x3fe4fdeb52c9d170              # double 0.65599600000000002
	.quad	0x3fde47b24638c975              # double 0.47312599999999999
	.quad	0x3fcbfa1a0cf1800a              # double 0.21856999999999999
	.quad	0x3fe5ec204f2ae07e              # double 0.68507399999999996
	.quad	0x3fc15935fc3b4f61              # double 0.13553499999999999
	.quad	0x3fea69b17481b21c              # double 0.82540199999999996
	.quad	0x3fdf1d755bccaf71              # double 0.48617300000000002
	.quad	0x3fe70c026cc1ca3a              # double 0.72021599999999997
	.quad	0x3fcd77292c493426              # double 0.23019899999999999
	.quad	0x3fe8d0870110a138              # double 0.77545500000000001
	.quad	0x3fc5dbfceb78897f              # double 0.17077600000000001
	.quad	0x3fe509246bf01323              # double 0.65736600000000001
	.quad	0x3fe518bd66277c46              # double 0.65927000000000002
	.quad	0x3fe9a55d1c3ac92a              # double 0.80143600000000004
	.quad	0x3fe9b395c4220360              # double 0.80317199999999999
	.quad	0x3fe050b0f27bb2ff              # double 0.50985000000000003
	.quad	0x3fc6895d0b73d189              # double 0.176067
	.quad	0x3feac4b90214ad36              # double 0.83651399999999998
	.quad	0x3fecec6bce8533b1              # double 0.90386
	.quad	0x3fe4d3458cd20afa              # double 0.65078999999999998
	.quad	0x3fc2203e63e8dda5              # double 0.14160900000000001
	.quad	0x3fd4182235b4edb3              # double 0.313973
	.quad	0x3fc2925fe974a340              # double 0.145092
	.quad	0x3fd78bb906466b1e              # double 0.36790299999999998
	.quad	0x3fe5084e831ad213              # double 0.65726399999999996
	.quad	0x3fde5b78cc9a77e6              # double 0.474333
	.quad	0x3fe99bfdf7e8038a              # double 0.800292
	.quad	0x3fdd2fd32c625e9a              # double 0.456044
	.quad	0x3fe4f0153bd16766              # double 0.65430699999999997
	.quad	0x3fc913f077ccc038              # double 0.19592100000000001
	.quad	0x3fe102f2f9873ffb              # double 0.53161000000000003
	.quad	0x3feb7f1b69121251              # double 0.85926599999999997
	.quad	0x3fe558cf398e9707              # double 0.66709099999999999
	.quad	0x3fdbd199bb2788db              # double 0.434668
	.quad	0x3fd932a497fa5d29              # double 0.39371600000000001
	.quad	0x3fc8c53b0813cab8              # double 0.193519
	.quad	0x3feb5ed8d36b4c7f              # double 0.85532799999999998
	.quad	0x3f9744b2b777d0f2              # double 0.022723
	.quad	0x3fef3d9ec7000432              # double 0.97627200000000003
	.quad	0x3feea4b76f6d7625              # double 0.95760699999999999
	.quad	0x3fea41c3efae7925              # double 0.82052800000000004
	.quad	0x3fe0d26d8b1dd5d4              # double 0.52568700000000002
	.quad	0x3fe98f5a1016ce79              # double 0.79874900000000004
	.quad	0x3fee0cae642bf983              # double 0.93904799999999999
	.quad	0x3fcdf03d145d8516              # double 0.23389399999999999
	.quad	0x3fcf0257c914b168              # double 0.242259
	.quad	0x3fb812cf0f9d2bf5              # double 0.094036999999999996
	.quad	0x3fce24dd2f1a9fbe              # double 0.23549999999999999
	.quad	0x3fd60268900c521e              # double 0.34389700000000001
	.quad	0x3febd3d4280ae105              # double 0.86960800000000005
	.quad	0x3fe21fd9ba1b1961              # double 0.566388
	.quad	0x3fe916af038e29fa              # double 0.78401900000000002
	.quad	0x3fe5a4e7ab756430              # double 0.67637999999999998
	.quad	0x3fe19eabbcb1cc96              # double 0.55061899999999997
	.quad	0x3fc19103c8e25c81              # double 0.137238
	.quad	0x3fe5c7dc37a3db3c              # double 0.680647
	.quad	0x3fea1a459103c8e2              # double 0.81570699999999996
	.quad	0x3fde3821af7d30ad              # double 0.47217599999999998
	.quad	0x3fe71e6eeb702603              # double 0.72246500000000002
	.quad	0x3fdb37ef5a964e8b              # double 0.42528899999999997
	.quad	0x3fe73e4ef0281ba8              # double 0.726356
	.quad	0x3fe3c649906cca2e              # double 0.61795500000000003
	.quad	0x3fe5efa3fcc9ea9a              # double 0.68550299999999997
	.quad	0x3fefce28ed5f138c              # double 0.99391600000000002
	.quad	0x3fd13dee78183f92              # double 0.26940500000000001
	.quad	0x3fca854477ff151e              # double 0.20719199999999999
	.quad	0x3fcadb50f40e5a36              # double 0.209818
	.quad	0x3fe554562e09fe87              # double 0.66654500000000005
	.quad	0x3fca34d26fa3fcca              # double 0.204737
	.quad	0x3fa12c8c5004fb12              # double 0.033543000000000003
	.quad	0x3fee1804d9839475              # double 0.94043200000000005
	.quad	0x3febdd69d30270f4              # double 0.87077800000000005
	.quad	0x3fd72f2b66b6177f              # double 0.36225400000000002
	.quad	0x3fe8306c43f5f916              # double 0.755911
	.quad	0x3f995bff04577d95              # double 0.024764999999999999
	.quad	0x3fc5c864883fd502              # double 0.170178
	.quad	0x3fe71a9973d9ec70              # double 0.721997
	.quad	0x3fdc8359bc33f855              # double 0.445517
	.quad	0x3fd5c99285a921cd              # double 0.34042800000000001
	.quad	0x3fe951116a8b8f15              # double 0.79114600000000002
	.quad	0x3fddd36b4c7f3494              # double 0.46602900000000003
	.quad	0x3fe654dc65c70436              # double 0.69785900000000001
	.quad	0x3fe993250b52439a              # double 0.79921200000000003
	.quad	0x3fc10eb24a6a875d              # double 0.13326099999999999
	.quad	0x3fea0b1dd5d3dc8c              # double 0.81385700000000005
	.quad	0x3fe4065f9591cd1c              # double 0.62577799999999995
	.quad	0x3fc20bdcad14a0a1              # double 0.140987
	.quad	0x3fe8e6d7a56de332              # double 0.77817899999999995
	.quad	0x3fdde01de2691644              # double 0.466804
	.quad	0x3fea0f2e05ccc89b              # double 0.81435299999999999
	.quad	0x3fed051c9f72f76e              # double 0.90687399999999996
	.quad	0x3fdab0ccbc05d52c              # double 0.417041
	.quad	0x3fea8ff327aa68f5              # double 0.83007200000000003
	.quad	0x3fe6a3a6ce358299              # double 0.70747700000000002
	.quad	0x3fdc78854cdb7ae5              # double 0.44485599999999997
	.quad	0x3feb13e3e29307af              # double 0.84617799999999999
	.quad	0x3fe3e7cf1c3265ae              # double 0.62204700000000002
	.quad	0x3fc5cb6848beb5b3              # double 0.17027
	.quad	0x3fcc50507a6bd6e9              # double 0.22120100000000001
	.quad	0x3fdeb5393250b524              # double 0.47981099999999999
	.quad	0x3fd909e98dcdb37d              # double 0.39123000000000002
	.quad	0x3fe9fce52deca255              # double 0.81212099999999998
	.quad	0x3fe55147f1305964              # double 0.66617199999999999
	.quad	0x3fef3c579f234656              # double 0.97611599999999998
	.quad	0x3fe605faebc408d9              # double 0.68823000000000001
	.quad	0x3fe22d6a9c560c7c              # double 0.56804399999999999
	.quad	0x3fe85b8130164841              # double 0.76117000000000001
	.quad	0x3fdb351159c49774              # double 0.42511399999999999
	.quad	0x3fcb6837f7be121f              # double 0.214118
	.quad	0x3fc277bbf93ff25e              # double 0.14427899999999999
	.quad	0x3fb54ff0025bfad3              # double 0.083251000000000006
	.quad	0x3fdce72da122fad7              # double 0.45161000000000001
	.quad	0x3fe42b3edd8b60f2              # double 0.63027900000000003
	.quad	0x3fd29a73b42cc2d7              # double 0.29067700000000002
	.quad	0x3fdda7c9de050375              # double 0.463366
	.quad	0x3fd5b1d0c8041030              # double 0.338978
	.quad	0x3fd11bb4916ca46e              # double 0.267316
	.quad	0x3fe8f1fddebd9019              # double 0.77954000000000001
	.quad	0x3fdf798d8a979e17              # double 0.49179400000000001
	.quad	0x3fe9e0b912dba4d7              # double 0.80868200000000001
	.quad	0x3fc53fc86cebbba5              # double 0.16600899999999999
	.quad	0x3fdf3affb04ee7c5              # double 0.48797600000000002
	.quad	0x3fdd80e065300581              # double 0.46099099999999998
	.quad	0x3fe8666234a87e39              # double 0.76249800000000001
	.quad	0x3fe48ecb74ddf86e              # double 0.64243099999999997
	.quad	0x3fb7d7a13c254a3c              # double 0.093133999999999995
	.quad	0x3fe33c2b94d94079              # double 0.60109500000000005
	.quad	0x3fc4429e0a41a262              # double 0.15828300000000001
	.quad	0x3fedfae147ae147b              # double 0.93687500000000001
	.quad	0x3fc74317acc4ef89              # double 0.18173500000000001
	.quad	0x3feae991ff7164c7              # double 0.84101199999999998
	.quad	0x3fdef85d744f5d35              # double 0.48390899999999998
	.quad	0x3f6437c5692b3cc5              # double 0.0024680000000000001
	.quad	0x3fcbe8e60807357e              # double 0.21804499999999999
	.quad	0x3fe2a003ab862b28              # double 0.58203300000000002
	.quad	0x3fc7ac2df0d41312              # double 0.184942
	.quad	0x3fce26b2f23033a4              # double 0.23555599999999999
	.quad	0x3fefb2a0663c74fb              # double 0.99055499999999996
	.quad	0x3fcfb352a8438088              # double 0.24765999999999999
	.quad	0x3fe2b5781c714fce              # double 0.58465199999999995
	.quad	0x3fd9807357e670e3              # double 0.39846500000000001
	.quad	0x3fdf32096787ce96              # double 0.487429
	.quad	0x3fdb2c98e53eb39a              # double 0.424597
	.quad	0x3fecaf901083dbc2              # double 0.89643099999999998
	.quad	0x3fe5f58c08b75ea6              # double 0.68622399999999995
	.quad	0x3fed1ba1b1960fa1              # double 0.90962299999999996
	.quad	0x3fec17225b749add              # double 0.87782400000000005
	.quad	0x3fee0f42fe82517e              # double 0.93936299999999995
	.quad	0x3fe801c714fce747              # double 0.75021700000000002
	.quad	0x3faa02d9cf13ceea              # double 0.050803000000000001
	.quad	0x3fe61d16fc9bc771              # double 0.69105099999999997
	.quad	0x3fe1d31769a91106              # double 0.55701800000000001
	.quad	0x3fedba3443d46b27              # double 0.92898000000000003
	.quad	0x3fe946c54bcf0b6b              # double 0.78988899999999995
	.quad	0x3fa52fc2656abde4              # double 0.04138
	.quad	0x3feedba0a5269596              # double 0.96431
	.quad	0x3feba23e18698351              # double 0.86355499999999996
	.quad	0x3fcb23465625a683              # double 0.21201400000000001
	.quad	0x3fda148fd9fd36f8              # double 0.40750500000000001
	.quad	0x3fe41adc8fb86f48              # double 0.62827900000000003
	.quad	0x3fa03361565c2d28              # double 0.031642000000000003
	.quad	0x3fc131c219eb6391              # double 0.13433100000000001
	.quad	0x3fe68a0d349be8ff              # double 0.70435199999999998
	.quad	0x3fe4aaf35e310dbf              # double 0.645868
	.quad	0x3f9001d5c31593e6              # double 0.015632
	.quad	0x3fe94475e6362a5e              # double 0.78960699999999995
	.quad	0x3fea4636b0963561              # double 0.821071
	.quad	0x3fee906ee30caa32              # double 0.95513099999999995
	.quad	0x3fe5b77186551937              # double 0.678643
	.quad	0x3fe874ba51a005c4              # double 0.76424899999999995
	.quad	0x3fafb09203a322af              # double 0.061893999999999998
	.quad	0x3fa28cbd1244a622              # double 0.036229999999999998
	.quad	0x3fc7145d851654d6              # double 0.180309
	.quad	0x3fecb3e5753a3ec0              # double 0.89695999999999998
	.quad	0x3fefafdfc19c1722              # double 0.99021899999999996
	.quad	0x3fef4a1f080303c0              # double 0.97779799999999994
	.quad	0x3fc33647baa9b49a              # double 0.15009400000000001
	.quad	0x3fef1680e0653006              # double 0.97149700000000005
	.quad	0x3fd367fd3f5b5fa2              # double 0.30322199999999999
	.quad	0x3feaf6965f5275ef              # double 0.84260100000000004
	.quad	0x3fc6574b40703298              # double 0.174539
	.quad	0x3fe648882f0e0a85              # double 0.69635400000000003
	.quad	0x3fd9a5a469d7342f              # double 0.40073500000000001
	.quad	0x3fed872d1aeb3dd1              # double 0.92275099999999999
	.quad	0x3fd5670e2c12ad82              # double 0.33441500000000002
	.quad	0x3fb9c864883fd502              # double 0.100714
	.quad	0x3fe09656eefa1e3f              # double 0.51835200000000003
	.quad	0x3fccce4649906cca              # double 0.225045
	.quad	0x3fd8aa21a719b4dd              # double 0.385384
	.quad	0x3fc5d9f4d37c1377              # double 0.170714
	.quad	0x3fe608ace24bba13              # double 0.68855900000000003
	.quad	0x3fe2cb35f3d7d391              # double 0.58730599999999999
	.quad	0x3fcbd40ee06d9381              # double 0.21740899999999999
	.quad	0x3fec561b2a27f1b7              # double 0.88551100000000005
	.quad	0x3f8c94f69ca9ef52              # double 0.013956
	.quad	0x3fd6f23465625a68              # double 0.35853299999999999
	.quad	0x3fd0c77143393ab4              # double 0.26217299999999999
	.quad	0x3fd925072085b185              # double 0.39288499999999998
	.quad	0x3fd39f8c21e1d218              # double 0.30661300000000002
	.quad	0x3fdf0d66f0cfe154              # double 0.48519299999999999
	.quad	0x3fe05d18090b417d              # double 0.51136400000000004
	.quad	0x3fe15b749adc8fb8              # double 0.54241399999999995
	.quad	0x3fe05a708ede54b5              # double 0.51104000000000005
	.quad	0x3fc37110e453d20f              # double 0.151888
	.quad	0x3fea633269df97ab              # double 0.82460900000000004
	.quad	0x3fe6b4e3369b9d80              # double 0.70958100000000002
	.quad	0x3feb20232096787d              # double 0.84767300000000001
	.quad	0x3fedab4b72c5197a              # double 0.92715999999999998
	.quad	0x3fe673abc947064f              # double 0.70162000000000002
	.quad	0x3fd6e6106ab14ec2              # double 0.357792
	.quad	0x3fe4cbfd2e946801              # double 0.64990099999999995
	.quad	0x3fe7164628027d89              # double 0.72146900000000003
	.quad	0x3fe66b6177ea1c69              # double 0.70060800000000001
	.quad	0x3fc058dde7a743a6              # double 0.12771199999999999
	.quad	0x3fd4934699418506              # double 0.32148900000000002
	.quad	0x3fd898d8a979e16d              # double 0.38432899999999998
	.quad	0x3fc2aaeafab53d64              # double 0.145841
	.quad	0x3fe78c0053e2d624              # double 0.73584000000000005
	.quad	0x3feb5536933a0408              # double 0.85415200000000002
	.quad	0x3fe0f681669ced0b              # double 0.53009099999999998
	.quad	0x3fe456777079e59f              # double 0.63555499999999998
	.quad	0x3fb06e5cd4ed2cbf              # double 0.064184000000000005
	.quad	0x3fd1861e92923e5c              # double 0.27381100000000003
	.quad	0x3fdf285a921ccd96              # double 0.48683799999999999
	.quad	0x3fb1bccaf709b739              # double 0.069287000000000001
	.quad	0x3fdf26527a20578e              # double 0.48671399999999998
	.quad	0x3fe3e01ffb480a5b              # double 0.62110900000000002
	.quad	0x3fcd496249a133c2              # double 0.22880200000000001
	.quad	0x3fd3b7d41743e964              # double 0.30809500000000001
	.quad	0x3fe674afd5454153              # double 0.70174400000000003
	.quad	0x3fea3584b1ab0857              # double 0.81903300000000001
	.quad	0x3facd573647baa9b              # double 0.056315999999999998
	.quad	0x3f9f4d37c1376d55              # double 0.030568000000000001
	.quad	0x3fcd8897e996312f              # double 0.23073099999999999
	.quad	0x3fc8909aed56b010              # double 0.191913
	.quad	0x3fc81986b9c304cd              # double 0.188279
	.quad	0x3fe31a4df47f993d              # double 0.59696099999999996
	.quad	0x3fe2a888b545c78a              # double 0.58307299999999995
	.quad	0x3fef225742dcf462              # double 0.97294199999999997
	.quad	0x3fcce7a311e85fd0              # double 0.22581899999999999
	.quad	0x3fc3c66d373affb0              # double 0.15449299999999999
	.quad	0x3fb49c90c4dec1c2              # double 0.080514000000000002
	.quad	0x3fd5b85a4f00ef13              # double 0.33937699999999998
	.quad	0x3fd57ee4e26d4802              # double 0.33587
	.quad	0x3fc08b32ce89656f              # double 0.129248
	.quad	0x3fedc46b69db65ed              # double 0.93022700000000003
	.quad	0x3fe25d2d01c0ca60              # double 0.573874
	.quad	0x3fe45b39e279dd3c              # double 0.63613600000000003
	.quad	0x3fe704167a95c854              # double 0.71924900000000003
	.quad	0x3fd3e46cfc829cfe              # double 0.31081700000000001
	.quad	0x3fda5308bb906467              # double 0.41131800000000002
	.quad	0x3fed010a569b1748              # double 0.90637699999999999
	.quad	0x3fa73b42cc2d6a9c              # double 0.045373999999999998
	.quad	0x3feaddaf07bfe7e2              # double 0.839561
	.quad	0x3fef2d7d7c2ca149              # double 0.97430300000000003
	.quad	0x3fe831465e892253              # double 0.75601499999999999
	.quad	0x3fde09dcf893faf4              # double 0.46935199999999999
	.quad	0x3fee3471f79420b4              # double 0.94390200000000001
	.quad	0x3fe716c61522a6f4              # double 0.72153
	.quad	0x3fb93e1c9b413986              # double 0.098603999999999997
	.quad	0x3fe0539fba450acc              # double 0.51020799999999999
	.quad	0x3fe1b58298cc1440              # double 0.55340699999999998
	.quad	0x3fed0afc47e49b20              # double 0.90759100000000003
	.quad	0x3fa043e5321e603d              # double 0.031767999999999998
	.quad	0x3fa0d5410f94c87a              # double 0.032877000000000003
	.quad	0x3fe2f24fa8b4bf90              # double 0.59207900000000002
	.quad	0x3fc5e8dda48b6523              # double 0.17116899999999999
	.quad	0x3fc6a033e78e1933              # double 0.176764
	.quad	0x3fe7d7fd82773e25              # double 0.745116
	.quad	0x3fe229aa1d755bcd              # double 0.56758600000000003
	.quad	0x3fdbb80a9de8b3b3              # double 0.43310799999999999
	.quad	0x3feede99e94ab1d5              # double 0.964673
	.quad	0x3fea87db2b346131              # double 0.82908400000000004
	.quad	0x3fc337c99ae924f2              # double 0.15014
	.quad	0x3fe31dc0db2702a3              # double 0.59738199999999997
	.quad	0x3fdda5657fb69985              # double 0.46322000000000002
	.quad	0x3fc933ebbfd71b04              # double 0.19689699999999999
	.quad	0x3fe4613f4a98aa86              # double 0.63687099999999996
	.quad	0x3fcf6c61522a6f3f              # double 0.24549499999999999
	.quad	0x3fe97cc1871e6cd3              # double 0.79647900000000005
	.quad	0x3fd39a7c17a89332              # double 0.30630400000000002
	.quad	0x3fdcdd1a21ea3593              # double 0.45099499999999998
	.quad	0x3fe971de69ad42c4              # double 0.79515000000000002
	.quad	0x3fedb6177ea1c68f              # double 0.92847800000000003
	.quad	0x3f95432873bc903f              # double 0.020764000000000001
	.quad	0x3fec709310129cbb              # double 0.88874200000000003
	.quad	0x3febeb313be22e5e              # double 0.87246000000000001
	.quad	0x3fdca23bff8a8f3b              # double 0.44740200000000002
	.quad	0x3fd7f07bfe7e1fc1              # double 0.37405300000000002
	.quad	0x3fdd6c8b43958106              # double 0.45974999999999999
	.quad	0x3fdce8dda48b6523              # double 0.45171299999999998
	.quad	0x3fe3281344806291              # double 0.59864200000000001
	.quad	0x3fe5ef06b37867f1              # double 0.68542800000000004
	.quad	0x3fe056238da3c212              # double 0.51051500000000005
	.quad	0x3fd75336deb95e5b              # double 0.364454
	.quad	0x3fd04934267839ce              # double 0.25446800000000003
	.quad	0x3fd2fc2eba27ae9b              # double 0.29664200000000002
	.quad	0x3fe2cb87bdcf0308              # double 0.58734500000000001
	.quad	0x3faac5e2cdc011d3              # double 0.052290999999999997
	.quad	0x3fee05510d38cda7              # double 0.93814900000000001
	.quad	0x3fa74f722e1ac57e              # double 0.045527999999999999
	.quad	0x3fe7262aa19439de              # double 0.72340899999999997
	.quad	0x3fe03c85c24c404a              # double 0.50738799999999995
	.quad	0x3fde9439de481f54              # double 0.47779700000000003
	.quad	0x3fe1690de093532e              # double 0.54407399999999995
	.quad	0x3fdc84ba0e842742              # double 0.44560100000000002
	.quad	0x3fdffbc1acde19fc              # double 0.49974099999999999
	.quad	0x3fceadbc664d3bf3              # double 0.239677
	.quad	0x3fe2e66666666666              # double 0.59062499999999996
	.quad	0x3fda67ba237cdcca              # double 0.41258099999999998
	.quad	0x3fef623f24d8fd5d              # double 0.98074300000000003
	.quad	0x3fe79dc50ce4ead1              # double 0.73800900000000003
	.quad	0x3fa22cecc814d728              # double 0.035499000000000003
	.quad	0x3fef947496aad1d0              # double 0.98687199999999997
	.quad	0x3fe6356fb8f57f73              # double 0.69402299999999995
	.quad	0x3fc144241c3efae8              # double 0.13489200000000001
	.quad	0x3fd4c404a72ead92              # double 0.32446399999999997
	.quad	0x3fe1077681669ced              # double 0.532161
	.quad	0x3fd0536d655e28aa              # double 0.25509199999999999
	.quad	0x3fab445ed4a1ad64              # double 0.053255999999999998
	.quad	0x3fbde0e736049ecb              # double 0.116713
	.quad	0x3fd2f1843c3a42f2              # double 0.295991
	.quad	0x3fe594b599aa6091              # double 0.67440299999999997
	.quad	0x3fcbb99d451fc4c1              # double 0.21660199999999999
	.quad	0x3fd9b5393250b524              # double 0.40168599999999999
	.quad	0x3f6e8a2ec28b2a6b              # double 0.003728
	.quad	0x3fc99f559b3d07c8              # double 0.20017499999999999
	.quad	0x3fe76f177a7008a7              # double 0.73231100000000005
	.quad	0x3fde1b6d43d03969              # double 0.47042400000000001
	.quad	0x3fee70c34c1a8ac6              # double 0.95126500000000003
	.quad	0x3fd62f4491298890              # double 0.34663500000000003
	.quad	0x3fee0a7e73a365cb              # double 0.93878099999999998
	.quad	0x3fd1281ba7fc32ec              # double 0.26807300000000001
	.quad	0x3fe50ce2d1f1cfbc              # double 0.65782300000000005
	.quad	0x3fdd8a50507a6bd7              # double 0.46156700000000001
	.quad	0x3fe4d1dcd7060bb3              # double 0.65061800000000003
	.quad	0x3fc6fb43d89ce4a8              # double 0.17954300000000001
	.quad	0x3fee04ad794a6eb9              # double 0.93807099999999999
	.quad	0x3fef00ef1348b220              # double 0.96886399999999994
	.quad	0x3fed9294573a7979              # double 0.92414300000000005
	.quad	0x3fce9b738e6d15ad              # double 0.239119
	.quad	0x3fefc284dfce3151              # double 0.99249500000000001
	.quad	0x3fe7cc7f34938583              # double 0.74371299999999996
	.quad	0x3feaf49cf56eac86              # double 0.84236
	.quad	0x3fcabb906466b1e6              # double 0.20884900000000001
	.quad	0x3fcc7b1c0010c6f8              # double 0.22250700000000001
	.quad	0x3fd4d323fee2c98e              # double 0.32538699999999998
	.quad	0x3fe837a5f41aef70              # double 0.75679300000000005
	.quad	0x3fea872b020c49ba              # double 0.82899999999999996
	.quad	0x3fb89081c2e33eff              # double 0.095954999999999999
	.quad	0x3fe0d31769a91106              # double 0.52576800000000001
	.quad	0x3fdde82d7b634dad              # double 0.46729599999999999
	.quad	0x3fe085c67dfe32a0              # double 0.51632999999999996
	.quad	0x3fec1294573a7979              # double 0.87726800000000005
	.quad	0x3fe6ba01eeed8905              # double 0.710206
	.quad	0x3fe8e4649906cca3              # double 0.77788000000000002
	.quad	0x3fea423b7952d235              # double 0.82058500000000001
	.quad	0x3fc4e59af9ebe9c9              # double 0.16325700000000001
	.quad	0x3fddba5e353f7cee              # double 0.46450000000000002
	.quad	0x3fd5232096787ce9              # double 0.33026899999999998
	.quad	0x3fe3bd0e12e83a11              # double 0.61682800000000004
	.quad	0x3fe21c27e9531551              # double 0.56593700000000002
	.quad	0x3fcde23f24d8fd5d              # double 0.23346700000000001
	.quad	0x3fb7daa4fca42aed              # double 0.093179999999999999
	.quad	0x3fe2be920c069e80              # double 0.58576300000000003
	.quad	0x3fd4cd855970b49e              # double 0.325044
	.quad	0x3fec6922d948dc12              # double 0.88783400000000001
	.quad	0x3fd4744b2b777d0f              # double 0.31959799999999999
	.quad	0x3fb1afc04c8bc9cd              # double 0.069087999999999997
	.quad	0x3fb85e80bed740c4              # double 0.095191999999999999
	.quad	0x3fefe679463cfb33              # double 0.99688399999999999
	.quad	0x3feea02b841248d8              # double 0.95705200000000001
	.quad	0x3fd1b19e731d2e0e              # double 0.27646599999999999
	.quad	0x3fa9f1ae2da554b9              # double 0.050672000000000002
	.quad	0x3fdaafee6fb4c3c2              # double 0.41698800000000003
	.quad	0x3fd85529fe004b7f              # double 0.38019799999999998
	.quad	0x3fd412cf0f9d2bf5              # double 0.31364799999999998
	.quad	0x3fa99008205ff1d8              # double 0.049926999999999999
	.quad	0x3fefbc1ce6c093d9              # double 0.99171299999999995
	.quad	0x3fba8cdea033e78e              # double 0.103712
	.quad	0x3fe939d7fd82773e              # double 0.78831099999999998
	.quad	0x3fc68ad688377186              # double 0.17611199999999999
	.quad	0x3fc550331e3a7daa              # double 0.16650999999999999
	.quad	0x3fe2e612839042d9              # double 0.59058500000000003
	.quad	0x3fbbbc3c5bd0e12f              # double 0.10834100000000001
	.quad	0x3fefa977c88e79ab              # double 0.98943700000000001
	.quad	0x3fb7ce4217d2849d              # double 0.092991000000000004
	.quad	0x3fc8c78e9f6a93f3              # double 0.19359000000000001
	.quad	0x3fa93ec460ed80a1              # double 0.049306999999999997
	.quad	0x3fa0cd855970b49e              # double 0.032818
	.quad	0x3fdf748e4755ffe7              # double 0.49148900000000001
	.quad	0x3fa5273d5bab2181              # double 0.041314999999999998
	.quad	0x3fe052c7b890d5a6              # double 0.51010500000000003
	.quad	0x3fe56ae3a3a8e714              # double 0.66929799999999995
	.quad	0x3fe6d9945b6c3761              # double 0.71406000000000003
	.quad	0x3fee680bed740c41              # double 0.95020099999999996
	.quad	0x3fb3a85015c20924              # double 0.076786999999999994
	.quad	0x3fc14eb9a176ddad              # double 0.135215
	.quad	0x3fe73aa369fcf3dc              # double 0.725908
	.quad	0x3fdf29aa1d755bcd              # double 0.48691800000000002
	.quad	0x3fdae01de2691644              # double 0.419929
	.quad	0x3feab16a055757d6              # double 0.83415700000000004
	.quad	0x3fe67368ad688377              # double 0.70158799999999999
	.quad	0x3fc8d0dcfcc5b8dc              # double 0.19387399999999999
	.quad	0x3fc4370cdc8754f3              # double 0.15792999999999999
	.quad	0x3fce7304039abf34              # double 0.23788500000000001
	.quad	0x3fd55b20b8066c2b              # double 0.33368700000000001
	.quad	0x3fcd5ddd2ae8e1d6              # double 0.22942699999999999
	.quad	0x3fcc432441fea811              # double 0.220799
	.quad	0x3fe5ba51a005c465              # double 0.67899399999999999
	.quad	0x3fb0d91eeaa6d267              # double 0.065812999999999997
	.quad	0x3fae5cd4ed2cbea5              # double 0.059302000000000001
	.quad	0x3fb680e065300581              # double 0.087903999999999996
	.quad	0x3fe2c26351deefe5              # double 0.586229
	.quad	0x3fe90bae89eba6ad              # double 0.78267600000000004
	.quad	0x3fc09539b888722a              # double 0.129554
	.quad	0x3fe50b3b320535ca              # double 0.65762100000000001
	.quad	0x3fe5b1572580c309              # double 0.677898
	.quad	0x3fc0512231832fcb              # double 0.12747600000000001
	.quad	0x3fda1d712a0ec743              # double 0.40804699999999999
	.quad	0x3fe5dcca70d1fa33              # double 0.68320199999999998
	.quad	0x3fbdf383f0bae89f              # double 0.116997
	.quad	0x3fe279cc74b838c1              # double 0.57736799999999999
	.quad	0x3fea6659d12cadde              # double 0.82499400000000001
	.quad	0x3fc11c3ac929aa1d              # double 0.13367399999999999
	.quad	0x3fe5355043e5321e              # double 0.66275799999999996
	.quad	0x3fe30a6b93ccd0ff              # double 0.59502200000000005
	.quad	0x3fec28f3a9b06812              # double 0.87999899999999998
	.quad	0x3fee84102ff8ec10              # double 0.95362100000000005
	.quad	0x3fee8f6cefed6345              # double 0.95500799999999997
	.quad	0x3fea83621fafc8b0              # double 0.828538
	.quad	0x3f93387160956c0d              # double 0.018769999999999998
	.quad	0x3fe3c727dcbddb98              # double 0.61806099999999997
	.quad	0x3fe5f86a098915be              # double 0.68657400000000002
	.quad	0x3fed127913e81451              # double 0.90850500000000001
	.quad	0x3fe08303c07ee0b1              # double 0.51599300000000003
	.quad	0x3fd6ce2089e34331              # double 0.35633100000000001
	.quad	0x3fb612b5e529bae4              # double 0.086222999999999994
	.quad	0x3fd1a2fcefaa4767              # double 0.27557300000000001
	.quad	0x3fbd531550ca1cef              # double 0.114549
	.quad	0x3fef96440f238972              # double 0.987093
	.quad	0x3fd4a4db163baba8              # double 0.32256200000000002
	.quad	0x3faa59c065b63d3e              # double 0.051465999999999998
	.quad	0x3fdd23465625a683              # double 0.45527800000000002
	.quad	0x3fed2f3a14cec41e              # double 0.91201500000000002
	.quad	0x3fe6d716d2aa5c5f              # double 0.71375599999999995
	.quad	0x3fb615ebfa8f7db7              # double 0.086272000000000001
	.quad	0x3feae83a109d0636              # double 0.84084800000000004
	.quad	0x3fc613c254a3c643              # double 0.17247799999999999
	.quad	0x3fda52502eec7c95              # double 0.41127399999999997
	.quad	0x3fc0d823422467be              # double 0.13159599999999999
	.quad	0x3fee57e23f24d8fd              # double 0.94822799999999996
	.quad	0x3fdb968512231833              # double 0.431062
	.quad	0x3fe91e29b6b2af14              # double 0.78493199999999996
	.quad	0x3fb5eb95e5aff2a1              # double 0.085625999999999994
	.quad	0x3fdf7a5f41aef6f9              # double 0.491844
	.quad	0x3feab10fd7e45804              # double 0.83411400000000002
	.quad	0x3fc34fa48301a7a0              # double 0.150868
	.quad	0x3fee987c6327ed85              # double 0.95611400000000002
	.quad	0x3fc36b11c6d1e109              # double 0.15170500000000001
	.quad	0x3fd070da5daf07c0              # double 0.25688800000000001
	.quad	0x3fe82fc8b0079a28              # double 0.75583299999999998
	.quad	0x3fe40900c521dda0              # double 0.62609899999999996
	.quad	0x3fe100b029281776              # double 0.53133399999999997
	.quad	0x3fe2530ad46f587d              # double 0.57263699999999995
	.quad	0x3fd72839042d8c2a              # double 0.36182999999999998
	.quad	0x3fd8ff0025bfad2a              # double 0.39056400000000002
	.quad	0x3fd49d5a187a4a49              # double 0.322104
	.quad	0x3fca7685985ad539              # double 0.20674200000000001
	.quad	0x3fcc024b33daf8df              # double 0.21881999999999999
	.quad	0x3fef059a73b42cc3              # double 0.96943400000000001
	.quad	0x3fea39fba450acc1              # double 0.81957800000000003
	.quad	0x3fe570e4da09cc32              # double 0.67003100000000004
	.quad	0x3fdbb3354c12274a              # double 0.432813
	.quad	0x3fcb9f01b866e43b              # double 0.21579000000000001
	.quad	0x3fdc8266772d5e07              # double 0.44545899999999999
	.quad	0x3fdb1d8a54823854              # double 0.423678
	.quad	0x3fc27a5b0ff10ecb              # double 0.14435899999999999
	.quad	0x3fc9b9389b52007e              # double 0.200965
	.quad	0x3fe57ec3547e0696              # double 0.67172399999999999
	.quad	0x3fc106573215fcc2              # double 0.13300600000000001
	.quad	0x3fdc4c3c18b502ac              # double 0.44215300000000002
	.quad	0x3fee2da554b8bef9              # double 0.94307200000000002
	.quad	0x3fe0cfbb9496249a              # double 0.52535799999999999
	.quad	0x3fd7557de0d66f0d              # double 0.364593
	.quad	0x3fd2036006d0d499              # double 0.28145599999999998
	.quad	0x3fd720642396073e              # double 0.36135200000000001
	.quad	0x3fd8e9a2c669057d              # double 0.38925999999999999
	.quad	0x3fd8e425aee631f9              # double 0.38892500000000002
	.quad	0x3fee2ee41919ac79              # double 0.94322399999999995
	.quad	0x3fb8433d6c721922              # double 0.094775999999999999
	.quad	0x3fa3de82d7b634db              # double 0.038807000000000001
	.quad	0x3fe894ca925fe975              # double 0.76816300000000004
	.quad	0x3fa02c0a4a05dd90              # double 0.031586000000000003
	.quad	0x3fde12a94ff0025c              # double 0.469889
	.quad	0x3fd1aa7589efd86b              # double 0.27602900000000002
	.quad	0x3fc6d8b1dd5d3dc9              # double 0.17848800000000001
	.quad	0x3fed347a5b0ff10f              # double 0.91265600000000002
	.quad	0x3fe765add9c27e95              # double 0.73116199999999998
	.quad	0x3fee6594af4f0d84              # double 0.94989999999999996
	.quad	0x3fc9825e13b18dac              # double 0.199291
	.quad	0x3fe2a9f16b11c6d2              # double 0.58324500000000001
	.quad	0x3fe7d946c332f017              # double 0.74527299999999996
	.quad	0x3feb76c69b5a63fa              # double 0.85824900000000004
	.quad	0x3fdf7eed45e9185d              # double 0.492122
	.quad	0x3fd465a57646ae3a              # double 0.31870399999999999
	.quad	0x3fd1f37fbefd0071              # double 0.28048699999999999
	.quad	0x3fb4358afc47e49b              # double 0.078941999999999998
	.quad	0x3fce845996744b2b              # double 0.23841399999999999
	.quad	0x3fec64d5d80e496f              # double 0.88730900000000001
	.quad	0x3fda142f61ed5ae2              # double 0.40748200000000001
	.quad	0x3fe82161e4f765fe              # double 0.75407500000000005
	.quad	0x3fe910060780fdc1              # double 0.78320599999999996
	.quad	0x3faf26aec0724b77              # double 0.060842
	.quad	0x3fe4bb4d48882f0e              # double 0.647864
	.quad	0x3fbb5286b59146e5              # double 0.106728
	.quad	0x3fd4be40420f6f09              # double 0.32411200000000001
	.quad	0x3fd3253da72a7bd5              # double 0.29914800000000003
	.quad	0x3fe802ea960b6fa0              # double 0.75035600000000002
	.quad	0x3fb50bb6ed677708              # double 0.082210000000000005
	.quad	0x3fddbae03b3e9a70              # double 0.46453100000000003
	.quad	0x3fbba9c12f09d8c7              # double 0.108059
	.quad	0x3fd16bd6e8af8162              # double 0.27220699999999998
	.quad	0x3fe3ff77af64063a              # double 0.62493500000000002
	.quad	0x3fbc0b45ae5ffa3c              # double 0.10954700000000001
	.quad	0x3fe7b3edd8b60f1b              # double 0.74071399999999998
	.quad	0x3feb7c32ebe596c8              # double 0.85891099999999998
	.quad	0x3fd5f8c64fdb09a6              # double 0.34330899999999998
	.quad	0x3fdbf7a919695d92              # double 0.43699100000000002
	.quad	0x3f8b20b8066c2acc              # double 0.013246000000000001
	.quad	0x3fcba786c226809d              # double 0.21604999999999999
	.quad	0x3fe01ad85dfa871a              # double 0.50327699999999997
	.quad	0x3fe31620685553ef              # double 0.59645099999999995
	.quad	0x3fe0f52da98676a7              # double 0.52992899999999998
	.quad	0x3fb66cd29131ec0b              # double 0.087597999999999995
	.quad	0x3fb2833c60029f17              # double 0.072315000000000004
	.quad	0x3fc03d89ce4a7b4e              # double 0.12687799999999999
	.quad	0x3fecebfec13b9f12              # double 0.90380799999999994
	.quad	0x3fdab13dfb0d51f8              # double 0.41706799999999999
	.quad	0x3fe3a0685553ef6b              # double 0.61333099999999996
	.quad	0x3f95946c332f0175              # double 0.021073999999999999
	.quad	0x3fbf0270f3882279              # double 0.121131
	.quad	0x3fe250b955f7835a              # double 0.57235400000000003
	.quad	0x3fd0288051c9f72f              # double 0.25247199999999997
	.quad	0x3fc933e35c5b4aa9              # double 0.19689599999999999
	.quad	0x3fb9bbe0157eed46              # double 0.100523
	.quad	0x3fe425f202107b78              # double 0.62963199999999997
	.quad	0x3fe18c8259e1f3a5              # double 0.54840199999999995
	.quad	0x3fb6f262888b545c              # double 0.089635999999999993
	.quad	0x3fdcb723ee1bd1ee              # double 0.44867800000000002
	.quad	0x3feb098f605ab3ab              # double 0.84491700000000003
	.quad	0x3fe8d5757d5a9eb2              # double 0.776057
	.quad	0x3fe3e1d8622c4502              # double 0.62131899999999995
	.quad	0x3fc41e1d2178f68c              # double 0.157169
	.quad	0x3fda76922d948dc1              # double 0.41348699999999999
	.quad	0x3fb8f91a32b12d34              # double 0.097550999999999998
	.quad	0x3fe577ea1c68ec53              # double 0.67088800000000004
	.quad	0x3fdfd8dbcec84f90              # double 0.49761100000000003
	.quad	0x3fe2ae9ccb7d4174              # double 0.58381499999999997
	.quad	0x3fd34d1a65061416              # double 0.30158099999999999
	.quad	0x3fe7ba57eaa2a0a9              # double 0.74149699999999996
	.quad	0x3fd6ba5e353f7cee              # double 0.35512500000000002
	.quad	0x3fca3df6db940fed              # double 0.205016
	.quad	0x3fd263e4abe6a338              # double 0.28734700000000002
	.quad	0x3f5d5c31593e5fb7              # double 0.001792
	.quad	0x3feb209edbf8b9bb              # double 0.84773200000000004
	.quad	0x3fe6c176577531db              # double 0.71111599999999997
	.quad	0x3fd37a4a48f96e16              # double 0.30433900000000003
	.quad	0x3fe15579af1886e0              # double 0.54168400000000005
	.quad	0x3fec79e9d0e991ff              # double 0.88988199999999995
	.quad	0x3fd3a5e785b5b707              # double 0.30700100000000002
	.quad	0x3fb89adc8fb86f48              # double 0.096113000000000004
	.quad	0x3fd7e5f7403dddb1              # double 0.37341099999999999
	.quad	0x3fee5bd2fa0d77b8              # double 0.94870900000000002
	.quad	0x3fec8fe047d3d428              # double 0.892563
	.quad	0x3fe94c9c90c4dec2              # double 0.79060200000000003
	.quad	0x3fa8bfc2224edf61              # double 0.048337999999999999
	.quad	0x3feed2c7b890d5a6              # double 0.96323000000000003
	.quad	0x3fe746f9b994e1a4              # double 0.72741400000000001
	.quad	0x3fdaceaaf35e310e              # double 0.41886400000000001
	.quad	0x3fd0482385404641              # double 0.25440299999999999
	.quad	0x3fd30b3d4ae429e1              # double 0.29756100000000002
	.quad	0x3fde05c896dd26b7              # double 0.46910299999999999
	.quad	0x3fed3c70c996b767              # double 0.913628
	.quad	0x3fa5fce3150dae3e              # double 0.042944999999999997
	.quad	0x3fcbc51dabe2717a              # double 0.21695300000000001
	.quad	0x3fce93532e7b3d8e              # double 0.238871
	.quad	0x3fc9b4916ca46e09              # double 0.200823
	.quad	0x3fe28eb0318b9347              # double 0.57991800000000004
	.quad	0x3feceea854477ff1              # double 0.90413299999999996
	.quad	0x3fd6682730c67169              # double 0.350107
	.quad	0x3fdd7d1fe64f54d2              # double 0.460762
	.quad	0x3fcf48cb4aec8d5c              # double 0.24440899999999999
	.quad	0x3fe0ef672b884407              # double 0.52922400000000003
	.quad	0x3fc018611fd5885d              # double 0.12574399999999999
	.quad	0x3febbee807bbb624              # double 0.86705399999999999
	.quad	0x3fdfb1d4f9c1f85d              # double 0.49522899999999997
	.quad	0x3feef57f737da61e              # double 0.96746799999999999
	.quad	0x3fcf23ee1bd1ed9e              # double 0.243284
	.quad	0x3fde3d7d3910c2c6              # double 0.47250300000000001
	.quad	0x3fd1c5d206c8711d              # double 0.27769899999999997
	.quad	0x3fea24638c975297              # double 0.81694199999999995
	.quad	0x3f9a493c89f40a28              # double 0.025669999999999998
	.quad	0x3f716fc9bc771434              # double 0.0042570000000000004
	.quad	0x3fe873343fa2ad3f              # double 0.76406300000000005
	.quad	0x3fd639c94f69ca9f              # double 0.347277
	.quad	0x3fbc384ba0e84274              # double 0.110234
	.quad	0x3fda87df5cf2495e              # double 0.41454299999999999
	.quad	0x3fecbae89eba6aca              # double 0.89781599999999995
	.quad	0x3fed59f6ec5b078e              # double 0.91723200000000005
	.quad	0x3fd157e670e2c12b              # double 0.27099000000000001
	.quad	0x3fe28c21e1d2178f              # double 0.57960599999999995
	.quad	0x3fdd17dae81882ae              # double 0.45458100000000001
	.quad	0x3fe0da9003eea20a              # double 0.52668000000000004
	.quad	0x3fdb1f644955b467              # double 0.42379099999999997
	.quad	0x3fbe272862f5989e              # double 0.117785
	.quad	0x3fd405143bf72713              # double 0.31280999999999998
	.quad	0x3fccec743201040c              # double 0.225966
	.quad	0x3fe02d9ad85dfa87              # double 0.50556699999999999
	.quad	0x3fe8c49fd7a13c25              # double 0.77400199999999997
	.quad	0x3fc8e1932d6ece14              # double 0.194384
	.quad	0x3fc03b0c4588a04d              # double 0.126802
	.quad	0x3fe66672fba01eef              # double 0.70000600000000002
	.quad	0x3fec0a3d70a3d70a              # double 0.87624999999999997
	.quad	0x3fd217e34b945309              # double 0.28270800000000001
	.quad	0x3fb774aba3875925              # double 0.091623999999999997
	.quad	0x3fe840852b4d8ba4              # double 0.75787599999999999
	.quad	0x3f9915bdd76683c3              # double 0.024497000000000001
	.quad	0x3fe20c6d612c6ac2              # double 0.56401699999999999
	.quad	0x3fbb588e368f0846              # double 0.10682
	.quad	0x3fe371fff79c8430              # double 0.60766600000000004
	.quad	0x3fe808d4bad7d7c3              # double 0.75107800000000002
	.quad	0x3fd49db22d0e5604              # double 0.32212499999999999
	.quad	0x3fe52860dcb9a9da              # double 0.66117899999999996
	.quad	0x3fdc76188b11409a              # double 0.44470799999999999
	.quad	0x3fbb9378ee286727              # double 0.107719
	.quad	0x3fdaada76d97b310              # double 0.41684900000000003
	.quad	0x3fc7f7403dddb121              # double 0.18723300000000001
	.quad	0x3fed184c271fff7a              # double 0.90921600000000002
	.quad	0x3fd3700cd855970b              # double 0.30371399999999998
	.quad	0x3fd9355475a31a4c              # double 0.39388000000000001
	.quad	0x3fdf83b60285ec3e              # double 0.49241400000000002
	.quad	0x3fb4fa69be09bb6b              # double 0.081946000000000005
	.quad	0x3fe45712a0ec7432              # double 0.635629
	.quad	0x3fc11fb3fa6defc8              # double 0.13378000000000001
	.quad	0x3fecba08398a6549              # double 0.89770899999999998
	.quad	0x3fcebc9cd3e0bd45              # double 0.24013100000000001
	.quad	0x3fe5176ff3ade226              # double 0.659111
	.quad	0x3fc46455eaee2004              # double 0.15931200000000001
	.quad	0x3feb26a22b3892ef              # double 0.84846600000000005
	.quad	0x3fb8b3f63c31df76              # double 0.096495999999999998
	.quad	0x3fd42085b18548aa              # double 0.31448500000000001
	.quad	0x3fd8c842fa509396              # double 0.38722299999999998
	.quad	0x3fd7c7da1ec4e725              # double 0.37157299999999999
	.quad	0x3feed970b49e01de              # double 0.96404299999999998
	.quad	0x3fef384fd2a62aa2              # double 0.97562400000000005
	.quad	0x3feb73e24febd09e              # double 0.85789599999999999
	.quad	0x3fdd81a5870da5db              # double 0.461038
	.quad	0x3fe46be596c82e02              # double 0.63817100000000004
	.quad	0x3fa5fb9389b52008              # double 0.042935000000000001
	.quad	0x3fe504dfce3150db              # double 0.65684500000000001
	.quad	0x3fefe9b5a63f9a4a              # double 0.99727900000000003
	.quad	0x3fd0e297396d0918              # double 0.26383000000000001
	.quad	0x3fefea6c1a048e04              # double 0.99736599999999997
	.quad	0x3fe30941c8216c61              # double 0.59487999999999996
	.quad	0x3fe58288051c9f73              # double 0.672184
	.quad	0x3fdf11947cfa26a2              # double 0.48544799999999999
	.quad	0x3fe99cdc443914f5              # double 0.80039800000000005
	.quad	0x3fee413db7f17375              # double 0.94546399999999997
	.quad	0x3fe472474538ef35              # double 0.63895000000000002
	.quad	0x3fc1192ea52ef912              # double 0.13358100000000001
	.quad	0x3fe6e8be2f7b17ce              # double 0.71591099999999996
	.quad	0x3fc0bc72e275ab7e              # double 0.13075100000000001
	.quad	0x3fe76d15ad106ee3              # double 0.73206599999999999
	.quad	0x3fe89c0229a5ebb7              # double 0.76904399999999995
	.quad	0x3fe86c9e236c15d3              # double 0.76325900000000002
	.quad	0x3fe9708461f9f01c              # double 0.79498500000000005
	.quad	0x3fd7fe718a86d71f              # double 0.37490499999999999
	.quad	0x3fef8acc0bdcad15              # double 0.98569300000000004
	.quad	0x3fec2dc4c9c90c4e              # double 0.88058700000000001
	.quad	0x3fd28123810e8859              # double 0.289132
	.quad	0x3fac4b90214ad363              # double 0.055264000000000001
	.quad	0x3febda2b5a20ddc6              # double 0.87038199999999999
	.quad	0x3fceb4d8ba40d90e              # double 0.239894
	.quad	0x3fee229845dc8323              # double 0.94172299999999998
	.quad	0x3fee8e0221426fe7              # double 0.95483499999999999
	.quad	0x3fded451fc4c1659              # double 0.481709
	.quad	0x3fcbc4651f3e89a9              # double 0.21693100000000001
	.quad	0x3fe19f53825e13b2              # double 0.55069900000000005
	.quad	0x3fe90d8ec95bff04              # double 0.78290499999999996
	.quad	0x3fb6c343b70ef566              # double 0.088916999999999996
	.quad	0x3fe5766c6de76428              # double 0.67070600000000002
	.quad	0x3fa31bbcf4e874c9              # double 0.037321
	.quad	0x3fee8c9539b88872              # double 0.95466099999999998
	.quad	0x3fd89d7ba6698bb5              # double 0.38461200000000001
	.quad	0x3fe2cdbbe0157eed              # double 0.58761399999999997
	.quad	0x3fd75a9eb2074ea9              # double 0.36490600000000001
	.quad	0x3fde8bbd3804534c              # double 0.47727900000000001
	.quad	0x3fe71dc725c3dee8              # double 0.72238500000000005
	.quad	0x3fee1da37ef5a965              # double 0.94111800000000001
	.quad	0x3fee98ac9f2fdb90              # double 0.95613700000000001
	.quad	0x3fe3c200c0f01fb8              # double 0.61743199999999998
	.quad	0x3fc1063e07a28bb1              # double 0.13300300000000001
	.quad	0x3fc6b0e1b4bb5e0f              # double 0.17727299999999999
	.quad	0x3fdd924f227d028a              # double 0.46205499999999999
	.quad	0x3fa7cac8e68e3ef3              # double 0.046469000000000003
	.quad	0x3fe338cb8e086bdf              # double 0.60068299999999997
	.quad	0x3fe7877681669ced              # double 0.735286
	.quad	0x3fd940c8472c0e7c              # double 0.39457900000000001
	.quad	0x3fe4e3d3e4ef0282              # double 0.65281100000000003
	.quad	0x3fdb5058dde7a744              # double 0.42677900000000002
	.quad	0x3fe350c804102ff9              # double 0.60361100000000001
	.quad	0x3fcdd46b26bf876a              # double 0.233045
	.quad	0x3fd941cc532a4980              # double 0.39464100000000002
	.quad	0x3fb6fdc9c4da9004              # double 0.089810000000000001
	.quad	0x3fd1b6aa4b9884c7              # double 0.27677400000000002
	.quad	0x3fe573eab367a0f9              # double 0.6704
	.quad	0x3fe6c45cbbc2b94e              # double 0.71147000000000005
	.quad	0x3fe64725c3dee782              # double 0.69618500000000005
	.quad	0x3fea787ad080b674              # double 0.82720700000000002
	.quad	0x3fe3c4bf4cb1897a              # double 0.61776699999999996
	.quad	0x3fb4c63f141205bc              # double 0.08115
	.quad	0x3fdbaa3ad18d25ee              # double 0.43226500000000001
	.quad	0x3fc27a6bd6e8af81              # double 0.14436099999999999
	.quad	0x3fb219652bd3c361              # double 0.070699999999999999
	.quad	0x3fc61f85d744f5d3              # double 0.17283699999999999
	.quad	0x3fe5b4edb2f661f2              # double 0.67833600000000005
	.quad	0x3fb80346dc5d6388              # double 0.093799999999999994
	.quad	0x3fc2038194c01605              # double 0.140732
	.quad	0x3fca48c7192ea52f              # double 0.205346
	.quad	0x3fc0bd09e12a51e3              # double 0.130769
	.quad	0x3fc5a36e2eb1c433              # double 0.16905000000000001
	.quad	0x3fe7065f9591cd1c              # double 0.71952799999999995
	.quad	0x3fe621059ea57215              # double 0.69153100000000001
	.quad	0x3fb817b95a294142              # double 0.094112000000000001
	.quad	0x3feb6ef3d3a1d324              # double 0.857294
	.quad	0x3fbb50b0f27bb2ff              # double 0.1067
	.quad	0x3fcc5668c2613900              # double 0.221387
	.quad	0x3fe27570c564f97f              # double 0.57683600000000002
	.quad	0x3fea23bff8a8f3aa              # double 0.81686400000000003
	.quad	0x3fe6e8ea39c51dac              # double 0.71593200000000001
	.quad	0x3fd75e9185cee17a              # double 0.365147
	.quad	0x3fcedadb8348f53c              # double 0.24105399999999999
	.quad	0x3fd58ad688377186              # double 0.33659899999999998
	.quad	0x3fea7a05143bf727              # double 0.82739499999999999
	.quad	0x3fea84ad794a6eb9              # double 0.82869599999999999
	.quad	0x3fe0e5c2d2780779              # double 0.52804700000000004
	.quad	0x3fd1477bbf93ff26              # double 0.26998800000000001
	.quad	0x3fe9f92af9a8cdea              # double 0.811666
	.quad	0x3fd3dc55000c953a              # double 0.31032300000000002
	.quad	0x3fef25e785b5b707              # double 0.97337700000000004
	.quad	0x3fbc90c4dec1c1d7              # double 0.111584
	.quad	0x3fe61676640a6b94              # double 0.69024200000000002
	.quad	0x3f9e7a311e85fd05              # double 0.029763000000000001
	.quad	0x3fee1ab0856e696a              # double 0.94075799999999998
	.quad	0x3fe7526b723ee1bd              # double 0.72881099999999999
	.quad	0x3fe30d5842b734b5              # double 0.59537899999999999
	.quad	0x3fd1fa615a8deb10              # double 0.28090700000000002
	.quad	0x3fef0ac5c13fd0d0              # double 0.97006499999999996
	.quad	0x3fea1f14983d7907              # double 0.81629399999999996
	.quad	0x3fe4ba3ec02f2f98              # double 0.64773499999999995
	.quad	0x3fd7f2ae07e5a78f              # double 0.37418699999999999
	.quad	0x3fe5efa615a8deb1              # double 0.685504
	.quad	0x3fd7df7e80389f84              # double 0.37301600000000001
	.quad	0x3fdf3775b8130165              # double 0.48776000000000003
	.quad	0x3fe8f9314445aa2e              # double 0.78041899999999997
	.quad	0x3fd376b3bb83cf2d              # double 0.30412
	.quad	0x3fe7e8fd199bb279              # double 0.74719100000000005
	.quad	0x3fa17f62b6ae7d56              # double 0.034174999999999997
	.quad	0x3fdf32db1e9f2778              # double 0.487479
	.quad	0x3fc68650e779207d              # double 0.17597399999999999
	.quad	0x3fce8a47ecfe9b7c              # double 0.238595
	.quad	0x3fd5ab5c39bcba30              # double 0.338584
	.quad	0x3fd926634117f844              # double 0.39296799999999998
	.quad	0x3febc185058dde7a              # double 0.86737299999999995
	.quad	0x3fdd8344c37e6f72              # double 0.46113700000000002
	.quad	0x3fcf76cce5f7403e              # double 0.245813
	.quad	0x3fdddcad14a0a0f5              # double 0.46659400000000001
	.quad	0x3fcf614df8b15726              # double 0.24515700000000001
	.quad	0x3faf442c7fbacb43              # double 0.061067000000000003
	.quad	0x3fe06fc371da37ef              # double 0.51364299999999996
	.quad	0x3fdf906466b1e5c1              # double 0.49318800000000002
	.quad	0x3fb077ff151e7536              # double 0.064330999999999999
	.quad	0x3fdb5d462c343b71              # double 0.427568
	.quad	0x3fd3be0589acbc8c              # double 0.308473
	.quad	0x3fbe3d1cc100e6b0              # double 0.11812
	.quad	0x3fcc460ed80a17b1              # double 0.220888
	.quad	0x3fbe33df2a9d627c              # double 0.117979
	.quad	0x3f9fda4052d666aa              # double 0.031106000000000002
	.quad	0x3fe6b6933a0407cc              # double 0.70978699999999995
	.quad	0x3fd4198288051c9f              # double 0.31405699999999998
	.quad	0x3fe9af9ebe9c8861              # double 0.80268799999999996
	.quad	0x3fea8b5aa715831f              # double 0.829511
	.quad	0x3febd3671ac14c66              # double 0.869556
	.quad	0x3fef8de093532e7b              # double 0.98606899999999997
	.quad	0x3fc1e3c968943e10              # double 0.139764
	.quad	0x3fbb43201040bfe4              # double 0.106493
	.quad	0x3fe79930be0ded29              # double 0.73745000000000005
	.quad	0x3fb279fec99f1ae3              # double 0.072174000000000002
	.quad	0x3fe5354c122749f1              # double 0.66275600000000001
	.quad	0x3fcd083dbc23315d              # double 0.22681399999999999
	.quad	0x3fed4463065f9592              # double 0.91459800000000002
	.quad	0x3fe7d81adea89763              # double 0.74512999999999996
	.quad	0x3fe5456d5cfaacda              # double 0.66472500000000001
	.quad	0x3fe0d872f33ca31e              # double 0.52642199999999995
	.quad	0x3fd611409a240315              # double 0.34480300000000003
	.quad	0x3fbda76d97b30f8c              # double 0.11583599999999999
	.quad	0x3fe3db3397dd00f7              # double 0.62050799999999995
	.quad	0x3fd575c8d9f9053a              # double 0.335314
	.quad	0x3fe681d3aa369fcf              # double 0.70334799999999997
	.quad	0x3fdf04f2ae07e5a8              # double 0.48467700000000002
	.quad	0x3fd5b65668c26139              # double 0.339254
	.quad	0x3fcf97edc7ef177a              # double 0.24682399999999999
	.quad	0x3fd2273d5bab2181              # double 0.28364499999999998
	.quad	0x3fe69d8c6d612c6b              # double 0.70673200000000003
	.quad	0x3fe5df7403dddb12              # double 0.683527
	.quad	0x3fe6bc27631b584b              # double 0.71046799999999999
	.quad	0x3f95cd91eeaa6d26              # double 0.021291999999999998
	.quad	0x3fc641ede1198aec              # double 0.17388700000000001
	.quad	0x3fe880a9de8b3b32              # double 0.765706
	.quad	0x3fed4b1cc9646280              # double 0.91541899999999998
	.quad	0x3fecca18bd66277c              # double 0.89966999999999996
	.quad	0x3feb5c1615ebfa8f              # double 0.85499099999999995
	.quad	0x3fe9a81ba7fc32ec              # double 0.80177100000000001
	.quad	0x3fe9f33a8a3f8983              # double 0.81094100000000002
	.quad	0x3fee9b38d60a6330              # double 0.95644799999999996
	.quad	0x3fe59c12f09d8c6d              # double 0.67530199999999996
	.quad	0x3fe22be27179bfdf              # double 0.56785699999999995
	.quad	0x3fe6f6837f7be122              # double 0.71759200000000001
	.quad	0x3fc22a8869c66d37              # double 0.14192299999999999
	.quad	0x3fe23161a1db877b              # double 0.56852800000000003
	.quad	0x3fe18e9b38d60a63              # double 0.54865799999999998
	.quad	0x3fd7280ae1049236              # double 0.361819
	.quad	0x3fea76c050bd87b5              # double 0.82699599999999995
	.quad	0x3fef790fb65668c2              # double 0.98352799999999996
	.quad	0x3fdb672fba01eeee              # double 0.42817300000000003
	.quad	0x3fe396e9bbf0dc77              # double 0.61217200000000005
	.quad	0x3fd3ab21815a07b3              # double 0.30731999999999998
	.quad	0x3fec9733226c3b92              # double 0.89345699999999995
	.quad	0x3fd38e15011904b4              # double 0.30554700000000001
	.quad	0x3fdcf2c7325918a0              # double 0.452318
	.quad	0x3fef5e785b5b7069              # double 0.98028199999999998
	.quad	0x3fed50a244630660              # double 0.91609300000000004
	.quad	0x3fefab21815a07b3              # double 0.98963999999999996
	.quad	0x3fe6603b3e9a6f82              # double 0.69924699999999995
	.quad	0x3fe0988094e5d5b2              # double 0.51861599999999997
	.quad	0x3fd8b7995ee136e7              # double 0.38620599999999999
	.quad	0x3fe962ac322291fb              # double 0.79329499999999997
	.quad	0x3fb3a41e57d9dba9              # double 0.076723
	.quad	0x3fcab9ecf6380022              # double 0.20879900000000001
	.quad	0x3fe468e820e62995              # double 0.63780599999999998
	.quad	0x3fdf0d9513f8db49              # double 0.48520400000000002
	.quad	0x3fd951f3e89a88ad              # double 0.39562700000000001
	.quad	0x3fc528848387df5d              # double 0.165299
	.quad	0x3fdb75d9a0f0a5f0              # double 0.429068
	.quad	0x3fc99008205ff1d8              # double 0.199708
	.quad	0x3fd6393682730c67              # double 0.347242
	.quad	0x3fd2cc89b0ee49f5              # double 0.293734
	.quad	0x3feb351deefe4ffd              # double 0.85023400000000005
	.quad	0x3febcc165907d912              # double 0.86866299999999996
	.quad	0x3fc2dae3e6c4c597              # double 0.14730499999999999
	.quad	0x3fc74ccab3edd8b6              # double 0.182031
	.quad	0x3fc4a1be2b4959e6              # double 0.161186
	.quad	0x3fd01f8e3ac0c62e              # double 0.25192599999999998
	.quad	0x3fdc672756861e93              # double 0.44379600000000002
	.quad	0x3fd38b8f14db5958              # double 0.30539300000000003
	.quad	0x3fed4564f97edc7f              # double 0.91472100000000001
	.quad	0x3fe122f6a50d6b23              # double 0.53551800000000005
	.quad	0x3fe8656cd6c2efd4              # double 0.76238099999999997
	.quad	0x3fe60e1f7d73c925              # double 0.68922399999999995
	.quad	0x3fcdfe64f54d1e97              # double 0.23432600000000001
	.quad	0x3fefcb6c7a7c9de0              # double 0.99358199999999996
	.quad	0x3fe61ebc83a96d4c              # double 0.69125199999999998
	.quad	0x3fcdc4199fe43676              # double 0.232547
	.quad	0x3fdf19695d91ab8f              # double 0.48592600000000002
	.quad	0x3fedcc55432873bd              # double 0.93119300000000005
	.quad	0x3fa8b955f78359bc              # double 0.048288999999999999
	.quad	0x3fe398676a7264a1              # double 0.61235399999999995
	.quad	0x3fe6c896dd26b724              # double 0.71198600000000001
	.quad	0x3fd82e9468017119              # double 0.37784299999999998
	.quad	0x3fe5818c5c9a34ca              # double 0.67206399999999999
	.quad	0x3fe8b23358f2e05d              # double 0.77175300000000002
	.quad	0x3fe1ad5bee3d5fdd              # double 0.55241200000000001
	.quad	0x3fefcfaeff5c6c12              # double 0.99410200000000004
	.quad	0x3fe464f54d1e96c4              # double 0.637324
	.quad	0x3fe96e88df37329c              # double 0.79474299999999997
	.quad	0x3fd5a3f8982cb210              # double 0.33813300000000002
	.quad	0x3fce404a72ead927              # double 0.23633699999999999
	.quad	0x3fd14638c9752978              # double 0.26991100000000001
	.quad	0x3fe47ae9ab29e4d6              # double 0.64000400000000002
	.quad	0x3fe21af5ba2be059              # double 0.56579100000000004
	.quad	0x3feef505d0fa58f7              # double 0.96740999999999999
	.quad	0x3fd85393250b5244              # double 0.38010100000000002
	.quad	0x3fb44ad794a6eb92              # double 0.079267000000000004
	.quad	0x3fd55985ad538ac2              # double 0.33358900000000002
	.quad	0x3fdfbd3c36113405              # double 0.495925
	.quad	0x3fd27c914b167ec8              # double 0.28885300000000003
	.quad	0x3febe5f9591cd1c8              # double 0.87182300000000001
	.quad	0x3fec9b30728e92d5              # double 0.89394399999999996
	.quad	0x3fe1df86e3b46fdf              # double 0.55853600000000003
	.quad	0x3fcc5b9628cbd124              # double 0.22154499999999999
	.quad	0x3fe9b1183b60285f              # double 0.80286800000000003
	.quad	0x3feb2e0c17657753              # double 0.84937099999999999
	.quad	0x3fe52480e8c8abd6              # double 0.66070600000000002
	.quad	0x3fd6f8a4c1ebc83b              # double 0.35892600000000002
	.quad	0x3fed1ac79702e664              # double 0.90951899999999996
	.quad	0x3fecf7531db445ed              # double 0.90519099999999997
	.quad	0x3fd855fbb517a461              # double 0.38024799999999997
	.quad	0x3fed9ae0c1765775              # double 0.92515599999999998
	.quad	0x3fdd43a2163fdd66              # double 0.45725300000000002
	.quad	0x3fefd6d5cfaacd9f              # double 0.99497500000000005
	.quad	0x3fd320ab71327243              # double 0.298869
	.quad	0x3fe3aa2a0a958538              # double 0.61452200000000001
	.quad	0x3fe9ad4f5903a754              # double 0.80240599999999995
	.quad	0x3fd654ac29bf162b              # double 0.34891800000000001
	.quad	0x3fc1fbbd7b2031cf              # double 0.14049500000000001
	.quad	0x3fda4812be48a58b              # double 0.41064899999999999
	.quad	0x3fc50cd423d9231c              # double 0.16445399999999999
	.quad	0x3fe73a5a038194c0              # double 0.72587299999999999
	.quad	0x3facd0bb6ed67770              # double 0.056279999999999997
	.quad	0x3fef2f251c193b3a              # double 0.97450499999999995
	.quad	0x3fe2bf6c2699c7bd              # double 0.58586700000000003
	.quad	0x3fea6b5f5f0b2852              # double 0.82560699999999998
	.quad	0x3fd79a0ad8a11666              # double 0.36877700000000002
	.quad	0x3fe48ceb356da017              # double 0.64220200000000005
	.quad	0x3fdd4ed2cbea4ebe              # double 0.45793600000000001
	.quad	0x3fe08ea5b530ced5              # double 0.51741300000000001
	.quad	0x3fd123f24d8fd5cb              # double 0.26781899999999997
	.quad	0x3fd2a686e7e62dc7              # double 0.29141400000000001
	.quad	0x3fdeb13dfb0d51f8              # double 0.47956799999999999
	.quad	0x3fe81c6b05319829              # double 0.75346900000000006
	.quad	0x3fe3e2bcf91a32b1              # double 0.62142799999999998
	.quad	0x3fd5b163baba7b91              # double 0.33895199999999998
	.quad	0x3fe898def416bdb2              # double 0.76866100000000004
	.quad	0x3fd587f88765ba6f              # double 0.336424
	.quad	0x3fe73239a38fbca1              # double 0.724881
	.quad	0x3fd34766c6de7642              # double 0.30123299999999997
	.quad	0x3fe16aab042528ae              # double 0.54427099999999995
	.quad	0x3fe78aaa7ded6ba9              # double 0.73567700000000003
	.quad	0x3fe714c660a20147              # double 0.72128599999999998
	.quad	0x3faca48f96e15875              # double 0.055943
	.quad	0x3fea7b4c3c18b503              # double 0.82755100000000004
	.quad	0x3fee06d0d49949e9              # double 0.93833200000000005
	.quad	0x3fed576683c297c0              # double 0.91691900000000003
	.quad	0x3fc76cacd184c272              # double 0.183004
	.quad	0x3fd7cd29131ec0b5              # double 0.37189699999999998
	.quad	0x3fc96b76709fa54c              # double 0.19859199999999999
	.quad	0x3fbbf75968512232              # double 0.10924300000000001
	.quad	0x3fec5846e8f29d41              # double 0.88577600000000001
	.quad	0x3fe31bd4067cf1c3              # double 0.59714699999999998
	.quad	0x3fe894b9cb6848bf              # double 0.76815500000000003
	.quad	0x3fcd0c4dec1c1d6d              # double 0.226938
	.quad	0x3f95e13b18dac259              # double 0.021367000000000001
	.quad	0x3fe0661f18c9fb61              # double 0.51246599999999998
	.quad	0x3fdca34ca0c282c7              # double 0.447467
	.quad	0x3fe7be0bd44998d0              # double 0.74194899999999997
	.quad	0x3fea810624dd2f1b              # double 0.82825000000000004
	.quad	0x3feebd07c84b5dcc              # double 0.96057499999999995
	.quad	0x3faa231832fcac8e              # double 0.051048999999999997
	.quad	0x3fecba3a8e71476b              # double 0.897733
	.quad	0x3fe63f3387160957              # double 0.69521500000000003
	.quad	0x3fc5e49b1fab96f2              # double 0.171039
	.quad	0x3fe95898b2e9ccb8              # double 0.79206500000000002
	.quad	0x3fe803afb7e90ff9              # double 0.75044999999999995
	.quad	0x3fe5c2c3c9eecbfb              # double 0.68002499999999999
	.quad	0x3fae5e892253111f              # double 0.059315
	.quad	0x3fe862845996744b              # double 0.76202599999999998
	.quad	0x3fdd86b9c304ccee              # double 0.46134799999999998
	.quad	0x3fd1b6e503fb3743              # double 0.27678799999999998
	.quad	0x3fde6c050bd87b57              # double 0.47534300000000002
	.quad	0x3fef7687b139c94f              # double 0.98321899999999995
	.quad	0x3fe5a8e71476af8a              # double 0.67686800000000003
	.quad	0x3fe208333fc86cec              # double 0.56350100000000003
	.quad	0x3fd71e215336deb9              # double 0.36121399999999998
	.quad	0x3fe684e831ad2136              # double 0.70372400000000002
	.quad	0x3fea02a12f901084              # double 0.81282100000000001
	.quad	0x3fc6d07852f7f499              # double 0.17823700000000001
	.quad	0x3fee283d35eb7458              # double 0.94241200000000002
	.quad	0x3fe9bed740c4156e              # double 0.80454599999999998
	.quad	0x3fb03f3e0370cdc8              # double 0.063464999999999994
	.quad	0x3fec987c6327ed85              # double 0.89361400000000002
	.quad	0x3fdfc7c0f4517614              # double 0.49656699999999998
	.quad	0x3fdc8a4c1ebc83a9              # double 0.44594099999999998
	.quad	0x3fce94bbe4473cd5              # double 0.23891399999999999
	.quad	0x3fce9c4545846e8f              # double 0.239144
	.quad	0x3fd79a1fd1569f49              # double 0.368782
	.quad	0x3fe3b1c219eb6391              # double 0.61544900000000002
	.quad	0x3feeef8ad2567989              # double 0.96674099999999996
	.quad	0x3fd44467381d7dbf              # double 0.31667499999999998
	.quad	0x3fd639d5e4a38327              # double 0.34727999999999998
	.quad	0x3fdbadcd2d44dca9              # double 0.43248300000000001
	.quad	0x3f90b8066c2acb86              # double 0.016327000000000001
	.quad	0x3fe4d5a187a4a490              # double 0.65107800000000005
	.quad	0x3feee7ea5f84cad5              # double 0.96580999999999994
	.quad	0x3fa767b1c0010c6f              # double 0.045712999999999997
	.quad	0x3fed5349be8ff328              # double 0.91641700000000004
	.quad	0x3feeffbce4217d28              # double 0.96871799999999996
	.quad	0x3fe0bd03968d759f              # double 0.52307300000000001
	.quad	0x3fae5ecc3e3193f7              # double 0.059317000000000002
	.quad	0x3fd5cb10342aa9f8              # double 0.34051900000000002
	.quad	0x3fe0567ba237cdcd              # double 0.51055700000000004
	.quad	0x3fc5cc964628027e              # double 0.17030600000000001
	.quad	0x3fe4f5afaf859429              # double 0.65499099999999999
	.quad	0x3fa2174c4cdfaca3              # double 0.035333999999999997
	.quad	0x3fd4c8754f3775b8              # double 0.324735
	.quad	0x3fd9709fa54c5543              # double 0.39749899999999999
	.quad	0x3fba0b6f9fcb0c02              # double 0.10173699999999999
	.quad	0x3feb3dc69f8c21e2              # double 0.85129100000000002
	.quad	0x3fcf9a176ddaceee              # double 0.24689
	.quad	0x3fef3c21187e7c07              # double 0.97609000000000001
	.quad	0x3fe49e16d6dc1a48              # double 0.64429800000000004
	.quad	0x3fe2ec0f88333fc8              # double 0.59131599999999995
	.quad	0x3fe9cf4c6e6d9be5              # double 0.80655500000000002
	.quad	0x3fef662dc6e2a800              # double 0.98122299999999996
	.quad	0x3f9806f262888b54              # double 0.023463999999999999
	.quad	0x3fdb01c4fc1df330              # double 0.421983
	.quad	0x3f96b7ed41b75a75              # double 0.022186000000000001
	.quad	0x3fda305100a393ee              # double 0.40919899999999998
	.quad	0x3fe9157eed45e918              # double 0.78387399999999996
	.quad	0x3fc7511dffc5479d              # double 0.18216299999999999
	.quad	0x3f9ef30a4e379b78              # double 0.030224000000000001
	.quad	0x3fe2c86ad2dcb146              # double 0.58696499999999996
	.quad	0x3fe0c3914f483cb0              # double 0.52387300000000003
	.quad	0x3fe7c3d89ce4a7b5              # double 0.74265700000000001
	.quad	0x3fb714ca925fe975              # double 0.090161000000000005
	.quad	0x3feed50225742dcf              # double 0.96350199999999996
	.quad	0x3fb2220bc382a130              # double 0.070832000000000006
	.quad	0x3fd65b7cfe586013              # double 0.34933399999999998
	.quad	0x3fe5fa63736cdf26              # double 0.68681499999999995
	.quad	0x3feb10ff97247454              # double 0.84582500000000004
	.quad	0x3fd47b4a2339c0ec              # double 0.320025
	.quad	0x3fe06bbfd71b0468              # double 0.51315299999999997
	.quad	0x3fe4983b60285ec4              # double 0.64358300000000002
	.quad	0x3fe413122b7baecd              # double 0.627328
	.quad	0x3fb5c91d14e3bcd3              # double 0.085099999999999995
	.quad	0x3fda50870110a138              # double 0.411165
	.quad	0x3fc9709b738e6d16              # double 0.19874900000000001
	.quad	0x3fe0440f23897204              # double 0.50830799999999998
	.quad	0x3fd803254e6e221d              # double 0.37519200000000003
	.quad	0x3fc77bbf93ff25e5              # double 0.18346399999999999
	.quad	0x3fe0367e414e7ee9              # double 0.50665199999999999
	.quad	0x3fe990b630a91538              # double 0.79891500000000004
	.quad	0x3fe58d2806af46aa              # double 0.673481
	.quad	0x3fba6b0d9513f8db              # double 0.103196
	.quad	0x3fccd40aaeafab54              # double 0.225221
	.quad	0x3fe4b3ebbfd71b04              # double 0.64696299999999995
	.quad	0x3fc97329c347e8cd              # double 0.198827
	.quad	0x3fd681b21c475e63              # double 0.35166599999999998
	.quad	0x3fd7b6b2af145522              # double 0.37052600000000002
	.quad	0x3fd6202107b78466              # double 0.34571099999999999
	.quad	0x3fa4204f2ae07e5a              # double 0.039308999999999997
	.quad	0x3fdc85b9e8c47a18              # double 0.445662
	.quad	0x3fe16b1c432ca57a              # double 0.54432499999999995
	.quad	0x3fcfe2584f4c6e6e              # double 0.24909500000000001
	.quad	0x3fee566adb402d17              # double 0.94804900000000003
	.quad	0x3f75831f03d145d8              # double 0.0052519999999999997
	.quad	0x3fe1ae8e1d6494d5              # double 0.55255799999999999
	.quad	0x3fda48d7e02645e5              # double 0.41069600000000001
	.quad	0x3fb2c4b4d056c509              # double 0.073314000000000004
	.quad	0x3fdab074a771c971              # double 0.41702
	.quad	0x3fc1fe2a3cea6c1a              # double 0.140569
	.quad	0x3feb8c9752977c89              # double 0.86091200000000001
	.quad	0x3fc1405f6ba0620b              # double 0.13477700000000001
	.quad	0x3faf0b8cfbfc6541              # double 0.060635000000000001
	.quad	0x3fe399a415f45e0b              # double 0.61250499999999997
	.quad	0x3fb4714fce746cb9              # double 0.079853999999999994
	.quad	0x3fc4b1a2a4db163c              # double 0.16167100000000001
	.quad	0x3f89eadd590c0ad0              # double 0.012655
	.quad	0x3fe21ab6d00b45ae              # double 0.56576099999999996
	.quad	0x3fbda858793dd97f              # double 0.11584999999999999
	.quad	0x3fdcb3c81908e582              # double 0.44847300000000001
	.quad	0x3fe0dbb59ddc1e79              # double 0.52681999999999995
	.quad	0x3fe5a15b9a5a89b9              # double 0.67594699999999996
	.quad	0x3fdc2189bd8383ae              # double 0.43954700000000002
	.quad	0x3fc9fb2edfe75bc4              # double 0.20297799999999999
	.quad	0x3fc11b0ccbc05d53              # double 0.13363800000000001
	.quad	0x3fe72d9cf13cee9e              # double 0.72431800000000002
	.quad	0x3fed72862f5989df              # double 0.92022999999999999
	.quad	0x3fe022a90cd423d9              # double 0.50423099999999998
	.quad	0x3fe5626916440f24              # double 0.66826300000000005
	.quad	0x3fc12d44dca8e2e3              # double 0.13419400000000001
	.quad	0x3fe25eb95e5aff2a              # double 0.57406299999999999
	.quad	0x3fe4ea854477ff15              # double 0.65362799999999999
	.quad	0x3fe90d2e514c22ee              # double 0.78285899999999997
	.quad	0x3fe7d6a593a2df93              # double 0.74495199999999995
	.quad	0x3fe00435efa615a9              # double 0.50051400000000001
	.quad	0x3fa613d31b9b66f9              # double 0.043119999999999999
	.quad	0x3fe2f63e4abe6a33              # double 0.59255899999999995
	.quad	0x3fe25cb9a9da597d              # double 0.57381899999999997
	.quad	0x3f9b8ed1bf7ad4b2              # double 0.026911999999999998
	.quad	0x3fc09f40a2877ee5              # double 0.12986
	.quad	0x3fe97ad6cb535009              # double 0.79624499999999998
	.quad	0x3fd138fffbce4218              # double 0.26910400000000001
	.quad	0x3fd31fab96f21f6d              # double 0.29880800000000002
	.quad	0x3fe028bb0a2ca9ac              # double 0.50497199999999998
	.quad	0x3fde13d74d594f27              # double 0.46996100000000002
	.quad	0x3fe5e7f4dbdf8f47              # double 0.68456499999999998
	.quad	0x3fd66b723ee1bd1f              # double 0.35030800000000001
	.quad	0x3fe0bb7952d234ec              # double 0.52288500000000004
	.quad	0x3fbb3acd5b6805a3              # double 0.106366
	.quad	0x3fe976dfc5cdd50b              # double 0.79576100000000005
	.quad	0x3fd1ebbba55d1c3b              # double 0.28001300000000001
	.quad	0x3fdc09c3ce2089e3              # double 0.43809599999999999
	.quad	0x3fe23ff69014b59a              # double 0.57030800000000004
	.quad	0x3fe42d8a116659d1              # double 0.63055899999999998
	.quad	0x3fd692146a1a500d              # double 0.35266599999999998
	.quad	0x3fd0a59c065b63d4              # double 0.26010800000000001
	.quad	0x3fe510b1feeb2d0a              # double 0.65828799999999998
	.quad	0x3fe94964628027d9              # double 0.79020900000000005
	.quad	0x3fdae2de8709741d              # double 0.420097
	.quad	0x3fd9a450acc0bdcb              # double 0.40065400000000001
	.quad	0x3fe4b3ebbfd71b04              # double 0.64696299999999995
	.quad	0x3fa39d5e4a383276              # double 0.038309999999999997
	.quad	0x3fe386594af4f0d8              # double 0.61014999999999997
	.quad	0x3fe3311e85fd04a3              # double 0.599746
	.quad	0x3fc8bb3c81908e58              # double 0.193214
	.quad	0x3fef70196d8f4f94              # double 0.98243400000000002
	.quad	0x3fe44cb7d41743e9              # double 0.63436499999999996
	.quad	0x3fe363a7daa4fca4              # double 0.60591499999999998
	.quad	0x3fcc450268900c52              # double 0.220856
	.quad	0x3fe3d9641f644956              # double 0.62028700000000003
	.quad	0x3fc868a936c58eeb              # double 0.190694
	.quad	0x3fec4ea6c1a048e0              # double 0.88460099999999997
	.quad	0x3fe62a77a2cecc81              # double 0.69268399999999997
	.quad	0x3fcec36544fe36d2              # double 0.240338
	.quad	0x3fe19b823c85c24c              # double 0.55023299999999997
	.quad	0x3fd03211cb039ef1              # double 0.253056
	.quad	0x3fe8db7cfe586013              # double 0.77679299999999996
	.quad	0x3fc23f9a49c2c1b1              # double 0.142566
	.quad	0x3fe6b8583621fafd              # double 0.71000300000000005
	.quad	0x3fdd74080f98fa37              # double 0.46020699999999998
	.quad	0x3fe3839abf338716              # double 0.609815
	.quad	0x3fe8330d7386099a              # double 0.75623200000000002
	.quad	0x3fddcaa326e11559              # double 0.46549299999999999
	.quad	0x3fe5015a07b352a8              # double 0.65641499999999997
	.quad	0x3fe0e4f3343fa2ad              # double 0.52794799999999997
	.quad	0x3fedde84f09528f2              # double 0.93341300000000005
	.quad	0x3fd0e52157689ca2              # double 0.26398500000000003
	.quad	0x3fb47fcb923a29c7              # double 0.080074999999999993
	.quad	0x3feac1355475a31a              # double 0.83608499999999997
	.quad	0x3fe1a821f2990f30              # double 0.55177399999999999
	.quad	0x3fd28fde2ef4e011              # double 0.29003099999999998
	.quad	0x3fca7bdcf0307f24              # double 0.20690500000000001
	.quad	0x3fe70b75ea67e847              # double 0.72014900000000004
	.quad	0x3fed92e62131a8ef              # double 0.92418199999999995
	.quad	0x3fe9a6d4801f7510              # double 0.80161499999999997
	.quad	0x3fbce6299524bfd3              # double 0.112887
	.quad	0x3fe35a8deb0fadf3              # double 0.60480400000000001
	.quad	0x3fd413f077ccc038              # double 0.31371700000000002
	.quad	0x3fe8af294dd72368              # double 0.77138200000000001
	.quad	0x3fe72433508f648c              # double 0.72316899999999995
	.quad	0x3fee93ad5bee3d60              # double 0.95552700000000001
	.quad	0x3feb31769a91105e              # double 0.84978799999999999
	.quad	0x3fe895ebfa8f7db7              # double 0.76830100000000001
	.quad	0x3fefd377e1b8ed1c              # double 0.994564
	.quad	0x3fd69635610adcd3              # double 0.35291800000000001
	.quad	0x3fc349f94855da27              # double 0.150695
	.quad	0x3feae8b7e4de3b8a              # double 0.84090799999999999
	.quad	0x3fe6e47dc37a3db4              # double 0.71539200000000003
	.quad	0x3fea43dee78183f9              # double 0.82078499999999999
	.quad	0x3fd547cb70ac3a86              # double 0.332507
	.quad	0x3fc4ae9680e06530              # double 0.161578
	.quad	0x3fd118090b417ca2              # double 0.267092
	.quad	0x3fdf96c82e019b0b              # double 0.49357800000000002
	.quad	0x3fea8129cbab649d              # double 0.82826699999999998
	.quad	0x3fe298c3b0c4588a              # double 0.581148
	.quad	0x3fe062b6ae7d566d              # double 0.51205000000000001
	.quad	0x3fb5b8348f53c57a              # double 0.084842
	.quad	0x3fe6c7e49b1fab97              # double 0.71190100000000001
	.quad	0x3fe7a3ee1bd1ed9e              # double 0.738761
	.quad	0x3fd94091c087442c              # double 0.39456599999999997
	.quad	0x3fd276145953586d              # double 0.28845700000000002
	.quad	0x3fe0e28ed5f138bd              # double 0.52765600000000001
	.quad	0x3fe6aa53fc0096ff              # double 0.70829200000000003
	.quad	0x3fd4400b88ca3e7d              # double 0.316409
	.quad	0x3fe5f251c193b3a7              # double 0.68583000000000005
	.quad	0x3fec96af038e29fa              # double 0.89339400000000002
	.quad	0x3fe5e1522a6f3f53              # double 0.683755
	.quad	0x3fccbaf102363b25              # double 0.22445499999999999
	.quad	0x3fe62046c764ae00              # double 0.69144000000000005
	.quad	0x3fd64f50a02b8412              # double 0.34859099999999998
	.quad	0x3fc0650e779207d5              # double 0.128084
	.quad	0x3fd6bc4d22c881e4              # double 0.35524299999999998
	.quad	0x3fe8b6bb1290257d              # double 0.77230600000000005
	.quad	0x3fa3afb7e90ff972              # double 0.038449999999999998
	.quad	0x3fa2960b6f9fcb0c              # double 0.036301
	.quad	0x3fdfa9b499d0203e              # double 0.49473299999999998
	.quad	0x3fb752c9d16fc9bc              # double 0.091106999999999994
	.quad	0x3fcfd2630ec31162              # double 0.248608
	.quad	0x3fd91240746455eb              # double 0.391739
	.quad	0x3fed713f077ccc03              # double 0.92007399999999995
	.quad	0x3fefd31b9b66f933              # double 0.99451999999999995
	.quad	0x3fac6b484d76ab58              # double 0.055506
	.quad	0x3feac24a276b7ed4              # double 0.83621699999999998
	.quad	0x3fbda8049667b5f2              # double 0.115845
	.quad	0x3fc70079a2834d27              # double 0.179702
	.quad	0x3fe292f09d8c6d61              # double 0.58043699999999998
	.quad	0x3fe960d887ebf22c              # double 0.79307199999999999
	.quad	0x3fc7f7403dddb121              # double 0.18723300000000001
	.quad	0x3fd34dc22ab25b31              # double 0.30162099999999997
	.quad	0x3fd339192641b329              # double 0.30036000000000002
	.quad	0x3fc7117b5286b591              # double 0.18022099999999999
	.quad	0x3fe73e6e653868fd              # double 0.72637099999999999
	.quad	0x3fe6066e43aa79bc              # double 0.68828500000000004
	.quad	0x3fe57e90ff972474              # double 0.67169999999999996
	.quad	0x3fec3eb7cbb3c819              # double 0.882656
	.quad	0x3fec2c3c9eecbfb1              # double 0.88039999999999996
	.quad	0x3fe372de43ed959a              # double 0.60777199999999998
	.quad	0x3fee03fb3743632c              # double 0.93798599999999998
	.quad	0x3fbec79702e6644e              # double 0.12023300000000001
	.quad	0x3fdda31a4bdba0a5              # double 0.46307999999999999
	.quad	0x3fa8767d34df04de              # double 0.047779000000000002
	.quad	0x3fc3502ababead4f              # double 0.15088399999999999
	.quad	0x3fefa85caafbc1ad              # double 0.98930200000000001
	.quad	0x3feb4ae21101b003              # double 0.85289099999999995
	.quad	0x3fe3efdc9c4da900              # double 0.62302999999999997
	.quad	0x3fe7c426351deefe              # double 0.74269399999999997
	.quad	0x3feedfe542e557de              # double 0.96483099999999999
	.quad	0x3fe4acd184c27200              # double 0.646096
	.quad	0x3fe9f13ad5bee3d6              # double 0.810697
	.quad	0x3fb545c78a6dacac              # double 0.083096000000000003
	.quad	0x3fea8e8858ff7597              # double 0.82989900000000005
	.quad	0x3feb88aefb2aae29              # double 0.86043499999999995
	.quad	0x3fc36bc1eff9f87f              # double 0.151726
	.quad	0x3fedcb4aec8d5c74              # double 0.93106599999999994
	.quad	0x3fc565b20b8066c3              # double 0.16716600000000001
	.quad	0x3fee80d5e8d54110              # double 0.95322700000000005
	.quad	0x3fcf271bcdbbe015              # double 0.24338099999999999
	.quad	0x3fef7bc3c5bd0e13              # double 0.98385800000000001
	.quad	0x3feca4a05dd8f92b              # double 0.895096
	.quad	0x3fb0af922962cfd9              # double 0.065179000000000001
	.quad	0x3feb01eeed8904f7              # double 0.84398600000000001
	.quad	0x3fc6c6d612c6ac21              # double 0.17794299999999999
	.quad	0x3fa296b3354c1227              # double 0.036305999999999998
	.quad	0x3fefb5f5f0b28523              # double 0.990962
	.quad	0x3fe2e35a426bb55b              # double 0.59025300000000003
	.quad	0x3fc0a9478c868ba0              # double 0.130166
	.quad	0x3fdf8d3ae685db77              # double 0.49299500000000002
	.quad	0x3fe983f705857aff              # double 0.79735900000000004
	.quad	0x3fd27e8ccdd93c47              # double 0.28897400000000001
	.quad	0x3fe39858bc59b802              # double 0.61234699999999997
	.quad	0x3fedea7ce0fc2eba              # double 0.93487399999999998
	.quad	0x3fcb0ee49f51697f              # double 0.211392
	.quad	0x3feae22c45026890              # double 0.84010899999999999
	.quad	0x3fafe86833c6002a              # double 0.06232
	.quad	0x3fc51897a67a52ac              # double 0.16481299999999999
	.quad	0x3fc5ba0a52695960              # double 0.16974
	.quad	0x3fcdb23571d1d474              # double 0.23200100000000001
	.quad	0x3fe14f0d844d013b              # double 0.54090000000000005
	.quad	0x3fbb606b7aa25d8d              # double 0.10693999999999999
	.quad	0x3fe5faebc408d8ed              # double 0.68688000000000005
	.quad	0x3fddcc70867ad8e4              # double 0.46560299999999999
	.quad	0x3fc9944241c3efae              # double 0.19983699999999999
	.quad	0x3f8c03361565c2d2              # double 0.013677999999999999
	.quad	0x3fa60913a4f8726d              # double 0.043038
	.quad	0x3fd0a1554fbdad75              # double 0.25984699999999999
	.quad	0x3fddc9e6687f455a              # double 0.46544799999999997
	.quad	0x3fcb182235b4edb3              # double 0.211674
	.quad	0x3fefd0a02b841249              # double 0.99421700000000001
	.quad	0x3fc3ebaf102363b2              # double 0.15562999999999999
	.quad	0x3fed1a415f45e0b5              # double 0.90945500000000001
	.quad	0x3fe5318548a9bcfd              # double 0.66229499999999997
	.quad	0x3fc3a9c99285a922              # double 0.15361900000000001
	.quad	0x3fc752977c88e79b              # double 0.18220800000000001
	.quad	0x3feceb228dc981bf              # double 0.90370300000000003
	.quad	0x3fc4efed634549b6              # double 0.163572
	.quad	0x3fce90cd423d9232              # double 0.23879400000000001
	.quad	0x3fed9ed7c6fbd274              # double 0.92564000000000001
	.quad	0x3fe621fd1569f490              # double 0.69164899999999996
	.quad	0x3fe5820e6299524c              # double 0.672126
	.quad	0x3fd4ba51a005c465              # double 0.32387199999999999
	.quad	0x3fda6ef8055fbb51              # double 0.41302299999999997
	.quad	0x3fd0942917507e9e              # double 0.25904300000000002
	.quad	0x3fdcc3b927d45a60              # double 0.44944600000000001
	.quad	0x3fe077164c729f5a              # double 0.51453700000000002
	.quad	0x3fda51a86940357a              # double 0.41123399999999999
	.quad	0x3f8cc6c54bcf0b6b              # double 0.014050999999999999
	.quad	0x3fe27681669ced0b              # double 0.57696599999999998
	.quad	0x3fab6672fba01eef              # double 0.053516000000000001
	.quad	0x3fcbb39e279dd3bb              # double 0.216419
	.quad	0x3fe2e106ab14ec20              # double 0.58996899999999997
	.quad	0x3fe05527e5215769              # double 0.51039500000000004
	.quad	0x3fea3636f3b213e4              # double 0.81911800000000001
	.quad	0x3fde685553ef6b5d              # double 0.47511799999999998
	.quad	0x3fed8b3b320535ca              # double 0.92324600000000001
	.quad	0x3fe4bc925785f8d3              # double 0.64801900000000001
	.quad	0x3fd5038194c01605              # double 0.32833899999999999
	.quad	0x3fb96b11c6d1e109              # double 0.099290000000000003
	.quad	0x3fe02d38476f2a5a              # double 0.50551999999999997
	.quad	0x3fef113404ea4a8c              # double 0.97084999999999999
	.quad	0x3fcf77c02afdda8c              # double 0.245842
	.quad	0x3fe73ba775fb2ee0              # double 0.72603200000000001
	.quad	0x3fca06e9ff0cbaf9              # double 0.20333599999999999
	.quad	0x3fed2bb6672fba02              # double 0.91158600000000001
	.quad	0x3fd2d50a88effe2a              # double 0.29425299999999999
	.quad	0x3fc9a11a975afaf8              # double 0.20022899999999999
	.quad	0x3fe6097204295a6c              # double 0.68865299999999996
	.quad	0x3fd513e3e29307af              # double 0.32933899999999999
	.quad	0x3feada09cc319c5a              # double 0.83911599999999997
	.quad	0x3fc542b302f72b45              # double 0.166098
	.quad	0x3fd020642396073e              # double 0.25197700000000001
	.quad	0x3feb4f6dfc5cdd51              # double 0.85344600000000004
	.quad	0x3f96b8f9b13165d4              # double 0.022190000000000001
	.quad	0x3fd3912dba4d6e48              # double 0.30573600000000001
	.quad	0x3febcf483cafb3b7              # double 0.86905299999999996
	.quad	0x3fdcf74cd31769a9              # double 0.452594
	.quad	0x3fdc2f76e6106ab1              # double 0.44039699999999998
	.quad	0x3fe51a08bfc2224f              # double 0.65942800000000001
	.quad	0x3fcb84d338f79852              # double 0.21499099999999999
	.quad	0x3fe81d8622c45027              # double 0.75360400000000005
	.quad	0x3fe763f9a49c2c1b              # double 0.73095399999999999
	.quad	0x3fb524f227d028a2              # double 0.082595000000000001
	.quad	0x3fcb220791c4b902              # double 0.211976
	.quad	0x3faa4873365881a1              # double 0.051333999999999998
	.quad	0x3fe8f1cda2b5a20e              # double 0.77951700000000002
	.quad	0x3fe8406e19b90eaa              # double 0.75786500000000001
	.quad	0x3fd9bd230b9dc2f4              # double 0.402169
	.quad	0x3fd6c7c0f4517614              # double 0.35594199999999998
	.quad	0x3fde5d0b73d188f4              # double 0.47442899999999999
	.quad	0x3fdbf45176145953              # double 0.43678699999999998
	.quad	0x3fd7d8665e02ea96              # double 0.372583
	.quad	0x3fef394317acc4f0              # double 0.97574000000000005
	.quad	0x3fec4d4024b33db0              # double 0.88443000000000005
	.quad	0x3fe2de84f09528f2              # double 0.58966300000000005
	.quad	0x3fe80b32ce89656f              # double 0.75136700000000001
	.quad	0x3fd939bcba301217              # double 0.39414900000000003
	.quad	0x3fe3d45a5fc7e6b4              # double 0.619672
	.quad	0x3fe29b9d7fd82774              # double 0.58149600000000001
	.quad	0x3fefb78ab0c88a48              # double 0.991155
	.quad	0x3fdad594f26aec07              # double 0.41928599999999999
	.quad	0x3fcc8d1958969a0b              # double 0.223056
	.quad	0x3fec8f7985271bce              # double 0.89251400000000003
	.quad	0x3fedc21187e7c06e              # double 0.92993999999999999
	.quad	0x3fe30bc7b45f17be              # double 0.59518800000000005
	.quad	0x3fc5107746887a8d              # double 0.16456499999999999
	.quad	0x3fd344178705425f              # double 0.30103099999999999
	.quad	0x3fd82b1b36bd2b6f              # double 0.37763099999999999
	.quad	0x3fad579af1886df8              # double 0.057308999999999999
	.quad	0x3fe2febf22c01e69              # double 0.59359700000000004
	.quad	0x3fcdbd512ec6bce8              # double 0.23233999999999999
	.quad	0x3fb5f3519bd4067d              # double 0.085744000000000001
	.quad	0x3fe6b506dd69d302              # double 0.70959799999999995
	.quad	0x3fefa1f080303c08              # double 0.988518
	.quad	0x3fc4a4b124d099e1              # double 0.161276
	.quad	0x3fe6ad40aaeafab5              # double 0.70864899999999997
	.quad	0x3fd33065f9591cd2              # double 0.29982900000000001
	.quad	0x3fd0d86ec17ebaf1              # double 0.26321
	.quad	0x3fd146ed245b291c              # double 0.26995400000000003
	.quad	0x3fe8606b7aa25d8d              # double 0.76176999999999995
	.quad	0x3fd950e779207d4e              # double 0.395563
	.quad	0x3fea5fdef8487b9a              # double 0.82420300000000002
	.quad	0x3f856b00ffda4053              # double 0.010458
	.quad	0x3fe9653eb399f5e0              # double 0.793609
	.quad	0x3feeef5caf2d7f95              # double 0.96671899999999999
	.quad	0x3feefd523b3636f4              # double 0.96842300000000003
	.quad	0x3fca446b69db65ed              # double 0.20521300000000001
	.quad	0x3fd5cc4ac6cdaf4b              # double 0.34059400000000001
	.quad	0x3fe08639d5e4a383              # double 0.51638499999999998
	.quad	0x3fb4a915379fa97e              # double 0.080704999999999998
	.quad	0x3fbaa161e4f765fe              # double 0.10402500000000001
	.quad	0x3fce44fa05143bf7              # double 0.23648
	.quad	0x3fe45b8dc55000c9              # double 0.63617599999999996
	.quad	0x3fd43bea91d9b1b8              # double 0.31615700000000002
	.quad	0x3fef6db7281fd9ba              # double 0.98214299999999999
	.quad	0x3fb61847f562174c              # double 0.086307999999999996
	.quad	0x3fe8884a515ce9e6              # double 0.76663700000000001
	.quad	0x3fef62b8c75c4a84              # double 0.98080100000000003
	.quad	0x3fb2337a80cf9e38              # double 0.071097999999999995
	.quad	0x3f7a2b5a20ddc619              # double 0.0063889999999999997
	.quad	0x3fc2691ea78af3e4              # double 0.14383299999999999
	.quad	0x3fe5f31b152f3c2e              # double 0.68592600000000004
	.quad	0x3feab40f66a55087              # double 0.83448
	.quad	0x3fe8ece789e774ef              # double 0.77891900000000003
	.quad	0x3fc1151e75360d02              # double 0.13345699999999999
	.quad	0x3feb2a53fc0096ff              # double 0.84891700000000003
	.quad	0x3fe7d06bbdbe3c10              # double 0.74419199999999996
	.quad	0x3fe2be27179bfdf8              # double 0.58571200000000001
	.quad	0x3fede3d5fdcdf698              # double 0.93406199999999995
	.quad	0x3fdd5935fc3b4f61              # double 0.45856999999999998
	.quad	0x3fe1e5907d912557              # double 0.55927300000000002
	.quad	0x3fe2a4b9884c6a3c              # double 0.58260800000000001
	.quad	0x3f82cbea4ebdd335              # double 0.0091780000000000003
	.quad	0x3fe8bc7b45f17bd9              # double 0.77300800000000003
	.quad	0x3fd23e9ea1405708              # double 0.28507199999999999
	.quad	0x3fd6371da37ef5a9              # double 0.34711399999999998
	.quad	0x3fcd4080f98fa377              # double 0.22853100000000001
	.quad	0x3fd2916872b020c5              # double 0.29012500000000002
	.quad	0x3fa9209edbf8b9bb              # double 0.049077000000000003
	.quad	0x3fe31e3eaf6837f8              # double 0.59744200000000003
	.quad	0x3fe4bcd573647bab              # double 0.64805100000000004
	.quad	0x3fbc2773e24febd1              # double 0.10997700000000001
	.quad	0x3fdc6013660e51d2              # double 0.44336399999999998
	.quad	0x3fc7e3a7daa4fca4              # double 0.186635
	.quad	0x3fdca3fcc9ea9a3d              # double 0.44750899999999999
	.quad	0x3fe5927d45a5fc7e              # double 0.67413199999999995
	.quad	0x3fe9a9e4d5d80e49              # double 0.80198899999999995
	.quad	0x3fd48d9b5e95b78d              # double 0.32114300000000001
	.quad	0x3fc395aaf78feef6              # double 0.153005
	.quad	0x3fef9d27c3936827              # double 0.98793399999999997
	.quad	0x3fecf1327243137b              # double 0.904443
	.quad	0x3fbad7625204af92              # double 0.104849
	.quad	0x3fdad3a1d323fee3              # double 0.41916700000000001
	.quad	0x3fec81a36e2eb1c4              # double 0.89082499999999997
	.quad	0x3fe84254a3c64346              # double 0.75809700000000002
	.quad	0x3fde94e1a3f4666f              # double 0.47783700000000001
	.quad	0x3fe80431bde82d7b              # double 0.75051199999999996
	.quad	0x3fe6f38e6d15ad10              # double 0.71723099999999995
	.quad	0x3fe0087ca643cc08              # double 0.50103600000000004
	.quad	0x3fe2dd5d3dc8b86b              # double 0.58952199999999999
	.quad	0x3fe62b21815a07b3              # double 0.69276499999999996
	.quad	0x3f9c60029f16b11c              # double 0.027709999999999999
	.quad	0x3fede273929ed395              # double 0.93389299999999997
	.quad	0x3fe830e7ff583a54              # double 0.75597000000000003
	.quad	0x3fe6f6b5d462c344              # double 0.71761600000000003
	.quad	0x3fe944b2b777d0f2              # double 0.789636
	.quad	0x3fdfd26fa3fcc9eb              # double 0.49721900000000002
	.quad	0x3fecb417ca2120e2              # double 0.896984
	.quad	0x3fd0692f6e82949a              # double 0.25641999999999998
	.quad	0x3fdec9c0a8d21bc1              # double 0.48106399999999999
	.quad	0x3fc6ebedfa43fe5d              # double 0.17907500000000001
	.quad	0x3fe6f0329802c0a5              # double 0.71682100000000004
	.quad	0x3fd6613d31b9b670              # double 0.34968500000000002
	.quad	0x3fd6cd3e0bd44999              # double 0.35627700000000001
	.quad	0x3fdcc0096feb4a66              # double 0.44922099999999998
	.quad	0x3fdcdb37c99ae925              # double 0.45088
	.quad	0x3fe17304039abf34              # double 0.54529000000000005
	.quad	0x3fed09e55c0fcb4f              # double 0.90745799999999999
	.quad	0x3fe887faa044ae86              # double 0.76659900000000003
	.quad	0x3fe141205bc01a37              # double 0.53920000000000001
	.quad	0x3fe6ecfc829cfdd2              # double 0.71642899999999998
	.quad	0x3fcd301eabbcb1cd              # double 0.22803100000000001
	.quad	0x3fa8ba6266fd651b              # double 0.048297
	.quad	0x3fc984f4c6e6d9be              # double 0.19936999999999999
	.quad	0x3fe1b4eb9a176ddb              # double 0.55333500000000002
	.quad	0x3fc3049235f80991              # double 0.14857699999999999
	.quad	0x3feef8d4fdf3b646              # double 0.96787500000000004
	.quad	0x3fd8ec9e236c15d3              # double 0.38944200000000001
	.quad	0x3fb2f2b66b6177ea              # double 0.074015999999999998
	.quad	0x3feed6f75d9a0f0a              # double 0.96374099999999996
	.quad	0x3feabb7739f340d5              # double 0.83538400000000002
	.quad	0x3fe9b9f77292c493              # double 0.80395099999999997
	.quad	0x3fe399ac79702e66              # double 0.61250899999999997
	.quad	0x3fcf1a86940357a3              # double 0.24299699999999999
	.quad	0x3fe4f041461b6d44              # double 0.65432800000000002
	.quad	0x3fe454c33b539325              # double 0.635347
	.quad	0x3fd6c7c5260f5e42              # double 0.35594300000000001
	.quad	0x3fe7bc9eecbfb15b              # double 0.74177499999999996
	.quad	0x3feea539756c93a7              # double 0.95766899999999999
	.quad	0x3fdbb40f66a55087              # double 0.432865
	.quad	0x3fe4719934efcbd5              # double 0.63886699999999996
	.quad	0x3fe89aed56b00ffe              # double 0.76891200000000004
	.quad	0x3fa70d413122b7bb              # double 0.045023000000000001
	.quad	0x3fe619e94ab1d4fa              # double 0.69066300000000003
	.quad	0x3fe678a4c1ebc83b              # double 0.70222700000000005
	.quad	0x3fc6500d5e8d5411              # double 0.174318
	.quad	0x3feb834f3fd933e3              # double 0.85977899999999996
	.quad	0x3f9ea67e846a5d6c              # double 0.029932
	.quad	0x3fe0be4473cd5736              # double 0.52322599999999997
	.quad	0x3fd9b8fde2ef4e01              # double 0.401916
	.quad	0x3fe9d992428d434a              # double 0.807809
	.quad	0x3f7fbe76c8b43958              # double 0.0077499999999999999
	.quad	0x3fdf543aeab7995f              # double 0.48951600000000001
	.quad	0x3fbe24aada33bd9d              # double 0.117747
	.quad	0x3fc09068986fcdee              # double 0.12940699999999999
	.quad	0x3fe9d15ce9e5e248              # double 0.80680700000000005
	.quad	0x3fdae264e48626f6              # double 0.420068
	.quad	0x3fe4b61fe21d96ea              # double 0.64723200000000003
	.quad	0x3fa6ab9b23dd54da              # double 0.044277999999999998
	.quad	0x3fd0f926c7eae5bd              # double 0.26520700000000003
	.quad	0x3fe9d7eed45e9186              # double 0.80760900000000002
	.quad	0x3fccb0c88a47ecff              # double 0.22414500000000001
	.quad	0x3feb0aa00192a737              # double 0.84504699999999999
	.quad	0x3feb28848387df5d              # double 0.84869600000000001
	.quad	0x3fcc22ab25b317f0              # double 0.219808
	.quad	0x3fe05099e0e73605              # double 0.50983900000000004
	.quad	0x3fce76c050bd87b5              # double 0.23799899999999999
	.quad	0x3f873b85e80bed74              # double 0.011344
	.quad	0x3fc0a9930be0ded3              # double 0.13017500000000001
	.quad	0x3fcfa9435ac8a372              # double 0.24735299999999999
	.quad	0x3fe62d234eb9a177              # double 0.69301000000000001
	.quad	0x3feb8f7985271bce              # double 0.86126400000000003
	.quad	0x3fd815b9a5a89b95              # double 0.37632599999999999
	.quad	0x3fea1c9b41398634              # double 0.81599200000000005
	.quad	0x3fe76d2aa5c5f7c6              # double 0.73207599999999995
	.quad	0x3fe87123c42a66dc              # double 0.76381100000000001
	.quad	0x3fcdddb1209edbf9              # double 0.23332800000000001
	.quad	0x3fe9c9b845564b66              # double 0.80587399999999998
	.quad	0x3fd5854477ff151e              # double 0.33625899999999997
	.quad	0x3fd0dc725c3dee78              # double 0.26345499999999999
	.quad	0x3fed3e9ea1405708              # double 0.91389399999999998
	.quad	0x3fe32465a57646ae              # double 0.59819299999999997
	.quad	0x3fcaaf9a8cdea034              # double 0.208484
	.quad	0x3fe25e5d18090b41              # double 0.57401899999999995
	.quad	0x3fe15aab47410731              # double 0.54231799999999997
	.quad	0x3fdabb0e5e679464              # double 0.41766700000000001
	.quad	0x3feece63a5c1c609              # double 0.96269400000000004
	.quad	0x3fe7a9fe004b7f5a              # double 0.73950099999999996
	.quad	0x3fd7a83f4eca686e              # double 0.36964399999999997
	.quad	0x3fdd14f483cafb3b              # double 0.45440399999999997
	.quad	0x3fd9f5e84f09528f              # double 0.40563399999999999
	.quad	0x3feed0e12e83a10a              # double 0.96299800000000002
	.quad	0x3fc2d2bb23571d1d              # double 0.14705599999999999
	.quad	0x3fdc7192ea52ef91              # double 0.44443199999999999
	.quad	0x3fee48d5c74751ce              # double 0.94639099999999998
	.quad	0x3fe4379d909f1f15              # double 0.63178900000000004
	.quad	0x3fe431e5c0b99913              # double 0.63109099999999996
	.quad	0x3fe5b58afc47e49b              # double 0.67841099999999999
	.quad	0x3fe29b52007dd441              # double 0.58145999999999998
	.quad	0x3fc8420f6f08cc57              # double 0.18951599999999999
	.quad	0x3fe23ea0ba1f4b1f              # double 0.57014500000000001
	.quad	0x3fe0ec99f1ae2da5              # double 0.52888199999999996
	.quad	0x3fd0c22ee41919ac              # double 0.26185199999999997
	.quad	0x3fddc669057d1783              # double 0.46523500000000001
	.quad	0x3fe08130164840e1              # double 0.51576999999999995
	.quad	0x3feabc33f85510d4              # double 0.83547400000000004
	.quad	0x3febc5c9a34ca0c3              # double 0.86789400000000005
	.quad	0x3fd14ff865d7cb2e              # double 0.27050600000000002
	.quad	0x3fd23ab430f49492              # double 0.284833
	.quad	0x3fc3992428d434a0              # double 0.153111
	.quad	0x3fc6cc814d72799a              # double 0.178116
	.quad	0x3fe942fc69728a61              # double 0.78942699999999999
	.quad	0x3fec9a47a9e2bcf9              # double 0.89383299999999999
	.quad	0x3fdfdddb1209edc0              # double 0.49791600000000003
	.quad	0x3fd1941c8216c615              # double 0.27466499999999999
	.quad	0x3fb5c1f85d744f5d              # double 0.084990999999999997
	.quad	0x3fab5dcc63f14120              # double 0.053449999999999998
	.quad	0x3fcb31550ca1cef2              # double 0.21244299999999999
	.quad	0x3fd7beec39799e52              # double 0.37102800000000002
	.quad	0x3fdfbb01c92ddbdb              # double 0.49578899999999998
	.quad	0x3fc0edf612407464              # double 0.13226199999999999
	.quad	0x3fe15b35b0bbf50e              # double 0.54238399999999998
	.quad	0x3fe985ec3dab5c3a              # double 0.79759800000000003
	.quad	0x3fe3271fff79c843              # double 0.598526
	.quad	0x3fcab0b7c3504c49              # double 0.20851800000000001
	.quad	0x3fe85985ad538ac2              # double 0.76092800000000005
	.quad	0x3fe24080f98fa377              # double 0.57037400000000005
	.quad	0x3fd0a18372e6a769              # double 0.25985799999999998
	.quad	0x3fbbffcdab191dde              # double 0.109372
	.quad	0x3fd6b927d45a5fc8              # double 0.35505100000000001
	.quad	0x3fdf3ab430f49492              # double 0.487958
	.quad	0x3fd3ac322291fb40              # double 0.30738500000000002
	.quad	0x3fe05ea465a57647              # double 0.51155300000000004
	.quad	0x3fecd9103c8e25c8              # double 0.90149699999999999
	.quad	0x3fd84195cc857f30              # double 0.37900299999999998
	.quad	0x3fdf7d06bbdbe3c1              # double 0.492006
	.quad	0x3feb7f7dfa00e27e              # double 0.85931299999999999
	.quad	0x3fd88a009f623077              # double 0.38342300000000001
	.quad	0x3fc945069a4df480              # double 0.19741900000000001
	.quad	0x3fed6f911cf355ce              # double 0.91986900000000005
	.quad	0x3fe6413fd0d0678c              # double 0.695465
	.quad	0x3fa20663c74fb54a              # double 0.035205
	.quad	0x3fef3461309c7ffe              # double 0.97514400000000001
	.quad	0x3fe5b5bd512ec6bd              # double 0.67843500000000001
	.quad	0x3fee6fc9bc771434              # double 0.95114600000000004
	.quad	0x3fc3bc558644523f              # double 0.15418499999999999
	.quad	0x3fe1b62413db7f17              # double 0.55348399999999998
	.quad	0x3fcef850df15a4ad              # double 0.241953
	.quad	0x3fdfbfb58d1526d9              # double 0.49607600000000002
	.quad	0x3fc4996b76709fa5              # double 0.16093199999999999
	.quad	0x3fe1c647778dd617              # double 0.555454
	.quad	0x3fe33edb7281fd9c              # double 0.60142300000000004
	.quad	0x3fd50121682f9442              # double 0.32819399999999999
	.quad	0x3f5c8a7a41e57d9e              # double 0.0017420000000000001
	.quad	0x3feaf98b71b8aa00              # double 0.84296199999999999
	.quad	0x3feb1c75818c5c9a              # double 0.84722399999999998
	.quad	0x3fec6deb95e5aff3              # double 0.88841800000000004
	.quad	0x3fcf96312f4cf4a5              # double 0.24677099999999999
	.quad	0x3fedd3ef6b5d462c              # double 0.93212099999999997
	.quad	0x3fd365b63d3e4ef0              # double 0.30308299999999999
	.quad	0x3fc5cb9a9da597d5              # double 0.17027600000000001
	.quad	0x3feaeb09635610ae              # double 0.84119100000000002
	.quad	0x3fd74bba12b5e52a              # double 0.36399700000000001
	.quad	0x3fd9a42aed139431              # double 0.40064499999999997
	.quad	0x3fe74e5f7403dddb              # double 0.72831699999999999
	.quad	0x3f9cac4b4d056c51              # double 0.028001000000000002
	.quad	0x3fe93b05faebc409              # double 0.78845500000000002
	.quad	0x3fc271f79420b3d5              # double 0.14410300000000001
	.quad	0x3f88622c45026890              # double 0.011906
	.quad	0x3fe2c39bcba30121              # double 0.58637799999999995
	.quad	0x3fd690ff97247454              # double 0.35260000000000002
	.quad	0x3fc8f449129888f8              # double 0.19495499999999999
	.quad	0x3fbe78183f91e647              # double 0.11902
	.quad	0x3fb6362a5e785b5b              # double 0.086763999999999994
	.quad	0x3fcaf1886df82b1f              # double 0.21049599999999999
	.quad	0x3fae34549b62c775              # double 0.058992999999999997
	.quad	0x3fda558ea7ce0fc3              # double 0.411472
	.quad	0x3fe2faa044ae85ba              # double 0.59309400000000001
	.quad	0x3fedee30caa326e1              # double 0.93532599999999999
	.quad	0x3fbe435696e58a33              # double 0.118215
	.quad	0x3fda64dc22ab25b3              # double 0.41240599999999999
	.quad	0x3fcc1f3a57eaa2a1              # double 0.21970300000000001
	.quad	0x3fda410f94c87981              # double 0.410221
	.quad	0x3fd3183f91e646f1              # double 0.29835499999999998
	.quad	0x3fe34cf4a558ea7d              # double 0.60314400000000001
	.quad	0x3fead851654d61b3              # double 0.83890600000000004
	.quad	0x3fe9b33764f11b61              # double 0.80312700000000004
	.quad	0x3fed70a5efe93187              # double 0.92000099999999996
	.quad	0x3fd4f559b3d07c85              # double 0.32747500000000002
	.quad	0x3fe68d8665e02ea9              # double 0.70477599999999996
	.quad	0x3fef8cbf2b239a39              # double 0.985931
	.quad	0x3fecc33721d53cde              # double 0.89883000000000002
	.quad	0x3fc529cbab649d39              # double 0.16533800000000001
	.quad	0x3fb967fd3f5b5fa2              # double 0.099242999999999997
	.quad	0x3fd47b890d5a5b96              # double 0.32003999999999999
	.quad	0x3fd8edcc20d5629e              # double 0.38951400000000003
	.quad	0x3fc432ebe596c82e              # double 0.157804
	.quad	0x3fe5df47f993d534              # double 0.68350599999999995
	.quad	0x3fccf440af1cb89d              # double 0.22620399999999999
	.quad	0x3fe042c5e2cdc012              # double 0.50815100000000002
	.quad	0x3fc3b291b823c85c              # double 0.153887
	.quad	0x3fc25a89b951c5c5              # double 0.14338799999999999
	.quad	0x3f8f76a2f48c2e77              # double 0.015363
	.quad	0x3f9cc6822ff08894              # double 0.028101000000000001
	.quad	0x3fcd795b35b0bbf5              # double 0.230266
	.quad	0x3fe166f9335d249e              # double 0.54381999999999997
	.quad	0x3fcef4e0114d2f5e              # double 0.24184800000000001
	.quad	0x3fedc9667b5f1bef              # double 0.93083499999999997
	.quad	0x3fc01a60d4562e0a              # double 0.125805
	.quad	0x3fef5803cd141a69              # double 0.97949399999999997
	.quad	0x3fd8d898b2e9ccb8              # double 0.38822000000000001
	.quad	0x3fb2caab8a5ce5b4              # double 0.073404999999999998
	.quad	0x3feab945308bb906              # double 0.83511599999999997
	.quad	0x3fd01e9f2778140e              # double 0.25186900000000001
	.quad	0x3fe51d1d4738a3b5              # double 0.65980399999999995
	.quad	0x3fc5e71044f1a198              # double 0.17111399999999999
	.quad	0x3fe17f0aa21a719b              # double 0.54675799999999997
	.quad	0x3fca21c8a7a41e58              # double 0.204156
	.quad	0x3fb361ed5ae1cde6              # double 0.075713000000000003
	.quad	0x3fc4aada33bd9cae              # double 0.161464
	.quad	0x3fe39e68a0d349bf              # double 0.61308700000000005
	.quad	0x3fdd77e1b8ed1bf8              # double 0.46044200000000002
	.quad	0x3fd99595feda6613              # double 0.39975500000000003
	.quad	0x3fd6780baa582dbe              # double 0.35107699999999997
	.quad	0x3fcf9fdbd2fa0d78              # double 0.24706600000000001
	.quad	0x3fca176577531db4              # double 0.20383899999999999
	.quad	0x3fd60ff540895d0b              # double 0.34472399999999997
	.quad	0x3fe5a2c881e4712e              # double 0.67612099999999997
	.quad	0x3fd279c842fa5094              # double 0.28868300000000002
	.quad	0x3fd729ed3953dea4              # double 0.36193399999999998
	.quad	0x3fea94573a797892              # double 0.83060800000000001
	.quad	0x3fcab4070329802c              # double 0.208619
	.quad	0x3fcc25204af92296              # double 0.219883
	.quad	0x3fd94bcad9ad85e0              # double 0.39525100000000002
	.quad	0x3feddb50f40e5a36              # double 0.93302200000000002
	.quad	0x3fec89070fbeb9e5              # double 0.89172700000000005
	.quad	0x3fd56d1e108c3f3e              # double 0.334785
	.quad	0x3fe1883ba3443d47              # double 0.54788000000000003
	.quad	0x3fbfb57c4e2f37fc              # double 0.123863
	.quad	0x3fb5a7f3cf70153c              # double 0.084594000000000003
	.quad	0x3fe60520d130df9c              # double 0.68812600000000002
	.quad	0x3fe6c9be8ff327aa              # double 0.71212699999999995
	.quad	0x3fd18e29f9ce8d97              # double 0.27430199999999999
	.quad	0x3fe1fb480a5accd5              # double 0.56192399999999998
	.quad	0x3fb3fd1dcd7060bb              # double 0.078080999999999998
	.quad	0x3faec7c957cd466f              # double 0.060117999999999998
	.quad	0x3fe71b25f633ce64              # double 0.72206400000000004
	.quad	0x3fc399d451fc4c16              # double 0.15313199999999999
	.quad	0x3fe3e0221426fe72              # double 0.62111000000000005
	.quad	0x3fe0d3a1d323fee3              # double 0.52583400000000002
	.quad	0x3fcdc06e19b90eaa              # double 0.232435
	.quad	0x3fc97d3910c2c5e3              # double 0.19913400000000001
	.quad	0x3febe95b78cc9a78              # double 0.87223600000000001
	.quad	0x3fe2bf8b9baa1512              # double 0.58588200000000001
	.quad	0x3fef7cfe58601366              # double 0.98400799999999999
	.quad	0x3fcb89c5e6ff7dfa              # double 0.215142
	.quad	0x3fd7c486ad2dcb14              # double 0.37136999999999998
	.quad	0x3fe96c7c957cd467              # double 0.794493
	.quad	0x3fe962bf11f926c8              # double 0.79330400000000001
	.quad	0x3fb0cf4a558ea7ce              # double 0.065662999999999999
	.quad	0x3fc1cc9ea9a3d2d8              # double 0.13905699999999999
	.quad	0x3fe19b9f98b71b8b              # double 0.55024700000000004
	.quad	0x3fe55bb7b6bb1290              # double 0.66744599999999998
	.quad	0x3fe19f2fdb8fde2f              # double 0.550682
	.quad	0x3fe7cdaf4adbc665              # double 0.74385800000000002
	.quad	0x3fdc17b0f6ad70e7              # double 0.438946
	.quad	0x3fd6cdcca70d1fa3              # double 0.35631099999999999
	.quad	0x3fef214f0520d131              # double 0.97281600000000001
	.quad	0x3fe3b62c77574f72              # double 0.61598799999999998
	.quad	0x3fab8561d4306e5d              # double 0.053752000000000001
	.quad	0x3fc372bcb5fe542e              # double 0.15193899999999999
	.quad	0x3fc6e1c58255b036              # double 0.17876500000000001
	.quad	0x3fee425aee631f8a              # double 0.9456
	.quad	0x3fea3fd71b046845              # double 0.82029300000000005
	.quad	0x3fc76616b54e2b06              # double 0.18280299999999999
	.quad	0x3fcfb42cc2d6a9c5              # double 0.24768599999999999
	.quad	0x3fe8c3265add9c28              # double 0.77382200000000001
	.quad	0x3fe3845dc8323359              # double 0.60990800000000001
	.quad	0x3fe7351159c49774              # double 0.72522799999999998
	.quad	0x3fd34eb13dfb0d52              # double 0.301678
	.quad	0x3fed97225b749add              # double 0.92469900000000005
	.quad	0x3fe6c0af1cb89d6b              # double 0.71102100000000001
	.quad	0x3fe32d83c6c97d8d              # double 0.59930600000000001
	.quad	0x3fe68244e93e1c9b              # double 0.70340199999999997
	.quad	0x3fc276d117b5286b              # double 0.14425099999999999
	.quad	0x3fd5991bc5586445              # double 0.33746999999999999
	.quad	0x3fe09a8262456f76              # double 0.51886100000000002
	.quad	0x3fd3c3c5bd0e12e8              # double 0.30882399999999999
	.quad	0x3fdc6b0531982880              # double 0.44403199999999998
	.quad	0x3fee7f0aa21a719b              # double 0.95300799999999997
	.quad	0x3fd4d86ec17ebaf1              # double 0.32571
	.quad	0x3fdba57214f0520d              # double 0.431973
	.quad	0x3fb9186db50f40e6              # double 0.098029000000000005
	.quad	0x3fc5197a24894c44              # double 0.16483999999999999
	.quad	0x3fd00cb295e9e1b1              # double 0.25077500000000003
	.quad	0x3fdb327243137b07              # double 0.424954
	.quad	0x3fd82fb5d031055c              # double 0.37791200000000003
	.quad	0x3feb46fbd273d5bb              # double 0.85241500000000003
	.quad	0x3fc11d798d8a979e              # double 0.133712
	.quad	0x3fea868db8bac711              # double 0.82892500000000002
	.quad	0x3fdd635610adcd2d              # double 0.45918799999999999
	.quad	0x3fd7b295e9e1b08a              # double 0.37027500000000002
	.quad	0x3fd40a7c5ac471b4              # double 0.31313999999999997
	.quad	0x3fd513d31b9b66f9              # double 0.32933499999999999
	.quad	0x3fd1b877ab324852              # double 0.27688400000000002
	.quad	0x3fd9d4dc65c70436              # double 0.403617
	.quad	0x3fe9ed5065732160              # double 0.81021900000000002
	.quad	0x3fd1988d2a1f8e3b              # double 0.27493600000000001
	.quad	0x3fe28ec311622813              # double 0.57992699999999997
	.quad	0x3fd55bab21815a08              # double 0.33372000000000002
	.quad	0x3fe21001d5c31594              # double 0.56445400000000001
	.quad	0x3fef362c77574f72              # double 0.97536299999999998
	.quad	0x3fdded2cbea4ebdd              # double 0.46760099999999999
	.quad	0x3fd2a35935fc3b4f              # double 0.29121999999999998
	.quad	0x3fec522424a276b8              # double 0.88502700000000001
	.quad	0x3fbfc27631b584b2              # double 0.124061
	.quad	0x3fe9a22706d50657              # double 0.80104399999999998
	.quad	0x3fe758f4f93bc0a0              # double 0.72960899999999995
	.quad	0x3fd45d6bebe1650a              # double 0.31820199999999998
	.quad	0x3fe14280ae104923              # double 0.53936799999999996
	.quad	0x3fe459ccfaeff5c7              # double 0.63596200000000003
	.quad	0x3fec0323358f2e06              # double 0.87538300000000002
	.quad	0x3fbe44fa05143bf7              # double 0.11824
	.quad	0x3fee4aa53fc00970              # double 0.94661200000000001
	.quad	0x3fec6d117b5286b6              # double 0.88831400000000005
	.quad	0x3fcffab10ba62670              # double 0.249838
	.quad	0x3febf255f3519bd4              # double 0.87333199999999999
	.quad	0x3fe148d5c74751ce              # double 0.54014099999999998
	.quad	0x3fecc40f23897204              # double 0.89893299999999998
	.quad	0x3fa99f1ae2da554c              # double 0.050042000000000003
	.quad	0x3febbb5e0f7fcfc4              # double 0.866622
	.quad	0x3fe5ccdb7ae5796c              # double 0.681257
	.quad	0x3fe5562e09fe8683              # double 0.66676999999999997
	.quad	0x3fe8150b955f7836              # double 0.75256900000000004
	.quad	0x3fbeec4a4095f245              # double 0.120793
	.quad	0x3fca116659d12cae              # double 0.203656
	.quad	0x3fdbdd00f776c482              # double 0.43536399999999997
	.quad	0x3fe8ce618ce2d1f2              # double 0.77519300000000002
	.quad	0x3fc716ebd4cfd08d              # double 0.18038699999999999
	.quad	0x3fe0163fdd65a145              # double 0.50271600000000005
	.quad	0x3fe0e4b2314013ec              # double 0.52791699999999997
	.quad	0x3fc642e9899bf594              # double 0.17391699999999999
	.quad	0x3fede8576cce5f74              # double 0.93461199999999999
	.quad	0x3fe818fe69270b07              # double 0.75305100000000003
	.quad	0x3fe1ec99f1ae2da5              # double 0.56013199999999996
	.quad	0x3fd9d377e1b8ed1c              # double 0.403532
	.quad	0x3fee2a5e785b5b70              # double 0.94267199999999995
	.quad	0x3fe4e5c4eb56fb8f              # double 0.65304799999999996
	.quad	0x3fe66351deefe500              # double 0.69962400000000002
	.quad	0x3fe8e6e86c6583e8              # double 0.77818699999999996
	.quad	0x3fee4fb549f94856              # double 0.94723000000000002
	.quad	0x3fea554fbdad7519              # double 0.82291400000000003
	.quad	0x3fc8f53c579f2346              # double 0.19498399999999999
	.quad	0x3f7e225fa658c4bd              # double 0.0073569999999999998
	.quad	0x3fdb7c1376d54973              # double 0.429448
	.quad	0x3feae0c38f366949              # double 0.83993700000000004
	.quad	0x3fcaf0f16f4384ba              # double 0.210478
	.quad	0x3fe58a7829068987              # double 0.673153
	.quad	0x3fc1dee78183f91e              # double 0.13961499999999999
	.quad	0x3fe5c10d7be9856a              # double 0.67981599999999998
	.quad	0x3fe3f7ccc0379314              # double 0.62399899999999997
	.quad	0x3fc9c169c23b7953              # double 0.201215
	.quad	0x3fc5debd9018e758              # double 0.17086000000000001
	.quad	0x3fe4544567125dd1              # double 0.63528700000000005
	.quad	0x3fe2ee71cda2b5a2              # double 0.59160699999999999
	.quad	0x3fc16d86ec17ebaf              # double 0.136155
	.quad	0x3fb106cca2db61bb              # double 0.06651
	.quad	0x3f7af07bfe7e1fc1              # double 0.0065770000000000004
	.quad	0x3fe6fccc03793144              # double 0.71835899999999997
	.quad	0x3fd9e6256366d7a5              # double 0.40467199999999998
	.quad	0x3fb44ab606b7aa26              # double 0.079265000000000002
	.quad	0x3fe08eef1bac2df1              # double 0.51744800000000002
	.quad	0x3fd58a7610279570              # double 0.33657599999999999
	.quad	0x3fc097fa5d28d003              # double 0.129638
	.quad	0x3fc56c3760bf5d79              # double 0.16736500000000001
	.quad	0x3fca4d2b2bfdb4cc              # double 0.20548
	.quad	0x3fc2874c8ffb8b26              # double 0.14475399999999999
	.quad	0x3feea63736cdf267              # double 0.95779000000000003
	.quad	0x3fb700ef1348b220              # double 0.089857999999999993
	.quad	0x3fd2649906cca2db              # double 0.28738999999999998
	.quad	0x3fed5c5f7c6759ab              # double 0.91752599999999995
	.quad	0x3fd30de093532e7b              # double 0.29772199999999999
	.quad	0x3fe3a63d816aceab              # double 0.61404300000000001
	.quad	0x3fa54ed2cbea4ebe              # double 0.041617000000000001
	.quad	0x3fe454d4024b33db              # double 0.635355
	.quad	0x3fd138de6ddf00ac              # double 0.269096
	.quad	0x3fdb37de939eadd6              # double 0.42528500000000002
	.quad	0x3fbacf95d4e8fb01              # double 0.10473
	.quad	0x3fef801b43526528              # double 0.98438800000000004
	.quad	0x3fd5c2efd438d1d9              # double 0.34002300000000002
	.quad	0x3fd6bf401c4fc1df              # double 0.35542299999999999
	.quad	0x3fb3d5bab21815a0              # double 0.077479999999999993
	.quad	0x3fb9edaec4a4095f              # double 0.101283
	.quad	0x3fed287e38eb0319              # double 0.91119300000000003
	.quad	0x3fd549667b5f1bef              # double 0.33260499999999998
	.quad	0x3fb031ceaf251c19              # double 0.063259999999999997
	.quad	0x3fe98999dcb5781c              # double 0.79804699999999995
	.quad	0x3fe88323358f2e06              # double 0.76600800000000002
	.quad	0x3fd657603925bb7b              # double 0.34908299999999998
	.quad	0x3fd03aafff36ac64              # double 0.25358199999999997
	.quad	0x3fd49018e757928e              # double 0.321295
	.quad	0x3fe9d3005814940c              # double 0.80700700000000002
	.quad	0x3fe1a5b749adc8fc              # double 0.55147900000000005
	.quad	0x3fe7dc50ce4ead0c              # double 0.74564399999999997
	.quad	0x3feac925785f8d2e              # double 0.83705399999999996
	.quad	0x3fe6c204f2ae07e6              # double 0.71118400000000004
	.quad	0x3fdef1cb89d6adf7              # double 0.48350799999999999
	.quad	0x3feb03126e978d50              # double 0.84412500000000001
	.quad	0x3fea3ccf28c79f66              # double 0.81992299999999996
	.quad	0x3fadad106ee30caa              # double 0.057960999999999999
	.quad	0x3fec9fa76534373f              # double 0.89448899999999998
	.quad	0x3fe12cffa7eb6bf4              # double 0.53674299999999997
	.quad	0x3fe88eabffcdab19              # double 0.76741599999999999
	.quad	0x3fd151f81a5870da              # double 0.27062799999999998
	.quad	0x3fbe8dc981beb181              # double 0.119351
	.quad	0x3fe64dd50a88effe              # double 0.69700099999999998
	.quad	0x3fdd8c36da87a073              # double 0.46168300000000001
	.quad	0x3fe8a11ec918e326              # double 0.76966800000000002
	.quad	0x3fd81359791819d2              # double 0.37618099999999999
	.quad	0x3fe1b8e086bdf4c3              # double 0.55381800000000003
	.quad	0x3f9b328b6d86ec18              # double 0.02656
	.quad	0x3fe18b3700474d9c              # double 0.54824399999999995
	.quad	0x3fc75a426bb55ac0              # double 0.18244199999999999
	.quad	0x3fe0ea39c51dabe2              # double 0.52859199999999995
	.quad	0x3fb09b1fab96f21f              # double 0.064866999999999994
	.quad	0x3fccd48882f0e0a8              # double 0.22523599999999999
	.quad	0x3fdde1d2178f68be              # double 0.46690799999999999
	.quad	0x3fd83d5fdcdf6988              # double 0.37874600000000003
	.quad	0x3f6f926c7eae5bc8              # double 0.0038539999999999998
	.quad	0x3fc303d145d85165              # double 0.14855399999999999
	.quad	0x3fe85c5718eb8950              # double 0.76127199999999995
	.quad	0x3fed6d6ba8c58687              # double 0.91960699999999995
	.quad	0x3fc50225742dcf46              # double 0.164128
	.quad	0x3fc493964a59c066              # double 0.16075400000000001
	.quad	0x3fb1774256bca537              # double 0.068225999999999995
	.quad	0x3fe751f601797cc4              # double 0.72875500000000004
	.quad	0x3fda8954a7f8012e              # double 0.414632
	.quad	0x3fdcf6b1a2a4db16              # double 0.45255699999999999
	.quad	0x3fcc9774256bca53              # double 0.22337199999999999
	.quad	0x3fa41700cd855971              # double 0.039238000000000002
	.quad	0x3fedcea077036c9c              # double 0.93147299999999999
	.quad	0x3fe6a1554fbdad75              # double 0.70719399999999999
	.quad	0x3fee81fd9ba1b196              # double 0.95336799999999999
	.quad	0x3fed75e2046c764b              # double 0.92064000000000001
	.quad	0x3fc0f6f8f041461b              # double 0.13253699999999999
	.quad	0x3fe3fb2aae297397              # double 0.62441000000000002
	.quad	0x3fad45a5fc7e6b40              # double 0.057172000000000001
	.quad	0x3fe05d744f5d3565              # double 0.51140799999999997
	.quad	0x3fa922fad6cb5350              # double 0.049095
	.quad	0x3fec96073de1e2df              # double 0.89331400000000005
	.quad	0x3fa1fa97e132b55f              # double 0.035115
	.quad	0x3fd4afe60c38f367              # double 0.32323600000000002
	.quad	0x3fe459cf13cee9dd              # double 0.63596299999999995
	.quad	0x3fe4b08787485e3e              # double 0.64654900000000004
	.quad	0x3fd06861e92923e6              # double 0.25637100000000002
	.quad	0x3fe3f6bc1eff9f88              # double 0.62386900000000001
	.quad	0x3fe47c43b2dd377e              # double 0.64016899999999999
	.quad	0x3fedc76f2a5a469d              # double 0.93059499999999995
	.quad	0x3fee852d666a9824              # double 0.95375699999999996
	.quad	0x3fbb965b20b8066c              # double 0.107763
	.quad	0x3fce007570c564f9              # double 0.23438899999999999
	.quad	0x3fb292817763e4ac              # double 0.072548000000000001
	.quad	0x3fc0b723ee1bd1ee              # double 0.13058900000000001
	.quad	0x3fe7b44a1f080304              # double 0.74075800000000003
	.quad	0x3fe09d40ee06d938              # double 0.51919599999999999
	.quad	0x3fe89ed7c6fbd274              # double 0.76939000000000001
	.quad	0x3fd281a5870da5db              # double 0.289163
	.quad	0x3fdc9ae924f227d0              # double 0.44695499999999999
	.quad	0x3fe3e2888b545c79              # double 0.62140300000000004
	.quad	0x3fe672f9873ffac2              # double 0.70153500000000002
	.quad	0x3fec3b0a2ca9ac36              # double 0.88220699999999996
	.quad	0x3fe03c85c24c404a              # double 0.50738799999999995
	.quad	0x3fe880c9539b8887              # double 0.76572099999999998
	.quad	0x3fec4b5dcc63f141              # double 0.88419999999999999
	.quad	0x3fe0fd438d1d8a55              # double 0.53091600000000005
	.quad	0x3fdfa7d6733ebbfd              # double 0.49461899999999998
	.quad	0x3fbfd1dcd7060bb3              # double 0.124296
	.quad	0x3fd395bff04577d9              # double 0.30601499999999998
	.quad	0x3fe16f88b9778573              # double 0.54486500000000004
	.quad	0x3fef7a4c61d8622c              # double 0.98367899999999997
	.quad	0x3fb66aec0724b76f              # double 0.087568999999999994
	.quad	0x3fd1c14c660a2014              # double 0.27742299999999998
	.quad	0x3fecbccaf709b739              # double 0.89804600000000001
	.quad	0x3fef28650e779208              # double 0.97368100000000001
	.quad	0x3fe104b5dcc63f14              # double 0.53182499999999999
	.quad	0x3fe9541fa7653437              # double 0.79151899999999997
	.quad	0x3fd469595feda661              # double 0.31892999999999999
	.quad	0x3fe21cd3e0bd449a              # double 0.56601900000000005
	.quad	0x3fe5b7c3504c48ae              # double 0.67868200000000001
	.quad	0x3fe505af6c69b5a6              # double 0.65694399999999997
	.quad	0x3fce99a62ed35222              # double 0.239064
	.quad	0x3fad17a46173b85f              # double 0.056821000000000003
	.quad	0x3fb6ff9f87f023ea              # double 0.089838000000000001
	.quad	0x3fe928f3a9b06812              # double 0.78624899999999998
	.quad	0x3fcadcca70d1fa33              # double 0.20986299999999999
	.quad	0x3fc72fa93af74cd3              # double 0.181142
	.quad	0x3fc19ee02a77a2cf              # double 0.13766100000000001
	.quad	0x3fb88c1db0142f62              # double 0.095888000000000001
	.quad	0x3fe52af1455219a8              # double 0.66149199999999997
	.quad	0x3fe2d564b662fdfc              # double 0.58854899999999999
	.quad	0x3fe00e9d51b4fe7a              # double 0.50178400000000001
	.quad	0x3fe82ed352220bc4              # double 0.75571600000000005
	.quad	0x3fc988a04d12018a              # double 0.19948199999999999
	.quad	0x3feee4388ebcc6c5              # double 0.96535899999999996
	.quad	0x3fe3bb14a90470a8              # double 0.616587
	.quad	0x3fee8cfbfc6540cc              # double 0.95470999999999994
	.quad	0x3fea379d909f1f15              # double 0.81928900000000004
	.quad	0x3fd936544fe36d22              # double 0.39394099999999999
	.quad	0x3fec25a682b62846              # double 0.87959600000000004
	.quad	0x3fe3236199780baa              # double 0.59806899999999996
	.quad	0x3fb3456b441bb8c3              # double 0.075277999999999998
	.quad	0x3fcac0ad03d9a954              # double 0.209005
	.quad	0x3fcf9fb1e18efbb1              # double 0.247061
	.quad	0x3fe7f3f748a15981              # double 0.74853099999999995
	.quad	0x3fde739f340d4dc6              # double 0.47580699999999998
	.quad	0x3fd908d4bad7d7c3              # double 0.39116400000000001
	.quad	0x3fa845dc8323358f              # double 0.047407999999999999
	.quad	0x3fd0c0f451761459              # double 0.26177699999999998
	.quad	0x3fe12365cb35f3d8              # double 0.53557100000000002
	.quad	0x3fb2dc7ef177a701              # double 0.073677000000000006
	.quad	0x3fd95fd47bedb728              # double 0.39647399999999999
	.quad	0x3fe2882cf52b90a8              # double 0.57912300000000005
	.quad	0x3fdb000000000000              # double 0.421875
	.quad	0x3fbd098d477bbf94              # double 0.113427
	.quad	0x3feab61565c2d278              # double 0.834727
	.quad	0x3fd59f383f0bae8a              # double 0.337843
	.quad	0x3fed16c82e019b0b              # double 0.90903100000000003
	.quad	0x3fba12c6ac215b9a              # double 0.101849
	.quad	0x3fadddb1209edbf9              # double 0.058332000000000002
	.quad	0x3fde85510d38cda7              # double 0.47688700000000001
	.quad	0x3fcfc17a89331a09              # double 0.24809200000000001
	.quad	0x3fec35e74299d884              # double 0.88158000000000003
	.quad	0x3fd540a6b93ccd10              # double 0.33207100000000001
	.quad	0x3f979aae6c8f7553              # double 0.023050999999999999
	.quad	0x3fd1db50f40e5a36              # double 0.27901100000000001
	.quad	0x3fea10f94c87980f              # double 0.81457199999999996
	.quad	0x3fd20ac3a860dcba              # double 0.28190700000000002
	.quad	0x3fd170de8f6cefed              # double 0.27251399999999998
	.quad	0x3fcaf6b5d462c344              # double 0.21065400000000001
	.quad	0x3fcf8a4c1ebc83a9              # double 0.24640799999999999
	.quad	0x3fe51c3ac929aa1d              # double 0.65969599999999995
	.quad	0x3fc2fb6dca07f66f              # double 0.14829800000000001
	.quad	0x3feed9b1b79d909f              # double 0.96407399999999998
	.quad	0x3fd8a515ce9e5e24              # double 0.38507599999999997
	.quad	0x3f850c1b97353b4b              # double 0.010277
	.quad	0x3fe4e5cd4ed2cbea              # double 0.65305199999999997
	.quad	0x3fbf8561d4306e5d              # double 0.123129
	.quad	0x3fe72e5ffa3b9ae1              # double 0.72441100000000003
	.quad	0x3fe1afc69728a611              # double 0.55270699999999995
	.quad	0x3fc36d4c33b53932              # double 0.15177299999999999
	.quad	0x3f9aab474107314d              # double 0.026044000000000001
	.quad	0x3fd706d506573216              # double 0.359792
	.quad	0x3fe7dbc44bf4cb19              # double 0.74557700000000005
	.quad	0x3fe696b3354c1227              # double 0.70589599999999997
	.quad	0x3fb1f44d44567126              # double 0.070134000000000002
	.quad	0x3fe6afb5d031055c              # double 0.70894900000000005
	.quad	0x3feb5b4677b395c4              # double 0.85489199999999998
	.quad	0x3fd576e6106ab14f              # double 0.33538200000000001
	.quad	0x3f8228dc981beb18              # double 0.0088669999999999998
	.quad	0x3fca3675ddd2ae8e              # double 0.204787
	.quad	0x3fdbff64cf8d716d              # double 0.43746299999999999
	.quad	0x3fd212f901083dbc              # double 0.28240799999999999
	.quad	0x3fe81d14e3bcd35b              # double 0.75355000000000005
	.quad	0x3fd8f7f8ca8198f2              # double 0.39013500000000001
	.quad	0x3fe64284dfce3151              # double 0.69562000000000002
	.quad	0x3fe3dd0d8cb07d0b              # double 0.62073400000000001
	.quad	0x3fe8da7b0b391926              # double 0.77666999999999997
	.quad	0x3fcf166e008e9b39              # double 0.242872
	.quad	0x3fd8d249e44fa051              # double 0.38783499999999999
	.quad	0x3fe8d5e6bc621b7e              # double 0.776111
	.quad	0x3fb0c1b97353b4b3              # double 0.065456
	.quad	0x3fccf4623d0bfa09              # double 0.22620799999999999
	.quad	0x3fef6efc371da37f              # double 0.982298
	.quad	0x3fee87357e670e2c              # double 0.95400499999999999
	.quad	0x3fd51feeb2d0a244              # double 0.33007399999999998
	.quad	0x3fd85a1cac083127              # double 0.3805
	.quad	0x3fa21be2b4959e62              # double 0.035368999999999998
	.quad	0x3fec682f944241c4              # double 0.887718
	.quad	0x3fd8d31337eb28d8              # double 0.38788299999999998
	.quad	0x3fa6366d7a56de33              # double 0.043383999999999999
	.quad	0x3fcf16fc9bc77143              # double 0.24288899999999999
	.quad	0x3fd7156191148fda              # double 0.36068
	.quad	0x3fe8f41aef6f8f04              # double 0.77979799999999999
	.quad	0x3fbac2acb85a4f01              # double 0.104533
	.quad	0x3fc27c30d306a2b1              # double 0.14441499999999999
	.quad	0x3fe9382e44b6e936              # double 0.78810800000000003
	.quad	0x3fe24e8d972cd7cf              # double 0.57208899999999996
	.quad	0x3fef4814d72799a2              # double 0.977549
	.quad	0x3fedebd9018e7579              # double 0.93503999999999998
	.quad	0x3fbd45b6c3760bf6              # double 0.114345
	.quad	0x3faea704bc27631b              # double 0.059867999999999998
	.quad	0x3fd99085f4a1272d              # double 0.39944600000000002
	.quad	0x3fd049e8815e3971              # double 0.25451099999999999
	.quad	0x3fe6ed19dece5711              # double 0.71644300000000005
	.quad	0x3fcc691ea78af3e4              # double 0.22195799999999999
	.quad	0x3fe3d286b59146e5              # double 0.61944900000000003
	.quad	0x3fe2ffd1dcd7060c              # double 0.59372800000000003
	.quad	0x3fbab7cbb3c81909              # double 0.104367
	.quad	0x3fd38216c61522a7              # double 0.304815
	.quad	0x3fccf7a919695d92              # double 0.22630800000000001
	.quad	0x3f94046412cf0f9d              # double 0.019547999999999999
	.quad	0x3f58372e6a76965f              # double 0.0014779999999999999
	.quad	0x3fdaf3dc054ef45a              # double 0.42113400000000001
	.quad	0x3fe896c1e364bec6              # double 0.76840299999999995
	.quad	0x3fe7443d46b26bf8              # double 0.72707999999999995
	.quad	0x3fd535d67ba237ce              # double 0.33141100000000001
	.quad	0x3fdde6c093d96638              # double 0.46720899999999999
	.quad	0x3feac1a261bf37b9              # double 0.83613700000000002
	.quad	0x3fe335a426bb55ac              # double 0.600298
	.quad	0x3fe3da5daf07bfe8              # double 0.62040600000000001
	.quad	0x3fdeb14ec204f2ae              # double 0.479572
	.quad	0x3fd93e0bd44998d0              # double 0.39441199999999998
	.quad	0x3f95e17e34b94531              # double 0.021368000000000002
	.quad	0x3fcd22856605ee57              # double 0.22761600000000001
	.quad	0x3fceb0856e696a27              # double 0.239762
	.quad	0x3fda8793dd97f62b              # double 0.41452499999999998
	.quad	0x3fec5377e1b8ed1c              # double 0.885189
	.quad	0x3feaf1bcdbbe0158              # double 0.84200900000000001
	.quad	0x3fd9c957cd466f50              # double 0.40291399999999999
	.quad	0x3fe540bfe3b03e21              # double 0.66415400000000002
	.quad	0x3f97b6fe2e6ea854              # double 0.023158999999999999
	.quad	0x3fc0054690de0935              # double 0.12516099999999999
	.quad	0x3feceeb91b3f20a7              # double 0.90414099999999997
	.quad	0x3fdf0c1b97353b4b              # double 0.48511399999999999
	.quad	0x3fdc079a2834d270              # double 0.43796400000000002
	.quad	0x3fc059a73b42cc2d              # double 0.12773599999999999
	.quad	0x3fde8c586876e1df              # double 0.47731600000000002
	.quad	0x3fed91819d2391d5              # double 0.92401199999999994
	.quad	0x3fe56f672b884407              # double 0.66984900000000003
	.quad	0x3fd5a25d8d79d0a6              # double 0.33803499999999997
	.quad	0x3fec647dc37a3db4              # double 0.88726700000000002
	.quad	0x3fdb26809d495183              # double 0.42422500000000002
	.quad	0x3fc3858bc59b8024              # double 0.15251300000000001
	.quad	0x3fe874cf4a558ea8              # double 0.76425900000000002
	.quad	0x3fee962f166e008f              # double 0.95583300000000004
	.quad	0x3fe56a4ca4f440af              # double 0.66922599999999999
	.quad	0x3fc8666ec9e236c1              # double 0.19062599999999999
	.quad	0x3fbfd566cf41f213              # double 0.12435
	.quad	0x3fd0f28848387df6              # double 0.26480300000000001
	.quad	0x3fe8c712e40852b5              # double 0.77430100000000002
	.quad	0x3fe7d4cb9ecf6380              # double 0.744726
	.quad	0x3fadc13fd0d0678c              # double 0.058115
	.quad	0x3fd5a0e410b630a9              # double 0.337945
	.quad	0x3fe136b09635610b              # double 0.53792600000000002
	.quad	0x3fd12784a9478c87              # double 0.26803700000000003
	.quad	0x3fa1eadd590c0ad0              # double 0.034994999999999998
	.quad	0x3fe63db5d894812c              # double 0.69503300000000001
	.quad	0x3fd23c925785f8d3              # double 0.28494700000000001
	.quad	0x3fea1eb851eb851f              # double 0.81625000000000003
	.quad	0x3fe5e162f166e009              # double 0.68376300000000001
	.quad	0x3fe060a84be40421              # double 0.511799
	.quad	0x3fe3a8a82a5614e0              # double 0.61433800000000005
	.quad	0x3fd048387df5cf25              # double 0.25440800000000002
	.quad	0x3fbd7d3910c2c5e3              # double 0.115192
	.quad	0x3f8bb2fec56d5cfb              # double 0.013525000000000001
	.quad	0x3fedf1cfbb949625              # double 0.93576800000000004
	.quad	0x3f936fc158fb43d9              # double 0.018981000000000001
	.quad	0x3fbec647778dd617              # double 0.120213
	.quad	0x3fbe12a51e321a2e              # double 0.11747199999999999
	.quad	0x3fee6b0531982880              # double 0.95056399999999996
	.quad	0x3fcc5f28848387df              # double 0.22165399999999999
	.quad	0x3feb0b75ea67e847              # double 0.84514900000000004
	.quad	0x3fe5bbbe878fabda              # double 0.67916799999999999
	.quad	0x3fcf8bd66277c45d              # double 0.24645500000000001
	.quad	0x3feab24e9c454584              # double 0.83426599999999995
	.quad	0x3feb681450efdc9c              # double 0.85645499999999996
	.quad	0x3f95b63d3e4ef028              # double 0.021203
	.quad	0x3f6f6cacd184c272              # double 0.003836
	.quad	0x3fbb681669ced0b3              # double 0.107057
	.quad	0x3fd74eebf65dbfcf              # double 0.36419200000000002
	.quad	0x3fc65729b280f12c              # double 0.174535
	.quad	0x3fc1417ca2120e1f              # double 0.13481099999999999
	.quad	0x3fe7b08dd1e53a82              # double 0.74030200000000002
	.quad	0x3fe3896787ce95fb              # double 0.61052300000000004
	.quad	0x3fd4432441fea811              # double 0.31659799999999999
	.quad	0x3fc27a072d1aeb3e              # double 0.14434900000000001
	.quad	0x3fc00ded288ce704              # double 0.12542500000000001
	.quad	0x3fe8b702602c9082              # double 0.77234000000000003
	.quad	0x3fcde0ef99806f26              # double 0.233427
	.quad	0x3fe85ad538ac18f8              # double 0.76108799999999999
	.quad	0x3fd59591cd1c7de5              # double 0.337254
	.quad	0x3fec4dab191dde37              # double 0.88448099999999996
	.quad	0x3fef3fc2224edf61              # double 0.97653299999999998
	.quad	0x3fb686d71f36262d              # double 0.087995000000000004
	.quad	0x3fe0fa3b9ae0c176              # double 0.53054599999999996
	.quad	0x3fe4b97dd00f776c              # double 0.64764299999999997
	.quad	0x3fc855c96030c240              # double 0.19011800000000001
	.quad	0x3fe28c79f666234b              # double 0.57964800000000005
	.quad	0x3fed996744b2b778              # double 0.92497600000000002
	.quad	0x3fd7ba01eeed8905              # double 0.370728
	.quad	0x3fe417204295a6c6              # double 0.62782300000000002
	.quad	0x3febb1704ff4341a              # double 0.86541000000000001
	.quad	0x3fe27913e81450f0              # double 0.57728000000000002
	.quad	0x3fe2b947496aad1d              # double 0.585117
	.quad	0x3fdf4da4ce8101f3              # double 0.48911399999999999
	.quad	0x3febe41f644955b4              # double 0.87159699999999995
	.quad	0x3fe8f29d40ee06d9              # double 0.77961599999999998
	.quad	0x3fe3a27ae9ab29e5              # double 0.61358400000000002
	.quad	0x3fc2364388ebcc6c              # double 0.14228099999999999
	.quad	0x3fc5e4de3b8a19ca              # double 0.171047
	.quad	0x3fef80e065300581              # double 0.98448199999999996
	.quad	0x3fee211233df2a9d              # double 0.94153699999999996
	.quad	0x3fe468be2f7b17ce              # double 0.63778599999999996
	.quad	0x3fc4e65bea0ba1f5              # double 0.16328000000000001
	.quad	0x3fe6c56b441bb8c3              # double 0.71159899999999998
	.quad	0x3f9d6c7219220ff5              # double 0.028733999999999999
	.quad	0x3febaf4adbc664d4              # double 0.86514800000000002
	.quad	0x3fe72e297396d091              # double 0.72438499999999995
	.quad	0x3fe4fa67a52ac754              # double 0.65556700000000001
	.quad	0x3fee9eb851eb851f              # double 0.95687500000000003
	.quad	0x3fdcfa69be09bb6b              # double 0.45278400000000002
	.quad	0x3fd5d790752da986              # double 0.34128199999999997
	.quad	0x3fd30c1333b96af0              # double 0.29761199999999999
	.quad	0x3fce86a4ca4f440b              # double 0.238484
	.quad	0x3fe24f440af1cb8a              # double 0.57217600000000002
	.quad	0x3fefade225fa658c              # double 0.98997599999999996
	.quad	0x3fe234ca0c282c6f              # double 0.56894400000000001
	.quad	0x3fe6dec3dab5c39c              # double 0.71469300000000002
	.quad	0x3fbefe718a86d71f              # double 0.12107
	.quad	0x3fdeede54b48d3ae              # double 0.48326999999999998
	.quad	0x3fed4ec41dd1a21f              # double 0.91586500000000004
	.quad	0x3fbbe121ee675148              # double 0.108904
	.quad	0x3fcc44284dfce315              # double 0.22083
	.quad	0x3febb9f559b3d07d              # double 0.86645000000000005
	.quad	0x3fe59ce6c093d966              # double 0.67540299999999998
	.quad	0x3fe10655193708ab              # double 0.53202300000000002
	.quad	0x3fdcb780346dc5d6              # double 0.44869999999999999
	.quad	0x3fce70fbeb9e492c              # double 0.23782300000000001
	.quad	0x3fe0bb23571d1d47              # double 0.52284399999999998
	.quad	0x3fc7f623076c050c              # double 0.187199
	.quad	0x3fd57ba237cdcca7              # double 0.335671
	.quad	0x3fede26d4801f751              # double 0.93389
	.quad	0x3fe315831f03d146              # double 0.59637600000000002
	.quad	0x3f78b60f1b25f634              # double 0.0060330000000000002
	.quad	0x3fa402f2f9873ffb              # double 0.039085000000000002
	.quad	0x3fe0873797460243              # double 0.51650600000000002
	.quad	0x3fe9f87ad080b674              # double 0.81158200000000002
	.quad	0x3fd941e9af5ba2be              # double 0.394648
	.quad	0x3fdb4dbdf8f47304              # double 0.42662
	.quad	0x3fdb5703f2d3c793              # double 0.42718600000000001
	.quad	0x3fdbf8c21e1d2179              # double 0.437058
	.quad	0x3fd927e52157689d              # double 0.39306000000000002
	.quad	0x3feeaf102363b257              # double 0.95887
	.quad	0x3fca5143bf727137              # double 0.20560500000000001
	.quad	0x3fe009f1f14983d8              # double 0.50121400000000005
	.quad	0x3f962a1b5c7cd899              # double 0.021645000000000001
	.quad	0x3fefb964a59c065b              # double 0.99138099999999995
	.quad	0x3fe8b0c4588a04d1              # double 0.77157799999999999
	.quad	0x3fee48f53c579f23              # double 0.94640599999999997
	.quad	0x3fe0109aed56b010              # double 0.502027
	.quad	0x3fe62e4f3343fa2b              # double 0.69315300000000002
	.quad	0x3fa25aee631f8a09              # double 0.03585
	.quad	0x3fe09f926c7eae5c              # double 0.51947900000000002
	.quad	0x3fd58787485e3da3              # double 0.336397
	.quad	0x3fc769b17481b21c              # double 0.18291299999999999
	.quad	0x3fdb9984a0e410b6              # double 0.43124499999999999
	.quad	0x3fefe9531550ca1d              # double 0.997232
	.quad	0x3fec6d916872b021              # double 0.88837500000000003
	.quad	0x3feaff562174c4ce              # double 0.843669
	.quad	0x3fcb26aec0724b77              # double 0.212118
	.quad	0x3fee2e9ab29e4d5e              # double 0.94318900000000006
	.quad	0x3fe2673c4f3ba776              # double 0.575102
	.quad	0x3f92e48e8a71de6a              # double 0.018450000000000001
	.quad	0x3fedc213a0c6b485              # double 0.92994100000000002
	.quad	0x3fc396af038e29fa              # double 0.15303600000000001
	.quad	0x3fe11c6b05319829              # double 0.53471900000000006
	.quad	0x3fec4faacd9e83e4              # double 0.88472499999999998
	.quad	0x3feb2ed99cbee808              # double 0.84946900000000003
	.quad	0x3fec3c126a65cf68              # double 0.88233300000000003
	.quad	0x3fdde07a28bb0a2d              # double 0.46682600000000002
	.quad	0x3fed7b28954a7f80              # double 0.92128399999999999
	.quad	0x3fd3796bfca85cab              # double 0.304286
	.quad	0x3feef2324c836651              # double 0.96706499999999995
	.quad	0x3fe13966be7afa72              # double 0.53825699999999999
	.quad	0x3fa8a8f3a9b06812              # double 0.048163999999999998
	.quad	0x3fe3defc7a398202              # double 0.62097000000000002
	.quad	0x3fb5b8561d4306e6              # double 0.084844000000000002
	.quad	0x3fdad5f138bcdff0              # double 0.41930800000000001
	.quad	0x3fad72ffd1dcd706              # double 0.057518
	.quad	0x3fe7fd1351159c49              # double 0.74964299999999995
	.quad	0x3fd7afcce1c58256              # double 0.37010500000000002
	.quad	0x3fea10c0ad03d9a9              # double 0.81454499999999996
	.quad	0x3fe60711d798d8a9              # double 0.68836299999999995
	.quad	0x3fe08a45d41fa765              # double 0.51687899999999998
	.quad	0x3fbb8088509bf9c6              # double 0.10743
	.quad	0x3fe6a8522ea0fd3b              # double 0.70804699999999998
	.quad	0x3fd37214f0520d13              # double 0.303838
	.quad	0x3fde7a4e7ab75643              # double 0.476215
	.quad	0x3fee8fe260b2c83f              # double 0.95506400000000002
	.quad	0x3fec35d67ba237ce              # double 0.88157200000000002
	.quad	0x3feb263f9a49c2c2              # double 0.84841900000000003
	.quad	0x3fa29da597d49d7c              # double 0.036359000000000002
	.quad	0x3fdd2eec7c957cd4              # double 0.45598899999999998
	.quad	0x3fc3281fd9ba1b19              # double 0.14966199999999999
	.quad	0x3fe71beb18116ebd              # double 0.72215799999999997
	.quad	0x3fe618f1d3ed527e              # double 0.69054499999999996
	.quad	0x3fe9a265f0f5a101              # double 0.80107399999999995
	.quad	0x3fe96525892684cf              # double 0.793597
	.quad	0x3feddc3bd5992429              # double 0.93313400000000002
	.quad	0x3fefa14cec41dd1a              # double 0.98843999999999999
	.quad	0x3fe5b05532617c1c              # double 0.67777500000000002
	.quad	0x3fedbbecaab8a5ce              # double 0.92918999999999996
	.quad	0x3fefeb8b69552e30              # double 0.99750300000000003
	.quad	0x3fe136aa4b9884c7              # double 0.53792300000000004
	.quad	0x3fe9c4a1f080303c              # double 0.80525299999999999
	.quad	0x3fcb29888f861a61              # double 0.212205
	.quad	0x3fd2ad31fcd24e16              # double 0.291821
	.quad	0x3fe6ea747d805e5f              # double 0.71611999999999998
	.quad	0x3fedba322af57710              # double 0.928979
	.quad	0x3fe018aeb80ecfa7              # double 0.50301300000000004
	.quad	0x3fe275019f3c70ca              # double 0.57678300000000005
	.quad	0x3fe19040bfe3b03e              # double 0.54885899999999999
	.quad	0x3fe5877681669ced              # double 0.672786
	.quad	0x3fee69d30270f388              # double 0.95041799999999998
	.quad	0x3fcc99bf5946c333              # double 0.223442
	.quad	0x3fb25492ff4ba51a              # double 0.071603
	.quad	0x3fdd9756c93a7115              # double 0.462362
	.quad	0x3fc8f449129888f8              # double 0.19495499999999999
	.quad	0x3fc0ff64cf8d716d              # double 0.132794
	.quad	0x3fd1bc48f10a99b7              # double 0.277117
	.quad	0x3fdc46bf01322f27              # double 0.44181799999999999
	.quad	0x3fe20b84988094e6              # double 0.56390600000000002
	.quad	0x3fddb2fec56d5cfb              # double 0.46405000000000002
	.quad	0x3fdf64dc22ab25b3              # double 0.49053099999999999
	.quad	0x3fbeef911cf355ce              # double 0.12084300000000001
	.quad	0x3fec060999dcb578              # double 0.87573699999999999
	.quad	0x3fc6f190d173fb7a              # double 0.17924699999999999
	.quad	0x3fbe80bed740c415              # double 0.11915199999999999
	.quad	0x3fc5efe0ce0b912e              # double 0.17138300000000001
	.quad	0x3fc336ac647778dd              # double 0.15010599999999999
	.quad	0x3fe6ad40aaeafab5              # double 0.70864899999999997
	.quad	0x3fba322af5771002              # double 0.102328
	.quad	0x3fe7be7296f6512b              # double 0.74199800000000005
	.quad	0x3fd9ab8e8ea39c52              # double 0.40109600000000001
	.quad	0x3fc3e4606748e475              # double 0.15540699999999999
	.quad	0x3fd638151a437825              # double 0.34717300000000001
	.quad	0x3fb1016ce789e775              # double 0.066428000000000001
	.quad	0x3fee785f8d2e514c              # double 0.95219399999999998
	.quad	0x3fd72dadb8348f54              # double 0.36216300000000001
	.quad	0x3fc2fee6fb4c3c19              # double 0.14840400000000001
	.quad	0x3fe489331a08bfc2              # double 0.64174799999999999
	.quad	0x3fe16de1198aeb81              # double 0.54466300000000001
	.quad	0x3fd262cba732df50              # double 0.28727999999999998
	.quad	0x3fc82ecaeea63b69              # double 0.18892800000000001
	.quad	0x3feae7f90d9d7775              # double 0.84081700000000004
	.quad	0x3fd96d86ec17ebaf              # double 0.39731
	.quad	0x3fd62a0663c74fb5              # double 0.34631499999999998
	.quad	0x3fdac810a569b175              # double 0.41846100000000003
	.quad	0x3feb4080f98fa377              # double 0.85162400000000005
	.quad	0x3fe7e8d5410f94c8              # double 0.74717199999999995
	.quad	0x3fea7f737da61e0c              # double 0.82805799999999996
	.quad	0x3fb1d3bafd976ff4              # double 0.069637000000000004
	.quad	0x3fce2699c7bcc294              # double 0.23555300000000001
	.quad	0x3fea809f623076c0              # double 0.82820099999999996
	.quad	0x3fd70f6ad70e6f2f              # double 0.36031600000000003
	.quad	0x3fefd4a5df2239e7              # double 0.99470800000000003
	.quad	0x3fdd8e3ac0c62e4d              # double 0.46180599999999999
	.quad	0x3fd1ed6ba8c58687              # double 0.28011599999999998
	.quad	0x3fc411f4f50a02b8              # double 0.15679799999999999
	.quad	0x3fe2540ee06d9381              # double 0.57276099999999996
	.quad	0x3fe523a8e71476b0              # double 0.66060300000000005
	.quad	0x3fe7cd1a65061416              # double 0.74378699999999998
	.quad	0x3fd366ec9e236c16              # double 0.30315700000000001
	.quad	0x3fd04c09c3ce208a              # double 0.25464100000000001
	.quad	0x3fe03b3a68b19a41              # double 0.50722999999999996
	.quad	0x3fe3a6117720c8cd              # double 0.61402199999999996
	.quad	0x3fe84241c3efae79              # double 0.75808799999999998
	.quad	0x3fe2927d45a5fc7e              # double 0.58038199999999995
	.quad	0x3fe140ad03d9a954              # double 0.53914499999999999
	.quad	0x3fa0d5a5b9628cbd              # double 0.03288
	.quad	0x3fd2f01fb82c2bd8              # double 0.295906
	.quad	0x3fe47aa68f4b61fe              # double 0.63997199999999999
	.quad	0x3fe132ca57a786c2              # double 0.53744999999999998
	.quad	0x3fe1b9baa1511e00              # double 0.55392200000000003
	.quad	0x3fb3bacb4289118c              # double 0.077068999999999999
	.quad	0x3fd8478854cdb7ae              # double 0.37936599999999998
	.quad	0x3fa5dbfceb78897f              # double 0.042694000000000003
	.quad	0x3fcee68e3ef28416              # double 0.24141099999999999
	.quad	0x3fdcf0bae89eba6b              # double 0.45219300000000001
	.quad	0x3fde2fcac8e68e3f              # double 0.471667
	.quad	0x3fd841205bc01a37              # double 0.37897500000000001
	.quad	0x3fe5013660e51d26              # double 0.65639800000000004
	.quad	0x3fb7b256ffc115df              # double 0.092564999999999995
	.quad	0x3fe89cbccf28c79f              # double 0.76913299999999996
	.quad	0x3fe755d3dc8b86b1              # double 0.72922699999999996
	.quad	0x3fcbd9cae21101b0              # double 0.217584
	.quad	0x3fef716f4384ba0f              # double 0.98259700000000005
	.quad	0x3fd02c2374794ea0              # double 0.25269399999999997
	.quad	0x3f9ef8ceb356da01              # double 0.030245999999999999
	.quad	0x3fd481450efdc9c5              # double 0.32039000000000001
	.quad	0x3fcda63736cdf267              # double 0.23163500000000001
	.quad	0x3fe85a7d24180d3d              # double 0.761046
	.quad	0x3fc511947cfa26a2              # double 0.164599
	.quad	0x3fdc05c4651f3e8a              # double 0.43785200000000002
	.quad	0x3fe6b9a5a89b951c              # double 0.71016199999999996
	.quad	0x3fea98a86d71f362              # double 0.83113499999999996
	.quad	0x3fe6402f2f987400              # double 0.69533500000000004
	.quad	0x3fed6f3d3a1d3240              # double 0.919829
	.quad	0x3fbb672b884406c0              # double 0.107043
	.quad	0x3feba96f6512a950              # double 0.86443300000000001
	.quad	0x3fe925ce5b4245f6              # double 0.78586500000000004
	.quad	0x3fd9ef9db22d0e56              # double 0.40525
	.quad	0x3fe6ef8055fbb518              # double 0.71673600000000004
	.quad	0x3fe52bef06b37868              # double 0.66161300000000001
	.quad	0x3fef07a8d64d7f0f              # double 0.96968500000000001
	.quad	0x3fa11be6e6538690              # double 0.033416000000000001
	.quad	0x3fe009374bc6a7f0              # double 0.50112500000000004
	.quad	0x3fe726ca03c4b09f              # double 0.72348500000000004
	.quad	0x3fe4354195cc857f              # double 0.63150099999999998
	.quad	0x3fce49ba5e353f7d              # double 0.236625
	.quad	0x3fe6b8f7985271bd              # double 0.71007900000000002
	.quad	0x3fdebf9c62a1b5c8              # double 0.48044500000000001
	.quad	0x3fe14903ea704bc2              # double 0.54016299999999995
	.quad	0x3fe5e2b8c75c4a84              # double 0.68392600000000003
	.quad	0x3fe3cd855970b49e              # double 0.618838
	.quad	0x3fd9e4712e40852b              # double 0.40456799999999998
	.quad	0x3fd25f2cb641700d              # double 0.28705900000000001
	.quad	0x3fc6f1886df82b1f              # double 0.17924599999999999
	.quad	0x3fe18a3d70a3d70a              # double 0.54812499999999997
	.quad	0x3fe7918c197e5647              # double 0.73651699999999998
	.quad	0x3fc940a2877ee4e2              # double 0.19728499999999999
	.quad	0x3fec677b395c4220              # double 0.88763199999999997
	.quad	0x3fe43fa6defc7a3a              # double 0.63277000000000005
	.quad	0x3fe79a4df47f993d              # double 0.73758599999999996
	.quad	0x3fe0154a7f8012e0              # double 0.50259900000000002
	.quad	0x3fead5714b9cb685              # double 0.83855500000000005
	.quad	0x3fd783cafb3b7521              # double 0.367419
	.quad	0x3fe80a1dfb9389b5              # double 0.75123499999999999
	.quad	0x3f9ae0c176577532              # double 0.026248
	.quad	0x3fe649d9d3458cd2              # double 0.696515
	.quad	0x3fc27ae147ae147b              # double 0.144375
	.quad	0x3fd443201040bfe4              # double 0.31659700000000002
	.quad	0x3fde40a2877ee4e2              # double 0.47269499999999998
	.quad	0x3fed73e24febd09e              # double 0.92039599999999999
	.quad	0x3fe9ece358298cc1              # double 0.81016699999999997
	.quad	0x3febeac42e9899bf              # double 0.87240799999999996
	.quad	0x3fea023a6ce3582a              # double 0.81277200000000005
	.quad	0x3feb300bcbe61d00              # double 0.84961500000000001
	.quad	0x3fe3f8cc9a77e5eb              # double 0.62412100000000004
	.quad	0x3fe6d5c52e72da12              # double 0.71359499999999998
	.quad	0x3fd4794ea077036d              # double 0.31990400000000002
	.quad	0x3fcdc64ba94bbe44              # double 0.23261399999999999
	.quad	0x3fe92dc2b0ea1837              # double 0.78683599999999998
	.quad	0x3fd2d25aab474107              # double 0.29408899999999999
	.quad	0x3fea7143393ab431              # double 0.826326
	.quad	0x3fd39ffd60e94ee4              # double 0.30664000000000002
	.quad	0x3fed09a88ace24bc              # double 0.90742900000000004
	.quad	0x3fec963fdd65a145              # double 0.89334100000000005
	.quad	0x3fd0300de4c51117              # double 0.25293300000000002
	.quad	0x3fceb5bb384fd2a6              # double 0.239921
	.quad	0x3fc1ea5f84cad57c              # double 0.13996500000000001
	.quad	0x3fbe56cd6c2efd44              # double 0.11851200000000001
	.quad	0x3fd8f9ce8d972cd8              # double 0.39024700000000001
	.quad	0x3fd320c49ba5e354              # double 0.298875
	.quad	0x3f882a9930be0ded              # double 0.0118
	.quad	0x3fe93fc43b2dd378              # double 0.78903400000000001
	.quad	0x3fd73165d3996fa8              # double 0.36238999999999999
	.quad	0x3fda5fbf83382e45              # double 0.41209400000000002
	.quad	0x3fe8ca1ad6451b93              # double 0.774671
	.quad	0x3fcdff79c842fa51              # double 0.23435900000000001
	.quad	0x3fb2ce89656eefa2              # double 0.073464000000000002
	.quad	0x3fe78efbb0e5e679              # double 0.73620399999999997
	.quad	0x3fd390c9107faa04              # double 0.30571199999999998
	.quad	0x3fdf33226c3b927d              # double 0.48749599999999998
	.quad	0x3fd381b64e054691              # double 0.30479200000000001
	.quad	0x3fdf82949a5657fb              # double 0.49234499999999998
	.quad	0x3fc9e5e2478854ce              # double 0.20232800000000001
	.quad	0x3fe71df97aaac109              # double 0.72240899999999997
	.quad	0x3fccab7995ee136e              # double 0.22398299999999999
	.quad	0x3fef77caa7589efe              # double 0.98337300000000005
	.quad	0x3fec2a9717df19d6              # double 0.88019899999999995
	.quad	0x3fa9dd1a21ea3593              # double 0.050514999999999997
	.quad	0x3fe5430d306a2b17              # double 0.664435
	.quad	0x3fb221b7e0ac7da2              # double 0.070827000000000001
	.quad	0x3f7cb9a9da597d4a              # double 0.0070130000000000001
	.quad	0x3fe23e1650a45d42              # double 0.570079
	.quad	0x3fd951a86940357a              # double 0.39560899999999999
	.quad	0x3fd30c8472c0e7bc              # double 0.29763899999999999
	.quad	0x3fc492f6e82949a5              # double 0.16073499999999999
	.quad	0x3fe01d041cc532a5              # double 0.50354200000000005
	.quad	0x3f763022dd7a99fa              # double 0.0054169999999999999
	.quad	0x3fe287e7c06e19b9              # double 0.57908999999999999
	.quad	0x3fb16a055757d5aa              # double 0.068024000000000001
	.quad	0x3fd0a57eaa2a0a96              # double 0.26010100000000003
	.quad	0x3fecc7368ad68837              # double 0.89931799999999995
	.quad	0x3fe9cf4623d0bfa1              # double 0.80655200000000005
	.quad	0x3fe189741d084e83              # double 0.54802899999999999
	.quad	0x3f87e90ff9724745              # double 0.011675
	.quad	0x3fe615d701d9f4d3              # double 0.69016599999999995
	.quad	0x3fee6642bf9830e4              # double 0.94998300000000002
	.quad	0x3fd6a5df2239e6ac              # double 0.35387400000000002
	.quad	0x3fc7d577963992c9              # double 0.18620200000000001
	.quad	0x3fd70da5daf07bfe              # double 0.36020799999999997
	.quad	0x3fdfa02fb5d03105              # double 0.49415199999999998
	.quad	0x3fe2e892253111f1              # double 0.59089000000000003
	.quad	0x3f6cf7878b7a1c26              # double 0.0035360000000000001
	.quad	0x3fce7589efd86a90              # double 0.23796200000000001
	.quad	0x3fe780abf76a2f49              # double 0.73445700000000003
	.quad	0x3fd4f06f69446738              # double 0.32717499999999999
	.quad	0x3fc8f3882278d0cc              # double 0.19493199999999999
	.quad	0x3fc12702a3486f05              # double 0.13400300000000001
	.quad	0x3fcbd46b26bf876a              # double 0.21742
	.quad	0x3f97963992c8c500              # double 0.023033999999999999
	.quad	0x3fdf764adff822bc              # double 0.491595
	.quad	0x3fe2807fed20296b              # double 0.57818599999999998
	.quad	0x3fe8887ca643cc08              # double 0.76666100000000004
	.quad	0x3fe1810624dd2f1b              # double 0.54700000000000004
	.quad	0x3fe89e6687f455a8              # double 0.76933600000000002
	.quad	0x3fec9ca9ef5232d3              # double 0.89412400000000003
	.quad	0x3fe07939a7c17a89              # double 0.51479799999999998
	.quad	0x3fe6f3d9ec700043              # double 0.71726699999999999
	.quad	0x3faab4528283d35f              # double 0.052157000000000002
	.quad	0x3fe5bbcd35a85879              # double 0.67917499999999997
	.quad	0x3fecef5232d2bb23              # double 0.90421399999999996
	.quad	0x3fd7b1b36bd2b6f2              # double 0.37022100000000002
	.quad	0x3fa20f2becedd484              # double 0.035271999999999998
	.quad	0x3fd6708ede54b48d              # double 0.35061999999999999
	.quad	0x3fd09018e757928e              # double 0.258795
	.quad	0x3fc01bd1ed9dfdac              # double 0.12584899999999999
	.quad	0x3fe0978d4fdf3b64              # double 0.51849999999999996
	.quad	0x3fe44b33daf8df7a              # double 0.63417999999999997
	.quad	0x3fb383dff3f0fe04              # double 0.076230999999999993
	.quad	0x3fdcb395c4220360              # double 0.448461
	.quad	0x3fde4dc22ab25b31              # double 0.47349599999999997
	.quad	0x3fd98f96e158750c              # double 0.39938899999999999
	.quad	0x3fee6fbb0e5e6794              # double 0.95113899999999995
	.quad	0x3fd6158b827fa1a1              # double 0.34506500000000001
	.quad	0x3fec2ecd07852f7f              # double 0.88071299999999997
	.quad	0x3fc9cde5d18090b4              # double 0.201596
	.quad	0x3fe447b890d5a5b9              # double 0.63375499999999996
	.quad	0x3fe326efc371da38              # double 0.59850300000000001
	.quad	0x3fd0e5753a3ec02f              # double 0.26400499999999999
	.quad	0x3fd4d64d7f0ed3d8              # double 0.32557999999999998
	.quad	0x3fda23f67f4dbdf9              # double 0.408445
	.quad	0x3fe5548cb4aec8d6              # double 0.66657100000000002
	.quad	0x3fec7dfa00e27e0f              # double 0.890378
	.quad	0x3fc32031ceaf251c              # double 0.14942
	.quad	0x3fb2685db76b3bb8              # double 0.071904999999999997
	.quad	0x3fec781a5870da5e              # double 0.88966100000000004
	.quad	0x3fcc141e9af5ba2c              # double 0.219364
	.quad	0x3fc820ee8d10f51b              # double 0.18850500000000001
	.quad	0x3fdc4649906cca2e              # double 0.44179000000000002
	.quad	0x3fdac8c0ce91c8eb              # double 0.41850300000000001
	.quad	0x3fec176145953587              # double 0.87785400000000002
	.quad	0x3fca919695d91ab9              # double 0.207568
	.quad	0x3fee65b20b8066c3              # double 0.94991400000000004
	.quad	0x3fce578e5c4eb570              # double 0.23704700000000001
	.quad	0x3feb9dfb9389b520              # double 0.86303499999999999
	.quad	0x3fe46dfe75bc44bf              # double 0.63842699999999997
	.quad	0x3fdcc61522a6f3f5              # double 0.44958999999999999
	.quad	0x3fefc1c6088d6d3b              # double 0.99240399999999995
	.quad	0x3fed09331a08bfc2              # double 0.90737299999999999
	.quad	0x3fe1ffe6d58c8eef              # double 0.56248799999999999
	.quad	0x3fca2c01e68a0d35              # double 0.20446800000000001
	.quad	0x3fdf7d2849cb252d              # double 0.49201400000000001
	.quad	0x3fe3e536501e2585              # double 0.62173
	.quad	0x3fd074a3400b88ca              # double 0.25711899999999999
	.quad	0x3fd4217d2849cb25              # double 0.31454399999999999
	.quad	0x3fe6c3dee78183f9              # double 0.71140999999999999
	.quad	0x3fc6f3ba775fb2ee              # double 0.179313
	.quad	0x3feb90f51ac9afe2              # double 0.86144500000000002
	.quad	0x3fed446950fc71d6              # double 0.914601
	.quad	0x3fdeb8cb8e086bdf              # double 0.48002899999999998
	.quad	0x3fe41e731d2e0e30              # double 0.62871699999999997
	.quad	0x3fdbc9a77e5eaab0              # double 0.43418299999999999
	.quad	0x3fe0d63022dd7a9a              # double 0.526146
	.quad	0x3fd4f04577d95571              # double 0.32716499999999998
	.quad	0x3fe047863beec398              # double 0.50873100000000004
	.quad	0x3febd08b32ce8965              # double 0.86920699999999995
	.quad	0x3fc6d1e108c3f3e0              # double 0.17827999999999999
	.quad	0x3fb9ae5ffa3b9ae1              # double 0.100317
	.quad	0x3fdfb05b7cfe5860              # double 0.495139
	.quad	0x3fcbc1a47a9e2bd0              # double 0.21684700000000001
	.quad	0x3fd1b502ababead5              # double 0.276673
	.quad	0x3fe1dc0767d34df0              # double 0.55810899999999997
	.quad	0x3fe8a5b530ced4e5              # double 0.77022800000000002
	.quad	0x3fd0a3a4b5568e82              # double 0.259988
	.quad	0x3fd24a44c7b02d5a              # double 0.28578300000000001
	.quad	0x3fe42ecd07852f7f              # double 0.63071299999999997
	.quad	0x3fd5fb19e731d2e1              # double 0.34345100000000001
	.quad	0x3fe0afa7221858bc              # double 0.52144199999999996
	.quad	0x3fcb9a30984e3fff              # double 0.215643
	.quad	0x3fe7405d52c16df4              # double 0.726607
	.quad	0x3febc625e99e94ab              # double 0.86793799999999999
	.quad	0x3fd29930be0ded29              # double 0.29060000000000002
	.quad	0x3fd0624dd2f1a9fc              # double 0.25600000000000001
	.quad	0x3fc70728e92d55a4              # double 0.17990600000000001
	.quad	0x3f69f3c70c996b76              # double 0.0031679999999999998
	.quad	0x3fdd5ef1fddebd90              # double 0.45891999999999999
	.quad	0x3fdfefa1e3eaf683              # double 0.49900099999999997
	.quad	0x3fe815a6c5d206c8              # double 0.75264299999999995
	.quad	0x3feed729b280f12c              # double 0.96376499999999998
	.quad	0x3fec87160956c0d7              # double 0.89149
	.quad	0x3fe0b05319828805              # double 0.52152399999999999
	.quad	0x3fb9a11233df2a9d              # double 0.10011399999999999
	.quad	0x3fcdf45e0b4e11dc              # double 0.23402000000000001
	.quad	0x3fcf8b9346994185              # double 0.246447
	.quad	0x3fe3605ccc89b0ee              # double 0.60551299999999997
	.quad	0x3fd4a925fe974a34              # double 0.322824
	.quad	0x3fe6d996744b2b77              # double 0.71406099999999995
	.quad	0x3fe5c1fea8112ba1              # double 0.67993099999999995
	.quad	0x3fe2bf4666ec9e23              # double 0.58584899999999995
	.quad	0x3fe5b7b8d3f1843c              # double 0.67867699999999997
	.quad	0x3fe05e97d06bbdbe              # double 0.51154699999999997
	.quad	0x3fe301eeed8904f7              # double 0.59398600000000001
	.quad	0x3feb848beb5b2d4d              # double 0.85992999999999997
	.quad	0x3fd4c5c13fd0d068              # double 0.32457000000000003
	.quad	0x3feb57928e0c9d9d              # double 0.85443999999999998
	.quad	0x3fee22467be553ac              # double 0.94168399999999996
	.quad	0x3fd5cfe154434e33              # double 0.34081299999999998
	.quad	0x3fc833482be8bc17              # double 0.18906500000000001
	.quad	0x3fe895faa8a82a56              # double 0.76830799999999999
	.quad	0x3fe18ac3a860dcba              # double 0.54818900000000004
	.quad	0x3fbc9cf56eac8605              # double 0.11176999999999999
	.quad	0x3fdfbadc0980b242              # double 0.49578
	.quad	0x3fc3fa8f7db6e504              # double 0.156084
	.quad	0x3fe42d42c3c9eecc              # double 0.630525
	.quad	0x3fe22d601ffb480a              # double 0.56803899999999996
	.quad	0x3fdda24463065f96              # double 0.46302900000000002
	.quad	0x3fcd69ec2ce46499              # double 0.229795
	.quad	0x3fd62a77a2cecc81              # double 0.34634199999999998
	.quad	0x3fdbeaaf35e310dc              # double 0.436199
	.quad	0x3fedf3c925785f8d              # double 0.93600899999999998
	.quad	0x3fed2bb23571d1d4              # double 0.91158399999999994
	.quad	0x3fc48e4fb97bb731              # double 0.16059300000000001
	.quad	0x3fe98eb24a6a875d              # double 0.79866899999999996
	.quad	0x3fe2bcf2cf95d4e9              # double 0.585565
	.quad	0x3fd3e20ccff21b3b              # double 0.310672
	.quad	0x3fd2ff21b3aeee95              # double 0.29682199999999997
	.quad	0x3fd231337eb28d86              # double 0.28425299999999998
	.quad	0x3feabfdf7e8038a0              # double 0.83592200000000005
	.quad	0x3fe30472c0e7bc3c              # double 0.59429299999999996
	.quad	0x3fe7b480a5accd53              # double 0.740784
	.quad	0x3f84128bf3bea91e              # double 0.0098010000000000007
	.quad	0x3fdef06705c896dd              # double 0.48342299999999999
	.quad	0x3fe508cc575c0768              # double 0.65732400000000002
	.quad	0x3febb0df9bdc69f9              # double 0.86534100000000003
	.quad	0x3fe70cfbfc6540cc              # double 0.72033499999999995
	.quad	0x3fcdc2f405f6ba06              # double 0.232512
	.quad	0x3fc8cd7cf5f4e443              # double 0.193771
	.quad	0x3f91a048e043a216              # double 0.017212999999999999
	.quad	0x3fc83e20ccff21b4              # double 0.18939600000000001
	.quad	0x3fdd4de7ea5f84cb              # double 0.45788000000000001
	.quad	0x3fc5e29307af20ea              # double 0.17097699999999999
	.quad	0x3fe3184e3ffef391              # double 0.59671700000000005
	.quad	0x3fe6426bb55ac040              # double 0.695608
	.quad	0x3fe12cffa7eb6bf4              # double 0.53674299999999997
	.quad	0x3fbf57e670e2c12b              # double 0.122435
	.quad	0x3fc41565c2d27807              # double 0.15690299999999999
	.quad	0x3fe52e2541d8e864              # double 0.661883
	.quad	0x3fef8b417ca2120e              # double 0.98574899999999999
	.quad	0x3fd656d5cfaacd9f              # double 0.34905000000000003
	.quad	0x3fa88205ff1d81f1              # double 0.047867
	.quad	0x3fe0084c6a3bddfd              # double 0.50101300000000004
	.quad	0x3fc344a1f080303c              # double 0.150532
	.quad	0x3fe90df7a4e7ab75              # double 0.78295499999999996
	.quad	0x3fe47da4052d666b              # double 0.64033700000000005
	.quad	0x3f8ecdd0d8cb07d1              # double 0.015041000000000001
	.quad	0x3fe42938de6ddf01              # double 0.63003200000000004
	.quad	0x3fdb523704790b85              # double 0.42689300000000002
	.quad	0x3feae9835158b828              # double 0.841005
	.quad	0x3fe47440af1cb89d              # double 0.63919099999999995
	.quad	0x3feb8cc9a77e5eab              # double 0.86093600000000003
	.quad	0x3fd920817fc7607c              # double 0.39260899999999999
	.quad	0x3fb46a8fc0d2c387              # double 0.079751000000000002
	.quad	0x3fe0fc49fd7a13c2              # double 0.53079699999999996
	.quad	0x3fe73c3e74afd545              # double 0.72610399999999997
	.quad	0x3fee68bc169c23b8              # double 0.95028500000000004
	.quad	0x3fd3b6f19934efcc              # double 0.30804100000000001
	.quad	0x3fe07681669ced0b              # double 0.51446599999999998
	.quad	0x3fe1ee75ff609dd0              # double 0.56035900000000005
	.quad	0x3fd920d9945b6c37              # double 0.39262999999999998
	.quad	0x3fca1cac083126e9              # double 0.20399999999999999
	.quad	0x3fd76a2f48c2e771              # double 0.36585600000000001
	.quad	0x3fe49717df19d66b              # double 0.64344400000000002
	.quad	0x3fc8be2f7b17ce53              # double 0.193304
	.quad	0x3fba3f8982cb20fb              # double 0.102532
	.quad	0x3fd33361565c2d28              # double 0.30001100000000003
	.quad	0x3fe246822ff08894              # double 0.57110700000000003
	.quad	0x3fd0cafb3b752114              # double 0.26238899999999998
	.quad	0x3fc84c2f837b4a23              # double 0.18982499999999999
	.quad	0x3fd83ac0c62e4d1a              # double 0.37858599999999998
	.quad	0x3fe24343b70ef566              # double 0.57071099999999997
	.quad	0x3fde1c9b41398634              # double 0.47049600000000003
	.quad	0x3fecc964628027d9              # double 0.89958400000000005
	.quad	0x3fd4edd4845132f8              # double 0.32701599999999997
	.quad	0x3fad04a2fcefaa47              # double 0.056675999999999997
	.quad	0x3fe8d275ee99a62f              # double 0.77569100000000002
	.quad	0x3fe61c0ebedfa440              # double 0.69092500000000001
	.quad	0x3fd075536933a040              # double 0.25716099999999997
	.quad	0x3fd8130df9bdc6a0              # double 0.37616300000000003
	.quad	0x3fecc564f97edc7f              # double 0.89909600000000001
	.quad	0x3fef69f6a93f290b              # double 0.98168500000000002
	.quad	0x3fb4c74b838c111b              # double 0.081166000000000002
	.quad	0x3fe7d2fe3f359ff5              # double 0.744506
	.quad	0x3fd713404ea4a8c1              # double 0.36054999999999998
	.quad	0x3feaf7be121ee675              # double 0.84274199999999999
	.quad	0x3f8cd9a52263d817              # double 0.014087000000000001
	.quad	0x3fe357e670e2c12b              # double 0.60448000000000002
	.quad	0x3fdd43bf727136a4              # double 0.45726
	.quad	0x3fedb55cd91eeaa7              # double 0.92838900000000002
	.quad	0x3fe9581cf7878b7a              # double 0.79200599999999999
	.quad	0x3fddf7b17ce52ded              # double 0.46824300000000002
	.quad	0x3f94434e3369b9d8              # double 0.019788
	.quad	0x3fd625dd095af295              # double 0.34606100000000001
	.quad	0x3fea0e581cf7878b              # double 0.81425099999999995
	.quad	0x3fedca03c4b09e99              # double 0.93091000000000002
	.quad	0x3feacaec8d5c7475              # double 0.83727099999999999
	.quad	0x3fab8cfbfc6540cc              # double 0.053809999999999997
	.quad	0x3fe4adddf43c7d5f              # double 0.64622400000000002
	.quad	0x3fd83387160956c1              # double 0.37814500000000001
	.quad	0x3fabf85510d38cda              # double 0.054628999999999997
	.quad	0x3fd7ed7c6fbd273d              # double 0.37386999999999998
	.quad	0x3fc607789a459104              # double 0.17210300000000001
	.quad	0x3fef737fbefd0071              # double 0.98284899999999997
	.quad	0x3fddab2e1693c03c              # double 0.46357300000000001
	.quad	0x3fe347fdc5931ca8              # double 0.60253800000000002
	.quad	0x3fe93532e7b3d8e0              # double 0.78774399999999999
	.quad	0x3fe84fa26a22b389              # double 0.75972099999999998
	.quad	0x3fda5000c9539b89              # double 0.41113300000000003
	.quad	0x3fa79c62a1b5c7ce              # double 0.046115000000000003
	.quad	0x3fe431209edbf8ba              # double 0.63099700000000003
	.quad	0x3fe911ada76d97b3              # double 0.78340799999999999
	.quad	0x3fbcaa21a719b4dd              # double 0.111971
	.quad	0x3fd3eb24a6a875d5              # double 0.31122699999999998
	.quad	0x3fda5b8dc55000c9              # double 0.41183799999999998
	.quad	0x3fdcd9945b6c3761              # double 0.45078000000000001
	.quad	0x3fe5ed2674080f99              # double 0.685199
	.quad	0x3fe77ff36ac64778              # double 0.73436900000000005
	.quad	0x3fe1283b1d0c8041              # double 0.536161
	.quad	0x3fe65df00abf76a3              # double 0.698967
	.quad	0x3f7e108c3f3e0371              # double 0.0073400000000000002
	.quad	0x3fef8383ad9f0a1c              # double 0.98480400000000001
	.quad	0x3fe77eb4a66559f7              # double 0.73421700000000001
	.quad	0x3fdb061847f56217              # double 0.42224699999999998
	.quad	0x3febf7c243dccea3              # double 0.87399400000000005
	.quad	0x3fd49e4d5d80e497              # double 0.322162
	.quad	0x3fcdae924f227d03              # double 0.23189000000000001
	.quad	0x3fe0eedaa92e6213              # double 0.52915699999999999
	.quad	0x3fd436fc158fb43e              # double 0.31585600000000003
	.quad	0x3fd8efb6dca07f67              # double 0.38963100000000001
	.quad	0x3fefd39756c93a71              # double 0.99457899999999999
	.quad	0x3fd43a3a8e71476b              # double 0.316054
	.quad	0x3fd4070329802c0a              # double 0.31292799999999998
	.quad	0x3fd96cd29131ec0b              # double 0.39726699999999998
	.quad	0x3fe49886df82b1f7              # double 0.64361900000000005
	.quad	0x3fe98e5e679463d0              # double 0.79862900000000003
	.quad	0x3fab686a4ca4f441              # double 0.053531000000000002
	.quad	0x3fdfe21d96e9bbf1              # double 0.49817600000000001
	.quad	0x3fef584d338f7985              # double 0.97952899999999998
	.quad	0x3fa75ea67e846a5d              # double 0.045643999999999997
	.quad	0x3fe4f05ea24cc682              # double 0.65434199999999998
	.quad	0x3fed7d32c625e99f              # double 0.92153300000000005
	.quad	0x3fd53daf8df7a4e8              # double 0.33189000000000002
	.quad	0x3fe2e50a45d41fa7              # double 0.59045899999999996
	.quad	0x3fdfbcf91a32b12d              # double 0.49590899999999999
	.quad	0x3fc07d9988d2a1f9              # double 0.128833
	.quad	0x3fcf1526d8b1dd5d              # double 0.24283299999999999
	.quad	0x3fa23db3bfb58d15              # double 0.035626999999999999
	.quad	0x3fdf6f9335d249e4              # double 0.49118499999999998
	.quad	0x3fe3a5247cb70ac4              # double 0.61390900000000004
	.quad	0x3fe01f1f14983d79              # double 0.503799
	.quad	0x3fd970b06c43f5f9              # double 0.397503
	.quad	0x3fdff2ba9d1f6018              # double 0.49919000000000002
	.quad	0x3fda564b662fdfc2              # double 0.41151700000000002
	.quad	0x3fee99d0203e63e9              # double 0.95627600000000001
	.quad	0x3fcfe4606748e475              # double 0.24915699999999999
	.quad	0x3fca514c22ee4192              # double 0.20560600000000001
	.quad	0x3fd8d40ee06d9381              # double 0.38794299999999998
	.quad	0x3fb709b738e6d15b              # double 0.089992000000000003
	.quad	0x3faa58f7121ab4b7              # double 0.051459999999999999
	.quad	0x3fcff94855da2728              # double 0.24979499999999999
	.quad	0x3fc17f1f9acffa7f              # double 0.13669200000000001
	.quad	0x3fd19ea9a3d2d880              # double 0.27530900000000003
	.quad	0x3fe9e87f455a7d24              # double 0.80963099999999998
	.quad	0x3fe3f61aa3f034b1              # double 0.62379200000000001
	.quad	0x3fe9c5de9c0229a6              # double 0.80540400000000001
	.quad	0x3fe422a0a958537e              # double 0.62922699999999998
	.quad	0x3fbc3d35eb7457c1              # double 0.110309
	.quad	0x3fd88088509bf9c6              # double 0.38284499999999999
	.quad	0x3fe930a6fc58ab93              # double 0.78718900000000003
	.quad	0x3fe17a6bd6e8af81              # double 0.54619399999999996
	.quad	0x3fde8c36da87a073              # double 0.47730800000000001
	.quad	0x3fdf56b441bb8c33              # double 0.48966700000000002
	.quad	0x3fc10203e63e8dda              # double 0.13287399999999999
	.quad	0x3fb8bff47735c183              # double 0.096679000000000001
	.quad	0x3fcac1b10fd7e458              # double 0.209036
	.quad	0x3fc27991bc558644              # double 0.14433499999999999
	.quad	0x3febb825e13b18db              # double 0.86622900000000003
	.quad	0x3fdf3b927d45a5fc              # double 0.48801099999999997
	.quad	0x3fd83f9a49c2c1b1              # double 0.378882
	.quad	0x3fe301abd1aa821f              # double 0.59395399999999998
	.quad	0x3fb5f7b5aea3161a              # double 0.085810999999999998
	.quad	0x3fd6b1af3a14cec4              # double 0.35459499999999999
	.quad	0x3fca50d6b228dc98              # double 0.205592
	.quad	0x3fc67ebf22c01e69              # double 0.17574300000000001
	.quad	0x3fc420685553ef6b              # double 0.15723899999999999
	.quad	0x3fd89ea140570825              # double 0.38468200000000002
	.quad	0x3fd60c38f366948a              # double 0.34449600000000002
	.quad	0x3fb2f62f9ca5bd94              # double 0.074068999999999996
	.quad	0x3fd84f54d1e96c40              # double 0.37984200000000001
	.quad	0x3fec25e353f7ced9              # double 0.87962499999999999
	.quad	0x3fce2b734b51372a              # double 0.23570099999999999
	.quad	0x3fc370c564f97edc              # double 0.15187899999999999
	.quad	0x3fa42b94d9407896              # double 0.039394999999999999
	.quad	0x3fa661ae70c1333c              # double 0.043714000000000003
	.quad	0x3fdcfb506dd69d30              # double 0.45283899999999999
	.quad	0x3fc37ad4b2745bf2              # double 0.15218599999999999
	.quad	0x3fa533b107746888              # double 0.041410000000000002
	.quad	0x3fecfd6733ebbfd7              # double 0.90593299999999999
	.quad	0x3fd6164840e1719f              # double 0.34510999999999997
	.quad	0x3fdc50fc71d60631              # double 0.44244299999999998
	.quad	0x3fd4f2fdb8fde2ef              # double 0.32733099999999998
	.quad	0x3fc0d184c271fff8              # double 0.13139400000000001
	.quad	0x3fd6df8f4730403a              # double 0.35739500000000002
	.quad	0x3fe5b0318b934699              # double 0.67775799999999997
	.quad	0x3fc66f9335d249e4              # double 0.17527999999999999
	.quad	0x3faa4b5568e820e6              # double 0.051355999999999999
	.quad	0x3f8dc8323358f2e0              # double 0.014541999999999999
	.quad	0x3fcf549731098d47              # double 0.24476899999999999
	.quad	0x3fe57640639d5e4a              # double 0.67068499999999998
	.quad	0x3fd4d88c1db0142f              # double 0.32571699999999998
	.quad	0x3fe8d8b3f63c31df              # double 0.77645299999999995
	.quad	0x3fd718b934699418              # double 0.36088399999999998
	.quad	0x3feeb8e29f9ce8d9              # double 0.96006899999999995
	.quad	0x3fa4065b63d3e4ef              # double 0.039111
	.quad	0x3fea0b2a6b0d9514              # double 0.813863
	.quad	0x3fba7b0b39192642              # double 0.10344
	.quad	0x3fbc6c11a11233df              # double 0.111024
	.quad	0x3fc0c7219220ff54              # double 0.131077
	.quad	0x3fdf0e8427418d69              # double 0.485261
	.quad	0x3fddca7935760392              # double 0.46548299999999998
	.quad	0x3fd8b0f27bb2fec5              # double 0.38579999999999998
	.quad	0x3fe1bf6e3f78bbd4              # double 0.55461800000000006
	.quad	0x3fc57e132b55ef20              # double 0.16791
	.quad	0x3feedb0ff10ecb75              # double 0.96424100000000001
	.quad	0x3fec682d7b634dad              # double 0.88771699999999998
	.quad	0x3fe953a81dc0db27              # double 0.791462
	.quad	0x3fe8532a497fa5d3              # double 0.76015200000000005
	.quad	0x3fcac59fb1e18efc              # double 0.20915600000000001
	.quad	0x3fe0a3a8e71476b0              # double 0.51997800000000005
	.quad	0x3fe67fe8ee6b8306              # double 0.70311400000000002
	.quad	0x3fede603d577963a              # double 0.93432800000000005
	.quad	0x3fa54e4c942d490e              # double 0.041612999999999997
	.quad	0x3fe7467be553ac4f              # double 0.72735399999999995
	.quad	0x3fda6a8fc0d2c387              # double 0.41275400000000001
	.quad	0x3fd79f2ba9d1f601              # double 0.36908999999999997
	.quad	0x3fef725e56cd6c2f              # double 0.982711
	.quad	0x3fedc0980b242071              # double 0.92976000000000003
	.quad	0x3fdef383f0bae89f              # double 0.48361300000000002
	.quad	0x3fe93d2fa0d77b7c              # double 0.78871899999999994
	.quad	0x3fe3e2413db7f173              # double 0.62136899999999995
	.quad	0x3fdbebbba55d1c3b              # double 0.43626300000000001
	.quad	0x3fdd2174c4cdfaca              # double 0.45516699999999999
	.quad	0x3fd7969e3c968944              # double 0.36856800000000001
	.quad	0x3fed839042d8c2a4              # double 0.92230999999999996
	.quad	0x3fef51aeb3dd11be              # double 0.97872099999999995
	.quad	0x3fd1ad106ee30caa              # double 0.27618799999999999
	.quad	0x3fda78e5c4eb56fc              # double 0.41362900000000002
	.quad	0x3fd750331e3a7daa              # double 0.36426999999999998
	.quad	0x3fba2f9ca5bd944b              # double 0.102289
	.quad	0x3fe13764f11b60af              # double 0.53801200000000005
	.quad	0x3feb0e9b38d60a63              # double 0.84553299999999998
	.quad	0x3fe3f7079e59f2bb              # double 0.62390500000000004
	.quad	0x3fd20e7bc3c5bd0e              # double 0.282134
	.quad	0x3feab5675579af19              # double 0.83464400000000005
	.quad	0x3fe2c5e6ff7dfa01              # double 0.58665800000000001
	.quad	0x3fc9b152f3c2dadc              # double 0.20072400000000001
	.quad	0x3febb06a2b1704ff              # double 0.86528499999999997
	.quad	0x3fd9ea52ef911cf3              # double 0.40492699999999998
	.quad	0x3fdfab191dde3758              # double 0.49481799999999998
	.quad	0x3fcfad7518b0d0ee              # double 0.24748100000000001
	.quad	0x3fced466f5019f3c              # double 0.24085699999999999
	.quad	0x3fe9cb252ce032db              # double 0.80604799999999999
	.quad	0x3fef8214ad362e90              # double 0.98462899999999998
	.quad	0x3f6a9fbe76c8b439              # double 0.0032499999999999999
	.quad	0x3f9caf709b738e6d              # double 0.028013
	.quad	0x3fb57470eb24a6a8              # double 0.083807999999999994
	.quad	0x3fcfa72a7bd48cb5              # double 0.24728900000000001
	.quad	0x3f766be7afa72218              # double 0.0054739999999999997
	.quad	0x3fd137b07075b3e1              # double 0.26902399999999999
	.quad	0x3fd7f4a98aa8650e              # double 0.37430799999999997
	.quad	0x3fd264020817fc76              # double 0.287354
	.quad	0x3fd455b89939218a              # double 0.31773200000000001
	.quad	0x3fe3c5cdd50a88f0              # double 0.617896
	.quad	0x3fe678feef5ec80c              # double 0.70226999999999995
	.quad	0x3fe323a29c779a6b              # double 0.59809999999999997
	.quad	0x3fd2c0d6f544bb1b              # double 0.29302
	.quad	0x3fd8298cc144028e              # double 0.37753599999999998
	.quad	0x3fee7dc37a3db3c0              # double 0.95285200000000003
	.quad	0x3fde4538ef34d6a1              # double 0.47297499999999998
	.quad	0x3feee6a11ec918e3              # double 0.96565299999999998
	.quad	0x3fe8cac083126e98              # double 0.77475000000000005
	.quad	0x3feacd9c6b053198              # double 0.83759899999999998
	.quad	0x3fec79d0a67620ef              # double 0.88987000000000005
	.quad	0x3fd3e111276fb092              # double 0.310612
	.quad	0x3fe8af4adbc664d4              # double 0.77139800000000002
	.quad	0x3fdd9b23dd54da4d              # double 0.46259400000000001
	.quad	0x3fddd30270f38822              # double 0.46600399999999997
	.quad	0x3fb35350092ccf6c              # double 0.075490000000000002
	.quad	0x3fd4c36113404ea5              # double 0.32442500000000002
	.quad	0x3fe61276fb09203a              # double 0.68975399999999998
	.quad	0x3fd861f18c9fb613              # double 0.38097799999999998
	.quad	0x3fe8a0a73f748a16              # double 0.76961100000000005
	.quad	0x3fd50420f6f08cc5              # double 0.32837699999999997
	.quad	0x3fe0058ff7596851              # double 0.50067899999999999
	.quad	0x3fe14eb356da0169              # double 0.54085700000000003
	.quad	0x3fa74927913e8145              # double 0.04548
	.quad	0x3feaaeb80ecfa69c              # double 0.83382800000000001
	.quad	0x3fe20bc9cd3e0bd4              # double 0.56393899999999997
	.quad	0x3fd3f1bef49cf56f              # double 0.31163000000000002
	.quad	0x3fe3d184c271fff8              # double 0.61932600000000004
	.quad	0x3fd8daa0cae642c0              # double 0.38834400000000002
	.quad	0x3fed246173b85e81              # double 0.91069100000000003
	.quad	0x3fe184c8bc9cd3e1              # double 0.54745900000000003
	.quad	0x3fd4a7eb6bf444e1              # double 0.32274900000000001
	.quad	0x3fe059cf13cee9dd              # double 0.51096299999999995
	.quad	0x3fe7dd18090b417d              # double 0.74573900000000004
	.quad	0x3feac78c868b9fdc              # double 0.83685900000000001
	.quad	0x3fee479702e6644e              # double 0.94623900000000005
	.quad	0x3feaf99806f26289              # double 0.84296800000000005
	.quad	0x3fd15e892253111f              # double 0.271395
	.quad	0x3fc9e6c4c5974e66              # double 0.20235500000000001
	.quad	0x3fe2e412cf0f9d2c              # double 0.590341
	.quad	0x3fd7367a0f9096bc              # double 0.36270000000000002
	.quad	0x3fe31cbee807bbb6              # double 0.59725899999999998
	.quad	0x3fe0040181e03f70              # double 0.50048899999999996
	.quad	0x3fe5c1d4b6a619db              # double 0.67991100000000004
	.quad	0x3fd403c4b09e98dd              # double 0.31273000000000001
	.quad	0x3fecafab53d640ea              # double 0.89644400000000002
	.quad	0x3fe6398201cd5f9a              # double 0.69452000000000003
	.quad	0x3fe901754b05b7d0              # double 0.78142800000000001
	.quad	0x3fcabc621b7e0ac8              # double 0.208874
	.quad	0x3fe415592d98bf7f              # double 0.627606
	.quad	0x3fec03d145d85165              # double 0.87546599999999997
	.quad	0x3fd767dbb16c1e36              # double 0.36571399999999998
	.quad	0x3fecfad8e4324420              # double 0.905621
	.quad	0x3fc537b07075b3e1              # double 0.16576199999999999
	.quad	0x3fd39d0203e63e8e              # double 0.30645800000000001
	.quad	0x3fe195b1422ccb3a              # double 0.54952299999999998
	.quad	0x3fe06d2cbea4ebdd              # double 0.51332699999999998
	.quad	0x3fc5d6d7e889c1b5              # double 0.17061899999999999
	.quad	0x3fea0deb0fadf2ed              # double 0.81419900000000001
	.quad	0x3fe8270b06c43f60              # double 0.75476600000000004
	.quad	0x3fe09e518f3eccc4              # double 0.51932599999999995
	.quad	0x3fe258e864020818              # double 0.573353
	.quad	0x3fe0ef4384ba0e84              # double 0.52920699999999998
	.quad	0x3fcdc0229a5ebb77              # double 0.23242599999999999
	.quad	0x3fdb121ab4b72c52              # double 0.42298000000000002
	.quad	0x3fdac6f7a0b5ed8d              # double 0.41839399999999999
	.quad	0x3fe3f182235b4edb              # double 0.62323099999999998
	.quad	0x3fdbdfbd6a593a2e              # double 0.435531
	.quad	0x3fb814f8b588e369              # double 0.094070000000000001
	.quad	0x3fee6325d4a5df22              # double 0.94960299999999997
	.quad	0x3fd650df15a4acf3              # double 0.348686
	.quad	0x3fea5e8b3b320536              # double 0.82404100000000002
	.quad	0x3fd4116a8b8f14db              # double 0.31356299999999998
	.quad	0x3fc09a0ad8a11666              # double 0.12970100000000001
	.quad	0x3fda5f7403dddb12              # double 0.412076
	.quad	0x3fc4ba16e7a311e8              # double 0.16192899999999999
	.quad	0x3fd6826edaa92e62              # double 0.351711
	.quad	0x3faaa3cea6c1a049              # double 0.052031000000000001
	.quad	0x3fef70e4da09cc32              # double 0.98253100000000004
	.quad	0x3fead9a30984e400              # double 0.83906700000000001
	.quad	0x3feaf9e16d6dc1a4              # double 0.84300299999999994
	.quad	0x3fd9c48f10a99b6f              # double 0.40262199999999998
	.quad	0x3f920a73f748a15a              # double 0.017618000000000002
	.quad	0x3fdfc0fcb4f1e4b4              # double 0.49615399999999998
	.quad	0x3fd22a0232096788              # double 0.28381400000000001
	.quad	0x3fe5c22036006d0d              # double 0.67994699999999997
	.quad	0x3fd6efae7924af0c              # double 0.358379
	.quad	0x3fab90214ad362e9              # double 0.053834
	.quad	0x3fc6314013ec460f              # double 0.173378
	.quad	0x3fca61d8622c4502              # double 0.20611099999999999
	.quad	0x3fe2c845132f87ad              # double 0.586947
	.quad	0x3fed8301a79fec9a              # double 0.92224200000000001
	.quad	0x3fd40ccbc05d52c1              # double 0.31328099999999998
	.quad	0x3fe1e9b9d7fd8277              # double 0.55978099999999997
	.quad	0x3feca6351deefe50              # double 0.895289
	.quad	0x3fc5df4c2b51bd62              # double 0.170877
	.quad	0x3fa387df5cf2495e              # double 0.038145999999999999
	.quad	0x3fe90c5eb313be23              # double 0.78276000000000001
	.quad	0x3fc105af6c69b5a6              # double 0.13298599999999999
	.quad	0x3fe1936c58eeae9f              # double 0.54924600000000001
	.quad	0x3fdfbe1eb4202d9d              # double 0.495979
	.quad	0x3fea790752da9867              # double 0.82727399999999995
	.quad	0x3fe2dde58e64b231              # double 0.58958699999999997
	.quad	0x3fea32a497fa5d29              # double 0.81868200000000002
	.quad	0x3fd9672756861e93              # double 0.39692100000000002
	.quad	0x3f9b3a2595bbbe88              # double 0.026589000000000002
	.quad	0x3fdf8333fc86cebc              # double 0.49238300000000002
	.quad	0x3fe777b9e060fe48              # double 0.73336500000000004
	.quad	0x3fc342fe82517e78              # double 0.150482
	.quad	0x3f9ec5b078d92fb2              # double 0.030051000000000001
	.quad	0x3fd302a77a2cecc8              # double 0.297037
	.quad	0x3fd03d102bc72e27              # double 0.25372699999999998
	.quad	0x3fde0614163779ea              # double 0.46912100000000001
	.quad	0x3fed549d7ba6698c              # double 0.91657900000000003
	.quad	0x3fc899d0203e63e9              # double 0.192194
	.quad	0x3fd5c6045baf533f              # double 0.34021099999999999
	.quad	0x3fe70fe260b2c83f              # double 0.72068900000000002
	.quad	0x3fda14057082491b              # double 0.407472
	.quad	0x3feb116228134480              # double 0.84587199999999996
	.quad	0x3faf3647baa9b49a              # double 0.060961000000000001
	.quad	0x3fe517ca2120e1f8              # double 0.65915400000000002
	.quad	0x3fd6a52ef911cf35              # double 0.35383199999999998
	.quad	0x3fdc52157689ca19              # double 0.44251000000000001
	.quad	0x3fdc28f9f44d4456              # double 0.44000099999999998
	.quad	0x3fdeea7ce0fc2eba              # double 0.48306199999999999
	.quad	0x3fb650614163779f              # double 0.087164000000000005
	.quad	0x3fe30a2a90cd423e              # double 0.59499100000000005
	.quad	0x3fe5eededaec4a41              # double 0.68540900000000005
	.quad	0x3fda45baf533f423              # double 0.41050599999999998
	.quad	0x3febd100a393ee5f              # double 0.86926300000000001
	.quad	0x3fd81c2a02320968              # double 0.37671900000000003
	.quad	0x3fd94a05dd8f92b0              # double 0.39514300000000002
	.quad	0x3fe6557ff9b56324              # double 0.69793700000000003
	.quad	0x3fe6c840e1719f80              # double 0.71194500000000005
	.quad	0x3fe701c0ca600b03              # double 0.71896400000000005
	.quad	0x3fef3269df97aaac              # double 0.97490399999999999
	.quad	0x3fa5f86e3b46fdeb              # double 0.042910999999999998
	.quad	0x3fd7a61e0c5a8156              # double 0.36951400000000001
	.quad	0x3fd72fad6cb53501              # double 0.36228500000000002
	.quad	0x3fd342d05f288484              # double 0.30095300000000003
	.quad	0x3fda36544fe36d22              # double 0.40956599999999999
	.quad	0x3fe84bd1244a6224              # double 0.75925500000000001
	.quad	0x3fead5e28aa43351              # double 0.83860900000000005
	.quad	0x3fe2f43419e30015              # double 0.59231
	.quad	0x3fd85247cb70ac3b              # double 0.38002200000000003
	.quad	0x3fe9f7dd872f33ca              # double 0.81150699999999998
	.quad	0x3fd242528ae74f2f              # double 0.285298
	.quad	0x3fe84ed4e4c942d5              # double 0.75962300000000005
	.quad	0x3fe3f9af1886df83              # double 0.62422900000000003
	.quad	0x3fe9685985ad538b              # double 0.79398800000000003
	.quad	0x3f8403dddb1209ee              # double 0.0097730000000000004
	.quad	0x3fce3aa79bbadc0a              # double 0.23616500000000001
	.quad	0x3fcacd423d9231c6              # double 0.20938899999999999
	.quad	0x3fee04230fcf80dc              # double 0.93800499999999997
	.quad	0x3fe24aa53fc00970              # double 0.57161200000000001
	.quad	0x3fbcddc6195464dc              # double 0.112759
	.quad	0x3fe965fd8adab9f5              # double 0.79369999999999996
	.quad	0x3fa739d1b2e59afa              # double 0.045363000000000001
	.quad	0x3fe8893964a59c06              # double 0.76675099999999996
	.quad	0x3feea37cdcca70d2              # double 0.957457
	.quad	0x3fc65c4651f3e89b              # double 0.17469100000000001
	.quad	0x3fd19930be0ded29              # double 0.27497500000000002
	.quad	0x3fe455e8d5410f95              # double 0.63548700000000002
	.quad	0x3fe439d5e4a38327              # double 0.63205999999999996
	.quad	0x3feeb1704ff4341a              # double 0.95916000000000001
	.quad	0x3f8a0b5ed8d36b4c              # double 0.012716999999999999
	.quad	0x3fe47bbb62413db8              # double 0.64010400000000001
	.quad	0x3fe78bda9435ac8a              # double 0.73582199999999998
	.quad	0x3fe1fbbf93ff25e5              # double 0.56198099999999995
	.quad	0x3fd13361565c2d28              # double 0.26876100000000003
	.quad	0x3fde975f2cb64170              # double 0.477989
	.quad	0x3fe143e100607810              # double 0.53953600000000002
	.quad	0x3faf83dff3f0fe04              # double 0.061552999999999997
	.quad	0x3fe9a2a6f3f52fc2              # double 0.80110499999999996
	.quad	0x3fd070110a137f39              # double 0.25684000000000001
	.quad	0x3feeb5c182ecaeea              # double 0.95968699999999996
	.quad	0x3fde67a0f9096bba              # double 0.47507500000000003
	.quad	0x3fea45718eb89507              # double 0.82097699999999996
	.quad	0x3fe9b2acfb762d84              # double 0.80306100000000002
	.quad	0x3feae876e1deacc9              # double 0.84087699999999999
	.quad	0x3feebfc2224edf61              # double 0.96090799999999998
	.quad	0x3fb2f3a14cec41dd              # double 0.074029999999999999
	.quad	0x3fa6f6d7625204b0              # double 0.044852000000000003
	.quad	0x3fe2caf922962cfe              # double 0.58727700000000005
	.quad	0x3fdc55714b9cb685              # double 0.44271500000000003
	.quad	0x3feb84295a6c5d20              # double 0.85988299999999995
	.quad	0x3f9192ea52ef911d              # double 0.017162
	.quad	0x3fe1d2bf5515054b              # double 0.55697600000000003
	.quad	0x3fdcd041cc532a49              # double 0.45021099999999997
	.quad	0x3fe3d1d041cc532a              # double 0.61936199999999997
	.quad	0x3fd76f8ad2567989              # double 0.36618299999999998
	.quad	0x3fb7e69270b06c44              # double 0.093362000000000001
	.quad	0x3fe3257646ae3a3b              # double 0.59832300000000005
	.quad	0x3fd79a133c1ce6c1              # double 0.36877900000000002
	.quad	0x3fe4643cc07aaef3              # double 0.63723600000000002
	.quad	0x3fec9a06a6e32e38              # double 0.89380199999999999
	.quad	0x3fc711409a240315              # double 0.18021400000000001
	.quad	0x3fe0d97d49d7ba67              # double 0.52654900000000004
	.quad	0x3feafb784662bae0              # double 0.84319699999999997
	.quad	0x3fe7406c00da1a93              # double 0.72661399999999998
	.quad	0x3fe11ac14c660a20              # double 0.53451599999999999
	.quad	0x3fe9cc7f34938583              # double 0.80621299999999996
	.quad	0x3fd872cd7cf5f4e4              # double 0.38200699999999999
	.quad	0x3fe6cfdf3b645a1d              # double 0.71287500000000004
	.quad	0x3fe3292e62131a8f              # double 0.598777
	.quad	0x3fdfb020c49ba5e3              # double 0.49512499999999998
	.quad	0x3fecdb63d3e4ef03              # double 0.90178100000000005
	.quad	0x3fee6a26e5471716              # double 0.95045800000000003
	.quad	0x3fe5a09246bf0132              # double 0.67585099999999998
	.quad	0x3fd89f2fdb8fde2f              # double 0.384716
	.quad	0x3f90192a737110e4              # double 0.015720999999999999
	.quad	0x3fb7ec679cc74b84              # double 0.093451000000000006
	.quad	0x3fee4d9a52263d81              # double 0.94697299999999995
	.quad	0x3fce8101f31f46ed              # double 0.238312
	.quad	0x3fec2c8c5004fb12              # double 0.88043800000000005
	.quad	0x3feefdc37a3db3c0              # double 0.96847700000000003
	.quad	0x3fee759ee88df373              # double 0.95185799999999998
	.quad	0x3fd58d1958969a0b              # double 0.33673700000000001
	.quad	0x3fd5542e557de0d6              # double 0.33326299999999998
	.quad	0x3fe79bcdbbe0157f              # double 0.73776900000000001
	.quad	0x3fd2823c85c24c40              # double 0.28919899999999998
	.quad	0x3fe66685db76b3bc              # double 0.70001500000000005
	.quad	0x3fe7abc0e38a7e74              # double 0.73971600000000004
	.quad	0x3fcecce5f7403dde              # double 0.24062800000000001
	.quad	0x3fe2a0f0a5efe932              # double 0.58214600000000005
	.quad	0x3fdbff3f0fe047d4              # double 0.43745400000000001
	.quad	0x3fe2afec56d5cfab              # double 0.58397500000000002
	.quad	0x3fe152c9d16fc9bc              # double 0.54135599999999995
	.quad	0x3fc512a0ec743201              # double 0.164631
	.quad	0x3fcd4a558ea7ce10              # double 0.22883100000000001
	.quad	0x3f59d2391d57ff9b              # double 0.0015759999999999999
	.quad	0x3fd49314445aa2e4              # double 0.32147700000000001
	.quad	0x3fc791a32b12d341              # double 0.18413199999999999
	.quad	0x3fe5362e90364389              # double 0.66286400000000001
	.quad	0x3fed09ce4a7b4e55              # double 0.907447
	.quad	0x3f8416bdb1a6d699              # double 0.009809
	.quad	0x3fecceaf251c193b              # double 0.90022999999999997
	.quad	0x3fe1a72ead9274e2              # double 0.55165799999999998
	.quad	0x3fe143bb40b34e77              # double 0.53951800000000005
	.quad	0x3fcd0a0b1bbcf4e8              # double 0.22686899999999999
	.quad	0x3fed35696e58a32f              # double 0.91276999999999997
	.quad	0x3fd4799e518f3ecd              # double 0.31992300000000001
	.quad	0x3fe264a59c065b64              # double 0.57478600000000002
	.quad	0x3fccdeb95e5aff2a              # double 0.225547
	.quad	0x3fc9de939eadd591              # double 0.20210500000000001
	.quad	0x3fdc81f969e3c969              # double 0.44543300000000002
	.quad	0x3f8d22856605ee57              # double 0.014226000000000001
	.quad	0x3fe8359ddc1e7968              # double 0.75654500000000002
	.quad	0x3fb6e4f3343fa2ad              # double 0.089430999999999997
	.quad	0x3fc6a62aa19439de              # double 0.17694599999999999
	.quad	0x3feac6c54bcf0b6b              # double 0.83676399999999995
	.quad	0x3fe176cacd184c27              # double 0.54575099999999999
	.quad	0x3fdd13059641f645              # double 0.45428600000000002
	.quad	0x3fd238759253543b              # double 0.284696
	.quad	0x3feb85b7cfe58601              # double 0.86007299999999998
	.quad	0x3fed37c99ae924f2              # double 0.91305999999999998
	.quad	0x3fe06672fba01eef              # double 0.51250600000000002
	.quad	0x3fce2e2328f9f44d              # double 0.23578299999999999
	.quad	0x3fe65f19d66adb40              # double 0.69910899999999998
	.quad	0x3fdbc810a569b175              # double 0.43408600000000003
	.quad	0x3fdc0e0eb67c2870              # double 0.43835800000000003
	.quad	0x3fed4302b40f66a5              # double 0.91442999999999997
	.quad	0x3feac8fb86f47b67              # double 0.83703399999999994
	.quad	0x3fe9fdd00f776c48              # double 0.81223299999999998
	.quad	0x3febb393ab430f49              # double 0.86567099999999997
	.quad	0x3fd51344806290ef              # double 0.32930100000000001
	.quad	0x3fe71461b6d43d04              # double 0.72123800000000005
	.quad	0x3fca8ea39c51dabe              # double 0.207478
	.quad	0x3fef2fc2656abde4              # double 0.97458
	.quad	0x3f706ab14ec204f3              # double 0.0040080000000000003
	.quad	0x3fb1b068123810e9              # double 0.069098000000000007
	.quad	0x3fee3cb81733226c              # double 0.94491199999999997
	.quad	0x3fdeecb31c219eb6              # double 0.48319699999999999
	.quad	0x3fd8a53b8e4b87be              # double 0.38508500000000001
	.quad	0x3fccfcdee34fc611              # double 0.226467
	.quad	0x3fd99b951c5c5719              # double 0.400121
	.quad	0x3fccfc1df3300de5              # double 0.22644400000000001
	.quad	0x3fe0d4b6a619da9d              # double 0.52596600000000004
	.quad	0x3fe2fe996312f4cf              # double 0.59357899999999997
	.quad	0x3fa23b9ae0c17657              # double 0.035610999999999997
	.quad	0x3fe2dd8d79d0a676              # double 0.58954499999999999
	.quad	0x3fe0368f08461f9f              # double 0.50666
	.quad	0x3febc751ce28ed5f              # double 0.86808099999999999
	.quad	0x3fea869835158b82              # double 0.82892999999999994
	.quad	0x3fed0713f077ccc0              # double 0.90711399999999998
	.quad	0x3feb7c8b0079a283              # double 0.85895299999999997
	.quad	0x3fbae19b90ea9e6f              # double 0.105005
	.quad	0x3fe54fd6d7e889c2              # double 0.66599600000000003
	.quad	0x3fbbc31df761cbcd              # double 0.108446
	.quad	0x3fe3d72bcb5fe543              # double 0.62001600000000001
	.quad	0x3fbc346dc5d63886              # double 0.110175
	.quad	0x3fe3743c7d5ed070              # double 0.60793900000000001
	.quad	0x3fe1c894c447c30d              # double 0.55573499999999998
	.quad	0x3fdebf9830e3cd9a              # double 0.48044399999999998
	.quad	0x3fd3b5a20ddc6195              # double 0.30796099999999998
	.quad	0x3fe72fec56d5cfab              # double 0.72460000000000002
	.quad	0x3fe5a131a8ef77f2              # double 0.67592699999999994
	.quad	0x3fe16f9b994e1a3f              # double 0.54487399999999997
	.quad	0x3fe5cae85b9e8c48              # double 0.68101900000000004
	.quad	0x3fd1b15f88fc9364              # double 0.276451
	.quad	0x3fc3042d8c2a454e              # double 0.148565
	.quad	0x3fefd186db50f40e              # double 0.99432699999999996
	.quad	0x3fe0423d9231c64c              # double 0.50808600000000004
	.quad	0x3fd6c5260f5e41d5              # double 0.35578300000000002
	.quad	0x3fcd4b1ee2435697              # double 0.228855
	.quad	0x3fe61ab6d00b45ae              # double 0.69076099999999996
	.quad	0x3fbe3e07a28bb0a3              # double 0.118134
	.quad	0x3fef9f8a0902de01              # double 0.98822500000000002
	.quad	0x3fa3e89a88ace24c              # double 0.038884000000000002
	.quad	0x3fc58a009f623077              # double 0.16827400000000001
	.quad	0x3fe2c9f2fdb8fde3              # double 0.58715200000000001
	.quad	0x3fc56e6106ab14ec              # double 0.167431
	.quad	0x3fd970ac3a860dcc              # double 0.39750200000000002
	.quad	0x3fd6a743a647fdc6              # double 0.35395900000000002
	.quad	0x3fefa8522ea0fd3b              # double 0.98929699999999998
	.quad	0x3fe7888f861a60d4              # double 0.73541999999999996
	.quad	0x3fd46bce8533b107              # double 0.31907999999999997
	.quad	0x3fe12cde19fc2a88              # double 0.53672699999999995
	.quad	0x3feaac4b4d056c51              # double 0.83353200000000005
	.quad	0x3fae8ec52a411c2a              # double 0.059683
	.quad	0x3fc46db50f40e5a3              # double 0.15959799999999999
	.quad	0x3fac3760bf5d7881              # double 0.055109999999999999
	.quad	0x3fe7d69d30270f39              # double 0.74494800000000005
	.quad	0x3fe69a8ef77f27fe              # double 0.70636699999999997
	.quad	0x3fd7eb80ecfa69be              # double 0.373749
	.quad	0x3fd5cef672b88440              # double 0.34075699999999998
	.quad	0x3fe303ec892ab68d              # double 0.59422900000000001
	.quad	0x3fb9e7c8d195896a              # double 0.10119300000000001
	.quad	0x3fe5045fe1112770              # double 0.65678400000000003
	.quad	0x3fee95e5aff2a173              # double 0.95579800000000004
	.quad	0x3fcd2c7b890d5a5c              # double 0.22792000000000001
	.quad	0x3fd470e6f2e8c048              # double 0.31939099999999998
	.quad	0x3fd7e56cd6c2efd4              # double 0.37337799999999999
	.quad	0x3fe7c806290eed03              # double 0.74316700000000002
	.quad	0x3fe0461f9f01b867              # double 0.50856000000000001
	.quad	0x3fca3eaf6837f7be              # double 0.205038
	.quad	0x3fda61a1db877ab3              # double 0.41220899999999999
	.quad	0x3feb6583e8576cce              # double 0.85614199999999996
	.quad	0x3fc2d14a0a0f4d7b              # double 0.147012
	.quad	0x3fe493708aac96cc              # double 0.64299799999999996
	.quad	0x3fe63a604e1e7104              # double 0.69462599999999997
	.quad	0x3fdef61672324c83              # double 0.48376999999999998
	.quad	0x3feb80218def416c              # double 0.85939100000000001
	.quad	0x3fea780baa582dbe              # double 0.82715399999999994
	.quad	0x3fc63c4b09e98dce              # double 0.17371500000000001
	.quad	0x3fe1556084a515cf              # double 0.54167200000000004
	.quad	0x3fc0f0068db8bac7              # double 0.132325
	.quad	0x3fcae864020817fc              # double 0.21021699999999999
	.quad	0x3febda0be5109071              # double 0.870367
	.quad	0x3fd13c9abb01c92e              # double 0.26932400000000001
	.quad	0x3fb6e7e62dc6e2a8              # double 0.089476
	.quad	0x3fecc3b2dd377e1c              # double 0.89888900000000004
	.quad	0x3fd1cc25072085b2              # double 0.27808500000000003
	.quad	0x3fe7a5c3dee78184              # double 0.738985
	.quad	0x3fe2e225fa658c4c              # double 0.59010600000000002
	.quad	0x3fe19522a6f3f530              # double 0.54945500000000003
	.quad	0x3fdc5dcc63f14120              # double 0.44322499999999998
	.quad	0x3fef2749f0e4da0a              # double 0.97354600000000002
	.quad	0x3fe7d15ad106ee31              # double 0.74430600000000002
	.quad	0x3fea311a543f1c76              # double 0.81849400000000005
	.quad	0x3fe1b81d7dbf4880              # double 0.55372500000000002
	.quad	0x3fc44b5dcc63f141              # double 0.15855
	.quad	0x3fe04e5710880d80              # double 0.50956299999999999
	.quad	0x3fc3ce0fc2eba27b              # double 0.154726
	.quad	0x3fd4e0114d2f5dbc              # double 0.32617600000000002
	.quad	0x3fd1d3910c2c5e2d              # double 0.27853800000000001
	.quad	0x3fdc7d6733ebbfd7              # double 0.44515399999999999
	.quad	0x3feca95a6c5d206d              # double 0.89567300000000005
	.quad	0x3fd01eeed8904f6e              # double 0.251888
	.quad	0x3fb6428d434a01ac              # double 0.086953000000000003
	.quad	0x3fe6691212513b5c              # double 0.700326
	.quad	0x3fb9ee02a77a2ced              # double 0.101288
	.quad	0x3fed8644523f67f5              # double 0.92264000000000002
	.quad	0x3fd502d9cf13ceea              # double 0.32829900000000001
	.quad	0x3fc1309c7ffde721              # double 0.134296
	.quad	0x3fe6eb3fe9fadafd              # double 0.71621699999999999
	.quad	0x3fa4f440af1cb89d              # double 0.040925999999999997
	.quad	0x3fd3f82f51266341              # double 0.31202299999999999
	.quad	0x3fdddda8bd230b9e              # double 0.46665400000000001
	.quad	0x3fd8c4c165907d91              # double 0.38700899999999999
	.quad	0x3fce6290eed02cd4              # double 0.23738300000000001
	.quad	0x3fc342f61ed5ae1d              # double 0.150481
	.quad	0x3fed694898f605ab              # double 0.91910199999999997
	.quad	0x3fdcd6f544bb1af4              # double 0.45062000000000002
	.quad	0x3fed5c91d14e3bcd              # double 0.91754999999999998
	.quad	0x3fe055171e29b6b3              # double 0.51038700000000004
	.quad	0x3fe3b8b8ae31d713              # double 0.61629900000000004
	.quad	0x3fe65f6ba0620ab7              # double 0.69914799999999999
	.quad	0x3fef90e66cb10343              # double 0.98643800000000003
	.quad	0x3fe0bf4a98aa8651              # double 0.52335100000000001
	.quad	0x3fe963476295208e              # double 0.79336899999999999
	.quad	0x3fc68effe2a3cea7              # double 0.17623900000000001
	.quad	0x3fe4482385404641              # double 0.63380599999999998
	.quad	0x3fb34edb2f661f19              # double 0.075422000000000003
	.quad	0x3fe86d549731098d              # double 0.76334599999999997
	.quad	0x3fd0e7a743a647fe              # double 0.26413900000000001
	.quad	0x3fefda8155d5f56a              # double 0.99542299999999995
	.quad	0x3f751a437824d4cc              # double 0.0051520000000000003
	.quad	0x3fe8eb5d462c343b              # double 0.77873099999999995
	.quad	0x3fe02af9a8cdea03              # double 0.50524599999999997
	.quad	0x3fe25286b59146e5              # double 0.57257400000000003
	.quad	0x3fe665f7403dddb1              # double 0.69994699999999999
	.quad	0x3fdebb16c1e364bf              # double 0.48016900000000001
	.quad	0x3fe3db9841aac53b              # double 0.620556
	.quad	0x3fe9536933a0407d              # double 0.79143200000000002
	.quad	0x3fc95ed8d36b4c7f              # double 0.19820699999999999
	.quad	0x3fd5b75ea67e846a              # double 0.33931699999999998
	.quad	0x3fd8aed56b00ffda              # double 0.38567099999999999
	.quad	0x3fef045baf533f42              # double 0.96928199999999998
	.quad	0x3fd16876e1deacc9              # double 0.27200099999999999
	.quad	0x3fd2463065f9591d              # double 0.28553400000000001
	.quad	0x3fd68c9752977c89              # double 0.35233100000000001
	.quad	0x3fe4962cfd8f0c78              # double 0.64333200000000001
	.quad	0x3fea5a31a4bdba0a              # double 0.82350999999999996
	.quad	0x3fd7a1f080303c08              # double 0.369259
	.quad	0x3fc1e1975f2cb641              # double 0.13969699999999999
	.quad	0x3fe984662bae03b4              # double 0.797412
	.quad	0x3fbd5b24e9c45458              # double 0.114672
	.quad	0x3fd9e86c6583e857              # double 0.40481099999999998
	.quad	0x3fd071758e219653              # double 0.25692500000000001
	.quad	0x3fd1b09203a322af              # double 0.27640199999999998
	.quad	0x3feb7bd8be7296f6              # double 0.85886799999999996
	.quad	0x3fd883947496aad2              # double 0.38303100000000001
	.quad	0x3fe2318b93469942              # double 0.56854800000000005
	.quad	0x3fe2a9ed3953dea4              # double 0.58324299999999996
	.quad	0x3fb8c1a8ac5c13fd              # double 0.096704999999999999
	.quad	0x3fe2afff36ac6477              # double 0.58398399999999995
	.quad	0x3fe03291b823c85c              # double 0.50617299999999998
	.quad	0x3feea6d698fe6927              # double 0.95786599999999999
	.quad	0x3fc34a1ad6451b93              # double 0.150699
	.quad	0x3fd4db22d0e56042              # double 0.32587500000000003
	.quad	0x3fe5c76af89c5e70              # double 0.680593
	.quad	0x3fe1ac6ef3d3a1d3              # double 0.55229899999999998
	.quad	0x3fec0c586876e1df              # double 0.87650700000000004
	.quad	0x3fc4b606b7aa25d9              # double 0.161805
	.quad	0x3fe9ec9e236c15d3              # double 0.81013400000000002
	.quad	0x3fe68baa582dbe7f              # double 0.70454899999999998
	.quad	0x3fd6b59578a2a90d              # double 0.35483300000000001
	.quad	0x3fef98a65492ff4c              # double 0.98738400000000003
	.quad	0x3fe0d6861e92923e              # double 0.52618699999999996
	.quad	0x3feb65c2d2780779              # double 0.85617200000000004
	.quad	0x3fe6afcac8e68e3f              # double 0.70895900000000001
	.quad	0x3fc5dff3f0fe047d              # double 0.17089699999999999
	.quad	0x3fd6c7e6b3fe9fae              # double 0.35595100000000002
	.quad	0x3fefd9c6b0531983              # double 0.99533400000000005
	.quad	0x3fba98bb4d48882f              # double 0.103893
	.quad	0x3fe1877036c9c0a9              # double 0.54778300000000002
	.quad	0x3fe6eb2d0a244630              # double 0.71620799999999996
	.quad	0x3fd2248d7e02645e              # double 0.28348099999999998
	.quad	0x3fef857afea3df6e              # double 0.98504400000000003
	.quad	0x3fec653eb399f5e0              # double 0.887359
	.quad	0x3fb569d30270f388              # double 0.083645999999999998
	.quad	0x3fd52d5171e29b6b              # double 0.33089099999999999
	.quad	0x3fd052b0a6fc58ac              # double 0.25504700000000002
	.quad	0x3fe28fcd67fd3f5b              # double 0.58005399999999996
	.quad	0x3fe180b242070b8d              # double 0.54696
	.quad	0x3fea6d2674080f99              # double 0.825824
	.quad	0x3fc51b4784230fd0              # double 0.16489500000000001
	.quad	0x3fef0ce0b912dba5              # double 0.97032200000000001
	.quad	0x3fc461309c7ffde7              # double 0.159216
	.quad	0x3fd50db6a1e81cb4              # double 0.32896199999999998
	.quad	0x3f97674d1633482c              # double 0.022855
	.quad	0x3fca57c914b167ec              # double 0.20580399999999999
	.quad	0x3fe83aba7b9170d6              # double 0.75716899999999998
	.quad	0x3fd46e5471715c64              # double 0.31923400000000002
	.quad	0x3fe6bbe878fabda1              # double 0.71043800000000001
	.quad	0x3fe558969a0ad8a1              # double 0.66706399999999999
	.quad	0x3feef99e518f3ecd              # double 0.96797100000000002
	.quad	0x3fc0934acaff6d33              # double 0.129495
	.quad	0x3fe4debb7739f341              # double 0.65218900000000002
	.quad	0x3fed32db1e9f2778              # double 0.91245799999999999
	.quad	0x3feaf481b21c475e              # double 0.84234699999999996
	.quad	0x3fddd66f0cfe1544              # double 0.46621299999999999
	.quad	0x3fbfe8bc169c23b8              # double 0.12464500000000001
	.quad	0x3fe075ff609dcf89              # double 0.51440399999999997
	.quad	0x3fc0833c60029f17              # double 0.12900500000000001
	.quad	0x3fc393c46d82ba5a              # double 0.152947
	.quad	0x3f97c4e2f37fbefd              # double 0.023212
	.quad	0x3fefa3ad18d25edd              # double 0.98872999999999999
	.quad	0x3fda118c197e5647              # double 0.40732099999999999
	.quad	0x3fdca9a8049667b6              # double 0.447855
	.quad	0x3fedc5e2cdc011d3              # double 0.93040599999999996
	.quad	0x3fe79e83e425aee6              # double 0.73809999999999998
	.quad	0x3fc3d4738a3b57c5              # double 0.154921
	.quad	0x3f9d4a5df2239e6b              # double 0.028604000000000001
	.quad	0x3fc298eda22f6a51              # double 0.145292
	.quad	0x3fd2da9003eea20a              # double 0.29459000000000002
	.quad	0x3fe92abcd78c4370              # double 0.78646700000000003
	.quad	0x3fdb624dd2f1a9fc              # double 0.42787500000000001
	.quad	0x3fdebe76c8b43958              # double 0.480375
	.quad	0x3fdf6c69b5a63f9a              # double 0.49099199999999998
	.quad	0x3fe96cbb7f9d6f11              # double 0.79452299999999998
	.quad	0x3fea2d9274e22a2c              # double 0.81806299999999998
	.quad	0x3fe998a222d5171e              # double 0.79988199999999998
	.quad	0x3fecf0b06c43f5f9              # double 0.90438099999999999
	.quad	0x3fd228cbd1244a62              # double 0.28373999999999999
	.quad	0x3fee42917507e9d9              # double 0.94562599999999997
	.quad	0x3fd95604189374bc              # double 0.39587499999999998
	.quad	0x3fd3c942d490e66d              # double 0.30915900000000002
	.quad	0x3fd7fd1569f49060              # double 0.37482199999999999
	.quad	0x3fd04f765fd8adac              # double 0.25485000000000002
	.quad	0x3fdb41f644955b46              # double 0.42590099999999997
	.quad	0x3fe6fea1c68ec52a              # double 0.71858299999999997
	.quad	0x3fcdf5be5d9e40c8              # double 0.23406199999999999
	.quad	0x3fed39de481f5382              # double 0.91331399999999996
	.quad	0x3fddc0010c6f7a0b              # double 0.46484399999999998
	.quad	0x3fec9ae0c1765775              # double 0.89390599999999998
	.quad	0x3fefd1372a38b8ae              # double 0.99428899999999998
	.quad	0x3fb176683c297bfa              # double 0.068212999999999996
	.quad	0x3fdfe56cd6c2efd4              # double 0.49837799999999999
	.quad	0x3fe8096feb4a6656              # double 0.75115200000000004
	.quad	0x3f9d512ec6bce853              # double 0.028629999999999999
	.quad	0x3fb53b8e4b87bdcf              # double 0.08294
	.quad	0x3fd8c586876e1deb              # double 0.38705600000000001
	.quad	0x3f78d6909aed56b0              # double 0.0060639999999999999
	.quad	0x3fe9e9b5a63f9a4a              # double 0.80977900000000003
	.quad	0x3fe627008a697aee              # double 0.69226100000000002
	.quad	0x3fed020817fc7608              # double 0.90649800000000003
	.quad	0x3febbb320535c9e6              # double 0.86660099999999995
	.quad	0x3fe4f727136a4010              # double 0.65517000000000003
	.quad	0x3fc78a222d5171e3              # double 0.18390300000000001
	.quad	0x3fe0576ab5807fed              # double 0.51067099999999999
	.quad	0x3fc12cbea4ebdd33              # double 0.13417799999999999
	.quad	0x3fca455eaee2003b              # double 0.20524200000000001
	.quad	0x3fe55ef62f9ca5be              # double 0.66784200000000005
	.quad	0x3fe2cf70153bd167              # double 0.58782199999999996
	.quad	0x3fbacf52b90a7829              # double 0.104726
	.quad	0x3fd5fab53d640e9d              # double 0.34342699999999998
	.quad	0x3feb2643cc07aaef              # double 0.84842099999999998
	.quad	0x3fda4ca4f440af1d              # double 0.41092800000000002
	.quad	0x3fe932745bf26f1e              # double 0.78740900000000003
	.quad	0x3fea984c271fff7a              # double 0.83109100000000002
	.quad	0x3facc144028e4fb9              # double 0.056161999999999997
	.quad	0x3fea53e920c069e8              # double 0.822743
	.quad	0x3fdafa26a22b3893              # double 0.421518
	.quad	0x3fa782f512663411              # double 0.045920999999999997
	.quad	0x3fd50d4dc65c7043              # double 0.32893699999999998
	.quad	0x3fc55f02c4d65e46              # double 0.166962
	.quad	0x3feed8a548238540              # double 0.96394599999999996
	.quad	0x3fecd39b8887229f              # double 0.90083100000000005
	.quad	0x3fe4b7ac3eb7cbb4              # double 0.64742100000000002
	.quad	0x3fda060780fdc161              # double 0.40661799999999998
	.quad	0x3fe9d6605ee568a5              # double 0.807419
	.quad	0x3fe680ae10492360              # double 0.70320800000000006
	.quad	0x3fa44651f3e89a89              # double 0.039599000000000002
	.quad	0x3fb3f47735c182ed              # double 0.077949000000000004
	.quad	0x3fdb5dc4007570c5              # double 0.42759799999999998
	.quad	0x3fdf158750c1b973              # double 0.48568899999999998
	.quad	0x3fb6be7afa722186              # double 0.088844000000000006
	.quad	0x3fd4eb28d8665e03              # double 0.326853
	.quad	0x3f6975f2cb641701              # double 0.0031080000000000001
	.quad	0x3fdbdadb8348f53c              # double 0.43523299999999998
	.quad	0x3fd15204af922963              # double 0.27063100000000001
	.quad	0x3fe133d6c7219221              # double 0.537578
	.quad	0x3feb5379fa97e133              # double 0.85394000000000003
	.quad	0x3fe4a9670196d8f5              # double 0.645679
	.quad	0x3fd9018a43bb40b3              # double 0.39071899999999998
	.quad	0x3fd14b3c3e74afd5              # double 0.27021699999999998
	.quad	0x3fdcdee78183f91e              # double 0.45110499999999998
	.quad	0x3fef111cf355cd92              # double 0.97083900000000001
	.quad	0x3fd39a5ebb7739f3              # double 0.30629699999999999
	.quad	0x3fcdb6bb1290257d              # double 0.23213900000000001
	.quad	0x3fec1ef73c0c1fc9              # double 0.87878000000000001
	.quad	0x3fe49d3458cd20b0              # double 0.64419000000000004
	.quad	0x3fdd668c26139000              # double 0.45938400000000001
	.quad	0x3febeee525892685              # double 0.87291200000000002
	.quad	0x3fcff359ff4fd6d8              # double 0.249614
	.quad	0x3fcdc12f09d8c6d6              # double 0.232458
	.quad	0x3fd5869835158b82              # double 0.33633999999999997
	.quad	0x3f9205ff1d81f106              # double 0.017600999999999999
	.quad	0x3fd477c88e79aae7              # double 0.31981100000000001
	.quad	0x3fe0020817fc7608              # double 0.50024800000000003
	.quad	0x3f8f94855da27286              # double 0.01542
	.quad	0x3fd3e8815e39713b              # double 0.31106600000000001
	.quad	0x3fbc14b599aa6091              # double 0.109691
	.quad	0x3fea2a8eb463497b              # double 0.81769499999999995
	.quad	0x3fd44ebdd334c5da              # double 0.31730599999999998
	.quad	0x3faf6b1a2a4db164              # double 0.061364000000000002
	.quad	0x3fc608d8ec95bff0              # double 0.17214499999999999
	.quad	0x3fd0156191148fda              # double 0.251305
	.quad	0x3fe5eae3a3a8e714              # double 0.68492299999999995
	.quad	0x3fdfbd556084a516              # double 0.49593100000000001
	.quad	0x3fe6426138fffbce              # double 0.69560299999999997
	.quad	0x3fedbb8e4b87bdcf              # double 0.929145
	.quad	0x3fcfa69be09bb6aa              # double 0.24727199999999999
	.quad	0x3fdae2f7b17ce52e              # double 0.420103
	.quad	0x3fb3da61e0c5a815              # double 0.077550999999999995
	.quad	0x3feeb5d031055b8a              # double 0.95969400000000005
	.quad	0x3fe8d62174c4cdfb              # double 0.77613900000000002
	.quad	0x3fdd2cf0f9d2bf55              # double 0.455868
	.quad	0x3fc98ac9f2fdb8fe              # double 0.199548
	.quad	0x3fee260f5e41d4b7              # double 0.94214600000000004
	.quad	0x3fdb4aa10e022142              # double 0.42642999999999998
	.quad	0x3fe5fc6fbd273d5c              # double 0.68706500000000004
	.quad	0x3fea739085f4a127              # double 0.82660699999999998
	.quad	0x3fcdf9ce8d972cd8              # double 0.23418600000000001
	.quad	0x3fc58d6909aed56b              # double 0.168378
	.quad	0x3fed7dbf487fcb92              # double 0.92159999999999997
	.quad	0x3fd8676a7264a16a              # double 0.38131199999999998
	.quad	0x3fd305bc01a36e2f              # double 0.29722500000000002
	.quad	0x3fe1f3e24febd09e              # double 0.56102099999999999
	.quad	0x3fdb94ccab3edd8b              # double 0.43095699999999998
	.quad	0x3fed1d4306e5cd4f              # double 0.90982200000000002
	.quad	0x3f9d117b5286b591              # double 0.028386999999999999
	.quad	0x3f638bcdfefbf402              # double 0.0023860000000000001
	.quad	0x3fd074ddf86e3b47              # double 0.257133
	.quad	0x3fd030be0ded288d              # double 0.25297500000000001
	.quad	0x3fc1ae5796bfca86              # double 0.13813300000000001
	.quad	0x3fe3c9d16fc9bc77              # double 0.61838599999999999
	.quad	0x3fd10ae1049235f8              # double 0.266289
	.quad	0x3fed8f53c579f234              # double 0.92374599999999995
	.quad	0x3fe316b3354c1227              # double 0.59652099999999997
	.quad	0x3fe7daee631f8a09              # double 0.745475
	.quad	0x3fb1c28f5c28f5c3              # double 0.069375000000000006
	.quad	0x3fc10d2806af46aa              # double 0.133214
	.quad	0x3fbf01754b05b7d0              # double 0.121116
	.quad	0x3fc07991bc558644              # double 0.12870999999999999
	.quad	0x3fc61565c2d27807              # double 0.17252799999999999
	.quad	0x3fca63e07a28bb0a              # double 0.206173
	.quad	0x3fe829a5ebb7739f              # double 0.75508399999999998
	.quad	0x3fec281ba7fc32ec              # double 0.87989600000000001
	.quad	0x3fe10afe60c38f36              # double 0.53259199999999995
	.quad	0x3fe9c1919ac79703              # double 0.80487900000000001
	.quad	0x3f9794ea077036ca              # double 0.023029000000000001
	.quad	0x3fc8378ab0c88a48              # double 0.189195
	.quad	0x3fa014940bbb1f25              # double 0.031406999999999997
	.quad	0x3fefdc209246bf01              # double 0.99562099999999997
	.quad	0x3fb62b5a20ddc619              # double 0.086598999999999995
	.quad	0x3fe082fd75e2046c              # double 0.51598999999999995
	.quad	0x3fe26d9be4cd7492              # double 0.57587999999999995
	.quad	0x3fd59fe86833c600              # double 0.33788499999999999
	.quad	0x3fe290c4dec1c1d7              # double 0.58017200000000002
	.quad	0x3fe087442c7fbacb              # double 0.51651199999999997
	.quad	0x3fd4c243dccea290              # double 0.32435700000000001
	.quad	0x3fe328283d35eb74              # double 0.59865199999999996
	.quad	0x3fe8fbdad7518b0d              # double 0.78074399999999999
	.quad	0x3fed055b89939219              # double 0.90690400000000004
	.quad	0x3fe181a9b8cb8e08              # double 0.54707799999999995
	.quad	0x3feb422467be553b              # double 0.85182400000000003
	.quad	0x3fd95f99c38b04ab              # double 0.39645999999999998
	.quad	0x3fe45cf0307f23cd              # double 0.63634500000000005
	.quad	0x3fdd91a75cd0bb6f              # double 0.46201500000000001
	.quad	0x3fd2fd6d7e889c1b              # double 0.29671799999999998
	.quad	0x3fdb933a0407cc7d              # double 0.43086099999999999
	.quad	0x3fc9510d38cda6e7              # double 0.19778599999999999
	.quad	0x3fe63c9cd3e0bd45              # double 0.69489900000000004
	.quad	0x3fe23c3a42f1ed18              # double 0.56985200000000003
	.quad	0x3fe3abcf91a32b13              # double 0.61472300000000002
	.quad	0x3fc62b5a20ddc619              # double 0.17319799999999999
	.quad	0x3fe9cedb2f661f19              # double 0.80650100000000002
	.quad	0x3fcebf0995aaf790              # double 0.240205
	.quad	0x3febb5ed8d36b4c8              # double 0.86595800000000001
	.quad	0x3fe009dadfb506dd              # double 0.50120299999999995
	.quad	0x3fe8ffdc5931ca7d              # double 0.78123299999999996
	.quad	0x3fe3d96638433d6c              # double 0.62028799999999995
	.quad	0x3fe4560e94ee392e              # double 0.63550499999999999
	.quad	0x3fe5836eb4e98138              # double 0.67229399999999995
	.quad	0x3feb5b0ff10ecb75              # double 0.85486600000000001
	.quad	0x3fdafbc1acde19fc              # double 0.42161599999999999
	.quad	0x3fc4529bae46cfc8              # double 0.158771
	.quad	0x3fe92b777d0f1f58              # double 0.78655600000000003
	.quad	0x3fe916ca46e08f21              # double 0.78403199999999995
	.quad	0x3fee9682f944241c              # double 0.95587299999999997
	.quad	0x3fc19f87f023e9ea              # double 0.137681
	.quad	0x3feea9c12f09d8c7              # double 0.95822200000000001
	.quad	0x3fc661ae70c1333c              # double 0.17485600000000001
	.quad	0x3fe52f9a8cdea034              # double 0.66206100000000001
	.quad	0x3fb7fda4052d666b              # double 0.093714000000000006
	.quad	0x3fdb6cebbba55d1c              # double 0.42852299999999999
	.quad	0x3fd93743632c1f43              # double 0.39399800000000001
	.quad	0x3f9cb5fe542e557e              # double 0.028038
	.quad	0x3fee9dd7ecbb7f9d              # double 0.95676799999999995
	.quad	0x3fc4a3400b88ca3e              # double 0.16123199999999999
	.quad	0x3fcfa2df9378ee28              # double 0.24715799999999999
	.quad	0x3fec037f7be121ee              # double 0.87542699999999996
	.quad	0x3fdd950331e3a7db              # double 0.46222000000000002
	.quad	0x3fdde93e1c9b413a              # double 0.46736100000000003
	.quad	0x3fd8c8b0079a2835              # double 0.38724900000000001
	.quad	0x3fd59b6b2af14552              # double 0.33761099999999999
	.quad	0x3fe41ab0856e696a              # double 0.62825799999999998
	.quad	0x3f9d590c0ad03d9b              # double 0.028660000000000001
	.quad	0x3fda12839042d8c3              # double 0.40738000000000002
	.quad	0x3fde6138fffbce42              # double 0.47468399999999999
	.quad	0x3fe0d1697f1f9ad0              # double 0.525563
	.quad	0x3fedd7774aba3876              # double 0.93255200000000005
	.quad	0x3fbb8726d04e618d              # double 0.107531
	.quad	0x3feadc7ef177a701              # double 0.83941600000000005
	.quad	0x3fd179314445aa2e              # double 0.27302199999999999
	.quad	0x3fdb9d2bf5515055              # double 0.43146800000000002
	.quad	0x3fde5e0f7fcfc3f8              # double 0.474491
	.quad	0x3fed3a08398a6549              # double 0.91333399999999998
	.quad	0x3fe44acaff6d3309              # double 0.63412999999999997
	.quad	0x3fe7fab10ba62670              # double 0.74935200000000002
	.quad	0x3fe4f30a4e379b78              # double 0.65466800000000003
	.quad	0x3feae92f6e82949a              # double 0.84096499999999996
	.quad	0x3fefb71327243138              # double 0.99109800000000003
	.quad	0x3fd15a4acf312b1b              # double 0.27113599999999999
	.quad	0x3fe5e92d55a3a084              # double 0.68471400000000004
	.quad	0x3fa9d3cbc48f10aa              # double 0.050444000000000003
	.quad	0x3fddfc86cebbba56              # double 0.46853800000000001
	.quad	0x3fec5b20b8066c2b              # double 0.88612400000000002
	.quad	0x3fdf6b15f88fc936              # double 0.49091099999999999
	.quad	0x3fe0d579af1886e0              # double 0.52605900000000005
	.quad	0x3fc880c73abc9470              # double 0.19142999999999999
	.quad	0x3fb999dcb5781c71              # double 0.100004
	.quad	0x3fdc19695d91ab8f              # double 0.43905100000000002
	.quad	0x3fe5e785b5b70692              # double 0.68451200000000001
	.quad	0x3faa6fe718a86d72              # double 0.051635
	.quad	0x3fc34013ec460ed8              # double 0.150393
	.quad	0x3fdc33a4723aafff              # double 0.44065199999999999
	.quad	0x3fc5cd5f99c38b05              # double 0.17033000000000001
	.quad	0x3fe94297bfa4c61e              # double 0.78937900000000005
	.quad	0x3fe3a6527a20578e              # double 0.61405299999999996
	.quad	0x3fe4f39b024f6599              # double 0.65473700000000001
	.quad	0x3fa807fed20296b3              # double 0.046935999999999999
	.quad	0x3fe6ca72ead9274e              # double 0.71221299999999998
	.quad	0x3fe9f66a55087011              # double 0.81133
	.quad	0x3fe339884c6a3bde              # double 0.600773
	.quad	0x3fa83c297bfa4c62              # double 0.047334000000000001
	.quad	0x3fedb606b7aa25d9              # double 0.92847000000000002
	.quad	0x3fbe8a936c58eeaf              # double 0.11930200000000001
	.quad	0x3fcf6113404ea4a9              # double 0.24515000000000001
	.quad	0x3fef5cca70d1fa33              # double 0.98007699999999997
	.quad	0x3fe285a921ccd962              # double 0.578816
	.quad	0x3fec1e14bdfd2631              # double 0.87867200000000001
	.quad	0x3fec63ed0f627393              # double 0.88719800000000004
	.quad	0x3fecf55582129457              # double 0.90494799999999997
	.quad	0x3fd02b2bfdb4cc25              # double 0.252635
	.quad	0x3fed5870da5daf08              # double 0.91704600000000003
	.quad	0x3fdff566490a350d              # double 0.49935299999999999
	.quad	0x3fd98283d35eb745              # double 0.39859099999999997
	.quad	0x3fe947325918a00a              # double 0.789941
	.quad	0x3fb12ac753e707e1              # double 0.067058999999999994
	.quad	0x3fe8bfdf7e8038a0              # double 0.77342200000000005
	.quad	0x3fec57add15f02c5              # double 0.88570300000000002
	.quad	0x3fbb356da0168b5d              # double 0.106284
	.quad	0x3fecf225b749adc9              # double 0.904559
	.quad	0x3fe704ad794a6eb9              # double 0.71932099999999999
	.quad	0x3fe6128bf3bea91e              # double 0.68976400000000004
	.quad	0x3fdd5846e8f29d41              # double 0.458513
	.quad	0x3fec6084a515ce9e              # double 0.88678199999999996
	.quad	0x3feb0a88effe2a3d              # double 0.84503600000000001
	.quad	0x3fe873bc903ea705              # double 0.76412800000000003
	.quad	0x3fe3a715831f03d1              # double 0.61414599999999997
	.quad	0x3fdf573647baa9b5              # double 0.48969800000000002
	.quad	0x3fe5843c3a42f1ed              # double 0.67239199999999999
	.quad	0x3f9a159817b95a29              # double 0.025472999999999999
	.quad	0x3fdeb2788db0574b              # double 0.47964299999999999
	.quad	0x3feea22b3892ee85              # double 0.95729600000000004
	.quad	0x3fe59569f4906035              # double 0.67448900000000001
	.quad	0x3fef2d18d25edd05              # double 0.97425499999999998
	.quad	0x3fe8362845996745              # double 0.75661100000000003
	.quad	0x3fe1a48f96e15875              # double 0.55133799999999999
	.quad	0x3fe49c2c1b10fd7e              # double 0.64406399999999997
	.quad	0x3fe1ece789e774ef              # double 0.56016900000000003
	.quad	0x3feae2f166e008ea              # double 0.84020300000000003
	.quad	0x3fefcc74b838c112              # double 0.99370800000000004
	.quad	0x3f83b9f127f5e84f              # double 0.0096319999999999999
	.quad	0x3fdc7ff151e75361              # double 0.44530900000000001
	.quad	0x3fe7e0285ec3dab6              # double 0.74611300000000003
	.quad	0x3fddddaceee0f3cb              # double 0.46665499999999999
	.quad	0x3fef9420b3d4ae43              # double 0.98683200000000004
	.quad	0x3fda7829068986fd              # double 0.41358400000000001
	.quad	0x3fc5985271bcdbbe              # double 0.168711
	.quad	0x3fed67dbb16c1e36              # double 0.91892799999999997
	.quad	0x3fdfd6909aed56b0              # double 0.497471
	.quad	0x3fd5a743a647fdc6              # double 0.33833400000000002
	.quad	0x3fe8a5d6bebe1651              # double 0.77024400000000004
	.quad	0x3fdeb76f6d762520              # double 0.47994599999999998
	.quad	0x3fec5028a1dfb939              # double 0.88478500000000004
	.quad	0x3fe5c7820a30db6a              # double 0.68060399999999999
	.quad	0x3fd81ed9dfdac68b              # double 0.37688300000000002
	.quad	0x3fe4e73e681a9b8d              # double 0.65322800000000003
	.quad	0x3fc54f0520d130e0              # double 0.16647400000000001
	.quad	0x3fe3506573215fcc              # double 0.60356399999999999
	.quad	0x3fddfbf83382e44b              # double 0.46850399999999998
	.quad	0x3fe48225742dcf46              # double 0.64088699999999998
	.quad	0x3fec4cd31769a911              # double 0.884378
	.quad	0x3fd7c9752977c88e              # double 0.37167099999999997
	.quad	0x3fed3a604e1e7104              # double 0.91337599999999996
	.quad	0x3fe3779a6b50b0f2              # double 0.60834999999999995
	.quad	0x3fde7763e4abe6a3              # double 0.47603699999999999
	.quad	0x3fe8b3f20a73f749              # double 0.77196600000000004
	.quad	0x3feea7ce0fc2eba2              # double 0.95798399999999995
	.quad	0x3fd705f28848387e              # double 0.359738
	.quad	0x3fe916fc9bc77143              # double 0.78405599999999998
	.quad	0x3fa334e7685985ad              # double 0.037512999999999998
	.quad	0x3fa9709310129cbb              # double 0.049687000000000002
	.quad	0x3fc690f733a8a3f9              # double 0.17629900000000001
	.quad	0x3feb3743632c1f43              # double 0.85049600000000003
	.quad	0x3fb6f6837f7be122              # double 0.089699
	.quad	0x3fd88f42fe82517e              # double 0.38374399999999997
	.quad	0x3fc2443914f483cb              # double 0.142707
	.quad	0x3fdeac471b478423              # double 0.479265
	.quad	0x3fb3dbc23315d702              # double 0.077572000000000002
	.quad	0x3fd349f94855da27              # double 0.30138999999999999
	.quad	0x3fe1468a936c58ef              # double 0.53986100000000004
	.quad	0x3fedac5e2cdc011d              # double 0.92729099999999998
	.quad	0x3fe26cdaf4adbc66              # double 0.57578799999999997
	.quad	0x3fc87253da72a7bd              # double 0.19098899999999999
	.quad	0x3fe6235935fc3b4f              # double 0.69181499999999996
	.quad	0x3fd2ddce7cd03537              # double 0.29478799999999999
	.quad	0x3feb78c21e1d2179              # double 0.858491
	.quad	0x3feb2f20ea5b530d              # double 0.84950300000000001
	.quad	0x3fd9f82b1f687b14              # double 0.40577200000000002
	.quad	0x3fda6f9fcb0c026d              # double 0.41306300000000001
	.quad	0x3fe7ed3953dea466              # double 0.74770800000000004
	.quad	0x3fec930be0ded289              # double 0.89295000000000002
	.quad	0x3fd88a43bb40b34e              # double 0.38343899999999997
	.quad	0x3fed59ff4fd6d7e9              # double 0.91723600000000005
	.quad	0x3fe32ac96cc5fbf8              # double 0.59897299999999998
	.quad	0x3fdb8c4bd33d2956              # double 0.43043799999999999
	.quad	0x3fd906e19b90ea9e              # double 0.39104499999999998
	.quad	0x3fc09c66d373affb              # double 0.129773
	.quad	0x3fe0bdff3f0fe048              # double 0.52319300000000002
	.quad	0x3fee3b6cbd987c63              # double 0.94475399999999998
	.quad	0x3fae41919ac79703              # double 0.059094000000000001
	.quad	0x3fb93cab81f969e4              # double 0.098582000000000002
	.quad	0x3fef9e59f2ba9d1f              # double 0.98807999999999995
	.quad	0x3fd306748e475600              # double 0.29726900000000001
	.quad	0x3fef2c322291fb40              # double 0.97414500000000003
	.quad	0x3fe666559f6ec5b0              # double 0.69999199999999995
	.quad	0x3fef04e3ffef3908              # double 0.96934699999999995
	.quad	0x3f9094e5d5b24e9c              # double 0.016192999999999999
	.quad	0x3fe6dee34fc610f1              # double 0.71470800000000001
	.quad	0x3fd8ca70d1fa3337              # double 0.38735599999999998
	.quad	0x3febbdd76683c298              # double 0.86692400000000003
	.quad	0x3fae72da122fad6d              # double 0.059470000000000002
	.quad	0x3fa75e41d4b6a61a              # double 0.045641000000000001
	.quad	0x3fcde892253111f1              # double 0.23366000000000001
	.quad	0x3fe7556f32bdc26e              # double 0.72917900000000002
	.quad	0x3fdda2fcefaa4767              # double 0.46307300000000001
	.quad	0x3fefae1ef73c0c20              # double 0.99000500000000002
	.quad	0x3fee1c714fce746d              # double 0.94097200000000003
	.quad	0x3fbd42b302f72b45              # double 0.114299
	.quad	0x3fd438088509bf9c              # double 0.31591999999999998
	.quad	0x3fd9edd052934acb              # double 0.40514
	.quad	0x3fedd5ac03ff6901              # double 0.93233299999999997
	.quad	0x3fee72170931012a              # double 0.95142700000000002
	.quad	0x3fe80a6117720c8d              # double 0.75126700000000002
	.quad	0x3fe685dfa871a3b1              # double 0.70384199999999997
	.quad	0x3f92c7b890d5a5b9              # double 0.018339999999999999
	.quad	0x3fa42070b8cfbfc6              # double 0.039309999999999998
	.quad	0x3fefd4801f75104d              # double 0.99468999999999996
	.quad	0x3fe64cb7d41743e9              # double 0.69686499999999996
	.quad	0x3fe9b8ac18f81e8a              # double 0.80379299999999998
	.quad	0x3feff4927913e814              # double 0.99860499999999996
	.quad	0x3fe70a06e9ff0cbb              # double 0.719974
	.quad	0x3fe66bf22c01e68a              # double 0.70067699999999999
	.quad	0x3fd3787ce95faa8b              # double 0.30422900000000003
	.quad	0x3fd13acd5b6805a3              # double 0.26921400000000001
	.quad	0x3fd42fd32c625e9a              # double 0.315419
	.quad	0x3fe1be1869835159              # double 0.55445500000000003
	.quad	0x3fe1804b7f5a5333              # double 0.54691100000000004
	.quad	0x3fedb35d249e44fa              # double 0.928145
	.quad	0x3fec0945f9df548f              # double 0.87613200000000002
	.quad	0x3fd49d0635a426bb              # double 0.32208399999999998
	.quad	0x3fe408fa7a85015c              # double 0.62609599999999999
	.quad	0x3fe3d35a858793de              # double 0.61955000000000005
	.quad	0x3fe64957cd466f50              # double 0.69645299999999999
	.quad	0x3fe756ffc115df65              # double 0.72936999999999996
	.quad	0x3fd7c25072085b18              # double 0.37123499999999998
	.quad	0x3fd6f676ea422899              # double 0.35879299999999997
	.quad	0x3fb42fb5d031055c              # double 0.078853000000000006
	.quad	0x3fdbea9e6eeb7026              # double 0.436195
	.quad	0x3fd2ac29bf162ae5              # double 0.29175800000000002
	.quad	0x3fbd51b4fe79ee03              # double 0.114528
	.quad	0x3fd7e325d4a5df22              # double 0.37323899999999999
	.quad	0x3fe3d9f6ec5b078e              # double 0.62035700000000005
	.quad	0x3fdeee7c49fd7a14              # double 0.48330600000000001
	.quad	0x3fe0160fa15db339              # double 0.50269299999999995
	.quad	0x3fe3578e5c4eb570              # double 0.60443800000000003
	.quad	0x3fd01ea78af3e469              # double 0.25187100000000001
	.quad	0x3fe005d31337eb29              # double 0.50071100000000002
	.quad	0x3fc9c49fd7a13c25              # double 0.20131299999999999
	.quad	0x3fe60e6f2e8c0486              # double 0.68926200000000004
	.quad	0x3fc7d95dd4c76d11              # double 0.18632099999999999
	.quad	0x3fe448216c61522a              # double 0.63380499999999995
	.quad	0x3facaba387592535              # double 0.055996999999999998
	.quad	0x3fda04102ff8ec10              # double 0.40649800000000003
	.quad	0x3fde7d1351159c49              # double 0.47638399999999997
	.quad	0x3f8528f190d173fb              # double 0.010331999999999999
	.quad	0x3fb746994185058e              # double 0.090921000000000001
	.quad	0x3fec7e77d523b363              # double 0.89043799999999995
	.quad	0x3fb6b9c304ccee5b              # double 0.088772000000000004
	.quad	0x3fbf2ce89656eefa              # double 0.121779
	.quad	0x3fe0e6fb4c3c18b5              # double 0.528196
	.quad	0x3fd4588e368f0846              # double 0.31790499999999999
	.quad	0x3feeb4e11dbca969              # double 0.95957999999999998
	.quad	0x3fee801b43526528              # double 0.95313800000000004
	.quad	0x3fe96f3d3a1d3240              # double 0.79482900000000001
	.quad	0x3fbdc4b90214ad36              # double 0.116283
	.quad	0x3fef4de3b8a19c9d              # double 0.97825799999999996
	.quad	0x3fee6c093d966384              # double 0.95068799999999997
	.quad	0x3fec940dd3fe1976              # double 0.89307300000000001
	.quad	0x3fddeff1950331e4              # double 0.46777000000000002
	.quad	0x3fd12bdc26dce39b              # double 0.26830199999999998
	.quad	0x3fe47394b7b28955              # double 0.63910900000000004
	.quad	0x3fd0079a2834d270              # double 0.25046400000000002
	.quad	0x3fe92f05a708ede5              # double 0.78698999999999997
	.quad	0x3fb80da1a93293d1              # double 0.093958
	.quad	0x3fe423d9231c64bb              # double 0.62937600000000005
	.quad	0x3fd897fa5d28d003              # double 0.38427600000000001
	.quad	0x3fa5fe542e557de1              # double 0.042956000000000001
	.quad	0x3fe82de00d1b7176              # double 0.75560000000000005
	.quad	0x3fde653868fd199c              # double 0.47492800000000002
	.quad	0x3fc2ab5807fed203              # double 0.14585400000000001
	.quad	0x3fef4ee392e1ef74              # double 0.97838000000000002
	.quad	0x3fc9eb6bf444e0db              # double 0.20249700000000001
	.quad	0x3fe958cd20afa2f0              # double 0.79208999999999996
	.quad	0x3fbc0cd855970b4a              # double 0.109571
	.quad	0x3fc53d8e0008637c              # double 0.16594100000000001
	.quad	0x3fef0c8259e1f3a5              # double 0.97027699999999994
	.quad	0x3fdfdfa00e27e0f0              # double 0.49802400000000002
	.quad	0x3fec68e820e62995              # double 0.88780599999999998
	.quad	0x3fb0488c60cbf2b2              # double 0.063606999999999997
	.quad	0x3fc86c7eae5bc87e              # double 0.19081100000000001
	.quad	0x3f8971c10d7be985              # double 0.012423999999999999
	.quad	0x3fdc23fab10ba626              # double 0.43969599999999998
	.quad	0x3fdc54477ff151e7              # double 0.44264399999999998
	.quad	0x3fe390a782906898              # double 0.61140799999999995
	.quad	0x3fe92cde19fc2a88              # double 0.78672699999999995
	.quad	0x3f7058dde7a743a6              # double 0.0039909999999999998
	.quad	0x3fc6c4d65e460675              # double 0.17788200000000001
	.quad	0x3fe792146a1a500d              # double 0.73658199999999996
	.quad	0x3fe00333fc86cebc              # double 0.50039100000000003
	.quad	0x3fd9f70153bd1676              # double 0.40570099999999998
	.quad	0x3fead09bf9c62a1b              # double 0.83796499999999996
	.quad	0x3febca1272c94b38              # double 0.86841699999999999
	.quad	0x3fe9a682b6284599              # double 0.80157599999999996
	.quad	0x3fb988c1db0142f6              # double 0.099742999999999998
	.quad	0x3fea24e379b77c03              # double 0.81700300000000003
	.quad	0x3fcaccee5abc0e39              # double 0.20937900000000001
	.quad	0x3fe7e3a9f383f0bb              # double 0.74654100000000001
	.quad	0x3fee239e6ab9b23e              # double 0.94184800000000002
	.quad	0x3fe9ddcc63f14120              # double 0.80832499999999996
	.quad	0x3fe6f416bdb1a6d7              # double 0.71729600000000004
	.quad	0x3fe558904f6dfc5d              # double 0.66706100000000002
	.quad	0x3febe5e4606748e4              # double 0.87181299999999994
	.quad	0x3fe573affb04ee7c              # double 0.67037199999999997
	.quad	0x3fe6336deb95e5b0              # double 0.69377800000000001
	.quad	0x3fd3a1059ea57215              # double 0.306703
	.quad	0x3fe165e2478854ce              # double 0.54368700000000003
	.quad	0x3fea724b76f6d762              # double 0.82645199999999996
	.quad	0x3fe2af23033a4724              # double 0.58387900000000004
	.quad	0x3fe1ccc25072085b              # double 0.55624499999999999
	.quad	0x3fe43fa8f7db6e50              # double 0.63277099999999997
	.quad	0x3feedec80c73abc9              # double 0.96469499999999996
	.quad	0x3fda13e3e29307af              # double 0.40746399999999999
	.quad	0x3f9a4bdba0a52696              # double 0.025680000000000001
	.quad	0x3fc86644d87724fb              # double 0.19062100000000001
	.quad	0x3fe9a3d2d87f8876              # double 0.80124799999999996
	.quad	0x3fe5369552e2fbe3              # double 0.66291299999999997
	.quad	0x3fe613ab430f4949              # double 0.68990099999999999
	.quad	0x3fc468cac4b4d057              # double 0.15944800000000001
	.quad	0x3fd24395810624dd              # double 0.28537499999999999
	.quad	0x3fe5206e9ff0cbb0              # double 0.66020900000000005
	.quad	0x3fe49c3ac929aa1d              # double 0.64407099999999995
	.quad	0x3fdf99ed7c6fbd27              # double 0.49376999999999999
	.quad	0x3fd240af1cb89d6b              # double 0.28519800000000001
	.quad	0x3fc1ce63a5c1c609              # double 0.13911100000000001
	.quad	0x3fe09873ffac1d2a              # double 0.51861000000000002
	.quad	0x3fe529dc725c3dee              # double 0.66135999999999995
	.quad	0x3fc7bb517a46173c              # double 0.18540400000000001
	.quad	0x3fb34d8ba40d90e2              # double 0.075401999999999997
	.quad	0x3fe7ac471b478423              # double 0.73977999999999999
	.quad	0x3feb4a2b9d3cbc49              # double 0.85280400000000001
	.quad	0x3fea36b2af145522              # double 0.81917700000000004
	.quad	0x3fd74712e40852b5              # double 0.36371300000000001
	.quad	0x3fe4315f88fc9364              # double 0.631027
	.quad	0x3fd273c925785f8d              # double 0.28831699999999999
	.quad	0x3fd509528f190d17              # double 0.32869399999999999
	.quad	0x3fc818b502ababeb              # double 0.188254
	.quad	0x3fe4750e34762952              # double 0.639289
	.quad	0x3fe00c154c985f07              # double 0.501475
	.quad	0x3fdc26d8b1dd5d3e              # double 0.43987100000000001
	.quad	0x3fdcdadb8348f53c              # double 0.45085799999999998
	.quad	0x3fc7668c26139000              # double 0.18281700000000001
	.quad	0x3fd321b7e0ac7da2              # double 0.298933
	.quad	0x3fe498958d9b5e96              # double 0.64362600000000003
	.quad	0x3fee575c0767d34e              # double 0.94816400000000001
	.quad	0x3fdf86ca89fc6da4              # double 0.49260199999999998
	.quad	0x3fb7315d701d9f4d              # double 0.090596999999999997
	.quad	0x3feff5818c5c9a35              # double 0.99871900000000002
	.quad	0x3fa739d1b2e59afa              # double 0.045363000000000001
	.quad	0x3fae97d06bbdbe3c              # double 0.059752
	.quad	0x3fe6fd1351159c49              # double 0.71839299999999995
	.quad	0x3febc901d19157ac              # double 0.86828700000000003
	.quad	0x3fcb5cc857f3061c              # double 0.21376899999999999
	.quad	0x3fc54aec8d5c7475              # double 0.166349
	.quad	0x3fe2dad538ac18f8              # double 0.58921299999999999
	.quad	0x3febbfa4c61d8623              # double 0.86714400000000003
	.quad	0x3fe4b9dc2f405f6c              # double 0.64768800000000004
	.quad	0x3fed8e1b4bb5e0f8              # double 0.923597
	.quad	0x3fc72ee84ad794a7              # double 0.181119
	.quad	0x3fde1b4fe79ee02a              # double 0.47041699999999997
	.quad	0x3feea849cb252ce0              # double 0.95804299999999997
	.quad	0x3fdd9d2bf5515055              # double 0.46271800000000002
	.quad	0x3fc1775b81301648              # double 0.13645499999999999
	.quad	0x3fd157e670e2c12b              # double 0.27099000000000001
	.quad	0x3fde257c914b167f              # double 0.47103800000000001
	.quad	0x3fbc13ec460ed80a              # double 0.109679
	.quad	0x3fd45c96030c23fb              # double 0.31815100000000002
	.quad	0x3fd19934efcbd556              # double 0.274976
	.quad	0x3fcc21a719b4dcec              # double 0.219777
	.quad	0x3fe478af3e468cac              # double 0.63973199999999997
	.quad	0x3fef8157eed45e92              # double 0.98453900000000005
	.quad	0x3fe921f4b1ee2435              # double 0.78539499999999995
	.quad	0x3fe6996fa82e87d3              # double 0.70623000000000002
	.quad	0x3fec9eadd590c0ad              # double 0.89437
	.quad	0x3fd49a62ed352221              # double 0.32192300000000001
	.quad	0x3fe4a6efc371da38              # double 0.64537800000000001
	.quad	0x3fee742dcf4623d1              # double 0.95168200000000003
	.quad	0x3fd6ac6045baf534              # double 0.354271
	.quad	0x3fef31f255f3519c              # double 0.97484700000000001
	.quad	0x3fe99394317acc4f              # double 0.799265
	.quad	0x3fea51654d61b2a2              # double 0.82243599999999994
	.quad	0x3fe7789613d31b9b              # double 0.73346999999999996
	.quad	0x3f67fe8ee6b8305e              # double 0.0029290000000000002
	.quad	0x3fc1ecbb7f9d6f11              # double 0.14003699999999999
	.quad	0x3fe4f54b05b7cfe6              # double 0.65494300000000005
	.quad	0x3fe5dd52c16df3f9              # double 0.68326699999999996
	.quad	0x3fe0fb9170d62bf1              # double 0.53070899999999999
	.quad	0x3fd53868fd199bb2              # double 0.33156799999999997
	.quad	0x3fa86d5065732160              # double 0.047709000000000001
	.quad	0x3fe1d199bb2788db              # double 0.556836
	.quad	0x3fedaf5ba2be058a              # double 0.92765600000000004
	.quad	0x3fb3fbacb4289119              # double 0.078059000000000003
	.quad	0x3febe1e71044f1a2              # double 0.87132600000000004
	.quad	0x3fd7a84be40420f7              # double 0.369647
	.quad	0x3fd7a23bff8a8f3b              # double 0.36927700000000002
	.quad	0x3fd19591cd1c7de5              # double 0.274754
	.quad	0x3fdf0ee49f51697f              # double 0.48528399999999999
	.quad	0x3fd4bfc6540cc78f              # double 0.32420500000000002
	.quad	0x3fe72c77574f722e              # double 0.72417799999999999
	.quad	0x3fe64f26aec0724b              # double 0.69716199999999995
	.quad	0x3fe066516db0dd83              # double 0.51249
	.quad	0x3fe299bd4067cf1c              # double 0.58126699999999998
	.quad	0x3fd856a7ac81d3aa              # double 0.38028899999999999
	.quad	0x3fa55992428d434a              # double 0.041699
	.quad	0x3fd93532e7b3d8e0              # double 0.393872
	.quad	0x3fdf894812be48a6              # double 0.49275400000000003
	.quad	0x3fca88bda9435ac9              # double 0.20729800000000001
	.quad	0x3fe2f2756861e929              # double 0.59209699999999998
	.quad	0x3fbbd50225742dcf              # double 0.108719
	.quad	0x3fdaa9bcfd4bf099              # double 0.41660999999999998
	.quad	0x3fde3e63e8dda48b              # double 0.47255799999999998
	.quad	0x3fe5217b0f6ad70e              # double 0.66033699999999995
	.quad	0x3fda71cda2b5a20e              # double 0.41319600000000001
	.quad	0x3fe0f7b9e060fe48              # double 0.53024000000000004
	.quad	0x3fc60a393ee5eedd              # double 0.17218700000000001
	.quad	0x3feaa4acf312b1b3              # double 0.83260199999999995
	.quad	0x3fe82e642bf9830e              # double 0.75566299999999997
	.quad	0x3fd44cbe1eb4202e              # double 0.31718400000000002
	.quad	0x3fc6a222d5171e2a              # double 0.17682300000000001
	.quad	0x3fc462a1b5c7cd8a              # double 0.15926000000000001
	.quad	0x3fb3fd50225742dd              # double 0.078084000000000001
	.quad	0x3fe75be3c105186e              # double 0.72996700000000003
	.quad	0x3fd022d0e5604189              # double 0.25212499999999999
	.quad	0x3fec12189bd8383b              # double 0.87720900000000002
	.quad	0x3fc43fd50225742e              # double 0.15819800000000001
	.quad	0x3fc6087ca643cc08              # double 0.17213400000000001
	.quad	0x3fecb5eb7457c0b1              # double 0.89720699999999998
	.quad	0x3fee53a81dc0db27              # double 0.947712
	.quad	0x3f82253111f0c34c              # double 0.0088599999999999998
	.quad	0x3fea28a1dfb9389b              # double 0.81745999999999996
	.quad	0x3fb4f3882278d0cc              # double 0.081840999999999997
	.quad	0x3fe406af46aa087d              # double 0.62581600000000004
	.quad	0x3feceb56fb8f57f7              # double 0.90372799999999998
	.quad	0x3feb6fb09203a323              # double 0.85738400000000003
	.quad	0x3fdab70691ea78af              # double 0.41742099999999999
	.quad	0x3fe42497fa5d28d0              # double 0.629467
	.quad	0x3f862174c4cdfaca              # double 0.010806
	.quad	0x3fe9df3d7d3910c3              # double 0.80850100000000003
	.quad	0x3fdb573a797891e2              # double 0.427199
	.quad	0x3fc580dc33721d54              # double 0.16799500000000001
	.quad	0x3fee2f8df7a4e7ab              # double 0.94330499999999995
	.quad	0x3fb1ac258d5842b7              # double 0.069032999999999997
	.quad	0x3fe85a78f25a2510              # double 0.76104400000000005
	.quad	0x3fc337f38c5436b9              # double 0.150145
	.quad	0x3fe64d855970b49e              # double 0.696963
	.quad	0x3fba8dc981beb181              # double 0.103726
	.quad	0x3feaa3c64345cfee              # double 0.83249200000000001
	.quad	0x3fe0e20ab7132724              # double 0.52759299999999998
	.quad	0x3fe3df04ddb5525d              # double 0.62097400000000003
	.quad	0x3fe3012599ed7c70              # double 0.59389000000000003
	.quad	0x3fe56f1348b22079              # double 0.66980899999999999
	.quad	0x3fd4dad7518b0d0f              # double 0.32585700000000001
	.quad	0x3fa4f7caa7589efe              # double 0.040953000000000003
	.quad	0x3fc14acaff6d3309              # double 0.13509499999999999
	.quad	0x3fe55c0b9991361e              # double 0.66748600000000002
	.quad	0x3fd02046c764ae00              # double 0.25197000000000003
	.quad	0x3fed813a92a30553              # double 0.92202499999999998
	.quad	0x3fcaafa2f05a708f              # double 0.208485
	.quad	0x3fd9fd71b0468449              # double 0.40609400000000001
	.quad	0x3fc1b4f61672324d              # double 0.13833500000000001
	.quad	0x3fd5fb1183b60286              # double 0.343449
	.quad	0x3fe8664b2314013f              # double 0.76248700000000003
	.quad	0x3fe5158d9b5e95b8              # double 0.65888100000000005
	.quad	0x3fb7267c6b8b6955              # double 0.090430999999999997
	.quad	0x3f913cee9dd7ecbb              # double 0.016833999999999998
	.quad	0x3fe34432ca57a787              # double 0.60207500000000003
	.quad	0x3fedb7f9d6f112fd              # double 0.92870799999999998
	.quad	0x3fc5f394b7b28955              # double 0.17149600000000001
	.quad	0x3feb3ca31e7d9989              # double 0.85115200000000002
	.quad	0x3fe6effe2a3cea6c              # double 0.71679599999999999
	.quad	0x3fecde9185cee17a              # double 0.902169
	.quad	0x3fd880dc33721d54              # double 0.38286500000000001
	.quad	0x3fc8be835dedf1e1              # double 0.19331400000000001
	.quad	0x3fb384fd2a62aa19              # double 0.076247999999999996
	.quad	0x3fe309f83be6601c              # double 0.59496700000000002
	.quad	0x3fe57e47991bc558              # double 0.67166499999999996
	.quad	0x3fde572580c308ff              # double 0.47406900000000002
	.quad	0x3fdf6d22424a276b              # double 0.49103599999999997
	.quad	0x3fe0cd573647baaa              # double 0.52506600000000003
	.quad	0x3fb9550ca1cef241              # double 0.098954
	.quad	0x3fd402de00d1b717              # double 0.31267499999999998
	.quad	0x3fd01eeaa6d26741              # double 0.25188700000000003
	.quad	0x3fd200eae18ac9f3              # double 0.281306
	.quad	0x3fd87353b4b2fa94              # double 0.38203900000000002
	.quad	0x3fe32cba732df506              # double 0.59921000000000002
	.quad	0x3fefdbaf533f4235              # double 0.99556699999999997
	.quad	0x3fb8298cc144028e              # double 0.094383999999999995
	.quad	0x3fb9d4c76d117b53              # double 0.10090300000000001
	.quad	0x3fdc81ba7fc32ebe              # double 0.44541799999999998
	.quad	0x3fe3aa92e62131a9              # double 0.61457200000000001
	.quad	0x3fb1d851654d61b3              # double 0.069707000000000005
	.quad	0x3fdb7e1fc08fa7a8              # double 0.42957299999999998
	.quad	0x3fe19f90539fba45              # double 0.550728
	.quad	0x3fcca9f7b5aea316              # double 0.223937
	.quad	0x3fe48b04ab606b7b              # double 0.64197000000000004
	.quad	0x3fc9f2a172abef07              # double 0.20271700000000001
	.quad	0x3fd52799a1fd156a              # double 0.330542
	.quad	0x3fea471715c63ae2              # double 0.82117799999999996
	.quad	0x3fef12a51e321a2e              # double 0.97102599999999994
	.quad	0x3fce94ccab3edd8b              # double 0.23891599999999999
	.quad	0x3fe83005814940bc              # double 0.75586200000000003
	.quad	0x3fd1be8ff327aa69              # double 0.277256
	.quad	0x3fe15698fe69270b              # double 0.541821
	.quad	0x3fc66a012599ed7c              # double 0.17510999999999999
	.quad	0x3feed286b59146e5              # double 0.96319900000000002
	.quad	0x3fe966c4c5974e66              # double 0.79379500000000003
	.quad	0x3fca38eb0318b934              # double 0.20486199999999999
	.quad	0x3fe405af6c69b5a6              # double 0.62569399999999997
	.quad	0x3f8f23cc8de2ac32              # double 0.015205
	.quad	0x3fed2938de6ddf01              # double 0.91128200000000004
	.quad	0x3fd72f405f6ba062              # double 0.362259
	.quad	0x3fe4e0589acbc8c1              # double 0.65238600000000002
	.quad	0x3fe3043c3a42f1ed              # double 0.59426699999999999
	.quad	0x3fd8685553ef6b5d              # double 0.38136799999999998
	.quad	0x3feffce746cb966c              # double 0.99962200000000001
	.quad	0x3fc96006d0d4994a              # double 0.198243
	.quad	0x3fb600b029281776              # double 0.085947999999999996
	.quad	0x3fa7470eb24a6a87              # double 0.045463999999999997
	.quad	0x3fb4a02b841248d8              # double 0.080569000000000002
	.quad	0x3febb24851a86940              # double 0.86551299999999998
	.quad	0x3fcd8f3eccc46951              # double 0.230934
	.quad	0x3fc59eb6390c9108              # double 0.168906
	.quad	0x3fe9533b10774688              # double 0.79140999999999995
	.quad	0x3fdb3aeab7995ee1              # double 0.42547099999999999
	.quad	0x3fe7a5742dcf4624              # double 0.73894700000000002
	.quad	0x3fe6241c3efae792              # double 0.69190799999999997
	.quad	0x3feed57ff9b56324              # double 0.96356200000000002
	.quad	0x3fe057ff9b56323c              # double 0.51074200000000003
	.quad	0x3fe5f3f52fc2656b              # double 0.68603000000000003
	.quad	0x3fecebbba55d1c3b              # double 0.90377600000000002
	.quad	0x3fd11df761cbccf3              # double 0.26745400000000003
	.quad	0x3fd6cb46bacf7447              # double 0.356157
	.quad	0x3fe2f64f11b60ae9              # double 0.59256699999999995
	.quad	0x3fb36273929ed395              # double 0.075720999999999997
	.quad	0x3fb020a30db6a1e8              # double 0.062997999999999998
	.quad	0x3fd85c7cd898b2ea              # double 0.38064500000000001
	.quad	0x3fea2ee631f8a090              # double 0.81822499999999998
	.quad	0x3fb807fed20296b3              # double 0.093871999999999997
	.quad	0x3fe4c1376d549731              # double 0.648586
	.quad	0x3fd114877681669d              # double 0.266878
	.quad	0x3fd74af4f0d844d0              # double 0.36395
	.quad	0x3fde660e51d25aab              # double 0.47497899999999998
	.quad	0x3fd5372e6a76965f              # double 0.33149299999999998
	.quad	0x3fe8aaa5c5f7c676              # double 0.77083100000000004
	.quad	0x3febc54bcf0b6b6e              # double 0.86783399999999999
	.quad	0x3fe44ee17a02fb5d              # double 0.634629
	.quad	0x3fc76d549731098d              # double 0.18302399999999999
	.quad	0x3fd18c197e564734              # double 0.27417599999999998
	.quad	0x3fea52b2bfdb4cc2              # double 0.82259499999999997
	.quad	0x3fd8eaf251c193b4              # double 0.38934000000000002
	.quad	0x3fe9cf3343fa2ad4              # double 0.806543
	.quad	0x3f9a265f0f5a1017              # double 0.025537000000000001
	.quad	0x3fda365881a15550              # double 0.40956700000000001
	.quad	0x3fef8667f90d9d77              # double 0.98515699999999994
	.quad	0x3fd1e51d25aab474              # double 0.279609
	.quad	0x3fc1a22706d50657              # double 0.13776099999999999
	.quad	0x3fea6325d4a5df22              # double 0.82460299999999997
	.quad	0x3fbdf4906034f3fe              # double 0.11701300000000001
	.quad	0x3fe09b3aeee95747              # double 0.51894899999999999
	.quad	0x3fd377b7c7820a31              # double 0.30418200000000001
	.quad	0x3fee886df82b1f68              # double 0.95415399999999994
	.quad	0x3fd124b33daf8df8              # double 0.26786500000000002
	.quad	0x3fe440bfe3b03e21              # double 0.63290400000000002
	.quad	0x3fec0205ff1d81f1              # double 0.875247
	.quad	0x3fdd107b784662bb              # double 0.45413100000000001
	.quad	0x3fd360999dcb5782              # double 0.30277100000000001
	.quad	0x3fe3c408d8ec95c0              # double 0.61768000000000001
	.quad	0x3fe39c4113c68662              # double 0.61282400000000004
	.quad	0x3fb95ee136e71cda              # double 0.099103999999999997
	.quad	0x3fee4d2b2bfdb4cc              # double 0.94691999999999998
	.quad	0x3fe9acc4ef88b978              # double 0.80234000000000005
	.quad	0x3fea84816f0068dc              # double 0.82867500000000005
	.quad	0x3fee8bed740c4157              # double 0.95458100000000001
	.quad	0x3feb141e9af5ba2c              # double 0.84620600000000001
	.quad	0x3fdffc115df6555c              # double 0.49975999999999998
	.quad	0x3fe2e1a1db877ab3              # double 0.59004299999999998
	.quad	0x3fc2160d887ebf23              # double 0.14129800000000001
	.quad	0x3fe1602ea960b6fa              # double 0.542991
	.quad	0x3fdbc7e6b3fe9fae              # double 0.43407600000000002
	.quad	0x3fdf56323bbc6eb1              # double 0.48963600000000002
	.quad	0x3fe548a7a41e57da              # double 0.66511900000000002
	.quad	0x3fe5f14983d79075              # double 0.68570399999999998
	.quad	0x3fd682ba5a038195              # double 0.35172900000000001
	.quad	0x3fe7a57646ae3a3b              # double 0.73894800000000005
	.quad	0x3fc109d0635a426c              # double 0.13311200000000001
	.quad	0x3fc6339c0ebedfa4              # double 0.17344999999999999
	.quad	0x3fd8afc47e49b1fb              # double 0.38572800000000002
	.quad	0x3fb4ac7da1ec4e72              # double 0.080756999999999995
	.quad	0x3fd21f10667f90da              # double 0.28314600000000001
	.quad	0x3feeb647baa9b49a              # double 0.95975100000000002
	.quad	0x3fe842acb85a4f01              # double 0.75813900000000001
	.quad	0x3fec018a43bb40b3              # double 0.87518799999999997
	.quad	0x3fe05c7abfb9bed3              # double 0.51128899999999999
	.quad	0x3fe380d801b43526              # double 0.60947799999999996
	.quad	0x3fe71c27e9531551              # double 0.72218700000000002
	.quad	0x3fb5942917507e9e              # double 0.084292000000000005
	.quad	0x3fdf95c853c14834              # double 0.49351699999999998
	.quad	0x3fd6a75cd0bb6ed6              # double 0.35396499999999997
	.quad	0x3feae74080f98fa3              # double 0.84072899999999995
	.quad	0x3fea07a8d64d7f0f              # double 0.81343500000000002
	.quad	0x3fe02eba27ae9ab3              # double 0.50570400000000004
	.quad	0x3fdf6191148fd9fd              # double 0.49032999999999999
	.quad	0x3fefa550870110a1              # double 0.98892999999999997
	.quad	0x3fda5126634117f8              # double 0.41120299999999999
	.quad	0x3fc797edc7ef177a              # double 0.18432399999999999
	.quad	0x3fd347735c182ecb              # double 0.301236
	.quad	0x3fc65ca29845dc83              # double 0.174702
	.quad	0x3fd351b93037d630              # double 0.30186299999999999
	.quad	0x3fd2e8576cce5f74              # double 0.295431
	.quad	0x3fed40f66a550870              # double 0.91417999999999999
	.quad	0x3fa6d959a30984e4              # double 0.044627
	.quad	0x3fe446aa087ca644              # double 0.63362600000000002
	.quad	0x3fdd67dbb16c1e36              # double 0.45946399999999998
	.quad	0x3fa6616b54e2b064              # double 0.043712000000000001
	.quad	0x3fe0edc1a47a9e2c              # double 0.52902300000000002
	.quad	0x3fdb572580c308ff              # double 0.42719400000000002
	.quad	0x3fdac1c1d6cf850e              # double 0.418076
	.quad	0x3fd60c2c5e2cdc01              # double 0.34449299999999999
	.quad	0x3f95d206c8711d7a              # double 0.021309000000000002
	.quad	0x3fb5758e219652bd              # double 0.083824999999999997
	.quad	0x3fdbcbea4ebdd335              # double 0.43432100000000001
	.quad	0x3fe144d013a92a30              # double 0.53964999999999996
	.quad	0x3fe083a109d0635a              # double 0.51606799999999997
	.quad	0x3fdccc6c54bcf0b7              # double 0.44997700000000002
	.quad	0x3fb35ba2be0589ad              # double 0.075617000000000004
	.quad	0x3fe39835158b8280              # double 0.61233000000000004
	.quad	0x3fb8fe9b7bf1e8e6              # double 0.097634999999999999
	.quad	0x3fd922d948dc11e4              # double 0.39275199999999999
	.quad	0x3febb5c182ecaeea              # double 0.86593699999999996
	.quad	0x3fed0de4c51116a9              # double 0.90794600000000003
	.quad	0x3fdaaed99cbee808              # double 0.41692200000000001
	.quad	0x3fe41c9d5a187a4a              # double 0.62849299999999997
	.quad	0x3fed3e5fb71fbc5e              # double 0.91386400000000001
	.quad	0x3fe3f8d4fdf3b646              # double 0.62412500000000004
	.quad	0x3fe985f06f694467              # double 0.79759999999999998
	.quad	0x3fe775989df1172f              # double 0.73310500000000001
	.quad	0x3fb3b58d1526d8b2              # double 0.076989000000000001
	.quad	0x3fed68dda48b6523              # double 0.91905099999999995
	.quad	0x3fe82a4b9884c6a4              # double 0.75516300000000002
	.quad	0x3fdcc4007570c565              # double 0.449463
	.quad	0x3fc0dd82fd75e204              # double 0.13175999999999999
	.quad	0x3fa76640a6b93ccd              # double 0.045702
	.quad	0x3fee2f8594291750              # double 0.94330099999999995
	.quad	0x3fb28a71de69ad43              # double 0.072425000000000003
	.quad	0x3feda459103c8e26              # double 0.92631200000000002
	.quad	0x3fe1a2b3892ee84b              # double 0.55111100000000002
	.quad	0x3fe52367e414e7ef              # double 0.66057200000000005
	.quad	0x3facc964628027d9              # double 0.056224000000000003
	.quad	0x3fdde1693c03bc4d              # double 0.46688299999999999
	.quad	0x3fd484d338f79852              # double 0.32060699999999998
	.quad	0x3fca372e6a76965f              # double 0.20480899999999999
	.quad	0x3fd8fdb8fde2ef4e              # double 0.390486
	.quad	0x3fe0b302f72b4528              # double 0.52185199999999998
	.quad	0x3fd54f6dfc5cdd51              # double 0.33297300000000002
	.quad	0x3fec4b9884c6a3be              # double 0.88422800000000001
	.quad	0x3fe5197e56473472              # double 0.659362
	.quad	0x3fe8e7f0aa21a71a              # double 0.77831300000000003
	.quad	0x3fd924a6a875d56f              # double 0.39286199999999999
	.quad	0x3fd58afc47e49b20              # double 0.33660800000000002
	.quad	0x3fcfa858793dd97f              # double 0.24732499999999999
	.quad	0x3fe3f10667f90d9d              # double 0.62317199999999995
	.quad	0x3fe1ed1394317acc              # double 0.56018999999999997
	.quad	0x3fa087a8d64d7f0f              # double 0.032285000000000001
	.quad	0x3fe3fc957cd466f5              # double 0.624583
	.quad	0x3fc517507e9d94d1              # double 0.164774
	.quad	0x3f82085b18548a9c              # double 0.0088050000000000003
	.quad	0x3fd8180d3cff64d0              # double 0.37646800000000002
	.quad	0x3fe8e32e3821af7d              # double 0.77773199999999998
	.quad	0x3fe23239a38fbca1              # double 0.568631
	.quad	0x3fe5c60ed80a17b1              # double 0.680427
	.quad	0x3fcf993d5347a5b1              # double 0.246864
	.quad	0x3fd4e43ed959a30a              # double 0.32643100000000003
	.quad	0x3fe42fdfc19c1722              # double 0.63084399999999996
	.quad	0x3fe05f4a1272c94b              # double 0.51163199999999998
	.quad	0x3fd4b441bb8c32a9              # double 0.32350200000000001
	.quad	0x3fdf10a99b6f5caf              # double 0.48539199999999999
	.quad	0x3fe4dd35653c9abb              # double 0.652003
	.quad	0x3fd3a0f9096bb98c              # double 0.30669999999999997
	.quad	0x3fc8288051c9f72f              # double 0.18873599999999999
	.quad	0x3fafc610f0e90bc8              # double 0.062058000000000002
	.quad	0x3fe113059641f645              # double 0.53357200000000005
	.quad	0x3fea9b0ccbc05d53              # double 0.83142700000000003
	.quad	0x3fd4fc3f811f4f51              # double 0.32789600000000002
	.quad	0x3fda9a5a89b951c6              # double 0.41567100000000001
	.quad	0x3fe6f507e9d94d0e              # double 0.71741100000000002
	.quad	0x3fdc57bc7f77af64              # double 0.442855
	.quad	0x3fe3f123c42a66dc              # double 0.62318600000000002
	.quad	0x3fd525247cb70ac4              # double 0.33039200000000002
	.quad	0x3fee514c22ee4192              # double 0.94742400000000004
	.quad	0x3fe4d7928e0c9d9d              # double 0.65131499999999998
	.quad	0x3fecbeb5b2d4d402              # double 0.89827999999999997
	.quad	0x3fda65881a1554fc              # double 0.41244700000000001
	.quad	0x3fda3c70c996b767              # double 0.409939
	.quad	0x3f94dca8e2e2b8c7              # double 0.020372999999999999
	.quad	0x3febcdd72367e415              # double 0.86887700000000001
	.quad	0x3fecfd9988d2a1f9              # double 0.90595700000000001
	.quad	0x3fd0492bc2fc6973              # double 0.25446600000000003
	.quad	0x3fe56ac647778dd6              # double 0.66928399999999999
	.quad	0x3fe888461f9f01b8              # double 0.76663499999999996
	.quad	0x3fea1a719b4dcec0              # double 0.81572800000000001
	.quad	0x3fe4ba6aca793576              # double 0.647756
	.quad	0x3fecca18bd66277c              # double 0.89966999999999996
	.quad	0x3fd261bf37b8d3f2              # double 0.28721600000000003
	.quad	0x3fe5ebfec13b9f12              # double 0.68505799999999994
	.quad	0x3fe28cef672b8844              # double 0.579704
	.quad	0x3fe670a5efe93187              # double 0.70125099999999996
	.quad	0x3fcbee88df37329c              # double 0.21821699999999999
	.quad	0x3fd5cac4b4d056c5              # double 0.340501
	.quad	0x3fed831055b89939              # double 0.92224899999999999
	.quad	0x3fb5ac258d5842b7              # double 0.084657999999999997
	.quad	0x3fe0343d89ce4a7b              # double 0.50637699999999997
	.quad	0x3fb58a979e16d6dc              # double 0.084145999999999999
	.quad	0x3fc54445aa2e3c53              # double 0.16614599999999999
	.quad	0x3fd57afa7221858c              # double 0.33563100000000001
	.quad	0x3fed5b291b823c86              # double 0.91737800000000003
	.quad	0x3fd81e4712e40853              # double 0.37684800000000002
	.quad	0x3f91f03d145d8516              # double 0.017517999999999999
	.quad	0x3fa3b42cc2d6a9c5              # double 0.038483999999999997
	.quad	0x3fe173eccc469510              # double 0.54540100000000002
	.quad	0x3fc236006d0d4995              # double 0.14227300000000001
	.quad	0x3fbdfc7e6b3fe9fb              # double 0.117134
	.quad	0x3fb4488c60cbf2b2              # double 0.079231999999999996
	.quad	0x3fcaf50a02b84125              # double 0.21060300000000001
	.quad	0x3fd8c13b9f127f5f              # double 0.38679400000000003
	.quad	0x3fea58750c1b9735              # double 0.82329799999999997
	.quad	0x3fe0ab0ea18372e7              # double 0.52088100000000004
	.quad	0x3fe46daa92e62132              # double 0.63838700000000004
	.quad	0x3fcc116659d12cae              # double 0.219281
	.quad	0x3fa4c6a3bddfca00              # double 0.040578000000000003
	.quad	0x3fae631f8a0902de              # double 0.05935
	.quad	0x3fe8c5da6a444178              # double 0.77415199999999995
	.quad	0x3fdc5aff2a172abf              # double 0.443054
	.quad	0x3fea5f2a9d627bf6              # double 0.82411699999999999
	.quad	0x3fef00cf9e3864cb              # double 0.96884899999999996
	.quad	0x3fe412599ed7c6fc              # double 0.62724000000000002
	.quad	0x3fdabb4d48882f0e              # double 0.417682
	.quad	0x3fc799bb2788db05              # double 0.18437899999999999
	.quad	0x3fc485c24c404a73              # double 0.160332
	.quad	0x3fc304816f0068dc              # double 0.14857500000000001
	.quad	0x3fd6c286f8ad2568              # double 0.35562300000000002
	.quad	0x3fd966516db0dd83              # double 0.39687
	.quad	0x3fe561fe21d96e9c              # double 0.66821200000000003
	.quad	0x3fe3ab7132724313              # double 0.61467799999999995
	.quad	0x3fd8fd36f7e3d1cc              # double 0.390455
	.quad	0x3fd38301a79fec9a              # double 0.304871
	.quad	0x3fe1d0b73d188f43              # double 0.556728
	.quad	0x3fd82d98bf7f0670              # double 0.37778299999999998
	.quad	0x3fed00f55de58e65              # double 0.90636700000000003
	.quad	0x3fe6b6848beb5b2d              # double 0.70977999999999997
	.quad	0x3fb3f24d8fd5cb79              # double 0.077915999999999999
	.quad	0x3fdd1b866e43aa7a              # double 0.45480500000000001
	.quad	0x3feb26efc371da38              # double 0.84850300000000001
	.quad	0x3fe0cb4d056c508b              # double 0.52481699999999998
	.quad	0x3fd8625a682b6284              # double 0.38100299999999998
	.quad	0x3fe76cb10342aa9f              # double 0.73201799999999995
	.quad	0x3fd759791819d239              # double 0.36483599999999999
	.quad	0x3fec59578a2a90cd              # double 0.88590599999999997
	.quad	0x3fec1dd7ecbb7f9d              # double 0.87864299999999995
	.quad	0x3fe025ce5b4245f6              # double 0.50461500000000004
	.quad	0x3fe8b59791819d24              # double 0.77216700000000004
	.quad	0x3fe384a9478c868c              # double 0.60994400000000004
	.quad	0x3fc1e7210be9424e              # double 0.13986599999999999
	.quad	0x3fce6e221c8a7a42              # double 0.237736
	.quad	0x3fee0dde7a743a64              # double 0.93919299999999994
	.quad	0x3fcf8b0d0edc3bd6              # double 0.24643100000000001
	.quad	0x3fefbf8fcd67fd3f              # double 0.99213399999999996
	.quad	0x3fd15275ee99a62f              # double 0.27065800000000001
	.quad	0x3fd392ddbdb5d895              # double 0.30583900000000003
	.quad	0x3fba6cc1ca3a4b55              # double 0.10322199999999999
	.quad	0x3feba97396d0917d              # double 0.86443499999999995
	.quad	0x3fbc18d6909aed57              # double 0.109754
	.quad	0x3fd6c20d5629d841              # double 0.35559400000000002
	.quad	0x3fe13c74fb549f95              # double 0.53863000000000005
	.quad	0x3fe1bf39d1b2e59b              # double 0.554593
	.quad	0x3fd7203e63e8dda5              # double 0.36134300000000003
	.quad	0x3fc6dc8754f3775c              # double 0.17860500000000001
	.quad	0x3fe87c3f811f4f51              # double 0.76516700000000004
	.quad	0x3fb48509bf9c62a2              # double 0.080155000000000004
	.quad	0x3fd7daa0cae642c0              # double 0.37271900000000002
	.quad	0x3fb51cc100e6afcd              # double 0.082470000000000002
	.quad	0x3fef15e17e34b945              # double 0.97142099999999997
	.quad	0x3fa1437c5692b3cc              # double 0.033717999999999998
	.quad	0x3feec11c2a023209              # double 0.96107299999999995
	.quad	0x3facc1a8ac5c13fd              # double 0.056165
	.quad	0x3fd22b1f687b139d              # double 0.28388200000000002
	.quad	0x3fcf059ea57214f0              # double 0.24235899999999999
	.quad	0x3fe55ce7cd035372              # double 0.66759100000000005
	.quad	0x3fea7f540895d0b7              # double 0.82804299999999997
	.quad	0x3fdc1633482be8bc              # double 0.438855
	.quad	0x3fe86594af4f0d84              # double 0.76239999999999996
	.quad	0x3fe4dfb506dd69d3              # double 0.652308
	.quad	0x3fd19620685553ef              # double 0.27478799999999998
	.quad	0x3fafb7e90ff97247              # double 0.061949999999999998
	.quad	0x3fe9e264e48626f6              # double 0.80888599999999999
	.quad	0x3fce7000431bde83              # double 0.237793
	.quad	0x3fdcef73c0c1fc8f              # double 0.45211499999999999
	.quad	0x3fdeb1e18efbb0e6              # double 0.47960700000000001
	.quad	0x3fe164d5d80e496f              # double 0.54355900000000001
	.quad	0x3fd6c93a71151612              # double 0.35603200000000002
	.quad	0x3fe09461b6d43d04              # double 0.51811300000000005
	.quad	0x3feef049a9973d9f              # double 0.96683200000000002
	.quad	0x3fcfbcd35a858794              # double 0.24795
	.quad	0x3fee52e946801712              # double 0.94762100000000005
	.quad	0x3fe91eb2074ea8da              # double 0.78499699999999994
	.quad	0x3feebbd9cae21102              # double 0.96043100000000003
	.quad	0x3fd2387df5cf2496              # double 0.28469800000000001
	.quad	0x3fb686b59146e4c1              # double 0.087993000000000002
	.quad	0x3fe9d39b8887229f              # double 0.80708100000000005
	.quad	0x3fd15a187a4a48f9              # double 0.27112399999999998
	.quad	0x3fb028f5c28f5c29              # double 0.063125000000000001
	.quad	0x3fdf5186db50f40e              # double 0.48935099999999998
	.quad	0x3fe91fc4c165907e              # double 0.78512800000000005
	.quad	0x3fe78e5604189375              # double 0.73612500000000003
	.quad	0x3fe4c3e963dc486b              # double 0.64891500000000002
	.quad	0x3fdeeedcc20d562a              # double 0.48332900000000001
	.quad	0x3feca8e2e2b8c75c              # double 0.89561599999999996
	.quad	0x3fb04f6dfc5cdd51              # double 0.063712000000000005
	.quad	0x3fe409fa54c55433              # double 0.62621800000000005
	.quad	0x3fe01b9d7fd82774              # double 0.50337100000000001
	.quad	0x3fe1d1569f490603              # double 0.55680399999999997
	.quad	0x3fb8f7121ab4b72c              # double 0.097519999999999995
	.quad	0x3fe427f3cf70153c              # double 0.62987700000000002
	.quad	0x3fef39f77292c493              # double 0.97582599999999997
	.quad	0x3fe81af1886df82b              # double 0.75328899999999999
	.quad	0x3fed091c087442c8              # double 0.907362
	.quad	0x3fba9003eea209ab              # double 0.10376000000000001
	.quad	0x3fb21672324c8366              # double 0.070654999999999996
	.quad	0x3fde3c21187e7c07              # double 0.47242000000000001
	.quad	0x3fe2e2c98e53eb3a              # double 0.59018400000000004
	.quad	0x3fee62541d8e8640              # double 0.94950299999999998
	.quad	0x3fefeb313be22e5e              # double 0.99746000000000001
	.quad	0x3fe38abb44e50c5f              # double 0.61068500000000003
	.quad	0x3fdb3c3e74afd545              # double 0.42555199999999999
	.quad	0x3fd6da554b8bef8d              # double 0.357076
	.quad	0x3fd5c83a96d4c33b              # double 0.34034599999999998
	.quad	0x3fe4616d6dc1a47b              # double 0.63689300000000004
	.quad	0x3fd3b90a7829068a              # double 0.30816900000000003
	.quad	0x3fe979b994e1a3f4              # double 0.79610899999999995
	.quad	0x3fc5e53a81dc0db2              # double 0.17105799999999999
	.quad	0x3fdb22749f0e4da1              # double 0.42397800000000002
	.quad	0x3fe14e50c5eb313c              # double 0.54081000000000001
	.quad	0x3fcd72474538ef35              # double 0.23005
	.quad	0x3feb613f4a98aa86              # double 0.85562099999999996
	.quad	0x3fcd46cb966be7b0              # double 0.22872300000000001
	.quad	0x3fd709b30728e92d              # double 0.35996699999999998
	.quad	0x3fd92ce032db1e9f              # double 0.39336399999999999
	.quad	0x3febaf944241c3f0              # double 0.86518300000000004
	.quad	0x3fd82a0232096788              # double 0.37756400000000001
	.quad	0x3fe60e92d55a3a08              # double 0.68927899999999998
	.quad	0x3fc01a6937d1fe65              # double 0.125806
	.quad	0x3fc8f965b20b8067              # double 0.19511100000000001
	.quad	0x3fb9783dff3f0fe0              # double 0.099490999999999996
	.quad	0x3fc99f5dfeb8d823              # double 0.20017599999999999
	.quad	0x3fe68cc9a77e5eab              # double 0.70468600000000003
	.quad	0x3fc6ef459d99029b              # double 0.179177
	.quad	0x3fed4165907d9125              # double 0.91423299999999996
	.quad	0x3fe13ab21815a07b              # double 0.53841499999999998
	.quad	0x3fb9d0a67620ee8d              # double 0.10084
	.quad	0x3fe3dae3e6c4c597              # double 0.62046999999999997
	.quad	0x3fe4cc5974e65bea              # double 0.64994499999999999
	.quad	0x3fd4c75818c5c9a3              # double 0.32466699999999998
	.quad	0x3feb9ff0cbaf965b              # double 0.86327399999999999
	.quad	0x3fe5021d10b1feeb              # double 0.65650799999999998
	.quad	0x3fd48b8ae31d712a              # double 0.321017
	.quad	0x3fe83020c49ba5e3              # double 0.75587499999999996
	.quad	0x3fd0b7b28954a7f8              # double 0.261212
	.quad	0x3fc824aada33bd9d              # double 0.18861900000000001
	.quad	0x3fe9e7ee9142b303              # double 0.809562
	.quad	0x3fe12f8bdec5f395              # double 0.53705400000000003
	.quad	0x3fdcde58e64b2314              # double 0.451071
	.quad	0x3fcd266ba493c89f              # double 0.22773499999999999
	.quad	0x3f9ad9f0a1be2b49              # double 0.026221999999999999
	.quad	0x3fe3079e59f2ba9d              # double 0.59467999999999999
	.quad	0x3fe661dc93ea2d30              # double 0.69944600000000001
	.quad	0x3fe09669ced0b30b              # double 0.51836099999999996
	.quad	0x3fe4c32873bc903f              # double 0.64882300000000004
	.quad	0x3f8605ab3aabcd79              # double 0.010753
	.quad	0x3fe75ae81882adc5              # double 0.72984700000000002
	.quad	0x3fefa92e62131a8f              # double 0.989402
	.quad	0x3fc3c11e42e12620              # double 0.154331
	.quad	0x3fe8edc1a47a9e2c              # double 0.77902300000000002
	.quad	0x3fce28b2a6b0d951              # double 0.23561699999999999
	.quad	0x3fdac62a1b5c7cd9              # double 0.41834500000000002
	.quad	0x3fc5e29b6b2af145              # double 0.17097799999999999
	.quad	0x3fd4821af7d30ad4              # double 0.32044099999999998
	.quad	0x3fe6d1e108c3f3e0              # double 0.71311999999999998
	.quad	0x3fe02db1e9f27781              # double 0.50557799999999997
	.quad	0x3fedb44a1f080304              # double 0.92825800000000002
	.quad	0x3fdadde37585be1b              # double 0.41979300000000003
	.quad	0x3fd8f3a9b0681238              # double 0.389872
	.quad	0x3fe9894c447c30d3              # double 0.79801
	.quad	0x3fcacbf2b239a390              # double 0.20934900000000001
	.quad	0x3fd9bd6e8af81627              # double 0.40218700000000002
	.quad	0x3fec3aeee957470f              # double 0.88219400000000003
	.quad	0x3fdfbff47735c183              # double 0.496091
	.quad	0x3fec815e39713ad6              # double 0.89079200000000003
	.quad	0x3fd246173b85e80c              # double 0.285528
	.quad	0x3fe004039abf3387              # double 0.50048999999999999
	.quad	0x3fde4ddb5525cc42              # double 0.47350199999999998
	.quad	0x3fdd9a73b42cc2d7              # double 0.46255200000000002
	.quad	0x3fe408461f9f01b8              # double 0.62600999999999996
	.quad	0x3fe7dedf1e0828c3              # double 0.74595599999999995
	.quad	0x3fe8d6b65a9a8049              # double 0.77620999999999996
	.quad	0x3fdffb9389b52008              # double 0.49973000000000001
	.quad	0x3fc1dcb5781c7150              # double 0.13954800000000001
	.quad	0x3fdfbda9435ac8a3              # double 0.49595099999999998
	.quad	0x3fd181344806290f              # double 0.273511
	.quad	0x3f9ab3edd8b60f1b              # double 0.026076999999999999
	.quad	0x3feb5d72367e414e              # double 0.85515699999999994
	.quad	0x3fe7f5b3e1437c57              # double 0.74874300000000005
	.quad	0x3fe0459d99029ae5              # double 0.50849800000000001
	.quad	0x3fdbc90c4dec1c1d              # double 0.43414599999999998
	.quad	0x3fe9f0ed3d859c8d              # double 0.81066000000000005
	.quad	0x3fd20f6273929ed4              # double 0.28218900000000002
	.quad	0x3fd58f10a99b6f5d              # double 0.33685700000000002
	.quad	0x3fd35f5275ee99a6              # double 0.30269299999999999
	.quad	0x3fdd744f5d35653d              # double 0.46022400000000002
	.quad	0x3fbbe73a365cb35f              # double 0.108997
	.quad	0x3fe0aca793576039              # double 0.52107599999999998
	.quad	0x3fef110a137f38c5              # double 0.97082999999999997
	.quad	0x3fec941a6937d1fe              # double 0.89307899999999996
	.quad	0x3fe3e7ab7564302b              # double 0.62202999999999997
	.quad	0x3fed521144cbe1eb              # double 0.91626799999999997
	.quad	0x3fef344806290eed              # double 0.97513199999999999
	.quad	0x3fee22d72ffd1dcd              # double 0.94175299999999995
	.quad	0x3fe6f06f69446738              # double 0.71684999999999999
	.quad	0x3fb8988094e5d5b2              # double 0.096076999999999995
	.quad	0x3f99a38fbca1059f              # double 0.025038000000000001
	.quad	0x3fee9a500d5e8d54              # double 0.95633699999999999
	.quad	0x3fe33d4ae429e0a4              # double 0.60123199999999999
	.quad	0x3fe00c4bd33d2956              # double 0.50150099999999997
	.quad	0x3fa3fe1975f2cb64              # double 0.039047999999999999
	.quad	0x3fe73e33acd5b680              # double 0.72634299999999996
	.quad	0x3feb8a372606fac6              # double 0.860622
	.quad	0x3fe7d0d49949e881              # double 0.74424199999999996
	.quad	0x3fcea2ca9ac36545              # double 0.239343
	.quad	0x3fd96234a87e38eb              # double 0.396619
	.quad	0x3fe1d1633482be8c              # double 0.55681000000000003
	.quad	0x3fb2473471f79421              # double 0.071399000000000004
	.quad	0x3fdd936c58eeae9f              # double 0.46212300000000001
	.quad	0x3fe57c7820a30db7              # double 0.67144400000000004
	.quad	0x3fa9db877ab32485              # double 0.050502999999999999
	.quad	0x3fe9fc9795b35b0c              # double 0.81208400000000002
	.quad	0x3fa2ba9d1f601798              # double 0.036580000000000001
	.quad	0x3fdda7c9de050375              # double 0.463366
	.quad	0x3fd1e4ead0c3d252              # double 0.27959699999999998
	.quad	0x3febf2ead9274e23              # double 0.87340300000000004
	.quad	0x3fe3b48909289dae              # double 0.615788
	.quad	0x3fd1783dff3f0fe0              # double 0.27296399999999998
	.quad	0x3fe872e48e8a71de              # double 0.76402499999999995
	.quad	0x3fea37dc7abfb9bf              # double 0.81931900000000002
	.quad	0x3fea3c5bd0e12e84              # double 0.81986800000000004
	.quad	0x3feab03e20ccff22              # double 0.83401400000000003
	.quad	0x3fe7278af3e468cb              # double 0.72357700000000003
	.quad	0x3feba9c347e8ccde              # double 0.86447300000000005
	.quad	0x3fe0d204af922963              # double 0.52563700000000002
	.quad	0x3feb7db09a671ef3              # double 0.859093
	.quad	0x3fe1cfe9b7bf1e8e              # double 0.55662999999999996
	.quad	0x3fec0522ea0fd3b3              # double 0.87562700000000004
	.quad	0x3fe17722e1ac57e2              # double 0.54579299999999997
	.quad	0x3fd8b9a176ddacef              # double 0.38633000000000001
	.quad	0x3fc5020c49ba5e35              # double 0.16412499999999999
	.quad	0x3fd377ccc0379314              # double 0.30418699999999999
	.quad	0x3fd1459103c8e25d              # double 0.26987100000000003
	.quad	0x3fef97edc7ef177a              # double 0.98729599999999995
	.quad	0x3fe517d6b65a9a80              # double 0.65915999999999997
	.quad	0x3fe1e64d3bf2f556              # double 0.55936300000000005
	.quad	0x3fda97fa5d28d003              # double 0.41552600000000001
	.quad	0x3fb0854cdb7ae579              # double 0.064533999999999994
	.quad	0x3fd3049a9973d9ec              # double 0.29715599999999998
	.quad	0x3fed8ee49f51697f              # double 0.92369299999999999
	.quad	0x3fbee275ab7dc7ac              # double 0.120643
	.quad	0x3fee3220791c4b90              # double 0.94361899999999999
	.quad	0x3fe1ba01eeed8905              # double 0.553956
	.quad	0x3fd555f78359bc34              # double 0.333372
	.quad	0x3fe553aa369fcf3e              # double 0.66646300000000003
	.quad	0x3fbaf177a7008a69              # double 0.10524699999999999
	.quad	0x3fe87daa4fca42af              # double 0.76534000000000002
	.quad	0x3fab73affb04ee7c              # double 0.053616999999999998
	.quad	0x3fe1ded288ce703b              # double 0.55845
	.quad	0x3fee3bf50e347629              # double 0.94481899999999996
	.quad	0x3fd1fa658c4bd33d              # double 0.28090799999999999
	.quad	0x3feefdf19d66adb4              # double 0.96849899999999999
	.quad	0x3fdeab25b317efe1              # double 0.47919600000000001
	.quad	0x3fe0ba4b5568e821              # double 0.52274100000000001
	.quad	0x3fe21b738e6d15ad              # double 0.56585099999999999
	.quad	0x3fddb3a68b19a416              # double 0.46409
	.quad	0x3fe382cf52b90a78              # double 0.60971799999999998
	.quad	0x3fc0a148ba83f4ed              # double 0.12992200000000001
	.quad	0x3fddaa10e0221427              # double 0.463505
	.quad	0x3fa475e6362a5e78              # double 0.039961999999999998
	.quad	0x3fd70a45d41fa765              # double 0.36000199999999999
	.quad	0x3fd05d4e8fb00bcc              # double 0.25569500000000001
	.quad	0x3fe0eaf038e29f9d              # double 0.52867900000000001
	.quad	0x3fbc49ba5e353f7d              # double 0.1105
	.quad	0x3fd3371da37ef5a9              # double 0.30023899999999998
	.quad	0x3fd75e0f7fcfc3f8              # double 0.365116
	.quad	0x3fe9873365881a15              # double 0.79775399999999996
	.quad	0x3fefb352a8438088              # double 0.99063999999999996
	.quad	0x3fe1f646ae3a3a8e              # double 0.56131299999999995
	.quad	0x3fa07852f7f498c4              # double 0.032168000000000002
	.quad	0x3fa7bb9496249a13              # double 0.046352999999999998
	.quad	0x3fea58298cc14403              # double 0.82326200000000005
	.quad	0x3fd2a6d2674080fa              # double 0.29143200000000002
	.quad	0x3fdff2dc2b0ea183              # double 0.49919799999999998
	.quad	0x3f8de7a743a647fe              # double 0.014602
	.quad	0x3feb36b2af145522              # double 0.85042700000000004
	.quad	0x3fdc898f605ab3ab              # double 0.44589600000000001
	.quad	0x3fe0946c332f0175              # double 0.51811799999999997
	.quad	0x3fb323bbc6eb0b7c              # double 0.074763999999999997
	.quad	0x3fd564ece9a2c669              # double 0.334285
	.quad	0x3fe072b66b6177ea              # double 0.51400299999999999
	.quad	0x3fdd05dd8f92af9b              # double 0.45348300000000002
	.quad	0x3fe94b3a2595bbbf              # double 0.79043300000000005
	.quad	0x3feeca7503b81b65              # double 0.96221400000000001
	.quad	0x3fc3fc2a8869c66d              # double 0.15613299999999999
	.quad	0x3fc97564302b40f6              # double 0.19889499999999999
	.quad	0x3fe81afc04c8bc9d              # double 0.75329400000000002
	.quad	0x3fe7b1ceaf251c19              # double 0.74045499999999997
	.quad	0x3fe63fe5c91d14e4              # double 0.69530000000000003
	.quad	0x3fe67ce746cb966c              # double 0.70274700000000001
	.quad	0x3feae71ef30a4e38              # double 0.84071300000000004
	.quad	0x3fdfee136e71cda3              # double 0.49890600000000002
	.quad	0x3fda394b7b28954a              # double 0.40974699999999997
	.quad	0x3fdc6cdaf4adbc66              # double 0.44414399999999998
	.quad	0x3fee40fecdd0d8cb              # double 0.945434
	.quad	0x3febcf1e4b44a1f1              # double 0.86903300000000006
	.quad	0x3fe9c60029f16b12              # double 0.80542000000000002
	.quad	0x3fd6b1c864883fd5              # double 0.354601
	.quad	0x3fea5db1209edbf9              # double 0.82393700000000003
	.quad	0x3f95be5d9e40c847              # double 0.021233999999999999
	.quad	0x3fe2f7036c9c0a8d              # double 0.59265299999999999
	.quad	0x3fdddb3397dd00f7              # double 0.46650399999999997
	.quad	0x3fd6db8348f53c58              # double 0.35714800000000002
	.quad	0x3fe213a4f8726d05              # double 0.56489800000000001
	.quad	0x3fd5bde3fbbd7b20              # double 0.33971499999999999
	.quad	0x3fd98811b1d92b80              # double 0.39893000000000001
	.quad	0x3fed6f34d6a161e5              # double 0.919825
	.quad	0x3feca40746455eaf              # double 0.89502300000000001
	.quad	0x3f9d1c3ac929aa1d              # double 0.028427999999999998
	.quad	0x3fe056cf850df15a              # double 0.51059699999999997
	.quad	0x3fe20e6afcce1c58              # double 0.56425999999999998
	.quad	0x3feb5117b5286b59              # double 0.85364899999999999
	.quad	0x3fba5ffa3b9ae0c1              # double 0.10302699999999999
	.quad	0x3fec8ad46f587d70              # double 0.89194700000000005
	.quad	0x3fe558e432441feb              # double 0.66710100000000006
	.quad	0x3fe39357603925bb              # double 0.61173599999999995
	.quad	0x3feeb71327243138              # double 0.95984800000000003
	.quad	0x3fad66490a350d28              # double 0.057421
	.quad	0x3fe2f0e90bc7b45f              # double 0.59190799999999999
	.quad	0x3fd2efcbd556084a              # double 0.29588599999999998
	.quad	0x3fd02c16df3f9618              # double 0.252691
	.quad	0x3fef17cc39ffd60f              # double 0.97165500000000004
	.quad	0x3feafe6d58c8eef2              # double 0.84355800000000003
	.quad	0x3fe589070fbeb9e5              # double 0.67297700000000005
	.quad	0x3fd38f861a60d456              # double 0.30563499999999999
	.quad	0x3fea5f6fd21ff2e5              # double 0.82415000000000005
	.quad	0x3fd6c0df58c08b76              # double 0.355522
	.quad	0x3fdc052502eec7c9              # double 0.43781399999999998
	.quad	0x3fe5225529fe004b              # double 0.66044099999999994
	.quad	0x3fd6905c03361566              # double 0.35256100000000001
	.quad	0x3f71cd1c7de5082d              # double 0.004346
	.quad	0x3fe8b35b0bbf50e3              # double 0.77189399999999997
	.quad	0x3fc65b18548a9bd0              # double 0.174655
	.quad	0x3fe5e1b8ed1bf7ad              # double 0.68380399999999997
	.quad	0x3fcdc58ab92c0618              # double 0.23259099999999999
	.quad	0x3fd04877681669cf              # double 0.25442300000000001
	.quad	0x3fe3a84167a95c85              # double 0.61428899999999997
	.quad	0x3fecf3f0fe047d3d              # double 0.90477799999999997
	.quad	0x3fdca6a012599ed8              # double 0.44767000000000001
	.quad	0x3fd496d4c33b5393              # double 0.32170599999999999
	.quad	0x3fdcc504816f0069              # double 0.44952500000000001
	.quad	0x3fb2d740c4156e26              # double 0.073596999999999996
	.quad	0x3fe191ff7164c72a              # double 0.549072
	.quad	0x3fe7d3cbc48f10aa              # double 0.74460400000000004
	.quad	0x3fc80aaeafab53d6              # double 0.18782599999999999
	.quad	0x3fbb13be22e5de16              # double 0.10577
	.quad	0x3fe0a1ff2e48e8a7              # double 0.51977499999999999
	.quad	0x3fd9f2239e6ab9b2              # double 0.40540399999999999
	.quad	0x3fdb57c0b1359792              # double 0.42723100000000003
	.quad	0x3fd925aab4741073              # double 0.392924
	.quad	0x3fbc2c7fbacb4289              # double 0.110054
	.quad	0x3fef9f9acffa7eb7              # double 0.98823300000000002
	.quad	0x3fdf942d490e66cb              # double 0.493419
	.quad	0x3fd00318b9346994              # double 0.25018899999999999
	.quad	0x3fefb1dd5d3dc8b8              # double 0.99046199999999995
	.quad	0x3fe52ff4ba51a006              # double 0.66210400000000003
	.quad	0x3fe2ef34d6a161e5              # double 0.5917
	.quad	0x3fe855a5b9628cbd              # double 0.76045499999999999
	.quad	0x3fef79a2834d26fa              # double 0.98359799999999997
	.quad	0x3fd7dabe27179bfe              # double 0.372726
	.quad	0x3fd90be0ded288ce              # double 0.39134999999999998
	.quad	0x3fb02df0d413122b              # double 0.063200999999999993
	.quad	0x3fe8d2bb23571d1d              # double 0.77572399999999997
	.quad	0x3fcdb5e0f7fcfc40              # double 0.23211300000000001
	.quad	0x3fcd375c8d9f9054              # double 0.22825200000000001
	.quad	0x3f8db3bfb58d1527              # double 0.014503
	.quad	0x3fd4668c26139000              # double 0.31875900000000001
	.quad	0x3fe4646cfc829cfe              # double 0.63725900000000002
	.quad	0x3fd81c6d1e108c3f              # double 0.37673499999999999
	.quad	0x3fbd680e06530058              # double 0.114869
	.quad	0x3fc8f8df7a4e7ab7              # double 0.19509499999999999
	.quad	0x3fdb1abd1aa821f3              # double 0.42350700000000002
	.quad	0x3fe3e3e29307af21              # double 0.62156800000000001
	.quad	0x3fe736b4c7f34938              # double 0.72542799999999996
	.quad	0x3fbe612839042d8c              # double 0.11867
	.quad	0x3fef7d4bf0995aaf              # double 0.98404499999999994
	.quad	0x3fcbe586013660e5              # double 0.217942
	.quad	0x3fd8efd86a8fc0d3              # double 0.38963900000000001
	.quad	0x3fef86940357a355              # double 0.98517799999999999
	.quad	0x3fbbeed45e9185cf              # double 0.109113
	.quad	0x3feb41461b6d43d0              # double 0.85171799999999998
	.quad	0x3fe36238da3c2118              # double 0.60573999999999995
	.quad	0x3fcac111ada76d98              # double 0.20901700000000001
	.quad	0x3fd529aa1d755bcd              # double 0.33066800000000002
	.quad	0x3fd1588e368f0846              # double 0.27102999999999999
	.quad	0x3fe2978d4fdf3b64              # double 0.58099999999999996
	.quad	0x3fe2d19dece57109              # double 0.58808800000000006
	.quad	0x3fd60ed3d859c8c9              # double 0.34465499999999999
	.quad	0x3fd9b61bb05faebc              # double 0.40173999999999999
	.quad	0x3fe75cc857f3061c              # double 0.73007599999999995
	.quad	0x3fc731ca7d6733ec              # double 0.18120700000000001
	.quad	0x3fc868123810e886              # double 0.19067600000000001
	.quad	0x3fd6dde37585be1b              # double 0.35729300000000003
	.quad	0x3fc195a294141e9b              # double 0.137379
	.quad	0x3fe08d5e8d5410f9              # double 0.51725699999999997
	.quad	0x3fe0c7ae147ae148              # double 0.52437500000000004
	.quad	0x3fe022467be553ac              # double 0.50418399999999997
	.quad	0x3fe6c5b6c3760bf6              # double 0.71163500000000002
	.quad	0x3fe0d147f1305964              # double 0.52554699999999999
	.quad	0x3fc7ca42aed13943              # double 0.18586
	.quad	0x3fde9a5ebb7739f3              # double 0.47817199999999999
	.quad	0x3fe10ccbc05d52c1              # double 0.53281199999999995
	.quad	0x3fef5adfb506dd6a              # double 0.97984300000000002
	.quad	0x3fe51ccfaeff5c6c              # double 0.65976699999999999
	.quad	0x3fc9ce6c093d9664              # double 0.20161200000000001
	.quad	0x3fafa54c55432874              # double 0.061808000000000002
	.quad	0x3fef90ecb74ddf87              # double 0.98644100000000001
	.quad	0x3fd571da37ef5a96              # double 0.33507399999999998
	.quad	0x3fe80e6299524bfd              # double 0.75175599999999998
	.quad	0x3fbc7064ece9a2c6              # double 0.11108999999999999
	.quad	0x3fe8c6c97d8cf399              # double 0.77426600000000001
	.quad	0x3fcbd4e09784ec63              # double 0.21743399999999999
	.quad	0x3fe9b24c8366516e              # double 0.80301500000000003
	.quad	0x3fe0f102363b2570              # double 0.52942
	.quad	0x3fdaef177a7008a7              # double 0.42084300000000002
	.quad	0x3fd01187e7c06e1a              # double 0.25107000000000002
	.quad	0x3fcad96a6a01259a              # double 0.20976
	.quad	0x3fe7484d76ab5808              # double 0.727576
	.quad	0x3fcb8b588e368f08              # double 0.21518999999999999
	.quad	0x3fd68a19c9d5a188              # double 0.35217900000000002
	.quad	0x3fe547f993d5347a              # double 0.66503599999999996
	.quad	0x3fcf35daad601ffb              # double 0.24383099999999999
	.quad	0x3fef1667b5f1bef5              # double 0.97148500000000004
	.quad	0x3fe0b9496249a134              # double 0.52261800000000003
	.quad	0x3fe1d4195cc857f3              # double 0.557141
	.quad	0x3fc0d940789613d3              # double 0.13163
	.quad	0x3fb486f049a9973e              # double 0.080184000000000005
	.quad	0x3feb613f4a98aa86              # double 0.85562099999999996
	.quad	0x3fe9330d7386099a              # double 0.78748200000000002
	.quad	0x3fd4cbddb9841aac              # double 0.32494299999999998
	.quad	0x3fdff55de58e64b2              # double 0.49935099999999999
	.quad	0x3fce7789a459103d              # double 0.23802300000000001
	.quad	0x3fa33f42352eb5f6              # double 0.037592
	.quad	0x3fec19934efcbd55              # double 0.87812199999999996
	.quad	0x3fd0612839042d8c              # double 0.25592999999999999
	.quad	0x3fe90e043a2163fe              # double 0.78296100000000002
	.quad	0x3fed85ab3aabcd79              # double 0.92256700000000003
	.quad	0x3fe76a57214f0521              # double 0.73173100000000002
	.quad	0x3fe2e9bbf0dc768e              # double 0.591032
	.quad	0x3fd9220ff540895d              # double 0.392704
	.quad	0x3fd87531db445ed5              # double 0.38215300000000002
	.quad	0x3fb260913a4f8727              # double 0.071786000000000003
	.quad	0x3fa8ea9e6eeb7026              # double 0.048665
	.quad	0x3fe86675147f1306              # double 0.76250700000000005
	.quad	0x3fee4f8b588e368f              # double 0.94721
	.quad	0x3fe5c6e08f217093              # double 0.68052699999999999
	.quad	0x3fccb4289118c198              # double 0.224248
	.quad	0x3fd8cf1c3265adda              # double 0.38764100000000001
	.quad	0x3fe9b69fcf3dc055              # double 0.80354300000000001
	.quad	0x3fe7aac753e707e1              # double 0.73959699999999995
	.quad	0x3fc6a7ded6ba8c58              # double 0.17699799999999999
	.quad	0x3fb3d75e2046c765              # double 0.077505000000000004
	.quad	0x3fd226fe718a86d7              # double 0.28362999999999999
	.quad	0x3fd16a2f48c2e771              # double 0.27210600000000001
	.quad	0x3fe43b96af038e2a              # double 0.632274
	.quad	0x3fe91df1172ef0ae              # double 0.78490499999999996
	.quad	0x3fdc1e8e60807358              # double 0.43936500000000001
	.quad	0x3fd1e681a9b8cb8e              # double 0.279694
	.quad	0x3fb141e9af5ba2be              # double 0.067412
	.quad	0x3fb9aab474107315              # double 0.100261
	.quad	0x3fd5616b54e2b064              # double 0.33407100000000001
	.quad	0x3feaf625204af923              # double 0.84254700000000005
	.quad	0x3fe051ed9dfdac69              # double 0.51000100000000004
	.quad	0x3faae8e1d6494d51              # double 0.052558000000000001
	.quad	0x3fd1d5b6805a2d73              # double 0.278669
	.quad	0x3fa0a808c8259e1f              # double 0.032531999999999998
	.quad	0x3fe13914f483cafb              # double 0.53821799999999997
	.quad	0x3fb7903211cb039f              # double 0.092044000000000001
	.quad	0x3fe53f727136a401              # double 0.663995
	.quad	0x3fc070b8cfbfc654              # double 0.12844
	.quad	0x3fe858537e2c55c9              # double 0.76078199999999996
	.quad	0x3fd7837718655193              # double 0.36739899999999998
	.quad	0x3fb8676a7264a16a              # double 0.095327999999999996
	.quad	0x3fe883c297bfa4c6              # double 0.76608399999999999
	.quad	0x3fdce1bd1ed9dfdb              # double 0.45127800000000001
	.quad	0x3fe92d4d4024b33e              # double 0.78678000000000003
	.quad	0x3fd943ed959a3098              # double 0.39477099999999998
	.quad	0x3fe0bb1d0c804103              # double 0.522841
	.quad	0x3fe64aa10e022142              # double 0.69660999999999995
	.quad	0x3fef216616b54e2b              # double 0.97282699999999999
	.quad	0x3fe0f3471f79420b              # double 0.52969699999999997
	.quad	0x3fe93fd0d0678c00              # double 0.78903999999999996
	.quad	0x3fe70a5efe931876              # double 0.72001599999999999
	.quad	0x3fee87af20ea5b53              # double 0.95406299999999999
	.quad	0x3fb023315d701d9f              # double 0.063036999999999996
	.quad	0x3fe7fe23f24d8fd6              # double 0.74977300000000002
	.quad	0x3fddec0f88333fc8              # double 0.46753299999999998
	.quad	0x3fd51d25aab47410              # double 0.32990399999999998
	.quad	0x3fd8595feda66128              # double 0.38045499999999999
	.quad	0x3feb188b11409a24              # double 0.84674599999999999
	.quad	0x3fc24fa8b4bf8fcd              # double 0.14305599999999999
	.quad	0x3feb02a3486f049b              # double 0.84407200000000004
	.quad	0x3fd178d92fb19e73              # double 0.27300099999999999
	.quad	0x3f9bdba0a5269596              # double 0.027205
	.quad	0x3fab8c5436b8f9b1              # double 0.053804999999999999
	.quad	0x3fe39c6088d6d3b7              # double 0.61283900000000002
	.quad	0x3febace032db1e9f              # double 0.86485299999999998
	.quad	0x3fe4004102ff8ec1              # double 0.625031
	.quad	0x3f5fc08fa7a85016              # double 0.0019380000000000001
	.quad	0x3feb06338b47c73f              # double 0.84450700000000001
	.quad	0x3fd3d04a2fcefaa4              # double 0.30958799999999997
	.quad	0x3fd786d71f36262d              # double 0.36760500000000002
	.quad	0x3fe5e7cd03537197              # double 0.68454599999999999
	.quad	0x3fdfc8b0079a2835              # double 0.49662400000000001
	.quad	0x3fc1ded6ba8c5868              # double 0.13961299999999999
	.quad	0x3fdf868b9fdbd2fa              # double 0.492587
	.quad	0x3fd5a6bd6e8af816              # double 0.33830199999999999
	.quad	0x3feb07b352a84381              # double 0.84469000000000005
	.quad	0x3fd2645a1cac0831              # double 0.28737499999999999
	.quad	0x3fd237d1fe64f54d              # double 0.28465699999999999
	.quad	0x3fb433d6c7219221              # double 0.078916
	.quad	0x3fdb63dc486ad2dd              # double 0.42797000000000002
	.quad	0x3fc7940fecdd0d8d              # double 0.18420600000000001
	.quad	0x3faa4723aafff36b              # double 0.051324000000000002
	.quad	0x3fd3e9c0229a5ebb              # double 0.31114199999999997
	.quad	0x3fc76cdf266ba494              # double 0.18301000000000001
	.quad	0x3fe56a033e78e193              # double 0.66919099999999998
	.quad	0x3fd3701d9f4d37c1              # double 0.30371799999999999
	.quad	0x3feaed527e521577              # double 0.84147000000000005
	.quad	0x3feffbf1e8e60807              # double 0.99950499999999997
	.quad	0x3fe59df1172ef0ae              # double 0.67552999999999996
	.quad	0x3fb59780baa582dc              # double 0.084343000000000001
	.quad	0x3fe3bc8e25c810a5              # double 0.61676699999999995
	.quad	0x3feb2a3486f049aa              # double 0.84890200000000005
	.quad	0x3fe0b1359791819d              # double 0.52163199999999998
	.quad	0x3fd6d71f36262cba              # double 0.35687999999999998
	.quad	0x3fec8c62e4d1a650              # double 0.89213699999999996
	.quad	0x3fc72e514c22ee42              # double 0.18110100000000001
	.quad	0x3fcdfeda66128390              # double 0.23433999999999999
	.quad	0x3fdd50a88effe2a4              # double 0.45804800000000001
	.quad	0x3fcb2e05ccc89b0f              # double 0.212342
	.quad	0x3fe4a15db3397dd0              # double 0.64469799999999999
	.quad	0x3fdbf9e3864cb5bb              # double 0.43712699999999999
	.quad	0x3fee69ced0b30b5b              # double 0.95041600000000004
	.quad	0x3fe18d5629d8409e              # double 0.54850299999999996
	.quad	0x3fdc7928e0c9d9d3              # double 0.44489499999999998
	.quad	0x3fe404b7f5a5332b              # double 0.62557600000000002
	.quad	0x3fe3c1f42bb66730              # double 0.61742600000000003
	.quad	0x3fc882f0e0a84be4              # double 0.191496
	.quad	0x3fc7ec2ce4649907              # double 0.18689500000000001
	.quad	0x3fe4544dca8e2e2c              # double 0.63529100000000005
	.quad	0x3fd0dc768dfbd6a6              # double 0.26345600000000002
	.quad	0x3fc0dafd113836a8              # double 0.13168299999999999
	.quad	0x3febf724fa8b4bf9              # double 0.873919
	.quad	0x3fd5124d099e0e73              # double 0.32924199999999998
	.quad	0x3fef9355475a31a5              # double 0.98673500000000002
	.quad	0x3fc595cc857f3062              # double 0.16863400000000001
	.quad	0x3fd2e48e8a71de6a              # double 0.29520000000000002
	.quad	0x3fd2ce28ed5f138c              # double 0.29383300000000001
	.quad	0x3fd86b6e0d23d4f1              # double 0.38155699999999998
	.quad	0x3fc9c9b413986339              # double 0.20146800000000001
	.quad	0x3fe9b8130164840e              # double 0.80371999999999999
	.quad	0x3fb981f10667f90e              # double 0.099639000000000005
	.quad	0x3fbca8c154c985f0              # double 0.11194999999999999
	.quad	0x3fed9cd1c7de5083              # double 0.92539300000000002
	.quad	0x3fe0ed71f36262cc              # double 0.52898500000000004
	.quad	0x3faa3db3bfb58d15              # double 0.051251999999999999
	.quad	0x3feac7ae147ae148              # double 0.83687500000000004
	.quad	0x3fc3803cd141a693              # double 0.15235099999999999
	.quad	0x3fef932b55ef1fde              # double 0.98671500000000001
	.quad	0x3fa41d4b6a619daa              # double 0.039286000000000001
	.quad	0x3fdd61f5be5d9e41              # double 0.45910400000000001
	.quad	0x3fdb488c60cbf2b2              # double 0.42630299999999999
	.quad	0x3fe30c23fab10ba6              # double 0.59523199999999998
	.quad	0x3fecacd7cf5f4e44              # double 0.89609899999999997
	.quad	0x3fd52d234eb9a177              # double 0.33088000000000001
	.quad	0x3fe41a0f0a5efe93              # double 0.62818099999999999
	.quad	0x3f68bd66277c45cc              # double 0.0030200000000000001
	.quad	0x3fdbbc1eff9f87f0              # double 0.43335699999999999
	.quad	0x3fedb5a20ddc6195              # double 0.92842199999999997
	.quad	0x3f95d35653c9abb0              # double 0.021314
	.quad	0x3fd7b912dba4d6e4              # double 0.37067099999999997
	.quad	0x3fc100d5e8d54110              # double 0.13283800000000001
	.quad	0x3fe7caada33bd9cb              # double 0.74349100000000001
	.quad	0x3faaa25d8d79d0a6              # double 0.052019999999999997
	.quad	0x3fd10c0f01fb82c3              # double 0.26636100000000001
	.quad	0x3fb10c1b97353b4b              # double 0.066590999999999997
	.quad	0x3fcf3d859c8c9321              # double 0.244065
	.quad	0x3fd2d55a3a08398a              # double 0.29427199999999998
	.quad	0x3fe4a97396d0917d              # double 0.64568499999999995
	.quad	0x3fe3944aa53fc009              # double 0.61185199999999995
	.quad	0x3fe15e093532e7b4              # double 0.54272900000000002
	.quad	0x3fc6f1455219a848              # double 0.17923800000000001
	.quad	0x3fdfffcdab191dde              # double 0.49998799999999999
	.quad	0x3fedfd523b3636f4              # double 0.93717300000000003
	.quad	0x3fd9eeed8904f6e0              # double 0.40520800000000001
	.quad	0x3f9bd44998d045fe              # double 0.027177
	.quad	0x3fe1f84230fcf80e              # double 0.56155500000000003
	.quad	0x3fe431a4bdba0a52              # double 0.63105999999999995
	.quad	0x3fed8f7fcfc3f812              # double 0.923767
	.quad	0x3fe0d20f2becedd5              # double 0.52564200000000005
	.quad	0x3feb707e175d13d7              # double 0.85748199999999997
	.quad	0x3fc49c779a6b50b1              # double 0.161025
	.quad	0x3fed0bae89eba6ad              # double 0.90767600000000004
	.quad	0x3fef5ed288ce703b              # double 0.980325
	.quad	0x3feea90470a808c8              # double 0.95813199999999998
	.quad	0x3feceafee6fb4c3c              # double 0.90368599999999998
	.quad	0x3f74f5903a7546d4              # double 0.005117
	.quad	0x3fe05d6bebe1650a              # double 0.51140399999999997
	.quad	0x3fc9204295a6c5d2              # double 0.196297
	.quad	0x3fd53d102bc72e27              # double 0.33185199999999998
	.quad	0x3fededf1e0828c37              # double 0.93529600000000002
	.quad	0x3fea62b063e07a29              # double 0.82454700000000003
	.quad	0x3f1797cc39ffd60f              # double 9.0000000000000006E-5
	.quad	0x3fd4a077036c9c0b              # double 0.32229400000000002
	.quad	0x3fe7e69ad42c3c9f              # double 0.74690000000000001
	.quad	0x3fcdd81f10667f91              # double 0.233158
	.quad	0x3fdb3fe1975f2cb6              # double 0.42577399999999999
	.quad	0x3fe621f6cacd184c              # double 0.69164599999999998
	.quad	0x3fc910ba6266fd65              # double 0.195823
	.quad	0x3fe3e379b77c02b0              # double 0.62151800000000001
	.quad	0x3fe12c40d0aaa7df              # double 0.53665200000000002
	.quad	0x3fef75dfeb8d8234              # double 0.98313899999999998
	.quad	0x3feda7c17a89331a              # double 0.926728
	.quad	0x3feb7446f9b994e2              # double 0.85794400000000004
	.quad	0x3fec615011904b3c              # double 0.88687899999999997
	.quad	0x3fe70427418d690a              # double 0.71925700000000004
	.quad	0x3fbbc07ee0b0af60              # double 0.108406
	.quad	0x3fe2d4bcf0b6b6e1              # double 0.58846900000000002
	.quad	0x3fd0ce6c093d9664              # double 0.26259900000000003
	.quad	0x3fe48915bdd76684              # double 0.64173400000000003
	.quad	0x3fe59672324c8366              # double 0.67461499999999996
	.quad	0x3fce6338b47c73ef              # double 0.237403
	.quad	0x3feaa847b24638c9              # double 0.83304199999999995
	.quad	0x3fe239c51dabe271              # double 0.56955199999999995
	.quad	0x3fe09ab8e8ea39c5              # double 0.51888699999999999
	.quad	0x3fcc917507e9d94d              # double 0.223189
	.quad	0x3fd247baa9b499d0              # double 0.28562799999999999
	.quad	0x3fef02278d0cc35d              # double 0.96901300000000001
	.quad	0x3fe80605681ecd4b              # double 0.75073500000000004
	.quad	0x3fb5e1d2178f68be              # double 0.085476999999999997
	.quad	0x3fe7f57f737da61e              # double 0.74871799999999999
	.quad	0x3fe23f0563ed0f62              # double 0.57019299999999995
	.quad	0x3fe3f6b3bb83cf2d              # double 0.623865
	.quad	0x3fe7521dda059a74              # double 0.72877400000000003
	.quad	0x3fea14dd72367e41              # double 0.81504699999999997
	.quad	0x3febc67168f8e7de              # double 0.86797400000000002
	.quad	0x3fd4fc86cebbba56              # double 0.32791300000000001
	.quad	0x3fe98c2e770bd018              # double 0.79836200000000002
	.quad	0x3fa41e364bec679d              # double 0.039293000000000002
	.quad	0x3fc02834d26fa3fd              # double 0.12622700000000001
	.quad	0x3fec5000c9539b89              # double 0.88476600000000005
	.quad	0x3fc12deca25529fe              # double 0.134214
	.quad	0x3fe5b0468448cf7d              # double 0.67776800000000004
	.quad	0x3feb9d66adb402d1              # double 0.86296399999999995
	.quad	0x3fdb9f6a93f290ac              # double 0.43160500000000002
	.quad	0x3fe993b5bf6a0dbb              # double 0.79928100000000002
	.quad	0x3fd35e2478854cdb              # double 0.30262099999999997
	.quad	0x3fe894fce746cb96              # double 0.76818699999999995
	.quad	0x3fe0675ddd2ae8e2              # double 0.51261800000000002
	.quad	0x3fcc7e73a365cb36              # double 0.222609
	.quad	0x3fd6012599ed7c70              # double 0.34382000000000001
	.quad	0x3fd05c0b9991361e              # double 0.25561800000000001
	.quad	0x3fbcaa64c2f837b5              # double 0.11197500000000001
	.quad	0x3fdcf1800a7c5ac4              # double 0.45223999999999998
	.quad	0x3fdfebe9c886162f              # double 0.498774
	.quad	0x3fefe9014b599aa6              # double 0.997193
	.quad	0x3fcfa469d7342edc              # double 0.24720500000000001
	.quad	0x3febecc1ca3a4b55              # double 0.87265099999999995
	.quad	0x3fea11cb039ef0f1              # double 0.81467199999999995
	.quad	0x3feaa964e8b7e4de              # double 0.83317799999999997
	.quad	0x3fddb8aa00192a73              # double 0.46439599999999998
	.quad	0x3fec21fd1569f490              # double 0.87914899999999996
	.quad	0x3fe10917d6b65a9b              # double 0.53236000000000006
	.quad	0x3fa173fb7a5f41af              # double 0.034088
	.quad	0x3f802cd39da16617              # double 0.0078980000000000005
	.quad	0x3fe142a8869c66d3              # double 0.53938699999999995
	.quad	0x3fdb1c432ca57a78              # double 0.42359999999999998
	.quad	0x3fec2c9afe1da7b1              # double 0.88044500000000003
	.quad	0x3fd1d9e40c8472c1              # double 0.27892400000000001
	.quad	0x3fc0387df5cf2496              # double 0.126724
	.quad	0x3fc9688377186552              # double 0.19850200000000001
	.quad	0x3fd0648c7192ea53              # double 0.256137
	.quad	0x3fe31db0142f61ed              # double 0.59737399999999996
	.quad	0x3fdc292817763e4b              # double 0.44001200000000001
	.quad	0x3fe39a5a89b951c6              # double 0.61259200000000003
	.quad	0x3fcdbf26f1dc50ce              # double 0.23239599999999999
	.quad	0x3fea61e4f765fd8b              # double 0.82445000000000002
	.quad	0x3fef33397dd00f77              # double 0.97500299999999995
	.quad	0x3fd21615ebfa8f7e              # double 0.28259800000000002
	.quad	0x3fd7d8cb07d0aeda              # double 0.37260700000000002
	.quad	0x3fc492d55a3a083a              # double 0.16073100000000001
	.quad	0x3fceb9884c6a3bde              # double 0.240037
	.quad	0x3fe883ad9f0a1be3              # double 0.76607400000000003
	.quad	0x3fb0167a95c853c1              # double 0.062842999999999996
	.quad	0x3fc8d2dcb1465e89              # double 0.193935
	.quad	0x3fc59a06a6e32e38              # double 0.168763
	.quad	0x3fea6f3d3a1d3240              # double 0.82607900000000001
	.quad	0x3fc5ec3547e06962              # double 0.17127100000000001
	.quad	0x3fce9ef5232d2bb2              # double 0.23922599999999999
	.quad	0x3fd930c67168f8e8              # double 0.39360200000000001
	.quad	0x3feaa77e5eaab042              # double 0.83294599999999996
	.quad	0x3f93721d53cddd6e              # double 0.01899
	.quad	0x3fdb26aec0724b77              # double 0.424236
	.quad	0x3fd081ba7fc32ebe              # double 0.25791799999999998
	.quad	0x3fa37e0ac7da1ec5              # double 0.038071000000000001
	.quad	0x3fd3e21101b00368              # double 0.31067299999999998
	.quad	0x3faa78af3e468cac              # double 0.051701999999999998
	.quad	0x3feb7ce3150dae3e              # double 0.85899499999999995
	.quad	0x3fdeb8b26394face              # double 0.48002299999999998
	.quad	0x3fd9f7ad4b2745bf              # double 0.40574199999999999
	.quad	0x3fef73b645a1cac1              # double 0.98287500000000005
	.quad	0x3fb8998d045fe111              # double 0.096092999999999998
	.quad	0x3fd41ac9afe1da7b              # double 0.314135
	.quad	0x3fedda20ddc61954              # double 0.93287699999999995
	.quad	0x3fe2cdd2f1a9fbe7              # double 0.58762499999999995
	.quad	0x3fc50d2806af46aa              # double 0.164464
	.quad	0x3fb2cd07852f7f4a              # double 0.073441000000000006
	.quad	0x3feea048e043a216              # double 0.95706599999999997
	.quad	0x3fd0dccea28fe261              # double 0.26347700000000002
	.quad	0x3fe6660807357e67              # double 0.69995499999999999
	.quad	0x3fb939c94f69ca9f              # double 0.098538000000000001
	.quad	0x3f9a9fbe76c8b439              # double 0.025999999999999999
	.quad	0x3fee9dcf893faf42              # double 0.95676399999999995
	.quad	0x3fd635eb7457c0b1              # double 0.34704099999999999
	.quad	0x3fc468448cf7caa7              # double 0.15943199999999999
	.quad	0x3fe228fe260b2c84              # double 0.56750400000000001
	.quad	0x3fd12c01e68a0d35              # double 0.26831100000000002
	.quad	0x3fee50614163779f              # double 0.94731200000000004
	.quad	0x3fd8fd32c625e99f              # double 0.39045400000000002
	.quad	0x3fecdfd04a2fcefb              # double 0.90232100000000004
	.quad	0x3fc4cd6c2efd438d              # double 0.162519
	.quad	0x3fe382ecaeea63b7              # double 0.60973200000000005
	.quad	0x3fe8efc158fb43d9              # double 0.77926700000000004
	.quad	0x3fcea1dfb9389b52              # double 0.239315
	.quad	0x3fe11c4fc1df3301              # double 0.53470600000000001
	.quad	0x3fc58ac9f2fdb8fe              # double 0.168298
	.quad	0x3feca1f080303c08              # double 0.89476800000000001
	.quad	0x3fe31ae0c1765775              # double 0.59703099999999998
	.quad	0x3fd403bc4d22c882              # double 0.31272800000000001
	.quad	0x3fd071bcdbbe0158              # double 0.256942
	.quad	0x3fc679a2834d26fa              # double 0.17558699999999999
	.quad	0x3fa9693c03bc4d23              # double 0.049631000000000002
	.quad	0x3fcf98a65492ff4c              # double 0.24684600000000001
	.quad	0x3fc2504816f0068e              # double 0.14307500000000001
	.quad	0x3feb2847b24638c9              # double 0.84866699999999995
	.quad	0x3fc52db1e9f27781              # double 0.16545699999999999
	.quad	0x3fe801cb46bacf74              # double 0.75021899999999996
	.quad	0x3fe33966be7afa72              # double 0.60075699999999999
	.quad	0x3fe9af01754b05b8              # double 0.80261300000000002
	.quad	0x3fcbd7774aba3876              # double 0.21751300000000001
	.quad	0x3fc6ad57bc7f77af              # double 0.17716499999999999
	.quad	0x3fdadaf4adbc664d              # double 0.41961399999999999
	.quad	0x3f832617c1bda512              # double 0.0093500000000000007
	.quad	0x3fe644cdfaca361a              # double 0.69589900000000005
	.quad	0x3fe5e0828c36da88              # double 0.68365600000000004
	.quad	0x3fe403c6c97d8cf4              # double 0.62546100000000004
	.quad	0x3fe2404a72ead927              # double 0.57034799999999997
	.quad	0x3fe9ad1aeb3dd11c              # double 0.80238100000000001
	.quad	0x3fcad91eeaa6d267              # double 0.20975099999999999
	.quad	0x3fe6e5f9591cd1c8              # double 0.71557300000000001
	.quad	0x3fcee6106ab14ec2              # double 0.241396
	.quad	0x3fa0f49491f2dc2b              # double 0.033116
	.quad	0x3fd64434e3369b9d              # double 0.34791299999999997
	.quad	0x3fd9247cb70ac3a8              # double 0.39285199999999998
	.quad	0x3fe239884c6a3bde              # double 0.569523
	.quad	0x3fea1986b9c304cd              # double 0.81561600000000001
	.quad	0x3fd90f7b9e060fe4              # double 0.39156999999999997
	.quad	0x3fe1dd1e53a81dc1              # double 0.55824200000000002
	.quad	0x3fd69984a0e410b6              # double 0.35311999999999999
	.quad	0x3fd36fe2e6ea8544              # double 0.30370399999999997
	.quad	0x3fed733ca31e7d9a              # double 0.92031700000000005
	.quad	0x3fe8434c1a8ac5c1              # double 0.75821499999999997
	.quad	0x3fdab6134ce3de61              # double 0.41736299999999998
	.quad	0x3fd1c729f59ccfaf              # double 0.277781
	.quad	0x3fdaa2b1704ff434              # double 0.41617999999999999
	.quad	0x3fc8a1272c94b381              # double 0.19241800000000001
	.quad	0x3fe139e060fe4799              # double 0.53831499999999999
	.quad	0x3fb53cee9dd7ecbb              # double 0.082960999999999993
	.quad	0x3fee384988094e5d              # double 0.94437099999999996
	.quad	0x3fed0d25edd05293              # double 0.90785499999999997
	.quad	0x3fd95d2d01c0ca60              # double 0.396312
	.quad	0x3fbff455a7d24181              # double 0.124822
	.quad	0x3fe5ce6e221c8a7a              # double 0.68144899999999997
	.quad	0x3fd5ddc6195464dc              # double 0.34166099999999999
	.quad	0x3fa69e5e2478854d              # double 0.044177000000000001
	.quad	0x3fd19a8049667b5f              # double 0.27505499999999999
	.quad	0x3fd0b838c111ada7              # double 0.26124399999999998
	.quad	0x3f9e7c06e19b90eb              # double 0.029770000000000001
	.quad	0x3fcdc8323358f2e0              # double 0.23267199999999999
	.quad	0x3fdb25072085b185              # double 0.42413499999999998
	.quad	0x3fd71782d38476f3              # double 0.36081000000000002
	.quad	0x3fd7271bcdbbe015              # double 0.36176199999999997
	.quad	0x3fda8adab9f559b4              # double 0.41472500000000001
	.quad	0x3f9c1b97353b4b30              # double 0.027449000000000001
	.quad	0x3fdda658c4bd33d3              # double 0.46327800000000002
	.quad	0x3feb99b6f5caf2d8              # double 0.862514
	.quad	0x3fd67d6b65a9a805              # double 0.35140500000000002
	.quad	0x3fe7f7d73c925786              # double 0.749004
	.quad	0x3fde939eadd590c1              # double 0.47776000000000002
	.quad	0x3fdebc01a36e2eb2              # double 0.48022500000000001
	.quad	0x3fd545dc8323358f              # double 0.33238899999999999
	.quad	0x3fe054a5df2239e7              # double 0.51033300000000004
	.quad	0x3fe59fa97e132b56              # double 0.67574000000000001
	.quad	0x3fe4d46d3f9e7b81              # double 0.65093100000000004
	.quad	0x3fce133c1ce6c094              # double 0.234962
	.quad	0x3fc54bdfd2630ec3              # double 0.166378
	.quad	0x3fdabe8bc169c23b              # double 0.41787999999999997
	.quad	0x3fe5814940bbb1f2              # double 0.67203199999999996
	.quad	0x3fd36687f455a7d2              # double 0.30313299999999999
	.quad	0x3fc184b1ab0856e7              # double 0.13686200000000001
	.quad	0x3fecf6ad70e6f2e9              # double 0.90511200000000003
	.quad	0x3fe81eba6aca7935              # double 0.75375099999999995
	.quad	0x3fb7546d3f9e7b81              # double 0.091132000000000005
	.quad	0x3fd60c804102ff8f              # double 0.34451300000000001
	.quad	0x3fdf06c43f5f9160              # double 0.484788
	.quad	0x3fef0e453d20f2bf              # double 0.97049200000000002
	.quad	0x3fd16e7a311e85fd              # double 0.272368
	.quad	0x3fea5b6a1e81cb47              # double 0.82365900000000003
	.quad	0x3fcb9e6256366d7a              # double 0.21577099999999999
	.quad	0x3fef3e89a88ace25              # double 0.97638400000000002
	.quad	0x3fd8eafee6fb4c3c              # double 0.38934299999999999
	.quad	0x3feb036c9c0a8d22              # double 0.84416800000000003
	.quad	0x3fe8077681669ced              # double 0.750911
	.quad	0x3feb8af5fd47bedb              # double 0.86071299999999995
	.quad	0x3fa10624dd2f1aa0              # double 0.033250000000000002
	.quad	0x3fe559b5e95b78cd              # double 0.66720100000000004
	.quad	0x3fe31f1f14983d79              # double 0.597549
	.quad	0x3fdc9f59ccfaeff6              # double 0.44722600000000001
	.quad	0x3f90121682f94424              # double 0.015694
	.quad	0x3fde39fba450acc1              # double 0.47228900000000001
	.quad	0x3fe8f9591cd1c7de              # double 0.78043799999999997
	.quad	0x3fda26f1dc50ce4f              # double 0.40862700000000002
	.quad	0x3fee7e64f54d1e97              # double 0.95292900000000003
	.quad	0x3fe1a4894c447c31              # double 0.55133500000000002
	.quad	0x3feb8268900c521e              # double 0.85966900000000002
	.quad	0x3fed5cd7060bb2bc              # double 0.91758300000000003
	.quad	0x3fcec9c90c4dec1c              # double 0.240533
	.quad	0x3fdb87f023e9ea14              # double 0.430172
	.quad	0x3fef0db6a1e81cb4              # double 0.97042399999999995
	.quad	0x3fd9033a4723ab00              # double 0.390822
	.quad	0x3fe47e82517e77d5              # double 0.64044299999999998
	.quad	0x3fed54bcf0b6b6e1              # double 0.91659400000000002
	.quad	0x3fcd99dcb5781c71              # double 0.23125799999999999
	.quad	0x3fb833721d53cddd              # double 0.094534999999999994
	.quad	0x3fd40a06e9ff0cbb              # double 0.313112
	.quad	0x3fe897aaac1094a3              # double 0.76851400000000003
	.quad	0x3fd889e34330d738              # double 0.38341599999999998
	.quad	0x3fe3f8e3ac0c62e5              # double 0.62413200000000002
	.quad	0x3fede4a9cdc44391              # double 0.93416299999999997
	.quad	0x3fe4001f75104d55              # double 0.62501499999999999
	.quad	0x3fc9ebd09e12a51e              # double 0.20250899999999999
	.quad	0x3fee3152f3c2dadc              # double 0.94352100000000005
	.quad	0x3fe89a62ed352221              # double 0.76884600000000003
	.quad	0x3fe74d63cb817332              # double 0.72819699999999998
	.quad	0x3fed6c508b32ce89              # double 0.91947199999999996
	.quad	0x3fe87aaac1094a2c              # double 0.76497400000000004
	.quad	0x3fcc4c404a72ead9              # double 0.221077
	.quad	0x3fe25043e5321e60              # double 0.57229799999999997
	.quad	0x3fdb105e1c15097d              # double 0.42287400000000003
	.quad	0x3fe49ac9afe1da7b              # double 0.643895
	.quad	0x3fef3305100a393f              # double 0.97497800000000001
	.quad	0x3fe9b7cbb3c81909              # double 0.80368600000000001
	.quad	0x3fe611c4b90214ad              # double 0.68966899999999998
	.quad	0x3fea9958969a0ad9              # double 0.83121900000000004
	.quad	0x3fcf9bc33f85510d              # double 0.24694099999999999
	.quad	0x3febe6f5019f3c71              # double 0.87194300000000002
	.quad	0x3fe0ca686e7e62dc              # double 0.52470799999999995
	.quad	0x3fd58d972cd7cf5f              # double 0.33676699999999998
	.quad	0x3fe143c7d5ed06ff              # double 0.539524
	.quad	0x3fe405015c209247              # double 0.62561100000000003
	.quad	0x3fedca6eb91b3f21              # double 0.93096100000000004
	.quad	0x3fef9c23b7952d23              # double 0.98780999999999996
	.quad	0x3fcefd113836a833              # double 0.24209800000000001
	.quad	0x3fc1360d0247021d              # double 0.134462
	.quad	0x3fe8ee8d10f51aca              # double 0.77912000000000003
	.quad	0x3fe40672756861e9              # double 0.62578699999999998
	.quad	0x3fd432db1e9f2778              # double 0.315604
	.quad	0x3fc2577531db445f              # double 0.143294
	.quad	0x3fe9006f262888b5              # double 0.78130299999999997
	.quad	0x3fe5d8d36b4c7f35              # double 0.68271800000000005
	.quad	0x3fd52f76e6106ab1              # double 0.33102199999999998
	.quad	0x3fd5dfefbf401c50              # double 0.34179300000000001
	.quad	0x3fe1a24031487768              # double 0.55105599999999999
	.quad	0x3febf1c10d7be985              # double 0.87326099999999995
	.quad	0x3fb3586ca89fc6da              # double 0.075567999999999996
	.quad	0x3fdaa8f3a9b06812              # double 0.41656199999999999
	.quad	0x3fe7a79dd3bafd97              # double 0.73921099999999995
	.quad	0x3fce2ababead4f59              # double 0.235679
	.quad	0x3fefddf00abf76a3              # double 0.995842
	.quad	0x3fd493f6c2699c7c              # double 0.32153100000000001
	.quad	0x3fdd7d5a9eb2074f              # double 0.46077600000000002
	.quad	0x3feb256bca5375c9              # double 0.84831800000000002
	.quad	0x3fe995182a9930be              # double 0.79944999999999999
	.quad	0x3fdd2fe3f359ff50              # double 0.45604800000000001
	.quad	0x3fee12ee84ad794a              # double 0.93981099999999995
	.quad	0x3feca4bdba0a5269              # double 0.89510999999999996
	.quad	0x3fe611b60ae9680e              # double 0.689662
	.quad	0x3fe6b10129cbab65              # double 0.70910700000000004
	.quad	0x3fb7ecaab8a5ce5b              # double 0.093454999999999996
	.quad	0x3fc77d6b65a9a805              # double 0.18351500000000001
	.quad	0x3fd91b3aeee95747              # double 0.392287
	.quad	0x3fc1f31f46ed245b              # double 0.140232
	.quad	0x3f7c9d5a187a4a49              # double 0.006986
	.quad	0x3fc961e4f765fd8b              # double 0.1983
	.quad	0x3fe8c4f7ec3547e0              # double 0.77404399999999995
	.quad	0x3fe321d755bccaf7              # double 0.597881
	.quad	0x3fe7093faf42784b              # double 0.71987900000000005
	.quad	0x3fde189bd8383ada              # double 0.470252
	.quad	0x3fef46dc5d638866              # double 0.97740000000000005
	.quad	0x3fc01ebc83a96d4c              # double 0.12593799999999999
	.quad	0x3fd552b0a6fc58ac              # double 0.33317200000000002
	.quad	0x3fe6a1a719b4dcec              # double 0.707233
	.quad	0x3fc8d634549b62c7              # double 0.19403699999999999
	.quad	0x3fe06e653868fd1a              # double 0.51347600000000004
	.quad	0x3feca19652bd3c36              # double 0.89472499999999999
	.quad	0x3fd2c069e7fb267c              # double 0.29299399999999998
	.quad	0x3fe455bab21815a0              # double 0.63546499999999995
	.quad	0x3fdf9cf56eac8605              # double 0.49395499999999998
	.quad	0x3fe05c443914f484              # double 0.51126300000000002
	.quad	0x3fa9bbadc0980b24              # double 0.050259999999999999
	.quad	0x3fee4ce8101f31f4              # double 0.94688799999999995
	.quad	0x3fc7b0bbf50e3476              # double 0.185081
	.quad	0x3fe4ad03d9a95422              # double 0.64612000000000003
	.quad	0x3fceee41919ac797              # double 0.241646
	.quad	0x3fe666299524bfd3              # double 0.69997100000000001
	.quad	0x3fed18a222d5171e              # double 0.90925699999999998
	.quad	0x3fee0e6299524bfd              # double 0.93925599999999998
	.quad	0x3fbf823c85c24c40              # double 0.123081
	.quad	0x3fdd667b5f1bef4a              # double 0.45938000000000001
	.quad	0x3fcbf633ce63a5c2              # double 0.21845100000000001
	.quad	0x3fe38763a1900820              # double 0.61027699999999996
	.quad	0x3fed36d22424a277              # double 0.91294200000000003
	.quad	0x3fe27ad4b2745bf2              # double 0.57749399999999995
	.quad	0x3fdacbccf28c79f6              # double 0.41868899999999998
	.quad	0x3fd3c17a89331a09              # double 0.30868400000000001
	.quad	0x3f96dc5d63886595              # double 0.022325000000000001
	.quad	0x3feae2174c4cdfad              # double 0.84009900000000004
	.quad	0x3febd9ad85dfa872              # double 0.87032200000000004
	.quad	0x3fdc8eabffcdab19              # double 0.44620799999999999
	.quad	0x3fd2018e757928e1              # double 0.28134500000000001
	.quad	0x3fe6bd29563a9f38              # double 0.71059099999999997
	.quad	0x3fe9a2834d26fa40              # double 0.80108800000000002
	.quad	0x3fe83c1ce6c093d9              # double 0.75733799999999996
	.quad	0x3fd22ea960b6f9fd              # double 0.28409800000000002
	.quad	0x3fd58b71b8aa0019              # double 0.33663599999999999
	.quad	0x3fe4d1aeb3dd11be              # double 0.65059599999999995
	.quad	0x3fd0bb0e5e679464              # double 0.26141700000000001
	.quad	0x3fe4b8887229e908              # double 0.64752600000000005
	.quad	0x3fe6bffcdab191de              # double 0.71093600000000001
	.quad	0x3fedf6273929ed39              # double 0.93629799999999996
	.quad	0x3fd420ea5b530ced              # double 0.31450899999999998
	.quad	0x3fd3b4b2fa93af75              # double 0.30790400000000001
	.quad	0x3fe9ee5cd4ed2cbf              # double 0.81034700000000004
	.quad	0x3fe8647dc37a3db4              # double 0.76226700000000002
	.quad	0x3fe02c881e4712e4              # double 0.505436
	.quad	0x3fb2a9c560c7c0f4              # double 0.072902999999999996
	.quad	0x3fe61aa1d755bccb              # double 0.690751
	.quad	0x3fe56694898f605b              # double 0.66877200000000003
	.quad	0x3fd943d89ce4a7b5              # double 0.39476600000000001
	.quad	0x3fe1aeab7995ee13              # double 0.55257199999999995
	.quad	0x3feeb86d2ed783e0              # double 0.960013
	.quad	0x3fe31de26916440f              # double 0.59739799999999998
	.quad	0x3fe97318fc504817              # double 0.79530000000000001
	.quad	0x3fd6ffb480a5accd              # double 0.35935699999999998
	.quad	0x3fed85e5f30e7ff6              # double 0.92259500000000005
	.quad	0x3f94ce3de6149c6f              # double 0.020317999999999999
	.quad	0x3f363779e9d0e992              # double 3.39E-4
	.quad	0x3fb7eb399f5dfeb9              # double 0.093433000000000002
	.quad	0x3fd122e5de15ca6d              # double 0.26775500000000002
	.quad	0x3feaea1c68ec52a4              # double 0.84107799999999999
	.quad	0x3fd877af640639d6              # double 0.38230500000000001
	.quad	0x3fe06b24a6a875d5              # double 0.51307899999999995
	.quad	0x3fbf03e20ccff21b              # double 0.121153
	.quad	0x3fed1fe86833c600              # double 0.91014499999999998
	.quad	0x3fec12a0ec743201              # double 0.877274
	.quad	0x3fea5e58e64b2314              # double 0.82401699999999999
	.quad	0x3fd16d373affb04f              # double 0.27229100000000001
	.quad	0x3fe038a5ce5b4246              # double 0.506915
	.quad	0x3fd8ae7924af0bf2              # double 0.38564900000000002
	.quad	0x3fe1f9acffa7eb6c              # double 0.56172800000000001
	.quad	0x3feaff2e48e8a71e              # double 0.84365000000000001
	.quad	0x3fe7bb341e14bdfd              # double 0.74160199999999998
	.quad	0x3fd10c34c1a8ac5c              # double 0.26637
	.quad	0x3fd3c8ffb8b26395              # double 0.309143
	.quad	0x3fecf8c436fc1590              # double 0.90536700000000003
	.quad	0x3feac690de093533              # double 0.83673900000000001
	.quad	0x3f77a89331a08bfc              # double 0.0057759999999999999
	.quad	0x3fea18f605ab3aac              # double 0.81554700000000002
	.quad	0x3fb83ab862b27cbf              # double 0.094645999999999994
	.quad	0x3f8e2c55c96030c2              # double 0.014733
	.quad	0x3fd6ae5bc87db2b3              # double 0.35439199999999998
	.quad	0x3fec2dc4c9c90c4e              # double 0.88058700000000001
	.quad	0x3fcbbb73083558a7              # double 0.21665799999999999
	.quad	0x3fd27a95c853c148              # double 0.28873199999999999
	.quad	0x3fdbd30f062d40ab              # double 0.434757
	.quad	0x3fd10357a355043e              # double 0.26582899999999998
	.quad	0x3fe9d45a5fc7e6b4              # double 0.807172
	.quad	0x3fca4028e4fb97bb              # double 0.20508299999999999
	.quad	0x3fc0ccdd93c46d83              # double 0.13125200000000001
	.quad	0x3fe52d46f587d6f9              # double 0.66177699999999995
	.quad	0x3fee00bcbe61cfff              # double 0.93759000000000003
	.quad	0x3fbc82491afc04c9              # double 0.111363
	.quad	0x3fdc06fac6045baf              # double 0.43792599999999998
	.quad	0x3fe3fecfe9b7bf1f              # double 0.62485500000000005
	.quad	0x3fa9d3cbc48f10aa              # double 0.050444000000000003
	.quad	0x3fe4ee86c6583e85              # double 0.65411699999999995
	.quad	0x3fe29afe1da7b0b4              # double 0.58142000000000005
	.quad	0x3fe9c7f993d5347a              # double 0.80566099999999996
	.quad	0x3fd187980f55de59              # double 0.27390100000000001
	.quad	0x3fa11ea78af3e469              # double 0.033437000000000001
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	80                              # 0x50
	.quad	80                              # 0x50
	.quad	112                             # 0x70
	.quad	112                             # 0x70
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	189                             # 0xbd
	.quad	189                             # 0xbd
	.quad	231                             # 0xe7
	.quad	231                             # 0xe7
	.quad	269                             # 0x10d
	.quad	269                             # 0x10d
	.quad	313                             # 0x139
	.quad	313                             # 0x139
	.quad	352                             # 0x160
	.quad	352                             # 0x160
	.quad	394                             # 0x18a
	.quad	394                             # 0x18a
	.quad	437                             # 0x1b5
	.quad	437                             # 0x1b5
	.quad	473                             # 0x1d9
	.quad	473                             # 0x1d9
	.quad	512                             # 0x200
	.quad	512                             # 0x200
	.quad	548                             # 0x224
	.quad	548                             # 0x224
	.quad	584                             # 0x248
	.quad	584                             # 0x248
	.quad	620                             # 0x26c
	.quad	620                             # 0x26c
	.quad	659                             # 0x293
	.quad	659                             # 0x293
	.quad	704                             # 0x2c0
	.quad	704                             # 0x2c0
	.quad	744                             # 0x2e8
	.quad	744                             # 0x2e8
	.quad	792                             # 0x318
	.quad	792                             # 0x318
	.quad	833                             # 0x341
	.quad	833                             # 0x341
	.quad	871                             # 0x367
	.quad	871                             # 0x367
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	992                             # 0x3e0
	.quad	992                             # 0x3e0
	.quad	1026                            # 0x402
	.quad	1026                            # 0x402
	.quad	1060                            # 0x424
	.quad	1060                            # 0x424
	.quad	1101                            # 0x44d
	.quad	1101                            # 0x44d
	.quad	1142                            # 0x476
	.quad	1142                            # 0x476
	.quad	1181                            # 0x49d
	.quad	1181                            # 0x49d
	.quad	1221                            # 0x4c5
	.quad	1221                            # 0x4c5
	.quad	1264                            # 0x4f0
	.quad	1264                            # 0x4f0
	.quad	1303                            # 0x517
	.quad	1303                            # 0x517
	.quad	1343                            # 0x53f
	.quad	1343                            # 0x53f
	.quad	1380                            # 0x564
	.quad	1380                            # 0x564
	.quad	1424                            # 0x590
	.quad	1424                            # 0x590
	.quad	1464                            # 0x5b8
	.quad	1464                            # 0x5b8
	.quad	1505                            # 0x5e1
	.quad	1505                            # 0x5e1
	.quad	1548                            # 0x60c
	.quad	1548                            # 0x60c
	.quad	1593                            # 0x639
	.quad	1593                            # 0x639
	.quad	1629                            # 0x65d
	.quad	1629                            # 0x65d
	.quad	1673                            # 0x689
	.quad	1673                            # 0x689
	.quad	1715                            # 0x6b3
	.quad	1715                            # 0x6b3
	.quad	1755                            # 0x6db
	.quad	1755                            # 0x6db
	.quad	1795                            # 0x703
	.quad	1795                            # 0x703
	.quad	1835                            # 0x72b
	.quad	1835                            # 0x72b
	.quad	1875                            # 0x753
	.quad	1875                            # 0x753
	.quad	1916                            # 0x77c
	.quad	1916                            # 0x77c
	.quad	1956                            # 0x7a4
	.quad	1956                            # 0x7a4
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
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
	.quad	72                              # 0x48
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	78                              # 0x4e
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
	.quad	54                              # 0x36
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
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
	.quad	0                               # 0x0
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	36                              # 0x24
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
