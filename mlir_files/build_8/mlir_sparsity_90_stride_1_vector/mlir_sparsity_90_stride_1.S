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
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	104                             # 0x68
	.quad	113                             # 0x71
	.quad	124                             # 0x7c
	.quad	140                             # 0x8c
	.quad	148                             # 0x94
	.quad	157                             # 0x9d
	.quad	170                             # 0xaa
	.quad	180                             # 0xb4
	.quad	194                             # 0xc2
	.quad	205                             # 0xcd
	.quad	218                             # 0xda
	.quad	234                             # 0xea
	.quad	249                             # 0xf9
	.quad	257                             # 0x101
	.quad	269                             # 0x10d
	.quad	278                             # 0x116
	.quad	286                             # 0x11e
	.quad	292                             # 0x124
	.quad	303                             # 0x12f
	.quad	312                             # 0x138
	.quad	324                             # 0x144
	.quad	331                             # 0x14b
	.quad	338                             # 0x152
	.quad	347                             # 0x15b
	.quad	361                             # 0x169
	.quad	373                             # 0x175
	.quad	378                             # 0x17a
	.quad	384                             # 0x180
	.quad	396                             # 0x18c
	.quad	419                             # 0x1a3
	.quad	427                             # 0x1ab
	.quad	431                             # 0x1af
	.quad	442                             # 0x1ba
	.quad	451                             # 0x1c3
	.quad	456                             # 0x1c8
	.quad	465                             # 0x1d1
	.quad	472                             # 0x1d8
	.quad	480                             # 0x1e0
	.quad	492                             # 0x1ec
	.quad	501                             # 0x1f5
	.quad	506                             # 0x1fa
	.quad	518                             # 0x206
	.quad	533                             # 0x215
	.quad	542                             # 0x21e
	.quad	556                             # 0x22c
	.quad	569                             # 0x239
	.quad	573                             # 0x23d
	.quad	582                             # 0x246
	.quad	596                             # 0x254
	.quad	611                             # 0x263
	.quad	621                             # 0x26d
	.quad	632                             # 0x278
	.quad	644                             # 0x284
	.quad	652                             # 0x28c
	.quad	664                             # 0x298
	.quad	674                             # 0x2a2
	.quad	681                             # 0x2a9
	.quad	692                             # 0x2b4
	.quad	693                             # 0x2b5
	.quad	701                             # 0x2bd
	.quad	714                             # 0x2ca
	.quad	725                             # 0x2d5
	.quad	737                             # 0x2e1
	.quad	750                             # 0x2ee
	.quad	766                             # 0x2fe
	.quad	781                             # 0x30d
	.quad	787                             # 0x313
	.quad	797                             # 0x31d
	.quad	810                             # 0x32a
	.quad	817                             # 0x331
	.quad	823                             # 0x337
	.quad	834                             # 0x342
	.quad	845                             # 0x34d
	.quad	854                             # 0x356
	.quad	862                             # 0x35e
	.quad	874                             # 0x36a
	.quad	884                             # 0x374
	.quad	895                             # 0x37f
	.quad	904                             # 0x388
	.quad	917                             # 0x395
	.quad	927                             # 0x39f
	.quad	936                             # 0x3a8
	.quad	949                             # 0x3b5
	.quad	959                             # 0x3bf
	.quad	969                             # 0x3c9
	.quad	980                             # 0x3d4
	.quad	992                             # 0x3e0
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	43                              # 0x2b
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	50                              # 0x32
	.quad	87                              # 0x57
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	54                              # 0x36
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	30                              # 0x1e
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	64                              # 0x40
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	92                              # 0x5c
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	83                              # 0x53
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	54                              # 0x36
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	55                              # 0x37
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	64                              # 0x40
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	13                              # 0xd
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	99                              # 0x63
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	53                              # 0x35
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	25                              # 0x19
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	35                              # 0x23
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	9                               # 0x9
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	91                              # 0x5b
	.quad	17                              # 0x11
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	57                              # 0x39
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	35                              # 0x23
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	97                              # 0x61
	.quad	20                              # 0x14
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	52                              # 0x34
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	2                               # 0x2
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
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

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fd44399b2c40d0b              # double 0.31662600000000002
	.quad	0x3fa21ab4b72c5198              # double 0.035360000000000003
	.quad	0x3febaa0ec7432010              # double 0.86450899999999997
	.quad	0x3f948ba83f4eca68              # double 0.020063999999999999
	.quad	0x3fe9b59146e4c0df              # double 0.80341399999999996
	.quad	0x3fd1ad8a116659d1              # double 0.27621699999999999
	.quad	0x3fb9188f42fe8251              # double 0.098030999999999993
	.quad	0x3fda52deca2552a0              # double 0.41130800000000001
	.quad	0x3fd6ac4b4d056c51              # double 0.35426600000000003
	.quad	0x3fcbc5260f5e41d5              # double 0.21695400000000001
	.quad	0x3fcf27f5e84f0953              # double 0.24340700000000001
	.quad	0x3fd35fbb517a4617              # double 0.30271799999999999
	.quad	0x3fe2da3c21187e7c              # double 0.58914
	.quad	0x3fe4b1d2e0e30447              # double 0.64670700000000003
	.quad	0x3fcd90f301eabbcb              # double 0.230986
	.quad	0x3fc6c37e6f71a7e3              # double 0.177841
	.quad	0x3fc700b45ae5ffa4              # double 0.17970900000000001
	.quad	0x3fefb3eff1950332              # double 0.99071500000000001
	.quad	0x3fee639d5e4a3832              # double 0.94965999999999995
	.quad	0x3fe90c7e28240b78              # double 0.782775
	.quad	0x3fe7c5197a24894c              # double 0.74280999999999997
	.quad	0x3fcaaf251c193b3a              # double 0.20846999999999999
	.quad	0x3fe785814940bbb2              # double 0.73504700000000001
	.quad	0x3fe517c1bda5119d              # double 0.65915000000000001
	.quad	0x3fd1039abf338716              # double 0.265845
	.quad	0x3fcbc5692b3cc4ac              # double 0.21696199999999999
	.quad	0x3fcba16e7a311e86              # double 0.215864
	.quad	0x3fdb0b524399b2c4              # double 0.422566
	.quad	0x3fe447064ece9a2c              # double 0.63366999999999996
	.quad	0x3fa2b8a5ce5b4246              # double 0.036565
	.quad	0x3fe4b5b0bbf50e34              # double 0.64717899999999995
	.quad	0x3fd6172ef0ae5365              # double 0.345165
	.quad	0x3fe4617c1bda511a              # double 0.63690000000000002
	.quad	0x3fdd11b1d92b7fe1              # double 0.45420500000000003
	.quad	0x3fcce453d20f2bed              # double 0.225718
	.quad	0x3fd4c7219220ff54              # double 0.324654
	.quad	0x3fb260d4562e09ff              # double 0.071790000000000007
	.quad	0x3fef2fdb8fde2ef5              # double 0.97459200000000001
	.quad	0x3feef25c3dee7818              # double 0.96708499999999997
	.quad	0x3fdf225742dcf462              # double 0.48647099999999999
	.quad	0x3fdbf2d3c792d128              # double 0.43669599999999997
	.quad	0x3fe330fcf80dc337              # double 0.59972999999999999
	.quad	0x3fd4c304ccee5abc              # double 0.324403
	.quad	0x3fee9170d62bf120              # double 0.95525400000000004
	.quad	0x3f945f5ad96a6a01              # double 0.019894999999999999
	.quad	0x3fe7788fc9363f57              # double 0.73346699999999998
	.quad	0x3fe80943e1006078              # double 0.75113099999999999
	.quad	0x3fbdde37585be1a8              # double 0.116672
	.quad	0x3fb59ccfaeff5c6c              # double 0.084423999999999999
	.quad	0x3fe065625a682b63              # double 0.51237600000000005
	.quad	0x3fe7afa7221858bc              # double 0.74019199999999996
	.quad	0x3fe2736ac647778e              # double 0.57658900000000002
	.quad	0x3fd341cc532a4980              # double 0.30089100000000002
	.quad	0x3fc64944ed6fda83              # double 0.17411099999999999
	.quad	0x3fdf6f7a0b5ed8d3              # double 0.49117899999999998
	.quad	0x3fe67bacb4289119              # double 0.70259700000000003
	.quad	0x3fe6012599ed7c70              # double 0.68764000000000003
	.quad	0x3fdf3a9f383f0baf              # double 0.48795300000000003
	.quad	0x3fd4b1f687b139c9              # double 0.32336199999999998
	.quad	0x3fca46d82ba5a038              # double 0.205287
	.quad	0x3fdec304ccee5abc              # double 0.480653
	.quad	0x3feebc6a7ef9db23              # double 0.96050000000000002
	.quad	0x3f6b97353b4b2fa9              # double 0.0033679999999999999
	.quad	0x3fe062b27cbf6e3f              # double 0.51204799999999995
	.quad	0x3fe7a76965f5275f              # double 0.73918600000000001
	.quad	0x3fd07d45a5fc7e6b              # double 0.25764599999999999
	.quad	0x3fe01310129cbab6              # double 0.50232699999999997
	.quad	0x3fd342a23bff8a8f              # double 0.30094199999999999
	.quad	0x3fb8af922962cfd9              # double 0.096429000000000001
	.quad	0x3feaa7a20578e5c5              # double 0.83296300000000001
	.quad	0x3fd892ee84ad794a              # double 0.38396799999999998
	.quad	0x3fd76bb55ac03ff7              # double 0.36594900000000002
	.quad	0x3fbb2873bc903ea7              # double 0.106086
	.quad	0x3fcc2ff8ec0f8833              # double 0.22021399999999999
	.quad	0x3fef0897e996312f              # double 0.96979899999999996
	.quad	0x3fcf6049ecb31c22              # double 0.24512600000000001
	.quad	0x3fdca3e39f77292c              # double 0.44750299999999998
	.quad	0x3fedcab3edd8b60f              # double 0.93099399999999999
	.quad	0x3f7b6c3760bf5d79              # double 0.0066950000000000004
	.quad	0x3fefb88a8b08dd1e              # double 0.99127699999999996
	.quad	0x3fd7d823422467be              # double 0.37256699999999998
	.quad	0x3fe549abb01c92de              # double 0.66524300000000003
	.quad	0x3fe21d041cc532a5              # double 0.56604200000000005
	.quad	0x3fde88effe2a3cea              # double 0.47710799999999998
	.quad	0x3fe5c43b2dd377e2              # double 0.68020400000000003
	.quad	0x3fdb823422467be5              # double 0.42982199999999998
	.quad	0x3fd97021d10b1fef              # double 0.39746900000000002
	.quad	0x3fd66ab14ec204f3              # double 0.35026200000000002
	.quad	0x3fc4ecc814d7279a              # double 0.16347600000000001
	.quad	0x3fcb0dd82fd75e20              # double 0.21135999999999999
	.quad	0x3fe618c3b0c4588a              # double 0.690523
	.quad	0x3fe43a83f4eca687              # double 0.63214300000000001
	.quad	0x3fdd7368ad688377              # double 0.46016899999999999
	.quad	0x3feaa6d2674080fa              # double 0.83286400000000005
	.quad	0x3fe9a5bd944aa540              # double 0.80148200000000003
	.quad	0x3fd0293d102bc72e              # double 0.25251699999999999
	.quad	0x3feeb15d701d9f4d              # double 0.95915099999999997
	.quad	0x3fefe8bc169c23b8              # double 0.99716000000000004
	.quad	0x3fe17eeb2d0a2446              # double 0.54674299999999998
	.quad	0x3fe4009b30728e93              # double 0.62507400000000002
	.quad	0x3fe181344806290f              # double 0.54702200000000001
	.quad	0x3fe1e1fc08fa7a85              # double 0.558836
	.quad	0x3fdf130df9bdc6a0              # double 0.48553800000000003
	.quad	0x3fa13bc0a06e9ff1              # double 0.033659000000000001
	.quad	0x3fee71b0468448cf              # double 0.95137799999999995
	.quad	0x3fb35e84f09528f2              # double 0.075661000000000006
	.quad	0x3fea78b7a1c25d07              # double 0.82723599999999997
	.quad	0x3fbf31d2e0e30447              # double 0.121854
	.quad	0x3fc503d9a95421c0              # double 0.16417999999999999
	.quad	0x3fe265082cf52b91              # double 0.57483300000000004
	.quad	0x3fe9641d4b6a619e              # double 0.79347100000000004
	.quad	0x3fd9cb3e5753a3ec              # double 0.40303
	.quad	0x3feeb723ee1bd1ee              # double 0.95985600000000004
	.quad	0x3fdbc6f7a0b5ed8d              # double 0.43401899999999999
	.quad	0x3fe5b9eadd590c0b              # double 0.67894500000000002
	.quad	0x3fd716aceaaf35e3              # double 0.360759
	.quad	0x3fea02fb5d031056              # double 0.81286400000000003
	.quad	0x3fd8097c80841ede              # double 0.375579
	.quad	0x3fda04bc27631b58              # double 0.40653899999999998
	.quad	0x3feab7457c0b1359              # double 0.83487199999999995
	.quad	0x3fd8533b10774688              # double 0.38007999999999997
	.quad	0x3fdef1ae2da554b9              # double 0.48350100000000001
	.quad	0x3fa5b6805a2d7300              # double 0.042408000000000001
	.quad	0x3fe32f2f9873ffac              # double 0.59950999999999999
	.quad	0x3fece1d4306e5cd5              # double 0.90256700000000001
	.quad	0x3fe95dbdb5d89481              # double 0.79269299999999998
	.quad	0x3fc685a0be510907              # double 0.175953
	.quad	0x3fe0993d5347a5b1              # double 0.518706
	.quad	0x3fe3a5f202107b78              # double 0.61400699999999997
	.quad	0x3fe9cf6dfc5cdd51              # double 0.80657100000000004
	.quad	0x3fdbaa3ad18d25ee              # double 0.43226500000000001
	.quad	0x3fdf02cd39da1661              # double 0.48454599999999998
	.quad	0x3fdbf5ad96a6a012              # double 0.43686999999999998
	.quad	0x3fc78cb07d0aed9a              # double 0.18398100000000001
	.quad	0x3feadef416bdb1a7              # double 0.83971600000000002
	.quad	0x3fc100d5e8d54110              # double 0.13283800000000001
	.quad	0x3fe1235d67ba237d              # double 0.53556700000000002
	.quad	0x3fe1a92e62131a8f              # double 0.551902
	.quad	0x3feafd3d4280ae10              # double 0.84341299999999997
	.quad	0x3fe32036006d0d4a              # double 0.59768200000000005
	.quad	0x3fe36f32bdc26dce              # double 0.60732399999999997
	.quad	0x3fecd069a4df47fa              # double 0.90044100000000005
	.quad	0x3fe7c99285a921cd              # double 0.74335600000000002
	.quad	0x3fcd17a46173b85f              # double 0.22728400000000001
	.quad	0x3fde2c01e68a0d35              # double 0.47143600000000002
	.quad	0x3fbd5af294dd7236              # double 0.11466899999999999
	.quad	0x3fde0aaeafab53d6              # double 0.46940199999999999
	.quad	0x3fdbfe8ee6b8305e              # double 0.43741200000000002
	.quad	0x3fea3cd35a858794              # double 0.81992500000000001
	.quad	0x3fdf28f190d173fb              # double 0.48687399999999997
	.quad	0x3feac9a77e5eaab0              # double 0.83711599999999997
	.quad	0x3fefd1654d61b2a2              # double 0.99431099999999994
	.quad	0x3fe604cf0739b025              # double 0.688087
	.quad	0x3fea762d83c6c97e              # double 0.82692600000000005
	.quad	0x3fe4b2fec56d5cfb              # double 0.64685000000000004
	.quad	0x3fa9efd86a8fc0d3              # double 0.050658000000000002
	.quad	0x3fddceb78897e996              # double 0.46574199999999999
	.quad	0x3fde415f45e0b4e1              # double 0.47273999999999999
	.quad	0x3fdce9813879c411              # double 0.45175199999999999
	.quad	0x3fcb939a7c17a893              # double 0.21544199999999999
	.quad	0x3fe7512ec6bce853              # double 0.72865999999999997
	.quad	0x3fdd893faf42784b              # double 0.46150200000000002
	.quad	0x3fd31a6937d1fe65              # double 0.298487
	.quad	0x3fe561975f2cb641              # double 0.66816299999999995
	.quad	0x3fdf8ed5f138bce0              # double 0.493093
	.quad	0x3fd16312f4cf4a56              # double 0.27167200000000002
	.quad	0x3fd2003ab862b27d              # double 0.28126400000000001
	.quad	0x3fed3d640e9d51b5              # double 0.913744
	.quad	0x3fefa3fcc9ea9a3d              # double 0.98876799999999998
	.quad	0x3fc175fb2edfe75c              # double 0.13641300000000001
	.quad	0x3feeca2120e1f7d7              # double 0.96217399999999997
	.quad	0x3fd1dd65a14488c6              # double 0.279138
	.quad	0x3fc79103c8e25c81              # double 0.184113
	.quad	0x3fd3f8487b99d452              # double 0.312029
	.quad	0x3faf5275ee99a62f              # double 0.061176000000000001
	.quad	0x3f82dc2b0ea18373              # double 0.0092090000000000001
	.quad	0x3fd09efd86a8fc0d              # double 0.25970399999999999
	.quad	0x3fe2fa9c12f09d8c              # double 0.59309199999999995
	.quad	0x3fe88cb07d0aed9a              # double 0.76717400000000002
	.quad	0x3fea67620ee8d10f              # double 0.82511999999999996
	.quad	0x3fe08ca1cef240fb              # double 0.51716700000000004
	.quad	0x3fc68aac96cc5fc0              # double 0.17610700000000001
	.quad	0x3fef2ca57a786c22              # double 0.97419999999999995
	.quad	0x3fe62d46f587d6f9              # double 0.69302699999999995
	.quad	0x3fd1a05143bf7271              # double 0.27540999999999999
	.quad	0x3fdd3471f79420b4              # double 0.45632600000000001
	.quad	0x3faa1dda059a73b4              # double 0.051008999999999999
	.quad	0x3fdecf0b6b6e0d24              # double 0.48138700000000001
	.quad	0x3fe6c34c1a8ac5c1              # double 0.71133999999999997
	.quad	0x3fd7cdee34fc610f              # double 0.371944
	.quad	0x3fe37adf2ecf2064              # double 0.60874899999999998
	.quad	0x3fede0114d2f5dbc              # double 0.93360200000000004
	.quad	0x3feb4f70153bd167              # double 0.85344699999999996
	.quad	0x3fe9e277c45cbbc3              # double 0.80889500000000003
	.quad	0x3feac2374794ea07              # double 0.83620799999999995
	.quad	0x3f6700cd855970b5              # double 0.0028080000000000002
	.quad	0x3fe4d32830a0b1bc              # double 0.65077600000000002
	.quad	0x3fd4c14c660a2014              # double 0.32429799999999998
	.quad	0x3fc67cbf6e3f78bc              # double 0.175682
	.quad	0x3fef462a1b5c7cd9              # double 0.97731500000000004
	.quad	0x3fc931876188b114              # double 0.196824
	.quad	0x3fd133d29563a9f4              # double 0.26878800000000003
	.quad	0x3fc79dd3bafd9770              # double 0.184504
	.quad	0x3feb4f91a32b12d3              # double 0.85346299999999997
	.quad	0x3fd6ec3547e06962              # double 0.35816700000000001
	.quad	0x3fd9c31df761cbcd              # double 0.402534
	.quad	0x3fb3152f3c2dadb8              # double 0.074541999999999997
	.quad	0x3fa844f1a1986b9c              # double 0.047400999999999999
	.quad	0x3fe37b0f6ad70e6f              # double 0.60877199999999998
	.quad	0x3fdd025bfad29995              # double 0.45326899999999998
	.quad	0x3fc2332f01754b06              # double 0.14218700000000001
	.quad	0x3fe121272c94b381              # double 0.53529700000000002
	.quad	0x3fcc9ae4f3343fa3              # double 0.22347700000000001
	.quad	0x3fd3b8a5ce5b4246              # double 0.308145
	.quad	0x3fe81b691212513b              # double 0.75334599999999996
	.quad	0x3fe0bab430f49492              # double 0.52279100000000001
	.quad	0x3fe0a450acc0bdcb              # double 0.52005800000000002
	.quad	0x3fcad2b2bfdb4cc2              # double 0.20955499999999999
	.quad	0x3fdf85015c209247              # double 0.49249300000000001
	.quad	0x3fe8295421c04428              # double 0.75504499999999997
	.quad	0x3fba7a85015c2092              # double 0.103432
	.quad	0x3fe5f60bf5d78812              # double 0.68628500000000003
	.quad	0x3fb10374ff865d7d              # double 0.066459000000000004
	.quad	0x3fe005faebc408d9              # double 0.50073000000000001
	.quad	0x3fd85a5fc7e6b3ff              # double 0.38051600000000002
	.quad	0x3fec7f583a53b8e5              # double 0.89054500000000003
	.quad	0x3fe6c70435efa616              # double 0.71179400000000004
	.quad	0x3fafeb4a66559f6f              # double 0.062342000000000002
	.quad	0x3fdce79aae6c8f75              # double 0.45163599999999998
	.quad	0x3fd8008e9b38d60a              # double 0.37503399999999998
	.quad	0x3fe7fcf5f4e4430b              # double 0.74962899999999999
	.quad	0x3fe907c6327ed84d              # double 0.78219899999999998
	.quad	0x3fd16555c52e72da              # double 0.27181
	.quad	0x3fd8c7607c4199fe              # double 0.38716899999999999
	.quad	0x3fe0dd00f776c482              # double 0.52697799999999995
	.quad	0x3fecaad3e920c06a              # double 0.89585300000000001
	.quad	0x3fdcca70d1fa3337              # double 0.44985599999999998
	.quad	0x3fc8ed0b30b5aa71              # double 0.19473399999999999
	.quad	0x3fd2383f0bae89ec              # double 0.28468300000000002
	.quad	0x3f6e18efbb0e5e68              # double 0.0036740000000000002
	.quad	0x3fdfcb5781c714fd              # double 0.49678600000000001
	.quad	0x3fccdddf43c7d5ed              # double 0.225521
	.quad	0x3fdf0c069e7fb268              # double 0.48510900000000001
	.quad	0x3fe768c26138fffc              # double 0.73153800000000002
	.quad	0x3feeaa38b8ae31d7              # double 0.95827899999999999
	.quad	0x3fe039c0ebedfa44              # double 0.50705
	.quad	0x3fe77bd6a593a2e0              # double 0.73386700000000004
	.quad	0x3fe5d9ba1b1960fa              # double 0.68282799999999999
	.quad	0x3fc1e56473471f79              # double 0.13981299999999999
	.quad	0x3fd24e8b7e4de3b9              # double 0.28604400000000002
	.quad	0x3f956d19dece5711              # double 0.020924000000000002
	.quad	0x3feb1a75cd0bb6ed              # double 0.84697999999999996
	.quad	0x3fd638759253543b              # double 0.347196
	.quad	0x3fb38887229e9079              # double 0.076301999999999995
	.quad	0x3fdfc9c4da9003ef              # double 0.49669000000000002
	.quad	0x3fdb4ee392e1ef74              # double 0.42669000000000001
	.quad	0x3fb005814940bbb2              # double 0.062584000000000001
	.quad	0x3fd5e7c8d195896a              # double 0.34227200000000002
	.quad	0x3fc9c62a1b5c7cd9              # double 0.20136000000000001
	.quad	0x3f94eb13dfb0d520              # double 0.020428000000000002
	.quad	0x3fe383d145d85165              # double 0.60984099999999997
	.quad	0x3fa7f06705c896dd              # double 0.046755999999999999
	.quad	0x3fe93d188f42fe82              # double 0.78870799999999996
	.quad	0x3fdba76102795704              # double 0.432091
	.quad	0x3fe99670196d8f50              # double 0.79961400000000005
	.quad	0x3fdf3a4b5568e821              # double 0.48793300000000001
	.quad	0x3fe1443f5f91600f              # double 0.53958099999999998
	.quad	0x3fb70bd017dae819              # double 0.090024000000000007
	.quad	0x3fe4a441fea8112c              # double 0.64505100000000004
	.quad	0x3fd430b178b37004              # double 0.31547199999999997
	.quad	0x3fe1f0995aaf78ff              # double 0.56062000000000001
	.quad	0x3fb0055fbb517a46              # double 0.062581999999999999
	.quad	0x3fe83d944aa53fc0              # double 0.757517
	.quad	0x3f886f47b677f6b2              # double 0.011931000000000001
	.quad	0x3fe5f39b024f6599              # double 0.68598700000000001
	.quad	0x3fd01bc126a65cf6              # double 0.25169399999999997
	.quad	0x3fe3e9a6f826edab              # double 0.62227200000000005
	.quad	0x3fef369984a0e411              # double 0.97541500000000003
	.quad	0x3fc223422467be55              # double 0.14170099999999999
	.quad	0x3fdbd3f1843c3a43              # double 0.434811
	.quad	0x3fedd8127b2cc708              # double 0.93262599999999996
	.quad	0x3fe542efd438d1d9              # double 0.66442100000000004
	.quad	0x3fc9d5885d31337f              # double 0.20182900000000001
	.quad	0x3fcd865d7cb2d906              # double 0.23066300000000001
	.quad	0x3fdfb8130164840e              # double 0.49560999999999999
	.quad	0x3fc0fb2aae297397              # double 0.13266500000000001
	.quad	0x3fe7e4cf8d716d2b              # double 0.74668100000000004
	.quad	0x3fd213ec460ed80a              # double 0.28246599999999999
	.quad	0x3fefd0a67620ee8d              # double 0.99421999999999999
	.quad	0x3fee765ba6efc372              # double 0.95194800000000002
	.quad	0x3fd317763e4abe6a              # double 0.29830699999999999
	.quad	0x3febd29563a9f384              # double 0.869456
	.quad	0x3fb4b32ce89656ef              # double 0.080859
	.quad	0x3feb694898f605ab              # double 0.85660199999999997
	.quad	0x3fdb09bb6aa4b988              # double 0.42246899999999998
	.quad	0x3fee80cd855970b5              # double 0.95322300000000004
	.quad	0x3fe9150dae3e6c4c              # double 0.78381999999999996
	.quad	0x3fe4a137f38c5437              # double 0.64468000000000003
	.quad	0x3fd0f45e0b4e11dc              # double 0.26491500000000001
	.quad	0x3fec265061416378              # double 0.87967700000000004
	.quad	0x3fe229f16b11c6d2              # double 0.56762000000000001
	.quad	0x3fcdbaa9b499d020              # double 0.23225899999999999
	.quad	0x3fe0f6e6106ab14f              # double 0.53013900000000003
	.quad	0x3faa8b08dd1e53a8              # double 0.051841999999999999
	.quad	0x3fe136049ecb31c2              # double 0.53784399999999999
	.quad	0x3fed2934acaff6d3              # double 0.91127999999999998
	.quad	0x3fec3b83cf2cf95d              # double 0.88226499999999997
	.quad	0x3fd8892ab68cef67              # double 0.38337199999999999
	.quad	0x3feb4f850df15a4b              # double 0.85345700000000002
	.quad	0x3fbcd413122b7baf              # double 0.112611
	.quad	0x3fe8dd69d30270f4              # double 0.77702800000000005
	.quad	0x3fda33269df97aab              # double 0.40937200000000001
	.quad	0x3f978f68be2f7b18              # double 0.023008000000000001
	.quad	0x3fe07ef5a964e8b8              # double 0.51549800000000001
	.quad	0x3fc6b51bd61f5be6              # double 0.177402
	.quad	0x3fe88867ad8e4324              # double 0.76665099999999997
	.quad	0x3fb00b9991361dc9              # double 0.062676999999999997
	.quad	0x3fe9845564b662fe              # double 0.797404
	.quad	0x3fca7fc32ebe596d              # double 0.20702400000000001
	.quad	0x3fe61aed56b00ffe              # double 0.69078700000000004
	.quad	0x3fe329307af20ea6              # double 0.59877800000000003
	.quad	0x3fcde27179bfdf7f              # double 0.23347300000000001
	.quad	0x3fede5492ff4ba52              # double 0.93423900000000004
	.quad	0x3fdd53b0813cab82              # double 0.458233
	.quad	0x3fce35158b827fa2              # double 0.23599500000000001
	.quad	0x3fe8ea960b6f9fcb              # double 0.77863599999999999
	.quad	0x3fd4ed634549b62c              # double 0.32698899999999997
	.quad	0x3fbd116a8b8f14db              # double 0.113547
	.quad	0x3fee4ca4f440af1d              # double 0.94685600000000003
	.quad	0x3fe3d8a32f44912a              # double 0.62019500000000005
	.quad	0x3fe7ef416bdb1a6d              # double 0.74795599999999995
	.quad	0x3fef2311e85fd04a              # double 0.97303099999999998
	.quad	0x3fe3856a37ac3eb8              # double 0.61003600000000002
	.quad	0x3fed81f31f46ed24              # double 0.92211299999999996
	.quad	0x3fe0c4a83b1d0c80              # double 0.52400599999999997
	.quad	0x3fee20a30db6a1e8              # double 0.94148399999999998
	.quad	0x3fe544998d045fe1              # double 0.66462399999999999
	.quad	0x3fe9da469d7342ee              # double 0.80789500000000003
	.quad	0x3fc956b873797460              # double 0.197959
	.quad	0x3fd5709741d084e8              # double 0.33499699999999999
	.quad	0x3f93300de4c51117              # double 0.018738000000000001
	.quad	0x3fd01f81a5870da6              # double 0.25192300000000001
	.quad	0x3fde9fb1e18efbb1              # double 0.47849700000000001
	.quad	0x3fe1d612c6ac215c              # double 0.55738200000000004
	.quad	0x3feb4dee34fc610f              # double 0.85326299999999999
	.quad	0x3fd7f29d40ee06d9              # double 0.37418299999999999
	.quad	0x3fd23bc0a06e9ff1              # double 0.28489700000000001
	.quad	0x3fd333b5393250b5              # double 0.30003099999999999
	.quad	0x3fc405c4651f3e8a              # double 0.15642600000000001
	.quad	0x3fd179c4113c6866              # double 0.27305699999999999
	.quad	0x3fd3ddf43c7d5ed0              # double 0.31042199999999998
	.quad	0x3f7e29b6b2af1455              # double 0.0073639999999999999
	.quad	0x3f555d5f56a7ac82              # double 0.001304
	.quad	0x3faf8c21e1d2178f              # double 0.061615999999999997
	.quad	0x3fd02a0ec7432010              # double 0.25256699999999999
	.quad	0x3fe179a8cdea033e              # double 0.54610099999999995
	.quad	0x3fe94b5350092ccf              # double 0.79044499999999995
	.quad	0x3fdfe1693c03bc4d              # double 0.49813299999999999
	.quad	0x3fe0399f5dfeb8d8              # double 0.50703399999999998
	.quad	0x3fefa7807789a459              # double 0.98919699999999999
	.quad	0x3fddc61d8622c450              # double 0.46521699999999999
	.quad	0x3fe9ee2a80064a9d              # double 0.81032300000000002
	.quad	0x3fd7d955714b9cb7              # double 0.37264000000000003
	.quad	0x3fdd3e707e175d14              # double 0.45693600000000001
	.quad	0x3fd4524bfd2e9468              # double 0.317523
	.quad	0x3fee45f17bd8be73              # double 0.94603800000000005
	.quad	0x3fdfea67e846a5d7              # double 0.49868200000000001
	.quad	0x3fd210b1feeb2d0a              # double 0.28226899999999999
	.quad	0x3fdfba5e353f7cee              # double 0.49575000000000002
	.quad	0x3fc9759ee88df373              # double 0.198902
	.quad	0x3fdb14d2f5dbb9d0              # double 0.42314600000000002
	.quad	0x3fe3dddb1209edc0              # double 0.62083200000000005
	.quad	0x3fe2cbb1af3a14cf              # double 0.58736500000000003
	.quad	0x3fef506fef7c243e              # double 0.97856900000000002
	.quad	0x3fe2096bb98c7e28              # double 0.56364999999999998
	.quad	0x3fe18f861a60d456              # double 0.54876999999999998
	.quad	0x3fe169878316a055              # double 0.54413199999999995
	.quad	0x3fe56a11ec918e32              # double 0.66919799999999996
	.quad	0x3fe7ac6045baf534              # double 0.73979200000000001
	.quad	0x3fea6d7c6fbd273d              # double 0.82586499999999996
	.quad	0x3feee175d13d74d6              # double 0.96502200000000005
	.quad	0x3fb71ae2da554b8c              # double 0.090254000000000001
	.quad	0x3fcf17bd8be7296f              # double 0.24291199999999999
	.quad	0x3fce5100a393ee5f              # double 0.236847
	.quad	0x3fea7e1fc08fa7a8              # double 0.82789599999999997
	.quad	0x3fb5204af922962d              # double 0.082524
	.quad	0x3fa16b76709fa54c              # double 0.034022999999999998
	.quad	0x3fcee0114d2f5dbc              # double 0.24121300000000001
	.quad	0x3fea47735c182ecb              # double 0.82122200000000001
	.quad	0x3fe67455a7d24181              # double 0.70170100000000002
	.quad	0x3fc47e49b1fab96f              # double 0.160104
	.quad	0x3fe81973d9ec7000              # double 0.75310699999999997
	.quad	0x3fc4b862b27cbf6e              # double 0.16187699999999999
	.quad	0x3fd12dcf4623d0c0              # double 0.26842100000000002
	.quad	0x3fe2eb7cbb3c8191              # double 0.59124600000000005
	.quad	0x3fc0431bde82d7b6              # double 0.12704799999999999
	.quad	0x3fa76f08cc575c07              # double 0.045768999999999997
	.quad	0x3fd5b2f23033a472              # double 0.33904699999999999
	.quad	0x3fe58ab4fa48301a              # double 0.67318199999999995
	.quad	0x3fd7983947496aad              # double 0.36866599999999999
	.quad	0x3fe224f227d028a2              # double 0.56701000000000001
	.quad	0x3fe2f4f50a02b841              # double 0.59240199999999998
	.quad	0x3fcb817b95a29414              # double 0.214889
	.quad	0x3fe49fcb0c026cc2              # double 0.64450600000000002
	.quad	0x3fe810364388ebcc              # double 0.75197899999999995
	.quad	0x3fefd4e4c942d491              # double 0.99473800000000001
	.quad	0x3febeb5b2d4d4025              # double 0.87248000000000003
	.quad	0x3fd0fdf7e80389f8              # double 0.26550099999999999
	.quad	0x3fe975c0767d34df              # double 0.795624
	.quad	0x3febab2bfdb4cc25              # double 0.864645
	.quad	0x3fe2146c332f0175              # double 0.56499299999999997
	.quad	0x3f967be553ac4f7f              # double 0.021957000000000001
	.quad	0x3fe83a2be0589acc              # double 0.75710100000000002
	.quad	0x3fd6afe60c38f367              # double 0.35448600000000002
	.quad	0x3fe720dbad3a604e              # double 0.72276099999999999
	.quad	0x3fa3f9830e3cd9a5              # double 0.039012999999999999
	.quad	0x3fdd712e40852b4e              # double 0.46003300000000003
	.quad	0x3fdc5d80e496edee              # double 0.44320700000000002
	.quad	0x3fe1b4267839cd81              # double 0.55324099999999998
	.quad	0x3fce68661ae70c13              # double 0.23756099999999999
	.quad	0x3fdc6d655e28aa43              # double 0.44417699999999999
	.quad	0x3fe5f5d9a0f0a5f0              # double 0.68626100000000001
	.quad	0x3fb68155d5f56a7b              # double 0.087911000000000003
	.quad	0x3fdaa148ba83f4ed              # double 0.41609400000000002
	.quad	0x3fce79f666234a88              # double 0.238097
	.quad	0x3fcf6616b54e2b06              # double 0.24530299999999999
	.quad	0x3faaa5614df8b157              # double 0.052042999999999999
	.quad	0x3fe1ff023e9ea140              # double 0.56237899999999996
	.quad	0x3fec7b6134ce3de6              # double 0.89006099999999999
	.quad	0x3fd095464dc22ab2              # double 0.25911099999999998
	.quad	0x3fb6806af46aa088              # double 0.087897000000000003
	.quad	0x3fedff7be121ee67              # double 0.93743699999999996
	.quad	0x3fc0bb44e50c5eb3              # double 0.130715
	.quad	0x3fd39d909f1f1498              # double 0.30649199999999999
	.quad	0x3fdd0192a737110e              # double 0.45322099999999998
	.quad	0x3fd2a4bdba0a5269              # double 0.29130499999999998
	.quad	0x3fde028e4fb97bb7              # double 0.46890599999999999
	.quad	0x3fe9a0b3d4ae429e              # double 0.800867
	.quad	0x3fb094e5d5b24e9c              # double 0.064771999999999996
	.quad	0x3fe7df30e7ff583a              # double 0.74599499999999996
	.quad	0x3fa083dbc23315d7              # double 0.032256
	.quad	0x3fd3c0bdcad14a0a              # double 0.308639
	.quad	0x3fe998b502ababeb              # double 0.79989100000000002
	.quad	0x3fe5c4a1f080303c              # double 0.680253
	.quad	0x3fdb8055fbb517a4              # double 0.42970799999999998
	.quad	0x3fea224edf612407              # double 0.81668799999999997
	.quad	0x3fca1919ac79702e              # double 0.20389099999999999
	.quad	0x3fdda771c970f7ba              # double 0.46334500000000001
	.quad	0x3fc5c8c0ce91c8eb              # double 0.17018900000000001
	.quad	0x3fc4ff4ba51a005c              # double 0.16404099999999999
	.quad	0x3fe945132f87ad08              # double 0.789682
	.quad	0x3fdae7c06e19b90f              # double 0.42039500000000002
	.quad	0x3fd82e9468017119              # double 0.37784299999999998
	.quad	0x3fe05b9a5a89b952              # double 0.51118200000000003
	.quad	0x3fe654de7ea5f84d              # double 0.69786000000000004
	.quad	0x3fcb572de43ed95a              # double 0.21359800000000001
	.quad	0x3fe49abb01c92ddc              # double 0.64388800000000002
	.quad	0x3fdb678c0053e2d6              # double 0.42819499999999999
	.quad	0x3fe8bb1d0c804103              # double 0.772841
	.quad	0x3fed65881a1554fc              # double 0.91864400000000001
	.quad	0x3fec7bbb62413db8              # double 0.89010400000000001
	.quad	0x3fe41146e4c0df59              # double 0.62710900000000003
	.quad	0x3fdd72b884406c01              # double 0.46012700000000001
	.quad	0x3fd7afe60c38f367              # double 0.37011100000000002
	.quad	0x3fe52cc4ef88b978              # double 0.66171500000000005
	.quad	0x3fc5b8887229e908              # double 0.16969400000000001
	.quad	0x3fbe77b395c42203              # double 0.11901399999999999
	.quad	0x3fe3772b4528283d              # double 0.60829699999999998
	.quad	0x3fed5a6e75ff609e              # double 0.91728900000000002
	.quad	0x3fea80bcbe61cfff              # double 0.82821500000000003
	.quad	0x3fe763736cdf266c              # double 0.73089000000000004
	.quad	0x3fd1b1960fa15db3              # double 0.27646399999999999
	.quad	0x3fe4658a32f44913              # double 0.63739500000000004
	.quad	0x3fe7c4b6e935b91f              # double 0.74276299999999995
	.quad	0x3fdf32b12d3415b1              # double 0.48746899999999999
	.quad	0x3fe3b64388ebcc6c              # double 0.61599899999999996
	.quad	0x3fd74ba0e8427419              # double 0.36399100000000001
	.quad	0x3fe850f40e5a35d6              # double 0.75988199999999995
	.quad	0x3fe19b77c02afddb              # double 0.55022800000000005
	.quad	0x3fe310129cbab64a              # double 0.59571200000000002
	.quad	0x3fef1d712a0ec743              # double 0.97234399999999998
	.quad	0x3fe782e44b6e935c              # double 0.73472800000000005
	.quad	0x3feee52deca2552a              # double 0.965476
	.quad	0x3fe3c62e4d1a6506              # double 0.61794199999999999
	.quad	0x3fde4373f316e371              # double 0.47286699999999998
	.quad	0x3fe72c81d3aa36a0              # double 0.72418300000000002
	.quad	0x3fcf4aba38759253              # double 0.24446799999999999
	.quad	0x3feedba2be0589ad              # double 0.96431100000000002
	.quad	0x3fed318dac258d58              # double 0.91229899999999997
	.quad	0x3fe1d56b00ffda40              # double 0.55730199999999996
	.quad	0x3fc6e58a32f44913              # double 0.17888000000000001
	.quad	0x3fea74aba3875925              # double 0.82674199999999998
	.quad	0x3fe442acb85a4f01              # double 0.63313900000000001
	.quad	0x3feeedb7281fd9ba              # double 0.96651799999999999
	.quad	0x3fe8ef8ceb356da0              # double 0.77924199999999999
	.quad	0x3fb0db59578a2a91              # double 0.065847000000000003
	.quad	0x3fef494b380cb6c8              # double 0.97769700000000003
	.quad	0x3fde7e414e7ee914              # double 0.47645599999999999
	.quad	0x3fe1d7e889c1b542              # double 0.55760600000000005
	.quad	0x3fcafeb4a66559f7              # double 0.210898
	.quad	0x3fb18288051c9f73              # double 0.068398
	.quad	0x3fea85b5b70691ea              # double 0.82882199999999995
	.quad	0x3fcf4306e5cd4ed3              # double 0.24423300000000001
	.quad	0x3f8aa4766c6de764              # double 0.013009
	.quad	0x3fe9de43ed959a31              # double 0.80838200000000004
	.quad	0x3feef06d50657321              # double 0.96684899999999995
	.quad	0x3fdf06a2b1704ff4              # double 0.48477999999999999
	.quad	0x3fef133e35c5b4ab              # double 0.97109900000000004
	.quad	0x3fe7a11a975afaf8              # double 0.73841599999999996
	.quad	0x3fdf59d12cadddf4              # double 0.48985699999999999
	.quad	0x3fe2efe931876189              # double 0.59178600000000003
	.quad	0x3fedacb4289118c2              # double 0.92733200000000005
	.quad	0x3fcbb2fec56d5cfb              # double 0.21640000000000001
	.quad	0x3fd40f0e90bc7b46              # double 0.313419
	.quad	0x3fe8a13c254a3c64              # double 0.76968199999999997
	.quad	0x3fef6158750c1b97              # double 0.98063299999999997
	.quad	0x3fe3f2a9d627bf62              # double 0.62337200000000004
	.quad	0x3fd6f1b691212514              # double 0.35850300000000002
	.quad	0x3fd8924af0bf1a5d              # double 0.38392900000000002
	.quad	0x3fee46c54bcf0b6b              # double 0.94613899999999995
	.quad	0x3fe3e15011904b3c              # double 0.62125399999999997
	.quad	0x3fec1b8887229e90              # double 0.87836099999999995
	.quad	0x3fb74256bca5375d              # double 0.090856000000000006
	.quad	0x3fdda8eb463497b7              # double 0.46343499999999999
	.quad	0x3fde3ca7503b81b6              # double 0.47245199999999998
	.quad	0x3fec0049667b5f1c              # double 0.875035
	.quad	0x3fbd331a08bfc222              # double 0.114061
	.quad	0x3fe137f38c5436b9              # double 0.53808
	.quad	0x3fee0a02b841248d              # double 0.93872199999999995
	.quad	0x3fcd210385c67dfe              # double 0.22756999999999999
	.quad	0x3fd1cf63800218df              # double 0.278283
	.quad	0x3fe1c0053e2d6239              # double 0.55469000000000002
	.quad	0x3fa9908e581cf788              # double 0.049931000000000003
	.quad	0x3fb62c881e4712e4              # double 0.086617
	.quad	0x3fd0a4052d666a98              # double 0.26001099999999999
	.quad	0x3fb4be40420f6f09              # double 0.081028000000000003
	.quad	0x3fdca37ac3eb7cbb              # double 0.44747799999999999
	.quad	0x3fefdf7c6759ab6d              # double 0.99603099999999999
	.quad	0x3fb3ff9b56323bbc              # double 0.078118999999999994
	.quad	0x3fd9cc814d72799a              # double 0.40310699999999999
	.quad	0x3fd70f776c4827b7              # double 0.360319
	.quad	0x3fe0134ce3de614a              # double 0.50235600000000002
	.quad	0x3fedb05faebc408e              # double 0.92778000000000005
	.quad	0x3fe2abdc26dce39b              # double 0.58347899999999997
	.quad	0x3fd5ff04577d9557              # double 0.34369
	.quad	0x3fd223d9231c64bb              # double 0.28343800000000002
	.quad	0x3fdeb302f72b4528              # double 0.47967599999999999
	.quad	0x3fd1cc8de2ac3223              # double 0.27811000000000002
	.quad	0x3febf10ecb74ddf8              # double 0.87317599999999995
	.quad	0x3fd9da272862f599              # double 0.40394000000000002
	.quad	0x3fe2a3c21187e7c0              # double 0.58248999999999995
	.quad	0x3fe1fc6759ab6d01              # double 0.56206100000000003
	.quad	0x3fc5a2be0589acbd              # double 0.16902900000000001
	.quad	0x3fb3fdb4cc250721              # double 0.078090000000000007
	.quad	0x3fd0548ecd8dbced              # double 0.25516100000000003
	.quad	0x3fd2e53a81dc0db2              # double 0.29524099999999998
	.quad	0x3fe52e3608d0891a              # double 0.66189100000000001
	.quad	0x3fef6a0fd3b29a1c              # double 0.98169700000000004
	.quad	0x3fe1e7903211cb04              # double 0.55951700000000004
	.quad	0x3fe111b823c85c25              # double 0.53341300000000003
	.quad	0x3fe0ae019b0ab2e1              # double 0.52124099999999995
	.quad	0x3fed8d1526d8b1dd              # double 0.92347199999999996
	.quad	0x3f96de33269df97b              # double 0.022332000000000001
	.quad	0x3fe6ffd82773e250              # double 0.71873100000000001
	.quad	0x3fd34ddb5525cc42              # double 0.30162699999999998
	.quad	0x3feb3e81450efdca              # double 0.85138000000000003
	.quad	0x3fe08d90e23af31b              # double 0.51728099999999999
	.quad	0x3fc9394317acc4f0              # double 0.19706000000000001
	.quad	0x3feb12ff4ba51a00              # double 0.84606899999999996
	.quad	0x3feca858793dd97f              # double 0.89554999999999996
	.quad	0x3fe066ea854477ff              # double 0.51256299999999999
	.quad	0x3fd3b6fe2e6ea854              # double 0.30804399999999998
	.quad	0x3fecc4da9003eea2              # double 0.89903
	.quad	0x3fdcfca42aed1394              # double 0.45291999999999999
	.quad	0x3fe4eb356da0168b              # double 0.65371199999999996
	.quad	0x3fd16634117f8445              # double 0.27186300000000002
	.quad	0x3fec8bef8ceb356e              # double 0.89208200000000004
	.quad	0x3f80cbaf965b20b8              # double 0.0082009999999999999
	.quad	0x3fa45c78a6dacabc              # double 0.039767999999999998
	.quad	0x3fe519c9d5a187a5              # double 0.65939800000000004
	.quad	0x3fd0333764f11b61              # double 0.25312600000000002
	.quad	0x3fe03356da0168b6              # double 0.50626700000000002
	.quad	0x3f91526d8b1dd5d4              # double 0.016916
	.quad	0x3fe7957abb8800eb              # double 0.73699700000000001
	.quad	0x3fe2542e557de0d6              # double 0.57277599999999995
	.quad	0x3fe2a7f5e84f0953              # double 0.58300300000000005
	.quad	0x3fea143393ab430f              # double 0.81496599999999997
	.quad	0x3fefec2efd438d1e              # double 0.99758100000000005
	.quad	0x3fc5dd54da4ce810              # double 0.170817
	.quad	0x3fd732df505d0fa6              # double 0.36248000000000002
	.quad	0x3fe5fa4a48f96e16              # double 0.68680300000000005
	.quad	0x3fc7f4c2b51bd61f              # double 0.18715699999999999
	.quad	0x3fd677ee4e26d480              # double 0.35106999999999999
	.quad	0x3fe312a0ec743201              # double 0.596024
	.quad	0x3fe1d97b30f8c650              # double 0.55779800000000002
	.quad	0x3fd90520d130df9c              # double 0.39093800000000001
	.quad	0x3fec1bbf0dc768e0              # double 0.87838700000000002
	.quad	0x3fe950f1f57b41c0              # double 0.79113100000000003
	.quad	0x3fd64a3c64345cff              # double 0.34828100000000001
	.quad	0x3fdfde3b8a19c9d6              # double 0.49793900000000002
	.quad	0x3fc5336deb95e5b0              # double 0.165632
	.quad	0x3f717d6b65a9a805              # double 0.0042700000000000004
	.quad	0x3fe8e748e4755ffe              # double 0.77823299999999995
	.quad	0x3fdbad96a6a0125a              # double 0.43247000000000002
	.quad	0x3fe87154003254e7              # double 0.76383400000000001
	.quad	0x3fd4a4ebdd334c5e              # double 0.32256600000000002
	.quad	0x3fb1fa871a3b14a9              # double 0.070229
	.quad	0x3fd7311a543f1c76              # double 0.36237200000000003
	.quad	0x3fca4bba12b5e52a              # double 0.20543600000000001
	.quad	0x3fd0e90795f676ea              # double 0.26422299999999999
	.quad	0x3fdab7e4de3b8a1a              # double 0.41747400000000001
	.quad	0x3fdf966be7afa722              # double 0.49355599999999999
	.quad	0x3fe0bfa6defc7a3a              # double 0.52339500000000005
	.quad	0x3fbd359791819d24              # double 0.11409900000000001
	.quad	0x3fd458c8eef1bac3              # double 0.31791900000000001
	.quad	0x3fede29307af20ea              # double 0.93390799999999996
	.quad	0x3fc9affb04ee7c4a              # double 0.200683
	.quad	0x3f2083dbc23315d7              # double 1.26E-4
	.quad	0x3fd488051c9f72f7              # double 0.32080199999999998
	.quad	0x3fe757342edbb59e              # double 0.72939500000000002
	.quad	0x3fe02f2f9873ffac              # double 0.50575999999999999
	.quad	0x3feb477dd872f33d              # double 0.85247700000000004
	.quad	0x3fd9cb35f3d7d391              # double 0.403028
	.quad	0x3fe14edd48451330              # double 0.54087700000000005
	.quad	0x3fe0003686a4ca4f              # double 0.50002599999999997
	.quad	0x3fd6d7b2031ceaf2              # double 0.35691499999999998
	.quad	0x3feb00ae10492360              # double 0.84383300000000005
	.quad	0x3fd2ddf43c7d5ed0              # double 0.29479699999999998
	.quad	0x3fd3868fd199bb28              # double 0.30508800000000003
	.quad	0x3fdb9620685553ef              # double 0.43103799999999998
	.quad	0x3fecddfeb8d82342              # double 0.90209899999999998
	.quad	0x3fd79f77292c4934              # double 0.36910799999999999
	.quad	0x3fe498fc504816f0              # double 0.643675
	.quad	0x3feb9d5e4a383276              # double 0.86295999999999995
	.quad	0x3fed295421c04428              # double 0.91129499999999997
	.quad	0x3fe77c4e2f37fbf0              # double 0.73392400000000002
	.quad	0x3fe5b005814940bc              # double 0.67773700000000003
	.quad	0x3fe8faca36199781              # double 0.78061400000000003
	.quad	0x3fd5f177a7008a69              # double 0.34286299999999997
	.quad	0x3fd5b089a0275254              # double 0.33889999999999998
	.quad	0x3fe8d2e0e30446b7              # double 0.77574200000000004
	.quad	0x3fc77867f0aa21a7              # double 0.183362
	.quad	0x3fef765fd8adab9f              # double 0.98319999999999996
	.quad	0x3febfd1569f49060              # double 0.87464399999999997
	.quad	0x3fe3fa376922d949              # double 0.62429400000000002
	.quad	0x3fdbbff04577d955              # double 0.43358999999999998
	.quad	0x3fe04e8d972cd7cf              # double 0.50958899999999996
	.quad	0x3fdfaa8650e77920              # double 0.49478299999999997
	.quad	0x3fe07d1569f49060              # double 0.51526899999999998
	.quad	0x3fe27778dd616f87              # double 0.57708400000000004
	.quad	0x3fdf3dfb0d51f81a              # double 0.48815799999999998
	.quad	0x3fee0be2f7b17ce5              # double 0.93895099999999998
	.quad	0x3fce11fd5885d313              # double 0.23492399999999999
	.quad	0x3fcd930be0ded289              # double 0.23105000000000001
	.quad	0x3febc7fdc5931ca8              # double 0.86816300000000002
	.quad	0x3fd0f9a49c2c1b11              # double 0.265237
	.quad	0x3fe957f950b955f8              # double 0.79198900000000005
	.quad	0x3fe8b6177ea1c68f              # double 0.77222800000000003
	.quad	0x3fe7aba16e7a311f              # double 0.73970100000000005
	.quad	0x3fe6ca686e7e62dc              # double 0.71220799999999995
	.quad	0x3fdad1fa333764f1              # double 0.41906599999999999
	.quad	0x3fcc31f8a0902de0              # double 0.220275
	.quad	0x3fe483d9a95421c0              # double 0.64109499999999997
	.quad	0x3fdebf8fcd67fd3f              # double 0.48044199999999998
	.quad	0x3fe0db78cc9a77e6              # double 0.52679100000000001
	.quad	0x3fc623d9231c64bb              # double 0.17296900000000001
	.quad	0x3fd94c271fff79c8              # double 0.39527299999999999
	.quad	0x3fe633e5753a3ec0              # double 0.69383499999999998
	.quad	0x3fe17e86833c6003              # double 0.54669500000000004
	.quad	0x3fc2ad6883771865              # double 0.14591699999999999
	.quad	0x3feb4d63cb817332              # double 0.85319699999999998
	.quad	0x3fcc13f4a98aa865              # double 0.219359
	.quad	0x3fc6046412cf0f9d              # double 0.172009
	.quad	0x3fb14a7f8012dfd7              # double 0.067543000000000006
	.quad	0x3fe8bbd7b2031ceb              # double 0.77293000000000001
	.quad	0x3fc9d09e12a51e32              # double 0.201679
	.quad	0x3fec52999567dbb1              # double 0.88508299999999995
	.quad	0x3f708919ef954eb1              # double 0.0040369999999999998
	.quad	0x3fe5d43aeab7995f              # double 0.68215700000000001
	.quad	0x3fd29ed3953dea46              # double 0.29094399999999998
	.quad	0x3fe291819d2391d5              # double 0.58026199999999994
	.quad	0x3fecd86013660e52              # double 0.90141300000000002
	.quad	0x3fda89df1172ef0b              # double 0.41466500000000001
	.quad	0x3fe87c69728a6117              # double 0.76518699999999995
	.quad	0x3fe4f3cb3e5753a4              # double 0.65476000000000001
	.quad	0x3fe8831487768167              # double 0.76600100000000004
	.quad	0x3fc1bed30f062d41              # double 0.13863600000000001
	.quad	0x3fe45846e8f29d41              # double 0.63577600000000001
	.quad	0x3fbf3ade225fa659              # double 0.121992
	.quad	0x3fd4e1c15097c808              # double 0.32627899999999999
	.quad	0x3fef47991bc55864              # double 0.97748999999999997
	.quad	0x3feb3992c8c50050              # double 0.85077800000000003
	.quad	0x3febb6d00b45ae60              # double 0.866066
	.quad	0x3fe02b4528283d36              # double 0.50528200000000001
	.quad	0x3fd324e592967019              # double 0.29912699999999998
	.quad	0x3fe84093d9663843              # double 0.75788299999999997
	.quad	0x3fdfc34c1a8ac5c1              # double 0.49629499999999999
	.quad	0x3fe58867ad8e4324              # double 0.67290099999999997
	.quad	0x3fdbc89f40a2877f              # double 0.43412000000000001
	.quad	0x3fc7c621b7e0ac7e              # double 0.18573400000000001
	.quad	0x3fe3f2ba9d1f6018              # double 0.62338000000000005
	.quad	0x3fe883c297bfa4c6              # double 0.76608399999999999
	.quad	0x3fd743e100607810              # double 0.36351800000000001
	.quad	0x3fc7358f2e05ccc9              # double 0.18132200000000001
	.quad	0x3fdd8e10cf5b1c86              # double 0.46179599999999998
	.quad	0x3fda8f29d40ee06e              # double 0.41498800000000002
	.quad	0x3fe83cff64cf8d71              # double 0.75744599999999995
	.quad	0x3fcef9873ffac1d3              # double 0.24199000000000001
	.quad	0x3fdb98b71b8aa002              # double 0.43119600000000002
	.quad	0x3fe7a4c1ebc83a97              # double 0.73886200000000002
	.quad	0x3fd09b280f12c27a              # double 0.25946999999999998
	.quad	0x3fc6a8e2e2b8c75c              # double 0.17702899999999999
	.quad	0x3feefda61e0c5a81              # double 0.96846299999999996
	.quad	0x3fea6a9a3d2d87f9              # double 0.82551300000000005
	.quad	0x3fd471ef30a4e37a              # double 0.31945400000000002
	.quad	0x3fea09e98dcdb37d              # double 0.81371000000000004
	.quad	0x3fd45f88fc9363f5              # double 0.31833099999999998
	.quad	0x3fec8f0a5efe9318              # double 0.89246099999999995
	.quad	0x3fe0d9b1b79d909f              # double 0.52657399999999999
	.quad	0x3fe3ee653868fd1a              # double 0.62285100000000004
	.quad	0x3fee564b662fdfc2              # double 0.94803400000000004
	.quad	0x3fe74c7d1bb4916d              # double 0.72808700000000004
	.quad	0x3fb30f6ad70e6f2f              # double 0.074454000000000006
	.quad	0x3fdc7f51efb6dca0              # double 0.44527099999999997
	.quad	0x3fd2453d20f2becf              # double 0.28547600000000001
	.quad	0x3fc5a437824d4cba              # double 0.169074
	.quad	0x3fc7147f13059642              # double 0.180313
	.quad	0x3fedb99b2c40d0ab              # double 0.92890700000000004
	.quad	0x3fe1228fe260b2c8              # double 0.53546899999999997
	.quad	0x3fe9a5614df8b157              # double 0.80143799999999998
	.quad	0x3fae1deacc92146a              # double 0.058821999999999999
	.quad	0x3fde709741d084e8              # double 0.47562199999999999
	.quad	0x3fd1da554b8bef8d              # double 0.278951
	.quad	0x3fefafc8b0079a28              # double 0.99020799999999997
	.quad	0x3fe79008205ff1d8              # double 0.73633199999999999
	.quad	0x3fc9459d99029ae5              # double 0.197437
	.quad	0x3fdd915bdd76683c              # double 0.46199699999999999
	.quad	0x3feb49ff92f2b66b              # double 0.85278299999999996
	.quad	0x3fd446d82ba5a038              # double 0.31682399999999999
	.quad	0x3fe405ccc89b0ee5              # double 0.62570800000000004
	.quad	0x3fd168d32830a0b2              # double 0.27202300000000001
	.quad	0x3fb435efa615a8df              # double 0.078948000000000004
	.quad	0x3fef31ab0856e697              # double 0.97481300000000004
	.quad	0x3fe5295e9e1b089a              # double 0.6613
	.quad	0x3fec1059ea57214f              # double 0.876996
	.quad	0x3fbcb220791c4b90              # double 0.112093
	.quad	0x3fd9cdc011d3671b              # double 0.40318300000000001
	.quad	0x3fde56fb8f57f738              # double 0.47405900000000001
	.quad	0x3fe5d907d912556d              # double 0.68274299999999999
	.quad	0x3fd2da16616b54e3              # double 0.29456100000000002
	.quad	0x3f913a4f8726d04e              # double 0.016823999999999999
	.quad	0x3fe2183b60285ec4              # double 0.56545800000000002
	.quad	0x3fe0195aaf78feef              # double 0.50309499999999996
	.quad	0x3fdad26fa3fcc9eb              # double 0.41909400000000002
	.quad	0x3fc3e892253111f1              # double 0.15553500000000001
	.quad	0x3fe890cd423d9232              # double 0.76767600000000003
	.quad	0x3f76451b93037d63              # double 0.005437
	.quad	0x3fe9ccd31769a911              # double 0.806253
	.quad	0x3fc54b380cb6c7a8              # double 0.16635800000000001
	.quad	0x3fd04d48882f0e0b              # double 0.25471700000000003
	.quad	0x3fedc6b69db65ecc              # double 0.93050699999999997
	.quad	0x3fe41b4fe79ee02a              # double 0.62833399999999995
	.quad	0x3fd6495182a9930c              # double 0.34822500000000001
	.quad	0x3fe444d013a92a30              # double 0.63339999999999996
	.quad	0x3fbba94bbe4473cd              # double 0.108052
	.quad	0x3fe72bd3c3611340              # double 0.72409999999999997
	.quad	0x3fe72f9ca5bd944b              # double 0.72456200000000004
	.quad	0x3fe728848387df5d              # double 0.72369600000000001
	.quad	0x3fd62b6f19934efd              # double 0.34640100000000001
	.quad	0x3fe674f0d844d014              # double 0.70177500000000004
	.quad	0x3fe1ea7ce0fc2eba              # double 0.55987399999999998
	.quad	0x3fe9a51a005c4652              # double 0.80140400000000001
	.quad	0x3fe173cf70153bd1              # double 0.54538699999999996
	.quad	0x3fef11ada76d97b3              # double 0.97090799999999999
	.quad	0x3fd17aeddce7cd03              # double 0.27312799999999998
	.quad	0x3fea44c5974e65bf              # double 0.82089500000000004
	.quad	0x3fc469a4df47f994              # double 0.159474
	.quad	0x3fe19af5ba2be059              # double 0.55016600000000004
	.quad	0x3fd8efed634549b6              # double 0.38964399999999999
	.quad	0x3fe4854ef459d990              # double 0.64127299999999998
	.quad	0x3feb7eda66128390              # double 0.85923499999999997
	.quad	0x3fed6feb4a66559f              # double 0.91991199999999995
	.quad	0x3fd3233df2a9d628              # double 0.29902600000000001
	.quad	0x3fdde48626f60e0f              # double 0.46707300000000002
	.quad	0x3fc1dcf893faf428              # double 0.13955600000000001
	.quad	0x3fd65cbbc2b94d94              # double 0.34941
	.quad	0x3fe4c0c62e4d1a65              # double 0.648532
	.quad	0x3fbf3a2595bbbe88              # double 0.12198100000000001
	.quad	0x3fe83a4723aafff3              # double 0.75711399999999995
	.quad	0x3fb9a975afaf8594              # double 0.100242
	.quad	0x3fe3263736cdf267              # double 0.59841500000000003
	.quad	0x3fdc8c0485a0be51              # double 0.446046
	.quad	0x3fea77079e59f2bb              # double 0.82703000000000004
	.quad	0x3fe4be81450efdca              # double 0.64825500000000003
	.quad	0x3fe2efb2aae29739              # double 0.59175999999999995
	.quad	0x3fd07cd466f5019f              # double 0.25761899999999999
	.quad	0x3fcd4bf8fcd67fd4              # double 0.228881
	.quad	0x3fb458255b035bd5              # double 0.079469999999999999
	.quad	0x3fdaa7a85015c209              # double 0.41648299999999999
	.quad	0x3fe966a76965f527              # double 0.79378099999999996
	.quad	0x3fea2fe82517e77d              # double 0.81834799999999996
	.quad	0x3fe27383f0bae89f              # double 0.57660100000000003
	.quad	0x3fdecb039ef0f16f              # double 0.48114099999999999
	.quad	0x3fe3a9d1f601797d              # double 0.61448000000000003
	.quad	0x3fd882e87d2c7b89              # double 0.38299
	.quad	0x3fef0fecdd0d8cb0              # double 0.97069399999999995
	.quad	0x3fe56a875d56f32c              # double 0.66925400000000002
	.quad	0x3fe2b8fbca1059ea              # double 0.58508099999999996
	.quad	0x3fe52bdc26dce39b              # double 0.66160399999999997
	.quad	0x3fc88db0574b4070              # double 0.19182399999999999
	.quad	0x3fef4ae85b9e8c48              # double 0.97789400000000004
	.quad	0x3fe0c7de5082cf53              # double 0.52439800000000003
	.quad	0x3fb456e696a26e54              # double 0.079450999999999994
	.quad	0x3fd97164c729f59d              # double 0.39754600000000001
	.quad	0x3fefab4fa48301a8              # double 0.98966200000000004
	.quad	0x3fc799dcb5781c71              # double 0.18438299999999999
	.quad	0x3fd6e008e9b38d61              # double 0.35742400000000002
	.quad	0x3fe218c7e28240b8              # double 0.56552500000000006
	.quad	0x3fe9d5410f94c87a              # double 0.80728200000000006
	.quad	0x3fe43fa0945f9df5              # double 0.63276699999999997
	.quad	0x3f923aafff36ac64              # double 0.017801999999999998
	.quad	0x3fd77442c7fbacb4              # double 0.36647099999999999
	.quad	0x3fd6b6a1e81cb46c              # double 0.35489700000000002
	.quad	0x3fed563ed0f62739              # double 0.91677799999999998
	.quad	0x3fe46a209aaa3ad2              # double 0.63795500000000005
	.quad	0x3fdb96c3fc43b2dd              # double 0.43107699999999999
	.quad	0x3fe1c6045baf533f              # double 0.55542199999999997
	.quad	0x3fe3a0c6b484d76b              # double 0.61337600000000003
	.quad	0x3fcd98c7e28240b8              # double 0.23122500000000001
	.quad	0x3fcf938151a43782              # double 0.24668899999999999
	.quad	0x3fd880b673c4f3ba              # double 0.38285599999999997
	.quad	0x3fda5592d98bf7f0              # double 0.41147299999999998
	.quad	0x3fdbd698fe69270b              # double 0.434973
	.quad	0x3fd4090f733a8a40              # double 0.31305300000000003
	.quad	0x3fe58943e1006078              # double 0.67300599999999999
	.quad	0x3fd80bb6ed677708              # double 0.37571500000000002
	.quad	0x3fe239bed30f062d              # double 0.56954899999999997
	.quad	0x3fe3c69f8c21e1d2              # double 0.61799599999999999
	.quad	0x3fe4cc55432873bd              # double 0.64994300000000005
	.quad	0x3fd6503b81b64e05              # double 0.34864699999999998
	.quad	0x3fca3cea6c1a048e              # double 0.204984
	.quad	0x3fbb44806290eed0              # double 0.106514
	.quad	0x3fe8c8d7e02645e5              # double 0.77451700000000001
	.quad	0x3fdeba732df505d1              # double 0.48013
	.quad	0x3fd0dde37585be1b              # double 0.26354300000000003
	.quad	0x3fd676b7ed41b75a              # double 0.35099599999999997
	.quad	0x3fd68fe69270b06c              # double 0.35253299999999999
	.quad	0x3fd5e9c886162f16              # double 0.34239399999999998
	.quad	0x3fe3682b62845996              # double 0.60646599999999995
	.quad	0x3fdac200c0f01fb8              # double 0.41809099999999999
	.quad	0x3fecfdeb52c9d170              # double 0.90599600000000002
	.quad	0x3fe8ae275ab7dc7b              # double 0.77125900000000003
	.quad	0x3fee9e4d5d80e497              # double 0.95682400000000001
	.quad	0x3fe019bb2788db05              # double 0.50314099999999995
	.quad	0x3fcc1a3f4666ec9e              # double 0.219551
	.quad	0x3fcf57ff9b56323c              # double 0.24487300000000001
	.quad	0x3fea5bd72bcb5fe5              # double 0.82371099999999997
	.quad	0x3fefe3886594af4f              # double 0.99652499999999999
	.quad	0x3fc5a355043e5322              # double 0.169047
	.quad	0x3fdd45baf533f423              # double 0.45738099999999998
	.quad	0x3fa7f498c3b0c459              # double 0.046788000000000003
	.quad	0x3f848a9bcfd4bf0a              # double 0.010030000000000001
	.quad	0x3fe5f1a1986b9c30              # double 0.68574599999999997
	.quad	0x3fdd72367e414e7f              # double 0.460096
	.quad	0x3feda7008a697aee              # double 0.92663600000000002
	.quad	0x3fdcdfb506dd69d3              # double 0.451154
	.quad	0x3fd3aa3ad18d25ee              # double 0.30726500000000001
	.quad	0x3fe55a1ec4e7253e              # double 0.66725100000000004
	.quad	0x3fe2d92d98bf7f06              # double 0.58901099999999995
	.quad	0x3fef553ef6b5d463              # double 0.97915600000000002
	.quad	0x3fe615c209246bf0              # double 0.69015599999999999
	.quad	0x3fecea033e78e193              # double 0.90356599999999998
	.quad	0x3feaed2cbea4ebdd              # double 0.84145199999999998
	.quad	0x3fe6362845996745              # double 0.69411100000000003
	.quad	0x3fe0a372606fac60              # double 0.51995199999999997
	.quad	0x3fe30387df5cf249              # double 0.59418099999999996
	.quad	0x3fcab990afe60c39              # double 0.208788
	.quad	0x3fab1cc964628028              # double 0.052954000000000001
	.quad	0x3fe64d8dbcec84f9              # double 0.696967
	.quad	0x3fe2163fdd65a145              # double 0.56521600000000005
	.quad	0x3fea634fc610f0e9              # double 0.82462299999999999
	.quad	0x3fe6ea98244e93e2              # double 0.71613700000000002
	.quad	0x3fdc188b11409a24              # double 0.438998
	.quad	0x3fe841d6cf850df1              # double 0.75803699999999996
	.quad	0x3fef6ce5710880d8              # double 0.98204299999999999
	.quad	0x3fee0d25edd05293              # double 0.93910499999999997
	.quad	0x3fc57939a7c17a89              # double 0.16776199999999999
	.quad	0x3fd72b7fe08aefb3              # double 0.36203000000000002
	.quad	0x3fe281d7dbf487fd              # double 0.57835000000000003
	.quad	0x3fea7733a8a3f898              # double 0.82705099999999998
	.quad	0x3fde37d63022dd7b              # double 0.47215800000000002
	.quad	0x3fd7c669057d1783              # double 0.37148500000000001
	.quad	0x3fd229563a9f383f              # double 0.283773
	.quad	0x3feb5cd0bb6ed677              # double 0.85507999999999995
	.quad	0x3fe6f6f6d7625205              # double 0.71764700000000003
	.quad	0x3fbff5b5fa22706d              # double 0.124843
	.quad	0x3fc4065b63d3e4ef              # double 0.156444
	.quad	0x3fa17b30f8c64fdb              # double 0.034143
	.quad	0x3fd87e175d13d74d              # double 0.38269599999999998
	.quad	0x3feddc9e6687f456              # double 0.93318100000000004
	.quad	0x3fa413b9f127f5e8              # double 0.039212999999999998
	.quad	0x3fe7a7418d6909af              # double 0.73916700000000002
	.quad	0x3fe4f62b6ae7d567              # double 0.65505000000000002
	.quad	0x3fb0ace24bba12b6              # double 0.065138000000000001
	.quad	0x3fe89676640a6b94              # double 0.76836700000000002
	.quad	0x3fb2c8a372606fac              # double 0.073373999999999995
	.quad	0x3fe27e62dc6e2a80              # double 0.577928
	.quad	0x3fe07227d028a1e0              # double 0.51393500000000003
	.quad	0x3fe2da426bb55ac0              # double 0.58914299999999997
	.quad	0x3fd453111f0c34c2              # double 0.31757000000000002
	.quad	0x3fa3bc2b94d94079              # double 0.038545000000000003
	.quad	0x3fea7c286f8ad256              # double 0.82765599999999995
	.quad	0x3fde1e92923e5b85              # double 0.47061599999999998
	.quad	0x3fca0f4517614595              # double 0.20359099999999999
	.quad	0x3fbfd35eb7457c0b              # double 0.124319
	.quad	0x3fd6c443914f483d              # double 0.35572900000000002
	.quad	0x3fd01144cbe1eb42              # double 0.251054
	.quad	0x3fdfe3c968943e10              # double 0.498278
	.quad	0x3fe37b890d5a5b96              # double 0.60882999999999998
	.quad	0x3feaf5cf2495e17e              # double 0.84250599999999998
	.quad	0x3fe8c5d206c8711d              # double 0.77414799999999995
	.quad	0x3fe7df7e80389f84              # double 0.74603200000000003
	.quad	0x3fd3b1897a67a52b              # double 0.30771100000000001
	.quad	0x3fe8ff4fd6d7e88a              # double 0.78116600000000003
	.quad	0x3f72e40852b4d8ba              # double 0.0046119999999999998
	.quad	0x3fd486db50f40e5a              # double 0.32073099999999999
	.quad	0x3fd69a30984e3fff              # double 0.353161
	.quad	0x3fe733daf8df7a4e              # double 0.72507999999999995
	.quad	0x3fe18288051c9f73              # double 0.547184
	.quad	0x3fe373b42cc2d6aa              # double 0.60787400000000003
	.quad	0x3fd4a86d71f36263              # double 0.32278000000000001
	.quad	0x3fe6a6dce39b456b              # double 0.70786899999999997
	.quad	0x3fed1fb82c2bd7f5              # double 0.91012199999999999
	.quad	0x3fd68f648c7192ea              # double 0.35250199999999998
	.quad	0x3feee219652bd3c3              # double 0.96509999999999995
	.quad	0x3fed9003eea209ab              # double 0.92383000000000004
	.quad	0x3fe80b7c3504c48b              # double 0.75140200000000001
	.quad	0x3fd9053198288052              # double 0.39094200000000001
	.quad	0x3fe91b77c02afddb              # double 0.78460300000000005
	.quad	0x3fdfcc78e9f6a93f              # double 0.49685499999999999
	.quad	0x3feae7dfe32a0664              # double 0.84080500000000002
	.quad	0x3fd6c197e5647347              # double 0.35556599999999999
	.quad	0x3fcf17df19d66adb              # double 0.24291599999999999
	.quad	0x3fe1b5b91f70de8f              # double 0.55343299999999995
	.quad	0x3fc10385c67dfe33              # double 0.13292000000000001
	.quad	0x3fddc4c9c90c4dec              # double 0.46513599999999999
	.quad	0x3fea821af7d30ad4              # double 0.82838199999999995
	.quad	0x3feb5634549b62c7              # double 0.85427299999999995
	.quad	0x3feb91b1d92b7fe1              # double 0.86153500000000005
	.quad	0x3fea90385c67dfe3              # double 0.83010499999999998
	.quad	0x3fd04784230fcf81              # double 0.25436500000000001
	.quad	0x3fe6da33bd9cae21              # double 0.71413599999999999
	.quad	0x3fe14873365881a1              # double 0.54009399999999996
	.quad	0x3fbab8d823422468              # double 0.104383
	.quad	0x3fe8f4666ec9e237              # double 0.77983400000000003
	.quad	0x3fee3810e8858ff7              # double 0.94434399999999996
	.quad	0x3fba7c9de0503750              # double 0.103464
	.quad	0x3fec16c82e019b0b              # double 0.87778100000000003
	.quad	0x3fe90ffda4052d66              # double 0.78320199999999995
	.quad	0x3fdf894812be48a6              # double 0.49275400000000003
	.quad	0x3fee8d413122b7bb              # double 0.95474300000000001
	.quad	0x3fd0014727dcbddc              # double 0.25007800000000002
	.quad	0x3fc8c79702e6644e              # double 0.19359100000000001
	.quad	0x3fc6de97d06bbdbe              # double 0.17866799999999999
	.quad	0x3fcebba12b5e529c              # double 0.24010100000000001
	.quad	0x3fea942b302f72b4              # double 0.83058699999999996
	.quad	0x3fd66ededaec4a41              # double 0.35051700000000002
	.quad	0x3fe681fd9ba1b196              # double 0.70336799999999999
	.quad	0x3fbcca3e7d135116              # double 0.11246100000000001
	.quad	0x3fcce5b4245f5ad9              # double 0.22575999999999999
	.quad	0x3f9ccccccccccccd              # double 0.028125000000000001
	.quad	0x3fc7c77143393ab4              # double 0.18577399999999999
	.quad	0x3fe4e8986fcdee35              # double 0.653393
	.quad	0x3fdae1049235f80a              # double 0.41998400000000002
	.quad	0x3fca0663c74fb54a              # double 0.20332
	.quad	0x3fc8bc0e38a7e73a              # double 0.19323899999999999
	.quad	0x3fc0acc92146a1a5              # double 0.130273
	.quad	0x3feb7eed45e9185d              # double 0.85924400000000001
	.quad	0x3fee3992c8c50050              # double 0.94452800000000003
	.quad	0x3fde7c243dccea29              # double 0.476327
	.quad	0x3fe3f7e1b8ed1bf8              # double 0.62400900000000004
	.quad	0x3fe2f6a50d6b228e              # double 0.59260800000000002
	.quad	0x3fe1799c38b04ab6              # double 0.546095
	.quad	0x3fd47ec3547e0696              # double 0.32023699999999999
	.quad	0x3fe595831f03d146              # double 0.67450100000000002
	.quad	0x3fc6bdb1a6d698fe              # double 0.17766399999999999
	.quad	0x3fe2ed740c4156e2              # double 0.59148599999999996
	.quad	0x3feea9845dc83233              # double 0.95819299999999996
	.quad	0x3fdf7ee0b0af5fd4              # double 0.49211899999999997
	.quad	0x3fed934267839cd8              # double 0.92422599999999999
	.quad	0x3feb6b6390c91080              # double 0.85685900000000004
	.quad	0x3fe9621101b00368              # double 0.79322099999999995
	.quad	0x3fe60344c37e6f72              # double 0.68789900000000004
	.quad	0x3fe4c7368ad68837              # double 0.64931799999999995
	.quad	0x3fd4aee631f8a090              # double 0.32317499999999999
	.quad	0x3fc30b6b6e0d23d5              # double 0.148786
	.quad	0x3fe0d781c714fce7              # double 0.52630699999999997
	.quad	0x3fed37dc7abfb9bf              # double 0.91306900000000002
	.quad	0x3fe6fff9b56323bc              # double 0.71874700000000002
	.quad	0x3fd3f6f08cc575c0              # double 0.31194699999999997
	.quad	0x3fe04d7060bb2bbb              # double 0.50945300000000004
	.quad	0x3fdc9fcb0c026cc2              # double 0.44725300000000001
	.quad	0x3fea289118c197e5              # double 0.81745199999999996
	.quad	0x3febf9ebe9c88616              # double 0.87425799999999998
	.quad	0x3fdb450efdc9c4db              # double 0.42609000000000002
	.quad	0x3fec245b291b823d              # double 0.87943800000000005
	.quad	0x3fe3edb50f40e5a3              # double 0.62276699999999996
	.quad	0x3fe5eebd4cfd08d5              # double 0.68539300000000003
	.quad	0x3fdde99e94ab1d50              # double 0.46738400000000002
	.quad	0x3feb3d66277c45cc              # double 0.85124500000000002
	.quad	0x3fe78fb00bcbe61d              # double 0.73629
	.quad	0x3fcd550ca1cef241              # double 0.229158
	.quad	0x3feac2c5e2cdc012              # double 0.83627600000000002
	.quad	0x3fe8aa0232096788              # double 0.77075300000000002
	.quad	0x3fe4309e98dcdb38              # double 0.63093500000000002
	.quad	0x3feb66f2e8c0485a              # double 0.85631699999999999
	.quad	0x3fcb8a116659d12d              # double 0.21515100000000001
	.quad	0x3fe9b37a80cf9e38              # double 0.80315899999999996
	.quad	0x3fe78bc59b8023a7              # double 0.73581200000000002
	.quad	0x3fab836a832b990b              # double 0.053737
	.quad	0x3fd6a3486f049a99              # double 0.35371599999999997
	.quad	0x3fd6f5a5332acfb7              # double 0.35874299999999998
	.quad	0x3fc3ea35935fc3b5              # double 0.155585
	.quad	0x3fd1d1633482be8c              # double 0.27840500000000001
	.quad	0x3fe5ec6de76427c8              # double 0.68511100000000003
	.quad	0x3fd3a01abd1aa822              # double 0.306647
	.quad	0x3fdc3c64345cfedf              # double 0.44118600000000002
	.quad	0x3fe7019f3c70c997              # double 0.71894800000000003
	.quad	0x3fe9db8bac710cb3              # double 0.80805000000000005
	.quad	0x3fd2d29dc725c3df              # double 0.29410500000000001
	.quad	0x3fee92231832fcad              # double 0.95533900000000005
	.quad	0x3fdb547e06961c37              # double 0.42703200000000002
	.quad	0x3fe5962f166e008f              # double 0.67458300000000004
	.quad	0x3fe074fb549f9485              # double 0.51427999999999996
	.quad	0x3fe127221858bc5a              # double 0.53602700000000003
	.quad	0x3fb87de5082cf52c              # double 0.095671000000000006
	.quad	0x3fefac16df3f9618              # double 0.98975699999999999
	.quad	0x3fe14d4ed2cbea4f              # double 0.54068700000000003
	.quad	0x3fbdcd7060bb2bbb              # double 0.11641600000000001
	.quad	0x3fdaad080b673c4f              # double 0.41681099999999999
	.quad	0x3fe84393682730c6              # double 0.75824899999999995
	.quad	0x3fe3fa3db3bfb58d              # double 0.62429699999999999
	.quad	0x3fe6561d4306e5cd              # double 0.69801199999999997
	.quad	0x3feae8c0485a0be5              # double 0.84091199999999999
	.quad	0x3fefa8aa433508f6              # double 0.98933899999999997
	.quad	0x3fd4242d05f28848              # double 0.31470799999999999
	.quad	0x3fe454d1e96c3fc4              # double 0.63535399999999997
	.quad	0x3fc5f3e89a88ace2              # double 0.17150599999999999
	.quad	0x3fed20ee8d10f51b              # double 0.91027000000000002
	.quad	0x3fe95a89b951c5c5              # double 0.79230199999999995
	.quad	0x3fdf7446f9b994e2              # double 0.49147200000000002
	.quad	0x3fe4d592d98bf7f0              # double 0.65107099999999996
	.quad	0x3fd35dfeb8d82342              # double 0.30261199999999999
	.quad	0x3fd9d0f6273929ed              # double 0.40337899999999999
	.quad	0x3fee31d92b7fe08b              # double 0.94358500000000001
	.quad	0x3fe7b441bb8c32a9              # double 0.74075400000000002
	.quad	0x3feadf1e0828c36e              # double 0.83973600000000004
	.quad	0x3fcabcdfefbf401c              # double 0.20888899999999999
	.quad	0x3fe45831f03d145e              # double 0.63576600000000005
	.quad	0x3feb65eaab042529              # double 0.85619100000000004
	.quad	0x3fc0e0f3cb3e5754              # double 0.13186500000000001
	.quad	0x3fe037c3504c48ae              # double 0.50680700000000001
	.quad	0x3fa0c23fab10ba62              # double 0.032731999999999997
	.quad	0x3fccdcdb37c99ae9              # double 0.22549
	.quad	0x3fbc3c5bd0e12e84              # double 0.11029600000000001
	.quad	0x3fdad5dc4007570c              # double 0.41930299999999998
	.quad	0x3fe21d084e831ad2              # double 0.56604399999999999
	.quad	0x3fe7ba4723aafff3              # double 0.74148899999999995
	.quad	0x3fb1db1209edbf8c              # double 0.069749000000000005
	.quad	0x3fc9ac0c62e4d1a6              # double 0.20056299999999999
	.quad	0x3fe17b43d89ce4a8              # double 0.54629700000000003
	.quad	0x3fe675be5d9e40c8              # double 0.70187299999999997
	.quad	0x3fedb9496249a134              # double 0.92886800000000002
	.quad	0x3fa8e8858ff75968              # double 0.048648999999999998
	.quad	0x3fec86ca89fc6da4              # double 0.89145399999999996
	.quad	0x3fcbd5b24e9c4546              # double 0.21745900000000001
	.quad	0x3fe8b380cb6c7a7d              # double 0.77191200000000004
	.quad	0x3fead7b41bfbdf09              # double 0.83883099999999999
	.quad	0x3fea3dee78183f92              # double 0.82006000000000001
	.quad	0x3fccdf15a4acf313              # double 0.22555800000000001
	.quad	0x3fc526527a20578e              # double 0.16523199999999999
	.quad	0x3fb95831f03d145e              # double 0.099002000000000006
	.quad	0x3fe34165907d9125              # double 0.60173299999999996
	.quad	0x3fd59231c64ba94c              # double 0.33704800000000001
	.quad	0x3fd94473cd573648              # double 0.39480300000000002
	.quad	0x3fecb9b66f9335d2              # double 0.89766999999999997
	.quad	0x3fed9cb039ef0f17              # double 0.92537700000000001
	.quad	0x3fe3c80e8c8abd5e              # double 0.61817100000000003
	.quad	0x3fe5c2dcf4623d0c              # double 0.680037
	.quad	0x3fda29e90795f677              # double 0.408808
	.quad	0x3fe503b60285ec3e              # double 0.65670300000000004
	.quad	0x3fa542c3c9eecbfb              # double 0.041524999999999999
	.quad	0x3fc968d759ee88df              # double 0.19851199999999999
	.quad	0x3fe3a65cf67b1c00              # double 0.61405799999999999
	.quad	0x3fe61945b6c3760c              # double 0.690585
	.quad	0x3fe83b2788db0575              # double 0.75722100000000003
	.quad	0x3fe76264e48626f6              # double 0.73076099999999999
	.quad	0x3fda81d3aa369fcf              # double 0.41417399999999999
	.quad	0x3fc26a11ec918e32              # double 0.14386199999999999
	.quad	0x3fcd99ed7c6fbd27              # double 0.23125999999999999
	.quad	0x3fedd0b30b5aa716              # double 0.93172600000000005
	.quad	0x3fa3150dae3e6c4c              # double 0.037269999999999998
	.quad	0x3fedc68661ae70c1              # double 0.93048399999999998
	.quad	0x3fdcd99029ae4f33              # double 0.45077899999999999
	.quad	0x3fcf6e158750c1b9              # double 0.24554699999999999
	.quad	0x3fc684c6a3bddfca              # double 0.175927
	.quad	0x3fc97de939eadd59              # double 0.199155
	.quad	0x3fc4ab14ec204f2b              # double 0.161471
	.quad	0x3fd75e02ea960b70              # double 0.36511300000000002
	.quad	0x3fed08aac96cc5fc              # double 0.907308
	.quad	0x3fecba4f8726d04e              # double 0.89774299999999996
	.quad	0x3fe038d60a633051              # double 0.506938
	.quad	0x3fdbb59578a2a90d              # double 0.43295800000000001
	.quad	0x3f9172ef0ae53650              # double 0.01704
	.quad	0x3fe3040bfe3b03e2              # double 0.59424399999999999
	.quad	0x3fe341d084e831ad              # double 0.60178399999999999
	.quad	0x3fcdfd50225742dd              # double 0.234293
	.quad	0x3feef95703f2d3c8              # double 0.96793700000000004
	.quad	0x3feb62888b545c79              # double 0.85577800000000004
	.quad	0x3fe5d30f062d40ab              # double 0.68201400000000001
	.quad	0x3fd0132b55ef1fde              # double 0.25117
	.quad	0x3fedc054ef459d99              # double 0.929728
	.quad	0x3f82ce032db1e9f2              # double 0.0091819999999999992
	.quad	0x3fee0e7ff583a53c              # double 0.93927000000000004
	.quad	0x3fcbc7368ad68837              # double 0.21701699999999999
	.quad	0x3fec7470eb24a6a8              # double 0.88921399999999995
	.quad	0x3fe9d1633482be8c              # double 0.80681000000000002
	.quad	0x3fd84dd2f1a9fbe7              # double 0.37974999999999998
	.quad	0x3fd31858bc59b802              # double 0.29836099999999999
	.quad	0x3f918090b417ca21              # double 0.017092
	.quad	0x3fea43e3193f6c27              # double 0.82078700000000004
	.quad	0x3fd394bbe4473cd5              # double 0.30595299999999997
	.quad	0x3fea564b662fdfc2              # double 0.82303400000000004
	.quad	0x3fc7253da72a7bd5              # double 0.18082400000000001
	.quad	0x3fd21550ca1cef24              # double 0.282551
	.quad	0x3fc8651f3e89a88b              # double 0.19058600000000001
	.quad	0x3fcf3c89f40a2878              # double 0.244035
	.quad	0x3fc8c7192ea52ef9              # double 0.193576
	.quad	0x3fb51f4f50a02b84              # double 0.082508999999999999
	.quad	0x3fcb97edc7ef177a              # double 0.21557399999999999
	.quad	0x3fed55e28aa43351              # double 0.91673400000000005
	.quad	0x3fe3f5fb2edfe75c              # double 0.62377700000000003
	.quad	0x3fe7206c8711d799              # double 0.72270800000000002
	.quad	0x3fbc791c4b90214b              # double 0.111223
	.quad	0x3fe70bd66277c45d              # double 0.72019500000000003
	.quad	0x3f900fba8826aa8f              # double 0.015685000000000001
	.quad	0x3feb1882adc4c9c9              # double 0.84674199999999999
	.quad	0x3fdb78f25a250f84              # double 0.429257
	.quad	0x3fe559dfdac68a93              # double 0.66722099999999995
	.quad	0x3fe525fc7e6b3fea              # double 0.660887
	.quad	0x3fe901f10667f90e              # double 0.78148700000000004
	.quad	0x3fe95938151a4378              # double 0.79214099999999998
	.quad	0x3fea91212513b5bf              # double 0.83021599999999995
	.quad	0x3fe21a86940357a3              # double 0.56573799999999996
	.quad	0x3fd8107faa044ae8              # double 0.37600699999999998
	.quad	0x3fe6fd9fd36f7e3d              # double 0.71845999999999999
	.quad	0x3fdce3a7daa4fca4              # double 0.45139499999999999
	.quad	0x3fe597396d0917d7              # double 0.67471000000000003
	.quad	0x3fecdfa43fe5c91d              # double 0.90229999999999999
	.quad	0x3fdb48cf7caa758a              # double 0.426319
	.quad	0x3fab9b456b441bb9              # double 0.053919000000000002
	.quad	0x3f6e7b80a9de8b3b              # double 0.0037209999999999999
	.quad	0x3febcf0d844d013b              # double 0.86902500000000005
	.quad	0x3fd743201040bfe4              # double 0.36347200000000002
	.quad	0x3fde12018a43bb41              # double 0.46984900000000002
	.quad	0x3fa1cf9a06a6e32e              # double 0.034786999999999998
	.quad	0x3fc7f9830e3cd9a5              # double 0.187302
	.quad	0x3fe2fa6bd6e8af81              # double 0.59306899999999996
	.quad	0x3fcef15e7c8d1959              # double 0.24174100000000001
	.quad	0x3fabeee525892685              # double 0.054557000000000001
	.quad	0x3fd97d9dba908a26              # double 0.39829199999999998
	.quad	0x3fe9b2dd377e1b8f              # double 0.80308400000000002
	.quad	0x3fe2a42d05f28848              # double 0.58254099999999998
	.quad	0x3fd86defc7a39820              # double 0.38170999999999999
	.quad	0x3fe79ed3953dea46              # double 0.73813799999999996
	.quad	0x3fe773e24febd09e              # double 0.73289599999999999
	.quad	0x3fd5305100a393ee              # double 0.33107399999999998
	.quad	0x3fea17e56473471f              # double 0.81541699999999995
	.quad	0x3fd3831f03d145d8              # double 0.30487799999999998
	.quad	0x3fd4fb1183b60286              # double 0.327824
	.quad	0x3fd6d1b71758e219              # double 0.35654999999999998
	.quad	0x3fd002d59d55e6bc              # double 0.25017299999999998
	.quad	0x3fe7a7ded6ba8c58              # double 0.73924199999999995
	.quad	0x3fe0587724fa8b4c              # double 0.510799
	.quad	0x3fa4b70ac3a860dd              # double 0.040459000000000002
	.quad	0x3fef4610f0e90bc8              # double 0.97730300000000003
	.quad	0x3fed4eb56fb8f57f              # double 0.91585799999999995
	.quad	0x3fe35f02c4d65e46              # double 0.605348
	.quad	0x3fca72b020c49ba6              # double 0.206625
	.quad	0x3fea60d66f0cfe15              # double 0.82432099999999997
	.quad	0x3fd964628027d88c              # double 0.39675199999999999
	.quad	0x3fc3c03361565c2d              # double 0.154303
	.quad	0x3fc412c6ac215b9a              # double 0.15682299999999999
	.quad	0x3fe0694898f605ab              # double 0.51285199999999997
	.quad	0x3fd3ae8e1d6494d5              # double 0.307529
	.quad	0x3fb6a055757d5a9f              # double 0.088384000000000004
	.quad	0x3fedfe586013660e              # double 0.93729799999999996
	.quad	0x3fcb26c7eae5bc88              # double 0.212121
	.quad	0x3fc99f6ec5b078d9              # double 0.20017799999999999
	.quad	0x3fdc44178705425f              # double 0.44165599999999999
	.quad	0x3fd4dc8323358f2e              # double 0.325959
	.quad	0x3fe1a3c42a66dbd7              # double 0.55124099999999998
	.quad	0x3fcfafaf85942917              # double 0.24754899999999999
	.quad	0x3fc8bdf4c2b51bd6              # double 0.193297
	.quad	0x3fe5e2d1f1cfbb95              # double 0.68393800000000005
	.quad	0x3fd5a98676a7264a              # double 0.338472
	.quad	0x3fa10b417ca2120e              # double 0.033288999999999999
	.quad	0x3fde95e9e1b089a0              # double 0.47789999999999999
	.quad	0x3fcad8d36b4c7f35              # double 0.20974200000000001
	.quad	0x3fe02b239a38fbca              # double 0.50526599999999999
	.quad	0x3fd28d08919ef955              # double 0.289858
	.quad	0x3fb9f75104d551d7              # double 0.10143000000000001
	.quad	0x3fe3b387160956c1              # double 0.61566500000000002
	.quad	0x3fe5715a4acf312b              # double 0.67008699999999999
	.quad	0x3fcb0d8cb07d0aee              # double 0.21135100000000001
	.quad	0x3fd893ee5eedcc21              # double 0.38402900000000001
	.quad	0x3fe6fc243dccea29              # double 0.718279
	.quad	0x3fe56646f1561911              # double 0.66873499999999997
	.quad	0x3fc3187e7c06e19c              # double 0.14918500000000001
	.quad	0x3fe736d22424a277              # double 0.72544200000000003
	.quad	0x3feb5c1a47a9e2bd              # double 0.854993
	.quad	0x3fefe4712e40852b              # double 0.99663599999999996
	.quad	0x3fe7be0bd44998d0              # double 0.74194899999999997
	.quad	0x3fd059a73b42cc2d              # double 0.25547199999999998
	.quad	0x3fd0785f8d2e514c              # double 0.25734699999999999
	.quad	0x3fe4a6d8b1dd5d3e              # double 0.64536700000000002
	.quad	0x3fe1a19eb6390c91              # double 0.550979
	.quad	0x3fe8b8d3f1843c3a              # double 0.77256199999999997
	.quad	0x3fd03e963dc486ad              # double 0.25381999999999999
	.quad	0x3fefd7be9856a37b              # double 0.99508600000000002
	.quad	0x3f82e7b3d8e00086              # double 0.0092309999999999996
	.quad	0x3fe7a94141e9af5c              # double 0.73941100000000004
	.quad	0x3fd664cb5bb384fd              # double 0.34990199999999999
	.quad	0x3fe5333b96af038e              # double 0.66250399999999998
	.quad	0x3fe636d22424a277              # double 0.69419200000000003
	.quad	0x3feae8d32830a0b2              # double 0.84092100000000003
	.quad	0x3feb840181e03f70              # double 0.85986399999999996
	.quad	0x3fe90a1be2b4959e              # double 0.78248399999999996
	.quad	0x3fc2a05dd8f92afa              # double 0.14551900000000001
	.quad	0x3fe7f37fbefd0071              # double 0.74847399999999997
	.quad	0x3fe558d36b4c7f35              # double 0.66709300000000005
	.quad	0x3fd3f5a5332acfb7              # double 0.31186799999999998
	.quad	0x3fd90dc33721d53d              # double 0.39146500000000001
	.quad	0x3fbf0e0a84be4042              # double 0.121308
	.quad	0x3fd5b9b66f9335d2              # double 0.33945999999999998
	.quad	0x3fedddca4b124d0a              # double 0.93332400000000004
	.quad	0x3fe2abbecaab8a5d              # double 0.58346500000000001
	.quad	0x3fe8da78f25a2510              # double 0.77666900000000005
	.quad	0x3fe122291fb3fa6e              # double 0.53542000000000001
	.quad	0x3fe7b137b07075b4              # double 0.74038300000000001
	.quad	0x3fe0314a90470a81              # double 0.50601700000000005
	.quad	0x3feae297396d0918              # double 0.84016000000000002
	.quad	0x3fe3fa56de33269e              # double 0.624309
	.quad	0x3fea09b30728e92d              # double 0.81368399999999996
	.quad	0x3fdf381d7dbf4880              # double 0.48780000000000001
	.quad	0x3fedc9a34ca0c283              # double 0.93086400000000002
	.quad	0x3fc46527a20578e6              # double 0.15933700000000001
	.quad	0x3fd408d08919ef95              # double 0.31303799999999998
	.quad	0x3fefbd9231c64ba9              # double 0.99189099999999996
	.quad	0x3fef494d50ebaade              # double 0.97769799999999996
	.quad	0x3fc45d18090b417d              # double 0.15909100000000001
	.quad	0x3fb7c393682730c6              # double 0.092827999999999993
	.quad	0x3feb7672b884406c              # double 0.85820899999999999
	.quad	0x3fb5515054ac29bf              # double 0.083271999999999999
	.quad	0x3f74bad7d7c2ca15              # double 0.0050610000000000004
	.quad	0x3fec649906cca2db              # double 0.88727999999999996
	.quad	0x3fb1c065b63d3e4f              # double 0.069342000000000001
	.quad	0x3fe17c5260f5e41d              # double 0.54642599999999997
	.quad	0x3fefc5a3e39f7729              # double 0.99287599999999998
	.quad	0x3fef6cfc829cfdd2              # double 0.98205399999999998
	.quad	0x3fd2f156191148fe              # double 0.29598000000000002
	.quad	0x3fc37b28954a7f80              # double 0.152196
	.quad	0x3fe4ea161e4f7660              # double 0.65357500000000002
	.quad	0x3fe8d69f4906034f              # double 0.77619899999999997
	.quad	0x3fe64985f06f6944              # double 0.69647499999999996
	.quad	0x3fe1d2eb5f5f0b28              # double 0.55699699999999996
	.quad	0x3fda783dff3f0fe0              # double 0.41358899999999998
	.quad	0x3fecd5c96030c240              # double 0.90109700000000004
	.quad	0x3fea0c0f01fb82c3              # double 0.81397200000000003
	.quad	0x3fe59f644955b467              # double 0.67570699999999995
	.quad	0x3feb9392189bd838              # double 0.86176399999999997
	.quad	0x3feb19fa11a975b0              # double 0.84692100000000003
	.quad	0x3fa4ffeb074a771d              # double 0.041015000000000003
	.quad	0x3fd7de6ddf00abf7              # double 0.37295099999999998
	.quad	0x3fd8d33d29563a9f              # double 0.38789299999999999
	.quad	0x3fd3cae21101b003              # double 0.30925799999999998
	.quad	0x3fdaec8d5c74751d              # double 0.42068800000000001
	.quad	0x3fe53f6e3f78bbd4              # double 0.66399300000000006
	.quad	0x3fc2917507e9d94d              # double 0.145064
	.quad	0x3feab1a08bfc2225              # double 0.83418300000000001
	.quad	0x3fefd5c31593e5fb              # double 0.99484399999999995
	.quad	0x3fc548344c37e6f7              # double 0.166266
	.quad	0x3fbf82d38476f2a6              # double 0.12309
	.quad	0x3fd9106ee30caa32              # double 0.39162799999999998
	.quad	0x3fea5a6a44417870              # double 0.82353699999999996
	.quad	0x3fee24a276b7ed42              # double 0.94197200000000003
	.quad	0x3fd475536933a040              # double 0.31966099999999997
	.quad	0x3fdf6dd26b723ee2              # double 0.49107800000000001
	.quad	0x3fe02fe82517e77d              # double 0.50584799999999996
	.quad	0x3fe18f345069a4df              # double 0.54873099999999997
	.quad	0x3fe9ebc408d8ec96              # double 0.81003000000000003
	.quad	0x3fea458eeae9ee46              # double 0.82099100000000003
	.quad	0x3fe028438088509c              # double 0.504915
	.quad	0x3fa20c6b484d76ab              # double 0.035250999999999998
	.quad	0x3fee1424e5929670              # double 0.93995899999999999
	.quad	0x3fdee325d4a5df22              # double 0.48261399999999999
	.quad	0x3fe507f23cc8de2b              # double 0.65722000000000003
	.quad	0x3f6cc532a497fa5d              # double 0.0035119999999999999
	.quad	0x3fc638c111ada76e              # double 0.17360700000000001
	.quad	0x3fd21f601797cc3a              # double 0.283165
	.quad	0x3fe4a61e0c5a8156              # double 0.64527800000000002
	.quad	0x3fe437c99ae924f2              # double 0.63180999999999998
	.quad	0x3fb14c55432873bd              # double 0.067571000000000006
	.quad	0x3fe66d783dff3f10              # double 0.70086300000000001
	.quad	0x3fc0bf5d78811b1e              # double 0.13084000000000001
	.quad	0x3feb32f661f18ca0              # double 0.84997100000000003
	.quad	0x3fe35004fb1183b6              # double 0.603518
	.quad	0x3fe533b107746888              # double 0.66256000000000004
	.quad	0x3fd3013ec460ed81              # double 0.29695100000000002
	.quad	0x3fe065abc0e38a7e              # double 0.51241099999999995
	.quad	0x3fe877c02afdda8c              # double 0.76461800000000001
	.quad	0x3fd1945f9df548ed              # double 0.27468100000000001
	.quad	0x3fe295b78cc9a77e              # double 0.58077599999999996
	.quad	0x3febdb6e503fb374              # double 0.87053599999999997
	.quad	0x3fd1c77574f722e2              # double 0.27779900000000002
	.quad	0x3fe395d2d01c0ca6              # double 0.612039
	.quad	0x3fe54044284dfce3              # double 0.66409499999999999
	.quad	0x3fea50a88effe2a4              # double 0.82234600000000002
	.quad	0x3fd5d3e920c069e8              # double 0.341059
	.quad	0x3fd578feef5ec80c              # double 0.33550999999999997
	.quad	0x3fea7a7a85015c21              # double 0.82745100000000005
	.quad	0x3fa0828c36da87a0              # double 0.032245999999999997
	.quad	0x3fefb39e279dd3bb              # double 0.990676
	.quad	0x3fb5fb82c2bd7f52              # double 0.085869
	.quad	0x3fc43465625a682b              # double 0.15784899999999999
	.quad	0x3fd6ea747d805e5f              # double 0.35805999999999999
	.quad	0x3fbc87db2b346131              # double 0.11144800000000001
	.quad	0x3fbe6d373affb04f              # double 0.118854
	.quad	0x3fdea6efc371da38              # double 0.478939
	.quad	0x3feadd0d8cb07d0b              # double 0.83948400000000001
	.quad	0x3fedcf5b1c864884              # double 0.931562
	.quad	0x3fe1682f944241c4              # double 0.54396800000000001
	.quad	0x3fe457cb2d905c03              # double 0.63571699999999998
	.quad	0x3feffc02afdda8bd              # double 0.99951299999999998
	.quad	0x3feb8589acbc8c0d              # double 0.86005100000000001
	.quad	0x3fe231a4bdba0a52              # double 0.56855999999999995
	.quad	0x3fe03e07a28bb0a3              # double 0.50757200000000002
	.quad	0x3fe5eebd4cfd08d5              # double 0.68539300000000003
	.quad	0x3fa6379b77c02afe              # double 0.043393000000000001
	.quad	0x3fcc6a76965f5276              # double 0.221999
	.quad	0x3fe0a99b6f5caf2d              # double 0.52070399999999994
	.quad	0x3fac217d2849cb25              # double 0.054942999999999999
	.quad	0x3fe60854cdb7ae58              # double 0.68851700000000005
	.quad	0x3fed94dd72367e41              # double 0.92442199999999997
	.quad	0x3fe99f5dfeb8d823              # double 0.80070399999999997
	.quad	0x3fed082f0e0a84be              # double 0.90724899999999997
	.quad	0x3fe1d0917d6b65aa              # double 0.55671000000000004
	.quad	0x3fdc63497b7414a5              # double 0.44356000000000001
	.quad	0x3fb15432873bc904              # double 0.067691000000000001
	.quad	0x3fec9ca9ef5232d3              # double 0.89412400000000003
	.quad	0x3fc9d859c8c9320e              # double 0.20191500000000001
	.quad	0x3feb5fbf83382e45              # double 0.85543800000000003
	.quad	0x3fe05b1c864883fd              # double 0.51112199999999997
	.quad	0x3fe30e043a2163fe              # double 0.59546100000000002
	.quad	0x3fb32702a3486f05              # double 0.074814000000000005
	.quad	0x3fe78a7c5ac471b4              # double 0.73565499999999995
	.quad	0x3fe114013ec460ee              # double 0.53369200000000006
	.quad	0x3fe615bdd76683c3              # double 0.69015400000000005
	.quad	0x3fb0d1a650614163              # double 0.065698999999999994
	.quad	0x3fd8f98b71b8aa00              # double 0.39023099999999999
	.quad	0x3fddbc0a06e9ff0d              # double 0.46460200000000001
	.quad	0x3fe7e466b1e5c0ba              # double 0.74663100000000004
	.quad	0x3fe0cd530489d27c              # double 0.52506399999999998
	.quad	0x3fb5df548ecd8dbd              # double 0.085439000000000001
	.quad	0x3fa0df58c08b75ea              # double 0.032953999999999997
	.quad	0x3fc95ac03ff69015              # double 0.19808200000000001
	.quad	0x3fe197df19d66adb              # double 0.54978899999999997
	.quad	0x3fa965f5275ee99a              # double 0.049605999999999997
	.quad	0x3fe3896feb4a6656              # double 0.61052700000000004
	.quad	0x3fc9e0f7fcfc3f81              # double 0.202178
	.quad	0x3fed197a24894c44              # double 0.90935999999999994
	.quad	0x3fec72990f301eac              # double 0.88898900000000002
	.quad	0x3fd1b220791c4b90              # double 0.27649699999999999
	.quad	0x3fe817891e215337              # double 0.75287300000000001
	.quad	0x3fb98622c4502689              # double 0.099703
	.quad	0x3fc87a4a48f96e16              # double 0.19123200000000001
	.quad	0x3fe44534bd76ee74              # double 0.63344800000000001
	.quad	0x3fb4d4024b33daf9              # double 0.081360000000000002
	.quad	0x3fd6266fd651b0cd              # double 0.34609600000000001
	.quad	0x3fe7843a2163fdd6              # double 0.73489099999999996
	.quad	0x3feb9e518f3eccc4              # double 0.86307599999999995
	.quad	0x3feae62fdfc19c17              # double 0.84059899999999999
	.quad	0x3fe95a5b9628cbd1              # double 0.79227999999999998
	.quad	0x3fe1d60a63305101              # double 0.55737800000000004
	.quad	0x3fe2efe931876189              # double 0.59178600000000003
	.quad	0x3fd4c486ad2dcb14              # double 0.32449499999999998
	.quad	0x3fe2c7f349385836              # double 0.58690799999999999
	.quad	0x3fd974a771c970f8              # double 0.39774500000000002
	.quad	0x3fee01f53825e13b              # double 0.93773899999999999
	.quad	0x3feabade225fa659              # double 0.83531100000000003
	.quad	0x3fddf4f50a02b841              # double 0.46807599999999999
	.quad	0x3fb9260f5e41d4b7              # double 0.098237000000000005
	.quad	0x3fd0574b40703298              # double 0.255328
	.quad	0x3fd30e7ff583a53c              # double 0.29776000000000002
	.quad	0x3fefdf15a4acf313              # double 0.99598200000000003
	.quad	0x3fd84e2b063e07a3              # double 0.37977100000000003
	.quad	0x3fe171de69ad42c4              # double 0.54515000000000002
	.quad	0x3fd0f27bb2fec56d              # double 0.26479999999999998
	.quad	0x3fe0ad6a9c560c7c              # double 0.52116899999999999
	.quad	0x3fd7996fa82e87d3              # double 0.36874000000000001
	.quad	0x3fdabf8769ec2ce4              # double 0.41793999999999998
	.quad	0x3fdd68b19a415f46              # double 0.45951500000000001
	.quad	0x3fd1caeea63b688c              # double 0.27801100000000001
	.quad	0x3fe503c8e25c810a              # double 0.65671199999999996
	.quad	0x3fb98bb4d48882f1              # double 0.099788000000000002
	.quad	0x3fcfabf338716095              # double 0.24743499999999999
	.quad	0x3fe34d87724fa8b5              # double 0.60321400000000003
	.quad	0x3fe06a37ac3eb7cc              # double 0.51296600000000003
	.quad	0x3fce2c881e4712e4              # double 0.235734
	.quad	0x3f91359791819d24              # double 0.016806000000000001
	.quad	0x3fe4947496aad1d0              # double 0.64312199999999997
	.quad	0x3fec7add15f02c4d              # double 0.88999799999999996
	.quad	0x3fed4e054690de09              # double 0.91577399999999998
	.quad	0x3fdeb7b28954a7f8              # double 0.479962
	.quad	0x3fee58d5842b734b              # double 0.94834399999999996
	.quad	0x3fd8d017dae81883              # double 0.38770100000000002
	.quad	0x3fecd31337eb28d8              # double 0.90076599999999996
	.quad	0x3fe4f43419e30015              # double 0.65481
	.quad	0x3febc0980b242071              # double 0.86726000000000003
	.quad	0x3fedd0acc0bdcad1              # double 0.93172299999999997
	.quad	0x3fe9343d89ce4a7b              # double 0.78762699999999997
	.quad	0x3fe12d666a98244f              # double 0.53679200000000005
	.quad	0x3fd243b70ef56649              # double 0.285383
	.quad	0x3fed7b58d1526d8b              # double 0.92130699999999999
	.quad	0x3fdb4545846e8f2a              # double 0.42610300000000001
	.quad	0x3fcc30e3cd9a5226              # double 0.22024199999999999
	.quad	0x3fecc57c0b135979              # double 0.89910699999999999
	.quad	0x3feade8b3b320536              # double 0.83966600000000002
	.quad	0x3fc4f251c193b3a7              # double 0.16364500000000001
	.quad	0x3fe10327674d1633              # double 0.53163499999999997
	.quad	0x3fcfd7774aba3876              # double 0.24876300000000001
	.quad	0x3fe330446b69db66              # double 0.59964200000000001
	.quad	0x3f9d67fd3f5b5fa2              # double 0.028716999999999999
	.quad	0x3fe31fd5885d3133              # double 0.59763599999999995
	.quad	0x3fd123c42a66dbd7              # double 0.26780799999999999
	.quad	0x3fa508f648c7192f              # double 0.041084000000000002
	.quad	0x3fd38b545c78a6db              # double 0.30537900000000001
	.quad	0x3fd54938583621fb              # double 0.332594
	.quad	0x3fcd4f5903a7546d              # double 0.22898399999999999
	.quad	0x3feb0e410b630a91              # double 0.84548999999999996
	.quad	0x3fe1168512231833              # double 0.533999
	.quad	0x3fc0090b417ca212              # double 0.125276
	.quad	0x3fc16473471f7942              # double 0.135878
	.quad	0x3fcdbf50e3476295              # double 0.232401
	.quad	0x3fe652a411c2a023              # double 0.69758799999999999
	.quad	0x3fe075d56f32bdc2              # double 0.51438399999999995
	.quad	0x3fa1bda5119ce076              # double 0.03465
	.quad	0x3fe8e052502eec7d              # double 0.77738300000000005
	.quad	0x3fed7a355043e532              # double 0.92116799999999999
	.quad	0x3fedff9f87f023ea              # double 0.93745400000000001
	.quad	0x3fe2e52deca2552a              # double 0.590476
	.quad	0x3feba2dd7a99fa12              # double 0.86363100000000004
	.quad	0x3f971d1d4738a3b5              # double 0.022571999999999998
	.quad	0x3fd6ae18ac9f2fdc              # double 0.35437600000000002
	.quad	0x3fe39f2fdb8fde2f              # double 0.613182
	.quad	0x3fc983c6c97d8cf4              # double 0.19933400000000001
	.quad	0x3fd6fa7eb6bf444e              # double 0.359039
	.quad	0x3fe23395c4220360              # double 0.568797
	.quad	0x3fd31c2e33eff195              # double 0.298595
	.quad	0x3fe908398a654930              # double 0.782254
	.quad	0x3fa0d77b7c7820a3              # double 0.032894
	.quad	0x3fe18e30446b69db              # double 0.54860699999999996
	.quad	0x3fd6f79c842fa509              # double 0.35886299999999999
	.quad	0x3fe630dd82fd75e2              # double 0.693465
	.quad	0x3fdfa8da7f3cf701              # double 0.49468099999999998
	.quad	0x3fd406fac6045baf              # double 0.31292599999999998
	.quad	0x3fd9642396073de2              # double 0.39673700000000001
	.quad	0x3fee46801711947d              # double 0.946106
	.quad	0x3fdf7763e4abe6a3              # double 0.49166199999999999
	.quad	0x3fef7a89331a08c0              # double 0.98370800000000002
	.quad	0x3fb2ba6aca793576              # double 0.073157
	.quad	0x3fea50e779207d4e              # double 0.822376
	.quad	0x3fe2f8055fbb517a              # double 0.59277599999999997
	.quad	0x3fde5935fc3b4f61              # double 0.47419499999999998
	.quad	0x3fe92778140dd3fe              # double 0.78606799999999999
	.quad	0x3fbc9f72f76e6107              # double 0.111808
	.quad	0x3fc846d82ba5a038              # double 0.189662
	.quad	0x3fc9af6c69b5a640              # double 0.20066600000000001
	.quad	0x3fdf21294573a798              # double 0.48639900000000003
	.quad	0x3fe299c7bcc2938e              # double 0.58127200000000001
	.quad	0x3fd0f9e7b80a9de9              # double 0.26525300000000002
	.quad	0x3fb996744b2b777d              # double 0.099951999999999999
	.quad	0x3fcb2af1455219a8              # double 0.21224799999999999
	.quad	0x3fe13923a29c779a              # double 0.53822499999999995
	.quad	0x3feb33311a543f1c              # double 0.84999899999999994
	.quad	0x3fd4d58c8eef1bac              # double 0.32553399999999999
	.quad	0x3fe6105e1c15097d              # double 0.68949800000000006
	.quad	0x3fd3409e55c0fcb5              # double 0.300819
	.quad	0x3fe2479d4d834092              # double 0.57124200000000003
	.quad	0x3fc0c6c54bcf0b6b              # double 0.13106599999999999
	.quad	0x3fe1b9b456b441bc              # double 0.55391900000000005
	.quad	0x3fad821294573a79              # double 0.057632999999999997
	.quad	0x3fe8f15831f03d14              # double 0.77946099999999995
	.quad	0x3fe68b6f9fcb0c02              # double 0.70452099999999995
	.quad	0x3fdde6ff7dfa00e2              # double 0.46722399999999997
	.quad	0x3fdbea52ef911cf3              # double 0.43617699999999998
	.quad	0x3fe5023422467be5              # double 0.65651899999999996
	.quad	0x3fefd52c16df3f96              # double 0.99477199999999999
	.quad	0x3fe34e618ce2d1f2              # double 0.60331800000000002
	.quad	0x3fc6271fff79c843              # double 0.173069
	.quad	0x3fc16006d0d4994a              # double 0.135743
	.quad	0x3fe95b1c864883fd              # double 0.79237199999999997
	.quad	0x3fea838c111ada77              # double 0.82855800000000002
	.quad	0x3fe79de8b3b32053              # double 0.73802599999999996
	.quad	0x3fe32edbb59ddc1e              # double 0.59946999999999995
	.quad	0x3fecc903ea704bc2              # double 0.89953799999999995
	.quad	0x3fd0b24a6a875d57              # double 0.260882
	.quad	0x3fde5d18090b417d              # double 0.47443200000000002
	.quad	0x3fe6a5a469d7342f              # double 0.70772000000000002
	.quad	0x3f8443d46b26bf87              # double 0.0098949999999999992
	.quad	0x3fef9b5c7cd898b3              # double 0.987715
	.quad	0x3fe8c47c30d306a3              # double 0.77398500000000003
	.quad	0x3fe812ff4ba51a00              # double 0.75231899999999996
	.quad	0x3fe603cafb3b7521              # double 0.68796299999999999
	.quad	0x3fd7320535c9e668              # double 0.36242799999999997
	.quad	0x3f9fa26a22b3892f              # double 0.030893
	.quad	0x3fc93797460242d0              # double 0.19700899999999999
	.quad	0x3febcfd4bf0995ab              # double 0.86912
	.quad	0x3fe018cc144028e5              # double 0.503027
	.quad	0x3fd5e95faa8a82a5              # double 0.34236899999999998
	.quad	0x3fec9784ec636b09              # double 0.89349599999999996
	.quad	0x3fe801dc0db2702a              # double 0.75022699999999998
	.quad	0x3fc8bd9018e75793              # double 0.19328500000000001
	.quad	0x3fd3b6c7a7c9de05              # double 0.308031
	.quad	0x3fd41bb05faebc41              # double 0.31419000000000002
	.quad	0x3fee46bce8533b10              # double 0.94613499999999995
	.quad	0x3fe3f53e707e175d              # double 0.62368699999999999
	.quad	0x3fda3226c3b927d4              # double 0.40931099999999998
	.quad	0x3f9779e9d0e991ff              # double 0.022925999999999998
	.quad	0x3fe4a0168b5cbff4              # double 0.64454199999999995
	.quad	0x3fe999439de481f5              # double 0.79995899999999998
	.quad	0x3fd07607c4199fe4              # double 0.25720399999999999
	.quad	0x3fd421c044284dfd              # double 0.31456000000000001
	.quad	0x3feccf52b90a7829              # double 0.900308
	.quad	0x3feb31df761cbccf              # double 0.84983799999999998
	.quad	0x3fdd3d6c72192210              # double 0.456874
	.quad	0x3fe5f262888b545c              # double 0.68583799999999995
	.quad	0x3fe08e25c810a56a              # double 0.51735200000000003
	.quad	0x3fd318e325d4a5df              # double 0.29839399999999999
	.quad	0x3fe72a10e0221427              # double 0.723885
	.quad	0x3fd27b9e060fe47a              # double 0.28879500000000002
	.quad	0x3fee862f5989df11              # double 0.95387999999999995
	.quad	0x3fdb6bd6e8af8162              # double 0.42845699999999998
	.quad	0x3fc22ea0fd3b29a2              # double 0.14204800000000001
	.quad	0x3feccad794a6eb92              # double 0.89976100000000003
	.quad	0x3fea5edf1e0828c3              # double 0.82408099999999995
	.quad	0x3fd10192a737110e              # double 0.26572099999999998
	.quad	0x3fd88216c61522a7              # double 0.38294
	.quad	0x3fe79667b5f1bef5              # double 0.73711000000000004
	.quad	0x3fd0b81f969e3c97              # double 0.26123800000000003
	.quad	0x3fe875d78811b1d9              # double 0.76438499999999998
	.quad	0x3fe93cfb3311a544              # double 0.788694
	.quad	0x3fe342224edf6124              # double 0.601823
	.quad	0x3fce86f8ad256799              # double 0.23849400000000001
	.quad	0x3fd6f0dc768dfbd7              # double 0.35845100000000002
	.quad	0x3fd8af5771001d5c              # double 0.38570199999999999
	.quad	0x3fd0411c2a023209              # double 0.25397399999999998
	.quad	0x3fe988aac96cc5fc              # double 0.797933
	.quad	0x3fe5539da16616b5              # double 0.66645699999999997
	.quad	0x3fb29680e0653006              # double 0.072609000000000007
	.quad	0x3fdb71a3b14a9047              # double 0.428811
	.quad	0x3fd2f1737542a23c              # double 0.295987
	.quad	0x3fdb372e6a76965f              # double 0.42524299999999998
	.quad	0x3fd94573a797891e              # double 0.39486399999999999
	.quad	0x3fb9ab29e4d5d80e              # double 0.100268
	.quad	0x3fe62ce89656eefa              # double 0.69298199999999999
	.quad	0x3fdd4ac6cdaf4adc              # double 0.45768900000000001
	.quad	0x3fe8dd3996fa82e8              # double 0.77700499999999995
	.quad	0x3fe530b9dc2f405f              # double 0.66219799999999995
	.quad	0x3fb4cac4b4d056c5              # double 0.081219
	.quad	0x3fed32a6b0d95140              # double 0.91243300000000005
	.quad	0x3fdbf7dfa00e27e1              # double 0.437004
	.quad	0x3fcc4bd33d29563b              # double 0.22106400000000001
	.quad	0x3fec98fa376922d9              # double 0.89367399999999997
	.quad	0x3fe0dc03361565c3              # double 0.52685700000000002
	.quad	0x3fd1a07b352a8438              # double 0.27542
	.quad	0x3f8fa3b9ae0c1765              # double 0.015448999999999999
	.quad	0x3fe953e0bd44998d              # double 0.791489
	.quad	0x3fddcb81733226c4              # double 0.46554600000000002
	.quad	0x3fc6e368f08461fa              # double 0.178815
	.quad	0x3fe74028e4fb97bb              # double 0.72658199999999995
	.quad	0x3fc73b29a1b9f98b              # double 0.18149299999999999
	.quad	0x3fe46f2e8c0485a1              # double 0.63857200000000003
	.quad	0x3f95cfede97d06bc              # double 0.021301
	.quad	0x3fe11ce075f6fd22              # double 0.534775
	.quad	0x3febcf7ec3547e07              # double 0.86907900000000005
	.quad	0x3fe6c2f837b4a234              # double 0.71130000000000004
	.quad	0x3feb2b7564302b41              # double 0.849055
	.quad	0x3fa6a7ac81d3aa37              # double 0.044248000000000003
	.quad	0x3fe4931ca7d6733f              # double 0.64295800000000003
	.quad	0x3fd9e5604189374c              # double 0.40462500000000001
	.quad	0x3fe95a554b8bef8d              # double 0.79227700000000001
	.quad	0x3fece555c52e72da              # double 0.90299499999999999
	.quad	0x3fefa66ba493c89f              # double 0.98906499999999997
	.quad	0x3fe13e89a88ace25              # double 0.53888400000000003
	.quad	0x3fdf385c67dfe32a              # double 0.487815
	.quad	0x3fd28fcd67fd3f5b              # double 0.29002699999999998
	.quad	0x3fe830b178b37004              # double 0.75594399999999994
	.quad	0x3fd86a6e32e3821b              # double 0.381496
	.quad	0x3fea5983947496ab              # double 0.82342700000000002
	.quad	0x3fc862b27cbf6e3f              # double 0.19051199999999999
	.quad	0x3fc8d1d8a5482385              # double 0.19390399999999999
	.quad	0x3fe0405d52c16df4              # double 0.507857
	.quad	0x3f9e004b7f5a5333              # double 0.029298000000000001
	.quad	0x3fecc6c54bcf0b6b              # double 0.89926399999999995
	.quad	0x3fee5e6149c6f36f              # double 0.949021
	.quad	0x3fccbc621b7e0ac8              # double 0.224499
	.quad	0x3fc9c432ca57a787              # double 0.20130000000000001
	.quad	0x3fd1004b7f5a5333              # double 0.26564300000000002
	.quad	0x3fc0f3fd933e35c6              # double 0.13244600000000001
	.quad	0x3fe82b3461309c80              # double 0.755274
	.quad	0x3fe0e11fd5885d31              # double 0.52748099999999998
	.quad	0x3fe705ec3dab5c3a              # double 0.71947300000000003
	.quad	0x3fe9482e019b0ab3              # double 0.79006100000000001
	.quad	0x3fe9173d9ec70004              # double 0.78408699999999997
	.quad	0x3fe8d538ac18f81f              # double 0.77602800000000005
	.quad	0x3feeb32f01754b06              # double 0.95937300000000003
	.quad	0x3fe239b66f9335d2              # double 0.56954499999999997
	.quad	0x3fea6d783dff3f10              # double 0.82586300000000001
	.quad	0x3fcd94a6eb91b3f2              # double 0.231099
	.quad	0x3fea76683c297bfa              # double 0.82695399999999997
	.quad	0x3f81ec918e325d4a              # double 0.0087519999999999994
	.quad	0x3fdea21a719b4dcf              # double 0.47864400000000001
	.quad	0x3fe57f2e48e8a71e              # double 0.67177500000000001
	.quad	0x3fc5a11233df2a9d              # double 0.16897799999999999
	.quad	0x3fdc83ad9f0a1be3              # double 0.44553700000000002
	.quad	0x3fbf201040bfe3b0              # double 0.121583
	.quad	0x3fee8be2f7b17ce5              # double 0.95457599999999998
	.quad	0x3fd4ea2d2fe3f35a              # double 0.326793
	.quad	0x3fdaa26a22b3892f              # double 0.41616300000000001
	.quad	0x3fdcfae3608d0892              # double 0.45281300000000002
	.quad	0x3fde44b6e935b91f              # double 0.47294399999999998
	.quad	0x3fea280f12c27a63              # double 0.81738999999999995
	.quad	0x3fde38fffbce4218              # double 0.47222900000000001
	.quad	0x3fd79042d8c2a455              # double 0.36818000000000001
	.quad	0x3feb49774256bca5              # double 0.85271799999999998
	.quad	0x3fe038583621fafd              # double 0.50687800000000005
	.quad	0x3fd0dcb9a9da597d              # double 0.26347199999999998
	.quad	0x3fd0ec636b096356              # double 0.264428
	.quad	0x3fe37dd00f776c48              # double 0.60910799999999998
	.quad	0x3fea0229a5ebb774              # double 0.81276400000000004
	.quad	0x3fe5fb1e18efbb0e              # double 0.68690399999999996
	.quad	0x3fc337110e453d21              # double 0.150118
	.quad	0x3f9e2da554b8bef9              # double 0.029471000000000001
	.quad	0x3feabecedd484513              # double 0.83579199999999998
	.quad	0x3fda57f3061c79b3              # double 0.41161799999999998
	.quad	0x3fe500a9de8b3b32              # double 0.656331
	.quad	0x3fd42c16df3f9618              # double 0.315191
	.quad	0x3fba4ead0c3d2524              # double 0.10276299999999999
	.quad	0x3fd28650e779207d              # double 0.28944799999999998
	.quad	0x3fea2cd184c27200              # double 0.817971
	.quad	0x3feaa9dc725c3dee              # double 0.83323499999999995
	.quad	0x3fe8fd06bbdbe3c1              # double 0.780887
	.quad	0x3fd12bba98eda22f              # double 0.26829399999999998
	.quad	0x3f878e5c4eb56fb9              # double 0.011502
	.quad	0x3fe674a771c970f8              # double 0.70174000000000003
	.quad	0x3fdedfa871a3b14b              # double 0.48240100000000002
	.quad	0x3fd16249a133c1ce              # double 0.27162399999999998
	.quad	0x3fec5e39713ad5bf              # double 0.88650200000000001
	.quad	0x3fdb7d028a1dfb94              # double 0.42950500000000003
	.quad	0x3fdb28cbd1244a62              # double 0.42436499999999999
	.quad	0x3feabe7d1351159c              # double 0.83575299999999996
	.quad	0x3fc7401c4fc1df33              # double 0.181644
	.quad	0x3fedd6b873797460              # double 0.93246099999999998
	.quad	0x3fef11dde37585be              # double 0.97093099999999999
	.quad	0x3fcac17ebaf10236              # double 0.20902999999999999
	.quad	0x3fda40420f6f08cc              # double 0.41017199999999998
	.quad	0x3fe22acb85a4f00f              # double 0.56772400000000001
	.quad	0x3fe0f43c7d5ed070              # double 0.52981400000000001
	.quad	0x3fe4743c7d5ed070              # double 0.63918900000000001
	.quad	0x3fe23f4eca686e7e              # double 0.57022799999999996
	.quad	0x3fd0c35ce1826677              # double 0.26192399999999999
	.quad	0x3fc8e04c05921038              # double 0.19434499999999999
	.quad	0x3fe1c0895d0b73d2              # double 0.55475300000000005
	.quad	0x3fc16640a6b93ccd              # double 0.135933
	.quad	0x3feafc6da4484945              # double 0.84331400000000001
	.quad	0x3feac6195464dc23              # double 0.83668200000000004
	.quad	0x3fee71ae2da554b9              # double 0.95137700000000003
	.quad	0x3fe92cfd8f0c77de              # double 0.78674200000000005
	.quad	0x3fc0d3e0bd44998d              # double 0.131466
	.quad	0x3fd8e5e679463cfb              # double 0.38903199999999999
	.quad	0x3feaf05a708ede55              # double 0.84184000000000003
	.quad	0x3fe350b524399b2c              # double 0.60360199999999997
	.quad	0x3fe1013660e51d26              # double 0.53139800000000004
	.quad	0x3fed96638433d6c7              # double 0.92460799999999999
	.quad	0x3fcdb39e279dd3bb              # double 0.232044
	.quad	0x3fe05271bcdbbe01              # double 0.51006399999999996
	.quad	0x3fe9c6c764adff82              # double 0.80551499999999998
	.quad	0x3fefa99524bfd2e9              # double 0.98945099999999996
	.quad	0x3fdb2e9899bf5947              # double 0.42471900000000001
	.quad	0x3fe1f3d7d3910c2c              # double 0.56101599999999996
	.quad	0x3fe7753825e13b19              # double 0.73305900000000002
	.quad	0x3fe1ab990afe60c4              # double 0.55219700000000005
	.quad	0x3fb8dda48b652370              # double 0.097131999999999996
	.quad	0x3fe5215db3397dd0              # double 0.66032299999999999
	.quad	0x3fe78fecdd0d8cb0              # double 0.73631899999999995
	.quad	0x3fd7d4845132f87b              # double 0.37234600000000001
	.quad	0x3fe0949c6f36ef80              # double 0.51814099999999996
	.quad	0x3fe6ff4128bf3beb              # double 0.71865900000000005
	.quad	0x3fea3ae46cfc829d              # double 0.819689
	.quad	0x3fe0f26f1dc50ce5              # double 0.52959400000000001
	.quad	0x3fe6a6fc58ab92c0              # double 0.70788399999999996
	.quad	0x3fd7b1359791819d              # double 0.37019099999999999
	.quad	0x3f9bf727136a4010              # double 0.027310000000000001
	.quad	0x3fb5184c271fff7a              # double 0.082402000000000003
	.quad	0x3fb7c01a36e2eb1c              # double 0.092774999999999996
	.quad	0x3f9f15a4acf312b2              # double 0.030356000000000001
	.quad	0x3fe0f281fd9ba1b2              # double 0.52960300000000005
	.quad	0x3fc836f3b213e3e3              # double 0.18917700000000001
	.quad	0x3fde4484944ed6fe              # double 0.47293200000000002
	.quad	0x3fa3ebe1650a45d4              # double 0.038908999999999999
	.quad	0x3fd2332acfb762d8              # double 0.28437299999999999
	.quad	0x3fe3566cf41f212d              # double 0.60429999999999995
	.quad	0x3fee433b5393250b              # double 0.94570699999999996
	.quad	0x3fdc0ccff21b3aef              # double 0.438282
	.quad	0x3fef0b5675579af2              # double 0.97013400000000005
	.quad	0x3febc88e79aae6c9              # double 0.868232
	.quad	0x3fda14e3bcd35a86              # double 0.40752500000000003
	.quad	0x3fbad22424a276b8              # double 0.104769
	.quad	0x3fea47607c4199fe              # double 0.82121299999999997
	.quad	0x3fa6666666666666              # double 0.043749999999999997
	.quad	0x3fef784ec636b096              # double 0.98343599999999998
	.quad	0x3fea44fe36d22425              # double 0.82092200000000004
	.quad	0x3fe2d7cd466f501a              # double 0.58884300000000001
	.quad	0x3fe1f1172ef0ae53              # double 0.56067999999999996
	.quad	0x3f92d59d55e6bc62              # double 0.018393
	.quad	0x3fc5b7ae5796bfcb              # double 0.16966800000000001
	.quad	0x3fde8c154c985f07              # double 0.4773
	.quad	0x3fe6118a009f6230              # double 0.68964099999999995
	.quad	0x3fe1e3cd9a52263e              # double 0.55905800000000005
	.quad	0x3fc09728a6117721              # double 0.12961300000000001
	.quad	0x3fdea58b3f63c31e              # double 0.478854
	.quad	0x3fd710fd7e45803d              # double 0.36041200000000001
	.quad	0x3fe6904d551d68c7              # double 0.70511500000000005
	.quad	0x3fcaebdd334c5da7              # double 0.21032300000000001
	.quad	0x3fee2c2bd7f51efb              # double 0.94289199999999995
	.quad	0x3fe24aeea63b688c              # double 0.57164700000000002
	.quad	0x3fea0e8c8abd5dc4              # double 0.81427599999999999
	.quad	0x3fed69f6a93f290b              # double 0.91918500000000003
	.quad	0x3fef69ad42c3c9ef              # double 0.98165000000000002
	.quad	0x3fea507c84b5dcc6              # double 0.82232499999999997
	.quad	0x3fb65b0ff10ecb75              # double 0.087327000000000002
	.quad	0x3fce09cc319c5a3e              # double 0.23467399999999999
	.quad	0x3fd26eac8605681f              # double 0.28800500000000001
	.quad	0x3fe6c812be48a58b              # double 0.71192299999999997
	.quad	0x3fb950a88effe2a4              # double 0.098887000000000002
	.quad	0x3fdd1ffb480a5acd              # double 0.45507700000000001
	.quad	0x3fecb72a38b8ae32              # double 0.89735900000000002
	.quad	0x3fea87fed20296b3              # double 0.82910099999999998
	.quad	0x3fa664b2314013ec              # double 0.043736999999999998
	.quad	0x3fe69a8049667b5f              # double 0.70635999999999999
	.quad	0x3f8c254a3c64345d              # double 0.013743
	.quad	0x3fc03621fafc8b00              # double 0.12665199999999999
	.quad	0x3fe59b66f9335d25              # double 0.67522000000000004
	.quad	0x3fc8bdfd2630ec31              # double 0.193298
	.quad	0x3fb025bfad299956              # double 0.063075999999999993
	.quad	0x3feec10d7be9856a              # double 0.96106599999999998
	.quad	0x3fcf7ecbb7f9d6f1              # double 0.246057
	.quad	0x3fea732df505d0fa              # double 0.82655999999999996
	.quad	0x3fef52502eec7c95              # double 0.97879799999999994
	.quad	0x3fc902ff8ec0f883              # double 0.19540399999999999
	.quad	0x3feaec226809d495              # double 0.84132499999999999
	.quad	0x3fe64d6c2efd438d              # double 0.69695099999999999
	.quad	0x3fdfc4b4d056c509              # double 0.49638100000000002
	.quad	0x3feec679cc74b839              # double 0.96172800000000002
	.quad	0x3fe9c94f69ca9ef5              # double 0.80582399999999998
	.quad	0x3feff620ee8d10f5              # double 0.99879499999999998
	.quad	0x3fe4f04ff43419e3              # double 0.654335
	.quad	0x3fe313d96638433d              # double 0.59617299999999995
	.quad	0x3fc007570c564f98              # double 0.125224
	.quad	0x3fe56bfec13b9f12              # double 0.66943299999999994
	.quad	0x3fe99b17481b21c4              # double 0.80018199999999994
	.quad	0x3febbaade657b84e              # double 0.86653800000000003
	.quad	0x3fd38e7ddca4b125              # double 0.30557200000000001
	.quad	0x3fe4694467381d7e              # double 0.63785000000000003
	.quad	0x3fc54866a11ec919              # double 0.166272
	.quad	0x3fedce2b063e07a3              # double 0.93141700000000005
	.quad	0x3fbc85f4a1272c95              # double 0.111419
	.quad	0x3fdb0b630a91537a              # double 0.42257
	.quad	0x3fd82c0e7bc3c5bd              # double 0.377689
	.quad	0x3fce07570c564f98              # double 0.234599
	.quad	0x3fc4c9320d9945b7              # double 0.16239000000000001
	.quad	0x3fe0e6ba493c89f4              # double 0.528165
	.quad	0x3fa09dcf893faf42              # double 0.032453999999999997
	.quad	0x3fde5aa2e3c536d6              # double 0.47428199999999998
	.quad	0x3fd72e62131a8ef7              # double 0.36220599999999997
	.quad	0x3fdbe57d9dba908a              # double 0.43588199999999999
	.quad	0x3fe88dcfcc5b8dc5              # double 0.76731099999999997
	.quad	0x3f8a3a08398a6549              # double 0.012806
	.quad	0x3fd5b8dc55000c95              # double 0.33940799999999999
	.quad	0x3feb10eed02cd39e              # double 0.84581700000000004
	.quad	0x3fc770cdc8754f37              # double 0.18312999999999999
	.quad	0x3fe00c9320d9945b              # double 0.50153499999999995
	.quad	0x3fd63c68661ae70c              # double 0.347437
	.quad	0x3fb2e2eb1c432ca5              # double 0.073774999999999993
	.quad	0x3fbdfd8adab9f55a              # double 0.11715
	.quad	0x3fd3c5eb313be22e              # double 0.30895499999999998
	.quad	0x3fa7be553ac4f7ec              # double 0.046373999999999999
	.quad	0x3fd404816f0068dc              # double 0.31277500000000003
	.quad	0x3fe0cb945308bb90              # double 0.52485099999999996
	.quad	0x3fe6c013ec460ed8              # double 0.710947
	.quad	0x3fe398b2e9ccb7d4              # double 0.61238999999999999
	.quad	0x3fbefdda8bd230ba              # double 0.121061
	.quad	0x3fea79a6b50b0f28              # double 0.82735000000000003
	.quad	0x3fe7300bcbe61d00              # double 0.72461500000000001
	.quad	0x3fdd867ad8e43244              # double 0.46133299999999999
	.quad	0x3fc8dae3e6c4c597              # double 0.19417999999999999
	.quad	0x3fdfb2b777d0f1f5              # double 0.49528299999999997
	.quad	0x3fc4b8c75c4a83b2              # double 0.16188900000000001
	.quad	0x3fe1239a38fbca10              # double 0.53559599999999996
	.quad	0x3fed53dea465a576              # double 0.91648799999999997
	.quad	0x3fade99e94ab1d50              # double 0.058423000000000003
	.quad	0x3fedbc46d82ba5a0              # double 0.92923299999999997
	.quad	0x3fc03ffef39085f5              # double 0.12695300000000001
	.quad	0x3fd5fba01eeed890              # double 0.34348299999999998
	.quad	0x3fe66f262888b546              # double 0.70106800000000002
	.quad	0x3fe95b39e279dd3c              # double 0.79238600000000003
	.quad	0x3fda77ccc0379314              # double 0.41356199999999999
	.quad	0x3fdae4c51116a8b9              # double 0.420213
	.quad	0x3fe7f78359bc33f8              # double 0.74896399999999996
	.quad	0x3fe266afcce1c582              # double 0.57503499999999996
	.quad	0x3fc91dabe27179c0              # double 0.196218
	.quad	0x3f9042d8c2a454de              # double 0.015879999999999998
	.quad	0x3fc50f94c87980f5              # double 0.16453799999999999
	.quad	0x3fc032f449129889              # double 0.126555
	.quad	0x3fefcec204f2ae08              # double 0.99398900000000001
	.quad	0x3fe80a159817b95a              # double 0.75123099999999998
	.quad	0x3fce66772d5e071c              # double 0.23750199999999999
	.quad	0x3fe2d7abb8800eae              # double 0.58882699999999999
	.quad	0x3fba6f9335d249e4              # double 0.103265
	.quad	0x3fe919b4dcebfec1              # double 0.78438799999999997
	.quad	0x3fe26596c82e019b              # double 0.574901
	.quad	0x3fe9ced4e4c942d5              # double 0.80649800000000005
	.quad	0x3fe966ab9b23dd55              # double 0.79378300000000002
	.quad	0x3fdc04ff43419e30              # double 0.437805
	.quad	0x3fe4877ab324851b              # double 0.64153800000000005
	.quad	0x3fd7a7503b81b64e              # double 0.369587
	.quad	0x3fe1886bdf4c2b52              # double 0.54790300000000003
	.quad	0x3fb2786c226809d5              # double 0.072150000000000006
	.quad	0x3fedfc286f8ad256              # double 0.93703099999999995
	.quad	0x3fe54cd0fe8ab4fa              # double 0.66562699999999997
	.quad	0x3fd842070b8cfbfc              # double 0.37902999999999998
	.quad	0x3fef6093532e7b3e              # double 0.98053900000000005
	.quad	0x3fe0f281fd9ba1b2              # double 0.52960300000000005
	.quad	0x3feec63f141205bc              # double 0.96169999999999999
	.quad	0x3fd021d96e9bbf0e              # double 0.25206600000000001
	.quad	0x3fefd3586ca89fc7              # double 0.99454900000000001
	.quad	0x3fe9965d3996fa83              # double 0.79960500000000001
	.quad	0x3fe308893b7d8490              # double 0.59479199999999999
	.quad	0x3faf4be835dedf1e              # double 0.061126
	.quad	0x3fb1c5a3e39f7729              # double 0.069421999999999998
	.quad	0x3fe9ea3df6db9410              # double 0.80984400000000001
	.quad	0x3f66dd26b723ee1c              # double 0.0027910000000000001
	.quad	0x3fede21101b00368              # double 0.93384599999999995
	.quad	0x3fd762456f75d9a1              # double 0.365373
	.quad	0x3fbbeda661283904              # double 0.109095
	.quad	0x3fc9af965b20b806              # double 0.20067099999999999
	.quad	0x3fe97329c347e8cd              # double 0.79530800000000001
	.quad	0x3fd7490e66cb1034              # double 0.36383399999999999
	.quad	0x3fdfac4f7ec3547e              # double 0.494892
	.quad	0x3fbbed41b75a74c1              # double 0.10908900000000001
	.quad	0x3fe5b09c7ffde721              # double 0.67780899999999999
	.quad	0x3febefd438d1d8a5              # double 0.87302599999999997
	.quad	0x3feae9fcf3dc054f              # double 0.84106300000000001
	.quad	0x3fdb60780fdc1616              # double 0.427763
	.quad	0x3fe72bffcdab191e              # double 0.72412100000000001
	.quad	0x3fdbd96638433d6c              # double 0.43514399999999998
	.quad	0x3fe9025bfad29995              # double 0.78153799999999995
	.quad	0x3fe686a6e32e3822              # double 0.70393700000000003
	.quad	0x3fe33497b7414a4d              # double 0.60016999999999998
	.quad	0x3fc830b9dc2f405f              # double 0.18898699999999999
	.quad	0x3fe96adb402d16b9              # double 0.79429399999999994
	.quad	0x3fe57c158fb43d8a              # double 0.67139700000000002
	.quad	0x3fe628522ea0fd3b              # double 0.69242199999999998
	.quad	0x3fe08270f3882279              # double 0.51592300000000002
	.quad	0x3fefd5bee3d5fdce              # double 0.994842
	.quad	0x3fdec74b838c111b              # double 0.48091400000000001
	.quad	0x3fd6778140dd3fe2              # double 0.35104400000000002
	.quad	0x3fa0c4dec1c1d6d0              # double 0.032752000000000003
	.quad	0x3feeb0d51f81a587              # double 0.95908599999999999
	.quad	0x3fdb2da554b8bef9              # double 0.42466100000000001
	.quad	0x3fee8897e996312f              # double 0.95417399999999997
	.quad	0x3fd8555821294574              # double 0.38020900000000002
	.quad	0x3fdf96a6a012599f              # double 0.49357000000000001
	.quad	0x3faf8bdec5f394b8              # double 0.061614000000000002
	.quad	0x3f826634117f8445              # double 0.0089840000000000006
	.quad	0x3fd46b8b69552e30              # double 0.31906400000000001
	.quad	0x3fdbfd8f0c77dd87              # double 0.43735099999999999
	.quad	0x3fc7f1a5ca29845e              # double 0.18706200000000001
	.quad	0x3fe5d3a604e1e710              # double 0.68208599999999997
	.quad	0x3fe15d8b60f1b25f              # double 0.54266899999999996
	.quad	0x3fef849667b5f1bf              # double 0.984935
	.quad	0x3fde3b0813cab820              # double 0.47235300000000002
	.quad	0x3fa79c842fa50939              # double 0.046115999999999997
	.quad	0x3fc60181e03f7058              # double 0.17192099999999999
	.quad	0x3fc3620ee8d10f52              # double 0.15143000000000001
	.quad	0x3fea51a86940357a              # double 0.82246799999999998
	.quad	0x3feaf807789a4591              # double 0.842777
	.quad	0x3fe0654f7a919696              # double 0.51236700000000002
	.quad	0x3fb6920c069e7fb2              # double 0.088165999999999994
	.quad	0x3fe205dfa871a3b1              # double 0.56321699999999997
	.quad	0x3f9ac14c660a2014              # double 0.026127999999999998
	.quad	0x3feb6640a6b93ccd              # double 0.85623199999999999
	.quad	0x3feb5f3b645a1cac              # double 0.85537499999999999
	.quad	0x3fe6039cd8127b2d              # double 0.68794100000000002
	.quad	0x3fea8709741d084f              # double 0.82898400000000005
	.quad	0x3fe2c3419e300150              # double 0.58633500000000005
	.quad	0x3fe8fa1c25d07421              # double 0.78053099999999997
	.quad	0x3fd84eb13dfb0d52              # double 0.379803
	.quad	0x3fba86d71f36262d              # double 0.10362
	.quad	0x3fd7cf7878b7a1c2              # double 0.37203799999999998
	.quad	0x3fe14ac083126e98              # double 0.54037500000000005
	.quad	0x3fea571d1d4738a4              # double 0.82313400000000003
	.quad	0x3fd2fab10ba62670              # double 0.29655100000000001
	.quad	0x3fe21c6f36ef8056              # double 0.565971
	.quad	0x3fe827bd48cb4aed              # double 0.75485100000000005
	.quad	0x3f606466b1e5c0ba              # double 0.0020010000000000002
	.quad	0x3fdcdccea28fe261              # double 0.45097700000000002
	.quad	0x3fde7db6e503fb37              # double 0.47642299999999999
	.quad	0x3fd600d5e8d54110              # double 0.34380100000000002
	.quad	0x3f9192a737110e45              # double 0.017160999999999999
	.quad	0x3fc197bb73083559              # double 0.13744300000000001
	.quad	0x3fed361fe21d96ea              # double 0.91285700000000003
	.quad	0x3fe4364388ebcc6c              # double 0.63162399999999996
	.quad	0x3fe2f23033a4723b              # double 0.59206400000000003
	.quad	0x3fe21210385c67e0              # double 0.56470500000000001
	.quad	0x3f8f090f733a8a40              # double 0.015154000000000001
	.quad	0x3fe5d30ad46f587d              # double 0.68201199999999995
	.quad	0x3fe2a72c94b380cb              # double 0.58290699999999995
	.quad	0x3fbfc6fbd273d5bb              # double 0.12413
	.quad	0x3fd3adab9f559b3d              # double 0.307475
	.quad	0x3fe29be8ff327aa7              # double 0.58153200000000005
	.quad	0x3fd49a38fbca105a              # double 0.321913
	.quad	0x3fee453f39d1b2e6              # double 0.94595300000000004
	.quad	0x3fd4cd31769a9110              # double 0.32502399999999998
	.quad	0x3fc0158fb43d89ce              # double 0.12565799999999999
	.quad	0x3fe8f1f79420b3d5              # double 0.77953700000000004
	.quad	0x3fdd09d495182a99              # double 0.45372499999999999
	.quad	0x3fd476d549731099              # double 0.31975300000000001
	.quad	0x3fd90e0eb67c2870              # double 0.39148300000000003
	.quad	0x3fe8024b33daf8df              # double 0.75027999999999995
	.quad	0x3fe277c02afdda8c              # double 0.57711800000000002
	.quad	0x3fe3b7521144cbe2              # double 0.61612800000000001
	.quad	0x3fd4772d5e071c54              # double 0.319774
	.quad	0x3fe317bd8be7296f              # double 0.59664799999999996
	.quad	0x3fe7953586ca89fc              # double 0.73696399999999995
	.quad	0x3fe0ead2dcb1465f              # double 0.52866500000000005
	.quad	0x3fc552c16df3f962              # double 0.16658800000000001
	.quad	0x3fc00bbb1f255f35              # double 0.125358
	.quad	0x3fe6d992428d434a              # double 0.714059
	.quad	0x3fd4ec743201040c              # double 0.326932
	.quad	0x3fe13688bda9435b              # double 0.53790700000000002
	.quad	0x3fe213a0c6b484d7              # double 0.56489599999999995
	.quad	0x3fcfa89331a08bfc              # double 0.247332
	.quad	0x3fe91eeed8904f6e              # double 0.785026
	.quad	0x3fe930318b934699              # double 0.78713299999999997
	.quad	0x3fef901f31f46ed2              # double 0.98634299999999997
	.quad	0x3fcfff609dcf8940              # double 0.24998100000000001
	.quad	0x3feee8cac4b4d057              # double 0.96591700000000002
	.quad	0x3fa60157eed45e92              # double 0.042979000000000003
	.quad	0x3fe85b39e279dd3c              # double 0.76113600000000003
	.quad	0x3fbb608d08919ef9              # double 0.106942
	.quad	0x3fdabaa1511dffc5              # double 0.41764099999999998
	.quad	0x3fe47b3b7521144d              # double 0.64004300000000003
	.quad	0x3fe4da5332acfb76              # double 0.65165099999999998
	.quad	0x3fdf8cc9a77e5eab              # double 0.49296800000000002
	.quad	0x3f9739b024f6598e              # double 0.022681
	.quad	0x3fdb3eb399f5dfec              # double 0.42570200000000002
	.quad	0x3fd0890d5a5b9629              # double 0.25836500000000001
	.quad	0x3fe8c53b0813cab8              # double 0.77407599999999999
	.quad	0x3fb88e68e3ef2841              # double 0.095922999999999994
	.quad	0x3fd1b26bf8769ec3              # double 0.27651500000000001
	.quad	0x3fcdd5f56a7ac81d              # double 0.23309199999999999
	.quad	0x3fe00485a0be5109              # double 0.500552
	.quad	0x3fe67fe4bcad9ad8              # double 0.70311199999999996
	.quad	0x3fe2aeb80ecfa69c              # double 0.58382800000000001
	.quad	0x3fe12be48a58b3f6              # double 0.53660799999999997
	.quad	0x3fe3701322f27350              # double 0.60743100000000005
	.quad	0x3fce0789613d31ba              # double 0.23460500000000001
	.quad	0x3fe163b8a19c9d5a              # double 0.54342299999999999
	.quad	0x3fe02a0a958537e3              # double 0.50513200000000003
	.quad	0x3fca8c3f3e0370ce              # double 0.20740500000000001
	.quad	0x3fd6d30ad46f587d              # double 0.35663099999999998
	.quad	0x3fc01c044284dfce              # double 0.12585499999999999
	.quad	0x3fe95dfc9ff92f2b              # double 0.79272299999999996
	.quad	0x3fca6eb91b3f20a7              # double 0.20650399999999999
	.quad	0x3fc0653005814941              # double 0.12808800000000001
	.quad	0x3fe4a10385c67dfe              # double 0.64465499999999998
	.quad	0x3fee8b6b6e0d23d5              # double 0.95451900000000001
	.quad	0x3fbd1676640a6b94              # double 0.113624
	.quad	0x3fd22d0e56041893              # double 0.28399999999999997
	.quad	0x3fe7b5525cc42635              # double 0.74088399999999999
	.quad	0x3fe6ddd2ae8e1d65              # double 0.71457800000000005
	.quad	0x3fdb13a0c6b484d7              # double 0.42307299999999998
	.quad	0x3fe35d50a88effe3              # double 0.60514100000000004
	.quad	0x3fd7642396073de2              # double 0.36548700000000001
	.quad	0x3fc2d50ebaade658              # double 0.14712700000000001
	.quad	0x3fea7587d6f97679              # double 0.826847
	.quad	0x3fe8f3a9b0681238              # double 0.77974399999999999
	.quad	0x3fa0c2c5e2cdc012              # double 0.032736000000000001
	.quad	0x3fde96b3354c1227              # double 0.47794799999999998
	.quad	0x3feefc0f45176146              # double 0.96826900000000005
	.quad	0x3fc67219220ff541              # double 0.17535700000000001
	.quad	0x3fe048a58b3f63c3              # double 0.50886799999999999
	.quad	0x3fb6147ae147ae14              # double 0.086249999999999993
	.quad	0x3fea9ec0b567557a              # double 0.83187900000000004
	.quad	0x3fde38b04ab606b8              # double 0.47221000000000002
	.quad	0x3fdde59f2ba9d1f6              # double 0.46714
	.quad	0x3fe7bf9c62a1b5c8              # double 0.74214000000000002
	.quad	0x3fdbb167ec7863bf              # double 0.432703
	.quad	0x3fd785a0be510907              # double 0.367531
	.quad	0x3fd6a7bd48cb4aed              # double 0.35398800000000002
	.quad	0x3fb7e5eaab042529              # double 0.093352000000000004
	.quad	0x3fe534a66559f6ec              # double 0.66267699999999996
	.quad	0x3fdcc83ec892ab69              # double 0.44972200000000001
	.quad	0x3fe7e3beec39799e              # double 0.74655099999999996
	.quad	0x3fd20e9d51b4fe7a              # double 0.282142
	.quad	0x3fc51deefe4ffc98              # double 0.16497600000000001
	.quad	0x3fe0051c9f72f76e              # double 0.50062399999999996
	.quad	0x3fe4016ce789e775              # double 0.62517400000000001
	.quad	0x3fbfda836eb4e981              # double 0.124428
	.quad	0x3fccae5bc87db2b3              # double 0.22407099999999999
	.quad	0x3fe98a84be40420f              # double 0.79815899999999995
	.quad	0x3fde532a497fa5d3              # double 0.47382600000000002
	.quad	0x3fbdadd9c27e9531              # double 0.115934
	.quad	0x3fdaaa5c5f7c675a              # double 0.41664800000000002
	.quad	0x3fe6e4302b40f66a              # double 0.71535499999999996
	.quad	0x3fd63e35c5b4aa97              # double 0.34754699999999999
	.quad	0x3fe6805c4651f3e9              # double 0.70316900000000004
	.quad	0x3fad65a14488c60d              # double 0.057416000000000002
	.quad	0x3fe7222b3892ee85              # double 0.72292100000000004
	.quad	0x3fc076d117b5286b              # double 0.12862599999999999
	.quad	0x3fd04d8ba40d90e2              # double 0.25473299999999999
	.quad	0x3fc43a19008205ff              # double 0.158023
	.quad	0x3fe2047d3d4280ae              # double 0.56304799999999999
	.quad	0x3fea27ae9ab29e4d              # double 0.81734399999999996
	.quad	0x3fe1e0c5a8155d5f              # double 0.55868799999999996
	.quad	0x3febf53a3ec02f30              # double 0.87368500000000004
	.quad	0x3fd2b18116ebd4d0              # double 0.29208400000000001
	.quad	0x3fe12322af577100              # double 0.53553899999999999
	.quad	0x3fef231c64ba94bc              # double 0.97303600000000001
	.quad	0x3fbdd7a99fa11a97              # double 0.116572
	.quad	0x3fd2e496ededaec5              # double 0.29520200000000002
	.quad	0x3fc78a0902de00d2              # double 0.18390000000000001
	.quad	0x3fee055970b49e02              # double 0.93815300000000001
	.quad	0x3fe716bb98c7e282              # double 0.72152499999999997
	.quad	0x3fe328d8665e02eb              # double 0.59873600000000005
	.quad	0x3fe61da7b0b39192              # double 0.69111999999999996
	.quad	0x3feddf202107b784              # double 0.93348699999999995
	.quad	0x3fd265f0f5a1016d              # double 0.28747200000000001
	.quad	0x3fd819f7f8ca8199              # double 0.376585
	.quad	0x3fbbc3504c48adef              # double 0.108449
	.quad	0x3fe17bca1059ea57              # double 0.54636099999999999
	.quad	0x3fe21c347e8ccdd9              # double 0.56594299999999997
	.quad	0x3fea3a57eaa2a0a9              # double 0.81962199999999996
	.quad	0x3fd4462c343b70ef              # double 0.31678299999999998
	.quad	0x3fe5dc91d14e3bcd              # double 0.68317499999999998
	.quad	0x3fc44606748e4756              # double 0.158387
	.quad	0x3fdd1b152f3c2dae              # double 0.45477800000000002
	.quad	0x3fd6eff1950331e4              # double 0.35839500000000002
	.quad	0x3fcdcfede97d06bc              # double 0.232908
	.quad	0x3feb436544fe36d2              # double 0.85197699999999998
	.quad	0x3fe42b9f559b3d08              # double 0.63032500000000002
	.quad	0x3fd9a98244e93e1d              # double 0.40097100000000002
	.quad	0x3fea49c4da9003ef              # double 0.82150500000000004
	.quad	0x3fd70d0247021d11              # double 0.36016900000000002
	.quad	0x3fd83a96d4c33b54              # double 0.37857600000000002
	.quad	0x3fd63eaf6837f7be              # double 0.347576
	.quad	0x3fe377c243dccea3              # double 0.60836900000000005
	.quad	0x3fe6d7d1782d3847              # double 0.71384499999999995
	.quad	0x3fedfdd00f776c48              # double 0.93723299999999998
	.quad	0x3f9814d72799a1fd              # double 0.023517
	.quad	0x3fbec99f1ae2da55              # double 0.120264
	.quad	0x3fc7fee2c98e53eb              # double 0.18746599999999999
	.quad	0x3fd188ace24bba13              # double 0.27396700000000002
	.quad	0x3fdf030c23fab10c              # double 0.48456100000000002
	.quad	0x3fe2ce0b912dba4d              # double 0.58765199999999995
	.quad	0x3fe7b26bf8769ec3              # double 0.74053000000000002
	.quad	0x3fd2812be48a58b4              # double 0.289134
	.quad	0x3fda735c182ecaef              # double 0.41329100000000002
	.quad	0x3fe289bd8383ad9f              # double 0.579314
	.quad	0x3fd4efaa4766c6de              # double 0.32712799999999997
	.quad	0x3fd678359bc33f85              # double 0.35108699999999998
	.quad	0x3fe181fd9ba1b196              # double 0.54711799999999999
	.quad	0x3fd0c84f8f8a4c1f              # double 0.26222600000000001
	.quad	0x3fdce44b6e935b92              # double 0.451434
	.quad	0x3fa31c864883fd50              # double 0.037326999999999999
	.quad	0x3fde04a72ead9275              # double 0.46903400000000001
	.quad	0x3fe708d2a1f8e3ac              # double 0.71982699999999999
	.quad	0x3feea3f67f4dbdf9              # double 0.95751500000000001
	.quad	0x3fec7fa1a0cf1801              # double 0.89058000000000004
	.quad	0x3fed6b80ecfa69be              # double 0.919373
	.quad	0x3fea49a133c1ce6c              # double 0.82148799999999999
	.quad	0x3fe23a7daa4fca43              # double 0.56964000000000004
	.quad	0x3fd74db163baba7c              # double 0.36411700000000002
	.quad	0x3fe66ff5c6c11a11              # double 0.70116699999999998
	.quad	0x3fedb21c475e6363              # double 0.92799200000000004
	.quad	0x3f9024f6598e10cf              # double 0.015765999999999999
	.quad	0x3feb6a37ac3eb7cc              # double 0.85671600000000003
	.quad	0x3fb240a6b93ccd10              # double 0.071299000000000001
	.quad	0x3fe4c2bd7f51efb7              # double 0.64877200000000002
	.quad	0x3fcf09e98dcdb37d              # double 0.24249000000000001
	.quad	0x3fdc45803cd141a7              # double 0.44174200000000002
	.quad	0x3fea751ce28ed5f1              # double 0.82679599999999998
	.quad	0x3fd3d651b0ccbc06              # double 0.30995600000000001
	.quad	0x3fe91abf33871609              # double 0.78451499999999996
	.quad	0x3fe95e95b78cc9a7              # double 0.79279599999999995
	.quad	0x3fe3e353f7ced917              # double 0.62150000000000005
	.quad	0x3fea189df1172ef1              # double 0.81550500000000004
	.quad	0x3fdc4a3400b88ca4              # double 0.44202900000000001
	.quad	0x3fde272862f5989e              # double 0.47114
	.quad	0x3fb9c9a34ca0c283              # double 0.100733
	.quad	0x3fe457d9dba908a2              # double 0.63572399999999996
	.quad	0x3fcfea8112ba16e8              # double 0.24934400000000001
	.quad	0x3fda2ee84ad794a7              # double 0.409113
	.quad	0x3fe31869835158b8              # double 0.59672999999999998
	.quad	0x3fed55cfaacd9e84              # double 0.91672500000000001
	.quad	0x3fd51a261bf37b8d              # double 0.32972099999999999
	.quad	0x3feb33bfb58d1527              # double 0.85006700000000002
	.quad	0x3fe986162f166e01              # double 0.79761800000000005
	.quad	0x3fda2df9378ee286              # double 0.40905599999999998
	.quad	0x3fd176709fa54c55              # double 0.27285399999999999
	.quad	0x3f92eec7c957cd46              # double 0.018488999999999998
	.quad	0x3fd5770bd017dae8              # double 0.33539099999999999
	.quad	0x3fe16b074a771c97              # double 0.54431499999999999
	.quad	0x3fd2f4c2b51bd61f              # double 0.29618899999999998
	.quad	0x3fe6f45e0b4e11dc              # double 0.71733000000000002
	.quad	0x3fd60de4c51116a9              # double 0.34459800000000002
	.quad	0x3fe2d916872b020c              # double 0.58899999999999997
	.quad	0x3fd34727dcbddb98              # double 0.30121799999999999
	.quad	0x3fe28b73d188f430              # double 0.57952300000000001
	.quad	0x3fe24095f2452c5a              # double 0.570384
	.quad	0x3fd759fb1e18efbb              # double 0.364867
	.quad	0x3fe1de95b78cc9a7              # double 0.55842099999999995
	.quad	0x3fea93db7f173754              # double 0.83054899999999998
	.quad	0x3fecca8e2e2b8c76              # double 0.89972600000000003
	.quad	0x3f9f822bbecaab8a              # double 0.030769999999999999
	.quad	0x3fedeb93ccd0fe8b              # double 0.93500700000000003
	.quad	0x3fd858d5842b734b              # double 0.38042199999999998
	.quad	0x3fd822467be553ac              # double 0.37709199999999998
	.quad	0x3f96e71cda2b5a21              # double 0.022366
	.quad	0x3fc366be7afa7222              # double 0.15157300000000001
	.quad	0x3fdb2bc2fc69728a              # double 0.42454599999999998
	.quad	0x3fc1b8d3f1843c3a              # double 0.13845299999999999
	.quad	0x3fea92253111f0c3              # double 0.83033999999999997
	.quad	0x3fd12d83c6c97d8d              # double 0.268403
	.quad	0x3fdf4091c087442c              # double 0.48831599999999997
	.quad	0x3fcb73affb04ee7c              # double 0.21446799999999999
	.quad	0x3fee525cc426351e              # double 0.94755400000000001
	.quad	0x3fb97928e0c9d9d3              # double 0.099504999999999996
	.quad	0x3fa42224edf61240              # double 0.039322999999999997
	.quad	0x3fed24180d3cff65              # double 0.91065600000000002
	.quad	0x3fbe33ce63a5c1c6              # double 0.117978
	.quad	0x3fc806d938151a43              # double 0.18770899999999999
	.quad	0x3fe4e5625a682b63              # double 0.65300100000000005
	.quad	0x3fe948c0ce91c8eb              # double 0.79013100000000003
	.quad	0x3fd9509bf9c62a1b              # double 0.39554499999999998
	.quad	0x3fe49d57ff9b5632              # double 0.64420699999999997
	.quad	0x3fd7ccf6be37de94              # double 0.37188500000000002
	.quad	0x3fe9f1950331e3a8              # double 0.81074000000000002
	.quad	0x3fed9fc6da448494              # double 0.92575399999999996
	.quad	0x3fb94845132f87ad              # double 0.098759
	.quad	0x3fdd545c78a6dacb              # double 0.45827400000000001
	.quad	0x3fdcf212d77318fc              # double 0.45227499999999998
	.quad	0x3fda21a2e7f6f4bf              # double 0.40830300000000003
	.quad	0x3fee602c9081c2e3              # double 0.94923999999999997
	.quad	0x3fdc6138fffbce42              # double 0.44343399999999999
	.quad	0x3fe6d525cc426352              # double 0.71351900000000001
	.quad	0x3fe46a4ebdd334c6              # double 0.63797700000000002
	.quad	0x3fe42c493426783a              # double 0.63040600000000002
	.quad	0x3fe08cb8e086bdf5              # double 0.51717800000000003
	.quad	0x3f8eb6bf444e0daa              # double 0.014997
	.quad	0x3fe4fa743a647fdc              # double 0.65557299999999996
	.quad	0x3fec66772d5e071c              # double 0.88750799999999996
	.quad	0x3fd27168f8e7ddca              # double 0.28817199999999998
	.quad	0x3fe29fb82c2bd7f5              # double 0.58199699999999999
	.quad	0x3fdc8e043a2163fe              # double 0.44616800000000001
	.quad	0x3fe2477574f722e2              # double 0.57122300000000004
	.quad	0x3fc2dadb8348f53c              # double 0.14730399999999999
	.quad	0x3fdf814d72799a20              # double 0.49226700000000001
	.quad	0x3fecfc30d306a2b1              # double 0.90578499999999995
	.quad	0x3fdbe108c3f3e037              # double 0.43561
	.quad	0x3fbd6bca5375c8da              # double 0.114926
	.quad	0x3fb0e66cb10342ab              # double 0.066016000000000005
	.quad	0x3fed02bc72e275ab              # double 0.90658399999999995
	.quad	0x3fec2f7f498c3b0c              # double 0.88079799999999996
	.quad	0x3fd7b4070329802c              # double 0.370363
	.quad	0x3fef55c96030c240              # double 0.97922200000000003
	.quad	0x3fdb0ed80a17b0f7              # double 0.42278100000000002
	.quad	0x3fe675f4e4430b18              # double 0.70189900000000005
	.quad	0x3fc3696e58a32f45              # double 0.15165500000000001
	.quad	0x3fe1634549b62c77              # double 0.54336799999999996
	.quad	0x3fd44aa10e022142              # double 0.31705499999999998
	.quad	0x3fd4258d5842b735              # double 0.31479200000000002
	.quad	0x3feaff151e75360d              # double 0.843638
	.quad	0x3fc7c70c996b7671              # double 0.18576200000000001
	.quad	0x3feffcc39ffd60e9              # double 0.99960499999999996
	.quad	0x3fd9353b4b2fa93b              # double 0.393874
	.quad	0x3feb2e46cfc829d0              # double 0.84939900000000002
	.quad	0x3fd1254a3c64345d              # double 0.267901
	.quad	0x3fd19a027525460b              # double 0.27502500000000002
	.quad	0x3fde4467381d7dbf              # double 0.47292499999999998
	.quad	0x3fd357f737da61e1              # double 0.30224400000000001
	.quad	0x3fec26e5471715c6              # double 0.87974799999999997
	.quad	0x3f91a2a4db163bac              # double 0.017222000000000001
	.quad	0x3fce6ec17ebaf102              # double 0.23775499999999999
	.quad	0x3fe848abd5dc4007              # double 0.75887099999999996
	.quad	0x3fde5afaf8594291              # double 0.47430299999999997
	.quad	0x3fd45c9a34ca0c28              # double 0.31815199999999999
	.quad	0x3fe615d701d9f4d3              # double 0.69016599999999995
	.quad	0x3fbb281fd9ba1b19              # double 0.10608099999999999
	.quad	0x3fd773affb04ee7c              # double 0.36643599999999998
	.quad	0x3fe372bcb5fe542e              # double 0.60775599999999996
	.quad	0x3fcd55b4677b395c              # double 0.22917799999999999
	.quad	0x3fe8b994e1a3f466              # double 0.77265399999999995
	.quad	0x3f950763a1900820              # double 0.020535999999999999
	.quad	0x3fe7a4bba12b5e53              # double 0.73885900000000004
	.quad	0x3fcbd334c5da6a44              # double 0.21738299999999999
	.quad	0x3fd53a7daa4fca43              # double 0.33169500000000002
	.quad	0x3fe0298aa8650e78              # double 0.50507100000000005
	.quad	0x3fc8ee41919ac797              # double 0.194771
	.quad	0x3fe5b34e7685985b              # double 0.67813800000000002
	.quad	0x3fee0d4562e09fe8              # double 0.93911999999999995
	.quad	0x3fe2c2b734b51373              # double 0.58626900000000004
	.quad	0x3fda1a3b14a90471              # double 0.40785100000000002
	.quad	0x3fd78216c61522a7              # double 0.367315
	.quad	0x3fe4ca42aed13943              # double 0.64968999999999999
	.quad	0x3fdafa15db3397dd              # double 0.421514
	.quad	0x3fd15785f8d2e515              # double 0.27096700000000001
	.quad	0x3fe78a17b0f6ad71              # double 0.73560700000000001
	.quad	0x3fe22acfb762d83c              # double 0.56772599999999995
	.quad	0x3fe55028a1dfb939              # double 0.66603500000000004
	.quad	0x3fec31c64ba94bbe              # double 0.88107599999999997
	.quad	0x3fd4ec636b096356              # double 0.326928
	.quad	0x3feabb9f127f5e85              # double 0.83540300000000001
	.quad	0x3fec7ffbce4217d3              # double 0.89062300000000005
	.quad	0x3fd7d245b291b824              # double 0.37220900000000001
	.quad	0x3fe3076188b1140a              # double 0.59465100000000004
	.quad	0x3fddc12f09d8c6d6              # double 0.464916
	.quad	0x3fcf31fcd24e160e              # double 0.24371300000000001
	.quad	0x3fe10574b407032a              # double 0.53191600000000006
	.quad	0x3fb20817fc7607c4              # double 0.070435999999999999
	.quad	0x3fd33a2163fdd65a              # double 0.300423
	.quad	0x3fbbb0f6ad70e6f3              # double 0.108169
	.quad	0x3fbcf95d4e8fb00c              # double 0.11318
	.quad	0x3fd81ceaf251c194              # double 0.37676500000000002
	.quad	0x3fc92ef0ae536502              # double 0.196745
	.quad	0x3fcff748a159817c              # double 0.24973400000000001
	.quad	0x3fd40f88333fc86d              # double 0.313448
	.quad	0x3fdbbdfd2630ec31              # double 0.433471
	.quad	0x3feb831055b89939              # double 0.85974899999999999
	.quad	0x3fc268fd199bb279              # double 0.14382900000000001
	.quad	0x3feb6fef7c243dcd              # double 0.85741400000000001
	.quad	0x3fe1e4f97edc7ef1              # double 0.55920099999999995
	.quad	0x3fe5b0b39192641b              # double 0.67781999999999998
	.quad	0x3fbbde5082cf52b9              # double 0.108861
	.quad	0x3fe8b69b9d7fd827              # double 0.77229099999999995
	.quad	0x3fe0857afea3df6e              # double 0.51629400000000003
	.quad	0x3fef7e5eaab04253              # double 0.98417600000000005
	.quad	0x3febe06530058149              # double 0.87114199999999997
	.quad	0x3fe801d5c31593e6              # double 0.750224
	.quad	0x3fda24febd09e12a              # double 0.40850799999999998
	.quad	0x3fda1aef6f8f0414              # double 0.40789399999999998
	.quad	0x3fb79cc74b838c11              # double 0.092235999999999999
	.quad	0x3fc973e24febd09e              # double 0.198849
	.quad	0x3fd463d3e4ef0282              # double 0.31859300000000002
	.quad	0x3fee088b545c78a7              # double 0.93854300000000002
	.quad	0x3fdfbc33f85510d4              # double 0.49586200000000002
	.quad	0x3fae529bae46cfc8              # double 0.059223999999999999
	.quad	0x3fe4ef5019f3c70d              # double 0.65421300000000004
	.quad	0x3fd2b4959e625636              # double 0.29227199999999998
	.quad	0x3fb3c925785f8d2e              # double 0.077287999999999995
	.quad	0x3fe12fc04c8bc9cd              # double 0.53707899999999997
	.quad	0x3f9be2f7b17ce52e              # double 0.027233
	.quad	0x3fae2f9ca5bd944b              # double 0.058957000000000002
	.quad	0x3fe0ccb7d41743e9              # double 0.52498999999999996
	.quad	0x3f8841248d7e0264              # double 0.011842999999999999
	.quad	0x3fe424766c6de764              # double 0.62945099999999998
	.quad	0x3fd8c105186db50f              # double 0.38678099999999999
	.quad	0x3fdc7fd3f5b5fa22              # double 0.44530199999999998
	.quad	0x3fef03f2d3c792d1              # double 0.96923199999999998
	.quad	0x3fe30bef8ceb356e              # double 0.59520700000000004
	.quad	0x3fcd5ef1fddebd90              # double 0.22946
	.quad	0x3fdd7168f8e7ddca              # double 0.46004699999999998
	.quad	0x3fecd27a20578e5c              # double 0.90069299999999996
	.quad	0x3fe8d256798958da              # double 0.77567600000000003
	.quad	0x3fc39c5a3e39f773              # double 0.15320900000000001
	.quad	0x3fe17d3910c2c5e3              # double 0.54653600000000002
	.quad	0x3fb921682f944242              # double 0.098166000000000003
	.quad	0x3fe275e2046c764b              # double 0.57689000000000001
	.quad	0x3fe5f7c45cbbc2b9              # double 0.68649499999999997
	.quad	0x3fdbd72bcb5fe543              # double 0.43500800000000001
	.quad	0x3fd7d8adab9f559b              # double 0.37259999999999999
	.quad	0x3fef87182235b4ee              # double 0.98524100000000003
	.quad	0x3fdd42aa9f7b5aea              # double 0.45719399999999999
	.quad	0x3fe7541b75a74c0a              # double 0.72901700000000003
	.quad	0x3fe744e2f37fbefd              # double 0.727159
	.quad	0x3fe7eea63b688bdb              # double 0.74788200000000005
	.quad	0x3fed16a055757d5b              # double 0.90901200000000004
	.quad	0x3fee2fb7e90ff972              # double 0.94332499999999997
	.quad	0x3fe73422467be554              # double 0.72511400000000004
	.quad	0x3fddd017dae81883              # double 0.46582600000000002
	.quad	0x3fd931550ca1cef2              # double 0.39363599999999999
	.quad	0x3fd1bb7f9d6f1130              # double 0.27706900000000001
	.quad	0x3fbedafd113836a8              # double 0.120529
	.quad	0x3fc89f6a93f290ac              # double 0.19236500000000001
	.quad	0x3fd210b630a91538              # double 0.28227000000000002
	.quad	0x3fe093c46d82ba5a              # double 0.518038
	.quad	0x3fdcf20a73f748a1              # double 0.45227299999999998
	.quad	0x3fe21e29b6b2af14              # double 0.56618199999999996
	.quad	0x3feaba4f8726d04e              # double 0.83524299999999996
	.quad	0x3fee37d41743e964              # double 0.94431500000000001
	.quad	0x3fec4c51116a8b8f              # double 0.88431599999999999
	.quad	0x3feeb71b8aa00193              # double 0.95985200000000003
	.quad	0x3fde198288051c9f              # double 0.47030699999999998
	.quad	0x3fefed15ad106ee3              # double 0.99769099999999999
	.quad	0x3fee5b59578a2a91              # double 0.94865100000000002
	.quad	0x3fee641f644955b4              # double 0.94972199999999995
	.quad	0x3fed89fa54c55433              # double 0.92309300000000005
	.quad	0x3fecc167a95c853c              # double 0.89860899999999999
	.quad	0x3fd6628cbd1244a6              # double 0.34976499999999999
	.quad	0x3fe44ab1d4f9c1f8              # double 0.63411799999999996
	.quad	0x3fba4fca42aed139              # double 0.10278
	.quad	0x3fb0635a426bb55b              # double 0.064016000000000003
	.quad	0x3fe0f739f340d4dc              # double 0.53017899999999996
	.quad	0x3fe0d17e77d523b3              # double 0.52557299999999996
	.quad	0x3fc64b2b777d0f1f              # double 0.17416899999999999
	.quad	0x3fe7c0767d34df05              # double 0.74224400000000001
	.quad	0x3fe8cd5d80e496ee              # double 0.77506900000000001
	.quad	0x3fecbe63e8dda48b              # double 0.89824099999999996
	.quad	0x3fe814e7ee9142b3              # double 0.752552
	.quad	0x3fe873d3a1d323ff              # double 0.76413900000000001
	.quad	0x3fb23315d701d9f5              # double 0.071092000000000002
	.quad	0x3fd182adc4c9c90c              # double 0.27360099999999998
	.quad	0x3fceab92c061847f              # double 0.23961099999999999
	.quad	0x3fcbd2c7b890d5a6              # double 0.21737000000000001
	.quad	0x3fe62a5a469d7343              # double 0.69267000000000001
	.quad	0x3fed4901d19157ac              # double 0.91516200000000003
	.quad	0x3fe94b2314013ec4              # double 0.79042199999999995
	.quad	0x3fd0cedd48451330              # double 0.26262600000000003
	.quad	0x3fea1acffa7eb6bf              # double 0.81577299999999997
	.quad	0x3fed72cb641700ce              # double 0.92026300000000005
	.quad	0x3fca5e3da2f8bdec              # double 0.20600099999999999
	.quad	0x3fdcaf89c5e6ff7e              # double 0.448214
	.quad	0x3fc8f8487b99d452              # double 0.195077
	.quad	0x3fb6cba732df505d              # double 0.089044999999999999
	.quad	0x3fc2870110a137f4              # double 0.14474500000000001
	.quad	0x3f7a98676a7264a1              # double 0.0064929999999999996
	.quad	0x3fead7eed45e9186              # double 0.83885900000000002
	.quad	0x3fdf845996744b2b              # double 0.49245299999999997
	.quad	0x3fe0dcb1465e8922              # double 0.52693999999999996
	.quad	0x3fe47fae3608d089              # double 0.64058599999999999
	.quad	0x3fb72d5e071c53f4              # double 0.090536000000000005
	.quad	0x3fe5400da1a93294              # double 0.66406900000000002
	.quad	0x3fdaab862b27cbf7              # double 0.41671900000000001
	.quad	0x3fd2746cb966be7b              # double 0.288356
	.quad	0x3fd2422ccb3a2596              # double 0.28528900000000001
	.quad	0x3fb5a554b8bef8cf              # double 0.084554000000000004
	.quad	0x3fbc2d9cf13cee9e              # double 0.110071
	.quad	0x3faddf43c7d5ed07              # double 0.058344
	.quad	0x3fddbb7f9d6f1130              # double 0.46456900000000001
	.quad	0x3fe53b44e50c5eb3              # double 0.66348499999999999
	.quad	0x3f86523704790b85              # double 0.010899000000000001
	.quad	0x3fee7d113836a833              # double 0.95276700000000003
	.quad	0x3fd76490a350d280              # double 0.36551299999999998
	.quad	0x3fe41b024f6598e1              # double 0.62829699999999999
	.quad	0x3fe8ac68a936c58f              # double 0.77104600000000001
	.quad	0x3fdaee5abc0e38a8              # double 0.42079800000000001
	.quad	0x3fb729c347e8ccde              # double 0.090481000000000005
	.quad	0x3feec42a66dbd72c              # double 0.96144600000000002
	.quad	0x3fe83419e30014f9              # double 0.75636000000000003
	.quad	0x3fedbdc26dce39b4              # double 0.92941399999999996
	.quad	0x3fc5a5c1c6088d6d              # double 0.16912099999999999
	.quad	0x3fee91be6e653869              # double 0.955291
	.quad	0x3fea78f8a4c1ebc8              # double 0.82726699999999997
	.quad	0x3fe8e115592d98bf              # double 0.77747599999999994
	.quad	0x3fd13c0c1fc8f323              # double 0.26928999999999997
	.quad	0x3fd7399b2c40d0ab              # double 0.36289100000000002
	.quad	0x3fde4a2b9d3cbc49              # double 0.473277
	.quad	0x3fe1ac77574f722e              # double 0.55230299999999999
	.quad	0x3fef055fbb517a46              # double 0.96940599999999999
	.quad	0x3feddfd8adab9f56              # double 0.93357500000000004
	.quad	0x3fd8288ce703afb8              # double 0.377475
	.quad	0x3fdf22ab25b317f0              # double 0.48649100000000001
	.quad	0x3fb8da5daf07bfe8              # double 0.097082000000000002
	.quad	0x3fe44b2d905c0336              # double 0.63417699999999999
	.quad	0x3fe9a7d24180d3d0              # double 0.801736
	.quad	0x3fe6976bc1eff9f8              # double 0.70598399999999994
	.quad	0x3fe5d43aeab7995f              # double 0.68215700000000001
	.quad	0x3fada9003eea209b              # double 0.057930000000000002
	.quad	0x3fd19cb6848beb5b              # double 0.27518999999999999
	.quad	0x3fe2c2bf9830e3ce              # double 0.58627300000000004
	.quad	0x3f790f301eabbcb2              # double 0.0061180000000000002
	.quad	0x3fdc3cab81f969e4              # double 0.44120300000000001
	.quad	0x3fc9a15db3397dd0              # double 0.200237
	.quad	0x3fcc620ab7132724              # double 0.22174199999999999
	.quad	0x3fb8b2d905c03361              # double 0.096478999999999995
	.quad	0x3feb6d58c8eef1bb              # double 0.85709800000000003
	.quad	0x3fedaee41919ac79              # double 0.92759899999999995
	.quad	0x3fca97c80841ede1              # double 0.207757
	.quad	0x3fed8de8f6cefed6              # double 0.92357299999999998
	.quad	0x3fe5263d816aceab              # double 0.66091800000000001
	.quad	0x3fe956abde3fbbd8              # double 0.79183000000000003
	.quad	0x3fd179af1886df83              # double 0.27305200000000002
	.quad	0x3fe1a77e5eaab042              # double 0.55169599999999996
	.quad	0x3fe3286b59146e4c              # double 0.59868399999999999
	.quad	0x3fed653eb399f5e0              # double 0.918609
	.quad	0x3fed706f69446738              # double 0.91997499999999999
	.quad	0x3fe2b3bd9cae2110              # double 0.58444099999999999
	.quad	0x3fd121ee675147f1              # double 0.26769599999999999
	.quad	0x3fe9d2ac753e707e              # double 0.80696699999999999
	.quad	0x3feca1e3eaf6837f              # double 0.89476199999999995
	.quad	0x3fddcd35a858793e              # double 0.46565000000000001
	.quad	0x3fea913e81450efe              # double 0.83023000000000002
	.quad	0x3fd68fb00bcbe61d              # double 0.35252
	.quad	0x3fe30e5a35d67ba2              # double 0.59550199999999998
	.quad	0x3fde941c8216c615              # double 0.47778999999999999
	.quad	0x3fe909613d31b9b6              # double 0.78239499999999995
	.quad	0x3fe8818a43bb40b3              # double 0.76581299999999997
	.quad	0x3fe63cd9a52263d8              # double 0.69492799999999999
	.quad	0x3fe086748e475600              # double 0.51641300000000001
	.quad	0x3fc15bee3d5fdcdf              # double 0.13561799999999999
	.quad	0x3fddd48882f0e0a8              # double 0.46609699999999998
	.quad	0x3fec713ad5bee3d6              # double 0.888822
	.quad	0x3f75054ac29bf163              # double 0.0051320000000000003
	.quad	0x3fd6243dccea28fe              # double 0.34596199999999999
	.quad	0x3fea7bf401c4fc1e              # double 0.82763100000000001
	.quad	0x3fe1bd76ee73e682              # double 0.55437800000000004
	.quad	0x3f98e68e3ef28416              # double 0.024316999999999998
	.quad	0x3fe5d1fc4c165908              # double 0.68188300000000002
	.quad	0x3fdd718a86d71f36              # double 0.46005499999999999
	.quad	0x3fb15a07b352a844              # double 0.067780000000000007
	.quad	0x3feff789a459103d              # double 0.99896700000000004
	.quad	0x3fe48a6fc58ab92c              # double 0.641899
	.quad	0x3fe151dcd7060bb3              # double 0.54124300000000003
	.quad	0x3fd7bdbe3c105187              # double 0.37095600000000001
	.quad	0x3fe3f4794ea07703              # double 0.62359299999999995
	.quad	0x3fc667be553ac4f8              # double 0.175041
	.quad	0x3fa4e26d4801f751              # double 0.04079
	.quad	0x3f9c1bda5119ce07              # double 0.027449999999999999
	.quad	0x3f9712a0ec743201              # double 0.022532
	.quad	0x3f7b089a02752546              # double 0.0066
	.quad	0x3fe5c0e5a35d67ba              # double 0.67979699999999998
	.quad	0x3fc4d74927913e81              # double 0.16281999999999999
	.quad	0x3fc6e054690de093              # double 0.17872099999999999
	.quad	0x3fba3e1869835159              # double 0.10251
	.quad	0x3fe9d0635a426bb5              # double 0.80668799999999996
	.quad	0x3fd7c79702e6644e              # double 0.37155700000000003
	.quad	0x3fcf84cad57bc7f7              # double 0.24623999999999999
	.quad	0x3f972fba01eeed89              # double 0.022643
	.quad	0x3fb405814940bbb2              # double 0.078209
	.quad	0x3fde482be8bc169c              # double 0.47315499999999999
	.quad	0x3fed9d12cadddf44              # double 0.92542400000000002
	.quad	0x3fd18e043a2163fe              # double 0.27429300000000001
	.quad	0x3fdba897635e742a              # double 0.43216500000000002
	.quad	0x3fbc86f049a9973e              # double 0.11143400000000001
	.quad	0x3fe68c2e770bd018              # double 0.70461200000000002
	.quad	0x3feecd8ba40d90e2              # double 0.96259099999999997
	.quad	0x3fe7b36deb95e5b0              # double 0.74065300000000001
	.quad	0x3fe5ca276b7ed41b              # double 0.68092699999999995
	.quad	0x3fec8f47304039ac              # double 0.89249
	.quad	0x3fdb32441fea8113              # double 0.42494300000000002
	.quad	0x3fe449752977c88e              # double 0.63396699999999995
	.quad	0x3fe173e89a88ace2              # double 0.54539899999999997
	.quad	0x3fd11d4f9c1f85d7              # double 0.26741399999999999
	.quad	0x3fd29b5a63f9a49c              # double 0.29073199999999999
	.quad	0x3fc676188b11409a              # double 0.175479
	.quad	0x3fd6a671ef30a4e3              # double 0.35390899999999997
	.quad	0x3febba6efc371da3              # double 0.86650799999999994
	.quad	0x3fe259c8c9320d99              # double 0.57345999999999997
	.quad	0x3fed5ba4d6e47dc3              # double 0.91743699999999995
	.quad	0x3fb00a17b0f6ad71              # double 0.062654000000000001
	.quad	0x3fe9f1348b220792              # double 0.81069400000000003
	.quad	0x3fe1b9f98b71b8aa              # double 0.553952
	.quad	0x3fea8e30446b69db              # double 0.82985699999999996
	.quad	0x3fdfa99b6f5caf2d              # double 0.49472699999999997
	.quad	0x3fce512231832fcb              # double 0.23685100000000001
	.quad	0x3fa77c6759ab6d01              # double 0.045871000000000002
	.quad	0x3fe07aa68f4b61fe              # double 0.51497199999999999
	.quad	0x3fe99cde5d18090b              # double 0.80039899999999997
	.quad	0x3feb602a77a2cecd              # double 0.85548900000000005
	.quad	0x3fbfcdee34fc610f              # double 0.124236
	.quad	0x3fc745c78a6dacac              # double 0.18181700000000001
	.quad	0x3fe47e34b945308c              # double 0.64040600000000003
	.quad	0x3fe7700ef1348b22              # double 0.732429
	.quad	0x3fe495ebfa8f7db7              # double 0.64330100000000001
	.quad	0x3fea9289dadfb507              # double 0.83038800000000001
	.quad	0x3fddaccd530489d2              # double 0.46367199999999997
	.quad	0x3f37ebaf102363b2              # double 3.6499999999999998E-4
	.quad	0x3fe76ac647778dd6              # double 0.73178399999999999
	.quad	0x3fea3a30121682f9              # double 0.81960299999999997
	.quad	0x3fb7533f42352eb6              # double 0.091114
	.quad	0x3fdd01de26916441              # double 0.453239
	.quad	0x3fd5afcce1c58256              # double 0.33885500000000002
	.quad	0x3fce181e03f70585              # double 0.23511099999999999
	.quad	0x3fed4a9478c868ba              # double 0.915354
	.quad	0x3fce087442c7fbad              # double 0.23463300000000001
	.quad	0x3fc241fea8112ba1              # double 0.14263899999999999
	.quad	0x3fef2d2bb23571d2              # double 0.97426400000000002
	.quad	0x3fe8c3504c48adef              # double 0.77384200000000003
	.quad	0x3fe3c840e1719f80              # double 0.61819500000000005
	.quad	0x3fe890b630a91538              # double 0.76766500000000004
	.quad	0x3fddaee2003ab863              # double 0.46379900000000002
	.quad	0x3fefe12e83a109d0              # double 0.99623799999999996
	.quad	0x3fe9c9107faa044b              # double 0.80579400000000001
	.quad	0x3fe0f3abc947064f              # double 0.52974500000000002
	.quad	0x3fd9aa5c5f7c675a              # double 0.40102300000000002
	.quad	0x3fe5861e92923e5c              # double 0.67262200000000005
	.quad	0x3fed56473471f794              # double 0.91678199999999998
	.quad	0x3fa6edcc20d5629e              # double 0.044783000000000003
	.quad	0x3fc21a5870da5daf              # double 0.141429
	.quad	0x3fc176b3bb83cf2d              # double 0.136435
	.quad	0x3fe702645e4e69f0              # double 0.71904199999999996
	.quad	0x3fca988094e5d5b2              # double 0.20777899999999999
	.quad	0x3fc49d1f601797cc              # double 0.16104499999999999
	.quad	0x3fe5436b8f9b1316              # double 0.66447999999999996
	.quad	0x3fdc780fdc1615ec              # double 0.444828
	.quad	0x3fe806c6583e8577              # double 0.75082700000000002
	.quad	0x3fe0fe111276fb09              # double 0.53101399999999999
	.quad	0x3fc0683c297bfa4c              # double 0.12818099999999999
	.quad	0x3fe269ea14057082              # double 0.57542899999999997
	.quad	0x3fe870d413122b7c              # double 0.76377300000000003
	.quad	0x3fd3594f26aec072              # double 0.30232599999999998
	.quad	0x3fa9de69ad42c3ca              # double 0.050525
	.quad	0x3fb101d19157abb9              # double 0.066434000000000007
	.quad	0x3fbdf2778140dd40              # double 0.116981
	.quad	0x3fe7348f53c579f2              # double 0.72516599999999998
	.quad	0x3fe3d68e820e6299              # double 0.61994099999999996
	.quad	0x3feddabe27179bfe              # double 0.932952
	.quad	0x3fe69146e4c0df59              # double 0.70523400000000003
	.quad	0x3fe40029f16b11c7              # double 0.62502000000000002
	.quad	0x3fea6ffe2a3cea6c              # double 0.82617099999999998
	.quad	0x3fe17c49fd7a13c2              # double 0.54642199999999996
	.quad	0x3fdf0bfe3b03e20d              # double 0.48510700000000001
	.quad	0x3fe6ba1f4b1ee243              # double 0.71021999999999996
	.quad	0x3fe8bca7503b81b6              # double 0.77302899999999997
	.quad	0x3fe6d3671ac14c66              # double 0.713306
	.quad	0x3f8d9a95421c0443              # double 0.014455000000000001
	.quad	0x3fee6a52ef911cf3              # double 0.95047899999999996
	.quad	0x3fc79bb2788db057              # double 0.18443899999999999
	.quad	0x3fecf8f25a250f84              # double 0.90538899999999999
	.quad	0x3fef93a92a305532              # double 0.98677499999999996
	.quad	0x3fe1ededaec4a409              # double 0.56029399999999996
	.quad	0x3feeee1bd1ed9dfe              # double 0.96656600000000004
	.quad	0x3fe8aa4766c6de76              # double 0.77078599999999997
	.quad	0x3fd498e970718223              # double 0.32183299999999998
	.quad	0x3fd81d5c31593e60              # double 0.37679200000000002
	.quad	0x3fe5a4e9c4545847              # double 0.67638100000000001
	.quad	0x3fc24c2f837b4a23              # double 0.14294999999999999
	.quad	0x3fe8164c729f59cd              # double 0.752722
	.quad	0x3fd96c7219220ff5              # double 0.39724399999999999
	.quad	0x3fbb07e175d13d75              # double 0.105589
	.quad	0x3fcd6b8737974602              # double 0.22984399999999999
	.quad	0x3fd9e3b03e20ccff              # double 0.40452199999999999
	.quad	0x3fe7d12cadddf43c              # double 0.74428399999999995
	.quad	0x3f993ab430f49492              # double 0.024638
	.quad	0x3fe37640639d5e4a              # double 0.60818499999999998
	.quad	0x3fc5e939eadd590c              # double 0.17118
	.quad	0x3fe2a0ea5b530ced              # double 0.58214299999999997
	.quad	0x3febb8f7985271bd              # double 0.86632900000000002
	.quad	0x3fc5f2b239a38fbd              # double 0.17146900000000001
	.quad	0x3fe8f54f3775b813              # double 0.779945
	.quad	0x3fdca71151611ba4              # double 0.44769700000000001
	.quad	0x3fee4b124d099e0e              # double 0.94666399999999995
	.quad	0x3fe930292817763e              # double 0.78712899999999997
	.quad	0x3fe32b2e1693c03c              # double 0.59902100000000003
	.quad	0x3f99f383f0bae89f              # double 0.025343000000000001
	.quad	0x3feaaf35e310dbf0              # double 0.83388799999999996
	.quad	0x3fef3854046412cf              # double 0.97562599999999999
	.quad	0x3fef895d0b73d189              # double 0.985518
	.quad	0x3fb3cafb3b752114              # double 0.077315999999999996
	.quad	0x3fe0b9e492bc2fc7              # double 0.52269200000000005
	.quad	0x3fe1ed17c5ef62fa              # double 0.56019200000000002
	.quad	0x3fee40181e03f706              # double 0.94532400000000005
	.quad	0x3fedc3760bf5d788              # double 0.93010999999999999
	.quad	0x3fe2cead0c3d2524              # double 0.58772899999999995
	.quad	0x3fe0e6d9be4cd749              # double 0.52817999999999998
	.quad	0x3fa03b60285ec3db              # double 0.031703000000000002
	.quad	0x3fefb9b23dd54da5              # double 0.99141800000000002
	.quad	0x3fc1ca7503b81b65              # double 0.138991
	.quad	0x3fe0cd2b2bfdb4cc              # double 0.52504499999999998
	.quad	0x3fde9f127f5e84f1              # double 0.47845900000000002
	.quad	0x3fd9a925fe974a34              # double 0.400949
	.quad	0x3fd92513b5bf6a0e              # double 0.39288800000000001
	.quad	0x3fed8ff327aa68f5              # double 0.92382200000000003
	.quad	0x3fd11b71758e2196              # double 0.26729999999999998
	.quad	0x3fe8f5c4a83b1d0d              # double 0.78000100000000006
	.quad	0x3fe5053c148344c3              # double 0.65688899999999995
	.quad	0x3fd6aad601ffb481              # double 0.35417700000000002
	.quad	0x3fe9df78359bc340              # double 0.80852900000000005
	.quad	0x3fc2e820e6299525              # double 0.14770900000000001
	.quad	0x3fe068900c521dda              # double 0.512764
	.quad	0x3fd2f965b20b8067              # double 0.29647200000000001
	.quad	0x3fa5f6ba0620ab71              # double 0.042897999999999999
	.quad	0x3fee48366516db0e              # double 0.94631500000000002
	.quad	0x3fdaf1d3ed527e52              # double 0.42101
	.quad	0x3fc55bb384fd2a63              # double 0.16686100000000001
	.quad	0x3fe748909289dae0              # double 0.72760800000000003
	.quad	0x3fd7636f3b213e3e              # double 0.36544399999999999
	.quad	0x3fdba936c58eeaea              # double 0.432203
	.quad	0x3fca917d6b65a9a8              # double 0.207565
	.quad	0x3fc7477bbf93ff26              # double 0.181869
	.quad	0x3fa9fa54c5543287              # double 0.050737999999999998
	.quad	0x3f9ce4ead0c3d252              # double 0.028216999999999999
	.quad	0x3fdb159817b95a29              # double 0.42319299999999999
	.quad	0x3fc95e17e34b9453              # double 0.198184
	.quad	0x3fe7cf9c1f85d745              # double 0.744093
	.quad	0x3fe0d338f7985272              # double 0.52578400000000003
	.quad	0x3fc5e7afa7221859              # double 0.17113300000000001
	.quad	0x3fd8ce7cd0353719              # double 0.38760299999999998
	.quad	0x3fec804102ff8ec1              # double 0.890656
	.quad	0x3fe34d67fd3f5b60              # double 0.60319900000000004
	.quad	0x3feae605ee568a50              # double 0.84057899999999997
	.quad	0x3fe091b1d92b7fe1              # double 0.51778500000000005
	.quad	0x3fe8a5accd53048a              # double 0.77022400000000002
	.quad	0x3fe0a44c7b02d59d              # double 0.52005599999999996
	.quad	0x3fd0d5629d8409e5              # double 0.26302399999999998
	.quad	0x3fe7d44fe36d2242              # double 0.74466699999999997
	.quad	0x3fdf9307af20ea5b              # double 0.49334899999999998
	.quad	0x3fbe5269595feda6              # double 0.11844499999999999
	.quad	0x3fef1c2a02320968              # double 0.97218800000000005
	.quad	0x3fee7082491afc05              # double 0.95123400000000002
	.quad	0x3fc4c41dd1a21ea3              # double 0.16223499999999999
	.quad	0x3fe4a65add9c27e9              # double 0.64530699999999996
	.quad	0x3fed4be835dedf1e              # double 0.915516
	.quad	0x3fe016c82e019b0b              # double 0.50278100000000003
	.quad	0x3fed7785729b280f              # double 0.92083999999999999
	.quad	0x3fe4d332acfb762e              # double 0.65078100000000005
	.quad	0x3fa0283d35eb7458              # double 0.031557000000000002
	.quad	0x3fdfbb517a46173c              # double 0.49580800000000003
	.quad	0x3fd70b49e01de269              # double 0.360064
	.quad	0x3fde8abd5dc40075              # double 0.47721799999999998
	.quad	0x3fe8cda2b5a20ddc              # double 0.77510199999999995
	.quad	0x3fd6f11f926c7eae              # double 0.35846699999999998
	.quad	0x3fe8560a63305101              # double 0.76050300000000004
	.quad	0x3fed09310129cbab              # double 0.90737199999999996
	.quad	0x3fcac8eef1bac2df              # double 0.209257
	.quad	0x3fe8238327674d16              # double 0.75433499999999998
	.quad	0x3fdb4020817fc760              # double 0.42578899999999997
	.quad	0x3fdb91d57ff9b563              # double 0.43077599999999999
	.quad	0x3fec638a7e73a366              # double 0.88715100000000002
	.quad	0x3fb4eabffcdab192              # double 0.081707000000000001
	.quad	0x3fe17901083dbc23              # double 0.54602099999999998
	.quad	0x3fea28262456f75e              # double 0.81740100000000004
	.quad	0x3fe6e1b6d43d0397              # double 0.71505300000000005
	.quad	0x3fdc23cc8de2ac32              # double 0.43968499999999999
	.quad	0x3fd524d4cb9ecf64              # double 0.33037300000000003
	.quad	0x3fce06e19b90ea9e              # double 0.23458499999999999
	.quad	0x3fd4cac4b4d056c5              # double 0.324876
	.quad	0x3fd552da98676a72              # double 0.33318199999999998
	.quad	0x3fe0ec4c5974e65c              # double 0.52884500000000001
	.quad	0x3fe1ffd1dcd7060c              # double 0.56247800000000003
	.quad	0x3fdd1843c3a42f1f              # double 0.45460600000000001
	.quad	0x3fb509289dadfb50              # double 0.082170999999999994
	.quad	0x3fe16f08cc575c07              # double 0.54480399999999995
	.quad	0x3febad5bee3d5fdd              # double 0.86491200000000001
	.quad	0x3fe107a8d64d7f0f              # double 0.53218500000000002
	.quad	0x3fd2b5b70691ea79              # double 0.29234100000000002
	.quad	0x3fc9aceee0f3cb3e              # double 0.20058999999999999
	.quad	0x3f8b5525cc426352              # double 0.013346
	.quad	0x3fdee8e60807357e              # double 0.48296499999999998
	.quad	0x3fd78b04ab606b7b              # double 0.36786000000000002
	.quad	0x3fe25c0b9991361e              # double 0.57373600000000002
	.quad	0x3fe44cfd08d4bad8              # double 0.63439800000000002
	.quad	0x3fd3912dba4d6e48              # double 0.30573600000000001
	.quad	0x3fa52ac753e707e1              # double 0.041341999999999997
	.quad	0x3fed08a8b08dd1e5              # double 0.90730699999999997
	.quad	0x3fe6fa05143bf727              # double 0.71801999999999999
	.quad	0x3fde5757d5a9eb20              # double 0.47408099999999997
	.quad	0x3feb145308bb9064              # double 0.84623099999999995
	.quad	0x3fc45b4aa9717df2              # double 0.15903600000000001
	.quad	0x3fe79641f644955b              # double 0.73709199999999997
	.quad	0x3fc52e40852b4d8c              # double 0.16547400000000001
	.quad	0x3fdb7ecfe9b7bf1f              # double 0.42961500000000002
	.quad	0x3fcbe6687f455a7d              # double 0.217969
	.quad	0x3fb51e85fd04a2fd              # double 0.082497000000000001
	.quad	0x3fadfc9ff92f2b67              # double 0.058568000000000002
	.quad	0x3fd8d2fe3f359ff5              # double 0.387878
	.quad	0x3fd2f0e4da09cc32              # double 0.29595300000000002
	.quad	0x3fe09ce6c093d966              # double 0.51915299999999998
	.quad	0x3fe9c65c70435efa              # double 0.80546399999999996
	.quad	0x3fdc40e9d51b4fe8              # double 0.44146200000000002
	.quad	0x3fe47e28240b7803              # double 0.64039999999999997
	.quad	0x3fe1001f75104d55              # double 0.53126499999999999
	.quad	0x3fb7666234a87e39              # double 0.091406000000000001
	.quad	0x3fee22856605ee57              # double 0.94171400000000005
	.quad	0x3fdd6d15ad106ee3              # double 0.459783
	.quad	0x3fc7e56473471f79              # double 0.18668799999999999
	.quad	0x3fd5c404a72ead92              # double 0.34008899999999997
	.quad	0x3fe2167caea747d8              # double 0.565245
	.quad	0x3fa27bb2fec56d5d              # double 0.0361
	.quad	0x3fde30be0ded288d              # double 0.47172500000000001
	.quad	0x3fe6b964a59c065b              # double 0.71013099999999996
	.quad	0x3fdc603d57796399              # double 0.44337399999999999
	.quad	0x3fea84e3ffef3908              # double 0.82872199999999996
	.quad	0x3fc140f66a550870              # double 0.134795
	.quad	0x3fae4a16a4873366              # double 0.059159000000000003
	.quad	0x3fd86006d0d4994a              # double 0.38086100000000001
	.quad	0x3fc2ed0b30b5aa71              # double 0.14785899999999999
	.quad	0x3fc0ccbc05d52c17              # double 0.131248
	.quad	0x3fd6fdbd2fa0d77b              # double 0.35923699999999997
	.quad	0x3fe511361dc93ea3              # double 0.65835100000000002
	.quad	0x3fe891d798d8a97a              # double 0.76780300000000001
	.quad	0x3fde18b934699418              # double 0.47025899999999998
	.quad	0x3fdfb4b2fa93af75              # double 0.49540400000000001
	.quad	0x3fe3f470eb24a6a8              # double 0.62358899999999995
	.quad	0x3fe293532e7b3d8e              # double 0.580484
	.quad	0x3fd934b945308bb9              # double 0.393843
	.quad	0x3fe72ec8d5c74752              # double 0.72446100000000002
	.quad	0x3fe96dacabc51548              # double 0.79463799999999996
	.quad	0x3fdd1847f562174c              # double 0.45460699999999998
	.quad	0x3fdc51eb851eb852              # double 0.4425
	.quad	0x3fd5f505d0fa58f7              # double 0.34308
	.quad	0x3fcf28b6d86ec17f              # double 0.24343000000000001
	.quad	0x3fe717e996312f4d              # double 0.721669
	.quad	0x3fe84f5903a7546d              # double 0.75968599999999997
	.quad	0x3fe5d7ba6698bb4d              # double 0.68258399999999997
	.quad	0x3fc249c2c1b10fd8              # double 0.142876
	.quad	0x3fe9b66b6177ea1c              # double 0.80351799999999995
	.quad	0x3fef74666ec9e237              # double 0.98295900000000002
	.quad	0x3fc85cf67b1c0011              # double 0.19033700000000001
	.quad	0x3fec29ed3953dea4              # double 0.88011799999999995
	.quad	0x3fe674666ec9e237              # double 0.70170900000000003
	.quad	0x3fe8679463cfb331              # double 0.76264399999999999
	.quad	0x3fb8268900c521de              # double 0.094338000000000005
	.quad	0x3fd1683c297bfa4c              # double 0.27198699999999998
	.quad	0x3fe6075d56f32bdc              # double 0.68839899999999998
	.quad	0x3fe2c60029f16b12              # double 0.58667000000000002
	.quad	0x3fd61e8e60807358              # double 0.34561500000000001
	.quad	0x3fed6909aed56b01              # double 0.919072
	.quad	0x3fd62a8869c66d37              # double 0.34634599999999999
	.quad	0x3fe1049ecb31c21a              # double 0.53181400000000001
	.quad	0x3fed8e53eb399f5e              # double 0.923624
	.quad	0x3fe08a04d12018a4              # double 0.51684799999999997
	.quad	0x3fc539fba450acc1              # double 0.16583200000000001
	.quad	0x3fe110e453d20f2c              # double 0.53331200000000001
	.quad	0x3fde411c2a023209              # double 0.47272399999999998
	.quad	0x3fd36c2efd438d1e              # double 0.30347800000000003
	.quad	0x3fe50f08461f9f02              # double 0.65808500000000003
	.quad	0x3fe852aa5c5f7c67              # double 0.76009099999999996
	.quad	0x3fc59103c8e25c81              # double 0.168488
	.quad	0x3fdbec4e7253da73              # double 0.43629800000000002
	.quad	0x3fd12031ceaf251c              # double 0.26758999999999999
	.quad	0x3febb98c7e28240b              # double 0.86639999999999995
	.quad	0x3feb6820e6299525              # double 0.85646100000000003
	.quad	0x3fc4e5eedcc20d56              # double 0.163267
	.quad	0x3fe3880b673c4f3c              # double 0.61035700000000004
	.quad	0x3fe2bd0bfa0945fa              # double 0.58557700000000001
	.quad	0x3fe9e748e4755ffe              # double 0.80948299999999995
	.quad	0x3fe5e7fb267c6b8b              # double 0.68456799999999995
	.quad	0x3fbb4fc610f0e90c              # double 0.106686
	.quad	0x3fe9cf312b1b36bd              # double 0.80654199999999998
	.quad	0x3fe59bbf0dc768e0              # double 0.67526200000000003
	.quad	0x3fe82f23033a4724              # double 0.75575400000000003
	.quad	0x3fe93f811f4f50a0              # double 0.78900199999999998
	.quad	0x3fecc443914f483d              # double 0.89895800000000003
	.quad	0x3fd2c4eb56fb8f58              # double 0.293269
	.quad	0x3fa62e90364388ec              # double 0.043324000000000001
	.quad	0x3feb2fff36ac6477              # double 0.84960899999999995
	.quad	0x3fc008e9b38d60a6              # double 0.12527199999999999
	.quad	0x3fc7c8c9320d9946              # double 0.18581500000000001
	.quad	0x3fc2d7e889c1b542              # double 0.14721400000000001
	.quad	0x3fe866afcce1c582              # double 0.76253499999999996
	.quad	0x3fe2dbb16c1e364c              # double 0.58931800000000001
	.quad	0x3fd7e69f05ea24cc              # double 0.37345099999999998
	.quad	0x3fdc3afb7e90ff97              # double 0.44109999999999999
	.quad	0x3fe539a5a89b951c              # double 0.66328699999999996
	.quad	0x3fd980ae10492360              # double 0.39847900000000003
	.quad	0x3fc58e9707182236              # double 0.16841400000000001
	.quad	0x3fb8bc169c23b795              # double 0.096619999999999998
	.quad	0x3feb97d49d7ba66a              # double 0.86228400000000005
	.quad	0x3fdc3a29c779a6b5              # double 0.44105
	.quad	0x3fd53bafd976ff3b              # double 0.33176800000000001
	.quad	0x3fc6b69db65ecc3e              # double 0.17744799999999999
	.quad	0x3feb3fd71b046845              # double 0.85154300000000005
	.quad	0x3fe047b24638c975              # double 0.50875199999999998
	.quad	0x3fde8feef5ec80c7              # double 0.47753499999999999
	.quad	0x3fe723e5b8561d43              # double 0.723132
	.quad	0x3fc30d9513f8db49              # double 0.14885200000000001
	.quad	0x3fddf4623d0bfa09              # double 0.46804099999999998
	.quad	0x3fe5dccea28fe261              # double 0.68320400000000003
	.quad	0x3fe5c5197a24894c              # double 0.68030999999999997
	.quad	0x3fe9530489d27c39              # double 0.79138399999999998
	.quad	0x3fd146bacf7446fa              # double 0.26994200000000002
	.quad	0x3fc1167ec7863bef              # double 0.13349900000000001
	.quad	0x3fd50e4da09cc31a              # double 0.32899800000000001
	.quad	0x3fd409aed56b0100              # double 0.31309100000000001
	.quad	0x3fb34b838c111ada              # double 0.075370999999999994
	.quad	0x3fe3e8c692f6e829              # double 0.62216499999999997
	.quad	0x3fe89cf355cd91ef              # double 0.76915900000000004
	.quad	0x3fd069b9d7fd8277              # double 0.25645299999999999
	.quad	0x3fee39b024f6598e              # double 0.94454199999999999
	.quad	0x3fe7b44c37e6f71a              # double 0.74075899999999995
	.quad	0x3fd330db6a1e81cb              # double 0.29985699999999998
	.quad	0x3fe09ef73c0c1fc9              # double 0.51940500000000001
	.quad	0x3fed9e18efbb0e5e              # double 0.92554899999999996
	.quad	0x3fe6cca2db61bb06              # double 0.71248
	.quad	0x3fe8c829cfdd2285              # double 0.77443399999999996
	.quad	0x3fef5b4aa9717df2              # double 0.97989400000000004
	.quad	0x3fd1f9591cd1c7de              # double 0.28084399999999998
	.quad	0x3fece4cb5bb384fd              # double 0.90292899999999998
	.quad	0x3fe7b9baa1511e00              # double 0.74142200000000003
	.quad	0x3fd6bdf4c2b51bd6              # double 0.35534399999999999
	.quad	0x3fc0a2877ee4e26d              # double 0.12995999999999999
	.quad	0x3fe6522a6f3f52fc              # double 0.69752999999999998
	.quad	0x3fec17acc4ef88b9              # double 0.87788999999999995
	.quad	0x3fe08f51ac9afe1e              # double 0.51749500000000004
	.quad	0x3fb0d1d8a5482385              # double 0.065701999999999997
	.quad	0x3fbe07a28bb0a2cb              # double 0.11730400000000001
	.quad	0x3fe4e134ce3de615              # double 0.65249100000000004
	.quad	0x3fefc70eb24a6a87              # double 0.99304899999999995
	.quad	0x3fc92999567dbb17              # double 0.19658200000000001
	.quad	0x3fb2f89c5e6ff7e0              # double 0.074106000000000005
	.quad	0x3fea5f2a9d627bf6              # double 0.82411699999999999
	.quad	0x3fee1782d38476f3              # double 0.94037000000000004
	.quad	0x3fc2cf95d4e8fb01              # double 0.14696000000000001
	.quad	0x3fde2cc70867ad8e              # double 0.47148299999999999
	.quad	0x3fe232d2bb23571d              # double 0.56870399999999999
	.quad	0x3fe2dece5710880e              # double 0.58969800000000006
	.quad	0x3fbdd8622c450269              # double 0.11658300000000001
	.quad	0x3fd49e774eebf65e              # double 0.32217200000000001
	.quad	0x3febe3dc486ad2dd              # double 0.87156500000000003
	.quad	0x3fd392a737110e45              # double 0.30582599999999999
	.quad	0x3fd8398a65492ff5              # double 0.37851200000000002
	.quad	0x3fe17ba450acc0be              # double 0.54634300000000002
	.quad	0x3fe8caea747d805e              # double 0.77476999999999996
	.quad	0x3fdc691212513b5c              # double 0.443913
	.quad	0x3fddcb039ef0f16f              # double 0.46551599999999999
	.quad	0x3fdb27d028a1dfb9              # double 0.42430499999999999
	.quad	0x3febb73affb04ee8              # double 0.86611700000000003
	.quad	0x3fc89667b5f1bef5              # double 0.19209000000000001
	.quad	0x3fc49dcf893faf42              # double 0.16106599999999999
	.quad	0x3fe05d1c3ac929aa              # double 0.51136599999999999
	.quad	0x3fe82135daad6020              # double 0.754054
	.quad	0x3fe5415d2d01c0ca              # double 0.66422899999999996
	.quad	0x3fe62b2bfdb4cc25              # double 0.69277
	.quad	0x3fe99f87f023e9ea              # double 0.80072399999999999
	.quad	0x3fe248de2ac32229              # double 0.57139499999999999
	.quad	0x3fbc6a5d6bebe165              # double 0.110998
	.quad	0x3fe1f2e05ccc89b1              # double 0.56089800000000001
	.quad	0x3fab83cf2cf95d4f              # double 0.053740000000000003
	.quad	0x3fd724c8366516db              # double 0.36162
	.quad	0x3fbdb8cb8e086bdf              # double 0.116101
	.quad	0x3fd35785f8d2e515              # double 0.30221700000000001
	.quad	0x3fea69d30270f388              # double 0.82541799999999999
	.quad	0x3fd2b59578a2a90d              # double 0.29233300000000001
	.quad	0x3fe054306e5cd4ed              # double 0.51027699999999998
	.quad	0x3feccd4ed2cbea4f              # double 0.90006200000000003
	.quad	0x3fe2a839042d8c2a              # double 0.58303499999999997
	.quad	0x3fee5466f5019f3c              # double 0.94780299999999995
	.quad	0x3fe605b7cfe58601              # double 0.68819799999999998
	.quad	0x3febaa79bbadc098              # double 0.86456
	.quad	0x3feafdd00f776c48              # double 0.84348299999999998
	.quad	0x3fe1c28f5c28f5c3              # double 0.55500000000000005
	.quad	0x3fef96f0068db8bb              # double 0.98717500000000002
	.quad	0x3fc03b2dd377e1b9              # double 0.126806
	.quad	0x3fe13cf2cf95d4e9              # double 0.53869
	.quad	0x3fddcc2938de6ddf              # double 0.465586
	.quad	0x3fe4995ee136e71d              # double 0.64372200000000002
	.quad	0x3fbf38b47c73eee5              # double 0.121959
	.quad	0x3fe7c8cb4aec8d5c              # double 0.74326099999999995
	.quad	0x3fe291e646f15619              # double 0.58030999999999999
	.quad	0x3fe6cdd50a88effe              # double 0.71262599999999998
	.quad	0x3fa20a30db6a1e82              # double 0.035234000000000001
	.quad	0x3fde19008205ff1e              # double 0.47027600000000003
	.quad	0x3fec7ea3df6db941              # double 0.890459
	.quad	0x3fd2907d912556d2              # double 0.29006900000000002
	.quad	0x3fe3f8f8a4c1ebc8              # double 0.62414199999999997
	.quad	0x3fdea9930be0ded3              # double 0.47910000000000003
	.quad	0x3fe132a0663c74fb              # double 0.53742999999999996
	.quad	0x3fd5861a60d4562e              # double 0.33631
	.quad	0x3fe377c6759ab6d0              # double 0.608371
	.quad	0x3fd6123810e88590              # double 0.344862
	.quad	0x3fd253c148344c38              # double 0.28636200000000001
	.quad	0x3fe573d188f42fe8              # double 0.67038799999999998
	.quad	0x3fe6d017dae81883              # double 0.71290200000000004
	.quad	0x3f7ee45c358afc48              # double 0.0075420000000000001
	.quad	0x3fec0eda22f6a50d              # double 0.87681299999999995
	.quad	0x3fe5125fe974a340              # double 0.65849299999999999
	.quad	0x3fe95af294dd7236              # double 0.79235199999999995
	.quad	0x3fecb1876188b114              # double 0.89667099999999999
	.quad	0x3fee12be48a58b3f              # double 0.93978799999999996
	.quad	0x3fc700cd855970b5              # double 0.17971200000000001
	.quad	0x3fd2b402d16b97ff              # double 0.29223700000000002
	.quad	0x3fdc04ea4a8c154d              # double 0.43780000000000002
	.quad	0x3fde17efe0ce0b91              # double 0.47021099999999999
	.quad	0x3fe9367e414e7ee9              # double 0.78790199999999999
	.quad	0x3fe137c1376d5497              # double 0.53805599999999998
	.quad	0x3fc5d74d594f26af              # double 0.17063300000000001
	.quad	0x3fed354c122749f1              # double 0.91275600000000001
	.quad	0x3fd7a31a4bdba0a5              # double 0.36932999999999999
	.quad	0x3fee6f9335d249e4              # double 0.95111999999999996
	.quad	0x3fc2d855970b49e0              # double 0.147227
	.quad	0x3fc26f3f52fc2657              # double 0.14402000000000001
	.quad	0x3fd0fc2224edf612              # double 0.26538899999999999
	.quad	0x3fa8eb67c286f8ad              # double 0.048670999999999999
	.quad	0x3fe7358d1526d8b2              # double 0.72528700000000002
	.quad	0x3fe25d4845132f88              # double 0.57388700000000004
	.quad	0x3fe0acf52b90a783              # double 0.52111300000000005
	.quad	0x3fe92398201cd5fa              # double 0.78559500000000004
	.quad	0x3fda1aa821f2990f              # double 0.40787699999999999
	.quad	0x3fbca009f623076c              # double 0.111817
	.quad	0x3fe10bc59b8023a7              # double 0.53268700000000002
	.quad	0x3fe52120e1f7d73d              # double 0.66029400000000005
	.quad	0x3fe850c3d25247cb              # double 0.75985899999999995
	.quad	0x3fd102795703f2d4              # double 0.26577600000000001
	.quad	0x3fec13879c4113c7              # double 0.87738400000000005
	.quad	0x3fe791dbca9691a7              # double 0.73655499999999996
	.quad	0x3fc43e6c4c5974e6              # double 0.15815499999999999
	.quad	0x3fe9228997c3d684              # double 0.78546599999999999
	.quad	0x3fda9945b6c3760c              # double 0.415605
	.quad	0x3fe6385a4f00ef13              # double 0.69437899999999997
	.quad	0x3fef1d8c6d612c6b              # double 0.97235700000000002
	.quad	0x3fef02f512663411              # double 0.96911099999999994
	.quad	0x3feb83e8576cce5f              # double 0.85985199999999995
	.quad	0x3fe4e6e86c6583e8              # double 0.65318699999999996
	.quad	0x3fe83d017dae8188              # double 0.75744699999999998
	.quad	0x3fe25a22f6a50d6b              # double 0.57350299999999999
	.quad	0x3fe23d4f15e7c8d2              # double 0.56998400000000005
	.quad	0x3fce666666666666              # double 0.23749999999999999
	.quad	0x3fd6298cc144028e              # double 0.34628599999999998
	.quad	0x3fe7b4070329802c              # double 0.740726
	.quad	0x3fea62584f4c6e6e              # double 0.82450500000000004
	.quad	0x3fec5d15f02c4d66              # double 0.88636300000000001
	.quad	0x3fc82d16b97fe8ee              # double 0.18887599999999999
	.quad	0x3fe6d8d5842b734b              # double 0.71396899999999996
	.quad	0x3fe4af0bf1a5ca2a              # double 0.64636800000000005
	.quad	0x3fc94330d738609a              # double 0.19736300000000001
	.quad	0x3fb893a71151611c              # double 0.096003000000000004
	.quad	0x3fe8e5f5275ee99a              # double 0.77807099999999996
	.quad	0x3fe676427c7c5261              # double 0.701936
	.quad	0x3fc5c7e6b3fe9fae              # double 0.17016300000000001
	.quad	0x3fdf90bc7b45f17c              # double 0.49320900000000001
	.quad	0x3fe35df86e3b46fe              # double 0.60522100000000001
	.quad	0x3fe2e455eaee2004              # double 0.59037300000000004
	.quad	0x3faf8f8a4c1ebc84              # double 0.061642000000000002
	.quad	0x3fef8f776c4827b7              # double 0.986263
	.quad	0x3fd58cac4b4d056c              # double 0.33671099999999998
	.quad	0x3fe08a808c8259e2              # double 0.51690700000000001
	.quad	0x3fb7893faf42784b              # double 0.091938000000000006
	.quad	0x3fdb22af5771001d              # double 0.42399199999999998
	.quad	0x3fc209e55c0fcb4f              # double 0.140927
	.quad	0x3fee15b1422ccb3a              # double 0.94014799999999998
	.quad	0x3fe0719934efcbd5              # double 0.51386699999999996
	.quad	0x3fc2e3d5fdcdf698              # double 0.14757799999999999
	.quad	0x3fb8fc3f811f4f51              # double 0.097599000000000005
	.quad	0x3fb92dcb1465e892              # double 0.098354999999999997
	.quad	0x3fd5c5931ca7d673              # double 0.34018399999999999
	.quad	0x3fe1ffb480a5accd              # double 0.56246399999999996
	.quad	0x3feaf78dd616f86a              # double 0.842719
	.quad	0x3fe7ca72ead9274e              # double 0.74346299999999998
	.quad	0x3fd3e2da554b8bf0              # double 0.31072100000000002
	.quad	0x3fecdf3b645a1cac              # double 0.90224999999999999
	.quad	0x3fe310ff97247454              # double 0.59582500000000005
	.quad	0x3fc6154c985f06f7              # double 0.17252500000000001
	.quad	0x3fe8d8298cc14403              # double 0.77638700000000005
	.quad	0x3fe6c3b4f6167232              # double 0.71138999999999997
	.quad	0x3fbcb9ecf6380022              # double 0.11221200000000001
	.quad	0x3fd3068db8bac711              # double 0.29727500000000001
	.quad	0x3fee87852f7f498c              # double 0.95404299999999997
	.quad	0x3fdacdf69878316a              # double 0.418821
	.quad	0x3fd7a5870da5daf0              # double 0.36947799999999997
	.quad	0x3fc2ba6266fd651b              # double 0.146313
	.quad	0x3fe7092ee84ad795              # double 0.71987100000000004
	.quad	0x3fc9dd441355475a              # double 0.20206499999999999
	.quad	0x3fd1ff47735c182f              # double 0.28120600000000001
	.quad	0x3fd8439de481f538              # double 0.37912699999999999
	.quad	0x3fe9835158b827fa              # double 0.79727999999999999
	.quad	0x3fe506db50f40e5a              # double 0.65708699999999998
	.quad	0x3fda2ac322291fb4              # double 0.40886
	.quad	0x3fe740d2c386d2ed              # double 0.72666299999999995
	.quad	0x3fe53c68661ae70c              # double 0.66362399999999999
	.quad	0x3fe79210385c67e0              # double 0.73658000000000001
	.quad	0x3fd134549b62c775              # double 0.26881899999999997
	.quad	0x3fa5d35653c9abb0              # double 0.042627999999999999
	.quad	0x3febe35a426bb55b              # double 0.87150300000000003
	.quad	0x3fcf90c0ad03d9a9              # double 0.24660499999999999
	.quad	0x3fda6d04e618ce2d              # double 0.41290399999999999
	.quad	0x3fe6189df1172ef1              # double 0.69050500000000004
	.quad	0x3fc104790b849881              # double 0.13294900000000001
	.quad	0x3fe8f75968512232              # double 0.78019400000000005
	.quad	0x3fc7ca42aed13943              # double 0.18586
	.quad	0x3f8f2fdb8fde2ef5              # double 0.015228
	.quad	0x3fc72617c1bda512              # double 0.18085000000000001
	.quad	0x3feafb4c3c18b503              # double 0.84317600000000004
	.quad	0x3fe8097635e7429a              # double 0.75115500000000002
	.quad	0x3fe8d9a30984e400              # double 0.77656700000000001
	.quad	0x3fe47c58ab92c062              # double 0.64017900000000005
	.quad	0x3fef79a6b50b0f28              # double 0.98360000000000002
	.quad	0x3feabe3e29307af2              # double 0.83572299999999999
	.quad	0x3fc857b84db9c737              # double 0.19017700000000001
	.quad	0x3fee41f85d744f5d              # double 0.94555299999999998
	.quad	0x3fe6735c182ecaef              # double 0.70158200000000004
	.quad	0x3fcca6dacabc5155              # double 0.22384200000000001
	.quad	0x3fde1b691212513b              # double 0.47042299999999998
	.quad	0x3fe46a57214f0521              # double 0.63798100000000002
	.quad	0x3fe687cc7d1bb491              # double 0.70407699999999995
	.quad	0x3fcb83f0bae89eba              # double 0.21496399999999999
	.quad	0x3fe0c107314ca926              # double 0.523563
	.quad	0x3fe688aefb2aae29              # double 0.70418499999999995
	.quad	0x3fe8c64fdb09a672              # double 0.77420800000000001
	.quad	0x3fcf95f676ea4229              # double 0.24676400000000001
	.quad	0x3fe7185f06f69446              # double 0.72172499999999995
	.quad	0x3fe8d790752da986              # double 0.77631399999999995
	.quad	0x3fbb621fafc8b008              # double 0.10696600000000001
	.quad	0x3fea0d49949e8816              # double 0.81412200000000001
	.quad	0x3fdf5dfa871a3b15              # double 0.49011100000000002
	.quad	0x3fcb1f601797cc3a              # double 0.211895
	.quad	0x3febfe1975f2cb64              # double 0.87476799999999999
	.quad	0x3fe269680e065300              # double 0.57536699999999996
	.quad	0x3fd0db8fde2ef4e0              # double 0.263401
	.quad	0x3fec724d8fd5cb79              # double 0.88895299999999999
	.quad	0x3fcc75d56f32bdc2              # double 0.22234599999999999
	.quad	0x3fb3e9531550ca1d              # double 0.077779000000000001
	.quad	0x3fd647c73eee5259              # double 0.34813100000000002
	.quad	0x3fe3997a24894c44              # double 0.61248499999999995
	.quad	0x3feb40a6b93ccd10              # double 0.85164200000000001
	.quad	0x3fe30064a9cdc444              # double 0.59379800000000005
	.quad	0x3fd62b7fe08aefb3              # double 0.34640500000000002
	.quad	0x3fda5bb7b6bb1290              # double 0.41184799999999999
	.quad	0x3fe4dfdef8487b9a              # double 0.65232800000000002
	.quad	0x3fdbe68a0d349be9              # double 0.435946
	.quad	0x3fe9c9774256bca5              # double 0.80584299999999998
	.quad	0x3fd2632c1f42bb66              # double 0.28730299999999998
	.quad	0x3fda90b417ca2121              # double 0.41508200000000001
	.quad	0x3fa3ec02f2f98740              # double 0.03891
	.quad	0x3fc46b1e5c0b9991              # double 0.15951899999999999
	.quad	0x3fe60df9bdc69f8c              # double 0.68920599999999999
	.quad	0x3fd5e4fb97bb7308              # double 0.34210099999999999
	.quad	0x3feebe89a88ace25              # double 0.96075900000000002
	.quad	0x3fc7b7414a4d2b2c              # double 0.18528
	.quad	0x3fdcbcb1cc964628              # double 0.449017
	.quad	0x3fc14d7add15f02c              # double 0.13517699999999999
	.quad	0x3fc18c5436b8f9b1              # double 0.13709499999999999
	.quad	0x3fe596b54e2b063e              # double 0.674647
	.quad	0x3fe6c575c0767d35              # double 0.71160400000000001
	.quad	0x3fe3fe69270b06c4              # double 0.62480599999999997
	.quad	0x3fcf9e3864cb5bb4              # double 0.24701600000000001
	.quad	0x3fdf9081c2e33eff              # double 0.49319499999999999
	.quad	0x3fe967a743a647fe              # double 0.79390300000000003
	.quad	0x3fea4723aafff36b              # double 0.82118400000000003
	.quad	0x3feb95e39713ad5c              # double 0.862047
	.quad	0x3fdcb020c49ba5e3              # double 0.44824999999999998
	.quad	0x3fef3b7f9d6f1130              # double 0.97601300000000002
	.quad	0x3fdbaca36199780c              # double 0.43241200000000002
	.quad	0x3fe40d5e8d5410f9              # double 0.62663199999999997
	.quad	0x3fe340f238972043              # double 0.60167800000000005
	.quad	0x3f9cf52b90a78290              # double 0.028278999999999999
	.quad	0x3fdb644955b4677b              # double 0.42799599999999999
	.quad	0x3feed28ae74f2f12              # double 0.96320099999999997
	.quad	0x3fea20d349be8ff3              # double 0.81650699999999998
	.quad	0x3fe7273929ed3954              # double 0.72353800000000001
	.quad	0x3feda737110e453d              # double 0.92666199999999999
	.quad	0x3fcbe846a5d6bebe              # double 0.218026
	.quad	0x3fe0502cd39da166              # double 0.50978699999999999
	.quad	0x3fd3795703f2d3c8              # double 0.30428100000000002
	.quad	0x3fee8bfc2224edf6              # double 0.95458799999999999
	.quad	0x3fa3606b7aa25d8d              # double 0.037844999999999997
	.quad	0x3fe9d6c2efd438d2              # double 0.80746600000000002
	.quad	0x3fdafe6d58c8eef2              # double 0.42177900000000002
	.quad	0x3fd2eaab042528ae              # double 0.29557299999999997
	.quad	0x3fdc6c11a11233df              # double 0.44409599999999999
	.quad	0x3fd62888b545c78a              # double 0.34622399999999998
	.quad	0x3fecacf7446f9b99              # double 0.89611399999999997
	.quad	0x3fcd8a3b57c4e2f3              # double 0.23078099999999999
	.quad	0x3fc44d22c881e471              # double 0.15860399999999999
	.quad	0x3fe134959e625636              # double 0.53766899999999995
	.quad	0x3fd52107b784662c              # double 0.33014100000000002
	.quad	0x3fa1f559b3d07c85              # double 0.035075000000000002
	.quad	0x3feb1e1f3a57eaa3              # double 0.84742700000000004
	.quad	0x3fb3404ea4a8c155              # double 0.075200000000000003
	.quad	0x3fee973d9ec70004              # double 0.95596199999999997
	.quad	0x3fa02773e24febd1              # double 0.031551000000000003
	.quad	0x3fd2a71de69ad42c              # double 0.29144999999999999
	.quad	0x3fe83f5946c332f0              # double 0.75773299999999999
	.quad	0x3fe32c471b478423              # double 0.59915499999999999
	.quad	0x3febdf6ba0620ab7              # double 0.87102299999999999
	.quad	0x3fe5b1897a67a52b              # double 0.67792200000000002
	.quad	0x3fdaa6c5d206c871              # double 0.41642899999999999
	.quad	0x3fcb6d0917d6b65b              # double 0.21426500000000001
	.quad	0x3fd154c122749f0e              # double 0.27079799999999998
	.quad	0x3fdfa0be51090710              # double 0.49418600000000001
	.quad	0x3fc352007dd44135              # double 0.15093999999999999
	.quad	0x3fdf17df19d66adb              # double 0.48583199999999999
	.quad	0x3fbb1715c63ae254              # double 0.105821
	.quad	0x3fd4be09bb6aa4ba              # double 0.32409900000000003
	.quad	0x3f8e7d9988d2a1f9              # double 0.014888
	.quad	0x3fb15c853c148345              # double 0.067818000000000003
	.quad	0x3fe92b8c75c4a83b              # double 0.78656599999999999
	.quad	0x3feb8d3f1843c3a4              # double 0.86099199999999997
	.quad	0x3fef11233df2a9d6              # double 0.97084199999999998
	.quad	0x3fe1fd5885d31338              # double 0.56217600000000001
	.quad	0x3feb80c0f01fb82c              # double 0.85946699999999998
	.quad	0x3fdb05ab3aabcd79              # double 0.42222100000000001
	.quad	0x3fb73b7521144cbe              # double 0.090750999999999998
	.quad	0x3fe524d8fd5cb791              # double 0.660748
	.quad	0x3fe03419e30014f9              # double 0.50636000000000003
	.quad	0x3fd145c78a6dacac              # double 0.26988400000000001
	.quad	0x3fd50e0eb67c2870              # double 0.32898300000000003
	.quad	0x3fc126e978d4fdf4              # double 0.13400000000000001
	.quad	0x3fd8774eebf65dc0              # double 0.38228200000000001
	.quad	0x3fdf55bccaf709b7              # double 0.48960799999999999
	.quad	0x3fcb0092ccf6be38              # double 0.210955
	.quad	0x3fd3c4d65e460675              # double 0.30888900000000002
	.quad	0x3fd91db0142f61ed              # double 0.39243699999999998
	.quad	0x3fede106ab14ec20              # double 0.93371899999999996
	.quad	0x3fbb45cfede97d07              # double 0.106534
	.quad	0x3fb21986b9c304cd              # double 0.070702000000000001
	.quad	0x3fd5c9d5a187a4a5              # double 0.34044400000000002
	.quad	0x3fe35cb790fb6567              # double 0.60506800000000005
	.quad	0x3fe9a41e57d9dba9              # double 0.801284
	.quad	0x3feff080303c07ee              # double 0.998108
	.quad	0x3fb55c63ae2541d9              # double 0.083441000000000001
	.quad	0x3fdb860dcb9a9da6              # double 0.43005700000000002
	.quad	0x3fedc71b47842310              # double 0.93055500000000002
	.quad	0x3f9d9c27e9531551              # double 0.028916000000000001
	.quad	0x3fed6088d6d3b6cc              # double 0.91803400000000001
	.quad	0x3fdb2ef911cf355d              # double 0.42474200000000001
	.quad	0x3f8204295a6c5d20              # double 0.0087969999999999993
	.quad	0x3fc077a2cecc814d              # double 0.12865099999999999
	.quad	0x3fe039cd8127b2cc              # double 0.50705599999999995
	.quad	0x3fe1a21ea35935fc              # double 0.55103999999999997
	.quad	0x3fe2d5ed06fef7c2              # double 0.58861399999999997
	.quad	0x3fe5adc4c9c90c4e              # double 0.67746200000000001
	.quad	0x3fd5b0856e696a27              # double 0.33889900000000001
	.quad	0x3fd42d40aaeafab5              # double 0.31526199999999999
	.quad	0x3f77b30f8c64fdb1              # double 0.0057860000000000003
	.quad	0x3fd6894812be48a6              # double 0.35212900000000003
	.quad	0x3fd5c4651f3e89a9              # double 0.34011200000000003
	.quad	0x3fe990d38cda6e76              # double 0.798929
	.quad	0x3fd92abef06b3786              # double 0.39323399999999997
	.quad	0x3fe05681ecd4aa11              # double 0.51056000000000001
	.quad	0x3fe9a3ad18d25edd              # double 0.80123
	.quad	0x3fa2250f840181e0              # double 0.035438999999999998
	.quad	0x3fd9e060fe47991c              # double 0.40432000000000001
	.quad	0x3fd389f40a2877ee              # double 0.30529499999999998
	.quad	0x3fe561975f2cb641              # double 0.66816299999999995
	.quad	0x3fc4e9a2c669057d              # double 0.16338
	.quad	0x3fd0b59ddc1e7968              # double 0.26108500000000001
	.quad	0x3feedcd0bb6ed677              # double 0.96445499999999995
	.quad	0x3fdc41d4b6a619db              # double 0.44151800000000002
	.quad	0x3fe098372e6a7696              # double 0.51858099999999996
	.quad	0x3f804f6dfc5cdd51              # double 0.0079640000000000005
	.quad	0x3f9a2fcefaa4766c              # double 0.025572999999999999
	.quad	0x3fdc8f42fe82517e              # double 0.44624399999999997
	.quad	0x3fd498a65492ff4c              # double 0.32181700000000002
	.quad	0x3fe6a6f60e0eb67c              # double 0.70788099999999998
	.quad	0x3fb1f91600f34507              # double 0.070207000000000006
	.quad	0x3fec87bdcf0307f2              # double 0.89156999999999997
	.quad	0x3f592641b328b6d8              # double 0.0015349999999999999
	.quad	0x3fe50e8c8abd5dc4              # double 0.658026
	.quad	0x3fec6084a515ce9e              # double 0.88678199999999996
	.quad	0x3fe6d744f5d35654              # double 0.71377800000000002
	.quad	0x3fe0e56cd6c2efd4              # double 0.52800599999999998
	.quad	0x3fe9f20c8cd63cb8              # double 0.81079699999999999
	.quad	0x3fd8b86b15f88fc9              # double 0.38625599999999999
	.quad	0x3feb39c94f69ca9f              # double 0.850804
	.quad	0x3fe69c8eabffcdab              # double 0.70661099999999999
	.quad	0x3fe7390c9107faa0              # double 0.72571399999999997
	.quad	0x3fc8939eadd590c1              # double 0.19200500000000001
	.quad	0x3fddcc20d5629d84              # double 0.465584
	.quad	0x3fe4aababead4f59              # double 0.645841
	.quad	0x3fd839b456b441bc              # double 0.37852200000000003
	.quad	0x3fe580d3cff64cf9              # double 0.67197600000000002
	.quad	0x3fb0267839cd8128              # double 0.063087000000000004
	.quad	0x3fbd2018a43bb40b              # double 0.113771
	.quad	0x3fe873e468cac4b5              # double 0.76414700000000002
	.quad	0x3fc601e68a0d349c              # double 0.171933
	.quad	0x3fe28e64b2314014              # double 0.57988200000000001
	.quad	0x3fe036eb4e981388              # double 0.50670400000000004
	.quad	0x3fceb3d4ae429e0a              # double 0.23986299999999999
	.quad	0x3feb38eb0318b934              # double 0.85069799999999995
	.quad	0x3fe6199dcb5781c7              # double 0.69062699999999999
	.quad	0x3fc2c2ce4649906d              # double 0.14657000000000001
	.quad	0x3fe4e748e4755ffe              # double 0.65323299999999995
	.quad	0x3fe00aeb80ecfa6a              # double 0.50133300000000003
	.quad	0x3fe49d9b1b79d90a              # double 0.64423900000000001
	.quad	0x3fe24be1eb4202da              # double 0.57176300000000002
	.quad	0x3fbbcf91a32b12d3              # double 0.108636
	.quad	0x3fc899b6f5caf2d8              # double 0.192191
	.quad	0x3fefb6cdf266ba49              # double 0.99106499999999997
	.quad	0x3fd381a5870da5db              # double 0.304788
	.quad	0x3fdedcc20d5629d8              # double 0.48222399999999999
	.quad	0x3fc3d2c7b890d5a6              # double 0.15487000000000001
	.quad	0x3fd81a79fec99f1b              # double 0.37661600000000001
	.quad	0x3fbe807bbb62413e              # double 0.119148
	.quad	0x3fd365a9a8049668              # double 0.30308000000000002
	.quad	0x3fcf4ccab3edd8b6              # double 0.244531
	.quad	0x3fdfee807bbb6241              # double 0.49893199999999999
	.quad	0x3feb09eba6aca793              # double 0.84496099999999996
	.quad	0x3feb7521144cbe1f              # double 0.85804800000000003
	.quad	0x3fd9038e29f9ce8e              # double 0.39084200000000002
	.quad	0x3faebbba55d1c3ad              # double 0.060026000000000003
	.quad	0x3fcb4117f84449dc              # double 0.212924
	.quad	0x3fc167a0f9096bba              # double 0.13597500000000001
	.quad	0x3fe9af09d8c6d613              # double 0.80261700000000002
	.quad	0x3fdf7caa7589efd8              # double 0.49198399999999998
	.quad	0x3fe6b85c67dfe32a              # double 0.710005
	.quad	0x3fec0b19a415f45e              # double 0.876355
	.quad	0x3fedbb1af3a14cec              # double 0.92908999999999997
	.quad	0x3f93f9e7b80a9de9              # double 0.019508000000000001
	.quad	0x3fc14280ae104923              # double 0.13484199999999999
	.quad	0x3fef19d451fc4c16              # double 0.97190299999999996
	.quad	0x3fe212d98bf7f067              # double 0.564801
	.quad	0x3fe7411e42e12620              # double 0.72669899999999998
	.quad	0x3febdde9c0229a5f              # double 0.87083900000000003
	.quad	0x3fe0562174c4cdfb              # double 0.51051400000000002
	.quad	0x3fd422c450268901              # double 0.31462200000000001
	.quad	0x3fd52a8869c66d37              # double 0.33072099999999999
	.quad	0x3f9b15f88fc9363f              # double 0.026450999999999999
	.quad	0x3fb9f51697f1f9ad              # double 0.101396
	.quad	0x3fdafb762d83c6c9              # double 0.42159799999999997
	.quad	0x3fd5220bc382a130              # double 0.33020300000000002
	.quad	0x3fcdc579f2346562              # double 0.23258899999999999
	.quad	0x3fe92bd3c3611340              # double 0.78659999999999997
	.quad	0x3fe06f0ae536501e              # double 0.51355499999999998
	.quad	0x3fe94c2d6a9c560c              # double 0.79054899999999994
	.quad	0x3fee67967caea748              # double 0.95014500000000001
	.quad	0x3fabc3a42f1ed17c              # double 0.054226999999999997
	.quad	0x3fee10e8858ff759              # double 0.93956399999999995
	.quad	0x3fc3c12f09d8c6d6              # double 0.154333
	.quad	0x3fbb24d8fd5cb791              # double 0.106031
	.quad	0x3fef42d27807789a              # double 0.97690699999999997
	.quad	0x3fedb6f5caf2d7f9              # double 0.92858399999999996
	.quad	0x3fe0bfe5c91d14e4              # double 0.52342500000000003
	.quad	0x3fd76df82b1f687b              # double 0.366087
	.quad	0x3fcb61672324c836              # double 0.21390999999999999
	.quad	0x3fc115f88fc9363f              # double 0.13348299999999999
	.quad	0x3fec2539756c93a7              # double 0.87954399999999999
	.quad	0x3fe034a2339c0ebf              # double 0.50642500000000001
	.quad	0x3fb69af5ba2be059              # double 0.088302000000000005
	.quad	0x3fdd116a8b8f14db              # double 0.45418799999999998
	.quad	0x3fcc81e4712e4085              # double 0.222714
	.quad	0x3fdc9e8c47a17f41              # double 0.44717699999999999
	.quad	0x3fdad230b9dc2f40              # double 0.41907899999999998
	.quad	0x3fee31d92b7fe08b              # double 0.94358500000000001
	.quad	0x3fe166149c6f36f0              # double 0.54371100000000006
	.quad	0x3fd1d36f7e3d1cc1              # double 0.27853
	.quad	0x3fbdeb851eb851ec              # double 0.11687500000000001
	.quad	0x3fe6029068986fce              # double 0.68781300000000001
	.quad	0x3fe8abc2fc69728a              # double 0.77096699999999996
	.quad	0x3fdf69b5a63f9a4a              # double 0.49082700000000001
	.quad	0x3f9767d34df04ddb              # double 0.022856999999999999
	.quad	0x3f74d834091c0874              # double 0.0050889999999999998
	.quad	0x3fe679bdc69f8c22              # double 0.70236100000000001
	.quad	0x3fce2e90364388ec              # double 0.23579600000000001
	.quad	0x3feab1a4bdba0a52              # double 0.83418499999999995
	.quad	0x3fc7c99285a921cd              # double 0.185839
	.quad	0x3fbaf965b20b8067              # double 0.105368
	.quad	0x3fd23d25247cb70b              # double 0.28498200000000001
	.quad	0x3f2a1554fbdad752              # double 1.9900000000000001E-4
	.quad	0x3fd9e642bf9830e4              # double 0.40467900000000001
	.quad	0x3fae9d7342edbb5a              # double 0.059795000000000001
	.quad	0x3fe50e4fb97bb731              # double 0.65799700000000005
	.quad	0x3fe309c5e6ff7dfa              # double 0.594943
	.quad	0x3fe579873ffac1d3              # double 0.67108500000000004
	.quad	0x3feb49afe1da7b0b              # double 0.85274499999999998
	.quad	0x3f6a93293d102bc7              # double 0.0032439999999999999
	.quad	0x3fd71476af89c5e7              # double 0.360624
	.quad	0x3fdb9784ec636b09              # double 0.43112299999999998
	.quad	0x3fd293c89f40a287              # double 0.29026999999999997
	.quad	0x3fa14163779e9d0f              # double 0.033702000000000003
	.quad	0x3fc1fd47bedb7282              # double 0.140542
	.quad	0x3fe7615a8deb0fae              # double 0.73063400000000001
	.quad	0x3fd13a92a3055326              # double 0.26919999999999999
	.quad	0x3fe6874c8ffb8b26              # double 0.70401599999999998
	.quad	0x3fa4a8c154c985f0              # double 0.040349999999999997
	.quad	0x3fb68dda48b65237              # double 0.088102
	.quad	0x3fc0d2999567dbb1              # double 0.13142699999999999
	.quad	0x3fca508b32ce8965              # double 0.20558299999999999
	.quad	0x3feb601797cc3a00              # double 0.85548000000000002
	.quad	0x3fe3bbcd35a85879              # double 0.61667499999999997
	.quad	0x3feaf52b90a78290              # double 0.84242799999999995
	.quad	0x3fe37dbb16c1e365              # double 0.60909800000000003
	.quad	0x3fd242917507e9d9              # double 0.28531299999999998
	.quad	0x3fe47ea8112ba16e              # double 0.64046099999999995
	.quad	0x3fe9f84230fcf80e              # double 0.81155500000000003
	.quad	0x3fe6085d31337eb3              # double 0.68852100000000005
	.quad	0x3fe12bc72e275ab8              # double 0.53659400000000002
	.quad	0x3fd3bca5375c8da0              # double 0.30838900000000002
	.quad	0x3feb819b0ab2e169              # double 0.85957099999999997
	.quad	0x3fbc472c0e7bc3c6              # double 0.110461
	.quad	0x3fd46e8af81626b3              # double 0.319247
	.quad	0x3fc68bb906466b1e              # double 0.17613899999999999
	.quad	0x3fe5b6b09635610b              # double 0.67855100000000002
	.quad	0x3fda3f4a98aa8651              # double 0.41011300000000001
	.quad	0x3f6392189bd8383b              # double 0.0023890000000000001
	.quad	0x3fd362e90364388f              # double 0.30291200000000001
	.quad	0x3fdf6006d0d4994a              # double 0.49023600000000001
	.quad	0x3fe89192641b328b              # double 0.76776999999999995
	.quad	0x3fe6f3fd933e35c6              # double 0.71728400000000003
	.quad	0x3fe06e807bbb6241              # double 0.51348899999999997
	.quad	0x3fd05b573eab367a              # double 0.255575
	.quad	0x3fb1adea897635e7              # double 0.069059999999999996
	.quad	0x3feba16e7a311e86              # double 0.863456
	.quad	0x3f717720c8cd63cc              # double 0.0042640000000000004
	.quad	0x3fc38e086bdf4c2b              # double 0.15277199999999999
	.quad	0x3faf46ed245b291c              # double 0.061088000000000003
	.quad	0x3fed182a9930be0e              # double 0.90920000000000001
	.quad	0x3fbf7af640639d5e              # double 0.12297
	.quad	0x3fe8465c70435efa              # double 0.75858899999999996
	.quad	0x3fbc0c521dda059a              # double 0.10956299999999999
	.quad	0x3fd484cf0739b025              # double 0.320606
	.quad	0x3fac636b09635611              # double 0.055446000000000002
	.quad	0x3fd5e154434e336a              # double 0.34187800000000002
	.quad	0x3fe9286d71f36263              # double 0.78618500000000002
	.quad	0x3fda4bf4cb1897a6              # double 0.41088599999999997
	.quad	0x3fc14cc25072085b              # double 0.135155
	.quad	0x3fdb8c2a454de7ea              # double 0.43042999999999998
	.quad	0x3fb5b1d92b7fe08b              # double 0.084745000000000001
	.quad	0x3fe627ded6ba8c58              # double 0.69236699999999995
	.quad	0x3fd9e33eff195033              # double 0.40449499999999999
	.quad	0x3fd60af5fd47bedb              # double 0.34441899999999998
	.quad	0x3fdbc6b053198288              # double 0.434002
	.quad	0x3fe8004d98394749              # double 0.75003699999999995
	.quad	0x3fd526bf8769ec2d              # double 0.33049000000000001
	.quad	0x3fe14768dfbd6a59              # double 0.53996699999999997
	.quad	0x3fef6822ff08893b              # double 0.98146199999999994
	.quad	0x3fc176683c297bfa              # double 0.13642599999999999
	.quad	0x3fd5b790fb65668c              # double 0.33932899999999999
	.quad	0x3fe626e978d4fdf4              # double 0.69225000000000003
	.quad	0x3f846994185058de              # double 0.0099670000000000001
	.quad	0x3fbc11c2a0232096              # double 0.10964599999999999
	.quad	0x3fda8d36b4c7f349              # double 0.41486899999999999
	.quad	0x3fdde84ad794a6ec              # double 0.46730300000000002
	.quad	0x3fef44f3ba775fb3              # double 0.977167
	.quad	0x3fd82de00d1b7176              # double 0.37780000000000002
	.quad	0x3fe085be1a826245              # double 0.51632599999999995
	.quad	0x3f72b3cc4ac6cdaf              # double 0.0045659999999999997
	.quad	0x3fe7968512231833              # double 0.737124
	.quad	0x3fefc8a159817b96              # double 0.99324100000000004
	.quad	0x3fd9036006d0d499              # double 0.39083099999999998
	.quad	0x3fe17c1df3300de5              # double 0.54640100000000003
	.quad	0x3feb327cbf6e3f79              # double 0.84991300000000003
	.quad	0x3fed0678c0053e2d              # double 0.90703999999999996
	.quad	0x3fef4f15e7c8d196              # double 0.97840400000000005
	.quad	0x3feea808c8259e1f              # double 0.95801199999999997
	.quad	0x3fbff1d81f106680              # double 0.12478400000000001
	.quad	0x3f56872b020c49ba              # double 0.0013749999999999999
	.quad	0x3fd152157689ca19              # double 0.27063500000000001
	.quad	0x3fe40244e93e1c9b              # double 0.62527699999999997
	.quad	0x3feac58ab92c0618              # double 0.83661399999999997
	.quad	0x3fe8822bbecaab8a              # double 0.76588999999999996
	.quad	0x3fe2c534bd76ee74              # double 0.58657300000000001
	.quad	0x3fd73b7952d234ec              # double 0.36300500000000002
	.quad	0x3fced22c881e4713              # double 0.240789
	.quad	0x3fee19cbee807bbb              # double 0.94064899999999996
	.quad	0x3f8d5f56a7ac81d4              # double 0.014342000000000001
	.quad	0x3fac75e6362a5e78              # double 0.055586999999999998
	.quad	0x3fb807789a459104              # double 0.093864000000000003
	.quad	0x3fdd8537e2c55c96              # double 0.461256
	.quad	0x3fed42fe82517e78              # double 0.91442800000000002
	.quad	0x3fe926f826edaa93              # double 0.78600700000000001
	.quad	0x3fe3f5536933a040              # double 0.62369699999999995
	.quad	0x3fc4a67620ee8d11              # double 0.16133
	.quad	0x3fcd2dc2b0ea1837              # double 0.22795899999999999
	.quad	0x3fe4675360d02470              # double 0.63761299999999999
	.quad	0x3fe98d130df9bdc7              # double 0.79847100000000004
	.quad	0x3fd3420b3d4ae42a              # double 0.30090600000000001
	.quad	0x3fd8e4f3343fa2ad              # double 0.38897399999999999
	.quad	0x3fe98eda22f6a50d              # double 0.79868799999999995
	.quad	0x3fe1a1f2990f301f              # double 0.55101900000000004
	.quad	0x3fed147cfa26a22b              # double 0.90875099999999998
	.quad	0x3fe269a4df47f994              # double 0.57539600000000002
	.quad	0x3fe5f43632c1f42c              # double 0.68606100000000003
	.quad	0x3fafd88c1db0142f              # double 0.062198999999999997
	.quad	0x3fad692b3cc4ac6d              # double 0.057443000000000001
	.quad	0x3feda2856605ee57              # double 0.92608900000000005
	.quad	0x3fe67fe08aefb2ab              # double 0.70311000000000001
	.quad	0x3febc7a9e2bcf91a              # double 0.86812299999999998
	.quad	0x3fe891d3671ac14c              # double 0.76780099999999995
	.quad	0x3feba91d9b1b79d9              # double 0.864394
	.quad	0x3fcc55b89939218a              # double 0.22136600000000001
	.quad	0x3fb350b0f27bb2ff              # double 0.075450000000000003
	.quad	0x3fdcfc6da4484945              # double 0.452907
	.quad	0x3feb1a8ac5c13fd1              # double 0.84699000000000002
	.quad	0x3fc579af1886df83              # double 0.16777600000000001
	.quad	0x3fd33fb3743632c2              # double 0.300763
	.quad	0x3fd094f69ca9ef52              # double 0.25909199999999999
	.quad	0x3fd0c7fbacb42891              # double 0.26220599999999999
	.quad	0x3feaa4a6a875d56f              # double 0.83259899999999998
	.quad	0x3fe0adfd694ccab4              # double 0.52123900000000001
	.quad	0x3fdc1ca3a4b5568f              # double 0.43924800000000003
	.quad	0x3fc1a1016ce789e7              # double 0.13772599999999999
	.quad	0x3fe52cd39da16617              # double 0.66172200000000003
	.quad	0x3fdc1704ff43419e              # double 0.43890499999999999
	.quad	0x3fb5441355475a32              # double 0.083070000000000004
	.quad	0x3fe9f861a60d4563              # double 0.81157000000000001
	.quad	0x3fd4ba51a005c465              # double 0.32387199999999999
	.quad	0x3fbe0b912dba4d6e              # double 0.117364
	.quad	0x3fe8f0cbaf965b21              # double 0.77939400000000003
	.quad	0x3f8899392189bd84              # double 0.012011000000000001
	.quad	0x3fd056b441bb8c33              # double 0.25529200000000002
	.quad	0x3fdcd72ffd1dcd70              # double 0.45063399999999998
	.quad	0x3f8b57c4e2f37fbf              # double 0.013351
	.quad	0x3fe23f24d8fd5cb8              # double 0.57020800000000005
	.quad	0x3fe17292c4934268              # double 0.54523600000000005
	.quad	0x3fc84c48adeebb34              # double 0.189828
	.quad	0x3fde6ac215b9a5a9              # double 0.47526600000000002
	.quad	0x3fb53a2df9378ee3              # double 0.082919000000000007
	.quad	0x3fc5b5393250b524              # double 0.16959299999999999
	.quad	0x3fc103f2d3c792d1              # double 0.132933
	.quad	0x3fcb422ccb3a2596              # double 0.21295700000000001
	.quad	0x3faecf41f212d773              # double 0.060174999999999999
	.quad	0x3fb66c7eae5bc87e              # double 0.087593000000000004
	.quad	0x3fdb98244e93e1ca              # double 0.43116100000000002
	.quad	0x3fe6ca66559f6ec6              # double 0.71220700000000003
	.quad	0x3feeebcc6c54bcf1              # double 0.96628400000000003
	.quad	0x3fe5ec97d8cf398f              # double 0.68513100000000005
	.quad	0x3fdc113c68661ae7              # double 0.438552
	.quad	0x3fd02aae297396d1              # double 0.25260500000000002
	.quad	0x3fa8e757928e0c9e              # double 0.048640000000000003
	.quad	0x3fda9331a08bfc22              # double 0.41523399999999999
	.quad	0x3fec6cc3e3193f6c              # double 0.88827699999999998
	.quad	0x3fcd83382e44b6e9              # double 0.23056699999999999
	.quad	0x3fd8157abb8800eb              # double 0.37631100000000001
	.quad	0x3fc0ed783dff3f10              # double 0.132247
	.quad	0x3fda5be1a8262457              # double 0.411858
	.quad	0x3fe0f6f4be835dee              # double 0.53014600000000001
	.quad	0x3fcd0507a6bd6e8b              # double 0.226716
	.quad	0x3fec805a2d72ffd2              # double 0.89066800000000002
	.quad	0x3fe94111ada76d98              # double 0.78919300000000003
	.quad	0x3fed6eeb702602c9              # double 0.91979
	.quad	0x3fe8b7b8d3f1843c              # double 0.77242699999999997
	.quad	0x3fd6c23b7952d235              # double 0.355605
	.quad	0x3fc8be6a337a80d0              # double 0.19331100000000001
	.quad	0x3f85c96030c23fab              # double 0.010638
	.quad	0x3f614d2f5dbb9cfa              # double 0.0021120000000000002
	.quad	0x3fe0df45e0b4e11e              # double 0.52725500000000003
	.quad	0x3fb4199fe43675de              # double 0.078516000000000002
	.quad	0x3fe4c2b51bd61f5c              # double 0.64876800000000001
	.quad	0x3fa4486ad2dcb146              # double 0.039614999999999997
	.quad	0x3fdbc7820a30db6a              # double 0.43405199999999999
	.quad	0x3fe67c3b4f616723              # double 0.70266499999999998
	.quad	0x3fe4c6045baf533f              # double 0.64917199999999997
	.quad	0x3fed8eed02cd39da              # double 0.92369699999999999
	.quad	0x3fde7d30ad46f588              # double 0.47639100000000001
	.quad	0x3fc657a786c22681              # double 0.17455000000000001
	.quad	0x3fc8d1bf7ad4b274              # double 0.19390099999999999
	.quad	0x3fd17ebaf102363b              # double 0.27335999999999999
	.quad	0x3feda8b6d86ec17f              # double 0.92684500000000003
	.quad	0x3fe25df43c7d5ed0              # double 0.57396899999999995
	.quad	0x3fe36cbb7f9d6f11              # double 0.60702299999999998
	.quad	0x3fd6a31a4bdba0a5              # double 0.35370499999999999
	.quad	0x3fb0dd72367e414e              # double 0.065878999999999993
	.quad	0x3feee6c2acb85a4f              # double 0.96566899999999999
	.quad	0x3fe92897635e742a              # double 0.78620500000000004
	.quad	0x3fc4d80a17b0f6ad              # double 0.16284299999999999
	.quad	0x3fc93ae685db76b4              # double 0.19711000000000001
	.quad	0x3fe7a4180d3cff65              # double 0.73878100000000002
	.quad	0x3fedd553ef6b5d46              # double 0.93229099999999998
	.quad	0x3fdd02e2328f9f45              # double 0.45330100000000001
	.quad	0x3fedab5a20ddc619              # double 0.92716699999999996
	.quad	0x3fe8874213a0c6b5              # double 0.76651100000000005
	.quad	0x3fd9fe9fadafd114              # double 0.40616600000000003
	.quad	0x3fd401a36e2eb1c4              # double 0.31259999999999999
	.quad	0x3fe947cfa26a22b4              # double 0.79001600000000005
	.quad	0x3fd1f83382e44b6f              # double 0.28077400000000002
	.quad	0x3f8fab96f21f6cad              # double 0.015464
	.quad	0x3fcaddce7cd03537              # double 0.209894
	.quad	0x3fce918e325d4a5e              # double 0.238817
	.quad	0x3f9fc5479d4d8341              # double 0.031026000000000001
	.quad	0x3fe20cda6e75ff61              # double 0.56406900000000004
	.quad	0x3fe91b1960fa15db              # double 0.78455799999999998
	.quad	0x3fde0767d34df04e              # double 0.46920200000000001
	.quad	0x3fd5476af89c5e70              # double 0.332484
	.quad	0x3fdd94b7b28954a8              # double 0.462202
	.quad	0x3fe5a9d40ee06d94              # double 0.67698100000000005
	.quad	0x3fd58f53c579f234              # double 0.33687299999999998
	.quad	0x3fe2767b1c0010c7              # double 0.576963
	.quad	0x3fd66052502eec7d              # double 0.34962900000000002
	.quad	0x3fce7ddca4b124d1              # double 0.23821600000000001
	.quad	0x3fda820a30db6a1f              # double 0.41418700000000003
	.quad	0x3fdfebe9c886162f              # double 0.498774
	.quad	0x3febf69014b599aa              # double 0.87384799999999996
	.quad	0x3fe6857082491afc              # double 0.703789
	.quad	0x3fe25515054ac29c              # double 0.57288600000000001
	.quad	0x3fe5a97396d0917d              # double 0.67693499999999995
	.quad	0x3fe307852f7f498c              # double 0.59466799999999997
	.quad	0x3fa345069a4df480              # double 0.037636000000000003
	.quad	0x3fd484e831ad2136              # double 0.32061200000000001
	.quad	0x3fee8ceb356da017              # double 0.95470200000000005
	.quad	0x3fe29a4df47f993d              # double 0.58133599999999996
	.quad	0x3fd9e3369b9d7fd8              # double 0.40449299999999999
	.quad	0x3fbb01d9f4d37c13              # double 0.10549699999999999
	.quad	0x3fcfa6266fd651b1              # double 0.24725800000000001
	.quad	0x3fed4ba51a005c46              # double 0.91548399999999996
	.quad	0x3fed1e4712e40853              # double 0.90994600000000003
	.quad	0x3f8d11be6e653869              # double 0.014194
	.quad	0x3fd9c53b0813cab8              # double 0.40266299999999999
	.quad	0x3f57b5286b59146e              # double 0.0014469999999999999
	.quad	0x3fe456b65a9a8049              # double 0.63558499999999996
	.quad	0x3fe1041248d7e026              # double 0.53174699999999997
	.quad	0x3fc8f10a99b6f5cb              # double 0.194856
	.quad	0x3fd17952d234eb9a              # double 0.27302999999999999
	.quad	0x3fec3497b7414a4d              # double 0.88141999999999998
	.quad	0x3fef27c393682731              # double 0.97360400000000002
	.quad	0x3fee049235f80991              # double 0.93805799999999995
	.quad	0x3fdc0eae18ac9f30              # double 0.43839600000000001
	.quad	0x3fe5d29dc725c3df              # double 0.68196000000000001
	.quad	0x3fe08ce0b912dba5              # double 0.51719700000000002
	.quad	0x3fd0d25aab474107              # double 0.26283899999999999
	.quad	0x3fb88711d798d8a9              # double 0.095810999999999993
	.quad	0x3fed4f93bc0a06ea              # double 0.915964
	.quad	0x3fcbe9531550ca1d              # double 0.218058
	.quad	0x3fdab1d92b7fe08b              # double 0.417105
	.quad	0x3fe6b1d712a0ec74              # double 0.70920899999999998
	.quad	0x3fe6f9873ffac1d3              # double 0.71796000000000004
	.quad	0x3fdf0d349be8ff32              # double 0.48518099999999997
	.quad	0x3f8cc9ea9a3d2d88              # double 0.014057
	.quad	0x3fe592513b5bf6a1              # double 0.67411100000000002
	.quad	0x3fd5868fd199bb28              # double 0.33633800000000003
	.quad	0x3fc378dd616f86a1              # double 0.15212600000000001
	.quad	0x3fc09b068123810f              # double 0.12973100000000001
	.quad	0x3f90a6b93ccd0fe9              # double 0.016261000000000001
	.quad	0x3f8d6e04c0592104              # double 0.014370000000000001
	.quad	0x3fc879dd3bafd977              # double 0.191219
	.quad	0x3fa11afc04c8bc9d              # double 0.033409000000000001
	.quad	0x3fdf82e44b6e935c              # double 0.49236400000000002
	.quad	0x3febd004fb1183b6              # double 0.869143
	.quad	0x3fa1615ebfa8f7db              # double 0.033945999999999997
	.quad	0x3fbf8f25a250f840              # double 0.123278
	.quad	0x3fe48e10cf5b1c86              # double 0.64234199999999997
	.quad	0x3fef4f61672324c8              # double 0.97843999999999997
	.quad	0x3fcaf9767903211d              # double 0.21073800000000001
	.quad	0x3fe324d8fd5cb791              # double 0.598248
	.quad	0x3fd8dd6e04c05921              # double 0.388515
	.quad	0x3fe08bb6ed677708              # double 0.51705500000000004
	.quad	0x3fdbebedfa43fe5d              # double 0.43627500000000002
	.quad	0x3fe7ff8ca8198f1d              # double 0.74994499999999997
	.quad	0x3fe6a2dd7a99fa12              # double 0.70738100000000004
	.quad	0x3fe9d54b8bef8ceb              # double 0.80728699999999998
	.quad	0x3fdd44c7b02d59d5              # double 0.45732299999999998
	.quad	0x3fca500d5e8d5411              # double 0.205568
	.quad	0x3fe8c812be48a58b              # double 0.77442299999999997
	.quad	0x3fe08218def416be              # double 0.51588100000000003
	.quad	0x3fd0bbe878fabda1              # double 0.26146900000000001
	.quad	0x3fdb48b220791c4c              # double 0.42631200000000002
	.quad	0x3fe130f6ad70e6f3              # double 0.53722700000000001
	.quad	0x3fda22036006d0d5              # double 0.40832600000000002
	.quad	0x3fafeb4a66559f6f              # double 0.062342000000000002
	.quad	0x3fd1f9a06a6e32e4              # double 0.28086100000000003
	.quad	0x3fe418201cd5f99c              # double 0.62794499999999998
	.quad	0x3fe80893b7d84902              # double 0.75104700000000002
	.quad	0x3fda9f90539fba45              # double 0.415989
	.quad	0x3fc57c5ef62f9ca6              # double 0.16785800000000001
	.quad	0x3feead14a0a0f4d8              # double 0.95862800000000003
	.quad	0x3fe8685122318330              # double 0.76273400000000002
	.quad	0x3fd2a91105e1c151              # double 0.29156900000000002
	.quad	0x3fabc621b7e0ac7e              # double 0.054246000000000003
	.quad	0x3fe949cf56eac860              # double 0.79025999999999996
	.quad	0x3f9b0f27bb2fec57              # double 0.026425000000000001
	.quad	0x3fd69335d249e450              # double 0.35273500000000002
	.quad	0x3feae4d7f0ed3d86              # double 0.84043500000000004
	.quad	0x3fd437c99ae924f2              # double 0.31590499999999999
	.quad	0x3fe399a1fd1569f5              # double 0.61250400000000005
	.quad	0x3fd3966be7afa722              # double 0.30605599999999999
	.quad	0x3fed049cb252ce03              # double 0.90681299999999998
	.quad	0x3fed724b76f6d762              # double 0.92020199999999996
	.quad	0x3fb97635e74299d9              # double 0.099460000000000007
	.quad	0x3fd1f89c5e6ff7e0              # double 0.28079900000000002
	.quad	0x3fe0840e1719f7f9              # double 0.51612000000000002
	.quad	0x3fca96030c23fab1              # double 0.207703
	.quad	0x3fe989bb6aa4b988              # double 0.79806299999999997
	.quad	0x3fd8b45f17bd8be7              # double 0.38600899999999999
	.quad	0x3fdea704bc27631b              # double 0.47894399999999998
	.quad	0x3fd4421c044284e0              # double 0.31653500000000001
	.quad	0x3fea7cdab191dde3              # double 0.82774099999999995
	.quad	0x3fe65818c5c9a34d              # double 0.69825400000000004
	.quad	0x3fd3a9b8cb8e086c              # double 0.30723400000000001
	.quad	0x3fe4d5bee3d5fdce              # double 0.651092
	.quad	0x3fdeab81f969e3c9              # double 0.47921799999999998
	.quad	0x3fdc8f605ab3aabd              # double 0.44625100000000001
	.quad	0x3fe198aeb80ecfa7              # double 0.54988800000000004
	.quad	0x3fda747d805e5f31              # double 0.41336000000000001
	.quad	0x3f977036c9c0a8d2              # double 0.022889
	.quad	0x3fa499ae924f227d              # double 0.040235
	.quad	0x3fe3de58e64b2314              # double 0.620892
	.quad	0x3fe0140dd3fe1976              # double 0.50244800000000001
	.quad	0x3fd780b242070b8d              # double 0.36723
	.quad	0x3fddbcd78c436fc1              # double 0.46465099999999998
	.quad	0x3fe57559b3d07c85              # double 0.67057500000000003
	.quad	0x3fe198a222d5171e              # double 0.54988199999999998
	.quad	0x3fe7f72b4528283d              # double 0.74892199999999998
	.quad	0x3fed000218def417              # double 0.90625100000000003
	.quad	0x3feef8e7ddca4b12              # double 0.96788399999999997
	.quad	0x3fa03d35eb7457c1              # double 0.031717000000000002
	.quad	0x3fdd94c447c30d30              # double 0.46220499999999998
	.quad	0x3fedddd4c76d117b              # double 0.93332899999999996
	.quad	0x3fd4a975afaf8594              # double 0.32284299999999999
	.quad	0x3fb286e7e62dc6e3              # double 0.072371000000000005
	.quad	0x3fcb8561d4306e5d              # double 0.215008
	.quad	0x3fe415b35b0bbf51              # double 0.62764900000000001
	.quad	0x3fe41bcba3012168              # double 0.62839299999999998
	.quad	0x3fe5659d12cadddf              # double 0.66865399999999997
	.quad	0x3fa665bea0ba1f4b              # double 0.043744999999999999
	.quad	0x3fe0bd1aa821f299              # double 0.52308399999999999
	.quad	0x3fcb87ce95faa8a8              # double 0.215082
	.quad	0x3feb917b5286b591              # double 0.86150899999999997
	.quad	0x3fea64712e40852b              # double 0.82476099999999997
	.quad	0x3fef7bca1059ea57              # double 0.98386099999999998
	.quad	0x3fbc9edbf8b9baa1              # double 0.111799
	.quad	0x3fce114d2f5dbb9d              # double 0.234903
	.quad	0x3fea24e160d887ec              # double 0.817002
	.quad	0x3fe6772b4528283d              # double 0.70204699999999998
	.quad	0x3fda28848387df5d              # double 0.408723
	.quad	0x3fded77fae3608d1              # double 0.48190300000000003
	.quad	0x3fd0126202539757              # double 0.25112200000000001
	.quad	0x3fe6bdba0a526959              # double 0.71065999999999996
	.quad	0x3fae5d9e40c8472c              # double 0.059308
	.quad	0x3fdb6a400fba8827              # double 0.42836000000000002
	.quad	0x3fefca276b7ed41b              # double 0.99342699999999994
	.quad	0x3fe2ced916872b02              # double 0.58774999999999999
	.quad	0x3fd43c81908e581d              # double 0.316193
	.quad	0x3feda2c669057d18              # double 0.92612000000000005
	.quad	0x3fc424febd09e12a              # double 0.15737899999999999
	.quad	0x3fe73242070b8cfc              # double 0.724885
	.quad	0x3fe7619b90ea9e6f              # double 0.73066500000000001
	.quad	0x3fe46916440f2389              # double 0.63782799999999995
	.quad	0x3fb89ecb31c219eb              # double 0.096172999999999995
	.quad	0x3fa2a715831f03d1              # double 0.036430999999999998
	.quad	0x3fe7d640e9d51b50              # double 0.74490400000000001
	.quad	0x3fedc625e99e94ab              # double 0.93043799999999999
	.quad	0x3fe5f6ad70e6f2e9              # double 0.68636200000000003
	.quad	0x3fe844c9c90c4dec              # double 0.75839699999999998
	.quad	0x3fd1092ccf6be37e              # double 0.266185
	.quad	0x3feeee30caa326e1              # double 0.96657599999999999
	.quad	0x3fed5d031055b899              # double 0.91760399999999998
	.quad	0x3fcf6a9c560c7c0f              # double 0.24544099999999999
	.quad	0x3fe0eb2074ea8da8              # double 0.52870200000000001
	.quad	0x3fd8e1f3a57eaa2a              # double 0.388791
	.quad	0x3fe47daa4fca42af              # double 0.64034000000000002
	.quad	0x3fe7208e15011905              # double 0.72272400000000003
	.quad	0x3fee1ee45c358afc              # double 0.94127099999999996
	.quad	0x3fe5731b152f3c2e              # double 0.67030100000000004
	.quad	0x3fdf064a9cdc4439              # double 0.484759
	.quad	0x3fec18c9fb6134ce              # double 0.87802599999999997
	.quad	0x3fea8db8bac710cb              # double 0.82979999999999998
	.quad	0x3feb4fbdad7518b1              # double 0.85348400000000002
	.quad	0x3fe3492bc2fc6973              # double 0.60268200000000005
	.quad	0x3fd0e846a5d6bebe              # double 0.264177
	.quad	0x3fbb268d32830a0b              # double 0.106057
	.quad	0x3fea78055fbb517a              # double 0.82715099999999997
	.quad	0x3fee01754b05b7d0              # double 0.93767800000000001
	.quad	0x3fd0b3a2595bbbe8              # double 0.26096399999999997
	.quad	0x3fa807dd44135547              # double 0.046934999999999998
	.quad	0x3fdc1c5c5718eb89              # double 0.43923099999999998
	.quad	0x3fe6535eb7457c0b              # double 0.69767699999999999
	.quad	0x3fbf021d10b1feeb              # double 0.121126
	.quad	0x3fec8f12c27a6373              # double 0.89246499999999995
	.quad	0x3feee5cd4ed2cbea              # double 0.96555199999999997
	.quad	0x3fecb2702a3486f0              # double 0.89678199999999997
	.quad	0x3fc7fc86cebbba56              # double 0.18739400000000001
	.quad	0x3fdb37154003254e              # double 0.42523699999999998
	.quad	0x3fdf7afea3df6db9              # double 0.49188199999999999
	.quad	0x3f9616f86a098916              # double 0.021572000000000001
	.quad	0x3fb044178705425f              # double 0.063538999999999998
	.quad	0x3fc5791819d2391d              # double 0.16775799999999999
	.quad	0x3febcfb762d83c6d              # double 0.86910600000000005
	.quad	0x3fe5970d62bf11f9              # double 0.67468899999999998
	.quad	0x3fe6324a6a875d57              # double 0.69363900000000001
	.quad	0x3fda55a3a08398a6              # double 0.41147699999999998
	.quad	0x3fd3269595feda66              # double 0.29923
	.quad	0x3fcbf1f14983d790              # double 0.21832099999999999
	.quad	0x3fbf041461b6d43d              # double 0.121156
	.quad	0x3fd2e9d94d0dcfcc              # double 0.29552299999999998
	.quad	0x3fdcba3875925354              # double 0.44886599999999999
	.quad	0x3febce618ce2d1f2              # double 0.86894300000000002
	.quad	0x3fdd9eecbfb15b57              # double 0.46282499999999999
	.quad	0x3feb75147f130596              # double 0.85804199999999997
	.quad	0x3fc88a58b3f63c32              # double 0.191722
	.quad	0x3fa6bedfa43fe5c9              # double 0.044424999999999999
	.quad	0x3fe2603b3e9a6f82              # double 0.57424699999999995
	.quad	0x3fee7a5f41aef6f9              # double 0.95243800000000001
	.quad	0x3fefc99ae924f228              # double 0.99336000000000002
	.quad	0x3fc1c6da4484944f              # double 0.138881
	.quad	0x3f9cb039ef0f16f4              # double 0.028015999999999999
	.quad	0x3fd856366d7a56de              # double 0.38026199999999999
	.quad	0x3fd1d8e864020818              # double 0.278864
	.quad	0x3fd6b2e1693c03bc              # double 0.35466799999999998
	.quad	0x3fe704fb1183b603              # double 0.71935800000000005
	.quad	0x3fba070b8cfbfc65              # double 0.10167
	.quad	0x3fd28bfc2224edf6              # double 0.289794
	.quad	0x3fe9ba29c779a6b5              # double 0.803975
	.quad	0x3fd9feb074a771c9              # double 0.40616999999999998
	.quad	0x3fe4923a29c779a7              # double 0.64285000000000003
	.quad	0x3fba379b77c02afe              # double 0.102411
	.quad	0x3fea290cd423d923              # double 0.81751099999999999
	.quad	0x3fe9eb8d82342246              # double 0.81000399999999995
	.quad	0x3fe5bb7d84901d19              # double 0.67913699999999999
	.quad	0x3fcf1afc04c8bc9d              # double 0.243011
	.quad	0x3fd7ee84ad794a6f              # double 0.37393300000000002
	.quad	0x3fd51f926c7eae5c              # double 0.33005200000000001
	.quad	0x3fd79a459103c8e2              # double 0.36879099999999998
	.quad	0x3fa863e07a28bb0a              # double 0.047636999999999999
	.quad	0x3fd93f077ccc0379              # double 0.39447199999999999
	.quad	0x3fe11cf13cee9dd8              # double 0.53478300000000001
	.quad	0x3fe5a46173b85e81              # double 0.67631600000000003
	.quad	0x3fe1fb41bfbdf091              # double 0.561921
	.quad	0x3fe2325b317efe0d              # double 0.56864700000000001
	.quad	0x3feed551d68c692f              # double 0.96353999999999995
	.quad	0x3fe06312f4cf4a56              # double 0.51209400000000005
	.quad	0x3fe57190d173fb7a              # double 0.67011299999999996
	.quad	0x3fc7cfc3f811f4f5              # double 0.186028
	.quad	0x3fd853198288051d              # double 0.38007200000000002
	.quad	0x3fe58db6a1e81cb4              # double 0.67354899999999995
	.quad	0x3fd0f2e8c0485a0c              # double 0.26482600000000001
	.quad	0x3fcb8a8f3a9b0681              # double 0.215166
	.quad	0x3fc354f3775b8130              # double 0.15103
	.quad	0x3fe5bdba0a526959              # double 0.67940999999999996
	.quad	0x3fcd2cbea4ebdd33              # double 0.22792799999999999
	.quad	0x3fd66bf444e0daa1              # double 0.35033900000000001
	.quad	0x3fdd7fdc5931ca7d              # double 0.46092899999999998
	.quad	0x3febe5a35d67ba23              # double 0.87178199999999995
	.quad	0x3fe79ee2435696e6              # double 0.73814500000000005
	.quad	0x3fed6fc371da37ef              # double 0.91989299999999996
	.quad	0x3feddb2b3461309c              # double 0.93300399999999994
	.quad	0x3fef0d9b5e95b78d              # double 0.97041100000000002
	.quad	0x3fbe543f1c75818c              # double 0.11847299999999999
	.quad	0x3fe1dcaf2d7f950c              # double 0.55818900000000005
	.quad	0x3fefc7ecfe9b7bf2              # double 0.99315500000000001
	.quad	0x3fc040852b4d8ba4              # double 0.126969
	.quad	0x3fe27bd48cb4aec9              # double 0.57761600000000002
	.quad	0x3fe8aaf9a8cdea03              # double 0.77087099999999997
	.quad	0x3fee5b4edb2f661f              # double 0.94864599999999999
	.quad	0x3fd0a148ba83f4ed              # double 0.25984400000000002
	.quad	0x3fcbe3e29307af21              # double 0.217892
	.quad	0x3fece3c968943e10              # double 0.902806
	.quad	0x3fdd5cfede97d06c              # double 0.45880100000000001
	.quad	0x3fa6553ac4f7ec35              # double 0.043618999999999998
	.quad	0x3fecd8eeae9ee45c              # double 0.90148099999999997
	.quad	0x3fc3a8b4bf8fcd68              # double 0.153586
	.quad	0x3fef6cdf266ba494              # double 0.98204000000000002
	.quad	0x3fe614727dcbddba              # double 0.68999600000000005
	.quad	0x3fe0baf965b20b80              # double 0.52282399999999996
	.quad	0x3fe36bf444e0daa1              # double 0.60692800000000002
	.quad	0x3fe280fba8826aa9              # double 0.57824500000000001
	.quad	0x3fe9d5e4a3832767              # double 0.80735999999999997
	.quad	0x3fee5755bccaf70a              # double 0.94816100000000003
	.quad	0x3fe6fcf1c3265ade              # double 0.71837700000000004
	.quad	0x3fef9f98b71b8aa0              # double 0.98823199999999999
	.quad	0x3fdb1e96c3fc43b3              # double 0.42374200000000001
	.quad	0x3fd4fcce1c58255b              # double 0.32793
	.quad	0x3fdedaad601ffb48              # double 0.482097
	.quad	0x3fd88c586876e1df              # double 0.38356600000000002
	.quad	0x3fed314ca925fe97              # double 0.91226799999999997
	.quad	0x3fe86583e8576cce              # double 0.76239199999999996
	.quad	0x3fe75efa615a8deb              # double 0.73034399999999999
	.quad	0x3f6f72f76e6106ab              # double 0.003839
	.quad	0x3fb7f79c842fa509              # double 0.093621999999999997
	.quad	0x3fdeac57e23f24d9              # double 0.479269
	.quad	0x3fedc5f7c6759ab7              # double 0.93041600000000002
	.quad	0x3fe92977c88e79ab              # double 0.78631200000000001
	.quad	0x3fd4bb7b6bb12902              # double 0.32394299999999998
	.quad	0x3fee462e4d1a6506              # double 0.94606699999999999
	.quad	0x3fecfbd273d5bab2              # double 0.90573999999999999
	.quad	0x3fd26e3f78bbd380              # double 0.28797899999999998
	.quad	0x3fdb56e264e48627              # double 0.427178
	.quad	0x3fee1bde82d7b635              # double 0.94090200000000002
	.quad	0x3fe78383ad9f0a1c              # double 0.73480400000000001
	.quad	0x3fbb800218def417              # double 0.107422
	.quad	0x3fc850b524399b2c              # double 0.18996299999999999
	.quad	0x3fa33f42352eb5f6              # double 0.037592
	.quad	0x3fe5a89331a08bfc              # double 0.67682799999999999
	.quad	0x3fd4dc6e2a80064b              # double 0.32595400000000002
	.quad	0x3fd067ec7863beec              # double 0.25634299999999999
	.quad	0x3fe6ab1b36bd2b6f              # double 0.70838699999999999
	.quad	0x3f9ce63a5c1c6089              # double 0.028222000000000001
	.quad	0x3fe3afe82517e77d              # double 0.61522299999999996
	.quad	0x3f90420f6f08cc57              # double 0.015876999999999999
	.quad	0x3fe3cb87bdcf0308              # double 0.61859500000000001
	.quad	0x3fd34aa53fc00970              # double 0.301431
	.quad	0x3fedae6644d87725              # double 0.927539
	.quad	0x3fe45a2d72ffd1dd              # double 0.63600800000000002
	.quad	0x3fee52fa0d77b7c8              # double 0.94762900000000005
	.quad	0x3f81572580c308ff              # double 0.0084670000000000005
	.quad	0x3fd88ef34d6a161e              # double 0.38372499999999998
	.quad	0x3fe33573eab367a1              # double 0.600275
	.quad	0x3fe02a843808850a              # double 0.50519000000000003
	.quad	0x3fe61fe64f54d1e9              # double 0.69139399999999995
	.quad	0x3fec47778dd616f8              # double 0.88372399999999995
	.quad	0x3fa1715c63ae2542              # double 0.034068000000000001
	.quad	0x3fd8221858bc59b8              # double 0.377081
	.quad	0x3fe29ae0c1765775              # double 0.58140599999999998
	.quad	0x3fe51ee88df3732a              # double 0.66002300000000003
	.quad	0x3fe9d8750c1b9735              # double 0.80767299999999997
	.quad	0x3fed258d5842b735              # double 0.91083400000000003
	.quad	0x3fec40d0aaa7ded7              # double 0.88291200000000003
	.quad	0x3fe56f6512a94ff0              # double 0.669848
	.quad	0x3fa9edbf8b9baa15              # double 0.050642
	.quad	0x3fed37f1737542a2              # double 0.91307899999999997
	.quad	0x3fa606748e475600              # double 0.043018000000000001
	.quad	0x3fe98ae536501e26              # double 0.79820500000000005
	.quad	0x3fe29ed5ae1cde5d              # double 0.58188899999999999
	.quad	0x3fae644d87724fa9              # double 0.059359000000000002
	.quad	0x3feff00ef1348b22              # double 0.998054
	.quad	0x3fea394d94078961              # double 0.81949499999999997
	.quad	0x3fae451b93037d63              # double 0.059121
	.quad	0x3fedf47735c182ed              # double 0.93609200000000004
	.quad	0x3fc7e939eadd590c              # double 0.186805
	.quad	0x3fc7300de4c51117              # double 0.18115400000000001
	.quad	0x3fead43f1c75818c              # double 0.83840899999999995
	.quad	0x3fd35703f2d3c793              # double 0.30218600000000001
	.quad	0x3fe31e1f3a57eaa3              # double 0.59742700000000004
	.quad	0x3fe94ac6cdaf4adc              # double 0.79037800000000002
	.quad	0x3fe82a454de7ea60              # double 0.75516000000000005
	.quad	0x3fde4fbdad7518b1              # double 0.47361700000000001
	.quad	0x3fe997c80841ede1              # double 0.79977799999999999
	.quad	0x3fe0db91f70de8f7              # double 0.52680300000000002
	.quad	0x3fe85b0574b40703              # double 0.76111099999999998
	.quad	0x3fe33415b1422ccb              # double 0.60010799999999997
	.quad	0x3fe9b6544fe36d22              # double 0.80350699999999997
	.quad	0x3fd08116ebd4cfd1              # double 0.25787900000000002
	.quad	0x3fe2d58644523f68              # double 0.588565
	.quad	0x3fcab26bf8769ec3              # double 0.20857000000000001
	.quad	0x3fb8aa00192a7371              # double 0.096343999999999999
	.quad	0x3fe082adc4c9c90c              # double 0.51595199999999997
	.quad	0x3fe4a76965f5275f              # double 0.64543600000000001
	.quad	0x3fd35c4a83b1d0c8              # double 0.302508
	.quad	0x3fe64faacd9e83e4              # double 0.69722499999999998
	.quad	0x3fe3a7e73a365cb3              # double 0.61424599999999996
	.quad	0x3fdf5fdcdf698783              # double 0.490226
	.quad	0x3fb012cf0f9d2bf5              # double 0.062786999999999996
	.quad	0x3fe078f25a250f84              # double 0.514764
	.quad	0x3fe91565c2d27807              # double 0.78386199999999995
	.quad	0x3fd8e3608d08919f              # double 0.388878
	.quad	0x3fb4afe60c38f367              # double 0.080809000000000006
	.quad	0x3fe7c044284dfce3              # double 0.74221999999999999
	.quad	0x3fefde8d5410f94d              # double 0.99591700000000005
	.quad	0x3fe5add7a99fa11b              # double 0.67747100000000005
	.quad	0x3fe78e92d55a3a08              # double 0.73615399999999998
	.quad	0x3fd2b17ce52deca2              # double 0.29208299999999998
	.quad	0x3fb947ae147ae148              # double 0.098750000000000004
	.quad	0x3fd90bc7b45f17be              # double 0.39134400000000003
	.quad	0x3fd6c8eabffcdab2              # double 0.35601300000000002
	.quad	0x3fdedfce3150dae4              # double 0.48241000000000001
	.quad	0x3fe4fcc1871e6cd3              # double 0.65585400000000005
	.quad	0x3fe9cc4ef88b9778              # double 0.80618999999999996
	.quad	0x3fe55a4484944ed7              # double 0.667269
	.quad	0x3fed38130164840e              # double 0.91309499999999999
	.quad	0x3febd6ffc115df65              # double 0.86999499999999996
	.quad	0x3fb1ede1198aeb81              # double 0.070036000000000001
	.quad	0x3fd33d3a1d323fee              # double 0.30061199999999999
	.quad	0x3fd065fd8adab9f5              # double 0.25622499999999998
	.quad	0x3fe27290abb44e51              # double 0.57648500000000003
	.quad	0x3fab1769a91105e2              # double 0.052913000000000002
	.quad	0x3fe95512ec6bce85              # double 0.79163499999999998
	.quad	0x3fbdd8c6d612c6ac              # double 0.116589
	.quad	0x3fe830079a2834d2              # double 0.75586299999999995
	.quad	0x3fefd938151a4378              # double 0.99526599999999998
	.quad	0x3fe9e0029f16b11c              # double 0.80859499999999995
	.quad	0x3fda4213a0c6b485              # double 0.41028300000000001
	.quad	0x3fd9491afc04c8bd              # double 0.39508700000000002
	.quad	0x3fe964388ebcc6c5              # double 0.79348399999999997
	.quad	0x3fe8f49491f2dc2b              # double 0.77985599999999999
	.quad	0x3fb47f993d5347a6              # double 0.080072000000000004
	.quad	0x3fe2cd530489d27c              # double 0.58756399999999998
	.quad	0x3fc4539756c93a71              # double 0.158801
	.quad	0x3f85db3397dd00f7              # double 0.010671999999999999
	.quad	0x3fd57c8d1958969a              # double 0.335727
	.quad	0x3fc41719f7f8ca82              # double 0.15695500000000001
	.quad	0x3fea90e66cb10343              # double 0.83018800000000004
	.quad	0x3fd5170d62bf11f9              # double 0.32953199999999999
	.quad	0x3fef0e043a2163fe              # double 0.97046100000000002
	.quad	0x3fbe28bb0a2ca9ac              # double 0.117809
	.quad	0x3fdd4b7b28954a80              # double 0.45773200000000003
	.quad	0x3feea37ac3eb7cbb              # double 0.95745599999999997
	.quad	0x3feffc43b2dd377e              # double 0.99954399999999999
	.quad	0x3fc18266772d5e07              # double 0.136792
	.quad	0x3fe9c6c54bcf0b6b              # double 0.80551399999999995
	.quad	0x3fef4c4cdfaca362              # double 0.97806400000000004
	.quad	0x3fdc91e646f15619              # double 0.446405
	.quad	0x3fd398e53eb399f6              # double 0.30620700000000001
	.quad	0x3fd8c0010c6f7a0b              # double 0.38671899999999998
	.quad	0x3fe31fbe76c8b439              # double 0.59762499999999996
	.quad	0x3fda28fe260b2c84              # double 0.408752
	.quad	0x3fe42467be553ac5              # double 0.629444
	.quad	0x3fce1aac53b0813d              # double 0.23518900000000001
	.quad	0x3fca31ceaf251c19              # double 0.20464499999999999
	.quad	0x3fc371001d5c3159              # double 0.15188599999999999
	.quad	0x3fdae468cac4b4d0              # double 0.42019099999999998
	.quad	0x3fa08aefb2aae297              # double 0.032309999999999998
	.quad	0x3fdc47baa9b499d0              # double 0.44187799999999999
	.quad	0x3feb1ede1198aeb8              # double 0.84751799999999999
	.quad	0x3fbd5b035bd512ec              # double 0.11466999999999999
	.quad	0x3fe1ddf00abf76a3              # double 0.558342
	.quad	0x3fe4230b9dc2f406              # double 0.629278
	.quad	0x3fef7820a30db6a2              # double 0.98341400000000001
	.quad	0x3feafbdf090f733b              # double 0.84324600000000005
	.quad	0x3fd1625204af9229              # double 0.27162599999999998
	.quad	0x3fd22eba27ae9ab3              # double 0.28410200000000002
	.quad	0x3fe0690795f676ea              # double 0.51282099999999997
	.quad	0x3fe3ff3ade225fa6              # double 0.62490599999999996
	.quad	0x3fcc4b44a1f08030              # double 0.22104699999999999
	.quad	0x3fe6c504816f0069              # double 0.71155000000000002
	.quad	0x3fd466cf41f212d7              # double 0.31877499999999998
	.quad	0x3fb6f36ef8055fbb              # double 0.089651999999999996
	.quad	0x3fefd0ca1cef2410              # double 0.99423700000000004
	.quad	0x3fe9dde9c0229a5f              # double 0.80833900000000003
	.quad	0x3fefb22af5771002              # double 0.99049900000000002
	.quad	0x3fc246d82ba5a038              # double 0.142787
	.quad	0x3fdc7ee9142b302f              # double 0.44524599999999998
	.quad	0x3fe6a8b4bf8fcd68              # double 0.708094
	.quad	0x3fe383e20ccff21b              # double 0.60984899999999997
	.quad	0x3fe371ed17c5ef63              # double 0.607657
	.quad	0x3fedb75c8d9f9054              # double 0.92863300000000004
	.quad	0x3fc76c050bd87b57              # double 0.18298400000000001
	.quad	0x3feb6f2c7325918a              # double 0.857321
	.quad	0x3feb333764f11b61              # double 0.85000200000000004
	.quad	0x3fd88c8259e1f3a5              # double 0.38357599999999997
	.quad	0x3fd90364388ebcc7              # double 0.39083200000000001
	.quad	0x3fee444e0daa0cae              # double 0.94583799999999996
	.quad	0x3fe5456d5cfaacda              # double 0.66472500000000001
	.quad	0x3fbd65d3996fa82f              # double 0.11483500000000001
	.quad	0x3fedc2d05f288484              # double 0.93003100000000005
	.quad	0x3fde75579af1886e              # double 0.475912
	.quad	0x3fe0d1a21ea35936              # double 0.52559
	.quad	0x3feebd5bab21815a              # double 0.960615
	.quad	0x3fe2cd1e96c3fc44              # double 0.58753900000000003
	.quad	0x3fa37b07075b3e14              # double 0.038047999999999998
	.quad	0x3fe4f2de43ed959a              # double 0.65464699999999998
	.quad	0x3fca78fabda0dfdf              # double 0.206817
	.quad	0x3fcf27b2cc70867b              # double 0.243399
	.quad	0x3fe11c6f36ef8056              # double 0.534721
	.quad	0x3fd27a99fa11a976              # double 0.28873300000000002
	.quad	0x3fe10f8c64fdb09a              # double 0.53314799999999996
	.quad	0x3fcf530489d27c39              # double 0.24472099999999999
	.quad	0x3fcd0db6a1e81cb4              # double 0.22698099999999999
	.quad	0x3fb2777079e59f2c              # double 0.072135000000000005
	.quad	0x3fe4a52ef911cf35              # double 0.64516399999999996
	.quad	0x3fe8536b4c7f3494              # double 0.76018300000000005
	.quad	0x3fc4a5b530ced4e5              # double 0.16130700000000001
	.quad	0x3fe131e3a7daa4fd              # double 0.53734000000000004
	.quad	0x3fdb41aef6f8f041              # double 0.42588399999999998
	.quad	0x3fe434efcbd55608              # double 0.63146199999999997
	.quad	0x3fde74c4cdfaca36              # double 0.47587699999999999
	.quad	0x3fd041b75a74c09c              # double 0.25401099999999999
	.quad	0x3fcd3e920c069e80              # double 0.22847200000000001
	.quad	0x3fda7b634dad31fd              # double 0.41378100000000001
	.quad	0x3fc4107314ca9260              # double 0.156752
	.quad	0x3fd665b63d3e4ef0              # double 0.34995799999999999
	.quad	0x3fcd879c4113c686              # double 0.23070099999999999
	.quad	0x3feb0fa376922d95              # double 0.84565900000000005
	.quad	0x3fe2038c111ada77              # double 0.56293300000000002
	.quad	0x3fe9302f72b45283              # double 0.78713200000000005
	.quad	0x3fed629d8409e55c              # double 0.91828799999999999
	.quad	0x3fd4d88c1db0142f              # double 0.32571699999999998
	.quad	0x3fd1dd590c0ad03e              # double 0.27913500000000002
	.quad	0x3fd01d0c80410300              # double 0.25177300000000002
	.quad	0x3fe49871e6cd2913              # double 0.64360899999999999
	.quad	0x3fef897e996312f5              # double 0.98553400000000002
	.quad	0x3fea5247cb70ac3b              # double 0.82254400000000005
	.quad	0x3fb31327243137b0              # double 0.074510999999999994
	.quad	0x3fe6ffc7607c419a              # double 0.718723
	.quad	0x3fe7eb97fe8ee6b8              # double 0.74750899999999998
	.quad	0x3fe9d556084a515d              # double 0.80729200000000001
	.quad	0x3fe1cd5d80e496ee              # double 0.55631900000000001
	.quad	0x3fc3a81dc0db2703              # double 0.15356800000000001
	.quad	0x3fe249c6f36ef805              # double 0.57150599999999996
	.quad	0x3fdc625204af9229              # double 0.44350099999999998
	.quad	0x3f93bf727136a401              # double 0.019285
	.quad	0x3fb5b3e1437c5693              # double 0.084776000000000004
	.quad	0x3fda7521144cbe1f              # double 0.41339900000000002
	.quad	0x3fe89bdc69f8c21e              # double 0.76902599999999999
	.quad	0x3fe18d477bbf93ff              # double 0.54849599999999998
	.quad	0x3fef744f5d35653d              # double 0.98294800000000004
	.quad	0x3fd6ce5710880d80              # double 0.35634399999999999
	.quad	0x3feb8f4517614595              # double 0.86123899999999998
	.quad	0x3fedb80ecfa69be1              # double 0.92871800000000004
	.quad	0x3feef1d1d4738a3b              # double 0.96701899999999996
	.quad	0x3feae6d373affb05              # double 0.84067700000000001
	.quad	0x3fe90dcb9a9da598              # double 0.78293400000000002
	.quad	0x3fc7c38b04ab606b              # double 0.18565499999999999
	.quad	0x3fc6f45176145953              # double 0.17933099999999999
	.quad	0x3fa6cb31c219eb64              # double 0.044519000000000003
	.quad	0x3fe2f7681669ced1              # double 0.59270100000000003
	.quad	0x3fecca1ad6451b93              # double 0.899671
	.quad	0x3fd3bb341e14bdfd              # double 0.30830099999999999
	.quad	0x3fd5497fa5d28d00              # double 0.33261099999999999
	.quad	0x3fe219d2391d5800              # double 0.56565200000000004
	.quad	0x3fb8fd9fd36f7e3d              # double 0.097619999999999998
	.quad	0x3feb602c9081c2e3              # double 0.85548999999999997
	.quad	0x3fc4dbc664d3bf2f              # double 0.16295699999999999
	.quad	0x3fd7c7d1bb4916ca              # double 0.37157099999999998
	.quad	0x3fee8dd82fd75e20              # double 0.95481499999999996
	.quad	0x3fe401d9f4d37c13              # double 0.62522599999999995
	.quad	0x3fe98ea39c51dabe              # double 0.79866199999999998
	.quad	0x3fec6429e0a41a26              # double 0.88722699999999999
	.quad	0x3feccca2db61bb06              # double 0.89998
	.quad	0x3fefd20f2becedd5              # double 0.99439200000000005
	.quad	0x3fe71f40a2877ee5              # double 0.72256500000000001
	.quad	0x3fe8313165d39970              # double 0.75600500000000004
	.quad	0x3feb7548ecd8dbcf              # double 0.85806700000000002
	.quad	0x3fe01b54195cc858              # double 0.50333600000000001
	.quad	0x3fd1b6d86ec17ebb              # double 0.276785
	.quad	0x3fea972cd7cf5f4e              # double 0.83095399999999997
	.quad	0x3fc5463cfb3311a5              # double 0.16620599999999999
	.quad	0x3fce9320d9945b6c              # double 0.23886499999999999
	.quad	0x3fd72367e414e7ef              # double 0.36153600000000002
	.quad	0x3fe9f83dff3f0fe0              # double 0.81155299999999996
	.quad	0x3fd3f0d844d013a9              # double 0.31157499999999999
	.quad	0x3fdcaf038e29f9cf              # double 0.44818200000000002
	.quad	0x3fec6d0917d6b65b              # double 0.88831000000000004
	.quad	0x3feb61ae70c1333c              # double 0.85567400000000004
	.quad	0x3fe8225fa658c4bd              # double 0.75419599999999998
	.quad	0x3fe6d92d98bf7f06              # double 0.71401099999999995
	.quad	0x3fe176b5d462c344              # double 0.54574100000000003
	.quad	0x3f94855da272862f              # double 0.020039999999999999
	.quad	0x3fd9543f1c75818c              # double 0.39576699999999998
	.quad	0x3fea109289dadfb5              # double 0.814523
	.quad	0x3febe52157689ca2              # double 0.87172000000000005
	.quad	0x3fe567e414e7ee91              # double 0.66893199999999997
	.quad	0x3fde310129cbab65              # double 0.47174100000000002
	.quad	0x3fcf50092ccf6be3              # double 0.24462999999999999
	.quad	0x3fea01882adc4c9d              # double 0.81268700000000005
	.quad	0x3fd4d99cbee807bc              # double 0.32578200000000002
	.quad	0x3fcd36b4c7f34938              # double 0.22823199999999999
	.quad	0x3fe14ef0281ba7fc              # double 0.54088599999999998
	.quad	0x3fe3cc9a77e5eaab              # double 0.618726
	.quad	0x3fe16f62f9ca5bd9              # double 0.54484699999999997
	.quad	0x3feb566277c45cbc              # double 0.85429500000000002
	.quad	0x3fedac215b9a5a8a              # double 0.92726200000000003
	.quad	0x3fe6873797460243              # double 0.70400600000000002
	.quad	0x3fec933e35c5b4ab              # double 0.89297400000000005
	.quad	0x3fd8f01b866e43aa              # double 0.38965499999999997
	.quad	0x3fb5831f03d145d8              # double 0.084031999999999996
	.quad	0x3fd8d987c6327ed8              # double 0.38827699999999998
	.quad	0x3fe4d6323bbc6eb1              # double 0.65114700000000003
	.quad	0x3fdbc98a222d5172              # double 0.43417600000000001
	.quad	0x3fd23868fd199bb2              # double 0.28469299999999997
	.quad	0x3fda9856a37ac3eb              # double 0.41554799999999997
	.quad	0x3fce41919ac79703              # double 0.236376
	.quad	0x3feb2a0232096788              # double 0.84887800000000002
	.quad	0x3fd5ea897635e743              # double 0.34244000000000002
	.quad	0x3fef77dd872f33ca              # double 0.98338199999999998
	.quad	0x3fead4dc65c70436              # double 0.83848400000000001
	.quad	0x3fe31b66f9335d25              # double 0.59709500000000004
	.quad	0x3fe952c7b890d5a6              # double 0.79135500000000003
	.quad	0x3fd826d04e618ce3              # double 0.37736900000000001
	.quad	0x3fc30f3882278d0d              # double 0.14890200000000001
	.quad	0x3fd6f17bd8be7297              # double 0.358489
	.quad	0x3fe36e631f8a0903              # double 0.60722500000000001
	.quad	0x3fe43d48cb4aec8d              # double 0.63248099999999996
	.quad	0x3fc0c1a048e043a2              # double 0.130909
	.quad	0x3fdadaa4fca42aed              # double 0.419595
	.quad	0x3fe04e618ce2d1f2              # double 0.50956800000000002
	.quad	0x3fd4cd63cb817332              # double 0.32503599999999999
	.quad	0x3feaa05ff1d81f10              # double 0.83207699999999996
	.quad	0x3fe768dda48b6523              # double 0.73155099999999995
	.quad	0x3fc07cbf6e3f78bc              # double 0.128807
	.quad	0x3fe07162ae4b0186              # double 0.51384099999999999
	.quad	0x3fe8cfd6d7e889c2              # double 0.77537100000000003
	.quad	0x3fe5d36933a0407d              # double 0.68205700000000002
	.quad	0x3feddd0b73d188f4              # double 0.93323299999999997
	.quad	0x3faa854477ff151e              # double 0.051797999999999997
	.quad	0x3fc89ac36544fe37              # double 0.192223
	.quad	0x3fc836199780baa6              # double 0.18915100000000001
	.quad	0x3fe0ae48e8a71de7              # double 0.52127500000000004
	.quad	0x3fe753a81dc0db27              # double 0.728962
	.quad	0x3fe34b74ddf86e3b              # double 0.60296099999999997
	.quad	0x3fdef3387160956c              # double 0.483595
	.quad	0x3fed9ae4f3343fa3              # double 0.92515800000000004
	.quad	0x3fe69835158b8280              # double 0.70608000000000004
	.quad	0x3fe4e33ce63a5c1c              # double 0.65273899999999996
	.quad	0x3fd6da98676a7265              # double 0.35709200000000002
	.quad	0x3fb380dc33721d54              # double 0.076185000000000003
	.quad	0x3fc37c6fbd273d5c              # double 0.15223500000000001
	.quad	0x3fe071f36262cba7              # double 0.51390999999999998
	.quad	0x3fe9d119ce075f70              # double 0.80677500000000002
	.quad	0x3fc29003eea209ab              # double 0.14502000000000001
	.quad	0x3fdcb9a176ddacef              # double 0.44883000000000001
	.quad	0x3fc2864883fd5022              # double 0.14472299999999999
	.quad	0x3fc3b0c4588a04d1              # double 0.153832
	.quad	0x3fe75fa00e27e0f0              # double 0.73042300000000004
	.quad	0x3fd0c52e72da1230              # double 0.26203500000000002
	.quad	0x3fd8c49774256bca              # double 0.38699899999999998
	.quad	0x3fe1044284dfce31              # double 0.53176999999999996
	.quad	0x3fe269a0ad8a1166              # double 0.57539399999999996
	.quad	0x3fc19e518f3eccc4              # double 0.13764399999999999
	.quad	0x3fe4ad7b634dad32              # double 0.646177
	.quad	0x3fec0aeb80ecfa6a              # double 0.87633300000000003
	.quad	0x3faaeba27ae9ab2a              # double 0.052579000000000001
	.quad	0x3fe04430b178b370              # double 0.508324
	.quad	0x3fecd6605ee568a5              # double 0.901169
	.quad	0x3fe83649d388a8b1              # double 0.75662700000000005
	.quad	0x3fef3dcad14a0a0f              # double 0.97629299999999996
	.quad	0x3f97685985ad538b              # double 0.022859000000000001
	.quad	0x3fdaf5d35653c9ac              # double 0.42125400000000002
	.quad	0x3feb8b9991361dc9              # double 0.86079099999999997
	.quad	0x3fdade43ed959a31              # double 0.41981600000000002
	.quad	0x3fe2c7c73eee5259              # double 0.58688700000000005
	.quad	0x3fed91361dc93ea3              # double 0.92397600000000002
	.quad	0x3fdaa7c17a89331a              # double 0.416489
	.quad	0x3fd723f67f4dbdf9              # double 0.36157
	.quad	0x3fb8d8dbcec84f90              # double 0.097059000000000006
	.quad	0x3fbe09fe86833c60              # double 0.11734
	.quad	0x3fd240fa9c12f09e              # double 0.28521600000000003
	.quad	0x3fec32b12d3415b1              # double 0.88118799999999997
	.quad	0x3fd2fafc8b0079a3              # double 0.29656900000000003
	.quad	0x3fd3e80bed740c41              # double 0.31103799999999998
	.quad	0x3fc09363f572de44              # double 0.129498
	.quad	0x3fd109d495182a99              # double 0.26622499999999999
	.quad	0x3fc6372e6a76965f              # double 0.17355899999999999
	.quad	0x3fcc299524bfd2e9              # double 0.22001899999999999
	.quad	0x3fe0f2f33ca31e7e              # double 0.52965700000000004
	.quad	0x3fe64c9c90c4dec2              # double 0.69685200000000003
	.quad	0x3fbcc2c5e2cdc012              # double 0.112347
	.quad	0x3fdd9203a322af57              # double 0.46203699999999998
	.quad	0x3fd0ab8a5ce5b424              # double 0.26046999999999998
	.quad	0x3fdce0c9d9d3458d              # double 0.45122000000000001
	.quad	0x3fc7e42e12620254              # double 0.18665100000000001
	.quad	0x3fe30626f60e0eb6              # double 0.59450099999999995
	.quad	0x3fe474e874c8ffb9              # double 0.63927100000000003
	.quad	0x3fa1059ea57214f0              # double 0.033245999999999998
	.quad	0x3fdaf47735c182ed              # double 0.42117100000000002
	.quad	0x3fec1abb01c92ddc              # double 0.87826300000000001
	.quad	0x3feba5bb7b6bb129              # double 0.863981
	.quad	0x3fb0a137f38c5437              # double 0.064960000000000004
	.quad	0x3fe125b9628cbd12              # double 0.53585499999999997
	.quad	0x3fe90420f6f08cc5              # double 0.78175399999999995
	.quad	0x3fdd243dccea28fe              # double 0.45533699999999999
	.quad	0x3fea629f9ce8d973              # double 0.82453900000000002
	.quad	0x3fe61df548ecd8dc              # double 0.69115700000000002
	.quad	0x3fe1449dbec2480f              # double 0.53962600000000005
	.quad	0x3fabc7f77af64064              # double 0.054260000000000003
	.quad	0x3f8cb3e5753a3ec0              # double 0.014015
	.quad	0x3fe7f1758e219653              # double 0.74822500000000003
	.quad	0x3fdc564f97edc7ef              # double 0.44276799999999999
	.quad	0x3fe55e7210be9425              # double 0.66777900000000001
	.quad	0x3fd4bffcdab191de              # double 0.32421800000000001
	.quad	0x3fe5e1e2de870974              # double 0.68382399999999999
	.quad	0x3fbdbcec84f8f8a5              # double 0.116164
	.quad	0x3fcf8c08b75ea67f              # double 0.24646100000000001
	.quad	0x3fe108db0574b407              # double 0.532331
	.quad	0x3fc2d7e889c1b542              # double 0.14721400000000001
	.quad	0x3fef1c51dabe2718              # double 0.97220700000000004
	.quad	0x3fe1ef77f27fe4bd              # double 0.56048200000000004
	.quad	0x3fdbf4adbc664d3c              # double 0.436809
	.quad	0x3fe8acfb762d83c7              # double 0.77111600000000002
	.quad	0x3fe200e8c8abd5dc              # double 0.56261099999999997
	.quad	0x3fd53c03bc4d22c9              # double 0.33178800000000003
	.quad	0x3fe3e41b328b6d87              # double 0.62159500000000001
	.quad	0x3fe72a9f7b5aea31              # double 0.72395299999999996
	.quad	0x3fd636006d0d4995              # double 0.34704600000000002
	.quad	0x3fda36694898f606              # double 0.40957100000000002
	.quad	0x3fadd69d30270f39              # double 0.058278000000000003
	.quad	0x3f80ea9e6eeb7026              # double 0.00826
	.quad	0x3fe18b780346dc5d              # double 0.54827499999999996
	.quad	0x3fd0e4649906cca3              # double 0.26394000000000001
	.quad	0x3fe7cec204f2ae08              # double 0.74398900000000001
	.quad	0x3fa5cf0307f23cc9              # double 0.042595000000000001
	.quad	0x3feb1a0f0a5efe93              # double 0.84693099999999999
	.quad	0x3fd2224aada33bda              # double 0.28334300000000001
	.quad	0x3fed53825e13b18e              # double 0.91644400000000004
	.quad	0x3fefcfa05143bf72              # double 0.99409499999999995
	.quad	0x3fea9cd3e0bd449a              # double 0.83164400000000005
	.quad	0x3fcaece9a2c66905              # double 0.21035499999999999
	.quad	0x3fe574e65bea0ba2              # double 0.67052
	.quad	0x3fef904d551d68c7              # double 0.98636500000000004
	.quad	0x3fe358f0c77dd873              # double 0.60460700000000001
	.quad	0x3fea60b0af5fd47c              # double 0.824303
	.quad	0x3fca4399b2c40d0b              # double 0.20518800000000001
	.quad	0x3fe28ede54b48d3b              # double 0.57994000000000001
	.quad	0x3fb227ae9ab29e4d              # double 0.070917999999999995
	.quad	0x3fed6a37ac3eb7cc              # double 0.91921600000000003
	.quad	0x3fd3d5410f94c87a              # double 0.30989100000000003
	.quad	0x3fc02f8bdec5f395              # double 0.12645100000000001
	.quad	0x3fc413cab81f969e              # double 0.15685399999999999
	.quad	0x3fe0f09fa54c5543              # double 0.52937299999999998
	.quad	0x3fdb61c36976bc1f              # double 0.427842
	.quad	0x3feff082491afc05              # double 0.99810900000000002
	.quad	0x3fe57d3f5b5fa227              # double 0.671539
	.quad	0x3fe4a8bd230b9dc3              # double 0.64559800000000001
	.quad	0x3fd8f3a9b0681238              # double 0.389872
	.quad	0x3fb0d5b6805a2d73              # double 0.065761
	.quad	0x3fe70c154c985f07              # double 0.720225
	.quad	0x3fed32378ab0c88a              # double 0.91237999999999997
	.quad	0x3fee9eadd590c0ad              # double 0.95687
	.quad	0x3fe4d6f75d9a0f0a              # double 0.65124099999999996
	.quad	0x3fe63ac710cb295f              # double 0.69467500000000004
	.quad	0x3feb96db0dd82fd7              # double 0.86216499999999996
	.quad	0x3fdf23d0bfa09460              # double 0.48656100000000002
	.quad	0x3fde2031ceaf251c              # double 0.47071499999999999
	.quad	0x3f9df1172ef0ae53              # double 0.029239999999999999
	.quad	0x3fe8f39b024f6599              # double 0.77973700000000001
	.quad	0x3fefe85553ef6b5d              # double 0.99711099999999996
	.quad	0x3f9037d63022dd7b              # double 0.015838000000000001
	.quad	0x3fe7b55ef1fddebe              # double 0.74089000000000005
	.quad	0x3fd69f383f0bae8a              # double 0.353468
	.quad	0x3fb2c98e53eb399f              # double 0.073387999999999995
	.quad	0x3fceb09635610add              # double 0.239764
	.quad	0x3fe0d831f03d145e              # double 0.52639100000000005
	.quad	0x3feda189bd8383ae              # double 0.92596900000000004
	.quad	0x3fedcd1a65061416              # double 0.93128699999999998
	.quad	0x3fb472c0e7bc3c5c              # double 0.079876000000000003
	.quad	0x3fec490a350d2807              # double 0.88391600000000004
	.quad	0x3f9f96e158750c1c              # double 0.030849000000000001
	.quad	0x3fe542aa9f7b5aea              # double 0.66438799999999998
	.quad	0x3fea36f9fcb0c027              # double 0.81921100000000002
	.quad	0x3fd311e85fd04a30              # double 0.29796800000000001
	.quad	0x3fec6a055757d5aa              # double 0.88794200000000001
	.quad	0x3fa2862f5989df11              # double 0.036179999999999997
	.quad	0x3fcaf9ebe9c88616              # double 0.21075199999999999
	.quad	0x3fe23549f94855da              # double 0.56900499999999998
	.quad	0x3fca877681669ced              # double 0.207259
	.quad	0x3fe9aaa7ded6ba8c              # double 0.80208199999999996
	.quad	0x3fe02630ec311623              # double 0.50466200000000005
	.quad	0x3fe325b530ced4e5              # double 0.59835300000000002
	.quad	0x3fe8a97e132b55ef              # double 0.77068999999999999
	.quad	0x3fe5bbea91d9b1b8              # double 0.67918900000000004
	.quad	0x3feaba3ec02f2f98              # double 0.83523499999999995
	.quad	0x3fcf75c8d9f9053a              # double 0.245782
	.quad	0x3fc4bda0dfdef848              # double 0.16203699999999999
	.quad	0x3fe9ba0c6b484d77              # double 0.80396100000000004
	.quad	0x3fec0bd66277c45d              # double 0.87644500000000003
	.quad	0x3fe45e8d5410f94d              # double 0.63654200000000005
	.quad	0x3fd60092ccf6be38              # double 0.34378500000000001
	.quad	0x3fee96bdb1a6d699              # double 0.955901
	.quad	0x3fd8024f6598e10d              # double 0.375141
	.quad	0x3fd75275ee99a62f              # double 0.36440800000000001
	.quad	0x3fe56bb1290257c9              # double 0.66939599999999999
	.quad	0x3fd2083558a76102              # double 0.28175099999999997
	.quad	0x3fbac7c957cd466f              # double 0.104611
	.quad	0x3fd2ae6c8f755369              # double 0.29189599999999999
	.quad	0x3fd92e09fe86833c              # double 0.39343499999999998
	.quad	0x3fd82bd7f51efb6e              # double 0.37767600000000001
	.quad	0x3fbdc67dfe32a066              # double 0.11631
	.quad	0x3feed0d49949e881              # double 0.96299199999999995
	.quad	0x3fef63b688bda943              # double 0.98092199999999996
	.quad	0x3fe0975f2cb64170              # double 0.51847799999999999
	.quad	0x3fe822d948dc11e4              # double 0.75425399999999998
	.quad	0x3fe631feeb2d0a24              # double 0.69360299999999997
	.quad	0x3fea2122fad6cb53              # double 0.81654499999999997
	.quad	0x3fc10c564f97edc8              # double 0.133189
	.quad	0x3fb869d7342edbb6              # double 0.095365000000000005
	.quad	0x3fa841248d7e0264              # double 0.047371999999999997
	.quad	0x3fe3be121ee67514              # double 0.61695199999999994
	.quad	0x3fe72b12d3415b14              # double 0.72400799999999998
	.quad	0x3fd0a7b4e54f7a92              # double 0.26023600000000002
	.quad	0x3fe16f587d6f9768              # double 0.54484200000000005
	.quad	0x3fc4a8112ba16e7a              # double 0.16137899999999999
	.quad	0x3fc5800a7c5ac472              # double 0.16797000000000001
	.quad	0x3fe2f01fb82c2bd8              # double 0.591812
	.quad	0x3fda31487768166a              # double 0.40925800000000001
	.quad	0x3feeea6c1a048e04              # double 0.96611599999999997
	.quad	0x3fec0da1a93293d1              # double 0.876664
	.quad	0x3fe9805a2d72ffd2              # double 0.79691800000000002
	.quad	0x3fdf868fd199bb28              # double 0.49258800000000003
	.quad	0x3fd03e5321e603d5              # double 0.25380399999999997
	.quad	0x3fd63c105186db51              # double 0.347416
	.quad	0x3fef42b51bd61f5c              # double 0.97689300000000001
	.quad	0x3fd38a7a41e57d9e              # double 0.30532700000000002
	.quad	0x3fe16e8d10f51aca              # double 0.54474500000000003
	.quad	0x3fef31337eb28d86              # double 0.97475599999999996
	.quad	0x3fe1a35935fc3b4f              # double 0.55118999999999996
	.quad	0x3fefc6e08f217093              # double 0.99302699999999999
	.quad	0x3fe5e703afb7e910              # double 0.68445
	.quad	0x3fbcfe36d22424a2              # double 0.11325399999999999
	.quad	0x3fe3b6c3760bf5d8              # double 0.61606000000000005
	.quad	0x3fecaa433508f649              # double 0.89578400000000002
	.quad	0x3fc11422ccb3a259              # double 0.13342699999999999
	.quad	0x3f93b3e9a6f826ee              # double 0.019241000000000001
	.quad	0x3fca45e4e69f05ea              # double 0.205258
	.quad	0x3fc9076c050bd87b              # double 0.19553899999999999
	.quad	0x3fef9fc8f32378ab              # double 0.98825499999999999
	.quad	0x3fdc0df9bdc69f8c              # double 0.43835299999999999
	.quad	0x3fde1d4306e5cd4f              # double 0.47053600000000001
	.quad	0x3fba045baf533f42              # double 0.101629
	.quad	0x3fd9aac1094a2b9d              # double 0.40104699999999999
	.quad	0x3fdccca2db61bb06              # double 0.44999
	.quad	0x3fe7c0ee06d93815              # double 0.74230099999999999
	.quad	0x3fef6d3f9e7b80aa              # double 0.98208600000000001
	.quad	0x3fe8c4ae85b9e8c4              # double 0.77400899999999994
	.quad	0x3fe1f785729b280f              # double 0.56146499999999999
	.quad	0x3fd200474d9c6b05              # double 0.28126699999999999
	.quad	0x3fa431bde82d7b63              # double 0.039441999999999998
	.quad	0x3fe72f166e008e9b              # double 0.72449799999999998
	.quad	0x3fee829ae4f33440              # double 0.95344300000000004
	.quad	0x3fc92db1e9f27781              # double 0.19670699999999999
	.quad	0x3fa7724fa8b4bf90              # double 0.045794000000000001
	.quad	0x3fd1694ccab3edd9              # double 0.27205200000000002
	.quad	0x3fe05e41d4b6a61a              # double 0.51150600000000002
	.quad	0x3fdd8b502ababead              # double 0.46162799999999998
	.quad	0x3fc7f0dc768dfbd7              # double 0.18703800000000001
	.quad	0x3fb70ccbc05d52c1              # double 0.090038999999999994
	.quad	0x3fd0daad601ffb48              # double 0.263347
	.quad	0x3fca4db9c7368ad7              # double 0.20549700000000001
	.quad	0x3fcff1737542a23c              # double 0.249556
	.quad	0x3fdd3293d102bc73              # double 0.45621200000000001
	.quad	0x3fd01db877ab3248              # double 0.25181399999999998
	.quad	0x3fdf3af31b152f3c              # double 0.48797299999999999
	.quad	0x3fe3afc47e49b1fb              # double 0.61520600000000003
	.quad	0x3fe699f1ae2da555              # double 0.70629200000000003
	.quad	0x3fda25b749adc8fc              # double 0.40855200000000003
	.quad	0x3fe6257a786c2268              # double 0.692075
	.quad	0x3fec8ae74f2f123c              # double 0.89195599999999997
	.quad	0x3fce82b628459967              # double 0.23836399999999999
	.quad	0x3fb883cafb3b7521              # double 0.095760999999999999
	.quad	0x3fe0c7d3d4280ae1              # double 0.524393
	.quad	0x3fce8b0079a2834d              # double 0.238617
	.quad	0x3fc14a1272c94b38              # double 0.135073
	.quad	0x3f7347a5b0ff10ed              # double 0.0047070000000000002
	.quad	0x3fc6e3e6c4c5974e              # double 0.17882999999999999
	.quad	0x3fda7c02afdda8bd              # double 0.41381899999999999
	.quad	0x3fe5cead0c3d2524              # double 0.68147899999999995
	.quad	0x3fe63b2dd377e1b9              # double 0.69472400000000001
	.quad	0x3fe29c6b05319829              # double 0.58159400000000006
	.quad	0x3fdd1344806290ef              # double 0.45430100000000001
	.quad	0x3fee6640a6b93ccd              # double 0.94998199999999999
	.quad	0x3face618ce2d1f1d              # double 0.056443
	.quad	0x3fd8d41b75a74c0a              # double 0.38794600000000001
	.quad	0x3fcb39f340d4dc66              # double 0.21270600000000001
	.quad	0x3fc70ff10ecb74de              # double 0.180174
	.quad	0x3fd6fc3f811f4f51              # double 0.35914600000000002
	.quad	0x3fedd7a56de3326a              # double 0.93257400000000001
	.quad	0x3fe7ba81dc0db270              # double 0.74151699999999998
	.quad	0x3f8b0ccbc05d52c1              # double 0.013207999999999999
	.quad	0x3fe140bfe3b03e21              # double 0.53915400000000002
	.quad	0x3fd0c92146a1a501              # double 0.26227600000000001
	.quad	0x3fd2f40a2877ee4e              # double 0.29614499999999999
	.quad	0x3fa9a06a6e32e382              # double 0.050051999999999999
	.quad	0x3fdb7e52157689ca              # double 0.42958499999999999
	.quad	0x3fe141ebc83a96d5              # double 0.53929700000000003
	.quad	0x3fd0a18372e6a769              # double 0.25985799999999998
	.quad	0x3fe6d206c8711d7a              # double 0.71313800000000005
	.quad	0x3fef2ee631f8a090              # double 0.97447499999999998
	.quad	0x3fe2f05425f20210              # double 0.59183699999999995
	.quad	0x3fc13ca31e7d9989              # double 0.134663
	.quad	0x3fe3ace24bba12b6              # double 0.61485400000000001
	.quad	0x3fda091c087442c8              # double 0.406806
	.quad	0x3fe955c96030c240              # double 0.79172200000000004
	.quad	0x3fd255b89939218a              # double 0.28648200000000001
	.quad	0x3fea1691a75cd0bb              # double 0.81525499999999995
	.quad	0x3fe4e90ff9724745              # double 0.65344999999999998
	.quad	0x3fd113fd0d0678c0              # double 0.266845
	.quad	0x3fd567ec7863beec              # double 0.33446799999999999
	.quad	0x3fe02c42e9899bf6              # double 0.50540300000000005
	.quad	0x3fc2344c37e6f71a              # double 0.14222099999999999
	.quad	0x3fdfa19439de481f              # double 0.49423699999999998
	.quad	0x3fdd6466b1e5c0ba              # double 0.45925300000000002
	.quad	0x3fec701b866e43aa              # double 0.88868499999999995
	.quad	0x3fd4d8f92af9a8ce              # double 0.325743
	.quad	0x3fc84b018611fd59              # double 0.18978900000000001
	.quad	0x3fc78a009f623077              # double 0.18389900000000001
	.quad	0x3fd29b499d0203e6              # double 0.29072799999999999
	.quad	0x3fc656cd6c2efd44              # double 0.17452400000000001
	.quad	0x3fe60e15011904b4              # double 0.68921900000000003
	.quad	0x3fe00919ef954eb1              # double 0.50111099999999997
	.quad	0x3fd58476f2a5a46a              # double 0.33621000000000001
	.quad	0x3fcbca18bd66277c              # double 0.21710499999999999
	.quad	0x3fe2a8d64d7f0ed4              # double 0.58311000000000002
	.quad	0x3fe0e5ffa3b9ae0c              # double 0.52807599999999999
	.quad	0x3fd3a044ae85b9e9              # double 0.30665700000000001
	.quad	0x3fcd3804534bd76f              # double 0.228272
	.quad	0x3fc0c564f97edc7f              # double 0.131024
	.quad	0x3fe02acfb762d83c              # double 0.50522599999999995
	.quad	0x3feaa4d6e47dc37a              # double 0.83262199999999997
	.quad	0x3fd242a23bff8a8f              # double 0.28531699999999999
	.quad	0x3fd755ef1fddebd9              # double 0.36462
	.quad	0x3fe4dc1a47a9e2bd              # double 0.651868
	.quad	0x3fdd942d490e66cb              # double 0.462169
	.quad	0x3fc484be40420f6f              # double 0.160301
	.quad	0x3fd84b76f6d76252              # double 0.379606
	.quad	0x3fe3301a79fec99f              # double 0.59962199999999999
	.quad	0x3fec9ea9a3d2d880              # double 0.89436800000000005
	.quad	0x3fd013e81450efdd              # double 0.25121500000000002
	.quad	0x3fe2f29d40ee06d9              # double 0.59211599999999998
	.quad	0x3fca428d434a01ac              # double 0.20515600000000001
	.quad	0x3fec3dfb0d51f81a              # double 0.88256599999999996
	.quad	0x3fdf2de43ed959a3              # double 0.487176
	.quad	0x3fc4425aee631f8a              # double 0.158275
	.quad	0x3f979420b3d4ae43              # double 0.023026000000000001
	.quad	0x3fe69f98b71b8aa0              # double 0.706982
	.quad	0x3fc0c660a2014728              # double 0.131054
	.quad	0x3fe61656eefa1e3f              # double 0.69022700000000003
	.quad	0x3fe8c6173b85e80c              # double 0.774181
	.quad	0x3fd5eb702602c908              # double 0.34249499999999999
	.quad	0x3fdb07faa044ae86              # double 0.42236200000000002
	.quad	0x3fc9ceb78897e996              # double 0.20162099999999999
	.quad	0x3fee72452c59fb1e              # double 0.95144899999999999
	.quad	0x3fd2bbc6eb0b7c35              # double 0.292711
	.quad	0x3fc6f08cc575c076              # double 0.17921599999999999
	.quad	0x3fd0469d7342edbb              # double 0.25430999999999998
	.quad	0x3fee0a7610279570              # double 0.93877699999999997
	.quad	0x3fd6fe260b2c83ed              # double 0.35926200000000003
	.quad	0x3feeb358f2e05ccd              # double 0.95939300000000005
	.quad	0x3fbc35696e58a32f              # double 0.11019
	.quad	0x3fea48f75536933a              # double 0.821407
	.quad	0x3fe18266772d5e07              # double 0.54716799999999999
	.quad	0x3fe0b5a426bb55ac              # double 0.522173
	.quad	0x3fd4a8650e779208              # double 0.32277800000000001
	.quad	0x3fc65daf07bfe7e2              # double 0.174734
	.quad	0x3fb68a3f8982cb21              # double 0.088047
	.quad	0x3fe292dfd694ccab              # double 0.58042899999999997
	.quad	0x3fedc812be48a58b              # double 0.93067299999999997
	.quad	0x3f9969a0ad8a1166              # double 0.024816999999999999
	.quad	0x3fd3a5870da5daf0              # double 0.30697799999999997
	.quad	0x3feab08feac42e99              # double 0.83405300000000004
	.quad	0x3fae1cde5d18090b              # double 0.058813999999999998
	.quad	0x3fe9d549731098d4              # double 0.80728599999999994
	.quad	0x3f93810e8858ff76              # double 0.019047000000000001
	.quad	0x3fd1dc8b86b15f89              # double 0.279086
	.quad	0x3f708a265f0f5a10              # double 0.0040379999999999999
	.quad	0x3fdb8b3700474d9c              # double 0.43037199999999998
	.quad	0x3fd6f0b6b6e0d23d              # double 0.35844199999999998
	.quad	0x3fe050d49949e881              # double 0.50986699999999996
	.quad	0x3feefbaecd07852f              # double 0.96822299999999994
	.quad	0x3fe866e86c6583e8              # double 0.76256199999999996
	.quad	0x3fe1f9335d249e45              # double 0.56167
	.quad	0x3fc19513f8db4891              # double 0.13736200000000001
	.quad	0x3fc35275ee99a62f              # double 0.150954
	.quad	0x3fd51bda5119ce07              # double 0.32982499999999998
	.quad	0x3fc42517e77d523b              # double 0.15738199999999999
	.quad	0x3feeabe0589acbc9              # double 0.95848100000000002
	.quad	0x3f8bcec84f8f8a4c              # double 0.013578
	.quad	0x3feeb5781c714fce              # double 0.95965199999999995
	.quad	0x3fd090cd423d9232              # double 0.25883800000000001
	.quad	0x3fea4a1f080303c0              # double 0.82154799999999994
	.quad	0x3fa616d6dc1a47aa              # double 0.043143000000000001
	.quad	0x3fede56abde3fbbd              # double 0.93425499999999995
	.quad	0x3fb018d6909aed57              # double 0.062879000000000004
	.quad	0x3fd910f94c87980f              # double 0.39166099999999998
	.quad	0x3fddef5ec80c73ac              # double 0.46773500000000001
	.quad	0x3fe38d10f51ac9b0              # double 0.61097000000000001
	.quad	0x3fd4884406c00da2              # double 0.32081700000000002
	.quad	0x3fd85d78811b1d93              # double 0.38070500000000002
	.quad	0x3fd016a055757d5b              # double 0.25138100000000002
	.quad	0x3fe83b9f127f5e85              # double 0.75727800000000001
	.quad	0x3fea7f0025bfad2a              # double 0.82800300000000004
	.quad	0x3feb47820a30db6a              # double 0.85247899999999999
	.quad	0x3fe5820c49ba5e35              # double 0.67212499999999997
	.quad	0x3fd98066c2acb85a              # double 0.39846199999999998
	.quad	0x3fe2d4f5903a7547              # double 0.58849600000000002
	.quad	0x3fd5a78f25a250f8              # double 0.33835199999999999
	.quad	0x3febadba4d6e47dc              # double 0.86495699999999997
	.quad	0x3fd717a02fb5d031              # double 0.360817
	.quad	0x3fb8f7446f9b994e              # double 0.097522999999999998
	.quad	0x3fcf0fb65668c261              # double 0.24266699999999999
	.quad	0x3fd2ebe596c82e02              # double 0.29564800000000002
	.quad	0x3feb262456f75d9a              # double 0.84840599999999999
	.quad	0x3fd137c5692b3cc5              # double 0.26902900000000002
	.quad	0x3fe223b7952d234f              # double 0.56686000000000003
	.quad	0x3fe76ef8055fbb51              # double 0.73229599999999995
	.quad	0x3f83d640e9d51b50              # double 0.0096860000000000001
	.quad	0x3fd0410f94c87981              # double 0.253971
	.quad	0x3feac1e364bec67a              # double 0.83616800000000002
	.quad	0x3fe3c1615ebfa8f8              # double 0.61735600000000002
	.quad	0x3fd0218def416bdb              # double 0.25204799999999999
	.quad	0x3fce6f587d6f9768              # double 0.23777300000000001
	.quad	0x3fa40c4156e264e5              # double 0.039156000000000003
	.quad	0x3fe8d2e0e30446b7              # double 0.77574200000000004
	.quad	0x3fea89b951c5c572              # double 0.82931200000000005
	.quad	0x3fe1b85e80bed741              # double 0.55375600000000003
	.quad	0x3fe651fa333764f1              # double 0.69750699999999999
	.quad	0x3fed530ced4e4c94              # double 0.91638799999999998
	.quad	0x3fe1aad1d041cc53              # double 0.55210199999999998
	.quad	0x3fd254d61b2a27f2              # double 0.28642800000000002
	.quad	0x3fec5b18548a9bd0              # double 0.88612000000000002
	.quad	0x3fd0641700cd8559              # double 0.25610899999999998
	.quad	0x3fe842a023209678              # double 0.75813299999999995
	.quad	0x3feca3db3bfb58d1              # double 0.89500199999999996
	.quad	0x3fec69057d1782d4              # double 0.88782000000000005
	.quad	0x3fe7821af7d30ad4              # double 0.73463199999999995
	.quad	0x3fb08366516db0de              # double 0.064505000000000007
	.quad	0x3fbddf00abf76a2f              # double 0.116684
	.quad	0x3fe9c01a36e2eb1c              # double 0.80469999999999997
	.quad	0x3fe438ef34d6a162              # double 0.63195000000000001
	.quad	0x3fec09e55c0fcb4f              # double 0.87620799999999999
	.quad	0x3fcff6555c52e72e              # double 0.24970500000000001
	.quad	0x3fdcd93c46d82ba6              # double 0.45075900000000002
	.quad	0x3fec7e670e2c12ae              # double 0.89043000000000005
	.quad	0x3fdb43aeab7995ee              # double 0.426006
	.quad	0x3fece2b6ae7d566d              # double 0.90267500000000001
	.quad	0x3fe8e7caea747d80              # double 0.77829499999999996
	.quad	0x3fe05f394b7b2895              # double 0.51162399999999997
	.quad	0x3feee5753a3ec02f              # double 0.96550999999999997
	.quad	0x3fd1d8e864020818              # double 0.278864
	.quad	0x3fe45141a6937d20              # double 0.63491900000000001
	.quad	0x3fdd1fc08fa7a850              # double 0.455063
	.quad	0x3fbd983947496aad              # double 0.115604
	.quad	0x3fefc2d05f288484              # double 0.99253100000000005
	.quad	0x3fe8e8815e39713b              # double 0.77838200000000002
	.quad	0x3fb8517614595358              # double 0.094992999999999994
	.quad	0x3fef2cfb762d83c7              # double 0.97424100000000002
	.quad	0x3fedae429e0a41a2              # double 0.92752199999999996
	.quad	0x3fcd6cf850df15a5              # double 0.22988800000000001
	.quad	0x3feb9be2b4959e62              # double 0.86277899999999996
	.quad	0x3fc292ab68cef673              # double 0.14510100000000001
	.quad	0x3fc681c2e33eff19              # double 0.17583499999999999
	.quad	0x3fd613dfb0d51f82              # double 0.34496300000000002
	.quad	0x3fe6e6772d5e071c              # double 0.71563299999999996
	.quad	0x3fef4de5d18090b4              # double 0.97825899999999998
	.quad	0x3fbe8a71de69ad43              # double 0.1193
	.quad	0x3fea763e4abe6a33              # double 0.82693399999999995
	.quad	0x3fe56b399f5dfeb9              # double 0.66933900000000002
	.quad	0x3fe829d1f601797d              # double 0.75510500000000003
	.quad	0x3fcae68e3ef28416              # double 0.21016099999999999
	.quad	0x3fd780d801b43526              # double 0.36723899999999998
	.quad	0x3fdc0346dc5d6388              # double 0.43769999999999998
	.quad	0x3fe8565c2d278078              # double 0.76054200000000005
	.quad	0x3fcf77ea1c68ec53              # double 0.24584700000000001
	.quad	0x3fe3fe8ee6b8305e              # double 0.62482400000000005
	.quad	0x3fdc87f88765ba6f              # double 0.445799
	.quad	0x3f8ec4e7253da72a              # double 0.015023999999999999
	.quad	0x3fcfc4f3ba775fb3              # double 0.248198
	.quad	0x3fe27036c9c0a8d2              # double 0.57619799999999999
	.quad	0x3fcfcb0c026cc1ca              # double 0.24838399999999999
	.quad	0x3fd347baa9b499d0              # double 0.30125299999999999
	.quad	0x3fe04766c6de7642              # double 0.50871599999999995
	.quad	0x3fea1f0e4da09cc3              # double 0.81629099999999999
	.quad	0x3fe648fb86f47b67              # double 0.69640899999999994
	.quad	0x3fe54ac083126e98              # double 0.66537500000000005
	.quad	0x3fefee0b0af5fd48              # double 0.99780800000000002
	.quad	0x3feba50d6b228dca              # double 0.86389800000000005
	.quad	0x3fbdaa2e3c536d65              # double 0.11587799999999999
	.quad	0x3fe848e25c810a57              # double 0.75889700000000004
	.quad	0x3f9219652bd3c361              # double 0.017675
	.quad	0x3fe0195cc857f306              # double 0.50309599999999999
	.quad	0x3fb4258d5842b735              # double 0.078698000000000004
	.quad	0x3fceac9f2fdb8fde              # double 0.23964299999999999
	.quad	0x3fdae95faa8a82a5              # double 0.42049399999999998
	.quad	0x3fec51f3e89a88ad              # double 0.88500400000000001
	.quad	0x3fc192641b328b6e              # double 0.13728000000000001
	.quad	0x3fe0a93d102bc72e              # double 0.52065899999999998
	.quad	0x3fb2eae9ee45c359              # double 0.073897000000000004
	.quad	0x3fed636f3b213e3e              # double 0.91838799999999998
	.quad	0x3fe1b2031ceaf252              # double 0.55298000000000003
	.quad	0x3fd701abd1aa821f              # double 0.35947699999999999
	.quad	0x3fd9b29e4d5d80e5              # double 0.40152700000000002
	.quad	0x3fba37cdcca70d20              # double 0.10241400000000001
	.quad	0x3fadaec4a4095f24              # double 0.057973999999999998
	.quad	0x3febe74299d883ba              # double 0.87197999999999998
	.quad	0x3fe40db6a1e81cb4              # double 0.62667399999999995
	.quad	0x3fec2f837b4a233a              # double 0.88080000000000003
	.quad	0x3fda199780baa583              # double 0.40781200000000001
	.quad	0x3fea314a90470a81              # double 0.81851700000000005
	.quad	0x3fe7dbec2480e8c9              # double 0.74559600000000004
	.quad	0x3fd0998d045fe111              # double 0.25937199999999999
	.quad	0x3fd6fd47bedb7282              # double 0.359209
	.quad	0x3fdbc475e6362a5e              # double 0.43386599999999997
	.quad	0x3feb8d3cff64cf8d              # double 0.86099099999999995
	.quad	0x3fe0c128bf3bea92              # double 0.52357900000000002
	.quad	0x3fef8b5cbff47736              # double 0.98576200000000003
	.quad	0x3fed69b38d60a633              # double 0.919153
	.quad	0x3fa9ed7c6fbd273d              # double 0.050639999999999998
	.quad	0x3fa1131ec0b56755              # double 0.033348999999999997
	.quad	0x3fee5cf893faf428              # double 0.94884900000000005
	.quad	0x3fcae432441fea81              # double 0.210089
	.quad	0x3fe8b53f7ced9168              # double 0.77212499999999995
	.quad	0x3fbf9ee02a77a2cf              # double 0.123518
	.quad	0x3fefeddce7cd0353              # double 0.99778599999999995
	.quad	0x3fe6c61b6d43d039              # double 0.71168299999999995
	.quad	0x3fe51dfdac68a937              # double 0.65991100000000003
	.quad	0x3fd1804534bd76ee              # double 0.27345399999999997
	.quad	0x3fe66dc5d6388659              # double 0.70089999999999997
	.quad	0x3fe5744b2b777d0f              # double 0.67044599999999999
	.quad	0x3fe8453d20f2becf              # double 0.75845200000000002
	.quad	0x3fec297396d0917d              # double 0.88005999999999995
	.quad	0x3fc04dfce3150dae              # double 0.12737999999999999
	.quad	0x3fe7308feac42e99              # double 0.72467800000000004
	.quad	0x3fe6639713ad5bee              # double 0.69965699999999997
	.quad	0x3fc547c73eee5259              # double 0.16625300000000001
	.quad	0x3fde0e51d25aab47              # double 0.46962399999999999
	.quad	0x3feb27243137b070              # double 0.84852799999999995
	.quad	0x3fce7442c7fbacb4              # double 0.237923
	.quad	0x3fe6fb9e060fe47a              # double 0.71821500000000005
	.quad	0x3fcd60285ec3dab6              # double 0.22949700000000001
	.quad	0x3fe59f70de8f6cf0              # double 0.67571300000000001
	.quad	0x3fd19e5e2478854d              # double 0.27529100000000001
	.quad	0x3fe23f7ad4b2745c              # double 0.57024900000000001
	.quad	0x3fc3b1c0010c6f7a              # double 0.153862
	.quad	0x3fd59680e0653006              # double 0.33731100000000003
	.quad	0x3fe64460ed80a17b              # double 0.69584699999999999
	.quad	0x3fe271044f1a1987              # double 0.57629600000000003
	.quad	0x3fd49129888f861a              # double 0.32135999999999998
	.quad	0x3fcadba4d6e47dc3              # double 0.20982799999999999
	.quad	0x3fe17e132b55ef20              # double 0.54664000000000001
	.quad	0x3f99c38b04ab606b              # double 0.025159999999999998
	.quad	0x3fd796e9bbf0dc77              # double 0.36858600000000002
	.quad	0x3fe19930be0ded29              # double 0.54995000000000005
	.quad	0x3fd46e978d4fdf3b              # double 0.31924999999999998
	.quad	0x3fed8b2e9ccb7d41              # double 0.92323999999999995
	.quad	0x3fc4ffeb074a771d              # double 0.16406000000000001
	.quad	0x3f999aa60913a4f8              # double 0.025003999999999998
	.quad	0x3fee8298cc144029              # double 0.95344200000000001
	.quad	0x3fefe1a8262456f7              # double 0.99629599999999995
	.quad	0x3fc3b70ef566490a              # double 0.15402399999999999
	.quad	0x3fe965fb71fbc5df              # double 0.79369900000000004
	.quad	0x3fe92a77a2cecc81              # double 0.78643399999999997
	.quad	0x3fd86a4441787054              # double 0.38148599999999999
	.quad	0x3fdee2089e34330d              # double 0.48254599999999997
	.quad	0x3fe5bb01c92ddbdb              # double 0.67907799999999996
	.quad	0x3fb86b59146e4c0e              # double 0.095388
	.quad	0x3fd51deacc92146a              # double 0.32995099999999999
	.quad	0x3fbc5a4f00ef1349              # double 0.110753
	.quad	0x3fe1089a02752546              # double 0.5323
	.quad	0x3fe4da31a4bdba0a              # double 0.65163499999999996
	.quad	0x3fcf422467be553b              # double 0.24420600000000001
	.quad	0x3fdffea3df6db941              # double 0.499917
	.quad	0x3fe51a261bf37b8d              # double 0.65944199999999997
	.quad	0x3fccdf9bdc69f8c2              # double 0.225574
	.quad	0x3fd83cf2cf95d4e9              # double 0.37872
	.quad	0x3fe4475c4a83b1d1              # double 0.63371100000000002
	.quad	0x3fd4a16e7a311e86              # double 0.322353
	.quad	0x3fde344c37e6f71a              # double 0.47194199999999997
	.quad	0x3fd354b05b7cfe58              # double 0.30204399999999998
	.quad	0x3fa3c70c996b7671              # double 0.038628000000000003
	.quad	0x3fe644998d045fe1              # double 0.69587399999999999
	.quad	0x3fd5335d249e44fa              # double 0.33126
	.quad	0x3fea5aa92e62131b              # double 0.82356700000000005
	.quad	0x3fb02396073de1e3              # double 0.063043000000000002
	.quad	0x3fd17f84449dbec2              # double 0.27340799999999998
	.quad	0x3fe54ad14a0a0f4d              # double 0.66538299999999995
	.quad	0x3fcd27136a400fbb              # double 0.22775500000000001
	.quad	0x3fed1a75cd0bb6ed              # double 0.90947999999999996
	.quad	0x3fe103c6c97d8cf4              # double 0.53171100000000004
	.quad	0x3fd1ba6698bb4d49              # double 0.27700200000000003
	.quad	0x3fdd41e57d9dba91              # double 0.45714700000000003
	.quad	0x3fe76bb341e14be0              # double 0.73189700000000001
	.quad	0x3f99ecb31c219eb6              # double 0.025316999999999999
	.quad	0x3fc53cddd6e04c06              # double 0.16592000000000001
	.quad	0x3fb88301a79fec9a              # double 0.095749
	.quad	0x3fddbd5992428d43              # double 0.46468199999999998
	.quad	0x3fe9a7ded6ba8c58              # double 0.80174199999999995
	.quad	0x3fd53ec892ab68cf              # double 0.331957
	.quad	0x3fe71b13165d3997              # double 0.722055
	.quad	0x3fdf68ec52a411c3              # double 0.49077900000000002
	.quad	0x3fe97e974a3400b9              # double 0.79670300000000005
	.quad	0x3feca0232096787d              # double 0.89454800000000001
	.quad	0x3fdbd4d834091c08              # double 0.43486599999999997
	.quad	0x3fef14d2f5dbb9d0              # double 0.97129200000000004
	.quad	0x3fd87381d7dbf488              # double 0.38205
	.quad	0x3fc559f6ec5b078e              # double 0.16680800000000001
	.quad	0x3fe9a426bb55ac04              # double 0.801288
	.quad	0x3fd1197e56473472              # double 0.267181
	.quad	0x3feb2ad601ffb481              # double 0.84897900000000004
	.quad	0x3feda8f7db6e5040              # double 0.92687600000000003
	.quad	0x3fa7fa3b9ae0c176              # double 0.046830999999999998
	.quad	0x3fe69cf355cd91ef              # double 0.70665900000000004
	.quad	0x3fe07c829cfdd228              # double 0.51519899999999996
	.quad	0x3feacf6598e10cf6              # double 0.83781700000000003
	.quad	0x3fd660dcb9a9da59              # double 0.34966199999999997
	.quad	0x3fe014e3bcd35a86              # double 0.50255000000000005
	.quad	0x3fcd1ef30a4e379b              # double 0.22750699999999999
	.quad	0x3feeb1290257c915              # double 0.95912600000000003
	.quad	0x3fdc6b0531982880              # double 0.44403199999999998
	.quad	0x3fe0ad7b634dad32              # double 0.521177
	.quad	0x3fe4619da9c99286              # double 0.63691600000000004
	.quad	0x3fea75ea67e846a6              # double 0.82689400000000002
	.quad	0x3fa6bc621b7e0ac8              # double 0.044406000000000001
	.quad	0x3fd7350092ccf6be              # double 0.36260999999999999
	.quad	0x3fe42e90364388ec              # double 0.63068400000000002
	.quad	0x3fcdc5a3e39f7729              # double 0.232594
	.quad	0x3fe2cd7cf5f4e443              # double 0.587584
	.quad	0x3fe6894c447c30d3              # double 0.70426
	.quad	0x3fe03b16c1e364bf              # double 0.50721300000000002
	.quad	0x3fd97bedb7281fda              # double 0.39818900000000002
	.quad	0x3fe61b4dcebfec14              # double 0.69083300000000003
	.quad	0x3fb3e878fabda0e0              # double 0.077766000000000002
	.quad	0x3fe8f1172ef0ae53              # double 0.77942999999999996
	.quad	0x3fddce8533b10774              # double 0.46572999999999998
	.quad	0x3fe041e9af5ba2be              # double 0.508046
	.quad	0x3fec5bfceb78897f              # double 0.88622900000000004
	.quad	0x3fc1c209246bf013              # double 0.138734
	.quad	0x3fe0d8a32f44912a              # double 0.52644500000000005
	.quad	0x3fc057e23f24d8fd              # double 0.12768199999999999
	.quad	0x3feafb95a294141f              # double 0.84321100000000004
	.quad	0x3fe030d306a2b170              # double 0.50595999999999997
	.quad	0x3fc35a426bb55ac0              # double 0.15119199999999999
	.quad	0x3fed57a13c254a3c              # double 0.91694699999999995
	.quad	0x3fec4b0c026cc1ca              # double 0.88416099999999997
	.quad	0x3fca5f394b7b2895              # double 0.20603099999999999
	.quad	0x3fdef8c21e1d2179              # double 0.483933
	.quad	0x3fd57e3d1cc100e7              # double 0.33583000000000002
	.quad	0x3f8b7c7820a30db7              # double 0.013421000000000001
	.quad	0x3fd7d3cbc48f10aa              # double 0.37230200000000002
	.quad	0x3fc9e52157689ca2              # double 0.20230500000000001
	.quad	0x3fc65269595feda6              # double 0.17438999999999999
	.quad	0x3fe13db7f1737543              # double 0.53878400000000004
	.quad	0x3fef3abead4f5904              # double 0.97592100000000003
	.quad	0x3fe650b73d188f43              # double 0.697353
	.quad	0x3fecea960b6f9fcb              # double 0.90363599999999999
	.quad	0x3fec61d4306e5cd5              # double 0.88694200000000001
	.quad	0x3febcdf8b1572581              # double 0.86889300000000003
	.quad	0x3fdd6b3354c12275              # double 0.45966800000000002
	.quad	0x3fd053ac4f7ec354              # double 0.25510699999999997
	.quad	0x3fd8b224aada33be              # double 0.38587300000000002
	.quad	0x3fd75b5b70691ea8              # double 0.36495100000000003
	.quad	0x3fb08bfc2224edf6              # double 0.064635999999999999
	.quad	0x3fe351bd61f5be5e              # double 0.60372800000000004
	.quad	0x3fb89acbc8c0ce92              # double 0.096112000000000002
	.quad	0x3fe1d634549b62c7              # double 0.55739799999999995
	.quad	0x3fed9a21ea359360              # double 0.92506500000000002
	.quad	0x3fe286df82b1f688              # double 0.57896400000000003
	.quad	0x3fe1c55c96030c24              # double 0.555342
	.quad	0x3fd482a5614df8b1              # double 0.32047399999999998
	.quad	0x3fec8a47ecfe9b7c              # double 0.89188
	.quad	0x3fe0be5753a3ec03              # double 0.52323500000000001
	.quad	0x3fdcfaeff5c6c11a              # double 0.452816
	.quad	0x3fe4e34549b62c77              # double 0.65274299999999996
	.quad	0x3fe6ab3cc4ac6cdb              # double 0.708403
	.quad	0x3fd7547e06961c37              # double 0.36453200000000002
	.quad	0x3fe0dbf26f1dc50d              # double 0.52684900000000001
	.quad	0x3fe18d3f1843c3a4              # double 0.54849199999999998
	.quad	0x3fe4c55c96030c24              # double 0.649092
	.quad	0x3fe161437c5692b4              # double 0.54312300000000002
	.quad	0x3fdd4dec1c1d6cf8              # double 0.45788099999999998
	.quad	0x3fef7e02645e4e6a              # double 0.98413200000000001
	.quad	0x3fdd6ec9e236c15d              # double 0.45988699999999999
	.quad	0x3fea19695d91ab8f              # double 0.81560200000000005
	.quad	0x3fca05ccc89b0ee5              # double 0.20330200000000001
	.quad	0x3fe51b23dd54da4d              # double 0.65956300000000001
	.quad	0x3fed4ce8101f31f4              # double 0.91563799999999995
	.quad	0x3fe9d3d859c8c932              # double 0.80710999999999999
	.quad	0x3f75336deb95e5b0              # double 0.005176
	.quad	0x3fe35ed4a1ad6452              # double 0.60532600000000003
	.quad	0x3fb47e9d94d0dcfd              # double 0.080057000000000003
	.quad	0x3fe2eb3fe9fadafd              # double 0.59121699999999999
	.quad	0x3fe877e5eaab0425              # double 0.76463599999999998
	.quad	0x3fe79435ac8a3726              # double 0.736842
	.quad	0x3fe3f71001d5c316              # double 0.62390900000000005
	.quad	0x3fe92355043e5322              # double 0.78556300000000001
	.quad	0x3feb83a96d4c33b5              # double 0.85982199999999998
	.quad	0x3fcbdccea28fe261              # double 0.21767600000000001
	.quad	0x3fb01eabbcb1cc96              # double 0.062967999999999996
	.quad	0x3fe3805814940bbb              # double 0.60941699999999999
	.quad	0x3fec01ecd4aa10e0              # double 0.87523499999999998
	.quad	0x3fd7f9f87f023e9f              # double 0.37463200000000002
	.quad	0x3fe45fc7e6b3fea0              # double 0.63669200000000004
	.quad	0x3fec0a2ec28b2a6b              # double 0.87624299999999999
	.quad	0x3fd0538ac18f81e9              # double 0.25509900000000002
	.quad	0x3f8995ee136e71ce              # double 0.012493000000000001
	.quad	0x3fb376c4827b6fe3              # double 0.076031000000000001
	.quad	0x3fdeb87379746024              # double 0.48000799999999999
	.quad	0x3fe02c881e4712e4              # double 0.505436
	.quad	0x3fe7a6e5471715c6              # double 0.73912299999999997
	.quad	0x3fd6d2d87f88765c              # double 0.35661900000000002
	.quad	0x3fd817268d32830a              # double 0.376413
	.quad	0x3feff16d2aa5c5f8              # double 0.99822100000000002
	.quad	0x3fc0e5604189374c              # double 0.13200000000000001
	.quad	0x3fe725a469d7342f              # double 0.72334500000000002
	.quad	0x3fe9dd0fa58f7122              # double 0.80823500000000004
	.quad	0x3fe2d4eb13dfb0d5              # double 0.58849099999999999
	.quad	0x3fdaa3cea6c1a049              # double 0.41624800000000001
	.quad	0x3feea89331a08bfc              # double 0.95807799999999998
	.quad	0x3fe188a8b08dd1e5              # double 0.54793199999999997
	.quad	0x3fdf6f049a9973da              # double 0.491151
	.quad	0x3fe989f1f14983d8              # double 0.79808900000000005
	.quad	0x3fe58383ad9f0a1c              # double 0.67230400000000001
	.quad	0x3fecf3b213e3e293              # double 0.904748
	.quad	0x3fbaabde3fbbd7b2              # double 0.104185
	.quad	0x3fe232d6ece13f4b              # double 0.56870600000000004
	.quad	0x3fd5d89ce4a7b4e5              # double 0.34134599999999998
	.quad	0x3febacbc8c0ce91d              # double 0.86483600000000005
	.quad	0x3fe1814d72799a20              # double 0.54703400000000002
	.quad	0x3fe26fd86a8fc0d3              # double 0.57615300000000003
	.quad	0x3fcde95b78cc9a78              # double 0.233684
	.quad	0x3fe4c7abfb9bed31              # double 0.64937400000000001
	.quad	0x3fe213e81450efdd              # double 0.56493000000000004
	.quad	0x3fecd441355475a3              # double 0.90090999999999999
	.quad	0x3fd7a4f8726d04e6              # double 0.36944399999999999
	.quad	0x3febc09a24031487              # double 0.86726099999999995
	.quad	0x3fd8a8bd230b9dc3              # double 0.385299
	.quad	0x3fd08b4bf8fcd680              # double 0.25850200000000001
	.quad	0x3feb667f90d9d777              # double 0.85626199999999997
	.quad	0x3fec93165d3996fb              # double 0.89295500000000005
	.quad	0x3fe8505d0fa58f71              # double 0.75980999999999999
	.quad	0x3fe517635e74299e              # double 0.65910500000000005
	.quad	0x3fec054ac29bf163              # double 0.87564600000000004
	.quad	0x3fd062b27cbf6e3f              # double 0.25602399999999997
	.quad	0x3fdc8448cf7caa76              # double 0.44557400000000003
	.quad	0x3f586db50f40e5a3              # double 0.0014909999999999999
	.quad	0x3fe5cadbc664d3bf              # double 0.68101299999999998
	.quad	0x3fe24968943e1006              # double 0.571461
	.quad	0x3fbbf7be121ee675              # double 0.109249
	.quad	0x3fe685cee17a02fb              # double 0.70383399999999996
	.quad	0x3fd78900c521dda0              # double 0.36773699999999998
	.quad	0x3fee89c7ffde7211              # double 0.95431900000000003
	.quad	0x3fe43b384fd2a62b              # double 0.63222900000000004
	.quad	0x3fc824d4cb9ecf64              # double 0.18862400000000001
	.quad	0x3feb89c7ffde7211              # double 0.86056900000000003
	.quad	0x3fdd2f33ca31e7da              # double 0.45600600000000002
	.quad	0x3fdf59ab6d00b45b              # double 0.48984800000000001
	.quad	0x3fdbf7f498c3b0c4              # double 0.43700899999999998
	.quad	0x3fe252ef911cf356              # double 0.57262400000000002
	.quad	0x3fed142f61ed5ae2              # double 0.90871400000000002
	.quad	0x3fcaf954eb13dfb1              # double 0.210734
	.quad	0x3fe851c9f72f76e6              # double 0.75998399999999999
	.quad	0x3fe00a0f4d7add16              # double 0.50122800000000001
	.quad	0x3fc6455eaee2003b              # double 0.17399200000000001
	.quad	0x3fe9cd9c6b053198              # double 0.80634899999999998
	.quad	0x3fb2960b6f9fcb0c              # double 0.072602
	.quad	0x3fb9f40a2877ee4e              # double 0.10138
	.quad	0x3fef8724b76f6d76              # double 0.98524699999999998
	.quad	0x3fe3698fe69270b0              # double 0.60663599999999995
	.quad	0x3fe8a4b5568e820e              # double 0.77010599999999996
	.quad	0x3fef26b50b0f27bb              # double 0.97347499999999997
	.quad	0x3fc2317acc4ef88c              # double 0.14213500000000001
	.quad	0x3fef7b24638c9753              # double 0.98378200000000004
	.quad	0x3fbca01abd1aa822              # double 0.111818
	.quad	0x3fe0c31bde82d7b6              # double 0.52381699999999998
	.quad	0x3fe2469b5a63f9a5              # double 0.57111900000000004
	.quad	0x3fdaadf2ecf20642              # double 0.41686699999999999
	.quad	0x3fd6ef416bdb1a6d              # double 0.35835299999999998
	.quad	0x3fd376ff3ade2260              # double 0.30413800000000002
	.quad	0x3fe1fde5082cf52c              # double 0.56224300000000005
	.quad	0x3fecbf93ff25e56d              # double 0.89838600000000002
	.quad	0x3f94dca8e2e2b8c7              # double 0.020372999999999999
	.quad	0x3fb8c575c0767d35              # double 0.096763000000000002
	.quad	0x3fe4c883fd502257              # double 0.64947699999999997
	.quad	0x3fdc77c88e79aae7              # double 0.44481100000000001
	.quad	0x3feda1d53cddd6e0              # double 0.92600499999999996
	.quad	0x3fe3e06748e47560              # double 0.621143
	.quad	0x3faa4e9c4545846f              # double 0.051381000000000003
	.quad	0x3fe0cfebd09e12a5              # double 0.52538099999999999
	.quad	0x3fee3ab430f49492              # double 0.94466600000000001
	.quad	0x3fed18201cd5f99c              # double 0.90919499999999997
	.quad	0x3fef19157abb8801              # double 0.971812
	.quad	0x3fed6043a2163fdd              # double 0.91800099999999996
	.quad	0x3fe33d1aa821f299              # double 0.60120899999999999
	.quad	0x3fbabaade657b84e              # double 0.104411
	.quad	0x3fe9474751ce28ed              # double 0.78995099999999996
	.quad	0x3fd1ec52a411c2a0              # double 0.28004899999999999
	.quad	0x3fec70c996b7670a              # double 0.888768
	.quad	0x3fd03eff1950331e              # double 0.25384499999999999
	.quad	0x3fe74df04ddb5526              # double 0.72826400000000002
	.quad	0x3fd6fcd67fd3f5b6              # double 0.359182
	.quad	0x3f75e17e34b94531              # double 0.0053420000000000004
	.quad	0x3fcda54c55432874              # double 0.23160700000000001
	.quad	0x3fe3fd028a1dfb94              # double 0.62463500000000005
	.quad	0x3fe3a7a63736cdf2              # double 0.61421499999999996
	.quad	0x3fd6a6efc371da38              # double 0.353939
	.quad	0x3fe6f666234a87e4              # double 0.71757800000000005
	.quad	0x3fee1680e0653006              # double 0.94024700000000005
	.quad	0x3fe0d245b291b824              # double 0.52566800000000002
	.quad	0x3fe1d907d912556d              # double 0.55774299999999999
	.quad	0x3fea33311a543f1c              # double 0.81874899999999994
	.quad	0x3fecf359ff4fd6d8              # double 0.90470600000000001
	.quad	0x3fedab3461309c80              # double 0.927149
	.quad	0x3fe313836a832b99              # double 0.596132
	.quad	0x3fe5bae685db76b4              # double 0.67906500000000003
	.quad	0x3feb2875d56f32be              # double 0.84868900000000003
	.quad	0x3fd3245b291b823d              # double 0.29909400000000003
	.quad	0x3fbb496aad1d041d              # double 0.106589
	.quad	0x3fbdf7a4e7ab7564              # double 0.11706
	.quad	0x3fd580baa582dbe8              # double 0.335982
	.quad	0x3fcfc4651f3e89a9              # double 0.24818100000000001
	.quad	0x3fef6c460ed80a18              # double 0.98196700000000003
	.quad	0x3fe90288051c9f73              # double 0.781559
	.quad	0x3fe16d612c6ac216              # double 0.54460200000000003
	.quad	0x3feea75ab7dc7ac0              # double 0.95792900000000003
	.quad	0x3fce994185058dde              # double 0.23905199999999999
	.quad	0x3fd08116ebd4cfd1              # double 0.25787900000000002
	.quad	0x3fd3c3d68405b39e              # double 0.30882799999999999
	.quad	0x3fe87beb9e492bc3              # double 0.765127
	.quad	0x3fea448adeebb342              # double 0.82086700000000001
	.quad	0x3fcd9524bfd2e947              # double 0.23111400000000001
	.quad	0x3f4e03f705857aff              # double 9.1600000000000003E-4
	.quad	0x3fe1ef694467381d              # double 0.56047499999999995
	.quad	0x3fcc6a2b1704ff43              # double 0.22198999999999999
	.quad	0x3fdb96bfca85cab0              # double 0.43107600000000001
	.quad	0x3fc0b00ffda4052d              # double 0.13037299999999999
	.quad	0x3fd747fdc5931ca8              # double 0.36376900000000001
	.quad	0x3fc9e4cd74927914              # double 0.202295
	.quad	0x3fdc562e09fe8683              # double 0.44275999999999999
	.quad	0x3fe1af0bf1a5ca2a              # double 0.55261800000000005
	.quad	0x3fe89f2990f301eb              # double 0.76942900000000003
	.quad	0x3feed9a52263d817              # double 0.96406800000000003
	.quad	0x3fba1af7d30ad46f              # double 0.101974
	.quad	0x3fe3a314013ec461              # double 0.61365700000000001
	.quad	0x3fe104c271fff79d              # double 0.53183100000000005
	.quad	0x3fd3667b5f1bef4a              # double 0.30313000000000001
	.quad	0x3fee61d6494d50ec              # double 0.94944300000000003
	.quad	0x3fca0b34e7685986              # double 0.20346700000000001
	.quad	0x3fa961e4f765fd8b              # double 0.049575000000000001
	.quad	0x3fc6baf965b20b80              # double 0.17758099999999999
	.quad	0x3fef586ca89fc6da              # double 0.97954399999999997
	.quad	0x3fe10eb24a6a875d              # double 0.53304399999999996
	.quad	0x3fe4b45f17bd8be7              # double 0.64701799999999998
	.quad	0x3fea8897e996312f              # double 0.82917399999999997
	.quad	0x3fb22a0a958537e3              # double 0.070954000000000003
	.quad	0x3fd4e175d13d74d6              # double 0.32626100000000002
	.quad	0x3fe35e4c51116a8c              # double 0.60526100000000005
	.quad	0x3febf09310129cbb              # double 0.87311700000000003
	.quad	0x3fe968d32830a0b2              # double 0.79404600000000003
	.quad	0x3feb2df71eafee70              # double 0.84936100000000003
	.quad	0x3fd3f88b9778572a              # double 0.31204500000000002
	.quad	0x3f8542a23bff8a8f              # double 0.010381
	.quad	0x3fe1002e2328f9f4              # double 0.53127199999999997
	.quad	0x3fe8ad6ece13f4aa              # double 0.77117100000000005
	.quad	0x3fea152f3c2dadb8              # double 0.81508599999999998
	.quad	0x3fd3ab6d00b45ae6              # double 0.307338
	.quad	0x3fb5fc7e6b3fe9fb              # double 0.085884000000000002
	.quad	0x3fb4e4c942d490e6              # double 0.081615999999999994
	.quad	0x3fd3cb039ef0f16f              # double 0.30926599999999999
	.quad	0x3fd19f83be6601bd              # double 0.27536100000000002
	.quad	0x3fe5174c4cdfaca3              # double 0.65909399999999996
	.quad	0x3fdaea465a57646b              # double 0.42054900000000001
	.quad	0x3fe2b38d60a63305              # double 0.58441799999999999
	.quad	0x3fbe5ffa3b9ae0c1              # double 0.11865199999999999
	.quad	0x3febeffc115df655              # double 0.87304499999999996
	.quad	0x3fea07af20ea5b53              # double 0.81343799999999999
	.quad	0x3fd331db445ed4a2              # double 0.29991800000000002
	.quad	0x3fe2797460242d06              # double 0.57732600000000001
	.quad	0x3fe134a66559f6ec              # double 0.53767699999999996
	.quad	0x3fcb752977c88e7a              # double 0.21451300000000001
	.quad	0x3f71d798d8a979e1              # double 0.0043559999999999996
	.quad	0x3fc9572580c308ff              # double 0.19797200000000001
	.quad	0x3fd8eeae9ee45c36              # double 0.38956800000000003
	.quad	0x3fe14855da272863              # double 0.54008
	.quad	0x3fd0d1a21ea35936              # double 0.262795
	.quad	0x3fe486fef7c243dd              # double 0.64147900000000002
	.quad	0x3fc127ed84d338f8              # double 0.13403100000000001
	.quad	0x3fbae32e3821af7d              # double 0.105029
	.quad	0x3fd425d8d79d0a67              # double 0.31480999999999998
	.quad	0x3fdfa2d2fe3f35a0              # double 0.494313
	.quad	0x3fceaff6d330941d              # double 0.23974500000000001
	.quad	0x3fd7b01c92ddbdb6              # double 0.37012400000000001
	.quad	0x3fed502ababead4f              # double 0.91603599999999996
	.quad	0x3fe5b9e279dd3bb0              # double 0.67894100000000002
	.quad	0x3fc5107faa044ae8              # double 0.16456599999999999
	.quad	0x3fc9dd095af294dd              # double 0.20205799999999999
	.quad	0x3fcf04039abf3387              # double 0.24231
	.quad	0x3fe4c964628027d9              # double 0.64958400000000005
	.quad	0x3fcc77f6b1a2a4db              # double 0.222411
	.quad	0x3fc38e9707182236              # double 0.15278900000000001
	.quad	0x3fe157dbf487fcb9              # double 0.54197499999999998
	.quad	0x3fabe3193f6c269a              # double 0.054467000000000002
	.quad	0x3fe15c37a3db3bfb              # double 0.54250699999999996
	.quad	0x3fc22e9899bf5947              # double 0.14204700000000001
	.quad	0x3fcf8ec95bff0457              # double 0.24654499999999999
	.quad	0x3fe9b484d76ab580              # double 0.80328599999999994
	.quad	0x3fe08a02b841248d              # double 0.51684699999999995
	.quad	0x3fe5bac929aa1d75              # double 0.67905099999999996
	.quad	0x3fed8053e2d6238e              # double 0.92191500000000004
	.quad	0x3fe2204f2ae07e5a              # double 0.56644399999999995
	.quad	0x3fe8517c5ef62f9d              # double 0.75994700000000004
	.quad	0x3fe21f44d4456712              # double 0.56631699999999996
	.quad	0x3fc660c38f366949              # double 0.17482800000000001
	.quad	0x3fe3180f55de58e6              # double 0.59668699999999997
	.quad	0x3fe1c3eb7cbb3c82              # double 0.55516600000000005
	.quad	0x3fe413a71151611c              # double 0.62739900000000004
	.quad	0x3fd225529fe004b8              # double 0.283528
	.quad	0x3fc476c050bd87b5              # double 0.15987399999999999
	.quad	0x3fd2e7ddca4b124d              # double 0.295402
	.quad	0x3fe28fe047d3d428              # double 0.580063
	.quad	0x3fd79be4cd749279              # double 0.36889
	.quad	0x3fb4d2806af46aa1              # double 0.081337000000000007
	.quad	0x3fe02f944241c3f0              # double 0.50580800000000004
	.quad	0x3fe5468448cf7caa              # double 0.66485799999999995
	.quad	0x3fe66c9e236c15d3              # double 0.70075900000000002
	.quad	0x3feb44eb56fb8f58              # double 0.852163
	.quad	0x3fb7c31df761cbcd              # double 0.092821000000000001
	.quad	0x3fe0107746887a8d              # double 0.50200999999999996
	.quad	0x3fd2e920c069e7fb              # double 0.29547899999999999
	.quad	0x3fe781fd9ba1b196              # double 0.73461799999999999
	.quad	0x3fe11a3f4666ec9e              # double 0.53445399999999998
	.quad	0x3fd28655193708ab              # double 0.28944900000000001
	.quad	0x3fe02e557de0d66f              # double 0.50565599999999999
	.quad	0x3fd3bb9496249a13              # double 0.30832399999999999
	.quad	0x3fb2a9717df19d67              # double 0.072898000000000004
	.quad	0x3fc6357a355043e5              # double 0.17350699999999999
	.quad	0x3fbac53b0813cab8              # double 0.104572
	.quad	0x3fcd0afe60c38f36              # double 0.22689799999999999
	.quad	0x3fc05efe93187619              # double 0.12789900000000001
	.quad	0x3f601083dbc23316              # double 0.0019610000000000001
	.quad	0x3fec869c66d373b0              # double 0.891432
	.quad	0x3fdaaa821f2990f3              # double 0.416657
	.quad	0x3fd6a5ce5b4245f6              # double 0.35387000000000002
	.quad	0x3fef6caeea63b689              # double 0.98201700000000002
	.quad	0x3fe82f46aa087ca6              # double 0.75577099999999997
	.quad	0x3fec48366516db0e              # double 0.88381500000000002
	.quad	0x3fe0c0010c6f7a0b              # double 0.52343799999999996
	.quad	0x3fc49c6f36ef8056              # double 0.161024
	.quad	0x3fb038c111ada76e              # double 0.063366000000000006
	.quad	0x3fe0681a9b8cb8e1              # double 0.51270800000000005
	.quad	0x3fbebef06b37867f              # double 0.120101
	.quad	0x3fe5d28ae74f2f12              # double 0.68195099999999997
	.quad	0x3fd40724b76f6d76              # double 0.31293599999999999
	.quad	0x3fb72452c59fb1e2              # double 0.090398000000000006
	.quad	0x3fd2398201cd5f9a              # double 0.28476000000000001
	.quad	0x3fee8aaa7ded6ba9              # double 0.95442700000000003
	.quad	0x3fed4b7f5a5332ad              # double 0.915466
	.quad	0x3fe7d0fe8ab4fa48              # double 0.74426199999999998
	.quad	0x3fe6d5000c9539b9              # double 0.71350100000000005
	.quad	0x3fe861e2de870974              # double 0.76194899999999998
	.quad	0x3fd66ff3ade225fa              # double 0.35058299999999998
	.quad	0x3fee331c219eb639              # double 0.94373899999999999
	.quad	0x3fe80327674d1633              # double 0.75038499999999997
	.quad	0x3fe79285a921ccd9              # double 0.73663599999999996
	.quad	0x3fe1e9f8c21e1d21              # double 0.55981099999999995
	.quad	0x3fe44ed2cbea4ebe              # double 0.63462200000000002
	.quad	0x3f90aaa7ded6ba8c              # double 0.016275999999999999
	.quad	0x3fe1e950fc71d606              # double 0.55973099999999998
	.quad	0x3fea7521144cbe1f              # double 0.82679800000000003
	.quad	0x3feedbfceb78897f              # double 0.96435400000000004
	.quad	0x3fd252ef911cf356              # double 0.28631200000000001
	.quad	0x3fee3c5bd0e12e84              # double 0.94486800000000004
	.quad	0x3fd832c1f42bb667              # double 0.37809799999999999
	.quad	0x3f93a7daa4fca42b              # double 0.019195
	.quad	0x3fed6c4827b6fe2e              # double 0.91946799999999995
	.quad	0x3fb032b990afe60c              # double 0.063273999999999997
	.quad	0x3fcb5ac03ff69015              # double 0.21370700000000001
	.quad	0x3fe243e3193f6c27              # double 0.57078700000000004
	.quad	0x3fef6d373affb04f              # double 0.98208200000000001
	.quad	0x3fd0cc2938de6ddf              # double 0.262461
	.quad	0x3f91dd5d3dc8b86b              # double 0.017446
	.quad	0x3fe7d099e0e73605              # double 0.74421400000000004
	.quad	0x3fd5780baa582dbe              # double 0.33545199999999997
	.quad	0x3fe96132b55ef1fe              # double 0.79311500000000001
	.quad	0x3fb526e978d4fdf4              # double 0.082625000000000004
	.quad	0x3fef3df2a9d627bf              # double 0.97631199999999995
	.quad	0x3febd834091c0874              # double 0.87014199999999997
	.quad	0x3fdffb82c2bd7f52              # double 0.499726
	.quad	0x3fe954434e3369ba              # double 0.79153600000000002
	.quad	0x3fd5b4784230fcf8              # double 0.33914
	.quad	0x3feec63ae2541d8f              # double 0.96169800000000005
	.quad	0x3fd0d00f776c4828              # double 0.26269900000000002
	.quad	0x3f94c059210385c6              # double 0.020264999999999998
	.quad	0x3feb778bbd380453              # double 0.85834299999999997
	.quad	0x3fe8f5275ee99a63              # double 0.77992600000000001
	.quad	0x3fd1dd54da4ce810              # double 0.27913399999999999
	.quad	0x3fd2641700cd8559              # double 0.28735899999999998
	.quad	0x3fde2eb5f5f0b285              # double 0.47160099999999999
	.quad	0x3fe48919ef954eb1              # double 0.64173599999999997
	.quad	0x3fbb79fa97e132b5              # double 0.10732999999999999
	.quad	0x3fda35ce18266773              # double 0.40953400000000001
	.quad	0x3fe5148dc11e42e1              # double 0.65875899999999998
	.quad	0x3fdb288ce703afb8              # double 0.42435
	.quad	0x3fd196d0917d6b66              # double 0.27483000000000002
	.quad	0x3fd531c219eb6391              # double 0.33116200000000001
	.quad	0x3fe9362c77574f72              # double 0.78786299999999998
	.quad	0x3fd356c0d6f544bb              # double 0.30216999999999999
	.quad	0x3fd0506573215fcc              # double 0.25490699999999999
	.quad	0x3fc16fb09203a323              # double 0.13622100000000001
	.quad	0x3fe3065f9591cd1c              # double 0.59452799999999995
	.quad	0x3fe949a77e5eaab0              # double 0.79024099999999997
	.quad	0x3fc4e5b4245f5ad9              # double 0.16325999999999999
	.quad	0x3fe0b009b30728e9              # double 0.52148899999999998
	.quad	0x3fdd6ce789e774ef              # double 0.45977200000000001
	.quad	0x3fe538e6d15ad107              # double 0.66319600000000001
	.quad	0x3fd12413db7f1737              # double 0.26782699999999998
	.quad	0x3feff77292c49342              # double 0.99895599999999996
	.quad	0x3fe9048e043a2164              # double 0.781806
	.quad	0x3fac6f7a0b5ed8d3              # double 0.055537999999999997
	.quad	0x3fb1aaf78feef5ed              # double 0.069015000000000007
	.quad	0x3fe6b6f3b213e3e3              # double 0.70983300000000005
	.quad	0x3fe79309c7ffde72              # double 0.73669899999999999
	.quad	0x3fe5801d5c31593e              # double 0.67188899999999996
	.quad	0x3fd4dd095af294dd              # double 0.32599099999999998
	.quad	0x3fdb0ea18372e6a7              # double 0.42276799999999998
	.quad	0x3fe7b9eadd590c0b              # double 0.74144500000000002
	.quad	0x3feaae5ffa3b9ae1              # double 0.83378600000000003
	.quad	0x3fdc8fb43d89ce4a              # double 0.44627099999999997
	.quad	0x3fd40bed740c4157              # double 0.31322800000000001
	.quad	0x3faecd8dbcec84f9              # double 0.060162
	.quad	0x3faa0be5109070fc              # double 0.050872000000000001
	.quad	0x3fe95b5fa22706d5              # double 0.792404
	.quad	0x3fdf8efbb0e5e679              # double 0.49310199999999998
	.quad	0x3fd9d72367e414e8              # double 0.403756
	.quad	0x3fe9268b19a415f4              # double 0.78595499999999995
	.quad	0x3fef5d18090b417d              # double 0.98011400000000004
	.quad	0x3fb119ac79702e66              # double 0.066797999999999996
	.quad	0x3fe4e21101b00368              # double 0.65259599999999995
	.quad	0x3fbdc28f5c28f5c3              # double 0.11625000000000001
	.quad	0x3fe1697aeddce7cd              # double 0.544126
	.quad	0x3febe76ea4228998              # double 0.87200100000000003
	.quad	0x3fe5b6049ecb31c2              # double 0.67846899999999999
	.quad	0x3fc722291fb3fa6e              # double 0.18073
	.quad	0x3fafe1fc08fa7a85              # double 0.062271
	.quad	0x3fe22363b256ffc1              # double 0.56681999999999999
	.quad	0x3fa310342aa9f7b6              # double 0.037233000000000002
	.quad	0x3fe53ea91d9b1b7a              # double 0.66389900000000002
	.quad	0x3fcfe5c91d14e3bd              # double 0.2492
	.quad	0x3fe276598e10cf5b              # double 0.57694699999999999
	.quad	0x3fb1a93293d102bc              # double 0.068987999999999994
	.quad	0x3fb870867ad8e432              # double 0.095466999999999996
	.quad	0x3fefd640e9d51b50              # double 0.99490400000000001
	.quad	0x3fe43c0e38a7e73a              # double 0.63233099999999998
	.quad	0x3fc7bf83382e44b7              # double 0.185532
	.quad	0x3fd4386d2ed783e0              # double 0.315944
	.quad	0x3fd66a50d6b228dd              # double 0.35023900000000002
	.quad	0x3fe615e7c8d19589              # double 0.69017399999999995
	.quad	0x3fd3e44b6e935b92              # double 0.310809
	.quad	0x3fee35371971c10d              # double 0.94399599999999995
	.quad	0x3fe7989df1172ef1              # double 0.73738000000000004
	.quad	0x3fe65d18090b417d              # double 0.69886400000000004
	.quad	0x3feffe47991bc558              # double 0.99978999999999995
	.quad	0x3fdbadab9f559b3d              # double 0.432475
	.quad	0x3fddddd6e04c0592              # double 0.466665
	.quad	0x3fc4f20642396074              # double 0.163636
	.quad	0x3fc5782d38476f2a              # double 0.16772999999999999
	.quad	0x3fd3b25f633ce63a              # double 0.30776199999999998
	.quad	0x3fb506dd69d30271              # double 0.082136000000000001
	.quad	0x3fe047cfa26a22b4              # double 0.50876600000000005
	.quad	0x3fef254c55432874              # double 0.97330300000000002
	.quad	0x3fe5b69b9d7fd827              # double 0.67854099999999995
	.quad	0x3fcc670e2c12ad82              # double 0.22189500000000001
	.quad	0x3fe7ad7518b0d0ee              # double 0.73992400000000003
	.quad	0x3fe43532e7b3d8e0              # double 0.631494
	.quad	0x3fd89ad85dfa871a              # double 0.38445099999999999
	.quad	0x3f9954a7f8012dfd              # double 0.024736999999999999
	.quad	0x3fea351159c49774              # double 0.81897799999999998
	.quad	0x3fe4507a6bd6e8b0              # double 0.63482400000000005
	.quad	0x3fbbd1aa821f2991              # double 0.108668
	.quad	0x3fd6ed84d338f798              # double 0.35824699999999998
	.quad	0x3fc61511dffc547a              # double 0.172518
	.quad	0x3fc23ec02f2f9874              # double 0.14254
	.quad	0x3fd846cfc829cfdd              # double 0.37932199999999999
	.quad	0x3fea216616b54e2b              # double 0.816577
	.quad	0x3fe70ba83f4eca68              # double 0.72017299999999995
	.quad	0x3fe0599cbee807bc              # double 0.51093900000000003
	.quad	0x3fe6fee0b0af5fd4              # double 0.71861299999999995
	.quad	0x3fd3968943e10060              # double 0.30606299999999997
	.quad	0x3fcc35efa615a8df              # double 0.22039600000000001
	.quad	0x3fe80b0d0edc3bd6              # double 0.75134900000000004
	.quad	0x3fd5fb2aae297397              # double 0.34345500000000001
	.quad	0x3f9acd9e83e425af              # double 0.026175
	.quad	0x3fdfa9c12f09d8c7              # double 0.49473600000000001
	.quad	0x3fef26eb91b3f20a              # double 0.97350099999999995
	.quad	0x3fed9374bc6a7efa              # double 0.92425000000000002
	.quad	0x3fdbafc47e49b1fb              # double 0.43260300000000002
	.quad	0x3fde4bf8fcd67fd4              # double 0.473387
	.quad	0x3fd7f0e4da09cc32              # double 0.37407800000000002
	.quad	0x3f6e12a51e321a2e              # double 0.0036709999999999998
	.quad	0x3fee44007570c565              # double 0.945801
	.quad	0x3fe2c99d0203e63f              # double 0.58711100000000005
	.quad	0x3fe4de529bae46d0              # double 0.65213900000000002
	.quad	0x3fd194ff0025bfad              # double 0.27471899999999999
	.quad	0x3fcfdbfceb78897f              # double 0.24890100000000001
	.quad	0x3fa3b1290257c915              # double 0.038461000000000002
	.quad	0x3fc54727dcbddb98              # double 0.16623399999999999
	.quad	0x3fec9d0635a426bb              # double 0.89416799999999996
	.quad	0x3fee29f59ccfaeff              # double 0.94262199999999996
	.quad	0x3fe68296b3354c12              # double 0.70344099999999998
	.quad	0x3fe86cb31c219eb6              # double 0.76326899999999998
	.quad	0x3fed0053e2d6238e              # double 0.90629000000000004
	.quad	0x3feeac2df0d41312              # double 0.95851799999999998
	.quad	0x3fe704db9c7368ad              # double 0.71934299999999995
	.quad	0x3fdaaec4a4095f24              # double 0.41691699999999998
	.quad	0x3fb27008a697aede              # double 0.072022000000000003
	.quad	0x3faad3c792d1287c              # double 0.052396999999999999
	.quad	0x3fd8e86833c6002a              # double 0.389185
	.quad	0x3fa91a75cd0bb6ed              # double 0.049029999999999997
	.quad	0x3fe894a6eb91b3f2              # double 0.768146
	.quad	0x3fece41b328b6d87              # double 0.90284500000000001
	.quad	0x3febdc4eb56fb8f5              # double 0.87064299999999994
	.quad	0x3fd83de1e2de8709              # double 0.37877699999999997
	.quad	0x3fddb0d0edc3bd5a              # double 0.46391700000000002
	.quad	0x3fe9e516db0dd830              # double 0.80921500000000002
	.quad	0x3fe2892ab68cef67              # double 0.57924399999999998
	.quad	0x3fd6f71eafee6fb5              # double 0.35883300000000001
	.quad	0x3fd45692b3cc4ac7              # double 0.31778400000000001
	.quad	0x3fdaf7d30ad46f58              # double 0.42137599999999997
	.quad	0x3fedfe73a365cb36              # double 0.93731100000000001
	.quad	0x3fce1eeed8904f6e              # double 0.235319
	.quad	0x3fddd18090b417ca              # double 0.46591199999999999
	.quad	0x3fee8e4da09cc31a              # double 0.95487100000000003
	.quad	0x3fb511dffc5479d5              # double 0.082304000000000002
	.quad	0x3fd677d955714b9d              # double 0.35106500000000002
	.quad	0x3fe4396af038e2a0              # double 0.63200900000000004
	.quad	0x3fe9102363b25700              # double 0.78322000000000003
	.quad	0x3fde40e9d51b4fe8              # double 0.47271200000000002
	.quad	0x3fef6a337a80cf9e              # double 0.98171399999999998
	.quad	0x3fd7e8d5410f94c8              # double 0.37358599999999997
	.quad	0x3fe7f2da122fad6d              # double 0.74839500000000003
	.quad	0x3fb70329802c0a4a              # double 0.089891999999999999
	.quad	0x3fdf5785f8d2e515              # double 0.48971700000000001
	.quad	0x3fe86f3b213e3e29              # double 0.76357799999999998
	.quad	0x3fee66106ab14ec2              # double 0.949959
	.quad	0x3fea681cb46bacf7              # double 0.82520899999999997
	.quad	0x3fd6dc55000c953a              # double 0.35719800000000002
	.quad	0x3fcd375c8d9f9054              # double 0.22825200000000001
	.quad	0x3fdc08bb906466b2              # double 0.43803300000000001
	.quad	0x3fe54bad7d7c2ca1              # double 0.66548799999999997
	.quad	0x3fe33be22e5de15d              # double 0.60106000000000004
	.quad	0x3fded4a5df2239e7              # double 0.48172900000000002
	.quad	0x3fea62bf11f926c8              # double 0.82455400000000001
	.quad	0x3feb1650a45d41fa              # double 0.84647399999999995
	.quad	0x3feef5d56f32bdc2              # double 0.96750899999999995
	.quad	0x3fe2cb4aec8d5c74              # double 0.58731599999999995
	.quad	0x3fe4fd199bb2788e              # double 0.65589600000000003
	.quad	0x3fcbd3804534bd77              # double 0.217392
	.quad	0x3fe25b8bac710cb3              # double 0.57367500000000005
	.quad	0x3fe1b4e7685985ad              # double 0.55333299999999996
	.quad	0x3fda15f88fc9363f              # double 0.40759099999999998
	.quad	0x3fe06e3715400325              # double 0.51345399999999997
	.quad	0x3fc65204af922963              # double 0.17437800000000001
	.quad	0x3fea798fa376922e              # double 0.82733900000000005
	.quad	0x3fe8b47a5b0ff10f              # double 0.77203100000000002
	.quad	0x3fdd9ff92f2b66b6              # double 0.46288899999999999
	.quad	0x3fca9ec2ce464990              # double 0.20796999999999999
	.quad	0x3f8b40b34e768598              # double 0.013306999999999999
	.quad	0x3fef9f3c70c996b7              # double 0.98818799999999995
	.quad	0x3fda0ad8a116659d              # double 0.406912
	.quad	0x3fe16ddaceee0f3d              # double 0.54466000000000003
	.quad	0x3fa3d017dae81883              # double 0.038697000000000002
	.quad	0x3fc7e6f71a7e3088              # double 0.18673600000000001
	.quad	0x3fe3656eefa1e3eb              # double 0.606132
	.quad	0x3fe89dd7ecbb7f9d              # double 0.76926799999999995
	.quad	0x3fdb77b395c42203              # double 0.42918099999999998
	.quad	0x3fe22378ab0c88a4              # double 0.56682999999999995
	.quad	0x3feea0902de00d1b              # double 0.95709999999999995
	.quad	0x3fe6694898f605ab              # double 0.70035199999999997
	.quad	0x3fe6c6412cf0f9d3              # double 0.71170100000000003
	.quad	0x3fb5cbbc2b94d940              # double 0.085139999999999993
	.quad	0x3fea85f8d2e514c2              # double 0.82885399999999998
	.quad	0x3feef5c6c11a1123              # double 0.96750199999999997
	.quad	0x3fe8c0010c6f7a0b              # double 0.77343799999999996
	.quad	0x3fd02e40852b4d8c              # double 0.25282300000000002
	.quad	0x3fe21bda5119ce07              # double 0.56589999999999996
	.quad	0x3fad65c2d2780779              # double 0.057417000000000003
	.quad	0x3fb92f2b66b6177f              # double 0.098376000000000005
	.quad	0x3fedb53f7ced9168              # double 0.92837499999999995
	.quad	0x3fe977f27fe4bcae              # double 0.79589200000000004
	.quad	0x3fd292a305532618              # double 0.29020000000000001
	.quad	0x3fdc6a400fba8827              # double 0.44398500000000002
	.quad	0x3fbd3005814940bc              # double 0.114014
	.quad	0x3fea3b341e14bdfd              # double 0.81972699999999998
	.quad	0x3fe9d495182a9931              # double 0.80720000000000003
	.quad	0x3fdc4b4d056c508b              # double 0.44209599999999999
	.quad	0x3fed300de4c51117              # double 0.91211600000000004
	.quad	0x3fdb54d1e96c3fc4              # double 0.42705199999999999
	.quad	0x3fd39528f190d174              # double 0.305979
	.quad	0x3fd29a6f826edaa9              # double 0.29067599999999999
	.quad	0x3f93cb81733226c4              # double 0.019331000000000001
	.quad	0x3fc2b6e935b91f71              # double 0.146207
	.quad	0x3fd217225b749add              # double 0.28266200000000002
	.quad	0x3fee0285ec3dab5c              # double 0.93780799999999997
	.quad	0x3fc6357a355043e5              # double 0.17350699999999999
	.quad	0x3fe5ef36ef8055fc              # double 0.68545100000000003
	.quad	0x3fe5f81e8a2ec28b              # double 0.68653799999999998
	.quad	0x3fe97542a23bff8b              # double 0.79556400000000005
	.quad	0x3fec23f24d8fd5cb              # double 0.87938799999999995
	.quad	0x3fd05d7cb2d905c0              # double 0.25570599999999999
	.quad	0x3feb3ce4217d284a              # double 0.85118300000000002
	.quad	0x3fe43dec5f394b7b              # double 0.63255899999999998
	.quad	0x3fe2f3a57eaa2a0b              # double 0.59224200000000005
	.quad	0x3fed6c093d966384              # double 0.91943799999999997
	.quad	0x3fe03bcb1cc96463              # double 0.50729900000000006
	.quad	0x3fd77e8ccdd93c47              # double 0.36709900000000001
	.quad	0x3fa93ec460ed80a1              # double 0.049306999999999997
	.quad	0x3fea3ffef39085f5              # double 0.82031200000000004
	.quad	0x3fd8f112fd32c626              # double 0.389714
	.quad	0x3fdbd6f976790321              # double 0.43499599999999999
	.quad	0x3fe92e90364388ec              # double 0.78693400000000002
	.quad	0x3fea58298cc14403              # double 0.82326200000000005
	.quad	0x3fdd5b749adc8fb8              # double 0.45870699999999998
	.quad	0x3fd7163779e9d0ea              # double 0.36073100000000002
	.quad	0x3fedd097c80841ee              # double 0.93171300000000001
	.quad	0x3fec792af9a8cdea              # double 0.889791
	.quad	0x3fcae9bbf0dc768e              # double 0.210258
	.quad	0x3fe539389b52007e              # double 0.66323500000000002
	.quad	0x3fecf6145953586d              # double 0.90503900000000004
	.quad	0x3fd5f861a60d4563              # double 0.34328500000000001
	.quad	0x3fe2c178705425f2              # double 0.586117
	.quad	0x3fd017df19d66adb              # double 0.25145699999999999
	.quad	0x3fe992f2b66b6178              # double 0.79918800000000001
	.quad	0x3fe82539756c93a7              # double 0.75454399999999999
	.quad	0x3f9f6a93f290abb4              # double 0.030679999999999999
	.quad	0x3fe2341e14bdfd26              # double 0.56886199999999998
	.quad	0x3fea212b5e529bae              # double 0.81654899999999997
	.quad	0x3fa7748a159817b9              # double 0.045810999999999998
	.quad	0x3fdd54d1e96c3fc4              # double 0.45830199999999999
	.quad	0x3fe80eeae9ee45c3              # double 0.75182099999999996
	.quad	0x3fe5db5fa22706d5              # double 0.683029
	.quad	0x3fd69780baa582dc              # double 0.35299700000000001
	.quad	0x3fee0c7e28240b78              # double 0.93902499999999999
	.quad	0x3fda7e02645e4e6a              # double 0.413941
	.quad	0x3fd0abc5154866a1              # double 0.26048399999999999
	.quad	0x3feac04a72ead927              # double 0.83597299999999997
	.quad	0x3fe0111ada76d97b              # double 0.50208799999999998
	.quad	0x3f99949e8815e397              # double 0.024981
	.quad	0x3fe7456f75d9a0f1              # double 0.72722600000000004
	.quad	0x3fdf0307f23cc8de              # double 0.48455999999999999
	.quad	0x3fd73d188f42fe82              # double 0.36310399999999998
	.quad	0x3fdaa0b5ed8d36b5              # double 0.41605900000000001
	.quad	0x3fd2e8576cce5f74              # double 0.295431
	.quad	0x3feb0116ebd4cfd1              # double 0.84388300000000005
	.quad	0x3fc71dcd7060bb2c              # double 0.18059700000000001
	.quad	0x3faafa2f05a708ee              # double 0.052690000000000001
	.quad	0x3fb99567dbb16c1e              # double 0.099935999999999997
	.quad	0x3fe62a1f8e3ac0c6              # double 0.69264199999999998
	.quad	0x3fce1f53825e13b2              # double 0.23533100000000001
	.quad	0x3fe0a0ab71327243              # double 0.51961299999999999
	.quad	0x3fe80aa64c2f837b              # double 0.75129999999999997
	.quad	0x3f7ac57e23f24d90              # double 0.0065360000000000001
	.quad	0x3fd0d81adea89763              # double 0.26318999999999998
	.quad	0x3fce3a860dcb9a9e              # double 0.23616100000000001
	.quad	0x3fe656cd6c2efd44              # double 0.69809600000000005
	.quad	0x3fdbfab53d640e9d              # double 0.43717699999999998
	.quad	0x3fd9002e2328f9f4              # double 0.39063599999999998
	.quad	0x3fd56b7aa25d8d7a              # double 0.33468500000000001
	.quad	0x3feba1a500d5e8d5              # double 0.86348199999999997
	.quad	0x3fe4b2b55ef1fddf              # double 0.64681500000000003
	.quad	0x3fd23764f11b60af              # double 0.28463100000000002
	.quad	0x3fd53397dd00f777              # double 0.33127400000000001
	.quad	0x3fe65b163baba7b9              # double 0.69861899999999999
	.quad	0x3fd46cd29131ec0b              # double 0.31914199999999998
	.quad	0x3fe29b1960fa15db              # double 0.58143299999999998
	.quad	0x3facfd08d4bad7d8              # double 0.056618000000000002
	.quad	0x3fd59f559b3d07c8              # double 0.33784999999999998
	.quad	0x3feee2ac322291fb              # double 0.96516999999999997
	.quad	0x3fd640dd3fe1975f              # double 0.34770899999999999
	.quad	0x3fe0c7e49b1fab97              # double 0.52440100000000001
	.quad	0x3fefa14057082492              # double 0.98843400000000003
	.quad	0x3fe79e8a2ec28b2a              # double 0.73810299999999995
	.quad	0x3feac60cbf2b239a              # double 0.83667599999999998
	.quad	0x3fd40ce4ead0c3d2              # double 0.31328699999999998
	.quad	0x3fe0aa9d627bf61b              # double 0.52082700000000004
	.quad	0x3fe6286b59146e4c              # double 0.69243399999999999
	.quad	0x3fc5faf42784a948              # double 0.17172100000000001
	.quad	0x3fe88e29f9ce8d97              # double 0.76735399999999998
	.quad	0x3f9395c422036007              # double 0.019126000000000001
	.quad	0x3fd831b152f3c2db              # double 0.37803300000000001
	.quad	0x3fd2224aada33bda              # double 0.28334300000000001
	.quad	0x3fe574c4cdfaca36              # double 0.67050399999999999
	.quad	0x3fe35052934acaff              # double 0.60355499999999995
	.quad	0x3fca257c914b167f              # double 0.20426900000000001
	.quad	0x3fb0e12e83a109d0              # double 0.065935999999999995
	.quad	0x3fe58a8d21bc126a              # double 0.67316299999999996
	.quad	0x3fea3ce63a5c1c61              # double 0.81993400000000005
	.quad	0x3fe3437c5692b3cc              # double 0.60198799999999997
	.quad	0x3fd82fe82517e77d              # double 0.37792399999999998
	.quad	0x3fe5492ff4ba51a0              # double 0.665184
	.quad	0x3fe5c0010c6f7a0b              # double 0.67968799999999996
	.quad	0x3fecf1348b220792              # double 0.90444400000000003
	.quad	0x3fce33e78e1932d7              # double 0.235959
	.quad	0x3feb5909f1f14984              # double 0.85461900000000001
	.quad	0x3feb7c5ef62f9ca6              # double 0.85893200000000003
	.quad	0x3fcb1a9fbe76c8b4              # double 0.21174999999999999
	.quad	0x3fe8f2ffd1dcd706              # double 0.77966299999999999
	.quad	0x3fec64cd74927914              # double 0.88730500000000001
	.quad	0x3fc153c579f23465              # double 0.13536899999999999
	.quad	0x3fb7441bb8c32a8d              # double 0.090883000000000005
	.quad	0x3fcd0c9107faa045              # double 0.22694600000000001
	.quad	0x3fa739f340d4dc66              # double 0.045364000000000002
	.quad	0x3fe8dd590c0ad03e              # double 0.77702000000000004
	.quad	0x3faaf2d7f950b956              # double 0.052634
	.quad	0x3feb8cbaf965b20c              # double 0.86092900000000005
	.quad	0x3fd727913e81450f              # double 0.36179
	.quad	0x3fc88f861a60d456              # double 0.19188
	.quad	0x3fd2e6ab9b23dd55              # double 0.29532900000000001
	.quad	0x3fd9c026cc1ca3a5              # double 0.40235300000000002
	.quad	0x3fd6595feda66128              # double 0.34920499999999999
	.quad	0x3fd61001d5c31594              # double 0.34472700000000001
	.quad	0x3fbeab8a5ce5b424              # double 0.11980499999999999
	.quad	0x3fd3c6bce8533b10              # double 0.30900499999999997
	.quad	0x3fce6fef7c243dcd              # double 0.237791
	.quad	0x3fd79f2fdb8fde2f              # double 0.369091
	.quad	0x3fe20298cc144029              # double 0.56281700000000001
	.quad	0x3fd473471f79420b              # double 0.31953599999999999
	.quad	0x3fd773b85e80bed7              # double 0.36643799999999999
	.quad	0x3fe83c1ce6c093d9              # double 0.75733799999999996
	.quad	0x3feed347a5b0ff11              # double 0.963291
	.quad	0x3fc13868fd199bb2              # double 0.13453399999999999
	.quad	0x3fe3bccf28c79f66              # double 0.61679799999999996
	.quad	0x3feb52a62aa1943a              # double 0.85383900000000001
	.quad	0x3fc6bfec13b9f128              # double 0.177732
	.quad	0x3fe2251c193b3a69              # double 0.56703000000000003
	.quad	0x3f9946801711947d              # double 0.024683
	.quad	0x3fd8a8c586876e1e              # double 0.385301
	.quad	0x3fd711f4f50a02b8              # double 0.36047099999999999
	.quad	0x3fd62fb5d031055c              # double 0.34666200000000003
	.quad	0x3fbf19c5a3e39f77              # double 0.121487
	.quad	0x3fe6626f60e0eb68              # double 0.69951600000000003
	.quad	0x3fe2066c2acb85a5              # double 0.56328400000000001
	.quad	0x3fd4328b6d86ec18              # double 0.315585
	.quad	0x3febc8d5c74751ce              # double 0.86826599999999998
	.quad	0x3fed8ccdd93c46d8              # double 0.92343799999999998
	.quad	0x3fed81908e581cf8              # double 0.92206600000000005
	.quad	0x3feff8c868b9fdbd              # double 0.99911899999999997
	.quad	0x3fe81ab8e8ea39c5              # double 0.75326199999999999
	.quad	0x3fede16b54e2b064              # double 0.93376700000000001
	.quad	0x3fd5cd78c436fc16              # double 0.34066600000000002
	.quad	0x3fed2f8bdec5f395              # double 0.91205400000000003
	.quad	0x3fdc5d3dc8b86b16              # double 0.443191
	.quad	0x3fc45f17bd8be729              # double 0.15915199999999999
	.quad	0x3fcfd96638433d6c              # double 0.24882199999999999
	.quad	0x3feedda272862f5a              # double 0.96455500000000005
	.quad	0x3fed25df2239e6ac              # double 0.91087300000000004
	.quad	0x3fa06c00da1a9329              # double 0.032073999999999998
	.quad	0x3fd292684cf0739b              # double 0.290186
	.quad	0x3fe957060bb2bbaa              # double 0.79187300000000005
	.quad	0x3fd19d5e4a383276              # double 0.27522999999999997
	.quad	0x3fe660e0eb67c287              # double 0.699326
	.quad	0x3fdb3c579f234656              # double 0.42555799999999999
	.quad	0x3fdb9713ad5bee3d              # double 0.43109599999999998
	.quad	0x3fc130728e92d55a              # double 0.13429099999999999
	.quad	0x3fe65b1e9f277814              # double 0.69862299999999999
	.quad	0x3fddb6b6e0d23d4f              # double 0.464277
	.quad	0x3fed36fe2e6ea854              # double 0.91296299999999996
	.quad	0x3fd85054ac29bf16              # double 0.37990299999999999
	.quad	0x3fea6f8055fbb518              # double 0.82611100000000004
	.quad	0x3fb4ef34d6a161e5              # double 0.081775
	.quad	0x3fa9f212d77318fc              # double 0.050674999999999998
	.quad	0x3fe2d3d859c8c932              # double 0.58835999999999999
	.quad	0x3fc8b2d0a2446306              # double 0.19295699999999999
	.quad	0x3fb3d512ec6bce85              # double 0.077469999999999997
	.quad	0x3fdce6e653868fd2              # double 0.45159300000000002
	.quad	0x3fd6f1bef49cf56f              # double 0.35850500000000002
	.quad	0x3fd0049a9973d9ec              # double 0.25028099999999998
	.quad	0x3fecefdc9c4da900              # double 0.90427999999999997
	.quad	0x3fe9cfce746cb967              # double 0.80661700000000003
	.quad	0x3face9e5e2478855              # double 0.056472000000000001
	.quad	0x3fe78dae3e6c4c59              # double 0.73604499999999995
	.quad	0x3fe7d1287c200c0f              # double 0.744282
	.quad	0x3fe647863beec398              # double 0.69623100000000004
	.quad	0x3fe20780fdc1615f              # double 0.56341600000000003
	.quad	0x3fcfa355043e5322              # double 0.247172
	.quad	0x3fd7eb7cbb3c8191              # double 0.37374800000000002
	.quad	0x3feafa7008a697af              # double 0.84307100000000001
	.quad	0x3fed4c92146a1a50              # double 0.91559699999999999
	.quad	0x3fe145197a24894c              # double 0.53968499999999997
	.quad	0x3fd8b573eab367a1              # double 0.386075
	.quad	0x3fd36ff7dfa00e28              # double 0.30370900000000001
	.quad	0x3feedb749adc8fb8              # double 0.96428899999999995
	.quad	0x3fd59e3c968943e1              # double 0.337783
	.quad	0x3fe3253da72a7bd5              # double 0.59829600000000005
	.quad	0x3fe1a5785f8d2e51              # double 0.55144899999999997
	.quad	0x3fe48f55de58e64b              # double 0.64249699999999998
	.quad	0x3fe76ff1950331e4              # double 0.73241500000000004
	.quad	0x3feed7928e0c9d9d              # double 0.96381499999999997
	.quad	0x3fe7646f15619115              # double 0.73101000000000005
	.quad	0x3fdf1a32b12d3416              # double 0.48597400000000002
	.quad	0x3faef34d6a161e4f              # double 0.060449999999999997
	.quad	0x3fee8da5daf07bfe              # double 0.95479099999999995
	.quad	0x3fe2293f290abb45              # double 0.56753500000000001
	.quad	0x3fe5e14163779e9d              # double 0.68374699999999999
	.quad	0x3fb0111ada76d97b              # double 0.062760999999999997
	.quad	0x3feeddc1e7967caf              # double 0.96457000000000003
	.quad	0x3fe8eb0318b9346a              # double 0.77868800000000005
	.quad	0x3fe8ffe8ee6b8306              # double 0.78123900000000002
	.quad	0x3fd630ced4e4c943              # double 0.34672900000000001
	.quad	0x3fe3c44178705426              # double 0.61770700000000001
	.quad	0x3fef87d2c7b890d6              # double 0.98533000000000004
	.quad	0x3fe052b4d8ba40d9              # double 0.51009599999999999
	.quad	0x3fe6e75ff609dcf9              # double 0.71574400000000005
	.quad	0x3feeb6a1e81cb46c              # double 0.95979400000000003
	.quad	0x3fed9aeb3dd11be7              # double 0.92516100000000001
	.quad	0x3feb4393682730c6              # double 0.85199899999999995
	.quad	0x3fe579c842fa5094              # double 0.67111600000000005
	.quad	0x3fed55219a847b24              # double 0.91664199999999995
	.quad	0x3fa4b1ab0856e697              # double 0.040418000000000003
	.quad	0x3fdb4b4070329803              # double 0.42646800000000001
	.quad	0x3fe07e45803cd142              # double 0.51541400000000004
	.quad	0x3fe95a1ec4e7253e              # double 0.79225100000000004
	.quad	0x3fde07b784662bae              # double 0.469221
	.quad	0x3fda86876e1deacd              # double 0.41446100000000002
	.quad	0x3fdeccf6be37de94              # double 0.48126000000000002
	.quad	0x3fe660a2014727dd              # double 0.69929600000000003
	.quad	0x3fc890ff97247454              # double 0.19192500000000001
	.quad	0x3fdc8deb0fadf2ed              # double 0.446162
	.quad	0x3fd16273929ed395              # double 0.27163399999999999
	.quad	0x3fe5f6d117b5286b              # double 0.68637899999999996
	.quad	0x3fd77df19d66adb4              # double 0.367062
	.quad	0x3f8d694ccab3edd9              # double 0.014361000000000001
	.quad	0x3fcc1986b9c304cd              # double 0.219529
	.quad	0x3fe19526d8b1dd5d              # double 0.54945699999999997
	.quad	0x3fe69aae6c8f7553              # double 0.70638199999999995
	.quad	0x3fd42363b256ffc1              # double 0.31466
	.quad	0x3fe059be4cd74928              # double 0.51095500000000005
	.quad	0x3fe96d17c5ef62fa              # double 0.79456700000000002
	.quad	0x3fe9d5bab21815a0              # double 0.80733999999999994
	.quad	0x3fb9ea67e846a5d7              # double 0.101233
	.quad	0x3fe65b8130164841              # double 0.69867000000000001
	.quad	0x3fc556191148fda0              # double 0.16669
	.quad	0x3fd387f455a7d242              # double 0.30517300000000003
	.quad	0x3fe5974a3400b88d              # double 0.67471800000000004
	.quad	0x3fd5694ccab3edd9              # double 0.33455200000000002
	.quad	0x3fedc0f66a550870              # double 0.92980499999999999
	.quad	0x3fe8315d701d9f4d              # double 0.75602599999999998
	.quad	0x3faae429e0a41a26              # double 0.052521999999999999
	.quad	0x3feb316e37154003              # double 0.84978399999999998
	.quad	0x3fd016d6dc1a47aa              # double 0.25139400000000001
	.quad	0x3fd4299d883ba344              # double 0.31503999999999999
	.quad	0x3fde22d948dc11e4              # double 0.47087699999999999
	.quad	0x3fee187a4a48f96e              # double 0.94048799999999999
	.quad	0x3f8de9c0229a5ebb              # double 0.014605999999999999
	.quad	0x3fefea8b8f14db59              # double 0.99738099999999996
	.quad	0x3fe3dc74751ce28f              # double 0.62066100000000002
	.quad	0x3fe2e0fe47991bc5              # double 0.58996499999999996
	.quad	0x3fe277be121ee675              # double 0.57711699999999999
	.quad	0x3fd95abc0e38a7e7              # double 0.39616299999999999
	.quad	0x3fe7c4d87724fa8b              # double 0.74277899999999997
	.quad	0x3fe96a8da7f3cf70              # double 0.79425699999999999
	.quad	0x3fe28917d6b65a9b              # double 0.57923500000000006
	.quad	0x3fdf389f83be6602              # double 0.48783100000000001
	.quad	0x3fe9e6eeb702602d              # double 0.80944000000000005
	.quad	0x3fdeccfaeff5c6c1              # double 0.48126099999999999
	.quad	0x3fd7ac53b0813cac              # double 0.36989300000000003
	.quad	0x3fe68f27bb2fec57              # double 0.70497500000000002
	.quad	0x3fda97b30f8c64fe              # double 0.41550900000000002
	.quad	0x3fdce939eadd590c              # double 0.451735
	.quad	0x3fe5460aa64c2f83              # double 0.66479999999999995
	.quad	0x3fcc121682f94424              # double 0.219302
	.quad	0x3fed31a6d698fe69              # double 0.91231099999999998
	.quad	0x3fcca89fc6da4485              # double 0.22389600000000001
	.quad	0x3fe125460aa64c30              # double 0.53580000000000005
	.quad	0x3fd13660e51d25ab              # double 0.26894400000000002
	.quad	0x3fd024fa8b4bf8fd              # double 0.25225700000000001
	.quad	0x3fc57a46173b85e8              # double 0.167794
	.quad	0x3fd54bf0995aaf79              # double 0.33276
	.quad	0x3fe939d7fd82773e              # double 0.78831099999999998
	.quad	0x3fc6449dbec2480f              # double 0.17396900000000001
	.quad	0x3fd613404ea4a8c1              # double 0.34492499999999998
	.quad	0x3fe0455a7d24180d              # double 0.50846599999999997
	.quad	0x3fe08d434a01abd2              # double 0.51724400000000004
	.quad	0x3fccde8709741d08              # double 0.22554099999999999
	.quad	0x3fd11c25d074213a              # double 0.267343
	.quad	0x3fc3d5bab21815a0              # double 0.15495999999999999
	.quad	0x3fc60d77b7c7820a              # double 0.17228599999999999
	.quad	0x3fe60fc0d2c386d3              # double 0.68942300000000001
	.quad	0x3fe6c115df6555c5              # double 0.71106999999999998
	.quad	0x3fedde17e34b9453              # double 0.933361
	.quad	0x3fe99e8815e39714              # double 0.80060200000000003
	.quad	0x3fec8e0a84be4042              # double 0.89233899999999999
	.quad	0x3fe7540cc78e9f6b              # double 0.72901000000000005
	.quad	0x3fb66937d1fe64f5              # double 0.087542999999999996
	.quad	0x3fa8116ebd4cfd09              # double 0.047008000000000001
	.quad	0x3fed326e115592da              # double 0.91240600000000005
	.quad	0x3fdf9b62c77574f7              # double 0.49385899999999999
	.quad	0x3feca4638c975297              # double 0.89506699999999995
	.quad	0x3fc6deb0fadf2ecf              # double 0.178671
	.quad	0x3fe7c9ecb31c219f              # double 0.74339900000000003
	.quad	0x3fbdcf13cee9dd7f              # double 0.116441
	.quad	0x3fd44562e09fe868              # double 0.31673499999999999
	.quad	0x3fd3fede97d06bbe              # double 0.31243100000000001
	.quad	0x3fee948ba83f4eca              # double 0.95563299999999995
	.quad	0x3fe314dd72367e41              # double 0.59629699999999997
	.quad	0x3fdc796bfca85cab              # double 0.444911
	.quad	0x3fe8adcb1465e892              # double 0.77121499999999998
	.quad	0x3fe79cc74b838c11              # double 0.73788799999999999
	.quad	0x3fcb46c332f01755              # double 0.21309700000000001
	.quad	0x3fcf393250b5243a              # double 0.24393300000000001
	.quad	0x3fe977e1b8ed1bf8              # double 0.79588400000000004
	.quad	0x3fef298676a7264a              # double 0.97381899999999999
	.quad	0x3fc8767d34df04de              # double 0.19111600000000001
	.quad	0x3fd612ec6bce8534              # double 0.34490500000000002
	.quad	0x3fed0f733a8a3f8a              # double 0.90813600000000005
	.quad	0x3feb7f69014b599b              # double 0.85930300000000004
	.quad	0x3fe7d0ce4ead0c3d              # double 0.74423899999999998
	.quad	0x3fea154c985f06f7              # double 0.81510000000000005
	.quad	0x3fe62cd39da16617              # double 0.69297200000000003
	.quad	0x3fe44534bd76ee74              # double 0.63344800000000001
	.quad	0x3fd57789a459103d              # double 0.33542100000000002
	.quad	0x3fd0868b9fdbd2fa              # double 0.258212
	.quad	0x3fec2f533f42352f              # double 0.88077700000000003
	.quad	0x3fc664883fd50225              # double 0.17494299999999999
	.quad	0x3fe18e38a7e73a36              # double 0.54861099999999996
	.quad	0x3fee4b039ef0f16f              # double 0.94665699999999997
	.quad	0x3feabfc0096feb4a              # double 0.83590699999999996
	.quad	0x3fc6bdf4c2b51bd6              # double 0.177672
	.quad	0x3febb152f3c2dadc              # double 0.86539600000000005
	.quad	0x3fe1f1d81f106680              # double 0.56077200000000005
	.quad	0x3fe21a21ea359360              # double 0.56569000000000003
	.quad	0x3fbf74256bca5376              # double 0.122866
	.quad	0x3fe9df6555c52e73              # double 0.80852000000000002
	.quad	0x3fc9dd54da4ce810              # double 0.202067
	.quad	0x3fda8d60a6330510              # double 0.414879
	.quad	0x3fc8b1897a67a52b              # double 0.19291800000000001
	.quad	0x3fd8178f68be2f7b              # double 0.37643799999999999
	.quad	0x3fd8080b673c4f3c              # double 0.37549100000000002
	.quad	0x3fd178bbd3804535              # double 0.27299400000000001
	.quad	0x3feadaec4a4095f2              # double 0.83922399999999997
	.quad	0x3fe6a9aa1d755bcd              # double 0.70821100000000003
	.quad	0x3fc74d056c508b33              # double 0.18203800000000001
	.quad	0x3fd6bc621b7e0ac8              # double 0.35524800000000001
	.quad	0x3fa795d4e8fb00bd              # double 0.046065000000000002
	.quad	0x3fde5e071c53f39d              # double 0.47448899999999999
	.quad	0x3fe92fee6fb4c3c2              # double 0.78710100000000005
	.quad	0x3fe70c111ada76d9              # double 0.72022299999999995
	.quad	0x3fe064ef0281ba80              # double 0.51232100000000003
	.quad	0x3fb260e51d25aab4              # double 0.071790999999999994
	.quad	0x3fece5c2d2780779              # double 0.90304700000000004
	.quad	0x3fdfb4bb5e0f7fd0              # double 0.49540600000000001
	.quad	0x3fe3a6f3f52fc265              # double 0.61412999999999995
	.quad	0x3fc4e08f21709310              # double 0.163103
	.quad	0x3fea9a91105e1c15              # double 0.831368
	.quad	0x3fd57ee4e26d4802              # double 0.33587
	.quad	0x3fe6fc86cebbba56              # double 0.71832600000000002
	.quad	0x3fdbb3fe9fadafd1              # double 0.432861
	.quad	0x3fe9016f0068db8c              # double 0.78142500000000003
	.quad	0x3fe612ddbdb5d895              # double 0.68980300000000006
	.quad	0x3fe6da63f9a49c2c              # double 0.71415899999999999
	.quad	0x3fc59b23dd54da4d              # double 0.168797
	.quad	0x3fad0092ccf6be38              # double 0.056645000000000001
	.quad	0x3fd28d759ee88df3              # double 0.28988399999999998
	.quad	0x3fb743c7d5ed06ff              # double 0.090878
	.quad	0x3fea7442c7fbacb4              # double 0.82669199999999998
	.quad	0x3fd17574f722e1ac              # double 0.27279399999999998
	.quad	0x3fd04bd33d29563b              # double 0.25462800000000002
	.quad	0x3fec851eb851eb85              # double 0.89124999999999999
	.quad	0x3fea22467be553ac              # double 0.81668399999999996
	.quad	0x3fda9131ec0b5675              # double 0.41511199999999998
	.quad	0x3fe7e95faa8a82a5              # double 0.74723799999999996
	.quad	0x3fea31c864883fd5              # double 0.818577
	.quad	0x3fd5be0157eed45f              # double 0.33972200000000002
	.quad	0x3fc653f39d1b2e5a              # double 0.17443700000000001
	.quad	0x3fdb8ab92c061848              # double 0.430342
	.quad	0x3fe81098d477bbf9              # double 0.75202599999999997
	.quad	0x3fec57cf5f4e4431              # double 0.88571900000000003
	.quad	0x3fa134acaff6d331              # double 0.033605000000000003
	.quad	0x3faa014727dcbddc              # double 0.050791000000000003
	.quad	0x3fe5c898f605ab3b              # double 0.68073700000000004
	.quad	0x3fdbb9dc2f405f6c              # double 0.43321900000000002
	.quad	0x3f9ffa3b9ae0c176              # double 0.031227999999999999
	.quad	0x3fb68448cf7caa76              # double 0.087956000000000006
	.quad	0x3fdbc792d1287c20              # double 0.434056
	.quad	0x3fc0892ab68cef67              # double 0.129186
	.quad	0x3fd43e8dda48b652              # double 0.31631799999999999
	.quad	0x3f94ca925fe974a3              # double 0.020303999999999999
	.quad	0x3fe02a4b9884c6a4              # double 0.50516300000000003
	.quad	0x3feb66c4c5974e66              # double 0.85629500000000003
	.quad	0x3fea0a4a05dd8f93              # double 0.81375600000000003
	.quad	0x3fe6ddb5525cc426              # double 0.71456399999999998
	.quad	0x3fd3f969e3c96894              # double 0.31209799999999999
	.quad	0x3fe3711b60ae9681              # double 0.60755700000000001
	.quad	0x3fec7fe08aefb2ab              # double 0.89061000000000001
	.quad	0x3fe98359bc33f855              # double 0.79728399999999999
	.quad	0x3fd7bfe3b03e20cd              # double 0.371087
	.quad	0x3fdda51e321a2e7f              # double 0.46320299999999998
	.quad	0x3fe8454152b0a6fc              # double 0.75845399999999996
	.quad	0x3fe015aaf78feef6              # double 0.50264500000000001
	.quad	0x3fcf58afc47e49b2              # double 0.244894
	.quad	0x3fd0185cee17a030              # double 0.25148700000000002
	.quad	0x3fbbe48a58b3f63c              # double 0.108956
	.quad	0x3fee695d91ab8e8f              # double 0.95036200000000004
	.quad	0x3fe974d594f26aec              # double 0.79551199999999999
	.quad	0x3fe380ef1348b220              # double 0.60948899999999995
	.quad	0x3fe0a31832fcac8e              # double 0.51990899999999995
	.quad	0x3fe596e9bbf0dc77              # double 0.67467200000000005
	.quad	0x3feb79702e6644d8              # double 0.85857399999999995
	.quad	0x3fbcee9dd7ecbb80              # double 0.11301600000000001
	.quad	0x3fda2deca25529fe              # double 0.409053
	.quad	0x3fed5084e831ad21              # double 0.91607899999999998
	.quad	0x3fe0ddfc9ff92f2b              # double 0.52709799999999996
	.quad	0x3fe585186db50f41              # double 0.67249700000000001
	.quad	0x3fdb0a915379fa98              # double 0.42252000000000001
	.quad	0x3fe0a8bd230b9dc3              # double 0.52059800000000001
	.quad	0x3fb8c46950fc71d6              # double 0.096746999999999999
	.quad	0x3fe23fa6defc7a3a              # double 0.57027000000000005
	.quad	0x3feaa146a1a500d6              # double 0.83218700000000001
	.quad	0x3fe87b6134ce3de6              # double 0.76506099999999999
	.quad	0x3fe5dd590c0ad03e              # double 0.68327000000000004
	.quad	0x3fc139085f4a1273              # double 0.13455300000000001
	.quad	0x3fe030142f61ed5b              # double 0.50586900000000001
	.quad	0x3fe7e757928e0c9e              # double 0.74699000000000004
	.quad	0x3fb4e09784ec636b              # double 0.081551999999999999
	.quad	0x3f86616b54e2b064              # double 0.010928
	.quad	0x3fc095d0b73d188f              # double 0.12957199999999999
	.quad	0x3f97192ea52ef912              # double 0.022557000000000001
	.quad	0x3fce2e5de15ca6ca              # double 0.23579
	.quad	0x3fdcf1f57b41bfbe              # double 0.452268
	.quad	0x3fb026351deefe50              # double 0.063083
	.quad	0x3fe170196d8f4f94              # double 0.54493400000000003
	.quad	0x3fef4105186db50f              # double 0.97668699999999997
	.quad	0x3fa54ef459d9902a              # double 0.041618000000000002
	.quad	0x3fee67903211cb04              # double 0.95014200000000004
	.quad	0x3fe92031ceaf251c              # double 0.78517999999999998
	.quad	0x3fedf268d32830a1              # double 0.93584100000000003
	.quad	0x3fd5bfca85caafbc              # double 0.33983099999999999
	.quad	0x3fdf00b45ae5ffa4              # double 0.48441800000000002
	.quad	0x3fef77dd872f33ca              # double 0.98338199999999998
	.quad	0x3fcc72f33ca31e7e              # double 0.22225800000000001
	.quad	0x3fe9de5d18090b41              # double 0.80839399999999995
	.quad	0x3fb5017dae81882b              # double 0.082054000000000002
	.quad	0x3fef6fe4ffc9795b              # double 0.98240899999999997
	.quad	0x3fe7353d640e9d52              # double 0.72524900000000003
	.quad	0x3feb13fd0d0678c0              # double 0.84619
	.quad	0x3fe02e46cfc829d0              # double 0.50564900000000002
	.quad	0x3fec58c4bd33d295              # double 0.88583599999999996
	.quad	0x3fb65b20b8066c2b              # double 0.087328000000000003
	.quad	0x3fea0e0a84be4042              # double 0.81421399999999999
	.quad	0x3fe08ba1f4b1ee24              # double 0.51704499999999998
	.quad	0x3fd27de0d66f0cfe              # double 0.288933
	.quad	0x3feb817b95a29414              # double 0.85955599999999998
	.quad	0x3fcddf00abf76a2f              # double 0.23336799999999999
	.quad	0x3f9b3700474d9c6b              # double 0.026577
	.quad	0x3fae1975f2cb6417              # double 0.058788
	.quad	0x3fe7f7c6759ab6d0              # double 0.748996
	.quad	0x3fc6410b630a9153              # double 0.17385999999999999
	.quad	0x3fcd17f84449dbec              # double 0.227294
	.quad	0x3fe3fe846a5d6bec              # double 0.62481900000000001
	.quad	0x3fd01cde5d18090b              # double 0.25176199999999999
	.quad	0x3fbb81b64e054691              # double 0.107448
	.quad	0x3fdd8bc9cd3e0bd4              # double 0.46165699999999998
	.quad	0x3fdff7a919695d92              # double 0.49949100000000002
	.quad	0x3fd4ab9b23dd54da              # double 0.32297399999999998
	.quad	0x3faad5171e29b6b3              # double 0.052407000000000002
	.quad	0x3fe8f8d92fb19e73              # double 0.78037699999999999
	.quad	0x3fe008fa7a85015c              # double 0.50109599999999999
	.quad	0x3fd957928e0c9d9d              # double 0.39596999999999999
	.quad	0x3fc16976bc1effa0              # double 0.13603100000000001
	.quad	0x3fccaa4b9884c6a4              # double 0.22394700000000001
	.quad	0x3fd35bccaf709b74              # double 0.30247800000000002
	.quad	0x3fd6b945308bb906              # double 0.35505799999999998
	.quad	0x3fcf91eeaa6d2674              # double 0.246641
	.quad	0x3fe1260f5e41d4b7              # double 0.53589600000000004
	.quad	0x3fe4d568e820e62a              # double 0.65105100000000005
	.quad	0x3fc294ab1d4f9c20              # double 0.14516200000000001
	.quad	0x3feebd3c36113405              # double 0.9606
	.quad	0x3fe83bc903ea704c              # double 0.75729800000000002
	.quad	0x3fede8e60807357e              # double 0.93467999999999996
	.quad	0x3fd6044f1a1986ba              # double 0.34401300000000001
	.quad	0x3fe8845132f87ad1              # double 0.76615200000000006
	.quad	0x3fedbe63e8dda48b              # double 0.92949099999999996
	.quad	0x3fe16759ab6d00b4              # double 0.54386599999999996
	.quad	0x3fee939c94f69caa              # double 0.95551900000000001
	.quad	0x3fd3363b256ffc11              # double 0.30018499999999998
	.quad	0x3fe929435ac8a372              # double 0.78628699999999996
	.quad	0x3fef97481b21c476              # double 0.98721700000000001
	.quad	0x3fe4968d759ee88e              # double 0.64337800000000001
	.quad	0x3fea67967caea748              # double 0.82514500000000002
	.quad	0x3fd7365cb35f3d7d              # double 0.36269299999999999
	.quad	0x3fefab3cc4ac6cdb              # double 0.989653
	.quad	0x3fe9b675ddd2ae8e              # double 0.80352299999999999
	.quad	0x3fe386833c60029f              # double 0.61016999999999999
	.quad	0x3fec3d66277c45cc              # double 0.88249500000000002
	.quad	0x3fc34ff865d7cb2e              # double 0.15087800000000001
	.quad	0x3fe462aa19439de5              # double 0.63704400000000005
	.quad	0x3fdd06a2b1704ff4              # double 0.45352999999999999
	.quad	0x3fc115ad106ee30d              # double 0.13347400000000001
	.quad	0x3fd128d8665e02eb              # double 0.26811800000000002
	.quad	0x3fed938de6ddf00b              # double 0.92426200000000003
	.quad	0x3fd4ce9e5e247885              # double 0.32511099999999998
	.quad	0x3fe703f4eca686e8              # double 0.71923300000000001
	.quad	0x3fc0092ccf6be37e              # double 0.12528
	.quad	0x3fe44c0df58c08b7              # double 0.63428399999999996
	.quad	0x3fc34fd6d7e889c2              # double 0.15087400000000001
	.quad	0x3fdf4d013a92a305              # double 0.48907499999999998
	.quad	0x3fc3425f202107b8              # double 0.15046300000000001
	.quad	0x3fde51a437824d4d              # double 0.47373300000000002
	.quad	0x3fdbc13b9f127f5f              # double 0.43366900000000003
	.quad	0x3fe2fcbd556084a5              # double 0.59335199999999999
	.quad	0x3fef0c9b845564b6              # double 0.97028899999999996
	.quad	0x3fa3d72bcb5fe543              # double 0.038751000000000001
	.quad	0x3fce66cb10342aaa              # double 0.237512
	.quad	0x3fe36a6a012599ed              # double 0.60673999999999995
	.quad	0x3feac2eba27ae9ab              # double 0.83629399999999998
	.quad	0x3feb7f950b955f78              # double 0.85932399999999998
	.quad	0x3fe0ba7fc32ebe59              # double 0.52276599999999995
	.quad	0x3fe467b5f1bef49d              # double 0.63766
	.quad	0x3f969f4906034f40              # double 0.022092000000000001
	.quad	0x3fd1c981beb18117              # double 0.277924
	.quad	0x3fb71a8ef77f27fe              # double 0.090248999999999995
	.quad	0x3fe904f6dfc5cdd5              # double 0.781856
	.quad	0x3fae2ed352220bc4              # double 0.058951000000000003
	.quad	0x3fd991f70de8f6cf              # double 0.399534
	.quad	0x3fef8fbca1059ea5              # double 0.98629599999999995
	.quad	0x3fb5532617c1bda5              # double 0.083299999999999999
	.quad	0x3fc2d9d7774aba38              # double 0.14727299999999999
	.quad	0x3fef37a1c25d0742              # double 0.97554099999999999
	.quad	0x3fefa1e3eaf6837f              # double 0.98851199999999994
	.quad	0x3fdc05faebc408d9              # double 0.437865
	.quad	0x3fe7eccc46950fc7              # double 0.74765599999999999
	.quad	0x3fe1fb82c2bd7f52              # double 0.56195200000000001
	.quad	0x3fc1accd530489d2              # double 0.13808599999999999
	.quad	0x3fee0487b99d4520              # double 0.93805300000000002
	.quad	0x3fd181ba7fc32ebe              # double 0.27354299999999998
	.quad	0x3fe31dadfb506dd7              # double 0.59737300000000004
	.quad	0x3fc35caf2d7f950c              # double 0.15126600000000001
	.quad	0x3fea8ee06d938152              # double 0.82994100000000004
	.quad	0x3fd6014727dcbddc              # double 0.34382800000000002
	.quad	0x3f9938151a437825              # double 0.024628000000000001
	.quad	0x3fdc20f6f08cc576              # double 0.43951200000000001
	.quad	0x3fecd06573215fcc              # double 0.90043899999999998
	.quad	0x3f9b21c475e6362a              # double 0.026495999999999999
	.quad	0x3fed6aa087ca643d              # double 0.91926600000000003
	.quad	0x3fe1ce7ab7564303              # double 0.55645500000000003
	.quad	0x3fea77e5eaab0425              # double 0.82713599999999998
	.quad	0x3fe65aa0cae642c0              # double 0.69856300000000005
	.quad	0x3fc88869c66d373b              # double 0.191663
	.quad	0x3fc1bcdbbe0157ef              # double 0.138576
	.quad	0x3fd08448cf7caa76              # double 0.25807400000000003
	.quad	0x3fe0da7d24180d3d              # double 0.526671
	.quad	0x3feadf19d66adb40              # double 0.83973399999999998
	.quad	0x3fe15ab3aabcd78c              # double 0.54232199999999997
	.quad	0x3fcbd4067cf1c326              # double 0.21740799999999999
	.quad	0x3fe24fb762d83c6d              # double 0.57223100000000005
	.quad	0x3fe02dd9c27e9531              # double 0.50559699999999996
	.quad	0x3fc8eee0f3cb3e57              # double 0.19478999999999999
	.quad	0x3fe34178705425f2              # double 0.601742
	.quad	0x3fb90e8858ff7597              # double 0.097878000000000007
	.quad	0x3fe638a5ce5b4246              # double 0.694415
	.quad	0x3feddba4d6e47dc3              # double 0.93306199999999995
	.quad	0x3fea6e675147f130              # double 0.82597699999999996
	.quad	0x3fdd1804d9839475              # double 0.45459100000000002
	.quad	0x3fe07c6fbd273d5c              # double 0.51519000000000004
	.quad	0x3fe95f3300de4c51              # double 0.79287099999999999
	.quad	0x3fe63a4b5568e821              # double 0.69461600000000001
	.quad	0x3fd407182235b4ee              # double 0.31293300000000002
	.quad	0x3fda29f16b11c6d2              # double 0.40881000000000001
	.quad	0x3fbf31c219eb6391              # double 0.121853
	.quad	0x3fe0501c0ca600b0              # double 0.50977899999999998
	.quad	0x3fc934a44c7b02d6              # double 0.19691900000000001
	.quad	0x3fe59d40ee06d938              # double 0.67544599999999999
	.quad	0x3fe9b4b72c5197a2              # double 0.80330999999999997
	.quad	0x3fea6bd2b6f19935              # double 0.82566200000000001
	.quad	0x3fde9b52007dd441              # double 0.47822999999999999
	.quad	0x3fc0348f53c579f2              # double 0.12660399999999999
	.quad	0x3feff28848387df6              # double 0.99835600000000002
	.quad	0x3fe67bd05af6c69b              # double 0.70261399999999996
	.quad	0x3fd95375c8d9f905              # double 0.39571899999999999
	.quad	0x3fd4618ce2d1f1d0              # double 0.31845400000000001
	.quad	0x3fcb449129888f86              # double 0.21303
	.quad	0x3fecef7c243dccea              # double 0.90423399999999998
	.quad	0x3fbc70da5daf07c0              # double 0.111097
	.quad	0x3fe8700ef1348b22              # double 0.763679
	.quad	0x3fdd249a133c1ce7              # double 0.45535900000000001
	.quad	0x3fc2b6bf444e0daa              # double 0.146202
	.quad	0x3fd329b6b2af1455              # double 0.29942099999999999
	.quad	0x3f812d3415b1422d              # double 0.0083870000000000003
	.quad	0x3fe61c6f36ef8056              # double 0.690971
	.quad	0x3fe672f555821294              # double 0.70153299999999996
	.quad	0x3fd8e8b3b320535d              # double 0.38920300000000002
	.quad	0x3fd4ee17a02fb5d0              # double 0.32703199999999999
	.quad	0x3fe3167caea747d8              # double 0.596495
	.quad	0x3fd02018a43bb40b              # double 0.25195899999999999
	.quad	0x3fbd3ea2d2fe3f36              # double 0.11423700000000001
	.quad	0x3fd9d01c0ca600b0              # double 0.40332699999999999
	.quad	0x3fe524766c6de764              # double 0.66070099999999998
	.quad	0x3fe00218def416be              # double 0.50025600000000003
	.quad	0x3fe2aeee957470eb              # double 0.58385399999999998
	.quad	0x3f88fd5cb790fb65              # double 0.012201999999999999
	.quad	0x3fe628f9f44d4456              # double 0.69250199999999995
	.quad	0x3fe7d32e7b3d8e00              # double 0.744529
	.quad	0x3fa916659d12cade              # double 0.048999000000000001
	.quad	0x3fe1a99b6f5caf2d              # double 0.55195399999999994
	.quad	0x3fed97ebaf102364              # double 0.92479500000000003
	.quad	0x3fab24851a869403              # double 0.053012999999999998
	.quad	0x3fefdd91ab8e8ea4              # double 0.99579700000000004
	.quad	0x3fe0a7913e81450f              # double 0.520455
	.quad	0x3fe7100a393ee5ef              # double 0.72070800000000002
	.quad	0x3fd28548a9bcfd4c              # double 0.289385
	.quad	0x3fd374d594f26aec              # double 0.304006
	.quad	0x3fdffd47bedb7282              # double 0.499834
	.quad	0x3fe9b0c4588a04d1              # double 0.80282799999999999
	.quad	0x3fe8677f6b1a2a4e              # double 0.76263400000000003
	.quad	0x3f80068db8bac711              # double 0.0078250000000000004
	.quad	0x3fe2d9f2ba9d1f60              # double 0.58910499999999999
	.quad	0x3fd2314013ec460f              # double 0.28425600000000001
	.quad	0x3fe93bd9cae21102              # double 0.78855600000000003
	.quad	0x3fb9987c6327ed85              # double 0.099983000000000002
	.quad	0x3fecd909f1f14984              # double 0.90149400000000001
	.quad	0x3fdff52b90a78290              # double 0.49933899999999998
	.quad	0x3fe1825e13b18dac              # double 0.54716399999999998
	.quad	0x3feee9a0ad8a1166              # double 0.96601899999999996
	.quad	0x3fd24b48d3ae685e              # double 0.28584500000000002
	.quad	0x3fd653f39d1b2e5a              # double 0.34887400000000002
	.quad	0x3fce7ae147ae147b              # double 0.238125
	.quad	0x3feb1c17225b749b              # double 0.84717900000000002
	.quad	0x3fd9ded6ba8c5868              # double 0.40422599999999997
	.quad	0x3fc66f5019f3c70d              # double 0.17527200000000001
	.quad	0x3fb15e39713ad5bf              # double 0.067844000000000002
	.quad	0x3fedd82fd75e2047              # double 0.93264000000000002
	.quad	0x3fee7418d6909aed              # double 0.95167199999999996
	.quad	0x3fc93b645a1cac08              # double 0.19712499999999999
	.quad	0x3fec8dbad3a604e2              # double 0.89230100000000001
	.quad	0x3fe93ad9f0a1be2b              # double 0.78843399999999997
	.quad	0x3fe5add7a99fa11b              # double 0.67747100000000005
	.quad	0x3fd44eb9a176ddad              # double 0.317305
	.quad	0x3fd48c436fc158fb              # double 0.32106099999999999
	.quad	0x3fdfd40aaeafab54              # double 0.49731700000000001
	.quad	0x3fd4c610f0e90bc8              # double 0.32458900000000002
	.quad	0x3fe198d045fe1112              # double 0.54990399999999995
	.quad	0x3f77b2031ceaf252              # double 0.0057850000000000002
	.quad	0x3fd5634549b62c77              # double 0.33418399999999998
	.quad	0x3fd6787485e3da30              # double 0.35110200000000003
	.quad	0x3fece0ded288ce70              # double 0.90244999999999997
	.quad	0x3f9b8348f53c579f              # double 0.026868
	.quad	0x3fb23305100a393f              # double 0.071091000000000001
	.quad	0x3fc2e31d712a0ec7              # double 0.14755599999999999
	.quad	0x3fdf0852b4d8ba41              # double 0.48488300000000001
	.quad	0x3fd8bed740c4156e              # double 0.38664799999999999
	.quad	0x3feab6e2eb1c432d              # double 0.83482500000000004
	.quad	0x3fc6a7ded6ba8c58              # double 0.17699799999999999
	.quad	0x3fd3a6e75ff609dd              # double 0.307062
	.quad	0x3fe61c842fa50939              # double 0.69098099999999996
	.quad	0x3fb89acbc8c0ce92              # double 0.096112000000000002
	.quad	0x3fc42938de6ddf01              # double 0.15750800000000001
	.quad	0x3fdabef06b37867f              # double 0.417904
	.quad	0x3fc04f8f8a4c1ebd              # double 0.12742800000000001
	.quad	0x3fdccf70153bd167              # double 0.45016099999999998
	.quad	0x3fe636a1e81cb46c              # double 0.69416900000000004
	.quad	0x3fe0c28b2a6b0d95              # double 0.52374799999999999
	.quad	0x3fe70e29f9ce8d97              # double 0.72047899999999998
	.quad	0x3fcd2a1f8e3ac0c6              # double 0.22784799999999999
	.quad	0x3fe7bf727136a401              # double 0.74212
	.quad	0x3fe69ac14c660a20              # double 0.70639099999999999
	.quad	0x3f84fdf3b645a1cb              # double 0.01025
	.quad	0x3fc48cf7caa7589f              # double 0.160552
	.quad	0x3fd46b65a9a80496              # double 0.31905499999999998
	.quad	0x3fc2d2999567dbb1              # double 0.14705199999999999
	.quad	0x3fde2f87ad080b67              # double 0.47165099999999999
	.quad	0x3fb17c5ef62f9ca6              # double 0.068304000000000004
	.quad	0x3fdb892253111f0c              # double 0.43024499999999999
	.quad	0x3fcf4dc65c70435f              # double 0.244561
	.quad	0x3fe786a8fc0d2c38              # double 0.73518799999999995
	.quad	0x3fa12ff4ba51a006              # double 0.033569000000000002
	.quad	0x3fbd8aa8650e7792              # double 0.115397
	.quad	0x3feefa8d64d7f0ed              # double 0.96808499999999997
	.quad	0x3fe633dd11be6e65              # double 0.69383099999999998
	.quad	0x3fdb924f227d028a              # double 0.43080499999999999
	.quad	0x3fb8f0c77dd872f3              # double 0.097423999999999997
	.quad	0x3fc72674080f98fa              # double 0.18086099999999999
	.quad	0x3feed803cd141a69              # double 0.96386899999999997
	.quad	0x3fbb79420b3d4ae4              # double 0.107319
	.quad	0x3fcb5aaf78feef5f              # double 0.21370500000000001
	.quad	0x3fe88ea9e6eeb702              # double 0.76741499999999996
	.quad	0x3feba37ac3eb7cbb              # double 0.86370599999999997
	.quad	0x3fd28f8a4c1ebc84              # double 0.29001100000000002
	.quad	0x3feaada98676a726              # double 0.83369899999999997
	.quad	0x3f8e9424e5929670              # double 0.014931
	.quad	0x3fe85fdcdf698783              # double 0.76170199999999999
	.quad	0x3fdc1b25f633ce64              # double 0.43915700000000002
	.quad	0x3fe69fbe76c8b439              # double 0.70699999999999996
	.quad	0x3feac3d03968d75a              # double 0.83640300000000001
	.quad	0x3fdf5e2478854cdb              # double 0.49012099999999997
	.quad	0x3fa50e3476295209              # double 0.041124000000000001
	.quad	0x3fec6caeea63b689              # double 0.88826700000000003
	.quad	0x3fe72f35e310dbf0              # double 0.72451299999999996
	.quad	0x3fe05a836eb4e981              # double 0.51104899999999998
	.quad	0x3fc754434e3369ba              # double 0.182259
	.quad	0x3fef1d883ba3443d              # double 0.97235499999999996
	.quad	0x3fe0126634117f84              # double 0.50224599999999997
	.quad	0x3febe683c297bfa5              # double 0.87188900000000003
	.quad	0x3fdf5fd04a2fcefb              # double 0.49022300000000002
	.quad	0x3fe882eec7c957cd              # double 0.76598299999999997
	.quad	0x3fe90a222d5171e3              # double 0.78248700000000004
	.quad	0x3fbde518f3eccc47              # double 0.11677700000000001
	.quad	0x3fee19cbee807bbb              # double 0.94064899999999996
	.quad	0x3fa93f077ccc0379              # double 0.049308999999999999
	.quad	0x3fea3b517a46173c              # double 0.81974100000000005
	.quad	0x3fdc3c968943e100              # double 0.44119799999999998
	.quad	0x3feaaefb2aae2974              # double 0.83386000000000004
	.quad	0x3fef1e94ab1d4f9c              # double 0.97248299999999998
	.quad	0x3fe752eb5f5f0b28              # double 0.72887199999999996
	.quad	0x3fd2ce4217d2849d              # double 0.29383900000000002
	.quad	0x3fe13784662bae04              # double 0.53802700000000003
	.quad	0x3fc8bc382a12f901              # double 0.193244
	.quad	0x3fe0d206c8711d7a              # double 0.52563800000000005
	.quad	0x3fe3b24c8366516e              # double 0.61551500000000003
	.quad	0x3fe82fc47e49b1fb              # double 0.75583100000000003
	.quad	0x3fe5963779e9d0ea              # double 0.67458700000000005
	.quad	0x3fed67296f6512a9              # double 0.91884299999999997
	.quad	0x3fc3f24d8fd5cb79              # double 0.155832
	.quad	0x3fe5bf37b8d3f184              # double 0.67959199999999997
	.quad	0x3febce4ead0c3d25              # double 0.86893399999999998
	.quad	0x3fe7e0999dcb5782              # double 0.74616700000000002
	.quad	0x3fe63ac2df0d4131              # double 0.69467299999999998
	.quad	0x3fe38a6fc58ab92c              # double 0.610649
	.quad	0x3fbe8e4fb97bb731              # double 0.11935900000000001
	.quad	0x3fe8c77dd872f33d              # double 0.77435200000000004
	.quad	0x3fe12465a57646ae              # double 0.53569299999999997
	.quad	0x3fc8ca46e08f2171              # double 0.19367300000000001
	.quad	0x3fc2070329802c0a              # double 0.14083899999999999
	.quad	0x3fe52209aaa3ad19              # double 0.66040500000000002
	.quad	0x3fe88b3b320535ca              # double 0.76699600000000001
	.quad	0x3fec3b6aa4b9884c              # double 0.88225299999999995
	.quad	0x3fecda250f840182              # double 0.90162900000000001
	.quad	0x3fec2c3c9eecbfb1              # double 0.88039999999999996
	.quad	0x3feac24c404a72eb              # double 0.83621800000000002
	.quad	0x3fc624463065f959              # double 0.172982
	.quad	0x3fe3eaad1d041cc5              # double 0.62239699999999998
	.quad	0x3f7614df8b157258              # double 0.005391
	.quad	0x3fb52e514c22ee42              # double 0.082738000000000005
	.quad	0x3fde1f0c34c1a8ac              # double 0.47064499999999998
	.quad	0x3fe876e6106ab14f              # double 0.76451400000000003
	.quad	0x3fe092d98bf7f067              # double 0.517926
	.quad	0x3fd9d84901d19158              # double 0.40382600000000002
	.quad	0x3fe74189374bc6a8              # double 0.72675000000000001
	.quad	0x3fb3dc26dce39b45              # double 0.077577999999999994
	.quad	0x3feb35696e58a32f              # double 0.85026999999999997
	.quad	0x3fdd702e6644d877              # double 0.45997199999999999
	.quad	0x3fca303c07ee0b0b              # double 0.204597
	.quad	0x3fe0e99a62ed3522              # double 0.52851599999999999
	.quad	0x3fed729d40ee06d9              # double 0.92024099999999998
	.quad	0x3fd2acf7446f9b99              # double 0.29180699999999998
	.quad	0x3fbbdd76683c297c              # double 0.108848
	.quad	0x3fef70f16f4384ba              # double 0.98253699999999999
	.quad	0x3febb2f01754b05b              # double 0.86559299999999995
	.quad	0x3fe771a1986b9c30              # double 0.73262099999999997
	.quad	0x3fd9bb6672fba01f              # double 0.402063
	.quad	0x3fe5f3e89a88ace2              # double 0.68602399999999997
	.quad	0x3fde55475a31a4be              # double 0.47395500000000002
	.quad	0x3fe449c4da9003ef              # double 0.63400500000000004
	.quad	0x3fc29e98dcdb37ca              # double 0.14546500000000001
	.quad	0x3fdc899392189bd8              # double 0.44589699999999999
	.quad	0x3fe6fe414e7ee914              # double 0.71853699999999998
	.quad	0x3fe3c0181e03f706              # double 0.61719900000000005
	.quad	0x3fbeba6aca793576              # double 0.120032
	.quad	0x3fe508feac42e98a              # double 0.65734800000000004
	.quad	0x3fd91e29b6b2af14              # double 0.39246599999999998
	.quad	0x3fee4eebf65dbfcf              # double 0.94713400000000003
	.quad	0x3fe1c3ce2089e343              # double 0.55515199999999998
	.quad	0x3fe60218def416be              # double 0.68775600000000003
	.quad	0x3fe022af5771001d              # double 0.50423399999999996
	.quad	0x3fdabe6e653868fd              # double 0.41787299999999999
	.quad	0x3fbb5ba2be0589ad              # double 0.106867
	.quad	0x3fd9e85b9e8c47a1              # double 0.40480699999999997
	.quad	0x3fca0285ec3dab5c              # double 0.20320199999999999
	.quad	0x3fecd5e4a3832767              # double 0.90110999999999997
	.quad	0x3fdcb9a176ddacef              # double 0.44883000000000001
	.quad	0x3fee998aeb80ecfa              # double 0.95624299999999995
	.quad	0x3fb6ef8055fbb518              # double 0.089592000000000005
	.quad	0x3fd48c08b75ea67f              # double 0.32104700000000003
	.quad	0x3feb6f7a0b5ed8d3              # double 0.85735799999999995
	.quad	0x3fe4c9b413986339              # double 0.64962200000000003
	.quad	0x3fad27c393682731              # double 0.056944000000000002
	.quad	0x3fe29cb039ef0f17              # double 0.58162700000000001
	.quad	0x3fc90f0e90bc7b46              # double 0.195772
	.quad	0x3fc7e45803cd141a              # double 0.18665599999999999
	.quad	0x3fd16b2f23033a47              # double 0.27216699999999999
	.quad	0x3fc585d744f5d356              # double 0.16814699999999999
	.quad	0x3fd4b4e54f7a9197              # double 0.32354100000000002
	.quad	0x3fe47d9988d2a1f9              # double 0.64033200000000001
	.quad	0x3febcd7add15f02c              # double 0.86883299999999996
	.quad	0x3fef9d96e9bbf0dc              # double 0.98798699999999994
	.quad	0x3fe77c4199fe4367              # double 0.73391799999999996
	.quad	0x3fcfa543f1c75819              # double 0.24723100000000001
	.quad	0x3fdc919695d91ab9              # double 0.44638600000000001
	.quad	0x3fe9996fa82e87d3              # double 0.79998000000000002
	.quad	0x3feda82e87d2c7b9              # double 0.92678000000000005
	.quad	0x3feecf8d716d2aa6              # double 0.96283600000000003
	.quad	0x3fe1f2cd7cf5f4e4              # double 0.56088899999999997
	.quad	0x3fece7125dd095af              # double 0.90320699999999998
	.quad	0x3fe91f81a5870da6              # double 0.78509600000000002
	.quad	0x3fedbc579f234656              # double 0.92924099999999998
	.quad	0x3feae916440f2389              # double 0.84095299999999995
	.quad	0x3faedb940fecdd0e              # double 0.060269000000000003
	.quad	0x3fbd9ab6d00b45ae              # double 0.11564199999999999
	.quad	0x3fd9262456f75d9a              # double 0.392953
	.quad	0x3fe87a5b0ff10ecb              # double 0.76493599999999995
	.quad	0x3fb041fea8112ba1              # double 0.063506999999999994
	.quad	0x3fe67353b4b2fa94              # double 0.70157800000000003
	.quad	0x3fef243dccea28fe              # double 0.97317399999999998
	.quad	0x3febf102363b2570              # double 0.87317
	.quad	0x3fe44b4d056c508b              # double 0.63419199999999998
	.quad	0x3fead22424a276b8              # double 0.83815200000000001
	.quad	0x3fd3778140dd3fe2              # double 0.30416900000000002
	.quad	0x3fcc10b630a91538              # double 0.21926000000000001
	.quad	0x3fd7f559b3d07c85              # double 0.37435000000000002
	.quad	0x3fea14a90470a809              # double 0.81502200000000002
	.quad	0x3fd08c2a454de7ea              # double 0.25855499999999998
	.quad	0x3fe385f6ba0620ab              # double 0.61010299999999995
	.quad	0x3fccc0f88333fc87              # double 0.22463900000000001
	.quad	0x3fe2237cdcca70d2              # double 0.566832
	.quad	0x3fd2da0dfdef8488              # double 0.29455900000000002
	.quad	0x3febbb4916ca46e1              # double 0.86661200000000005
	.quad	0x3fe9012599ed7c70              # double 0.78139000000000003
	.quad	0x3fefe6149c6f36f0              # double 0.99683600000000006
	.quad	0x3fe8b8cb8e086bdf              # double 0.77255799999999997
	.quad	0x3fee538ef34d6a16              # double 0.94769999999999999
	.quad	0x3fbdad31fcd24e16              # double 0.115924
	.quad	0x3fc76512a94ff002              # double 0.18277199999999999
	.quad	0x3fc63a109d0635a4              # double 0.173647
	.quad	0x3fe8b82e44b6e936              # double 0.77248300000000003
	.quad	0x3fe1f28848387df6              # double 0.56085600000000002
	.quad	0x3fc93a0c6b484d77              # double 0.19708400000000001
	.quad	0x3fe13ed30f062d41              # double 0.53891900000000004
	.quad	0x3fe613f077ccc038              # double 0.68993400000000005
	.quad	0x3fc41040bfe3b03e              # double 0.156746
	.quad	0x3fdf16b54e2b063e              # double 0.485761
	.quad	0x3fb18e219652bd3c              # double 0.068574999999999997
	.quad	0x3f992a305532617c              # double 0.024575
	.quad	0x3fdcb84db9c7368b              # double 0.44874900000000001
	.quad	0x3fd780d3cff64cf9              # double 0.36723800000000001
	.quad	0x3f90fe047d3d4281              # double 0.016594000000000001
	.quad	0x3fc45c810a569b17              # double 0.15907299999999999
	.quad	0x3fe6ba14cec41dd2              # double 0.71021500000000004
	.quad	0x3fd9064a9cdc4439              # double 0.391009
	.quad	0x3fcc63beec39799e              # double 0.22179399999999999
	.quad	0x3fe4ffb04ee7c4a0              # double 0.65621200000000002
	.quad	0x3fa757f737da61e1              # double 0.045593000000000002
	.quad	0x3feb666a98244e94              # double 0.85625200000000001
	.quad	0x3fe9f911cf355cd9              # double 0.81165399999999999
	.quad	0x3fe1fdf19d66adb4              # double 0.562249
	.quad	0x3fc3e84f09528f19              # double 0.155527
	.quad	0x3fd1b7b6bb129025              # double 0.27683799999999997
	.quad	0x3feb30c4588a04d1              # double 0.84970299999999999
	.quad	0x3fa0dfdef8487b9a              # double 0.032958000000000001
	.quad	0x3face3369b9d7fd8              # double 0.056420999999999999
	.quad	0x3fb4c996b76709fa              # double 0.081200999999999995
	.quad	0x3fb591dde37585be              # double 0.084256999999999998
	.quad	0x3fe420ee8d10f51b              # double 0.62902000000000002
	.quad	0x3fee88ace24bba13              # double 0.95418400000000003
	.quad	0x3f83fa6defc7a398              # double 0.0097549999999999997
	.quad	0x3fe2e492bc2fc697              # double 0.59040199999999998
	.quad	0x3fed7b8f57f737da              # double 0.92133299999999996
	.quad	0x3fae698bb4d48883              # double 0.059399
	.quad	0x3fc994af4f0d844d              # double 0.19985
	.quad	0x3fa957eed45e9186              # double 0.049499000000000001
	.quad	0x3fde250b524399b3              # double 0.47101100000000001
	.quad	0x3fec61c36976bc1f              # double 0.886934
	.quad	0x3fed884c6a3bddfd              # double 0.92288800000000004
	.quad	0x3fe132af1455219b              # double 0.53743700000000005
	.quad	0x3fdde27179bfdf7f              # double 0.46694600000000003
	.quad	0x3fe08b0d0edc3bd6              # double 0.51697400000000004
	.quad	0x3fe602ea960b6fa0              # double 0.68785600000000002
	.quad	0x3fda3eee52589268              # double 0.41009099999999998
	.quad	0x3fe98060780fdc16              # double 0.79692099999999999
	.quad	0x3fb97a67a52ac754              # double 0.099524000000000001
	.quad	0x3fc4a79357603926              # double 0.16136400000000001
	.quad	0x3fd7a49c2c1b10fd              # double 0.36942199999999997
	.quad	0x3fec9845dc832336              # double 0.89358800000000005
	.quad	0x3fd9e7bc3c5bd0e1              # double 0.40476899999999999
	.quad	0x3fe6a784a9478c87              # double 0.70794900000000005
	.quad	0x3f90b9991361dc94              # double 0.016333
	.quad	0x3fed61d4306e5cd5              # double 0.91819200000000001
	.quad	0x3fe16b1a2a4db164              # double 0.54432400000000003
	.quad	0x3fe482afdda8bd23              # double 0.64095299999999999
	.quad	0x3fdf240746455eaf              # double 0.48657400000000001
	.quad	0x3fd32ee84ad794a7              # double 0.299738
	.quad	0x3fec4f93bc0a06ea              # double 0.884714
	.quad	0x3fe7b97353b4b2fb              # double 0.74138800000000005
	.quad	0x3fe7c2f837b4a234              # double 0.74255000000000004
	.quad	0x3fd1b05b7cfe5860              # double 0.276389
	.quad	0x3fe16013660e51d2              # double 0.54297799999999996
	.quad	0x3fb318655193708b              # double 0.074591000000000005
	.quad	0x3f92ebe596c82e02              # double 0.018478000000000001
	.quad	0x3fd9414a4d2b2bfe              # double 0.39461000000000002
	.quad	0x3fa01a1554fbdad7              # double 0.031448999999999998
	.quad	0x3fe7e4606748e475              # double 0.74662799999999996
	.quad	0x3fc0f95d4e8fb00c              # double 0.13261000000000001
	.quad	0x3f93a9f383f0bae9              # double 0.019203000000000001
	.quad	0x3feaf9bfdf7e8039              # double 0.84298700000000004
	.quad	0x3fc36295208e1501              # double 0.151446
	.quad	0x3fe310be9424e593              # double 0.59579400000000005
	.quad	0x3fe90198f1d3ed52              # double 0.78144499999999995
	.quad	0x3fd7cbaf965b20b8              # double 0.371807
	.quad	0x3fe6b3764f11b60b              # double 0.70940700000000001
	.quad	0x3fd9641700cd8559              # double 0.39673399999999998
	.quad	0x3fd136c9c0a8d21c              # double 0.26896900000000001
	.quad	0x3feac3914f483cb0              # double 0.83637300000000003
	.quad	0x3fd29cd8127b2cc7              # double 0.290823
	.quad	0x3fdfa44417870542              # double 0.49440099999999998
	.quad	0x3fe0ae05ccc89b0f              # double 0.52124300000000001
	.quad	0x3fe07cefaa4766c7              # double 0.51525100000000001
	.quad	0x3fd25379fa97e133              # double 0.28634500000000002
	.quad	0x3fde1c3265add9c2              # double 0.47047099999999997
	.quad	0x3fcf26c7eae5bc88              # double 0.243371
	.quad	0x3fd2ac9f2fdb8fde              # double 0.29178599999999999
	.quad	0x3fe5b3df2a9d627c              # double 0.678207
	.quad	0x3fd13aeab7995ee1              # double 0.26922099999999999
	.quad	0x3fee53ac4f7ec354              # double 0.94771399999999994
	.quad	0x3fbe5b0ff10ecb75              # double 0.118577
	.quad	0x3fec27b6fe2e6ea8              # double 0.87984799999999996
	.quad	0x3fd4e1e2de870974              # double 0.32628699999999999
	.quad	0x3fe64eebf65dbfcf              # double 0.69713400000000003
	.quad	0x3feb359ff4fd6d7f              # double 0.85029600000000005
	.quad	0x3fef6223e1869835              # double 0.98072999999999999
	.quad	0x3fb1fb71fbc5de9c              # double 0.070243
	.quad	0x3fe67a2cecc814d7              # double 0.70241399999999998
	.quad	0x3fe76fa82e87d2c8              # double 0.73238000000000003
	.quad	0x3fdaaf42784a9479              # double 0.41694700000000001
	.quad	0x3fe56c97d8cf398f              # double 0.66950600000000005
	.quad	0x3fe2cc55432873bd              # double 0.58744300000000005
	.quad	0x3fe58a350d2806af              # double 0.67312099999999997
	.quad	0x3fe06fd438d1d8a5              # double 0.51365099999999997
	.quad	0x3fe024c404a72eae              # double 0.50448800000000005
	.quad	0x3fe98088509bf9c6              # double 0.79693999999999998
	.quad	0x3fd3fc43b2dd377e              # double 0.31227199999999999
	.quad	0x3fd0c89f40a2877f              # double 0.26224500000000001
	.quad	0x3fd08c7192ea52f0              # double 0.25857200000000002
	.quad	0x3fdf55821294573a              # double 0.48959399999999997
	.quad	0x3faa5f84cad57bc8              # double 0.05151
	.quad	0x3fc2f0068db8bac7              # double 0.14795
	.quad	0x3fe85a4052d666aa              # double 0.76101700000000005
	.quad	0x3fd898b2e9ccb7d4              # double 0.38431999999999999
	.quad	0x3f7a5b9628cbd124              # double 0.0064349999999999997
	.quad	0x3fe3e013660e51d2              # double 0.62110299999999996
	.quad	0x3fca74080f98fa37              # double 0.20666599999999999
	.quad	0x3fcf12cadddf43c8              # double 0.242761
	.quad	0x3fcd3eb399f5dfec              # double 0.22847600000000001
	.quad	0x3fcb4bb5e0f7fcfc              # double 0.21324799999999999
	.quad	0x3fe2aa1d755bccaf              # double 0.58326599999999995
	.quad	0x3fd273d5bab21816              # double 0.28832000000000002
	.quad	0x3fcf28848387df5d              # double 0.243424
	.quad	0x3faa00c0f01fb82c              # double 0.050786999999999999
	.quad	0x3fea4b0e1b4bb5e1              # double 0.821662
	.quad	0x3fe659210385c67e              # double 0.69838
	.quad	0x3febaf2d7f950b95              # double 0.86513399999999996
	.quad	0x3fe77d5ed06fef7c              # double 0.73405399999999998
	.quad	0x3fd3f0bae89eba6b              # double 0.31156800000000001
	.quad	0x3fc49835158b8280              # double 0.16089500000000001
	.quad	0x3fe22305532617c2              # double 0.56677500000000003
	.quad	0x3fe06afcce1c5825              # double 0.51305999999999996
	.quad	0x3fc3da059a73b42d              # double 0.15509100000000001
	.quad	0x3fdcdb37c99ae925              # double 0.45088
	.quad	0x3fed71da37ef5a96              # double 0.92014799999999997
	.quad	0x3fe01461b6d43d04              # double 0.50248800000000005
	.quad	0x3fd9f505d0fa58f7              # double 0.40558
	.quad	0x3fafb17ce52deca2              # double 0.061900999999999998
	.quad	0x3fd4bdd334c5da6a              # double 0.32408599999999999
	.quad	0x3fdf63800218def4              # double 0.490448
	.quad	0x3fe17db6e503fb37              # double 0.54659599999999997
	.quad	0x3fecfa311e85fd05              # double 0.90554100000000004
	.quad	0x3fe2c87fcb923a2a              # double 0.58697500000000002
	.quad	0x3fe74914b167ec78              # double 0.72767099999999996
	.quad	0x3feb8389f83be660              # double 0.85980699999999998
	.quad	0x3fee005814940bbb              # double 0.93754199999999999
	.quad	0x3fe78fa376922d95              # double 0.73628400000000005
	.quad	0x3fe4ef2a5a469d73              # double 0.65419499999999997
	.quad	0x3fdaf03d145d8516              # double 0.42091299999999998
	.quad	0x3fbb79c842fa5094              # double 0.10732700000000001
	.quad	0x3fd8fe21d96e9bbf              # double 0.390511
	.quad	0x3fd20df9bdc69f8c              # double 0.28210299999999999
	.quad	0x3f83d4ae429e0a42              # double 0.0096830000000000006
	.quad	0x3fcbfdbd2fa0d77b              # double 0.21868099999999999
	.quad	0x3fe36ff1950331e4              # double 0.60741500000000004
	.quad	0x3fe922834d26fa40              # double 0.78546300000000002
	.quad	0x3fe34e22a2c23748              # double 0.60328800000000005
	.quad	0x3fe9e798958d9b5f              # double 0.80952100000000005
	.quad	0x3fd9647baa9b499d              # double 0.396758
	.quad	0x3fd46440f2389720              # double 0.31861899999999999
	.quad	0x3fdfa97e132b55ef              # double 0.49471999999999999
	.quad	0x3fe37e73a365cb36              # double 0.60918600000000001
	.quad	0x3fce50c5eb313be2              # double 0.23683999999999999
	.quad	0x3fe0572580c308ff              # double 0.51063800000000004
	.quad	0x3fef4c37e6f71a7e              # double 0.97805399999999998
	.quad	0x3fec04c059210386              # double 0.87558000000000002
	.quad	0x3feafb4a2339c0ec              # double 0.843175
	.quad	0x3fd60a67620ee8d1              # double 0.344385
	.quad	0x3fe59ffb480a5acd              # double 0.67577900000000002
	.quad	0x3feaf02a3486f04a              # double 0.84181700000000004
	.quad	0x3fd549a5657fb69a              # double 0.33262000000000003
	.quad	0x3fc0a93f290abb45              # double 0.130165
	.quad	0x3fdfa9c560c7c0f4              # double 0.49473699999999998
	.quad	0x3fe4a0dbad3a604e              # double 0.64463599999999999
	.quad	0x3fc2d5e8d5410f95              # double 0.14715300000000001
	.quad	0x3febf42fe82517e7              # double 0.87355799999999995
	.quad	0x3fe2c6994185058e              # double 0.58674300000000001
	.quad	0x3fed11a32b12d341              # double 0.90840299999999996
	.quad	0x3fc7af4adbc664d4              # double 0.18503700000000001
	.quad	0x3fe7766a55087011              # double 0.733205
	.quad	0x3fcbd017dae81883              # double 0.21728800000000001
	.quad	0x3f64898f605ab3ab              # double 0.0025070000000000001
	.quad	0x3fd2eec7c957cd46              # double 0.29582399999999998
	.quad	0x3fdf6262cba732df              # double 0.49037999999999998
	.quad	0x3fd7ffef39085f4a              # double 0.374996
	.quad	0x3fe0ac9afe1da7b1              # double 0.52107000000000003
	.quad	0x3fe40e23af31b153              # double 0.62672600000000001
	.quad	0x3fd4b324851a8694              # double 0.323434
	.quad	0x3fb1c5a3e39f7729              # double 0.069421999999999998
	.quad	0x3fd014e3bcd35a86              # double 0.25127500000000003
	.quad	0x3fdef0c77dd872f3              # double 0.48344599999999999
	.quad	0x3fd57008a697aede              # double 0.33496300000000001
	.quad	0x3fe40df58c08b75f              # double 0.62670400000000004
	.quad	0x3feeebce8533b107              # double 0.96628499999999994
	.quad	0x3fd8491f2dc2b0ea              # double 0.37946299999999999
	.quad	0x3fe7050374ff865d              # double 0.71936199999999995
	.quad	0x3feeb1a6d698fe69              # double 0.95918599999999998
	.quad	0x3fdcb4528283d35f              # double 0.44850600000000002
	.quad	0x3fe64ef240fa9c13              # double 0.69713700000000001
	.quad	0x3fd92edbb59ddc1e              # double 0.39348499999999997
	.quad	0x3fe404295a6c5d20              # double 0.62550799999999995
	.quad	0x3fe3f3cb3e5753a4              # double 0.62351000000000001
	.quad	0x3fd02e8c0485a0be              # double 0.25284099999999998
	.quad	0x3fde01bc98a222d5              # double 0.46885599999999999
	.quad	0x3fce0e0eb67c2870              # double 0.23480400000000001
	.quad	0x3fedd8b1dd5d3dc9              # double 0.93270200000000003
	.quad	0x3fe4e2ef4e0114d3              # double 0.652702
	.quad	0x3fe62b3cc4ac6cdb              # double 0.692778
	.quad	0x3fe3bd61f5be5d9e              # double 0.61686799999999997
	.quad	0x3fd75942917507ea              # double 0.36482300000000001
	.quad	0x3fd926634117f844              # double 0.39296799999999998
	.quad	0x3fe9d532617c1bda              # double 0.80727499999999996
	.quad	0x3fed1a2a4db163bb              # double 0.90944400000000003
	.quad	0x3fea8196d8f4f93c              # double 0.82831900000000002
	.quad	0x3fe170e6f2e8c048              # double 0.54503199999999996
	.quad	0x3fd0b5bf6a0dbad4              # double 0.26109300000000002
	.quad	0x3fe69eadd590c0ad              # double 0.70687
	.quad	0x3fc84180d3cff64d              # double 0.189499
	.quad	0x3fea567dbb16c1e3              # double 0.82305799999999996
	.quad	0x3fa739085f4a1273              # double 0.045357000000000001
	.quad	0x3fd688e79aae6c8f              # double 0.35210599999999997
	.quad	0x3fa5d80e496ededb              # double 0.042664000000000001
	.quad	0x3fe01044f1a1986c              # double 0.50198600000000004
	.quad	0x3fea96a8b8f14db6              # double 0.83089100000000005
	.quad	0x3fdba36199780baa              # double 0.43184699999999998
	.quad	0x3fe95f0d413122b8              # double 0.79285300000000003
	.quad	0x3fec5e4e69f05ea2              # double 0.88651199999999997
	.quad	0x3fc19f77292c4934              # double 0.137679
	.quad	0x3feebcd78c436fc1              # double 0.96055199999999996
	.quad	0x3feff05857afea3e              # double 0.998089
	.quad	0x3fe47cfa26a22b39              # double 0.64025600000000005
	.quad	0x3fcfc3a42f1ed17c              # double 0.24815799999999999
	.quad	0x3fc19e8c47a17f41              # double 0.137651
	.quad	0x3fe9895d0b73d189              # double 0.79801800000000001
	.quad	0x3fde296f6512a950              # double 0.471279
	.quad	0x3fef498a222d5172              # double 0.97772700000000001
	.quad	0x3fd0cadddf43c7d6              # double 0.262382
	.quad	0x3fc70c564f97edc8              # double 0.180064
	.quad	0x3fd67c17a89331a1              # double 0.35132400000000003
	.quad	0x3f85d4e8fb00bcbe              # double 0.010659999999999999
	.quad	0x3fc895e9e1b089a0              # double 0.192075
	.quad	0x3fe3f5c6c11a1123              # double 0.62375199999999997
	.quad	0x3fa7587d6f976790              # double 0.045596999999999999
	.quad	0x3feb9841aac53b08              # double 0.86233599999999999
	.quad	0x3fd0f1a5ca29845e              # double 0.26474900000000001
	.quad	0x3fe63691212513b6              # double 0.69416100000000003
	.quad	0x3fef4b74ddf86e3b              # double 0.97796099999999996
	.quad	0x3fd1792d1287c201              # double 0.27302100000000001
	.quad	0x3fdde0ef99806f26              # double 0.46685399999999999
	.quad	0x3fe3ce8fb00bcbe6              # double 0.61896499999999999
	.quad	0x3fe3ec84f8f8a4c2              # double 0.62262200000000001
	.quad	0x3fa35f809917939a              # double 0.037837999999999997
	.quad	0x3fadc67dfe32a066              # double 0.058154999999999998
	.quad	0x3fd9ce8101f31f47              # double 0.403229
	.quad	0x3fc0f91a32b12d34              # double 0.132602
	.quad	0x3fb27ab7564302b4              # double 0.072184999999999999
	.quad	0x3feb67fb267c6b8b              # double 0.85644299999999995
	.quad	0x3fd8e379b77c02b0              # double 0.38888400000000001
	.quad	0x3fd769ced0b30b5b              # double 0.36583300000000002
	.quad	0x3fc108dd1e53a81e              # double 0.13308300000000001
	.quad	0x3fc0ab367a0f9097              # double 0.13022500000000001
	.quad	0x3fe3a459103c8e26              # double 0.61381200000000002
	.quad	0x3fa528d002e23290              # double 0.041327000000000003
	.quad	0x3fefb020c49ba5e3              # double 0.99024999999999996
	.quad	0x3facc22ee41919ac              # double 0.056168999999999997
	.quad	0x3fd4723ee1bd1eda              # double 0.31947300000000001
	.quad	0x3fef6e3d5fdcdf6a              # double 0.98220700000000005
	.quad	0x3fc5f2c3009b3073              # double 0.17147100000000001
	.quad	0x3fe22771c970f7ba              # double 0.56731500000000001
	.quad	0x3fe2ca5df2239e6b              # double 0.58720300000000003
	.quad	0x3fe248e4755ffe6d              # double 0.57139799999999996
	.quad	0x3fe0acb20fb224ab              # double 0.52108100000000002
	.quad	0x3fcb8ec0f88333fd              # double 0.21529400000000001
	.quad	0x3fe20fd199bb2789              # double 0.56443100000000002
	.quad	0x3fe872d7f950b956              # double 0.764019
	.quad	0x3fcdc2eba27ae9ab              # double 0.232511
	.quad	0x3fd56aa8eb463498              # double 0.33463500000000002
	.quad	0x3fad9e6256366d7a              # double 0.057848999999999998
	.quad	0x3fe3326e115592da              # double 0.59990600000000005
	.quad	0x3fddfd32c625e99f              # double 0.46857900000000002
	.quad	0x3fa584901d19157b              # double 0.042027000000000002
	.quad	0x3fe47972474538ef              # double 0.63982499999999998
	.quad	0x3fe77b480a5accd5              # double 0.73379899999999998
	.quad	0x3fc5adf2ecf20642              # double 0.16937099999999999
	.quad	0x3faaaa5c5f7c675a              # double 0.052081000000000002
	.quad	0x3fea2528ae74f2f1              # double 0.81703599999999998
	.quad	0x3fecdc11e42e1262              # double 0.901864
	.quad	0x3fe45be5d9e40c84              # double 0.63621799999999995
	.quad	0x3fc8d940789613d3              # double 0.19413
	.quad	0x3feca582dbe7f2c3              # double 0.895204
	.quad	0x3fed9094a2b9d3cc              # double 0.92389900000000002
	.quad	0x3fd6e70c1333b96b              # double 0.357852
	.quad	0x3fe084a0e410b631              # double 0.51619000000000004
	.quad	0x3fd24c48adeebb34              # double 0.28590599999999999
	.quad	0x3fe5b608d08919f0              # double 0.67847100000000005
	.quad	0x3fe13b73083558a7              # double 0.53850699999999996
	.quad	0x3fee02235b4edb2f              # double 0.93776099999999996
	.quad	0x3fd380baa582dbe8              # double 0.304732
	.quad	0x3fcbcdc443914f48              # double 0.21721699999999999
	.quad	0x3fd8d27c39368273              # double 0.387847
	.quad	0x3fe71b0ee49f5169              # double 0.72205299999999994
	.quad	0x3fe4aa4766c6de76              # double 0.64578599999999997
	.quad	0x3fcad434a01abd1b              # double 0.20960100000000001
	.quad	0x3fdf302b40f66a55              # double 0.487315
	.quad	0x3fcb31a8ef77f280              # double 0.212453
	.quad	0x3fd24230fcf80dc3              # double 0.28528999999999999
	.quad	0x3feeb13165d39970              # double 0.95913000000000004
	.quad	0x3fee387bdcf0307f              # double 0.94439499999999998
	.quad	0x3fd0456f75d9a0f1              # double 0.25423800000000002
	.quad	0x3fe1c9be8ff327aa              # double 0.55587699999999995
	.quad	0x3fa5d11be6e65387              # double 0.042611000000000003
	.quad	0x3fe9eb76709fa54c              # double 0.80999299999999996
	.quad	0x3fee0f2389720429              # double 0.93934799999999996
	.quad	0x3fdecda6e75ff60a              # double 0.48130200000000001
	.quad	0x3feb9a176ddaceee              # double 0.86255999999999999
	.quad	0x3feede6ddf00abf7              # double 0.96465199999999995
	.quad	0x3fb54b380cb6c7a8              # double 0.083179000000000003
	.quad	0x3fec68900c521dda              # double 0.887764
	.quad	0x3fea20f2becedd48              # double 0.81652199999999997
	.quad	0x3fe6321e603d5779              # double 0.69361799999999996
	.quad	0x3fe1126a65cf67b2              # double 0.53349800000000003
	.quad	0x3fd1b191dde37586              # double 0.27646300000000001
	.quad	0x3fc6977c88e79aae              # double 0.17649799999999999
	.quad	0x3fd80dcb9a9da598              # double 0.37584200000000001
	.quad	0x3fef0a73f748a15a              # double 0.97002600000000005
	.quad	0x3fe7248d7e02645e              # double 0.72321199999999997
	.quad	0x3fe54282c6ef3d3a              # double 0.66436899999999999
	.quad	0x3fc32a0663c74fb5              # double 0.14971999999999999
	.quad	0x3fe7dc853c148345              # double 0.74566900000000003
	.quad	0x3fef5a3c21187e7c              # double 0.97976499999999999
	.quad	0x3fbde8d5410f94c8              # double 0.11683399999999999
	.quad	0x3fc77b84db9c7369              # double 0.18345700000000001
	.quad	0x3fe8455eaee2003b              # double 0.75846800000000003
	.quad	0x3fa9569f4906034f              # double 0.049488999999999998
	.quad	0x3fefe6e221c8a7a4              # double 0.99693399999999998
	.quad	0x3fe9369db65ecc3e              # double 0.78791699999999998
	.quad	0x3fe992f901083dbc              # double 0.79919099999999998
	.quad	0x3fb6be27179bfdf8              # double 0.088839000000000001
	.quad	0x3fd1cdf266ba493d              # double 0.27819500000000003
	.quad	0x3fd32cba732df506              # double 0.29960500000000001
	.quad	0x3fcee6b8305d95dd              # double 0.24141599999999999
	.quad	0x3fde054ac29bf163              # double 0.46907300000000002
	.quad	0x3fe862845996744b              # double 0.76202599999999998
	.quad	0x3fe4dcaafbc1acde              # double 0.65193699999999999
	.quad	0x3fee2b53d640e9d5              # double 0.94278899999999999
	.quad	0x3fe591b823c85c25              # double 0.67403800000000003
	.quad	0x3fee922d948dc11e              # double 0.95534399999999997
	.quad	0x3fd07689ca18bd66              # double 0.25723499999999999
	.quad	0x3fccf91a32b12d34              # double 0.226352
	.quad	0x3fe605186db50f41              # double 0.68812200000000001
	.quad	0x3fde431bde82d7b6              # double 0.47284599999999999
	.quad	0x3feda2749f0e4da1              # double 0.92608100000000004
	.quad	0x3fe1e4b018611fd6              # double 0.55916600000000005
	.quad	0x3fe07c200c0f01fc              # double 0.51515200000000005
	.quad	0x3fe5da964e8b7e4e              # double 0.68293300000000001
	.quad	0x3fd0b5cbff47735c              # double 0.26109599999999999
	.quad	0x3fe66d655e28aa43              # double 0.70085399999999998
	.quad	0x3f90bd87b56b8738              # double 0.016348000000000001
	.quad	0x3fc36e04c0592104              # double 0.15179500000000001
	.quad	0x3fed2263d816aceb              # double 0.91044800000000004
	.quad	0x3fe32fd113836a83              # double 0.59958699999999998
	.quad	0x3fea32702a3486f0              # double 0.81865699999999997
	.quad	0x3fd137eb28d8665e              # double 0.269038
	.quad	0x3fe3fb17ce52deca              # double 0.62440099999999998
	.quad	0x3fda0efdc9c4da90              # double 0.407165
	.quad	0x3fd06d612c6ac216              # double 0.25667600000000002
	.quad	0x3fe4b94d94078961              # double 0.64761999999999997
	.quad	0x3f9013660e51d25b              # double 0.015699000000000001
	.quad	0x3fb04cbe1eb4202e              # double 0.063671000000000005
	.quad	0x3fec5b5525cc4263              # double 0.88614899999999996
	.quad	0x3fe26138fffbce42              # double 0.57436799999999999
	.quad	0x3fca45ed4a1ad645              # double 0.205259
	.quad	0x3fca0fecdd0d8cb0              # double 0.20361099999999999
	.quad	0x3fedccf8d716d2aa              # double 0.93127099999999996
	.quad	0x3fe9e90ff9724745              # double 0.80969999999999998
	.quad	0x3fe61f14983d7907              # double 0.69129399999999996
	.quad	0x3fe358afc47e49b2              # double 0.604576
	.quad	0x3fe2780346dc5d64              # double 0.57715000000000005
	.quad	0x3fdd4117f84449dc              # double 0.457098
	.quad	0x3fb4fb65668c2614              # double 0.081961000000000006
	.quad	0x3fdb0e453d20f2bf              # double 0.42274600000000001
	.quad	0x3fe0c2efd438d1d9              # double 0.52379600000000004
	.quad	0x3fed4cd74927913f              # double 0.91563000000000005
	.quad	0x3fda86e7e62dc6e3              # double 0.41448400000000002
	.quad	0x3fb2454de7ea5f85              # double 0.071370000000000003
	.quad	0x3fef10b84988094e              # double 0.97079099999999996
	.quad	0x3fd8a6b50b0f27bb              # double 0.38517499999999999
	.quad	0x3f970c996b7670a0              # double 0.022509000000000001
	.quad	0x3fdf8a936c58eeaf              # double 0.49283300000000002
	.quad	0x3fe5a8997c3d6840              # double 0.67683099999999996
	.quad	0x3f974c4cdfaca362              # double 0.022752000000000001
	.quad	0x3fea2b6f19934efd              # double 0.81780200000000003
	.quad	0x3fe1bd7b2031ceaf              # double 0.55437999999999998
	.quad	0x3fd1c868b9fdbd30              # double 0.27785700000000002
	.quad	0x3fe8b68f08461f9f              # double 0.772285
	.quad	0x3fe93e9c886162f1              # double 0.78889299999999996
	.quad	0x3fe910f0e90bc7b4              # double 0.78331799999999995
	.quad	0x3fd84a9478c868ba              # double 0.379552
	.quad	0x3fe228c154c985f0              # double 0.56747499999999995
	.quad	0x3feaf75fb2edfe76              # double 0.84269700000000003
	.quad	0x3fe7f03afb7e9100              # double 0.74807500000000005
	.quad	0x3fcb24c8366516db              # double 0.21206
	.quad	0x3fad084e831ad213              # double 0.056703999999999997
	.quad	0x3fd7056c508b32cf              # double 0.35970600000000003
	.quad	0x3fcabfe3b03e20cd              # double 0.208981
	.quad	0x3fbf9d1b2e59af9f              # double 0.123491
	.quad	0x3feca413db7f1737              # double 0.89502899999999996
	.quad	0x3fc70aaa7ded6ba9              # double 0.18001300000000001
	.quad	0x3fdd01a79fec99f2              # double 0.45322600000000002
	.quad	0x3fe66c204f2ae07e              # double 0.70069899999999996
	.quad	0x3f86c0d6f544bb1b              # double 0.01111
	.quad	0x3fc27ea5f84cad58              # double 0.14449000000000001
	.quad	0x3fd7bb341e14bdfd              # double 0.37080099999999999
	.quad	0x3feaea337a80cf9e              # double 0.84108899999999998
	.quad	0x3fec9bb4916ca46e              # double 0.894007
	.quad	0x3fe1024b33daf8df              # double 0.53152999999999995
	.quad	0x3fea3e3193f6c26a              # double 0.82009200000000004
	.quad	0x3fea641d4b6a619e              # double 0.82472100000000004
	.quad	0x3fb7c5260f5e41d5              # double 0.092852000000000004
	.quad	0x3fe8928e0c9d9d34              # double 0.76788999999999996
	.quad	0x3f7832fcac8e68e4              # double 0.0059080000000000001
	.quad	0x3fea680389f83be6              # double 0.82519699999999996
	.quad	0x3fe94f70153bd167              # double 0.79094699999999996
	.quad	0x3f82b5e529bae46d              # double 0.009136
	.quad	0x3fc7c8b86b15f890              # double 0.18581300000000001
	.quad	0x3fe11737542a23c0              # double 0.534084
	.quad	0x3fef8435efa615a9              # double 0.98488900000000001
	.quad	0x3fd59d55e6bc621b              # double 0.33772799999999997
	.quad	0x3fef0fcd67fd3f5b              # double 0.97067899999999995
	.quad	0x3fc3ebf22c01e68a              # double 0.155638
	.quad	0x3fede2d1f1cfbb95              # double 0.93393800000000005
	.quad	0x3fd969552e2fbe34              # double 0.39705400000000002
	.quad	0x3fdd0ecfa69be09c              # double 0.45402900000000002
	.quad	0x3feca7546d3f9e7c              # double 0.89542600000000005
	.quad	0x3fe493ff25e56cd7              # double 0.64306600000000003
	.quad	0x3fe29a47a9e2bcf9              # double 0.58133299999999999
	.quad	0x3fe050917d6b65aa              # double 0.50983500000000004
	.quad	0x3fb92ae8e1d6494d              # double 0.098310999999999996
	.quad	0x3fdddcebfec13b9f              # double 0.466609
	.quad	0x3fedf54f3775b813              # double 0.936195
	.quad	0x3fef212d77318fc5              # double 0.97279999999999999
	.quad	0x3fb6a38b8ae31d71              # double 0.088432999999999998
	.quad	0x3fe4f35e310dbf05              # double 0.65470799999999996
	.quad	0x3fe51a2a4db163bb              # double 0.65944400000000003
	.quad	0x3fc4193b3a68b19a              # double 0.15701999999999999
	.quad	0x3fe7c67dfe32a066              # double 0.74297999999999997
	.quad	0x3fe73b1af3a14cec              # double 0.72596499999999997
	.quad	0x3feaa52ce032db1f              # double 0.83266300000000004
	.quad	0x3fc2d330941c8217              # double 0.14707000000000001
	.quad	0x3fe5502eec7c957d              # double 0.66603800000000002
	.quad	0x3fc963886594af4f              # double 0.19835
	.quad	0x3fe54e8fb00bcbe6              # double 0.66583999999999999
	.quad	0x3fce1ce6c093d966              # double 0.23525699999999999
	.quad	0x3fea6d4c33b53932              # double 0.82584199999999996
	.quad	0x3fdf460aa64c2f83              # double 0.48864999999999997
	.quad	0x3fd5ac0c62e4d1a6              # double 0.33862599999999998
	.quad	0x3fefe78c0053e2d6              # double 0.99701499999999998
	.quad	0x3fe6bc558644523f              # double 0.71048999999999995
	.quad	0x3fc34477ff151e75              # double 0.15052699999999999
	.quad	0x3fd10f8c64fdb09a              # double 0.26657399999999998
	.quad	0x3fd53305100a393f              # double 0.33123900000000001
	.quad	0x3fcd6ae7d566cf42              # double 0.229825
	.quad	0x3fc51361dc93ea2d              # double 0.16465399999999999
	.quad	0x3fc29f05ea24cc68              # double 0.145478
	.quad	0x3fe0575e2046c765              # double 0.51066500000000004
	.quad	0x3fef99e731d2e0e3              # double 0.98753699999999999
	.quad	0x3fd24a9cdc443915              # double 0.285804
	.quad	0x3fe1a3d0bfa09460              # double 0.55124700000000004
	.quad	0x3fd86238da3c2118              # double 0.38099499999999997
	.quad	0x3fd6b7b28954a7f8              # double 0.354962
	.quad	0x3fd78e29f9ce8d97              # double 0.36805199999999999
	.quad	0x3fcf1d92b7fe08af              # double 0.24309
	.quad	0x3fef7314ca925fe9              # double 0.98279799999999994
	.quad	0x3fe6223e18698351              # double 0.69167999999999996
	.quad	0x3fe36a91d9b1b79e              # double 0.60675900000000005
	.quad	0x3fea2352eb5f5f0b              # double 0.81681199999999998
	.quad	0x3fc87589efd86a90              # double 0.19108700000000001
	.quad	0x3fe02e642bf9830e              # double 0.50566299999999997
	.quad	0x3fe6e3a9f383f0bb              # double 0.71529100000000001
	.quad	0x3fc5f1c75818c5ca              # double 0.17144100000000001
	.quad	0x3fa0ce4ead0c3d25              # double 0.032823999999999999
	.quad	0x3fe6f214f0520d13              # double 0.71705099999999999
	.quad	0x3fd306b37867f0aa              # double 0.29728399999999999
	.quad	0x3fedb480a5accd53              # double 0.928284
	.quad	0x3febc6aa087ca644              # double 0.86800100000000002
	.quad	0x3fa76837f7be121f              # double 0.045717000000000001
	.quad	0x3fed1c0a8d21bc12              # double 0.90967299999999995
	.quad	0x3fd129a1b9f98b72              # double 0.26816600000000002
	.quad	0x3fe74a6eb91b3f21              # double 0.72783600000000004
	.quad	0x3fed0a3b57c4e2f3              # double 0.90749899999999994
	.quad	0x3fe4dd95dd4c76d1              # double 0.65204899999999999
	.quad	0x3fe624fca42aed14              # double 0.69201500000000005
	.quad	0x3fd7ec4e7253da73              # double 0.37379800000000002
	.quad	0x3fc47ad080b673c5              # double 0.159998
	.quad	0x3fc74cc25072085b              # double 0.18203
	.quad	0x3fd3a9fbe76c8b44              # double 0.30725000000000002
	.quad	0x3fc5b36bd2b6f199              # double 0.16953799999999999
	.quad	0x3fee5193708aac97              # double 0.94745800000000002
	.quad	0x3fc5249e44fa0514              # double 0.16517999999999999
	.quad	0x3fdd965b20b8066c              # double 0.46230199999999999
	.quad	0x3fe3fc6b8b69552e              # double 0.62456299999999998
	.quad	0x3fd143e5321e603d              # double 0.26976899999999998
	.quad	0x3fc969984a0e410b              # double 0.19853499999999999
	.quad	0x3fe4ebd6e8af8162              # double 0.65378899999999995
	.quad	0x3fe3d29131ec0b56              # double 0.61945399999999995
	.quad	0x3fc5a9c99285a922              # double 0.16924400000000001
	.quad	0x3fe81f16b11c6d1e              # double 0.75379499999999999
	.quad	0x3fd4f1d3ed527e52              # double 0.32726
	.quad	0x3fee98dac258d584              # double 0.95615899999999998
	.quad	0x3fd6c4c5974e65bf              # double 0.35576000000000002
	.quad	0x3fcd5d9a0f0a5eff              # double 0.22941900000000001
	.quad	0x3fec07980f55de59              # double 0.87592700000000001
	.quad	0x3fe04ad14a0a0f4d              # double 0.50913299999999995
	.quad	0x3fe60305d95dd4c7              # double 0.68786899999999995
	.quad	0x3fe5c62a1b5c7cd9              # double 0.68044000000000004
	.quad	0x3fe00a65492ff4ba              # double 0.50126899999999996
	.quad	0x3fe3091c087442c8              # double 0.594862
	.quad	0x3fcb8023a6ce3583              # double 0.21484800000000001
	.quad	0x3fd85a187a4a48f9              # double 0.38049899999999998
	.quad	0x3fe664c942d490e6              # double 0.69980299999999995
	.quad	0x3fb72702a3486f05              # double 0.090439000000000005
	.quad	0x3fc2e2541d8e8640              # double 0.147532
	.quad	0x3fdf50e347629521              # double 0.48931200000000002
	.quad	0x3fc216aceaaf35e3              # double 0.141317
	.quad	0x3fe5cb1897a67a53              # double 0.68104200000000004
	.quad	0x3fec3b01c92ddbdb              # double 0.88220299999999996
	.quad	0x3fb983b60285ec3e              # double 0.099666000000000004
	.quad	0x3fbd8d5842b734b5              # double 0.115438
	.quad	0x3fe57f69014b599b              # double 0.67180300000000004
	.quad	0x3fda97edc7ef177a              # double 0.41552299999999998
	.quad	0x3fca87e38eb0318c              # double 0.20727200000000001
	.quad	0x3fe839ecf6380022              # double 0.75707100000000005
	.quad	0x3fc5c66d373affb0              # double 0.17011799999999999
	.quad	0x3fdb2fc69728a611              # double 0.42479099999999997
	.quad	0x3fea7ae147ae147b              # double 0.82750000000000001
	.quad	0x3fef280064a9cdc4              # double 0.97363299999999997
	.quad	0x3feecf00ef1348b2              # double 0.96276899999999999
	.quad	0x3fd868943e100608              # double 0.38138300000000003
	.quad	0x3fdaa2a4db163bac              # double 0.41617700000000002
	.quad	0x3fe559d7774aba38              # double 0.66721699999999995
	.quad	0x3fdfcf312b1b36bd              # double 0.49702099999999999
	.quad	0x3fedc5a1cac08312              # double 0.93037499999999995
	.quad	0x3fb5844d013a92a3              # double 0.08405
	.quad	0x3fba16d6dc1a47aa              # double 0.101911
	.quad	0x3fd1554b8bef8ceb              # double 0.27083099999999999
	.quad	0x3fc4ee0f3cb3e575              # double 0.16351499999999999
	.quad	0x3febb93682730c67              # double 0.86635899999999999
	.quad	0x3fd0a5269595feda              # double 0.26007999999999998
	.quad	0x3fd82aae297396d1              # double 0.37760500000000002
	.quad	0x3fee194185058dde              # double 0.94058299999999995
	.quad	0x3fe6e53c9abb01c9              # double 0.71548299999999998
	.quad	0x3fe093986338b47c              # double 0.51801699999999995
	.quad	0x3fde6ce789e774ef              # double 0.47539700000000001
	.quad	0x3fdb20ea5b530ced              # double 0.42388399999999998
	.quad	0x3fe83d1ed9dfdac7              # double 0.75746100000000005
	.quad	0x3fee9975f2cb6417              # double 0.956233
	.quad	0x3fe94046412cf0fa              # double 0.78909600000000002
	.quad	0x3fced6777079e59f              # double 0.24092
	.quad	0x3fe0f9a49c2c1b11              # double 0.530474
	.quad	0x3fb416aceaaf35e3              # double 0.078470999999999999
	.quad	0x3fd4f93bc0a06ea0              # double 0.327712
	.quad	0x3feca7e308787486              # double 0.89549400000000001
	.quad	0x3fe70e8ea39c51db              # double 0.72052700000000003
	.quad	0x3fdba875d56f32be              # double 0.43215700000000001
	.quad	0x3f9e63e8dda48b65              # double 0.029678
	.quad	0x3fd7f49cf56eac86              # double 0.374305
	.quad	0x3fddd29131ec0b56              # double 0.46597699999999997
	.quad	0x3fe1775104d551d7              # double 0.54581500000000005
	.quad	0x3fc3afb7e90ff972              # double 0.15379999999999999
	.quad	0x3fcd7f6b1a2a4db1              # double 0.23045099999999999
	.quad	0x3fd3985271bcdbbe              # double 0.306172
	.quad	0x3faeb8f9b13165d4              # double 0.060005000000000003
	.quad	0x3fe3e162f166e009              # double 0.62126300000000001
	.quad	0x3fb8644523f67f4e              # double 0.095280000000000003
	.quad	0x3fe185ccc89b0ee5              # double 0.54758300000000004
	.quad	0x3fcaa89fc6da4485              # double 0.20827100000000001
	.quad	0x3fe7f605ab3aabcd              # double 0.74878199999999995
	.quad	0x3feef7b17ce52ded              # double 0.96773600000000004
	.quad	0x3fece657b84db9c7              # double 0.90311799999999998
	.quad	0x3fe99b5e95b78cca              # double 0.80021600000000004
	.quad	0x3fd5ba9d1f601798              # double 0.33951500000000001
	.quad	0x3fe8e20ab7132724              # double 0.77759299999999997
	.quad	0x3fe00b2c83ec892b              # double 0.50136400000000003
	.quad	0x3f9858793dd97f63              # double 0.023775000000000001
	.quad	0x3fd39c7bcc2938de              # double 0.30642599999999998
	.quad	0x3fd5135daad60200              # double 0.32930700000000002
	.quad	0x3fece69057d1782d              # double 0.90314499999999998
	.quad	0x3febac53b0813cac              # double 0.86478600000000005
	.quad	0x3fed4aa53fc00970              # double 0.91536200000000001
	.quad	0x3fe94dd50a88effe              # double 0.79075099999999998
	.quad	0x3fe3a1554fbdad75              # double 0.61344399999999999
	.quad	0x3fe4778feef5ec81              # double 0.63959500000000002
	.quad	0x3feca393ee5eedcc              # double 0.89496799999999998
	.quad	0x3fdd4cad57bc7f78              # double 0.45780500000000002
	.quad	0x3fe93f85510d38ce              # double 0.78900400000000004
	.quad	0x3fe4db0574b40703              # double 0.65173599999999998
	.quad	0x3fee86a8fc0d2c38              # double 0.95393799999999995
	.quad	0x3fdff4d37c1376d5              # double 0.49931799999999998
	.quad	0x3fe6ad362e903644              # double 0.70864400000000005
	.quad	0x3fee70307f23cc8e              # double 0.95119500000000001
	.quad	0x3fda4877681669cf              # double 0.41067300000000001
	.quad	0x3fda2b1f687b139d              # double 0.40888200000000002
	.quad	0x3fe4306c43f5f916              # double 0.630911
	.quad	0x3feec8a9bcfd4bf1              # double 0.96199500000000004
	.quad	0x3fe8183947496aad              # double 0.75295699999999999
	.quad	0x3fd03c536d655e29              # double 0.25368200000000002
	.quad	0x3fce061847f56217              # double 0.23456099999999999
	.quad	0x3feadc182ecaeea6              # double 0.83936699999999997
	.quad	0x3fe3b7e6f71a7e31              # double 0.61619900000000005
	.quad	0x3fe00fb86f47b678              # double 0.501919
	.quad	0x3fef46dc5d638866              # double 0.97740000000000005
	.quad	0x3fe77368ad688377              # double 0.73283799999999999
	.quad	0x3fe1110c2c5e2cdc              # double 0.533331
	.quad	0x3fe25058dde7a744              # double 0.57230800000000004
	.quad	0x3fdc1b10fd7e4580              # double 0.43915199999999999
	.quad	0x3fe9e06fac6045bb              # double 0.808647
	.quad	0x3fee46a3bddfca00              # double 0.94612300000000004
	.quad	0x3fb13250b524399b              # double 0.067173999999999998
	.quad	0x3fda4c8ffb8b2639              # double 0.41092299999999998
	.quad	0x3fe2520afa2f05a7              # double 0.572515
	.quad	0x3f87dd872f33ca32              # double 0.011653
	.quad	0x3fc9bb83cf2cf95d              # double 0.20103499999999999
	.quad	0x3fbfa43fe5c91d15              # double 0.1236
	.quad	0x3fc331550ca1cef2              # double 0.14994299999999999
	.quad	0x3feff3a57eaa2a0b              # double 0.99849200000000004
	.quad	0x3fb915379fa97e13              # double 0.097979999999999998
	.quad	0x3fd6e7ee9142b303              # double 0.357906
	.quad	0x3fcb0a02b841248d              # double 0.21124299999999999
	.quad	0x3fe7715a4acf312b              # double 0.73258699999999999
	.quad	0x3fe7a3443d46b26c              # double 0.73868
	.quad	0x3fe44bb5e0f7fcfc              # double 0.63424199999999997
	.quad	0x3feb296d4c33b539              # double 0.84880699999999998
	.quad	0x3fe4394d94078961              # double 0.63199499999999997
	.quad	0x3f7118c197e56473              # double 0.0041739999999999998
	.quad	0x3fecd03d9a95421c              # double 0.90041999999999999
	.quad	0x3fd3649906cca2db              # double 0.30301499999999998
	.quad	0x3fd7b9d7fd82773e              # double 0.37071799999999999
	.quad	0x3fb8f0a5efe93187              # double 0.097421999999999995
	.quad	0x3fde87a4a48f96e1              # double 0.47702899999999998
	.quad	0x3fec482385404641              # double 0.88380599999999998
	.quad	0x3fe19f87f023e9ea              # double 0.55072399999999999
	.quad	0x3fdf2a51e321a2e8              # double 0.486958
	.quad	0x3fdd10dbf0563ed1              # double 0.454154
	.quad	0x3fe1f8e5c4eb56fc              # double 0.56163300000000005
	.quad	0x3fedeae9ee45c359              # double 0.93492600000000003
	.quad	0x3fe58d9d7774aba4              # double 0.67353700000000005
	.quad	0x3fd6515ce9e5e248              # double 0.34871600000000003
	.quad	0x3feecd44567125dd              # double 0.96255699999999999
	.quad	0x3fd31f926c7eae5c              # double 0.29880200000000001
	.quad	0x3f978140dd3fe197              # double 0.022953999999999999
	.quad	0x3fe7e85553ef6b5d              # double 0.74711099999999997
	.quad	0x3fefc7064ece9a2c              # double 0.99304499999999995
	.quad	0x3fc928ae74f2f124              # double 0.19655400000000001
	.quad	0x3fa97f4128bf3beb              # double 0.049799000000000003
	.quad	0x3fe4b7de939eadd6              # double 0.64744500000000005
	.quad	0x3fc57c99ae924f22              # double 0.16786499999999999
	.quad	0x3fe34b09e98dcdb3              # double 0.60290999999999995
	.quad	0x3fc649e44fa05144              # double 0.17413000000000001
	.quad	0x3fe5088f861a60d4              # double 0.65729499999999996
	.quad	0x3fe866e86c6583e8              # double 0.76256199999999996
	.quad	0x3fcd0d2806af46aa              # double 0.226964
	.quad	0x3fe6848387df5cf2              # double 0.70367599999999997
	.quad	0x3fda9f83be6601bd              # double 0.41598600000000002
	.quad	0x3fe10bc7b45f17be              # double 0.53268800000000005
	.quad	0x3fe9e63c74fb54a0              # double 0.80935500000000004
	.quad	0x3fec66d9be4cd749              # double 0.88755499999999998
	.quad	0x3fc2e736049ecb32              # double 0.14768100000000001
	.quad	0x3fd05aee631f8a09              # double 0.25555
	.quad	0x3fba3a4b5568e821              # double 0.102452
	.quad	0x3fe5c873365881a1              # double 0.68071899999999996
	.quad	0x3fe68370cdc8754f              # double 0.70354499999999998
	.quad	0x3fea28b08dd1e53b              # double 0.81746700000000005
	.quad	0x3fea0205ff1d81f1              # double 0.812747
	.quad	0x3fec469d7342edbb              # double 0.88361999999999996
	.quad	0x3fad909f1f14983d              # double 0.057743999999999997
	.quad	0x3fdca23bff8a8f3b              # double 0.44740200000000002
	.quad	0x3fed0f4b61fe21d9              # double 0.90811699999999995
	.quad	0x3f9e8e1d6494d50f              # double 0.029839000000000001
	.quad	0x3f809310129cbab6              # double 0.0080929999999999995
	.quad	0x3fddaf038e29f9cf              # double 0.46380700000000002
	.quad	0x3fec1422ccb3a259              # double 0.87745799999999996
	.quad	0x3fd2a83f4eca686e              # double 0.29151899999999997
	.quad	0x3fe08d90e23af31b              # double 0.51728099999999999
	.quad	0x3fdccf95d4e8fb01              # double 0.45017000000000001
	.quad	0x3fd1f954eb13dfb1              # double 0.28084300000000001
	.quad	0x3fd4e0f3cb3e5754              # double 0.32623000000000002
	.quad	0x3fc4031487768167              # double 0.15634400000000001
	.quad	0x3fd928cbd1244a62              # double 0.39311499999999999
	.quad	0x3fe169ad42c3c9ef              # double 0.54415000000000002
	.quad	0x3fe0732bdc26dce4              # double 0.51405900000000004
	.quad	0x3fec0c5436b8f9b1              # double 0.87650499999999998
	.quad	0x3fed5e0b4e11dbcb              # double 0.91773000000000005
	.quad	0x3fdc5454152b0a70              # double 0.44264700000000001
	.quad	0x3fd261240746455f              # double 0.28717900000000002
	.quad	0x3fe0ff77af64063a              # double 0.53118500000000002
	.quad	0x3fdbaf7d30ad46f6              # double 0.43258600000000003
	.quad	0x3fcf084e831ad213              # double 0.24244099999999999
	.quad	0x3fe10f75536933a0              # double 0.53313699999999997
	.quad	0x3fc8ff21b3aeee95              # double 0.19528599999999999
	.quad	0x3fb19e518f3eccc4              # double 0.068821999999999994
	.quad	0x3febf867f0aa21a7              # double 0.87407299999999999
	.quad	0x3fe649235f809918              # double 0.69642800000000005
	.quad	0x3fe2db5b70691ea8              # double 0.58927700000000005
	.quad	0x3feeb73f316e3715              # double 0.95986899999999997
	.quad	0x3fd6ba6aca793576              # double 0.355128
	.quad	0x3f9e6362a5e785b6              # double 0.029676000000000001
	.quad	0x3fec8ee8d10f51ad              # double 0.89244500000000004
	.quad	0x3fd543632c1f42bb              # double 0.33223799999999998
	.quad	0x3fed83b1d0c80410              # double 0.92232599999999998
	.quad	0x3fea554da4ce8102              # double 0.82291300000000001
	.quad	0x3fbaf240fa9c12f1              # double 0.10525900000000001
	.quad	0x3fd6ae18ac9f2fdc              # double 0.35437600000000002
	.quad	0x3fe64e2f37fbefd0              # double 0.697044
	.quad	0x3fcf16b97fe8ee6c              # double 0.24288100000000001
	.quad	0x3fb1d9a0f0a5efe9              # double 0.069726999999999997
	.quad	0x3fec61804d983947              # double 0.88690199999999997
	.quad	0x3f9fcbd556084a51              # double 0.031050999999999999
	.quad	0x3fc9d41743e963dc              # double 0.20178499999999999
	.quad	0x3fdca671ef30a4e3              # double 0.44765899999999997
	.quad	0x3fe72aa19439de48              # double 0.72395399999999999
	.quad	0x3fc9ee0b0af5fd48              # double 0.20257700000000001
	.quad	0x3fe40fc504816f00              # double 0.62692499999999995
	.quad	0x3fd812f901083dbc              # double 0.37615799999999999
	.quad	0x3fd23edd8b60f1b2              # double 0.28508699999999998
	.quad	0x3fecb1c864883fd5              # double 0.896702
	.quad	0x3fdd327674d16335              # double 0.45620500000000003
	.quad	0x3fe2df6ba0620ab7              # double 0.58977299999999999
	.quad	0x3fc1aac53b0813cb              # double 0.13802400000000001
	.quad	0x3fe5a324c8366517              # double 0.67616500000000002
	.quad	0x3fbdec2ce4649907              # double 0.116885
	.quad	0x3f95d206c8711d7a              # double 0.021309000000000002
	.quad	0x3fe57ff583a53b8e              # double 0.67186999999999997
	.quad	0x3feaaf405f6ba062              # double 0.833893
	.quad	0x3faf84662bae03b4              # double 0.061557000000000001
	.quad	0x3fce06e19b90ea9e              # double 0.23458499999999999
	.quad	0x3fc1676ea4228998              # double 0.13596900000000001
	.quad	0x3fe369531550ca1d              # double 0.60660700000000001
	.quad	0x3fd94bc6a7ef9db2              # double 0.39524999999999999
	.quad	0x3fecc6e8f29d40ee              # double 0.899281
	.quad	0x3feb1fc2a8869c67              # double 0.84762700000000002
	.quad	0x3fef12b3cc4ac6ce              # double 0.97103300000000004
	.quad	0x3fe45a5332acfb76              # double 0.63602599999999998
	.quad	0x3fe8641d4b6a619e              # double 0.76222100000000004
	.quad	0x3fdb39b024f6598e              # double 0.425396
	.quad	0x3fa62089e34330d7              # double 0.043216999999999998
	.quad	0x3fe2f623076c050c              # double 0.59254600000000002
	.quad	0x3fe943e100607810              # double 0.78953600000000002
	.quad	0x3fdd89656eefa1e4              # double 0.461511
	.quad	0x3fe18813cab81f97              # double 0.54786100000000004
	.quad	0x3fd5b738e6d15ad1              # double 0.339308
	.quad	0x3fe54c2b51bd61f6              # double 0.66554800000000003
	.quad	0x3f9da61e0c5a8156              # double 0.028954000000000001
	.quad	0x3fe53380cb6c7a7d              # double 0.66253700000000004
	.quad	0x3fe704fb1183b603              # double 0.71935800000000005
	.quad	0x3fefc15b1422ccb4              # double 0.99235300000000004
	.quad	0x3fd18deb0fadf2ed              # double 0.274287
	.quad	0x3fdcdf43c7d5ed07              # double 0.451127
	.quad	0x3fe579d909f1f14a              # double 0.67112400000000005
	.quad	0x3fe8b8476f2a5a47              # double 0.77249500000000004
	.quad	0x3fe9ff0aa21a719b              # double 0.81238299999999997
	.quad	0x3febfa5d28d002e2              # double 0.87431199999999998
	.quad	0x3fe2d64302b40f67              # double 0.58865500000000004
	.quad	0x3f998b71b8aa0019              # double 0.024945999999999999
	.quad	0x3fd28fffbce4217d              # double 0.29003899999999999
	.quad	0x3fd7533f42352eb6              # double 0.364456
	.quad	0x3fd0dd4845132f88              # double 0.26350600000000002
	.quad	0x3fc7b823c85c24c4              # double 0.185307
	.quad	0x3fd3aee631f8a090              # double 0.30754999999999999
	.quad	0x3fdfdc725c3dee78              # double 0.49782999999999999
	.quad	0x3fe760bf5d78811b              # double 0.73055999999999999
	.quad	0x3fefb54e2b063e08              # double 0.99088200000000004
	.quad	0x3fa3f6a0dbad3a60              # double 0.038990999999999998
	.quad	0x3fdf7dbf487fcb92              # double 0.49204999999999999
	.quad	0x3fde7dfe32a0663c              # double 0.47643999999999997
	.quad	0x3fd9250f840181e0              # double 0.39288699999999999
	.quad	0x3fdf9e83e425aee6              # double 0.49404999999999999
	.quad	0x3feb01322f2734f8              # double 0.84389599999999998
	.quad	0x3fc0527a20578e5c              # double 0.12751699999999999
	.quad	0x3fe803a109d0635a              # double 0.75044299999999997
	.quad	0x3febbee5eedcc20d              # double 0.86705299999999996
	.quad	0x3f9be1650a45d420              # double 0.027227000000000001
	.quad	0x3fd21a3f4666ec9e              # double 0.28285199999999999
	.quad	0x3fe78a7a41e57d9e              # double 0.73565400000000003
	.quad	0x3fc7cf70153bd167              # double 0.18601799999999999
	.quad	0x3f9f70153bd16766              # double 0.030700999999999999
	.quad	0x3fb7123c42a66dbd              # double 0.090121999999999994
	.quad	0x3fc7d6f112fd32c6              # double 0.186247
	.quad	0x3fe223e5b8561d43              # double 0.566882
	.quad	0x3fe3ae1ef73c0c20              # double 0.61500500000000002
	.quad	0x3fba97396d0917d7              # double 0.10387
	.quad	0x3fed21d323fee2ca              # double 0.91037900000000005
	.quad	0x3fea0d49949e8816              # double 0.81412200000000001
	.quad	0x3fe02474538ef34d              # double 0.50444999999999995
	.quad	0x3fd685caafbc1ace              # double 0.35191600000000001
	.quad	0x3f9ae685db76b3bc              # double 0.026270000000000002
	.quad	0x3fcf58c08b75ea68              # double 0.244896
	.quad	0x3fe5d1dcd7060bb3              # double 0.68186800000000003
	.quad	0x3fdb256798958d9b              # double 0.42415799999999998
	.quad	0x3fb5274e22a2c237              # double 0.082630999999999996
	.quad	0x3f9cfe586013660e              # double 0.028313999999999999
	.quad	0x3fd3f6d7625204b0              # double 0.31194100000000002
	.quad	0x3f8563a9f383f0bb              # double 0.010444
	.quad	0x3feac806290eed03              # double 0.83691700000000002
	.quad	0x3fcd515054ac29bf              # double 0.229044
	.quad	0x3fe130ab2e1693c0              # double 0.53719099999999997
	.quad	0x3fcadbcec84f8f8a              # double 0.20983299999999999
	.quad	0x3fd68ae74f2f123c              # double 0.35222799999999999
	.quad	0x3fc920c8cd63cb81              # double 0.19631299999999999
	.quad	0x3fc84b124d099e0e              # double 0.18979099999999999
	.quad	0x3fedd65e4606748e              # double 0.93241799999999997
	.quad	0x3feda01eeed8904f              # double 0.92579599999999995
	.quad	0x3fcd9c4113c68662              # double 0.23133100000000001
	.quad	0x3fa0f5a1016ce78a              # double 0.033124000000000001
	.quad	0x3fd8431bde82d7b6              # double 0.37909599999999999
	.quad	0x3fe7a5fc7e6b3fea              # double 0.739012
	.quad	0x3fea4fe154434e33              # double 0.82225099999999995
	.quad	0x3feef42784a9478d              # double 0.96730400000000005
	.quad	0x3fdceaa2a0a95853              # double 0.45182099999999997
	.quad	0x3f786fcdee34fc61              # double 0.0059659999999999999
	.quad	0x3fe0358298cc1440              # double 0.50653199999999998
	.quad	0x3fd9d31b9b66f933              # double 0.40350999999999998
	.quad	0x3fd749cf56eac860              # double 0.36387999999999998
	.quad	0x3fa3e09bb6aa4b99              # double 0.038823000000000003
	.quad	0x3fe3e338b47c73ef              # double 0.62148700000000001
	.quad	0x3fe6243dccea28fe              # double 0.69192399999999998
	.quad	0x3fdaed56b00ffda4              # double 0.420736
	.quad	0x3feaeadf71eafee7              # double 0.841171
	.quad	0x3fd1ebd4cfd08d4c              # double 0.28001900000000002
	.quad	0x3fde95af294dd723              # double 0.47788599999999998
	.quad	0x3fe1a0663c74fb55              # double 0.55083000000000004
	.quad	0x3fb3f811f4f50a03              # double 0.078004000000000004
	.quad	0x3fea7179bfdf7e80              # double 0.82635199999999998
	.quad	0x3fda129888f861a6              # double 0.407385
	.quad	0x3fe77e5eaab04253              # double 0.73417600000000005
	.quad	0x3fc48c154c985f07              # double 0.160525
	.quad	0x3fb572cd7cf5f4e4              # double 0.083782999999999996
	.quad	0x3fe5b9d1b2e59afa              # double 0.67893300000000001
	.quad	0x3f886db50f40e5a3              # double 0.011927999999999999
	.quad	0x3fef92a94ff0025c              # double 0.986653
	.quad	0x3fd4aa19439de482              # double 0.322882
	.quad	0x3fe1e451b93037d6              # double 0.55912099999999998
	.quad	0x3f980fdc1615ebfb              # double 0.023498000000000002
	.quad	0x3febbd790752da98              # double 0.86687899999999996
	.quad	0x3fecd675579af188              # double 0.90117899999999995
	.quad	0x3fe2af6837f7be12              # double 0.58391199999999999
	.quad	0x3fd7f4cf4a558ea8              # double 0.37431700000000001
	.quad	0x3fec6e02a77a2ced              # double 0.88842900000000002
	.quad	0x3feaede54b48d3ae              # double 0.84153999999999995
	.quad	0x3fdb7b24638c9753              # double 0.42939100000000002
	.quad	0x3fd24c51116a8b8f              # double 0.285908
	.quad	0x3fe0466b1e5c0b9a              # double 0.50859600000000005
	.quad	0x3fee6aa2a0a95853              # double 0.95051699999999995
	.quad	0x3fce03a322af5771              # double 0.234486
	.quad	0x3fe0d2c386d2ed78              # double 0.52572799999999997
	.quad	0x3fd009246bf01323              # double 0.250558
	.quad	0x3fe9af3a14cec41e              # double 0.80264000000000002
	.quad	0x3fe4b078d92fb19e              # double 0.64654199999999995
	.quad	0x3fe5aeafab53d641              # double 0.67757400000000001
	.quad	0x3fd8b24638c97529              # double 0.38588099999999997
	.quad	0x3fd5f355cd91eeaa              # double 0.34297699999999998
	.quad	0x3fe65c52e72da123              # double 0.69877
	.quad	0x3fece4abe6a337a8              # double 0.90291399999999999
	.quad	0x3fe4359578a2a90d              # double 0.63154100000000002
	.quad	0x3f98858ff7596851              # double 0.023947
	.quad	0x3fe5b6e2eb1c432d              # double 0.67857500000000004
	.quad	0x3fd5dac258d5842b              # double 0.34147699999999997
	.quad	0x3fb121bc126a65cf              # double 0.066920999999999994
	.quad	0x3fe9ca0c282c6ef4              # double 0.80591400000000001
	.quad	0x3fe2496aad1d041d              # double 0.57146200000000003
	.quad	0x3fd670153bd16766              # double 0.35059099999999999
	.quad	0x3fa61869835158b8              # double 0.043154999999999999
	.quad	0x3fe663065f9591cd              # double 0.69958799999999999
	.quad	0x3fd4cfe586013661              # double 0.32518900000000001
	.quad	0x3fd1656eefa1e3eb              # double 0.271816
	.quad	0x3fe2e49d388a8b09              # double 0.59040700000000002
	.quad	0x3fa3edb7281fd9ba              # double 0.038922999999999999
	.quad	0x3fbfaf533f42352f              # double 0.123769
	.quad	0x3fdf4467381d7dbf              # double 0.48854999999999998
	.quad	0x3fa378ee28672757              # double 0.038032000000000003
	.quad	0x3fe69b62c77574f7              # double 0.70646799999999998
	.quad	0x3fefddc1e7967caf              # double 0.99582000000000003
	.quad	0x3fd659c8c9320d99              # double 0.34922999999999998
	.quad	0x3fd7c044284dfce3              # double 0.37111
	.quad	0x3fc422ff08893b7e              # double 0.15731800000000001
	.quad	0x3fec6cb10342aa9f              # double 0.88826799999999995
	.quad	0x3fe2eb37867f0aa2              # double 0.59121299999999999
	.quad	0x3fd4591cd1c7de51              # double 0.31793900000000003
	.quad	0x3fc49ba5e353f7cf              # double 0.161
	.quad	0x3fc7ecf63800218e              # double 0.186919
	.quad	0x3fe49b413986338b              # double 0.64395199999999997
	.quad	0x3fe2528f190d1740              # double 0.57257800000000003
	.quad	0x3fe1a30984e3ffef              # double 0.55115199999999998
	.quad	0x3fc3ef6b5d462c34              # double 0.15574399999999999
	.quad	0x3feab5b0bbf50e34              # double 0.83467899999999994
	.quad	0x3fe5aae6c8f75537              # double 0.67711200000000005
	.quad	0x3fd2bba98eda22f7              # double 0.29270400000000002
	.quad	0x3fb03382e44b6e93              # double 0.063285999999999995
	.quad	0x3fda7ad4b2745bf2              # double 0.41374699999999998
	.quad	0x3fe48b3f63c31df7              # double 0.64199799999999996
	.quad	0x3fe87ef9db22d0e5              # double 0.76549999999999996
	.quad	0x3fe8a6dce39b456b              # double 0.77036899999999997
	.quad	0x3fdeda1ec4e7253e              # double 0.48206300000000002
	.quad	0x3fd5352220bc382a              # double 0.331368
	.quad	0x3fbabda0dfdef848              # double 0.10445599999999999
	.quad	0x3fe6a66559f6ec5b              # double 0.707812
	.quad	0x3fe80c308feac42f              # double 0.75148800000000004
	.quad	0x3fe3ca686e7e62dc              # double 0.61845799999999995
	.quad	0x3fedbe835dedf1e1              # double 0.92950600000000005
	.quad	0x3fe3ecc5fbf83383              # double 0.62265300000000001
	.quad	0x3fd42cadddf43c7d              # double 0.31522699999999998
	.quad	0x3fbad549731098d4              # double 0.10481699999999999
	.quad	0x3fe00b588e368f08              # double 0.50138499999999997
	.quad	0x3fe1681cb46bacf7              # double 0.54395899999999997
	.quad	0x3fe6cd551d68c693              # double 0.712565
	.quad	0x3fe907724fa8b4c0              # double 0.78215900000000005
	.quad	0x3fd966516db0dd83              # double 0.39687
	.quad	0x3fb672324c836651              # double 0.087679999999999994
	.quad	0x3feae24febd09e13              # double 0.84012600000000004
	.quad	0x3fddc197e5647347              # double 0.46494099999999999
	.quad	0x3fc1372a38b8ae32              # double 0.134496
	.quad	0x3fbcebedfa43fe5d              # double 0.11297500000000001
	.quad	0x3fe56605ee568a50              # double 0.66870399999999997
	.quad	0x3fe5f87f023e9ea1              # double 0.68658399999999997
	.quad	0x3fe603a322af5771              # double 0.687944
	.quad	0x3fe949667b5f1bef              # double 0.79020999999999997
	.quad	0x3fe0cc447c30d307              # double 0.52493500000000004
	.quad	0x3fe0fc9363f572de              # double 0.53083199999999997
	.quad	0x3fd29691a75cd0bb              # double 0.29043999999999998
	.quad	0x3fe36b09635610ae              # double 0.60681600000000002
	.quad	0x3fe976b7ed41b75a              # double 0.79574199999999995
	.quad	0x3fd20d887ebf22c0              # double 0.28207599999999999
	.quad	0x3fea8754f3775b81              # double 0.82901999999999998
	.quad	0x3fa795d4e8fb00bd              # double 0.046065000000000002
	.quad	0x3fe5b0f062d40aaf              # double 0.67784900000000003
	.quad	0x3fdeeefa1e3eaf68              # double 0.48333599999999999
	.quad	0x3fdc96e158750c1c              # double 0.44670900000000002
	.quad	0x3fd86d612c6ac216              # double 0.38167600000000002
	.quad	0x3fe36394face67d7              # double 0.60590599999999994
	.quad	0x3fcff50e34762952              # double 0.249666
	.quad	0x3fd4fdb4cc250721              # double 0.32798500000000003
	.quad	0x3fe2cde19fc2a887              # double 0.58763200000000004
	.quad	0x3fe17449129888f8              # double 0.54544499999999996
	.quad	0x3fd53e81450efdca              # double 0.33194000000000001
	.quad	0x3fd9744f5d35653d              # double 0.39772400000000002
	.quad	0x3fd4c18f81e8a2ec              # double 0.32431399999999999
	.quad	0x3fc5a8b4bf8fcd68              # double 0.169211
	.quad	0x3febb0c23fab10ba              # double 0.86532699999999996
	.quad	0x3fe2c0724b76f6d7              # double 0.58599199999999996
	.quad	0x3faa77a2cecc814d              # double 0.051693999999999997
	.quad	0x3fdcceaaf35e310e              # double 0.45011400000000001
	.quad	0x3fc898c3b0c4588a              # double 0.192162
	.quad	0x3fe50d0678c0053e              # double 0.65783999999999998
	.quad	0x3fed1dba908a265f              # double 0.90987899999999999
	.quad	0x3fd1ccbc05d52c17              # double 0.27812100000000001
	.quad	0x3fcc6ba493c89f41              # double 0.22203500000000001
	.quad	0x3fcfdcdf69878317              # double 0.24892800000000001
	.quad	0x3fe75532617c1bda              # double 0.72914999999999996
	.quad	0x3fe2f0cdc8754f37              # double 0.59189499999999995
	.quad	0x3fc5db5d894812be              # double 0.17075699999999999
	.quad	0x3fe570d1fa333765              # double 0.67002200000000001
	.quad	0x3fe1301c92ddbdb6              # double 0.53712300000000002
	.quad	0x3fecc6cb966be7b0              # double 0.89926700000000004
	.quad	0x3fe95f394b7b2895              # double 0.79287399999999997
	.quad	0x3fe7be61cffeb075              # double 0.74199000000000004
	.quad	0x3fddec636b096356              # double 0.467553
	.quad	0x3fd4e48e8a71de6a              # double 0.32645000000000002
	.quad	0x3fbf8982cb20fb22              # double 0.123192
	.quad	0x3fa6468cac4b4d05              # double 0.043506999999999997
	.quad	0x3fd9a222d5171e2a              # double 0.40052100000000002
	.quad	0x3fe19806f262888b              # double 0.54980799999999996
	.quad	0x3fe0862b27cbf6e4              # double 0.516378
	.quad	0x3fd37225b749adc9              # double 0.303842
	.quad	0x3fc9727136a400fc              # double 0.19880500000000001
	.quad	0x3fd5a6ce358298cc              # double 0.338306
	.quad	0x3fd208feac42e98a              # double 0.28179900000000002
	.quad	0x3fead3005814940c              # double 0.83825700000000002
	.quad	0x3fc01b8ed1bf7ad5              # double 0.12584100000000001
	.quad	0x3fe56af038e29f9d              # double 0.66930400000000001
	.quad	0x3fd396030c23fab1              # double 0.306031
	.quad	0x3fed84d983947497              # double 0.92246700000000004
	.quad	0x3fc7a7daa4fca42b              # double 0.18481
	.quad	0x3fa47c5260f5e41d              # double 0.040010999999999998
	.quad	0x3fd67f5a5332acfb              # double 0.35152299999999997
	.quad	0x3fd20baa582dbe7f              # double 0.28196199999999999
	.quad	0x3fe81633482be8bc              # double 0.75270999999999999
	.quad	0x3fe0bcd9a52263d8              # double 0.52305299999999999
	.quad	0x3fe485c03361565c              # double 0.64132699999999998
	.quad	0x3fdf895d0b73d189              # double 0.492759
	.quad	0x3fe384f8f8a4c1ec              # double 0.60998200000000002
	.quad	0x3fc43076c050bd88              # double 0.15772900000000001
	.quad	0x3fc4c6bce8533b10              # double 0.16231499999999999
	.quad	0x3fefc886162f166e              # double 0.993228
	.quad	0x3f91b584b1ab0857              # double 0.017294
	.quad	0x3fd5f17bd8be7297              # double 0.342864
	.quad	0x3fdb290abb44e50c              # double 0.42437999999999998
	.quad	0x3feae24febd09e13              # double 0.84012600000000004
	.quad	0x3fdcc308feac42ea              # double 0.44940400000000003
	.quad	0x3fcc75c4a83b1d0d              # double 0.22234400000000001
	.quad	0x3fd62bd7f51efb6e              # double 0.34642600000000001
	.quad	0x3fcf7eed45e9185d              # double 0.246061
	.quad	0x3fdb3ec892ab68cf              # double 0.425707
	.quad	0x3fd4398e97071822              # double 0.31601299999999999
	.quad	0x3fedba8e71476af9              # double 0.92902300000000004
	.quad	0x3fb62174c4cdfaca              # double 0.086447999999999997
	.quad	0x3fe90bda9435ac8a              # double 0.78269699999999998
	.quad	0x3fe6d5e6bc621b7e              # double 0.713611
	.quad	0x3fe622db61bb05fb              # double 0.69175500000000001
	.quad	0x3f9a4723aafff36b              # double 0.025662000000000001
	.quad	0x3feca13c254a3c64              # double 0.89468199999999997
	.quad	0x3fe1c894c447c30d              # double 0.55573499999999998
	.quad	0x3feeccaf709b738e              # double 0.96248599999999995
	.quad	0x3fbbf9830e3cd9a5              # double 0.109276
	.quad	0x3fef02949a5657fb              # double 0.96906499999999995
	.quad	0x3fe9b549f94855da              # double 0.80337999999999998
	.quad	0x3feef33ebbfd71b0              # double 0.96719299999999997
	.quad	0x3feef0cfe154434e              # double 0.96689599999999998
	.quad	0x3fdfa73b42cc2d6b              # double 0.49458200000000002
	.quad	0x3fd78a50507a6bd7              # double 0.36781700000000001
	.quad	0x3fc023c85c24c405              # double 0.12609200000000001
	.quad	0x3fde24463065f959              # double 0.47096399999999999
	.quad	0x3fe4ce0b912dba4d              # double 0.65015199999999995
	.quad	0x3fe8c36fc158fb44              # double 0.77385700000000001
	.quad	0x3fda9eecbfb15b57              # double 0.41594999999999999
	.quad	0x3fed2a369fcf3dc0              # double 0.91140299999999996
	.quad	0x3fef143bf727136a              # double 0.97121999999999997
	.quad	0x3fe4f95d4e8fb00c              # double 0.65544000000000002
	.quad	0x3fd8ecbfb15b573f              # double 0.38945000000000002
	.quad	0x3fc420817fc7607c              # double 0.15724199999999999
	.quad	0x3fe608fa7a85015c              # double 0.68859599999999999
	.quad	0x3fd291ea78af3e47              # double 0.29015600000000003
	.quad	0x3fe71344806290ef              # double 0.72110200000000002
	.quad	0x3fb859c8c9320d99              # double 0.095119999999999996
	.quad	0x3f93af74cd31769b              # double 0.019224000000000002
	.quad	0x3fe148b439581062              # double 0.54012499999999997
	.quad	0x3fe5e19da9c99286              # double 0.68379100000000004
	.quad	0x3f9452c59fb1e18f              # double 0.019847
	.quad	0x3fb289b951c5c572              # double 0.072414000000000006
	.quad	0x3fcf78bbd3804535              # double 0.24587200000000001
	.quad	0x3fe9ebcc6c54bcf1              # double 0.81003400000000003
	.quad	0x3fe68cf9e3864cb6              # double 0.70470900000000003
	.quad	0x3fc46d0d49949e88              # double 0.159578
	.quad	0x3fe4ce4c942d490e              # double 0.65018299999999996
	.quad	0x3fe101344806290f              # double 0.53139700000000001
	.quad	0x3fdcf1d81f106680              # double 0.45226100000000002
	.quad	0x3fc3f04ddb5525cc              # double 0.15577099999999999
	.quad	0x3fd409784ec636b1              # double 0.31307800000000002
	.quad	0x3fedcf95d4e8fb01              # double 0.93159000000000003
	.quad	0x3fa3c4d22c881e47              # double 0.038610999999999999
	.quad	0x3fecc2b734b51373              # double 0.89876900000000004
	.quad	0x3fe01348b220791c              # double 0.50235399999999997
	.quad	0x3feff603925bb7b7              # double 0.99878100000000002
	.quad	0x3fe25f17bd8be729              # double 0.57410799999999995
	.quad	0x3fe39439de481f54              # double 0.61184400000000005
	.quad	0x3fa2f7d30ad46f58              # double 0.037046999999999997
	.quad	0x3fd2a2e3c536d656              # double 0.29119200000000001
	.quad	0x3fe11cde5d18090b              # double 0.53477399999999997
	.quad	0x3fe425093964a59c              # double 0.629521
	.quad	0x3fe53b7f9d6f1130              # double 0.66351300000000002
	.quad	0x3fa22fcefaa4766c              # double 0.035520999999999997
	.quad	0x3fe55d31337eb28e              # double 0.66762600000000005
	.quad	0x3fd0f8bdec5f394b              # double 0.26518199999999997
	.quad	0x3fd4ec679cc74b84              # double 0.32692900000000003
	.quad	0x3fe8289331a08bfc              # double 0.75495299999999998
	.quad	0x3fefa7674d163348              # double 0.98918499999999998
	.quad	0x3fae279dd3bafd97              # double 0.058895999999999997
	.quad	0x3fbaec17ebaf1023              # double 0.10516499999999999
	.quad	0x3fd924b76f6d7625              # double 0.39286599999999999
	.quad	0x3fc234549b62c775              # double 0.14222199999999999
	.quad	0x3fdfc8f75536933a              # double 0.496641
	.quad	0x3fd78c8eef1bac2e              # double 0.367954
	.quad	0x3f9d4306e5cd4ed3              # double 0.028576000000000001
	.quad	0x3fe9e6f5019f3c71              # double 0.80944300000000002
	.quad	0x3fdb93bc0a06e9ff              # double 0.430892
	.quad	0x3fe75b8348f53c58              # double 0.72992100000000004
	.quad	0x3fe9fcac8e68e3ef              # double 0.81209399999999998
	.quad	0x3fedd6798958d9b6              # double 0.93243100000000001
	.quad	0x3fbcbf8fcd67fd3f              # double 0.112298
	.quad	0x3fe49465e8922531              # double 0.64311499999999999
	.quad	0x3fe94857f3061c7a              # double 0.79008100000000003
	.quad	0x3feb7b56b8737974              # double 0.85880599999999995
	.quad	0x3fe8fca2120e1f7d              # double 0.78083899999999995
	.quad	0x3fe80f2170931013              # double 0.75184700000000004
	.quad	0x3fb18a009f623077              # double 0.068512000000000003
	.quad	0x3f9d9a95421c0443              # double 0.028910000000000002
	.quad	0x3f6e7b80a9de8b3b              # double 0.0037209999999999999
	.quad	0x3fc25ad538ac18f8              # double 0.143397
	.quad	0x3fc6a2ca9ac36545              # double 0.176843
	.quad	0x3fec50763a190082              # double 0.884822
	.quad	0x3fda688377186552              # double 0.41262900000000002
	.quad	0x3fe2cc942d490e67              # double 0.58747300000000002
	.quad	0x3fe182c2bd7f51f0              # double 0.54721200000000003
	.quad	0x3fe64204f2ae07e6              # double 0.69555900000000004
	.quad	0x3fde347a5b0ff10f              # double 0.47195300000000001
	.quad	0x3fe6604c05921038              # double 0.69925499999999996
	.quad	0x3fe096c82e019b0b              # double 0.51840600000000003
	.quad	0x3fd84ee392e1ef74              # double 0.37981500000000001
	.quad	0x3fe983bc4d22c882              # double 0.79733100000000001
	.quad	0x3fc65729b280f12c              # double 0.174535
	.quad	0x3fe45edaec4a4096              # double 0.63657900000000001
	.quad	0x3fcd9dc2f405f6ba              # double 0.231377
	.quad	0x3fe3adea897635e7              # double 0.61497999999999997
	.quad	0x3fe6625e99e94ab2              # double 0.69950800000000002
	.quad	0x3fe7b992c8c50050              # double 0.74140300000000003
	.quad	0x3fd9ad70e6f2e8c0              # double 0.40121099999999998
	.quad	0x3f9ff2e48e8a71de              # double 0.031199999999999999
	.quad	0x3fe1074c8ffb8b26              # double 0.53214099999999998
	.quad	0x3fbad99cbee807bc              # double 0.104883
	.quad	0x3fe379a06a6e32e4              # double 0.60859700000000005
	.quad	0x3fd4e5f30e7ff584              # double 0.32653500000000002
	.quad	0x3fe7b6049ecb31c2              # double 0.74096899999999999
	.quad	0x3fe69fd36f7e3d1d              # double 0.70701000000000003
	.quad	0x3feb750a02b84125              # double 0.85803700000000005
	.quad	0x3fe5f6ea4228997c              # double 0.68639099999999997
	.quad	0x3fede10cf5b1c865              # double 0.93372200000000005
	.quad	0x3fe0734b51372a39              # double 0.51407400000000003
	.quad	0x3fdb3faf42784a94              # double 0.42576199999999997
	.quad	0x3fc1c1a47a9e2bd0              # double 0.13872200000000001
	.quad	0x3fe313b9f127f5e8              # double 0.59615799999999997
	.quad	0x3fef2b430f49491f              # double 0.97403099999999998
	.quad	0x3fee50aaa7ded6bb              # double 0.94734700000000005
	.quad	0x3fea2aef2c732592              # double 0.81774100000000005
	.quad	0x3fd97de5082cf52c              # double 0.39830900000000002
	.quad	0x3fdd826aa8eb4635              # double 0.46108500000000002
	.quad	0x3fbd44aa53fc0097              # double 0.114329
	.quad	0x3faf15c63ae2541e              # double 0.060713000000000003
	.quad	0x3feb1fcf3dc054ef              # double 0.84763299999999997
	.quad	0x3fc61e68a0d349bf              # double 0.17280300000000001
	.quad	0x3fc7a7546d3f9e7c              # double 0.18479400000000001
	.quad	0x3fe926c3b927d45a              # double 0.78598199999999996
	.quad	0x3fddbf26f1dc50ce              # double 0.46479199999999998
	.quad	0x3fcd1b3f20a73f75              # double 0.22739400000000001
	.quad	0x3fee110c2c5e2cdc              # double 0.93958099999999999
	.quad	0x3fc5191dde37585c              # double 0.164829
	.quad	0x3fe046327ed84d34              # double 0.50856900000000005
	.quad	0x3fee4256bca5375d              # double 0.94559800000000005
	.quad	0x3fe128c79f666235              # double 0.53622800000000004
	.quad	0x3fee4d61b2a27f1b              # double 0.94694599999999995
	.quad	0x3fb9aa1d755bccaf              # double 0.10025199999999999
	.quad	0x3feaeeb91b3f20a7              # double 0.84164099999999997
	.quad	0x3fe423897204295a              # double 0.62933799999999995
	.quad	0x3fecd275ee99a62f              # double 0.90069100000000002
	.quad	0x3fe2e351deefe500              # double 0.59024900000000002
	.quad	0x3fc307a6bd6e8af8              # double 0.148671
	.quad	0x3fb6f1a9fbe76c8b              # double 0.089624999999999996
	.quad	0x3fd34d099e0e7360              # double 0.30157699999999998
	.quad	0x3fda9baa1511dffc              # double 0.41575099999999998
	.quad	0x3fdb5132f87ad081              # double 0.42683100000000002
	.quad	0x3fe14e48626f60e1              # double 0.54080600000000001
	.quad	0x3f79d883ba3443d4              # double 0.0063099999999999996
	.quad	0x3fe60f6273929ed4              # double 0.68937800000000005
	.quad	0x3fd43f811f4f50a0              # double 0.31637599999999999
	.quad	0x3fdedf71eafee6fb              # double 0.48238799999999998
	.quad	0x3fbae32e3821af7d              # double 0.105029
	.quad	0x3fe5010e8858ff76              # double 0.65637900000000005
	.quad	0x3f74003254e6e222              # double 0.0048830000000000002
	.quad	0x3fc56427c7c5260f              # double 0.16711899999999999
	.quad	0x3fda7af640639d5e              # double 0.41375499999999998
	.quad	0x3fe421a93293d103              # double 0.62910900000000003
	.quad	0x3fe9be8dda48b652              # double 0.80451099999999998
	.quad	0x3fd5d04e618ce2d2              # double 0.340839
	.quad	0x3fd6f6e82949a565              # double 0.35881999999999997
	.quad	0x3fd885cee17a02fb              # double 0.38316699999999998
	.quad	0x3fb26c8f75536934              # double 0.071969000000000005
	.quad	0x3fcf482be8bc169c              # double 0.24439
	.quad	0x3fd0672fba01eeee              # double 0.25629800000000003
	.quad	0x3fefa5df2239e6ac              # double 0.98899800000000004
	.quad	0x3feaaf038e29f9cf              # double 0.83386400000000005
	.quad	0x3fe39e5c0b999136              # double 0.61308099999999999
	.quad	0x3fea50fa58f7121b              # double 0.82238500000000003
	.quad	0x3fbd8ff759685122              # double 0.115478
	.quad	0x3fe62afff36ac647              # double 0.69274899999999995
	.quad	0x3f954477ff151e75              # double 0.020768999999999999
	.quad	0x3fe0864020817fc7              # double 0.51638799999999996
	.quad	0x3fbc725c3dee7818              # double 0.11112
	.quad	0x3feaf0e6f2e8c048              # double 0.84190699999999996
	.quad	0x3fd956bca5375c8e              # double 0.39591900000000002
	.quad	0x3fdf0e3476295209              # double 0.48524200000000001
	.quad	0x3fede93e1c9b413a              # double 0.93472200000000005
	.quad	0x3fd4b2edfe75bc45              # double 0.32342100000000001
	.quad	0x3fb015b1422ccb3a              # double 0.062830999999999998
	.quad	0x3fe46da661283904              # double 0.63838499999999998
	.quad	0x3fdb46c332f01755              # double 0.42619400000000002
	.quad	0x3fd0cad14a0a0f4d              # double 0.26237899999999997
	.quad	0x3fe35814940bbb1f              # double 0.60450199999999998
	.quad	0x3fe72deebb341e15              # double 0.72435700000000003
	.quad	0x3fd5342edbb59ddc              # double 0.33130999999999999
	.quad	0x3fdc1b866e43aa7a              # double 0.43918000000000001
	.quad	0x3faa0945f9df548f              # double 0.050852000000000001
	.quad	0x3fc9bc3c5bd0e12f              # double 0.20105700000000001
	.quad	0x3fe374384ba0e842              # double 0.60793699999999995
	.quad	0x3fc76d8f4f93bc0a              # double 0.183031
	.quad	0x3fb46d938151a438              # double 0.079797000000000007
	.quad	0x3fec29a3d2d87f88              # double 0.88008299999999995
	.quad	0x3fc06cdaf4adbc66              # double 0.12832199999999999
	.quad	0x3fdb4306e5cd4ed3              # double 0.42596600000000001
	.quad	0x3fe7e67f90d9d777              # double 0.74688699999999997
	.quad	0x3fe67f2c3009b307              # double 0.70302399999999998
	.quad	0x3fccf51ac9afe1da              # double 0.22622999999999999
	.quad	0x3fd3376922d948dc              # double 0.300257
	.quad	0x3fe0f3d7d3910c2c              # double 0.52976599999999996
	.quad	0x3fe25cd4ed2cbea5              # double 0.57383200000000001
	.quad	0x3fe0ec9e236c15d3              # double 0.52888400000000002
	.quad	0x3fedf4906034f3fe              # double 0.93610400000000005
	.quad	0x3fc84f3343fa2ad4              # double 0.189917
	.quad	0x3fe078a6dacabc51              # double 0.51472799999999996
	.quad	0x3fe5c286f8ad2568              # double 0.67999600000000004
	.quad	0x3fe944523f67f4dc              # double 0.78959000000000001
	.quad	0x3fe8dbdd76683c29              # double 0.77683899999999995
	.quad	0x3fe122d948dc11e4              # double 0.53550399999999998
	.quad	0x3fe9e4a7b4e54f7b              # double 0.80916200000000005
	.quad	0x3fbd0adcd2d44dcb              # double 0.11344700000000001
	.quad	0x3fef26916440f239              # double 0.97345800000000004
	.quad	0x3fd12834d26fa3fd              # double 0.26807900000000001
	.quad	0x3fecd8f92af9a8ce              # double 0.90148600000000001
	.quad	0x3fd7e6d58c8eef1c              # double 0.37346400000000002
	.quad	0x3fda06290eed02cd              # double 0.40662599999999999
	.quad	0x3fe78f1d3ed527e5              # double 0.73621999999999999
	.quad	0x3fe2e223e1869835              # double 0.59010499999999999
	.quad	0x3fef139c94f69caa              # double 0.97114400000000001
	.quad	0x3fd45daf07bfe7e2              # double 0.318218
	.quad	0x3fdff28c79f66623              # double 0.49917899999999998
	.quad	0x3fe79a47a9e2bcf9              # double 0.73758299999999999
	.quad	0x3fe285b5b70691ea              # double 0.57882199999999995
	.quad	0x3fee0e8ea39c51db              # double 0.93927700000000003
	.quad	0x3fe96b5d462c343b              # double 0.79435599999999995
	.quad	0x3fe3ef73c0c1fc8f              # double 0.62297999999999998
	.quad	0x3fe560e30446b69e              # double 0.66807700000000003
	.quad	0x3f80329802c0a4a0              # double 0.0079089999999999994
	.quad	0x3fe49dd7ecbb7f9d              # double 0.64426799999999995
	.quad	0x3feb4575c0767d35              # double 0.85222900000000001
	.quad	0x3fe8e46f15619115              # double 0.77788500000000005
	.quad	0x3fed1fea8112ba17              # double 0.91014600000000001
	.quad	0x3fca101f31f46ed2              # double 0.20361699999999999
	.quad	0x3fccdfefbf401c50              # double 0.22558400000000001
	.quad	0x3fe0658e64b23140              # double 0.51239699999999999
	.quad	0x3feb0bb4d48882f1              # double 0.84517900000000001
	.quad	0x3fe2bb23571d1d47              # double 0.58534399999999998
	.quad	0x3feb6db0dd82fd76              # double 0.85714000000000001
	.quad	0x3fba305532617c1c              # double 0.1023
	.quad	0x3fe3952d234eb9a1              # double 0.61195999999999995
	.quad	0x3fd89d4d834091c1              # double 0.38460100000000003
	.quad	0x3fe215b573eab368              # double 0.56515000000000004
	.quad	0x3fdabdfd2630ec31              # double 0.417846
	.quad	0x3fde8e9707182236              # double 0.47745300000000002
	.quad	0x3fd70f27bb2fec57              # double 0.36030000000000001
	.quad	0x3fe5d3d859c8c932              # double 0.68210999999999999
	.quad	0x3fa99fe43675ddd3              # double 0.050048000000000002
	.quad	0x3fd3e7ddca4b124d              # double 0.311027
	.quad	0x3fdd1d323fee2c99              # double 0.45490700000000001
	.quad	0x3fc7c947064ece9a              # double 0.18583
	.quad	0x3fc6964e8b7e4de4              # double 0.17646200000000001
	.quad	0x3fe1efd00713f078              # double 0.56052400000000002
	.quad	0x3fe7fc45cbbc2b95              # double 0.74954500000000002
	.quad	0x3fda0da5daf07bfe              # double 0.40708299999999997
	.quad	0x3fd5fd4bf0995aaf              # double 0.34358499999999997
	.quad	0x3fe463c105186db5              # double 0.63717699999999999
	.quad	0x3fe179f666234a88              # double 0.54613800000000001
	.quad	0x3fe7056a37ac3eb8              # double 0.71941100000000002
	.quad	0x3f58548a9bcfd4bf              # double 0.001485
	.quad	0x3fe5ee9dd7ecbb80              # double 0.68537800000000004
	.quad	0x3fd556c508b32ce9              # double 0.33342100000000002
	.quad	0x3fd29e4d5d80e497              # double 0.290912
	.quad	0x3fdd0b780346dc5d              # double 0.45382499999999998
	.quad	0x3fe733226c3b927d              # double 0.72499199999999997
	.quad	0x3fd2810e8858ff76              # double 0.28912700000000002
	.quad	0x3fe20fd3b29a1ba0              # double 0.56443200000000004
	.quad	0x3fe081a36e2eb1c4              # double 0.51582499999999998
	.quad	0x3feafe86833c6003              # double 0.84357000000000004
	.quad	0x3fd21d8e86402081              # double 0.28305399999999997
	.quad	0x3fdb7b890d5a5b96              # double 0.42941499999999999
	.quad	0x3fe0062f5989df11              # double 0.50075499999999995
	.quad	0x3fcd0b28522ea0fd              # double 0.22690299999999999
	.quad	0x3fe4709741d084e8              # double 0.63874399999999998
	.quad	0x3fe974080f98fa37              # double 0.79541399999999995
	.quad	0x3fda141e9af5ba2c              # double 0.40747800000000001
	.quad	0x3fd51212513b5bf7              # double 0.32922800000000002
	.quad	0x3fc89b845564b663              # double 0.192246
	.quad	0x3fe66fd651b0ccbc              # double 0.701152
	.quad	0x3fe502f512663411              # double 0.65661099999999994
	.quad	0x3fb84b2b777d0f1f              # double 0.094896999999999995
	.quad	0x3fe568c47a17f413              # double 0.66903900000000005
	.quad	0x3f52d3415b1422cd              # double 0.0011490000000000001
	.quad	0x3fec763e4abe6a33              # double 0.88943399999999995
	.quad	0x3feb65ba6efc371e              # double 0.85616800000000004
	.quad	0x3fe066644d877250              # double 0.51249900000000004
	.quad	0x3fed7c19c17225b7              # double 0.92139899999999997
	.quad	0x3fe0ff92f2b66b61              # double 0.53119799999999995
	.quad	0x3fbf37da61e0c5a8              # double 0.121946
	.quad	0x3fb851a86940357a              # double 0.094995999999999997
	.quad	0x3fe69ac9afe1da7b              # double 0.706395
	.quad	0x3fe9f644955b4678              # double 0.81131200000000003
	.quad	0x3fb831055b899392              # double 0.094497999999999998
	.quad	0x3fbbf6f4be835dee              # double 0.109237
	.quad	0x3fe19f5be5d9e40d              # double 0.55070300000000005
	.quad	0x3fe33e0589acbc8c              # double 0.60132099999999999
	.quad	0x3fe37995ee136e72              # double 0.60859200000000002
	.quad	0x3fe022e7f6f4be83              # double 0.50426099999999996
	.quad	0x3fdb41c3efae7925              # double 0.42588900000000002
	.quad	0x3fea2ed99cbee808              # double 0.81821900000000003
	.quad	0x3fe8f1800a7c5ac4              # double 0.77947999999999995
	.quad	0x3fe6a133c1ce6c09              # double 0.70717799999999997
	.quad	0x3feb919ef954eb14              # double 0.86152600000000001
	.quad	0x3fe89a437824d4cc              # double 0.76883100000000004
	.quad	0x3fd50f27bb2fec57              # double 0.32905000000000001
	.quad	0x3fd1b2b3461309c8              # double 0.276532
	.quad	0x3fe82e87d2c7b891              # double 0.75568000000000002
	.quad	0x3feb6cfc829cfdd2              # double 0.85705399999999998
	.quad	0x3fed2f81626b2f23              # double 0.912049
	.quad	0x3feed2f7f498c3b1              # double 0.96325300000000002
	.quad	0x3fd154ef459d9903              # double 0.27080900000000002
	.quad	0x3fda69fcf3dc054f              # double 0.412719
	.quad	0x3f8ca42aed139431              # double 0.013984999999999999
	.quad	0x3fd4cc89b0ee49f5              # double 0.324984
	.quad	0x3fe95faa8a82a561              # double 0.79292799999999997
	.quad	0x3fe1641d4b6a619e              # double 0.54347100000000004
	.quad	0x3fd0eaa6d2674081              # double 0.264322
	.quad	0x3f9aa4b9884c6a3c              # double 0.026019
	.quad	0x3fe32eb5f5f0b285              # double 0.59945199999999998
	.quad	0x3f6dcb5781c714fd              # double 0.003637
	.quad	0x3fee3affb04ee7c5              # double 0.94470200000000004
	.quad	0x3fc0835dedf1e083              # double 0.12900900000000001
	.quad	0x3fd1d898b2e9ccb8              # double 0.27884500000000001
	.quad	0x3fb79b024f6598e1              # double 0.092208999999999999
	.quad	0x3fe18f2389720429              # double 0.54872299999999996
	.quad	0x3fec802c0a4a05de              # double 0.89064600000000005
	.quad	0x3fe5a52ef911cf35              # double 0.67641399999999996
	.quad	0x3fe1d940789613d3              # double 0.55776999999999999
	.quad	0x3fdd841ede1198af              # double 0.46118900000000002
	.quad	0x3fe7918a009f6230              # double 0.73651599999999995
	.quad	0x3fad744f5d35653d              # double 0.057528000000000003
	.quad	0x3fe44243dccea290              # double 0.63308900000000001
	.quad	0x3fd8a350d2806af4              # double 0.38496799999999998
	.quad	0x3fdf34373f316e37              # double 0.487562
	.quad	0x3fe942ce4649906d              # double 0.78940500000000002
	.quad	0x3fe361975f2cb641              # double 0.60566299999999995
	.quad	0x3fe3478c868b9fdc              # double 0.60248400000000002
	.quad	0x3fdb1016ce789e77              # double 0.42285699999999998
	.quad	0x3fde9b845564b663              # double 0.478242
	.quad	0x3fe9befae7924af1              # double 0.80456300000000003
	.quad	0x3fc3c60029f16b12              # double 0.15448000000000001
	.quad	0x3fef637de939eadd              # double 0.98089499999999996
	.quad	0x3feafc6da4484945              # double 0.84331400000000001
	.quad	0x3fd3a08bfc2224ee              # double 0.306674
	.quad	0x3fd769a4df47f994              # double 0.36582300000000001
	.quad	0x3fcbbe33acd5b680              # double 0.21674199999999999
	.quad	0x3feb20d9945b6c37              # double 0.84775999999999996
	.quad	0x3fef7efbf401c4fc              # double 0.98425099999999998
	.quad	0x3fcf9a415f45e0b5              # double 0.246895
	.quad	0x3fc995703f2d3c79              # double 0.199873
	.quad	0x3fbeb37867f0aa22              # double 0.119926
	.quad	0x3f9031487768166a              # double 0.015813000000000001
	.quad	0x3feee14bdfd2630f              # double 0.96500200000000002
	.quad	0x3fe7e32e3821af7d              # double 0.74648199999999998
	.quad	0x3fd0d26b723ee1bd              # double 0.26284299999999999
	.quad	0x3fc46ad2dcb1465f              # double 0.15951000000000001
	.quad	0x3fd685e3da2f8bdf              # double 0.35192200000000001
	.quad	0x3f8aa60913a4f872              # double 0.013011999999999999
	.quad	0x3fd515336deb95e6              # double 0.32941900000000002
	.quad	0x3fc9688377186552              # double 0.19850200000000001
	.quad	0x3fd2ce5710880d80              # double 0.29384399999999999
	.quad	0x3fd5b9fdbd2fa0d7              # double 0.33947699999999997
	.quad	0x3fd0d22856605ee5              # double 0.26282699999999998
	.quad	0x3fdaa85015c20924              # double 0.41652299999999998
	.quad	0x3fc45100a393ee5f              # double 0.158722
	.quad	0x3fc385b5b70691ea              # double 0.15251799999999999
	.quad	0x3fded113836a832c              # double 0.48151100000000002
	.quad	0x3fd009741d084e83              # double 0.25057699999999999
	.quad	0x3fdc0da5daf07bfe              # double 0.43833299999999997
	.quad	0x3fe9d154866a11ed              # double 0.80680300000000005
	.quad	0x3fe8951e75360d02              # double 0.76820299999999997
	.quad	0x3fb6225fa658c4bd              # double 0.086461999999999997
	.quad	0x3fe5f3061c79b34a              # double 0.68591599999999997
	.quad	0x3fe487ad080b673c              # double 0.64156199999999997
	.quad	0x3fd54a66559f6ec6              # double 0.33266600000000002
	.quad	0x3fe5730a4e379b78              # double 0.67029300000000003
	.quad	0x3fa57fb69984a0e4              # double 0.04199
	.quad	0x3fef62f37fbefd00              # double 0.98082899999999995
	.quad	0x3fdbe40420f6f08d              # double 0.43579200000000001
	.quad	0x3fea60b0af5fd47c              # double 0.824303
	.quad	0x3fec45996744b2b7              # double 0.88349599999999995
	.quad	0x3fd41b3aeee95747              # double 0.314162
	.quad	0x3fd9a0b1bbcf4e87              # double 0.40043299999999998
	.quad	0x3fd15710880d801b              # double 0.27093899999999999
	.quad	0x3fe5fc3b4f616723              # double 0.68703999999999998
	.quad	0x3fb10bb6ed677708              # double 0.066585000000000005
	.quad	0x3fe38e410b630a91              # double 0.61111499999999996
	.quad	0x3fea3573eab367a1              # double 0.819025
	.quad	0x3fcdf9f87f023e9f              # double 0.23419100000000001
	.quad	0x3fe78114d2f5dbba              # double 0.73450700000000002
	.quad	0x3fe3158d9b5e95b8              # double 0.59638100000000005
	.quad	0x3fb524f227d028a2              # double 0.082595000000000001
	.quad	0x3fed135fc3b4f616              # double 0.90861499999999995
	.quad	0x3fd2d63cb8173322              # double 0.29432599999999998
	.quad	0x3fcbc49774256bca              # double 0.21693699999999999
	.quad	0x3fe906338b47c73f              # double 0.78200700000000001
	.quad	0x3f9fc2656abde3fc              # double 0.031015000000000001
	.quad	0x3fe38e53eb399f5e              # double 0.611124
	.quad	0x3fee186db50f40e6              # double 0.94048200000000004
	.quad	0x3f6949e8815e3971              # double 0.0030869999999999999
	.quad	0x3fee12fd32c625ea              # double 0.93981800000000004
	.quad	0x3fc39c17225b749b              # double 0.153201
	.quad	0x3fef320fb224aada              # double 0.97486099999999998
	.quad	0x3fe30880d801b435              # double 0.59478799999999998
	.quad	0x3fde74751ce28ed6              # double 0.475858
	.quad	0x3fd83cff64cf8d71              # double 0.37872299999999998
	.quad	0x3f95614df8b15726              # double 0.020879000000000002
	.quad	0x3fde9c842fa50939              # double 0.47830299999999998
	.quad	0x3fd36c11a11233df              # double 0.30347099999999999
	.quad	0x3fd158eeae9ee45c              # double 0.27105299999999999
	.quad	0x3fc1f9d6f112fd33              # double 0.14043700000000001
	.quad	0x3fe12dc6e2a80065              # double 0.53683800000000004
	.quad	0x3fbc852b4d8ba40e              # double 0.11140700000000001
	.quad	0x3fdf232096787ce9              # double 0.48651899999999998
	.quad	0x3fdc1fcd24e160d9              # double 0.43944100000000003
	.quad	0x3fcfd0b73d188f43              # double 0.248557
	.quad	0x3fc1ed6ba8c58687              # double 0.14005799999999999
	.quad	0x3fe886e7e62dc6e3              # double 0.76646800000000004
	.quad	0x3fdf4c3c18b502ac              # double 0.48902800000000002
	.quad	0x3fe8f778dd616f87              # double 0.78020900000000004
	.quad	0x3fc86e75ff609dd0              # double 0.19087100000000001
	.quad	0x3fe051fc4c165908              # double 0.51000800000000002
	.quad	0x3fe08bcbe61cffeb              # double 0.517065
	.quad	0x3fe1531337eb28d8              # double 0.54139099999999996
	.quad	0x3fe1892ee84ad795              # double 0.54799600000000004
	.quad	0x3f71ce28ed5f138c              # double 0.0043470000000000002
	.quad	0x3fa66b8305d95dd5              # double 0.043789000000000002
	.quad	0x3fc9c4b90214ad36              # double 0.20131599999999999
	.quad	0x3f5a08bfc2224edf              # double 0.0015889999999999999
	.quad	0x3fd4946c332f0175              # double 0.32155899999999998
	.quad	0x3fe700d3cff64cf9              # double 0.71885100000000002
	.quad	0x3fd205d0fa58f712              # double 0.28160499999999999
	.quad	0x3fe95cdf69878317              # double 0.79258700000000004
	.quad	0x3fccb6390c9107fb              # double 0.22431100000000001
	.quad	0x3fdf85dfa871a3b1              # double 0.49254599999999998
	.quad	0x3fedfb4c3c18b503              # double 0.93692600000000004
	.quad	0x3fefa6fe718a86d7              # double 0.98913499999999998
	.quad	0x3f7ac471b4784231              # double 0.006535
	.quad	0x3fefcf1a1986b9c3              # double 0.99403099999999999
	.quad	0x3fe6817fc7607c42              # double 0.70330800000000004
	.quad	0x3fe505ee568a5050              # double 0.65697399999999995
	.quad	0x3fd39917939a7c18              # double 0.30621900000000002
	.quad	0x3fdcb2d0a2446306              # double 0.44841399999999998
	.quad	0x3fd66ec5b078d930              # double 0.35051100000000002
	.quad	0x3fc7345069a4df48              # double 0.181284
	.quad	0x3fe124fa8b4bf8fd              # double 0.53576400000000002
	.quad	0x3fde5de15ca6ca04              # double 0.47448000000000001
	.quad	0x3fbb4bf8fcd67fd4              # double 0.106628
	.quad	0x3fd797a24894c448              # double 0.36863000000000001
	.quad	0x3fd5950763a19008              # double 0.33722099999999999
	.quad	0x3fd6ae1cde5d1809              # double 0.354377
	.quad	0x3fee1743e963dc48              # double 0.94033999999999995
	.quad	0x3fe2f709b738e6d1              # double 0.59265599999999996
	.quad	0x3fdffd6d7e889c1b              # double 0.49984299999999998
	.quad	0x3fca7d1bb4916ca4              # double 0.20694299999999999
	.quad	0x3fe4b0a2ca9ac365              # double 0.64656199999999997
	.quad	0x3fb1bcba30121683              # double 0.069286
	.quad	0x3fe804790b849881              # double 0.75054600000000005
	.quad	0x3fc4060fe47991bc              # double 0.15643499999999999
	.quad	0x3fd0795703f2d3c8              # double 0.25740600000000002
	.quad	0x3fd6e1a3f4666eca              # double 0.35752200000000001
	.quad	0x3fe81cfbb949624a              # double 0.75353800000000004
	.quad	0x3fe134f3fd933e36              # double 0.53771400000000003
	.quad	0x3fde8de6ddf00abf              # double 0.47741099999999997
	.quad	0x3fc7b5bf6a0dbad4              # double 0.18523400000000001
	.quad	0x3fdc6f6512a94ff0              # double 0.444299
	.quad	0x3fe9626916440f24              # double 0.79326300000000005
	.quad	0x3fbfb3743632c1f4              # double 0.123832
	.quad	0x3feaf2b020c49ba6              # double 0.84212500000000001
	.quad	0x3fb16cd6c2efd439              # double 0.068067000000000003
	.quad	0x3fe86bb341e14be0              # double 0.76314700000000001
	.quad	0x3fe6f01fb82c2bd8              # double 0.716812
	.quad	0x3fd9dd65a14488c6              # double 0.404138
	.quad	0x3fed7b17ce52deca              # double 0.92127599999999998
	.quad	0x3fabd8e0008637bd              # double 0.054389
	.quad	0x3fe75933e35c5b4b              # double 0.72963900000000004
	.quad	0x3feef10ecb74ddf8              # double 0.96692599999999995
	.quad	0x3feddf9df548ecd9              # double 0.93354700000000002
	.quad	0x3fbbc2b94d940789              # double 0.10843999999999999
	.quad	0x3fe18ede54b48d3b              # double 0.54869000000000001
	.quad	0x3fd41ad6451b9303              # double 0.31413799999999997
	.quad	0x3fb25a682b62845a              # double 0.071692000000000006
	.quad	0x3fcf9a5a89b951c6              # double 0.24689800000000001
	.quad	0x3fe115208e150119              # double 0.533829
	.quad	0x3feacdbbe0157eed              # double 0.83761399999999997
	.quad	0x3fe1d66490a350d3              # double 0.55742100000000006
	.quad	0x3fe0df8b1572580c              # double 0.52728799999999998
	.quad	0x3fe542070b8cfbfc              # double 0.66430999999999996
	.quad	0x3fc7d8c6d612c6ac              # double 0.186303
	.quad	0x3fb3af640639d5e5              # double 0.076895000000000005
	.quad	0x3fc8774eebf65dc0              # double 0.19114100000000001
	.quad	0x3fefaf123c42a66e              # double 0.99012100000000003
	.quad	0x3fd6627bf61aa3f0              # double 0.34976099999999999
	.quad	0x3fb0f8c64fdb09a6              # double 0.066295999999999994
	.quad	0x3fc1649d388a8b09              # double 0.135883
	.quad	0x3fd91a60d4562e0a              # double 0.392235
	.quad	0x3fcfed6ba8c58687              # double 0.24943299999999999
	.quad	0x3fe74d76ab5807ff              # double 0.72820600000000002
	.quad	0x3fdb03fb3743632c              # double 0.42211799999999999
	.quad	0x3fea99da9c99285b              # double 0.83128100000000005
	.quad	0x3fd674b407032980              # double 0.35087299999999999
	.quad	0x3fb626d4801f7510              # double 0.086529999999999995
	.quad	0x3f972ffd1dcd7061              # double 0.022644000000000001
	.quad	0x3fdc6f826edaa92e              # double 0.44430599999999998
	.quad	0x3f9b0f6ad70e6f2f              # double 0.026426000000000002
	.quad	0x3fee9eafee6fb4c4              # double 0.95687100000000002
	.quad	0x3fe6710ecb74ddf8              # double 0.70130099999999995
	.quad	0x3fce3968d759ee89              # double 0.236127
	.quad	0x3fef66c8f7553693              # double 0.98129699999999997
	.quad	0x3fe0f1c3265add9c              # double 0.52951199999999998
	.quad	0x3fe9e48c7192ea53              # double 0.80914900000000001
	.quad	0x3fe333d07c84b5dd              # double 0.60007500000000003
	.quad	0x3fb18644523f67f5              # double 0.068455000000000002
	.quad	0x3f861bb05faebc41              # double 0.010795000000000001
	.quad	0x3fd26bdf4c2b51bd              # double 0.28783399999999998
	.quad	0x3fd7fe75bc44bf4d              # double 0.37490600000000002
	.quad	0x3fd721187e7c06e2              # double 0.36139500000000002
	.quad	0x3fef7540895d0b74              # double 0.98306300000000002
	.quad	0x3fe3694ccab3edd9              # double 0.60660400000000003
	.quad	0x3fec404a72ead927              # double 0.88284799999999997
	.quad	0x3feb1363f572de44              # double 0.846117
	.quad	0x3fcfc3efae7924af              # double 0.248167
	.quad	0x3fe74ca2db61bb06              # double 0.728105
	.quad	0x3fedfdd441355476              # double 0.93723500000000004
	.quad	0x3fef10470a808c82              # double 0.97073699999999996
	.quad	0x3fb449ecb31c219f              # double 0.079253000000000004
	.quad	0x3fefccfd08d4bad8              # double 0.99377300000000001
	.quad	0x3fe736d86ec17ebb              # double 0.72544500000000001
	.quad	0x3fee62aa19439de5              # double 0.94954400000000005
	.quad	0x3fe867e846a5d6bf              # double 0.76268400000000003
	.quad	0x3fd3d26b723ee1bd              # double 0.30971799999999999
	.quad	0x3fe706ad2dcb1466              # double 0.71956500000000001
	.quad	0x3fe97705857afea4              # double 0.79577900000000001
	.quad	0x3fc019a847b24639              # double 0.12578300000000001
	.quad	0x3fbc0cc78e9f6a94              # double 0.10957
	.quad	0x3fca92253111f0c3              # double 0.20758499999999999
	.quad	0x3fc8bd7f51efb6dd              # double 0.19328300000000001
	.quad	0x3fd345132f87ad08              # double 0.301091
	.quad	0x3fdf0ba6266fd652              # double 0.48508600000000002
	.quad	0x3fddb90214ad362f              # double 0.46441700000000002
	.quad	0x3fe70d3ae685db77              # double 0.72036500000000003
	.quad	0x3fca66f5019f3c71              # double 0.20626700000000001
	.quad	0x3fd38c154c985f07              # double 0.305425
	.quad	0x3fd66312f4cf4a56              # double 0.34979700000000002
	.quad	0x3fbe9ac36544fe37              # double 0.119549
	.quad	0x3fd6906466b1e5c1              # double 0.35256300000000002
	.quad	0x3fd50635a426bb56              # double 0.32850400000000002
	.quad	0x3fcb27ed84d338f8              # double 0.21215600000000001
	.quad	0x3fd2958969a0ad8a              # double 0.290377
	.quad	0x3fe30fd9fd36f7e4              # double 0.59568500000000002
	.quad	0x3febd940789613d3              # double 0.87026999999999999
	.quad	0x3fe6d8dbcec84f90              # double 0.71397200000000005
	.quad	0x3fdc81c2e33eff19              # double 0.44541999999999998
	.quad	0x3fec4a925fe974a3              # double 0.88410299999999997
	.quad	0x3fe5c1f42bb66730              # double 0.67992600000000003
	.quad	0x3fe8cf11b60ae968              # double 0.77527699999999999
	.quad	0x3fe59103c8e25c81              # double 0.673952
	.quad	0x3fe1610cf5b1c865              # double 0.54309700000000005
	.quad	0x3feb0665e02ea961              # double 0.84453100000000003
	.quad	0x3fd847c73eee5259              # double 0.37938100000000002
	.quad	0x3fc0ba51a005c465              # double 0.130686
	.quad	0x3fed77fae3608d09              # double 0.92089600000000005
	.quad	0x3fcd9bdc69f8c21e              # double 0.231319
	.quad	0x3fc9919ac79702e6              # double 0.19975599999999999
	.quad	0x3fe06b56fb8f57f7              # double 0.51310299999999998
	.quad	0x3fdb219652bd3c36              # double 0.423925
	.quad	0x3fd74628027d88c2              # double 0.36365700000000001
	.quad	0x3fb79a5a89b951c6              # double 0.092199000000000003
	.quad	0x3fe80c4bd33d2956              # double 0.75150099999999997
	.quad	0x3fe1190f301eabbd              # double 0.53430900000000003
	.quad	0x3fdbb2aae297396d              # double 0.43278
	.quad	0x3fa05b5b70691ea8              # double 0.031947000000000003
	.quad	0x3fd42df0d413122b              # double 0.31530399999999997
	.quad	0x3f6018e757928e0d              # double 0.0019650000000000002
	.quad	0x3fdfdb402d16b980              # double 0.49775700000000001
	.quad	0x3fbf061c79b34a45              # double 0.121187
	.quad	0x3fe2a25742dcf462              # double 0.58231699999999997
	.quad	0x3fef07160956c0d7              # double 0.969615
	.quad	0x3fd83e681a9b8cb9              # double 0.37880900000000001
	.quad	0x3fc75360d0247022              # double 0.18223200000000001
	.quad	0x3fc79756c93a7115              # double 0.184306
	.quad	0x3fe450d0678c0054              # double 0.63486500000000001
	.quad	0x3fed14f0520d130e              # double 0.908806
	.quad	0x3fd80ecb74ddf86e              # double 0.37590299999999999
	.quad	0x3fe4c3e74afd5454              # double 0.64891399999999999
	.quad	0x3fe7ab474107314d              # double 0.73965800000000004
	.quad	0x3fee3fb9bed30f06              # double 0.94527899999999998
	.quad	0x3fb5529fe004b7f6              # double 0.083292000000000004
	.quad	0x3fd13443d46b26c0              # double 0.26881500000000003
	.quad	0x3fa0ba40d90e23af              # double 0.032670999999999999
	.quad	0x3fe389bf9c62a1b6              # double 0.61056500000000002
	.quad	0x3fc7d3c36113404f              # double 0.18615000000000001
	.quad	0x3fea8ae536501e26              # double 0.82945500000000005
	.quad	0x3fb55d0b73d188f4              # double 0.083450999999999997
	.quad	0x3fe670fe047d3d43              # double 0.70129300000000006
	.quad	0x3fe80f6ad70e6f2f              # double 0.75188200000000005
	.quad	0x3fdfd651b0ccbc06              # double 0.49745600000000001
	.quad	0x3fef6e45c358afc4              # double 0.98221099999999994
	.quad	0x3fbe595bbbe878fb              # double 0.118551
	.quad	0x3fefc7cfa26a22b4              # double 0.99314100000000005
	.quad	0x3feaa07d4e09784f              # double 0.83209100000000003
	.quad	0x3fe5794c87980f56              # double 0.67105700000000001
	.quad	0x3fdcdbe7f2c3009b              # double 0.45092199999999999
	.quad	0x3feb98e970718223              # double 0.86241599999999996
	.quad	0x3fe40f9b13165d3a              # double 0.62690500000000005
	.quad	0x3fe438a7e73a365d              # double 0.63191600000000003
	.quad	0x3fe5636b09635611              # double 0.66838600000000004
	.quad	0x3fee807357e670e3              # double 0.95318000000000003
	.quad	0x3fe0a5fe974a3401              # double 0.52026300000000003
	.quad	0x3fbef4adbc664d3c              # double 0.120921
	.quad	0x3feefd9988d2a1f9              # double 0.96845700000000001
	.quad	0x3fe92e5bc87db2b3              # double 0.78690899999999997
	.quad	0x3fdcb940fecdd0d9              # double 0.44880700000000001
	.quad	0x3fe9dc8b86b15f89              # double 0.808172
	.quad	0x3fea1799e518f3ed              # double 0.81538100000000002
	.quad	0x3fe87ae7924af0bf              # double 0.76500299999999999
	.quad	0x3fe7685b9e8c47a1              # double 0.73148899999999994
	.quad	0x3fee8ec95bff0457              # double 0.95492999999999995
	.quad	0x3fedb508f648c719              # double 0.92834899999999998
	.quad	0x3fd078b3700474da              # double 0.25736700000000001
	.quad	0x3fed719b4dcebfec              # double 0.92011799999999999
	.quad	0x3fe443137b07075b              # double 0.63318799999999997
	.quad	0x3fb24873365881a1              # double 0.071417999999999995
	.quad	0x3fcd993d5347a5b1              # double 0.231239
	.quad	0x3fea423d9231c64c              # double 0.82058600000000003
	.quad	0x3f84280ae1049236              # double 0.009842
	.quad	0x3fd5ef284167a95d              # double 0.34272200000000003
	.quad	0x3fdbba237cdcca71              # double 0.43323600000000001
	.quad	0x3fc6f7121ab4b72c              # double 0.17941499999999999
	.quad	0x3fec3a9f383f0baf              # double 0.88215600000000005
	.quad	0x3fef1f44d4456712              # double 0.97256699999999996
	.quad	0x3fe5566490a350d3              # double 0.66679600000000006
	.quad	0x3fc2c647778dd617              # double 0.146676
	.quad	0x3fec6a619da9c993              # double 0.88798600000000005
	.quad	0x3fd12e9ccb7d4174              # double 0.26846999999999999
	.quad	0x3fb089f40a2877ee              # double 0.064604999999999996
	.quad	0x3fdaba98eda22f6a              # double 0.41763899999999998
	.quad	0x3fb2dbe7f2c3009b              # double 0.073667999999999997
	.quad	0x3fcb04bc27631b58              # double 0.21108199999999999
	.quad	0x3fe1cbff47735c18              # double 0.55615199999999998
	.quad	0x3fe87d438d1d8a55              # double 0.76529100000000005
	.quad	0x3fea0fba8826aa8f              # double 0.81442000000000003
	.quad	0x3fdd1b54195cc858              # double 0.454793
	.quad	0x3fd9a311e85fd04a              # double 0.40057799999999999
	.quad	0x3fdb36da87a072d2              # double 0.42522300000000002
	.quad	0x3f8c4d22c881e471              # double 0.013819
	.quad	0x3feb8e53eb399f5e              # double 0.861124
	.quad	0x3fdefc6540cc78ea              # double 0.484155
	.quad	0x3fce425aee631f8a              # double 0.2364
	.quad	0x3fea8dbad3a604e2              # double 0.82980100000000001
	.quad	0x3fe252bd3c361134              # double 0.5726
	.quad	0x3fda8eef1bac2df1              # double 0.41497400000000001
	.quad	0x3fe654477ff151e7              # double 0.69778799999999996
	.quad	0x3fc4fdc1615ebfa9              # double 0.163994
	.quad	0x3fed446950fc71d6              # double 0.914601
	.quad	0x3fe1aba387592535              # double 0.55220199999999997
	.quad	0x3fd475c4a83b1d0d              # double 0.31968800000000003
	.quad	0x3fce17a02fb5d031              # double 0.235096
	.quad	0x3fedf5147f130596              # double 0.93616699999999997
	.quad	0x3fe588c1db0142f6              # double 0.67294399999999999
	.quad	0x3fb6bd3c36113405              # double 0.088825000000000001
	.quad	0x3fdc7fe4bcad9ad8              # double 0.44530599999999998
	.quad	0x3fc2e115592d98bf              # double 0.14749399999999999
	.quad	0x3fe1141a6937d1fe              # double 0.53370399999999996
	.quad	0x3fe08edc3bd59924              # double 0.51743899999999998
	.quad	0x3fe4a28997c3d684              # double 0.644841
	.quad	0x3fd892e1ef73c0c2              # double 0.383965
	.quad	0x3fed4bb7f9d6f113              # double 0.915493
	.quad	0x3fe8909aed56b010              # double 0.767652
	.quad	0x3fe9feb074a771c9              # double 0.81233999999999995
	.quad	0x3fa910e453d20f2c              # double 0.048957000000000001
	.quad	0x3fe7f8bdec5f394b              # double 0.74911399999999995
	.quad	0x3fe6150dae3e6c4c              # double 0.69006999999999996
	.quad	0x3fcf4ba51a005c46              # double 0.24449599999999999
	.quad	0x3fea902363b25700              # double 0.83009500000000003
	.quad	0x3fce7ddca4b124d1              # double 0.23821600000000001
	.quad	0x3fe8325b317efe0d              # double 0.75614700000000001
	.quad	0x3feb535653c9abb0              # double 0.85392299999999999
	.quad	0x3fd2ca89fc6da448              # double 0.29361199999999998
	.quad	0x3fd793d96638433d              # double 0.36839899999999998
	.quad	0x3fdc6c8b43958106              # double 0.44412499999999999
	.quad	0x3fd5619da9c99286              # double 0.33408300000000002
	.quad	0x3fe15fd47bedb728              # double 0.54294799999999999
	.quad	0x3fe1c69d7342edbb              # double 0.55549499999999996
	.quad	0x3fe89dde37585be2              # double 0.76927100000000004
	.quad	0x3fed7d21ff2e48e9              # double 0.92152500000000004
	.quad	0x3fd6fd0d0678c005              # double 0.35919499999999999
	.quad	0x3faaf405f6ba0621              # double 0.052643000000000002
	.quad	0x3fcad6451b93037d              # double 0.20966399999999999
	.quad	0x3fd7ba908a265f0f              # double 0.37076199999999998
	.quad	0x3fe4c2e33eff1950              # double 0.64878999999999998
	.quad	0x3fc75d1c3ac929aa              # double 0.182529
	.quad	0x3fe56ff3ade225fa              # double 0.66991599999999996
	.quad	0x3fc9c0b9991361dd              # double 0.20119400000000001
	.quad	0x3fdcd872f33ca31e              # double 0.45071099999999997
	.quad	0x3fa84988094e5d5b              # double 0.047435999999999999
	.quad	0x3fdb093964a59c06              # double 0.42243799999999998
	.quad	0x3fdb4e2b063e07a3              # double 0.42664600000000003
	.quad	0x3fe3477dd872f33d              # double 0.60247700000000004
	.quad	0x3fd8f22c01e68a0d              # double 0.38978099999999999
	.quad	0x3fde6cfc829cfdd2              # double 0.47540199999999999
	.quad	0x3fc54898f605ab3b              # double 0.16627800000000001
	.quad	0x3f80ccbc05d52c17              # double 0.0082030000000000002
	.quad	0x3fee7d41743e963e              # double 0.95279000000000003
	.quad	0x3fece92f6e82949a              # double 0.90346499999999996
	.quad	0x3fcf20c069e7fb26              # double 0.24318699999999999
	.quad	0x3f929bae46cfc82a              # double 0.018172000000000001
	.quad	0x3fe474f722e1ac58              # double 0.63927800000000001
	.quad	0x3fc9ee675147f130              # double 0.20258799999999999
	.quad	0x3fd273083558a761              # double 0.288271
	.quad	0x3fe1f23ee1bd1eda              # double 0.56082100000000001
	.quad	0x3fe0b23571d1d474              # double 0.52175400000000005
	.quad	0x3fe9b191dde37586              # double 0.80292600000000003
	.quad	0x3feacf6dfc5cdd51              # double 0.83782100000000004
	.quad	0x3fedcad362e90364              # double 0.93100899999999997
	.quad	0x3fd5cd91eeaa6d26              # double 0.34067199999999997
	.quad	0x3fb4fb1183b60286              # double 0.081956000000000001
	.quad	0x3fe3b59578a2a90d              # double 0.61591600000000002
	.quad	0x3fb64aada33bd9cb              # double 0.087077000000000002
	.quad	0x3fe0746455eaee20              # double 0.514208
	.quad	0x3fe1d8c8eef1bac3              # double 0.55771300000000001
	.quad	0x3fe56dd4845132f8              # double 0.66965699999999995
	.quad	0x3fdcfc7e6b3fe9fb              # double 0.45291100000000001
	.quad	0x3fb8a9691a75cd0c              # double 0.096335000000000003
	.quad	0x3fd52773e24febd1              # double 0.33053300000000002
	.quad	0x3fdb07a28bb0a2cb              # double 0.42234100000000002
	.quad	0x3fe4fbd05af6c69b              # double 0.65573899999999996
	.quad	0x3fe90ce2d1f1cfbc              # double 0.78282300000000004
	.quad	0x3fef0789613d31ba              # double 0.96967000000000003
	.quad	0x3fdc7baa9b499d02              # double 0.445048
	.quad	0x3f89e731d2e0e304              # double 0.012648
	.quad	0x3fca91c087442c80              # double 0.20757300000000001
	.quad	0x3fcd22fad6cb5350              # double 0.22763
	.quad	0x3fceb5c39bcba301              # double 0.239922
	.quad	0x3fd8bdbe3c105187              # double 0.38658100000000001
	.quad	0x3fdf45ed4a1ad645              # double 0.48864299999999999
	.quad	0x3fd44e1a3f4666ed              # double 0.31726700000000002
	.quad	0x3fbf1a1986b9c305              # double 0.121492
	.quad	0x3fe68ce91c8eac00              # double 0.70470100000000002
	.quad	0x3fdf132f87ad080b              # double 0.48554599999999998
	.quad	0x3fa602ea960b6fa0              # double 0.042991000000000001
	.quad	0x3fbb4117f84449dc              # double 0.106462
	.quad	0x3f9cdf266ba493c9              # double 0.028195000000000001
	.quad	0x3fc6e9dd7ecbb7fa              # double 0.179012
	.quad	0x3fa6d20296b3354c              # double 0.044571
	.quad	0x3fe265796bfca85d              # double 0.57488700000000004
	.quad	0x3feacf95d4e8fb01              # double 0.83784000000000003
	.quad	0x3fe102adc4c9c90c              # double 0.53157699999999997
	.quad	0x3fed556084a515cf              # double 0.91667200000000004
	.quad	0x3feea6698bb4d489              # double 0.95781400000000005
	.quad	0x3fe4a1be2b4959e6              # double 0.64474399999999998
	.quad	0x3fea615011904b3c              # double 0.82437899999999997
	.quad	0x3faab25b317efe0d              # double 0.052142000000000001
	.quad	0x3fedab191dde3758              # double 0.92713599999999996
	.quad	0x3fb5d40ee06d9381              # double 0.085266999999999996
	.quad	0x3f9eb0b7c3504c49              # double 0.029971000000000001
	.quad	0x3fe5eebb341e14be              # double 0.685392
	.quad	0x3fefc0bbb1f255f3              # double 0.99227699999999996
	.quad	0x3fe9245b291b823d              # double 0.78568800000000005
	.quad	0x3fc4fa82e87d2c7c              # double 0.16389500000000001
	.quad	0x3fbbb688bda9435b              # double 0.108254
	.quad	0x3fcdf26f1dc50ce5              # double 0.233961
	.quad	0x3fe4fd8adab9f55a              # double 0.65595000000000003
	.quad	0x3fcd2999567dbb17              # double 0.22783200000000001
	.quad	0x3fe5ecb31c219eb6              # double 0.68514399999999998
	.quad	0x3fd575cd0bb6ed67              # double 0.33531499999999997
	.quad	0x3fab1897a67a52ac              # double 0.052921999999999997
	.quad	0x3fee8e25c810a56a              # double 0.95485200000000003
	.quad	0x3fe48de4c51116a9              # double 0.64232100000000003
	.quad	0x3fbfafb7e90ff972              # double 0.123775
	.quad	0x3fef7b04ee7c49fd              # double 0.98376699999999994
	.quad	0x3fecad362e903644              # double 0.89614400000000005
	.quad	0x3fdc6cefed63454a              # double 0.44414900000000002
	.quad	0x3fdbe432441fea81              # double 0.435803
	.quad	0x3fc669728a611772              # double 0.175093
	.quad	0x3fedc1acde19fc2b              # double 0.92989200000000005
	.quad	0x3fba57eaa2a0a958              # double 0.102904
	.quad	0x3fe6a1d10b1feeb3              # double 0.70725300000000002
	.quad	0x3fda8ee6b8305d96              # double 0.41497200000000001
	.quad	0x3fe62ebe596c82e0              # double 0.69320599999999999
	.quad	0x3fb78c111ada76d9              # double 0.091980999999999993
	.quad	0x3fd55a9a8049667b              # double 0.33365499999999998
	.quad	0x3fa24af0bf1a5ca3              # double 0.035728000000000003
	.quad	0x3fc809cc319c5a3e              # double 0.18779899999999999
	.quad	0x3fdf8bb4d48882f1              # double 0.49290200000000001
	.quad	0x3fe7c54bcf0b6b6e              # double 0.74283399999999999
	.quad	0x3fc2f8726d04e619              # double 0.14820700000000001
	.quad	0x3feab465625a682b              # double 0.83452099999999996
	.quad	0x3fb83f0bae89eba7              # double 0.094712000000000005
	.quad	0x3feb3c169c23b795              # double 0.85108499999999998
	.quad	0x3fb72c1f42bb6673              # double 0.090517
	.quad	0x3fcdf36262cba733              # double 0.23399
	.quad	0x3fac964628027d89              # double 0.055834000000000002
	.quad	0x3fe70b8cfbfc6541              # double 0.72016000000000002
	.quad	0x3fe182539756c93a              # double 0.54715899999999995
	.quad	0x3fb26490a350d280              # double 0.071846999999999994
	.quad	0x3fe5dc054ef459da              # double 0.68310800000000005
	.quad	0x3fba01797cc39ffd              # double 0.10158499999999999
	.quad	0x3fe036c15d2d01c1              # double 0.50668400000000002
	.quad	0x3fd7f4666ec9e237              # double 0.37429200000000001
	.quad	0x3fe51cc100e6afcd              # double 0.65976000000000001
	.quad	0x3fc0c2bd7f51efb7              # double 0.130943
	.quad	0x3fe98969a0ad8a11              # double 0.79802399999999996
	.quad	0x3fe5b1209edbf8ba              # double 0.67787200000000003
	.quad	0x3feb1c75818c5c9a              # double 0.84722399999999998
	.quad	0x3f9ea14057082492              # double 0.029912000000000001
	.quad	0x3fecf7ad4b2745bf              # double 0.90523399999999998
	.quad	0x3fc88ec52a411c2a              # double 0.191857
	.quad	0x3fdeb25b317efe0d              # double 0.47963600000000001
	.quad	0x3fd534a01abd1aa8              # double 0.33133699999999999
	.quad	0x3fe4bcd141a6937d              # double 0.64804899999999999
	.quad	0x3fab45f17bd8be73              # double 0.053268000000000003
	.quad	0x3fe01a671ef30a4e              # double 0.50322299999999998
	.quad	0x3fbae70c1333b96b              # double 0.105088
	.quad	0x3fcb36933a0407cc              # double 0.21260299999999999
	.quad	0x3fec3b60285ec3db              # double 0.88224800000000003
	.quad	0x3fe2eba493c89f41              # double 0.59126500000000004
	.quad	0x3fd265c2d2780779              # double 0.28746100000000002
	.quad	0x3fe30346dc5d6388              # double 0.59414999999999996
	.quad	0x3febcb4aec8d5c74              # double 0.86856599999999994
	.quad	0x3feca07d4e09784f              # double 0.89459100000000003
	.quad	0x3fd6a0232096787d              # double 0.353524
	.quad	0x3fbba01eeed8904f              # double 0.10791199999999999
	.quad	0x3fedc67168f8e7de              # double 0.93047400000000002
	.quad	0x3fcf8e6d15ad106f              # double 0.246534
	.quad	0x3fe14b5dcc63f141              # double 0.54044999999999999
	.quad	0x3fe4ea65cf67b1c0              # double 0.653613
	.quad	0x3fdc5d744f5d3565              # double 0.44320399999999999
	.quad	0x3f7109070fbeb9e5              # double 0.0041590000000000004
	.quad	0x3feac2ca148ba83f              # double 0.83627799999999997
	.quad	0x3fee7b4e54f7a919              # double 0.95255199999999995
	.quad	0x3fec63e4abe6a338              # double 0.88719400000000004
	.quad	0x3fb6acfb762d83c7              # double 0.088577000000000003
	.quad	0x3fef5323fee2c98e              # double 0.97889899999999996
	.quad	0x3fefb632c1f42bb6              # double 0.99099099999999996
	.quad	0x3fe301cb46bacf74              # double 0.59396899999999997
	.quad	0x3fdb2da122fad6cb              # double 0.42465999999999998
	.quad	0x3fe9e46cfc829cfe              # double 0.80913400000000002
	.quad	0x3fe96e78183f91e6              # double 0.79473499999999997
	.quad	0x3fd1ae7d566cf41f              # double 0.27627499999999999
	.quad	0x3fd09b499d0203e6              # double 0.25947799999999999
	.quad	0x3fe1c8ba83f4eca7              # double 0.55575300000000005
	.quad	0x3fee202d9cf13cef              # double 0.94142800000000004
	.quad	0x3f92ead9274e22a3              # double 0.018474000000000001
	.quad	0x3fef933a0407cc7d              # double 0.98672199999999998
	.quad	0x3fe6d199bb2788db              # double 0.713086
	.quad	0x3fd9b05b7cfe5860              # double 0.401389
	.quad	0x3f655f78359bc340              # double 0.0026090000000000002
	.quad	0x3fd6ab9b23dd54da              # double 0.35422399999999998
	.quad	0x3fd0f0b28522ea10              # double 0.26469100000000001
	.quad	0x3fe09a2a4db163bb              # double 0.51881900000000003
	.quad	0x3fe70d5e8d5410f9              # double 0.72038199999999997
	.quad	0x3fdfbaecd07852f8              # double 0.495784
	.quad	0x3f9cc9a77e5eaab0              # double 0.028112999999999999
	.quad	0x3fcdc664d3bf2f55              # double 0.23261699999999999
	.quad	0x3fd26c764adff823              # double 0.28787000000000001
	.quad	0x3fbab28d8665e02f              # double 0.104287
	.quad	0x3fe6527a20578e5c              # double 0.69756799999999997
	.quad	0x3fc4a960b6f9fcb1              # double 0.16141900000000001
	.quad	0x3fbdd67ba237cdcd              # double 0.116554
	.quad	0x3fc2dfb506dd69d3              # double 0.147452
	.quad	0x3fe41adc8fb86f48              # double 0.62827900000000003
	.quad	0x3fed56e264e48627              # double 0.916856
	.quad	0x3fde4afd5454152b              # double 0.473327
	.quad	0x3fe070bae89eba6b              # double 0.51376100000000002
	.quad	0x3fe39aae6c8f7553              # double 0.61263199999999995
	.quad	0x3fed8c8abd5dc400              # double 0.92340599999999995
	.quad	0x3fcde5082cf52b91              # double 0.23355200000000001
	.quad	0x3fedc4156e264e48              # double 0.93018599999999996
	.quad	0x3fee471f79420b3d              # double 0.94618199999999997
	.quad	0x3fe8505af6c69b5a              # double 0.75980899999999996
	.quad	0x3fe7d3d4280ae105              # double 0.74460800000000005
	.quad	0x3fe6d70e6f2e8c05              # double 0.71375200000000005
	.quad	0x3fe49ec4e7253da7              # double 0.64438099999999998
	.quad	0x3fe35cb9a9da597d              # double 0.60506899999999997
	.quad	0x3fec17ce52deca25              # double 0.87790599999999996
	.quad	0x3fe9d9ab6d00b45b              # double 0.80782100000000001
	.quad	0x3fe51289dadfb507              # double 0.65851300000000001
	.quad	0x3fb44fa05143bf72              # double 0.079339999999999993
	.quad	0x3fe0528f190d1740              # double 0.51007800000000003
	.quad	0x3fe93aeee957470f              # double 0.78844400000000003
	.quad	0x3fe62d98bf7f0670              # double 0.69306599999999996
	.quad	0x3fef6e5abc0e38a8              # double 0.98222100000000001
	.quad	0x3fe2099392189bd8              # double 0.56366899999999998
	.quad	0x3fd40c0ad03d9a95              # double 0.31323499999999999
	.quad	0x3fe590c2c5e2cdc0              # double 0.67392099999999999
	.quad	0x3fe8b1359791819d              # double 0.77163199999999998
	.quad	0x3fe060ded288ce70              # double 0.51182499999999997
	.quad	0x3fcb4c09c3ce208a              # double 0.213258
	.quad	0x3feefc6540cc78ea              # double 0.96831
	.quad	0x3fdf19dece571088              # double 0.485954
	.quad	0x3fd16f7e3d1cc101              # double 0.27243000000000001
	.quad	0x3fd0dddb1209edc0              # double 0.26354100000000003
	.quad	0x3fdba25529fe004b              # double 0.43178299999999997
	.quad	0x3fe9a7c5ac471b48              # double 0.80173000000000005
	.quad	0x3fe00ec0f88333fd              # double 0.50180100000000005
	.quad	0x3fe5bde1e2de8709              # double 0.67942899999999995
	.quad	0x3fdf59817b95a294              # double 0.489838
	.quad	0x3fba52bd3c361134              # double 0.102825
	.quad	0x3feafc04c8bc9cd4              # double 0.84326400000000001
	.quad	0x3feb0116ebd4cfd1              # double 0.84388300000000005
	.quad	0x3f7934efcbd55608              # double 0.0061539999999999997
	.quad	0x3fe83e1650a45d42              # double 0.757579
	.quad	0x3fd57cfa26a22b39              # double 0.33575300000000002
	.quad	0x3f974b838c111ada              # double 0.022748999999999998
	.quad	0x3fad06573215fcc2              # double 0.056689000000000003
	.quad	0x3fe99220ff540896              # double 0.79908800000000002
	.quad	0x3fb4dbbe0157eed4              # double 0.081477999999999995
	.quad	0x3fecf0520d130dfa              # double 0.90433600000000003
	.quad	0x3fcada554b8bef8d              # double 0.209788
	.quad	0x3fe0093964a59c06              # double 0.50112599999999996
	.quad	0x3fdffc6da4484945              # double 0.499782
	.quad	0x3fdfc0724b76f6d7              # double 0.49612099999999998
	.quad	0x3fef0c0485a0be51              # double 0.97021699999999999
	.quad	0x3fe039b66f9335d2              # double 0.50704499999999997
	.quad	0x3fee7dbb16c1e365              # double 0.95284800000000003
	.quad	0x3fd16fb09203a323              # double 0.27244200000000002
	.quad	0x3fe714f69ca9ef52              # double 0.72130899999999998
	.quad	0x3feaed02cd39da16              # double 0.84143199999999996
	.quad	0x3feed8b827fa1a0d              # double 0.963955
	.quad	0x3fa23400b88ca3e8              # double 0.035553000000000001
	.quad	0x3fc24dec1c1d6cf8              # double 0.14300299999999999
	.quad	0x3fe83f67f4dbdf8f              # double 0.75773999999999997
	.quad	0x3fe2bb7952d234ec              # double 0.58538500000000004
	.quad	0x3fe1081c2e33eff2              # double 0.53224000000000005
	.quad	0x3fe0a178f68be2f8              # double 0.51971100000000003
	.quad	0x3fee3061c79b34a4              # double 0.94340599999999996
	.quad	0x3fe8b02d59d55e6c              # double 0.77150600000000002
	.quad	0x3fd909e12a51e322              # double 0.39122800000000002
	.quad	0x3fea7e6d58c8eef2              # double 0.82793300000000003
	.quad	0x3fdc33a4723aafff              # double 0.44065199999999999
	.quad	0x3fefc9b62c77574f              # double 0.99337299999999995
	.quad	0x3fd4aa044ae85b9f              # double 0.32287700000000003
	.quad	0x3fc920ea5b530ced              # double 0.19631699999999999
	.quad	0x3fefd4b2745bf26f              # double 0.99471399999999998
	.quad	0x3fe48ac18f81e8a3              # double 0.64193800000000001
	.quad	0x3fb2d4801f75104d              # double 0.073554999999999995
	.quad	0x3fd859e1f3a57eaa              # double 0.38048599999999999
	.quad	0x3fe77060bb2bba99              # double 0.73246800000000001
	.quad	0x3f5f601797cc3a00              # double 0.001915
	.quad	0x3fdb497fa5d28d00              # double 0.42636099999999999
	.quad	0x3fe37ba8826aa8eb              # double 0.60884499999999997
	.quad	0x3fe0e266fd651b0d              # double 0.52763700000000002
	.quad	0x3fc7aaf78feef5ed              # double 0.18490500000000001
	.quad	0x3fefef694467381d              # double 0.99797499999999994
	.quad	0x3fc054b48d3ae686              # double 0.127585
	.quad	0x3febd7082491afc0              # double 0.86999899999999997
	.quad	0x3fdf33ebbfd71b04              # double 0.48754399999999998
	.quad	0x3f8667b5f1bef49d              # double 0.01094
	.quad	0x3fe45859c8c9320e              # double 0.63578500000000004
	.quad	0x3fda4a6a875d56f3              # double 0.41079199999999999
	.quad	0x3fe2e09784ec636b              # double 0.589916
	.quad	0x3f4d2178f68be2f8              # double 8.8900000000000003E-4
	.quad	0x3fe4824f6598e10d              # double 0.640907
	.quad	0x3fdf958d9b5e95b8              # double 0.49350300000000002
	.quad	0x3feb88333fc86cec              # double 0.86037600000000002
	.quad	0x3f7f2cb641700cd8              # double 0.0076109999999999997
	.quad	0x3fd146887a8d64d8              # double 0.26993
	.quad	0x3fbf77f27fe4bcae              # double 0.12292400000000001
	.quad	0x3fe6ff5a5332acfb              # double 0.71867099999999995
	.quad	0x3fe0eda0168b5cc0              # double 0.52900700000000001
	.quad	0x3fbc192a737110e4              # double 0.109759
	.quad	0x3faaa9b499d0203e              # double 0.052075999999999997
	.quad	0x3fe640e7bc3c5bd1              # double 0.69542300000000001
	.quad	0x3fb5bd2fa0d77b7c              # double 0.084917999999999993
	.quad	0x3fe9f7db6e503fb3              # double 0.81150599999999995
	.quad	0x3feb3c4b09e98dce              # double 0.85111000000000003
	.quad	0x3fd1cc07aaef2c73              # double 0.27807799999999999
	.quad	0x3feb7eed45e9185d              # double 0.85924400000000001
	.quad	0x3f9974a3400b88ca              # double 0.024858999999999999
	.quad	0x3fb6351deefe4ffd              # double 0.086748000000000006
	.quad	0x3fea10afe60c38f3              # double 0.81453699999999996
	.quad	0x3fe42b649d388a8b              # double 0.630297
	.quad	0x3fc21fc08fa7a850              # double 0.141594
	.quad	0x3fe6ad1f1cfbb949              # double 0.70863299999999996
	.quad	0x3fedd6b00ffda405              # double 0.93245699999999998
	.quad	0x3fe689e774eebf66              # double 0.70433400000000002
	.quad	0x3f98a7e73a365cb3              # double 0.024077999999999999
	.quad	0x3fe29743e963dc48              # double 0.58096499999999995
	.quad	0x3fc0e52deca2552a              # double 0.131994
	.quad	0x3fec9dd5d3dc8b87              # double 0.89426700000000003
	.quad	0x3fcf547e06961c37              # double 0.24476600000000001
	.quad	0x3fc454bcf0b6b6e1              # double 0.158836
	.quad	0x3fcd29131ec0b567              # double 0.22781599999999999
	.quad	0x3fd5e7bc3c5bd0e1              # double 0.34226899999999999
	.quad	0x3fe5dcee17a02fb6              # double 0.68321900000000002
	.quad	0x3fdfca600b029281              # double 0.49672699999999997
	.quad	0x3fe4cbddb9841aac              # double 0.64988599999999996
	.quad	0x3fd6640639d5e4a4              # double 0.34985500000000003
	.quad	0x3fe164ba94bbe447              # double 0.54354599999999997
	.quad	0x3feea9fe004b7f5a              # double 0.95825099999999996
	.quad	0x3fc658255b035bd5              # double 0.174565
	.quad	0x3fe81f77292c4934              # double 0.75384099999999998
	.quad	0x3fe2f33a8a3f8983              # double 0.59219100000000002
	.quad	0x3fd50c34c1a8ac5c              # double 0.32887
	.quad	0x3fe9bd102bc72e27              # double 0.80432899999999996
	.quad	0x3fab61565c2d2780              # double 0.053476999999999997
	.quad	0x3fc50f840181e03f              # double 0.16453599999999999
	.quad	0x3fe21b66f9335d25              # double 0.56584500000000004
	.quad	0x3fdae0008637bd06              # double 0.41992200000000002
	.quad	0x3fe91de8b3b32053              # double 0.78490099999999996
	.quad	0x3fccf7a0b5ed8d37              # double 0.22630700000000001
	.quad	0x3fdcad70e6f2e8c0              # double 0.44808599999999998
	.quad	0x3fea4e379b77c02b              # double 0.822048
	.quad	0x3fd35dc4007570c5              # double 0.30259799999999998
	.quad	0x3fc5f67f4dbdf8f4              # double 0.17158499999999999
	.quad	0x3fdd4c8ffb8b2639              # double 0.45779799999999998
	.quad	0x3fd53f4eca686e7e              # double 0.33198899999999998
	.quad	0x3fb02517e77d523b              # double 0.063065999999999997
	.quad	0x3fd612ba16e7a312              # double 0.34489300000000001
	.quad	0x3fe7b4a44c7b02d6              # double 0.74080100000000004
	.quad	0x3fdb9c6f36ef8056              # double 0.431423
	.quad	0x3fc8149c6f36ef80              # double 0.18812899999999999
	.quad	0x3fb0f26aec0724b7              # double 0.066198999999999994
	.quad	0x3fec9d4306e5cd4f              # double 0.89419700000000002
	.quad	0x3fc3085f4a1272c9              # double 0.14869299999999999
	.quad	0x3fee1f81a5870da6              # double 0.94134600000000002
	.quad	0x3fd7411c2a023209              # double 0.36334899999999998
	.quad	0x3fe79ca3a4b5568f              # double 0.73787100000000005
	.quad	0x3fe509fe86833c60              # double 0.65747
	.quad	0x3fd7aed1394317ad              # double 0.37004500000000001
	.quad	0x3fefa5bb7b6bb129              # double 0.98898099999999999
	.quad	0x3fea508d4bad7d7c              # double 0.82233299999999998
	.quad	0x3fe0c4e7253da72a              # double 0.52403599999999995
	.quad	0x3fdebeec39799e52              # double 0.48040300000000002
	.quad	0x3fdd60780fdc1616              # double 0.459013
	.quad	0x3fce5892684cf074              # double 0.23707800000000001
	.quad	0x3fe923ee1bd1ed9e              # double 0.785636
	.quad	0x3fa5cc63f141205c              # double 0.042575000000000002
	.quad	0x3fd672da122fad6d              # double 0.35076000000000002
	.quad	0x3fe04193b3a68b1a              # double 0.50800500000000004
	.quad	0x3fe63faf42784a94              # double 0.69527399999999995
	.quad	0x3fd25d80e496edee              # double 0.28695700000000002
	.quad	0x3fe49d041cc532a5              # double 0.64416700000000005
	.quad	0x3fce13ec460ed80a              # double 0.234983
	.quad	0x3fe8a63305100a39              # double 0.77028799999999997
	.quad	0x3fd35f809917939a              # double 0.30270399999999997
	.quad	0x3fee1f01b866e43b              # double 0.94128500000000004
	.quad	0x3fd34d26fa3fcc9f              # double 0.30158400000000002
	.quad	0x3fedd781c714fce7              # double 0.93255699999999997
	.quad	0x3fe0672da122fad7              # double 0.51259500000000002
	.quad	0x3fb59ac79702e664              # double 0.084392999999999996
	.quad	0x3fd642aed1394318              # double 0.34782000000000002
	.quad	0x3fe241e9af5ba2be              # double 0.570546
	.quad	0x3fc0e34fc610f0e9              # double 0.131937
	.quad	0x3fe0dcdd50a88f00              # double 0.52696100000000001
	.quad	0x3fd4787485e3da30              # double 0.31985200000000003
	.quad	0x3fe19b152f3c2dae              # double 0.55018100000000003
	.quad	0x3fdca469d7342edc              # double 0.44753500000000002
	.quad	0x3fd8251c193b3a69              # double 0.37726500000000002
	.quad	0x3f8bef49cf56eac8              # double 0.013639999999999999
	.quad	0x3fc7d955714b9cb7              # double 0.18632000000000001
	.quad	0x3fe815421c044285              # double 0.75259500000000001
	.quad	0x3fc0a1b5c7cd898b              # double 0.12993499999999999
	.quad	0x3fbccf9e3864cb5c              # double 0.112543
	.quad	0x3fe7e86a4ca4f441              # double 0.74712100000000004
	.quad	0x3fd265bea0ba1f4b              # double 0.28745999999999999
	.quad	0x3fb72ef0ae536502              # double 0.090560000000000001
	.quad	0x3fd5db8348f53c58              # double 0.34152300000000002
	.quad	0x3fe02be8bc169c24              # double 0.50536000000000003
	.quad	0x3fa5696e58a32f45              # double 0.041820000000000003
	.quad	0x3fe985f6ba0620ab              # double 0.79760299999999995
	.quad	0x3fe8e113404ea4a9              # double 0.77747500000000003
	.quad	0x3fd7a272862f598a              # double 0.36929000000000001
	.quad	0x3fd70a958537e2c5              # double 0.36002099999999998
	.quad	0x3fdf69ec2ce46499              # double 0.49084
	.quad	0x3fe39c8a7a41e57e              # double 0.61285900000000004
	.quad	0x3fe765881a1554fc              # double 0.73114400000000002
	.quad	0x3fec3be6601bc98a              # double 0.88231199999999999
	.quad	0x3fbd2deca25529fe              # double 0.113982
	.quad	0x3fecf7079e59f2bb              # double 0.90515500000000004
	.quad	0x3fc212dfd694ccab              # double 0.14120099999999999
	.quad	0x3fe0113c68661ae7              # double 0.50210399999999999
	.quad	0x3fd714ec204f2ae0              # double 0.36065199999999997
	.quad	0x3febf861a60d4563              # double 0.87407000000000001
	.quad	0x3fdb2a77a2cecc81              # double 0.42446699999999998
	.quad	0x3fb43d790752da98              # double 0.079062999999999994
	.quad	0x3fa8e5604189374c              # double 0.048625000000000002
	.quad	0x3fd8cad14a0a0f4d              # double 0.38737899999999997
	.quad	0x3fd0564302b40f67              # double 0.25526500000000002
	.quad	0x3fd01cd5f99c38b0              # double 0.25175999999999998
	.quad	0x3fc1c0b135979182              # double 0.13869300000000001
	.quad	0x3fe90f36694898f6              # double 0.783107
	.quad	0x3fefd3f7ced91687              # double 0.99462499999999998
	.quad	0x3fe813c68661ae71              # double 0.75241400000000003
	.quad	0x3fe69d16fc9bc771              # double 0.70667599999999997
	.quad	0x3fd06fb4c3c18b50              # double 0.25681799999999999
	.quad	0x3fc54dc65c70435f              # double 0.166436
	.quad	0x3fd862d83c6c97d9              # double 0.38103300000000001
	.quad	0x3fe6a1ea35935fc4              # double 0.70726500000000003
	.quad	0x3fdde43aa79bbadc              # double 0.467055
	.quad	0x3fd6aee631f8a090              # double 0.35442499999999999
	.quad	0x3fd4d99cbee807bc              # double 0.32578200000000002
	.quad	0x3fe7847d3d4280ae              # double 0.73492299999999999
	.quad	0x3fcf5fb2edfe75bc              # double 0.24510799999999999
	.quad	0x3fb8d0edc3bd5992              # double 0.096937999999999996
	.quad	0x3fb1835158b827fa              # double 0.068409999999999999
	.quad	0x3fe0b16c1e364bec              # double 0.52165799999999996
	.quad	0x3fd228e4fb97bb73              # double 0.283746
	.quad	0x3fe628155d5f56a8              # double 0.69239300000000004
	.quad	0x3fea3882278d0cc3              # double 0.81939799999999996
	.quad	0x3fca7c286f8ad256              # double 0.20691399999999999
	.quad	0x3fd241cc532a4980              # double 0.28526600000000002
	.quad	0x3fcc72fba01eeed9              # double 0.22225900000000001
	.quad	0x3fe6eddaceee0f3d              # double 0.71653500000000003
	.quad	0x3fed311622813448              # double 0.912242
	.quad	0x3fd1b517a46173b8              # double 0.27667799999999998
	.quad	0x3fe43573eab367a1              # double 0.631525
	.quad	0x3fc2f1d3ed527e52              # double 0.148005
	.quad	0x3fc5fc19c17225b7              # double 0.17175599999999999
	.quad	0x3f6fddebd9018e75              # double 0.0038899999999999998
	.quad	0x3fb7cc8de2ac3223              # double 0.092965000000000006
	.quad	0x3fe68f29d40ee06e              # double 0.70497600000000005
	.quad	0x3fed7583a53b8e4c              # double 0.92059500000000005
	.quad	0x3fd3338b47c73eee              # double 0.30002099999999998
	.quad	0x3fa51efb6dca07f6              # double 0.041251999999999997
	.quad	0x3fdcd82773e24fec              # double 0.45069300000000001
	.quad	0x3fcc0a5269595fee              # double 0.21906500000000001
	.quad	0x3fe1ba92a3055326              # double 0.55402499999999999
	.quad	0x3fd5a116659d12cb              # double 0.33795700000000001
	.quad	0x3fa838c111ada76e              # double 0.047308000000000003
	.quad	0x3fe56991ff7164c7              # double 0.66913699999999998
	.quad	0x3fc0392e1ef73c0c              # double 0.126745
	.quad	0x3fe501c714fce747              # double 0.65646700000000002
	.quad	0x3fb476d117b5286b              # double 0.079937999999999995
	.quad	0x3feabd5347a5b0ff              # double 0.83561099999999999
	.quad	0x3fc7074213a0c6b5              # double 0.17990900000000001
	.quad	0x3fcf56b873797460              # double 0.244834
	.quad	0x3fc57b634dad31fd              # double 0.167828
	.quad	0x3fef7a1c25d07421              # double 0.98365599999999997
	.quad	0x3fe90b9dc2f405f7              # double 0.78266800000000003
	.quad	0x3fc205ccc89b0ee5              # double 0.14080200000000001
	.quad	0x3fe6e312f4cf4a56              # double 0.71521900000000005
	.quad	0x3fdc038e29f9ce8e              # double 0.43771700000000002
	.quad	0x3fba699c7bcc2939              # double 0.103174
	.quad	0x3fddc36113404ea5              # double 0.46505000000000002
	.quad	0x3feea3d0bfa09460              # double 0.95749700000000004
	.quad	0x3fe70a30db6a1e82              # double 0.71999400000000002
	.quad	0x3fe8dccc89b0ee4a              # double 0.776953
	.quad	0x3fc3db09a671ef31              # double 0.15512200000000001
	.quad	0x3fece12e83a109d0              # double 0.90248799999999996
	.quad	0x3f52f4cf4a558ea8              # double 0.001157
	.quad	0x3fe71dc725c3dee8              # double 0.72238500000000005
	.quad	0x3fd4d7be9856a37b              # double 0.32566800000000001
	.quad	0x3fe3c7a9e2bcf91a              # double 0.61812299999999998
	.quad	0x3fc6d06fef7c243e              # double 0.17823600000000001
	.quad	0x3fe1a49a133c1ce7              # double 0.55134300000000003
	.quad	0x3fe8279fec99f1ae              # double 0.75483699999999998
	.quad	0x3faf46ed245b291c              # double 0.061088000000000003
	.quad	0x3fd53b29a1b9f98b              # double 0.33173599999999998
	.quad	0x3fb5ce5b4245f5ae              # double 0.085180000000000005
	.quad	0x3fe94e26d4801f75              # double 0.79078999999999999
	.quad	0x3fe54a31e7d9988d              # double 0.66530699999999998
	.quad	0x3fe42c3c9eecbfb1              # double 0.63039999999999996
	.quad	0x3fd371758e219653              # double 0.30380000000000001
	.quad	0x3fef53f5b5fa2270              # double 0.97899899999999995
	.quad	0x3fc72d4d4024b33e              # double 0.18107000000000001
	.quad	0x3fe59697f1f9ad00              # double 0.67463300000000004
	.quad	0x3fd86a832b990afe              # double 0.38150099999999998
	.quad	0x3fe3e83a109d0636              # double 0.62209800000000004
	.quad	0x3fe7178f68be2f7b              # double 0.72162599999999999
	.quad	0x3fe43986338b47c7              # double 0.63202199999999997
	.quad	0x3fd86b76709fa54c              # double 0.38155899999999998
	.quad	0x3fea154a7f8012e0              # double 0.81509900000000001
	.quad	0x3fe78917d6b65a9b              # double 0.73548500000000006
	.quad	0x3fc3685985ad538b              # double 0.15162200000000001
	.quad	0x3fcb9c49774256bd              # double 0.21570700000000001
	.quad	0x3fe1b18116ebd4d0              # double 0.55291800000000002
	.quad	0x3fe78bcdfefbf402              # double 0.73581600000000003
	.quad	0x3fe216ebd4cfd08d              # double 0.56529799999999997
	.quad	0x3fcd604189374bc7              # double 0.22950000000000001
	.quad	0x3fe5675360d02470              # double 0.66886299999999999
	.quad	0x3f8d7e45803cd142              # double 0.014401000000000001
	.quad	0x3fd871f36262cba7              # double 0.38195499999999999
	.quad	0x3fc8f0520d130dfa              # double 0.19483400000000001
	.quad	0x3fd30068db8bac71              # double 0.2969
	.quad	0x3fe53506dd69d302              # double 0.66272299999999995
	.quad	0x3fecf5147f130596              # double 0.90491699999999997
	.quad	0x3f8938151a437825              # double 0.012314
	.quad	0x3fc194855da27286              # double 0.13734499999999999
	.quad	0x3fe1193d5347a5b1              # double 0.534331
	.quad	0x3fbd7bb73083558a              # double 0.11516899999999999
	.quad	0x3fe0757928e0c9da              # double 0.51434000000000002
	.quad	0x3fb8167a95c853c1              # double 0.094092999999999996
	.quad	0x3fe64105186db50f              # double 0.69543699999999997
	.quad	0x3fe00fb65668c261              # double 0.50191799999999998
	.quad	0x3fc1743e963dc487              # double 0.13636000000000001
	.quad	0x3fd068ad68837718              # double 0.25638899999999998
	.quad	0x3fd2e09bb6aa4b99              # double 0.29495900000000003
	.quad	0x3fef52220bc382a1              # double 0.97877599999999997
	.quad	0x3fe2acc0bdcad14a              # double 0.583588
	.quad	0x3fec336bd2b6f199              # double 0.88127699999999998
	.quad	0x3feea137f38c5437              # double 0.95718000000000003
	.quad	0x3fd4e39f77292c49              # double 0.32639299999999999
	.quad	0x3fc21a93293d102c              # double 0.14143600000000001
	.quad	0x3fefbb03e20ccff2              # double 0.99157899999999999
	.quad	0x3fe9b48d3ae685db              # double 0.80328999999999995
	.quad	0x3fd1a808c8259e1f              # double 0.27588099999999999
	.quad	0x3fd08b588e368f08              # double 0.25850499999999998
	.quad	0x3fd7318fc504816f              # double 0.3624
	.quad	0x3fd4d3ae685db76b              # double 0.32541999999999999
	.quad	0x3fb55831f03d145e              # double 0.083377000000000006
	.quad	0x3fe59d99029ae4f3              # double 0.67548799999999998
	.quad	0x3fd14538ef34d6a1              # double 0.26984999999999998
	.quad	0x3fea7fed20296b33              # double 0.82811599999999996
	.quad	0x3fea0d21bc126a66              # double 0.81410300000000002
	.quad	0x3fef910e453d20f3              # double 0.98645700000000002
	.quad	0x3fdec144028e4fb9              # double 0.48054599999999997
	.quad	0x3fb9f06f69446738              # double 0.101325
	.quad	0x3fd570a3d70a3d71              # double 0.33500000000000002
	.quad	0x3fd93033a4723ab0              # double 0.393567
	.quad	0x3fe002107b784663              # double 0.50025200000000003
	.quad	0x3fe93c33f85510d4              # double 0.78859900000000004
	.quad	0x3fe893b3a68b19a4              # double 0.76802999999999999
	.quad	0x3febbe63e8dda48b              # double 0.86699099999999996
	.quad	0x3fdb84cf0739b025              # double 0.429981
	.quad	0x3fd0f559b3d07c85              # double 0.26497500000000002
	.quad	0x3fd5550ca1cef241              # double 0.333316
	.quad	0x3fcd8e086bdf4c2b              # double 0.23089699999999999
	.quad	0x3fa32b12d3415b14              # double 0.037437999999999999
	.quad	0x3fdca9c99285a922              # double 0.44786300000000001
	.quad	0x3fa88e15011904b4              # double 0.047959000000000002
	.quad	0x3fe3860bb2bba98f              # double 0.61011300000000002
	.quad	0x3fe44d035371971c              # double 0.63440099999999999
	.quad	0x3fa1d68c692f6e83              # double 0.034840000000000003
	.quad	0x3fc3733226c3b928              # double 0.151953
	.quad	0x3fe77d6b65a9a805              # double 0.73406000000000005
	.quad	0x3fe4e4b662fdfc1a              # double 0.65291900000000003
	.quad	0x3fe2e963dc486ad3              # double 0.59099000000000002
	.quad	0x3fd861fe21d96e9c              # double 0.38098100000000001
	.quad	0x3fbf343fa2ad3e92              # double 0.121891
	.quad	0x3fe9e69ad42c3c9f              # double 0.80940000000000001
	.quad	0x3fbbc17a89331a09              # double 0.108421
	.quad	0x3fe228a3f8982cb2              # double 0.56746099999999999
	.quad	0x3fef755582129457              # double 0.98307299999999997
	.quad	0x3fc6559f6ec5b079              # double 0.174488
	.quad	0x3fe3a80ae1049236              # double 0.614263
	.quad	0x3fe7a4f440af1cb9              # double 0.73888600000000004
	.quad	0x3fef8fecdd0d8cb0              # double 0.98631899999999995
	.quad	0x3fceb1ee2435696e              # double 0.23980499999999999
	.quad	0x3fe6c4b90214ad36              # double 0.71151399999999998
	.quad	0x3fef3558a7610279              # double 0.97526199999999996
	.quad	0x3fe57062d40aaeb0              # double 0.66996900000000004
	.quad	0x3fd2f572de43ed96              # double 0.29623100000000002
	.quad	0x3fe6ec95bff04578              # double 0.71638000000000002
	.quad	0x3fc33ee5eedcc20d              # double 0.15035699999999999
	.quad	0x3fd87991bc558644              # double 0.38241999999999998
	.quad	0x3fd950268900c522              # double 0.39551700000000001
	.quad	0x3fa303e20ccff21b              # double 0.037138999999999998
	.quad	0x3fed8bcbe61cffeb              # double 0.923315
	.quad	0x3fd31aa3f034b0e2              # double 0.29850100000000002
	.quad	0x3f54ca925fe974a3              # double 0.0012689999999999999
	.quad	0x3fd37b56b8737974              # double 0.30440299999999998
	.quad	0x3fd6536d655e28aa              # double 0.34884199999999999
	.quad	0x3fe5014d72799a20              # double 0.65640900000000002
	.quad	0x3fd812513b5bf6a1              # double 0.37611800000000001
	.quad	0x3feba2f8bdec5f39              # double 0.86364399999999997
	.quad	0x3fd1380cb6c7a7ca              # double 0.26904600000000001
	.quad	0x3fe5809917939a7c              # double 0.67194799999999999
	.quad	0x3fd6a98aa8650e78              # double 0.35409800000000002
	.quad	0x3fcfed20296b3355              # double 0.24942400000000001
	.quad	0x3fe98a43bb40b34e              # double 0.79812799999999995
	.quad	0x3fd1a65492ff4ba5              # double 0.27577699999999999
	.quad	0x3fc0d71f36262cba              # double 0.13156499999999999
	.quad	0x3fd96c15d2d01c0d              # double 0.39722200000000002
	.quad	0x3fcb5cbff47735c2              # double 0.21376800000000001
	.quad	0x3f4ff2e48e8a71de              # double 9.7499999999999996E-4
	.quad	0x3fef17763e4abe6a              # double 0.97161399999999998
	.quad	0x3fe5a48f96e15875              # double 0.67633799999999999
	.quad	0x3fef7503b81b64e0              # double 0.98303399999999996
	.quad	0x3fe1f8ad25679896              # double 0.56160600000000005
	.quad	0x3fedb80cb6c7a7ca              # double 0.92871700000000001
	.quad	0x3fd909edbf8b9baa              # double 0.391231
	.quad	0x3febafc2656abde4              # double 0.865205
	.quad	0x3fee63baba7b9171              # double 0.94967400000000002
	.quad	0x3fe8b402d16b97ff              # double 0.77197400000000005
	.quad	0x3feb22706d506573              # double 0.84795399999999999
	.quad	0x3fef6a5f84cad57c              # double 0.98173500000000002
	.quad	0x3fccbe1650a45d42              # double 0.224551
	.quad	0x3fc698c3b0c4588a              # double 0.176537
	.quad	0x3fa2cdc011d3671b              # double 0.036726000000000002
	.quad	0x3fedc7325918a00a              # double 0.930566
	.quad	0x3fe33ee1bd1ed9e0              # double 0.60142600000000002
	.quad	0x3fb465a57646ae3a              # double 0.079675999999999996
	.quad	0x3fdbb8c75c4a83b2              # double 0.43315300000000001
	.quad	0x3fe6d627bf61aa3f              # double 0.713642
	.quad	0x3fd9ecedd4845133              # double 0.405086
	.quad	0x3fe152e514c22ee4              # double 0.54136899999999999
	.quad	0x3fd346a5d6bebe16              # double 0.30118699999999998
	.quad	0x3fe6336bd2b6f199              # double 0.69377699999999998
	.quad	0x3fecc10f94c87981              # double 0.898567
	.quad	0x3fb7beb9e492bc30              # double 0.092754000000000003
	.quad	0x3fec47f349385836              # double 0.88378299999999999
	.quad	0x3fdf593e5fb71fbc              # double 0.48982199999999998
	.quad	0x3fde558a76102795              # double 0.47397099999999998
	.quad	0x3fdaa5119ce075f7              # double 0.416325
	.quad	0x3fdc1a8ac5c13fd1              # double 0.43912000000000001
	.quad	0x3feb6cf41f212d77              # double 0.85704999999999998
	.quad	0x3fd00c3d25247cb7              # double 0.250747
	.quad	0x3fe274c4cdfaca36              # double 0.57675399999999999
	.quad	0x3fe59f36262cba73              # double 0.67568499999999998
	.quad	0x3fe73db7f1737543              # double 0.72628400000000004
	.quad	0x3fe7e0f7fcfc3f81              # double 0.74621199999999999
	.quad	0x3fd7c4e7253da72a              # double 0.37139299999999997
	.quad	0x3fe96262cba732df              # double 0.79325999999999997
	.quad	0x3fe15abc0e38a7e7              # double 0.54232599999999997
	.quad	0x3fe7300ffda4052d              # double 0.72461699999999996
	.quad	0x3fb33471f79420b4              # double 0.075019000000000002
	.quad	0x3fe771cb89d6adf7              # double 0.73264099999999999
	.quad	0x3fe7f26d04e618ce              # double 0.74834299999999998
	.quad	0x3fe783fb3743632c              # double 0.73486099999999999
	.quad	0x3fe239c94f69ca9f              # double 0.569554
	.quad	0x3fd7ffb04ee7c4a0              # double 0.37498100000000001
	.quad	0x3fd16145953586cb              # double 0.27156200000000003
	.quad	0x3fe24b05b7cfe586              # double 0.571658
	.quad	0x3fd39b34a44c7b03              # double 0.30634800000000001
	.quad	0x3f7b5fa22706d506              # double 0.0066829999999999997
	.quad	0x3fc7a8c586876e1e              # double 0.184838
	.quad	0x3fdd12d77318fc50              # double 0.45427499999999998
	.quad	0x3fe7a1f4b1ee2435              # double 0.73851999999999995
	.quad	0x3fdfbe1a8262456f              # double 0.49597799999999997
	.quad	0x3fdb8ed5f138bce0              # double 0.430593
	.quad	0x3fd19eb6390c9108              # double 0.275312
	.quad	0x3fd9f737da61e0c6              # double 0.40571400000000002
	.quad	0x3fd9ee6b8305d95e              # double 0.40517700000000001
	.quad	0x3fee62cfd8f0c77e              # double 0.94956200000000002
	.quad	0x3fe5d935fc3b4f61              # double 0.68276499999999996
	.quad	0x3fed615011904b3c              # double 0.91812899999999997
	.quad	0x3fe7dba6efc371da              # double 0.74556299999999998
	.quad	0x3f95625a682b6284              # double 0.020882999999999999
	.quad	0x3fb6cb966be7afa7              # double 0.089043999999999998
	.quad	0x3fd18f53c579f234              # double 0.27437299999999998
	.quad	0x3fcb794a6eb91b3f              # double 0.214639
	.quad	0x3fdc9f77292c4934              # double 0.44723299999999999
	.quad	0x3fed53ae685db76b              # double 0.91646499999999997
	.quad	0x3fe4649d388a8b09              # double 0.63728200000000002
	.quad	0x3feb4e7253da72a8              # double 0.85332600000000003
	.quad	0x3fd1938583621fb0              # double 0.27462900000000001
	.quad	0x3fe747a7c9de0503              # double 0.72749699999999995
	.quad	0x3fe594ab1d4f9c20              # double 0.67439800000000005
	.quad	0x3fd8676640a6b93d              # double 0.38131100000000001
	.quad	0x3f86d43d03968d76              # double 0.011147000000000001
	.quad	0x3feaba51a005c465              # double 0.83524399999999999
	.quad	0x3fedaaf35e310dbf              # double 0.927118
	.quad	0x3fe3fd7c2ca148bb              # double 0.62469300000000005
	.quad	0x3fced30f062d40ab              # double 0.240816
	.quad	0x3fe98787485e3da3              # double 0.797794
	.quad	0x3fd1c9539b888723              # double 0.27791300000000002
	.quad	0x3fe36bdf4c2b51bd              # double 0.60691799999999996
	.quad	0x3fe7bae46cfc829d              # double 0.741564
	.quad	0x3fe8676ea4228998              # double 0.76262600000000003
	.quad	0x3fd9e0e736049ecb              # double 0.40435199999999999
	.quad	0x3feb90d5a5b9628d              # double 0.86143000000000003
	.quad	0x3fd0a7ef9db22d0e              # double 0.26024999999999998
	.quad	0x3fee4436fc158fb4              # double 0.94582699999999997
	.quad	0x3fe32832b990afe6              # double 0.59865699999999999
	.quad	0x3fe96d19dece5711              # double 0.79456800000000005
	.quad	0x3fb0d22c881e4713              # double 0.065707000000000002
	.quad	0x3fea3ed30f062d41              # double 0.82016900000000004
	.quad	0x3fe80b7a1c25d074              # double 0.75140099999999998
	.quad	0x3fdf378ee2867275              # double 0.48776599999999998
	.quad	0x3fd481cb46bacf74              # double 0.32042199999999998
	.quad	0x3fef0856e696a26e              # double 0.96976799999999996
	.quad	0x3fad8750c1b97354              # double 0.057673000000000002
	.quad	0x3fb6a2a0a958537e              # double 0.088418999999999997
	.quad	0x3fe86d245b291b82              # double 0.76332299999999997
	.quad	0x3feb93ab430f4949              # double 0.86177599999999999
	.quad	0x3fe7b23571d1d474              # double 0.74050400000000005
	.quad	0x3fe9a7b0b3919264              # double 0.80171999999999998
	.quad	0x3fd8b71b8aa00193              # double 0.38617600000000002
	.quad	0x3fe314317acc4ef9              # double 0.59621500000000005
	.quad	0x3fe3e5d7cb2d905c              # double 0.621807
	.quad	0x3fe215f02c4d65e4              # double 0.56517799999999996
	.quad	0x3fe2a8d8665e02eb              # double 0.58311100000000005
	.quad	0x3fdb296f6512a950              # double 0.424404
	.quad	0x3fda0b4e11dbca97              # double 0.40694000000000002
	.quad	0x3fe4e7a95c853c15              # double 0.65327900000000005
	.quad	0x3fed8795f676ea42              # double 0.92280099999999998
	.quad	0x3fcfffcdab191dde              # double 0.24999399999999999
	.quad	0x3f8a8049667b5f1c              # double 0.01294
	.quad	0x3fd78909289dadfb              # double 0.36773899999999998
	.quad	0x3fdd5f78359bc340              # double 0.45895200000000003
	.quad	0x3fe646c332f01755              # double 0.69613800000000003
	.quad	0x3fd72599ed7c6fbd              # double 0.36166999999999999
	.quad	0x3faa13a0c6b484d7              # double 0.050930999999999997
	.quad	0x3fdfdbf0563ed0f6              # double 0.49779899999999999
	.quad	0x3fe204d983947497              # double 0.56309200000000004
	.quad	0x3fe28b11409a2403              # double 0.57947599999999999
	.quad	0x3fd69e279dd3bafe              # double 0.35340300000000002
	.quad	0x3fe0ada76d97b310              # double 0.52119800000000005
	.quad	0x3fd6fbbd7b2031cf              # double 0.35911500000000002
	.quad	0x3fe14f2ae07e5a79              # double 0.54091400000000001
	.quad	0x3fec9bed30f062d4              # double 0.89403399999999999
	.quad	0x3fc856473471f794              # double 0.190133
	.quad	0x3fcb77ea1c68ec53              # double 0.21459700000000001
	.quad	0x3fec776a2f48c2e7              # double 0.88957699999999995
	.quad	0x3fcb400b88ca3e7d              # double 0.212892
	.quad	0x3fd89bbf0dc768e0              # double 0.38450600000000001
	.quad	0x3fe588094e5d5b25              # double 0.67285600000000001
	.quad	0x3fe5773c0c1fc8f3              # double 0.67080499999999998
	.quad	0x3fe75dd095af294e              # double 0.73020200000000002
	.quad	0x3fa9d9f4d37c1377              # double 0.050491000000000001
	.quad	0x3fecd44bb1af3a15              # double 0.90091500000000002
	.quad	0x3fec4f5d35653c9b              # double 0.88468800000000003
	.quad	0x3fbc1c92ddbdb5d9              # double 0.10981100000000001
	.quad	0x3fe6b92e1ef73c0c              # double 0.71010499999999999
	.quad	0x3fd6eb67c286f8ad              # double 0.35811799999999999
	.quad	0x3fe153aa369fcf3e              # double 0.54146300000000003
	.quad	0x3feba821f2990f30              # double 0.86427399999999999
	.quad	0x3fe9c5974e65bea1              # double 0.80537000000000003
	.quad	0x3febd208e1501190              # double 0.86938899999999997
	.quad	0x3feaccdfaca36199              # double 0.83750899999999995
	.quad	0x3fe8160956c0d6f5              # double 0.75268999999999997
	.quad	0x3fe172085b18548b              # double 0.54517000000000004
	.quad	0x3fe7a9ae4f3343fa              # double 0.73946299999999998
	.quad	0x3fb19d66adb402d1              # double 0.068807999999999994
	.quad	0x3fa20f4d7add15f0              # double 0.035272999999999999
	.quad	0x3fea341bfbdf090f              # double 0.81886099999999995
	.quad	0x3fedb0e3cd9a5226              # double 0.92784299999999997
	.quad	0x3fd251b0ccbc05d5              # double 0.28623599999999999
	.quad	0x3fe42d87f88765ba              # double 0.63055799999999995
	.quad	0x3f6e75360d024702              # double 0.003718
	.quad	0x3fd94a90470a808d              # double 0.39517600000000003
	.quad	0x3fedeabffcdab192              # double 0.93490600000000001
	.quad	0x3fd8e73a365cb35f              # double 0.38911299999999999
	.quad	0x3fc09131ec0b5675              # double 0.12943099999999999
	.quad	0x3fea50aaa7ded6bb              # double 0.82234700000000005
	.quad	0x3fee8856e696a26e              # double 0.95414299999999996
	.quad	0x3fdf112fd32c625f              # double 0.48542400000000002
	.quad	0x3fef16e9bbf0dc77              # double 0.97154700000000004
	.quad	0x3fe2053198288052              # double 0.56313400000000002
	.quad	0x3fb81f969e3c9689              # double 0.094231999999999996
	.quad	0x3febdfeda6612839              # double 0.871085
	.quad	0x3fe1436976bc1f00              # double 0.53947900000000004
	.quad	0x3fde00abf76a2f49              # double 0.46879100000000001
	.quad	0x3febeb00ffda4053              # double 0.87243700000000002
	.quad	0x3fc449d388a8b08e              # double 0.158503
	.quad	0x3fe315ce9e5e2479              # double 0.59641200000000005
	.quad	0x3f9b12d3415b1423              # double 0.026439000000000001
	.quad	0x3fcdc7607c4199fe              # double 0.23264699999999999
	.quad	0x3feefee4e26d4802              # double 0.968615
	.quad	0x3fbb9a38fbca105a              # double 0.107822
	.quad	0x3fe6ec1e364bec68              # double 0.71632300000000004
	.quad	0x3fee359578a2a90d              # double 0.94404100000000002
	.quad	0x3fe8b2a497fa5d29              # double 0.77180700000000002
	.quad	0x3fcaf227d028a1e0              # double 0.21051500000000001
	.quad	0x3fe55db9841aac54              # double 0.66769100000000003
	.quad	0x3fe39c58255b035c              # double 0.61283500000000002
	.quad	0x3fecd7603925bb7b              # double 0.90129099999999995
	.quad	0x3fe141d6cf850df1              # double 0.53928699999999996
	.quad	0x3fe47e889c1b5419              # double 0.64044599999999996
	.quad	0x3fc4d1d8a5482385              # double 0.16265399999999999
	.quad	0x3fd18ace24bba12b              # double 0.27409699999999998
	.quad	0x3fd93b60285ec3db              # double 0.39424900000000002
	.quad	0x3fd272756861e929              # double 0.28823599999999999
	.quad	0x3fe55375c8d9f905              # double 0.66643799999999997
	.quad	0x3fce55da272862f6              # double 0.23699500000000001
	.quad	0x3fc764a59c065b64              # double 0.182759
	.quad	0x3f843b70ef566491              # double 0.0098790000000000006
	.quad	0x3fdc49d388a8b08e              # double 0.44200600000000001
	.quad	0x3fe29d2bf5515055              # double 0.58168600000000004
	.quad	0x3fe16dd052934acb              # double 0.544655
	.quad	0x3fecf7036c9c0a8d              # double 0.90515299999999999
	.quad	0x3febacabc5154867              # double 0.86482800000000004
	.quad	0x3fece3f78bbd3804              # double 0.90282799999999996
	.quad	0x3fef9c90c4dec1c2              # double 0.98786200000000002
	.quad	0x3fd8256bca5375c9              # double 0.37728400000000001
	.quad	0x3fe5694ee392e1ef              # double 0.66910499999999995
	.quad	0x3fdce0c5a8155d5f              # double 0.45121899999999998
	.quad	0x3fec89e98dcdb37d              # double 0.89183500000000004
	.quad	0x3fe3c3eb7cbb3c82              # double 0.61766600000000005
	.quad	0x3fa1248d7e02645e              # double 0.033481999999999998
	.quad	0x3fd3ba5a038194c0              # double 0.308249
	.quad	0x3fc82070b8cfbfc6              # double 0.18848999999999999
	.quad	0x3fc19c9d5a187a4a              # double 0.13759199999999999
	.quad	0x3fe173343fa2ad3f              # double 0.54531300000000005
	.quad	0x3fe258d79d0a6762              # double 0.57334499999999999
	.quad	0x3fe387cc7d1bb491              # double 0.61032699999999995
	.quad	0x3fe31170d62bf120              # double 0.59587900000000005
	.quad	0x3fd6f27bb2fec56d              # double 0.35854999999999998
	.quad	0x3fb7e0bd44998d04              # double 0.093272999999999995
	.quad	0x3fe39ba1b1960fa1              # double 0.61274799999999996
	.quad	0x3fe05c0db2702a35              # double 0.51123700000000005
	.quad	0x3fdd6eac8605681f              # double 0.45988000000000001
	.quad	0x3fe30c3f3e0370ce              # double 0.59524500000000002
	.quad	0x3fea4c7b02d59d56              # double 0.82183600000000001
	.quad	0x3febd76cce5f7404              # double 0.87004700000000001
	.quad	0x3fb761aa3f034b0e              # double 0.091333999999999998
	.quad	0x3fede605ee568a50              # double 0.93432899999999997
	.quad	0x3fd1d106ee30caa3              # double 0.27838299999999999
	.quad	0x3fe48e368f084620              # double 0.64236000000000004
	.quad	0x3fe18ac9f2fdb8fe              # double 0.54819200000000001
	.quad	0x3fef9eb851eb851f              # double 0.98812500000000003
	.quad	0x3fec1635610adcd3              # double 0.87771100000000002
	.quad	0x3febdd377e1b8ed2              # double 0.87075400000000003
	.quad	0x3fe7576ee73e681b              # double 0.72942300000000004
	.quad	0x3fb3ce746cb966be              # double 0.077368999999999993
	.quad	0x3fa614df8b157258              # double 0.043128
	.quad	0x3fe98ab4fa48301a              # double 0.79818199999999995
	.quad	0x3fe4b0e7ff583a54              # double 0.64659500000000003
	.quad	0x3fe968f29d40ee07              # double 0.79406100000000002
	.quad	0x3f5422ccb3a2595c              # double 0.0012290000000000001
	.quad	0x3f991fb3fa6defc8              # double 0.024535000000000001
	.quad	0x3fd8ba4d6e47dc38              # double 0.38637100000000002
	.quad	0x3fee8b8cfbfc6541              # double 0.95453500000000002
	.quad	0x3fcf720c8cd63cb8              # double 0.245668
	.quad	0x3fd284b1ab0856e7              # double 0.28934900000000002
	.quad	0x3fc65479d4d83409              # double 0.174453
	.quad	0x3fd0a50d6b228dca              # double 0.26007400000000003
	.quad	0x3fcc892253111f0c              # double 0.22293499999999999
	.quad	0x3fd11950331e3a7e              # double 0.26717000000000002
	.quad	0x3fd65c422036006d              # double 0.349381
	.quad	0x3fd532e3821af7d3              # double 0.331231
	.quad	0x3fd7c4588a04d120              # double 0.37135899999999999
	.quad	0x3fd9fab53d640e9d              # double 0.40592699999999998
	.quad	0x3fd01a93293d102c              # double 0.25162200000000001
	.quad	0x3fec38c5436b8f9b              # double 0.88192999999999999
	.quad	0x3fdbbcba30121683              # double 0.433394
	.quad	0x3fdeda6a44417870              # double 0.48208099999999998
	.quad	0x3fe1f3d188f42fe8              # double 0.56101299999999998
	.quad	0x3fef4e67d77fae36              # double 0.978321
	.quad	0x3fbf1f14983d7907              # double 0.121568
	.quad	0x3fe2d51d68c692f7              # double 0.58851500000000001
	.quad	0x3fe71f36262cba73              # double 0.72255999999999998
	.quad	0x3fc7002e2328f9f4              # double 0.17969299999999999
	.quad	0x3fe8872085b18549              # double 0.76649500000000004
	.quad	0x3fefbe4abe6a337b              # double 0.99197900000000005
	.quad	0x3fe448626f60e0eb              # double 0.63383599999999996
	.quad	0x3fd94d2f5dbb9cfa              # double 0.39533600000000002
	.quad	0x3f84afd5454152b1              # double 0.010101000000000001
	.quad	0x3fed36deb95e5aff              # double 0.91294799999999998
	.quad	0x3fe96136e71cda2b              # double 0.79311699999999996
	.quad	0x3fed48605681ecd5              # double 0.91508500000000004
	.quad	0x3fce82491afc04c9              # double 0.23835100000000001
	.quad	0x3fd794467381d7dc              # double 0.368425
	.quad	0x3feda378ab0c88a4              # double 0.92620499999999994
	.quad	0x3fedc8882f0e0a85              # double 0.93072900000000003
	.quad	0x3fe763beec39799e              # double 0.73092599999999996
	.quad	0x3fc9b82c2bd7f51f              # double 0.200933
	.quad	0x3fc719ac79702e66              # double 0.18047099999999999
	.quad	0x3fdae29f9ce8d973              # double 0.42008200000000001
	.quad	0x3feab29802c0a4a0              # double 0.83430099999999995
	.quad	0x3fca25204af92296              # double 0.204258
	.quad	0x3fdbca643cc07aaf              # double 0.434228
	.quad	0x3feef3f316e37154              # double 0.96727899999999999
	.quad	0x3fcc7d3d4280ae10              # double 0.22257199999999999
	.quad	0x3fe5ac2bd7f51efb              # double 0.67726699999999995
	.quad	0x3fe438066c2acb86              # double 0.63183900000000004
	.quad	0x3fd6fe8ee6b8305e              # double 0.35928700000000002
	.quad	0x3fe0ac3eb7cbb3c8              # double 0.52102599999999999
	.quad	0x3fba86f8ad256799              # double 0.10362200000000001
	.quad	0x3fe0102de00d1b71              # double 0.50197499999999995
	.quad	0x3fe9453b0813cab8              # double 0.78970099999999999
	.quad	0x3fd0e3de6149c6f3              # double 0.26390799999999998
	.quad	0x3fd27c80841ede12              # double 0.28884900000000002
	.quad	0x3fbad106ee30caa3              # double 0.104752
	.quad	0x3fb2c03ff69014b6              # double 0.073246000000000006
	.quad	0x3fedf5b1c8648840              # double 0.93624200000000001
	.quad	0x3fecc964628027d9              # double 0.89958400000000005
	.quad	0x3fe24f2064239607              # double 0.57215899999999997
	.quad	0x3fc317481b21c476              # double 0.149148
	.quad	0x3fe81bcba3012168              # double 0.75339299999999998
	.quad	0x3fdd09e98dcdb37d              # double 0.45373000000000002
	.quad	0x3fe29253543aeab8              # double 0.58036200000000004
	.quad	0x3fba121ee675147f              # double 0.101839
	.quad	0x3fd99af1886df82b              # double 0.40008199999999999
	.quad	0x3fee2415f45e0b4e              # double 0.94190499999999999
	.quad	0x3fea916872b020c5              # double 0.83025000000000004
	.quad	0x3fd7ec17ebaf1023              # double 0.37378499999999998
	.quad	0x3fe3e920c069e7fb              # double 0.62220799999999998
	.quad	0x3fecfad6cb535009              # double 0.90561999999999998
	.quad	0x3fd260ae9680e065              # double 0.28715099999999999
	.quad	0x3fe502ea960b6fa0              # double 0.65660600000000002
	.quad	0x3fc661cffeb074a7              # double 0.17485999999999999
	.quad	0x3fd17a28bb0a2caa              # double 0.27308100000000002
	.quad	0x3fc71843c3a42f1f              # double 0.18042800000000001
	.quad	0x3fdba1e81cb46bad              # double 0.431757
	.quad	0x3fa5b39e279dd3bb              # double 0.042386
	.quad	0x3fc0055fbb517a46              # double 0.125164
	.quad	0x3feb88e9b38d60a6              # double 0.86046299999999998
	.quad	0x3fee53543aeab799              # double 0.94767199999999996
	.quad	0x3fec4d9c6b053198              # double 0.88447399999999998
	.quad	0x3fe2100e6afcce1c              # double 0.56445999999999996
	.quad	0x3fee4677b395c422              # double 0.946102
	.quad	0x3fee4322291fb3fa              # double 0.94569499999999995
	.quad	0x3fe6d2a62aa1943a              # double 0.71321400000000001
	.quad	0x3fc10374ff865d7d              # double 0.13291800000000001
	.quad	0x3fedb35b0bbf50e3              # double 0.92814399999999997
	.quad	0x3fed13ad5bee3d60              # double 0.90865200000000001
	.quad	0x3fe185857afea3df              # double 0.54754899999999995
	.quad	0x3fdea3cea6c1a049              # double 0.47874800000000001
	.quad	0x3fe67dda8bd230ba              # double 0.70286300000000002
	.quad	0x3fa2acd9e83e425b              # double 0.036475
	.quad	0x3fe8088b545c78a7              # double 0.75104300000000002
	.quad	0x3fd84ae85b9e8c48              # double 0.37957200000000002
	.quad	0x3fb417dae81882ae              # double 0.078489000000000003
	.quad	0x3fe275275ee99a63              # double 0.57680100000000001
	.quad	0x3fe1dac68a936c59              # double 0.55795600000000001
	.quad	0x3fd717225b749add              # double 0.36078700000000002
	.quad	0x3faf9767903211cb              # double 0.061702
	.quad	0x3fdce9fadafd1138              # double 0.45178099999999999
	.quad	0x3fe24f850df15a4b              # double 0.57220700000000002
	.quad	0x3f9399f5dfeb8d82              # double 0.019141999999999999
	.quad	0x3fea51e75360d024              # double 0.82249799999999995
	.quad	0x3fd7c0b9991361dd              # double 0.37113800000000002
	.quad	0x3fe17d651b0ccbc0              # double 0.54655699999999996
	.quad	0x3fee74fd6d7e889c              # double 0.95178099999999998
	.quad	0x3fa398201cd5f99c              # double 0.038269999999999998
	.quad	0x3fea34d8ba40d90e              # double 0.81895099999999998
	.quad	0x3fe1ee978d4fdf3b              # double 0.56037499999999996
	.quad	0x3fd230164840e172              # double 0.28418500000000002
	.quad	0x3fcda38759253544              # double 0.23155300000000001
	.quad	0x3fedd8d9b5e95b79              # double 0.93272100000000002
	.quad	0x3fceb0e1b4bb5e0f              # double 0.23977299999999999
	.quad	0x3fdbe63e8dda48b6              # double 0.43592799999999998
	.quad	0x3fe8183947496aad              # double 0.75295699999999999
	.quad	0x3fd59aa60913a4f8              # double 0.33756399999999998
	.quad	0x3fe8cfede97d06bc              # double 0.77538200000000001
	.quad	0x3fa5a48b65237048              # double 0.042271000000000003
	.quad	0x3fed206a6e32e382              # double 0.91020699999999999
	.quad	0x3fcc444178705426              # double 0.220833
	.quad	0x3fed56f544bb1af4              # double 0.91686500000000004
	.quad	0x3fd29c2c1b10fd7e              # double 0.29078199999999998
	.quad	0x3fe80df7a4e7ab75              # double 0.75170499999999996
	.quad	0x3fa18cc144028e50              # double 0.034277000000000002
	.quad	0x3fe2e9ced0b30b5b              # double 0.59104100000000004
	.quad	0x3fd71c4fc1df3301              # double 0.36110300000000001
	.quad	0x3fe1bc126a65cf68              # double 0.55420800000000003
	.quad	0x3feb63d1cc100e6b              # double 0.855935
	.quad	0x3fe2cbd76ee73e68              # double 0.58738299999999999
	.quad	0x3fdfc8b439581062              # double 0.49662499999999998
	.quad	0x3fd2554fbdad7519              # double 0.28645700000000002
	.quad	0x3fc014bdfd2630ec              # double 0.12563299999999999
	.quad	0x3fd6ff21b3aeee95              # double 0.35932199999999997
	.quad	0x3fdc2db61bb05faf              # double 0.44029000000000001
	.quad	0x3fe6d4c33b539325              # double 0.713472
	.quad	0x3fdc9c27e9531551              # double 0.44703100000000001
	.quad	0x3fd1de00d1b71759              # double 0.27917500000000001
	.quad	0x3fc39d7fd82773e2              # double 0.15324399999999999
	.quad	0x3fe972ffd1dcd706              # double 0.79528799999999999
	.quad	0x3fd15a89b951c5c5              # double 0.27115099999999998
	.quad	0x3fa7aca36199780c              # double 0.046239000000000002
	.quad	0x3fb2a90cd423d923              # double 0.072891999999999998
	.quad	0x3fdbcad9ad85dfa8              # double 0.43425599999999998
	.quad	0x3fb2392e1ef73c0c              # double 0.071184999999999998
	.quad	0x3fd044c37e6f71a8              # double 0.25419700000000001
	.quad	0x3fe687bfe7e1fc09              # double 0.704071
	.quad	0x3f7d7342edbb59de              # double 0.0071900000000000002
	.quad	0x3fe36366d7a56de3              # double 0.60588399999999998
	.quad	0x3fea3b7f9d6f1130              # double 0.81976300000000002
	.quad	0x3fee087ebf22c01e              # double 0.93853699999999995
	.quad	0x3fe6626916440f24              # double 0.69951300000000005
	.quad	0x3fe10bb906466b1e              # double 0.53268099999999996
	.quad	0x3fe5abef06b37868              # double 0.67723800000000001
	.quad	0x3fd4449129888f86              # double 0.31668499999999999
	.quad	0x3fe1e586013660e5              # double 0.55926799999999999
	.quad	0x3fe28f190d173fb8              # double 0.57996800000000004
	.quad	0x3fe3c45ed4a1ad64              # double 0.61772099999999996
	.quad	0x3fe614940bbb1f25              # double 0.69001199999999996
	.quad	0x3fd43111f0c34c1b              # double 0.31549500000000003
	.quad	0x3fdcd74d594f26af              # double 0.45064100000000001
	.quad	0x3fe44baf965b20b8              # double 0.634239
	.quad	0x3fe4cf61672324c8              # double 0.65031499999999998
	.quad	0x3fe34f3fd933e35c              # double 0.60342399999999996
	.quad	0x3febcc8366516db1              # double 0.86871500000000001
	.quad	0x3fd7ccd0fe8ab4fa              # double 0.37187599999999998
	.quad	0x3fad80a17b0f6ad7              # double 0.057622
	.quad	0x3fce8b5cbff47736              # double 0.23862800000000001
	.quad	0x3feef5afaf859429              # double 0.96749099999999998
	.quad	0x3fc985729b280f13              # double 0.19938500000000001
	.quad	0x3fcbc49fd7a13c25              # double 0.21693799999999999
	.quad	0x3fead48238540464              # double 0.83844099999999999
	.quad	0x3fe862f5989df117              # double 0.76207999999999998
	.quad	0x3fa5c9a34ca0c283              # double 0.042554000000000002
	.quad	0x3fe6253111f0c34c              # double 0.69203999999999999
	.quad	0x3fe33d44998d0460              # double 0.60122900000000001
	.quad	0x3fef6a98244e93e2              # double 0.98176200000000002
	.quad	0x3fddef8055fbb518              # double 0.46774300000000002
	.quad	0x3fe3c74107314ca9              # double 0.61807299999999998
	.quad	0x3fe312ee84ad794a              # double 0.59606099999999995
	.quad	0x3fede7296f6512a9              # double 0.93446799999999997
	.quad	0x3fb7de939eadd591              # double 0.093240000000000003
	.quad	0x3f9ca31e7d9988d3              # double 0.027966000000000001
	.quad	0x3fe7554fbdad7519              # double 0.72916400000000003
	.quad	0x3fd2b039ef0f16f4              # double 0.29200599999999999
	.quad	0x3fe71287c200c0f0              # double 0.72101199999999999
	.quad	0x3fe0554b8bef8ceb              # double 0.51041199999999998
	.quad	0x3fd6c5bd0e12e83a              # double 0.355819
	.quad	0x3fe567cd03537197              # double 0.66892099999999999
	.quad	0x3fc90b5aa715831f              # double 0.195659
	.quad	0x3fc823b7952d234f              # double 0.18859000000000001
	.quad	0x3fc2d612c6ac215c              # double 0.14715800000000001
	.quad	0x3fa6412cf0f9d2bf              # double 0.043465999999999998
	.quad	0x3fddc0db2702a348              # double 0.46489599999999998
	.quad	0x3fdbbecedd484513              # double 0.43352099999999999
	.quad	0x3fe5ca31e7d9988d              # double 0.68093199999999998
	.quad	0x3fe53a4d6e47dc38              # double 0.66336700000000004
	.quad	0x3fb660a2014727dd              # double 0.087412000000000004
	.quad	0x3fd4851a86940358              # double 0.32062400000000002
	.quad	0x3fe5943393ab430f              # double 0.67434099999999997
	.quad	0x3fe2ad9ad85dfa87              # double 0.58369199999999999
	.quad	0x3fdd70ac3a860dcc              # double 0.46000200000000002
	.quad	0x3feb370ef566490a              # double 0.85047099999999998
	.quad	0x3fed5232d2bb2357              # double 0.91628399999999999
	.quad	0x3fe2ca7935760392              # double 0.58721599999999996
	.quad	0x3f8ce7cd03537197              # double 0.014114
	.quad	0x3fe410de093532e8              # double 0.62705900000000003
	.quad	0x3fdbe62131a8ef78              # double 0.435921
	.quad	0x3fe4e2e4d1a65061              # double 0.65269699999999997
	.quad	0x3fde77ee4e26d480              # double 0.47606999999999999
	.quad	0x3fd431ceaf251c19              # double 0.31553999999999999
	.quad	0x3fe55abc0e38a7e7              # double 0.66732599999999997
	.quad	0x3fdfb30b5aa71583              # double 0.49530299999999999
	.quad	0x3fca1e7967caea74              # double 0.20405499999999999
	.quad	0x3fe4b1960fa15db3              # double 0.64667799999999998
	.quad	0x3fef17635e74299e              # double 0.97160500000000005
	.quad	0x3fecb6933a0407cc              # double 0.89728699999999994
	.quad	0x3fd8d2849cb252ce              # double 0.387849
	.quad	0x3fed929cbab649d4              # double 0.92414700000000005
	.quad	0x3fdaae1049235f81              # double 0.41687400000000002
	.quad	0x3fb6bcc6c54bcf0b              # double 0.088817999999999994
	.quad	0x3fd82e83a109d063              # double 0.37783899999999998
	.quad	0x3fabc36113404ea5              # double 0.054225000000000002
	.quad	0x3fe22070b8cfbfc6              # double 0.56645999999999996
	.quad	0x3fe1b2e7b3d8e001              # double 0.55308900000000005
	.quad	0x3fc835efa615a8df              # double 0.18914600000000001
	.quad	0x3fd86f694467381d              # double 0.38179999999999997
	.quad	0x3fd8487fcb923a2a              # double 0.37942500000000001
	.quad	0x3fedc3f811f4f50a              # double 0.930172
	.quad	0x3fec3d33d29563aa              # double 0.88247100000000001
	.quad	0x3fe48f648c7192ea              # double 0.64250399999999996
	.quad	0x3fee61b089a02752              # double 0.94942499999999996
	.quad	0x3fd8fb267c6b8b69              # double 0.39032899999999998
	.quad	0x3fdf076c050bd87b              # double 0.48482799999999998
	.quad	0x3fe92146a1a500d6              # double 0.78531200000000001
	.quad	0x3fdd70eb24a6a876              # double 0.46001700000000001
	.quad	0x3fcb3cab81f969e4              # double 0.21278900000000001
	.quad	0x3fd6f4d37c1376d5              # double 0.35869299999999998
	.quad	0x3fddf08893b7d849              # double 0.467806
	.quad	0x3fca290eed02cd3a              # double 0.204378
	.quad	0x3fec0aaeafab53d6              # double 0.87630399999999997
	.quad	0x3fbf1704ff43419e              # double 0.121445
	.quad	0x3fd93b14a90470a8              # double 0.394231
	.quad	0x3fd51187e7c06e1a              # double 0.32919500000000002
	.quad	0x3feece13f4a98aa8              # double 0.96265599999999995
	.quad	0x3fc2f55de58e64b2              # double 0.14811299999999999
	.quad	0x3fc4e1932d6ece14              # double 0.163134
	.quad	0x3fc96555c52e72da              # double 0.198405
	.quad	0x3fe68999dcb5781c              # double 0.70429699999999995
	.quad	0x3fe4f221858bc59c              # double 0.65455700000000006
	.quad	0x3fc6d1c7de5082cf              # double 0.17827699999999999
	.quad	0x3fd8c88e79aae6c9              # double 0.387241
	.quad	0x3fe4c8ffb8b26395              # double 0.649536
	.quad	0x3fe0d106ee30caa3              # double 0.52551599999999998
	.quad	0x3f925460aa64c2f8              # double 0.017899999999999999
	.quad	0x3fdecf95d4e8fb01              # double 0.48142000000000001
	.quad	0x3f8c254a3c64345d              # double 0.013743
	.quad	0x3fd952b90a782907              # double 0.39567400000000003
	.quad	0x3fb20d130df9bdc7              # double 0.070512000000000005
	.quad	0x3fee24f227d028a2              # double 0.94201000000000001
	.quad	0x3fed9a6b50b0f27c              # double 0.92510000000000003
	.quad	0x3fde6698bb4d4888              # double 0.47501199999999999
	.quad	0x3fcda4723aafff37              # double 0.23158100000000001
	.quad	0x3fe1cadddf43c7d6              # double 0.55601400000000001
	.quad	0x3fc48abd5dc40075              # double 0.16048399999999999
	.quad	0x3fdd22b3892ee84b              # double 0.45524300000000001
	.quad	0x3fcaa2339c0ebee0              # double 0.20807500000000001
	.quad	0x3fedd97b30f8c650              # double 0.93279800000000002
	.quad	0x3fe7ab0856e696a2              # double 0.73962799999999995
	.quad	0x3fdcd1b2e59af9ec              # double 0.450299
	.quad	0x3fe2bb7521144cbe              # double 0.58538299999999999
	.quad	0x3fe6633269df97ab              # double 0.69960900000000004
	.quad	0x3fe86c3dab5c39bd              # double 0.76321300000000003
	.quad	0x3feca35f80991794              # double 0.89494300000000004
	.quad	0x3fb4a7c5ac471b48              # double 0.080685000000000007
	.quad	0x3fa096feb4a6655a              # double 0.032402
	.quad	0x3fb9672324c83665              # double 0.099229999999999999
	.quad	0x3feb893532e7b3d9              # double 0.86049900000000001
	.quad	0x3fe846b26bf8769f              # double 0.75863000000000003
	.quad	0x3fef26ce358298cc              # double 0.97348699999999999
	.quad	0x3fb4f9096bb98c7e              # double 0.081924999999999997
	.quad	0x3fdd9e518f3eccc4              # double 0.46278799999999998
	.quad	0x3fe3326bf8769ec3              # double 0.59990500000000002
	.quad	0x3fea2bf11f926c7f              # double 0.81786400000000004
	.quad	0x3fd35c5b4aa9717e              # double 0.302512
	.quad	0x3fd4a41e57d9dba9              # double 0.322517
	.quad	0x3fe3c13b9f127f5f              # double 0.61733800000000005
	.quad	0x3fe7c467381d7dbf              # double 0.74272499999999997
	.quad	0x3fe15e2478854cdb              # double 0.54274199999999995
	.quad	0x3fd8bedfa43fe5c9              # double 0.38664999999999999
	.quad	0x3feeae6c8f755369              # double 0.95879199999999997
	.quad	0x3feba94dd72367e4              # double 0.86441699999999999
	.quad	0x3fdcc0724b76f6d7              # double 0.44924599999999998
	.quad	0x3fd8f7caa7589efe              # double 0.39012400000000003
	.quad	0x3fda9bf9c62a1b5c              # double 0.41576999999999997
	.quad	0x3fb1cfaacd9e83e4              # double 0.069574999999999998
	.quad	0x3fde4ef459d9902a              # double 0.47356900000000002
	.quad	0x3f9a9ac36544fe37              # double 0.025981000000000001
	.quad	0x3fe2771eafee6fb5              # double 0.57704100000000003
	.quad	0x3fee47cfa26a22b4              # double 0.94626600000000005
	.quad	0x3f7e71044f1a1987              # double 0.0074320000000000002
	.quad	0x3fe337dc7abfb9bf              # double 0.60056900000000002
	.quad	0x3fef807bbb62413e              # double 0.98443400000000003
	.quad	0x3fe150ebaade657c              # double 0.54112800000000005
	.quad	0x3fe19a11233df2aa              # double 0.55005700000000002
	.quad	0x3febd3dc8b86b160              # double 0.86961200000000005
	.quad	0x3fdd7dd872f33ca3              # double 0.46080599999999999
	.quad	0x3fb6697aeddce7cd              # double 0.087547
	.quad	0x3fcc490a350d2807              # double 0.22097900000000001
	.quad	0x3fd0e774eebf65dc              # double 0.264127
	.quad	0x3fe4c3e74afd5454              # double 0.64891399999999999
	.quad	0x3fed34fa48301a7a              # double 0.912717
	.quad	0x3fba5a9a8049667b              # double 0.10294499999999999
	.quad	0x3fe963a9f383f0bb              # double 0.79341600000000001
	.quad	0x3fef5d18090b417d              # double 0.98011400000000004
	.quad	0x3fe83f42352eb5f6              # double 0.75772200000000001
	.quad	0x3fe8aac1094a2b9d              # double 0.77084399999999997
	.quad	0x3fbefa615a8deb10              # double 0.121008
	.quad	0x3fe599d0203e63e9              # double 0.67502600000000001
	.quad	0x3fe79f81a5870da6              # double 0.73822100000000002
	.quad	0x3fd78e8a71de69ad              # double 0.36807499999999999
	.quad	0x3fd1693c03bc4d23              # double 0.27204800000000001
	.quad	0x3fe99dda059a73b4              # double 0.80051899999999998
	.quad	0x3fe6918a009f6230              # double 0.70526599999999995
	.quad	0x3feb42784a9478c8              # double 0.85186399999999995
	.quad	0x3feab673c4f3ba77              # double 0.83477199999999996
	.quad	0x3feb14bdfd2630ec              # double 0.84628199999999997
	.quad	0x3fae6ddf00abf76a              # double 0.059431999999999999
	.quad	0x3fe93545c78a6dad              # double 0.78775300000000004
	.quad	0x3fe0d7b2031ceaf2              # double 0.52632999999999996
	.quad	0x3fd6ab92c061847f              # double 0.35422199999999998
	.quad	0x3fdc6ef8055fbb51              # double 0.44427299999999997
	.quad	0x3fde894812be48a6              # double 0.47712900000000003
	.quad	0x3fed745bf26f1dc5              # double 0.92045399999999999
	.quad	0x3fea8620ab713272              # double 0.82887299999999997
	.quad	0x3fdfc5d206c8711d              # double 0.49644899999999997
	.quad	0x3fe474d7add15f03              # double 0.63926300000000003
	.quad	0x3fb27503b81b64e0              # double 0.072097999999999995
	.quad	0x3fceca25529fe005              # double 0.24054400000000001
	.quad	0x3fdcee5abc0e38a8              # double 0.45204800000000001
	.quad	0x3fbb6a50d6b228dd              # double 0.10709100000000001
	.quad	0x3fe1309a671ef30a              # double 0.53718299999999997
	.quad	0x3fe51e6cd29131ec              # double 0.659964
	.quad	0x3fecda76d97b30f9              # double 0.90166800000000003
	.quad	0x3fe54dd72367e415              # double 0.66575200000000001
	.quad	0x3fd0d8d79d0a6762              # double 0.263235
	.quad	0x3fe596030c23fab1              # double 0.67456199999999999
	.quad	0x3fe656f75d9a0f0a              # double 0.69811599999999996
	.quad	0x3fba0791c4b90215              # double 0.101678
	.quad	0x3fd5e44b6e935b92              # double 0.342059
	.quad	0x3feb61cbccf28c7a              # double 0.855688
	.quad	0x3fd7c0ebedfa43fe              # double 0.37114999999999998
	.quad	0x3fe86f911cf355ce              # double 0.76361900000000005
	.quad	0x3fe2d8e64b231401              # double 0.58897699999999997
	.quad	0x3fe8d78e5c4eb570              # double 0.77631300000000003
	.quad	0x3fece1522a6f3f53              # double 0.902505
	.quad	0x3fd1df04ddb5525d              # double 0.27923700000000001
	.quad	0x3fd9eb78897e9963              # double 0.404997
	.quad	0x3fdc9795b35b0bbf              # double 0.44675199999999998
	.quad	0x3fc4f9f44d445671              # double 0.163878
	.quad	0x3fb23486f049a997              # double 0.071113999999999997
	.quad	0x3fe3f77079e59f2c              # double 0.62395500000000004
	.quad	0x3fe960ae9680e065              # double 0.79305199999999998
	.quad	0x3fe732b12d3415b1              # double 0.72493799999999997
	.quad	0x3fe573061c79b34a              # double 0.67029099999999997
	.quad	0x3fe9ffe2a3cea6c2              # double 0.81248600000000004
	.quad	0x3fc51fe64f54d1e9              # double 0.16503599999999999
	.quad	0x3fd88eb463497b74              # double 0.38371
	.quad	0x3fe1398a65492ff5              # double 0.53827400000000003
	.quad	0x3fc4e7c49fd7a13c              # double 0.163323
	.quad	0x3fddf312b1b36bd3              # double 0.46796100000000002
	.quad	0x3fec0ae74f2f123c              # double 0.87633099999999997
	.quad	0x3fe90f1f57b41bfc              # double 0.78309600000000001
	.quad	0x3fc31a2a4db163bb              # double 0.14923600000000001
	.quad	0x3fe8b3ca31e7d999              # double 0.77194700000000005
	.quad	0x3fcf09310129cbab              # double 0.24246799999999999
	.quad	0x3fa3c9eecbfb15b5              # double 0.038649999999999997
	.quad	0x3fe80b06c43f5f91              # double 0.75134599999999996
	.quad	0x3f939de481f53826              # double 0.019157
	.quad	0x3fe39e03f705857b              # double 0.613039
	.quad	0x3fe0388ca3e7d135              # double 0.50690299999999999
	.quad	0x3fead041cc532a49              # double 0.83792199999999994
	.quad	0x3fecbe7d1351159c              # double 0.89825299999999996
	.quad	0x3f4650a45d41fa76              # double 6.8099999999999996E-4
	.quad	0x3fb0727dcbddb984              # double 0.064246999999999999
	.quad	0x3fcb271bcdbbe015              # double 0.21213099999999999
	.quad	0x3feaaeb5f5f0b285              # double 0.83382699999999998
	.quad	0x3feb328954a7f801              # double 0.84991899999999998
	.quad	0x3fb0c34c1a8ac5c1              # double 0.065479999999999997
	.quad	0x3fe2833e78e1932d              # double 0.57852099999999995
	.quad	0x3fd497bb73083559              # double 0.32176100000000002
	.quad	0x3fdf4edb2f661f19              # double 0.48918800000000001
	.quad	0x3fd3320535c9e668              # double 0.29992799999999997
	.quad	0x3fd19641f644955b              # double 0.27479599999999998
	.quad	0x3fc2ae31d712a0ec              # double 0.14594099999999999
	.quad	0x3fd39a6f826edaa9              # double 0.30630099999999999
	.quad	0x3fe7e74080f98fa3              # double 0.74697899999999995
	.quad	0x3fba2f05a708ede5              # double 0.10228
	.quad	0x3fe8b52220bc382a              # double 0.77211099999999999
	.quad	0x3fe83b4916ca46e1              # double 0.75723700000000005
	.quad	0x3fe5ff4fd6d7e88a              # double 0.68741600000000003
	.quad	0x3fe7c0fcb4f1e4b4              # double 0.74230799999999997
	.quad	0x3fd1db50f40e5a36              # double 0.27901100000000001
	.quad	0x3fe79f4b1ee24357              # double 0.73819500000000005
	.quad	0x3fea9c6b05319829              # double 0.83159400000000006
	.quad	0x3fd2153bd1676641              # double 0.28254600000000002
	.quad	0x3fbffe6d58c8eef2              # double 0.124976
	.quad	0x3fe046540cc78e9f              # double 0.50858499999999995
	.quad	0x3fb36c050bd87b57              # double 0.075867000000000004
	.quad	0x3fd48effe2a3cea7              # double 0.32122800000000001
	.quad	0x3fdb22b7baecd078              # double 0.42399399999999998
	.quad	0x3fa0913a4f8726d0              # double 0.032357999999999998
	.quad	0x3fda39756c93a711              # double 0.40975699999999998
	.quad	0x3fc7550ca1cef241              # double 0.182283
	.quad	0x3fcdc9cd3e0bd44a              # double 0.23272100000000001
	.quad	0x3f828bf3bea91d9b              # double 0.0090559999999999998
	.quad	0x3fda4fc610f0e90c              # double 0.41111900000000001
	.quad	0x3fe7d8c8eef1bac3              # double 0.74521300000000001
	.quad	0x3fede8dfbd6a593a              # double 0.93467699999999998
	.quad	0x3fd56317268d3283              # double 0.334173
	.quad	0x3fea096bb98c7e28              # double 0.81364999999999998
	.quad	0x3fc851e321a2e7f7              # double 0.189999
	.quad	0x3fec385a4f00ef13              # double 0.88187899999999997
	.quad	0x3feb54c122749f0e              # double 0.85409599999999997
	.quad	0x3fd7d1a650614163              # double 0.37217099999999997
	.quad	0x3fea69ff0cbaf966              # double 0.82543900000000003
	.quad	0x3fd3c2df0d413123              # double 0.30876900000000002
	.quad	0x3fe8e5abc0e38a7e              # double 0.77803599999999995
	.quad	0x3fd5883771865519              # double 0.33643899999999999
	.quad	0x3fecd27a20578e5c              # double 0.90069299999999996
	.quad	0x3fe303e8576cce5f              # double 0.59422699999999995
	.quad	0x3fe7af87ad080b67              # double 0.74017699999999997
	.quad	0x3fc48f5c28f5c28f              # double 0.16062499999999999
	.quad	0x3fc99e1f3a57eaa3              # double 0.20013800000000001
	.quad	0x3feb76102795703f              # double 0.85816199999999998
	.quad	0x3fca8db0574b4070              # double 0.20744899999999999
	.quad	0x3fd06338b47c73ef              # double 0.25605600000000001
	.quad	0x3feb222d5171e29b              # double 0.84792199999999995
	.quad	0x3fe53bf93ff25e57              # double 0.66357100000000002
	.quad	0x3fe6e6772d5e071c              # double 0.71563299999999996
	.quad	0x3fed6b074a771c97              # double 0.91931499999999999
	.quad	0x3fe4c6c764adff82              # double 0.64926499999999998
	.quad	0x3faa4acf312b1b37              # double 0.051352000000000002
	.quad	0x3fcf39e279dd3bb0              # double 0.243954
	.quad	0x3fd78af3e468cac5              # double 0.36785600000000002
	.quad	0x3fdebd1ed9dfdac7              # double 0.48029300000000003
	.quad	0x3fedbda5119ce076              # double 0.9294
	.quad	0x3fd645cfede97d07              # double 0.34801100000000001
	.quad	0x3fc8c1a048e043a2              # double 0.193409
	.quad	0x3fc7fb506dd69d30              # double 0.187357
	.quad	0x3fe96db7281fd9ba              # double 0.79464299999999999
	.quad	0x3fd3024b33daf8df              # double 0.29701499999999997
	.quad	0x3fea3879c4113c68              # double 0.81939399999999996
	.quad	0x3fe2ee19b90ea9e7              # double 0.59156500000000001
	.quad	0x3fe61ce6c093d966              # double 0.69102799999999998
	.quad	0x3fe538ac18f81e8a              # double 0.66316799999999998
	.quad	0x3fe1dddd2ae8e1d6              # double 0.55833299999999997
	.quad	0x3fe0b9cd8127b2cc              # double 0.52268099999999995
	.quad	0x3fc54306e5cd4ed3              # double 0.16610800000000001
	.quad	0x3febf78359bc33f8              # double 0.87396399999999996
	.quad	0x3fee81f10667f90e              # double 0.95336200000000004
	.quad	0x3fe640df58c08b76              # double 0.69541900000000001
	.quad	0x3fcf736cdf266ba5              # double 0.24571000000000001
	.quad	0x3f7e2ac322291fb4              # double 0.007365
	.quad	0x3fd8508f648c7193              # double 0.379917
	.quad	0x3fcd0856e696a26e              # double 0.22681699999999999
	.quad	0x3fecc03ff69014b6              # double 0.89846800000000004
	.quad	0x3fef8090b417ca21              # double 0.98444399999999998
	.quad	0x3fe148c9320d9946              # double 0.54013500000000003
	.quad	0x3fe5e76ea4228998              # double 0.68450100000000003
	.quad	0x3fe38b9fdbd2fa0d              # double 0.61079399999999995
	.quad	0x3fe5c5197a24894c              # double 0.68030999999999997
	.quad	0x3fe1980b242070b9              # double 0.54981000000000002
	.quad	0x3fe2bf034b0e1b4c              # double 0.58581700000000003
	.quad	0x3fe9f03d145d8516              # double 0.81057599999999996
	.quad	0x3fef225d8d79d0a6              # double 0.97294499999999995
	.quad	0x3fd2fa43fe5c91d1              # double 0.29652499999999998
	.quad	0x3fcd1bb4916ca46e              # double 0.227408
	.quad	0x3fdf84d76ab58080              # double 0.492483
	.quad	0x3fe57396d0917d6b              # double 0.67035999999999996
	.quad	0x3fd082e44b6e935c              # double 0.25798900000000002
	.quad	0x3fc7a73b42cc2d6b              # double 0.18479100000000001
	.quad	0x3fe8d4f9c1f85d74              # double 0.77599799999999996
	.quad	0x3fd748882f0e0a85              # double 0.36380200000000001
	.quad	0x3fd93abc947064ed              # double 0.39421
	.quad	0x3febdce18266772d              # double 0.87071299999999996
	.quad	0x3fd1897204295a6c              # double 0.27401399999999998
	.quad	0x3fee9d0635a426bb              # double 0.95666799999999996
	.quad	0x3fdb5cc426351def              # double 0.427537
	.quad	0x3fd2835dedf1e083              # double 0.28926800000000003
	.quad	0x3fe3b81733226c3c              # double 0.61622200000000005
	.quad	0x3fe7def62f9ca5be              # double 0.74596700000000005
	.quad	0x3fd6caf2d7f950b9              # double 0.35613699999999998
	.quad	0x3feae559f6ec5b08              # double 0.84049700000000005
	.quad	0x3fec16787ce95fab              # double 0.87774300000000005
	.quad	0x3fe59a500d5e8d54              # double 0.67508699999999999
	.quad	0x3f72220bc382a130              # double 0.0044270000000000004
	.quad	0x3fb106dd69d30271              # double 0.066511000000000001
	.quad	0x3fa7e1b8ed1bf7ad              # double 0.046643999999999998
	.quad	0x3fea2a2e3c536d65              # double 0.81764899999999996
	.quad	0x3fc63a647fdc5932              # double 0.17365700000000001
	.quad	0x3fec07485e3da2f9              # double 0.87588900000000003
	.quad	0x3f36052502eec7c9              # double 3.3599999999999998E-4
	.quad	0x3fe15d095af294dd              # double 0.54260699999999995
	.quad	0x3fea38194c016052              # double 0.81934799999999997
	.quad	0x3fc6ff972474538f              # double 0.179675
	.quad	0x3fd4e2e2b8c75c4b              # double 0.32634800000000003
	.quad	0x3fda2becedd48451              # double 0.40893099999999999
	.quad	0x3fdb7e6f71a7e308              # double 0.42959199999999997
	.quad	0x3fe08c9fb6134ce4              # double 0.51716600000000001
	.quad	0x3f89e8c47a17f413              # double 0.012651000000000001
	.quad	0x3fed4eb56fb8f57f              # double 0.91585799999999995
	.quad	0x3fe34840e1719f80              # double 0.60257000000000005
	.quad	0x3fcc848beb5b2d4d              # double 0.22279499999999999
	.quad	0x3f91e215336deb96              # double 0.017464
	.quad	0x3fe297fa5d28d003              # double 0.58105200000000001
	.quad	0x3fccf8bdec5f394b              # double 0.22634099999999999
	.quad	0x3feb5e353f7ced91              # double 0.85524999999999995
	.quad	0x3fdb9f23465625a7              # double 0.43158800000000003
	.quad	0x3fe345fe111276fb              # double 0.602294
	.quad	0x3fc6cc0bdcad14a1              # double 0.17810200000000001
	.quad	0x3feec842fa509396              # double 0.96194599999999997
	.quad	0x3fe51d0635a426bb              # double 0.65979299999999996
	.quad	0x3fc690bc7b45f17c              # double 0.176292
	.quad	0x3fe2319e731d2e0e              # double 0.56855699999999998
	.quad	0x3fcfbd8be7296f65              # double 0.247972
	.quad	0x3fef63ac0c62e4d2              # double 0.98091700000000004
	.quad	0x3fd236976bc1effa              # double 0.284582
	.quad	0x3fe8a7243137b070              # double 0.77040299999999995
	.quad	0x3fd5b7ae5796bfcb              # double 0.33933600000000003
	.quad	0x3fac44bf4cb1897a              # double 0.055211999999999997
	.quad	0x3febaf533f42352f              # double 0.86515200000000003
	.quad	0x3feca450acc0bdcb              # double 0.89505800000000002
	.quad	0x3fea66490a350d28              # double 0.824986
	.quad	0x3fd489374bc6a7f0              # double 0.32087500000000002
	.quad	0x3fd396249a133c1d              # double 0.30603900000000001
	.quad	0x3fe158d5842b734b              # double 0.54209399999999996
	.quad	0x3fb60d349be8ff32              # double 0.086138999999999993
	.quad	0x3fc447dc37a3db3c              # double 0.158443
	.quad	0x3fd93ac929aa1d75              # double 0.39421299999999998
	.quad	0x3fb34f0d844d013b              # double 0.075425000000000006
	.quad	0x3febcf70153bd167              # double 0.86907199999999996
	.quad	0x3feda03e63e8dda5              # double 0.92581100000000005
	.quad	0x3fdb46cb966be7b0              # double 0.42619600000000002
	.quad	0x3fbbfe7e1fc08fa8              # double 0.109352
	.quad	0x3fdbd6fda836eb4f              # double 0.43499700000000002
	.quad	0x3fe5798d8a979e17              # double 0.67108800000000002
	.quad	0x3fe85eb52c9d16fd              # double 0.76156100000000004
	.quad	0x3fe8f3bc903ea705              # double 0.77975300000000003
	.quad	0x3fdac3b927d45a60              # double 0.41819600000000001
	.quad	0x3fca3aeab7995ee1              # double 0.20492299999999999
	.quad	0x3fe293708aac96cc              # double 0.58049799999999996
	.quad	0x3fd27cdcca70d1fa              # double 0.28887099999999999
	.quad	0x3fe71dabe27179c0              # double 0.72237200000000001
	.quad	0x3fb0ae429e0a41a2              # double 0.065158999999999995
	.quad	0x3fdf0902de00d1b7              # double 0.48492499999999999
	.quad	0x3fddad7d7c2ca149              # double 0.46371400000000002
	.quad	0x3feb8adab9f559b4              # double 0.86070000000000002
	.quad	0x3fcc453d20f2becf              # double 0.220863
	.quad	0x3fedcff64cf8d717              # double 0.93163600000000002
	.quad	0x3fc858eeae9ee45c              # double 0.19021399999999999
	.quad	0x3fec777d0f1f57b4              # double 0.88958599999999998
	.quad	0x3fe5f8316a055758              # double 0.68654700000000002
	.quad	0x3fed95ad106ee30d              # double 0.92452100000000004
	.quad	0x3fddcf0739b024f6              # double 0.46576099999999998
	.quad	0x3fc474107314ca92              # double 0.15979199999999999
	.quad	0x3fd9b1422ccb3a26              # double 0.40144400000000002
	.quad	0x3febf156191148fe              # double 0.87321000000000004
	.quad	0x3fa531fcd24e160e              # double 0.041397000000000003
	.quad	0x3fede173b85e80bf              # double 0.93377100000000002
	.quad	0x3f80afe60c38f367              # double 0.0081480000000000007
	.quad	0x3fd38f32378ab0c9              # double 0.30561500000000003
	.quad	0x3fe91e215336deb9              # double 0.78492799999999996
	.quad	0x3fee322291fb3fa7              # double 0.94362000000000001
	.quad	0x3fc4c92146a1a501              # double 0.162388
	.quad	0x3feb543d03968d76              # double 0.85403300000000004
	.quad	0x3fd695a294141e9b              # double 0.352883
	.quad	0x3fb1bf9c62a1b5c8              # double 0.069330000000000003
	.quad	0x3fdf8cb07d0aed9a              # double 0.49296200000000001
	.quad	0x3fdd62413db7f173              # double 0.45912199999999997
	.quad	0x3fd125f202107b78              # double 0.26794099999999998
	.quad	0x3fdb5a038194c016              # double 0.427369
	.quad	0x3fe0bea2d2fe3f36              # double 0.52327100000000004
	.quad	0x3fc20eae18ac9f30              # double 0.141073
	.quad	0x3fb5cd91eeaa6d26              # double 0.085167999999999993
	.quad	0x3f8c1df3300de4c5              # double 0.013729
	.quad	0x3fe071ef30a4e37a              # double 0.51390800000000003
	.quad	0x3fd2b4202d9cf13d              # double 0.292244
	.quad	0x3fc5631b584b1ab1              # double 0.16708700000000001
	.quad	0x3fdc12ec6bce8534              # double 0.43865500000000002
	.quad	0x3fe3b09203a322af              # double 0.61530399999999996
	.quad	0x3fedf1f79420b3d5              # double 0.93578700000000004
	.quad	0x3fce3476295208e1              # double 0.23597599999999999
	.quad	0x3fbd5e8d5410f94d              # double 0.11472400000000001
	.quad	0x3fe8faa68f4b61fe              # double 0.78059699999999999
	.quad	0x3fa8d5410f94c87a              # double 0.048502000000000003
	.quad	0x3fefb3a0407cc7d2              # double 0.99067700000000003
	.quad	0x3fc0b862b27cbf6e              # double 0.13062699999999999
	.quad	0x3fe7810c6f7a0b5f              # double 0.73450300000000002
	.quad	0x3fe040db2702a348              # double 0.50791699999999995
	.quad	0x3fe6a21c8a7a41e5              # double 0.70728899999999995
	.quad	0x3fe4d21ff2e48e8a              # double 0.65064999999999995
	.quad	0x3fe9f30a4e379b78              # double 0.81091800000000003
	.quad	0x3feb650e779207d5              # double 0.85608600000000001
	.quad	0x3fec7e175d13d74d              # double 0.89039199999999996
	.quad	0x3fe665abc0e38a7e              # double 0.69991099999999995
	.quad	0x3fd17dcbddb9841b              # double 0.27330300000000002
	.quad	0x3fddab7995ee136e              # double 0.46359099999999998
	.quad	0x3fdf451fc4c16590              # double 0.48859399999999997
	.quad	0x3fdef850df15a4ad              # double 0.483906
	.quad	0x3fdb94141e9af5ba              # double 0.43091299999999999
	.quad	0x3fe5279dd3bafd97              # double 0.66108599999999995
	.quad	0x3fe5b6d86ec17ebb              # double 0.67857000000000001
	.quad	0x3fec540aaeafab54              # double 0.88525900000000001
	.quad	0x3fbb30e7ff583a54              # double 0.106215
	.quad	0x3fcbdebd9018e758              # double 0.21773500000000001
	.quad	0x3fe1d25247cb70ac              # double 0.55692399999999997
	.quad	0x3fe257d5a9eb2075              # double 0.57322200000000001
	.quad	0x3fb945a5fc7e6b40              # double 0.098719000000000001
	.quad	0x3fdb0b84988094e6              # double 0.42257800000000001
	.quad	0x3fcdb30728e92d56              # double 0.23202600000000001
	.quad	0x3fd81c58255b035c              # double 0.37673000000000001
	.quad	0x3fb52b7fe08aefb3              # double 0.082695000000000005
	.quad	0x3fe47cdcca70d1fa              # double 0.64024199999999998
	.quad	0x3feb588c1db0142f              # double 0.85455899999999996
	.quad	0x3fe57eef5ec80c74              # double 0.67174500000000004
	.quad	0x3fe409a88ace24bc              # double 0.62617900000000004
	.quad	0x3fec1376d5497311              # double 0.87737600000000004
	.quad	0x3fe098aa8650e779              # double 0.51863599999999999
	.quad	0x3feae9057d1782d4              # double 0.84094500000000005
	.quad	0x3fb43419e30014f9              # double 0.078920000000000004
	.quad	0x3fd744cbe1eb4203              # double 0.36357400000000001
	.quad	0x3fc80ee06d938152              # double 0.18795400000000001
	.quad	0x3f972fba01eeed89              # double 0.022643
	.quad	0x3fd3824d4cb9ecf6              # double 0.30482799999999999
	.quad	0x3fe91f3c70c996b7              # double 0.78506299999999996
	.quad	0x3fcb3a604e1e7104              # double 0.21271899999999999
	.quad	0x3fefaef911cf355d              # double 0.99010900000000001
	.quad	0x3fdb32e3821af7d3              # double 0.424981
	.quad	0x3fb6265f0f5a1017              # double 0.086523000000000003
	.quad	0x3fd7e79ee02a77a3              # double 0.37351200000000001
	.quad	0x3fcc34dad31fcd25              # double 0.220363
	.quad	0x3fe179f666234a88              # double 0.54613800000000001
	.quad	0x3fe39c7ffde7210c              # double 0.61285400000000001
	.quad	0x3fd340af1cb89d6b              # double 0.30082300000000001
	.quad	0x3fe7eca89fc6da45              # double 0.74763900000000005
	.quad	0x3fefb9d1b2e59afa              # double 0.99143300000000001
	.quad	0x3fed81450efdc9c5              # double 0.92203000000000002
	.quad	0x3fe3d9ff4fd6d7e9              # double 0.62036100000000005
	.quad	0x3fe784f8f8a4c1ec              # double 0.73498200000000002
	.quad	0x3fe39b62c77574f7              # double 0.61271799999999998
	.quad	0x3feb23db3bfb58d1              # double 0.84812699999999996
	.quad	0x3fe6e0913a4f8727              # double 0.71491300000000002
	.quad	0x3febaf0bf1a5ca2a              # double 0.86511800000000005
	.quad	0x3fcbcffeb074a772              # double 0.21728500000000001
	.quad	0x3fe63317efe0ce0c              # double 0.69373700000000005
	.quad	0x3fea85681ecd4aa1              # double 0.82878499999999999
	.quad	0x3fe34b4289118c19              # double 0.60293699999999995
	.quad	0x3fc2b9ecf6380022              # double 0.14629900000000001
	.quad	0x3fec870110a137f4              # double 0.89148000000000005
	.quad	0x3fead5de58e64b23              # double 0.83860699999999999
	.quad	0x3fc348909289dae0              # double 0.15065200000000001
	.quad	0x3fe5ab7baecd0785              # double 0.67718299999999998
	.quad	0x3fb493a71151611c              # double 0.080378000000000005
	.quad	0x3fc2553ac4f7ec35              # double 0.14322599999999999
	.quad	0x3fdb103c8e25c811              # double 0.42286600000000002
	.quad	0x3feda322af577100              # double 0.92616399999999999
	.quad	0x3fef40b34e768598              # double 0.97664799999999996
	.quad	0x3fae74080f98fa37              # double 0.059478999999999997
	.quad	0x3fe953586ca89fc7              # double 0.79142400000000002
	.quad	0x3fa0cb4aec8d5c74              # double 0.032800999999999997
	.quad	0x3faf4a98aa8650e7              # double 0.061115999999999997
	.quad	0x3fd3f5f0b28522ea              # double 0.311886
	.quad	0x3fe4c3914f483cb0              # double 0.64887300000000003
	.quad	0x3fe8cc2b51bd61f6              # double 0.77492300000000003
	.quad	0x3fdfb6a1e81cb46c              # double 0.49552200000000002
	.quad	0x3fdb6501e2584f4c              # double 0.42803999999999998
	.quad	0x3fd9f6555c52e72e              # double 0.40566000000000002
	.quad	0x3fd0274e22a2c237              # double 0.25239899999999998
	.quad	0x3feed43d03968d76              # double 0.96340800000000004
	.quad	0x3fbed99cbee807bc              # double 0.120508
	.quad	0x3fb378dd616f86a1              # double 0.076063000000000006
	.quad	0x3fe40ebcc6c54bcf              # double 0.626799
	.quad	0x3fe7bb645a1cac08              # double 0.74162499999999998
	.quad	0x3f9ba55d1c3ac92a              # double 0.026998000000000001
	.quad	0x3fe6c8387df5cf25              # double 0.71194100000000005
	.quad	0x3fe499780baa582e              # double 0.64373400000000003
	.quad	0x3fd1f23cc8de2ac3              # double 0.28040999999999999
	.quad	0x3fee3af965b20b80              # double 0.94469899999999996
	.quad	0x3fe0995464dc22ab              # double 0.51871699999999998
	.quad	0x3fe49c714fce746d              # double 0.64409700000000003
	.quad	0x3f8c4d22c881e471              # double 0.013819
	.quad	0x3fc5ee99a62ed352              # double 0.171344
	.quad	0x3fc613b9f127f5e8              # double 0.17247699999999999
	.quad	0x3fd14cf0739b024f              # double 0.27032099999999998
	.quad	0x3fa32acfb762d83c              # double 0.037435999999999997
	.quad	0x3fd8fd47bedb7282              # double 0.390459
	.quad	0x3fabb4d48882f0e1              # double 0.054114000000000002
	.quad	0x3fd8e364bec679cc              # double 0.38887899999999997
	.quad	0x3fe0bd1ed9dfdac7              # double 0.52308600000000005
	.quad	0x3fe0ea7ce0fc2eba              # double 0.52862399999999998
	.quad	0x3fe090214ad362e9              # double 0.517594
	.quad	0x3fc8a643cc07aaef              # double 0.192574
	.quad	0x3fa27bf61aa3f035              # double 0.036102000000000002
	.quad	0x3fed88e368f08462              # double 0.92296
	.quad	0x3fea1595feda6613              # double 0.81513500000000005
	.quad	0x3fd3bb6aa4b9884c              # double 0.30831399999999998
	.quad	0x3fe22f2734f82f51              # double 0.56825599999999998
	.quad	0x3fe268d32830a0b2              # double 0.57529600000000003
	.quad	0x3fc434eb9a176ddb              # double 0.15786500000000001
	.quad	0x3fe86d5cfaacd9e8              # double 0.76334999999999997
	.quad	0x3fed899392189bd8              # double 0.92304399999999998
	.quad	0x3feefa11a975afb0              # double 0.96802600000000005
	.quad	0x3feda43dccea28fe              # double 0.92629899999999998
	.quad	0x3fc54256bca5375d              # double 0.16608700000000001
	.quad	0x3fe05d28d002e233              # double 0.51137200000000005
	.quad	0x3fc7375c8d9f9054              # double 0.18137700000000001
	.quad	0x3fd18b1572580c31              # double 0.27411400000000002
	.quad	0x3fe5aab25b317efe              # double 0.67708699999999999
	.quad	0x3feb7587d6f97679              # double 0.858097
	.quad	0x3fe040980b242071              # double 0.50788500000000003
	.quad	0x3fd6339c0ebedfa4              # double 0.34689999999999999
	.quad	0x3fd617df19d66adb              # double 0.34520699999999999
	.quad	0x3fab0b39192641b3              # double 0.052819999999999999
	.quad	0x3fc68a3f8982cb21              # double 0.176094
	.quad	0x3fe3efef7c243dcd              # double 0.62303900000000001
	.quad	0x3fed253fc0096feb              # double 0.91079699999999997
	.quad	0x3fde640a6b93ccd1              # double 0.474856
	.quad	0x3fe350d8cb07d0af              # double 0.60361900000000002
	.quad	0x3fce6c3b927d45a6              # double 0.237678
	.quad	0x3fdb699c7bcc2939              # double 0.42832100000000001
	.quad	0x3fdf9ff0cbaf965b              # double 0.49413699999999999
	.quad	0x3fe90e9d51b4fe7a              # double 0.78303400000000001
	.quad	0x3fe36a1e81cb46bb              # double 0.60670400000000002
	.quad	0x3fd86aa8eb463498              # double 0.38151000000000002
	.quad	0x3fc7b3c81908e582              # double 0.18517400000000001
	.quad	0x3fe345931ca7d673              # double 0.60224299999999997
	.quad	0x3fb18b1dd5d3dc8c              # double 0.068529000000000007
	.quad	0x3f7432873bc903ea              # double 0.0049309999999999996
	.quad	0x3fd07631b584b1ab              # double 0.257214
	.quad	0x3fc33fd0d0678c00              # double 0.15038499999999999
	.quad	0x3fc2bc2fc69728a6              # double 0.146368
	.quad	0x3fe922339c0ebee0              # double 0.78542500000000003
	.quad	0x3fdbc8f32378ab0d              # double 0.43414000000000003
	.quad	0x3fe412f901083dbc              # double 0.62731599999999998
	.quad	0x3fe772abef06b378              # double 0.73274799999999995
	.quad	0x3fdbaa7ded6ba8c6              # double 0.43228100000000003
	.quad	0x3fed7f3cf70153bd              # double 0.92178199999999999
	.quad	0x3fd6277c45cbbc2c              # double 0.34616000000000002
	.quad	0x3fc27903211cb03a              # double 0.144318
	.quad	0x3fe88ff759685122              # double 0.76757399999999998
	.quad	0x3faa6aec0724b76f              # double 0.051596999999999997
	.quad	0x3fc46f9335d249e4              # double 0.15965499999999999
	.quad	0x3fd88c60cbf2b23a              # double 0.38356800000000002
	.quad	0x3fdeed6fda836eb5              # double 0.483242
	.quad	0x3fbc393682730c67              # double 0.110248
	.quad	0x3fd29a0f0a5efe93              # double 0.29065299999999999
	.quad	0x3fd1497fa5d28d00              # double 0.27011099999999999
	.quad	0x3fb86bacf7446f9c              # double 0.095393000000000006
	.quad	0x3fd6484944ed6fdb              # double 0.34816200000000003
	.quad	0x3fc03ba3443d46b2              # double 0.12681999999999999
	.quad	0x3fecbb1290257c91              # double 0.89783599999999997
	.quad	0x3fcb426fe718a86d              # double 0.21296499999999999
	.quad	0x3fe9ac16df3f9618              # double 0.802257
	.quad	0x3fe1dfa00e27e0f0              # double 0.55854800000000004
	.quad	0x3fd60bfe3b03e20d              # double 0.34448200000000001
	.quad	0x3f82bfdb4cc25072              # double 0.0091549999999999999
	.quad	0x3fd28e0008637bd0              # double 0.28991699999999998
	.quad	0x3fe6ccb1897a67a5              # double 0.71248699999999998
	.quad	0x3fea58cd20afa2f0              # double 0.82333999999999996
	.quad	0x3fdbcc6c54bcf0b7              # double 0.43435200000000002
	.quad	0x3fd150614163779f              # double 0.27053100000000002
	.quad	0x3feffb9e060fe47a              # double 0.99946500000000005
	.quad	0x3fc3a6937d1fe64f              # double 0.15352099999999999
	.quad	0x3fdc4020817fc760              # double 0.44141399999999997
	.quad	0x3fb794855da27286              # double 0.092109999999999997
	.quad	0x3fdb0728e92d55a4              # double 0.42231200000000002
	.quad	0x3fe08abf76a2f48c              # double 0.51693699999999998
	.quad	0x3fea2aa3ad18d25f              # double 0.81770500000000002
	.quad	0x3fb0200c0f01fb83              # double 0.062989000000000003
	.quad	0x3fecf6188b11409a              # double 0.90504099999999998
	.quad	0x3fefe410b630a915              # double 0.99658999999999997
	.quad	0x3fdc4d50ebaade65              # double 0.44221899999999997
	.quad	0x3fee7459d99029ae              # double 0.95170299999999997
	.quad	0x3fc4f1b25f633ce6              # double 0.16362599999999999
	.quad	0x3fe34b1897a67a53              # double 0.60291700000000004
	.quad	0x3feab45ae5ffa3ba              # double 0.83451600000000004
	.quad	0x3f9fcc9ea9a3d2d8              # double 0.031053999999999998
	.quad	0x3feeabae03b3e9a7              # double 0.958457
	.quad	0x3fb213e3e29307af              # double 0.070615999999999998
	.quad	0x3fcb43b70ef56649              # double 0.213004
	.quad	0x3fe205cee17a02fb              # double 0.56320899999999996
	.quad	0x3fef0bfe3b03e20d              # double 0.97021400000000002
	.quad	0x3fea3e8576cce5f7              # double 0.82013199999999997
	.quad	0x3fec3e1437c5692b              # double 0.88257799999999997
	.quad	0x3fe1c3dccea28fe2              # double 0.55515899999999996
	.quad	0x3fe0fff79c842fa5              # double 0.531246
	.quad	0x3feefc7e6b3fe9fb              # double 0.96832200000000001
	.quad	0x3fed9a1fd1569f49              # double 0.925064
	.quad	0x3f97c7820a30db6a              # double 0.023222
	.quad	0x3fe98e779207d4e1              # double 0.79864100000000005
	.quad	0x3fee3d70a3d70a3d              # double 0.94499999999999995
	.quad	0x3fc5464dc22ab25b              # double 0.16620799999999999
	.quad	0x3fdd8672756861e9              # double 0.46133099999999999
	.quad	0x3fe81f7f8ca8198f              # double 0.75384499999999999
	.quad	0x3f6d2bf5515054ac              # double 0.0035609999999999999
	.quad	0x3fcc77ab324851a8              # double 0.22240199999999999
	.quad	0x3fc467cf1c3265ae              # double 0.159418
	.quad	0x3fb91fc4c165907e              # double 0.098141000000000006
	.quad	0x3fd8cc100e6afcce              # double 0.38745499999999999
	.quad	0x3fe7410b630a9153              # double 0.72668999999999995
	.quad	0x3fdbfab10ba62670              # double 0.43717600000000001
	.quad	0x3fd7a89b951c5c57              # double 0.36966599999999999
	.quad	0x3fd1a47ecfe9b7bf              # double 0.27566499999999999
	.quad	0x3fe83f20a73f748a              # double 0.75770599999999999
	.quad	0x3fe321c68ec52a41              # double 0.59787299999999999
	.quad	0x3fecdfd04a2fcefb              # double 0.90232100000000004
	.quad	0x3fd41b5c7cd898b3              # double 0.31417
	.quad	0x3fe5b341e14bdfd2              # double 0.67813199999999996
	.quad	0x3fbe946801711948              # double 0.119452
	.quad	0x3fddc3eb7cbb3c82              # double 0.46508300000000002
	.quad	0x3fe1b0142f61ed5b              # double 0.55274400000000001
	.quad	0x3fd023e186983516              # double 0.25219000000000003
	.quad	0x3fece9df97aaac11              # double 0.90354900000000005
	.quad	0x3fd7c5cdd50a88f0              # double 0.371448
	.quad	0x3fc1af74cd31769b              # double 0.13816700000000001
	.quad	0x3fe35946c332f017              # double 0.60464799999999996
	.quad	0x3fe6d6da0168b5cc              # double 0.713727
	.quad	0x3fd28283d35eb745              # double 0.28921599999999997
	.quad	0x3fe4ef9767903212              # double 0.65424700000000002
	.quad	0x3fe85dca4b124d0a              # double 0.76144900000000004
	.quad	0x3fed0218def416be              # double 0.90650600000000003
	.quad	0x3fdbb1572580c309              # double 0.432699
	.quad	0x3fdb88df37329c34              # double 0.43022899999999997
	.quad	0x3fee3b5bf6a0dbad              # double 0.94474599999999997
	.quad	0x3fe5a936c58eeaea              # double 0.67690600000000001
	.quad	0x3fdd825e13b18dac              # double 0.46108199999999999
	.quad	0x3fd7e0daa0cae643              # double 0.37309900000000001
	.quad	0x3fe5292e62131a8f              # double 0.661277
	.quad	0x3fe2d26527a20579              # double 0.58818300000000001
	.quad	0x3fe97c2224edf612              # double 0.79640299999999997
	.quad	0x3fd417e77d523b36              # double 0.31395899999999999
	.quad	0x3fb9b8dc55000c95              # double 0.100477
	.quad	0x3fe762a5e785b5b7              # double 0.730792
	.quad	0x3fda7d84901d1915              # double 0.41391099999999997
	.quad	0x3fd55de15ca6ca04              # double 0.33385500000000001
	.quad	0x3fcf51b4fe79ee03              # double 0.24468100000000001
	.quad	0x3fcf9085f4a1272d              # double 0.24659800000000001
	.quad	0x3fee9d81f10667f9              # double 0.95672699999999999
	.quad	0x3fe49bbcf4e874c9              # double 0.644011
	.quad	0x3fc62541d8e86402              # double 0.173012
	.quad	0x3fdd3a2163fdd65a              # double 0.456673
	.quad	0x3fcdf0dc768dfbd7              # double 0.23391300000000001
	.quad	0x3fb79fa97e132b56              # double 0.09228
	.quad	0x3fd54020817fc760              # double 0.33203899999999997
	.quad	0x3fd55fe542e557de              # double 0.333978
	.quad	0x3fe83762d83c6c98              # double 0.75676100000000002
	.quad	0x3fe887a4a48f96e1              # double 0.76655799999999996
	.quad	0x3fe931d712a0ec74              # double 0.78733399999999997
	.quad	0x3fd8cb3a2595bbbf              # double 0.38740400000000003
	.quad	0x3fed9212513b5bf7              # double 0.92408100000000004
	.quad	0x3fe29930be0ded29              # double 0.58120000000000005
	.quad	0x3fd3e91c8eabffce              # double 0.31110300000000002
	.quad	0x3fe1561b2a27f1b7              # double 0.54176100000000005
	.quad	0x3fbcd141a6937d20              # double 0.112568
	.quad	0x3fec889e34330d74              # double 0.89167700000000005
	.quad	0x3fde95208e150119              # double 0.477852
	.quad	0x3fe569e5e2478855              # double 0.66917700000000002
	.quad	0x3fc8a52ef911cf35              # double 0.19254099999999999
	.quad	0x3fc297c80841ede1              # double 0.145257
	.quad	0x3fe93bf2f5558213              # double 0.78856800000000005
	.quad	0x3fef8214ad362e90              # double 0.98462899999999998
	.quad	0x3fd21ce28ed5f139              # double 0.28301300000000001
	.quad	0x3fd0d3cff64cf8d7              # double 0.262928
	.quad	0x3fa8b60f1b25f634              # double 0.048264000000000001
	.quad	0x3fd6035bd512ec6c              # double 0.34395500000000001
	.quad	0x3fe5a474538ef34d              # double 0.67632499999999995
	.quad	0x3fdf4d1a65061416              # double 0.48908099999999999
	.quad	0x3fe9b838c111ada7              # double 0.80373799999999995
	.quad	0x3fd519c17225b74a              # double 0.32969700000000002
	.quad	0x3f6b5a63f9a49c2c              # double 0.003339
	.quad	0x3fe0bcad9ad85dfb              # double 0.52303200000000005
	.quad	0x3fda45c78a6dacac              # double 0.41050900000000001
	.quad	0x3fc0fc3f811f4f51              # double 0.13269800000000001
	.quad	0x3fe2c34a01abd1ab              # double 0.58633900000000005
	.quad	0x3fd6e6f71a7e3088              # double 0.35784700000000003
	.quad	0x3febd4bf0995aaf8              # double 0.86972000000000005
	.quad	0x3fd4759253543aeb              # double 0.31967600000000002
	.quad	0x3f655f78359bc340              # double 0.0026090000000000002
	.quad	0x3fd6f1e8e6080735              # double 0.35851499999999997
	.quad	0x3fe264755ffe6d59              # double 0.57476300000000002
	.quad	0x3fea931ca7d6733f              # double 0.83045800000000003
	.quad	0x3fe583558a761028              # double 0.67228200000000005
	.quad	0x3fd90bd017dae819              # double 0.39134600000000003
	.quad	0x3fd2fec56d5cfaad              # double 0.29680000000000001
	.quad	0x3fdf46dc5d638866              # double 0.48870000000000002
	.quad	0x3fad4fdf3b645a1d              # double 0.057250000000000002
	.quad	0x3fd4f75536933a04              # double 0.327596
	.quad	0x3fce41b328b6d86f              # double 0.23638000000000001
	.quad	0x3fd14af4f0d844d0              # double 0.2702
	.quad	0x3fa64ead0c3d2524              # double 0.043568999999999997
	.quad	0x3fe9e70c1333b96b              # double 0.80945400000000001
	.quad	0x3fd2a832b990afe6              # double 0.291516
	.quad	0x3fd8a2c669057d18              # double 0.38493500000000003
	.quad	0x3fed7b56b8737974              # double 0.92130599999999995
	.quad	0x3fe9d5000c9539b9              # double 0.80725100000000005
	.quad	0x3fe5e33eff195033              # double 0.68398999999999999
	.quad	0x3fec0d801b435265              # double 0.87664799999999998
	.quad	0x3fe9118c197e5647              # double 0.78339199999999998
	.quad	0x3fe394d940789614              # double 0.61192000000000002
	.quad	0x3fe4634fc610f0e9              # double 0.63712299999999999
	.quad	0x3fc827631b584b1b              # double 0.18870200000000001
	.quad	0x3fcdd76683c297c0              # double 0.23313600000000001
	.quad	0x3fe5f034b0e1b4bb              # double 0.68557199999999996
	.quad	0x3feaa8a1dfb9389b              # double 0.83308499999999996
	.quad	0x3fe0359ff4fd6d7f              # double 0.50654600000000005
	.quad	0x3fe7a99d883ba344              # double 0.73945499999999997
	.quad	0x3fec02de00d1b717              # double 0.87534999999999996
	.quad	0x3f8f7e80389f83be              # double 0.015377999999999999
	.quad	0x3fe3859c8c9320da              # double 0.61006000000000005
	.quad	0x3fe6be9ea1405708              # double 0.71076899999999998
	.quad	0x3fe7998288051c9f              # double 0.73748899999999995
	.quad	0x3fa2038194c01605              # double 0.035182999999999999
	.quad	0x3fe32c2374794ea0              # double 0.59913799999999995
	.quad	0x3fe50fffbce4217d              # double 0.65820299999999998
	.quad	0x3fda790752da9867              # double 0.41363699999999998
	.quad	0x3fd9f8e3ac0c62e5              # double 0.40581600000000001
	.quad	0x3fc17af640639d5e              # double 0.13656499999999999
	.quad	0x3fdc30a4e379b77c              # double 0.440469
	.quad	0x3fe4ef86a098915c              # double 0.65423900000000001
	.quad	0x3feb9713ad5bee3d              # double 0.86219199999999996
	.quad	0x3fd10364388ebcc7              # double 0.26583200000000001
	.quad	0x3fd69f3c70c996b7              # double 0.35346899999999998
	.quad	0x3fd1a3ad18d25edd              # double 0.275615
	.quad	0x3fa7fd60e94ee393              # double 0.046855000000000001
	.quad	0x3fd655193708aac9              # double 0.34894399999999998
	.quad	0x3fedfc9795b35b0c              # double 0.93708400000000002
	.quad	0x3fe7044ae85b9e8c              # double 0.71927399999999997
	.quad	0x3fd1d759ee88df37              # double 0.27876899999999999
	.quad	0x3fecbf487fcb923a              # double 0.89834999999999998
	.quad	0x3fd69a34ca0c282c              # double 0.35316199999999998
	.quad	0x3fe5d3458cd20afa              # double 0.68203999999999998
	.quad	0x3feb150763a19008              # double 0.84631699999999999
	.quad	0x3fd14f7ec3547e07              # double 0.27047700000000002
	.quad	0x3fee3953dea465a5              # double 0.94449799999999995
	.quad	0x3fea305b7cfe5860              # double 0.81840299999999999
	.quad	0x3fda059ea57214f0              # double 0.40659299999999998
	.quad	0x3fe32eddce7cd035              # double 0.59947099999999998
	.quad	0x3fdae004b7f5a533              # double 0.41992299999999999
	.quad	0x3fc9b7a5f41aef70              # double 0.20091700000000001
	.quad	0x3fedb8f7985271bd              # double 0.92882900000000002
	.quad	0x3fec84dfce3150db              # double 0.89122000000000001
	.quad	0x3fba7903211cb03a              # double 0.103409
	.quad	0x3fde71a7e3087875              # double 0.47568700000000003
	.quad	0x3fe436a619da9c99              # double 0.63167099999999998
	.quad	0x3fb66d04e618ce2d              # double 0.087600999999999998
	.quad	0x3fb7d987c6327ed8              # double 0.093162999999999996
	.quad	0x3fe5988b11409a24              # double 0.674871
	.quad	0x3fe785c4651f3e8a              # double 0.73507900000000004
	.quad	0x3fd0adddf43c7d5f              # double 0.26061200000000001
	.quad	0x3fbb38d60a633051              # double 0.106336
	.quad	0x3fb1f5f0b28522ea              # double 0.070158999999999999
	.quad	0x3fd17381d7dbf488              # double 0.272675
	.quad	0x3fe7505af6c69b5a              # double 0.72855899999999996
	.quad	0x3fc40d130df9bdc7              # double 0.15664900000000001
	.quad	0x3fc4f69ca9ef5233              # double 0.163776
	.quad	0x3fcfaade657b84dc              # double 0.24740200000000001
	.quad	0x3fed6e221c8a7a42              # double 0.91969400000000001
	.quad	0x3fb4113c68661ae7              # double 0.078387999999999999
	.quad	0x3fc81ad6451b9303              # double 0.18831899999999999
	.quad	0x3fb8fb65668c2614              # double 0.097586000000000006
	.quad	0x3fa38194c0160525              # double 0.038098
	.quad	0x3fd9f0fe047d3d43              # double 0.40533400000000003
	.quad	0x3fea477143393ab4              # double 0.82122099999999997
	.quad	0x3fe9db59578a2a91              # double 0.80802600000000002
	.quad	0x3fe0288ce703afb8              # double 0.50495000000000001
	.quad	0x3fc5b44e50c5eb31              # double 0.16956499999999999
	.quad	0x3fd44c6e6d9be4cd              # double 0.31716499999999997
	.quad	0x3fea221426fe718b              # double 0.81666000000000005
	.quad	0x3fbab26bf8769ec3              # double 0.104285
	.quad	0x3fc064ece9a2c669              # double 0.12808
	.quad	0x3fc9d9b1b79d909f              # double 0.201956
	.quad	0x3fe2a7bd48cb4aed              # double 0.58297600000000005
	.quad	0x3fd75985ad538ac2              # double 0.36483900000000002
	.quad	0x3fec5c3dee781840              # double 0.88626000000000005
	.quad	0x3fe69b90ea9e6eeb              # double 0.70648999999999995
	.quad	0x3fe645a8155d5f57              # double 0.69600300000000004
	.quad	0x3fe4557de0d66f0d              # double 0.635436
	.quad	0x3fd06df82b1f687b              # double 0.256712
	.quad	0x3fc249235f809918              # double 0.14285700000000001
	.quad	0x3fea54eb13dfb0d5              # double 0.82286599999999999
	.quad	0x3feb1f72f76e6107              # double 0.84758900000000004
	.quad	0x3fefe69057d1782d              # double 0.99689499999999997
	.quad	0x3fe7e2f9ca5bd945              # double 0.74645700000000004
	.quad	0x3fc5b30f8c64fdb1              # double 0.16952700000000001
	.quad	0x3fddcb039ef0f16f              # double 0.46551599999999999
	.quad	0x3fd23b107746887b              # double 0.28485500000000002
	.quad	0x3fef87c200c0f020              # double 0.98532200000000003
	.quad	0x3fe663e07a28bb0a              # double 0.69969199999999998
	.quad	0x3fe9161804d98394              # double 0.78394699999999994
	.quad	0x3faafad6cb535009              # double 0.052694999999999999
	.quad	0x3fd092e62131a8ef              # double 0.25896599999999997
	.quad	0x3fb21dc93ea2d2fe              # double 0.070766999999999997
	.quad	0x3fcc297bfa4c61d8              # double 0.22001599999999999
	.quad	0x3fb0180d3cff64d0              # double 0.062867000000000006
	.quad	0x3fd88301a79fec9a              # double 0.382996
	.quad	0x3fed22ccb3a2595c              # double 0.91049800000000002
	.quad	0x3fe974c09c3ce209              # double 0.79550200000000004
	.quad	0x3fdd8869c66d373b              # double 0.461451
	.quad	0x3fecdf809917939a              # double 0.90228299999999995
	.quad	0x3fbcd73860999dcb              # double 0.112659
	.quad	0x3fe08a222d5171e3              # double 0.51686200000000004
	.quad	0x3fe0dc0fcb4f1e4b              # double 0.52686299999999997
	.quad	0x3fea494f69ca9ef5              # double 0.82144899999999998
	.quad	0x3fd8627bf61aa3f0              # double 0.38101099999999999
	.quad	0x3fd84e50c5eb313c              # double 0.37978000000000001
	.quad	0x3fe212b1b36bd2b7              # double 0.56478200000000001
	.quad	0x3fe6e6a98244e93e              # double 0.71565699999999999
	.quad	0x3fdffd00713f077d              # double 0.49981700000000001
	.quad	0x3fca1d6cf850df16              # double 0.20402300000000001
	.quad	0x3fdaa925fe974a34              # double 0.416574
	.quad	0x3fbb0b178b370047              # double 0.105638
	.quad	0x3fe9278d0cc35ce2              # double 0.78607800000000005
	.quad	0x3fd990c0ad03d9a9              # double 0.39945999999999998
	.quad	0x3fe12990f301eabc              # double 0.53632400000000002
	.quad	0x3fd443a2163fdd66              # double 0.31662800000000002
	.quad	0x3fdd43c7d5ed06ff              # double 0.457262
	.quad	0x3fe53e5109070fbf              # double 0.66385700000000003
	.quad	0x3fe8b9bed30f062d              # double 0.77267399999999997
	.quad	0x3fd6e8c47a17f413              # double 0.35795700000000003
	.quad	0x3febc873365881a1              # double 0.86821899999999996
	.quad	0x3fe2ff8012dfd695              # double 0.59368900000000002
	.quad	0x3fd66fc158fb43d9              # double 0.35057100000000002
	.quad	0x3febbf11f926c7eb              # double 0.86707400000000001
	.quad	0x3fc7912556d19ded              # double 0.184117
	.quad	0x3fe662d1f1cfbb95              # double 0.69956300000000005
	.quad	0x3fe9130164840e17              # double 0.78356999999999999
	.quad	0x3fdcd0d49949e881              # double 0.45024599999999998
	.quad	0x3fe4ff865d7cb2d9              # double 0.656192
	.quad	0x3fee401c4fc1df33              # double 0.945326
	.quad	0x3fed0b8066c2acb8              # double 0.90765399999999996
	.quad	0x3fee198288051c9f              # double 0.94061399999999995
	.quad	0x3fe3f837b4a2339c              # double 0.62404999999999999
	.quad	0x3fe3ccb9ecf63800              # double 0.61874099999999999
	.quad	0x3fe368db8bac710d              # double 0.60655000000000003
	.quad	0x3f945a5fc7e6b3ff              # double 0.019876000000000001
	.quad	0x3fa7b8d3f1843c3a              # double 0.046331999999999998
	.quad	0x3feba20578e5c4eb              # double 0.86352799999999996
	.quad	0x3fe7e41919ac7970              # double 0.74659399999999998
	.quad	0x3fea3c44bf4cb189              # double 0.81985699999999995
	.quad	0x3fc9b20b8066c2ad              # double 0.20074600000000001
	.quad	0x3fd6ae5796bfca86              # double 0.35439100000000001
	.quad	0x3fdbc4f7ec3547e0              # double 0.43389699999999998
	.quad	0x3fe9e887a8d64d7f              # double 0.80963499999999999
	.quad	0x3feb4a7935760392              # double 0.85284099999999996
	.quad	0x3fbf98e970718223              # double 0.123427
	.quad	0x3fe12b8c75c4a83b              # double 0.53656599999999999
	.quad	0x3fc811f4f50a02b8              # double 0.18804799999999999
	.quad	0x3f996e158750c1b9              # double 0.024833999999999998
	.quad	0x3fd318a009f62307              # double 0.29837799999999998
	.quad	0x3fd0fcdab191dde3              # double 0.26543299999999997
	.quad	0x3fdb6fb09203a323              # double 0.42869200000000002
	.quad	0x3fe601c0ca600b03              # double 0.68771400000000005
	.quad	0x3fd59ee02a77a2cf              # double 0.33782200000000001
	.quad	0x3fe3de28aa433509              # double 0.620869
	.quad	0x3fd02da98676a726              # double 0.25278699999999998
	.quad	0x3fe0c5e9185cee18              # double 0.52415900000000004
	.quad	0x3fe49394317acc4f              # double 0.643015
	.quad	0x3fcccb20fb224aae              # double 0.22494900000000001
	.quad	0x3fef88e9b38d60a6              # double 0.98546299999999998
	.quad	0x3fd951deefe4ffc9              # double 0.39562199999999997
	.quad	0x3fe25f8d2e514c23              # double 0.57416400000000001
	.quad	0x3fe020b1bbcf4e87              # double 0.50399099999999997
	.quad	0x3fe6bb46fdeb52ca              # double 0.71036100000000002
	.quad	0x3fe86b0531982880              # double 0.76306399999999996
	.quad	0x3fe98346dc5d6388              # double 0.79727499999999996
	.quad	0x3fe3a12b5e529bae              # double 0.61342399999999997
	.quad	0x3fe0c41355475a32              # double 0.52393500000000004
	.quad	0x3fe760b4e11dbca9              # double 0.73055499999999995
	.quad	0x3fd135efa615a8df              # double 0.26891700000000002
	.quad	0x3fe69ec918e325d5              # double 0.70688300000000004
	.quad	0x3fe3d8f92af9a8ce              # double 0.62023600000000001
	.quad	0x3fe2626d4801f751              # double 0.574515
	.quad	0x3fea8c3f3e0370ce              # double 0.82962000000000002
	.quad	0x3fd22e1ac57e23f2              # double 0.28406399999999998
	.quad	0x3fad3fe1975f2cb6              # double 0.057127999999999998
	.quad	0x3fe13aeee957470f              # double 0.53844400000000003
	.quad	0x3fd70a5accd53049              # double 0.36000700000000002
	.quad	0x3fe2673e681a9b8d              # double 0.57510300000000003
	.quad	0x3fe7bb4d48882f0e              # double 0.741614
	.quad	0x3fc22d05f2884838              # double 0.14199899999999999
	.quad	0x3fc1a2834d26fa40              # double 0.13777200000000001
	.quad	0x3fe561cffeb074a7              # double 0.66818999999999995
	.quad	0x3fe3f6295208e150              # double 0.62379899999999999
	.quad	0x3fb8199fe43675de              # double 0.094141000000000002
	.quad	0x3fd8b994e1a3f466              # double 0.38632699999999998
	.quad	0x3fee4dfce3150dae              # double 0.94701999999999997
	.quad	0x3fa830a0b1bbcf4f              # double 0.047246000000000003
	.quad	0x3fe79d798d8a979e              # double 0.73797299999999999
	.quad	0x3f92b1704ff4341a              # double 0.018255
	.quad	0x3fe5ac5c13fd0d06              # double 0.67728999999999995
	.quad	0x3fd596b3354c1227              # double 0.33732299999999998
	.quad	0x3fe81d2e0e30446b              # double 0.75356199999999995
	.quad	0x3fe0c7abfb9bed31              # double 0.52437400000000001
	.quad	0x3fb77867f0aa21a7              # double 0.091680999999999999
	.quad	0x3fe721c475e6362a              # double 0.72287199999999996
	.quad	0x3fda9df548ecd8dc              # double 0.41589100000000001
	.quad	0x3fc376bc1eff9f88              # double 0.152061
	.quad	0x3fe03150dae3e6c5              # double 0.50602000000000003
	.quad	0x3fe20dd1e53a81dc              # double 0.56418699999999999
	.quad	0x3fa72cf95d4e8fb0              # double 0.045265
	.quad	0x3fb6e2435696e58a              # double 0.089389999999999997
	.quad	0x3fc76bfca85caafc              # double 0.18298300000000001
	.quad	0x3fe22b12d3415b14              # double 0.56775799999999998
	.quad	0x3fe387b139c94f6a              # double 0.61031400000000002
	.quad	0x3fdcb26394face68              # double 0.44838800000000001
	.quad	0x3fddfd04a2fcefaa              # double 0.46856799999999998
	.quad	0x3fe93d017dae8188              # double 0.78869699999999998
	.quad	0x3fbef0ae536501e2              # double 0.12086
	.quad	0x3fc2477ff151e753              # double 0.14280699999999999
	.quad	0x3fc3c193b3a68b1a              # double 0.15434500000000001
	.quad	0x3fdf6fa82e87d2c8              # double 0.49119000000000002
	.quad	0x3fde7caea747d806              # double 0.47636000000000001
	.quad	0x3fe484e3ffef3908              # double 0.64122199999999996
	.quad	0x3fe14ebdd334c5da              # double 0.54086199999999995
	.quad	0x3fdbd028a1dfb939              # double 0.43458000000000002
	.quad	0x3fe99a1b9f98b71c              # double 0.80006200000000005
	.quad	0x3fe7c1fc8f32378b              # double 0.74243000000000003
	.quad	0x3fe82b14ec204f2b              # double 0.75525900000000001
	.quad	0x3fea36199780baa6              # double 0.81910400000000005
	.quad	0x3feac3dab5c39bcc              # double 0.83640800000000004
	.quad	0x3feca76102795704              # double 0.895432
	.quad	0x3fe91806f262888b              # double 0.78418299999999996
	.quad	0x3fd9e2b4959e6256              # double 0.40446199999999999
	.quad	0x3fdb024f6598e10d              # double 0.422016
	.quad	0x3fbac9c0a8d21bc1              # double 0.104641
	.quad	0x3fedeff3ade225fa              # double 0.93554099999999996
	.quad	0x3fe75c11e42e1262              # double 0.729989
	.quad	0x3fcec95bff04577e              # double 0.24052000000000001
	.quad	0x3fd797f1f9acffa8              # double 0.368649
	.quad	0x3fe82a51e321a2e8              # double 0.755166
	.quad	0x3fefad05f2884838              # double 0.98987099999999994
	.quad	0x3fedfaa044ae85ba              # double 0.93684400000000001
	.quad	0x3fe7b3dd11be6e65              # double 0.74070599999999998
	.quad	0x3fe4d48882f0e0a8              # double 0.65094399999999997
	.quad	0x3fe24b46bacf7447              # double 0.571689
	.quad	0x3fe67cbd556084a5              # double 0.70272699999999999
	.quad	0x3fdfa958537e2c56              # double 0.49471100000000001
	.quad	0x3fdd4a0a0f4d7add              # double 0.457644
	.quad	0x3fd58327674d1633              # double 0.33612999999999998
	.quad	0x3fd07f0ed3d859c9              # double 0.25775500000000001
	.quad	0x3fcc7ae147ae147b              # double 0.2225
	.quad	0x3fe4465e89225311              # double 0.63358999999999999
	.quad	0x3fde3ea2d2fe3f36              # double 0.47257300000000002
	.quad	0x3fc7337eb28d8666              # double 0.181259
	.quad	0x3fd90f40e5a35d68              # double 0.39155600000000002
	.quad	0x3fe696c61522a6f4              # double 0.705905
	.quad	0x3fe7f6a7264a16a5              # double 0.74885900000000005
	.quad	0x3fe614d940789614              # double 0.69004500000000002
	.quad	0x3fb10e453d20f2bf              # double 0.066624000000000003
	.quad	0x3fe6b899392189be              # double 0.71003400000000005
	.quad	0x3fd781e4712e4085              # double 0.36730299999999999
	.quad	0x3feefef5a964e8b8              # double 0.96862300000000001
	.quad	0x3fe4d7774aba3876              # double 0.65130200000000005
	.quad	0x3fe5ed2674080f99              # double 0.685199
	.quad	0x3fe7fe4ffc9795b3              # double 0.74979399999999996
	.quad	0x3fea01c92ddbdb5e              # double 0.81271800000000005
	.quad	0x3fe6dea24cc68230              # double 0.71467700000000001
	.quad	0x3fec633269df97ab              # double 0.88710900000000004
	.quad	0x3fdfadb402d16b98              # double 0.494977
	.quad	0x3fd32bcf91a32b13              # double 0.29954900000000001
	.quad	0x3fdcb9c304ccee5b              # double 0.44883800000000001
	.quad	0x3fb41fd9ba1b1961              # double 0.078611
	.quad	0x3fee820817fc7608              # double 0.95337300000000002
	.quad	0x3f921fafc8b0079a              # double 0.017698999999999999
	.quad	0x3fc1e80bed740c41              # double 0.13989399999999999
	.quad	0x3f9acc4ef88b9778              # double 0.026169999999999999
	.quad	0x3fbeca7935760392              # double 0.120277
	.quad	0x3fc564f97edc7ef1              # double 0.16714399999999999
	.quad	0x3fae08d08919ef95              # double 0.058660999999999998
	.quad	0x3feef631b584b1ab              # double 0.96755299999999999
	.quad	0x3fe152674080f990              # double 0.54130900000000004
	.quad	0x3fab9e8c47a17f41              # double 0.053943999999999999
	.quad	0x3fe3769a91105e1c              # double 0.60822799999999999
	.quad	0x3fbf1c432ca57a78              # double 0.12152499999999999
	.quad	0x3fcbc17a89331a09              # double 0.21684200000000001
	.quad	0x3fd511ec918e325d              # double 0.32921899999999998
	.quad	0x3fcbec0b5675579b              # double 0.218141
	.quad	0x3fd0987c6327ed85              # double 0.25930700000000001
	.quad	0x3fb37a919695d91b              # double 0.076089000000000004
	.quad	0x3fdfa36199780baa              # double 0.49434699999999998
	.quad	0x3f8f72f76e6106ab              # double 0.015356
	.quad	0x3fd5fbf401c4fc1e              # double 0.343503
	.quad	0x3fc0314013ec460f              # double 0.126503
	.quad	0x3fce3fe5c91d14e4              # double 0.23632500000000001
	.quad	0x3fe80bd44998d046              # double 0.751444
	.quad	0x3fc0e536501e2585              # double 0.131995
	.quad	0x3fed4113c68661ae              # double 0.91419399999999995
	.quad	0x3fc33fe1975f2cb6              # double 0.15038699999999999
	.quad	0x3fcdd97f62b6ae7d              # double 0.23319999999999999
	.quad	0x3fee76555c52e72e              # double 0.95194500000000004
	.quad	0x3fee4afd5454152b              # double 0.946654
	.quad	0x3fe4d3d4280ae105              # double 0.65085800000000005
	.quad	0x3fe729131ec0b567              # double 0.72376399999999996
	.quad	0x3fd25d91ab8e8ea4              # double 0.28696100000000002
	.quad	0x3fe739c51dabe271              # double 0.72580199999999995
	.quad	0x3fc15d701d9f4d38              # double 0.13566400000000001
	.quad	0x3fd9f901083dbc23              # double 0.40582299999999999
	.quad	0x3fc0bcbe61cffeb0              # double 0.13075999999999999
	.quad	0x3fe9887a8d64d7f1              # double 0.79791000000000001
	.quad	0x3fc506034f3fd934              # double 0.164246
	.quad	0x3fdac9752977c88e              # double 0.41854599999999997
	.quad	0x3fe6713f077ccc03              # double 0.70132399999999995
	.quad	0x3faf76a2f48c2e77              # double 0.061452
	.quad	0x3fe89a79fec99f1b              # double 0.76885700000000001
	.quad	0x3fb40c521dda059a              # double 0.078312999999999993
	.quad	0x3fe01e4712e40853              # double 0.50369600000000003
	.quad	0x3fd543393ab430f5              # double 0.33222800000000002
	.quad	0x3fe5835dedf1e083              # double 0.67228600000000005
	.quad	0x3fdaab324851a869              # double 0.41669899999999999
	.quad	0x3fc26e6d9be4cd75              # double 0.14399500000000001
	.quad	0x3fea75ab7dc7abfc              # double 0.82686400000000004
	.quad	0x3fe79799e518f3ed              # double 0.73725600000000002
	.quad	0x3fe6f991bc558644              # double 0.71796499999999996
	.quad	0x3fdd5f99c38b04ab              # double 0.45895999999999998
	.quad	0x3feea2749f0e4da1              # double 0.95733100000000004
	.quad	0x3fedcb1ab0856e69              # double 0.93104299999999995
	.quad	0x3fd42c7325918a01              # double 0.31521300000000002
	.quad	0x3fe4b24638c97529              # double 0.64676199999999995
	.quad	0x3fe87e4ffc9795b3              # double 0.76541899999999996
	.quad	0x3fdc8c75c4a83b1d              # double 0.446073
	.quad	0x3fe6303c07ee0b0b              # double 0.693388
	.quad	0x3fa84d983947496b              # double 0.047467000000000002
	.quad	0x3feda9bae46cfc83              # double 0.92696900000000004
	.quad	0x3fc1c5c5718eb895              # double 0.138848
	.quad	0x3fec7f9f87f023ea              # double 0.89057900000000001
	.quad	0x3fd5685db76b3bb8              # double 0.33449499999999999
	.quad	0x3fe387852f7f498c              # double 0.61029299999999997
	.quad	0x3fda0e3cd9a52264              # double 0.40711900000000001
	.quad	0x3fda6709fa54c554              # double 0.41253899999999999
	.quad	0x3fe058d1526d8b1e              # double 0.51084200000000002
	.quad	0x3fe4b94d94078961              # double 0.64761999999999997
	.quad	0x3fe937b6bb129025              # double 0.78805099999999995
	.quad	0x3fd705c03361565c              # double 0.35972599999999999
	.quad	0x3faf2d7f950b955f              # double 0.060893999999999997
	.quad	0x3fdf8feef5ec80c7              # double 0.49315999999999999
	.quad	0x3fe5ffe8ee6b8306              # double 0.68748900000000002
	.quad	0x3fda8a04d12018a4              # double 0.41467399999999999
	.quad	0x3fd1dbd2fa0d77b8              # double 0.27904200000000001
	.quad	0x3fef3cbe61cffeb0              # double 0.97616499999999995
	.quad	0x3fc680f12c27a637              # double 0.17580999999999999
	.quad	0x3feef2f9873ffac2              # double 0.96716000000000002
	.quad	0x3fd11ba7fc32ebe6              # double 0.26731300000000002
	.quad	0x3fec35fe542e557e              # double 0.88159100000000001
	.quad	0x3fe05549731098d4              # double 0.51041099999999995
	.quad	0x3fa2d2fe3f359ff5              # double 0.036766
	.quad	0x3fe80240b780346e              # double 0.75027500000000003
	.quad	0x3fed8181e03f7058              # double 0.92205899999999996
	.quad	0x3f924d4cb9ecf638              # double 0.017873
	.quad	0x3fbae5de15ca6ca0              # double 0.10507
	.quad	0x3fe3dd5d3dc8b86b              # double 0.62077199999999999
	.quad	0x3fa924d099e0e736              # double 0.049109
	.quad	0x3fd44ece9a2c6690              # double 0.31730999999999998
	.quad	0x3fe39e2bcf91a32b              # double 0.61305799999999999
	.quad	0x3fdf49be8ff327aa              # double 0.48887599999999998
	.quad	0x3fd1b5d031055b8a              # double 0.27672200000000002
	.quad	0x3fef3a8c586876e2              # double 0.97589700000000001
	.quad	0x3fc48deb0fadf2ed              # double 0.160581
	.quad	0x3fe80aa8650e7792              # double 0.751301
	.quad	0x3fed337a80cf9e38              # double 0.91253399999999996
	.quad	0x3fecc5ef62f9ca5c              # double 0.89916200000000001
	.quad	0x3fecaaed1394317b              # double 0.89586500000000002
	.quad	0x3fe88ccff21b3aef              # double 0.76718900000000001
	.quad	0x3fe75b09a671ef31              # double 0.72986300000000004
	.quad	0x3fcf0e991ff7164c              # double 0.24263299999999999
	.quad	0x3fc3b1e18efbb0e6              # double 0.153866
	.quad	0x3fc160b6f9fcb0c0              # double 0.135764
	.quad	0x3fd95c03361565c3              # double 0.39624100000000001
	.quad	0x3fdb41700cd85597              # double 0.425869
	.quad	0x3fe30e1d6494d50f              # double 0.59547300000000003
	.quad	0x3fa38b26394face6              # double 0.038170999999999997
	.quad	0x3fe5909d0635a427              # double 0.67390300000000003
	.quad	0x3fd1666ec9e236c1              # double 0.27187699999999998
	.quad	0x3f44727dcbddb984              # double 6.2399999999999999E-4
	.quad	0x3fe2070329802c0a              # double 0.56335599999999997
	.quad	0x3fc8c00da1a93294              # double 0.19336100000000001
	.quad	0x3fef2424a276b7ed              # double 0.97316199999999997
	.quad	0x3fe7a602c9081c2e              # double 0.73901499999999998
	.quad	0x3fca0eae18ac9f30              # double 0.203573
	.quad	0x3fe20672756861e9              # double 0.56328699999999998
	.quad	0x3fee245d41fa7653              # double 0.94193899999999997
	.quad	0x3fc46db50f40e5a3              # double 0.15959799999999999
	.quad	0x3fbecbb7f9d6f113              # double 0.120296
	.quad	0x3fc6fdc9c4da9004              # double 0.17962
	.quad	0x3fec2e4d1a650614              # double 0.88065199999999999
	.quad	0x3fe8754b05b7cfe6              # double 0.76431800000000005
	.quad	0x3fd3e731d2e0e304              # double 0.31098599999999998
	.quad	0x3fd744523f67f4dc              # double 0.36354500000000001
	.quad	0x3fcd1950331e3a7e              # double 0.22733500000000001
	.quad	0x3fdbb19a415f45e1              # double 0.43271500000000002
	.quad	0x3fd3f7a0b5ed8d37              # double 0.31198900000000002
	.quad	0x3fe65b163baba7b9              # double 0.69861899999999999
	.quad	0x3fede5aff2a172ac              # double 0.934288
	.quad	0x3fee6e06d938151a              # double 0.95093099999999997
	.quad	0x3fe66c636b096356              # double 0.70073099999999999
	.quad	0x3fd6dcfcc5b8dc55              # double 0.357238
	.quad	0x3fd637c1376d5497              # double 0.34715299999999999
	.quad	0x3fef6d5ae1cde5d2              # double 0.98209900000000006
	.quad	0x3fd3ec52a411c2a0              # double 0.31129899999999999
	.quad	0x3fc7aeff5c6c11a1              # double 0.185028
	.quad	0x3fd794bbe4473cd5              # double 0.36845299999999997
	.quad	0x3fd815b573eab368              # double 0.37632500000000002
	.quad	0x3fefeb074a771c97              # double 0.99743999999999999
	.quad	0x3fdb88a04d12018a              # double 0.43021399999999999
	.quad	0x3fb4f51ac9afe1da              # double 0.081864999999999993
	.quad	0x3fe7be07a28bb0a3              # double 0.74194700000000002
	.quad	0x3fe4c31593e5fb72              # double 0.648814
	.quad	0x3fe67fb8b26394fb              # double 0.70309100000000002
	.quad	0x3fe6691ea78af3e4              # double 0.70033199999999995
	.quad	0x3fc334c5da6a4441              # double 0.15004799999999999
	.quad	0x3fe93341e14bdfd2              # double 0.78750699999999996
	.quad	0x3fdf9b951c5c5719              # double 0.493871
	.quad	0x3fe4082278d0cc36              # double 0.62599300000000002
	.quad	0x3fc4ff1950331e3a              # double 0.16403499999999999
	.quad	0x3fec58665e02ea96              # double 0.885791
	.quad	0x3febb65ecc3e3194              # double 0.866012
	.quad	0x3fca876e1deacc92              # double 0.207258
	.quad	0x3fdfc486ad2dcb14              # double 0.49636999999999998
	.quad	0x3fc239b456b441bc              # double 0.14238600000000001
	.quad	0x3fe68509bf9c62a2              # double 0.70374000000000003
	.quad	0x3feb003686a4ca4f              # double 0.84377599999999997
	.quad	0x3fcd21dda059a73b              # double 0.22759599999999999
	.quad	0x3fb3823c85c24c40              # double 0.076205999999999996
	.quad	0x3fd33f3e0370cdc8              # double 0.30073499999999997
	.quad	0x3f9c64fdb09a671f              # double 0.027729
	.quad	0x3fba6b723ee1bd1f              # double 0.103202
	.quad	0x3fdf4113c68661ae              # double 0.48834699999999998
	.quad	0x3fe63fab10ba6267              # double 0.695272
	.quad	0x3fd1cb7d41743e96              # double 0.27804499999999999
	.quad	0x3fe1f51697f1f9ad              # double 0.561168
	.quad	0x3fe10cf1800a7c5b              # double 0.53283000000000003
	.quad	0x3fefede54b48d3ae              # double 0.99778999999999995
	.quad	0x3fe0f9d6f112fd33              # double 0.53049800000000003
	.quad	0x3fd0f40a2877ee4e              # double 0.26489499999999999
	.quad	0x3fee7feb074a771d              # double 0.95311500000000005
	.quad	0x3fd8936c58eeae9f              # double 0.38399800000000001
	.quad	0x3fd0919ef954eb14              # double 0.25888800000000001
	.quad	0x3fd7b38d60a63305              # double 0.370334
	.quad	0x3fec9cde5d18090b              # double 0.89414899999999997
	.quad	0x3fef61f5be5d9e41              # double 0.98070800000000002
	.quad	0x3fe5504c48adeebb              # double 0.66605199999999998
	.quad	0x3fb727dcbddb9842              # double 0.090452000000000004
	.quad	0x3fc61ef73c0c1fc9              # double 0.17282
	.quad	0x3fe09784ec636b09              # double 0.51849599999999996
	.quad	0x3fe88088509bf9c6              # double 0.76568999999999998
	.quad	0x3fd34b1ab0856e69              # double 0.30145899999999998
	.quad	0x3fc06f694467381d              # double 0.12839999999999999
	.quad	0x3fec29e4d5d80e49              # double 0.88011399999999995
	.quad	0x3fbf1098d477bbf9              # double 0.121347
	.quad	0x3febd019f3c70c99              # double 0.86915299999999995
	.quad	0x3fe53fcc9ea9a3d3              # double 0.66403800000000002
	.quad	0x3fe9a4bba12b5e53              # double 0.80135900000000004
	.quad	0x3fe09eeaa6d26741              # double 0.51939900000000006
	.quad	0x3fe380abf76a2f49              # double 0.60945700000000003
	.quad	0x3fec51e96c3fc43b              # double 0.88499899999999998
	.quad	0x3fa5fc19c17225b7              # double 0.042938999999999998
	.quad	0x3fd987a072d1aeb4              # double 0.39890300000000001
	.quad	0x3fef630caa326e11              # double 0.98084099999999996
	.quad	0x3fecc0a06e9ff0cc              # double 0.89851400000000003
	.quad	0x3fe984dfce3150db              # double 0.79747000000000001
	.quad	0x3fa056605ee568a5              # double 0.031909
	.quad	0x3fde2dadb8348f54              # double 0.47153800000000001
	.quad	0x3fee2014727dcbde              # double 0.94141600000000003
	.quad	0x3fd7757d5a9eb207              # double 0.36654599999999998
	.quad	0x3fd7c9bc77143394              # double 0.37168800000000002
	.quad	0x3fe3d5714b9cb685              # double 0.61980500000000005
	.quad	0x3fef99ce075f6fd2              # double 0.98752499999999999
	.quad	0x3fd79d883ba3443d              # double 0.36898999999999998
	.quad	0x3fd31ca3a4b5568f              # double 0.29862300000000003
	.quad	0x3feeabcf91a32b13              # double 0.95847300000000001
	.quad	0x3fec24dd2f1a9fbe              # double 0.87949999999999995
	.quad	0x3fa990f301eabbcb              # double 0.049933999999999999
	.quad	0x3fe990cf5b1c8649              # double 0.79892700000000005
	.quad	0x3fe51f4f50a02b84              # double 0.66007199999999999
	.quad	0x3feb7143393ab431              # double 0.857576
	.quad	0x3fe99843c3a42f1f              # double 0.79983700000000002
	.quad	0x3fe927c9de050375              # double 0.786107
	.quad	0x3fc42dcf4623d0c0              # double 0.15764800000000001
	.quad	0x3fdcde2ac3222920              # double 0.45106000000000002
	.quad	0x3fbc48adeebb341e              # double 0.110484
	.quad	0x3fd7d9cf13cee9dd              # double 0.37266899999999997
	.quad	0x3febe290eed02cd4              # double 0.87140700000000004
	.quad	0x3fd578b3700474da              # double 0.33549200000000001
	.quad	0x3fd60ae1049235f8              # double 0.344414
	.quad	0x3fe43a27ae9ab29e              # double 0.63209899999999997
	.quad	0x3fc2504816f0068e              # double 0.14307500000000001
	.quad	0x3fdb00a7c5ac471b              # double 0.42191499999999998
	.quad	0x3fe3aea0fd3b29a2              # double 0.61506700000000003
	.quad	0x3fe635c9e6687f45              # double 0.69406599999999996
	.quad	0x3fc0046c764adff8              # double 0.125135
	.quad	0x3fc98d1d8a548238              # double 0.19961899999999999
	.quad	0x3fd726edaa92e621              # double 0.36175099999999999
	.quad	0x3fb5f2990f301eac              # double 0.085733000000000004
	.quad	0x3feec0639d5e4a38              # double 0.96098499999999997
	.quad	0x3fe382278d0cc35d              # double 0.60963800000000001
	.quad	0x3feeed527e521577              # double 0.96647000000000005
	.quad	0x3fe89465e8922531              # double 0.76811499999999999
	.quad	0x3fa2305532617c1c              # double 0.035525000000000001
	.quad	0x3fdc3b18dac258d6              # double 0.44110700000000003
	.quad	0x3fcbdef8487b99d4              # double 0.21774199999999999
	.quad	0x3fc9844d013a92a3              # double 0.19935
	.quad	0x3fe51d30270f3882              # double 0.65981299999999998
	.quad	0x3fee2515ce9e5e24              # double 0.94202699999999994
	.quad	0x3fe7295208e15012              # double 0.72379400000000005
	.quad	0x3fd06e5471715c64              # double 0.25673400000000002
	.quad	0x3fdea3161a1db878              # double 0.47870400000000002
	.quad	0x3feb155714b9cb68              # double 0.84635499999999997
	.quad	0x3fe49040bfe3b03e              # double 0.64260899999999999
	.quad	0x3fc301d19157abb9              # double 0.14849300000000001
	.quad	0x3fcccffa7eb6bf44              # double 0.22509699999999999
	.quad	0x3fe20a697aeddce8              # double 0.56377100000000002
	.quad	0x3fdcb79d909f1f15              # double 0.44870700000000002
	.quad	0x3fd1d6c2efd438d2              # double 0.27873300000000001
	.quad	0x3fd7a79357603926              # double 0.36960300000000001
	.quad	0x3fd386d2ed783dff              # double 0.30510399999999999
	.quad	0x3f9f911cf355cd92              # double 0.030827
	.quad	0x3fe1480a5accd530              # double 0.54004399999999997
	.quad	0x3fe2ab4fa48301a8              # double 0.58341200000000004
	.quad	0x3fde232096787ce9              # double 0.47089399999999998
	.quad	0x3fd38cc144028e50              # double 0.30546600000000002
	.quad	0x3fdb6466b1e5c0ba              # double 0.42800300000000002
	.quad	0x3fb6481f53825e14              # double 0.087038000000000004
	.quad	0x3fd883947496aad2              # double 0.38303100000000001
	.quad	0x3fdcf97edc7ef178              # double 0.45272800000000002
	.quad	0x3fef493c89f40a28              # double 0.97768999999999994
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
