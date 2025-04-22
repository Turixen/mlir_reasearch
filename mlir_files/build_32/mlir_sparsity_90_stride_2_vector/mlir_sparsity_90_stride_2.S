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
	.quad	20                              # 0x14
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	54                              # 0x36
	.quad	73                              # 0x49
	.quad	73                              # 0x49
	.quad	96                              # 0x60
	.quad	96                              # 0x60
	.quad	116                             # 0x74
	.quad	116                             # 0x74
	.quad	135                             # 0x87
	.quad	135                             # 0x87
	.quad	156                             # 0x9c
	.quad	156                             # 0x9c
	.quad	174                             # 0xae
	.quad	174                             # 0xae
	.quad	194                             # 0xc2
	.quad	194                             # 0xc2
	.quad	208                             # 0xd0
	.quad	208                             # 0xd0
	.quad	226                             # 0xe2
	.quad	226                             # 0xe2
	.quad	241                             # 0xf1
	.quad	241                             # 0xf1
	.quad	269                             # 0x10d
	.quad	269                             # 0x10d
	.quad	286                             # 0x11e
	.quad	286                             # 0x11e
	.quad	306                             # 0x132
	.quad	306                             # 0x132
	.quad	323                             # 0x143
	.quad	323                             # 0x143
	.quad	346                             # 0x15a
	.quad	346                             # 0x15a
	.quad	368                             # 0x170
	.quad	368                             # 0x170
	.quad	379                             # 0x17b
	.quad	379                             # 0x17b
	.quad	402                             # 0x192
	.quad	402                             # 0x192
	.quad	414                             # 0x19e
	.quad	414                             # 0x19e
	.quad	428                             # 0x1ac
	.quad	428                             # 0x1ac
	.quad	451                             # 0x1c3
	.quad	451                             # 0x1c3
	.quad	468                             # 0x1d4
	.quad	468                             # 0x1d4
	.quad	488                             # 0x1e8
	.quad	488                             # 0x1e8
	.quad	507                             # 0x1fb
	.quad	507                             # 0x1fb
	.quad	527                             # 0x20f
	.quad	527                             # 0x20f
	.quad	549                             # 0x225
	.quad	549                             # 0x225
	.quad	565                             # 0x235
	.quad	565                             # 0x235
	.quad	588                             # 0x24c
	.quad	588                             # 0x24c
	.quad	608                             # 0x260
	.quad	608                             # 0x260
	.quad	629                             # 0x275
	.quad	629                             # 0x275
	.quad	656                             # 0x290
	.quad	656                             # 0x290
	.quad	678                             # 0x2a6
	.quad	678                             # 0x2a6
	.quad	705                             # 0x2c1
	.quad	705                             # 0x2c1
	.quad	729                             # 0x2d9
	.quad	729                             # 0x2d9
	.quad	745                             # 0x2e9
	.quad	745                             # 0x2e9
	.quad	768                             # 0x300
	.quad	768                             # 0x300
	.quad	782                             # 0x30e
	.quad	782                             # 0x30e
	.quad	807                             # 0x327
	.quad	807                             # 0x327
	.quad	828                             # 0x33c
	.quad	828                             # 0x33c
	.quad	851                             # 0x353
	.quad	851                             # 0x353
	.quad	867                             # 0x363
	.quad	867                             # 0x363
	.quad	892                             # 0x37c
	.quad	892                             # 0x37c
	.quad	915                             # 0x393
	.quad	915                             # 0x393
	.quad	935                             # 0x3a7
	.quad	935                             # 0x3a7
	.quad	956                             # 0x3bc
	.quad	956                             # 0x3bc
	.quad	981                             # 0x3d5
	.quad	981                             # 0x3d5
	.quad	999                             # 0x3e7
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
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
	.quad	0x3fe15c1615ebfa8f              # double 0.54249099999999995
	.quad	0x3fe8b6fc158fb43e              # double 0.77233700000000005
	.quad	0x3feec30d306a2b17              # double 0.96130999999999999
	.quad	0x3fe2d75c0767d34e              # double 0.58878900000000001
	.quad	0x3feb21f8e3ac0c63              # double 0.84789700000000001
	.quad	0x3fc936bd2b6f1993              # double 0.19698299999999999
	.quad	0x3fe14f5b1c864884              # double 0.540937
	.quad	0x3fedbbfd71b04684              # double 0.92919799999999996
	.quad	0x3fbf532e7b3d8e00              # double 0.122363
	.quad	0x3fed2314013ec461              # double 0.91053200000000001
	.quad	0x3fe9ee978d4fdf3b              # double 0.81037499999999996
	.quad	0x3fee697aeddce7cd              # double 0.950376
	.quad	0x3f7714b9cb6848bf              # double 0.0056350000000000003
	.quad	0x3fe75992428d434a              # double 0.729684
	.quad	0x3fc091212513b5bf              # double 0.12942899999999999
	.quad	0x3fe59c5e6ff7dfa0              # double 0.67533799999999999
	.quad	0x3fdaa12b5e529bae              # double 0.41608699999999998
	.quad	0x3fe382f944241c3f              # double 0.609738
	.quad	0x3fd617481b21c476              # double 0.34517100000000001
	.quad	0x3fea51a437824d4d              # double 0.82246600000000003
	.quad	0x3fe19357603925bb              # double 0.54923599999999995
	.quad	0x3fbb7ac3eb7cbb3d              # double 0.10734200000000001
	.quad	0x3fe2804102ff8ec1              # double 0.578156
	.quad	0x3fd55cd4ed2cbea5              # double 0.333791
	.quad	0x3feceddf00abf76a              # double 0.90403699999999998
	.quad	0x3fcf353b4b2fa93b              # double 0.243812
	.quad	0x3fe4c37e6f71a7e3              # double 0.648864
	.quad	0x3fd19d8409e55c10              # double 0.27523900000000001
	.quad	0x3fd01040bfe3b03e              # double 0.25099199999999999
	.quad	0x3fbf52eb5f5f0b28              # double 0.122359
	.quad	0x3fc946e4c0df58c1              # double 0.19747600000000001
	.quad	0x3fc1fd5885d31338              # double 0.140544
	.quad	0x3fe9c473cd573648              # double 0.80523100000000003
	.quad	0x3fecf102363b2570              # double 0.90442
	.quad	0x3fe25a2d72ffd1dd              # double 0.57350800000000002
	.quad	0x3fe6fecfe9b7bf1f              # double 0.71860500000000005
	.quad	0x3fe90522ea0fd3b3              # double 0.78187700000000004
	.quad	0x3fe720bc382a12f9              # double 0.722746
	.quad	0x3fd230941c8216c6              # double 0.284215
	.quad	0x3fedd288ce703afb              # double 0.93194999999999995
	.quad	0x3fecb6006d0d4995              # double 0.89721700000000004
	.quad	0x3fc8fc7a398201cd              # double 0.19520499999999999
	.quad	0x3fac906034f3fd93              # double 0.055788999999999998
	.quad	0x3fe69ef73c0c1fc9              # double 0.70690500000000001
	.quad	0x3fdb143393ab430f              # double 0.42310799999999998
	.quad	0x3fe6d5ffe6d58c8f              # double 0.71362300000000001
	.quad	0x3fee50507a6bd6e9              # double 0.94730400000000003
	.quad	0x3fd24e160d887ebf              # double 0.28601599999999999
	.quad	0x3fedb265add9c27f              # double 0.92802700000000005
	.quad	0x3fca7e49b1fab96f              # double 0.206979
	.quad	0x3fa8140dd3fe1976              # double 0.047028
	.quad	0x3fb5754b05b7cfe6              # double 0.083821000000000006
	.quad	0x3fe0a7bd48cb4aed              # double 0.52047600000000005
	.quad	0x3fd515b573eab368              # double 0.32945000000000002
	.quad	0x3fdf85b5b70691ea              # double 0.49253599999999997
	.quad	0x3fcca0ba1f4b1ee2              # double 0.22365499999999999
	.quad	0x3fed3efae7924af1              # double 0.91393800000000003
	.quad	0x3fe8909f1f14983d              # double 0.76765399999999995
	.quad	0x3fc85718eb895076              # double 0.19015799999999999
	.quad	0x3f9cd5b6805a2d73              # double 0.028159
	.quad	0x3fee1f666234a87e              # double 0.94133299999999998
	.quad	0x3fb08b6523704791              # double 0.064627000000000004
	.quad	0x3feb7aca36199781              # double 0.85873900000000003
	.quad	0x3fe30c9d9d3458cd              # double 0.59528999999999999
	.quad	0x3fce44ae85b9e8c4              # double 0.23647099999999999
	.quad	0x3fdb8adeebb341e1              # double 0.43035099999999998
	.quad	0x3fe28476f2a5a46a              # double 0.57867000000000002
	.quad	0x3fb2c8c5004fb118              # double 0.073375999999999997
	.quad	0x3fe4d4ae429e0a42              # double 0.65096200000000004
	.quad	0x3feda5aee631f8a1              # double 0.92647500000000005
	.quad	0x3fe5b2e9ccb7d417              # double 0.67808999999999997
	.quad	0x3fd0146a1a500d5f              # double 0.25124600000000002
	.quad	0x3fee9e03f705857b              # double 0.956789
	.quad	0x3fc37f950b955f78              # double 0.15233099999999999
	.quad	0x3fdc460ed80a17b1              # double 0.441776
	.quad	0x3fe537585be1a826              # double 0.66300599999999998
	.quad	0x3feedb2f661f18ca              # double 0.964256
	.quad	0x3feaacf7446f9b99              # double 0.83361399999999997
	.quad	0x3fe812f09d8c6d61              # double 0.75231199999999998
	.quad	0x3fb4a8d21bc126a6              # double 0.080700999999999994
	.quad	0x3fe45942917507ea              # double 0.63589600000000002
	.quad	0x3fa077681669ced1              # double 0.032161000000000002
	.quad	0x3fd41b328b6d86ec              # double 0.31415999999999999
	.quad	0x3fd49ccb7d41743f              # double 0.32207000000000002
	.quad	0x3fe13860999dcb58              # double 0.53813200000000005
	.quad	0x3fe4dccea28fe261              # double 0.65195400000000003
	.quad	0x3fe127264a16a487              # double 0.53602899999999998
	.quad	0x3fd833721d53cddd              # double 0.37813999999999998
	.quad	0x3fdb7c73eee52589              # double 0.42947099999999999
	.quad	0x3fca57c0b1359792              # double 0.20580300000000001
	.quad	0x3fcdcba301216830              # double 0.23277700000000001
	.quad	0x3fd71e2de8709742              # double 0.36121700000000001
	.quad	0x3fee2fd113836a83              # double 0.94333699999999998
	.quad	0x3fe919fc2a8869c6              # double 0.78442199999999995
	.quad	0x3fee54cdb7ae5797              # double 0.94785200000000003
	.quad	0x3fe6b93250b5243a              # double 0.71010700000000004
	.quad	0x3fea61c36976bc1f              # double 0.824434
	.quad	0x3f9bac710cb295ea              # double 0.027025
	.quad	0x3fda734b51372a39              # double 0.41328700000000002
	.quad	0x3fda463497b7414a              # double 0.41053499999999998
	.quad	0x3febc180d3cff64d              # double 0.867371
	.quad	0x3fecee78183f91e6              # double 0.90410999999999997
	.quad	0x3fe4f8cc9a77e5eb              # double 0.65537100000000004
	.quad	0x3fdf181e03f70585              # double 0.48584699999999997
	.quad	0x3fce4095f2452c5a              # double 0.236346
	.quad	0x3fe3ff04577d9557              # double 0.62487999999999999
	.quad	0x3fccb252ce032db2              # double 0.224192
	.quad	0x3fb1c3ac929aa1d7              # double 0.069391999999999995
	.quad	0x3fa4b4f1e4b44a1f              # double 0.040443
	.quad	0x3fec25204af92296              # double 0.87953199999999998
	.quad	0x3fcd0917d6b65a9b              # double 0.22684000000000001
	.quad	0x3fdb5cbff47735c2              # double 0.42753600000000003
	.quad	0x3fecdeacc92146a2              # double 0.90218200000000004
	.quad	0x3fc0226809d49518              # double 0.12605
	.quad	0x3fee5e6ff7dfa00e              # double 0.94902799999999998
	.quad	0x3fb0b252ce032db2              # double 0.065221000000000001
	.quad	0x3f83d96638433d6c              # double 0.0096919999999999992
	.quad	0x3fea62845996744b              # double 0.82452599999999998
	.quad	0x3fd44bf4cb1897a6              # double 0.31713599999999997
	.quad	0x3fe818a43bb40b35              # double 0.75300800000000001
	.quad	0x3fdbc1871e6cd291              # double 0.43368699999999999
	.quad	0x3fe9d73eab367a10              # double 0.80752500000000005
	.quad	0x3fed8d1b71758e22              # double 0.92347500000000005
	.quad	0x3fefd887ebf22c02              # double 0.99518200000000001
	.quad	0x3fe8df3519bd4068              # double 0.77724700000000002
	.quad	0x3fe9f83be6601bca              # double 0.81155200000000005
	.quad	0x3fdf78811b1d92b8              # double 0.49173
	.quad	0x3fe6c55a7d24180d              # double 0.71159099999999997
	.quad	0x3fe9041aac53b081              # double 0.78175099999999997
	.quad	0x3fe06cefed63454a              # double 0.51329800000000003
	.quad	0x3fde0cf9e3864cb6              # double 0.46954200000000001
	.quad	0x3fb4bf6e3f78bbd4              # double 0.081046000000000007
	.quad	0x3fb1819d2391d580              # double 0.068384
	.quad	0x3feaee7a311e85fd              # double 0.841611
	.quad	0x3fcd11be6e653869              # double 0.227104
	.quad	0x3fcd9029ae4f3344              # double 0.230962
	.quad	0x3fd9386d2ed783e0              # double 0.394069
	.quad	0x3fd5460ed80a17b1              # double 0.332401
	.quad	0x3fe5ed4e4c942d49              # double 0.68521799999999999
	.quad	0x3fe737cbb3c81909              # double 0.72556100000000001
	.quad	0x3fd5eaf6837f7be1              # double 0.34246599999999999
	.quad	0x3fe4854ac29bf163              # double 0.64127100000000004
	.quad	0x3fe6e1650a45d420              # double 0.71501400000000004
	.quad	0x3fc46ec17ebaf102              # double 0.15962999999999999
	.quad	0x3fb87442c7fbacb4              # double 0.095523999999999998
	.quad	0x3f8568e820e62995              # double 0.010454
	.quad	0x3fb51dde37585be2              # double 0.082487000000000004
	.quad	0x3fd9348b220791c5              # double 0.39383200000000002
	.quad	0x3fd6c08b75ea67e8              # double 0.35550199999999998
	.quad	0x3fb6af6837f7be12              # double 0.088613999999999998
	.quad	0x3fe1532617c1bda5              # double 0.54139999999999999
	.quad	0x3fef6e9dd7ecbb80              # double 0.98225300000000004
	.quad	0x3fd3b3311a543f1c              # double 0.30781199999999997
	.quad	0x3fe661cbccf28c7a              # double 0.699438
	.quad	0x3fe4e115592d98bf              # double 0.65247599999999994
	.quad	0x3fc6994185058dde              # double 0.17655199999999999
	.quad	0x3fdce83a109d0636              # double 0.45167400000000002
	.quad	0x3fea73c2dadb8349              # double 0.826631
	.quad	0x3fe5e878fabda0e0              # double 0.68462800000000001
	.quad	0x3fec84d12018a43c              # double 0.89121300000000003
	.quad	0x3fe0079a2834d270              # double 0.50092800000000004
	.quad	0x3fe984406c00da1b              # double 0.79739400000000005
	.quad	0x3faf4d7add15f02c              # double 0.061137999999999998
	.quad	0x3fe6455a7d24180d              # double 0.69596599999999997
	.quad	0x3fdfa01eeed8904f              # double 0.49414799999999998
	.quad	0x3fb954866a11ec92              # double 0.098946000000000006
	.quad	0x3fd2b24e9c454584              # double 0.29213299999999998
	.quad	0x3fc12cbea4ebdd33              # double 0.13417799999999999
	.quad	0x3fc3129888f861a6              # double 0.149005
	.quad	0x3fed49081c2e33f0              # double 0.91516500000000001
	.quad	0x3fd4008a697aeddd              # double 0.31253300000000001
	.quad	0x3fefacc70867ad8e              # double 0.98984099999999997
	.quad	0x3fe3a0b3d4ae429e              # double 0.613367
	.quad	0x3fec39389b52007e              # double 0.88198500000000002
	.quad	0x3fe7faf20ea5b531              # double 0.74938300000000002
	.quad	0x3fe24f13cee9dd7f              # double 0.57215300000000002
	.quad	0x3fe590e0221426fe              # double 0.67393499999999995
	.quad	0x3fe91b951c5c5719              # double 0.78461700000000001
	.quad	0x3fe11acffa7eb6bf              # double 0.53452299999999997
	.quad	0x3feae8af81626b2f              # double 0.84090399999999998
	.quad	0x3fe9b3e9a6f826ee              # double 0.80321200000000004
	.quad	0x3fe228848387df5d              # double 0.56744600000000001
	.quad	0x3fde97891e215337              # double 0.47799900000000001
	.quad	0x3fe0227ae9ab29e5              # double 0.50420900000000002
	.quad	0x3fdf3c536d655e29              # double 0.48805700000000002
	.quad	0x3fd3bc33f85510d4              # double 0.30836200000000002
	.quad	0x3fe8b9e8c47a17f4              # double 0.77269399999999999
	.quad	0x3fe70331e3a7daa5              # double 0.71914
	.quad	0x3fe3e94ee392e1ef              # double 0.62222999999999995
	.quad	0x3fceeb0318b9346a              # double 0.24154700000000001
	.quad	0x3fd3d6b228dc981c              # double 0.309979
	.quad	0x3fca7b1c0010c6f8              # double 0.20688200000000001
	.quad	0x3fae41919ac79703              # double 0.059094000000000001
	.quad	0x3fe2dadb8348f53c              # double 0.58921599999999996
	.quad	0x3f89628cbd1244a6              # double 0.012395
	.quad	0x3fe94a31e7d9988d              # double 0.79030699999999998
	.quad	0x3fd7b84988094e5d              # double 0.37062299999999998
	.quad	0x3fe93c126a65cf68              # double 0.78858300000000003
	.quad	0x3fed7aa8a82a5615              # double 0.92122300000000001
	.quad	0x3fe25cfaacd9e83e              # double 0.57384999999999997
	.quad	0x3fefd64b662fdfc2              # double 0.99490900000000004
	.quad	0x3fe4bf50e3476295              # double 0.64835399999999999
	.quad	0x3fe5017dae81882b              # double 0.65643200000000002
	.quad	0x3fdf04e618ce2d1f              # double 0.48467399999999999
	.quad	0x3fd08afc47e49b20              # double 0.25848300000000002
	.quad	0x3fc9d3d4280ae105              # double 0.20177700000000001
	.quad	0x3fed3a08398a6549              # double 0.91333399999999998
	.quad	0x3feca44417870542              # double 0.89505199999999996
	.quad	0x3fdfb60ae9680e06              # double 0.49548599999999998
	.quad	0x3fefcb6a619da9ca              # double 0.99358100000000005
	.quad	0x3fd67685985ad539              # double 0.35098400000000002
	.quad	0x3fd5c710cb295e9e              # double 0.34027499999999999
	.quad	0x3fe7a135daad6020              # double 0.738429
	.quad	0x3fce3211cb039ef1              # double 0.235903
	.quad	0x3fca9552e2fbe33b              # double 0.20768200000000001
	.quad	0x3fca295a6c5d206d              # double 0.20438700000000001
	.quad	0x3fe239b024f6598e              # double 0.56954199999999999
	.quad	0x3fba92923e5b8562              # double 0.103799
	.quad	0x3fe83254e6e221c9              # double 0.75614400000000004
	.quad	0x3fd08f81e8a2ec29              # double 0.25875900000000002
	.quad	0x3fea76b7ed41b75a              # double 0.82699199999999995
	.quad	0x3fe75acabc515486              # double 0.72983299999999995
	.quad	0x3fedf9b56323bbc7              # double 0.93673200000000001
	.quad	0x3fe8ea465a57646b              # double 0.77859800000000001
	.quad	0x3fe36264e48626f6              # double 0.60576099999999999
	.quad	0x3fe87b890d5a5b96              # double 0.76507999999999998
	.quad	0x3fe618efbb0e5e68              # double 0.69054400000000005
	.quad	0x3fe278b1572580c3              # double 0.577233
	.quad	0x3f8f4c2b51bd61f6              # double 0.015282
	.quad	0x3fef4efcbd556085              # double 0.97839200000000003
	.quad	0x3fd7ba1f4b1ee243              # double 0.37073499999999998
	.quad	0x3fc92b7fe08aefb3              # double 0.19664000000000001
	.quad	0x3fea30d9513f8db5              # double 0.81846300000000005
	.quad	0x3fd168f4b61fe21e              # double 0.27203100000000002
	.quad	0x3fc21272c94b380d              # double 0.14118800000000001
	.quad	0x3fd8f13cee9dd7ed              # double 0.38972400000000001
	.quad	0x3fdba31a4bdba0a5              # double 0.43182999999999999
	.quad	0x3fd216e7a311e860              # double 0.28264800000000001
	.quad	0x3fcea7503b81b64e              # double 0.239481
	.quad	0x3fe1149e8815e397              # double 0.53376699999999999
	.quad	0x3fb2a9d627bf61aa              # double 0.072903999999999997
	.quad	0x3fe8f93ff25e56cd              # double 0.78042599999999995
	.quad	0x3fa405d52c16df40              # double 0.039107000000000003
	.quad	0x3fede1ae70c1333c              # double 0.93379900000000004
	.quad	0x3fd5019b0ab2e169              # double 0.32822299999999999
	.quad	0x3feb9198aeb80ed0              # double 0.86152300000000004
	.quad	0x3feae9af5ba2be06              # double 0.84102600000000005
	.quad	0x3fed82c4d65e4606              # double 0.92221299999999995
	.quad	0x3fd7f727136a4010              # double 0.37446000000000002
	.quad	0x3fdaa897635e742a              # double 0.41654000000000002
	.quad	0x3fdce10060780fdc              # double 0.451233
	.quad	0x3fe1d3f5b5fa2270              # double 0.55712399999999995
	.quad	0x3feff4d9c6b0531a              # double 0.99863900000000005
	.quad	0x3feb4061847f5621              # double 0.85160899999999995
	.quad	0x3fd0bf01322f2735              # double 0.261658
	.quad	0x3fdc9cb252ce032e              # double 0.44706400000000002
	.quad	0x3fe5e94898f605ab              # double 0.68472699999999997
	.quad	0x3fb01d9f4d37c137              # double 0.062951999999999994
	.quad	0x3fed87af20ea5b53              # double 0.92281299999999999
	.quad	0x3fd9150dae3e6c4c              # double 0.39190999999999998
	.quad	0x3fe10605681ecd4b              # double 0.53198500000000004
	.quad	0x3fdbd651b0ccbc06              # double 0.43495600000000001
	.quad	0x3fe8235935fc3b4f              # double 0.75431499999999996
	.quad	0x3fd6804102ff8ec1              # double 0.351578
	.quad	0x3f8f8ca8198f1d3f              # double 0.015405
	.quad	0x3fe8f368ad688377              # double 0.77971299999999999
	.quad	0x3fd5ad538ac18f82              # double 0.33870400000000001
	.quad	0x3feab736cdf266ba              # double 0.83486499999999997
	.quad	0x3fe946aa087ca644              # double 0.78987600000000002
	.quad	0x3fe3101d19157abc              # double 0.59571700000000005
	.quad	0x3fe7543f1c75818c              # double 0.72903399999999996
	.quad	0x3fd01b7e0ac7da1f              # double 0.25167800000000001
	.quad	0x3fa8a1be2b4959e6              # double 0.048108999999999999
	.quad	0x3fe3de6ff7dfa00e              # double 0.62090299999999998
	.quad	0x3f8d3a1d323fee2d              # double 0.014271000000000001
	.quad	0x3fe313f6c2699c7c              # double 0.59618700000000002
	.quad	0x3fee2f7b17ce52df              # double 0.94329600000000002
	.quad	0x3fc240f238972043              # double 0.14260700000000001
	.quad	0x3fd9e9a2c669057d              # double 0.40488499999999999
	.quad	0x3fe90e7ff583a53c              # double 0.78302000000000004
	.quad	0x3fe200cf9e3864cb              # double 0.56259899999999996
	.quad	0x3fdffe75bc44bf4d              # double 0.49990600000000002
	.quad	0x3fe31c4b90214ad3              # double 0.59720399999999996
	.quad	0x3fb315e7c8d19589              # double 0.074552999999999994
	.quad	0x3fc97a56de33269e              # double 0.199046
	.quad	0x3fd9a26e5471715c              # double 0.40053899999999998
	.quad	0x3fdf77f27fe4bcae              # double 0.49169600000000002
	.quad	0x3fb57f51efb6dca0              # double 0.083973999999999993
	.quad	0x3fbe0ccff21b3aef              # double 0.117383
	.quad	0x3fe15e37585be1a8              # double 0.54275099999999998
	.quad	0x3fd007d4e09784ec              # double 0.25047799999999998
	.quad	0x3feb144028e4fb98              # double 0.84622200000000003
	.quad	0x3fdc6f7e3d1cc101              # double 0.44430500000000001
	.quad	0x3fd80f66a5508701              # double 0.37594
	.quad	0x3fbc01a36e2eb1c4              # double 0.1094
	.quad	0x3fd7426fe718a86d              # double 0.36342999999999998
	.quad	0x3fc61650a45d41fa              # double 0.17255599999999999
	.quad	0x3fe33ab430f49492              # double 0.60091600000000001
	.quad	0x3feb412cf0f9d2bf              # double 0.85170599999999996
	.quad	0x3fe40a2877ee4e27              # double 0.62624000000000002
	.quad	0x3fdbfc08fa7a8501              # double 0.43725799999999998
	.quad	0x3fe36573215fcc18              # double 0.60613399999999995
	.quad	0x3fe8388ca3e7d135              # double 0.75690299999999999
	.quad	0x3fddc92ddbdb5d89              # double 0.46540399999999998
	.quad	0x3fefbddb9841aac5              # double 0.99192599999999997
	.quad	0x3feded58c8eef1bb              # double 0.93522300000000003
	.quad	0x3fd355da272862f6              # double 0.30211500000000002
	.quad	0x3fc06a550870110a              # double 0.128245
	.quad	0x3fe8a7221858bc5a              # double 0.77040200000000003
	.quad	0x3fd4871e6cd29132              # double 0.320747
	.quad	0x3fce0e496ededaec              # double 0.23481099999999999
	.quad	0x3fa5ac8a372606fb              # double 0.042332000000000002
	.quad	0x3fa521ff2e48e8a7              # double 0.041274999999999999
	.quad	0x3fe01327243137b0              # double 0.50233799999999995
	.quad	0x3fe7ef88b9778573              # double 0.74799000000000004
	.quad	0x3fede81a9b8cb8e1              # double 0.93458300000000005
	.quad	0x3fe59eeaa6d26741              # double 0.67564900000000006
	.quad	0x3fd1108c3f3e0371              # double 0.26663500000000001
	.quad	0x3fec35bd512ec6bd              # double 0.88156000000000001
	.quad	0x3faea875d56f32be              # double 0.059879000000000002
	.quad	0x3fdc55c0fcb4f1e5              # double 0.44273400000000002
	.quad	0x3fedb400b88ca3e8              # double 0.92822300000000002
	.quad	0x3fe7491afc04c8bd              # double 0.72767400000000004
	.quad	0x3fe6ad3415b1422d              # double 0.70864300000000002
	.quad	0x3fa05553ef6b5d46              # double 0.031900999999999999
	.quad	0x3fe2a81fd9ba1b19              # double 0.58302299999999996
	.quad	0x3fd5240b780346dc              # double 0.33032499999999998
	.quad	0x3fdd1e4712e40853              # double 0.45497300000000002
	.quad	0x3fe78110a137f38c              # double 0.73450499999999996
	.quad	0x3fd1655e28aa4335              # double 0.271812
	.quad	0x3fe810a99b6f5caf              # double 0.75203399999999998
	.quad	0x3fe8103c8e25c811              # double 0.75198200000000004
	.quad	0x3febc436fc158fb4              # double 0.86770199999999997
	.quad	0x3fc9ccc037931444              # double 0.20156099999999999
	.quad	0x3fe46b9c304ccee6              # double 0.63813600000000004
	.quad	0x3fd31bc98a222d51              # double 0.29857099999999998
	.quad	0x3fefb15b573eab36              # double 0.99039999999999995
	.quad	0x3fe75f761cbccf29              # double 0.73040300000000002
	.quad	0x3fe3f60e0eb67c28              # double 0.62378599999999995
	.quad	0x3fe4004b7f5a5333              # double 0.62503600000000004
	.quad	0x3fc7908e581cf788              # double 0.18409900000000001
	.quad	0x3fb87ce95faa8a83              # double 0.095656000000000005
	.quad	0x3fd85015c209246c              # double 0.379888
	.quad	0x3fe7337eb28d8666              # double 0.72503600000000001
	.quad	0x3fe4eca686e7e62e              # double 0.65388800000000002
	.quad	0x3fe4826cc1ca3a4b              # double 0.64092099999999996
	.quad	0x3fd41693c03bc4d2              # double 0.31387799999999999
	.quad	0x3fe6dbe3c105186e              # double 0.71434200000000003
	.quad	0x3fcfd71b0468448d              # double 0.248752
	.quad	0x3fd49ee88df3732a              # double 0.32219900000000001
	.quad	0x3fb421294573a798              # double 0.078631000000000006
	.quad	0x3fe63d188f42fe82              # double 0.69495799999999996
	.quad	0x3fe4ec58eeae9ee4              # double 0.65385099999999996
	.quad	0x3fd1599ed7c6fbd2              # double 0.27109499999999997
	.quad	0x3fdb7c2ca148ba84              # double 0.429454
	.quad	0x3fb3eb5b2d4d4025              # double 0.077810000000000004
	.quad	0x3fecaa0663c74fb5              # double 0.89575499999999997
	.quad	0x3feed6084a515cea              # double 0.96362700000000001
	.quad	0x3fdaeb9e492bc2fc              # double 0.42063099999999998
	.quad	0x3fe853ef6b5d462c              # double 0.76024599999999997
	.quad	0x3fec07cc7d1bb491              # double 0.87595199999999995
	.quad	0x3fe0d823422467be              # double 0.52638399999999996
	.quad	0x3fe579d909f1f14a              # double 0.67112400000000005
	.quad	0x3fe63280f12c27a6              # double 0.69366499999999998
	.quad	0x3fca7c957cd466f5              # double 0.206927
	.quad	0x3fe68f4f93bc0a07              # double 0.70499400000000001
	.quad	0x3fc07d0aed99cbef              # double 0.12881600000000001
	.quad	0x3fe3765dbfceb789              # double 0.60819900000000005
	.quad	0x3fbaadd590c0ad04              # double 0.104215
	.quad	0x3fe9379b77c02afe              # double 0.78803800000000002
	.quad	0x3f9b1d0c80410300              # double 0.026478000000000002
	.quad	0x3fc180f55de58e65              # double 0.13674800000000001
	.quad	0x3fe3278f25a250f8              # double 0.59857899999999997
	.quad	0x3fe230ec31162281              # double 0.56847199999999998
	.quad	0x3fe4a2f6a50d6b23              # double 0.64489300000000005
	.quad	0x3fe90398a65492ff              # double 0.78168899999999997
	.quad	0x3fefb2d4d4024b34              # double 0.99058000000000001
	.quad	0x3fe982bc72e275ab              # double 0.79720899999999995
	.quad	0x3fe00ffb8b263950              # double 0.50195100000000004
	.quad	0x3fdaa821f2990f30              # double 0.41651199999999999
	.quad	0x3fde1572580c3090              # double 0.470059
	.quad	0x3fced73860999dcb              # double 0.24094299999999999
	.quad	0x3fec4e703afb7e91              # double 0.884575
	.quad	0x3fba3150dae3e6c5              # double 0.102315
	.quad	0x3fd22e59af9ebe9d              # double 0.28407900000000003
	.quad	0x3fe183e63e8dda49              # double 0.54735100000000003
	.quad	0x3fcce3cd9a52263e              # double 0.22570200000000001
	.quad	0x3fe0409c3ce2089e              # double 0.50788699999999998
	.quad	0x3fcf7a02fb5d0310              # double 0.24591099999999999
	.quad	0x3fdad7e889c1b542              # double 0.41942800000000002
	.quad	0x3fee6efe4ffc9796              # double 0.95104900000000003
	.quad	0x3fe8011f4f50a02c              # double 0.75013700000000005
	.quad	0x3febd76ee73e681b              # double 0.87004800000000004
	.quad	0x3fec18b502ababeb              # double 0.87801600000000002
	.quad	0x3fc85471715c63ae              # double 0.190077
	.quad	0x3fcf116a8b8f14db              # double 0.24271899999999999
	.quad	0x3fdb5e785b5b7069              # double 0.42764099999999999
	.quad	0x3fe7defc7a398202              # double 0.74597000000000002
	.quad	0x3fe4b1e5c0b99913              # double 0.64671599999999996
	.quad	0x3fd1cac083126e98              # double 0.27800000000000002
	.quad	0x3fe94d9a52263d81              # double 0.79072299999999995
	.quad	0x3fedfba8826aa8eb              # double 0.93696999999999997
	.quad	0x3fd92e44b6e935b9              # double 0.39344899999999999
	.quad	0x3fbfe78e1932d6ed              # double 0.124627
	.quad	0x3fbff8982cb20fb2              # double 0.124887
	.quad	0x3fdcd234eb9a176e              # double 0.45033000000000001
	.quad	0x3fe44b4289118c19              # double 0.63418699999999995
	.quad	0x3fcdd6a593a2df93              # double 0.23311299999999999
	.quad	0x3fddd65e4606748e              # double 0.46620899999999998
	.quad	0x3fe3478c868b9fdc              # double 0.60248400000000002
	.quad	0x3feba615a8deb0fb              # double 0.86402400000000001
	.quad	0x3fbece789e774eec              # double 0.120338
	.quad	0x3fe7b966be7afa72              # double 0.74138199999999999
	.quad	0x3fde4877681669cf              # double 0.47317300000000001
	.quad	0x3fa5db9841aac53b              # double 0.042691
	.quad	0x3fedccf0739b024f              # double 0.93126699999999996
	.quad	0x3fca8fc9363f572e              # double 0.207513
	.quad	0x3fe3fbf401c4fc1e              # double 0.62450600000000001
	.quad	0x3fd73ea2d2fe3f36              # double 0.36319800000000002
	.quad	0x3fd74ebdd334c5da              # double 0.36418099999999998
	.quad	0x3fe69f340d4dc65c              # double 0.70693399999999995
	.quad	0x3fd30329802c0a4a              # double 0.297068
	.quad	0x3fe0b2acfb762d84              # double 0.52181100000000002
	.quad	0x3fdf4e5929670197              # double 0.48915700000000001
	.quad	0x3fa903c8e25c810a              # double 0.048856999999999998
	.quad	0x3fe50bb4d48882f1              # double 0.65767900000000001
	.quad	0x3fde1b152f3c2dae              # double 0.47040300000000002
	.quad	0x3fe3d987c6327ed8              # double 0.62030399999999997
	.quad	0x3fdd5db3397dd00f              # double 0.45884399999999997
	.quad	0x3fe69424e5929670              # double 0.70558399999999999
	.quad	0x3fcd2fba01eeed89              # double 0.228019
	.quad	0x3fe8457e23f24d90              # double 0.75848300000000002
	.quad	0x3feea5b317efe0ce              # double 0.95772699999999999
	.quad	0x3fd69873ffac1d2a              # double 0.35305500000000001
	.quad	0x3fd6f080303c07ee              # double 0.358429
	.quad	0x3fe15c50ce4ead0c              # double 0.54251899999999997
	.quad	0x3fe7abead4f5903a              # double 0.73973599999999995
	.quad	0x3fe9797891e21533              # double 0.79607799999999995
	.quad	0x3fece10f0e90bc7b              # double 0.90247299999999997
	.quad	0x3fd87bdcf0307f24              # double 0.38256000000000001
	.quad	0x3fd4355cd91eeaa7              # double 0.31575700000000001
	.quad	0x3fe3a8d8665e02eb              # double 0.61436100000000005
	.quad	0x3fedc90a350d2807              # double 0.93079100000000004
	.quad	0x3fd4e2ac322291fb              # double 0.32633499999999999
	.quad	0x3fd4c80841ede11a              # double 0.32470900000000003
	.quad	0x3fd7a5614df8b157              # double 0.36946899999999999
	.quad	0x3fe4d796bfca85cb              # double 0.65131700000000003
	.quad	0x3fedac493426783a              # double 0.92728100000000002
	.quad	0x3fd6fea3df6db941              # double 0.359292
	.quad	0x3fdb43e963dc486b              # double 0.42602000000000001
	.quad	0x3fe551b4fe79ee03              # double 0.66622400000000004
	.quad	0x3fea85d52c16df40              # double 0.82883700000000005
	.quad	0x3fce4db163baba7c              # double 0.23674600000000001
	.quad	0x3fe0c8adeebb341e              # double 0.52449699999999999
	.quad	0x3fe2a3e186983516              # double 0.58250500000000005
	.quad	0x3fd2d2cbea4ebdd3              # double 0.29411599999999999
	.quad	0x3fd9ba908a265f0f              # double 0.40201199999999998
	.quad	0x3fe77b3fa6defc7a              # double 0.73379499999999998
	.quad	0x3fe0356323bbc6eb              # double 0.506517
	.quad	0x3fc6329802c0a4a0              # double 0.17341899999999999
	.quad	0x3fa6abffcdab191e              # double 0.044281000000000001
	.quad	0x3fee373d188f42ff              # double 0.94424300000000005
	.quad	0x3fa60ef99806f263              # double 0.043083000000000003
	.quad	0x3fec755582129457              # double 0.88932299999999997
	.quad	0x3fe9dc69f8c21e1d              # double 0.80815599999999999
	.quad	0x3fe977d955714b9d              # double 0.79588000000000003
	.quad	0x3fafa56de33269e0              # double 0.061809000000000003
	.quad	0x3fe36b6177ea1c69              # double 0.60685800000000001
	.quad	0x3fdedfd2630ec311              # double 0.48241099999999998
	.quad	0x3f913122b7baecd0              # double 0.016788999999999998
	.quad	0x3fe1edf82b1f687b              # double 0.56029899999999999
	.quad	0x3fb407570c564f98              # double 0.078237000000000001
	.quad	0x3fe7f8cc9a77e5eb              # double 0.74912100000000004
	.quad	0x3fc62328f9f44d44              # double 0.17294799999999999
	.quad	0x3feea3486f049a99              # double 0.95743199999999995
	.quad	0x3fe677ff151e7536              # double 0.70214799999999999
	.quad	0x3fd36cc5fbf83383              # double 0.30351400000000001
	.quad	0x3fbe3ae2541d8e86              # double 0.118086
	.quad	0x3fdac84f8f8a4c1f              # double 0.41847600000000001
	.quad	0x3fdfdf8b1572580c              # double 0.49801899999999999
	.quad	0x3fbc0f66a5508701              # double 0.10961
	.quad	0x3fdd319c5a3e39f7              # double 0.45615299999999998
	.quad	0x3fd6ed527e521577              # double 0.35823500000000003
	.quad	0x3f99e3c968943e10              # double 0.025283
	.quad	0x3fe1a480e8c8abd6              # double 0.55133100000000002
	.quad	0x3feb5ebfa8f7db6e              # double 0.85531599999999997
	.quad	0x3fd801a36e2eb1c4              # double 0.37509999999999999
	.quad	0x3fe5f02e6644d877              # double 0.68556899999999998
	.quad	0x3fe59a027525460b              # double 0.67505000000000004
	.quad	0x3fadbe1a8262456f              # double 0.058090999999999997
	.quad	0x3fcb82ecaeea63b7              # double 0.21493300000000001
	.quad	0x3fe397f62b6ae7d5              # double 0.61229999999999996
	.quad	0x3fdd132b55ef1fde              # double 0.454295
	.quad	0x3fbda32b12d3415b              # double 0.115771
	.quad	0x3fe3a41c3efae792              # double 0.61378299999999997
	.quad	0x3fe09e0e736049ed              # double 0.51929400000000003
	.quad	0x3fd40791c4b90215              # double 0.31296200000000002
	.quad	0x3fee0c8cd63cb817              # double 0.93903199999999998
	.quad	0x3fd1caafbc1acde2              # double 0.27799600000000002
	.quad	0x3fa00bcbe61cffeb              # double 0.03134
	.quad	0x3fd5441fea8112ba              # double 0.332283
	.quad	0x3fd86c15d2d01c0d              # double 0.38159700000000002
	.quad	0x3fca83fd50225743              # double 0.207153
	.quad	0x3fdc12cadddf43c8              # double 0.43864700000000001
	.quad	0x3fea5330941c8217              # double 0.82265500000000003
	.quad	0x3fc068db8bac710d              # double 0.12820000000000001
	.quad	0x3fe3bc03bc4d22c9              # double 0.61670100000000005
	.quad	0x3fc9cafb3b752114              # double 0.20150699999999999
	.quad	0x3fdec6f7a0b5ed8d              # double 0.48089399999999999
	.quad	0x3fc3352a84380885              # double 0.15006
	.quad	0x3fea3443d46b26c0              # double 0.81888000000000005
	.quad	0x3fdfbe8bc169c23b              # double 0.49600499999999997
	.quad	0x3fe227e9531550ca              # double 0.56737199999999999
	.quad	0x3fefca59c065b63d              # double 0.99345099999999997
	.quad	0x3fe4c0fa9c12f09e              # double 0.64855700000000005
	.quad	0x3fd048f10a99b6f6              # double 0.25445200000000001
	.quad	0x3fb459d99029ae4f              # double 0.079495999999999997
	.quad	0x3fecad538ac18f82              # double 0.89615800000000001
	.quad	0x3fdbe02a77a2cecd              # double 0.43555700000000003
	.quad	0x3fe313a4f8726d05              # double 0.59614800000000001
	.quad	0x3fda739f340d4dc6              # double 0.41330699999999998
	.quad	0x3fe1257646ae3a3b              # double 0.53582300000000005
	.quad	0x3fdbb3e5753a3ec0              # double 0.43285499999999999
	.quad	0x3fc430caa326e115              # double 0.15773899999999999
	.quad	0x3feceeae9ee45c36              # double 0.90413600000000005
	.quad	0x3f9d82773e24febd              # double 0.028818
	.quad	0x3fe15da8bd230b9e              # double 0.54268300000000003
	.quad	0x3fe9e2bae03b3e9a              # double 0.80892699999999995
	.quad	0x3fc249ecb31c219f              # double 0.14288100000000001
	.quad	0x3fe6aa0cae642bfa              # double 0.70825800000000005
	.quad	0x3f96366d7a56de33              # double 0.021691999999999999
	.quad	0x3fe0e25c810a569b              # double 0.52763199999999999
	.quad	0x3fd25e5f30e7ff58              # double 0.28700999999999999
	.quad	0x3fe5007bbb62413e              # double 0.65630900000000003
	.quad	0x3fec5e2046c764ae              # double 0.88649
	.quad	0x3fed5c39bcba3012              # double 0.91750799999999999
	.quad	0x3fe7e3c74fb549f9              # double 0.74655499999999997
	.quad	0x3fdd565c2d278078              # double 0.45839600000000003
	.quad	0x3febad6cb5350093              # double 0.86492000000000002
	.quad	0x3fe0d4cfd08d4bad              # double 0.52597799999999995
	.quad	0x3fe6b0ad46f587d7              # double 0.709067
	.quad	0x3fdcb0ab2e1693c0              # double 0.44828299999999999
	.quad	0x3fe99da37ef5a965              # double 0.80049300000000001
	.quad	0x3fefa35935fc3b4f              # double 0.98868999999999995
	.quad	0x3fbf8194c0160525              # double 0.123071
	.quad	0x3fe8f735c182ecaf              # double 0.78017700000000001
	.quad	0x3fb3a40d90e23af3              # double 0.076721999999999999
	.quad	0x3fcd035371971c11              # double 0.226664
	.quad	0x3fe04d39da16616b              # double 0.50942699999999996
	.quad	0x3fe4e3cb81733227              # double 0.65280700000000003
	.quad	0x3fe56ad4f5903a75              # double 0.66929099999999997
	.quad	0x3fdc4e48626f60e1              # double 0.442278
	.quad	0x3fe0d2d666a98245              # double 0.52573700000000001
	.quad	0x3fa999fe43675ddd              # double 0.050002999999999999
	.quad	0x3fc237e6f71a7e31              # double 0.14233100000000001
	.quad	0x3fe3f33226c3b928              # double 0.62343700000000002
	.quad	0x3fdefcc1871e6cd3              # double 0.48417700000000002
	.quad	0x3fe12e03b3e9a6f8              # double 0.53686699999999998
	.quad	0x3fefe3150dae3e6c              # double 0.99646999999999996
	.quad	0x3fdd008a697aeddd              # double 0.45315800000000001
	.quad	0x3feea4f00ef1348b              # double 0.95763399999999999
	.quad	0x3fea6fe2e6ea8544              # double 0.82615799999999994
	.quad	0x3fd239c94f69ca9f              # double 0.284777
	.quad	0x3fe2ce26d4801f75              # double 0.58766499999999999
	.quad	0x3fdc1c219eb6390d              # double 0.43921700000000002
	.quad	0x3fdf4ea4a8c154ca              # double 0.48917500000000003
	.quad	0x3fea90adcd2d44dd              # double 0.83016100000000004
	.quad	0x3fe36bd9018e7579              # double 0.60691499999999998
	.quad	0x3fd3c0d2c386d2ed              # double 0.30864399999999997
	.quad	0x3fe0b1c64ba94bbe              # double 0.52170099999999997
	.quad	0x3fdaad3a604e1e71              # double 0.416823
	.quad	0x3fd43f705857afea              # double 0.31637199999999999
	.quad	0x3fe6bfd71b046845              # double 0.71091800000000005
	.quad	0x3fe073365881a155              # double 0.51406399999999997
	.quad	0x3fe08a2ec28b2a6b              # double 0.51686799999999999
	.quad	0x3fd2df266ba493c9              # double 0.29487000000000002
	.quad	0x3f8e774eebf65dc0              # double 0.014876
	.quad	0x3fe0d40ee06d9381              # double 0.52588599999999996
	.quad	0x3fe13ad9f0a1be2b              # double 0.53843399999999997
	.quad	0x3fa0a1be2b4959e6              # double 0.032483999999999999
	.quad	0x3fd3be7f2c3009b3              # double 0.308502
	.quad	0x3fc1851eb851eb85              # double 0.136875
	.quad	0x3fe8b2a8c9b84556              # double 0.77180899999999997
	.quad	0x3fdc21ff2e48e8a7              # double 0.43957499999999999
	.quad	0x3fe566d373affb05              # double 0.66880200000000001
	.quad	0x3fe9399b2c40d0ab              # double 0.78828200000000004
	.quad	0x3fadb6a1e81cb46c              # double 0.058034000000000002
	.quad	0x3fe192a0ec743201              # double 0.549149
	.quad	0x3fd0970b49e01de2              # double 0.25921899999999998
	.quad	0x3fe22a4b9884c6a4              # double 0.56766300000000003
	.quad	0x3feea686e7e62dc7              # double 0.95782800000000001
	.quad	0x3fc234c1a8ac5c14              # double 0.142235
	.quad	0x3f986833c60029f1              # double 0.023834999999999999
	.quad	0x3feb4f4a558ea7ce              # double 0.85342899999999999
	.quad	0x3fc2a4ebdd334c5e              # double 0.14565800000000001
	.quad	0x3fddadff822bbecb              # double 0.46374500000000002
	.quad	0x3fe9614df8b15726              # double 0.79312800000000006
	.quad	0x3fe50c7192ea52f0              # double 0.65776900000000005
	.quad	0x3feba86d71f36263              # double 0.86431000000000002
	.quad	0x3fe86e2003ab862b              # double 0.76344299999999998
	.quad	0x3fece2c55c96030c              # double 0.90268199999999998
	.quad	0x3feca59c065b63d4              # double 0.89521600000000001
	.quad	0x3fe605d0fa58f712              # double 0.68820999999999999
	.quad	0x3fd0ace24bba12b6              # double 0.26055200000000001
	.quad	0x3fd33ef284167a96              # double 0.30071700000000001
	.quad	0x3fefc6327ed84d34              # double 0.99294400000000004
	.quad	0x3fc6d9be4cd74928              # double 0.17852000000000001
	.quad	0x3fd33b4b2fa93af7              # double 0.30049399999999998
	.quad	0x3fe8ff92f2b66b61              # double 0.78119799999999995
	.quad	0x3fd635a858793dd9              # double 0.34702499999999997
	.quad	0x3fe8652deca2552a              # double 0.762351
	.quad	0x3feec070329802c1              # double 0.96099100000000003
	.quad	0x3fd3f5019f3c70ca              # double 0.31182900000000002
	.quad	0x3feca6d698fe6927              # double 0.895366
	.quad	0x3fddd23d4f15e7c9              # double 0.46595700000000001
	.quad	0x3fdcf255f3519bd4              # double 0.452291
	.quad	0x3fd59d40ee06d938              # double 0.337723
	.quad	0x3fe83a2df9378ee3              # double 0.75710200000000005
	.quad	0x3fec1bf9c62a1b5c              # double 0.87841499999999994
	.quad	0x3f27b95a294141ea              # double 1.8100000000000001E-4
	.quad	0x3fa204af922962d0              # double 0.035192000000000001
	.quad	0x3fde09cc319c5a3e              # double 0.46934799999999999
	.quad	0x3fedb7739f340d4e              # double 0.92864400000000002
	.quad	0x3fd553586ca89fc7              # double 0.33321200000000001
	.quad	0x3fcf88b97785729b              # double 0.24636
	.quad	0x3fc4c0c62e4d1a65              # double 0.162133
	.quad	0x3fe8d82ba5a03819              # double 0.77638799999999997
	.quad	0x3fa84af922962cfe              # double 0.047447000000000003
	.quad	0x3feec7b677f6b1a3              # double 0.96187900000000003
	.quad	0x3fe12c18f81e8a2f              # double 0.53663300000000003
	.quad	0x3fd4404a72ead927              # double 0.31642399999999998
	.quad	0x3fed66fd651b0ccc              # double 0.91882200000000002
	.quad	0x3fef99934efcbd55              # double 0.98749699999999995
	.quad	0x3fd4ef459d99029b              # double 0.32710400000000001
	.quad	0x3fc8637bd05af6c7              # double 0.19053600000000001
	.quad	0x3fc5c25d074213a1              # double 0.16999400000000001
	.quad	0x3fd96dce39b456b4              # double 0.39732699999999999
	.quad	0x3fc9884406c00da2              # double 0.19947100000000001
	.quad	0x3fdc53825e13b18e              # double 0.44259700000000002
	.quad	0x3fcf5970b49e01de              # double 0.244917
	.quad	0x3fdb7b0f6ad70e6f              # double 0.42938599999999999
	.quad	0x3fe4c2efd438d1d9              # double 0.64879600000000004
	.quad	0x3fef00192a737111              # double 0.96876200000000001
	.quad	0x3fc1be5d9e40c847              # double 0.138622
	.quad	0x3fdd681a9b8cb8e1              # double 0.45947900000000003
	.quad	0x3fccea63b688bda9              # double 0.22590299999999999
	.quad	0x3fb918b0d0edc3bd              # double 0.098032999999999995
	.quad	0x3fa0f041461b6d44              # double 0.033083000000000001
	.quad	0x3fe8a52ac753e708              # double 0.77016200000000001
	.quad	0x3fedbb0a2ca9ac36              # double 0.92908199999999996
	.quad	0x3fc3314445aa2e3c              # double 0.14994099999999999
	.quad	0x3fc5d4280ae10492              # double 0.17053699999999999
	.quad	0x3fe0e9595feda661              # double 0.52848499999999998
	.quad	0x3fdcc24c404a72eb              # double 0.44935900000000001
	.quad	0x3fe8188094e5d5b2              # double 0.75299099999999997
	.quad	0x3fc99c17225b749b              # double 0.200076
	.quad	0x3fc4600b02928177              # double 0.15918099999999999
	.quad	0x3fd0db7ae5796bfd              # double 0.26339600000000002
	.quad	0x3fe406c8711d798e              # double 0.62582800000000005
	.quad	0x3feac94f69ca9ef5              # double 0.83707399999999998
	.quad	0x3fe1ef30a4e379b7              # double 0.56044799999999995
	.quad	0x3fe2ca8198f1d3ed              # double 0.58721999999999996
	.quad	0x3fef4bb3c81908e6              # double 0.97799100000000005
	.quad	0x3fe7357a355043e5              # double 0.72527799999999998
	.quad	0x3fe9163779e9d0ea              # double 0.78396200000000005
	.quad	0x3fee44588a04d120              # double 0.94584299999999998
	.quad	0x3fe391eeaa6d2674              # double 0.611564
	.quad	0x3fe8496030c23fab              # double 0.75895699999999999
	.quad	0x3fe854b48d3ae686              # double 0.76034000000000002
	.quad	0x3fee1c5a3e39f773              # double 0.94096100000000005
	.quad	0x3fe3fb1183b60286              # double 0.62439800000000001
	.quad	0x3fc80e27e0ef9980              # double 0.18793199999999999
	.quad	0x3fe4f32378ab0c89              # double 0.65468000000000004
	.quad	0x3fd7f8b588e368f1              # double 0.37455500000000003
	.quad	0x3fd15e2046c764ae              # double 0.27137
	.quad	0x3fedfab10ba62670              # double 0.93685200000000002
	.quad	0x3fdb1b2e59af9ebf              # double 0.42353400000000002
	.quad	0x3fea5438d1d8a548              # double 0.82278099999999998
	.quad	0x3fc02d2fe3f359ff              # double 0.12637899999999999
	.quad	0x3f906ab14ec204f3              # double 0.016032000000000001
	.quad	0x3fdd63dc486ad2dd              # double 0.45922000000000002
	.quad	0x3fe0c13986338b48              # double 0.52358700000000002
	.quad	0x3fbf486f049a9974              # double 0.122199
	.quad	0x3fe4169e3c968944              # double 0.62776100000000001
	.quad	0x3fd4082491afc04d              # double 0.31299700000000003
	.quad	0x3fd59bbadc0980b2              # double 0.33762999999999999
	.quad	0x3fdb53dea465a576              # double 0.42699399999999998
	.quad	0x3fd7211cb039ef0f              # double 0.361396
	.quad	0x3f6fff79c842fa51              # double 0.0039060000000000002
	.quad	0x3fdd1c8216c61523              # double 0.45486500000000002
	.quad	0x3fec68ea39c51dac              # double 0.88780700000000001
	.quad	0x3fef13037d63022e              # double 0.97107100000000002
	.quad	0x3faf8a6dacabc515              # double 0.061602999999999998
	.quad	0x3fee1fd1569f4906              # double 0.941384
	.quad	0x3fdcdba908a265f1              # double 0.450907
	.quad	0x3fe60b45ae5ffa3c              # double 0.68887600000000004
	.quad	0x3fdf3137b07075b4              # double 0.48737900000000001
	.quad	0x3fec0d0cc35ce182              # double 0.87659299999999996
	.quad	0x3fd93d5bab21815a              # double 0.39437
	.quad	0x3feac855da272863              # double 0.836955
	.quad	0x3fe3d9e1f3a57eaa              # double 0.62034699999999998
	.quad	0x3fe0d60a63305101              # double 0.52612800000000004
	.quad	0x3fb631f8a0902de0              # double 0.086699999999999999
	.quad	0x3fe297a89331a08c              # double 0.581013
	.quad	0x3fe566d7a56de332              # double 0.66880399999999995
	.quad	0x3fe2ba08398a6549              # double 0.58520899999999998
	.quad	0x3fe5b2314013ec46              # double 0.67800199999999999
	.quad	0x3fcc57b84db9c737              # double 0.22142700000000001
	.quad	0x3fe60eeae9ee45c3              # double 0.68932099999999996
	.quad	0x3faabb8800eae18b              # double 0.052212000000000001
	.quad	0x3fe2ed7c6fbd273d              # double 0.59148999999999996
	.quad	0x3fe9c62e4d1a6506              # double 0.80544199999999999
	.quad	0x3feddd701d9f4d38              # double 0.93328100000000003
	.quad	0x3fe096c3fc43b2dd              # double 0.51840399999999998
	.quad	0x3fcca7b4e54f7a92              # double 0.22386800000000001
	.quad	0x3fb9e84f09528f19              # double 0.101201
	.quad	0x3fe9c669057d1783              # double 0.80547000000000002
	.quad	0x3fe16173b85e80bf              # double 0.54314600000000002
	.quad	0x3fe4737110e453d2              # double 0.63909199999999999
	.quad	0x3fbcfb762d83c6c9              # double 0.11321199999999999
	.quad	0x3fb152b0a6fc58ac              # double 0.067668000000000006
	.quad	0x3fd0e9d0e991ff71              # double 0.26427099999999998
	.quad	0x3fc608205ff1d81f              # double 0.172123
	.quad	0x3fea9f2dc2b0ea18              # double 0.83193099999999998
	.quad	0x3fe195d4e8fb00bd              # double 0.54954000000000003
	.quad	0x3fe8c2c3c9eecbfb              # double 0.77377499999999999
	.quad	0x3fe747da1ec4e725              # double 0.72752099999999997
	.quad	0x3fe2b9628cbd1245              # double 0.58513000000000004
	.quad	0x3fb0725c3dee7818              # double 0.064244999999999997
	.quad	0x3fee6b00ffda4053              # double 0.95056200000000002
	.quad	0x3fefcb4d056c508b              # double 0.99356699999999997
	.quad	0x3fd18eb0318b9347              # double 0.27433400000000002
	.quad	0x3fcbc23315d701da              # double 0.216864
	.quad	0x3fe6ed527e521577              # double 0.71647000000000005
	.quad	0x3fe8ade8709741d1              # double 0.77122900000000005
	.quad	0x3fe8bbe6601bc98a              # double 0.77293699999999999
	.quad	0x3fe4ff62b6ae7d56              # double 0.65617499999999995
	.quad	0x3feb84d983947497              # double 0.85996700000000004
	.quad	0x3fd01148fd9fd36f              # double 0.25105499999999997
	.quad	0x3fd06cbd987c6328              # double 0.256637
	.quad	0x3fd6a70d1fa33376              # double 0.35394599999999998
	.quad	0x3fe8c8b439581062              # double 0.77449999999999997
	.quad	0x3fe313d74d594f27              # double 0.59617200000000004
	.quad	0x3fc211a11233df2b              # double 0.14116300000000001
	.quad	0x3fea70995aaf78ff              # double 0.82624500000000001
	.quad	0x3fe24896dd26b724              # double 0.57136100000000001
	.quad	0x3fd82778140dd3fe              # double 0.37740899999999999
	.quad	0x3fe919eb6390c910              # double 0.78441399999999994
	.quad	0x3fe91949e8815e39              # double 0.78433699999999995
	.quad	0x3fe197939a7c17a9              # double 0.54975300000000005
	.quad	0x3fc5f822bbecaab9              # double 0.17163500000000001
	.quad	0x3fe1884a515ce9e6              # double 0.54788700000000001
	.quad	0x3fef3af965b20b80              # double 0.97594899999999996
	.quad	0x3fe903254e6e221d              # double 0.78163400000000005
	.quad	0x3fd74628027d88c2              # double 0.36365700000000001
	.quad	0x3fc1be8ff327aa69              # double 0.138628
	.quad	0x3fe3e1c15097c808              # double 0.62130799999999997
	.quad	0x3fda41bfbdf090f7              # double 0.41026299999999999
	.quad	0x3fddba450acc0bdd              # double 0.46449400000000002
	.quad	0x3fc4370cdc8754f3              # double 0.15792999999999999
	.quad	0x3fe719652bd3c361              # double 0.72184999999999999
	.quad	0x3fe1e798958d9b5f              # double 0.55952100000000005
	.quad	0x3f7e0a41a261bf38              # double 0.0073340000000000002
	.quad	0x3fb40379314445aa              # double 0.078177999999999997
	.quad	0x3fe2d8b827fa1a0d              # double 0.58895500000000001
	.quad	0x3fe11fbe76c8b439              # double 0.53512499999999996
	.quad	0x3fe9994c01605250              # double 0.79996299999999998
	.quad	0x3fee3df6db940fed              # double 0.94506400000000002
	.quad	0x3f9f97aaac1094a3              # double 0.030852000000000001
	.quad	0x3fe62e85b9e8c47a              # double 0.69317899999999999
	.quad	0x3fed4197e5647347              # double 0.91425699999999999
	.quad	0x3fe3d98bf7f06706              # double 0.62030600000000002
	.quad	0x3fedd4f5903a7547              # double 0.93224600000000002
	.quad	0x3fe015bbbe878fac              # double 0.50265300000000002
	.quad	0x3fd832d6ece13f4b              # double 0.37810300000000002
	.quad	0x3fa1bb8c32a8c9b8              # double 0.034633999999999998
	.quad	0x3fedf71eafee6fb5              # double 0.93641600000000003
	.quad	0x3fe3dd2ae8e1d649              # double 0.62074799999999997
	.quad	0x3fe9d2ae8e1d6495              # double 0.80696800000000002
	.quad	0x3fe6a8c9b845564b              # double 0.70810399999999996
	.quad	0x3fc426d4801f7510              # double 0.15743499999999999
	.quad	0x3feab71fbc5de9c0              # double 0.83485399999999998
	.quad	0x3fe2561f5be5d9e4              # double 0.57301299999999999
	.quad	0x3fcded5ae1cde5d2              # double 0.23380600000000001
	.quad	0x3fd2fd50225742dd              # double 0.296711
	.quad	0x3fd1ba493c89f40a              # double 0.27699499999999999
	.quad	0x3fe59d3ed527e521              # double 0.67544499999999996
	.quad	0x3fec2e4d1a650614              # double 0.88065199999999999
	.quad	0x3fd61394317acc4f              # double 0.344945
	.quad	0x3fdcf57f737da61e              # double 0.452484
	.quad	0x3fd048b652370479              # double 0.254438
	.quad	0x3fe17ba6698bb4d5              # double 0.54634400000000005
	.quad	0x3fe5ddce7cd03537              # double 0.68332599999999999
	.quad	0x3fd656e264e48627              # double 0.349053
	.quad	0x3fe3c508b32ce896              # double 0.61780199999999996
	.quad	0x3fd4ccc89b0ee49f              # double 0.32499899999999998
	.quad	0x3fdfe086bdf4c2b5              # double 0.49807899999999999
	.quad	0x3fe92d256798958e              # double 0.78676100000000004
	.quad	0x3fe511f0c34c1a8b              # double 0.65844000000000003
	.quad	0x3fdcf9fcb0c026cc              # double 0.45275799999999999
	.quad	0x3fdf2b0a6fc58ab9              # double 0.48700199999999999
	.quad	0x3fe23e61cffeb075              # double 0.57011500000000004
	.quad	0x3fddc36113404ea5              # double 0.46505000000000002
	.quad	0x3fd5383ad9f0a1be              # double 0.33155699999999999
	.quad	0x3fdb9ec7000431be              # double 0.43156600000000001
	.quad	0x3fefc53b0813cab8              # double 0.99282599999999998
	.quad	0x3fd2659d12cadddf              # double 0.28745199999999999
	.quad	0x3feaa29845dc8323              # double 0.83234799999999998
	.quad	0x3feec182ecaeea64              # double 0.96112200000000003
	.quad	0x3fe7bd48cb4aec8d              # double 0.74185599999999996
	.quad	0x3fe7f08461f9f01c              # double 0.74811000000000005
	.quad	0x3fd2f5d78811b1d9              # double 0.29625499999999999
	.quad	0x3fe241aac53b0814              # double 0.57051600000000002
	.quad	0x3fd8e0ce0b912dba              # double 0.38872099999999998
	.quad	0x3fe4d742dcf4623d              # double 0.65127699999999999
	.quad	0x3fd48665e02ea961              # double 0.32070300000000002
	.quad	0x3fe30d79d0a67621              # double 0.59539500000000001
	.quad	0x3fde29b280f12c28              # double 0.47129500000000002
	.quad	0x3fdecc92146a1a50              # double 0.481236
	.quad	0x3fc9baa1511dffc5              # double 0.20100799999999999
	.quad	0x3fd540bfe3b03e21              # double 0.33207700000000001
	.quad	0x3fd3b9a5a89b951c              # double 0.30820599999999998
	.quad	0x3fe416bb98c7e282              # double 0.62777499999999997
	.quad	0x3feaac471b478423              # double 0.83352999999999999
	.quad	0x3feb6234a87e38eb              # double 0.855738
	.quad	0x3fb5a964e8b7e4de              # double 0.084615999999999996
	.quad	0x3fd4293d102bc72e              # double 0.31501699999999999
	.quad	0x3fed34117f84449e              # double 0.91260600000000003
	.quad	0x3fd8a4723aafff37              # double 0.38503700000000002
	.quad	0x3fdb81ecd4aa10e0              # double 0.42980499999999999
	.quad	0x3fdd30489d27c393              # double 0.45607199999999998
	.quad	0x3fd601c4fc1df330              # double 0.343858
	.quad	0x3fd50f98fa376923              # double 0.32907700000000001
	.quad	0x3fd1986b9c304ccf              # double 0.27492800000000001
	.quad	0x3fb77de939eadd59              # double 0.091764999999999999
	.quad	0x3fef37b4a2339c0f              # double 0.97555000000000002
	.quad	0x3fc9ebd9018e7579              # double 0.20251
	.quad	0x3fc8685db76b3bb8              # double 0.19068499999999999
	.quad	0x3fd8b4245f5ad96a              # double 0.38599499999999998
	.quad	0x3fe0f8bbd3804535              # double 0.53036300000000003
	.quad	0x3fd5569b17481b22              # double 0.33341100000000001
	.quad	0x3fe230164840e172              # double 0.56837000000000004
	.quad	0x3fdc30d306a2b170              # double 0.44047999999999998
	.quad	0x3fe3a08398a65493              # double 0.613344
	.quad	0x3fef7b56b8737974              # double 0.98380599999999995
	.quad	0x3fe855f3519bd406              # double 0.76049199999999995
	.quad	0x3fec205dd8f92afa              # double 0.87895100000000004
	.quad	0x3fe80b06c43f5f91              # double 0.75134599999999996
	.quad	0x3fdb53f7ced91687              # double 0.42699999999999999
	.quad	0x3fe3c148344c37e7              # double 0.617344
	.quad	0x3fd7856e696a26e5              # double 0.36751899999999998
	.quad	0x3fe7ae74f2f123c4              # double 0.74004599999999998
	.quad	0x3fedbfe1975f2cb6              # double 0.92967299999999997
	.quad	0x3fca964e8b7e4de4              # double 0.20771200000000001
	.quad	0x3feae11dbca9691a              # double 0.83997999999999995
	.quad	0x3fbf2f33ca31e7da              # double 0.12181400000000001
	.quad	0x3fc00e51d25aab47              # double 0.12543699999999999
	.quad	0x3fa9463cfb3311a5              # double 0.049363999999999998
	.quad	0x3feb2014727dcbde              # double 0.84766600000000003
	.quad	0x3fd56bf8769ec2ce              # double 0.33471499999999998
	.quad	0x3fe5019b0ab2e169              # double 0.65644599999999997
	.quad	0x3fe1f9873ffac1d3              # double 0.56171000000000004
	.quad	0x3fed6c204f2ae07e              # double 0.91944899999999996
	.quad	0x3fdaa832b990afe6              # double 0.416516
	.quad	0x3fef955f78359bc3              # double 0.98698399999999997
	.quad	0x3fd2a47ecfe9b7bf              # double 0.29128999999999999
	.quad	0x3fc1c9ff92f2b66b              # double 0.13897699999999999
	.quad	0x3fe2b30f8c64fdb1              # double 0.58435800000000004
	.quad	0x3f8dc725c3dee782              # double 0.014540000000000001
	.quad	0x3f7ffe6d58c8eef2              # double 0.0078110000000000002
	.quad	0x3fe4d4801f75104d              # double 0.65093999999999996
	.quad	0x3fce7daa4fca42af              # double 0.23821000000000001
	.quad	0x3fbda9da597d49d8              # double 0.115873
	.quad	0x3fedc07aaef2c732              # double 0.92974599999999996
	.quad	0x3fd60f6273929ed4              # double 0.34468900000000002
	.quad	0x3feb653eb399f5e0              # double 0.856109
	.quad	0x3fe55aab47410731              # double 0.66731799999999997
	.quad	0x3fccd905c0336156              # double 0.22537299999999999
	.quad	0x3fe2d530489d27c4              # double 0.58852400000000005
	.quad	0x3fee4a1ad6451b93              # double 0.946546
	.quad	0x3fdc7963992c8c50              # double 0.444909
	.quad	0x3fe2138bcdfefbf4              # double 0.564886
	.quad	0x3feafc829cfdd228              # double 0.84332399999999996
	.quad	0x3fe692f4cf4a558f              # double 0.70543900000000004
	.quad	0x3feb0420f6f08cc5              # double 0.84425399999999995
	.quad	0x3f7b71758e219653              # double 0.0067000000000000002
	.quad	0x3fd0a2df9378ee28              # double 0.25994099999999998
	.quad	0x3fe1c3e74afd5454              # double 0.55516399999999999
	.quad	0x3fe3ad3a604e1e71              # double 0.614896
	.quad	0x3fb6afee6fb4c3c2              # double 0.088622000000000006
	.quad	0x3fcbab649d388a8b              # double 0.216168
	.quad	0x3fe9a71de69ad42c              # double 0.80164999999999997
	.quad	0x3faefb6dca07f66f              # double 0.060512000000000003
	.quad	0x3fe088a47ecfe9b8              # double 0.51668000000000003
	.quad	0x3fefce3150dae3e7              # double 0.99392000000000002
	.quad	0x3fea5017dae81883              # double 0.82227700000000004
	.quad	0x3fc85785f8d2e515              # double 0.19017100000000001
	.quad	0x3fe6f4927913e814              # double 0.71735499999999996
	.quad	0x3f7f7f8ca8198f1d              # double 0.0076899999999999998
	.quad	0x3fe94e5710880d80              # double 0.79081299999999999
	.quad	0x3fefeaf251c193b4              # double 0.99743000000000003
	.quad	0x3fd890ff97247454              # double 0.38385000000000002
	.quad	0x3fed37564302b40f              # double 0.91300499999999996
	.quad	0x3fe2fb634dad31fd              # double 0.59318700000000002
	.quad	0x3fdd5492ff4ba51a              # double 0.458287
	.quad	0x3fdad206c8711d7a              # double 0.41906900000000002
	.quad	0x3fe9909d0635a427              # double 0.79890300000000003
	.quad	0x3fe273a797891e21              # double 0.57661799999999996
	.quad	0x3fe6533d29563a9f              # double 0.69766099999999998
	.quad	0x3fd7ac8605681ecd              # double 0.36990499999999998
	.quad	0x3fc3bc6eb0b7c350              # double 0.15418799999999999
	.quad	0x3fce2fd75e2046c7              # double 0.23583499999999999
	.quad	0x3f865c2d2780778a              # double 0.010918000000000001
	.quad	0x3fee37585be1a826              # double 0.94425599999999998
	.quad	0x3fc96ee73e681a9c              # double 0.19869700000000001
	.quad	0x3fd5d58c8eef1bac              # double 0.34115899999999999
	.quad	0x3f8e2b4959e62563              # double 0.014730999999999999
	.quad	0x3fe3deb313be22e6              # double 0.62093500000000001
	.quad	0x3fd6ec3116228134              # double 0.35816599999999998
	.quad	0x3fee79dd3bafd977              # double 0.952376
	.quad	0x3f9d438d1d8a5482              # double 0.028577999999999999
	.quad	0x3fe208bda9435ac9              # double 0.56356700000000004
	.quad	0x3fc967a95c853c15              # double 0.19847600000000001
	.quad	0x3fde35c182ecaeea              # double 0.47203099999999998
	.quad	0x3fd8c0d2c386d2ed              # double 0.38676899999999997
	.quad	0x3fca3854046412cf              # double 0.204844
	.quad	0x3feb946a1a500d5f              # double 0.86186700000000005
	.quad	0x3fe0ad9cf13cee9e              # double 0.52119300000000002
	.quad	0x3fe11f4d37c1376d              # double 0.53507099999999996
	.quad	0x3fee62e90364388f              # double 0.94957400000000003
	.quad	0x3fcba27ae9ab29e5              # double 0.215896
	.quad	0x3fb0a1059ea57215              # double 0.064957000000000001
	.quad	0x3fdabb01c92ddbdb              # double 0.41766399999999998
	.quad	0x3feb81754b05b7d0              # double 0.85955300000000001
	.quad	0x3fc119d66adb402d              # double 0.133601
	.quad	0x3fd7c3c5bd0e12e8              # double 0.37132399999999999
	.quad	0x3fe408ebcc6c54bd              # double 0.62608900000000001
	.quad	0x3fde8aa00192a737              # double 0.477211
	.quad	0x3fee3ac0c62e4d1a              # double 0.94467199999999996
	.quad	0x3fe7ae40852b4d8c              # double 0.74002100000000004
	.quad	0x3fe58d1fa333764f              # double 0.67347699999999999
	.quad	0x3fd14b167ec7863c              # double 0.270208
	.quad	0x3fedc8259e1f3a58              # double 0.93068200000000001
	.quad	0x3feed68c692f6e83              # double 0.96369000000000004
	.quad	0x3fdc5b63d3e4ef03              # double 0.44307800000000003
	.quad	0x3fea90752da98677              # double 0.83013400000000004
	.quad	0x3fd3c968943e1006              # double 0.309168
	.quad	0x3fec8296b3354c12              # double 0.89094099999999998
	.quad	0x3fde4dca8e2e2b8c              # double 0.47349799999999997
	.quad	0x3fe6e4020817fc76              # double 0.715333
	.quad	0x3fd6b484d76ab580              # double 0.35476799999999997
	.quad	0x3fc7dfdac68a936c              # double 0.18651899999999999
	.quad	0x3fdadaa0cae642c0              # double 0.41959400000000002
	.quad	0x3fed272a7bd48cb5              # double 0.91103100000000004
	.quad	0x3fe44105186db50f              # double 0.63293699999999997
	.quad	0x3fd7495e17e34b94              # double 0.36385299999999998
	.quad	0x3fae37de939eadd6              # double 0.059020000000000003
	.quad	0x3feeb3c1ce6c093e              # double 0.95944300000000005
	.quad	0x3fdacb1cc9646280              # double 0.41864699999999999
	.quad	0x3fd8b5781c714fce              # double 0.38607599999999997
	.quad	0x3feedfb506dd69d3              # double 0.96480799999999999
	.quad	0x3fd0080f98fa3769              # double 0.25049199999999999
	.quad	0x3fed0feef5ec80c7              # double 0.90819499999999997
	.quad	0x3fd6df9bdc69f8c2              # double 0.35739799999999999
	.quad	0x3fca3f141205bc02              # double 0.20505000000000001
	.quad	0x3fe45bc23315d702              # double 0.63620100000000002
	.quad	0x3fd4a8b4bf8fcd68              # double 0.322797
	.quad	0x3fd45ee99a62ed35              # double 0.31829299999999999
	.quad	0x3fc34d50ebaade65              # double 0.15079699999999999
	.quad	0x3fb36544fe36d224              # double 0.075763999999999998
	.quad	0x3fec92c061847f56              # double 0.89291399999999999
	.quad	0x3f95d2d01c0ca601              # double 0.021312000000000001
	.quad	0x3fc51f4f50a02b84              # double 0.165018
	.quad	0x3fefe8a0d349be90              # double 0.99714700000000001
	.quad	0x3fae2f7b17ce52df              # double 0.058956000000000001
	.quad	0x3fc7ed84d338f798              # double 0.18693599999999999
	.quad	0x3febc7d805e5f30e              # double 0.86814499999999994
	.quad	0x3fe02fc69728a611              # double 0.50583199999999995
	.quad	0x3fd0c6fbd273d5bb              # double 0.26214500000000002
	.quad	0x3fde6a9c560c7c0f              # double 0.47525699999999999
	.quad	0x3fe20614163779ea              # double 0.56324200000000002
	.quad	0x3fe66262cba732df              # double 0.69950999999999997
	.quad	0x3fa2d080b673c4f4              # double 0.036747000000000002
	.quad	0x3fa3bb83cf2cf95d              # double 0.038539999999999998
	.quad	0x3fdab990afe60c39              # double 0.417576
	.quad	0x3fe9bcb3e5753a3f              # double 0.80428500000000003
	.quad	0x3fea854046412cf1              # double 0.828766
	.quad	0x3fd355b89939218a              # double 0.30210700000000001
	.quad	0x3fbfe6e653868fd2              # double 0.12461700000000001
	.quad	0x3fe40e7ff583a53c              # double 0.62677000000000005
	.quad	0x3fed62478854cdb8              # double 0.91824700000000004
	.quad	0x3fc83443d46b26c0              # double 0.18909500000000001
	.quad	0x3fecb519bd4067cf              # double 0.89710699999999999
	.quad	0x3fe806b9c304ccee              # double 0.75082099999999996
	.quad	0x3fdf63baba7b9171              # double 0.49046200000000001
	.quad	0x3fcfaa3f034b0e1b              # double 0.24738299999999999
	.quad	0x3fd50f94c87980f5              # double 0.32907599999999998
	.quad	0x3fe723ad18d25edd              # double 0.723105
	.quad	0x3fd9b50f40e5a35d              # double 0.40167599999999998
	.quad	0x3fc3b5fa22706d50              # double 0.15399099999999999
	.quad	0x3fdff46ed245b292              # double 0.49929400000000002
	.quad	0x3fe269680e065300              # double 0.57536699999999996
	.quad	0x3fda6aec0724b76f              # double 0.41277599999999998
	.quad	0x3fe4c679cc74b839              # double 0.64922800000000003
	.quad	0x3fdfd68837718655              # double 0.49746899999999999
	.quad	0x3fec9e53a81dc0db              # double 0.89432699999999998
	.quad	0x3fe03d4ae429e0a4              # double 0.50748199999999999
	.quad	0x3fd54ccab3edd8b6              # double 0.332812
	.quad	0x3fed91a975afaf86              # double 0.92403100000000005
	.quad	0x3f24f8b588e368f1              # double 1.6000000000000001E-4
	.quad	0x3fd98283d35eb745              # double 0.39859099999999997
	.quad	0x3f8b98c7e28240b8              # double 0.013475000000000001
	.quad	0x3fe20e6f2e8c0486              # double 0.56426200000000004
	.quad	0x3fddcaea747d805e              # double 0.46550999999999998
	.quad	0x3fe59dc93ea2d2fe              # double 0.67551099999999997
	.quad	0x3fe7b4fc610f0e91              # double 0.74084300000000003
	.quad	0x3fe431a2a4db163c              # double 0.63105900000000004
	.quad	0x3fd0bf7f06705c89              # double 0.26168799999999998
	.quad	0x3fd9efdc9c4da900              # double 0.40526499999999999
	.quad	0x3fe527179bfdf7e8              # double 0.661022
	.quad	0x3f6bd61f5be5d9e4              # double 0.003398
	.quad	0x3fb12d3415b1422d              # double 0.067096000000000003
	.quad	0x3fef814b599aa609              # double 0.98453299999999999
	.quad	0x3fe482afdda8bd23              # double 0.64095299999999999
	.quad	0x3fe2345069a4df48              # double 0.568886
	.quad	0x3feb0f51ac9afe1e              # double 0.84562000000000004
	.quad	0x3fe8d004fb1183b6              # double 0.775393
	.quad	0x3fd3c8ffb8b26395              # double 0.309143
	.quad	0x3fe35ea67e846a5d              # double 0.60530399999999995
	.quad	0x3fc7d72bcb5fe543              # double 0.186254
	.quad	0x3fe3b1e7d9988d2a              # double 0.61546699999999999
	.quad	0x3fd3e8f29d40ee07              # double 0.31109300000000001
	.quad	0x3fed983947496aad              # double 0.92483199999999999
	.quad	0x3fe50e8ea39c51db              # double 0.65802700000000003
	.quad	0x3fee9769a91105e2              # double 0.95598300000000003
	.quad	0x3fe02773e24febd1              # double 0.50481600000000004
	.quad	0x3fd52934acaff6d3              # double 0.33063999999999999
	.quad	0x3fe806013660e51d              # double 0.75073299999999998
	.quad	0x3fe816dd26b723ee              # double 0.75279099999999999
	.quad	0x3fef0c5004fb1184              # double 0.97025300000000003
	.quad	0x3fdc68448cf7caa7              # double 0.44386399999999998
	.quad	0x3fab8800eae18aca              # double 0.053772
	.quad	0x3fd9c79702e6644e              # double 0.40280700000000003
	.quad	0x3fdf27674d163348              # double 0.48677999999999999
	.quad	0x3fe3517a46173b86              # double 0.60369600000000001
	.quad	0x3fc8c1ca3a4b5569              # double 0.193414
	.quad	0x3fe6e1650a45d420              # double 0.71501400000000004
	.quad	0x3fc658d5842b734b              # double 0.17458599999999999
	.quad	0x3fde4df8b1572581              # double 0.47350900000000001
	.quad	0x3fe8316c1e364bec              # double 0.75603299999999995
	.quad	0x3fe11eb4202d9cf1              # double 0.53499799999999997
	.quad	0x3fd5f50e34762952              # double 0.343082
	.quad	0x3fb21fafc8b0079a              # double 0.070795999999999998
	.quad	0x3fe1a55b035bd513              # double 0.55143500000000001
	.quad	0x3feb40ad03d9a954              # double 0.85164499999999998
	.quad	0x3fdd9b3d07c84b5e              # double 0.46260000000000001
	.quad	0x3fa1d6494d50ebab              # double 0.034838000000000001
	.quad	0x3fee917b5286b591              # double 0.95525899999999997
	.quad	0x3fe0235935fc3b4f              # double 0.50431499999999996
	.quad	0x3fe1e2c343b70ef5              # double 0.55893099999999996
	.quad	0x3fe397df19d66adb              # double 0.61228899999999997
	.quad	0x3fe478e1932d6ece              # double 0.63975599999999999
	.quad	0x3fc1e8ff327aa68f              # double 0.13992299999999999
	.quad	0x3fe88bd017dae819              # double 0.76706700000000005
	.quad	0x3fe78c154c985f07              # double 0.73585
	.quad	0x3fd950e347629521              # double 0.39556200000000002
	.quad	0x3fb0e4da09cc319c              # double 0.065991999999999995
	.quad	0x3fef51b2e59af9ec              # double 0.978723
	.quad	0x3fe1e32c1f42bb66              # double 0.55898099999999995
	.quad	0x3feae6106ab14ec2              # double 0.840584
	.quad	0x3fe095c422036007              # double 0.51828200000000002
	.quad	0x3fca65d7cb2d905c              # double 0.206233
	.quad	0x3fea0ff10ecb74de              # double 0.814446
	.quad	0x3f9af7d30ad46f58              # double 0.026335999999999998
	.quad	0x3fddbf6e3f78bbd4              # double 0.46480900000000003
	.quad	0x3fdf650e779207d5              # double 0.49054300000000001
	.quad	0x3fc7471715c63ae2              # double 0.18185699999999999
	.quad	0x3fe53bb1f255f352              # double 0.66353700000000004
	.quad	0x3fcd4be835dedf1e              # double 0.228879
	.quad	0x3fbd249e44fa0514              # double 0.11384
	.quad	0x3fc07d6733ebbfd7              # double 0.128827
	.quad	0x3fd168e3ef284168              # double 0.27202700000000002
	.quad	0x3fd8306a2b1704ff              # double 0.37795499999999999
	.quad	0x3fe6fa82e87d2c7c              # double 0.71808000000000005
	.quad	0x3fd1b1d0c8041030              # double 0.276478
	.quad	0x3fe67f5c6c11a112              # double 0.70304699999999998
	.quad	0x3fd392d1287c200c              # double 0.305836
	.quad	0x3feb9d53cddd6e05              # double 0.86295500000000003
	.quad	0x3fe37401c4fc1df3              # double 0.60791099999999998
	.quad	0x3fc85bb7b6bb1290              # double 0.190299
	.quad	0x3fef3d2d87f88766              # double 0.97621800000000003
	.quad	0x3fe414ec204f2ae0              # double 0.62755399999999995
	.quad	0x3fe6c178705425f2              # double 0.711117
	.quad	0x3fd2bb9496249a13              # double 0.29269899999999999
	.quad	0x3fe51192641b328b              # double 0.65839499999999995
	.quad	0x3fd76e0d23d4f15e              # double 0.36609199999999997
	.quad	0x3fa97b7414a4d2b3              # double 0.049770000000000002
	.quad	0x3fced4562e09fe87              # double 0.24085500000000001
	.quad	0x3fe5dd9c27e95315              # double 0.68330199999999996
	.quad	0x3fa154866a11ec92              # double 0.033848000000000003
	.quad	0x3fe882cf52b90a78              # double 0.76596799999999998
	.quad	0x3fee53ef6b5d462c              # double 0.94774599999999997
	.quad	0x3fe37644955b4678              # double 0.60818700000000003
	.quad	0x3fb564302b40f66a              # double 0.083559999999999995
	.quad	0x3fb55e9e1b089a02              # double 0.083474999999999993
	.quad	0x3fe6c1c8216c6152              # double 0.71115499999999998
	.quad	0x3fefcc25072085b2              # double 0.99367000000000005
	.quad	0x3fe29c1f85d744f6              # double 0.58155800000000002
	.quad	0x3fed5058dde7a744              # double 0.91605800000000003
	.quad	0x3fe44b46bacf7447              # double 0.634189
	.quad	0x3fd1a897635e742a              # double 0.27591500000000002
	.quad	0x3fde76bc1eff9f88              # double 0.475997
	.quad	0x3fc05803cd141a69              # double 0.12768599999999999
	.quad	0x3faf1b25f633ce64              # double 0.060754000000000002
	.quad	0x3fdafcac8e68e3ef              # double 0.42167199999999999
	.quad	0x3fe8a5c5f7c6759b              # double 0.77023600000000003
	.quad	0x3fcefadf2ecf2064              # double 0.242031
	.quad	0x3febc100e6afcce2              # double 0.86731000000000003
	.quad	0x3fd902d16b97fe8f              # double 0.39079700000000001
	.quad	0x3fb2433508f648c7              # double 0.071337999999999999
	.quad	0x3fd98c8eef1bac2e              # double 0.399204
	.quad	0x3feb1f7b5aea3162              # double 0.84759300000000004
	.quad	0x3fef7ef5a964e8b8              # double 0.98424800000000001
	.quad	0x3febca6eb91b3f21              # double 0.86846100000000004
	.quad	0x3fd5c4eb56fb8f58              # double 0.340144
	.quad	0x3fdb759ee88df373              # double 0.42905399999999999
	.quad	0x3fe61756c93a7115              # double 0.69034899999999999
	.quad	0x3fe30f55de58e64b              # double 0.59562199999999998
	.quad	0x3fe50dbf0563ed0f              # double 0.65792799999999996
	.quad	0x3fe0dd3dc8b86b16              # double 0.527007
	.quad	0x3fec6154434e336a              # double 0.88688100000000003
	.quad	0x3fb26937d1fe64f5              # double 0.071917999999999996
	.quad	0x3feed594f26aec07              # double 0.96357199999999998
	.quad	0x3fe3e45c358afc48              # double 0.62162600000000001
	.quad	0x3fdb4c37e6f71a7e              # double 0.42652699999999999
	.quad	0x3feb8d9d7774aba4              # double 0.86103700000000005
	.quad	0x3fb907e9d94d0dd0              # double 0.097777000000000002
	.quad	0x3fb3eeb2d0a24463              # double 0.077861
	.quad	0x3fcac3d25247cb71              # double 0.20910100000000001
	.quad	0x3fabf162ae4b0186              # double 0.054576
	.quad	0x3fe8281ba7fc32ec              # double 0.75489600000000001
	.quad	0x3fe4817b95a29414              # double 0.64080599999999999
	.quad	0x3fe5507a6bd6e8b0              # double 0.66607400000000005
	.quad	0x3fe897e56473471f              # double 0.76854199999999995
	.quad	0x3faa35b4edb2f662              # double 0.051191
	.quad	0x3feeca38327674d1              # double 0.96218499999999995
	.quad	0x3fe4439799e518f4              # double 0.63325100000000001
	.quad	0x3fc0a2a0a958537e              # double 0.129963
	.quad	0x3fe7ef71a7e30878              # double 0.74797899999999995
	.quad	0x3fe19a2e7f6f4be8              # double 0.55007099999999998
	.quad	0x3fd5ab2e1693c03c              # double 0.33857300000000001
	.quad	0x3fee268b19a415f4              # double 0.94220499999999995
	.quad	0x3fe4b81b64e05469              # double 0.64747399999999999
	.quad	0x3fde2ba9d1f60179              # double 0.47141499999999997
	.quad	0x3feea81ba7fc32ec              # double 0.95802100000000001
	.quad	0x3feaa8fc0d2c386d              # double 0.83312799999999998
	.quad	0x3fedda250f840182              # double 0.93287900000000001
	.quad	0x3fc06fd651b0ccbc              # double 0.128413
	.quad	0x3fc35f3d7d3910c3              # double 0.15134400000000001
	.quad	0x3fe9f70de8f6ceff              # double 0.81140800000000002
	.quad	0x3fd5baa1511dffc5              # double 0.33951599999999998
	.quad	0x3fe9a53fc0096feb              # double 0.80142199999999997
	.quad	0x3fd0f666234a87e4              # double 0.26503900000000002
	.quad	0x3fe096f0068db8bb              # double 0.51842500000000002
	.quad	0x3fe7a7c17a89331a              # double 0.739228
	.quad	0x3fe8625a682b6284              # double 0.76200599999999996
	.quad	0x3fcf55cd91eeaa6d              # double 0.244806
	.quad	0x3fe751b2e59af9ec              # double 0.72872300000000001
	.quad	0x3fe20c996b7670a0              # double 0.56403800000000004
	.quad	0x3fe40ecd8dbcec85              # double 0.626807
	.quad	0x3fe82dbe7f2c300a              # double 0.75558400000000003
	.quad	0x3fe1c3b927d45a60              # double 0.55514200000000002
	.quad	0x3f7731098d477bc0              # double 0.0056620000000000004
	.quad	0x3fe73a6266fd651b              # double 0.72587699999999999
	.quad	0x3fe7a23bff8a8f3b              # double 0.73855400000000004
	.quad	0x3fa4aba387592535              # double 0.040371999999999998
	.quad	0x3fd1c9afe1da7b0b              # double 0.27793499999999999
	.quad	0x3fea1a11233df2aa              # double 0.81568200000000002
	.quad	0x3fe8f166e008e9b4              # double 0.77946800000000004
	.quad	0x3fe045bf26f1dc51              # double 0.50851400000000002
	.quad	0x3fde358f2e05ccc9              # double 0.47201900000000002
	.quad	0x3fe623ca7503b81b              # double 0.69186899999999996
	.quad	0x3fe3fbe121ee6751              # double 0.62449699999999997
	.quad	0x3fed64c2f837b4a2              # double 0.91854999999999998
	.quad	0x3fe95532617c1bda              # double 0.79164999999999996
	.quad	0x3fd404102ff8ec10              # double 0.31274800000000003
	.quad	0x3fe863dc486ad2dd              # double 0.76219000000000003
	.quad	0x3fe84d8ba40d90e2              # double 0.75946599999999997
	.quad	0x3fdc4ca0c282c6ef              # double 0.44217699999999999
	.quad	0x3feebdaf8df7a4e8              # double 0.96065500000000003
	.quad	0x3fb9554fbdad7519              # double 0.098958000000000004
	.quad	0x3fea76c69b5a63fa              # double 0.82699900000000004
	.quad	0x3fe110fb65668c26              # double 0.53332299999999999
	.quad	0x3f9de9c0229a5ebb              # double 0.029211999999999998
	.quad	0x3fa2849cb252ce03              # double 0.036167999999999999
	.quad	0x3feb06ab14ec204f              # double 0.84456399999999998
	.quad	0x3fb8346dc5d63886              # double 0.094549999999999995
	.quad	0x3fd8d7c2ca148ba8              # double 0.38816899999999999
	.quad	0x3fd64866a11ec919              # double 0.34816900000000001
	.quad	0x3fe1be4473cd5736              # double 0.55447599999999997
	.quad	0x3fe06add590c0ad0              # double 0.51304499999999997
	.quad	0x3fe09439de481f54              # double 0.51809400000000005
	.quad	0x3fe9e3f141205bc0              # double 0.80907499999999999
	.quad	0x3fe8e94467381d7e              # double 0.77847500000000003
	.quad	0x3fe2edce39b456b4              # double 0.59152899999999997
	.quad	0x3fd2ea3df6db9410              # double 0.295547
	.quad	0x3feb9e9d0e991ff7              # double 0.86311199999999999
	.quad	0x3fec8583621fafc9              # double 0.89129800000000003
	.quad	0x3fe788ebcc6c54bd              # double 0.73546400000000001
	.quad	0x3fee9e8a2ec28b2a              # double 0.95685299999999995
	.quad	0x3feef07182235b4f              # double 0.96685100000000001
	.quad	0x3fef017dae81882b              # double 0.96893200000000001
	.quad	0x3fe4e7d9988d2a20              # double 0.65330200000000005
	.quad	0x3fe882be8bc169c2              # double 0.76595999999999997
	.quad	0x3fe5ac9f2fdb8fde              # double 0.67732199999999998
	.quad	0x3fd5248d7e02645e              # double 0.33035599999999998
	.quad	0x3fe8179bfdf7e804              # double 0.75288200000000005
	.quad	0x3fe9c5baf533f423              # double 0.80538699999999996
	.quad	0x3fe9499d0203e63f              # double 0.79023600000000005
	.quad	0x3fb240e9d51b4fe8              # double 0.071303000000000005
	.quad	0x3fe09c9f72f76e61              # double 0.519119
	.quad	0x3fb092bc2fc69729              # double 0.064739000000000005
	.quad	0x3fecf8a6dacabc51              # double 0.90535299999999996
	.quad	0x3fe5b2c83ec892ab              # double 0.67807399999999995
	.quad	0x3feb3dab5c39bcba              # double 0.85127799999999998
	.quad	0x3feb0387df5cf249              # double 0.84418099999999996
	.quad	0x3fefd31db445ed4a              # double 0.99452099999999999
	.quad	0x3fe3d38cda6e75ff              # double 0.61957399999999996
	.quad	0x3fd24a44c7b02d5a              # double 0.28578300000000001
	.quad	0x3fe76a033e78e193              # double 0.73169099999999998
	.quad	0x3fed68101f31f46f              # double 0.91895300000000002
	.quad	0x3fdeaf78feef5ec8              # double 0.47946
	.quad	0x3fe30dd616f86a0a              # double 0.59543900000000005
	.quad	0x3fd0396d0917d6b6              # double 0.25350499999999998
	.quad	0x3fecf5f4e4430b18              # double 0.90502400000000005
	.quad	0x3fed10b1feeb2d0a              # double 0.90828799999999998
	.quad	0x3fd6e12620253975              # double 0.35749199999999998
	.quad	0x3fe43f141205bc02              # double 0.63270000000000004
	.quad	0x3fdf9cf13cee9dd8              # double 0.493954
	.quad	0x3fecb28d8665e02f              # double 0.89679600000000004
	.quad	0x3fec7190d173fb7a              # double 0.88886299999999996
	.quad	0x3fe36f06b37867f1              # double 0.60730300000000004
	.quad	0x3fd7b22d0e560419              # double 0.37025000000000002
	.quad	0x3fec75104d551d69              # double 0.88929000000000002
	.quad	0x3febe2f166e008ea              # double 0.87145300000000003
	.quad	0x3fe4cd2d44dca8e3              # double 0.65004600000000001
	.quad	0x3fd018b934699418              # double 0.25150899999999998
	.quad	0x3fe85c1a47a9e2bd              # double 0.761243
	.quad	0x3fbfa6ce358298cc              # double 0.123639
	.quad	0x3fc706573215fcc2              # double 0.17988100000000001
	.quad	0x3fea17efe0ce0b91              # double 0.81542199999999998
	.quad	0x3fec03b1d0c80410              # double 0.87545099999999998
	.quad	0x3fd2de939eadd591              # double 0.29483500000000001
	.quad	0x3fe55f04ddb5525d              # double 0.66784900000000003
	.quad	0x3fe4b0c026cc1ca4              # double 0.64657600000000004
	.quad	0x3fae46cfc829cfdd              # double 0.059133999999999999
	.quad	0x3fda60a63305100a              # double 0.41214899999999999
	.quad	0x3fc4ebe596c82e02              # double 0.16344900000000001
	.quad	0x3fa779c842fa5094              # double 0.045851000000000003
	.quad	0x3fefafb19e731d2e              # double 0.99019699999999999
	.quad	0x3fc52702a3486f05              # double 0.16525300000000001
	.quad	0x3fdfa64c2f837b4a              # double 0.49452499999999999
	.quad	0x3fbcfe047d3d4281              # double 0.113251
	.quad	0x3fe77164c729f59d              # double 0.73259200000000002
	.quad	0x3fef52c16df3f962              # double 0.97885200000000006
	.quad	0x3fe4e559f6ec5b08              # double 0.65299700000000005
	.quad	0x3fde7fc7607c419a              # double 0.476549
	.quad	0x3fe6bec460ed80a1              # double 0.71078699999999995
	.quad	0x3fcd9d4d834091c1              # double 0.23136300000000001
	.quad	0x3fae1719f7f8ca82              # double 0.058770000000000003
	.quad	0x3fc6dddf43c7d5ed              # double 0.178646
	.quad	0x3feb08e9b38d60a6              # double 0.84483799999999998
	.quad	0x3fe58895d0b73d19              # double 0.67292300000000005
	.quad	0x3fe8fef9db22d0e5              # double 0.78112499999999996
	.quad	0x3fc26a11ec918e32              # double 0.14386199999999999
	.quad	0x3fddfb549f94855e              # double 0.46846500000000002
	.quad	0x3fdab8f9b13165d4              # double 0.41754000000000002
	.quad	0x3fe4790b84988095              # double 0.63977600000000001
	.quad	0x3fc9c46d82ba5a04              # double 0.20130700000000001
	.quad	0x3fd03358f2e05ccd              # double 0.25313400000000003
	.quad	0x3fed04a515ce9e5e              # double 0.90681699999999998
	.quad	0x3fe9938de6ddf00b              # double 0.79926200000000003
	.quad	0x3f93acd5b6805a2d              # double 0.019213999999999998
	.quad	0x3fbc8472c0e7bc3c              # double 0.111396
	.quad	0x3fc911d798d8a97a              # double 0.195857
	.quad	0x3fed3f26f1dc50ce              # double 0.91395899999999997
	.quad	0x3fe86fb6dca07f67              # double 0.76363700000000001
	.quad	0x3fd7d7f950b955f8              # double 0.37255700000000003
	.quad	0x3fd4d5454152b0a7              # double 0.325517
	.quad	0x3fc2e807bbb62414              # double 0.147706
	.quad	0x3fe26f86a098915c              # double 0.57611400000000001
	.quad	0x3fc18fffbce4217d              # double 0.137207
	.quad	0x3fe4b7e2c55c9603              # double 0.64744699999999999
	.quad	0x3fe3ee78183f91e6              # double 0.62285999999999997
	.quad	0x3fe997720c8cd63d              # double 0.79973700000000003
	.quad	0x3fcc35935fc3b4f6              # double 0.220385
	.quad	0x3facda2b5a20ddc6              # double 0.056351999999999999
	.quad	0x3fd5d20afa2f05a7              # double 0.340945
	.quad	0x3fea961804d98394              # double 0.83082199999999994
	.quad	0x3fb3cfc3f811f4f5              # double 0.077388999999999999
	.quad	0x3fe9512018a43bb4              # double 0.79115299999999999
	.quad	0x3fc0317acc4ef88c              # double 0.12651000000000001
	.quad	0x3fe182949a5657fb              # double 0.54718999999999995
	.quad	0x3fe6acaff6d33094              # double 0.70857999999999999
	.quad	0x3fea3cfd4bf0995b              # double 0.81994500000000003
	.quad	0x3fe93686a4ca4f44              # double 0.78790599999999999
	.quad	0x3feb6215336deb96              # double 0.85572300000000001
	.quad	0x3fc4c43f5f91600f              # double 0.16223899999999999
	.quad	0x3faab8c75c4a83b2              # double 0.052191000000000001
	.quad	0x3fe11d755bccaf71              # double 0.53484600000000004
	.quad	0x3fe0aa21a719b4dd              # double 0.52076800000000001
	.quad	0x3fb30e2c12ad81ae              # double 0.074435000000000001
	.quad	0x3fd9610adcd2d44e              # double 0.39654800000000001
	.quad	0x3fee51c5c5718eb9              # double 0.94748200000000005
	.quad	0x3fa5bcec84f8f8a5              # double 0.042457000000000002
	.quad	0x3fe1311c6d1e108c              # double 0.53724499999999997
	.quad	0x3fcd8eb0318b9347              # double 0.23091700000000001
	.quad	0x3fd1c2b94d940789              # double 0.27750999999999998
	.quad	0x3fef34549b62c775              # double 0.97513799999999994
	.quad	0x3fda5308bb906467              # double 0.41131800000000002
	.quad	0x3fe88d3cff64cf8d              # double 0.76724099999999995
	.quad	0x3fdffd9ba1b19610              # double 0.49985400000000002
	.quad	0x3f5af7d30ad46f58              # double 0.0016459999999999999
	.quad	0x3fe3c3914f483cb0              # double 0.61762300000000003
	.quad	0x3fdf28d8665e02eb              # double 0.48686800000000002
	.quad	0x3fd03660e51d25ab              # double 0.25331900000000002
	.quad	0x3fc38887229e9079              # double 0.15260399999999999
	.quad	0x3fe34b1897a67a53              # double 0.60291700000000004
	.quad	0x3fe728e4fb97bb73              # double 0.723742
	.quad	0x3fdbc1bda5119ce0              # double 0.43369999999999997
	.quad	0x3fae9e5e2478854d              # double 0.059802000000000001
	.quad	0x3fe90e453d20f2bf              # double 0.78299200000000002
	.quad	0x3fe7463cfb3311a5              # double 0.72732399999999997
	.quad	0x3fd33b4b2fa93af7              # double 0.30049399999999998
	.quad	0x3fe26594af4f0d84              # double 0.57489999999999997
	.quad	0x3fc4c8605681ecd5              # double 0.16236500000000001
	.quad	0x3fad041cc532a498              # double 0.056672
	.quad	0x3fc34d0dcfcc5b8e              # double 0.15078900000000001
	.quad	0x3fd5e8bc169c23b8              # double 0.34233000000000002
	.quad	0x3fbae94680171194              # double 0.10512199999999999
	.quad	0x3fdded288ce703b0              # double 0.46760000000000002
	.quad	0x3fee4abe6a337a81              # double 0.94662400000000002
	.quad	0x3feef5ddd2ae8e1d              # double 0.96751299999999995
	.quad	0x3fedbfb58d1526d9              # double 0.92965200000000003
	.quad	0x3fed55f3519bd406              # double 0.91674199999999995
	.quad	0x3fe6d31550ca1cef              # double 0.71326699999999998
	.quad	0x3fd0933a0407cc7d              # double 0.25898599999999999
	.quad	0x3fe477b5aea3161a              # double 0.63961299999999999
	.quad	0x3fea91b60ae9680e              # double 0.830287
	.quad	0x3fcb38583621fafd              # double 0.21265700000000001
	.quad	0x3fbabe596c82e01a              # double 0.104467
	.quad	0x3fd996af038e29fa              # double 0.39982200000000001
	.quad	0x3fcfb3d8e0008638              # double 0.24767600000000001
	.quad	0x3fea41a8ac5c13fd              # double 0.82051499999999999
	.quad	0x3fce7fb267c6b8b7              # double 0.23827200000000001
	.quad	0x3fe0a8b08dd1e53b              # double 0.52059200000000005
	.quad	0x3fc39a5a89b951c6              # double 0.15314800000000001
	.quad	0x3fd37fd3f5b5fa22              # double 0.30467699999999998
	.quad	0x3fe96e221c8a7a42              # double 0.79469400000000001
	.quad	0x3fd7c1eff9f87f02              # double 0.37121199999999999
	.quad	0x3fcf80b242070b8d              # double 0.246115
	.quad	0x3fb9d50a88effe2a              # double 0.100907
	.quad	0x3fee33c1ce6c093e              # double 0.94381800000000005
	.quad	0x3fca3c18b502abac              # double 0.204959
	.quad	0x3fe56ff7dfa00e28              # double 0.66991800000000001
	.quad	0x3fecf40a2877ee4e              # double 0.90478999999999998
	.quad	0x3fe607c200c0f020              # double 0.68844700000000003
	.quad	0x3fe37f9d6f112fd3              # double 0.60932799999999998
	.quad	0x3fe880d801b43526              # double 0.76572799999999996
	.quad	0x3fe5ab27cbf6e3f8              # double 0.67714300000000005
	.quad	0x3fe3819d2391d580              # double 0.609572
	.quad	0x3fe42048e043a216              # double 0.62894099999999997
	.quad	0x3fc8ac215b9a5a8a              # double 0.19275300000000001
	.quad	0x3fded7e889c1b542              # double 0.48192800000000002
	.quad	0x3f973647baa9b49a              # double 0.022668000000000001
	.quad	0x3fd174a771c970f8              # double 0.27274500000000002
	.quad	0x3fe3cb9cb6848beb              # double 0.61860499999999996
	.quad	0x3fb0ce5f7403dddb              # double 0.065648999999999999
	.quad	0x3fe4d113836a832c              # double 0.65052200000000004
	.quad	0x3feb8f57f737da62              # double 0.86124800000000001
	.quad	0x3fe1dadd9c27e953              # double 0.55796699999999999
	.quad	0x3fdb494d50ebaade              # double 0.42634899999999998
	.quad	0x3fc6134ce3de614a              # double 0.17246400000000001
	.quad	0x3fd7a1016ce789e7              # double 0.36920199999999997
	.quad	0x3fc681669ced0b31              # double 0.17582400000000001
	.quad	0x3fea0327674d1633              # double 0.81288499999999997
	.quad	0x3fe552ce032db1ea              # double 0.66635800000000001
	.quad	0x3fe3b213e3e29308              # double 0.61548800000000004
	.quad	0x3fe3bc77143393ab              # double 0.61675599999999997
	.quad	0x3fe877143393ab43              # double 0.76453599999999999
	.quad	0x3fe6c1094a2b9d3d              # double 0.71106400000000003
	.quad	0x3fc12641b328b6d8              # double 0.13397999999999999
	.quad	0x3fd3bc1acde19fc3              # double 0.30835600000000002
	.quad	0x3feae1e0c5a8155d              # double 0.84007299999999996
	.quad	0x3fd649a9973d9ec7              # double 0.348246
	.quad	0x3fec53c579f23465              # double 0.88522599999999996
	.quad	0x3fd339085f4a1273              # double 0.30035600000000001
	.quad	0x3fdd8ff327aa68f5              # double 0.46191100000000002
	.quad	0x3fe1f7f498c3b0c4              # double 0.56151799999999996
	.quad	0x3fdb0dcb9a9da598              # double 0.42271700000000001
	.quad	0x3fe34b2b777d0f1f              # double 0.60292599999999996
	.quad	0x3feb624bba12b5e5              # double 0.85574899999999998
	.quad	0x3fc27967caea747e              # double 0.14433000000000001
	.quad	0x3fe287b139c94f6a              # double 0.57906400000000002
	.quad	0x3fe308333fc86cec              # double 0.59475100000000003
	.quad	0x3fd3563a9f383f0c              # double 0.30213800000000002
	.quad	0x3fda4128bf3bea92              # double 0.41022700000000001
	.quad	0x3fe53fd2e9468017              # double 0.66404099999999999
	.quad	0x3fef2502eec7c958              # double 0.97326800000000002
	.quad	0x3fe437564302b40f              # double 0.63175499999999996
	.quad	0x3fd87acc4ef88b97              # double 0.38249499999999997
	.quad	0x3fe2fecfe9b7bf1f              # double 0.59360500000000005
	.quad	0x3fec893b7d84901d              # double 0.89175199999999999
	.quad	0x3fe62314013ec461              # double 0.69178200000000001
	.quad	0x3fee75818c5c9a35              # double 0.95184400000000002
	.quad	0x3fee24ce8101f31f              # double 0.94199299999999997
	.quad	0x3fd31dabe27179c0              # double 0.29868600000000001
	.quad	0x3fe3d23f67f4dbe0              # double 0.61941500000000005
	.quad	0x3fde98288051c9f7              # double 0.47803699999999999
	.quad	0x3fd44b2fa93af74d              # double 0.31708900000000001
	.quad	0x3fe62f33ca31e7da              # double 0.69326200000000004
	.quad	0x3fd8bb4d48882f0e              # double 0.386432
	.quad	0x3feeb29e4d5d80e5              # double 0.95930400000000004
	.quad	0x3fc33b5393250b52              # double 0.15024799999999999
	.quad	0x3fe9ec4827b6fe2e              # double 0.81009299999999995
	.quad	0x3f9cab81f969e3c9              # double 0.027997999999999999
	.quad	0x3fd78d9f90539fba              # double 0.36801899999999999
	.quad	0x3fe6f06f69446738              # double 0.71684999999999999
	.quad	0x3fbe2fcefaa4766c              # double 0.11791699999999999
	.quad	0x3fed5f17bd8be729              # double 0.91785799999999995
	.quad	0x3fa8f36694898f60              # double 0.048731999999999998
	.quad	0x3fe8c39799e518f4              # double 0.773876
	.quad	0x3fc6adf71eafee70              # double 0.17718400000000001
	.quad	0x3fea767d34df04de              # double 0.82696400000000003
	.quad	0x3fc6f9a06a6e32e4              # double 0.17949300000000001
	.quad	0x3fef80d5e8d54110              # double 0.98447700000000005
	.quad	0x3fb687b139c94f6a              # double 0.088008000000000002
	.quad	0x3fdac0a06e9ff0cc              # double 0.41800700000000002
	.quad	0x3fc7e5109070fbec              # double 0.18667800000000001
	.quad	0x3fe519e731d2e0e3              # double 0.659412
	.quad	0x3fef53198288051d              # double 0.97889400000000004
	.quad	0x3fec78dd616f86a1              # double 0.88975400000000004
	.quad	0x3fcfeaa2a0a95853              # double 0.24934799999999999
	.quad	0x3fdc258d5842b735              # double 0.43979200000000002
	.quad	0x3facd12018a43bb4              # double 0.056283
	.quad	0x3fe831c432ca57a8              # double 0.75607500000000005
	.quad	0x3fac33508f648c72              # double 0.055079000000000003
	.quad	0x3fc0925785f8d2e5              # double 0.129466
	.quad	0x3fb8caf709b738e7              # double 0.096847000000000003
	.quad	0x3fb484406c00da1b              # double 0.080143000000000006
	.quad	0x3fe33838c111ada7              # double 0.60061299999999995
	.quad	0x3fd7cca70d1fa333              # double 0.37186599999999997
	.quad	0x3fe3748a159817b9              # double 0.60797599999999996
	.quad	0x3fe74964628027d9              # double 0.72770900000000005
	.quad	0x3fe49c560c7c0f45              # double 0.64408399999999999
	.quad	0x3fc31ca7d6733ebc              # double 0.149312
	.quad	0x3fca6362a5e785b6              # double 0.20615800000000001
	.quad	0x3feecbb5e0f7fcfc              # double 0.96236699999999997
	.quad	0x3fed756c93a71151              # double 0.92058399999999996
	.quad	0x3fe57778dd616f87              # double 0.67083400000000004
	.quad	0x3fc84febd09e12a5              # double 0.189939
	.quad	0x3febb5935fc3b4f6              # double 0.86591499999999999
	.quad	0x3fe56cedd4845133              # double 0.669547
	.quad	0x3fe677403dddb121              # double 0.70205700000000004
	.quad	0x3fb71348b220791c              # double 0.090137999999999996
	.quad	0x3fee86fef7c243dd              # double 0.95397900000000002
	.quad	0x3fdbb8c75c4a83b2              # double 0.43315300000000001
	.quad	0x3fc5b3e1437c5693              # double 0.16955200000000001
	.quad	0x3fbb765fd8adab9f              # double 0.107275
	.quad	0x3fec4c0bdcad14a1              # double 0.88428300000000004
	.quad	0x3fe0a0fb224aada3              # double 0.51965099999999997
	.quad	0x3fc8998d045fe111              # double 0.192186
	.quad	0x3fd346f587d6f976              # double 0.30120599999999997
	.quad	0x3fb20d887ebf22c0              # double 0.070518999999999998
	.quad	0x3fe7e9856a37ac3f              # double 0.74725600000000003
	.quad	0x3fe04957cd466f50              # double 0.50895299999999999
	.quad	0x3fb32c1f42bb6673              # double 0.074892
	.quad	0x3f96e47dc37a3db4              # double 0.022356000000000001
	.quad	0x3fe535f1bef49cf5              # double 0.66283499999999995
	.quad	0x3fee1bc33f85510d              # double 0.94088899999999998
	.quad	0x3fcac4cdfaca361a              # double 0.20913100000000001
	.quad	0x3fe92a582dbe7f2c              # double 0.78641899999999997
	.quad	0x3feeb66516db0dd8              # double 0.95976499999999997
	.quad	0x3fcba1986b9c304d              # double 0.21586900000000001
	.quad	0x3fd169552e2fbe34              # double 0.27205400000000002
	.quad	0x3fef45de9c0229a6              # double 0.97727900000000001
	.quad	0x3fca9dc725c3dee8              # double 0.20794000000000001
	.quad	0x3fe92bbecaab8a5d              # double 0.78659000000000001
	.quad	0x3fea6527a20578e6              # double 0.82484800000000003
	.quad	0x3fe0327aa68f4b62              # double 0.506162
	.quad	0x3fb1f926c7eae5bd              # double 0.070208000000000007
	.quad	0x3fb50f94c87980f5              # double 0.082268999999999995
	.quad	0x3fe3b367a0f9096c              # double 0.61565000000000003
	.quad	0x3fed9cc319c5a3e4              # double 0.92538600000000004
	.quad	0x3fe058fd5cb790fb              # double 0.51086299999999996
	.quad	0x3fdf25892684cf07              # double 0.48666599999999999
	.quad	0x3fe8b4b72c5197a2              # double 0.77205999999999997
	.quad	0x3fe7bfdf7e8038a0              # double 0.74217200000000005
	.quad	0x3fe7111f0c34c1a9              # double 0.72084000000000004
	.quad	0x3fd6ee2003ab862b              # double 0.35828399999999999
	.quad	0x3fb2cf850df15a4b              # double 0.073479000000000003
	.quad	0x3fb5dd1a21ea3593              # double 0.085404999999999995
	.quad	0x3fe35db1209edbf9              # double 0.60518700000000003
	.quad	0x3fd34dd2f1a9fbe7              # double 0.30162499999999998
	.quad	0x3fb666ec9e236c16              # double 0.087508000000000002
	.quad	0x3fd8436b8f9b1316              # double 0.37911499999999998
	.quad	0x3fd0c5e2cdc011d3              # double 0.26207799999999998
	.quad	0x3fd2c9ff92f2b66b              # double 0.29357899999999998
	.quad	0x3fea751697f1f9ad              # double 0.826793
	.quad	0x3feabc81908e581d              # double 0.835511
	.quad	0x3fe964b2314013ec              # double 0.79354199999999996
	.quad	0x3feb42dcf4623d0c              # double 0.851912
	.quad	0x3fe48980b242070c              # double 0.64178500000000005
	.quad	0x3fbfd3f5b5fa2270              # double 0.12432799999999999
	.quad	0x3fee698fe69270b0              # double 0.95038599999999995
	.quad	0x3fa986b9c304ccee              # double 0.049855999999999998
	.quad	0x3fe05b9e8c47a17f              # double 0.51118399999999997
	.quad	0x3feb9eb851eb851f              # double 0.86312500000000003
	.quad	0x3fcfa22f6a50d6b2              # double 0.247137
	.quad	0x3fe441f212d77319              # double 0.63305
	.quad	0x3feabe7d1351159c              # double 0.83575299999999996
	.quad	0x3faaa0a958537e2c              # double 0.052006999999999998
	.quad	0x3fec02f72b452828              # double 0.87536199999999997
	.quad	0x3fcc2d2fe3f359ff              # double 0.22012899999999999
	.quad	0x3fed60ef99806f26              # double 0.91808299999999998
	.quad	0x3fe1b3c1ce6c093e              # double 0.55319300000000005
	.quad	0x3f8c1a47a9e2bcf9              # double 0.013722
	.quad	0x3fe95377e1b8ed1c              # double 0.791439
	.quad	0x3fea5e02ea960b70              # double 0.82397600000000004
	.quad	0x3fbd9f6ec5b078d9              # double 0.115714
	.quad	0x3fce68db8bac710d              # double 0.23757500000000001
	.quad	0x3fe826394face67d              # double 0.75466599999999995
	.quad	0x3fd09389b52007dd              # double 0.25900499999999999
	.quad	0x3fc26a550870110a              # double 0.14387
	.quad	0x3fdf8665e02ea961              # double 0.49257800000000002
	.quad	0x3fea81f53825e13b              # double 0.82836399999999999
	.quad	0x3fccead9274e22a3              # double 0.22591700000000001
	.quad	0x3fe73b1d0c804103              # double 0.725966
	.quad	0x3fe4190afe60c38f              # double 0.62805699999999998
	.quad	0x3fe465c2d2780779              # double 0.63742200000000004
	.quad	0x3feab5daad601ffb              # double 0.83469899999999997
	.quad	0x3feb02d59d55e6bc              # double 0.84409599999999995
	.quad	0x3fe1dea897635e74              # double 0.55842999999999998
	.quad	0x3fd31d5c31593e60              # double 0.29866700000000002
	.quad	0x3fd00008637bd05b              # double 0.250002
	.quad	0x3fecd145d851654d              # double 0.90054599999999996
	.quad	0x3feebde82d7b634e              # double 0.96068200000000004
	.quad	0x3fe85ff822bbecab              # double 0.76171500000000003
	.quad	0x3fb35ac8a3726070              # double 0.075604000000000004
	.quad	0x3fce594af4f0d845              # double 0.23710000000000001
	.quad	0x3fe4c8f75536933a              # double 0.649532
	.quad	0x3febe4f97edc7ef1              # double 0.87170099999999995
	.quad	0x3febdae3e6c4c597              # double 0.87046999999999997
	.quad	0x3fb5c8b86b15f890              # double 0.085094000000000002
	.quad	0x3fe112b1b36bd2b7              # double 0.53353200000000001
	.quad	0x3fc830446b69db66              # double 0.188973
	.quad	0x3fd4642396073de2              # double 0.31861200000000001
	.quad	0x3f9a8c586876e1df              # double 0.025926000000000001
	.quad	0x3fe9a77e5eaab042              # double 0.80169599999999996
	.quad	0x3fee0bb4d48882f1              # double 0.93892900000000001
	.quad	0x3fdebcd78c436fc1              # double 0.48027599999999998
	.quad	0x3fee13682730c671              # double 0.93986899999999995
	.quad	0x3f7fddebd9018e75              # double 0.0077799999999999996
	.quad	0x3fdc40c8472c0e7c              # double 0.44145400000000001
	.quad	0x3fe0fa2f05a708ee              # double 0.53054000000000001
	.quad	0x3feac70a808c825a              # double 0.83679700000000001
	.quad	0x3fc2c7e28240b780              # double 0.14672499999999999
	.quad	0x3fdd8897e996312f              # double 0.46146199999999998
	.quad	0x3fc7c30d306a2b17              # double 0.18564
	.quad	0x3fece94898f605ab              # double 0.90347699999999997
	.quad	0x3fe486b37867f0aa              # double 0.64144299999999999
	.quad	0x3f7abb01c92ddbdb              # double 0.0065259999999999997
	.quad	0x3feff6a50d6b228e              # double 0.99885800000000002
	.quad	0x3febdb59578a2a91              # double 0.87052600000000002
	.quad	0x3fc4da5daf07bfe8              # double 0.162914
	.quad	0x3fd71a0cf1800a7c              # double 0.36096499999999998
	.quad	0x3fc59ffd60e94ee4              # double 0.16894500000000001
	.quad	0x3fe3109d0635a427              # double 0.59577800000000003
	.quad	0x3fe725918a009f62              # double 0.72333599999999998
	.quad	0x3fe8c73471f79421              # double 0.77431700000000003
	.quad	0x3fd1c714fce746cc              # double 0.27777600000000002
	.quad	0x3fdfa2877ee4e26d              # double 0.49429499999999998
	.quad	0x3fc14f0520d130e0              # double 0.13522400000000001
	.quad	0x3fd2fc2656abde40              # double 0.29664000000000001
	.quad	0x3fc44a515ce9e5e2              # double 0.15851799999999999
	.quad	0x3fec7f822bbecaac              # double 0.89056500000000005
	.quad	0x3fda2b5e529bae47              # double 0.40889700000000001
	.quad	0x3fe69c3ac929aa1d              # double 0.70657099999999995
	.quad	0x3fc6e5710880d802              # double 0.17887700000000001
	.quad	0x3fb1392189bd8384              # double 0.067278000000000004
	.quad	0x3feb245d41fa7653              # double 0.84818899999999997
	.quad	0x3fe16c3fc43b2dd3              # double 0.54446399999999995
	.quad	0x3fbef4384ba0e842              # double 0.12091399999999999
	.quad	0x3feaf48c2e770bd0              # double 0.84235199999999999
	.quad	0x3fd5111ada76d97b              # double 0.32916899999999999
	.quad	0x3fee8e60807357e6              # double 0.95487999999999995
	.quad	0x3fe406bbdbe3c105              # double 0.62582199999999999
	.quad	0x3fd3234eb9a176de              # double 0.29903000000000002
	.quad	0x3fc16cd6c2efd439              # double 0.13613400000000001
	.quad	0x3fbd28ae74f2f124              # double 0.113902
	.quad	0x3fdb5e071c53f39d              # double 0.42761399999999999
	.quad	0x3fd9034b0e1b4bb6              # double 0.39082600000000001
	.quad	0x3fe7aa369fcf3dc0              # double 0.73952799999999996
	.quad	0x3feb166be7afa722              # double 0.84648699999999999
	.quad	0x3fe663cd9a52263e              # double 0.69968300000000005
	.quad	0x3fcc7bf61aa3f035              # double 0.22253300000000001
	.quad	0x3fdf9635610adcd3              # double 0.49354300000000001
	.quad	0x3fee3a365cb35f3d              # double 0.94460599999999995
	.quad	0x3fe0328522ea0fd4              # double 0.50616700000000003
	.quad	0x3fd8dce7cd035372              # double 0.38848300000000002
	.quad	0x3fdd944ed6fda837              # double 0.462177
	.quad	0x3fe335b0bbf50e34              # double 0.60030399999999995
	.quad	0x3fe8f4cf4a558ea8              # double 0.77988400000000002
	.quad	0x3fe98c3f3e0370ce              # double 0.79837000000000002
	.quad	0x3fc2eb91b3f20a74              # double 0.147814
	.quad	0x3fde1e5c0b999136              # double 0.47060299999999999
	.quad	0x3fe2dfd8adab9f56              # double 0.58982500000000004
	.quad	0x3fa71e0828c36da8              # double 0.045150999999999997
	.quad	0x3fe724c61d8622c4              # double 0.72323899999999997
	.quad	0x3fca323358f2e05d              # double 0.20465700000000001
	.quad	0x3fe1455219a847b2              # double 0.53971199999999997
	.quad	0x3fd14a0a0f4d7add              # double 0.270144
	.quad	0x3fe28520d130df9c              # double 0.57875100000000002
	.quad	0x3fdfc6759ab6d00b              # double 0.49648799999999998
	.quad	0x3fd9fe64f54d1e97              # double 0.40615200000000001
	.quad	0x3fd7989df1172ef1              # double 0.36869000000000002
	.quad	0x3fe149d7ba6698bb              # double 0.54026399999999997
	.quad	0x3fce763a19008206              # double 0.237983
	.quad	0x3fc22f72b4528284              # double 0.142073
	.quad	0x3fd16523704790b8              # double 0.27179799999999998
	.quad	0x3fdb0b28522ea0fd              # double 0.42255599999999999
	.quad	0x3fd3a58b3f63c31e              # double 0.306979
	.quad	0x3fa13879c4113c68              # double 0.033633999999999997
	.quad	0x3fd88a8b08dd1e54              # double 0.38345600000000002
	.quad	0x3fef9620685553ef              # double 0.98707599999999995
	.quad	0x3fc81bf37b8d3f18              # double 0.18835299999999999
	.quad	0x3fedbf1a5ca29846              # double 0.92957800000000002
	.quad	0x3fae07c4199fe436              # double 0.058652999999999997
	.quad	0x3f9b3a68b19a415f              # double 0.026589999999999999
	.quad	0x3fc9e9f2778140dd              # double 0.20245199999999999
	.quad	0x3fea53bd1676640a              # double 0.82272199999999995
	.quad	0x3fa4cbc05d52c16e              # double 0.040617
	.quad	0x3fbaeed8904f6dfc              # double 0.10520699999999999
	.quad	0x3feb1feeb2d0a244              # double 0.84764799999999995
	.quad	0x3fc99085f4a1272d              # double 0.19972300000000001
	.quad	0x3fe59bb6aa4b9885              # double 0.67525800000000002
	.quad	0x3fe349cb252ce033              # double 0.60275800000000002
	.quad	0x3fe25e785b5b7069              # double 0.57403199999999999
	.quad	0x3fece1565c2d2780              # double 0.90250699999999995
	.quad	0x3fd8f4a1272c94b4              # double 0.38993100000000003
	.quad	0x3fc06ab14ec204f3              # double 0.12825600000000001
	.quad	0x3fe4024d4cb9ecf6              # double 0.62528099999999998
	.quad	0x3fd61b7e0ac7da1f              # double 0.34542800000000001
	.quad	0x3fe7929aa1d755bd              # double 0.73664600000000002
	.quad	0x3fe712f901083dbc              # double 0.72106599999999998
	.quad	0x3fceb80ecfa69be1              # double 0.23999200000000001
	.quad	0x3fe48ec0f88333fd              # double 0.64242600000000005
	.quad	0x3fd3c99f1ae2da55              # double 0.30918099999999998
	.quad	0x3fede4b018611fd6              # double 0.93416600000000005
	.quad	0x3fe26d06fef7c244              # double 0.57580900000000002
	.quad	0x3fd18cd20afa2f06              # double 0.27422000000000002
	.quad	0x3fdf049667b5f1bf              # double 0.484655
	.quad	0x3fe9ce4649906cca              # double 0.80642999999999998
	.quad	0x3fd84c76d117b528              # double 0.37966699999999998
	.quad	0x3fe7ec0f88333fc8              # double 0.74756599999999995
	.quad	0x3fa07ce95faa8a83              # double 0.032203000000000002
	.quad	0x3fca2699c7bcc294              # double 0.20430300000000001
	.quad	0x3fe860ae9680e065              # double 0.76180199999999998
	.quad	0x3fd50edc3bd59924              # double 0.32903199999999999
	.quad	0x3fca28b2a6b0d951              # double 0.20436699999999999
	.quad	0x3fb912fd32c625ea              # double 0.097946000000000005
	.quad	0x3fd31e3eaf6837f8              # double 0.29872100000000001
	.quad	0x3fdc839cd8127b2d              # double 0.44553300000000001
	.quad	0x3fd2eee525892685              # double 0.29583100000000001
	.quad	0x3fec8c60cbf2b23a              # double 0.89213600000000004
	.quad	0x3fe087160956c0d7              # double 0.51649
	.quad	0x3fe814ad362e9036              # double 0.75252399999999997
	.quad	0x3fd56f2e8c0485a1              # double 0.33491100000000001
	.quad	0x3fe7609784ec636b              # double 0.730541
	.quad	0x3feee718a86d71f3              # double 0.96570999999999995
	.quad	0x3f6c3ce2089e3433              # double 0.003447
	.quad	0x3fccceb356da0169              # double 0.22505800000000001
	.quad	0x3feb14467381d7dc              # double 0.846225
	.quad	0x3fca503fb3743633              # double 0.20557400000000001
	.quad	0x3fd6e6b3fe9fadb0              # double 0.35783100000000001
	.quad	0x3fe454280ae10492              # double 0.63527299999999998
	.quad	0x3fdb564302b40f67              # double 0.42714000000000002
	.quad	0x3f83636f3b213e3e              # double 0.0094669999999999997
	.quad	0x3fa4ba94bbe4473d              # double 0.040486000000000001
	.quad	0x3fe0ba98eda22f6a              # double 0.52277799999999996
	.quad	0x3fe6bc89f40a2878              # double 0.71051500000000001
	.quad	0x3fb6bc947064ecea              # double 0.088815000000000005
	.quad	0x3fc4a715831f03d1              # double 0.16134899999999999
	.quad	0x3fea0e5c4eb56fb9              # double 0.814253
	.quad	0x3fb586a8fc0d2c38              # double 0.084085999999999994
	.quad	0x3fe0b0164840e172              # double 0.52149500000000004
	.quad	0x3fb97481b21c475e              # double 0.099433999999999994
	.quad	0x3fe778a6dacabc51              # double 0.73347799999999996
	.quad	0x3febeab5807fed20              # double 0.87240099999999998
	.quad	0x3fcf43d03968d75a              # double 0.244257
	.quad	0x3fcff7dfa00e27e1              # double 0.249752
	.quad	0x3fe269ab29e4d5d8              # double 0.57539899999999999
	.quad	0x3fd4b2aae297396d              # double 0.323405
	.quad	0x3fb1972cd7cf5f4e              # double 0.068712999999999996
	.quad	0x3fe7251a005c4652              # double 0.72327900000000001
	.quad	0x3fe30eed02cd39da              # double 0.59557199999999999
	.quad	0x3fce5dfa871a3b15              # double 0.23724300000000001
	.quad	0x3fe1aa23bff8a8f4              # double 0.55201900000000004
	.quad	0x3fe65f00abf76a2f              # double 0.69909699999999997
	.quad	0x3fac851a86940358              # double 0.055703000000000003
	.quad	0x3fd56362a5e785b6              # double 0.33419100000000002
	.quad	0x3fdb34f3fd933e36              # double 0.42510700000000001
	.quad	0x3fda2d234eb9a177              # double 0.40900500000000001
	.quad	0x3fee746455eaee20              # double 0.95170799999999999
	.quad	0x3fe34178705425f2              # double 0.601742
	.quad	0x3fe79118c197e564              # double 0.73646199999999995
	.quad	0x3fc2ef5ec80c73ac              # double 0.14793000000000001
	.quad	0x3fecd1dcd7060bb3              # double 0.90061800000000003
	.quad	0x3fcd4866a11ec919              # double 0.228772
	.quad	0x3fe322e1ac57e23f              # double 0.59800799999999998
	.quad	0x3fe9f724fa8b4bf9              # double 0.811419
	.quad	0x3f977fae3608d089              # double 0.022948
	.quad	0x3fec6cb5350092cd              # double 0.88827
	.quad	0x3fe9b324851a8694              # double 0.80311799999999999
	.quad	0x3fe5c47a17f4128c              # double 0.68023400000000001
	.quad	0x3f99641f644955b4              # double 0.024795999999999999
	.quad	0x3feb923810e88590              # double 0.861599
	.quad	0x3fc2c7a7c9de0503              # double 0.14671799999999999
	.quad	0x3fa47e06961c3697              # double 0.040023999999999997
	.quad	0x3febb2a8c9b84556              # double 0.86555899999999997
	.quad	0x3fcfcd573647baaa              # double 0.24845400000000001
	.quad	0x3fe14d8dbcec84f9              # double 0.540717
	.quad	0x3febf8df7a4e7ab7              # double 0.87412999999999996
	.quad	0x3fe867f6f4be835e              # double 0.76269100000000001
	.quad	0x3fe5da4acf312b1b              # double 0.68289699999999998
	.quad	0x3fd15753a3ec02f3              # double 0.270955
	.quad	0x3fd850d2806af46b              # double 0.37993300000000002
	.quad	0x3fdd185058dde7a7              # double 0.45460899999999999
	.quad	0x3fe6c894c447c30d              # double 0.71198499999999998
	.quad	0x3fe00f776c4827b7              # double 0.501888
	.quad	0x3feb0f57f737da62              # double 0.84562300000000001
	.quad	0x3fee1e57d9dba909              # double 0.94120400000000004
	.quad	0x3fd9c69728a61177              # double 0.40274599999999999
	.quad	0x3fe323e7d135115a              # double 0.59813300000000003
	.quad	0x3fb0af5fd47bedb7              # double 0.065175999999999998
	.quad	0x3fe6c8b0079a2835              # double 0.71199800000000002
	.quad	0x3fe6d54fbdad7519              # double 0.71353900000000003
	.quad	0x3fd1278d0cc35ce2              # double 0.26803900000000003
	.quad	0x3fee2a3f034b0e1b              # double 0.94265699999999997
	.quad	0x3fe142fa5093964a              # double 0.53942599999999996
	.quad	0x3facf9a06a6e32e4              # double 0.056592000000000003
	.quad	0x3fd5c05d52c16df4              # double 0.339866
	.quad	0x3fe71b56323bbc6f              # double 0.72208700000000003
	.quad	0x3fd6897e996312f5              # double 0.35214200000000001
	.quad	0x3fdd9357603925bb              # double 0.46211799999999997
	.quad	0x3f749949e8815e39              # double 0.0050289999999999996
	.quad	0x3fe8216c61522a6f              # double 0.75407999999999997
	.quad	0x3fe2d2a843808851              # double 0.58821500000000004
	.quad	0x3fe007ebf22c01e7              # double 0.50096700000000005
	.quad	0x3fe66cc1ca3a4b55              # double 0.70077599999999995
	.quad	0x3fdb53543aeab799              # double 0.42696099999999998
	.quad	0x3fd56f694467381d              # double 0.33492499999999997
	.quad	0x3fe4306c43f5f916              # double 0.630911
	.quad	0x3fd7f7f8ca8198f2              # double 0.37451000000000001
	.quad	0x3fc2ff7dfa00e27e              # double 0.148422
	.quad	0x3fe08afe60c38f36              # double 0.51696699999999995
	.quad	0x3feb6be7afa72218              # double 0.85692199999999996
	.quad	0x3fe707e38eb0318c              # double 0.71971300000000005
	.quad	0x3fe380c308feac43              # double 0.60946800000000001
	.quad	0x3fe9cc2f837b4a23              # double 0.80617499999999997
	.quad	0x3fe63708aac96cc6              # double 0.694218
	.quad	0x3f99e6eeb702602d              # double 0.025295000000000002
	.quad	0x3fe87cbf6e3f78bc              # double 0.76522800000000001
	.quad	0x3fcbd7342edbb59e              # double 0.217505
	.quad	0x3fcb4024b33daf8e              # double 0.212895
	.quad	0x3feddb291b823c86              # double 0.93300300000000003
	.quad	0x3fe3451b93037d63              # double 0.602186
	.quad	0x3febfccc03793144              # double 0.87460899999999996
	.quad	0x3fe515f676ea4229              # double 0.65893100000000004
	.quad	0x3fe118548a9bcfd5              # double 0.53422000000000003
	.quad	0x3fd6c21187e7c06e              # double 0.35559499999999999
	.quad	0x3fd7fa1a0cf1800a              # double 0.37463999999999997
	.quad	0x3fe16687f455a7d2              # double 0.54376599999999997
	.quad	0x3fed91d14e3bcd36              # double 0.92405000000000004
	.quad	0x3fdbd72367e414e8              # double 0.435006
	.quad	0x3fed521ff2e48e8a              # double 0.91627499999999995
	.quad	0x3feb6833c60029f1              # double 0.85646999999999995
	.quad	0x3fe1f0ae536501e2              # double 0.56062999999999996
	.quad	0x3fd3fa4c61d8622c              # double 0.31215199999999999
	.quad	0x3fdc9aae6c8f7553              # double 0.44694099999999998
	.quad	0x3fc3cdfefbf401c5              # double 0.154724
	.quad	0x3fd85e2cdc011d36              # double 0.38074799999999998
	.quad	0x3fe6150331e3a7db              # double 0.69006500000000004
	.quad	0x3fed1b34a44c7b03              # double 0.90957100000000002
	.quad	0x3fed33f20a73f749              # double 0.91259100000000004
	.quad	0x3fec5fbb517a4617              # double 0.88668599999999997
	.quad	0x3fe1700abf76a2f5              # double 0.54492700000000005
	.quad	0x3fdeafe1da7b0b39              # double 0.47948499999999999
	.quad	0x3fe337bd05af6c6a              # double 0.60055400000000003
	.quad	0x3f940895d0b73d19              # double 0.019564000000000002
	.quad	0x3fd64c09c3ce208a              # double 0.34839100000000001
	.quad	0x3fe408b11409a240              # double 0.62606099999999998
	.quad	0x3fef740e5a35d67c              # double 0.98291700000000004
	.quad	0x3feec23b7952d235              # double 0.96121
	.quad	0x3fdbf7b5aea3161a              # double 0.43699399999999999
	.quad	0x3fd2631f8a0902de              # double 0.2873
	.quad	0x3fc052263d816acf              # double 0.12750700000000001
	.quad	0x3fe73cfb3311a544              # double 0.72619400000000001
	.quad	0x3fcbaa369fcf3dc0              # double 0.21613199999999999
	.quad	0x3fc1eb7457c0b136              # double 0.13999800000000001
	.quad	0x3fd1bbe878fabda1              # double 0.27709400000000001
	.quad	0x3fee5e58e64b2314              # double 0.94901699999999999
	.quad	0x3febb3bb83cf2cf9              # double 0.86568999999999996
	.quad	0x3fe6c61d8622c450              # double 0.71168399999999998
	.quad	0x3fd69f1f14983d79              # double 0.353462
	.quad	0x3fe1e0008637bd06              # double 0.55859400000000003
	.quad	0x3fd5a4b5568e820e              # double 0.33817799999999998
	.quad	0x3fd61212513b5bf7              # double 0.34485300000000002
	.quad	0x3fe853bafd976ff4              # double 0.76022100000000003
	.quad	0x3fe3234a87e38eb0              # double 0.59805799999999998
	.quad	0x3fdd1c92ddbdb5d9              # double 0.45486900000000002
	.quad	0x3f9e90ff97247454              # double 0.029850000000000002
	.quad	0x3fd96f1dc50ce4eb              # double 0.39740700000000001
	.quad	0x3fe00f4d7add15f0              # double 0.50186799999999998
	.quad	0x3fd46dce39b456b4              # double 0.31920199999999999
	.quad	0x3fd711233df2a9d6              # double 0.36042099999999999
	.quad	0x3fd1660a2014727e              # double 0.27185300000000001
	.quad	0x3fee61932d6ece14              # double 0.949411
	.quad	0x3fea7c0f45176146              # double 0.82764400000000005
	.quad	0x3fe16a0ba1f4b1ee              # double 0.54419499999999998
	.quad	0x3fe7713059641f64              # double 0.73256699999999997
	.quad	0x3fca578e5c4eb570              # double 0.20579700000000001
	.quad	0x3fddb46fdeb52c9d              # double 0.464138
	.quad	0x3fd104102ff8ec10              # double 0.26587300000000003
	.quad	0x3fa5b940fecdd0d9              # double 0.042429000000000001
	.quad	0x3fd25fbb517a4617              # double 0.28709299999999999
	.quad	0x3fe7f8ceb356da01              # double 0.74912199999999995
	.quad	0x3fe8e49f51697f20              # double 0.77790800000000004
	.quad	0x3fa89374bc6a7efa              # double 0.048000000000000001
	.quad	0x3fc1f03d145d8516              # double 0.14014399999999999
	.quad	0x3fc15e0f7fcfc3f8              # double 0.135683
	.quad	0x3fee97a24894c448              # double 0.95601000000000002
	.quad	0x3f78b827fa1a0cf2              # double 0.0060350000000000004
	.quad	0x3fd211d3671ac14c              # double 0.28233799999999998
	.quad	0x3fd895182a9930be              # double 0.3841
	.quad	0x3fdc48301a79feca              # double 0.44190600000000002
	.quad	0x3fe75c0980b24207              # double 0.72998499999999999
	.quad	0x3fe00ab2e1693c04              # double 0.50130600000000003
	.quad	0x3fda6e1deacc9214              # double 0.41297099999999998
	.quad	0x3fda91c087442c80              # double 0.41514600000000002
	.quad	0x3fd1b0142f61ed5b              # double 0.27637200000000001
	.quad	0x3fecc3b0c4588a05              # double 0.89888800000000002
	.quad	0x3fe6dcb1465e8922              # double 0.71443999999999996
	.quad	0x3fdaa7c9de050375              # double 0.416491
	.quad	0x3fe1873de1e2de87              # double 0.547759
	.quad	0x3fcd20e1f7d73c92              # double 0.22756599999999999
	.quad	0x3fc682517e77d524              # double 0.17585200000000001
	.quad	0x3fa0b3b320535c9e              # double 0.032620999999999997
	.quad	0x3fd73361565c2d28              # double 0.36251100000000003
	.quad	0x3fe8d5de58e64b23              # double 0.77610699999999999
	.quad	0x3fd82f76e6106ab1              # double 0.37789699999999998
	.quad	0x3fecaa53fc0096ff              # double 0.89579200000000003
	.quad	0x3feb52220bc382a1              # double 0.85377599999999998
	.quad	0x3fed359ff4fd6d7f              # double 0.91279600000000005
	.quad	0x3fd31a5870da5daf              # double 0.298483
	.quad	0x3fe7fac1d29dc726              # double 0.74936000000000003
	.quad	0x3fe9fb634dad31fd              # double 0.81193700000000002
	.quad	0x3fc37bd8be7296f6              # double 0.15221699999999999
	.quad	0x3fb2c9afe1da7b0b              # double 0.073389999999999997
	.quad	0x3fd5ec52a411c2a0              # double 0.34254899999999999
	.quad	0x3fdee4de3b8a19ca              # double 0.48271900000000001
	.quad	0x3fef6fb8f57f737e              # double 0.98238800000000004
	.quad	0x3fc318b0d0edc3bd              # double 0.14919099999999999
	.quad	0x3f94766c6de76428              # double 0.019983000000000001
	.quad	0x3fe2d9ee88df3733              # double 0.58910300000000004
	.quad	0x3fcc2b1f687b139d              # double 0.22006600000000001
	.quad	0x3fea4df47f993d53              # double 0.82201599999999997
	.quad	0x3fe98e5a35d67ba2              # double 0.79862699999999998
	.quad	0x3feae35e74299d88              # double 0.84025499999999997
	.quad	0x3fdc29068986fcdf              # double 0.44000400000000001
	.quad	0x3fb98a009f623077              # double 0.099762000000000003
	.quad	0x3fcd4dcebfec13ba              # double 0.228937
	.quad	0x3fee122fad6cb535              # double 0.93972
	.quad	0x3feddbaf533f4235              # double 0.93306699999999998
	.quad	0x3fee28a3f8982cb2              # double 0.94246099999999999
	.quad	0x3fefad1287c200c1              # double 0.989877
	.quad	0x3fe32cde19fc2a88              # double 0.59922699999999995
	.quad	0x3fed0ee6b8305d96              # double 0.90806900000000002
	.quad	0x3fe705729b280f13              # double 0.71941500000000003
	.quad	0x3fe9a495e17e34b9              # double 0.80134099999999997
	.quad	0x3fe4f14983d79075              # double 0.65445399999999998
	.quad	0x3fd46b50b0f27bb3              # double 0.31905
	.quad	0x3fc9a708ede54b49              # double 0.20041
	.quad	0x3fe970bd017dae82              # double 0.79501200000000005
	.quad	0x3fe2e43675ddd2af              # double 0.59035800000000005
	.quad	0x3fea7c5cdd50a88f              # double 0.827681
	.quad	0x3fe4265492ff4ba5              # double 0.62967899999999999
	.quad	0x3fdf13059641f645              # double 0.48553600000000002
	.quad	0x3fdd9dadfb506dd7              # double 0.46274900000000002
	.quad	0x3fe85a4ce8101f32              # double 0.76102300000000001
	.quad	0x3fed157eed45e918              # double 0.90887399999999996
	.quad	0x3fea5e0f7fcfc3f8              # double 0.82398199999999999
	.quad	0x3fd36030c23fab11              # double 0.30274600000000002
	.quad	0x3fc21e4712e40853              # double 0.14154900000000001
	.quad	0x3fead208e1501190              # double 0.83813899999999997
	.quad	0x3fbbe425aee631f9              # double 0.10895000000000001
	.quad	0x3fc90ea18372e6a7              # double 0.19575899999999999
	.quad	0x3fc6d2806af46aa1              # double 0.17829900000000001
	.quad	0x3fbfa376922d948e              # double 0.123588
	.quad	0x3fe22209aaa3ad19              # double 0.56665500000000002
	.quad	0x3fd6ddf43c7d5ed0              # double 0.35729699999999998
	.quad	0x3fe491e646f15619              # double 0.64280999999999999
	.quad	0x3fea8bcbe61cffeb              # double 0.829565
	.quad	0x3feca88ce703afb8              # double 0.89557500000000001
	.quad	0x3fe585cee17a02fb              # double 0.67258399999999996
	.quad	0x3fd64202d9cf13cf              # double 0.347779
	.quad	0x3fe3c08d8ec95bff              # double 0.617255
	.quad	0x3fe2681cb46bacf7              # double 0.57520899999999997
	.quad	0x3feb56adf71eafee              # double 0.85433099999999995
	.quad	0x3fb61cde5d18090b              # double 0.086377999999999996
	.quad	0x3feecedf61240746              # double 0.96275299999999997
	.quad	0x3fea854cdb7ae579              # double 0.82877199999999995
	.quad	0x3faf214f0520d131              # double 0.060801000000000001
	.quad	0x3fdd5935fc3b4f61              # double 0.45856999999999998
	.quad	0x3fe270329802c0a5              # double 0.57619600000000004
	.quad	0x3fe5a73929ed3954              # double 0.67666300000000001
	.quad	0x3fd694bbe4473cd5              # double 0.35282799999999997
	.quad	0x3fe5cd4cb9ecf638              # double 0.681311
	.quad	0x3fd0d03968d759ef              # double 0.26270900000000003
	.quad	0x3fb542d490e66cb1              # double 0.083051
	.quad	0x3fd5e9af5ba2be06              # double 0.34238800000000003
	.quad	0x3fe29b5a63f9a49c              # double 0.58146399999999998
	.quad	0x3feccc6822ff0889              # double 0.89995199999999997
	.quad	0x3feadcbbc2b94d94              # double 0.83944499999999999
	.quad	0x3fd9db402d16b980              # double 0.40400700000000001
	.quad	0x3febcf312b1b36bd              # double 0.86904199999999998
	.quad	0x3fcf4c22ee41919b              # double 0.24451100000000001
	.quad	0x3fdd50870110a138              # double 0.45804
	.quad	0x3fec60b0af5fd47c              # double 0.886803
	.quad	0x3fe486af46aa087d              # double 0.64144100000000004
	.quad	0x3fe865f9591cd1c8              # double 0.76244800000000001
	.quad	0x3feac51b93037d63              # double 0.836561
	.quad	0x3fef8259e1f3a57f              # double 0.98466200000000003
	.quad	0x3fd54d50ebaade65              # double 0.33284399999999997
	.quad	0x3fe06b5f5f0b2852              # double 0.51310699999999998
	.quad	0x3fb12630ec311623              # double 0.066989000000000007
	.quad	0x3fa9b1b79d909f1f              # double 0.050183999999999999
	.quad	0x3fd8ddc6195464dc              # double 0.38853599999999999
	.quad	0x3fadd31337eb28d8              # double 0.058250999999999997
	.quad	0x3fca5ecc3e3193f7              # double 0.20601800000000001
	.quad	0x3fedf21f6cacd185              # double 0.93580600000000003
	.quad	0x3fe3b30b5aa71583              # double 0.61560599999999999
	.quad	0x3f65ce9e5e247885              # double 0.0026619999999999999
	.quad	0x3fe5ae4f3343fa2b              # double 0.67752800000000002
	.quad	0x3fc1202107b78466              # double 0.133793
	.quad	0x3fd42d7b634dad32              # double 0.315276
	.quad	0x3fc42b3892ee84ad              # double 0.15756899999999999
	.quad	0x3fe480dc33721d54              # double 0.64073000000000002
	.quad	0x3fef5fd8adab9f56              # double 0.98045000000000004
	.quad	0x3fe4f3eab367a0f9              # double 0.654775
	.quad	0x3fe75ad538ac18f8              # double 0.72983799999999999
	.quad	0x3fdf9f2778140dd4              # double 0.494089
	.quad	0x3fee3f162ae4b018              # double 0.94520099999999995
	.quad	0x3fec630014f8b589              # double 0.88708500000000001
	.quad	0x3fdbe379b77c02b0              # double 0.43575900000000001
	.quad	0x3fb39ebe9c886163              # double 0.076641000000000001
	.quad	0x3fdde05ccc89b0ee              # double 0.46681899999999998
	.quad	0x3fc524c8366516db              # double 0.165185
	.quad	0x3fc5fcf3dc054ef4              # double 0.17178199999999999
	.quad	0x3fe36db50f40e5a3              # double 0.60714199999999996
	.quad	0x3fe9a8112ba16e7a              # double 0.80176599999999998
	.quad	0x3fe9dea033e78e19              # double 0.80842599999999998
	.quad	0x3fe1fc0d2c386d2f              # double 0.56201800000000002
	.quad	0x3fd12089e34330d7              # double 0.26761099999999999
	.quad	0x3fb68512231832fd              # double 0.087968000000000005
	.quad	0x3fd1536933a0407d              # double 0.27071600000000001
	.quad	0x3fef53b29a1b9f99              # double 0.97896700000000003
	.quad	0x3fe3203e63e8dda5              # double 0.59768600000000005
	.quad	0x3fee7c4c165907d9              # double 0.95267299999999999
	.quad	0x3fcaccbc05d52c17              # double 0.209373
	.quad	0x3fea5f58c08b75ea              # double 0.82413899999999995
	.quad	0x3f909203a322af57              # double 0.016181999999999998
	.quad	0x3fed4638c9752978              # double 0.91482200000000002
	.quad	0x3fd074a3400b88ca              # double 0.25711899999999999
	.quad	0x3fdbfad6cb535009              # double 0.43718499999999999
	.quad	0x3fee451dabe2717a              # double 0.94593700000000003
	.quad	0x3fe05eb0fadf2ecf              # double 0.51155899999999999
	.quad	0x3fe1df00abf76a2f              # double 0.55847199999999997
	.quad	0x3fe102235b4edb2f              # double 0.53151099999999996
	.quad	0x3feaa393ee5eedcc              # double 0.83246799999999998
	.quad	0x3fee742fe82517e7              # double 0.95168299999999995
	.quad	0x3fd322962cfd8f0c              # double 0.29898599999999997
	.quad	0x3fc4fc04c8bc9cd4              # double 0.163941
	.quad	0x3fbc38c111ada76e              # double 0.11024100000000001
	.quad	0x3fe2ca148ba83f4f              # double 0.58716800000000002
	.quad	0x3fea8c38f366948a              # double 0.82961700000000005
	.quad	0x3fed3a7daa4fca43              # double 0.91339000000000004
	.quad	0x3fe6c32ebe596c83              # double 0.71132600000000001
	.quad	0x3fea123c42a66dbd              # double 0.81472599999999995
	.quad	0x3fb977318fc50481              # double 0.099474999999999994
	.quad	0x3fd36eeb702602c9              # double 0.303645
	.quad	0x3fb9afe1da7b0b39              # double 0.10034
	.quad	0x3fe4f4f722e1ac58              # double 0.65490300000000001
	.quad	0x3fd27867f0aa21a7              # double 0.28859899999999999
	.quad	0x3fe00d1b71758e22              # double 0.50160000000000005
	.quad	0x3fd5823c85c24c40              # double 0.33607399999999998
	.quad	0x3fdcf6f8f041461b              # double 0.45257399999999998
	.quad	0x3fee19695d91ab8f              # double 0.94060200000000005
	.quad	0x3fce713f077ccc03              # double 0.23783099999999999
	.quad	0x3fde5208e1501190              # double 0.47375699999999998
	.quad	0x3fc0bacf7446f9ba              # double 0.13070100000000001
	.quad	0x3f94b7b28954a7f8              # double 0.020232
	.quad	0x3fe6f954eb13dfb1              # double 0.71793600000000002
	.quad	0x3fdc3a8e71476af9              # double 0.44107400000000002
	.quad	0x3fd22dadb8348f54              # double 0.28403800000000001
	.quad	0x3feec30f49491f2e              # double 0.96131100000000003
	.quad	0x3fb6a5a469d7342f              # double 0.088465000000000002
	.quad	0x3fc4d57bc7f77af6              # double 0.16276499999999999
	.quad	0x3fe553e920c069e8              # double 0.666493
	.quad	0x3f7c11e42e126202              # double 0.0068529999999999997
	.quad	0x3fa0ce2d1f1cfbb9              # double 0.032822999999999998
	.quad	0x3f9f1950331e3a7e              # double 0.030370000000000001
	.quad	0x3fd62df9378ee286              # double 0.34655599999999998
	.quad	0x3fe37049a9973d9f              # double 0.60745700000000002
	.quad	0x3fd9b3354c12274a              # double 0.401563
	.quad	0x3feb1d99029ae4f3              # double 0.84736299999999998
	.quad	0x3fe870068db8bac7              # double 0.76367499999999999
	.quad	0x3fd481cb46bacf74              # double 0.32042199999999998
	.quad	0x3fe62964e8b7e4de              # double 0.69255299999999997
	.quad	0x3f8607c4199fe436              # double 0.010756999999999999
	.quad	0x3fc76965f5275eea              # double 0.18290400000000001
	.quad	0x3fda1a86940357a3              # double 0.40786899999999998
	.quad	0x3fef6e06d938151a              # double 0.98218099999999997
	.quad	0x3fc2ff9f87f023ea              # double 0.148426
	.quad	0x3fe067967caea748              # double 0.51264500000000002
	.quad	0x3fcfddebd9018e75              # double 0.24895999999999999
	.quad	0x3fdd23315d701d9f              # double 0.45527299999999998
	.quad	0x3fb0940bbb1f255f              # double 0.064758999999999997
	.quad	0x3fe313c89f40a287              # double 0.59616499999999994
	.quad	0x3fe7f28c79f66623              # double 0.74835799999999997
	.quad	0x3fd272abef06b378              # double 0.28824899999999998
	.quad	0x3fe24af709b738e7              # double 0.57165100000000002
	.quad	0x3f91d25aab474107              # double 0.017403999999999999
	.quad	0x3feca9b280f12c28              # double 0.89571500000000004
	.quad	0x3fe3d36f7e3d1cc1              # double 0.61956
	.quad	0x3fcc29e0a41a261c              # double 0.220028
	.quad	0x3fd0cf4623d0bfa1              # double 0.26265100000000002
	.quad	0x3fea86961c36976c              # double 0.82892900000000002
	.quad	0x3fe8fc2a8869c66d              # double 0.78078199999999998
	.quad	0x3fef68c26138fffc              # double 0.98153800000000002
	.quad	0x3feebd1676640a6c              # double 0.96058200000000004
	.quad	0x3fddaf102363b257              # double 0.46381
	.quad	0x3fec48c0ce91c8eb              # double 0.88388100000000003
	.quad	0x3fd7b107746887a9              # double 0.37018000000000001
	.quad	0x3fed279fec99f1ae              # double 0.91108699999999998
	.quad	0x3f66f4384ba0e842              # double 0.0028019999999999998
	.quad	0x3fd0ea24cc6822ff              # double 0.264291
	.quad	0x3fea91afc04c8bca              # double 0.83028400000000002
	.quad	0x3fd1c5197a24894c              # double 0.27765499999999999
	.quad	0x3fd2ebc83a96d4c3              # double 0.29564099999999999
	.quad	0x3fdd601797cc3a00              # double 0.45899000000000001
	.quad	0x3fbea465a57646ae              # double 0.119696
	.quad	0x3fe8e6c2acb85a4f              # double 0.778169
	.quad	0x3fd6f7dfa00e27e1              # double 0.358879
	.quad	0x3fe2c26bb55ac040              # double 0.586233
	.quad	0x3fd990ea9e6eeb70              # double 0.39946999999999999
	.quad	0x3feb65a9a8049668              # double 0.85616000000000003
	.quad	0x3fa61309c7ffde72              # double 0.043114
	.quad	0x3fc949949e8815e4              # double 0.19755800000000001
	.quad	0x3fbe33269df97aab              # double 0.117968
	.quad	0x3fe532e3821af7d3              # double 0.662462
	.quad	0x3fd65093964a59c0              # double 0.34866799999999998
	.quad	0x3fde4cb5bb384fd3              # double 0.47343200000000002
	.quad	0x3fc6264e48626f61              # double 0.173044
	.quad	0x3fe4f60bf5d78812              # double 0.65503500000000003
	.quad	0x3fefc3d89ce4a7b5              # double 0.99265700000000001
	.quad	0x3f86262cba732df5              # double 0.010815
	.quad	0x3fc28bc169c23b79              # double 0.14488999999999999
	.quad	0x3fcd1be6e6538690              # double 0.22741400000000001
	.quad	0x3fd0a415f45e0b4e              # double 0.260015
	.quad	0x3fa0008637bd05af              # double 0.031253999999999997
	.quad	0x3fd93d4f15e7c8d2              # double 0.39436700000000002
	.quad	0x3febfb224aada33c              # double 0.87440600000000001
	.quad	0x3fe6312d3415b142              # double 0.69350299999999998
	.quad	0x3fd8f0dc768dfbd7              # double 0.38970100000000002
	.quad	0x3fe210060780fdc1              # double 0.56445599999999996
	.quad	0x3fe95de9c0229a5f              # double 0.79271400000000003
	.quad	0x3fe45e9c0229a5ec              # double 0.63654900000000003
	.quad	0x3fcc88f861a60d45              # double 0.22292999999999999
	.quad	0x3fe00b30b5aa7158              # double 0.50136599999999998
	.quad	0x3fdf4dad31fcd24e              # double 0.489116
	.quad	0x3fef2934acaff6d3              # double 0.97377999999999997
	.quad	0x3fea866a11ec918e              # double 0.82890799999999998
	.quad	0x3fd7579af1886df8              # double 0.36472199999999999
	.quad	0x3fda94ff0025bfad              # double 0.41534399999999999
	.quad	0x3fe7dae5ffa3b9ae              # double 0.74547099999999999
	.quad	0x3fe53da0dfdef848              # double 0.66377299999999995
	.quad	0x3fd8e40852b4d8ba              # double 0.38891799999999999
	.quad	0x3fe3da5fc7e6b3ff              # double 0.62040700000000004
	.quad	0x3feeab53d640e9d5              # double 0.95841399999999998
	.quad	0x3fd21016ce789e77              # double 0.28223199999999998
	.quad	0x3feb0c5a8155d5f5              # double 0.84525799999999995
	.quad	0x3fe43f9830e3cd9a              # double 0.63276299999999996
	.quad	0x3fc14959e6256367              # double 0.135051
	.quad	0x3fd8d872f33ca31e              # double 0.38821099999999997
	.quad	0x3fd9231832fcac8e              # double 0.39276699999999998
	.quad	0x3fc22c9081c2e33f              # double 0.141985
	.quad	0x3fa5d93c46d82ba6              # double 0.042673000000000003
	.quad	0x3fc16b00ffda4053              # double 0.136078
	.quad	0x3fed8e12e83a109d              # double 0.923593
	.quad	0x3fe460e0eb67c287              # double 0.636826
	.quad	0x3fb02730c67168f9              # double 0.063098000000000001
	.quad	0x3fe2a3cc8de2ac32              # double 0.58249499999999999
	.quad	0x3feb38800eae18ad              # double 0.85064700000000004
	.quad	0x3fef3f316e371540              # double 0.97646399999999999
	.quad	0x3fee1e3a7daa4fca              # double 0.94118999999999997
	.quad	0x3feeecce5f7403de              # double 0.96640700000000002
	.quad	0x3fd95000c9539b89              # double 0.39550800000000003
	.quad	0x3fbe415f45e0b4e1              # double 0.118185
	.quad	0x3febbf42352eb5f6              # double 0.86709700000000001
	.quad	0x3fe4147f13059642              # double 0.627502
	.quad	0x3fda110e453d20f3              # double 0.40729100000000001
	.quad	0x3fc72d1aeb3dd11c              # double 0.181064
	.quad	0x3fee5b9e8c47a17f              # double 0.94868399999999997
	.quad	0x3fe538cb8e086bdf              # double 0.66318299999999997
	.quad	0x3fe07fe6d58c8eef              # double 0.51561299999999999
	.quad	0x3fed6583e8576cce              # double 0.91864199999999996
	.quad	0x3fefec11a11233df              # double 0.99756699999999998
	.quad	0x3fe05143bf727137              # double 0.50992000000000004
	.quad	0x3fe20e27e0ef9980              # double 0.56422799999999995
	.quad	0x3fb031ceaf251c19              # double 0.063259999999999997
	.quad	0x3fe355757d5a9eb2              # double 0.604182
	.quad	0x3fe0ababead4f590              # double 0.52095599999999997
	.quad	0x3fbc65625a682b63              # double 0.11092200000000001
	.quad	0x3fce3476295208e1              # double 0.23597599999999999
	.quad	0x3fdcf83be6601bca              # double 0.45265100000000003
	.quad	0x3fd3b1f687b139c9              # double 0.30773699999999998
	.quad	0x3fc597c3d68405b4              # double 0.16869400000000001
	.quad	0x3fdc7952d234eb9a              # double 0.44490499999999999
	.quad	0x3fe846f7a0b5ed8d              # double 0.75866299999999998
	.quad	0x3feb9bc98a222d51              # double 0.86276699999999995
	.quad	0x3fe3976ff3ade226              # double 0.612236
	.quad	0x3fe35393250b5244              # double 0.60395200000000004
	.quad	0x3feb88aac96cc5fc              # double 0.860433
	.quad	0x3fefa2ccb3a2595c              # double 0.98862300000000002
	.quad	0x3fdd3f67f4dbdf8f              # double 0.45699499999999998
	.quad	0x3fdac4ef88b97785              # double 0.41826999999999998
	.quad	0x3fe17f1950331e3a              # double 0.54676499999999995
	.quad	0x3fee48d7e02645e5              # double 0.94639200000000001
	.quad	0x3fea953bd1676641              # double 0.83071700000000004
	.quad	0x3fd4030c23fab10c              # double 0.31268600000000002
	.quad	0x3fe2bc42a66dbd73              # double 0.58548100000000003
	.quad	0x3fe02469d7342edc              # double 0.50444500000000003
	.quad	0x3fe38848387df5cf              # double 0.61038599999999998
	.quad	0x3fc11deefe4ffc98              # double 0.13372600000000001
	.quad	0x3fd1e39f77292c49              # double 0.27951799999999999
	.quad	0x3fd7da7b0b391926              # double 0.37270999999999999
	.quad	0x3fd60a915379fa98              # double 0.34439500000000001
	.quad	0x3faf5d9a0f0a5eff              # double 0.061261000000000003
	.quad	0x3feea3b3636f3b21              # double 0.95748299999999997
	.quad	0x3fac18f81e8a2ec3              # double 0.054878000000000003
	.quad	0x3fe300cd855970b5              # double 0.59384800000000004
	.quad	0x3fdc4e874c8ffb8b              # double 0.44229299999999999
	.quad	0x3fe7531337eb28d8              # double 0.72889099999999996
	.quad	0x3fe8c0e9d51b4fe8              # double 0.77354900000000004
	.quad	0x3fe22854477ff152              # double 0.56742300000000001
	.quad	0x3fc4979e16d6dc1a              # double 0.16087699999999999
	.quad	0x3fea9d323fee2c99              # double 0.83168900000000001
	.quad	0x3fc7e6bc621b7e0b              # double 0.18672900000000001
	.quad	0x3fb1be2b4959e625              # double 0.069307999999999995
	.quad	0x3fdd25fa658c4bd3              # double 0.45544299999999999
	.quad	0x3fe94189374bc6a8              # double 0.78925000000000001
	.quad	0x3fdf33f42352eb5f              # double 0.48754599999999998
	.quad	0x3fec7b41bfbdf091              # double 0.890046
	.quad	0x3fce43137b07075b              # double 0.23642199999999999
	.quad	0x3fe7c00b88ca3e7d              # double 0.74219299999999999
	.quad	0x3fdf225742dcf462              # double 0.48647099999999999
	.quad	0x3fedefa1e3eaf683              # double 0.93550199999999994
	.quad	0x3fd05c74751ce28f              # double 0.25564300000000001
	.quad	0x3fe4f9d0a67620ef              # double 0.65549500000000005
	.quad	0x3fe92e1049235f81              # double 0.78687300000000004
	.quad	0x3fd9c1ce6c093d96              # double 0.40245399999999998
	.quad	0x3fd65536933a0408              # double 0.34895100000000001
	.quad	0x3fc10d9d7774aba4              # double 0.13322800000000001
	.quad	0x3fe20307f23cc8de              # double 0.56286999999999998
	.quad	0x3fc79884c6a3bde0              # double 0.18434200000000001
	.quad	0x3fe756909aed56b0              # double 0.72931699999999999
	.quad	0x3fee91b823c85c25              # double 0.95528800000000003
	.quad	0x3fbc32441fea8113              # double 0.110142
	.quad	0x3fefcb3c3e74afd5              # double 0.99355899999999996
	.quad	0x3fc8535c9e6687f4              # double 0.19004399999999999
	.quad	0x3fd76c0d6f544bb2              # double 0.36597000000000002
	.quad	0x3fc807dd44135547              # double 0.18773999999999999
	.quad	0x3fd79203a322af57              # double 0.36828699999999998
	.quad	0x3feb9df97aaac109              # double 0.86303399999999997
	.quad	0x3fe36d0b30b5aa71              # double 0.60706099999999996
	.quad	0x3fd7f9bdc69f8c22              # double 0.37461800000000001
	.quad	0x3feab82e44b6e936              # double 0.83498300000000003
	.quad	0x3fdd3a8a3f8982cb              # double 0.45669799999999999
	.quad	0x3feac08b75ea67e8              # double 0.83600399999999997
	.quad	0x3fecf9335d249e45              # double 0.90542
	.quad	0x3fed5df2239e6aba              # double 0.91771800000000003
	.quad	0x3fd2c79702e6644e              # double 0.29343200000000003
	.quad	0x3fd25eedcc20d563              # double 0.28704400000000002
	.quad	0x3febb6cbd987c632              # double 0.86606399999999994
	.quad	0x3fe49f85d744f5d3              # double 0.64447299999999996
	.quad	0x3fe442cc2d6a9c56              # double 0.63315399999999999
	.quad	0x3feea1d53cddd6e0              # double 0.95725499999999996
	.quad	0x3fe5a5df2239e6ac              # double 0.67649800000000004
	.quad	0x3fe6e3e4abe6a338              # double 0.71531900000000004
	.quad	0x3fc589efd86a8fc1              # double 0.168272
	.quad	0x3fe3deaab042528b              # double 0.62093100000000001
	.quad	0x3fefcf63800218df              # double 0.994066
	.quad	0x3fc6d66f0cfe1544              # double 0.17841899999999999
	.quad	0x3fe5068986fcdee3              # double 0.65704799999999997
	.quad	0x3fe819d2391d5800              # double 0.75315200000000004
	.quad	0x3fba8deb0fadf2ed              # double 0.103728
	.quad	0x3fe448cb4aec8d5c              # double 0.63388599999999995
	.quad	0x3fef1e6687f455a8              # double 0.97246100000000001
	.quad	0x3fe5459b8023a6ce              # double 0.66474699999999998
	.quad	0x3fe8a58d5842b735              # double 0.77020900000000003
	.quad	0x3fe33e7afa722186              # double 0.60137700000000005
	.quad	0x3fe356fda836eb4f              # double 0.60436900000000005
	.quad	0x3fc0ca46e08f2171              # double 0.13117300000000001
	.quad	0x3fd61593e5fb71fc              # double 0.34506700000000001
	.quad	0x3feca8bb0a2ca9ac              # double 0.89559699999999997
	.quad	0x3fd99aaa3ad18d26              # double 0.400065
	.quad	0x3fd87c5ac471b478              # double 0.38258999999999999
	.quad	0x3fe8e44fa05143bf              # double 0.77786999999999995
	.quad	0x3fd94d9c6b053198              # double 0.39536199999999999
	.quad	0x3fe767903211cb04              # double 0.73139200000000004
	.quad	0x3febc679cc74b839              # double 0.86797800000000003
	.quad	0x3fef18f605ab3aac              # double 0.97179700000000002
	.quad	0x3fee3df4c2b51bd6              # double 0.94506299999999999
	.quad	0x3fe3927d45a5fc7e              # double 0.61163199999999995
	.quad	0x3fd2e3e6c4c5974e              # double 0.29515999999999998
	.quad	0x3fe462fbe33acd5b              # double 0.63708299999999995
	.quad	0x3fc4cda6e75ff60a              # double 0.162526
	.quad	0x3fc83fbbd7b2031d              # double 0.189445
	.quad	0x3fd491dde37585be              # double 0.32140299999999999
	.quad	0x3fc0a07f66e86c66              # double 0.12989800000000001
	.quad	0x3fe0d3c36113404f              # double 0.52585000000000004
	.quad	0x3fbb3ebbfd71b047              # double 0.10642600000000001
	.quad	0x3fd7c6045baf533f              # double 0.37146099999999999
	.quad	0x3fe9294ff0025bfb              # double 0.78629300000000002
	.quad	0x3fd8539756c93a71              # double 0.380102
	.quad	0x3fe43fc0096feb4a              # double 0.63278199999999996
	.quad	0x3fc1d6b65a9a8049              # double 0.13936499999999999
	.quad	0x3fddc154c985f06f              # double 0.46492499999999998
	.quad	0x3fc9712a0ec74320              # double 0.198766
	.quad	0x3fe3276965f5275f              # double 0.59856100000000001
	.quad	0x3fe9291105e1c151              # double 0.78626300000000005
	.quad	0x3fee7394b7b28955              # double 0.95160900000000004
	.quad	0x3faa9f59ccfaeff6              # double 0.051997000000000002
	.quad	0x3fbd5a5b9628cbd1              # double 0.11466
	.quad	0x3fa7342edbb59ddc              # double 0.045319999999999999
	.quad	0x3f8892ee84ad794a              # double 0.011998999999999999
	.quad	0x3feb092ccf6be37e              # double 0.84487000000000001
	.quad	0x3fc8569b17481b22              # double 0.19014300000000001
	.quad	0x3fe21758e219652c              # double 0.56535000000000002
	.quad	0x3fdba0dbad3a604e              # double 0.43169299999999999
	.quad	0x3fd874b838c111ae              # double 0.38212400000000002
	.quad	0x3fb9a06a6e32e382              # double 0.100104
	.quad	0x3fed771001d5c316              # double 0.92078400000000005
	.quad	0x3fbe0f2becedd484              # double 0.117419
	.quad	0x3fe92ba5a038194c              # double 0.78657799999999999
	.quad	0x3fee917d6b65a9a8              # double 0.95525999999999999
	.quad	0x3fe1be425aee6320              # double 0.55447500000000005
	.quad	0x3fc8241c3efae792              # double 0.18860199999999999
	.quad	0x3fde5158b827fa1a              # double 0.473715
	.quad	0x3fd421b3aeee9574              # double 0.31455699999999998
	.quad	0x3fecb6006d0d4995              # double 0.89721700000000004
	.quad	0x3fe8f3519bd4067d              # double 0.77970200000000001
	.quad	0x3fe2c8abd5dc4007              # double 0.58699599999999996
	.quad	0x3fe2240fa9c12f0a              # double 0.56690200000000002
	.quad	0x3fe62c8e68e3ef28              # double 0.69293899999999997
	.quad	0x3fe9e33482be8bc1              # double 0.80898499999999995
	.quad	0x3fdf33b107746888              # double 0.48753000000000002
	.quad	0x3fe6b163baba7b91              # double 0.70915399999999995
	.quad	0x3fd7d9e83e425aee              # double 0.37267499999999998
	.quad	0x3fe1d5347a5b0ff1              # double 0.55727599999999999
	.quad	0x3fc29ef5232d2bb2              # double 0.14547599999999999
	.quad	0x3fec83a96d4c33b5              # double 0.89107199999999998
	.quad	0x3fc34185058dde7a              # double 0.15043699999999999
	.quad	0x3fd60a7c5ac471b4              # double 0.34438999999999997
	.quad	0x3fbd4185058dde7a              # double 0.11428099999999999
	.quad	0x3fe182ba5a038195              # double 0.54720800000000003
	.quad	0x3f9ae2541d8e8640              # double 0.026254
	.quad	0x3feb382c2bd7f51f              # double 0.850607
	.quad	0x3fe04148344c37e7              # double 0.507969
	.quad	0x3fe8a921ccd96207              # double 0.77064600000000005
	.quad	0x3fe58561d4306e5d              # double 0.67253200000000002
	.quad	0x3fd26b97fe8ee6b8              # double 0.28781699999999999
	.quad	0x3fec3702602c9082              # double 0.88171500000000003
	.quad	0x3fe98dfbd6a593a3              # double 0.79858200000000001
	.quad	0x3fde9c2c1b10fd7e              # double 0.47828199999999998
	.quad	0x3fdb05c4651f3e8a              # double 0.42222700000000002
	.quad	0x3feaee6106ab14ec              # double 0.84159899999999998
	.quad	0x3fe330ab2e1693c0              # double 0.59969099999999997
	.quad	0x3fe8b80ecfa69be1              # double 0.77246800000000004
	.quad	0x3fe0f63a19008206              # double 0.530057
	.quad	0x3fe85c31593e5fb7              # double 0.76125399999999999
	.quad	0x3fd9ff540895d0b7              # double 0.40620899999999999
	.quad	0x3fc8577531db445f              # double 0.190169
	.quad	0x3fe1aa62aa19439e              # double 0.55204900000000001
	.quad	0x3fef4764adff822c              # double 0.97746500000000002
	.quad	0x3fdc60285ec3dab6              # double 0.44336900000000001
	.quad	0x3feb6c3116228134              # double 0.85695699999999996
	.quad	0x3fc3a63f9a49c2c2              # double 0.15351100000000001
	.quad	0x3fe037f38c5436b9              # double 0.50683
	.quad	0x3fe06c0f88333fc8              # double 0.51319099999999995
	.quad	0x3fd657bc7f77af64              # double 0.349105
	.quad	0x3fe451f81a5870da              # double 0.63500599999999996
	.quad	0x3fe8fd523b3636f4              # double 0.78092300000000003
	.quad	0x3fe0eec39799e519              # double 0.52914600000000001
	.quad	0x3fd0bff04577d955              # double 0.26171499999999998
	.quad	0x3f91715c63ae2542              # double 0.017034000000000001
	.quad	0x3fa1f3a57eaa2a0b              # double 0.035062000000000003
	.quad	0x3fdea005c4651f3f              # double 0.47851700000000003
	.quad	0x3fac024b33daf8df              # double 0.054704999999999997
	.quad	0x3fcd365881a15550              # double 0.22822100000000001
	.quad	0x3fcb709310129cbb              # double 0.21437300000000001
	.quad	0x3fd6493c89f40a28              # double 0.34821999999999997
	.quad	0x3f8800a7c5ac471b              # double 0.01172
	.quad	0x3fe056b00ffda405              # double 0.51058199999999998
	.quad	0x3fd078897e996313              # double 0.257357
	.quad	0x3fe7bc31df761cbd              # double 0.74172300000000002
	.quad	0x3fe06d330941c821              # double 0.51332999999999995
	.quad	0x3fe24b6848beb5b3              # double 0.57170500000000002
	.quad	0x3fddf05ea24cc682              # double 0.46779599999999999
	.quad	0x3fe34cf8d716d2aa              # double 0.60314599999999996
	.quad	0x3fb77952d234eb9a              # double 0.091694999999999998
	.quad	0x3fafba01eeed8905              # double 0.061966
	.quad	0x3fecb2aae297396d              # double 0.89681
	.quad	0x3fdbdd69d30270f4              # double 0.43538900000000003
	.quad	0x3fd841205bc01a37              # double 0.37897500000000001
	.quad	0x3fd31960fa15db34              # double 0.29842400000000002
	.quad	0x3fedbad5bee3d5fe              # double 0.92905700000000002
	.quad	0x3fd057d5a9eb2075              # double 0.255361
	.quad	0x3fb853c148344c38              # double 0.095028000000000001
	.quad	0x3fe5ca8198f1d3ed              # double 0.68096999999999996
	.quad	0x3fc9ac03ff69014b              # double 0.20056199999999999
	.quad	0x3fe03a0407cc7d1c              # double 0.50708200000000003
	.quad	0x3fe35625a682b628              # double 0.60426599999999997
	.quad	0x3fd2840e1719f7f9              # double 0.28931000000000001
	.quad	0x3fce09d495182a99              # double 0.23467499999999999
	.quad	0x3feebcf2cf95d4e9              # double 0.960565
	.quad	0x3fa6c6bce8533b10              # double 0.044484999999999997
	.quad	0x3fe623076c050bd8              # double 0.69177599999999995
	.quad	0x3feaece5710880d8              # double 0.841418
	.quad	0x3feb06ee30caa327              # double 0.84459600000000001
	.quad	0x3febd9ddc1e7967d              # double 0.87034500000000004
	.quad	0x3fe29b2e59af9ebf              # double 0.58144300000000004
	.quad	0x3fe5dac471b47842              # double 0.68295499999999998
	.quad	0x3fd42da122fad6cb              # double 0.31528499999999998
	.quad	0x3fe16eb0b7c3504c              # double 0.54476199999999997
	.quad	0x3fb57b0f6ad70e6f              # double 0.083908999999999997
	.quad	0x3f98b1572580c309              # double 0.024114
	.quad	0x3fef21a719b4dcec              # double 0.972858
	.quad	0x3fd5f0995aaf78ff              # double 0.34281
	.quad	0x3fd1d323fee2c98e              # double 0.27851199999999998
	.quad	0x3f9cb641700cd856              # double 0.028039000000000001
	.quad	0x3fcdcb6848beb5b3              # double 0.23277
	.quad	0x3fdaa8cdea033e79              # double 0.41655300000000001
	.quad	0x3fdf144cbe1eb420              # double 0.48561399999999999
	.quad	0x3fe5e8dfbd6a593a              # double 0.68467699999999998
	.quad	0x3fe1a515ce9e5e24              # double 0.55140199999999995
	.quad	0x3fe89198aeb80ed0              # double 0.76777300000000004
	.quad	0x3fec1240746455eb              # double 0.87722800000000001
	.quad	0x3feac73cd573647c              # double 0.83682100000000003
	.quad	0x3fef3dbc23315d70              # double 0.97628599999999999
	.quad	0x3fec5acabc515486              # double 0.88608299999999995
	.quad	0x3fe69efd86a8fc0d              # double 0.70690799999999998
	.quad	0x3fea8915bdd76684              # double 0.82923400000000002
	.quad	0x3f7203a322af5771              # double 0.004398
	.quad	0x3fe5699a62ed3522              # double 0.66914099999999999
	.quad	0x3f9991361dc93ea3              # double 0.024968000000000001
	.quad	0x3fdf635a426bb55b              # double 0.49043900000000001
	.quad	0x3fb97add15f02c4d              # double 0.099530999999999994
	.quad	0x3fdb9d6adf71eaff              # double 0.43148300000000001
	.quad	0x3fe1682730c67169              # double 0.543964
	.quad	0x3fceb734b51372a4              # double 0.23996600000000001
	.quad	0x3fee8fdc1615ebfb              # double 0.95506100000000005
	.quad	0x3fe0ec5b078d92fb              # double 0.52885199999999999
	.quad	0x3fdf00c9539b8887              # double 0.48442299999999999
	.quad	0x3fe90676a7264a17              # double 0.78203900000000004
	.quad	0x3fddcf3dc054ef46              # double 0.46577400000000002
	.quad	0x3fe9ee008e9b38d6              # double 0.810303
	.quad	0x3fee82d16b97fe8f              # double 0.95346900000000001
	.quad	0x3fcef09528f190d1              # double 0.24171699999999999
	.quad	0x3fee9b9b66f9335d              # double 0.95649499999999998
	.quad	0x3fb9be2b4959e625              # double 0.10055799999999999
	.quad	0x3feb0bae89eba6ad              # double 0.84517600000000004
	.quad	0x3fe2a44417870542              # double 0.58255199999999996
	.quad	0x3fe3760e0eb67c28              # double 0.60816099999999995
	.quad	0x3fa7d199bb2788db              # double 0.046521
	.quad	0x3fdce30caa326e11              # double 0.45135799999999998
	.quad	0x3fce4e7ab7564303              # double 0.23677000000000001
	.quad	0x3fc599c38b04ab60              # double 0.16875499999999999
	.quad	0x3feb41a47a9e2bd0              # double 0.85176300000000005
	.quad	0x3fd4e7ee9142b303              # double 0.326656
	.quad	0x3fec606530058149              # double 0.88676699999999997
	.quad	0x3fd59e0e736049ed              # double 0.33777200000000002
	.quad	0x3fd5069a4df47f99              # double 0.32852799999999999
	.quad	0x3fe513682730c671              # double 0.65861899999999995
	.quad	0x3fe4b6b4c7f34938              # double 0.64730299999999996
	.quad	0x3fe2a2706d506573              # double 0.58232899999999999
	.quad	0x3fd73aa79bbadc0a              # double 0.36295500000000003
	.quad	0x3fed111276fb0920              # double 0.90833399999999997
	.quad	0x3fc147735c182ecb              # double 0.134993
	.quad	0x3fd1bfec13b9f128              # double 0.277339
	.quad	0x3fd678e5c4eb56fc              # double 0.35112900000000002
	.quad	0x3fc92862f5989df1              # double 0.196545
	.quad	0x3feaeac8605681ed              # double 0.84116000000000002
	.quad	0x3fdcddaceee0f3cb              # double 0.45102999999999999
	.quad	0x3fe9551d68c692f7              # double 0.79164000000000001
	.quad	0x3fd0de6149c6f36f              # double 0.263573
	.quad	0x3fc89c0229a5ebb7              # double 0.19226099999999999
	.quad	0x3fde212513b5bf6a              # double 0.470773
	.quad	0x3fe17243137b0707              # double 0.54519799999999996
	.quad	0x3fe4c968943e1006              # double 0.649586
	.quad	0x3fee129ed3953dea              # double 0.93977299999999997
	.quad	0x3fd1555c52e72da1              # double 0.27083499999999999
	.quad	0x3fe10cd20afa2f06              # double 0.53281500000000004
	.quad	0x3fb0929aa1d755bd              # double 0.064737000000000003
	.quad	0x3fcac8d5c74751ce              # double 0.209254
	.quad	0x3fc2b945308bb906              # double 0.14627899999999999
	.quad	0x3fdc7e6f71a7e308              # double 0.44521699999999997
	.quad	0x3fecb7f1737542a2              # double 0.89745399999999997
	.quad	0x3fe5292817763e4b              # double 0.66127400000000003
	.quad	0x3fb4b6523704790c              # double 0.080907000000000007
	.quad	0x3fcec70867ad8e43              # double 0.240449
	.quad	0x3f9d9ba1b1960fa1              # double 0.028913999999999999
	.quad	0x3fe4369984a0e411              # double 0.63166500000000003
	.quad	0x3fe8f2d1aeb3dd12              # double 0.77964100000000003
	.quad	0x3fec97a02fb5d031              # double 0.893509
	.quad	0x3fb0243dccea28fe              # double 0.063052999999999998
	.quad	0x3fe859231c64ba95              # double 0.76088100000000003
	.quad	0x3fe210624dd2f1aa              # double 0.5645
	.quad	0x3fc005ccc89b0ee5              # double 0.12517700000000001
	.quad	0x3fd814b599aa6091              # double 0.37626399999999999
	.quad	0x3fdeefc371da37ef              # double 0.48338399999999998
	.quad	0x3fcb55b4677b395c              # double 0.21355299999999999
	.quad	0x3fcc7c957cd466f5              # double 0.222552
	.quad	0x3f855b4677b395c4              # double 0.010428
	.quad	0x3fd3e215336deb96              # double 0.31067400000000001
	.quad	0x3fa99a847b24638d              # double 0.050007000000000003
	.quad	0x3fd67635e74299d9              # double 0.35096500000000003
	.quad	0x3fdbedd4845132f8              # double 0.43639099999999997
	.quad	0x3fede7967caea748              # double 0.93452000000000002
	.quad	0x3fcd6e1deacc9214              # double 0.22992299999999999
	.quad	0x3f933e35c5b4aa97              # double 0.018792
	.quad	0x3fe2c067cf1c3266              # double 0.58598700000000004
	.quad	0x3fed0c4588a04d12              # double 0.907748
	.quad	0x3fe11ec918e325d5              # double 0.53500800000000004
	.quad	0x3fb9a86940357a35              # double 0.100226
	.quad	0x3feaae6c8f755369              # double 0.83379199999999998
	.quad	0x3fe4d1b4fe79ee03              # double 0.65059900000000004
	.quad	0x3fdf47b677f6b1a3              # double 0.48875200000000002
	.quad	0x3fed4bad7d7c2ca1              # double 0.91548799999999997
	.quad	0x3fe4a5b317efe0ce              # double 0.64522699999999999
	.quad	0x3fc8061847f56217              # double 0.18768599999999999
	.quad	0x3fec414a4d2b2bfe              # double 0.88297000000000003
	.quad	0x3fc71a11233df2aa              # double 0.180483
	.quad	0x3fe6cf5f4e4430b1              # double 0.71281399999999995
	.quad	0x3fb1ba5e353f7cee              # double 0.069250000000000006
	.quad	0x3fefe6c4c5974e66              # double 0.99692000000000003
	.quad	0x3fd03de1e2de8709              # double 0.25377699999999997
	.quad	0x3fe8441355475a32              # double 0.75831000000000004
	.quad	0x3fd8d7fd82773e25              # double 0.388183
	.quad	0x3fd0e0f7fcfc3f81              # double 0.26373099999999999
	.quad	0x3fe0cd50ebaade65              # double 0.52506299999999995
	.quad	0x3fd6586876e1dead              # double 0.34914600000000001
	.quad	0x3fb37110e453d20f              # double 0.075943999999999998
	.quad	0x3fe1250b524399b3              # double 0.53577200000000003
	.quad	0x3fc18897e996312f              # double 0.13698099999999999
	.quad	0x3fdf2b4528283d36              # double 0.487016
	.quad	0x3fcc090b417ca212              # double 0.219026
	.quad	0x3fe3d347a5b0ff11              # double 0.61954100000000001
	.quad	0x3fed9f9acffa7eb7              # double 0.92573300000000003
	.quad	0x3fe063de6149c6f3              # double 0.51219099999999995
	.quad	0x3fbc3947496aad1d              # double 0.110249
	.quad	0x3fbe5ffa3b9ae0c1              # double 0.11865199999999999
	.quad	0x3fd52806af46aa08              # double 0.33056799999999997
	.quad	0x3fa3a2df9378ee28              # double 0.038351999999999997
	.quad	0x3fefa209aaa3ad19              # double 0.98853000000000001
	.quad	0x3fec88051c9f72f7              # double 0.89160399999999995
	.quad	0x3fa4c6c54bcf0b6b              # double 0.040578999999999997
	.quad	0x3fea41ebc83a96d5              # double 0.82054700000000003
	.quad	0x3fe3c04a72ead927              # double 0.61722299999999997
	.quad	0x3fefb41e14bdfd26              # double 0.99073699999999998
	.quad	0x3fcc37ac3eb7cbb4              # double 0.22044900000000001
	.quad	0x3fd051d68c692f6f              # double 0.25499500000000003
	.quad	0x3fee064ece9a2c67              # double 0.93827000000000005
	.quad	0x3fd221c475e6362a              # double 0.28331099999999998
	.quad	0x3fe58dda48b65237              # double 0.673566
	.quad	0x3fe7b0b7c3504c49              # double 0.74032200000000004
	.quad	0x3f9bb73083558a76              # double 0.027066
	.quad	0x3fe6a52ac753e708              # double 0.70766200000000001
	.quad	0x3fc93a2595bbbe88              # double 0.19708700000000001
	.quad	0x3fddd91eeaa6d267              # double 0.46637699999999999
	.quad	0x3fec183b60285ec4              # double 0.87795800000000001
	.quad	0x3fa9d8409e55c0fd              # double 0.050478000000000002
	.quad	0x3fefe3779e9d0e99              # double 0.99651699999999998
	.quad	0x3fea68900c521dda              # double 0.825264
	.quad	0x3fb756eac8605682              # double 0.091170000000000001
	.quad	0x3fecbd09e12a51e3              # double 0.89807599999999999
	.quad	0x3fc374c4cdfaca36              # double 0.152001
	.quad	0x3fc49949e8815e39              # double 0.16092799999999999
	.quad	0x3fdcdcd2d44dca8e              # double 0.45097799999999999
	.quad	0x3fe00bc59b8023a7              # double 0.50143700000000002
	.quad	0x3fee88b32ce89657              # double 0.95418700000000001
	.quad	0x3fe9746cb966be7b              # double 0.795462
	.quad	0x3fef04c271fff79d              # double 0.96933100000000005
	.quad	0x3febe91ea78af3e4              # double 0.87220699999999995
	.quad	0x3fe8c5d206c8711d              # double 0.77414799999999995
	.quad	0x3fd86234a87e38eb              # double 0.380994
	.quad	0x3fd44152b0a6fc59              # double 0.31648700000000002
	.quad	0x3f966b1e5c0b9991              # double 0.021892999999999999
	.quad	0x3fd4737542a23c00              # double 0.31954700000000003
	.quad	0x3fb9bfbdf090f734              # double 0.100582
	.quad	0x3fee34959e625636              # double 0.94391899999999995
	.quad	0x3fe5ee2867275686              # double 0.68532199999999999
	.quad	0x3fe272a172abef07              # double 0.57649300000000003
	.quad	0x3fe83b4916ca46e1              # double 0.75723700000000005
	.quad	0x3faa4484944ed6fe              # double 0.051304000000000002
	.quad	0x3fcf47735c182ecb              # double 0.244368
	.quad	0x3f87a4e7ab756430              # double 0.011545
	.quad	0x3fe13f6a0dbad3a6              # double 0.538991
	.quad	0x3fc5efbf401c4fc2              # double 0.171379
	.quad	0x3fbb61dc93ea2d30              # double 0.106962
	.quad	0x3fd0895d0b73d189              # double 0.258384
	.quad	0x3fe8396f21f6cacd              # double 0.75701099999999999
	.quad	0x3fc861f18c9fb613              # double 0.19048899999999999
	.quad	0x3fc99096bb98c7e3              # double 0.19972500000000001
	.quad	0x3fc49930be0ded29              # double 0.16092500000000001
	.quad	0x3fe2f1737542a23c              # double 0.591974
	.quad	0x3fe8424c404a72eb              # double 0.75809300000000002
	.quad	0x3fee84230fcf80dc              # double 0.95362999999999997
	.quad	0x3fde8f5c28f5c28f              # double 0.47749999999999998
	.quad	0x3feb77b395c42203              # double 0.85836199999999996
	.quad	0x3feb65d18090b418              # double 0.85617900000000002
	.quad	0x3fb4d7cf5f4e4431              # double 0.081418000000000004
	.quad	0x3fc47ef9db22d0e5              # double 0.16012499999999999
	.quad	0x3fe9b60f1b25f634              # double 0.80347400000000002
	.quad	0x3fef144241c3efae              # double 0.97122299999999995
	.quad	0x3fe0b1e7d9988d2a              # double 0.52171699999999999
	.quad	0x3fd2d352220bc383              # double 0.29414800000000002
	.quad	0x3fa10dbf0563ed0f              # double 0.033307999999999997
	.quad	0x3fe2d66cf41f212d              # double 0.58867499999999995
	.quad	0x3fcbbca9691a75cd              # double 0.216695
	.quad	0x3fd3a854477ff152              # double 0.30714900000000001
	.quad	0x3fb380dc33721d54              # double 0.076185000000000003
	.quad	0x3fe0b39e279dd3bb              # double 0.521926
	.quad	0x3fdf5db76b3bb83d              # double 0.490095
	.quad	0x3fe1779420b3d4ae              # double 0.54584699999999997
	.quad	0x3fce4a05dd8f92b0              # double 0.23663400000000001
	.quad	0x3fcb71971c10d7bf              # double 0.21440400000000001
	.quad	0x3fe68bb906466b1e              # double 0.70455599999999996
	.quad	0x3fe9ecefed63454a              # double 0.81017300000000003
	.quad	0x3fd7854cdb7ae579              # double 0.36751099999999998
	.quad	0x3fd3f394b7b28955              # double 0.31174200000000002
	.quad	0x3fdddcd2d44dca8e              # double 0.46660299999999999
	.quad	0x3fc643137b07075b              # double 0.17392199999999999
	.quad	0x3fe691409a240315              # double 0.70523100000000005
	.quad	0x3fda7720c8cd63cc              # double 0.41352100000000003
	.quad	0x3fe26c2acb85a4f0              # double 0.57570399999999999
	.quad	0x3fe6d5d3dc8b86b1              # double 0.71360199999999996
	.quad	0x3fedf164c729f59d              # double 0.93571700000000002
	.quad	0x3fe3a1d53cddd6e0              # double 0.61350499999999997
	.quad	0x3fe3d5cd91eeaa6d              # double 0.61984899999999998
	.quad	0x3fe3c35efa615a8e              # double 0.61759900000000001
	.quad	0x3fe4671476af89c6              # double 0.63758300000000001
	.quad	0x3feb6837f7be121f              # double 0.85647200000000001
	.quad	0x3fd5ee5eedcc20d5              # double 0.34267399999999998
	.quad	0x3fe0c3d89ce4a7b5              # double 0.52390700000000001
	.quad	0x3fe7f99c38b04ab6              # double 0.74922
	.quad	0x3f83e89a88ace24c              # double 0.0097210000000000005
	.quad	0x3fe2d77b7c7820a3              # double 0.58880399999999999
	.quad	0x3fd4426fe718a86d              # double 0.31655499999999998
	.quad	0x3fc6f544bb1af3a1              # double 0.17935999999999999
	.quad	0x3fd2675147f13059              # double 0.28755599999999998
	.quad	0x3fdf790752da9867              # double 0.49176199999999998
	.quad	0x3fe00941c8216c61              # double 0.50112999999999996
	.quad	0x3fc1591cd1c7de51              # double 0.13553200000000001
	.quad	0x3fea308bb906466b              # double 0.81842599999999999
	.quad	0x3fde014b599aa609              # double 0.468829
	.quad	0x3fe26a91d9b1b79e              # double 0.57550900000000005
	.quad	0x3fd3079e59f2ba9d              # double 0.29733999999999999
	.quad	0x3fd24b2fa93af74d              # double 0.28583900000000001
	.quad	0x3fe53e9c886162f1              # double 0.66389299999999996
	.quad	0x3fc83f67f4dbdf8f              # double 0.18943499999999999
	.quad	0x3facd141a6937d20              # double 0.056284000000000001
	.quad	0x3fe9b9a38fbca106              # double 0.80391100000000004
	.quad	0x3fe0950fc71d6063              # double 0.51819599999999999
	.quad	0x3fe19d7342edbb5a              # double 0.55047000000000001
	.quad	0x3fde299524bfd2e9              # double 0.47128799999999998
	.quad	0x3fd4ef6b5d462c34              # double 0.32711299999999999
	.quad	0x3f7308bb906466b2              # double 0.0046470000000000001
	.quad	0x3fddcbe61cffeb07              # double 0.46556999999999998
	.quad	0x3fcad4bad7d7c2ca              # double 0.209617
	.quad	0x3fedb152f3c2dadc              # double 0.92789600000000005
	.quad	0x3feb9693c03bc4d2              # double 0.86213099999999998
	.quad	0x3fd7273d5bab2181              # double 0.36176999999999998
	.quad	0x3feac3760bf5d788              # double 0.83635999999999999
	.quad	0x3feb0d10f51ac9b0              # double 0.84534500000000001
	.quad	0x3fe3ae85b9e8c47a              # double 0.61505399999999999
	.quad	0x3fd4d883ba3443d4              # double 0.32571499999999998
	.quad	0x3fdcca9691a75cd1              # double 0.44986500000000001
	.quad	0x3fec2f4491298890              # double 0.88077000000000005
	.quad	0x3fe2599aa60913a5              # double 0.573438
	.quad	0x3fcbca7503b81b65              # double 0.217116
	.quad	0x3fe4ddd095af294e              # double 0.65207700000000002
	.quad	0x3fd1d1b2e59af9ec              # double 0.278424
	.quad	0x3fd2edd8b60f1b26              # double 0.295767
	.quad	0x3fd2efaa4766c6de              # double 0.29587799999999997
	.quad	0x3fb17e45803cd142              # double 0.068333000000000005
	.quad	0x3fe0ca9cdc443915              # double 0.524733
	.quad	0x3fd65436b8f9b131              # double 0.34888999999999998
	.quad	0x3fe44aea747d805e              # double 0.63414499999999996
	.quad	0x3fe4079e59f2ba9d              # double 0.62592999999999999
	.quad	0x3fde679cc74b838c              # double 0.475074
	.quad	0x3fe16455eaee2004              # double 0.54349800000000004
	.quad	0x3fdb9c4545846e8f              # double 0.43141299999999999
	.quad	0x3fabfe9fadafd114              # double 0.054677000000000003
	.quad	0x3fcda7b0b3919264              # double 0.23168
	.quad	0x3fc5c6a7ef9db22d              # double 0.170125
	.quad	0x3fd43da2f8bdec5f              # double 0.31626199999999999
	.quad	0x3fd5dab191dde376              # double 0.34147300000000003
	.quad	0x3fef561f5be5d9e4              # double 0.97926299999999999
	.quad	0x3fe19bfbdf090f73              # double 0.55029099999999997
	.quad	0x3fe48ac9f2fdb8fe              # double 0.64194200000000001
	.quad	0x3fae70c1333b96af              # double 0.059454
	.quad	0x3fd01b97353b4b30              # double 0.25168400000000002
	.quad	0x3fa7d32c625e99e9              # double 0.046532999999999998
	.quad	0x3fe5a7e52157689d              # double 0.67674500000000004
	.quad	0x3fe9899392189bd8              # double 0.79804399999999998
	.quad	0x3fe433d6c7219221              # double 0.631328
	.quad	0x3fce68986fcdee35              # double 0.237567
	.quad	0x3fd3f034b0e1b4bb              # double 0.31153599999999998
	.quad	0x3fd73c254a3c6434              # double 0.36304599999999998
	.quad	0x3fefbb23571d1d47              # double 0.99159399999999997
	.quad	0x3fa1d81f10667f91              # double 0.034852000000000001
	.quad	0x3fe10066c2acb85a              # double 0.53129899999999997
	.quad	0x3fc2cb4aec8d5c74              # double 0.14682899999999999
	.quad	0x3fc87d1bb4916ca4              # double 0.19131799999999999
	.quad	0x3fcc68b9fdbd2fa1              # double 0.221946
	.quad	0x3feee7bc3c5bd0e1              # double 0.96578799999999997
	.quad	0x3fedfcaa7589efd8              # double 0.93709299999999995
	.quad	0x3fbde59f2ba9d1f6              # double 0.116785
	.quad	0x3fce9595feda6613              # double 0.23894000000000001
	.quad	0x3fe3036a832b990b              # double 0.594167
	.quad	0x3fd01dc50ce4ead1              # double 0.25181700000000001
	.quad	0x3fcae379b77c02b0              # double 0.210067
	.quad	0x3feb7e52157689ca              # double 0.85916999999999999
	.quad	0x3fe5affb04ee7c4a              # double 0.677732
	.quad	0x3febd3458cd20afa              # double 0.86953999999999998
	.quad	0x3f8c85c24c404a73              # double 0.013927
	.quad	0x3fd356da0168b5cc              # double 0.302176
	.quad	0x3fd426b2f23033a4              # double 0.31486199999999998
	.quad	0x3fe03eb9e492bc30              # double 0.50765700000000002
	.quad	0x3fc3a8b4bf8fcd68              # double 0.153586
	.quad	0x3fdbc75818c5c9a3              # double 0.43404199999999998
	.quad	0x3fe4cc63f141205c              # double 0.64995000000000003
	.quad	0x3fd4a311e85fd04a              # double 0.32245299999999999
	.quad	0x3fd696638433d6c7              # double 0.35292899999999999
	.quad	0x3feb918e325d4a5e              # double 0.86151800000000001
	.quad	0x3fe7f5b5fa22706d              # double 0.74874399999999997
	.quad	0x3f955c96030c23fb              # double 0.020861000000000001
	.quad	0x3fe4e9f2778140dd              # double 0.65355799999999997
	.quad	0x3fe322ee41919ac8              # double 0.59801400000000005
	.quad	0x3febb34a44c7b02d              # double 0.86563599999999996
	.quad	0x3fe4b57c4e2f37fc              # double 0.64715400000000001
	.quad	0x3fe6000c9539b888              # double 0.68750599999999995
	.quad	0x3fea96df3f961805              # double 0.83091700000000002
	.quad	0x3fbb647baa9b499d              # double 0.107002
	.quad	0x3fe6a433508f648c              # double 0.70754399999999995
	.quad	0x3fe99476af89c5e7              # double 0.799373
	.quad	0x3fe05859c8c9320e              # double 0.51078500000000004
	.quad	0x3fe1278d0cc35ce2              # double 0.53607800000000005
	.quad	0x3f85f3519bd4067d              # double 0.010718
	.quad	0x3fec34d26fa3fcca              # double 0.88144800000000001
	.quad	0x3fe758a979e16d6e              # double 0.72957300000000003
	.quad	0x3feea4c1ebc83a97              # double 0.95761200000000002
	.quad	0x3fd227f5e84f0953              # double 0.28368900000000002
	.quad	0x3fbededaec4a4096              # double 0.120588
	.quad	0x3fe2c4ac6cdaf4ae              # double 0.58650800000000003
	.quad	0x3fde4fdf3b645a1d              # double 0.47362500000000002
	.quad	0x3fd80d887ebf22c0              # double 0.37582599999999999
	.quad	0x3fe21491f2dc2b0f              # double 0.56501100000000004
	.quad	0x3fde564302b40f67              # double 0.47401500000000002
	.quad	0x3fd7c4b09e98dcdb              # double 0.37137999999999999
	.quad	0x3fa51b0ccbc05d53              # double 0.041222000000000002
	.quad	0x3feda46bf01322f2              # double 0.92632099999999995
	.quad	0x3fe7fced916872b0              # double 0.74962499999999999
	.quad	0x3fc1fbf83382e44b              # double 0.14050199999999999
	.quad	0x3fee6c2ce4649907              # double 0.95070500000000002
	.quad	0x3feb0dda48b65237              # double 0.845441
	.quad	0x3fc22ba5a038194c              # double 0.141957
	.quad	0x3fc0488c60cbf2b2              # double 0.12721399999999999
	.quad	0x3fd2c5260f5e41d5              # double 0.29328300000000002
	.quad	0x3fe9ffb04ee7c4a0              # double 0.81246200000000001
	.quad	0x3fbceaaf35e310dc              # double 0.112956
	.quad	0x3fea5aff2a172abf              # double 0.82360800000000001
	.quad	0x3feb3ca5375c8da0              # double 0.85115300000000004
	.quad	0x3fc40fa9c12f09d9              # double 0.15672800000000001
	.quad	0x3fea33f20a73f749              # double 0.81884100000000004
	.quad	0x3fa27b2cc70867ae              # double 0.036096000000000003
	.quad	0x3fbffe4bcad9ad86              # double 0.124974
	.quad	0x3fe3e290eed02cd4              # double 0.62140700000000004
	.quad	0x3fea1ba7fc32ebe6              # double 0.81587600000000005
	.quad	0x3fd3a161e4f765fe              # double 0.30672500000000003
	.quad	0x3f8e2c55c96030c2              # double 0.014733
	.quad	0x3fdad349be8ff328              # double 0.41914600000000002
	.quad	0x3fe8b107746887a9              # double 0.77161000000000002
	.quad	0x3fc52f33ca31e7da              # double 0.16550300000000001
	.quad	0x3fcd845dc8323359              # double 0.230602
	.quad	0x3fbe90364388ebcc              # double 0.11938799999999999
	.quad	0x3fed6f34d6a161e5              # double 0.919825
	.quad	0x3fc90b9dc2f405f7              # double 0.19566700000000001
	.quad	0x3fe60cd423d9231c              # double 0.68906599999999996
	.quad	0x3feac7da1ec4e725              # double 0.83689599999999997
	.quad	0x3fe2c1df3300de4c              # double 0.58616599999999996
	.quad	0x3fe66f416bdb1a6d              # double 0.70108099999999995
	.quad	0x3fcd5970b49e01de              # double 0.229292
	.quad	0x3fef4d07852f7f4a              # double 0.97815300000000005
	.quad	0x3fec5c31593e5fb7              # double 0.88625399999999999
	.quad	0x3fe3013879c4113c              # double 0.59389899999999995
	.quad	0x3fe2cee17a02fb5d              # double 0.587754
	.quad	0x3fd6b51372a38b8b              # double 0.35480200000000001
	.quad	0x3fdf6cefed63454a              # double 0.49102400000000002
	.quad	0x3fdce5c91d14e3bd              # double 0.45152500000000001
	.quad	0x3fc2d740c4156e26              # double 0.14719399999999999
	.quad	0x3fe44ac29bf162ae              # double 0.63412599999999997
	.quad	0x3fb661bf37b8d3f2              # double 0.087429000000000006
	.quad	0x3fdebe22e5de15ca              # double 0.48035499999999998
	.quad	0x3feae3dc486ad2dd              # double 0.84031500000000003
	.quad	0x3fe7fea3df6db941              # double 0.749834
	.quad	0x3fdf784ec636b096              # double 0.49171799999999999
	.quad	0x3fee40767d34df05              # double 0.94536900000000001
	.quad	0x3fefb7d1fe64f54d              # double 0.99118899999999998
	.quad	0x3fefe51f3e89a88b              # double 0.99671900000000002
	.quad	0x3fe875dfeb8d8234              # double 0.76438899999999998
	.quad	0x3fbd899bf5946c33              # double 0.115381
	.quad	0x3fbba919695d91ac              # double 0.10804900000000001
	.quad	0x3fcfed6ba8c58687              # double 0.24943299999999999
	.quad	0x3fd3510d38cda6e7              # double 0.30182199999999998
	.quad	0x3fcfc0c1fc8f3238              # double 0.24807000000000001
	.quad	0x3fd6b76f6d762520              # double 0.35494599999999998
	.quad	0x3fd08eabffcdab19              # double 0.25870799999999999
	.quad	0x3febcb167ec7863c              # double 0.868541
	.quad	0x3fbc0bed740c4157              # double 0.109557
	.quad	0x3fe3b4b72c5197a2              # double 0.61580999999999997
	.quad	0x3fec83f705857aff              # double 0.89110900000000004
	.quad	0x3fe8e6f71a7e3088              # double 0.77819400000000005
	.quad	0x3fe6b0f8c64fdb0a              # double 0.70910300000000004
	.quad	0x3fe7bef49cf56ead              # double 0.74206000000000005
	.quad	0x3fdc6b8737974602              # double 0.44406299999999999
	.quad	0x3fe38d5410f94c88              # double 0.61100200000000005
	.quad	0x3fcfbb16c1e364bf              # double 0.24789700000000001
	.quad	0x3fdfc8e25c810a57              # double 0.49663600000000002
	.quad	0x3fe95c22ab25b318              # double 0.79249700000000001
	.quad	0x3fcff8db4890928a              # double 0.249782
	.quad	0x3fca431bde82d7b6              # double 0.20517299999999999
	.quad	0x3fe12176ddaceee1              # double 0.53533500000000001
	.quad	0x3fe4cdc65c70435f              # double 0.650119
	.quad	0x3fd978e9f6a93f29              # double 0.398005
	.quad	0x3fcac9e236c15d2d              # double 0.209286
	.quad	0x3fe3f625204af923              # double 0.62379700000000005
	.quad	0x3fe071c970f7b9e0              # double 0.51388999999999996
	.quad	0x3fd842f61ed5ae1d              # double 0.37908700000000001
	.quad	0x3fe36daa92e62132              # double 0.60713700000000004
	.quad	0x3fe5a0c6b484d76b              # double 0.67587600000000003
	.quad	0x3fc5ec2480e8c8ac              # double 0.171269
	.quad	0x3fe5e1cffeb074a7              # double 0.68381499999999995
	.quad	0x3fe9387379746024              # double 0.78814099999999998
	.quad	0x3fe7042528ae74f3              # double 0.71925600000000001
	.quad	0x3fec9988d2a1f8e4              # double 0.89374200000000003
	.quad	0x3fd38ab0c88a47ed              # double 0.30534
	.quad	0x3fe6f5579af1886e              # double 0.717449
	.quad	0x3fc158c8eef1bac3              # double 0.135522
	.quad	0x3feea4638c975297              # double 0.95756699999999995
	.quad	0x3fd10642396073de              # double 0.26600699999999999
	.quad	0x3fe608e15011904b              # double 0.68858399999999997
	.quad	0x3fc5eedcc20d562a              # double 0.171352
	.quad	0x3fe1e653868fd19a              # double 0.55936600000000003
	.quad	0x3fd64c2f837b4a23              # double 0.34839999999999999
	.quad	0x3fe825d074213a0c              # double 0.75461599999999995
	.quad	0x3fc3bc5de9c0229a              # double 0.15418599999999999
	.quad	0x3fefa7ed84d338f8              # double 0.98924900000000004
	.quad	0x3fd8c73eee525892              # double 0.38716099999999998
	.quad	0x3f7f4e4430b178b3              # double 0.0076429999999999996
	.quad	0x3fec05f06f694467              # double 0.87572499999999998
	.quad	0x3feadeb52c9d16fd              # double 0.83968600000000004
	.quad	0x3fb74bd76ee73e68              # double 0.091000999999999999
	.quad	0x3fc3955714b9cb68              # double 0.15299499999999999
	.quad	0x3fe16bb55ac03ff7              # double 0.54439800000000005
	.quad	0x3fd245c78a6dacac              # double 0.28550900000000001
	.quad	0x3fe3706d50657321              # double 0.60747399999999996
	.quad	0x3fc3a6e75ff609dd              # double 0.153531
	.quad	0x3fda9d55e6bc621b              # double 0.41585299999999997
	.quad	0x3fd48d92fb19e732              # double 0.32114100000000001
	.quad	0x3fda9d2bf5515055              # double 0.41584300000000002
	.quad	0x3feb75be5d9e40c8              # double 0.85812299999999997
	.quad	0x3fdf14d2f5dbb9d0              # double 0.48564600000000002
	.quad	0x3fe8deb52c9d16fd              # double 0.77718600000000004
	.quad	0x3fd5e7253da72a7c              # double 0.34223300000000001
	.quad	0x3fe29333b96af039              # double 0.58046900000000001
	.quad	0x3fd1473471f79421              # double 0.26997100000000002
	.quad	0x3feed8fd5cb790fb              # double 0.96398799999999995
	.quad	0x3fcabcad9ad85dfb              # double 0.20888300000000001
	.quad	0x3fc4b4395810624e              # double 0.16175
	.quad	0x3fd1958537e2c55d              # double 0.27475100000000002
	.quad	0x3fe41dde37585be2              # double 0.62864600000000004
	.quad	0x3fe35197a24894c4              # double 0.60370999999999997
	.quad	0x3fa71d81f10667f9              # double 0.045147
	.quad	0x3fef0d3cff64cf8d              # double 0.97036599999999995
	.quad	0x3fad6ece13f4a98b              # double 0.057486000000000002
	.quad	0x3fb6ff4ba51a005c              # double 0.089832999999999996
	.quad	0x3fe89e85fd04a2fd              # double 0.76935100000000001
	.quad	0x3fdc0fd7e45803cd              # double 0.438467
	.quad	0x3febac0c62e4d1a6              # double 0.86475199999999997
	.quad	0x3fd2b29e4d5d80e5              # double 0.29215200000000002
	.quad	0x3fc0c37e6f71a7e3              # double 0.130966
	.quad	0x3fd983c6c97d8cf4              # double 0.39866800000000002
	.quad	0x3fe3a5efe9318762              # double 0.61400600000000005
	.quad	0x3fe9c36fc158fb44              # double 0.80510700000000001
	.quad	0x3fde4c7b02d59d56              # double 0.47341800000000001
	.quad	0x3fdde0a84be40421              # double 0.466837
	.quad	0x3f7103c8e25c810a              # double 0.0041539999999999997
	.quad	0x3fbcc2d6a9c560c8              # double 0.112348
	.quad	0x3fe35a07b352a844              # double 0.60474000000000006
	.quad	0x3fa174e65bea0ba2              # double 0.034095
	.quad	0x3fe06312f4cf4a56              # double 0.51209400000000005
	.quad	0x3fd6749f0e4da09d              # double 0.35086800000000001
	.quad	0x3fed2c0c62e4d1a6              # double 0.91162699999999997
	.quad	0x3fcd38cda6e75ff6              # double 0.228296
	.quad	0x3f80fb65668c2614              # double 0.0082920000000000008
	.quad	0x3fd3209246bf0132              # double 0.29886299999999999
	.quad	0x3fdd2a5614df8b15              # double 0.45570899999999998
	.quad	0x3fc7675ddd2ae8e2              # double 0.182842
	.quad	0x3fe42391d57ff9b5              # double 0.62934199999999996
	.quad	0x3fd308f217093101              # double 0.29742099999999999
	.quad	0x3fe057b634dad320              # double 0.51070700000000002
	.quad	0x3fe50954a7f8012e              # double 0.657389
	.quad	0x3fac2b51bd61f5be              # double 0.055017999999999997
	.quad	0x3fcddcdf69878317              # double 0.23330300000000001
	.quad	0x3fc87b80a9de8b3b              # double 0.19126899999999999
	.quad	0x3fdbb8348f53c57a              # double 0.433118
	.quad	0x3fe9dbab21815a08              # double 0.80806500000000003
	.quad	0x3fd9de15ca6ca03c              # double 0.40417999999999998
	.quad	0x3fb7abc947064ecf              # double 0.092465000000000006
	.quad	0x3fda0fd3b29a1ba0              # double 0.40721600000000002
	.quad	0x3fe805a921ccd962              # double 0.750691
	.quad	0x3fd565cf67b1c001              # double 0.334339
	.quad	0x3f9d6d7e889c1b54              # double 0.028738
	.quad	0x3fdd35daad601ffb              # double 0.45641199999999998
	.quad	0x3fd7b7d41743e964              # double 0.37059500000000001
	.quad	0x3fee0b0af5fd47bf              # double 0.93884800000000002
	.quad	0x3fe43fa0945f9df5              # double 0.63276699999999997
	.quad	0x3fcd22856605ee57              # double 0.22761600000000001
	.quad	0x3fe2083fd5022574              # double 0.56350699999999998
	.quad	0x3fe8f8c868b9fdbd              # double 0.78036899999999998
	.quad	0x3feb6f32bdc26dce              # double 0.85732399999999997
	.quad	0x3fe61b7e0ac7da1f              # double 0.69085600000000003
	.quad	0x3f9e136e71cda2b6              # double 0.029371000000000001
	.quad	0x3fe2e3f572de43ee              # double 0.59032700000000005
	.quad	0x3fe23dd97f62b6ae              # double 0.57004999999999995
	.quad	0x3fecdf6ba0620ab7              # double 0.90227299999999999
	.quad	0x3fe59ae0c1765775              # double 0.67515599999999998
	.quad	0x3fa4768dfbd6a594              # double 0.039967000000000003
	.quad	0x3fe7a7c393682731              # double 0.73922900000000002
	.quad	0x3fb76ae7d566cf42              # double 0.091475
	.quad	0x3fe6503b81b64e05              # double 0.69729399999999997
	.quad	0x3fef8468448cf7cb              # double 0.98491300000000003
	.quad	0x3fe0496cc5fbf834              # double 0.50896300000000005
	.quad	0x3fd8fcd24e160d88              # double 0.39043099999999997
	.quad	0x3f9368f08461f9f0              # double 0.018955
	.quad	0x3fe7d30ad46f587d              # double 0.74451199999999995
	.quad	0x3fd85d13d74d594f              # double 0.38068099999999999
	.quad	0x3fd7de3fbbd7b203              # double 0.37293999999999999
	.quad	0x3fe82a0a958537e3              # double 0.75513200000000003
	.quad	0x3fe38be7296f6513              # double 0.61082800000000004
	.quad	0x3fe22fbc1acde1a0              # double 0.56832700000000003
	.quad	0x3fe572bcb5fe542e              # double 0.67025599999999996
	.quad	0x3fb46b26bf8769ec              # double 0.079759999999999998
	.quad	0x3fc4ed56b00ffda4              # double 0.163493
	.quad	0x3fc4e6106ab14ec2              # double 0.163271
	.quad	0x3fe5d40aaeafab54              # double 0.68213400000000002
	.quad	0x3fe781fd9ba1b196              # double 0.73461799999999999
	.quad	0x3fda75c4a83b1d0d              # double 0.41343800000000003
	.quad	0x3fce04ea4a8c154d              # double 0.23452500000000001
	.quad	0x3fdd4f227d028a1e              # double 0.457955
	.quad	0x3fe27ee9142b302f              # double 0.57799199999999995
	.quad	0x3fe7d2b4d8ba40d9              # double 0.74447099999999999
	.quad	0x3f85aaf78feef5ed              # double 0.010580000000000001
	.quad	0x3fd4ea9e6eeb7026              # double 0.32682
	.quad	0x3feef064ece9a2c6              # double 0.96684499999999995
	.quad	0x3fb39c7368ad6883              # double 0.076605999999999994
	.quad	0x3fc55d78811b1d93              # double 0.16691500000000001
	.quad	0x3fe9e12839042d8c              # double 0.80873499999999998
	.quad	0x3fd68c32a8c9b845              # double 0.35230699999999998
	.quad	0x3fdfa2df9378ee28              # double 0.49431599999999998
	.quad	0x3fe27c2224edf612              # double 0.57765299999999997
	.quad	0x3fe4147496aad1d0              # double 0.62749699999999997
	.quad	0x3fd27a2cecc814d7              # double 0.28870699999999999
	.quad	0x3f9be878fabda0e0              # double 0.027254
	.quad	0x3fed492ddbdb5d89              # double 0.91518299999999997
	.quad	0x3fd8f87ad080b674              # double 0.39016600000000001
	.quad	0x3fd584e3ffef3908              # double 0.33623599999999998
	.quad	0x3fe5522856605ee5              # double 0.66627899999999995
	.quad	0x3fd1e0114d2f5dbc              # double 0.27930100000000002
	.quad	0x3fdee7c8d195896a              # double 0.48289700000000002
	.quad	0x3fdaa52263d816ad              # double 0.416329
	.quad	0x3fedd40aaeafab54              # double 0.93213400000000001
	.quad	0x3febf94ea077036d              # double 0.87418300000000004
	.quad	0x3fe725f84cad57bc              # double 0.72338499999999994
	.quad	0x3fd39d4d834091c1              # double 0.30647600000000003
	.quad	0x3fe472990f301eac              # double 0.63898900000000003
	.quad	0x3fea496cc5fbf834              # double 0.82146300000000005
	.quad	0x3fe4f7f06705c897              # double 0.65526600000000002
	.quad	0x3fd4e4217d2849cb              # double 0.32642399999999999
	.quad	0x3fe6ef4384ba0e84              # double 0.71670699999999998
	.quad	0x3fe6a97396d0917d              # double 0.70818499999999995
	.quad	0x3f6b1b79d909f1f1              # double 0.0033089999999999999
	.quad	0x3fd531c64ba94bbe              # double 0.33116299999999999
	.quad	0x3fc7ac3eb7cbb3c8              # double 0.184944
	.quad	0x3fdf95a294141e9b              # double 0.493508
	.quad	0x3fbf4f0d844d013b              # double 0.12230000000000001
	.quad	0x3fd8f0ae536501e2              # double 0.38968999999999998
	.quad	0x3fe7805a2d72ffd2              # double 0.73441800000000002
	.quad	0x3fa0a7c5ac471b48              # double 0.032530000000000003
	.quad	0x3fe173797460242d              # double 0.545346
	.quad	0x3fc33836a832b991              # double 0.15015300000000001
	.quad	0x3fe41919ac79702e              # double 0.62806399999999996
	.quad	0x3fed451b93037d63              # double 0.914686
	.quad	0x3fec514e3bcd35a8              # double 0.88492499999999996
	.quad	0x3fd8dfe75bc44bf5              # double 0.38866600000000001
	.quad	0x3fe5487980f55de6              # double 0.66509700000000005
	.quad	0x3fd912b1b36bd2b7              # double 0.391766
	.quad	0x3fe007c84b5dcc64              # double 0.50095000000000001
	.quad	0x3fcdf4d37c1376d5              # double 0.23403399999999999
	.quad	0x3fbff3ade225fa66              # double 0.12481200000000001
	.quad	0x3fd614d72799a1fd              # double 0.345022
	.quad	0x3fe771e8e6080735              # double 0.73265499999999995
	.quad	0x3f92b3892ee84ad8              # double 0.018263000000000001
	.quad	0x3fc16b11c6d1e109              # double 0.13608000000000001
	.quad	0x3fdf64f97edc7ef1              # double 0.49053799999999997
	.quad	0x3fd52d38476f2a5a              # double 0.33088499999999998
	.quad	0x3fcc45baf533f423              # double 0.22087799999999999
	.quad	0x3fb5187e7c06e19c              # double 0.082405000000000006
	.quad	0x3fba9f383f0bae8a              # double 0.103992
	.quad	0x3fd8e21101b00368              # double 0.38879799999999998
	.quad	0x3fe4c906034f3fd9              # double 0.64953899999999998
	.quad	0x3fea83b60285ec3e              # double 0.82857800000000004
	.quad	0x3fdad1b71758e219              # double 0.41904999999999998
	.quad	0x3fdc57de0d66f0d0              # double 0.44286300000000001
	.quad	0x3fd1059210385c68              # double 0.26596500000000001
	.quad	0x3fd03b70ef566491              # double 0.25362800000000002
	.quad	0x3fea6caeea63b689              # double 0.82576700000000003
	.quad	0x3fe28c5004fb1184              # double 0.57962800000000003
	.quad	0x3fcd3ae685db76b4              # double 0.22836000000000001
	.quad	0x3fbabd7f51efb6dd              # double 0.10445400000000001
	.quad	0x3fd429888f861a61              # double 0.31503500000000001
	.quad	0x3fed5de37585be1b              # double 0.91771100000000005
	.quad	0x3f9c7c957cd466f5              # double 0.027819
	.quad	0x3fdebd1244a6223e              # double 0.48028999999999999
	.quad	0x3fdcc88e79aae6c9              # double 0.449741
	.quad	0x3fdc5379fa97e133              # double 0.44259500000000002
	.quad	0x3fdad805e5f30e80              # double 0.419435
	.quad	0x3fbfaa79bbadc098              # double 0.123695
	.quad	0x3fec50d0678c0054              # double 0.88486500000000001
	.quad	0x3feea02d9cf13cef              # double 0.95705300000000004
	.quad	0x3fd47f498c3b0c46              # double 0.32026900000000003
	.quad	0x3fdc9f94855da273              # double 0.44724000000000003
	.quad	0x3fc0706d50657321              # double 0.12843099999999999
	.quad	0x3fd4b14a90470a81              # double 0.32332100000000003
	.quad	0x3fe25cee17a02fb6              # double 0.57384400000000002
	.quad	0x3fe3f45e0b4e11dc              # double 0.62358000000000002
	.quad	0x3fe36d549731098d              # double 0.60709599999999997
	.quad	0x3fd9cf13cee9dd7f              # double 0.40326400000000001
	.quad	0x3fc09320d9945b6c              # double 0.12948999999999999
	.quad	0x3fe3df2239e6ab9b              # double 0.62098799999999998
	.quad	0x3fee112fd32c625f              # double 0.93959800000000004
	.quad	0x3fa4304ccee5abc1              # double 0.039431000000000001
	.quad	0x3fc7edfa43fe5c92              # double 0.18695000000000001
	.quad	0x3fe9217b0f6ad70e              # double 0.78533699999999995
	.quad	0x3fe3fe6f71a7e308              # double 0.62480899999999995
	.quad	0x3fdbfdd65a14488c              # double 0.43736799999999998
	.quad	0x3f9a858793dd97f6              # double 0.025899999999999999
	.quad	0x3fd89210385c67e0              # double 0.38391500000000001
	.quad	0x3fdca8262456f75e              # double 0.44776300000000002
	.quad	0x3fd5996b76709fa5              # double 0.33748899999999998
	.quad	0x3fe515464dc22ab2              # double 0.65884699999999996
	.quad	0x3feae1f7d73c9258              # double 0.84008400000000005
	.quad	0x3fe321294573a798              # double 0.59779800000000005
	.quad	0x3fc74f82f5126634              # double 0.182114
	.quad	0x3fe9334e7685985b              # double 0.78751300000000002
	.quad	0x3fdc49c2c1b10fd8              # double 0.44200200000000001
	.quad	0x3feabfbdf090f734              # double 0.83590600000000003
	.quad	0x3fed4c4ef88b9778              # double 0.91556499999999996
	.quad	0x3fecff822bbecaac              # double 0.90619000000000005
	.quad	0x3fda6c54bcf0b6b7              # double 0.41286200000000001
	.quad	0x3fec8e368f084620              # double 0.89236000000000004
	.quad	0x3fce24bba12b5e53              # double 0.23549600000000001
	.quad	0x3fdf4ce8101f31f4              # double 0.48906899999999998
	.quad	0x3fe70f66a5508701              # double 0.72062999999999999
	.quad	0x3fd5c0d2c386d2ed              # double 0.33989399999999997
	.quad	0x3fef974c4cdfaca3              # double 0.98721899999999995
	.quad	0x3f8269595feda661              # double 0.0089899999999999997
	.quad	0x3fdb5729b280f12c              # double 0.42719499999999999
	.quad	0x3fed603b3e9a6f82              # double 0.91799699999999995
	.quad	0x3fd4f75d9a0f0a5f              # double 0.327598
	.quad	0x3fcb1ed17c5ef630              # double 0.21187800000000001
	.quad	0x3fd2df47f993d534              # double 0.29487799999999997
	.quad	0x3fea67210be9424e              # double 0.82508899999999996
	.quad	0x3fbe7589efd86a90              # double 0.118981
	.quad	0x3fe98d2c386d2ed8              # double 0.79848300000000005
	.quad	0x3feb0c5436b8f9b1              # double 0.84525499999999998
	.quad	0x3fe41780baa582dc              # double 0.62786900000000001
	.quad	0x3fe889df1172ef0b              # double 0.76683000000000001
	.quad	0x3feaa68f4b61fe22              # double 0.83283200000000002
	.quad	0x3fd6ce4a7b4e54f8              # double 0.35634100000000002
	.quad	0x3fc6fa15db3397dd              # double 0.179507
	.quad	0x3fdcfe69270b06c4              # double 0.45302799999999999
	.quad	0x3fd564840e1719f8              # double 0.33426
	.quad	0x3f91ab8e8ea39c52              # double 0.017256000000000001
	.quad	0x3fb43e5321e603d5              # double 0.079075999999999994
	.quad	0x3fe635d894812be5              # double 0.69407300000000005
	.quad	0x3fe9367e414e7ee9              # double 0.78790199999999999
	.quad	0x3fe3a1d10b1feeb3              # double 0.61350300000000002
	.quad	0x3fdba23bff8a8f3b              # double 0.43177700000000002
	.quad	0x3fdeb4bb5e0f7fd0              # double 0.47978100000000001
	.quad	0x3fdfd87f88765ba7              # double 0.497589
	.quad	0x3fb495af294dd723              # double 0.080408999999999994
	.quad	0x3feba26c3b927d46              # double 0.86357700000000004
	.quad	0x3fe1fbdcf0307f24              # double 0.56199500000000002
	.quad	0x3fe0911276fb0920              # double 0.51770899999999997
	.quad	0x3fce11a975afaf86              # double 0.23491400000000001
	.quad	0x3fe7cc2938de6ddf              # double 0.743672
	.quad	0x3fd732f01754b05b              # double 0.36248399999999997
	.quad	0x3fef8f2389720429              # double 0.98622299999999996
	.quad	0x3fed1d6cf850df16              # double 0.90984200000000004
	.quad	0x3fea8dd3fe1975f3              # double 0.82981300000000002
	.quad	0x3fdfc0b135979182              # double 0.49613600000000002
	.quad	0x3fda7af20ea5b531              # double 0.41375400000000001
	.quad	0x3f85ef1fddebd902              # double 0.010710000000000001
	.quad	0x3fe3d0ce4ead0c3d              # double 0.61923899999999998
	.quad	0x3feaf0ed3d859c8d              # double 0.84191000000000005
	.quad	0x3fe72e9680e06530              # double 0.724437
	.quad	0x3fe06b7cbb3c8191              # double 0.51312100000000005
	.quad	0x3fdfc95bff04577e              # double 0.49666500000000002
	.quad	0x3fd832a497fa5d29              # double 0.37809100000000001
	.quad	0x3fd4aab042528ae7              # double 0.32291799999999998
	.quad	0x3feeeabbcb1cc964              # double 0.96615399999999995
	.quad	0x3fd010060780fdc1              # double 0.25097799999999998
	.quad	0x3fe3cb641700cd85              # double 0.61857799999999996
	.quad	0x3fdad199bb2788db              # double 0.419043
	.quad	0x3fca3dbc23315d70              # double 0.205009
	.quad	0x3fe6e82b62845996              # double 0.71584099999999995
	.quad	0x3fe25ee34fc610f1              # double 0.57408300000000001
	.quad	0x3fdb66c2acb85a4f              # double 0.428147
	.quad	0x3fee151c5c5718ec              # double 0.94007700000000005
	.quad	0x3fe8ca03c4b09e99              # double 0.77466000000000002
	.quad	0x3fec492146a1a501              # double 0.88392700000000002
	.quad	0x3fd0506573215fcc              # double 0.25490699999999999
	.quad	0x3feaf36049ecb31c              # double 0.84220899999999998
	.quad	0x3fd997a67a52ac75              # double 0.39988099999999999
	.quad	0x3fe8bfc2224edf61              # double 0.77340799999999998
	.quad	0x3fc39de481f53826              # double 0.153256
	.quad	0x3f93d5bab21815a0              # double 0.019369999999999998
	.quad	0x3fca75360d024702              # double 0.206702
	.quad	0x3fdcddb5525cc426              # double 0.45103199999999999
	.quad	0x3fec1ede1198aeb8              # double 0.87876799999999999
	.quad	0x3fecbf290abb44e5              # double 0.89833499999999999
	.quad	0x3fc8eb80ecfa69be              # double 0.194687
	.quad	0x3feb05d95dd4c76d              # double 0.84446399999999999
	.quad	0x3fe9d515054ac29c              # double 0.807261
	.quad	0x3fec484d76ab5808              # double 0.883826
	.quad	0x3fe9d37c1376d549              # double 0.80706599999999995
	.quad	0x3fc5220ff540895d              # double 0.165102
	.quad	0x3feca11ec918e326              # double 0.89466800000000002
	.quad	0x3fd98b220791c4b9              # double 0.399117
	.quad	0x3fe33b3c81908e58              # double 0.60098099999999999
	.quad	0x3fda4bc27631b585              # double 0.41087400000000002
	.quad	0x3fd17a41e57d9dbb              # double 0.27308700000000002
	.quad	0x3fe6cdf266ba493d              # double 0.71264000000000005
	.quad	0x3fe08d002e2328fa              # double 0.51721200000000001
	.quad	0x3fefdfce3150dae4              # double 0.99607000000000001
	.quad	0x3fdeb9a176ddacef              # double 0.48008000000000001
	.quad	0x3fd83126e978d4fe              # double 0.378
	.quad	0x3fb153ac4f7ec354              # double 0.067682999999999993
	.quad	0x3fd2684cf0739b02              # double 0.28761599999999998
	.quad	0x3fc92c7325918a01              # double 0.19666900000000001
	.quad	0x3fd14916ca46e08f              # double 0.27008599999999999
	.quad	0x3feed3b4b2fa93af              # double 0.96334299999999994
	.quad	0x3fed5b39e279dd3c              # double 0.91738600000000003
	.quad	0x3fd38754f3775b81              # double 0.30513499999999999
	.quad	0x3fe5a54c55432874              # double 0.67642800000000003
	.quad	0x3fc615c209246bf0              # double 0.172539
	.quad	0x3fee062b27cbf6e4              # double 0.938253
	.quad	0x3fd5d5cfaacd9e84              # double 0.34117500000000001
	.quad	0x3fe1b9d1b2e59afa              # double 0.55393300000000001
	.quad	0x3fea3621fafc8b00              # double 0.81910799999999995
	.quad	0x3fec634117f8444a              # double 0.88711600000000002
	.quad	0x3fb9da059a73b42d              # double 0.100983
	.quad	0x3fe391dde37585be              # double 0.61155599999999999
	.quad	0x3fd4209aaa3ad18d              # double 0.31448999999999999
	.quad	0x3fe94710cb295e9e              # double 0.78992499999999999
	.quad	0x3fe4327674d16335              # double 0.63116000000000005
	.quad	0x3feba517e77d523b              # double 0.86390299999999998
	.quad	0x3fd0122fad6cb535              # double 0.25111
	.quad	0x3fc10257c914b168              # double 0.132884
	.quad	0x3fdac23315d701da              # double 0.418103
	.quad	0x3fe7eec9e236c15d              # double 0.74789899999999998
	.quad	0x3feb28997c3d6840              # double 0.84870599999999996
	.quad	0x3fd7a6a875d56f33              # double 0.36954700000000001
	.quad	0x3fe9f7dfa00e27e1              # double 0.81150800000000001
	.quad	0x3fa8e368f08461fa              # double 0.04861
	.quad	0x3fe9235b4edb2f66              # double 0.78556599999999999
	.quad	0x3fed41d4b6a619db              # double 0.91428600000000004
	.quad	0x3fef09289dadfb50              # double 0.96986799999999995
	.quad	0x3fe2389d6adf71eb              # double 0.569411
	.quad	0x3fd63bbc6eb0b7c3              # double 0.34739599999999998
	.quad	0x3fda2b777d0f1f58              # double 0.40890300000000002
	.quad	0x3fb559c49774256c              # double 0.083401000000000003
	.quad	0x3fe1e957470eb24a              # double 0.55973399999999995
	.quad	0x3fe5d82ba5a03819              # double 0.68263799999999997
	.quad	0x3fd459fb1e18efbb              # double 0.317992
	.quad	0x3fda17b95a294142              # double 0.407698
	.quad	0x3fe40a958537e2c5              # double 0.62629199999999996
	.quad	0x3fda2b12d3415b14              # double 0.40887899999999999
	.quad	0x3faab5c39bcba301              # double 0.052167999999999999
	.quad	0x3fd7a9973d9ec700              # double 0.369726
	.quad	0x3fc6583e8576cce6              # double 0.174568
	.quad	0x3feb9ae0c1765775              # double 0.86265599999999998
	.quad	0x3fe6d8dde7a743a6              # double 0.71397299999999997
	.quad	0x3fea58b827fa1a0d              # double 0.82333000000000001
	.quad	0x3fd3d4e8fb00bcbe              # double 0.30986999999999998
	.quad	0x3fd238bcdfefbf40              # double 0.28471299999999999
	.quad	0x3fc71a86940357a3              # double 0.18049699999999999
	.quad	0x3fed9cae21101b00              # double 0.92537599999999998
	.quad	0x3fe2b3f85510d38d              # double 0.58446900000000002
	.quad	0x3fd8cf70153bd167              # double 0.38766099999999998
	.quad	0x3fd68398a65492ff              # double 0.35178199999999998
	.quad	0x3fef2f6a50d6b229              # double 0.97453800000000001
	.quad	0x3fbe9888f861a60d              # double 0.119515
	.quad	0x3fe9f980f55de58e              # double 0.81170699999999996
	.quad	0x3fd47f6f4be835df              # double 0.32027800000000001
	.quad	0x3fe50216c61522a7              # double 0.65650500000000001
	.quad	0x3fd37d1782d38477              # double 0.30451
	.quad	0x3fb61c044284dfce              # double 0.086364999999999997
	.quad	0x3fed6c6bce8533b1              # double 0.919485
	.quad	0x3fd00257c914b168              # double 0.250143
	.quad	0x3fe02033e78e1933              # double 0.50393100000000002
	.quad	0x3fe0c343b70ef566              # double 0.52383599999999997
	.quad	0x3fe2efd86a8fc0d3              # double 0.59177800000000003
	.quad	0x3fe071dc50ce4ead              # double 0.51389899999999999
	.quad	0x3fe101ba7fc32ebe              # double 0.53146099999999996
	.quad	0x3fe60870110a137f              # double 0.68852999999999998
	.quad	0x3fe7ac40d0aaa7df              # double 0.73977700000000002
	.quad	0x3fecdac8a3726070              # double 0.90170700000000004
	.quad	0x3fb3e7296f6512a9              # double 0.077745999999999996
	.quad	0x3fe6c03bc4d22c88              # double 0.71096599999999999
	.quad	0x3fc93fc86cebbba5              # double 0.19725899999999999
	.quad	0x3fb65907d912556d              # double 0.087295999999999999
	.quad	0x3fe70448cf7caa76              # double 0.71927300000000005
	.quad	0x3fd5bd66277c45cc              # double 0.33968500000000001
	.quad	0x3fe638fde2ef4e01              # double 0.69445699999999999
	.quad	0x3fddf00abf76a2f5              # double 0.46777600000000003
	.quad	0x3feffb1e18efbb0e              # double 0.99940399999999996
	.quad	0x3fac0bbb1f255f35              # double 0.054776999999999999
	.quad	0x3fd2bc903ea704bc              # double 0.29275899999999999
	.quad	0x3fc0a24cc6822ff1              # double 0.12995300000000001
	.quad	0x3fe2bcba30121683              # double 0.585538
	.quad	0x3fdf23854046412d              # double 0.486543
	.quad	0x3fd0ce3150dae3e7              # double 0.26258500000000001
	.quad	0x3feffe047d3d4281              # double 0.99975800000000003
	.quad	0x3fefe236c15d2d02              # double 0.99636400000000003
	.quad	0x3fe1253da72a7bd5              # double 0.53579600000000005
	.quad	0x3febd017dae81883              # double 0.86915200000000004
	.quad	0x3fdc3a3a8e71476b              # double 0.441054
	.quad	0x3fb2bd7f51efb6dd              # double 0.073204000000000005
	.quad	0x3fd691d57ff9b563              # double 0.35265099999999999
	.quad	0x3fbe03c4b09e98dd              # double 0.117245
	.quad	0x3fe97d45a5fc7e6b              # double 0.79654199999999997
	.quad	0x3fda59103c8e25c8              # double 0.411686
	.quad	0x3fb90b84988094e6              # double 0.097832000000000002
	.quad	0x3fd2eaf6837f7be1              # double 0.29559099999999999
	.quad	0x3fe06c28b2a6b0d9              # double 0.51320299999999996
	.quad	0x3fdd2ec6bce8533b              # double 0.45598
	.quad	0x3f9685985ad538ac              # double 0.021994
	.quad	0x3fe3a47ecfe9b7bf              # double 0.61382999999999999
	.quad	0x3fedbb0813cab820              # double 0.92908100000000004
	.quad	0x3fec817dae81882b              # double 0.89080700000000002
	.quad	0x3fdbdad7518b0d0f              # double 0.43523200000000001
	.quad	0x3feb80c0f01fb82c              # double 0.85946699999999998
	.quad	0x3fd7c308feac42ea              # double 0.37127900000000003
	.quad	0x3feac5fbf83382e4              # double 0.83666799999999996
	.quad	0x3fd7214ad362e903              # double 0.36140699999999998
	.quad	0x3fcd00ffda4052d6              # double 0.22659299999999999
	.quad	0x3fd07d1782d38477              # double 0.257635
	.quad	0x3fe17ad080b673c5              # double 0.54624200000000001
	.quad	0x3fc8fd6d7e889c1b              # double 0.19523399999999999
	.quad	0x3fd83a0407cc7d1c              # double 0.37854100000000002
	.quad	0x3fe80c3d25247cb7              # double 0.751494
	.quad	0x3f81b8aa00192a73              # double 0.0086529999999999992
	.quad	0x3fc9a41e57d9dba9              # double 0.200321
	.quad	0x3fdfbcdfefbf401c              # double 0.49590299999999998
	.quad	0x3fe206940357a355              # double 0.563303
	.quad	0x3fe06586013660e5              # double 0.51239299999999999
	.quad	0x3fb3e6e653868fd2              # double 0.077742000000000005
	.quad	0x3febfb15b573eab3              # double 0.87439999999999996
	.quad	0x3fd274751ce28ed6              # double 0.288358
	.quad	0x3fe6b6bb1290257d              # double 0.70980600000000005
	.quad	0x3fd1cb46bacf7447              # double 0.278032
	.quad	0x3fbf1465e8922531              # double 0.121405
	.quad	0x3fe3f6f8f041461b              # double 0.62389799999999995
	.quad	0x3fd3ccc89b0ee49f              # double 0.30937399999999998
	.quad	0x3fefd5193708aac9              # double 0.99476299999999995
	.quad	0x3fedcd2b2bfdb4cc              # double 0.93129499999999998
	.quad	0x3fef13ea2d2fe3f3              # double 0.97118099999999996
	.quad	0x3feb77a7008a697b              # double 0.85835600000000001
	.quad	0x3fbe6117720c8cd6              # double 0.118669
	.quad	0x3fdbd3dc8b86b160              # double 0.43480600000000003
	.quad	0x3fee44da9003eea2              # double 0.945905
	.quad	0x3fe965dbfceb7889              # double 0.79368399999999995
	.quad	0x3fdccddd6e04c059              # double 0.45006499999999999
	.quad	0x3fce9246bf01322f              # double 0.238839
	.quad	0x3fedda3c21187e7c              # double 0.93288999999999999
	.quad	0x3fd935c5b4aa9718              # double 0.39390700000000001
	.quad	0x3fd562d83c6c97d9              # double 0.33415800000000001
	.quad	0x3fe51960fa15db34              # double 0.65934800000000005
	.quad	0x3fdd93faf42784a9              # double 0.46215699999999998
	.quad	0x3fe0b250b524399b              # double 0.52176699999999998
	.quad	0x3fe01a719b4dcec0              # double 0.50322800000000001
	.quad	0x3fba9a4df47f993d              # double 0.103917
	.quad	0x3fe66991ff7164c7              # double 0.70038699999999998
	.quad	0x3fe758afc47e49b2              # double 0.729576
	.quad	0x3fe2beb18116ebd5              # double 0.58577800000000002
	.quad	0x3fea8b6d86ec17ec              # double 0.82952000000000003
	.quad	0x3fdbc60029f16b12              # double 0.43396000000000001
	.quad	0x3fda1d2e0e30446b              # double 0.40803099999999998
	.quad	0x3febd013a92a3055              # double 0.86914999999999998
	.quad	0x3fe332e1693c03bc              # double 0.59996099999999997
	.quad	0x3fe4978b3700474e              # double 0.64349900000000004
	.quad	0x3fe5060780fdc161              # double 0.65698599999999996
	.quad	0x3fd2fc5cdd50a88f              # double 0.296653
	.quad	0x3fc49e2bcf91a32b              # double 0.161077
	.quad	0x3f739a7c17a89332              # double 0.0047860000000000003
	.quad	0x3fdd9085f4a1272d              # double 0.46194600000000002
	.quad	0x3fcd609dcf893faf              # double 0.22951099999999999
	.quad	0x3fd7757d5a9eb207              # double 0.36654599999999998
	.quad	0x3fd2cc3e3193f6c2              # double 0.29371599999999998
	.quad	0x3fc9c4b09e98dcdb              # double 0.20131499999999999
	.quad	0x3fdf76af89c5e6ff              # double 0.49161899999999997
	.quad	0x3fed177ea1c68ec5              # double 0.90911799999999998
	.quad	0x3fb900c521dda05a              # double 0.097668000000000004
	.quad	0x3fe218e10cf5b1c8              # double 0.56553699999999996
	.quad	0x3fcf8dcdb37c99af              # double 0.24651500000000001
	.quad	0x3fedf78dd616f86a              # double 0.936469
	.quad	0x3fe10f9f44d44567              # double 0.53315699999999999
	.quad	0x3fe6e01ffb480a5b              # double 0.71485900000000002
	.quad	0x3fce19d2391d5800              # double 0.23516300000000001
	.quad	0x3fbbaebc408d8ec9              # double 0.108135
	.quad	0x3fe319ce075f6fd2              # double 0.59689999999999999
	.quad	0x3fc108bb906466b2              # double 0.133079
	.quad	0x3fd8122b7baecd08              # double 0.37610900000000003
	.quad	0x3fae0b2c83ec892b              # double 0.058679000000000002
	.quad	0x3fee90fd7e45803d              # double 0.95519900000000002
	.quad	0x3fcf87724fa8b4c0              # double 0.24632100000000001
	.quad	0x3fd529d40ee06d94              # double 0.33067800000000003
	.quad	0x3f9cefed634549b6              # double 0.028258999999999999
	.quad	0x3fe182ff8ec0f883              # double 0.54724099999999998
	.quad	0x3f9a444178705426              # double 0.025651
	.quad	0x3fcd0ecb74ddf86e              # double 0.22701399999999999
	.quad	0x3fde709fa54c5543              # double 0.47562399999999999
	.quad	0x3fd09c5a3e39f773              # double 0.25954300000000002
	.quad	0x3fc58d60a6330510              # double 0.168377
	.quad	0x3fd04806290eed03              # double 0.25439600000000001
	.quad	0x3fdc60c7c0f45176              # double 0.443407
	.quad	0x3feb15421c044285              # double 0.84634500000000001
	.quad	0x3fb620ff540895d1              # double 0.086441000000000004
	.quad	0x3feb5b0142f61ed6              # double 0.85485900000000004
	.quad	0x3fdc527e5215768a              # double 0.44253500000000001
	.quad	0x3fdadc981beb1811              # double 0.41971399999999998
	.quad	0x3fd07739f340d4dc              # double 0.25727699999999998
	.quad	0x3fc6777079e59f2c              # double 0.17552000000000001
	.quad	0x3fc3547e06961c37              # double 0.15101600000000001
	.quad	0x3fd9614df8b15726              # double 0.39656400000000003
	.quad	0x3fbe9aa1d755bccb              # double 0.119547
	.quad	0x3fbb39e279dd3bb0              # double 0.106352
	.quad	0x3fdcb4bf8fcd67fd              # double 0.44853199999999999
	.quad	0x3fe057c4e2f37fbf              # double 0.510714
	.quad	0x3fd3685122318330              # double 0.30324200000000001
	.quad	0x3fd90913a4f8726d              # double 0.391179
	.quad	0x3fe4c864883fd502              # double 0.64946199999999998
	.quad	0x3fce460ed80a17b1              # double 0.236513
	.quad	0x3fd8b1af3a14cec4              # double 0.38584499999999999
	.quad	0x3fd07abb8800eae2              # double 0.25749100000000003
	.quad	0x3fba0f6f08cc575c              # double 0.101798
	.quad	0x3fe8e76640a6b93d              # double 0.77824700000000002
	.quad	0x3fbba786c226809d              # double 0.108025
	.quad	0x3fedf4d7add15f03              # double 0.93613800000000003
	.quad	0x3fe79a027525460b              # double 0.73755000000000004
	.quad	0x3feb9595feda6613              # double 0.86201000000000005
	.quad	0x3fbd288ce703afb8              # double 0.1139
	.quad	0x3fe2b649d388a8b1              # double 0.58475200000000005
	.quad	0x3feaf991bc558644              # double 0.84296499999999996
	.quad	0x3fef13e5fb71fbc6              # double 0.97117900000000001
	.quad	0x3feab775b8130165              # double 0.83489500000000005
	.quad	0x3fe6489d27c39368              # double 0.69636399999999998
	.quad	0x3fe419439de481f5              # double 0.62808399999999998
	.quad	0x3fed59a0f0a5efe9              # double 0.91719099999999998
	.quad	0x3fb81d5c31593e60              # double 0.094198000000000003
	.quad	0x3fd2cf9e3864cb5c              # double 0.29392200000000002
	.quad	0x3fdf4ff865d7cb2e              # double 0.48925600000000002
	.quad	0x3fe0230b9dc2f406              # double 0.504278
	.quad	0x3fd889613d31b9b6              # double 0.38338499999999998
	.quad	0x3fcb10342aa9f7b6              # double 0.21143200000000001
	.quad	0x3fe8736049ecb31c              # double 0.76408399999999998
	.quad	0x3fe257afea3df6dc              # double 0.57320400000000005
	.quad	0x3fedd2c386d2ed78              # double 0.93197799999999997
	.quad	0x3fc072c94b380cb7              # double 0.12850300000000001
	.quad	0x3fec34a66559f6ec              # double 0.88142699999999996
	.quad	0x3fdeebdd334c5da7              # double 0.48314600000000002
	.quad	0x3feec20b3d4ae42a              # double 0.96118700000000001
	.quad	0x3fab4d056c508b33              # double 0.053322000000000001
	.quad	0x3fe1e64f54d1e96c              # double 0.55936399999999997
	.quad	0x3fbbc71d60631727              # double 0.10850700000000001
	.quad	0x3fd27a41e57d9dbb              # double 0.28871200000000002
	.quad	0x3fe9a919695d91ac              # double 0.80189200000000004
	.quad	0x3fcaa2db61bb05fb              # double 0.208095
	.quad	0x3f82a27f1b691212              # double 0.0090989999999999994
	.quad	0x3fe47c7607c419a0              # double 0.64019300000000001
	.quad	0x3fe4f8bbd3804535              # double 0.65536300000000003
	.quad	0x3fd27485e3da2f8c              # double 0.28836200000000001
	.quad	0x3fe1c0379314445b              # double 0.55471400000000004
	.quad	0x3f9670196d8f4f94              # double 0.021912000000000001
	.quad	0x3fe21adea897635e              # double 0.56577999999999995
	.quad	0x3fea43dee78183f9              # double 0.82078499999999999
	.quad	0x3fd15d18090b417d              # double 0.27130700000000002
	.quad	0x3fd97a8d64d7f0ed              # double 0.39810499999999999
	.quad	0x3f82990f301eabbd              # double 0.0090810000000000005
	.quad	0x3fdedc7ef177a701              # double 0.48220800000000003
	.quad	0x3fe8dccc89b0ee4a              # double 0.776953
	.quad	0x3fd65b20b8066c2b              # double 0.34931200000000001
	.quad	0x3fe480c308feac43              # double 0.64071800000000001
	.quad	0x3fd48b26394face6              # double 0.32099299999999997
	.quad	0x3fc9cd5f99c38b05              # double 0.20158000000000001
	.quad	0x3feecbdba0a52696              # double 0.96238500000000005
	.quad	0x3fd1ffde7210be94              # double 0.28124199999999999
	.quad	0x3fe61f57b41bfbdf              # double 0.691326
	.quad	0x3fc245b291b823c8              # double 0.14275199999999999
	.quad	0x3fd9f2990f301eac              # double 0.40543200000000001
	.quad	0x3fe692d77318fc50              # double 0.70542499999999997
	.quad	0x3fd28198f1d3ed52              # double 0.28915999999999997
	.quad	0x3fd5a42aed139431              # double 0.33814499999999997
	.quad	0x3fe81db445ed4a1b              # double 0.75362600000000002
	.quad	0x3fe56aaf35e310dc              # double 0.66927300000000001
	.quad	0x3fe5d794a6eb91b4              # double 0.68256600000000001
	.quad	0x3fcee2da554b8bf0              # double 0.24129800000000001
	.quad	0x3fe28b6523704791              # double 0.57951600000000003
	.quad	0x3fe66a832b990afe              # double 0.70050199999999996
	.quad	0x3fe92ce67d77fae3              # double 0.78673099999999996
	.quad	0x3faa32f449129889              # double 0.05117
	.quad	0x3fe1a467be553ac5              # double 0.551319
	.quad	0x3fee0114d2f5dbba              # double 0.93763200000000002
	.quad	0x3fcd3cbc48f10a9a              # double 0.22841600000000001
	.quad	0x3fe6e2eb1c432ca5              # double 0.71519999999999995
	.quad	0x3feca48d7e02645e              # double 0.89508699999999997
	.quad	0x3fa215db3397dd01              # double 0.035323
	.quad	0x3fe89d5c31593e60              # double 0.76920900000000003
	.quad	0x3fe2146c332f0175              # double 0.56499299999999997
	.quad	0x3fe7c4c5974e65bf              # double 0.74277000000000004
	.quad	0x3f4a1554fbdad752              # double 7.9600000000000005E-4
	.quad	0x3fe19c7368ad6883              # double 0.55034799999999995
	.quad	0x3fd72467be553ac5              # double 0.361597
	.quad	0x3fea3dd334c5da6a              # double 0.82004699999999997
	.quad	0x3fb74a87e38eb032              # double 0.090981000000000006
	.quad	0x3fed11f4f50a02b8              # double 0.90844199999999997
	.quad	0x3feaa87c200c0f02              # double 0.833067
	.quad	0x3fe5671ef30a4e38              # double 0.66883800000000004
	.quad	0x3fdd6b1e5c0b9991              # double 0.45966299999999999
	.quad	0x3fdcc9d9d3458cd2              # double 0.44982
	.quad	0x3fd3d40ee06d9381              # double 0.30981799999999998
	.quad	0x3f9cdc443914f484              # double 0.028184000000000001
	.quad	0x3fd8a715831f03d1              # double 0.38519799999999998
	.quad	0x3fb60ba1f4b1ee24              # double 0.086114999999999997
	.quad	0x3fe4b675ddd2ae8e              # double 0.64727299999999999
	.quad	0x3fe45faca3619978              # double 0.63667899999999999
	.quad	0x3fdd1ee2435696e6              # double 0.45501000000000003
	.quad	0x3fe73037d63022dd              # double 0.72463599999999995
	.quad	0x3fd624f227d028a2              # double 0.34600500000000001
	.quad	0x3fea4f5f4e4430b1              # double 0.82218899999999995
	.quad	0x3fc98aeb80ecfa6a              # double 0.19955200000000001
	.quad	0x3fd8f6ba0620ab71              # double 0.39005899999999999
	.quad	0x3fe1c855da272863              # double 0.555705
	.quad	0x3fe0938151a43782              # double 0.51800599999999997
	.quad	0x3f87efe0ce0b912e              # double 0.011688
	.quad	0x3fee0f53c579f234              # double 0.93937099999999995
	.quad	0x3fd89930be0ded29              # double 0.38435000000000002
	.quad	0x3fcf8fb43d89ce4a              # double 0.24657299999999999
	.quad	0x3fe40ccbc05d52c1              # double 0.62656199999999995
	.quad	0x3fe7fd9988d2a1f9              # double 0.74970700000000001
	.quad	0x3fd36d655e28aa43              # double 0.30355199999999999
	.quad	0x3fbefe931876188b              # double 0.121072
	.quad	0x3febb6b09635610b              # double 0.86605100000000002
	.quad	0x3fd582be8bc169c2              # double 0.33610499999999999
	.quad	0x3fc6e6c8f7553693              # double 0.17891799999999999
	.quad	0x3fe6cf5903a7546d              # double 0.71281099999999997
	.quad	0x3fcdebb7739f340d              # double 0.23375599999999999
	.quad	0x3fc7f950b955f783              # double 0.18729599999999999
	.quad	0x3fea85f8d2e514c2              # double 0.82885399999999998
	.quad	0x3fee0e410b630a91              # double 0.93923999999999996
	.quad	0x3fee1c7368ad6883              # double 0.94097299999999995
	.quad	0x3fe8e047d3d4280b              # double 0.77737800000000001
	.quad	0x3fd63b5bf6a0dbad              # double 0.34737299999999999
	.quad	0x3fcd73647baa9b4a              # double 0.23008400000000001
	.quad	0x3fe48eb8950763a2              # double 0.64242200000000005
	.quad	0x3fd9e9a2c669057d              # double 0.40488499999999999
	.quad	0x3fe87d1dcd7060bb              # double 0.76527299999999998
	.quad	0x3fe601322f2734f8              # double 0.68764599999999998
	.quad	0x3fed3e7296f6512b              # double 0.91387300000000005
	.quad	0x3fbd8b827fa1a0cf              # double 0.11541
	.quad	0x3fd02f5126634118              # double 0.252888
	.quad	0x3fe96de54b48d3ae              # double 0.79466499999999995
	.quad	0x3fd0e26916440f24              # double 0.26381900000000003
	.quad	0x3fe653b4b2fa93af              # double 0.69771799999999995
	.quad	0x3f941e14bdfd2631              # double 0.019646
	.quad	0x3fe7bccaf709b739              # double 0.74179600000000001
	.quad	0x3fe00c2a454de7ea              # double 0.50148499999999996
	.quad	0x3fd311be6e653869              # double 0.297958
	.quad	0x3fbef694467381d8              # double 0.12095
	.quad	0x3fde8123810e8859              # double 0.476632
	.quad	0x3fe5d7e02645e4e7              # double 0.68260200000000004
	.quad	0x3fed0bc59b8023a7              # double 0.90768700000000002
	.quad	0x3f616ebd4cfd08d5              # double 0.0021280000000000001
	.quad	0x3fc811c2a0232096              # double 0.18804199999999999
	.quad	0x3fbfe132b55ef1fe              # double 0.12453
	.quad	0x3fedda6e75ff609e              # double 0.93291400000000002
	.quad	0x3fdbe9ff0cbaf966              # double 0.43615700000000002
	.quad	0x3fe48c79f666234b              # double 0.64214800000000005
	.quad	0x3fc9ff92f2b66b61              # double 0.20311199999999999
	.quad	0x3f97a2cecc814d72              # double 0.023081999999999998
	.quad	0x3fd1f94855da2728              # double 0.28083999999999998
	.quad	0x3fb4cf4a558ea7ce              # double 0.081287999999999999
	.quad	0x3feeb87379746024              # double 0.96001599999999998
	.quad	0x3fd0491afc04c8bd              # double 0.25446200000000002
	.quad	0x3fecbd2fa0d77b7c              # double 0.89809399999999994
	.quad	0x3fa5ad538ac18f82              # double 0.042338000000000001
	.quad	0x3fe96af89c5e6ff8              # double 0.79430800000000001
	.quad	0x3fea54d834091c08              # double 0.82285699999999995
	.quad	0x3fe063a5c1c6088d              # double 0.51216399999999995
	.quad	0x3fe25a708ede54b5              # double 0.57354000000000005
	.quad	0x3fc4c7e28240b780              # double 0.16234999999999999
	.quad	0x3fdff4666ec9e237              # double 0.49929200000000001
	.quad	0x3f96659d12cadddf              # double 0.021871999999999999
	.quad	0x3feda91b823c85c2              # double 0.92689299999999997
	.quad	0x3fab3b107746887b              # double 0.053185000000000003
	.quad	0x3fd54156e264e486              # double 0.33211299999999999
	.quad	0x3fd06cdaf4adbc66              # double 0.25664399999999998
	.quad	0x3fc3611ba3ca7504              # double 0.15140100000000001
	.quad	0x3fcd8255b035bd51              # double 0.23053999999999999
	.quad	0x3fe59157abb8800f              # double 0.67399200000000004
	.quad	0x3fd6e8af81626b2f              # double 0.35795199999999999
	.quad	0x3feb58fb43d89ce5              # double 0.85461200000000004
	.quad	0x3fed93c89f40a287              # double 0.92428999999999994
	.quad	0x3fe3f603925bb7b7              # double 0.62378100000000003
	.quad	0x3fd38811b1d92b80              # double 0.30518000000000001
	.quad	0x3fec15592d98bf7f              # double 0.877606
	.quad	0x3fdda53fc0096feb              # double 0.46321099999999998
	.quad	0x3f674e65bea0ba1f              # double 0.0028449999999999999
	.quad	0x3fe5185cee17a030              # double 0.65922400000000003
	.quad	0x3fe6c916ca46e08f              # double 0.71204699999999999
	.quad	0x3fd8bf0563ed0f62              # double 0.38665899999999997
	.quad	0x3fd9151e75360d02              # double 0.39191399999999998
	.quad	0x3fe92b1d4f9c1f86              # double 0.78651300000000002
	.quad	0x3fec0ed80a17b0f7              # double 0.87681200000000004
	.quad	0x3fd5b4784230fcf8              # double 0.33914
	.quad	0x3fd0fa8b4bf8fcd6              # double 0.26529199999999997
	.quad	0x3fefcc271fff79c8              # double 0.99367099999999997
	.quad	0x3fe1f572de43ed96              # double 0.56121200000000004
	.quad	0x3fea2f37fbefd007              # double 0.81826399999999999
	.quad	0x3fb84b6e935b91f7              # double 0.094900999999999999
	.quad	0x3fc225f202107b78              # double 0.14178299999999999
	.quad	0x3fc54c1a8ac5c140              # double 0.16638500000000001
	.quad	0x3fe50d32830a0b1c              # double 0.65786100000000003
	.quad	0x3fce394face67d78              # double 0.236124
	.quad	0x3fd4ca2db61bb060              # double 0.32484000000000002
	.quad	0x3fe9f6bc1eff9f88              # double 0.81136900000000001
	.quad	0x3fccee2003ab862b              # double 0.226017
	.quad	0x3fe563e8dda48b65              # double 0.66844599999999998
	.quad	0x3fe5347a5b0ff10f              # double 0.66265600000000002
	.quad	0x3fcaba3875925354              # double 0.20880799999999999
	.quad	0x3fe203382e44b6e9              # double 0.56289299999999998
	.quad	0x3feee74299d883ba              # double 0.96572999999999998
	.quad	0x3fd1fab96f21f6cb              # double 0.28092800000000001
	.quad	0x3fea2df505d0fa59              # double 0.81811
	.quad	0x3fe22541d8e86402              # double 0.567048
	.quad	0x3fe7ceb13dfb0d52              # double 0.743981
	.quad	0x3fdbf43419e30015              # double 0.43678
	.quad	0x3fcdf47f993d5348              # double 0.23402400000000001
	.quad	0x3fc9aa92e62131a9              # double 0.200518
	.quad	0x3feb2dbc664d3bf3              # double 0.849333
	.quad	0x3fbe1ad6451b9303              # double 0.11759699999999999
	.quad	0x3fe409b738e6d15b              # double 0.62618600000000002
	.quad	0x3fd1a4c1ebc83a97              # double 0.27568100000000001
	.quad	0x3febfc49fd7a13c2              # double 0.87454699999999996
	.quad	0x3fe837b4a2339c0f              # double 0.75680000000000003
	.quad	0x3fd4bf8fcd67fd3f              # double 0.32419199999999998
	.quad	0x3feeaf61ed5ae1ce              # double 0.95890900000000001
	.quad	0x3fd40ee06d938152              # double 0.31340800000000002
	.quad	0x3fdbff6d330941c8              # double 0.43746499999999999
	.quad	0x3fd2ce8533b10774              # double 0.29385499999999998
	.quad	0x3fd0af31b152f3c3              # double 0.26069300000000001
	.quad	0x3f969ca9ef5232d3              # double 0.022082000000000001
	.quad	0x3fb55885d31337eb              # double 0.083381999999999998
	.quad	0x3febf2606fac6046              # double 0.87333700000000003
	.quad	0x3fddb50f40e5a35d              # double 0.46417599999999998
	.quad	0x3fe4cdc443914f48              # double 0.65011799999999997
	.quad	0x3fe8164e8b7e4de4              # double 0.75272300000000003
	.quad	0x3fdb387df5cf2496              # double 0.42532300000000001
	.quad	0x3fe3631d712a0ec7              # double 0.60584899999999997
	.quad	0x3f99ccb7d41743e9              # double 0.025194999999999999
	.quad	0x3fe1e88df37329c3              # double 0.55963799999999997
	.quad	0x3fda44e93e1c9b41              # double 0.41045599999999999
	.quad	0x3fbc9acbc8c0ce92              # double 0.111737
	.quad	0x3fa109d0635a426c              # double 0.033278000000000002
	.quad	0x3fd329f59ccfaeff              # double 0.29943599999999998
	.quad	0x3fe366ab9b23dd55              # double 0.60628300000000002
	.quad	0x3fe276555c52e72e              # double 0.57694500000000004
	.quad	0x3fedd86a8fc0d2c4              # double 0.93266800000000005
	.quad	0x3fe1c2b0ea18372e              # double 0.55501599999999995
	.quad	0x3fdbe20ccff21b3b              # double 0.435672
	.quad	0x3fe66bebe1650a46              # double 0.70067400000000002
	.quad	0x3fbd253543aeab7a              # double 0.11384900000000001
	.quad	0x3fe03d5fdcdf6988              # double 0.50749200000000005
	.quad	0x3febbec460ed80a1              # double 0.86703699999999995
	.quad	0x3fd5ae9680e06530              # double 0.338781
	.quad	0x3fed61b8ed1bf7ad              # double 0.91817899999999997
	.quad	0x3fea0f3a9b068124              # double 0.81435900000000005
	.quad	0x3fcd9a95421c0443              # double 0.23128000000000001
	.quad	0x3fe6aec8d5c74752              # double 0.70883600000000002
	.quad	0x3fe311ab8e8ea39c              # double 0.59590699999999996
	.quad	0x3fc77785729b280f              # double 0.183335
	.quad	0x3fe1cce5f7403dde              # double 0.55626200000000003
	.quad	0x3fe282730c671690              # double 0.57842400000000005
	.quad	0x3fc523465625a683              # double 0.16513900000000001
	.quad	0x3fee7e6f71a7e308              # double 0.95293399999999994
	.quad	0x3fe03302f72b4528              # double 0.50622699999999998
	.quad	0x3fd79cc74b838c11              # double 0.36894399999999999
	.quad	0x3fe1feed45e9185d              # double 0.56236900000000001
	.quad	0x3fe8399b2c40d0ab              # double 0.75703200000000004
	.quad	0x3fc37afea3df6db9              # double 0.15219099999999999
	.quad	0x3fd5daa4fca42aed              # double 0.34147
	.quad	0x3feae44d87724fa9              # double 0.84036900000000003
	.quad	0x3fdbfdb8fde2ef4e              # double 0.437361
	.quad	0x3fdf0474d9c6b053              # double 0.48464699999999999
	.quad	0x3fe91db22d0e5604              # double 0.78487499999999998
	.quad	0x3fd0aa3f034b0e1b              # double 0.26039099999999998
	.quad	0x3fe93992c8c50050              # double 0.78827800000000003
	.quad	0x3fd81d1d4738a3b5              # double 0.37677699999999997
	.quad	0x3fc6ef4e0114d2f6              # double 0.179178
	.quad	0x3fe27caa7589efd8              # double 0.57771799999999995
	.quad	0x3fe3ed117b5286b6              # double 0.62268900000000005
	.quad	0x3fdbeb356da0168b              # double 0.43623099999999998
	.quad	0x3fec84c6a3bddfca              # double 0.891208
	.quad	0x3fc119b4dcebfec1              # double 0.13359699999999999
	.quad	0x3fe04e2089e34331              # double 0.50953700000000002
	.quad	0x3f811ada76d97b31              # double 0.008352
	.quad	0x3f8c347e8ccdd93c              # double 0.013772
	.quad	0x3fd4c5931ca7d673              # double 0.32455899999999999
	.quad	0x3fddc61522a6f3f5              # double 0.46521499999999999
	.quad	0x3fb8feac42e9899c              # double 0.097636
	.quad	0x3fe2634549b62c77              # double 0.57461799999999996
	.quad	0x3fea69899bf5946c              # double 0.82538299999999997
	.quad	0x3fe6aed352220bc4              # double 0.70884100000000005
	.quad	0x3fe8383f0bae89ec              # double 0.75686600000000003
	.quad	0x3fda0ed80a17b0f7              # double 0.40715600000000002
	.quad	0x3fe25cd0bb6ed677              # double 0.57382999999999995
	.quad	0x3fec41dd1a21ea36              # double 0.88304000000000005
	.quad	0x3feeef049a9973da              # double 0.96667700000000001
	.quad	0x3fdcf5a964e8b7e5              # double 0.45249400000000001
	.quad	0x3fed366d7a56de33              # double 0.91289399999999998
	.quad	0x3fc489b951c5c572              # double 0.16045300000000001
	.quad	0x3fef73343fa2ad3f              # double 0.98281300000000004
	.quad	0x3fd650c5eb313be2              # double 0.34867999999999999
	.quad	0x3fec7e6b3fe9fadb              # double 0.890432
	.quad	0x3fe9bbc4d22c881e              # double 0.80417099999999997
	.quad	0x3fe604d338f79852              # double 0.68808899999999995
	.quad	0x3fc9f71eafee6fb5              # double 0.20285400000000001
	.quad	0x3fd3234eb9a176de              # double 0.29903000000000002
	.quad	0x3fceb2d0a2446306              # double 0.23983199999999999
	.quad	0x3fe719e731d2e0e3              # double 0.721912
	.quad	0x3fe32d42c3c9eecc              # double 0.599275
	.quad	0x3fbf64adff822bbf              # double 0.12263
	.quad	0x3fdb5a14488c60cc              # double 0.427373
	.quad	0x3fd96b26bf8769ec              # double 0.39716499999999999
	.quad	0x3fccaaeafab53d64              # double 0.223966
	.quad	0x3fd1910c2c5e2cdc              # double 0.274478
	.quad	0x3fd7594af4f0d845              # double 0.36482500000000001
	.quad	0x3fe788765ba6efc3              # double 0.73540799999999995
	.quad	0x3fe24ca925fe974a              # double 0.57185799999999998
	.quad	0x3fe88fd9fd36f7e4              # double 0.76756000000000002
	.quad	0x3fe69df3300de4c5              # double 0.70678099999999999
	.quad	0x3fc486d71f36262d              # double 0.16036500000000001
	.quad	0x3fee0e453d20f2bf              # double 0.93924200000000002
	.quad	0x3fedd8ff75968512              # double 0.93273899999999998
	.quad	0x3fe767f2c3009b30              # double 0.73143899999999995
	.quad	0x3fe8e4bec679cc75              # double 0.77792300000000003
	.quad	0x3fe1addbdb5d8948              # double 0.55247299999999999
	.quad	0x3febaa60913a4f87              # double 0.86454799999999998
	.quad	0x3fcfd987c6327ed8              # double 0.24882599999999999
	.quad	0x3fc22795703f2d3c              # double 0.14183299999999999
	.quad	0x3fcf9841aac53b08              # double 0.246834
	.quad	0x3fe0d594f26aec07              # double 0.52607199999999998
	.quad	0x3fe3b4916ca46e09              # double 0.61579200000000001
	.quad	0x3fdb003eea209aaa              # double 0.42188999999999999
	.quad	0x3fe18b2e9ccb7d41              # double 0.54823999999999995
	.quad	0x3fe1afb5d031055c              # double 0.55269900000000005
	.quad	0x3fd89acffa7eb6bf              # double 0.38444899999999999
	.quad	0x3fdef2d7f950b956              # double 0.483572
	.quad	0x3fe85debd9018e75              # double 0.76146499999999995
	.quad	0x3fc4de6ddf00abf7              # double 0.16303799999999999
	.quad	0x3fe766c2acb85a4f              # double 0.731294
	.quad	0x3febbfb58d1526d9              # double 0.86715200000000003
	.quad	0x3fe5ee158750c1b9              # double 0.68531299999999995
	.quad	0x3fdee22e5de15ca7              # double 0.48255500000000001
	.quad	0x3fe980b242070b8d              # double 0.79696
	.quad	0x3fddd39da16616b5              # double 0.46604099999999998
	.quad	0x3fe99a2403148777              # double 0.80006600000000005
	.quad	0x3fedee5eedcc20d5              # double 0.93534799999999996
	.quad	0x3fee3a71151611ba              # double 0.94463399999999997
	.quad	0x3f94f227d028a1e0              # double 0.020455000000000001
	.quad	0x3fe27954eb13dfb1              # double 0.57731100000000002
	.quad	0x3fe5eebb341e14be              # double 0.685392
	.quad	0x3fe06612839042d9              # double 0.51246000000000003
	.quad	0x3fdd011904b3c3e7              # double 0.45319199999999998
	.quad	0x3fd3175d13d74d59              # double 0.29830099999999998
	.quad	0x3fe4a0407cc7d1bb              # double 0.64456199999999997
	.quad	0x3fe28225742dcf46              # double 0.57838699999999998
	.quad	0x3fb412be48a58b3f              # double 0.078410999999999995
	.quad	0x3fec4067cf1c3266              # double 0.88286200000000004
	.quad	0x3fd9e55c0fcb4f1e              # double 0.40462399999999998
	.quad	0x3fc3b890d5a5b963              # double 0.15407000000000001
	.quad	0x3fe054477ff151e7              # double 0.51028799999999996
	.quad	0x3feee3d3e4ef0282              # double 0.96531100000000003
	.quad	0x3fde7dbf487fcb92              # double 0.47642499999999999
	.quad	0x3fe773eee5258927              # double 0.73290200000000005
	.quad	0x3fe2b0db6a1e81cb              # double 0.58408899999999997
	.quad	0x3fb02d8c2a454de8              # double 0.063195000000000001
	.quad	0x3fc048f96e158751              # double 0.12722700000000001
	.quad	0x3fe1a428d434a01b              # double 0.55128900000000003
	.quad	0x3fde71c10d7be985              # double 0.47569299999999998
	.quad	0x3feff63a19008206              # double 0.998807
	.quad	0x3fe705d0fa58f712              # double 0.71945999999999999
	.quad	0x3fe602cd39da1661              # double 0.68784199999999995
	.quad	0x3fe09df3300de4c5              # double 0.51928099999999999
	.quad	0x3fe0aa6b0d9513f9              # double 0.52080300000000002
	.quad	0x3fcc7e414e7ee914              # double 0.222603
	.quad	0x3fe1de785b5b7069              # double 0.55840699999999999
	.quad	0x3fe5b4d6a161e4f7              # double 0.67832499999999996
	.quad	0x3fdc029ae4f33440              # double 0.43765900000000002
	.quad	0x3fe8333fc86cebbc              # double 0.75625600000000003
	.quad	0x3fc3b8023a6ce358              # double 0.154053
	.quad	0x3fbc8b4395810625              # double 0.1115
	.quad	0x3fe23e74afd54541              # double 0.57012399999999996
	.quad	0x3fc46aca79357604              # double 0.15950900000000001
	.quad	0x3f875ea67e846a5d              # double 0.011410999999999999
	.quad	0x3f97ed84d338f798              # double 0.023366999999999999
	.quad	0x3fe2e9d94d0dcfcc              # double 0.59104599999999996
	.quad	0x3fed992c8c5004fb              # double 0.92494799999999999
	.quad	0x3fdbfeb8d8234224              # double 0.43742199999999998
	.quad	0x3fec926202539757              # double 0.89286900000000002
	.quad	0x3fe45f06f6944674              # double 0.63660000000000005
	.quad	0x3fdc319c5a3e39f7              # double 0.44052799999999998
	.quad	0x3fe2ee5471715c64              # double 0.59159300000000004
	.quad	0x3fc2e0a84be40421              # double 0.147481
	.quad	0x3fc6ffda4052d667              # double 0.17968300000000001
	.quad	0x3fd34eb56fb8f57f              # double 0.30167899999999997
	.quad	0x3fef66106ab14ec2              # double 0.981209
	.quad	0x3feedd4e8fb00bcc              # double 0.96451500000000001
	.quad	0x3fe8fcaa7589efd8              # double 0.78084299999999995
	.quad	0x3feed44998d045fe              # double 0.96341399999999999
	.quad	0x3fb3440af1cb89d7              # double 0.075257000000000004
	.quad	0x3fe678055fbb517a              # double 0.70215099999999997
	.quad	0x3fed8d5842b734b5              # double 0.92350399999999999
	.quad	0x3feff444e0daa0cb              # double 0.99856800000000001
	.quad	0x3fe36736049ecb32              # double 0.60634900000000003
	.quad	0x3fe86dbd72bcb5fe              # double 0.76339599999999996
	.quad	0x3fb494d50ebaade6              # double 0.080395999999999995
	.quad	0x3fe542b94d940789              # double 0.66439499999999996
	.quad	0x3fe06b4c7f349386              # double 0.51309800000000005
	.quad	0x3fa252ef911cf356              # double 0.035789000000000001
	.quad	0x3fca19439de481f5              # double 0.20389599999999999
	.quad	0x3fecf4538ef34d6a              # double 0.90482499999999999
	.quad	0x3fe4d2cbea4ebdd3              # double 0.65073199999999998
	.quad	0x3fed0eef1bac2df1              # double 0.90807300000000002
	.quad	0x3fe150c5eb313be2              # double 0.54110999999999998
	.quad	0x3fcd75536933a040              # double 0.23014299999999999
	.quad	0x3fe87a786c22680a              # double 0.76495000000000002
	.quad	0x3fd4b7dc7abfb9bf              # double 0.32372200000000001
	.quad	0x3fe851b4fe79ee03              # double 0.75997400000000004
	.quad	0x3faf56eac8605682              # double 0.061210000000000001
	.quad	0x3fed7aaef2c73259              # double 0.92122599999999999
	.quad	0x3fc467f0aa21a71a              # double 0.15942200000000001
	.quad	0x3fe03a57eaa2a0a9              # double 0.50712199999999996
	.quad	0x3fe24286f8ad2568              # double 0.57062100000000004
	.quad	0x3fe4e440f2389720              # double 0.65286299999999997
	.quad	0x3fbae008e9b38d61              # double 0.104981
	.quad	0x3fe3db1a6d698fe7              # double 0.62049600000000005
	.quad	0x3fa4cd31769a9110              # double 0.040627999999999997
	.quad	0x3fe79d6f112fd32c              # double 0.73796799999999996
	.quad	0x3fe3ecedd4845133              # double 0.622672
	.quad	0x3fd7a465a57646ae              # double 0.36940899999999999
	.quad	0x3fe60b6f9fcb0c02              # double 0.68889599999999995
	.quad	0x3fe1e7903211cb04              # double 0.55951700000000004
	.quad	0x3fb571e29b6b2af1              # double 0.083768999999999996
	.quad	0x3fe5c1ca3a4b5569              # double 0.67990600000000001
	.quad	0x3fe730d306a2b170              # double 0.72470999999999997
	.quad	0x3fd4c158fb43d89d              # double 0.32430100000000001
	.quad	0x3feed8c4bd33d295              # double 0.96396099999999995
	.quad	0x3fef86ab14ec204f              # double 0.98518899999999998
	.quad	0x3fe3da33bd9cae21              # double 0.62038599999999999
	.quad	0x3fe5ae536501e258              # double 0.67752999999999997
	.quad	0x3fe9baf102363b25              # double 0.80406999999999995
	.quad	0x3fc2bdb1a6d698fe              # double 0.14641399999999999
	.quad	0x3fdeaca36199780c              # double 0.47928700000000002
	.quad	0x3fd0d7be9856a37b              # double 0.26316800000000001
	.quad	0x3fefedce39b456b4              # double 0.99777899999999997
	.quad	0x3fb9cfdd22856606              # double 0.100828
	.quad	0x3fe226612839042e              # double 0.56718500000000005
	.quad	0x3fad230b9dc2f406              # double 0.056908
	.quad	0x3fd0345cfede97d0              # double 0.25319599999999998
	.quad	0x3fece514c22ee419              # double 0.90296399999999999
	.quad	0x3fe747eae5bc87db              # double 0.72752899999999998
	.quad	0x3fe494d0dcfcc5b9              # double 0.64316600000000002
	.quad	0x3fc3eccc46950fc7              # double 0.155664
	.quad	0x3fe412146a1a500d              # double 0.62720699999999996
	.quad	0x3fede2bf11f926c8              # double 0.93392900000000001
	.quad	0x3fe1fa7221858bc6              # double 0.56182200000000004
	.quad	0x3fd5b77c02afdda9              # double 0.33932400000000001
	.quad	0x3fcb8a0902de00d2              # double 0.21515000000000001
	.quad	0x3fd4083126e978d5              # double 0.313
	.quad	0x3feb3bfd71b04684              # double 0.85107299999999996
	.quad	0x3fe3d0e560418937              # double 0.61924999999999997
	.quad	0x3fab573eab367a10              # double 0.053400000000000003
	.quad	0x3fc7271bcdbbe015              # double 0.18088099999999999
	.quad	0x3fe7659d12cadddf              # double 0.73115399999999997
	.quad	0x3fb63065f9591cd2              # double 0.086676000000000003
	.quad	0x3fde6ba0620ab713              # double 0.47531899999999999
	.quad	0x3fac77dd872f33ca              # double 0.055601999999999999
	.quad	0x3fd93ce2089e3433              # double 0.394341
	.quad	0x3fe2b3ce63a5c1c6              # double 0.584449
	.quad	0x3feb2df71eafee70              # double 0.84936100000000003
	.quad	0x3fd08e71476af89c              # double 0.25869399999999998
	.quad	0x3fc1e8576cce5f74              # double 0.139903
	.quad	0x3fd56c15d2d01c0d              # double 0.33472200000000002
	.quad	0x3fb4e2c12ad81adf              # double 0.081585000000000005
	.quad	0x3feee8f4b61fe21e              # double 0.96593700000000005
	.quad	0x3fbe6644d87724fb              # double 0.11874800000000001
	.quad	0x3fdaf0739b024f66              # double 0.42092600000000002
	.quad	0x3fb26d7a56de3327              # double 0.071983000000000005
	.quad	0x3fe9646f15619115              # double 0.79351000000000005
	.quad	0x3fe299aa60913a50              # double 0.58125800000000005
	.quad	0x3fed42a23bff8a8f              # double 0.91438399999999997
	.quad	0x3fd1858793dd97f6              # double 0.27377499999999999
	.quad	0x3feee89a88ace24c              # double 0.96589400000000003
	.quad	0x3fd11ad6451b9303              # double 0.26726299999999997
	.quad	0x3fd27a1c25d07421              # double 0.28870299999999999
	.quad	0x3f9f57f737da61e1              # double 0.030609000000000001
	.quad	0x3fb8bd33d29563aa              # double 0.096637
	.quad	0x3fc0af1cb89d6adf              # double 0.13034399999999999
	.quad	0x3fc89eb2074ea8da              # double 0.19234299999999999
	.quad	0x3fee24b76f6d7625              # double 0.94198199999999999
	.quad	0x3fcbaf9ebe9c8861              # double 0.21629699999999999
	.quad	0x3feecb7f5a5332ad              # double 0.962341
	.quad	0x3fce59c065b63d3e              # double 0.23711399999999999
	.quad	0x3fed6358298cc144              # double 0.91837699999999999
	.quad	0x3fea811d3671ac15              # double 0.82826100000000002
	.quad	0x3fe497f4128bf3bf              # double 0.64354900000000004
	.quad	0x3fed917f84449dbf              # double 0.92401100000000003
	.quad	0x3feebb8800eae18b              # double 0.96039200000000002
	.quad	0x3fed6d80a17b0f6b              # double 0.91961700000000002
	.quad	0x3fce5d206c8711d8              # double 0.23721700000000001
	.quad	0x3fe97a43fe5c91d1              # double 0.79617499999999997
	.quad	0x3fc8cd423d9231c6              # double 0.19376399999999999
	.quad	0x3fe9f9f87f023e9f              # double 0.81176400000000004
	.quad	0x3fd9e13b18dac259              # double 0.40437200000000001
	.quad	0x3fbdb0ee49f51698              # double 0.115981
	.quad	0x3fd9ddb1209edbf9              # double 0.40415600000000002
	.quad	0x3fe60d7be9856a38              # double 0.68914600000000004
	.quad	0x3fcefc9363f572de              # double 0.24208299999999999
	.quad	0x3fc89057d1782d38              # double 0.19190499999999999
	.quad	0x3fed21f4b1ee2435              # double 0.91039499999999995
	.quad	0x3fc1d00713f077cd              # double 0.13916100000000001
	.quad	0x3fe17f69014b599b              # double 0.54680300000000004
	.quad	0x3fe12dadb8348f54              # double 0.53682600000000003
	.quad	0x3fcb3eff1950331e              # double 0.21285999999999999
	.quad	0x3fe62cf52b90a783              # double 0.69298800000000005
	.quad	0x3fe8369fcf3dc055              # double 0.75666800000000001
	.quad	0x3fe20aa00192a737              # double 0.56379699999999999
	.quad	0x3fd62c669057d178              # double 0.34645999999999999
	.quad	0x3feaa5ce5b4245f6              # double 0.83274000000000004
	.quad	0x3fe8911f0c34c1a9              # double 0.76771500000000004
	.quad	0x3fe098ac9f2fdb90              # double 0.51863700000000001
	.quad	0x3fd294812be48a59              # double 0.29031400000000002
	.quad	0x3fec2875d56f32be              # double 0.87993900000000003
	.quad	0x3fcbb5aea3161a1e              # double 0.21648200000000001
	.quad	0x3feaf765fd8adaba              # double 0.8427
	.quad	0x3fbfd273d5bab218              # double 0.124305
	.quad	0x3febd2aa5c5f7c67              # double 0.86946599999999996
	.quad	0x3fe8f3c70c996b76              # double 0.77975799999999995
	.quad	0x3fe80e7ff583a53c              # double 0.75177000000000004
	.quad	0x3fe81e1d2178f68c              # double 0.75367600000000001
	.quad	0x3fec1a975afaf859              # double 0.87824599999999997
	.quad	0x3fcf31ec0b567558              # double 0.24371100000000001
	.quad	0x3fe657f950b955f8              # double 0.69823900000000005
	.quad	0x3fd6d0bfa0945f9e              # double 0.356491
	.quad	0x3fe67f0cbaf965b2              # double 0.703009
	.quad	0x3fe4c6e2a80064aa              # double 0.64927800000000002
	.quad	0x3fb3f961804d9839              # double 0.078023999999999996
	.quad	0x3fe5fb86f47b677f              # double 0.68695399999999995
	.quad	0x3fcbdc054ef459da              # double 0.21765200000000001
	.quad	0x3fcaf0739b024f66              # double 0.21046300000000001
	.quad	0x3fe3a42070b8cfc0              # double 0.61378500000000003
	.quad	0x3fccf7d30ad46f58              # double 0.22631299999999999
	.quad	0x3fb5bb8c32a8c9b8              # double 0.084892999999999996
	.quad	0x3fe701b43526527a              # double 0.71895799999999999
	.quad	0x3fe34d7cf5f4e443              # double 0.603209
	.quad	0x3feb5fb0d51f81a6              # double 0.85543100000000005
	.quad	0x3fba9b17481b21c4              # double 0.10392899999999999
	.quad	0x3fcb8982cb20fb22              # double 0.21513399999999999
	.quad	0x3fe8dfcc1871e6cd              # double 0.77731899999999998
	.quad	0x3fec8a32f4491299              # double 0.89187000000000005
	.quad	0x3fe4a1be2b4959e6              # double 0.64474399999999998
	.quad	0x3fe92441fea8112c              # double 0.78567600000000004
	.quad	0x3fcaff8ec0f88334              # double 0.210924
	.quad	0x3fcb4330d738609a              # double 0.21298800000000001
	.quad	0x3fee90a350d2806b              # double 0.95515600000000001
	.quad	0x3fd589acbc8c0ce9              # double 0.33652799999999999
	.quad	0x3fe802517e77d524              # double 0.75028300000000003
	.quad	0x3fbccc575c0767d3              # double 0.112493
	.quad	0x3fe0903a7546d3fa              # double 0.51760600000000001
	.quad	0x3fe82f251c193b3a              # double 0.75575499999999995
	.quad	0x3fdf75a31a4bdba1              # double 0.49155500000000002
	.quad	0x3fd8d6c2efd438d2              # double 0.38810800000000001
	.quad	0x3fa05ad538ac18f8              # double 0.031942999999999999
	.quad	0x3fedc1fc8f32378b              # double 0.92993000000000003
	.quad	0x3fe2b78897e99631              # double 0.58490399999999998
	.quad	0x3fe7fc1bda5119ce              # double 0.749525
	.quad	0x3fd125742dcf4624              # double 0.26791100000000001
	.quad	0x3fa941205bc01a37              # double 0.049325000000000001
	.quad	0x3fe16ba493c89f41              # double 0.54439000000000004
	.quad	0x3fe9a393ee5eedcc              # double 0.80121799999999998
	.quad	0x3fd3ae924f227d03              # double 0.30753000000000003
	.quad	0x3fbc9752977c88e8              # double 0.11168400000000001
	.quad	0x3fd6b584b1ab0857              # double 0.35482900000000001
	.quad	0x3fa76a0dbad3a605              # double 0.045731000000000001
	.quad	0x3fc5fd3f5b5fa227              # double 0.171791
	.quad	0x3fd9713ad5bee3d6              # double 0.397536
	.quad	0x3fe689203a322af5              # double 0.70423899999999995
	.quad	0x3fd5f0dc768dfbd7              # double 0.34282600000000002
	.quad	0x3fef2391d57ff9b5              # double 0.97309199999999995
	.quad	0x3fb4b04ab606b7aa              # double 0.080814999999999997
	.quad	0x3fe3f39f340d4dc6              # double 0.62348899999999996
	.quad	0x3fe231704ff4341a              # double 0.56853500000000001
	.quad	0x3fcc1b4bb5e0f7fd              # double 0.219583
	.quad	0x3fe12778140dd3fe              # double 0.53606799999999999
	.quad	0x3fdc22962cfd8f0c              # double 0.43961099999999997
	.quad	0x3fe4e17a02fb5d03              # double 0.65252399999999999
	.quad	0x3fd1e670e2c12ad8              # double 0.27968999999999999
	.quad	0x3fd609fe86833c60              # double 0.34436
	.quad	0x3fd1e19b90ea9e6f              # double 0.279395
	.quad	0x3fde05100a393ee6              # double 0.469059
	.quad	0x3fec6940357a3550              # double 0.88784799999999997
	.quad	0x3fe68789613d31ba              # double 0.70404500000000003
	.quad	0x3fe65a6a44417870              # double 0.69853699999999996
	.quad	0x3fe2311622813448              # double 0.568492
	.quad	0x3fe7d19bd4067cf2              # double 0.74433700000000003
	.quad	0x3fee0eed02cd39da              # double 0.93932199999999999
	.quad	0x3fe07264a16a4873              # double 0.51396399999999998
	.quad	0x3fe4087a8d64d7f1              # double 0.62603500000000001
	.quad	0x3fd37bb2fec56d5d              # double 0.304425
	.quad	0x3fea3f65dbfceb79              # double 0.82023900000000005
	.quad	0x3fdb845dc8323359              # double 0.429954
	.quad	0x3fadf9bdc69f8c22              # double 0.058546000000000001
	.quad	0x3fe61c1f85d744f6              # double 0.69093300000000002
	.quad	0x3fe99205bc01a36e              # double 0.79907499999999998
	.quad	0x3feee6362a5e785b              # double 0.96560199999999996
	.quad	0x3fe700a5accd5305              # double 0.71882900000000005
	.quad	0x3feeb8bac710cb29              # double 0.96004999999999995
	.quad	0x3fee682949a56580              # double 0.95021500000000003
	.quad	0x3febc0d90e23af32              # double 0.86729100000000003
	.quad	0x3fed3324851a8694              # double 0.91249299999999999
	.quad	0x3fd498244e93e1ca              # double 0.32178600000000002
	.quad	0x3fed78e5c4eb56fc              # double 0.92100800000000004
	.quad	0x3fe5b573eab367a1              # double 0.6784
	.quad	0x3feb3b256ffc115e              # double 0.85097
	.quad	0x3fe3eaca79357604              # double 0.62241100000000005
	.quad	0x3feea8049667b5f2              # double 0.95801000000000003
	.quad	0x3fed4853c148344c              # double 0.91507899999999997
	.quad	0x3fc4305d95dd4c77              # double 0.15772600000000001
	.quad	0x3fe5d82fd75e2047              # double 0.68264000000000002
	.quad	0x3fb44a6223e18698              # double 0.079259999999999997
	.quad	0x3fd2d759ee88df37              # double 0.29439399999999999
	.quad	0x3fac4d44567125dd              # double 0.055277
	.quad	0x3fee76a93f290abb              # double 0.95198499999999997
	.quad	0x3fe3c73abc947065              # double 0.61807000000000001
	.quad	0x3fe07225b749adc9              # double 0.513934
	.quad	0x3fe9adc4c9c90c4e              # double 0.80246200000000001
	.quad	0x3fd75347a5b0ff11              # double 0.364458
	.quad	0x3fdcc8bc9cd3e0bd              # double 0.44975199999999999
	.quad	0x3fe2aa454de7ea60              # double 0.58328500000000005
	.quad	0x3fe85ca07f66e86c              # double 0.76130699999999995
	.quad	0x3fe91e83e425aee6              # double 0.78497499999999998
	.quad	0x3feb9ba3ca7503b8              # double 0.86274899999999999
	.quad	0x3fc4e807bbb62414              # double 0.163331
	.quad	0x3fe75434a01abd1b              # double 0.72902900000000004
	.quad	0x3fe014a0a0f4d7ae              # double 0.50251800000000002
	.quad	0x3fe9f776c4827b70              # double 0.81145800000000001
	.quad	0x3fed256bca5375c9              # double 0.91081800000000002
	.quad	0x3fde765fd8adab9f              # double 0.47597499999999998
	.quad	0x3febd041cc532a49              # double 0.86917199999999994
	.quad	0x3fef6abbcb1cc964              # double 0.98177899999999995
	.quad	0x3fef6b9c304ccee6              # double 0.98188600000000004
	.quad	0x3fd5325918a009f6              # double 0.33119799999999999
	.quad	0x3fde69db65ecc3e3              # double 0.47521099999999999
	.quad	0x3fbf6d43d03968d7              # double 0.122761
	.quad	0x3fe2ecc3e3193f6c              # double 0.59140199999999998
	.quad	0x3feaf39d1b2e59b0              # double 0.84223800000000004
	.quad	0x3fd6e33269df97ab              # double 0.35761700000000002
	.quad	0x3fe5e49b1fab96f2              # double 0.68415599999999999
	.quad	0x3fd141d8e8640208              # double 0.26964399999999999
	.quad	0x3feb9fa76534373f              # double 0.86323899999999998
	.quad	0x3fd9ecc3e3193f6c              # double 0.40507599999999999
	.quad	0x3feaf6f6d7625205              # double 0.84264700000000003
	.quad	0x3fd2b49e01de2691              # double 0.29227399999999998
	.quad	0x3fe0d592d98bf7f0              # double 0.52607099999999996
	.quad	0x3fd8e5c4eb56fb8f              # double 0.38902399999999998
	.quad	0x3fef4a8198f1d3ed              # double 0.97784499999999996
	.quad	0x3fe2ff455a7d2418              # double 0.59366099999999999
	.quad	0x3fbfc6a7ef9db22d              # double 0.124125
	.quad	0x3fedb3ce63a5c1c6              # double 0.928199
	.quad	0x3f938759253543af              # double 0.019071000000000001
	.quad	0x3fdf36976bc1effa              # double 0.487707
	.quad	0x3fd570a808c8259e              # double 0.33500099999999999
	.quad	0x3fe3b8800eae18ad              # double 0.61627200000000004
	.quad	0x3fe36160d887ebf2              # double 0.60563699999999998
	.quad	0x3fe9b3892ee84ad8              # double 0.80316600000000005
	.quad	0x3fe3fa8d64d7f0ed              # double 0.62433499999999997
	.quad	0x3fc6a9f7b5aea316              # double 0.177062
	.quad	0x3fc086b59146e4c1              # double 0.129111
	.quad	0x3fe2eab7995ee137              # double 0.59115200000000001
	.quad	0x3fe9e542e557de0d              # double 0.80923599999999996
	.quad	0x3fe4eb6390c91080              # double 0.65373400000000004
	.quad	0x3fe8082adc4c9c91              # double 0.75099700000000003
	.quad	0x3fe0508b32ce8965              # double 0.50983199999999995
	.quad	0x3fd59d2bf5515055              # double 0.33771800000000002
	.quad	0x3fec01d9f4d37c13              # double 0.87522599999999995
	.quad	0x3fe558b1dd5d3dc9              # double 0.66707700000000003
	.quad	0x3fdbb7aa25d8d79d              # double 0.433085
	.quad	0x3fefafbe33acd5b7              # double 0.99020300000000005
	.quad	0x3fed7ed20296b335              # double 0.92173099999999997
	.quad	0x3fa763c31df761cc              # double 0.045683000000000001
	.quad	0x3fefdc422036006d              # double 0.99563699999999999
	.quad	0x3fe739628cbd1245              # double 0.72575500000000004
	.quad	0x3fe93b23571d1d47              # double 0.78846899999999998
	.quad	0x3fda538ac18f81e9              # double 0.41134900000000002
	.quad	0x3fc3e4e69f05ea25              # double 0.15542300000000001
	.quad	0x3fe620902de00d1b              # double 0.69147499999999995
	.quad	0x3fe99d1b2e59af9f              # double 0.80042800000000003
	.quad	0x3fe9a7631b584b1b              # double 0.80168300000000003
	.quad	0x3fe482f944241c3f              # double 0.640988
	.quad	0x3fd7ae924f227d03              # double 0.37003000000000003
	.quad	0x3fe1e7168f8e7ddd              # double 0.55945900000000004
	.quad	0x3fa3f39d1b2e59b0              # double 0.038968000000000003
	.quad	0x3fba35e74299d884              # double 0.102385
	.quad	0x3fee7c6fbd273d5c              # double 0.95269000000000003
	.quad	0x3fd556c93a711516              # double 0.333422
	.quad	0x3fe9d490e66cb103              # double 0.80719799999999997
	.quad	0x3fdffe64f54d1e97              # double 0.49990200000000001
	.quad	0x3fdfbe9856a37ac4              # double 0.496008
	.quad	0x3fec5d35653c9abb              # double 0.886378
	.quad	0x3fe7683c297bfa4c              # double 0.73147399999999996
	.quad	0x3fe88fbca1059ea5              # double 0.76754599999999995
	.quad	0x3fd4b2702a3486f0              # double 0.32339099999999998
	.quad	0x3fcb7ec3547e0696              # double 0.214806
	.quad	0x3fa84ba0e8427419              # double 0.047452000000000001
	.quad	0x3feb0d9b5e95b78d              # double 0.84541100000000002
	.quad	0x3fdc01a36e2eb1c4              # double 0.43759999999999999
	.quad	0x3fcc370cdc8754f3              # double 0.22042999999999999
	.quad	0x3fd8552e2fbe33ad              # double 0.38019900000000001
	.quad	0x3fadcf893faf4278              # double 0.058223999999999998
	.quad	0x3faa619da9c99286              # double 0.051526000000000002
	.quad	0x3fd7b7f9d6f112fd              # double 0.37060399999999999
	.quad	0x3fe83020c49ba5e3              # double 0.75587499999999996
	.quad	0x3fab43b70ef56649              # double 0.053251
	.quad	0x3fe12a25d8d79d0a              # double 0.53639499999999996
	.quad	0x3fecfbb0e5e67946              # double 0.90572399999999997
	.quad	0x3fe98ded288ce704              # double 0.79857500000000003
	.quad	0x3fb5876188b1140a              # double 0.084097000000000005
	.quad	0x3fc2a433508f648c              # double 0.14563599999999999
	.quad	0x3fdb088d6d3b6cbe              # double 0.42239700000000002
	.quad	0x3fd279aae6c8f755              # double 0.28867599999999999
	.quad	0x3fd04d37c1376d55              # double 0.25471300000000002
	.quad	0x3feccbe61cffeb07              # double 0.89988999999999997
	.quad	0x3fd651fc4c165908              # double 0.34875400000000001
	.quad	0x3fbb689ca18bd662              # double 0.10706499999999999
	.quad	0x3fe7b2edfe75bc45              # double 0.74059200000000003
	.quad	0x3fdd2e87d2c7b891              # double 0.45596500000000001
	.quad	0x3fe991c2a0232096              # double 0.79904299999999995
	.quad	0x3fd16c6583e8576d              # double 0.27224100000000001
	.quad	0x3fdace6c093d9664              # double 0.41884900000000003
	.quad	0x3fe32b8c75c4a83b              # double 0.59906599999999999
	.quad	0x3fe6e117720c8cd6              # double 0.71497699999999997
	.quad	0x3fe2c8a58b3f63c3              # double 0.58699299999999999
	.quad	0x3fd6ae0c17657753              # double 0.35437299999999999
	.quad	0x3feecba51a005c46              # double 0.96235899999999996
	.quad	0x3fe94a2b9d3cbc49              # double 0.79030400000000001
	.quad	0x3fd3fc08fa7a8501              # double 0.31225799999999998
	.quad	0x3feb1cbccf28c79f              # double 0.84725799999999996
	.quad	0x3fe2834b0e1b4bb6              # double 0.57852700000000001
	.quad	0x3fd5f61240746456              # double 0.343144
	.quad	0x3fe7eb6e0d23d4f1              # double 0.74748899999999996
	.quad	0x3fc8241c3efae792              # double 0.18860199999999999
	.quad	0x3fe17531db445ed5              # double 0.54555600000000004
	.quad	0x3fd21b79d909f1f1              # double 0.28292699999999998
	.quad	0x3fe97d7c2ca148bb              # double 0.79656800000000005
	.quad	0x3fd256fb8f57f738              # double 0.28655900000000001
	.quad	0x3fc305e1c15097c8              # double 0.148617
	.quad	0x3fe40f49491f2dc3              # double 0.62686600000000003
	.quad	0x3fe69ab29e4d5d81              # double 0.70638400000000001
	.quad	0x3fb63f572de43ed9              # double 0.086903999999999995
	.quad	0x3fdee8d972cd7cf6              # double 0.482962
	.quad	0x3fdd81fd9ba1b196              # double 0.461059
	.quad	0x3fe69813879c4114              # double 0.70606400000000002
	.quad	0x3feba4acf312b1b3              # double 0.86385199999999995
	.quad	0x3fdffcce1c58255b              # double 0.499805
	.quad	0x3fc67243137b0707              # double 0.17536199999999999
	.quad	0x3fcd6976bc1effa0              # double 0.22978100000000001
	.quad	0x3fe1c70a808c825a              # double 0.55554700000000001
	.quad	0x3fe860e30446b69e              # double 0.76182700000000003
	.quad	0x3fdd74aba3875925              # double 0.46024599999999999
	.quad	0x3fd563022dd7a9a0              # double 0.33416800000000002
	.quad	0x3fefc7ffde7210bf              # double 0.99316400000000004
	.quad	0x3fc3acffa7eb6bf4              # double 0.15371699999999999
	.quad	0x3fcc72e275ab7dc8              # double 0.22225600000000001
	.quad	0x3fdf6a619da9c993              # double 0.49086800000000003
	.quad	0x3fc4db7ae5796bfd              # double 0.16294800000000001
	.quad	0x3f938fbca1059ea5              # double 0.019102999999999998
	.quad	0x3fee4447c30d306a              # double 0.94583499999999998
	.quad	0x3fbdd4e8fb00bcbe              # double 0.11652999999999999
	.quad	0x3fe7acf95d4e8fb0              # double 0.73986499999999999
	.quad	0x3fe541d29dc725c4              # double 0.66428500000000001
	.quad	0x3fce1355475a31a5              # double 0.23496500000000001
	.quad	0x3fece054690de093              # double 0.90238399999999996
	.quad	0x3fe10509bf9c62a2              # double 0.53186500000000003
	.quad	0x3fe78de6ddf00abf              # double 0.73607199999999995
	.quad	0x3fd6f84cad57bc7f              # double 0.35890499999999997
	.quad	0x3f979314445aa2e4              # double 0.023022000000000001
	.quad	0x3fd301d9f4d37c13              # double 0.29698799999999997
	.quad	0x3fe5e425aee631f9              # double 0.68410000000000004
	.quad	0x3fc9a027525460aa              # double 0.20019999999999999
	.quad	0x3fa3e425aee631f9              # double 0.038850000000000003
	.quad	0x3fd20a67620ee8d1              # double 0.281885
	.quad	0x3fdefda4052d666b              # double 0.48423100000000002
	.quad	0x3fd143ed959a3098              # double 0.26977099999999998
	.quad	0x3fd23a5c1c6088d7              # double 0.28481200000000001
	.quad	0x3fe481abd1aa821f              # double 0.64082899999999998
	.quad	0x3fd7965f5275ee9a              # double 0.36855300000000002
	.quad	0x3fd0094e5d5b24ea              # double 0.25056800000000001
	.quad	0x3fefe6106ab14ec2              # double 0.996834
	.quad	0x3fbf266ba493c89f              # double 0.12168
	.quad	0x3fd56612839042d9              # double 0.33435500000000001
	.quad	0x3fef14855da27286              # double 0.97125499999999998
	.quad	0x3fce03cd141a6938              # double 0.234491
	.quad	0x3fe07cbf6e3f78bc              # double 0.51522800000000002
	.quad	0x3fe6d5f99c38b04b              # double 0.71362000000000003
	.quad	0x3fe7a036006d0d4a              # double 0.73830700000000005
	.quad	0x3fe3492146a1a501              # double 0.60267700000000002
	.quad	0x3fed26edaa92e621              # double 0.91100199999999998
	.quad	0x3fec21059ea57215              # double 0.87903100000000001
	.quad	0x3feca9f59ccfaeff              # double 0.89574699999999996
	.quad	0x3fc4a161e4f765fe              # double 0.16117500000000001
	.quad	0x3fea47a9e2bcf91a              # double 0.82124799999999998
	.quad	0x3fe8032b990afe61              # double 0.75038700000000003
	.quad	0x3fe06d5065732160              # double 0.51334400000000002
	.quad	0x3fd6641700cd8559              # double 0.34985899999999998
	.quad	0x3fe48a936c58eeaf              # double 0.64191600000000004
	.quad	0x3fed2e74f2f123c4              # double 0.91192099999999998
	.quad	0x3fecaa6f3f52fc26              # double 0.89580499999999996
	.quad	0x3fd382e87d2c7b89              # double 0.304865
	.quad	0x3fee1741d084e832              # double 0.94033900000000004
	.quad	0x3fe1e3ffef39085f              # double 0.55908199999999997
	.quad	0x3fb355043e5321e6              # double 0.075516
	.quad	0x3fe08b39192641b3              # double 0.51699499999999998
	.quad	0x3fe40b0af5fd47bf              # double 0.62634800000000002
	.quad	0x3fefcfdb09a671ef              # double 0.99412299999999997
	.quad	0x3fd43d74d594f26b              # double 0.316251
	.quad	0x3fe5846e8f29d40f              # double 0.67241600000000001
	.quad	0x3fd285d31337eb29              # double 0.28941800000000001
	.quad	0x3fe91a6937d1fe65              # double 0.784474
	.quad	0x3fe040bfe3b03e21              # double 0.50790400000000002
	.quad	0x3fdbb951c5c5718f              # double 0.43318600000000002
	.quad	0x3fb8b6f9fcb0c027              # double 0.096542000000000003
	.quad	0x3fe9e8f4b61fe21e              # double 0.80968700000000005
	.quad	0x3fddda6e75ff609e              # double 0.46645700000000001
	.quad	0x3fec8de6ddf00abf              # double 0.89232199999999995
	.quad	0x3fef19e518f3eccc              # double 0.97191099999999996
	.quad	0x3fea914b167ec786              # double 0.83023599999999997
	.quad	0x3fd0254e6e221c8a              # double 0.25227699999999997
	.quad	0x3fe186af46aa087d              # double 0.54769100000000004
	.quad	0x3fcb1e42e1262025              # double 0.21186099999999999
	.quad	0x3fcd462c343b70ef              # double 0.22870399999999999
	.quad	0x3fdd474d9c6b0532              # double 0.45747700000000002
	.quad	0x3fcf9bc33f85510d              # double 0.24694099999999999
	.quad	0x3fe1cd338f798527              # double 0.55629899999999999
	.quad	0x3fe076db940fecdd              # double 0.51450899999999999
	.quad	0x3fe0119ce075f6fd              # double 0.50214999999999999
	.quad	0x3fe70476f2a5a46a              # double 0.71929500000000002
	.quad	0x3fd8188b11409a24              # double 0.376498
	.quad	0x3feef2c94b380cb7              # double 0.96713700000000002
	.quad	0x3fe73f487fcb923a              # double 0.72647499999999998
	.quad	0x3fc70efdc9c4da90              # double 0.180145
	.quad	0x3fe94c165907d912              # double 0.79053799999999996
	.quad	0x3fe193a71151611c              # double 0.54927400000000004
	.quad	0x3fc9579af1886df8              # double 0.197986
	.quad	0x3fe3c28b2a6b0d95              # double 0.61749799999999999
	.quad	0x3fe4e3497b7414a5              # double 0.65274500000000002
	.quad	0x3fe9146e4c0df58c              # double 0.78374399999999999
	.quad	0x3fddd9a52263d817              # double 0.46640900000000002
	.quad	0x3fd470c996b7670a              # double 0.319384
	.quad	0x3fedf2d1aeb3dd12              # double 0.93589100000000003
	.quad	0x3fdb6ad2dcb1465f              # double 0.42839500000000003
	.quad	0x3fe43fe5c91d14e4              # double 0.63280000000000003
	.quad	0x3fdb3265add9c27f              # double 0.42495100000000002
	.quad	0x3fefa9b499d0203e              # double 0.98946599999999996
	.quad	0x3fef55757d5a9eb2              # double 0.979182
	.quad	0x3fc529888f861a61              # double 0.16533
	.quad	0x3fc7c768dfbd6a59              # double 0.18577299999999999
	.quad	0x3fd4b77c02afdda9              # double 0.32369900000000001
	.quad	0x3fee5a5b9628cbd1              # double 0.94852999999999998
	.quad	0x3fdb17e34b945309              # double 0.42333300000000001
	.quad	0x3fe40301a79fec9a              # double 0.62536700000000001
	.quad	0x3fb3bf1e8e608073              # double 0.077134999999999995
	.quad	0x3fdddb50f40e5a36              # double 0.46651100000000001
	.quad	0x3fd6c77143393ab4              # double 0.35592299999999999
	.quad	0x3fe2a176ddaceee1              # double 0.58221000000000001
	.quad	0x3fec61650a45d420              # double 0.88688900000000003
	.quad	0x3fd31272c94b380d              # double 0.29800100000000002
	.quad	0x3fde566490a350d3              # double 0.47402300000000003
	.quad	0x3fd8220bc382a130              # double 0.37707800000000002
	.quad	0x3fddd3aa369fcf3e              # double 0.46604400000000001
	.quad	0x3fe2714983d79075              # double 0.57632899999999998
	.quad	0x3fcbffa3b9ae0c17              # double 0.21873899999999999
	.quad	0x3fbcceb356da0169              # double 0.112529
	.quad	0x3fdb9d12cadddf44              # double 0.43146200000000001
	.quad	0x3fd3c0f01fb82c2c              # double 0.30865100000000001
	.quad	0x3fe4aa4b9884c6a4              # double 0.64578800000000003
	.quad	0x3feab04039abf338              # double 0.83401499999999995
	.quad	0x3fe1238da3c21188              # double 0.53559000000000001
	.quad	0x3fe2ec0f88333fc8              # double 0.59131599999999995
	.quad	0x3fea6b59146e4c0e              # double 0.825604
	.quad	0x3fe2977a7008a698              # double 0.58099100000000004
	.quad	0x3fef39b23dd54da5              # double 0.97579300000000002
	.quad	0x3fc471715c63ae25              # double 0.15971199999999999
	.quad	0x3fd816db0dd82fd7              # double 0.37639499999999998
	.quad	0x3fe7606b7aa25d8d              # double 0.73051999999999995
	.quad	0x3fc19b66f9335d25              # double 0.13755500000000001
	.quad	0x3fef7cfa26a22b39              # double 0.98400600000000004
	.quad	0x3fcea6e32e3821af              # double 0.23946799999999999
	.quad	0x3fdc8b04ab606b7b              # double 0.44598500000000002
	.quad	0x3fe723aafff36ac6              # double 0.72310399999999997
	.quad	0x3fe25f2a9d627bf6              # double 0.57411699999999999
	.quad	0x3fea9670196d8f50              # double 0.83086400000000005
	.quad	0x3fc89b7bf1e8e608              # double 0.192245
	.quad	0x3fe8f46aa087ca64              # double 0.77983599999999997
	.quad	0x3fe688893b7d8490              # double 0.70416699999999999
	.quad	0x3fd34873365881a1              # double 0.30129699999999998
	.quad	0x3fe8e994185058de              # double 0.77851300000000001
	.quad	0x3feb00c521dda05a              # double 0.84384400000000004
	.quad	0x3fd6c9f72f76e610              # double 0.35607699999999998
	.quad	0x3fea859641f64495              # double 0.82880699999999996
	.quad	0x3fe4b78ab0c88a48              # double 0.64740500000000001
	.quad	0x3feda32d2bb23572              # double 0.92616900000000002
	.quad	0x3fe39fb1e18efbb1              # double 0.61324400000000001
	.quad	0x3fd690257c914b16              # double 0.35254799999999997
	.quad	0x3fbc404a72ead927              # double 0.110356
	.quad	0x3fcda1016ce789e7              # double 0.23147599999999999
	.quad	0x3fdae26916440f24              # double 0.42006900000000003
	.quad	0x3f962b6ae7d566cf              # double 0.021649999999999999
	.quad	0x3fddbecedd484513              # double 0.46477099999999999
	.quad	0x3fb7583a53b8e4b8              # double 0.091189999999999993
	.quad	0x3fe4159a30984e40              # double 0.627637
	.quad	0x3fec58793dd97f63              # double 0.88580000000000003
	.quad	0x3fe1defa615a8deb              # double 0.55846899999999999
	.quad	0x3fc275360d024702              # double 0.144202
	.quad	0x3fe0bbc2b94d9408              # double 0.52292000000000005
	.quad	0x3fd576a2f48c2e77              # double 0.335366
	.quad	0x3fe1d9c6b0531983              # double 0.55783400000000005
	.quad	0x3fe2de1c15097c81              # double 0.58961300000000005
	.quad	0x3fb3ec3547e06962              # double 0.077823000000000003
	.quad	0x3fbf8bef8ceb356e              # double 0.12322900000000001
	.quad	0x3fe97d438d1d8a55              # double 0.79654100000000005
	.quad	0x3fe27f36ac647779              # double 0.57802900000000002
	.quad	0x3fdf0c1b97353b4b              # double 0.48511399999999999
	.quad	0x3fdc997c3d68405b              # double 0.44686799999999999
	.quad	0x3fd4efb6dca07f67              # double 0.32713100000000001
	.quad	0x3fd22fcefaa4766c              # double 0.28416799999999998
	.quad	0x3fa111ada76d97b3              # double 0.033338
	.quad	0x3fd34894c447c30d              # double 0.30130499999999999
	.quad	0x3fed4692f6e8294a              # double 0.91486500000000004
	.quad	0x3fe8be74afd54541              # double 0.77324899999999996
	.quad	0x3fe0826edaa92e62              # double 0.51592199999999999
	.quad	0x3fe4288ace24bba1              # double 0.62994899999999998
	.quad	0x3fd5b2b3461309c8              # double 0.339032
	.quad	0x3fd3cd466f5019f4              # double 0.30940400000000001
	.quad	0x3fdf0064a9cdc444              # double 0.48439900000000002
	.quad	0x3fe11e321a2e7f6f              # double 0.53493599999999997
	.quad	0x3fe5e770bd017daf              # double 0.68450200000000005
	.quad	0x3fcbc9d5a187a4a5              # double 0.21709700000000001
	.quad	0x3fe1dea033e78e19              # double 0.55842599999999998
	.quad	0x3fdb8d7e02645e4e              # double 0.43051099999999998
	.quad	0x3fe4cdca8e2e2b8c              # double 0.65012099999999995
	.quad	0x3fe6192428d434a0              # double 0.69056899999999999
	.quad	0x3fb035158b827fa2              # double 0.063310000000000005
	.quad	0x3fe02962cfd8f0c7              # double 0.50505199999999995
	.quad	0x3fcf554fbdad7519              # double 0.24479100000000001
	.quad	0x3fc9eb313be22e5e              # double 0.20249
	.quad	0x3fdf47b677f6b1a3              # double 0.48875200000000002
	.quad	0x3fd002e6644d8772              # double 0.25017699999999998
	.quad	0x3fe3f969e3c96894              # double 0.62419599999999997
	.quad	0x3fd7d9dba908a266              # double 0.372672
	.quad	0x3fcff5c6c11a1123              # double 0.24968799999999999
	.quad	0x3fed06a4ca4f440b              # double 0.90706100000000001
	.quad	0x3fb29aa1d755bccb              # double 0.072672
	.quad	0x3fee18cc144028e5              # double 0.940527
	.quad	0x3fe1edacabc51548              # double 0.56026299999999996
	.quad	0x3fc533daf8df7a4e              # double 0.16564499999999999
	.quad	0x3fc6115df6555c53              # double 0.172405
	.quad	0x3fb8fb1183b60286              # double 0.097581000000000001
	.quad	0x3fed4fb1183b6028              # double 0.91597799999999996
	.quad	0x3fb570d62bf11f92              # double 0.083752999999999994
	.quad	0x3fee0fe260b2c83f              # double 0.93943900000000002
	.quad	0x3fb557bc7f77af64              # double 0.08337
	.quad	0x3f9ad9ad85dfa872              # double 0.026221000000000001
	.quad	0x3fdf69ec2ce46499              # double 0.49084
	.quad	0x3fed5db1209edbf9              # double 0.91768700000000003
	.quad	0x3fdd83558a761028              # double 0.46114100000000002
	.quad	0x3fe071d81f106680              # double 0.51389700000000005
	.quad	0x3fd480dc33721d54              # double 0.32036500000000001
	.quad	0x3fe58c7c0f451761              # double 0.67339899999999997
	.quad	0x3fc475818c5c9a35              # double 0.15983600000000001
	.quad	0x3fefdabe27179bfe              # double 0.995452
	.quad	0x3fe9ebd9018e7579              # double 0.81003999999999998
	.quad	0x3fb87dd441355476              # double 0.095670000000000005
	.quad	0x3f8347a5b0ff10ed              # double 0.0094140000000000004
	.quad	0x3fec54f5903a7547              # double 0.88537100000000002
	.quad	0x3fe0326e115592da              # double 0.50615600000000005
	.quad	0x3fe34a558ea7ce10              # double 0.60282400000000003
	.quad	0x3fcfb1d92b7fe08b              # double 0.247615
	.quad	0x3fe6efda836eb4ea              # double 0.71677900000000005
	.quad	0x3fde85015c209247              # double 0.47686800000000001
	.quad	0x3fec7b7414a4d2b3              # double 0.89007000000000003
	.quad	0x3fd31bf7ad4b2746              # double 0.29858200000000001
	.quad	0x3fb93b0813cab820              # double 0.098557000000000005
	.quad	0x3fd63a5c1c6088d7              # double 0.34731200000000001
	.quad	0x3fed6eb91b3f20a7              # double 0.91976599999999997
	.quad	0x3fe0023c85c24c40              # double 0.50027299999999997
	.quad	0x3f941e9af5ba2be0              # double 0.019647999999999999
	.quad	0x3fbe6a875d56f32c              # double 0.118813
	.quad	0x3fd6a54823854046              # double 0.35383799999999999
	.quad	0x3fd0e4b018611fd6              # double 0.26395800000000003
	.quad	0x3fda1c10d7be9857              # double 0.40796300000000002
	.quad	0x3fe140d0aaa7ded7              # double 0.53916200000000003
	.quad	0x3fe09fcb0c026cc2              # double 0.51950600000000002
	.quad	0x3fe816fc9bc77143              # double 0.75280599999999998
	.quad	0x3fe876f2a5a469d7              # double 0.76451999999999998
	.quad	0x3fcb5cb790fb6567              # double 0.21376700000000001
	.quad	0x3fda0318b9346994              # double 0.40643899999999999
	.quad	0x3fb15a9eb2074ea9              # double 0.067789000000000002
	.quad	0x3fe5c6a7ef9db22d              # double 0.68049999999999999
	.quad	0x3f9fb5d031055b8a              # double 0.030967000000000001
	.quad	0x3fe11fd36f7e3d1d              # double 0.53513500000000003
	.quad	0x3fd10a350d2806af              # double 0.26624799999999998
	.quad	0x3fed78a0902de00d              # double 0.92097499999999999
	.quad	0x3fe5f1971c10d7bf              # double 0.68574100000000004
	.quad	0x3fe45ef1fddebd90              # double 0.63658999999999999
	.quad	0x3feda11a975afaf8              # double 0.92591599999999996
	.quad	0x3f96598e10cf5b1d              # double 0.021826000000000002
	.quad	0x3fcd295e9e1b089a              # double 0.227825
	.quad	0x3fc01f42bb6672fc              # double 0.12595400000000001
	.quad	0x3fe3928bf3bea91e              # double 0.61163900000000004
	.quad	0x3faf90539fba450b              # double 0.061648000000000001
	.quad	0x3fd2bc408d8ec95c              # double 0.29274
	.quad	0x3fd4f7fcfc3f811f              # double 0.32763599999999998
	.quad	0x3fab05d95dd4c76d              # double 0.052779
	.quad	0x3fd0ee631f8a0903              # double 0.26455000000000001
	.quad	0x3fd9aab042528ae7              # double 0.40104299999999998
	.quad	0x3fed7fc7607c419a              # double 0.921848
	.quad	0x3fe4300ffda4052d              # double 0.63086699999999996
	.quad	0x3fd03edd8b60f1b2              # double 0.25383699999999998
	.quad	0x3fe85d41fa765343              # double 0.76138399999999995
	.quad	0x3fdc1f85d744f5d3              # double 0.43942399999999998
	.quad	0x3fe53bea91d9b1b8              # double 0.66356400000000004
	.quad	0x3fc9b5d031055b8a              # double 0.20086100000000001
	.quad	0x3fcde1f3a57eaa2a              # double 0.233458
	.quad	0x3fc29b6b2af14552              # double 0.145368
	.quad	0x3fd3426bb55ac040              # double 0.300929
	.quad	0x3fd46ed6777079e6              # double 0.31926500000000002
	.quad	0x3fef6501e2584f4c              # double 0.98107999999999995
	.quad	0x3fe5bc579f234656              # double 0.67924099999999998
	.quad	0x3f9bef49cf56eac8              # double 0.027279999999999999
	.quad	0x3fe433c3e74afd54              # double 0.63131899999999996
	.quad	0x3fb12e0e30446b6a              # double 0.067109000000000002
	.quad	0x3fd946cb966be7b0              # double 0.39494600000000002
	.quad	0x3fe3096787ce95fb              # double 0.59489800000000004
	.quad	0x3fc344f5d35653ca              # double 0.15054200000000001
	.quad	0x3fdf749adc8fb86f              # double 0.49149199999999998
	.quad	0x3fe5972abef06b38              # double 0.67470300000000005
	.quad	0x3fb7020c49ba5e35              # double 0.089874999999999997
	.quad	0x3fbb1c75818c5c9a              # double 0.105903
	.quad	0x3fe73d96638433d7              # double 0.72626800000000002
	.quad	0x3fe0e6d373affb05              # double 0.52817700000000001
	.quad	0x3fd123358f2e05cd              # double 0.26777400000000001
	.quad	0x3fd81eb4202d9cf1              # double 0.37687399999999999
	.quad	0x3fcc5fbf83382e45              # double 0.22167200000000001
	.quad	0x3fb6b1e5c0b99913              # double 0.088651999999999995
	.quad	0x3fb5e94ab1d4f9c2              # double 0.085591
	.quad	0x3fe99abb01c92ddc              # double 0.80013800000000001
	.quad	0x3fe021f4b1ee2435              # double 0.50414499999999995
	.quad	0x3fd0a06a6e32e382              # double 0.25979099999999999
	.quad	0x3fed24d2b2bfdb4d              # double 0.91074500000000003
	.quad	0x3fca80064a9cdc44              # double 0.20703199999999999
	.quad	0x3fe3ed84d338f798              # double 0.62274399999999996
	.quad	0x3fcb6848beb5b2d5              # double 0.21412
	.quad	0x3fd7f6d330941c82              # double 0.37444
	.quad	0x3fe6ecd8dbcec850              # double 0.71641200000000005
	.quad	0x3fea797edc7ef178              # double 0.82733100000000004
	.quad	0x3fea771865519371              # double 0.82703800000000005
	.quad	0x3fde44567125dd09              # double 0.47292099999999998
	.quad	0x3fb9df97aaac1095              # double 0.10106800000000001
	.quad	0x3fdf06e5cd4ed2cc              # double 0.484796
	.quad	0x3fbbb2788db0574b              # double 0.108192
	.quad	0x3f9f99806f262889              # double 0.030859000000000001
	.quad	0x3fc508b32ce89657              # double 0.164328
	.quad	0x3fd96b1a2a4db164              # double 0.39716200000000002
	.quad	0x3fe488feac42e98a              # double 0.64172300000000004
	.quad	0x3fe537dc7abfb9bf              # double 0.66306900000000002
	.quad	0x3fc999029ae4f334              # double 0.19998199999999999
	.quad	0x3fe11fc08fa7a850              # double 0.53512599999999999
	.quad	0x3fd98155d5f56a7b              # double 0.39851900000000001
	.quad	0x3fe21c3265add9c2              # double 0.56594199999999995
	.quad	0x3fdf1e18efbb0e5e              # double 0.48621199999999998
	.quad	0x3fe851aeb3dd11be              # double 0.75997099999999995
	.quad	0x3fd3088d6d3b6cbe              # double 0.29739700000000002
	.quad	0x3fd61e4b44a1f080              # double 0.34559899999999999
	.quad	0x3fdd74c4cdfaca36              # double 0.46025199999999999
	.quad	0x3fe6f284167a95c8              # double 0.71710399999999996
	.quad	0x3fe5a44c7b02d59d              # double 0.67630599999999996
	.quad	0x3fb622706d506573              # double 0.086462999999999998
	.quad	0x3fcee8fb00bcbe62              # double 0.24148500000000001
	.quad	0x3fd6899bf5946c33              # double 0.35214899999999999
	.quad	0x3f83ade225fa658c              # double 0.0096089999999999995
	.quad	0x3fef679ee02a77a3              # double 0.98139900000000002
	.quad	0x3fe59ab8e8ea39c5              # double 0.67513699999999999
	.quad	0x3fb9e785b5b70692              # double 0.101189
	.quad	0x3fb53825e13b18db              # double 0.082888000000000003
	.quad	0x3fe7652157689ca2              # double 0.73109500000000005
	.quad	0x3fccd2e514c22ee4              # double 0.225186
	.quad	0x3fe4e8ee6b8305d9              # double 0.65343399999999996
	.quad	0x3fc1e9856a37ac3f              # double 0.13993900000000001
	.quad	0x3feaee6106ab14ec              # double 0.84159899999999998
	.quad	0x3fca666ec9e236c1              # double 0.20625099999999999
	.quad	0x3feece89656eefa2              # double 0.96271200000000001
	.quad	0x3fd9b1290257c915              # double 0.40143800000000002
	.quad	0x3fe53d5347a5b0ff              # double 0.66373599999999999
	.quad	0x3fce393ee5eedcc2              # double 0.236122
	.quad	0x3fd779e59f2ba9d2              # double 0.366815
	.quad	0x3fad60e94ee392e2              # double 0.05738
	.quad	0x3fddd1f601797cc4              # double 0.46594000000000002
	.quad	0x3fc69b5a63f9a49c              # double 0.176616
	.quad	0x3fdd3c18b502abac              # double 0.456793
	.quad	0x3fc189d6adf71eb0              # double 0.137019
	.quad	0x3fdd2d5171e29b6b              # double 0.45589099999999999
	.quad	0x3fc0aeafab53d641              # double 0.130331
	.quad	0x3fee6c5d206c8712              # double 0.95072800000000002
	.quad	0x3fe0c63f141205bc              # double 0.5242
	.quad	0x3fd6449dbec2480f              # double 0.34793800000000003
	.quad	0x3fec515ce9e5e248              # double 0.88493200000000005
	.quad	0x3feb9ceaf251c194              # double 0.86290500000000003
	.quad	0x3fe5ecc814d7279a              # double 0.68515400000000004
	.quad	0x3fc80f88333fc86d              # double 0.187974
	.quad	0x3fd8be7afa722186              # double 0.38662600000000003
	.quad	0x3fedafa5093964a6              # double 0.92769100000000004
	.quad	0x3fc6cba732df505d              # double 0.17809
	.quad	0x3fd5e29f9ce8d973              # double 0.34195700000000001
	.quad	0x3fe2655e28aa4335              # double 0.574874
	.quad	0x3fe2bb2fec56d5d0              # double 0.58535000000000004
	.quad	0x3fdbdb1209edbf8c              # double 0.43524600000000002
	.quad	0x3fde2ef911cf355d              # double 0.47161700000000001
	.quad	0x3fee26612839042e              # double 0.94218500000000005
	.quad	0x3fb1cc857f3061c8              # double 0.069527000000000005
	.quad	0x3feeb2e7b3d8e001              # double 0.95933900000000005
	.quad	0x3fa64e69f05ea24d              # double 0.043567000000000002
	.quad	0x3fd942b302f72b45              # double 0.39469599999999999
	.quad	0x3fdba2d72ffd1dcd              # double 0.43181399999999998
	.quad	0x3fdd8d434a01abd2              # double 0.46174700000000002
	.quad	0x3fcfdffc5479d4d8              # double 0.24902299999999999
	.quad	0x3fe0ad234eb9a177              # double 0.52113500000000001
	.quad	0x3fe8600f345069a5              # double 0.76172600000000001
	.quad	0x3fc60b0292817764              # double 0.172211
	.quad	0x3fce0780fdc1615f              # double 0.23460400000000001
	.quad	0x3fe4f8705425f202              # double 0.65532699999999999
	.quad	0x3fbf357e670e2c13              # double 0.12191
	.quad	0x3fe441c1d6cf850e              # double 0.63302700000000001
	.quad	0x3fefaf76e6106ab1              # double 0.99016899999999996
	.quad	0x3fe85a469d7342ee              # double 0.76102000000000003
	.quad	0x3feaae09fe86833c              # double 0.83374499999999995
	.quad	0x3fa5c011d3671ac1              # double 0.042480999999999998
	.quad	0x3fdc1eafee6fb4c4              # double 0.43937300000000001
	.quad	0x3fccc7863beec398              # double 0.22483900000000001
	.quad	0x3fe4c48f10a99b6f              # double 0.64899399999999996
	.quad	0x3fb460aa64c2f838              # double 0.079600000000000004
	.quad	0x3fe087df5cf2495e              # double 0.51658599999999999
	.quad	0x3fefdc768dfbd6a6              # double 0.99566200000000005
	.quad	0x3fc2ab7995ee136e              # double 0.14585799999999999
	.quad	0x3fef79357603925c              # double 0.98354600000000003
	.quad	0x3fa97edc7ef177a7              # double 0.049796
	.quad	0x3fe5dfdcdf698783              # double 0.68357699999999999
	.quad	0x3fe74729f59ccfaf              # double 0.727437
	.quad	0x3fe76cf850df15a5              # double 0.73205200000000004
	.quad	0x3fe9db1209edbf8c              # double 0.80799200000000004
	.quad	0x3fdc729f59ccfaf0              # double 0.444496
	.quad	0x3fe46238da3c2118              # double 0.63698999999999995
	.quad	0x3fdb7d84901d1915              # double 0.42953599999999997
	.quad	0x3fc1c94f69ca9ef5              # double 0.138956
	.quad	0x3fe38f49491f2dc3              # double 0.61124100000000003
	.quad	0x3fd63886594af4f1              # double 0.34720000000000001
	.quad	0x3fe04c76d117b528              # double 0.50933399999999995
	.quad	0x3fe6731098d477bc              # double 0.701546
	.quad	0x3feba8a1dfb9389b              # double 0.86433499999999996
	.quad	0x3fec2e9899bf5947              # double 0.88068800000000003
	.quad	0x3fe8bd66277c45cc              # double 0.77312000000000002
	.quad	0x3fb87cd898b2e9cd              # double 0.095655000000000004
	.quad	0x3fdc6f5019f3c70d              # double 0.44429400000000002
	.quad	0x3fd9cc1871e6cd29              # double 0.403082
	.quad	0x3fe33024f6598e11              # double 0.59962700000000002
	.quad	0x3fe6d28ae74f2f12              # double 0.71320099999999997
	.quad	0x3fed1b3d07c84b5e              # double 0.90957500000000002
	.quad	0x3fd5759253543aeb              # double 0.33530100000000002
	.quad	0x3fdc80baa582dbe8              # double 0.445357
	.quad	0x3fc616052502eec8              # double 0.17254700000000001
	.quad	0x3fdaff0025bfad2a              # double 0.42181400000000002
	.quad	0x3fc4dbb59ddc1e79              # double 0.16295499999999999
	.quad	0x3fe6ea9a3d2d87f9              # double 0.71613800000000005
	.quad	0x3fe16daa92e62132              # double 0.54463700000000004
	.quad	0x3fe515208e150119              # double 0.658829
	.quad	0x3fb55ffe6d58c8ef              # double 0.083496000000000001
	.quad	0x3fe91a543f1c7582              # double 0.78446400000000005
	.quad	0x3fdb9cb252ce032e              # double 0.43143900000000002
	.quad	0x3fe03adc0980b242              # double 0.507185
	.quad	0x3fd7caff6d330942              # double 0.37176500000000001
	.quad	0x3f7e0828c36da87a              # double 0.007332
	.quad	0x3feabe07a28bb0a3              # double 0.83569700000000002
	.quad	0x3fe4ab063e07a28c              # double 0.64587700000000003
	.quad	0x3fd7687f455a7d24              # double 0.36575299999999999
	.quad	0x3fccf3fd933e35c6              # double 0.22619600000000001
	.quad	0x3faf16d2aa5c5f7c              # double 0.060720999999999997
	.quad	0x3fe5b11622813448              # double 0.677867
	.quad	0x3fe0551d68c692f7              # double 0.51039000000000001
	.quad	0x3fe47eae5bc87db3              # double 0.64046400000000003
	.quad	0x3fe5fadf2ecf2064              # double 0.68687399999999998
	.quad	0x3fcb6ba8c586876e              # double 0.214223
	.quad	0x3fe6771865519371              # double 0.70203800000000005
	.quad	0x3f7eedcc20d5629e              # double 0.0075510000000000004
	.quad	0x3fd891b3f20a73f7              # double 0.38389299999999998
	.quad	0x3fe6d08919ef954f              # double 0.71295600000000003
	.quad	0x3fee67b1c0010c6f              # double 0.95015799999999995
	.quad	0x3f91f3a57eaa2a0b              # double 0.017531000000000001
	.quad	0x3fe556b873797460              # double 0.66683599999999998
	.quad	0x3feec2d6a9c560c8              # double 0.96128400000000002
	.quad	0x3fd7d0aed99cbee8              # double 0.372112
	.quad	0x3fec3691212513b6              # double 0.88166100000000003
	.quad	0x3fb1ab7dc7abfb9c              # double 0.069023000000000001
	.quad	0x3fec2454de7ea5f8              # double 0.87943499999999997
	.quad	0x3fce7fe4bcad9ad8              # double 0.23827799999999999
	.quad	0x3fdad8d36b4c7f35              # double 0.41948400000000002
	.quad	0x3fd223bff8a8f3aa              # double 0.28343200000000002
	.quad	0x3fed94141e9af5ba              # double 0.92432599999999998
	.quad	0x3fb29bbf0dc768e0              # double 0.072689000000000004
	.quad	0x3feaa048e043a216              # double 0.83206599999999997
	.quad	0x3fe991f926c7eae6              # double 0.79906900000000003
	.quad	0x3fc09c66d373affb              # double 0.129773
	.quad	0x3f9bb8800eae18ad              # double 0.027071000000000001
	.quad	0x3fea0f36694898f6              # double 0.814357
	.quad	0x3fec37b4a2339c0f              # double 0.88180000000000003
	.quad	0x3fea0c154c985f07              # double 0.813975
	.quad	0x3fc2493c89f40a28              # double 0.14285999999999999
	.quad	0x3fe39799e518f3ed              # double 0.61225600000000002
	.quad	0x3fb5670196d8f4f9              # double 0.083602999999999997
	.quad	0x3fed3356da0168b6              # double 0.91251700000000002
	.quad	0x3fcdab191dde3758              # double 0.23178399999999999
	.quad	0x3faddf2239e6ab9b              # double 0.058342999999999999
	.quad	0x3fe97b6dca07f66f              # double 0.79631700000000005
	.quad	0x3fe9a0bc382a12f9              # double 0.800871
	.quad	0x3fd8a7e73a365cb3              # double 0.38524799999999998
	.quad	0x3f9985f06f694467              # double 0.024924999999999999
	.quad	0x3fe57e3d1cc100e7              # double 0.67166000000000003
	.quad	0x3fef54bcf0b6b6e1              # double 0.97909400000000001
	.quad	0x3fe65887ebf22c02              # double 0.69830700000000001
	.quad	0x3fe007faa044ae86              # double 0.50097400000000003
	.quad	0x3fd684db9c7368ad              # double 0.35185899999999998
	.quad	0x3fef9253543aeab8              # double 0.98661200000000004
	.quad	0x3fe270739b024f66              # double 0.57622700000000004
	.quad	0x3fea822dd7a99fa1              # double 0.82839099999999999
	.quad	0x3fe25d91ab8e8ea4              # double 0.57392200000000004
	.quad	0x3fe0aceee0f3cb3e              # double 0.52110999999999996
	.quad	0x3fe60c6d612c6ac2              # double 0.68901699999999999
	.quad	0x3fd32157689ca18c              # double 0.29891000000000001
	.quad	0x3fc5471f79420b3d              # double 0.16623299999999999
	.quad	0x3fdbf7a4e7ab7564              # double 0.43698999999999999
	.quad	0x3fd7650a45d41fa7              # double 0.36554199999999998
	.quad	0x3fd64d551d68c693              # double 0.34847
	.quad	0x3feed5410f94c87a              # double 0.96353200000000006
	.quad	0x3fdc15c209246bf0              # double 0.438828
	.quad	0x3fed0e325d4a5df2              # double 0.90798299999999998
	.quad	0x3fc32617c1bda512              # double 0.14960000000000001
	.quad	0x3fe37d651b0ccbc0              # double 0.60905699999999996
	.quad	0x3fd4a6efc371da38              # double 0.322689
	.quad	0x3fc05bd944aa53fc              # double 0.127803
	.quad	0x3fd1a8198f1d3ed5              # double 0.27588499999999999
	.quad	0x3fd767b1c0010c6f              # double 0.36570399999999997
	.quad	0x3f94cb9ecf638002              # double 0.020308
	.quad	0x3fd4f34d6a161e4f              # double 0.32734999999999997
	.quad	0x3fe0bfca85caafbc              # double 0.52341199999999999
	.quad	0x3fdf836eb4e98138              # double 0.49239699999999997
	.quad	0x3fd44eebf65dbfcf              # double 0.31731700000000002
	.quad	0x3fb0f1c3265add9c              # double 0.066188999999999998
	.quad	0x3fdf3d74d594f26b              # double 0.488126
	.quad	0x3fd5ca03c4b09e99              # double 0.34045500000000001
	.quad	0x3f93369b9d7fd827              # double 0.018762999999999998
	.quad	0x3fe43ba55d1c3ac9              # double 0.63228099999999998
	.quad	0x3fc8f10a99b6f5cb              # double 0.194856
	.quad	0x3fd321f6cacd184c              # double 0.29894799999999999
	.quad	0x3fe22c5197a24895              # double 0.56791000000000003
	.quad	0x3fe0470eb24a6a87              # double 0.50867399999999996
	.quad	0x3fb4d9b5e95b78cd              # double 0.081447000000000006
	.quad	0x3fe70fe47991bc56              # double 0.72069000000000005
	.quad	0x3fe9f35e310dbf05              # double 0.81095799999999996
	.quad	0x3fe62bf338716095              # double 0.69286499999999995
	.quad	0x3fc9a30121682f94              # double 0.20028699999999999
	.quad	0x3fe672324c836651              # double 0.70143999999999995
	.quad	0x3fb8bdec5f394b7b              # double 0.096647999999999998
	.quad	0x3fef274e22a2c237              # double 0.97354799999999996
	.quad	0x3fb58b3f63c31df7              # double 0.084155999999999995
	.quad	0x3fe21567dbb16c1e              # double 0.56511299999999998
	.quad	0x3febe99a62ed3522              # double 0.87226599999999999
	.quad	0x3fd93a2163fdd65a              # double 0.394173
	.quad	0x3fe3d9f0a1be2b49              # double 0.62035399999999996
	.quad	0x3fef1ff2e48e8a72              # double 0.97265000000000001
	.quad	0x3fc5bcb1cc964628              # double 0.169821
	.quad	0x3fe5123e5b8561d4              # double 0.65847699999999998
	.quad	0x3fea65f7403dddb1              # double 0.82494699999999999
	.quad	0x3f6d2178f68be2f8              # double 0.0035560000000000001
	.quad	0x3fed34677b395c42              # double 0.91264699999999999
	.quad	0x3fe46e47dc37a3db              # double 0.63846199999999997
	.quad	0x3fe9a06c8711d799              # double 0.80083300000000002
	.quad	0x3febe70c1333b96b              # double 0.87195400000000001
	.quad	0x3fdca087ca643cc0              # double 0.44729799999999997
	.quad	0x3fd1f8f8a4c1ebc8              # double 0.28082099999999999
	.quad	0x3fd1ab9f559b3d08              # double 0.27610000000000001
	.quad	0x3fd09b1fab96f21f              # double 0.25946799999999998
	.quad	0x3fe560d0247021d1              # double 0.668068
	.quad	0x3fec5f97aaac1095              # double 0.88666900000000004
	.quad	0x3fa5269595feda66              # double 0.041309999999999999
	.quad	0x3f89da16616b54e3              # double 0.012623000000000001
	.quad	0x3fd5bfec13b9f128              # double 0.339839
	.quad	0x3fefffd3f5b5fa22              # double 0.99997899999999995
	.quad	0x3fdf44dca8e2e2b9              # double 0.48857800000000001
	.quad	0x3fe1c2d8c2a454de              # double 0.55503499999999995
	.quad	0x3fe735f3d7d3910c              # double 0.72533599999999998
	.quad	0x3fe8317ce52deca2              # double 0.75604099999999996
	.quad	0x3fe847064ece9a2c              # double 0.75866999999999995
	.quad	0x3fd3bf0995aaf790              # double 0.308535
	.quad	0x3fa1e7d9988d2a20              # double 0.034972000000000003
	.quad	0x3fe104d338f79852              # double 0.53183899999999995
	.quad	0x3fda004fb1183b60              # double 0.40626899999999999
	.quad	0x3fe8573215fcc187              # double 0.76064399999999999
	.quad	0x3fdf7a311e85fd05              # double 0.49183300000000002
	.quad	0x3fed520f2becedd5              # double 0.91626700000000005
	.quad	0x3fcc81d3aa369fcf              # double 0.22271199999999999
	.quad	0x3fe7f5c6c11a1123              # double 0.74875199999999997
	.quad	0x3fedf59ccfaeff5c              # double 0.93623199999999995
	.quad	0x3fd4e65bea0ba1f5              # double 0.32656000000000002
	.quad	0x3feadc054ef459da              # double 0.83935800000000005
	.quad	0x3fc2df47f993d534              # double 0.14743899999999999
	.quad	0x3fec74e22a2c2374              # double 0.88926799999999994
	.quad	0x3fe7ada33bd9cae2              # double 0.73994599999999999
	.quad	0x3fee761672324c83              # double 0.95191499999999996
	.quad	0x3fc83ca7503b81b6              # double 0.18935099999999999
	.quad	0x3fe63380cb6c7a7d              # double 0.69378700000000004
	.quad	0x3febd3996fa82e88              # double 0.86958000000000002
	.quad	0x3f698aeb80ecfa6a              # double 0.0031180000000000001
	.quad	0x3fe267ec7863beec              # double 0.57518599999999998
	.quad	0x3fe43cf0b6b6e0d2              # double 0.63243899999999997
	.quad	0x3fdeea91d9b1b79e              # double 0.48306700000000002
	.quad	0x3fe1f6577531db44              # double 0.56132099999999996
	.quad	0x3fd9314445aa2e3c              # double 0.39363199999999998
	.quad	0x3fd74fd2a62aa194              # double 0.36424699999999999
	.quad	0x3fbb221858bc59b8              # double 0.105989
	.quad	0x3fe6b31a08bfc222              # double 0.70936299999999997
	.quad	0x3fb831f03d145d85              # double 0.094511999999999999
	.quad	0x3fce326e115592da              # double 0.23591400000000001
	.quad	0x3fca95b78cc9a77e              # double 0.20769399999999999
	.quad	0x3fe8716d2aa5c5f8              # double 0.76384600000000002
	.quad	0x3fcfef73c0c1fc8f              # double 0.24949499999999999
	.quad	0x3feee6afcce1c582              # double 0.96565999999999996
	.quad	0x3fb989efd86a8fc1              # double 0.099761000000000002
	.quad	0x3fd954eb13dfb0d5              # double 0.39580799999999999
	.quad	0x3fe8da6c5d206c87              # double 0.77666299999999999
	.quad	0x3fe65b91f70de8f7              # double 0.69867800000000002
	.quad	0x3fefdf37329c347f              # double 0.99599800000000004
	.quad	0x3fef72ecf2064239              # double 0.98277899999999995
	.quad	0x3fd01754b05b7cfe              # double 0.25142399999999998
	.quad	0x3fdf9eadd590c0ad              # double 0.49406
	.quad	0x3fe23afb7e90ff97              # double 0.56969999999999998
	.quad	0x3fe5aa821f2990f3              # double 0.677064
	.quad	0x3fccec0f88333fc8              # double 0.22595399999999999
	.quad	0x3fda3dc054ef459e              # double 0.41001900000000002
	.quad	0x3fec2e18ac9f2fdc              # double 0.88062700000000004
	.quad	0x3fe2615ca6ca03c5              # double 0.57438500000000003
	.quad	0x3fefd9231c64ba95              # double 0.99525600000000002
	.quad	0x3fdec9c0a8d21bc1              # double 0.48106399999999999
	.quad	0x3fecde529bae46d0              # double 0.90213900000000002
	.quad	0x3fddff327aa68f4b              # double 0.46870099999999998
	.quad	0x3fc9127f5e84f095              # double 0.195877
	.quad	0x3fda40895d0b73d2              # double 0.41018900000000003
	.quad	0x3fdb26fe718a86d7              # double 0.42425499999999999
	.quad	0x3fe65e4c51116a8c              # double 0.69901100000000005
	.quad	0x3fee02491afc04c9              # double 0.93777900000000003
	.quad	0x3fe14b46bacf7447              # double 0.540439
	.quad	0x3fe9a328f9f44d44              # double 0.80116699999999996
	.quad	0x3fcffef39085f4a1              # double 0.249968
	.quad	0x3fc0886162f166e0              # double 0.129162
	.quad	0x3fe964473cd57364              # double 0.79349099999999994
	.quad	0x3fe72aed1394317b              # double 0.72399000000000002
	.quad	0x3fc8172abef06b38              # double 0.18820700000000001
	.quad	0x3fee3e10060780fe              # double 0.94507600000000003
	.quad	0x3fe00561d4306e5d              # double 0.50065700000000002
	.quad	0x3fce58ff75968512              # double 0.237091
	.quad	0x3fc9aabcd78c4370              # double 0.20052300000000001
	.quad	0x3fe74fd2a62aa194              # double 0.72849399999999997
	.quad	0x3fd9b8bac710cb29              # double 0.40189999999999998
	.quad	0x3fe562f7b17ce52e              # double 0.66833100000000001
	.quad	0x3fe5ff79c842fa51              # double 0.68743600000000005
	.quad	0x3fb96f4384ba0e84              # double 0.099353999999999997
	.quad	0x3fbe67d77fae3609              # double 0.118772
	.quad	0x3feeb1704ff4341a              # double 0.95916000000000001
	.quad	0x3fe7a7daa4fca42b              # double 0.73924000000000001
	.quad	0x3feade6149c6f36f              # double 0.839646
	.quad	0x3fe7275ee99a62ed              # double 0.72355599999999998
	.quad	0x3fb5b1b79d909f1f              # double 0.084742999999999999
	.quad	0x3fe5b083558a7610              # double 0.67779699999999998
	.quad	0x3fe5ebbfd71b0468              # double 0.68502799999999997
	.quad	0x3fdf14db59578a2b              # double 0.48564800000000002
	.quad	0x3fe8fc286f8ad256              # double 0.78078099999999995
	.quad	0x3fb369552e2fbe34              # double 0.075826000000000005
	.quad	0x3fdb6e2eb1c432ca              # double 0.42859999999999998
	.quad	0x3fc5cd3e0bd44999              # double 0.17032600000000001
	.quad	0x3feaa3dd54da4ce8              # double 0.83250299999999999
	.quad	0x3fecdf3300de4c51              # double 0.90224599999999999
	.quad	0x3fd0d50225742dcf              # double 0.26300099999999998
	.quad	0x3fe98fabda0dfdf0              # double 0.79878800000000005
	.quad	0x3fb43c8e25c810a5              # double 0.079048999999999994
	.quad	0x3fcd1e8e60807358              # double 0.227495
	.quad	0x3fea17720c8cd63d              # double 0.81536200000000003
	.quad	0x3fe34ecc814d727a              # double 0.60336900000000004
	.quad	0x3fc7f64cf8d716d3              # double 0.18720400000000001
	.quad	0x3fe9a0d77b7c7821              # double 0.80088400000000004
	.quad	0x3fb5b56323bbc6eb              # double 0.084798999999999999
	.quad	0x3fefea0ba1f4b1ee              # double 0.99731999999999998
	.quad	0x3fa19da9c99285a9              # double 0.034405999999999999
	.quad	0x3fdf801f75104d55              # double 0.49219499999999999
	.quad	0x3fe668ea39c51dac              # double 0.70030700000000001
	.quad	0x3fec29691a75cd0c              # double 0.88005500000000003
	.quad	0x3fe94241c3efae79              # double 0.78933799999999998
	.quad	0x3fe1e2b4959e6256              # double 0.55892399999999998
	.quad	0x3fd4ebdd334c5da7              # double 0.32689600000000002
	.quad	0x3fe4af0bf1a5ca2a              # double 0.64636800000000005
	.quad	0x3fddc2c1b10fd7e4              # double 0.46501199999999998
	.quad	0x3fce2e09fe86833c              # double 0.23577999999999999
	.quad	0x3fe94d551d68c693              # double 0.79069
	.quad	0x3fb23d3e4ef0281c              # double 0.071247000000000005
	.quad	0x3fe64003254e6e22              # double 0.69531399999999999
	.quad	0x3fef80baa582dbe8              # double 0.984464
	.quad	0x3fe4e24bba12b5e5              # double 0.65262399999999998
	.quad	0x3fed217d2849cb25              # double 0.91033799999999998
	.quad	0x3fb748b220791c4c              # double 0.090953000000000006
	.quad	0x3fc4ffda4052d667              # double 0.16405800000000001
	.quad	0x3fb02a3486f049aa              # double 0.063144000000000006
	.quad	0x3fd3847b24638c97              # double 0.30496099999999998
	.quad	0x3fd000f345069a4e              # double 0.250058
	.quad	0x3fd661d8622c4502              # double 0.34972199999999998
	.quad	0x3fc7a3b14a90470b              # double 0.18468300000000001
	.quad	0x3fef0a47ecfe9b7c              # double 0.970005
	.quad	0x3fee25c5f7c6759b              # double 0.94211100000000003
	.quad	0x3fb562174c4cdfad              # double 0.083528000000000005
	.quad	0x3feffc1bda5119ce              # double 0.999525
	.quad	0x3fe8922962cfd8f1              # double 0.76784200000000002
	.quad	0x3fe0a6ca03c4b09f              # double 0.52036000000000004
	.quad	0x3fe2b6a400fba882              # double 0.58479499999999995
	.quad	0x3fbc0e1719f7f8cb              # double 0.10959000000000001
	.quad	0x3fdc471715c63ae2              # double 0.44183899999999998
	.quad	0x3fe9011904b3c3e7              # double 0.78138399999999997
	.quad	0x3fd1bbe4473cd573              # double 0.27709299999999998
	.quad	0x3fe3a08e15011905              # double 0.61334900000000003
	.quad	0x3fc7312b1b36bd2b              # double 0.18118799999999999
	.quad	0x3fd4a116659d12cb              # double 0.32233200000000001
	.quad	0x3fe820ab71327243              # double 0.75398799999999999
	.quad	0x3fdb4e26d4801f75              # double 0.426645
	.quad	0x3fc934d6a161e4f7              # double 0.19692499999999999
	.quad	0x3fd277079e59f2bb              # double 0.28851500000000002
	.quad	0x3fd3709fa54c5543              # double 0.30374899999999999
	.quad	0x3fd73c792d1287c2              # double 0.363066
	.quad	0x3fedd0507a6bd6e9              # double 0.93167900000000003
	.quad	0x3fea73f961804d98              # double 0.82665699999999998
	.quad	0x3fdf66d7a56de332              # double 0.49065199999999998
	.quad	0x3f9d0bfa0945f9df              # double 0.028365999999999999
	.quad	0x3fe057cd466f501a              # double 0.51071800000000001
	.quad	0x3fefa337a80cf9e4              # double 0.98867400000000005
	.quad	0x3fe1284be40420f7              # double 0.53616900000000001
	.quad	0x3fed903c8e25c811              # double 0.92385700000000004
	.quad	0x3fd874c4cdfaca36              # double 0.38212699999999999
	.quad	0x3fdefd9fd36f7e3d              # double 0.48422999999999999
	.quad	0x3fb5feeb2d0a2446              # double 0.085920999999999997
	.quad	0x3f950d2806af46aa              # double 0.020558
	.quad	0x3f9d4d4024b33db0              # double 0.028615000000000002
	.quad	0x3fd4d041cc532a49              # double 0.32521099999999997
	.quad	0x3fdd2291fb3fa6df              # double 0.455235
	.quad	0x3fd3ecc814d7279a              # double 0.31132700000000002
	.quad	0x3feae577531db446              # double 0.84051100000000001
	.quad	0x3fec4528283d35eb              # double 0.88344199999999995
	.quad	0x3feb6db940fecdd1              # double 0.85714400000000002
	.quad	0x3fe56df612407464              # double 0.66967299999999996
	.quad	0x3fefe57d9dba908a              # double 0.99676399999999998
	.quad	0x3fdc536501e2584f              # double 0.44258999999999998
	.quad	0x3fdf6295208e1501              # double 0.49039199999999999
	.quad	0x3faa69be09bb6aa5              # double 0.051588000000000002
	.quad	0x3fef81e2584f4c6e              # double 0.98460499999999995
	.quad	0x3fd5b9c7368ad688              # double 0.33946399999999999
	.quad	0x3fd8568e820e6299              # double 0.38028299999999998
	.quad	0x3fefd4d61b2a27f2              # double 0.99473100000000003
	.quad	0x3fb57d5a9eb2074f              # double 0.083944000000000005
	.quad	0x3fec88094e5d5b25              # double 0.89160600000000001
	.quad	0x3fae3e4abe6a337b              # double 0.059069000000000003
	.quad	0x3fb76134ce3de615              # double 0.091327000000000005
	.quad	0x3fa5fbf83382e44b              # double 0.042937999999999997
	.quad	0x3fb2b2e1693c03bc              # double 0.073041999999999996
	.quad	0x3fe6f7e1b8ed1bf8              # double 0.71775900000000004
	.quad	0x3fc48b08dd1e53a8              # double 0.160493
	.quad	0x3fab9bcba3012168              # double 0.053922999999999999
	.quad	0x3fe31b66f9335d25              # double 0.59709500000000004
	.quad	0x3fed1802c0a4a05e              # double 0.90918100000000002
	.quad	0x3fb74d594f26aec0              # double 0.091023999999999994
	.quad	0x3f9021d10b1feeb3              # double 0.015754000000000001
	.quad	0x3feb789c5e6ff7e0              # double 0.85847300000000004
	.quad	0x3fafa11a975afaf8              # double 0.061775999999999998
	.quad	0x3fe120d349be8ff3              # double 0.53525699999999998
	.quad	0x3fa3cdfefbf401c5              # double 0.038681
	.quad	0x3fe0c1f212d77319              # double 0.523675
	.quad	0x3fd4422036006d0d              # double 0.31653599999999998
	.quad	0x3fe029ae4f3343fa              # double 0.50508799999999998
	.quad	0x3fd81b6d43d03969              # double 0.37667400000000001
	.quad	0x3fe0f17bd8be7297              # double 0.529478
	.quad	0x3fe01784ec636b09              # double 0.50287099999999996
	.quad	0x3fde0763a1900820              # double 0.46920099999999998
	.quad	0x3fd598dcdb37c99b              # double 0.337455
	.quad	0x3fe804af922962d0              # double 0.75057200000000002
	.quad	0x3fd56b1e5c0b9991              # double 0.33466299999999999
	.quad	0x3fef67ad8e432442              # double 0.981406
	.quad	0x3fc8ca03c4b09e99              # double 0.193665
	.quad	0x3fec8c2a454de7ea              # double 0.89210999999999996
	.quad	0x3feb52e2fbe33acd              # double 0.85386799999999996
	.quad	0x3fd1c575c0767d35              # double 0.27767700000000001
	.quad	0x3feeb480a5accd53              # double 0.95953399999999999
	.quad	0x3fe3bc3c5bd0e12f              # double 0.61672800000000005
	.quad	0x3fedfc6fbd273d5c              # double 0.93706500000000003
	.quad	0x3fe43a01eeed8905              # double 0.632081
	.quad	0x3fa08effe2a3cea7              # double 0.032341000000000002
	.quad	0x3fe33c5de9c0229a              # double 0.60111899999999996
	.quad	0x3fe364c2f837b4a2              # double 0.60604999999999998
	.quad	0x3fdb079a2834d270              # double 0.42233900000000002
	.quad	0x3fc1239a38fbca10              # double 0.13389899999999999
	.quad	0x3fc6caff6d330942              # double 0.17807000000000001
	.quad	0x3fec729b280f12c2              # double 0.88898999999999995
	.quad	0x3fc874c8ffb8b264              # double 0.19106400000000001
	.quad	0x3fd76c8b43958106              # double 0.36599999999999999
	.quad	0x3fc47485e3da2f8c              # double 0.159806
	.quad	0x3fd2df2a9d627bf6              # double 0.29487099999999999
	.quad	0x3fe746cb966be7b0              # double 0.72739200000000004
	.quad	0x3fd3b8800eae18ad              # double 0.30813600000000002
	.quad	0x3f847735c182ecaf              # double 0.0099930000000000001
	.quad	0x3fdc64c2f837b4a2              # double 0.44364999999999999
	.quad	0x3fda6034f3fd933e              # double 0.41212199999999999
	.quad	0x3fea3d68405b39e2              # double 0.81999599999999995
	.quad	0x3fd7c0379314445b              # double 0.37110700000000002
	.quad	0x3fc9dc8323358f2e              # double 0.202042
	.quad	0x3fd65015c209246c              # double 0.348638
	.quad	0x3fc0471b47842310              # double 0.12717000000000001
	.quad	0x3fe8f67d34df04de              # double 0.78008900000000003
	.quad	0x3fc7d7774aba3876              # double 0.18626300000000001
	.quad	0x3fe863d5fdcdf698              # double 0.76218699999999995
	.quad	0x3fe40ad46f587d70              # double 0.62632200000000005
	.quad	0x3fe469f05ea24cc7              # double 0.63793200000000005
	.quad	0x3fe41e53a81dc0db              # double 0.62870199999999998
	.quad	0x3fd32645e4e69f06              # double 0.299211
	.quad	0x3fec1aaa3ad18d26              # double 0.87825500000000001
	.quad	0x3fed6544fe36d224              # double 0.91861199999999998
	.quad	0x3fe264840e1719f8              # double 0.57477
	.quad	0x3fe9b0f062d40aaf              # double 0.80284900000000003
	.quad	0x3fc86b2f23033a47              # double 0.190771
	.quad	0x3fe51ba7fc32ebe6              # double 0.65962600000000005
	.quad	0x3fe82f5126634118              # double 0.755776
	.quad	0x3feb4be40420f6f1              # double 0.85301400000000005
	.quad	0x3fe75cfede97d06c              # double 0.73010200000000003
	.quad	0x3fb9c087442c7fbb              # double 0.100594
	.quad	0x3fe64bba12b5e52a              # double 0.69674400000000003
	.quad	0x3fd8fa0d77b7c782              # double 0.390262
	.quad	0x3fe58d1fa333764f              # double 0.67347699999999999
	.quad	0x3fec09635610adcd              # double 0.87614599999999998
	.quad	0x3f9477ff151e7536              # double 0.019989
	.quad	0x3fd73508f648c719              # double 0.36261199999999999
	.quad	0x3fe08b8f14db5958              # double 0.51703600000000005
	.quad	0x3fe016c3fc43b2dd              # double 0.50277899999999998
	.quad	0x3fdc8ac9f2fdb8fe              # double 0.44597100000000001
	.quad	0x3fe3baabcd78c437              # double 0.616537
	.quad	0x3fed4f2495e17e35              # double 0.91591100000000003
	.quad	0x3fd36162f166e009              # double 0.302819
	.quad	0x3fd1d349be8ff328              # double 0.27852100000000002
	.quad	0x3fd9daf8df7a4e7b              # double 0.40399000000000002
	.quad	0x3fec594f26aec072              # double 0.88590199999999997
	.quad	0x3fe45fcc1871e6cd              # double 0.63669399999999998
	.quad	0x3fc430a915379fa9              # double 0.15773499999999999
	.quad	0x3fe994f8b588e369              # double 0.79943500000000001
	.quad	0x3fec98a65492ff4c              # double 0.89363400000000003
	.quad	0x3f2a36e2eb1c432d              # double 2.0000000000000001E-4
	.quad	0x3fe6e95faa8a82a5              # double 0.71598799999999996
	.quad	0x3feed79af1886df8              # double 0.96381899999999998
	.quad	0x3fc383c6c97d8cf4              # double 0.15245900000000001
	.quad	0x3fef69a4df47f994              # double 0.98164600000000001
	.quad	0x3fececa03c4b09ea              # double 0.90388500000000005
	.quad	0x3fcb5b4677b395c4              # double 0.213723
	.quad	0x3fe3c43f5f91600f              # double 0.61770599999999998
	.quad	0x3fd2e7d9988d2a20              # double 0.29540100000000002
	.quad	0x3fe0fdf3b645a1cb              # double 0.53100000000000003
	.quad	0x3fdcbd017dae8188              # double 0.44903599999999999
	.quad	0x3fe1eba8c586876e              # double 0.56001699999999999
	.quad	0x3fde8787485e3da3              # double 0.477022
	.quad	0x3fc4bdec5f394b7b              # double 0.162046
	.quad	0x3fe633ebbfd71b04              # double 0.69383799999999995
	.quad	0x3fc902cd39da1661              # double 0.19539799999999999
	.quad	0x3fc2f672b884406c              # double 0.148146
	.quad	0x3fe23d3804534bd7              # double 0.56997299999999995
	.quad	0x3f990c0ad03d9a95              # double 0.024459999999999999
	.quad	0x3fe9c3675ddd2ae9              # double 0.80510300000000001
	.quad	0x3fdea543f1c75819              # double 0.47883700000000001
	.quad	0x3fecbb5bf6a0dbad              # double 0.89787099999999997
	.quad	0x3fedf3300de4c511              # double 0.93593599999999999
	.quad	0x3febe8ec52a411c3              # double 0.87218300000000004
	.quad	0x3fea066c2acb85a5              # double 0.81328400000000001
	.quad	0x3fe278d4fdf3b646              # double 0.57725000000000004
	.quad	0x3fea479702e6644e              # double 0.82123900000000005
	.quad	0x3fe269dd7ecbb7fa              # double 0.57542300000000002
	.quad	0x3fc0b91b3f20a73f              # double 0.13064899999999999
	.quad	0x3fcb84a0e410b631              # double 0.21498500000000001
	.quad	0x3fa69014b599aa61              # double 0.044068000000000003
	.quad	0x3feb8fe047d3d428              # double 0.861313
	.quad	0x3fd105c4651f3e8a              # double 0.26597700000000002
	.quad	0x3fd8d334c5da6a44              # double 0.38789099999999999
	.quad	0x3fe9019d2391d580              # double 0.781447
	.quad	0x3fe62c710cb295ea              # double 0.69292500000000001
	.quad	0x3fe2c408d8ec95c0              # double 0.58643000000000001
	.quad	0x3fea84d338f79852              # double 0.82871399999999995
	.quad	0x3fccb8b69552e2fc              # double 0.224387
	.quad	0x3feb11b1d92b7fe1              # double 0.84591000000000005
	.quad	0x3f9c4d22c881e471              # double 0.027637999999999999
	.quad	0x3fe80fe69270b06c              # double 0.75194099999999997
	.quad	0x3fd6dcd7060bb2bc              # double 0.35722900000000002
	.quad	0x3fdc843c3a42f1ed              # double 0.44557099999999999
	.quad	0x3fd266a11ec918e3              # double 0.28751399999999999
	.quad	0x3fd0f23033a4723b              # double 0.26478200000000002
	.quad	0x3fd533b107746888              # double 0.33128000000000002
	.quad	0x3f7adea897635e74              # double 0.0065599999999999999
	.quad	0x3fab7281fd9ba1b2              # double 0.053608000000000003
	.quad	0x3fe4c8beb5b2d4d4              # double 0.649505
	.quad	0x3fe770aa21a719b5              # double 0.73250300000000002
	.quad	0x3fdc041cc532a498              # double 0.437751
	.quad	0x3fc3b99d451fc4c1              # double 0.15410199999999999
	.quad	0x3fe8f3083558a761              # double 0.779667
	.quad	0x3fd99aed56b00ffe              # double 0.40008100000000002
	.quad	0x3fe54b2d905c0336              # double 0.66542699999999999
	.quad	0x3fd4f548ecd8dbcf              # double 0.32747100000000001
	.quad	0x3fd343b2dd377e1c              # double 0.30100700000000002
	.quad	0x3fd9aeafab53d641              # double 0.401287
	.quad	0x3fec4ecc814d727a              # double 0.88461900000000004
	.quad	0x3fe57102363b2570              # double 0.670045
	.quad	0x3fc8ab606b7aa25e              # double 0.19273000000000001
	.quad	0x3febad98bf7f0670              # double 0.86494099999999996
	.quad	0x3fc4981beb18116f              # double 0.16089200000000001
	.quad	0x3fd939f77292c493              # double 0.39416299999999999
	.quad	0x3fe729f59ccfaeff              # double 0.72387199999999996
	.quad	0x3feea4723aafff37              # double 0.95757400000000004
	.quad	0x3fe5a036006d0d4a              # double 0.67580700000000005
	.quad	0x3fef2074ea8da7f4              # double 0.97271200000000002
	.quad	0x3fe5b7b8d3f1843c              # double 0.67867699999999997
	.quad	0x3fdb81cf7878b7a2              # double 0.42979800000000001
	.quad	0x3fe475ad96a6a012              # double 0.63936499999999996
	.quad	0x3fe831b36bd2b6f2              # double 0.75606700000000004
	.quad	0x3fe3992a737110e4              # double 0.61244699999999996
	.quad	0x3fd62923e5b8561d              # double 0.34626099999999999
	.quad	0x3fccc37e6f71a7e3              # double 0.224716
	.quad	0x3fee39b23dd54da5              # double 0.94454300000000002
	.quad	0x3fe3a6223e186983              # double 0.61402999999999996
	.quad	0x3fe4637bd05af6c7              # double 0.63714400000000004
	.quad	0x3fcc7cbf6e3f78bc              # double 0.222557
	.quad	0x3fc4427c7c5260f6              # double 0.158279
	.quad	0x3fe4ab239a38fbca              # double 0.64589099999999999
	.quad	0x3fa551f81a5870da              # double 0.041640999999999997
	.quad	0x3fd25a4acf312b1b              # double 0.28676099999999999
	.quad	0x3fc63f4eca686e7e              # double 0.17380699999999999
	.quad	0x3fc19ec7000431be              # double 0.137658
	.quad	0x3fa8e432441fea81              # double 0.048615999999999999
	.quad	0x3fd6f151e75360d0              # double 0.35847899999999999
	.quad	0x3fe7b4117f84449e              # double 0.74073100000000003
	.quad	0x3fd31b79d909f1f1              # double 0.29855199999999998
	.quad	0x3fe2ede1198aeb81              # double 0.59153800000000001
	.quad	0x3fec0750c1b97354              # double 0.87589300000000003
	.quad	0x3fe8743c7d5ed070              # double 0.76418900000000001
	.quad	0x3fe1cc144028e4fc              # double 0.55616200000000005
	.quad	0x3fef0a6fc58ab92c              # double 0.97002399999999999
	.quad	0x3fee1d712a0ec743              # double 0.94109399999999999
	.quad	0x3fe2cffc9795b35b              # double 0.58788899999999999
	.quad	0x3fc02b063e07a28c              # double 0.12631300000000001
	.quad	0x3fdc8793dd97f62b              # double 0.44577499999999998
	.quad	0x3fe29797cc39ffd6              # double 0.58100499999999999
	.quad	0x3fe448c7192ea52f              # double 0.633884
	.quad	0x3fe10257c914b168              # double 0.53153600000000001
	.quad	0x3fd3b1422ccb3a26              # double 0.30769400000000002
	.quad	0x3fbb43fa2ad3e921              # double 0.106506
	.quad	0x3f94d12018a43bb4              # double 0.020329
	.quad	0x3fe31f44d4456712              # double 0.59756699999999996
	.quad	0x3fd9f6512a94ff00              # double 0.40565899999999999
	.quad	0x3fc968dfbd6a593a              # double 0.198513
	.quad	0x3fe64c89b0ee49f5              # double 0.69684299999999999
	.quad	0x3fd4dda059a73b43              # double 0.32602700000000001
	.quad	0x3fe250d6b228dc98              # double 0.57236799999999999
	.quad	0x3fba964e8b7e4de4              # double 0.103856
	.quad	0x3fcc8893b7d84902              # double 0.22291800000000001
	.quad	0x3fe2ee8d10f51aca              # double 0.59162000000000003
	.quad	0x3fe090ea9e6eeb70              # double 0.51768999999999998
	.quad	0x3fb910d38cda6e76              # double 0.097913
	.quad	0x3fd620578e5c4eb5              # double 0.34572399999999998
	.quad	0x3fdbc17225b749ae              # double 0.43368200000000001
	.quad	0x3fc50331e3a7daa5              # double 0.16416
	.quad	0x3fe3b5696e58a32f              # double 0.61589499999999997
	.quad	0x3fd9baf533f42353              # double 0.402036
	.quad	0x3fe706c6583e8577              # double 0.71957700000000002
	.quad	0x3f7d7ba6698bb4d5              # double 0.0071980000000000004
	.quad	0x3fd46598e10cf5b2              # double 0.31870100000000001
	.quad	0x3fea4d4024b33db0              # double 0.82193000000000005
	.quad	0x3fec008205ff1d82              # double 0.87506200000000001
	.quad	0x3feb4faeff5c6c12              # double 0.85347700000000004
	.quad	0x3fef423d9231c64c              # double 0.97683600000000003
	.quad	0x3fde9652bd3c3611              # double 0.47792499999999999
	.quad	0x3fc57f7be121ee67              # double 0.16795299999999999
	.quad	0x3fcb741d084e831b              # double 0.214481
	.quad	0x3fc296249a133c1d              # double 0.145207
	.quad	0x3febccc037931444              # double 0.86874399999999996
	.quad	0x3fdcd506573215fd              # double 0.45050200000000001
	.quad	0x3fe4dcdd50a88f00              # double 0.65196100000000001
	.quad	0x3fefbcc8de2ac322              # double 0.99179499999999998
	.quad	0x3fe8b2d0a2446306              # double 0.77182799999999996
	.quad	0x3fec4cc25072085b              # double 0.88436999999999999
	.quad	0x3fe755757d5a9eb2              # double 0.729182
	.quad	0x3fe2422ccb3a2596              # double 0.57057800000000003
	.quad	0x3fdaa16616b54e2b              # double 0.416101
	.quad	0x3fdef2f123c42a67              # double 0.48357800000000001
	.quad	0x3fe05c8d9f9053a0              # double 0.51129800000000003
	.quad	0x3fbd5421c044284e              # double 0.114565
	.quad	0x3fe920fb224aada3              # double 0.78527599999999997
	.quad	0x3fda0b178b370047              # double 0.40692699999999998
	.quad	0x3fdee8e60807357e              # double 0.48296499999999998
	.quad	0x3fe5f720c8cd63cc              # double 0.68641700000000005
	.quad	0x3fee522ea0fd3b2a              # double 0.94753200000000004
	.quad	0x3fd9570c564f97ee              # double 0.39593800000000001
	.quad	0x3fc032ca57a786c2              # double 0.12655
	.quad	0x3fe4d34373f316e3              # double 0.65078899999999995
	.quad	0x3feffd651b0ccbc0              # double 0.99968199999999995
	.quad	0x3fea1652bd3c3611              # double 0.81522499999999998
	.quad	0x3fe81e98dcdb37ca              # double 0.75373500000000004
	.quad	0x3fe9777d0f1f57b4              # double 0.79583599999999998
	.quad	0x3fe9b83f0bae89ec              # double 0.80374100000000003
	.quad	0x3fd84cdfaca36199              # double 0.37969199999999997
	.quad	0x3fe6b7b6bb129025              # double 0.70992599999999995
	.quad	0x3fe7a12b5e529bae              # double 0.73842399999999997
	.quad	0x3fe232f01754b05b              # double 0.56871799999999995
	.quad	0x3fbeea4228997c3d              # double 0.12076199999999999
	.quad	0x3fe5a20578e5c4eb              # double 0.67602799999999996
	.quad	0x3fc129802c0a4a06              # double 0.134079
	.quad	0x3fc69b8cb8e086be              # double 0.176622
	.quad	0x3fdeebd4cfd08d4c              # double 0.48314400000000002
	.quad	0x3feba426bb55ac04              # double 0.863788
	.quad	0x3fe35084e831ad21              # double 0.60357899999999998
	.quad	0x3fd20e51d25aab47              # double 0.28212399999999999
	.quad	0x3fd3ed2cbea4ebdd              # double 0.31135099999999999
	.quad	0x3fabe4ef0281ba80              # double 0.054481000000000002
	.quad	0x3fd4d9e83e425aee              # double 0.32579999999999998
	.quad	0x3fe10b9baa1511e0              # double 0.532667
	.quad	0x3fca710cb295e9e2              # double 0.20657500000000001
	.quad	0x3fc579e16d6dc1a4              # double 0.16778199999999999
	.quad	0x3fde3dab5c39bcba              # double 0.47251399999999999
	.quad	0x3fef5aa0cae642c0              # double 0.97981300000000004
	.quad	0x3fe0beb9e492bc30              # double 0.52328200000000002
	.quad	0x3fe13df8f4730404              # double 0.53881500000000004
	.quad	0x3fde615a8deb0fae              # double 0.474692
	.quad	0x3fe6325b317efe0d              # double 0.69364700000000001
	.quad	0x3fd522e5de15ca6d              # double 0.33025500000000002
	.quad	0x3fd27d1fe64f54d2              # double 0.288887
	.quad	0x3fe3e0aa64c2f838              # double 0.62117500000000003
	.quad	0x3fd0b024f6598e11              # double 0.26075100000000001
	.quad	0x3fd2b44a1f080304              # double 0.29225400000000001
	.quad	0x3fec1db877ab3248              # double 0.87862799999999996
	.quad	0x3fcbca9691a75cd1              # double 0.21712000000000001
	.quad	0x3fed03f91e646f15              # double 0.90673499999999996
	.quad	0x3fd91ba3ca7503b8              # double 0.39231199999999999
	.quad	0x3fd05d13d74d594f              # double 0.25568099999999999
	.quad	0x3fea0a009f623077              # double 0.81372100000000003
	.quad	0x3fe08d73860999dd              # double 0.51726700000000003
	.quad	0x3fe459d99029ae4f              # double 0.63596799999999998
	.quad	0x3f9efd00713f077d              # double 0.030262000000000001
	.quad	0x3f895bbbe878fabe              # double 0.012382000000000001
	.quad	0x3fbcadddf43c7d5f              # double 0.112028
	.quad	0x3fe09691a75cd0bb              # double 0.51837999999999995
	.quad	0x3fe3fe1b8ed1bf7b              # double 0.62476900000000002
	.quad	0x3fd003211cb039ef              # double 0.250191
	.quad	0x3fb101e2584f4c6e              # double 0.066434999999999994
	.quad	0x3fec0b6b6e0d23d5              # double 0.87639400000000001
	.quad	0x3fda5ebb7739f341              # double 0.41203200000000001
	.quad	0x3fdb92fb19e731d3              # double 0.43084600000000001
	.quad	0x3fbdd6cf850df15a              # double 0.116559
	.quad	0x3fd3f4d7add15f03              # double 0.31181900000000001
	.quad	0x3fe62ca9ac365450              # double 0.69295200000000001
	.quad	0x3fe468af81626b2f              # double 0.63777899999999998
	.quad	0x3fec704577d95571              # double 0.88870499999999997
	.quad	0x3fe7b2e3821af7d3              # double 0.740587
	.quad	0x3fe2a5dd095af295              # double 0.58274700000000001
	.quad	0x3fe3d9fd36f7e3d2              # double 0.62036000000000002
	.quad	0x3fed82645e4e69f0              # double 0.92216699999999996
	.quad	0x3fdd1ccd96206855              # double 0.45488299999999998
	.quad	0x3fb5f601797cc3a0              # double 0.085785
	.quad	0x3fb4b7d41743e964              # double 0.080930000000000002
	.quad	0x3fd73c3e74afd545              # double 0.36305199999999999
	.quad	0x3feaea0fd3b29a1c              # double 0.84107200000000004
	.quad	0x3fa2fdb8fde2ef4e              # double 0.037092
	.quad	0x3fd754de7ea5f84d              # double 0.36455500000000002
	.quad	0x3fa267e846a5d6bf              # double 0.035949000000000002
	.quad	0x3fe274aba3875925              # double 0.57674199999999998
	.quad	0x3fc7924af0bf1a5d              # double 0.18415200000000001
	.quad	0x3fe367d1351159c5              # double 0.60642300000000005
	.quad	0x3f9d7b2031ceaf25              # double 0.02879
	.quad	0x3feb0ef1348b2208              # double 0.84557400000000005
	.quad	0x3fcd7079e59f2baa              # double 0.229995
	.quad	0x3fe7132b55ef1fde              # double 0.72109000000000001
	.quad	0x3fd7e37154003255              # double 0.37325700000000001
	.quad	0x3fc48c79f666234b              # double 0.16053700000000001
	.quad	0x3fd7736049ecb31c              # double 0.36641699999999999
	.quad	0x3fed4b380cb6c7a8              # double 0.91543200000000002
	.quad	0x3feea60f5e41d4b7              # double 0.95777100000000004
	.quad	0x3fc3dd65a14488c6              # double 0.155194
	.quad	0x3fd108e15011904b              # double 0.26616699999999999
	.quad	0x3fc44de3b8a19c9d              # double 0.15862699999999999
	.quad	0x3fedcaf709b738e7              # double 0.93102600000000002
	.quad	0x3feb7f62b6ae7d56              # double 0.85929999999999995
	.quad	0x3fe42cd7cf5f4e44              # double 0.63047399999999998
	.quad	0x3fd235d67ba237ce              # double 0.28453600000000001
	.quad	0x3febe2e2b8c75c4b              # double 0.87144600000000005
	.quad	0x3fefa5614df8b157              # double 0.98893799999999998
	.quad	0x3fccf0e0a84be404              # double 0.226101
	.quad	0x3fe943f5f91600f3              # double 0.78954599999999997
	.quad	0x3febf1de69ad42c4              # double 0.87327500000000002
	.quad	0x3fe177164c729f5a              # double 0.54578700000000002
	.quad	0x3fda40fa9c12f09e              # double 0.41021600000000003
	.quad	0x3feb632a0663c750              # double 0.85585500000000003
	.quad	0x3fe299fc2a8869c6              # double 0.58129699999999995
	.quad	0x3fea13a92a305532              # double 0.81489999999999996
	.quad	0x3fddc996b76709fa              # double 0.46542899999999998
	.quad	0x3fa1b75a74c09c3d              # double 0.034602000000000001
	.quad	0x3fe3de4a38327675              # double 0.62088500000000002
	.quad	0x3fedfa0945f9df55              # double 0.93677200000000005
	.quad	0x3fc430a915379fa9              # double 0.15773499999999999
	.quad	0x3fe3fa5d28d002e2              # double 0.62431199999999998
	.quad	0x3fb0a67620ee8d11              # double 0.065040000000000001
	.quad	0x3fe26c4a4095f245              # double 0.57571899999999998
	.quad	0x3fe5715e7c8d1959              # double 0.67008900000000005
	.quad	0x3fa1cb46bacf7447              # double 0.034754
	.quad	0x3fc9d91ab8e8ea3a              # double 0.20193800000000001
	.quad	0x3fcf145d851654d6              # double 0.242809
	.quad	0x3fe5e0242d05f288              # double 0.68361099999999997
	.quad	0x3fcf22e1ac57e23f              # double 0.243252
	.quad	0x3fdb59ddc1e7967d              # double 0.42736000000000002
	.quad	0x3fe15ea033e78e19              # double 0.54280099999999998
	.quad	0x3fe732acfb762d84              # double 0.72493600000000002
	.quad	0x3feea34a87e38eb0              # double 0.95743299999999998
	.quad	0x3fcbddebd9018e75              # double 0.21770999999999999
	.quad	0x3fbf1e7d9988d2a2              # double 0.121559
	.quad	0x3fcd8a6dacabc515              # double 0.23078699999999999
	.quad	0x3fc7daa4fca42aed              # double 0.18636
	.quad	0x3fe99e3864cb5bb4              # double 0.80056400000000005
	.quad	0x3fedb8f14db59579              # double 0.92882600000000004
	.quad	0x3fe65cf67b1c0011              # double 0.69884800000000002
	.quad	0x3fe68f2389720429              # double 0.70497299999999996
	.quad	0x3fe8c56b441bb8c3              # double 0.77409899999999998
	.quad	0x3fe02ed56b00ffda              # double 0.50571699999999997
	.quad	0x3fe5ea76965f5276              # double 0.68487100000000001
	.quad	0x3fee89a240314877              # double 0.95430099999999995
	.quad	0x3fe0621fafc8b008              # double 0.51197800000000004
	.quad	0x3fdc981beb18116f              # double 0.44678400000000001
	.quad	0x3fd236ef8055fbb5              # double 0.28460299999999999
	.quad	0x3fc2b51bd61f5be6              # double 0.146152
	.quad	0x3fdfd0f6273929ed              # double 0.49712899999999999
	.quad	0x3fe88dcdb37c99af              # double 0.76731000000000005
	.quad	0x3fd6e69ad42c3c9f              # double 0.357825
	.quad	0x3fcb94b7b28954a8              # double 0.215476
	.quad	0x3fe1ddd2ae8e1d65              # double 0.55832800000000005
	.quad	0x3fefbd3a1d323fee              # double 0.99184899999999998
	.quad	0x3fe5893d96638434              # double 0.67300300000000002
	.quad	0x3fed5e3b8a19c9d6              # double 0.91775300000000004
	.quad	0x3fd03ec460ed80a1              # double 0.25383099999999997
	.quad	0x3fddc0980b242071              # double 0.46488000000000002
	.quad	0x3f9bd9018e757929              # double 0.027195
	.quad	0x3fd45100a393ee5f              # double 0.317444
	.quad	0x3fe825ca29845dc8              # double 0.75461299999999998
	.quad	0x3fe3b30d7386099a              # double 0.61560700000000002
	.quad	0x3fdd36fc158fb43e              # double 0.45648100000000003
	.quad	0x3fe1bad9f0a1be2b              # double 0.55405899999999997
	.quad	0x3fe98181e03f7058              # double 0.79705899999999996
	.quad	0x3fdead106ee30caa              # double 0.47931299999999999
	.quad	0x3fad65e4606748e4              # double 0.057417999999999997
	.quad	0x3fd6c9f72f76e610              # double 0.35607699999999998
	.quad	0x3fb45cee17a02fb6              # double 0.079543000000000002
	.quad	0x3fe59c1d6cf850df              # double 0.67530699999999999
	.quad	0x3fd205857afea3df              # double 0.28158699999999998
	.quad	0x3febcf4c6e6d9be5              # double 0.86905500000000002
	.quad	0x3fb96073de1e2de8              # double 0.099127999999999994
	.quad	0x3f97dae81882adc5              # double 0.023296000000000001
	.quad	0x3fe3b9ef0f16f438              # double 0.61644699999999997
	.quad	0x3fd08b60f1b25f63              # double 0.25850699999999999
	.quad	0x3fe5cd87724fa8b5              # double 0.68133900000000003
	.quad	0x3fd2e8a71de69ad4              # double 0.29544999999999999
	.quad	0x3fd792ccf6be37df              # double 0.36833500000000002
	.quad	0x3fec4b252ce032db              # double 0.88417299999999999
	.quad	0x3fe367b5f1bef49d              # double 0.60641
	.quad	0x3fd67e889c1b5419              # double 0.35147299999999998
	.quad	0x3feaa80064a9cdc4              # double 0.83300799999999997
	.quad	0x3fe9a500d5e8d541              # double 0.80139199999999999
	.quad	0x3fd72784a9478c87              # double 0.36178700000000003
	.quad	0x3fc1e7e1fc08fa7b              # double 0.13988900000000001
	.quad	0x3fe13a2df9378ee3              # double 0.53835200000000005
	.quad	0x3f95536933a0407d              # double 0.020826000000000001
	.quad	0x3fedcda09cc319c6              # double 0.93135100000000004
	.quad	0x3fe9466d373affb0              # double 0.78984699999999997
	.quad	0x3fe938348f53c57a              # double 0.78811100000000001
	.quad	0x3fc3a99fa11a975b              # double 0.153614
	.quad	0x3fef586876e1dead              # double 0.97954200000000002
	.quad	0x3fce69d7342edbb6              # double 0.23760500000000001
	.quad	0x3fc93d6c72192210              # double 0.197187
	.quad	0x3fed52a411c2a023              # double 0.91633799999999999
	.quad	0x3fe61cd3e0bd449a              # double 0.69101900000000005
	.quad	0x3fec435ce1826677              # double 0.88322299999999998
	.quad	0x3fdabbf93ff25e57              # double 0.41772300000000001
	.quad	0x3fe26be7afa72218              # double 0.57567199999999996
	.quad	0x3fe5e84ad794a6ec              # double 0.68460600000000005
	.quad	0x3fe443f1c75818c6              # double 0.63329400000000002
	.quad	0x3fef45953586ca8a              # double 0.977244
	.quad	0x3fd96e82949a5658              # double 0.39737
	.quad	0x3f9946c332f01755              # double 0.024684000000000001
	.quad	0x3fdbddce7cd03537              # double 0.43541299999999999
	.quad	0x3fe5f02e6644d877              # double 0.68556899999999998
	.quad	0x3f88769ec2ce464a              # double 0.011945000000000001
	.quad	0x3fe9ac753e707e17              # double 0.80230199999999996
	.quad	0x3fe7818a43bb40b3              # double 0.73456299999999997
	.quad	0x3fe08cbaf965b20c              # double 0.51717900000000006
	.quad	0x3fe639cf9a06a6e3              # double 0.69455699999999998
	.quad	0x3fef8bd44998d046              # double 0.985819
	.quad	0x3feac2f405f6ba06              # double 0.83629799999999999
	.quad	0x3feff39b024f6599              # double 0.99848700000000001
	.quad	0x3fc32a172abef06b              # double 0.14972199999999999
	.quad	0x3fd5f9ce8d972cd8              # double 0.34337200000000001
	.quad	0x3fd199c38b04ab60              # double 0.27500999999999998
	.quad	0x3feb4669057d1783              # double 0.85234500000000002
	.quad	0x3fd49e3c968943e1              # double 0.322158
	.quad	0x3fb82235b4edb2f6              # double 0.094271999999999994
	.quad	0x3fd8f9d2bf551505              # double 0.39024799999999998
	.quad	0x3feeb708aac96cc6              # double 0.959843
	.quad	0x3feab7952d234eba              # double 0.83491000000000004
	.quad	0x3fd21a437824d4cc              # double 0.28285300000000002
	.quad	0x3fc3018611fd5886              # double 0.148484
	.quad	0x3fd691b3f20a73f7              # double 0.35264299999999998
	.quad	0x3fe093250b52439a              # double 0.51796200000000003
	.quad	0x3f8b8561d4306e5d              # double 0.013438
	.quad	0x3fdb9be8ff327aa7              # double 0.43139100000000002
	.quad	0x3fdfb7ae5796bfcb              # double 0.49558600000000003
	.quad	0x3fed427e9531550d              # double 0.91436700000000004
	.quad	0x3fc70c2c5e2cdc01              # double 0.180059
	.quad	0x3fe05fe542e557de              # double 0.51170599999999999
	.quad	0x3f7dc4007570c565              # double 0.007267
	.quad	0x3fca6833c60029f1              # double 0.20630499999999999
	.quad	0x3fc7368ad6883772              # double 0.18135200000000001
	.quad	0x3fdc3bea91d9b1b8              # double 0.44115700000000002
	.quad	0x3fe1c12cf0f9d2bf              # double 0.55483099999999996
	.quad	0x3fe2f97edc7ef178              # double 0.59295600000000004
	.quad	0x3feb03be6601bc99              # double 0.84420700000000004
	.quad	0x3fee4a7d6733ebc0              # double 0.94659300000000001
	.quad	0x3fc372f76e6106ab              # double 0.151946
	.quad	0x3feb358afc47e49b              # double 0.85028599999999999
	.quad	0x3fc1bc558644523f              # double 0.13855999999999999
	.quad	0x3fe2a3c21187e7c0              # double 0.58248999999999995
	.quad	0x3feeaf837b4a233a              # double 0.95892500000000003
	.quad	0x3fe932873bc903ea              # double 0.78741799999999995
	.quad	0x3fc0f9873ffac1d3              # double 0.13261500000000001
	.quad	0x3fecbde82d7b634e              # double 0.89818200000000004
	.quad	0x3fcf10ba6266fd65              # double 0.242698
	.quad	0x3fa05814940bbb1f              # double 0.031921999999999999
	.quad	0x3fbc385c67dfe32a              # double 0.110235
	.quad	0x3fa2ad3e920c069e              # double 0.036477999999999997
	.quad	0x3fe95f6fd21ff2e5              # double 0.79290000000000005
	.quad	0x3fcc436fc158fb44              # double 0.220808
	.quad	0x3fd5ada33bd9cae2              # double 0.338723
	.quad	0x3fd2666ec9e236c1              # double 0.28750199999999998
	.quad	0x3fed2aa5c5f7c676              # double 0.91145600000000004
	.quad	0x3fef5f202107b784              # double 0.98036199999999995
	.quad	0x3fe724052d666a98              # double 0.72314699999999998
	.quad	0x3fdd79a6b50b0f28              # double 0.46055000000000001
	.quad	0x3fe4122962cfd8f1              # double 0.62721700000000002
	.quad	0x3fb6d959a30984e4              # double 0.089254
	.quad	0x3fbaa8c9b845564b              # double 0.10413799999999999
	.quad	0x3febce703afb7e91              # double 0.86895
	.quad	0x3fcfa5b0ff10ecb7              # double 0.24724399999999999
	.quad	0x3fc7ca6ca03c4b0a              # double 0.185865
	.quad	0x3f8843c3a42f1ed1              # double 0.011847999999999999
	.quad	0x3fd745f17bd8be73              # double 0.36364400000000002
	.quad	0x3fef3a1f4b1ee243              # double 0.97584499999999996
	.quad	0x3fb3841248d7e026              # double 0.076233999999999996
	.quad	0x3feac8cb4aec8d5c              # double 0.83701099999999994
	.quad	0x3fdb1a437824d4cc              # double 0.42347800000000002
	.quad	0x3fa22f05a708ede5              # double 0.035514999999999998
	.quad	0x3feb1029ae4f3344              # double 0.845723
	.quad	0x3febf0d62bf11f92              # double 0.87314899999999995
	.quad	0x3fd2bb517a46173c              # double 0.29268300000000003
	.quad	0x3fd9b940fecdd0d9              # double 0.40193200000000001
	.quad	0x3fea1a261bf37b8d              # double 0.81569199999999997
	.quad	0x3fe7215b9a5a89b9              # double 0.72282199999999996
	.quad	0x3fd1e3b46fdeb52d              # double 0.27952300000000002
	.quad	0x3fe96d71f36262cc              # double 0.79461000000000003
	.quad	0x3fe2357c4e2f37fc              # double 0.56902900000000001
	.quad	0x3fda52f3c2dadb83              # double 0.41131299999999998
	.quad	0x3fd9810a569b1748              # double 0.39850099999999999
	.quad	0x3fe215703f2d3c79              # double 0.56511699999999998
	.quad	0x3fdf147ae147ae14              # double 0.48562499999999997
	.quad	0x3fea80192a737111              # double 0.82813700000000001
	.quad	0x3fe04f5d35653c9b              # double 0.50968800000000003
	.quad	0x3fcc9f4906034f40              # double 0.223611
	.quad	0x3fd956191148fda0              # double 0.39588000000000001
	.quad	0x3fe3c6c11a11233e              # double 0.61801200000000001
	.quad	0x3fe7b97785729b28              # double 0.74138999999999999
	.quad	0x3fd98316a055757d              # double 0.39862599999999998
	.quad	0x3fe6abcb5fe542e5              # double 0.70847099999999996
	.quad	0x3fe1859ea57214f0              # double 0.54756099999999996
	.quad	0x3fe10b673c4f3ba7              # double 0.53264199999999995
	.quad	0x3fc907182235b4ee              # double 0.19552900000000001
	.quad	0x3fda7aeddce7cd03              # double 0.41375299999999998
	.quad	0x3fa20be5109070fc              # double 0.035247000000000001
	.quad	0x3fea9dffc5479d4e              # double 0.83178700000000005
	.quad	0x3fe3ae33eff19503              # double 0.61501499999999998
	.quad	0x3fd5f202107b7846              # double 0.34289599999999998
	.quad	0x3fe1f3c0c1fc8f32              # double 0.56100499999999998
	.quad	0x3fedc2d6a9c560c8              # double 0.93003400000000003
	.quad	0x3fd3f6f08cc575c0              # double 0.31194699999999997
	.quad	0x3fe173b85e80bed7              # double 0.54537599999999997
	.quad	0x3f6e7fb267c6b8b7              # double 0.0037230000000000002
	.quad	0x3fc4e41919ac7970              # double 0.16321099999999999
	.quad	0x3fecbf37b8d3f184              # double 0.89834199999999997
	.quad	0x3febd26527a20579              # double 0.86943300000000001
	.quad	0x3fd1b40b34e7685a              # double 0.27661400000000003
	.quad	0x3fd21bb4916ca46e              # double 0.282941
	.quad	0x3fe8f15a4acf312b              # double 0.77946199999999999
	.quad	0x3fec9b5a63f9a49c              # double 0.89396399999999998
	.quad	0x3fde48cb4aec8d5c              # double 0.47319299999999997
	.quad	0x3fe9883dbc23315d              # double 0.79788099999999995
	.quad	0x3fe6108a265f0f5a              # double 0.68951899999999999
	.quad	0x3fe07c286f8ad256              # double 0.51515599999999995
	.quad	0x3fee414c660a2014              # double 0.94547099999999995
	.quad	0x3fc19c94f69ca9ef              # double 0.13759099999999999
	.quad	0x3fc82b734b51372a              # double 0.18882599999999999
	.quad	0x3fd6d2178f68be2f              # double 0.35657299999999997
	.quad	0x3fc352a843808851              # double 0.15096000000000001
	.quad	0x3fede9878316a055              # double 0.93475699999999995
	.quad	0x3fe9a1858bc59b80              # double 0.80096699999999998
	.quad	0x3fba95421c044285              # double 0.10384
	.quad	0x3fd8b8a19c9d5a18              # double 0.38626899999999997
	.quad	0x3fe421ff2e48e8a7              # double 0.62914999999999999
	.quad	0x3feda9e2bcf91a33              # double 0.92698800000000003
	.quad	0x3fd0f51ac9afe1da              # double 0.26495999999999997
	.quad	0x3fe98e51d25aab47              # double 0.79862299999999997
	.quad	0x3fe7d04c48adeebb              # double 0.74417699999999998
	.quad	0x3fe079335d249e45              # double 0.514795
	.quad	0x3fe5f61cbccf28c8              # double 0.68629300000000004
	.quad	0x3fe7708aac96cc60              # double 0.73248800000000002
	.quad	0x3fbe7fe4bcad9ad8              # double 0.11913899999999999
	.quad	0x3fad9988d2a1f8e4              # double 0.057812000000000002
	.quad	0x3fd40168b5cbff47              # double 0.31258599999999997
	.quad	0x3fd2ed1394317acc              # double 0.29571999999999998
	.quad	0x3f78f92af9a8cdea              # double 0.006097
	.quad	0x3fd471f36262cba7              # double 0.31945499999999999
	.quad	0x3fefb3eff1950332              # double 0.99071500000000001
	.quad	0x3fcedc11e42e1262              # double 0.241091
	.quad	0x3fd776c8b4395810              # double 0.36662499999999998
	.quad	0x3fe139841aac53b1              # double 0.53827100000000005
	.quad	0x3fdcbeec39799e52              # double 0.44915300000000002
	.quad	0x3fcdebfa8f7db6e5              # double 0.233764
	.quad	0x3fd9609dcf893faf              # double 0.39652199999999999
	.quad	0x3fe1cc9c90c4dec2              # double 0.55622700000000003
	.quad	0x3fe4bbc903ea704c              # double 0.64792300000000003
	.quad	0x3fec4a42aed13943              # double 0.88406499999999999
	.quad	0x3fda18b0d0edc3bd              # double 0.40775699999999998
	.quad	0x3fe543419e300150              # double 0.66446000000000005
	.quad	0x3fda3a71151611ba              # double 0.40981699999999999
	.quad	0x3fe47d4e09784ec6              # double 0.64029599999999998
	.quad	0x3fef6fa615a8deb1              # double 0.982379
	.quad	0x3fed97d8cf398e97              # double 0.924786
	.quad	0x3fd2797460242d06              # double 0.288663
	.quad	0x3fe34b2745bf26f2              # double 0.60292400000000002
	.quad	0x3fe28ee8d10f51ad              # double 0.57994500000000004
	.quad	0x3f94cec41dd1a21f              # double 0.020320000000000001
	.quad	0x3fd25e0f7fcfc3f8              # double 0.286991
	.quad	0x3fe02bfb9bed30f0              # double 0.50536899999999996
	.quad	0x3fda1f4b1ee24357              # double 0.40816000000000002
	.quad	0x3fe3f6512a94ff00              # double 0.62381799999999998
	.quad	0x3fed26bf8769ec2d              # double 0.91098000000000001
	.quad	0x3fe0b4b72c5197a2              # double 0.52205999999999997
	.quad	0x3fead538ac18f81f              # double 0.83852800000000005
	.quad	0x3fe3c6bacf7446fa              # double 0.61800900000000003
	.quad	0x3fc840fa9c12f09e              # double 0.18948300000000001
	.quad	0x3fe7f2b884406c01              # double 0.74837900000000002
	.quad	0x3fc26ca03c4b09ea              # double 0.14394000000000001
	.quad	0x3fd0272c94b380cb              # double 0.25239099999999998
	.quad	0x3fd4994185058dde              # double 0.32185399999999997
	.quad	0x3fd988db0574b407              # double 0.398978
	.quad	0x3fcebf5515054ac3              # double 0.24021400000000001
	.quad	0x3feb5b59578a2a91              # double 0.85490100000000002
	.quad	0x3fea83a109d0635a              # double 0.82856799999999997
	.quad	0x3fd7451b93037d63              # double 0.363593
	.quad	0x3fdd5cc857f3061c              # double 0.45878799999999997
	.quad	0x3fef5a6612839043              # double 0.97978500000000001
	.quad	0x3fd20eb24a6a875d              # double 0.28214699999999998
	.quad	0x3fda6c2efd438d1e              # double 0.41285300000000003
	.quad	0x3fb064fdb09a671f              # double 0.064041000000000001
	.quad	0x3feed31fcd24e161              # double 0.96327200000000001
	.quad	0x3fe51c8eabffcdab              # double 0.65973599999999999
	.quad	0x3fdddd00f776c482              # double 0.46661399999999997
	.quad	0x3fbc660a2014727e              # double 0.110932
	.quad	0x3faec9c0a8d21bc1              # double 0.060132999999999999
	.quad	0x3fd88f7db6e503fb              # double 0.38375799999999999
	.quad	0x3fedd996744b2b77              # double 0.93281099999999995
	.quad	0x3fd9a715831f03d1              # double 0.40082299999999998
	.quad	0x3fa3c7b45f17bd8c              # double 0.038633000000000001
	.quad	0x3fd931a8ef77f280              # double 0.39365600000000001
	.quad	0x3fe3d8dde7a743a6              # double 0.62022299999999997
	.quad	0x3fda94a2b9d3cbc5              # double 0.41532200000000002
	.quad	0x3feb96ca46e08f21              # double 0.86215699999999995
	.quad	0x3fa11a975afaf859              # double 0.033405999999999998
	.quad	0x3fda2edfe75bc44c              # double 0.409111
	.quad	0x3fe30a372606fac6              # double 0.594997
	.quad	0x3fe61ce4a7b4e54f              # double 0.69102699999999995
	.quad	0x3fe1e0ded288ce70              # double 0.55869999999999997
	.quad	0x3fde16df3f961805              # double 0.47014600000000001
	.quad	0x3fe2f609dcf893fb              # double 0.59253400000000001
	.quad	0x3fd7bb4916ca46e1              # double 0.37080600000000002
	.quad	0x3fd1c93ea2d2fe3f              # double 0.27790799999999999
	.quad	0x3fd1d35653c9abb0              # double 0.27852399999999999
	.quad	0x3fd1a5daf07bfe7e              # double 0.27574799999999999
	.quad	0x3fa98efbb0e5e679              # double 0.049918999999999998
	.quad	0x3f9ebb7739f340d5              # double 0.030012
	.quad	0x3fe85946c332f017              # double 0.76089799999999996
	.quad	0x3fd4d352220bc383              # double 0.32539800000000002
	.quad	0x3fc396e158750c1c              # double 0.15304200000000001
	.quad	0x3feaca771c970f7c              # double 0.83721500000000004
	.quad	0x3fe4d53ef6b5d463              # double 0.65103100000000003
	.quad	0x3fb266234a87e38f              # double 0.071871000000000004
	.quad	0x3fe32500d5e8d541              # double 0.59826699999999999
	.quad	0x3fbd057d1782d384              # double 0.11336499999999999
	.quad	0x3fe23c81908e581d              # double 0.569886
	.quad	0x3fe208f861a60d45              # double 0.56359499999999996
	.quad	0x3fd311d3671ac14c              # double 0.29796299999999998
	.quad	0x3fdc5436b8f9b131              # double 0.44263999999999998
	.quad	0x3fe5c057082491b0              # double 0.67972900000000003
	.quad	0x3fef6468cac4b4d0              # double 0.98100699999999996
	.quad	0x3fadff1d81f10668              # double 0.058587
	.quad	0x3fd7a2df9378ee28              # double 0.36931599999999998
	.quad	0x3fe31a79fec99f1b              # double 0.59698200000000001
	.quad	0x3fe70a958537e2c5              # double 0.72004199999999996
	.quad	0x3feb3d230b9dc2f4              # double 0.85121299999999999
	.quad	0x3fea827fa1a0cf18              # double 0.82843
	.quad	0x3fe471327243137b              # double 0.638818
	.quad	0x3fe58a2ca9ac3654              # double 0.67311699999999997
	.quad	0x3fe5802c0a4a05de              # double 0.67189600000000005
	.quad	0x3fd8d173fb7a5f42              # double 0.38778400000000002
	.quad	0x3fd6eea209aaa3ad              # double 0.35831499999999999
	.quad	0x3fef70fbeb9e492c              # double 0.98254200000000002
	.quad	0x3fc2f49491f2dc2b              # double 0.148089
	.quad	0x3fda8b1572580c31              # double 0.41473900000000002
	.quad	0x3fea2e62131a8ef7              # double 0.81816199999999994
	.quad	0x3fd48db0574b4070              # double 0.32114799999999999
	.quad	0x3fd42e6644d87725              # double 0.315332
	.quad	0x3feee5de15ca6ca0              # double 0.96555999999999997
	.quad	0x3fda4840e1719f80              # double 0.41066000000000003
	.quad	0x3fe714b599aa6091              # double 0.72127799999999997
	.quad	0x3fd7317acc4ef88c              # double 0.36239500000000002
	.quad	0x3fdce5321e603d57              # double 0.45148899999999997
	.quad	0x3fd76256366d7a57              # double 0.36537700000000001
	.quad	0x3fccd03d9a95421c              # double 0.225105
	.quad	0x3fe8408b75ea67e8              # double 0.75787899999999997
	.quad	0x3fed150fc71d6063              # double 0.90882099999999999
	.quad	0x3fd48d1d8a548238              # double 0.32111299999999998
	.quad	0x3fcc231832fcac8e              # double 0.21982099999999999
	.quad	0x3fe0c1aac53b0814              # double 0.52364100000000002
	.quad	0x3fe1f694467381d8              # double 0.56135000000000002
	.quad	0x3fd29f559b3d07c8              # double 0.29097499999999998
	.quad	0x3fbd96a6a012599f              # double 0.11558
	.quad	0x3fc22bae03b3e9a7              # double 0.141958
	.quad	0x3fe65604189374bc              # double 0.69799999999999995
	.quad	0x3fdc2de43ed959a3              # double 0.440301
	.quad	0x3fc089f40a2877ee              # double 0.12920999999999999
	.quad	0x3fa4a25529fe004b              # double 0.040300999999999997
	.quad	0x3fc3a40d90e23af3              # double 0.153444
	.quad	0x3fefd694ccab3ede              # double 0.99494400000000005
	.quad	0x3fe5c508b32ce896              # double 0.68030199999999996
	.quad	0x3fe518b2e9ccb7d4              # double 0.65926499999999999
	.quad	0x3fd1f2ecf2064239              # double 0.28045199999999998
	.quad	0x3fdfede97d06bbdc              # double 0.49889600000000001
	.quad	0x3fc63558a7610279              # double 0.17350299999999999
	.quad	0x3fd28dc55000c954              # double 0.28990300000000002
	.quad	0x3fbc74751ce28ed6              # double 0.111152
	.quad	0x3fd0aef6f8f04146              # double 0.26067899999999999
	.quad	0x3fc2ba0e8427418d              # double 0.14630299999999999
	.quad	0x3fee35158b827fa2              # double 0.94398000000000004
	.quad	0x3fa95810624dd2f2              # double 0.049500000000000002
	.quad	0x3fcc66a11ec918e3              # double 0.221882
	.quad	0x3fef50fa58f7121b              # double 0.97863500000000003
	.quad	0x3fe0dc26dce39b45              # double 0.52687399999999995
	.quad	0x3fe4fd84901d1915              # double 0.65594699999999995
	.quad	0x3fd0e19b90ea9e6f              # double 0.26377
	.quad	0x3fefb10342aa9f7b              # double 0.99035799999999996
	.quad	0x3fe58b8cfbfc6541              # double 0.67328500000000002
	.quad	0x3fe860ef99806f26              # double 0.76183299999999998
	.quad	0x3fb73eab367a0f91              # double 0.090800000000000006
	.quad	0x3fbf3de1e2de8709              # double 0.12203799999999999
	.quad	0x3f99dd7ecbb7f9d7              # double 0.025259
	.quad	0x3fde02c9081c2e34              # double 0.46892
	.quad	0x3fd25ad96a6a0126              # double 0.28679500000000002
	.quad	0x3fd10aa21a719b4e              # double 0.26627400000000001
	.quad	0x3fc83497b7414a4d              # double 0.189105
	.quad	0x3fea883dbc23315d              # double 0.82913099999999995
	.quad	0x3fedd5842b734b51              # double 0.93231399999999998
	.quad	0x3fd79da9c99285a9              # double 0.36899799999999999
	.quad	0x3fb93da72a7bd48d              # double 0.098597000000000004
	.quad	0x3fe4e95faa8a82a5              # double 0.65348799999999996
	.quad	0x3feb1b1d92b7fe09              # double 0.84706000000000004
	.quad	0x3fe3e544fe36d224              # double 0.62173699999999998
	.quad	0x3fc2e568a50507a7              # double 0.14762600000000001
	.quad	0x3fec3b1af3a14cec              # double 0.88221499999999997
	.quad	0x3fddc36da87a072d              # double 0.46505299999999999
	.quad	0x3fd827f5e84f0953              # double 0.37743900000000002
	.quad	0x3fce286f8ad2567a              # double 0.23560900000000001
	.quad	0x3fec38e29f9ce8d9              # double 0.88194399999999995
	.quad	0x3fd934ca0c282c6f              # double 0.393847
	.quad	0x3fecfcf80dc33722              # double 0.90588000000000002
	.quad	0x3fe412d55a3a083a              # double 0.62729900000000005
	.quad	0x3fe4c44e0daa0cae              # double 0.64896299999999996
	.quad	0x3fe0830a0b1bbcf5              # double 0.51599600000000001
	.quad	0x3fdaef6b5d462c34              # double 0.42086299999999999
	.quad	0x3fe162089e34330d              # double 0.54321699999999995
	.quad	0x3fc8eb0318b9346a              # double 0.19467200000000001
	.quad	0x3fca314013ec460f              # double 0.204628
	.quad	0x3fe208765ba6efc3              # double 0.56353299999999995
	.quad	0x3fda0563ed0f6274              # double 0.40657900000000002
	.quad	0x3fe86ff1950331e4              # double 0.76366500000000003
	.quad	0x3fee610060780fdc              # double 0.94934099999999999
	.quad	0x3fe912c061847f56              # double 0.78353899999999999
	.quad	0x3fd1d77b7c7820a3              # double 0.278777
	.quad	0x3fdd79ee02a77a2d              # double 0.460567
	.quad	0x3fde87a072d1aeb4              # double 0.47702800000000001
	.quad	0x3fd5a1fd1569f490              # double 0.33801199999999998
	.quad	0x3fe3a64c2f837b4a              # double 0.61404999999999998
	.quad	0x3fb80096feb4a665              # double 0.093758999999999995
	.quad	0x3fd6864020817fc7              # double 0.35194399999999998
	.quad	0x3fea62f166e008ea              # double 0.82457800000000003
	.quad	0x3fef0c26138fffbd              # double 0.97023300000000001
	.quad	0x3fe4a253111f0c35              # double 0.64481500000000003
	.quad	0x3fdbbca1059ea572              # double 0.433388
	.quad	0x3fec581adea89763              # double 0.88575499999999996
	.quad	0x3fd517a02fb5d031              # double 0.329567
	.quad	0x3fd3c6a3bddfca00              # double 0.30899900000000002
	.quad	0x3fc7db1209edbf8c              # double 0.18637300000000001
	.quad	0x3fe95f30e7ff583a              # double 0.79286999999999996
	.quad	0x3fe475c28f5c28f6              # double 0.63937500000000003
	.quad	0x3fb3b3743632c1f4              # double 0.076956999999999998
	.quad	0x3fe3e34549b62c77              # double 0.62149299999999996
	.quad	0x3fe54219eb6390c9              # double 0.66431899999999999
	.quad	0x3fdf8b6523704791              # double 0.49288300000000002
	.quad	0x3fd5f3dc054ef45a              # double 0.34300900000000001
	.quad	0x3fdc3736cdf266ba              # double 0.44086999999999998
	.quad	0x3fda4a90470a808d              # double 0.41080100000000003
	.quad	0x3fea615ca6ca03c5              # double 0.82438500000000003
	.quad	0x3fe6a3ca7503b81b              # double 0.70749399999999996
	.quad	0x3fdef30e7ff583a5              # double 0.48358499999999999
	.quad	0x3fe66a550870110a              # double 0.70047999999999999
	.quad	0x3fd771de69ad42c4              # double 0.36632500000000001
	.quad	0x3fe43aabcd78c437              # double 0.632162
	.quad	0x3fd785d744f5d356              # double 0.36754399999999998
	.quad	0x3fef5d074213a0c7              # double 0.98010600000000003
	.quad	0x3fdf4fa48301a7a0              # double 0.489236
	.quad	0x3fdc4f2ae07e5a79              # double 0.442332
	.quad	0x3fece922d948dc12              # double 0.90345900000000001
	.quad	0x3fd226edaa92e621              # double 0.28362599999999999
	.quad	0x3fe74970f7b9e061              # double 0.727715
	.quad	0x3fd7003ab862b27d              # double 0.35938900000000001
	.quad	0x3fee96aad1d041cc              # double 0.95589199999999996
	.quad	0x3fe61db445ed4a1b              # double 0.69112600000000002
	.quad	0x3fe21869835158b8              # double 0.56547999999999998
	.quad	0x3fec99ce075f6fd2              # double 0.89377499999999999
	.quad	0x3fe34ce8101f31f4              # double 0.60313799999999995
	.quad	0x3fe5cba0e8427419              # double 0.68110700000000002
	.quad	0x3fe08ed80a17b0f7              # double 0.51743700000000004
	.quad	0x3fe0399f5dfeb8d8              # double 0.50703399999999998
	.quad	0x3fdd3baba7b9170d              # double 0.45676699999999998
	.quad	0x3fe4b5d031055b8a              # double 0.64719400000000005
	.quad	0x3fe8bec892ab68cf              # double 0.773289
	.quad	0x3fd2d1d041cc532a              # double 0.29405599999999998
	.quad	0x3fa44c7b02d59d56              # double 0.039646000000000001
	.quad	0x3fe289acbc8c0ce9              # double 0.57930599999999999
	.quad	0x3fe1629f9ce8d973              # double 0.54328900000000002
	.quad	0x3fea83afb7e90ff9              # double 0.82857499999999995
	.quad	0x3fcbaad601ffb481              # double 0.21615100000000001
	.quad	0x3fe857abb8800eae              # double 0.76070199999999999
	.quad	0x3fe35549731098d4              # double 0.60416099999999995
	.quad	0x3fedd52e2fbe33ad              # double 0.93227300000000002
	.quad	0x3fd0e2541d8e8640              # double 0.26381399999999999
	.quad	0x3fe25a4052d666aa              # double 0.57351700000000005
	.quad	0x3fccfdc1615ebfa9              # double 0.226494
	.quad	0x3fd98793dd97f62b              # double 0.39889999999999998
	.quad	0x3fdadbb16c1e364c              # double 0.419659
	.quad	0x3fe1ad6ece13f4aa              # double 0.55242100000000005
	.quad	0x3f600e6afcce1c58              # double 0.0019599999999999999
	.quad	0x3fe3ba493c89f40a              # double 0.61648999999999998
	.quad	0x3fb3b43d89ce4a7b              # double 0.076968999999999996
	.quad	0x3fe9004b7f5a5333              # double 0.78128600000000004
	.quad	0x3fe653c9abb01c93              # double 0.69772800000000001
	.quad	0x3fe74d2b2bfdb4cc              # double 0.72816999999999998
	.quad	0x3fc1c90c4dec1c1d              # double 0.13894799999999999
	.quad	0x3faf0bf1a5ca2984              # double 0.060637999999999997
	.quad	0x3fd068e3ef284168              # double 0.25640200000000002
	.quad	0x3fb395f676ea4229              # double 0.076507000000000006
	.quad	0x3fecb8cb8e086bdf              # double 0.89755799999999997
	.quad	0x3fc2687f455a7d24              # double 0.143814
	.quad	0x3fcc91b823c85c25              # double 0.22319700000000001
	.quad	0x3feabfa4c61d8623              # double 0.83589400000000003
	.quad	0x3fc6bf65dbfceb79              # double 0.17771600000000001
	.quad	0x3fd4d141a6937d20              # double 0.32527200000000001
	.quad	0x3fe41de8b3b32053              # double 0.62865099999999996
	.quad	0x3fea6f7a0b5ed8d3              # double 0.82610799999999995
	.quad	0x3fb0198f1d3ed528              # double 0.062890000000000001
	.quad	0x3fb7d2b6f19934f0              # double 0.093059000000000002
	.quad	0x3fcc1b5c7cd898b3              # double 0.219585
	.quad	0x3fe5d63886594af5              # double 0.68240000000000001
	.quad	0x3fd19702e6644d87              # double 0.27484199999999998
	.quad	0x3fed204af922962d              # double 0.910192
	.quad	0x3fec7312b1b36bd3              # double 0.88904700000000003
	.quad	0x3fc7b0ab2e1693c0              # double 0.18507899999999999
	.quad	0x3fe58e8640208180              # double 0.67364800000000002
	.quad	0x3fe17f8012dfd695              # double 0.54681400000000002
	.quad	0x3f609aed56b00ffe              # double 0.0020270000000000002
	.quad	0x3febf2cf95d4e8fb              # double 0.87339
	.quad	0x3fead338f7985272              # double 0.83828400000000003
	.quad	0x3fc9e8f6cefed634              # double 0.20242199999999999
	.quad	0x3fbd703f2d3c792d              # double 0.114994
	.quad	0x3fc5c842fa509396              # double 0.17017399999999999
	.quad	0x3fdd9378ee286727              # double 0.46212599999999998
	.quad	0x3fed1fcb0c026cc2              # double 0.91013100000000002
	.quad	0x3feee56473471f79              # double 0.96550199999999997
	.quad	0x3fe954de7ea5f84d              # double 0.79161000000000004
	.quad	0x3feac167a95c853c              # double 0.83610899999999999
	.quad	0x3fdf5568e820e62a              # double 0.48958800000000002
	.quad	0x3fda133c1ce6c094              # double 0.40742400000000001
	.quad	0x3fdbe1cde5d18091              # double 0.43565700000000002
	.quad	0x3f829c347e8ccdd9              # double 0.0090869999999999995
	.quad	0x3fdf7a95c853c148              # double 0.49185699999999999
	.quad	0x3fd1f672b884406c              # double 0.280667
	.quad	0x3fecab474107314d              # double 0.89590800000000004
	.quad	0x3fe760114d2f5dbc              # double 0.73047700000000004
	.quad	0x3fe639042d8c2a45              # double 0.69445999999999997
	.quad	0x3fe1f1e6cd29131f              # double 0.56077900000000003
	.quad	0x3fee19e731d2e0e3              # double 0.940662
	.quad	0x3fe82089e34330d7              # double 0.75397199999999998
	.quad	0x3fcf987c6327ed85              # double 0.246841
	.quad	0x3fcce503fb374363              # double 0.225739
	.quad	0x3fe42715831f03d1              # double 0.62977099999999997
	.quad	0x3fcb737542a23c00              # double 0.21446100000000001
	.quad	0x3f64af4f0d844d01              # double 0.0025249999999999999
	.quad	0x3fc84d4cb9ecf638              # double 0.189859
	.quad	0x3fb6f8487b99d452              # double 0.089726
	.quad	0x3fd69f2fdb8fde2f              # double 0.353466
	.quad	0x3fc8536d655e28aa              # double 0.19004599999999999
	.quad	0x3fe81b328b6d86ec              # double 0.75331999999999998
	.quad	0x3fddc12ad81adea9              # double 0.46491500000000002
	.quad	0x3fd977f6b1a2a4db              # double 0.397947
	.quad	0x3fd180b673c4f3ba              # double 0.27348099999999997
	.quad	0x3fefd67ba237cdcd              # double 0.99493200000000003
	.quad	0x3fe295d2d01c0ca6              # double 0.580789
	.quad	0x3fe6d9f4d37c1377              # double 0.71410600000000002
	.quad	0x3fd81ba7fc32ebe6              # double 0.37668800000000002
	.quad	0x3fe2fd7e45803cd1              # double 0.59344399999999997
	.quad	0x3fb91ba3ca7503b8              # double 0.098077999999999999
	.quad	0x3fd71f926c7eae5c              # double 0.36130200000000001
	.quad	0x3fdc5881a1554fbe              # double 0.44290200000000002
	.quad	0x3fcbdd872f33ca32              # double 0.217698
	.quad	0x3fb788a8b08dd1e5              # double 0.091928999999999997
	.quad	0x3fd060fa15db3398              # double 0.25591900000000001
	.quad	0x3fcfb71fbc5de9c0              # double 0.247776
	.quad	0x3fe9f5b813016484              # double 0.81124499999999999
	.quad	0x3fe0840e1719f7f9              # double 0.51612000000000002
	.quad	0x3fef9c475e6362a6              # double 0.98782700000000001
	.quad	0x3fb1479d4d834092              # double 0.067499000000000003
	.quad	0x3fdababa7b9170d6              # double 0.41764699999999999
	.quad	0x3fe51815a07b352b              # double 0.65919000000000005
	.quad	0x3fccf1dc50ce4ead              # double 0.226131
	.quad	0x3fd03b96af038e2a              # double 0.253637
	.quad	0x3fd21693c03bc4d2              # double 0.28262799999999999
	.quad	0x3fe4781c714fce74              # double 0.63966199999999995
	.quad	0x3fd8df04ddb5525d              # double 0.38861200000000001
	.quad	0x3fd6f2990f301eac              # double 0.35855700000000001
	.quad	0x3fe8fcce1c58255b              # double 0.78086
	.quad	0x3fb1d4b6a619da9d              # double 0.069652000000000006
	.quad	0x3fd596249a133c1d              # double 0.33728900000000001
	.quad	0x3fef7a2f05a708ee              # double 0.98366500000000001
	.quad	0x3face48626f60e0f              # double 0.056431000000000002
	.quad	0x3fdc8130164840e1              # double 0.44538499999999998
	.quad	0x3fe6058ff7596851              # double 0.68817899999999999
	.quad	0x3fb1a8deb0fadf2f              # double 0.068983000000000003
	.quad	0x3fe1b18b93469942              # double 0.55292300000000005
	.quad	0x3feb78d4fdf3b646              # double 0.85850000000000004
	.quad	0x3fe80d25edd05293              # double 0.75160499999999997
	.quad	0x3fe32773e24febd1              # double 0.59856600000000004
	.quad	0x3fdb779207d4e098              # double 0.42917300000000003
	.quad	0x3f8c4b90214ad363              # double 0.013816
	.quad	0x3fe86d0d49949e88              # double 0.76331199999999999
	.quad	0x3fe32c12ad81adeb              # double 0.59913000000000005
	.quad	0x3fe731fab96f21f7              # double 0.72485100000000002
	.quad	0x3fcc102ff8ec0f88              # double 0.21924399999999999
	.quad	0x3fd7562e09fe8683              # double 0.36463499999999999
	.quad	0x3fe76c9e236c15d3              # double 0.73200900000000002
	.quad	0x3fb15f2452c59fb2              # double 0.067858000000000002
	.quad	0x3fea7893faf42785              # double 0.82721900000000004
	.quad	0x3fb692d55a3a083a              # double 0.088178000000000006
	.quad	0x3fe2ace24bba12b6              # double 0.58360400000000001
	.quad	0x3fca69595feda661              # double 0.20634
	.quad	0x3fb2fbe33acd5b68              # double 0.074156
	.quad	0x3fdc1a1986b9c305              # double 0.43909300000000001
	.quad	0x3fccef5ec80c73ac              # double 0.22605500000000001
	.quad	0x3fec018611fd5886              # double 0.87518600000000002
	.quad	0x3fd8d19157abb880              # double 0.387791
	.quad	0x3fea4ca0c282c6ef              # double 0.82185399999999997
	.quad	0x3fe1b33daf8df7a5              # double 0.55313000000000001
	.quad	0x3fe0560c7c0f4517              # double 0.51050399999999996
	.quad	0x3fdd4523f67f4dbe              # double 0.457345
	.quad	0x3fa24e9c4545846f              # double 0.035756000000000003
	.quad	0x3fa1fcf3dc054ef4              # double 0.035132999999999998
	.quad	0x3fe98a67620ee8d1              # double 0.79814499999999999
	.quad	0x3fae31b584b1ab08              # double 0.058972999999999998
	.quad	0x3fe58db0574b4070              # double 0.67354599999999998
	.quad	0x3fe9ccb9ecf63800              # double 0.80624099999999999
	.quad	0x3fe29930be0ded29              # double 0.58120000000000005
	.quad	0x3facc6a3bddfca00              # double 0.056203000000000003
	.quad	0x3fcd6fa82e87d2c8              # double 0.22997000000000001
	.quad	0x3fe0ad83c6c97d8d              # double 0.52118100000000001
	.quad	0x3fcf1e6cd29131ec              # double 0.243116
	.quad	0x3feb68b5cbff4773              # double 0.85653199999999996
	.quad	0x3fed0913a4f8726d              # double 0.907358
	.quad	0x3fd7ed8904f6dfc6              # double 0.37387300000000001
	.quad	0x3fe3bdd11be6e654              # double 0.61692100000000005
	.quad	0x3fdf74538ef34d6a              # double 0.491475
	.quad	0x3fe632745bf26f1e              # double 0.69365900000000003
	.quad	0x3fd9894812be48a6              # double 0.39900400000000003
	.quad	0x3fb6f81626b2f230              # double 0.089722999999999997
	.quad	0x3fd25afaf8594291              # double 0.28680299999999997
	.quad	0x3fe959274e22a2c2              # double 0.79213299999999998
	.quad	0x3feb11b1d92b7fe1              # double 0.84591000000000005
	.quad	0x3fe6a30121682f94              # double 0.70739799999999997
	.quad	0x3fe71b823c85c24c              # double 0.72210799999999997
	.quad	0x3fefd38476f2a5a4              # double 0.99456999999999995
	.quad	0x3fe1cce1c58255b0              # double 0.55625999999999998
	.quad	0x3fd3ac14c660a201              # double 0.30737799999999998
	.quad	0x3fe56ca03c4b09ea              # double 0.66951000000000005
	.quad	0x3fd36d0917d6b65b              # double 0.30353000000000002
	.quad	0x3fea1c27e9531551              # double 0.81593700000000002
	.quad	0x3fe3af1cb89d6adf              # double 0.61512599999999995
	.quad	0x3fe08efbb0e5e679              # double 0.51745399999999997
	.quad	0x3fd607a6bd6e8af8              # double 0.344217
	.quad	0x3fe78c308feac42f              # double 0.73586300000000004
	.quad	0x3fe91dc2f405f6ba              # double 0.784883
	.quad	0x3fb5cc857f3061c8              # double 0.085152000000000005
	.quad	0x3fcf06ab14ec204f              # double 0.242391
	.quad	0x3fe806a4ca4f440b              # double 0.75081100000000001
	.quad	0x3f9bf8769ec2ce46              # double 0.027314999999999999
	.quad	0x3fee34070329802c              # double 0.94385099999999999
	.quad	0x3f939713ad5bee3d              # double 0.019130999999999999
	.quad	0x3fc0c2efd438d1d9              # double 0.13094900000000001
	.quad	0x3fc1858bc59b8024              # double 0.13688800000000001
	.quad	0x3fe7b9c7368ad688              # double 0.74142799999999998
	.quad	0x3fe663b03e20ccff              # double 0.69966899999999999
	.quad	0x3fedc0fcb4f1e4b4              # double 0.92980799999999996
	.quad	0x3fbdf3e89a88ace2              # double 0.117003
	.quad	0x3fe3d184c271fff8              # double 0.61932600000000004
	.quad	0x3fe446b053198288              # double 0.633629
	.quad	0x3fa23486f049a997              # double 0.035556999999999998
	.quad	0x3fe83cc2938de6de              # double 0.75741700000000001
	.quad	0x3fc97bfa4c61d862              # double 0.199096
	.quad	0x3fe42d57bc7f77af              # double 0.63053499999999996
	.quad	0x3fd7961804d98394              # double 0.36853599999999997
	.quad	0x3fe8af6c69b5a640              # double 0.77141400000000004
	.quad	0x3fdcdb61bb05faec              # double 0.45089000000000001
	.quad	0x3fe371ed17c5ef63              # double 0.607657
	.quad	0x3fd712d3415b1423              # double 0.36052400000000001
	.quad	0x3fa2ebc408d8ec96              # double 0.036955000000000002
	.quad	0x3fe0a86d71f36263              # double 0.52056000000000002
	.quad	0x3fd8a964e8b7e4de              # double 0.38533899999999999
	.quad	0x3fc1b0ff10ecb74e              # double 0.138214
	.quad	0x3fe8cfe9b7bf1e8e              # double 0.77537999999999996
	.quad	0x3fdfd1dcd7060bb3              # double 0.49718400000000001
	.quad	0x3f8e481f53825e14              # double 0.014786000000000001
	.quad	0x3fe1ef672b884407              # double 0.56047400000000003
	.quad	0x3fee6188b11409a2              # double 0.94940599999999997
	.quad	0x3fed5f0f5a1016ce              # double 0.91785399999999995
	.quad	0x3fb07219220ff541              # double 0.064241000000000006
	.quad	0x3fe84a29845dc832              # double 0.75905299999999998
	.quad	0x3fef0b545c78a6db              # double 0.97013300000000002
	.quad	0x3fe65c011d3671ac              # double 0.69873099999999999
	.quad	0x3fe24983d790752e              # double 0.57147400000000004
	.quad	0x3fe59878316a0557              # double 0.67486199999999996
	.quad	0x3fd237d1fe64f54d              # double 0.28465699999999999
	.quad	0x3fd99bb6aa4b9885              # double 0.40012900000000001
	.quad	0x3fc684944ed6fda8              # double 0.17592099999999999
	.quad	0x3febfc8b0079a283              # double 0.87457799999999997
	.quad	0x3fd9c4fc1df3300e              # double 0.40264800000000001
	.quad	0x3fd8dca8e2e2b8c7              # double 0.38846799999999998
	.quad	0x3f6843c3a42f1ed1              # double 0.0029619999999999998
	.quad	0x3fe380cd855970b5              # double 0.60947300000000004
	.quad	0x3fe85471715c63ae              # double 0.76030799999999998
	.quad	0x3fd25a4f00ef1349              # double 0.28676200000000002
	.quad	0x3fef64d3bf2f5558              # double 0.98105799999999998
	.quad	0x3fc87c49fd7a13c2              # double 0.19129299999999999
	.quad	0x3f8273d5bab21816              # double 0.0090100000000000006
	.quad	0x3fd938d60a633051              # double 0.394094
	.quad	0x3fe0f67d34df04de              # double 0.53008900000000003
	.quad	0x3fd710cf5b1c8649              # double 0.36040100000000003
	.quad	0x3fd2e9ea14057082              # double 0.29552699999999998
	.quad	0x3f6fab96f21f6cad              # double 0.0038660000000000001
	.quad	0x3fa23b57c4e2f380              # double 0.035609000000000002
	.quad	0x3fe2601bc98a222d              # double 0.57423199999999996
	.quad	0x3fc565a14488c60d              # double 0.16716400000000001
	.quad	0x3fe414e7ee9142b3              # double 0.627552
	.quad	0x3fc6d15ad106ee31              # double 0.17826400000000001
	.quad	0x3fd2d91eeaa6d267              # double 0.29450199999999999
	.quad	0x3fda1df761cbccf3              # double 0.40807900000000003
	.quad	0x3fe7d610adcd2d45              # double 0.74488100000000002
	.quad	0x3fe8b3743632c1f4              # double 0.77190599999999998
	.quad	0x3fc1b5393250b524              # double 0.13834299999999999
	.quad	0x3f9fd71b0468448d              # double 0.031094
	.quad	0x3fe44ab1d4f9c1f8              # double 0.63411799999999996
	.quad	0x3fed26698bb4d489              # double 0.91093900000000005
	.quad	0x3fee75e2046c764b              # double 0.95189000000000001
	.quad	0x3fe86145953586cb              # double 0.76187400000000005
	.quad	0x3fe50ee06d938152              # double 0.65806600000000004
	.quad	0x3fe2d73215fcc187              # double 0.58876899999999999
	.quad	0x3fea2374794ea077              # double 0.816828
	.quad	0x3fd1d91ab8e8ea3a              # double 0.27887600000000001
	.quad	0x3fd4c92146a1a501              # double 0.32477600000000001
	.quad	0x3fd913e3e29307af              # double 0.39183899999999999
	.quad	0x3fe2cbc27631b585              # double 0.58737300000000003
	.quad	0x3fec904b3c3e74b0              # double 0.89261400000000002
	.quad	0x3fe7b8066c2acb86              # double 0.74121400000000004
	.quad	0x3fe60433d6c72192              # double 0.68801299999999999
	.quad	0x3fe70b8f14db5958              # double 0.72016100000000005
	.quad	0x3feefa15db3397dd              # double 0.96802799999999999
	.quad	0x3fe9c43d46b26bf8              # double 0.80520499999999995
	.quad	0x3fda800eae18ac9f              # double 0.41406599999999999
	.quad	0x3fcb2923e5b8561d              # double 0.21219299999999999
	.quad	0x3fbf9170d62bf120              # double 0.12331300000000001
	.quad	0x3feabef8ceb356da              # double 0.835812
	.quad	0x3fbe534373f316e3              # double 0.11845799999999999
	.quad	0x3fd2a18bd66277c4              # double 0.29110999999999998
	.quad	0x3fe97ff79c842fa5              # double 0.796871
	.quad	0x3fee92839042d8c3              # double 0.95538500000000004
	.quad	0x3fe7c743201040c0              # double 0.74307400000000001
	.quad	0x3feea74e22a2c237              # double 0.95792299999999996
	.quad	0x3fae6ec9e236c15d              # double 0.059438999999999999
	.quad	0x3fe7a5119ce075f7              # double 0.7389
	.quad	0x3fe400346dc5d639              # double 0.62502500000000005
	.quad	0x3fe67fc9795b35b1              # double 0.70309900000000003
	.quad	0x3fd352ef911cf356              # double 0.30193700000000001
	.quad	0x3fef6523704790b8              # double 0.98109599999999996
	.quad	0x3fc0299524bfd2e9              # double 0.12626899999999999
	.quad	0x3fdcb228dc981beb              # double 0.44837399999999999
	.quad	0x3fdf2c2bd7f51efb              # double 0.48707099999999998
	.quad	0x3fde84f8f8a4c1ec              # double 0.47686600000000001
	.quad	0x3fc29c99285a921d              # double 0.14540400000000001
	.quad	0x3fd806fef7c243dd              # double 0.37542700000000001
	.quad	0x3fed45197a24894c              # double 0.91468499999999997
	.quad	0x3fb0ab4fa48301a8              # double 0.065114000000000005
	.quad	0x3fb0fbb9496249a1              # double 0.066340999999999997
	.quad	0x3fe34cf4a558ea7d              # double 0.60314400000000001
	.quad	0x3fc7771865519371              # double 0.18332200000000001
	.quad	0x3fad48cb4aec8d5c              # double 0.057195999999999997
	.quad	0x3fcb2513b5bf6a0e              # double 0.21206900000000001
	.quad	0x3fd7bfa8f7db6e50              # double 0.37107299999999999
	.quad	0x3fe4f0a808c8259e              # double 0.65437699999999999
	.quad	0x3fd32cc70867ad8e              # double 0.29960799999999999
	.quad	0x3fc384c271fff79d              # double 0.15248900000000001
	.quad	0x3fd1dfb506dd69d3              # double 0.279279
	.quad	0x3fe4eae5bc87db2b              # double 0.65367399999999998
	.quad	0x3fd9d4ae429e0a42              # double 0.40360600000000002
	.quad	0x3fef98dcdb37c99b              # double 0.98741
	.quad	0x3fb59f0a1be2b496              # double 0.084458000000000005
	.quad	0x3fe222424a276b7f              # double 0.56668200000000002
	.quad	0x3fd2ecd07852f7f5              # double 0.29570400000000002
	.quad	0x3fd6834091c08744              # double 0.35176099999999999
	.quad	0x3fe0f50e34762952              # double 0.529914
	.quad	0x3fe086ee30caa327              # double 0.51647100000000001
	.quad	0x3fd273c4f3ba7760              # double 0.28831600000000002
	.quad	0x3f7cd1c7de5082cf              # double 0.0070359999999999997
	.quad	0x3fbfbbe878fabda1              # double 0.123961
	.quad	0x3fd68e581cf7878b              # double 0.35243799999999997
	.quad	0x3faca44c7b02d59d              # double 0.055940999999999998
	.quad	0x3fb6393ee5eedcc2              # double 0.086810999999999999
	.quad	0x3fd9ad5bee3d5fdd              # double 0.40120600000000001
	.quad	0x3fdf951c5c5718ec              # double 0.49347600000000003
	.quad	0x3fe828869c66d374              # double 0.75494700000000003
	.quad	0x3fe2e874c8ffb8b2              # double 0.59087599999999996
	.quad	0x3fec44ac6cdaf4ae              # double 0.88338300000000003
	.quad	0x3fc6913a4f8726d0              # double 0.17630699999999999
	.quad	0x3fe99682f944241c              # double 0.79962299999999997
	.quad	0x3fe78adab9f559b4              # double 0.73570000000000002
	.quad	0x3fe7dfa658c4bd34              # double 0.74605100000000002
	.quad	0x3f82fc2656abde40              # double 0.0092700000000000004
	.quad	0x3fe954cb9ecf6380              # double 0.791601
	.quad	0x3fe14b966be7afa7              # double 0.54047699999999999
	.quad	0x3faa6bd6e8af8162              # double 0.051603999999999997
	.quad	0x3fe162b063e07a29              # double 0.54329700000000003
	.quad	0x3f97eae5bc87db2b              # double 0.023356999999999999
	.quad	0x3fdaf60e0eb67c28              # double 0.42126799999999998
	.quad	0x3fd9a0cf1800a7c6              # double 0.40044000000000002
	.quad	0x3fd5a05dd8f92afa              # double 0.33791300000000002
	.quad	0x3fe3096bb98c7e28              # double 0.59489999999999998
	.quad	0x3fdca0ba1f4b1ee2              # double 0.44730999999999999
	.quad	0x3fd7e878fabda0e0              # double 0.37356400000000001
	.quad	0x3fe4a10e02214270              # double 0.64466000000000001
	.quad	0x3fd496c82e019b0b              # double 0.32170300000000002
	.quad	0x3fd78409e55c0fcb              # double 0.36743399999999998
	.quad	0x3fc3625a682b6284              # double 0.15143899999999999
	.quad	0x3fe9404a72ead927              # double 0.78909799999999997
	.quad	0x3fe23fc86cebbba5              # double 0.57028599999999996
	.quad	0x3fd7c78e9f6a93f3              # double 0.37155500000000002
	.quad	0x3fee8b588e368f08              # double 0.95450999999999996
	.quad	0x3fe346822ff08894              # double 0.60235700000000003
	.quad	0x3fd9ce703afb7e91              # double 0.403225
	.quad	0x3fe99e30014f8b59              # double 0.80056000000000005
	.quad	0x3fe32a00192a7371              # double 0.59887699999999999
	.quad	0x3fa69c886162f167              # double 0.044163000000000001
	.quad	0x3f9cc1ca3a4b5569              # double 0.028083
	.quad	0x3fc2dddf43c7d5ed              # double 0.147396
	.quad	0x3fd8c0ca600b0293              # double 0.38676700000000003
	.quad	0x3fd251159c497742              # double 0.28619899999999998
	.quad	0x3fe7ea8112ba16e8              # double 0.74737600000000004
	.quad	0x3fecee58a32f4491              # double 0.90409499999999998
	.quad	0x3fe8093d96638434              # double 0.75112800000000001
	.quad	0x3feba369fcf3dc05              # double 0.86369799999999997
	.quad	0x3fef3302f72b4528              # double 0.97497699999999998
	.quad	0x3fed8ae74f2f123c              # double 0.92320599999999997
	.quad	0x3fe8cd141a6937d2              # double 0.775034
	.quad	0x3fec634330d73861              # double 0.88711700000000004
	.quad	0x3fd19478c868b9fe              # double 0.27468700000000001
	.quad	0x3fa6bf8769ec2ce4              # double 0.044429999999999997
	.quad	0x3fdd8bb0a2ca9ac3              # double 0.46165099999999998
	.quad	0x3fd20f66a5508701              # double 0.28219
	.quad	0x3fd69de481f53826              # double 0.35338700000000001
	.quad	0x3fe537cfe5860136              # double 0.66306299999999996
	.quad	0x3fca763a19008206              # double 0.206733
	.quad	0x3fc2a5a469d7342f              # double 0.14568
	.quad	0x3feb9799e518f3ed              # double 0.86225600000000002
	.quad	0x3fef8902de00d1b7              # double 0.98547499999999998
	.quad	0x3fe1b0ccbc05d52c              # double 0.55283199999999999
	.quad	0x3faf11f926c7eae6              # double 0.060684000000000002
	.quad	0x3fe61f40a2877ee5              # double 0.69131500000000001
	.quad	0x3fefaceaaf35e311              # double 0.98985800000000001
	.quad	0x3fc9bf727136a401              # double 0.201155
	.quad	0x3fdd4b018611fd59              # double 0.45770300000000003
	.quad	0x3fc13ea2d2fe3f36              # double 0.13472400000000001
	.quad	0x3fef5577963992c9              # double 0.97918300000000002
	.quad	0x3fe1aac53b0813cb              # double 0.55209600000000003
	.quad	0x3fefeab367a0f909              # double 0.99739999999999995
	.quad	0x3fefb1ceaf251c19              # double 0.99045499999999997
	.quad	0x3fc2e1f7d73c9258              # double 0.14752100000000001
	.quad	0x3fe40ff759685122              # double 0.62694899999999998
	.quad	0x3fe7ed4e4c942d49              # double 0.74771799999999999
	.quad	0x3fe2a10be9424e59              # double 0.58215899999999998
	.quad	0x3fc5c33721d53cde              # double 0.17002
	.quad	0x3fe9969c23b7952d              # double 0.79963499999999998
	.quad	0x3fe937f7be121ee6              # double 0.78808199999999995
	.quad	0x3fe776a7264a16a5              # double 0.73323400000000005
	.quad	0x3fce12e83a109d06              # double 0.23495199999999999
	.quad	0x3fa1858bc59b8024              # double 0.034222000000000002
	.quad	0x3fd17681669ced0b              # double 0.27285799999999999
	.quad	0x3fc6b97785729b28              # double 0.177535
	.quad	0x3fee29fe004b7f5a              # double 0.94262599999999996
	.quad	0x3fe30e5a35d67ba2              # double 0.59550199999999998
	.quad	0x3fe36e9bbf0dc769              # double 0.60725200000000001
	.quad	0x3fbe1d323fee2c99              # double 0.117633
	.quad	0x3fb56030c23fab11              # double 0.083499000000000004
	.quad	0x3fcd6f9767903212              # double 0.22996800000000001
	.quad	0x3fbb19f7f8ca8199              # double 0.105865
	.quad	0x3fe9e8900c521dda              # double 0.809639
	.quad	0x3fd541e14bdfd263              # double 0.332146
	.quad	0x3fa4690de093532e              # double 0.039863999999999997
	.quad	0x3feb6801711947d0              # double 0.85644600000000004
	.quad	0x3fc987df5cf2495e              # double 0.199459
	.quad	0x3fe7f18655193709              # double 0.74823300000000004
	.quad	0x3fd83db3bfb58d15              # double 0.37876599999999999
	.quad	0x3fed4cfd08d4bad8              # double 0.91564800000000002
	.quad	0x3fcd5fc3b4f61672              # double 0.22948499999999999
	.quad	0x3feeba237cdcca71              # double 0.96022200000000001
	.quad	0x3fc93e24febd09e1              # double 0.197209
	.quad	0x3fe2e2a80064a9ce              # double 0.59016800000000003
	.quad	0x3fc87e9531550ca2              # double 0.19136300000000001
	.quad	0x3fe111a75cd0bb6f              # double 0.53340500000000002
	.quad	0x3feddf6124074645              # double 0.93351799999999996
	.quad	0x3fe1161c36976bc2              # double 0.53394900000000001
	.quad	0x3fe228fc0d2c386d              # double 0.56750299999999998
	.quad	0x3fd70728e92d55a4              # double 0.35981200000000002
	.quad	0x3fe951fa333764f1              # double 0.79125699999999999
	.quad	0x3fe9230121682f94              # double 0.78552299999999997
	.quad	0x3fe0f0c1333b96af              # double 0.529389
	.quad	0x3fdb28a1dfb9389b              # double 0.42435499999999998
	.quad	0x3fe67b784662bae0              # double 0.70257199999999997
	.quad	0x3fec3b2bba98eda2              # double 0.88222299999999998
	.quad	0x3fd37c3d68405b3a              # double 0.30445800000000001
	.quad	0x3fe21d66adb402d1              # double 0.56608899999999995
	.quad	0x3fe3a48f96e15875              # double 0.61383799999999999
	.quad	0x3fe6b9ffd60e94ee              # double 0.71020499999999998
	.quad	0x3fc91cb039ef0f17              # double 0.196188
	.quad	0x3fdcfbb517a46174              # double 0.45286300000000002
	.quad	0x3fb028c36da87a07              # double 0.063121999999999998
	.quad	0x3f7f202107b78466              # double 0.0075989999999999999
	.quad	0x3fe5630a915379fb              # double 0.66834000000000005
	.quad	0x3fe35f9591cd1c7e              # double 0.60541800000000001
	.quad	0x3febc84f8f8a4c1f              # double 0.86820200000000003
	.quad	0x3febbf1e8e608073              # double 0.86707999999999996
	.quad	0x3fe80ea39c51dabe              # double 0.75178699999999998
	.quad	0x3fdb810624dd2f1b              # double 0.42975000000000002
	.quad	0x3fc7388a8b08dd1e              # double 0.18141299999999999
	.quad	0x3fbcbc169c23b795              # double 0.112245
	.quad	0x3fe600d801b43526              # double 0.68760299999999996
	.quad	0x3fd1b9b23dd54da5              # double 0.27695900000000001
	.quad	0x3fea5c011d3671ac              # double 0.82373099999999999
	.quad	0x3fddb8bef8ceb357              # double 0.46440100000000001
	.quad	0x3fde3458cd20afa3              # double 0.471945
	.quad	0x3fdd80a9de8b3b32              # double 0.460978
	.quad	0x3fac0a2877ee4e27              # double 0.054765000000000001
	.quad	0x3fcdefe0ce0b912e              # double 0.23388300000000001
	.quad	0x3fe285bc01a36e2f              # double 0.57882500000000003
	.quad	0x3feaba1d323fee2d              # double 0.83521900000000004
	.quad	0x3fef4e7ab7564303              # double 0.97833000000000003
	.quad	0x3fe809310129cbab              # double 0.75112199999999996
	.quad	0x3fee42cc2d6a9c56              # double 0.94565399999999999
	.quad	0x3fe2ded6ba8c5868              # double 0.58970199999999995
	.quad	0x3fdf16a055757d5b              # double 0.48575600000000002
	.quad	0x3fd48bb0a2ca9ac3              # double 0.32102599999999998
	.quad	0x3fe3a7d45a5fc7e7              # double 0.61423700000000003
	.quad	0x3fdd1a437824d4cc              # double 0.45472800000000002
	.quad	0x3fe8954c985f06f7              # double 0.76822500000000005
	.quad	0x3fe0ce5929670197              # double 0.52518900000000002
	.quad	0x3fdf626b2f23033a              # double 0.49038199999999998
	.quad	0x3fdfbe7296f6512b              # double 0.49599900000000002
	.quad	0x3fac43f5f91600f3              # double 0.055205999999999998
	.quad	0x3fe20e3476295209              # double 0.56423400000000001
	.quad	0x3fd4cddd6e04c059              # double 0.32506499999999999
	.quad	0x3fbe11a975afaf86              # double 0.11745700000000001
	.quad	0x3fb0245f5ad96a6a              # double 0.063055
	.quad	0x3fa2bfb9bed30f06              # double 0.036618999999999999
	.quad	0x3fe55e97d06bbdbe              # double 0.66779699999999997
	.quad	0x3fc9681669ced0b3              # double 0.198489
	.quad	0x3fe0d1676640a6b9              # double 0.52556199999999997
	.quad	0x3fe8a9c560c7c0f4              # double 0.77072399999999996
	.quad	0x3f9075f6fd21ff2e              # double 0.016074999999999999
	.quad	0x3fe9b352a8438088              # double 0.80313999999999997
	.quad	0x3fe08a32f4491299              # double 0.51687000000000005
	.quad	0x3fc07d6f97679032              # double 0.128828
	.quad	0x3fe008db0574b407              # double 0.501081
	.quad	0x3fe73f39d1b2e59b              # double 0.726468
	.quad	0x3fd3f1cb89d6adf7              # double 0.31163299999999999
	.quad	0x3fb38e29f9ce8d97              # double 0.076387999999999998
	.quad	0x3fb3ca2120e1f7d7              # double 0.077302999999999997
	.quad	0x3fe5d004fb1183b6              # double 0.681643
	.quad	0x3fe6302b40f66a55              # double 0.69338
	.quad	0x3fed0a5ce5b4245f              # double 0.90751499999999996
	.quad	0x3fea1dadfb506dd7              # double 0.81612300000000004
	.quad	0x3fe3e4d5d80e496f              # double 0.62168400000000001
	.quad	0x3fec69af5ba2be06              # double 0.88790100000000005
	.quad	0x3fe1271bcdbbe015              # double 0.53602399999999994
	.quad	0x3fdde76c8b439581              # double 0.46725
	.quad	0x3fdc8655193708ab              # double 0.44569900000000001
	.quad	0x3f77e77d523b3637              # double 0.005836
	.quad	0x3fe03e5fb71fbc5e              # double 0.50761400000000001
	.quad	0x3fd19e34330d7386              # double 0.275281
	.quad	0x3fc52ab68cef672c              # double 0.16536600000000001
	.quad	0x3fe8d4c33b539325              # double 0.775972
	.quad	0x3fed0986fcdee350              # double 0.90741300000000003
	.quad	0x3fe9f54d1e96c3fc              # double 0.81119399999999997
	.quad	0x3fbaf3b213e3e293              # double 0.105281
	.quad	0x3fda7b395c422036              # double 0.413771
	.quad	0x3fe586dd69d30271              # double 0.67271300000000001
	.quad	0x3fe50f5c28f5c28f              # double 0.65812499999999996
	.quad	0x3fd25cfede97d06c              # double 0.28692600000000001
	.quad	0x3fee32a27f1b6912              # double 0.94368099999999999
	.quad	0x3fdd7bfe7e1fc090              # double 0.46069300000000002
	.quad	0x3fcd7ec3547e0696              # double 0.230431
	.quad	0x3fcf800a7c5ac472              # double 0.24609500000000001
	.quad	0x3feeb6933a0407cc              # double 0.95978699999999994
	.quad	0x3fa7b24638c97529              # double 0.046281999999999997
	.quad	0x3fd78d8a979e16d7              # double 0.36801400000000001
	.quad	0x3fcc364388ebcc6c              # double 0.22040599999999999
	.quad	0x3fee9563a9f383f1              # double 0.95573600000000003
	.quad	0x3fe17c4e2f37fbf0              # double 0.54642400000000002
	.quad	0x3fd0ce2d1f1cfbb9              # double 0.26258399999999998
	.quad	0x3fedb2d905c03361              # double 0.92808199999999996
	.quad	0x3fc24db9c7368ad7              # double 0.14299700000000001
	.quad	0x3fc5b5d894812be5              # double 0.16961200000000001
	.quad	0x3feaeb3354c12275              # double 0.84121100000000004
	.quad	0x3fec6136e71cda2b              # double 0.88686699999999996
	.quad	0x3fd773affb04ee7c              # double 0.36643599999999998
	.quad	0x3fcc06af46aa087d              # double 0.21895400000000001
	.quad	0x3fdd0a0f4d7add16              # double 0.453739
	.quad	0x3fdfe6f2e8c0485a              # double 0.498471
	.quad	0x3fe1c53b0813cab8              # double 0.55532599999999999
	.quad	0x3fd19cbab649d389              # double 0.27519100000000002
	.quad	0x3fdf6b69db65ecc4              # double 0.49093100000000001
	.quad	0x3fbb54b05b7cfe58              # double 0.10676099999999999
	.quad	0x3fda892684cf073a              # double 0.41462100000000002
	.quad	0x3fc2f47b677f6b1a              # double 0.148086
	.quad	0x3fe3eb8b69552e30              # double 0.62250300000000003
	.quad	0x3fb625529fe004b8              # double 0.086507000000000001
	.quad	0x3fb87746887a8d65              # double 0.095570000000000002
	.quad	0x3fd0c3eb7cbb3c82              # double 0.26195800000000002
	.quad	0x3fe742d05f288484              # double 0.72690600000000005
	.quad	0x3fdc75fb2edfe75c              # double 0.44470100000000001
	.quad	0x3fe3854477ff151e              # double 0.61001799999999995
	.quad	0x3fedf40e5a35d67c              # double 0.93604200000000004
	.quad	0x3fd4c02afdda8bd2              # double 0.32422899999999999
	.quad	0x3fe6a30984e3ffef              # double 0.70740199999999998
	.quad	0x3fe328d434a01abd              # double 0.59873399999999999
	.quad	0x3fe6f83be6601bca              # double 0.71780200000000005
	.quad	0x3fd18a71de69ad43              # double 0.27407500000000001
	.quad	0x3fea3d1676640a6c              # double 0.81995700000000004
	.quad	0x3fef37eb28d8665e              # double 0.975576
	.quad	0x3fd5de093532e7b4              # double 0.34167700000000001
	.quad	0x3fe4056c508b32cf              # double 0.62566200000000005
	.quad	0x3fd0e5604189374c              # double 0.26400000000000001
	.quad	0x3fe2d10f51ac9afe              # double 0.58801999999999999
	.quad	0x3f8e3d1cc100e6b0              # double 0.014765
	.quad	0x3fc025c810a569b1              # double 0.12615299999999999
	.quad	0x3fdf370cdc8754f3              # double 0.48773499999999997
	.quad	0x3fc484d76ab58080              # double 0.160304
	.quad	0x3fbc77ab324851a8              # double 0.11120099999999999
	.quad	0x3fefef9fcb0c026d              # double 0.99800100000000002
	.quad	0x3feb73cd573647bb              # double 0.85788600000000004
	.quad	0x3fd4f71eafee6fb5              # double 0.32758300000000001
	.quad	0x3fe5e51f3e89a88b              # double 0.68421900000000002
	.quad	0x3fd5358f2e05ccc9              # double 0.33139400000000002
	.quad	0x3fcbb5bf6a0dbad4              # double 0.21648400000000001
	.quad	0x3fe8058793dd97f6              # double 0.75067499999999998
	.quad	0x3fe953198288051d              # double 0.79139400000000004
	.quad	0x3fdeb7995ee136e7              # double 0.47995599999999999
	.quad	0x3fe407aaef2c7326              # double 0.62593600000000005
	.quad	0x3fe5fc19c17225b7              # double 0.68702399999999997
	.quad	0x3fd9e92923e5b856              # double 0.40485599999999999
	.quad	0x3fe44f440af1cb8a              # double 0.63467600000000002
	.quad	0x3fd12cd39da16617              # double 0.26836100000000002
	.quad	0x3fcbb3e9a6f826ee              # double 0.21642800000000001
	.quad	0x3fd0826aa8eb4635              # double 0.25796000000000002
	.quad	0x3fe50d759ee88df3              # double 0.65789299999999995
	.quad	0x3fe6b5dedf1e0829              # double 0.70970100000000003
	.quad	0x3fedf03f2d3c792d              # double 0.93557699999999999
	.quad	0x3fe19ff2e48e8a72              # double 0.55077500000000001
	.quad	0x3fead57ff9b56324              # double 0.83856200000000002
	.quad	0x3fe39270b06c43f6              # double 0.611626
	.quad	0x3fcb1f36262cba73              # double 0.21189
	.quad	0x3fe9eed245b291b8              # double 0.81040299999999998
	.quad	0x3fe5436da87a072d              # double 0.66448099999999999
	.quad	0x3fd3c4d22c881e47              # double 0.308888
	.quad	0x3fcddf43c7d5ed07              # double 0.233376
	.quad	0x3fce696a26e54717              # double 0.237592
	.quad	0x3fe9074213a0c6b5              # double 0.78213600000000005
	.quad	0x3fd72d98bf7f0670              # double 0.36215799999999998
	.quad	0x3fb7c3504c48adef              # double 0.092824000000000004
	.quad	0x3fd50e66cb10342b              # double 0.32900400000000002
	.quad	0x3febddd8f92af9a9              # double 0.87083100000000002
	.quad	0x3fde8dd1e53a81dc              # double 0.477406
	.quad	0x3fb43c3a42f1ed18              # double 0.079044000000000003
	.quad	0x3fe16154434e336a              # double 0.54313100000000003
	.quad	0x3fd30578e5c4eb57              # double 0.297209
	.quad	0x3f58f3eccc469510              # double 0.001523
	.quad	0x3fb218ce2d1f1cfc              # double 0.070691000000000004
	.quad	0x3fe7fdda8bd230ba              # double 0.74973800000000002
	.quad	0x3f99d0e991ff7165              # double 0.025211000000000001
	.quad	0x3fd8072085b18549              # double 0.37543500000000002
	.quad	0x3fe3076c050bd87b              # double 0.59465599999999996
	.quad	0x3fe24d4ed2cbea4f              # double 0.57193700000000003
	.quad	0x3fe481abd1aa821f              # double 0.64082899999999998
	.quad	0x3fd8f548ecd8dbcf              # double 0.38997100000000001
	.quad	0x3febbaa9b499d020              # double 0.86653599999999997
	.quad	0x3fe97c504816f007              # double 0.79642500000000005
	.quad	0x3fe30cd855970b4a              # double 0.59531800000000001
	.quad	0x3fbb965b20b8066c              # double 0.107763
	.quad	0x3fce93d96638433d              # double 0.23888699999999999
	.quad	0x3feaf264a16a4873              # double 0.84208899999999998
	.quad	0x3f8c7bcc2938de6e              # double 0.013908
	.quad	0x3fce41700cd85597              # double 0.236372
	.quad	0x3fe49d1f601797cc              # double 0.64417999999999997
	.quad	0x3fbbd25247cb70ac              # double 0.108678
	.quad	0x3febf88765ba6efc              # double 0.87408799999999997
	.quad	0x3fb97bfa4c61d862              # double 0.099547999999999997
	.quad	0x3fe3c01c4fc1df33              # double 0.617201
	.quad	0x3fe4723033a4723b              # double 0.63893900000000003
	.quad	0x3f9063e07a28bb0a              # double 0.016005999999999999
	.quad	0x3fd352e2fbe33acd              # double 0.30193399999999998
	.quad	0x3fe20fb224aada34              # double 0.56441600000000003
	.quad	0x3fc9ba5e353f7cee              # double 0.20100000000000001
	.quad	0x3f761d4306e5cd4f              # double 0.0053990000000000002
	.quad	0x3fea7aa25d8d79d1              # double 0.82747000000000004
	.quad	0x3fec44241c3efae8              # double 0.88331800000000005
	.quad	0x3fcf38476f2a5a47              # double 0.24390500000000001
	.quad	0x3feaa6fe718a86d7              # double 0.83288499999999999
	.quad	0x3fd91de69ad42c3d              # double 0.39245000000000002
	.quad	0x3fe45831f03d145e              # double 0.63576600000000005
	.quad	0x3fe57c9363f572de              # double 0.67145699999999997
	.quad	0x3fd2766c6de76428              # double 0.28847800000000001
	.quad	0x3fd96c8711d798d9              # double 0.39724900000000002
	.quad	0x3fe805dd8f92af9b              # double 0.75071600000000005
	.quad	0x3f936c9c0a8d21bc              # double 0.018969
	.quad	0x3fd8d6ba8c586877              # double 0.38810600000000001
	.quad	0x3fcbed84d338f798              # double 0.21818599999999999
	.quad	0x3fdb639d5e4a3832              # double 0.42795499999999997
	.quad	0x3fd54b9cb6848beb              # double 0.33273999999999998
	.quad	0x3fd5d7d3910c2c5e              # double 0.34129799999999999
	.quad	0x3fdf392189bd8384              # double 0.48786200000000002
	.quad	0x3fe394ea077036ca              # double 0.61192800000000003
	.quad	0x3fe76f36ef8055fc              # double 0.73232600000000003
	.quad	0x3fe563e8dda48b65              # double 0.66844599999999998
	.quad	0x3fee261e0c5a8156              # double 0.94215300000000002
	.quad	0x3fc4e1d6494d50ec              # double 0.16314200000000001
	.quad	0x3fc4efdc9c4da900              # double 0.16356999999999999
	.quad	0x3fd2a1986b9c304d              # double 0.29111300000000001
	.quad	0x3fecc81b21c475e6              # double 0.89942699999999998
	.quad	0x3fdcb6523704790c              # double 0.44862800000000003
	.quad	0x3fc249ecb31c219f              # double 0.14288100000000001
	.quad	0x3fe0660807357e67              # double 0.51245499999999999
	.quad	0x3fee4b6848beb5b3              # double 0.94670500000000002
	.quad	0x3fe48dd1e53a81dc              # double 0.64231199999999999
	.quad	0x3fe4146801711948              # double 0.62749100000000002
	.quad	0x3f7b6805a2d72ffd              # double 0.0066909999999999999
	.quad	0x3fd47521144cbe1f              # double 0.31964900000000002
	.quad	0x3fc2e4649906cca3              # double 0.147595
	.quad	0x3f87a786c226809d              # double 0.01155
	.quad	0x3fed5935fc3b4f61              # double 0.91713999999999996
	.quad	0x3fe9d93c46d82ba6              # double 0.80776800000000004
	.quad	0x3fdb54da4ce8101f              # double 0.42705399999999999
	.quad	0x3fdb5885d31337eb              # double 0.42727799999999999
	.quad	0x3faac94b380cb6c8              # double 0.052317000000000002
	.quad	0x3fef74f2f123c42a              # double 0.98302599999999996
	.quad	0x3fb640420f6f08cc              # double 0.086917999999999995
	.quad	0x3fb089a027525461              # double 0.064600000000000005
	.quad	0x3fe3fd9fd36f7e3d              # double 0.62470999999999999
	.quad	0x3fb357c4e2f37fbf              # double 0.075558
	.quad	0x3fe6ca8e2e2b8c76              # double 0.71222600000000003
	.quad	0x3fe8ce5710880d80              # double 0.77518799999999999
	.quad	0x3fe9515ad106ee31              # double 0.79118100000000002
	.quad	0x3fe22dd9c27e9531              # double 0.56809699999999996
	.quad	0x3feefb28954a7f80              # double 0.96815899999999999
	.quad	0x3fe37d5454152b0a              # double 0.60904899999999995
	.quad	0x3fea54d61b2a27f2              # double 0.82285600000000003
	.quad	0x3fe49e90795f676f              # double 0.64435600000000004
	.quad	0x3fe595f676ea4229              # double 0.67455600000000004
	.quad	0x3fcf121ab4b72c52              # double 0.24274000000000001
	.quad	0x3feef7f27fe4bcae              # double 0.96776700000000004
	.quad	0x3fe8afd75e2046c7              # double 0.77146499999999996
	.quad	0x3fd3bcbe61cffeb0              # double 0.30839499999999997
	.quad	0x3fdf75afaf859429              # double 0.49155799999999999
	.quad	0x3fec8bac710cb296              # double 0.89205000000000001
	.quad	0x3fe47fdc5931ca7d              # double 0.64060799999999996
	.quad	0x3fb2eefa1e3eaf68              # double 0.073958999999999997
	.quad	0x3fec2d1d041cc533              # double 0.88050700000000004
	.quad	0x3fbe77f6b1a2a4db              # double 0.119018
	.quad	0x3fe95dcc63f14120              # double 0.79269999999999996
	.quad	0x3fe023f67f4dbdf9              # double 0.50439000000000001
	.quad	0x3fe8b9799e518f3f              # double 0.77264100000000002
	.quad	0x3fd4f92f2b66b617              # double 0.32770899999999997
	.quad	0x3fe3b571d1d4738a              # double 0.61589899999999997
	.quad	0x3fb24d5d80e496ee              # double 0.071493000000000001
	.quad	0x3fee8539fba450ad              # double 0.95376300000000003
	.quad	0x3fe4a5a89b951c5c              # double 0.64522199999999996
	.quad	0x3fe4f1b25f633ce6              # double 0.65450399999999997
	.quad	0x3fe6cfe79ee02a78              # double 0.71287900000000004
	.quad	0x3fce6f9b994e1a3f              # double 0.23778099999999999
	.quad	0x3fe9580e496ededb              # double 0.79199900000000001
	.quad	0x3fe882d59d55e6bc              # double 0.76597099999999995
	.quad	0x3fdfe56473471f79              # double 0.49837599999999999
	.quad	0x3feb595bbbe878fb              # double 0.85465800000000003
	.quad	0x3fb3d8be7296f651              # double 0.077525999999999998
	.quad	0x3fe89361dc93ea2d              # double 0.76799099999999998
	.quad	0x3fe0f68dfbd6a594              # double 0.53009700000000004
	.quad	0x3fe689b738e6d15b              # double 0.70431100000000002
	.quad	0x3fef94141e9af5ba              # double 0.98682599999999998
	.quad	0x3fe00ff10ecb74de              # double 0.501946
	.quad	0x3fd225785f8d2e51              # double 0.28353699999999998
	.quad	0x3fe1173b85e80bed              # double 0.53408599999999995
	.quad	0x3fd68e68e3ef2841              # double 0.35244199999999998
	.quad	0x3fda9e44fa05143c              # double 0.41591
	.quad	0x3fe44dc65c70435f              # double 0.634494
	.quad	0x3fe389635610adcd              # double 0.61052099999999998
	.quad	0x3fe408a04d12018a              # double 0.62605299999999997
	.quad	0x3fee5dcc63f14120              # double 0.94894999999999996
	.quad	0x3fe456909aed56b0              # double 0.63556699999999999
	.quad	0x3fb186ec17ebaf10              # double 0.068464999999999998
	.quad	0x3fd70c5eb313be23              # double 0.36013000000000001
	.quad	0x3feab673c4f3ba77              # double 0.83477199999999996
	.quad	0x3fce6ae3a3a8e714              # double 0.23763699999999999
	.quad	0x3f731876188b1141              # double 0.0046620000000000003
	.quad	0x3fdf6b65a9a80496              # double 0.49092999999999998
	.quad	0x3fdfb65ecc3e3194              # double 0.495506
	.quad	0x3feb5249e44fa051              # double 0.85379499999999997
	.quad	0x3feac712e40852b5              # double 0.83680100000000002
	.quad	0x3fd6cec41dd1a21f              # double 0.35637000000000002
	.quad	0x3fe8bfab10ba6267              # double 0.773397
	.quad	0x3fe09fa11a975afb              # double 0.519486
	.quad	0x3fe599ef954eb13e              # double 0.675041
	.quad	0x3fe5bddb9841aac5              # double 0.67942599999999997
	.quad	0x3fc4352eb5f5f0b3              # double 0.15787300000000001
	.quad	0x3fe76154434e336a              # double 0.73063100000000003
	.quad	0x3fe297507e9d94d1              # double 0.58097100000000002
	.quad	0x3fe30895d0b73d19              # double 0.59479800000000005
	.quad	0x3fd2c12f09d8c6d6              # double 0.293041
	.quad	0x3fd0cabc5154866a              # double 0.262374
	.quad	0x3fe4feeb2d0a2446              # double 0.65611799999999998
	.quad	0x3fadedaec4a4095f              # double 0.058453999999999999
	.quad	0x3fe4831055b89939              # double 0.64099899999999999
	.quad	0x3fe631960fa15db3              # double 0.69355299999999998
	.quad	0x3fde2ee41919ac79              # double 0.47161199999999998
	.quad	0x3feab2f87ad080b6              # double 0.83434699999999995
	.quad	0x3fe252ef911cf356              # double 0.57262400000000002
	.quad	0x3fe33c558644523f              # double 0.60111499999999995
	.quad	0x3fdfbd44998d0460              # double 0.49592700000000001
	.quad	0x3fedc95bff04577e              # double 0.93083000000000005
	.quad	0x3fee43aeab7995ee              # double 0.94576199999999999
	.quad	0x3fe5b19a415f45e1              # double 0.67793000000000003
	.quad	0x3fe25ef8487b99d4              # double 0.57409299999999996
	.quad	0x3fc973a797891e21              # double 0.19884199999999999
	.quad	0x3fea1bed30f062d4              # double 0.81590899999999999
	.quad	0x3fcd6bca5375c8da              # double 0.229852
	.quad	0x3fee6892253111f1              # double 0.95026500000000003
	.quad	0x3fe6d00713f077cd              # double 0.71289400000000003
	.quad	0x3fec86af46aa087d              # double 0.89144100000000004
	.quad	0x3fdb25f202107b78              # double 0.42419099999999998
	.quad	0x3feab10129cbab65              # double 0.83410700000000004
	.quad	0x3fc41eabbcb1cc96              # double 0.15718599999999999
	.quad	0x3fe428b2a6b0d951              # double 0.62996799999999997
	.quad	0x3fb9dce7cd035372              # double 0.10102700000000001
	.quad	0x3fd55946c332f017              # double 0.33357399999999998
	.quad	0x3feb1ad2135daad6              # double 0.847024
	.quad	0x3fca61e92923e5b8              # double 0.20611299999999999
	.quad	0x3fe9982ecaeea63b              # double 0.79982699999999995
	.quad	0x3fd3253543aeab7a              # double 0.29914600000000002
	.quad	0x3fea9042d8c2a455              # double 0.83011000000000001
	.quad	0x3fe434b945308bb9              # double 0.631436
	.quad	0x3fbfd4cfd08d4bad              # double 0.12434099999999999
	.quad	0x3fbe4febd09e12a5              # double 0.118407
	.quad	0x3f577a7008a697af              # double 0.001433
	.quad	0x3f89d1b2e59af9ec              # double 0.012607
	.quad	0x3f9c23fab10ba626              # double 0.027480999999999998
	.quad	0x3fecc371da37ef5b              # double 0.89885800000000005
	.quad	0x3fec609fe86833c6              # double 0.886795
	.quad	0x3fd2fd50225742dd              # double 0.296711
	.quad	0x3fed887ebf22c01e              # double 0.92291199999999995
	.quad	0x3fe5d790752da986              # double 0.68256399999999995
	.quad	0x3feab899392189be              # double 0.83503400000000005
	.quad	0x3fada1a93293d103              # double 0.057874000000000002
	.quad	0x3fc3d50a88effe2a              # double 0.15493899999999999
	.quad	0x3fc3040bfe3b03e2              # double 0.148561
	.quad	0x3fd612dfd694ccab              # double 0.34490199999999999
	.quad	0x3fe3a1815a07b353              # double 0.61346500000000004
	.quad	0x3fee23f034b0e1b5              # double 0.94188700000000003
	.quad	0x3fe25851654d61b3              # double 0.57328100000000004
	.quad	0x3fd6929aa1d755bd              # double 0.35269800000000001
	.quad	0x3fd19e12a51e321a              # double 0.27527299999999999
	.quad	0x3feb39991361dc94              # double 0.850781
	.quad	0x3fc1f7be121ee675              # double 0.140373
	.quad	0x3fd309289dadfb50              # double 0.29743399999999998
	.quad	0x3fed34289118c198              # double 0.91261700000000001
	.quad	0x3fe91bc98a222d51              # double 0.78464199999999995
	.quad	0x3fe7cf0b6b6e0d24              # double 0.74402400000000002
	.quad	0x3fb823b7952d234f              # double 0.094295000000000004
	.quad	0x3fe0fb07075b3e14              # double 0.53064299999999998
	.quad	0x3fedfd00713f077d              # double 0.93713400000000002
	.quad	0x3fda8ef77f27fe4c              # double 0.41497600000000001
	.quad	0x3feb67ddca4b124d              # double 0.856429
	.quad	0x3fe05c65c70435f0              # double 0.51127900000000004
	.quad	0x3fd9da09cc319c5a              # double 0.40393299999999999
	.quad	0x3fcefb762d83c6c9              # double 0.24204899999999999
	.quad	0x3fd7afaf85942917              # double 0.37009799999999998
	.quad	0x3fd4bd556084a516              # double 0.32405600000000001
	.quad	0x3fd76fa82e87d2c8              # double 0.36619000000000002
	.quad	0x3fcb7585be1a8262              # double 0.21452399999999999
	.quad	0x3fe9131ca7d6733f              # double 0.78358300000000003
	.quad	0x3f92003ab862b27d              # double 0.017579000000000001
	.quad	0x3fdbc679cc74b839              # double 0.43398900000000001
	.quad	0x3feb5a48b6523704              # double 0.85477099999999994
	.quad	0x3fecbb7d84901d19              # double 0.89788699999999999
	.quad	0x3fa06a6e32e3821b              # double 0.032062
	.quad	0x3fdbc6c97d8cf399              # double 0.434008
	.quad	0x3fe5f503b81b64e0              # double 0.68615899999999996
	.quad	0x3fca27c7c5260f5e              # double 0.20433899999999999
	.quad	0x3fd9ddfc9ff92f2b              # double 0.40417399999999998
	.quad	0x3fc060cbf2b239a4              # double 0.12795400000000001
	.quad	0x3fdeb6390c9107fb              # double 0.47987200000000002
	.quad	0x3feb70cfe154434e              # double 0.85752099999999998
	.quad	0x3fd207f23cc8de2b              # double 0.28173500000000001
	.quad	0x3fefa8027d88c1db              # double 0.98925899999999999
	.quad	0x3fe2c1d8e8640208              # double 0.58616299999999999
	.quad	0x3fd89cae21101b00              # double 0.38456299999999999
	.quad	0x3fcfd0a67620ee8d              # double 0.248555
	.quad	0x3fdb409e55c0fcb5              # double 0.425819
	.quad	0x3fdc92a737110e45              # double 0.44645099999999999
	.quad	0x3fea50dae3e6c4c6              # double 0.82237000000000005
	.quad	0x3fe4f05c896dd26b              # double 0.65434099999999995
	.quad	0x3fe9c6bce8533b10              # double 0.80550999999999995
	.quad	0x3fe2a3fee2c98e54              # double 0.58251900000000001
	.quad	0x3fecf31098d477bc              # double 0.904671
	.quad	0x3fea09528f190d17              # double 0.81363799999999997
	.quad	0x3fe3d94d0dcfcc5c              # double 0.62027600000000005
	.quad	0x3fd723a6ce358299              # double 0.36155100000000001
	.quad	0x3fc1ddb1209edbf9              # double 0.13957800000000001
	.quad	0x3f9823422467be55              # double 0.023571999999999999
	.quad	0x3fe9054ef459d990              # double 0.78189799999999998
	.quad	0x3fe05a31a4bdba0a              # double 0.51100999999999996
	.quad	0x3fdcf505d0fa58f7              # double 0.452455
	.quad	0x3fb2e297396d0918              # double 0.073770000000000002
	.quad	0x3fe588461f9f01b8              # double 0.67288499999999996
	.quad	0x3fd84a59c065b63d              # double 0.37953799999999999
	.quad	0x3fe465a14488c60d              # double 0.63740600000000003
	.quad	0x3fee6b5b2d4d4025              # double 0.95060500000000003
	.quad	0x3fedee4e26d4801f              # double 0.93533999999999995
	.quad	0x3fe21deacc92146a              # double 0.56615199999999999
	.quad	0x3feffca42aed1394              # double 0.99958999999999997
	.quad	0x3fd744a1f080303c              # double 0.363564
	.quad	0x3feebe22e5de15ca              # double 0.96070999999999995
	.quad	0x3fe4fe60c38f3669              # double 0.65605199999999997
	.quad	0x3fef1b71758e2196              # double 0.97209999999999996
	.quad	0x3fc854477ff151e7              # double 0.19007199999999999
	.quad	0x3fc8195cc857f306              # double 0.188274
	.quad	0x3fe1de1198aeb80f              # double 0.55835800000000002
	.quad	0x3fec4f67b1c0010c              # double 0.88469299999999995
	.quad	0x3fdc5a2d72ffd1dd              # double 0.44300400000000001
	.quad	0x3fefb0164840e172              # double 0.99024500000000004
	.quad	0x3fceaefb2aae2974              # double 0.23971500000000001
	.quad	0x3fb26351deefe500              # double 0.071828000000000003
	.quad	0x3fe077d955714b9d              # double 0.51463000000000003
	.quad	0x3fa3d2d87f88765c              # double 0.038718000000000002
	.quad	0x3fed5a2f8bdec5f4              # double 0.91725900000000004
	.quad	0x3fe862f37fbefd00              # double 0.76207899999999995
	.quad	0x3fc5131ec0b56755              # double 0.16464599999999999
	.quad	0x3fd7c7e6b3fe9fae              # double 0.37157600000000002
	.quad	0x3fe53d05af6c69b6              # double 0.66369900000000004
	.quad	0x3fe89f03d145d851              # double 0.76941099999999996
	.quad	0x3f7f45e0b4e11dbd              # double 0.0076350000000000003
	.quad	0x3fe780a5accd5305              # double 0.73445400000000005
	.quad	0x3fe1599aa60913a5              # double 0.542188
	.quad	0x3f9cbccf28c79f66              # double 0.028063999999999999
	.quad	0x3fa7cd035371971c              # double 0.046486
	.quad	0x3fca1e2584f4c6e7              # double 0.204045
	.quad	0x3fda2deca25529fe              # double 0.409053
	.quad	0x3fd9f123c42a66dc              # double 0.40534300000000001
	.quad	0x3f9b1e5c0b999136              # double 0.026483
	.quad	0x3fe5b8023a6ce358              # double 0.67871199999999998
	.quad	0x3fec25093964a59c              # double 0.87952099999999999
	.quad	0x3fdb4f3ba775fb2f              # double 0.42671100000000001
	.quad	0x3fdbda37ef5a964f              # double 0.43519400000000003
	.quad	0x3fe8ec508b32ce89              # double 0.77884699999999996
	.quad	0x3f930ced4e4c942d              # double 0.018603999999999999
	.quad	0x3feae642bf9830e4              # double 0.84060800000000002
	.quad	0x3fd819ef954eb13e              # double 0.376583
	.quad	0x3fee625204af9229              # double 0.94950199999999996
	.quad	0x3fe6fa5f41aef6f9              # double 0.71806300000000001
	.quad	0x3fe2c12ad81adea9              # double 0.58608000000000005
	.quad	0x3fbf13dfb0d51f82              # double 0.121397
	.quad	0x3fc4ca686e7e62dc              # double 0.16242699999999999
	.quad	0x3fcfae2541d8e864              # double 0.247502
	.quad	0x3fe742fe82517e78              # double 0.72692800000000002
	.quad	0x3fba4766c6de7642              # double 0.10265199999999999
	.quad	0x3fee1f644955b467              # double 0.94133199999999995
	.quad	0x3fd6f0e0a84be404              # double 0.35845199999999999
	.quad	0x3fd34d12018a43bb              # double 0.30157899999999999
	.quad	0x3fcd2dc2b0ea1837              # double 0.22795899999999999
	.quad	0x3fb0100e6afcce1c              # double 0.062744999999999995
	.quad	0x3fe067d77fae3609              # double 0.51267600000000002
	.quad	0x3fe4844ae85b9e8c              # double 0.64114899999999997
	.quad	0x3febb417ca2120e2              # double 0.865734
	.quad	0x3fe1fdef8487b99d              # double 0.56224799999999997
	.quad	0x3fee634549b62c77              # double 0.94961799999999996
	.quad	0x3fed872b020c49ba              # double 0.92274999999999996
	.quad	0x3fe5c38d1d8a5482              # double 0.68012099999999998
	.quad	0x3fdca7a85015c209              # double 0.44773299999999999
	.quad	0x3fe6c5974e65bea1              # double 0.71162000000000003
	.quad	0x3feaec2acb85a4f0              # double 0.84132899999999999
	.quad	0x3fe1dcd2d44dca8e              # double 0.55820599999999998
	.quad	0x3feb1a1986b9c305              # double 0.84693600000000002
	.quad	0x3fe2fc5ac471b478              # double 0.59330499999999997
	.quad	0x3fe4895d0b73d189              # double 0.64176800000000001
	.quad	0x3feebfc6540cc78f              # double 0.96091000000000004
	.quad	0x3fef1cbab649d389              # double 0.97225700000000003
	.quad	0x3fd5ed41b75a74c1              # double 0.34260600000000002
	.quad	0x3fde9c51dabe2718              # double 0.47829100000000002
	.quad	0x3fd79ec7000431be              # double 0.36906600000000001
	.quad	0x3fe4035371971c11              # double 0.62540600000000002
	.quad	0x3fc866234a87e38f              # double 0.19061700000000001
	.quad	0x3fe02a5614df8b15              # double 0.50516799999999995
	.quad	0x3fc72df505d0fa59              # double 0.18109
	.quad	0x3feb88f42fe82518              # double 0.86046800000000001
	.quad	0x3fe38e219652bd3c              # double 0.61109999999999998
	.quad	0x3fe8072085b18549              # double 0.75087000000000004
	.quad	0x3fe5b91d57ff9b56              # double 0.67884699999999998
	.quad	0x3fe61309c7ffde72              # double 0.68982399999999999
	.quad	0x3fea72dc2b0ea183              # double 0.82652099999999995
	.quad	0x3fcfcc74b838c112              # double 0.24842700000000001
	.quad	0x3fe5c610f0e90bc8              # double 0.68042800000000003
	.quad	0x3fa3f65dbfceb789              # double 0.038989000000000003
	.quad	0x3fd4cb966be7afa7              # double 0.32492599999999999
	.quad	0x3fe8650c5eb313be              # double 0.76233499999999998
	.quad	0x3fe5a5bfad299956              # double 0.67648299999999995
	.quad	0x3fec9815a07b352b              # double 0.89356500000000005
	.quad	0x3fe2e694898f605b              # double 0.59064700000000003
	.quad	0x3fbf4ba51a005c46              # double 0.122248
	.quad	0x3feac197e5647347              # double 0.83613199999999999
	.quad	0x3fb223af31b152f4              # double 0.070857000000000003
	.quad	0x3fd4d1d041cc532a              # double 0.32530599999999998
	.quad	0x3fda44a6223e186a              # double 0.41044000000000003
	.quad	0x3fee19aa60913a50              # double 0.94063300000000005
	.quad	0x3fb118a009f62307              # double 0.066781999999999994
	.quad	0x3fe54200c0f01fb8              # double 0.66430699999999998
	.quad	0x3febdb76b3bb83cf              # double 0.87053999999999998
	.quad	0x3fc022b3892ee84b              # double 0.126059
	.quad	0x3fc04af0bf1a5ca3              # double 0.12728700000000001
	.quad	0x3fc5a97e132b55ef              # double 0.169235
	.quad	0x3feb2541d8e86402              # double 0.848298
	.quad	0x3fd02656abde3fbc              # double 0.25234000000000001
	.quad	0x3fe94e160d887ebf              # double 0.79078199999999998
	.quad	0x3fdaea077036c9c1              # double 0.42053400000000002
	.quad	0x3fe7947064ece9a3              # double 0.73687000000000002
	.quad	0x3f85a31a4bdba0a5              # double 0.010565
	.quad	0x3fe6a27ae9ab29e5              # double 0.70733400000000002
	.quad	0x3fc2a16a48733659              # double 0.14555100000000001
	.quad	0x3fe52ccd530489d2              # double 0.66171899999999995
	.quad	0x3fc338ac18f81e8a              # double 0.15016699999999999
	.quad	0x3fc3d8409e55c0fd              # double 0.15503700000000001
	.quad	0x3fe978ceb356da01              # double 0.79599699999999995
	.quad	0x3fd0c26dce39b457              # double 0.26186700000000002
	.quad	0x3fea44f3ba775fb3              # double 0.82091700000000001
	.quad	0x3fd6ead9274e22a3              # double 0.35808400000000001
	.quad	0x3fe9cd37c1376d55              # double 0.80630100000000005
	.quad	0x3fed07af20ea5b53              # double 0.90718799999999999
	.quad	0x3fd25536933a0408              # double 0.28645100000000001
	.quad	0x3fdae657b84db9c7              # double 0.42030899999999999
	.quad	0x3fd1333333333333              # double 0.26874999999999999
	.quad	0x3fe779378ee28672              # double 0.73354699999999995
	.quad	0x3fb6b65a9a804966              # double 0.088719999999999993
	.quad	0x3fd03ae2541d8e86              # double 0.25359399999999999
	.quad	0x3fee233bd9cae211              # double 0.941801
	.quad	0x3fb7f3061c79b34a              # double 0.093551999999999996
	.quad	0x3fe47c6fbd273d5c              # double 0.64019000000000004
	.quad	0x3fe57a26a22b3893              # double 0.67116100000000001
	.quad	0x3fb2eed8904f6dfc              # double 0.073956999999999995
	.quad	0x3fe9180b242070b9              # double 0.78418500000000002
	.quad	0x3fd17f950b955f78              # double 0.27341199999999999
	.quad	0x3fe14cfd08d4bad8              # double 0.54064800000000002
	.quad	0x3fc8a0cae642bf98              # double 0.19240699999999999
	.quad	0x3fde34ce3de6149c              # double 0.47197299999999998
	.quad	0x3faa161e4f765fd9              # double 0.050950000000000002
	.quad	0x3fed3213e3e29308              # double 0.91236300000000004
	.quad	0x3fea2ad3e920c06a              # double 0.81772800000000001
	.quad	0x3fdd503fb3743633              # double 0.45802300000000001
	.quad	0x3fef0b6b6e0d23d5              # double 0.970144
	.quad	0x3fc4aa3ad18d25ee              # double 0.16144500000000001
	.quad	0x3fef544dca8e2e2c              # double 0.97904100000000005
	.quad	0x3fded9dfdac68a93              # double 0.48204799999999998
	.quad	0x3fd43226c3b927d4              # double 0.31556099999999998
	.quad	0x3fe27a743a647fdc              # double 0.57744799999999996
	.quad	0x3fd9530489d27c39              # double 0.39569199999999999
	.quad	0x3fc236b09635610b              # double 0.142294
	.quad	0x3fe5e2413db7f173              # double 0.68386899999999995
	.quad	0x3fe2e872b020c49c              # double 0.59087500000000004
	.quad	0x3fd93022dd7a99fa              # double 0.393563
	.quad	0x3fe94430b178b370              # double 0.789574
	.quad	0x3fd8b463497b7415              # double 0.38601000000000002
	.quad	0x3fe51b34a44c7b03              # double 0.65957100000000002
	.quad	0x3fe7f0de8f6cefed              # double 0.74815299999999996
	.quad	0x3fb223f24d8fd5cb              # double 0.070860999999999993
	.quad	0x3fed9709310129cc              # double 0.92468700000000003
	.quad	0x3fc54141e9af5ba3              # double 0.16605400000000001
	.quad	0x3fa1dcb5781c7150              # double 0.034887000000000001
	.quad	0x3fb2513b5bf6a0dc              # double 0.071552000000000004
	.quad	0x3fe3dbab21815a08              # double 0.62056500000000003
	.quad	0x3fedbc77143393ab              # double 0.92925599999999997
	.quad	0x3fec7601797cc3a0              # double 0.889405
	.quad	0x3fa099e0e736049f              # double 0.032424000000000001
	.quad	0x3fc48ea39c51dabe              # double 0.160603
	.quad	0x3fd0b5cbff47735c              # double 0.26109599999999999
	.quad	0x3fedb69b9d7fd827              # double 0.92854099999999995
	.quad	0x3fec7405f6ba0621              # double 0.88916300000000004
	.quad	0x3fc8a48f96e15875              # double 0.192522
	.quad	0x3fea9b2a27f1b691              # double 0.83144099999999999
	.quad	0x3fdaa21a719b4dcf              # double 0.41614400000000001
	.quad	0x3fb72c83ec892ab7              # double 0.090523000000000006
	.quad	0x3fc849906cca2db6              # double 0.189745
	.quad	0x3fa46822ff08893b              # double 0.039856999999999997
	.quad	0x3feea480e8c8abd6              # double 0.95758100000000002
	.quad	0x3fcccf7caa7589f0              # double 0.225082
	.quad	0x3fd6bf01322f2735              # double 0.355408
	.quad	0x3fc6b8e086bdf4c3              # double 0.17751700000000001
	.quad	0x3fb28fc0d2c386d3              # double 0.072506000000000001
	.quad	0x3fee0ca8198f1d3f              # double 0.93904500000000002
	.quad	0x3fcf824d4cb9ecf6              # double 0.24616399999999999
	.quad	0x3fe1fb3b7521144d              # double 0.56191800000000003
	.quad	0x3fe09183b60285ec              # double 0.51776299999999997
	.quad	0x3fc489c1b54195cd              # double 0.16045400000000001
	.quad	0x3fe0d7f950b955f8              # double 0.52636400000000005
	.quad	0x3fe34a3e7d135116              # double 0.60281300000000004
	.quad	0x3fe53a7fc32ebe59              # double 0.66339099999999995
	.quad	0x3fecf640639d5e4a              # double 0.90505999999999998
	.quad	0x3feafcfe58601366              # double 0.84338299999999999
	.quad	0x3fac299d883ba344              # double 0.055004999999999998
	.quad	0x3fe3749adc8fb86f              # double 0.60798399999999997
	.quad	0x3fc34ce3de6149c7              # double 0.150784
	.quad	0x3fe4dbdd76683c29              # double 0.65183899999999995
	.quad	0x3fe5115bdd76683c              # double 0.65836899999999998
	.quad	0x3fe6657b84db9c73              # double 0.69988799999999995
	.quad	0x3fc2fdf3b645a1cb              # double 0.14837500000000001
	.quad	0x3fe05fc3b4f61672              # double 0.51168999999999998
	.quad	0x3fd05c5b4aa9717e              # double 0.255637
	.quad	0x3fd218c5c9a34ca1              # double 0.28276200000000001
	.quad	0x3fbe08bfc2224edf              # double 0.11732099999999999
	.quad	0x3fe3991bc5586445              # double 0.61243999999999998
	.quad	0x3fefbbe6601bc98a              # double 0.99168699999999999
	.quad	0x3fe3281344806291              # double 0.59864200000000001
	.quad	0x3fd68d8a979e16d7              # double 0.35238900000000001
	.quad	0x3fc99b4dcebfec14              # double 0.20005200000000001
	.quad	0x3fc4babead4f5904              # double 0.16194900000000001
	.quad	0x3fede45a1cac0831              # double 0.93412499999999998
	.quad	0x3fee00e065300581              # double 0.93760699999999997
	.quad	0x3fe7dbcec84f8f8a              # double 0.74558199999999997
	.quad	0x3fa3dc486ad2dcb1              # double 0.038789999999999998
	.quad	0x3fcdfbdf090f733b              # double 0.23424900000000001
	.quad	0x3fdc10f51ac9afe2              # double 0.43853500000000001
	.quad	0x3fe16f49cf56eac8              # double 0.54483499999999996
	.quad	0x3fc4fed634549b63              # double 0.16402700000000001
	.quad	0x3fdfefcbd556084a              # double 0.49901099999999998
	.quad	0x3fe2db5b70691ea8              # double 0.58927700000000005
	.quad	0x3fe3d5dc4007570c              # double 0.61985599999999996
	.quad	0x3fef6c1e364bec68              # double 0.98194800000000004
	.quad	0x3fe2cd6a161e4f76              # double 0.58757499999999996
	.quad	0x3fa46bf01322f273              # double 0.039885999999999998
	.quad	0x3f95d91ab8e8ea3a              # double 0.021336000000000001
	.quad	0x3feadb8dc55000c9              # double 0.83930099999999996
	.quad	0x3fe46b95e5aff2a1              # double 0.63813299999999995
	.quad	0x3fe42a369fcf3dc0              # double 0.63015299999999996
	.quad	0x3fe2107d912556d2              # double 0.56451300000000004
	.quad	0x3fefe379b77c02b0              # double 0.99651800000000001
	.quad	0x3fc4342aa9f7b5af              # double 0.15784200000000001
	.quad	0x3fd8fdeb52c9d170              # double 0.39049800000000001
	.quad	0x3fec050df15a4acf              # double 0.87561699999999998
	.quad	0x3fe11ca5bd944aa5              # double 0.53474699999999997
	.quad	0x3fc3116a8b8f14db              # double 0.14896899999999999
	.quad	0x3fe6fb5aea3161a2              # double 0.71818300000000002
	.quad	0x3fe17da836eb4e98              # double 0.54658899999999999
	.quad	0x3fce29845dc83233              # double 0.23564199999999999
	.quad	0x3f870a3d70a3d70a              # double 0.01125
	.quad	0x3fef7a1a0cf1800a              # double 0.98365499999999995
	.quad	0x3fd0909f1f14983d              # double 0.25882699999999997
	.quad	0x3feffbd8be7296f6              # double 0.99949299999999996
	.quad	0x3fe756cf850df15a              # double 0.72934699999999997
	.quad	0x3fdce2c55c96030c              # double 0.45134099999999999
	.quad	0x3fd048301a79feca              # double 0.25440600000000002
	.quad	0x3fdae7210be9424e              # double 0.42035699999999998
	.quad	0x3fb0c964628027d9              # double 0.065573000000000006
	.quad	0x3fdfdd872f33ca32              # double 0.49789600000000001
	.quad	0x3febb94b7b28954a              # double 0.86636899999999994
	.quad	0x3fedabfb9bed30f0              # double 0.92724399999999996
	.quad	0x3fecb1ad2135daad              # double 0.89668899999999996
	.quad	0x3fbebb44e50c5eb3              # double 0.120045
	.quad	0x3fc708919ef954eb              # double 0.179949
	.quad	0x3f93ea704bc27632              # double 0.019449000000000001
	.quad	0x3fdc1c9f72f76e61              # double 0.439247
	.quad	0x3fd661f9f01b866e              # double 0.34972999999999999
	.quad	0x3feda4a6a875d56f              # double 0.92634899999999998
	.quad	0x3fe036ed6777079e              # double 0.50670499999999996
	.quad	0x3feb19652bd3c361              # double 0.84684999999999999
	.quad	0x3fc340357a355044              # double 0.150397
	.quad	0x3fd7d8c6d612c6ac              # double 0.37260599999999999
	.quad	0x3fdb4f5903a7546d              # double 0.42671799999999999
	.quad	0x3feb6f262888b546              # double 0.85731800000000002
	.quad	0x3fef96ca46e08f21              # double 0.98715699999999995
	.quad	0x3fd1ff822bbecaac              # double 0.28122000000000003
	.quad	0x3fbd8793dd97f62b              # double 0.11534999999999999
	.quad	0x3f9eabffcdab191e              # double 0.029953
	.quad	0x3fd07121ab4b72c5              # double 0.25690499999999999
	.quad	0x3fd4a3ca7503b81b              # double 0.32249699999999998
	.quad	0x3fef46bacf7446fa              # double 0.97738400000000003
	.quad	0x3fec3bb1f255f352              # double 0.88228700000000004
	.quad	0x3fd8dd00f776c482              # double 0.38848899999999997
	.quad	0x3fe0fd30ad46f588              # double 0.53090700000000002
	.quad	0x3f93a647fdc5931d              # double 0.019189000000000001
	.quad	0x3fe2508919ef954f              # double 0.57233100000000003
	.quad	0x3fe25c6e2a80064b              # double 0.57378300000000004
	.quad	0x3fdbeaf6837f7be1              # double 0.43621599999999999
	.quad	0x3fd473083558a761              # double 0.319521
	.quad	0x3fa690ff97247454              # double 0.044075000000000003
	.quad	0x3fe39aac53b0813d              # double 0.61263100000000004
	.quad	0x3fe267a52ac753e7              # double 0.575152
	.quad	0x3fd363f141205bc0              # double 0.30297499999999999
	.quad	0x3fe90f2170931013              # double 0.78309700000000004
	.quad	0x3fe8b2d4d4024b34              # double 0.77183000000000001
	.quad	0x3fc1ae81882adc4d              # double 0.13813800000000001
	.quad	0x3fb2231832fcac8e              # double 0.070847999999999994
	.quad	0x3fcfff36ac647779              # double 0.249976
	.quad	0x3f85c853c148344c              # double 0.010636
	.quad	0x3fc8a6d2674080fa              # double 0.19259100000000001
	.quad	0x3fe05cb35f3d7d39              # double 0.51131599999999999
	.quad	0x3fe3d9253543aeab              # double 0.62025699999999995
	.quad	0x3fd8c86cebbba55d              # double 0.38723299999999999
	.quad	0x3fe0881a1554fbdb              # double 0.51661400000000002
	.quad	0x3fe7e8af81626b2f              # double 0.74715399999999998
	.quad	0x3fe8f6d549731099              # double 0.78013100000000002
	.quad	0x3fe4d851654d61b3              # double 0.65140600000000004
	.quad	0x3fb942a23bff8a8f              # double 0.098672999999999997
	.quad	0x3fa5b0574b407033              # double 0.042361000000000003
	.quad	0x3fe19e9d0e991ff7              # double 0.55061199999999999
	.quad	0x3fd18aa8650e7792              # double 0.274088
	.quad	0x3fdffd9fd36f7e3d              # double 0.49985499999999999
	.quad	0x3fd42d666a98244f              # double 0.31527100000000002
	.quad	0x3fd65c2d2780778a              # double 0.34937600000000002
	.quad	0x3fddfc7607c419a0              # double 0.46853400000000001
	.quad	0x3fcb55de58e64b23              # double 0.213558
	.quad	0x3fdc0daa0cae642c              # double 0.438334
	.quad	0x3fd5c6ac215b9a5b              # double 0.34025100000000003
	.quad	0x3f9cfb3311a543f2              # double 0.028302000000000001
	.quad	0x3fb75104d551d68c              # double 0.091079999999999994
	.quad	0x3f8fab96f21f6cad              # double 0.015464
	.quad	0x3fd9994e1a3f4667              # double 0.399982
	.quad	0x3fc6bbba55d1c3ad              # double 0.17760400000000001
	.quad	0x3fe02a0ec7432010              # double 0.50513399999999997
	.quad	0x3fe95db1209edbf9              # double 0.79268700000000003
	.quad	0x3fd612f4cf4a558f              # double 0.34490700000000002
	.quad	0x3fa4347e8ccdd93c              # double 0.039462999999999998
	.quad	0x3fe5193d5347a5b1              # double 0.659331
	.quad	0x3fda2849cb252ce0              # double 0.40870899999999999
	.quad	0x3fb8950763a19008              # double 0.096023999999999998
	.quad	0x3fe7adadb8348f54              # double 0.73995100000000003
	.quad	0x3fe83d145d851655              # double 0.75745600000000002
	.quad	0x3fd0ec204f2ae07e              # double 0.26441199999999998
	.quad	0x3fec5898b2e9ccb8              # double 0.88581500000000002
	.quad	0x3fd2cb31c219eb64              # double 0.29365200000000002
	.quad	0x3fe957214f0520d1              # double 0.79188599999999998
	.quad	0x3fe9acd39da16617              # double 0.80234700000000003
	.quad	0x3f97bbf93ff25e57              # double 0.023178000000000001
	.quad	0x3fbf807789a45910              # double 0.123054
	.quad	0x3fd308f217093101              # double 0.29742099999999999
	.quad	0x3fab4bf8fcd67fd4              # double 0.053314
	.quad	0x3fcac5d206c8711d              # double 0.20916199999999999
	.quad	0x3fe49526d8b1dd5d              # double 0.64320699999999997
	.quad	0x3fdc0b5aa715831f              # double 0.438193
	.quad	0x3fd7fd7a13c254a4              # double 0.37484600000000001
	.quad	0x3fdcf05ea24cc682              # double 0.45217099999999999
	.quad	0x3fe6d3d4280ae105              # double 0.71335800000000005
	.quad	0x3fcf2ecf20642396              # double 0.243616
	.quad	0x3fa0df58c08b75ea              # double 0.032953999999999997
	.quad	0x3fe280a17b0f6ad7              # double 0.57820199999999999
	.quad	0x3fef1f42bb6672fc              # double 0.97256600000000004
	.quad	0x3fd480841ede1199              # double 0.32034400000000002
	.quad	0x3fe3ca643cc07aaf              # double 0.61845600000000001
	.quad	0x3fe96392e1ef73c1              # double 0.79340500000000003
	.quad	0x3fcf67caea747d80              # double 0.24535499999999999
	.quad	0x3fe03a5a038194c0              # double 0.50712299999999999
	.quad	0x3feb27418d6909af              # double 0.84854200000000002
	.quad	0x3fe5b6523704790c              # double 0.67850600000000005
	.quad	0x3fb86d0d49949e88              # double 0.095413999999999999
	.quad	0x3fe40b220791c4b9              # double 0.626359
	.quad	0x3fe155821294573a              # double 0.54168799999999995
	.quad	0x3fda934267839cd8              # double 0.415238
	.quad	0x3fc06c00da1a9329              # double 0.12829599999999999
	.quad	0x3fc1e8ee6b8305d9              # double 0.13992099999999999
	.quad	0x3fe5d0aaa7ded6bb              # double 0.68172200000000005
	.quad	0x3fe23879c4113c68              # double 0.56939399999999996
	.quad	0x3fb694dd72367e41              # double 0.088208999999999996
	.quad	0x3feba01abd1aa822              # double 0.86329400000000001
	.quad	0x3fe49f687b139c95              # double 0.644459
	.quad	0x3fcaf733a8a3f898              # double 0.210669
	.quad	0x3fecdb4cc2507208              # double 0.90176999999999996
	.quad	0x3fc15e74299d883c              # double 0.13569500000000001
	.quad	0x3fba1b1960fa15db              # double 0.101976
	.quad	0x3fe588e368f08462              # double 0.67296
	.quad	0x3feb001b43526528              # double 0.84376300000000004
	.quad	0x3fd6e4b018611fd6              # double 0.35770800000000003
	.quad	0x3fd408a697aeddce              # double 0.31302799999999997
	.quad	0x3fed5db3397dd00f              # double 0.91768799999999995
	.quad	0x3fe5ec13b9f127f6              # double 0.68506800000000001
	.quad	0x3fe672580c308feb              # double 0.70145800000000003
	.quad	0x3fcbc47e49b1fab9              # double 0.21693399999999999
	.quad	0x3feeb0a0b1bbcf4f              # double 0.95906100000000005
	.quad	0x3fc779d0a67620ef              # double 0.18340500000000001
	.quad	0x3fc210385c67dfe3              # double 0.14112
	.quad	0x3fe94dca8e2e2b8c              # double 0.79074599999999994
	.quad	0x3fee86748e475600              # double 0.95391300000000001
	.quad	0x3fd5dec5f394b7b3              # double 0.34172200000000003
	.quad	0x3fc82f405f6ba062              # double 0.188942
	.quad	0x3fd705ea24cc6823              # double 0.359736
	.quad	0x3fcc6e86c6583e85              # double 0.22212299999999999
	.quad	0x3fe34a3400b88ca4              # double 0.60280800000000001
	.quad	0x3fca450acc0bdcad              # double 0.205232
	.quad	0x3feb6848beb5b2d5              # double 0.85648000000000002
	.quad	0x3fe7147064ece9a3              # double 0.72124500000000002
	.quad	0x3fd1021d10b1feeb              # double 0.26575399999999999
	.quad	0x3fc1d3d4280ae105              # double 0.13927700000000001
	.quad	0x3fd7625204af9229              # double 0.36537599999999998
	.quad	0x3fe1a1e1d2178f69              # double 0.55101100000000003
	.quad	0x3fd4df8f4730403a              # double 0.32614500000000002
	.quad	0x3fe5b4f3fd933e36              # double 0.67833900000000003
	.quad	0x3fe2e6c093d96638              # double 0.59066799999999997
	.quad	0x3feb31359791819d              # double 0.84975699999999998
	.quad	0x3fe4ccd74927913f              # double 0.65000500000000005
	.quad	0x3fe6cd22c881e471              # double 0.71254099999999998
	.quad	0x3fcc368f08461f9f              # double 0.220415
	.quad	0x3faf0cbaf965b20c              # double 0.060644000000000003
	.quad	0x3fe87681669ced0b              # double 0.76446599999999998
	.quad	0x3fc955c52e72da12              # double 0.19792999999999999
	.quad	0x3f80752da98676a7              # double 0.0080359999999999997
	.quad	0x3fd52b3892ee84ad              # double 0.33076299999999997
	.quad	0x3fea18dcdb37c99b              # double 0.81553500000000001
	.quad	0x3fe422856605ee57              # double 0.62921400000000005
	.quad	0x3fed9f0e4da09cc3              # double 0.92566599999999999
	.quad	0x3fdb05faebc408d9              # double 0.42224
	.quad	0x3fcf14fce746cb96              # double 0.24282799999999999
	.quad	0x3fdfcee9dd7ecbb8              # double 0.497004
	.quad	0x3fca5aa2e3c536d6              # double 0.20589099999999999
	.quad	0x3fc3c2656abde3fc              # double 0.15437000000000001
	.quad	0x3fe50b3d4ae429e1              # double 0.65762200000000004
	.quad	0x3fe3991dde37585c              # double 0.61244100000000001
	.quad	0x3fad4bf0995aaf79              # double 0.05722
	.quad	0x3fde37542a23bff9              # double 0.47212700000000002
	.quad	0x3fca977c88e79aae              # double 0.20774799999999999
	.quad	0x3fe03a30121682f9              # double 0.50710299999999997
	.quad	0x3fd4ec28b2a6b0d9              # double 0.32691399999999998
	.quad	0x3fd2b417ca2120e2              # double 0.292242
	.quad	0x3fdd7baa9b499d02              # double 0.460673
	.quad	0x3fb40bbb1f255f35              # double 0.078303999999999999
	.quad	0x3feef0cdc8754f37              # double 0.96689499999999994
	.quad	0x3fbfd0d0678c0054              # double 0.12428
	.quad	0x3fdb90257c914b16              # double 0.43067299999999997
	.quad	0x3fe2e234a87e38eb              # double 0.590113
	.quad	0x3fe54dd0d8cb07d1              # double 0.66574900000000004
	.quad	0x3fd115b1422ccb3a              # double 0.26694899999999999
	.quad	0x3feb57d3910c2c5e              # double 0.85447099999999998
	.quad	0x3f808c3f3e0370ce              # double 0.0080800000000000004
	.quad	0x3faec52a411c2a02              # double 0.060097999999999999
	.quad	0x3fd5eb18116ebd4d              # double 0.342474
	.quad	0x3fed370ac3a860dd              # double 0.91296900000000003
	.quad	0x3fb9b0ccbc05d52c              # double 0.100354
	.quad	0x3fe8d5f99c38b04b              # double 0.77612000000000003
	.quad	0x3fd4e68a0d349be9              # double 0.326571
	.quad	0x3fef27631b584b1b              # double 0.97355800000000003
	.quad	0x3fe3c8a372606fac              # double 0.61824199999999996
	.quad	0x3fec115592d98bf8              # double 0.87711600000000001
	.quad	0x3fd47b4a2339c0ec              # double 0.320025
	.quad	0x3feca1dda059a73b              # double 0.89475899999999997
	.quad	0x3fe0ab27cbf6e3f8              # double 0.52089300000000005
	.quad	0x3fd6eeaa6d267408              # double 0.358317
	.quad	0x3fed93250b52439a              # double 0.92421200000000003
	.quad	0x3fd182adc4c9c90c              # double 0.27360099999999998
	.quad	0x3fe60183f91e646f              # double 0.68768499999999999
	.quad	0x3fc44a16a4873366              # double 0.15851100000000001
	.quad	0x3fd2530ced4e4c94              # double 0.28631899999999999
	.quad	0x3fe8cd983947496b              # double 0.77509700000000004
	.quad	0x3fe05ffc5479d4d8              # double 0.51171699999999998
	.quad	0x3fe9d931ca7d6734              # double 0.807763
	.quad	0x3fc8afbc1acde1a0              # double 0.19286300000000001
	.quad	0x3fe6dd0d8cb07d0b              # double 0.71448400000000001
	.quad	0x3fef4c1ca3a4b557              # double 0.97804100000000004
	.quad	0x3fda3764f11b60af              # double 0.40963100000000002
	.quad	0x3fbb51697f1f9ad0              # double 0.106711
	.quad	0x3fec4a72ead9274e              # double 0.88408799999999998
	.quad	0x3fbfdbd2fa0d77b8              # double 0.124448
	.quad	0x3feb61bb05faebc4              # double 0.85567999999999999
	.quad	0x3fe9a12f901083dc              # double 0.80092600000000002
	.quad	0x3fc9a0945f9df549              # double 0.200213
	.quad	0x3f8ac9afe1da7b0b              # double 0.01308
	.quad	0x3fe8f72b4528283d              # double 0.78017199999999998
	.quad	0x3fe6e36b09635611              # double 0.71526100000000004
	.quad	0x3fd3e80bed740c41              # double 0.31103799999999998
	.quad	0x3fd8ca29845dc832              # double 0.38733899999999999
	.quad	0x3fe41e68a0d349bf              # double 0.62871200000000005
	.quad	0x3fd3f7e3d1cc100e              # double 0.31200499999999998
	.quad	0x3f7b50f40e5a35d6              # double 0.0066689999999999996
	.quad	0x3fd4000000000000              # double 0.3125
	.quad	0x3fdaca89fc6da448              # double 0.41861199999999998
	.quad	0x3fdb31ec0b567558              # double 0.42492200000000002
	.quad	0x3fe7f562174c4ce0              # double 0.74870400000000003
	.quad	0x3fe32ee2003ab863              # double 0.59947300000000003
	.quad	0x3f773fb7a5f41aef              # double 0.0056759999999999996
	.quad	0x3fecc99ae924f228              # double 0.89961000000000002
	.quad	0x3feb77318fc50481              # double 0.85829999999999995
	.quad	0x3fc365a14488c60d              # double 0.15153900000000001
	.quad	0x3fe2185cee17a030              # double 0.56547400000000003
	.quad	0x3fdbfc71d6063172              # double 0.43728299999999998
	.quad	0x3fd211d3671ac14c              # double 0.28233799999999998
	.quad	0x3fe96a24cc6822ff              # double 0.794207
	.quad	0x3fc4d7b634dad320              # double 0.16283300000000001
	.quad	0x3fbe0fa15db3397e              # double 0.117426
	.quad	0x3fe823ee1bd1ed9e              # double 0.754386
	.quad	0x3fbc7e7c06e19b91              # double 0.111305
	.quad	0x3fd9a059a73b42cc              # double 0.40041199999999999
	.quad	0x3fe1e5bc87db2b34              # double 0.55929399999999996
	.quad	0x3fea8379314445aa              # double 0.82854899999999998
	.quad	0x3fe674213a0c6b48              # double 0.70167599999999997
	.quad	0x3fe995e9e1b089a0              # double 0.79954999999999998
	.quad	0x3fe54625e99e94ab              # double 0.66481299999999999
	.quad	0x3fd9848387df5cf2              # double 0.39871299999999998
	.quad	0x3fe51eafee6fb4c4              # double 0.65999600000000003
	.quad	0x3fd7fbdad7518b0d              # double 0.374747
	.quad	0x3fed418d6909aed5              # double 0.91425199999999995
	.quad	0x3fede4628027d88c              # double 0.93412899999999998
	.quad	0x3fe0bb40b34e7686              # double 0.52285800000000004
	.quad	0x3fe5dbd0e12e83a1              # double 0.683083
	.quad	0x3fec65aff2a172ac              # double 0.887413
	.quad	0x3fe5e1e92923e5b8              # double 0.68382699999999996
	.quad	0x3fc309e12a51e322              # double 0.14873900000000001
	.quad	0x3fe1459fb1e18efc              # double 0.53974900000000003
	.quad	0x3fdfb4289118c198              # double 0.49537100000000001
	.quad	0x3fe27e3b03e20cd0              # double 0.57790900000000001
	.quad	0x3feaae81882adc4d              # double 0.83380200000000004
	.quad	0x3fef56f544bb1af4              # double 0.97936500000000004
	.quad	0x3fd8ca25529fe005              # double 0.38733800000000002
	.quad	0x3fd70a808c8259e2              # double 0.360016
	.quad	0x3fe971cb89d6adf7              # double 0.79514099999999999
	.quad	0x3fdcd783dff3f0fe              # double 0.450654
	.quad	0x3fa996312f4cf4a5              # double 0.049973999999999998
	.quad	0x3fe506d506573216              # double 0.657084
	.quad	0x3fc3f9c62a1b5c7d              # double 0.15606
	.quad	0x3fd72c01e68a0d35              # double 0.36206100000000002
	.quad	0x3fcc8626f60e0eb6              # double 0.22284399999999999
	.quad	0x3fc8bd6e8af81627              # double 0.19328100000000001
	.quad	0x3fd1b951c5c5718f              # double 0.27693600000000002
	.quad	0x3fe175a31a4bdba1              # double 0.54561000000000004
	.quad	0x3fdb0c6f7a0b5ed9              # double 0.42263400000000001
	.quad	0x3fc48155d5f56a7b              # double 0.16019700000000001
	.quad	0x3fe35506573215fd              # double 0.60412900000000003
	.quad	0x3feed3e0bd44998d              # double 0.96336399999999999
	.quad	0x3fe9d3c579f23465              # double 0.80710099999999996
	.quad	0x3fdbefa1e3eaf683              # double 0.43650099999999997
	.quad	0x3fcaadcd2d44dca9              # double 0.208429
	.quad	0x3fe69c970f7b9e06              # double 0.70661499999999999
	.quad	0x3fcc1e68a0d349bf              # double 0.21967800000000001
	.quad	0x3fd562bae03b3e9a              # double 0.33415099999999998
	.quad	0x3fb3d1cc100e6afd              # double 0.077420000000000003
	.quad	0x3fea13293d102bc7              # double 0.81483899999999998
	.quad	0x3fd1f993d5347a5b              # double 0.280858
	.quad	0x3fc33059641f6449              # double 0.14991299999999999
	.quad	0x3fd6c95bff04577e              # double 0.35604000000000002
	.quad	0x3fec9b71758e2196              # double 0.89397499999999996
	.quad	0x3fdbc5b8dc55000d              # double 0.43394300000000002
	.quad	0x3fc238a7e73a365d              # double 0.14235400000000001
	.quad	0x3fef4764adff822c              # double 0.97746500000000002
	.quad	0x3fe6c623d0bfa094              # double 0.71168699999999996
	.quad	0x3fd813b18dac258d              # double 0.37620199999999998
	.quad	0x3fed00d5e8d54110              # double 0.90635200000000005
	.quad	0x3fb46ed245b291b8              # double 0.079815999999999998
	.quad	0x3fd4ff21b3aeee95              # double 0.32807199999999997
	.quad	0x3fc4231832fcac8e              # double 0.15732099999999999
	.quad	0x3fe22c3c9eecbfb1              # double 0.56789999999999996
	.quad	0x3fdc30984e3ffef4              # double 0.44046600000000002
	.quad	0x3fc9694467381d7e              # double 0.19852500000000001
	.quad	0x3fe4073de1e2de87              # double 0.625884
	.quad	0x3fed267a52ac753e              # double 0.91094699999999995
	.quad	0x3fcdd78811b1d92b              # double 0.23313999999999999
	.quad	0x3fe9f6af89c5e6ff              # double 0.81136299999999995
	.quad	0x3fe44743201040c0              # double 0.63369900000000001
	.quad	0x3fdc240b780346dc              # double 0.43969999999999998
	.quad	0x3fedfc2224edf612              # double 0.93702799999999997
	.quad	0x3fd43ad9f0a1be2b              # double 0.31609199999999998
	.quad	0x3fe00a808c8259e2              # double 0.50128200000000001
	.quad	0x3fdff09528f190d1              # double 0.49905899999999997
	.quad	0x3fef24f440af1cb9              # double 0.97326100000000004
	.quad	0x3fcbf5c6c11a1123              # double 0.21843799999999999
	.quad	0x3fe0226e5471715c              # double 0.50420299999999996
	.quad	0x3fe6da1ec4e7253e              # double 0.71412600000000004
	.quad	0x3fdaaa0cae642bfa              # double 0.41662900000000003
	.quad	0x3fcc901d19157abc              # double 0.22314800000000001
	.quad	0x3fb3bb40b34e7686              # double 0.077076000000000005
	.quad	0x3fe0845132f87ad1              # double 0.51615200000000006
	.quad	0x3fd59f94855da273              # double 0.33786500000000003
	.quad	0x3fdf63cb81733227              # double 0.49046600000000001
	.quad	0x3fee0b28522ea0fd              # double 0.93886199999999997
	.quad	0x3fd74cb1897a67a5              # double 0.36405599999999999
	.quad	0x3fd12afdda8bd231              # double 0.26824900000000002
	.quad	0x3fee625c810a569b              # double 0.94950699999999999
	.quad	0x3fe4b9d3cbc48f11              # double 0.64768400000000004
	.quad	0x3fea28a3f8982cb2              # double 0.81746099999999999
	.quad	0x3fdb6bce8533b107              # double 0.42845499999999997
	.quad	0x3fee34e7685985ad              # double 0.94395799999999996
	.quad	0x3fb6f74cd31769a9              # double 0.089710999999999999
	.quad	0x3fe5695b78cc9a78              # double 0.66911100000000001
	.quad	0x3fccd905c0336156              # double 0.22537299999999999
	.quad	0x3fc13bafd976ff3b              # double 0.134634
	.quad	0x3fe2bff25e56cd6c              # double 0.58593099999999998
	.quad	0x3fe50370cdc8754f              # double 0.65666999999999998
	.quad	0x3fef606961c36977              # double 0.98051900000000002
	.quad	0x3fef3f76a2f48c2e              # double 0.97649699999999995
	.quad	0x3fd8a53fc0096feb              # double 0.38508599999999998
	.quad	0x3fb5db5525cc4263              # double 0.085377999999999996
	.quad	0x3fef27d45a5fc7e7              # double 0.97361200000000003
	.quad	0x3fb595feda661284              # double 0.084320000000000006
	.quad	0x3fc17ced916872b0              # double 0.136625
	.quad	0x3fd0b6ae7d566cf4              # double 0.26114999999999999
	.quad	0x3fe661fc08fa7a85              # double 0.699461
	.quad	0x3fe4f737da61e0c6              # double 0.65517800000000004
	.quad	0x3fede17a02fb5d03              # double 0.93377399999999999
	.quad	0x3fe4967caea747d8              # double 0.64337
	.quad	0x3fd811e42e126202              # double 0.37609199999999998
	.quad	0x3fe2683a109d0636              # double 0.57522300000000004
	.quad	0x3fb51d9b1b79d90a              # double 0.082483
	.quad	0x3f90000000000000              # double 0.015625
	.quad	0x3fd574794ea07703              # double 0.33523399999999998
	.quad	0x3fda518b0d0edc3c              # double 0.41122700000000001
	.quad	0x3fd5780baa582dbe              # double 0.33545199999999997
	.quad	0x3fec9e90795f676f              # double 0.89435600000000004
	.quad	0x3fc04df47f993d53              # double 0.12737899999999999
	.quad	0x3fe171d1d4738a3b              # double 0.54514399999999996
	.quad	0x3fe9f9b56323bbc7              # double 0.81173200000000001
	.quad	0x3fdcc7f77af64064              # double 0.44970500000000002
	.quad	0x3fd1e06530058149              # double 0.27932099999999999
	.quad	0x3fead58a76102795              # double 0.83856699999999995
	.quad	0x3fd64b87bdcf0308              # double 0.34836
	.quad	0x3fc02c55c96030c2              # double 0.12635299999999999
	.quad	0x3fd641aef6f8f041              # double 0.34775899999999998
	.quad	0x3fdd11dbca9691a7              # double 0.45421499999999998
	.quad	0x3fe48fd199bb2789              # double 0.64255600000000002
	.quad	0x3fe56ccc46950fc7              # double 0.66953099999999999
	.quad	0x3fc6295208e15012              # double 0.17313600000000001
	.quad	0x3feadd7ecbb7f9d7              # double 0.83953800000000001
	.quad	0x3fe075946c332f01              # double 0.51435299999999995
	.quad	0x3fe846ef3d3a1d32              # double 0.75865899999999997
	.quad	0x3fe8a600b0292817              # double 0.77026399999999995
	.quad	0x3fbcac4b4d056c51              # double 0.11200400000000001
	.quad	0x3fe8d0b73d188f43              # double 0.775478
	.quad	0x3fda80dc33721d54              # double 0.41411500000000001
	.quad	0x3fe8b3e1437c5693              # double 0.77195800000000003
	.quad	0x3fb9e6ab9b23dd55              # double 0.101176
	.quad	0x3fc4947064ece9a3              # double 0.16078000000000001
	.quad	0x3fe4cd4cb9ecf638              # double 0.650061
	.quad	0x3fea27631b584b1b              # double 0.81730800000000003
	.quad	0x3fe4dece5710880e              # double 0.65219800000000006
	.quad	0x3fd8c0d6f544bb1b              # double 0.38677
	.quad	0x3fe71a32b12d3416              # double 0.72194800000000003
	.quad	0x3fedd5a187a4a490              # double 0.93232800000000005
	.quad	0x3fc23fc43b2dd378              # double 0.142571
	.quad	0x3fd5c5974e65bea1              # double 0.34018500000000002
	.quad	0x3fce6dd69d30270f              # double 0.23772699999999999
	.quad	0x3fc6b24a6a875d57              # double 0.177316
	.quad	0x3faee2003ab862b2              # double 0.060317999999999997
	.quad	0x3fd40121682f9442              # double 0.31256899999999999
	.quad	0x3fdeb6f5caf2d7f9              # double 0.47991699999999998
	.quad	0x3fe18af5fd47bedb              # double 0.54821299999999995
	.quad	0x3fe692ee84ad794a              # double 0.70543599999999995
	.quad	0x3fecae70c1333b97              # double 0.89629400000000004
	.quad	0x3fea9991361dc93f              # double 0.83124600000000004
	.quad	0x3fddd1f601797cc4              # double 0.46594000000000002
	.quad	0x3fe77a1a0cf1800a              # double 0.73365499999999995
	.quad	0x3fe9ec41dd1a21ea              # double 0.81008999999999998
	.quad	0x3fe996c3fc43b2dd              # double 0.79965399999999998
	.quad	0x3fd9fac6045baf53              # double 0.40593099999999999
	.quad	0x3fea8eae18ac9f30              # double 0.82991700000000002
	.quad	0x3fade0d66f0cfe15              # double 0.058355999999999998
	.quad	0x3fb3c6da4484944f              # double 0.077253000000000002
	.quad	0x3febb700474d9c6b              # double 0.866089
	.quad	0x3fd4e58a32f44913              # double 0.32651000000000002
	.quad	0x3fe5c02afdda8bd2              # double 0.67970799999999998
	.quad	0x3fe7139c94f69caa              # double 0.72114400000000001
	.quad	0x3fcda3a8e71476b0              # double 0.23155700000000001
	.quad	0x3fd452e72da122fb              # double 0.31756000000000001
	.quad	0x3fe0986b9c304ccf              # double 0.51860600000000001
	.quad	0x3fe3f15c63ae2542              # double 0.62321300000000002
	.quad	0x3fe095c63ae2541e              # double 0.51828300000000005
	.quad	0x3fd7df1172ef0ae5              # double 0.37298999999999999
	.quad	0x3fc8769ec2ce464a              # double 0.19112000000000001
	.quad	0x3fe2ed15ad106ee3              # double 0.59144099999999999
	.quad	0x3fe98dc981beb181              # double 0.79855799999999999
	.quad	0x3fdebfa0945f9df5              # double 0.48044599999999998
	.quad	0x3fc26a098915bdd7              # double 0.14386099999999999
	.quad	0x3fefe0fc2eba27af              # double 0.99621400000000004
	.quad	0x3fce91c8eabffcdb              # double 0.23882400000000001
	.quad	0x3fd6b05faebc408e              # double 0.35451500000000002
	.quad	0x3fefe4d7f0ed3d86              # double 0.99668500000000004
	.quad	0x3fdc90f733a8a3f9              # double 0.44634800000000002
	.quad	0x3fe2c4ef88b97785              # double 0.58653999999999995
	.quad	0x3feea89331a08bfc              # double 0.95807799999999998
	.quad	0x3fea709b738e6d16              # double 0.82624600000000004
	.quad	0x3fda81e4712e4085              # double 0.41417799999999999
	.quad	0x3fc38dc55000c954              # double 0.15276400000000001
	.quad	0x3fec610060780fdc              # double 0.88684099999999999
	.quad	0x3f98205ff1d81f10              # double 0.023560999999999999
	.quad	0x3fd185729b280f13              # double 0.27377000000000001
	.quad	0x3fd4b945308bb906              # double 0.32380799999999998
	.quad	0x3fd9b1465e892253              # double 0.401445
	.quad	0x3fa85c4651f3e89b              # double 0.047579000000000003
	.quad	0x3fd2fb15b573eab3              # double 0.29657499999999998
	.quad	0x3fe6d6cb5350092d              # double 0.71372000000000002
	.quad	0x3fc0756861e92924              # double 0.128583
	.quad	0x3fde219a847b2464              # double 0.47080100000000003
	.quad	0x3fe581b003686a4d              # double 0.67208100000000004
	.quad	0x3fa658c4bd33d295              # double 0.043645999999999997
	.quad	0x3fe67b7e90ff9724              # double 0.70257499999999995
	.quad	0x3fe8e3dc486ad2dd              # double 0.77781500000000003
	.quad	0x3fecb30728e92d56              # double 0.89685400000000004
	.quad	0x3fd19667b5f1bef5              # double 0.27480500000000002
	.quad	0x3fe609e774eebf66              # double 0.68870900000000002
	.quad	0x3fed12f09d8c6d61              # double 0.90856199999999998
	.quad	0x3fda084e831ad213              # double 0.40675699999999998
	.quad	0x3fae7381d7dbf488              # double 0.059475
	.quad	0x3fc550b955f7835a              # double 0.16652600000000001
	.quad	0x3fc2d9f0a1be2b49              # double 0.14727599999999999
	.quad	0x3fd6bec679cc74b8              # double 0.35539399999999999
	.quad	0x3fb41f85d744f5d3              # double 0.078605999999999995
	.quad	0x3fe012fd32c625ea              # double 0.50231800000000004
	.quad	0x3fe74af4f0d844d0              # double 0.72789999999999999
	.quad	0x3fa4816f0068db8c              # double 0.040050000000000002
	.quad	0x3fe2c00fba8826ab              # double 0.58594500000000005
	.quad	0x3fe50e8427418d69              # double 0.658022
	.quad	0x3fb23de6149c6f37              # double 0.071257000000000001
	.quad	0x3fe1bfd0d0678c00              # double 0.55466499999999996
	.quad	0x3fea132f87ad080b              # double 0.81484199999999996
	.quad	0x3feaa69be09bb6aa              # double 0.83283799999999997
	.quad	0x3fd2e19b90ea9e6f              # double 0.29502
	.quad	0x3fe9a91b823c85c2              # double 0.80189299999999997
	.quad	0x3fea7b7c7820a30e              # double 0.82757400000000003
	.quad	0x3fe0e65e02ea960b              # double 0.52812099999999995
	.quad	0x3fd96f60e0eb67c3              # double 0.39742300000000003
	.quad	0x3fca99f1ae2da555              # double 0.20782300000000001
	.quad	0x3f9342aa9f7b5aea              # double 0.018808999999999999
	.quad	0x3feb887ebf22c01e              # double 0.86041199999999995
	.quad	0x3fd4ea28fe260b2d              # double 0.32679200000000003
	.quad	0x3fb3f5d78811b1d9              # double 0.077969999999999998
	.quad	0x3fdbc08fa7a85016              # double 0.43362800000000001
	.quad	0x3fc230e3cd9a5226              # double 0.14211699999999999
	.quad	0x3fe8561d4306e5cd              # double 0.76051199999999997
	.quad	0x3fa0029f16b11c6d              # double 0.031269999999999999
	.quad	0x3fe93343fa2ad3e9              # double 0.78750799999999999
	.quad	0x3feded8f4f93bc0a              # double 0.935249
	.quad	0x3fec179bfdf7e804              # double 0.87788200000000005
	.quad	0x3fe2ca3c64345cff              # double 0.58718700000000001
	.quad	0x3fe9d68405b39e28              # double 0.80743600000000004
	.quad	0x3fdb159817b95a29              # double 0.42319299999999999
	.quad	0x3fe2bc74fb549f95              # double 0.58550500000000005
	.quad	0x3fe6796bfca85cab              # double 0.702322
	.quad	0x3fd318ce2d1f1cfc              # double 0.29838900000000002
	.quad	0x3fe8e3a3a8e71477              # double 0.77778800000000003
	.quad	0x3fd5a5d28d002e23              # double 0.33824599999999999
	.quad	0x3f814b167ec7863c              # double 0.0084440000000000001
	.quad	0x3fec4a925fe974a3              # double 0.88410299999999997
	.quad	0x3fb15d5f56a7ac82              # double 0.067831000000000002
	.quad	0x3fefad362e903644              # double 0.98989400000000005
	.quad	0x3fd884a515ce9e5e              # double 0.38309599999999999
	.quad	0x3fefa40746455eaf              # double 0.98877300000000001
	.quad	0x3fe60c4588a04d12              # double 0.688998
	.quad	0x3fe3f5f6fd21ff2e              # double 0.62377499999999997
	.quad	0x3fe45aab47410731              # double 0.63606799999999997
	.quad	0x3fe47f8a8f3a9b07              # double 0.64056900000000006
	.quad	0x3f8b3743632c1f43              # double 0.013289
	.quad	0x3fedd4003254e6e2              # double 0.93212899999999999
	.quad	0x3fc7928e0c9d9d34              # double 0.18415999999999999
	.quad	0x3fecb964a59c065b              # double 0.89763099999999996
	.quad	0x3fc2d7f0ed3d859d              # double 0.14721500000000001
	.quad	0x3fc6214ad362e903              # double 0.17289099999999999
	.quad	0x3fe8e323bbc6eb0b              # double 0.77772699999999995
	.quad	0x3fe52923e5b8561d              # double 0.66127199999999997
	.quad	0x3fe45454152b0a70              # double 0.63529400000000003
	.quad	0x3fe3891c087442c8              # double 0.610487
	.quad	0x3fef55a9eb2074eb              # double 0.97920700000000004
	.quad	0x3fd631055b899392              # double 0.34674199999999999
	.quad	0x3fe78a2014727dcc              # double 0.73561100000000001
	.quad	0x3fd77182235b4edb              # double 0.36630299999999999
	.quad	0x3fe34c100e6afcce              # double 0.60303499999999999
	.quad	0x3fe35dce7cd03537              # double 0.60520099999999999
	.quad	0x3fd1e62dc6e2a800              # double 0.27967399999999998
	.quad	0x3fe2542a23bff8a9              # double 0.57277400000000001
	.quad	0x3fcb97cc39ffd60f              # double 0.21557000000000001
	.quad	0x3fed93b3a68b19a4              # double 0.92427999999999999
	.quad	0x3fe4956e264e4862              # double 0.64324099999999995
	.quad	0x3fe4a6cc1ca3a4b5              # double 0.64536099999999996
	.quad	0x3fc3323fee2c98e5              # double 0.14997099999999999
	.quad	0x3fee633acd5b6806              # double 0.94961300000000004
	.quad	0x3fe8f2e8c0485a0c              # double 0.77965200000000001
	.quad	0x3feddefc7a398202              # double 0.93347000000000002
	.quad	0x3f983e425aee6320              # double 0.023675000000000002
	.quad	0x3fe0154a7f8012e0              # double 0.50259900000000002
	.quad	0x3fdb7296f6512a95              # double 0.428869
	.quad	0x3fc770d62bf11f92              # double 0.18313099999999999
	.quad	0x3fbd4f15e7c8d196              # double 0.11448800000000001
	.quad	0x3fe2b5e529bae46d              # double 0.584704
	.quad	0x3feb0285ec3dab5c              # double 0.84405799999999997
	.quad	0x3fecb358f2e05ccd              # double 0.89689300000000005
	.quad	0x3fedfdb09a671ef3              # double 0.937218
	.quad	0x3fe9f202107b7846              # double 0.81079199999999996
	.quad	0x3fe8ad3c792d1288              # double 0.77114700000000003
	.quad	0x3fd74edb2f661f19              # double 0.36418800000000001
	.quad	0x3fd39e3c968943e1              # double 0.306533
	.quad	0x3fe9cf4623d0bfa1              # double 0.80655200000000005
	.quad	0x3fef8b524399b2c4              # double 0.98575699999999999
	.quad	0x3fec0f6273929ed4              # double 0.87687800000000004
	.quad	0x3fd44b4070329803              # double 0.31709300000000001
	.quad	0x3fe9a908a265f0f6              # double 0.80188400000000004
	.quad	0x3fd3e4b87bdcf030              # double 0.31083499999999997
	.quad	0x3fcfe774eebf65dc              # double 0.249251
	.quad	0x3f95ac8a372606fb              # double 0.021166000000000001
	.quad	0x3fe215d2d01c0ca6              # double 0.565164
	.quad	0x3fe7adafd113836b              # double 0.73995200000000005
	.quad	0x3fd77e6b3fe9fadb              # double 0.367091
	.quad	0x3fe74cad57bc7f78              # double 0.72811000000000003
	.quad	0x3fe2490e66cb1034              # double 0.57141799999999998
	.quad	0x3fa8f42fe82517e7              # double 0.048737999999999997
	.quad	0x3fa92684cf0739b0              # double 0.049121999999999999
	.quad	0x3fa85e3da2f8bdec              # double 0.047593999999999997
	.quad	0x3fed7878b7a1c25d              # double 0.920956
	.quad	0x3fa6542e557de0d6              # double 0.043610999999999997
	.quad	0x3fdb70f3882278d1              # double 0.42876900000000001
	.quad	0x3feadc13fd0d0679              # double 0.83936500000000003
	.quad	0x3fc5bbc6eb0b7c35              # double 0.169793
	.quad	0x3fe55fbd6a593a2e              # double 0.667937
	.quad	0x3fcb4a66559f6ec6              # double 0.21320800000000001
	.quad	0x3fda48f53c579f23              # double 0.41070299999999998
	.quad	0x3fdc25cc426351df              # double 0.439807
	.quad	0x3fe0d182a9930be1              # double 0.52557500000000001
	.quad	0x3fdf924f227d028a              # double 0.49330499999999999
	.quad	0x3fcd119ce075f6fd              # double 0.2271
	.quad	0x3fe1e0e30446b69e              # double 0.55870200000000003
	.quad	0x3fe0433d6c721922              # double 0.50820799999999999
	.quad	0x3fd6b463497b7415              # double 0.35476000000000002
	.quad	0x3fd084c271fff79d              # double 0.25810300000000003
	.quad	0x3fe7f08aac96cc60              # double 0.74811300000000002
	.quad	0x3fefec3760bf5d79              # double 0.99758500000000005
	.quad	0x3fb0e5929670196e              # double 0.066003000000000006
	.quad	0x3fe6e5a9a8049668              # double 0.71553500000000003
	.quad	0x3fdfa8eb463497b7              # double 0.49468499999999999
	.quad	0x3fa0b827fa1a0cf2              # double 0.032655000000000003
	.quad	0x3fd57ad8e4324420              # double 0.335623
	.quad	0x3fcab4395810624e              # double 0.208625
	.quad	0x3fe9be0370cdc875              # double 0.80444499999999997
	.quad	0x3fd7c91d14e3bcd3              # double 0.37164999999999998
	.quad	0x3fe7f09fa54c5543              # double 0.74812299999999998
	.quad	0x3fe6d0a244630660              # double 0.71296800000000005
	.quad	0x3fbe7d566cf41f21              # double 0.1191
	.quad	0x3fd014b599aa6091              # double 0.25126399999999999
	.quad	0x3fe9aff6d330941d              # double 0.80273000000000005
	.quad	0x3fca3b4f61672325              # double 0.20493500000000001
	.quad	0x3feb4c20d5629d84              # double 0.85304299999999999
	.quad	0x3fe8aedfe75bc44c              # double 0.771347
	.quad	0x3fc2cb5350092ccf              # double 0.14682999999999999
	.quad	0x3feb8bc169c23b79              # double 0.86080999999999996
	.quad	0x3fec2a94ff0025c0              # double 0.88019800000000004
	.quad	0x3fe3d8a116659d13              # double 0.62019400000000002
	.quad	0x3fd00d5a5b9628cc              # double 0.25081500000000001
	.quad	0x3fc60945f9df548f              # double 0.17215800000000001
	.quad	0x3fb5162281344806              # double 0.082368999999999997
	.quad	0x3fea5ce7cd035372              # double 0.82384100000000005
	.quad	0x3fdf5d249e44fa05              # double 0.49006
	.quad	0x3fe758ff75968512              # double 0.72961399999999998
	.quad	0x3fda7746887a8d65              # double 0.41353000000000001
	.quad	0x3f9161a1db877ab3              # double 0.016974
	.quad	0x3febf2ead9274e23              # double 0.87340300000000004
	.quad	0x3fdde6601bc98a22              # double 0.46718599999999999
	.quad	0x3fc428b2a6b0d951              # double 0.15749199999999999
	.quad	0x3fe4a25d8d79d0a6              # double 0.64481999999999995
	.quad	0x3fef68cef672b884              # double 0.98154399999999997
	.quad	0x3fe4caf709b738e7              # double 0.64977600000000002
	.quad	0x3fdddb8348f53c58              # double 0.46652300000000002
	.quad	0x3fbe66ba493c89f4              # double 0.118755
	.quad	0x3fc4ac753e707e17              # double 0.16151299999999999
	.quad	0x3fbce5f7403dddb1              # double 0.112884
	.quad	0x3fdac3d68405b39e              # double 0.41820299999999999
	.quad	0x3fe1209cc319c5a4              # double 0.53523100000000001
	.quad	0x3feae7967caea748              # double 0.84077000000000002
	.quad	0x3fe0e28ed5f138bd              # double 0.52765600000000001
	.quad	0x3fe6d44998d045fe              # double 0.71341399999999999
	.quad	0x3fe7cea4a8c154ca              # double 0.74397500000000005
	.quad	0x3fefe134ce3de615              # double 0.99624100000000004
	.quad	0x3fee91c6d1e108c4              # double 0.955295
	.quad	0x3fe563f359ff4fd7              # double 0.66845100000000002
	.quad	0x3fd99613d31b9b67              # double 0.399785
	.quad	0x3fd64b2745bf26f2              # double 0.34833700000000001
	.quad	0x3fef2a5c5f7c675a              # double 0.97392100000000004
	.quad	0x3fd079a6b50b0f28              # double 0.25742500000000001
	.quad	0x3fe528b2a6b0d951              # double 0.66121799999999997
	.quad	0x3fe047e49b1fab97              # double 0.50877600000000001
	.quad	0x3f827807789a4591              # double 0.0090179999999999999
	.quad	0x3fea433508f648c7              # double 0.82070399999999999
	.quad	0x3fdabf0995aaf790              # double 0.41791
	.quad	0x3fe257cb2d905c03              # double 0.57321699999999998
	.quad	0x3f525dd095af294e              # double 0.001121
	.quad	0x3fec6801711947d0              # double 0.88769600000000004
	.quad	0x3fa9b54195cc857f              # double 0.050210999999999999
	.quad	0x3fdd6644d87724fb              # double 0.45936700000000003
	.quad	0x3f9039ef0f16f438              # double 0.015845999999999999
	.quad	0x3fe7db8fde2ef4e0              # double 0.74555199999999999
	.quad	0x3fe8c4f1a1986b9c              # double 0.77404099999999997
	.quad	0x3fc46e86c6583e85              # double 0.15962299999999999
	.quad	0x3fb6424a276b7ed4              # double 0.086948999999999999
	.quad	0x3fddd0e991ff7165              # double 0.46587600000000001
	.quad	0x3fe9c5197a24894c              # double 0.80530999999999997
	.quad	0x3fd05d2d01c0ca60              # double 0.255687
	.quad	0x3fd6da98676a7265              # double 0.35709200000000002
	.quad	0x3fe59ebc83a96d4c              # double 0.67562699999999998
	.quad	0x3f8c1df3300de4c5              # double 0.013729
	.quad	0x3fdbd1676640a6b9              # double 0.43465599999999999
	.quad	0x3fba62aa19439de5              # double 0.10306800000000001
	.quad	0x3fe2af9ca5bd944b              # double 0.58393700000000004
	.quad	0x3fdc3fa6defc7a3a              # double 0.44138500000000003
	.quad	0x3fd4f14db59578a3              # double 0.32722800000000002
	.quad	0x3fe1406e19b90eaa              # double 0.53911500000000001
	.quad	0x3fd4fd933e35c5b5              # double 0.32797700000000002
	.quad	0x3fe56831ad2135db              # double 0.66896900000000004
	.quad	0x3fe6a44417870542              # double 0.70755199999999996
	.quad	0x3fe48116ebd4cfd1              # double 0.64075800000000005
	.quad	0x3fec36672fba01ef              # double 0.88164100000000001
	.quad	0x3fa80a9de8b3b320              # double 0.046955999999999998
	.quad	0x3fc7097c80841ede              # double 0.179977
	.quad	0x3fe84628027d88c2              # double 0.75856400000000002
	.quad	0x3fb70e0a84be4042              # double 0.090057999999999999
	.quad	0x3fe2a4fca42aed14              # double 0.58264000000000005
	.quad	0x3fbb4906034f3fd9              # double 0.106583
	.quad	0x3fa659f2ba9d1f60              # double 0.043654999999999999
	.quad	0x3fe7ea3bddfc9ff9              # double 0.74734299999999998
	.quad	0x3fd6abead4f5903a              # double 0.35424299999999997
	.quad	0x3fcfb291b823c85c              # double 0.247637
	.quad	0x3fe0a6f60e0eb67c              # double 0.52038099999999998
	.quad	0x3fe089d0635a426c              # double 0.51682300000000003
	.quad	0x3fe253da72a7bd49              # double 0.57273600000000002
	.quad	0x3fd7e34fc610f0e9              # double 0.373249
	.quad	0x3fc9f06f69446738              # double 0.20265
	.quad	0x3fdb4be835dedf1e              # double 0.426508
	.quad	0x3fb26bb55ac03ff7              # double 0.071956000000000006
	.quad	0x3fe267ad8e432442              # double 0.575156
	.quad	0x3fb321a2e7f6f4bf              # double 0.074732000000000007
	.quad	0x3fb44178705425f2              # double 0.079123999999999999
	.quad	0x3fe31667b5f1bef5              # double 0.59648500000000004
	.quad	0x3fd1d9a0f0a5efe9              # double 0.27890799999999999
	.quad	0x3fd36e503fb37436              # double 0.30360799999999999
	.quad	0x3fd7d4e09784ec63              # double 0.37236799999999998
	.quad	0x3fe311b3f20a73f7              # double 0.59591099999999997
	.quad	0x3fdac176577531db              # double 0.41805799999999999
	.quad	0x3fdacb1897a67a53              # double 0.41864600000000002
	.quad	0x3fae121ee675147f              # double 0.058731999999999999
	.quad	0x3fbbdbe3c105186e              # double 0.108824
	.quad	0x3fe731df761cbccf              # double 0.72483799999999998
	.quad	0x3fcdd1676640a6b9              # double 0.23295299999999999
	.quad	0x3fdcd0c3d25247cb              # double 0.45024199999999998
	.quad	0x3fe2c74b838c111b              # double 0.58682800000000002
	.quad	0x3fef4cad57bc7f78              # double 0.97811000000000003
	.quad	0x3fda9d2391d57ffa              # double 0.41584100000000002
	.quad	0x3fcd98d8a979e16d              # double 0.23122699999999999
	.quad	0x3fef2c258d5842b7              # double 0.97413899999999997
	.quad	0x3fdc5532617c1bda              # double 0.44269999999999998
	.quad	0x3fee4b7f5a5332ad              # double 0.946716
	.quad	0x3fe2d79f23465626              # double 0.58882100000000004
	.quad	0x3fecd87f88765ba7              # double 0.90142800000000001
	.quad	0x3fe6f1de69ad42c4              # double 0.71702500000000002
	.quad	0x3fe4b341e14bdfd2              # double 0.64688199999999996
	.quad	0x3fe87f51efb6dca0              # double 0.76554199999999994
	.quad	0x3fbff7f06705c897              # double 0.124877
	.quad	0x3fe8aaae297396d1              # double 0.77083500000000005
	.quad	0x3fe2401c4fc1df33              # double 0.570326
	.quad	0x3fea73c70c996b76              # double 0.82663299999999995
	.quad	0x3fe6ab14ec204f2b              # double 0.70838400000000001
	.quad	0x3fdd694467381d7e              # double 0.45955000000000001
	.quad	0x3fb830f49491f2dc              # double 0.094496999999999998
	.quad	0x3fe17df3b645a1cb              # double 0.54662500000000003
	.quad	0x3fd888ca3e7d1351              # double 0.383349
	.quad	0x3feaee9bbf0dc769              # double 0.84162700000000001
	.quad	0x3f6c4113c68661ae              # double 0.0034489999999999998
	.quad	0x3feca07d4e09784f              # double 0.89459100000000003
	.quad	0x3fd0b0ff10ecb74e              # double 0.26080300000000001
	.quad	0x3fcf2e3821af7d31              # double 0.24359800000000001
	.quad	0x3fcf5675579af188              # double 0.24482599999999999
	.quad	0x3fefa84167a95c85              # double 0.98928899999999997
	.quad	0x3fea14ca925fe975              # double 0.81503800000000004
	.quad	0x3fe5cd530489d27c              # double 0.68131399999999998
	.quad	0x3feff24b76f6d762              # double 0.99832699999999996
	.quad	0x3fee87ad080b673c              # double 0.95406199999999996
	.quad	0x3fe6c8fd9fd36f7e              # double 0.71203499999999997
	.quad	0x3fe4359146e4c0df              # double 0.63153899999999996
	.quad	0x3fd05ae5ffa3b9ae              # double 0.255548
	.quad	0x3fc73f20a73f748a              # double 0.181614
	.quad	0x3fdff3d3a1d323ff              # double 0.49925700000000001
	.quad	0x3fd24d1633482be9              # double 0.28595500000000001
	.quad	0x3fee3b1af3a14cec              # double 0.94471499999999997
	.quad	0x3fe5e74afd545415              # double 0.68448399999999998
	.quad	0x3fc67d1bb4916ca4              # double 0.17569299999999999
	.quad	0x3fc2a66dbd72bcb6              # double 0.145704
	.quad	0x3fd3179bfdf7e804              # double 0.29831600000000003
	.quad	0x3fe3eb8305d95dd5              # double 0.62249900000000002
	.quad	0x3fe38a02b841248d              # double 0.61059699999999995
	.quad	0x3fe191cb039ef0f1              # double 0.54904699999999995
	.quad	0x3fef5e84f09528f2              # double 0.98028800000000005
	.quad	0x3fe1f6c2699c7bcc              # double 0.56137199999999998
	.quad	0x3fdf8ed1bf7ad4b2              # double 0.49309199999999997
	.quad	0x3fe4d1d4738a3b58              # double 0.65061400000000003
	.quad	0x3fd4a9da597d49d8              # double 0.32286700000000002
	.quad	0x3fddb61bb05faebc              # double 0.46423999999999999
	.quad	0x3fe4ef0281ba7fc3              # double 0.65417599999999998
	.quad	0x3fe083947496aad2              # double 0.51606200000000002
	.quad	0x3fe5b838c111ada7              # double 0.67873799999999995
	.quad	0x3fe464e8b7e4de3c              # double 0.63731800000000005
	.quad	0x3fd9766c6de76428              # double 0.39785300000000001
	.quad	0x3fea0635a426bb56              # double 0.81325800000000004
	.quad	0x3fecef8ceb356da0              # double 0.90424199999999999
	.quad	0x3fe0594d0dcfcc5c              # double 0.51090100000000005
	.quad	0x3fbff9c62a1b5c7d              # double 0.124905
	.quad	0x3fca615a8deb0fae              # double 0.206096
	.quad	0x3fc8fea3df6db941              # double 0.195271
	.quad	0x3fc37dc7abfb9bed              # double 0.15227599999999999
	.quad	0x3fefa0c49ba5e354              # double 0.988375
	.quad	0x3fec5e481f53825e              # double 0.88650899999999999
	.quad	0x3fc783f0bae89eba              # double 0.18371399999999999
	.quad	0x3fded716d2aa5c5f              # double 0.48187799999999997
	.quad	0x3fdaa6fc58ab92c0              # double 0.41644199999999998
	.quad	0x3fe2d4003254e6e2              # double 0.58837899999999999
	.quad	0x3fdf80b673c4f3ba              # double 0.49223099999999997
	.quad	0x3fc6388ebcc6c54c              # double 0.17360100000000001
	.quad	0x3fde4712e40852b5              # double 0.47308800000000001
	.quad	0x3fec0678c0053e2d              # double 0.87578999999999996
	.quad	0x3fea731d2e0e3044              # double 0.82655199999999995
	.quad	0x3fcb91dde37585be              # double 0.215389
	.quad	0x3fed54195cc857f3              # double 0.916516
	.quad	0x3feda3bddfc9ff93              # double 0.92623800000000001
	.quad	0x3fb23897204295a7              # double 0.071176000000000003
	.quad	0x3fd8d94d0dcfcc5c              # double 0.38826300000000002
	.quad	0x3fb9bb4916ca46e1              # double 0.10051400000000001
	.quad	0x3fd3e56473471f79              # double 0.31087599999999999
	.quad	0x3fec046e8f29d40f              # double 0.87554100000000001
	.quad	0x3fe6fc69728a6117              # double 0.71831199999999995
	.quad	0x3fbcc32a8c9b8455              # double 0.11235299999999999
	.quad	0x3fe04970f7b9e061              # double 0.508965
	.quad	0x3feeba860dcb9a9e              # double 0.96026900000000004
	.quad	0x3fdd1eff9f87f024              # double 0.455017
	.quad	0x3fee755bccaf709b              # double 0.95182599999999995
	.quad	0x3fdfce2d1f1cfbb9              # double 0.49695899999999998
	.quad	0x3fec5614df8b1572              # double 0.88550799999999996
	.quad	0x3fb90470a808c826              # double 0.097724000000000005
	.quad	0x3fbc3621fafc8b00              # double 0.11020099999999999
	.quad	0x3fc21abd1aa821f3              # double 0.14144100000000001
	.quad	0x3fe0f525460aa64c              # double 0.52992499999999998
	.quad	0x3fe45e39713ad5bf              # double 0.63650200000000001
	.quad	0x3fc9cbff47735c18              # double 0.20153799999999999
	.quad	0x3fe4055b89939219              # double 0.62565400000000004
	.quad	0x3fe0cedd48451330              # double 0.52525200000000005
	.quad	0x3fed406e19b90eaa              # double 0.91411500000000001
	.quad	0x3fbf7b5aea3161a2              # double 0.122976
	.quad	0x3fea7533f42352eb              # double 0.82680699999999996
	.quad	0x3fe366256366d7a5              # double 0.60621899999999995
	.quad	0x3fcaaed1394317ad              # double 0.20846000000000001
	.quad	0x3fcdd8b60f1b25f6              # double 0.23317599999999999
	.quad	0x3fcf2d4d4024b33e              # double 0.24357000000000001
	.quad	0x3fdfc8a372606fac              # double 0.49662099999999998
	.quad	0x3fdc4f2ae07e5a79              # double 0.442332
	.quad	0x3f6a8cdea033e78e              # double 0.003241
	.quad	0x3fb3a8f7db6e5040              # double 0.076797000000000004
	.quad	0x3fead72bcb5fe543              # double 0.83876600000000001
	.quad	0x3fd76afcce1c5825              # double 0.36590499999999998
	.quad	0x3fe1565e4606748e              # double 0.54179299999999997
	.quad	0x3fd92799a1fd156a              # double 0.393042
	.quad	0x3fe4abd7f51efb6e              # double 0.64597700000000002
	.quad	0x3fee32e7b3d8e001              # double 0.94371400000000005
	.quad	0x3fd422d5171e29b7              # double 0.31462600000000002
	.quad	0x3fd09d0635a426bb              # double 0.25958399999999998
	.quad	0x3fe5c7cb70ac3a86              # double 0.68063899999999999
	.quad	0x3fe039b66f9335d2              # double 0.50704499999999997
	.quad	0x3fcf46cb966be7b0              # double 0.24434800000000001
	.quad	0x3f909f1f14983d79              # double 0.016232
	.quad	0x3fe522f2734f82f5              # double 0.66051599999999999
	.quad	0x3fda68cac4b4d057              # double 0.41264600000000001
	.quad	0x3f911d798d8a979e              # double 0.016714
	.quad	0x3fe97e79ee02a77a              # double 0.79668899999999998
	.quad	0x3fbd6659d12cadde              # double 0.114843
	.quad	0x3fe68a915379fa98              # double 0.70441500000000001
	.quad	0x3fe7bd8be7296f65              # double 0.74188799999999999
	.quad	0x3fe09a30984e3fff              # double 0.51882200000000001
	.quad	0x3fbf061c79b34a45              # double 0.121187
	.quad	0x3fe6146801711948              # double 0.68999100000000002
	.quad	0x3fc66013660e51d2              # double 0.17480699999999999
	.quad	0x3feb3df090f733a9              # double 0.85131100000000004
	.quad	0x3fdfe12a51e321a3              # double 0.49811800000000001
	.quad	0x3fd0e31d712a0ec7              # double 0.26386199999999999
	.quad	0x3fe6f37da61e0c5b              # double 0.71722300000000005
	.quad	0x3fd273215fcc1872              # double 0.28827700000000001
	.quad	0x3fe1704ddb5525cc              # double 0.54495899999999997
	.quad	0x3faf325918a009f6              # double 0.060930999999999999
	.quad	0x3fcaa497fa5d28d0              # double 0.208148
	.quad	0x3fecc2e33eff1950              # double 0.89878999999999998
	.quad	0x3fe1dfaca3619978              # double 0.55855399999999999
	.quad	0x3fdc7faa044ae85c              # double 0.44529200000000002
	.quad	0x3fe03c74fb549f95              # double 0.50738000000000005
	.quad	0x3fe3f6a50d6b228e              # double 0.62385800000000002
	.quad	0x3fee6f9335d249e4              # double 0.95111999999999996
	.quad	0x3fe651aeb3dd11be              # double 0.69747099999999995
	.quad	0x3fe839e279dd3bb0              # double 0.75706600000000002
	.quad	0x3fee746ed245b292              # double 0.95171300000000003
	.quad	0x3fe1199bb2788db0              # double 0.53437599999999996
	.quad	0x3fe25e0f7fcfc3f8              # double 0.57398199999999999
	.quad	0x3fef58e0008637bd              # double 0.97959899999999999
	.quad	0x3feef036c9c0a8d2              # double 0.96682299999999999
	.quad	0x3fedce9813879c41              # double 0.93146899999999999
	.quad	0x3fc0450acc0bdcad              # double 0.127107
	.quad	0x3fe5aeff5c6c11a1              # double 0.67761199999999999
	.quad	0x3fe421ec4e7253da              # double 0.62914099999999995
	.quad	0x3fe0323dd54da4cf              # double 0.50613300000000006
	.quad	0x3fef5668c2613900              # double 0.979298
	.quad	0x3fcbee0b0af5fd48              # double 0.21820200000000001
	.quad	0x3fe1e6149c6f36f0              # double 0.55933600000000006
	.quad	0x3fbff5b5fa22706d              # double 0.124843
	.quad	0x3fb8faeff5c6c11a              # double 0.097578999999999999
	.quad	0x3fe0f45bf26f1dc5              # double 0.52982899999999999
	.quad	0x3fd16e2a80064a9d              # double 0.27234900000000001
	.quad	0x3f8da836eb4e9814              # double 0.014481000000000001
	.quad	0x3fcd8b47c73eee52              # double 0.23081299999999999
	.quad	0x3fe3c70435efa616              # double 0.61804400000000004
	.quad	0x3fc2764adff822bc              # double 0.144235
	.quad	0x3fee0262456f75da              # double 0.93779100000000004
	.quad	0x3fa0bb2bba98eda2              # double 0.032677999999999999
	.quad	0x3fe26c332f01754b              # double 0.575708
	.quad	0x3fe53fb58d1526d9              # double 0.66402700000000003
	.quad	0x3feedd56f32bdc27              # double 0.96451900000000001
	.quad	0x3fd3e26d4801f751              # double 0.310695
	.quad	0x3feb9680e0653006              # double 0.86212200000000005
	.quad	0x3fed52d666a98245              # double 0.91636200000000001
	.quad	0x3fd3548a9bcfd4bf              # double 0.302035
	.quad	0x3fd2e67d77fae361              # double 0.29531800000000002
	.quad	0x3fc2b9cb6848beb6              # double 0.14629500000000001
	.quad	0x3fdef9b13165d399              # double 0.48398999999999998
	.quad	0x3fe15d15f02c4d66              # double 0.54261300000000001
	.quad	0x3fd882cb20fb224b              # double 0.38298300000000002
	.quad	0x3feebc2dadb8348f              # double 0.96047099999999996
	.quad	0x3fe13e78e1932d6f              # double 0.53887600000000002
	.quad	0x3fef22424a276b7f              # double 0.97293200000000001
	.quad	0x3fecdb24e9c45458              # double 0.90175099999999997
	.quad	0x3fd5ac5c13fd0d06              # double 0.33864499999999997
	.quad	0x3fee79fec99f1ae3              # double 0.95239200000000002
	.quad	0x3fc41522a6f3f530              # double 0.15689500000000001
	.quad	0x3fef6b3dd11be6e6              # double 0.98184099999999996
	.quad	0x3fe568bc169c23b8              # double 0.66903500000000005
	.quad	0x3fee57e45803cd14              # double 0.94822899999999998
	.quad	0x3fcb21ccd9620685              # double 0.21196899999999999
	.quad	0x3fdfe80389f83be6              # double 0.49853599999999998
	.quad	0x3fe5b1876188b114              # double 0.677921
	.quad	0x3fe83fc86cebbba5              # double 0.75778599999999996
	.quad	0x3fd4b1a2a4db163c              # double 0.32334200000000002
	.quad	0x3fe6eb37867f0aa2              # double 0.71621299999999999
	.quad	0x3fdbaf8df7a4e7ab              # double 0.43258999999999997
	.quad	0x3feb548882f0e0a8              # double 0.85406899999999997
	.quad	0x3fed37585be1a826              # double 0.91300599999999998
	.quad	0x3fee9d909f1f1498              # double 0.95673399999999997
	.quad	0x3fde13c254a3c643              # double 0.46995599999999998
	.quad	0x3fd4e39b456b441c              # double 0.32639200000000002
	.quad	0x3fb41d19157abb88              # double 0.078569
	.quad	0x3fe9ecc3e3193f6c              # double 0.81015199999999998
	.quad	0x3fe95ebfa8f7db6e              # double 0.79281599999999997
	.quad	0x3fe45b5525cc4263              # double 0.63614899999999996
	.quad	0x3fe1c9bc77143394              # double 0.55587600000000004
	.quad	0x3fe73f01322f2735              # double 0.726441
	.quad	0x3fe4917939a7c17b              # double 0.64275800000000005
	.quad	0x3fdd4449dbec2481              # double 0.45729300000000001
	.quad	0x3fd53beec39799e5              # double 0.33178299999999999
	.quad	0x3fdd44aa53fc0097              # double 0.457316
	.quad	0x3fedafe82517e77d              # double 0.92772299999999996
	.quad	0x3fea4228997c3d68              # double 0.82057599999999997
	.quad	0x3fe5b5fa22706d50              # double 0.67846399999999996
	.quad	0x3feef97edc7ef178              # double 0.96795600000000003
	.quad	0x3fda7fe8ee6b8306              # double 0.41405700000000001
	.quad	0x3feaf2c0e7bc3c5c              # double 0.84213300000000002
	.quad	0x3fdb705857afea3e              # double 0.428732
	.quad	0x3fe9ba12b5e529bb              # double 0.80396400000000001
	.quad	0x3fe6f2b66b6177ea              # double 0.71712799999999999
	.quad	0x3feed9a30984e400              # double 0.96406700000000001
	.quad	0x3fe3c794ea077037              # double 0.61811300000000002
	.quad	0x3fef6a6c1a048e04              # double 0.98174099999999997
	.quad	0x3fcf3953dea465a5              # double 0.24393699999999999
	.quad	0x3fe9488c60cbf2b2              # double 0.79010599999999998
	.quad	0x3fe813e81450efdd              # double 0.75243000000000004
	.quad	0x3fdaa433508f648c              # double 0.41627199999999998
	.quad	0x3fed4f09528f190d              # double 0.91589799999999999
	.quad	0x3feff75104d551d7              # double 0.99894000000000005
	.quad	0x3feb94812be48a59              # double 0.86187800000000003
	.quad	0x3fccef99806f2629              # double 0.22606200000000001
	.quad	0x3fe6333daf8df7a5              # double 0.69375500000000001
	.quad	0x3fe67b3fa6defc7a              # double 0.70254499999999998
	.quad	0x3fdd926c7eae5bc8              # double 0.46206199999999997
	.quad	0x3feede4c51116a8c              # double 0.96463600000000004
	.quad	0x3fe9aed352220bc4              # double 0.80259100000000005
	.quad	0x3fed80d1b71758e2              # double 0.92197499999999999
	.quad	0x3fbb71c970f7b9e0              # double 0.10720499999999999
	.quad	0x3febb84db9c7368b              # double 0.86624800000000002
	.quad	0x3faf4eca686e7e63              # double 0.061148000000000001
	.quad	0x3fd4b58d1526d8b2              # double 0.32358100000000001
	.quad	0x3fd1709b738e6d16              # double 0.27249800000000002
	.quad	0x3fef9f212d773190              # double 0.98817500000000003
	.quad	0x3feaebedfa43fe5d              # double 0.84130000000000005
	.quad	0x3fe24b1897a67a53              # double 0.57166700000000004
	.quad	0x3feafbf1e8e60807              # double 0.84325499999999998
	.quad	0x3faed8b1dd5d3dc9              # double 0.060247000000000002
	.quad	0x3fee1001d5c31594              # double 0.93945400000000001
	.quad	0x3fc016f0068db8bb              # double 0.12570000000000001
	.quad	0x3feb7fe8ee6b8306              # double 0.85936400000000002
	.quad	0x3fe43bfb58d1526e              # double 0.63232200000000005
	.quad	0x3fedbc2b94d94079              # double 0.92922000000000005
	.quad	0x3fa3e4abe6a337a8              # double 0.038854
	.quad	0x3fe0b6dca07f66e8              # double 0.52232199999999995
	.quad	0x3fdd5515054ac29c              # double 0.458318
	.quad	0x3fe3fca2120e1f7d              # double 0.62458899999999995
	.quad	0x3fbb1572580c3090              # double 0.105796
	.quad	0x3faf7d30ad46f588              # double 0.061502000000000001
	.quad	0x3fcfeb18116ebd4d              # double 0.249362
	.quad	0x3f5f4f50a02b8412              # double 0.0019109999999999999
	.quad	0x3fec1e2bcf91a32b              # double 0.87868299999999999
	.quad	0x3feebfe9fadafd11              # double 0.96092699999999997
	.quad	0x3fc4c197e5647347              # double 0.162158
	.quad	0x3fea11904b3c3e75              # double 0.81464400000000003
	.quad	0x3fe5a157689ca18c              # double 0.67594500000000002
	.quad	0x3feb39a9da597d4a              # double 0.85078900000000002
	.quad	0x3fc93fb7a5f41aef              # double 0.19725699999999999
	.quad	0x3feb7dc37a3db3c0              # double 0.85910200000000003
	.quad	0x3fb6938de6ddf00b              # double 0.088189000000000003
	.quad	0x3fdc5e1c15097c81              # double 0.44324400000000003
	.quad	0x3feba48301a79fed              # double 0.86383200000000004
	.quad	0x3fb3b43d89ce4a7b              # double 0.076968999999999996
	.quad	0x3fe32f2b66b6177f              # double 0.59950800000000004
	.quad	0x3fca66a11ec918e3              # double 0.206257
	.quad	0x3fe30121682f9442              # double 0.59388799999999997
	.quad	0x3fea551f81a5870e              # double 0.82289100000000004
	.quad	0x3fbb43d89ce4a7b5              # double 0.106504
	.quad	0x3fd585b18548a9bd              # double 0.336285
	.quad	0x3fee38759253543b              # double 0.94439200000000001
	.quad	0x3faf68be2f7b17ce              # double 0.061345999999999998
	.quad	0x3fd56a6a012599ed              # double 0.33461999999999997
	.quad	0x3f9264e48626f60e              # double 0.017963
	.quad	0x3fd00a5efe931876              # double 0.25063299999999999
	.quad	0x3fedc33721d53cde              # double 0.93008000000000002
	.quad	0x3fc168c692f6e829              # double 0.13600999999999999
	.quad	0x3fe9a43bb40b34e7              # double 0.80129799999999995
	.quad	0x3fe3cfe9b7bf1e8e              # double 0.61912999999999996
	.quad	0x3fea12ba16e7a312              # double 0.81478600000000001
	.quad	0x3fe58a02b841248d              # double 0.67309699999999995
	.quad	0x3fe951244a6223e2              # double 0.79115500000000005
	.quad	0x3fe0c0357a355044              # double 0.52346300000000001
	.quad	0x3fd72ca148ba83f5              # double 0.362099
	.quad	0x3fe353b0813cab82              # double 0.603966
	.quad	0x3fe290624dd2f1aa              # double 0.580125
	.quad	0x3f58e757928e0c9e              # double 0.0015200000000000001
	.quad	0x3fd847f993d5347a              # double 0.37939299999999998
	.quad	0x3fd7a5df2239e6ac              # double 0.36949900000000002
	.quad	0x3fd4b0d9513f8db5              # double 0.32329400000000003
	.quad	0x3fe0e17c1bda511a              # double 0.52752500000000002
	.quad	0x3fe64e2b063e07a3              # double 0.69704200000000005
	.quad	0x3fe008765ba6efc3              # double 0.50103299999999995
	.quad	0x3fe1d475a31a4bdc              # double 0.55718500000000004
	.quad	0x3fed9e90795f676f              # double 0.92560600000000004
	.quad	0x3fd60fbeb9e492bc              # double 0.34471099999999999
	.quad	0x3fc5fe64f54d1e97              # double 0.17182600000000001
	.quad	0x3fcab178b3700475              # double 0.208541
	.quad	0x3fe44b09e98dcdb3              # double 0.63415999999999995
	.quad	0x3fe98b2e9ccb7d41              # double 0.79823999999999995
	.quad	0x3fd18a222d5171e3              # double 0.27405600000000002
	.quad	0x3fcf02795703f2d4              # double 0.24226300000000001
	.quad	0x3fd09b0ab2e1693c              # double 0.259463
	.quad	0x3fe29b56323bbc6f              # double 0.58146200000000003
	.quad	0x3fe97737da61e0c6              # double 0.79580300000000004
	.quad	0x3fe20a73f748a15a              # double 0.56377600000000005
	.quad	0x3fe89e0c5a8155d6              # double 0.769293
	.quad	0x3fe4b111f0c34c1b              # double 0.64661500000000005
	.quad	0x3fc0ad362e903644              # double 0.13028600000000001
	.quad	0x3fc55cd0bb6ed677              # double 0.16689499999999999
	.quad	0x3fb18dcdb37c99af              # double 0.068570000000000006
	.quad	0x3fed92ddbdb5d895              # double 0.92417800000000006
	.quad	0x3fd478c868b9fdbd              # double 0.31987199999999999
	.quad	0x3fb4e1719f7f8ca8              # double 0.081564999999999999
	.quad	0x3feba2bbecaab8a6              # double 0.86361500000000002
	.quad	0x3fe0c4da9003eea2              # double 0.52403
	.quad	0x3fe27f90d9d7774b              # double 0.57807200000000003
	.quad	0x3f88ec95bff04578              # double 0.01217
	.quad	0x3fe1580a17b0f6ad              # double 0.54199699999999995
	.quad	0x3fe165881a1554fc              # double 0.54364400000000002
	.quad	0x3fdabb1f255f351a              # double 0.41767100000000001
	.quad	0x3fe66d8d36b4c7f3              # double 0.70087299999999997
	.quad	0x3fe1bb5393250b52              # double 0.55411699999999997
	.quad	0x3fc7ad18d25edd05              # double 0.18497
	.quad	0x3fea4282c6ef3d3a              # double 0.82061899999999999
	.quad	0x3fe942bb6672fba0              # double 0.78939599999999998
	.quad	0x3fdee6c4c5974e66              # double 0.48283500000000001
	.quad	0x3fbbed0f6273929f              # double 0.109086
	.quad	0x3fe78800eae18aca              # double 0.73535200000000001
	.quad	0x3fd9570c564f97ee              # double 0.39593800000000001
	.quad	0x3fa262aa19439de5              # double 0.035909000000000003
	.quad	0x3fe25c1615ebfa8f              # double 0.57374099999999995
	.quad	0x3fc3a86940357a35              # double 0.15357699999999999
	.quad	0x3fa78cc9a77e5eab              # double 0.045996000000000002
	.quad	0x3fd11e4b44a1f080              # double 0.26747399999999999
	.quad	0x3fd3ed45e9185cee              # double 0.31135699999999999
	.quad	0x3fc3a1ec4e7253da              # double 0.15337899999999999
	.quad	0x3fed749adc8fb86f              # double 0.92048399999999997
	.quad	0x3fe3cfc829cfdd23              # double 0.61911400000000005
	.quad	0x3fe555e8d5410f95              # double 0.66673700000000002
	.quad	0x3fdda7bd48cb4aed              # double 0.46336300000000002
	.quad	0x3fb8431bde82d7b6              # double 0.094773999999999997
	.quad	0x3fe6082491afc04d              # double 0.68849400000000005
	.quad	0x3fc1463497b7414a              # double 0.13495499999999999
	.quad	0x3fea90364388ebcc              # double 0.83010399999999995
	.quad	0x3fdcb54e2b063e08              # double 0.44856600000000002
	.quad	0x3fee97c1bda5119d              # double 0.95602500000000001
	.quad	0x3fea15c853c14834              # double 0.81515899999999996
	.quad	0x3fe763ffef39085f              # double 0.73095699999999997
	.quad	0x3fb1a7e308787486              # double 0.068968000000000002
	.quad	0x3fe30ac9f2fdb8fe              # double 0.59506700000000001
	.quad	0x3fd57c5ef62f9ca6              # double 0.33571600000000001
	.quad	0x3fd70e496ededaec              # double 0.36024699999999998
	.quad	0x3fd63804534bd76f              # double 0.34716900000000001
	.quad	0x3fb393ee5eedcc21              # double 0.076476000000000002
	.quad	0x3fe775275ee99a63              # double 0.73305100000000001
	.quad	0x3fd7c44bf4cb1898              # double 0.37135600000000002
	.quad	0x3fee0787485e3da3              # double 0.938419
	.quad	0x3fe037c3504c48ae              # double 0.50680700000000001
	.quad	0x3fea5c4651f3e89b              # double 0.82376400000000005
	.quad	0x3fd5b4395810624e              # double 0.33912500000000001
	.quad	0x3fd934a44c7b02d6              # double 0.39383800000000002
	.quad	0x3fabdab5c39bcba3              # double 0.054403
	.quad	0x3fd6a2a0a958537e              # double 0.35367599999999999
	.quad	0x3fe0355cd91eeaa7              # double 0.50651400000000002
	.quad	0x3fdc047d3d4280ae              # double 0.437774
	.quad	0x3fcba4a48f96e158              # double 0.21596199999999999
	.quad	0x3fd4b38d60a63305              # double 0.323459
	.quad	0x3fec4a70d1fa3337              # double 0.88408699999999996
	.quad	0x3fa2f46aa087ca64              # double 0.037020999999999998
	.quad	0x3fef75b5fa22706d              # double 0.98311899999999996
	.quad	0x3fe093ab430f4949              # double 0.51802599999999999
	.quad	0x3fe409f83be6601c              # double 0.62621700000000002
	.quad	0x3fe0b422467be554              # double 0.52198900000000004
	.quad	0x3fec247cb70ac3a8              # double 0.87945399999999996
	.quad	0x3fdf030c23fab10c              # double 0.48456100000000002
	.quad	0x3fde4da9003eea21              # double 0.47349000000000002
	.quad	0x3fe982f512663411              # double 0.79723599999999994
	.quad	0x3fe93315d701d9f5              # double 0.78748600000000002
	.quad	0x3fa0b220791c4b90              # double 0.032608999999999999
	.quad	0x3fbeafab53d640ea              # double 0.119868
	.quad	0x3fe0183d790752db              # double 0.50295900000000004
	.quad	0x3fe0be07a28bb0a3              # double 0.52319700000000002
	.quad	0x3fde7c49fd7a13c2              # double 0.47633599999999998
	.quad	0x3fdcae924f227d03              # double 0.44815500000000003
	.quad	0x3fda4d7f0ed3d85a              # double 0.41098000000000001
	.quad	0x3fe06d15ad106ee3              # double 0.51331599999999999
	.quad	0x3fdfb7457c0b1359              # double 0.49556099999999997
	.quad	0x3fe8cdd93c46d82c              # double 0.77512800000000003
	.quad	0x3fd504c48adeebb3              # double 0.32841599999999999
	.quad	0x3feed94f26aec072              # double 0.96402699999999997
	.quad	0x3fde7a398201cd60              # double 0.47621000000000002
	.quad	0x3fe8debd9018e758              # double 0.77719000000000005
	.quad	0x3fea5d76683c297c              # double 0.823909
	.quad	0x3fe8be20ccff21b4              # double 0.77320900000000003
	.quad	0x3fd69845dc832336              # double 0.35304400000000002
	.quad	0x3fdbbb2bba98eda2              # double 0.43329899999999999
	.quad	0x3fe64f1c3265adda              # double 0.69715700000000003
	.quad	0x3feebfab10ba6267              # double 0.960897
	.quad	0x3fe51eafee6fb4c4              # double 0.65999600000000003
	.quad	0x3fdf9ffd60e94ee4              # double 0.49414000000000002
	.quad	0x3fb92ccf6be37de9              # double 0.098339999999999997
	.quad	0x3febf7c45cbbc2b9              # double 0.87399499999999997
	.quad	0x3fd875ea67e846a6              # double 0.38219700000000001
	.quad	0x3fef88a8b08dd1e5              # double 0.98543199999999997
	.quad	0x3fdc917507e9d94d              # double 0.446378
	.quad	0x3fd589dadfb506dd              # double 0.33653899999999998
	.quad	0x3fea26a012599ed8              # double 0.81721500000000002
	.quad	0x3fed244417870542              # double 0.91067699999999996
	.quad	0x3fd1ac215b9a5a8a              # double 0.27613100000000002
	.quad	0x3fda8be7296f6513              # double 0.41478900000000002
	.quad	0x3fe6c3d68405b39e              # double 0.71140599999999998
	.quad	0x3fda4eb13dfb0d52              # double 0.411053
	.quad	0x3fee64fdb09a671f              # double 0.94982800000000001
	.quad	0x3feb47c0f4517614              # double 0.85250899999999996
	.quad	0x3fe01884c6a3bde0              # double 0.50299300000000002
	.quad	0x3fefcc271fff79c8              # double 0.99367099999999997
	.quad	0x3fe83eb399f5dfec              # double 0.75765400000000004
	.quad	0x3fc5abead4f5903a              # double 0.16930899999999999
	.quad	0x3fd6a5d28d002e23              # double 0.35387099999999999
	.quad	0x3fd6ec56d5cfaace              # double 0.35817500000000002
	.quad	0x3febbe1c9b413986              # double 0.86695699999999998
	.quad	0x3fe3ba19008205ff              # double 0.61646699999999999
	.quad	0x3fe3e6e008e9b38d              # double 0.62193299999999996
	.quad	0x3fd02231832fcac9              # double 0.25208700000000001
	.quad	0x3fc89cb252ce032e              # double 0.19228200000000001
	.quad	0x3fe0e2584f4c6e6e              # double 0.52763000000000004
	.quad	0x3fe92aa5c5f7c676              # double 0.78645600000000004
	.quad	0x3fe41c12f09d8c6d              # double 0.62842699999999996
	.quad	0x3fe146c11a11233e              # double 0.53988700000000001
	.quad	0x3fe82e7f6f4be836              # double 0.75567600000000001
	.quad	0x3fa647baa9b499d0              # double 0.043515999999999999
	.quad	0x3fd2445aa2e3c537              # double 0.28542200000000001
	.quad	0x3fecf57d5a9eb207              # double 0.90496699999999997
	.quad	0x3fee5e071c53f39d              # double 0.94897799999999999
	.quad	0x3fe263ffef39085f              # double 0.57470699999999997
	.quad	0x3fe371bac2df0d41              # double 0.60763299999999998
	.quad	0x3fe102f2f9873ffb              # double 0.53161000000000003
	.quad	0x3fee8b502ababead              # double 0.95450599999999997
	.quad	0x3feb537c1376d549              # double 0.85394099999999995
	.quad	0x3fcc34330d73860a              # double 0.22034300000000001
	.quad	0x3fec8b178b370047              # double 0.89197899999999997
	.quad	0x3fde90abb44e50c6              # double 0.47758
	.quad	0x3fd6675147f13059              # double 0.35005599999999998
	.quad	0x3fecc86f049a9974              # double 0.89946700000000001
	.quad	0x3f9dc5931ca7d673              # double 0.029073999999999999
	.quad	0x3fe1bbba55d1c3ad              # double 0.55416600000000005
	.quad	0x3feb69af5ba2be06              # double 0.85665100000000005
	.quad	0x3fc95a6c5d206c87              # double 0.198072
	.quad	0x3fde779e9d0e9920              # double 0.476051
	.quad	0x3fd591f70de8f6cf              # double 0.337034
	.quad	0x3fd090de093532e8              # double 0.25884200000000002
	.quad	0x3fee05b9e8c47a18              # double 0.938199
	.quad	0x3fd916c61522a6f4              # double 0.392015
	.quad	0x3fe6655193708aad              # double 0.69986800000000005
	.quad	0x3fe3528f190d1740              # double 0.60382800000000003
	.quad	0x3fcec5f394b7b289              # double 0.24041599999999999
	.quad	0x3fe65b0574b40703              # double 0.69861099999999998
	.quad	0x3fd8efbb0e5e6794              # double 0.38963199999999998
	.quad	0x3f8ec80c73abc947              # double 0.01503
	.quad	0x3f803a7546d3f9e8              # double 0.0079240000000000004
	.quad	0x3fd6e40852b4d8ba              # double 0.35766799999999999
	.quad	0x3fb14bdfd2630ec3              # double 0.067563999999999999
	.quad	0x3fe435286b59146e              # double 0.63148899999999997
	.quad	0x3fe7c5b078d92fb2              # double 0.74288200000000004
	.quad	0x3fbeca57a786c227              # double 0.12027500000000001
	.quad	0x3fec74eca686e7e6              # double 0.88927299999999998
	.quad	0x3fd97f993d5347a6              # double 0.39841300000000002
	.quad	0x3fd8304ccee5abc1              # double 0.37794800000000001
	.quad	0x3fea47de5082cf53              # double 0.82127300000000003
	.quad	0x3fd41b93037d6302              # double 0.31418299999999999
	.quad	0x3fee8023a6ce3583              # double 0.95314200000000004
	.quad	0x3fdbaca36199780c              # double 0.43241200000000002
	.quad	0x3fb21e603d577964              # double 0.070776000000000006
	.quad	0x3fe47faa044ae85c              # double 0.64058400000000004
	.quad	0x3fc0a31e7d9988d3              # double 0.12997800000000001
	.quad	0x3fed4b9cb6848beb              # double 0.91547999999999996
	.quad	0x3feae277c45cbbc3              # double 0.84014500000000003
	.quad	0x3fce611fd5885d31              # double 0.23733899999999999
	.quad	0x3fee9c64ba94bbe4              # double 0.95659099999999996
	.quad	0x3fe1907b784662bb              # double 0.54888700000000001
	.quad	0x3feffb762d83c6c9              # double 0.99944599999999994
	.quad	0x3fdd9ca18bd66278              # double 0.46268500000000001
	.quad	0x3fe895831f03d146              # double 0.76825100000000002
	.quad	0x3fa3b0813cab81f9              # double 0.038455999999999997
	.quad	0x3fd77d5ed06fef7c              # double 0.36702699999999999
	.quad	0x3fd6886594af4f0e              # double 0.35207500000000003
	.quad	0x3fa8fc9363f572de              # double 0.048801999999999998
	.quad	0x3fd8f9096bb98c7e              # double 0.39019999999999999
	.quad	0x3fd4f55de58e64b2              # double 0.32747599999999999
	.quad	0x3fe68f92af9a8cdf              # double 0.70502600000000004
	.quad	0x3fc9d41fa7653437              # double 0.20178599999999999
	.quad	0x3fec947064ece9a3              # double 0.89312000000000002
	.quad	0x3fe7c638c9752978              # double 0.74294700000000002
	.quad	0x3fde4b48d3ae685e              # double 0.47334500000000002
	.quad	0x3fd6d17c5ef62f9d              # double 0.35653600000000002
	.quad	0x3fdc43a2163fdd66              # double 0.44162800000000002
	.quad	0x3fe0fe111276fb09              # double 0.53101399999999999
	.quad	0x3fcb5097c80841ee              # double 0.213397
	.quad	0x3fe1e35a426bb55b              # double 0.55900300000000003
	.quad	0x3fc3f47735c182ed              # double 0.15589800000000001
	.quad	0x3fe6a9ac36544fe3              # double 0.70821199999999995
	.quad	0x3fe56eae9ee45c36              # double 0.66976100000000005
	.quad	0x3fe91e4712e40853              # double 0.78494600000000003
	.quad	0x3fd5ca600b029281              # double 0.34047699999999997
	.quad	0x3fe3a2ca9ac36545              # double 0.613622
	.quad	0x3feffd6733ebbfd7              # double 0.99968299999999998
	.quad	0x3fcfdb65ecc3e319              # double 0.24888299999999999
	.quad	0x3fd35f394b7b2895              # double 0.30268699999999998
	.quad	0x3fc34202d9cf13cf              # double 0.150452
	.quad	0x3fdd185058dde7a7              # double 0.45460899999999999
	.quad	0x3fcba92a30553261              # double 0.21609999999999999
	.quad	0x3fe7a62888b545c8              # double 0.73903300000000005
	.quad	0x3fcf0079a2834d27              # double 0.242202
	.quad	0x3fe728f3a9b06812              # double 0.72374899999999998
	.quad	0x3fe888b32ce89657              # double 0.76668700000000001
	.quad	0x3fdd05d52c16df40              # double 0.45348100000000002
	.quad	0x3fccca148ba83f4f              # double 0.22491700000000001
	.quad	0x3fddae7924af0bf2              # double 0.46377400000000002
	.quad	0x3feb55219a847b24              # double 0.85414199999999995
	.quad	0x3f7cd3e0bd44998d              # double 0.007038
	.quad	0x3fe735b2d4d4024b              # double 0.72530499999999998
	.quad	0x3fdc5ab7dc7abfba              # double 0.44303700000000001
	.quad	0x3fb6641b328b6d87              # double 0.087465000000000001
	.quad	0x3fc5763e4abe6a33              # double 0.16767099999999999
	.quad	0x3fd70c1b97353b4b              # double 0.36011399999999999
	.quad	0x3fd92cbea4ebdd33              # double 0.39335599999999998
	.quad	0x3fe3ed655e28aa43              # double 0.62272899999999998
	.quad	0x3feb420b3d4ae42a              # double 0.85181200000000001
	.quad	0x3febc0c1fc8f3238              # double 0.86728000000000005
	.quad	0x3fef8153bd167664              # double 0.98453699999999999
	.quad	0x3fcca7b4e54f7a92              # double 0.22386800000000001
	.quad	0x3fe0c2070b8cfbfc              # double 0.52368499999999996
	.quad	0x3fb007ee0b0af5fd              # double 0.062620999999999996
	.quad	0x3fd63743632c1f43              # double 0.34712300000000001
	.quad	0x3fe391dde37585be              # double 0.61155599999999999
	.quad	0x3fdf7dbf487fcb92              # double 0.49204999999999999
	.quad	0x3fe59dece5710881              # double 0.67552800000000002
	.quad	0x3fe9ed1e108c3f3e              # double 0.810195
	.quad	0x3fd8f733a8a3f898              # double 0.39008799999999999
	.quad	0x3fe904d12018a43c              # double 0.78183800000000003
	.quad	0x3fe3dcc20d5629d8              # double 0.62069799999999997
	.quad	0x3fd48d4fdf3b645a              # double 0.32112499999999999
	.quad	0x3fd4d63022dd7a9a              # double 0.325573
	.quad	0x3fe66049ecb31c22              # double 0.69925400000000004
	.quad	0x3fe0676640a6b93d              # double 0.51262200000000002
	.quad	0x3fe2c8fd9fd36f7e              # double 0.58703499999999997
	.quad	0x3fd0b6bf444e0daa              # double 0.261154
	.quad	0x3fd101de26916441              # double 0.265739
	.quad	0x3fec41a8ac5c13fd              # double 0.88301499999999999
	.quad	0x3febf9ebe9c88616              # double 0.87425799999999998
	.quad	0x3fec427a63736cdf              # double 0.88311499999999998
	.quad	0x3fe90e51d25aab47              # double 0.78299799999999997
	.quad	0x3fd750331e3a7daa              # double 0.36426999999999998
	.quad	0x3fece7903211cb04              # double 0.90326700000000004
	.quad	0x3f44f8b588e368f1              # double 6.4000000000000005E-4
	.quad	0x3fefdcd7060bb2bc              # double 0.99570800000000003
	.quad	0x3fe8aa7bd48cb4af              # double 0.77081100000000002
	.quad	0x3fe5fb71fbc5de9c              # double 0.686944
	.quad	0x3fe051a86940357a              # double 0.50996799999999998
	.quad	0x3fe704a515ce9e5e              # double 0.71931699999999998
	.quad	0x3fdd43526527a205              # double 0.45723399999999997
	.quad	0x3fe6391b3f20a73f              # double 0.69447099999999995
	.quad	0x3fd6768dfbd6a594              # double 0.35098600000000002
	.quad	0x3fe2e2f166e008ea              # double 0.59020300000000003
	.quad	0x3fd3c829cfdd2285              # double 0.30909199999999998
	.quad	0x3fd9862f5989df11              # double 0.39881499999999998
	.quad	0x3fccfaeff5c6c11a              # double 0.226408
	.quad	0x3fc21da7b0b39192              # double 0.14152999999999999
	.quad	0x3fe6e50a45d41fa7              # double 0.71545899999999996
	.quad	0x3fecbe7d1351159c              # double 0.89825299999999996
	.quad	0x3fea88d6d3b6cbda              # double 0.82920400000000005
	.quad	0x3fcd07314ca925ff              # double 0.22678200000000001
	.quad	0x3fe305caafbc1ace              # double 0.59445700000000001
	.quad	0x3fe4e390c9107faa              # double 0.652779
	.quad	0x3fece2cfd8f0c77e              # double 0.90268700000000002
	.quad	0x3fd926202539756d              # double 0.39295200000000002
	.quad	0x3fcdb3f20a73f749              # double 0.23205400000000001
	.quad	0x3fe36963dc486ad3              # double 0.60661500000000002
	.quad	0x3fe62b7564302b41              # double 0.692805
	.quad	0x3fec9af5ba2be059              # double 0.89391600000000004
	.quad	0x3fe01691a75cd0bb              # double 0.50275499999999995
	.quad	0x3faad3e920c069e8              # double 0.052398
	.quad	0x3feef401c4fc1df3              # double 0.96728599999999997
	.quad	0x3fe3d0d49949e881              # double 0.61924199999999996
	.quad	0x3feddbb9cf9a06a7              # double 0.93307200000000001
	.quad	0x3fe2fdd441355476              # double 0.59348500000000004
	.quad	0x3fdd595bbbe878fb              # double 0.45857900000000001
	.quad	0x3fc4453d20f2becf              # double 0.158363
	.quad	0x3fe4a253111f0c35              # double 0.64481500000000003
	.quad	0x3fd2a01eeed8904f              # double 0.29102299999999998
	.quad	0x3fec58969a0ad8a1              # double 0.88581399999999999
	.quad	0x3fed7ac6045baf53              # double 0.92123699999999997
	.quad	0x3fd680a9de8b3b32              # double 0.351603
	.quad	0x3fccde8709741d08              # double 0.22554099999999999
	.quad	0x3fe5b94317acc4f0              # double 0.67886500000000005
	.quad	0x3fecc9cf56eac860              # double 0.89963499999999996
	.quad	0x3fefe8e60807357e              # double 0.99717999999999996
	.quad	0x3fe60fd3b29a1ba0              # double 0.68943200000000004
	.quad	0x3fc9059641f64495              # double 0.19548299999999999
	.quad	0x3fee0882f0e0a84c              # double 0.93853900000000001
	.quad	0x3feeddc1e7967caf              # double 0.96457000000000003
	.quad	0x3f997a24894c447c              # double 0.024879999999999999
	.quad	0x3fd064a59c065b64              # double 0.25614300000000001
	.quad	0x3fc6a6a875d56f33              # double 0.17696100000000001
	.quad	0x3fec497fa5d28d00              # double 0.88397199999999998
	.quad	0x3fe576d97b30f8c6              # double 0.67075799999999997
	.quad	0x3fb8dcdb37c99ae9              # double 0.097119999999999998
	.quad	0x3fe158c2a454de7f              # double 0.54208500000000004
	.quad	0x3fd581f10667f90e              # double 0.33605600000000002
	.quad	0x3fd9fa9c12f09d8c              # double 0.40592099999999998
	.quad	0x3fe460589acbc8c1              # double 0.63676100000000002
	.quad	0x3fe0821f2990f302              # double 0.51588400000000001
	.quad	0x3fd21240746455eb              # double 0.282364
	.quad	0x3fc65604189374bc              # double 0.17449999999999999
	.quad	0x3fbd01d19157abb9              # double 0.11330900000000001
	.quad	0x3fe5c7c30d306a2b              # double 0.68063499999999999
	.quad	0x3fdabef06b37867f              # double 0.417904
	.quad	0x3f61a32b12d3415b              # double 0.002153
	.quad	0x3fd0029f16b11c6d              # double 0.25015999999999999
	.quad	0x3fe473cd573647bb              # double 0.63913600000000004
	.quad	0x3fec061c79b34a45              # double 0.87574600000000002
	.quad	0x3fe17def8487b99d              # double 0.54662299999999997
	.quad	0x3fe6af294dd72368              # double 0.70888200000000001
	.quad	0x3fc7b7e90ff97247              # double 0.18529999999999999
	.quad	0x3f94801f75104d55              # double 0.02002
	.quad	0x3fce84f8f8a4c1ec              # double 0.23843300000000001
	.quad	0x3fd7517a46173b86              # double 0.36434800000000001
	.quad	0x3fe86f99806f2629              # double 0.76362300000000005
	.quad	0x3fd7a41e57d9dba9              # double 0.369392
	.quad	0x3fe9fe8ab4fa4830              # double 0.81232199999999999
	.quad	0x3fe1355cd91eeaa7              # double 0.53776400000000002
	.quad	0x3fe28dac258d5843              # double 0.57979400000000003
	.quad	0x3fb9e4d5d80e496f              # double 0.101148
	.quad	0x3fef3d35eb7457c1              # double 0.97622200000000003
	.quad	0x3fda45132f87ad08              # double 0.410466
	.quad	0x3fd5e1198aeb80ed              # double 0.341864
	.quad	0x3fee1dffc5479d4e              # double 0.94116200000000005
	.quad	0x3feb30ccbc05d52c              # double 0.84970699999999999
	.quad	0x3fd34289118c197e              # double 0.30093599999999998
	.quad	0x3fe4031f03d145d8              # double 0.62538099999999996
	.quad	0x3fd5862b27cbf6e4              # double 0.336314
	.quad	0x3fdf68661ae70c13              # double 0.49074699999999999
	.quad	0x3fd08348f53c579f              # double 0.25801299999999999
	.quad	0x3febedb7281fd9ba              # double 0.87276799999999999
	.quad	0x3fb7fc86cebbba56              # double 0.093697000000000002
	.quad	0x3fe89aae6c8f7553              # double 0.76888199999999995
	.quad	0x3fe557ff9b56323c              # double 0.66699200000000003
	.quad	0x3fe94d0fe8ab4fa5              # double 0.79065700000000005
	.quad	0x3fe3bcc8de2ac322              # double 0.61679499999999998
	.quad	0x3fd546bacf7446fa              # double 0.33244200000000002
	.quad	0x3feebbdbe3c10518              # double 0.96043199999999995
	.quad	0x3fe89f18c9fb6135              # double 0.76942100000000002
	.quad	0x3fcc8344c37e6f72              # double 0.22275600000000001
	.quad	0x3fdc18116ebd4cfd              # double 0.438969
	.quad	0x3fdfc55c96030c24              # double 0.496421
	.quad	0x3fe422d0e5604189              # double 0.62924999999999998
	.quad	0x3feb8140dd3fe197              # double 0.85952799999999996
	.quad	0x3fe4097e996312f5              # double 0.62615900000000002
	.quad	0x3fdd2c061847f562              # double 0.45581199999999999
	.quad	0x3fdc9b0ee49f5169              # double 0.44696399999999997
	.quad	0x3fea08a697aeddce              # double 0.81355599999999995
	.quad	0x3fe1fba450acc0be              # double 0.56196800000000002
	.quad	0x3fe40a4e379b77c0              # double 0.62625799999999998
	.quad	0x3fa04534bd76ee74              # double 0.031778000000000001
	.quad	0x3feb367a0f9096bc              # double 0.85040000000000004
	.quad	0x3fe65b078d92fb1a              # double 0.69861200000000001
	.quad	0x3fd1a5a038194c01              # double 0.27573399999999998
	.quad	0x3fc55c6c11a11234              # double 0.166883
	.quad	0x3fb11dabe27179c0              # double 0.066859000000000002
	.quad	0x3fdeccc89b0ee49f              # double 0.48124899999999998
	.quad	0x3fd04c4cdfaca362              # double 0.25465700000000002
	.quad	0x3fd237a80cf9e386              # double 0.28464699999999998
	.quad	0x3fdf43632c1f42bb              # double 0.48848799999999998
	.quad	0x3fe7860dcb9a9da6              # double 0.73511400000000005
	.quad	0x3fdd7b139c94f69d              # double 0.46063700000000002
	.quad	0x3fde61309c7ffde7              # double 0.47468199999999999
	.quad	0x3fee5feb8d823422              # double 0.94920899999999997
	.quad	0x3fd71aa821f2990f              # double 0.36100199999999999
	.quad	0x3fe936f19934efcc              # double 0.78795700000000001
	.quad	0x3fc9d4f9c1f85d74              # double 0.20181199999999999
	.quad	0x3fee2b92c061847f              # double 0.94281899999999996
	.quad	0x3fe59db65ecc3e32              # double 0.67550200000000005
	.quad	0x3fd5288051c9f72f              # double 0.33059699999999997
	.quad	0x3fbc2e6644d87725              # double 0.110083
	.quad	0x3fea9dcd7060bb2c              # double 0.83176300000000003
	.quad	0x3fec7c4e2f37fbf0              # double 0.89017400000000002
	.quad	0x3fdb79af1886df83              # double 0.42930200000000002
	.quad	0x3fecf457c0b13598              # double 0.90482700000000005
	.quad	0x3fd318611fd5885d              # double 0.29836299999999999
	.quad	0x3fe0ed373affb04f              # double 0.52895700000000001
	.quad	0x3fe97cbd556084a5              # double 0.79647699999999999
	.quad	0x3fdcda836eb4e981              # double 0.45083699999999999
	.quad	0x3fe3f82f51266341              # double 0.62404599999999999
	.quad	0x3fe4f71865519371              # double 0.65516300000000005
	.quad	0x3fd6ecd4aa10e022              # double 0.358205
	.quad	0x3fdfdc8323358f2e              # double 0.497834
	.quad	0x3fd0bd0e12e83a11              # double 0.26153900000000002
	.quad	0x3fd8f4a558ea7ce1              # double 0.389932
	.quad	0x3fd62be8bc169c24              # double 0.34643000000000002
	.quad	0x3fa573eab367a0f9              # double 0.0419
	.quad	0x3feff1b25f633ce6              # double 0.99825399999999997
	.quad	0x3fd4c18f81e8a2ec              # double 0.32431399999999999
	.quad	0x3feeae1cde5d1809              # double 0.95875399999999999
	.quad	0x3fc179d0a67620ef              # double 0.13653000000000001
	.quad	0x3fd31672324c8366              # double 0.29824499999999998
	.quad	0x3fc32b6f19934efd              # double 0.14976300000000001
	.quad	0x3fb50df15a4acf31              # double 0.082243999999999998
	.quad	0x3fefdf4a1272c94b              # double 0.99600699999999997
	.quad	0x3fedae147ae147ae              # double 0.92749999999999999
	.quad	0x3fe668123810e886              # double 0.70020400000000005
	.quad	0x3fd706cca2db61bb              # double 0.35979
	.quad	0x3fe0784449dbec25              # double 0.51468100000000006
	.quad	0x3fb28fe260b2c83f              # double 0.072508000000000003
	.quad	0x3fd622d5171e29b7              # double 0.34587600000000002
	.quad	0x3fcd35a858793dd9              # double 0.22819999999999999
	.quad	0x3fc6bcc6c54bcf0b              # double 0.17763599999999999
	.quad	0x3fe5c65e89225311              # double 0.68046499999999999
	.quad	0x3fef3f1c75818c5d              # double 0.97645400000000004
	.quad	0x3fe14b9a9da597d5              # double 0.54047900000000004
	.quad	0x3fe11a027525460b              # double 0.53442500000000004
	.quad	0x3fe9d5e071c53f3a              # double 0.80735800000000002
	.quad	0x3fcf22d0e5604189              # double 0.24324999999999999
	.quad	0x3fe1283d35eb7458              # double 0.53616200000000003
	.quad	0x3fe44c165907d912              # double 0.63428799999999996
	.quad	0x3fe20e6299524bfd              # double 0.56425599999999998
	.quad	0x3feda78af3e468cb              # double 0.92670200000000003
	.quad	0x3fd7054ef459d990              # double 0.35969899999999999
	.quad	0x3fede8709741d085              # double 0.93462400000000001
	.quad	0x3f9da2f8bdec5f39              # double 0.028941999999999999
	.quad	0x3fe4e6f9335d249e              # double 0.65319499999999997
	.quad	0x3fe86d1e108c3f3e              # double 0.76332
	.quad	0x3fdf33d29563a9f4              # double 0.48753800000000003
	.quad	0x3f82580c308feac4              # double 0.0089569999999999997
	.quad	0x3f9a8b8f14db5958              # double 0.025923000000000002
	.quad	0x3fe3973b85e80bed              # double 0.61221099999999995
	.quad	0x3fc24167a95c853c              # double 0.142621
	.quad	0x3fc96c1e364bec68              # double 0.19861200000000001
	.quad	0x3fea24e592967019              # double 0.81700399999999995
	.quad	0x3fafb99d451fc4c1              # double 0.061962999999999997
	.quad	0x3fd83fe9fadafd11              # double 0.37890099999999999
	.quad	0x3fd50acc0bdcad15              # double 0.32878400000000002
	.quad	0x3feff1886df82b1f              # double 0.99823399999999995
	.quad	0x3fe998dac258d584              # double 0.79990899999999998
	.quad	0x3fc06e6d9be4cd75              # double 0.12837000000000001
	.quad	0x3fef5d701d9f4d38              # double 0.98015600000000002
	.quad	0x3fe3e22c45026890              # double 0.62135899999999999
	.quad	0x3fd588db0574b407              # double 0.336478
	.quad	0x3fc4f11b60ae9681              # double 0.163608
	.quad	0x3f95b4aa9717df1a              # double 0.021197000000000001
	.quad	0x3fecfede97d06bbe              # double 0.90611200000000003
	.quad	0x3fda2e6a76965f52              # double 0.40908299999999997
	.quad	0x3fbff737da61e0c6              # double 0.124866
	.quad	0x3fd00b73d188f430              # double 0.25069900000000001
	.quad	0x3fb84039abf33871              # double 0.094729999999999995
	.quad	0x3fe6193d5347a5b1              # double 0.690581
	.quad	0x3fe2f08461f9f01c              # double 0.59186000000000005
	.quad	0x3fd397e996312f4d              # double 0.306147
	.quad	0x3fec0229a5ebb774              # double 0.87526400000000004
	.quad	0x3fd5322291fb3fa7              # double 0.33118500000000001
	.quad	0x3fe73e9c886162f1              # double 0.72639299999999996
	.quad	0x3fc151611ba3ca75              # double 0.135296
	.quad	0x3fef763c31df761d              # double 0.98318300000000002
	.quad	0x3fcca305532617c2              # double 0.22372500000000001
	.quad	0x3fd62c3c9eecbfb1              # double 0.34644999999999998
	.quad	0x3fdf1d96e9bbf0dc              # double 0.48618099999999997
	.quad	0x3fd22f901083dbc2              # double 0.28415299999999999
	.quad	0x3fe726ca03c4b09f              # double 0.72348500000000004
	.quad	0x3fcd209edbf8b9bb              # double 0.22755800000000001
	.quad	0x3fdd61672324c836              # double 0.45906999999999998
	.quad	0x3fb0079a2834d270              # double 0.062616000000000005
	.quad	0x3fbd1d14e3bcd35b              # double 0.11372500000000001
	.quad	0x3fd7bb5e0f7fcfc4              # double 0.370811
	.quad	0x3fcf6fd21ff2e48f              # double 0.24560000000000001
	.quad	0x3feb2cbea4ebdd33              # double 0.84921199999999997
	.quad	0x3f95bf6a0dbad3a6              # double 0.021238
	.quad	0x3fc73860999dcb58              # double 0.18140800000000001
	.quad	0x3fdf953586ca89fc              # double 0.49348199999999998
	.quad	0x3f88a54823854046              # double 0.012034
	.quad	0x3fef784ec636b096              # double 0.98343599999999998
	.quad	0x3fecad2dcb1465e9              # double 0.89614000000000005
	.quad	0x3fd18eb463497b74              # double 0.274335
	.quad	0x3fca942d490e66cb              # double 0.207647
	.quad	0x3fd92949a5657fb7              # double 0.39314500000000002
	.quad	0x3fe3df4c2b51bd62              # double 0.621008
	.quad	0x3fe62558ea7ce0fc              # double 0.69205899999999998
	.quad	0x3fb3a24894c447c3              # double 0.076694999999999999
	.quad	0x3fba9ff0cbaf965b              # double 0.104003
	.quad	0x3fe59acde19fc2a9              # double 0.67514700000000005
	.quad	0x3fe8a9888f861a61              # double 0.77069500000000002
	.quad	0x3fc1aa68f4b61fe2              # double 0.138013
	.quad	0x3fe706af46aa087d              # double 0.71956600000000004
	.quad	0x3fd54ef0281ba7fc              # double 0.33294299999999999
	.quad	0x3fe899b4dcebfec1              # double 0.76876299999999997
	.quad	0x3fda007570c564f9              # double 0.40627799999999997
	.quad	0x3fd7902de00d1b71              # double 0.36817499999999997
	.quad	0x3fcdc0fcb4f1e4b4              # double 0.23245199999999999
	.quad	0x3fb5899bf5946c33              # double 0.084130999999999997
	.quad	0x3fbcb3c3e74afd54              # double 0.112118
	.quad	0x3f9db1209edbf8ba              # double 0.028996000000000001
	.quad	0x3fe3ba0a52695960              # double 0.61646000000000001
	.quad	0x3fa2a4766c6de764              # double 0.036410999999999999
	.quad	0x3fe4d831f03d145e              # double 0.65139100000000005
	.quad	0x3fd84295a6c5d207              # double 0.37906400000000001
	.quad	0x3fe6615011904b3c              # double 0.69937899999999997
	.quad	0x3fd4c93a71151612              # double 0.32478200000000002
	.quad	0x3fefd2977c88e79b              # double 0.99445700000000003
	.quad	0x3fd12d40aaeafab5              # double 0.26838699999999999
	.quad	0x3fe26a7ce0fc2eba              # double 0.57549899999999998
	.quad	0x3fe98a350d2806af              # double 0.79812099999999997
	.quad	0x3fd8eee0f3cb3e57              # double 0.38957999999999998
	.quad	0x3fe62e6644d87725              # double 0.693164
	.quad	0x3fee27ed84d338f8              # double 0.94237400000000004
	.quad	0x3fe2ca3e7d135116              # double 0.58718800000000004
	.quad	0x3fdb60c7c0f45176              # double 0.427782
	.quad	0x3fef74213a0c6b48              # double 0.98292599999999996
	.quad	0x3fbfc9363f572de4              # double 0.124164
	.quad	0x3fe66b1a2a4db164              # double 0.70057400000000003
	.quad	0x3f9d8adab9f559b4              # double 0.028850000000000001
	.quad	0x3fe4734938583622              # double 0.639073
	.quad	0x3f9cd91eeaa6d267              # double 0.028171999999999999
	.quad	0x3fed654f7a919696              # double 0.91861700000000002
	.quad	0x3feadd78811b1d93              # double 0.83953500000000003
	.quad	0x3fef91ada76d97b3              # double 0.98653299999999999
	.quad	0x3fec2369fcf3dc05              # double 0.87932299999999997
	.quad	0x3feeb10fd7e45804              # double 0.95911400000000002
	.quad	0x3fcbccf28c79f666              # double 0.217192
	.quad	0x3fd6d49949e8815e              # double 0.35672599999999999
	.quad	0x3fdc4dd2f1a9fbe7              # double 0.44224999999999998
	.quad	0x3fdb0e8858ff7597              # double 0.42276200000000003
	.quad	0x3fcffd933e35c5b5              # double 0.24992600000000001
	.quad	0x3fe8973b85e80bed              # double 0.76846099999999995
	.quad	0x3fe87f3f0fe047d4              # double 0.76553300000000001
	.quad	0x3fe59f666234a87e              # double 0.67570799999999998
	.quad	0x3fecbe596c82e01a              # double 0.89823600000000003
	.quad	0x3fd68dac258d5843              # double 0.35239700000000002
	.quad	0x3fd3d55a3a08398a              # double 0.30989699999999998
	.quad	0x3fd47fdc5931ca7d              # double 0.32030399999999998
	.quad	0x3fd1e42e12620254              # double 0.27955200000000002
	.quad	0x3fe35df00abf76a3              # double 0.605217
	.quad	0x3fe1948fd9fd36f8              # double 0.54938500000000001
	.quad	0x3fd1d81adea89763              # double 0.27881499999999998
	.quad	0x3fe488e581cf7879              # double 0.64171100000000003
	.quad	0x3feea32d2bb23572              # double 0.95741900000000002
	.quad	0x3fe7de225fa658c5              # double 0.74586600000000003
	.quad	0x3f9e6c093d966384              # double 0.029708999999999999
	.quad	0x3fe07a0f9096bb99              # double 0.51490000000000002
	.quad	0x3fe19b499d0203e6              # double 0.55020599999999997
	.quad	0x3fe6f40a2877ee4e              # double 0.71728999999999998
	.quad	0x3fef4ebfec13b9f1              # double 0.97836299999999998
	.quad	0x3fd5474107314ca9              # double 0.33247399999999999
	.quad	0x3fdbbecedd484513              # double 0.43352099999999999
	.quad	0x3fa6940357a35504              # double 0.044097999999999998
	.quad	0x3fc4f09528f190d1              # double 0.16359199999999999
	.quad	0x3fa707bfe7e1fc09              # double 0.044981
	.quad	0x3fe9a0a73f748a16              # double 0.80086100000000005
	.quad	0x3fe0118a009f6230              # double 0.50214099999999995
	.quad	0x3fe27ea1c68ec52a              # double 0.57795799999999997
	.quad	0x3fdad9e40c8472c1              # double 0.41954900000000001
	.quad	0x3fd9333b96af038e              # double 0.39375199999999999
	.quad	0x3fe8c7d1bb4916ca              # double 0.77439199999999997
	.quad	0x3fd13cafb3b75211              # double 0.26932899999999999
	.quad	0x3fd5dcc63f141206              # double 0.34160000000000001
	.quad	0x3feb58ff75968512              # double 0.85461399999999998
	.quad	0x3fe78795f676ea42              # double 0.73530099999999998
	.quad	0x3fe4790b84988095              # double 0.63977600000000001
	.quad	0x3fd30cd855970b4a              # double 0.29765900000000001
	.quad	0x3fe01a543f1c7582              # double 0.50321400000000005
	.quad	0x3fcb0eed02cd39da              # double 0.211393
	.quad	0x3fd2bd4067cf1c32              # double 0.29280099999999998
	.quad	0x3fe47127f5e84f09              # double 0.63881299999999996
	.quad	0x3fd6985271bcdbbe              # double 0.353047
	.quad	0x3feaee9ff0cbaf96              # double 0.84162899999999996
	.quad	0x3fd32dc6e2a80065              # double 0.29966900000000002
	.quad	0x3fe5f32df505d0fa              # double 0.68593499999999996
	.quad	0x3fe0f14b9cb6848c              # double 0.52945500000000001
	.quad	0x3fccad9274e22a2c              # double 0.224047
	.quad	0x3fcd9d1b2e59af9f              # double 0.23135700000000001
	.quad	0x3feb04039abf3387              # double 0.84423999999999999
	.quad	0x3fd073affb04ee7c              # double 0.25706099999999998
	.quad	0x3fe62b0ea18372e7              # double 0.69275600000000004
	.quad	0x3feb5da48b652370              # double 0.85518099999999997
	.quad	0x3fdfc6c97d8cf399              # double 0.496508
	.quad	0x3fd06d82ba5a0382              # double 0.25668400000000002
	.quad	0x3fd2e76c8b439581              # double 0.295375
	.quad	0x3fe0fd86a8fc0d2c              # double 0.53094799999999998
	.quad	0x3fe2caada33bd9cb              # double 0.58724100000000001
	.quad	0x3fd423358f2e05cd              # double 0.31464900000000001
	.quad	0x3fbd07d912556d1a              # double 0.113401
	.quad	0x3fe5474538ef34d7              # double 0.66495000000000004
	.quad	0x3fd9adc8fb86f47b              # double 0.40123199999999998
	.quad	0x3fc14dbdf8f47304              # double 0.135185
	.quad	0x3fe271758e219653              # double 0.57635000000000003
	.quad	0x3fe55e39713ad5bf              # double 0.66775200000000001
	.quad	0x3fd2b3b7521144cc              # double 0.29221900000000001
	.quad	0x3fcb56b873797460              # double 0.213584
	.quad	0x3fdf51fc4c165908              # double 0.48937900000000001
	.quad	0x3fe49869835158b8              # double 0.64360499999999998
	.quad	0x3fd5f8982cb20fb2              # double 0.34329799999999999
	.quad	0x3fda703f2d3c792d              # double 0.413101
	.quad	0x3fd3002e2328f9f4              # double 0.29688599999999998
	.quad	0x3fec559d55e6bc62              # double 0.88545099999999999
	.quad	0x3fe952f7f498c3b1              # double 0.79137800000000003
	.quad	0x3fe470a5efe93187              # double 0.63875099999999996
	.quad	0x3fcbed634549b62c              # double 0.21818199999999999
	.quad	0x3fe093a92a305532              # double 0.51802499999999996
	.quad	0x3fd858d5842b734b              # double 0.38042199999999998
	.quad	0x3fa16a055757d5aa              # double 0.034012000000000001
	.quad	0x3fcd90d173fb7a5f              # double 0.23098199999999999
	.quad	0x3fd47f6f4be835df              # double 0.32027800000000001
	.quad	0x3fe8b662fdfc19c1              # double 0.77226399999999995
	.quad	0x3fe65b09a671ef31              # double 0.69861300000000004
	.quad	0x3fea614bdfd2630f              # double 0.82437700000000003
	.quad	0x3fb7c2a8869c66d3              # double 0.092813999999999994
	.quad	0x3fe10ba40d90e23b              # double 0.53267100000000001
	.quad	0x3fdb0e8c8abd5dc4              # double 0.422763
	.quad	0x3fe1291fb3fa6df0              # double 0.53627000000000002
	.quad	0x3fdbf3ade225fa66              # double 0.43674800000000003
	.quad	0x3fe9a5d074213a0c              # double 0.80149099999999995
	.quad	0x3fe1e121ee675148              # double 0.55873200000000001
	.quad	0x3fe3f77f27fe4bcb              # double 0.62396200000000002
	.quad	0x3fe0057afea3df6e              # double 0.50066900000000003
	.quad	0x3fcc3e8dda48b652              # double 0.22065899999999999
	.quad	0x3fed8af81626b2f2              # double 0.92321399999999998
	.quad	0x3fcc093d96638434              # double 0.219032
	.quad	0x3fbc8387df5cf249              # double 0.11138199999999999
	.quad	0x3fd0dcc20d5629d8              # double 0.26347399999999999
	.quad	0x3fc0e58a32f44913              # double 0.13200500000000001
	.quad	0x3fd3c9d5a187a4a5              # double 0.30919400000000002
	.quad	0x3fe80870110a137f              # double 0.75102999999999998
	.quad	0x3fc3038e29f9ce8e              # double 0.14854600000000001
	.quad	0x3fee8c6d612c6ac2              # double 0.95464199999999999
	.quad	0x3fe9b1098d477bc0              # double 0.80286100000000005
	.quad	0x3fd38a7610279570              # double 0.30532599999999999
	.quad	0x3fe60ac5c13fd0d0              # double 0.68881499999999996
	.quad	0x3fc3e353f7ced917              # double 0.15537500000000001
	.quad	0x3fe7d2806af46aa1              # double 0.74444600000000005
	.quad	0x3fec34d056c508b3              # double 0.88144699999999998
	.quad	0x3fc799c38b04ab60              # double 0.18437999999999999
	.quad	0x3fb5c193b3a68b1a              # double 0.084985000000000004
	.quad	0x3fd531e3a7daa4fd              # double 0.33117000000000002
	.quad	0x3fd50431bde82d7b              # double 0.32838099999999998
	.quad	0x3f7da7b0b3919264              # double 0.0072399999999999999
	.quad	0x3fb4358afc47e49b              # double 0.078941999999999998
	.quad	0x3fdff123c42a66dc              # double 0.49909300000000001
	.quad	0x3fe95bb9cf9a06a7              # double 0.79244700000000001
	.quad	0x3fd5fe0ce0b912dc              # double 0.34363100000000002
	.quad	0x3fe62df0d413122b              # double 0.69310799999999995
	.quad	0x3fdd3efae7924af1              # double 0.45696900000000001
	.quad	0x3fdd21d10b1feeb3              # double 0.45518900000000001
	.quad	0x3fdb5171e29b6b2b              # double 0.426846
	.quad	0x3fd08726d04e618d              # double 0.25824900000000001
	.quad	0x3fc7589efd86a8fc              # double 0.182392
	.quad	0x3fdc89ca18bd6627              # double 0.44590999999999997
	.quad	0x3fe3e7967caea748              # double 0.62202000000000002
	.quad	0x3fde3ed527e52157              # double 0.47258499999999998
	.quad	0x3fe6c4e2f37fbefd              # double 0.711534
	.quad	0x3fb5d26b723ee1bd              # double 0.085241999999999998
	.quad	0x3fc46c6de76427c8              # double 0.15955900000000001
	.quad	0x3fc274538ef34d6a              # double 0.144175
	.quad	0x3fce909aed56b010              # double 0.238788
	.quad	0x3fd32e40852b4d8c              # double 0.29969800000000002
	.quad	0x3fe344f3ba775fb3              # double 0.60216700000000001
	.quad	0x3f906dd69d30270f              # double 0.016043999999999999
	.quad	0x3fcec165907d9125              # double 0.24027699999999999
	.quad	0x3fcd53dea465a576              # double 0.22912199999999999
	.quad	0x3fd7d8e0008637bd              # double 0.372612
	.quad	0x3fed753e707e175d              # double 0.92056199999999999
	.quad	0x3fd8d527e5215769              # double 0.38801000000000002
	.quad	0x3fed7ea3df6db941              # double 0.921709
	.quad	0x3fe7d948dc11e42e              # double 0.74527399999999999
	.quad	0x3fd26cb966be7afa              # double 0.28788599999999998
	.quad	0x3fea9ad42c3c9eed              # double 0.83140000000000003
	.quad	0x3fd809635610adcd              # double 0.37557299999999999
	.quad	0x3fdb9d2bf5515055              # double 0.43146800000000002
	.quad	0x3fecdb37c99ae925              # double 0.90176000000000001
	.quad	0x3fd4229e90795f67              # double 0.31461299999999998
	.quad	0x3fe2bea2d2fe3f36              # double 0.58577100000000004
	.quad	0x3feebb23571d1d47              # double 0.96034399999999997
	.quad	0x3fdee71cda2b5a21              # double 0.48285600000000001
	.quad	0x3fd2a033e78e1933              # double 0.29102800000000001
	.quad	0x3fe5c8387df5cf25              # double 0.68069100000000005
	.quad	0x3f6187e7c06e19b9              # double 0.00214
	.quad	0x3fd7bf5d78811b1e              # double 0.37105500000000002
	.quad	0x3fe951958969a0ae              # double 0.79120900000000005
	.quad	0x3fb4f8b588e368f1              # double 0.081920000000000007
	.quad	0x3fd3ec4a4095f245              # double 0.31129699999999999
	.quad	0x3fd4b9ae0c176577              # double 0.32383299999999998
	.quad	0x3f31d3671ac14c66              # double 2.72E-4
	.quad	0x3fe12c647778dd61              # double 0.53666899999999995
	.quad	0x3fef9d2e0e30446b              # double 0.98793699999999995
	.quad	0x3fd1ec743201040c              # double 0.280057
	.quad	0x3fe458ab92c06184              # double 0.63582399999999994
	.quad	0x3fe02afbc1acde1a              # double 0.505247
	.quad	0x3fd5b1e9f2778141              # double 0.33898400000000001
	.quad	0x3fbcb780346dc5d6              # double 0.112175
	.quad	0x3fe533c3e74afd54              # double 0.66256899999999996
	.quad	0x3fcadbb59ddc1e79              # double 0.20982999999999999
	.quad	0x3fef6004b7f5a533              # double 0.98047099999999998
	.quad	0x3fdcf2239e6ab9b2              # double 0.45227899999999999
	.quad	0x3fef0be5109070fc              # double 0.970202
	.quad	0x3fe6a7b9170d62bf              # double 0.70797399999999999
	.quad	0x3fb38b8ae31d712a              # double 0.076347999999999999
	.quad	0x3fe2202107b78466              # double 0.56642199999999998
	.quad	0x3fb8d130df9bdc6a              # double 0.096942
	.quad	0x3fc6c1333b96af04              # double 0.17777100000000001
	.quad	0x3fe72ec8d5c74752              # double 0.72446100000000002
	.quad	0x3fc19acffa7eb6bf              # double 0.13753699999999999
	.quad	0x3feed5a3a08398a6              # double 0.96357899999999996
	.quad	0x3fd6b5393250b524              # double 0.35481099999999999
	.quad	0x3fda8b26394face6              # double 0.41474299999999997
	.quad	0x3fe956de33269df9              # double 0.79185399999999995
	.quad	0x3fa2f78feef5ec81              # double 0.037045000000000002
	.quad	0x3fe2e68c26139000              # double 0.59064300000000003
	.quad	0x3feefaaef2c73259              # double 0.96810099999999998
	.quad	0x3fdb05186db50f41              # double 0.42218600000000001
	.quad	0x3fba1c25d074213a              # double 0.101992
	.quad	0x3fc3d805e5f30e80              # double 0.15503
	.quad	0x3fd5b3e5753a3ec0              # double 0.33910499999999999
	.quad	0x3fea9cf7878b7a1c              # double 0.83166099999999998
	.quad	0x3fe16d783dff3f10              # double 0.54461300000000001
	.quad	0x3fe1aba5a038194c              # double 0.552203
	.quad	0x3fe9cfb97bb73083              # double 0.80660699999999996
	.quad	0x3fb6c3547e06961c              # double 0.088917999999999997
	.quad	0x3fefbee1bd1ed9e0              # double 0.99205100000000001
	.quad	0x3fe8acbea4ebdd33              # double 0.77108699999999997
	.quad	0x3fc776bc1eff9f88              # double 0.183311
	.quad	0x3feaf2fba01eeed9              # double 0.84216100000000005
	.quad	0x3fd6131a8ef77f28              # double 0.344916
	.quad	0x3fdd482be8bc169c              # double 0.45752999999999999
	.quad	0x3fe18e7ddca4b125              # double 0.54864400000000002
	.quad	0x3fd669a0ad8a1166              # double 0.35019699999999998
	.quad	0x3feebc4d22c881e4              # double 0.96048599999999995
	.quad	0x3fbe42aed1394318              # double 0.118205
	.quad	0x3fd088ce703afb7f              # double 0.25835000000000002
	.quad	0x3fd7edfe75bc44bf              # double 0.37390099999999998
	.quad	0x3fef21f2990f301f              # double 0.97289400000000003
	.quad	0x3fe0c39ffd60e94f              # double 0.52388000000000001
	.quad	0x3fd86c2699c7bcc3              # double 0.38160100000000002
	.quad	0x3fed831ceaf251c2              # double 0.92225500000000005
	.quad	0x3fd0dc7abfb9bed3              # double 0.263457
	.quad	0x3fe3d3b0813cab82              # double 0.619591
	.quad	0x3fc94c985f06f694              # double 0.19764999999999999
	.quad	0x3fc19a30984e3fff              # double 0.137518
	.quad	0x3fec6aaf35e310dc              # double 0.888023
	.quad	0x3fd82157689ca18c              # double 0.37703500000000001
	.quad	0x3fd2e82d7b634dad              # double 0.29542099999999999
	.quad	0x3f82ecf206423960              # double 0.0092409999999999992
	.quad	0x3fc09246bf01322f              # double 0.129464
	.quad	0x3fdad627bf61aa3f              # double 0.419321
	.quad	0x3fc12c493426783a              # double 0.13416400000000001
	.quad	0x3fe2ac77574f722e              # double 0.58355299999999999
	.quad	0x3fdb940357a35504              # double 0.43090899999999999
	.quad	0x3fe3c4ef88b97785              # double 0.61778999999999995
	.quad	0x3fb85a8155d5f56a              # double 0.095130999999999993
	.quad	0x3fee52c7b890d5a6              # double 0.94760500000000003
	.quad	0x3fd46f694467381d              # double 0.31929999999999997
	.quad	0x3fbd0fe8ab4fa483              # double 0.113524
	.quad	0x3fee3a8c586876e2              # double 0.94464700000000001
	.quad	0x3fea071a3b14a904              # double 0.81336699999999995
	.quad	0x3fe4b458cd20afa3              # double 0.64701500000000001
	.quad	0x3fe6080f98fa3769              # double 0.68848399999999998
	.quad	0x3fc357eed45e9186              # double 0.15112100000000001
	.quad	0x3fd02c77574f722e              # double 0.25271399999999999
	.quad	0x3fe532e7b3d8e001              # double 0.66246400000000005
	.quad	0x3febc34e3369b9d8              # double 0.867591
	.quad	0x3fe19476af89c5e7              # double 0.549373
	.quad	0x3feaac4b4d056c51              # double 0.83353200000000005
	.quad	0x3fe63d5992428d43              # double 0.69498899999999997
	.quad	0x3fe90ab0c88a47ed              # double 0.782555
	.quad	0x3fe589bf9c62a1b6              # double 0.67306500000000002
	.quad	0x3fe3845dc8323359              # double 0.60990800000000001
	.quad	0x3fba92d55a3a083a              # double 0.10380300000000001
	.quad	0x3fe81e1b089a0275              # double 0.75367499999999998
	.quad	0x3fef07d912556d1a              # double 0.96970800000000001
	.quad	0x3fde8116ebd4cfd1              # double 0.47662900000000002
	.quad	0x3fc18c9fb6134ce4              # double 0.137104
	.quad	0x3fdacc1ca3a4b557              # double 0.41870800000000002
	.quad	0x3fee6d8b1dd5d3dd              # double 0.95087200000000005
	.quad	0x3fd47a398201cd60              # double 0.31996000000000002
	.quad	0x3fe465796bfca85d              # double 0.63738700000000004
	.quad	0x3fe9d696e58a32f4              # double 0.80744499999999996
	.quad	0x3fdb6805a2d72ffd              # double 0.42822399999999999
	.quad	0x3fea482be8bc169c              # double 0.82130999999999998
	.quad	0x3fb75bb384fd2a63              # double 0.091243000000000005
	.quad	0x3fe1d119ce075f70              # double 0.55677500000000002
	.quad	0x3fdfe308787485e4              # double 0.49823200000000001
	.quad	0x3fba32096787ce96              # double 0.102326
	.quad	0x3fece34549b62c77              # double 0.90274299999999996
	.quad	0x3fc45cc426351def              # double 0.159081
	.quad	0x3fe2410b630a9153              # double 0.57043999999999995
	.quad	0x3fc84c61d8622c45              # double 0.189831
	.quad	0x3fc0d76ab5807fed              # double 0.131574
	.quad	0x3fdec52a411c2a02              # double 0.48078399999999999
	.quad	0x3fd44906034f3fd9              # double 0.31695699999999999
	.quad	0x3feb06e3b46fdeb5              # double 0.84459099999999998
	.quad	0x3fb78db48909289e              # double 0.092006000000000004
	.quad	0x3fded8f0c77dd873              # double 0.481991
	.quad	0x3fe84d141a6937d2              # double 0.759409
	.quad	0x3fd51af7d30ad46f              # double 0.32977099999999998
	.quad	0x3fa52bd3c3611340              # double 0.041349999999999998
	.quad	0x3fbb6e6106ab14ec              # double 0.107153
	.quad	0x3fdad1e53a81dc0e              # double 0.41906100000000002
	.quad	0x3fec10c6f7a0b5ee              # double 0.87704800000000005
	.quad	0x3fd5e6afcce1c582              # double 0.34220499999999998
	.quad	0x3fe5567fd3f5b5fa              # double 0.66680899999999999
	.quad	0x3fe52bbcb1cc9646              # double 0.66158899999999998
	.quad	0x3fea2b1f687b139d              # double 0.81776400000000005
	.quad	0x3fdea05143bf7271              # double 0.47853499999999999
	.quad	0x3fed77574f722e1b              # double 0.92081800000000003
	.quad	0x3fd4e4e69f05ea25              # double 0.32647100000000001
	.quad	0x3fecda122fad6cb5              # double 0.90161999999999998
	.quad	0x3fed437c5692b3cc              # double 0.91448799999999996
	.quad	0x3fd8bb7b6bb12902              # double 0.38644299999999998
	.quad	0x3fe63f5515054ac3              # double 0.69523100000000004
	.quad	0x3fe0f405f6ba0621              # double 0.52978800000000004
	.quad	0x3fcd5232d2bb2357              # double 0.229071
	.quad	0x3fe6f4c8ffb8b264              # double 0.71738100000000005
	.quad	0x3fdaa1016ce789e7              # double 0.41607699999999997
	.quad	0x3fe446887a8d64d8              # double 0.63361000000000001
	.quad	0x3fcc6aa8eb463498              # double 0.22200500000000001
	.quad	0x3fc63a860dcb9a9e              # double 0.17366100000000001
	.quad	0x3fe27de7210be942              # double 0.57786899999999997
	.quad	0x3fa969a0ad8a1166              # double 0.049633999999999998
	.quad	0x3fe4968b5cbff477              # double 0.64337699999999998
	.quad	0x3fc909289dadfb50              # double 0.19559199999999999
	.quad	0x3fec6ef5ec80c73b              # double 0.88854500000000003
	.quad	0x3fee9b79d909f1f1              # double 0.95647899999999997
	.quad	0x3fb66299524bfd2f              # double 0.087442000000000006
	.quad	0x3fda081c2e33eff2              # double 0.40674500000000002
	.quad	0x3fca697aeddce7cd              # double 0.206344
	.quad	0x3fd83f39d1b2e59b              # double 0.378859
	.quad	0x3fe14faacd9e83e4              # double 0.54097499999999998
	.quad	0x3f9be33acd5b6806              # double 0.027234000000000001
	.quad	0x3fdc9f05ea24cc68              # double 0.44720599999999999
	.quad	0x3fe31a048e043a21              # double 0.59692599999999996
	.quad	0x3fc66d8b1dd5d3dd              # double 0.17521800000000001
	.quad	0x3fd1f190d173fb7a              # double 0.28036899999999998
	.quad	0x3fc6f26aec0724b7              # double 0.17927299999999999
	.quad	0x3fe94d26fa3fcc9f              # double 0.79066800000000004
	.quad	0x3fd5955f78359bc3              # double 0.33724199999999999
	.quad	0x3fc4f566490a350d              # double 0.163739
	.quad	0x3fe68da3c21187e8              # double 0.70479000000000003
	.quad	0x3fef2d6cb5350093              # double 0.97429500000000002
	.quad	0x3fadbaf533f42353              # double 0.058067000000000001
	.quad	0x3fd823033a4723ab              # double 0.377137
	.quad	0x3fee0b827fa1a0cf              # double 0.93890499999999999
	.quad	0x3fe2fa615a8deb10              # double 0.59306400000000004
	.quad	0x3fe1bfca85caafbc              # double 0.55466199999999999
	.quad	0x3fef083126e978d5              # double 0.96975
	.quad	0x3fe56feb4a66559f              # double 0.66991199999999995
	.quad	0x3fdd1843c3a42f1f              # double 0.45460600000000001
	.quad	0x3fee0285ec3dab5c              # double 0.93780799999999997
	.quad	0x3fe83cc8de2ac322              # double 0.75741999999999998
	.quad	0x3fe663ac0c62e4d2              # double 0.69966700000000004
	.quad	0x3fd633269df97aab              # double 0.34687200000000001
	.quad	0x3fade6362a5e785b              # double 0.058396999999999998
	.quad	0x3fcc1d53cddd6e05              # double 0.21964500000000001
	.quad	0x3fd43aa79bbadc0a              # double 0.31608000000000003
	.quad	0x3feced549731098d              # double 0.90397099999999997
	.quad	0x3fc76f6d7625204b              # double 0.183088
	.quad	0x3fe74182ecaeea64              # double 0.72674700000000003
	.quad	0x3feedbc01a36e2eb              # double 0.96432499999999998
	.quad	0x3f958dde7a743a64              # double 0.021048999999999998
	.quad	0x3fe6c044284dfce3              # double 0.71096999999999999
	.quad	0x3fbad9be4cd74928              # double 0.10488500000000001
	.quad	0x3fe97e02645e4e6a              # double 0.79663200000000001
	.quad	0x3fd3eb4202d9cf14              # double 0.31123400000000001
	.quad	0x3fe54cb3a2595bbc              # double 0.66561300000000001
	.quad	0x3f93f290abb44e51              # double 0.019480000000000001
	.quad	0x3fce615a8deb0fae              # double 0.237346
	.quad	0x3fde5a8155d5f56a              # double 0.47427399999999997
	.quad	0x3fe1245b291b823d              # double 0.53568800000000005
	.quad	0x3fd8bf5d78811b1e              # double 0.38668000000000002
	.quad	0x3fd34067cf1c3266              # double 0.30080600000000002
	.quad	0x3fd4fe931876188b              # double 0.328038
	.quad	0x3fe79ed3953dea46              # double 0.73813799999999996
	.quad	0x3f9a07f66e86c658              # double 0.025420999999999999
	.quad	0x3fb6555c52e72da1              # double 0.087239999999999998
	.quad	0x3fcf34267839cd81              # double 0.243779
	.quad	0x3fdab6b2af145522              # double 0.41740100000000002
	.quad	0x3fe3d04c48adeebb              # double 0.61917699999999998
	.quad	0x3fbbb24638c97529              # double 0.10818899999999999
	.quad	0x3fb77e2c55c96031              # double 0.091769000000000003
	.quad	0x3fde746887a8d64d              # double 0.47585499999999997
	.quad	0x3fd4956c0d6f544c              # double 0.32162000000000002
	.quad	0x3fe00828c36da87a              # double 0.500996
	.quad	0x3fea0e7bc3c5bd0e              # double 0.81426799999999999
	.quad	0x3fd5abbcb1cc9646              # double 0.33860699999999999
	.quad	0x3fe81ccb7d41743f              # double 0.75351500000000005
	.quad	0x3fa870fbeb9e492c              # double 0.047737000000000002
	.quad	0x3fd489a88ace24bc              # double 0.32090200000000002
	.quad	0x3fe77fb8b26394fb              # double 0.73434100000000002
	.quad	0x3fdabe7f2c3009b3              # double 0.417877
	.quad	0x3fc2fbf401c4fc1e              # double 0.148314
	.quad	0x3fdd424a276b7ed4              # double 0.45717099999999999
	.quad	0x3fe5aa2a0a958538              # double 0.67702200000000001
	.quad	0x3fd7240314877681              # double 0.36157299999999998
	.quad	0x3fdf28ed5f138bce              # double 0.486873
	.quad	0x3fe4e0c7c0f45176              # double 0.65243899999999999
	.quad	0x3fe8e2003ab862b2              # double 0.77758799999999995
	.quad	0x3fa2393ee5eedcc2              # double 0.035593
	.quad	0x3fb06822ff08893b              # double 0.064088999999999993
	.quad	0x3fd4eec7c957cd46              # double 0.32707399999999998
	.quad	0x3fdce770bd017daf              # double 0.45162600000000003
	.quad	0x3fed253543aeab7a              # double 0.91079200000000005
	.quad	0x3fd3a32f44912989              # double 0.30683500000000002
	.quad	0x3fe1ace4649906cd              # double 0.55235500000000004
	.quad	0x3fe50fc71d606317              # double 0.65817599999999998
	.quad	0x3fc1245b291b823d              # double 0.13392200000000001
	.quad	0x3fe1003ab862b27d              # double 0.53127800000000003
	.quad	0x3fe0cc1ebc83a96d              # double 0.52491699999999997
	.quad	0x3fe78b8066c2acb8              # double 0.73577899999999996
	.quad	0x3fe92261bf37b8d4              # double 0.785447
	.quad	0x3feb841ede1198af              # double 0.85987800000000003
	.quad	0x3fb607c4199fe436              # double 0.086055999999999993
	.quad	0x3fe509917939a7c1              # double 0.65741799999999995
	.quad	0x3fddb0c4588a04d1              # double 0.46391399999999999
	.quad	0x3fe2d84d338f7985              # double 0.58890399999999998
	.quad	0x3fe1688bda9435ad              # double 0.54401200000000005
	.quad	0x3fe01c3efae7924b              # double 0.50344800000000001
	.quad	0x3fe9b9b456b441bc              # double 0.80391900000000005
	.quad	0x3febbc126a65cf68              # double 0.86670800000000003
	.quad	0x3fd0d5cfaacd9e84              # double 0.26305000000000001
	.quad	0x3fe397e34b945309              # double 0.61229100000000003
	.quad	0x3fea4393682730c6              # double 0.82074899999999995
	.quad	0x3fb3c7f77af64064              # double 0.077270000000000005
	.quad	0x3fa082278d0cc35d              # double 0.032243000000000001
	.quad	0x3fce1de26916440f              # double 0.235287
	.quad	0x3fc544a1f080303c              # double 0.166157
	.quad	0x3fe6a4e7ab756430              # double 0.70762999999999998
	.quad	0x3fcf2bb23571d1d4              # double 0.24352099999999999
	.quad	0x3fead29bae46cfc8              # double 0.83820899999999998
	.quad	0x3fe965f5275ee99a              # double 0.79369599999999996
	.quad	0x3fe36a11ec918e32              # double 0.60669799999999996
	.quad	0x3fe04193b3a68b1a              # double 0.50800500000000004
	.quad	0x3fcc6ce358298cc1              # double 0.22207299999999999
	.quad	0x3fcb819d2391d580              # double 0.214893
	.quad	0x3fbbf47735c182ed              # double 0.109199
	.quad	0x3fc7f727136a4010              # double 0.18723000000000001
	.quad	0x3feda3b14a90470b              # double 0.92623200000000006
	.quad	0x3fe3810624dd2f1b              # double 0.60950000000000004
	.quad	0x3fe2c011d3671ac1              # double 0.58594599999999997
	.quad	0x3fa785510d38cda7              # double 0.045939000000000001
	.quad	0x3fd8614df8b15726              # double 0.38093900000000003
	.quad	0x3fe9674afd545415              # double 0.79385899999999998
	.quad	0x3fb67e308787485e              # double 0.087862999999999996
	.quad	0x3fd92b3461309c80              # double 0.393262
	.quad	0x3fe9b7521144cbe2              # double 0.80362800000000001
	.quad	0x3fe85b18548a9bd0              # double 0.76112000000000002
	.quad	0x3fe30fb224aada34              # double 0.59566600000000003
	.quad	0x3fde2c1f42bb6673              # double 0.471443
	.quad	0x3fdaa4e379b77c03              # double 0.41631400000000002
	.quad	0x3fdcb4784230fcf8              # double 0.448515
	.quad	0x3fee8fd3b29a1ba0              # double 0.95505700000000004
	.quad	0x3fbac2bd7f51efb7              # double 0.104534
	.quad	0x3f95a5332acfb763              # double 0.021138000000000001
	.quad	0x3fc666772d5e071c              # double 0.17500199999999999
	.quad	0x3fd36f1561911490              # double 0.30365500000000001
	.quad	0x3fc2f2e05ccc89b1              # double 0.148037
	.quad	0x3fe3c2e770bd017e              # double 0.61754200000000004
	.quad	0x3fc70d38cda6e760              # double 0.180091
	.quad	0x3fd7c5004fb1183b              # double 0.37139899999999998
	.quad	0x3fda44806290eed0              # double 0.41043099999999999
	.quad	0x3fe1594d0dcfcc5c              # double 0.54215100000000005
	.quad	0x3fe21478c868b9fe              # double 0.56499900000000003
	.quad	0x3fc698676a7264a1              # double 0.17652599999999999
	.quad	0x3fe677c6759ab6d0              # double 0.702121
	.quad	0x3fee710a99b6f5cb              # double 0.95129900000000001
	.quad	0x3fd3eafee6fb4c3c              # double 0.31121799999999999
	.quad	0x3fe22435696e58a3              # double 0.56691999999999998
	.quad	0x3fdf01e2584f4c6e              # double 0.48448999999999998
	.quad	0x3feeb10fd7e45804              # double 0.95911400000000002
	.quad	0x3fe19d3ed527e521              # double 0.55044499999999996
	.quad	0x3fcd5bab21815a08              # double 0.22936000000000001
	.quad	0x3fe56a6a012599ed              # double 0.66923999999999995
	.quad	0x3f9771001d5c3159              # double 0.022891999999999999
	.quad	0x3fe3afcce1c58256              # double 0.61521000000000003
	.quad	0x3fed746455eaee20              # double 0.92045799999999999
	.quad	0x3fe73c2fc69728a6              # double 0.72609699999999999
	.quad	0x3fc6025bfad29995              # double 0.17194699999999999
	.quad	0x3fe4e338b47c73ef              # double 0.65273700000000001
	.quad	0x3fe69ddc1e7967cb              # double 0.70677000000000001
	.quad	0x3feef18655193709              # double 0.96698300000000003
	.quad	0x3fe69ec2ce464990              # double 0.70687999999999995
	.quad	0x3fbbc84b5dcc63f1              # double 0.108525
	.quad	0x3febfa8b4bf8fcd6              # double 0.87433399999999994
	.quad	0x3fbd935fc3b4f616              # double 0.11552999999999999
	.quad	0x3fef4ec204f2ae08              # double 0.97836400000000001
	.quad	0x3fd525247cb70ac4              # double 0.33039200000000002
	.quad	0x3fe71d3cbc48f10b              # double 0.72231900000000004
	.quad	0x3fead31337eb28d8              # double 0.83826599999999996
	.quad	0x3fcf0a3d70a3d70a              # double 0.24249999999999999
	.quad	0x3fea5d6e04c05921              # double 0.823905
	.quad	0x3fa5bb384fd2a62b              # double 0.042444000000000003
	.quad	0x3fed838e29f9ce8e              # double 0.92230900000000005
	.quad	0x3fe28b3f63c31df7              # double 0.57949799999999996
	.quad	0x3fa7fa1a0cf1800a              # double 0.046829999999999997
	.quad	0x3fdfb6805a2d7300              # double 0.49551400000000001
	.quad	0x3fbba4f8726d04e6              # double 0.107986
	.quad	0x3fea2554b8bef8cf              # double 0.81705700000000003
	.quad	0x3fe4002e2328f9f4              # double 0.62502199999999997
	.quad	0x3fe3b042528ae74f              # double 0.61526599999999998
	.quad	0x3fecfdcdf6987831              # double 0.90598199999999995
	.quad	0x3feee6c6de76427c              # double 0.96567099999999994
	.quad	0x3fa8d6b228dc981c              # double 0.048513000000000001
	.quad	0x3fef625a682b6284              # double 0.98075599999999996
	.quad	0x3fe610129cbab64a              # double 0.68946200000000002
	.quad	0x3fe9daccd530489d              # double 0.80795899999999998
	.quad	0x3fad6605ee568a50              # double 0.057418999999999998
	.quad	0x3fe4168512231833              # double 0.627749
	.quad	0x3fec65dbfceb7889              # double 0.88743399999999995
	.quad	0x3fd9a45d41fa7653              # double 0.40065699999999999
	.quad	0x3fc12d234eb9a177              # double 0.13419
	.quad	0x3feb3734b51372a4              # double 0.85048900000000005
	.quad	0x3fe86805a2d72ffd              # double 0.76269799999999999
	.quad	0x3fba14057082491b              # double 0.101868
	.quad	0x3fcd13404ea4a8c1              # double 0.22714999999999999
	.quad	0x3fe1dd462c343b71              # double 0.55826100000000001
	.quad	0x3fd78bb0a2ca9ac3              # double 0.36790099999999998
	.quad	0x3fe7ab68cef672b9              # double 0.73967400000000005
	.quad	0x3fadd67ba237cdcd              # double 0.058277000000000002
	.quad	0x3fe383558a761028              # double 0.60978200000000005
	.quad	0x3fd92999567dbb17              # double 0.39316400000000001
	.quad	0x3fe20ccdd93c46d8              # double 0.56406299999999998
	.quad	0x3fea41b75a74c09c              # double 0.82052199999999997
	.quad	0x3fbc256bca5375c9              # double 0.109946
	.quad	0x3fd6f1b25f633ce6              # double 0.35850199999999999
	.quad	0x3fa91105e1c15098              # double 0.048958000000000002
	.quad	0x3fec8852b4d8ba41              # double 0.89164100000000002
	.quad	0x3fa0216c61522a6f              # double 0.031504999999999998
	.quad	0x3fe306ad2dcb1466              # double 0.59456500000000001
	.quad	0x3fe3e01de2691644              # double 0.62110799999999999
	.quad	0x3fe6df3300de4c51              # double 0.71474599999999999
	.quad	0x3fcc4523f67f4dbe              # double 0.22086
	.quad	0x3fdc450268900c52              # double 0.44171199999999999
	.quad	0x3fd716ebd4cfd08d              # double 0.36077399999999998
	.quad	0x3fe59c6f36ef8056              # double 0.675346
	.quad	0x3fe4e9ab29e4d5d8              # double 0.65352399999999999
	.quad	0x3fded1fe64f54d1f              # double 0.48156700000000002
	.quad	0x3fd41ec918e325d5              # double 0.31437900000000002
	.quad	0x3fcde9f2778140dd              # double 0.23370199999999999
	.quad	0x3fca30b9dc2f405f              # double 0.20461199999999999
	.quad	0x3fddf5ec80c73abd              # double 0.46813500000000002
	.quad	0x3fe55bee3d5fdcdf              # double 0.66747199999999995
	.quad	0x3fe3ef21f6cacd18              # double 0.62294099999999997
	.quad	0x3fdeeb463497b741              # double 0.48310999999999998
	.quad	0x3fe862bf11f926c8              # double 0.76205400000000001
	.quad	0x3fdf6dd69d30270f              # double 0.49107899999999999
	.quad	0x3feb2493c89f40a3              # double 0.84821500000000005
	.quad	0x3fe9aa8650e77920              # double 0.80206599999999994
	.quad	0x3fd138a7e73a365d              # double 0.26908300000000002
	.quad	0x3fe7889a02752546              # double 0.735425
	.quad	0x3fbd5c31593e5fb7              # double 0.114688
	.quad	0x3fe86e73e681a9b9              # double 0.76348300000000002
	.quad	0x3fc0a960b6f9fcb1              # double 0.13016900000000001
	.quad	0x3fef75fb2edfe75c              # double 0.98315200000000002
	.quad	0x3fe9d41d8e864021              # double 0.80714300000000005
	.quad	0x3fd82f05a708ede5              # double 0.37786999999999998
	.quad	0x3fe72c96cc5fbf83              # double 0.72419299999999998
	.quad	0x3fe966fd651b0ccc              # double 0.79382200000000002
	.quad	0x3fe0430d306a2b17              # double 0.508185
	.quad	0x3fdd0b06c43f5f91              # double 0.45379799999999998
	.quad	0x3fee46327ed84d34              # double 0.94606900000000004
	.quad	0x3fe0806f262888b5              # double 0.51567799999999997
	.quad	0x3fe23cb5fe542e55              # double 0.56991099999999995
	.quad	0x3fdbf0fe047d3d43              # double 0.43658400000000003
	.quad	0x3fe0681ecd4aa10e              # double 0.51271
	.quad	0x3fc9b3f20a73f749              # double 0.20080400000000001
	.quad	0x3fe0f922962cfd8f              # double 0.53041199999999999
	.quad	0x3fe1fc371da37ef6              # double 0.56203800000000004
	.quad	0x3fe1a94573a79789              # double 0.55191299999999999
	.quad	0x3fe98e4da09cc31a              # double 0.79862100000000003
	.quad	0x3fe12f102363b257              # double 0.536995
	.quad	0x3fd06188b11409a2              # double 0.25595299999999999
	.quad	0x3fc42cdc011d3672              # double 0.15761900000000001
	.quad	0x3fe7cd056c508b33              # double 0.74377700000000002
	.quad	0x3fe72fc8b0079a28              # double 0.72458299999999998
	.quad	0x3feb0c6b484d76ab              # double 0.84526599999999996
	.quad	0x3fbf8d60a6330510              # double 0.123251
	.quad	0x3fe73f67f4dbdf8f              # double 0.72648999999999997
	.quad	0x3fe53a5e353f7cee              # double 0.66337500000000005
	.quad	0x3fb736bd2b6f1993              # double 0.090678999999999996
	.quad	0x3fedf00abf76a2f5              # double 0.93555200000000005
	.quad	0x3fd97503b81b64e0              # double 0.39776699999999998
	.quad	0x3fe613d5347a5b10              # double 0.68992100000000001
	.quad	0x3fe52da76d97b310              # double 0.66182300000000005
	.quad	0x3fedc6c11a11233e              # double 0.93051200000000001
	.quad	0x3fc74b945308bb90              # double 0.18199399999999999
	.quad	0x3fee963fdd65a145              # double 0.95584100000000005
	.quad	0x3fbf22f2734f82f5              # double 0.121627
	.quad	0x3fed1873ffac1d2a              # double 0.90923500000000002
	.quad	0x3fc6f5dbb9cf9a07              # double 0.17937800000000001
	.quad	0x3fb974d594f26aec              # double 0.099438999999999999
	.quad	0x3fcd944aa53fc009              # double 0.23108799999999999
	.quad	0x3fe180a5accd5305              # double 0.54695400000000005
	.quad	0x3fe1bb9f127f5e85              # double 0.55415300000000001
	.quad	0x3fe0deedcc20d563              # double 0.52721300000000004
	.quad	0x3fee068986fcdee3              # double 0.93829799999999997
	.quad	0x3feab074a771c971              # double 0.83404
	.quad	0x3fec44178705425f              # double 0.88331199999999999
	.quad	0x3fd3c308feac42ea              # double 0.30877900000000003
	.quad	0x3fef7f0cbaf965b2              # double 0.984259
	.quad	0x3fdce75bc44bf4cb              # double 0.45162099999999999
	.quad	0x3fed478c868b9fdc              # double 0.91498400000000001
	.quad	0x3fe76787ce95faa9              # double 0.73138800000000004
	.quad	0x3fe9fb86f47b677f              # double 0.81195399999999995
	.quad	0x3fe7ff9b56323bbc              # double 0.74995199999999995
	.quad	0x3fe3c636b0963561              # double 0.617946
	.quad	0x3fdeddd2ae8e1d65              # double 0.48228900000000002
	.quad	0x3fe16494d50ebaae              # double 0.54352800000000001
	.quad	0x3fe949c90c4dec1c              # double 0.79025699999999998
	.quad	0x3fe915097c80841f              # double 0.78381800000000001
	.quad	0x3fcfe5f30e7ff584              # double 0.24920500000000001
	.quad	0x3fe55f2452c59fb2              # double 0.66786400000000001
	.quad	0x3fb0014f8b588e37              # double 0.062520000000000006
	.quad	0x3fedd2d01c0ca601              # double 0.93198400000000003
	.quad	0x3fe65aa0cae642c0              # double 0.69856300000000005
	.quad	0x3fd9d92b7fe08af0              # double 0.40388000000000002
	.quad	0x3fec4a3c64345cff              # double 0.88406200000000001
	.quad	0x3fe4441355475a32              # double 0.63331000000000004
	.quad	0x3fe67aeff5c6c11a              # double 0.70250699999999999
	.quad	0x3fe3d308bb906467              # double 0.61951100000000003
	.quad	0x3fe99a1986b9c305              # double 0.80006100000000002
	.quad	0x3fd79e731d2e0e30              # double 0.36904599999999999
	.quad	0x3fe8bdab5c39bcba              # double 0.77315299999999998
	.quad	0x3fd70307f23cc8de              # double 0.35955999999999999
	.quad	0x3fe39e90795f676f              # double 0.61310600000000004
	.quad	0x3fea9d7dbf487fcc              # double 0.83172500000000004
	.quad	0x3fed85db76b3bb84              # double 0.92259000000000002
	.quad	0x3fea0244e93e1c9b              # double 0.81277699999999997
	.quad	0x3fd269a0ad8a1166              # double 0.28769699999999998
	.quad	0x3febaca148ba83f5              # double 0.86482300000000001
	.quad	0x3fcc9b38d60a6330              # double 0.22348699999999999
	.quad	0x3fc45bf26f1dc50d              # double 0.159056
	.quad	0x3f92fe3f359ff4fd              # double 0.018547999999999999
	.quad	0x3fe634245f5ad96a              # double 0.69386499999999995
	.quad	0x3fa9fec99f1ae2da              # double 0.050771999999999998
	.quad	0x3fe549363f572de4              # double 0.66518699999999997
	.quad	0x3fe15e6bc621b7e1              # double 0.54277600000000004
	.quad	0x3fd017a46173b85f              # double 0.25144300000000003
	.quad	0x3fe91db22d0e5604              # double 0.78487499999999998
	.quad	0x3fe0a38da3c21188              # double 0.51996500000000001
	.quad	0x3fdd650a45d41fa7              # double 0.45929199999999998
	.quad	0x3fd18561d4306e5d              # double 0.27376600000000001
	.quad	0x3fc53c9abb01c92e              # double 0.165912
	.quad	0x3fe1568c692f6e83              # double 0.54181500000000005
	.quad	0x3f96787ce95faa8b              # double 0.021944000000000002
	.quad	0x3fe0a05ff1d81f10              # double 0.51957699999999996
	.quad	0x3fe8a1c475e6362a              # double 0.76974699999999996
	.quad	0x3fc2187a4a48f96e              # double 0.141372
	.quad	0x3fe5196fa82e87d3              # double 0.65935500000000002
	.quad	0x3fea38583621fafd              # double 0.81937800000000005
	.quad	0x3fe1b9baa1511e00              # double 0.55392200000000003
	.quad	0x3fcc84be40420f6f              # double 0.222801
	.quad	0x3fb997f62b6ae7d5              # double 0.099974999999999994
	.quad	0x3fcd5a8deb0fadf3              # double 0.229326
	.quad	0x3fc4a3f8982cb210              # double 0.16125400000000001
	.quad	0x3fda7f27fe4bcada              # double 0.41401100000000002
	.quad	0x3fd4f5275ee99a63              # double 0.327463
	.quad	0x3fed08f861a60d45              # double 0.90734499999999996
	.quad	0x3fdd70867ad8e432              # double 0.45999299999999999
	.quad	0x3fcb4528283d35eb              # double 0.21304799999999999
	.quad	0x3fd819c9d5a187a5              # double 0.37657400000000002
	.quad	0x3fdacf7878b7a1c2              # double 0.41891299999999998
	.quad	0x3fe1b441bb8c32a9              # double 0.55325400000000002
	.quad	0x3facfa26a22b3893              # double 0.056596
	.quad	0x3fd6902de00d1b71              # double 0.35254999999999997
	.quad	0x3fefd51d68c692f7              # double 0.99476500000000001
	.quad	0x3fe81919ac79702e              # double 0.75306399999999996
	.quad	0x3febd4e09784ec63              # double 0.86973599999999995
	.quad	0x3feb5cb9a9da597d              # double 0.85506899999999997
	.quad	0x3fe921b3aeee9574              # double 0.78536399999999995
	.quad	0x3fe6be5321e603d5              # double 0.71073299999999995
	.quad	0x3fcf10fd7e45803d              # double 0.24270600000000001
	.quad	0x3fde47baa9b499d0              # double 0.47312799999999999
	.quad	0x3fd56134ce3de615              # double 0.33405800000000002
	.quad	0x3fe9fb65668c2614              # double 0.81193800000000004
	.quad	0x3fdd7ac3eb7cbb3d              # double 0.46061800000000003
	.quad	0x3fda7d30ad46f588              # double 0.41389100000000001
	.quad	0x3fa192ea52ef911d              # double 0.034324
	.quad	0x3fcddcd7060bb2bc              # double 0.23330200000000001
	.quad	0x3fd4b367a0f9096c              # double 0.32345000000000002
	.quad	0x3faf37542a23bff9              # double 0.060969000000000002
	.quad	0x3feba13e3e29307b              # double 0.86343300000000001
	.quad	0x3fdd8aa00192a737              # double 0.461586
	.quad	0x3fdc427c7c5260f6              # double 0.44155800000000001
	.quad	0x3fc55432873bc904              # double 0.166632
	.quad	0x3fef45f394b7b289              # double 0.97728899999999996
	.quad	0x3fea71cfbb949625              # double 0.82639300000000004
	.quad	0x3fe32bead4f5903a              # double 0.59911099999999995
	.quad	0x3feeb5b0bbf50e34              # double 0.95967899999999994
	.quad	0x3fe41cc532a497fa              # double 0.62851199999999996
	.quad	0x3fc2cc89b0ee49f5              # double 0.146867
	.quad	0x3fad57bc7f77af64              # double 0.05731
	.quad	0x3fcfb9e060fe4799              # double 0.24786
	.quad	0x3fe9285015c20924              # double 0.78617099999999995
	.quad	0x3fefb99d451fc4c1              # double 0.99140799999999995
	.quad	0x3fe01b36bd2b6f1a              # double 0.50332200000000005
	.quad	0x3fef30b5aa715832              # double 0.97469600000000001
	.quad	0x3fe76abffcdab192              # double 0.73178100000000001
	.quad	0x3feafca643cc07ab              # double 0.84334100000000001
	.quad	0x3fd900b029281776              # double 0.39066699999999999
	.quad	0x3fd3ac96cc5fbf83              # double 0.30740899999999999
	.quad	0x3fde84a0e410b631              # double 0.47684500000000002
	.quad	0x3fc7efa615a8deb1              # double 0.187001
	.quad	0x3fcf6191148fd9fd              # double 0.24516499999999999
	.quad	0x3fd04c942d490e67              # double 0.25467400000000001
	.quad	0x3fd01dc93ea2d2fe              # double 0.25181799999999999
	.quad	0x3fee34784230fcf8              # double 0.94390499999999999
	.quad	0x3fe36bb1290257c9              # double 0.60689599999999999
	.quad	0x3fea0b0d0edc3bd6              # double 0.81384900000000004
	.quad	0x3fef9ab6d00b45ae              # double 0.98763599999999996
	.quad	0x3fec8218def416be              # double 0.89088100000000003
	.quad	0x3f88b827fa1a0cf2              # double 0.012070000000000001
	.quad	0x3fd6ffe2a3cea6c2              # double 0.35936800000000002
	.quad	0x3fbfbe33acd5b680              # double 0.123996
	.quad	0x3fcf0092ccf6be38              # double 0.242205
	.quad	0x3fe90a915379fa98              # double 0.78254000000000001
	.quad	0x3fd3c2d6a9c560c8              # double 0.30876700000000001
	.quad	0x3fed749491f2dc2b              # double 0.92048099999999999
	.quad	0x3fef57ba6698bb4d              # double 0.97945899999999996
	.quad	0x3fe748a7a41e57da              # double 0.72761900000000002
	.quad	0x3f9e4da09cc319c6              # double 0.029593000000000001
	.quad	0x3fe2b682730c6717              # double 0.58477900000000005
	.quad	0x3fdb0ec743201041              # double 0.42277700000000001
	.quad	0x3fe72f6837f7be12              # double 0.72453699999999999
	.quad	0x3fed608f21709310              # double 0.91803699999999999
	.quad	0x3feee837f7be121f              # double 0.96584700000000001
	.quad	0x3fc323d4f15e7c8d              # double 0.149531
	.quad	0x3fe31a3d2d87f887              # double 0.59695299999999996
	.quad	0x3fd644ae85b9e8c4              # double 0.34794199999999997
	.quad	0x3fed5109070fbeba              # double 0.91614200000000001
	.quad	0x3fd99949e8815e39              # double 0.39998099999999998
	.quad	0x3fce61f18c9fb613              # double 0.23736399999999999
	.quad	0x3fe65c37a3db3bfb              # double 0.69875699999999996
	.quad	0x3fecb1ec0b567558              # double 0.89671900000000004
	.quad	0x3fc31ec918e325d5              # double 0.14937700000000001
	.quad	0x3fe1555e6bc621b8              # double 0.54167100000000001
	.quad	0x3fe184be40420f6f              # double 0.547454
	.quad	0x3fe9ee88df37329c              # double 0.81036799999999997
	.quad	0x3fea45e6ff7dfa01              # double 0.82103300000000001
	.quad	0x3fe5529fe004b7f6              # double 0.66633600000000004
	.quad	0x3fed126c7eae5bc8              # double 0.90849899999999995
	.quad	0x3fd60331e3a7daa5              # double 0.343945
	.quad	0x3fdfbed30f062d41              # double 0.49602200000000002
	.quad	0x3fca549b62c77575              # double 0.205707
	.quad	0x3fdea8c586876e1e              # double 0.479051
	.quad	0x3fdc0e66cb10342b              # double 0.43837900000000002
	.quad	0x3fedd6c7219220ff              # double 0.93246799999999996
	.quad	0x3fe3c10d7be9856a              # double 0.61731599999999998
	.quad	0x3fed2ee631f8a090              # double 0.91197499999999998
	.quad	0x3fe05451fc4c1659              # double 0.510293
	.quad	0x3feff6ba0620ab71              # double 0.99886799999999997
	.quad	0x3fd2ed959a30984e              # double 0.29575099999999999
	.quad	0x3fd86d1e108c3f3e              # double 0.38166
	.quad	0x3fc618ce2d1f1cfc              # double 0.17263200000000001
	.quad	0x3fdaa23bff8a8f3b              # double 0.41615200000000002
	.quad	0x3feb39042d8c2a45              # double 0.85070999999999997
	.quad	0x3fe133c1ce6c093e              # double 0.53756800000000005
	.quad	0x3fbd986b9c304ccf              # double 0.115607
	.quad	0x3fd3365881a15550              # double 0.30019200000000001
	.quad	0x3fc34fb549f94856              # double 0.15087
	.quad	0x3feb2f1ed17c5ef6              # double 0.84950199999999998
	.quad	0x3fed50efdc9c4da9              # double 0.91613
	.quad	0x3fe01c970f7b9e06              # double 0.50348999999999999
	.quad	0x3fdce6644d877250              # double 0.45156200000000002
	.quad	0x3fe421b1960fa15e              # double 0.62911300000000003
	.quad	0x3fe5ee5cd4ed2cbf              # double 0.68534700000000004
	.quad	0x3fddba3ca7503b82              # double 0.46449200000000002
	.quad	0x3feab48f53c579f2              # double 0.83454099999999998
	.quad	0x3fe35d1a21ea3593              # double 0.60511499999999996
	.quad	0x3fea32bfdb4cc250              # double 0.81869499999999995
	.quad	0x3fe1aa60913a4f87              # double 0.55204799999999998
	.quad	0x3fdc64c729f59cd0              # double 0.44365100000000002
	.quad	0x3fecaa3cea6c1a05              # double 0.89578100000000005
	.quad	0x3fcbc7820a30db6a              # double 0.217026
	.quad	0x3fed565a14488c61              # double 0.91679100000000002
	.quad	0x3fdb00474d9c6b05              # double 0.42189199999999999
	.quad	0x3fef93c03bc4d22d              # double 0.98678600000000005
	.quad	0x3fe13f63c31df762              # double 0.53898800000000002
	.quad	0x3fc2711d798d8a98              # double 0.14407700000000001
	.quad	0x3fe5ea63b688bda9              # double 0.68486199999999997
	.quad	0x3fc2a76102795704              # double 0.145733
	.quad	0x3fd76191148fd9fd              # double 0.36532999999999999
	.quad	0x3fef5d50a88effe3              # double 0.98014100000000003
	.quad	0x3fea2ee631f8a090              # double 0.81822499999999998
	.quad	0x3fe25a2b5a20ddc6              # double 0.57350699999999999
	.quad	0x3fd110f94c87980f              # double 0.26666099999999998
	.quad	0x3fb382e44b6e935c              # double 0.076216000000000006
	.quad	0x3fdd4189374bc6a8              # double 0.457125
	.quad	0x3fe36c02f2f98740              # double 0.606935
	.quad	0x3feafaf42784a948              # double 0.84313400000000005
	.quad	0x3fcc7ddca4b124d1              # double 0.22259100000000001
	.quad	0x3fe5d7928e0c9d9d              # double 0.68256499999999998
	.quad	0x3fd6b5d031055b8a              # double 0.35484700000000002
	.quad	0x3fe80abf76a2f48c              # double 0.75131199999999997
	.quad	0x3fe77b139c94f69d              # double 0.73377400000000004
	.quad	0x3fd8c3ac929aa1d7              # double 0.38694299999999998
	.quad	0x3fe34a9691a75cd1              # double 0.60285500000000003
	.quad	0x3fc3a6ce358298cc              # double 0.153528
	.quad	0x3fed095f2452c5a0              # double 0.90739400000000003
	.quad	0x3fec4aba38759253              # double 0.88412199999999996
	.quad	0x3fe636fc158fb43e              # double 0.69421200000000005
	.quad	0x3fedd1159c497742              # double 0.93177299999999996
	.quad	0x3fee937b07075b3e              # double 0.95550299999999999
	.quad	0x3fd2ab862b27cbf7              # double 0.29171900000000001
	.quad	0x3fce1f3a57eaa2a1              # double 0.23532800000000001
	.quad	0x3fe1c6e8f29d40ee              # double 0.555531
	.quad	0x3fec02d7b634dad3              # double 0.87534699999999999
	.quad	0x3fe7bc4d22c881e4              # double 0.74173599999999995
	.quad	0x3fec73fb7a5f41af              # double 0.889158
	.quad	0x3fe4b25d4a5df224              # double 0.64677300000000004
	.quad	0x3fe50205ff1d81f1              # double 0.656497
	.quad	0x3fe4795d4e8fb00c              # double 0.63981500000000002
	.quad	0x3fe2f648c7192ea5              # double 0.59256399999999998
	.quad	0x3fe1e0eb67c286f9              # double 0.55870600000000004
	.quad	0x3fd4c6e2a80064aa              # double 0.32463900000000001
	.quad	0x3fe7fd2e94680171              # double 0.74965599999999999
	.quad	0x3fe0bc42a66dbd73              # double 0.52298100000000003
	.quad	0x3fed6da661283904              # double 0.91963499999999998
	.quad	0x3fedf633ce63a5c2              # double 0.93630400000000003
	.quad	0x3fccab3edd8b60f2              # double 0.22397600000000001
	.quad	0x3fe139f77292c493              # double 0.53832599999999997
	.quad	0x3feb02e44b6e935c              # double 0.84410300000000004
	.quad	0x3fde8887229e9079              # double 0.47708299999999998
	.quad	0x3fb85ccc89b0ee4a              # double 0.095166
	.quad	0x3fe33b60285ec3db              # double 0.60099800000000003
	.quad	0x3fd47a9e2bcf91a3              # double 0.31998399999999999
	.quad	0x3fd107a28bb0a2cb              # double 0.26609100000000002
	.quad	0x3fd2f7f498c3b0c4              # double 0.29638399999999998
	.quad	0x3fde8882f0e0a84c              # double 0.47708200000000001
	.quad	0x3fdfec52a411c2a0              # double 0.49879899999999999
	.quad	0x3faad080b673c4f4              # double 0.052372000000000002
	.quad	0x3feba393ee5eedcc              # double 0.86371799999999998
	.quad	0x3fe31791819d2392              # double 0.59662700000000002
	.quad	0x3fb0214ad362e903              # double 0.063007999999999995
	.quad	0x3fcc9f05ea24cc68              # double 0.223603
	.quad	0x3fef8ed80a17b0f7              # double 0.98618700000000003
	.quad	0x3fea9a91105e1c15              # double 0.831368
	.quad	0x3fd80b630a91537a              # double 0.375695
	.quad	0x3fe3ba1b1960fa16              # double 0.61646800000000002
	.quad	0x3fef0f12c27a6373              # double 0.97058999999999995
	.quad	0x3fe7664b2314013f              # double 0.73123700000000003
	.quad	0x3fee5a597d49d7ba              # double 0.94852899999999996
	.quad	0x3fdd23f24d8fd5cb              # double 0.45531899999999997
	.quad	0x3fe1f46aa087ca64              # double 0.56108599999999997
	.quad	0x3fd73254e6e221c9              # double 0.36244700000000002
	.quad	0x3fd5672756861e93              # double 0.33442100000000002
	.quad	0x3fe54113c68661ae              # double 0.66419399999999995
	.quad	0x3fdda8e2e2b8c75c              # double 0.46343299999999998
	.quad	0x3fe5830e3cd9a522              # double 0.67224799999999996
	.quad	0x3fe886a8fc0d2c38              # double 0.76643799999999995
	.quad	0x3fe2ff865d7cb2d9              # double 0.593692
	.quad	0x3fdc31f03d145d85              # double 0.440548
	.quad	0x3fe9ec1e364bec68              # double 0.81007300000000004
	.quad	0x3fdf28848387df5d              # double 0.486848
	.quad	0x3fa0068db8bac711              # double 0.031300000000000001
	.quad	0x3fed583c6c97d8cf              # double 0.91702099999999998
	.quad	0x3fe4a90cd423d923              # double 0.64563599999999999
	.quad	0x3fe05d9c27e95315              # double 0.51142699999999996
	.quad	0x3fdb5a07b352a844              # double 0.42737000000000003
	.quad	0x3fe834f1e4b44a1f              # double 0.756463
	.quad	0x3fcab2d905c03361              # double 0.20858299999999999
	.quad	0x3fe8886162f166e0              # double 0.76664799999999999
	.quad	0x3fda0642396073de              # double 0.40663199999999999
	.quad	0x3fd0c7a7c9de0503              # double 0.26218599999999997
	.quad	0x3fdaae74f2f123c4              # double 0.41689799999999999
	.quad	0x3fe79ef0f16f4385              # double 0.73815200000000003
	.quad	0x3fcdf3ade225fa66              # double 0.23399900000000001
	.quad	0x3fe7f1cfbb949625              # double 0.74826800000000004
	.quad	0x3febbee3d5fdcdf7              # double 0.86705200000000004
	.quad	0x3fedaca36199780c              # double 0.92732400000000003
	.quad	0x3fd3e17e34b94531              # double 0.31063800000000003
	.quad	0x3fc694573a797892              # double 0.176402
	.quad	0x3fe1f1a5ca29845e              # double 0.56074800000000002
	.quad	0x3fc944b2b777d0f2              # double 0.197409
	.quad	0x3fea7f3cf70153bd              # double 0.82803199999999999
	.quad	0x3fe0edd26b723ee2              # double 0.52903100000000003
	.quad	0x3fe6ac36544fe36d              # double 0.70852199999999999
	.quad	0x3fd51db877ab3248              # double 0.32993899999999998
	.quad	0x3fe5cf6be37de93a              # double 0.68157000000000001
	.quad	0x3fbdfd9ba1b19610              # double 0.11715100000000001
	.quad	0x3fe6769ca9ef5233              # double 0.70197900000000002
	.quad	0x3fd490de093532e8              # double 0.32134200000000002
	.quad	0x3fcd157abb8800eb              # double 0.227218
	.quad	0x3fad41d8e8640208              # double 0.057142999999999999
	.quad	0x3fe88904f6dfc5ce              # double 0.76672600000000002
	.quad	0x3fe21496249a133c              # double 0.56501299999999999
	.quad	0x3fd1929ed3953dea              # double 0.27457399999999998
	.quad	0x3fed27c17a89331a              # double 0.911103
	.quad	0x3fcd4213a0c6b485              # double 0.228579
	.quad	0x3fec6b851eb851ec              # double 0.88812500000000005
	.quad	0x3fcbe8f6cefed634              # double 0.21804699999999999
	.quad	0x3fe159ccfaeff5c7              # double 0.54221200000000003
	.quad	0x3fc6471b47842310              # double 0.17404500000000001
	.quad	0x3fbe3422467be554              # double 0.117983
	.quad	0x3fdf6cb5350092cd              # double 0.49101
	.quad	0x3fee1528f190d174              # double 0.940083
	.quad	0x3fdeac471b478423              # double 0.479265
	.quad	0x3fe90f2becedd484              # double 0.78310199999999996
	.quad	0x3fdb2d7f950b955f              # double 0.42465199999999997
	.quad	0x3fc2f440af1cb89d              # double 0.14807899999999999
	.quad	0x3fd9a6fc58ab92c0              # double 0.40081699999999998
	.quad	0x3fe69148fd9fd36f              # double 0.70523499999999995
	.quad	0x3fdb2ae4b0186120              # double 0.42449300000000001
	.quad	0x3fe5266559f6ec5b              # double 0.660937
	.quad	0x3fe69f687b139c95              # double 0.706959
	.quad	0x3fe6e0285ec3dab6              # double 0.71486300000000003
	.quad	0x3fe6f74cd31769a9              # double 0.71768799999999999
	.quad	0x3febb60285ec3dab              # double 0.86596799999999996
	.quad	0x3fdc42f1ed17c5ef              # double 0.44158599999999998
	.quad	0x3fe589dadfb506dd              # double 0.67307799999999995
	.quad	0x3fe08dc33721d53d              # double 0.51730500000000001
	.quad	0x3fdd9107faa044af              # double 0.46197700000000003
	.quad	0x3fedb6d43d03968d              # double 0.92856799999999995
	.quad	0x3fe212ddbdb5d895              # double 0.56480300000000006
	.quad	0x3fefbef06b37867f              # double 0.99205799999999999
	.quad	0x3fe2644b6e935b92              # double 0.574743
	.quad	0x3fe651116a8b8f15              # double 0.69739600000000002
	.quad	0x3fbfd63022dd7a9a              # double 0.124362
	.quad	0x3fd4e6ab9b23dd55              # double 0.32657900000000001
	.quad	0x3fe943c5bd0e12e8              # double 0.78952299999999997
	.quad	0x3fdac8e25c810a57              # double 0.41851100000000002
	.quad	0x3fb5320d9945b6c3              # double 0.082794999999999994
	.quad	0x3fe1573a797891e2              # double 0.54189799999999999
	.quad	0x3fe51e236c15d2d0              # double 0.65992899999999999
	.quad	0x3fe3b632c1f42bb6              # double 0.61599099999999996
	.quad	0x3fe7a93f290abb45              # double 0.73941000000000001
	.quad	0x3fe0e7fb267c6b8b              # double 0.52831799999999995
	.quad	0x3fd2be27179bfdf8              # double 0.29285600000000001
	.quad	0x3fa115379fa97e13              # double 0.033364999999999999
	.quad	0x3fe22a4b9884c6a4              # double 0.56766300000000003
	.quad	0x3fd302d59d55e6bc              # double 0.29704799999999998
	.quad	0x3fcd8e9f6a93f291              # double 0.23091500000000001
	.quad	0x3fdade657b84db9c              # double 0.41982399999999997
	.quad	0x3fe85f78359bc340              # double 0.76165400000000005
	.quad	0x3fdf58d5842b734b              # double 0.48979699999999998
	.quad	0x3fdb3be22e5de15d              # double 0.42553000000000002
	.quad	0x3fef25df2239e6ac              # double 0.97337300000000004
	.quad	0x3fde2d5171e29b6b              # double 0.47151599999999999
	.quad	0x3fe306cebbba55d2              # double 0.59458100000000003
	.quad	0x3febb897204295a7              # double 0.86628300000000003
	.quad	0x3fecf240fa9c12f1              # double 0.90457200000000004
	.quad	0x3fbe3b688bda9436              # double 0.118094
	.quad	0x3feb1ac14c660a20              # double 0.84701599999999999
	.quad	0x3fc91f14983d7907              # double 0.19626099999999999
	.quad	0x3fc5dda059a73b43              # double 0.17082600000000001
	.quad	0x3fe949cf56eac860              # double 0.79025999999999996
	.quad	0x3fc3e43675ddd2af              # double 0.15540200000000001
	.quad	0x3fefcbe40420f6f1              # double 0.99363900000000004
	.quad	0x3fd1055757d5a9eb              # double 0.26595099999999999
	.quad	0x3fd60a30db6a1e82              # double 0.34437200000000001
	.quad	0x3fe395ad106ee30d              # double 0.61202100000000004
	.quad	0x3fed6f0281ba7fc3              # double 0.91980099999999998
	.quad	0x3fe4009f623076c0              # double 0.62507599999999996
	.quad	0x3feaf43c7d5ed070              # double 0.84231400000000001
	.quad	0x3fd49463cfb3311a              # double 0.32155699999999998
	.quad	0x3fcf5818c5c9a34d              # double 0.24487600000000001
	.quad	0x3fc74b167ec7863c              # double 0.181979
	.quad	0x3fd1e95b78cc9a78              # double 0.27986800000000001
	.quad	0x3fe4291fb3fa6df0              # double 0.63002000000000002
	.quad	0x3fa92a305532617c              # double 0.049149999999999999
	.quad	0x3fe0cd594f26aec0              # double 0.52506699999999995
	.quad	0x3fe18e5a35d67ba2              # double 0.54862699999999998
	.quad	0x3fb2a78af3e468cb              # double 0.072869000000000003
	.quad	0x3fcf988d2a1f8e3b              # double 0.24684300000000001
	.quad	0x3fd6c7b45f17bd8c              # double 0.35593900000000001
	.quad	0x3fea470c996b7671              # double 0.82117300000000004
	.quad	0x3feb0c0f01fb82c3              # double 0.84522200000000003
	.quad	0x3fe2bc36113404ea              # double 0.58547499999999997
	.quad	0x3f5ef30a4e379b78              # double 0.0018890000000000001
	.quad	0x3fe1188094e5d5b2              # double 0.53424099999999997
	.quad	0x3fb790214ad362e9              # double 0.092043
	.quad	0x3fe848ffb8b26395              # double 0.758911
	.quad	0x3fddc2374794ea07              # double 0.46497899999999998
	.quad	0x3fd2b790fb65668c              # double 0.29245399999999999
	.quad	0x3fd73c42a66dbd73              # double 0.36305300000000001
	.quad	0x3fe2496249a133c2              # double 0.57145800000000002
	.quad	0x3fe743f1c75818c6              # double 0.72704400000000002
	.quad	0x3fda7a67a52ac754              # double 0.41372100000000001
	.quad	0x3fd394face67d780              # double 0.30596800000000002
	.quad	0x3fdcb8b26394face              # double 0.44877299999999998
	.quad	0x3fe3298aa8650e78              # double 0.59882100000000005
	.quad	0x3feea86b59146e4c              # double 0.95805899999999999
	.quad	0x3fcb07e175d13d75              # double 0.211178
	.quad	0x3fd540aaeafab53d              # double 0.33207199999999998
	.quad	0x3fe8e73c4f3ba776              # double 0.778227
	.quad	0x3fd891f2dc2b0ea2              # double 0.38390800000000003
	.quad	0x3fd08cef672b8844              # double 0.258602
	.quad	0x3fd489331a08bfc2              # double 0.32087399999999999
	.quad	0x3fee351372a38b8b              # double 0.94397900000000001
	.quad	0x3fd98bdec5f394b8              # double 0.39916200000000002
	.quad	0x3fc6d85dfa871a3b              # double 0.178478
	.quad	0x3fe19de26916440f              # double 0.55052299999999998
	.quad	0x3fdb6defc7a39820              # double 0.42858499999999999
	.quad	0x3f9567dbb16c1e36              # double 0.020903999999999999
	.quad	0x3fd97b80a9de8b3b              # double 0.39816299999999999
	.quad	0x3fe0f748a159817c              # double 0.53018600000000005
	.quad	0x3fda260f5e41d4b7              # double 0.40857300000000002
	.quad	0x3feafc9363f572de              # double 0.84333199999999997
	.quad	0x3fe0f7a4e7ab7564              # double 0.53022999999999998
	.quad	0x3fc3b04ee7c49fd8              # double 0.15381800000000001
	.quad	0x3fec37995ee136e7              # double 0.88178699999999999
	.quad	0x3fd6ae0c17657753              # double 0.35437299999999999
	.quad	0x3fce628027d88c1e              # double 0.23738100000000001
	.quad	0x3fddf8ceb356da01              # double 0.46831099999999998
	.quad	0x3fae90bc7b45f17c              # double 0.059698000000000001
	.quad	0x3fc7ab862b27cbf7              # double 0.184922
	.quad	0x3fe76a67e846a5d7              # double 0.73173900000000003
	.quad	0x3fed424c404a72eb              # double 0.91434300000000002
	.quad	0x3fe4022bbecaab8a              # double 0.62526499999999996
	.quad	0x3fd3f0281ba7fc33              # double 0.311533
	.quad	0x3fe5351159c49774              # double 0.66272799999999998
	.quad	0x3fd89c51dabe2718              # double 0.38454100000000002
	.quad	0x3fd91cc532a497fa              # double 0.39238099999999998
	.quad	0x3fd622036006d0d5              # double 0.34582600000000002
	.quad	0x3fbccfaeff5c6c12              # double 0.11254400000000001
	.quad	0x3fa626f60e0eb67c              # double 0.043265999999999999
	.quad	0x3fe00d972cd7cf5f              # double 0.50165899999999997
	.quad	0x3fefd25247cb70ac              # double 0.99442399999999997
	.quad	0x3fc1b8c32a8c9b84              # double 0.13845099999999999
	.quad	0x3fdd2f1ed17c5ef6              # double 0.45600099999999999
	.quad	0x3fe7c8cb4aec8d5c              # double 0.74326099999999995
	.quad	0x3fd46bc1eff9f87f              # double 0.319077
	.quad	0x3fe91a52263d816b              # double 0.78446300000000002
	.quad	0x3fe2c4241c3efae8              # double 0.58644300000000005
	.quad	0x3fd1ef5ec80c73ac              # double 0.28023500000000001
	.quad	0x3fda6698bb4d4888              # double 0.41251199999999999
	.quad	0x3fcb0e5e679463d0              # double 0.21137600000000001
	.quad	0x3fea1fa333764f12              # double 0.81636200000000003
	.quad	0x3fd74f82f5126634              # double 0.364228
	.quad	0x3fcda86940357a35              # double 0.23170199999999999
	.quad	0x3fb0b35f3d7d3911              # double 0.065237000000000003
	.quad	0x3fd080b242070b8d              # double 0.257855
	.quad	0x3fe7bc8c0ce91c8f              # double 0.74176600000000004
	.quad	0x3fdca46e08f21709              # double 0.44753599999999999
	.quad	0x3fc4e3de6149c6f3              # double 0.16320399999999999
	.quad	0x3fe140d6f544bb1b              # double 0.53916500000000001
	.quad	0x3fdb641b328b6d87              # double 0.427985
	.quad	0x3fee1704ff43419e              # double 0.94030999999999998
	.quad	0x3fc0c6c54bcf0b6b              # double 0.13106599999999999
	.quad	0x3fda1b5c7cd898b3              # double 0.40792
	.quad	0x3fa29691a75cd0bb              # double 0.036304999999999997
	.quad	0x3fe550bb6ed67770              # double 0.66610499999999995
	.quad	0x3fd4c60029f16b12              # double 0.32458500000000001
	.quad	0x3fc73e5753a3ec03              # double 0.18159
	.quad	0x3fe2461b6d43d039              # double 0.57105799999999995
	.quad	0x3fda565c2d278078              # double 0.41152100000000003
	.quad	0x3fee9185cee17a03              # double 0.955264
	.quad	0x3fd4243137b07076              # double 0.31470900000000002
	.quad	0x3fb4ff865d7cb2d9              # double 0.082024
	.quad	0x3fefd75c0767d34e              # double 0.99503900000000001
	.quad	0x3fc16b441bb8c32b              # double 0.13608600000000001
	.quad	0x3fa4c6a3bddfca00              # double 0.040578000000000003
	.quad	0x3febeb67c286f8ad              # double 0.87248599999999998
	.quad	0x3f9c5197a24894c4              # double 0.027654999999999999
	.quad	0x3feaec093d966384              # double 0.84131299999999997
	.quad	0x3fe43f6a0dbad3a6              # double 0.632741
	.quad	0x3fd9beb9e492bc30              # double 0.40226600000000001
	.quad	0x3fe9eae18ac9f2fe              # double 0.80992200000000003
	.quad	0x3fe8d94af4f0d845              # double 0.77652500000000002
	.quad	0x3fe2b29802c0a4a0              # double 0.58430099999999996
	.quad	0x3fe8b20fb224aada              # double 0.77173599999999998
	.quad	0x3fe15a33bd9cae21              # double 0.54226099999999999
	.quad	0x3fea98f3eccc4695              # double 0.83117099999999999
	.quad	0x3fe4e7d566cf41f2              # double 0.65329999999999999
	.quad	0x3fc4f36694898f60              # double 0.16367799999999999
	.quad	0x3fe18a6117720c8d              # double 0.54814200000000002
	.quad	0x3fc855f3519bd406              # double 0.19012299999999999
	.quad	0x3feba5f84cad57bc              # double 0.86400999999999994
	.quad	0x3fe335ed8d36b4c8              # double 0.60033300000000001
	.quad	0x3fdedc11e42e1262              # double 0.482182
	.quad	0x3fdea958537e2c56              # double 0.47908600000000001
	.quad	0x3fef3e09bb6aa4ba              # double 0.97632300000000005
	.quad	0x3fe210752da98677              # double 0.56450900000000004
	.quad	0x3fcc0e410b630a91              # double 0.21918499999999999
	.quad	0x3fed8c8472c0e7bc              # double 0.92340299999999997
	.quad	0x3fe11f42bb6672fc              # double 0.53506600000000004
	.quad	0x3fdbb8b69552e2fc              # double 0.43314900000000001
	.quad	0x3fc2c2df0d413123              # double 0.14657200000000001
	.quad	0x3fd7def416bdb1a7              # double 0.37298300000000001
	.quad	0x3feac1919ac79703              # double 0.83612900000000001
	.quad	0x3fee06cca2db61bb              # double 0.93833
	.quad	0x3fe8ddc6195464dc              # double 0.77707199999999998
	.quad	0x3fb5b13165d39970              # double 0.084735000000000004
	.quad	0x3fecea65cf67b1c0              # double 0.903613
	.quad	0x3fdf7dbb16c1e365              # double 0.49204900000000001
	.quad	0x3fdd9f3c70c996b7              # double 0.46284399999999998
	.quad	0x3f8dbec2480e8c8b              # double 0.014524
	.quad	0x3fce75ee99a62ed3              # double 0.23797399999999999
	.quad	0x3fd90ddc6195464e              # double 0.39147100000000001
	.quad	0x3fd532ebe596c82e              # double 0.331233
	.quad	0x3fdbf16b11c6d1e1              # double 0.43661
	.quad	0x3fc95c0fcb4f1e4b              # double 0.19812199999999999
	.quad	0x3fef7df3b645a1cb              # double 0.98412500000000002
	.quad	0x3fa84d76ab5807ff              # double 0.047466000000000001
	.quad	0x3fd013d74d594f27              # double 0.25121100000000002
	.quad	0x3fe23e9856a37ac4              # double 0.57014100000000001
	.quad	0x3fc4834d26fa3fcd              # double 0.16025700000000001
	.quad	0x3fd15000c9539b89              # double 0.27050800000000003
	.quad	0x3feb97507e9d94d1              # double 0.86222100000000002
	.quad	0x3fef2b606b7aa25e              # double 0.97404500000000005
	.quad	0x3fd957e670e2c12b              # double 0.39599000000000001
	.quad	0x3fdbcc5b8dc55001              # double 0.43434800000000001
	.quad	0x3fe1a47cb70ac3a8              # double 0.55132899999999996
	.quad	0x3fc6e60807357e67              # double 0.178895
	.quad	0x3fe3f7446f9b994e              # double 0.62393399999999999
	.quad	0x3fddababead4f590              # double 0.46360299999999999
	.quad	0x3fe72eafab53d641              # double 0.72444900000000001
	.quad	0x3feee6c6de76427c              # double 0.96567099999999994
	.quad	0x3fb5fce3150dae3e              # double 0.085889999999999994
	.quad	0x3fe43e6601bc98a2              # double 0.63261699999999998
	.quad	0x3fed6eb4e981387a              # double 0.91976400000000003
	.quad	0x3fd8420b3d4ae42a              # double 0.37903100000000001
	.quad	0x3fba0e1f7d73c925              # double 0.10177799999999999
	.quad	0x3fddcbf6e3f78bbd              # double 0.46557399999999999
	.quad	0x3fd25c31593e5fb7              # double 0.28687699999999999
	.quad	0x3fc6e90364388ebd              # double 0.17898600000000001
	.quad	0x3fc527ed84d338f8              # double 0.16528100000000001
	.quad	0x3feeaa5a469d7343              # double 0.958295
	.quad	0x3fc41cffeb074a77              # double 0.157135
	.quad	0x3fee7befd00713f0              # double 0.95262899999999995
	.quad	0x3fe0eda0168b5cc0              # double 0.52900700000000001
	.quad	0x3fba00192a737111              # double 0.101564
	.quad	0x3fc2b4d056c508b3              # double 0.146143
	.quad	0x3fea5f6124074645              # double 0.82414299999999996
	.quad	0x3fdfa91d9b1b79d9              # double 0.494697
	.quad	0x3fe0c9752977c88e              # double 0.52459199999999995
	.quad	0x3fedccd74927913f              # double 0.93125500000000005
	.quad	0x3fa76102795703f3              # double 0.045662000000000001
	.quad	0x3fe40813cab81f97              # double 0.62598600000000004
	.quad	0x3fef80346dc5d639              # double 0.98440000000000005
	.quad	0x3fdc3543aeab7996              # double 0.440751
	.quad	0x3fd06b9c304ccee6              # double 0.25656800000000002
	.quad	0x3fd271ef30a4e37a              # double 0.28820400000000002
	.quad	0x3fdaef62f9ca5bd9              # double 0.42086099999999999
	.quad	0x3fdc4024b33daf8e              # double 0.441415
	.quad	0x3fc9124d099e0e73              # double 0.19587099999999999
	.quad	0x3fe5c5308bb90646              # double 0.68032099999999995
	.quad	0x3fcfb1183b60285f              # double 0.24759200000000001
	.quad	0x3fb5aee631f8a090              # double 0.084699999999999997
	.quad	0x3fb951a437824d4d              # double 0.098902000000000004
	.quad	0x3fe7e236c15d2d02              # double 0.74636400000000003
	.quad	0x3fe299220ff54089              # double 0.58119299999999996
	.quad	0x3fee4528283d35eb              # double 0.94594199999999995
	.quad	0x3fe3edc1a47a9e2c              # double 0.62277300000000002
	.quad	0x3fbc9d6adf71eaff              # double 0.111777
	.quad	0x3fedf11b60ae9681              # double 0.93568200000000001
	.quad	0x3fd20cc35ce18266              # double 0.28202899999999997
	.quad	0x3fcbddfc9ff92f2b              # double 0.21771199999999999
	.quad	0x3fe2cffeb074a772              # double 0.58789000000000002
	.quad	0x3fe22bde3fbbd7b2              # double 0.567855
	.quad	0x3fe611b1d92b7fe1              # double 0.68966000000000005
	.quad	0x3fb91fe64f54d1e9              # double 0.098142999999999994
	.quad	0x3fd8df4c2b51bd62              # double 0.388629
	.quad	0x3fd4621fafc8b008              # double 0.31848900000000002
	.quad	0x3fb27c393682730c              # double 0.072207999999999994
	.quad	0x3fdd002e2328f9f4              # double 0.45313599999999998
	.quad	0x3f90ff10ecb74de0              # double 0.016598000000000002
	.quad	0x3fd50270f3882279              # double 0.32827400000000001
	.quad	0x3fe2761aa3f034b1              # double 0.57691700000000001
	.quad	0x3fea520296b3354c              # double 0.82251099999999999
	.quad	0x3fe98c38f366948a              # double 0.79836700000000005
	.quad	0x3fe221c044284dfd              # double 0.56662000000000001
	.quad	0x3fd881f53825e13b              # double 0.38293199999999999
	.quad	0x3fe81ca3a4b5568f              # double 0.75349600000000005
	.quad	0x3fc75158b827fa1a              # double 0.18217
	.quad	0x3fedba8e71476af9              # double 0.92902300000000004
	.quad	0x3fc8e2c12ad81adf              # double 0.19442000000000001
	.quad	0x3fc731f46ed245b3              # double 0.18121200000000001
	.quad	0x3fe35c8b86b15f89              # double 0.605047
	.quad	0x3fe29ced0b30b5aa              # double 0.58165599999999995
	.quad	0x3fe74dea033e78e2              # double 0.72826100000000005
	.quad	0x3fb819e30014f8b6              # double 0.094145000000000006
	.quad	0x3fcd0ac3a860dcba              # double 0.22689100000000001
	.quad	0x3fe11b0468448cf8              # double 0.53454800000000002
	.quad	0x3fe2d9a95421c044              # double 0.58906999999999998
	.quad	0x3fd33f67f4dbdf8f              # double 0.30074499999999998
	.quad	0x3fe1464dc22ab25b              # double 0.53983199999999998
	.quad	0x3fed65cb35f3d7d4              # double 0.91867600000000004
	.quad	0x3fc8095f2452c5a0              # double 0.18778600000000001
	.quad	0x3fe7c97b7414a4d3              # double 0.74334500000000003
	.quad	0x3feedd590c0ad03e              # double 0.96452000000000004
	.quad	0x3fe436848beb5b2d              # double 0.63165499999999997
	.quad	0x3fe5145b6c3760bf              # double 0.65873499999999996
	.quad	0x3fb7b59ddc1e7968              # double 0.092615000000000003
	.quad	0x3fea1841aac53b08              # double 0.81546099999999999
	.quad	0x3fec1572580c3090              # double 0.87761800000000001
	.quad	0x3fe26a209aaa3ad2              # double 0.57545500000000005
	.quad	0x3fc71d3ed527e521              # double 0.18057999999999999
	.quad	0x3fed450efdc9c4db              # double 0.91468000000000005
	.quad	0x3f727807789a4591              # double 0.004509
	.quad	0x3fc226bb55ac03ff              # double 0.14180699999999999
	.quad	0x3fda57e670e2c12b              # double 0.41161500000000001
	.quad	0x3fe2c7a5b0ff10ed              # double 0.58687100000000003
	.quad	0x3fef60370cdc8755              # double 0.980495
	.quad	0x3fdd1800a7c5ac47              # double 0.45458999999999999
	.quad	0x3fd0316a055757d6              # double 0.25301600000000002
	.quad	0x3fb1897a67a52ac7              # double 0.068503999999999995
	.quad	0x3fe809f1f14983d8              # double 0.75121400000000005
	.quad	0x3fee3d74d594f26b              # double 0.94500200000000001
	.quad	0x3fe2012dfd694ccb              # double 0.56264400000000003
	.quad	0x3fefd4866a11ec92              # double 0.99469300000000005
	.quad	0x3fd54d0dcfcc5b8e              # double 0.33282800000000001
	.quad	0x3fdd635610adcd2d              # double 0.45918799999999999
	.quad	0x3fe3995aaf78feef              # double 0.61246999999999996
	.quad	0x3feffa05143bf727              # double 0.99926999999999999
	.quad	0x3fe5753e707e175d              # double 0.67056199999999999
	.quad	0x3fb2f284167a95c8              # double 0.074012999999999995
	.quad	0x3fe8190afe60c38f              # double 0.75305699999999998
	.quad	0x3fe8b71758e21965              # double 0.77234999999999998
	.quad	0x3fe5bd07c84b5dcc              # double 0.67932499999999996
	.quad	0x3fc6594af4f0d845              # double 0.17460000000000001
	.quad	0x3fed97b5286b5914              # double 0.92476899999999995
	.quad	0x3fe52059a73b42cc              # double 0.66019899999999998
	.quad	0x3fd6422467be553b              # double 0.34778700000000001
	.quad	0x3fdb984a0e410b63              # double 0.43117
	.quad	0x3fe6a1709310129d              # double 0.70720700000000003
	.quad	0x3fe77e47991bc558              # double 0.73416499999999996
	.quad	0x3fc314fce746cb96              # double 0.14907799999999999
	.quad	0x3fc2357a355043e5              # double 0.14225699999999999
	.quad	0x3fb569c23b7952d2              # double 0.083644999999999997
	.quad	0x3fe4645c358afc48              # double 0.63725100000000001
	.quad	0x3fdf3636f3b213e4              # double 0.48768400000000001
	.quad	0x3fe6d1d8a5482385              # double 0.71311599999999997
	.quad	0x3fbde9d0e991ff71              # double 0.11684899999999999
	.quad	0x3fd06e653868fd1a              # double 0.25673800000000002
	.quad	0x3fd9c964628027d9              # double 0.40291700000000003
	.quad	0x3fe23854046412cf              # double 0.56937599999999999
	.quad	0x3fc8b441bb8c32a9              # double 0.19300100000000001
	.quad	0x3fea955714b9cb68              # double 0.83072999999999997
	.quad	0x3fc2f3cb3e5753a4              # double 0.148065
	.quad	0x3fe31244a6223e18              # double 0.59597999999999995
	.quad	0x3fec27ded6ba8c58              # double 0.87986699999999995
	.quad	0x3fe907f66e86c658              # double 0.78222199999999997
	.quad	0x3fed054cdb7ae579              # double 0.90689699999999995
	.quad	0x3fc3c98a222d5172              # double 0.154588
	.quad	0x3fe01fd1569f4906              # double 0.503884
	.quad	0x3fe6d40aaeafab54              # double 0.71338400000000002
	.quad	0x3fd8f2e05ccc89b1              # double 0.389824
	.quad	0x3fe1ba8826aa8eb4              # double 0.55401999999999996
	.quad	0x3fd5ea7ce0fc2eba              # double 0.34243699999999999
	.quad	0x3fe973929ed3953e              # double 0.79535800000000001
	.quad	0x3fa36672fba01eef              # double 0.037891000000000001
	.quad	0x3fb5622813448063              # double 0.083529000000000006
	.quad	0x3fe2d88a04d12019              # double 0.58893300000000004
	.quad	0x3fe65985ad538ac2              # double 0.69842800000000005
	.quad	0x3fd92756861e9292              # double 0.39302599999999999
	.quad	0x3fe4bebe1650a45d              # double 0.64828399999999997
	.quad	0x3fe9f53a3ec02f30              # double 0.81118500000000004
	.quad	0x3fe80d32830a0b1c              # double 0.75161100000000002
	.quad	0x3fdee054690de093              # double 0.48244199999999998
	.quad	0x3fc373860999dcb5              # double 0.15196299999999999
	.quad	0x3fea7b7a5f41aef7              # double 0.827573
	.quad	0x3fe50728e92d55a4              # double 0.65712400000000004
	.quad	0x3fc67d2c7b890d5a              # double 0.17569499999999999
	.quad	0x3fe99eeed8904f6e              # double 0.800651
	.quad	0x3fd922ea0fd3b29a              # double 0.39275599999999999
	.quad	0x3fe709fc6da44849              # double 0.71996899999999997
	.quad	0x3fe11cdc443914f5              # double 0.53477300000000005
	.quad	0x3fcc6338b47c73ef              # double 0.221778
	.quad	0x3fed1ca3a4b5568f              # double 0.90974600000000005
	.quad	0x3f9848387df5cf25              # double 0.023713000000000001
	.quad	0x3fe4aaed1394317b              # double 0.64586500000000002
	.quad	0x3fc21f85d744f5d3              # double 0.14158699999999999
	.quad	0x3fef0060780fdc16              # double 0.96879599999999999
	.quad	0x3fd6abcd78c436fc              # double 0.354236
	.quad	0x3fe8ef9db22d0e56              # double 0.77925
	.quad	0x3fd692ea52ef911d              # double 0.352717
	.quad	0x3fd47c1376d54973              # double 0.320073
	.quad	0x3fdac0c1fc8f3238              # double 0.41801500000000003
	.quad	0x3fedc521dda059a7              # double 0.93031399999999997
	.quad	0x3fe12cbea4ebdd33              # double 0.53671199999999997
	.quad	0x3fe62de8709741d1              # double 0.69310400000000005
	.quad	0x3fe60d3f1843c3a4              # double 0.68911699999999998
	.quad	0x3f9723aafff36ac6              # double 0.022596999999999999
	.quad	0x3fe6702e6644d877              # double 0.70119399999999998
	.quad	0x3fe13804534bd76f              # double 0.53808800000000001
	.quad	0x3feb91a543f1c758              # double 0.86152899999999999
	.quad	0x3fdfb7fe08aefb2b              # double 0.49560500000000002
	.quad	0x3fd7a5daf07bfe7e              # double 0.36949799999999999
	.quad	0x3fe0f5f0b28522ea              # double 0.53002199999999999
	.quad	0x3fe03d5dc4007571              # double 0.50749100000000003
	.quad	0x3fee0711d798d8a9              # double 0.93836299999999995
	.quad	0x3fef0e0221426fe7              # double 0.97045999999999998
	.quad	0x3fd148a9bcfd4bf1              # double 0.27006000000000002
	.quad	0x3fa3c0a06e9ff0cc              # double 0.038579000000000002
	.quad	0x3fec9dd1a21ea359              # double 0.89426499999999998
	.quad	0x3fe2c24a276b7ed4              # double 0.58621699999999999
	.quad	0x3fd16e978d4fdf3b              # double 0.27237499999999998
	.quad	0x3fb4f8b588e368f1              # double 0.081920000000000007
	.quad	0x3fc3e09bb6aa4b99              # double 0.15529200000000001
	.quad	0x3fe1a0f6f08cc576              # double 0.55089900000000003
	.quad	0x3fe785510d38cda7              # double 0.73502400000000001
	.quad	0x3fe71795b35b0bbf              # double 0.72162899999999996
	.quad	0x3fd954046412cf10              # double 0.39575300000000002
	.quad	0x3fe73b1f255f351a              # double 0.72596700000000003
	.quad	0x3fcf5d35653c9abb              # double 0.245032
	.quad	0x3f0cd5f99c38b04b              # double 5.5000000000000002E-5
	.quad	0x3fef1d55e6bc621b              # double 0.97233099999999994
	.quad	0x3fe55538ac18f81f              # double 0.66665300000000005
	.quad	0x3fb59578a2a90cd4              # double 0.084311999999999998
	.quad	0x3fe917edc7ef177a              # double 0.78417099999999995
	.quad	0x3fcb23897204295a              # double 0.21202199999999999
	.quad	0x3fec28cbd1244a62              # double 0.87997999999999998
	.quad	0x3fe75c6c11a11234              # double 0.73003200000000001
	.quad	0x3fd95000c9539b89              # double 0.39550800000000003
	.quad	0x3fe6cbb1af3a14cf              # double 0.71236500000000003
	.quad	0x3fe51d0e991ff716              # double 0.65979699999999997
	.quad	0x3fe09c0ebedfa440              # double 0.51905000000000001
	.quad	0x3fee371971c10d7c              # double 0.944226
	.quad	0x3fd4dd1e53a81dc1              # double 0.32599600000000001
	.quad	0x3fcf61c36976bc1f              # double 0.245171
	.quad	0x3fe985fd04a2fcf0              # double 0.79760600000000004
	.quad	0x3fab313be22e5de1              # double 0.053109999999999997
	.quad	0x3fe40cbd1244a622              # double 0.62655499999999997
	.quad	0x3fef69d7342edbb6              # double 0.98167000000000004
	.quad	0x3febee5471715c64              # double 0.87284300000000003
	.quad	0x3fbdbf162ae4b018              # double 0.11619699999999999
	.quad	0x3fdae71476af89c6              # double 0.42035400000000001
	.quad	0x3fbd6084a515ce9e              # double 0.11475399999999999
	.quad	0x3fb121ccd9620685              # double 0.066921999999999995
	.quad	0x3fed26ca03c4b09f              # double 0.91098500000000004
	.quad	0x3fe19e57d9dba909              # double 0.55057900000000004
	.quad	0x3fc28626f60e0eb6              # double 0.14471899999999999
	.quad	0x3fc660aa64c2f838              # double 0.17482500000000001
	.quad	0x3feae93e1c9b413a              # double 0.84097200000000005
	.quad	0x3feeabf338716095              # double 0.95848999999999995
	.quad	0x3fc771327243137b              # double 0.183142
	.quad	0x3fe72046c764ae00              # double 0.72269000000000005
	.quad	0x3fcc2e5de15ca6ca              # double 0.220165
	.quad	0x3f769f4906034f40              # double 0.0055230000000000001
	.quad	0x3fe6f29b280f12c2              # double 0.71711499999999995
	.quad	0x3fd03bafd976ff3b              # double 0.25364300000000001
	.quad	0x3fe1a5072085b185              # double 0.55139499999999997
	.quad	0x3fe86b8b69552e30              # double 0.76312800000000003
	.quad	0x3fd59e1f3a57eaa3              # double 0.33777600000000002
	.quad	0x3fdb4be835dedf1e              # double 0.426508
	.quad	0x3fcb2f2b66b6177f              # double 0.21237700000000001
	.quad	0x3fedf0d413122b7c              # double 0.93564800000000003
	.quad	0x3fe78f57f737da62              # double 0.73624800000000001
	.quad	0x3fed50ebaade657c              # double 0.91612800000000005
	.quad	0x3fc0eee957470eb2              # double 0.13229099999999999
	.quad	0x3fea4adff822bbed              # double 0.82164000000000004
	.quad	0x3fe20ff759685122              # double 0.56444899999999998
	.quad	0x3feeea78af3e468d              # double 0.96612200000000003
	.quad	0x3fdf211cb039ef0f              # double 0.486396
	.quad	0x3fd22a12f901083e              # double 0.28381800000000001
	.quad	0x3fdfbeb18116ebd5              # double 0.49601400000000001
	.quad	0x3fdf7a398201cd60              # double 0.49183500000000002
	.quad	0x3fe6c827b6fe2e6f              # double 0.71193300000000004
	.quad	0x3fee039042d8c2a4              # double 0.93793499999999996
	.quad	0x3fe4f3bc903ea705              # double 0.65475300000000003
	.quad	0x3fb947cfa26a22b4              # double 0.098752000000000006
	.quad	0x3feb60bd44998d04              # double 0.85555899999999995
	.quad	0x3fe0d83a53b8e4b8              # double 0.52639499999999995
	.quad	0x3fedd4e8fb00bcbe              # double 0.93223999999999996
	.quad	0x3fa61bb05faebc41              # double 0.043180000000000003
	.quad	0x3fe97fa7eb6bf445              # double 0.79683300000000001
	.quad	0x3fc4da122fad6cb5              # double 0.16290499999999999
	.quad	0x3fd5fb3743632c1f              # double 0.34345799999999999
	.quad	0x3fb921ab4b72c519              # double 0.098169999999999993
	.quad	0x3fbada87a072d1af              # double 0.104897
	.quad	0x3fec5dbdb5d89481              # double 0.88644299999999998
	.quad	0x3fde130164840e17              # double 0.46990999999999999
	.quad	0x3fb879a2834d26fa              # double 0.095605999999999996
	.quad	0x3fe6a3571d1d4739              # double 0.70743900000000004
	.quad	0x3feb288ce703afb8              # double 0.84870000000000001
	.quad	0x3fd5960b6f9fcb0c              # double 0.337283
	.quad	0x3fedd186db50f40e              # double 0.93182699999999996
	.quad	0x3fefd9a73b42cc2d              # double 0.99531899999999995
	.quad	0x3fc9e9ea14057082              # double 0.20245099999999999
	.quad	0x3fec7202107b7846              # double 0.88891699999999996
	.quad	0x3febd143bf727137              # double 0.86929500000000004
	.quad	0x3fe129cfdd228566              # double 0.536354
	.quad	0x3feb3da9435ac8a3              # double 0.85127699999999995
	.quad	0x3fd659ccfaeff5c7              # double 0.34923100000000001
	.quad	0x3fe53293d102bc73              # double 0.66242400000000001
	.quad	0x3fb4a86d71f36263              # double 0.080695000000000003
	.quad	0x3fd0eda22f6a50d7              # double 0.26450400000000002
	.quad	0x3fec65881a1554fc              # double 0.88739400000000001
	.quad	0x3fd43608d08919f0              # double 0.31579800000000002
	.quad	0x3fd1a333764f11b6              # double 0.275586
	.quad	0x3fc670fbeb9e492c              # double 0.17532300000000001
	.quad	0x3fe6d3b6cbd987c6              # double 0.71334399999999998
	.quad	0x3fe44f4a558ea7ce              # double 0.63467899999999999
	.quad	0x3fb1f7f8ca8198f2              # double 0.070190000000000002
	.quad	0x3fe69b75a74c09c4              # double 0.70647700000000002
	.quad	0x3fd0804102ff8ec1              # double 0.257828
	.quad	0x3fce1e68a0d349bf              # double 0.23530300000000001
	.quad	0x3fe61a847b24638d              # double 0.69073700000000005
	.quad	0x3fe37d4bf0995aaf              # double 0.60904499999999995
	.quad	0x3fef7f609dcf8940              # double 0.98429900000000003
	.quad	0x3fb41ede1198aeb8              # double 0.078595999999999999
	.quad	0x3fe332b55ef1fddf              # double 0.59994000000000003
	.quad	0x3fc9f3bea91d9b1b              # double 0.20275099999999999
	.quad	0x3fc55dc4007570c5              # double 0.16692399999999999
	.quad	0x3fb56aceaaf35e31              # double 0.083660999999999999
	.quad	0x3feab387160956c1              # double 0.83441500000000002
	.quad	0x3fcc9b845564b663              # double 0.223496
	.quad	0x3f95f6ba0620ab71              # double 0.021448999999999999
	.quad	0x3fd6d002e2328f9f              # double 0.35644599999999999
	.quad	0x3f928dc981beb181              # double 0.018119
	.quad	0x3fe8dfa22706d506              # double 0.77729899999999996
	.quad	0x3fe72921ccd96207              # double 0.72377100000000005
	.quad	0x3fdcbe1a8262456f              # double 0.44910299999999997
	.quad	0x3fdf5bd944aa53fc              # double 0.489981
	.quad	0x3fdbc4e7253da72a              # double 0.43389299999999997
	.quad	0x3fa41a47a9e2bcf9              # double 0.039262999999999999
	.quad	0x3fe67d8adab9f55a              # double 0.70282500000000003
	.quad	0x3fc7d4f9c1f85d74              # double 0.18618699999999999
	.quad	0x3fe9148ba83f4eca              # double 0.78375799999999995
	.quad	0x3fe5867f0aa21a72              # double 0.67266800000000004
	.quad	0x3faf225b749adc90              # double 0.060809000000000002
	.quad	0x3fd42ae4b0186120              # double 0.31511800000000001
	.quad	0x3fe22cd5b6805a2d              # double 0.56797299999999995
	.quad	0x3fe1056a37ac3eb8              # double 0.53191100000000002
	.quad	0x3fe540852b4d8ba4              # double 0.66412599999999999
	.quad	0x3fdb4588a04d1202              # double 0.42611900000000003
	.quad	0x3fef513d74d594f2              # double 0.97866699999999995
	.quad	0x3fdb626b2f23033a              # double 0.42788199999999998
	.quad	0x3fe1f8982cb20fb2              # double 0.56159599999999998
	.quad	0x3f9b3bb83cf2cf96              # double 0.026595000000000001
	.quad	0x3fbf03f2d3c792d1              # double 0.121154
	.quad	0x3fe74d1e96c3fc44              # double 0.72816400000000003
	.quad	0x3fe2b647baa9b49a              # double 0.58475100000000002
	.quad	0x3fd7899392189bd8              # double 0.36777199999999999
	.quad	0x3fe1610adcd2d44e              # double 0.54309600000000002
	.quad	0x3fde163fdd65a145              # double 0.47010800000000003
	.quad	0x3fd03293d102bc73              # double 0.25308700000000001
	.quad	0x3fe823ec02f2f987              # double 0.75438499999999997
	.quad	0x3fefd8793dd97f63              # double 0.99517500000000003
	.quad	0x3fd83afb7e90ff97              # double 0.37859999999999999
	.quad	0x3fdb12ec6bce8534              # double 0.42303000000000002
	.quad	0x3feefdc9c4da9004              # double 0.96848
	.quad	0x3fe4841ede1198af              # double 0.64112800000000003
	.quad	0x3fd778f25a250f84              # double 0.366757
	.quad	0x3fe37dda8bd230ba              # double 0.60911300000000002
	.quad	0x3fb33d7d3910c2c6              # double 0.075157000000000002
	.quad	0x3fed33d07c84b5dd              # double 0.91257500000000003
	.quad	0x3fea4eb56fb8f57f              # double 0.82210799999999995
	.quad	0x3fe44358afc47e4a              # double 0.63322100000000003
	.quad	0x3fe8c1248d7e0264              # double 0.77357699999999995
	.quad	0x3fd528b2a6b0d951              # double 0.33060899999999999
	.quad	0x3fbec5c13fd0d068              # double 0.12020500000000001
	.quad	0x3fe7bf141205bc02              # double 0.74207500000000004
	.quad	0x3fdd9bcfd4bf0996              # double 0.46263500000000002
	.quad	0x3faf1044f1a1986c              # double 0.060671000000000003
	.quad	0x3fd17839cd8127b3              # double 0.27296300000000001
	.quad	0x3fd16b2af145521a              # double 0.27216600000000002
	.quad	0x3fedd3825e13b18e              # double 0.93206900000000004
	.quad	0x3fb24a8c154c985f              # double 0.07145
	.quad	0x3f7572580c308feb              # double 0.0052360000000000002
	.quad	0x3fefc69d7342edbb              # double 0.99299499999999996
	.quad	0x3fc3eaee2003ab86              # double 0.155607
	.quad	0x3fb4064a9cdc4439              # double 0.078220999999999999
	.quad	0x3fe23571d1d4738a              # double 0.56902399999999997
	.quad	0x3fcae297396d0918              # double 0.21004
	.quad	0x3fbc1615ebfa8f7e              # double 0.109712
	.quad	0x3fd18d972cd7cf5f              # double 0.27426699999999998
	.quad	0x3fe07d3b29a1b9fa              # double 0.51528700000000005
	.quad	0x3fe2c4b2b777d0f2              # double 0.586511
	.quad	0x3fecdc03361565c3              # double 0.90185700000000002
	.quad	0x3fc6f4623d0bfa09              # double 0.17933299999999999
	.quad	0x3fd15b291b823c86              # double 0.27118900000000001
	.quad	0x3fbecd39da16616b              # double 0.120319
	.quad	0x3fb1bcdbbe0157ef              # double 0.069288000000000002
	.quad	0x3fe42e2fbe33acd6              # double 0.63063800000000003
	.quad	0x3fc3613d31b9b670              # double 0.15140500000000001
	.quad	0x3f91b97353b4b2fb              # double 0.017309000000000001
	.quad	0x3fe1e3b46fdeb52d              # double 0.55904600000000004
	.quad	0x3fbd271bcdbbe015              # double 0.11387799999999999
	.quad	0x3fccf2495e17e34c              # double 0.22614400000000001
	.quad	0x3fdcceb356da0169              # double 0.45011600000000002
	.quad	0x3fe852a62aa1943a              # double 0.76008900000000001
	.quad	0x3fe0fa24894c447c              # double 0.53053499999999998
	.quad	0x3fb3e90ff9724745              # double 0.077774999999999997
	.quad	0x3fc2c386d2ed783e              # double 0.146592
	.quad	0x3fd16b441bb8c32b              # double 0.27217200000000003
	.quad	0x3fc2228997c3d684              # double 0.141679
	.quad	0x3fe7cfce746cb967              # double 0.74411700000000003
	.quad	0x3fc02fad6cb53501              # double 0.12645500000000001
	.quad	0x3fa1aed56b00ffda              # double 0.034536999999999998
	.quad	0x3feca21858bc59b8              # double 0.894787
	.quad	0x3feb4bc48f10a99b              # double 0.85299899999999995
	.quad	0x3fd76eeb702602c9              # double 0.366145
	.quad	0x3fdab09e98dcdb38              # double 0.41703000000000001
	.quad	0x3fe30ae1049235f8              # double 0.595078
	.quad	0x3fd602fb5d031056              # double 0.34393200000000002
	.quad	0x3fe9528283d35eb7              # double 0.79132199999999997
	.quad	0x3f91b4fe79ee02a7              # double 0.017291999999999998
	.quad	0x3fcaf6dfc5cdd50b              # double 0.21065900000000001
	.quad	0x3fd0caeea63b688c              # double 0.26238600000000001
	.quad	0x3fe072b239a38fbd              # double 0.51400100000000004
	.quad	0x3fe6cddd6e04c059              # double 0.71262999999999999
	.quad	0x3fed1c6d1e108c3f              # double 0.90971999999999997
	.quad	0x3fdf4c6a3bddfca0              # double 0.489039
	.quad	0x3fec5b76b3bb83cf              # double 0.88616499999999998
	.quad	0x3fe6fd50225742dd              # double 0.71842200000000001
	.quad	0x3fe5b4e11dbca969              # double 0.67832999999999999
	.quad	0x3fdc42070b8cfbfc              # double 0.44152999999999998
	.quad	0x3fe3d12018a43bb4              # double 0.619278
	.quad	0x3fb5807fed20296b              # double 0.083991999999999997
	.quad	0x3fe7e5a57646ae3a              # double 0.74678299999999997
	.quad	0x3fe62a369fcf3dc0              # double 0.69265299999999996
	.quad	0x3fed4e618ce2d1f2              # double 0.91581800000000002
	.quad	0x3fd1104d551d68c7              # double 0.26662000000000002
	.quad	0x3fe063bcd35a8588              # double 0.51217500000000005
	.quad	0x3fea4df47f993d53              # double 0.82201599999999997
	.quad	0x3fe0b465625a682b              # double 0.52202099999999996
	.quad	0x3fe26264e48626f6              # double 0.57451099999999999
	.quad	0x3fe6b46fdeb52c9d              # double 0.70952599999999999
	.quad	0x3feaf75968512232              # double 0.84269400000000005
	.quad	0x3fe6a97e132b55ef              # double 0.70818999999999999
	.quad	0x3fe0ae2fbe33acd6              # double 0.52126300000000003
	.quad	0x3fe6fddebd9018e7              # double 0.71848999999999996
	.quad	0x3fda1b54195cc858              # double 0.407918
	.quad	0x3f8f4f50a02b8412              # double 0.015288
	.quad	0x3fe4e4b2314013ec              # double 0.65291699999999997
	.quad	0x3fed72f33ca31e7e              # double 0.92028200000000004
	.quad	0x3fda47a9e2bcf91a              # double 0.41062399999999999
	.quad	0x3fbcec52a411c2a0              # double 0.112981
	.quad	0x3fbfc8e25c810a57              # double 0.12415900000000001
	.quad	0x3fe9d84b1ab0856e              # double 0.80765299999999995
	.quad	0x3fe2435efa615a8e              # double 0.57072400000000001
	.quad	0x3fdeea28fe260b2d              # double 0.48304200000000003
	.quad	0x3fd0d0d0678c0054              # double 0.26274500000000001
	.quad	0x3fcfba5e353f7cee              # double 0.24787500000000001
	.quad	0x3f9528f190d173fb              # double 0.020663999999999998
	.quad	0x3fea4b1465e89225              # double 0.82166499999999998
	.quad	0x3fb55410f94c8798              # double 0.083313999999999999
	.quad	0x3feaa6defc7a3982              # double 0.83287
	.quad	0x3feea33df2a9d628              # double 0.95742700000000002
	.quad	0x3faa584f4c6e6d9c              # double 0.051455000000000001
	.quad	0x3fe2b46dc5d63886              # double 0.58452499999999996
	.quad	0x3fee7ede97d06bbe              # double 0.95298700000000003
	.quad	0x3fd4a604e1e71045              # double 0.322633
	.quad	0x3fe6c82e019b0ab3              # double 0.71193600000000001
	.quad	0x3fef403148776816              # double 0.97658599999999995
	.quad	0x3fad796bfca85cab              # double 0.057567
	.quad	0x3f56f86a098915be              # double 0.001402
	.quad	0x3fd82d6238da3c21              # double 0.37776999999999999
	.quad	0x3fcd5f2cb641700d              # double 0.229467
	.quad	0x3fb595aaf78feef6              # double 0.084315000000000001
	.quad	0x3fe649363f572de4              # double 0.69643699999999997
	.quad	0x3fb8852b4d8ba40e              # double 0.095782000000000006
	.quad	0x3fd627a63736cdf2              # double 0.34616999999999998
	.quad	0x3fc07dd441355476              # double 0.12884000000000001
	.quad	0x3fe344c5974e65bf              # double 0.60214500000000004
	.quad	0x3fcb774256bca537              # double 0.21457699999999999
	.quad	0x3fbee94680171194              # double 0.12074699999999999
	.quad	0x3fd64edf61240746              # double 0.34856399999999998
	.quad	0x3fdd54cdb7ae5797              # double 0.45830100000000001
	.quad	0x3fb973a797891e21              # double 0.099420999999999995
	.quad	0x3fd944dca8e2e2b9              # double 0.39482800000000001
	.quad	0x3fea82517e77d524              # double 0.82840800000000003
	.quad	0x3fddd8b1dd5d3dc9              # double 0.46635100000000002
	.quad	0x3fb80789613d31ba              # double 0.093865000000000003
	.quad	0x3fe3630ec3116228              # double 0.60584199999999999
	.quad	0x3fd1517a46173b86              # double 0.27059800000000001
	.quad	0x3fec4e91c8eabffd              # double 0.88459100000000002
	.quad	0x3fdea46e08f21709              # double 0.47878599999999999
	.quad	0x3fe674107314ca92              # double 0.70166799999999996
	.quad	0x3fec7e3d1cc100e7              # double 0.89041000000000003
	.quad	0x3fbccf28c79f6662              # double 0.112536
	.quad	0x3fcc1e0c5a8155d6              # double 0.219667
	.quad	0x3fe1f90752da9867              # double 0.56164899999999995
	.quad	0x3fc40b242070b8d0              # double 0.15659000000000001
	.quad	0x3fe494e3bcd35a86              # double 0.64317500000000005
	.quad	0x3f64b167ec7863bf              # double 0.002526
	.quad	0x3fc7059ea57214f0              # double 0.17985899999999999
	.quad	0x3fb3ccd0fe8ab4fa              # double 0.077343999999999996
	.quad	0x3fc8c4dec1c1d6d0              # double 0.19350800000000001
	.quad	0x3feb7952d234eb9a              # double 0.85855999999999999
	.quad	0x3fe940010c6f7a0b              # double 0.78906299999999996
	.quad	0x3fef1af7d30ad46f              # double 0.97204199999999996
	.quad	0x3fe5c662bae03b3f              # double 0.68046700000000004
	.quad	0x3fd18d25edd05293              # double 0.27423999999999998
	.quad	0x3fd7588a04d12019              # double 0.36477900000000002
	.quad	0x3feed362e9036439              # double 0.96330400000000004
	.quad	0x3fd6c4dec1c1d6d0              # double 0.35576600000000003
	.quad	0x3fd0925785f8d2e5              # double 0.258932
	.quad	0x3fee852934acaff7              # double 0.95375500000000002
	.quad	0x3fd8cb31c219eb64              # double 0.38740200000000002
	.quad	0x3fe5f865d7cb2d90              # double 0.68657199999999996
	.quad	0x3fe0f0d1fa333765              # double 0.52939700000000001
	.quad	0x3fed36501e2584f5              # double 0.91288000000000002
	.quad	0x3fd3457c0b135979              # double 0.30111599999999999
	.quad	0x3fea59cae21101b0              # double 0.823461
	.quad	0x3fe3926a65cf67b2              # double 0.61162300000000003
	.quad	0x3fae7d9988d2a1f9              # double 0.059552000000000001
	.quad	0x3fce165907d91255              # double 0.23505699999999999
	.quad	0x3fea055757d5a9eb              # double 0.81315199999999999
	.quad	0x3fe1490c4dec1c1d              # double 0.54016699999999995
	.quad	0x3feb719d66adb403              # double 0.85761900000000002
	.quad	0x3fcee7ff583a53b9              # double 0.241455
	.quad	0x3fe0177a7008a698              # double 0.50286600000000004
	.quad	0x3fe97709b738e6d1              # double 0.79578099999999996
	.quad	0x3fefbce4217d284a              # double 0.99180800000000002
	.quad	0x3fecb65881a15550              # double 0.89725900000000003
	.quad	0x3fe1542a23bff8a9              # double 0.54152400000000001
	.quad	0x3fcecb10342aa9f8              # double 0.24057200000000001
	.quad	0x3fb95f56a7ac81d4              # double 0.099111000000000004
	.quad	0x3fe940639d5e4a38              # double 0.78910999999999998
	.quad	0x3f98dda48b652370              # double 0.024282999999999999
	.quad	0x3fdb8e3ef284167b              # double 0.43055700000000002
	.quad	0x3f9db76b3bb83cf3              # double 0.029020000000000001
	.quad	0x3fe1986fcdee34fc              # double 0.54985799999999996
	.quad	0x3fd2c8eef1bac2df              # double 0.293514
	.quad	0x3f9b00ffda4052d6              # double 0.026370999999999999
	.quad	0x3fee195cc857f306              # double 0.94059599999999999
	.quad	0x3fd34a4095f2452c              # double 0.30140699999999998
	.quad	0x3fca6e653868fd1a              # double 0.20649400000000001
	.quad	0x3feb63ae2541d8e8              # double 0.85591799999999996
	.quad	0x3fef9b75a74c09c4              # double 0.98772700000000002
	.quad	0x3fe7b4202d9cf13d              # double 0.74073800000000001
	.quad	0x3fb460dcb9a9da59              # double 0.079602999999999993
	.quad	0x3fe6690364388ebd              # double 0.70031900000000002
	.quad	0x3fe2a7a41e57d9dc              # double 0.58296400000000004
	.quad	0x3fd14ee392e1ef74              # double 0.27044000000000001
	.quad	0x3fd262e09fe86834              # double 0.28728500000000001
	.quad	0x3fe0fa56de33269e              # double 0.530559
	.quad	0x3fe74a8c154c985f              # double 0.72785
	.quad	0x3fe42ca148ba83f5              # double 0.63044800000000001
	.quad	0x3fe43f83382e44b7              # double 0.63275300000000001
	.quad	0x3fcfbf162ae4b018              # double 0.24801899999999999
	.quad	0x3fcfec80c73abc94              # double 0.24940499999999999
	.quad	0x3fc47a398201cd60              # double 0.15998000000000001
	.quad	0x3fa6bf01322f2735              # double 0.044426
	.quad	0x3fe68950763a1901              # double 0.70426200000000005
	.quad	0x3fc7ec56d5cfaace              # double 0.18690000000000001
	.quad	0x3fb83b3e9a6f826f              # double 0.094654000000000002
	.quad	0x3feb3a92a3055326              # double 0.85089999999999999
	.quad	0x3fee287a072d1aeb              # double 0.94244099999999997
	.quad	0x3fd7842b734b5137              # double 0.36744199999999999
	.quad	0x3fe240053e2d6239              # double 0.57031500000000002
	.quad	0x3fddf5a964e8b7e5              # double 0.46811900000000001
	.quad	0x3fe6f5232d2bb235              # double 0.71742399999999995
	.quad	0x3febb11e85fd04a3              # double 0.865371
	.quad	0x3fd0ebfa8f7db6e5              # double 0.264403
	.quad	0x3fe00d5c74751ce3              # double 0.50163100000000005
	.quad	0x3fe1d6a9c560c7c1              # double 0.55745400000000001
	.quad	0x3fc0fa7221858bc6              # double 0.13264300000000001
	.quad	0x3fc78e432441fea8              # double 0.184029
	.quad	0x3fd7f5caf2d7f951              # double 0.37437700000000002
	.quad	0x3fe03f8b9baa1512              # double 0.50775700000000001
	.quad	0x3fe934549b62c775              # double 0.78763799999999995
	.quad	0x3fd22bf11f926c7f              # double 0.28393200000000002
	.quad	0x3fe6d6abde3fbbd8              # double 0.71370500000000003
	.quad	0x3fd831db445ed4a2              # double 0.37804300000000002
	.quad	0x3fedfff79c842fa5              # double 0.937496
	.quad	0x3fcc5a1cac083127              # double 0.2215
	.quad	0x3feb646cfc829cfe              # double 0.85600900000000002
	.quad	0x3fe351351159c497              # double 0.60366299999999995
	.quad	0x3fecb46dc5d63886              # double 0.89702499999999996
	.quad	0x3fe3eba6aca79357              # double 0.62251599999999996
	.quad	0x3fdeddfc9ff92f2b              # double 0.48229899999999998
	.quad	0x3fe1b302f72b4528              # double 0.55310199999999998
	.quad	0x3fe2d55e6bc621b8              # double 0.58854600000000001
	.quad	0x3fe39c9d5a187a4a              # double 0.61286799999999997
	.quad	0x3fb4319c5a3e39f7              # double 0.078881999999999994
	.quad	0x3fe3c069e7fb267c              # double 0.61723799999999995
	.quad	0x3f97724fa8b4bf90              # double 0.022897000000000001
	.quad	0x3fea7cb923a29c78              # double 0.82772500000000004
	.quad	0x3fe9e79aae6c8f75              # double 0.80952199999999996
	.quad	0x3fe13d29563a9f38              # double 0.53871599999999997
	.quad	0x3febd19bd4067cf2              # double 0.86933700000000003
	.quad	0x3fea3239a38fbca1              # double 0.818631
	.quad	0x3febbb96af038e2a              # double 0.866649
	.quad	0x3fd75ebb7739f341              # double 0.36515700000000001
	.quad	0x3fd5a4723aafff37              # double 0.33816200000000002
	.quad	0x3fee9ce6c093d966              # double 0.95665299999999998
	.quad	0x3fe31e8c47a17f41              # double 0.59747899999999998
	.quad	0x3fea08461f9f01b8              # double 0.81350999999999996
	.quad	0x3fe4017763e4abe7              # double 0.62517900000000004
	.quad	0x3fed9d4738a3b57c              # double 0.92544899999999996
	.quad	0x3fe39bb05faebc41              # double 0.61275500000000005
	.quad	0x3fb5c8b86b15f890              # double 0.085094000000000002
	.quad	0x3fe10aa433508f65              # double 0.53254900000000005
	.quad	0x3fe7eda0168b5cc0              # double 0.74775700000000001
	.quad	0x3fdfeb67c286f8ad              # double 0.49874299999999999
	.quad	0x3fc4fdda8bd230ba              # double 0.163997
	.quad	0x3fc965668c261390              # double 0.198407
	.quad	0x3fe99b4bb5e0f7fd              # double 0.800207
	.quad	0x3fe787fed20296b3              # double 0.73535099999999998
	.quad	0x3fe61d388a8b08dd              # double 0.69106699999999999
	.quad	0x3fc77154003254e7              # double 0.183146
	.quad	0x3fbe5d8d79d0a676              # double 0.118615
	.quad	0x3fc2edc3bd599243              # double 0.14788100000000001
	.quad	0x3fbdea9a3d2d87f9              # double 0.11686100000000001
	.quad	0x3fdd753e707e175d              # double 0.460281
	.quad	0x3fef2569b17481b2              # double 0.97331699999999999
	.quad	0x3fdde4f3343fa2ad              # double 0.46709899999999999
	.quad	0x3fe314983d790753              # double 0.59626400000000002
	.quad	0x3febc3d89ce4a7b5              # double 0.86765700000000001
	.quad	0x3fd9df69878316a0              # double 0.40426099999999998
	.quad	0x3fcf167ec7863bef              # double 0.24287400000000001
	.quad	0x3feea1426fe718a8              # double 0.95718499999999995
	.quad	0x3fd471a7e3087875              # double 0.31943700000000003
	.quad	0x3fdb25f202107b78              # double 0.42419099999999998
	.quad	0x3fb7771865519371              # double 0.091661000000000006
	.quad	0x3fc08216c61522a7              # double 0.12897
	.quad	0x3febc36113404ea5              # double 0.86760000000000004
	.quad	0x3fe9ab239a38fbca              # double 0.80214099999999999
	.quad	0x3feddbab21815a08              # double 0.93306500000000003
	.quad	0x3fd1fee2c98e53eb              # double 0.28118199999999999
	.quad	0x3fe4dcdf69878317              # double 0.65196200000000004
	.quad	0x3fec44156e264e48              # double 0.88331099999999996
	.quad	0x3fefc6c97d8cf399              # double 0.993016
	.quad	0x3fe33586ca89fc6e              # double 0.60028400000000004
	.quad	0x3fe65492ff4ba51a              # double 0.697824
	.quad	0x3fdecf6be37de93a              # double 0.48141
	.quad	0x3fe3fc84b5dcc63f              # double 0.62457499999999999
	.quad	0x3fd8e308787485e4              # double 0.38885700000000001
	.quad	0x3fed6366d7a56de3              # double 0.91838399999999998
	.quad	0x3fef52674080f990              # double 0.97880900000000004
	.quad	0x3fe5784230fcf80e              # double 0.67093000000000003
	.quad	0x3fe93035bd512ec7              # double 0.78713500000000003
	.quad	0x3fd0791819d2391d              # double 0.25739099999999998
	.quad	0x3fdc48cf7caa758a              # double 0.441944
	.quad	0x3fea4295a6c5d207              # double 0.82062800000000002
	.quad	0x3fde297bfa4c61d8              # double 0.47128199999999998
	.quad	0x3fe0ef9335d249e4              # double 0.52924499999999997
	.quad	0x3fef7fdc5931ca7d              # double 0.98435799999999995
	.quad	0x3fe2b54e2b063e08              # double 0.58463200000000004
	.quad	0x3f75410f94c87981              # double 0.005189
	.quad	0x3fd7b7fe08aefb2b              # double 0.37060500000000002
	.quad	0x3fe625aab4741073              # double 0.69209799999999999
	.quad	0x3fedd2806af46aa1              # double 0.93194600000000005
	.quad	0x3feae98fe69270b0              # double 0.84101099999999995
	.quad	0x3fe963a9f383f0bb              # double 0.79341600000000001
	.quad	0x3fd009f623076c05              # double 0.250608
	.quad	0x3fd34bdfd2630ec3              # double 0.301506
	.quad	0x3fd498b2e9ccb7d4              # double 0.32181999999999999
	.quad	0x3fe50ad688377186              # double 0.65757299999999996
	.quad	0x3fc8be7296f6512b              # double 0.19331200000000001
	.quad	0x3f90e6299524bfd3              # double 0.016503
	.quad	0x3fe37c6da4484945              # double 0.60893900000000001
	.quad	0x3fb47dd441355476              # double 0.080045000000000005
	.quad	0x3fc96feb4a66559f              # double 0.19872799999999999
	.quad	0x3fbd08c3f3e0370d              # double 0.113415
	.quad	0x3fd5f37329c347e9              # double 0.34298400000000001
	.quad	0x3fe5f000431bde83              # double 0.68554700000000002
	.quad	0x3fea59fd36f7e3d2              # double 0.82348500000000002
	.quad	0x3fd06d2aa5c5f7c6              # double 0.25666299999999997
	.quad	0x3fe27972474538ef              # double 0.57732499999999998
	.quad	0x3fef4e7ab7564303              # double 0.97833000000000003
	.quad	0x3fa84295a6c5d207              # double 0.047383000000000002
	.quad	0x3fb653fc0096feb5              # double 0.087219000000000005
	.quad	0x3fbe7e414e7ee914              # double 0.119114
	.quad	0x3fd865881a1554fc              # double 0.38119700000000001
	.quad	0x3feecd31769a9110              # double 0.96254799999999996
	.quad	0x3fe58ccff21b3aef              # double 0.67343900000000001
	.quad	0x3feb893964a59c06              # double 0.86050099999999996
	.quad	0x3fee9b52007dd441              # double 0.95645999999999998
	.quad	0x3fe0b361565c2d28              # double 0.52189700000000006
	.quad	0x3fede49d388a8b09              # double 0.93415700000000002
	.quad	0x3fd33a08398a6549              # double 0.30041699999999999
	.quad	0x3fe57b43d89ce4a8              # double 0.67129700000000003
	.quad	0x3f99bc77143393ab              # double 0.025132999999999999
	.quad	0x3fc6bee807bbb624              # double 0.177701
	.quad	0x3fe247219220ff54              # double 0.571183
	.quad	0x3fea01b43526527a              # double 0.81270799999999999
	.quad	0x3fb37f38c5436b90              # double 0.076160000000000005
	.quad	0x3f8e5753a3ec02f3              # double 0.014815
	.quad	0x3feb73471f79420b              # double 0.85782199999999997
	.quad	0x3fc06759ab6d00b4              # double 0.12815399999999999
	.quad	0x3fcf2d01c0ca600b              # double 0.243561
	.quad	0x3fe5d8f7121ab4b7              # double 0.68273499999999998
	.quad	0x3fe502773e24febd              # double 0.656551
	.quad	0x3fc1170d62bf11f9              # double 0.133516
	.quad	0x3fd8e892253111f1              # double 0.38919500000000001
	.quad	0x3fdb76f2a5a469d7              # double 0.42913499999999999
	.quad	0x3fecd438d1d8a548              # double 0.90090599999999998
	.quad	0x3fd53ce2089e3433              # double 0.331841
	.quad	0x3fc057fb69984a0e              # double 0.12768499999999999
	.quad	0x3fe0482385404641              # double 0.50880599999999998
	.quad	0x3fec7de2ef4e0115              # double 0.89036700000000002
	.quad	0x3fd33686a4ca4f44              # double 0.300203
	.quad	0x3fefcde19fc2a887              # double 0.99388200000000004
	.quad	0x3fc279e59f2ba9d2              # double 0.144345
	.quad	0x3fd47f4128bf3beb              # double 0.32026700000000002
	.quad	0x3f92ff4ba51a005c              # double 0.018551999999999999
	.quad	0x3fd5236c15d2d01c              # double 0.330287
	.quad	0x3fe711c6d1e108c4              # double 0.72092000000000001
	.quad	0x3fe409d0635a426c              # double 0.62619800000000003
	.quad	0x3fe733700474d9c7              # double 0.72502900000000003
	.quad	0x3fede746cb966be8              # double 0.93448200000000003
	.quad	0x3fe5669ad42c3c9f              # double 0.66877500000000001
	.quad	0x3fccf0281ba7fc33              # double 0.226079
	.quad	0x3fed4256bca5375d              # double 0.91434800000000005
	.quad	0x3fec1dfdac68a937              # double 0.87866100000000003
	.quad	0x3fd2013ec460ed81              # double 0.28132600000000002
	.quad	0x3fd524638c975297              # double 0.33034599999999997
	.quad	0x3fe2a18def416bdb              # double 0.58222099999999999
	.quad	0x3fd793e5fb71fbc6              # double 0.36840200000000001
	.quad	0x3fed1e603d577964              # double 0.90995800000000004
	.quad	0x3fe1da5119ce075f              # double 0.55789999999999995
	.quad	0x3fe2051c9f72f76e              # double 0.56312399999999996
	.quad	0x3feac5aa2e3c536d              # double 0.83662899999999996
	.quad	0x3fdaa24463065f96              # double 0.41615400000000002
	.quad	0x3fd4446b69db65ed              # double 0.31667600000000001
	.quad	0x3fd095d4e8fb00bd              # double 0.25914500000000001
	.quad	0x3febc9a77e5eaab0              # double 0.86836599999999997
	.quad	0x3fef3b7f9d6f1130              # double 0.97601300000000002
	.quad	0x3fe9ce7685985ad5              # double 0.80645299999999998
	.quad	0x3fb14e2b063e07a3              # double 0.067599000000000006
	.quad	0x3fec8379314445aa              # double 0.89104899999999998
	.quad	0x3fea39713ad5bee4              # double 0.81951200000000001
	.quad	0x3fb8123810e88590              # double 0.094028
	.quad	0x3fdf228dc981beb2              # double 0.48648400000000003
	.quad	0x3fee030e3cd9a522              # double 0.93787299999999996
	.quad	0x3fd9df548ecd8dbd              # double 0.404256
	.quad	0x3fc30b0f27bb2fec              # double 0.14877499999999999
	.quad	0x3fd0694467381d7e              # double 0.25642500000000001
	.quad	0x3fe3e5b4245f5ad9              # double 0.62178999999999995
	.quad	0x3fb198d045fe1112              # double 0.068737999999999994
	.quad	0x3fb760bf5d78811b              # double 0.091319999999999998
	.quad	0x3fefab8e8ea39c52              # double 0.98969200000000002
	.quad	0x3fe69a261bf37b8d              # double 0.70631699999999997
	.quad	0x3fd98f7121ab4b73              # double 0.39938000000000001
	.quad	0x3fdfa908a265f0f6              # double 0.49469200000000002
	.quad	0x3fbd231c64ba94bc              # double 0.113817
	.quad	0x3fe6bc382a12f901              # double 0.710476
	.quad	0x3fd4f1e8e6080735              # double 0.32726499999999997
	.quad	0x3fe6e82730c67169              # double 0.715839
	.quad	0x3fc533d29563a9f4              # double 0.16564400000000001
	.quad	0x3fe828b08dd1e53b              # double 0.75496700000000005
	.quad	0x3fe70a4a05dd8f93              # double 0.72000600000000003
	.quad	0x3fe2e616b54e2b06              # double 0.59058699999999997
	.quad	0x3fe59eeaa6d26741              # double 0.67564900000000006
	.quad	0x3fdda62ed352220c              # double 0.46326800000000001
	.quad	0x3fec24ebdd334c5e              # double 0.87950700000000004
	.quad	0x3fc37154003254e7              # double 0.151896
	.quad	0x3feba333764f11b6              # double 0.863672
	.quad	0x3fd17bedb7281fda              # double 0.27318900000000002
	.quad	0x3fe350bfa0945f9e              # double 0.603607
	.quad	0x3fe5acb20fb224ab              # double 0.67733100000000002
	.quad	0x3fd4bf2f55582129              # double 0.32416899999999998
	.quad	0x3fa5a7b0b3919264              # double 0.042294999999999999
	.quad	0x3fdf70b8cfbfc654              # double 0.491255
	.quad	0x3fec36544fe36d22              # double 0.88163199999999997
	.quad	0x3fe96eefa1e3eaf7              # double 0.79479200000000005
	.quad	0x3fb738f7985271bd              # double 0.090713000000000002
	.quad	0x3fcecfe154434e33              # double 0.24071899999999999
	.quad	0x3fe2d93c46d82ba6              # double 0.58901800000000004
	.quad	0x3fe1ea50d6b228dd              # double 0.55985300000000005
	.quad	0x3fed275ab7dc7ac0              # double 0.91105400000000003
	.quad	0x3fbec9afe1da7b0b              # double 0.120265
	.quad	0x3fe6407cc7d1bb49              # double 0.69537199999999999
	.quad	0x3fb65b530ced4e4d              # double 0.087331000000000006
	.quad	0x3fefadf505d0fa59              # double 0.989985
	.quad	0x3fde13879c4113c7              # double 0.46994200000000003
	.quad	0x3fccfd7e45803cd1              # double 0.22648599999999999
	.quad	0x3fe69e9d0e991ff7              # double 0.70686199999999999
	.quad	0x3fd7af8594291750              # double 0.37008799999999997
	.quad	0x3fbb69014b599aa6              # double 0.107071
	.quad	0x3fe3daf4adbc664d              # double 0.62047799999999997
	.quad	0x3fb39767903211cb              # double 0.076529
	.quad	0x3fedcd4024b33db0              # double 0.93130500000000005
	.quad	0x3fefcf5f4e4430b1              # double 0.99406399999999994
	.quad	0x3fd057abb8800eae              # double 0.25535099999999999
	.quad	0x3fe3a9f59ccfaeff              # double 0.61449699999999996
	.quad	0x3fedacd39da16617              # double 0.92734700000000003
	.quad	0x3fd6f644955b4678              # double 0.35878100000000002
	.quad	0x3fddafea3df6db94              # double 0.463862
	.quad	0x3fe5c28b2a6b0d95              # double 0.67999799999999999
	.quad	0x3fe357c914b167ec              # double 0.60446599999999995
	.quad	0x3fa7b95a294141ea              # double 0.046336000000000002
	.quad	0x3fe2d9620685553f              # double 0.589036
	.quad	0x3fd240f238972043              # double 0.28521400000000002
	.quad	0x3fe575be5d9e40c8              # double 0.67062299999999997
	.quad	0x3fe3e4abe6a337a8              # double 0.62166399999999999
	.quad	0x3fdb80cb6c7a7c9e              # double 0.42973600000000001
	.quad	0x3fe6789c5e6ff7e0              # double 0.70222300000000004
	.quad	0x3fe31f4906034f40              # double 0.59756900000000002
	.quad	0x3fe6b4dcebfec13c              # double 0.70957800000000004
	.quad	0x3fe6620ab7132724              # double 0.69946799999999998
	.quad	0x3fe89667b5f1bef5              # double 0.76836000000000004
	.quad	0x3fe0a3f4666ec9e2              # double 0.52001399999999998
	.quad	0x3fe6b422467be554              # double 0.70948900000000004
	.quad	0x3f945baf533f4235              # double 0.019880999999999999
	.quad	0x3fb9f266ba493c8a              # double 0.101355
	.quad	0x3fdcbfdb4cc25072              # double 0.44921
	.quad	0x3fd0cfe154434e33              # double 0.26268799999999998
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
