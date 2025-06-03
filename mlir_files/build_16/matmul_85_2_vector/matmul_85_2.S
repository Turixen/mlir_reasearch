	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a6, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a3, 99
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a2, a2, 1
	addi	a6, a6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	blt	a3, a2, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	a4, 0
	mv	a0, a6
	bltz	a3, .LBB0_1
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, a1, a0
	fld	fa5, 0(a5)
	addi	a4, a4, 1
	fadd.d	fa0, fa0, fa5
	addi	a0, a0, 8
	bge	a3, a4, .LBB0_4
	j	.LBB0_1
.LBB0_5:
	ret
.Lfunc_end0:
	.size	compute_sum, .Lfunc_end0-compute_sum
	.cfi_endproc
                                        # -- End function
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
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t5, t5, 1
	addi	s3, s3, 800
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	blt	s6, t5, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
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
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s4, s4, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	bge	s4, s5, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	li	ra, 0
	slli	a3, s4, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, t6
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	s1, a4, s2
	li	a3, 100
	mv	a4, s3
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	a1, zero, e32, m8, ta, ma
	vmv.v.x	v8, a5
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a5, s8, a4
	vsetvli	a1, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a0, sp, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a1, s7, s1
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
	add	s0, a5, s10
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
	vle64.v	v24, (a5), v0.t
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
	vse64.v	v16, (a5), v0.t
	add	ra, ra, s11
	add	a4, a4, s9
	add	s1, s1, s9
	sub	a3, a3, s11
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, ra, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	a5, a3
	blt	a3, s11, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	a5, s11
	j	.LBB1_7
.LBB1_11:
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
.Lfunc_end1:
	.size	sparse_dense_matmul, .Lfunc_end1-sparse_dense_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x414c2c8ebfbbb624              # double 3692829.497916
	.text
	.globl	main
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
	ld	a4, 256(sp)
	ld	a5, 264(sp)
	ld	a6, 272(sp)
	ld	a0, 224(sp)
	ld	a1, 232(sp)
	ld	a2, 240(sp)
	ld	a3, 248(sp)
	call	compute_sum
	lui	a0, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a0)
	feq.d	a0, fa0, fa5
	xori	a0, a0, 1
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_2:
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
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI3_1)
	addi	a2, a2, %lo(.LCPI3_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI3_2)
	addi	a1, a1, %lo(.LCPI3_2)
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
.Lfunc_end3:
	.size	assemble_sparse_tensor, .Lfunc_end3-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	34                              # 0x22
	.quad	34                              # 0x22
	.quad	63                              # 0x3f
	.quad	63                              # 0x3f
	.quad	97                              # 0x61
	.quad	97                              # 0x61
	.quad	128                             # 0x80
	.quad	128                             # 0x80
	.quad	154                             # 0x9a
	.quad	154                             # 0x9a
	.quad	182                             # 0xb6
	.quad	182                             # 0xb6
	.quad	213                             # 0xd5
	.quad	213                             # 0xd5
	.quad	242                             # 0xf2
	.quad	242                             # 0xf2
	.quad	271                             # 0x10f
	.quad	271                             # 0x10f
	.quad	305                             # 0x131
	.quad	305                             # 0x131
	.quad	338                             # 0x152
	.quad	338                             # 0x152
	.quad	367                             # 0x16f
	.quad	367                             # 0x16f
	.quad	397                             # 0x18d
	.quad	397                             # 0x18d
	.quad	429                             # 0x1ad
	.quad	429                             # 0x1ad
	.quad	457                             # 0x1c9
	.quad	457                             # 0x1c9
	.quad	485                             # 0x1e5
	.quad	485                             # 0x1e5
	.quad	514                             # 0x202
	.quad	514                             # 0x202
	.quad	541                             # 0x21d
	.quad	541                             # 0x21d
	.quad	570                             # 0x23a
	.quad	570                             # 0x23a
	.quad	598                             # 0x256
	.quad	598                             # 0x256
	.quad	621                             # 0x26d
	.quad	621                             # 0x26d
	.quad	653                             # 0x28d
	.quad	653                             # 0x28d
	.quad	683                             # 0x2ab
	.quad	683                             # 0x2ab
	.quad	711                             # 0x2c7
	.quad	711                             # 0x2c7
	.quad	738                             # 0x2e2
	.quad	738                             # 0x2e2
	.quad	766                             # 0x2fe
	.quad	766                             # 0x2fe
	.quad	793                             # 0x319
	.quad	793                             # 0x319
	.quad	822                             # 0x336
	.quad	822                             # 0x336
	.quad	856                             # 0x358
	.quad	856                             # 0x358
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	912                             # 0x390
	.quad	912                             # 0x390
	.quad	948                             # 0x3b4
	.quad	948                             # 0x3b4
	.quad	977                             # 0x3d1
	.quad	977                             # 0x3d1
	.quad	1009                            # 0x3f1
	.quad	1009                            # 0x3f1
	.quad	1037                            # 0x40d
	.quad	1037                            # 0x40d
	.quad	1066                            # 0x42a
	.quad	1066                            # 0x42a
	.quad	1094                            # 0x446
	.quad	1094                            # 0x446
	.quad	1132                            # 0x46c
	.quad	1132                            # 0x46c
	.quad	1159                            # 0x487
	.quad	1159                            # 0x487
	.quad	1190                            # 0x4a6
	.quad	1190                            # 0x4a6
	.quad	1224                            # 0x4c8
	.quad	1224                            # 0x4c8
	.quad	1249                            # 0x4e1
	.quad	1249                            # 0x4e1
	.quad	1276                            # 0x4fc
	.quad	1276                            # 0x4fc
	.quad	1307                            # 0x51b
	.quad	1307                            # 0x51b
	.quad	1344                            # 0x540
	.quad	1344                            # 0x540
	.quad	1375                            # 0x55f
	.quad	1375                            # 0x55f
	.quad	1403                            # 0x57b
	.quad	1403                            # 0x57b
	.quad	1437                            # 0x59d
	.quad	1437                            # 0x59d
	.quad	1471                            # 0x5bf
	.quad	1471                            # 0x5bf
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
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
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	22                              # 0x16
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
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
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
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
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
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
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
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
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	72                              # 0x48
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x400506b7aa25d8d8              # double 2.6282800000000002
	.quad	0x4021333d4ae429e1              # double 8.6000770000000006
	.quad	0x4011611d3671ac15              # double 4.3448380000000002
	.quad	0x4022699c9d5a187a              # double 9.2062729999999995
	.quad	0x40138cf850df15a5              # double 4.8876660000000003
	.quad	0x3ffe8c79f666234b              # double 1.9092960000000001
	.quad	0x4023c48b220791c5              # double 9.8838740000000004
	.quad	0x4011d6b6e0d23d4f              # double 4.4596819999999999
	.quad	0x3ff6f2c94b380cb7              # double 1.434274
	.quad	0x40067c9bc7714339              # double 2.8108439999999999
	.quad	0x3fa3fbdf090f733b              # double 0.039031000000000003
	.quad	0x3ff6d613d31b9b67              # double 1.427265
	.quad	0x3fff45be1a826245              # double 1.9545269999999999
	.quad	0x401ca727dcbddb98              # double 7.1632379999999998
	.quad	0x4002eefcbd556085              # double 2.3666930000000002
	.quad	0x40181f01fb82c2bd              # double 6.0302809999999996
	.quad	0x401a3177a7008a69              # double 6.5483079999999996
	.quad	0x400547008a697aee              # double 2.6596690000000001
	.quad	0x4021e6ad70e6f2e9              # double 8.9505420000000004
	.quad	0x4002f458cd20afa3              # double 2.36931
	.quad	0x401d22fbe33acd5b              # double 7.2841639999999996
	.quad	0x40152710880d801b              # double 5.2881489999999998
	.quad	0x4017b2cdc011d367              # double 5.9246129999999999
	.quad	0x401fe26aec0724b7              # double 7.9711109999999996
	.quad	0x4002f1a005c4651f              # double 2.3679809999999999
	.quad	0x3ff2b6da87a072d2              # double 1.1696420000000001
	.quad	0x4016523897204296              # double 5.5802940000000003
	.quad	0x40231be35c5b4aa9              # double 9.5544689999999992
	.quad	0x401501afc04c8bca              # double 5.2516470000000002
	.quad	0x401f1d55e6bc621b              # double 7.7786479999999995
	.quad	0x4021d1ec7000431c              # double 8.9100070000000002
	.quad	0x402166c5b078d930              # double 8.7007270000000005
	.quad	0x4010724edf612407              # double 4.1116289999999998
	.quad	0x40135320535c9e67              # double 4.8311780000000004
	.quad	0x3fdfb8c32a8c9b84              # double 0.49565199999999998
	.quad	0x401a7d1633482be9              # double 6.6221550000000002
	.quad	0x400260791c4b9021              # double 2.2971059999999999
	.quad	0x3febaa737110e454              # double 0.86455700000000001
	.quad	0x3ffd43f705857aff              # double 1.8290930000000001
	.quad	0x401d238583621fb0              # double 7.2846890000000002
	.quad	0x401cd574b407032a              # double 7.2084530000000004
	.quad	0x402073fc43b2dd37              # double 8.2265339999999991
	.quad	0x4009b890d5a5b963              # double 3.2151200000000002
	.quad	0x4016485985ad538b              # double 5.5706540000000002
	.quad	0x401180fd3b29a1ba              # double 4.375966
	.quad	0x400a5654d61b2a28              # double 3.292154
	.quad	0x401dff77292c4934              # double 7.4994779999999999
	.quad	0x40209d0aaa7ded6c              # double 8.3067220000000006
	.quad	0x3ffa3df7e80389f8              # double 1.6401289999999999
	.quad	0x400387b80a9de8b4              # double 2.4412690000000001
	.quad	0x4004476102795704              # double 2.534853
	.quad	0x3ff20f227d028a1e              # double 1.128695
	.quad	0x401dcfb2edfe75bc              # double 7.4528309999999998
	.quad	0x400c9abb01c92ddc              # double 3.5755520000000001
	.quad	0x4021db5d67ba237d              # double 8.9284470000000002
	.quad	0x400e8598e10cf5b2              # double 3.8152330000000001
	.quad	0x4013230014f8b589              # double 4.7841800000000001
	.quad	0x3ffe89752977c88e              # double 1.9085589999999999
	.quad	0x400137164c729f5a              # double 2.1518980000000001
	.quad	0x3ff0f75536933a04              # double 1.060384
	.quad	0x400d9ccaf709b739              # double 3.701559
	.quad	0x400c814df8b15726              # double 3.5631370000000002
	.quad	0x400f8edcc20d562a              # double 3.9447570000000001
	.quad	0x4010f2b90a782907              # double 4.2370340000000004
	.quad	0x4019cf0b28522ea1              # double 6.452191
	.quad	0x40217d1b93037d63              # double 8.744351
	.quad	0x400344d87724fa8b              # double 2.4086159999999999
	.quad	0x400f1e20ccff21b4              # double 3.8897110000000001
	.quad	0x40216a4441787054              # double 8.7075519999999997
	.quad	0x4021404db9c7368b              # double 8.6255930000000003
	.quad	0x4021c51e53a81dc1              # double 8.8849970000000003
	.quad	0x3fb7cbb3c81908e6              # double 0.092952000000000006
	.quad	0x3ff3ac12ad81adeb              # double 1.2295100000000001
	.quad	0x401464fca42aed14              # double 5.0986200000000004
	.quad	0x40206f8e9f6a93f3              # double 8.2178850000000008
	.quad	0x400de478854cdb7b              # double 3.736558
	.quad	0x401c39d2bf551505              # double 7.0564679999999997
	.quad	0x401ea0218def416c              # double 7.6563780000000001
	.quad	0x3ff53394b7b28955              # double 1.3250930000000001
	.quad	0x401f2c0229a5ebb7              # double 7.7929769999999995
	.quad	0x3ff062bbecaab8a6              # double 1.024105
	.quad	0x3ff56bfdb4cc2507              # double 1.338865
	.quad	0x400d4bb8800eae19              # double 3.6619730000000001
	.quad	0x40222ba2163fdd66              # double 9.0852210000000007
	.quad	0x4009530489d27c39              # double 3.1655359999999999
	.quad	0x402294d099e0e736              # double 9.290654
	.quad	0x4023fbd4cfd08d4c              # double 9.9918580000000005
	.quad	0x4021292513b5bf6a              # double 8.5803609999999999
	.quad	0x4011b6efc371da38              # double 4.4286490000000001
	.quad	0x4018b6dca07f66e8              # double 6.1785759999999996
	.quad	0x400d7bbadc0980b2              # double 3.6854149999999999
	.quad	0x401f2e939eadd591              # double 7.7954850000000002
	.quad	0x4021ae2fbe33acd6              # double 8.8402080000000005
	.quad	0x400d18ab92c06184              # double 3.6370459999999998
	.quad	0x4019c97d8cf398e9              # double 6.4467679999999996
	.quad	0x400d691d14e3bcd3              # double 3.6763249999999998
	.quad	0x3fc3d87b56b87379              # double 0.15504399999999999
	.quad	0x40209f060bb2bbaa              # double 8.3105930000000008
	.quad	0x40023838c111ada7              # double 2.2774519999999998
	.quad	0x401522917507e9d9              # double 5.2837579999999997
	.quad	0x401b88f648c7192f              # double 6.8837520000000003
	.quad	0x3fe250b30b5aa716              # double 0.57235100000000005
	.quad	0x4019313f8db48909              # double 6.2980939999999999
	.quad	0x3ff2e8858ff75968              # double 1.1817679999999999
	.quad	0x40126ac647778dd6              # double 4.6042719999999999
	.quad	0x4000a1f10667f90e              # double 2.0790730000000002
	.quad	0x40013a9b8cb8e087              # double 2.1536170000000001
	.quad	0x401c3a7e73a365cb              # double 7.0571229999999998
	.quad	0x3fb2bb23571d1d47              # double 0.073167999999999997
	.quad	0x40182e74299d883c              # double 6.0453650000000003
	.quad	0x400305f5275ee99a              # double 2.3779089999999998
	.quad	0x401faf416bdb1a6d              # double 7.9211479999999996
	.quad	0x40123f2c3009b307              # double 4.5616919999999999
	.quad	0x400c05add9c27e95              # double 3.5027729999999999
	.quad	0x3fd37852f7f498c4              # double 0.30421900000000002
	.quad	0x3ffb7da5119ce076              # double 1.718175
	.quad	0x400cf46994185059              # double 3.6193420000000001
	.quad	0x3ff304d44567125e              # double 1.188679
	.quad	0x4013ea85caafbc1b              # double 4.9790260000000002
	.quad	0x3ffbc9a027525461              # double 1.7367250000000001
	.quad	0x4016bbd1676640a7              # double 5.6834160000000002
	.quad	0x4014bbf5946c332f              # double 5.183554
	.quad	0x40001cb4f1e4b44a              # double 2.0140169999999999
	.quad	0x3fd1b3aeee957471              # double 0.276592
	.quad	0x400a0059210385c6              # double 3.2501699999999998
	.quad	0x400e6cf1800a7c5b              # double 3.8031950000000001
	.quad	0x400a61a93293d103              # double 3.2976860000000001
	.quad	0x4002dcc9ea9a3d2e              # double 2.3578070000000002
	.quad	0x401b3d7b634dad32              # double 6.810041
	.quad	0x4022479c4113c686              # double 9.1398639999999993
	.quad	0x40111ed740c4156e              # double 4.2801179999999999
	.quad	0x3feeec3116228134              # double 0.96633199999999996
	.quad	0x402297d1782d3847              # double 9.2965199999999992
	.quad	0x401013419e300150              # double 4.0188050000000004
	.quad	0x401305a20ddc6195              # double 4.7555009999999998
	.quad	0x4014bd0d0678c005              # double 5.1846199999999998
	.quad	0x401ccdbdb5d89481              # double 7.2009189999999998
	.quad	0x401204007570c565              # double 4.503908
	.quad	0x3ff4e0e30446b69e              # double 1.3049040000000001
	.quad	0x4015528848387df6              # double 5.3305980000000002
	.quad	0x40150f644955b467              # double 5.2650309999999996
	.quad	0x401fd51efb6dca08              # double 7.958126
	.quad	0x40237753e707e176              # double 9.7330620000000003
	.quad	0x4016edff3f0fe048              # double 5.7324190000000002
	.quad	0x401c515db3397dd0              # double 7.0794589999999999
	.quad	0x3ffb2889c1b54196              # double 1.697397
	.quad	0x40177e9142b302f7              # double 5.8736009999999998
	.quad	0x40235655c0fcb4f2              # double 9.6686230000000002
	.quad	0x4013b339c0ebedfa              # double 4.9250249999999998
	.quad	0x3fc6173b85e80bed              # double 0.17258399999999999
	.quad	0x3ff3a06b7aa25d8d              # double 1.2266649999999999
	.quad	0x4016ac29bf162ae5              # double 5.6681280000000003
	.quad	0x401e948882f0e0a8              # double 7.6450519999999997
	.quad	0x3ffad5970b49e01e              # double 1.677146
	.quad	0x401dc185cee17a03              # double 7.438987
	.quad	0x4022042224edf612              # double 9.0080729999999996
	.quad	0x4016334eb9a176de              # double 5.5501050000000003
	.quad	0x4006027ae9ab29e5              # double 2.7512110000000001
	.quad	0x4018361d8622c450              # double 6.0528469999999999
	.quad	0x40134a5269595fee              # double 4.8225800000000003
	.quad	0x4008cf25a250f840              # double 3.101146
	.quad	0x3ff6ee1693c03bc5              # double 1.433127
	.quad	0x3fb9eb0fadf2ecf2              # double 0.101243
	.quad	0x402145c5d6388659              # double 8.6362749999999995
	.quad	0x4013c24e9c454584              # double 4.9397529999999996
	.quad	0x4023d88effe2a3cf              # double 9.9229660000000006
	.quad	0x3ffb32f33ca31e7e              # double 1.6999390000000001
	.quad	0x4019b5a1016ce78a              # double 6.4273720000000001
	.quad	0x4020163476295209              # double 8.0433690000000002
	.quad	0x3ff2f80dc33721d5              # double 1.1855599999999999
	.quad	0x401a1d972cd7cf5f              # double 6.5288969999999997
	.quad	0x402366fe93187619              # double 9.7011610000000008
	.quad	0x40215ee008e9b38d              # double 8.6853029999999993
	.quad	0x400bcc710cb295ea              # double 3.4748250000000001
	.quad	0x4020dbcb81733227              # double 8.4292870000000004
	.quad	0x40102332f01754b0              # double 4.0343739999999997
	.quad	0x4004c7a6bd6e8af8              # double 2.597486
	.quad	0x40164fbefd00713f              # double 5.577877
	.quad	0x4012eece9a2c6690              # double 4.7332099999999997
	.quad	0x4015d9491f2dc2b1              # double 5.4621930000000001
	.quad	0x3ffbdd3aa369fcf4              # double 1.741511
	.quad	0x401583b0c4588a05              # double 5.3786040000000002
	.quad	0x401eb2c27a63736d              # double 7.6745700000000001
	.quad	0x4021365d18090b41              # double 8.6061789999999991
	.quad	0x400776db0dd82fd7              # double 2.9330349999999998
	.quad	0x402325694ccab3ee              # double 9.5730690000000003
	.quad	0x401690ebaade657c              # double 5.6415240000000004
	.quad	0x4010157d9dba908a              # double 4.0209869999999999
	.quad	0x401d6e3f359ff4fd              # double 7.3576629999999996
	.quad	0x3fe84b74ddf86e3b              # double 0.75921099999999997
	.quad	0x401ffab25b317efe              # double 7.994821
	.quad	0x3fc943d03968d75a              # double 0.197382
	.quad	0x400792a7bd48cb4b              # double 2.946609
	.quad	0x3ff9b8a4c1ebc83b              # double 1.6075790000000001
	.quad	0x401d42d7f950b956              # double 7.315277
	.quad	0x4013006d0d49949f              # double 4.7504160000000004
	.quad	0x40225777f27fe4bd              # double 9.1708370000000006
	.quad	0x401ab34a01abd1ab              # double 6.6750870000000004
	.quad	0x401502fe82517e78              # double 5.2529240000000001
	.quad	0x3ffd355bccaf709b              # double 1.8255269999999999
	.quad	0x4019673a365cb35f              # double 6.3508079999999998
	.quad	0x4018d7325918a00a              # double 6.210153
	.quad	0x400f741e9af5ba2c              # double 3.9316990000000001
	.quad	0x4010beb24a6a875d              # double 4.1862269999999997
	.quad	0x4013cb9fdbd2fa0d              # double 4.9488519999999996
	.quad	0x40018bc7b45f17be              # double 2.1932520000000002
	.quad	0x401884da4ce8101f              # double 6.1297389999999998
	.quad	0x3ff18011d3671ac1              # double 1.0937669999999999
	.quad	0x4007a1986b9c304d              # double 2.9539040000000001
	.quad	0x40177acd184c2720              # double 5.869923
	.quad	0x3fdac36113404ea5              # double 0.41817500000000002
	.quad	0x4004f6ea4228997c              # double 2.6205639999999999
	.quad	0x400c8b6c7a7c9de0              # double 3.5680779999999999
	.quad	0x40157f7403dddb12              # double 5.374466
	.quad	0x4008c730c67168f9              # double 3.097261
	.quad	0x401a9c6327ed84d3              # double 6.6527219999999998
	.quad	0x40220d3b29a1b9fa              # double 9.0258420000000008
	.quad	0x3fe250efdc9c4da9              # double 0.57238
	.quad	0x4020f3b57c4e2f38              # double 8.475994
	.quad	0x40175f1a5ca29846              # double 5.8428740000000001
	.quad	0x3ffbe34330d73861              # double 1.7429840000000001
	.quad	0x40140edd48451330              # double 5.0145160000000004
	.quad	0x3fe8c55a7d24180d              # double 0.77409099999999997
	.quad	0x40157524bfd2e947              # double 5.3643980000000004
	.quad	0x3ff225b4245f5ad9              # double 1.1342049999999999
	.quad	0x4014fed4a1ad6452              # double 5.2488580000000002
	.quad	0x3fb2eb91b3f20a74              # double 0.073907
	.quad	0x40150c83ec892ab7              # double 5.2622220000000004
	.quad	0x40217990d173fb7a              # double 8.7374329999999993
	.quad	0x40183b09203a322b              # double 6.057652
	.quad	0x3ffea6516db0dd83              # double 1.915605
	.quad	0x401296c4827b6fe3              # double 4.6472340000000001
	.quad	0x3fcd6fb8f57f737e              # double 0.22997200000000001
	.quad	0x400b4a2c2374794f              # double 3.4112170000000002
	.quad	0x3fc0db2f661f18ca              # double 0.131689
	.quad	0x400e1f0fe047d3d4              # double 3.7651669999999999
	.quad	0x4021bb2ebe596c83              # double 8.8655910000000002
	.quad	0x400b36a9c560c7c1              # double 3.401691
	.quad	0x40100d4d4024b33e              # double 4.0129900000000003
	.quad	0x4020a4ebdd334c5e              # double 8.3221120000000006
	.quad	0x40125f92f2b66b61              # double 4.5933339999999996
	.quad	0x4010505ab3aabcd8              # double 4.0784710000000004
	.quad	0x400a461bf37b8d3f              # double 3.284233
	.quad	0x3fd1a4a8c154c986              # double 0.275675
	.quad	0x3fe75870da5daf08              # double 0.72954600000000003
	.quad	0x4018315e39713ad6              # double 6.0482110000000002
	.quad	0x4010e69552e2fbe3              # double 4.2251789999999998
	.quad	0x4019debc408d8ec9              # double 6.4675149999999997
	.quad	0x4020faa497fa5d29              # double 8.4895370000000003
	.quad	0x4008997785729b28              # double 3.074935
	.quad	0x3ff067ce0fc2eba2              # double 1.0253429999999999
	.quad	0x4022e61fc08fa7a8              # double 9.4494609999999994
	.quad	0x4019026aec0724b7              # double 6.2523609999999996
	.quad	0x4022440181e03f70              # double 9.1328239999999994
	.quad	0x401f892ddbdb5d89              # double 7.8839639999999997
	.quad	0x40221948fd9fd36f              # double 9.0493849999999991
	.quad	0x402134f4e874c900              # double 8.6034310000000005
	.quad	0x401bcdc443914f48              # double 6.9509439999999998
	.quad	0x4020f5ba0a526959              # double 8.4799349999999993
	.quad	0x3faf3d5bab21815a              # double 0.061015
	.quad	0x40205ed3b6cbd988              # double 8.1852090000000004
	.quad	0x401c924bba12b5e5              # double 7.1428669999999999
	.quad	0x3fc7ee0b0af5fd48              # double 0.18695200000000001
	.quad	0x4020a39baa1511e0              # double 8.319547
	.quad	0x40239aebe596c82e              # double 9.802581
	.quad	0x4020f5785f8d2e51              # double 8.4794339999999995
	.quad	0x4000781beb18116f              # double 2.0586470000000001
	.quad	0x40164b5568e820e6              # double 5.5735679999999999
	.quad	0x401c58fbca1059ea              # double 7.0868979999999997
	.quad	0x400b4379b77c02b0              # double 3.4079470000000001
	.quad	0x401b734938583622              # double 6.862584
	.quad	0x3fdce89656eefa1e              # double 0.45169599999999999
	.quad	0x400314d2f5dbb9d0              # double 2.3851680000000002
	.quad	0x40145536933a0408              # double 5.0832160000000002
	.quad	0x400e78efbb0e5e68              # double 3.8090510000000002
	.quad	0x40233818e757928e              # double 9.6095649999999999
	.quad	0x400d3c8216c61523              # double 3.6545450000000002
	.quad	0x401dc018e757928e              # double 7.437595
	.quad	0x4017d9930be0ded3              # double 5.9624750000000004
	.quad	0x3ff24ad256798959              # double 1.143267
	.quad	0x3ffce21d96e9bbf1              # double 1.805204
	.quad	0x401166b873797460              # double 4.3503129999999999
	.quad	0x400a8db0dd82fd76              # double 3.3191850000000001
	.quad	0x3ff20610f0e90bc8              # double 1.1264810000000001
	.quad	0x401e84156e264e48              # double 7.6289879999999996
	.quad	0x4020dcbe61cffeb0              # double 8.4311399999999992
	.quad	0x4020fbdd334c5da7              # double 8.4919220000000006
	.quad	0x402173c60029f16b              # double 8.7261199999999999
	.quad	0x401435729b280f13              # double 5.0521950000000002
	.quad	0x3fec3de82d7b634e              # double 0.88255700000000004
	.quad	0x401bfa9b06812381              # double 6.9947319999999999
	.quad	0x400319799e518f3f              # double 2.3874390000000001
	.quad	0x401d93cc8de2ac32              # double 7.3943349999999999
	.quad	0x4008d5807fed2029              # double 3.1042489999999998
	.quad	0x3fdeaa7ded6ba8c6              # double 0.47915600000000003
	.quad	0x401f739e279dd3bb              # double 7.862908
	.quad	0x4022b2747d805e5f              # double 9.3485449999999997
	.quad	0x3fcf588e368f0846              # double 0.24489
	.quad	0x4018e25e13b18dac              # double 6.2210619999999999
	.quad	0x4017c6ea854477ff              # double 5.9442539999999999
	.quad	0x4023da832b990afe              # double 9.9267819999999993
	.quad	0x400be8b11409a240              # double 3.4886189999999999
	.quad	0x4012657214f0520d              # double 4.5990679999999999
	.quad	0x401ed3d68405b39e              # double 7.7068729999999999
	.quad	0x40096298cc144029              # double 3.173143
	.quad	0x401795bccaf709b7              # double 5.8962279999999998
	.quad	0x3ffd0129cbab649d              # double 1.812784
	.quad	0x4021c687b139c94f              # double 8.8877539999999993
	.quad	0x4015f7064ece9a2c              # double 5.4912349999999996
	.quad	0x40086138fffbce42              # double 3.047472
	.quad	0x3fda46f156191149              # double 0.41058
	.quad	0x400fb8a7e73a365d              # double 3.9651640000000001
	.quad	0x4015be4217d2849d              # double 5.4357990000000003
	.quad	0x401efbe61cffeb07              # double 7.7459949999999997
	.quad	0x4017d9068986fcdf              # double 5.9619390000000001
	.quad	0x3ff6d0d2806af46b              # double 1.4259820000000001
	.quad	0x4021bd944aa53fc0              # double 8.8702719999999999
	.quad	0x40125b4070329803              # double 4.5891130000000002
	.quad	0x3ff5bb3d8e000863              # double 1.3582129999999999
	.quad	0x401e50f840181e04              # double 7.579072
	.quad	0x400faae21101b003              # double 3.9584389999999998
	.quad	0x401926034f3fd934              # double 6.2871220000000001
	.quad	0x402329acde19fc2b              # double 9.5813970000000008
	.quad	0x40117119ce075f70              # double 4.3604500000000002
	.quad	0x401bbcf13cee9dd8              # double 6.9345140000000001
	.quad	0x400c7b30f8c64fdb              # double 3.560152
	.quad	0x400c984d338f7985              # double 3.5743659999999999
	.quad	0x401be990f301eabc              # double 6.9780920000000002
	.quad	0x40204922962cfd8f              # double 8.1428419999999999
	.quad	0x401bcc71d6063172              # double 6.9496529999999996
	.quad	0x3ff4552d234eb9a1              # double 1.2707949999999999
	.quad	0x40005cda2b5a20de              # double 2.0453380000000001
	.quad	0x400dc06c8711d799              # double 3.7189570000000001
	.quad	0x401402a38b8ae31d              # double 5.0025769999999996
	.quad	0x3ff24dd1e53a81dc              # double 1.143999
	.quad	0x4023c47368ad6883              # double 9.8836929999999991
	.quad	0x400fc384ba0e8427              # double 3.9704679999999999
	.quad	0x4021c8d972cd7cf6              # double 8.8922840000000001
	.quad	0x400f5b84db9c7369              # double 3.9196870000000001
	.quad	0x4014102107b78466              # double 5.0157509999999998
	.quad	0x401d756eac860568              # double 7.3646799999999998
	.quad	0x40082532a497fa5d              # double 3.0181629999999999
	.quad	0x401f9cd39da16617              # double 7.9031510000000002
	.quad	0x4016812f901083dc              # double 5.6261580000000002
	.quad	0x401777bfe7e1fc09              # double 5.866943
	.quad	0x40092520d130df9c              # double 3.1431290000000001
	.quad	0x3fe0329a1b9f98b7              # double 0.50617699999999999
	.quad	0x3ff55ed9dfdac68b              # double 1.3356570000000001
	.quad	0x400718fd5cb790fb              # double 2.8872019999999998
	.quad	0x3ffea7fb267c6b8b              # double 1.9160109999999999
	.quad	0x401b79b5a63f9a4a              # double 6.8688570000000002
	.quad	0x3fd5a6dacabc5155              # double 0.33830900000000003
	.quad	0x402305097c80841f              # double 9.5098380000000002
	.quad	0x4023704ec636b096              # double 9.7193509999999996
	.quad	0x401e2ad8a116659d              # double 7.5418419999999999
	.quad	0x40188bc44bf4cb19              # double 6.1364910000000004
	.quad	0x40093060bb2bba99              # double 3.148622
	.quad	0x40226f440af1cb8a              # double 9.2173160000000003
	.quad	0x4015a21c475e6363              # double 5.4083110000000003
	.quad	0x40196984a0e410b6              # double 6.3530449999999998
	.quad	0x4018a575c0767d35              # double 6.1615820000000001
	.quad	0x40234c2c1b10fd7e              # double 9.6487739999999995
	.quad	0x4022faf2d7f950b9              # double 9.4901339999999994
	.quad	0x4003a9ab29e4d5d8              # double 2.457846
	.quad	0x40154e22e5de15ca              # double 5.3263049999999996
	.quad	0x40232404a72ead92              # double 9.5703479999999992
	.quad	0x40201cf1c3265ade              # double 8.0565320000000007
	.quad	0x4006159791819d24              # double 2.7605430000000002
	.quad	0x3ff43cec84f8f8a5              # double 1.2648740000000001
	.quad	0x3fc8c0b5675579af              # double 0.193381
	.quad	0x401a805814940bbb              # double 6.6253359999999999
	.quad	0x40141f9591cd1c7e              # double 5.0308440000000001
	.quad	0x40170c6d612c6ac2              # double 5.7621359999999999
	.quad	0x401422e126202539              # double 5.0340619999999996
	.quad	0x40171f2f9873ffac              # double 5.7804549999999999
	.quad	0x4015a550870110a1              # double 5.4114399999999998
	.quad	0x4017d848387df5cf              # double 5.9612129999999999
	.quad	0x40128a6f826edaa9              # double 4.6351909999999998
	.quad	0x3ffcc7c957cd466f              # double 1.7987759999999999
	.quad	0x40128306e5cd4ed3              # double 4.6279560000000002
	.quad	0x401e3256366d7a57              # double 7.5491570000000001
	.quad	0x40227633269df97b              # double 9.2308590000000006
	.quad	0x401153ab430f4949              # double 4.3317079999999999
	.quad	0x4020ff47735c182f              # double 8.4985920000000004
	.quad	0x40102d4306e5cd4f              # double 4.0442010000000002
	.quad	0x40159ea033e78e19              # double 5.4049079999999998
	.quad	0x401cc340d4dc65c7              # double 7.190677
	.quad	0x402202e1693c03bc              # double 9.0056259999999994
	.quad	0x40216e78e1932d6f              # double 8.7157660000000003
	.quad	0x40238ec69b5a63fa              # double 9.7788590000000006
	.quad	0x40129b1e9f277814              # double 4.651484
	.quad	0x3fb77f06705c896e              # double 0.091782000000000002
	.quad	0x400618d6909aed57              # double 2.7621280000000001
	.quad	0x40102e5d18090b41              # double 4.0452769999999996
	.quad	0x401e37cfa26a22b4              # double 7.5545030000000004
	.quad	0x401a04b2b777d0f2              # double 6.504588
	.quad	0x40215dc5f7c6759b              # double 8.6831510000000005
	.quad	0x40170470eb24a6a8              # double 5.7543369999999996
	.quad	0x40208b08787485e4              # double 8.2715490000000002
	.quad	0x400f7497b7414a4d              # double 3.9319299999999999
	.quad	0x40022a009f623077              # double 2.2705090000000001
	.quad	0x400805edd052934b              # double 3.0028950000000001
	.quad	0x4014d0fc71d60631              # double 5.2040879999999996
	.quad	0x4009d4efcbd55608              # double 3.2289729999999999
	.quad	0x4020e1988d2a1f8e              # double 8.4406169999999996
	.quad	0x4008b785f8d2e515              # double 3.0896110000000001
	.quad	0x4008451116a8b8f1              # double 3.0337239999999999
	.quad	0x40156f1e8e608073              # double 5.3585149999999997
	.quad	0x40184154c985f06f              # double 6.0637999999999996
	.quad	0x401574a90470a809              # double 5.3639260000000002
	.quad	0x40227e833c60029f              # double 9.2470949999999998
	.quad	0x4011d08d4bad7d7c              # double 4.4536639999999998
	.quad	0x4012bca46e08f217              # double 4.684221
	.quad	0x402061bf7ad4b274              # double 8.1909139999999993
	.quad	0x4009367125dd095b              # double 3.151583
	.quad	0x4001770e6f2e8c05              # double 2.1831330000000002
	.quad	0x401871cbccf28c7a              # double 6.111129
	.quad	0x4008dda16616b54e              # double 3.1082179999999999
	.quad	0x40209f0fbeb9e493              # double 8.3106670000000005
	.quad	0x3fc3eb7cbb3c8191              # double 0.15562400000000001
	.quad	0x3fd439de481f5382              # double 0.31603199999999998
	.quad	0x4017f025bfad2999              # double 5.9845189999999997
	.quad	0x3fdc9070fbeb9e49              # double 0.44631599999999999
	.quad	0x3fe46b7ed41b75a7              # double 0.63812199999999997
	.quad	0x401eee1437c5692b              # double 7.7324989999999997
	.quad	0x3ffd83e20ccff21b              # double 1.8446979999999999
	.quad	0x3ff0d146e4c0df59              # double 1.0510930000000001
	.quad	0x4023e0e820e62995              # double 9.9392709999999997
	.quad	0x3fa0bb6ed677707a              # double 0.032680000000000001
	.quad	0x40196af102363b25              # double 6.3544349999999996
	.quad	0x401770e30446b69e              # double 5.8602410000000003
	.quad	0x401d2cf0307f23cd              # double 7.2938850000000004
	.quad	0x401d1b899392189c              # double 7.2768920000000001
	.quad	0x40216cc4ac6cdaf5              # double 8.7124380000000006
	.quad	0x3fd09042d8c2a455              # double 0.25880500000000001
	.quad	0x401931248d7e0264              # double 6.2979909999999997
	.quad	0x401165fbf83382e4              # double 4.3495939999999997
	.quad	0x4021e45a5fc7e6b4              # double 8.946002
	.quad	0x40224634dad31fcd              # double 9.1371219999999997
	.quad	0x402132253111f0c3              # double 8.5979399999999995
	.quad	0x4014b4ef459d9903              # double 5.1766940000000004
	.quad	0x400b42ca148ba83f              # double 3.4076119999999999
	.quad	0x3ff98a65492ff4ba              # double 1.5962879999999999
	.quad	0x401db4af0bf1a5ca              # double 7.4264489999999999
	.quad	0x4004b8d477bbf940              # double 2.590249
	.quad	0x4018a08feac42e99              # double 6.1567990000000004
	.quad	0x3ff10d7be9856a38              # double 1.0657920000000001
	.quad	0x3fd57318fc504817              # double 0.33515
	.quad	0x3fdb3bd5992428d4              # double 0.42552699999999999
	.quad	0x3ff8055da272862f              # double 1.5013099999999999
	.quad	0x3ff82553ac4f7ec3              # double 1.5091129999999999
	.quad	0x4022a44fa05143bf              # double 9.3209199999999992
	.quad	0x401a479a6b50b0f2              # double 6.5699249999999996
	.quad	0x40225794855da273              # double 9.1710550000000008
	.quad	0x40209b526527a205              # double 8.3033629999999992
	.quad	0x400df948dc11e42e              # double 3.746721
	.quad	0x4021ac0df58c08b7              # double 8.8360439999999993
	.quad	0x4023856b65a9a805              # double 9.7605850000000007
	.quad	0x4014edec5f394b7b              # double 5.2323469999999999
	.quad	0x40211d1d8a548238              # double 8.5568659999999994
	.quad	0x4012c70b06c43f60              # double 4.6943780000000004
	.quad	0x3fe87229e90795f6              # double 0.76393599999999995
	.quad	0x3fe543a2163fdd66              # double 0.66450600000000004
	.quad	0x401a9fbb0e5e6794              # double 6.6559869999999997
	.quad	0x3fdb260f5e41d4b7              # double 0.42419800000000002
	.quad	0x400c6cfbfc6540cc              # double 3.5532149999999998
	.quad	0x4013670da5daf07c              # double 4.850638
	.quad	0x3faeb37867f0aa22              # double 0.059963000000000002
	.quad	0x400903ba3443d46b              # double 3.1268199999999999
	.quad	0x402363649d388a8b              # double 9.6941269999999999
	.quad	0x4012bcf398e97072              # double 4.6845230000000004
	.quad	0x3ff7e31a4bdba0a5              # double 1.492945
	.quad	0x402345a8deb0fadf              # double 9.6360539999999996
	.quad	0x4018178811b1d92b              # double 6.0229799999999996
	.quad	0x401c443f5f91600f              # double 7.0666479999999998
	.quad	0x400ed5b6805a2d73              # double 3.854352
	.quad	0x4003b13dfb0d51f8              # double 2.461544
	.quad	0x40150641b328b6d8              # double 5.2561099999999996
	.quad	0x402338183f91e647              # double 9.6095600000000001
	.quad	0x40191a9da597d49d              # double 6.2759919999999996
	.quad	0x3ff93b09203a322b              # double 1.576913
	.quad	0x401f2d36f7e3d1cc              # double 7.7941549999999999
	.quad	0x401ed7ed84d338f8              # double 7.7108670000000003
	.quad	0x40191247021d10b2              # double 6.267849
	.quad	0x40233e03d577963a              # double 9.6211230000000008
	.quad	0x4011ac579f234656              # double 4.4183029999999999
	.quad	0x3ff7573860999dcb              # double 1.4587939999999999
	.quad	0x40080051c9f72f77              # double 3.000156
	.quad	0x40157e3ef284167b              # double 5.3732870000000004
	.quad	0x400d274751ce28ed              # double 3.6441789999999998
	.quad	0x40180f9830e3cd9a              # double 6.0152289999999997
	.quad	0x40165ac1d29dc726              # double 5.5886300000000002
	.quad	0x4012d16052502eec              # double 4.7044689999999996
	.quad	0x3fa1cbab649d388b              # double 0.034757000000000003
	.quad	0x40211babead4f590              # double 8.5540459999999996
	.quad	0x3fff78c436fc1590              # double 1.9669840000000001
	.quad	0x4018134d26fa3fcd              # double 6.0188490000000003
	.quad	0x402352dcf4623d0c              # double 9.661842
	.quad	0x401c34bf8fcd67fd              # double 7.0515119999999998
	.quad	0x400baeae9ee45c36              # double 3.4602940000000002
	.quad	0x3fe15c8fb86f47b6              # double 0.54254899999999995
	.quad	0x401d2bff47735c18              # double 7.2929659999999998
	.quad	0x4016bf355cd91eeb              # double 5.6867270000000003
	.quad	0x401f3fcf80dc3372              # double 7.8123149999999999
	.quad	0x401d7d141a6937d2              # double 7.372147
	.quad	0x40046a1059ea5721              # double 2.5517889999999999
	.quad	0x4021f7b0d51f81a6              # double 8.9837710000000008
	.quad	0x4023f6e49f51697f              # double 9.9822129999999997
	.quad	0x40013823422467be              # double 2.1524109999999999
	.quad	0x3ffc8cad57bc7f78              # double 1.7843450000000001
	.quad	0x3ff297c6fbd273d6              # double 1.1620550000000001
	.quad	0x4010e0ca600b0293              # double 4.2195220000000004
	.quad	0x4014088e368f0846              # double 5.0083549999999999
	.quad	0x400f22656abde3fc              # double 3.8917950000000001
	.quad	0x401dd4388ebcc6c5              # double 7.4572469999999997
	.quad	0x3ff8f35b0bbf50e3              # double 1.5594129999999999
	.quad	0x400de92f6e82949a              # double 3.7388599999999999
	.quad	0x40206e2dc6e2a800              # double 8.2151929999999993
	.quad	0x40066fe8ab4fa483              # double 2.804643
	.quad	0x3fec16e9bbf0dc77              # double 0.87779700000000005
	.quad	0x40219117507e9d95              # double 8.7833810000000003
	.quad	0x401a4ff6d330941d              # double 6.5780900000000004
	.quad	0x401bab463497b741              # double 6.9172599999999997
	.quad	0x3fd51f255f3519bd              # double 0.33002599999999999
	.quad	0x3fecc5cbbc2b94d9              # double 0.89914499999999997
	.quad	0x3ff8453198288052              # double 1.516893
	.quad	0x4020f4488c60cbf3              # double 8.4771160000000005
	.quad	0x3ffda7221858bc5a              # double 1.8533040000000001
	.quad	0x4015cbc6a7ef9db2              # double 5.4489999999999998
	.quad	0x401c1b502ababead              # double 7.0266729999999997
	.quad	0x4016a59b8023a6ce              # double 5.6617259999999998
	.quad	0x4022feeeb702602d              # double 9.4979150000000007
	.quad	0x400639ca5bd944aa              # double 2.7782179999999999
	.quad	0x400fd017dae81883              # double 3.9766080000000001
	.quad	0x3fea2ed56b00ffda              # double 0.81821699999999997
	.quad	0x40222bcc8de2ac32              # double 9.0855449999999998
	.quad	0x3ff170de8f6cefed              # double 1.0900559999999999
	.quad	0x3ff3a8e4fb97bb73              # double 1.228734
	.quad	0x40060640a6b93ccd              # double 2.753053
	.quad	0x4022752b4d8ba40e              # double 9.2288460000000008
	.quad	0x3ffc780dc33721d5              # double 1.7793099999999999
	.quad	0x4008cd59d55e6bc6              # double 3.1002689999999999
	.quad	0x40208c7d5ed06fef              # double 8.2743939999999991
	.quad	0x4010b47ae147ae14              # double 4.1762499999999996
	.quad	0x4023b014940bbb1f              # double 9.8439069999999997
	.quad	0x3fdf3a4b5568e821              # double 0.48793300000000001
	.quad	0x400947c5260f5e42              # double 3.1600440000000001
	.quad	0x400e3a16616b54e3              # double 3.7783630000000001
	.quad	0x401ab2bf11f926c8              # double 6.6745570000000001
	.quad	0x4020250247021d11              # double 8.0722830000000005
	.quad	0x401818383ad9f0a2              # double 6.0236520000000002
	.quad	0x4021559ccfaeff5c              # double 8.6672119999999992
	.quad	0x401f83ee5eedcc21              # double 7.8788390000000001
	.quad	0x4023624b124d099e              # double 9.6919789999999999
	.quad	0x402338e991ff7165              # double 9.6111570000000003
	.quad	0x3fed334a44c7b02d              # double 0.91251099999999996
	.quad	0x3ffa3af533f42353              # double 1.639394
	.quad	0x4023a777d0f1f57b              # double 9.8270859999999995
	.quad	0x4021e72cd7cf5f4e              # double 8.9515139999999995
	.quad	0x4023ecdfce3150db              # double 9.9626450000000001
	.quad	0x400e3d19157abb88              # double 3.779833
	.quad	0x401ca8fd199bb279              # double 7.1650280000000004
	.quad	0x401628051c9f72f7              # double 5.5390819999999996
	.quad	0x401546dc1a47a9e3              # double 5.3191990000000002
	.quad	0x402025c182ecaeea              # double 8.0737419999999993
	.quad	0x40072c0f88333fc8              # double 2.8965139999999998
	.quad	0x3fc280d801b43526              # double 0.14455699999999999
	.quad	0x400a87136a400fbb              # double 3.3159550000000002
	.quad	0x40119ba908a265f1              # double 4.402012
	.quad	0x4013de52deca2553              # double 4.9671130000000003
	.quad	0x3ff1e5cf67b1c001              # double 1.118606
	.quad	0x40198e9f6a93f291              # double 6.3892800000000003
	.quad	0x4010fa4ce8101f32              # double 4.244434
	.quad	0x401027daa4fca42b              # double 4.0389200000000001
	.quad	0x40223d4b48d3ae68              # double 9.1197149999999993
	.quad	0x3ff7b78359bc33f8              # double 1.4823029999999999
	.quad	0x3ff23c9363f572de              # double 1.1397889999999999
	.quad	0x4023ed2502eec7c9              # double 9.9631729999999993
	.quad	0x4022b984a0e410b6              # double 9.3623399999999997
	.quad	0x4006a90364388ebd              # double 2.8325260000000001
	.quad	0x4012c0b6b6e0d23d              # double 4.6881969999999997
	.quad	0x40056c1ebc83a96d              # double 2.6777929999999999
	.quad	0x3ff53bbd7b2031cf              # double 1.3270850000000001
	.quad	0x4003dcbbc2b94d94              # double 2.48278
	.quad	0x4006401eeed8904f              # double 2.7813089999999998
	.quad	0x4001628bb0a2ca9b              # double 2.1731180000000001
	.quad	0x4017601eabbcb1cd              # double 5.8438670000000004
	.quad	0x4022d552e2fbe33b              # double 9.4166480000000003
	.quad	0x401d1970b49e01de              # double 7.2748439999999999
	.quad	0x40224645e4e69f06              # double 9.1372520000000002
	.quad	0x40101e9468017119              # double 4.0298629999999998
	.quad	0x40204a630ec31162              # double 8.1452869999999997
	.quad	0x3fe37c3b4f616723              # double 0.60891499999999998
	.quad	0x400891d606317269              # double 3.0712090000000001
	.quad	0x40203792af9a8cdf              # double 8.1085410000000007
	.quad	0x4022d3a2163fdd66              # double 9.4133460000000007
	.quad	0x4009eb7564302b41              # double 3.23997
	.quad	0x4004ee15011904b4              # double 2.6162510000000001
	.quad	0x400c8e703afb7e91              # double 3.56955
	.quad	0x4021550fe8ab4fa5              # double 8.6661370000000009
	.quad	0x4003f69db65ecc3e              # double 2.4954179999999999
	.quad	0x401773a08398a655              # double 5.8629170000000004
	.quad	0x3feeddf00abf76a3              # double 0.964592
	.quad	0x400d056bca5375c9              # double 3.6276470000000001
	.quad	0x4017a95bff04577e              # double 5.9153900000000004
	.quad	0x4020f8a3b57c4e2f              # double 8.4856239999999996
	.quad	0x401e2a24cc6822ff              # double 7.5411559999999999
	.quad	0x4012005814940bbb              # double 4.5003359999999999
	.quad	0x4012d6088d6d3b6d              # double 4.7090170000000002
	.quad	0x4020afe62dc6e2a8              # double 8.343553
	.quad	0x400bee02a77a2ced              # double 3.4912160000000001
	.quad	0x4011a5bea0ba1f4b              # double 4.4118599999999999
	.quad	0x400b980fdc1615ec              # double 3.449249
	.quad	0x401ba7c7820a30db              # double 6.9138469999999996
	.quad	0x4022c009d495182b              # double 9.3750750000000007
	.quad	0x401f24d1633482bf              # double 7.7859550000000004
	.quad	0x40140fa97e132b56              # double 5.0152950000000001
	.quad	0x400dd6a0dbad3a60              # double 3.7297989999999999
	.quad	0x4014da3c21187e7c              # double 5.21312
	.quad	0x3fe578ee28672757              # double 0.67101200000000005
	.quad	0x401712d948dc11e4              # double 5.7684069999999998
	.quad	0x3ffd33083558a761              # double 1.824959
	.quad	0x4017826fa3fcc9eb              # double 5.8773790000000004
	.quad	0x4021f021d10b1fef              # double 8.9690080000000005
	.quad	0x400bc1f9f01b866e              # double 3.4697149999999999
	.quad	0x401d827f1b691212              # double 7.3774379999999997
	.quad	0x401fbeb0b7c3504c              # double 7.9362209999999997
	.quad	0x401ccffde7210be9              # double 7.2031169999999998
	.quad	0x3fdf3e10060780fe              # double 0.48816300000000001
	.quad	0x40151c204f2ae07e              # double 5.2774669999999997
	.quad	0x4012e4bbe4473cd5              # double 4.7233729999999996
	.quad	0x4008e52e72da1230              # double 3.1119050000000001
	.quad	0x40201e529bae46d0              # double 8.0592240000000004
	.quad	0x401eb5d35653c9ac              # double 7.6775640000000003
	.quad	0x40081eb7cbb3c819              # double 3.014999
	.quad	0x4002b56c93a71151              # double 2.3385859999999998
	.quad	0x400b07c49fd7a13c              # double 3.3787929999999999
	.quad	0x401668472c0e7bc4              # double 5.6018340000000002
	.quad	0x4011d667b5f1bef5              # double 4.4593800000000003
	.quad	0x40205b354c12274a              # double 8.1781410000000001
	.quad	0x4023d8c6f7a0b5ee              # double 9.9233930000000008
	.quad	0x4023b9ac57e23f25              # double 9.8626430000000002
	.quad	0x4004c0ee06d93815              # double 2.594204
	.quad	0x401048e60807357e              # double 4.0711899999999996
	.quad	0x400075a858793dd9              # double 2.0574499999999998
	.quad	0x4021d00000000000              # double 8.90625
	.quad	0x4019152c16df3f96              # double 6.2706759999999999
	.quad	0x4012698b2e9ccb7d              # double 4.6030699999999998
	.quad	0x4023f5058dde7a74              # double 9.9785579999999995
	.quad	0x3fdaa00e27e0ef9a              # double 0.41601900000000003
	.quad	0x400649930be0ded3              # double 2.7859250000000002
	.quad	0x40186716d2aa5c5f              # double 6.1006729999999996
	.quad	0x400cf11ada76d97b              # double 3.6177269999999999
	.quad	0x40016eb463497b74              # double 2.179055
	.quad	0x400b5dcdf6987831              # double 3.4208029999999998
	.quad	0x401da085f4a1272d              # double 7.4067610000000004
	.quad	0x4010a69f05ea24cc              # double 4.1627159999999996
	.quad	0x4017f009f623076c              # double 5.984413
	.quad	0x401b220d9945b6c3              # double 6.7832549999999996
	.quad	0x40108e2d6238da3c              # double 4.1388449999999999
	.quad	0x4004991bc5586445              # double 2.5747599999999999
	.quad	0x4000e4649906cca3              # double 2.1115200000000001
	.quad	0x4018c3a9f383f0bb              # double 6.1910780000000001
	.quad	0x40158a7d24180d3d              # double 5.385243
	.quad	0x40004a9930be0ded              # double 2.0364249999999999
	.quad	0x401fd1fc08fa7a85              # double 7.9550629999999999
	.quad	0x400735653c9abb02              # double 2.9010720000000001
	.quad	0x4019b733ebbfd71b              # double 6.428909
	.quad	0x3ff97ae3608d0892              # double 1.5925020000000001
	.quad	0x4008c533b1077469              # double 3.0962900000000002
	.quad	0x40205f93bc0a06ea              # double 8.186674
	.quad	0x4006142c3c9eecc0              # double 2.7598500000000001
	.quad	0x401530f451761459              # double 5.2978069999999997
	.quad	0x401e042e9899bf59              # double 7.5040839999999997
	.quad	0x401c53bf727136a4              # double 7.081785
	.quad	0x40082aec0724b76f              # double 3.0209579999999998
	.quad	0x402126ff9f87f024              # double 8.5761690000000001
	.quad	0x401bac24c404a72f              # double 6.9181090000000003
	.quad	0x3ff1ab80ecfa69be              # double 1.104371
	.quad	0x3ffc8feac42e989a              # double 1.7851360000000001
	.quad	0x4018b19fc2a8869c              # double 6.1734609999999996
	.quad	0x400d90f301eabbcb              # double 3.695776
	.quad	0x4016158bc59b8024              # double 5.5210410000000003
	.quad	0x3ffabd0f1f57b41c              # double 1.671157
	.quad	0x401e3d76683c297c              # double 7.560022
	.quad	0x40217a8b6d86ec18              # double 8.7393450000000001
	.quad	0x400b482491afc04d              # double 3.4102260000000002
	.quad	0x401e444ed6fda837              # double 7.566707
	.quad	0x3ffe9fd36f7e3d1d              # double 1.9140200000000001
	.quad	0x401c3623d0bfa094              # double 7.0528709999999997
	.quad	0x40212727dcbddb98              # double 8.5764759999999995
	.quad	0x4017db3700474d9c              # double 5.9640769999999996
	.quad	0x401752ababead4f6              # double 5.8307330000000004
	.quad	0x400e1dd54da4ce81              # double 3.764567
	.quad	0x3ffaaf837b4a233a              # double 1.6678500000000001
	.quad	0x400274bc6a7ef9db              # double 2.3069999999999999
	.quad	0x3ff987c73eee5259              # double 1.5956490000000001
	.quad	0x4020fd538ac18f82              # double 8.4947780000000002
	.quad	0x401ffbfa8f7db6e5              # double 7.9960729999999999
	.quad	0x3fbcfb97bb730835              # double 0.113214
	.quad	0x401fb805a2d72ffd              # double 7.9297089999999998
	.quad	0x400b4d8904f6dfc6              # double 3.4128590000000001
	.quad	0x3fda94c447c30d30              # double 0.41532999999999998
	.quad	0x401760dd82fd75e2              # double 5.844595
	.quad	0x40125a459103c8e2              # double 4.5881559999999997
	.quad	0x4000ad45e9185cee              # double 2.084606
	.quad	0x3fc8823854046413              # double 0.19147400000000001
	.quad	0x401645e1c15097c8              # double 5.568244
	.quad	0x401f00f5a1016ce8              # double 7.7509370000000004
	.quad	0x3ff4ebb8800eae19              # double 1.3075490000000001
	.quad	0x400259791819d239              # double 2.2936879999999999
	.quad	0x4006a463065f9592              # double 2.8302670000000001
	.quad	0x4021dc117f84449e              # double 8.9298210000000005
	.quad	0x400a5074a771c971              # double 3.289285
	.quad	0x3ffc691a75cd0bb7              # double 1.77566
	.quad	0x4001b145d851654d              # double 2.2115589999999998
	.quad	0x400f3e111276fb09              # double 3.9053059999999999
	.quad	0x40176e7c49fd7a14              # double 5.8578960000000002
	.quad	0x4020b2c450268901              # double 8.3491540000000004
	.quad	0x3fed7735c182ecaf              # double 0.92080200000000001
	.quad	0x3feec7735c182ecb              # double 0.961847
	.quad	0x3fe3e9057d1782d4              # double 0.62219500000000005
	.quad	0x3ff15a005c4651f4              # double 1.084473
	.quad	0x4014afeda6612839              # double 5.171805
	.quad	0x4020e6ce13f4a98b              # double 8.4507910000000006
	.quad	0x3fc024edf6124074              # double 0.12612699999999999
	.quad	0x4000220ddc619546              # double 2.0166279999999999
	.quad	0x400c75c4a83b1d0d              # double 3.5575040000000002
	.quad	0x40164b08dd1e53a8              # double 5.5732759999999999
	.quad	0x40214fc393682731              # double 8.6557890000000004
	.quad	0x402090055fbb517a              # double 8.2812909999999995
	.quad	0x400e65be1a826245              # double 3.7996789999999998
	.quad	0x4023e5887ebf22c0              # double 9.9483069999999997
	.quad	0x400d32bdc26dce3a              # double 3.6497760000000001
	.quad	0x4010e8954a7f8013              # double 4.2271320000000001
	.quad	0x4001bacb4289118c              # double 2.216208
	.quad	0x40236f398e970718              # double 9.7172359999999997
	.quad	0x4014478b7a1c25d0              # double 5.0698679999999996
	.quad	0x40092c5197a24895              # double 3.1466400000000001
	.quad	0x4021f35d031055b9              # double 8.9753190000000007
	.quad	0x400073c36113404f              # double 2.0565250000000002
	.quad	0x4021ac1df3300de5              # double 8.8361660000000004
	.quad	0x40027fa871a3b14b              # double 2.3123330000000002
	.quad	0x401cf3bea91d9b1b              # double 7.2380319999999996
	.quad	0x400d95dc4007570c              # double 3.6981739999999999
	.quad	0x3ff80b1cc9646280              # double 1.502713
	.quad	0x401dc1e14bdfd263              # double 7.4393359999999999
	.quad	0x40126bc59b8023a7              # double 4.6052460000000002
	.quad	0x40106ef9db22d0e5              # double 4.1083749999999997
	.quad	0x400415bab21815a0              # double 2.5106099999999998
	.quad	0x4021aa749f0e4da1              # double 8.8329210000000007
	.quad	0x40219d2dcb1465e9              # double 8.8069900000000008
	.quad	0x3ff7f111f0c34c1b              # double 1.4963550000000001
	.quad	0x401496fc58ab92c0              # double 5.1474469999999997
	.quad	0x40008b2d905c0336              # double 2.067958
	.quad	0x401331511dffc548              # double 4.7981610000000003
	.quad	0x4022ed610adcd2d4              # double 9.4636309999999994
	.quad	0x40176c12ad81adeb              # double 5.8555400000000004
	.quad	0x4010c5564b662fe0              # double 4.1927120000000002
	.quad	0x401aa44178705426              # double 6.660406
	.quad	0x3ff8c6290eed02cd              # double 1.5483789999999999
	.quad	0x402229b97353b4b3              # double 9.081493
	.quad	0x400f5cde5d18090b              # double 3.9203459999999999
	.quad	0x401dc09e12a51e32              # double 7.4381029999999999
	.quad	0x4016f7852f7f498c              # double 5.7417189999999998
	.quad	0x3fba01ffb480a5ad              # double 0.101593
	.quad	0x3fc8ed56b00ffda4              # double 0.194743
	.quad	0x4015c01083dbc233              # double 5.4375629999999999
	.quad	0x401f5c85c24c404a              # double 7.8403539999999996
	.quad	0x3ffb4da7f3cf7015              # double 1.7064589999999999
	.quad	0x4020be950fc71d60              # double 8.3722309999999993
	.quad	0x40186acfb762d83c              # double 6.1043079999999996
	.quad	0x40214775b8130165              # double 8.6395700000000009
	.quad	0x401661ab0856e697              # double 5.5953790000000003
	.quad	0x4020e2e21101b003              # double 8.4431309999999993
	.quad	0x4020f451dabe2718              # double 8.4771870000000007
	.quad	0x4003b000431bde83              # double 2.4609380000000001
	.quad	0x4020ddba6efc371e              # double 8.4330630000000006
	.quad	0x401bac8ffb8b2639              # double 6.9185179999999997
	.quad	0x3fb87b45f17bd8be              # double 0.095630999999999993
	.quad	0x401801d5c31593e6              # double 6.001792
	.quad	0x40195f7ad4b2745c              # double 6.343242
	.quad	0x40140083dbc23316              # double 5.0005030000000001
	.quad	0x40180b762d83c6c9              # double 6.0111929999999996
	.quad	0x3ffadac36544fe37              # double 1.678409
	.quad	0x40106f5d35653c9b              # double 4.1087540000000002
	.quad	0x401a8532a497fa5d              # double 6.6300759999999999
	.quad	0x3fecc067cf1c3266              # double 0.89848700000000004
	.quad	0x4018823dd54da4cf              # double 6.1271890000000004
	.quad	0x40219359bc33f855              # double 8.7877939999999999
	.quad	0x4009b1b71758e219              # double 3.2117749999999998
	.quad	0x3ff10aa8650e7792              # double 1.065102
	.quad	0x401481bb8c32a8ca              # double 5.1266920000000002
	.quad	0x4007a36f3b213e3e              # double 2.9548019999999999
	.quad	0x4020bcdf04ddb552              # double 8.3688889999999994
	.quad	0x3fe3b79d909f1f15              # double 0.61616400000000004
	.quad	0x401ed72862f5989e              # double 7.7101150000000001
	.quad	0x401ec473471f7942              # double 7.691846
	.quad	0x401cd2ef0ae53650              # double 7.2059899999999999
	.quad	0x401349d2391d5800              # double 4.8220910000000003
	.quad	0x3ff36f9db22d0e56              # double 1.21475
	.quad	0x4016580841ede11a              # double 5.5859690000000004
	.quad	0x401daf93bc0a06ea              # double 7.421462
	.quad	0x3fe8c7cb70ac3a86              # double 0.77438899999999999
	.quad	0x3ff6c9c2c1b10fd8              # double 1.424258
	.quad	0x4016832d6ece13f5              # double 5.6281030000000003
	.quad	0x401c92df9378ee28              # double 7.1434309999999996
	.quad	0x40218f4517614595              # double 8.7798239999999996
	.quad	0x40200317481b21c4              # double 8.0060369999999991
	.quad	0x40239afec56d5cfb              # double 9.8027250000000005
	.quad	0x4015c65492ff4ba5              # double 5.4436819999999999
	.quad	0x401dd4883fd50225              # double 7.4575509999999996
	.quad	0x3fec462e4d1a6506              # double 0.88356699999999999
	.quad	0x401c99b23dd54da5              # double 7.1500940000000002
	.quad	0x400c8321a2e7f6f5              # double 3.5640290000000001
	.quad	0x400c22cba732df50              # double 3.5169899999999998
	.quad	0x40229804d9839475              # double 9.2969120000000007
	.quad	0x40183e82949a5658              # double 6.061045
	.quad	0x3fb66e008e9b38d6              # double 0.087615999999999999
	.quad	0x402133ffcdab191e              # double 8.6015610000000002
	.quad	0x4007258eeae9ee46              # double 2.8933390000000001
	.quad	0x4005b413986338b4              # double 2.7129279999999998
	.quad	0x3fe07ab96f21f6cb              # double 0.51498100000000002
	.quad	0x4021bd5065732160              # double 8.8697540000000004
	.quad	0x400400b34e768598              # double 2.5003419999999998
	.quad	0x40118f266ba493c9              # double 4.3897950000000003
	.quad	0x400b7f809917939a              # double 3.4372569999999998
	.quad	0x40122dd6e04c0592              # double 4.5447649999999999
	.quad	0x401fe5d41fa76534              # double 7.9744419999999998
	.quad	0x40184572580c3090              # double 6.0678190000000001
	.quad	0x40232e392e1ef73c              # double 9.5902799999999999
	.quad	0x400a8b9a9da597d5              # double 3.3181660000000002
	.quad	0x400e65b39e279dd4              # double 3.7996590000000001
	.quad	0x3fe0b662fdfc19c1              # double 0.52226399999999995
	.quad	0x3ffc204189374bc7              # double 1.7578750000000001
	.quad	0x401cc63305100a39              # double 7.1935539999999998
	.quad	0x400bfc8216c61523              # double 3.4982950000000002
	.quad	0x401c4a99fa11a976              # double 7.0728530000000003
	.quad	0x40030ff4ba51a006              # double 2.3827910000000001
	.quad	0x4006102363b25700              # double 2.7578800000000001
	.quad	0x3fe44cbe1eb4202e              # double 0.63436800000000004
	.quad	0x400bdaffb04ee7c5              # double 3.4819330000000002
	.quad	0x40105368ad688377              # double 4.0814539999999999
	.quad	0x402353abead4f590              # double 9.6634209999999996
	.quad	0x40236d823422467c              # double 9.7138840000000001
	.quad	0x40123df37329c348              # double 4.5604990000000001
	.quad	0x4016eed02cd39da1              # double 5.7332159999999996
	.quad	0x4004d29b280f12c2              # double 2.6028349999999998
	.quad	0x3ff9b1ed17c5ef63              # double 1.605939
	.quad	0x40040032db1e9f27              # double 2.5000969999999998
	.quad	0x3fe76736049ecb32              # double 0.73134900000000003
	.quad	0x3fe335a20ddc6195              # double 0.60029699999999997
	.quad	0x4020e6db50f40e5a              # double 8.4508919999999996
	.quad	0x4008468b9fdbd2fa              # double 3.034446
	.quad	0x401acd451fc4c166              # double 6.7004590000000004
	.quad	0x3ff602d38476f2a6              # double 1.3756900000000001
	.quad	0x40233cbcf0b6b6e1              # double 9.6186290000000003
	.quad	0x401f29731098d478              # double 7.7904780000000002
	.quad	0x40036c3dab5c39bd              # double 2.4278520000000001
	.quad	0x4015a08637bd05af              # double 5.4067619999999996
	.quad	0x4017de6e653868fd              # double 5.9672179999999999
	.quad	0x3fdd80d801b43526              # double 0.46098899999999998
	.quad	0x3fe698def416bdb2              # double 0.70616100000000004
	.quad	0x400ad7e0ac7da1ec              # double 3.3554089999999999
	.quad	0x40054f4e874c8ffc              # double 2.6637240000000002
	.quad	0x4023a23c64345cff              # double 9.8168670000000002
	.quad	0x401137ecfe9b7bf2              # double 4.3046150000000001
	.quad	0x3fe16fb4c3c18b50              # double 0.54488599999999998
	.quad	0x4018be1d2178f68c              # double 6.1856580000000001
	.quad	0x40140b3e9a6f826f              # double 5.0109810000000001
	.quad	0x400b3e3193f6c26a              # double 3.4053680000000002
	.quad	0x4016db5781c714fd              # double 5.7142010000000001
	.quad	0x4023f758e219652c              # double 9.9831000000000003
	.quad	0x40202cd76ab58080              # double 8.0875810000000001
	.quad	0x401ca17b95a29414              # double 7.1576979999999999
	.quad	0x401d486876e1dead              # double 7.3207110000000002
	.quad	0x401c7be878fabda1              # double 7.1210040000000001
	.quad	0x3f7ff2e48e8a71de              # double 0.0077999999999999996
	.quad	0x3ffae3e8dda48b65              # double 1.680642
	.quad	0x40091ebc83a96d4c              # double 3.1400079999999999
	.quad	0x4019310342aa9f7b              # double 6.2978639999999997
	.quad	0x4015fa7ded6ba8c6              # double 5.4946210000000004
	.quad	0x40011eedcc20d563              # double 2.1401020000000002
	.quad	0x401a81d4738a3b58              # double 6.6267870000000002
	.quad	0x400f358969a0ad8a              # double 3.901141
	.quad	0x4005b214f0520d13              # double 2.711954
	.quad	0x400225a708ede54b              # double 2.2683849999999999
	.quad	0x400187b45f17bd8c              # double 2.191262
	.quad	0x401857aeddce7cd0              # double 6.0856279999999998
	.quad	0x4021419bd4067cf2              # double 8.6281420000000004
	.quad	0x3fe4135fc3b4f616              # double 0.62736499999999995
	.quad	0x4021b56ba8c58687              # double 8.8543369999999992
	.quad	0x401c731d2e0e3044              # double 7.1124159999999996
	.quad	0x4021d49a34ca0c28              # double 8.9152389999999997
	.quad	0x400c87d45a5fc7e7              # double 3.5663230000000001
	.quad	0x3ffecdd50a88effe              # double 1.925252
	.quad	0x40234aa4fca42aed              # double 9.6457899999999998
	.quad	0x4023e723033a4724              # double 9.9514390000000005
	.quad	0x400a79702e6644d8              # double 3.3092959999999998
	.quad	0x4006ab7564302b41              # double 2.83372
	.quad	0x40122e33eff19503              # double 4.5451199999999998
	.quad	0x3ff0fe22e5de15ca              # double 1.0620449999999999
	.quad	0x4015091a75cd0bb7              # double 5.2588900000000001
	.quad	0x3fe5af4cf4a558ea              # double 0.67764899999999995
	.quad	0x402286a098915bdd              # double 9.2629439999999992
	.quad	0x3fd55985ad538ac2              # double 0.33358900000000002
	.quad	0x401a46d7625204b0              # double 6.5691810000000004
	.quad	0x3fe4958b827fa1a1              # double 0.64325500000000002
	.quad	0x3fde3c792d1287c2              # double 0.472441
	.quad	0x4022658f0c77dd87              # double 9.1983569999999997
	.quad	0x401aa23422467be5              # double 6.6584019999999997
	.quad	0x40073fddebd9018e              # double 2.9061849999999998
	.quad	0x4017742fa5093965              # double 5.8634630000000003
	.quad	0x4009f0fcf80dc337              # double 3.2426699999999999
	.quad	0x400f40c4156e264e              # double 3.9066239999999999
	.quad	0x401362c625e99e95              # double 4.8464590000000003
	.quad	0x4013a64cf8d716d3              # double 4.9124030000000003
	.quad	0x3fc938151a437825              # double 0.197024
	.quad	0x4016e77d523b3637              # double 5.726064
	.quad	0x40208798b71b8aa0              # double 8.264837
	.quad	0x4018e2e275ab7dc8              # double 6.2215670000000003
	.quad	0x40126f1172ef0ae5              # double 4.6084649999999998
	.quad	0x40220130be0ded29              # double 9.0023250000000008
	.quad	0x401d45e6bc621b7e              # double 7.318263
	.quad	0x4022cc1aac53b081              # double 9.3986409999999995
	.quad	0x4021f2ac1094a2ba              # double 8.9739690000000003
	.quad	0x4020fe6bc621b7e1              # double 8.4969160000000006
	.quad	0x400b0535c9e6687f              # double 3.3775439999999999
	.quad	0x402396527a20578e              # double 9.7935979999999994
	.quad	0x3ff15eaee2003ab8              # double 1.0856159999999999
	.quad	0x4018877d955714ba              # double 6.1323150000000002
	.quad	0x3ffdfed20296b335              # double 1.8747119999999999
	.quad	0x3fc892c493426784              # double 0.19197900000000001
	.quad	0x40122d99cbee807c              # double 4.5445320000000002
	.quad	0x400fa8df37329c34              # double 3.9574569999999998
	.quad	0x3f94866a11ec918e              # double 0.020043999999999999
	.quad	0x40122ccc46950fc7              # double 4.5437479999999999
	.quad	0x3fddcec41dd1a21f              # double 0.46574500000000002
	.quad	0x4019e8cac4b4d057              # double 6.4773360000000002
	.quad	0x3fd919b4dcebfec1              # double 0.39219399999999999
	.quad	0x400e13eb399f5dff              # double 3.7597260000000001
	.quad	0x401b39abb01c92de              # double 6.8063190000000002
	.quad	0x3ff0b021d10b1fef              # double 1.0430010000000001
	.quad	0x402106d17c5ef630              # double 8.5133170000000007
	.quad	0x4023cece789e774f              # double 9.9039190000000001
	.quad	0x4000c7075b3e1438              # double 2.0971820000000001
	.quad	0x400aa76af89c5e70              # double 3.331747
	.quad	0x4018ace63a5c1c61              # double 6.1688470000000004
	.quad	0x4001c9bf9c62a1b6              # double 2.2235100000000001
	.quad	0x40107628027d88c2              # double 4.1153870000000001
	.quad	0x40204bb107746888              # double 8.1478350000000006
	.quad	0x401c996c82e019b1              # double 7.1498280000000003
	.quad	0x40081103c8e25c81              # double 3.008308
	.quad	0x400f1bccaf709b74              # double 3.8885740000000002
	.quad	0x40200c0aaeafab54              # double 8.0235190000000002
	.quad	0x400bcd1526d8b1dd              # double 3.4751379999999998
	.quad	0x4013d4c3c18b502b              # double 4.9577780000000002
	.quad	0x40156e57d9dba909              # double 5.3577570000000003
	.quad	0x401e00d2806af46b              # double 7.5008030000000003
	.quad	0x401e6e15011904b4              # double 7.6075020000000002
	.quad	0x4000436b09635611              # double 2.0329190000000001
	.quad	0x402135668c261390              # double 8.604298
	.quad	0x401577d9dba908a2              # double 5.3670419999999996
	.quad	0x401b3e279dd3bafe              # double 6.8106980000000004
	.quad	0x40144b17ce52deca              # double 5.0733329999999999
	.quad	0x40102bd6e8af8162              # double 4.0428119999999996
	.quad	0x4019182517e77d52              # double 6.2735789999999998
	.quad	0x3fec085f4a1272c9              # double 0.87602199999999997
	.quad	0x402324aea747d806              # double 9.5716450000000002
	.quad	0x40213365ecc3e319              # double 8.6003869999999996
	.quad	0x401105ef62f9ca5c              # double 4.2557960000000001
	.quad	0x40081601797cc3a0              # double 3.010745
	.quad	0x401f945dc8323359              # double 7.894889
	.quad	0x4019b83d35eb7458              # double 6.4299210000000002
	.quad	0x401cf6d698fe6927              # double 7.241053
	.quad	0x3fe7919695d91ab9              # double 0.73652200000000001
	.quad	0x401258c0053e2d62              # double 4.5866699999999998
	.quad	0x3ff93c5ac471b478              # double 1.5772349999999999
	.quad	0x401882a9d627bf62              # double 6.1276010000000003
	.quad	0x40190616b54e2b06              # double 6.2559459999999998
	.quad	0x400a3eab367a0f91              # double 3.2806000000000002
	.quad	0x4005b34ce3de614a              # double 2.7125490000000001
	.quad	0x401a718a009f6230              # double 6.6108779999999996
	.quad	0x4015ce69f05ea24d              # double 5.4515760000000002
	.quad	0x4021e8192a737111              # double 8.9533170000000002
	.quad	0x4015e674080f98fa              # double 5.4750519999999998
	.quad	0x40206219220ff541              # double 8.1915980000000008
	.quad	0x401a894ea077036d              # double 6.6340890000000003
	.quad	0x40217f4299d883ba              # double 8.7485549999999996
	.quad	0x3ffc1fb71fbc5dea              # double 1.7577430000000001
	.quad	0x400cf199bb2788db              # double 3.617969
	.quad	0x3fdaa7503b81b64e              # double 0.416462
	.quad	0x3fe594e3bcd35a86              # double 0.67442500000000005
	.quad	0x40158a2b1704ff43              # double 5.3849299999999998
	.quad	0x401a036d22424a27              # double 6.5033459999999996
	.quad	0x402316a7ac81d3aa              # double 9.5442479999999996
	.quad	0x401a6b2314013ec4              # double 6.6046259999999997
	.quad	0x40196cc70867ad8e              # double 6.3562279999999998
	.quad	0x40146de6ddf00abf              # double 5.1073259999999996
	.quad	0x401886c82e019b0b              # double 6.1316230000000003
	.quad	0x4003acf6be37de94              # double 2.4594550000000002
	.quad	0x3fefe0a41a261bf3              # double 0.99617199999999994
	.quad	0x401886e008e9b38d              # double 6.1317139999999997
	.quad	0x3ff2085b18548a9c              # double 1.12704
	.quad	0x401fdbafd976ff3b              # double 7.9645380000000001
	.quad	0x3ff46d234eb9a177              # double 1.276645
	.quad	0x40204fc32ebe596d              # double 8.1557860000000009
	.quad	0x3ff82d6ba8c58687              # double 1.5110889999999999
	.quad	0x3ffe18383ad9f0a2              # double 1.8809130000000001
	.quad	0x400f85cdd50a88f0              # double 3.940334
	.quad	0x3ff17f993d5347a6              # double 1.0936520000000001
	.quad	0x3fd8c7a7c9de0503              # double 0.38718599999999997
	.quad	0x4020d82f2f987400              # double 8.4222350000000006
	.quad	0x400d00f98fa37692              # double 3.6254759999999999
	.quad	0x3fe310c4dec1c1d7              # double 0.59579700000000002
	.quad	0x40023c2b94d94079              # double 2.2793800000000002
	.quad	0x40102e5eaab04253              # double 4.0452830000000004
	.quad	0x4020305dd8f92afa              # double 8.0944660000000006
	.quad	0x40187b295e9e1b09              # double 6.1202750000000004
	.quad	0x401f00d130df9bdc              # double 7.7507979999999996
	.quad	0x40179bf61aa3f035              # double 5.9023060000000003
	.quad	0x401d8d1d041cc533              # double 7.3878060000000003
	.quad	0x400bf5f676ea4229              # double 3.4950990000000002
	.quad	0x400d4cbc8c0ce91d              # double 3.6624690000000002
	.quad	0x400a6914b167ec78              # double 3.3013089999999998
	.quad	0x401add9e83e425af              # double 6.7164250000000001
	.quad	0x3fe364217d2849cb              # double 0.60597299999999998
	.quad	0x401eac810a569b17              # double 7.6684609999999997
	.quad	0x401e0983d790752e              # double 7.5092920000000003
	.quad	0x40205dc5931ca7d6              # double 8.1831479999999992
	.quad	0x4021cedc3bd59924              # double 8.9040239999999997
	.quad	0x4010155821294574              # double 4.0208440000000003
	.quad	0x40208e3864cb5bb4              # double 8.2777740000000008
	.quad	0x3fbcfd199bb2788e              # double 0.113237
	.quad	0x401b6d0aed99cbef              # double 6.8564870000000004
	.quad	0x4018c64bec679cc7              # double 6.1936489999999997
	.quad	0x4022ba5c3dee7818              # double 9.3639849999999995
	.quad	0x400aa3fdd65a1449              # double 3.3300740000000002
	.quad	0x4001a764adff822c              # double 2.2067350000000001
	.quad	0x401732b1704ff434              # double 5.7995049999999999
	.quad	0x401feb5cbff47736              # double 7.9798460000000002
	.quad	0x3ff3174927913e81              # double 1.1931849999999999
	.quad	0x401d4ca686e7e62e              # double 7.3248540000000002
	.quad	0x400092684cf0739b              # double 2.071488
	.quad	0x400e39d12cadddf4              # double 3.7782309999999999
	.quad	0x40220706705c896e              # double 9.0137210000000003
	.quad	0x4020e380a9de8b3b              # double 8.4443409999999997
	.quad	0x3ff83d790752da98              # double 1.5150079999999999
	.quad	0x4010c284167a95c8              # double 4.1899569999999997
	.quad	0x401eb8826aa8eb46              # double 7.6801849999999998
	.quad	0x40239d7518b0d0ee              # double 9.8075340000000004
	.quad	0x4022b4dad31fcd25              # double 9.3532320000000002
	.quad	0x401b07da1ec4e725              # double 6.7576679999999998
	.quad	0x4007cee84ad794a7              # double 2.976029
	.quad	0x3fe14ca2db61bb06              # double 0.540605
	.quad	0x4000fbefd00713f0              # double 2.1230159999999998
	.quad	0x40108fd60e94ee39              # double 4.1404649999999998
	.quad	0x400d9df2a9d627bf              # double 3.7021229999999998
	.quad	0x4003f05319828805              # double 2.492346
	.quad	0x3ff253c148344c38              # double 1.145448
	.quad	0x400fff644955b467              # double 3.9997029999999998
	.quad	0x40134cd4aa10e022              # double 4.8250299999999999
	.quad	0x401970268900c522              # double 6.3595220000000001
	.quad	0x4020cb3b7521144d              # double 8.3969380000000005
	.quad	0x3ff106bf01322f27              # double 1.064147
	.quad	0x401be0acc0bdcad1              # double 6.9694089999999997
	.quad	0x40228913c68661ae              # double 9.2677289999999992
	.quad	0x3fe20b178b370047              # double 0.56385399999999997
	.quad	0x4014ce8ccdd93c47              # double 5.2017090000000001
	.quad	0x4000a216c61522a7              # double 2.079145
	.quad	0x40126c729f59ccfb              # double 4.6059060000000001
	.quad	0x401e8282c6ef3d3a              # double 7.6274519999999999
	.quad	0x4020411cd1c7de51              # double 8.1271730000000009
	.quad	0x400c22b94d940789              # double 3.5169549999999998
	.quad	0x400ff604189374bc              # double 3.9951249999999998
	.quad	0x40123084a515ce9e              # double 4.5473809999999997
	.quad	0x4023c6d2aa5c5f7c              # double 9.8883259999999992
	.quad	0x400960dcb9a9da59              # double 3.1722959999999998
	.quad	0x40116a56de33269e              # double 4.353847
	.quad	0x4023a96c1e364bec              # double 9.8309029999999992
	.quad	0x3ff149c7ffde7211              # double 1.0805130000000001
	.quad	0x4023052d44dca8e3              # double 9.5101110000000002
	.quad	0x4012808cc575c076              # double 4.6255369999999996
	.quad	0x400675e6bc621b7e              # double 2.807569
	.quad	0x3ffbc095f2452c5a              # double 1.734518
	.quad	0x4021e27d24180d3d              # double 8.942361
	.quad	0x40223a5204af9229              # double 9.1139069999999993
	.quad	0x40237d5629d8409e              # double 9.7447979999999994
	.quad	0x40137993d5347a5b              # double 4.8687279999999999
	.quad	0x4012b9fcb0c026cc              # double 4.6816279999999999
	.quad	0x3fdac044284dfce3              # double 0.417985
	.quad	0x401db0b5ed8d36b5              # double 7.4225690000000002
	.quad	0x3ff3dc64ba94bbe4              # double 1.2413069999999999
	.quad	0x3fecb2074ea8da7f              # double 0.89673199999999997
	.quad	0x401f14a05dd8f92b              # double 7.770143
	.quad	0x40227c97d8cf398f              # double 9.2433460000000007
	.quad	0x3ff7ebacf7446f9c              # double 1.4950380000000001
	.quad	0x40098ccff21b3aef              # double 3.193756
	.quad	0x4001d8e9f6a93f29              # double 2.230915
	.quad	0x401126a5d6bebe16              # double 4.2877419999999997
	.quad	0x401bd0f55de58e65              # double 6.9540610000000003
	.quad	0x4001b1b2e59af9ec              # double 2.211767
	.quad	0x400ba295a6c5d207              # double 3.4543870000000001
	.quad	0x401e0107746887a9              # double 7.5010050000000001
	.quad	0x4000536b4c7f3494              # double 2.0407320000000002
	.quad	0x4010749c6f36ef80              # double 4.1138779999999997
	.quad	0x402200ae31d712a1              # double 9.0013290000000001
	.quad	0x4010d8a116659d13              # double 4.2115520000000002
	.quad	0x3ff415f02c4d65e4              # double 1.2553559999999999
	.quad	0x40043f0025bfad2a              # double 2.5307620000000002
	.quad	0x40033dbc23315d70              # double 2.4051439999999999
	.quad	0x4010aa3ca7503b82              # double 4.1662470000000003
	.quad	0x40216fe0ce0b912e              # double 8.7185120000000005
	.quad	0x401b1cc857f3061c              # double 6.7781079999999996
	.quad	0x4020e2e2da554b8c              # double 8.4431370000000001
	.quad	0x40124235f8099179              # double 4.5646589999999998
	.quad	0x402183d102bc72e2              # double 8.7574539999999992
	.quad	0x3fdc5d28d002e233              # double 0.44318600000000002
	.quad	0x401c9a22706d5065              # double 7.1505219999999996
	.quad	0x401e401de2691644              # double 7.5626139999999999
	.quad	0x402230ef99806f26              # double 9.0955779999999997
	.quad	0x4022c3ea4ebdd335              # double 9.3826470000000004
	.quad	0x401bc47e06961c37              # double 6.9418870000000004
	.quad	0x400b88711d798d8b              # double 3.4416220000000002
	.quad	0x4018dc6cdaf4adbc              # double 6.2152589999999996
	.quad	0x3ff899e731d2e0e3              # double 1.537574
	.quad	0x40204515f02c4d66              # double 8.1349330000000002
	.quad	0x400ab91eeaa6d267              # double 3.3403909999999999
	.quad	0x3ff29bf487fcb924              # double 1.1630750000000001
	.quad	0x4016a252ce032db2              # double 5.6585190000000001
	.quad	0x4012edf82b1f687b              # double 4.7323919999999999
	.quad	0x3fe2d2135daad602              # double 0.588144
	.quad	0x4002e3e8dda48b65              # double 2.3612839999999999
	.quad	0x40228abb8800eae2              # double 9.2709620000000008
	.quad	0x4013c1d3671ac14c              # double 4.9392829999999996
	.quad	0x4013e8950763a190              # double 4.977131
	.quad	0x4016e4894c447c31              # double 5.7231800000000002
	.quad	0x4021e09ce4a7b4e5              # double 8.9386969999999994
	.quad	0x400cb290257c914b              # double 3.587189
	.quad	0x3ff0c17b95a29414              # double 1.047237
	.quad	0x40103af9a8cdea03              # double 4.0575929999999998
	.quad	0x401272391d57ff9b              # double 4.6115459999999997
	.quad	0x4011bd69d30270f4              # double 4.4349740000000004
	.quad	0x3ff8d3c792d1287c              # double 1.551704
	.quad	0x4014fa73b42cc2d7              # double 5.2445820000000003
	.quad	0x402141e01de26916              # double 8.6286629999999995
	.quad	0x401e50ef1348b220              # double 7.5790369999999996
	.quad	0x3fffd32c625e99e9              # double 1.9890559999999999
	.quad	0x4018a4185058dde8              # double 6.1602490000000003
	.quad	0x401b67952d234eba              # double 6.8511550000000003
	.quad	0x401e19ef954eb13e              # double 7.525328
	.quad	0x401352eb1c432ca5              # double 4.8309749999999996
	.quad	0x4019588509bf9c63              # double 6.3364450000000003
	.quad	0x401bc4b8bef8ceb3              # double 6.9421109999999997
	.quad	0x3fde8a82a5614df9              # double 0.47720400000000002
	.quad	0x3ff187b890d5a5b9              # double 1.0956349999999999
	.quad	0x4010001eeed8904f              # double 4.0001179999999996
	.quad	0x3ff93765fd8adaba              # double 1.576025
	.quad	0x40229783382e44b7              # double 9.2959230000000002
	.quad	0x401ca088d6d3b6cc              # double 7.1567720000000001
	.quad	0x400226c4c5974e66              # double 2.2689300000000001
	.quad	0x4002430014f8b589              # double 2.282715
	.quad	0x40145d7a99fa11a9              # double 5.0912879999999996
	.quad	0x401c6faeff5c6c12              # double 7.1090660000000003
	.quad	0x40003d8383ad9f0a              # double 2.030036
	.quad	0x401506ebd4cfd08d              # double 5.2567589999999997
	.quad	0x3fb9a98676a7264a              # double 0.100243
	.quad	0x401af19934efcbd5              # double 6.7359359999999997
	.quad	0x401411b2a27f1b69              # double 5.0172829999999999
	.quad	0x3ffb61a0cf1800a8              # double 1.7113350000000001
	.quad	0x401b7c49774256bd              # double 6.8713740000000003
	.quad	0x3ff27708aac96cc6              # double 1.154061
	.quad	0x40036fe0ce0b912e              # double 2.4296280000000001
	.quad	0x4018b3cc8de2ac32              # double 6.1755849999999999
	.quad	0x3ff8dbff04577d95              # double 1.5537099999999999
	.quad	0x401b326d04e618ce              # double 6.7992439999999998
	.quad	0x4011e4e831ad2136              # double 4.4735420000000001
	.quad	0x4020df90fb65668c              # double 8.4366529999999997
	.quad	0x401c126b2f23033a              # double 7.0179869999999998
	.quad	0x40203c68ec52a412              # double 8.1179880000000004
	.quad	0x3fefa3486f049a99              # double 0.98868199999999994
	.quad	0x3ff81769a91105e2              # double 1.5057160000000001
	.quad	0x40125e8f29d40ee0              # double 4.5923429999999996
	.quad	0x400eec8abd5dc400              # double 3.8654989999999998
	.quad	0x400a653eb399f5e0              # double 3.299436
	.quad	0x401cbb2e1693c03c              # double 7.1827930000000002
	.quad	0x3fda20c8cd63cb81              # double 0.40825099999999998
	.quad	0x3fe96e503fb37436              # double 0.79471599999999998
	.quad	0x400afe39f77292c5              # double 3.3741340000000002
	.quad	0x3ff2c16bdb1a6d6a              # double 1.1722220000000001
	.quad	0x3ff84e48626f60e1              # double 1.519112
	.quad	0x401f82799a1fd157              # double 7.8774170000000003
	.quad	0x401c05b35b0bbf51              # double 7.0055670000000001
	.quad	0x3ff6f21b3aeee957              # double 1.4341079999999999
	.quad	0x40213f694467381d              # double 8.6238499999999991
	.quad	0x4001c160d887ebf2              # double 2.2194229999999999
	.quad	0x3ff5a03d57796399              # double 1.351621
	.quad	0x4014afa7a85015c2              # double 5.171538
	.quad	0x40197c1615ebfa8f              # double 6.3711779999999996
	.quad	0x3fff7ec13b9f127f              # double 1.9684459999999999
	.quad	0x4006a709fa54c554              # double 2.8315619999999999
	.quad	0x40114ebedfa43fe6              # double 4.3269000000000002
	.quad	0x40068f837b4a233a              # double 2.8200750000000001
	.quad	0x4021cc26dce39b45              # double 8.8987339999999993
	.quad	0x400f2e3de6149c6f              # double 3.8975789999999999
	.quad	0x401bd9ce8d972cd8              # double 6.9627020000000002
	.quad	0x3fe40fabda0dfdf0              # double 0.62691300000000005
	.quad	0x401ee82f944241c4              # double 7.7267440000000001
	.quad	0x3ff7564d7f0ed3d8              # double 1.4585699999999999
	.quad	0x3fdce9813879c411              # double 0.45175199999999999
	.quad	0x401f785c67dfe32a              # double 7.86754
	.quad	0x401bc350092ccf6c              # double 6.9407350000000001
	.quad	0x3fff21511dffc548              # double 1.9456340000000001
	.quad	0x401df16b11c6d1e1              # double 7.4857599999999999
	.quad	0x4020ed22ea0fd3b3              # double 8.4631570000000007
	.quad	0x4007161e4f765fd9              # double 2.8858000000000001
	.quad	0x4021a2174c4cdfad              # double 8.8165840000000006
	.quad	0x4020177c243dccea              # double 8.0458689999999997
	.quad	0x4010a7075b3e1438              # double 4.1631140000000002
	.quad	0x4020f1aef6f8f041              # double 8.4720379999999995
	.quad	0x4021bf16b11c6d1e              # double 8.8732199999999999
	.quad	0x3ff3ae978d4fdf3b              # double 1.2301249999999999
	.quad	0x3fe9d25892684cf0              # double 0.80692699999999995
	.quad	0x401e69b3d07c84b6              # double 7.6032250000000001
	.quad	0x401cf3150dae3e6c              # double 7.2373849999999997
	.quad	0x4001624031487768              # double 2.172974
	.quad	0x40020e2e2b8c75c5              # double 2.2569240000000002
	.quad	0x3fe1d2da98676a72              # double 0.55698899999999996
	.quad	0x4022dfe3f359ff50              # double 9.4372860000000003
	.quad	0x3fbbf1d81f106680              # double 0.10915900000000001
	.quad	0x400ac12839042d8c              # double 3.3443149999999999
	.quad	0x3ff85fe86833c600              # double 1.523415
	.quad	0x4000329d40ee06d9              # double 2.0247139999999999
	.quad	0x400c7980f55de58e              # double 3.5593279999999998
	.quad	0x40149ffb8b263950              # double 5.1562330000000003
	.quad	0x4015efbdad7518b1              # double 5.4841220000000002
	.quad	0x4017845baf533f42              # double 5.8792559999999998
	.quad	0x40211f68be2f7b18              # double 8.5613460000000003
	.quad	0x400586d71f36262d              # double 2.6908400000000001
	.quad	0x4013480b242070b9              # double 4.8203550000000002
	.quad	0x3fda7d1351159c49              # double 0.41388399999999997
	.quad	0x401f1830e3cd9a52              # double 7.7736239999999999
	.quad	0x3fa424a276b7ed42              # double 0.039342000000000002
	.quad	0x40149c8ffb8b2639              # double 5.1528929999999997
	.quad	0x4019dddb5525cc42              # double 6.4666569999999997
	.quad	0x40207ace4649906d              # double 8.2398550000000004
	.quad	0x4005d595feda6613              # double 2.7292900000000002
	.quad	0x4018da8fc0d2c387              # double 6.2134390000000002
	.quad	0x401eb45e0b4e11dc              # double 7.6761400000000002
	.quad	0x401809652bd3c361              # double 6.0091749999999999
	.quad	0x3fe2d2391d57ff9b              # double 0.58816199999999996
	.quad	0x401a207e175d13d7              # double 6.5317309999999997
	.quad	0x4022d9f623076c05              # double 9.4257059999999999
	.quad	0x401325f5ad96a6a0              # double 4.7870699999999999
	.quad	0x40133700474d9c6b              # double 4.803712
	.quad	0x3ff4c6e5cd4ed2cc              # double 1.298559
	.quad	0x400ffaae6c8f7553              # double 3.9974029999999998
	.quad	0x400f8f566490a351              # double 3.9449890000000001
	.quad	0x40233fc8b0079a28              # double 9.6245779999999996
	.quad	0x40226e145953586d              # double 9.2149990000000006
	.quad	0x4001aea077036c9c              # double 2.210267
	.quad	0x4021e8bd87b56b87              # double 8.9545709999999996
	.quad	0x400bead0c3d25248              # double 3.4896560000000001
	.quad	0x4019c2085b18548b              # double 6.4394850000000003
	.quad	0x4017207c4199fe43              # double 5.7817239999999996
	.quad	0x4016895a6c5d206d              # double 5.6341340000000004
	.quad	0x3ff28583621fafc9              # double 1.1575960000000001
	.quad	0x401ea09d8c6d612c              # double 7.6568509999999996
	.quad	0x4017e460ed80a17b              # double 5.9730259999999999
	.quad	0x4011cb430f49491f              # double 4.4484979999999998
	.quad	0x4021f34efcbd5561              # double 8.9752120000000009
	.quad	0x40189ee9dd7ecbb8              # double 6.155189
	.quad	0x4020a1294573a798              # double 8.3147680000000008
	.quad	0x402263ab862b27cc              # double 9.194668
	.quad	0x401debf3bea91d9b              # double 7.4804219999999999
	.quad	0x4020e6573215fcc2              # double 8.4498840000000008
	.quad	0x401d2ea6c1a048e0              # double 7.2955579999999998
	.quad	0x400c53a2df9378ee              # double 3.5408379999999999
	.quad	0x4021555c31593e60              # double 8.6667190000000005
	.quad	0x401b898958d9b5e9              # double 6.8843129999999997
	.quad	0x3fd7edf612407464              # double 0.37389899999999998
	.quad	0x3ff2944241c3efae              # double 1.1611959999999999
	.quad	0x40171000431bde83              # double 5.7656260000000001
	.quad	0x3ffad6a161e4f766              # double 1.6774
	.quad	0x401ce5aa2e3c536d              # double 7.2242819999999996
	.quad	0x4002732ce89656ef              # double 2.306238
	.quad	0x401839ad85dfa872              # double 6.0563260000000003
	.quad	0x3f85d0b73d188f43              # double 0.010652
	.quad	0x400d04c6a3bddfca              # double 3.627332
	.quad	0x3ffa6d44dca8e2e3              # double 1.6516770000000001
	.quad	0x4023722424a276b8              # double 9.7229320000000001
	.quad	0x401db25edd052935              # double 7.4241900000000003
	.quad	0x4021a87c6327ed85              # double 8.8290740000000003
	.quad	0x401e2ef77f27fe4c              # double 7.5458660000000002
	.quad	0x4023012b7fe08af0              # double 9.5022850000000005
	.quad	0x4011f64adff822bc              # double 4.4905200000000001
	.quad	0x4022a6088d6d3b6d              # double 9.3242840000000005
	.quad	0x401c5faf42784a94              # double 7.0934419999999996
	.quad	0x4018c58a76102795              # double 6.1929109999999996
	.quad	0x400840f5e41d4b6a              # double 3.0317189999999998
	.quad	0x40196078d92fb19e              # double 6.3442109999999996
	.quad	0x4022030489d27c39              # double 9.0058939999999996
	.quad	0x40138a250f840182              # double 4.8849070000000001
	.quad	0x40121c054ef459da              # double 4.5273640000000004
	.quad	0x3fe4b71da37ef5a9              # double 0.64735299999999996
	.quad	0x4015c372a38b8ae3              # double 5.4408669999999999
	.quad	0x3fa32b12d3415b14              # double 0.037437999999999999
	.quad	0x401319abb01c92de              # double 4.7750690000000002
	.quad	0x3fd3b1a2a4db163c              # double 0.30771700000000002
	.quad	0x4000db01c92ddbdb              # double 2.1069369999999998
	.quad	0x401ec7b352a84381              # double 7.6950200000000004
	.quad	0x4021314898f605ab              # double 8.5962569999999996
	.quad	0x400bef398e970718              # double 3.4918089999999999
	.quad	0x401d450a02b84125              # double 7.3174210000000004
	.quad	0x4021e7041461b6d4              # double 8.9512029999999995
	.quad	0x401cf8676a7264a1              # double 7.2425819999999996
	.quad	0x400fde2ac3222920              # double 3.9834800000000001
	.quad	0x3fe089613d31b9b6              # double 0.51676999999999995
	.quad	0x4023364649906cca              # double 9.6060049999999997
	.quad	0x4014a1dffc5479d5              # double 5.1580810000000001
	.quad	0x400c2b72c5197a25              # double 3.5212150000000002
	.quad	0x40130c91d14e3bcd              # double 4.7622749999999998
	.quad	0x3ff36d245b291b82              # double 1.2141459999999999
	.quad	0x4019bdcad14a0a0f              # double 6.4353439999999997
	.quad	0x401619c99285a922              # double 5.5251830000000002
	.quad	0x4003f680e0653006              # double 2.4953630000000002
	.quad	0x40236e703afb7e91              # double 9.7157
	.quad	0x4023cda35d67ba23              # double 9.9016369999999991
	.quad	0x4016287db2b34613              # double 5.539542
	.quad	0x400a3879c4113c68              # double 3.2775759999999998
	.quad	0x40154c4d65e46067              # double 5.3245139999999997
	.quad	0x3fcccba732df505d              # double 0.224965
	.quad	0x400a305100a393ee              # double 3.2735919999999998
	.quad	0x401726501e2584f5              # double 5.7874150000000002
	.quad	0x4021db267c6b8b69              # double 8.9280279999999994
	.quad	0x401e31187e7c06e2              # double 7.5479450000000003
	.quad	0x400784ece9a2c669              # double 2.939905
	.quad	0x4022f420f6f08cc5              # double 9.4768139999999991
	.quad	0x40163467381d7dbf              # double 5.5511749999999997
	.quad	0x4013346801711948              # double 4.8011780000000002
	.quad	0x3ffbc873365881a1              # double 1.7364379999999999
	.quad	0x40102ea5b530ced5              # double 4.0455540000000001
	.quad	0x3ffea7381d7dbf48              # double 1.9158249999999999
	.quad	0x4019bf42784a9479              # double 6.4367770000000002
	.quad	0x4023c8ec74320104              # double 9.8924289999999999
	.quad	0x3fd7f0c77dd872f3              # double 0.37407099999999999
	.quad	0x4019686a098915be              # double 6.3519670000000001
	.quad	0x40218788333fc86d              # double 8.7647110000000001
	.quad	0x4012c84230fcf80e              # double 4.6955650000000002
	.quad	0x4012cdff3f0fe048              # double 4.7011690000000002
	.quad	0x401cb5b9628cbd12              # double 7.1774649999999998
	.quad	0x4022af6dfc5cdd51              # double 9.3426360000000006
	.quad	0x3fe31bfdf7e8038a              # double 0.597167
	.quad	0x400540cae642bf98              # double 2.6566369999999999
	.quad	0x40161dbcec84f8f9              # double 5.5290410000000003
	.quad	0x4022f3dd11be6e65              # double 9.4762959999999996
	.quad	0x4011a0f98fa37692              # double 4.4072019999999998
	.quad	0x400e62c55c96030c              # double 3.7982279999999999
	.quad	0x400d7eb9e492bc30              # double 3.6868780000000001
	.quad	0x40221658a32f4491              # double 9.0436449999999997
	.quad	0x4014cf5ad96a6a01              # double 5.2024949999999999
	.quad	0x4018f7a20578e5c5              # double 6.2418290000000001
	.quad	0x40183eb52c9d16fd              # double 6.0612380000000003
	.quad	0x402002493c89f40a              # double 8.0044649999999997
	.quad	0x3fecc8ecd8dbcec8              # double 0.89952699999999997
	.quad	0x40187e53eb399f5e              # double 6.123367
	.quad	0x3fd36e86c6583e85              # double 0.30362099999999997
	.quad	0x3fda291b823c85c2              # double 0.40875899999999998
	.quad	0x400ff7cbb3c81909              # double 3.995994
	.quad	0x4011363a9f383f0c              # double 4.3029580000000003
	.quad	0x40237492ff4ba51a              # double 9.727684
	.quad	0x3fdbc725c3dee782              # double 0.43403000000000003
	.quad	0x4016bbf487fcb924              # double 5.6835500000000003
	.quad	0x3fff5096bb98c7e3              # double 1.9571750000000001
	.quad	0x400aed7d7c2ca149              # double 3.3659620000000001
	.quad	0x4001686833c6002a              # double 2.17598
	.quad	0x401aed6f112fd32c              # double 6.7318689999999997
	.quad	0x4021b08df37329c3              # double 8.8448329999999995
	.quad	0x401d386d2ed783e0              # double 7.305104
	.quad	0x4018aeca25529fe0              # double 6.170693
	.quad	0x3fe56e02a77a2ced              # double 0.66967900000000002
	.quad	0x401753c36113404f              # double 5.8318000000000003
	.quad	0x4010575afaf85943              # double 4.0853080000000004
	.quad	0x3fe4d2391d57ff9b              # double 0.65066199999999996
	.quad	0x3ff926559f6ec5b0              # double 1.5718589999999999
	.quad	0x4020ecedf6124074              # double 8.4627529999999993
	.quad	0x3fda1083dbc23316              # double 0.40725800000000001
	.quad	0x401e2ce13f4a98ab              # double 7.5438280000000004
	.quad	0x4022f0fa15db3398              # double 9.4706580000000002
	.quad	0x4011b381d7dbf488              # double 4.4253
	.quad	0x400aa1deacc92147              # double 3.3290380000000002
	.quad	0x401d0b2e9ccb7d41              # double 7.2609199999999996
	.quad	0x3ff37bf2f5558213              # double 1.2177610000000001
	.quad	0x40174cd530489d28              # double 5.8250320000000002
	.quad	0x40026e054690de09              # double 2.3037209999999999
	.quad	0x401dcbf65dbfceb8              # double 7.4491820000000004
	.quad	0x40050cb20fb224ab              # double 2.6311990000000001
	.quad	0x4022ccab606b7aa2              # double 9.3997449999999994
	.quad	0x401dc401c4fc1df3              # double 7.4414129999999998
	.quad	0x400810e8858ff759              # double 3.0082559999999998
	.quad	0x401e9c47a17f4129              # double 7.6526170000000002
	.quad	0x3fcb73d188f42fe8              # double 0.214472
	.quad	0x4023e1d8c6d612c7              # double 9.9411070000000005
	.quad	0x400ad4d1e96c3fc4              # double 3.3539159999999999
	.quad	0x401089e30014f8b6              # double 4.1346550000000004
	.quad	0x40139ccff21b3aef              # double 4.9031370000000001
	.quad	0x40058fbca1059ea5              # double 2.6951839999999998
	.quad	0x3fe4b21c475e6363              # double 0.64674200000000004
	.quad	0x4017e91c8eabffce              # double 5.9776480000000003
	.quad	0x400a146fdeb52c9d              # double 3.259979
	.quad	0x3f8ee2c98e53eb3a              # double 0.015081000000000001
	.quad	0x40111b76b3bb83cf              # double 4.2768199999999998
	.quad	0x40112858ff759685              # double 4.2894019999999999
	.quad	0x40117c0db2702a35              # double 4.3711460000000004
	.quad	0x401e55c9e6687f45              # double 7.5837779999999996
	.quad	0x401ee4651f3e89a9              # double 7.7230420000000004
	.quad	0x402106685db76b3c              # double 8.5125150000000004
	.quad	0x402294382a12f901              # double 9.2894909999999999
	.quad	0x4014246b69db65ed              # double 5.0355660000000002
	.quad	0x401881ad2135daad              # double 6.1266369999999997
	.quad	0x4015055da272862f              # double 5.2552399999999997
	.quad	0x4011f744b2b777d1              # double 4.491473
	.quad	0x40175328f9f44d44              # double 5.8312109999999997
	.quad	0x401f3b08dd1e53a8              # double 7.8076509999999998
	.quad	0x4013b5aab4741073              # double 4.9274089999999999
	.quad	0x3ff06f4f0d844d01              # double 1.0271749999999999
	.quad	0x401b1aca36199781              # double 6.7761620000000002
	.quad	0x3ff4aea63b688bdb              # double 1.2926390000000001
	.quad	0x40121b57c4e2f380              # double 4.5267020000000002
	.quad	0x400e2634117f8445              # double 3.7686540000000002
	.quad	0x400190c34c1a8ac6              # double 2.1956850000000001
	.quad	0x401bb996b76709fa              # double 6.9312389999999997
	.quad	0x401c82339c0ebee0              # double 7.1271500000000003
	.quad	0x40082eed02cd39da              # double 3.022913
	.quad	0x4002ca86d71f3626              # double 2.3488899999999999
	.quad	0x401a18cd20afa2f0              # double 6.5242199999999997
	.quad	0x4023f36d00b45ae6              # double 9.975441
	.quad	0x40072c343b70ef56              # double 2.8965839999999998
	.quad	0x401819e4d5d80e49              # double 6.0252869999999996
	.quad	0x401b54d5d80e496f              # double 6.8328470000000001
	.quad	0x4000d647baa9b49a              # double 2.1046290000000001
	.quad	0x40133266772d5e07              # double 4.7992189999999999
	.quad	0x3fe016bb98c7e282              # double 0.50277499999999997
	.quad	0x401bbde7ea5f84cb              # double 6.9354550000000001
	.quad	0x40007697f1f9ad00              # double 2.0579070000000002
	.quad	0x401cd52b90a78290              # double 7.2081739999999996
	.quad	0x4014b27b6fe2e6eb              # double 5.1742990000000004
	.quad	0x401b032b12d3415b              # double 6.7530939999999999
	.quad	0x40227109d0635a42              # double 9.2207779999999993
	.quad	0x400b1e6d58c8eef2              # double 3.3898570000000001
	.quad	0x40139841ede1198b              # double 4.8986890000000001
	.quad	0x4019a25bfad29995              # double 6.4085539999999996
	.quad	0x40224917f84449dc              # double 9.1427610000000001
	.quad	0x3fcde61cffeb074a              # double 0.23358499999999999
	.quad	0x4012d5061416377a              # double 4.7080310000000001
	.quad	0x401fbb8737974602              # double 7.9331329999999998
	.quad	0x400d6a9de8b3b320              # double 3.6770589999999999
	.quad	0x4000255e28aa4335              # double 2.018246
	.quad	0x3fe02fa0d77b7c78              # double 0.50581399999999999
	.quad	0x4000eeb78897e996              # double 2.1165609999999999
	.quad	0x400e83254e6e221d              # double 3.8140360000000002
	.quad	0x40163fb5d031055c              # double 5.5622170000000004
	.quad	0x4010878ab0c88a48              # double 4.1323650000000001
	.quad	0x40207afaf8594291              # double 8.2401959999999992
	.quad	0x4019f8576cce5f74              # double 6.492521
	.quad	0x4015b2a9d627bf62              # double 5.4244760000000003
	.quad	0x4019aa715831f03d              # double 6.4164479999999999
	.quad	0x401cdfbefd00713f              # double 7.218502
	.quad	0x3ff34906034f3fd9              # double 1.205328
	.quad	0x400af5a964e8b7e5              # double 3.3699520000000001
	.quad	0x4016d7bb73083559              # double 5.7106760000000003
	.quad	0x4014af6d330941c8              # double 5.1713149999999999
	.quad	0x4012d388ebcc6c55              # double 4.7065770000000002
	.quad	0x4009c63497b7414a              # double 3.2217799999999999
	.quad	0x401991950331e3a8              # double 6.3921700000000001
	.quad	0x4012928027d88c1e              # double 4.6430670000000003
	.quad	0x40098db59578a2a9              # double 3.194194
	.quad	0x4016205681ecd4aa              # double 5.5315799999999999
	.quad	0x4015907e5a78f25a              # double 5.3911069999999999
	.quad	0x401186523704790c              # double 4.3811730000000004
	.quad	0x40113b14ec204f2b              # double 4.3076970000000001
	.quad	0x4003f1a437824d4d              # double 2.4929890000000001
	.quad	0x3ff8da72a7bd48cb              # double 1.5533319999999999
	.quad	0x4008de4ffc9795b3              # double 3.1085509999999998
	.quad	0x3ffb4b135979181a              # double 1.705829
	.quad	0x402373e5321e603d              # double 9.7263579999999993
	.quad	0x3ff492428d434a02              # double 1.2857080000000001
	.quad	0x4016926f60e0eb68              # double 5.6430030000000002
	.quad	0x400bd0fe8ab4fa48              # double 3.4770479999999999
	.quad	0x40112f72f76e6107              # double 4.2963370000000003
	.quad	0x3fe84199fe43675e              # double 0.75800800000000002
	.quad	0x40138e996312f4cf              # double 4.8892569999999997
	.quad	0x40052ebdd334c5da              # double 2.6478229999999998
	.quad	0x400c3759ee88df37              # double 3.5270269999999999
	.quad	0x401d5b21c475e636              # double 7.3389959999999999
	.quad	0x402211e92923e5b8              # double 9.0349819999999994
	.quad	0x4022cf9af1886df8              # double 9.4054789999999997
	.quad	0x4005caceaaf35e31              # double 2.724027
	.quad	0x401eb0f840181e04              # double 7.672822
	.quad	0x400d152007dd4413              # double 3.6353149999999999
	.size	.L__constant_1500xf64, 12000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3feb4cec41dd1a22              # double 0.85314000000000001
	.quad	0x401f467168f8e7de              # double 7.8187920000000002
	.quad	0x402245ee568a5050              # double 9.1365839999999992
	.quad	0x4012de807bbb6241              # double 4.7172869999999998
	.quad	0x3ff25158b827fa1a              # double 1.14486
	.quad	0x3fe44c0bdcad14a1              # double 0.63428300000000004
	.quad	0x400bd06b37867f0b              # double 3.4767670000000002
	.quad	0x4013566f9335d24a              # double 4.8344100000000001
	.quad	0x4021263ffef39086              # double 8.5747070000000001
	.quad	0x4018ef7caa7589f0              # double 6.2338740000000001
	.quad	0x401fd3461309c800              # double 7.9563220000000001
	.quad	0x400a47cd03537197              # double 3.285059
	.quad	0x400d2367e414e7ef              # double 3.6422880000000002
	.quad	0x4020e2d7d7c2ca15              # double 8.4430530000000008
	.quad	0x4015bfa05143bf72              # double 5.4371349999999996
	.quad	0x3ff6b4c3c18b502b              # double 1.4191320000000001
	.quad	0x3ff8e6916440f239              # double 1.5562910000000001
	.quad	0x3fdfc970f7b9e061              # double 0.49667
	.quad	0x401853f748a15981              # double 6.0819979999999996
	.quad	0x3fdc99567dbb16c2              # double 0.44685900000000001
	.quad	0x401590c5eb313be2              # double 5.3913799999999998
	.quad	0x40202ac083126e98              # double 8.0835000000000008
	.quad	0x4023c1a6f826edab              # double 9.8782270000000007
	.quad	0x401ba10e02214270              # double 6.9072800000000001
	.quad	0x40111b827fa1a0cf              # double 4.2768649999999999
	.quad	0x3ffba2003ab862b2              # double 1.7270509999999999
	.quad	0x3fe179a6b50b0f28              # double 0.54610000000000003
	.quad	0x40227f6f2a5a469d              # double 9.2488949999999992
	.quad	0x3ff5445dc8323359              # double 1.329191
	.quad	0x400468123810e886              # double 2.5508160000000002
	.quad	0x4019ac2374794ea0              # double 6.4181039999999996
	.quad	0x4020ac89d27c3937              # double 8.3369890000000009
	.quad	0x3fdc3fc0096feb4a              # double 0.44139099999999998
	.quad	0x3fec55c31593e5fb              # double 0.88546899999999995
	.quad	0x3fe2577b7c7820a3              # double 0.57317899999999999
	.quad	0x400d282949a56580              # double 3.6446100000000001
	.quad	0x3ffd7cec84f8f8a5              # double 1.8429990000000001
	.quad	0x3fd07ecfe9b7bf1f              # double 0.25774000000000002
	.quad	0x3ff69d7ecbb7f9d7              # double 1.413451
	.quad	0x4011f5c52e72da12              # double 4.4900099999999998
	.quad	0x40147a7935760392              # double 5.1196029999999997
	.quad	0x4013e1672324c836              # double 4.9701199999999996
	.quad	0x40155e2478854cdb              # double 5.3419359999999996
	.quad	0x4020f84e3ffef391              # double 8.4849720000000008
	.quad	0x4011c7a24894c448              # double 4.4449550000000002
	.quad	0x3fa91be6e6538690              # double 0.049041000000000001
	.quad	0x3ff14981beb18117              # double 1.080446
	.quad	0x40174311a543f1c7              # double 5.8154969999999997
	.quad	0x401c2d50a88effe3              # double 7.0442530000000003
	.quad	0x400f0c3c18b502ac              # double 3.8809740000000001
	.quad	0x3fecfb82c2bd7f52              # double 0.90570200000000001
	.quad	0x3fe1a34a87e38eb0              # double 0.55118299999999998
	.quad	0x4008ef01754b05b8              # double 3.1167020000000001
	.quad	0x401491e85fd04a30              # double 5.1424880000000002
	.quad	0x402237cf5f4e4431              # double 9.1090040000000005
	.quad	0x4014e2e514c22ee4              # double 5.2215769999999999
	.quad	0x4020ef43201040c0              # double 8.4673090000000002
	.quad	0x40074be48a58b3f6              # double 2.9120569999999999
	.quad	0x401df67ec7863bef              # double 7.4907180000000002
	.quad	0x4020aee392e1ef74              # double 8.3415800000000004
	.quad	0x401ed8ef77f27fe5              # double 7.7118510000000002
	.quad	0x3ff26aae297396d1              # double 1.1510450000000001
	.quad	0x401d7fb8f57f737e              # double 7.3747290000000003
	.quad	0x40031eebb341e14c              # double 2.3900980000000001
	.quad	0x3ffd5a2a4db163bb              # double 1.8345130000000001
	.quad	0x400ac2b1f687b13a              # double 3.3450660000000001
	.quad	0x401d39c5a3e39f77              # double 7.3064179999999999
	.quad	0x4012a8d045fe1112              # double 4.6648569999999996
	.quad	0x402082edfe75bc45              # double 8.2557220000000004
	.quad	0x40231f329c347e8d              # double 9.5609330000000003
	.quad	0x4023b1cdc443914f              # double 9.8472729999999994
	.quad	0x3ffb5e84f09528f2              # double 1.7105760000000001
	.quad	0x3fefada33bd9cae2              # double 0.98994599999999999
	.quad	0x40044ec4a4095f24              # double 2.5384609999999999
	.quad	0x3fd05475a31a4bdc              # double 0.25515500000000002
	.quad	0x401ab3d790752daa              # double 6.6756270000000004
	.quad	0x4012b9ee02a77a2d              # double 4.6815720000000001
	.quad	0x401eefab53d640ea              # double 7.7340520000000001
	.quad	0x400915ec80c73abd              # double 3.1357050000000002
	.quad	0x40182cde5d18090b              # double 6.0438169999999998
	.quad	0x400302cfd8f0c77e              # double 2.3763730000000001
	.quad	0x3fe11a4df47f993d              # double 0.53446099999999996
	.quad	0x401395f1bef49cf5              # double 4.8964299999999996
	.quad	0x401436e04c059210              # double 5.0535899999999998
	.quad	0x40203929aa1d755c              # double 8.1116460000000003
	.quad	0x3ff730be0ded288d              # double 1.4494
	.quad	0x4020cab5807fed20              # double 8.3959159999999997
	.quad	0x40239793ff25e56d              # double 9.7960510000000002
	.quad	0x3fd96d655e28aa43              # double 0.39730199999999999
	.quad	0x4021149752977c89              # double 8.5402170000000002
	.quad	0x4018d2fe82517e78              # double 6.2060490000000001
	.quad	0x401ae8433d6c7219              # double 6.7268189999999999
	.quad	0x400cf88a8b08dd1e              # double 3.6213579999999999
	.quad	0x400beb545c78a6db              # double 3.4899070000000001
	.quad	0x40096b1b36bd2b6f              # double 3.177298
	.quad	0x401092ae4b018612              # double 4.143243
	.quad	0x40119466b1e5c0ba              # double 4.3949230000000004
	.quad	0x400137fbefd00714              # double 2.152336
	.quad	0x3ff945ccc89b0ee5              # double 1.5795410000000001
	.quad	0x401c9ad2999567dc              # double 7.1511940000000003
	.quad	0x401d17863beec398              # double 7.2729730000000004
	.quad	0x401a1754f3775b81              # double 6.5227849999999998
	.quad	0x4011b9d9d3458cd2              # double 4.431495
	.quad	0x4021074ddf86e3b4              # double 8.5142659999999992
	.quad	0x40205f281fd9ba1b              # double 8.1858529999999998
	.quad	0x4021ae149c6f36f0              # double 8.8400010000000009
	.quad	0x3fe948605681ecd5              # double 0.79008500000000004
	.quad	0x40066eff5c6c11a1              # double 2.804198
	.quad	0x4023a1203a322af5              # double 9.8146989999999991
	.quad	0x40220a5119ce075f              # double 9.0201499999999992
	.quad	0x3fba5a9a8049667b              # double 0.10294499999999999
	.quad	0x3ffd6b239a38fbca              # double 1.838657
	.quad	0x3fb14b599aa60914              # double 0.067556000000000005
	.quad	0x401e7cd466f5019f              # double 7.6219039999999997
	.quad	0x40044427418d690a              # double 2.5332780000000001
	.quad	0x40224d701d9f4d38              # double 9.1512460000000004
	.quad	0x401c6bbf50e34763              # double 7.1052220000000004
	.quad	0x401e91040bfe3b04              # double 7.6416170000000001
	.quad	0x4020dab4d8ba40d9              # double 8.4271609999999999
	.quad	0x3ff3f9aae6c8f755              # double 1.248454
	.quad	0x40110f893faf4278              # double 4.2651719999999997
	.quad	0x4010155582129457              # double 4.0208339999999998
	.quad	0x40051727136a4010              # double 2.6363050000000001
	.quad	0x3fdbdb09a671ef31              # double 0.43524400000000002
	.quad	0x4021b387df5cf249              # double 8.8506459999999993
	.quad	0x401b6297396d0918              # double 6.8462800000000001
	.quad	0x3f920c069e7fb268              # double 0.017624000000000001
	.quad	0x4020758cf398e970              # double 8.2295909999999992
	.quad	0x401eb84944ed6fdb              # double 7.6799670000000004
	.quad	0x401bbcd4ed2cbea5              # double 6.9344060000000001
	.quad	0x401d6a29c779a6b5              # double 7.353675
	.quad	0x4020d9c560c7c0f4              # double 8.4253339999999994
	.quad	0x3ff57aba7b9170d6              # double 1.342463
	.quad	0x40126afff36ac647              # double 4.6044919999999996
	.quad	0x401668f6cefed634              # double 5.6025039999999997
	.quad	0x400a3b9496249a13              # double 3.2790919999999999
	.quad	0x40134366516db0de              # double 4.8158200000000004
	.quad	0x3feb5946c332f017              # double 0.85464799999999996
	.quad	0x3fe7820e6299524c              # double 0.734626
	.quad	0x40012ddbdb5d8948              # double 2.147392
	.quad	0x400f4657b84db9c7              # double 3.9093469999999999
	.quad	0x3fe6c258d5842b73              # double 0.71122399999999997
	.quad	0x400499029ae4f334              # double 2.5747119999999999
	.quad	0x40237068fd199bb2              # double 9.7195509999999992
	.quad	0x400b78ba40d90e24              # double 3.4339490000000001
	.quad	0x4022509c3ce2089e              # double 9.1574419999999996
	.quad	0x3ffcbb40b34e7686              # double 1.7957160000000001
	.quad	0x401b2ed99cbee808              # double 6.7957520000000002
	.quad	0x4023f5b6805a2d73              # double 9.979908
	.quad	0x4013ff548ecd8dbd              # double 4.9993460000000001
	.quad	0x401e8cf5b1c86488              # double 7.6376559999999997
	.quad	0x4008b2cadddf43c8              # double 3.0873010000000001
	.quad	0x3fc3f3a57eaa2a0b              # double 0.15587300000000001
	.quad	0x3ff8d8e432441feb              # double 1.5529520000000001
	.quad	0x401b31b1d92b7fe1              # double 6.7985300000000004
	.quad	0x4013e1fb3fa6defc              # double 4.9706849999999996
	.quad	0x40059320d9945b6c              # double 2.6968399999999999
	.quad	0x3ff7196851223183              # double 1.443703
	.quad	0x400892ef911cf356              # double 3.0717460000000001
	.quad	0x4020c1830e3cd9a5              # double 8.3779529999999998
	.quad	0x401dd743e963dc48              # double 7.4602199999999996
	.quad	0x4020f7a85015c209              # double 8.4837059999999997
	.quad	0x3ff47d41743e963e              # double 1.2805800000000001
	.quad	0x401b5b9a176ddacf              # double 6.8394550000000001
	.quad	0x3fe5af405f6ba062              # double 0.677643
	.quad	0x3fda4db163baba7c              # double 0.41099200000000002
	.quad	0x3ffc65f5275ee99a              # double 1.7748919999999999
	.quad	0x401c8918e325d4a6              # double 7.1338840000000001
	.quad	0x40040e03b3e9a6f8              # double 2.5068429999999999
	.quad	0x401d5628cbd1244a              # double 7.3341399999999997
	.quad	0x4015ad5a9eb2074f              # double 5.4192910000000003
	.quad	0x401373cd9a52263e              # double 4.8630890000000004
	.quad	0x40161df090f733a9              # double 5.5292380000000003
	.quad	0x401cd46994185059              # double 7.2074340000000001
	.quad	0x3ffdcf483cafb3b7              # double 1.8631059999999999
	.quad	0x401ec701d9f4d37c              # double 7.6943429999999999
	.quad	0x400a762bf11f926c              # double 3.3077009999999998
	.quad	0x401aa52a84380885              # double 6.661295
	.quad	0x3fe158dbcec84f90              # double 0.54209700000000005
	.quad	0x4007010be9424e59              # double 2.8755109999999999
	.quad	0x4018b12f901083dc              # double 6.1730330000000002
	.quad	0x3ff7f5bf6a0dbad4              # double 1.4974970000000001
	.quad	0x40201f7ee4e26d48              # double 8.061515
	.quad	0x401f63a2163fdd66              # double 7.8472980000000003
	.quad	0x40043c0010c6f7a1              # double 2.5292970000000001
	.quad	0x40007c779a6b50b1              # double 2.060775
	.quad	0x401fb00218def417              # double 7.9218830000000002
	.quad	0x4010a69c66d373b0              # double 4.162706
	.quad	0x401f9f0f5a1016ce              # double 7.9053319999999996
	.quad	0x4013a1b75a74c09c              # double 4.9079259999999998
	.quad	0x3ffe89e34330d738              # double 1.9086639999999999
	.quad	0x3fe44286f8ad2568              # double 0.63312100000000004
	.quad	0x40185e1a3f4666ed              # double 6.0918970000000003
	.quad	0x401542cdc011d367              # double 5.3152379999999999
	.quad	0x3ff6123c42a66dbd              # double 1.3794519999999999
	.quad	0x40196e4217d2849d              # double 6.3576740000000003
	.quad	0x400c29656eefa1e4              # double 3.520213
	.quad	0x4011f4c7f3493858              # double 4.4890439999999998
	.quad	0x4023886d71f36263              # double 9.7664600000000003
	.quad	0x4012b9ee02a77a2d              # double 4.6815720000000001
	.quad	0x400aa65bea0ba1f5              # double 3.3312300000000001
	.quad	0x402057525460aa65              # double 8.1705500000000004
	.quad	0x401f41e42e126202              # double 7.8143469999999997
	.quad	0x400fdc90c4dec1c2              # double 3.9826980000000001
	.quad	0x4007e1fe21d96e9c              # double 2.9853480000000001
	.quad	0x40017adafd113837              # double 2.1849880000000002
	.quad	0x402186aa2a0a9585              # double 8.7630169999999996
	.quad	0x4010678fabda0dfe              # double 4.1011340000000001
	.quad	0x4004561565c2d278              # double 2.542033
	.quad	0x401a8a2f8bdec5f4              # double 6.6349470000000004
	.quad	0x4016a0d9513f8db5              # double 5.6570790000000004
	.quad	0x3fc9a333764f11b6              # double 0.200293
	.quad	0x3feb667b5f1bef4a              # double 0.85626000000000002
	.quad	0x3fd3228134480629              # double 0.298981
	.quad	0x401c745dc8323359              # double 7.113639
	.quad	0x401f3074213a0c6b              # double 7.7973179999999997
	.quad	0x402147faa044ae86              # double 8.6405840000000005
	.quad	0x401b104ea4a8c155              # double 6.7659250000000002
	.quad	0x40237b482be8bc17              # double 9.7407850000000006
	.quad	0x4002183cf2cf95d5              # double 2.261835
	.quad	0x3fe8937b07075b3e              # double 0.76800299999999999
	.quad	0x4019d1e8e6080735              # double 6.4549899999999996
	.quad	0x4006c21b7e0ac7da              # double 2.8447789999999999
	.quad	0x400d887ca643cc08              # double 3.6916440000000001
	.quad	0x40184c99ae924f22              # double 6.0748049999999996
	.quad	0x400601797cc39ffd              # double 2.7507199999999998
	.quad	0x3fc824894c447c31              # double 0.188615
	.quad	0x40037992c8c50050              # double 2.4343620000000001
	.quad	0x4014676d5497310a              # double 5.1010030000000004
	.quad	0x401e9d9fd36f7e3d              # double 7.6539299999999999
	.quad	0x4014de44b6e935b9              # double 5.2170589999999999
	.quad	0x4011f26fe718a86d              # double 4.4867549999999996
	.quad	0x401eddf00abf76a3              # double 7.716736
	.quad	0x400e226b2f23033a              # double 3.7668059999999999
	.quad	0x4012bb4d056c508b              # double 4.6829109999999998
	.quad	0x40117dea897635e7              # double 4.3729649999999998
	.quad	0x40132b2f23033a47              # double 4.7921719999999999
	.quad	0x40010a936c58eeaf              # double 2.1301640000000002
	.quad	0x3fde5714b9cb6849              # double 0.47406500000000001
	.quad	0x4011bb96af038e2a              # double 4.433192
	.quad	0x4010f503b81b64e0              # double 4.2392719999999997
	.quad	0x3faf0c77dd872f34              # double 0.060642000000000001
	.quad	0x4022c14f8b588e37              # double 9.3775600000000007
	.quad	0x3ff90b88ca3e7d13              # double 1.5653159999999999
	.quad	0x40122f79420b3d4b              # double 4.5463610000000001
	.quad	0x402268dc11e42e12              # double 9.2048039999999993
	.quad	0x4023b4afd5454153              # double 9.8529040000000005
	.quad	0x400ce806290eed03              # double 3.6132930000000001
	.quad	0x40145d655e28aa43              # double 5.0912069999999998
	.quad	0x4021ff748a159818              # double 8.9989360000000005
	.quad	0x4011d06d0d49949f              # double 4.4535410000000004
	.quad	0x401ca13cab81f96a              # double 7.1574580000000001
	.quad	0x4006838da3c21188              # double 2.814235
	.quad	0x4013b1db877ab325              # double 4.9236890000000004
	.quad	0x401f25cdd50a88f0              # double 7.786918
	.quad	0x400bccebbba55d1c              # double 3.4750589999999999
	.quad	0x3fb8ef77f27fe4bd              # double 0.097404000000000004
	.quad	0x3fe8312f4cf4a559              # double 0.75600400000000001
	.quad	0x40213cbad7d7c2ca              # double 8.6186129999999999
	.quad	0x400fa5ef62f9ca5c              # double 3.9560230000000001
	.quad	0x3fd330984e3ffef4              # double 0.29984100000000002
	.quad	0x4017c418d6909aed              # double 5.9415009999999997
	.quad	0x3ffafc59b8023a6d              # double 1.686609
	.quad	0x401aaefcbd556085              # double 6.6708860000000003
	.quad	0x401a02e557de0d67              # double 6.5028280000000001
	.quad	0x4016bc271fff79c8              # double 5.6837429999999998
	.quad	0x401b55ff609dcf89              # double 6.8339819999999998
	.quad	0x3ff03e27179bfdf8              # double 1.015174
	.quad	0x401c215011904b3c              # double 7.0325319999999998
	.quad	0x401ff215b9a5a89c              # double 7.9864110000000004
	.quad	0x400eed5e8d5410f9              # double 3.8659029999999999
	.quad	0x4004518f3eccc469              # double 2.5398239999999999
	.quad	0x401f1e6ff7dfa00e              # double 7.7797239999999999
	.quad	0x4010bf78359bc340              # double 4.1869820000000004
	.quad	0x40136bb6aa4b9885              # double 4.8551890000000002
	.quad	0x4021d15a6c5d206d              # double 8.9088930000000008
	.quad	0x401d39fc6da44849              # double 7.3066269999999998
	.quad	0x3ff0017763e4abe7              # double 1.0003580000000001
	.quad	0x4000b7b2031ceaf2              # double 2.0896949999999999
	.quad	0x400f1edbf8b9baa1              # double 3.8900679999999999
	.quad	0x401e8278d0cc35ce              # double 7.6274139999999999
	.quad	0x401ea635e74299d9              # double 7.6623150000000004
	.quad	0x40200e3da2f8bdec              # double 8.0278139999999993
	.quad	0x4017bfb480a5accd              # double 5.9372119999999997
	.quad	0x3ff86f5caf2d7f95              # double 1.527188
	.quad	0x40209ff4128bf3bf              # double 8.3124090000000006
	.quad	0x401af3879c4113c7              # double 6.7378220000000004
	.quad	0x401b415097c80842              # double 6.8137840000000001
	.quad	0x4023c58cb07d0aee              # double 9.8858390000000007
	.quad	0x40055ceb78897e99              # double 2.6703709999999998
	.quad	0x401c0e542e557de1              # double 7.0139930000000001
	.quad	0x3ffbacfc829cfdd2              # double 1.729733
	.quad	0x400885d0fa58f712              # double 3.06534
	.quad	0x4017d525cc426352              # double 5.9581520000000001
	.quad	0x4021898aeb80ecfa              # double 8.7686379999999993
	.quad	0x40187320d9945b6c              # double 6.1124299999999998
	.quad	0x40163dbc23315d70              # double 5.5602879999999999
	.quad	0x4016c73c4f3ba776              # double 5.694566
	.quad	0x3fe6f865d7cb2d90              # double 0.71782199999999996
	.quad	0x4020e74ea8da7f3d              # double 8.4517720000000001
	.quad	0x401c540b34e7685a              # double 7.0820740000000004
	.quad	0x4022816ca46e08f2              # double 9.2527819999999998
	.quad	0x40080c1a8ac5c140              # double 3.0059100000000001
	.quad	0x4022a728a6117721              # double 9.3264820000000004
	.quad	0x40096ba94bbe4474              # double 3.1775690000000001
	.quad	0x40100925fe974a34              # double 4.008934
	.quad	0x400a913165d39970              # double 3.3208950000000002
	.quad	0x4023b27c39368273              # double 9.8486039999999999
	.quad	0x400bc1d5c31593e6              # double 3.469646
	.quad	0x402001aef6f8f041              # double 8.0032879999999995
	.quad	0x4009fc8e25c810a5              # double 3.2483179999999998
	.quad	0x4020087160956c0d              # double 8.0164899999999992
	.quad	0x40173e83e425aee6              # double 5.8110499999999998
	.quad	0x4010da95421c0443              # double 4.2134600000000004
	.quad	0x40173113404ea4a9              # double 5.7979250000000002
	.quad	0x3fe93723ee1bd1ee              # double 0.78798100000000004
	.quad	0x4023d51ce28ed5f1              # double 9.9162359999999996
	.quad	0x40130fa69be09bb7              # double 4.7652840000000003
	.quad	0x401060ce0b912dba              # double 4.0945359999999997
	.quad	0x4021389d0635a427              # double 8.6105730000000005
	.quad	0x40077ef49cf56ead              # double 2.9369900000000002
	.quad	0x4002eb1cc9646280              # double 2.3648009999999999
	.quad	0x4000c5892684cf07              # double 2.0964529999999999
	.quad	0x40185c8711d798d9              # double 6.0903590000000003
	.quad	0x3fd54295a6c5d207              # double 0.33218900000000001
	.quad	0x3ff17882278d0cc3              # double 1.0919209999999999
	.quad	0x4019608d08919ef9              # double 6.3442879999999997
	.quad	0x4016d4acaff6d331              # double 5.7076900000000004
	.quad	0x400e8a012599ed7c              # double 3.8173849999999998
	.quad	0x4016dde15ca6ca04              # double 5.7166800000000002
	.quad	0x40229e013660e51d              # double 9.3086029999999997
	.quad	0x4020165300581494              # double 8.0436019999999999
	.quad	0x3fe479a8cdea033e              # double 0.63985099999999995
	.quad	0x400b6372606fac60              # double 3.4235579999999999
	.quad	0x40203884406c00da              # double 8.1103839999999998
	.quad	0x4018e8e864020818              # double 6.227449
	.quad	0x4021045ac471b478              # double 8.5085049999999995
	.quad	0x4022e838e29f9ce9              # double 9.4535590000000002
	.quad	0x40190685db76b3bc              # double 6.2563700000000004
	.quad	0x4014a1e8e6080735              # double 5.1581149999999996
	.quad	0x4016ffdbd2fa0d78              # double 5.7498620000000003
	.quad	0x3ffa2c5e2cdc011d              # double 1.635832
	.quad	0x3ff04dbbe0157eed              # double 1.0189779999999999
	.quad	0x4020945ef62f9ca6              # double 8.2897870000000005
	.quad	0x40083d1b2e59af9f              # double 3.0298370000000001
	.quad	0x400bf0a782906898              # double 3.4925069999999998
	.quad	0x401eab4e9813879c              # double 7.6672919999999998
	.quad	0x4011101c92ddbdb6              # double 4.2657340000000001
	.quad	0x401f677574f722e2              # double 7.8510340000000003
	.quad	0x40214d438d1d8a55              # double 8.6509060000000009
	.quad	0x3ffd12bf5515054b              # double 1.8170770000000001
	.quad	0x4018c15c63ae2542              # double 6.1888290000000001
	.quad	0x400987f023e9ea14              # double 3.191376
	.quad	0x401e69ca5bd944aa              # double 7.6033109999999997
	.quad	0x40116174c4cdfaca              # double 4.3451719999999998
	.quad	0x40213d23f67f4dbe              # double 8.619415
	.quad	0x401265a20ddc6195              # double 4.5992509999999998
	.quad	0x3f9cef240fa9c12f              # double 0.028256
	.quad	0x4014315d701d9f4d              # double 5.0482079999999998
	.quad	0x401eb873bc903ea7              # double 7.6801289999999999
	.quad	0x4004748d3ae685db              # double 2.5569099999999998
	.quad	0x4001339eadd590c1              # double 2.1502050000000001
	.quad	0x401a8e785b5b7069              # double 6.6391309999999999
	.quad	0x401f494467381d7e              # double 7.8215500000000002
	.quad	0x40200b10129cbab6              # double 8.0216069999999995
	.quad	0x400f23d9a95421c0              # double 3.8925049999999999
	.quad	0x401f7cc037931444              # double 7.8718269999999997
	.quad	0x3ff926a550870111              # double 1.5719350000000001
	.quad	0x400c961dc93ea2d3              # double 3.573299
	.quad	0x3fc28e0c9d9d3459              # double 0.14496000000000001
	.quad	0x400d805ee568a505              # double 3.687681
	.quad	0x401a883ba3443d47              # double 6.6330400000000003
	.quad	0x3fdcf5232d2bb235              # double 0.45246199999999998
	.quad	0x4014b571d1d4738a              # double 5.1771919999999998
	.quad	0x4023d0902de00d1b              # double 9.9073499999999992
	.quad	0x4014dc83ec892ab7              # double 5.2153470000000004
	.quad	0x4008791f70de8f6d              # double 3.059142
	.quad	0x401b17a56de3326a              # double 6.7730920000000001
	.quad	0x401752c7b890d5a6              # double 5.8308400000000002
	.quad	0x40125a85caafbc1b              # double 4.5884010000000002
	.quad	0x4020948c2e770bd0              # double 8.2901319999999998
	.quad	0x4021ef219220ff54              # double 8.9670529999999999
	.quad	0x4012d096feb4a665              # double 4.7037009999999997
	.quad	0x3fea89ca18bd6627              # double 0.82931999999999995
	.quad	0x401d14cf0739b025              # double 7.270321
	.quad	0x40129389f83be660              # double 4.6440809999999999
	.quad	0x40050d4024b33db0              # double 2.6314700000000002
	.quad	0x401283df2a9d627c              # double 4.628781
	.quad	0x3ffc9a9eb2074ea9              # double 1.787749
	.quad	0x3fea905c03361566              # double 0.83012200000000003
	.quad	0x401ee0895d0b73d2              # double 7.7192740000000004
	.quad	0x4020e30079a2834d              # double 8.4433629999999997
	.quad	0x3ff915b1422ccb3a              # double 1.567796
	.quad	0x40239ad6451b9303              # double 9.8024159999999991
	.quad	0x400cd4e6e221c8a8              # double 3.6039560000000002
	.quad	0x3ffa4267839cd812              # double 1.6412119999999999
	.quad	0x400271bcdbbe0158              # double 2.305536
	.quad	0x401312f33ca31e7e              # double 4.7685060000000004
	.quad	0x401288919ef954eb              # double 4.6333679999999999
	.quad	0x402123e78e1932d7              # double 8.5701260000000001
	.quad	0x4020f469728a6117              # double 8.4773669999999992
	.quad	0x3ffc95992428d435              # double 1.7865230000000001
	.quad	0x3ff4b43632c1f42c              # double 1.2939970000000001
	.quad	0x3ffb1e5e2478854d              # double 1.694914
	.quad	0x4008021187e7c06e              # double 3.00101
	.quad	0x401bf4cb5bb384fd              # double 6.9890569999999999
	.quad	0x401208e757928e0d              # double 4.5086950000000003
	.quad	0x3fee53953dea465a              # double 0.94770299999999996
	.quad	0x40141e84f09528f2              # double 5.0298040000000004
	.quad	0x4018032a0663c750              # double 6.0030900000000003
	.quad	0x3ff1836da87a072d              # double 1.094587
	.quad	0x402383354c12274a              # double 9.7562660000000001
	.quad	0x3fed52674080f990              # double 0.91630900000000004
	.quad	0x4022cde7c8d19589              # double 9.4021589999999992
	.quad	0x40116a64c2f837b5              # double 4.3539000000000003
	.quad	0x4014013ad5bee3d6              # double 5.001201
	.quad	0x3ff5347d805e5f31              # double 1.325315
	.quad	0x40164ff759685122              # double 5.5780919999999998
	.quad	0x4005db52007dd441              # double 2.7320899999999999
	.quad	0x402217661f18c9fb              # double 9.0457009999999993
	.quad	0x3ff4b571d1d4738a              # double 1.2942979999999999
	.quad	0x400c43968d759ee9              # double 3.5330020000000002
	.quad	0x3fca471b47842310              # double 0.20529500000000001
	.quad	0x4023ea658c4bd33d              # double 9.9578059999999997
	.quad	0x3ff62223e1869835              # double 1.383335
	.quad	0x4022a7f69014b59a              # double 9.3280530000000006
	.quad	0x40121b3aabcd78c4              # double 4.5265909999999998
	.quad	0x3fb7414a4d2b2bfe              # double 0.090840000000000004
	.quad	0x40114c679cc74b84              # double 4.3246140000000004
	.quad	0x4013e672324c8366              # double 4.9750449999999997
	.quad	0x4018a974e65bea0c              # double 6.1654850000000003
	.quad	0x3ffc3bc7f77af640              # double 1.7645949999999999
	.quad	0x4020dc9d16fc9bc7              # double 8.4308859999999992
	.quad	0x400650d8cb07d0af              # double 2.7894760000000001
	.quad	0x4011b06fac6045bb              # double 4.422301
	.quad	0x401a474f722e1ac5              # double 6.5696389999999996
	.quad	0x401c2daec4a4095f              # double 7.0446119999999999
	.quad	0x400a39b90ea9e6ef              # double 3.2781850000000001
	.quad	0x401e20f0a5efe932              # double 7.5321680000000004
	.quad	0x4022ab51372a38b9              # double 9.3346040000000006
	.quad	0x4010620578e5c4eb              # double 4.0957239999999997
	.quad	0x3fd7fbacb4289119              # double 0.37473600000000001
	.quad	0x40161e99e94ab1d5              # double 5.529884
	.quad	0x4022b90d173fb7a6              # double 9.3614280000000001
	.quad	0x4000fec99f1ae2da              # double 2.1244079999999999
	.quad	0x40222a6e115592da              # double 9.0828710000000008
	.quad	0x40058d40aaeafab5              # double 2.6939709999999999
	.quad	0x401283cb81733227              # double 4.6287060000000002
	.quad	0x4022121101b00368              # double 9.0352859999999993
	.quad	0x400dffc0096feb4a              # double 3.7498779999999998
	.quad	0x401501fddebd9019              # double 5.2519450000000001
	.quad	0x40159a372606fac6              # double 5.400601
	.quad	0x40217e514c22ee42              # double 8.7467140000000008
	.quad	0x3fafbf401c4fc1df              # double 0.062005999999999999
	.quad	0x4020db7dc7abfb9c              # double 8.4286940000000001
	.quad	0x4010aecf20642396              # double 4.170712
	.quad	0x3fd4dd9c27e95315              # double 0.32602599999999998
	.quad	0x401fa1a8ac5c13fd              # double 7.9078699999999999
	.quad	0x3ffd646cfc829cfe              # double 1.837018
	.quad	0x4012962e09fe8683              # double 4.6466599999999998
	.quad	0x4008111d798d8a98              # double 3.0083570000000002
	.quad	0x3ff83b7e90ff9724              # double 1.5145249999999999
	.quad	0x4002be9d94d0dcfd              # double 2.3430740000000001
	.quad	0x40194b67c286f8ad              # double 6.3236379999999999
	.quad	0x401fd8d92fb19e73              # double 7.9617659999999998
	.quad	0x402221fd36f7e3d2              # double 9.0663850000000004
	.quad	0x40093afea3df6db9              # double 3.1538059999999999
	.quad	0x3ff1ab53d640e9d5              # double 1.104328
	.quad	0x401c8b20fb224aae              # double 7.1358680000000003
	.quad	0x400f9c7abfb9bed3              # double 3.951406
	.quad	0x4014cb5a20ddc619              # double 5.1985859999999997
	.quad	0x3ff98b838c111ada              # double 1.5965609999999999
	.quad	0x401a101ffb480a5b              # double 6.5157470000000002
	.quad	0x3fc4995aaf78feef              # double 0.16092999999999999
	.quad	0x40165a26a22b3893              # double 5.5880380000000001
	.quad	0x402129f79420b3d5              # double 8.5819670000000006
	.quad	0x400582f512663411              # double 2.6889439999999998
	.quad	0x401207507e9d94d1              # double 4.5071430000000001
	.quad	0x40161f2f123c42a6              # double 5.5304529999999996
	.quad	0x4011d3b8a19c9d5a              # double 4.4567589999999999
	.quad	0x401e1b402d16b980              # double 7.5266120000000001
	.quad	0x401d4db877ab3248              # double 7.3258989999999997
	.quad	0x4006341bfbdf090f              # double 2.7754439999999998
	.quad	0x40222ddc6195464e              # double 9.0895720000000004
	.quad	0x3fc00a5269595fee              # double 0.12531500000000001
	.quad	0x4012b4a276b7ed42              # double 4.6764010000000003
	.quad	0x40196cf398e97072              # double 6.3563980000000004
	.quad	0x40152a497fa5d28d              # double 5.291296
	.quad	0x401d5d31fcd24e16              # double 7.341011
	.quad	0x401853ad18d25edd              # double 6.081715
	.quad	0x4010afeb8d823422              # double 4.1717969999999998
	.quad	0x3ff1feb8d8234224              # double 1.1246879999999999
	.quad	0x40186868fd199bb2              # double 6.1019629999999996
	.quad	0x3ff293d640e9d51b              # double 1.1610929999999999
	.quad	0x4011d1db445ed4a2              # double 4.4549380000000003
	.quad	0x4015dfe8ee6b8306              # double 5.4686620000000001
	.quad	0x401f249385836220              # double 7.7857190000000003
	.quad	0x4016ad30f062d40b              # double 5.6691320000000003
	.quad	0x401ee75e2046c765              # double 7.7259450000000002
	.quad	0x4011c8ace24bba13              # double 4.4459720000000003
	.quad	0x3ff0d92c8c5004fb              # double 1.053021
	.quad	0x3ff5b190d173fb7a              # double 1.3558509999999999
	.quad	0x4015e4d551d68c69              # double 5.4734699999999998
	.quad	0x3ff2285a921ccd96              # double 1.134852
	.quad	0x401817852f7f498c              # double 6.0229689999999998
	.quad	0x401d6382e44b6e93              # double 7.3471789999999997
	.quad	0x3fc37edc7ef177a7              # double 0.152309
	.quad	0x402243037d63022e              # double 9.1308860000000003
	.quad	0x3fd6b4bb5e0f7fd0              # double 0.35478100000000001
	.quad	0x401f390364388ebd              # double 7.8056770000000001
	.quad	0x4020a804fb1183b6              # double 8.328163
	.quad	0x3ff9c0010c6f7a0b              # double 1.6093759999999999
	.quad	0x3fea3365881a1555              # double 0.818774
	.quad	0x3ffe738b47c73eee              # double 1.9032089999999999
	.quad	0x4019e744f5d35654              # double 6.4758490000000002
	.quad	0x400cf5336deb95e6              # double 3.6197270000000001
	.quad	0x401011d7dbf487fd              # double 4.0174250000000002
	.quad	0x4022336ed677707a              # double 9.1004550000000002
	.quad	0x4022db5daad60200              # double 9.4284490000000005
	.quad	0x40219328954a7f80              # double 8.7874189999999999
	.quad	0x3ff1bc6eb0b7c350              # double 1.1085039999999999
	.quad	0x3fef852934acaff7              # double 0.98500500000000001
	.quad	0x40235d82fd75e204              # double 9.6826399999999992
	.quad	0x400a695af294dd72              # double 3.3014429999999999
	.quad	0x4022fa9d627bf61b              # double 9.4894820000000006
	.quad	0x3ffb73061c79b34a              # double 1.7155819999999999
	.quad	0x401ebfcac8e68e3f              # double 7.687297
	.quad	0x4015d83a109d0636              # double 5.4611590000000003
	.quad	0x401799220ff54089              # double 5.8995439999999997
	.quad	0x400e935c9e6687f4              # double 3.8219539999999999
	.quad	0x40152f587d6f9768              # double 5.2962360000000004
	.quad	0x40074b2af145521a              # double 2.9117030000000002
	.quad	0x3ff1c7ee0b0af5fd              # double 1.1113109999999999
	.quad	0x3fc2023a6ce3582a              # double 0.14069300000000001
	.quad	0x400c7b4245f5ad97              # double 3.5601850000000002
	.quad	0x4000235ce1826677              # double 2.0172669999999999
	.quad	0x40213c68cac4b4d0              # double 8.6179869999999994
	.quad	0x3ff2cbccf28c79f6              # double 1.1747559999999999
	.quad	0x40186ea960b6f9fd              # double 6.1080680000000003
	.quad	0x4007df83be6601bd              # double 2.9841380000000002
	.quad	0x4017af1e8e608073              # double 5.9210149999999997
	.quad	0x40031d9b1b79d90a              # double 2.389456
	.quad	0x401d62b5a20ddc62              # double 7.3463960000000004
	.quad	0x4012557d5a9eb207              # double 4.5834859999999997
	.quad	0x400338fa376922d9              # double 2.4028209999999999
	.quad	0x40206cab81f969e4              # double 8.2122460000000003
	.quad	0x3ff6e0a41a261bf3              # double 1.4298439999999999
	.quad	0x4010d05b39e279dd              # double 4.2034729999999998
	.quad	0x4010e4a9cdc44391              # double 4.2233039999999997
	.quad	0x3fb7e7e1fc08fa7b              # double 0.093382000000000007
	.quad	0x402324d6e47dc37a              # double 9.5719519999999996
	.quad	0x401e4670e2c12ad8              # double 7.5687899999999999
	.quad	0x401be642bf9830e4              # double 6.9748640000000002
	.quad	0x4010e4ef88b97785              # double 4.2235699999999996
	.quad	0x3fed170b49e01de2              # double 0.90906299999999995
	.quad	0x3fe61c0ca600b029              # double 0.69092399999999998
	.quad	0x3fda06b37867f0aa              # double 0.40665899999999999
	.quad	0x4017d26a65cf67b2              # double 5.9554840000000002
	.quad	0x400d76e935b91f71              # double 3.6830620000000001
	.quad	0x40101256798958da              # double 4.0179080000000003
	.quad	0x400bd35b0bbf50e3              # double 3.4782009999999999
	.quad	0x4023e507e9d94d0e              # double 9.9473260000000003
	.quad	0x401a3b320535c9e6              # double 6.5578079999999996
	.quad	0x4005b88db0574b40              # double 2.7151139999999998
	.quad	0x3fd819220ff54089              # double 0.37653399999999998
	.quad	0x3fe99de69ad42c3d              # double 0.80052500000000004
	.quad	0x4020bd17a46173b8              # double 8.3693209999999993
	.quad	0x401bf4a1272c94b4              # double 6.9888960000000004
	.quad	0x4022b94488c60cbf              # double 9.3618509999999997
	.quad	0x4020d1d7fd82773e              # double 8.4098509999999997
	.quad	0x40237ef3f52fc265              # double 9.7479549999999992
	.quad	0x40129f0bf1a5ca2a              # double 4.6553190000000004
	.quad	0x402379799e518f3f              # double 9.7372560000000003
	.quad	0x3fd15d3dc8b86b16              # double 0.271316
	.quad	0x4022988c3f3e0371              # double 9.2979450000000003
	.quad	0x400b6c1db0142f62              # double 3.427791
	.quad	0x4006c74ea8da7f3d              # double 2.847318
	.quad	0x4021d3862b27cbf7              # double 8.9131330000000002
	.quad	0x40234c046412cf10              # double 9.6484710000000007
	.quad	0x40202226c3b927d4              # double 8.0667019999999993
	.quad	0x40037dca4b124d0a              # double 2.4364210000000002
	.quad	0x40091dd11be6e654              # double 3.1395590000000002
	.quad	0x4010c6494d50ebab              # double 4.1936390000000001
	.quad	0x40023172ef0ae536              # double 2.2741449999999999
	.quad	0x401d57fa5d28d003              # double 7.3359160000000001
	.quad	0x3fe61eabbcb1cc96              # double 0.69124399999999997
	.quad	0x3fe47609dcf893fb              # double 0.63940900000000001
	.quad	0x40200e2e2b8c75c5              # double 8.0276960000000006
	.quad	0x4001344d44567126              # double 2.1505380000000001
	.quad	0x400720be51090710              # double 2.8909880000000001
	.quad	0x401143e20ccff21b              # double 4.3162919999999998
	.quad	0x402300ae74f2f124              # double 9.5013310000000004
	.quad	0x3fd39813879c4114              # double 0.30615700000000001
	.quad	0x40226702a3486f05              # double 9.2011920000000007
	.quad	0x401836e6d9be4cd7              # double 6.0536149999999997
	.quad	0x401112f1ed17c5ef              # double 4.2685009999999997
	.quad	0x4012499b6f5caf2d              # double 4.5718819999999996
	.quad	0x4002e84cf0739b02              # double 2.3634279999999999
	.quad	0x400ba2d9cf13ceea              # double 3.4545170000000001
	.quad	0x4004948b220791c5              # double 2.5725310000000001
	.quad	0x40167330d738609a              # double 5.6124910000000003
	.quad	0x4002de7967caea74              # double 2.3586299999999998
	.quad	0x40011f141205bc02              # double 2.1401750000000002
	.quad	0x401c776295208e15              # double 7.116587
	.quad	0x401df03361565c2d              # double 7.4845709999999998
	.quad	0x400d3bb1f255f352              # double 3.6541480000000002
	.quad	0x400333f20a73f749              # double 2.4003640000000002
	.quad	0x40038c39ffd60e95              # double 2.44347
	.quad	0x40225adc4c9c90c5              # double 9.1774620000000002
	.quad	0x4015581882adc4ca              # double 5.3360310000000002
	.quad	0x40102b2314013ec4              # double 4.0421259999999997
	.quad	0x40233ba42f1ed17c              # double 9.6164869999999993
	.quad	0x401745a921ccd962              # double 5.818028
	.quad	0x4014daf35e310dbf              # double 5.213819
	.quad	0x400680fd3b29a1ba              # double 2.812983
	.quad	0x401fe9ced0b30b5b              # double 7.9783280000000003
	.quad	0x401e420c069e7fb2              # double 7.5644989999999996
	.quad	0x3fe6cde3b8a19c9d              # double 0.71263299999999996
	.quad	0x3ff3fbd3804534bd              # double 1.2489809999999999
	.quad	0x4012b1815a07b353              # double 4.6733450000000003
	.quad	0x4015c4c404a72eae              # double 5.4421540000000004
	.quad	0x4020f127b2cc7086              # double 8.4710059999999991
	.quad	0x401aacbb3c81908e              # double 6.6686829999999997
	.quad	0x4006734699418506              # double 2.8062870000000002
	.quad	0x401a6713ad5bee3d              # double 6.6006609999999997
	.quad	0x40202384db9c7369              # double 8.0693730000000006
	.quad	0x4005e0b88ca3e7d1              # double 2.7347269999999999
	.quad	0x3fe1323358f2e05d              # double 0.53737800000000002
	.quad	0x400e16848beb5b2d              # double 3.7609949999999999
	.quad	0x3fe34c122749f0e5              # double 0.60303600000000002
	.quad	0x40174d6fda836eb5              # double 5.8256220000000001
	.quad	0x401afb951c5c5719              # double 6.7456860000000001
	.quad	0x401d829a5ebb773a              # double 7.377542
	.quad	0x4023a2584f4c6e6e              # double 9.8170800000000007
	.quad	0x3fdf53eb399f5dff              # double 0.48949700000000002
	.quad	0x401ccce89656eefa              # double 7.2001059999999999
	.quad	0x3fe228b08dd1e53b              # double 0.56746700000000005
	.quad	0x3ff068fc0d2c386d              # double 1.025631
	.quad	0x4011ad651b0ccbc0              # double 4.4193309999999997
	.quad	0x400d8726d04e618d              # double 3.6909920000000001
	.quad	0x40229afdfc19c172              # double 9.3027189999999997
	.quad	0x4006774927913e81              # double 2.8082449999999999
	.quad	0x40207ea2f48c2e77              # double 8.2473369999999999
	.quad	0x3fe519695d91ab8f              # double 0.65935200000000005
	.quad	0x40025dc93ea2d2fe              # double 2.2957939999999999
	.quad	0x4016fe7c8d195897              # double 5.7485220000000004
	.quad	0x40043edb7281fd9c              # double 2.5306920000000002
	.quad	0x4006fc9bc7714339              # double 2.8733439999999999
	.quad	0x401f17ce95faa8a8              # double 7.7732489999999998
	.quad	0x401eb48beb5b2d4d              # double 7.6763149999999997
	.quad	0x40150fb2edfe75bc              # double 5.2653309999999998
	.quad	0x400c6778140dd3fe              # double 3.550522
	.quad	0x3ff76a087ca643cc              # double 1.463387
	.quad	0x4017ab16c1e364bf              # double 5.9170790000000002
	.quad	0x401f86b26bf8769f              # double 7.8815400000000002
	.quad	0x3ffd938bcdfefbf4              # double 1.848522
	.quad	0x3fff0a58b3f63c32              # double 1.940026
	.quad	0x40177136a400fba9              # double 5.8605600000000004
	.quad	0x40221cb8e086bdf5              # double 9.0560980000000004
	.quad	0x4023048259e1f3a5              # double 9.5088069999999991
	.quad	0x4019897dd00f776c              # double 6.3842689999999997
	.quad	0x401914b87bdcf030              # double 6.2702349999999996
	.quad	0x401053a6ce358299              # double 4.0816910000000002
	.quad	0x40100c2374794ea0              # double 4.0118539999999996
	.quad	0x3fd080c73abc9470              # double 0.25785999999999998
	.quad	0x401e996ededaec4a              # double 7.6498369999999998
	.quad	0x40081f36ac647779              # double 3.0152410000000001
	.quad	0x3ff10a50507a6bd7              # double 1.065018
	.quad	0x40175816f0068db9              # double 5.8360250000000002
	.quad	0x400cdc408d8ec95c              # double 3.607545
	.quad	0x401806d3b6cbd988              # double 6.0066670000000002
	.quad	0x4019bd66277c45cc              # double 6.4349600000000002
	.quad	0x3ffe592b7fe08af0              # double 1.8967700000000001
	.quad	0x401f954fbdad7519              # double 7.8958120000000002
	.quad	0x4020467c286f8ad2              # double 8.1376659999999994
	.quad	0x401cc35efa615a8e              # double 7.1907920000000001
	.quad	0x3fe79f05ea24cc68              # double 0.73816199999999998
	.quad	0x4020e9170d62bf12              # double 8.455254
	.quad	0x40116c35ce182667              # double 4.3556739999999996
	.quad	0x40133e41919ac797              # double 4.810797
	.quad	0x401a9b841248d7e0              # double 6.6518709999999999
	.quad	0x3fe6ee88df37329c              # double 0.71661799999999998
	.quad	0x402257ed20296b33              # double 9.1717309999999994
	.quad	0x401de4bec679cc75              # double 7.4733840000000002
	.quad	0x402154e5d5b24e9c              # double 8.6658159999999995
	.quad	0x401092e7f6f4be83              # double 4.1434629999999997
	.quad	0x401226f262888b54              # double 4.5380339999999997
	.quad	0x401c1bb6ed677708              # double 7.0270650000000003
	.quad	0x3ffcd132f87ad081              # double 1.8010740000000001
	.quad	0x3fed33fc86cebbba              # double 0.91259599999999996
	.quad	0x3fd7202d9cf13cef              # double 0.36133900000000002
	.quad	0x401019b77c02afde              # double 4.0251140000000003
	.quad	0x4020c1a32b12d341              # double 8.3781979999999994
	.quad	0x401c767a52ac753e              # double 7.1157009999999996
	.quad	0x401abfd5cb790fb6              # double 6.6873389999999997
	.quad	0x401dc308787485e4              # double 7.4404620000000001
	.quad	0x401455e7c8d19589              # double 5.0838919999999996
	.quad	0x4014b3a109d0635a              # double 5.1754189999999998
	.quad	0x3ffa32a6b0d95140              # double 1.6373660000000001
	.quad	0x401291b43526527a              # double 4.6422889999999999
	.quad	0x401af07b352a8438              # double 6.734845
	.quad	0x401913586ca89fc7              # double 6.2688920000000001
	.quad	0x4010942fa5093965              # double 4.1447130000000003
	.quad	0x400b9aeee957470f              # double 3.4506510000000001
	.quad	0x4015994ff0025bfb              # double 5.3997190000000002
	.quad	0x3feeafd5454152b1              # double 0.95896400000000003
	.quad	0x3fe4dfd04a2fcefb              # double 0.65232100000000004
	.quad	0x4012615336deb95e              # double 4.5950439999999997
	.quad	0x4020d226e5471716              # double 8.4104530000000004
	.quad	0x401fecd466f5019f              # double 7.9812789999999997
	.quad	0x4018996aad1d041d              # double 6.1498210000000002
	.quad	0x400d43a2163fdd66              # double 3.6580240000000002
	.quad	0x4013a640e9d51b50              # double 4.9123570000000001
	.quad	0x4011c0ecb74ddf87              # double 4.4384030000000001
	.quad	0x4008485d31337eb3              # double 3.0353340000000002
	.quad	0x40077bbe878fabda              # double 2.935422
	.quad	0x401505fd8adab9f5              # double 5.2558499999999997
	.quad	0x4020eaa6d2674081              # double 8.458304
	.quad	0x40074dcc20d5629e              # double 2.9129870000000002
	.quad	0x401501e96c3fc43b              # double 5.2518669999999998
	.quad	0x3ff62e3608d0891a              # double 1.386282
	.quad	0x3ff423897204295a              # double 1.2586759999999999
	.quad	0x4002d4e09784ec63              # double 2.3539439999999998
	.quad	0x4017f05857afea3e              # double 5.984712
	.quad	0x40196de37585be1b              # double 6.3573130000000004
	.quad	0x4020d74ff865d7cb              # double 8.4205319999999997
	.quad	0x4000c7f90d9d7775              # double 2.0976430000000001
	.quad	0x401f62db1e9f2778              # double 7.8465389999999999
	.quad	0x4011558ab92c0618              # double 4.3335369999999998
	.quad	0x400b4ebdd334c5da              # double 3.4134479999999998
	.quad	0x40193f0e90bc7b46              # double 6.3115790000000001
	.quad	0x4018dd7cb2d905c0              # double 6.2162959999999998
	.quad	0x3fd4a6eb91b3f20a              # double 0.32268799999999997
	.quad	0x4015383f4eca686e              # double 5.3049289999999996
	.quad	0x4023c3bc0a06e9ff              # double 9.8822939999999999
	.quad	0x400f041248d7e026              # double 3.8769879999999999
	.quad	0x4013c55ef1fddebe              # double 4.9427450000000004
	.quad	0x400919591cd1c7de              # double 3.1373769999999999
	.quad	0x400b4b7457c0b136              # double 3.4118430000000002
	.quad	0x4001f3a0c6b484d7              # double 2.2439589999999998
	.quad	0x401d6f9d6f112fd3              # double 7.3589989999999998
	.quad	0x402164213a0c6b48              # double 8.6955659999999995
	.quad	0x401e9fa5093964a6              # double 7.6559030000000003
	.quad	0x401f85186db50f41              # double 7.879976
	.quad	0x40134d330941c821              # double 4.8253899999999996
	.quad	0x40089ec99f1ae2da              # double 3.0775329999999999
	.quad	0x4012881adea89763              # double 4.6329149999999997
	.quad	0x3ff27a860dcb9a9e              # double 1.1549130000000001
	.quad	0x4015cdf6555c52e7              # double 5.4511349999999998
	.quad	0x400f577a7008a698              # double 3.9177140000000001
	.quad	0x4015ddd9c27e9531              # double 5.4666509999999997
	.quad	0x4022f9f03d145d85              # double 9.4881609999999998
	.quad	0x3febfe2a3cea6c1a              # double 0.874776
	.quad	0x4023fe3c31df761d              # double 9.9965530000000004
	.quad	0x4021f97396d0917d              # double 8.9872099999999993
	.quad	0x40226eaf6837f7be              # double 9.2161819999999999
	.quad	0x400885e353f7ced9              # double 3.065375
	.quad	0x40194ef416bdb1a7              # double 6.3271030000000001
	.quad	0x4015db6b6e0d23d5              # double 5.4642770000000001
	.quad	0x401e1be5d9e40c84              # double 7.5272439999999996
	.quad	0x401cedda059a73b4              # double 7.2322769999999998
	.quad	0x4020138fffbce421              # double 8.0382079999999991
	.quad	0x4021471044f1a198              # double 8.6387959999999993
	.quad	0x4021ef59253543af              # double 8.9674770000000006
	.quad	0x4015bb220791c4b9              # double 5.432747
	.quad	0x40191a0b1bbcf4e8              # double 6.2754329999999996
	.quad	0x401e1a7935760392              # double 7.5258529999999997
	.quad	0x4007b738e6d15ad1              # double 2.964464
	.quad	0x4023c3fe7e1fc090              # double 9.8828010000000006
	.quad	0x4003bd45a5fc7e6b              # double 2.4674179999999999
	.quad	0x3fdbcac083126e98              # double 0.43425000000000002
	.quad	0x401364f3fd933e36              # double 4.8485870000000002
	.quad	0x401be4f8726d04e6              # double 6.9736039999999999
	.quad	0x40012122749f0e4e              # double 2.1411790000000002
	.quad	0x4022f33e9a6f826f              # double 9.4750870000000002
	.quad	0x40195c76d117b528              # double 6.3402969999999996
	.quad	0x3fe11b4fe79ee02a              # double 0.53458399999999995
	.quad	0x4012aa077036c9c1              # double 4.6660440000000003
	.quad	0x40217c15d2d01c0d              # double 8.7423540000000006
	.quad	0x4010ee07a28bb0a3              # double 4.2324510000000002
	.quad	0x3fc51394317acc4f              # double 0.16466
	.quad	0x3fe4615011904b3c              # double 0.63687899999999997
	.quad	0x40154104d551d68c              # double 5.3134949999999996
	.quad	0x3fe2684ad794a6ec              # double 0.57523100000000005
	.quad	0x4000250f840181e0              # double 2.0180959999999999
	.quad	0x401a3c0229a5ebb7              # double 6.5586019999999996
	.quad	0x4022bccff21b3aef              # double 9.3687740000000001
	.quad	0x3ff1591148fd9fd3              # double 1.0842449999999999
	.quad	0x3fd0ca8198f1d3ed              # double 0.26235999999999998
	.quad	0x402350fa9c12f09e              # double 9.6581620000000008
	.quad	0x4012d0221426fe72              # double 4.7032550000000004
	.quad	0x401aeaf5fd47bedb              # double 6.7294539999999996
	.quad	0x401c02bba98eda23              # double 7.002669
	.quad	0x4023e61a3f4666ed              # double 9.9494190000000006
	.quad	0x401e6769ec2ce465              # double 7.6009900000000003
	.quad	0x40113ff7164c729f              # double 4.3124659999999997
	.quad	0x40051539b888722a              # double 2.635364
	.quad	0x40052faeff5c6c12              # double 2.6482830000000002
	.quad	0x3ffc051761459536              # double 1.7512430000000001
	.quad	0x4020f45b078d92fb              # double 8.4772569999999998
	.quad	0x3fe294e1a3f4666f              # double 0.58067400000000002
	.quad	0x40063929670196d9              # double 2.777911
	.quad	0x402348370cdc8755              # double 9.641045
	.quad	0x401cda465a57646b              # double 7.2131590000000001
	.quad	0x4012963800218def              # double 4.6466979999999998
	.quad	0x3fd5bc169c23b795              # double 0.33960499999999999
	.quad	0x401bca975afaf859              # double 6.9478429999999998
	.quad	0x4015da75cd0bb6ed              # double 5.4633399999999996
	.quad	0x401335f5ad96a6a0              # double 4.8026949999999999
	.quad	0x401fa840181e03f7              # double 7.9143069999999999
	.quad	0x402237136a400fbb              # double 9.1075700000000008
	.quad	0x40204171e29b6b2b              # double 8.1278220000000001
	.quad	0x4015144998d045fe              # double 5.2698119999999999
	.quad	0x4003a57c0b135979              # double 2.455803
	.quad	0x40148e8bc169c23b              # double 5.1392049999999996
	.quad	0x401c674d9c6b0532              # double 7.1008820000000004
	.quad	0x400882a023209678              # double 3.0637819999999998
	.quad	0x40218eb074a771c9              # double 8.7786899999999992
	.quad	0x4022ab167ec7863c              # double 9.3341560000000001
	.quad	0x401cf4284dfce315              # double 7.238435
	.quad	0x3ff61df00abf76a3              # double 1.382309
	.quad	0x401b1925fe974a34              # double 6.774559
	.quad	0x4014aba1f4b1ee24              # double 5.1676099999999998
	.quad	0x401a10296b3354c1              # double 6.5157829999999999
	.quad	0x4007f5d5f56a7ac8              # double 2.9950369999999999
	.quad	0x40236d55e6bc621b              # double 9.7135459999999991
	.quad	0x4020a1c58255b036              # double 8.3159600000000005
	.quad	0x40239c5cbbc2b94e              # double 9.8053950000000007
	.quad	0x400f7414a4d2b2c0              # double 3.9316800000000001
	.quad	0x4020d324c8366517              # double 8.4123900000000003
	.quad	0x4002210060780fdc              # double 2.266114
	.quad	0x401cad84901d1915              # double 7.1694509999999996
	.quad	0x401c2fb6dca07f67              # double 7.0465960000000001
	.quad	0x401fec9bc7714339              # double 7.9810629999999997
	.quad	0x400d4d9ad85dfa87              # double 3.662893
	.quad	0x3fd3d245b291b824              # double 0.30970900000000001
	.quad	0x40230127f5e84f09              # double 9.5022579999999994
	.quad	0x402233efae7924af              # double 9.1014379999999999
	.quad	0x4016153b4b2fa93b              # double 5.520734
	.quad	0x400e1d3cbc48f10b              # double 3.7642760000000002
	.quad	0x40062abde3fbbd7b              # double 2.7708699999999999
	.quad	0x401690bcbe61cfff              # double 5.6413450000000003
	.quad	0x40055beec39799e5              # double 2.669889
	.quad	0x3ffb003eea209aaa              # double 1.6875599999999999
	.quad	0x400f7f27fe4bcada              # double 3.9370880000000001
	.quad	0x400f91b691212514              # double 3.9461490000000001
	.quad	0x40178a337a80cf9e              # double 5.8849619999999998
	.quad	0x40059e4473cd5736              # double 2.7022789999999999
	.quad	0x4022db8a7e73a366              # double 9.4287910000000004
	.quad	0x40230e90de093533              # double 9.5284490000000001
	.quad	0x3ff469e6eeb70260              # double 1.275855
	.quad	0x400dd4549b62c775              # double 3.7286769999999998
	.quad	0x3ff7f15c63ae2542              # double 1.496426
	.quad	0x4010fc2f837b4a23              # double 4.2462749999999998
	.quad	0x3feb6492bc2fc697              # double 0.85602699999999998
	.quad	0x402161a3b14a9047              # double 8.6907019999999999
	.quad	0x3ff3c4f2ae07e5a8              # double 1.2355830000000001
	.quad	0x3fc8f8df7a4e7ab7              # double 0.19509499999999999
	.quad	0x3fed84ec636b0963              # double 0.92247599999999996
	.quad	0x3fbf0ccbc05d52c1              # double 0.12128899999999999
	.quad	0x401603eccc469510              # double 5.5038330000000002
	.quad	0x401db74c4cdfaca3              # double 7.4290019999999997
	.quad	0x40237f19934efcbd              # double 9.7482419999999994
	.quad	0x3ffe653eb399f5e0              # double 1.899718
	.quad	0x400a65ff1d81f106              # double 3.2998029999999998
	.quad	0x4022aa25742dcf46              # double 9.3323169999999998
	.quad	0x4004bcd9a52263d8              # double 2.592212
	.quad	0x401da59e6256366d              # double 7.4117369999999996
	.quad	0x3fd352a843808851              # double 0.30192000000000002
	.quad	0x40205117507e9d95              # double 8.1583810000000003
	.quad	0x401f7a38327674d1              # double 7.8693549999999996
	.quad	0x400bd0678c0053e3              # double 3.4767600000000001
	.quad	0x4021f1f85d744f5d              # double 8.9725979999999996
	.quad	0x40051380cb6c7a7d              # double 2.6345230000000002
	.quad	0x4018fff08893b7d8              # double 6.2499409999999997
	.quad	0x4010f0b780346dc6              # double 4.2350750000000001
	.quad	0x4016533e78e1932d              # double 5.5812929999999996
	.quad	0x401642fd75e2046c              # double 5.5654199999999996
	.quad	0x3fc29f16b11c6d1e              # double 0.14548
	.quad	0x4022843c5bd0e12f              # double 9.2582730000000009
	.quad	0x401c145f5ad96a6a              # double 7.019895
	.quad	0x4016f5dcc63f1412              # double 5.7401
	.quad	0x401ed034f3fd933e              # double 7.7033269999999998
	.quad	0x4021970435efa616              # double 8.7949540000000006
	.quad	0x4020929973d9ec70              # double 8.286327
	.quad	0x40217a1f6cacd185              # double 8.7385210000000004
	.quad	0x40154f9db22d0e56              # double 5.32775
	.quad	0x40239cd22c881e47              # double 9.8062909999999998
	.quad	0x40123a2339c0ebee              # double 4.556775
	.quad	0x402270f301eabbcb              # double 9.2206039999999998
	.quad	0x4014fd08d4bad7d8              # double 5.2471040000000002
	.quad	0x402285f4e4430b18              # double 9.2616340000000008
	.quad	0x40223beb5b2d4d40              # double 9.1170299999999997
	.quad	0x4011f083dbc23316              # double 4.4848780000000001
	.quad	0x3fc4919695d91ab9              # double 0.160693
	.quad	0x3fc395f676ea4229              # double 0.15301400000000001
	.quad	0x40221a2c2374794f              # double 9.0511180000000007
	.quad	0x4011e9b6f5caf2d8              # double 4.478237
	.quad	0x4003a23422467be5              # double 2.4542009999999999
	.quad	0x4005471151611ba4              # double 2.6597010000000001
	.quad	0x3fdfe603d577963a              # double 0.49841400000000002
	.quad	0x400aeece13f4a98b              # double 3.3666040000000002
	.quad	0x40175b66f9335d25              # double 5.8392600000000003
	.quad	0x3ff6896bb98c7e28              # double 1.40855
	.quad	0x401f5b994e1a3f46              # double 7.8394519999999996
	.quad	0x40229859c8c9320e              # double 9.2975600000000007
	.quad	0x3ffefe414e7ee914              # double 1.937074
	.quad	0x4014d7d5ed06fef8              # double 5.2107770000000002
	.quad	0x401952bc72e275ab              # double 6.3307969999999996
	.quad	0x3ff30e9d51b4fe7a              # double 1.191068
	.quad	0x401f6e7967caea74              # double 7.8578849999999996
	.quad	0x4023304ba0e84274              # double 9.5943269999999998
	.quad	0x400a26d7a56de332              # double 3.2689659999999998
	.quad	0x3ff4b3df2a9d627c              # double 1.293914
	.quad	0x3fff4bc8c0ce91c9              # double 1.956002
	.quad	0x400ce64e48626f61              # double 3.6124540000000001
	.quad	0x4018992ea52ef912              # double 6.1495920000000002
	.quad	0x401b739da16616b5              # double 6.8629059999999997
	.quad	0x4017ada554b8bef9              # double 5.9195760000000002
	.quad	0x4023948cd63cb817              # double 9.7901369999999996
	.quad	0x402221563a9f383f              # double 9.0651109999999999
	.quad	0x401b0b1bbcf4e875              # double 6.7608480000000002
	.quad	0x3ffab00cd855970b              # double 1.6679809999999999
	.quad	0x400c48ac5c13fd0d              # double 3.535485
	.quad	0x4020ca5072085b18              # double 8.3951449999999994
	.quad	0x401a348c2e770bd0              # double 6.5513159999999999
	.quad	0x3ff0529131ec0b56              # double 1.0201579999999999
	.quad	0x4021a73d3a1d3240              # double 8.8266390000000001
	.quad	0x40201cad794a6eb9              # double 8.0560109999999998
	.quad	0x4021405b39e279dd              # double 8.6256959999999996
	.quad	0x4013617c1bda511a              # double 4.8452000000000002
	.quad	0x3fe756ba8c586877              # double 0.72933700000000001
	.quad	0x401425bc44bf4cb2              # double 5.0368510000000004
	.quad	0x3ff4ed87f88765ba              # double 1.3079909999999999
	.quad	0x401e34302b40f66a              # double 7.5509649999999997
	.quad	0x401df065f9591cd2              # double 7.4847640000000002
	.quad	0x402067980f55de59              # double 8.2023320000000002
	.quad	0x402132ba16e7a312              # double 8.5990760000000002
	.quad	0x4009af37fbefd007              # double 3.210556
	.quad	0x401a28b4bf8fcd68              # double 6.539752
	.quad	0x4020a95a4acf312b              # double 8.3307669999999998
	.quad	0x4018576922d948dc              # double 6.0853619999999999
	.quad	0x4023950f1f57b41c              # double 9.791131
	.quad	0x40227ba9f383f0bb              # double 9.2415310000000002
	.quad	0x3ff07761cbccf28c              # double 1.0291459999999999
	.quad	0x4022375be5d9e40d              # double 9.1081230000000009
	.quad	0x3fd7731098d477bc              # double 0.366398
	.quad	0x40159b04ee7c49fd              # double 5.4013859999999996
	.quad	0x401731f46ed245b3              # double 5.7987840000000004
	.quad	0x4012cd634549b62c              # double 4.7005739999999996
	.quad	0x4016b25a682b6284              # double 5.6741729999999997
	.quad	0x4014702d16b97fe9              # double 5.1095470000000001
	.quad	0x401dfd2bf5515055              # double 7.4972380000000002
	.quad	0x400538769ec2ce46              # double 2.6525699999999999
	.quad	0x3ffc5b8dc55000c9              # double 1.7723519999999999
	.quad	0x40153bb1af3a14cf              # double 5.3082950000000002
	.quad	0x401a92e1ef73c0c2              # double 6.64344
	.quad	0x3ff731476af89c5e              # double 1.4495309999999999
	.quad	0x401fcc5004fb1184              # double 7.9495240000000003
	.quad	0x4014033df2a9d628              # double 5.0031660000000002
	.quad	0x401445bc87db2b34              # double 5.0681019999999997
	.quad	0x4023612ee84ad795              # double 9.6898110000000006
	.quad	0x4015ed35a858793e              # double 5.4816500000000001
	.quad	0x4014a89dadfb506e              # double 5.1646640000000001
	.quad	0x3fee8efdc9c4da90              # double 0.954955
	.quad	0x3ff10edb2f661f19              # double 1.066127
	.quad	0x3ffea9878316a055              # double 1.9163889999999999
	.quad	0x4016f6937d1fe64f              # double 5.7407969999999997
	.quad	0x400d7d462c343b71              # double 3.686169
	.quad	0x4008d23fee2c98e5              # double 3.1026609999999999
	.quad	0x3fc33198288051ca              # double 0.149951
	.quad	0x40131a005c4651f4              # double 4.7753920000000001
	.quad	0x4021764b018611fd              # double 8.7310409999999994
	.quad	0x400e84d7f0ed3d86              # double 3.8148650000000002
	.quad	0x401bb449dbec2481              # double 6.9260630000000001
	.quad	0x3fe0bf6e3f78bbd4              # double 0.52336800000000006
	.quad	0x400d41ea35935fc4              # double 3.6571850000000001
	.quad	0x4021a45aa2e3c537              # double 8.8210040000000003
	.quad	0x40212ace24bba12b              # double 8.5836039999999993
	.quad	0x40225f28e92d55a4              # double 9.1858590000000006
	.quad	0x3fd6d40aaeafab54              # double 0.35669200000000001
	.quad	0x3ff2c4dec1c1d6d0              # double 1.1730640000000001
	.quad	0x4013b1426fe718a8              # double 4.9231049999999996
	.quad	0x400a803925bb7b6c              # double 3.3126090000000001
	.quad	0x4011f960fa15db34              # double 4.4935340000000004
	.quad	0x3fd7f2e8c0485a0c              # double 0.37420100000000001
	.quad	0x4023aeb6e0d23d4f              # double 9.8412389999999998
	.quad	0x401c9b08dd1e53a8              # double 7.1514009999999999
	.quad	0x400acdd8b60f1b26              # double 3.350511
	.quad	0x402104013ec460ee              # double 8.5078220000000009
	.quad	0x402012eee957470f              # double 8.0369790000000005
	.quad	0x4021147d805e5f31              # double 8.5400200000000002
	.quad	0x401e92e87d2c7b89              # double 7.6434649999999999
	.quad	0x40006286f8ad2568              # double 2.0481090000000002
	.quad	0x4010b6466b1e5c0c              # double 4.1780030000000004
	.quad	0x40086f1d3ed527e5              # double 3.0542549999999999
	.quad	0x3ff2dc3dee781840              # double 1.1787700000000001
	.quad	0x401e67d9dba908a2              # double 7.6014169999999996
	.quad	0x40092292817763e5              # double 3.1418810000000001
	.quad	0x4022567be553ac4f              # double 9.1689139999999991
	.quad	0x3fce13c254a3c643              # double 0.23497799999999999
	.quad	0x3fe081de26916441              # double 0.51585300000000001
	.quad	0x401f567ec7863bef              # double 7.8344680000000002
	.quad	0x4021770b49e01de2              # double 8.7325079999999993
	.quad	0x3ff2bbefd00713f0              # double 1.1708829999999999
	.quad	0x4022f4a16a487336              # double 9.4777939999999994
	.quad	0x40204d50ebaade65              # double 8.1510079999999991
	.quad	0x40127be7296f6513              # double 4.6209990000000003
	.quad	0x40106d3671ac14c6              # double 4.1066529999999997
	.quad	0x4021b5c9c4da9004              # double 8.8550550000000001
	.quad	0x4020696aad1d041d              # double 8.2058920000000004
	.quad	0x401ee58d9b5e95b8              # double 7.7241730000000003
	.quad	0x3fd382949a5657fb              # double 0.30484499999999998
	.quad	0x401518c4bd33d295              # double 5.2741879999999997
	.quad	0x4012241f644955b4              # double 4.5352759999999996
	.quad	0x400472ecf2064239              # double 2.5561159999999998
	.quad	0x401a3687f455a7d2              # double 6.5532529999999998
	.quad	0x401b844806290eed              # double 6.879181
	.quad	0x400914898f605ab4              # double 3.1350280000000001
	.quad	0x401d5621fafc8b00              # double 7.3341139999999996
	.quad	0x40163a372606fac6              # double 5.556851
	.quad	0x40174958969a0ad9              # double 5.8216270000000003
	.quad	0x40159f86e3b46fdf              # double 5.4057880000000003
	.quad	0x4019b8e71476af8a              # double 6.4305690000000002
	.quad	0x400a33ed527e5215              # double 3.2753549999999998
	.quad	0x4023ca1dda059a74              # double 9.8947590000000005
	.quad	0x400cbe492bc2fc69              # double 3.5929129999999998
	.quad	0x4021fff7dfa00e28              # double 8.9999380000000002
	.quad	0x401afcbd987c6328              # double 6.7468170000000001
	.quad	0x40135cbd556084a5              # double 4.8405659999999999
	.quad	0x40023e34330d7386              # double 2.280373
	.quad	0x4013d968943e1006              # double 4.962313
	.quad	0x40127f2239e6ab9b              # double 4.6241539999999999
	.quad	0x4023c03ab862b27d              # double 9.8754480000000004
	.quad	0x4017ca3a8e71476b              # double 5.947489
	.quad	0x401bad184c271fff              # double 6.9190379999999996
	.quad	0x40209dfe542e557e              # double 8.3085810000000002
	.quad	0x401509b30728e92d              # double 5.2594719999999997
	.quad	0x3fff6115592d98bf              # double 1.9612019999999999
	.quad	0x400f2a2a90cd423e              # double 3.8955890000000002
	.quad	0x4016cc94b380cb6c              # double 5.6997859999999996
	.quad	0x400a1e61cffeb075              # double 3.2648350000000002
	.quad	0x40225483a96d4c34              # double 9.1650670000000005
	.quad	0x401dd60aa64c2f83              # double 7.4590249999999996
	.quad	0x401ec75cd0bb6ed6              # double 7.6946899999999996
	.quad	0x4012a8b545c78a6e              # double 4.6647540000000003
	.quad	0x40130db1209edbf9              # double 4.7633710000000002
	.quad	0x400c885c24c404a7              # double 3.5665819999999999
	.quad	0x4000ea012599ed7c              # double 2.1142599999999998
	.quad	0x4021e35e310dbf05              # double 8.9440779999999993
	.quad	0x3fc61b97353b4b30              # double 0.17271700000000001
	.quad	0x4012768405b39e28              # double 4.6157380000000003
	.quad	0x40132224edf61240              # double 4.7833439999999996
	.quad	0x401139d0203e63e9              # double 4.3064580000000001
	.quad	0x402277418d6909af              # double 9.2329220000000003
	.quad	0x4013e1e4f765fd8b              # double 4.9706000000000001
	.quad	0x401b9bedb7281fda              # double 6.9022740000000002
	.quad	0x401e652bd3c36113              # double 7.5987999999999997
	.quad	0x401dfbbe0157eed4              # double 7.4958419999999997
	.quad	0x4006c79702e6644e              # double 2.8474560000000002
	.quad	0x400cbeab367a0f91              # double 3.5931000000000002
	.quad	0x401b3b9991361dc9              # double 6.8082029999999998
	.quad	0x4010fe0fc2eba27b              # double 4.2481070000000001
	.quad	0x40215676640a6b94              # double 8.6688720000000003
	.quad	0x4015532e3821af7d              # double 5.3312309999999998
	.quad	0x3ffd33ba775fb2ee              # double 1.825129
	.quad	0x3fe60fe69270b06c              # double 0.68944099999999997
	.quad	0x401d15bc01a36e2f              # double 7.2712250000000003
	.quad	0x4014e9934efcbd55              # double 5.2281009999999997
	.quad	0x4011b62bf11f926c              # double 4.4279019999999996
	.quad	0x402263b23571d1d4              # double 9.1947189999999991
	.quad	0x40129fa54c554328              # double 4.6559039999999996
	.quad	0x40034a5269595fee              # double 2.4112900000000002
	.quad	0x401ce132f87ad081              # double 7.2199210000000003
	.quad	0x4015150c5eb313be              # double 5.2705549999999999
	.quad	0x400e72ead9274e23              # double 3.8061120000000002
	.quad	0x4015628f5c28f5c3              # double 5.3462500000000004
	.quad	0x401a763a5c1c6089              # double 6.6154570000000001
	.quad	0x400a179c842fa509              # double 3.2615289999999999
	.quad	0x4004a4662bae03b4              # double 2.580273
	.quad	0x401b33d577963993              # double 6.8006190000000002
	.quad	0x401324d4cb9ecf64              # double 4.7859680000000004
	.quad	0x3ff6039ffd60e94f              # double 1.375885
	.quad	0x4006cae74f2f123c              # double 2.8490739999999999
	.quad	0x3fe5430d306a2b17              # double 0.664435
	.quad	0x40103cde19fc2a88              # double 4.0594409999999996
	.quad	0x4017ff6c2699c7bd              # double 5.9994360000000002
	.quad	0x3fe8caff6d330942              # double 0.77478000000000002
	.quad	0x4023220685553ef7              # double 9.5664560000000005
	.quad	0x401aa640e9d51b50              # double 6.6623570000000001
	.quad	0x401e41a437824d4d              # double 7.5641030000000002
	.quad	0x4002286df82b1f68              # double 2.2697409999999998
	.quad	0x400bd99c38b04ab6              # double 3.481255
	.quad	0x4019a34e3369b9d8              # double 6.409478
	.quad	0x400ebb7739f340d5              # double 3.8415360000000001
	.quad	0x4010b1cb039ef0f1              # double 4.1736259999999996
	.quad	0x40020f227d028a1e              # double 2.25739
	.quad	0x3fe2116659d12cae              # double 0.56462400000000001
	.quad	0x401e5c9f2fdb8fde              # double 7.5904509999999998
	.quad	0x4023465b20b8066c              # double 9.6374139999999997
	.quad	0x40008640a6b93ccd              # double 2.065553
	.quad	0x40138cc144028e50              # double 4.8874560000000002
	.quad	0x40213c434e3369ba              # double 8.6177010000000003
	.quad	0x402190e1932d6ece              # double 8.7829709999999999
	.quad	0x4001184a0e410b63              # double 2.13686
	.quad	0x3ffda50507a6bd6f              # double 1.8527880000000001
	.quad	0x40196a57646ae3a4              # double 6.3538490000000003
	.quad	0x3fd35a1cac083127              # double 0.302375
	.quad	0x4016111e42e12620              # double 5.5167169999999999
	.quad	0x40225418d6909aed              # double 9.1642519999999994
	.quad	0x3fe79dd3bafd9770              # double 0.73801600000000001
	.quad	0x401d1a2a4db163bb              # double 7.2755520000000002
	.quad	0x3ff0106cca2db61c              # double 1.0040100000000001
	.quad	0x401d30a569b17482              # double 7.2975060000000003
	.quad	0x3fc5d640e9d51b50              # double 0.170601
	.quad	0x4006a567125dd096              # double 2.8307630000000001
	.quad	0x401f34007570c565              # double 7.800783
	.quad	0x4022309c3ce2089e              # double 9.0949419999999996
	.quad	0x4012575536933a04              # double 4.585286
	.quad	0x402394fdd2285660              # double 9.7909989999999993
	.quad	0x401851d7dbf487fd              # double 6.0799250000000002
	.quad	0x3ff72c7219220ff5              # double 1.4483509999999999
	.quad	0x3ff8d0b1feeb2d0a              # double 1.550951
	.quad	0x3fcc153bd1676641              # double 0.21939800000000001
	.quad	0x401502917507e9d9              # double 5.2525079999999997
	.quad	0x401111cac083126f              # double 4.2673750000000004
	.quad	0x402186e9142b302f              # double 8.7634969999999992
	.quad	0x3ff9450acc0bdcad              # double 1.579356
	.quad	0x3ffa1c78a6dacabc              # double 1.6319509999999999
	.quad	0x3fdaa619da9c9928              # double 0.41638799999999998
	.quad	0x4018bb70ef566491              # double 6.1830480000000003
	.quad	0x40186e7ab7564303              # double 6.1078900000000003
	.quad	0x40142fa2f05a708f              # double 5.0465200000000001
	.quad	0x401768d8ec95bff0              # double 5.8523899999999998
	.quad	0x40196c176577531e              # double 6.3555580000000003
	.quad	0x400641eabbcb1cc9              # double 2.7821859999999998
	.quad	0x401317739f340d4e              # double 4.7729020000000002
	.quad	0x4004f416bdb1a6d7              # double 2.6191840000000002
	.quad	0x40153d9b1b79d90a              # double 5.310162
	.quad	0x4006068900c521de              # double 2.7531910000000002
	.quad	0x3fdbc99285a921cd              # double 0.43417800000000001
	.quad	0x401e3d02cd39da16              # double 7.5595809999999997
	.quad	0x40209978b3700475              # double 8.2997490000000003
	.quad	0x4018853c579f2346              # double 6.1301129999999997
	.quad	0x400afe2ef4e0114d              # double 3.3741129999999999
	.quad	0x4003bcdc443914f5              # double 2.4672170000000002
	.quad	0x40169c521dda059a              # double 5.6526569999999996
	.quad	0x40204c71f79420b4              # double 8.1493070000000003
	.quad	0x401add72799a1fd1              # double 6.7162569999999997
	.quad	0x3fe2976577531db4              # double 0.58098099999999997
	.quad	0x3ff2c723aafff36b              # double 1.1736180000000001
	.quad	0x3f9ab042528ae74f              # double 0.026062999999999999
	.quad	0x401dd6f5caf2d7f9              # double 7.4599219999999997
	.quad	0x3fef3ade225fa659              # double 0.97593600000000002
	.quad	0x4023c23e9ea14057              # double 9.8793839999999999
	.quad	0x40204b211cb039ef              # double 8.1467369999999999
	.quad	0x4010f8f10a99b6f6              # double 4.2431070000000002
	.quad	0x40125f86a098915c              # double 4.5932870000000001
	.quad	0x40094157eed45e92              # double 3.1569060000000002
	.quad	0x3fcf0bf1a5ca2984              # double 0.24255199999999999
	.quad	0x400684463065f959              # double 2.814587
	.quad	0x40081760bf5d7881              # double 3.011415
	.quad	0x40221bf6e3f78bbd              # double 9.0546179999999996
	.quad	0x401f9a13c254a3c6              # double 7.9004659999999998
	.quad	0x4011a3cd9a52263e              # double 4.4099640000000004
	.quad	0x401862b4959e6256              # double 6.0963919999999998
	.quad	0x40109a6efc371da3              # double 4.1508139999999996
	.quad	0x401c2e06961c3697              # double 7.0449469999999996
	.quad	0x3ffc276640a6b93d              # double 1.759619
	.quad	0x401a84cd74927914              # double 6.6296900000000001
	.quad	0x40083b9841aac53b              # double 3.029099
	.quad	0x40193982cb20fb22              # double 6.3061629999999997
	.quad	0x401ab8509bf9c62a              # double 6.6799949999999999
	.quad	0x402074de7ea5f84d              # double 8.2282600000000006
	.quad	0x401857bd8be7296f              # double 6.0856839999999996
	.quad	0x400cdd3ed527e521              # double 3.6080299999999998
	.quad	0x400c92b2bfdb4cc2              # double 3.5716299999999999
	.quad	0x4019d8a9bcfd4bf1              # double 6.4615850000000004
	.quad	0x401e64f82f512663              # double 7.5986029999999997
	.quad	0x400f32e05ccc89b1              # double 3.899842
	.quad	0x4023bea8da7f3cf7              # double 9.8723819999999999
	.quad	0x401932c669057d18              # double 6.2995850000000004
	.quad	0x4018f801711947d0              # double 6.2421930000000003
	.quad	0x40222186b9c304cd              # double 9.0654810000000001
	.quad	0x402283ebbfd71b04              # double 9.2576579999999992
	.quad	0x4007316a055757d6              # double 2.8991280000000001
	.quad	0x40150c5cdd50a88f              # double 5.262073
	.quad	0x4023462174c4cdfb              # double 9.6369740000000003
	.quad	0x4007c3eb7cbb3c82              # double 2.9706640000000002
	.quad	0x40215e961c36976c              # double 8.6847390000000004
	.quad	0x401005daf07bfe7e              # double 4.0057179999999999
	.quad	0x4018a14ca925fe97              # double 6.1575189999999997
	.quad	0x40055185cee17a03              # double 2.664806
	.quad	0x401d51c2e33eff19              # double 7.3298449999999997
	.quad	0x3ffad60e94ee392e              # double 1.67726
	.quad	0x40134474d9c6b053              # double 4.8168519999999999
	.quad	0x401c05097c80841f              # double 7.0049190000000001
	.quad	0x401019b56323bbc7              # double 4.0251060000000001
	.quad	0x4013b0f16f4384ba              # double 4.9227959999999999
	.quad	0x400c21565c2d2780              # double 3.5162779999999998
	.quad	0x4001b5dd4c76d118              # double 2.2138010000000001
	.quad	0x400f85796bfca85d              # double 3.9401730000000001
	.quad	0x3fbb797460242d06              # double 0.107322
	.quad	0x401e1dc725c3dee8              # double 7.5290800000000004
	.quad	0x401c68bda9435ac9              # double 7.1022860000000003
	.quad	0x402027abfb9bed31              # double 8.0774840000000001
	.quad	0x4015edf3b645a1cb              # double 5.4823750000000002
	.quad	0x401309289dadfb50              # double 4.7589439999999996
	.quad	0x4020b2b862b27cbf              # double 8.3490629999999992
	.quad	0x400b9ec99f1ae2da              # double 3.4525329999999999
	.quad	0x4012312018a43bb4              # double 4.547974
	.quad	0x401b0d49d7ba6699              # double 6.7629770000000002
	.quad	0x3ff6733764f11b61              # double 1.4031290000000001
	.quad	0x3fe39d6f112fd32c              # double 0.61296799999999996
	.quad	0x3ffd6f20ea5b530d              # double 1.839631
	.quad	0x40010ca925fe974a              # double 2.1311819999999999
	.quad	0x3fcc49a133c1ce6c              # double 0.220997
	.quad	0x40235b91b3f20a74              # double 9.678846
	.quad	0x400c6743a647fdc6              # double 3.5504220000000002
	.quad	0x401cf382a12f9011              # double 7.2378030000000004
	.quad	0x402067e5a78f25a2              # double 8.2029239999999994
	.quad	0x4015053bd1676641              # double 5.2551110000000003
	.quad	0x401bb85058dde7a7              # double 6.9299939999999998
	.quad	0x40010e525892684d              # double 2.131993
	.quad	0x4017806290eed02d              # double 5.8753760000000002
	.quad	0x4020d2839042d8c3              # double 8.4111600000000006
	.quad	0x40218ee5471715c6              # double 8.7790929999999996
	.quad	0x40056537e2c55c96              # double 2.674423
	.quad	0x4019e1958969a0ae              # double 6.4702970000000004
	.quad	0x4023e8e453d20f2c              # double 9.9548670000000001
	.quad	0x4015fc768dfbd6a6              # double 5.4965460000000004
	.quad	0x400735c7cd898b2f              # double 2.9012600000000002
	.quad	0x3ff086338b47c73f              # double 1.032764
	.quad	0x4015f6687f455a7d              # double 5.4906329999999999
	.quad	0x4008ec55c96030c2              # double 3.1153979999999999
	.quad	0x401ab4b76f6d7625              # double 6.6764809999999999
	.quad	0x4023a93c68661ae7              # double 9.8305389999999999
	.quad	0x40208c47c30d306a              # double 8.2739849999999997
	.quad	0x400f21a6937d1fe6              # double 3.8914309999999999
	.quad	0x401877c0b1359792              # double 6.1169460000000004
	.quad	0x400333f6c2699c7c              # double 2.4003730000000001
	.quad	0x4020c639713ad5bf              # double 8.3871570000000002
	.quad	0x4023958cd20afa2f              # double 9.7920899999999999
	.quad	0x40103b6aa4b9884c              # double 4.0580239999999996
	.quad	0x3ffcaf1886df82b2              # double 1.792748
	.quad	0x40162c4007570c56              # double 5.5432129999999997
	.quad	0x4022ef1348b22079              # double 9.4669439999999998
	.quad	0x402020c804102ff9              # double 8.0640260000000001
	.quad	0x40207525aab47410              # double 8.2288029999999992
	.quad	0x4021b5f7a4e7ab75              # double 8.8554049999999993
	.quad	0x401d4cde5d18090b              # double 7.3250669999999998
	.quad	0x4022a3673c4f3ba7              # double 9.3191469999999992
	.quad	0x40158365881a1555              # double 5.378317
	.quad	0x4001f797460242d0              # double 2.2458939999999998
	.quad	0x401fb07a6bd6e8b0              # double 7.9223420000000004
	.quad	0x4020493c89f40a28              # double 8.1430399999999992
	.quad	0x401eb49667b5f1bf              # double 7.676355
	.quad	0x4020511ba3ca7504              # double 8.1584140000000004
	.quad	0x4000f8e219652bd4              # double 2.1215250000000001
	.quad	0x4018aff6d330941d              # double 6.1718400000000004
	.quad	0x4022917b95a29414              # double 9.2841459999999997
	.quad	0x401726e1deacc921              # double 5.7879709999999998
	.quad	0x4018e09a671ef30a              # double 6.2193389999999997
	.quad	0x4012456bca5375c9              # double 4.5677940000000001
	.quad	0x401696683c297bfa              # double 5.6468819999999997
	.quad	0x401467aaef2c7326              # double 5.1012380000000004
	.quad	0x3fe7ace4649906cd              # double 0.73985500000000004
	.quad	0x4022803d9a95421c              # double 9.2504699999999999
	.quad	0x3ff807789a459104              # double 1.501824
	.quad	0x40032817763e4abe              # double 2.3945759999999998
	.quad	0x3fc80ff540895d0b              # double 0.18798699999999999
	.quad	0x40109f6db940fece              # double 4.1556920000000002
	.quad	0x400a550e34762952              # double 3.291531
	.quad	0x401a19e59f2ba9d2              # double 6.52529
	.quad	0x400ee420f6f08cc5              # double 3.8613909999999998
	.quad	0x40143bb6672fba02              # double 5.0583130000000001
	.quad	0x3ff53abead4f5904              # double 1.3268420000000001
	.quad	0x4013d7e7c06e19b9              # double 4.9608449999999999
	.quad	0x40230318b9346994              # double 9.5060479999999998
	.quad	0x40214c9be8ff327b              # double 8.6496270000000006
	.quad	0x40150fc5cdd50a89              # double 5.2654030000000001
	.quad	0x401977e175d13d75              # double 6.3670710000000001
	.quad	0x4016bfc158fb43d9              # double 5.6872610000000003
	.quad	0x402351a133c1ce6c              # double 9.6594329999999999
	.quad	0x4023326aa8eb4635              # double 9.5984700000000007
	.quad	0x4013b488c60cbf2b              # double 4.9263029999999999
	.quad	0x401de4ffc9795b36              # double 7.4736320000000003
	.quad	0x40200b419e300150              # double 8.0219850000000008
	.quad	0x4022208ca3e7d135              # double 9.0635729999999999
	.quad	0x4021018c197e5647              # double 8.5030219999999996
	.quad	0x4022d16e9bbf0dc7              # double 9.4090469999999992
	.quad	0x401070e1719f7f8d              # double 4.1102350000000003
	.quad	0x4017262f5989df11              # double 5.7872899999999996
	.quad	0x4001ed3cff64cf8d              # double 2.2408389999999998
	.quad	0x4022ed130df9bdc7              # double 9.4630360000000006
	.quad	0x4016be0a41a261bf              # double 5.6855859999999998
	.quad	0x402357fd82773e25              # double 9.671856
	.quad	0x400f52428d434a02              # double 3.9151660000000001
	.quad	0x3fdbc28b2a6b0d95              # double 0.433749
	.quad	0x401fcadb402d16b9              # double 7.9481019999999995
	.quad	0x401973c5bd0e12e8              # double 6.3630589999999998
	.quad	0x40174cd962068555              # double 5.8250479999999998
	.quad	0x4002026edaa92e62              # double 2.251188
	.quad	0x40112825e13b18db              # double 4.2892070000000002
	.quad	0x4016ef4a1272c94b              # double 5.7336809999999998
	.quad	0x402172aae297396d              # double 8.7239599999999999
	.quad	0x4021e60ef99806f2              # double 8.9493329999999993
	.quad	0x401d2bd1aa821f2a              # double 7.2927920000000004
	.quad	0x4003691afc04c8bd              # double 2.4263210000000002
	.quad	0x40119fee2c98e53f              # double 4.4061820000000003
	.quad	0x3fe9343b70ef5665              # double 0.78762600000000005
	.quad	0x3ff7bfeb074a771d              # double 1.4843550000000001
	.quad	0x401634ea8da7f3cf              # double 5.5516759999999996
	.quad	0x401690a2877ee4e2              # double 5.6412449999999996
	.quad	0x40228b03c07ee0b1              # double 9.2715130000000006
	.quad	0x401675bfad299956              # double 5.6149889999999996
	.quad	0x3fe45933e35c5b4b              # double 0.63588900000000004
	.quad	0x400af27d45a5fc7e              # double 3.3684029999999998
	.quad	0x4022d394face67d7              # double 9.4132459999999991
	.quad	0x40233b8476f2a5a4              # double 9.6162449999999992
	.quad	0x40229dd3dc8b86b1              # double 9.3082569999999993
	.quad	0x4023ad78811b1d93              # double 9.8388100000000004
	.quad	0x3fd562d40aaeafab              # double 0.33415699999999998
	.quad	0x4023649fb6134ce4              # double 9.6965310000000002
	.quad	0x3ff6a10cf5b1c865              # double 1.4143190000000001
	.quad	0x40210ed99cbee808              # double 8.5290040000000005
	.quad	0x3febe994185058de              # double 0.87226300000000001
	.quad	0x400f1a2e7f6f4be8              # double 3.8877839999999999
	.quad	0x4007452157689ca2              # double 2.9087550000000002
	.quad	0x4022b334a44c7b03              # double 9.3500110000000003
	.quad	0x4010b0b7c3504c49              # double 4.1725760000000003
	.quad	0x40234163dc486ad3              # double 9.6277150000000002
	.quad	0x4004370de8f6ceff              # double 2.5268820000000001
	.quad	0x401fde047d3d4281              # double 7.9668140000000002
	.quad	0x3fe449107faa044b              # double 0.63391900000000001
	.quad	0x4020cb4f82f51266              # double 8.3970909999999996
	.quad	0x3ff3c5c896dd26b7              # double 1.235787
	.quad	0x3fe156a593a2df93              # double 0.54182699999999995
	.quad	0x4010f9aa60913a50              # double 4.2438140000000004
	.quad	0x401f182e019b0ab3              # double 7.7736130000000001
	.quad	0x3fd9e43675ddd2af              # double 0.40455400000000002
	.quad	0x3fa5ca4b124d099e              # double 0.042559
	.quad	0x4010b75a74c09c3d              # double 4.1790560000000001
	.quad	0x40181351deefe500              # double 6.0188670000000002
	.quad	0x400fc191148fd9fd              # double 3.9695149999999999
	.quad	0x4016e76295208e15              # double 5.725962
	.quad	0x40236b32acfb762e              # double 9.7093710000000009
	.quad	0x3fdc61c36976bc1f              # double 0.443467
	.quad	0x40214517c5ef62fa              # double 8.6349470000000004
	.quad	0x4014341743e963dc              # double 5.0508699999999997
	.quad	0x40086cd6c2efd439              # double 3.0531440000000001
	.quad	0x4002577292c49342              # double 2.2926989999999998
	.quad	0x4016e022dd7a99fa              # double 5.7188829999999999
	.quad	0x3fdbab7564302b41              # double 0.43234
	.quad	0x4007c22ab25b317f              # double 2.969808
	.quad	0x4018b2070b8cfbfc              # double 6.1738549999999996
	.quad	0x401d304a72ead927              # double 7.2971589999999997
	.quad	0x4013788e368f0846              # double 4.8677299999999999
	.quad	0x4022b6a8da7f3cf7              # double 9.3567569999999999
	.quad	0x402042a9d627bf62              # double 8.1302020000000006
	.quad	0x400673d6c7219221              # double 2.806562
	.quad	0x401654f00ef1348b              # double 5.5829469999999999
	.quad	0x4016f87379746024              # double 5.7426279999999998
	.quad	0x4010e30d306a2b17              # double 4.22173
	.quad	0x40210c8b65237048              # double 8.5245010000000008
	.quad	0x3fd2f4d7add15f03              # double 0.29619400000000001
	.quad	0x4021f9a6f826edab              # double 8.9876020000000008
	.quad	0x401a352007dd4413              # double 6.5518799999999997
	.quad	0x4015c1da7b0b3919              # double 5.4393099999999999
	.quad	0x3febd6b00ffda405              # double 0.86995699999999998
	.quad	0x4003f9d66adb402d              # double 2.496991
	.quad	0x3fef33c60029f16b              # double 0.97506999999999999
	.quad	0x402285eb7457c0b1              # double 9.2615619999999996
	.quad	0x4009b041cc532a49              # double 3.2110629999999998
	.quad	0x400be04189374bc7              # double 3.4845000000000002
	.quad	0x401c6438088509c0              # double 7.0978700000000003
	.quad	0x3fff662bae03b3ea              # double 1.9624440000000001
	.quad	0x4012492684cf073a              # double 4.5714360000000003
	.quad	0x3fe513059641f645              # double 0.65857200000000005
	.quad	0x401b4df82b1f687b              # double 6.8261419999999999
	.quad	0x400a8f5ec80c73ac              # double 3.3200050000000001
	.quad	0x4015395703f2d3c8              # double 5.3059960000000004
	.quad	0x4023d2fb7e90ff97              # double 9.9120749999999997
	.quad	0x401731d4738a3b58              # double 5.7986620000000002
	.quad	0x402348b1dd5d3dc9              # double 9.6419820000000004
	.quad	0x401c977d523b3637              # double 7.147939
	.quad	0x40154cebbba55d1c              # double 5.3251179999999998
	.quad	0x3ff87e920c069e80              # double 1.5309010000000001
	.quad	0x4015923422467be5              # double 5.3927769999999997
	.quad	0x40075004fb1183b6              # double 2.914072
	.quad	0x4016d97e56473472              # double 5.712396
	.quad	0x401e599029ae4f33              # double 7.5874639999999997
	.quad	0x401dd012dfd694cd              # double 7.4531970000000003
	.quad	0x40214f316e371540              # double 8.654674
	.quad	0x4000ceaf251c193b              # double 2.1009199999999999
	.quad	0x400420852b4d8ba4              # double 2.515879
	.quad	0x400c8897635e742a              # double 3.5666950000000002
	.quad	0x400693996fa82e88              # double 2.8220700000000001
	.quad	0x40117012599ed7c7              # double 4.359445
	.quad	0x40157d05af6c69b6              # double 5.3720920000000003
	.quad	0x3fe281f75104d552              # double 0.57836500000000002
	.quad	0x400cffab96f21f6d              # double 3.6248390000000001
	.quad	0x40207468a936c58f              # double 8.2273610000000001
	.quad	0x3fb63d5fdcdf6988              # double 0.086874000000000007
	.quad	0x4007768f08461f9f              # double 2.93289
	.quad	0x400146a11ec918e3              # double 2.1594869999999999
	.quad	0x401ebd434a01abd2              # double 7.6848270000000003
	.quad	0x3fc85953586ca8a0              # double 0.19022600000000001
	.quad	0x4012055c52e72da1              # double 4.5052349999999999
	.quad	0x4013ff405f6ba062              # double 4.999269
	.quad	0x40135e0c9d9d3459              # double 4.8418450000000002
	.quad	0x3fe7e9b17481b21c              # double 0.74727699999999997
	.quad	0x4022d85015c20924              # double 9.4224859999999992
	.quad	0x3fd5209246bf0132              # double 0.33011299999999999
	.quad	0x3fec822ff08893b8              # double 0.89089200000000002
	.quad	0x401eb4039abf3387              # double 7.6757949999999999
	.quad	0x400e8ac1094a2b9d              # double 3.8177509999999999
	.quad	0x3ff18d9513f8db49              # double 1.0970660000000001
	.quad	0x40006203e63e8dda              # double 2.0478589999999999
	.quad	0x400e2e581cf7878b              # double 3.7726289999999998
	.quad	0x4022d8f9b13165d4              # double 9.4237800000000007
	.quad	0x3fdf17ebaf102364              # double 0.48583500000000002
	.quad	0x3ff4eba0620ab713              # double 1.307526
	.quad	0x3ff06c9f2fdb8fde              # double 1.026519
	.quad	0x3fee6a37ac3eb7cc              # double 0.95046600000000003
	.quad	0x401cef97edc7ef17              # double 7.2339779999999996
	.quad	0x3fae19da9c99285b              # double 0.058791000000000003
	.quad	0x40166f2cb641700d              # double 5.6085690000000001
	.quad	0x4014c76ddaceee0f              # double 5.1947549999999998
	.quad	0x4010c63305100a39              # double 4.1935539999999998
	.quad	0x40219fa80cf9e386              # double 8.8118289999999995
	.quad	0x401a94790b849881              # double 6.6449930000000004
	.quad	0x4020beef8055fbb5              # double 8.3729209999999998
	.quad	0x401343165d3996fb              # double 4.8155150000000004
	.quad	0x40111b7c3504c48b              # double 4.2768410000000001
	.quad	0x4023a144cbe1eb42              # double 9.814978
	.quad	0x400c812513b5bf6a              # double 3.563059
	.quad	0x40120e481f53825e              # double 4.5139469999999999
	.quad	0x401f7b78cc9a77e6              # double 7.8705780000000001
	.quad	0x3ff73c6fbd273d5c              # double 1.4522550000000001
	.quad	0x4005c7faa044ae86              # double 2.7226460000000001
	.quad	0x400531d712a0ec74              # double 2.6493359999999999
	.quad	0x402203b6ed677708              # double 9.0072550000000007
	.quad	0x401ffa35d67ba238              # double 7.9943460000000001
	.quad	0x3fe8abf338716095              # double 0.77098999999999995
	.quad	0x3fa8ee49f51697f2              # double 0.048693
	.quad	0x4012756c0d6f544c              # double 4.6146700000000003
	.quad	0x400fe82491afc04d              # double 3.9883510000000002
	.quad	0x3fe1dc63ae2541d9              # double 0.55815300000000001
	.quad	0x3fe57b762d83c6c9              # double 0.67132099999999995
	.quad	0x401e414b599aa609              # double 7.5637639999999999
	.quad	0x402234edb2f661f2              # double 9.1033760000000008
	.quad	0x400e105d0fa58f71              # double 3.7579899999999999
	.quad	0x402143951c5c5719              # double 8.6319970000000001
	.quad	0x3ff2e2ff08893b7e              # double 1.1804190000000001
	.quad	0x3ff37587d6f97679              # double 1.216194
	.quad	0x400fafdc1615ebfb              # double 3.9608690000000002
	.quad	0x401c7a60913a4f87              # double 7.1195089999999999
	.quad	0x401a9595bbbe8790              # double 6.6460790000000003
	.quad	0x3ff8d205bc01a36e              # double 1.551275
	.quad	0x4023f373f316e371              # double 9.9754939999999994
	.quad	0x3fed4cee5abc0e39              # double 0.91564100000000004
	.quad	0x4002bd53cddd6e05              # double 2.3424450000000001
	.quad	0x401abebedfa43fe6              # double 6.6862750000000002
	.quad	0x40193f0b6b6e0d24              # double 6.3115670000000001
	.quad	0x401c15baf533f423              # double 7.0212209999999997
	.quad	0x4004e1dc93ea2d30              # double 2.610284
	.quad	0x401f0d15ad106ee3              # double 7.7627779999999999
	.quad	0x401d26c764adff82              # double 7.2878699999999998
	.quad	0x401870e0a84be404              # double 6.1102319999999999
	.quad	0x40097a4ce8101f32              # double 3.184717
	.quad	0x40085de58e64b231              # double 3.0458479999999999
	.quad	0x3ff6a8e71476af8a              # double 1.4162360000000001
	.quad	0x40203f4927913e81              # double 8.1236049999999995
	.quad	0x3ff2473de1e2de87              # double 1.142393
	.quad	0x4015564c2f837b4a              # double 5.3342749999999999
	.quad	0x3fdcf45176145953              # double 0.45241199999999998
	.quad	0x3ff29a9b8cb8e087              # double 1.1627460000000001
	.quad	0x4020f82bc72e275b              # double 8.4847090000000005
	.quad	0x401c7cbab649d389              # double 7.1218060000000003
	.quad	0x400c4e581cf7878b              # double 3.5382539999999998
	.quad	0x401dc03d145d8516              # double 7.4377329999999997
	.quad	0x3ff0f9baa1511e00              # double 1.0609690000000001
	.quad	0x40124d028a1dfb94              # double 4.5752050000000004
	.quad	0x4022837457c0b136              # double 9.2567470000000007
	.quad	0x3ff6a69270b06c44              # double 1.415667
	.quad	0x4016b0c9539b8887              # double 5.6726429999999999
	.quad	0x3ff529fcf3dc054f              # double 1.322751
	.quad	0x401f743d89ce4a7b              # double 7.8635159999999997
	.quad	0x401166e0d23d4f16              # double 4.3504670000000001
	.quad	0x40213cacd184c272              # double 8.618506
	.quad	0x4023afee0b0af5fd              # double 9.8436129999999995
	.quad	0x401e34e7ab756430              # double 7.5516649999999998
	.quad	0x3ffe3bb0e5e67946              # double 1.8895729999999999
	.quad	0x401f8160956c0d6f              # double 7.8763449999999997
	.quad	0x3ffa9e58e64b2314              # double 1.663659
	.quad	0x3ff5cb5fe542e558              # double 1.362152
	.quad	0x401eb02107b78466              # double 7.6720009999999998
	.quad	0x4015323d9231c64c              # double 5.2990630000000003
	.quad	0x4014ff633ce63a5c              # double 5.2494019999999999
	.quad	0x401fd969a0ad8a11              # double 7.9623169999999996
	.quad	0x4013c646f1561911              # double 4.9436299999999997
	.quad	0x3fcc37ef5a964e8b              # double 0.22045699999999999
	.quad	0x4004149cf56eac86              # double 2.510065
	.quad	0x401a76e47dc37a3e              # double 6.6161060000000003
	.quad	0x4006a22ab25b317f              # double 2.829183
	.quad	0x401b902c4d65e460              # double 6.8907939999999996
	.quad	0x401fcbba12b5e52a              # double 7.9489520000000002
	.quad	0x3fe15e7210be9425              # double 0.54277900000000001
	.quad	0x4016d7ae147ae148              # double 5.7106250000000003
	.quad	0x400326ae3a3a8e71              # double 2.3938869999999999
	.quad	0x401da02795703f2d              # double 7.4064009999999998
	.quad	0x400c4225742dcf46              # double 3.5322979999999999
	.quad	0x4017b807789a4591              # double 5.929716
	.quad	0x4018343419e30015              # double 6.05098
	.quad	0x401d3603d577963a              # double 7.3027490000000004
	.quad	0x3ff1ca87e38eb032              # double 1.1119460000000001
	.quad	0x401007b634dad320              # double 4.0075310000000002
	.quad	0x400060cb6c7a7c9e              # double 2.0472630000000001
	.quad	0x4012f87a8d64d7f1              # double 4.7426550000000001
	.quad	0x4020af55de58e64b              # double 8.3424519999999998
	.quad	0x401f55082cf52b91              # double 7.8330390000000003
	.quad	0x4021997fe8ee6b83              # double 8.799804
	.quad	0x4014275fb2edfe76              # double 5.0384510000000002
	.quad	0x4011f100e6afcce2              # double 4.4853550000000002
	.quad	0x3ff75eff9f87f024              # double 1.460693
	.quad	0x4022aeb18116ebd5              # double 9.3411980000000003
	.quad	0x4019b5ae1cde5d18              # double 6.427422
	.quad	0x401d8abcd78c4370              # double 7.3854860000000002
	.quad	0x4022474a771c970f              # double 9.1392399999999991
	.quad	0x401a77f3061c79b3              # double 6.6171379999999997
	.quad	0x40100bd44998d046              # double 4.011552
	.quad	0x400128323358f2e0              # double 2.1446269999999998
	.quad	0x401e8fdef8487b9a              # double 7.6404990000000002
	.quad	0x402133167ec7863c              # double 8.5997810000000001
	.quad	0x4011253d640e9d52              # double 4.2863670000000003
	.quad	0x400d74467381d7dc              # double 3.681775
	.quad	0x40205d21144cbe1f              # double 8.1818930000000005
	.quad	0x3ff9dc75818c5c9a              # double 1.616323
	.quad	0x4017f57eed45e918              # double 5.9897419999999997
	.quad	0x400e1a3ca7503b82              # double 3.7628110000000001
	.quad	0x4018bd1dcd7060bb              # double 6.1846839999999998
	.quad	0x401d2af81626b2f2              # double 7.2919619999999998
	.quad	0x40200e136e71cda3              # double 8.0274920000000005
	.quad	0x401bb904f6dfc5ce              # double 6.9306830000000001
	.quad	0x40137d12018a43bb              # double 4.8721389999999998
	.quad	0x4012d1c3efae7925              # double 4.7048490000000003
	.quad	0x401f8cc2d6a9c561              # double 7.8874620000000001
	.quad	0x4021154d4024b33e              # double 8.5416050000000006
	.quad	0x4019b1919ac79703              # double 6.4234070000000001
	.quad	0x401059fe004b7f5a              # double 4.0878829999999997
	.quad	0x4021b668e3ef2841              # double 8.8562689999999993
	.quad	0x4013360cbf2b239a              # double 4.8027829999999998
	.quad	0x3ff5bd8383ad9f0a              # double 1.358768
	.quad	0x400e68398a654930              # double 3.800891
	.quad	0x401027f950b955f8              # double 4.0390370000000004
	.quad	0x3fdfe1deacc92147              # double 0.49816100000000002
	.quad	0x400a74cb9ecf6380              # double 3.307029
	.quad	0x4020350dcfcc5b8e              # double 8.1036210000000004
	.quad	0x4010b476f2a5a46a              # double 4.1762350000000001
	.quad	0x3ff31d4a5df2239e              # double 1.1946509999999999
	.quad	0x4011cfbc1acde1a0              # double 4.4528660000000002
	.quad	0x401b2d8c2a454de8              # double 6.7944800000000001
	.quad	0x400e7327aa68f4b6              # double 3.8062279999999999
	.quad	0x4012906c00da1a93              # double 4.6410369999999999
	.quad	0x401e570ef566490a              # double 7.5850179999999998
	.quad	0x4014bc6fbd273d5c              # double 5.1840200000000003
	.quad	0x401478e9b38d60a6              # double 5.1180789999999998
	.quad	0x400bd6709fa54c55              # double 3.4797069999999999
	.quad	0x3ff9c567125dd096              # double 1.6106940000000001
	.quad	0x4022dea6c1a048e0              # double 9.4348659999999995
	.quad	0x4000131e3a7daa50              # double 2.0093350000000001
	.quad	0x40213b90214ad363              # double 8.6163340000000002
	.quad	0x400e6ccf6be37de9              # double 3.8031299999999999
	.quad	0x401565efe9318762              # double 5.3495480000000004
	.quad	0x4015d405f6ba0621              # double 5.4570540000000003
	.quad	0x401f985c67dfe32a              # double 7.89879
	.quad	0x3fb6974a3400b88d              # double 0.088246000000000005
	.quad	0x3fd09ed3953dea46              # double 0.25969399999999998
	.quad	0x40148a0407cc7d1c              # double 5.1347810000000003
	.quad	0x401eb71f36262cba              # double 7.6788299999999996
	.quad	0x3ff54adcd2d44dcb              # double 1.3307770000000001
	.quad	0x400e0672756861e9              # double 3.7531479999999999
	.quad	0x4012c17c5ef62f9d              # double 4.6889510000000003
	.quad	0x4018dda059a73b43              # double 6.2164320000000002
	.quad	0x40105926c7eae5bd              # double 4.0870620000000004
	.quad	0x3ff42b6e0d23d4f1              # double 1.2606029999999999
	.quad	0x4023217f1f9acffa              # double 9.5654229999999991
	.quad	0x3fc6fe1da7b0b392              # double 0.17963000000000001
	.quad	0x40232ad3a604e1e7              # double 9.5836459999999998
	.quad	0x400d5ef62f9ca5be              # double 3.6713680000000002
	.quad	0x4014cf70153bd167              # double 5.2025759999999996
	.quad	0x400c0c069e7fb268              # double 3.5058720000000001
	.quad	0x4016531876188b11              # double 5.5811479999999998
	.quad	0x3fc862dc6e2a8006              # double 0.19051699999999999
	.quad	0x4021c4bd987c6328              # double 8.8842590000000001
	.quad	0x3fa0e5c4eb56fb8f              # double 0.033002999999999998
	.quad	0x3ff39333b96af039              # double 1.223438
	.quad	0x4017b31876188b11              # double 5.9248979999999998
	.quad	0x40140f1950331e3a              # double 5.0147449999999996
	.quad	0x4023b9552e2fbe34              # double 9.8619780000000005
	.quad	0x4021ee2584f4c6e7              # double 8.9651300000000003
	.quad	0x401e731769a91106              # double 7.6123940000000001
	.quad	0x401a4f51697f1f9b              # double 6.5774590000000002
	.quad	0x4004035935fc3b4f              # double 2.5016349999999998
	.quad	0x401e6e2f7b17ce53              # double 7.6076030000000001
	.quad	0x3ff92273929ed395              # double 1.5709109999999999
	.quad	0x401e295b78cc9a78              # double 7.540388
	.quad	0x40042d7add15f02c              # double 2.5222069999999999
	.quad	0x3ff449f40a2877ee              # double 1.2680549999999999
	.quad	0x4005926634117f84              # double 2.6964839999999999
	.quad	0x4013b06c8711d799              # double 4.9222890000000001
	.quad	0x40199f30e7ff583a              # double 6.4054599999999997
	.quad	0x4006cd9dfdac68a9              # double 2.8503989999999999
	.quad	0x3ff4118c197e5647              # double 1.254284
	.quad	0x402336df61240746              # double 9.6071729999999995
	.quad	0x401a7979e16d6dc2              # double 6.6186290000000003
	.quad	0x400ce5f9df548ece              # double 3.6122930000000002
	.quad	0x401db25d8d79d0a6              # double 7.4241849999999996
	.quad	0x3ffa56073de1e2df              # double 1.6460030000000001
	.quad	0x4013da137f38c543              # double 4.9629649999999996
	.quad	0x3ff75c9f72f76e61              # double 1.460113
	.quad	0x401596a2f48c2e77              # double 5.397106
	.quad	0x401be1cd5f99c38b              # double 6.97051
	.quad	0x400ff78dd616f86a              # double 3.995876
	.quad	0x401fa38c5436b8fa              # double 7.9097150000000003
	.quad	0x3ff288fc9363f573              # double 1.158444
	.quad	0x401e1c158fb43d8a              # double 7.5274260000000002
	.quad	0x400ae0902de00d1b              # double 3.3596499999999998
	.quad	0x400c90dbf0563ed1              # double 3.570732
	.quad	0x3fe4cdb7ae5796c0              # double 0.65011200000000002
	.quad	0x3fe9674afd545415              # double 0.79385899999999998
	.quad	0x401603022dd7a9a0              # double 5.5029380000000003
	.quad	0x3ff7303d145d8516              # double 1.4492769999999999
	.quad	0x401d068f4b61fe22              # double 7.2564060000000001
	.quad	0x4022be71476af89c              # double 9.3719579999999993
	.quad	0x4020e71e8e608073              # double 8.4514049999999994
	.quad	0x3ff3eeb3dd11be6e              # double 1.2457769999999999
	.quad	0x401f270435efa616              # double 7.7881020000000003
	.quad	0x401cc314445aa2e4              # double 7.1905070000000002
	.quad	0x4015bf4517614595              # double 5.4367869999999998
	.quad	0x3f625bb7b6bb1290              # double 0.0022409999999999999
	.quad	0x4023a947f1305964              # double 9.8306269999999997
	.quad	0x4016447e8ccdd93c              # double 5.5668889999999998
	.quad	0x4022b805e5f30e80              # double 9.3594200000000001
	.quad	0x4023938023a6ce36              # double 9.7880870000000009
	.quad	0x401ddc985f06f694              # double 7.4654249999999998
	.quad	0x40192215fcc1871e              # double 6.2832869999999996
	.quad	0x40132cb4289118c2              # double 4.7936560000000004
	.quad	0x3fe91934efcbd556              # double 0.784327
	.quad	0x401717e73a365cb3              # double 5.7733429999999997
	.quad	0x402394a0a0f4d7ae              # double 9.7902880000000003
	.quad	0x40168d71b0468449              # double 5.6381290000000002
	.quad	0x401c910e8858ff76              # double 7.1416570000000004
	.quad	0x40200c864883fd50              # double 8.0244619999999998
	.quad	0x4022aae2da554b8c              # double 9.3337620000000001
	.quad	0x3fe64c9c90c4dec2              # double 0.69685200000000003
	.quad	0x4014db6805a2d730              # double 5.214264
	.quad	0x4011ff85510d38ce              # double 4.4995320000000003
	.quad	0x40225c24e5929670              # double 9.1799689999999998
	.quad	0x40226210385c67e0              # double 9.1915300000000002
	.quad	0x4022f6ef1bac2df1              # double 9.4822930000000003
	.quad	0x4014d38b47c73eee              # double 5.2065859999999997
	.quad	0x401cdbe9c886162f              # double 7.2147589999999999
	.quad	0x401500a17b0f6ad7              # double 5.2506159999999999
	.quad	0x402146a465a57647              # double 8.6379730000000006
	.quad	0x4010864f54d1e96c              # double 4.1311619999999998
	.quad	0x401e769552e2fbe3              # double 7.6158039999999997
	.quad	0x4022d6abbcb1cc96              # double 9.4192789999999995
	.quad	0x401bc77ab324851b              # double 6.9448040000000004
	.quad	0x402013e1a8262457              # double 8.0388310000000001
	.quad	0x4014ba51a005c465              # double 5.1819519999999999
	.quad	0x401b66ce358298cc              # double 6.8503959999999999
	.quad	0x4008ab1d4f9c1f86              # double 3.0835520000000001
	.quad	0x400cf003686a4ca5              # double 3.617194
	.quad	0x40048558644523f6              # double 2.5651099999999998
	.quad	0x401d39bbf0dc768e              # double 7.306381
	.quad	0x3fcc15fcc1871e6d              # double 0.219421
	.quad	0x3fbcdf37329c347f              # double 0.11278100000000001
	.quad	0x4010ddcb5781c715              # double 4.216596
	.quad	0x3fda2c343b70ef56              # double 0.40894799999999998
	.quad	0x3ff4fe6c4c5974e6              # double 1.3121149999999999
	.quad	0x4020df39085f4a12              # double 8.4359819999999992
	.quad	0x3ff465c3dee78184              # double 1.274845
	.quad	0x3fe6954a7f8012e0              # double 0.70572400000000002
	.quad	0x40126bcba3012168              # double 4.6052689999999998
	.quad	0x4019d6634117f844              # double 6.4593629999999997
	.quad	0x4020a4692f6e8295              # double 8.3211150000000007
	.quad	0x4020db8759253544              # double 8.4287670000000005
	.quad	0x402200bbd3804535              # double 9.0014330000000005
	.quad	0x4010ed96e9bbf0dc              # double 4.2320209999999996
	.quad	0x4009cd373affb04f              # double 3.225203
	.quad	0x3ffee26f60e0eb68              # double 1.9302820000000001
	.quad	0x4018f98676a7264a              # double 6.2436769999999999
	.quad	0x402054fc3f811f4f              # double 8.1659869999999994
	.quad	0x3fe7b97dd00f776c              # double 0.74139299999999997
	.quad	0x401b90c6b484d76b              # double 6.8913830000000003
	.quad	0x4010df61aa3f034b              # double 4.218146
	.quad	0x40025f401c4fc1df              # double 2.2965089999999999
	.quad	0x4010d94680171194              # double 4.2121829999999996
	.quad	0x4018f34efcbd5561              # double 6.2376060000000004
	.quad	0x4020863da2f8bdec              # double 8.2621889999999993
	.quad	0x4009e1e0c5a8155d              # double 3.2352919999999998
	.quad	0x4015c443d46b26c0              # double 5.4416650000000004
	.quad	0x40181d7e45803cd1              # double 6.0288019999999998
	.quad	0x4021e87bbb62413e              # double 8.9540690000000005
	.quad	0x4022e2fb3b752114              # double 9.4433229999999994
	.quad	0x40119fa7a85015c2              # double 4.405913
	.quad	0x4011a40bfe3b03e2              # double 4.410202
	.quad	0x401663f3e0370cdd              # double 5.5976100000000004
	.quad	0x3fe3d604189374bc              # double 0.61987499999999995
	.quad	0x400be5a682b62846              # double 3.4871340000000002
	.quad	0x3fe9310dbf0563ed              # double 0.78723799999999999
	.quad	0x4023b05d31337eb3              # double 9.8444610000000007
	.quad	0x401eebe835dedf1e              # double 7.730378
	.quad	0x4013215831f03d14              # double 4.7825629999999997
	.quad	0x40219f9b13165d3a              # double 8.8117300000000007
	.quad	0x400efb62413db7f1              # double 3.8727459999999998
	.quad	0x4023ec384ba0e842              # double 9.9613669999999992
	.quad	0x402370a009f62307              # double 9.7199709999999992
	.quad	0x401eea85caafbc1b              # double 7.7290260000000001
	.quad	0x4003ee789e774eec              # double 2.491441
	.quad	0x3ffae013660e51d2              # double 1.6797059999999999
	.quad	0x3fe6b35f3d7d3911              # double 0.70939600000000003
	.quad	0x401fc7a80cf9e386              # double 7.9449769999999997
	.quad	0x401a85bab21815a0              # double 6.6305949999999996
	.quad	0x3fc174ddf86e3b47              # double 0.136379
	.quad	0x4022fb1769a91106              # double 9.4904130000000002
	.quad	0x3fe5e514c22ee419              # double 0.68421399999999999
	.quad	0x400ba2bf9830e3ce              # double 3.4544670000000002
	.quad	0x400a4c36544fe36d              # double 3.2872129999999999
	.quad	0x402389c864883fd5              # double 9.7691069999999999
	.quad	0x3fff6e158750c1b9              # double 1.9643759999999999
	.quad	0x4017618ac9f2fdb9              # double 5.845256
	.quad	0x4020259a73b42cc3              # double 8.0734440000000003
	.quad	0x40024275ab7dc7ac              # double 2.282451
	.quad	0x401d36deb95e5aff              # double 7.3035839999999999
	.quad	0x40153a51a005c465              # double 5.3069519999999999
	.quad	0x3ffcbc42a66dbd73              # double 1.7959620000000001
	.quad	0x401adcc8de2ac322              # double 6.7156099999999999
	.quad	0x4022b16073de1e2e              # double 9.3464390000000002
	.quad	0x4015a829cfdd2285              # double 5.4142219999999996
	.quad	0x3ff52b7aa25d8d7a              # double 1.323115
	.quad	0x401536bb1290257d              # double 5.3034480000000004
	.quad	0x3ffbb9e8c47a17f4              # double 1.732888
	.quad	0x4015af7403dddb12              # double 5.421341
	.quad	0x3ff57825e13b18db              # double 1.3418330000000001
	.quad	0x4000709a671ef30a              # double 2.0549819999999999
	.quad	0x401ddb97785729b3              # double 7.4644450000000004
	.quad	0x40208ec2acb85a4f              # double 8.278829
	.quad	0x400a4e88df37329c              # double 3.2883469999999999
	.quad	0x4012080389f83be6              # double 4.5078259999999997
	.quad	0x401b7a326e115593              # double 6.8693330000000001
	.quad	0x3fd4ab4b72c5197a              # double 0.32295499999999999
	.quad	0x402247dbd2fa0d78              # double 9.1403490000000005
	.quad	0x3fea969e3c968944              # double 0.83088600000000001
	.quad	0x40155707182235b5              # double 5.3349880000000001
	.quad	0x400eb5a4acf312b2              # double 3.8386930000000001
	.quad	0x402140342aa9f7b6              # double 8.6253980000000006
	.quad	0x400224ba94bbe447              # double 2.2679339999999999
	.quad	0x401de799e518f3ed              # double 7.4761730000000002
	.quad	0x401d88eda22f6a51              # double 7.3837190000000001
	.quad	0x4021778316a05575              # double 8.7334219999999991
	.quad	0x400bfc6e2a80064b              # double 3.4982570000000002
	.quad	0x40125b68cef672b9              # double 4.5892670000000004
	.quad	0x4002d4751ce28ed6              # double 2.353739
	.quad	0x400628405b39e27a              # double 2.7696540000000001
	.quad	0x40203b6805a2d730              # double 8.116028
	.quad	0x40209747b677f6b2              # double 8.2954690000000006
	.quad	0x3fe5afd32c625e9a              # double 0.67771300000000001
	.quad	0x4008e232096787cf              # double 3.1104470000000002
	.quad	0x40229ba71151611c              # double 9.3040090000000006
	.quad	0x40212ce63a5c1c61              # double 8.5876940000000008
	.quad	0x3fc1a02fb5d03105              # double 0.13770099999999999
	.quad	0x4018f61cbccf28c8              # double 6.2403440000000003
	.quad	0x400fce4fb97bb731              # double 3.9757380000000002
	.quad	0x4011c901d19157ac              # double 4.4462960000000002
	.quad	0x40185a4f00ef1349              # double 6.0881920000000003
	.quad	0x3fc28049667b5f1c              # double 0.14454
	.quad	0x401081e18efbb0e6              # double 4.1268370000000001
	.quad	0x401861d6cf850df1              # double 6.0955459999999997
	.quad	0x401015208e150119              # double 4.020632
	.quad	0x3fc94906034f3fd9              # double 0.19754099999999999
	.quad	0x40077c5718eb8950              # double 2.9357129999999998
	.quad	0x401a4d1e53a81dc1              # double 6.5753110000000001
	.quad	0x401d655757d5a9eb              # double 7.3489659999999999
	.quad	0x40120a3ec02f2f98              # double 4.5100049999999996
	.quad	0x40238140bbb1f256              # double 9.7524470000000001
	.quad	0x3fd90364388ebcc7              # double 0.39083200000000001
	.quad	0x3fefe7ee9142b303              # double 0.997062
	.quad	0x40100558644523f6              # double 4.0052199999999996
	.quad	0x40158162ae4b0186              # double 5.3763529999999999
	.quad	0x40042f31b152f3c3              # double 2.5230440000000001
	.quad	0x401cda3a08398a65              # double 7.2131119999999997
	.quad	0x3ff7aa8eb463497b              # double 1.4791399999999999
	.quad	0x4013e80e06530058              # double 4.9766159999999999
	.quad	0x4005aeaa6d267408              # double 2.710286
	.quad	0x4021f5ee99a62ed3              # double 8.9803359999999994
	.quad	0x401710caa326e115              # double 5.7663979999999997
	.quad	0x4004469a4df47f99              # double 2.5344739999999999
	.quad	0x40206b69552e2fbe              # double 8.2097879999999996
	.quad	0x3ff243bb40b34e77              # double 1.1415360000000001
	.quad	0x3fe533ca31e7d999              # double 0.66257200000000005
	.quad	0x3fea3584b1ab0857              # double 0.81903300000000001
	.quad	0x401c694812be48a6              # double 7.1028140000000004
	.quad	0x401b9b6177ea1c69              # double 6.9017390000000001
	.quad	0x3ff79d52c16df3f9              # double 1.4759089999999999
	.quad	0x4016a8dd1e53a81e              # double 5.6649060000000002
	.quad	0x400876bebe1650a4              # double 3.0579809999999998
	.quad	0x401a7e1ac57e23f2              # double 6.6231489999999997
	.quad	0x3ff051ed9dfdac69              # double 1.0200020000000001
	.quad	0x4022483621fafc8b              # double 9.141038
	.quad	0x4012a9e98dcdb37d              # double 4.6659300000000004
	.quad	0x3ff67bf0dc768dfc              # double 1.405259
	.quad	0x401f6e68e3ef2841              # double 7.8578219999999996
	.quad	0x40097ed634549b63              # double 3.1869320000000001
	.quad	0x400a4bddb9841aac              # double 3.2870439999999999
	.quad	0x401b72a497fa5d29              # double 6.8619560000000002
	.quad	0x40220e1f3a57eaa3              # double 9.0275820000000007
	.quad	0x401e74dec1c1d6d0              # double 7.6141310000000004
	.quad	0x3fd37bc3c5bd0e13              # double 0.30442900000000001
	.quad	0x4016a1cfbb949625              # double 5.6580190000000004
	.quad	0x4015df190d173fb8              # double 5.4678690000000003
	.quad	0x4011b7b677f6b1a3              # double 4.4294070000000003
	.quad	0x401512b3461309c8              # double 5.268262
	.quad	0x4013c2f512663411              # double 4.9403879999999996
	.quad	0x4012209f1f14983d              # double 4.5318569999999996
	.quad	0x4020fc0df58c08b7              # double 8.4922939999999993
	.quad	0x400b009c3ce2089e              # double 3.3752979999999999
	.quad	0x40207f20c8cd63cc              # double 8.2482970000000008
	.quad	0x401d9b2e9ccb7d41              # double 7.4015449999999996
	.quad	0x401c4a469d7342ee              # double 7.0725350000000002
	.quad	0x3fe93317efe0ce0c              # double 0.78748700000000004
	.quad	0x3ffcc1aef6f8f041              # double 1.7972859999999999
	.quad	0x40203dcbddb9841b              # double 8.1206960000000006
	.quad	0x401b571151611ba4              # double 6.8350270000000002
	.quad	0x40067bbb62413db8              # double 2.810416
	.quad	0x40029ac929aa1d75              # double 2.3255789999999998
	.quad	0x3ffdfa615a8deb10              # double 1.8736280000000001
	.quad	0x401ea7aaef2c7326              # double 7.6637380000000004
	.quad	0x4005d1e3a7daa4fd              # double 2.7274850000000002
	.quad	0x40218df548ecd8dc              # double 8.7772620000000003
	.quad	0x3ff2914b167ec786              # double 1.1604719999999999
	.quad	0x4002ae8858ff7597              # double 2.3352210000000002
	.quad	0x400b76b1a2a4db16              # double 3.4329559999999999
	.quad	0x401211187e7c06e2              # double 4.5166950000000003
	.quad	0x4014e7fe08aefb2b              # double 5.2265550000000003
	.quad	0x401a404816f0068e              # double 6.5627750000000002
	.quad	0x402330d0aaa7ded7              # double 9.5953420000000004
	.quad	0x40214621d96e9bbf              # double 8.6369769999999999
	.quad	0x401b2201cd5f99c4              # double 6.7832100000000004
	.quad	0x401c55f633ce63a6              # double 7.0839470000000002
	.quad	0x402015ef416bdb1a              # double 8.0428409999999992
	.quad	0x401197bf61aa3f03              # double 4.3981909999999997
	.quad	0x401e0cf1c3265ade              # double 7.5126410000000003
	.quad	0x3ff47ce2089e3433              # double 1.280489
	.quad	0x40100d72367e414e              # double 4.0131309999999996
	.quad	0x4003eb2b777d0f1f              # double 2.4898289999999998
	.quad	0x4017bd4c76d117b5              # double 5.9348619999999999
	.quad	0x4022a38305d95dd5              # double 9.3193590000000004
	.quad	0x4011764ba94bbe44              # double 4.3655229999999996
	.quad	0x4014329dc725c3df              # double 5.0494300000000001
	.quad	0x40198aa3ad18d25f              # double 6.3853900000000001
	.quad	0x4017008d08919ef9              # double 5.7505379999999997
	.quad	0x400cc44f1a1986ba              # double 3.5958540000000001
	.quad	0x4000fcaa7589efd8              # double 2.1233719999999998
	.quad	0x4001a8765ba6efc3              # double 2.2072569999999998
	.quad	0x40223b3cc4ac6cdb              # double 9.1156980000000001
	.quad	0x401e7d07c84b5dcc              # double 7.6220999999999997
	.quad	0x4004a1f080303c08              # double 2.579072
	.quad	0x40144f71eafee6fb              # double 5.0775829999999997
	.quad	0x401b2fa1e3eaf683              # double 6.7965159999999996
	.quad	0x400e928c79f66623              # double 3.8215569999999999
	.quad	0x401bd8eb463497b7              # double 6.9618349999999998
	.quad	0x401eebfc2224edf6              # double 7.7304539999999999
	.quad	0x3ff6711e85fd04a3              # double 1.402617
	.quad	0x402111e6ab9b23dd              # double 8.5349629999999994
	.quad	0x400fbce52deca255              # double 3.9672339999999999
	.quad	0x401b276ee73e681b              # double 6.7885090000000003
	.quad	0x401a125e56cd6c2f              # double 6.517938
	.quad	0x3fdb494d50ebaade              # double 0.42634899999999998
	.quad	0x4016b7b352a84381              # double 5.6793950000000004
	.quad	0x400ac213a0c6b485              # double 3.3447640000000001
	.quad	0x402194e3bcd35a86              # double 8.7908000000000008
	.quad	0x401d10f94c87980f              # double 7.2665759999999997
	.quad	0x401a024cc6822ff1              # double 6.5022460000000004
	.quad	0x3f9e9ee45c358afc              # double 0.029902999999999999
	.quad	0x400fb3f9e7b80a9e              # double 3.962879
	.quad	0x40125a5ca29845dd              # double 4.5882440000000004
	.quad	0x4022c57a56de3327              # double 9.3856990000000006
	.quad	0x401dab1f255f351a              # double 7.4171110000000002
	.quad	0x401b890d173fb7a6              # double 6.883839
	.quad	0x40101ee8d10f51ad              # double 4.0301850000000004
	.quad	0x400b5635610adcd3              # double 3.4170940000000001
	.quad	0x401560c804102ff9              # double 5.3445130000000001
	.quad	0x40199d5f56a7ac82              # double 6.4036840000000002
	.quad	0x3ffbbe414e7ee914              # double 1.733949
	.quad	0x40159c80c73abc94              # double 5.4028349999999996
	.quad	0x4006137c99ae924f              # double 2.7595149999999999
	.quad	0x400ca436fc158fb4              # double 3.5801829999999999
	.quad	0x4021b389f83be660              # double 8.8506619999999998
	.quad	0x4022936bf444e0db              # double 9.2879330000000007
	.quad	0x401708548a9bcfd5              # double 5.7581350000000002
	.quad	0x402377a919695d92              # double 9.7337120000000006
	.quad	0x401355a57646ae3a              # double 4.8336389999999998
	.quad	0x401ea26bb55ac040              # double 7.658614
	.quad	0x3fe78435efa615a9              # double 0.73488900000000001
	.quad	0x401a45f2cb641701              # double 6.5683090000000002
	.quad	0x3ff93966be7afa72              # double 1.576514
	.quad	0x4020413682730c67              # double 8.1273689999999998
	.quad	0x4011bd29dc725c3e              # double 4.4347300000000001
	.quad	0x3fc361804d983947              # double 0.15141299999999999
	.quad	0x3ff17f1f9acffa7f              # double 1.0935360000000001
	.quad	0x4017acdd0d8cb07d              # double 5.918812
	.quad	0x400f2bb55ac03ff7              # double 3.8963420000000002
	.quad	0x4022dee99a62ed35              # double 9.4353759999999997
	.quad	0x4014f2a4db163bac              # double 5.2369570000000003
	.quad	0x3fe09d8409e55c10              # double 0.51922800000000002
	.quad	0x3fc00008637bd05b              # double 0.125001
	.quad	0x40179c493426783a              # double 5.9026230000000002
	.quad	0x4020203a96d4c33b              # double 8.0629469999999994
	.quad	0x400b663f141205bc              # double 3.424925
	.quad	0x3ffc1059ea57214f              # double 1.753992
	.quad	0x401faac0c62e4d1a              # double 7.9167509999999996
	.quad	0x400ed42352eb5f5f              # double 3.853583
	.quad	0x4008411b1d92b7fe              # double 3.03179
	.quad	0x400fbe2e6ea85447              # double 3.9678619999999998
	.quad	0x4020420a0f4d7add              # double 8.1289829999999998
	.quad	0x401d811a11233df3              # double 7.3760760000000003
	.quad	0x40083e6d58c8eef2              # double 3.0304820000000001
	.quad	0x3fd66de33269df98              # double 0.35045700000000002
	.quad	0x4018da1d755bccaf              # double 6.2130029999999996
	.quad	0x401b75fe542e557e              # double 6.8652280000000001
	.quad	0x401dc08d4bad7d7c              # double 7.4380389999999998
	.quad	0x4018474ff865d7cb              # double 6.0696409999999998
	.quad	0x400c1b4cc2507208              # double 3.5133299999999998
	.quad	0x40204e9ff0cbaf96              # double 8.1535639999999994
	.quad	0x400065e892253112              # double 2.04976
	.quad	0x3ff7cffb8b263950              # double 1.4882770000000001
	.quad	0x4010c68d32830a0b              # double 4.1938979999999999
	.quad	0x401e36d7a56de332              # double 7.5535569999999996
	.quad	0x3ffe6f901083dbc2              # double 1.902237
	.quad	0x401c94c1ebc83a97              # double 7.1452710000000002
	.quad	0x4023871da37ef5a9              # double 9.7638979999999992
	.quad	0x40218400da1a9329              # double 8.7578189999999996
	.quad	0x4016b9888f861a61              # double 5.6811850000000002
	.quad	0x401a1bb73083558a              # double 6.5270659999999996
	.quad	0x400d902de00d1b71              # double 3.6953999999999998
	.quad	0x401c506b37867f0b              # double 7.0785340000000003
	.quad	0x40175b2b777d0f1f              # double 5.8390329999999997
	.quad	0x40219dfbd6a593a3              # double 8.8085620000000002
	.quad	0x400ec6cd29131ec1              # double 3.8470710000000001
	.quad	0x4022932ebe596c83              # double 9.2874660000000002
	.quad	0x400499357603925c              # double 2.5748090000000001
	.quad	0x4008cb641700cd85              # double 3.0993119999999998
	.quad	0x3fda23e5b8561d43              # double 0.408441
	.quad	0x40210fe931876189              # double 8.5310760000000005
	.quad	0x401ef20f2becedd5              # double 7.7363860000000004
	.quad	0x4006c2fdfc19c172              # double 2.8452109999999999
	.quad	0x4009f0f1f57b41c0              # double 3.2426490000000001
	.quad	0x3ffbf6b3bb83cf2d              # double 1.74773
	.quad	0x401ef21ccd962068              # double 7.7364379999999997
	.quad	0x40111e52157689ca              # double 4.2796099999999999
	.quad	0x40010963dc486ad3              # double 2.1295850000000001
	.quad	0x401f4b4dcebfec14              # double 7.8235390000000002
	.quad	0x402327ca42aed139              # double 9.5777149999999995
	.quad	0x4020193ee5eedcc2              # double 8.0493079999999999
	.quad	0x40230b34c5da6a44              # double 9.5218869999999995
	.quad	0x402363d1244a6224              # double 9.6949550000000002
	.quad	0x4020f5bf26f1dc51              # double 8.4799740000000003
	.quad	0x400cdcb5781c7150              # double 3.6077680000000001
	.quad	0x4009661e92923e5c              # double 3.1748630000000002
	.quad	0x402270ec31162281              # double 9.2205519999999996
	.quad	0x4021b45132f87ad1              # double 8.8521820000000009
	.quad	0x401152c4d65e4606              # double 4.3308289999999996
	.quad	0x4010d40d90e23af3              # double 4.2070829999999999
	.quad	0x3fff51a975afaf86              # double 1.9574370000000001
	.quad	0x3fffbf2f55582129              # double 1.9841759999999999
	.quad	0x401313a2df9378ee              # double 4.7691759999999999
	.quad	0x400ad27dcbddb984              # double 3.352779
	.quad	0x4023d787485e3da3              # double 9.920954
	.quad	0x402201378ee28672              # double 9.0023769999999992
	.quad	0x401c40379314445b              # double 7.0627120000000003
	.quad	0x401eaa4f8726d04e              # double 7.6663189999999997
	.quad	0x4000a4f97edc7ef1              # double 2.0805539999999998
	.quad	0x3fdb3126e978d4fe              # double 0.424875
	.quad	0x4007b5f3d7d3910c              # double 2.9638439999999999
	.quad	0x3ff7e145953586cb              # double 1.4924980000000001
	.quad	0x4003b38476f2a5a4              # double 2.4626549999999998
	.quad	0x4019fdf58c08b75f              # double 6.4980070000000003
	.quad	0x40124d2d87f88766              # double 4.5753690000000002
	.quad	0x3fec3c4d22c881e4              # double 0.88236099999999995
	.quad	0x4016b981beb18117              # double 5.6811590000000001
	.quad	0x3ffa69fbe76c8b44              # double 1.6508750000000001
	.quad	0x401039cd8127b2cc              # double 4.0564479999999996
	.quad	0x4023a7d84901d191              # double 9.8278219999999993
	.quad	0x402273630a91537a              # double 9.225365
	.quad	0x401ebdad7518b0d1              # double 7.685232
	.quad	0x4002145bf26f1dc5              # double 2.259941
	.quad	0x400e086e7e62dc6e              # double 3.7541169999999999
	.quad	0x400c9141205bc01a              # double 3.5709249999999999
	.quad	0x4019774a771c970f              # double 6.3664949999999996
	.quad	0x3ffc5c347e8ccdd9              # double 1.7725109999999999
	.quad	0x401b96fd21ff2e49              # double 6.8974500000000001
	.quad	0x3ff8f37c99ae924f              # double 1.559445
	.quad	0x400a804b7f5a5333              # double 3.3126440000000001
	.quad	0x401118815e39713b              # double 4.2739310000000001
	.quad	0x40205c0b5675579b              # double 8.1797740000000001
	.quad	0x40008e1ac57e23f2              # double 2.0693869999999999
	.quad	0x40204a6eb91b3f21              # double 8.1453760000000006
	.quad	0x40021c0ca600b029              # double 2.2636959999999999
	.quad	0x401cc845dc832336              # double 7.1955790000000004
	.quad	0x4021f9c7368ad688              # double 8.9878479999999996
	.quad	0x4002a28a1dfb938a              # double 2.3293650000000001
	.quad	0x40112b48d3ae685e              # double 4.2922700000000003
	.quad	0x401905564b662fe0              # double 6.2552120000000002
	.quad	0x4018a130164840e1              # double 6.1574099999999996
	.quad	0x401746ea854477ff              # double 5.8192539999999999
	.quad	0x40138d83c6c97d8d              # double 4.888198
	.quad	0x40175a875d56f32c              # double 5.8384070000000001
	.quad	0x402009bc98a222d5              # double 8.0190169999999998
	.quad	0x4003234549b62c77              # double 2.3922219999999998
	.quad	0x401f3eb7457c0b13              # double 7.8112459999999996
	.quad	0x401b0c4651f3e89b              # double 6.7619870000000004
	.quad	0x3feb1815a07b352b              # double 0.84669000000000005
	.quad	0x402146f0068db8bb              # double 8.6385500000000004
	.quad	0x3fdf3eb7cbb3c819              # double 0.488203
	.quad	0x4013be7967caea74              # double 4.9360099999999996
	.quad	0x40237956c0d6f545              # double 9.7369900000000004
	.quad	0x40124f91a32b12d3              # double 4.5777039999999998
	.quad	0x400931f926c7eae6              # double 3.1494010000000001
	.quad	0x3fe28eabffcdab19              # double 0.57991599999999999
	.quad	0x402069e4712e4085              # double 8.2068209999999997
	.quad	0x4010fafbc1acde1a              # double 4.245101
	.quad	0x402226af038e29fa              # double 9.0755540000000003
	.quad	0x3feb16d6dc1a47aa              # double 0.84653800000000001
	.quad	0x4013bb6bb1290258              # double 4.9330280000000002
	.quad	0x401e1a9717df19d6              # double 7.5259669999999996
	.quad	0x3fdba4873365881a              # double 0.431917
	.quad	0x3ffa107852f7f499              # double 1.6290210000000001
	.quad	0x3fd5e7fb267c6b8b              # double 0.34228399999999998
	.quad	0x401eba2877ee4e27              # double 7.6817950000000001
	.quad	0x3ff772becedd4845              # double 1.465514
	.quad	0x4017e8c32a8c9b84              # double 5.9773069999999997
	.quad	0x400ee5e02ea960b7              # double 3.862244
	.quad	0x4006d9042d8c2a45              # double 2.8559649999999999
	.quad	0x3fe14d74927913e8              # double 0.54070499999999999
	.quad	0x4001512ec6bce853              # double 2.1646399999999999
	.quad	0x4007be2c55c96031              # double 2.9678580000000001
	.quad	0x3ffcf2799a1fd157              # double 1.8091980000000001
	.quad	0x40229a116659d12d              # double 9.3009140000000006
	.quad	0x4019d1001d5c3159              # double 6.4541019999999998
	.quad	0x401bc0f6f08cc576              # double 6.9384420000000002
	.quad	0x3ffee6c7eae5bc88              # double 1.931343
	.quad	0x40043c5260f5e41d              # double 2.5294539999999999
	.quad	0x401ae4a9cdc44391              # double 6.7233039999999997
	.quad	0x4023e31b9b66f933              # double 9.9435699999999993
	.quad	0x4021cfd1bb4916ca              # double 8.9058969999999995
	.quad	0x400260f6f08cc576              # double 2.2973460000000001
	.quad	0x400b909070fbeb9e              # double 3.4455879999999999
	.quad	0x3fb202c9081c2e34              # double 0.070355000000000001
	.quad	0x40239cd594f26aec              # double 9.8063169999999999
	.quad	0x3fdcc3009b30728f              # double 0.44940200000000002
	.quad	0x3fe8c4007570c565              # double 0.773926
	.quad	0x4020afe4ffc9795b              # double 8.3435439999999996
	.quad	0x3ff6caa326e11559              # double 1.424472
	.quad	0x3f73b9f127f5e84f              # double 0.004816
	.quad	0x3ff174d8ba40d90e              # double 1.091027
	.quad	0x4011c97e56473472              # double 4.446771
	.quad	0x400c0456f75d9a0f              # double 3.502119
	.quad	0x4015b0c5a8155d5f              # double 5.4226289999999997
	.quad	0x4014abc0a06e9ff1              # double 5.1677270000000002
	.quad	0x401ed70b06c43f60              # double 7.7100030000000004
	.quad	0x40216b7329c347e9              # double 8.7098630000000004
	.quad	0x4010ba8cdea033e8              # double 4.1821780000000004
	.quad	0x401de35f80991794              # double 7.4720440000000004
	.quad	0x40171841ede1198b              # double 5.7736890000000001
	.quad	0x40144eac8605681f              # double 5.0768300000000002
	.quad	0x4021ac6195464dc2              # double 8.8366819999999997
	.quad	0x401a9d4306e5cd4f              # double 6.6535760000000002
	.quad	0x40208b8327674d16              # double 8.2724849999999996
	.quad	0x401af3dff3f0fe04              # double 6.7381589999999996
	.quad	0x40234bc8e25c810a              # double 9.6480169999999994
	.quad	0x4004e03361565c2d              # double 2.6094729999999999
	.quad	0x401a0f86e3b46fdf              # double 6.5151630000000003
	.quad	0x401e7c83ec892ab7              # double 7.6215970000000003
	.quad	0x401e08b8f14db595              # double 7.5085179999999995
	.quad	0x400fc3dc486ad2dd              # double 3.9706350000000001
	.quad	0x402359e75360d024              # double 9.6755929999999992
	.quad	0x40181b5d894812be              # double 6.0267239999999997
	.quad	0x4017bf84cad57bc8              # double 5.93703
	.quad	0x4021346ae3a3a8e7              # double 8.6023779999999999
	.quad	0x401b3b4a66559f6f              # double 6.8079010000000002
	.quad	0x4010d7329c347e8d              # double 4.2101540000000002
	.quad	0x400b787379746024              # double 3.4338139999999999
	.quad	0x3fdcdeebb341e14c              # double 0.45110600000000001
	.quad	0x40024409e55c0fcb              # double 2.2832219999999999
	.quad	0x4021d6dce39b456b              # double 8.9196539999999995
	.quad	0x401baf776c4827b7              # double 6.921354
	.quad	0x3ff3547496aad1d0              # double 1.2081189999999999
	.quad	0x40211f11947cfa27              # double 8.5606810000000007
	.quad	0x400fcd24e160d888              # double 3.975168
	.quad	0x4017c02107b78466              # double 5.9376259999999998
	.quad	0x4020e25093964a5a              # double 8.4420210000000004
	.quad	0x3ffa1df3300de4c5              # double 1.632312
	.quad	0x401176e86c6583e8              # double 4.3661209999999997
	.quad	0x40073b4b2fa93af7              # double 2.9039519999999999
	.quad	0x401badf69878316a              # double 6.919886
	.quad	0x3ffec6e08f217093              # double 1.923554
	.quad	0x400d41d29dc725c4              # double 3.6571400000000001
	.quad	0x400f33dd97f62b6b              # double 3.900325
	.quad	0x401a7d59d55e6bc6              # double 6.6224129999999999
	.quad	0x40162ea4ebdd334c              # double 5.5455509999999997
	.quad	0x402229754b05b7d0              # double 9.0809730000000002
	.quad	0x4007b444e0daa0cb              # double 2.963022
	.quad	0x402153836a832b99              # double 8.6631119999999999
	.quad	0x3ff97ceb78897e99              # double 1.5929979999999999
	.quad	0x3fcf3aeee957470f              # double 0.24398600000000001
	.quad	0x3fd1d616f86a0989              # double 0.278692
	.quad	0x4022a09bd8383ada              # double 9.3136890000000001
	.quad	0x40170bc23315d702              # double 5.7614830000000001
	.quad	0x402066afab53d641              # double 8.2005590000000002
	.quad	0x40195fa8b4bf8fcd              # double 6.3434169999999996
	.quad	0x3fe7e70e2c12ad82              # double 0.74695500000000004
	.quad	0x40169d2999567dbb              # double 5.6534789999999999
	.quad	0x401de18a86d71f36              # double 7.4702549999999999
	.quad	0x40212c141e9af5ba              # double 8.5860909999999997
	.quad	0x401ae40314877681              # double 6.7226679999999996
	.quad	0x40138322f2734f83              # double 4.878063
	.quad	0x4013d02795703f2d              # double 4.9532759999999998
	.quad	0x40228934267839ce              # double 9.2679760000000009
	.quad	0x4017072c0e7bc3c6              # double 5.7570040000000002
	.quad	0x3fe05c3dee781840              # double 0.51126000000000005
	.quad	0x40207c1248d7e026              # double 8.2423269999999995
	.quad	0x401ae9fbe76c8b44              # double 6.7285000000000004
	.quad	0x40119ef0281ba7fc              # double 4.4052129999999998
	.quad	0x400a57ff9b56323c              # double 3.2929680000000001
	.quad	0x401207b677f6b1a3              # double 4.5075320000000003
	.quad	0x401da360d0247022              # double 7.4095490000000002
	.quad	0x401b3ced916872b0              # double 6.8094999999999999
	.quad	0x401d1b3354c12275              # double 7.2765630000000003
	.quad	0x3fe4fcb0c026cc1d              # double 0.65584600000000004
	.quad	0x402206b4202d9cf1              # double 9.0130929999999996
	.quad	0x4007e995aaf78fef              # double 2.989055
	.quad	0x4020f6da22f6a50d              # double 8.4821329999999993
	.quad	0x40106c4a4095f245              # double 4.1057519999999998
	.quad	0x401d2ecc814d727a              # double 7.2957020000000004
	.quad	0x40166f566490a351              # double 5.6087280000000002
	.quad	0x40230a61bf37b8d4              # double 9.5202770000000001
	.quad	0x400758d79d0a6762              # double 2.91838
	.quad	0x401e6f04577d9557              # double 7.6084149999999999
	.quad	0x40130cbf6e3f78bc              # double 4.7624490000000002
	.quad	0x4023f4475e6362a6              # double 9.9771070000000002
	.quad	0x3fe20cfbfc6540cc              # double 0.56408499999999995
	.quad	0x4015533c60029f17              # double 5.3312850000000003
	.quad	0x402114e032db1e9f              # double 8.5407729999999997
	.quad	0x3ff6fcab81f969e4              # double 1.436687
	.quad	0x4008d7939a7c17a9              # double 3.1052620000000002
	.quad	0x402249b845564b66              # double 9.1439839999999997
	.quad	0x4010eedd052934ad              # double 4.2332650000000003
	.quad	0x4001ca84be40420f              # double 2.2238859999999998
	.quad	0x400e830984e3ffef              # double 3.8139829999999999
	.quad	0x3ff331e18efbb0e6              # double 1.199678
	.quad	0x4021318676a7264a              # double 8.5967289999999998
	.quad	0x4016460c38f36695              # double 5.5684060000000004
	.quad	0x3fef390214ad362f              # double 0.97570900000000004
	.quad	0x400ca791c4b90215              # double 3.5818210000000001
	.quad	0x4004679463cfb331              # double 2.550576
	.quad	0x40196faca3619978              # double 6.359057
	.quad	0x401f5eb8d8234224              # double 7.8425019999999996
	.quad	0x3fe4b1a6d698fe69              # double 0.64668599999999998
	.quad	0x3fff8f1d3ed527e5              # double 1.97244
	.quad	0x402095c5f7c6759b              # double 8.2925260000000005
	.quad	0x3fff1b456b441bb9              # double 1.9441580000000001
	.quad	0x401a11c219eb6391              # double 6.5173420000000002
	.quad	0x3ff04d35a858793e              # double 1.01885
	.quad	0x401ad5a038194c01              # double 6.7086189999999997
	.quad	0x3ff865aab4741073              # double 1.524821
	.quad	0x3fff067be553ac4f              # double 1.9390829999999999
	.quad	0x401c1fc0d2c386d3              # double 7.0310090000000001
	.quad	0x401616e5471715c6              # double 5.5223589999999998
	.quad	0x40128a7ce0fc2eba              # double 4.6352419999999999
	.quad	0x4020b49cf56eac86              # double 8.35276
	.quad	0x401e81f9acffa7eb              # double 7.6269289999999996
	.quad	0x4015ba437824d4cc              # double 5.4318980000000003
	.quad	0x40219aaf78feef5f              # double 8.8021200000000004
	.quad	0x4023236933a0407d              # double 9.5691620000000003
	.quad	0x401cb40314877681              # double 7.1757929999999996
	.quad	0x3ff9fd6a593a2df9              # double 1.624369
	.quad	0x401e25f0b28522ea              # double 7.5370509999999999
	.quad	0x3ff4953cddd6e04c              # double 1.286435
	.quad	0x401dcf2b66b6177f              # double 7.4523140000000003
	.quad	0x401c9e0ac7da1ec5              # double 7.1543380000000001
	.quad	0x3ff5ce3ac0c62e4d              # double 1.362849
	.quad	0x401177f5a5332ad0              # double 4.3671480000000003
	.quad	0x4009ad7d7c2ca149              # double 3.2097120000000001
	.quad	0x4008280e06530058              # double 3.019558
	.quad	0x401c1378ab0c88a4              # double 7.0190149999999996
	.quad	0x401400b955f7835a              # double 5.0007070000000002
	.quad	0x401806559f6ec5b0              # double 6.0061859999999996
	.quad	0x401fa65668c26139              # double 7.912439
	.quad	0x3ff39b5d894812be              # double 1.2254309999999999
	.quad	0x3ffd1b20b8066c2b              # double 1.819123
	.quad	0x4009e2539756c93a              # double 3.2355109999999998
	.quad	0x401366b69db65ecc              # double 4.8503059999999998
	.quad	0x4007ca6fc58ab92c              # double 2.973846
	.quad	0x3fdbae21101b0037              # double 0.43250300000000003
	.quad	0x401493254e6e221d              # double 5.1436970000000004
	.quad	0x3fcd87df5cf2495e              # double 0.230709
	.quad	0x3fece366d7a56de3              # double 0.90275899999999998
	.quad	0x4018928522ea0fd4              # double 6.1430860000000003
	.quad	0x4021a18d045fe111              # double 8.8155289999999997
	.quad	0x4010449774256bca              # double 4.0669839999999997
	.quad	0x401f43c42a66dbd7              # double 7.8161779999999998
	.quad	0x40040558644523f6              # double 2.5026099999999998
	.quad	0x401d08433d6c7219              # double 7.2580689999999999
	.quad	0x4010b96cc5fbf834              # double 4.1810790000000004
	.quad	0x4018d63065f9591d              # double 6.2091690000000002
	.quad	0x3ff75c2d2780778a              # double 1.4600040000000001
	.quad	0x3fed7ec7863beec4              # double 0.92172600000000004
	.quad	0x3ff8e785b5b70692              # double 1.556524
	.quad	0x401f03d5347a5b10              # double 7.7537430000000001
	.quad	0x4022bc806290eed0              # double 9.3681669999999997
	.quad	0x401e51d96e9bbf0e              # double 7.5799310000000002
	.quad	0x40078a65cf67b1c0              # double 2.942577
	.quad	0x4022f9c1f85d744f              # double 9.4878079999999993
	.quad	0x3ff46601bc98a223              # double 1.274904
	.quad	0x401412d98bf7f067              # double 5.018408
	.quad	0x4002ebdd334c5da7              # double 2.3651680000000002
	.quad	0x3fe7f85942917508              # double 0.74906600000000001
	.quad	0x4012968986fcdee3              # double 4.6470089999999997
	.quad	0x402301bdc69f8c22              # double 9.5034010000000002
	.quad	0x4011631769a91106              # double 4.3467690000000001
	.quad	0x401aae75bc44bf4d              # double 6.6703710000000003
	.quad	0x401a129e90795f67              # double 6.5181829999999996
	.quad	0x3fff0ae429e0a41a              # double 1.940159
	.quad	0x4023936d655e28aa              # double 9.7879439999999995
	.quad	0x4000bdf3300de4c5              # double 2.092749
	.quad	0x400238fe69270b07              # double 2.2778290000000001
	.quad	0x401fb088d6d3b6cc              # double 7.9223970000000001
	.quad	0x3fea5471715c63ae              # double 0.82280799999999998
	.quad	0x40231a89b951c5c5              # double 9.5518319999999992
	.quad	0x3fec6b09635610ae              # double 0.88806600000000002
	.quad	0x401bc87f023e9ea1              # double 6.9457969999999998
	.quad	0x401a6f8f8a4c1ebd              # double 6.6089460000000004
	.quad	0x400d4383ad9f0a1c              # double 3.6579660000000001
	.quad	0x4021d88ca3e7d135              # double 8.9229479999999999
	.quad	0x400341e03f705858              # double 2.4071660000000001
	.quad	0x401680b6b6e0d23d              # double 5.6256969999999997
	.quad	0x3ff34e65bea0ba1f              # double 1.2066399999999999
	.quad	0x4022d6de97d06bbe              # double 9.4196670000000005
	.quad	0x3ff35cb790fb6567              # double 1.2101360000000001
	.quad	0x4015600a7c5ac472              # double 5.3437900000000003
	.quad	0x402235a1a93293d1              # double 9.104749
	.quad	0x3ffb9192641b328b              # double 1.7230399999999999
	.quad	0x40125a6c5d206c87              # double 4.5883039999999999
	.quad	0x400b5bb59ddc1e79              # double 3.4197799999999998
	.quad	0x4010df75536933a0              # double 4.2182209999999998
	.quad	0x3ff38995aaf78fef              # double 1.22109
	.quad	0x3ff1bc393682730c              # double 1.1084529999999999
	.quad	0x3ffbab5c39bcba30              # double 1.729336
	.quad	0x401346a37ac3eb7d              # double 4.8189830000000002
	.quad	0x4003811ec918e326              # double 2.4380470000000001
	.quad	0x40199f6f08cc575c              # double 6.405697
	.quad	0x401323e7d135115a              # double 4.7850640000000002
	.quad	0x3faed15ad106ee31              # double 0.060191000000000001
	.quad	0x40110b2788db0575              # double 4.2608930000000003
	.quad	0x400cf1159c497742              # double 3.6177169999999998
	.quad	0x4002373c0c1fc8f3              # double 2.2769699999999999
	.quad	0x400ef933e35c5b4b              # double 3.8716810000000002
	.quad	0x401f2daad601ffb5              # double 7.7945970000000004
	.quad	0x400022278d0cc35d              # double 2.0166770000000001
	.quad	0x402160f14db59579              # double 8.6893410000000006
	.quad	0x401b55a4f00ef135              # double 6.8336370000000004
	.quad	0x40213fdfa00e27e1              # double 8.6247530000000001
	.quad	0x3fe21aaa3ad18d26              # double 0.56575500000000001
	.quad	0x3fec1c75818c5c9a              # double 0.87847399999999998
	.quad	0x401fb70329802c0a              # double 7.9287229999999997
	.quad	0x40103c80841ede12              # double 4.0590840000000004
	.quad	0x40125b4245f5ad97              # double 4.5891200000000003
	.quad	0x401cd52deca2552a              # double 7.208183
	.quad	0x401e6cee9dd7ecbb              # double 7.6063789999999995
	.quad	0x40234ad27807789a              # double 9.6461369999999995
	.quad	0x4023a4dec1c1d6d0              # double 9.8220120000000009
	.quad	0x401df5525cc42635              # double 7.4895719999999998
	.quad	0x4008d89374bc6a7f              # double 3.10575
	.quad	0x3fee003eea209aaa              # double 0.93752999999999997
	.quad	0x400df18e325d4a5e              # double 3.742947
	.quad	0x401d98a548238540              # double 7.3990679999999998
	.quad	0x3fd84fdf3b645a1d              # double 0.37987500000000002
	.quad	0x3fe47340d4dc65c7              # double 0.639069
	.quad	0x40162a98aa8650e7              # double 5.5415979999999996
	.quad	0x3ffb5392189bd838              # double 1.7079029999999999
	.quad	0x4021e54cdb7ae579              # double 8.9478519999999993
	.quad	0x4003b44241c3efae              # double 2.4630169999999998
	.quad	0x40081f0fe047d3d4              # double 3.0151669999999999
	.quad	0x3fd305d52c16df40              # double 0.29723100000000002
	.quad	0x3fe63e07a28bb0a3              # double 0.69507200000000002
	.quad	0x402163c42a66dbd7              # double 8.6948559999999997
	.quad	0x400717531db445ed              # double 2.8863889999999999
	.quad	0x4014f6b97fe8ee6c              # double 5.2409420000000004
	.quad	0x4011adbf0563ed0f              # double 4.4196739999999997
	.quad	0x4019ab0d9513f8db              # double 6.4170439999999997
	.quad	0x3ffce4c942d490e6              # double 1.8058559999999999
	.quad	0x3ff7f0d9513f8db5              # double 1.4963010000000001
	.quad	0x401bd9d909f1f14a              # double 6.9627420000000004
	.quad	0x40201fa43fe5c91d              # double 8.0617999999999999
	.quad	0x4023624b33daf8df              # double 9.6919799999999991
	.quad	0x4015f12f4cf4a559              # double 5.4855320000000001
	.quad	0x40074f5d35653c9b              # double 2.9137520000000001
	.quad	0x40116abffcdab192              # double 4.3542480000000001
	.quad	0x40215736694898f6              # double 8.670337
	.quad	0x401c93cc8de2ac32              # double 7.1443349999999999
	.quad	0x40190705c896dd27              # double 6.2568580000000003
	.quad	0x4016bc60cbf2b23a              # double 5.6839630000000003
	.quad	0x4022f02cd39da166              # double 9.4690919999999998
	.quad	0x3ff6b811f4f50a03              # double 1.4199390000000001
	.quad	0x3fbda0f0a5efe932              # double 0.11573700000000001
	.quad	0x4015062e90364389              # double 5.2560370000000001
	.quad	0x4014ed7a56de3327              # double 5.2319120000000003
	.quad	0x4021c93f077ccc03              # double 8.8930589999999992
	.quad	0x401a1c3760bf5d79              # double 6.5275550000000004
	.quad	0x400714bdfd2630ec              # double 2.8851279999999999
	.quad	0x4020775771001d5c              # double 8.2330889999999996
	.quad	0x40139c9320d9945b              # double 4.9029049999999996
	.quad	0x401aca57214f0521              # double 6.6975980000000002
	.quad	0x4017060bb2bba98f              # double 5.7559040000000001
	.quad	0x3fff3e5c91d14e3c              # double 1.952725
	.quad	0x400cc06fac6045bb              # double 3.593963
	.quad	0x4023d4fbb949624a              # double 9.9159830000000007
	.quad	0x4021af13f077ccc0              # double 8.8419489999999996
	.quad	0x401c26ebd4cfd08d              # double 7.0380089999999997
	.quad	0x401ea3bddfc9ff93              # double 7.659904
	.quad	0x401af3bf727136a4              # double 6.738035
	.quad	0x4017594d0dcfcc5c              # double 5.8372080000000004
	.quad	0x4021dc1d4b6a619e              # double 8.9299110000000006
	.quad	0x3fe64bee807bbb62              # double 0.69676899999999997
	.quad	0x4006e4b6e935b91f              # double 2.8616769999999998
	.quad	0x40128e3476295209              # double 4.6388720000000001
	.quad	0x4018a6f8ad256799              # double 6.1630580000000004
	.quad	0x3ffc9c4da9003eea              # double 1.78816
	.quad	0x401ec0cc78e9f6a9              # double 7.6882799999999997
	.quad	0x3ff11373affb04ee              # double 1.0672489999999999
	.quad	0x4023ed36501e2585              # double 9.963305
	.quad	0x401b65332acfb763              # double 6.8488280000000001
	.quad	0x401d6ad5bee3d5fe              # double 7.3543310000000002
	.quad	0x3f819bd4067cf1c3              # double 0.0085979999999999997
	.quad	0x4023d1884c6a3bde              # double 9.909243
	.quad	0x3ff9a787ce95faa9              # double 1.6034010000000001
	.quad	0x400f1005814940bc              # double 3.8828230000000001
	.quad	0x3ffde35935fc3b4f              # double 1.8680049999999999
	.quad	0x400552c386d2ed78              # double 2.6654119999999999
	.quad	0x4006937e2c55c960              # double 2.8220179999999999
	.quad	0x40239cb46bacf744              # double 9.8060639999999992
	.quad	0x4015a145953586cb              # double 5.4074920000000004
	.quad	0x40217f75b8130165              # double 8.7489450000000009
	.quad	0x3fed083771865519              # double 0.90725299999999998
	.quad	0x4014906c8711d799              # double 5.1410390000000001
	.quad	0x401aa5c39bcba301              # double 6.6618789999999999
	.quad	0x401a0756c93a7115              # double 6.5071669999999999
	.quad	0x401af30984e3ffef              # double 6.7373409999999998
	.quad	0x401539f127f5e84f              # double 5.306584
	.quad	0x402269876188b114              # double 9.2061109999999999
	.quad	0x400a67f8012dfd69              # double 3.3007659999999999
	.quad	0x4017bd5065732160              # double 5.9348770000000002
	.quad	0x4022a8bbd3804535              # double 9.3295580000000005
	.quad	0x401878b47c73eee5              # double 6.1178759999999999
	.quad	0x40142dc2b0ea1837              # double 5.0446879999999998
	.quad	0x40109cfd4bf0995b              # double 4.1533100000000003
	.quad	0x4022afdeb52c9d17              # double 9.343496
	.quad	0x4008af09d8c6d613              # double 3.0854680000000001
	.quad	0x4015e379314445aa              # double 5.4721419999999998
	.quad	0x4018eebe1650a45d              # double 6.2331469999999998
	.quad	0x400bc9635610adcd              # double 3.4733339999999999
	.quad	0x3ff425bc87db2b34              # double 1.2592129999999999
	.quad	0x40155387160956c1              # double 5.3315700000000001
	.quad	0x3fc94de7ea5f84cb              # double 0.19769
	.quad	0x402013fb9bed30f0              # double 8.0390289999999993
	.quad	0x40110e991ff7164c              # double 4.2642559999999996
	.quad	0x3ff1e455eaee2004              # double 1.1182460000000001
	.quad	0x3f6dbca9691a75cd              # double 0.00363
	.quad	0x4008e0a41a261bf3              # double 3.1096879999999998
	.quad	0x4020f59f90539fba              # double 8.4797329999999995
	.quad	0x3fe67b549f94855e              # double 0.70255500000000004
	.quad	0x4017a171e29b6b2b              # double 5.9076610000000001
	.quad	0x400c8921ccd96207              # double 3.5669590000000002
	.quad	0x3ff3fde939eadd59              # double 1.24949
	.quad	0x4018544a1f080304              # double 6.0823140000000002
	.quad	0x4010468a50507a6c              # double 4.0688870000000001
	.quad	0x40155791819d2392              # double 5.3355160000000001
	.quad	0x4007dc810a569b17              # double 2.9826679999999999
	.quad	0x401ecba3443d46b2              # double 7.6988649999999996
	.quad	0x400e3c27631b584b              # double 3.779372
	.quad	0x4012720535c9e668              # double 4.6113479999999996
	.quad	0x401db0752da98677              # double 7.4223220000000003
	.quad	0x401e8351159c4977              # double 7.6282389999999997
	.quad	0x402082c386d2ed78              # double 8.2553979999999996
	.quad	0x4014bede97d06bbe              # double 5.1863960000000002
	.quad	0x3ffce605ee568a50              # double 1.8061579999999999
	.quad	0x3fe0c1ca3a4b5569              # double 0.52365600000000001
	.quad	0x4019fb1d4f9c1f86              # double 6.4952290000000001
	.quad	0x4013bb502ababead              # double 4.9329229999999997
	.quad	0x4011b9b52007dd44              # double 4.4313549999999999
	.quad	0x3f9a875d56f32bdc              # double 0.025906999999999999
	.quad	0x401af554fbdad752              # double 6.7395820000000004
	.quad	0x4009cc3b0c4588a0              # double 3.2247219999999999
	.quad	0x401bcf5d78811b1e              # double 6.9525050000000004
	.quad	0x400942a8869c66d3              # double 3.1575479999999998
	.quad	0x402142af78feef5f              # double 8.6302450000000004
	.quad	0x4010133bd9cae211              # double 4.018783
	.quad	0x40107160956c0d6f              # double 4.1107199999999997
	.quad	0x3ffda3b256ffc116              # double 1.852465
	.quad	0x4011de410b630a91              # double 4.4670449999999997
	.quad	0x3fdb7f562174c4ce              # double 0.429647
	.quad	0x3fea3a0620ab7132              # double 0.81958299999999995
	.quad	0x4011343d46b26bf8              # double 4.3010149999999996
	.quad	0x3fe961eb4202d9cf              # double 0.79320299999999999
	.quad	0x4001a249a133c1ce              # double 2.2042419999999998
	.quad	0x4003f38c5436b8fa              # double 2.4939200000000001
	.quad	0x400043eb7cbb3c82              # double 2.0331640000000002
	.quad	0x401ffe47991bc558              # double 7.9983199999999996
	.quad	0x4022d870da5daf08              # double 9.4227360000000004
	.quad	0x401b3c9c0a8d21bc              # double 6.8091889999999999
	.quad	0x401348eb0318b934              # double 4.8212089999999996
	.quad	0x401e64aec8d5c747              # double 7.5983229999999997
	.quad	0x401fb29bae46cfc8              # double 7.9244219999999998
	.quad	0x3fee38cb8e086bdf              # double 0.94443299999999997
	.quad	0x401d26f544bb1af4              # double 7.2880450000000003
	.quad	0x3fc13825e13b18db              # double 0.13452600000000001
	.quad	0x4013b080f98fa377              # double 4.9223670000000004
	.quad	0x4005dd4cfd08d4bb              # double 2.7330570000000001
	.quad	0x3fb00ebedfa43fe6              # double 0.062725000000000003
	.quad	0x400ed5f2cb641701              # double 3.8544670000000001
	.quad	0x3fe6152f3c2dadb8              # double 0.69008599999999998
	.quad	0x402239a21ea35936              # double 9.112565
	.quad	0x3ff7cf54d1e96c40              # double 1.4881180000000001
	.quad	0x4023455e6bc621b8              # double 9.6354860000000002
	.quad	0x401cc58d1526d8b2              # double 7.1929210000000001
	.quad	0x401e328dc981beb2              # double 7.5493690000000004
	.quad	0x40090c4827b6fe2e              # double 3.1309969999999998
	.quad	0x40214268d32830a1              # double 8.6297060000000005
	.quad	0x40142ee957470eb2              # double 5.0458119999999997
	.quad	0x4020d53586ca89fc              # double 8.4164239999999992
	.quad	0x3ff4bea2d2fe3f36              # double 1.2965420000000001
	.quad	0x4010d011904b3c3e              # double 4.2031919999999996
	.quad	0x3fe478c0053e2d62              # double 0.63973999999999998
	.quad	0x40109873ffac1d2a              # double 4.1488800000000001
	.quad	0x3ff6f1c0010c6f7a              # double 1.434021
	.quad	0x40130ef30a4e379b              # double 4.7645989999999996
	.quad	0x40210ba8a3f8982d              # double 8.5227710000000005
	.quad	0x4010047735c182ed              # double 4.0043610000000003
	.quad	0x400b0090b417ca21              # double 3.3752759999999999
	.quad	0x401d4b7f9d6f1130              # double 7.3237290000000002
	.quad	0x401cafc9795b35b1              # double 7.1716670000000002
	.quad	0x4005ee6d9be4cd75              # double 2.7414200000000002
	.quad	0x40199972474538ef              # double 6.3998499999999998
	.quad	0x3ff121b8ed1bf7ad              # double 1.0707329999999999
	.quad	0x4022c202d9cf13cf              # double 9.3789280000000001
	.quad	0x4021b69b17481b22              # double 8.8566520000000004
	.quad	0x4019035ce1826677              # double 6.2532839999999998
	.quad	0x40046600b0292817              # double 2.5498059999999998
	.quad	0x40226ae46cfc829d              # double 9.208774
	.quad	0x4023e0d3cff64cf9              # double 9.9391160000000002
	.quad	0x4013f4488c60cbf3              # double 4.9885580000000003
	.quad	0x401db3cc4ac6cdaf              # double 7.4255839999999997
	.quad	0x401c05cc857f3062              # double 7.0056630000000002
	.quad	0x4002493293d102bc              # double 2.2857409999999998
	.quad	0x401f871de69ad42c              # double 7.8819499999999998
	.quad	0x401374873365881a              # double 4.8637969999999999
	.quad	0x4005f927d45a5fc8              # double 2.746658
	.quad	0x402019187e7c06e2              # double 8.0490150000000007
	.quad	0x40197143393ab431              # double 6.360608
	.quad	0x3fd1bd8be7296f65              # double 0.277194
	.quad	0x4022c9276fb09204              # double 9.3928790000000006
	.quad	0x401590b0af5fd47c              # double 5.3912990000000001
	.quad	0x3ff219524bfd2e94              # double 1.1311819999999999
	.quad	0x3ff59432873bc904              # double 1.348681
	.quad	0x4021661fc08fa7a8              # double 8.6994609999999994
	.quad	0x40215906ab14ec20              # double 8.6738789999999995
	.quad	0x3ff0a0d887ebf22c              # double 1.039269
	.quad	0x4009b25fe974a340              # double 3.212097
	.quad	0x402315c8fb86f47b              # double 9.5425489999999992
	.quad	0x3fea9dadfb506dd7              # double 0.83174800000000004
	.quad	0x4003569db65ecc3e              # double 2.4172929999999999
	.quad	0x3fea78d4fdf3b646              # double 0.82725000000000004
	.quad	0x3ffcb922962cfd8f              # double 1.795199
	.quad	0x4018cec28b2a6b0e              # double 6.2019140000000004
	.quad	0x40190e5b8561d430              # double 6.2640209999999996
	.quad	0x401f652d666a9824              # double 7.8488059999999997
	.quad	0x400228ba83f4eca7              # double 2.2698870000000002
	.quad	0x40178e1c9b413986              # double 5.8887809999999998
	.quad	0x4008017763e4abe7              # double 3.0007160000000002
	.quad	0x3fe6e0d23d4f15e8              # double 0.71494400000000002
	.quad	0x4020e4c5fbf83383              # double 8.4468230000000002
	.quad	0x4022e941c8216c61              # double 9.4555799999999994
	.quad	0x40224202b841248d              # double 9.1289269999999991
	.quad	0x401116f1dc50ce4f              # double 4.2724070000000003
	.quad	0x40238510f51ac9b0              # double 9.7598950000000002
	.quad	0x3ff7f928e0c9d9d3              # double 1.4983299999999999
	.quad	0x4021ae2e09fe8683              # double 8.8401949999999996
	.quad	0x400c841f644955b4              # double 3.5645129999999998
	.quad	0x3fa4d39da16616b5              # double 0.040676999999999998
	.quad	0x401a3892684cf074              # double 6.5552460000000004
	.quad	0x401b181beb18116f              # double 6.7735440000000002
	.quad	0x3ff0649e44fa0514              # double 1.0245649999999999
	.quad	0x40220ef177a7008a              # double 9.0291859999999993
	.quad	0x4009142a23bff8a9              # double 3.134846
	.quad	0x3ffa8c5c9a34ca0c              # double 1.659268
	.quad	0x3ffbc65300581494              # double 1.735919
	.quad	0x401740fcb4f1e4b4              # double 5.8134639999999997
	.quad	0x400cccb641700cd8              # double 3.5999569999999999
	.quad	0x40230afbe33acd5b              # double 9.5214529999999992
	.quad	0x4016fed3953dea46              # double 5.7488539999999997
	.quad	0x4023de8448cf7caa              # double 9.9346029999999992
	.quad	0x3fff4e4da09cc31a              # double 1.9566170000000001
	.quad	0x4020e696e58a32f4              # double 8.4503699999999994
	.quad	0x40215c27418d690a              # double 8.6799870000000006
	.quad	0x4018716a48733659              # double 6.1107570000000004
	.quad	0x4004b06f69446738              # double 2.5861499999999999
	.quad	0x40002161e4f765fe              # double 2.0163000000000002
	.quad	0x401f7c243dccea29              # double 7.871232
	.quad	0x402169b13165d399              # double 8.7064299999999992
	.quad	0x400b5a7c9de05037              # double 3.4191829999999999
	.quad	0x40166f5b5fa22707              # double 5.6087470000000001
	.quad	0x3ff40e5a35d67ba2              # double 1.253504
	.quad	0x40047ce0fc2eba28              # double 2.5609760000000001
	.quad	0x401a9de43ed959a3              # double 6.654191
	.quad	0x401a38d64d7f0ed4              # double 6.5555050000000001
	.quad	0x400fb137b07075b4              # double 3.9615320000000001
	.quad	0x40231355ac03ff69              # double 9.5377629999999999
	.quad	0x4003f719f7f8ca82              # double 2.4956550000000002
	.quad	0x4012e4a48f96e158              # double 4.7232839999999996
	.quad	0x4018fbef06b37868              # double 6.2460290000000001
	.quad	0x3fb5c886162f166e              # double 0.085090999999999999
	.quad	0x3fea24b9884c6a3c              # double 0.81698300000000001
	.quad	0x40044b74ddf86e3b              # double 2.5368439999999999
	.quad	0x4009de774eebf65e              # double 3.2336260000000001
	.quad	0x4021a74e65bea0ba              # double 8.8267699999999998
	.quad	0x40219fb506dd69d3              # double 8.811928
	.quad	0x40223b0a915379fb              # double 9.1153150000000007
	.quad	0x401180c4156e264e              # double 4.3757479999999997
	.quad	0x3ffdfcea6c1a048e              # double 1.874247
	.quad	0x4022fa6d8b1dd5d4              # double 9.4891170000000002
	.quad	0x4023f1d2178f68be              # double 9.9723059999999997
	.quad	0x401ac7ecfe9b7bf2              # double 6.6952400000000001
	.quad	0x40086a1059ea5721              # double 3.0517889999999999
	.quad	0x4010daff2a172abf              # double 4.2138640000000001
	.quad	0x401f3ed288ce703b              # double 7.81135
	.quad	0x401faae81882adc5              # double 7.9169010000000001
	.quad	0x4008279fec99f1ae              # double 3.0193479999999999
	.quad	0x401dd6b65a9a8049              # double 7.4596799999999996
	.quad	0x4020ccf41f212d77              # double 8.4002999999999997
	.quad	0x4023a2c8c5004fb1              # double 9.8179379999999998
	.quad	0x3fe82de8709741d1              # double 0.75560400000000005
	.quad	0x3fbb6d43d03968d7              # double 0.107136
	.quad	0x40036fa8b4bf8fcd              # double 2.4295209999999998
	.quad	0x400ae95e17e34b94              # double 3.3639489999999999
	.quad	0x40036a5d6bebe165              # double 2.426936
	.quad	0x401e734f3fd933e3              # double 7.6126069999999996
	.quad	0x3fd1b0c4588a04d1              # double 0.27641399999999999
	.quad	0x3fffd815a07b352b              # double 1.9902550000000001
	.quad	0x40236870b8cfbfc6              # double 9.7039849999999994
	.quad	0x400cbc7bcc2938de              # double 3.5920329999999998
	.quad	0x4023258750c1b973              # double 9.5732979999999994
	.quad	0x40206121ee675148              # double 8.1897120000000001
	.quad	0x401502a8c9b84556              # double 5.2525969999999997
	.quad	0x401826c093d96638              # double 6.0378439999999998
	.quad	0x40138bbb62413db8              # double 4.8864570000000001
	.quad	0x4004a7abfb9bed31              # double 2.581871
	.quad	0x4012dabead4f5904              # double 4.7136180000000003
	.quad	0x40112163fdd65a14              # double 4.2826079999999997
	.quad	0x4010db2f661f18ca              # double 4.214048
	.quad	0x40229858793dd97f              # double 9.2975499999999993
	.quad	0x4022db9fba450acc              # double 9.4289529999999999
	.quad	0x4014964f97edc7ef              # double 5.1467879999999999
	.quad	0x401349acffa7eb6c              # double 4.821949
	.quad	0x4022cd1697f1f9ad              # double 9.400563
	.quad	0x401202ead9274e23              # double 4.5028490000000003
	.quad	0x4012e4de3b8a19ca              # double 4.7235040000000001
	.quad	0x3ff7dd00f776c482              # double 1.4914559999999999
	.quad	0x40020d035371971c              # double 2.256354
	.quad	0x3fea06fef7c243dd              # double 0.81335400000000002
	.quad	0x40188cef672b8844              # double 6.137632
	.quad	0x400fecb9ecf63800              # double 3.9905889999999999
	.quad	0x3ff5c258d5842b73              # double 1.3599479999999999
	.quad	0x40092ca600b02928              # double 3.146801
	.quad	0x4011d6709fa54c55              # double 4.4594139999999998
	.quad	0x4022bc5132f87ad1              # double 9.3678070000000008
	.quad	0x4011439b024f6599              # double 4.3160210000000001
	.quad	0x4014275ab7dc7ac0              # double 5.0384320000000002
	.quad	0x3ff1de16d6dc1a48              # double 1.1167210000000001
	.quad	0x40123cd423d9231c              # double 4.5594029999999997
	.quad	0x401cff459d99029b              # double 7.2492890000000001
	.quad	0x401dd1ef73c0c1fd              # double 7.4550150000000004
	.quad	0x3fe1756a7ac81d3b              # double 0.54558300000000004
	.quad	0x4016457a786c2268              # double 5.56785
	.quad	0x401a952eb5f5f0b3              # double 6.6456860000000004
	.quad	0x3ff4d842b734b513              # double 1.3027979999999999
	.quad	0x40132084a515ce9e              # double 4.7817559999999997
	.quad	0x3fd59c6b05319829              # double 0.33767200000000003
	.quad	0x40178f70153bd167              # double 5.8900759999999996
	.quad	0x401b2513b5bf6a0e              # double 6.7862080000000002
	.quad	0x3ff4434b0e1b4bb6              # double 1.266429
	.quad	0x4010d2d40aaeafab              # double 4.2058869999999997
	.quad	0x400777edc7ef177a              # double 2.9335589999999998
	.quad	0x3fc72702a3486f05              # double 0.18087800000000001
	.quad	0x4006741e14bdfd26              # double 2.8066979999999999
	.quad	0x401cdd19157abb88              # double 7.215916
	.quad	0x4020409b951c5c57              # double 8.1261869999999998
	.quad	0x4010fd106ee30caa              # double 4.2471329999999998
	.quad	0x40215c5da6a44418              # double 8.6804020000000008
	.quad	0x3ff4e131a8ef77f2              # double 1.3049789999999999
	.quad	0x40164659d12cadde              # double 5.568702
	.quad	0x401ab50b0f27bb30              # double 6.6768000000000001
	.quad	0x4018d659d12cadde              # double 6.209327
	.quad	0x401f4b50f40e5a36              # double 7.8235510000000001
	.quad	0x3fe64df47f993d53              # double 0.69701599999999997
	.quad	0x4008bebc83a96d4c              # double 3.0931329999999999
	.quad	0x401dccc63f141206              # double 7.4499750000000002
	.quad	0x401489f90539fba4              # double 5.1347389999999997
	.quad	0x40223d8fd5cb7910              # double 9.1202380000000005
	.quad	0x40219efaa4766c6e              # double 8.8105060000000002
	.quad	0x401b6c28b2a6b0d9              # double 6.8556239999999997
	.quad	0x40207dba6efc371e              # double 8.2455630000000006
	.quad	0x40157e7924af0bf2              # double 5.3735090000000003
	.quad	0x3feb6d0d49949e88              # double 0.85706199999999999
	.quad	0x3fdb1b93037d6302              # double 0.42355799999999999
	.quad	0x40156db402d16b98              # double 5.357132
	.quad	0x3fd5fdac68a936c6              # double 0.34360800000000002
	.quad	0x40166bcf4e874c90              # double 5.605283
	.quad	0x3fe16e2a80064a9d              # double 0.54469800000000002
	.quad	0x401a1deb95e5aff3              # double 6.5292190000000003
	.quad	0x3ff9d4f26aec0725              # double 1.6144890000000001
	.quad	0x4000b9cd8127b2cc              # double 2.0907239999999998
	.quad	0x401083cd141a6938              # double 4.1287120000000002
	.quad	0x4010dfc04c8bc9cd              # double 4.2185069999999998
	.quad	0x400f70374ff865d8              # double 3.9297930000000001
	.quad	0x400784766c6de764              # double 2.9396789999999999
	.quad	0x400089b5a63f9a4a              # double 2.0672410000000001
	.quad	0x400838c3b0c4588a              # double 3.027717
	.quad	0x4014233d6c721922              # double 5.0344139999999999
	.quad	0x40115c17ebaf1023              # double 4.3399349999999997
	.quad	0x4000b9c065b63d3e              # double 2.0906989999999999
	.quad	0x401c484c271fff7a              # double 7.0706030000000002
	.quad	0x4017934e3369b9d8              # double 5.893853
	.quad	0x40201bd2d87f8876              # double 8.0543429999999994
	.quad	0x4022096f6512a950              # double 9.0184280000000001
	.quad	0x4009139c94f69caa              # double 3.134576
	.quad	0x402078df37329c34              # double 8.2360779999999991
	.quad	0x4022e91c6d1e108c              # double 9.4552949999999995
	.quad	0x4001af0281ba7fc3              # double 2.2104539999999999
	.quad	0x401490ba6266fd65              # double 5.1413359999999999
	.quad	0x3ffbecfa69be09bb              # double 1.7453559999999999
	.quad	0x4011b5061416377a              # double 4.4267810000000001
	.quad	0x4011c854cdb7ae58              # double 4.4456360000000004
	.quad	0x3fe27f3ade225fa6              # double 0.57803099999999996
	.quad	0x401093161a1db878              # double 4.1436390000000003
	.quad	0x4017536c9c0a8d22              # double 5.8314690000000002
	.quad	0x401e70a2014727dd              # double 7.6099930000000002
	.quad	0x4001dc66d373affb              # double 2.232618
	.quad	0x400fc6f2e8c0485a              # double 3.972143
	.quad	0x400e7ddf43c7d5ed              # double 3.811461
	.quad	0x4000067839cd8128              # double 2.0031590000000001
	.quad	0x4018f550ca1cef24              # double 6.2395659999999999
	.quad	0x4016d8055fbb517a              # double 5.7109579999999998
	.quad	0x4017fe525892684d              # double 5.9983610000000001
	.quad	0x4015cb6177ea1c69              # double 5.4486140000000001
	.quad	0x401e1b2745bf26f2              # double 7.5265170000000001
	.quad	0x400d2927913e8145              # double 3.645095
	.quad	0x4022b672324c8366              # double 9.3563399999999994
	.quad	0x402154712e40852b              # double 8.6649259999999995
	.quad	0x3ffccaf922962cfe              # double 1.7995540000000001
	.quad	0x401b4947cfa26a23              # double 6.8215630000000003
	.quad	0x3ffeee536501e258              # double 1.9331849999999999
	.quad	0x4020aa38327674d1              # double 8.3324599999999993
	.quad	0x401bde774eebf65e              # double 6.9672520000000002
	.quad	0x401af32f01754b06              # double 6.7374840000000003
	.quad	0x40131df761cbccf3              # double 4.7792640000000004
	.quad	0x400b36bd2b6f1993              # double 3.4017279999999999
	.quad	0x40239ab1d4f9c1f8              # double 9.8021379999999993
	.quad	0x4008ead03d9a9542              # double 3.114655
	.quad	0x401f33ee1bd1ed9e              # double 7.800713
	.quad	0x401dd4ba51a005c4              # double 7.4577419999999996
	.quad	0x4016bec679cc74b8              # double 5.6863039999999998
	.quad	0x4022c0b0af5fd47c              # double 9.3763480000000001
	.quad	0x401cb3cbc48f10aa              # double 7.1755820000000003
	.quad	0x40147c6c11a11234              # double 5.1215060000000001
	.quad	0x4009646e8f29d40f              # double 3.1740390000000001
	.quad	0x3ff410d8cb07d0af              # double 1.254113
	.quad	0x40214aa023209678              # double 8.6457529999999991
	.quad	0x4008ca7ef9db22d1              # double 3.098875
	.quad	0x3ff576d117b5286b              # double 1.3415079999999999
	.quad	0x3ff0599aa60913a5              # double 1.021876
	.quad	0x400fbd73c9257860              # double 3.9675060000000002
	.quad	0x401d6ba387592535              # double 7.3551159999999998
	.quad	0x401f9a18bd66277c              # double 7.9004849999999998
	.quad	0x3fe2702602c9081c              # double 0.57618999999999998
	.quad	0x401097f77af64064              # double 4.1484050000000003
	.quad	0x402271eb6390c910              # double 9.2224989999999991
	.quad	0x40236084a515ce9e              # double 9.6885119999999993
	.quad	0x400f4fec56d5cfab              # double 3.9140250000000001
	.quad	0x401dc7110e453d21              # double 7.444401
	.quad	0x4013b70f3882278d              # double 4.928769
	.quad	0x4006e1ae70c1333c              # double 2.8601960000000002
	.quad	0x4019043914f483cb              # double 6.254124
	.quad	0x401bb7913e81450f              # double 6.929265
	.quad	0x4022602fb5d03105              # double 9.1878639999999994
	.quad	0x40071ea3df6db941              # double 2.889961
	.quad	0x40226523d4f15e7d              # double 9.1975390000000008
	.quad	0x4020e229c779a6b5              # double 8.4417249999999999
	.quad	0x40155d5d80e496ee              # double 5.3411770000000001
	.quad	0x40038b4c7f349386              # double 2.4430170000000002
	.quad	0x40113e219652bd3c              # double 4.3106749999999998
	.quad	0x40175a30db6a1e82              # double 5.8380770000000002
	.quad	0x401352d490e66cb1              # double 4.830889
	.quad	0x40217d06bbdbe3c1              # double 8.744192
	.quad	0x3fe13d816aceaaf3              # double 0.53875799999999996
	.quad	0x4000800da1a93294              # double 2.0625260000000001
	.quad	0x4020823cc8de2ac3              # double 8.2543699999999998
	.quad	0x3f9be1eb4202d9cf              # double 0.027229
	.quad	0x3ffeb1dd5d3dc8b8              # double 1.9184239999999999
	.quad	0x401b512f4cf4a559              # double 6.8292820000000001
	.quad	0x40176bd1aa821f2a              # double 5.8552920000000004
	.quad	0x402356468cac4b4d              # double 9.6685069999999999
	.quad	0x3ffa041ede1198af              # double 1.6260060000000001
	.quad	0x40018c73abc94706              # double 2.1935799999999999
	.quad	0x40000f5903a7546d              # double 2.0074939999999999
	.quad	0x3fdcb3cc4ac6cdaf              # double 0.44847399999999998
	.quad	0x402195c8323358f3              # double 8.7925430000000002
	.quad	0x4008449774256bca              # double 3.0334919999999999
	.quad	0x4017bd08919ef955              # double 5.9346030000000001
	.quad	0x3fe71d9d3458cd21              # double 0.72236500000000003
	.quad	0x401ed379314445aa              # double 7.7065169999999998
	.quad	0x401990852b4d8ba4              # double 6.391133
	.quad	0x3fb9e3da2f8bdec6              # double 0.101133
	.quad	0x40099935fc3b4f61              # double 3.1998099999999998
	.quad	0x4004ab4d056c508b              # double 2.5836429999999999
	.quad	0x4018024e9c454584              # double 6.0022529999999996
	.quad	0x401aa4c6e6d9be4d              # double 6.6609150000000001
	.quad	0x4001d4ad362e9036              # double 2.2288459999999999
	.quad	0x3fe4dbe7f2c3009b              # double 0.65184399999999998
	.quad	0x401b7d4801f75105              # double 6.8723450000000001
	.quad	0x401ee51b0ccbc05d              # double 7.7237359999999997
	.quad	0x4014511dffc5479d              # double 5.0792159999999997
	.quad	0x4003f61aa3f034b1              # double 2.4951680000000001
	.quad	0x4020a03f91e646f1              # double 8.3129849999999994
	.quad	0x400284e592967019              # double 2.3148909999999998
	.quad	0x401dd539fba450ad              # double 7.4582290000000002
	.quad	0x400b5c69728a6117              # double 3.4201229999999998
	.quad	0x401c02d83c6c97d9              # double 7.0027780000000002
	.quad	0x4014398c3b0c4589              # double 5.0561990000000003
	.quad	0x401dc85510d38cda              # double 7.4456369999999996
	.quad	0x3ffbfcc8de2ac322              # double 1.749215
	.quad	0x402195c443914f48              # double 8.7925129999999996
	.quad	0x401ca141205bc01a              # double 7.1574749999999998
	.quad	0x401a83a8e71476b0              # double 6.6285740000000004
	.quad	0x3ff0ffd50225742e              # double 1.062459
	.quad	0x4014c38476f2a5a4              # double 5.1909349999999996
	.quad	0x3f9e14bdfd2630ec              # double 0.029375999999999999
	.quad	0x4011fad70e6f2e8c              # double 4.494961
	.quad	0x3fec13059641f645              # double 0.87732200000000005
	.quad	0x4014fe9f6a93f291              # double 5.2486550000000003
	.quad	0x3ff700ee06d93815              # double 1.437727
	.quad	0x4021abccf28c79f6              # double 8.8355479999999993
	.quad	0x40158237cdcca70d              # double 5.3771659999999999
	.quad	0x4011a91fb3fa6df0              # double 4.4151600000000002
	.quad	0x400384aa53fc0097              # double 2.439778
	.quad	0x3fe894db59578a2b              # double 0.76817100000000005
	.quad	0x40166791819d2392              # double 5.6011410000000001
	.quad	0x4014ad3a604e1e71              # double 5.169168
	.quad	0x40133f25a250f840              # double 4.8116669999999999
	.quad	0x4012483d790752db              # double 4.5705470000000004
	.quad	0x4005fa7f3cf70154              # double 2.7473130000000001
	.quad	0x4023a75c6c11a112              # double 9.8268769999999996
	.quad	0x4010b17b0f6ad70e              # double 4.1733209999999996
	.quad	0x402238ac5c13fd0d              # double 9.11069
	.quad	0x3fd2fe542e557de1              # double 0.29677300000000001
	.quad	0x4015cbf65dbfceb8              # double 5.4491820000000004
	.quad	0x40231c8711d798d9              # double 9.5557180000000006
	.quad	0x401857a56de3326a              # double 6.0855920000000001
	.quad	0x40048160d887ebf2              # double 2.5631729999999999
	.quad	0x4019601322f27350              # double 6.3438230000000004
	.quad	0x4021efb6134ce3de              # double 8.9681859999999993
	.quad	0x400970f733a8a3f9              # double 3.1801590000000002
	.quad	0x4007f77318fc5048              # double 2.995825
	.quad	0x401819231c64ba95              # double 6.0245480000000002
	.quad	0x400c230a915379fb              # double 3.5171100000000002
	.quad	0x401759b845564b66              # double 5.8376169999999998
	.quad	0x401cb8f190d173fb              # double 7.1806089999999996
	.quad	0x3ff6bc8b0079a283              # double 1.4210309999999999
	.quad	0x4004428fe260b2c8              # double 2.5325009999999999
	.quad	0x4020ace0fc2eba28              # double 8.3376540000000006
	.quad	0x3feb9a79fec99f1b              # double 0.86260700000000001
	.quad	0x3ff42ae4b0186120              # double 1.260472
	.quad	0x401edbcd78c436fc              # double 7.7146509999999999
	.quad	0x4021b8a9bcfd4bf1              # double 8.8606700000000007
	.quad	0x401fe36933a0407d              # double 7.9720810000000001
	.quad	0x40105d0f1f57b41c              # double 4.090878
	.quad	0x401b3b9d7fd82774              # double 6.8082180000000001
	.quad	0x4013329b6b2af145              # double 4.7994209999999997
	.quad	0x4020f44d013a92a3              # double 8.47715
	.quad	0x401c6aeff5c6c11a              # double 7.1044309999999999
	.quad	0x4009ef776c4827b7              # double 3.241927
	.quad	0x40111a1dfb9389b5              # double 4.2755049999999999
	.quad	0x3f93497b7414a4d3              # double 0.018835000000000001
	.quad	0x40235abe0589acbd              # double 9.6772310000000008
	.quad	0x401c3b7f1737542a              # double 7.0581019999999999
	.quad	0x401bfb994e1a3f46              # double 6.9957019999999996
	.quad	0x3fcd75d13d74d595              # double 0.230158
	.quad	0x40238d0092ccf6be              # double 9.7753949999999996
	.quad	0x4018748301a79fed              # double 6.1137810000000004
	.quad	0x401cb16b11c6d1e1              # double 7.17326
	.quad	0x40162ee2c98e53eb              # double 5.5457869999999998
	.quad	0x401b4640e9d51b50              # double 6.8186070000000001
	.quad	0x4002a5f5275ee99a              # double 2.3310339999999998
	.quad	0x4013f75ee99a62ed              # double 4.9915729999999998
	.quad	0x3fe4f4d594f26aec              # double 0.654887
	.quad	0x40070e02a77a2ced              # double 2.8818410000000001
	.quad	0x4019b2a77a2cecc8              # double 6.4244669999999999
	.quad	0x3ffffb00bcbe61d0              # double 1.99878
	.quad	0x3ffcd4bad7d7c2ca              # double 1.801936
	.quad	0x400e3f572de43ed9              # double 3.7809279999999998
	.quad	0x4015601083dbc233              # double 5.3438129999999999
	.quad	0x3fc29cfdd2285660              # double 0.14541599999999999
	.quad	0x3ff80f7ec3547e07              # double 1.5037830000000001
	.quad	0x4005bc4da9003eea              # double 2.7169449999999999
	.quad	0x402206fc58ab92c0              # double 9.0136439999999993
	.quad	0x3ff63b8a19c9d5a2              # double 1.3895360000000001
	.quad	0x4008b87c6327ed85              # double 3.0900810000000001
	.quad	0x3fe10060780fdc16              # double 0.53129599999999999
	.quad	0x401274e4c942d491              # double 4.6141540000000001
	.quad	0x40214b777d0f1f58              # double 8.6473960000000005
	.quad	0x400dcb8bef8ceb35              # double 3.7243879999999998
	.quad	0x4018ad594f26aec0              # double 6.1692859999999996
	.quad	0x401861d4f9c1f85d              # double 6.0955389999999996
	.quad	0x4002df02c4d65e46              # double 2.358892
	.quad	0x401aa186db50f40e              # double 6.6577409999999997
	.quad	0x3fe6aff6d330941d              # double 0.70898000000000005
	.quad	0x3fd9adddf43c7d5f              # double 0.40123700000000001
	.quad	0x3ffd0ad256798959              # double 1.815142
	.quad	0x3ff5a35b4edb2f66              # double 1.352382
	.quad	0x3ff7e30db6a1e81d              # double 1.4929330000000001
	.quad	0x3fd8b58d1526d8b2              # double 0.38608100000000001
	.quad	0x4018eb6523704791              # double 6.2298780000000002
	.quad	0x401abe0a41a261bf              # double 6.6855859999999998
	.quad	0x401c6e1c15097c81              # double 7.1075290000000004
	.quad	0x401ca988094e5d5b              # double 7.1655579999999999
	.quad	0x4020c26202539757              # double 8.3796540000000004
	.quad	0x4022761f18c9fb61              # double 9.2307059999999996
	.quad	0x3ffc6f73c0c1fc8f              # double 1.77721
	.quad	0x3fe9dda059a73b43              # double 0.80830400000000002
	.quad	0x4014b9acbc8c0ce9              # double 5.1813229999999999
	.quad	0x3ff3035bd512ec6c              # double 1.18832
	.quad	0x40051dd334c5da6a              # double 2.6395629999999999
	.quad	0x4012fba40d90e23b              # double 4.745743
	.quad	0x40144d28d002e233              # double 5.0753510000000004
	.quad	0x401bedf3b645a1cb              # double 6.9823750000000002
	.quad	0x40075444e0daa0cb              # double 2.916147
	.quad	0x401658b11409a240              # double 5.5866129999999998
	.quad	0x4019d0cbaf965b21              # double 6.4539020000000002
	.quad	0x401fef112fd32c62              # double 7.9834639999999997
	.quad	0x400ed830e3cd9a52              # double 3.8555619999999999
	.quad	0x400db627bf61aa3f              # double 3.713943
	.quad	0x4001db56323bbc6f              # double 2.2320980000000001
	.quad	0x4019f134ce3de615              # double 6.4855530000000003
	.quad	0x4021a133c1ce6c09              # double 8.8148479999999996
	.quad	0x4020ceb09635610b              # double 8.4036910000000002
	.quad	0x401f9a4095f2452c              # double 7.9006369999999997
	.quad	0x4010e4c447c30d30              # double 4.2234049999999996
	.quad	0x400d26eb0b7c3505              # double 3.6440030000000001
	.quad	0x3ff86bd6e8af8162              # double 1.5263279999999999
	.quad	0x3fd0ec39799e518f              # double 0.26441799999999999
	.quad	0x3fc72d87f88765ba              # double 0.18107699999999999
	.quad	0x400f7d4a5df2239e              # double 3.9361769999999998
	.quad	0x401630ac7da1ec4e              # double 5.5475329999999996
	.quad	0x400cd57de0d66f0d              # double 3.604244
	.quad	0x4017aa7c17a89332              # double 5.9164890000000003
	.quad	0x3fb4f96e158750c2              # double 0.081931000000000003
	.quad	0x4022567c286f8ad2              # double 9.1689159999999994
	.quad	0x40217bd76ee73e68              # double 8.7418779999999998
	.quad	0x4020d1e321a2e7f7              # double 8.4099360000000001
	.quad	0x4004e6bce8533b10              # double 2.6126649999999998
	.quad	0x4002f51d68c692f7              # double 2.369685
	.quad	0x40120a67620ee8d1              # double 4.5101599999999999
	.quad	0x4005858a32f44913              # double 2.6902050000000002
	.quad	0x402229be2b4959e6              # double 9.0815289999999997
	.quad	0x4020c2a66dbd72bd              # double 8.3801760000000005
	.quad	0x401654677b395c42              # double 5.5824259999999999
	.quad	0x3ff97ffcdab191de              # double 1.593747
	.quad	0x3ff1eda4484944ed              # double 1.1205179999999999
	.quad	0x401819a0f0a5efe9              # double 6.0250279999999998
	.quad	0x3fe90817fc7607c4              # double 0.78223799999999998
	.quad	0x40037bca1059ea57              # double 2.4354439999999999
	.quad	0x401479988d2a1f8e              # double 5.1187459999999998
	.quad	0x401be7d49d7ba66a              # double 6.9763970000000004
	.quad	0x400541d8e8640208              # double 2.657152
	.quad	0x40032acaff6d3309              # double 2.3958949999999999
	.quad	0x4001512556d19ded              # double 2.164622
	.quad	0x40226d31550ca1cf              # double 9.2132670000000001
	.quad	0x3fff38982cb20fb2              # double 1.951317
	.quad	0x401e9560c7c0f451              # double 7.6458769999999995
	.quad	0x4010793b7d84901d              # double 4.1183909999999999
	.quad	0x401aa2adc4c9c90c              # double 6.6588659999999997
	.quad	0x4020650cc35ce182              # double 8.1973629999999993
	.quad	0x40157e9424e59296              # double 5.3736119999999996
	.quad	0x400902b302f72b45              # double 3.1263179999999999
	.quad	0x4008a5a1cac08312              # double 3.0808749999999998
	.quad	0x40012528283d35eb              # double 2.1431429999999998
	.quad	0x4020604a72ead927              # double 8.1880679999999995
	.quad	0x400517a99fa11a97              # double 2.6365539999999998
	.quad	0x401afe1cde5d1809              # double 6.748157
	.quad	0x40113265f0f5a101              # double 4.2992169999999996
	.quad	0x401250bf1a5ca298              # double 4.5788539999999998
	.quad	0x401bd3b03e20ccff              # double 6.9567269999999999
	.quad	0x3ffb1a5daf07bfe8              # double 1.693937
	.quad	0x401e392ea52ef912              # double 7.5558420000000002
	.quad	0x4009ee39b456b442              # double 3.2413210000000001
	.quad	0x400a0b7baecd0785              # double 3.2556069999999999
	.quad	0x40214befae7924af              # double 8.6483129999999999
	.quad	0x401d39fb6134ce3e              # double 7.3066230000000001
	.quad	0x4014cfbca1059ea5              # double 5.2028679999999996
	.quad	0x401c41cd5f99c38b              # double 7.06426
	.quad	0x40160468cac4b4d0              # double 5.5043059999999997
	.quad	0x4020be83a109d063              # double 8.3720979999999994
	.quad	0x4020cb87bdcf0308              # double 8.3975200000000001
	.quad	0x4018fbc77143393b              # double 6.2458780000000003
	.quad	0x4021757f737da61e              # double 8.7294879999999999
	.quad	0x401304bbe4473cd5              # double 4.7546229999999996
	.quad	0x4012a5b8561d4307              # double 4.6618360000000001
	.quad	0x401ac419e30014f9              # double 6.6915050000000003
	.quad	0x40174fcb923a29c7              # double 5.8279249999999996
	.quad	0x402290b652370479              # double 9.2826409999999999
	.quad	0x4019c9c6f36ef805              # double 6.4470479999999997
	.quad	0x3ff8207c4199fe43              # double 1.5079309999999999
	.quad	0x4010061522a6f3f5              # double 4.0059399999999998
	.quad	0x400af05e1c15097d              # double 3.3673670000000002
	.quad	0x401d6229e90795f6              # double 7.3458629999999996
	.quad	0x401ca2dba4d6e47e              # double 7.1590410000000002
	.quad	0x401915ee136e71ce              # double 6.2714160000000003
	.quad	0x401f510f0e90bc7b              # double 7.8291589999999997
	.quad	0x40111426351deefe              # double 4.2696769999999997
	.quad	0x40211fa54c554328              # double 8.5618079999999992
	.quad	0x3ffd872f33ca31e8              # double 1.845504
	.quad	0x401ec95f676ea423              # double 7.6966530000000004
	.quad	0x40003ca7d6733ebc              # double 2.029617
	.quad	0x3ff4a6527a20578e              # double 1.2906059999999999
	.quad	0x4005e718a86d71f3              # double 2.7378399999999998
	.quad	0x400bb825e13b18db              # double 3.4649160000000001
	.quad	0x4000c958d9b5e95b              # double 2.0983139999999998
	.quad	0x40224532617c1bda              # double 9.1351499999999994
	.quad	0x40048950fc71d606              # double 2.5670489999999999
	.quad	0x40061a311e85fd05              # double 2.7627890000000002
	.quad	0x4010327c7c5260f6              # double 4.0493030000000001
	.quad	0x4022f8c9752977c9              # double 9.4859120000000007
	.quad	0x40150df1e0828c37              # double 5.2636180000000001
	.quad	0x401eeda6a4441787              # double 7.7320809999999999
	.quad	0x4004e6bb55ac03ff              # double 2.6126619999999998
	.quad	0x3fd005425f202108              # double 0.25032100000000002
	.quad	0x3ff761cde5d18091              # double 1.4613780000000001
	.quad	0x4019f5093964a59c              # double 6.489293
	.quad	0x401f5b5d894812be              # double 7.8392239999999997
	.quad	0x3fe2da187a4a48f9              # double 0.58912299999999995
	.quad	0x4021cb4e7685985b              # double 8.8970830000000003
	.quad	0x401621455219a848              # double 5.5324910000000003
	.quad	0x400c3763e4abe6a3              # double 3.5270459999999999
	.quad	0x400f71f1cfbb9496              # double 3.9306369999999999
	.quad	0x4020bd4aa10e0221              # double 8.3697099999999995
	.quad	0x401e30cd423d9232              # double 7.5476580000000002
	.quad	0x40231adcf4623d0c              # double 9.552467
	.quad	0x3fec123e5b8561d4              # double 0.87722699999999997
	.quad	0x4003506573215fcc              # double 2.414256
	.quad	0x40207e91a75cd0bb              # double 8.2472049999999992
	.quad	0x40221cc4ac6cdaf5              # double 9.0561880000000006
	.quad	0x401763686a4ca4f4              # double 5.8470779999999998
	.quad	0x40210d1f601797cc              # double 8.5256299999999995
	.quad	0x401143775b813016              # double 4.3158849999999997
	.quad	0x401f0c475e6362a6              # double 7.7619910000000001
	.quad	0x400c3f9591cd1c7e              # double 3.531047
	.quad	0x4022265cd4ed2cbf              # double 9.0749270000000006
	.quad	0x40042393ee5eedcc              # double 2.5173719999999999
	.quad	0x4015e1b152f3c2db              # double 5.4704030000000001
	.quad	0x4021647a5b0ff10f              # double 8.6962460000000004
	.quad	0x40042f66a5508701              # double 2.523145
	.quad	0x40190e0ded288ce7              # double 6.263725
	.quad	0x400a5881a1554fbe              # double 3.2932160000000001
	.quad	0x401994e618ce2d1f              # double 6.3954089999999999
	.quad	0x3ffc234b945308bc              # double 1.7586170000000001
	.quad	0x40075327aa68f4b6              # double 2.9156029999999999
	.quad	0x401402441fea8113              # double 5.0022130000000002
	.quad	0x4006a5321e603d57              # double 2.8306619999999998
	.quad	0x401d9c404a72ead9              # double 7.4025889999999999
	.quad	0x4022b2f038e29f9d              # double 9.3494890000000002
	.quad	0x4023b874ea8da7f4              # double 9.8602670000000003
	.quad	0x4001ccd74927913f              # double 2.2250200000000002
	.quad	0x4020cc1bfbdf090f              # double 8.3986509999999992
	.quad	0x4010392641b328b7              # double 4.0558100000000001
	.quad	0x401506fbd273d5bb              # double 5.2568200000000003
	.quad	0x40101a0f0a5efe93              # double 4.0254479999999999
	.quad	0x400c64f3343fa2ad              # double 3.5492919999999999
	.quad	0x400ff02ababead4f              # double 3.9922689999999998
	.quad	0x400e7bfbdf090f73              # double 3.8105389999999999
	.quad	0x401a59a9973d9ec7              # double 6.587561
	.quad	0x401b0704790b8499              # double 6.7568530000000004
	.quad	0x4019cc5e6ff7dfa0              # double 6.449579
	.quad	0x401fbb4784230fd0              # double 7.9328900000000004
	.quad	0x402249bbadc0980b              # double 9.1440099999999997
	.quad	0x4021ea6a875d56f3              # double 8.9578439999999997
	.quad	0x401e2b50f40e5a36              # double 7.5423010000000001
	.quad	0x40215a437824d4cc              # double 8.6762960000000006
	.quad	0x401e7c0053e2d624              # double 7.6210950000000004
	.quad	0x400cdc5931ca7d67              # double 3.6075919999999999
	.quad	0x401a46b4c7f34938              # double 6.5690489999999997
	.quad	0x400801ac57e23f25              # double 3.0008170000000001
	.quad	0x401c5aba7b9170d6              # double 7.0886019999999998
	.quad	0x401626f9b994e1a4              # double 5.538062
	.quad	0x3fe1246173b85e81              # double 0.53569100000000003
	.quad	0x400811fddebd9019              # double 3.008785
	.quad	0x40228d903a7546d4              # double 9.276491
	.quad	0x4001245dc8323359              # double 2.142757
	.quad	0x4009457b84db9c73              # double 3.1589269999999998
	.quad	0x4022da3897204296              # double 9.4262130000000006
	.quad	0x402180b955f7835a              # double 8.7514140000000005
	.quad	0x401eda133c1ce6c1              # double 7.7129640000000003
	.quad	0x4004ec3f3e0370ce              # double 2.6153550000000001
	.quad	0x40072df8b1572581              # double 2.8974470000000001
	.quad	0x401a13f290abb44e              # double 6.5194799999999997
	.quad	0x4015abf5d78811b2              # double 5.4179300000000001
	.quad	0x4015142bb6672fba              # double 5.269698
	.quad	0x401c5f8012dfd695              # double 7.0932620000000002
	.quad	0x4012f6d506573216              # double 4.741047
	.quad	0x4001894bbe4473cd              # double 2.1920389999999998
	.quad	0x401d5343fa2ad3e9              # double 7.3313139999999999
	.quad	0x401c858b827fa1a1              # double 7.1304150000000002
	.quad	0x4010aeccc46950fc              # double 4.1707029999999996
	.quad	0x400775ff609dcf89              # double 2.9326159999999999
	.quad	0x3faf542a23bff8a9              # double 0.061189
	.quad	0x400b2394face67d7              # double 3.3923739999999998
	.quad	0x4001603254e6e222              # double 2.1719710000000001
	.quad	0x401172a66dbd72bd              # double 4.3619630000000003
	.quad	0x402389a11233df2b              # double 9.7688070000000006
	.quad	0x400ad7ca2120e1f8              # double 3.3553660000000001
	.quad	0x401d91a8262456f7              # double 7.3922429999999997
	.quad	0x3fd83c2dadb8348f              # double 0.37867299999999998
	.quad	0x401ede02645e4e6a              # double 7.7168060000000001
	.quad	0x4014bb2dd377e1b9              # double 5.1827920000000001
	.quad	0x4023129f9ce8d973              # double 9.5363740000000003
	.quad	0x40120a433508f649              # double 4.5100220000000002
	.quad	0x4004e225742dcf46              # double 2.6104229999999999
	.quad	0x4010062d83c6c97e              # double 4.0060330000000004
	.quad	0x401ac32b12d3415b              # double 6.6905939999999999
	.quad	0x4001cff08893b7d8              # double 2.2265329999999999
	.quad	0x4005478854cdb7ae              # double 2.6599279999999998
	.quad	0x4020da6d4801f751              # double 8.426615
	.quad	0x4012fe0daa0cae64              # double 4.7480989999999998
	.quad	0x400d75c28f5c28f6              # double 3.6825000000000001
	.quad	0x400e314ca925fe97              # double 3.7740719999999999
	.quad	0x400fa8ede54b48d4              # double 3.9574850000000001
	.quad	0x4015242cc2d6a9c5              # double 5.2853269999999997
	.quad	0x400cdf0d413122b8              # double 3.6089120000000001
	.quad	0x401246dc1a47a9e3              # double 4.5691990000000002
	.quad	0x400088aa433508f6              # double 2.0667309999999999
	.quad	0x3ff49d462c343b71              # double 1.288397
	.quad	0x401c230f8c64fdb1              # double 7.0342390000000004
	.quad	0x40101d573647baaa              # double 4.0286530000000003
	.quad	0x4004f36049ecb31c              # double 2.6188359999999999
	.quad	0x400e26e08f217093              # double 3.768983
	.quad	0x40133f416bdb1a6d              # double 4.8117729999999996
	.quad	0x4002f1fd5885d313              # double 2.3681589999999999
	.quad	0x4022b71843c3a42f              # double 9.3576069999999997
	.quad	0x3fe37e931876188b              # double 0.60920099999999999
	.quad	0x3ffeb204295a6c5d              # double 1.918461
	.quad	0x4022c8afe60c38f3              # double 9.3919669999999992
	.quad	0x3ffbfb6aa4b9884c              # double 1.7488809999999999
	.quad	0x3fe502b40f66a551              # double 0.65658000000000005
	.quad	0x40097288ce703afb              # double 3.1809249999999998
	.quad	0x401f0adbc664d3bf              # double 7.7606039999999998
	.quad	0x3fc84827b6fe2e6f              # double 0.18970200000000001
	.quad	0x401a82f0e0a84be4              # double 6.627872
	.quad	0x402295e00d1b7176              # double 9.2927250000000008
	.quad	0x400b83150dae3e6c              # double 3.4390049999999999
	.quad	0x40155d2c386d2ed8              # double 5.3409890000000004
	.quad	0x4020ba20578e5c4f              # double 8.3635280000000005
	.quad	0x4014c19ef954eb14              # double 5.1890830000000001
	.quad	0x3fbafe2e6ea85447              # double 0.10544099999999999
	.quad	0x3ff61fe004b7f5a5              # double 1.382782
	.quad	0x401cff8f041461b7              # double 7.2495690000000002
	.quad	0x40068586876e1deb              # double 2.8151980000000001
	.quad	0x4022fc901d19157b              # double 9.4932870000000004
	.quad	0x400144ba94bbe447              # double 2.1585589999999999
	.quad	0x401b0a715831f03d              # double 6.7601979999999999
	.quad	0x400673892ee84ad8              # double 2.8064140000000002
	.quad	0x3fddb9991361dc94              # double 0.464453
	.quad	0x401fb62845996745              # double 7.9278880000000002
	.quad	0x3ff828bc169c23b8              # double 1.5099450000000001
	.quad	0x3fd487ebf22c01e7              # double 0.32079600000000003
	.quad	0x4009d4538ef34d6a              # double 3.228675
	.quad	0x4022922813448063              # double 9.2854620000000008
	.quad	0x3fd507a28bb0a2cb              # double 0.32859100000000002
	.quad	0x40186477ff151e75              # double 6.0981139999999998
	.quad	0x402094e5b4245f5b              # double 8.2908150000000003
	.quad	0x4008f2d3c792d128              # double 3.1185679999999998
	.quad	0x4003090364388ebd              # double 2.3794010000000001
	.quad	0x3fe046cb966be7b0              # double 0.50864200000000004
	.quad	0x3fda00ffda4052d6              # double 0.40631099999999998
	.quad	0x4020e69f6a93f291              # double 8.4504350000000006
	.quad	0x4017dc98e53eb39a              # double 5.965427
	.quad	0x401f8a1fd1569f49              # double 7.8848869999999999
	.quad	0x40123625204af923              # double 4.5528760000000004
	.quad	0x401534289118c198              # double 5.3009360000000001
	.quad	0x3ff43a7fc32ebe59              # double 1.2642819999999999
	.quad	0x401b79984a0e410b              # double 6.8687449999999997
	.quad	0x4016e3a08398a655              # double 5.7222920000000004
	.quad	0x4004261847f56217              # double 2.5186009999999999
	.quad	0x400d05b0ff10ecb7              # double 3.6277789999999999
	.quad	0x3ff6189ce4a7b4e5              # double 1.3810089999999999
	.quad	0x4008a07b352a8438              # double 3.07836
	.quad	0x3fe5b43fa2ad3e92              # double 0.67825299999999999
	.quad	0x401d0345069a4df4              # double 7.2531929999999996
	.quad	0x401a0d606317268d              # double 6.5130629999999998
	.quad	0x401676cf850df15a              # double 5.6160259999999997
	.quad	0x3fed2f922962cfd9              # double 0.91205700000000001
	.quad	0x3ff440767d34df05              # double 1.265738
	.quad	0x40174c087442c7fc              # double 5.8242510000000003
	.quad	0x401d0e5de15ca6ca              # double 7.26403
	.quad	0x4011d50a02b84125              # double 4.4580460000000004
	.quad	0x40165f776c4827b7              # double 5.593229
	.quad	0x401d44e5d5b24e9c              # double 7.3172829999999998
	.quad	0x3fed4f3ba775fb2f              # double 0.91592200000000001
	.quad	0x4022ff5275ee99a6              # double 9.4986759999999997
	.quad	0x40148da3c21187e8              # double 5.1383200000000002
	.quad	0x4006e3022dd7a9a0              # double 2.8608440000000002
	.quad	0x4011f6177ea1c68f              # double 4.4903240000000002
	.quad	0x4018b3ac4f7ec354              # double 6.1754619999999996
	.quad	0x3ff66e008e9b38d6              # double 1.401856
	.quad	0x4017e75a31a4bdba              # double 5.97593
	.quad	0x4021682b841248d8              # double 8.7034570000000002
	.quad	0x3fe2e4d5d80e496f              # double 0.59043400000000001
	.quad	0x40048e525892684d              # double 2.569493
	.quad	0x3ffa56b228dc981c              # double 1.646166
	.quad	0x4023d38c5436b8fa              # double 9.9131800000000005
	.quad	0x400ea7a4a48f96e1              # double 3.8318569999999998
	.quad	0x401c6263d816aceb              # double 7.0960840000000003
	.quad	0x4007c0a06e9ff0cc              # double 2.9690560000000001
	.quad	0x400624cdfaca361a              # double 2.7679710000000002
	.quad	0x4016ce69270b06c4              # double 5.7015729999999998
	.quad	0x4017fdadb8348f54              # double 5.9977330000000002
	.quad	0x4011b06034f3fd93              # double 4.4222419999999998
	.quad	0x3ffaae7e62dc6e2b              # double 1.6676010000000001
	.quad	0x401f6d7f950b955f              # double 7.8569319999999995
	.quad	0x401f60fe047d3d43              # double 7.8447190000000004
	.quad	0x4012255cd91eeaa7              # double 4.5364870000000002
	.quad	0x4023e5e26916440f              # double 9.9489929999999997
	.quad	0x401e2dea033e78e2              # double 7.5448380000000004
	.quad	0x4007d8ca8198f1d4              # double 2.980855
	.quad	0x401c4144028e4fb9              # double 7.0637359999999996
	.quad	0x4002668b9fdbd2fa              # double 2.300071
	.quad	0x3ff5a333764f11b6              # double 1.352344
	.quad	0x401eefde2ef4e011              # double 7.7342459999999997
	.quad	0x40075549731098d4              # double 2.9166439999999998
	.quad	0x3ff87661f18c9fb6              # double 1.528902
	.quad	0x4006d540895d0b74              # double 2.8541270000000001
	.quad	0x4019d4b2fa93af75              # double 6.4577140000000002
	.quad	0x40028c83ec892ab7              # double 2.3186110000000002
	.quad	0x400f7f22c01e68a1              # double 3.9370780000000001
	.quad	0x4022cebd2b6f1993              # double 9.4037869999999994
	.quad	0x401d9c1094a2b9d4              # double 7.4024070000000002
	.quad	0x400835f2cb641701              # double 3.0263420000000001
	.quad	0x3fe7f46887a8d64d              # double 0.74858499999999994
	.quad	0x401c40895d0b73d2              # double 7.0630240000000004
	.quad	0x4020ed1fa333764f              # double 8.4631319999999999
	.quad	0x4010f2f1ed17c5ef              # double 4.2372509999999997
	.quad	0x4013380303c07ee1              # double 4.8046990000000003
	.quad	0x401b11db0142f61f              # double 6.7674370000000001
	.quad	0x401549e8c47a17f4              # double 5.3221769999999999
	.quad	0x400c09e0a41a261c              # double 3.504823
	.quad	0x4021b9d2178f68be              # double 8.8629309999999997
	.quad	0x401db29068986fce              # double 7.4243790000000001
	.quad	0x4012d4755ffe6d59              # double 4.7074790000000002
	.quad	0x40047c58ab92c062              # double 2.5607160000000002
	.quad	0x401e465300581494              # double 7.568676
	.quad	0x402092af35e310dc              # double 8.2864930000000001
	.quad	0x4023b5fc3b4f6167              # double 9.8554399999999997
	.quad	0x401bd9c886162f16              # double 6.9626789999999996
	.quad	0x3ff8d08919ef954f              # double 1.5509120000000001
	.quad	0x400639de481f5382              # double 2.7782559999999998
	.quad	0x3ff4e3e5b8561d43              # double 1.305639
	.quad	0x401b2babead4f590              # double 6.7926479999999998
	.quad	0x3ff85a3c21187e7c              # double 1.52203
	.quad	0x4001f36cdf266ba5              # double 2.2438600000000002
	.quad	0x3fe00d5410f94c88              # double 0.50162700000000005
	.quad	0x401a716db0dd82fd              # double 6.6107699999999996
	.quad	0x40214e3e6c4c5975              # double 8.6528200000000002
	.quad	0x4016565ba6efc372              # double 5.5843340000000001
	.quad	0x401bb697aeddce7d              # double 6.9283130000000002
	.quad	0x40127f893faf4278              # double 4.6245469999999997
	.quad	0x401e13baba7b9171              # double 7.5192670000000001
	.quad	0x4010851b0ccbc05d              # double 4.1299859999999997
	.quad	0x400269e34330d738              # double 2.3017029999999998
	.quad	0x3fecdf4e4430b179              # double 0.90225900000000003
	.quad	0x401d223e5b8561d4              # double 7.2834409999999998
	.quad	0x40238800eae18aca              # double 9.7656320000000001
	.quad	0x401943198288051d              # double 6.3155270000000003
	.quad	0x401ce9de481f5382              # double 7.2283869999999997
	.quad	0x40234a4c404a72eb              # double 9.6451130000000002
	.quad	0x4015168a50507a6c              # double 5.2720120000000001
	.quad	0x3fff2fb2aae29739              # double 1.9491449999999999
	.quad	0x3fe8c0c62e4d1a65              # double 0.773532
	.quad	0x4010f1bc126a65cf              # double 4.2360689999999996
	.quad	0x3fd8ebfec13b9f12              # double 0.38940399999999997
	.quad	0x3fe8da7d24180d3d              # double 0.776671
	.quad	0x401446822ff08894              # double 5.0688560000000003
	.quad	0x40139e7ee9142b30              # double 4.9047809999999998
	.quad	0x40210aad81adea89              # double 8.5208549999999992
	.quad	0x400fe77681669ced              # double 3.988019
	.quad	0x4015ee41919ac797              # double 5.482672
	.quad	0x4012e3dea465a576              # double 4.7225289999999998
	.quad	0x40181f455a7d2418              # double 6.030538
	.quad	0x3fcdf5275ee99a63              # double 0.234044
	.quad	0x40105c332f01754b              # double 4.090039
	.quad	0x402155438d1d8a55              # double 8.6665310000000009
	.quad	0x40101c0db2702a35              # double 4.0273960000000004
	.quad	0x40069f27fe4bcada              # double 2.8277130000000001
	.quad	0x400fa0bf5d78811b              # double 3.9534899999999999
	.quad	0x4004e1ed5ae1cde6              # double 2.6103160000000001
	.quad	0x400c34b05b7cfe58              # double 3.5257269999999998
	.quad	0x401439ba1b1960fa              # double 5.0563739999999999
	.quad	0x3fca51c193b3a68b              # double 0.20562
	.quad	0x402356d938151a43              # double 9.6696259999999991
	.quad	0x4003bbbc6eb0b7c3              # double 2.4666679999999999
	.quad	0x400d8d855970b49e              # double 3.694102
	.quad	0x4017a24c404a72eb              # double 5.9084940000000001
	.quad	0x4007dac929aa1d75              # double 2.9818289999999998
	.quad	0x4012bda1a93293d1              # double 4.685187
	.quad	0x400863c6c97d8cf4              # double 3.0487190000000002
	.quad	0x4021050c3d25247d              # double 8.5098590000000005
	.quad	0x40112e7afa722186              # double 4.2953910000000004
	.quad	0x400e9a22706d5065              # double 3.8252609999999998
	.quad	0x3fed3acb4289118c              # double 0.91342699999999998
	.quad	0x40022d01c0ca600b              # double 2.271976
	.quad	0x400e14091c087443              # double 3.7597830000000001
	.quad	0x40229af07bfe7e20              # double 9.3026160000000004
	.quad	0x401bda69be09bb6b              # double 6.9632940000000003
	.quad	0x4011c193708aac97              # double 4.4390390000000002
	.quad	0x400d37bd05af6c6a              # double 3.6522160000000001
	.quad	0x40158cdab191dde3              # double 5.3875529999999996
	.quad	0x401299c347e8ccde              # double 4.6501590000000004
	.quad	0x4010b99cbee807bc              # double 4.1812620000000003
	.quad	0x4012d3ca7503b81b              # double 4.7068269999999997
	.quad	0x3fefa8650e779208              # double 0.98930600000000001
	.quad	0x401c22a8c9b84556              # double 7.0338469999999997
	.quad	0x3ff2644955b4677b              # double 1.149484
	.quad	0x40119d31b9b66f93              # double 4.4035099999999998
	.quad	0x4004961565c2d278              # double 2.573283
	.quad	0x400ebed3953dea46              # double 3.8431769999999998
	.quad	0x4017506ab14ec205              # double 5.828532
	.quad	0x4017983558a76102              # double 5.8986409999999996
	.quad	0x3fe7e58e64b23140              # double 0.74677199999999999
	.quad	0x4010e0d5a5b9628d              # double 4.2195650000000002
	.quad	0x400a6c4588a04d12              # double 3.302867
	.quad	0x401db005814940bc              # double 7.4218960000000003
	.quad	0x400000852b4d8ba4              # double 2.000254
	.quad	0x4003d2e05ccc89b1              # double 2.477967
	.quad	0x402257bd8be7296f              # double 9.1713679999999993
	.quad	0x3ffba88df37329c3              # double 1.7286509999999999
	.quad	0x400fa719b4dcebff              # double 3.9565920000000001
	.quad	0x3ffbbb04ee7c49fd              # double 1.7331589999999999
	.quad	0x401038e79aae6c8f              # double 4.0555709999999996
	.quad	0x4021dd019f3c70ca              # double 8.9316530000000007
	.quad	0x40087d00713f077d              # double 3.0610360000000001
	.quad	0x4008430121682f94              # double 3.0327169999999999
	.quad	0x4011e98c3b0c4589              # double 4.4780740000000003
	.quad	0x401bad5a9eb2074f              # double 6.9192910000000003
	.quad	0x401635821294573a              # double 5.5522539999999996
	.quad	0x401a4909f1f14984              # double 6.5713270000000001
	.quad	0x400ce939eadd590c              # double 3.61388
	.quad	0x400bc0828c36da88              # double 3.4689990000000002
	.quad	0x401973a96d4c33b5              # double 6.3629509999999998
	.quad	0x3fff1757d5a9eb20              # double 1.9431989999999999
	.quad	0x4011678c0053e2d6              # double 4.3511199999999999
	.quad	0x4006ec1b10fd7e46              # double 2.8652860000000002
	.quad	0x401acc026cc1ca3a              # double 6.6992279999999997
	.quad	0x4018bf8b9baa1512              # double 6.1870560000000001
	.quad	0x400761e603d57796              # double 2.9228019999999999
	.quad	0x4023adb2702a3487              # double 9.8392520000000001
	.quad	0x4023b5e310dbf056              # double 9.8552479999999996
	.quad	0x4023247ecfe9b7bf              # double 9.5712799999999997
	.quad	0x4014c12f4cf4a559              # double 5.1886570000000001
	.quad	0x4008de99e94ab1d5              # double 3.108692
	.quad	0x3fdb9f72f76e6107              # double 0.43160700000000002
	.quad	0x400c04f6dfc5cdd5              # double 3.502424
	.quad	0x400008049667b5f2              # double 2.0039150000000001
	.quad	0x3ff5aa4873365882              # double 1.3540730000000001
	.quad	0x401cd259e1f3a57f              # double 7.2054210000000003
	.quad	0x401e7fa11a975afb              # double 7.624638
	.quad	0x40237e5cf67b1c00              # double 9.7468029999999999
	.quad	0x40002eec7c957cd4              # double 2.0229119999999998
	.quad	0x40127d6e04c05921              # double 4.62249
	.quad	0x400b4cd0fe8ab4fa              # double 3.4125079999999999
	.quad	0x40153906034f3fd9              # double 5.3056869999999998
	.quad	0x3ffccfd8f0c77dd8              # double 1.8007439999999999
	.quad	0x40165989df1172ef              # double 5.58744
	.quad	0x401f0a871a3b14a9              # double 7.7602809999999999
	.quad	0x3fc5af965b20b806              # double 0.16942099999999999
	.quad	0x401902da122fad6d              # double 6.2527850000000003
	.quad	0x401dc5f5f0b28523              # double 7.4433210000000001
	.quad	0x402136924f227d03              # double 8.6065850000000008
	.quad	0x3ffe5a6f826edaa9              # double 1.897079
	.quad	0x4019d57eed45e918              # double 6.4584919999999997
	.quad	0x400279bfdf7e8039              # double 2.3094480000000002
	.quad	0x4010351d25aab474              # double 4.0518689999999999
	.quad	0x400f0109d0635a42              # double 3.8755069999999998
	.quad	0x4012378e9f6a93f3              # double 4.5542550000000004
	.quad	0x4019890fb65668c2              # double 6.3838489999999997
	.quad	0x40033789a459103d              # double 2.4021180000000002
	.quad	0x40124f8f8a4c1ebd              # double 4.5776960000000004
	.quad	0x400e1517a46173b8              # double 3.7602989999999998
	.quad	0x400398ac9f2fdb90              # double 2.4495480000000001
	.quad	0x40153c6540cc78ea              # double 5.30898
	.quad	0x4011f0b912dba4d7              # double 4.4850810000000001
	.quad	0x401111a9fbe76c8b              # double 4.2672499999999998
	.quad	0x3fd02a77a2cecc81              # double 0.25259199999999998
	.quad	0x401112e44b6e935c              # double 4.2684490000000004
	.quad	0x401a25d031055b8a              # double 6.5369270000000004
	.quad	0x401c60c6b484d76b              # double 7.0945080000000003
	.quad	0x3ff8501d19157abc              # double 1.5195590000000001
	.quad	0x401ff1465e892253              # double 7.9856199999999999
	.quad	0x402198b6f9fcb0c0              # double 8.7982709999999997
	.quad	0x40174787ce95faa9              # double 5.8198540000000003
	.quad	0x401120d0aaa7ded7              # double 4.2820460000000002
	.quad	0x3fe5c7219220ff54              # double 0.680558
	.quad	0x401508ec95bff045              # double 5.2587149999999996
	.quad	0x4006b4fd6d7e889c              # double 2.838374
	.quad	0x3ff6d0364388ebcc              # double 1.4258329999999999
	.quad	0x3ffa670c1333b96b              # double 1.650158
	.quad	0x3fdaf90d9d7774ac              # double 0.42145100000000002
	.quad	0x402258535c9e6688              # double 9.172511
	.quad	0x4023dfede97d06bc              # double 9.9373620000000002
	.quad	0x4021403f0bae89ec              # double 8.6254810000000006
	.quad	0x4017053111f0c34c              # double 5.7550699999999999
	.quad	0x40219fa7c9de0503              # double 8.8118269999999992
	.quad	0x40149fd2a62aa194              # double 5.1560769999999998
	.quad	0x400cec36da87a073              # double 3.6153390000000001
	.quad	0x401d020c49ba5e35              # double 7.2519999999999998
	.quad	0x402097e21d96e9bc              # double 8.2966470000000001
	.quad	0x3ffa168a50507a6c              # double 1.630503
	.quad	0x3fe5b7fbefd00714              # double 0.67870900000000001
	.quad	0x4015042c3c9eecc0              # double 5.2540750000000003
	.quad	0x401ee3111f0c34c2              # double 7.7217450000000003
	.quad	0x40136083558a7610              # double 4.8442509999999999
	.quad	0x400ab296f6512a95              # double 3.337202
	.quad	0x40229c6173b85e81              # double 9.3054310000000005
	.quad	0x4011ebdc69f8c21e              # double 4.4803329999999999
	.quad	0x3fc82df0d413122b              # double 0.18890199999999999
	.quad	0x40198d7cf5f4e443              # double 6.388172
	.quad	0x3ff7e7168f8e7ddd              # double 1.4939180000000001
	.quad	0x3fef859210385c68              # double 0.98505500000000001
	.quad	0x401f3ee0f3cb3e57              # double 7.8114049999999997
	.quad	0x401f228283d35eb7              # double 7.7837009999999997
	.quad	0x3fcb32c625e99e95              # double 0.21248700000000001
	.quad	0x40138c6583e8576d              # double 4.8871060000000002
	.quad	0x401af25e13b18dac              # double 6.7366869999999999
	.quad	0x40079cb039ef0f17              # double 2.951508
	.quad	0x4000266fd651b0cd              # double 2.0187680000000001
	.quad	0x3ff7d4b167ec7864              # double 1.4894270000000001
	.quad	0x401663b4b2fa93af              # double 5.5973689999999996
	.quad	0x4021033f42352eb6              # double 8.5063420000000001
	.quad	0x4023416aad1d041d              # double 9.6277670000000004
	.quad	0x4020619439de481f              # double 8.1905839999999994
	.quad	0x40127769ec2ce465              # double 4.6166150000000004
	.quad	0x40223b26e115592e              # double 9.1155310000000007
	.quad	0x402000cdc8754f37              # double 8.0015699999999992
	.quad	0x401f5b4edb2f661f              # double 7.8391679999999999
	.quad	0x40207a600b029281              # double 8.2390139999999992
	.quad	0x3fd6064a9cdc4439              # double 0.344134
	.quad	0x3fc496feb4a6655a              # double 0.160858
	.quad	0x4023110ff9724745              # double 9.5333249999999996
	.quad	0x3fff523a29c779a7              # double 1.9575750000000001
	.quad	0x401981ab8e8ea39c              # double 6.3766309999999997
	.quad	0x4014c7b5286b5914              # double 5.1950269999999996
	.quad	0x401ecd8b1dd5d3dd              # double 7.7007260000000004
	.quad	0x3fdcd69d30270f39              # double 0.45059900000000003
	.quad	0x4010db55ef1fddec              # double 4.2141950000000001
	.quad	0x4011e17e34b94531              # double 4.4702080000000004
	.quad	0x400ca433d6c72192              # double 3.5801769999999999
	.quad	0x4018ba5e785b5b70              # double 6.1820009999999996
	.quad	0x400c7901083dbc23              # double 3.5590839999999999
	.quad	0x40225d052934acb0              # double 9.1816800000000001
	.quad	0x401ab5c9a34ca0c3              # double 6.6775270000000004
	.quad	0x4020a1b36bd2b6f2              # double 8.3158220000000007
	.quad	0x3ff551dabe27179c              # double 1.332484
	.quad	0x4002f99806f26289              # double 2.3718720000000002
	.quad	0x401c45abc0e38a7e              # double 7.0680379999999996
	.quad	0x402112f0e0a84be4              # double 8.5369939999999999
	.quad	0x401a6de2ac322292              # double 6.60731
	.quad	0x401909fcb0c026cc              # double 6.2597529999999999
	.quad	0x40089466f5019f3c              # double 3.0724619999999998
	.quad	0x3fff8070329802c1              # double 1.9688570000000001
	.quad	0x401ba148fd9fd36f              # double 6.9075049999999996
	.quad	0x3ff1635a426bb55b              # double 1.0867560000000001
	.quad	0x3fcbb24638c97529              # double 0.21637799999999999
	.quad	0x3fe40c21e1d2178f              # double 0.62648099999999995
	.quad	0x4018673abc947065              # double 6.1008100000000001
	.quad	0x40222e40639d5e4a              # double 9.0903349999999996
	.quad	0x3fdecb252ce032db              # double 0.48114899999999999
	.quad	0x401d59652bd3c361              # double 7.3372999999999999
	.quad	0x3ffd388333fc86cf              # double 1.8262970000000001
	.quad	0x40161fa615a8deb1              # double 5.530907
	.quad	0x4021692253111f0c              # double 8.7053399999999996
	.quad	0x3fdba033e78e1933              # double 0.43165300000000001
	.quad	0x402053a53b8e4b88              # double 8.1633700000000005
	.quad	0x401cd143393ab431              # double 7.204358
	.quad	0x4019dd423d9231c6              # double 6.4660729999999997
	.quad	0x3ff92c450268900c              # double 1.5733079999999999
	.quad	0x40122d0d49949e88              # double 4.5439959999999999
	.quad	0x4019fdfdef8487ba              # double 6.4980390000000003
	.quad	0x4022e1b52007dd44              # double 9.4408349999999998
	.quad	0x4009552b0a6fc58b              # double 3.1665860000000001
	.quad	0x4023aa328f9f44d4              # double 9.8324169999999995
	.quad	0x40080cb07d0aed9a              # double 3.0061960000000001
	.quad	0x3fd198bf7f06705d              # double 0.27494800000000003
	.quad	0x4017dce0fc2eba28              # double 5.9657020000000003
	.quad	0x40229a9930be0ded              # double 9.3019499999999997
	.quad	0x401062df505d0fa6              # double 4.0965550000000004
	.quad	0x3f9a1fd1569f4906              # double 0.025512
	.quad	0x4020462bae03b3ea              # double 8.1370520000000006
	.quad	0x401540a8d21bc127              # double 5.3131440000000003
	.quad	0x4022f645c358afc4              # double 9.4810009999999991
	.quad	0x4016670435efa616              # double 5.6006020000000003
	.quad	0x4019b3ec02f2f987              # double 6.4257049999999998
	.quad	0x402294cd31769a91              # double 9.2906279999999999
	.quad	0x4012cb3a68b19a41              # double 4.6984649999999997
	.quad	0x4011b0f5a1016ce8              # double 4.4228120000000004
	.quad	0x4006b5a858793dd9              # double 2.8386999999999998
	.quad	0x40119ad2dcb1465f              # double 4.4011950000000004
	.quad	0x4011c55c0fcb4f1e              # double 4.4427339999999997
	.quad	0x400fb0e453d20f2c              # double 3.961373
	.quad	0x3fdf5c853c148345              # double 0.49002200000000001
	.quad	0x401d6be6601bc98a              # double 7.3553709999999999
	.quad	0x401a7f6d330941c8              # double 6.6244399999999999
	.quad	0x40226495e17e34b9              # double 9.1964559999999995
	.quad	0x4010640d90e23af3              # double 4.0977079999999999
	.quad	0x4023059f2ba9d1f6              # double 9.51098
	.quad	0x4018f0984e3ffef4              # double 6.2349560000000004
	.quad	0x4023b20b3d4ae42a              # double 9.8477420000000002
	.quad	0x401e06c3fc43b2dd              # double 7.5066069999999998
	.quad	0x400b791c4b90214b              # double 3.4341360000000001
	.quad	0x4015197e996312f5              # double 5.2748970000000002
	.quad	0x400fd0d0678c0054              # double 3.9769600000000001
	.quad	0x3ff310a350d2806b              # double 1.191562
	.quad	0x4023de41919ac797              # double 9.9340939999999999
	.quad	0x40133195cc857f30              # double 4.7984229999999997
	.quad	0x40012c3e3193f6c2              # double 2.1466029999999998
	.quad	0x3fe470691ea78af4              # double 0.63872200000000001
	.quad	0x3ffd1714b9cb6849              # double 1.8181350000000001
	.quad	0x4004f1487768166a              # double 2.6178140000000001
	.quad	0x3ff846c332f01755              # double 1.5172760000000001
	.quad	0x401869b30728e92d              # double 6.1032219999999997
	.quad	0x40126c8323358f2e              # double 4.605969
	.quad	0x401b4a4a48f96e16              # double 6.8225490000000004
	.quad	0x4020dc15f45e0b4e              # double 8.4298549999999999
	.quad	0x401b5f1737542a24              # double 6.8428620000000002
	.quad	0x4015ee779207d4e1              # double 5.4828780000000004
	.quad	0x4010f44dca8e2e2c              # double 4.2385780000000004
	.quad	0x40006d655e28aa43              # double 2.0534159999999999
	.quad	0x3fc1ff36ac647779              # double 0.140601
	.quad	0x4021633acd5b6806              # double 8.6938080000000006
	.quad	0x400d8eb9a176ddad              # double 3.69469
	.quad	0x4000eb69db65ecc4              # double 2.1149480000000001
	.quad	0x3ffbd92b7fe08af0              # double 1.7405200000000001
	.quad	0x400582b0ea18372e              # double 2.6888139999999998
	.quad	0x4019c3a8e71476b0              # double 6.4410740000000004
	.quad	0x401363632c1f42bb              # double 4.8470579999999996
	.quad	0x401a2b4916ca46e1              # double 6.5422710000000004
	.quad	0x4011f12ba16e7a31              # double 4.4855179999999999
	.quad	0x4023181797cc3a00              # double 9.5470550000000002
	.quad	0x4016e4855da27286              # double 5.7231649999999998
	.quad	0x402320df15a4acf3              # double 9.5642019999999998
	.quad	0x40067080b673c4f4              # double 2.8049330000000001
	.quad	0x400559d451fc4c16              # double 2.6688619999999998
	.quad	0x3ff06849cb252ce0              # double 1.025461
	.quad	0x40110f91a32b12d3              # double 4.2652039999999998
	.quad	0x400a7a1b1960fa16              # double 3.3096220000000001
	.quad	0x401fea82a5614df9              # double 7.9790140000000002
	.quad	0x3fbeffe2a3cea6c2              # double 0.12109200000000001
	.quad	0x4014d23358f2e05d              # double 5.2052740000000002
	.quad	0x40166e9d0e991ff7              # double 5.6080209999999999
	.quad	0x4018639713ad5bee              # double 6.0972559999999998
	.quad	0x401fa24c8366516e              # double 7.9084950000000003
	.quad	0x401a4d66277c45cc              # double 6.5755850000000002
	.quad	0x401a161565c2d278              # double 6.521566
	.quad	0x3ff0bb9ae0c17657              # double 1.0458019999999999
	.quad	0x400fdeef5ec80c74              # double 3.9838550000000001
	.quad	0x40201bc74fb549f9              # double 8.0542549999999995
	.quad	0x401a529c347e8cce              # double 6.5806740000000001
	.quad	0x401b380d3cff64d0              # double 6.8047380000000004
	.quad	0x4022b81d7dbf4880              # double 9.3596000000000004
	.quad	0x3fdb1f7d73c92578              # double 0.42379699999999998
	.quad	0x3ffd9817b95a2941              # double 1.8496319999999999
	.quad	0x4012b6b873797460              # double 4.6784379999999999
	.quad	0x40193f0d413122b8              # double 6.3115740000000002
	.quad	0x401b9fde7210be94              # double 6.9061219999999999
	.quad	0x4017449cf56eac86              # double 5.817005
	.quad	0x401d5d23d4f15e7d              # double 7.3409570000000004
	.quad	0x3ff6fbf1e8e60807              # double 1.43651
	.quad	0x4016aabda0dfdef8              # double 5.6667389999999997
	.quad	0x3fb1917939a7c17b              # double 0.068626000000000006
	.quad	0x4000859f2ba9d1f6              # double 2.065245
	.quad	0x4010b013660e51d2              # double 4.1719489999999997
	.quad	0x3ffdabe1650a45d4              # double 1.854463
	.quad	0x401e47c4199fe436              # double 7.5700839999999996
	.quad	0x3fe1383ad9f0a1be              # double 0.53811399999999998
	.quad	0x400efbd2fa0d77b8              # double 3.8729610000000001
	.quad	0x3feeed288ce703b0              # double 0.96645000000000003
	.quad	0x4012b40bbb1f255f              # double 4.6758259999999998
	.quad	0x401fcb3743632c1f              # double 7.9484529999999997
	.quad	0x400c45ee568a5050              # double 3.5341459999999998
	.quad	0x401e4a6eb91b3f21              # double 7.5726880000000003
	.quad	0x4022d637585be1a8              # double 9.4183909999999997
	.quad	0x401c2599aa60913a              # double 7.0367189999999997
	.quad	0x3fe3dc422036006d              # double 0.62063699999999999
	.quad	0x401844e4430b178b              # double 6.0672769999999998
	.quad	0x401a05846e8f29d4              # double 6.5053879999999999
	.quad	0x402188d1fa333765              # double 8.7672270000000001
	.quad	0x4015b37154003255              # double 5.4252370000000001
	.quad	0x4006c5a8155d5f57              # double 2.8465120000000002
	.quad	0x400a2639d5e4a383              # double 3.2686649999999999
	.quad	0x4006d85058dde7a7              # double 2.8556219999999999
	.quad	0x4023749d9d3458cd              # double 9.7277649999999997
	.quad	0x40101eae18ac9f30              # double 4.0299610000000001
	.quad	0x3fffb29e4d5d80e5              # double 1.9811080000000001
	.quad	0x400da239e6ab9b24              # double 3.7042120000000001
	.quad	0x401d5376d5497311              # double 7.3315080000000004
	.quad	0x3ffe8d477bbf93ff              # double 1.909492
	.quad	0x3fe74914b167ec78              # double 0.72767099999999996
	.quad	0x400e9698fe69270b              # double 3.823534
	.quad	0x3ff36174c4cdfaca              # double 1.211293
	.quad	0x401ef590c0ad03da              # double 7.7398100000000003
	.quad	0x401d690214ad362f              # double 7.3525470000000004
	.quad	0x4003bad6cb535009              # double 2.4662299999999999
	.quad	0x4005e3c74fb549f9              # double 2.7362199999999999
	.quad	0x3ff82b53d640e9d5              # double 1.510578
	.quad	0x3fe49ab6d00b45ae              # double 0.64388599999999996
	.quad	0x3fec14445aa2e3c5              # double 0.87747399999999998
	.quad	0x40229f1348b22079              # double 9.3106939999999998
	.quad	0x401edff151e75361              # double 7.7186940000000001
	.quad	0x401068b97785729b              # double 4.1022699999999999
	.quad	0x4023756fda836eb5              # double 9.7293690000000001
	.quad	0x40166d53cddd6e05              # double 5.6067650000000002
	.quad	0x4012424d8fd5cb79              # double 4.5647489999999999
	.quad	0x401f3e414e7ee914              # double 7.8107959999999999
	.quad	0x401491769a91105e              # double 5.1420539999999999
	.quad	0x401b3a3df6db9410              # double 6.8068770000000001
	.quad	0x401e476145953587              # double 7.5697070000000001
	.quad	0x3ffa1cb89d6adf72              # double 1.632012
	.quad	0x40124023e9ea1405              # double 4.5626369999999996
	.quad	0x400f4737110e453d              # double 3.9097729999999999
	.quad	0x3fff2642bf9830e4              # double 1.946841
	.quad	0x4009a26a22b3892f              # double 3.204304
	.quad	0x4018ba393ee5eedd              # double 6.1818590000000002
	.quad	0x400ca63497b7414a              # double 3.5811549999999999
	.quad	0x401dac2ce4649907              # double 7.4181400000000002
	.quad	0x40111ea9e6eeb702              # double 4.2799449999999997
	.quad	0x400100e7bc3c5bd1              # double 2.1254420000000001
	.quad	0x4001e3baba7b9171              # double 2.2361960000000001
	.quad	0x4022a81d9f4d37c1              # double 9.3283509999999996
	.quad	0x40159d0cc35ce182              # double 5.4033689999999996
	.quad	0x402201ad2135daad              # double 9.0032739999999993
	.quad	0x401661461b6d43d0              # double 5.5949939999999998
	.quad	0x4020bd83e8576cce              # double 8.3701469999999993
	.quad	0x40126a36e2eb1c43              # double 4.6037249999999998
	.quad	0x4013e59ee88df373              # double 4.9742389999999999
	.quad	0x400dda36e2eb1c43              # double 3.7315499999999999
	.quad	0x40235dcb1465e892              # double 9.6831899999999997
	.quad	0x4018908e15011905              # double 6.1411670000000003
	.quad	0x40019c779a6b50b1              # double 2.2014
	.quad	0x401d0970f7b9e061              # double 7.25922
	.quad	0x400bfba1b1960fa1              # double 3.4978669999999998
	.quad	0x3ff4f9991361dc94              # double 1.310937
	.quad	0x400cea7a41e57d9e              # double 3.6144910000000001
	.quad	0x40053f84449dbec2              # double 2.6560139999999999
	.quad	0x4013dcef240fa9c1              # double 4.9657559999999998
	.quad	0x4013c75579af1887              # double 4.9446620000000001
	.quad	0x4010e569f4906035              # double 4.224037
	.quad	0x400ea5e892253112              # double 3.83101
	.quad	0x3fec9a500d5e8d54              # double 0.89383699999999999
	.quad	0x4022ded97b30f8c6              # double 9.4352529999999994
	.quad	0x3fde8eb463497b74              # double 0.47746
	.quad	0x402021fe21d96e9c              # double 8.0663920000000004
	.quad	0x401c4da37ef5a965              # double 7.0758190000000001
	.quad	0x401b47c7820a30db              # double 6.8200969999999996
	.quad	0x3fc9b1f255f3519c              # double 0.200743
	.quad	0x40173eda22f6a50d              # double 5.8113789999999996
	.quad	0x40191c7e6b3fe9fb              # double 6.2778260000000001
	.quad	0x4018639042d8c2a4              # double 6.0972299999999997
	.quad	0x3ff5ba85015c2092              # double 1.3580369999999999
	.quad	0x401c5129cbab649d              # double 7.0792609999999998
	.quad	0x4018ebef06b37868              # double 6.2304040000000001
	.quad	0x4023a0813cab81f9              # double 9.8134859999999992
	.quad	0x3ffd6dc5d6388659              # double 1.8392999999999999
	.quad	0x40212d63cb817332              # double 8.5886519999999997
	.quad	0x401bc44fa05143bf              # double 6.9417099999999996
	.quad	0x401dc6a26e547171              # double 7.4439789999999997
	.quad	0x40056cb3a2595bbc              # double 2.678077
	.quad	0x40139470eb24a6a8              # double 4.8949619999999996
	.quad	0x4015f95464dc22ab              # double 5.4934859999999999
	.quad	0x4003b27e5215768a              # double 2.4621550000000001
	.quad	0x40226e4388ebcc6c              # double 9.2153589999999994
	.quad	0x4021893faf42784b              # double 8.7680640000000007
	.quad	0x3ff1ddce7cd03537              # double 1.116652
	.quad	0x400b8e48e8a71de7              # double 3.4444750000000002
	.quad	0x4005f179bfdf7e80              # double 2.7429079999999999
	.quad	0x401ae08a697aeddd              # double 6.7192780000000001
	.quad	0x4013863fdd65a145              # double 4.8811030000000004
	.quad	0x400301a47a9e2bd0              # double 2.3758020000000002
	.quad	0x401b35ec80c73abd              # double 6.8026600000000004
	.quad	0x401a451e75360d02              # double 6.5674989999999998
	.quad	0x3ff8f57e670e2c13              # double 1.5599350000000001
	.quad	0x3fe8b4b945308bb9              # double 0.772061
	.quad	0x4021f8cf1800a7c6              # double 8.9859550000000006
	.quad	0x40191773e24febd1              # double 6.2729030000000003
	.quad	0x401455e0f7fcfc40              # double 5.0838660000000004
	.quad	0x3fdefcefaa4766c7              # double 0.48418800000000001
	.quad	0x4021c62cdc011d36              # double 8.8870609999999992
	.quad	0x4012b8cf398e9707              # double 4.6804779999999999
	.quad	0x4015e445ed4a1ad6              # double 5.4729229999999998
	.quad	0x401e30285ec3dab6              # double 7.5470290000000002
	.quad	0x401ee3fc86cebbba              # double 7.7226429999999997
	.quad	0x4020b6199780baa6              # double 8.3556640000000009
	.quad	0x400da2b6ae7d566d              # double 3.70445
	.quad	0x402348bcdfefbf40              # double 9.6420659999999998
	.quad	0x402249f8a0902de0              # double 9.1444749999999999
	.quad	0x3fe015bbbe878fac              # double 0.50265300000000002
	.quad	0x3fcac7da1ec4e725              # double 0.20922399999999999
	.quad	0x4007e3305100a394              # double 2.985932
	.quad	0x401e08e7ddca4b12              # double 7.5086969999999997
	.quad	0x4022e06e5cd4ed2d              # double 9.4383420000000004
	.quad	0x4003902d59d55e6c              # double 2.4453990000000001
	.quad	0x400e19157abb8801              # double 3.762248
	.quad	0x401cf48626f60e0f              # double 7.2387930000000003
	.quad	0x4008a7e62dc6e2a8              # double 3.081982
	.quad	0x40224712c27a6373              # double 9.1388149999999992
	.quad	0x40136cbd987c6328              # double 4.8561920000000001
	.quad	0x3ffcfbddfc9ff92f              # double 1.811491
	.quad	0x401447d028a1dfb9              # double 5.0701299999999998
	.quad	0x401403a0407cc7d2              # double 5.0035410000000002
	.quad	0x40184e8f6cefed63              # double 6.0767189999999998
	.quad	0x401e37cf1c3265ae              # double 7.5545010000000001
	.quad	0x40105b8305d95dd5              # double 4.0893670000000002
	.quad	0x400a61d10b1feeb3              # double 3.2977620000000001
	.quad	0x4014293f6c2699c8              # double 5.0402810000000002
	.quad	0x401fb5d031055b8a              # double 7.9275520000000004
	.quad	0x4013b24f227d028a              # double 4.9241299999999999
	.quad	0x4021750870110a13              # double 8.7285799999999991
	.quad	0x40112ebd09e12a52              # double 4.2956430000000001
	.quad	0x4019baef2c732592              # double 6.4325530000000004
	.quad	0x40187783dff3f0fe              # double 6.116714
	.quad	0x402013c3e74afd54              # double 8.0386039999999994
	.quad	0x3fff5f7403dddb12              # double 1.960804
	.quad	0x40046b70ac3a860e              # double 2.5524610000000001
	.quad	0x40116db48909289e              # double 4.3571340000000003
	.quad	0x3ffbb04790b84988              # double 1.730537
	.quad	0x400dead794a6eb92              # double 3.7396690000000001
	.quad	0x4018491eeaa6d267              # double 6.0714069999999998
	.quad	0x3fd47442c7fbacb4              # double 0.31959599999999999
	.quad	0x40077f969e3c9689              # double 2.9372989999999999
	.quad	0x400711ef30a4e37a              # double 2.8837570000000001
	.quad	0x401e35fc7e6b3fea              # double 7.552721
	.quad	0x3ff7b867f0aa21a7              # double 1.482521
	.quad	0x401795629d8409e5              # double 5.8958839999999997
	.quad	0x3feed32830a0b1bc              # double 0.96327600000000002
	.quad	0x40178a26a22b3893              # double 5.8849130000000001
	.quad	0x3ff1fecaab8a5ce6              # double 1.1247050000000001
	.quad	0x40215800c9539b89              # double 8.6718810000000008
	.quad	0x401b12c450268901              # double 6.7683270000000002
	.quad	0x400402f61ed5ae1d              # double 2.5014460000000001
	.quad	0x40149dc768dfbd6a              # double 5.1540809999999997
	.quad	0x401904bcf0b6b6e1              # double 6.2546270000000002
	.quad	0x3fe03e8dda48b652              # double 0.50763599999999998
	.quad	0x3ff04a57a786c227              # double 1.0181500000000001
	.quad	0x401f671865519371              # double 7.8506790000000004
	.quad	0x3ff146eb0b7c3505              # double 1.0798140000000001
	.quad	0x3fe4a007dd441355              # double 0.64453499999999997
	.quad	0x401536aca7935760              # double 5.3033929999999998
	.quad	0x4012de65bea0ba1f              # double 4.7171849999999997
	.quad	0x400d3a2403148777              # double 3.6533890000000002
	.quad	0x40233fd3b29a1ba0              # double 9.6246620000000007
	.quad	0x40028507a6bd6e8b              # double 2.314956
	.quad	0x402144647778dd61              # double 8.6335789999999992
	.quad	0x402277e670e2c12b              # double 9.2341800000000003
	.quad	0x402269da37ef5a96              # double 9.2067429999999995
	.quad	0x3fe4fe9d94d0dcfd              # double 0.65608100000000003
	.quad	0x400b59ff4fd6d7e9              # double 3.4189440000000002
	.quad	0x4010b4b05b7cfe58              # double 4.1764539999999997
	.quad	0x40115d245b291b82              # double 4.3409589999999998
	.quad	0x400d89ce4a7b4e55              # double 3.692288
	.quad	0x40035f077ccc0379              # double 2.4214009999999999
	.quad	0x3fec3e10060780fe              # double 0.88257600000000003
	.quad	0x3fee25bfad299956              # double 0.94210799999999995
	.quad	0x400336d7625204b0              # double 2.4017780000000002
	.quad	0x401c1eb24a6a875d              # double 7.0299769999999997
	.quad	0x4021165e02ea960b              # double 8.5436859999999992
	.quad	0x4020aaf33ca31e7e              # double 8.3338870000000007
	.quad	0x3ff9ec226809d495              # double 1.62015
	.quad	0x400a8e1deacc9214              # double 3.3193929999999998
	.quad	0x401fb10d38cda6e7              # double 7.9229019999999996
	.quad	0x3fc7a1e3eaf6837f              # double 0.18462799999999999
	.quad	0x401875061416377a              # double 6.1142810000000001
	.quad	0x3ffa54b380cb6c7a              # double 1.6456789999999999
	.quad	0x3fde460aa64c2f83              # double 0.47302499999999997
	.quad	0x4018babc5154866a              # double 6.1823589999999999
	.quad	0x401a0fd5cb790fb6              # double 6.5154639999999997
	.quad	0x4021621144cbe1eb              # double 8.6915379999999995
	.quad	0x40224f9acffa7eb7              # double 9.1554780000000004
	.quad	0x40178f316e371540              # double 5.889837
	.quad	0x4011010fd7e45804              # double 4.2510370000000002
	.quad	0x40217579f2346562              # double 8.7294459999999994
	.quad	0x401929884c6a3bde              # double 6.290559
	.quad	0x4006fa5d28d002e2              # double 2.8722479999999999
	.quad	0x401be24f227d028a              # double 6.9710049999999999
	.quad	0x4011c53dea465a57              # double 4.4426189999999997
	.quad	0x400cb24a6a875d57              # double 3.587056
	.quad	0x401620c0f01fb82c              # double 5.5319859999999998
	.quad	0x401c4e94ee392e1f              # double 7.07674
	.quad	0x401e2306a2b17050              # double 7.534205
	.quad	0x401b9dda059a73b4              # double 6.9041519999999998
	.quad	0x40236b76d5497311              # double 9.7098910000000007
	.quad	0x4008d9702e6644d8              # double 3.1061709999999998
	.quad	0x40229ef9b994e1a4              # double 9.310499
	.quad	0x4005922c881e4713              # double 2.696374
	.quad	0x4008b03c8e25c811              # double 3.0860530000000002
	.quad	0x4023999fe43675de              # double 9.8000480000000003
	.quad	0x400a5c9363f572de              # double 3.2952029999999999
	.quad	0x3faded288ce703b0              # double 0.058450000000000002
	.quad	0x4021dca6a875d56f              # double 8.9309589999999996
	.quad	0x401ff5b035bd512f              # double 7.9899300000000001
	.quad	0x401b0cf41f212d77              # double 6.7626499999999998
	.quad	0x401932849cb252ce              # double 6.299334
	.quad	0x4015e488c60cbf2b              # double 5.4731779999999999
	.quad	0x400e0b34e7685986              # double 3.7554720000000001
	.quad	0x402086e02a77a2cf              # double 8.2634290000000004
	.quad	0x4008f3708aac96cc              # double 3.1188669999999998
	.quad	0x4022233d6c721922              # double 9.0688279999999999
	.quad	0x40133fa7a85015c2              # double 4.812163
	.quad	0x3fd17ffde7210be9              # double 0.27343699999999999
	.quad	0x40089be6601bc98a              # double 3.0761229999999999
	.quad	0x3fe6116872b020c5              # double 0.68962500000000004
	.quad	0x401e8c55c96030c2              # double 7.6370459999999998
	.quad	0x401040956c0d6f54              # double 4.0630699999999997
	.quad	0x3fc75475a31a4bdc              # double 0.18226500000000001
	.quad	0x401a612e83a109d0              # double 6.5949039999999997
	.quad	0x40159c07ee0b0af6              # double 5.402374
	.quad	0x401ad7b7c7820a31              # double 6.7106620000000001
	.quad	0x40032d7d7c2ca149              # double 2.3972120000000001
	.quad	0x401d042dcf4623d1              # double 7.2540810000000002
	.quad	0x400d90a45d41fa76              # double 3.6956259999999999
	.quad	0x401cc8c1db0142f6              # double 7.1960519999999999
	.quad	0x40002328f9f44d44              # double 2.0171679999999999
	.quad	0x40233e3f78bbd380              # double 9.6215779999999995
	.quad	0x4013e2e8c0485a0c              # double 4.9715910000000001
	.quad	0x4008a4dc22ab25b3              # double 3.080498
	.quad	0x3fe0d7a99fa11a97              # double 0.52632599999999996
	.quad	0x4007aec9e236c15d              # double 2.9603459999999999
	.quad	0x3ff4069728a61177              # double 1.251609
	.quad	0x401ae727136a4010              # double 6.7257350000000002
	.quad	0x3fd63e5321e603d5              # double 0.34755399999999997
	.quad	0x401ffe2a3cea6c1a              # double 7.998208
	.quad	0x401ad9289dadfb50              # double 6.7120689999999996
	.quad	0x40224e83c297bfa5              # double 9.1533490000000004
	.quad	0x3fc0a67e846a5d6c              # double 0.130081
	.quad	0x400b9bf2f5558213              # double 3.4511470000000002
	.quad	0x4022531b152f3c2e              # double 9.1623160000000006
	.quad	0x3fad44567125dd09              # double 0.057161999999999998
	.quad	0x401e170e6f2e8c05              # double 7.5225160000000004
	.quad	0x4017ee29307af20f              # double 5.9825790000000003
	.quad	0x40113469d7342edc              # double 4.3011850000000003
	.quad	0x3ff0c1fd9ba1b196              # double 1.047361
	.quad	0x40193b78cc9a77e6              # double 6.3080780000000001
	.quad	0x4020ead7d7c2ca15              # double 8.4586780000000008
	.quad	0x401af3cd141a6938              # double 6.7380870000000002
	.quad	0x3ff1d1b823c85c25              # double 1.1137010000000001
	.quad	0x40226e4fdb09a672              # double 9.2154530000000001
	.quad	0x401846034f3fd934              # double 6.0683720000000001
	.quad	0x40165b72c5197a25              # double 5.5893050000000004
	.quad	0x3fee03a96d4c33b5              # double 0.93794699999999998
	.quad	0x4021d64b2314013f              # double 8.9185420000000004
	.quad	0x402292231832fcad              # double 9.2854240000000008
	.quad	0x400433cab81f969e              # double 2.5252889999999999
	.quad	0x3ff32ea63b688bdb              # double 1.1988890000000001
	.quad	0x402350be7296f651              # double 9.6577029999999997
	.quad	0x40215230b9dc2f40              # double 8.6605279999999993
	.quad	0x400297df19d66adb              # double 2.3241559999999999
	.quad	0x401c3efc7a398202              # double 7.0615100000000002
	.quad	0x4023e3a1f4b1ee24              # double 9.9445949999999996
	.quad	0x3ff74b6a619da9ca              # double 1.4559120000000001
	.quad	0x40233f4f50a02b84              # double 9.6236519999999998
	.quad	0x401ae73c925785f9              # double 6.7258170000000002
	.quad	0x3ff790c0ad03d9a9              # double 1.4728399999999999
	.quad	0x400a377963992c8c              # double 3.2770869999999999
	.quad	0x40085f290abb44e5              # double 3.046465
	.quad	0x4021178726d04e62              # double 8.5459530000000008
	.quad	0x4022df84ec636b09              # double 9.4365609999999993
	.quad	0x3ffecc35ce182667              # double 1.9248559999999999
	.quad	0x3ffa27924af0bf1a              # double 1.6346609999999999
	.quad	0x4017ca38fbca105a              # double 5.9474830000000001
	.quad	0x400f17e996312f4d              # double 3.886676
	.quad	0x401c66e32e3821af              # double 7.1004759999999996
	.quad	0x3ffb69a6f826edab              # double 1.7132940000000001
	.quad	0x3ff621c044284dfd              # double 1.38324
	.quad	0x3fc039a38fbca106              # double 0.12675900000000001
	.quad	0x401dfe90ff972474              # double 7.4985999999999997
	.quad	0x3fdf73860999dcb5              # double 0.49142599999999997
	.quad	0x40209bf7ced91687              # double 8.3046249999999997
	.quad	0x401f8e55c0fcb4f2              # double 7.8889990000000001
	.quad	0x401e90b780346dc6              # double 7.6413250000000001
	.quad	0x4007641461b6d43d              # double 2.923867
	.quad	0x4018cc929aa1d756              # double 6.1997780000000002
	.quad	0x401f962888b545c8              # double 7.8966390000000004
	.quad	0x3ff27760bf5d7881              # double 1.154145
	.quad	0x40132ce0fc2eba28              # double 4.7938270000000003
	.quad	0x3ffe2e631f8a0903              # double 1.886325
	.quad	0x4022ec5c78a6dacb              # double 9.4616430000000004
	.quad	0x402393c60029f16b              # double 9.7886199999999998
	.quad	0x4010445e0b4e11dc              # double 4.0667650000000002
	.quad	0x400b697e132b55ef              # double 3.4265099999999999
	.quad	0x400e9dd5d3dc8b87              # double 3.8270680000000001
	.quad	0x4023ca0578e5c4eb              # double 9.8945729999999993
	.quad	0x40092f12c27a6373              # double 3.1479849999999998
	.quad	0x401568dda48b6523              # double 5.3524079999999996
	.quad	0x4011f0c8cd63cb81              # double 4.4851409999999996
	.quad	0x3fc9eecbfb15b574              # double 0.2026
	.quad	0x40102347a5b0ff11              # double 4.0344530000000001
	.quad	0x3fea58b827fa1a0d              # double 0.82333000000000001
	.quad	0x4013f29bf162ae4b              # double 4.986923
	.quad	0x401afe3c105186db              # double 6.7482759999999997
	.quad	0x40108584f4c6e6da              # double 4.1303900000000002
	.quad	0x400e53508f648c72              # double 3.7906810000000002
	.quad	0x4014fc35ce182667              # double 5.2462989999999996
	.quad	0x401490a06e9ff0cc              # double 5.1412370000000003
	.quad	0x3ffca9bcfd4bf099              # double 1.7914399999999999
	.quad	0x40230c28b2a6b0d9              # double 9.5237479999999994
	.quad	0x3ff29187e7c06e1a              # double 1.1605300000000001
	.quad	0x3ff96ea4228997c4              # double 1.589512
	.quad	0x3fd031337eb28d86              # double 0.25300299999999998
	.quad	0x400977a2cecc814d              # double 3.1834159999999998
	.quad	0x40096f8f8a4c1ebd              # double 3.1794730000000002
	.quad	0x4023f1b30728e92d              # double 9.9720689999999994
	.quad	0x4014a479d4d83409              # double 5.1606209999999999
	.quad	0x3fee1a0cf1800a7c              # double 0.94067999999999996
	.quad	0x4016dd0d49949e88              # double 5.7158709999999999
	.quad	0x40071ff69014b59a              # double 2.8906070000000001
	.quad	0x400823b0c4588a05              # double 3.0174270000000001
	.quad	0x401e314bdfd2630f              # double 7.5481410000000002
	.quad	0x4023b87bdcf0307f              # double 9.8603199999999997
	.quad	0x4002746a1a500d5f              # double 2.3068430000000002
	.quad	0x401137c200c0f020              # double 4.3044510000000002
	.quad	0x4014a37f7be121ee              # double 5.1596659999999996
	.quad	0x4015e5ef1fddebd9              # double 5.474545
	.quad	0x40061e82d7b634db              # double 2.7648980000000001
	.quad	0x401a35ce18266773              # double 6.5525440000000001
	.quad	0x3ff9fbf93ff25e57              # double 1.624017
	.quad	0x40148dc011d3671b              # double 5.1384280000000002
	.quad	0x4018aed84d338f7a              # double 6.1707470000000004
	.quad	0x4020d49f0e4da09d              # double 8.4152760000000004
	.quad	0x40176ad5bee3d5fe              # double 5.8543310000000002
	.quad	0x40225fc5cdd50a89              # double 9.1870560000000001
	.quad	0x40234e1309c7ffde              # double 9.6524889999999992
	.quad	0x400306a6e32e3822              # double 2.3782480000000001
	.quad	0x401f326bb55ac040              # double 7.799239
	.quad	0x401f29a77e5eaab0              # double 7.7906779999999998
	.quad	0x3ffc755043e5321e              # double 1.7786409999999999
	.quad	0x40077d9d3458cd21              # double 2.9363350000000001
	.quad	0x402325b4677b395c              # double 9.5736419999999995
	.quad	0x4002559bc33f8551              # double 2.291801
	.quad	0x3ffb00baa582dbe8              # double 1.687678
	.quad	0x401d832830a0b1bc              # double 7.3780830000000002
	.quad	0x401a49b456b441bc              # double 6.5719770000000004
	.quad	0x40151b9bed30f063              # double 5.2769620000000002
	.quad	0x400ca7e06961c369              # double 3.5819709999999998
	.quad	0x4020b6c4a4095f24              # double 8.3569689999999994
	.quad	0x4017ad2674080f99              # double 5.919092
	.quad	0x401be3d0bfa09460              # double 6.9724760000000003
	.quad	0x3fd4db1e9f277814              # double 0.325874
	.quad	0x4019c6798958d9b6              # double 6.4438230000000001
	.quad	0x3fe8dc24c404a72f              # double 0.77687300000000004
	.quad	0x3fe73341e14bdfd2              # double 0.72500699999999996
	.quad	0x401aaca2120e1f7d              # double 6.6685869999999996
	.quad	0x402115d744f5d356              # double 8.5426579999999994
	.quad	0x401ca95faa8a82a5              # double 7.1654039999999997
	.quad	0x401da371da37ef5b              # double 7.4096140000000004
	.quad	0x3fb0abf76a2f48c3              # double 0.065124000000000001
	.quad	0x40118a2b1704ff43              # double 4.3849299999999998
	.quad	0x3fffb8a5ce5b4246              # double 1.98258
	.quad	0x4009b650a45d41fa              # double 3.2140209999999998
	.quad	0x40156234eb9a176e              # double 5.3459050000000001
	.quad	0x402209deefe4ffc9              # double 9.0192789999999992
	.quad	0x401d5f7f06705c89              # double 7.3432579999999996
	.quad	0x40179f1bac2df0d4              # double 5.9053789999999999
	.quad	0x4015a2089e34330d              # double 5.4082359999999996
	.quad	0x40207131ec0b5675              # double 8.2210839999999994
	.quad	0x401a5d00f776c482              # double 6.5908239999999996
	.quad	0x401f93382e44b6e9              # double 7.8937689999999998
	.quad	0x3fe099d0203e63e9              # double 0.51877600000000001
	.quad	0x3fd4fdc9c4da9004              # double 0.32799
	.quad	0x401557f62b6ae7d5              # double 5.3358999999999996
	.quad	0x40176213a0c6b485              # double 5.8457780000000001
	.quad	0x401adece13f4a98b              # double 6.7175830000000003
	.quad	0x400749ff0cbaf966              # double 2.9111310000000001
	.quad	0x4009961ed5ae1cde              # double 3.1983009999999998
	.quad	0x3ff0bd7f51efb6dd              # double 1.0462640000000001
	.quad	0x402118db4890928a              # double 8.5485480000000003
	.quad	0x4022a9c8c9320d99              # double 9.3316099999999995
	.quad	0x3ff81cbccf28c79f              # double 1.5070159999999999
	.quad	0x401a273083558a76              # double 6.5382709999999999
	.quad	0x4020edf7a4e7ab75              # double 8.4647799999999993
	.quad	0x3ff89d616f86a099              # double 1.5384230000000001
	.quad	0x4021aff06705c897              # double 8.8436310000000002
	.quad	0x4011bc209246bf01              # double 4.4337179999999998
	.quad	0x4002f4467381d7dc              # double 2.369275
	.quad	0x4020ce3f9a49c2c2              # double 8.4028290000000005
	.quad	0x4023b439799e518f              # double 9.8520009999999995
	.quad	0x4002355e6bc621b8              # double 2.2760590000000001
	.quad	0x401408826aa8eb46              # double 5.0083099999999998
	.quad	0x4019ef9f44d44567              # double 6.4840059999999999
	.quad	0x40220968f8e7ddca              # double 9.0183789999999995
	.quad	0x400a22cd39da1661              # double 3.2669929999999998
	.quad	0x4010ca048e043a21              # double 4.1972829999999997
	.quad	0x4011b9767903211d              # double 4.4311160000000003
	.quad	0x400a67852f7f498c              # double 3.3005469999999999
	.quad	0x400f8e0fc2eba27b              # double 3.944366
	.quad	0x4016c9029ae4f334              # double 5.6962989999999998
	.quad	0x40222b6d655e28aa              # double 9.0848189999999995
	.quad	0x4020ad3005814941              # double 8.3382570000000005
	.quad	0x401bea732df505d1              # double 6.978955
	.quad	0x4021ad5da272862f              # double 8.8386049999999994
	.quad	0x3fdb1715c63ae254              # double 0.42328399999999999
	.quad	0x400be8ca3e7d1351              # double 3.488667
	.quad	0x4011254bcf0b6b6e              # double 4.286422
	.quad	0x40150ccff21b3aef              # double 5.2625120000000001
	.quad	0x4014b954a7f8012e              # double 5.180987
	.quad	0x40122f4cb1897a68              # double 4.5461910000000003
	.quad	0x4015fbf83382e44b              # double 5.4960639999999996
	.quad	0x401911fd9ba1b196              # double 6.2675689999999999
	.quad	0x4001dc22ab25b318              # double 2.232488
	.quad	0x40188cdb7ae5796c              # double 6.137556
	.quad	0x4020895ca6ca03c5              # double 8.2682850000000006
	.quad	0x401e0f9ebe9c8861              # double 7.5152539999999996
	.quad	0x4020f0de8f6cefed              # double 8.4704479999999993
	.quad	0x401e7790fb65668c              # double 7.6167639999999999
	.quad	0x400301b2a27f1b69              # double 2.375829
	.quad	0x3fde586013660e52              # double 0.47414400000000001
	.quad	0x3ff5cc282c6ef3d4              # double 1.3623430000000001
	.quad	0x3ff99d0a67620ee9              # double 1.60084
	.quad	0x4016db78cc9a77e6              # double 5.7143280000000001
	.quad	0x40225cddb5525cc4              # double 9.1813789999999997
	.quad	0x401c1b6a619da9ca              # double 7.0267730000000004
	.quad	0x400550de8f6cefed              # double 2.6644869999999998
	.quad	0x401d46c332f01755              # double 7.3191040000000003
	.quad	0x401a81ada76d97b3              # double 6.6266389999999999
	.quad	0x4010bbf61aa3f035              # double 4.1835560000000003
	.quad	0x40219c1e14bdfd26              # double 8.8049169999999997
	.quad	0x401fce974a3400b9              # double 7.9517490000000004
	.quad	0x401a594898f605ab              # double 6.5871909999999998
	.quad	0x4012b5604189374c              # double 4.6771250000000002
	.quad	0x401058f7db6e5040              # double 4.0868830000000003
	.quad	0x40222ee84ad794a7              # double 9.0916160000000001
	.quad	0x3ffb0cf28c79f666              # double 1.690661
	.quad	0x400d660ed80a17b1              # double 3.674833
	.quad	0x40119733ebbfd71b              # double 4.397659
	.quad	0x3fff6432441fea81              # double 1.961962
	.quad	0x3fe3cad362e90364              # double 0.61850899999999998
	.quad	0x401081d8e8640208              # double 4.1268039999999999
	.quad	0x401bdd35a858793e              # double 6.9660250000000001
	.quad	0x401a8fc86cebbba5              # double 6.6404129999999997
	.quad	0x40219d77318fc505              # double 8.8075500000000009
	.quad	0x400d164e054690de              # double 3.635891
	.quad	0x400746b1e5c0b999              # double 2.909519
	.quad	0x4019d09f623076c0              # double 6.4537329999999997
	.quad	0x40207545846e8f2a              # double 8.2290460000000003
	.quad	0x40186b0ff10ecb75              # double 6.1045530000000001
	.quad	0x4021e6f049a9973e              # double 8.9510520000000007
	.quad	0x40022fbfc6540cc8              # double 2.2733150000000002
	.quad	0x4010aba301216830              # double 4.1676140000000004
	.quad	0x402073d25247cb71              # double 8.2262140000000006
	.quad	0x40226635610adcd3              # double 9.1996260000000003
	.quad	0x402045451fc4c166              # double 8.1352930000000008
	.quad	0x400449a1b9f98b72              # double 2.5359530000000001
	.quad	0x400e5f1c75818c5d              # double 3.7964410000000002
	.quad	0x402057b7e90ff972              # double 8.1713249999999995
	.quad	0x3ffaac5f394b7b29              # double 1.6670830000000001
	.quad	0x401bd80cf9e3864d              # double 6.9609870000000003
	.quad	0x3fc64bb1af3a14cf              # double 0.17418500000000001
	.quad	0x40190b7e90ff9724              # double 6.2612249999999996
	.quad	0x40145b45ae5ffa3c              # double 5.0891330000000004
	.quad	0x401ca20fb224aada              # double 7.1582629999999998
	.quad	0x40195ba40d90e23b              # double 6.339493
	.quad	0x4003c7913e81450f              # double 2.472445
	.quad	0x3fe0b14a90470a81              # double 0.52164200000000005
	.quad	0x40176af31b152f3c              # double 5.8544429999999998
	.quad	0x401c9847f562174c              # double 7.1487119999999997
	.quad	0x402000b45ae5ffa4              # double 8.0013760000000004
	.quad	0x400b1da16616b54e              # double 3.3894679999999999
	.quad	0x4007c614163779ea              # double 2.9717180000000001
	.quad	0x402193e9856a37ac              # double 8.7888909999999995
	.quad	0x40186c4eb56fb8f5              # double 6.1057689999999996
	.quad	0x401ae99dcb5781c7              # double 6.7281409999999999
	.quad	0x402346e8f29d40ee              # double 9.638496
	.quad	0x3ff978db4890928a              # double 1.592006
	.quad	0x4012dfede97d06bc              # double 4.7186810000000001
	.quad	0x3febb4117f84449e              # double 0.86573100000000003
	.quad	0x40237701fb82c2bd              # double 9.7324369999999991
	.quad	0x401e2827b6fe2e6f              # double 7.5392140000000003
	.quad	0x3fdfb08dd1e53a82              # double 0.49515100000000001
	.quad	0x4013a31b152f3c2e              # double 4.9092830000000003
	.quad	0x401d993c03bc4d23              # double 7.3996430000000002
	.quad	0x4012e8ae74f2f124              # double 4.7272280000000002
	.quad	0x40228eda22f6a50d              # double 9.2790079999999993
	.quad	0x40227f7d0f1f57b4              # double 9.2490009999999998
	.quad	0x401421b79d909f1f              # double 5.0329269999999999
	.quad	0x401c9e3c105186db              # double 7.1545259999999997
	.quad	0x401658efbb0e5e68              # double 5.5868520000000004
	.quad	0x401b27f5e84f0953              # double 6.7890240000000004
	.quad	0x3fe6be78e1932d6f              # double 0.71075100000000002
	.quad	0x40225a53111f0c35              # double 9.1764150000000004
	.quad	0x40203ba2df9378ee              # double 8.1164769999999997
	.quad	0x4021a694ee392e1f              # double 8.8253550000000001
	.quad	0x401d8935fc3b4f61              # double 7.3839949999999996
	.quad	0x4021e833a4723ab0              # double 8.953519
	.quad	0x401ff1d4306e5cd5              # double 7.986161
	.quad	0x4009a6f71a7e3088              # double 3.2065260000000002
	.quad	0x4013fda6a4441787              # double 4.997706
	.quad	0x400ecfd8f0c77dd8              # double 3.8514879999999998
	.quad	0x400862456f75d9a1              # double 3.047984
	.quad	0x40042a72ead9274e              # double 2.5207269999999999
	.quad	0x4023db4959e62563              # double 9.9282939999999992
	.quad	0x401bcab29e4d5d81              # double 6.9479470000000001
	.quad	0x400e187a4a48f96e              # double 3.761952
	.quad	0x3ff9ccb5bb384fd3              # double 1.6124780000000001
	.quad	0x401fe0abf76a2f49              # double 7.9694060000000002
	.quad	0x4007fa0d77b7c782              # double 2.997096
	.quad	0x4013b3a6ce358299              # double 4.9254410000000002
	.quad	0x401e2e18ac9f2fdc              # double 7.5450160000000004
	.quad	0x40131961c36976bc              # double 4.7747869999999999
	.quad	0x4011f8fabda0dfdf              # double 4.493144
	.quad	0x40221c743201040c              # double 9.055574
	.quad	0x3fb54866a11ec919              # double 0.083136000000000002
	.quad	0x40192c204f2ae07e              # double 6.2930919999999997
	.quad	0x3fc7cc532a497fa6              # double 0.185923
	.quad	0x401d25b4aa9717df              # double 7.2868219999999999
	.quad	0x4022becefed63455              # double 9.3726730000000006
	.quad	0x4010f5bc87db2b34              # double 4.2399769999999997
	.quad	0x3ffe612a51e321a3              # double 1.898722
	.quad	0x401c223a29c779a7              # double 7.0334250000000003
	.quad	0x4003eb5dcc63f141              # double 2.4899249999999999
	.quad	0x3fffe7daa4fca42b              # double 1.994105
	.quad	0x40182c56d5cfaace              # double 6.0433000000000003
	.quad	0x4019bd3b29a1b9fa              # double 6.4347960000000004
	.quad	0x3ff3686e7e62dc6e              # double 1.212996
	.quad	0x3ff1c0de4c51116b              # double 1.1095870000000001
	.quad	0x40011c560c7c0f45              # double 2.138836
	.quad	0x3ffe3b3a68b19a41              # double 1.8894599999999999
	.quad	0x3fd0a51a005c4652              # double 0.260077
	.quad	0x3ff29a5870da5daf              # double 1.162682
	.quad	0x40205b1d0c804103              # double 8.177956
	.quad	0x3ff4849667b5f1bf              # double 1.28237
	.quad	0x40171121682f9442              # double 5.7667289999999998
	.quad	0x40057450efdc9c4e              # double 2.6817950000000002
	.quad	0x4000477ccc037931              # double 2.0349059999999999
	.quad	0x3ffa01f10667f90e              # double 1.6254740000000001
	.quad	0x3fe30c6b484d76ab              # double 0.59526599999999996
	.quad	0x3fd3d9cae21101b0              # double 0.310168
	.quad	0x3fdbc12f09d8c6d6              # double 0.433666
	.quad	0x3ffe8e9f6a93f291              # double 1.9098200000000001
	.quad	0x401c5c9f72f76e61              # double 7.090452
	.quad	0x402209906cca2db6              # double 9.0186799999999998
	.quad	0x3ffa5b4784230fd0              # double 1.6472850000000001
	.quad	0x401f542fe82517e7              # double 7.8322139999999995
	.quad	0x401ad2bb23571d1d              # double 6.7057919999999998
	.quad	0x400c512a0ec74320              # double 3.539631
	.quad	0x401ddb990afe60c4              # double 7.4644510000000004
	.quad	0x400bdec02f2f9874              # double 3.483765
	.quad	0x402335a426bb55ac              # double 9.6047679999999999
	.quad	0x40236da22f6a50d7              # double 9.7141280000000005
	.quad	0x401d1c016052502f              # double 7.2773490000000001
	.quad	0x40202e5c91d14e3c              # double 8.0905500000000003
	.quad	0x4021778b3700474e              # double 8.7334840000000007
	.quad	0x40126147f1305964              # double 4.5950009999999999
	.quad	0x401fba5bd944aa54              # double 7.931991
	.quad	0x402111f9acffa7eb              # double 8.5351079999999993
	.quad	0x40205e48e8a71de7              # double 8.1841500000000007
	.quad	0x4010f8e325d4a5df              # double 4.2430539999999999
	.quad	0x4007286940357a35              # double 2.8947319999999999
	.quad	0x40141dbf0563ed0f              # double 5.0290489999999997
	.quad	0x4021602ff8ec0f88              # double 8.6878659999999996
	.quad	0x40104d70a3d70a3d              # double 4.0756249999999996
	.quad	0x4013b16a055757d6              # double 4.9232560000000003
	.quad	0x4012176188b1140a              # double 4.5228330000000003
	.quad	0x4018fdd50a88effe              # double 6.2478829999999999
	.quad	0x40140bd6a593a2e0              # double 5.0115610000000004
	.quad	0x401a7e2003ab862b              # double 6.6231689999999999
	.quad	0x401632dadb8348f5              # double 5.5496629999999998
	.quad	0x401ea26a22b3892f              # double 7.658608
	.quad	0x40208023422467be              # double 8.2502689999999994
	.quad	0x4022027dcbddb984              # double 9.0048659999999998
	.quad	0x401af8969a0ad8a1              # double 6.7427619999999999
	.quad	0x401181d57ff9b563              # double 4.3767909999999999
	.quad	0x400a77b84db9c737              # double 3.3084570000000002
	.quad	0x4020fb749adc8fb8              # double 8.4911239999999992
	.quad	0x40229e2c98e53eb4              # double 9.3089340000000007
	.quad	0x4019d90ea9e6eeb7              # double 6.46197
	.quad	0x401d7b0079a2834d              # double 7.3701189999999999
	.quad	0x401dff71a7e30878              # double 7.4994569999999995
	.quad	0x40189c9fb6134ce4              # double 6.1529530000000001
	.quad	0x40198f401c4fc1df              # double 6.3898929999999998
	.quad	0x3fd97f737da61e0c              # double 0.39840399999999998
	.quad	0x4021608461f9f01c              # double 8.6885100000000008
	.quad	0x401a6909289dadfb              # double 6.6025739999999997
	.quad	0x4015600d1b71758e              # double 5.3437999999999999
	.quad	0x401a4ad538ac18f8              # double 6.5730789999999999
	.quad	0x401c1ff4fd6d7e89              # double 7.0312080000000003
	.quad	0x40166face67d77fb              # double 5.6090580000000001
	.quad	0x40142c0a4a05dd90              # double 5.0430080000000004
	.quad	0x40137e26916440f2              # double 4.8731939999999998
	.quad	0x40238093d9663843              # double 9.7511279999999995
	.quad	0x40219a6f1dc50ce5              # double 8.8016290000000001
	.quad	0x4012ff7121ab4b73              # double 4.7494550000000002
	.quad	0x4021b0583621fafd              # double 8.8444230000000008
	.quad	0x401f7892ab68cef6              # double 7.8677469999999996
	.quad	0x40041532617c1bda              # double 2.5103499999999999
	.quad	0x3fbb635e74299d88              # double 0.106985
	.quad	0x4014bf6cefed6345              # double 5.1869389999999997
	.quad	0x40153e19b90ea9e7              # double 5.3106450000000001
	.quad	0x401a217df19d66ae              # double 6.5327070000000003
	.quad	0x400bd9991361dc94              # double 3.481249
	.quad	0x401d123854046413              # double 7.2677930000000002
	.quad	0x401f69f16b11c6d2              # double 7.8534600000000001
	.quad	0x3fffd7dae81882ae              # double 1.9901990000000001
	.quad	0x401435eb313be22e              # double 5.0526549999999997
	.quad	0x3fd55718eb895076              # double 0.33344099999999999
	.quad	0x4001107a6bd6e8b0              # double 2.1330460000000002
	.quad	0x4023590b1feeb2d1              # double 9.6739130000000006
	.quad	0x40186aa21a719b4e              # double 6.1041340000000002
	.quad	0x4022b9bf7ad4b274              # double 9.3627889999999993
	.quad	0x40225bf78bbd3804              # double 9.1796229999999994
	.quad	0x40116094a2b9d3cc              # double 4.3443170000000002
	.quad	0x400ec92923e5b856              # double 3.8482229999999999
	.quad	0x40186d095af294dd              # double 6.1064809999999996
	.quad	0x3fd7a0663c74fb55              # double 0.36916500000000002
	.quad	0x3ffeae924f227d03              # double 1.9176200000000001
	.quad	0x4003f8676a7264a1              # double 2.4962909999999998
	.quad	0x4007d78b3700474e              # double 2.9802460000000002
	.quad	0x4018b3f1843c3a43              # double 6.175726
	.quad	0x401bbe9f6a93f291              # double 6.9361550000000003
	.quad	0x40226df80991793a              # double 9.2147830000000006
	.quad	0x401d5487fcb923a3              # double 7.3325500000000003
	.quad	0x4016a8ecd8dbcec8              # double 5.6649659999999997
	.quad	0x3fe3c5996744b2b7              # double 0.61787099999999995
	.quad	0x3ffceb0318b9346a              # double 1.8073760000000001
	.quad	0x402041b75a74c09c              # double 8.1283519999999995
	.quad	0x401f2b13165d3997              # double 7.792065
	.quad	0x3ffb19dba908a266              # double 1.693813
	.quad	0x40062dbb59ddc1e8              # double 2.7723300000000002
	.quad	0x3ff4c342aa9f7b5b              # double 1.297671
	.quad	0x4018e8d2a1f8e3ac              # double 6.227366
	.quad	0x401f411d798d8a98              # double 7.8135890000000003
	.quad	0x4014907e5a78f25a              # double 5.1411069999999999
	.quad	0x3fcda2834d26fa40              # double 0.23152200000000001
	.quad	0x4000d5f02c4d65e4              # double 2.1044619999999998
	.quad	0x40121d3fe1975f2d              # double 4.5285640000000003
	.quad	0x3fecc16bdb1a6d6a              # double 0.89861100000000005
	.quad	0x4015587229e90796              # double 5.336373
	.quad	0x401d54873365881a              # double 7.3325469999999999
	.quad	0x401272e514c22ee4              # double 4.6122019999999999
	.quad	0x401942ed352220bc              # double 6.3153579999999998
	.quad	0x4020004230fcf80e              # double 8.0005050000000004
	.quad	0x400ef37e2c55c960              # double 3.8688929999999999
	.quad	0x4022c54ed2cbea4f              # double 9.3853670000000004
	.quad	0x401e1f3ade225fa6              # double 7.5304979999999997
	.quad	0x3ffe3bdcf0307f24              # double 1.889615
	.quad	0x4002f57603925bb8              # double 2.3698540000000001
	.quad	0x401ac8b86b15f890              # double 6.6960160000000002
	.quad	0x4004053c148344c3              # double 2.5025559999999998
	.quad	0x4014513165d39970              # double 5.0792900000000003
	.quad	0x3ff66263d816aceb              # double 1.3990210000000001
	.quad	0x401ef2a23bff8a8f              # double 7.7369469999999997
	.quad	0x400bdf9c62a1b5c8              # double 3.4841850000000001
	.quad	0x4016971ef30a4e38              # double 5.6475790000000003
	.quad	0x401728155d5f56a8              # double 5.7891440000000003
	.quad	0x3fffaff4ba51a006              # double 1.9804580000000001
	.quad	0x40237efda836eb4f              # double 9.7480290000000007
	.quad	0x4016cb4a2339c0ec              # double 5.6985250000000001
	.quad	0x4020b327aa68f4b6              # double 8.3499119999999998
	.quad	0x400fd6a832b990b0              # double 3.979813
	.quad	0x3fef58b60f1b25f6              # double 0.97957899999999998
	.quad	0x401e43dab5c39bcc              # double 7.5662640000000003
	.quad	0x401a1b18dac258d6              # double 6.5264620000000004
	.quad	0x3fd4dea465a57647              # double 0.32608900000000002
	.quad	0x401b74cfd08d4bad              # double 6.8640739999999996
	.quad	0x4023aed99cbee808              # double 9.8415040000000004
	.quad	0x401b86e3b46fdeb5              # double 6.8817279999999998
	.quad	0x40031f04ddb5525d              # double 2.3901460000000001
	.quad	0x40205f0739b024f6              # double 8.1856019999999994
	.quad	0x40222643ed959a31              # double 9.0747370000000007
	.quad	0x4011b86940357a35              # double 4.4300889999999997
	.quad	0x401a79dd3bafd977              # double 6.619008
	.quad	0x4000d1d25aab4741              # double 2.102452
	.quad	0x3fe3a157689ca18c              # double 0.61344500000000002
	.quad	0x3fd30ec311622813              # double 0.29777599999999999
	.quad	0x402109c10d7be985              # double 8.5190509999999993
	.quad	0x40124b135979181a              # double 4.5733160000000002
	.quad	0x3ff81d627bf61aa4              # double 1.507174
	.quad	0x401183005814940c              # double 4.3779310000000002
	.quad	0x40152101b003686a              # double 5.2822329999999997
	.quad	0x3fff0069e7fb267c              # double 1.9376009999999999
	.quad	0x4013477574f722e2              # double 4.8197840000000003
	.quad	0x400ec2962cfd8f0c              # double 3.8450129999999998
	.quad	0x401f153c579f2346              # double 7.7707379999999997
	.quad	0x4016e6f694467382              # double 5.7255500000000001
	.quad	0x3fbf79b77c02afde              # double 0.122951
	.quad	0x3fd86e82949a5658              # double 0.381745
	.quad	0x40218fbb73083559              # double 8.7807270000000006
	.quad	0x40096a116659d12d              # double 3.1767910000000001
	.quad	0x4023904ea4a8c155              # double 9.7818500000000003
	.quad	0x400772452c59fb1e              # double 2.930796
	.quad	0x4016273929ed3954              # double 5.5383040000000001
	.quad	0x400c11ed9dfdac69              # double 3.5087540000000002
	.quad	0x401552174c4cdfad              # double 5.3301670000000003
	.quad	0x4000e9f05ea24cc7              # double 2.1142280000000002
	.quad	0x3ffb0023a6ce3583              # double 1.6875340000000001
	.quad	0x40239554fbdad752              # double 9.7916640000000008
	.quad	0x3ff95a133c1ce6c1              # double 1.5844910000000001
	.quad	0x40201bc77143393b              # double 8.0542560000000005
	.quad	0x400743db3bfb58d1              # double 2.9081329999999999
	.quad	0x401237ae9ab29e4d              # double 4.5543769999999997
	.quad	0x3fed5c853c148345              # double 0.91754400000000003
	.quad	0x40161ae429e0a41a              # double 5.5262609999999999
	.quad	0x3feacf95d4e8fb01              # double 0.83784000000000003
	.quad	0x400b9c43b2dd377e              # double 3.451301
	.quad	0x4020dcd26fa3fcca              # double 8.4312930000000001
	.quad	0x4022c8620ab71327              # double 9.3913729999999997
	.quad	0x401f1883fd502257              # double 7.7739409999999997
	.quad	0x402165556084a516              # double 8.6979170000000003
	.quad	0x401f7bae03b3e9a7              # double 7.870781
	.quad	0x401e14ccee5abc0e              # double 7.5203129999999998
	.quad	0x40159bd44998d046              # double 5.402177
	.quad	0x3fea0ac5c13fd0d0              # double 0.81381499999999996
	.quad	0x401710df58c08b76              # double 5.7664770000000001
	.quad	0x4004dcfb3311a544              # double 2.607901
	.quad	0x400c7c2fc69728a6              # double 3.560638
	.quad	0x40215e1869835159              # double 8.6837800000000005
	.quad	0x401ab8aa8650e779              # double 6.6803379999999999
	.quad	0x40160e308787485e              # double 5.5138569999999998
	.quad	0x3feb33bb83cf2cf9              # double 0.85006499999999996
	.quad	0x4021c1945b6c3761              # double 8.8780850000000004
	.quad	0x4015ac4c9c90c4df              # double 5.4182610000000002
	.quad	0x402165c054ef459e              # double 8.6987330000000007
	.quad	0x4008d2f23033a472              # double 3.1030009999999999
	.quad	0x400b924d099e0e73              # double 3.4464359999999998
	.quad	0x4001bd8622c45027              # double 2.2175410000000002
	.quad	0x3fb69c4545846e8f              # double 0.088321999999999998
	.quad	0x400e7dcf0307f23d              # double 3.8114300000000001
	.quad	0x402082311e85fd05              # double 8.2542810000000006
	.quad	0x4009a4934267839d              # double 3.2053590000000001
	.quad	0x3fd150a45d41fa76              # double 0.27054699999999998
	.quad	0x401d9a9fbe76c8b4              # double 7.4009999999999998
	.quad	0x401ce6138fffbce4              # double 7.2246839999999999
	.quad	0x401ca53ef6b5d463              # double 7.1613730000000002
	.quad	0x4021fb30b5aa7158              # double 8.9906059999999997
	.quad	0x4023b9157abb8801              # double 9.8614920000000001
	.quad	0x4001655f3519bd40              # double 2.1744979999999998
	.quad	0x401bfeaaf35e310e              # double 6.9986990000000002
	.quad	0x4020e4ba94bbe447              # double 8.4467359999999996
	.quad	0x401b85814940bbb2              # double 6.880376
	.quad	0x3fe0704ddb5525cc              # double 0.51370899999999997
	.quad	0x401f859ddc1e7968              # double 7.8804850000000001
	.quad	0x4014f05ab3aabcd8              # double 5.2347210000000004
	.quad	0x400c62ea0fd3b29a              # double 3.548298
	.quad	0x4021fb0d0edc3bd6              # double 8.9903340000000007
	.quad	0x40134bbf93ff25e5              # double 4.8239729999999996
	.quad	0x4021a64345cfede9              # double 8.8247319999999991
	.quad	0x3fc9c475e6362a5e              # double 0.20130799999999999
	.quad	0x400d814b599aa609              # double 3.688132
	.quad	0x4023c16feb4a6656              # double 9.8778070000000007
	.quad	0x4012b6049ecb31c2              # double 4.6777519999999999
	.quad	0x40193e5c4eb56fb9              # double 6.310899
	.quad	0x401e8a3a08398a65              # double 7.6349869999999997
	.quad	0x401328fc0d2c386d              # double 4.7900239999999998
	.quad	0x4015e03d145d8516              # double 5.4689829999999997
	.quad	0x400a19ccfaeff5c7              # double 3.2625980000000001
	.quad	0x4021583c6c97d8cf              # double 8.6723359999999996
	.quad	0x3fcd11be6e653869              # double 0.227104
	.quad	0x401583eb399f5dff              # double 5.3788270000000002
	.quad	0x401f0a08398a6549              # double 7.7597969999999998
	.quad	0x40149162f166e009              # double 5.1419790000000001
	.quad	0x401c787ad080b674              # double 7.1176560000000002
	.quad	0x4002c5a35d67ba23              # double 2.3465029999999998
	.quad	0x4020036aa4b9884c              # double 8.0066729999999992
	.quad	0x401300d0678c0054              # double 4.7507950000000001
	.quad	0x4007256c508b32cf              # double 2.8932730000000002
	.quad	0x4015054fbdad7519              # double 5.2551870000000003
	.quad	0x4020a813a92a3055              # double 8.3282749999999997
	.quad	0x3ff129a91105e1c1              # double 1.0726709999999999
	.quad	0x40093986b9c304cd              # double 3.153089
	.quad	0x4016bb7dc7abfb9c              # double 5.6830970000000001
	.quad	0x401be3a4723aafff              # double 6.9723069999999998
	.quad	0x40111090b417ca21              # double 4.2661769999999999
	.quad	0x402109b328b6d86f              # double 8.5189450000000004
	.quad	0x40179007dd441355              # double 5.8906549999999998
	.quad	0x4016b8aa8650e779              # double 5.6803379999999999
	.quad	0x40033372a38b8ae3              # double 2.4001209999999999
	.quad	0x401d465881a15550              # double 7.3186970000000002
	.quad	0x400dac84f8f8a4c2              # double 3.709238
	.quad	0x400912bb23571d1d              # double 3.1341459999999999
	.quad	0x401e3bfbdf090f73              # double 7.5585779999999997
	.quad	0x3ff312b90a782907              # double 1.1920710000000001
	.quad	0x401498438088509c              # double 5.148695
	.quad	0x4015a108c3f3e037              # double 5.40726
	.quad	0x4013edaa0cae642c              # double 4.982094
	.quad	0x40030dd8b60f1b26              # double 2.381761
	.quad	0x401c226e115592da              # double 7.0336230000000004
	.quad	0x4003d0a5efe93187              # double 2.4768789999999998
	.quad	0x4019c4e54f7a9197              # double 6.4422810000000004
	.quad	0x401bc36113404ea5              # double 6.9408000000000003
	.quad	0x4023727610279570              # double 9.7235569999999996
	.quad	0x40034a2d2fe3f35a              # double 2.411219
	.quad	0x3ff82a94ff0025c0              # double 1.5103960000000001
	.quad	0x400ab0fd7e45803d              # double 3.3364210000000001
	.quad	0x400a7f5f0b28522f              # double 3.3121930000000002
	.quad	0x40143450efdc9c4e              # double 5.0510900000000003
	.quad	0x401fe6cf850df15a              # double 7.9754009999999997
	.quad	0x40202e2fdfc19c17              # double 8.0902089999999998
	.quad	0x401595aee631f8a1              # double 5.3961750000000004
	.quad	0x3fc7336deb95e5b0              # double 0.181257
	.quad	0x3ff034ddf86e3b47              # double 1.012907
	.quad	0x4019c64ba94bbe44              # double 6.4436479999999996
	.quad	0x40127cbddb9841ab              # double 4.6218180000000002
	.quad	0x3fff2787ce95faa9              # double 1.9471510000000001
	.quad	0x401aa9635610adcd              # double 6.6654179999999998
	.quad	0x3fecb67c286f8ad2              # double 0.89727599999999996
	.quad	0x3fe747c30d306a2b              # double 0.72750999999999999
	.quad	0x401e89741d084e83              # double 7.6342319999999999
	.quad	0x3fd4d601ffb480a6              # double 0.32556200000000002
	.quad	0x401e1e542e557de1              # double 7.5296180000000001
	.quad	0x3fed629f9ce8d973              # double 0.91828900000000002
	.quad	0x40219dbe1a826245              # double 8.8080909999999992
	.quad	0x40158152b0a6fc59              # double 5.3762920000000003
	.quad	0x3fe25f3300de4c51              # double 0.57412099999999999
	.quad	0x4021ab1d2e0e3044              # double 8.8342069999999992
	.quad	0x40048f1b25f633ce              # double 2.5698759999999998
	.quad	0x4017ff2734f82f51              # double 5.9991729999999999
	.quad	0x3fdcc8711d798d8b              # double 0.44973400000000002
	.quad	0x4003b7f06705c897              # double 2.4648140000000001
	.quad	0x401e42cf0f9d2bf5              # double 7.5652429999999997
	.quad	0x3ff02ac322291fb4              # double 1.01044
	.quad	0x400a05061416377a              # double 3.252453
	.quad	0x4020cf5fb2edfe76              # double 8.4050270000000005
	.quad	0x401ec789613d31ba              # double 7.6948600000000003
	.quad	0x400b6a737110e454              # double 3.4269780000000001
	.quad	0x4001172d5e071c54              # double 2.136317
	.quad	0x40078a79bbadc098              # double 2.942615
	.quad	0x4014771b8aa00193              # double 5.1163160000000003
	.quad	0x4010ccf13cee9dd8              # double 4.2001390000000001
	.quad	0x40111635610adcd3              # double 4.2716880000000002
	.quad	0x401c1eeb2d0a2446              # double 7.0301939999999998
	.quad	0x4012190470a808c8              # double 4.5244309999999999
	.quad	0x40239b0c67168f8e              # double 9.8028289999999991
	.quad	0x401f7a6266fd651b              # double 7.8695159999999999
	.quad	0x4014f6ea854477ff              # double 5.2411289999999999
	.quad	0x4016093250b5243a              # double 5.5089810000000003
	.quad	0x401e2764adff822c              # double 7.5384700000000002
	.quad	0x4007e7f993d5347a              # double 2.9882689999999998
	.quad	0x400bdae0c1765775              # double 3.4818739999999999
	.quad	0x4014af47304039ac              # double 5.17117
	.quad	0x401246f47b677f6b              # double 4.5692919999999999
	.quad	0x400781272c94b381              # double 2.9380630000000001
	.quad	0x40207f09310129cc              # double 8.2481170000000005
	.quad	0x40104eff5c6c11a1              # double 4.0771459999999999
	.quad	0x40011e94ab1d4f9c              # double 2.1399319999999999
	.quad	0x3fdde631f8a0902e              # double 0.46717500000000001
	.quad	0x400147a63736cdf2              # double 2.1599849999999998
	.quad	0x4020ebcd78c436fc              # double 8.4605519999999998
	.quad	0x40003396d0917d6b              # double 2.0251899999999998
	.quad	0x400f98f57f737da6              # double 3.9496869999999999
	.quad	0x401951d2178f68be              # double 6.3299029999999998
	.quad	0x400939e8c47a17f4              # double 3.153276
	.quad	0x40188ece13f4a98b              # double 6.1394580000000003
	.quad	0x4013d796bfca85cb              # double 4.9605360000000003
	.quad	0x40118dda059a73b4              # double 4.3885269999999998
	.quad	0x4021932378ab0c89              # double 8.7873800000000006
	.quad	0x402198d0247021d1              # double 8.7984629999999999
	.quad	0x4022225ce5b4245f              # double 9.0671149999999994
	.quad	0x3ff2325918a009f6              # double 1.137292
	.quad	0x401e631db445ed4a              # double 7.5967929999999999
	.quad	0x40041e5082cf52b9              # double 2.514802
	.quad	0x401f2df2239e6aba              # double 7.7948690000000003
	.quad	0x401bf039abf33871              # double 6.9845949999999997
	.quad	0x4020fa7a20578e5c              # double 8.4892129999999994
	.quad	0x40218819d2391d58              # double 8.765822
	.quad	0x3ffa2dd69d30270f              # double 1.636191
	.quad	0x4011b5f138bcdff0              # double 4.4276780000000002
	.quad	0x40193eba27ae9ab3              # double 6.3112570000000003
	.quad	0x3ff2e0ddc6195465              # double 1.179899
	.quad	0x401b082517e77d52              # double 6.7579539999999998
	.quad	0x4020407570c564f9              # double 8.1258959999999991
	.quad	0x4012b95810624dd3              # double 4.681
	.quad	0x40234af20ea5b531              # double 9.6463780000000003
	.quad	0x400623fcc9ea9a3d              # double 2.7675719999999999
	.quad	0x4003117d6b65a9a8              # double 2.38354
	.quad	0x3ffd5aa3f034b0e2              # double 1.8346290000000001
	.quad	0x401f393e1c9b413a              # double 7.8059010000000004
	.quad	0x3ffe749f0e4da09d              # double 1.9034720000000001
	.quad	0x3faccccccccccccd              # double 0.056250000000000001
	.quad	0x40139784ec636b09              # double 4.8979679999999997
	.quad	0x401a117507e9d94d              # double 6.517048
	.quad	0x4021001d7dbf4880              # double 8.5002250000000004
	.quad	0x401e6f0f16f4384c              # double 7.6084560000000003
	.quad	0x40231dbb59ddc1e8              # double 9.5580700000000007
	.quad	0x400e07b24638c975              # double 3.7537579999999999
	.quad	0x40202783dff3f0fe              # double 8.077178
	.quad	0x40119219220ff541              # double 4.3926740000000004
	.quad	0x3f9d31769a91105e              # double 0.028509
	.quad	0x4011ddae3e6c4c59              # double 4.4664849999999996
	.quad	0x40195302b40f66a5              # double 6.3310649999999997
	.quad	0x402349d606317269              # double 9.6442110000000003
	.quad	0x40239c58cd20afa3              # double 9.8053650000000001
	.quad	0x400f1d1a21ea3593              # double 3.8892099999999998
	.quad	0x40122432ca57a787              # double 4.5353500000000002
	.quad	0x3fbf4a87e38eb032              # double 0.12223100000000001
	.quad	0x400291d25aab4741              # double 2.321202
	.quad	0x4019044284dfce31              # double 6.2541599999999997
	.quad	0x400cebdc26dce39b              # double 3.6151659999999999
	.quad	0x4022cb55cd91eeaa              # double 9.3971389999999992
	.quad	0x40223b927d45a5fc              # double 9.1163519999999991
	.quad	0x4019e8c08b75ea68              # double 6.4772970000000001
	.quad	0x4016a74fb549f948              # double 5.6633899999999997
	.quad	0x3fcf72606fac6046              # double 0.24567800000000001
	.quad	0x3ffc5f0d413122b8              # double 1.7732060000000001
	.quad	0x3fd95cee17a02fb6              # double 0.39629700000000001
	.quad	0x4022532a6b0d9514              # double 9.162433
	.quad	0x3ff06fbd273d5bab              # double 1.02728
	.quad	0x40024996b76709fa              # double 2.2859319999999999
	.quad	0x4013caec8d5c7475              # double 4.9481679999999999
	.quad	0x4018dd095af294dd              # double 6.2158559999999996
	.quad	0x400c2c3009b30729              # double 3.521576
	.quad	0x401d6c84b5dcc63f              # double 7.3559749999999999
	.quad	0x401486b4c7f34938              # double 5.1315489999999997
	.quad	0x40091716d2aa5c5f              # double 3.1362739999999998
	.quad	0x4014a0e2c12ad81b              # double 5.1571150000000001
	.quad	0x401fedcdf6987831              # double 7.9822309999999996
	.quad	0x40178588e368f084              # double 5.8804049999999997
	.quad	0x402352467be553ac              # double 9.6606939999999994
	.quad	0x401d3e0c5a8155d6              # double 7.310594
	.quad	0x4017780b673c4f3c              # double 5.8672310000000003
	.quad	0x401dd7a13c254a3c              # double 7.4605759999999997
	.quad	0x3fe3052502eec7c9              # double 0.59437799999999996
	.quad	0x40129e6c093d9664              # double 4.6547090000000004
	.quad	0x4009fb6bb1290258              # double 3.2477640000000001
	.quad	0x402223089a027525              # double 9.0684249999999995
	.quad	0x401d2567dbb16c1e              # double 7.2865289999999998
	.quad	0x400fd2b884406c01              # double 3.9778910000000001
	.quad	0x401759917939a7c1              # double 5.8374689999999996
	.quad	0x4019b23b7952d235              # double 6.4240550000000001
	.quad	0x4020230d7386099a              # double 8.0684620000000002
	.quad	0x40118685db76b3bc              # double 4.3813700000000004
	.quad	0x401e7ed3d859c8c9              # double 7.6238549999999998
	.quad	0x402086379b77c02b              # double 8.262143
	.quad	0x401f1f487fcb923a              # double 7.7805499999999999
	.quad	0x3fda7525460aa64c              # double 0.41339999999999999
	.quad	0x400682699c7bcc29              # double 2.8136779999999999
	.quad	0x4023c4692f6e8295              # double 9.8836150000000007
	.quad	0x40218b0164840e17              # double 8.7714949999999998
	.quad	0x4022284988094e5d              # double 9.0786859999999994
	.quad	0x4021907a6bd6e8b0              # double 8.7821840000000009
	.quad	0x40002066c2acb85a              # double 2.0158209999999999
	.quad	0x400ad9e30014f8b6              # double 3.3563900000000002
	.quad	0x4018a66ec9e236c1              # double 6.1625319999999997
	.quad	0x401300f733a8a3f9              # double 4.7509430000000004
	.quad	0x4011a068986fcdee              # double 4.4066489999999998
	.quad	0x4001bba55d1c3ac9              # double 2.2166239999999999
	.quad	0x4013f3b927d45a60              # double 4.9880110000000002
	.quad	0x400019f340d4dc66              # double 2.0126710000000001
	.quad	0x3ff255db3397dd01              # double 1.145961
	.quad	0x3fd827dcbddb9842              # double 0.37743300000000002
	.quad	0x400626a11ec918e3              # double 2.7688619999999999
	.quad	0x3ff21a21ea359360              # double 1.1313800000000001
	.quad	0x3fdfec80c73abc94              # double 0.49880999999999998
	.quad	0x4005c5c67dfe32a0              # double 2.7215699999999998
	.quad	0x40113fc32ebe596d              # double 4.3122680000000004
	.quad	0x401da814d72799a2              # double 7.414142
	.quad	0x3fe0bcd573647bab              # double 0.52305100000000004
	.quad	0x4001685985ad538b              # double 2.1759520000000001
	.quad	0x3ff648de2ac32229              # double 1.39279
	.quad	0x4019d3b18dac258d              # double 6.4567319999999997
	.quad	0x4014962456f75d9a              # double 5.1466229999999999
	.quad	0x401e7e325d4a5df2              # double 7.6232389999999999
	.quad	0x400be54823854046              # double 3.4869539999999999
	.quad	0x401511b75a74c09c              # double 5.2673009999999998
	.quad	0x4020eb16e3715400              # double 8.4591589999999997
	.quad	0x3fe2d158b827fa1a              # double 0.58805499999999999
	.quad	0x400f2b51bd61f5be              # double 3.8961519999999998
	.quad	0x40165f0bae89eba7              # double 5.5928180000000003
	.quad	0x4011aa32f4491299              # double 4.4162100000000004
	.quad	0x402380140dd3fe19              # double 9.7501529999999991
	.quad	0x3fff32f9873ffac2              # double 1.949945
	.quad	0x400b5e1a8262456f              # double 3.4209489999999998
	.quad	0x4004f0795f676ea4              # double 2.6174189999999999
	.quad	0x40097737542a23c0              # double 3.183211
	.quad	0x3fe5c77143393ab4              # double 0.68059599999999998
	.quad	0x4002c08d8ec95bff              # double 2.34402
	.quad	0x40116448cf7caa76              # double 4.3479340000000004
	.quad	0x401edd9f90539fba              # double 7.7164289999999998
	.quad	0x40124bbcf4e874c9              # double 4.573963
	.quad	0x4023a2ea747d805e              # double 9.8181949999999993
	.quad	0x40230b8a7e73a366              # double 9.5225410000000004
	.quad	0x40018fe931876189              # double 2.1952690000000001
	.quad	0x400b9fd0d0678c00              # double 3.4530349999999999
	.quad	0x4021649949e8815e              # double 8.6964819999999996
	.quad	0x4013c6113404ea4b              # double 4.9434250000000004
	.quad	0x4023509c7ffde721              # double 9.6574439999999999
	.quad	0x4006b6f32bdc26dd              # double 2.839331
	.quad	0x4023c841ede1198b              # double 9.8911280000000001
	.quad	0x3fece39d5e4a3832              # double 0.90278499999999995
	.quad	0x4020f3267c6b8b69              # double 8.4749029999999994
	.quad	0x40136676a7264a17              # double 4.8500620000000003
	.quad	0x4020235675579af2              # double 8.0690190000000008
	.quad	0x400d2358afc47e4a              # double 3.6422590000000001
	.quad	0x4019a5ad106ee30d              # double 6.4117930000000003
	.quad	0x3ff363a08398a655              # double 1.2118230000000001
	.quad	0x3fe30958d9b5e95b              # double 0.59489099999999995
	.quad	0x3ff5ccf0739b024f              # double 1.3625339999999999
	.quad	0x3fd037eb28d8665e              # double 0.253413
	.quad	0x401fae6106ab14ec              # double 7.9202919999999999
	.quad	0x40178adafd113837              # double 5.8856010000000003
	.quad	0x3fec53005814940c              # double 0.88513200000000002
	.quad	0x3ff50061847f5621              # double 1.3125929999999999
	.quad	0x3fdd1f212d773190              # double 0.45502500000000001
	.quad	0x40218b90a7829069              # double 8.7725880000000007
	.quad	0x4010ba8a3f8982cb              # double 4.1821679999999999
	.quad	0x400c568cef672b88              # double 3.5422609999999999
	.quad	0x401537b7414a4d2b              # double 5.3044099999999998
	.quad	0x400c11ff7164c72a              # double 3.508788
	.quad	0x400633ed527e5215              # double 2.7753549999999998
	.quad	0x40187284dfce3151              # double 6.1118350000000001
	.quad	0x40214ad72ffd1dcd              # double 8.6461729999999992
	.quad	0x4004e9ab29e4d5d8              # double 2.614096
	.quad	0x4023d263d816aceb              # double 9.9109180000000005
	.quad	0x401103fe1975f2cb              # double 4.2538989999999997
	.quad	0x402211fea8112ba1              # double 9.0351459999999992
	.quad	0x4023d27546d3f9e8              # double 9.9110510000000004
	.quad	0x40107c9107faa045              # double 4.1216470000000003
	.quad	0x4013592d98bf7f06              # double 4.8370879999999996
	.quad	0x401a321b7e0ac7da              # double 6.5489329999999999
	.quad	0x3ff58ac7da1ec4e7              # double 1.346382
	.quad	0x4022ae7fd3f5b5fa              # double 9.3408189999999998
	.quad	0x4001b57470eb24a7              # double 2.2136010000000002
	.quad	0x3ff2528283d35eb7              # double 1.1451439999999999
	.quad	0x40206fcb923a29c7              # double 8.2183499999999992
	.quad	0x400ae9f83be6601c              # double 3.3642430000000001
	.quad	0x4006a0daa0cae643              # double 2.8285420000000001
	.quad	0x4019cde939eadd59              # double 6.451085
	.quad	0x400e2a8c9b845565              # double 3.7707760000000001
	.quad	0x400a6db0574b4070              # double 3.3035589999999999
	.quad	0x3fec0cef672b8844              # double 0.87657899999999999
	.quad	0x402295186db50f41              # double 9.2912020000000002
	.quad	0x40013927d45a5fc8              # double 2.152908
	.quad	0x40208b486f049a99              # double 8.2720369999999992
	.quad	0x3ff41d031055b899              # double 1.257083
	.quad	0x4013c18dac258d58              # double 4.9390169999999998
	.quad	0x4012fb6177ea1c69              # double 4.7454890000000001
	.quad	0x4005c46f9b994e1a              # double 2.7209159999999999
	.quad	0x401c11fafc8b007a              # double 7.0175590000000003
	.quad	0x40129cdb37c99ae9              # double 4.6531799999999999
	.quad	0x402384723aafff37              # double 9.7586840000000005
	.quad	0x40194c28b2a6b0d9              # double 6.3243739999999997
	.quad	0x3ff8fd1fe64f54d2              # double 1.561798
	.quad	0x3fcdf0bae89eba6b              # double 0.23390900000000001
	.quad	0x4021beca25529fe0              # double 8.872636
	.quad	0x3ff5a76a7264a16a              # double 1.3533729999999999
	.quad	0x4011fff10ecb74de              # double 4.499943
	.quad	0x401855058dde7a74              # double 6.0830289999999998
	.quad	0x4014e4d26fa3fcca              # double 5.2234590000000001
	.quad	0x401529ad42c3c9ef              # double 5.2907000000000002
	.quad	0x402155f6ba0620ab              # double 8.6678979999999992
	.quad	0x40212ef1348b2208              # double 8.5916840000000008
	.quad	0x4019442bb6672fba              # double 6.316573
	.quad	0x402330a04d12018a              # double 9.5949729999999995
	.quad	0x40183f166e008e9b              # double 6.0616089999999998
	.quad	0x400728ec52a411c3              # double 2.8949820000000002
	.quad	0x40210e8661ae70c1              # double 8.5283689999999996
	.quad	0x3ff08105186db50f              # double 1.0314989999999999
	.quad	0x400d9cc1871e6cd3              # double 3.7015410000000002
	.quad	0x3fe0b6dca07f66e8              # double 0.52232199999999995
	.quad	0x3fe44ca70d1fa333              # double 0.63435699999999995
	.quad	0x4016f8800eae18ad              # double 5.7426760000000003
	.quad	0x3fd1aae6c8f75537              # double 0.27605600000000002
	.quad	0x40203f1758e21965              # double 8.1232249999999997
	.quad	0x401894f765fd8adb              # double 6.1454750000000002
	.quad	0x4017a5a63f9a49c3              # double 5.9117670000000002
	.quad	0x4011c90d5a5b9629              # double 4.4463400000000002
	.quad	0x4023f9e108c3f3e0              # double 9.9880449999999996
	.quad	0x40198e43aa79bbae              # double 6.3889300000000002
	.quad	0x402028d08919ef95              # double 8.0797159999999995
	.quad	0x400ecc1a048e043a              # double 3.8496589999999999
	.quad	0x402346a400fba882              # double 9.6379699999999993
	.quad	0x401f5e75ff609dd0              # double 7.8422470000000004
	.quad	0x401ab54c985f06f7              # double 6.6770500000000004
	.quad	0x3ff55b7f1737542a              # double 1.334838
	.quad	0x4021d3d8383ad9f1              # double 8.9137590000000007
	.quad	0x4004760f1b25f634              # double 2.5576460000000001
	.quad	0x40167cadddf43c7d              # double 5.6217569999999997
	.quad	0x40225f694467381d              # double 9.1863499999999991
	.quad	0x3fe3b48d3ae685db              # double 0.61578999999999995
	.quad	0x3fe864a16a487336              # double 0.76228399999999996
	.quad	0x3ff07da5119ce076              # double 1.030675
	.quad	0x4019eea18372e6a7              # double 6.4830379999999996
	.quad	0x400ef17268d32831              # double 3.8678940000000002
	.quad	0x40120eafee6fb4c4              # double 4.5143430000000002
	.quad	0x401100142f61ed5b              # double 4.2500770000000001
	.quad	0x400d95f676ea4229              # double 3.6982240000000002
	.quad	0x4018b94face67d78              # double 6.180968
	.quad	0x401161ae70c1333c              # double 4.3453920000000004
	.quad	0x4023f83621fafc8b              # double 9.9847879999999999
	.quad	0x4023a4801f75104d              # double 9.8212899999999994
	.quad	0x3fbbabfb9bed30f0              # double 0.10809299999999999
	.quad	0x3fd5bda0dfdef848              # double 0.33969899999999997
	.quad	0x400a140e5a35d67c              # double 3.2597930000000002
	.quad	0x400ca9fd7a13c255              # double 3.5830030000000002
	.quad	0x3fd39e7b80a9de8b              # double 0.30654799999999999
	.quad	0x3fffb5f2cb641701              # double 1.981921
	.quad	0x401fcf0e4da09cc3              # double 7.9522029999999999
	.quad	0x4015307852f7f499              # double 5.2973340000000002
	.quad	0x4013787b56b87379              # double 4.8676579999999996
	.quad	0x3ffc74e3369b9d80              # double 1.778537
	.quad	0x4007f83e8576cce6              # double 2.996213
	.quad	0x401d108feac42e99              # double 7.2661740000000004
	.quad	0x4019ece358298cc1              # double 6.4813359999999998
	.quad	0x4023c86bbdbe3c10              # double 9.8914469999999994
	.quad	0x40203316e3715400              # double 8.0997839999999997
	.quad	0x401083d96638433d              # double 4.1287589999999996
	.quad	0x4004659c065b63d4              # double 2.549614
	.quad	0x400c327cbf6e3f79              # double 3.5246520000000001
	.quad	0x401711cda2b5a20e              # double 5.7673860000000001
	.quad	0x40170f6f08cc575c              # double 5.765072
	.quad	0x401f247ecfe9b7bf              # double 7.7856399999999998
	.quad	0x3fe30ca8198f1d3f              # double 0.59529500000000002
	.quad	0x402252da98676a72              # double 9.1618239999999993
	.quad	0x402197a7c9de0503              # double 8.7962019999999992
	.quad	0x401f54ece9a2c669              # double 7.8329349999999999
	.quad	0x40033335d249e450              # double 2.4000050000000002
	.quad	0x401e9b93037d6302              # double 7.6519279999999998
	.quad	0x3ff16cb31c219eb6              # double 1.089038
	.quad	0x4010515b573eab36              # double 4.0794499999999996
	.quad	0x400d4256bca5375d              # double 3.6573920000000002
	.quad	0x400f87368ad68837              # double 3.9410219999999998
	.quad	0x400e4d5f138bcdff              # double 3.787779
	.quad	0x3ff16d30f062d40b              # double 1.0891580000000001
	.quad	0x3fe3e8ab4fa48302              # double 0.62215200000000004
	.quad	0x401a370b49e01de2              # double 6.5537539999999996
	.quad	0x401175f5ad96a6a0              # double 4.3651949999999999
	.quad	0x401fa31f46ed245b              # double 7.9092989999999998
	.quad	0x401932938de6ddf0              # double 6.299391
	.quad	0x401966b6e0d23d4f              # double 6.3503069999999999
	.quad	0x4008411a975afaf8              # double 3.0317889999999998
	.quad	0x3ff779a176ddacef              # double 1.467195
	.quad	0x400357cb2d905c03              # double 2.4178679999999999
	.quad	0x401051bc98a222d5              # double 4.0798209999999999
	.quad	0x4023e93b9f127f5f              # double 9.9555330000000008
	.quad	0x4022e699c7bcc294              # double 9.4503920000000007
	.quad	0x4018e714fce746cc              # double 6.2256660000000004
	.quad	0x40227e1da7b0b392              # double 9.2463200000000008
	.quad	0x4022038c32a8c9b8              # double 9.0069289999999995
	.quad	0x4021a0344c37e6f7              # double 8.8128989999999998
	.quad	0x4005c2e3c536d656              # double 2.7201610000000001
	.quad	0x4001fa2cecc814d7              # double 2.2471559999999999
	.quad	0x4019128bb0a2ca9b              # double 6.2681110000000002
	.quad	0x400b4a8b08dd1e54              # double 3.4113980000000002
	.quad	0x4013b0a393ee5eee              # double 4.9224990000000002
	.quad	0x400c9d0203e63e8e              # double 3.5766640000000001
	.quad	0x3ffca008e9b38d61              # double 1.7890710000000001
	.quad	0x401682428d434a02              # double 5.6272070000000003
	.quad	0x4012ff35e310dbf0              # double 4.7492289999999997
	.quad	0x4010e8ab0c88a47f              # double 4.2272150000000002
	.quad	0x40144d872f33ca32              # double 5.0757110000000001
	.quad	0x4018385a4f00ef13              # double 6.0550319999999997
	.quad	0x400e4b0f27bb2fec              # double 3.7866499999999998
	.quad	0x3fc8f92af9a8cdea              # double 0.195104
	.quad	0x3fedf164c729f59d              # double 0.93571700000000002
	.quad	0x401a19acbc8c0ce9              # double 6.5250729999999999
	.quad	0x400b2c729f59ccfb              # double 3.396703
	.quad	0x402027e8ccdd93c4              # double 8.0779479999999992
	.quad	0x402293da5119ce07              # double 9.2887749999999993
	.quad	0x401d2e18266772d6              # double 7.2950140000000001
	.quad	0x400a18266772d5e0              # double 3.2617919999999998
	.quad	0x3fe32413db7f1737              # double 0.59815399999999996
	.quad	0x40235c1f85d744f6              # double 9.6799280000000003
	.quad	0x4020a969e3c96894              # double 8.3308859999999995
	.quad	0x40178e731d2e0e30              # double 5.8891109999999998
	.quad	0x4009ed1e96c3fc44              # double 3.2407810000000001
	.quad	0x401f7f0739b024f6              # double 7.8740509999999997
	.quad	0x4015fe09784ec637              # double 5.4980830000000003
	.quad	0x40024e79aae6c8f7              # double 2.2883179999999999
	.quad	0x4014ab1960fa15db              # double 5.1670889999999998
	.quad	0x40112db877ab3248              # double 4.2946489999999997
	.quad	0x3fca451b93037d63              # double 0.205234
	.quad	0x3ff7ce410b630a91              # double 1.4878549999999999
	.quad	0x3fead5f138bcdff0              # double 0.83861600000000003
	.quad	0x4021172c3009b307              # double 8.5452589999999997
	.quad	0x4001c5f9591cd1c8              # double 2.2216670000000001
	.quad	0x400d2ac1094a2b9d              # double 3.6458759999999999
	.quad	0x401929439de481f5              # double 6.2902969999999998
	.quad	0x400b4e1c58255b03              # double 3.4131399999999998
	.quad	0x4013ffea3df6db94              # double 4.9999169999999999
	.quad	0x3fc66687f455a7d2              # double 0.17500399999999999
	.quad	0x40143e90795f676f              # double 5.0610980000000003
	.quad	0x3ff0a759ab6d00b4              # double 1.0408569999999999
	.quad	0x3fda5accd530489d              # double 0.41179199999999999
	.quad	0x401a55f88fc9363f              # double 6.5839559999999997
	.quad	0x401c62a94ff0025c              # double 7.096349
	.quad	0x401b6d490e66cb10              # double 6.8567239999999998
	.quad	0x40070eee0f3cb3e5              # double 2.8822899999999998
	.quad	0x40146e2e2b8c75c5              # double 5.1075980000000003
	.quad	0x40131eebb341e14c              # double 4.7801960000000001
	.quad	0x4022a5c22ab25b31              # double 9.3237469999999991
	.quad	0x402289917939a7c1              # double 9.2686879999999991
	.quad	0x401cd07746887a8d              # double 7.2035799999999997
	.quad	0x3fcc17a02fb5d031              # double 0.219471
	.quad	0x401a7116a8b8f14e              # double 6.6104380000000003
	.quad	0x3fe4cc89b0ee49f5              # double 0.64996799999999999
	.quad	0x401722de00d1b717              # double 5.7840499999999997
	.quad	0x3ffa127c39368273              # double 1.629513
	.quad	0x40113cd5f99c38b0              # double 4.3094099999999997
	.quad	0x4014b654d61b2a28              # double 5.178058
	.quad	0x3fc83e425aee6320              # double 0.18940000000000001
	.quad	0x401331044f1a1987              # double 4.7978680000000002
	.quad	0x401d1b1feeb2d0a2              # double 7.2764889999999998
	.quad	0x4023b505f2884838              # double 9.8535609999999991
	.quad	0x40203f83382e44b7              # double 8.1240480000000002
	.quad	0x40173631b584b1ab              # double 5.802924
	.quad	0x402162ffd1dcd706              # double 8.6933579999999999
	.quad	0x40127e76c8b43958              # double 4.6234999999999999
	.quad	0x401337e23f24d8fd              # double 4.8045739999999997
	.quad	0x400ea7cd898b2e9d              # double 3.8319350000000001
	.quad	0x3ff961a500d5e8d5              # double 1.5863389999999999
	.quad	0x4002720b8066c2ad              # double 2.3056860000000001
	.quad	0x4022f852502eec7d              # double 9.4850030000000007
	.quad	0x400cf1287c200c0f              # double 3.617753
	.quad	0x401efb124d099e0e              # double 7.7451869999999996
	.quad	0x3ff7186b9c304ccf              # double 1.443462
	.quad	0x401a1d1633482be9              # double 6.5284050000000002
	.quad	0x4022788d4bad7d7c              # double 9.2354529999999996
	.quad	0x3fe4eb6e0d23d4f1              # double 0.65373899999999996
	.quad	0x40218f44d4456712              # double 8.7798219999999993
	.quad	0x3ffb294573a79789              # double 1.697576
	.quad	0x40163d9cae21101b              # double 5.560168
	.quad	0x4016badfb506dd6a              # double 5.6824940000000002
	.quad	0x401159f8c21e1d21              # double 4.3378629999999996
	.quad	0x4020662f37fbefd0              # double 8.199579
	.quad	0x40235234ca0c282c              # double 9.6605589999999992
	.quad	0x40217b53b4b2fa94              # double 8.7408730000000005
	.quad	0x4016e1a650614163              # double 5.7203609999999996
	.quad	0x4023c2f9a8cdea03              # double 9.8808109999999995
	.quad	0x400674aa10e02214              # double 2.8069649999999999
	.quad	0x401df929670196d9              # double 7.493322
	.quad	0x3fdcad85dfa871a4              # double 0.44809100000000002
	.quad	0x40191e4f3343fa2b              # double 6.2795990000000002
	.quad	0x400232ba9d1f6018              # double 2.2747700000000002
	.quad	0x401189374bc6a7f0              # double 4.3840000000000003
	.quad	0x401f86ededaec4a4              # double 7.881767
	.quad	0x4023dfae3608d089              # double 9.9368759999999998
	.quad	0x4022bf10880d801b              # double 9.3731729999999995
	.quad	0x401680b6b6e0d23d              # double 5.6256969999999997
	.quad	0x3ff2fc968943e100              # double 1.1866669999999999
	.quad	0x40039286b59146e5              # double 2.4465460000000001
	.quad	0x4004060b2c83ec89              # double 2.5029509999999999
	.quad	0x40035f2cb641700d              # double 2.4214720000000001
	.quad	0x40004f062d40aaeb              # double 2.038586
	.quad	0x3fe20fb43d89ce4a              # double 0.56441699999999995
	.quad	0x4012c59e1f3a57eb              # double 4.6929860000000003
	.quad	0x4000401797cc3a00              # double 2.0312950000000001
	.quad	0x401bffa0d77b7c78              # double 6.9996369999999999
	.quad	0x401ecc27a63736ce              # double 7.69937
	.quad	0x4009135b91f70de9              # double 3.134452
	.quad	0x3feac3fa2ad3e921              # double 0.83642300000000003
	.quad	0x400f63c85c24c405              # double 3.9237220000000002
	.quad	0x40189dadfb506dd7              # double 6.1539840000000003
	.quad	0x401daf6d330941c8              # double 7.4213149999999998
	.quad	0x3ffcdfeda6612839              # double 1.80467
	.quad	0x3ff478e6d15ad107              # double 1.279517
	.quad	0x4010082e44b6e936              # double 4.0079890000000002
	.quad	0x40229da4484944ed              # double 9.3078939999999992
	.quad	0x4014cbc87db2b346              # double 5.1990069999999999
	.quad	0x40231ab7fe08aefb              # double 9.5521849999999997
	.quad	0x3fe1caf922962cfe              # double 0.55602700000000005
	.quad	0x401899be09bb6aa5              # double 6.1501390000000002
	.quad	0x3ff00adab9f559b4              # double 1.00265
	.quad	0x401936c7a7c9de05              # double 6.303496
	.quad	0x4021b8cf5b1c8649              # double 8.8609570000000009
	.quad	0x401c366c2acb85a5              # double 7.0531470000000001
	.quad	0x4011338476f2a5a4              # double 4.3003099999999996
	.quad	0x401d8daf07bfe7e2              # double 7.388363
	.quad	0x4021f8ce2d1f1cfc              # double 8.9859480000000004
	.quad	0x40233dad96a6a012              # double 9.6204649999999994
	.quad	0x4010ed7f950b955f              # double 4.2319319999999996
	.quad	0x4012c0c88a47ecff              # double 4.6882650000000003
	.quad	0x401542877ee4e26d              # double 5.3149699999999998
	.quad	0x4019852a411c2a02              # double 6.3800439999999998
	.quad	0x3ffa960c7c0f4517              # double 1.6616329999999999
	.quad	0x402007674d163348              # double 8.0144599999999997
	.quad	0x401ce0303c07ee0b              # double 7.218934
	.quad	0x4015ef78bbd38045              # double 5.4838589999999998
	.quad	0x401179bdc69f8c22              # double 4.3688880000000001
	.quad	0x4021b06bdf4c2b52              # double 8.8445730000000005
	.quad	0x400065321e603d57              # double 2.0494119999999998
	.quad	0x4017a178f68be2f8              # double 5.9076880000000003
	.quad	0x401f49a8cdea033e              # double 7.8219329999999996
	.quad	0x4016312f09d8c6d6              # double 5.5480309999999999
	.quad	0x3fd2ffb8b26394fb              # double 0.29685800000000001
	.quad	0x401b321d10b1feeb              # double 6.7989389999999998
	.quad	0x4005706d50657321              # double 2.6798959999999998
	.quad	0x40200682d7b634db              # double 8.0127170000000003
	.quad	0x401c64d2b2bfdb4d              # double 7.0984600000000002
	.quad	0x3fe6aa1d755bccaf              # double 0.70826599999999995
	.quad	0x401cb0d0678c0054              # double 7.1726700000000001
	.quad	0x400d641248d7e026              # double 3.6738629999999999
	.quad	0x400e44d12018a43c              # double 3.7836020000000001
	.quad	0x3fd47fa5d28d002e              # double 0.32029099999999999
	.quad	0x4005480bed740c41              # double 2.6601789999999998
	.quad	0x4014fd805e5f30e8              # double 5.24756
	.quad	0x3fed31f687b139c9              # double 0.91234899999999997
	.quad	0x40147916872b020c              # double 5.1182499999999997
	.quad	0x400dcee6b8305d96              # double 3.7260260000000001
	.quad	0x400afd12cadddf44              # double 3.3735710000000001
	.quad	0x3fbf5f6fd21ff2e5              # double 0.12255000000000001
	.quad	0x4011e815e39713ad              # double 4.4766459999999997
	.quad	0x40123b784662bae0              # double 4.5580759999999998
	.quad	0x402069c7ffde7211              # double 8.2066040000000005
	.quad	0x3ff1c60cbf2b239a              # double 1.110852
	.quad	0x4013a5989df1172f              # double 4.9117150000000001
	.quad	0x400b4f8594291750              # double 3.4138289999999998
	.quad	0x4013a93a2df9378f              # double 4.9152610000000001
	.quad	0x4007e8a82a5614e0              # double 2.9886020000000002
	.quad	0x401c06b0d9513f8e              # double 7.0065340000000003
	.quad	0x3fea9d8c6d612c6b              # double 0.83173200000000003
	.quad	0x40216d4024b33db0              # double 8.7133800000000008
	.quad	0x401d4cb3e5753a3f              # double 7.3249050000000002
	.quad	0x401cd7d5ed06fef8              # double 7.2107770000000002
	.quad	0x4023afb71fbc5dea              # double 9.8431940000000004
	.quad	0x401052dfd694ccab              # double 4.0809319999999998
	.quad	0x4020d221ea359360              # double 8.4104150000000004
	.quad	0x3fbdcc20d5629d84              # double 0.116396
	.quad	0x3fe31ed17c5ef630              # double 0.59751200000000004
	.quad	0x401158f217093101              # double 4.3368609999999999
	.quad	0x3fe8e2c12ad81adf              # double 0.77768000000000004
	.quad	0x402362d40aaeafab              # double 9.6930239999999994
	.quad	0x401e2ca643cc07ab              # double 7.543603
	.quad	0x40235c714fce746d              # double 9.6805520000000004
	.quad	0x402302528ae74f2f              # double 9.5045359999999998
	.quad	0x4021ef416bdb1a6d              # double 8.9672959999999993
	.quad	0x40028b4c7f349386              # double 2.3180170000000002
	.quad	0x40122e9bbf0dc769              # double 4.5455160000000001
	.quad	0x3fd850268900c522              # double 0.37989200000000001
	.quad	0x40188f14983d7907              # double 6.1397269999999997
	.quad	0x40210fcb2d905c03              # double 8.5308469999999996
	.quad	0x4021cdc31593e5fb              # double 8.9018789999999992
	.quad	0x4010daec0724b76f              # double 4.2137909999999996
	.quad	0x4020b8a915379fa9              # double 8.3606649999999991
	.quad	0x4014060f5e41d4b7              # double 5.0059180000000003
	.quad	0x4010009d8c6d612c              # double 4.0006009999999996
	.quad	0x3ff95e9185cee17a              # double 1.585588
	.quad	0x4022b9a5ca29845e              # double 9.3625930000000004
	.quad	0x40233ab1b36bd2b7              # double 9.614637
	.quad	0x3ff542a12f901084              # double 1.328767
	.quad	0x4021ac5479d4d834              # double 8.8365819999999999
	.quad	0x3fe6e8ec52a411c3              # double 0.71593300000000004
	.quad	0x401c3c692f6e8295              # double 7.0589950000000004
	.quad	0x401589cf56eac860              # double 5.3845799999999997
	.quad	0x401ab3cd573647bb              # double 6.6755880000000003
	.quad	0x3fe995b573eab368              # double 0.79952500000000004
	.quad	0x4021761b8ed1bf7b              # double 8.7306790000000003
	.quad	0x40104199bb2788db              # double 4.064063
	.quad	0x401a71682f944242              # double 6.6107490000000002
	.quad	0x4008b8cc144028e5              # double 3.090233
	.quad	0x4006d3b4b2fa93af              # double 2.8533719999999998
	.quad	0x3ffede6ddf00abf7              # double 1.9293039999999999
	.quad	0x3ffba76534373f31              # double 1.7283679999999999
	.quad	0x3feb31e5c0b99913              # double 0.84984099999999996
	.quad	0x40184f9591cd1c7e              # double 6.0777190000000001
	.quad	0x402323649d388a8b              # double 9.5691269999999999
	.quad	0x3ff736d549731099              # double 1.450887
	.quad	0x4017500b45ae5ffa              # double 5.8281679999999998
	.quad	0x401696b7ed41b75a              # double 5.6471859999999996
	.quad	0x40020941c8216c61              # double 2.2545199999999999
	.quad	0x40201afdda8bd231              # double 8.0527180000000005
	.quad	0x400b7471f79420b4              # double 3.4318580000000001
	.quad	0x40220e833c60029f              # double 9.0283449999999998
	.quad	0x3fed8e8640208180              # double 0.92364800000000002
	.quad	0x402005ea465a5764              # double 8.0115529999999992
	.quad	0x401158f3a9b06812              # double 4.3368669999999998
	.quad	0x3fd6df266ba493c9              # double 0.35737000000000002
	.quad	0x3fded99029ae4f33              # double 0.48202899999999999
	.quad	0x401ae3fcc9ea9a3d              # double 6.7226439999999998
	.quad	0x401d26d97b30f8c6              # double 7.2879389999999997
	.quad	0x3fc6c7a7c9de0503              # double 0.17796799999999999
	.quad	0x40225c34a01abd1b              # double 9.1800890000000006
	.quad	0x4006f383f0bae89f              # double 2.8689040000000001
	.quad	0x3fe11e8c47a17f41              # double 0.53497899999999998
	.quad	0x4015aaf038e29f9d              # double 5.4169320000000001
	.quad	0x400e39d909f1f14a              # double 3.7782460000000002
	.quad	0x4001edd93c46d82c              # double 2.2411370000000002
	.quad	0x40136e225fa658c5              # double 4.8575530000000002
	.quad	0x4013833d6c721922              # double 4.8781639999999999
	.quad	0x4010e11be6e65387              # double 4.2198330000000004
	.quad	0x4014c5b20b8066c3              # double 5.1930620000000003
	.quad	0x4021f75d9a0f0a5f              # double 8.983136
	.quad	0x401b41c92ddbdb5e              # double 6.8142440000000004
	.quad	0x401375cf67b1c001              # double 4.865049
	.quad	0x401b533a0407cc7d              # double 6.8312759999999999
	.quad	0x4017040639d5e4a4              # double 5.7539300000000004
	.quad	0x401cc2bf9830e3ce              # double 7.1901840000000004
	.quad	0x4021cb397dd00f77              # double 8.8969229999999992
	.quad	0x4021fc9e01de2691              # double 8.9933929999999993
	.quad	0x400402d2fe3f35a0              # double 2.501379
	.quad	0x40151ee02a77a2cf              # double 5.2801520000000002
	.quad	0x4019af7f8ca8198f              # double 6.4213849999999999
	.quad	0x40008cd7cf5f4e44              # double 2.0687709999999999
	.quad	0x401cc8dac258d584              # double 7.1961469999999998
	.quad	0x401be8bd230b9dc3              # double 6.977284
	.quad	0x400b7b7e0ac7da1f              # double 3.4352990000000001
	.quad	0x4000a1d755bccaf7              # double 2.079024
	.quad	0x400fd6683c297bfa              # double 3.9796909999999999
	.quad	0x3ff0dfc4c165907e              # double 1.0546310000000001
	.quad	0x401ae1d9f4d37c13              # double 6.7205579999999996
	.quad	0x3ffc317bd8be7297              # double 1.762081
	.quad	0x4023647fdc5931ca              # double 9.6962879999999991
	.quad	0x401be96af038e2a0              # double 6.9779470000000003
	.quad	0x4011e4a83b1d0c80              # double 4.4732979999999998
	.quad	0x401b23e100607810              # double 6.7850380000000001
	.quad	0x400497e56473471f              # double 2.5741679999999998
	.quad	0x401147c5ac471b48              # double 4.3200900000000004
	.quad	0x3fee877ee4e26d48              # double 0.95403999999999999
	.quad	0x4012903f705857b0              # double 4.6408670000000001
	.quad	0x40153270f3882279              # double 5.2992590000000002
	.quad	0x401a4378ee286727              # double 6.5658909999999997
	.quad	0x3fe1232b12d3415b              # double 0.53554299999999999
	.quad	0x401fa4b1ee243569              # double 7.9108349999999996
	.quad	0x4021952178f68be3              # double 8.7912710000000001
	.quad	0x400891044f1a1987              # double 3.0708090000000001
	.quad	0x3ffbc4cbe1eb4203              # double 1.735546
	.quad	0x40212db1422ccb3a              # double 8.5892429999999997
	.quad	0x401e5c69f8c21e1d              # double 7.5902479999999998
	.quad	0x3ff33a3ec02f2f98              # double 1.2017199999999999
	.quad	0x40200c2a454de7ea              # double 8.0237599999999993
	.quad	0x3ff3518f3eccc469              # double 1.2074119999999999
	.quad	0x400e36e7a311e860              # double 3.7768090000000001
	.quad	0x4002f7121ab4b72c              # double 2.3706399999999999
	.quad	0x3fdb820e6299524c              # double 0.429813
	.quad	0x400677b6bb129025              # double 2.8084539999999998
	.quad	0x401883d46b26bf87              # double 6.1287399999999996
	.quad	0x4019e9fec99f1ae3              # double 6.4785110000000001
	.quad	0x401c7fbe33acd5b7              # double 7.1247490000000004
	.quad	0x4023585c4651f3e9              # double 9.6725790000000007
	.quad	0x4020ad3b4b2fa93b              # double 8.3383430000000001
	.quad	0x401de96a26e54717              # double 7.4779439999999999
	.quad	0x4017c882f0e0a84c              # double 5.9458120000000001
	.quad	0x4018c6f36ef80560              # double 6.1942880000000002
	.quad	0x401ded2c7b890d5a              # double 7.4816149999999997
	.quad	0x401001d2e0e30447              # double 4.0017810000000003
	.quad	0x401773860999dcb5              # double 5.8628159999999996
	.quad	0x401a309dcf893faf              # double 6.5474769999999998
	.quad	0x4020703cd141a693              # double 8.2192139999999991
	.quad	0x40159cd4aa10e022              # double 5.4031549999999999
	.quad	0x4021a719f7f8ca82              # double 8.8263700000000007
	.quad	0x400d48bf3bea91da              # double 3.6605210000000001
	.quad	0x400f248adeebb342              # double 3.8928430000000001
	.quad	0x400f7c6b05319829              # double 3.9357510000000002
	.quad	0x400e846c764adff8              # double 3.8146599999999999
	.quad	0x4002b70ac3a860dd              # double 2.3393760000000001
	.quad	0x3ffcec18f81e8a2f              # double 1.8076410000000001
	.quad	0x4020e94b9cb6848c              # double 8.4556550000000001
	.quad	0x401ece7ddca4b125              # double 7.7016520000000001
	.quad	0x401464c165907d91              # double 5.0983939999999999
	.quad	0x401b424399b2c40d              # double 6.814711
	.quad	0x3fd2a647fdc5931d              # double 0.29139900000000002
	.quad	0x40200df1bef49cf5              # double 8.0272349999999992
	.quad	0x40088a22b3892ee8              # double 3.0674489999999999
	.quad	0x401b7061847f5621              # double 6.8597469999999996
	.quad	0x401c805a2d72ffd2              # double 7.1253440000000001
	.quad	0x4017887c200c0f02              # double 5.883286
	.quad	0x401faced4e4c942d              # double 7.9188739999999997
	.quad	0x40183640a6b93ccd              # double 6.0529809999999999
	.quad	0x4002a0746455eaee              # double 2.3283469999999999
	.quad	0x3ff6f9b13165d399              # double 1.4359599999999999
	.quad	0x400c4e63a5c1c609              # double 3.5382760000000002
	.quad	0x40123c10d7be9857              # double 4.5586580000000003
	.quad	0x400a096249a133c2              # double 3.2545820000000001
	.quad	0x4012dedbf8b9baa1              # double 4.7176359999999997
	.quad	0x3ff8ea8eb463497b              # double 1.5572649999999999
	.quad	0x40154786c226809d              # double 5.3198499999999997
	.quad	0x402349331a08bfc2              # double 9.6429679999999998
	.quad	0x4014067a52ac753e              # double 5.0063259999999996
	.quad	0x40121bfad2999568              # double 4.5273240000000001
	.quad	0x4015f3f63c31df76              # double 5.4882439999999999
	.quad	0x4013cdc011d3671b              # double 4.9509280000000002
	.quad	0x4003a32b990afe61              # double 2.4546730000000001
	.quad	0x3ff6ecaff6d33094              # double 1.432785
	.quad	0x3fffd64d7f0ed3d8              # double 1.9898199999999999
	.quad	0x401b2eb13dfb0d52              # double 6.795598
	.quad	0x401ba78290689870              # double 6.9135840000000002
	.quad	0x402193a387592535              # double 8.7883569999999995
	.quad	0x3fef18f81e8a2ec3              # double 0.97179800000000005
	.quad	0x400690c4588a04d1              # double 2.8206869999999999
	.quad	0x3ff4ddd3bafd9770              # double 1.304157
	.quad	0x40238fbacb428912              # double 9.7807220000000008
	.quad	0x40194950fc71d606              # double 6.3215979999999998
	.quad	0x4023dee78183f91e              # double 9.9353599999999993
	.quad	0x401aaffda4052d66              # double 6.6718659999999996
	.quad	0x4020ea6c3b927d46              # double 8.4578570000000006
	.quad	0x4022d058793dd97f              # double 9.4069249999999993
	.quad	0x400d301e2584f4c7              # double 3.648495
	.quad	0x4019e2b4959e6256              # double 6.4713919999999998
	.quad	0x3ffb355ef1fddebe              # double 1.7005300000000001
	.quad	0x40207ab884406c01              # double 8.2396890000000003
	.quad	0x4002dbb73083558a              # double 2.3572829999999998
	.quad	0x4010281b21c475e6              # double 4.0391659999999998
	.quad	0x3ffa4f08461f9f02              # double 1.6442950000000001
	.quad	0x4021351159c49774              # double 8.6036479999999997
	.quad	0x3ff3b8bef8ceb357              # double 1.232604
	.quad	0x40119795703f2d3c              # double 4.3980309999999996
	.quad	0x4001a0b5ed8d36b5              # double 2.2034720000000001
	.quad	0x40024583621fafc9              # double 2.2839420000000001
	.quad	0x401a2c154c985f07              # double 6.54305
	.quad	0x401f551d68c692f7              # double 7.83312
	.quad	0x4011c593e5fb71fc              # double 4.4429470000000002
	.quad	0x401dc897204295a7              # double 7.4458890000000002
	.quad	0x3fd5b48d3ae685db              # double 0.33914499999999997
	.quad	0x4023093af74cd317              # double 9.5180279999999992
	.quad	0x4023f5ca07f66e87              # double 9.9800570000000004
	.quad	0x4015bc2e33eff195              # double 5.43377
	.quad	0x4022d76dfc5cdd51              # double 9.4207610000000006
	.quad	0x3ff3a9888f861a61              # double 1.22889
	.quad	0x4022455e4a383276              # double 9.1354849999999992
	.quad	0x3ffc56bebe1650a4              # double 1.7711779999999999
	.quad	0x3ff15294573a7979              # double 1.0826610000000001
	.quad	0x40021a41e57d9dbb              # double 2.2628210000000002
	.quad	0x3ffa4d2f5dbb9cfa              # double 1.6438440000000001
	.quad	0x400008205ff1d81f              # double 2.003968
	.quad	0x40110c1333b96af0              # double 4.2617919999999998
	.quad	0x40142325918a009f              # double 5.0343229999999997
	.quad	0x40176069e7fb267c              # double 5.8441539999999996
	.quad	0x402011f9acffa7eb              # double 8.0351079999999993
	.quad	0x3ff18848387df5cf              # double 1.095772
	.quad	0x4022605122318330              # double 9.1881190000000004
	.quad	0x401f914fce746cb9              # double 7.8919059999999996
	.quad	0x400d763779e9d0ea              # double 3.6827230000000002
	.quad	0x40030cf850df15a5              # double 2.3813330000000001
	.quad	0x40224c36976bc1f0              # double 9.148854
	.quad	0x40227d0df15a4acf              # double 9.2442469999999997
	.quad	0x40211d26b723ee1c              # double 8.5569360000000003
	.quad	0x400f5a82e87d2c7c              # double 3.9191950000000002
	.quad	0x3feecdc011d3671b              # double 0.96261600000000002
	.quad	0x400477add15f02c5              # double 2.5584370000000001
	.quad	0x401030af5fd47bee              # double 4.0475440000000003
	.quad	0x40232d657fb69985              # double 9.5886650000000006
	.quad	0x3feda6aec0724b77              # double 0.926597
	.quad	0x40077252ce032db2              # double 2.930822
	.quad	0x4015c58969a0ad8a              # double 5.4429069999999999
	.quad	0x401da3cee9dd7ecc              # double 7.4099690000000002
	.quad	0x3fc1a0b5ed8d36b5              # double 0.13771700000000001
	.quad	0x3ff28d0bb6ed6777              # double 1.159435
	.quad	0x402023d76ee73e68              # double 8.0700029999999998
	.quad	0x4022edb22d0e5604              # double 9.4642499999999998
	.quad	0x3fee551f81a5870e              # double 0.94789100000000004
	.quad	0x401ca4080f98fa37              # double 7.1601869999999996
	.quad	0x402155b37c99ae92              # double 8.6673849999999995
	.quad	0x40116cc532a497fa              # double 4.3562209999999997
	.quad	0x4022afebd09e12a5              # double 9.3435959999999998
	.quad	0x402391e8c47a17f4              # double 9.7849789999999998
	.quad	0x3fff3a1e3eaf6838              # double 1.951689
	.quad	0x401ac151a437824d              # double 6.6887879999999997
	.quad	0x4021dfec13b9f128              # double 8.9373480000000001
	.quad	0x4022da1f4b1ee243              # double 9.4260199999999993
	.quad	0x401248fd9fd36f7e              # double 4.5712799999999998
	.quad	0x4016668837718655              # double 5.6001289999999999
	.quad	0x4012875536933a04              # double 4.632161
	.quad	0x4023e6777079e59f              # double 9.9501299999999996
	.quad	0x4002bfe1975f2cb6              # double 2.3436919999999999
	.quad	0x401fd3914f483cb0              # double 7.9566090000000003
	.quad	0x40235e019b0ab2e1              # double 9.6836059999999992
	.quad	0x400255371971c10d              # double 2.2916089999999998
	.quad	0x3fffb2bba98eda23              # double 1.981136
	.quad	0x400990e779207d4e              # double 3.195754
	.quad	0x3ff37e121ee67514              # double 1.2182789999999999
	.quad	0x4004b375c8d9f905              # double 2.5876269999999999
	.quad	0x401a65436b8f9b13              # double 6.5988899999999999
	.quad	0x40086ba51a005c46              # double 3.0525609999999999
	.quad	0x4023725c3dee7818              # double 9.7233599999999995
	.quad	0x400d835ce1826677              # double 3.6891419999999999
	.quad	0x40057e75360d0247              # double 2.686747
	.quad	0x401afd0d0678c005              # double 6.7471199999999998
	.quad	0x400bd74eebf65dc0              # double 3.4801310000000001
	.quad	0x4016246a5d6bebe1              # double 5.5355619999999996
	.quad	0x3ff593f5b5fa2270              # double 1.3486229999999999
	.quad	0x3fe887746887a8d6              # double 0.76653499999999997
	.quad	0x4018c3cd141a6938              # double 6.1912120000000002
	.quad	0x400ef559b3d07c85              # double 3.8698000000000001
	.quad	0x401435a426bb55ac              # double 5.052384
	.quad	0x3ff4d44fe36d2242              # double 1.3018339999999999
	.quad	0x4013ae1b8ed1bf7b              # double 4.9200270000000002
	.quad	0x401712fec56d5cfb              # double 5.7685500000000003
	.quad	0x400aa194c0160525              # double 3.328897
	.quad	0x401c92ababead4f6              # double 7.1432330000000004
	.quad	0x3febf4a1272c94b4              # double 0.87361200000000005
	.quad	0x401db4f0d844d014              # double 7.4267000000000003
	.quad	0x4007eb8ae31d712a              # double 2.990011
	.quad	0x40231a0168b5cbff              # double 9.5507919999999995
	.quad	0x3ff6f59ccfaeff5c              # double 1.4349639999999999
	.quad	0x4006f132f87ad081              # double 2.8677730000000001
	.quad	0x401bb5eb313be22e              # double 6.9276549999999997
	.quad	0x401b29fdbd2fa0d7              # double 6.7910069999999996
	.quad	0x401bc8eb463497b7              # double 6.9462099999999998
	.quad	0x3ffc4ca2db61bb06              # double 1.76871
	.quad	0x4020e93d74d594f2              # double 8.4555469999999993
	.quad	0x3ff4fce4217d284a              # double 1.311741
	.quad	0x40209a964e8b7e4e              # double 8.3019280000000002
	.quad	0x4000a60807357e67              # double 2.08107
	.quad	0x3fdfd5bab21815a0              # double 0.49741999999999997
	.quad	0x4020168405b39e28              # double 8.0439760000000007
	.quad	0x401f3b6d00b45ae6              # double 7.808033
	.quad	0x401e1ac4f7ec3548              # double 7.5261420000000001
	.quad	0x3fc254e6e221c8a8              # double 0.14321600000000001
	.quad	0x402015976ff3ade2              # double 8.0421709999999997
	.quad	0x4020be4e054690de              # double 8.3716889999999999
	.quad	0x402219cb6848beb6              # double 9.0503800000000005
	.quad	0x3fe388feac42e98a              # double 0.61047300000000004
	.quad	0x4023a34b72c5197a              # double 9.8189349999999997
	.quad	0x40154686e7e62dc7              # double 5.3188740000000001
	.quad	0x4023a8cf5b1c8649              # double 9.8297070000000008
	.quad	0x4016a438d1d8a548              # double 5.6603729999999999
	.quad	0x3fffc8b439581062              # double 1.9864999999999999
	.quad	0x3fd16c9c0a8d21bc              # double 0.272254
	.quad	0x400213354c12274a              # double 2.259379
	.quad	0x4023e9b3f20a73f7              # double 9.9564509999999994
	.quad	0x40015374bc6a7efa              # double 2.1657500000000001
	.quad	0x3fc892923e5b8562              # double 0.191973
	.quad	0x3fe9514e3bcd35a8              # double 0.79117499999999996
	.quad	0x40234ce0fc2eba28              # double 9.6501540000000005
	.quad	0x4000f02eec7c957d              # double 2.1172770000000001
	.quad	0x4012e89efd86a8fc              # double 4.727169
	.quad	0x401b42ac753e707e              # double 6.8151109999999999
	.quad	0x3ff40f8d716d2aa6              # double 1.2537970000000001
	.quad	0x40114d49d7ba6699              # double 4.3254770000000002
	.quad	0x4014ad82fd75e204              # double 5.1694449999999996
	.quad	0x40234db8fde2ef4e              # double 9.651802
	.quad	0x400eef75d9a0f0a6              # double 3.866924
	.quad	0x40082f694467381d              # double 3.0231499999999998
	.quad	0x40146254a3c64346              # double 5.0960260000000002
	.quad	0x400beccccccccccd              # double 3.4906250000000001
	.quad	0x400bf973d9ec7000              # double 3.4968029999999999
	.quad	0x40005d6c72192210              # double 2.045617
	.quad	0x40210e09bb6aa4ba              # double 8.5274180000000008
	.quad	0x4020c69468017119              # double 8.3878509999999995
	.quad	0x400113ea2d2fe3f3              # double 2.1347239999999998
	.quad	0x4022b869e7fb267c              # double 9.3601829999999992
	.quad	0x4020faf87ad080b6              # double 8.4901769999999992
	.quad	0x40009cf4623d0bfa              # double 2.076638
	.quad	0x40086f01fb82c2bd              # double 3.0542029999999998
	.quad	0x402272d9274e22a3              # double 9.2243130000000004
	.quad	0x40200fbb2fec56d6              # double 8.0307250000000003
	.quad	0x4008d215fcc1871e              # double 3.1025809999999998
	.quad	0x401cbe468cac4b4d              # double 7.185816
	.quad	0x40186b16c1e364bf              # double 6.1045790000000002
	.quad	0x3fe327d24180d3d0              # double 0.598611
	.quad	0x401c567dfe32a066              # double 7.0844649999999998
	.quad	0x3ffa5ccb7d41743f              # double 1.6476550000000001
	.quad	0x4020599a847b2464              # double 8.1750070000000008
	.quad	0x3fd1db3bfb58d152              # double 0.27900599999999998
	.quad	0x402289e34330d738              # double 9.2693119999999993
	.quad	0x4000ed655e28aa43              # double 2.1159159999999999
	.quad	0x401259d451fc4c16              # double 4.5877239999999997
	.quad	0x3fe4178d4fdf3b64              # double 0.62787499999999996
	.quad	0x4014de1b4bb5e0f8              # double 5.216901
	.quad	0x40170deacc92146a              # double 5.7635909999999999
	.quad	0x401be4cc6822ff09              # double 6.9734360000000004
	.quad	0x3feb70e2c12ad81b              # double 0.85753000000000001
	.quad	0x3ffafad3a604e1e7              # double 1.686237
	.quad	0x3fb86f694467381d              # double 0.095449999999999993
	.quad	0x40176dedf1e0828c              # double 5.8573529999999998
	.quad	0x40224e618ce2d1f2              # double 9.1530880000000003
	.quad	0x3fe7367c286f8ad2              # double 0.72540099999999996
	.quad	0x40233e1fe21d96ea              # double 9.6213370000000005
	.quad	0x401ae6efc371da38              # double 6.7255240000000001
	.quad	0x401e02a7bd48cb4b              # double 7.502593
	.quad	0x400ee2ccb3a2595c              # double 3.8607420000000001
	.quad	0x4015ecfe154434e3              # double 5.4814379999999998
	.quad	0x4022ffbb517a4617              # double 9.4994759999999995
	.quad	0x401c2f893faf4278              # double 7.0464219999999997
	.quad	0x40160d6cb5350093              # double 5.5131100000000002
	.quad	0x4021c87b99d451fc              # double 8.8915679999999994
	.quad	0x4005be0c5a8155d6              # double 2.717797
	.quad	0x40211f7a0b5ed8d3              # double 8.5614779999999993
	.quad	0x401ff5cfede97d07              # double 7.9900510000000002
	.quad	0x400ea8cbd1244a62              # double 3.8324199999999999
	.quad	0x4018ccb7d41743e9              # double 6.1999199999999997
	.quad	0x401cee957470eb25              # double 7.2329920000000003
	.quad	0x4022bd8e0008637c              # double 9.3702240000000003
	.quad	0x4017949a5657fb6a              # double 5.8951200000000004
	.quad	0x4022ba56798958da              # double 9.3639410000000005
	.quad	0x4021deed02cd39da              # double 8.9354019999999998
	.quad	0x401ad633ce63a5c2              # double 6.7091820000000002
	.quad	0x3ff5380346dc5d64              # double 1.3261750000000001
	.quad	0x3ff4c8094e5d5b25              # double 1.298837
	.quad	0x40205aa0663c74fb              # double 8.1770049999999994
	.quad	0x4003cab606b7aa26              # double 2.4739800000000001
	.quad	0x400b087ca643cc08              # double 3.3791440000000001
	.quad	0x401641049235f80a              # double 5.5634940000000004
	.quad	0x3fcd810e8858ff76              # double 0.23050100000000001
	.quad	0x40179e060fe47992              # double 5.9043200000000002
	.quad	0x401a5bcf4e874c90              # double 6.589658
	.quad	0x3ffcf8b588e368f1              # double 1.8107200000000001
	.quad	0x4002b471f79420b4              # double 2.3381080000000001
	.quad	0x400b21df3300de4c              # double 3.3915389999999999
	.quad	0x4013588051c9f72f              # double 4.8364269999999996
	.quad	0x40213c4fa05143bf              # double 8.6177949999999992
	.quad	0x402333736cdf266c              # double 9.6004900000000006
	.quad	0x402037ca85caafbc              # double 8.1089669999999998
	.quad	0x3fdb0dc33721d53d              # double 0.42271500000000001
	.quad	0x3fe24fd2a62aa194              # double 0.57224399999999997
	.quad	0x3f53cab81f969e3d              # double 0.0012080000000000001
	.quad	0x3fe746e08f217093              # double 0.72740199999999999
	.quad	0x4003647991bc5586              # double 2.4240599999999999
	.quad	0x3ff916c82e019b0b              # double 1.5680620000000001
	.quad	0x400a2f62f9ca5bd9              # double 3.2731379999999999
	.quad	0x3ff39057d1782d38              # double 1.2227399999999999
	.quad	0x401c372d5e071c54              # double 7.053884
	.quad	0x400d301c92ddbdb6              # double 3.6484920000000001
	.quad	0x40238aa0663c74fb              # double 9.7707549999999994
	.quad	0x400241fb82c2bd7f              # double 2.2822179999999999
	.quad	0x3fda61bf37b8d3f2              # double 0.41221600000000003
	.quad	0x4010421d96e9bbf1              # double 4.0645660000000001
	.quad	0x40232033a4723ab0              # double 9.562894
	.quad	0x40230689ca18bd66              # double 9.5127699999999997
	.quad	0x3fdca161e4f765fe              # double 0.44735000000000003
	.quad	0x40180791c4b90215              # double 6.0073920000000003
	.quad	0x4000395464dc22ab              # double 2.0279929999999999
	.quad	0x3febab3892ee84ad              # double 0.86465099999999995
	.quad	0x4023af4d9c6b0532              # double 9.8423890000000007
	.quad	0x400276ac647778dd              # double 2.3079459999999998
	.quad	0x3fb16f86a098915c              # double 0.068108000000000002
	.quad	0x4012a74a3400b88d              # double 4.6633690000000003
	.quad	0x400711b93037d630              # double 2.8836539999999999
	.quad	0x40236b6976bc1f00              # double 9.7097890000000007
	.quad	0x40153e215336deb9              # double 5.3106739999999997
	.quad	0x3fe24e5710880d80              # double 0.57206299999999999
	.quad	0x401dcaac53b0813d              # double 7.4479230000000003
	.quad	0x402381e279dd3bb0              # double 9.7536810000000003
	.quad	0x3fe60e6299524bfd              # double 0.68925599999999998
	.quad	0x4004c21e1d2178f7              # double 2.5947840000000002
	.quad	0x3ffd15cc857f3062              # double 1.817822
	.quad	0x4016255bccaf709b              # double 5.5364829999999996
	.quad	0x4022b04d551d68c7              # double 9.3443400000000008
	.quad	0x401f9c8abd5dc400              # double 7.9028729999999996
	.quad	0x3feec5de9c0229a6              # double 0.96165400000000001
	.quad	0x4012d86f47b677f7              # double 4.7113620000000003
	.quad	0x4000e12513b5bf6a              # double 2.109934
	.quad	0x40203a25529fe005              # double 8.1135660000000005
	.quad	0x3ff56c27a63736ce              # double 1.338905
	.quad	0x401d90d0aaa7ded7              # double 7.3914210000000002
	.quad	0x3ff660d4562e09ff              # double 1.3986400000000001
	.quad	0x401cfc8eef1bac2e              # double 7.2466390000000001
	.quad	0x3ff96bc947064ecf              # double 1.5888150000000001
	.quad	0x4002c40852b4d8ba              # double 2.3457189999999999
	.quad	0x402167000431bde8              # double 8.7011719999999997
	.quad	0x40221951611ba3ca              # double 9.0494489999999992
	.quad	0x4016d5c5b4aa9718              # double 5.7087620000000001
	.quad	0x3fbdb584b1ab0857              # double 0.116051
	.quad	0x40232ab4b72c5198              # double 9.5834100000000006
	.quad	0x4010eab25b317efe              # double 4.229196
	.quad	0x40019aa369fcf3dc              # double 2.200507
	.quad	0x40228fc99ae924f2              # double 9.2808349999999997
	.quad	0x401b04be835dedf2              # double 6.7546330000000001
	.quad	0x40008a7ef9db22d1              # double 2.067625
	.quad	0x40218776a2f48c2e              # double 8.7645769999999992
	.quad	0x4012ef8ca8198f1d              # double 4.7339349999999998
	.quad	0x401720eb67c286f9              # double 5.7821480000000003
	.quad	0x402325171e29b6b3              # double 9.5724420000000005
	.quad	0x402013f3e0370cdd              # double 8.0389700000000008
	.quad	0x401147fd82773e25              # double 4.320303
	.quad	0x4022bfb4c3c18b50              # double 9.3744259999999997
	.quad	0x400ba56d5cfaacda              # double 3.455775
	.quad	0x4008ab430f49491f              # double 3.0836239999999999
	.quad	0x401e23a96d4c33b5              # double 7.5348259999999998
	.quad	0x4010f44998d045fe              # double 4.2385619999999999
	.quad	0x402215334c5da6a4              # double 9.0414069999999995
	.quad	0x40012e33eff19503              # double 2.1475599999999999
	.quad	0x40126a8155d5f56a              # double 4.6040089999999996
	.quad	0x3ff59e8d5410f94d              # double 1.3512090000000001
	.quad	0x4023c1f77292c493              # double 9.8788409999999995
	.quad	0x4007cdd1e53a81dc              # double 2.975498
	.quad	0x4001d2b3cc4ac6ce              # double 2.2278820000000001
	.quad	0x3ff317fa5d28d003              # double 1.193354
	.quad	0x400fd47a5b0ff10f              # double 3.9787490000000001
	.quad	0x3ffcd20c069e7fb2              # double 1.8012809999999999
	.quad	0x400e03b1d0c80410              # double 3.7518039999999999
	.quad	0x400b983c6c97d8cf              # double 3.4493339999999999
	.quad	0x402384de19fc2a88              # double 9.7595069999999992
	.quad	0x400a88f8e7ddca4b              # double 3.316881
	.quad	0x3feca9b499d0203e              # double 0.89571599999999996
	.quad	0x401ac89efd86a8fc              # double 6.695919
	.quad	0x40019ab5c39bcba3              # double 2.200542
	.quad	0x4021d0dd3fe1975f              # double 8.9079379999999997
	.quad	0x400a8045baf533f4              # double 3.3126329999999999
	.quad	0x400ba6f5019f3c71              # double 3.4565220000000001
	.quad	0x4010383947496aad              # double 4.0549059999999999
	.quad	0x4019fd1958969a0b              # double 6.4971670000000001
	.quad	0x40182e3c968943e1              # double 6.045153
	.quad	0x4012010060780fdc              # double 4.5009779999999999
	.quad	0x40193b6f5caf2d80              # double 6.3080420000000004
	.quad	0x402110b6d86ec17f              # double 8.5326450000000005
	.quad	0x40164283d35eb745              # double 5.5649559999999996
	.quad	0x401273f705857aff              # double 4.6132470000000003
	.quad	0x40149574f722e1ac              # double 5.1459539999999997
	.quad	0x3fe8d30489d27c39              # double 0.77575899999999998
	.quad	0x401515d031055b8a              # double 5.2713020000000004
	.quad	0x401dc41d8e864021              # double 7.4415190000000004
	.quad	0x40186de33269df98              # double 6.1073120000000003
	.quad	0x40045fa333764f12              # double 2.5466980000000001
	.quad	0x4022ee154434e337              # double 9.4650060000000006
	.quad	0x400b7d4e09784ec6              # double 3.4361839999999999
	.quad	0x4018b4bcf0b6b6e1              # double 6.1765020000000002
	.quad	0x401806f86a098916              # double 6.0068070000000002
	.quad	0x400a50e0221426fe              # double 3.2894899999999998
	.quad	0x401281b75a74c09c              # double 4.6266759999999998
	.quad	0x4003e15db3397dd0              # double 2.485042
	.quad	0x40164404ea4a8c15              # double 5.5664249999999997
	.quad	0x3fe57e08aefb2aae              # double 0.67163499999999998
	.quad	0x40194ce7cd035372              # double 6.3251030000000004
	.quad	0x4020c95b35b0bbf5              # double 8.3932739999999999
	.quad	0x3fe5adb1e9f27781              # double 0.67745299999999997
	.quad	0x4021eced916872b0              # double 8.9627499999999998
	.quad	0x3fe6bc68661ae70c              # double 0.71049899999999999
	.quad	0x4016941461b6d43d              # double 5.644609
	.quad	0x4023fd99ed7c6fbd              # double 9.9953149999999997
	.quad	0x400a1451fc4c1659              # double 3.259922
	.quad	0x40000152b0a6fc59              # double 2.0006460000000001
	.quad	0x401639899bf5946c              # double 5.5561889999999998
	.quad	0x4012a5510d38cda7              # double 4.6614420000000001
	.quad	0x40105bd1aa821f2a              # double 4.0896670000000004
	.quad	0x402113fe7e1fc090              # double 8.5390510000000006
	.quad	0x402021843c3a42f2              # double 8.0654620000000001
	.quad	0x4006bb7d84901d19              # double 2.841548
	.quad	0x3ff0f2ca57a786c2              # double 1.059275
	.quad	0x401b2a67620ee8d1              # double 6.7914099999999999
	.quad	0x402275bf8b9baa15              # double 9.2299769999999999
	.quad	0x401585b9628cbd12              # double 5.3805899999999998
	.quad	0x400bb7e670e2c12b              # double 3.4647950000000001
	.quad	0x3fd09389b52007dd              # double 0.25900499999999999
	.quad	0x40232d454152b0a7              # double 9.588419
	.quad	0x4017a3c792d1287c              # double 5.9099409999999999
	.quad	0x40150b2cc70867ae              # double 5.2609130000000004
	.quad	0x4018bf7596851223              # double 6.1869719999999999
	.quad	0x40079b4b2fa93af7              # double 2.9508269999999999
	.quad	0x4016c2db1e9f2778              # double 5.6902889999999999
	.quad	0x3ff939df548ecd8e              # double 1.5766290000000001
	.quad	0x4005ee525892684d              # double 2.741368
	.quad	0x401bfc9afe1da7b1              # double 6.9966850000000003
	.quad	0x3fc5f505d0fa58f7              # double 0.17154
	.quad	0x40020163779e9d0f              # double 2.2506780000000002
	.quad	0x4011c996fa82e87d              # double 4.4468649999999998
	.quad	0x3fd3a858793dd97f              # double 0.30714999999999998
	.quad	0x401476ab14ec204f              # double 5.1158869999999999
	.quad	0x401c339eadd590c1              # double 7.0504100000000003
	.quad	0x3ffb33abc947064f              # double 1.700115
	.quad	0x401cdaeddce7cd03              # double 7.2137979999999997
	.quad	0x3ff9a76965f5275f              # double 1.603372
	.quad	0x400042cdc011d367              # double 2.032619
	.quad	0x401cc5c8d9f9053a              # double 7.193149
	.quad	0x4021b408d8ec95c0              # double 8.8516300000000001
	.quad	0x40196e6c8f755369              # double 6.3578359999999998
	.quad	0x401d5a582dbe7f2c              # double 7.3382269999999998
	.quad	0x4014b6bb1290257d              # double 5.1784480000000004
	.quad	0x40130f42fe82517e              # double 4.7649039999999996
	.quad	0x3fa1782d38476f2a              # double 0.034119999999999998
	.quad	0x400515a964e8b7e5              # double 2.6355770000000001
	.quad	0x401cf3c7d5ed06ff              # double 7.238067
	.quad	0x3ff32413db7f1737              # double 1.1963079999999999
	.quad	0x402066940357a355              # double 8.200348
	.quad	0x4003b3743632c1f4              # double 2.4626239999999999
	.quad	0x3ff7f1971c10d7bf              # double 1.4964820000000001
	.quad	0x3fff3bd6a593a2e0              # double 1.9521090000000001
	.quad	0x401c697d06bbdbe4              # double 7.1030160000000002
	.quad	0x4022eb252ce032db              # double 9.4592679999999997
	.quad	0x401889a5ebb7739f              # double 6.1344219999999998
	.quad	0x4021220d130df9be              # double 8.5665060000000004
	.quad	0x4023ed36d655e28b              # double 9.9633090000000006
	.quad	0x4020bb20d9945b6c              # double 8.3654849999999996
	.quad	0x3fff6c5197a24895              # double 1.9639450000000001
	.quad	0x4012f427c7c5260f              # double 4.7384329999999997
	.quad	0x401c6ba6266fd652              # double 7.1051260000000003
	.quad	0x3fd64ba94bbe4474              # double 0.34836800000000001
	.quad	0x402009ed9dfdac69              # double 8.0193910000000006
	.quad	0x4021234938583622              # double 8.568918
	.quad	0x4011d2c881e4712e              # double 4.4558429999999998
	.quad	0x400b67f77af64064              # double 3.4257650000000002
	.quad	0x400d9c792d1287c2              # double 3.701403
	.quad	0x40133ab14ec204f3              # double 4.8073170000000003
	.quad	0x4016080a9de8b3b3              # double 5.5078529999999999
	.quad	0x400cfb84db9c7369              # double 3.6228120000000001
	.quad	0x401382cb20fb224b              # double 4.8777280000000003
	.quad	0x3fe36b2074ea8da8              # double 0.60682700000000001
	.quad	0x400f47c7c5260f5e              # double 3.9100489999999999
	.quad	0x401e65f7403dddb1              # double 7.5995759999999998
	.quad	0x401b667ad8e43244              # double 6.8500779999999999
	.quad	0x401db313be22e5de              # double 7.4248799999999999
	.quad	0x40132aa433508f65              # double 4.7916420000000004
	.quad	0x4022cde6149c6f37              # double 9.4021460000000001
	.quad	0x401a08ae31d712a1              # double 6.5084770000000001
	.quad	0x4020aeafcce1c582              # double 8.3411849999999994
	.quad	0x402193356da0168b              # double 8.7875169999999994
	.quad	0x401863d577963993              # double 6.0974940000000002
	.quad	0x401d96d4801f7510              # double 7.3972949999999997
	.quad	0x400b5f8ec0f88334              # double 3.421659
	.quad	0x400bf86c226809d5              # double 3.4963000000000002
	.quad	0x400ceca148ba83f5              # double 3.615542
	.quad	0x3fe56c61522a6f3f              # double 0.66947999999999996
	.quad	0x4006344e50c5eb31              # double 2.7755399999999999
	.quad	0x400bd6dfc5cdd50b              # double 3.4799190000000002
	.quad	0x3ff1cc61d8622c45              # double 1.112398
	.quad	0x40206f182235b4ee              # double 8.2169810000000005
	.quad	0x401185ef1fddebd9              # double 4.380795
	.quad	0x3ff6ce53eb399f5e              # double 1.425373
	.quad	0x40132f7b5aea3162              # double 4.7963690000000003
	.quad	0x401674e50c5eb314              # double 5.6141550000000002
	.quad	0x3fe10661ae70c133              # double 0.53202899999999997
	.quad	0x4013d9c1f85d744f              # double 4.9626539999999997
	.quad	0x401660b5aa715832              # double 5.5944430000000001
	.quad	0x3ff89c66d373affb              # double 1.538184
	.quad	0x40204c56d5cfaace              # double 8.1491000000000007
	.quad	0x40001b3397dd00f7              # double 2.0132819999999998
	.quad	0x4020ed1e53a81dc1              # double 8.4631220000000003
	.quad	0x400915c39bcba301              # double 3.1356269999999999
	.quad	0x400567bb2fec56d6              # double 2.6756500000000001
	.quad	0x401cf945308bb906              # double 7.2434279999999998
	.quad	0x401726299524bfd3              # double 5.7872680000000001
	.quad	0x401e6bbfd71b0468              # double 7.6052239999999997
	.quad	0x4019557c0b135979              # double 6.3334809999999999
	.quad	0x40092ec17ebaf102              # double 3.1478299999999999
	.quad	0x3ffb5625a682b628              # double 1.7085319999999999
	.quad	0x40153bff8a8f3a9b              # double 5.308592
	.quad	0x400b0a5df2239e6b              # double 3.3800620000000001
	.quad	0x3fd14c404a72ead9              # double 0.27027899999999999
	.quad	0x3ff585c5718eb895              # double 1.345159
	.quad	0x3fed70153bd16766              # double 0.91993199999999997
	.quad	0x4018272ef0ae5365              # double 6.038265
	.quad	0x4018a76c4827b6fe              # double 6.1634989999999998
	.quad	0x40141ee631f8a090              # double 5.0301749999999998
	.quad	0x40015498c3b0c459              # double 2.1663070000000002
	.quad	0x4018db9389b52008              # double 6.2144300000000001
	.quad	0x401be16872b020c5              # double 6.9701250000000003
	.quad	0x3fe434acaff6d331              # double 0.63143000000000005
	.quad	0x40133deacc92146a              # double 4.8104659999999999
	.quad	0x3ffffa6698bb4d49              # double 1.9986330000000001
	.quad	0x401874c1ebc83a97              # double 6.1140210000000002
	.quad	0x4020e74cb1897a68              # double 8.4517570000000006
	.quad	0x401c2306a2b17050              # double 7.034205
	.quad	0x4022a93a0c6b484d              # double 9.3305209999999992
	.quad	0x4016c9845dc83233              # double 5.6967939999999997
	.quad	0x401b06d938151a43              # double 6.7566879999999996
	.quad	0x3ff27008a697aede              # double 1.152352
	.quad	0x400babf5515054ac              # double 3.4589639999999999
	.quad	0x4019d91c8eabffce              # double 6.4620230000000003
	.quad	0x3fe22a7589efd86b              # double 0.56768300000000005
	.quad	0x4001666559f6ec5b              # double 2.174998
	.quad	0x3ffb3cac8e68e3ef              # double 1.702313
	.quad	0x3ff12c1094a2b9d4              # double 1.073258
	.quad	0x4017d2b4959e6256              # double 5.9557669999999998
	.quad	0x401d0d983947496b              # double 7.2632760000000003
	.quad	0x40169304039abf34              # double 5.6435700000000004
	.quad	0x400c27b1c0010c6f              # double 3.5193819999999998
	.quad	0x4005441bb8c32a8d              # double 2.6582560000000002
	.quad	0x400686c6583e8577              # double 2.8158080000000001
	.quad	0x401c1729b280f12c              # double 7.0226199999999999
	.quad	0x4022351bd61f5be6              # double 9.1037280000000003
	.quad	0x401ebc436fc158fb              # double 7.6838509999999997
	.quad	0x3fdad3b29a1b9f99              # double 0.41917100000000002
	.quad	0x40094435efa615a9              # double 3.1583060000000001
	.quad	0x4004cac8e68e3ef3              # double 2.5990160000000002
	.quad	0x3fd54d7f0ed3d85a              # double 0.33285500000000001
	.quad	0x4021d49235f80991              # double 8.9151779999999992
	.quad	0x4021613fd0d0678c              # double 8.6899399999999999
	.quad	0x3ff592d01c0ca601              # double 1.3483430000000001
	.quad	0x40068ed352220bc4              # double 2.8197390000000002
	.quad	0x401a1634117f8445              # double 6.5216830000000003
	.quad	0x3ffd551b4fe79ee0              # double 1.833278
	.quad	0x400b0f1fddebd902              # double 3.3823850000000002
	.quad	0x4022c767f4dbdf8f              # double 9.3894649999999995
	.quad	0x40186dde37585be2              # double 6.1072930000000003
	.quad	0x40215181e03f7058              # double 8.6591939999999994
	.quad	0x401ddfe931876189              # double 7.4686630000000003
	.quad	0x401c6f648c7192ea              # double 7.1087819999999997
	.quad	0x401356833c60029f              # double 4.8344849999999999
	.quad	0x400075696e58a32f              # double 2.0573299999999999
	.quad	0x3ff1eddaceee0f3d              # double 1.1205700000000001
	.quad	0x40223d9cf13cee9e              # double 9.1203380000000003
	.quad	0x401873764f11b60b              # double 6.1127560000000001
	.quad	0x40082a26e5471716              # double 3.0205820000000001
	.quad	0x3ffcde3c968943e1              # double 1.804257
	.quad	0x4020a996fa82e87d              # double 8.3312299999999997
	.quad	0x4016849dbec2480f              # double 5.6295080000000004
	.quad	0x3ff0fc30d306a2b1              # double 1.0615699999999999
	.quad	0x4010ed0b73d188f4              # double 4.2314889999999998
	.quad	0x4021c59ec7000432              # double 8.8859770000000005
	.quad	0x40106ef06b37867f              # double 4.108339
	.quad	0x3ffa7da2f8bdec5f              # double 1.655673
	.quad	0x3fef3c664d3bf2f5              # double 0.97612299999999996
	.quad	0x4005354003254e6e              # double 2.6510009999999999
	.quad	0x401da4b380cb6c7a              # double 7.4108409999999996
	.quad	0x3ff3d26c7eae5bc8              # double 1.2388729999999999
	.quad	0x4005b33c1ce6c094              # double 2.7125170000000001
	.quad	0x40161d48cb4aec8d              # double 5.5285979999999997
	.quad	0x401ead6e47dc37a4              # double 7.6693660000000001
	.quad	0x400acec7c957cd46              # double 3.3509669999999998
	.quad	0x401d8004b7f5a533              # double 7.3750179999999999
	.quad	0x402368af1cb89d6b              # double 9.7044610000000002
	.quad	0x4011b79d909f1f15              # double 4.4293120000000004
	.quad	0x401bda843808850a              # double 6.9633950000000002
	.quad	0x401e5d6a161e4f76              # double 7.5912249999999997
	.quad	0x40123b402d16b980              # double 4.5578620000000001
	.quad	0x4013fb36bd2b6f1a              # double 4.9953260000000004
	.quad	0x400f12f33ca31e7e              # double 3.8842530000000002
	.quad	0x4021005c67dfe32a              # double 8.500705
	.quad	0x4019e606317268d3              # double 6.4746329999999999
	.quad	0x401204f4c6e6d9be              # double 4.5048399999999997
	.quad	0x3ff86ebb341e14be              # double 1.527034
	.quad	0x402340e581cf7879              # double 9.6267510000000005
	.quad	0x401b4d1cc100e6b0              # double 6.8253050000000002
	.quad	0x3fca48301a79feca              # double 0.20532800000000001
	.quad	0x3ff110247021d10b              # double 1.066441
	.quad	0x3fe276a7264a16a5              # double 0.57698400000000005
	.quad	0x400bb606317268d3              # double 3.4638789999999999
	.quad	0x4018429a5ebb773a              # double 6.065042
	.quad	0x4004b9641f644956              # double 2.5905230000000001
	.quad	0x4020ac0f45176146              # double 8.3360540000000007
	.quad	0x402134cea28fe261              # double 8.6031390000000005
	.quad	0x40198dfbd6a593a3              # double 6.3886560000000001
	.quad	0x400e9c0096feb4a6              # double 3.8261729999999998
	.quad	0x4019d937d1fe64f5              # double 6.4621269999999997
	.quad	0x4022ad9513f8db49              # double 9.3390280000000008
	.quad	0x4006c1bb8c32a8ca              # double 2.8445960000000001
	.quad	0x40063c66d373affb              # double 2.779493
	.quad	0x40169ad688377186              # double 5.6512089999999997
	.quad	0x3fe67aa68f4b61fe              # double 0.70247199999999999
	.quad	0x401b89478c868ba0              # double 6.8840620000000001
	.quad	0x4020246f36ef8056              # double 8.071161
	.quad	0x40124d8c6d612c6b              # double 4.5757310000000002
	.quad	0x3fd98c5436b8f9b1              # double 0.39918999999999999
	.quad	0x401d75c853c14834              # double 7.3650219999999997
	.quad	0x4022226202539757              # double 9.0671540000000004
	.quad	0x4022e19695d91ab9              # double 9.4406020000000001
	.quad	0x401946dd26b723ee              # double 6.3192029999999999
	.quad	0x401bfbc169c23b79              # double 6.9958549999999997
	.quad	0x401cd576cce5f740              # double 7.2084609999999998
	.quad	0x3feae6277c45cbbc              # double 0.84059499999999998
	.quad	0x401a4e7ddca4b125              # double 6.5766520000000002
	.quad	0x3fe1c942d490e66d              # double 0.55581800000000003
	.quad	0x4021f1d19157abb9              # double 8.9723020000000009
	.quad	0x400074299d883ba3              # double 2.0567199999999999
	.quad	0x4016c044284dfce3              # double 5.6877599999999999
	.quad	0x3fedba322af57710              # double 0.928979
	.quad	0x4023afe260b2c83f              # double 9.8435240000000003
	.quad	0x401cee718a86d71f              # double 7.2328549999999998
	.quad	0x40192a5a89b951c6              # double 6.2913610000000002
	.quad	0x401048472c0e7bc4              # double 4.0705840000000002
	.quad	0x4018a33acd5b6806              # double 6.1594040000000003
	.quad	0x4019e83be6601bca              # double 6.4767910000000004
	.quad	0x3ffa3bfe7e1fc090              # double 1.6396470000000001
	.quad	0x401c85d5f56a7ac8              # double 7.1306989999999999
	.quad	0x400d43f034b0e1b5              # double 3.6581730000000001
	.quad	0x3ffb4753e707e176              # double 1.704914
	.quad	0x40235bec02f2f987              # double 9.6795349999999995
	.quad	0x401e541bb8c32a8d              # double 7.5821370000000003
	.quad	0x4016d53825e13b19              # double 5.7082220000000001
	.quad	0x401c4c332f01754b              # double 7.074414
	.quad	0x40161c779a6b50b1              # double 5.5278
	.quad	0x401a1f7596851223              # double 6.5307219999999999
	.quad	0x4003a108c3f3e037              # double 2.45363
	.quad	0x3ff5c99285a921cd              # double 1.361712
	.quad	0x40003eb0fadf2ecf              # double 2.0306109999999999
	.quad	0x400d102363b25700              # double 3.6328800000000001
	.quad	0x401054bcf0b6b6e1              # double 4.0827520000000002
	.quad	0x4020ed41d8e86402              # double 8.4633929999999999
	.quad	0x402008bf5d78811b              # double 8.0170849999999998
	.quad	0x402051d14e3bcd36              # double 8.1598000000000006
	.quad	0x401d9018a43bb40b              # double 7.3907189999999998
	.quad	0x4006b7a89331a08c              # double 2.839677
	.quad	0x4005ee5471715c64              # double 2.7413720000000001
	.quad	0x401930c88a47ecff              # double 6.2976400000000003
	.quad	0x4020eea9a3d2d880              # double 8.4661380000000008
	.quad	0x4022edcd4ed2cbea              # double 9.4644569999999995
	.quad	0x3ff93228dc981beb              # double 1.574746
	.quad	0x401b3cb4f1e4b44a              # double 6.8092839999999999
	.quad	0x4001feef5ec80c74              # double 2.2494800000000001
	.quad	0x40146b0ee49f5169              # double 5.1045489999999996
	.quad	0x40172dc55000c954              # double 5.7946980000000003
	.quad	0x400a137867f0aa22              # double 3.2595070000000002
	.quad	0x4021f7ede97d06bc              # double 8.9842370000000002
	.quad	0x4008ffdd65a14489              # double 3.1249340000000001
	.quad	0x401f466516db0dd8              # double 7.8187449999999998
	.quad	0x401ad5a9eb2074eb              # double 6.7086560000000004
	.quad	0x40230986db50f40e              # double 9.5186069999999994
	.quad	0x4004fd46b26bf877              # double 2.6236700000000002
	.quad	0x4009e11f4f50a02c              # double 3.2349230000000002
	.quad	0x40098bda0dfdef85              # double 3.1932870000000002
	.quad	0x401e0a25529fe005              # double 7.5099080000000002
	.quad	0x4023478f041461b7              # double 9.6397630000000003
	.quad	0x3ff3b4fb549f9485              # double 1.2316849999999999
	.quad	0x401ca11947cfa26a              # double 7.1573229999999999
	.quad	0x4022f531db445ed5              # double 9.4788960000000006
	.quad	0x4008682cf52b90a8              # double 3.0508670000000002
	.quad	0x401e701bc98a222d              # double 7.6094809999999997
	.quad	0x401979b0ee49f517              # double 6.3688390000000004
	.quad	0x40161861a60d4563              # double 5.5238100000000001
	.quad	0x4010557b41bfbdf1              # double 4.0834780000000004
	.quad	0x3fe9ae89eba6aca8              # double 0.80255600000000005
	.quad	0x4003a5e13b18dac2              # double 2.4559959999999998
	.quad	0x401675931ca7d673              # double 5.6148189999999998
	.quad	0x4022cc8e043a2164              # double 9.399521
	.quad	0x3fd79a52263d816b              # double 0.36879400000000001
	.quad	0x4013711cb039ef0f              # double 4.8604609999999999
	.quad	0x4007304577d95571              # double 2.8985699999999999
	.quad	0x4014cd5e071c53f4              # double 5.2005540000000003
	.quad	0x401703c64345cfee              # double 5.7536860000000001
	.quad	0x400ad37867f0aa22              # double 3.3532570000000002
	.quad	0x40018aca79357604              # double 2.1927690000000002
	.quad	0x3fee686e7e62dc6e              # double 0.95024799999999998
	.quad	0x4018c95f676ea423              # double 6.1966530000000004
	.quad	0x3ff7b26bf8769ec3              # double 1.48106
	.quad	0x4022c3677f6b1a2a              # double 9.3816489999999995
	.quad	0x4007e205ff1d81f1              # double 2.985363
	.quad	0x40196dec5f394b7b              # double 6.3573469999999999
	.quad	0x3fee457c0b135979              # double 0.94598199999999999
	.quad	0x3ff7b13059641f64              # double 1.4807589999999999
	.quad	0x3fe399c17225b74a              # double 0.61251900000000004
	.quad	0x400fe00eae18ac9f              # double 3.9844029999999999
	.quad	0x4022b44284dfce31              # double 9.3520699999999994
	.quad	0x40020c7f34938583              # double 2.2561019999999998
	.quad	0x3ff17220791c4b90              # double 1.090363
	.quad	0x3fde58cd20afa2f0              # double 0.47416999999999998
	.quad	0x4011b9420b3d4ae4              # double 4.4309159999999999
	.quad	0x40223f0110a137f4              # double 9.1230550000000008
	.quad	0x400d5716d2aa5c5f              # double 3.6675239999999998
	.quad	0x4014b1e646f15619              # double 5.1737299999999999
	.quad	0x4020cdf99c38b04b              # double 8.4022950000000005
	.quad	0x400fa3150dae3e6c              # double 3.9546299999999999
	.quad	0x40109a5d28d002e2              # double 4.1507459999999998
	.quad	0x400a969ca9ef5233              # double 3.3235410000000001
	.quad	0x401254d8ba40d90e              # double 4.5828579999999999
	.quad	0x4023e978b3700475              # double 9.9559990000000002
	.quad	0x4023652fe3f359ff              # double 9.6976309999999994
	.quad	0x40138e586013660e              # double 4.8890089999999997
	.quad	0x3fd1215fcc1871e7              # double 0.26766200000000001
	.quad	0x401c55d8d79d0a67              # double 7.0838349999999997
	.quad	0x401dc98288051c9f              # double 7.4467869999999996
	.quad	0x400b51d712a0ec74              # double 3.4149609999999999
	.quad	0x40214129cbab649d              # double 8.6272719999999996
	.quad	0x40225582ba5a0382              # double 9.1670130000000007
	.quad	0x401f399f5dfeb8d8              # double 7.8062719999999998
	.quad	0x401d6b0ccbc05d53              # double 7.3545410000000002
	.quad	0x400d03e29307af21              # double 3.626897
	.quad	0x401ff7903211cb04              # double 7.9917610000000003
	.quad	0x3fa8e8c8abd5dc40              # double 0.048651
	.quad	0x400b4b4a66559f6f              # double 3.4117630000000001
	.quad	0x4021f6353f7ced91              # double 8.9808749999999993
	.quad	0x4005e7cd898b2e9d              # double 2.7381850000000001
	.quad	0x3ffb1b97353b4b30              # double 1.6942360000000001
	.quad	0x402124330d73860a              # double 8.5707020000000007
	.quad	0x40238e8f6cefed63              # double 9.7784379999999995
	.quad	0x401b39667b5f1bef              # double 6.8060549999999997
	.quad	0x40014b191dde3758              # double 2.1616689999999998
	.quad	0x40227615011904b4              # double 9.2306290000000004
	.quad	0x3fffc9289dadfb50              # double 1.9866109999999999
	.quad	0x400aa2a1b5c7cd8a              # double 3.3294100000000002
	.quad	0x4021a2fad6cb5350              # double 8.8183199999999999
	.quad	0x4020c917d6b65a9b              # double 8.3927600000000009
	.quad	0x40210021af7d30ad              # double 8.5002569999999995
	.quad	0x4014771d1d4738a4              # double 5.1163220000000003
	.quad	0x401dcaafff36ac64              # double 7.4479369999999996
	.quad	0x400286ee30caa327              # double 2.3158840000000001
	.quad	0x3fe571e6cd29131f              # double 0.67015400000000003
	.quad	0x3ffe23ac0c62e4d2              # double 1.8837090000000001
	.quad	0x40222613f4a98aa8              # double 9.0743709999999993
	.quad	0x400c8e3ef284167b              # double 3.5694560000000002
	.quad	0x4018d2773e24febd              # double 6.205533
	.quad	0x4008e68b19a415f4              # double 3.1125699999999998
	.quad	0x401a50f733a8a3f9              # double 6.5790680000000004
	.quad	0x3ff515fcc1871e6d              # double 1.317868
	.quad	0x4020872a172abef0              # double 8.2639929999999993
	.quad	0x402297bdf090f734              # double 9.2963710000000006
	.quad	0x4003c27ae9ab29e5              # double 2.4699610000000001
	.quad	0x400dd83f91e646f1              # double 3.7305899999999999
	.quad	0x400b9ec2ce464990              # double 3.4525199999999998
	.quad	0x4022bbaecd07852f              # double 9.3665679999999991
	.quad	0x4007e98676a7264a              # double 2.989026
	.quad	0x4020fc68cac4b4d0              # double 8.4929869999999994
	.quad	0x3ff218127b2cc708              # double 1.1308769999999999
	.quad	0x4015c81344806291              # double 5.4453860000000001
	.quad	0x40107b3e1437c569              # double 4.1203539999999998
	.quad	0x3ff0ab723ee1bd1f              # double 1.041857
	.quad	0x4021b8bc7b45f17c              # double 8.8608130000000002
	.quad	0x3fd9c996b76709fa              # double 0.40292899999999998
	.quad	0x4023fe013660e51d              # double 9.9961029999999997
	.quad	0x400f1635e74299d9              # double 3.8858450000000002
	.quad	0x3ff37e8bc169c23b              # double 1.2183949999999999
	.quad	0x3fee0d21bc126a66              # double 0.93910300000000002
	.quad	0x401182c881e4712e              # double 4.3777179999999998
	.quad	0x4020da5d28d002e2              # double 8.4264919999999996
	.quad	0x401770a782906898              # double 5.8600139999999996
	.quad	0x400843be6601bc99              # double 3.0330780000000002
	.quad	0x4012bad4b2745bf2              # double 4.6824519999999996
	.quad	0x401850a84be40421              # double 6.078767
	.quad	0x400d6105186db50f              # double 3.6723729999999999
	.quad	0x4014ae56cd6c2efd              # double 5.1702529999999998
	.quad	0x4014055582129457              # double 5.0052089999999998
	.quad	0x402003b0a2ca9ac3              # double 8.0072069999999993
	.quad	0x401f06f08cc575c0              # double 7.7567769999999996
	.quad	0x401bce96c3fc43b3              # double 6.9517470000000001
	.quad	0x3ff894e09784ec63              # double 1.5363469999999999
	.quad	0x3ff8338c5436b8fa              # double 1.5125850000000001
	.quad	0x3fc5a615a8deb0fb              # double 0.169131
	.quad	0x40236a7179bfdf7f              # double 9.7078970000000008
	.quad	0x401e71bde82d7b63              # double 7.6110759999999997
	.quad	0x4020d5d249e44fa0              # double 8.4176199999999994
	.quad	0x3fe4a8240b780347              # double 0.64552500000000002
	.quad	0x40004b76f6d76252              # double 2.036848
	.quad	0x4022a3343fa2ad3f              # double 9.3187580000000008
	.quad	0x401565275ee99a63              # double 5.3487830000000001
	.quad	0x4016425dd095af29              # double 5.5648109999999997
	.quad	0x401effd694ccab3f              # double 7.7498420000000001
	.quad	0x3ff0533d29563a9f              # double 1.020322
	.quad	0x4001df969e3c9689              # double 2.2341739999999999
	.quad	0x400604c059210386              # double 2.7523200000000001
	.quad	0x4005160d887ebf23              # double 2.6357680000000001
	.quad	0x40167f4623d0bfa1              # double 5.6242910000000004
	.quad	0x40222b37867f0aa2              # double 9.0844079999999998
	.quad	0x402135e093532e7b              # double 8.6052289999999996
	.quad	0x4021ed818c5c9a35              # double 8.9638790000000004
	.quad	0x4001488377186552              # double 2.1604070000000002
	.quad	0x401413cff64cf8d7              # double 5.0193479999999999
	.quad	0x4018604d551d68c7              # double 6.0940450000000004
	.quad	0x40217b508f648c72              # double 8.7408490000000008
	.quad	0x3feb21d755bccaf7              # double 0.847881
	.quad	0x3fe8b5c39bcba301              # double 0.77218799999999999
	.quad	0x3fda7891e215336e              # double 0.413609
	.quad	0x40114f1a1986b9c3              # double 4.327248
	.quad	0x4022ff7f27fe4bcb              # double 9.4990170000000002
	.quad	0x402046aa087ca644              # double 8.1380160000000003
	.quad	0x40054639d5e4a383              # double 2.6592899999999999
	.quad	0x4014b0379314445b              # double 5.1720870000000003
	.quad	0x40204e8f8e7ddca5              # double 8.1534390000000005
	.quad	0x4013a78897e99631              # double 4.9136069999999998
	.quad	0x3ff3c20c49ba5e35              # double 1.2348749999999999
	.quad	0x40011bd1ed9dfdac              # double 2.1385839999999998
	.quad	0x3fb7af8594291750              # double 0.092521999999999993
	.quad	0x3ff5becedd484513              # double 1.359084
	.quad	0x3fc412f09d8c6d61              # double 0.156828
	.quad	0x4005c4cb5bb384fd              # double 2.7210909999999999
	.quad	0x40049a63736cdf26              # double 2.5753849999999998
	.quad	0x40107ced916872b0              # double 4.1219999999999999
	.quad	0x3fd07179bfdf7e80              # double 0.25692599999999999
	.quad	0x3fd126c7eae5bc88              # double 0.26799200000000001
	.quad	0x400880828c36da88              # double 3.0627490000000002
	.quad	0x401a511d798d8a98              # double 6.5792140000000003
	.quad	0x400e296a26e54717              # double 3.770222
	.quad	0x3ff3b45e0b4e11dc              # double 1.231535
	.quad	0x4018eccc89b0ee4a              # double 6.231249
	.quad	0x4011b3da2f8bdec6              # double 4.425637
	.quad	0x3ff108b652370479              # double 1.064627
	.quad	0x4021218c7e28240b              # double 8.5655249999999992
	.quad	0x401a471865519371              # double 6.5694290000000004
	.quad	0x401e439b024f6599              # double 7.5660210000000001
	.quad	0x400371bcdbbe0158              # double 2.430536
	.quad	0x401de074a771c971              # double 7.469195
	.quad	0x401e98dc55000c95              # double 7.6492779999999997
	.quad	0x401eb1fd9ba1b196              # double 7.6738189999999999
	.quad	0x40033d67ba237cdd              # double 2.4049830000000001
	.quad	0x4022cb7bf1e8e608              # double 9.3974299999999999
	.quad	0x401d3f10a99b6f5d              # double 7.3115870000000003
	.quad	0x40162620ab713272              # double 5.5372339999999998
	.quad	0x40013bb2788db057              # double 2.1541489999999999
	.quad	0x40226872f33ca31e              # double 9.2040019999999991
	.quad	0x401ad7342edbb59e              # double 6.7101600000000001
	.quad	0x4007448387df5cf2              # double 2.9084539999999999
	.quad	0x401bbaf74cd3176a              # double 6.9325840000000003
	.quad	0x3fb7780346dc5d64              # double 0.091675000000000006
	.quad	0x4019a8893b7d8490              # double 6.4145859999999999
	.quad	0x40176164c729f59d              # double 5.8451110000000002
	.quad	0x4020e346bacf7447              # double 8.443899
	.quad	0x401c94855da27286              # double 7.1450399999999998
	.quad	0x4013234df04ddb55              # double 4.7844769999999999
	.quad	0x401fa827fa1a0cf2              # double 7.9142150000000004
	.quad	0x40196163baba7b91              # double 6.3451069999999996
	.quad	0x3ff929435ac8a372              # double 1.5725739999999999
	.quad	0x3fccbc72e275ab7e              # double 0.22450100000000001
	.quad	0x401d819a847b2464              # double 7.3765660000000004
	.quad	0x4023f1e646f15619              # double 9.9724599999999998
	.quad	0x400cd6238da3c212              # double 3.6045600000000002
	.quad	0x4018568c692f6e83              # double 6.0845200000000004
	.quad	0x4009e4e8b7e4de3c              # double 3.2367720000000002
	.quad	0x40101b28522ea0fd              # double 4.0265209999999998
	.quad	0x3ffe4a59c065b63d              # double 1.8931519999999999
	.quad	0x4021b44ae85b9e8c              # double 8.8521339999999995
	.quad	0x4021604d551d68c7              # double 8.6880900000000008
	.quad	0x401d2c7cd898b2ea              # double 7.2934450000000002
	.quad	0x4012fbc59b8023a7              # double 4.7458710000000002
	.quad	0x401d5a98244e93e2              # double 7.3384710000000002
	.quad	0x4018a799a1fd156a              # double 6.163672
	.quad	0x3ff0c2d38476f2a6              # double 1.0475650000000001
	.quad	0x401c3c6d612c6ac2              # double 7.0590109999999999
	.quad	0x4016ca365cb35f3d              # double 5.6974729999999996
	.quad	0x4021a242f1ed17c6              # double 8.8169170000000001
	.quad	0x401dbe86833c6003              # double 7.4360600000000003
	.quad	0x400fde6e653868fd              # double 3.983609
	.quad	0x402042ac322291fb              # double 8.1302199999999996
	.quad	0x401e18e53eb399f6              # double 7.5243120000000001
	.quad	0x40227dc5931ca7d6              # double 9.2456479999999992
	.quad	0x401bb9b5e95b78cd              # double 6.9313580000000004
	.quad	0x40159d60a6330510              # double 5.403689
	.quad	0x402304c5b8dc5500              # double 9.5093209999999999
	.quad	0x3fe495bff04577d9              # double 0.64327999999999996
	.quad	0x3fe4d5714b9cb685              # double 0.65105500000000005
	.quad	0x4011ef9f44d44567              # double 4.4840059999999999
	.quad	0x3fef0db8bac710cb              # double 0.97042499999999998
	.quad	0x3ffd813b9f127f5f              # double 1.8440510000000001
	.quad	0x401e688f861a60d4              # double 7.6021099999999997
	.quad	0x400573a8a3f8982d              # double 2.6814740000000001
	.quad	0x3ffe2e1bd1ed9dfe              # double 1.8862570000000001
	.quad	0x4019b3c925785f8d              # double 6.4255719999999998
	.quad	0x3ffa5f53825e13b2              # double 1.6482730000000001
	.quad	0x3fd3f9ebe9c88616              # double 0.31212899999999999
	.quad	0x3fdffd36f7e3d1cc              # double 0.49983
	.quad	0x3ffa7589efd86a90              # double 1.6536960000000001
	.quad	0x400cdf76a2f48c2e              # double 3.6091129999999998
	.quad	0x4021b984c271fff8              # double 8.8623410000000007
	.quad	0x40126d7a99fa11a9              # double 4.6069129999999996
	.quad	0x401369fe43675ddd              # double 4.8535089999999999
	.quad	0x4022250b73d188f4              # double 9.0723529999999996
	.quad	0x4017a28283d35eb7              # double 5.9087009999999998
	.quad	0x400117f51efb6dca              # double 2.136698
	.quad	0x3feb26b723ee1bd2              # double 0.84847600000000001
	.quad	0x4017cba5e353f7cf              # double 5.9488750000000001
	.quad	0x400e0abe6a337a81              # double 3.7552460000000001
	.quad	0x3ff28283d35eb745              # double 1.1568639999999999
	.quad	0x4006c3b7952d234f              # double 2.8455650000000001
	.quad	0x3ffd3c6a7ef9db23              # double 1.82725
	.quad	0x40032e219652bd3c              # double 2.3975249999999999
	.quad	0x40207359ddc1e796              # double 8.2252949999999991
	.quad	0x3ff02706d5065732              # double 1.009528
	.quad	0x4021b3f487fcb924              # double 8.8514750000000006
	.quad	0x400b0123810e8859              # double 3.375556
	.quad	0x4022792d55a3a084              # double 9.2366740000000007
	.quad	0x402331b10fd7e458              # double 9.5970539999999999
	.quad	0x4022cf1886df82b2              # double 9.4044840000000001
	.quad	0x401b8c5004fb1184              # double 6.8870240000000003
	.quad	0x401608eb0318b934              # double 5.5087089999999996
	.quad	0x402153ef284167a9              # double 8.6639339999999994
	.quad	0x40237a35d67ba238              # double 9.7386920000000003
	.quad	0x4023de325d4a5df2              # double 9.9339779999999998
	.quad	0x4021a05a0be51090              # double 8.8131869999999992
	.quad	0x40225445aa2e3c53              # double 9.1645939999999992
	.quad	0x401ebb1290257c91              # double 7.6826879999999997
	.quad	0x4008bd57ff9b5632              # double 3.0924529999999999
	.quad	0x3ff427ea5f84cad5              # double 1.2597449999999999
	.quad	0x401244f227d028a2              # double 4.5673300000000001
	.quad	0x4013068d32830a0b              # double 4.7563979999999999
	.quad	0x401e15df6555c52e              # double 7.5213599999999996
	.quad	0x3fdcfee2c98e53eb              # double 0.45305699999999999
	.quad	0x401b367dfe32a066              # double 6.8032149999999998
	.quad	0x40001c39bcba3012              # double 2.013782
	.quad	0x401225b70691ea79              # double 4.5368310000000003
	.quad	0x4015fe21d96e9bbf              # double 5.498176
	.quad	0x400fdfd82773e250              # double 3.984299
	.quad	0x4019006b7aa25d8d              # double 6.2504099999999996
	.quad	0x401c24a1272c94b4              # double 7.0357710000000004
	.quad	0x4021200713f077cd              # double 8.5625540000000004
	.quad	0x401f8933e35c5b4b              # double 7.8839870000000003
	.quad	0x400880afa2f05a71              # double 3.0628350000000002
	.quad	0x3ffffb82c2bd7f52              # double 1.998904
	.quad	0x40225113c68661ae              # double 9.1583539999999992
	.quad	0x40017d627bf61aa4              # double 2.186223
	.quad	0x4012073d5bab2181              # double 4.5070699999999997
	.quad	0x40195c99f1ae2da5              # double 6.3404309999999997
	.quad	0x40203491d14e3bcd              # double 8.1026749999999996
	.quad	0x40172f6512a94ff0              # double 5.796284
	.quad	0x401d2bad3a604e1e              # double 7.2926529999999996
	.quad	0x4001feca25529fe0              # double 2.249409
	.quad	0x401890999dcb5782              # double 6.1412110000000002
	.quad	0x402154382a12f901              # double 8.6644909999999999
	.quad	0x401ab39b024f6599              # double 6.6753960000000001
	.quad	0x3fce55e28aa43351              # double 0.23699600000000001
	.quad	0x4022fae6a76965f5              # double 9.4900409999999997
	.quad	0x3fe665f9591cd1c8              # double 0.69994800000000001
	.quad	0x3fe5cf722e1ac57e              # double 0.68157299999999998
	.quad	0x3fb8282c6ef3d3a2              # double 0.094363000000000002
	.quad	0x40186b352a843809              # double 6.1046950000000004
	.quad	0x40171a5f84cad57c              # double 5.7757550000000002
	.quad	0x40124000c9539b89              # double 4.5625030000000004
	.quad	0x40236420b3d4ae43              # double 9.6955620000000006
	.quad	0x40109a843808850a              # double 4.1508950000000002
	.quad	0x401e73aabcd78c43              # double 7.6129559999999996
	.quad	0x40173348f53c579f              # double 5.8000829999999999
	.quad	0x3fecd188f42fe825              # double 0.90057799999999999
	.quad	0x4009c79463cfb331              # double 3.222451
	.quad	0x401568f68be2f7b1              # double 5.3525029999999996
	.quad	0x4012150870110a13              # double 4.5205399999999996
	.quad	0x4013104c8bc9cd3e              # double 4.765917
	.quad	0x3ff8e7a95c853c15              # double 1.5565580000000001
	.quad	0x4011b225b749adc9              # double 4.423972
	.quad	0x401b14de7ea5f84d              # double 6.7703800000000003
	.quad	0x4013366559f6ec5b              # double 4.803121
	.quad	0x3ff45e01de269164              # double 1.2729509999999999
	.quad	0x40147077036c9c0b              # double 5.1098290000000004
	.quad	0x3ff24f97edc7ef17              # double 1.1444319999999999
	.quad	0x40126cc100e6afcd              # double 4.6062050000000001
	.quad	0x4012364a59c065b6              # double 4.5530179999999998
	.quad	0x401a9be878fabda1              # double 6.6522540000000001
	.quad	0x401efe53a81dc0db              # double 7.7483659999999998
	.quad	0x3ffd064fdb09a672              # double 1.814041
	.quad	0x401c7395c4220360              # double 7.112876
	.quad	0x4022a841461b6d44              # double 9.3286230000000003
	.quad	0x4010ea858793dd98              # double 4.229025
	.quad	0x401d9454de7ea5f8              # double 7.3948549999999997
	.quad	0x40060e48626f60e1              # double 2.756974
	.quad	0x3fe9cdb9c7368ad7              # double 0.80636300000000005
	.quad	0x3fe5d4fbdad7518b              # double 0.68224899999999999
	.quad	0x4009bc3ac929aa1d              # double 3.2169089999999998
	.quad	0x401b9bdc69f8c21e              # double 6.9022079999999999
	.quad	0x401dc43d03968d76              # double 7.4416390000000003
	.quad	0x401e9d46f587d6f9              # double 7.6535909999999995
	.quad	0x401fb31593e5fb72              # double 7.924887
	.quad	0x400364e9c4545847              # double 2.424274
	.quad	0x4023aa04d12018a4              # double 9.8320679999999995
	.quad	0x401c0ac1d29dc726              # double 7.0105050000000002
	.quad	0x401c1486ad2dcb14              # double 7.0200449999999996
	.quad	0x4008d083558a7610              # double 3.1018129999999999
	.quad	0x40225a3f24d8fd5d              # double 9.1762630000000005
	.quad	0x401f03f748a15981              # double 7.7538729999999995
	.quad	0x4003687b139c94f7              # double 2.4260160000000002
	.quad	0x401432c0a4a05dd9              # double 5.049563
	.quad	0x402363afd976ff3b              # double 9.6947010000000002
	.quad	0x3fec233df2a9d628              # double 0.87930200000000003
	.quad	0x402138b524399b2c              # double 8.6107569999999995
	.quad	0x401073fa6defc7a4              # double 4.1132600000000004
	.quad	0x401a6327674d1633              # double 6.5968299999999997
	.quad	0x3fe80c64fdb09a67              # double 0.75151299999999999
	.quad	0x40160de225fa658c              # double 5.5135579999999997
	.quad	0x401549b024f6598e              # double 5.3219609999999999
	.quad	0x3ffc5b5c7cd898b3              # double 1.772305
	.quad	0x3feb224cc6822ff1              # double 0.84793700000000005
	.quad	0x400175ac03ff6901              # double 2.1824569999999999
	.quad	0x40140e04c0592104              # double 5.0136900000000004
	.quad	0x3ff3e9a5ebb7739f              # double 1.244543
	.quad	0x400494e3369b9d80              # double 2.5726990000000001
	.quad	0x3ffd2fa7221858bc              # double 1.8241339999999999
	.quad	0x3ff481f42bb66730              # double 1.2817270000000001
	.quad	0x4010838151a43782              # double 4.1284229999999997
	.quad	0x40238910a137f38c              # double 9.7677049999999994
	.quad	0x40093463cfb3311a              # double 3.1505809999999999
	.quad	0x3fd94e69f05ea24d              # double 0.39541100000000001
	.quad	0x4021132fcac8e68e              # double 8.5374739999999996
	.quad	0x4020deda66128390              # double 8.4352599999999995
	.quad	0x400c509528f190d1              # double 3.5393469999999998
	.quad	0x3ff7439799e518f4              # double 1.454002
	.quad	0x4014c7c6fbd273d6              # double 5.1950950000000002
	.quad	0x40184ffef39085f5              # double 6.0781210000000003
	.quad	0x40171faa8a82a561              # double 5.7809239999999997
	.quad	0x401592a77a2cecc8              # double 5.3932169999999999
	.quad	0x400aeb54e2b063e0              # double 3.3649079999999998
	.quad	0x3fe61eb6390c9108              # double 0.691249
	.quad	0x4022f2f72b452828              # double 9.4745419999999995
	.quad	0x400c4d49949e8816              # double 3.537738
	.quad	0x401d3623076c050c              # double 7.3028680000000001
	.quad	0x401ebeab7995ee13              # double 7.6862009999999996
	.quad	0x3fdeff1950331e3a              # double 0.48431999999999997
	.quad	0x400194ca925fe975              # double 2.1976520000000002
	.quad	0x4017acba732df506              # double 5.9186800000000002
	.quad	0x40062f92af9a8cdf              # double 2.7732290000000002
	.quad	0x401a320791c4b902              # double 6.5488569999999999
	.quad	0x401e5271fff79c84              # double 7.5805129999999998
	.quad	0x40121181e03f7058              # double 4.5170969999999997
	.quad	0x401becdd50a88f00              # double 6.9813130000000001
	.quad	0x40144af6837f7be1              # double 5.0732059999999999
	.quad	0x401becec84f8f8a5              # double 6.9813710000000002
	.quad	0x40177a91105e1c15              # double 5.869694
	.quad	0x4022ef88fc9363f5              # double 9.4678419999999992
	.quad	0x3ff82525892684cf              # double 1.509069
	.quad	0x4014324894c447c3              # double 5.049105
	.quad	0x402330ce703afb7f              # double 9.5953250000000007
	.quad	0x402342975afaf859              # double 9.6300609999999995
	.quad	0x401c20ce4ead0c3d              # double 7.0320369999999999
	.quad	0x401add3996fa82e8              # double 6.7160399999999996
	.quad	0x40215941c8216c61              # double 8.6743299999999994
	.quad	0x3fb700bcbe61cfff              # double 0.089855000000000004
	.quad	0x401184d338f79852              # double 4.3797119999999996
	.quad	0x40062d7d7c2ca149              # double 2.7722120000000001
	.quad	0x402292077036c9c1              # double 9.2852130000000006
	.quad	0x3fead7d3910c2c5e              # double 0.83884599999999998
	.quad	0x4003c4ed6fda836f              # double 2.4711560000000001
	.quad	0x4013e8759253543b              # double 4.9770110000000001
	.quad	0x401b14a276b7ed42              # double 6.7701510000000003
	.quad	0x400f8e3b46fdeb53              # double 3.9444490000000001
	.quad	0x4021736b8f9b1316              # double 8.7254299999999994
	.quad	0x3ff576965f5275ef              # double 1.3414520000000001
	.quad	0x4012901e68a0d34a              # double 4.6407410000000002
	.quad	0x40122a8262456f76              # double 4.5415130000000001
	.quad	0x4006eb641700cd85              # double 2.8649369999999998
	.quad	0x402330f6ad70e6f3              # double 9.5956320000000001
	.quad	0x4020e3f26f1dc50d              # double 8.4452090000000002
	.quad	0x401c0d6adf71eaff              # double 7.0131030000000001
	.quad	0x40134ad7518b0d0f              # double 4.8230870000000001
	.quad	0x401974067cf1c326              # double 6.3633059999999997
	.quad	0x400dd43e10060781              # double 3.728634
	.quad	0x40236c204f2ae07e              # double 9.7111839999999994
	.quad	0x40204b1f687b139d              # double 8.1467240000000007
	.quad	0x4011720296b3354c              # double 4.3613379999999999
	.quad	0x3ff60940bbb1f256              # double 1.377259
	.quad	0x3ff2d5b035bd512f              # double 1.17717
	.quad	0x4001cf944241c3f0              # double 2.2263570000000001
	.quad	0x4022026ce358298d              # double 9.0047370000000004
	.quad	0x401061886df82b1f              # double 4.0952469999999996
	.quad	0x4012e8f08461f9f0              # double 4.7274799999999999
	.quad	0x3ffcf6c58eeae9ee              # double 1.8102469999999999
	.quad	0x40045dece5710881              # double 2.5458620000000001
	.quad	0x400981711947cfa2              # double 3.1882039999999998
	.quad	0x401401c75818c5ca              # double 5.0017370000000003
	.quad	0x3ff5d8f1d3ed527e              # double 1.3654649999999999
	.quad	0x4006d6e264e48627              # double 2.854924
	.quad	0x402083fb15b573eb              # double 8.2577750000000005
	.quad	0x4010f6b69db65ecc              # double 4.2409309999999998
	.quad	0x3fff950331e3a7db              # double 1.9738800000000001
	.quad	0x40111e5aff2a172b              # double 4.2796440000000002
	.quad	0x4012d82b62845996              # double 4.7111029999999996
	.quad	0x40039eb4202d9cf1              # double 2.4524919999999999
	.quad	0x4008b14ec204f2ae              # double 3.086576
	.quad	0x3ff2c0ebedfa43fe              # double 1.1720999999999999
	.quad	0x40208d510d38cda7              # double 8.2760090000000002
	.quad	0x3ff7cf5b1c864884              # double 1.488124
	.quad	0x401c2e33acd5b680              # double 7.0451189999999997
	.quad	0x40112458cd20afa3              # double 4.2854950000000001
	.quad	0x3fffa049ecb31c22              # double 1.9766330000000001
	.quad	0x40140c1b97353b4b              # double 5.0118239999999998
	.quad	0x4023f1552e2fbe34              # double 9.9713530000000005
	.quad	0x40147a60d4562e0a              # double 5.11951
	.quad	0x40113e74299d883c              # double 4.3109900000000003
	.quad	0x4015c286f8ad2568              # double 5.4399680000000004
	.quad	0x3ff6c32fcac8e68e              # double 1.4226529999999999
	.quad	0x3fead4f15e7c8d19              # double 0.83849399999999996
	.quad	0x4019ec864883fd50              # double 6.4809809999999999
	.quad	0x401a0203e63e8dda              # double 6.5019679999999997
	.quad	0x400c628fe260b2c8              # double 3.5481259999999999
	.quad	0x4019f8151a437825              # double 6.4922680000000001
	.quad	0x400974df8b157258              # double 3.182067
	.quad	0x400bddb5525cc426              # double 3.4832559999999999
	.quad	0x401c7add9c27e953              # double 7.1199859999999999
	.quad	0x4023c75dfeb8d823              # double 9.8893889999999995
	.quad	0x40215515ad106ee3              # double 8.6661809999999999
	.quad	0x40057d9d3458cd21              # double 2.6863350000000001
	.quad	0x3fe8d33d29563a9f              # double 0.77578599999999998
	.quad	0x40237a8f190d1740              # double 9.7393730000000005
	.quad	0x400c62ee41919ac8              # double 3.5483060000000002
	.quad	0x4022cad256798959              # double 9.3961360000000002
	.quad	0x401a5b7c7820a30e              # double 6.5893420000000003
	.quad	0x400833879c4113c7              # double 3.0251610000000002
	.quad	0x40158c8cd63cb817              # double 5.3872559999999998
	.quad	0x40110aad1d041cc5              # double 4.2604259999999998
	.quad	0x40237ad38476f2a6              # double 9.7398950000000006
	.quad	0x401560203e63e8de              # double 5.3438730000000003
	.quad	0x40016b96f21f6cad              # double 2.1775340000000001
	.quad	0x402370f12c27a637              # double 9.7205899999999996
	.quad	0x40172f2cf95d4e90              # double 5.7960700000000003
	.quad	0x4016bf722e1ac57e              # double 5.6869589999999999
	.quad	0x400cb7d73c925786              # double 3.589766
	.quad	0x401294d594f26aec              # double 4.645346
	.quad	0x40152f9a06a6e32e              # double 5.2964859999999998
	.quad	0x40152ed45e9185cf              # double 5.2957320000000001
	.quad	0x3fede512a94ff002              # double 0.93421299999999996
	.quad	0x401b3820e6299525              # double 6.8048130000000002
	.quad	0x401d9af922962cfe              # double 7.4013410000000004
	.quad	0x40234de76427c7c5              # double 9.6521559999999997
	.quad	0x40179c382a12f901              # double 5.902558
	.quad	0x400ee9c347e8ccde              # double 3.8641420000000002
	.quad	0x4020989917939a7c              # double 8.2980429999999998
	.quad	0x401b5d4280ae1049              # double 6.8410739999999999
	.quad	0x4023ae48c7192ea5              # double 9.8403989999999996
	.quad	0x4014c84dfce3150e              # double 5.1956100000000003
	.quad	0x401aa07cc7d1bb49              # double 6.6567259999999999
	.quad	0x400f2b09e98dcdb3              # double 3.8960149999999998
	.quad	0x400654e0114d2f5e              # double 2.7914430000000001
	.quad	0x4004a886162f166e              # double 2.582287
	.quad	0x3febcda9003eea21              # double 0.86885500000000004
	.quad	0x400db3b5393250b5              # double 3.7127479999999999
	.quad	0x4010eab3edd8b60f              # double 4.2292019999999999
	.quad	0x4018f96aad1d041d              # double 6.2435710000000002
	.quad	0x3ff9885d31337eb3              # double 1.5957920000000001
	.quad	0x3fba33df2a9d627c              # double 0.102354
	.quad	0x40070f2064239607              # double 2.8823859999999999
	.quad	0x40203b75ea67e847              # double 8.1161340000000006
	.quad	0x4006608d8ec95bff              # double 2.797145
	.quad	0x3ffcc9bf9c62a1b6              # double 1.799255
	.quad	0x3ff1f648c7192ea5              # double 1.122628
	.quad	0x4018fcf4623d0bfa              # double 6.247026
	.quad	0x401ca4445aa2e3c5              # double 7.1604169999999998
	.quad	0x401c88f9b13165d4              # double 7.1337650000000004
	.quad	0x3ffde0817fc7607c              # double 1.8673109999999999
	.quad	0x400224bc27631b58              # double 2.2679369999999999
	.quad	0x4023f558c8eef1bb              # double 9.9791930000000004
	.quad	0x40193972cd7cf5f5              # double 6.3061020000000001
	.quad	0x4019c10e02214270              # double 6.4385300000000001
	.quad	0x400697b8d3f1843c              # double 2.8240829999999999
	.quad	0x3fb1a47a9e2bcf92              # double 0.068916000000000005
	.quad	0x4022ae1b2a27f1b7              # double 9.3400510000000008
	.quad	0x401066290eed02cd              # double 4.0997659999999998
	.quad	0x3ff512641b328b6e              # double 1.3169900000000001
	.quad	0x401e0e789e774eec              # double 7.514132
	.quad	0x3ff31a9eb2074ea9              # double 1.193999
	.quad	0x40082d79d0a67621              # double 3.022205
	.quad	0x400896dfc5cdd50b              # double 3.0736690000000002
	.quad	0x3ffea7ab7564302b              # double 1.9159349999999999
	.quad	0x401a8dfe32a0663c              # double 6.6386649999999996
	.quad	0x3fe2f3c0c1fc8f32              # double 0.59225499999999998
	.quad	0x401870fe047d3d43              # double 6.1103440000000004
	.quad	0x4000143b70ef5665              # double 2.0098790000000002
	.quad	0x402289835158b828              # double 9.26858
	.quad	0x402294dfefbf401c              # double 9.2907709999999994
	.quad	0x3fdfe39f77292c49              # double 0.49826799999999999
	.quad	0x40117a11233df2aa              # double 4.3692060000000001
	.quad	0x400e74751ce28ed6              # double 3.806864
	.quad	0x3ffd09d7ba6698bb              # double 1.8149029999999999
	.quad	0x401e5f255f3519bd              # double 7.5929159999999997
	.quad	0x3fcbf1f9acffa7eb              # double 0.21832199999999999
	.quad	0x401514302b40f66a              # double 5.2697149999999997
	.quad	0x3fc33fc0096feb4a              # double 0.15038299999999999
	.quad	0x40012ec7c957cd46              # double 2.1478419999999998
	.quad	0x402195adb8348f54              # double 8.7923410000000004
	.quad	0x401f05f0f5a1016d              # double 7.755802
	.quad	0x400e0325d4a5df22              # double 3.7515369999999999
	.quad	0x4023cbf727136a40              # double 9.8983699999999998
	.quad	0x4013bec918e325d5              # double 4.9363140000000003
	.quad	0x4008b2fe3f359ff5              # double 3.087399
	.quad	0x40142840181e03f7              # double 5.039307
	.quad	0x3ff6c200c0f01fb8              # double 1.422364
	.quad	0x401d931c64ba94bc              # double 7.3936630000000001
	.quad	0x3fb7e1975f2cb641              # double 0.093285999999999994
	.quad	0x40043ddd2ae8e1d6              # double 2.5302069999999999
	.quad	0x3fcf898b2e9ccb7d              # double 0.24638499999999999
	.quad	0x400d180e496ededb              # double 3.636746
	.quad	0x402206878fabda0e              # double 9.012753
	.quad	0x3fe7ca44c7b02d5a              # double 0.74344100000000002
	.quad	0x40232ba8a3f8982d              # double 9.5852710000000005
	.quad	0x4021c72064239607              # double 8.8889189999999996
	.quad	0x3fdb720c8cd63cb8              # double 0.42883599999999999
	.quad	0x4005b7214f0520d1              # double 2.7144189999999999
	.quad	0x4015b8b3700474da              # double 5.4303720000000002
	.quad	0x401833bc903ea705              # double 6.0505240000000002
	.quad	0x4016ec6bce8533b1              # double 5.73088
	.quad	0x4014426bb55ac040              # double 5.064864
	.quad	0x4021d3fca85caafc              # double 8.9140370000000004
	.quad	0x401da2495e17e34c              # double 7.4084830000000004
	.quad	0x40153ab2e1693c04              # double 5.3073230000000002
	.quad	0x4023403afb7e9100              # double 9.6254500000000007
	.quad	0x3ff9e7f8012dfd69              # double 1.6191329999999999
	.quad	0x3ffd1a2f8bdec5f4              # double 1.8188930000000001
	.quad	0x401d4dc486ad2dcb              # double 7.3259449999999999
	.quad	0x40122ce8533b1077              # double 4.5438549999999998
	.quad	0x401a6090b417ca21              # double 6.5943019999999999
	.quad	0x40129e03f705857b              # double 4.654312
	.quad	0x4021ae2bae03b3ea              # double 8.8401770000000006
	.quad	0x3fc93c46d82ba5a0              # double 0.19715199999999999
	.quad	0x40222e264e48626f              # double 9.0901359999999993
	.quad	0x4022d87485e3da30              # double 9.4227640000000008
	.quad	0x401bae3b46fdeb53              # double 6.9201480000000002
	.quad	0x3ff2e3beec39799e              # double 1.1806019999999999
	.quad	0x3fc4bffcdab191de              # double 0.162109
	.quad	0x401c8213e3e29308              # double 7.1270290000000003
	.quad	0x401213f39d1b2e5a              # double 4.5194840000000003
	.quad	0x40045a3fcc9ea9a4              # double 2.5440670000000001
	.quad	0x3fce94dd72367e41              # double 0.23891799999999999
	.quad	0x3fd7b2d905c03361              # double 0.37029099999999998
	.quad	0x400764d8fd5cb791              # double 2.924242
	.quad	0x3fe081a36e2eb1c4              # double 0.51582499999999998
	.quad	0x4015f92d98bf7f06              # double 5.4933379999999996
	.quad	0x401af3a9b0681238              # double 6.7379519999999999
	.quad	0x4010e450268900c5              # double 4.2229619999999999
	.quad	0x40229c65a57646ae              # double 9.3054629999999996
	.quad	0x40160e11dbca9692              # double 5.5137400000000003
	.quad	0x40134251c193b3a7              # double 4.8147650000000004
	.quad	0x3fbfb05faebc408e              # double 0.12378500000000001
	.quad	0x4005342a23bff8a9              # double 2.650471
	.quad	0x4018790b84988095              # double 6.1182080000000001
	.quad	0x4020b8ee06d93815              # double 8.3611909999999998
	.quad	0x3ffb9e13b18dac26              # double 1.7260930000000001
	.quad	0x4013042528ae74f3              # double 4.7540480000000001
	.quad	0x4017bc08b75ea67f              # double 5.9336270000000004
	.quad	0x401046d4801f7510              # double 4.0691699999999997
	.quad	0x3ffa2467be553ac5              # double 1.633888
	.quad	0x4008a66ec9e236c1              # double 3.0812659999999998
	.quad	0x400361e3eaf6837f              # double 2.4227979999999998
	.quad	0x401e3809d495182b              # double 7.5547250000000003
	.quad	0x402231fc08fa7a85              # double 9.097626
	.quad	0x401c2e61cffeb075              # double 7.0452950000000003
	.quad	0x401308c08b75ea68              # double 4.7585470000000001
	.quad	0x4011826809d49518              # double 4.3773499999999999
	.quad	0x400b65ecc3e3193f              # double 3.4247679999999998
	.quad	0x3fedc0a6b93ccd10              # double 0.92976700000000001
	.quad	0x400128c5004fb118              # double 2.1449069999999999
	.quad	0x4006d5d894812be5              # double 2.8544170000000002
	.quad	0x4021f3a0a5269596              # double 8.975835
	.quad	0x401ba563a9f383f1              # double 6.9115130000000002
	.quad	0x401c786013660e52              # double 7.1175540000000002
	.quad	0x400c19207d4e0978              # double 3.5122689999999999
	.quad	0x401cb450efdc9c4e              # double 7.1760900000000003
	.quad	0x4017207852f7f499              # double 5.7817090000000002
	.quad	0x3feb951611ba3ca7              # double 0.86194899999999997
	.quad	0x401b4a30db6a1e82              # double 6.8224520000000002
	.quad	0x40170add9c27e953              # double 5.7606109999999999
	.quad	0x4013f645e4e69f06              # double 4.9905010000000001
	.quad	0x3fd314877681669d              # double 0.298128
	.quad	0x4007ec9107faa045              # double 2.9905110000000001
	.quad	0x4000f7a13c254a3c              # double 2.1209129999999998
	.quad	0x401692efd438d1d9              # double 5.6434930000000003
	.quad	0x400350efdc9c4da9              # double 2.41452
	.quad	0x3ff2299524bfd2e9              # double 1.1351519999999999
	.quad	0x4021fa3e9ea14057              # double 8.9887589999999999
	.quad	0x3fef7c3f811f4f51              # double 0.98391700000000004
	.quad	0x3ff470068db8bac7              # double 1.27735
	.quad	0x3fe1144cbe1eb420              # double 0.53372799999999998
	.quad	0x4023f00f12c27a63              # double 9.9688649999999991
	.quad	0x401778216c61522a              # double 5.8673149999999996
	.quad	0x4013491e646f1562              # double 4.8214050000000004
	.quad	0x4013206fef7c243e              # double 4.7816770000000002
	.quad	0x4011ab0f27bb2fec              # double 4.4170499999999997
	.quad	0x401cc770bd017daf              # double 7.1947660000000004
	.quad	0x401a9d028a1dfb94              # double 6.6533300000000004
	.quad	0x40216e46cfc829d0              # double 8.7153840000000002
	.quad	0x40199e9e5e247885              # double 6.4049009999999997
	.quad	0x3ff632830a0b1bbd              # double 1.387332
	.quad	0x401024db163baba8              # double 4.0359920000000002
	.quad	0x402180eae18ac9f3              # double 8.751792
	.quad	0x3ff2f0a4e379b77c              # double 1.183751
	.quad	0x401a89fb6134ce3e              # double 6.6347480000000001
	.quad	0x3ff64ef99806f263              # double 1.3942810000000001
	.quad	0x402371f10667f90e              # double 9.7225420000000007
	.quad	0x401732ccf6be37df              # double 5.7996100000000004
	.quad	0x400a8c3b927d45a6              # double 3.318473
	.quad	0x3fda2938de6ddf01              # double 0.40876600000000002
	.quad	0x402396a9e6eeb702              # double 9.7942649999999993
	.quad	0x3ff4e5375c8d9f90              # double 1.3059609999999999
	.quad	0x4010065e02ea960b              # double 4.0062179999999996
	.quad	0x4001f7635e74299e              # double 2.2457950000000002
	.quad	0x4015d5d52c16df40              # double 5.4588210000000004
	.quad	0x400c65e56cd6c2f0              # double 3.5497540000000001
	.quad	0x40195975f2cb6417              # double 6.337364
	.quad	0x401668012dfd694d              # double 5.6015670000000002
	.quad	0x4005f1e29b6b2af1              # double 2.7431079999999999
	.quad	0x4010936d655e28aa              # double 4.1439719999999998
	.quad	0x40218e0f1b25f634              # double 8.7774590000000003
	.quad	0x401134898f605ab4              # double 4.3013060000000003
	.quad	0x40040413db7f1737              # double 2.5019909999999999
	.quad	0x3ff8ffb15b573eab              # double 1.562425
	.quad	0x3ffc16a26e547171              # double 1.7555259999999999
	.quad	0x401b4065f9591cd2              # double 6.8128890000000002
	.quad	0x3ff174c7f3493858              # double 1.091011
	.quad	0x4013c36d655e28aa              # double 4.9408469999999998
	.quad	0x401947ffde7210bf              # double 6.3203120000000004
	.quad	0x3fec3c89f40a2878              # double 0.88239000000000001
	.quad	0x401f3b76709fa54c              # double 7.8080689999999997
	.quad	0x400c99a5a89b951c              # double 3.5750229999999998
	.quad	0x4003c8a04d12018a              # double 2.4729619999999999
	.quad	0x400b1fa658c4bd34              # double 3.3904540000000001
	.quad	0x40225641700cd856              # double 9.1684680000000007
	.quad	0x401b13eee5258927              # double 6.7694660000000004
	.quad	0x4019ac53f39d1b2e              # double 6.4182889999999997
	.quad	0x402109003eea209b              # double 8.5175800000000006
	.quad	0x3fda8ba40d90e23b              # double 0.414773
	.quad	0x40079fa11a975afb              # double 2.952944
	.quad	0x401473f9a49c2c1b              # double 5.1132569999999999
	.quad	0x401da66e86c6583f              # double 7.4125310000000004
	.quad	0x40205f65dbfceb79              # double 8.1863240000000008
	.quad	0x401a30cc35ce1826              # double 6.5476539999999996
	.quad	0x4006d92f2b66b617              # double 2.8560469999999998
	.quad	0x4017b35ac8a37260              # double 5.9251509999999996
	.quad	0x400d03886594af4f              # double 3.626725
	.quad	0x40224c6cfc829cfe              # double 9.1492690000000003
	.quad	0x40239929aa1d755c              # double 9.7991460000000003
	.quad	0x401443baba7b9171              # double 5.0661420000000001
	.quad	0x40127136e71cda2b              # double 4.6105609999999997
	.quad	0x3ffced8e432441ff              # double 1.8079970000000001
	.quad	0x400bf5faa8a82a56              # double 3.495107
	.quad	0x4004f25bb7b6bb13              # double 2.6183390000000002
	.quad	0x3fff8383ad9f0a1c              # double 1.969608
	.quad	0x40135a222d5171e3              # double 4.8380210000000003
	.quad	0x400dd83a53b8e4b8              # double 3.7305799999999998
	.quad	0x40137f22c01e68a1              # double 4.8741560000000002
	.quad	0x4018185b9e8c47a1              # double 6.0237869999999996
	.quad	0x4007599ed7c6fbd2              # double 2.9187599999999998
	.quad	0x40227c7021d10b20              # double 9.2430430000000001
	.quad	0x4009b060bb2bba99              # double 3.211122
	.quad	0x400c85ccc89b0ee5              # double 3.5653320000000002
	.quad	0x40204c5e2cdc011d              # double 8.1491559999999996
	.quad	0x401137c393682731              # double 4.3044570000000002
	.quad	0x4005ffa6defc7a3a              # double 2.7498300000000002
	.quad	0x40153ca5bd944aa5              # double 5.3092259999999998
	.quad	0x4023f2b191dde376              # double 9.9740110000000008
	.quad	0x3ff9097635e7429a              # double 1.56481
	.quad	0x3fffca686e7e62dc              # double 1.9869159999999999
	.quad	0x40201aab25b317f0              # double 8.0520870000000002
	.quad	0x400ad1172ef0ae53              # double 3.3520949999999998
	.quad	0x4022110214ad362f              # double 9.0332190000000008
	.quad	0x401a90c38f366949              # double 6.6413710000000004
	.quad	0x4023efcf1c3265ae              # double 9.9683770000000003
	.quad	0x40214484d76ab580              # double 8.6338259999999991
	.quad	0x4020ef89613d31ba              # double 8.4678450000000005
	.quad	0x4012ae02ea960b70              # double 4.6699330000000003
	.quad	0x401ccaec8d5c7475              # double 7.1981679999999999
	.quad	0x401eb3821af7d30b              # double 7.6753010000000001
	.quad	0x3ff541871e6cd291              # double 1.328498
	.quad	0x40171445aa2e3c53              # double 5.7697969999999996
	.quad	0x401c2ef9db22d0e5              # double 7.0458749999999997
	.quad	0x4016ebf8769ec2ce              # double 5.7304399999999998
	.quad	0x4011c19934efcbd5              # double 4.4390609999999997
	.quad	0x400afc2dadb8348f              # double 3.3731339999999999
	.quad	0x3fe7e1e92923e5b8              # double 0.74632699999999996
	.quad	0x3ff307e9d94d0dd0              # double 1.189432
	.quad	0x4018d4549b62c775              # double 6.2073539999999996
	.quad	0x4003a3254e6e221d              # double 2.4546610000000002
	.quad	0x400d1ff2e48e8a72              # double 3.6406000000000001
	.quad	0x3fc44095f2452c5a              # double 0.158221
	.quad	0x4023fe50c5eb313c              # double 9.9967100000000002
	.quad	0x401c4b08dd1e53a8              # double 7.0732759999999999
	.quad	0x4004ece24bba12b6              # double 2.615666
	.quad	0x4020e026cc1ca3a5              # double 8.4377960000000005
	.quad	0x400754d4024b33db              # double 2.91642
	.quad	0x40115f68be2f7b18              # double 4.3431730000000002
	.quad	0x40189573eab367a1              # double 6.14595
	.quad	0x400c21a2e7f6f4bf              # double 3.5164240000000002
	.quad	0x40210ae83a109d06              # double 8.5213029999999996
	.quad	0x40116b2031ceaf25              # double 4.3546149999999999
	.quad	0x4019a5a5b9628cbd              # double 6.4117649999999999
	.quad	0x4002f1183b60285f              # double 2.3677220000000001
	.quad	0x400d209a24031487              # double 3.6409189999999998
	.quad	0x4008d308bb906467              # double 3.1030440000000001
	.quad	0x40183e28ed5f138c              # double 6.0607030000000002
	.quad	0x4020c29a5ebb773a              # double 8.3800840000000001
	.quad	0x40207e9a91105e1c              # double 8.2472729999999998
	.quad	0x40063b634dad31fd              # double 2.7789980000000001
	.quad	0x40178a68f4b61fe2              # double 5.8851659999999999
	.quad	0x401d7045baf533f4              # double 7.3596409999999999
	.quad	0x40189a3c64345cff              # double 6.1506210000000001
	.quad	0x3fc3a871a3b14a90              # double 0.15357799999999999
	.quad	0x401742e770bd017e              # double 5.8153360000000003
	.quad	0x3fd287ad080b673c              # double 0.28953099999999998
	.quad	0x400a825fa658c4bd              # double 3.3136589999999999
	.quad	0x4006c2396073de1e              # double 2.8448359999999999
	.quad	0x40213658a32f4491              # double 8.6061449999999997
	.quad	0x40204f2f9873ffac              # double 8.1546599999999997
	.quad	0x400af7a56de3326a              # double 3.3709210000000001
	.quad	0x401cb4e54f7a9197              # double 7.1766560000000004
	.quad	0x401f68af3e468cac              # double 7.8522309999999997
	.quad	0x40227aa92e62131b              # double 9.2395720000000008
	.quad	0x400b89cf56eac860              # double 3.4422899999999998
	.quad	0x4017ef9ce8d972cd              # double 5.9839969999999996
	.quad	0x4021f62c343b70ef              # double 8.9808059999999994
	.quad	0x401331476af89c5e              # double 4.7981239999999996
	.quad	0x3febe544fe36d224              # double 0.87173699999999998
	.quad	0x401c8fd36f7e3d1d              # double 7.1404550000000002
	.quad	0x4008e453d20f2bed              # double 3.111488
	.quad	0x401efc24c404a72f              # double 7.7462340000000002
	.quad	0x40008b042528ae75              # double 2.067879
	.quad	0x40058a558ea7ce10              # double 2.6925460000000001
	.quad	0x401cb10a137f38c5              # double 7.1728899999999998
	.quad	0x400e2a22b3892ee8              # double 3.7705739999999999
	.quad	0x3ffbeefb2aae2974              # double 1.7458450000000001
	.quad	0x3ffe953bd1676641              # double 1.9114340000000001
	.quad	0x401a5863beec397a              # double 6.5863180000000003
	.quad	0x4010ada76d97b310              # double 4.1695840000000004
	.quad	0x4020bee1bd1ed9e0              # double 8.3728160000000003
	.quad	0x40187bae03b3e9a7              # double 6.120781
	.quad	0x40209b94317acc4f              # double 8.3038650000000001
	.quad	0x40122e115592d98c              # double 4.544988
	.quad	0x4020ba6809d49518              # double 8.3640749999999997
	.quad	0x3fbb5dedf1e0828c              # double 0.106902
	.quad	0x40223b1422ccb3a2              # double 9.1153879999999994
	.quad	0x40096e0221426fe7              # double 3.178715
	.quad	0x3ff40bb6ed677708              # double 1.2528600000000001
	.quad	0x401f1164c729f59d              # double 7.7669860000000001
	.quad	0x3fa95208e1501190              # double 0.049453999999999998
	.quad	0x4014a8509bf9c62a              # double 5.1643699999999999
	.quad	0x4010b60e94ee392e              # double 4.1777899999999999
	.quad	0x4021b00bed740c41              # double 8.8438409999999994
	.quad	0x40234cad57bc7f78              # double 9.6497600000000005
	.quad	0x40187fb71fbc5dea              # double 6.1247220000000002
	.quad	0x401f2d99cbee807c              # double 7.7945320000000002
	.quad	0x40005c84b5dcc63f              # double 2.045175
	.quad	0x4021c9210385c67e              # double 8.89283
	.quad	0x400e9cd8127b2cc7              # double 3.826584
	.quad	0x4015950b0f27bb30              # double 5.3955500000000001
	.quad	0x3fd07ddca4b124d1              # double 0.25768200000000002
	.quad	0x40162a29c779a6b5              # double 5.541175
	.quad	0x40165d3cbc48f10b              # double 5.5910520000000004
	.quad	0x4017a6cc1ca3a4b5              # double 5.9128879999999997
	.quad	0x3fc244ae85b9e8c4              # double 0.14272099999999999
	.quad	0x3ff369e0a41a261c              # double 1.213349
	.quad	0x401b63ef6b5d462c              # double 6.8475929999999998
	.quad	0x401997ac81d3aa37              # double 6.3981190000000003
	.quad	0x402105938151a438              # double 8.5108910000000009
	.quad	0x400150eed02cd39e              # double 2.1645180000000002
	.quad	0x40033beb18116ebd              # double 2.4042569999999999
	.quad	0x4015720ea5b530cf              # double 5.3613840000000001
	.quad	0x4019ef7121ab4b73              # double 6.4838300000000002
	.quad	0x401f6ce28ed5f139              # double 7.8563330000000002
	.quad	0x4008a1bc126a65cf              # double 3.0789719999999998
	.quad	0x4014ebf9830e3cda              # double 5.2304440000000003
	.quad	0x3fcc35f80991793a              # double 0.22039700000000001
	.quad	0x402393c05d52c16e              # double 9.7885770000000001
	.quad	0x402318b630a91538              # double 9.5482650000000006
	.quad	0x3ff1a7503b81b64e              # double 1.103348
	.quad	0x3ffcd01b003686a5              # double 1.800807
	.quad	0x3fec6fc371da37ef              # double 0.88864299999999996
	.quad	0x400c5c0229a5ebb7              # double 3.5449259999999998
	.quad	0x4019c9c779a6b50b              # double 6.4470499999999999
	.quad	0x402117c200c0f020              # double 8.5464020000000005
	.quad	0x3ff4f3b85e80bed7              # double 1.3095019999999999
	.quad	0x4021970e2c12ad82              # double 8.7950300000000006
	.quad	0x3ff7d5a4acf312b2              # double 1.4896590000000001
	.quad	0x40237e9ad42c3c9f              # double 9.7472750000000001
	.quad	0x4015ab228dc981bf              # double 5.4171240000000003
	.quad	0x3ff017268d32830a              # double 1.005652
	.quad	0x4018bb384fd2a62b              # double 6.1828320000000003
	.quad	0x4011190ea9e6eeb7              # double 4.27447
	.quad	0x401309ffd60e94ee              # double 4.7597649999999998
	.quad	0x4012eaf922962cfe              # double 4.7294660000000004
	.quad	0x3ffa2f19934efcbd              # double 1.6364989999999999
	.quad	0x3fde42f1ed17c5ef              # double 0.47283599999999998
	.quad	0x40223756c93a7115              # double 9.1080839999999998
	.quad	0x40208fe5c91d14e4              # double 8.2810500000000004
	.quad	0x4023c2f5fd47bedb              # double 9.8807829999999992
	.quad	0x40105b0079a2834d              # double 4.0888689999999999
	.quad	0x401ef86ca89fc6da              # double 7.7426019999999998
	.quad	0x4021dba40d90e23b              # double 8.9289860000000001
	.quad	0x40115f95d4e8fb01              # double 4.3433450000000002
	.quad	0x400c0ffd1dcd7061              # double 3.5078070000000001
	.quad	0x3fe546e2a80064aa              # double 0.66490300000000002
	.quad	0x401b63f141205bc0              # double 6.8475999999999999
	.quad	0x401c12ce032db1ea              # double 7.018364
	.quad	0x3fef5b4aa9717df2              # double 0.97989400000000004
	.quad	0x4021e2ada33bd9cb              # double 8.9427310000000002
	.quad	0x4015a1ffb480a5ad              # double 5.4082020000000002
	.quad	0x40157dd3fe1975f3              # double 5.3728790000000002
	.quad	0x4020d5cbff47735c              # double 8.4175719999999998
	.quad	0x401c5e31d712a0ec              # double 7.0919869999999996
	.quad	0x3ffae8c47a17f413              # double 1.6818280000000001
	.quad	0x3fc1973d9ec70004              # double 0.13742799999999999
	.quad	0x40163b0fadf2ecf2              # double 5.557677
	.quad	0x401474894c447c31              # double 5.1138050000000002
	.quad	0x40234f4c8ffb8b26              # double 9.6548809999999996
	.quad	0x401df6ab14ec204f              # double 7.4908869999999998
	.quad	0x402356c4827b6fe3              # double 9.6694680000000001
	.quad	0x3ffba6dacabc5155              # double 1.7282360000000001
	.quad	0x401a3b6b6e0d23d5              # double 6.5580270000000001
	.quad	0x400a13461309c800              # double 3.2594110000000001
	.quad	0x401776fa82e87d2c              # double 5.8661899999999996
	.quad	0x4020cc02f2f98740              # double 8.39846
	.quad	0x40205be48a58b3f6              # double 8.1794779999999996
	.quad	0x40150db445ed4a1b              # double 5.2633830000000001
	.quad	0x3ff8ffec13b9f128              # double 1.562481
	.quad	0x40159f04577d9557              # double 5.4052899999999999
	.quad	0x40167919ac79702e              # double 5.6182619999999996
	.quad	0x4003a2845996744b              # double 2.4543539999999999
	.quad	0x40112fee2c98e53f              # double 4.2968070000000003
	.quad	0x3fea3358f2e05ccd              # double 0.81876800000000005
	.quad	0x4013f675147f1306              # double 4.9906810000000004
	.quad	0x401dc0e347629521              # double 7.4383670000000004
	.quad	0x40146a82e87d2c7c              # double 5.1040150000000004
	.quad	0x4012c5ff609dcf89              # double 4.6933569999999998
	.quad	0x3fe364dc22ab25b3              # double 0.60606199999999999
	.quad	0x40102fa4c61d8623              # double 4.0465270000000002
	.quad	0x4007cca36199780c              # double 2.9749210000000001
	.quad	0x3ffdd306a2b17050              # double 1.86402
	.quad	0x401122c59fb1e18f              # double 4.283957
	.quad	0x401d81dc0db2702a              # double 7.3768159999999998
	.quad	0x401af3d20f2becee              # double 6.7381060000000002
	.quad	0x4021c01fd9ba1b19              # double 8.8752429999999993
	.quad	0x401e20374ff865d8              # double 7.5314610000000001
	.quad	0x400efb58d1526d8b              # double 3.8727279999999999
	.quad	0x401f47dc7abfb9bf              # double 7.8201770000000001
	.quad	0x400e186013660e52              # double 3.7619020000000001
	.quad	0x40086aa5c5f7c676              # double 3.0520740000000002
	.quad	0x40198c7c0f451761              # double 6.3871919999999998
	.quad	0x3ff8d2f6e82949a5              # double 1.5515049999999999
	.quad	0x40074f965b20b806              # double 2.9138609999999998
	.quad	0x400bbc52e72da123              # double 3.466955
	.quad	0x3ffe450374ff865d              # double 1.8918489999999999
	.quad	0x4021032a497fa5d3              # double 8.5061820000000008
	.quad	0x40022c67168f8e7e              # double 2.2716810000000001
	.quad	0x3fc369c23b7952d2              # double 0.15166499999999999
	.quad	0x400032d0a2446306              # double 2.0248119999999998
	.quad	0x3fd55a2d72ffd1dd              # double 0.33362900000000001
	.quad	0x4021f7304039abf3              # double 8.9827899999999996
	.quad	0x3fce142f61ed5ae2              # double 0.23499100000000001
	.quad	0x3fdd7b02d59d55e7              # double 0.46063300000000001
	.quad	0x3fdbeb1c432ca57a              # double 0.43622499999999997
	.quad	0x400a59fb1e18efbb              # double 3.293936
	.quad	0x4014b24180d3cff6              # double 5.1740779999999997
	.quad	0x401aecad9ad85dfb              # double 6.7311310000000004
	.quad	0x3ff8ccad57bc7f78              # double 1.5499700000000001
	.quad	0x400e6dff822bbecb              # double 3.8037100000000001
	.quad	0x401f3bf5d78811b2              # double 7.8085550000000001
	.quad	0x40142c7e6b3fe9fb              # double 5.0434510000000001
	.quad	0x3fd552b4d8ba40d9              # double 0.333173
	.quad	0x4011a508f648c719              # double 4.4111669999999998
	.quad	0x40047c4545846e8f              # double 2.5606789999999999
	.quad	0x4023062ef4e0114d              # double 9.5120769999999996
	.quad	0x4018a52c9d16fc9c              # double 6.1613030000000002
	.quad	0x400f89fe004b7f5a              # double 3.9423789999999999
	.quad	0x40141e874c8ffb8b              # double 5.0298129999999999
	.quad	0x401ae4463065f959              # double 6.7229239999999999
	.quad	0x40048dbbe0157eed              # double 2.5692059999999999
	.quad	0x40165b0bbf50e347              # double 5.5889119999999997
	.quad	0x400f3d84901d1915              # double 3.9050379999999998
	.quad	0x40206e2867275686              # double 8.2151519999999998
	.quad	0x4001a84dfce3150e              # double 2.2071800000000001
	.quad	0x400958433d6c7219              # double 3.1680969999999999
	.quad	0x3fc9dc5931ca7d67              # double 0.20203699999999999
	.quad	0x400224fa8b4bf8fd              # double 2.2680560000000001
	.quad	0x40227d27c3936827              # double 9.2444439999999997
	.quad	0x4022e2e6c8f75537              # double 9.4431670000000007
	.quad	0x4017ae4473cd5736              # double 5.9201829999999998
	.quad	0x400706bbdbe3c105              # double 2.878288
	.quad	0x4012f715831f03d1              # double 4.7412929999999998
	.quad	0x40157d8409e55c10              # double 5.3725740000000002
	.quad	0x4022005be1a82624              # double 9.0007009999999993
	.quad	0x3ff6e66ec9e236c1              # double 1.4312579999999999
	.quad	0x401907008a697aee              # double 6.2568380000000001
	.quad	0x4012351b4fe79ee0              # double 4.5518619999999999
	.quad	0x40153cbd556084a5              # double 5.3093159999999999
	.quad	0x4005acb3a2595bbc              # double 2.709327
	.quad	0x3ffcc54de7ea5f85              # double 1.79817
	.quad	0x400793836a832b99              # double 2.947028
	.quad	0x4018fefed634549b              # double 6.2490189999999997
	.quad	0x3feb65e2478854ce              # double 0.85618700000000003
	.quad	0x401cd7503b81b64e              # double 7.210267
	.quad	0x4005394ea077036d              # double 2.6529820000000002
	.quad	0x40170681669ced0b              # double 5.7563529999999998
	.quad	0x401451a08bfc2225              # double 5.0797140000000001
	.quad	0x401ca301eabbcb1d              # double 7.1591870000000002
	.quad	0x401cb970f7b9e061              # double 7.181095
	.quad	0x4008b69ca9ef5233              # double 3.0891660000000001
	.quad	0x4012742d8c2a454e              # double 4.6134550000000001
	.quad	0x3ffdb137b07075b4              # double 1.855766
	.quad	0x401ef8a04d12018a              # double 7.7427989999999998
	.quad	0x40209aca9ac36545              # double 8.302327
	.quad	0x3ff64997c3d68406              # double 1.3929670000000001
	.quad	0x401180ef566490a3              # double 4.3759129999999997
	.quad	0x40148a29c779a6b5              # double 5.134925
	.quad	0x401e155da272862f              # double 7.5208649999999996
	.quad	0x3ff70d1d8a548238              # double 1.4407019999999999
	.quad	0x401c5d1a65061416              # double 7.0909209999999998
	.quad	0x4009e58cd20afa2f              # double 3.237085
	.quad	0x40114cdd93c46d83              # double 4.3250640000000002
	.quad	0x3ff58c73abc94706              # double 1.3467899999999999
	.quad	0x40073eec39799e52              # double 2.9057240000000002
	.quad	0x402236848beb5b2d              # double 9.1064799999999995
	.quad	0x401a4308787485e4              # double 6.5654620000000001
	.quad	0x4018e9d7774aba38              # double 6.2283609999999996
	.quad	0x400d4b91b3f20a74              # double 3.661899
	.quad	0x401faa554b8bef8d              # double 7.916341
	.quad	0x401dab58d1526d8b              # double 7.4173309999999999
	.quad	0x401dcd7b634dad32              # double 7.450666
	.quad	0x401d658c08b75ea6              # double 7.3491669999999996
	.quad	0x40196f49491f2dc3              # double 6.3586780000000003
	.quad	0x40219818611fd588              # double 8.7970609999999994
	.quad	0x4004e69835158b82              # double 2.6125949999999998
	.quad	0x402121e90795f677              # double 8.5662310000000002
	.quad	0x4011455c96030c24              # double 4.317736
	.quad	0x3fe8b8800eae18ad              # double 0.77252200000000004
	.quad	0x3ff1a5bc87db2b34              # double 1.1029629999999999
	.quad	0x4007a1c044284dfd              # double 2.9539800000000001
	.quad	0x3ffa2e5bc87db2b3              # double 1.6363179999999999
	.quad	0x3fdad334c5da6a44              # double 0.41914099999999999
	.quad	0x4011bef0281ba7fc              # double 4.4364629999999998
	.quad	0x3fe9381b64e05469              # double 0.78809899999999999
	.quad	0x4005763b256ffc11              # double 2.6827299999999998
	.quad	0x401f8f8055fbb518              # double 7.8901380000000003
	.quad	0x401d249b1fab96f2              # double 7.2857479999999999
	.quad	0x400460913a4f8727              # double 2.5471520000000001
	.quad	0x401225592d98bf7f              # double 4.536473
	.quad	0x40014ece13f4a98b              # double 2.1634790000000002
	.quad	0x401f3b53d640e9d5              # double 7.8079369999999999
	.quad	0x3fe213a0c6b484d7              # double 0.56489599999999995
	.quad	0x40207763800218df              # double 8.2331810000000001
	.quad	0x401f6e2a3cea6c1a              # double 7.857583
	.quad	0x401c493250b5243a              # double 7.0714810000000003
	.quad	0x40069a5fc7e6b3ff              # double 2.8253780000000002
	.quad	0x40028b65a9a80496              # double 2.3180649999999998
	.quad	0x400e654690de0935              # double 3.7994509999999999
	.quad	0x401902396073de1e              # double 6.2521719999999998
	.quad	0x40157563a9f383f1              # double 5.3646380000000002
	.quad	0x401eb811b1d92b80              # double 7.6797550000000001
	.quad	0x4018ef85d744f5d3              # double 6.2339089999999997
	.quad	0x40163d0d49949e88              # double 5.5596209999999999
	.quad	0x401664549b62c775              # double 5.5979789999999996
	.quad	0x40236dd462c343b7              # double 9.7145109999999998
	.quad	0x4021ce536501e258              # double 8.9029799999999994
	.quad	0x401e72cfd8f0c77e              # double 7.6121210000000001
	.quad	0x402225d3dc8b86b1              # double 9.0738819999999993
	.quad	0x40151845564b6630              # double 5.2737020000000001
	.quad	0x400fadf2ecf20642              # double 3.9599359999999999
	.quad	0x401b474538ef34d7              # double 6.8196000000000003
	.quad	0x40104f1737542a24              # double 4.0772370000000002
	.quad	0x4020d96cc5fbf834              # double 8.4246580000000008
	.quad	0x40135ef39085f4a1              # double 4.8427259999999999
	.quad	0x40085e33269df97b              # double 3.0459960000000001
	.quad	0x402036a9c560c7c1              # double 8.1067640000000001
	.quad	0x3ff256c0d6f544bb              # double 1.14618
	.quad	0x401580d51f81a587              # double 5.375813
	.quad	0x3ff014db59578a2b              # double 1.0050920000000001
	.quad	0x40135c8b86b15f89              # double 4.840376
	.quad	0x400624f97edc7ef1              # double 2.7680539999999998
	.quad	0x401883996fa82e88              # double 6.1285150000000002
	.quad	0x4023609aaa3ad18d              # double 9.6886799999999997
	.quad	0x3ffa5614df8b1572              # double 1.6460159999999999
	.quad	0x4023d20168b5cbff              # double 9.9101669999999995
	.quad	0x4023d99ed7c6fbd2              # double 9.9250399999999992
	.quad	0x401e015f45e0b4e1              # double 7.5013399999999998
	.quad	0x4012e249e44fa051              # double 4.7209849999999998
	.quad	0x3ff7245b291b823d              # double 1.4463760000000001
	.quad	0x3fc93aa369fcf3dc              # double 0.197102
	.quad	0x4015e1deacc92147              # double 5.4705760000000003
	.quad	0x40199eff9f87f024              # double 6.4052720000000001
	.quad	0x4016af1e0828c36e              # double 5.6710130000000003
	.quad	0x40188bb62413db7f              # double 6.1364369999999999
	.quad	0x4011ae3715400325              # double 4.4201319999999997
	.quad	0x4015a4a6eb91b3f2              # double 5.410793
	.quad	0x4020e8ea39c51dac              # double 8.4549120000000002
	.quad	0x3fd82b94d9407896              # double 0.37766
	.quad	0x400bd7ad4b2745bf              # double 3.4803109999999999
	.quad	0x401d7b84db9c7369              # double 7.3706240000000003
	.quad	0x4002b832fcac8e69              # double 2.339941
	.quad	0x4017cc25072085b2              # double 5.9493600000000004
	.quad	0x3fd9d859c8c9320e              # double 0.40383000000000002
	.quad	0x4020c10bc7b45f18              # double 8.3770430000000005
	.quad	0x3ff62b1f687b139d              # double 1.3855280000000001
	.quad	0x3ff3c7ee0b0af5fd              # double 1.2363109999999999
	.quad	0x400825ccc89b0ee5              # double 3.0184570000000002
	.quad	0x3fd47fed20296b33              # double 0.32030799999999998
	.quad	0x401a205681ecd4aa              # double 6.5315799999999999
	.quad	0x401b7adf71eafee7              # double 6.869993
	.quad	0x4020cd49b62c7757              # double 8.4009529999999994
	.quad	0x4022e2b9d3cbc48f              # double 9.4428239999999998
	.quad	0x40226327674d1633              # double 9.1936599999999995
	.quad	0x40217f2fdb8fde2f              # double 8.7484120000000001
	.quad	0x4022ab5e0f7fcfc4              # double 9.334702
	.quad	0x400ad67a95c853c1              # double 3.3547259999999999
	.quad	0x4012c59ddc1e7968              # double 4.6929850000000002
	.quad	0x4022ada6e75ff60a              # double 9.3391640000000002
	.quad	0x4023f5771001d5c3              # double 9.9794239999999998
	.quad	0x40089b9cf9a06a6e              # double 3.0759829999999999
	.quad	0x4016b877681669cf              # double 5.6801430000000002
	.quad	0x400da7e49b1fab97              # double 3.706979
	.quad	0x40160d5bee3d5fdd              # double 5.5130460000000001
	.quad	0x401362b1f687b13a              # double 4.8463820000000002
	.quad	0x40073d76ee73e682              # double 2.9050120000000001
	.quad	0x4010f4ea4a8c154d              # double 4.2391750000000004
	.quad	0x40218bf39d1b2e5a              # double 8.7733430000000006
	.quad	0x40134f6837f7be12              # double 4.8275459999999999
	.quad	0x401be266fd651b0d              # double 6.9710960000000002
	.quad	0x3fed52c386d2ed78              # double 0.91635299999999997
	.quad	0x401172a5614df8b1              # double 4.3619589999999997
	.quad	0x40188f7f8ca8198f              # double 6.1401349999999999
	.quad	0x40190ea5f84cad58              # double 6.2643050000000002
	.quad	0x4021f2c322291fb4              # double 8.974145
	.quad	0x4010d1dda059a73b              # double 4.2049469999999998
	.quad	0x4022f574f722e1ac              # double 9.4794079999999993
	.quad	0x400e8be7296f6513              # double 3.8183120000000002
	.quad	0x402080389f83be66              # double 8.250432
	.quad	0x400960ee06d93815              # double 3.172329
	.quad	0x3ffcc262456f75da              # double 1.7974570000000001
	.quad	0x4016a33764f11b61              # double 5.6593910000000003
	.quad	0x4016d1a36e2eb1c4              # double 5.7047249999999998
	.quad	0x401b8e1eb4202d9d              # double 6.8887890000000001
	.quad	0x401a2948dc11e42e              # double 6.5403169999999999
	.quad	0x3fe6cae642bf9831              # double 0.71226800000000001
	.quad	0x4021f2ecd07852f8              # double 8.9744630000000001
	.quad	0x401274face67d780              # double 4.6142380000000003
	.quad	0x401c77fdc5931ca8              # double 7.1171790000000001
	.quad	0x3fbfdfa00e27e0f0              # double 0.12450600000000001
	.quad	0x40133d7e889c1b54              # double 4.8100529999999999
	.quad	0x3fe78f12c27a6373              # double 0.73621499999999995
	.quad	0x4023e72c0e7bc3c6              # double 9.9515080000000005
	.quad	0x4010bbfd2e946801              # double 4.1835829999999996
	.quad	0x4006f72bcb5fe543              # double 2.870689
	.quad	0x40230183947496ab              # double 9.5029570000000003
	.quad	0x3fd7d70a3d70a3d7              # double 0.3725
	.quad	0x4015536113404ea5              # double 5.3314250000000003
	.quad	0x4020ddb37c99ae92              # double 8.4330099999999995
	.quad	0x400c9a2f05a708ee              # double 3.575285
	.quad	0x401ebb8c75c4a83b              # double 7.6831529999999998
	.quad	0x4023741e14bdfd26              # double 9.7267919999999997
	.quad	0x4020d2b3cc4ac6ce              # double 8.4115280000000006
	.quad	0x3ffd78df7a4e7ab7              # double 1.8420099999999999
	.quad	0x4017b21c8a7a41e5              # double 5.9239369999999996
	.quad	0x401ee15b9a5a89b9              # double 7.7200759999999997
	.quad	0x4022a097635e742a              # double 9.3136550000000007
	.quad	0x3ff8f32acfb762d8              # double 1.5593669999999999
	.quad	0x4021728da7f3cf70              # double 8.7237369999999999
	.quad	0x4023aae7924af0bf              # double 9.8337979999999998
	.quad	0x3fbca5375c8d9f90              # double 0.111896
	.quad	0x400a61d6cf850df1              # double 3.2977729999999998
	.quad	0x40135fa8f7db6e50              # double 4.8434179999999998
	.quad	0x3fd91c75818c5c9a              # double 0.39236199999999999
	.quad	0x4020010f733a8a40              # double 8.0020710000000008
	.quad	0x40228cd91eeaa6d2              # double 9.2750939999999993
	.quad	0x401e0b6aa4b9884c              # double 7.5111489999999996
	.quad	0x4017109203a322af              # double 5.7661819999999997
	.quad	0x400bb5df6555c52e              # double 3.4638049999999998
	.quad	0x4022f1d5c31593e6              # double 9.472334
	.quad	0x402006a76965f527              # double 8.0129959999999993
	.quad	0x40237c4545846e8f              # double 9.7427159999999997
	.quad	0x40178e8d10f51aca              # double 5.8892100000000003
	.quad	0x4008f9ef954eb13e              # double 3.122039
	.quad	0x40182f90539fba45              # double 6.046449
	.quad	0x3fd8b3fa6defc7a4              # double 0.38598500000000002
	.quad	0x3fd11e108c3f3e03              # double 0.26745999999999998
	.quad	0x400e13b18dac258d              # double 3.7596159999999998
	.quad	0x3fe4afb7e90ff972              # double 0.64644999999999997
	.quad	0x400b4bf4cb1897a6              # double 3.4120879999999998
	.quad	0x3ff748de2ac32229              # double 1.45529
	.quad	0x3fd2420b3d4ae42a              # double 0.28528100000000001
	.quad	0x401a67fbefd00714              # double 6.6015470000000001
	.quad	0x4020986594af4f0e              # double 8.2976500000000009
	.quad	0x3fc31ac14c660a20              # double 0.149254
	.quad	0x40153cf91a32b12d              # double 5.3095439999999998
	.quad	0x3fe880f55de58e65              # double 0.76574200000000003
	.quad	0x400fbfc8f32378ab              # double 3.968645
	.quad	0x4014b5069a4df480              # double 5.1767830000000004
	.quad	0x40193718a86d71f3              # double 6.3038049999999997
	.quad	0x402102799a1fd157              # double 8.5048340000000007
	.quad	0x401fec914b167ec8              # double 7.9810230000000004
	.quad	0x3fe613dfb0d51f82              # double 0.68992600000000004
	.quad	0x4021f63e6c4c5975              # double 8.9809450000000002
	.quad	0x3ff286db50f40e5a              # double 1.157924
	.quad	0x401663e8576cce5f              # double 5.5975659999999996
	.quad	0x40200a500d5e8d54              # double 8.0201419999999998
	.quad	0x40196a921ccd9620              # double 6.3540729999999996
	.quad	0x3ffcea4873365882              # double 1.8071980000000001
	.quad	0x3ff2ab5b2d4d4025              # double 1.1668350000000001
	.quad	0x40143a6b93ccd0ff              # double 5.0570510000000004
	.quad	0x4003898eda22f6a5              # double 2.442167
	.quad	0x40089a7b9170d62c              # double 3.075431
	.quad	0x4020e38b47c73eee              # double 8.4444219999999994
	.quad	0x3fb8281ba7fc32ec              # double 0.094362000000000001
	.quad	0x40164f43c7d5ed07              # double 5.577407
	.quad	0x40015397dd00f777              # double 2.1658170000000001
	.quad	0x4022f9ec918e325d              # double 9.4881329999999994
	.quad	0x4022dcf6be37de94              # double 9.4315700000000006
	.quad	0x4011a9a8049667b6              # double 4.41568
	.quad	0x3ffccd4dc65c7043              # double 1.8001229999999999
	.quad	0x401a8f676ea4228a              # double 6.6400430000000004
	.quad	0x3fef29b499d0203e              # double 0.97384099999999996
	.quad	0x401ee0a244630660              # double 7.7193690000000004
	.quad	0x4005a140dd3fe197              # double 2.7037369999999998
	.quad	0x40172216c61522a7              # double 5.78329
	.quad	0x400b066ba493c89f              # double 3.3781349999999999
	.quad	0x40142387df5cf249              # double 5.0346979999999997
	.quad	0x401efc94f69ca9ef              # double 7.7466619999999997
	.quad	0x3fd0e94ee392e1ef              # double 0.26423999999999997
	.quad	0x40061ec5f394b7b3              # double 2.7650260000000002
	.quad	0x3fb6c0c62e4d1a65              # double 0.088879
	.quad	0x40131daa92e62132              # double 4.7789710000000003
	.quad	0x3fe59702e6644d87              # double 0.67468399999999995
	.quad	0x4017095d4e8fb00c              # double 5.7591450000000002
	.quad	0x40204ec2480e8c8b              # double 8.1538260000000005
	.quad	0x40106acc92146a1a              # double 4.1042959999999997
	.quad	0x40132d1958969a0b              # double 4.7940420000000001
	.quad	0x4020490b84988095              # double 8.1426660000000002
	.quad	0x4017fe3cd9a52264              # double 5.9982790000000001
	.quad	0x401b730270f38822              # double 6.8623139999999996
	.quad	0x401fd38d60a63305              # double 7.9565939999999999
	.quad	0x401451bb05faebc4              # double 5.079815
	.quad	0x401824202d9cf13d              # double 6.0352790000000001
	.quad	0x40174e4fb97bb731              # double 5.8264760000000004
	.quad	0x3f9fec56d5cfaace              # double 0.031175000000000001
	.quad	0x4020509dadfb506e              # double 8.1574530000000003
	.quad	0x3fefc5f9df548ece              # double 0.99291700000000005
	.quad	0x3fe691904b3c3e75              # double 0.70526900000000003
	.quad	0x4022a9a9b8cb8e08              # double 9.3313729999999992
	.quad	0x40123a85caafbc1b              # double 4.5571510000000002
	.quad	0x400b328bf3bea91e              # double 3.3996810000000002
	.quad	0x4013a9d30270f388              # double 4.9158439999999999
	.quad	0x401de82517e77d52              # double 7.4767039999999998
	.quad	0x40237849ecb31c22              # double 9.7349390000000007
	.quad	0x4013e7c0f4517614              # double 4.9763219999999997
	.quad	0x40136470a808c826              # double 4.8480860000000003
	.quad	0x3fe687746887a8d6              # double 0.70403499999999997
	.quad	0x4014a2435696e58a              # double 5.1584599999999998
	.quad	0x40175a732df505d1              # double 5.83833
	.quad	0x4021a4e618ce2d1f              # double 8.8220679999999998
	.quad	0x402008667f90d9d7              # double 8.0164069999999992
	.quad	0x401382c6ef3d3a1d              # double 4.8777119999999998
	.quad	0x40157d4e09784ec6              # double 5.3723679999999998
	.quad	0x40086d39da16616b              # double 3.0533329999999999
	.quad	0x40021f2cb641700d              # double 2.2652220000000001
	.quad	0x40129ec460ed80a1              # double 4.6550459999999996
	.quad	0x4010d003254e6e22              # double 4.2031369999999999
	.quad	0x4016d17fc7607c42              # double 5.7045890000000004
	.quad	0x4001da647fdc5932              # double 2.2316370000000001
	.quad	0x400ee053e2d6238e              # double 3.8595350000000002
	.quad	0x4023e97df19d66ae              # double 9.9560390000000005
	.quad	0x400e1b4784230fd0              # double 3.7633200000000002
	.quad	0x401d538cda6e75ff              # double 7.3315919999999997
	.quad	0x40145864883fd502              # double 5.0863209999999999
	.quad	0x401a7212513b5bf7              # double 6.6113980000000003
	.quad	0x4019ca0d77b7c782              # double 6.447317
	.quad	0x401ff995aaf78fef              # double 7.993735
	.quad	0x4019402ff8ec0f88              # double 6.3126829999999998
	.quad	0x3fec523d4f15e7c9              # double 0.88503900000000002
	.quad	0x4006aa4095f2452c              # double 2.8331309999999998
	.quad	0x402344d1e96c3fc4              # double 9.6344139999999995
	.quad	0x401c2bfca85caafc              # double 7.0429560000000002
	.quad	0x400b54ff0025bfad              # double 3.4165019999999999
	.quad	0x3feaa2339c0ebee0              # double 0.83230000000000003
	.quad	0x3fba13d31b9b66f9              # double 0.101865
	.quad	0x401d844955b4677b              # double 7.3791859999999998
	.quad	0x400fdb21c475e636              # double 3.9819979999999999
	.quad	0x4010b267c6b8b695              # double 4.1742239999999997
	.quad	0x400bad7cf5f4e443              # double 3.459711
	.quad	0x401cf1e3a7daa4fd              # double 7.2362200000000003
	.quad	0x4013185b5b70691f              # double 4.7737860000000003
	.quad	0x4010d49cf56eac86              # double 4.20763
	.quad	0x4008b4ad362e9036              # double 3.0882209999999999
	.quad	0x401f2dba4d6e47dc              # double 7.7946559999999998
	.quad	0x40172a11ec918e32              # double 5.7910839999999997
	.quad	0x4023d47496aad1d0              # double 9.9149519999999995
	.quad	0x4020ec5bf26f1dc5              # double 8.4616389999999999
	.quad	0x40204a3161a1db87              # double 8.1449079999999991
	.quad	0x40079b7cfe586013              # double 2.9509219999999998
	.quad	0x40135366d7a56de3              # double 4.8314469999999998
	.quad	0x401478b502ababeb              # double 5.1178780000000001
	.quad	0x3ffec37b4a2339c1              # double 1.922725
	.quad	0x401926b723ee1bd2              # double 6.2878080000000001
	.quad	0x3ff95e2478854cdb              # double 1.5854839999999999
	.quad	0x401b44d4024b33db              # double 6.817215
	.quad	0x3ffede4606748e47              # double 1.9292659999999999
	.quad	0x3fe98ac9f2fdb8fe              # double 0.79819200000000001
	.quad	0x4022f3d1244a6224              # double 9.4762050000000002
	.quad	0x4018966f9335d24a              # double 6.1469100000000001
	.quad	0x4008e562e09fe868              # double 3.1120049999999999
	.quad	0x3ff5c0ce91c8eac0              # double 1.359572
	.quad	0x4020035e529bae47              # double 8.0065790000000003
	.quad	0x40035ad3a604e1e7              # double 2.419349
	.quad	0x401ba458cd20afa3              # double 6.9104950000000001
	.quad	0x40176f9767903212              # double 5.8589760000000002
	.quad	0x4020139b66f9335d              # double 8.0382949999999997
	.quad	0x40163562e09fe868              # double 5.5521349999999998
	.quad	0x4003411a11233df3              # double 2.4067880000000001
	.quad	0x3feab886594af4f1              # double 0.83502500000000002
	.quad	0x3fc80a9de8b3b320              # double 0.18782399999999999
	.quad	0x4019ee74299d883c              # double 6.4828650000000003
	.quad	0x4017a4d65e460675              # double 5.9109740000000004
	.quad	0x40148884406c00da              # double 5.1333169999999999
	.quad	0x401abe974a3400b9              # double 6.6861240000000004
	.quad	0x40048b46bacf7447              # double 2.568006
	.quad	0x400c19ad85dfa872              # double 3.5125380000000002
	.quad	0x4021f9f23465625a              # double 8.9881759999999993
	.quad	0x401cb6e653868fd2              # double 7.1786130000000004
	.quad	0x400559524bfd2e94              # double 2.6686139999999998
	.quad	0x40039bf8b9baa151              # double 2.4511579999999999
	.quad	0x3fdffec99f1ae2da              # double 0.49992599999999998
	.quad	0x4011b7bfa4c61d86              # double 4.4294419999999999
	.quad	0x400d55fdcdf69878              # double 3.6669879999999999
	.quad	0x402090f3cb3e5754              # double 8.2831100000000006
	.quad	0x4022e6fd21ff2e49              # double 9.4511500000000001
	.quad	0x3fdaa30db6a1e81d              # double 0.41620200000000002
	.quad	0x400ddfc6da448494              # double 3.7342659999999999
	.quad	0x3fb1e0828c36da88              # double 0.069832000000000005
	.quad	0x3ff9bcf0b6b6e0d2              # double 1.6086279999999999
	.quad	0x40148279dd3bafd9              # double 5.1274179999999996
	.quad	0x40229118e325d4a6              # double 9.2833930000000002
	.quad	0x4004a94812be48a6              # double 2.5826570000000002
	.quad	0x40160d052934acb0              # double 5.512715
	.quad	0x401f2aade657b84e              # double 7.7916790000000002
	.quad	0x40106e0daa0cae64              # double 4.1074739999999998
	.quad	0x400e10f8c64fdb0a              # double 3.7582870000000002
	.quad	0x401ecb19a415f45e              # double 7.69834
	.quad	0x40171cd141a6937d              # double 5.7781419999999999
	.quad	0x4020478d2e514c23              # double 8.1397490000000001
	.quad	0x4016cb5807fed203              # double 5.6985780000000004
	.quad	0x4002f882278d0cc3              # double 2.3713419999999998
	.quad	0x401482dd7a99fa12              # double 5.1277980000000003
	.quad	0x401d15a921ccd962              # double 7.271153
	.quad	0x4020033e35c5b4ab              # double 8.0063340000000007
	.quad	0x400984ef88b97785              # double 3.1899099999999998
	.quad	0x3ffbf4b61fe21d97              # double 1.747244
	.quad	0x401d21b691212514              # double 7.2829230000000003
	.quad	0x402258470a808c82              # double 9.1724169999999994
	.quad	0x4013027aa68f4b62              # double 4.752421
	.quad	0x401c8d844d013a93              # double 7.1382000000000003
	.quad	0x4018ab6c3760bf5d              # double 6.1674049999999996
	.quad	0x401d34e592967019              # double 7.3016569999999996
	.quad	0x3ff7675ee99a62ed              # double 1.462737
	.quad	0x400c9907d912556d              # double 3.574722
	.quad	0x401e378854cdb7ae              # double 7.5542309999999997
	.quad	0x401a1c881e4712e4              # double 6.527863
	.quad	0x401ff425f202107b              # double 7.9884259999999995
	.quad	0x400794d37c1376d5              # double 2.9476689999999999
	.quad	0x3fe3ebfca85caafc              # double 0.62255700000000003
	.quad	0x401965e785b5b707              # double 6.3495160000000004
	.quad	0x40123eafee6fb4c4              # double 4.5612180000000002
	.quad	0x4022bcf893faf428              # double 9.3690840000000008
	.quad	0x4001315df6555c53              # double 2.149105
	.quad	0x401ce980f55de58e              # double 7.2280309999999997
	.quad	0x401aba02b841248d              # double 6.6816509999999996
	.quad	0x402340ee49f51698              # double 9.626818
	.quad	0x401c4317268d3283              # double 7.065518
	.quad	0x40164080f98fa377              # double 5.5629920000000004
	.quad	0x402006073de1e2df              # double 8.0117740000000008
	.quad	0x401c0e221c8a7a42              # double 7.0138020000000001
	.quad	0x4018689613d31b9b              # double 6.1021349999999996
	.quad	0x400a967903211cb0              # double 3.3234729999999999
	.quad	0x401ef9dbec2480e9              # double 7.7440030000000001
	.quad	0x401fa7079e59f2bb              # double 7.9131150000000003
	.quad	0x4023ff8e7ddca4b1              # double 9.9991339999999997
	.quad	0x40065c01a36e2eb2              # double 2.7949250000000001
	.quad	0x3fd91b36bd2b6f1a              # double 0.39228600000000002
	.quad	0x4011bf72b4528284              # double 4.4369610000000002
	.quad	0x4012a8b8f14db595              # double 4.6647679999999996
	.quad	0x401f041248d7e026              # double 7.7539759999999998
	.quad	0x4019f4a9cdc44391              # double 6.4889289999999997
	.quad	0x400d8f8f8a4c1ebd              # double 3.6950980000000002
	.quad	0x4017d053e2d6238e              # double 5.9534450000000003
	.quad	0x40205a7e30878748              # double 8.1767439999999993
	.quad	0x400110ab2e1693c0              # double 2.1331389999999999
	.quad	0x3ff24c9752977c89              # double 1.143699
	.quad	0x40177860dcb9a9da              # double 5.8675569999999997
	.quad	0x3ff22de225fa658c              # double 1.1362019999999999
	.quad	0x3fb3a4e7ab756430              # double 0.076734999999999997
	.quad	0x40221b6bf444e0db              # double 9.0535580000000007
	.quad	0x4019e6bbdbe3c105              # double 6.4753259999999999
	.quad	0x400bc76188b1140a              # double 3.4723540000000002
	.quad	0x3ff3f7963992c8c5              # double 1.247946
	.quad	0x40115bff47735c18              # double 4.3398409999999998
	.quad	0x402322fd976ff3ae              # double 9.5683410000000002
	.quad	0x4023315c853c1483              # double 9.5964089999999995
	.quad	0x3ff4c26cc1ca3a4b              # double 1.2974669999999999
	.quad	0x3fec3b6672fba01f              # double 0.88225100000000001
	.quad	0x400ad0ce4ead0c3d              # double 3.3519559999999999
	.quad	0x400f63ea704bc276              # double 3.9237869999999999
	.quad	0x40197d9b5e95b78d              # double 6.3726630000000002
	.quad	0x400ffb762d83c6c9              # double 3.9977839999999998
	.quad	0x401671fb82c2bd7f              # double 5.6113109999999997
	.quad	0x401d8cc1ca3a4b55              # double 7.3874579999999996
	.quad	0x3ff9bb677f6b1a2a              # double 1.6082529999999999
	.quad	0x400b2453d20f2bed              # double 3.392738
	.quad	0x40151f75536933a0              # double 5.2807209999999998
	.quad	0x4011b96d0917d6b6              # double 4.4310799999999997
	.quad	0x3ff62d8f4f93bc0a              # double 1.386123
	.quad	0x40108e8e60807358              # double 4.1392150000000001
	.quad	0x3ffe49d5a187a4a5              # double 1.8930260000000001
	.quad	0x40009413986338b4              # double 2.0723029999999998
	.quad	0x3f4e364bec679cc7              # double 9.2199999999999996E-4
	.quad	0x401aed4c33b53932              # double 6.7317359999999997
	.quad	0x402052d6238da3c2              # double 8.1617899999999999
	.quad	0x400e18c21e1d2179              # double 3.762089
	.quad	0x3f21f4f50a02b841              # double 1.37E-4
	.quad	0x400fce9468017119              # double 3.9758689999999999
	.quad	0x4023aad6ece13f4b              # double 9.8336710000000007
	.quad	0x400c1da16616b54e              # double 3.5144679999999999
	.quad	0x400bab3c3e74afd5              # double 3.4586109999999999
	.quad	0x401a3d883ba3443d              # double 6.5600899999999998
	.quad	0x40081d0a67620ee9              # double 3.0141800000000001
	.quad	0x4016bccfaeff5c6c              # double 5.6843859999999999
	.quad	0x400b6977c88e79ab              # double 3.426498
	.quad	0x4023823571d1d474              # double 9.7543140000000008
	.quad	0x401bba0a0f4d7add              # double 6.9316789999999999
	.quad	0x4015d63c31df761d              # double 5.4592140000000002
	.quad	0x3f8645a1cac08312              # double 0.010874999999999999
	.quad	0x3ffe1f7f8ca8198f              # double 1.88269
	.quad	0x400f040c8472c0e8              # double 3.8769770000000001
	.quad	0x401218db8bac710d              # double 4.5242750000000003
	.quad	0x4012ae59af9ebe9d              # double 4.6702640000000004
	.quad	0x4001cb2e1693c03c              # double 2.2242090000000001
	.quad	0x402145616f86a099              # double 8.6355090000000008
	.quad	0x4018b44998d045fe              # double 6.1760619999999999
	.quad	0x40088310dbf0563f              # double 3.0639970000000001
	.quad	0x40131045baf533f4              # double 4.7658909999999999
	.quad	0x401d4a1e81cb46bb              # double 7.3223820000000002
	.quad	0x40220894812be48a              # double 9.0167579999999994
	.quad	0x3ff36bc0e38a7e74              # double 1.2138070000000001
	.quad	0x400650f40e5a35d6              # double 2.7895279999999998
	.quad	0x40141320535c9e67              # double 5.0186780000000004
	.quad	0x40125eab7995ee13              # double 4.5924509999999996
	.quad	0x401e09873ffac1d3              # double 7.5093050000000003
	.quad	0x401d39cdc443914f              # double 7.3064489999999997
	.quad	0x4014b78b3700474e              # double 5.1792420000000003
	.quad	0x401f25a921ccd962              # double 7.786778
	.quad	0x401eee3da2f8bdec              # double 7.7326569999999997
	.quad	0x3fd7d744f5d35654              # double 0.37251400000000001
	.quad	0x401856a3bddfca00              # double 6.0846090000000004
	.quad	0x4012a9830e3cd9a5              # double 4.6655389999999999
	.quad	0x400c6f97edc7ef17              # double 3.5544889999999998
	.quad	0x4015acfe9b7bf1e9              # double 5.4189400000000001
	.quad	0x400f7ea5f84cad58              # double 3.9368400000000001
	.quad	0x3fe142e557de0d67              # double 0.53941600000000001
	.quad	0x400cd63992c8c500              # double 3.6046019999999999
	.quad	0x4012a54b05b7cfe6              # double 4.6614190000000004
	.quad	0x400089f4906034f4              # double 2.067361
	.quad	0x4023b9059ea57215              # double 9.8613710000000001
	.quad	0x4013beaf6837f7be              # double 4.9362159999999999
	.quad	0x4010c4acaff6d331              # double 4.1920650000000004
	.quad	0x40167645a1cac083              # double 5.6154999999999999
	.quad	0x401fd5b8561d4307              # double 7.958711
	.quad	0x401d513404ea4a8c              # double 7.3292999999999999
	.quad	0x401bdb0a2ca9ac36              # double 6.9639059999999997
	.quad	0x401350cf5b1c8649              # double 4.8289160000000004
	.quad	0x4020ec1d6cf850df              # double 8.4611619999999998
	.quad	0x401b670b49e01de2              # double 6.8506289999999996
	.quad	0x3ff30913a4f8726d              # double 1.189716
	.quad	0x402360abb44e50c6              # double 9.6888100000000001
	.quad	0x401e850870110a13              # double 7.6299149999999995
	.quad	0x4010ee6c8f755369              # double 4.2328359999999998
	.quad	0x401adde939eadd59              # double 6.71671
	.quad	0x401a0aae297396d1              # double 6.5104300000000004
	.quad	0x401b9d0cc35ce182              # double 6.9033689999999996
	.quad	0x4012d90fb65668c2              # double 4.7119739999999997
	.quad	0x400ae1ce6c093d96              # double 3.3602569999999998
	.quad	0x4018d0114d2f5dbc              # double 6.2031910000000003
	.quad	0x4019b4c55432873c              # double 6.4265340000000002
	.quad	0x4009425f202107b8              # double 3.1574080000000002
	.quad	0x401b6707182235b5              # double 6.8506130000000001
	.quad	0x401b414727dcbddc              # double 6.8137480000000004
	.quad	0x400c50f49491f2dc              # double 3.5395289999999999
	.quad	0x3ff3b2702a3486f0              # double 1.2310639999999999
	.quad	0x4000a9a133c1ce6c              # double 2.082827
	.quad	0x3fdf3b4f61672325              # double 0.48799500000000001
	.quad	0x4021f83be6601bca              # double 8.9848320000000008
	.quad	0x4016c4095f2452c6              # double 5.6914420000000003
	.quad	0x3fb3640639d5e4a4              # double 0.075745000000000007
	.quad	0x401f04bfd2e94680              # double 7.7546379999999999
	.quad	0x401117d1fe64f54d              # double 4.2732619999999999
	.quad	0x3fee81fd9ba1b196              # double 0.95336799999999999
	.quad	0x40105a1f4b1ee243              # double 4.0880099999999997
	.quad	0x40144af965b20b80              # double 5.0732169999999996
	.quad	0x402150c154c985f0              # double 8.6577249999999992
	.quad	0x4009c7ef9db22d0e              # double 3.2226249999999999
	.quad	0x401689ea14057082              # double 5.6346819999999997
	.quad	0x3feab1db445ed4a2              # double 0.83421100000000004
	.quad	0x401d197aaac1094a              # double 7.2748819999999998
	.quad	0x4023127136a400fc              # double 9.5360200000000006
	.quad	0x4023a4b6848beb5b              # double 9.8217049999999996
	.quad	0x4021378b7a1c25d0              # double 8.6084859999999992
	.quad	0x3fd63e707e175d14              # double 0.34756100000000001
	.quad	0x40059704790b8499              # double 2.6987390000000002
	.quad	0x3fd212be48a58b3f              # double 0.28239399999999998
	.quad	0x4019eecc814d727a              # double 6.4832020000000004
	.quad	0x4013e839042d8c2a              # double 4.9767799999999998
	.quad	0x4016da1f4b1ee243              # double 5.7130099999999997
	.quad	0x401f80e0a84be404              # double 7.8758569999999999
	.quad	0x400c1b66f9335d25              # double 3.5133800000000002
	.quad	0x400f8c4e7253da73              # double 3.9435090000000002
	.quad	0x4013bc4c9c90c4df              # double 4.9338860000000002
	.quad	0x401d9f177a7008a7              # double 7.4053630000000004
	.quad	0x4018bb3c81908e58              # double 6.1828479999999999
	.quad	0x3fc2369fcf3dc055              # double 0.142292
	.quad	0x401296440f238972              # double 4.646744
	.quad	0x3ffd959f6ec5b079              # double 1.849029
	.quad	0x400853d188f42fe8              # double 3.0409269999999999
	.quad	0x4010f6e4c0df58c1              # double 4.2411070000000004
	.quad	0x3fe6162f166e008f              # double 0.69020800000000004
	.quad	0x40078bbba55d1c3b              # double 2.9432290000000001
	.quad	0x3fe124f440af1cb9              # double 0.53576100000000004
	.quad	0x40009c65c70435f0              # double 2.0763660000000002
	.quad	0x401cf754f3775b81              # double 7.2415349999999998
	.quad	0x400f85004fb1183b              # double 3.9399419999999998
	.quad	0x40098432ca57a787              # double 3.1895500000000001
	.quad	0x3ffb65109070fbec              # double 1.7121740000000001
	.quad	0x4014503254e6e222              # double 5.0783170000000002
	.quad	0x3faa7bf61aa3f035              # double 0.051727000000000002
	.quad	0x401d0c68a936c58f              # double 7.2621180000000001
	.quad	0x400eaaf922962cfe              # double 3.8334830000000002
	.quad	0x3ff406a1a500d5e9              # double 1.251619
	.quad	0x400dc0ad8a11665a              # double 3.7190810000000001
	.quad	0x401fe5e1c15097c8              # double 7.9744939999999999
	.quad	0x3fe9618ce2d1f1d0              # double 0.79315800000000003
	.quad	0x3ff5c02afdda8bd2              # double 1.359416
	.quad	0x402328d8a979e16d              # double 9.5797779999999992
	.quad	0x40218ee653868fd2              # double 8.7791010000000007
	.quad	0x40204fc19c17225b              # double 8.1557739999999992
	.quad	0x40222e56cd6c2efd              # double 9.0905059999999995
	.quad	0x3ff40cc575c0767d              # double 1.253118
	.quad	0x4022036f19934efd              # double 9.0067070000000005
	.quad	0x4017494c01605250              # double 5.8215789999999998
	.quad	0x40224122d948dc12              # double 9.1272190000000002
	.quad	0x401f26bebe1650a4              # double 7.7878369999999997
	.quad	0x3fe0a1511dffc548              # double 0.51969200000000004
	.quad	0x40133295e9e1b08a              # double 4.7994000000000003
	.quad	0x4016065e02ea960b              # double 5.5062179999999996
	.quad	0x3ff186a4ca4f440b              # double 1.095372
	.quad	0x401c8e02ea960b70              # double 7.1386830000000003
	.quad	0x401a6714fce746cc              # double 6.6006660000000004
	.quad	0x400e2f75d9a0f0a6              # double 3.773174
	.quad	0x40181c011d3671ac              # double 6.0273479999999999
	.quad	0x3ff59e364bec679d              # double 1.351126
	.quad	0x401b902e6644d877              # double 6.8908019999999999
	.quad	0x40107854cdb7ae58              # double 4.1175110000000004
	.quad	0x3f51622813448063              # double 0.0010610000000000001
	.quad	0x401834940bbb1f25              # double 6.0513459999999997
	.quad	0x400cb49e8815e397              # double 3.588193
	.quad	0x3ff965b317efe0ce              # double 1.587329
	.quad	0x4000cde3b8a19c9d              # double 2.1005319999999998
	.quad	0x3fd72cbea4ebdd33              # double 0.36210599999999998
	.quad	0x401137f8012dfd69              # double 4.3046569999999997
	.quad	0x40174b66b6177ea2              # double 5.8236340000000002
	.quad	0x40146b723ee1bd1f              # double 5.1049280000000001
	.quad	0x3fd99752977c88e8              # double 0.39986100000000002
	.quad	0x40239fa0f9096bba              # double 9.8117750000000008
	.quad	0x3ff21f87f023e9ea              # double 1.132698
	.quad	0x3ffa5e8e60807358              # double 1.648085
	.quad	0x4008ccd5b6805a2d              # double 3.1000169999999998
	.quad	0x400ca27f1b691212              # double 3.5793439999999999
	.quad	0x3ff6b13165d39970              # double 1.4182600000000001
	.quad	0x4020ea17b0f6ad71              # double 8.4572120000000002
	.quad	0x3ffde7e0ef99806f              # double 1.869111
	.quad	0x4014ea5d6bebe165              # double 5.228872
	.quad	0x402191142b302f73              # double 8.7833570000000005
	.quad	0x40230f94855da273              # double 9.5304300000000008
	.quad	0x401e85375c8d9f90              # double 7.6300939999999997
	.quad	0x401a154f3775b813              # double 6.52081
	.quad	0x3ffcd1782d38476f              # double 1.80114
	.quad	0x40201aad81adea89              # double 8.0521049999999992
	.quad	0x401072eb5f5f0b28              # double 4.1122259999999997
	.quad	0x401fdb3d4ae429e1              # double 7.9641010000000003
	.quad	0x4016707d4e09784f              # double 5.6098530000000002
	.quad	0x3ff18e30446b69db              # double 1.0972139999999999
	.quad	0x4021d08e15011905              # double 8.9073340000000005
	.quad	0x3ff54e28ed5f138c              # double 1.331582
	.quad	0x3fe1c901d19157ac              # double 0.55578700000000003
	.quad	0x3fdc769ec2ce464a              # double 0.44474000000000002
	.quad	0x401cd6013660e51d              # double 7.2089889999999999
	.quad	0x4010ed944aa53fc0              # double 4.232011
	.quad	0x40166774aba38759              # double 5.6010309999999999
	.quad	0x401822b0a6fc58ac              # double 6.0338770000000004
	.quad	0x4015d8bf3bea91da              # double 5.4616670000000003
	.quad	0x3ff91f0c34c1a8ac              # double 1.5700799999999999
	.quad	0x4020fa19eb6390c9              # double 8.4884789999999999
	.quad	0x4020592c49342678              # double 8.1741659999999996
	.quad	0x4012422d5171e29b              # double 4.5646259999999996
	.quad	0x401e60791c4b9021              # double 7.5942119999999997
	.quad	0x4014629e90795f67              # double 5.0963079999999996
	.quad	0x401a5e9bbf0dc769              # double 6.5923910000000001
	.quad	0x400554ff0025bfad              # double 2.6665019999999999
	.quad	0x3fda4c37e6f71a7e              # double 0.41090199999999999
	.quad	0x4023159cf13cee9e              # double 9.5422130000000003
	.quad	0x4012984449dbec25              # double 4.6486980000000004
	.quad	0x4010aee30caa326e              # double 4.1707879999999999
	.quad	0x402011ff92f2b66b              # double 8.0351529999999993
	.quad	0x400a00f776c4827b              # double 3.2504719999999998
	.quad	0x40152316a055757d              # double 5.2842659999999997
	.quad	0x4022d8b652370479              # double 9.4232659999999999
	.quad	0x3feade76427c7c52              # double 0.83965599999999996
	.quad	0x3fa9d8c6d612c6ac              # double 0.050481999999999999
	.quad	0x400567631b584b1b              # double 2.6754820000000001
	.quad	0x40043c06e19b90eb              # double 2.5293100000000002
	.quad	0x400723d35eb7457c              # double 2.892493
	.quad	0x3ffaf81b64e05469              # double 1.685573
	.quad	0x4023a845564b6630              # double 9.8286540000000002
	.quad	0x3ff6639b456b441c              # double 1.3993180000000001
	.quad	0x401ee2fcac8e68e4              # double 7.7216670000000001
	.quad	0x40224db1a6d698fe              # double 9.1517459999999993
	.quad	0x402204a89fc6da45              # double 9.0090990000000009
	.quad	0x400890e1b4bb5e0f              # double 3.0707429999999998
	.quad	0x3fe32f294dd72368              # double 0.59950700000000001
	.quad	0x40170399b2c40d0b              # double 5.7535160000000003
	.quad	0x40181e6d15ad106f              # double 6.0297130000000001
	.quad	0x400223f4eca686e8              # double 2.267557
	.quad	0x4016c582dbe7f2c3              # double 5.692882
	.quad	0x400400ee8d10f51b              # double 2.5004550000000001
	.quad	0x401fe6b2f23033a4              # double 7.9752919999999996
	.quad	0x4018a5604189374c              # double 6.1615000000000002
	.quad	0x401daabc5154866a              # double 7.4167339999999999
	.quad	0x3fd23e8dda48b652              # double 0.28506799999999999
	.quad	0x401e4c743201040c              # double 7.574662
	.quad	0x401cd102795703f3              # double 7.2041110000000002
	.quad	0x3fa97f62b6ae7d56              # double 0.049799999999999997
	.quad	0x3fd4e221c8a7a41e              # double 0.32630199999999998
	.quad	0x3fe400cf9e3864cb              # double 0.62509899999999996
	.quad	0x402181ac79702e66              # double 8.7532689999999995
	.quad	0x3fe4d07a6bd6e8b0              # double 0.65044900000000005
	.quad	0x402188bed740c415              # double 8.7670809999999992
	.quad	0x401f12e9ccb7d417              # double 7.7684699999999997
	.quad	0x40121fd71b046845              # double 4.5310940000000004
	.quad	0x3ff8d0092ccf6be3              # double 1.5507899999999999
	.quad	0x4021aa17d2849cb2              # double 8.8322129999999994
	.quad	0x40182168f8e7ddca              # double 6.0326269999999997
	.quad	0x400b4bcf0b6b6e0d              # double 3.4120159999999999
	.quad	0x401f9ffda4052d66              # double 7.9062409999999996
	.quad	0x4000df5c6c11a112              # double 2.1090629999999999
	.quad	0x3ff1190c0ad03d9b              # double 1.0686150000000001
	.quad	0x3ff4f92d1287c201              # double 1.3108340000000001
	.quad	0x4017fdedf1e0828c              # double 5.9979779999999998
	.quad	0x4016eecc3e3193f7              # double 5.7332010000000002
	.quad	0x4007d1b4fe79ee03              # double 2.9773960000000002
	.quad	0x400643b3e9a6f827              # double 2.783058
	.quad	0x401fab3e5753a3ec              # double 7.91723
	.quad	0x3fff0193b3a68b1a              # double 1.9378850000000001
	.quad	0x401c67852f7f498c              # double 7.1010939999999998
	.quad	0x3fc27210be9424e6              # double 0.14410600000000001
	.quad	0x40190e3193f6c26a              # double 6.2638610000000003
	.quad	0x3ff4b6ac647778dd              # double 1.2945979999999999
	.quad	0x3fc8f640639d5e4a              # double 0.19501499999999999
	.quad	0x4020f50a67620ee9              # double 8.4785950000000003
	.quad	0x401869ecf6380022              # double 6.1034430000000004
	.quad	0x3fea638a7e73a366              # double 0.82465100000000002
	.quad	0x400e1426fe718a87              # double 3.7598400000000001
	.quad	0x4020a65cd4ed2cbf              # double 8.3249270000000006
	.quad	0x401b45bbbe878fac              # double 6.8180990000000001
	.quad	0x3ffd95e071c53f3a              # double 1.849091
	.quad	0x401f9c810a569b17              # double 7.9028359999999997
	.quad	0x40222c7f13059642              # double 9.0869070000000001
	.quad	0x4002ef1cb89d6adf              # double 2.3667539999999998
	.quad	0x400afa6efc371da3              # double 3.3722819999999998
	.quad	0x401d4ce358298cc1              # double 7.3250859999999998
	.quad	0x3fe1fbb517a46174              # double 0.56197600000000003
	.quad	0x401ef294141e9af6              # double 7.7368930000000002
	.quad	0x3fe1aa7ded6ba8c6              # double 0.55206200000000005
	.quad	0x40235b1422ccb3a2              # double 9.6778879999999994
	.quad	0x40200b0a0b1bbcf5              # double 8.0215610000000002
	.quad	0x4016dbe6a337a80d              # double 5.714747
	.quad	0x401a1b00bcbe61d0              # double 6.52637
	.quad	0x4012e18e757928e1              # double 4.7202700000000002
	.quad	0x4023cce874c8ffb9              # double 9.9002110000000005
	.quad	0x40128fb6134ce3de              # double 4.6403429999999997
	.quad	0x4015df56a7ac81d4              # double 5.4681040000000003
	.quad	0x40146e9c886162f1              # double 5.1080189999999996
	.quad	0x3ffa6836eb4e9814              # double 1.6504430000000001
	.quad	0x3ff6e4c1ebc83a97              # double 1.430849
	.quad	0x402334256bca5376              # double 9.6018480000000004
	.quad	0x40210d79d0a67621              # double 8.5263200000000001
	.quad	0x401e3748a159817c              # double 7.5539880000000004
	.quad	0x3fd732db1e9f2778              # double 0.362479
	.quad	0x4015cc85c24c404a              # double 5.4497289999999996
	.quad	0x3fe150b0f27bb2ff              # double 0.54110000000000003
	.quad	0x4006029f16b11c6d              # double 2.7512799999999999
	.quad	0x402361b62c77574f              # double 9.6908429999999992
	.quad	0x4012d01754b05b7d              # double 4.703214
	.quad	0x4022724aada33bda              # double 9.2232260000000004
	.quad	0x402043111f0c34c2              # double 8.1309900000000006
	.quad	0x401b9b26bf8769ec              # double 6.9015149999999998
	.quad	0x4014f921ccd96207              # double 5.2432930000000004
	.quad	0x40199f5be5d9e40d              # double 6.4056240000000004
	.quad	0x401034898f605ab4              # double 4.0513060000000003
	.quad	0x3fdc2de00d1b7176              # double 0.44030000000000002
	.quad	0x4014dabb01c92ddc              # double 5.2136040000000001
	.quad	0x3fbcab606b7aa25e              # double 0.11199000000000001
	.quad	0x40223b6262cba733              # double 9.1159850000000002
	.quad	0x40116ee6fb4c3c19              # double 4.3583030000000003
	.quad	0x40032ef566490a35              # double 2.397929
	.quad	0x40238e3c74fb54a0              # double 9.7778050000000007
	.quad	0x401b85d4e8fb00bd              # double 6.8806950000000002
	.quad	0x40202a69df97aaac              # double 8.0828389999999998
	.quad	0x4017447ae147ae14              # double 5.8168749999999996
	.quad	0x3ff5fe09bb6aa4ba              # double 1.3745210000000001
	.quad	0x400ea3d0bfa09460              # double 3.8299880000000002
	.quad	0x400f99d12cadddf4              # double 3.9501059999999999
	.quad	0x4017ae99e94ab1d5              # double 5.920509
	.quad	0x401b6414a4d2b2c0              # double 6.8477350000000001
	.quad	0x4013ba747d805e5f              # double 4.9320849999999998
	.quad	0x4013475bc44bf4cb              # double 4.8196859999999999
	.quad	0x401a96861e92923e              # double 6.6469959999999997
	.quad	0x40010a63305100a4              # double 2.1300720000000002
	.quad	0x4020a1d6f112fd33              # double 8.3160930000000004
	.quad	0x401e3a5b9628cbd1              # double 7.5569899999999998
	.quad	0x4018aff4ba51a006              # double 6.1718320000000002
	.quad	0x4021f93708aac96d              # double 8.9867480000000004
	.quad	0x401ee65ba6efc372              # double 7.7249590000000001
	.quad	0x401dc2c6ac215b9a              # double 7.4402109999999997
	.quad	0x3ffbff583a53b8e5              # double 1.7498400000000001
	.quad	0x400e369fcf3dc055              # double 3.776672
	.quad	0x400c97ec3547e069              # double 3.5741809999999998
	.quad	0x401a2354c122749f              # double 6.534503
	.quad	0x4021f7820a30db6a              # double 8.9834139999999998
	.quad	0x401cd4f4c6e6d9be              # double 7.2079649999999997
	.quad	0x4017549adc8fb86f              # double 5.8326219999999998
	.quad	0x40126ca1cef240fb              # double 4.6060860000000003
	.quad	0x4021b658a32f4491              # double 8.8561449999999997
	.quad	0x3fd7e96c3fc43b2e              # double 0.37362200000000001
	.quad	0x4019e27b2cc70868              # double 6.4711730000000003
	.quad	0x4018c76427c7c526              # double 6.1947179999999999
	.quad	0x4009db4edb2f661f              # double 3.232084
	.quad	0x3febd81cf7878b7a              # double 0.87013099999999999
	.quad	0x400b2a25529fe005              # double 3.3955790000000001
	.quad	0x401d81f8e3ac0c63              # double 7.3769260000000001
	.quad	0x40130a686e7e62dc              # double 4.7601639999999996
	.quad	0x401645b0ff10ecb7              # double 5.5680579999999997
	.quad	0x40206c2b0ea18373              # double 8.2112660000000002
	.quad	0x401659a459103c8e              # double 5.5875409999999999
	.quad	0x3ff92a9e6eeb7026              # double 1.572905
	.quad	0x3feb00ecfa69be0a              # double 0.84386300000000003
	.quad	0x4023a4e3ffef3908              # double 9.8220519999999993
	.quad	0x401f0bb3c81908e6              # double 7.7614280000000004
	.quad	0x3fc0662bae03b3ea              # double 0.12811800000000001
	.quad	0x400a9dc054ef459e              # double 3.3270270000000002
	.quad	0x3fe4021294573a79              # double 0.62525299999999995
	.quad	0x4020a89cc319c5a4              # double 8.3293210000000001
	.quad	0x402241e9af5ba2be              # double 9.128736
	.quad	0x4020209c7ffde721              # double 8.0636939999999999
	.quad	0x401efd3b6cbd987c              # double 7.7472969999999997
	.quad	0x400b4ccf6be37de9              # double 3.4125049999999999
	.quad	0x3fc096dd26b723ee              # double 0.129604
	.quad	0x4017baafff36ac64              # double 5.9323119999999996
	.quad	0x401f25629d8409e5              # double 7.7865089999999996
	.quad	0x401ece6299524bfd              # double 7.7015479999999998
	.quad	0x400ff438d1d8a548              # double 3.9942489999999999
	.quad	0x4023bdc1e7967caf              # double 9.8706200000000006
	.quad	0x401e92c0a4a05dd9              # double 7.643313
	.quad	0x401a91d19157abb9              # double 6.6424010000000004
	.quad	0x400e6a875d56f32c              # double 3.8020160000000001
	.quad	0x3fe38e7ff583a53c              # double 0.61114500000000005
	.quad	0x4013e1437c5692b4              # double 4.9699840000000002
	.quad	0x401286cf41f212d7              # double 4.6316499999999996
	.quad	0x4011927807789a46              # double 4.3930360000000004
	.quad	0x400b028672756862              # double 3.376233
	.quad	0x40179e889c1b5419              # double 5.9048179999999997
	.quad	0x3ff9e40746455eaf              # double 1.618171
	.quad	0x40138dda8bd230ba              # double 4.8885290000000001
	.quad	0x40202fc5cdd50a89              # double 8.0933060000000001
	.quad	0x402044dcca70d1fa              # double 8.1344969999999996
	.quad	0x4009a2f837b4a234              # double 3.2045750000000002
	.quad	0x401383b688bda943              # double 4.8786259999999997
	.quad	0x40235126c7eae5bd              # double 9.6584990000000008
	.quad	0x401df0b417ca2121              # double 7.4850620000000001
	.quad	0x400e31c970f7b9e0              # double 3.7743099999999998
	.quad	0x401192b66b6177ea              # double 4.3932739999999999
	.quad	0x40135cd31769a911              # double 4.840649
	.quad	0x40144842b734b513              # double 5.0705669999999996
	.quad	0x3ff96ff6d330941d              # double 1.5898350000000001
	.quad	0x401a4cb1cc964628              # double 6.574897
	.quad	0x401bec7820a30db7              # double 6.9809270000000003
	.quad	0x401bff5c28f5c28f              # double 6.9993749999999997
	.quad	0x3fb45846e8f29d41              # double 0.079472000000000001
	.quad	0x4011d20791c4b902              # double 4.4551069999999999
	.quad	0x400c4b074a771c97              # double 3.536635
	.quad	0x4012aabf33871609              # double 4.6667449999999997
	.quad	0x4012c2f09d8c6d61              # double 4.6903709999999998
	.quad	0x400507a41e57d9dc              # double 2.6287310000000002
	.quad	0x3fe8625a682b6284              # double 0.76200599999999996
	.quad	0x4018b126e978d4fe              # double 6.173
	.quad	0x4006c6772d5e071c              # double 2.8469069999999999
	.quad	0x401bc4ccee5abc0e              # double 6.9421879999999998
	.quad	0x4006ae60807357e6              # double 2.8351449999999998
	.quad	0x401f75fbb517a461              # double 7.8652179999999995
	.quad	0x400ad208e1501190              # double 3.3525559999999999
	.quad	0x401c11aa3f034b0e              # double 7.0172509999999999
	.quad	0x400a6412cf0f9d2c              # double 3.298864
	.quad	0x400e4ac3a860dcba              # double 3.7865060000000001
	.quad	0x401a48b588e368f1              # double 6.5710050000000004
	.quad	0x401cc0b5ed8d36b5              # double 7.1881940000000002
	.quad	0x40102c68a936c58f              # double 4.0433680000000001
	.quad	0x4010f15bdd76683c              # double 4.2357019999999999
	.quad	0x40102b0318b9346a              # double 4.0420040000000004
	.quad	0x4023bc0e9d51b4fe              # double 9.8672989999999992
	.quad	0x3fa5208e15011905              # double 0.041264000000000002
	.quad	0x401a9b866e43aa7a              # double 6.6518800000000002
	.quad	0x40181fcf80dc3372              # double 6.0310649999999999
	.quad	0x4021cae07e5a78f2              # double 8.8962439999999994
	.quad	0x400b7b4c3c18b503              # double 3.4352040000000001
	.quad	0x3fe45432873bc904              # double 0.63527800000000001
	.quad	0x40123163fdd65a14              # double 4.5482329999999997
	.quad	0x401b1295208e1501              # double 6.7681469999999999
	.quad	0x402233ffef39085f              # double 9.1015619999999995
	.quad	0x40203f31098d477c              # double 8.1234210000000004
	.quad	0x4020661e2de87097              # double 8.1994489999999995
	.quad	0x4019e349be8ff328              # double 6.4719610000000003
	.quad	0x40007a53b8e4b87c              # double 2.0597300000000001
	.quad	0x3fd9e9680e065300              # double 0.40487099999999998
	.quad	0x4012afc3b4f61672              # double 4.6716449999999998
	.quad	0x4022f04ddb5525cc              # double 9.4693439999999995
	.quad	0x40138de481f53826              # double 4.8885670000000001
	.quad	0x3ff155fdcdf69878              # double 1.083494
	.quad	0x401ec6d22424a277              # double 7.6941610000000002
	.quad	0x401e1210be9424e6              # double 7.5176420000000004
	.quad	0x401ce6916440f239              # double 7.2251640000000004
	.quad	0x40220f4b838c111b              # double 9.0298730000000003
	.quad	0x401f9c52e72da123              # double 7.90266
	.quad	0x4014ab2bba98eda2              # double 5.1671589999999998
	.quad	0x4010694812be48a6              # double 4.1028140000000004
	.quad	0x40201814d72799a2              # double 8.047034
	.quad	0x3fe7a85caafbc1ad              # double 0.73930200000000001
	.quad	0x3ff7bf572de43ed9              # double 1.4842139999999999
	.quad	0x3fd0ae9ab29e4d5e              # double 0.26065700000000003
	.quad	0x400bc065b63d3e4f              # double 3.468944
	.quad	0x3fde7635e74299d9              # double 0.47596500000000003
	.quad	0x401311be6e653869              # double 4.767328
	.quad	0x402108e757928e0d              # double 8.5173900000000007
	.quad	0x40124969e3c96894              # double 4.5716929999999998
	.quad	0x3ff1e62131a8ef78              # double 1.118684
	.quad	0x401f0dd4845132f8              # double 7.7635059999999995
	.quad	0x4020b2cf7446f9ba              # double 8.3492390000000007
	.quad	0x401de66772d5e072              # double 7.4750040000000002
	.quad	0x4018859d12cadddf              # double 6.1304819999999998
	.quad	0x3fe84ed2cbea4ebe              # double 0.75962200000000002
	.quad	0x4011307dd4413554              # double 4.2973549999999996
	.quad	0x401d8a01abd1aa82              # double 7.3847719999999999
	.quad	0x400eaa3e7d135116              # double 3.8331270000000002
	.quad	0x4010643bb40b34e7              # double 4.0978839999999996
	.quad	0x3fd3168f8e7ddca5              # double 0.29825200000000002
	.quad	0x4017b11d798d8a98              # double 5.9229640000000003
	.quad	0x4023934a44c7b02d              # double 9.7876759999999993
	.quad	0x3ff7288df37329c3              # double 1.4474009999999999
	.quad	0x3ff7eb12d3415b14              # double 1.494891
	.quad	0x40114148fd9fd36f              # double 4.3137549999999996
	.quad	0x3fe890a569b17482              # double 0.76765700000000003
	.quad	0x3fc7a79fec99f1ae              # double 0.184803
	.quad	0x3ff2095af294dd72              # double 1.127284
	.quad	0x40131c0fcb4f1e4b              # double 4.7774039999999998
	.quad	0x400ac08f21709310              # double 3.344023
	.quad	0x3ff22d2dcb1465e9              # double 1.1360300000000001
	.quad	0x4020f1d798d8a97a              # double 8.4723480000000002
	.quad	0x40203dc9a34ca0c3              # double 8.1206790000000009
	.quad	0x3ff45a20ddc61954              # double 1.2720039999999999
	.quad	0x4021612d1287c201              # double 8.6897970000000004
	.quad	0x4023a66fb4c3c18b              # double 9.8250709999999994
	.quad	0x4021bd25247cb70b              # double 8.8694240000000004
	.quad	0x4007ebd2b6f19935              # double 2.990148
	.quad	0x402281743e963dc5              # double 9.2528400000000008
	.quad	0x4016643aa79bbadc              # double 5.59788
	.quad	0x4020246cfc829cfe              # double 8.0711440000000003
	.quad	0x401857fb69984a0e              # double 6.0859199999999998
	.quad	0x401522235b4edb2f              # double 5.2833379999999996
	.quad	0x3fe7f1fff79c8430              # double 0.74829100000000004
	.quad	0x401142b020c49ba6              # double 4.3151250000000001
	.quad	0x40015a6bd6e8af81              # double 2.1691509999999998
	.quad	0x402272f23033a472              # double 9.2245039999999996
	.quad	0x4007a05bc01a36e3              # double 2.9533
	.quad	0x400881ed5ae1cde6              # double 3.0634410000000001
	.quad	0x400a81c92ddbdb5e              # double 3.3133720000000002
	.quad	0x400b6c0485a0be51              # double 3.427743
	.quad	0x401520d38cda6e76              # double 5.282057
	.quad	0x40222a8b2a6b0d95              # double 9.0830929999999999
	.quad	0x4000a13f4a98aa86              # double 2.0787339999999999
	.quad	0x3feb1782d38476f3              # double 0.84662000000000004
	.quad	0x4023f0bdec5f394b              # double 9.9701989999999991
	.quad	0x400cb5393250b524              # double 3.5884879999999999
	.quad	0x3fefa7a20578e5c5              # double 0.989213
	.quad	0x400cb54c122749f1              # double 3.588524
	.quad	0x3fec235f80991794              # double 0.87931800000000004
	.quad	0x4015ab04ab606b7b              # double 5.4170100000000003
	.quad	0x3ff23fc7607c419a              # double 1.140571
	.quad	0x402068c5eb313be2              # double 8.2046349999999997
	.quad	0x4016e1a5870da5db              # double 5.7203580000000001
	.quad	0x400d52ef911cf356              # double 3.6654960000000001
	.quad	0x40221c1871e6cd29              # double 9.0548739999999999
	.quad	0x400f322b7baecd08              # double 3.8994970000000002
	.quad	0x40234a1986b9c305              # double 9.6447260000000003
	.quad	0x401ee637bd05af6c              # double 7.7248219999999996
	.quad	0x3ffbfbc1acde19fc              # double 1.748964
	.quad	0x401aeff327aa68f5              # double 6.7343260000000003
	.quad	0x401e9cff21b3aeef              # double 7.6533170000000003
	.quad	0x3ff2099bf5946c33              # double 1.127346
	.quad	0x3ff2de279dd3bafe              # double 1.1792370000000001
	.quad	0x4009d07852f7f499              # double 3.2267920000000001
	.quad	0x40235f5771001d5c              # double 9.6862139999999996
	.quad	0x40203b54c122749f              # double 8.1158809999999999
	.quad	0x400e6c79f666234b              # double 3.8029670000000002
	.quad	0x400b783947496aad              # double 3.4337029999999999
	.quad	0x40220b1c0010c6f8              # double 9.0216980000000007
	.quad	0x401b6624dd2f1aa0              # double 6.8497500000000002
	.quad	0x401a650ca1cef241              # double 6.598681
	.quad	0x401e270a808c825a              # double 7.5381260000000001
	.quad	0x40160c4199fe4367              # double 5.5119689999999997
	.quad	0x40172bebe1650a46              # double 5.7928920000000002
	.quad	0x3ff88a1f080303c0              # double 1.5337209999999999
	.quad	0x4012fb50f40e5a36              # double 4.7454260000000001
	.quad	0x4020cd887ebf22c0              # double 8.4014319999999998
	.quad	0x40039c8e25c810a5              # double 2.4514429999999998
	.quad	0x4010119157abb880              # double 4.0171559999999999
	.quad	0x401a5efe4ffc9796              # double 6.5927670000000003
	.quad	0x4017c12dfd694ccb              # double 5.9386520000000003
	.quad	0x401978ee6b8305d9              # double 6.3680969999999997
	.quad	0x401976fc158fb43e              # double 6.3661960000000004
	.quad	0x4022705e5f30e7ff              # double 9.2194699999999994
	.quad	0x4020f207b352a844              # double 8.4727150000000008
	.quad	0x4009c18a43bb40b3              # double 3.2195019999999999
	.quad	0x4023fb927d45a5fc              # double 9.9913519999999991
	.quad	0x401386eeb702602d              # double 4.8817700000000004
	.quad	0x400c9538ac18f81f              # double 3.5728620000000002
	.quad	0x40007002e2328f9f              # double 2.0546929999999999
	.quad	0x4021172862f5989e              # double 8.5452300000000001
	.quad	0x3ff1db61bb05faec              # double 1.1160600000000001
	.quad	0x40211d77d955714c              # double 8.5575550000000006
	.quad	0x4015f213e3e29308              # double 5.4864040000000003
	.quad	0x4023166b6177ea1c              # double 9.5437879999999992
	.quad	0x4011616c1e364bec              # double 4.3451389999999996
	.quad	0x4020e55da272862f              # double 8.4479799999999994
	.quad	0x401081a005c4651f              # double 4.1265869999999998
	.quad	0x4008050a45d41fa7              # double 3.0024609999999998
	.quad	0x40141ea897635e74              # double 5.0299399999999999
	.quad	0x3ff83eef5ec80c74              # double 1.5153650000000001
	.quad	0x401457c7820a30db              # double 5.0857219999999996
	.quad	0x401215d28d002e23              # double 4.5213109999999999
	.quad	0x40138cfd4bf0995b              # double 4.8876850000000003
	.quad	0x40190954eb13dfb1              # double 6.2591130000000001
	.quad	0x40211fc0f4517614              # double 8.5620189999999993
	.quad	0x4017609b30728e93              # double 5.8443420000000001
	.quad	0x4000eb502ababead              # double 2.1148989999999999
	.quad	0x4012a1212513b5bf              # double 4.6573529999999996
	.quad	0x3fe968af81626b2f              # double 0.79402899999999998
	.quad	0x4020a3cec84f8f8a              # double 8.3199369999999995
	.quad	0x4006c6f049a9973e              # double 2.8471380000000002
	.quad	0x401bb69c66d373b0              # double 6.928331
	.quad	0x40009e30014f8b59              # double 2.0772400000000002
	.quad	0x400f420578e5c4eb              # double 3.9072369999999998
	.quad	0x4020b0bd230b9dc3              # double 8.3451930000000001
	.quad	0x401883d816aceaaf              # double 6.1287539999999998
	.quad	0x401a6f88333fc86d              # double 6.6089180000000001
	.quad	0x4022ee51f3e89a89              # double 9.4654690000000005
	.quad	0x401fab7f9d6f1130              # double 7.9174790000000002
	.quad	0x400d2852b4d8ba41              # double 3.6446890000000001
	.quad	0x4016a2b51bd61f5c              # double 5.6588940000000001
	.quad	0x4020a30270f38822              # double 8.3183779999999992
	.quad	0x40038470a808c826              # double 2.4396680000000002
	.quad	0x401dd8ce703afb7f              # double 7.4617250000000004
	.quad	0x3fedb0e1b4bb5e0f              # double 0.92784199999999994
	.quad	0x401cf644523f67f5              # double 7.2404950000000001
	.quad	0x40161de7ea5f84cb              # double 5.5292050000000001
	.quad	0x4023de7c49fd7a14              # double 9.9345420000000004
	.quad	0x402148d306a2b170              # double 8.6422349999999994
	.quad	0x4023cdd1c3ac929b              # double 9.9019910000000006
	.quad	0x401987dc7abfb9bf              # double 6.3826770000000002
	.quad	0x401cd8fde2ef4e01              # double 7.2119059999999999
	.quad	0x401941d3aa369fcf              # double 6.3142839999999998
	.quad	0x401d8f66a5508701              # double 7.3900399999999999
	.quad	0x40193e4c942d490e              # double 6.3108389999999996
	.quad	0x4021b24edf612407              # double 8.8482579999999995
	.quad	0x401f9ec0f88333fd              # double 7.9050330000000004
	.quad	0x3ffb64ce8101f31f              # double 1.7121109999999999
	.quad	0x3fd3c5a3e39f7729              # double 0.30893799999999999
	.quad	0x4019e1e8e6080735              # double 6.4706149999999996
	.quad	0x401db47ae147ae14              # double 7.4262499999999996
	.quad	0x402081f340d4dc66              # double 8.2538090000000004
	.quad	0x3fe168a936c58eeb              # double 0.54402600000000001
	.quad	0x4018148a159817b9              # double 6.0200579999999997
	.quad	0x40174fd08d4bad7d              # double 5.8279439999999996
	.quad	0x401b3672fba01eef              # double 6.8031730000000001
	.quad	0x402195b3bfb58d15              # double 8.7923869999999997
	.quad	0x4019cc8fb86f47b6              # double 6.4497669999999996
	.quad	0x402220867ad8e432              # double 9.0635259999999995
	.quad	0x401068d60a633051              # double 4.102379
	.quad	0x4021c75e41d4b6a6              # double 8.8893909999999998
	.quad	0x401f3f77f27fe4bd              # double 7.8119810000000002
	.quad	0x4014e48301a79fed              # double 5.2231560000000004
	.quad	0x4010ab8d82342246              # double 4.1675319999999996
	.quad	0x401111f57b41bfbe              # double 4.2675380000000001
	.quad	0x400d1e39f77292c5              # double 3.6397590000000002
	.quad	0x4021cd9c49774257              # double 8.9015830000000005
	.quad	0x4005d0c3d25247cb              # double 2.7269359999999998
	.quad	0x40157a0168b5cbff              # double 5.3691459999999998
	.quad	0x400ca8344c37e6f7              # double 3.582131
	.quad	0x4000d1b93037d630              # double 2.1024039999999999
	.quad	0x4023a1572580c309              # double 9.815118
	.quad	0x4023a0ace24bba13              # double 9.8138190000000005
	.quad	0x401a3fbdad7518b1              # double 6.5622470000000002
	.quad	0x401c4474d9c6b053              # double 7.0668519999999999
	.quad	0x401620bbf50e3476              # double 5.5319669999999999
	.quad	0x3fd8a350d2806af4              # double 0.38496799999999998
	.quad	0x3ff24d8cb07d0aee              # double 1.1439330000000001
	.quad	0x401b5f0e4da09cc3              # double 6.8428279999999999
	.quad	0x4023c79a2834d270              # double 9.8898480000000006
	.quad	0x40194a71151611ba              # double 6.3226969999999998
	.quad	0x4010b00d1b71758e              # double 4.1719249999999999
	.quad	0x400696b8f9b13166              # double 2.8235950000000001
	.quad	0x4016ca2c669057d1              # double 5.6974349999999996
	.quad	0x4022c8f062d40aaf              # double 9.3924590000000005
	.quad	0x3ffdcd9e83e425af              # double 1.8627
	.quad	0x400bf7995ee136e7              # double 3.4958979999999999
	.quad	0x40097a836eb4e981              # double 3.1848209999999999
	.quad	0x3fffbcb0c026cc1d              # double 1.9835670000000001
	.quad	0x401c176af89c5e70              # double 7.022869
	.quad	0x4008af21f6cacd18              # double 3.0855139999999999
	.quad	0x4022667a311e85fd              # double 9.200151
	.quad	0x4021231f8a0902de              # double 8.5686
	.quad	0x3fedd1f601797cc4              # double 0.93188000000000004
	.quad	0x402325c0fcb4f1e5              # double 9.5737380000000005
	.quad	0x401f63d5347a5b10              # double 7.8474930000000001
	.quad	0x3fdf4ccee5abc0e4              # double 0.48906300000000003
	.quad	0x3ff486e5cd4ed2cc              # double 1.282934
	.quad	0x3ffab7a919695d92              # double 1.6698390000000001
	.quad	0x400aae7924af0bf2              # double 3.3351920000000002
	.quad	0x4012bfcbd556084a              # double 4.6873009999999997
	.quad	0x402235495182a993              # double 9.1040749999999999
	.quad	0x401e11e0c5a8155d              # double 7.5174589999999996
	.quad	0x400469e34330d738              # double 2.5517029999999998
	.quad	0x4009c249a133c1ce              # double 3.2198669999999998
	.quad	0x40072fc69728a611              # double 2.8983279999999998
	.quad	0x3fefb18dac258d58              # double 0.99042399999999997
	.quad	0x401fb93708aac96d              # double 7.9308740000000002
	.quad	0x400d80780fdc1616              # double 3.687729
	.quad	0x401dc5e95b78cc9a              # double 7.4432729999999996
	.quad	0x401e3748e4755ffe              # double 7.5539889999999996
	.quad	0x4015b702602c9082              # double 5.4287200000000002
	.quad	0x4003ded84d338f7a              # double 2.4838110000000002
	.quad	0x4011688765ba6efc              # double 4.3520789999999998
	.quad	0x4020b8d1b71758e2              # double 8.3609749999999998
	.quad	0x4012e0114d2f5dbc              # double 4.7188160000000003
	.quad	0x40077fa5d28d002e              # double 2.9373279999999999
	.quad	0x4000f6b3354c1227              # double 2.1204589999999999
	.quad	0x3fff5e34330d7386              # double 1.960499
	.quad	0x402392bef06b3786              # double 9.7866129999999991
	.quad	0x3fe111d798d8a97a              # double 0.53342800000000001
	.quad	0x3fff9c74751ce28f              # double 1.975697
	.quad	0x3fdf244e93e1c9b4              # double 0.486591
	.quad	0x401ebb34e7685986              # double 7.6828190000000003
	.quad	0x400bddb76b3bb83d              # double 3.48326
	.quad	0x4019dbd1aa821f2a              # double 6.4646670000000004
	.quad	0x4015dd4024b33db0              # double 5.4660650000000004
	.quad	0x401613cbc48f10aa              # double 5.5193320000000003
	.quad	0x3ff1c12f09d8c6d6              # double 1.109664
	.quad	0x401c2efa615a8deb              # double 7.0458769999999999
	.quad	0x401227839cd8127b              # double 4.5385879999999998
	.quad	0x401c10724b76f6d7              # double 7.0160609999999997
	.quad	0x40170f66e86c6584              # double 5.7650410000000001
	.quad	0x400454b7b28954a8              # double 2.541366
	.quad	0x3ff17d2849cb252d              # double 1.093056
	.quad	0x3ff8a6eb91b3f20a              # double 1.5407519999999999
	.quad	0x402195532617c1be              # double 8.7916500000000006
	.quad	0x40217b445ed4a1ad              # double 8.7407559999999993
	.quad	0x400ada048e043a21              # double 3.3564539999999998
	.quad	0x3fe426916440f239              # double 0.62970800000000005
	.quad	0x4004e0e30446b69e              # double 2.6098080000000001
	.quad	0x401c9f1b69121251              # double 7.1553779999999998
	.quad	0x401c91ef73c0c1fd              # double 7.1425150000000004
	.quad	0x40035f4eca686e7e              # double 2.4215369999999998
	.quad	0x401e5ecfe9b7bf1f              # double 7.5925900000000003
	.quad	0x40175740c4156e26              # double 5.8352079999999997
	.quad	0x40237339192641b3              # double 9.7250449999999997
	.quad	0x401de21682f94424              # double 7.4707889999999999
	.quad	0x4011ebdad7518b0d              # double 4.4803269999999999
	.quad	0x400782f1ed17c5ef              # double 2.9389379999999998
	.quad	0x3ff3ae34fc610f0f              # double 1.2300310000000001
	.quad	0x401d7c486ad2dcb1              # double 7.3713699999999998
	.quad	0x4001e3d577963993              # double 2.2362470000000001
	.quad	0x402356b851eb851f              # double 9.6693750000000004
	.quad	0x400f59d6f112fd33              # double 3.9188670000000001
	.quad	0x400e89e5e2478855              # double 3.8173330000000001
	.quad	0x4016ee04c0592104              # double 5.7324400000000004
	.quad	0x4011b2f6e82949a5              # double 4.4247699999999996
	.quad	0x3fc4bd3c36113405              # double 0.162025
	.quad	0x4023d4069e7fb268              # double 9.9141130000000003
	.quad	0x401e3a3cea6c1a05              # double 7.5568730000000003
	.quad	0x400eea8c154c985f              # double 3.864525
	.quad	0x4018bc87980f55de              # double 6.1841109999999997
	.quad	0x3ff658127b2cc708              # double 1.3965019999999999
	.quad	0x400691f1cfbb9496              # double 2.8212619999999999
	.quad	0x40170aed1394317b              # double 5.7606700000000002
	.quad	0x40093837b4a2339c              # double 3.15245
	.quad	0x4019970867ad8e43              # double 6.3974929999999999
	.quad	0x3fecb484d76ab580              # double 0.89703599999999994
	.quad	0x4008ff02c4d65e46              # double 3.124517
	.quad	0x3fea644955b4677b              # double 0.82474199999999998
	.quad	0x4011355eaee2003b              # double 4.3021190000000002
	.quad	0x40214d5b24e9c454              # double 8.6510859999999993
	.quad	0x401c47110e453d21              # double 7.069401
	.quad	0x3fdb1f2dc2b0ea18              # double 0.42377799999999999
	.quad	0x401db3a29c779a6b              # double 7.4254249999999997
	.quad	0x40136443d46b26c0              # double 4.8479150000000004
	.quad	0x3ff9cac9f2fdb8fe              # double 1.612009
	.quad	0x4008e6088d6d3b6d              # double 3.1123210000000001
	.quad	0x3ff04a0b1bbcf4e8              # double 1.0180769999999999
	.quad	0x4019e265add9c27f              # double 6.4710910000000004
	.quad	0x40130db445ed4a1b              # double 4.7633830000000001
	.quad	0x40182b7281fd9ba2              # double 6.0424290000000003
	.quad	0x4020d829f16b11c7              # double 8.4221950000000003
	.quad	0x4011306fef7c243e              # double 4.2973020000000002
	.quad	0x4018badd9c27e953              # double 6.1824859999999999
	.quad	0x401c9f6c69b5a640              # double 7.1556870000000004
	.quad	0x4020ffcf1c3265ae              # double 8.4996270000000003
	.quad	0x400f857214f0520d              # double 3.940159
	.quad	0x4020cb5781c714fd              # double 8.3971520000000002
	.quad	0x3ffa1b8348f53c58              # double 1.6317170000000001
	.quad	0x40133439de481f54              # double 4.8010020000000004
	.quad	0x4023c89e774eebf6              # double 9.8918339999999993
	.quad	0x40132785b5b70692              # double 4.7885960000000001
	.quad	0x4017ac4113c68662              # double 5.9182170000000003
	.quad	0x401c5972cd7cf5f5              # double 7.0873520000000001
	.quad	0x3fe11203a322af57              # double 0.53344899999999995
	.quad	0x401efa07f66e86c6              # double 7.7441709999999997
	.quad	0x4003a5cb35f3d7d4              # double 2.4559540000000002
	.quad	0x4015613f8db48909              # double 5.3449689999999999
	.quad	0x40025bdd76683c29              # double 2.2948559999999998
	.quad	0x4006eef4e0114d2f              # double 2.8666779999999998
	.quad	0x400bce72da122fad              # double 3.4758049999999998
	.quad	0x4023369c4545846f              # double 9.6066610000000007
	.quad	0x4017b58644523f68              # double 5.92727
	.quad	0x3ff7ae46cfc829d0              # double 1.480048
	.quad	0x400208e368f08462              # double 2.25434
	.quad	0x4008cd6d3b6cbd98              # double 3.1003059999999998
	.quad	0x402275074213a0c7              # double 9.2285710000000005
	.quad	0x400177143393ab43              # double 2.183144
	.quad	0x401388beb5b2d4d4              # double 4.88354
	.quad	0x4009843675ddd2af              # double 3.1895570000000002
	.quad	0x400ffd230b9dc2f4              # double 3.998602
	.quad	0x40233fc9ff92f2b6              # double 9.6245879999999993
	.quad	0x4013a948dc11e42e              # double 4.9153169999999999
	.quad	0x40212adc2b0ea183              # double 8.5837109999999992
	.quad	0x401f7220ff540896              # double 7.8614540000000002
	.quad	0x4016aea4a8c154ca              # double 5.6705500000000004
	.quad	0x3ff20e043a2163fe              # double 1.128422
	.quad	0x3f9558644523f67f              # double 0.020844999999999999
	.quad	0x401ee77f6b1a2a4e              # double 7.7260720000000003
	.quad	0x4018cf077ccc0379              # double 6.2021769999999998
	.quad	0x401fdbf5515054ac              # double 7.9648029999999999
	.quad	0x401b76c3b927d45a              # double 6.8659809999999997
	.quad	0x3fedac625e99e94b              # double 0.92729300000000003
	.quad	0x400303b70ef56649              # double 2.376814
	.quad	0x3ff8c3ac929aa1d7              # double 1.5477719999999999
	.quad	0x40101c2acb85a4f0              # double 4.0275069999999999
	.quad	0x3fe8dd872f33ca32              # double 0.77704200000000001
	.quad	0x4014a75968512232              # double 5.1634270000000004
	.quad	0x40227214cec41dd2              # double 9.2228150000000007
	.quad	0x40158f8ad2567989              # double 5.3901779999999997
	.quad	0x4008bc914b167ec8              # double 3.0920740000000002
	.quad	0x3ff4df83be6601bd              # double 1.3045690000000001
	.quad	0x402339882adc4c9d              # double 9.6123670000000007
	.quad	0x4001bfb7a5f41aef              # double 2.2186119999999998
	.quad	0x40211bab21815a08              # double 8.5540400000000005
	.quad	0x3ff9ebae03b3e9a7              # double 1.620039
	.quad	0x402224b5568e820e              # double 9.0716959999999993
	.quad	0x401ccfb1183b6028              # double 7.2028239999999997
	.quad	0x40101114d2f5dbba              # double 4.0166810000000002
	.quad	0x401c07a355043e53              # double 7.0074589999999999
	.quad	0x401ad6b7ed41b75a              # double 6.7096859999999996
	.quad	0x401cfdc1e7967caf              # double 7.2478100000000003
	.quad	0x3fe406b9c304ccee              # double 0.62582099999999996
	.quad	0x4022788f861a60d4              # double 9.2354699999999994
	.quad	0x40093d6adf71eaff              # double 3.154989
	.quad	0x4003dc7f77af6406              # double 2.4826649999999999
	.quad	0x3fff7b906466b1e6              # double 1.9676670000000001
	.quad	0x401777574f722e1b              # double 5.8665440000000002
	.quad	0x401403992c8c5005              # double 5.003514
	.quad	0x4020b832fcac8e69              # double 8.3597640000000002
	.quad	0x4023c34e3369b9d8              # double 9.881456
	.quad	0x4017f991361dc93f              # double 5.9937180000000003
	.quad	0x4017e8e6d15ad107              # double 5.9774430000000001
	.quad	0x40224504e618ce2d              # double 9.1348029999999998
	.quad	0x4022ac7b02d59d56              # double 9.3368760000000002
	.quad	0x4021a8fd7e45803d              # double 8.8300590000000003
	.quad	0x401e9edd8b60f1b2              # double 7.6551419999999997
	.quad	0x4010eb63d3e4ef03              # double 4.2298730000000004
	.quad	0x401b906b7aa25d8d              # double 6.8910349999999996
	.quad	0x3fae0fa15db3397e              # double 0.058713000000000001
	.quad	0x40196bb83cf2cf96              # double 6.3551950000000001
	.quad	0x4003cd2135daad60              # double 2.4751609999999999
	.quad	0x4015d405b39e279e              # double 5.4570530000000002
	.quad	0x4015026cc1ca3a4b              # double 5.2523679999999997
	.quad	0x401e50e94ee392e2              # double 7.5790150000000001
	.quad	0x401b9abf33871609              # double 6.9011199999999997
	.quad	0x400920f01fb82c2c              # double 3.1410830000000001
	.quad	0x3fd4c23b7952d235              # double 0.324355
	.quad	0x3f9a398201cd5f9a              # double 0.025610000000000001
	.quad	0x401eaaa8650e7792              # double 7.666658
	.quad	0x400f611dbca9691a              # double 3.9224199999999998
	.quad	0x401b77da61e0c5a8              # double 6.8670439999999999
	.quad	0x40137b3e5753a3ec              # double 4.870355
	.quad	0x3fe2e22e5de15ca7              # double 0.59011000000000002
	.quad	0x4020544da9003eea              # double 8.1646549999999998
	.quad	0x401cac5a3e39f773              # double 7.1683130000000004
	.quad	0x40201ff88765ba6f              # double 8.062443
	.quad	0x4016dd43d03968d7              # double 5.7160789999999997
	.quad	0x4014fb69db65ecc4              # double 5.2455210000000001
	.quad	0x4022b4f5b1c86488              # double 9.3534369999999995
	.quad	0x401a1ab3aabcd78c              # double 6.5260759999999998
	.quad	0x3ff9cb135979181a              # double 1.612079
	.quad	0x400bb004fb1183b6              # double 3.460947
	.quad	0x40237a0c282c6ef4              # double 9.7383740000000003
	.quad	0x401135870da5daf0              # double 4.3022729999999996
	.quad	0x3ff9da8262456f76              # double 1.615847
	.quad	0x4010b67a0f9096bc              # double 4.1782000000000004
	.quad	0x40158082491afc05              # double 5.3754970000000002
	.quad	0x4012fa8e2e2b8c76              # double 4.7446830000000002
	.quad	0x401fc5347a5b0ff1              # double 7.9425829999999999
	.quad	0x400566a8fc0d2c38              # double 2.6751269999999998
	.quad	0x401a9fb2aae29739              # double 6.6559549999999996
	.quad	0x400da58ab92c0618              # double 3.7058309999999999
	.quad	0x4022f7a5093964a6              # double 9.4836810000000007
	.quad	0x4005230a915379fb              # double 2.6421100000000002
	.quad	0x4018bc7325918a01              # double 6.1840330000000003
	.quad	0x40189d06bbdbe3c1              # double 6.153346
	.quad	0x3ff8f94b7b28954a              # double 1.5608629999999999
	.quad	0x3fed6bcc6c54bcf1              # double 0.91940900000000003
	.quad	0x40185b4bf8fcd680              # double 6.0891570000000002
	.quad	0x40016eafab53d641              # double 2.179046
	.quad	0x400d281882adc4ca              # double 3.6445780000000001
	.quad	0x4008a2b51bd61f5c              # double 3.079447
	.quad	0x3fea1450efdc9c4e              # double 0.81498000000000004
	.quad	0x4006bf76a2f48c2e              # double 2.8434879999999998
	.quad	0x402240fa9c12f09e              # double 9.1269120000000008
	.quad	0x401366f21f6cacd2              # double 4.8505330000000004
	.quad	0x401a991600f34507              # double 6.6494980000000004
	.quad	0x401ca6e6106ab14f              # double 7.1629870000000002
	.quad	0x400b06bce8533b10              # double 3.3782899999999998
	.quad	0x401be87c6327ed85              # double 6.9770370000000002
	.quad	0x400b1e28aa433509              # double 3.389726
	.quad	0x4022e4fd6d7e889c              # double 9.4472459999999998
	.quad	0x40236bbbe878fabe              # double 9.7104180000000007
	.quad	0x4015310a569b1748              # double 5.2978909999999999
	.quad	0x4016934a01abd1ab              # double 5.6438370000000004
	.quad	0x40198f41f212d773              # double 6.3898999999999999
	.quad	0x401ae807789a4591              # double 6.726591
	.quad	0x40225a0f0a5efe93              # double 9.1758959999999998
	.quad	0x3fd48b9baa1511e0              # double 0.321021
	.quad	0x4014bdf2a9d627bf              # double 5.1854959999999997
	.quad	0x4021d5d334c5da6a              # double 8.9176269999999995
	.quad	0x4010a47b24638c97              # double 4.1606259999999997
	.quad	0x401a872a7bd48cb5              # double 6.6319980000000003
	.quad	0x401136801711947d              # double 4.303223
	.quad	0x3ff83dae81882adc              # double 1.5150589999999999
	.quad	0x3ffd9938151a4378              # double 1.849907
	.quad	0x3ff44b1897a67a53              # double 1.2683340000000001
	.quad	0x4023bf3f961804da              # double 9.8735320000000009
	.quad	0x3fd63ab862b27cbf              # double 0.34733399999999998
	.quad	0x401e0536933a0408              # double 7.5050910000000001
	.quad	0x3ff87ff79c842fa5              # double 1.531242
	.quad	0x40086b26394face6              # double 3.0523189999999998
	.quad	0x40136bf0dc768dfc              # double 4.8554110000000001
	.quad	0x401512a62aa1943a              # double 5.2682120000000001
	.quad	0x401f7f5275ee99a6              # double 7.8743379999999998
	.quad	0x4004b50870110a13              # double 2.5883949999999998
	.quad	0x40013779e9d0e992              # double 2.152088
	.quad	0x4023eb3e5753a3ec              # double 9.9594599999999999
	.quad	0x4011e0624dd2f1aa              # double 4.469125
	.quad	0x3ffbddf97aaac109              # double 1.7416929999999999
	.quad	0x401627d1fe64f54d              # double 5.5388869999999999
	.quad	0x4015cf1a9fbe76c9              # double 5.4522500000000003
	.quad	0x40194e325d4a5df2              # double 6.3263639999999999
	.quad	0x40146250f840181e              # double 5.096012
	.quad	0x400331dde37585be              # double 2.399349
	.quad	0x4021d880b673c4f4              # double 8.9228570000000004
	.quad	0x4008e1ff2e48e8a7              # double 3.1103499999999999
	.quad	0x401c38effe2a3cea              # double 7.0556029999999996
	.quad	0x40235b65a9a80496              # double 9.6785099999999993
	.quad	0x3fc6ef3d3a1d3240              # double 0.179176
	.quad	0x3ffee0fa15db3398              # double 1.929926
	.quad	0x3fe11cdc443914f5              # double 0.53477300000000005
	.quad	0x3fa0b0af5fd47bee              # double 0.032598000000000002
	.quad	0x400d1912556d19df              # double 3.6372420000000001
	.quad	0x400a01e2584f4c6e              # double 3.2509199999999998
	.quad	0x40014077036c9c0b              # double 2.1564770000000002
	.quad	0x40215f93dd97f62b              # double 8.6866749999999993
	.quad	0x4017eedb7281fd9c              # double 5.9832590000000003
	.quad	0x40134ed5ae1cde5d              # double 4.8269869999999999
	.quad	0x4015309dcf893faf              # double 5.2974769999999998
	.quad	0x4021e6f2e8c0485a              # double 8.9510719999999999
	.quad	0x40231ce4217d284a              # double 9.5564280000000004
	.quad	0x3fed33aeee957471              # double 0.91255900000000001
	.quad	0x3fe1726f1dc50ce5              # double 0.54521900000000001
	.quad	0x40142d3bafd976ff              # double 5.0441729999999998
	.quad	0x3ffa3b267c6b8b69              # double 1.6394409999999999
	.quad	0x3fe7d1f601797cc4              # double 0.74438000000000004
	.quad	0x402200dda48b6523              # double 9.0016909999999992
	.quad	0x4013c878316a0557              # double 4.9457709999999997
	.quad	0x4018c2ae4b018612              # double 6.190118
	.quad	0x4013463beec3979a              # double 4.8185880000000001
	.quad	0x401c74ba0e842742              # double 7.1139910000000004
	.quad	0x401a87f27fe4bcae              # double 6.6327610000000004
	.quad	0x401d223bff8a8f3b              # double 7.2834320000000004
	.quad	0x4017402b40f66a55              # double 5.812665
	.quad	0x3ff5a0ba1f4b1ee2              # double 1.3517399999999999
	.quad	0x4010739da16616b5              # double 4.1129059999999997
	.quad	0x4001c79357603926              # double 2.2224490000000001
	.quad	0x401352b734b51373              # double 4.8307770000000003
	.quad	0x4017843e5321e604              # double 5.8791440000000001
	.quad	0x401eaa0b1bbcf4e8              # double 7.6660579999999995
	.quad	0x4020e309c7ffde72              # double 8.4434339999999999
	.quad	0x401ccaa3ad18d25f              # double 7.1978900000000001
	.quad	0x400785c91d14e3bd              # double 2.9403250000000001
	.quad	0x3fd831b152f3c2db              # double 0.37803300000000001
	.quad	0x402334373f316e37              # double 9.6019839999999998
	.quad	0x4023467b3d8e0008              # double 9.6376589999999993
	.quad	0x401f9a3cea6c1a05              # double 7.9006230000000003
	.quad	0x401e3ea8da7f3cf7              # double 7.5611909999999999
	.quad	0x400954a98aa8650e              # double 3.1663389999999998
	.quad	0x40196e48e8a71de7              # double 6.3577000000000004
	.quad	0x402157327aa68f4b              # double 8.6703069999999993
	.quad	0x3ff7460780fdc161              # double 1.4545969999999999
	.quad	0x40101c1b97353b4b              # double 4.0274489999999998
	.quad	0x40109c8cd63cb817              # double 4.1528809999999998
	.quad	0x401cf06d0d49949f              # double 7.2347910000000004
	.quad	0x4013aeb074a771c9              # double 4.9205949999999996
	.quad	0x3fcceda22f6a50d7              # double 0.22600200000000001
	.quad	0x401608e043a21640              # double 5.5086680000000001
	.quad	0x4011406573215fcc              # double 4.3128869999999999
	.quad	0x40031098d477bbf9              # double 2.3831039999999999
	.quad	0x401ab1e57d9dba91              # double 6.6737270000000004
	.quad	0x3f65c853c148344c              # double 0.0026589999999999999
	.quad	0x401c9e53eb399f5e              # double 7.154617
	.quad	0x400e5aac53b0813d              # double 3.7942740000000001
	.quad	0x4011c50ebaade658              # double 4.4424390000000002
	.quad	0x401754b0e1b4bb5e              # double 5.8327059999999999
	.quad	0x4012c8f42fe82518              # double 4.6962440000000001
	.quad	0x40121b26394face6              # double 4.5265129999999996
	.quad	0x3ff3fe9c886162f1              # double 1.2496609999999999
	.quad	0x3fc04790b8498809              # double 0.12718399999999999
	.quad	0x4001f090f733a8a4              # double 2.242464
	.quad	0x401a9916440f2389              # double 6.6494989999999996
	.quad	0x402035f1bef49cf5              # double 8.1053599999999992
	.quad	0x40204e3ed0f62739              # double 8.1528229999999997
	.quad	0x401638bf7f06705d              # double 5.5554180000000004
	.quad	0x401a4568a50507a7              # double 6.5677820000000002
	.quad	0x4014eb0b39192642              # double 5.2295350000000003
	.quad	0x401ca6d3f9e7b80b              # double 7.1629180000000003
	.quad	0x401152c2374794ea              # double 4.330819
	.quad	0x3fe283a53b8e4b88              # double 0.57857000000000003
	.quad	0x4015df661f18c9fb              # double 5.4681629999999997
	.quad	0x3ffe922749f0e4da              # double 1.910682
	.quad	0x40224fe52157689d              # double 9.1560450000000007
	.quad	0x401a0ca148ba83f5              # double 6.5123340000000001
	.quad	0x3ff62b1f687b139d              # double 1.3855280000000001
	.quad	0x401b8677b395c422              # double 6.881316
	.quad	0x401589a5a89b951c              # double 5.3844209999999997
	.quad	0x4000a6338b47c73f              # double 2.081153
	.quad	0x40169a743a647fdc              # double 5.6508339999999997
	.quad	0x4020a0a5269595ff              # double 8.3137600000000003
	.quad	0x40076ea3161a1db8              # double 2.9290219999999998
	.quad	0x4000979bfdf7e804              # double 2.0740280000000002
	.quad	0x400bea9b499d0204              # double 3.489554
	.quad	0x40108837f7be121f              # double 4.1330260000000001
	.quad	0x401173e681a9b8cc              # double 4.3631840000000004
	.quad	0x40000eda22f6a50d              # double 2.0072519999999998
	.quad	0x4015e4b838c111ae              # double 5.4733590000000003
	.quad	0x401a041fea8112ba              # double 6.5040279999999999
	.quad	0x402247dc1615ebfb              # double 9.1403510000000008
	.quad	0x402278023a6ce358              # double 9.2343919999999997
	.quad	0x401b25f9591cd1c8              # double 6.7870840000000001
	.quad	0x401301709310129d              # double 4.7514060000000002
	.quad	0x402145b8bac710cb              # double 8.6361749999999997
	.quad	0x400638eda22f6a51              # double 2.7777970000000001
	.quad	0x401dd2584f4c6e6e              # double 7.4554150000000003
	.quad	0x401cb44e50c5eb31              # double 7.1760799999999998
	.quad	0x4023c554da4ce810              # double 9.8854129999999998
	.quad	0x4014f6937d1fe64f              # double 5.2407969999999997
	.quad	0x40211ae9ee45c359              # double 8.5525660000000006
	.quad	0x401c202c9081c2e3              # double 7.0314199999999998
	.quad	0x401bbc193b3a68b2              # double 6.9336900000000004
	.quad	0x40203e594af4f0d8              # double 8.1217749999999995
	.quad	0x40204abb44e50c5f              # double 8.1459600000000005
	.quad	0x401d58d3f1843c3a              # double 7.3367459999999998
	.quad	0x4001750225742dcf              # double 2.1821329999999999
	.quad	0x401e42cc70867ad9              # double 7.565233
	.quad	0x4009aeb56fb8f57f              # double 3.2103069999999998
	.quad	0x3ff836e3f78bbd38              # double 1.513401
	.quad	0x4021476598e10cf6              # double 8.6394470000000005
	.quad	0x40236d8c4bd33d29              # double 9.7139609999999994
	.quad	0x4022fe173b85e80c              # double 9.4962710000000001
	.quad	0x40055126634117f8              # double 2.6646239999999999
	.quad	0x3fe2e638433d6c72              # double 0.59060299999999999
	.quad	0x402092d9ad85dfa8              # double 8.2868169999999992
	.quad	0x400a7708aac96cc6              # double 3.308122
	.quad	0x400eebfb15b573eb              # double 3.8652250000000001
	.quad	0x3ff0c4ae85b9e8c4              # double 1.0480179999999999
	.quad	0x4000675a31a4bdba              # double 2.050465
	.quad	0x4017a8a697aeddce              # double 5.9146979999999996
	.quad	0x400fb4aa10e02214              # double 3.9632149999999999
	.quad	0x401d7a3fcc9ea9a4              # double 7.3693840000000002
	.quad	0x3ff5bd199bb2788e              # double 1.3586670000000001
	.quad	0x4011a84c6a3bddfd              # double 4.4143540000000003
	.quad	0x4019a7110e453d21              # double 6.413151
	.quad	0x40229e2f37fbefd0              # double 9.308954
	.quad	0x4020d4148344c37e              # double 8.4142189999999992
	.quad	0x3fd9901d19157abc              # double 0.39942100000000003
	.quad	0x40084301a79fec9a              # double 3.032718
	.quad	0x3ffb7ca7503b81b6              # double 1.7179329999999999
	.quad	0x4020e3e24febd09e              # double 8.4450859999999999
	.quad	0x401e73d188f42fe8              # double 7.6131039999999998
	.quad	0x4023c9b2a27f1b69              # double 9.8939409999999998
	.quad	0x401ddd3cbc48f10b              # double 7.4660520000000004
	.quad	0x4013d86a8fc0d2c4              # double 4.9613440000000004
	.quad	0x4012e5c7cd898b2f              # double 4.7243950000000003
	.quad	0x4016a4e874c8ffb9              # double 5.6610430000000003
	.quad	0x401d17546d3f9e7c              # double 7.2727830000000004
	.quad	0x40096abd5dc40075              # double 3.1771189999999998
	.quad	0x3ff48d349be8ff32              # double 1.2844739999999999
	.quad	0x3ff72e2c98e53eb4              # double 1.4487730000000001
	.quad	0x402124845132f87b              # double 8.5713220000000003
	.quad	0x401cbaa7589efd87              # double 7.1822790000000003
	.quad	0x401c3dcebfec13ba              # double 7.0603590000000001
	.quad	0x4013bff69014b59a              # double 4.9374640000000003
	.quad	0x401ec97785729b28              # double 7.6967449999999999
	.quad	0x400a3d9f4d37c137              # double 3.2800889999999998
	.quad	0x4022b1c79b34a44c              # double 9.3472259999999991
	.quad	0x401a9ab10ba62670              # double 6.6510660000000001
	.quad	0x4010fa3875925354              # double 4.2443559999999998
	.quad	0x4011a722e1ac57e2              # double 4.4132189999999998
	.quad	0x4002e919695d91ac              # double 2.3638180000000002
	.quad	0x4022e4fd6d7e889c              # double 9.4472459999999998
	.quad	0x4021965d18090b41              # double 8.7936789999999991
	.quad	0x401afab4fa48301a              # double 6.7448309999999996
	.quad	0x401858327674d163              # double 6.0861299999999998
	.quad	0x4020140a8d21bc12              # double 8.0391429999999993
	.quad	0x4022ccc20d5629d8              # double 9.3999179999999995
	.quad	0x3fff7954eb13dfb1              # double 1.967122
	.quad	0x40203fbb9496249a              # double 8.1244779999999999
	.quad	0x4023465f30e7ff58              # double 9.6374449999999995
	.quad	0x402280986fcdee35              # double 9.251163
	.quad	0x400ff4e7685985ad              # double 3.9945819999999999
	.quad	0x4023f88377186552              # double 9.9853780000000008
	.quad	0x3ff48986fcdee350              # double 1.2835760000000001
	.quad	0x40117f10ecb74de0              # double 4.3740880000000004
	.quad	0x40229fe670e2c12b              # double 9.3123050000000003
	.quad	0x40235e9ad42c3c9f              # double 9.6847750000000001
	.quad	0x4021da30fcf80dc3              # double 8.9261549999999996
	.quad	0x401f842e9899bf59              # double 7.8790839999999997
	.quad	0x401024a4d2b2bfdb              # double 4.0357849999999997
	.quad	0x401026cebbba55d2              # double 4.0378980000000002
	.quad	0x401d971758e21965              # double 7.3975499999999998
	.quad	0x3ffb38583621fafd              # double 1.7012560000000001
	.quad	0x401c60635a426bb5              # double 7.0941289999999997
	.quad	0x401d0b73083558a7              # double 7.2611809999999997
	.quad	0x4023057d5a9eb207              # double 9.5107219999999994
	.quad	0x4015dc6f7a0b5ed9              # double 5.4652690000000002
	.quad	0x4014dd5bee3d5fdd              # double 5.2161710000000001
	.quad	0x3ff6f61fe21d96ea              # double 1.4350890000000001
	.quad	0x400060fc2eba27af              # double 2.0473560000000002
	.quad	0x4022644955b4677b              # double 9.1958719999999996
	.quad	0x4023ba515ce9e5e2              # double 9.8639019999999995
	.quad	0x401d2f6d7625204b              # double 7.296316
	.quad	0x3fef0d79d0a67621              # double 0.970395
	.quad	0x3fe84588a04d1202              # double 0.75848800000000005
	.quad	0x400072495e17e34c              # double 2.0558040000000002
	.quad	0x3fe9ae18ac9f2fdc              # double 0.80250200000000004
	.quad	0x3fe2a8826aa8eb46              # double 0.58306999999999998
	.quad	0x401738611fd5885d              # double 5.8050579999999998
	.quad	0x4021e088d6d3b6cc              # double 8.9385440000000002
	.quad	0x4010b77d523b3637              # double 4.179189
	.quad	0x4023619e731d2e0e              # double 9.6906619999999997
	.quad	0x4019060e51d25aab              # double 6.2559139999999998
	.quad	0x40223e26916440f2              # double 9.1213879999999996
	.quad	0x3fe4fa7a85015c21              # double 0.65557600000000005
	.quad	0x4002eee0f3cb3e57              # double 2.3666399999999999
	.quad	0x4017d8dc11e42e12              # double 5.9617769999999997
	.quad	0x401f59a88ace24bc              # double 7.8375570000000003
	.quad	0x401c9723ee1bd1ee              # double 7.1475980000000003
	.quad	0x4018a1aa3f034b0e              # double 6.1578759999999999
	.quad	0x3ffe390b84988095              # double 1.888927
	.quad	0x3fe19fa97e132b56              # double 0.55074000000000001
	.quad	0x40210442e9899bf6              # double 8.5083230000000007
	.quad	0x40184ee8d10f51ad              # double 6.0770600000000004
	.quad	0x40101bb01c92ddbe              # double 4.0270390000000003
	.quad	0x400874c6e6d9be4d              # double 3.0570200000000001
	.quad	0x401a20a4e379b77c              # double 6.531879
	.quad	0x400c4897e996312f              # double 3.5354459999999999
	.quad	0x402156733ebbfd72              # double 8.6688480000000006
	.quad	0x401508d4bad7d7c3              # double 5.2586240000000002
	.quad	0x3ff48d5629d8409e              # double 1.2845059999999999
	.quad	0x401abf6f8f041462              # double 6.6869490000000003
	.quad	0x4022e5881a1554fc              # double 9.4483040000000002
	.quad	0x3faad2bb23571d1d              # double 0.052388999999999998
	.quad	0x40219c7a398201cd              # double 8.8056199999999993
	.quad	0x4022c38e6d15ad10              # double 9.3819459999999992
	.quad	0x3fd63da72a7bd48d              # double 0.34751300000000002
	.quad	0x401a6fa26a22b389              # double 6.6090179999999998
	.quad	0x4006671bcdbbe015              # double 2.8003459999999998
	.quad	0x401647746887a8d6              # double 5.5697799999999997
	.quad	0x401304afd5454153              # double 4.7545770000000003
	.quad	0x401514b2745bf26f              # double 5.2702119999999999
	.quad	0x3fff15d80e496edf              # double 1.942833
	.quad	0x3ffed9d451fc4c16              # double 1.9281809999999999
	.quad	0x4017a80cb6c7a7ca              # double 5.9141110000000001
	.quad	0x4023b864883fd502              # double 9.8601419999999997
	.quad	0x402020eb24a6a876              # double 8.0642940000000003
	.quad	0x3fe8d9b1b79d909f              # double 0.77657399999999999
	.quad	0x401c5fdd22856606              # double 7.0936170000000001
	.quad	0x3ff6081d3aa369fd              # double 1.376981
	.quad	0x402272aac1094a2c              # double 9.2239590000000006
	.quad	0x3ff0ace13f4a98ab              # double 1.0422070000000001
	.quad	0x4020004ccee5abc1              # double 8.0005860000000002
	.quad	0x401bbe27e0ef9980              # double 6.9356989999999996
	.quad	0x401e626394face68              # double 7.5960830000000001
	.quad	0x400c8f893faf4278              # double 3.5700859999999999
	.quad	0x3ff95151611ba3ca              # double 1.5823529999999999
	.quad	0x400dee7ee9142b30              # double 3.7414529999999999
	.quad	0x400445fc7e6b3fea              # double 2.534173
	.quad	0x40209d1b4fe79ee0              # double 8.3068489999999997
	.quad	0x40116fd8adab9f56              # double 4.3592250000000003
	.quad	0x3fe0d0f840181e04              # double 0.525509
	.quad	0x4020e0487b99d452              # double 8.438053
	.quad	0x4023141461b6d43d              # double 9.5392179999999999
	.quad	0x40017512ec6bce85              # double 2.1821649999999999
	.quad	0x400f762f166e008f              # double 3.9327070000000002
	.quad	0x4023c9656eefa1e4              # double 9.8933520000000001
	.quad	0x3ffe90d49949e881              # double 1.9103589999999999
	.quad	0x400e14e54f7a9197              # double 3.7602030000000002
	.quad	0x40082321a2e7f6f5              # double 3.0171540000000001
	.quad	0x400c086f049a9974              # double 3.5041180000000001
	.quad	0x4022850b955f7836              # double 9.2598540000000007
	.quad	0x402030225742dcf4              # double 8.0940119999999993
	.quad	0x40191e8f6cefed63              # double 6.2798439999999998
	.quad	0x4020effe6d58c8ef              # double 8.4687380000000001
	.quad	0x400d6014727dcbde              # double 3.6719140000000001
	.quad	0x4006806c00da1a93              # double 2.8127059999999999
	.quad	0x400658d045fe1112              # double 2.7933659999999998
	.quad	0x40185c1f42bb6673              # double 6.089963
	.quad	0x3fc90a99b6f5caf3              # double 0.195636
	.quad	0x4022bc61d8622c45              # double 9.3679339999999999
	.quad	0x401970ed80a17b0f              # double 6.3602809999999996
	.quad	0x40216f820a30db6a              # double 8.7177889999999998
	.quad	0x401c4af2d7f950b9              # double 7.0731919999999997
	.quad	0x3ff55657fb69984a              # double 1.33358
	.quad	0x4017f7a24894c448              # double 5.9918300000000002
	.quad	0x40217f8df7a4e7ab              # double 8.7491299999999992
	.quad	0x3ff19cb5781c7150              # double 1.100759
	.quad	0x3fed0fcf80dc3372              # double 0.90817999999999999
	.quad	0x40187e7f2c3009b3              # double 6.123532
	.quad	0x401186f9fcb0c027              # double 4.3818130000000002
	.quad	0x400eb667b5f1bef5              # double 3.8390650000000002
	.quad	0x4016c05d0fa58f71              # double 5.6878549999999999
	.quad	0x402058b220791c4c              # double 8.1732340000000007
	.quad	0x401eb72ef0ae5365              # double 7.6788899999999999
	.quad	0x3ff45606317268d3              # double 1.271002
	.quad	0x3ff3ed959a30984e              # double 1.2455039999999999
	.quad	0x401314b407032980              # double 4.7702179999999998
	.quad	0x3fe4c892ab68cef6              # double 0.64948399999999995
	.quad	0x402084714fce746d              # double 8.2586770000000005
	.quad	0x400ed95ee136e71d              # double 3.8561380000000001
	.quad	0x401853f4666ec9e2              # double 6.0819869999999998
	.quad	0x401f1f2778140dd4              # double 7.780424
	.quad	0x3ff7a0f1b25f633d              # double 1.476793
	.quad	0x402233886594af4f              # double 9.1006499999999999
	.quad	0x3f8160956c0d6f54              # double 0.0084849999999999995
	.quad	0x401ea3968d759ee9              # double 7.6597540000000003
	.quad	0x40114e0c17657753              # double 4.3262179999999999
	.quad	0x4023388787485e3e              # double 9.6104090000000006
	.quad	0x4010247e06961c37              # double 4.0356370000000004
	.quad	0x40226c70c996b767              # double 9.2117979999999999
	.quad	0x402121496249a134              # double 8.5650130000000004
	.quad	0x40042c0f01fb82c3              # double 2.5215130000000001
	.quad	0x4008790ea9e6eeb7              # double 3.05911
	.quad	0x401bb9c4545846e9              # double 6.931413
	.quad	0x4018805c4651f3e9              # double 6.1253520000000004
	.quad	0x4016b4577d955715              # double 5.6761150000000002
	.quad	0x3feba84be40420f7              # double 0.86429400000000001
	.quad	0x3fd4e5fb71fbc5df              # double 0.32653700000000002
	.quad	0x40093bfdf7e8038a              # double 3.154293
	.quad	0x40165d2391d57ffa              # double 5.5909560000000003
	.quad	0x401b15dd4c76d118              # double 6.7713520000000003
	.quad	0x401f9f3ade225fa6              # double 7.9054979999999997
	.quad	0x40218f867f0aa21a              # double 8.7803229999999992
	.quad	0x400980d9945b6c37              # double 3.1879149999999998
	.quad	0x3ff1e30fcf80dc33              # double 1.1179349999999999
	.quad	0x40200d38ac18f81f              # double 8.0258230000000008
	.quad	0x3ffb9ed288ce703b              # double 1.726275
	.quad	0x401ac64f54d1e96c              # double 6.6936619999999998
	.quad	0x40208337867f0aa2              # double 8.2562829999999998
	.quad	0x401c047c30d306a3              # double 7.0043800000000003
	.quad	0x401990e7bc3c5bd1              # double 6.3915090000000001
	.quad	0x400ccc647778dd61              # double 3.5998009999999998
	.quad	0x40190294573a7979              # double 6.2525190000000004
	.quad	0x401025553ef6b5d4              # double 4.0364579999999997
	.quad	0x402216bc621b7e0b              # double 9.0444060000000004
	.quad	0x401e8e086bdf4c2b              # double 7.6387039999999997
	.quad	0x3fefa9aa1d755bcd              # double 0.98946100000000003
	.quad	0x4010f3a42f1ed17c              # double 4.2379309999999997
	.quad	0x400bb3a71151611c              # double 3.4627210000000002
	.quad	0x4001498eda22f6a5              # double 2.160917
	.quad	0x401c863c74fb54a0              # double 7.1310900000000004
	.quad	0x401295953586ca8a              # double 4.646077
	.quad	0x40190b862b27cbf7              # double 6.2612540000000001
	.quad	0x4010fa78f25a2510              # double 4.2446020000000004
	.quad	0x40049f38c5436b90              # double 2.5777450000000002
	.quad	0x400a6f9096bb98c8              # double 3.3044750000000001
	.quad	0x4019b1958969a0ae              # double 6.4234220000000004
	.quad	0x3fe28d972cd7cf5f              # double 0.57978399999999997
	.quad	0x4023233764f11b61              # double 9.5687820000000005
	.quad	0x3fc6b85a4f00ef13              # double 0.17750099999999999
	.quad	0x402128b029281776              # double 8.5794689999999996
	.quad	0x401d1ba7fc32ebe6              # double 7.2770080000000004
	.quad	0x401f10a915379fa9              # double 7.7662699999999995
	.quad	0x40215d8622c45027              # double 8.6826640000000008
	.quad	0x4016ef3cb3e5753a              # double 5.7336299999999998
	.quad	0x3fffc95bff04577e              # double 1.9866600000000001
	.quad	0x40212ddb3397dd01              # double 8.5895630000000001
	.quad	0x40213a6ca03c4b0a              # double 8.6141100000000002
	.quad	0x4014f9adc8fb86f4              # double 5.2438269999999996
	.quad	0x401f3e5796bfca86              # double 7.8108810000000002
	.quad	0x4021552157689ca2              # double 8.6662700000000008
	.quad	0x4022a643aa79bbae              # double 9.3247350000000004
	.quad	0x401d8ef177a7008a              # double 7.3895929999999996
	.quad	0x400db3825e13b18e              # double 3.7126510000000001
	.quad	0x3ffc5bb9cf9a06a7              # double 1.772394
	.quad	0x401a01bc98a222d5              # double 6.5016959999999999
	.quad	0x3fdac4ac6cdaf4ae              # double 0.41825400000000001
	.quad	0x402328b0f27bb2ff              # double 9.5794750000000004
	.quad	0x40041c2b0ea18373              # double 2.513754
	.quad	0x400c604ea4a8c155              # double 3.5470250000000001
	.quad	0x401e0e39b456b442              # double 7.5138920000000002
	.quad	0x4018eee7c49fd7a1              # double 6.2333059999999998
	.quad	0x3fe6e88bda9435ad              # double 0.71588700000000005
	.quad	0x400fec7b02d59d56              # double 3.990469
	.quad	0x3fe86733ebbfd71b              # double 0.762598
	.quad	0x3fd067903211cb04              # double 0.25632100000000002
	.quad	0x4023353c36113405              # double 9.6039750000000001
	.quad	0x3fc1c28f5c28f5c3              # double 0.13875000000000001
	.quad	0x401990edc3bd5992              # double 6.3915319999999998
	.quad	0x401c67d7c2ca148c              # double 7.1014090000000003
	.quad	0x4021cda2d72ffd1e              # double 8.9016330000000004
	.quad	0x402187bfa4c61d86              # double 8.7651339999999998
	.quad	0x400db70cdc8754f3              # double 3.7143799999999998
	.quad	0x400f1d6d7e889c1b              # double 3.8893689999999999
	.quad	0x402351ff92f2b66b              # double 9.6601529999999993
	.quad	0x4005a7607c4199fe              # double 2.7067269999999999
	.quad	0x4023f51116a8b8f1              # double 9.9786459999999994
	.quad	0x4020515097c80842              # double 8.1588180000000001
	.quad	0x400865ba6efc371e              # double 3.0496720000000002
	.quad	0x40209afc69728a61              # double 8.3027069999999998
	.quad	0x401f09da597d49d8              # double 7.7596220000000002
	.quad	0x40211f1fbc5de9c0              # double 8.5607889999999998
	.quad	0x400adfd1569f4906              # double 3.359286
	.quad	0x4005e8ee6b8305d9              # double 2.7387359999999998
	.quad	0x401cbe48626f60e1              # double 7.1858230000000001
	.quad	0x4015ff01754b05b8              # double 5.4990290000000002
	.quad	0x402394eee0f3cb3e              # double 9.7908849999999994
	.quad	0x3ffe416052502eec              # double 1.8909609999999999
	.quad	0x401b4b178b370047              # double 6.8233319999999997
	.quad	0x4022350e56041893              # double 9.1036249999999992
	.quad	0x40220ed82ba5a038              # double 9.0289929999999998
	.quad	0x400497e34b945309              # double 2.5741640000000001
	.quad	0x40130f01b866e43b              # double 4.7646550000000003
	.quad	0x3febb5aa715831f0              # double 0.86592599999999997
	.quad	0x401ad5592d98bf7f              # double 6.708348
	.quad	0x401d1927d45a5fc8              # double 7.2745660000000001
	.quad	0x40081eb0fadf2ecf              # double 3.0149859999999999
	.quad	0x40126d97b30f8c65              # double 4.607024
	.quad	0x3fc359578a2a90cd              # double 0.15116399999999999
	.quad	0x402034c6822ff089              # double 8.1030770000000008
	.quad	0x4017a9129888f862              # double 5.9151100000000003
	.quad	0x401c01a650614163              # double 7.0016109999999996
	.quad	0x3fe5ea78af3e468d              # double 0.68487200000000004
	.quad	0x402203af965b20b8              # double 9.007199
	.quad	0x40226f605ab3aabd              # double 9.2175320000000003
	.quad	0x400838d5842b734b              # double 3.0277509999999999
	.quad	0x40208f6922d948dc              # double 8.2800989999999998
	.quad	0x3ffa0e60807357e6              # double 1.6285099999999999
	.quad	0x4016da3b14a90471              # double 5.7131160000000003
	.quad	0x4022bc59fb1e18f0              # double 9.3678740000000005
	.quad	0x4023ed11be6e6538              # double 9.9630259999999992
	.quad	0x4022b14ad362e903              # double 9.3462739999999993
	.quad	0x402103f401c4fc1e              # double 8.5077210000000001
	.quad	0x401763cf70153bd1              # double 5.8474709999999996
	.quad	0x4001fff92f2b66b6              # double 2.249987
	.quad	0x40109e4430b178b3              # double 4.1545569999999996
	.quad	0x401dba6ca03c4b0a              # double 7.4320550000000001
	.quad	0x3ff61322f2734f83              # double 1.379672
	.quad	0x4011dc85c24c404a              # double 4.4653539999999996
	.quad	0x40154a5614df8b15              # double 5.3225939999999996
	.quad	0x40230d0fe8ab4fa5              # double 9.5255120000000008
	.quad	0x402101aeb3dd11be              # double 8.5032859999999992
	.quad	0x3ff545bc01a36e2f              # double 1.3295250000000001
	.quad	0x4017510c2c5e2cdc              # double 5.829148
	.quad	0x4007268b19a415f4              # double 2.8938199999999998
	.quad	0x4020636ed677707a              # double 8.1942050000000002
	.quad	0x40144ad14a0a0f4d              # double 5.0730639999999996
	.quad	0x4020c52a62aa1944              # double 8.3850890000000006
	.quad	0x4021d7b2031ceaf2              # double 8.9212799999999994
	.quad	0x4018eff08893b7d8              # double 6.2343159999999997
	.quad	0x40219a5e56cd6c2f              # double 8.801501
	.quad	0x40219589acbc8c0d              # double 8.7920660000000002
	.quad	0x40133dadb8348f54              # double 4.8102330000000002
	.quad	0x400d4a7610279570              # double 3.6613579999999999
	.quad	0x4021657d5a9eb207              # double 8.6982219999999995
	.quad	0x3ff407f562174c4d              # double 1.251943
	.quad	0x3ff16131a8ef77f2              # double 1.0862289999999999
	.quad	0x4012a6f0068db8bb              # double 4.6630250000000002
	.quad	0x401303f748a15981              # double 4.7538729999999996
	.quad	0x3fff63f67f4dbdf9              # double 1.961905
	.quad	0x3fd5fcd67fd3f5b6              # double 0.343557
	.quad	0x401793c03bc4d22d              # double 5.8942880000000004
	.quad	0x3fe13bcf4e874c90              # double 0.538551
	.quad	0x400344a72ead9275              # double 2.4085220000000001
	.quad	0x4000356eac860568              # double 2.0260899999999999
	.quad	0x4014f5d35653c9ac              # double 5.2400640000000003
	.quad	0x4015bf99806f2629              # double 5.4371090000000004
	.quad	0x3ff790d6b228dc98              # double 1.472861
	.quad	0x40137ce0fc2eba28              # double 4.8719520000000003
	.quad	0x4019a69552e2fbe3              # double 6.4126789999999998
	.quad	0x401d9fe5c91d14e4              # double 7.4061500000000002
	.quad	0x400cd5781c714fce              # double 3.6042329999999998
	.quad	0x3fd069057d1782d4              # double 0.25641000000000003
	.quad	0x401da793dd97f62b              # double 7.4136499999999996
	.quad	0x402057bfe7e1fc09              # double 8.171386
	.quad	0x3fbc76c050bd87b5              # double 0.11118699999999999
	.quad	0x40218afa5093964a              # double 8.7714409999999994
	.quad	0x401bf487fcb923a3              # double 6.9888000000000003
	.quad	0x40236e256366d7a5              # double 9.7151289999999992
	.quad	0x400af7fd82773e25              # double 3.371089
	.quad	0x400da42f1ed17c5f              # double 3.705168
	.quad	0x3fd06b8737974602              # double 0.25656299999999999
	.quad	0x400b84fe36d22425              # double 3.4399380000000002
	.quad	0x40013ba12b5e529c              # double 2.1541160000000001
	.quad	0x401e6ecc3e3193f7              # double 7.6082010000000002
	.quad	0x40219497b7414a4d              # double 8.7902199999999997
	.quad	0x400114898f605ab4              # double 2.1350280000000001
	.quad	0x3ff6433c60029f17              # double 1.3914150000000001
	.quad	0x400599817b95a294              # double 2.699954
	.quad	0x400360ddc6195465              # double 2.4222980000000001
	.quad	0x4020ae95d91ab8e9              # double 8.3409870000000002
	.quad	0x4011c1476af89c5e              # double 4.4387489999999996
	.quad	0x40203962cfd8f0c7              # double 8.1120819999999991
	.quad	0x4006860807357e67              # double 2.815445
	.quad	0x401a305814940bbb              # double 6.5472109999999999
	.quad	0x40208d8bc59b8024              # double 8.2764570000000006
	.quad	0x3fd5e3c968943e10              # double 0.342028
	.quad	0x40238219c9d5a188              # double 9.7541030000000006
	.quad	0x401dd112fd32c626              # double 7.4541740000000001
	.quad	0x400364de3b8a19ca              # double 2.4242520000000001
	.quad	0x40235f8b1572580c              # double 9.6866079999999996
	.quad	0x400fe5accd53048a              # double 3.9871460000000001
	.quad	0x4006d1b9b66f9336              # double 2.8524050000000001
	.quad	0x40215420f6f08cc5              # double 8.6643139999999992
	.quad	0x4013618655193709              # double 4.8452390000000003
	.quad	0x4022baec8d5c7475              # double 9.3650859999999997
	.quad	0x401b67cfe5860136              # double 6.8513789999999997
	.quad	0x400c30a67620ee8d              # double 3.523755
	.quad	0x4005c1bb8c32a8ca              # double 2.7195960000000001
	.quad	0x40160ca07f66e86c              # double 5.5123309999999996
	.quad	0x402347b395c42203              # double 9.6400419999999993
	.quad	0x4022684534bd76ee              # double 9.2036529999999992
	.quad	0x402238feac42e98a              # double 9.1113180000000007
	.quad	0x401eb55b035bd513              # double 7.677105
	.quad	0x4014cb22d0e56042              # double 5.1983750000000004
	.quad	0x3ff89c981beb1811              # double 1.5382309999999999
	.quad	0x40211e07c4199fe4              # double 8.5586529999999996
	.quad	0x4020ed8f4f93bc0a              # double 8.463984
	.quad	0x402164ead0c3d252              # double 8.6971039999999995
	.quad	0x3fe94b1cc9646280              # double 0.79041899999999998
	.quad	0x3ff7c639d5e4a383              # double 1.485895
	.quad	0x401f62c386d2ed78              # double 7.8464489999999997
	.quad	0x402361bd1ed9dfdb              # double 9.6908960000000003
	.quad	0x40173afdda8bd231              # double 5.8076090000000002
	.quad	0x401044927913e814              # double 4.0669649999999997
	.quad	0x4008eae4b0186120              # double 3.1146940000000001
	.quad	0x40208e221c8a7a42              # double 8.2776040000000002
	.quad	0x4023335158b827fa              # double 9.6002299999999998
	.quad	0x40177c1d29dc725c              # double 5.8712049999999998
	.quad	0x401636c4827b6fe3              # double 5.5534840000000001
	.quad	0x4011b5ad96a6a012              # double 4.4274199999999997
	.quad	0x40104034f3fd933e              # double 4.0627019999999998
	.quad	0x40089a09cc319c5a              # double 3.0752139999999999
	.quad	0x4010d1c475e6362a              # double 4.2048509999999997
	.quad	0x4020d6c2480e8c8b              # double 8.4194510000000005
	.quad	0x40197635610adcd3              # double 6.3654380000000002
	.quad	0x40133649d388a8b1              # double 4.8030160000000004
	.quad	0x4004a793dd97f62b              # double 2.5818249999999998
	.quad	0x401ed4d594f26aec              # double 7.707846
	.quad	0x4022c233bd9cae21              # double 9.3793009999999998
	.quad	0x40137a0e410b630b              # double 4.8691950000000004
	.quad	0x4020480ef1348b22              # double 8.1407389999999999
	.quad	0x400e1dcd7060bb2c              # double 3.7645520000000001
	.quad	0x401ca47064ece9a3              # double 7.1605850000000002
	.quad	0x401c210385c67dfe              # double 7.0322399999999998
	.quad	0x40054906034f3fd9              # double 2.6606559999999999
	.quad	0x3fe65377e1b8ed1c              # double 0.697689
	.quad	0x4020a2d57bc7f77b              # double 8.3180350000000001
	.quad	0x4022eff822bbecab              # double 9.4686900000000004
	.quad	0x4015e9c0229a5ebb              # double 5.4782719999999996
	.quad	0x3ff2cf7985271bce              # double 1.1756530000000001
	.quad	0x4001f8aa8650e779              # double 2.2464189999999999
	.quad	0x4006f38bcdfefbf4              # double 2.868919
	.quad	0x40194ee392e1ef74              # double 6.3270400000000002
	.quad	0x4014fc7ffde7210c              # double 5.2465820000000001
	.quad	0x4009a1f75104d552              # double 3.2040850000000001
	.quad	0x40083cd0bb6ed677              # double 3.0296949999999998
	.quad	0x3ff4367b1c0010c7              # double 1.263301
	.quad	0x4003365d3996fa83              # double 2.401545
	.quad	0x401d9fe2a3cea6c2              # double 7.4061380000000003
	.quad	0x3ff9d8eb8950763a              # double 1.615459
	.quad	0x4005e5c0b9991362              # double 2.7371840000000001
	.quad	0x3ff495347a5b0ff1              # double 1.286427
	.quad	0x40236c7cfa26a22b              # double 9.7118909999999996
	.quad	0x4008b7e889c1b542              # double 3.0897990000000002
	.quad	0x401625974e65bea1              # double 5.5367100000000002
	.quad	0x4001a714fce746cc              # double 2.2065830000000002
	.quad	0x3ff97868fd199bb2              # double 1.5918969999999999
	.quad	0x3fbb62a5e785b5b7              # double 0.106974
	.quad	0x401be81ba7fc32ec              # double 6.9766680000000001
	.quad	0x4002dc08fa7a8501              # double 2.3574389999999998
	.quad	0x4008e52d666a9824              # double 3.1119029999999999
	.quad	0x4019b2adc4c9c90c              # double 6.4244909999999997
	.quad	0x4021f81797cc3a00              # double 8.9845550000000002
	.quad	0x4022b32e3821af7d              # double 9.3499619999999997
	.quad	0x3ff416df3f961805              # double 1.255584
	.quad	0x401f3f2170931013              # double 7.8116510000000003
	.quad	0x401aa746455eaee2              # double 6.663354
	.quad	0x4022eed99cbee808              # double 9.4665040000000004
	.quad	0x3fc5cd898b2e9ccb              # double 0.17033499999999999
	.quad	0x400384ae85b9e8c4              # double 2.4397859999999998
	.quad	0x3fede4b87bdcf030              # double 0.93416999999999994
	.quad	0x4015248f10a99b6f              # double 5.2857019999999997
	.quad	0x401a5d130df9bdc7              # double 6.5908930000000003
	.quad	0x401d33358f2e05cd              # double 7.3000090000000002
	.quad	0x40143df612407464              # double 5.0605089999999997
	.quad	0x4009b01d9f4d37c1              # double 3.2109939999999999
	.quad	0x40072ee73e681a9c              # double 2.8979020000000002
	.quad	0x402128522ea0fd3b              # double 8.5787519999999997
	.quad	0x40210aab8a5ce5b4              # double 8.5208399999999997
	.quad	0x4004baf07bfe7e20              # double 2.5912790000000001
	.quad	0x4021eada98676a72              # double 8.9586989999999993
	.quad	0x40105fe4ffc9795b              # double 4.0936469999999998
	.quad	0x4021dd084e831ad2              # double 8.9317039999999999
	.quad	0x3ff06e18ac9f2fdc              # double 1.0268790000000001
	.quad	0x400f3b97bb730835              # double 3.9040979999999998
	.quad	0x4013ca64c2f837b5              # double 4.9476500000000003
	.quad	0x40215841cc532a49              # double 8.6723769999999991
	.quad	0x400b77d73c925786              # double 3.433516
	.quad	0x400d9fdef8487b9a              # double 3.7030620000000001
	.quad	0x401dfd9018e75793              # double 7.4976200000000003
	.quad	0x40135a1e81cb46bb              # double 4.8380070000000002
	.quad	0x3ff92dbd72bcb5fe              # double 1.5736669999999999
	.quad	0x401bef28c79f6662              # double 6.9835539999999998
	.quad	0x4020ba0a52695960              # double 8.3633600000000001
	.quad	0x400af8066c2acb86              # double 3.3711060000000002
	.quad	0x4022d9118c197e56              # double 9.4239619999999995
	.quad	0x4013b359ff4fd6d8              # double 4.9251480000000001
	.quad	0x4003a8a265f0f5a1              # double 2.457341
	.quad	0x4022130b5aa71583              # double 9.0371959999999998
	.quad	0x40173854046412cf              # double 5.8050079999999999
	.quad	0x4012ad5a187a4a49              # double 4.669289
	.quad	0x401e31669ced0b31              # double 7.5482430000000002
	.quad	0x401cc445aa2e3c53              # double 7.1916719999999996
	.quad	0x3fe0b7b4a2339c0f              # double 0.52242500000000003
	.quad	0x40183436fc158fb4              # double 6.0509909999999998
	.quad	0x401ce85510d38cda              # double 7.2268869999999996
	.quad	0x4016e8b69552e2fc              # double 5.7272590000000001
	.quad	0x4017da1d755bccaf              # double 5.9630029999999996
	.quad	0x401dbe920c069e80              # double 7.4361040000000003
	.quad	0x4000be132b55ef20              # double 2.0928100000000001
	.quad	0x4021e8e496ededaf              # double 8.9548690000000004
	.quad	0x40152ffb480a5acd              # double 5.2968570000000001
	.quad	0x401b26df82b1f688              # double 6.7879620000000003
	.quad	0x40059b2788db0575              # double 2.7007590000000001
	.quad	0x401a81eafee6fb4c              # double 6.6268729999999998
	.quad	0x400859b3d07c84b6              # double 3.0438000000000001
	.quad	0x400931676640a6b9              # double 3.1491229999999999
	.quad	0x401605e2478854ce              # double 5.5057460000000003
	.quad	0x3fff3af42784a948              # double 1.9518930000000001
	.quad	0x40058b441bb8c32b              # double 2.6930010000000002
	.quad	0x401524330d73860a              # double 5.2853510000000004
	.quad	0x40235cbf8fcd67fd              # double 9.6811489999999995
	.quad	0x40231605ccc89b0f              # double 9.5430130000000001
	.quad	0x3fe359641f644956              # double 0.60466200000000003
	.quad	0x401eef2b239a38fc              # double 7.7335630000000002
	.quad	0x40058c4b4d056c51              # double 2.6935030000000002
	.quad	0x40068cba732df506              # double 2.8187150000000001
	.quad	0x3fa63f359ff4fd6d              # double 0.043450999999999997
	.quad	0x3fee5e7c8d195897              # double 0.94903400000000004
	.quad	0x401fea3c64345cff              # double 7.9787460000000001
	.quad	0x3ff7c93a71151612              # double 1.4866280000000001
	.quad	0x40100b13165d3997              # double 4.010815
	.quad	0x4009fcfbb949624a              # double 3.2485270000000002
	.quad	0x4015b3ed0f627393              # double 5.4257090000000003
	.quad	0x4018776640a6b93d              # double 6.1166010000000002
	.quad	0x401ace2c98e53eb4              # double 6.7013420000000004
	.quad	0x3ff41847f562174c              # double 1.2559279999999999
	.quad	0x401cdd5cfaacd9e8              # double 7.2161749999999998
	.quad	0x4011e7521144cbe2              # double 4.4758990000000001
	.quad	0x400a6644d87724fb              # double 3.2999360000000002
	.quad	0x40233493ea2d2fe4              # double 9.602691
	.quad	0x40218742fe82517e              # double 8.7641829999999992
	.quad	0x4012a49906cca2db              # double 4.6607399999999997
	.quad	0x3fedbf24d8fd5cb8              # double 0.92958300000000005
	.quad	0x400f72b7fe08aefb              # double 3.9310149999999999
	.quad	0x401fa09f1f14983d              # double 7.9068569999999995
	.quad	0x4020c1563a9f383f              # double 8.3776109999999999
	.quad	0x4023bf7963992c8c              # double 9.8739729999999994
	.quad	0x3fb31832fcac8e69              # double 0.074588000000000002
	.quad	0x400ca3ec02f2f987              # double 3.5800399999999999
	.quad	0x402317041461b6d4              # double 9.5449529999999995
	.quad	0x3fbec679cc74b839              # double 0.120216
	.quad	0x401a7d10b1feeb2d              # double 6.622134
	.quad	0x4015c2a6b0d95140              # double 5.4400890000000004
	.quad	0x40031e5a78f25a25              # double 2.389821
	.quad	0x4000ec1ebc83a96d              # double 2.1152929999999999
	.quad	0x3ffa0ddd6e04c059              # double 1.628385
	.quad	0x4000380a9de8b3b3              # double 2.0273639999999999
	.quad	0x402073486f049a99              # double 8.2251619999999992
	.quad	0x4023b52d01c0ca60              # double 9.8538589999999999
	.quad	0x3fe0f02c4d65e460              # double 0.52931799999999996
	.quad	0x3ff2d7d6b65a9a80              # double 1.1776949999999999
	.quad	0x4017a326e115592e              # double 5.9093280000000004
	.quad	0x4013bb4b72c5197a              # double 4.9329049999999999
	.quad	0x4020d8ba1f4b1ee2              # double 8.4232949999999995
	.quad	0x3ff57ad6cb535009              # double 1.34249
	.quad	0x40199b784662bae0              # double 6.4018259999999998
	.quad	0x3ff04d045fe11127              # double 1.0188029999999999
	.quad	0x3fef679aae6c8f75              # double 0.98139699999999996
	.quad	0x4003acb20fb224ab              # double 2.4593240000000001
	.quad	0x3fb7a58f7121ab4b              # double 0.092369999999999994
	.quad	0x40169e26916440f2              # double 5.6544439999999998
	.quad	0x4023ebdea465a576              # double 9.9606829999999995
	.quad	0x4005fca7d6733ebc              # double 2.748367
	.quad	0x401c61144cbe1eb4              # double 7.0948039999999999
	.quad	0x40179e1ac57e23f2              # double 5.9043989999999997
	.quad	0x40169fe4ffc9795b              # double 5.6561469999999998
	.quad	0x401c4a4052d666aa              # double 7.0725110000000004
	.quad	0x4001048beb5b2d4d              # double 2.1272199999999999
	.quad	0x4009736bd2b6f199              # double 3.1813579999999999
	.quad	0x40208e00d1b71759              # double 8.2773500000000002
	.quad	0x4021f3b2bba98eda              # double 8.9759729999999998
	.quad	0x402295909f1f1498              # double 9.2921189999999995
	.quad	0x3fda8954a7f8012e              # double 0.414632
	.quad	0x40024a9cdc443915              # double 2.286432
	.quad	0x401d43800218def4              # double 7.3159179999999999
	.quad	0x3ffeea2f48c2e771              # double 1.9321740000000001
	.quad	0x402363083558a761              # double 9.6934219999999999
	.quad	0x4005d387160956c1              # double 2.7282850000000001
	.quad	0x401e91bda5119ce0              # double 7.6423249999999996
	.quad	0x40212e7f90d9d777              # double 8.5908169999999995
	.quad	0x4020284ddb5525cc              # double 8.0787189999999995
	.quad	0x3ffb02517e77d524              # double 1.6880660000000001
	.quad	0x4013ba808c8259e2              # double 4.932131
	.quad	0x402061f340d4dc66              # double 8.1913090000000004
	.quad	0x4015fed3953dea46              # double 5.4988539999999997
	.quad	0x3fa9d495182a9931              # double 0.050450000000000002
	.quad	0x401f18fc504816f0              # double 7.7744
	.quad	0x3fe3cb838c111ada              # double 0.61859299999999995
	.quad	0x401e19118c197e56              # double 7.5244809999999998
	.quad	0x40055f950b955f78              # double 2.6716709999999999
	.quad	0x401c6f383f0bae8a              # double 7.1086130000000001
	.quad	0x3fad106ee30caa32              # double 0.056765999999999997
	.quad	0x401d3f4384ba0e84              # double 7.3117809999999999
	.quad	0x40161909f1f14984              # double 5.5244520000000001
	.quad	0x400f64d983947497              # double 3.9242430000000001
	.quad	0x3fed03fb3743632c              # double 0.90673599999999998
	.quad	0x3ff37e7afa722186              # double 1.2183790000000001
	.quad	0x4021113682730c67              # double 8.5336189999999998
	.quad	0x4013605dd8f92afa              # double 4.8441080000000003
	.quad	0x40103538ef34d6a1              # double 4.0519749999999997
	.quad	0x40107e8815e39714              # double 4.1235660000000003
	.quad	0x40172b8800eae18b              # double 5.7925110000000002
	.quad	0x4020918e757928e1              # double 8.2842900000000004
	.quad	0x40130b8fde2ef4e0              # double 4.7612909999999999
	.quad	0x40026d84d338f798              # double 2.3034759999999999
	.quad	0x3ff9762845996745              # double 1.5913470000000001
	.quad	0x40162b1465e89225              # double 5.5420699999999998
	.quad	0x401eec3bd5992429              # double 7.7306970000000001
	.quad	0x401297082491afc0              # double 4.6474919999999997
	.quad	0x3fea2f72b4528284              # double 0.81829200000000001
	.quad	0x400d02e4d1a65061              # double 3.6264129999999999
	.quad	0x3ff2f40c4156e265              # double 1.184582
	.quad	0x400ba5be1a826245              # double 3.4559289999999998
	.quad	0x4003fc9cd3e0bd45              # double 2.4983460000000002
	.quad	0x40159614df8b1572              # double 5.3965639999999997
	.quad	0x40210df090f733a9              # double 8.5272260000000006
	.quad	0x3ff2cd65e4606749              # double 1.175146
	.quad	0x401755ccc89b0ee5              # double 5.8337890000000003
	.quad	0x401efee136e71cda              # double 7.7489059999999998
	.quad	0x400d414163779e9d              # double 3.656863
	.quad	0x401cbe9ff0cbaf96              # double 7.1861569999999997
	.quad	0x3ff9e2d83c6c97d9              # double 1.617882
	.quad	0x3fdbe13f4a98aa86              # double 0.43562299999999998
	.quad	0x400da8ffb8b26395              # double 3.707519
	.quad	0x40100e6362a5e786              # double 4.0140510000000003
	.quad	0x401001e0c5a8155d              # double 4.0018339999999997
	.quad	0x401d60daa0cae643              # double 7.3445840000000002
	.quad	0x401060a5accd5305              # double 4.0943820000000004
	.quad	0x402194ef0281ba80              # double 8.7908860000000004
	.quad	0x3ff8d49b62c77575              # double 1.551906
	.quad	0x4021032617c1bda5              # double 8.5061499999999999
	.quad	0x3fd7fc32ebe596c8              # double 0.37476799999999999
	.quad	0x401f3d77b7c7820a              # double 7.8100269999999998
	.quad	0x40034454de7ea5f8              # double 2.4083649999999999
	.quad	0x4013e680e0653006              # double 4.9751010000000004
	.quad	0x40201153586ca8a0              # double 8.0338390000000004
	.quad	0x3fe73ec02f2f9874              # double 0.72641
	.quad	0x4021710c4dec1c1d              # double 8.7207969999999992
	.quad	0x3ff3b4ca0c282c6f              # double 1.231638
	.quad	0x400da76fb09203a3              # double 3.7067559999999999
	.quad	0x4023ed57bc7f77af              # double 9.9635599999999993
	.quad	0x4017ccfaeff5c6c1              # double 5.9501759999999999
	.quad	0x4000201d5c31593e              # double 2.0156809999999998
	.quad	0x40114a6b93ccd0ff              # double 4.3226760000000004
	.quad	0x3fe80caa326e1156              # double 0.75154600000000005
	.quad	0x4016202363b25700              # double 5.5313850000000002
	.quad	0x40026cb8e086bdf5              # double 2.3030870000000001
	.quad	0x401f0b295e9e1b09              # double 7.7609000000000003
	.quad	0x400bb76683c297c0              # double 3.4645510000000002
	.quad	0x402368a569b17482              # double 9.7043870000000005
	.quad	0x400a7e1e2de87097              # double 3.3115809999999999
	.quad	0x4023f0196d8f4f94              # double 9.9689440000000004
	.quad	0x3fff0c282c6ef3d4              # double 1.9404680000000001
	.quad	0x4013f177ea1c68ec              # double 4.9858089999999997
	.quad	0x401a1c71d6063172              # double 6.5277779999999996
	.quad	0x401c346bacf74470              # double 7.0511920000000003
	.quad	0x401a63eccc469510              # double 6.5975830000000002
	.quad	0x3ff4a8e3ef284168              # double 1.2912330000000001
	.quad	0x400ed34c5da6a444              # double 3.853173
	.quad	0x401ac940789613d3              # double 6.6965349999999999
	.quad	0x4022f31ab0856e69              # double 9.4748129999999992
	.quad	0x3fbfbdcf0307f23d              # double 0.12399
	.quad	0x401882b90a782907              # double 6.1276590000000004
	.quad	0x4020695ee136e71d              # double 8.2058020000000003
	.quad	0x401dc03c07ee0b0b              # double 7.437729
	.quad	0x4015a74fb549f948              # double 5.4133899999999997
	.quad	0x401d63300de4c511              # double 7.3468629999999999
	.quad	0x3fd52de8709741d1              # double 0.33092700000000003
	.quad	0x400e95b89939218a              # double 3.8231060000000001
	.quad	0x40051334c5da6a44              # double 2.6343779999999999
	.quad	0x401451fc8f32378b              # double 5.0800650000000003
	.quad	0x3febe6601bc98a22              # double 0.87187199999999998
	.quad	0x4006b729b280f12c              # double 2.8394349999999999
	.quad	0x4015570b49e01de2              # double 5.3350039999999996
	.quad	0x40220b3daf8df7a5              # double 9.0219550000000002
	.quad	0x3fc399806f262889              # double 0.15312200000000001
	.quad	0x401022c2bd7f51f0              # double 4.0339460000000003
	.quad	0x4023a30446b69db6              # double 9.8183919999999993
	.quad	0x40176a57214f0521              # double 5.8538480000000002
	.quad	0x400a1e81cb46bacf              # double 3.2648959999999998
	.quad	0x3fccb8305d95dd4c              # double 0.22437099999999999
	.quad	0x400f5fd2630ec311              # double 3.9217879999999998
	.quad	0x40219b2db1e9f278              # double 8.8030830000000009
	.quad	0x401062cd39da1661              # double 4.0964859999999996
	.quad	0x401232a51e321a2e              # double 4.5494579999999996
	.quad	0x4022a634fc610f0f              # double 9.3246230000000008
	.quad	0x401ff5eb7457c0b1              # double 7.9901559999999998
	.quad	0x3fe3ceca686e7e63              # double 0.61899300000000002
	.quad	0x400ede121ee67514              # double 3.8584329999999998
	.quad	0x4012038a3b57c4e3              # double 4.503457
	.quad	0x4018e450acc0bdcb              # double 6.2229640000000002
	.quad	0x40197a2877ee4e27              # double 6.3692950000000002
	.quad	0x3fd1e6601bc98a22              # double 0.27968599999999999
	.quad	0x401e04f26aec0725              # double 7.5048310000000002
	.quad	0x401dc1904b3c3e75              # double 7.4390270000000003
	.quad	0x400e5178b3700475              # double 3.7897810000000001
	.quad	0x400ed449129888f8              # double 3.8536549999999998
	.quad	0x40115cb5fe542e55              # double 4.3405379999999996
	.quad	0x40237b54c122749f              # double 9.7408809999999999
	.quad	0x3ff68929aa1d755c              # double 1.408487
	.quad	0x3ff0388ebcc6c54c              # double 1.013808
	.quad	0x40231f48e4755ffe              # double 9.5611029999999992
	.quad	0x400c7f737da61e0c              # double 3.5622319999999998
	.quad	0x401f64c51116a8b9              # double 7.848408
	.quad	0x400e9a8b4bf8fcd6              # double 3.8254609999999998
	.quad	0x4019e9bdc69f8c22              # double 6.4782630000000001
	.quad	0x401e65ae1cde5d18              # double 7.5992969999999999
	.quad	0x40235abd1aa821f3              # double 9.6772240000000007
	.quad	0x400beefe4ffc9796              # double 3.4916960000000001
	.quad	0x3fecf9ee02a77a2d              # double 0.90550900000000001
	.quad	0x4022085ee568a505              # double 9.0163489999999999
	.quad	0x4005c8bda9435ac9              # double 2.7230180000000002
	.quad	0x401e1c7b02d59d56              # double 7.5278130000000001
	.quad	0x401eae7cd0353719              # double 7.6703979999999996
	.quad	0x4022a7aa8a82a561              # double 9.3274729999999995
	.quad	0x401f014f8b588e37              # double 7.7512800000000003
	.quad	0x4008a1b1960fa15e              # double 3.0789520000000001
	.quad	0x401ffade225fa659              # double 7.9949880000000002
	.quad	0x4011cb30f8c64fdb              # double 4.448429
	.quad	0x40102ff79c842fa5              # double 4.046843
	.quad	0x3ff9c74538ef34d7              # double 1.6111500000000001
	.quad	0x4004a264e48626f6              # double 2.579294
	.quad	0x400bfdec5f394b7b              # double 3.4989859999999999
	.quad	0x4001cea52ef911cf              # double 2.2259009999999999
	.quad	0x40124d81adea8976              # double 4.5756899999999998
	.quad	0x4007c7a4a48f96e1              # double 2.9724819999999998
	.quad	0x401b3f1a9fbe76c9              # double 6.8116250000000003
	.quad	0x40173b8561d4306e              # double 5.8081259999999997
	.quad	0x40183281ba7fc32f              # double 6.0493230000000002
	.quad	0x3ff1f04ab606b7aa              # double 1.121165
	.quad	0x4014470c564f97ee              # double 5.0693830000000002
	.quad	0x3fb7912dba4d6e48              # double 0.092059000000000002
	.quad	0x4019cc016052502f              # double 6.4492240000000001
	.quad	0x40158ad2135daad6              # double 5.385567
	.quad	0x3ffafe56473471f8              # double 1.6870940000000001
	.quad	0x4007f2428d434a02              # double 2.9932910000000001
	.quad	0x3ff641eff9f87f02              # double 1.3910979999999999
	.quad	0x3fc51098d477bbf9              # double 0.16456899999999999
	.quad	0x401447e02645e4e7              # double 5.0701910000000003
	.quad	0x400d4999dcb5781c              # double 3.6609379999999998
	.quad	0x3fcfea8112ba16e8              # double 0.24934400000000001
	.quad	0x4018c70153bd1676              # double 6.1943409999999997
	.quad	0x400acc3760bf5d79              # double 3.3497150000000002
	.quad	0x40200cb4289118c2              # double 8.0248120000000007
	.quad	0x4023b902de00d1b7              # double 9.8613499999999998
	.quad	0x40233f985271bcdc              # double 9.6242090000000004
	.quad	0x3ff21c4545846e8f              # double 1.131902
	.quad	0x400ae856e696a26e              # double 3.3634469999999999
	.quad	0x400cf17c5ef62f9d              # double 3.6179130000000002
	.quad	0x401d94677b395c42              # double 7.3949259999999999
	.quad	0x3fc31676640a6b94              # double 0.14912300000000001
	.quad	0x40150c6ac215b9a6              # double 5.2621260000000003
	.quad	0x40231bc903ea704c              # double 9.5542680000000004
	.quad	0x400ec339c0ebedfa              # double 3.8453249999999999
	.quad	0x3ff2732df505d0fa              # double 1.1531199999999999
	.quad	0x4021afd6d7e889c2              # double 8.8434360000000005
	.quad	0x3ff3c7e9d94d0dd0              # double 1.236307
	.quad	0x3fb027525460aa65              # double 0.063100000000000003
	.quad	0x3ffb6aa9f7b5aea3              # double 1.713541
	.quad	0x400a48ffb8b26395              # double 3.285644
	.quad	0x40191dfd2630ec31              # double 6.2792859999999999
	.quad	0x3ff9b59ddc1e7968              # double 1.60684
	.quad	0x4021360d0247021d              # double 8.6055679999999999
	.quad	0x3fff0c21e1d2178f              # double 1.9404619999999999
	.quad	0x401cfbdad7518b0d              # double 7.2459519999999999
	.quad	0x402203fd71b04684              # double 9.0077929999999994
	.quad	0x401e1a5fc7e6b3ff              # double 7.5257560000000003
	.quad	0x4004050d6b228dca              # double 2.5024670000000002
	.quad	0x4021ca877ee4e26d              # double 8.8955649999999995
	.quad	0x4003d8d9b5e95b79              # double 2.4808840000000001
	.quad	0x3ffb43b2dd377e1c              # double 1.7040280000000001
	.quad	0x3ff68895d0b73d19              # double 1.4083460000000001
	.quad	0x4003803b3e9a6f82              # double 2.4376129999999998
	.quad	0x3ff8923810e88590              # double 1.535698
	.quad	0x3fe5c5e0b4e11dbd              # double 0.68040500000000004
	.quad	0x3ff75c1a47a9e2bd              # double 1.459986
	.quad	0x401d9556d19dece5              # double 7.3958389999999996
	.quad	0x3fc683d35eb7457c              # double 0.175898
	.quad	0x4007ce1719f7f8cb              # double 2.9756300000000002
	.quad	0x400196ed6777079e              # double 2.1986949999999998
	.quad	0x400379e8c47a17f4              # double 2.434526
	.quad	0x401a3d0917d6b65b              # double 6.5596050000000004
	.quad	0x3ffaf39192641b33              # double 1.6844650000000001
	.quad	0x4011aab862b27cbf              # double 4.4167189999999996
	.quad	0x4012d81e4712e408              # double 4.7110529999999997
	.quad	0x401a612b1b36bd2b              # double 6.5948909999999996
	.quad	0x40222ac215b9a5a9              # double 9.0835120000000007
	.quad	0x401cc2ca9ac36545              # double 7.190226
	.quad	0x40236b82c2bd7f52              # double 9.7099820000000001
	.quad	0x4010f47f993d5348              # double 4.2387680000000003
	.quad	0x3fd6ec41dd1a21ea              # double 0.35816999999999999
	.quad	0x401a9fa871a3b14b              # double 6.6559160000000004
	.quad	0x4010a8216c61522a              # double 4.1641899999999996
	.quad	0x4016693037d63023              # double 5.6027230000000001
	.quad	0x40217ecd07852f7f              # double 8.7476579999999995
	.quad	0x3ff7468123810e88              # double 1.4547129999999999
	.quad	0x3fef33dd11be6e65              # double 0.97508099999999997
	.quad	0x400d0d8d36b4c7f3              # double 3.6316169999999999
	.quad	0x402108b2a6b0d951              # double 8.5169879999999996
	.quad	0x40090c4cdfaca362              # double 3.1310060000000002
	.quad	0x401514628027d88c              # double 5.2699069999999999
	.quad	0x40135dc69f8c21e2              # double 4.8415780000000002
	.quad	0x3ffe343d89ce4a7b              # double 1.8877539999999999
	.quad	0x401f8c1bda5119ce              # double 7.886825
	.quad	0x3fd8d20afa2f05a7              # double 0.38782
	.quad	0x400768e0c9d9d346              # double 2.9262100000000002
	.quad	0x4006e8ccdd93c46e              # double 2.8636720000000002
	.quad	0x4022a2a2a0a95853              # double 9.3176469999999991
	.quad	0x3fffab4a66559f6f              # double 1.9793190000000001
	.quad	0x4012f8c9b845564b              # double 4.7429569999999996
	.quad	0x401ddfa54c554328              # double 7.4684039999999995
	.quad	0x4009c31c64ba94bc              # double 3.220269
	.quad	0x3ffce797891e2153              # double 1.806541
	.quad	0x40058db50f40e5a3              # double 2.6941929999999998
	.quad	0x401fd28f9f44d445              # double 7.9556259999999996
	.quad	0x40168b24a6a875d5              # double 5.6358819999999996
	.quad	0x40051ce4217d284a              # double 2.6391070000000001
	.quad	0x402151eeed8904f7              # double 8.6600260000000002
	.quad	0x40075b7f9d6f1130              # double 2.9196770000000001
	.quad	0x4009e75f6fd21ff3              # double 3.237975
	.quad	0x3ff11b7e0ac7da1f              # double 1.0692120000000001
	.quad	0x4020203dff3f0fe0              # double 8.0629729999999995
	.quad	0x3ffb32170931012a              # double 1.699729
	.quad	0x402356eefa1e3eaf              # double 9.6697919999999992
	.quad	0x401130a67620ee8d              # double 4.2975099999999999
	.quad	0x40175bb517a46174              # double 5.8395580000000002
	.quad	0x401f8649906cca2e              # double 7.8811400000000003
	.quad	0x4020a9971c10d7bf              # double 8.3312310000000007
	.quad	0x401b2451fc4c1659              # double 6.785469
	.quad	0x400e77f9d6f112fd              # double 3.8085819999999999
	.quad	0x3fd07952d234eb9a              # double 0.25740499999999999
	.quad	0x401668372e6a7696              # double 5.6017729999999997
	.quad	0x3fe7efdeb52c9d17              # double 0.748031
	.quad	0x400e16a832b990b0              # double 3.761063
	.quad	0x40195ad96a6a0126              # double 6.3387200000000004
	.quad	0x4001ca1511dffc54              # double 2.2236729999999998
	.quad	0x4013b64a59c065b6              # double 4.9280179999999998
	.quad	0x40107ce7cd035372              # double 4.1219780000000004
	.quad	0x401c0f70153bd167              # double 7.0150759999999996
	.quad	0x400ba79dd3bafd97              # double 3.4568439999999998
	.quad	0x4016faae6c8f7553              # double 5.7448059999999996
	.quad	0x401036fbd273d5bb              # double 4.0536950000000003
	.quad	0x402264bee807bbb6              # double 9.1967689999999997
	.quad	0x4007b0b9dc2f405f              # double 2.9612919999999998
	.quad	0x3fe2461d8622c450              # double 0.57105899999999998
	.quad	0x4004b4e0114d2f5e              # double 2.5883180000000001
	.quad	0x402110c804102ff9              # double 8.5327760000000001
	.quad	0x3fe4ea9a3d2d87f9              # double 0.65363800000000005
	.quad	0x4021e4304ccee5ac              # double 8.9456810000000004
	.quad	0x401986805a2d7300              # double 6.3813490000000002
	.quad	0x400b89478c868ba0              # double 3.4420310000000001
	.quad	0x402293afd976ff3b              # double 9.2884510000000002
	.quad	0x401c52a90cd423d9              # double 7.0807229999999999
	.quad	0x4020fac8c5004fb1              # double 8.4898129999999998
	.quad	0x3fe8f4afd5454153              # double 0.77986900000000003
	.quad	0x400b9d712a0ec743              # double 3.4518759999999999
	.quad	0x3fc70ed3d859c8c9              # double 0.18013999999999999
	.quad	0x401028fd199bb279              # double 4.0400280000000004
	.quad	0x4023e87dd4413554              # double 9.9540849999999991
	.quad	0x3fee2f922962cfd9              # double 0.94330700000000001
	.quad	0x400df01f31f46ed2              # double 3.7422469999999999
	.quad	0x3fff1b4fe79ee02a              # double 1.9441679999999999
	.quad	0x3fef60f5e41d4b6a              # double 0.98058599999999996
	.quad	0x401001eeed8904f7              # double 4.0018880000000001
	.quad	0x3feb7d49d7ba6699              # double 0.85904400000000003
	.quad	0x402036ae5bc87db3              # double 8.1067990000000005
	.quad	0x401e846412cf0f9d              # double 7.6292879999999998
	.quad	0x4021e2845996744b              # double 8.9424159999999997
	.quad	0x40178ef0ae536502              # double 5.8895900000000001
	.quad	0x4010c8576cce5f74              # double 4.195646
	.quad	0x3ffb1dcb5781c715              # double 1.694774
	.quad	0x4012962cba732df5              # double 4.646655
	.quad	0x402245c78a6dacac              # double 9.1362880000000004
	.quad	0x40058472c0e7bc3c              # double 2.6896719999999998
	.quad	0x402375b9628cbd12              # double 9.7299299999999995
	.quad	0x4021477f27fe4bcb              # double 8.6396420000000003
	.quad	0x3fe59309c7ffde72              # double 0.67419899999999999
	.quad	0x4004fd113836a833              # double 2.6235680000000001
	.quad	0x4023607229e90796              # double 9.6883710000000001
	.quad	0x401623c18b502abb              # double 5.5349180000000002
	.quad	0x4016decd8dbcec85              # double 5.717581
	.quad	0x401fc77fae3608d1              # double 7.9448230000000004
	.quad	0x401696145953586d              # double 5.6465620000000003
	.quad	0x40224814f8b588e3              # double 9.1407849999999993
	.quad	0x40103fbeb9e492bc              # double 4.0622509999999998
	.quad	0x401437e34b945309              # double 5.0545780000000002
	.quad	0x40114eda66128390              # double 4.3270049999999998
	.quad	0x401668a7e73a365d              # double 5.6022030000000003
	.quad	0x401d37fcfc3f811f              # double 7.3046759999999997
	.quad	0x4021b1cf13cee9dd              # double 8.8472829999999991
	.quad	0x401bf91ea78af3e4              # double 6.9932809999999996
	.quad	0x4019e21a2e7f6f4c              # double 6.4708030000000001
	.quad	0x4003c61cffeb074a              # double 2.4717349999999998
	.quad	0x400eae3608d0891a              # double 3.835064
	.quad	0x40107290257c914b              # double 4.1118779999999999
	.quad	0x401dc7d41743e964              # double 7.4451450000000001
	.quad	0x401bbba450acc0be              # double 6.9332440000000002
	.quad	0x3fedaf1886df82b2              # double 0.927624
	.quad	0x4023a96f6512a950              # double 9.8309280000000001
	.quad	0x3fefd3825e13b18e              # double 0.99456900000000004
	.quad	0x4023c6368f084620              # double 9.8871350000000007
	.quad	0x400c7089a0275254              # double 3.5549499999999998
	.quad	0x3f87b0f6ad70e6f3              # double 0.011568
	.quad	0x4009c15c209246bf              # double 3.219414
	.quad	0x401580c069e7fb26              # double 5.3757339999999996
	.quad	0x3fd52bf9830e3cda              # double 0.33080900000000002
	.quad	0x4020dc7a9e2bcf92              # double 8.4306230000000006
	.quad	0x4019ca24cc6822ff              # double 6.447406
	.quad	0x400cb80346dc5d64              # double 3.5898500000000002
	.quad	0x3ff88d60a6330510              # double 1.534516
	.quad	0x40221a6e115592da              # double 9.0516210000000008
	.quad	0x401d87d45a5fc7e7              # double 7.3826460000000003
	.quad	0x40146e96c3fc43b3              # double 5.1079970000000001
	.quad	0x4017fb6672fba01f              # double 5.9955080000000001
	.quad	0x40176797891e2153              # double 5.8511639999999998
	.quad	0x3ff8eadf71eafee7              # double 1.557342
	.quad	0x401918d045fe1112              # double 6.2742319999999996
	.quad	0x3fd9f954eb13dfb1              # double 0.40584300000000001
	.quad	0x4015cc4e7253da73              # double 5.4495180000000003
	.quad	0x3fd0ab0856e696a2              # double 0.26043899999999998
	.quad	0x4010f007dd441355              # double 4.2344049999999998
	.quad	0x400435ac8a372607              # double 2.526208
	.quad	0x3fe13a1f4b1ee243              # double 0.53834499999999996
	.quad	0x3fc19cf9a06a6e33              # double 0.137603
	.quad	0x4017df5ba2be058a              # double 5.9681230000000003
	.quad	0x401d3d28d002e233              # double 7.3097260000000004
	.quad	0x3fdfd323fee2c98e              # double 0.49726199999999998
	.quad	0x401280a5269595ff              # double 4.6256300000000001
	.quad	0x400a715b573eab36              # double 3.3053499999999998
	.quad	0x401ff8c75c4a83b2              # double 7.9929480000000002
	.quad	0x40133266ba493c8a              # double 4.79922
	.quad	0x4021331209edbf8c              # double 8.5997470000000006
	.quad	0x40174e73a365cb36              # double 5.826613
	.quad	0x401bcc3efae7924b              # double 6.9494590000000001
	.quad	0x3fcb6f9767903212              # double 0.21434300000000001
	.quad	0x3fb441ede1198aec              # double 0.079131000000000007
	.quad	0x4011fb5286b59147              # double 4.4954320000000001
	.quad	0x3fdd5a038194c016              # double 0.458619
	.quad	0x400556a37ac3eb7d              # double 2.6673040000000001
	.quad	0x4011c354c122749f              # double 4.440753
	.quad	0x40195ca31e7d9989              # double 6.3404660000000002
	.quad	0x40158ec17ebaf102              # double 5.3894099999999998
	.quad	0x401d63fee2c98e54              # double 7.3476520000000001
	.quad	0x4014d5375c8d9f90              # double 5.2082189999999997
	.quad	0x40226d8ab92c0618              # double 9.2139489999999995
	.quad	0x400bbbdad7518b0d              # double 3.466726
	.quad	0x4010699e0e73604a              # double 4.1031420000000001
	.quad	0x40076c89b0ee49f5              # double 2.927997
	.quad	0x3ffd1ec1c1d6cf85              # double 1.820009
	.quad	0x3fcb5989df1172ef              # double 0.21367
	.quad	0x4003b60e94ee392e              # double 2.4638949999999999
	.quad	0x3ffe12f09d8c6d61              # double 1.879624
	.quad	0x40120f6a93f290ac              # double 4.5150550000000003
	.quad	0x400d903968d759ef              # double 3.6954220000000002
	.quad	0x3ff19799e518f3ed              # double 1.099512
	.quad	0x40052cf63800218e              # double 2.646954
	.quad	0x4017fcc39ffd60e9              # double 5.9968399999999997
	.quad	0x401b2e42e1262025              # double 6.7951769999999998
	.quad	0x401212fd32c625ea              # double 4.5185440000000003
	.quad	0x3fc549b62c77574f              # double 0.16631199999999999
	.quad	0x3ff0ac343b70ef56              # double 1.0420419999999999
	.quad	0x40226f93dd97f62b              # double 9.2179249999999993
	.quad	0x401b879702e6644e              # double 6.8824120000000004
	.quad	0x401e355de58e64b2              # double 7.5521159999999998
	.quad	0x400f922291fb3fa7              # double 3.9463550000000001
	.quad	0x401273a92a305532              # double 4.6129499999999997
	.quad	0x40180df2ecf20642              # double 6.0136219999999998
	.quad	0x401c489656eefa1e              # double 7.0708859999999998
	.quad	0x4007910a99b6f5cb              # double 2.945821
	.quad	0x401e220fb224aada              # double 7.5332629999999998
	.quad	0x401562478854cdb8              # double 5.3459760000000003
	.quad	0x4011e8066c2acb86              # double 4.4765870000000003
	.quad	0x400efa0e8427418d              # double 3.8720979999999998
	.quad	0x4022fd39b888722a              # double 9.4945810000000002
	.quad	0x401da4e7ee9142b3              # double 7.411041
	.quad	0x40230e5300581494              # double 9.5279769999999999
	.quad	0x3fcf0df15a4acf31              # double 0.242613
	.quad	0x400bc3779e9d0e99              # double 3.4704429999999999
	.quad	0x4016eef566490a35              # double 5.733358
	.quad	0x4014c44241c3efae              # double 5.1916589999999996
	.quad	0x401b1e22a2c23748              # double 6.7794290000000004
	.quad	0x402160b39192641b              # double 8.6888699999999996
	.quad	0x3fdd915379fa97e1              # double 0.46199499999999999
	.quad	0x401521f8e3ac0c63              # double 5.2831760000000001
	.quad	0x4016386c226809d5              # double 5.5551000000000004
	.quad	0x3fd247a9e2bcf91a              # double 0.28562399999999999
	.quad	0x400d3f41aef6f8f0              # double 3.6558869999999999
	.quad	0x4021f37aa25d8d7a              # double 8.9755450000000003
	.quad	0x400678c868b9fdbd              # double 2.8089759999999999
	.quad	0x401857b3d8e00086              # double 6.0856469999999998
	.quad	0x40117cdbbe0157ef              # double 4.3719320000000002
	.quad	0x401e140e5a35d67c              # double 7.5195860000000003
	.quad	0x40218600f345069a              # double 8.7617259999999995
	.quad	0x40206b2617c1bda5              # double 8.2092749999999999
	.quad	0x400269ced0b30b5b              # double 2.3016640000000002
	.quad	0x4004d4b48d3ae686              # double 2.6038600000000001
	.quad	0x401e2240fa9c12f1              # double 7.5334510000000003
	.quad	0x40218870fbeb9e49              # double 8.7664869999999997
	.quad	0x400dedb7281fd9ba              # double 3.741072
	.quad	0x4007770f7b9e0610              # double 2.933135
	.quad	0x3f90292817763e4b              # double 0.015782000000000001
	.quad	0x400bd1183b60285f              # double 3.4770970000000001
	.quad	0x400963211cb039ef              # double 3.173403
	.quad	0x401b3785f8d2e515              # double 6.8042220000000002
	.quad	0x40042afee6fb4c3c              # double 2.520994
	.quad	0x40203c8b0079a283              # double 8.1182479999999995
	.quad	0x3fe1a62ed352220c              # double 0.55153600000000003
	.quad	0x401a6352a8438088              # double 6.5969949999999997
	.quad	0x3ff8cb502ababead              # double 1.5496369999999999
	.quad	0x400d8f47b677f6b2              # double 3.6949610000000002
	.quad	0x4005d1055b899392              # double 2.727061
	.quad	0x401a5a26a22b3893              # double 6.5880380000000001
	.quad	0x4020eaa62aa1943a              # double 8.4582990000000002
	.quad	0x3fd7f75d9a0f0a5f              # double 0.374473
	.quad	0x3ffa106bbdbe3c10              # double 1.6290089999999999
	.quad	0x4006d56f32bdc26e              # double 2.8542160000000001
	.quad	0x401b667ad8e43244              # double 6.8500779999999999
	.quad	0x3fd0262cba732df5              # double 0.25233
	.quad	0x401069dd3bafd977              # double 4.103383
	.quad	0x4014ce73a365cb36              # double 5.201613
	.quad	0x3fc99ff4fd6d7e89              # double 0.20019400000000001
	.quad	0x401f73bafd976ff4              # double 7.8630180000000003
	.quad	0x402249081c2e33f0              # double 9.1426400000000001
	.quad	0x4004387c6327ed85              # double 2.5275810000000001
	.quad	0x3fa44b09e98dcdb3              # double 0.039634999999999997
	.quad	0x401ab6f7e3d1cc10              # double 6.6786799999999999
	.quad	0x400a576ff3ade226              # double 3.292694
	.quad	0x400bd75536933a04              # double 3.480143
	.quad	0x3ff92d7d7c2ca149              # double 1.5736060000000001
	.quad	0x400240f1b25f633d              # double 2.281711
	.quad	0x3fd080dc33721d54              # double 0.25786500000000001
	.quad	0x401c21187e7c06e2              # double 7.0323200000000003
	.quad	0x402202a6f3f52fc2              # double 9.0051799999999993
	.quad	0x401b5976ff3ade22              # double 6.8373679999999997
	.quad	0x401601cac083126f              # double 5.5017500000000004
	.quad	0x4021863476295209              # double 8.7621190000000002
	.quad	0x40038dcb1465e892              # double 2.4442349999999999
	.quad	0x401f5e94ab1d4f9c              # double 7.8423639999999999
	.quad	0x3fffb46994185059              # double 1.981546
	.quad	0x40118b1ab0856e69              # double 4.3858439999999996
	.quad	0x3fdade7a743a6480              # double 0.41982900000000001
	.quad	0x4015c07d0aed99cc              # double 5.4379770000000001
	.quad	0x400817b9e060fe48              # double 3.0115850000000002
	.quad	0x401c3c3f811f4f51              # double 7.0588360000000003
	.quad	0x4020606a8fc0d2c4              # double 8.1883130000000008
	.quad	0x4015ef5c6c11a112              # double 5.4837509999999998
	.quad	0x4014e19e30014f8b              # double 5.2203299999999997
	.quad	0x4021439884c6a3be              # double 8.6320230000000002
	.quad	0x40185715831f03d1              # double 6.0850429999999998
	.quad	0x4012e5d41fa76534              # double 4.7244419999999998
	.quad	0x3fedda8155d5f56a              # double 0.93292299999999995
	.quad	0x3ffd6854477ff152              # double 1.837971
	.quad	0x40136cb31c219eb6              # double 4.8561519999999998
	.quad	0x3fee096dd26b723f              # double 0.93865100000000001
	.quad	0x40234e1a8262456f              # double 9.6525459999999991
	.quad	0x402166b8f9b13166              # double 8.7006300000000003
	.quad	0x3fc983f0bae89eba              # double 0.19933899999999999
	.quad	0x40132b530ced4e4d              # double 4.7923090000000004
	.quad	0x400e32fe3f359ff5              # double 3.774899
	.quad	0x4022467fb267c6b9              # double 9.1376930000000005
	.quad	0x401f557de0d66f0d              # double 7.833488
	.quad	0x400f322d0e560419              # double 3.8995000000000002
	.quad	0x40227cbf4cb1897a              # double 9.2436469999999993
	.quad	0x400fcc282c6ef3d4              # double 3.9746860000000002
	.quad	0x40236433f85510d4              # double 9.6957090000000007
	.quad	0x4023635d67ba237d              # double 9.6940720000000002
	.quad	0x401382be8bc169c2              # double 4.8776799999999998
	.quad	0x401cf5d28d002e23              # double 7.2400609999999999
	.quad	0x4019adf37329c348              # double 6.4198740000000001
	.quad	0x3fcf9513f8db4891              # double 0.24673700000000001
	.quad	0x3fea1f98b71b8aa0              # double 0.81635699999999999
	.quad	0x4022a7c6540cc78f              # double 9.3276850000000007
	.quad	0x401414ec636b0963              # double 5.0204329999999997
	.quad	0x3fdd7ac81d3aa36a              # double 0.460619
	.quad	0x4023308b9778572a              # double 9.5948150000000005
	.quad	0x400394940bbb1f25              # double 2.4475479999999998
	.quad	0x4022007e9d94d0dd              # double 9.000966
	.quad	0x401c110ecb74ddf8              # double 7.0166579999999996
	.quad	0x40047a3443d46b27              # double 2.5596700000000001
	.quad	0x3ff4eb6bf444e0db              # double 1.3074760000000001
	.quad	0x3fd28ab92c061848              # double 0.289717
	.quad	0x40126811f4f50a03              # double 4.6016310000000002
	.quad	0x4023aa7e0ef99807              # double 9.832993
	.quad	0x4023f965f5275eea              # double 9.9871060000000007
	.quad	0x401cfe468cac4b4d              # double 7.248316
	.quad	0x3fffdeba6aca7935              # double 1.9918769999999999
	.quad	0x401810ab71327243              # double 6.0162789999999999
	.quad	0x401dac504816f007              # double 7.4182750000000004
	.quad	0x4011914d2f5dbb9d              # double 4.391896
	.quad	0x4019665c70435efa              # double 6.3499619999999997
	.quad	0x3fe27bacb4289119              # double 0.57759700000000003
	.quad	0x4012fd37c1376d55              # double 4.7472830000000004
	.quad	0x40198394317acc4f              # double 6.378495
	.quad	0x401c8c714fce746d              # double 7.1371510000000002
	.quad	0x3f6c92ddbdb5d895              # double 0.0034880000000000002
	.quad	0x40158e9fadafd114              # double 5.3892810000000004
	.quad	0x4004b4d6a161e4f7              # double 2.5882999999999998
	.quad	0x40181da272862f5a              # double 6.0289400000000004
	.quad	0x401921c8a7a41e58              # double 6.2829920000000001
	.quad	0x401f46aceaaf35e3              # double 7.8190189999999999
	.quad	0x3fc3b52007dd4413              # double 0.15396499999999999
	.quad	0x4022ec6195464dc2              # double 9.4616819999999997
	.quad	0x4007b10a137f38c5              # double 2.9614449999999999
	.quad	0x40128c1fc8f32379              # double 4.6368400000000003
	.quad	0x401137789a459104              # double 4.3041710000000002
	.quad	0x40120e9ea1405708              # double 4.5142769999999999
	.quad	0x4010ceb9a176ddad              # double 4.2018800000000001
	.quad	0x4003e0f2becedd48              # double 2.4848379999999999
	.quad	0x3fc7e5c0b9991362              # double 0.186699
	.quad	0x401c009917939a7c              # double 7.0005839999999999
	.quad	0x40234291105e1c15              # double 9.6300129999999999
	.quad	0x402084e3369b9d80              # double 8.2595460000000003
	.quad	0x400caff9f87f023f              # double 3.5859260000000002
	.quad	0x401d4d87724fa8b5              # double 7.3257120000000002
	.quad	0x4022e649906cca2e              # double 9.4497800000000005
	.quad	0x401fe995aaf78fef              # double 7.97811
	.quad	0x401416d8b1dd5d3e              # double 5.0223110000000002
	.quad	0x3ff8fbf0dc768dfc              # double 1.561509
	.quad	0x4013226138fffbce              # double 4.7835739999999998
	.quad	0x4012e973d9ec7000              # double 4.7279809999999998
	.quad	0x4011ede7a743a648              # double 4.482329
	.quad	0x4009ab81f969e3c9              # double 3.2087439999999998
	.quad	0x3fdd1151611ba3ca              # double 0.45418199999999997
	.quad	0x4023e28ae74f2f12              # double 9.9424659999999996
	.quad	0x400af76a2f48c2e7              # double 3.3708079999999998
	.quad	0x401d5ccf28c79f66              # double 7.3406339999999997
	.quad	0x3febe75579af1887              # double 0.87198900000000001
	.quad	0x401b9e74299d883c              # double 6.9047400000000003
	.quad	0x3fc28f190d173fb8              # double 0.14499200000000001
	.quad	0x40109909aed56b01              # double 4.149451
	.quad	0x40170b4d056c508b              # double 5.7610359999999998
	.quad	0x4004e72756861e93              # double 2.6128680000000002
	.quad	0x4019106c43f5f916              # double 6.266038
	.quad	0x3ffde8943e100608              # double 1.8692820000000001
	.quad	0x3fd4f77f27fe4bcb              # double 0.32760600000000001
	.quad	0x40211004fb1183b6              # double 8.531288
	.quad	0x4002c76295208e15              # double 2.347356
	.quad	0x400585b530ced4e5              # double 2.6902870000000001
	.quad	0x40184a8f7db6e504              # double 6.072813
	.quad	0x40069959a30984e4              # double 2.824878
	.quad	0x400c1ea78af3e469              # double 3.5149680000000001
	.quad	0x40116aa0cae642c0              # double 4.3541290000000004
	.quad	0x3feca8aa433508f6              # double 0.89558899999999997
	.quad	0x3fd139c0ebedfa44              # double 0.26915
	.quad	0x40036450acc0bdcb              # double 2.4239820000000001
	.quad	0x402022f709b738e7              # double 8.0682910000000003
	.quad	0x40164d5992428d43              # double 5.5755369999999997
	.quad	0x4010a316a055757d              # double 4.1592659999999997
	.quad	0x401b1df5cf2495e1              # double 6.7792579999999996
	.quad	0x3febb0ea18372e6a              # double 0.86534599999999995
	.quad	0x4017d94c447c30d3              # double 5.962205
	.quad	0x40149e8c8abd5dc4              # double 5.154833
	.quad	0x4010a1c6088d6d3b              # double 4.1579819999999996
	.quad	0x400b7e2b4959e625              # double 3.4366059999999998
	.quad	0x3fe8823e9ea14057              # double 0.765899
	.quad	0x40215938151a4378              # double 8.6742559999999997
	.quad	0x4021fca18bd66278              # double 8.9934200000000004
	.quad	0x3fef7f9f87f023ea              # double 0.98432900000000001
	.quad	0x401b9dd50a88effe              # double 6.9041329999999999
	.quad	0x3ff7d3a92a305532              # double 1.4891749999999999
	.quad	0x3fc22fdfc19c1722              # double 0.14208599999999999
	.quad	0x400875ebfa8f7db7              # double 3.057579
	.quad	0x4021b8fe69270b07              # double 8.8613160000000004
	.quad	0x401852ee41919ac8              # double 6.0809870000000004
	.quad	0x40065ede1198aeb8              # double 2.796322
	.quad	0x40231d0870110a13              # double 9.5567049999999991
	.quad	0x400c8ed0b30b5aa7              # double 3.569734
	.quad	0x401bd50268900c52              # double 6.9580169999999999
	.quad	0x4022187075b3e143              # double 9.0477329999999991
	.quad	0x401325b18548a9bd              # double 4.78681
	.quad	0x401578ec0f883340              # double 5.3680880000000002
	.quad	0x4019ed2aa5c5f7c6              # double 6.4816079999999996
	.quad	0x401f70e23af31b15              # double 7.8602379999999998
	.quad	0x40235d7eaa2a0a96              # double 9.6826070000000009
	.quad	0x4009c9d8c6d612c7              # double 3.2235580000000001
	.quad	0x401bbea57214f052              # double 6.936178
	.quad	0x3fe7451dabe2717a              # double 0.72718700000000003
	.quad	0x3ff845436b8f9b13              # double 1.51691
	.quad	0x4002d908e581cf78              # double 2.3559739999999998
	.quad	0x3fd38b04ab606b7b              # double 0.30536000000000002
	.quad	0x4019f71cda2b5a21              # double 6.4913210000000001
	.quad	0x4021a109f1f14984              # double 8.8145290000000002
	.quad	0x4001465e89225311              # double 2.1593599999999999
	.quad	0x3fed7e82517e77d5              # double 0.92169299999999998
	.quad	0x401fd7c5260f5e42              # double 7.9607130000000002
	.quad	0x3ffbcc426351def0              # double 1.737368
	.quad	0x3ffdc5f17bd8be73              # double 1.8608260000000001
	.quad	0x40217bb6aa4b9885              # double 8.7416280000000004
	.quad	0x40206ad03d9a9542              # double 8.2086199999999998
	.quad	0x40018936c58eeaea              # double 2.191999
	.quad	0x3fdbc1e364bec67a              # double 0.43370900000000001
	.quad	0x3ff9c1700cd85597              # double 1.609726
	.quad	0x4021d4ed2cbea4ec              # double 8.9158720000000002
	.quad	0x401e99fdbd2fa0d7              # double 7.6503819999999995
	.quad	0x4023084c6a3bddfd              # double 9.5162080000000006
	.quad	0x4017d9c12f09d8c7              # double 5.9626510000000001
	.quad	0x3ff076db940fecdd              # double 1.029018
	.quad	0x40221a391d57ff9b              # double 9.0512169999999994
	.quad	0x401ec9e0a41a261c              # double 7.697146
	.quad	0x401550b524399b2c              # double 5.3288159999999998
	.quad	0x40022f7caa7589f0              # double 2.2731870000000001
	.quad	0x400023443d46b26c              # double 2.01722
	.quad	0x3fddfc86cebbba56              # double 0.46853800000000001
	.quad	0x40201d041cc532a5              # double 8.0566720000000007
	.quad	0x4020e57fd82773e2              # double 8.4482409999999994
	.quad	0x3faad2999567dbb1              # double 0.052387999999999997
	.quad	0x4010cff21b3aeee9              # double 4.2030719999999997
	.quad	0x3ffdecabc5154867              # double 1.8702810000000001
	.quad	0x400a20ccff21b3af              # double 3.266016
	.quad	0x401eff359ff4fd6d              # double 7.7492279999999995
	.quad	0x4018cfa7221858bc              # double 6.2027859999999997
	.quad	0x401702f6e82949a5              # double 5.7528949999999996
	.quad	0x401a6ac5c13fd0d0              # double 6.6042699999999996
	.quad	0x4021ac2e557de0d6              # double 8.8362909999999992
	.quad	0x3ff3fd6b65a9a805              # double 1.2493700000000001
	.quad	0x4005d4e1a3f4666f              # double 2.7289460000000001
	.quad	0x401adc165907d912              # double 6.7149289999999997
	.quad	0x400d4986fcdee350              # double 3.6609020000000001
	.quad	0x4007c9bcfd4bf099              # double 2.9735049999999998
	.quad	0x3ff0ed30f062d40b              # double 1.0579080000000001
	.quad	0x400c8c0053e2d624              # double 3.5683600000000002
	.quad	0x4013645cfede97d0              # double 4.8480109999999996
	.quad	0x400181a2e7f6f4bf              # double 2.1882990000000002
	.quad	0x4017a22e5de15ca7              # double 5.9083800000000002
	.quad	0x4014557d5a9eb207              # double 5.0834859999999997
	.quad	0x400e73f9e7b80a9e              # double 3.806629
	.quad	0x40227fbedb7281fe              # double 9.2495030000000007
	.quad	0x40216c7991bc5586              # double 8.7118649999999995
	.quad	0x40105da98676a726              # double 4.0914669999999997
	.quad	0x4007ff4c2b51bd62              # double 2.999657
	.quad	0x40116fe32a0663c7              # double 4.3592649999999997
	.quad	0x40177d9b5e95b78d              # double 5.8726630000000002
	.quad	0x4000aece9a2c6690              # double 2.0853549999999998
	.quad	0x40227e8cac4b4d05              # double 9.2471669999999992
	.quad	0x3fee382a12f90108              # double 0.94435599999999997
	.quad	0x401b956f32bdc26e              # double 6.8959320000000002
	.quad	0x40182001d5c31594              # double 6.0312570000000001
	.quad	0x3fe6e9424e592967              # double 0.715974
	.quad	0x40215b75ea67e847              # double 8.6786340000000006
	.quad	0x402098f8a4c1ebc8              # double 8.2987719999999996
	.quad	0x40106c3f3e0370ce              # double 4.1057100000000002
	.quad	0x4005e4f5d35653ca              # double 2.7367970000000001
	.quad	0x40036889c1b54196              # double 2.4260440000000001
	.quad	0x4023a23a4b5568e8              # double 9.8168509999999997
	.quad	0x40100572580c3090              # double 4.0053190000000001
	.quad	0x401857aaef2c7326              # double 6.0856130000000004
	.quad	0x4015ed9e40c8472c              # double 5.4820489999999999
	.quad	0x401190956c0d6f54              # double 4.3911949999999997
	.quad	0x4020a0366516db0e              # double 8.3129150000000003
	.quad	0x4021117d6b65a9a8              # double 8.53416
	.quad	0x401fc536933a0408              # double 7.9425910000000001
	.quad	0x401097542a23bff9              # double 4.1477820000000003
	.quad	0x401dd3d35eb7457c              # double 7.456861
	.quad	0x40158972474538ef              # double 5.3842249999999998
	.quad	0x3fff5b068123810f              # double 1.9597230000000001
	.quad	0x3ff15c5a3e39f773              # double 1.0850470000000001
	.quad	0x401fdfb0d51f81a6              # double 7.9684480000000004
	.quad	0x401d91ab0856e697              # double 7.3922540000000003
	.quad	0x400f1bea0ba1f4b2              # double 3.88863
	.quad	0x40146eb2074ea8da              # double 5.1081009999999996
	.quad	0x401a975d13d74d59              # double 6.6478159999999997
	.quad	0x401db915379fa97e              # double 7.4307449999999999
	.quad	0x4014a712e40852b5              # double 5.1631580000000001
	.quad	0x40136fa15db3397e              # double 4.8590140000000002
	.quad	0x4003a84cf0739b02              # double 2.4571779999999999
	.quad	0x402061435ac8a372              # double 8.1899669999999993
	.quad	0x401b5310129cbab6              # double 6.8311159999999997
	.quad	0x40210ea055757d5b              # double 8.5285670000000007
	.quad	0x40189f7164c729f6              # double 6.1557060000000003
	.quad	0x401e07c17a89331a              # double 7.507574
	.quad	0x4018f76683c297c0              # double 6.2416020000000003
	.quad	0x400cb6cc5fbf8338              # double 3.5892569999999999
	.quad	0x3fe103254e6e221d              # double 0.53163400000000005
	.quad	0x4012d2a80064a9ce              # double 4.7057190000000002
	.quad	0x40213885f4a1272d              # double 8.6103970000000007
	.quad	0x4022df33a8a3f898              # double 9.4359409999999996
	.quad	0x401caea960b6f9fd              # double 7.1705680000000003
	.quad	0x3fc3b517a46173b8              # double 0.15396399999999999
	.quad	0x3fe4a9a5ebb7739f              # double 0.64570899999999998
	.quad	0x40036353f7ced917              # double 2.4235000000000002
	.quad	0x3ff4a674080f98fa              # double 1.290638
	.quad	0x401777075b3e1438              # double 5.8662390000000002
	.quad	0x3fa3890d5a5b9629              # double 0.038155000000000001
	.quad	0x4015f2acb85a4f01              # double 5.4869870000000001
	.quad	0x40073e8ee6b8305e              # double 2.9055460000000002
	.quad	0x3ff01524bfd2e947              # double 1.0051620000000001
	.quad	0x401b4e264e48626f              # double 6.8263179999999997
	.quad	0x3ff00f440af1cb8a              # double 1.003727
	.quad	0x401ca6d612c6ac21              # double 7.1629259999999997
	.quad	0x4007339192641b33              # double 2.9001800000000002
	.quad	0x401cf4b0e1b4bb5e              # double 7.2389559999999999
	.quad	0x3ff0e1858bc59b80              # double 1.055059
	.quad	0x4003b07e9d94d0dd              # double 2.461179
	.quad	0x3ffcce9c4545846f              # double 1.8004420000000001
	.quad	0x401b6f40a2877ee5              # double 6.8586450000000001
	.quad	0x4020bcf5d35653ca              # double 8.3690630000000006
	.quad	0x40222791a32b12d3              # double 9.0772829999999995
	.quad	0x3ff780767d34df05              # double 1.468863
	.quad	0x4017e525892684cf              # double 5.973776
	.quad	0x401a0c0ce91c8eac              # double 6.511768
	.quad	0x401e331550ca1cef              # double 7.5498859999999998
	.quad	0x40221dde15ca6ca0              # double 9.0583349999999996
	.quad	0x40232341e14bdfd2              # double 9.5688619999999993
	.quad	0x3fe70bbf50e34763              # double 0.72018400000000005
	.quad	0x402287ba237cdcca              # double 9.2650919999999992
	.quad	0x3ffa44fb1183b603              # double 1.6418410000000001
	.quad	0x3ffe0322291fb3fa              # double 1.8757649999999999
	.quad	0x4015864a59c065b6              # double 5.3811429999999998
	.quad	0x400c38a3b57c4e2f              # double 3.5276559999999999
	.quad	0x40216fe80389f83c              # double 8.7185670000000001
	.quad	0x3ff1fecdd0d8cb08              # double 1.124708
	.quad	0x3fba4095f2452c5a              # double 0.102548
	.quad	0x4008fec892ab68cf              # double 3.124406
	.quad	0x40109141205bc01a              # double 4.1418499999999998
	.quad	0x401e1fd7a13c254a              # double 7.5310959999999998
	.quad	0x401442b777d0f1f5              # double 5.0651529999999996
	.quad	0x3fea2172abef06b3              # double 0.81658299999999995
	.quad	0x3ff42f31b152f3c3              # double 1.261522
	.quad	0x3ff27d438d1d8a55              # double 1.1555820000000001
	.quad	0x4001e7be553ac4f8              # double 2.238156
	.quad	0x4021a15e7c8d1959              # double 8.8151740000000007
	.quad	0x4022e900e6afcce2              # double 9.4550850000000004
	.quad	0x401713d29563a9f4              # double 5.7693580000000004
	.quad	0x402104ec204f2ae0              # double 8.5096139999999991
	.quad	0x4012a088d6d3b6cc              # double 4.6567720000000001
	.quad	0x4004e4766c6de764              # double 2.6115539999999999
	.quad	0x40215187e7c06e1a              # double 8.6592400000000005
	.quad	0x400d22b734b51373              # double 3.6419510000000002
	.quad	0x40159291fb3fa6df              # double 5.393135
	.quad	0x401fca0b1bbcf4e8              # double 7.9473079999999995
	.quad	0x4011b44417870542              # double 4.4260409999999997
	.quad	0x40181af74cd3176a              # double 6.0263340000000003
	.quad	0x401d331d2e0e3044              # double 7.2999159999999996
	.quad	0x3fbec3b927d45a60              # double 0.120174
	.quad	0x401f7b29e4d5d80e              # double 7.8702769999999997
	.quad	0x400cdbd3804534bd              # double 3.6073369999999998
	.quad	0x4020d05a0be51090              # double 8.4069369999999992
	.quad	0x402337ff583a53b9              # double 9.6093700000000001
	.quad	0x4021d694ccab3ede              # double 8.9191040000000008
	.quad	0x40067e6a337a80d0              # double 2.8117260000000002
	.quad	0x400b0df71eafee70              # double 3.3818190000000001
	.quad	0x4003da1a93293d10              # double 2.4814959999999999
	.quad	0x401b67d49d7ba66a              # double 6.8513970000000004
	.quad	0x400a8801f75104d5              # double 3.3164099999999999
	.quad	0x401dc40314877681              # double 7.4414179999999996
	.quad	0x40164ce789e774ef              # double 5.5751020000000002
	.quad	0x4023d77121ab4b73              # double 9.9207850000000004
	.quad	0x401991960fa15db3              # double 6.3921739999999998
	.quad	0x4003ad330941c821              # double 2.4595699999999998
	.quad	0x40156cc4ac6cdaf5              # double 5.3562190000000003
	.quad	0x400eaf57f737da62              # double 3.8356170000000001
	.quad	0x400bbaa1d755bccb              # double 3.466129
	.quad	0x400c2ba6266fd652              # double 3.5213130000000001
	.quad	0x402149ee45c358b0              # double 8.6443960000000004
	.quad	0x4017adbcec84f8f9              # double 5.9196660000000003
	.quad	0x40026ff08893b7d8              # double 2.3046579999999999
	.quad	0x4019dc6759ab6d01              # double 6.4652380000000003
	.quad	0x400f41e3eaf6837f              # double 3.9071729999999998
	.quad	0x3ffbb4d056c508b3              # double 1.731644
	.quad	0x3ff7e4473cd57364              # double 1.4932319999999999
	.quad	0x3fc7e68a0d349be9              # double 0.186723
	.quad	0x40199db8fde2ef4e              # double 6.404026
	.quad	0x3fe9677b395c4220              # double 0.79388199999999997
	.quad	0x401094ddf86e3b47              # double 4.145378
	.quad	0x3ff64ec95bff0457              # double 1.3942349999999999
	.quad	0x40101e54b48d3ae7              # double 4.0296200000000004
	.quad	0x3fd09003eea209ab              # double 0.25879000000000002
	.quad	0x4018a77c45cbbc2c              # double 6.1635600000000004
	.quad	0x3feb4ed6fda836eb              # double 0.85337399999999997
	.quad	0x400f55cd91eeaa6d              # double 3.9168959999999999
	.quad	0x3ff35f6fd21ff2e5              # double 1.2108000000000001
	.quad	0x3ffa97e132b55ef2              # double 1.66208
	.quad	0x3ff1b6ae7d566cf4              # double 1.1071
	.quad	0x400fbc23315d701e              # double 3.9668640000000002
	.quad	0x40021e3c968943e1              # double 2.264764
	.quad	0x3fdfc49774256bca              # double 0.49637399999999998
	.quad	0x3ff4751ac9afe1da              # double 1.2785899999999999
	.quad	0x4018716052502eec              # double 6.1107189999999996
	.quad	0x40060b7995ee136e              # double 2.7556029999999998
	.quad	0x4016c165907d9125              # double 5.6888639999999997
	.quad	0x400a34751ce28ed6              # double 3.275614
	.quad	0x401a5295a6c5d207              # double 6.5806490000000002
	.quad	0x401241209edbf8ba              # double 4.5636010000000002
	.quad	0x4022c882491afc05              # double 9.3916190000000003
	.quad	0x4012fd117b5286b6              # double 4.7471370000000004
	.quad	0x4007fdd00f776c48              # double 2.9989319999999999
	.quad	0x3ffc7dfd2630ec31              # double 1.780759
	.quad	0x4021273bea91d9b2              # double 8.5766290000000005
	.quad	0x3fe1ca4f440af1cc              # double 0.55594600000000005
	.quad	0x401016848beb5b2d              # double 4.0219899999999997
	.quad	0x40154ab5c39bcba3              # double 5.322959
	.quad	0x4016cbba12b5e52a              # double 5.6989520000000002
	.quad	0x401b09b7bf1e8e61              # double 6.7594900000000004
	.quad	0x402021f18c9fb613              # double 8.0662959999999995
	.quad	0x4004115ad106ee31              # double 2.5084740000000001
	.quad	0x401743c68661ae71              # double 5.8161870000000002
	.quad	0x4004680303c07ee1              # double 2.5507870000000001
	.quad	0x3ff2c77bbf93ff26              # double 1.173702
	.quad	0x402291437c5692b4              # double 9.2837180000000003
	.quad	0x4021d15a07b352a8              # double 8.9088899999999995
	.quad	0x3fc77891e215336e              # double 0.183367
	.quad	0x402057444e0daa0d              # double 8.1704430000000006
	.quad	0x401be11ada76d97b              # double 6.9698289999999998
	.quad	0x40025b8887229e90              # double 2.2946939999999998
	.quad	0x40118ad85dfa871a              # double 4.3855909999999998
	.quad	0x402316c508b32ce9              # double 9.5444720000000007
	.quad	0x4022c39ecf638002              # double 9.3820709999999998
	.quad	0x3fed25bb7b6bb129              # double 0.910856
	.quad	0x400a142e557de0d6              # double 3.2598539999999998
	.quad	0x3fdd23d0bfa09460              # double 0.45531100000000002
	.quad	0x4023a0285ec3dab6              # double 9.8128080000000004
	.quad	0x4000b25e56cd6c2f              # double 2.087094
	.quad	0x4002c411c2a02321              # double 2.3457370000000002
	.quad	0x4020ef7b395c4220              # double 8.4677369999999996
	.quad	0x400e7b61bb05faec              # double 3.8102450000000001
	.quad	0x4011e2da554b8bf0              # double 4.4715360000000004
	.quad	0x4017dbdc26dce39b              # double 5.9647069999999998
	.quad	0x3ff9c29bf162ae4b              # double 1.610012
	.quad	0x3ff08196d8f4f93c              # double 1.0316380000000001
	.quad	0x40239cbfb15b573f              # double 9.8061500000000005
	.quad	0x4023864a38327675              # double 9.7622850000000003
	.quad	0x4022e4d834091c08              # double 9.4469619999999991
	.quad	0x40119c3d68405b3a              # double 4.4025780000000001
	.quad	0x3fca5b39e279dd3c              # double 0.20590900000000001
	.quad	0x40147a715831f03d              # double 5.1195729999999999
	.quad	0x4010ffe047d3d428              # double 4.249879
	.quad	0x4022785b18548a9c              # double 9.2350700000000003
	.quad	0x4011664a16a48733              # double 4.3498919999999996
	.quad	0x401102089e34330d              # double 4.2519859999999996
	.quad	0x401605907d912557              # double 5.5054340000000002
	.quad	0x4023ebf93ff25e57              # double 9.9608860000000003
	.quad	0x402122b3461309c8              # double 8.567774
	.quad	0x4017456798958d9b              # double 5.8177779999999997
	.quad	0x401a06f262888b54              # double 6.5067839999999997
	.quad	0x4011b177a7008a69              # double 4.4233079999999996
	.quad	0x4012ec011d3671ac              # double 4.7304729999999999
	.quad	0x40223d8c08b75ea6              # double 9.1202089999999991
	.quad	0x3fe91652bd3c3611              # double 0.78397499999999998
	.quad	0x400d0b2bfdb4cc25              # double 3.630455
	.quad	0x4021e6e41919ac79              # double 8.9509589999999992
	.quad	0x4020e7aa68f4b620              # double 8.4524720000000002
	.quad	0x400e5e8d5410f94d              # double 3.7961680000000002
	.quad	0x400046c4c5974e66              # double 2.0345550000000001
	.quad	0x4013b65f9591cd1c              # double 4.9280989999999996
	.quad	0x400a755f78359bc3              # double 3.3073109999999999
	.quad	0x40102b40b34e7686              # double 4.0422390000000004
	.quad	0x401468765ba6efc3              # double 5.1020139999999996
	.quad	0x40136bd72bcb5fe5              # double 4.8553129999999998
	.quad	0x401032788db0574b              # double 4.0492879999999998
	.quad	0x4010d7ecbb7f9d6f              # double 4.2108639999999999
	.quad	0x40199d00b45ae600              # double 6.4033230000000003
	.quad	0x400dc5436b8f9b13              # double 3.72132
	.quad	0x40201a30db6a1e82              # double 8.0511540000000004
	.quad	0x40017c85c24c404a              # double 2.1858019999999998
	.quad	0x401445aee631f8a1              # double 5.0680500000000004
	.quad	0x401142f37fbefd00              # double 4.3153819999999996
	.quad	0x3ffc30867ad8e432              # double 1.7618469999999999
	.quad	0x40219117507e9d95              # double 8.7833810000000003
	.quad	0x3ff57eed45e9185d              # double 1.343488
	.quad	0x3fad3825e13b18db              # double 0.057069000000000002
	.quad	0x401ac20e1f7d73c9              # double 6.6895069999999999
	.quad	0x3fb6e05ccc89b0ee              # double 0.089360999999999995
	.quad	0x40021e6601bc98a2              # double 2.2648429999999999
	.quad	0x40051ed20296b335              # double 2.6400489999999999
	.quad	0x3fc5fefbf401c4fc              # double 0.171844
	.quad	0x4008ff02c4d65e46              # double 3.124517
	.quad	0x401d397fa5d28d00              # double 7.3061509999999998
	.quad	0x400de83c297bfa4c              # double 3.7383959999999998
	.quad	0x40130f345069a4df              # double 4.7648479999999998
	.quad	0x3fff949b62c77575              # double 1.973781
	.quad	0x4022178c436fc159              # double 9.045992
	.quad	0x40127e12e83a109d              # double 4.623119
	.quad	0x4015df7e80389f84              # double 5.4682560000000002
	.quad	0x401061ef73c0c1fd              # double 4.0956400000000004
	.quad	0x4006c9717df19d67              # double 2.8483610000000001
	.quad	0x400bac92146a1a50              # double 3.459263
	.quad	0x401ae4766c6de764              # double 6.7231079999999999
	.quad	0x401e6527e5215769              # double 7.5987850000000003
	.quad	0x40234ac5c13fd0d0              # double 9.6460399999999993
	.quad	0x4001d2fc2656abde              # double 2.2280199999999999
	.quad	0x4020ea5332acfb76              # double 8.4576659999999997
	.quad	0x400ec60a2014727e              # double 3.8466990000000001
	.quad	0x40176a27ae9ab29e              # double 5.8536669999999997
	.quad	0x4004c84e831ad213              # double 2.5978059999999998
	.quad	0x40160855da272863              # double 5.50814
	.quad	0x40218b3fe9fadafd              # double 8.7719719999999999
	.quad	0x40152194c0160525              # double 5.282794
	.quad	0x401d242d05f28848              # double 7.2853279999999998
	.quad	0x401b071ef30a4e38              # double 6.7569540000000003
	.quad	0x3fe07ceb78897e99              # double 0.51524899999999996
	.quad	0x4023be58e64b2314              # double 9.8717719999999999
	.quad	0x400e935d249e44fa              # double 3.821955
	.quad	0x4015d21ea35935fc              # double 5.4551949999999998
	.quad	0x4021a09b0ee49f51              # double 8.8136829999999993
	.quad	0x4011bee17a02fb5d              # double 4.436407
	.quad	0x401c4cc35ce18266              # double 7.0749639999999996
	.quad	0x400e12c0e7bc3c5c              # double 3.7591570000000001
	.quad	0x402016d3d859c8c9              # double 8.0445849999999997
	.quad	0x401b314a4d2b2bfe              # double 6.7981350000000003
	.quad	0x400e1e15ca6ca03c              # double 3.7646899999999999
	.quad	0x402035912556d19e              # double 8.1046230000000001
	.quad	0x4011335e74299d88              # double 4.3001649999999998
	.quad	0x401556bce8533b10              # double 5.3347049999999996
	.quad	0x401f20620ab71327              # double 7.7816239999999998
	.quad	0x4022ad1159c49774              # double 9.3380229999999997
	.quad	0x3ff4b71da37ef5a9              # double 1.2947059999999999
	.quad	0x4021a64f54d1e96c              # double 8.8248239999999995
	.quad	0x3ffa6ab7995ee137              # double 1.651054
	.quad	0x4021f87852f7f499              # double 8.9852930000000004
	.quad	0x40226eff7dfa00e2              # double 9.2167929999999991
	.quad	0x40219ba0e8427419              # double 8.8039620000000003
	.quad	0x4022cb291b823c86              # double 9.3967980000000004
	.quad	0x40112c6ac215b9a6              # double 4.2933760000000003
	.quad	0x402199e9d0e991ff              # double 8.8006119999999992
	.quad	0x4022d05d31337eb3              # double 9.4069610000000007
	.quad	0x4007399bb2788db0              # double 2.9031289999999998
	.quad	0x4011b4e50c5eb314              # double 4.4266550000000002
	.quad	0x401d29a459103c8e              # double 7.2906659999999999
	.quad	0x40169a82a5614df9              # double 5.6508890000000003
	.quad	0x40139a1554fbdad7              # double 4.9004719999999997
	.quad	0x3ffee1e4f765fd8b              # double 1.93015
	.quad	0x3ff68ad9ad85dfa8              # double 1.4088989999999999
	.quad	0x3ff59af07bfe7e20              # double 1.3503270000000001
	.quad	0x3fe39fdbd2fa0d78              # double 0.61326400000000003
	.quad	0x40155b662fdfc19c              # double 5.3392569999999999
	.quad	0x401e7b0f6ad70e6f              # double 7.6201759999999998
	.quad	0x4020d7ca643cc07b              # double 8.4214660000000006
	.quad	0x4011feee957470eb              # double 4.4989569999999999
	.quad	0x40212fe9531550ca              # double 8.5935769999999998
	.quad	0x400dc8fd9fd36f7e              # double 3.7231399999999999
	.quad	0x400e937da61e0c5b              # double 3.8220170000000002
	.quad	0x4021eaf6a50d6b23              # double 8.9589130000000008
	.quad	0x4015060f1b25f634              # double 5.2559170000000002
	.quad	0x401a8c05d52c16df              # double 6.6367409999999998
	.quad	0x3fe872239e6ab9b2              # double 0.76393299999999997
	.quad	0x3fe7af5558212945              # double 0.74015299999999995
	.quad	0x3fe5407cc7d1bb49              # double 0.66412199999999999
	.quad	0x401fc28d002e2329              # double 7.939991
	.quad	0x40200e2174c4cdfb              # double 8.0275990000000004
	.quad	0x4023e305faebc409              # double 9.9434050000000002
	.quad	0x40236fecbb7f9d6f              # double 9.7186029999999998
	.quad	0x4004f3a14cec41dd              # double 2.61896
	.quad	0x40223d01c0ca600b              # double 9.119154
	.quad	0x3fed3573eab367a1              # double 0.912775
	.quad	0x3ff3804d98394749              # double 1.2188239999999999
	.quad	0x401b79713ad5bee4              # double 6.8685960000000001
	.quad	0x4021c4f5f4e4430b              # double 8.8846889999999998
	.quad	0x40118c3b927d45a6              # double 4.386946
	.quad	0x400e92deca2552a0              # double 3.8217140000000001
	.quad	0x400fcbf22c01e68a              # double 3.974583
	.quad	0x4021a9b10fd7e458              # double 8.831429
	.quad	0x4021799a1fd1569f              # double 8.7375039999999995
	.quad	0x3ff7e7ff583a53b9              # double 1.49414
	.quad	0x401aee7cd0353719              # double 6.7328979999999996
	.quad	0x3fd13a81dc0db270              # double 0.26919599999999999
	.quad	0x4009d5fd47bedb73              # double 3.2294870000000002
	.quad	0x401b041bb8c32a8d              # double 6.7540120000000003
	.quad	0x401de5710880d802              # double 7.4740640000000003
	.quad	0x4000c812be48a58b              # double 2.0976919999999999
	.quad	0x400eabf8fcd67fd4              # double 3.833971
	.quad	0x402061df3300de4c              # double 8.1911559999999994
	.quad	0x3fc3a2be0589acbd              # double 0.15340400000000001
	.quad	0x400af1c64ba94bbe              # double 3.3680539999999999
	.quad	0x4021a64e054690de              # double 8.8248139999999999
	.quad	0x401777b8d3f1843c              # double 5.8669159999999998
	.quad	0x3ff0c3b3e9a6f827              # double 1.047779
	.quad	0x401d9d31fcd24e16              # double 7.403511
	.quad	0x3fe3fc1bda5119ce              # double 0.624525
	.quad	0x4021f98e325d4a5e              # double 8.9874130000000001
	.quad	0x40233608d08919f0              # double 9.6055360000000007
	.quad	0x3fd0f87ad080b674              # double 0.26516600000000001
	.quad	0x401ab6db940fecdd              # double 6.678572
	.quad	0x3fe35604189374bc              # double 0.60424999999999995
	.quad	0x40128c28b2a6b0d9              # double 4.6368739999999997
	.quad	0x3ffed7e889c1b542              # double 1.9277120000000001
	.quad	0x401fd814940bbb1f              # double 7.9610159999999998
	.quad	0x3fbbd66277c45cbc              # double 0.10874
	.quad	0x400caedd48451330              # double 3.5853830000000002
	.quad	0x401a806530058149              # double 6.6253859999999998
	.quad	0x40175ec7000431be              # double 5.8425560000000001
	.quad	0x401dc79c4113c686              # double 7.4449319999999997
	.quad	0x4016d425aee631f9              # double 5.7071750000000003
	.quad	0x401643cea6c1a049              # double 5.5662180000000001
	.quad	0x400cf9e1f3a57eaa              # double 3.6220129999999999
	.quad	0x400270203e63e8de              # double 2.3047490000000002
	.quad	0x4021fa2163fdd65a              # double 8.9885359999999999
	.quad	0x400afd955714b9cb              # double 3.3738199999999998
	.quad	0x4021a970d62bf120              # double 8.8309390000000008
	.quad	0x4013d618ce2d1f1d              # double 4.959079
	.quad	0x3ff64eb67c286f8b              # double 1.394217
	.quad	0x400d1475a31a4bdc              # double 3.6349900000000002
	.quad	0x4014953b4b2fa93b              # double 5.145734
	.quad	0x40225bba55d1c3ad              # double 9.1791560000000008
	.quad	0x4012c7bc7f77af64              # double 4.695055
	.quad	0x401b475b3e1437c5              # double 6.8196839999999996
	.quad	0x401bfeea63b688be              # double 6.9989410000000003
	.quad	0x401db00e6afcce1c              # double 7.4219299999999997
	.quad	0x401cb47f13059642              # double 7.176266
	.quad	0x4023df143393ab43              # double 9.9357009999999998
	.quad	0x3fbd1a32b12d3416              # double 0.113681
	.quad	0x4021db1c864883fd              # double 8.9279519999999994
	.quad	0x3ff5964b662fdfc2              # double 1.3491930000000001
	.quad	0x402083eb7cbb3c82              # double 8.2576560000000008
	.quad	0x40210a031ceaf252              # double 8.5195550000000004
	.quad	0x4015c7318fc50481              # double 5.4445249999999996
	.quad	0x4021486705c896dd              # double 8.6414109999999997
	.quad	0x401615abc0e38a7e              # double 5.5211629999999996
	.quad	0x40175542e557de0d              # double 5.8332629999999996
	.quad	0x4020f2c5197a2489              # double 8.4741599999999995
	.quad	0x40129c069e7fb268              # double 4.6523690000000002
	.quad	0x40235d058dde7a74              # double 9.6816829999999995
	.quad	0x3ff4328e92d55a3a              # double 1.262343
	.quad	0x401d2e0008637bd0              # double 7.2949219999999997
	.quad	0x400988e68e3ef284              # double 3.191846
	.quad	0x40135ba9d1f60179              # double 4.8395149999999996
	.quad	0x400cb040bfe3b03e              # double 3.5860609999999999
	.quad	0x401b36709fa54c55              # double 6.8031639999999998
	.quad	0x401c4e5e679463d0              # double 7.0765320000000003
	.quad	0x4020b1ae0c176577              # double 8.3470309999999994
	.quad	0x4020805d744f5d35              # double 8.2507129999999993
	.quad	0x400b60bd44998d04              # double 3.4222359999999998
	.quad	0x401d252934acaff7              # double 7.2862900000000002
	.quad	0x401023fa2ad3e921              # double 4.0351340000000002
	.quad	0x40203cf850df15a5              # double 8.1190820000000006
	.quad	0x4010263a19008206              # double 4.037331
	.quad	0x402181650a45d420              # double 8.7527240000000006
	.quad	0x4018fd8e86402081              # double 6.2476139999999996
	.quad	0x401be1ec918e325d              # double 6.9706289999999997
	.quad	0x401ada47a9e2bcf9              # double 6.7131639999999999
	.quad	0x4021ab800218def4              # double 8.8349609999999998
	.quad	0x3ff9ce6d15ad106f              # double 1.612897
	.quad	0x401bb0a958537e2c              # double 6.9225209999999997
	.quad	0x401b88a159817b96              # double 6.8834280000000003
	.quad	0x3ff5fd2630ec3116              # double 1.374304
	.quad	0x4008f4a3400b88ca              # double 3.1194519999999999
	.quad	0x40099cb89d6adf72              # double 3.201524
	.quad	0x4022d06ec17ebaf1              # double 9.4070949999999999
	.quad	0x401cd95d0b73d189              # double 7.212269
	.quad	0x4021fb61565c2d28              # double 8.9909770000000009
	.quad	0x4013377d523b3637              # double 4.804189
	.quad	0x401c649a133c1ce7              # double 7.0982440000000002
	.quad	0x401c4b5fa22706d5              # double 7.073607
	.quad	0x400cebd1aa821f2a              # double 3.6151460000000002
	.quad	0x4016509289dadfb5              # double 5.578684
	.quad	0x4016d1ccd9620685              # double 5.7048829999999997
	.quad	0x4017772085b18549              # double 5.8663350000000003
	.quad	0x4005d476af89c5e7              # double 2.728742
	.quad	0x40142285a921ccd9              # double 5.0337129999999997
	.quad	0x4008c2584f4c6e6e              # double 3.0948950000000002
	.quad	0x402218096feb4a66              # double 9.0469469999999994
	.quad	0x401de12f901083dc              # double 7.4699080000000002
	.quad	0x4023d93122b7baed              # double 9.9242030000000003
	.quad	0x3ff98301a79fec9a              # double 1.594484
	.quad	0x4018bfe79ee02a78              # double 6.1874070000000003
	.quad	0x3ffb0b6848beb5b3              # double 1.690285
	.quad	0x3ffd53b6cbd987c6              # double 1.832938
	.quad	0x4005f37da61e0c5b              # double 2.7438920000000002
	.quad	0x3f948beb5b2d4d40              # double 0.020065
	.quad	0x3ffba84dfce3150e              # double 1.7285900000000001
	.quad	0x3fca176577531db4              # double 0.20383899999999999
	.quad	0x400b848a58b3f63c              # double 3.4397169999999999
	.quad	0x4011b7bf61aa3f03              # double 4.4294409999999997
	.quad	0x3ff39f8e3ac0c62e              # double 1.2264539999999999
	.quad	0x400523aa79bbadc1              # double 2.6424150000000002
	.quad	0x401f3ed30f062d41              # double 7.8113520000000002
	.quad	0x402322ad1d041cc5              # double 9.5677269999999996
	.quad	0x401c69a133c1ce6c              # double 7.103154
	.quad	0x4020f196d8f4f93c              # double 8.4718540000000004
	.quad	0x4020f2fad6cb5350              # double 8.4745699999999999
	.quad	0x401c6a2d72ffd1dd              # double 7.1036890000000001
	.quad	0x401d125204af9229              # double 7.2678909999999997
	.quad	0x4017c33f42352eb6              # double 5.940671
	.quad	0x4000f6e1deacc921              # double 2.1205479999999999
	.quad	0x3fe0260b2c83ec89              # double 0.50464399999999998
	.quad	0x40178050374ff866              # double 5.8753060000000001
	.quad	0x4012a51f3e89a88b              # double 4.6612520000000002
	.quad	0x4016ba044ae85b9f              # double 5.6816570000000004
	.quad	0x4014775afaf85943              # double 5.1165580000000004
	.quad	0x4001734c5da6a444              # double 2.181298
	.quad	0x3ff41d30270f3882              # double 1.257126
	.quad	0x40182dece5710881              # double 6.0448490000000001
	.quad	0x4022f4edf6124074              # double 9.4783779999999993
	.quad	0x3ff083a647fdc593              # double 1.032141
	.quad	0x40056aae297396d1              # double 2.6770900000000002
	.quad	0x3fe23c85c24c404a              # double 0.56988799999999995
	.quad	0x3fee5ad106ee30cb              # double 0.94858600000000004
	.quad	0x400b5080b673c4f4              # double 3.4143080000000001
	.quad	0x40164c8b0079a283              # double 5.5747489999999997
	.quad	0x4018f13c254a3c64              # double 6.2355809999999998
	.quad	0x4020c65d7cb2d906              # double 8.3874320000000004
	.quad	0x4012dc34c1a8ac5c              # double 4.7150449999999999
	.quad	0x401b932f44912989              # double 6.8937350000000004
	.quad	0x401923947496aad2              # double 6.2847460000000002
	.quad	0x40007a8f7db6e504              # double 2.059844
	.quad	0x40172daa4fca42af              # double 5.7945950000000002
	.quad	0x3fd713cab81f969e              # double 0.36058299999999999
	.quad	0x3fe0aae07e5a78f2              # double 0.52085899999999996
	.quad	0x3ffc7e47991bc558              # double 1.7808299999999999
	.quad	0x3fecf357e670e2c1              # double 0.90470499999999998
	.quad	0x401645992428d435              # double 5.5679670000000003
	.quad	0x402009bfdf7e8039              # double 8.0190420000000007
	.quad	0x4011d797cc39ffd6              # double 4.4605399999999999
	.quad	0x40038da2b5a20ddc              # double 2.4441579999999998
	.quad	0x401565a682b62846              # double 5.3492680000000004
	.quad	0x4017c710880d801b              # double 5.9443989999999998
	.quad	0x40168772d5e071c5              # double 5.6322739999999998
	.quad	0x40213c7e28240b78              # double 8.61815
	.quad	0x4016ae4473cd5736              # double 5.6701829999999998
	.quad	0x400fe0ccff21b3af              # double 3.984766
	.quad	0x3fd562f9ca5bd945              # double 0.33416600000000002
	.quad	0x40194896dd26b724              # double 6.3208880000000001
	.quad	0x401531c25d074214              # double 5.2985930000000003
	.quad	0x4015969fcf3dc055              # double 5.3970940000000001
	.quad	0x4000a2cdc011d367              # double 2.079494
	.quad	0x4012f5f2452c59fb              # double 4.7401819999999999
	.quad	0x400a4f10a99b6f5d              # double 3.2886060000000001
	.quad	0x40023ec0b567557a              # double 2.2806410000000001
	.quad	0x401cc28c36da87a0              # double 7.1899879999999996
	.quad	0x4011ec23fab10ba6              # double 4.4806059999999999
	.quad	0x40215433721d53ce              # double 8.6644550000000002
	.quad	0x3ff933affb04ee7c              # double 1.5751189999999999
	.quad	0x4019878c436fc159              # double 6.382371
	.quad	0x4010925fe974a340              # double 4.142944
	.quad	0x4017698a65492ff5              # double 5.8530670000000002
	.quad	0x402341ffb480a5ad              # double 9.6289040000000003
	.quad	0x400ff96fa82e87d3              # double 3.9967950000000001
	.quad	0x40211a4e7ab75643              # double 8.55138
	.quad	0x40214c0bfe3b03e2              # double 8.6485289999999999
	.quad	0x3fba35610adcd2d4              # double 0.102377
	.quad	0x4014feb2d0a24463              # double 5.248729
	.quad	0x4019b5d9e40c8473              # double 6.4275890000000002
	.quad	0x40190944241c3efb              # double 6.2590490000000001
	.quad	0x3feb9cef240fa9c1              # double 0.86290699999999998
	.quad	0x400c1a20ddc61954              # double 3.5127579999999998
	.quad	0x400c3e7210be9425              # double 3.530491
	.quad	0x4021a1ab29e4d5d8              # double 8.8157589999999999
	.quad	0x40224b682730c671              # double 9.1472789999999993
	.quad	0x3ff15a5a89b951c6              # double 1.0845590000000001
	.quad	0x40206d5f78359bc3              # double 8.2136189999999996
	.quad	0x4010d14983d79075              # double 4.2043819999999998
	.quad	0x4008822e5de15ca7              # double 3.0635650000000001
	.quad	0x4002570b49e01de2              # double 2.2925019999999998
	.quad	0x4012793dd97f62b7              # double 4.6184000000000003
	.quad	0x4023efd6b65a9a80              # double 9.9684349999999995
	.quad	0x401bf63a5c1c6089              # double 6.9904570000000001
	.quad	0x401a7ae9ab29e4d6              # double 6.6200320000000001
	.quad	0x402365a9a8049668              # double 9.6985600000000005
	.quad	0x401fac79702e6645              # double 7.9184320000000001
	.quad	0x3fea20620ab71327              # double 0.81645299999999998
	.quad	0x3feb778dd616f86a              # double 0.858344
	.quad	0x3fdefcfc3f811f4f              # double 0.48419099999999998
	.quad	0x40109c38b04ab607              # double 4.1525600000000003
	.quad	0x4011adcc63f14120              # double 4.4197249999999997
	.quad	0x402013c5154866a1              # double 8.0386129999999998
	.quad	0x4017ff3e89a88ace              # double 5.9992619999999999
	.quad	0x402149e34330d738              # double 8.6443119999999993
	.quad	0x3ffe6cc814d7279a              # double 1.9015580000000001
	.quad	0x4020b2a62aa1943a              # double 8.3489240000000002
	.quad	0x4019ad5fdcdf6988              # double 6.4193110000000004
	.quad	0x400a590b84988095              # double 3.293479
	.quad	0x401c796312f4cf4a              # double 7.1185419999999997
	.quad	0x400c3100a393ee5f              # double 3.523927
	.quad	0x40159b10342aa9f8              # double 5.4014290000000003
	.quad	0x4021a881e4712e41              # double 8.8291160000000009
	.quad	0x40146472c0e7bc3c              # double 5.0980939999999997
	.quad	0x4010ef53c579f234              # double 4.2337179999999996
	.quad	0x40131122b7baecd0              # double 4.7667339999999996
	.quad	0x4018b3d3e4ef0282              # double 6.1756130000000002
	.quad	0x401bc23b3636f3b2              # double 6.9396789999999999
	.quad	0x40214db2b346130a              # double 8.6517540000000004
	.quad	0x4011fd556084a516              # double 4.4973960000000002
	.quad	0x40215d81adea8976              # double 8.6826299999999996
	.quad	0x4020fb2788db0575              # double 8.4905360000000005
	.quad	0x3ff62c9081c2e33f              # double 1.38588
	.quad	0x40214324e9c45458              # double 8.6311409999999995
	.quad	0x401f99fec99f1ae3              # double 7.9003860000000001
	.quad	0x401ae22c45026890              # double 6.720872
	.quad	0x3fc5d05af6c69b5a              # double 0.17042099999999999
	.quad	0x400e421a719b4dcf              # double 3.7822770000000001
	.quad	0x40073ca5bd944aa5              # double 2.9046129999999999
	.quad	0x4013d2fec56d5cfb              # double 4.9560500000000003
	.quad	0x4014996d0917d6b6              # double 5.1498299999999997
	.quad	0x3fec0d130df9bdc7              # double 0.87659600000000004
	.quad	0x40204763a1900820              # double 8.1394319999999993
	.quad	0x400dcb2745bf26f2              # double 3.7241960000000001
	.quad	0x40143d8ec95bff04              # double 5.0601149999999997
	.quad	0x402342a4766c6de7              # double 9.6301609999999993
	.quad	0x40036c36da87a073              # double 2.4278390000000001
	.quad	0x4011785d744f5d35              # double 4.3675439999999996
	.quad	0x401d2582dbe7f2c3              # double 7.286632
	.quad	0x40163b0f6ad70e6f              # double 5.5576759999999998
	.quad	0x40234f88fc9363f5              # double 9.6553419999999992
	.quad	0x3fedd35653c9abb0              # double 0.93204799999999999
	.quad	0x4023630b9dc2f406              # double 9.6934480000000001
	.quad	0x4003fac68a936c59              # double 2.497449
	.quad	0x3ff915d91ab8e8ea              # double 1.5678339999999999
	.quad	0x4022fdb078d92fb2              # double 9.4954870000000007
	.quad	0x400ee775fb2edfe7              # double 3.8630179999999998
	.quad	0x40209771a7e30878              # double 8.2957889999999992
	.quad	0x4022c780dc33721d              # double 9.3896549999999994
	.quad	0x4011160bb2bba98f              # double 4.2715290000000001
	.quad	0x40239bc0e38a7e74              # double 9.8042060000000006
	.quad	0x3ff3008637bd05af              # double 1.1876279999999999
	.quad	0x401839a2c669057d              # double 6.0562849999999999
	.quad	0x401de1198aeb80ed              # double 7.469824
	.quad	0x4009691f2dc2b0ea              # double 3.176329
	.quad	0x401481960fa15db3              # double 5.1265489999999998
	.quad	0x3fde404a72ead927              # double 0.47267399999999998
	.quad	0x4012ce5f7403dddb              # double 4.7015359999999999
	.quad	0x4009cdbdf8f47304              # double 3.22546
	.quad	0x401cdbd1676640a7              # double 7.2146660000000002
	.quad	0x402206516db0dd83              # double 9.01234
	.quad	0x4022f74d37c1376d              # double 9.4830109999999994
	.quad	0x40034e64b2314014              # double 2.413278
	.quad	0x400f42938de6ddf0              # double 3.907508
	.quad	0x3fc1e80389f83be6              # double 0.13989299999999999
	.quad	0x401ea79b77c02afe              # double 7.6636790000000001
	.quad	0x4017545564b662fe              # double 5.832357
	.quad	0x3fea140dd3fe1976              # double 0.81494800000000001
	.quad	0x40115731098d477c              # double 4.3351480000000002
	.quad	0x40211ee8f29d40ee              # double 8.560371
	.quad	0x40215ef73c0c1fc9              # double 8.6854800000000001
	.quad	0x400764db9c7368ad              # double 2.9242469999999998
	.quad	0x3fe28c2c5e2cdc01              # double 0.57961099999999999
	.quad	0x401ba37585be1a82              # double 6.9096279999999997
	.quad	0x40030503fb374363              # double 2.3774489999999999
	.quad	0x4000c22b3892ee85              # double 2.0948090000000001
	.quad	0x4020d161a1db877b              # double 8.4089480000000005
	.quad	0x401a5365881a1555              # double 6.581442
	.quad	0x4020bf0691ea78af              # double 8.3730969999999996
	.quad	0x401ce8c9320d9946              # double 7.2273300000000003
	.quad	0x4007bab6d00b45ae              # double 2.9661689999999998
	.quad	0x401b6ef0f16f4385              # double 6.8583410000000002
	.quad	0x401607fa5d28d003              # double 5.5077910000000001
	.quad	0x40202ebca5375c8e              # double 8.0912830000000007
	.quad	0x40207e7ec7863bef              # double 8.2470610000000004
	.quad	0x4018094a2b9d3cbc              # double 6.0090719999999997
	.quad	0x3fec47e8ccdd93c4              # double 0.88377799999999995
	.quad	0x4016590f733a8a40              # double 5.5869730000000004
	.quad	0x40063e0589acbc8c              # double 2.780284
	.quad	0x4020766299524bfd              # double 8.2312209999999997
	.quad	0x40164465e8922531              # double 5.5667949999999999
	.quad	0x3fe27c914b167ec8              # double 0.57770600000000005
	.quad	0x4004a807357e670e              # double 2.5820449999999999
	.quad	0x40140d76ab5807ff              # double 5.0131480000000002
	.quad	0x400a1387160956c1              # double 3.2595350000000001
	.quad	0x400e373c925785f9              # double 3.7769710000000001
	.quad	0x4023c4dca8e2e2b9              # double 9.8844960000000003
	.quad	0x3fe908787485e3da              # double 0.78228399999999998
	.quad	0x40129c23fab10ba6              # double 4.6524809999999999
	.quad	0x3fedd955714b9cb7              # double 0.93278000000000005
	.quad	0x4015c6dca07f66e8              # double 5.4442009999999996
	.quad	0x4012c1e215336dec              # double 4.6893390000000004
	.quad	0x401c6d8fd5cb7910              # double 7.1069940000000003
	.quad	0x3ff6e10adcd2d44e              # double 1.429942
	.quad	0x3ffbebecedd48451              # double 1.745099
	.quad	0x400c2ae642bf9831              # double 3.520947
	.quad	0x40217499d0203e64              # double 8.7277360000000001
	.quad	0x3ff7d9f2ba9d1f60              # double 1.49071
	.quad	0x401f26ad70e6f2e9              # double 7.7877710000000002
	.quad	0x3ff9c4ab606b7aa2              # double 1.6105149999999999
	.quad	0x3ff445ec3dab5c3a              # double 1.2670710000000001
	.quad	0x401d2a68b19a415f              # double 7.2914149999999998
	.quad	0x3fffa835dedf1e08              # double 1.978567
	.quad	0x3fee028c36da87a0              # double 0.93781099999999995
	.quad	0x401b49fe43675ddd              # double 6.8222589999999999
	.quad	0x3fc8de657b84db9c              # double 0.19428699999999999
	.quad	0x40151a01abd1aa82              # double 5.2753969999999999
	.quad	0x400ad24851a86940              # double 3.3526769999999999
	.quad	0x3ffebf5b5fa22707              # double 1.921718
	.quad	0x4001aaec8d5c7475              # double 2.2084589999999999
	.quad	0x40193d1e53a81dc1              # double 6.3096860000000001
	.quad	0x400eb5b3e1437c57              # double 3.8387220000000002
	.quad	0x3fc1402d16b97fe9              # double 0.134771
	.quad	0x400b08fb00bcbe62              # double 3.3793850000000001
	.quad	0x400270203e63e8de              # double 2.3047490000000002
	.quad	0x401a10d130df9bdc              # double 6.5164229999999996
	.quad	0x401e177c45cbbc2c              # double 7.5229350000000004
	.quad	0x3feafec3547e0696              # double 0.84359899999999999
	.quad	0x4022cccff21b3aef              # double 9.4000240000000001
	.quad	0x3fff48765ba6efc3              # double 1.9551909999999999
	.quad	0x4021dca6ca03c4b1              # double 8.9309600000000007
	.quad	0x401f35870da5daf0              # double 7.8022729999999996
	.quad	0x40205a38da3c2118              # double 8.1762149999999991
	.quad	0x401a63800218def4              # double 6.5971679999999999
	.quad	0x401dc5ec80c73abd              # double 7.4432850000000004
	.quad	0x4022c5330941c821              # double 9.3851549999999992
	.quad	0x400e3d1dcd7060bb              # double 3.7798419999999999
	.quad	0x40216954434e336a              # double 8.7057210000000005
	.quad	0x4023319d451fc4c1              # double 9.5969029999999992
	.quad	0x4022e144aa53fc01              # double 9.4399770000000007
	.quad	0x4020b21ccd962068              # double 8.3478759999999994
	.quad	0x400bd6f8f041461b              # double 3.4799669999999998
	.quad	0x4013a11c2a023209              # double 4.9073339999999996
	.quad	0x40231bb03e20ccff              # double 9.5540789999999997
	.quad	0x4014465f5275ee9a              # double 5.0687230000000003
	.quad	0x400d91a32b12d341              # double 3.6961119999999998
	.quad	0x401e8682730c6717              # double 7.6313570000000003
	.quad	0x4020d7ff151e7536              # double 8.4218679999999999
	.quad	0x3ffe33d29563a9f4              # double 1.8876520000000001
	.quad	0x40204b4bf8fcd680              # double 8.1470640000000003
	.quad	0x401b9a9a3d2d87f9              # double 6.9009790000000004
	.quad	0x401c48815e39713b              # double 7.0708060000000001
	.quad	0x4020780b88ca3e7d              # double 8.2344629999999999
	.quad	0x402305a6e75ff60a              # double 9.5110390000000002
	.quad	0x400274cb1897a67a              # double 2.3070279999999999
	.quad	0x40210296b3354c12              # double 8.5050559999999997
	.quad	0x4015f3226c3b927d              # double 5.4874359999999998
	.quad	0x401466030c23fab1              # double 5.099621
	.quad	0x400b78fc504816f0              # double 3.434075
	.quad	0x402370c5004fb118              # double 9.7202529999999995
	.quad	0x4006b3005814940c              # double 2.8374030000000001
	.quad	0x3fc53111f0c34c1b              # double 0.16556000000000001
	.quad	0x4012103a7546d3fa              # double 4.5158480000000001
	.quad	0x3ffc0614163779ea              # double 1.751484
	.quad	0x40202b042528ae75              # double 8.0840160000000001
	.quad	0x400069efd86a8fc1              # double 2.0517270000000001
	.quad	0x4014e448cf7caa76              # double 5.2229340000000004
	.quad	0x401b7672b884406c              # double 6.865672
	.quad	0x3fbc79702e6644d8              # double 0.11122799999999999
	.quad	0x40234300ffda4053              # double 9.6308670000000002
	.quad	0x400aacb9ecf63800              # double 3.3343389999999999
	.quad	0x4003d8c64fdb09a6              # double 2.4808469999999998
	.quad	0x400a7e1da7b0b392              # double 3.3115800000000002
	.quad	0x400d8a7c5ac471b4              # double 3.6926199999999998
	.quad	0x40101a958537e2c5              # double 4.0259609999999997
	.quad	0x401aea5c1c6088d7              # double 6.7288670000000002
	.quad	0x400f10d5a5b9628d              # double 3.8832200000000001
	.quad	0x401076b54e2b063e              # double 4.115926
	.quad	0x40138d8f4f93bc0a              # double 4.888242
	.quad	0x3fde42396073de1e              # double 0.47279199999999999
	.quad	0x40183396d0917d6b              # double 6.0503799999999996
	.quad	0x401e5757928e0c9e              # double 7.5852950000000003
	.quad	0x4009220ee8d10f52              # double 3.1416300000000001
	.quad	0x4022335d249e44fa              # double 9.10032
	.quad	0x3ff16398201cd5fa              # double 1.0868150000000001
	.quad	0x40018fab53d640ea              # double 2.1951510000000001
	.quad	0x401d7f3c70c996b7              # double 7.3742539999999996
	.quad	0x4023ee106ab14ec2              # double 9.964969
	.quad	0x40160ef5a964e8b8              # double 5.5146090000000001
	.quad	0x401a7a1ec4e7253e              # double 6.6192580000000003
	.quad	0x3f91276fb09203a3              # double 0.016752
	.quad	0x4011418eb8950764              # double 4.3140210000000003
	.quad	0x401e78f2e05ccc8a              # double 7.6181140000000003
	.quad	0x40210de39713ad5c              # double 8.5271270000000001
	.quad	0x3ff9f5f0b28522ea              # double 1.622544
	.quad	0x401fdc49774256bd              # double 7.9651240000000003
	.quad	0x401d8da9003eea21              # double 7.3883400000000004
	.quad	0x40201e95faa8a82a              # double 8.0597379999999994
	.quad	0x401d07bd05af6c6a              # double 7.2575570000000003
	.quad	0x4014639cd8127b2d              # double 5.0972780000000002
	.quad	0x4022523f24d8fd5d              # double 9.1606380000000005
	.quad	0x4019094ee392e1ef              # double 6.2590899999999996
	.quad	0x4020080e27e0ef9a              # double 8.0157330000000009
	.quad	0x40219d6bebe1650a              # double 8.8074639999999995
	.quad	0x3fe6d5a3a08398a6              # double 0.71357899999999996
	.quad	0x40055dee78183f92              # double 2.670865
	.quad	0x4008909b738e6d16              # double 3.0706090000000001
	.quad	0x40095fc2224edf61              # double 3.1717569999999999
	.quad	0x3ffab9bcba301217              # double 1.6703460000000001
	.quad	0x4021f853c148344c              # double 8.9850139999999996
	.quad	0x401d55e2046c764b              # double 7.3338700000000001
	.quad	0x401da0c6f7a0b5ee              # double 7.4070090000000004
	.quad	0x400331e53a81dc0e              # double 2.3993630000000001
	.quad	0x40057657fb69984a              # double 2.682785
	.quad	0x3ff40c6e6d9be4cd              # double 1.2530349999999999
	.quad	0x401c1efb6dca07f6              # double 7.0302559999999996
	.quad	0x4010bce9e5e24788              # double 4.1844859999999997
	.quad	0x401b85421c044285              # double 6.8801350000000001
	.quad	0x3ff8b43e963dc487              # double 1.5440050000000001
	.quad	0x3fe61c8a7a41e57e              # double 0.69098400000000004
	.quad	0x4014af2e8c0485a1              # double 5.1710760000000002
	.quad	0x3fce16a487336588              # double 0.235066
	.quad	0x401a5dbfceb78898              # double 6.5915520000000001
	.quad	0x401ad4562e09fe87              # double 6.7073600000000004
	.quad	0x401b6055757d5a9f              # double 6.8440760000000003
	.quad	0x40237c0ee06d9381              # double 9.7423009999999994
	.quad	0x401de7acc4ef88b9              # double 7.4762449999999996
	.quad	0x400a25af6c69b5a6              # double 3.2684009999999999
	.quad	0x40213556f32bdc27              # double 8.6041790000000002
	.quad	0x400b27620ee8d10f              # double 3.3942299999999999
	.quad	0x3ffb3641700cd856              # double 1.7007460000000001
	.quad	0x4022ca93293d102c              # double 9.3956540000000003
	.quad	0x4018cbbcb1cc9646              # double 6.1989619999999999
	.quad	0x40224c764adff823              # double 9.1493400000000005
	.quad	0x40214bd29563a9f4              # double 8.6480910000000008
	.quad	0x4000ff383f0bae8a              # double 2.124619
	.quad	0x400fc29b6b2af145              # double 3.9700229999999999
	.quad	0x3ffcfe8576cce5f7              # double 1.8121389999999999
	.quad	0x401e30678c0053e3              # double 7.5472700000000001
	.quad	0x401018b32ce89657              # double 4.0241210000000001
	.quad	0x401def1e4b44a1f1              # double 7.4835140000000004
	.quad	0x401d595bff04577e              # double 7.3372650000000004
	.quad	0x401f8d616f86a099              # double 7.8880670000000003
	.quad	0x3fe7ba01eeed8905              # double 0.741456
	.quad	0x40001ae9ab29e4d6              # double 2.0131410000000001
	.quad	0x3ff7d02795703f2d              # double 1.4883189999999999
	.quad	0x401718fbca1059ea              # double 5.7743979999999997
	.quad	0x401659ab29e4d5d8              # double 5.587567
	.quad	0x401c922f2734f82f              # double 7.1427579999999997
	.quad	0x40233a6e115592da              # double 9.6141210000000008
	.quad	0x401bf34a44c7b02d              # double 6.9875879999999997
	.quad	0x4017118372e6a769              # double 5.7671029999999996
	.quad	0x4001bc579f234656              # double 2.2169639999999999
	.quad	0x40184f0c34c1a8ac              # double 6.0771949999999997
	.quad	0x401116bdb1a6d699              # double 4.272208
	.quad	0x4015c404ea4a8c15              # double 5.4414249999999997
	.quad	0x40025d334c5da6a4              # double 2.2955079999999999
	.quad	0x4023f12ddbdb5d89              # double 9.9710529999999994
	.quad	0x40071554fbdad752              # double 2.8854160000000002
	.quad	0x40006f81e8a2ec29              # double 2.0544470000000001
	.quad	0x4000d8a222d5171e              # double 2.1057779999999999
	.quad	0x3ff4608d08919ef9              # double 1.2735719999999999
	.quad	0x400885dd095af295              # double 3.0653630000000001
	.quad	0x4020a3f7f06705c9              # double 8.3202510000000007
	.quad	0x3ff8894c447c30d3              # double 1.53352
	.quad	0x3fe25186db50f40e              # double 0.57245199999999996
	.quad	0x400e9c33721d53ce              # double 3.8262700000000001
	.quad	0x401648d9f90539fc              # double 5.5711440000000003
	.quad	0x3ff7e48d7e02645e              # double 1.4932989999999999
	.quad	0x401971049235f80a              # double 6.3603690000000004
	.quad	0x3ffab737da61e0c6              # double 1.6697310000000001
	.quad	0x400d0fe2e6ea8544              # double 3.6327569999999998
	.quad	0x401c825d4a5df224              # double 7.1273090000000003
	.quad	0x401aa39bcba30121              # double 6.6597739999999996
	.quad	0x401b3d5c31593e60              # double 6.8099220000000003
	.quad	0x401623065f9591cd              # double 5.5342039999999999
	.quad	0x3fe9ef3d3a1d3240              # double 0.81045400000000001
	.quad	0x4008ed59d55e6bc6              # double 3.1158939999999999
	.quad	0x401bd0980b242071              # double 6.9537050000000002
	.quad	0x4022132fec56d5d0              # double 9.0374750000000006
	.quad	0x3fffc00eae18ac9f              # double 1.984389
	.quad	0x4022ddc70435efa6              # double 9.4331589999999998
	.quad	0x401337b99d451fc5              # double 4.8044190000000002
	.quad	0x40071aecd07852f8              # double 2.888147
	.quad	0x4023558537e2c55d              # double 9.6670320000000007
	.quad	0x40132f0307f23cc9              # double 4.7959100000000001
	.quad	0x400241eeed8904f7              # double 2.2821940000000001
	.quad	0x4016d18f3eccc469              # double 5.7046479999999997
	.quad	0x3fe176965f5275ef              # double 0.54572600000000004
	.quad	0x401ba955714b9cb7              # double 6.9153650000000004
	.quad	0x40232791c4b90215              # double 9.5772840000000005
	.quad	0x3fe9d29563a9f384              # double 0.806956
	.quad	0x40100f7e3d1cc101              # double 4.0151300000000001
	.quad	0x3ffe4fc504816f00              # double 1.8944749999999999
	.quad	0x3fee1c5c5718eb89              # double 0.94096199999999997
	.quad	0x401e5667b5f1bef5              # double 7.5843800000000003
	.quad	0x401c83393ab430f5              # double 7.1281480000000004
	.quad	0x40187afd976ff3ae              # double 6.1201080000000001
	.quad	0x4021f05319828805              # double 8.9693839999999998
	.quad	0x401430f7b9e060fe              # double 5.0478199999999998
	.quad	0x401c9a9691a75cd1              # double 7.1509650000000002
	.quad	0x401695bd512ec6bd              # double 5.6462300000000001
	.quad	0x400e9d9231c64ba9              # double 3.8269389999999999
	.quad	0x3ffd469c66d373b0              # double 1.829739
	.quad	0x40143db7f1737543              # double 5.0602720000000003
	.quad	0x3ff206d2ed783dff              # double 1.1266659999999999
	.quad	0x401344b5568e820e              # double 4.8170979999999997
	.quad	0x4016db7f5a5332ad              # double 5.714353
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
