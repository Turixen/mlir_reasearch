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
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
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
	lui	a7, %hi(.L__constant_1500xindex)
	addi	a7, a7, %lo(.L__constant_1500xindex)
	lui	t0, %hi(.L__constant_1500xf64)
	addi	t0, t0, %lo(.L__constant_1500xf64)
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
	.quad	0x3fc06f71a7e30878              # double 0.12840099999999999
	.quad	0x3feefc2eba27ae9b              # double 0.96828400000000003
	.quad	0x3fdf818c5c9a34ca              # double 0.492282
	.quad	0x3fde2107b784662c              # double 0.47076600000000002
	.quad	0x3fd6ccd962068555              # double 0.35625299999999999
	.quad	0x3fd0e21d96e9bbf1              # double 0.26380100000000001
	.quad	0x3fd33dbc23315d70              # double 0.30064299999999999
	.quad	0x3fd3dcdb37c99ae9              # double 0.31035499999999999
	.quad	0x3fc4548a9bcfd4bf              # double 0.15883
	.quad	0x3fe2ef240fa9c12f              # double 0.591692
	.quad	0x3fc3a78f25a250f8              # double 0.15355099999999999
	.quad	0x3fc702795703f2d4              # double 0.17976300000000001
	.quad	0x3fea7c2a8869c66d              # double 0.82765699999999998
	.quad	0x3fa7d199bb2788db              # double 0.046521
	.quad	0x3fe034289118c198              # double 0.50636700000000001
	.quad	0x3fd89791819d2392              # double 0.38425100000000001
	.quad	0x3f91d606317268d3              # double 0.017417999999999999
	.quad	0x3fb15f99c38b04ab              # double 0.067864999999999995
	.quad	0x3fd8089e34330d74              # double 0.37552600000000003
	.quad	0x3fb79713ad5bee3d              # double 0.092148999999999995
	.quad	0x3fb149f94855da27              # double 0.067534999999999998
	.quad	0x3fe0ab9f559b3d08              # double 0.52095000000000002
	.quad	0x3f9740c4156e264e              # double 0.022707999999999999
	.quad	0x3fed5f71eafee6fb              # double 0.91790099999999997
	.quad	0x3fef52b0a6fc58ac              # double 0.97884400000000004
	.quad	0x3fe0fbedb7281fda              # double 0.53075300000000003
	.quad	0x3feef62d83c6c97e              # double 0.96755100000000005
	.quad	0x3fe8ece5710880d8              # double 0.778918
	.quad	0x3fe807db2b346131              # double 0.75095900000000004
	.quad	0x3fec59be4cd74928              # double 0.88595500000000005
	.quad	0x3feb41df3300de4c              # double 0.85179099999999996
	.quad	0x3fd55350092ccf6c              # double 0.33321000000000001
	.quad	0x3fc71feeb2d0a244              # double 0.18066199999999999
	.quad	0x3fe45db1209edbf9              # double 0.63643700000000003
	.quad	0x3fe0f1327243137b              # double 0.529443
	.quad	0x3fc4862f5989df11              # double 0.16034499999999999
	.quad	0x3fed55c74751ce29              # double 0.91672100000000001
	.quad	0x3febb32ce89656ef              # double 0.865622
	.quad	0x3fe187746887a8d6              # double 0.54778499999999997
	.quad	0x3fb955821294573a              # double 0.098960999999999993
	.quad	0x3fc9a1b1960fa15e              # double 0.20024700000000001
	.quad	0x3fef7e06961c3697              # double 0.98413399999999995
	.quad	0x3fe6610cf5b1c865              # double 0.69934700000000005
	.quad	0x3fad6cd6c2efd439              # double 0.057471000000000001
	.quad	0x3fcd8b71b8aa0019              # double 0.230818
	.quad	0x3fead666a98244e9              # double 0.83867199999999997
	.quad	0x3fe1911ada76d97b              # double 0.54896299999999998
	.quad	0x3fee8a5ce5b4245f              # double 0.95438999999999996
	.quad	0x3fcf604189374bc7              # double 0.24512500000000001
	.quad	0x3fda57cd466f501a              # double 0.411609
	.quad	0x3fc84a05dd8f92b0              # double 0.18975900000000001
	.quad	0x3fe84f09528f190d              # double 0.75964799999999999
	.quad	0x3fdcdbad3a604e1e              # double 0.45090799999999998
	.quad	0x3fe8ba7daa4fca43              # double 0.77276500000000004
	.quad	0x3fe3574d594f26af              # double 0.60440700000000003
	.quad	0x3fd5bc23315d701e              # double 0.33960800000000002
	.quad	0x3fd77125dd095af3              # double 0.36628100000000002
	.quad	0x3fed0ef566490a35              # double 0.90807599999999999
	.quad	0x3fea33482be8bc17              # double 0.81876000000000004
	.quad	0x3fe89f01b866e43b              # double 0.76941000000000004
	.quad	0x3fce63e8dda48b65              # double 0.237424
	.quad	0x3f88d0cc35ce1826              # double 0.012116999999999999
	.quad	0x3fc3edf1e0828c37              # double 0.155699
	.quad	0x3fd7240746455eaf              # double 0.36157400000000001
	.quad	0x3fcfdc1e7967caea              # double 0.24890499999999999
	.quad	0x3fdf5f5275ee99a6              # double 0.49019299999999999
	.quad	0x3fd321144cbe1eb4              # double 0.29889399999999999
	.quad	0x3fdd8815e39713ad              # double 0.46143099999999998
	.quad	0x3fdc69728a611772              # double 0.443936
	.quad	0x3fb12556d19dece5              # double 0.066975999999999994
	.quad	0x3fe7edce39b456b4              # double 0.74777899999999997
	.quad	0x3fe87b4e54f7a919              # double 0.76505199999999995
	.quad	0x3fcf69b17481b21c              # double 0.24541299999999999
	.quad	0x3feccad57bc7f77b              # double 0.89976
	.quad	0x3fb40b780346dc5d              # double 0.078299999999999995
	.quad	0x3fdb2adc4c9c90c5              # double 0.42449100000000001
	.quad	0x3fed9c51dabe2718              # double 0.92533200000000004
	.quad	0x3fd24fa05143bf72              # double 0.28610999999999998
	.quad	0x3fdec3e74afd5454              # double 0.480707
	.quad	0x3feef6577531db44              # double 0.96757099999999995
	.quad	0x3fc9310129cbab65              # double 0.19680800000000001
	.quad	0x3fde8d045fe11127              # double 0.47735699999999998
	.quad	0x3fd430270f388228              # double 0.31543900000000002
	.quad	0x3fce878fabda0dfe              # double 0.238512
	.quad	0x3fe98639d5e4a383              # double 0.79763499999999998
	.quad	0x3fb75ea67e846a5d              # double 0.091287999999999994
	.quad	0x3fe1fb762d83c6c9              # double 0.56194599999999995
	.quad	0x3feccaafbc1acde2              # double 0.89974200000000004
	.quad	0x3fe836a1e81cb46c              # double 0.75666900000000003
	.quad	0x3fcbd5e4a3832767              # double 0.21746499999999999
	.quad	0x3fe489613d31b9b6              # double 0.64176999999999995
	.quad	0x3fea8405b39e279e              # double 0.82861600000000002
	.quad	0x3fe4d3005814940c              # double 0.65075700000000003
	.quad	0x3fe053bf2f555821              # double 0.51022299999999998
	.quad	0x3fe1439ffd60e94f              # double 0.53950500000000001
	.quad	0x3fe19531550ca1cf              # double 0.54946200000000001
	.quad	0x3fc8d413122b7baf              # double 0.19397200000000001
	.quad	0x3fea8c64fdb09a67              # double 0.82963799999999999
	.quad	0x3fd3bd05af6c69b6              # double 0.30841200000000002
	.quad	0x3febb2d2bb23571d              # double 0.86557899999999999
	.quad	0x3fc4fdda8bd230ba              # double 0.163997
	.quad	0x3fd11d8622c45027              # double 0.26742700000000003
	.quad	0x3fdf936c58eeae9f              # double 0.49337300000000001
	.quad	0x3feac4bd33d29564              # double 0.83651600000000003
	.quad	0x3fdfc91d14e3bcd3              # double 0.49664999999999998
	.quad	0x3fd35d074213a0c7              # double 0.30255300000000002
	.quad	0x3fe07d50225742dd              # double 0.51529700000000001
	.quad	0x3fe8d21dda059a74              # double 0.77564900000000003
	.quad	0x3fe085d52c16df40              # double 0.51633700000000005
	.quad	0x3faefd438d1d8a55              # double 0.060526000000000003
	.quad	0x3fe58b417ca2120e              # double 0.67324899999999999
	.quad	0x3fe6f8c436fc1590              # double 0.71786700000000003
	.quad	0x3fe58c8eef1bac2e              # double 0.67340800000000001
	.quad	0x3fee9409a2403148              # double 0.95557099999999994
	.quad	0x3fcb9c1f85d744f6              # double 0.215702
	.quad	0x3fdaa109d0635a42              # double 0.41607899999999998
	.quad	0x3febf53a3ec02f30              # double 0.87368500000000004
	.quad	0x3fe34e379b77c02b              # double 0.603298
	.quad	0x3fe7eaf038e29f9d              # double 0.74742900000000001
	.quad	0x3fee5ab9f559b3d0              # double 0.94857499999999995
	.quad	0x3fdbaa7589efd86b              # double 0.43227900000000002
	.quad	0x3fd6da6612839043              # double 0.35708000000000001
	.quad	0x3fe79af1886df82b              # double 0.73766399999999999
	.quad	0x3fedc90e66cb1034              # double 0.93079299999999998
	.quad	0x3fdabbb62413db7f              # double 0.41770699999999999
	.quad	0x3fea2055757d5a9f              # double 0.81644700000000003
	.quad	0x3fe65d377e1b8ed2              # double 0.69887900000000003
	.quad	0x3fe47dd872f33ca3              # double 0.64036199999999999
	.quad	0x3fe75953586ca8a0              # double 0.72965400000000002
	.quad	0x3f4040bfe3b03e21              # double 4.9600000000000002E-4
	.quad	0x3fee13d31b9b66f9              # double 0.93991999999999998
	.quad	0x3fd0ddf43c7d5ed0              # double 0.26354699999999998
	.quad	0x3fe9c6327ed84d34              # double 0.80544400000000004
	.quad	0x3fed74256bca5376              # double 0.92042800000000002
	.quad	0x3fedb0c4588a04d1              # double 0.92782799999999999
	.quad	0x3fd6afe1da7b0b39              # double 0.35448499999999999
	.quad	0x3fed2c79702e6645              # double 0.91167900000000002
	.quad	0x3feb22962cfd8f0c              # double 0.84797199999999994
	.quad	0x3fb16052502eec7d              # double 0.067876000000000006
	.quad	0x3faf672b884406c0              # double 0.061334
	.quad	0x3fe761f3a57eaa2a              # double 0.730707
	.quad	0x3fbadf82b1f687b1              # double 0.104973
	.quad	0x3fe4d043e5321e60              # double 0.65042299999999997
	.quad	0x3fccaaa7ded6ba8c              # double 0.22395799999999999
	.quad	0x3fe70446b69db65f              # double 0.71927200000000002
	.quad	0x3feb812dfd694ccb              # double 0.85951900000000003
	.quad	0x3fed211ec918e326              # double 0.91029300000000002
	.quad	0x3fe235a858793dd9              # double 0.56904999999999994
	.quad	0x3fe68f4517614595              # double 0.70498899999999998
	.quad	0x3fee56d5cfaacd9f              # double 0.94810000000000005
	.quad	0x3fd04c6e6d9be4cd              # double 0.25466499999999997
	.quad	0x3fec28049667b5f2              # double 0.87988500000000003
	.quad	0x3fe5ff90d9d7774b              # double 0.68744700000000003
	.quad	0x3fe445c358afc47e              # double 0.63351599999999997
	.quad	0x3faac14c660a2014              # double 0.052255999999999997
	.quad	0x3fc94c016052502f              # double 0.197632
	.quad	0x3fe8dbd0e12e83a1              # double 0.776833
	.quad	0x3fd399e0e736049f              # double 0.30626700000000001
	.quad	0x3fe4795b35b0bbf5              # double 0.63981399999999999
	.quad	0x3fb4fbb9496249a1              # double 0.081965999999999997
	.quad	0x3fd1f312b1b36bd3              # double 0.28046100000000002
	.quad	0x3fd1ceaaf35e310e              # double 0.27823900000000001
	.quad	0x3fe21a9973d9ec70              # double 0.565747
	.quad	0x3fddbb23571d1d47              # double 0.46454699999999999
	.quad	0x3fe44753e707e176              # double 0.63370700000000002
	.quad	0x3fbc755ffe6d58c9              # double 0.111166
	.quad	0x3fd001040bfe3b04              # double 0.25006200000000001
	.quad	0x3fd4701d9f4d37c1              # double 0.31934299999999999
	.quad	0x3fc6e368f08461fa              # double 0.178815
	.quad	0x3fe9b59bc33f8551              # double 0.80341899999999999
	.quad	0x3fd04840e1719f80              # double 0.25441000000000003
	.quad	0x3fc4b19a415f45e1              # double 0.16167000000000001
	.quad	0x3fc42c3c9eecbfb1              # double 0.15759999999999999
	.quad	0x3fcb6a9c560c7c0f              # double 0.21419099999999999
	.quad	0x3fd8b2031ceaf252              # double 0.38586500000000001
	.quad	0x3febfda836eb4e98              # double 0.87471399999999999
	.quad	0x3fe16f88b9778573              # double 0.54486500000000004
	.quad	0x3fa043a2163fdd66              # double 0.031766000000000003
	.quad	0x3fe844e93e1c9b41              # double 0.75841199999999998
	.quad	0x3fe1191ff7164c73              # double 0.53431700000000004
	.quad	0x3fe5b45f17bd8be7              # double 0.67826799999999998
	.quad	0x3fd10c1fc8f32379              # double 0.26636500000000002
	.quad	0x3fed1f85d744f5d3              # double 0.91009799999999996
	.quad	0x3fc77b5286b59147              # double 0.183451
	.quad	0x3feefd45a5fc7e6b              # double 0.96841699999999997
	.quad	0x3feffd0f1f57b41c              # double 0.999641
	.quad	0x3fe0e3f359ff4fd7              # double 0.52782600000000002
	.quad	0x3fe12e1049235f81              # double 0.53687300000000004
	.quad	0x3fc07afa7221858c              # double 0.12875300000000001
	.quad	0x3feba4b124d099e1              # double 0.86385400000000001
	.quad	0x3fe2ec9c0a8d21bc              # double 0.59138299999999999
	.quad	0x3fe11d96e9bbf0dc              # double 0.53486199999999995
	.quad	0x3fd077fae3608d09              # double 0.25732300000000002
	.quad	0x3fb517e77d523b36              # double 0.082395999999999997
	.quad	0x3f871327243137b0              # double 0.011266999999999999
	.quad	0x3fc87caea747d806              # double 0.191305
	.quad	0x3fe4045dc8323359              # double 0.62553300000000001
	.quad	0x3feb6e8af81626b3              # double 0.85724400000000001
	.quad	0x3fe8d5bab21815a0              # double 0.77608999999999994
	.quad	0x3fd5e38a7e73a366              # double 0.34201300000000001
	.quad	0x3fd0f3b213e3e293              # double 0.264874
	.quad	0x3fedb96af038e2a0              # double 0.92888400000000004
	.quad	0x3feb3cc6c54bcf0b              # double 0.85116899999999995
	.quad	0x3fd624f227d028a2              # double 0.34600500000000001
	.quad	0x3fdc30164840e172              # double 0.44043500000000002
	.quad	0x3fc509e98dcdb37d              # double 0.16436500000000001
	.quad	0x3fcb5f91600f3450              # double 0.21385399999999999
	.quad	0x3f8d3cbc48f10a9a              # double 0.014276
	.quad	0x3fedb7a5f41aef70              # double 0.92866800000000005
	.quad	0x3fe2a88051c9f72f              # double 0.58306899999999995
	.quad	0x3fe564f3343fa2ad              # double 0.66857299999999997
	.quad	0x3fe85512ec6bce85              # double 0.76038499999999998
	.quad	0x3fd289613d31b9b6              # double 0.28963499999999998
	.quad	0x3fe3ccd0fe8ab4fa              # double 0.61875199999999997
	.quad	0x3fd452502eec7c95              # double 0.31752399999999997
	.quad	0x3fb91f926c7eae5c              # double 0.098138000000000003
	.quad	0x3fe53899392189be              # double 0.66315900000000005
	.quad	0x3fe34460ed80a17b              # double 0.60209699999999999
	.quad	0x3fcc4aada33bd9cb              # double 0.221029
	.quad	0x3fe8066a11ec918e              # double 0.75078299999999998
	.quad	0x3fd114e7ee9142b3              # double 0.266901
	.quad	0x3fe58ec52a411c2a              # double 0.673678
	.quad	0x3fedcbbc2b94d940              # double 0.93111999999999994
	.quad	0x3fe585e5f30e7ff6              # double 0.67259500000000005
	.quad	0x3fd330db6a1e81cb              # double 0.29985699999999998
	.quad	0x3fef5052934acaff              # double 0.97855499999999995
	.quad	0x3f93c70c996b7671              # double 0.019314000000000001
	.quad	0x3fec1081c2e33eff              # double 0.87701499999999999
	.quad	0x3fe9ab27cbf6e3f8              # double 0.80214300000000005
	.quad	0x3fcc7496aad1d042              # double 0.22230800000000001
	.quad	0x3fea8c3b0c4588a0              # double 0.82961799999999996
	.quad	0x3feffad2999567dc              # double 0.99936800000000003
	.quad	0x3fd13be22e5de15d              # double 0.26928000000000002
	.quad	0x3fdc62b6ae7d566d              # double 0.443525
	.quad	0x3fda05143bf72713              # double 0.40655999999999998
	.quad	0x3fd45c96030c23fb              # double 0.31815100000000002
	.quad	0x3fcb7225b749adc9              # double 0.214421
	.quad	0x3fbbd48cb4aec8d6              # double 0.108712
	.quad	0x3f70d0678c0053e3              # double 0.0041050000000000001
	.quad	0x3fe53b9ae0c17657              # double 0.66352599999999995
	.quad	0x3fe0596a6a01259a              # double 0.51091500000000001
	.quad	0x3fe72fff36ac6477              # double 0.72460899999999995
	.quad	0x3fe74ae429e0a41a              # double 0.72789199999999998
	.quad	0x3fe33458cd20afa3              # double 0.60014000000000001
	.quad	0x3fe125e13b18dac2              # double 0.53587399999999996
	.quad	0x3fd326fa3fcc9eaa              # double 0.29925400000000002
	.quad	0x3fe5926c7eae5bc8              # double 0.67412399999999995
	.quad	0x3fe25c65c70435f0              # double 0.57377900000000004
	.quad	0x3fe00954a7f8012e              # double 0.501139
	.quad	0x3fdbc2699c7bcc29              # double 0.43374099999999999
	.quad	0x3fec31e9f2778141              # double 0.88109300000000002
	.quad	0x3fe4139eadd590c1              # double 0.62739500000000004
	.quad	0x3fef510b1feeb2d1              # double 0.97864300000000004
	.quad	0x3fd1e62dc6e2a800              # double 0.27967399999999998
	.quad	0x3fe16e935b91f70e              # double 0.54474800000000001
	.quad	0x3fd547cb70ac3a86              # double 0.332507
	.quad	0x3fe8b9f340d4dc66              # double 0.77269900000000002
	.quad	0x3fd7d84901d19158              # double 0.37257600000000002
	.quad	0x3fd985caafbc1ace              # double 0.39879100000000001
	.quad	0x3fe9ae46cfc829d0              # double 0.80252400000000002
	.quad	0x3fc57eb28d8665e0              # double 0.16792899999999999
	.quad	0x3fef019b0ab2e169              # double 0.96894599999999997
	.quad	0x3fe85145d851654d              # double 0.75992099999999996
	.quad	0x3fd414bdfd2630ec              # double 0.31376599999999999
	.quad	0x3fe9109070fbeb9e              # double 0.78327199999999997
	.quad	0x3fc7a921ccd96207              # double 0.18484900000000001
	.quad	0x3fe77b7a5f41aef7              # double 0.733823
	.quad	0x3fc62c881e4712e4              # double 0.173234
	.quad	0x3fed7b549f94855e              # double 0.92130500000000004
	.quad	0x3fcf9b4dcebfec14              # double 0.24692700000000001
	.quad	0x3fe98372e6a76966              # double 0.797296
	.quad	0x3f823aafff36ac64              # double 0.0089009999999999992
	.quad	0x3fd025072085b185              # double 0.25225999999999998
	.quad	0x3fefec8f75536934              # double 0.99762700000000004
	.quad	0x3fed5d249e44fa05              # double 0.91761999999999999
	.quad	0x3fec640c8472c0e8              # double 0.88721300000000003
	.quad	0x3fd0125dd095af29              # double 0.25112099999999998
	.quad	0x3fba9e5e2478854d              # double 0.103979
	.quad	0x3fdb068db8bac711              # double 0.42227500000000001
	.quad	0x3fe3e412cf0f9d2c              # double 0.621591
	.quad	0x3fefdd3bafd976ff              # double 0.99575599999999997
	.quad	0x3fefe91ea78af3e4              # double 0.99720699999999995
	.quad	0x3fee229845dc8323              # double 0.94172299999999998
	.quad	0x3fd504ea4a8c154d              # double 0.32842500000000002
	.quad	0x3fea33508f648c72              # double 0.81876400000000005
	.quad	0x3fd05710880d801b              # double 0.25531399999999999
	.quad	0x3fdf38f7985271bd              # double 0.48785200000000001
	.quad	0x3fd36fda836eb4ea              # double 0.30370200000000003
	.quad	0x3fd11f9acffa7eb7              # double 0.26755400000000001
	.quad	0x3fee9d68c692f6e8              # double 0.95671499999999998
	.quad	0x3fd4dd334c5da6a4              # double 0.32600099999999999
	.quad	0x3fed239e6ab9b23e              # double 0.91059800000000002
	.quad	0x3f89335d249e44fa              # double 0.012305
	.quad	0x3fe6664f54d1e96c              # double 0.69998899999999997
	.quad	0x3fe6b50b0f27bb30              # double 0.70960000000000001
	.quad	0x3fb0ca925fe974a3              # double 0.065590999999999997
	.quad	0x3fe76dd8b60f1b26              # double 0.732159
	.quad	0x3f8f822bbecaab8a              # double 0.015384999999999999
	.quad	0x3fe989cc319c5a3e              # double 0.79807099999999997
	.quad	0x3fdad3b6cbd987c6              # double 0.41917199999999999
	.quad	0x3fddb2788db0574b              # double 0.46401799999999999
	.quad	0x3fe22f1886df82b2              # double 0.568249
	.quad	0x3fc92fdb8fde2ef5              # double 0.196773
	.quad	0x3fe646ef3d3a1d32              # double 0.69615899999999997
	.quad	0x3fcbb96af038e2a0              # double 0.21659600000000001
	.quad	0x3fe369d51b4fe79f              # double 0.60666900000000001
	.quad	0x3fef4003254e6e22              # double 0.97656399999999999
	.quad	0x3fb252bd3c361134              # double 0.071575
	.quad	0x3fa3f5b5fa22706d              # double 0.038983999999999998
	.quad	0x3fea5c8fb86f47b6              # double 0.82379899999999995
	.quad	0x3fea2187a4a48f97              # double 0.81659300000000001
	.quad	0x3feebea2d2fe3f36              # double 0.96077100000000004
	.quad	0x3fc60e6afcce1c58              # double 0.172315
	.quad	0x3fab404ea4a8c155              # double 0.053225000000000001
	.quad	0x3fe076f08cc575c0              # double 0.51451899999999995
	.quad	0x3fa996312f4cf4a5              # double 0.049973999999999998
	.quad	0x3fd8391d57ff9b56              # double 0.37848599999999999
	.quad	0x3fc07c49fd7a13c2              # double 0.12879299999999999
	.quad	0x3fd76045baf533f4              # double 0.36525099999999999
	.quad	0x3fcc67cf1c3265ae              # double 0.221918
	.quad	0x3fcf24e160d887ec              # double 0.243313
	.quad	0x3fe0951e75360d02              # double 0.51820299999999997
	.quad	0x3fd208fa7a85015c              # double 0.28179799999999999
	.quad	0x3fbd36f7e3d1cc10              # double 0.11412
	.quad	0x3fd872f33ca31e7e              # double 0.38201600000000002
	.quad	0x3fe85e41d4b6a61a              # double 0.76150600000000002
	.quad	0x3fe1a4180d3cff65              # double 0.55128100000000002
	.quad	0x3fe7e5b63d3e4ef0              # double 0.74679099999999998
	.quad	0x3fb7e1437c5692b4              # double 0.093281000000000003
	.quad	0x3fe74ef459d9902a              # double 0.72838800000000004
	.quad	0x3fe8b55cd91eeaa7              # double 0.77213900000000002
	.quad	0x3fe16c0f88333fc8              # double 0.54444099999999995
	.quad	0x3fe96b11c6d1e109              # double 0.79432000000000003
	.quad	0x3fe567ddca4b124d              # double 0.668929
	.quad	0x3fc50e1b4bb5e0f8              # double 0.164493
	.quad	0x3fc02f405f6ba062              # double 0.126442
	.quad	0x3fb5f2fdb8fde2ef              # double 0.085738999999999996
	.quad	0x3fd912fd32c625ea              # double 0.39178400000000002
	.quad	0x3fd005e1c15097c8              # double 0.250359
	.quad	0x3fec59af9ebe9c88              # double 0.88594799999999996
	.quad	0x3fc0f2734f82f512              # double 0.13239899999999999
	.quad	0x3fd87b784662bae0              # double 0.38253599999999999
	.quad	0x3f89d7774aba3876              # double 0.012618000000000001
	.quad	0x3fe021fd1569f490              # double 0.50414899999999996
	.quad	0x3fdc4eca686e7e63              # double 0.44230900000000001
	.quad	0x3feab44e50c5eb31              # double 0.83450999999999997
	.quad	0x3fe004988094e5d6              # double 0.50056100000000003
	.quad	0x3feae5929670196e              # double 0.84052400000000005
	.quad	0x3fe099c17225b74a              # double 0.51876900000000004
	.quad	0x3fdedce7cd035372              # double 0.48223300000000002
	.quad	0x3fe67dae81882adc              # double 0.70284199999999997
	.quad	0x3fc09c0229a5ebb7              # double 0.12976099999999999
	.quad	0x3fdf7aaac1094a2c              # double 0.49186200000000002
	.quad	0x3fe40f88333fc86d              # double 0.62689600000000001
	.quad	0x3fed95e9e1b089a0              # double 0.92454999999999998
	.quad	0x3fb6ac53b0813cac              # double 0.088567000000000007
	.quad	0x3fe364c0df58c08b              # double 0.60604899999999995
	.quad	0x3fefe0b4e11dbca9              # double 0.99617999999999995
	.quad	0x3fd69270b06c43f6              # double 0.352688
	.quad	0x3fdc7ae5796bfca8              # double 0.44500099999999998
	.quad	0x3fda3e963dc486ad              # double 0.41006999999999999
	.quad	0x3fefd84f4c6e6d9c              # double 0.99515500000000001
	.quad	0x3fea740e5a35d67c              # double 0.82666700000000004
	.quad	0x3fec9b54195cc858              # double 0.89396100000000001
	.quad	0x3fe9cebfec13b9f1              # double 0.80648799999999998
	.quad	0x3fec8520d130df9c              # double 0.89125100000000001
	.quad	0x3fe75c70435efa61              # double 0.73003399999999996
	.quad	0x3fe6e0a2014727dd              # double 0.71492100000000003
	.quad	0x3fe606b15f88fc93              # double 0.68831699999999996
	.quad	0x3f9c8abd5dc40075              # double 0.027872999999999998
	.quad	0x3fd66323bbc6eb0b              # double 0.34980099999999997
	.quad	0x3fbccb3a2595bbbf              # double 0.11247600000000001
	.quad	0x3fda27179bfdf7e8              # double 0.408636
	.quad	0x3f7634549b62c775              # double 0.0054209999999999996
	.quad	0x3fec07c84b5dcc64              # double 0.87595
	.quad	0x3fec01b866e43aa8              # double 0.87521000000000004
	.quad	0x3fa5798d8a979e17              # double 0.041943000000000001
	.quad	0x3fe17687b139c94f              # double 0.54571899999999995
	.quad	0x3fd2386d2ed783e0              # double 0.284694
	.quad	0x3fd12d1f1cfbb949              # double 0.26837899999999998
	.quad	0x3fd8adc0980b2420              # double 0.38560499999999998
	.quad	0x3fc904577d955715              # double 0.19544500000000001
	.quad	0x3fea08333fc86cec              # double 0.81350100000000002
	.quad	0x3fe168405b39e27a              # double 0.54397600000000002
	.quad	0x3fce60242d05f288              # double 0.23730899999999999
	.quad	0x3fd42cbea4ebdd33              # double 0.31523099999999998
	.quad	0x3fd53929ed3953df              # double 0.33161400000000002
	.quad	0x3fd45e39713ad5bf              # double 0.31825100000000001
	.quad	0x3fd18bbd3804534c              # double 0.27415400000000001
	.quad	0x3fe8d2c59fb1e18f              # double 0.775729
	.quad	0x3fbcb35f3d7d3911              # double 0.112112
	.quad	0x3feab3fa6defc7a4              # double 0.83447000000000004
	.quad	0x3fd4b8b26394face              # double 0.32377299999999998
	.quad	0x3fc9148fd9fd36f8              # double 0.19594
	.quad	0x3fe4f31b152f3c2e              # double 0.65467600000000004
	.quad	0x3fc99b024f6598e1              # double 0.200043
	.quad	0x3fd8809917939a7c              # double 0.38284899999999999
	.quad	0x3fe7cdc443914f48              # double 0.74386799999999997
	.quad	0x3fe1e6256366d7a5              # double 0.55934399999999995
	.quad	0x3fe1d171e29b6b2b              # double 0.55681700000000001
	.quad	0x3fe630c23fab10ba              # double 0.69345199999999996
	.quad	0x3fe266ec9e236c16              # double 0.57506400000000002
	.quad	0x3fec69ca9ef5232d              # double 0.88791399999999998
	.quad	0x3fb1e01de2691644              # double 0.069825999999999999
	.quad	0x3fd918548a9bcfd5              # double 0.39211000000000001
	.quad	0x3fba772d5e071c54              # double 0.103381
	.quad	0x3feb278af3e468cb              # double 0.84857700000000003
	.quad	0x3fe9f0e90bc7b45f              # double 0.81065799999999999
	.quad	0x3fef7e82517e77d5              # double 0.98419299999999998
	.quad	0x3fb62f48c2e770bd              # double 0.086659
	.quad	0x3fe98268900c521e              # double 0.79716900000000002
	.quad	0x3fc70a24463065f9              # double 0.17999699999999999
	.quad	0x3fe98e71476af89c              # double 0.79863799999999995
	.quad	0x3fedbbe878fabda1              # double 0.92918800000000001
	.quad	0x3fbb07182235b4ee              # double 0.105577
	.quad	0x3fd5b07075b3e143              # double 0.33889399999999997
	.quad	0x3fe3b04ab606b7aa              # double 0.61526999999999998
	.quad	0x3fe810a569b17482              # double 0.75203200000000003
	.quad	0x3fdc0995aaf78fef              # double 0.438085
	.quad	0x3fed65d5b24e9c45              # double 0.91868099999999997
	.quad	0x3fd5cc4ac6cdaf4b              # double 0.34059400000000001
	.quad	0x3fae92d55a3a083a              # double 0.059714000000000003
	.quad	0x3fe795e7c8d19589              # double 0.73704899999999995
	.quad	0x3fdeb0142f61ed5b              # double 0.47949700000000001
	.quad	0x3fa5dd4c76d117b5              # double 0.042703999999999999
	.quad	0x3fd5d798d8a979e1              # double 0.34128399999999998
	.quad	0x3fb80767d34df04e              # double 0.093863000000000001
	.quad	0x3fe5da09cc319c5a              # double 0.68286599999999997
	.quad	0x3fd1d16b97fe8ee7              # double 0.27840700000000002
	.quad	0x3fd0bab21815a07b              # double 0.26139499999999999
	.quad	0x3fd1adc0980b2420              # double 0.27622999999999998
	.quad	0x3fe3a07f66e86c66              # double 0.61334200000000005
	.quad	0x3fca9ea9a3d2d880              # double 0.20796700000000001
	.quad	0x3fdcbc947064ecea              # double 0.44901000000000002
	.quad	0x3fd854477ff151e7              # double 0.38014399999999998
	.quad	0x3fa162f166e008ea              # double 0.033958000000000002
	.quad	0x3fed435ac8a37260              # double 0.91447199999999995
	.quad	0x3fdf8ba40d90e23b              # double 0.492898
	.quad	0x3fe108c3f3e0370d              # double 0.53232000000000002
	.quad	0x3fcf20a73f748a16              # double 0.24318400000000001
	.quad	0x3fea3d859c8c9321              # double 0.82001000000000002
	.quad	0x3fbb1172ef0ae536              # double 0.105735
	.quad	0x3fe33b55ac03ff69              # double 0.600993
	.quad	0x3febaf05a708ede5              # double 0.86511499999999997
	.quad	0x3fc325c3dee78184              # double 0.14959
	.quad	0x3fd27a67a52ac754              # double 0.28872100000000001
	.quad	0x3fda2e1ef73c0c20              # double 0.40906500000000001
	.quad	0x3fe5fb7c7820a30e              # double 0.68694900000000003
	.quad	0x3fead132f87ad081              # double 0.83803700000000003
	.quad	0x3fd8e054690de093              # double 0.38869199999999998
	.quad	0x3fdd59641f644956              # double 0.45858100000000002
	.quad	0x3fdc20f2becedd48              # double 0.43951099999999999
	.quad	0x3faa2834d26fa3fd              # double 0.051088000000000001
	.quad	0x3fe9c8605681ecd5              # double 0.80571000000000004
	.quad	0x3fd098dcdb37c99b              # double 0.25933
	.quad	0x3fe88c64fdb09a67              # double 0.76713799999999999
	.quad	0x3fe55c28f5c28f5c              # double 0.66749999999999998
	.quad	0x3fcbc148344c37e7              # double 0.216836
	.quad	0x3fe4c486ad2dcb14              # double 0.64898999999999996
	.quad	0x3fe88941c8216c61              # double 0.76675499999999996
	.quad	0x3fe94b6e935b91f7              # double 0.79045799999999999
	.quad	0x3fe940bbb1f255f3              # double 0.78915199999999996
	.quad	0x3fee529bae46cfc8              # double 0.94758399999999998
	.quad	0x3fd3dce7cd035372              # double 0.31035800000000002
	.quad	0x3fef98372e6a7696              # double 0.98733099999999996
	.quad	0x3fe3d80c308feac4              # double 0.62012299999999998
	.quad	0x3f67e56473471f79              # double 0.0029169999999999999
	.quad	0x3fe64efed634549b              # double 0.69714299999999996
	.quad	0x3fea4564f97edc7f              # double 0.82097100000000001
	.quad	0x3fc850e779207d4e              # double 0.189969
	.quad	0x3feec1fea8112ba1              # double 0.96118099999999995
	.quad	0x3fd67c06e19b90eb              # double 0.35132000000000002
	.quad	0x3fc53bd1676640a7              # double 0.16588800000000001
	.quad	0x3fe121ad6451b930              # double 0.53536099999999998
	.quad	0x3fec182cb20fb225              # double 0.87795100000000004
	.quad	0x3fbb9a8cdea033e8              # double 0.10782700000000001
	.quad	0x3fdd6191148fd9fd              # double 0.45907999999999999
	.quad	0x3fef5818c5c9a34d              # double 0.97950400000000004
	.quad	0x3fe86e82949a5658              # double 0.76349
	.quad	0x3fd0a6b93ccd0fe9              # double 0.26017600000000002
	.quad	0x3feb15379fa97e13              # double 0.84633999999999998
	.quad	0x3fc7414a4d2b2bfe              # double 0.18168000000000001
	.quad	0x3fe0f1d3ed527e52              # double 0.52951999999999999
	.quad	0x3fef89310129cbab              # double 0.98549699999999995
	.quad	0x3fe21e55c0fcb4f2              # double 0.56620300000000001
	.quad	0x3fb9549731098d47              # double 0.098946999999999993
	.quad	0x3fe0f11b60ae9681              # double 0.52943200000000001
	.quad	0x3fee3009b30728e9              # double 0.94336399999999998
	.quad	0x3fe2c8a159817b96              # double 0.58699100000000004
	.quad	0x3fd5a7e308787486              # double 0.33837200000000001
	.quad	0x3fd43f20a73f748a              # double 0.316353
	.quad	0x3fd5737110e453d2              # double 0.335171
	.quad	0x3fe87c1bda5119ce              # double 0.76515
	.quad	0x3fe33c3c5bd0e12f              # double 0.60110300000000005
	.quad	0x3fbd615ebfa8f7db              # double 0.11476699999999999
	.quad	0x3f583f91e646f156              # double 0.00148
	.quad	0x3fcf38c5436b8f9b              # double 0.24392
	.quad	0x3fc5b317efe0ce0c              # double 0.16952800000000001
	.quad	0x3fe64ef240fa9c13              # double 0.69713700000000001
	.quad	0x3fe7c9e6687f455a              # double 0.74339599999999995
	.quad	0x3fedb0ab2e1693c0              # double 0.92781599999999997
	.quad	0x3feaf077ccc03793              # double 0.84185399999999999
	.quad	0x3febbd96638433d7              # double 0.86689300000000002
	.quad	0x3fd35182a9930be1              # double 0.30185000000000001
	.quad	0x3fd26277c45cbbc3              # double 0.28726000000000002
	.quad	0x3fe9bbe6601bc98a              # double 0.80418699999999999
	.quad	0x3fd81fe21d96e9bc              # double 0.376946
	.quad	0x3fcec319c5a3e39f              # double 0.24032899999999999
	.quad	0x3fcecf0f9d2bf551              # double 0.24069399999999999
	.quad	0x3fee57082491afc0              # double 0.94812399999999996
	.quad	0x3fcee8101f31f46f              # double 0.241457
	.quad	0x3fd1d7cb2d905c03              # double 0.27879599999999999
	.quad	0x3fc1aa8a82a5614e              # double 0.138017
	.quad	0x3feb9a32b12d3416              # double 0.86257300000000003
	.quad	0x3fbef87ad080b674              # double 0.120979
	.quad	0x3fe9cc09c3ce208a              # double 0.80615700000000001
	.quad	0x3fe8c1f85d744f5d              # double 0.77367799999999998
	.quad	0x3fe23d7d3910c2c6              # double 0.57000600000000001
	.quad	0x3fd3ffb04ee7c4a0              # double 0.31248100000000001
	.quad	0x3fdaef0f16f4384c              # double 0.42084100000000002
	.quad	0x3fe78cbaf965b20c              # double 0.73592900000000006
	.quad	0x3fe6abf338716095              # double 0.70848999999999995
	.quad	0x3fe1351deefe4ffd              # double 0.53773400000000005
	.quad	0x3fe1fd82773e24ff              # double 0.56219600000000003
	.quad	0x3fe5a18372e6a769              # double 0.67596599999999996
	.quad	0x3fe16a35935fc3b5              # double 0.544215
	.quad	0x3fee2788db0574b4              # double 0.94232599999999999
	.quad	0x3fd36e5cd4ed2cbf              # double 0.30361100000000002
	.quad	0x3fe2fee2c98e53eb              # double 0.59361399999999998
	.quad	0x3fb571b0468448cf              # double 0.083765999999999993
	.quad	0x3fe37583a53b8e4c              # double 0.60809500000000005
	.quad	0x3fd6af7d30ad46f6              # double 0.35446100000000003
	.quad	0x3fd8ee2435696e59              # double 0.38953500000000002
	.quad	0x3fd965a57646ae3a              # double 0.39682899999999999
	.quad	0x3fec7b97bb730835              # double 0.89008699999999996
	.quad	0x3fe18ef77f27fe4c              # double 0.54870200000000002
	.quad	0x3fe3c36113404ea5              # double 0.61760000000000004
	.quad	0x3fea08ca3e7d1351              # double 0.81357299999999999
	.quad	0x3fe25668c2613900              # double 0.573048
	.quad	0x3f8246bf01322f27              # double 0.0089239999999999996
	.quad	0x3fe1d7518b0d0edc              # double 0.55753399999999997
	.quad	0x3fe2dd1c3ac929aa              # double 0.58949099999999999
	.quad	0x3fc3967caea747d8              # double 0.15303
	.quad	0x3fea90be9424e593              # double 0.83016900000000005
	.quad	0x3fe90576cce5f740              # double 0.78191699999999997
	.quad	0x3fc4e71cda2b5a21              # double 0.163303
	.quad	0x3fc39ae0c1765775              # double 0.15316399999999999
	.quad	0x3fdc5f8d2e514c23              # double 0.443332
	.quad	0x3fdb4b599aa60914              # double 0.42647400000000002
	.quad	0x3fe9f255f3519bd4              # double 0.81083199999999999
	.quad	0x3fc57a89331a08c0              # double 0.16780200000000001
	.quad	0x3fd213f077ccc038              # double 0.28246700000000002
	.quad	0x3fd1999567dbb16c              # double 0.27499899999999999
	.quad	0x3fe630ccbc05d52c              # double 0.69345699999999999
	.quad	0x3fd2b6390c9107fb              # double 0.29237200000000002
	.quad	0x3feba14ad362e903              # double 0.86343899999999996
	.quad	0x3fd3807357e670e3              # double 0.30471500000000001
	.quad	0x3fe4ecb31c219eb6              # double 0.65389399999999998
	.quad	0x3fd3a83f4eca686e              # double 0.30714399999999997
	.quad	0x3fbaddaceee0f3cb              # double 0.104945
	.quad	0x3fcfe79ee02a77a3              # double 0.24925600000000001
	.quad	0x3fdc3953dea465a5              # double 0.44099899999999997
	.quad	0x3fdf09e98dcdb37d              # double 0.48498000000000002
	.quad	0x3fb8f29d40ee06d9              # double 0.097451999999999997
	.quad	0x3feed0d49949e881              # double 0.96299199999999995
	.quad	0x3fc8970f7b9e0610              # double 0.19211
	.quad	0x3fc4088509bf9c63              # double 0.15651000000000001
	.quad	0x3fe877a7008a697b              # double 0.76460600000000001
	.quad	0x3fb56084a515ce9e              # double 0.083503999999999994
	.quad	0x3fe144007570c565              # double 0.539551
	.quad	0x3fc2b89d6adf71eb              # double 0.146259
	.quad	0x3fb070435efa615b              # double 0.064213000000000006
	.quad	0x3fc358969a0ad8a1              # double 0.151141
	.quad	0x3fdcc3009b30728f              # double 0.44940200000000002
	.quad	0x3fe233d8e0008638              # double 0.56882900000000003
	.quad	0x3fcf89df1172ef0b              # double 0.246395
	.quad	0x3fe526bd6e8af816              # double 0.66097899999999998
	.quad	0x3fedc10f94c87981              # double 0.929817
	.quad	0x3fe8e7839cd8127b              # double 0.77826099999999998
	.quad	0x3fefae2541d8e864              # double 0.99000799999999999
	.quad	0x3fecc3c18b502abb              # double 0.89889600000000003
	.quad	0x3fece1c58255b036              # double 0.90256000000000003
	.quad	0x3fe05e529bae46d0              # double 0.51151400000000002
	.quad	0x3fac13986338b47c              # double 0.054836999999999997
	.quad	0x3fcf11dffc5479d5              # double 0.242733
	.quad	0x3fe2fa1c25d07421              # double 0.59303099999999997
	.quad	0x3fec766a55087011              # double 0.889455
	.quad	0x3fe968c692f6e829              # double 0.79403999999999997
	.quad	0x3fcd7470eb24a6a8              # double 0.23011599999999999
	.quad	0x3fd97f38c5436b90              # double 0.39839000000000002
	.quad	0x3fe65ed06fef7c24              # double 0.69907399999999997
	.quad	0x3fbf2cb641700cd8              # double 0.121776
	.quad	0x3fe2d04a2fcefaa4              # double 0.58792599999999995
	.quad	0x3fec2bef06b37868              # double 0.88036300000000001
	.quad	0x3fd3961804d98394              # double 0.30603599999999997
	.quad	0x3fe1e7296f6512a9              # double 0.55946799999999997
	.quad	0x3faadbc664d3bf2f              # double 0.052457999999999998
	.quad	0x3fe498c5c9a34ca1              # double 0.64364900000000003
	.quad	0x3fdc88765ba6efc3              # double 0.44582899999999998
	.quad	0x3fef0665e02ea961              # double 0.96953100000000003
	.quad	0x3fefe3022dd7a9a0              # double 0.99646100000000004
	.quad	0x3fe180fba8826aa9              # double 0.54699500000000001
	.quad	0x3f9a61e0c5a8155d              # double 0.025763999999999999
	.quad	0x3fe2c845132f87ad              # double 0.586947
	.quad	0x3fd356366d7a56de              # double 0.30213699999999999
	.quad	0x3feb6f8ad2567989              # double 0.85736599999999996
	.quad	0x3fba6362a5e785b6              # double 0.103079
	.quad	0x3fc98548a9bcfd4c              # double 0.19938
	.quad	0x3fdcced916872b02              # double 0.450125
	.quad	0x3fdd17ca2120e1f8              # double 0.45457700000000001
	.quad	0x3fd8903a7546d3fa              # double 0.38380300000000001
	.quad	0x3fe583c297bfa4c6              # double 0.67233399999999999
	.quad	0x3fdd183b60285ec4              # double 0.45460400000000001
	.quad	0x3fec4e52deca2553              # double 0.88456100000000004
	.quad	0x3fedf4107314ca92              # double 0.93604299999999996
	.quad	0x3fe6ccf0739b024f              # double 0.71251699999999996
	.quad	0x3fd4bf65dbfceb79              # double 0.32418200000000003
	.quad	0x3fd2aa5c5f7c675a              # double 0.29164800000000002
	.quad	0x3fe9e11ba3ca7504              # double 0.80872900000000003
	.quad	0x3fec80f55de58e65              # double 0.89074200000000003
	.quad	0x3fe38589acbc8c0d              # double 0.61005100000000001
	.quad	0x3fe8ceaaf35e310e              # double 0.77522800000000003
	.quad	0x3fed1620685553ef              # double 0.90895099999999995
	.quad	0x3fd6f1c75818c5ca              # double 0.35850700000000002
	.quad	0x3fd499b2c40d0aaa              # double 0.32188099999999997
	.quad	0x3fe1c534bd76ee74              # double 0.55532300000000001
	.quad	0x3fead8f0c77dd873              # double 0.83898200000000001
	.quad	0x3fb3c4f3ba775fb3              # double 0.077224000000000001
	.quad	0x3fe3fc4c165907d9              # double 0.62454799999999999
	.quad	0x3f90b88ca3e7d135              # double 0.016329
	.quad	0x3fd75e679463cfb3              # double 0.36513699999999999
	.quad	0x3fb9cbddb9841aac              # double 0.100767
	.quad	0x3fdb8efbb0e5e679              # double 0.43060199999999998
	.quad	0x3fe6762b6ae7d567              # double 0.70192500000000002
	.quad	0x3fe7b3700474d9c7              # double 0.74065400000000003
	.quad	0x3fedafea3df6db94              # double 0.92772399999999999
	.quad	0x3fd182dbe7f2c301              # double 0.27361200000000002
	.quad	0x3fea68fb00bcbe62              # double 0.82531500000000002
	.quad	0x3fe02bbcb1cc9646              # double 0.50533899999999998
	.quad	0x3fe907f455a7d242              # double 0.78222100000000006
	.quad	0x3feef18eb8950764              # double 0.96698700000000004
	.quad	0x3fd992684cf0739b              # double 0.399561
	.quad	0x3fee309203a322af              # double 0.94342899999999996
	.quad	0x3fe886df82b1f688              # double 0.76646400000000003
	.quad	0x3fc49f383f0bae8a              # double 0.161109
	.quad	0x3fcece91c8eabffd              # double 0.240679
	.quad	0x3faea63b688bda94              # double 0.059861999999999999
	.quad	0x3fcfdd334c5da6a4              # double 0.24893799999999999
	.quad	0x3fc743526527a205              # double 0.18174199999999999
	.quad	0x3fe888bda9435ac9              # double 0.76669200000000004
	.quad	0x3fe61a261bf37b8d              # double 0.69069199999999997
	.quad	0x3feea263d816aceb              # double 0.95732300000000004
	.quad	0x3fe609b0ee49f517              # double 0.68868300000000005
	.quad	0x3fe0d26d8b1dd5d4              # double 0.52568700000000002
	.quad	0x3fe53ec2480e8c8b              # double 0.66391100000000003
	.quad	0x3fe921b5c7cd898b              # double 0.78536499999999998
	.quad	0x3fd1168b5cbff477              # double 0.26700099999999999
	.quad	0x3fde5ac471b47842              # double 0.47428999999999999
	.quad	0x3fa2ba3875925354              # double 0.036576999999999998
	.quad	0x3fe19797cc39ffd6              # double 0.54975499999999999
	.quad	0x3fe6ce789e774eec              # double 0.712704
	.quad	0x3fe591f70de8f6cf              # double 0.674068
	.quad	0x3fe8f10667f90d9d              # double 0.77942199999999995
	.quad	0x3feee249a133c1ce              # double 0.96512299999999995
	.quad	0x3fedb2a0663c74fb              # double 0.92805499999999996
	.quad	0x3fc53a81dc0db270              # double 0.165848
	.quad	0x3fe6d69d30270f39              # double 0.71369800000000005
	.quad	0x3feadfa871a3b14b              # double 0.83980200000000005
	.quad	0x3fe787ebf22c01e7              # double 0.73534200000000005
	.quad	0x3fb12dba4d6e47dc              # double 0.067103999999999997
	.quad	0x3fe97d60e94ee393              # double 0.79655500000000001
	.quad	0x3fe6a28997c3d684              # double 0.707341
	.quad	0x3fcfe846a5d6bebe              # double 0.249276
	.quad	0x3fe1d933e35c5b4b              # double 0.55776400000000004
	.quad	0x3fb0e1f7d73c9258              # double 0.065948000000000007
	.quad	0x3fd4cf95d4e8fb01              # double 0.32517000000000001
	.quad	0x3fe0ccb3a2595bbc              # double 0.52498800000000001
	.quad	0x3fefe7f6f4be835e              # double 0.99706600000000001
	.quad	0x3fd36c1a048e043a              # double 0.30347299999999999
	.quad	0x3feb765fd8adab9f              # double 0.85819999999999996
	.quad	0x3fed33e78e1932d7              # double 0.91258600000000001
	.quad	0x3feb0b11409a2403              # double 0.84510099999999999
	.quad	0x3fe6f86e3b46fdeb              # double 0.71782599999999996
	.quad	0x3fe93f85510d38ce              # double 0.78900400000000004
	.quad	0x3fe366fd651b0ccc              # double 0.60632200000000003
	.quad	0x3fe579b34a44c7b0              # double 0.67110599999999998
	.quad	0x3fe5ba6aca793576              # double 0.679006
	.quad	0x3fed44241c3efae8              # double 0.91456800000000005
	.quad	0x3fd99378ee286727              # double 0.39962599999999998
	.quad	0x3fee26f826edaa93              # double 0.94225700000000001
	.quad	0x3fef9198aeb80ed0              # double 0.98652300000000004
	.quad	0x3fe5c768dfbd6a59              # double 0.68059199999999997
	.quad	0x3fdde586013660e5              # double 0.46713399999999999
	.quad	0x3fe075f91600f345              # double 0.514401
	.quad	0x3fcd068123810e88              # double 0.22676099999999999
	.quad	0x3fe003dddb1209ee              # double 0.50047200000000003
	.quad	0x3fe79c304ccee5ac              # double 0.73781600000000003
	.quad	0x3fdb2c16df3f9618              # double 0.424566
	.quad	0x3fd2039abf338716              # double 0.28147
	.quad	0x3fe2afdfc19c1722              # double 0.58396899999999996
	.quad	0x3f9463cfb3311a54              # double 0.019911999999999999
	.quad	0x3fcdc422036006d1              # double 0.232548
	.quad	0x3fe54091c087442c              # double 0.66413199999999994
	.quad	0x3faf55bccaf709b7              # double 0.061200999999999998
	.quad	0x3fbb77af640639d6              # double 0.107295
	.quad	0x3fd46dce39b456b4              # double 0.31920199999999999
	.quad	0x3fee45d41fa76534              # double 0.94602399999999997
	.quad	0x3fdfc319c5a3e39f              # double 0.49628299999999997
	.quad	0x3fcc71f79420b3d5              # double 0.22222800000000001
	.quad	0x3fa42c3c9eecbfb1              # double 0.039399999999999998
	.quad	0x3feaa81fd9ba1b19              # double 0.83302299999999996
	.quad	0x3faf1b0468448cf8              # double 0.060753000000000001
	.quad	0x3fcdb6fe2e6ea854              # double 0.23214699999999999
	.quad	0x3fc10d73860999dd              # double 0.13322300000000001
	.quad	0x3fea389b52007dd4              # double 0.81940999999999997
	.quad	0x3fd6b8a5ce5b4246              # double 0.35502
	.quad	0x3fa1d627bf61aa3f              # double 0.034837
	.quad	0x3f67acc4ef88b978              # double 0.0028900000000000002
	.quad	0x3fd07bc7f77af640              # double 0.25755499999999998
	.quad	0x3fe359c8c9320d99              # double 0.60470999999999997
	.quad	0x3fa046c764adff82              # double 0.031789999999999999
	.quad	0x3fa75ab7dc7abfba              # double 0.045614000000000002
	.quad	0x3fe8e08f21709310              # double 0.77741199999999999
	.quad	0x3fd6ba9d1f601798              # double 0.35514000000000001
	.quad	0x3fe9dd1c3ac929aa              # double 0.80824099999999999
	.quad	0x3fccea63b688bda9              # double 0.22590299999999999
	.quad	0x3fb5314445aa2e3c              # double 0.082782999999999995
	.quad	0x3fe8743e963dc487              # double 0.76419000000000004
	.quad	0x3fc160d887ebf22c              # double 0.135768
	.quad	0x3fd320b3d4ae429e              # double 0.298871
	.quad	0x3fced490e66cb103              # double 0.24086199999999999
	.quad	0x3fdbb8e086bdf4c3              # double 0.43315900000000002
	.quad	0x3f892f2b66b6177f              # double 0.012297000000000001
	.quad	0x3fbf13dfb0d51f82              # double 0.121397
	.quad	0x3fe9f3c925785f8d              # double 0.81100899999999998
	.quad	0x3fd57685985ad539              # double 0.33535900000000002
	.quad	0x3feffff79c842fa5              # double 0.99999599999999999
	.quad	0x3fda4afd5454152b              # double 0.410827
	.quad	0x3f8d13d74d594f27              # double 0.014198000000000001
	.quad	0x3fe5f9830e3cd9a5              # double 0.68670799999999999
	.quad	0x3fd6e731d2e0e304              # double 0.35786099999999998
	.quad	0x3fee279bbadc0981              # double 0.94233500000000003
	.quad	0x3fe8e91c8eabffce              # double 0.77845600000000004
	.quad	0x3fec9253543aeab8              # double 0.89286200000000004
	.quad	0x3fec20a958537e2c              # double 0.87898699999999996
	.quad	0x3fe51dece5710881              # double 0.65990300000000002
	.quad	0x3fa80ef1348b2208              # double 0.046989000000000003
	.quad	0x3fafb58d1526d8b2              # double 0.061932000000000001
	.quad	0x3fe5d935fc3b4f61              # double 0.68276499999999996
	.quad	0x3fd6cc1ca3a4b557              # double 0.35620800000000002
	.quad	0x3faeb18116ebd4d0              # double 0.059948000000000001
	.quad	0x3fe1b2f449129889              # double 0.553095
	.quad	0x3f2d3aa369fcf3dc              # double 2.23E-4
	.quad	0x3feb778dd616f86a              # double 0.858344
	.quad	0x3fef9bfbdf090f73              # double 0.98779099999999997
	.quad	0x3fd7d916872b020c              # double 0.37262499999999998
	.quad	0x3fe57ae3608d0892              # double 0.67125100000000004
	.quad	0x3febfb9170d62bf1              # double 0.87445899999999999
	.quad	0x3fdb26916440f239              # double 0.42422900000000002
	.quad	0x3fc2121ee675147f              # double 0.141178
	.quad	0x3fed087a8d64d7f1              # double 0.90728500000000001
	.quad	0x3fe25352220bc383              # double 0.57267100000000004
	.quad	0x3fd5f82f51266341              # double 0.34327299999999999
	.quad	0x3fc3cfaacd9e83e4              # double 0.154775
	.quad	0x3fd2df6db940fece              # double 0.29488700000000001
	.quad	0x3fe8a9e2bcf91a33              # double 0.77073800000000003
	.quad	0x3fcd720c8cd63cb8              # double 0.230043
	.quad	0x3fd2d3e920c069e8              # double 0.294184
	.quad	0x3fe9cf8726d04e62              # double 0.80658300000000005
	.quad	0x3fea1ad6451b9303              # double 0.81577599999999995
	.quad	0x3fec51bd61f5be5e              # double 0.88497800000000004
	.quad	0x3fc3f08893b7d849              # double 0.155778
	.quad	0x3fb1a5119ce075f7              # double 0.068925
	.quad	0x3fdebb83cf2cf95d              # double 0.48019499999999998
	.quad	0x3fdd23cc8de2ac32              # double 0.45530999999999999
	.quad	0x3fedd67fd3f5b5fa              # double 0.93243399999999999
	.quad	0x3fe0c6759ab6d00b              # double 0.52422599999999997
	.quad	0x3fe53eb7cbb3c819              # double 0.663906
	.quad	0x3fc76a50d6b228dd              # double 0.18293200000000001
	.quad	0x3fec59b1b79d909f              # double 0.88594899999999999
	.quad	0x3fd0f23033a4723b              # double 0.26478200000000002
	.quad	0x3fed19dcb5781c71              # double 0.90940699999999997
	.quad	0x3fe7c18d6909aed5              # double 0.74237699999999995
	.quad	0x3fe40a06e9ff0cbb              # double 0.626224
	.quad	0x3fe95ab5c39bcba3              # double 0.792323
	.quad	0x3fec9628cbd1244a              # double 0.89332999999999996
	.quad	0x3fcdc7820a30db6a              # double 0.232651
	.quad	0x3fdf7e1fc08fa7a8              # double 0.49207299999999998
	.quad	0x3fe57f3493858362              # double 0.67177799999999999
	.quad	0x3fe246aa087ca644              # double 0.57112600000000002
	.quad	0x3fd858c8eef1bac3              # double 0.38041900000000001
	.quad	0x3fc5e3193f6c269a              # double 0.17099300000000001
	.quad	0x3fd96a098915bdd7              # double 0.39709699999999998
	.quad	0x3fa4af922962cfd9              # double 0.040402
	.quad	0x3fe94664d3bf2f55              # double 0.78984299999999996
	.quad	0x3fcf51697f1f9ad0              # double 0.244672
	.quad	0x3fe35464dc22ab26              # double 0.60405200000000003
	.quad	0x3fecb0d0edc3bd5a              # double 0.89658400000000005
	.quad	0x3fce64a16a487336              # double 0.23744599999999999
	.quad	0x3fe43e7afa722186              # double 0.63262700000000005
	.quad	0x3fe17b1c0010c6f8              # double 0.54627800000000004
	.quad	0x3fd338c9752977c9              # double 0.30034100000000002
	.quad	0x3fedfbbf93ff25e5              # double 0.93698099999999995
	.quad	0x3fca0ffda4052d66              # double 0.20361299999999999
	.quad	0x3fd10d8cb07d0aee              # double 0.26645200000000002
	.quad	0x3fe983558a761028              # double 0.79728200000000005
	.quad	0x3fe68a4a05dd8f93              # double 0.70438100000000003
	.quad	0x3fed8667f90d9d77              # double 0.92265699999999995
	.quad	0x3fe3fc371da37ef6              # double 0.62453800000000004
	.quad	0x3fbd00d5e8d54110              # double 0.11329400000000001
	.quad	0x3fdfe8427418d691              # double 0.49855100000000002
	.quad	0x3fe054e8fb00bcbe              # double 0.51036499999999996
	.quad	0x3fef75ab7dc7abfc              # double 0.98311400000000004
	.quad	0x3fa34c7f34938583              # double 0.037692999999999997
	.quad	0x3fea3be22e5de15d              # double 0.81981000000000004
	.quad	0x3fe55d5f56a7ac82              # double 0.66764800000000002
	.quad	0x3fea6e653868fd1a              # double 0.82597600000000004
	.quad	0x3fe22378ab0c88a4              # double 0.56682999999999995
	.quad	0x3fe5823c85c24c40              # double 0.67214799999999997
	.quad	0x3fc0fc0d2c386d2f              # double 0.132692
	.quad	0x3fb6b2bfdb4cc250              # double 0.088664999999999993
	.quad	0x3fbbb5d031055b8a              # double 0.10824300000000001
	.quad	0x3fdb6ddaceee0f3d              # double 0.42858000000000002
	.quad	0x3fc35b899392189c              # double 0.151231
	.quad	0x3fe9789e774eebf6              # double 0.79597399999999996
	.quad	0x3fae2d1f1cfbb949              # double 0.058937999999999997
	.quad	0x3fc4ce91c8eabffd              # double 0.162554
	.quad	0x3fed6501e2584f4c              # double 0.91857999999999995
	.quad	0x3fc837a3db3bfb59              # double 0.18919800000000001
	.quad	0x3fd5807789a45910              # double 0.33596599999999999
	.quad	0x3fe1d7214f0520d1              # double 0.55751099999999998
	.quad	0x3feeb2fcac8e68e4              # double 0.959349
	.quad	0x3fe74fb3311a543f              # double 0.72847899999999999
	.quad	0x3fce9c7ffde7210c              # double 0.239151
	.quad	0x3fdeefed634549b6              # double 0.48339399999999999
	.quad	0x3fefc806290eed03              # double 0.99316700000000002
	.quad	0x3fa5da272862f599              # double 0.042680000000000003
	.quad	0x3fe6455a7d24180d              # double 0.69596599999999997
	.quad	0x3fc064883fd50225              # double 0.12806799999999999
	.quad	0x3fe0d7de0d66f0d0              # double 0.52635100000000001
	.quad	0x3fa210be9424e593              # double 0.035284000000000003
	.quad	0x3fe17a5f41aef6f9              # double 0.54618800000000001
	.quad	0x3fdc88fc9363f573              # double 0.44586100000000001
	.quad	0x3fe7acfb762d83c7              # double 0.73986600000000002
	.quad	0x3fc7cc964628027e              # double 0.18593100000000001
	.quad	0x3fe3cbc05d52c16e              # double 0.61862200000000001
	.quad	0x3fdf685985ad538b              # double 0.49074400000000001
	.quad	0x3f48ce2d1f1cfbb9              # double 7.5699999999999997E-4
	.quad	0x3fe229845dc83233              # double 0.56756799999999996
	.quad	0x3fbbf8db4890928a              # double 0.109266
	.quad	0x3fc1a786c226809d              # double 0.13792499999999999
	.quad	0x3fdbf69014b599aa              # double 0.43692399999999998
	.quad	0x3fee155f78359bc3              # double 0.94010899999999997
	.quad	0x3fd3bf2f55582129              # double 0.30854399999999998
	.quad	0x3fd87ef177a7008a              # double 0.38274799999999998
	.quad	0x3fee6aec0724b76f              # double 0.95055199999999995
	.quad	0x3feea778140dd3fe              # double 0.95794299999999999
	.quad	0x3fe27f04577d9557              # double 0.57800499999999999
	.quad	0x3fb1529fe004b7f6              # double 0.067667000000000005
	.quad	0x3fe00fd199bb2789              # double 0.50193100000000002
	.quad	0x3fb926fa3fcc9eaa              # double 0.098251000000000004
	.quad	0x3fd72f33ca31e7da              # double 0.36225600000000002
	.quad	0x3fda0b178b370047              # double 0.40692699999999998
	.quad	0x3fe1d21ff2e48e8a              # double 0.55689999999999995
	.quad	0x3fcc05ab3aabcd79              # double 0.21892300000000001
	.quad	0x3fbdd894812be48a              # double 0.116586
	.quad	0x3fca231832fcac8e              # double 0.20419599999999999
	.quad	0x3fd859c065b63d3e              # double 0.38047799999999998
	.quad	0x3fdbe51d25aab474              # double 0.435859
	.quad	0x3fee9be09bb6aa4c              # double 0.95652800000000004
	.quad	0x3fe092f4cf4a558f              # double 0.51793900000000004
	.quad	0x3fe94e075f6fd220              # double 0.790775
	.quad	0x3fd7f0cbaf965b21              # double 0.37407200000000002
	.quad	0x3fe18c4156e264e5              # double 0.54837100000000005
	.quad	0x3fd957b84db9c737              # double 0.39597900000000003
	.quad	0x3fd403b81b64e054              # double 0.31272699999999998
	.quad	0x3fc0e557de0d66f1              # double 0.13199900000000001
	.quad	0x3fa7def8487b99d4              # double 0.046622999999999998
	.quad	0x3f9acf312b1b36bd              # double 0.026180999999999999
	.quad	0x3f68c197e5647347              # double 0.0030219999999999999
	.quad	0x3febf4906034f3fe              # double 0.87360400000000005
	.quad	0x3fa99157abb8800f              # double 0.049937000000000002
	.quad	0x3fdcd651b0ccbc06              # double 0.45058100000000001
	.quad	0x3f7a2b5a20ddc619              # double 0.0063889999999999997
	.quad	0x3fd0034f3fd933e3              # double 0.25020199999999998
	.quad	0x3fdacd530489d27c              # double 0.41878199999999999
	.quad	0x3fda8d2e514c22ee              # double 0.41486699999999999
	.quad	0x3fe6ef2e8c0485a1              # double 0.71669700000000003
	.quad	0x3febc63f141205bc              # double 0.86794999999999999
	.quad	0x3fefc942d490e66d              # double 0.99331800000000003
	.quad	0x3fe2101083dbc233              # double 0.56446099999999999
	.quad	0x3fe8463065f9591d              # double 0.75856800000000002
	.quad	0x3fe14851a8694035              # double 0.54007799999999995
	.quad	0x3fe1889c1b54195d              # double 0.54792600000000002
	.quad	0x3fe01ff92f2b66b6              # double 0.50390299999999999
	.quad	0x3fe04c39ffd60e95              # double 0.50930500000000001
	.quad	0x3fe09b024f6598e1              # double 0.51892199999999999
	.quad	0x3fe987980f55de59              # double 0.79780200000000001
	.quad	0x3fd5c98a222d5172              # double 0.34042600000000001
	.quad	0x3fce8ae74f2f123c              # double 0.23861399999999999
	.quad	0x3fe749731098d478              # double 0.72771600000000003
	.quad	0x3fe9a0e1f7d73c92              # double 0.80088899999999996
	.quad	0x3fd0bef06b37867f              # double 0.261654
	.quad	0x3f85cd0bb6ed6777              # double 0.010645
	.quad	0x3fd1654d61b2a27f              # double 0.27180799999999999
	.quad	0x3fb844d013a92a30              # double 0.094799999999999995
	.quad	0x3fdb7f1b69121251              # double 0.42963299999999999
	.quad	0x3fda14ad362e9036              # double 0.40751199999999999
	.quad	0x3fe025c1c6088d6d              # double 0.50460899999999997
	.quad	0x3fd1a4095f2452c6              # double 0.27563700000000002
	.quad	0x3fef96052502eec8              # double 0.98706300000000002
	.quad	0x3fd26427c7c5260f              # double 0.28736299999999998
	.quad	0x3fc659d99029ae4f              # double 0.17461699999999999
	.quad	0x3fb8b47c73eee526              # double 0.096504000000000006
	.quad	0x3fd501de26916441              # double 0.328239
	.quad	0x3fdd5831f03d145e              # double 0.45850800000000003
	.quad	0x3fe8c9795b35b0bc              # double 0.774594
	.quad	0x3fddf2a172abef07              # double 0.46793400000000002
	.quad	0x3fef2e46cfc829d0              # double 0.97439900000000002
	.quad	0x3fe793f290abb44e              # double 0.73680999999999996
	.quad	0x3feaa9cfdd228566              # double 0.833229
	.quad	0x3fe1b83f0bae89ec              # double 0.55374100000000004
	.quad	0x3fe8843a2163fdd6              # double 0.76614099999999996
	.quad	0x3fe3be1650a45d42              # double 0.616954
	.quad	0x3fdb9e90795f676f              # double 0.43155300000000002
	.quad	0x3feb63c31df761cc              # double 0.85592800000000002
	.quad	0x3fd51843c3a42f1f              # double 0.32960600000000001
	.quad	0x3fe55a964e8b7e4e              # double 0.66730800000000001
	.quad	0x3fb672da122fad6d              # double 0.087690000000000004
	.quad	0x3fe8c4827b6fe2e7              # double 0.77398800000000001
	.quad	0x3feeb6f19934efcc              # double 0.95983200000000001
	.quad	0x3fd85974e65bea0c              # double 0.38046000000000002
	.quad	0x3fe3653eb399f5e0              # double 0.60610900000000001
	.quad	0x3fead4c55432873c              # double 0.83847300000000002
	.quad	0x3fce1a719b4dcec0              # double 0.235182
	.quad	0x3fe32a5614df8b15              # double 0.59891799999999995
	.quad	0x3fe06188b11409a2              # double 0.51190599999999997
	.quad	0x3fd1820e6299524c              # double 0.273563
	.quad	0x3fe0c68cac4b4d05              # double 0.52423699999999995
	.quad	0x3fea915379fa97e1              # double 0.83023999999999998
	.quad	0x3fe0ade43ed959a3              # double 0.521227
	.quad	0x3febd6798958d9b6              # double 0.86993100000000001
	.quad	0x3fe55a20ddc61954              # double 0.66725199999999996
	.quad	0x3fe875104d551d69              # double 0.76429000000000002
	.quad	0x3fee5faca3619978              # double 0.94917899999999999
	.quad	0x3fc8636b09635611              # double 0.19053400000000001
	.quad	0x3fb45308bb906467              # double 0.079392000000000004
	.quad	0x3fec996312f4cf4a              # double 0.89372399999999996
	.quad	0x3fe27e47991bc558              # double 0.57791499999999996
	.quad	0x3fdb1758e219652c              # double 0.42330000000000001
	.quad	0x3fef2b3cc4ac6cdb              # double 0.974028
	.quad	0x3fd24bdfd2630ec3              # double 0.285881
	.quad	0x3fe161dc93ea2d30              # double 0.54319600000000001
	.quad	0x3fd96eb4e981387a              # double 0.39738200000000001
	.quad	0x3fd5e3f359ff4fd7              # double 0.34203800000000001
	.quad	0x3fb8d4cb9ecf6380              # double 0.096996999999999999
	.quad	0x3fb2e935b91f70df              # double 0.073871000000000006
	.quad	0x3fcc0e9d51b4fe7a              # double 0.219196
	.quad	0x3fe8eda4484944ed              # double 0.77900899999999995
	.quad	0x3fc9d65a14488c61              # double 0.20185400000000001
	.quad	0x3fe2cbcad9ad85e0              # double 0.58737700000000004
	.quad	0x3fe35e892253111f              # double 0.60528999999999999
	.quad	0x3fc439abf3387161              # double 0.15801000000000001
	.quad	0x3fda2b9d3cbc48f1              # double 0.408912
	.quad	0x3fe6f1d606317269              # double 0.71702100000000002
	.quad	0x3fe7bbeec39799e5              # double 0.74169099999999999
	.quad	0x3fe17cd67fd3f5b6              # double 0.546489
	.quad	0x3fed087ebf22c01e              # double 0.90728699999999995
	.quad	0x3fd710667f90d9d7              # double 0.36037599999999997
	.quad	0x3fe001f31f46ed24              # double 0.50023799999999996
	.quad	0x3fe791c8eabffcdb              # double 0.73654600000000003
	.quad	0x3fd413f077ccc038              # double 0.31371700000000002
	.quad	0x3fe248a372606fac              # double 0.57136699999999996
	.quad	0x3fe268b9fdbd2fa1              # double 0.57528400000000002
	.quad	0x3fcbcc319c5a3e3a              # double 0.217169
	.quad	0x3fd3144cbe1eb420              # double 0.29811399999999999
	.quad	0x3fe477121ab4b72c              # double 0.63953499999999996
	.quad	0x3fc838eb0318b934              # double 0.18923699999999999
	.quad	0x3fef5af6c69b5a64              # double 0.979854
	.quad	0x3fe6c185058dde7a              # double 0.71112299999999995
	.quad	0x3fd35b4aa9717df2              # double 0.30244700000000002
	.quad	0x3fbc7e6b3fe9fadb              # double 0.111304
	.quad	0x3fe8f811f4f50a03              # double 0.78028200000000003
	.quad	0x3fdc04ccee5abc0e              # double 0.43779299999999999
	.quad	0x3fb0d2a1f8e3ac0c              # double 0.065713999999999995
	.quad	0x3fec18c3b0c4588a              # double 0.878023
	.quad	0x3fec0f041461b6d4              # double 0.87683299999999997
	.quad	0x3fec6772d5e071c5              # double 0.88762799999999997
	.quad	0x3fe00c7192ea52f0              # double 0.50151900000000005
	.quad	0x3fd62856605ee569              # double 0.34621200000000002
	.quad	0x3fe7fb2edfe75bc4              # double 0.74941199999999996
	.quad	0x3fe1f8a6dacabc51              # double 0.56160299999999996
	.quad	0x3fef8fd5cb790fb6              # double 0.98630799999999996
	.quad	0x3fd4edfa43fe5c92              # double 0.32702500000000001
	.quad	0x3fa9cde5d18090b4              # double 0.050398999999999999
	.quad	0x3fc8bce8533b1077              # double 0.19326499999999999
	.quad	0x3fefcdd50a88effe              # double 0.99387599999999998
	.quad	0x3fe0ef1561911490              # double 0.52918500000000002
	.quad	0x3fe32d1287c200c1              # double 0.59925200000000001
	.quad	0x3fa8a2014727dcbe              # double 0.048111000000000001
	.quad	0x3fdd845564b662fe              # double 0.461202
	.quad	0x3fcad1e108c3f3e0              # double 0.20952999999999999
	.quad	0x3fcb455a7d24180d              # double 0.21305399999999999
	.quad	0x3fb7cefaa4766c6e              # double 0.093002000000000001
	.quad	0x3fe8eecbfb15b574              # double 0.77915
	.quad	0x3fecd06bbdbe3c10              # double 0.90044199999999996
	.quad	0x3fd2550870110a13              # double 0.28643999999999997
	.quad	0x3fe8de6bc621b7e1              # double 0.77715100000000004
	.quad	0x3fed7c30d306a2b1              # double 0.92140999999999995
	.quad	0x3fdee35c5b4aa971              # double 0.48262699999999997
	.quad	0x3fedc083126e978d              # double 0.92974999999999997
	.quad	0x3fd626809d495183              # double 0.34610000000000002
	.quad	0x3fe6474b838c111b              # double 0.69620300000000002
	.quad	0x3fe017bd8be7296f              # double 0.50289799999999996
	.quad	0x3fbe7fc32ebe596d              # double 0.11913700000000001
	.quad	0x3fd011cf355cd91f              # double 0.251087
	.quad	0x3fe972e8c0485a0c              # double 0.79527700000000001
	.quad	0x3fc23c105186db51              # double 0.142458
	.quad	0x3fd069984a0e410b              # double 0.25644499999999998
	.quad	0x3fe62b734b51372a              # double 0.69280399999999998
	.quad	0x3f81e6cd29131ec1              # double 0.0087410000000000005
	.quad	0x3fe116a6a012599f              # double 0.53401500000000002
	.quad	0x3fe457214f0520d1              # double 0.63563599999999998
	.quad	0x3fc71cd1c7de5083              # double 0.18056700000000001
	.quad	0x3fe8353b4b2fa93b              # double 0.756498
	.quad	0x3fe46414e7ee9143              # double 0.63721700000000003
	.quad	0x3fd557c914b167ec              # double 0.33348299999999997
	.quad	0x3fe286573215fcc2              # double 0.57889900000000005
	.quad	0x3fb7342edbb59ddc              # double 0.090639999999999998
	.quad	0x3fdb6687f455a7d2              # double 0.42813299999999999
	.quad	0x3fc838c111ada76e              # double 0.18923200000000001
	.quad	0x3fbf3775b8130165              # double 0.12194000000000001
	.quad	0x3fef9bae46cfc82a              # double 0.98775400000000002
	.quad	0x3f77342edbb59ddc              # double 0.0056649999999999999
	.quad	0x3fde3ab862b27cbf              # double 0.47233399999999998
	.quad	0x3fc57457c0b13598              # double 0.16761300000000001
	.quad	0x3fd483a53b8e4b88              # double 0.32053500000000001
	.quad	0x3fd343f5f91600f3              # double 0.30102299999999999
	.quad	0x3fd4f9767903211d              # double 0.32772600000000002
	.quad	0x3fc949adc8fb86f4              # double 0.19756099999999999
	.quad	0x3fe9d07c84b5dcc6              # double 0.80669999999999997
	.quad	0x3fdc6bebe1650a46              # double 0.44408700000000001
	.quad	0x3fef1e6ab9b23dd5              # double 0.97246299999999996
	.quad	0x3fdfd245b291b824              # double 0.49720900000000001
	.quad	0x3fb473365881a155              # double 0.079882999999999996
	.quad	0x3fdaba8c586876e2              # double 0.41763600000000001
	.quad	0x3faaaf9a8cdea034              # double 0.052121000000000001
	.quad	0x3fd7e38eb0318b93              # double 0.37326399999999998
	.quad	0x3fee0dfdef8487ba              # double 0.93920800000000004
	.quad	0x3fee813a92a30553              # double 0.95327499999999998
	.quad	0x3fefa6351deefe50              # double 0.989039
	.quad	0x3feb9103c8e25c81              # double 0.861452
	.quad	0x3fa0f96e158750c2              # double 0.033153000000000002
	.quad	0x3febea37ac3eb7cc              # double 0.87234100000000003
	.quad	0x3fd994e5d5b24e9c              # double 0.39971299999999998
	.quad	0x3f9069e7fb267c6c              # double 0.016029000000000002
	.quad	0x3fcc2517e77d523b              # double 0.21988199999999999
	.quad	0x3fee52c386d2ed78              # double 0.94760299999999997
	.quad	0x3fefbc4f3ba775fb              # double 0.99173699999999997
	.quad	0x3fb90c9107faa045              # double 0.097848000000000004
	.quad	0x3fc08dd1e53a81dc              # double 0.129328
	.quad	0x3fc1f1737542a23c              # double 0.140181
	.quad	0x3fe87d1bb4916ca4              # double 0.76527199999999995
	.quad	0x3fb9c31593e5fb72              # double 0.100633
	.quad	0x3fe57fb267c6b8b7              # double 0.67183800000000005
	.quad	0x3fde866a11ec918e              # double 0.47695399999999999
	.quad	0x3fc83c21187e7c07              # double 0.189335
	.quad	0x3fdd20d130df9bdc              # double 0.45512799999999998
	.quad	0x3fdc91b823c85c25              # double 0.44639400000000001
	.quad	0x3fce715831f03d14              # double 0.23783399999999999
	.quad	0x3fd09ab29e4d5d81              # double 0.25944200000000001
	.quad	0x3fe4805e5f30e7ff              # double 0.64066999999999996
	.quad	0x3fda033e78e1932d              # double 0.40644799999999998
	.quad	0x3f938583621fafc9              # double 0.019064000000000001
	.quad	0x3fd71455219a847b              # double 0.36061599999999999
	.quad	0x3fd88a7610279570              # double 0.38345099999999999
	.quad	0x3fe4d8255b035bd5              # double 0.65138499999999999
	.quad	0x3febf29f59ccfaf0              # double 0.873367
	.quad	0x3fecdccea28fe261              # double 0.90195400000000003
	.quad	0x3fe026c5d206c871              # double 0.50473299999999999
	.quad	0x3fe38522ea0fd3b3              # double 0.61000200000000004
	.quad	0x3fc1476af89c5e70              # double 0.134992
	.quad	0x3fbd2b5e529bae47              # double 0.113943
	.quad	0x3fea7b99d451fc4c              # double 0.82758799999999999
	.quad	0x3fda62bae03b3e9a              # double 0.41227599999999998
	.quad	0x3fed42c7fbacb429              # double 0.91440200000000005
	.quad	0x3f94562e09fe8683              # double 0.019859999999999999
	.quad	0x3faf23033a4723ab              # double 0.060814
	.quad	0x3fc2d72799a1fd15              # double 0.14719099999999999
	.quad	0x3fe51096bb98c7e3              # double 0.65827500000000005
	.quad	0x3fe0ff2c3009b307              # double 0.53114899999999998
	.quad	0x3fddd712a0ec7432              # double 0.466252
	.quad	0x3fd0641b328b6d87              # double 0.25611
	.quad	0x3fc712a94ff0025c              # double 0.180257
	.quad	0x3fd04ac6cdaf4adc              # double 0.25456400000000001
	.quad	0x3fbc0ae1049235f8              # double 0.109541
	.quad	0x3fde13986338b47c              # double 0.46994599999999997
	.quad	0x3fbf994e1a3f4667              # double 0.123433
	.quad	0x3fd3e40c8472c0e8              # double 0.31079400000000001
	.quad	0x3fb0ec743201040c              # double 0.066108
	.quad	0x3fda1c714fce746d              # double 0.40798600000000002
	.quad	0x3fee425d074213a1              # double 0.94560100000000002
	.quad	0x3fed16659d12cade              # double 0.90898400000000001
	.quad	0x3fec4914b167ec78              # double 0.88392099999999996
	.quad	0x3fc121ccd9620685              # double 0.13384399999999999
	.quad	0x3fb45a1cac083127              # double 0.079500000000000001
	.quad	0x3fab0e7ff583a53c              # double 0.052845000000000003
	.quad	0x3fe4c751ce28ed5f              # double 0.64933099999999999
	.quad	0x3fd6f0e90bc7b45f              # double 0.35845399999999999
	.quad	0x3fe86e9142b302f7              # double 0.76349699999999998
	.quad	0x3fe30c38f366948a              # double 0.59524200000000005
	.quad	0x3fdbfecdd0d8cb08              # double 0.43742700000000001
	.quad	0x3fce7a7c9de05037              # double 0.23811299999999999
	.quad	0x3fe106b59146e4c1              # double 0.53206900000000001
	.quad	0x3fe467e846a5d6bf              # double 0.63768400000000003
	.quad	0x3fe0612a51e321a3              # double 0.51186100000000001
	.quad	0x3fe3f43e963dc487              # double 0.62356500000000004
	.quad	0x3fd98a6117720c8d              # double 0.39907100000000001
	.quad	0x3fb65e56cd6c2efd              # double 0.087376999999999996
	.quad	0x3fe631d712a0ec74              # double 0.69358399999999998
	.quad	0x3fdc38b8ae31d713              # double 0.44096200000000002
	.quad	0x3fc5394317acc4f0              # double 0.16581000000000001
	.quad	0x3fd5aebc408d8ec9              # double 0.33878999999999998
	.quad	0x3fe26872b020c49c              # double 0.57525000000000004
	.quad	0x3fd795d4e8fb00bd              # double 0.36852000000000001
	.quad	0x3fe162b063e07a29              # double 0.54329700000000003
	.quad	0x3fe81ce6c093d966              # double 0.75352799999999998
	.quad	0x3fe7e06530058149              # double 0.74614199999999997
	.quad	0x3fb1f926c7eae5bd              # double 0.070208000000000007
	.quad	0x3fee810e8858ff76              # double 0.95325400000000005
	.quad	0x3fb3445ed4a1ad64              # double 0.075261999999999996
	.quad	0x3fe85d97f62b6ae8              # double 0.76142500000000002
	.quad	0x3fe1cf3775b81301              # double 0.55654499999999996
	.quad	0x3fd3e0e736049ecb              # double 0.31060199999999999
	.quad	0x3fec6d4a1ad6451c              # double 0.88834100000000004
	.quad	0x3f9a469d7342edbb              # double 0.025659999999999999
	.quad	0x3feb1884c6a3bde0              # double 0.84674300000000002
	.quad	0x3fe051958969a0ae              # double 0.50995900000000005
	.quad	0x3fe250f6273929ed              # double 0.57238299999999998
	.quad	0x3feb2a8c9b845565              # double 0.84894400000000003
	.quad	0x3fa9fb6134ce3de6              # double 0.050745999999999999
	.quad	0x3f9fa615a8deb0fb              # double 0.030907
	.quad	0x3fee9e6eeb702603              # double 0.95684000000000002
	.quad	0x3fed70fe047d3d43              # double 0.92004300000000006
	.quad	0x3fa5530489d27c39              # double 0.041648999999999999
	.quad	0x3fec24b124d099e1              # double 0.87947900000000001
	.quad	0x3fe27811f4f50a03              # double 0.57715700000000003
	.quad	0x3fd66088d6d3b6cc              # double 0.34964200000000001
	.quad	0x3febf9335d249e45              # double 0.87417
	.quad	0x3fe32dc8fb86f47b              # double 0.59933899999999996
	.quad	0x3fa624bba12b5e53              # double 0.043249000000000003
	.quad	0x3fec0919ef954eb1              # double 0.87611099999999997
	.quad	0x3fb7e1a8262456f7              # double 0.093286999999999995
	.quad	0x3fd01b866e43aa7a              # double 0.25168000000000001
	.quad	0x3fdc487b99d451fc              # double 0.44192399999999998
	.quad	0x3fe187789a459104              # double 0.54778700000000002
	.quad	0x3fe8ffb69984a0e4              # double 0.78121499999999999
	.quad	0x3fa8e68e3ef28416              # double 0.048633999999999997
	.quad	0x3fe5ff822bbecaac              # double 0.68744000000000005
	.quad	0x3fe6260b2c83ec89              # double 0.69214399999999998
	.quad	0x3fe645cfede97d07              # double 0.69602200000000003
	.quad	0x3fe648abd5dc4007              # double 0.69637099999999996
	.quad	0x3fdf173fb7a5f41b              # double 0.485794
	.quad	0x3f766490a350d280              # double 0.0054669999999999996
	.quad	0x3fe7929ed3953dea              # double 0.73664799999999997
	.quad	0x3fe60cd20afa2f06              # double 0.68906500000000004
	.quad	0x3fdcc0053e2d6239              # double 0.44922000000000001
	.quad	0x3fbd5ffe6d58c8ef              # double 0.114746
	.quad	0x3fde30fcf80dc337              # double 0.47173999999999999
	.quad	0x3fed34edb2f661f2              # double 0.91271100000000005
	.quad	0x3fb0303c07ee0b0b              # double 0.063236000000000001
	.quad	0x3fbf13dfb0d51f82              # double 0.121397
	.quad	0x3fce7c30d306a2b1              # double 0.23816499999999999
	.quad	0x3fe87d7e45803cd1              # double 0.76531899999999997
	.quad	0x3febbe9856a37ac4              # double 0.867016
	.quad	0x3feb45dc8323358f              # double 0.85227799999999998
	.quad	0x3fdf51697f1f9ad0              # double 0.489344
	.quad	0x3fd2a6fc58ab92c0              # double 0.29144199999999998
	.quad	0x3fa248b652370479              # double 0.035711
	.quad	0x3fe96c56d5cfaace              # double 0.79447500000000004
	.quad	0x3fe4bd3a1d323fee              # double 0.64809899999999998
	.quad	0x3fd61754b05b7cfe              # double 0.34517399999999998
	.quad	0x3fe57b634dad31fd              # double 0.67131200000000002
	.quad	0x3fd2414a4d2b2bfe              # double 0.28523500000000002
	.quad	0x3fdd3c792d1287c2              # double 0.456816
	.quad	0x3fe4d7082491afc0              # double 0.65124899999999997
	.quad	0x3fe0745e0b4e11dc              # double 0.51420500000000002
	.quad	0x3fbd9e0e736049ed              # double 0.115693
	.quad	0x3fefddfa871a3b15              # double 0.99584700000000003
	.quad	0x3fcf8305d95dd4c7              # double 0.24618599999999999
	.quad	0x3fd58769ec2ce465              # double 0.33639000000000002
	.quad	0x3fcbd495182a9931              # double 0.21742500000000001
	.quad	0x3fe86978d4fdf3b6              # double 0.76287499999999997
	.quad	0x3fee55e6bc621b7e              # double 0.947986
	.quad	0x3fd80ee8d10f51ad              # double 0.37591000000000002
	.quad	0x3feab1550ca1cef2              # double 0.83414699999999997
	.quad	0x3fcf146e4c0df58c              # double 0.242811
	.quad	0x3fed4cee5abc0e39              # double 0.91564100000000004
	.quad	0x3fedb8cb8e086bdf              # double 0.92880799999999997
	.quad	0x3fea97d49d7ba66a              # double 0.83103400000000005
	.quad	0x3fa6d45e9185cee1              # double 0.044588999999999997
	.quad	0x3fccd44dca8e2e2c              # double 0.22522900000000001
	.quad	0x3fc6d0bb6ed67770              # double 0.17824499999999999
	.quad	0x3fd13b0c4588a04d              # double 0.269229
	.quad	0x3fedf60e0eb67c28              # double 0.93628599999999995
	.quad	0x3fc60eb67c286f8b              # double 0.172324
	.quad	0x3fc2161e4f765fd9              # double 0.14130000000000001
	.quad	0x3fdaf4128bf3bea9              # double 0.42114699999999999
	.quad	0x3fcd4d2f5dbb9cfa              # double 0.22891800000000001
	.quad	0x3fe8cbb3c81908e6              # double 0.77486600000000005
	.quad	0x3fda723ee1bd1eda              # double 0.41322300000000001
	.quad	0x3fd198e970718223              # double 0.27495799999999998
	.quad	0x3fd1ee0b0af5fd48              # double 0.28015400000000001
	.quad	0x3fd27f6f4be835df              # double 0.28902800000000001
	.quad	0x3fcff202107b7846              # double 0.24957299999999999
	.quad	0x3fe04944ed6fda83              # double 0.50894399999999995
	.quad	0x3fcc0d23d4f15e7d              # double 0.21915100000000001
	.quad	0x3fd973b42cc2d6aa              # double 0.39768700000000001
	.quad	0x3fe222fcefaa4767              # double 0.56677100000000002
	.quad	0x3f9ca7d6733ebbfd              # double 0.027983999999999998
	.quad	0x3fcf9d5e4a383276              # double 0.24698999999999999
	.quad	0x3fd7df86e3b46fdf              # double 0.37301800000000002
	.quad	0x3fd7c6b484d76ab6              # double 0.37150300000000003
	.quad	0x3fc6794ea077036d              # double 0.17557700000000001
	.quad	0x3fecaef0ae536502              # double 0.89635500000000001
	.quad	0x3fea3bea91d9b1b8              # double 0.81981400000000004
	.quad	0x3fd6ef39085f4a12              # double 0.35835099999999998
	.quad	0x3f96e9bbf0dc768e              # double 0.022376
	.quad	0x3fcaf544bb1af3a1              # double 0.21060999999999999
	.quad	0x3fe5f76a2f48c2e7              # double 0.68645199999999995
	.quad	0x3fc3ab29e4d5d80e              # double 0.15366099999999999
	.quad	0x3fe1ca07f66e86c6              # double 0.55591199999999996
	.quad	0x3fe60746455eaee2              # double 0.688388
	.quad	0x3fe69695d91ab8e9              # double 0.70588200000000001
	.quad	0x3fd1294dd72367e4              # double 0.268146
	.quad	0x3fe74304ccee5abc              # double 0.72693099999999999
	.quad	0x3fe1fb65668c2614              # double 0.56193800000000005
	.quad	0x3f7c03361565c2d2              # double 0.0068389999999999996
	.quad	0x3fd4c79702e6644e              # double 0.32468200000000003
	.quad	0x3fe3e5fd8adab9f5              # double 0.62182499999999996
	.quad	0x3fcde529bae46cfd              # double 0.23355600000000001
	.quad	0x3fe6d46b26bf876a              # double 0.71343000000000001
	.quad	0x3fe5c816f0068db9              # double 0.68067500000000003
	.quad	0x3fbe9fbe76c8b439              # double 0.119625
	.quad	0x3fca098915bdd767              # double 0.20341600000000001
	.quad	0x3fe5893964a59c06              # double 0.67300099999999996
	.quad	0x3fdf38fbca1059ea              # double 0.48785299999999998
	.quad	0x3fe4c6f9b994e1a4              # double 0.64928900000000001
	.quad	0x3fc956b873797460              # double 0.197959
	.quad	0x3fd54623d0bfa094              # double 0.33240599999999998
	.quad	0x3fd47b8d3f1843c4              # double 0.32004100000000002
	.quad	0x3f841b75a74c09c4              # double 0.0098180000000000003
	.quad	0x3fe18f55de58e64b              # double 0.54874699999999998
	.quad	0x3fea63779e9d0e99              # double 0.82464199999999999
	.quad	0x3fe75c182ecaeea6              # double 0.72999199999999997
	.quad	0x3febf644955b4678              # double 0.87381200000000003
	.quad	0x3fd7f9591cd1c7de              # double 0.37459399999999998
	.quad	0x3fef72ba9d1f6018              # double 0.98275500000000004
	.quad	0x3fdae3ffef39085f              # double 0.42016599999999998
	.quad	0x3febb29c347e8cce              # double 0.86555300000000002
	.quad	0x3fd32bd3c3611340              # double 0.29954999999999998
	.quad	0x3f5d6494d50ebaae              # double 0.001794
	.quad	0x3fb4958d9b5e95b8              # double 0.080407000000000006
	.quad	0x3fee23b7952d234f              # double 0.94186000000000003
	.quad	0x3fa9ba7fc32ebe59              # double 0.050250999999999997
	.quad	0x3fe9ac3009b30729              # double 0.80226900000000001
	.quad	0x3fcd1044f1a1986c              # double 0.22705900000000001
	.quad	0x3fe0ec15d2d01c0d              # double 0.52881900000000004
	.quad	0x3fe11c9b41398634              # double 0.53474200000000005
	.quad	0x3feff71865519371              # double 0.99891300000000005
	.quad	0x3fccd9620685553f              # double 0.225384
	.quad	0x3febfbacb4289119              # double 0.87447200000000003
	.quad	0x3fd270691ea78af4              # double 0.28811100000000001
	.quad	0x3fda4a66559f6ec6              # double 0.41079100000000002
	.quad	0x3fe044c9c90c4dec              # double 0.50839699999999999
	.quad	0x3fbcc0f01fb82c2c              # double 0.112319
	.quad	0x3fe9c37a3db3bfb6              # double 0.80511200000000005
	.quad	0x3fd4fc115df6555c              # double 0.32788499999999998
	.quad	0x3fd2c964628027d9              # double 0.29354200000000003
	.quad	0x3fe94ed2cbea4ebe              # double 0.79087200000000002
	.quad	0x3fe02b27cbf6e3f8              # double 0.50526800000000005
	.quad	0x3fe56117720c8cd6              # double 0.66810199999999997
	.quad	0x3fd64aba38759253              # double 0.34831099999999998
	.quad	0x3feb5f86e3b46fdf              # double 0.85541100000000003
	.quad	0x3fe37f2e48e8a71e              # double 0.60927500000000001
	.quad	0x3febe5bc87db2b34              # double 0.87179399999999995
	.quad	0x3fc5ad42c3c9eecc              # double 0.16935
	.quad	0x3feb372c5197a249              # double 0.85048500000000005
	.quad	0x3fc828bb0a2ca9ac              # double 0.18874299999999999
	.quad	0x3fef3504c48adeec              # double 0.97522200000000003
	.quad	0x3fc92d234eb9a177              # double 0.19669
	.quad	0x3fc5715c63ae2542              # double 0.167522
	.quad	0x3fabe89a88ace24c              # double 0.054509000000000002
	.quad	0x3fde682730c67169              # double 0.475107
	.quad	0x3fcb1b4784230fd0              # double 0.21177000000000001
	.quad	0x3fe95d2f1a9fbe77              # double 0.79262500000000002
	.quad	0x3fcac8472c0e7bc4              # double 0.20923700000000001
	.quad	0x3fd01a0cf1800a7c              # double 0.25158999999999998
	.quad	0x3fe14ff64cf8d717              # double 0.54101100000000002
	.quad	0x3fac957cd466f502              # double 0.055828000000000003
	.quad	0x3fe6465c70435efa              # double 0.69608899999999996
	.quad	0x3fe290adcd2d44dd              # double 0.58016100000000004
	.quad	0x3fe800d3cff64cf9              # double 0.75010100000000002
	.quad	0x3feb8d6d3b6cbd98              # double 0.86101399999999995
	.quad	0x3fea1c193b3a68b2              # double 0.81593000000000004
	.quad	0x3fd82773e24febd1              # double 0.37740800000000002
	.quad	0x3fe12dadb8348f54              # double 0.53682600000000003
	.quad	0x3fe0c64fdb09a672              # double 0.52420800000000001
	.quad	0x3fef087229e90796              # double 0.969781
	.quad	0x3fe98e4da09cc31a              # double 0.79862100000000003
	.quad	0x3fc2a7f8012dfd69              # double 0.14575099999999999
	.quad	0x3fd0a98244e93e1d              # double 0.26034600000000002
	.quad	0x3f93504c48adeebb              # double 0.018860999999999999
	.quad	0x3fd93b7d84901d19              # double 0.394256
	.quad	0x3fd3888b545c78a7              # double 0.30520900000000001
	.quad	0x3fe6c2bd7f51efb7              # double 0.71127200000000002
	.quad	0x3feb8561d4306e5d              # double 0.86003200000000002
	.quad	0x3fea9cc74b838c11              # double 0.83163799999999999
	.quad	0x3fd3b12d3415b142              # double 0.30768899999999999
	.quad	0x3fef265f0f5a1017              # double 0.97343400000000002
	.quad	0x3fece935b91f70df              # double 0.90346800000000005
	.quad	0x3fdc91b3f20a73f7              # double 0.44639299999999998
	.quad	0x3fc5e0ce0b912dba              # double 0.17092299999999999
	.quad	0x3fae9b17481b21c4              # double 0.059776999999999997
	.quad	0x3f9fd21ff2e48e8a              # double 0.031074999999999998
	.quad	0x3fd9d451fc4c1659              # double 0.403584
	.quad	0x3fe5fbd6a593a2e0              # double 0.68699200000000005
	.quad	0x3fec9c8216c61523              # double 0.89410500000000004
	.quad	0x3fec06a4ca4f440b              # double 0.87581100000000001
	.quad	0x3fd251697f1f9ad0              # double 0.286219
	.quad	0x3fe9e935b91f70df              # double 0.80971800000000005
	.quad	0x3fce031ceaf251c2              # double 0.23447000000000001
	.quad	0x3fcf0435efa615a9              # double 0.242316
	.quad	0x3fe6ba27ae9ab29e              # double 0.71022399999999997
	.quad	0x3fd381a1554fbdad              # double 0.30478699999999997
	.quad	0x3fc242d05f288484              # double 0.14266400000000001
	.quad	0x3fa2fb19e731d2e1              # double 0.037072000000000001
	.quad	0x3fecc2acb85a4f01              # double 0.89876400000000001
	.quad	0x3faca5bd944aa540              # double 0.055952000000000002
	.quad	0x3fe260cbf2b239a4              # double 0.57431600000000005
	.quad	0x3fef33aeee957471              # double 0.975059
	.quad	0x3fe23280f12c27a6              # double 0.56866499999999998
	.quad	0x3fe405ec3dab5c3a              # double 0.62572300000000003
	.quad	0x3fd7d8f92af9a8ce              # double 0.372618
	.quad	0x3fe8742352eb5f5f              # double 0.764177
	.quad	0x3fe63fe3b03e20cd              # double 0.695299
	.quad	0x3feb5a4484944ed7              # double 0.854769
	.quad	0x3fde46f587d6f976              # double 0.47308099999999997
	.quad	0x3f9ccab3edd8b60f              # double 0.028117
	.quad	0x3fc570bd017dae82              # double 0.16750300000000001
	.quad	0x3fe87967caea747e              # double 0.76482000000000006
	.quad	0x3fbb02f72b452828              # double 0.105514
	.quad	0x3fe7eee957470eb2              # double 0.74791399999999997
	.quad	0x3fe65b5525cc4263              # double 0.69864899999999996
	.quad	0x3fe889f1f14983d8              # double 0.76683900000000005
	.quad	0x3fe1b0ced4e4c943              # double 0.55283300000000002
	.quad	0x3fb440181e03f706              # double 0.079103000000000006
	.quad	0x3fddf0f16f4384ba              # double 0.467831
	.quad	0x3fe6450acc0bdcad              # double 0.69592799999999999
	.quad	0x3fdaf99c38b04ab6              # double 0.421485
	.quad	0x3fd18b75ea67e847              # double 0.27413700000000002
	.quad	0x3fe14768dfbd6a59              # double 0.53996699999999997
	.quad	0x3fa0af3e468cac4b              # double 0.032586999999999998
	.quad	0x3fdfe3bcd35a8588              # double 0.49827500000000002
	.quad	0x3fe9a05ff1d81f10              # double 0.80082699999999996
	.quad	0x3fd802fb5d031056              # double 0.37518200000000002
	.quad	0x3fa9c1f85d744f5d              # double 0.050307999999999999
	.quad	0x3fab825e13b18dac              # double 0.053728999999999999
	.quad	0x3fdd6dd26b723ee2              # double 0.45982800000000001
	.quad	0x3fc11aeb3dd11be7              # double 0.133634
	.quad	0x3fe9f10880d801b4              # double 0.81067299999999997
	.quad	0x3fd7a60d4562e0a0              # double 0.36951000000000001
	.quad	0x3fe7427418d6909b              # double 0.72686200000000001
	.quad	0x3fe73324851a8694              # double 0.724993
	.quad	0x3fdc35935fc3b4f6              # double 0.44077
	.quad	0x3fe96086bdf4c2b5              # double 0.79303299999999999
	.quad	0x3fd319eb6390c910              # double 0.29845699999999997
	.quad	0x3fd68b97785729b3              # double 0.35227000000000003
	.quad	0x3fe630ea18372e6a              # double 0.69347099999999995
	.quad	0x3fe354bad7d7c2ca              # double 0.60409299999999999
	.quad	0x3fdd5929670196d9              # double 0.458567
	.quad	0x3f6a8cdea033e78e              # double 0.003241
	.quad	0x3fea7bfa4c61d862              # double 0.82763399999999998
	.quad	0x3fc102de00d1b717              # double 0.13289999999999999
	.quad	0x3fe879ebe9c88616              # double 0.76488299999999998
	.quad	0x3fea341e14bdfd26              # double 0.81886199999999998
	.quad	0x3fda07852f7f498c              # double 0.40670899999999999
	.quad	0x3fcc19b90ea9e6ef              # double 0.21953500000000001
	.quad	0x3fd644284dfce315              # double 0.34791
	.quad	0x3fbf6eb4e981387a              # double 0.122783
	.quad	0x3fe21843c3a42f1f              # double 0.56546200000000002
	.quad	0x3fd552c59fb1e18f              # double 0.333177
	.quad	0x3fd255c0fcb4f1e5              # double 0.28648400000000002
	.quad	0x3fca49f51697f1fa              # double 0.20538200000000001
	.quad	0x3fd8c59b8023a6ce              # double 0.38706099999999999
	.quad	0x3fe893d96638433d              # double 0.76804799999999995
	.quad	0x3fdb242070b8cfc0              # double 0.42408000000000001
	.quad	0x3fe45530489d27c4              # double 0.63539900000000005
	.quad	0x3f80e6f2e8c0485a              # double 0.0082529999999999999
	.quad	0x3fc801abd1aa821f              # double 0.187551
	.quad	0x3fd52ecaeea63b69              # double 0.33098100000000003
	.quad	0x3fbd68b5cbff4773              # double 0.114879
	.quad	0x3fee5caafbc1acde              # double 0.94881199999999999
	.quad	0x3fd4ce4649906cca              # double 0.32508999999999999
	.quad	0x3fe42f4f0d844d01              # double 0.63077499999999997
	.quad	0x3f595cc857f3061c              # double 0.0015479999999999999
	.quad	0x3fed6f2e8c0485a1              # double 0.91982200000000003
	.quad	0x3fc5ced0b30b5aa7              # double 0.170374
	.quad	0x3f98c60cbf2b239a              # double 0.024192999999999999
	.quad	0x3fee53d859c8c932              # double 0.94773499999999999
	.quad	0x3fed2f6c69b5a640              # double 0.91203900000000004
	.quad	0x3fed5b749adc8fb8              # double 0.91741399999999995
	.quad	0x3fc0fcce1c58255b              # double 0.132715
	.quad	0x3fe788051c9f72f7              # double 0.73535399999999995
	.quad	0x3fb2d85dfa871a3b              # double 0.073613999999999999
	.quad	0x3fe7d759ee88df37              # double 0.74503799999999998
	.quad	0x3fd11e9af5ba2be0              # double 0.26749299999999998
	.quad	0x3fea3e596c82e01a              # double 0.82011100000000003
	.quad	0x3fe99170d62bf120              # double 0.79900400000000004
	.quad	0x3fdf3cff64cf8d71              # double 0.48809799999999998
	.quad	0x3feaef08cc575c07              # double 0.84167899999999995
	.quad	0x3fd1c332f01754b0              # double 0.27753899999999998
	.quad	0x3fac91f2dc2b0ea2              # double 0.055801000000000003
	.quad	0x3fd4b52c9d16fc9c              # double 0.32355800000000001
	.quad	0x3fd064345cfede98              # double 0.25611600000000001
	.quad	0x3fe9e772d5e071c5              # double 0.80950299999999997
	.quad	0x3fe18eb24a6a875d              # double 0.54866899999999996
	.quad	0x3f8cab81f969e3c9              # double 0.013998999999999999
	.quad	0x3fe1a8826aa8eb46              # double 0.55181999999999998
	.quad	0x3fe57b7414a4d2b3              # double 0.67132000000000003
	.quad	0x3fc80b780346dc5d              # double 0.18784999999999999
	.quad	0x3fba325d4a5df224              # double 0.10233100000000001
	.quad	0x3fa7f2a172abef07              # double 0.046773000000000002
	.quad	0x3fd3b35b0bbf50e3              # double 0.30782199999999998
	.quad	0x3f8e00d1b71758e2              # double 0.01465
	.quad	0x3fdb32830a0b1bbd              # double 0.424958
	.quad	0x3fd85696e58a32f4              # double 0.38028499999999998
	.quad	0x3fd8448cf7caa759              # double 0.37918400000000002
	.quad	0x3f94fd6d7e889c1b              # double 0.020497999999999999
	.quad	0x3fe24768dfbd6a59              # double 0.57121699999999997
	.quad	0x3fac2396073de1e3              # double 0.054959000000000001
	.quad	0x3fdb5d701d9f4d38              # double 0.42757800000000001
	.quad	0x3fdf4a98aa8650e7              # double 0.48892799999999997
	.quad	0x3fea309203a322af              # double 0.81842899999999996
	.quad	0x3fddb0af5fd47bee              # double 0.46390900000000002
	.quad	0x3fcddf6555c52e73              # double 0.23338
	.quad	0x3fea333b96af038e              # double 0.81875399999999998
	.quad	0x3fed0ede54b48d3b              # double 0.90806500000000001
	.quad	0x3fd6f57f737da61e              # double 0.358734
	.quad	0x3fd2ba3443d46b27              # double 0.29261500000000001
	.quad	0x3fcb6a1e81cb46bb              # double 0.21417600000000001
	.quad	0x3fec4c016052502f              # double 0.88427800000000001
	.quad	0x3fed3d05af6c69b6              # double 0.91369900000000004
	.quad	0x3fa53bd1676640a7              # double 0.041472000000000002
	.quad	0x3fe7b78cc9a77e5f              # double 0.74115600000000004
	.quad	0x3fe1bc947064ecea              # double 0.55427000000000004
	.quad	0x3f82abef06b37868              # double 0.0091170000000000001
	.quad	0x3fe8706b37867f0b              # double 0.76372300000000004
	.quad	0x3fe63e4473cd5736              # double 0.69510099999999997
	.quad	0x3fe5aceee0f3cb3e              # double 0.67735999999999996
	.quad	0x3fbc99bf5946c333              # double 0.111721
	.quad	0x3fe427631b584b1b              # double 0.62980800000000003
	.quad	0x3fe8c47a17f4128c              # double 0.773984
	.quad	0x3fd6958537e2c55d              # double 0.35287600000000002
	.quad	0x3fc62d6238da3c21              # double 0.17326
	.quad	0x3fcb058dde7a743a              # double 0.21110699999999999
	.quad	0x3fd72cdc011d3672              # double 0.36211300000000002
	.quad	0x3fe4905e1c15097d              # double 0.64262300000000006
	.quad	0x3fd4aa4766c6de76              # double 0.32289299999999999
	.quad	0x3fe1ba2df9378ee3              # double 0.55397700000000005
	.quad	0x3fd52be8bc169c24              # double 0.33080500000000002
	.quad	0x3fa3823c85c24c40              # double 0.038102999999999998
	.quad	0x3fe06366d7a56de3              # double 0.51213399999999998
	.quad	0x3fd38f8e7ddca4b1              # double 0.30563699999999999
	.quad	0x3fe763608d08919f              # double 0.730881
	.quad	0x3fe5a517e77d523b              # double 0.67640299999999998
	.quad	0x3fe4cf50a02b8412              # double 0.65030699999999997
	.quad	0x3fc96a7264a16a48              # double 0.19856099999999999
	.quad	0x3fe3151a437824d5              # double 0.59632600000000002
	.quad	0x3f9669057d1782d4              # double 0.021885000000000002
	.quad	0x3fe40f5c28f5c28f              # double 0.62687499999999996
	.quad	0x3fefc996b76709fa              # double 0.99335799999999996
	.quad	0x3fc4aed1394317ad              # double 0.16158500000000001
	.quad	0x3fce01a36e2eb1c4              # double 0.23442499999999999
	.quad	0x3fd0f850df15a4ad              # double 0.265156
	.quad	0x3fb14738a3b57c4e              # double 0.067492999999999997
	.quad	0x3fcdbe4cd7492791              # double 0.23236999999999999
	.quad	0x3fea9de69ad42c3d              # double 0.83177500000000004
	.quad	0x3fd31116a8b8f14e              # double 0.29791800000000002
	.quad	0x3fedfb352a843809              # double 0.93691500000000005
	.quad	0x3fe78bbd3804534c              # double 0.73580800000000002
	.quad	0x3fdc1fa76534373f              # double 0.43943199999999999
	.quad	0x3fe15fd2630ec311              # double 0.54294699999999996
	.quad	0x3fec83126e978d50              # double 0.89100000000000001
	.quad	0x3fc7fddebd9018e7              # double 0.18743499999999999
	.quad	0x3fe3dd67ba237cdd              # double 0.62077700000000002
	.quad	0x3feca9c99285a922              # double 0.89572600000000002
	.quad	0x3fd0cc9ea9a3d2d8              # double 0.26248899999999997
	.quad	0x3fddd3cbc48f10aa              # double 0.46605200000000002
	.quad	0x3fec09c7ffde7211              # double 0.87619400000000003
	.quad	0x3fe900dc33721d54              # double 0.78135500000000002
	.quad	0x3fc991c4b90214ad              # double 0.19976099999999999
	.quad	0x3fbe4e26d4801f75              # double 0.11838
	.quad	0x3fc144f5d35653ca              # double 0.13491700000000001
	.quad	0x3fd42fba01eeed89              # double 0.315413
	.quad	0x3fe36acc92146a1a              # double 0.60678699999999997
	.quad	0x3fd1a3b57c4e2f38              # double 0.275617
	.quad	0x3fc33ac4f7ec3548              # double 0.150231
	.quad	0x3fb2c2df0d413123              # double 0.073286000000000004
	.quad	0x3f95097c80841ede              # double 0.020544
	.quad	0x3fb779fa97e132b5              # double 0.091704999999999995
	.quad	0x3fea4dc8754f3776              # double 0.82199500000000003
	.quad	0x3fe5ce7ee9142b30              # double 0.68145699999999998
	.quad	0x3fed47eae5bc87db              # double 0.91502899999999998
	.quad	0x3fe3de8f6cefed63              # double 0.62091799999999997
	.quad	0x3fdcffc115df6556              # double 0.45311000000000001
	.quad	0x3feb09acbc8c0ce9              # double 0.84493099999999999
	.quad	0x3fef4898f605ab3b              # double 0.97761200000000003
	.quad	0x3fea4a9ef5232d2c              # double 0.82160900000000003
	.quad	0x3fe2c1d6cf850df1              # double 0.58616199999999996
	.quad	0x3fd678cc9a77e5eb              # double 0.35112300000000002
	.quad	0x3fa21d755bccaf71              # double 0.035381000000000003
	.quad	0x3fe49c2a02320968              # double 0.64406300000000005
	.quad	0x3fe7a70b06c43f60              # double 0.73914100000000004
	.quad	0x3fd7c65c70435efa              # double 0.37148199999999998
	.quad	0x3fb2a2b1704ff434              # double 0.072794999999999999
	.quad	0x3fe3507a6bd6e8b0              # double 0.60357400000000005
	.quad	0x3fe3883771865519              # double 0.61037799999999998
	.quad	0x3fe7eb59146e4c0e              # double 0.747479
	.quad	0x3fd116aceaaf35e3              # double 0.267009
	.quad	0x3faeb3dd11be6e65              # double 0.059965999999999998
	.quad	0x3fd6966be7afa722              # double 0.35293099999999999
	.quad	0x3fe86aa6d2674081              # double 0.763019
	.quad	0x3fe342a8869c66d3              # double 0.60188699999999995
	.quad	0x3fe0673c4f3ba776              # double 0.512602
	.quad	0x3fb854de7ea5f84d              # double 0.095045000000000004
	.quad	0x3fec4cf0739b024f              # double 0.88439199999999996
	.quad	0x3fd870e6f2e8c048              # double 0.38189099999999998
	.quad	0x3fe9dd82fd75e204              # double 0.80828999999999995
	.quad	0x3fe40e410b630a91              # double 0.62673999999999996
	.quad	0x3fd36238da3c2118              # double 0.30286999999999997
	.quad	0x3fb22ae4b0186120              # double 0.070967000000000002
	.quad	0x3fddf05a708ede55              # double 0.46779500000000002
	.quad	0x3fe58196d8f4f93c              # double 0.67206900000000003
	.quad	0x3fe414317acc4ef9              # double 0.62746500000000005
	.quad	0x3fe3ad8c2a454de8              # double 0.61493500000000001
	.quad	0x3fead803cd141a69              # double 0.83886899999999998
	.quad	0x3fe2133e35c5b4ab              # double 0.56484900000000005
	.quad	0x3fcff9830e3cd9a5              # double 0.249802
	.quad	0x3fd2f141205bc01a              # double 0.29597499999999999
	.quad	0x3fd528aa433508f6              # double 0.33060699999999998
	.quad	0x3feccbe1eb4202da              # double 0.89988800000000002
	.quad	0x3fcb780346dc5d64              # double 0.21460000000000001
	.quad	0x3fed1550ca1cef24              # double 0.90885199999999999
	.quad	0x3fed69270b06c43f              # double 0.91908599999999996
	.quad	0x3fc5b30f8c64fdb1              # double 0.16952700000000001
	.quad	0x3fc43161a1db877b              # double 0.15775700000000001
	.quad	0x3fec1018e757928e              # double 0.87696499999999999
	.quad	0x3fc536e71cda2b5a              # double 0.165738
	.quad	0x3fdf3369b9d7fd82              # double 0.48751299999999997
	.quad	0x3fdeab1d4f9c1f86              # double 0.47919400000000001
	.quad	0x3fce74080f98fa37              # double 0.23791599999999999
	.quad	0x3fc8f587d6f97679              # double 0.194993
	.quad	0x3fef5f7c6759ab6d              # double 0.98040599999999999
	.quad	0x3fed3dab5c39bcba              # double 0.91377799999999998
	.quad	0x3fd9d7e45803cd14              # double 0.40380199999999999
	.quad	0x3fe040f451761459              # double 0.50792899999999996
	.quad	0x3fd723a29c779a6b              # double 0.36154999999999998
	.quad	0x3fe60d5842b734b5              # double 0.68912899999999999
	.quad	0x3fb9783dff3f0fe0              # double 0.099490999999999996
	.quad	0x3fef4adbc664d3bf              # double 0.97788799999999997
	.quad	0x3fbe9531550ca1cf              # double 0.119464
	.quad	0x3fde5d031055b899              # double 0.47442699999999999
	.quad	0x3fcf31f46ed245b3              # double 0.24371200000000001
	.quad	0x3fb3498c3b0c4589              # double 0.075341000000000005
	.quad	0x3f9e5a78f25a2510              # double 0.029642000000000002
	.quad	0x3fc3a708ede54b49              # double 0.153535
	.quad	0x3fe660ac7da1ec4e              # double 0.69930099999999995
	.quad	0x3fe23a7daa4fca43              # double 0.56964000000000004
	.quad	0x3fe38a17b0f6ad71              # double 0.61060700000000001
	.quad	0x3faa730c67168f8e              # double 0.051658999999999997
	.quad	0x3f68655193708aad              # double 0.0029780000000000002
	.quad	0x3fd7ed8d36b4c7f3              # double 0.37387399999999998
	.quad	0x3fecc0fa9c12f09e              # double 0.89855700000000005
	.quad	0x3fb16a593a2df938              # double 0.068029000000000006
	.quad	0x3fe7b841248d7e02              # double 0.74124199999999996
	.quad	0x3fd8607c4199fe43              # double 0.38088899999999998
	.quad	0x3fc3abf338716095              # double 0.15368499999999999
	.quad	0x3fd2f0cbaf965b21              # double 0.29594700000000002
	.quad	0x3fd181f10667f90e              # double 0.27355600000000002
	.quad	0x3fd419c17225b74a              # double 0.31407200000000002
	.quad	0x3fe04e95faa8a82a              # double 0.50959299999999996
	.quad	0x3fe9a737110e453d              # double 0.80166199999999999
	.quad	0x3fdb4e7ee9142b30              # double 0.42666599999999999
	.quad	0x3feca6defc7a3982              # double 0.89537
	.quad	0x3fc8cd07852f7f4a              # double 0.19375700000000001
	.quad	0x3fef706b37867f0b              # double 0.98247300000000004
	.quad	0x3fc558969a0ad8a1              # double 0.166766
	.quad	0x3fe947820a30db6a              # double 0.78997899999999999
	.quad	0x3fee878d92fb19e7              # double 0.95404699999999998
	.quad	0x3fda40fa9c12f09e              # double 0.41021600000000003
	.quad	0x3fe2e5cb35f3d7d4              # double 0.59055100000000005
	.quad	0x3fda759685122318              # double 0.41342699999999999
	.quad	0x3fe44bdfd2630ec3              # double 0.63426199999999999
	.quad	0x3fe50da1a93293d1              # double 0.657914
	.quad	0x3fd0f961804d9839              # double 0.26522099999999998
	.quad	0x3fd7c44bf4cb1898              # double 0.37135600000000002
	.quad	0x3fcd09aed56b0100              # double 0.226858
	.quad	0x3fae62dc6e2a8006              # double 0.059347999999999998
	.quad	0x3fd038eb0318b934              # double 0.25347399999999998
	.quad	0x3fef4de7ea5f84cb              # double 0.97826000000000001
	.quad	0x3fc02163fdd65a14              # double 0.12601899999999999
	.quad	0x3fca616b54e2b064              # double 0.206098
	.quad	0x3feadafd113836a8              # double 0.83923199999999998
	.quad	0x3fc200c0f01fb82c              # double 0.140648
	.quad	0x3fd85cd0bb6ed677              # double 0.38066499999999998
	.quad	0x3fd484d76ab58080              # double 0.320608
	.quad	0x3fec7c6da4484945              # double 0.89018900000000001
	.quad	0x3fb96861e92923e6              # double 0.099249000000000003
	.quad	0x3fe925ca29845dc8              # double 0.78586299999999998
	.quad	0x3fd056c508b32ce9              # double 0.25529600000000002
	.quad	0x3fb6d9dfdac68a93              # double 0.089261999999999994
	.quad	0x3fd53443d46b26c0              # double 0.33131500000000003
	.quad	0x3fd22a0232096788              # double 0.28381400000000001
	.quad	0x3fb7f4cb1897a67a              # double 0.093578999999999995
	.quad	0x3fd0f28c79f66623              # double 0.26480399999999998
	.quad	0x3fbc1eff9f87f024              # double 0.109848
	.quad	0x3fedf861a60d4563              # double 0.93657000000000001
	.quad	0x3feef43a647fdc59              # double 0.96731299999999997
	.quad	0x3fb7c3e74afd5454              # double 0.092832999999999999
	.quad	0x3fa6032db1e9f278              # double 0.042993000000000003
	.quad	0x3f7c33721d53cddd              # double 0.0068849999999999996
	.quad	0x3fc94b167ec7863c              # double 0.197604
	.quad	0x3fd71351159c4977              # double 0.36055399999999999
	.quad	0x3fea69a2c669057d              # double 0.82539499999999999
	.quad	0x3fe8ad44dca8e2e3              # double 0.77115100000000003
	.quad	0x3fd66177ea1c68ec              # double 0.34969899999999998
	.quad	0x3feb03b3e9a6f827              # double 0.84420200000000001
	.quad	0x3fef071c53f39d1b              # double 0.96961799999999997
	.quad	0x3f9e5d5b24e9c454              # double 0.029652999999999999
	.quad	0x3fe81934efcbd556              # double 0.753077
	.quad	0x3feb45e6ff7dfa01              # double 0.85228300000000001
	.quad	0x3feeb3acd5b6805a              # double 0.95943299999999998
	.quad	0x3fdf12231832fcad              # double 0.48548200000000002
	.quad	0x3fbfc829cfdd2285              # double 0.12414799999999999
	.quad	0x3fed9a459103c8e2              # double 0.92508199999999996
	.quad	0x3fe67b45f17bd8be              # double 0.70254799999999995
	.quad	0x3fee66a337a80cfa              # double 0.95002900000000001
	.quad	0x3fc4b295e9e1b08a              # double 0.16170000000000001
	.quad	0x3feacad362e90364              # double 0.83725899999999997
	.quad	0x3fe03eb7cbb3c819              # double 0.507656
	.quad	0x3fee7fd60e94ee39              # double 0.95310499999999998
	.quad	0x3fee9aa1d755bccb              # double 0.956376
	.quad	0x3fe68ee286727568              # double 0.70494199999999996
	.quad	0x3fc56534373f316e              # double 0.16715099999999999
	.quad	0x3fe0691212513b5c              # double 0.512826
	.quad	0x3fcb9695d91ab8e9              # double 0.215533
	.quad	0x3feb0ad8a116659d              # double 0.84507399999999999
	.quad	0x3fed9db65ecc3e32              # double 0.92550200000000005
	.quad	0x3fe78abb44e50c5f              # double 0.73568500000000003
	.quad	0x3fda7136a400fba9              # double 0.41316000000000003
	.quad	0x3fed235935fc3b4f              # double 0.91056499999999996
	.quad	0x3fc46d4801f75105              # double 0.159585
	.quad	0x3fefa1272c94b381              # double 0.98842200000000002
	.quad	0x3fd92934acaff6d3              # double 0.39313999999999999
	.quad	0x3f74f9c1f85d744f              # double 0.0051209999999999997
	.quad	0x3fe8e40a6b93ccd1              # double 0.777837
	.quad	0x3fea51e75360d024              # double 0.82249799999999995
	.quad	0x3fe9c449dbec2481              # double 0.80521100000000001
	.quad	0x3fefa94573a79789              # double 0.98941299999999998
	.quad	0x3fe221bc126a65cf              # double 0.56661799999999996
	.quad	0x3fd72aa19439de48              # double 0.36197699999999999
	.quad	0x3f9bd0e12e83a10a              # double 0.027164000000000001
	.quad	0x3feee9835158b828              # double 0.966005
	.quad	0x3fe8090d5a5b9629              # double 0.75110500000000002
	.quad	0x3fe14e3ffef39086              # double 0.540802
	.quad	0x3fe7e9014b599aa6              # double 0.747193
	.quad	0x3fe7ba42f1ed17c6              # double 0.74148700000000001
	.quad	0x3fdc70c564f97edc              # double 0.44438299999999997
	.quad	0x3fe9f2b884406c01              # double 0.81087900000000002
	.quad	0x3fd09c2c1b10fd7e              # double 0.25953199999999998
	.quad	0x3fe1191dde37585c              # double 0.53431600000000001
	.quad	0x3fe29ed5ae1cde5d              # double 0.58188899999999999
	.quad	0x3fec647778dd6170              # double 0.88726400000000005
	.quad	0x3fdbd3458cd20afa              # double 0.43476999999999999
	.quad	0x3fcc0713f077ccc0              # double 0.21896599999999999
	.quad	0x3feb68d5410f94c8              # double 0.85654699999999995
	.quad	0x3feace6e221c8a7a              # double 0.83769899999999997
	.quad	0x3fda56b00ffda405              # double 0.41154099999999999
	.quad	0x3fe99882adc4c9c9              # double 0.79986699999999999
	.quad	0x3fd2e3b8a19c9d5a              # double 0.29514899999999999
	.quad	0x3fe37151e75360d0              # double 0.60758299999999998
	.quad	0x3fba44523f67f4dc              # double 0.102605
	.quad	0x3fee3c36113404ea              # double 0.94484999999999997
	.quad	0x3fd22b302f72b453              # double 0.28388600000000003
	.quad	0x3fe72027525460aa              # double 0.72267499999999996
	.quad	0x3fbfbd05af6c69b6              # double 0.123978
	.quad	0x3fd796f6512a94ff              # double 0.368589
	.quad	0x3fc290eed02cd39e              # double 0.14504800000000001
	.quad	0x3fe97bdcf0307f24              # double 0.79637000000000002
	.quad	0x3fd1e0e736049ecb              # double 0.27935199999999999
	.quad	0x3fe0422ab25b317f              # double 0.508077
	.quad	0x3f97f1737542a23c              # double 0.023382
	.quad	0x3fed2db8348f53c5              # double 0.91183099999999995
	.quad	0x3fc87735c182ecaf              # double 0.191138
	.quad	0x3fe4bb23571d1d47              # double 0.64784399999999998
	.quad	0x3fe315a4acf312b2              # double 0.59639200000000003
	.quad	0x3fe0b40b34e7685a              # double 0.52197800000000005
	.quad	0x3fe8f00474d9c6b0              # double 0.77929899999999996
	.quad	0x3fda7ce52deca255              # double 0.41387299999999999
	.quad	0x3fd9fdb4cc250721              # double 0.40611000000000003
	.quad	0x3fbe060fe47991bc              # double 0.11728
	.quad	0x3fe03bf727136a40              # double 0.50731999999999999
	.quad	0x3fbf71da37ef5a96              # double 0.122831
	.quad	0x3fe1595dd4c76d11              # double 0.54215899999999995
	.quad	0x3fe8521ff2e48e8a              # double 0.76002499999999995
	.quad	0x3feecbe61cffeb07              # double 0.96238999999999996
	.quad	0x3fed620ccff21b3b              # double 0.91821900000000001
	.quad	0x3fc2d844d013a92a              # double 0.14722499999999999
	.quad	0x3feaebe7afa72218              # double 0.84129699999999996
	.quad	0x3fd01f2990f301eb              # double 0.25190200000000001
	.quad	0x3fe312ee84ad794a              # double 0.59606099999999995
	.quad	0x3fbbadc0980b2420              # double 0.10811999999999999
	.quad	0x3fe1683e425aee63              # double 0.54397499999999999
	.quad	0x3fbb12a0ec743201              # double 0.105753
	.quad	0x3fe3f4fb549f9485              # double 0.62365499999999996
	.quad	0x3fe5fd73c9257860              # double 0.68718900000000005
	.quad	0x3fe977c243dccea3              # double 0.79586900000000005
	.quad	0x3fee7995ee136e72              # double 0.95234200000000002
	.quad	0x3fd2f8db4890928a              # double 0.29643900000000001
	.quad	0x3fc756084a515cea              # double 0.182313
	.quad	0x3fd4ac03ff69014b              # double 0.32299899999999998
	.quad	0x3fe67969e3c96894              # double 0.70232099999999997
	.quad	0x3fbc51654d61b2a2              # double 0.11061699999999999
	.quad	0x3fe7324c8366516e              # double 0.72489000000000003
	.quad	0x3fe02aa19439de48              # double 0.50520399999999999
	.quad	0x3fba1d6494d50ebb              # double 0.102011
	.quad	0x3fdab6523704790c              # double 0.41737800000000003
	.quad	0x3fe5037b4a2339c1              # double 0.65667500000000001
	.quad	0x3fddea0ba1f4b1ee              # double 0.46740999999999999
	.quad	0x3fe7712c27a63737              # double 0.73256500000000002
	.quad	0x3fd6a72a7bd48cb5              # double 0.35395300000000002
	.quad	0x3fa76102795703f3              # double 0.045662000000000001
	.quad	0x3fcd9d3cbc48f10b              # double 0.23136100000000001
	.quad	0x3fc882c6ef3d3a1d              # double 0.19149099999999999
	.quad	0x3fe958e219652bd4              # double 0.79210000000000002
	.quad	0x3fe601733226c3b9              # double 0.68767699999999998
	.quad	0x3fe709aaa3ad18d2              # double 0.71992999999999996
	.quad	0x3fe43b5393250b52              # double 0.63224199999999997
	.quad	0x3fed0a02b841248d              # double 0.90747199999999995
	.quad	0x3fe44b09e98dcdb3              # double 0.63415999999999995
	.quad	0x3fd5d2fa0d77b7c8              # double 0.34100200000000003
	.quad	0x3fc9adb8348f53c5              # double 0.20061399999999999
	.quad	0x3fe58d6909aed56b              # double 0.673512
	.quad	0x3fe9ed2aa5c5f7c6              # double 0.81020099999999995
	.quad	0x3fef4b76f6d76252              # double 0.977962
	.quad	0x3fd3333333333333              # double 0.29999999999999999
	.quad	0x3feb2d59d55e6bc6              # double 0.84928599999999999
	.quad	0x3fe8cce5f7403dde              # double 0.77501200000000003
	.quad	0x3fd2e043a2163fdd              # double 0.29493799999999998
	.quad	0x3fe39e01de269164              # double 0.61303799999999997
	.quad	0x3feb88bb906466b2              # double 0.86044100000000001
	.quad	0x3fe8cdd50a88effe              # double 0.77512599999999998
	.quad	0x3fe74a36199780bb              # double 0.72780900000000004
	.quad	0x3fe280f55de58e65              # double 0.57824200000000003
	.quad	0x3fe132d905c03361              # double 0.53745699999999996
	.quad	0x3fe5dfb506dd69d3              # double 0.683558
	.quad	0x3fee6fc58ab92c06              # double 0.95114399999999999
	.quad	0x3fe8a75ee99a62ed              # double 0.77043099999999998
	.quad	0x3fe061cde5d18091              # double 0.51193900000000003
	.quad	0x3fe7d976ff3ade22              # double 0.74529599999999996
	.quad	0x3fcd7ac3eb7cbb3d              # double 0.23030900000000001
	.quad	0x3fe2e6c6de76427c              # double 0.59067099999999995
	.quad	0x3fe26568a50507a7              # double 0.57487900000000003
	.quad	0x3fec71044f1a1987              # double 0.88879600000000003
	.quad	0x3fc2c1f42bb66730              # double 0.14654400000000001
	.quad	0x3fca2c343b70ef56              # double 0.20447399999999999
	.quad	0x3fe8daec4a4095f2              # double 0.77672399999999997
	.quad	0x3f80ac3a860dcb9b              # double 0.0081410000000000006
	.quad	0x3fc1ad18d25edd05              # double 0.138095
	.quad	0x3fe4c26138fffbce              # double 0.64872799999999997
	.quad	0x3fcdcc2938de6ddf              # double 0.232793
	.quad	0x3fd395cc857f3062              # double 0.30601800000000001
	.quad	0x3fada4f00ef1348b              # double 0.057898999999999999
	.quad	0x3fdacb5bb384fd2a              # double 0.41866199999999998
	.quad	0x3fea6542e557de0d              # double 0.82486099999999996
	.quad	0x3fdd6c3760bf5d79              # double 0.45973000000000003
	.quad	0x3fc66822ff08893b              # double 0.17505299999999999
	.quad	0x3fe18a63305100a4              # double 0.54814300000000005
	.quad	0x3fe8fe0ef99806f2              # double 0.78101299999999996
	.quad	0x3fccfb549f94855e              # double 0.22642000000000001
	.quad	0x3fed93a4f8726d05              # double 0.92427300000000001
	.quad	0x3fd87bd8be7296f6              # double 0.38255899999999998
	.quad	0x3fe1ffb69984a0e4              # double 0.56246499999999999
	.quad	0x3fee8620ab713272              # double 0.95387299999999997
	.quad	0x3fc7d145d851654d              # double 0.18607399999999999
	.quad	0x3feca10e02214270              # double 0.89466000000000001
	.quad	0x3fbfdf3b645a1cac              # double 0.1245
	.quad	0x3fd65e2478854cdb              # double 0.34949599999999997
	.quad	0x3fef744b2b777d0f              # double 0.98294599999999998
	.quad	0x3fea379fa97e132b              # double 0.81928999999999996
	.quad	0x3fc83422467be554              # double 0.18909100000000001
	.quad	0x3fe37138bcdfefbf              # double 0.60757099999999997
	.quad	0x3feec36113404ea5              # double 0.96135000000000003
	.quad	0x3feebd48cb4aec8d              # double 0.96060599999999995
	.quad	0x3fed72cd7cf5f4e4              # double 0.92026399999999997
	.quad	0x3fdd400fba8826ab              # double 0.45703500000000002
	.quad	0x3fee1680e0653006              # double 0.94024700000000005
	.quad	0x3fe999999999999a              # double 0.80000000000000004
	.quad	0x3fea8cbf2b239a39              # double 0.829681
	.quad	0x3fe890342aa9f7b6              # double 0.76760300000000004
	.quad	0x3fe3848387df5cf2              # double 0.60992599999999997
	.quad	0x3fcb26527a20578e              # double 0.21210699999999999
	.quad	0x3feb6215336deb96              # double 0.85572300000000001
	.quad	0x3fdc2bcb5fe542e5              # double 0.44017299999999998
	.quad	0x3fb4dc443914f484              # double 0.081486000000000003
	.quad	0x3fefece358298cc1              # double 0.99766699999999997
	.quad	0x3feea7221858bc5a              # double 0.95790200000000003
	.quad	0x3fa4944ed6fda837              # double 0.040194000000000001
	.quad	0x3fde635e74299d88              # double 0.47481499999999999
	.quad	0x3fc6f6f8f041461b              # double 0.17941199999999999
	.quad	0x3fc9e6bc621b7e0b              # double 0.20235400000000001
	.quad	0x3fd9370cdc8754f3              # double 0.39398499999999997
	.quad	0x3fe17d77fae3608d              # double 0.546566
	.quad	0x3fe212f4cf4a558f              # double 0.56481400000000004
	.quad	0x3fa845baf533f423              # double 0.047406999999999998
	.quad	0x3fdb7b24638c9753              # double 0.42939100000000002
	.quad	0x3fecf57928e0c9da              # double 0.90496500000000002
	.quad	0x3feb49731098d478              # double 0.85271600000000003
	.quad	0x3fd08ed1bf7ad4b2              # double 0.25871699999999997
	.quad	0x3fc053fc0096feb5              # double 0.12756300000000001
	.quad	0x3fe881d19157abb9              # double 0.76584700000000006
	.quad	0x3feb33c1ce6c093e              # double 0.85006800000000005
	.quad	0x3fb55d5f56a7ac82              # double 0.083456000000000002
	.quad	0x3fe87442c7fbacb4              # double 0.76419199999999998
	.quad	0x3fc9724fa8b4bf90              # double 0.19880100000000001
	.quad	0x3fdb26634117f844              # double 0.42421799999999998
	.quad	0x3fc44f8726d04e62              # double 0.15867700000000001
	.quad	0x3fe85ce5b4245f5b              # double 0.76134000000000002
	.quad	0x3fb5b8130164840e              # double 0.084839999999999998
	.quad	0x3fd050374ff865d8              # double 0.25489600000000001
	.quad	0x3fe7824f6598e10d              # double 0.734657
	.quad	0x3fece290eed02cd4              # double 0.90265700000000004
	.quad	0x3fd8382a12f90108              # double 0.37842799999999999
	.quad	0x3fe0a8ed5f138bce              # double 0.520621
	.quad	0x3fd486a4ca4f440b              # double 0.320718
	.quad	0x3fe14be61cffeb07              # double 0.54051499999999997
	.quad	0x3fdf26aec0724b77              # double 0.486736
	.quad	0x3fe5b1769a91105e              # double 0.67791299999999999
	.quad	0x3fc858bc59b8023a              # double 0.19020799999999999
	.quad	0x3fad490e66cb1034              # double 0.057197999999999999
	.quad	0x3fce7cfa26a22b39              # double 0.23818900000000001
	.quad	0x3fe6ea337a80cf9e              # double 0.71608899999999998
	.quad	0x3fe42732df505d10              # double 0.62978500000000004
	.quad	0x3fe1e0daa0cae643              # double 0.55869800000000003
	.quad	0x3fe52949a5657fb7              # double 0.66129000000000004
	.quad	0x3fd778359bc33f85              # double 0.36671199999999998
	.quad	0x3fb3f01322f27350              # double 0.077882000000000006
	.quad	0x3feaf78140dd3fe2              # double 0.84271300000000005
	.quad	0x3fb8eef1bac2df0d              # double 0.097395999999999996
	.quad	0x3fe67e260b2c83ed              # double 0.70289900000000005
	.quad	0x3fe410abb44e50c6              # double 0.62703500000000001
	.quad	0x3feaa88ace24bba1              # double 0.83307399999999998
	.quad	0x3fd624f227d028a2              # double 0.34600500000000001
	.quad	0x3fdd1754b05b7cfe              # double 0.45454899999999998
	.quad	0x3fce1733226c3b92              # double 0.23508299999999999
	.quad	0x3fc21ef73c0c1fc9              # double 0.14157
	.quad	0x3fa943393ab430f5              # double 0.049341000000000003
	.quad	0x3fe3eec9e236c15d              # double 0.62289899999999998
	.quad	0x3fe065625a682b63              # double 0.51237600000000005
	.quad	0x3fe021db877ab325              # double 0.50413300000000005
	.quad	0x3fdf0fcb4f1e4b45              # double 0.48533900000000002
	.quad	0x3fef9aa3f034b0e2              # double 0.98762700000000003
	.quad	0x3feeb2f661f18ca0              # double 0.95934600000000003
	.quad	0x3fd323af31b152f4              # double 0.29905300000000001
	.quad	0x3fedfd75e2046c76              # double 0.93718999999999997
	.quad	0x3fe5a1554fbdad75              # double 0.67594399999999999
	.quad	0x3fecbda0dfdef848              # double 0.89814799999999995
	.quad	0x3fdb4284dfce3151              # double 0.42593500000000001
	.quad	0x3fe9b9085f4a1273              # double 0.80383700000000002
	.quad	0x3fcf4eebf65dbfcf              # double 0.24459600000000001
	.quad	0x3febcaa53fc00970              # double 0.86848700000000001
	.quad	0x3fa5a038194c0160              # double 0.042237999999999998
	.quad	0x3fedefeb4a66559f              # double 0.93553699999999995
	.quad	0x3fc63cb81733226c              # double 0.17372799999999999
	.quad	0x3fcdc792d1287c20              # double 0.232653
	.quad	0x3fe68e3ef284167b              # double 0.70486400000000005
	.quad	0x3fd0a4a05dd8f92b              # double 0.260048
	.quad	0x3fdf7f455a7d2418              # double 0.492143
	.quad	0x3fd50767d34df04e              # double 0.32857700000000001
	.quad	0x3feeaec28b2a6b0e              # double 0.95883300000000005
	.quad	0x3fa3a775fb2edfe7              # double 0.038386999999999998
	.quad	0x3fed6db940fecdd1              # double 0.91964400000000002
	.quad	0x3fe96da4484944ed              # double 0.79463399999999995
	.quad	0x3fe4f13cee9dd7ed              # double 0.65444800000000003
	.quad	0x3fe8335d249e44fa              # double 0.75627
	.quad	0x3fe895336deb95e6              # double 0.76821300000000003
	.quad	0x3f6d6494d50ebaae              # double 0.003588
	.quad	0x3fe744dca8e2e2b9              # double 0.72715600000000002
	.quad	0x3feefb65668c2614              # double 0.96818800000000004
	.quad	0x3fe8bd944aa53fc0              # double 0.773142
	.quad	0x3fe8441fea8112ba              # double 0.75831599999999999
	.quad	0x3fe0646ae3a3a8e7              # double 0.51225799999999999
	.quad	0x3fac4f5d35653c9b              # double 0.055293000000000002
	.quad	0x3fe7855da272862f              # double 0.73502999999999996
	.quad	0x3fdd1a4bdba0a527              # double 0.45473000000000002
	.quad	0x3fb7008a697aeddd              # double 0.089852000000000001
	.quad	0x3fec1f926c7eae5c              # double 0.87885400000000002
	.quad	0x3fc5e6149c6f36f0              # double 0.17108400000000001
	.quad	0x3feaf939a7c17a89              # double 0.84292299999999998
	.quad	0x3fbd90d173fb7a5f              # double 0.115491
	.quad	0x3fef47ef177a7009              # double 0.97753100000000003
	.quad	0x3fa820e6299524c0              # double 0.047126000000000001
	.quad	0x3fee887442c7fbad              # double 0.95415700000000003
	.quad	0x3fe562aa19439de5              # double 0.66829400000000005
	.quad	0x3fc68ec52a411c2a              # double 0.176232
	.quad	0x3fbe964e8b7e4de4              # double 0.119481
	.quad	0x3fe9a2d0e5604189              # double 0.80112499999999998
	.quad	0x3feb4d5b6805a2d7              # double 0.85319299999999998
	.quad	0x3fcc6dce39b456b4              # double 0.22210099999999999
	.quad	0x3fdec6e2a80064aa              # double 0.48088900000000001
	.quad	0x3fd68b4395810625              # double 0.35225000000000001
	.quad	0x3feb6cd29131ec0b              # double 0.85703399999999996
	.quad	0x3fd4de8f6cefed63              # double 0.32608399999999998
	.quad	0x3fee6db50f40e5a3              # double 0.95089199999999996
	.quad	0x3fb46c6583e8576d              # double 0.079779000000000003
	.quad	0x3fc0754f3775b813              # double 0.12858
	.quad	0x3fb9bc77143393ab              # double 0.100532
	.quad	0x3fc994c87980f55e              # double 0.199853
	.quad	0x3febbd4f15e7c8d2              # double 0.86685900000000005
	.quad	0x3fdf8ac9f2fdb8fe              # double 0.49284600000000001
	.quad	0x3feede0d66f0cfe1              # double 0.96460599999999996
	.quad	0x3fdb00abf76a2f49              # double 0.42191600000000001
	.quad	0x3fe30639d5e4a383              # double 0.59450999999999998
	.quad	0x3fc302ff8ec0f883              # double 0.14852899999999999
	.quad	0x3fd16102795703f3              # double 0.27154600000000001
	.quad	0x3fe98dd82fd75e20              # double 0.79856499999999996
	.quad	0x3fbc449dbec2480f              # double 0.11042200000000001
	.quad	0x3fe2b93250b5243a              # double 0.58510700000000004
	.quad	0x3fd047735c182ecb              # double 0.254361
	.quad	0x3fda4528283d35eb              # double 0.41047099999999997
	.quad	0x3fe2163fdd65a145              # double 0.56521600000000005
	.quad	0x3fedbabead4f5904              # double 0.92904600000000003
	.quad	0x3fdd682f944241c4              # double 0.459484
	.quad	0x3fe175caf2d7f951              # double 0.54562900000000003
	.quad	0x3fc8a59c065b63d4              # double 0.192554
	.quad	0x3fed1c5e6ff7dfa0              # double 0.90971299999999999
	.quad	0x3fcd61240746455f              # double 0.22952700000000001
	.quad	0x3fdc474538ef34d7              # double 0.44185000000000002
	.quad	0x3fe5e28672756862              # double 0.68390200000000001
	.quad	0x3fdd41a261bf37b9              # double 0.45713100000000001
	.quad	0x3fd8bce4217d284a              # double 0.38652900000000001
	.quad	0x3fe549e44fa05144              # double 0.66527000000000003
	.quad	0x3fe40ea39c51dabe              # double 0.62678699999999998
	.quad	0x3fb07aaef2c73259              # double 0.064371999999999999
	.quad	0x3fc9c9c4da9003ef              # double 0.20147000000000001
	.quad	0x3fc5fc19c17225b7              # double 0.17175599999999999
	.quad	0x3fef3083558a7610              # double 0.97467199999999998
	.quad	0x3fe40431bde82d7b              # double 0.62551199999999996
	.quad	0x3fe362ed352220bc              # double 0.60582599999999998
	.quad	0x3fb0947064ece9a3              # double 0.064765000000000003
	.quad	0x3fe7368ad6883772              # double 0.72540800000000005
	.quad	0x3fd526e115592d99              # double 0.33049800000000001
	.quad	0x3fd5651b0ccbc05d              # double 0.33429599999999998
	.quad	0x3fdf54f3775b8130              # double 0.48956
	.quad	0x3fb86a3bddfc9ff9              # double 0.095370999999999997
	.quad	0x3fd98140dd3fe197              # double 0.39851399999999998
	.quad	0x3fecd610adcd2d45              # double 0.90113100000000002
	.quad	0x3fdfba1f4b1ee243              # double 0.49573499999999998
	.quad	0x3feb9b23dd54da4d              # double 0.86268800000000001
	.quad	0x3fe0332f01754b06              # double 0.50624800000000003
	.quad	0x3fe6508b32ce8965              # double 0.69733199999999995
	.quad	0x3fef16b3354c1227              # double 0.97152099999999996
	.quad	0x3fd5fa5093964a5a              # double 0.34340300000000001
	.quad	0x3fd1c49774256bca              # double 0.27762399999999998
	.quad	0x3f91b54195cc857f              # double 0.017292999999999999
	.quad	0x3fb49d0635a426bb              # double 0.080520999999999995
	.quad	0x3fd0950331e3a7db              # double 0.25909500000000002
	.quad	0x3fe18fa15db3397e              # double 0.54878300000000002
	.quad	0x3fac0bfe3b03e20d              # double 0.054779000000000001
	.quad	0x3fe6f944241c3efb              # double 0.71792800000000001
	.quad	0x3fef9f9acffa7eb7              # double 0.98823300000000002
	.quad	0x3fed7c3f811f4f51              # double 0.92141700000000004
	.quad	0x3fe89a500d5e8d54              # double 0.76883699999999999
	.quad	0x3fe64e831ad2135e              # double 0.69708400000000004
	.quad	0x3fef4e0114d2f5dc              # double 0.97827200000000003
	.quad	0x3feba7bb2fec56d6              # double 0.86422500000000002
	.quad	0x3fed4e7ab7564303              # double 0.91583000000000003
	.quad	0x3fd1e939eadd590c              # double 0.27986
	.quad	0x3fe604c8bc9cd3e1              # double 0.68808400000000003
	.quad	0x3fe75a35d67ba238              # double 0.72976200000000002
	.quad	0x3f8ffe6d58c8eef2              # double 0.015622
	.quad	0x3fd7c9a34ca0c283              # double 0.37168200000000001
	.quad	0x3fc6fba01eeed890              # double 0.17955399999999999
	.quad	0x3fdd26527a20578e              # double 0.45546399999999998
	.quad	0x3fc1461b6d43d039              # double 0.13495199999999999
	.quad	0x3fd81f75104d551d              # double 0.37691999999999998
	.quad	0x3fd02a90cd423d92              # double 0.25259799999999999
	.quad	0x3faaba16e7a311e8              # double 0.052200999999999997
	.quad	0x3fef84cad57bc7f7              # double 0.98495999999999994
	.quad	0x3fe97bc3c5bd0e13              # double 0.79635800000000001
	.quad	0x3fe09ff2e48e8a72              # double 0.51952500000000001
	.quad	0x3feac92ff4ba51a0              # double 0.83705899999999999
	.quad	0x3fd2e5321e603d57              # double 0.29523899999999997
	.quad	0x3f80da5daf07bfe8              # double 0.0082290000000000002
	.quad	0x3fe853da72a7bd49              # double 0.76023600000000002
	.quad	0x3fe2358f2e05ccc9              # double 0.56903800000000004
	.quad	0x3fe9d9a95421c044              # double 0.80781999999999998
	.quad	0x3fd810a99b6f5caf              # double 0.37601699999999999
	.quad	0x3fbb4f722e1ac57e              # double 0.106681
	.quad	0x3fe3d909f1f14984              # double 0.62024400000000002
	.quad	0x3fb5dc93ea2d2fe4              # double 0.085397000000000001
	.quad	0x3fe849752977c88e              # double 0.75896699999999995
	.quad	0x3fe9c58255b035bd              # double 0.80535999999999996
	.quad	0x3fd3ada33bd9cae2              # double 0.307473
	.quad	0x3fe57ae147ae147b              # double 0.67125000000000001
	.quad	0x3fd0232d2bb23572              # double 0.25214700000000001
	.quad	0x3fe3b163baba7b91              # double 0.61540399999999995
	.quad	0x3fe889635610adcd              # double 0.76677099999999998
	.quad	0x3fee5e99e94ab1d5              # double 0.949048
	.quad	0x3fdd3d0bfa0945fa              # double 0.45685100000000001
	.quad	0x3fe94d37c1376d55              # double 0.79067600000000005
	.quad	0x3fe1ae9680e06530              # double 0.552562
	.quad	0x3fe29d66adb402d1              # double 0.58171399999999995
	.quad	0x3fe25c8fb86f47b6              # double 0.57379899999999995
	.quad	0x3fed91ec918e325d              # double 0.92406299999999997
	.quad	0x3fdfb9ae0c176577              # double 0.49570799999999998
	.quad	0x3fd324af0bf1a5ca              # double 0.29911399999999999
	.quad	0x3fb668c26138fffc              # double 0.087536000000000003
	.quad	0x3fda4e2b063e07a3              # double 0.41102100000000003
	.quad	0x3fee15ce9e5e2479              # double 0.94016200000000005
	.quad	0x3fd394812be48a59              # double 0.30593900000000002
	.quad	0x3fec12a305532618              # double 0.87727500000000003
	.quad	0x3fc456de33269df9              # double 0.15890099999999999
	.quad	0x3fcd6d2aa5c5f7c6              # double 0.22989399999999999
	.quad	0x3fd707c84b5dcc64              # double 0.35985
	.quad	0x3fe6cf15e7c8d196              # double 0.71277900000000005
	.quad	0x3fe782491afc04c9              # double 0.73465400000000003
	.quad	0x3fea2027525460aa              # double 0.81642499999999996
	.quad	0x3fad2bf5515054ac              # double 0.056975999999999999
	.quad	0x3fe001cb46bacf74              # double 0.50021899999999997
	.quad	0x3fee714983d79075              # double 0.95132899999999998
	.quad	0x3feae18266772d5e              # double 0.840028
	.quad	0x3fd43cb3e5753a3f              # double 0.31620500000000001
	.quad	0x3fe57d955714b9cb              # double 0.67157999999999995
	.quad	0x3feff00474d9c6b0              # double 0.99804899999999996
	.quad	0x3fe6b736cdf266ba              # double 0.70986499999999997
	.quad	0x3fe55c8b86b15f89              # double 0.667547
	.quad	0x3fe814877681669d              # double 0.75250600000000001
	.quad	0x3fed69d7342edbb6              # double 0.91917000000000004
	.quad	0x3fc1ff7164c729f6              # double 0.14060800000000001
	.quad	0x3fe0023854046413              # double 0.50027100000000002
	.quad	0x3fd9f090f733a8a4              # double 0.405308
	.quad	0x3fc3441355475a32              # double 0.15051500000000001
	.quad	0x3fe2c8216c61522a              # double 0.58692999999999995
	.quad	0x3fd64a98aa8650e7              # double 0.34830299999999997
	.quad	0x3fef794ea077036d              # double 0.98355800000000004
	.quad	0x3fc3c054ef459d99              # double 0.154307
	.quad	0x3fde327aa68f4b62              # double 0.471831
	.quad	0x3fef88919ef954eb              # double 0.98542099999999999
	.quad	0x3fe1bfcc9ea9a3d3              # double 0.55466300000000002
	.quad	0x3fefa2d2fe3f35a0              # double 0.988626
	.quad	0x3fdf1c6d1e108c3f              # double 0.48610999999999999
	.quad	0x3fc22435696e58a3              # double 0.14172999999999999
	.quad	0x3fd58e4b87bdcf03              # double 0.33681
	.quad	0x3fe9ed2ed783dff4              # double 0.810203
	.quad	0x3fc85af6c69b5a64              # double 0.190276
	.quad	0x3fcef4c6e6d9be4d              # double 0.241845
	.quad	0x3fd7f3ba775fb2ee              # double 0.374251
	.quad	0x3fb35104d551d68c              # double 0.075454999999999994
	.quad	0x3fe6469f8c21e1d2              # double 0.69612099999999999
	.quad	0x3fd84a1ad6451b93              # double 0.379523
	.quad	0x3fea9fa333764f12              # double 0.83198700000000003
	.quad	0x3fee2a0ec7432010              # double 0.94263399999999997
	.quad	0x3fc0aa9717df19d6              # double 0.13020599999999999
	.quad	0x3fc001de26916441              # double 0.125057
	.quad	0x3fd643137b07075b              # double 0.34784399999999999
	.quad	0x3fb9511dffc5479d              # double 0.098893999999999996
	.quad	0x3fe2058bc59b8024              # double 0.56317700000000004
	.quad	0x3fdb737da61e0c5b              # double 0.42892400000000003
	.quad	0x3fea2a79bbadc098              # double 0.817685
	.quad	0x3fb168b5cbff4773              # double 0.068003999999999995
	.quad	0x3fdc324851a86940              # double 0.44056899999999999
	.quad	0x3fe496a26e547171              # double 0.64338799999999996
	.quad	0x3fdcc36113404ea5              # double 0.44942500000000002
	.quad	0x3fe81374bc6a7efa              # double 0.75237500000000002
	.quad	0x3fe79991361dc93f              # double 0.73749600000000004
	.quad	0x3fd5face67d77fae              # double 0.34343299999999999
	.quad	0x3fe741d29dc725c4              # double 0.72678500000000001
	.quad	0x3fea34dad31fcd25              # double 0.81895200000000001
	.quad	0x3fd4e68a0d349be9              # double 0.326571
	.quad	0x3fe492f4cf4a558f              # double 0.64293900000000004
	.quad	0x3fc7e050374ff866              # double 0.186533
	.quad	0x3fdd2e275ab7dc7b              # double 0.45594200000000001
	.quad	0x3fef6dfe75bc44bf              # double 0.98217699999999996
	.quad	0x3fe40950763a1901              # double 0.62613700000000005
	.quad	0x3fc1a6d698fe6927              # double 0.137904
	.quad	0x3fb2d17c5ef62f9d              # double 0.073509000000000005
	.quad	0x3fbe0791c4b90215              # double 0.117303
	.quad	0x3feb856605ee568a              # double 0.86003399999999997
	.quad	0x3fea5438d1d8a548              # double 0.82278099999999998
	.quad	0x3feef6f8f041461b              # double 0.96764799999999995
	.quad	0x3fd55cc426351def              # double 0.333787
	.quad	0x3fa7fcfc3f811f4f              # double 0.046851999999999998
	.quad	0x3fdd675147f13059              # double 0.45943099999999998
	.quad	0x3fdb243dccea28fe              # double 0.42408699999999999
	.quad	0x3fdd0b0af5fd47bf              # double 0.45379900000000001
	.quad	0x3fe6f8f47304039b              # double 0.71789000000000003
	.quad	0x3fd8daa4fca42aed              # double 0.388345
	.quad	0x3fb61f3a57eaa2a1              # double 0.086414000000000005
	.quad	0x3fd473eab367a0f9              # double 0.319575
	.quad	0x3fd1d11be6e65387              # double 0.27838800000000002
	.quad	0x3fce8e8a71de69ad              # double 0.23872499999999999
	.quad	0x3fb52f5dbb9cf9a0              # double 0.082753999999999994
	.quad	0x3fda8448cf7caa76              # double 0.41432400000000003
	.quad	0x3fe563eaf6837f7c              # double 0.66844700000000001
	.quad	0x3feb8f9f44d44567              # double 0.86128199999999999
	.quad	0x3fe106466b1e5c0c              # double 0.53201600000000004
	.quad	0x3fdceb18116ebd4d              # double 0.451849
	.quad	0x3fe5be7afa722186              # double 0.67950200000000005
	.quad	0x3fee4ec84f8f8a4c              # double 0.94711699999999998
	.quad	0x3fca7924af0bf1a6              # double 0.20682200000000001
	.quad	0x3fd67585be1a8262              # double 0.35092299999999998
	.quad	0x3fd8d1526d8b1dd6              # double 0.38777600000000001
	.quad	0x3f8a92a305532618              # double 0.012975
	.quad	0x3fba89656eefa1e4              # double 0.103659
	.quad	0x3fcff93ff25e56cd              # double 0.24979399999999999
	.quad	0x3fe65db3397dd00f              # double 0.69893799999999995
	.quad	0x3fe8c8216c61522a              # double 0.77442999999999995
	.quad	0x3fb2221c8a7a41e5              # double 0.070832999999999993
	.quad	0x3fe70aa64c2f837b              # double 0.72004999999999997
	.quad	0x3fe1d9bc33f85511              # double 0.55782900000000002
	.quad	0x3fd8bb0e5e679464              # double 0.38641700000000001
	.quad	0x3fedcf2f123c42a6              # double 0.93154099999999995
	.quad	0x3fe897aaac1094a3              # double 0.76851400000000003
	.quad	0x3fe8fda836eb4e98              # double 0.78096399999999999
	.quad	0x3febb4d056c508b3              # double 0.86582199999999998
	.quad	0x3fe2f48c2e770bd0              # double 0.59235199999999999
	.quad	0x3fd00635a426bb56              # double 0.25037900000000002
	.quad	0x3fedf3882278d0cc              # double 0.93597799999999997
	.quad	0x3fd8cedd48451330              # double 0.38762600000000003
	.quad	0x3fe77e0ce0b912dc              # double 0.73413700000000004
	.quad	0x3feeb430f49491f3              # double 0.95949600000000001
	.quad	0x3fe1ce95faa8a82a              # double 0.55646799999999996
	.quad	0x3fddf83382e44b6f              # double 0.46827400000000002
	.quad	0x3fe2e4217d2849cb              # double 0.59034799999999998
	.quad	0x3fa341e14bdfd263              # double 0.037612
	.quad	0x3feff6273929ed39              # double 0.99879799999999996
	.quad	0x3fb1d93c46d82ba6              # double 0.069721000000000005
	.quad	0x3fe500e6afcce1c6              # double 0.65636000000000005
	.quad	0x3fea1695d91ab8e9              # double 0.81525700000000001
	.quad	0x3fd732f01754b05b              # double 0.36248399999999997
	.quad	0x3fb1e7fb267c6b8b              # double 0.069945999999999994
	.quad	0x3f8a75cd0bb6ed67              # double 0.012919999999999999
	.quad	0x3fe123cc8de2ac32              # double 0.53561999999999999
	.quad	0x3fd24e054690de09              # double 0.28601199999999999
	.quad	0x3fdb409e55c0fcb5              # double 0.425819
	.quad	0x3fc09be8ff327aa7              # double 0.12975800000000001
	.quad	0x3fd1efbf401c4fc2              # double 0.28025800000000001
	.quad	0x3fe917fc7607c41a              # double 0.78417800000000004
	.quad	0x3fcd816aceaaf35e              # double 0.23051199999999999
	.quad	0x3fd452c9d16fc9bc              # double 0.31755299999999997
	.quad	0x3fe0b71b8aa00193              # double 0.52235200000000004
	.quad	0x3fd4cfb3311a543f              # double 0.32517699999999999
	.quad	0x3fdb02de00d1b717              # double 0.42204999999999998
	.quad	0x3feb2491afc04c8c              # double 0.84821400000000002
	.quad	0x3faa30db6a1e81cb              # double 0.051153999999999998
	.quad	0x3f9168b5cbff4773              # double 0.017000999999999999
	.quad	0x3fe0cf61672324c8              # double 0.52531499999999998
	.quad	0x3fe0d57de0d66f0d              # double 0.526061
	.quad	0x3fa4a89fc6da4485              # double 0.040349000000000003
	.quad	0x3fbcdee34fc610f1              # double 0.112776
	.quad	0x3fe33ba775fb2ee0              # double 0.60103200000000001
	.quad	0x3fe0ffc9795b35b1              # double 0.53122400000000003
	.quad	0x3fd65fbf83382e45              # double 0.34959400000000002
	.quad	0x3fe5ea9e6eeb7026              # double 0.68489
	.quad	0x3fd9249a133c1ce7              # double 0.39285900000000001
	.quad	0x3fd6c200c0f01fb8              # double 0.35559099999999999
	.quad	0x3fd81044f1a1986c              # double 0.37599300000000002
	.quad	0x3f72ba16e7a311e8              # double 0.0045719999999999997
	.quad	0x3fec1de69ad42c3d              # double 0.87865000000000004
	.quad	0x3fd55996744b2b77              # double 0.33359299999999997
	.quad	0x3fd56a2f48c2e771              # double 0.33460600000000001
	.quad	0x3fc3d9988d2a1f8e              # double 0.15507799999999999
	.quad	0x3fea7c19c17225b7              # double 0.82764899999999997
	.quad	0x3fe9d490e66cb103              # double 0.80719799999999997
	.quad	0x3fe8cbf8fcd67fd4              # double 0.774899
	.quad	0x3fee1d7774aba387              # double 0.94109699999999996
	.quad	0x3fe65e657b84db9c              # double 0.69902299999999995
	.quad	0x3fe83adc0980b242              # double 0.757185
	.quad	0x3fe45a74c09c3ce2              # double 0.636042
	.quad	0x3fd67a398201cd60              # double 0.35121000000000002
	.quad	0x3feb79c4113c6866              # double 0.85861399999999999
	.quad	0x3fcca6223e186983              # double 0.22381999999999999
	.quad	0x3feef6f2a5a469d7              # double 0.96764499999999997
	.quad	0x3fe5c34c1a8ac5c1              # double 0.68008999999999997
	.quad	0x3fcb8aeb80ecfa6a              # double 0.21517700000000001
	.quad	0x3fed2888b545c78a              # double 0.91119799999999995
	.quad	0x3fa1a6b50b0f27bb              # double 0.034474999999999999
	.quad	0x3fdf6b1e5c0b9991              # double 0.49091299999999999
	.quad	0x3fea6e136e71cda3              # double 0.82593700000000003
	.quad	0x3f4a719b4dcebfec              # double 8.0699999999999999E-4
	.quad	0x3fd5a009f623076c              # double 0.337893
	.quad	0x3fcee1b4bb5e0f80              # double 0.24126300000000001
	.quad	0x3fd0c6a3bddfca00              # double 0.26212400000000002
	.quad	0x3fcc3df6db940fed              # double 0.220641
	.quad	0x3fc518e325d4a5df              # double 0.164822
	.quad	0x3fe2446b69db65ed              # double 0.57085200000000003
	.quad	0x3fee6aab042528ae              # double 0.95052099999999995
	.quad	0x3fdd439de481f538              # double 0.45725199999999999
	.quad	0x3fe39287c200c0f0              # double 0.61163699999999999
	.quad	0x3fedd9ea57214f05              # double 0.93285099999999999
	.quad	0x3feb4e24bba12b5e              # double 0.85328899999999996
	.quad	0x3fdf5657fb69984a              # double 0.489645
	.quad	0x3fe3cf2cf95d4e90              # double 0.61904000000000003
	.quad	0x3fe31fc6da448494              # double 0.59762899999999997
	.quad	0x3fedb5f3d7d3910c              # double 0.92846099999999998
	.quad	0x3fecb6199780baa6              # double 0.89722900000000005
	.quad	0x3f51c2a023209678              # double 0.0010839999999999999
	.quad	0x3fe33f141205bc02              # double 0.60145000000000004
	.quad	0x3fc4a5269595feda              # double 0.16128999999999999
	.quad	0x3fe48705425f2021              # double 0.641482
	.quad	0x3fe24e22a2c23748              # double 0.57203800000000005
	.quad	0x3fe85caafbc1acde              # double 0.76131199999999999
	.quad	0x3fda34d26fa3fcca              # double 0.409474
	.quad	0x3fd9777079e59f2c              # double 0.39791500000000002
	.quad	0x3fc86412cf0f9d2c              # double 0.190554
	.quad	0x3febaceaaf35e311              # double 0.86485800000000002
	.quad	0x3fc4669057d1782d              # double 0.15937999999999999
	.quad	0x3fef2f4cf4a558ea              # double 0.97452399999999995
	.quad	0x3fee874c8ffb8b26              # double 0.95401599999999998
	.quad	0x3fd927179bfdf7e8              # double 0.393011
	.quad	0x3fe0ca8e2e2b8c76              # double 0.52472600000000003
	.quad	0x3fd577143393ab43              # double 0.335393
	.quad	0x3fd8e835dedf1e08              # double 0.38917299999999999
	.quad	0x3fd75069a4df47fa              # double 0.36428300000000002
	.quad	0x3fe2bb44e50c5eb3              # double 0.58535999999999999
	.quad	0x3fe2f0da5daf07c0              # double 0.59190100000000001
	.quad	0x3faf2990f301eabc              # double 0.060864000000000001
	.quad	0x3fc79bcba3012168              # double 0.18444199999999999
	.quad	0x3fe8ec0724b76f6d              # double 0.77881199999999995
	.quad	0x3fe0b5c39bcba301              # double 0.52218799999999999
	.quad	0x3fcb4152b0a6fc59              # double 0.21293100000000001
	.quad	0x3feac0895d0b73d2              # double 0.83600300000000005
	.quad	0x3fe74586876e1deb              # double 0.72723700000000002
	.quad	0x3fb5cfaacd9e83e4              # double 0.085199999999999998
	.quad	0x3feb58622c450269              # double 0.85453900000000005
	.quad	0x3febfc3d68405b3a              # double 0.87454100000000001
	.quad	0x3fe84ec636b09635              # double 0.75961599999999996
	.quad	0x3fecd132f87ad081              # double 0.90053700000000003
	.quad	0x3fedb53d640e9d52              # double 0.92837400000000003
	.quad	0x3fef491afc04c8bd              # double 0.97767400000000004
	.quad	0x3fe8daf4adbc664d              # double 0.77672799999999997
	.quad	0x3fd49c66d373affb              # double 0.322046
	.quad	0x3fe0ad362e903644              # double 0.52114400000000005
	.quad	0x3f89e518f3eccc47              # double 0.012644000000000001
	.quad	0x3fba149c6f36ef80              # double 0.101877
	.quad	0x3fde76c050bd87b5              # double 0.47599799999999998
	.quad	0x3fe74226809d4952              # double 0.72682500000000005
	.quad	0x3fc25daf07bfe7e2              # double 0.143484
	.quad	0x3fc0f8055fbb517a              # double 0.13256899999999999
	.quad	0x3f97fe8ee6b8305e              # double 0.023432000000000001
	.quad	0x3fd646994185058e              # double 0.34805900000000001
	.quad	0x3fefa4b9884c6a3c              # double 0.98885800000000001
	.quad	0x3fe7029068986fce              # double 0.71906300000000001
	.quad	0x3fd75ab3aabcd78c              # double 0.36491099999999999
	.quad	0x3fd6d3a604e1e710              # double 0.35666799999999999
	.quad	0x3fa3a365cb35f3d8              # double 0.038356000000000001
	.quad	0x3fa919695d91ab8f              # double 0.049022000000000003
	.quad	0x3fd92d7f950b955f              # double 0.39340199999999997
	.quad	0x3fcfee807bbb6241              # double 0.24946599999999999
	.quad	0x3fe4d5cfaacd9e84              # double 0.65110000000000001
	.quad	0x3fd9a6fc58ab92c0              # double 0.40081699999999998
	.quad	0x3fee3aa9b499d020              # double 0.94466099999999997
	.quad	0x3fd8015c209246bf              # double 0.375083
	.quad	0x3fee337a80cf9e38              # double 0.94378399999999995
	.quad	0x3fd7e4a7b4e54f7b              # double 0.37333100000000002
	.quad	0x3f7802c0a4a05dd9              # double 0.005862
	.quad	0x3fe121a2e7f6f4bf              # double 0.53535600000000005
	.quad	0x3fdf605ee568a505              # double 0.490257
	.quad	0x3fc0c165907d9125              # double 0.13090199999999999
	.quad	0x3feff4080f98fa37              # double 0.99853899999999995
	.quad	0x3feadd2f1a9fbe77              # double 0.83950000000000002
	.quad	0x3fdce92d55a3a084              # double 0.45173200000000002
	.quad	0x3fe1a077036c9c0b              # double 0.55083800000000005
	.quad	0x3fdd6088d6d3b6cc              # double 0.45901700000000001
	.quad	0x3fd99289dadfb507              # double 0.39956900000000001
	.quad	0x3fe0df9bdc69f8c2              # double 0.52729599999999999
	.quad	0x3fd4c0767d34df05              # double 0.32424700000000001
	.quad	0x3fe3a27ae9ab29e5              # double 0.61358400000000002
	.quad	0x3fe11f0c34c1a8ac              # double 0.53503999999999996
	.quad	0x3fed000000000000              # double 0.90625
	.quad	0x3fc43cc8de2ac322              # double 0.158105
	.quad	0x3fe56dc7ef177a70              # double 0.669651
	.quad	0x3fd5bfec13b9f128              # double 0.339839
	.quad	0x3fd7424a276b7ed4              # double 0.36342099999999999
	.quad	0x3fd4eac8605681ed              # double 0.32683000000000001
	.quad	0x3fd12dc6e2a80065              # double 0.26841900000000002
	.quad	0x3fed7735c182ecaf              # double 0.92080200000000001
	.quad	0x3fda771c970f7b9e              # double 0.41352
	.quad	0x3fdd5ab3aabcd78c              # double 0.45866099999999999
	.quad	0x3fe4a06a6e32e382              # double 0.64458199999999999
	.quad	0x3fd4205ff1d81f10              # double 0.31447599999999998
	.quad	0x3fef6931876188b1              # double 0.98159099999999999
	.quad	0x3fe4f1b8aa00192a              # double 0.65450699999999995
	.quad	0x3fc393b3a68b19a4              # double 0.152945
	.quad	0x3fc84649906cca2e              # double 0.18964500000000001
	.quad	0x3fe2e5cf67b1c001              # double 0.59055299999999999
	.quad	0x3fe71ce28ed5f139              # double 0.72227600000000003
	.quad	0x3f919157abb8800f              # double 0.017156000000000001
	.quad	0x3fdd067cf1c3265b              # double 0.45352100000000001
	.quad	0x3fed69d0e991ff71              # double 0.91916699999999996
	.quad	0x3fd4f540895d0b74              # double 0.32746900000000001
	.quad	0x3fe98c1b97353b4b              # double 0.79835299999999998
	.quad	0x3fe230ec31162281              # double 0.56847199999999998
	.quad	0x3fe67fbacb428912              # double 0.70309200000000005
	.quad	0x3f9ecf2064239607              # double 0.030086999999999999
	.quad	0x3fd27325918a009f              # double 0.28827799999999998
	.quad	0x3fd6c5154866a11f              # double 0.35577900000000001
	.quad	0x3fca3ff69014b59a              # double 0.20507700000000001
	.quad	0x3fe7b45069a4df48              # double 0.740761
	.quad	0x3fe3af9873ffac1d              # double 0.61518499999999998
	.quad	0x3fe84c985f06f694              # double 0.75934999999999996
	.quad	0x3fd071a7e3087875              # double 0.25693700000000003
	.quad	0x3fe81b21c475e636              # double 0.75331199999999998
	.quad	0x3fe745bf26f1dc51              # double 0.72726400000000002
	.quad	0x3f8d1fe64f54d1e9              # double 0.014220999999999999
	.quad	0x3fd33bfb58d1526e              # double 0.30053600000000003
	.quad	0x3fc1c74fb549f948              # double 0.13889499999999999
	.quad	0x3fef69e5e2478855              # double 0.98167700000000002
	.quad	0x3fc5fff79c842fa5              # double 0.171874
	.quad	0x3feedebd9018e758              # double 0.96469000000000004
	.quad	0x3fdd3e20ccff21b4              # double 0.45691700000000002
	.quad	0x3fd7f141205bc01a              # double 0.37409999999999999
	.quad	0x3fe2a1ab4b72c519              # double 0.58223499999999995
	.quad	0x3feffbfc6540cc79              # double 0.99951
	.quad	0x3fb69fcf3dc054ef              # double 0.088375999999999996
	.quad	0x3fef1aef6f8f0414              # double 0.97203799999999995
	.quad	0x3fe72231832fcac9              # double 0.72292400000000001
	.quad	0x3fee5f78359bc340              # double 0.94915400000000005
	.quad	0x3f97f9d6f112fd33              # double 0.023414000000000001
	.quad	0x3fe6ff9d6f112fd3              # double 0.71870299999999998
	.quad	0x3fc9a1db877ab325              # double 0.20025200000000001
	.quad	0x3fa8ecfa69be09bb              # double 0.048682999999999997
	.quad	0x3fe840f451761459              # double 0.75792899999999996
	.quad	0x3fe3daf4adbc664d              # double 0.62047799999999997
	.quad	0x3fd3f483cafb3b75              # double 0.31179899999999999
	.quad	0x3fe165c0b9991362              # double 0.54367100000000002
	.quad	0x3fe62b606b7aa25e              # double 0.69279500000000005
	.quad	0x3fe718c197e56473              # double 0.72177199999999997
	.quad	0x3fe99620685553ef              # double 0.79957599999999995
	.quad	0x3fd7fd694ccab3ee              # double 0.37484200000000001
	.quad	0x3fe735f1bef49cf5              # double 0.72533499999999995
	.quad	0x3fc91e96c3fc43b3              # double 0.196246
	.quad	0x3fdbcea6c1a048e0              # double 0.43448799999999999
	.quad	0x3fe81ae0c1765775              # double 0.75328099999999998
	.quad	0x3feca0be51090710              # double 0.89462200000000003
	.quad	0x3feb447c30d306a3              # double 0.85211000000000003
	.quad	0x3fc01f5be5d9e40d              # double 0.12595700000000001
	.quad	0x3fe347b24638c975              # double 0.60250199999999998
	.quad	0x3fad551d68c692f7              # double 0.057290000000000001
	.quad	0x3fee112dba4d6e48              # double 0.93959700000000001
	.quad	0x3fd7e807bbb62414              # double 0.37353700000000001
	.quad	0x3fd5d130df9bdc6a              # double 0.340893
	.quad	0x3fd0c23fab10ba62              # double 0.26185599999999998
	.quad	0x3fdb71de69ad42c4              # double 0.42882500000000001
	.quad	0x3fc12cb641700cd8              # double 0.13417699999999999
	.quad	0x3fe4397785729b28              # double 0.63201499999999999
	.quad	0x3fddcb966be7afa7              # double 0.46555099999999999
	.quad	0x3fe9f1455219a848              # double 0.81070200000000003
	.quad	0x3fe2036eb4e98138              # double 0.56291899999999995
	.quad	0x3fe3884c6a3bddfd              # double 0.61038800000000004
	.quad	0x3fde728e92d55a3a              # double 0.475742
	.quad	0x3fe7874213a0c6b5              # double 0.73526100000000005
	.quad	0x3fa834d26fa3fcca              # double 0.047278000000000001
	.quad	0x3fd2155d5f56a7ad              # double 0.28255400000000003
	.quad	0x3fd0a1d323fee2ca              # double 0.25987700000000002
	.quad	0x3fe99c8eabffcdab              # double 0.80036099999999999
	.quad	0x3fe4603d57796399              # double 0.63674799999999998
	.quad	0x3faa61bf37b8d3f2              # double 0.051527000000000003
	.quad	0x3fdede76427c7c52              # double 0.48232799999999998
	.quad	0x3fc45a89b951c5c5              # double 0.15901299999999999
	.quad	0x3fe96f06b37867f1              # double 0.79480300000000004
	.quad	0x3fec83558a761028              # double 0.89103200000000005
	.quad	0x3fea536f7e3d1cc1              # double 0.822685
	.quad	0x3fe80e5e679463d0              # double 0.75175400000000003
	.quad	0x3fe765c0b9991362              # double 0.73117100000000002
	.quad	0x3fdd7739f340d4dc              # double 0.46040199999999998
	.quad	0x3fef3a9d1f601798              # double 0.97590500000000002
	.quad	0x3fdea4db163baba8              # double 0.47881200000000002
	.quad	0x3fd958b3f63c31df              # double 0.39603899999999997
	.quad	0x3feb897635e7429a              # double 0.86053000000000002
	.quad	0x3fe8a7807789a459              # double 0.77044699999999999
	.quad	0x3fcfb3636f3b213e              # double 0.24766199999999999
	.quad	0x3fd20df15a4acf31              # double 0.28210099999999999
	.quad	0x3fd7621fafc8b008              # double 0.36536400000000002
	.quad	0x3fe6247ecfe9b7bf              # double 0.69195499999999999
	.quad	0x3fe4939c94f69caa              # double 0.64301900000000001
	.quad	0x3fdaf0e4da09cc32              # double 0.42095300000000002
	.quad	0x3feace0b912dba4d              # double 0.83765199999999995
	.quad	0x3fb5fd36f7e3d1cc              # double 0.085894999999999999
	.quad	0x3feed4b8bef8ceb3              # double 0.96346699999999996
	.quad	0x3fda30121682f944              # double 0.40918399999999999
	.quad	0x3fa86162f166e009              # double 0.047618000000000001
	.quad	0x3fd20f88333fc86d              # double 0.282198
	.quad	0x3fd5ba732df505d1              # double 0.339505
	.quad	0x3fda05c03361565c              # double 0.40660099999999999
	.quad	0x3fe6da5fc7e6b3ff              # double 0.71415700000000004
	.quad	0x3fe4512018a43bb4              # double 0.634903
	.quad	0x3fe2b33333333333              # double 0.58437499999999998
	.quad	0x3fdb95e9e1b089a0              # double 0.43102499999999999
	.quad	0x3fea345ae5ffa3ba              # double 0.81889100000000004
	.quad	0x3fde01c92ddbdb5e              # double 0.46885900000000003
	.quad	0x3fb22f7b17ce52df              # double 0.071037000000000003
	.quad	0x3fc988f42fe82518              # double 0.199492
	.quad	0x3fd103e20ccff21b              # double 0.26586199999999999
	.quad	0x3fc9fb7a5f41aef7              # double 0.202987
	.quad	0x3fd79641f644955b              # double 0.36854599999999998
	.quad	0x3fd62f9873ffac1d              # double 0.34665499999999999
	.quad	0x3fca548238540464              # double 0.205704
	.quad	0x3fc01db877ab3248              # double 0.12590699999999999
	.quad	0x3fec3a2595bbbe88              # double 0.88209800000000005
	.quad	0x3fb5f2778140dd40              # double 0.085731000000000002
	.quad	0x3fdf7928e0c9d9d3              # double 0.49176999999999998
	.quad	0x3fa93d5347a5b0ff              # double 0.049296
	.quad	0x3fe12398201cd5fa              # double 0.53559500000000004
	.quad	0x3fd9613d31b9b670              # double 0.39656000000000002
	.quad	0x3fd0a3f034b0e1b5              # double 0.26000600000000001
	.quad	0x3fb2cd5b6805a2d7              # double 0.073445999999999997
	.quad	0x3fd5bd1aa821f299              # double 0.339667
	.quad	0x3fe0bc925785f8d3              # double 0.52301900000000001
	.quad	0x3fe145c13fd0d068              # double 0.53976500000000005
	.quad	0x3feec51fc4c16590              # double 0.96156299999999995
	.quad	0x3fc1b738e6d15ad1              # double 0.138404
	.quad	0x3f918e325d4a5df2              # double 0.017144
	.quad	0x3fe7fbc5de9c022a              # double 0.74948400000000004
	.quad	0x3fce7aa68f4b61fe              # double 0.238118
	.quad	0x3fd24851a8694035              # double 0.28566399999999997
	.quad	0x3fe1cd9a52263d81              # double 0.55634799999999995
	.quad	0x3fc15de58e64b231              # double 0.13567799999999999
	.quad	0x3fea0a41a261bf38              # double 0.81375200000000003
	.quad	0x3fe21986b9c304cd              # double 0.56561600000000001
	.quad	0x3fe2474538ef34d7              # double 0.57120000000000004
	.quad	0x3fc8d4fdf3b645a2              # double 0.19400000000000001
	.quad	0x3f97ae5796bfca86              # double 0.023126000000000001
	.quad	0x3fe7042fa5093965              # double 0.71926100000000004
	.quad	0x3fdae679463cfb33              # double 0.420317
	.quad	0x3fe37498c3b0c459              # double 0.60798300000000005
	.quad	0x3fdc37cdcca70d20              # double 0.44090600000000002
	.quad	0x3fe9f3343fa2ad3f              # double 0.81093800000000005
	.quad	0x3feaf38e6d15ad10              # double 0.84223099999999995
	.quad	0x3fd4d94d0dcfcc5c              # double 0.32576300000000002
	.quad	0x3fe4835dedf1e083              # double 0.64103600000000005
	.quad	0x3fe4460ed80a17b1              # double 0.633552
	.quad	0x3fe2ca148ba83f4f              # double 0.58716800000000002
	.quad	0x3fef8468448cf7cb              # double 0.98491300000000003
	.quad	0x3fe611fb3fa6defc              # double 0.68969499999999995
	.quad	0x3f7158b827fa1a0d              # double 0.004235
	.quad	0x3fd5a3fcc9ea9a3d              # double 0.33813399999999999
	.quad	0x3fdfc52a411c2a02              # double 0.49640899999999999
	.quad	0x3fef474751ce28ed              # double 0.97745099999999995
	.quad	0x3fe54febd09e12a5              # double 0.66600599999999999
	.quad	0x3fe0836eb4e98138              # double 0.51604399999999995
	.quad	0x3fd43ebbfd71b047              # double 0.31632900000000003
	.quad	0x3fca3beec39799e5              # double 0.204954
	.quad	0x3fe179207d4e0978              # double 0.54603599999999997
	.quad	0x3feaf65ba6efc372              # double 0.84257300000000002
	.quad	0x3fb54f3775b81301              # double 0.083239999999999995
	.quad	0x3fb1a1b9f98b71b9              # double 0.068874000000000005
	.quad	0x3fd4294dd72367e4              # double 0.315021
	.quad	0x3fb137d1fe64f54d              # double 0.067257999999999998
	.quad	0x3fe40da7f3cf7015              # double 0.62666699999999997
	.quad	0x3fe99192641b328b              # double 0.79901999999999995
	.quad	0x3fe6eb9c304ccee6              # double 0.71626100000000004
	.quad	0x3fd4a00e27e0ef9a              # double 0.32226900000000003
	.quad	0x3fd1f85942917508              # double 0.280783
	.quad	0x3fead273d5bab218              # double 0.83818999999999999
	.quad	0x3fe3452a411c2a02              # double 0.60219299999999998
	.quad	0x3fb6c3eb7cbb3c82              # double 0.088927000000000006
	.quad	0x3fdc2734f82f5126              # double 0.43989299999999998
	.quad	0x3fbd68405b39e27a              # double 0.114872
	.quad	0x3fe7870da5daf07c              # double 0.735236
	.quad	0x3fe1bdec5f394b7b              # double 0.55443399999999998
	.quad	0x3fe98129cbab649d              # double 0.79701699999999998
	.quad	0x3fed51ed9dfdac69              # double 0.91625100000000004
	.quad	0x3fd9b3c3e74afd54              # double 0.40159699999999998
	.quad	0x3fc2b955f78359bc              # double 0.14628099999999999
	.quad	0x3fafa69be09bb6aa              # double 0.061817999999999998
	.quad	0x3fd01986b9c304cd              # double 0.251558
	.quad	0x3fd74bfd2e946801              # double 0.36401299999999998
	.quad	0x3fe442fe82517e78              # double 0.63317800000000002
	.quad	0x3fccbe596c82e01a              # double 0.22455900000000001
	.quad	0x3fef9d451fc4c166              # double 0.98794800000000005
	.quad	0x3feea209aaa3ad19              # double 0.95728000000000002
	.quad	0x3fe2b62a5e785b5b              # double 0.58473699999999995
	.quad	0x3fd0e2da554b8bf0              # double 0.26384600000000002
	.quad	0x3fe562ae4b018612              # double 0.668296
	.quad	0x3fde749adc8fb86f              # double 0.47586699999999998
	.quad	0x3fcfe5753a3ec02f              # double 0.24918999999999999
	.quad	0x3fe495054ac29bf1              # double 0.64319099999999996
	.quad	0x3fe1bbd3804534bd              # double 0.55417799999999995
	.quad	0x3fe4ffcb923a29c7              # double 0.65622499999999995
	.quad	0x3fc13860999dcb58              # double 0.13453300000000001
	.quad	0x3fb6b8a5ce5b4246              # double 0.088755
	.quad	0x3fd7b65a9a804966              # double 0.37050499999999997
	.quad	0x3fce625e99e94ab2              # double 0.237377
	.quad	0x3fed960fa15db339              # double 0.92456799999999995
	.quad	0x3fb2deca25529fe0              # double 0.073712
	.quad	0x3fdb9e3864cb5bb4              # double 0.43153200000000003
	.quad	0x3feb3c6a7ef9db23              # double 0.85112500000000002
	.quad	0x3feaad4f5903a754              # double 0.83365599999999995
	.quad	0x3fde2684cf0739b0              # double 0.47110099999999999
	.quad	0x3fe5dab7dc7abfba              # double 0.68294900000000003
	.quad	0x3fedf192ea52ef91              # double 0.93573899999999999
	.quad	0x3fda9b13165d3997              # double 0.415715
	.quad	0x3fe282ff8ec0f883              # double 0.57849099999999998
	.quad	0x3fb74dad31fcd24e              # double 0.091028999999999998
	.quad	0x3fb5f3d7d3910c2c              # double 0.085751999999999995
	.quad	0x3fed0d5410f94c88              # double 0.90787700000000005
	.quad	0x3fe51702e6644d87              # double 0.65905899999999995
	.quad	0x3fd50e0221426fe7              # double 0.32897999999999999
	.quad	0x3fe0e1d6494d50ec              # double 0.52756800000000004
	.quad	0x3f9f950b955f7836              # double 0.030842000000000001
	.quad	0x3fe93f9830e3cd9a              # double 0.78901299999999996
	.quad	0x3fd91de69ad42c3d              # double 0.39245000000000002
	.quad	0x3fe30e2c12ad81ae              # double 0.59548000000000001
	.quad	0x3fe1e63e8dda48b6              # double 0.55935599999999996
	.quad	0x3fed78d92fb19e73              # double 0.92100199999999999
	.quad	0x3fe04b4070329803              # double 0.50918600000000003
	.quad	0x3fc71f2dc2b0ea18              # double 0.18063899999999999
	.quad	0x3fecdd249e44fa05              # double 0.90199499999999999
	.quad	0x3fc31c7de5082cf5              # double 0.149307
	.quad	0x3fe3066e43aa79bc              # double 0.59453500000000004
	.quad	0x3fdfc4c165907d91              # double 0.49638399999999999
	.quad	0x3fbb87f023e9ea14              # double 0.107543
	.quad	0x3fccc77574f722e2              # double 0.22483700000000001
	.quad	0x3f8ae81882adc4ca              # double 0.013138
	.quad	0x3f97967caea747d8              # double 0.023035
	.quad	0x3fda450268900c52              # double 0.41046199999999999
	.quad	0x3fe27b65668c2614              # double 0.57756300000000005
	.quad	0x3fcd76709fa54c55              # double 0.23017699999999999
	.quad	0x3fee91ba3ca7503c              # double 0.95528900000000005
	.quad	0x3fe4086df82b1f68              # double 0.62602899999999995
	.quad	0x3fc4ae18ac9f2fdc              # double 0.16156300000000001
	.quad	0x3fedd8be7296f651              # double 0.93270799999999998
	.quad	0x3fed7e73a365cb36              # double 0.92168600000000001
	.quad	0x3fe13c33f85510d4              # double 0.53859900000000005
	.quad	0x3fe786cebbba55d2              # double 0.73520600000000003
	.quad	0x3fe17b634dad31fd              # double 0.54631200000000002
	.quad	0x3fe21294573a7979              # double 0.56476800000000005
	.quad	0x3fdca005c4651f3f              # double 0.44726700000000003
	.quad	0x3fc77dae81882adc              # double 0.18352299999999999
	.quad	0x3fdb01c4fc1df330              # double 0.421983
	.quad	0x3fcc47fdc5931ca8              # double 0.220947
	.quad	0x3fca2036006d0d4a              # double 0.20410800000000001
	.quad	0x3febfcd67fd3f5b6              # double 0.874614
	.quad	0x3fec7a00e27e0efa              # double 0.88989300000000005
	.quad	0x3fbde54b48d3ae68              # double 0.11677999999999999
	.quad	0x3fe6ab1704ff4342              # double 0.70838500000000004
	.quad	0x3fe676683c297bfa              # double 0.70195399999999997
	.quad	0x3fe8f2c94b380cb7              # double 0.77963700000000002
	.quad	0x3fb760bf5d78811b              # double 0.091319999999999998
	.quad	0x3fe6ec9e236c15d3              # double 0.71638400000000002
	.quad	0x3fcefa15db3397dd              # double 0.242007
	.quad	0x3fee5dedf1e0828c              # double 0.94896599999999997
	.quad	0x3fecfa46173b85e8              # double 0.90555099999999999
	.quad	0x3fc3d5dc4007570c              # double 0.15496399999999999
	.quad	0x3fea5a5332acfb76              # double 0.82352599999999998
	.quad	0x3fe5f39f340d4dc6              # double 0.68598899999999996
	.quad	0x3fbc215b9a5a89b9              # double 0.109884
	.quad	0x3faf11f926c7eae6              # double 0.060684000000000002
	.quad	0x3fe3b00de4c51117              # double 0.61524100000000004
	.quad	0x3fc9efa615a8deb1              # double 0.202626
	.quad	0x3fef11fb3fa6defc              # double 0.97094499999999994
	.quad	0x3fe0dc4eb56fb8f5              # double 0.52689299999999994
	.quad	0x3fece8c26138fffc              # double 0.90341300000000002
	.quad	0x3f8c0f4517614595              # double 0.013701
	.quad	0x3fe3276965f5275f              # double 0.59856100000000001
	.quad	0x3fdf7a80cf9e3865              # double 0.49185200000000001
	.quad	0x3fe97e414e7ee914              # double 0.79666199999999998
	.quad	0x3fde0fadf2ecf206              # double 0.46970699999999999
	.quad	0x3fee669f05ea24cc              # double 0.95002699999999995
	.quad	0x3fe0beb9e492bc30              # double 0.52328200000000002
	.quad	0x3fe82c1d29dc725c              # double 0.75538499999999997
	.quad	0x3fe7ce93e1c9b414              # double 0.74396700000000004
	.quad	0x3fec7b02d59d55e7              # double 0.89001600000000003
	.quad	0x3fdcc17ebaf10236              # double 0.44930999999999999
	.quad	0x3fccf98fa376922e              # double 0.22636600000000001
	.quad	0x3fe874e4430b178b              # double 0.76426899999999998
	.quad	0x3fe1bb8c32a8c9b8              # double 0.55414399999999997
	.quad	0x3fee1f3c70c996b7              # double 0.94131299999999996
	.quad	0x3fcda6a444178705              # double 0.23164799999999999
	.quad	0x3fee623f24d8fd5d              # double 0.94949300000000003
	.quad	0x3fd7e3fbbd7b2032              # double 0.37329000000000001
	.quad	0x3fe8aa9717df19d6              # double 0.77082399999999995
	.quad	0x3fd639cd8127b2cc              # double 0.34727799999999998
	.quad	0x3fd1dd54da4ce810              # double 0.27913399999999999
	.quad	0x3fd4c67168f8e7de              # double 0.32461200000000001
	.quad	0x3feac66b1e5c0b9a              # double 0.83672100000000005
	.quad	0x3feb985271bcdbbe              # double 0.862344
	.quad	0x3fe9373083558a76              # double 0.78798699999999999
	.quad	0x3fec5debd9018e75              # double 0.88646499999999995
	.quad	0x3fe679cc74b838c1              # double 0.70236799999999999
	.quad	0x3fdd958969a0ad8a              # double 0.462252
	.quad	0x3fdf3f5b5fa22707              # double 0.48824200000000001
	.quad	0x3fd8464dc22ab25b              # double 0.37929099999999999
	.quad	0x3fcf6c9c0a8d21bc              # double 0.245502
	.quad	0x3fd814e3bcd35a86              # double 0.37627500000000003
	.quad	0x3fe3edefc7a39820              # double 0.62279499999999999
	.quad	0x3fe67c99ae924f22              # double 0.70270999999999995
	.quad	0x3fe54ff21b3aeee9              # double 0.66600899999999996
	.quad	0x3fcd6440f2389720              # double 0.22962199999999999
	.quad	0x3feed51f81a5870e              # double 0.96351600000000004
	.quad	0x3fd7ff36ac647779              # double 0.37495200000000001
	.quad	0x3fe9b10dbf0563ed              # double 0.80286299999999999
	.quad	0x3fc32734f82f5126              # double 0.14963399999999999
	.quad	0x3fe9e45a1cac0831              # double 0.80912499999999998
	.quad	0x3feb19e731d2e0e3              # double 0.846912
	.quad	0x3fcc9f0e4da09cc3              # double 0.223604
	.quad	0x3fed6fd438d1d8a5              # double 0.91990099999999997
	.quad	0x3fd320791c4b9021              # double 0.29885699999999998
	.quad	0x3fc7eb8d82342246              # double 0.18687599999999999
	.quad	0x3fe90ac18f81e8a3              # double 0.78256300000000001
	.quad	0x3feb6e86c6583e85              # double 0.85724199999999995
	.quad	0x3fe09a30984e3fff              # double 0.51882200000000001
	.quad	0x3fe8fe7e1fc08fa8              # double 0.78106600000000004
	.quad	0x3fcc93f290abb44e              # double 0.22326499999999999
	.quad	0x3fdaf0dc768dfbd7              # double 0.42095100000000002
	.quad	0x3fea99ac79702e66              # double 0.83125899999999997
	.quad	0x3fe334e54f7a9197              # double 0.60020700000000005
	.quad	0x3fd0d1dcd7060bb3              # double 0.26280900000000001
	.quad	0x3fab9d7fd82773e2              # double 0.053935999999999998
	.quad	0x3feba374794ea077              # double 0.863703
	.quad	0x3fe278e1932d6ece              # double 0.57725599999999999
	.quad	0x3fc01af7d30ad46f              # double 0.12582299999999999
	.quad	0x3fdda02b841248d8              # double 0.46290100000000001
	.quad	0x3fcd50c1b97353b5              # double 0.22902700000000001
	.quad	0x3fe468576cce5f74              # double 0.637737
	.quad	0x3f9448cf7caa758a              # double 0.019809
	.quad	0x3fed5c4c9c90c4df              # double 0.91751700000000003
	.quad	0x3fe0197e56473472              # double 0.503112
	.quad	0x3fe25b402d16b980              # double 0.57363900000000001
	.quad	0x3fbd6fa82e87d2c8              # double 0.114985
	.quad	0x3fe74aa326e11559              # double 0.72786099999999998
	.quad	0x3fd04b7b28954a80              # double 0.25460700000000003
	.quad	0x3fe414d940789614              # double 0.62754500000000002
	.quad	0x3fd4937d1fe64f55              # double 0.32150200000000001
	.quad	0x3fe23fb15b573eab              # double 0.57027499999999998
	.quad	0x3f9db8348f53c57a              # double 0.029023
	.quad	0x3fd81b328b6d86ec              # double 0.37665999999999999
	.quad	0x3fe3293f290abb45              # double 0.59878500000000001
	.quad	0x3fdab7f5a5332ad0              # double 0.41747800000000002
	.quad	0x3f9b6523704790b8              # double 0.026752999999999999
	.quad	0x3fef40e1719f7f8d              # double 0.97667000000000003
	.quad	0x3fbeb0b7c3504c49              # double 0.119884
	.quad	0x3fe3a98244e93e1d              # double 0.61444200000000004
	.quad	0x3fe533df2a9d627c              # double 0.662582
	.quad	0x3fd398d045fe1112              # double 0.30620199999999997
	.quad	0x3fd84ebdd334c5da              # double 0.37980599999999998
	.quad	0x3fee8fe047d3d428              # double 0.95506299999999999
	.quad	0x3fd88e7ddca4b125              # double 0.38369700000000001
	.quad	0x3feef4cf4a558ea8              # double 0.96738400000000002
	.quad	0x3fb2493c89f40a28              # double 0.071429999999999993
	.quad	0x3fe71a2e7f6f4be8              # double 0.72194599999999998
	.quad	0x3fd438c9752977c9              # double 0.31596600000000002
	.quad	0x3fe7a0817fc7607c              # double 0.73834299999999997
	.quad	0x3fee7601797cc3a0              # double 0.951905
	.quad	0x3fcc6801711947d0              # double 0.22192400000000001
	.quad	0x3fe8aaa3ad18d25f              # double 0.77083000000000002
	.quad	0x3fdc90f733a8a3f9              # double 0.44634800000000002
	.quad	0x3fd7aabcd78c4370              # double 0.36979600000000001
	.quad	0x3fc8f240fa9c12f1              # double 0.19489300000000001
	.quad	0x3fc865d7cb2d905c              # double 0.190608
	.quad	0x3f8aaac1094a2b9d              # double 0.013021
	.quad	0x3fc9dc8323358f2e              # double 0.202042
	.quad	0x3f5ab8e8ea39c51e              # double 0.0016310000000000001
	.quad	0x3fcc70eb24a6a876              # double 0.222196
	.quad	0x3fc724e9c4545847              # double 0.180814
	.quad	0x3fbc123810e88590              # double 0.109653
	.quad	0x3fe2491f2dc2b0ea              # double 0.57142599999999999
	.quad	0x3fda1dfb9389b520              # double 0.40808
	.quad	0x3fea3d188f42fe82              # double 0.81995799999999996
	.quad	0x3fcdcd3e0bd44999              # double 0.23282600000000001
	.quad	0x3fc93586ca89fc6e              # double 0.19694600000000001
	.quad	0x3fbe13b18dac258d              # double 0.117488
	.quad	0x3fb1b23dd54da4cf              # double 0.069126000000000007
	.quad	0x3fb8cb9ecf638002              # double 0.096856999999999998
	.quad	0x3fc126202539756d              # double 0.13397600000000001
	.quad	0x3fdfadb402d16b98              # double 0.494977
	.quad	0x3fd13a96d4c33b54              # double 0.26920100000000002
	.quad	0x3fecb12d3415b142              # double 0.89662799999999998
	.quad	0x3fdbd955714b9cb7              # double 0.43514000000000003
	.quad	0x3fe62a90cd423d92              # double 0.69269599999999998
	.quad	0x3fc75e310dbf0564              # double 0.182562
	.quad	0x3fed490c4dec1c1d              # double 0.91516699999999995
	.quad	0x3fdfe5ffa3b9ae0c              # double 0.49841299999999999
	.quad	0x3fc8b955f78359bc              # double 0.19315599999999999
	.quad	0x3fe29dadfb506dd7              # double 0.58174800000000004
	.quad	0x3fe77cf3dc054ef4              # double 0.73400299999999996
	.quad	0x3fca6f36ef8055fc              # double 0.20651900000000001
	.quad	0x3fc379314445aa2e              # double 0.15213599999999999
	.quad	0x3fddea5b530ced4e              # double 0.46742899999999998
	.quad	0x3fef2467be553ac5              # double 0.973194
	.quad	0x3fe56c2acb85a4f0              # double 0.66945399999999999
	.quad	0x3fddf7d30ad46f58              # double 0.46825099999999997
	.quad	0x3fed79d2bf551505              # double 0.92112099999999997
	.quad	0x3fe624edf6124074              # double 0.69200799999999996
	.quad	0x3fefb62845996745              # double 0.99098600000000003
	.quad	0x3fe27cb0c026cc1d              # double 0.57772100000000004
	.quad	0x3fba328f9f44d445              # double 0.10233399999999999
	.quad	0x3fe8462a1b5c7cd9              # double 0.75856500000000004
	.quad	0x3fe0b48909289dae              # double 0.522038
	.quad	0x3fe96ffc115df655              # double 0.79491999999999996
	.quad	0x3fc782fd75e2046c              # double 0.18368499999999999
	.quad	0x3fdbe29f9ce8d973              # double 0.43570700000000001
	.quad	0x3fedf064ece9a2c6              # double 0.93559499999999995
	.quad	0x3fd919f3c70c996b              # double 0.39220899999999997
	.quad	0x3fdb268900c521de              # double 0.42422700000000002
	.quad	0x3fede43675ddd2af              # double 0.93410800000000005
	.quad	0x3fdf357e670e2c13              # double 0.48764000000000002
	.quad	0x3fe599a1fd1569f5              # double 0.67500400000000005
	.quad	0x3fdbe3821af7d30b              # double 0.43576100000000001
	.quad	0x3fddcaab8a5ce5b4              # double 0.46549499999999999
	.quad	0x3fe51633482be8bc              # double 0.65895999999999999
	.quad	0x3fed305faebc408e              # double 0.91215500000000005
	.quad	0x3fe43239a38fbca1              # double 0.631131
	.quad	0x3fbc9b951c5c5719              # double 0.111749
	.quad	0x3fe724a276b7ed42              # double 0.72322200000000003
	.quad	0x3fe834a66559f6ec              # double 0.75642699999999996
	.quad	0x3fde8fc9363f572e              # double 0.47752600000000001
	.quad	0x3fd8e39713ad5bee              # double 0.38889099999999999
	.quad	0x3fe1fcf80dc33722              # double 0.56213000000000002
	.quad	0x3fe463cb81733227              # double 0.63718200000000003
	.quad	0x3fe15e3b8a19c9d6              # double 0.54275300000000004
	.quad	0x3fe4f3fb7a5f41af              # double 0.654783
	.quad	0x3fe23af74cd3176a              # double 0.56969800000000004
	.quad	0x3fdd342edbb59ddc              # double 0.45630999999999999
	.quad	0x3fdb29a1b9f98b72              # double 0.42441600000000002
	.quad	0x3fe4b35f3d7d3911              # double 0.64689600000000003
	.quad	0x3fe6e0c5a8155d5f              # double 0.71493799999999996
	.quad	0x3fdfc82e019b0ab3              # double 0.49659300000000001
	.quad	0x3feafd566cf41f21              # double 0.84342499999999998
	.quad	0x3fd1f166e008e9b4              # double 0.28035900000000002
	.quad	0x3fc6540cc78e9f6b              # double 0.17444000000000001
	.quad	0x3feb772d5e071c54              # double 0.858298
	.quad	0x3fdc158750c1b973              # double 0.43881399999999998
	.quad	0x3fe61fa333764f12              # double 0.69136200000000003
	.quad	0x3feeaeb5f5f0b285              # double 0.95882699999999998
	.quad	0x3fc75aa715831f04              # double 0.18245400000000001
	.quad	0x3febcd39da16616b              # double 0.86880199999999996
	.quad	0x3fd8bf8fcd67fd3f              # double 0.38669199999999998
	.quad	0x3fdabb16c1e364bf              # double 0.41766900000000001
	.quad	0x3fa77c243dccea29              # double 0.045869
	.quad	0x3fea1fb3fa6defc8              # double 0.81637000000000004
	.quad	0x3fccb5675579af19              # double 0.22428600000000001
	.quad	0x3fce6e5471715c64              # double 0.23774200000000001
	.quad	0x3fc96f6512a94ff0              # double 0.198712
	.quad	0x3feed4046412cf10              # double 0.96338100000000004
	.quad	0x3fd7436b8f9b1316              # double 0.36348999999999998
	.quad	0x3fea9d388a8b08dd              # double 0.83169199999999999
	.quad	0x3fde476af89c5e70              # double 0.473109
	.quad	0x3fedc04ea4a8c155              # double 0.92972500000000002
	.quad	0x3fe50201cd5f99c4              # double 0.65649500000000005
	.quad	0x3fef62c98e53eb3a              # double 0.98080900000000004
	.quad	0x3fe0ebb98c7e2824              # double 0.528775
	.quad	0x3fe98012dfd694cd              # double 0.79688400000000004
	.quad	0x3fdea8fc0d2c386d              # double 0.47906399999999999
	.quad	0x3fec41f42bb66730              # double 0.88305100000000003
	.quad	0x3fa86c43f5f91601              # double 0.047701
	.quad	0x3fd226394face67d              # double 0.28358299999999997
	.quad	0x3fd22acb85a4f00f              # double 0.283862
	.quad	0x3feb096787ce95fb              # double 0.84489800000000004
	.quad	0x3fc3b91f70de8f6d              # double 0.154087
	.quad	0x3fee6ebf65dbfceb              # double 0.95101899999999995
	.quad	0x3fec89aaa3ad18d2              # double 0.89180499999999996
	.quad	0x3fb2264e48626f61              # double 0.070897000000000002
	.quad	0x3fc406af46aa087d              # double 0.15645400000000001
	.quad	0x3fd76d86ec17ebaf              # double 0.36606
	.quad	0x3fed1274e22a2c23              # double 0.90850299999999995
	.quad	0x3fc1a61e0c5a8156              # double 0.137882
	.quad	0x3fe03d6e8af81627              # double 0.50749900000000003
	.quad	0x3fcf38e6d15ad107              # double 0.243924
	.quad	0x3fedcdaf4adbc665              # double 0.93135800000000002
	.quad	0x3fe7723cc8de2ac3              # double 0.73269499999999999
	.quad	0x3fe3f59ccfaeff5c              # double 0.62373199999999995
	.quad	0x3f83e1c9b4139863              # double 0.0097079999999999996
	.quad	0x3fe981d5c31593e6              # double 0.797099
	.quad	0x3fedbb73083558a7              # double 0.92913199999999996
	.quad	0x3fe5b7739f340d4e              # double 0.67864400000000002
	.quad	0x3fe6256366d7a56e              # double 0.69206400000000001
	.quad	0x3fe97674d1633483              # double 0.79571000000000003
	.quad	0x3fe16a550870110a              # double 0.54422999999999999
	.quad	0x3fe6f3929ed3953e              # double 0.71723300000000001
	.quad	0x3fe6a40314877681              # double 0.70752099999999996
	.quad	0x3fc10a0b1bbcf4e8              # double 0.13311899999999999
	.quad	0x3fd51a93293d102c              # double 0.32974700000000001
	.quad	0x3fd95f6fd21ff2e5              # double 0.39645000000000002
	.quad	0x3fe36c52a411c2a0              # double 0.60697299999999998
	.quad	0x3fe878d0cc35ce18              # double 0.76474799999999998
	.quad	0x3fe502be8bc169c2              # double 0.65658499999999997
	.quad	0x3fc8fd32c625e99f              # double 0.19522700000000001
	.quad	0x3fa348b220791c4c              # double 0.037664000000000003
	.quad	0x3fdf5692b3cc4ac7              # double 0.48965900000000001
	.quad	0x3fe94d07852f7f4a              # double 0.79065300000000005
	.quad	0x3fdde39b456b441c              # double 0.46701700000000002
	.quad	0x3fe3acdc011d3672              # double 0.61485100000000004
	.quad	0x3fd8bf8b9baa1512              # double 0.38669100000000001
	.quad	0x3fcfb82c2bd7f51f              # double 0.247808
	.quad	0x3fd034df04ddb552              # double 0.25322699999999998
	.quad	0x3fc475818c5c9a35              # double 0.15983600000000001
	.quad	0x3fe25651b0ccbc06              # double 0.57303700000000002
	.quad	0x3fb96ece13f4a98b              # double 0.099347000000000005
	.quad	0x3fdc674080f98fa3              # double 0.44380199999999997
	.quad	0x3fced4cb9ecf6380              # double 0.240869
	.quad	0x3fe4dcd4ed2cbea5              # double 0.65195700000000001
	.quad	0x3fd2b73083558a76              # double 0.292431
	.quad	0x3fefb8a5ce5b4246              # double 0.99129
	.quad	0x3fe37e62dc6e2a80              # double 0.609178
	.quad	0x3fe533a4723aafff              # double 0.66255399999999998
	.quad	0x3fd2c46d82ba5a04              # double 0.29323900000000003
	.quad	0x3fd4132b55ef1fde              # double 0.31367
	.quad	0x3fef05c67dfe32a0              # double 0.96945499999999995
	.quad	0x3fe916bb98c7e282              # double 0.78402499999999997
	.quad	0x3fe0771001d5c316              # double 0.51453400000000005
	.quad	0x3fdb21ff2e48e8a7              # double 0.42394999999999999
	.quad	0x3fe84f3ba775fb2f              # double 0.75967200000000001
	.quad	0x3fe983c297bfa4c6              # double 0.79733399999999999
	.quad	0x3fc1d63022dd7a9a              # double 0.139349
	.quad	0x3fa0509bf9c62a1b              # double 0.031864999999999997
	.quad	0x3fe184e1e71044f2              # double 0.54747100000000004
	.quad	0x3fd5856605ee568a              # double 0.33626699999999998
	.quad	0x3fe08ec95bff0457              # double 0.51742999999999995
	.quad	0x3fd1a25d8d79d0a6              # double 0.27553499999999997
	.quad	0x3fe17be9856a37ac              # double 0.54637599999999997
	.quad	0x3fe259ddc1e7967d              # double 0.57347000000000004
	.quad	0x3fd84f483cafb3b7              # double 0.37983899999999998
	.quad	0x3fcb7cb2d905c033              # double 0.21474299999999999
	.quad	0x3fd81148fd9fd36f              # double 0.37605499999999997
	.quad	0x3fd0b7e0ac7da1ec              # double 0.26122299999999998
	.quad	0x3fe23f1a5ca29846              # double 0.57020300000000002
	.quad	0x3fbb499d0203e63f              # double 0.10659200000000001
	.quad	0x3fe741376d549731              # double 0.726711
	.quad	0x3fe86cdf266ba494              # double 0.76329000000000002
	.quad	0x3fe8018c5c9a34ca              # double 0.75018899999999999
	.quad	0x3fe2cd0dcfcc5b8e              # double 0.58753100000000003
	.quad	0x3fbe5e892253111f              # double 0.11863
	.quad	0x3fe4f00ef1348b22              # double 0.654304
	.quad	0x3fe0746ed245b292              # double 0.51421300000000003
	.quad	0x3fd3b25b317efe0d              # double 0.30776100000000001
	.quad	0x3fe1f83382e44b6f              # double 0.56154800000000005
	.quad	0x3fd73465625a682b              # double 0.36257299999999998
	.quad	0x3fe474ff865d7cb3              # double 0.63928200000000002
	.quad	0x3fc8b24a6a875d57              # double 0.192941
	.quad	0x3fedef0068db8bac              # double 0.93542499999999995
	.quad	0x3fd2bf401c4fc1df              # double 0.29292299999999999
	.quad	0x3fea601797cc3a00              # double 0.82423000000000002
	.quad	0x3feb1c17225b749b              # double 0.84717900000000002
	.quad	0x3feebb4f61672325              # double 0.96036500000000002
	.quad	0x3fd7c8259e1f3a58              # double 0.371591
	.quad	0x3fb1a0cf1800a7c6              # double 0.068860000000000005
	.quad	0x3fee7cdcca70d1fa              # double 0.95274199999999998
	.quad	0x3fe8026cc1ca3a4b              # double 0.75029599999999996
	.quad	0x3fe911be6e653869              # double 0.783416
	.quad	0x3fd27b84db9c7369              # double 0.28878900000000002
	.quad	0x3fe7368f08461f9f              # double 0.72541
	.quad	0x3fe2c1dd1a21ea36              # double 0.58616500000000005
	.quad	0x3fb92f4cf4a558ea              # double 0.098377999999999993
	.quad	0x3feb084e831ad213              # double 0.84476399999999996
	.quad	0x3fef917f84449dbf              # double 0.98651100000000002
	.quad	0x3feaf70bd017dae8              # double 0.84265699999999999
	.quad	0x3fe62c94b380cb6c              # double 0.69294199999999995
	.quad	0x3fdd50acc0bdcad1              # double 0.45804899999999998
	.quad	0x3fe75857afea3df7              # double 0.72953400000000002
	.quad	0x3fd209310129cbab              # double 0.28181099999999998
	.quad	0x3fee8da3c21187e8              # double 0.95479000000000002
	.quad	0x3fef666234a87e39              # double 0.981248
	.quad	0x3febfa0f9096bb99              # double 0.87427500000000002
	.quad	0x3fc15c96030c23fb              # double 0.13563800000000001
	.quad	0x3fecfc1376d54973              # double 0.90577099999999999
	.quad	0x3fb393ee5eedcc21              # double 0.076476000000000002
	.quad	0x3fde64d7f0ed3d86              # double 0.47490500000000002
	.quad	0x3fe0bab862b27cbf              # double 0.52279299999999995
	.quad	0x3f8065f9591cd1c8              # double 0.0080070000000000002
	.quad	0x3fc522c881e4712e              # double 0.16512399999999999
	.quad	0x3fc25ba6efc371da              # double 0.14342199999999999
	.quad	0x3fcc20ee8d10f51b              # double 0.21975500000000001
	.quad	0x3fe2ad05f2884838              # double 0.58362099999999995
	.quad	0x3fe936e503fb3743              # double 0.78795099999999996
	.quad	0x3feef587d6f97679              # double 0.96747199999999999
	.quad	0x3fe8d8c6d612c6ac              # double 0.77646199999999998
	.quad	0x3fdead2dcb1465e9              # double 0.47932000000000002
	.quad	0x3fe89d3458cd20b0              # double 0.76919000000000004
	.quad	0x3fa321a2e7f6f4bf              # double 0.037366000000000003
	.quad	0x3fe9ee631f8a0903              # double 0.81035000000000001
	.quad	0x3fd8a597d49d7ba6              # double 0.38510699999999998
	.quad	0x3fee5ce9e5e24788              # double 0.94884199999999996
	.quad	0x3fecce3bcd35a858              # double 0.90017499999999995
	.quad	0x3fe8fc2224edf612              # double 0.78077799999999997
	.quad	0x3fc22bd7f51efb6e              # double 0.14196300000000001
	.quad	0x3f962e4d1a650614              # double 0.021661
	.quad	0x3fc790214ad362e9              # double 0.184086
	.quad	0x3fda395810624dd3              # double 0.40975
	.quad	0x3f8780baa582dbe8              # double 0.011476
	.quad	0x3fd9e05ccc89b0ee              # double 0.40431899999999998
	.quad	0x3fd65515054ac29c              # double 0.348943
	.quad	0x3fa56bca5375c8da              # double 0.041838
	.quad	0x3fe82b3cc4ac6cdb              # double 0.755278
	.quad	0x3fe3c73eee525892              # double 0.61807199999999995
	.quad	0x3fd94e69f05ea24d              # double 0.39541100000000001
	.quad	0x3fd7bbecaab8a5ce              # double 0.37084499999999998
	.quad	0x3fd3e64b2314013f              # double 0.31093100000000001
	.quad	0x3feffff79c842fa5              # double 0.99999599999999999
	.quad	0x3fe9ecb31c219eb6              # double 0.81014399999999998
	.quad	0x3fd633a8a3f8982d              # double 0.34690300000000002
	.quad	0x3fd3c15097c80842              # double 0.308674
	.quad	0x3fd0bc87db2b3461              # double 0.26150699999999999
	.quad	0x3fec1acbc8c0ce92              # double 0.87827100000000002
	.quad	0x3f93a9b068123811              # double 0.019202
	.quad	0x3fe8e31d712a0ec7              # double 0.77772399999999997
	.quad	0x3fdaabcd78c436fc              # double 0.416736
	.quad	0x3fbf3d7d3910c2c6              # double 0.122032
	.quad	0x3fb9590c0ad03d9b              # double 0.099015000000000006
	.quad	0x3fd63b46fdeb52ca              # double 0.34736800000000001
	.quad	0x3fc1e5c91d14e3bd              # double 0.139825
	.quad	0x3fccd490e66cb103              # double 0.22523699999999999
	.quad	0x3fc39da16616b54e              # double 0.153248
	.quad	0x3fa3f290abb44e51              # double 0.038960000000000002
	.quad	0x3fed3f2b239a38fc              # double 0.91396100000000002
	.quad	0x3fece31b584b1ab1              # double 0.90272300000000005
	.quad	0x3fee94a0a0f4d7ae              # double 0.95564300000000002
	.quad	0x3fd32324c8366517              # double 0.29902000000000001
	.quad	0x3fd402363b256ffc              # double 0.312635
	.quad	0x3f677c88e79aae6d              # double 0.0028670000000000002
	.quad	0x3fbfeaa2a0a95853              # double 0.12467399999999999
	.quad	0x3fe29a95421c0443              # double 0.58137000000000005
	.quad	0x3fc61bda5119ce07              # double 0.17272499999999999
	.quad	0x3fe035b2d4d4024b              # double 0.50655499999999998
	.quad	0x3fe89bf37b8d3f18              # double 0.76903699999999997
	.quad	0x3fe96c460ed80a18              # double 0.79446700000000003
	.quad	0x3fe936d655e28aa4              # double 0.78794399999999997
	.quad	0x3fd38ba40d90e23b              # double 0.305398
	.quad	0x3fdf620685553ef7              # double 0.49035800000000002
	.quad	0x3fec38bac710cb29              # double 0.88192499999999996
	.quad	0x3fce73de1e2de871              # double 0.23791100000000001
	.quad	0x3fe7c3c5bd0e12e8              # double 0.74264799999999997
	.quad	0x3fcc84167a95c854              # double 0.22278100000000001
	.quad	0x3fa424a276b7ed42              # double 0.039342000000000002
	.quad	0x3fe9e887a8d64d7f              # double 0.80963499999999999
	.quad	0x3fd512a94ff0025c              # double 0.329264
	.quad	0x3fc6bb2bba98eda2              # double 0.17758699999999999
	.quad	0x3fccfec56d5cfaad              # double 0.226525
	.quad	0x3fe37eac42e9899c              # double 0.609213
	.quad	0x3fea911ada76d97b              # double 0.83021299999999998
	.quad	0x3fc20e1f7d73c925              # double 0.14105599999999999
	.quad	0x3f8714b9cb6848bf              # double 0.011270000000000001
	.quad	0x3fc0cefed634549b              # double 0.13131699999999999
	.quad	0x3fb3e9b7bf1e8e61              # double 0.077785000000000007
	.quad	0x3fe2b4245f5ad96a              # double 0.58448999999999995
	.quad	0x3fd1b1dd5d3dc8b8              # double 0.27648099999999998
	.quad	0x3fed65bc87db2b34              # double 0.91866899999999995
	.quad	0x3fd8b6390c9107fb              # double 0.38612200000000002
	.quad	0x3fe4ac6ac215b9a6              # double 0.64604700000000004
	.quad	0x3fc3a7008a697aee              # double 0.153534
	.quad	0x3fec53bafd976ff4              # double 0.88522100000000003
	.quad	0x3fe5672324c83665              # double 0.66883999999999999
	.quad	0x3fdc19eb6390c910              # double 0.43908199999999997
	.quad	0x3fd65d56f32bdc27              # double 0.34944700000000001
	.quad	0x3fd27963992c8c50              # double 0.288659
	.quad	0x3fe536933a0407cc              # double 0.66291199999999995
	.quad	0x3fe881cd5f99c38b              # double 0.765845
	.quad	0x3fe7d158b827fa1a              # double 0.74430499999999999
	.quad	0x3fe6cb7d41743e96              # double 0.71233999999999997
	.quad	0x3fd63f20a73f748a              # double 0.347603
	.quad	0x3fd4ee84ad794a6f              # double 0.32705800000000002
	.quad	0x3fe247abfb9bed31              # double 0.57124900000000001
	.quad	0x3fc5c7bcc2938de7              # double 0.170158
	.quad	0x3fe898fc504816f0              # double 0.768675
	.quad	0x3fe7cab3edd8b60f              # double 0.74349399999999999
	.quad	0x3fec576683c297c0              # double 0.88566900000000004
	.quad	0x3fe395e9e1b089a0              # double 0.61204999999999998
	.quad	0x3fe22a2a0a958538              # double 0.56764700000000001
	.quad	0x3fe773083558a761              # double 0.732792
	.quad	0x3fe53784662bae04              # double 0.66302700000000003
	.quad	0x3fe5c052d666a982              # double 0.67972699999999997
	.quad	0x3fcce58a32f44913              # double 0.22575500000000001
	.quad	0x3fcbaf74cd31769b              # double 0.21629200000000001
	.quad	0x3fe604f6dfc5cdd5              # double 0.688106
	.quad	0x3f852da98676a726              # double 0.010340999999999999
	.quad	0x3fc6095f2452c5a0              # double 0.17216100000000001
	.quad	0x3f9272c94b380cb7              # double 0.018016000000000001
	.quad	0x3f4cac083126e979              # double 8.7500000000000001E-4
	.quad	0x3fc3a797891e2153              # double 0.15355199999999999
	.quad	0x3fedc8711d798d8b              # double 0.93071800000000005
	.quad	0x3fd96d7a56de3327              # double 0.39730700000000002
	.quad	0x3fe0b074a771c971              # double 0.52154
	.quad	0x3fec5f41aef6f8f0              # double 0.88662799999999997
	.quad	0x3fb538bcdfefbf40              # double 0.082896999999999998
	.quad	0x3fe730e1b4bb5e0f              # double 0.72471699999999994
	.quad	0x3fd84573a797891e              # double 0.37923899999999999
	.quad	0x3fda79bfdf7e8039              # double 0.41368100000000002
	.quad	0x3fe6427631b584b2              # double 0.69561300000000004
	.quad	0x3fe504449dbec248              # double 0.65677099999999999
	.quad	0x3fdcca6ca03c4b0a              # double 0.449855
	.quad	0x3fbc521dda059a74              # double 0.110628
	.quad	0x3fed9526d8b1dd5d              # double 0.92445699999999997
	.quad	0x3fe829bf162ae4b0              # double 0.75509599999999999
	.quad	0x3fe4d3ae685db76b              # double 0.65083999999999997
	.quad	0x3fe74ba301216830              # double 0.72798300000000005
	.quad	0x3fd050efdc9c4da9              # double 0.25494
	.quad	0x3fea7c7a398201cd              # double 0.82769499999999996
	.quad	0x3fdb998d045fe111              # double 0.43124699999999999
	.quad	0x3fbc3bf727136a40              # double 0.11029
	.quad	0x3fe2b5eb7457c0b1              # double 0.58470699999999998
	.quad	0x3fa3fbdf090f733b              # double 0.039031000000000003
	.quad	0x3fe5de1c15097c81              # double 0.68336300000000005
	.quad	0x3fc4ada33bd9cae2              # double 0.161549
	.quad	0x3fd4df1e0828c36e              # double 0.32611800000000002
	.quad	0x3feb47b677f6b1a3              # double 0.85250400000000004
	.quad	0x3fed6bb7739f340d              # double 0.91939899999999997
	.quad	0x3fdfdf2239e6ab9b              # double 0.49799399999999999
	.quad	0x3fe6c28d434a01ac              # double 0.71124900000000002
	.quad	0x3fd53a4f8726d04e              # double 0.33168399999999998
	.quad	0x3fd072a38b8ae31d              # double 0.25699699999999998
	.quad	0x3fe622ee41919ac8              # double 0.69176400000000005
	.quad	0x3fe3835dedf1e083              # double 0.60978600000000005
	.quad	0x3fee3af31b152f3c              # double 0.94469599999999998
	.quad	0x3fed225b749adc90              # double 0.91044400000000003
	.quad	0x3fdbd96e9bbf0dc7              # double 0.43514599999999998
	.quad	0x3f7d3ed527e52157              # double 0.0071399999999999996
	.quad	0x3fd14d6e47dc37a4              # double 0.27035100000000001
	.quad	0x3fd1f8a0902de00d              # double 0.28079999999999999
	.quad	0x3fbc664d3bf2f556              # double 0.11093600000000001
	.quad	0x3fbe4e054690de09              # double 0.118378
	.quad	0x3fefae7f6f4be836              # double 0.99005100000000001
	.quad	0x3fd5704790b84988              # double 0.334978
	.quad	0x3feb8240b780346e              # double 0.85965000000000003
	.quad	0x3fc513165d3996fb              # double 0.16464500000000001
	.quad	0x3fe9bf572de43ed9              # double 0.80460699999999996
	.quad	0x3fa5ccea28fe260b              # double 0.042578999999999999
	.quad	0x3fe19e59f2ba9d1f              # double 0.55057999999999996
	.quad	0x3fb234549b62c775              # double 0.071110999999999994
	.quad	0x3fcb93ab430f4949              # double 0.215444
	.quad	0x3fe61392189bd838              # double 0.68988899999999997
	.quad	0x3fe6dce39b456b44              # double 0.71446399999999999
	.quad	0x3fdadb48909289db              # double 0.41963400000000001
	.quad	0x3fd158b3f63c31df              # double 0.27103899999999997
	.quad	0x3fb8aa10e0221427              # double 0.096345
	.quad	0x3fdf5625a682b628              # double 0.48963299999999998
	.quad	0x3fe9ad601ffb480a              # double 0.80241399999999996
	.quad	0x3fe0e71ef30a4e38              # double 0.52821300000000004
	.quad	0x3fdd7d6733ebbfd7              # double 0.46077899999999999
	.quad	0x3fc3bc7f77af6406              # double 0.15418999999999999
	.quad	0x3fc019b0ab2e1694              # double 0.12578400000000001
	.quad	0x3fc48ac5c13fd0d0              # double 0.16048499999999999
	.quad	0x3fe8014f8b588e37              # double 0.75016000000000005
	.quad	0x3fb8fcf80dc33722              # double 0.097610000000000002
	.quad	0x3fd04bad7d7c2ca1              # double 0.25461899999999998
	.quad	0x3fe09a52263d816b              # double 0.51883800000000002
	.quad	0x3fee6d41b75a74c1              # double 0.95083700000000004
	.quad	0x3fdcadddf43c7d5f              # double 0.44811200000000001
	.quad	0x3fbb1ceaf251c194              # double 0.10591
	.quad	0x3fdad5d80e496edf              # double 0.41930200000000001
	.quad	0x3fd0e11dbca9691a              # double 0.26373999999999997
	.quad	0x3fdda58f7121ab4b              # double 0.46322999999999998
	.quad	0x3fd1391d57ff9b56              # double 0.26911099999999999
	.quad	0x3fe4f77d0f1f57b4              # double 0.65521099999999999
	.quad	0x3fe1fe5eaab04253              # double 0.56230100000000005
	.quad	0x3faacf95d4e8fb01              # double 0.052365000000000002
	.quad	0x3fdf1dd5d3dc8b87              # double 0.48619600000000002
	.quad	0x3fed4940bbb1f256              # double 0.91519200000000001
	.quad	0x3fd89096bb98c7e3              # double 0.38382500000000003
	.quad	0x3fed1cb039ef0f17              # double 0.90975200000000001
	.quad	0x3fdaec2ce4649907              # double 0.42066500000000001
	.quad	0x3fe34fd8f0c77dd8              # double 0.60349699999999995
	.quad	0x3fc3c0ca600b0293              # double 0.15432100000000001
	.quad	0x3fde05b39e279dd4              # double 0.46909800000000001
	.quad	0x3fe81c193b3a68b2              # double 0.75343000000000004
	.quad	0x3feb1fc4c165907e              # double 0.84762800000000005
	.quad	0x3fac13fd0d0678c0              # double 0.05484
	.quad	0x3fe570b8cfbfc654              # double 0.67000999999999999
	.quad	0x3fc6bc48f10a99b7              # double 0.177621
	.quad	0x3fce2ea960b6f9fd              # double 0.23579900000000001
	.quad	0x3fdad1bb4916ca47              # double 0.41905100000000001
	.quad	0x3fce5e2cdc011d36              # double 0.23724899999999999
	.quad	0x3fef07db2b346131              # double 0.96970900000000004
	.quad	0x3fadddb1209edbf9              # double 0.058332000000000002
	.quad	0x3fdda9bcfd4bf099              # double 0.46348499999999998
	.quad	0x3fd0b4916ca46e09              # double 0.261021
	.quad	0x3fd00c026cc1ca3a              # double 0.25073299999999998
	.quad	0x3f73ae685db76b3c              # double 0.0048050000000000002
	.quad	0x3f9e6f71a7e30878              # double 0.029721999999999998
	.quad	0x3fda2f2b66b6177f              # double 0.40912900000000002
	.quad	0x3fc7586ca89fc6da              # double 0.18238599999999999
	.quad	0x3fed950b955f7836              # double 0.92444400000000004
	.quad	0x3fc4fb86f47b677f              # double 0.16392599999999999
	.quad	0x3fe23e1437c5692b              # double 0.57007799999999997
	.quad	0x3fe55627bf61aa3f              # double 0.666767
	.quad	0x3fea559d55e6bc62              # double 0.82295099999999999
	.quad	0x3feaf97aaac1094a              # double 0.84295399999999998
	.quad	0x3fda122b7baecd08              # double 0.40735900000000003
	.quad	0x3fe15944aa53fc01              # double 0.54214700000000005
	.quad	0x3fe99b21c475e636              # double 0.80018699999999998
	.quad	0x3fea0b5cbff47736              # double 0.81388700000000003
	.quad	0x3feb76c8b4395810              # double 0.85824999999999996
	.quad	0x3fb34dad31fcd24e              # double 0.075403999999999999
	.quad	0x3fdbffbce4217d28              # double 0.43748399999999998
	.quad	0x3fecfb7c7820a30e              # double 0.90569900000000003
	.quad	0x3fdc27bf61aa3f03              # double 0.43992599999999998
	.quad	0x3feef1d1d4738a3b              # double 0.96701899999999996
	.quad	0x3fd7c36544fe36d2              # double 0.37130099999999999
	.quad	0x3fa114b167ec7864              # double 0.033361000000000002
	.quad	0x3fda1ae2da554b8c              # double 0.407891
	.quad	0x3fd0df090f733a8a              # double 0.26361299999999999
	.quad	0x3fe32541d8e86402              # double 0.598298
	.quad	0x3fe2fb58d1526d8b              # double 0.59318199999999999
	.quad	0x3fea8b30b5aa7158              # double 0.82949099999999998
	.quad	0x3fe68e15011904b4              # double 0.70484400000000003
	.quad	0x3fe313cab81f969e              # double 0.59616599999999997
	.quad	0x3fb485b18548a9bd              # double 0.080165
	.quad	0x3fd66117720c8cd6              # double 0.34967599999999999
	.quad	0x3fd8febd09e12a52              # double 0.39054800000000001
	.quad	0x3fc842d8c2a454de              # double 0.18953999999999999
	.quad	0x3fe4268900c521de              # double 0.62970400000000004
	.quad	0x3fde88765ba6efc3              # double 0.47707899999999998
	.quad	0x3fe99c714fce746d              # double 0.80034700000000003
	.quad	0x3fe5d2a843808851              # double 0.68196500000000004
	.quad	0x3fdc09dcf893faf4              # double 0.43810199999999999
	.quad	0x3feff87ce95faa8b              # double 0.99908300000000005
	.quad	0x3fea1dda059a73b4              # double 0.81614399999999998
	.quad	0x3fe8c8b0079a2835              # double 0.77449800000000002
	.quad	0x3fd19899bf5946c3              # double 0.27493899999999999
	.quad	0x3fed781a5870da5e              # double 0.92091100000000004
	.quad	0x3fc47e7c06e19b91              # double 0.16011
	.quad	0x3fe427136a400fbb              # double 0.62977000000000005
	.quad	0x3fe4ce0fc2eba27b              # double 0.65015400000000001
	.quad	0x3fe219e30014f8b6              # double 0.56566000000000005
	.quad	0x3fe5f705857afea4              # double 0.68640400000000001
	.quad	0x3fd8f5dfeb8d8234              # double 0.39000699999999999
	.quad	0x3fd93be22e5de15d              # double 0.39428000000000002
	.quad	0x3fd1e4217d2849cb              # double 0.27954899999999999
	.quad	0x3fc8cb07d0aed99d              # double 0.19369600000000001
	.quad	0x3fcae7d566cf41f2              # double 0.2102
	.quad	0x3fc316db0dd82fd7              # double 0.14913499999999999
	.quad	0x3feeaa3ad18d25ee              # double 0.95828000000000002
	.quad	0x3fe4d054ac29bf16              # double 0.65043099999999998
	.quad	0x3fc08cdea033e78e              # double 0.129299
	.quad	0x3fe66f4384ba0e84              # double 0.70108199999999998
	.quad	0x3fa7c7e6b3fe9fae              # double 0.046447000000000002
	.quad	0x3feb5e1c15097c81              # double 0.85523800000000005
	.quad	0x3fe8577531db445f              # double 0.76067600000000002
	.quad	0x3fd06ca89fc6da45              # double 0.25663200000000003
	.quad	0x3fd4e596c82e019b              # double 0.326513
	.quad	0x3fd5d8a548238540              # double 0.34134799999999998
	.quad	0x3fef612e83a109d0              # double 0.98061299999999996
	.quad	0x3fed715c63ae2542              # double 0.92008800000000002
	.quad	0x3fe64e4217d2849d              # double 0.69705300000000003
	.quad	0x3fe9dd13d74d594f              # double 0.80823699999999998
	.quad	0x3febe9595feda661              # double 0.87223499999999998
	.quad	0x3fcaec95bff04578              # double 0.210345
	.quad	0x3fcaba8c586876e2              # double 0.208818
	.quad	0x3fe131ad2135daad              # double 0.53731399999999996
	.quad	0x3fe7869e7fb267c7              # double 0.73518300000000003
	.quad	0x3fd9301a79fec99f              # double 0.39356099999999999
	.quad	0x3fe9e175d13d74d6              # double 0.80877200000000005
	.quad	0x3fde8ee6b8305d96              # double 0.47747200000000001
	.quad	0x3fe82dbc664d3bf3              # double 0.755583
	.quad	0x3fe65aa715831f04              # double 0.69856600000000002
	.quad	0x3fd9c89f40a2877f              # double 0.40287000000000001
	.quad	0x3fe3069e7fb267c7              # double 0.59455800000000003
	.quad	0x3feb1b1d92b7fe09              # double 0.84706000000000004
	.quad	0x3fc8a4fca42aed14              # double 0.19253500000000001
	.quad	0x3fc4face67d77fae              # double 0.16390399999999999
	.quad	0x3fd4bfe3b03e20cd              # double 0.324212
	.quad	0x3fc20dc33721d53d              # double 0.141045
	.quad	0x3fce1a9b8cb8e087              # double 0.23518700000000001
	.quad	0x3fb8ec743201040c              # double 0.097358
	.quad	0x3feb3cd9a52263d8              # double 0.85117799999999999
	.quad	0x3fbe2b8c75c4a83b              # double 0.117852
	.quad	0x3fe6590c0ad03d9b              # double 0.69837000000000005
	.quad	0x3fed3cc07aaef2c7              # double 0.91366599999999998
	.quad	0x3fe0f3b213e3e293              # double 0.529748
	.quad	0x3fe7e5cb35f3d7d4              # double 0.74680100000000005
	.quad	0x3fee88cc575c0768              # double 0.95419900000000001
	.quad	0x3fc7d9b1b79d909f              # double 0.186331
	.quad	0x3fe3ab020c49ba5e              # double 0.61462499999999998
	.quad	0x3fe328ef77f27fe5              # double 0.59874700000000003
	.quad	0x3fd6d56f32bdc26e              # double 0.35677700000000001
	.quad	0x3fe78372e6a76966              # double 0.734796
	.quad	0x3fe1a558ea7ce0fc              # double 0.55143399999999998
	.quad	0x3f73c46d82ba5a04              # double 0.0048260000000000004
	.quad	0x3fd59f340d4dc65c              # double 0.33784199999999998
	.quad	0x3fe10cbf2b239a39              # double 0.532806
	.quad	0x3fea8ce0b912dba5              # double 0.82969700000000002
	.quad	0x3fd5a89fc6da4485              # double 0.33841700000000002
	.quad	0x3fbfe047d3d4280b              # double 0.124516
	.quad	0x3fda51ce28ed5f14              # double 0.41124300000000003
	.quad	0x3fc90917d6b65a9b              # double 0.19559000000000001
	.quad	0x3fecbfb7a5f41aef              # double 0.89840299999999995
	.quad	0x3fe0f8e5c4eb56fc              # double 0.53038300000000005
	.quad	0x3fd52aa9f7b5aea3              # double 0.330729
	.quad	0x3fec0bdec5f394b8              # double 0.87644900000000003
	.quad	0x3faaaa5c5f7c675a              # double 0.052081000000000002
	.quad	0x3fedd49949e8815e              # double 0.93220199999999998
	.quad	0x3fedcc0df58c08b7              # double 0.93115899999999996
	.quad	0x3fdc3e4ef0281ba8              # double 0.441303
	.quad	0x3fec23b3636f3b21              # double 0.87935799999999997
	.quad	0x3fc84c48adeebb34              # double 0.189828
	.quad	0x3fe96fdeb52c9d17              # double 0.794906
	.quad	0x3fb3bf61aa3f034b              # double 0.077138999999999999
	.quad	0x3fd242784a9478c8              # double 0.28530699999999998
	.quad	0x3fb99ee88df3732a              # double 0.100081
	.quad	0x3fec1efd86a8fc0d              # double 0.87878299999999998
	.quad	0x3fe84690de093533              # double 0.75861400000000001
	.quad	0x3fda42070b8cfbfc              # double 0.41027999999999998
	.quad	0x3fdf098d477bbf94              # double 0.484958
	.quad	0x3fe2e72756861e93              # double 0.59071700000000005
	.quad	0x3fe38ccbc05d52c1              # double 0.61093699999999995
	.quad	0x3fe1e45c358afc48              # double 0.55912600000000001
	.quad	0x3fe1fb5286b59147              # double 0.56192900000000001
	.quad	0x3fa61ac57e23f24e              # double 0.043173000000000003
	.quad	0x3feca61bf37b8d3f              # double 0.89527699999999999
	.quad	0x3fb361565c2d2780              # double 0.075703999999999993
	.quad	0x3fe3746455eaee20              # double 0.607958
	.quad	0x3fef8915bdd76684              # double 0.98548400000000002
	.quad	0x3fbf10ecb74ddf87              # double 0.121352
	.quad	0x3fcc6ce358298cc1              # double 0.22207299999999999
	.quad	0x3fd841ede1198aec              # double 0.37902400000000003
	.quad	0x3fda7521144cbe1f              # double 0.41339900000000002
	.quad	0x3fd2f70153bd1676              # double 0.29632599999999998
	.quad	0x3fcf43d89ce4a7b5              # double 0.244258
	.quad	0x3fe4ca2db61bb060              # double 0.64968000000000004
	.quad	0x3feec3d68405b39e              # double 0.96140599999999998
	.quad	0x3fd4af5fd47bedb7              # double 0.32320399999999999
	.quad	0x3fe3235935fc3b4f              # double 0.59806499999999996
	.quad	0x3fed5955714b9cb7              # double 0.91715500000000005
	.quad	0x3fee266ba493c89f              # double 0.94218999999999997
	.quad	0x3fe829f59ccfaeff              # double 0.75512199999999996
	.quad	0x3fdf00c9539b8887              # double 0.48442299999999999
	.quad	0x3fe1609fe86833c6              # double 0.543045
	.quad	0x3fd1702602c9081c              # double 0.27246999999999999
	.quad	0x3fe7cf1800a7c5ac              # double 0.74402999999999997
	.quad	0x3fe1999fe43675de              # double 0.55000300000000002
	.quad	0x3fc7a038194c0160              # double 0.18457699999999999
	.quad	0x3fd5af8594291750              # double 0.33883799999999997
	.quad	0x3fb3bafd976ff3ae              # double 0.077072000000000001
	.quad	0x3fee21b7e0ac7da2              # double 0.94161600000000001
	.quad	0x3fbf9b994e1a3f46              # double 0.12346799999999999
	.quad	0x3fe93c9abb01c92e              # double 0.78864800000000002
	.quad	0x3fe5eabde3fbbd7b              # double 0.68490499999999999
	.quad	0x3fcc767d34df04de              # double 0.22236600000000001
	.quad	0x3fc0c17ebaf10236              # double 0.13090499999999999
	.quad	0x3fd07396d0917d6b              # double 0.25705499999999998
	.quad	0x3f4c1d6cf850df16              # double 8.5800000000000004E-4
	.quad	0x3fe850917d6b65aa              # double 0.75983500000000004
	.quad	0x3fecafab53d640ea              # double 0.89644400000000002
	.quad	0x3fdf3005814940bc              # double 0.48730600000000002
	.quad	0x3fcce779207d4e09              # double 0.22581399999999999
	.quad	0x3fe101e2584f4c6e              # double 0.53147999999999995
	.quad	0x3fee80f776c4827b              # double 0.95324299999999995
	.quad	0x3fe638e8ea39c51e              # double 0.69444700000000004
	.quad	0x3fdfc20d5629d841              # double 0.49621900000000002
	.quad	0x3fe870eb24a6a876              # double 0.76378400000000002
	.quad	0x3fc81c79b34a44c8              # double 0.18836900000000001
	.quad	0x3fe8e3c74fb549f9              # double 0.77780499999999997
	.quad	0x3fda0f27bb2fec57              # double 0.40717500000000001
	.quad	0x3fd494141e9af5ba              # double 0.32153799999999999
	.quad	0x3fb8ad794a6eb91b              # double 0.096396999999999997
	.quad	0x3fd2723aafff36ac              # double 0.28822199999999998
	.quad	0x3fd1ed9dfdac68a9              # double 0.28012799999999999
	.quad	0x3fe6239e6ab9b23e              # double 0.69184800000000002
	.quad	0x3fd4a369fcf3dc05              # double 0.32247399999999998
	.quad	0x3fed60eb67c286f9              # double 0.91808100000000004
	.quad	0x3fe67beb9e492bc3              # double 0.702627
	.quad	0x3fe501a36e2eb1c4              # double 0.65644999999999998
	.quad	0x3fde202107b78466              # double 0.47071099999999999
	.quad	0x3fbf2edfe75bc44c              # double 0.121809
	.quad	0x3fef32745bf26f1e              # double 0.97490900000000003
	.quad	0x3feb41fa76534374              # double 0.851804
	.quad	0x3fdf98bb4d48882f              # double 0.493697
	.quad	0x3fa7fd82773e24ff              # double 0.046856000000000002
	.quad	0x3feffbc5de9c022a              # double 0.99948400000000004
	.quad	0x3fe359210385c67e              # double 0.60463
	.quad	0x3fe3b41bfbdf090f              # double 0.61573599999999995
	.quad	0x3fe07396d0917d6b              # double 0.51410999999999996
	.quad	0x3fbfdcdf69878317              # double 0.12446400000000001
	.quad	0x3fe7daab47410731              # double 0.74544299999999997
	.quad	0x3fe2bd09e12a51e3              # double 0.58557599999999999
	.quad	0x3fc56c1e364bec68              # double 0.16736200000000001
	.quad	0x3fa38561d4306e5d              # double 0.038127000000000001
	.quad	0x3fe1256ffc115df6              # double 0.53581999999999996
	.quad	0x3fc30635a426bb56              # double 0.14862700000000001
	.quad	0x3fd9e047d3d4280b              # double 0.40431400000000001
	.quad	0x3f83333333333333              # double 0.0093749999999999996
	.quad	0x3fd92b51bd61f5be              # double 0.39326899999999998
	.quad	0x3fee785942917508              # double 0.952191
	.quad	0x3fc17b5aea3161a2              # double 0.136577
	.quad	0x3febcd099e0e7360              # double 0.86877899999999996
	.quad	0x3fd389a459103c8e              # double 0.30527599999999999
	.quad	0x3fea9fa97e132b56              # double 0.83199000000000001
	.quad	0x3fe2bbcf4e874c90              # double 0.585426
	.quad	0x3fe6c7f993d5347a              # double 0.71191099999999996
	.quad	0x3fdf3f20a73f748a              # double 0.488228
	.quad	0x3fee39c304ccee5b              # double 0.94455100000000003
	.quad	0x3feb89bb6aa4b988              # double 0.86056299999999997
	.quad	0x3fef631f8a0902de              # double 0.98085
	.quad	0x3fe0d9f90539fba4              # double 0.52660799999999997
	.quad	0x3fe3e71ac14c660a              # double 0.62196099999999999
	.quad	0x3fe0108a265f0f5a              # double 0.50201899999999999
	.quad	0x3fd9ab81f969e3c9              # double 0.40109299999999998
	.quad	0x3fe765d7cb2d905c              # double 0.731182
	.quad	0x3fa4901d19157abc              # double 0.040162000000000003
	.quad	0x3fe0564302b40f67              # double 0.51053000000000004
	.quad	0x3fd9b7b6bb129025              # double 0.40183799999999997
	.quad	0x3fe914f0520d130e              # double 0.783806
	.quad	0x3feb17a02fb5d031              # double 0.846634
	.quad	0x3fe4d942917507ea              # double 0.65152100000000002
	.quad	0x3fd039cd8127b2cc              # double 0.25352799999999998
	.quad	0x3fc814e7ee9142b3              # double 0.188138
	.quad	0x3fdc5f633ce63a5c              # double 0.44332199999999999
	.quad	0x3feae6ba493c89f4              # double 0.84066499999999999
	.quad	0x3fea7778dd616f87              # double 0.82708400000000004
	.quad	0x3fb411e42e126202              # double 0.078397999999999995
	.quad	0x3fe67c58ab92c062              # double 0.70267900000000005
	.quad	0x3fed842fa5093965              # double 0.92238600000000004
	.quad	0x3fd52db61bb05faf              # double 0.33091500000000001
	.quad	0x3fe5386b15f88fc9              # double 0.66313699999999998
	.quad	0x3fb0a73f748a1598              # double 0.065051999999999999
	.quad	0x3fe8fc6fbd273d5c              # double 0.78081500000000003
	.quad	0x3feb61049235f80a              # double 0.85559300000000005
	.quad	0x3fd5ea1405708249              # double 0.34241199999999999
	.quad	0x3fc7a11233df2a9d              # double 0.18460299999999999
	.quad	0x3fd498d477bbf940              # double 0.321828
	.quad	0x3fd65f02c4d65e46              # double 0.349549
	.quad	0x3fe84fc3f811f4f5              # double 0.759737
	.quad	0x3fcfd4f15e7c8d19              # double 0.24868599999999999
	.quad	0x3fbffd82773e24ff              # double 0.124962
	.quad	0x3fe5521bc126a65d              # double 0.666273
	.quad	0x3fb8bb4d48882f0e              # double 0.096607999999999999
	.quad	0x3fe13e9856a37ac4              # double 0.53889100000000001
	.quad	0x3fda94573a797892              # double 0.41530400000000001
	.quad	0x3feaf8ca8198f1d4              # double 0.84287
	.quad	0x3feb7264a16a4873              # double 0.85771399999999998
	.quad	0x3fab72c5197a2489              # double 0.053609999999999998
	.quad	0x3fd3b7e4de3b8a1a              # double 0.30809900000000001
	.quad	0x3fd2a32b12d3415b              # double 0.291209
	.quad	0x3fe0637585be1a82              # double 0.51214099999999996
	.quad	0x3fee1c99285a921d              # double 0.94099100000000002
	.quad	0x3fed9e44fa05143c              # double 0.92557
	.quad	0x3fe402773e24febd              # double 0.625301
	.quad	0x3feeae33eff19503              # double 0.95876499999999997
	.quad	0x3fafb24638c97529              # double 0.061906999999999997
	.quad	0x3fd322ab25b317f0              # double 0.29899100000000001
	.quad	0x3fe539085f4a1273              # double 0.66321200000000002
	.quad	0x3fc585942917507f              # double 0.16813900000000001
	.quad	0x3fe1554b8bef8ceb              # double 0.54166199999999998
	.quad	0x3fe5cd099e0e7360              # double 0.68127899999999997
	.quad	0x3fd963886594af4f              # double 0.3967
	.quad	0x3fe0cfe9b7bf1e8e              # double 0.52537999999999996
	.quad	0x3fc33d6c72192210              # double 0.150312
	.quad	0x3feaeef8055fbb51              # double 0.84167099999999995
	.quad	0x3fd69491f2dc2b0f              # double 0.35281800000000002
	.quad	0x3fd1f24d8fd5cb79              # double 0.280414
	.quad	0x3fce050374ff865d              # double 0.23452799999999999
	.quad	0x3fbc4523f67f4dbe              # double 0.11043
	.quad	0x3fd476d117b5286b              # double 0.31975199999999998
	.quad	0x3fe6f811f4f50a03              # double 0.71778200000000003
	.quad	0x3fd62ff08893b7d8              # double 0.34667599999999998
	.quad	0x3fe8d26527a20579              # double 0.77568300000000001
	.quad	0x3fdc6cc1ca3a4b55              # double 0.44413799999999998
	.quad	0x3fe41bc33f85510d              # double 0.62838899999999998
	.quad	0x3fb50f1f57b41bfc              # double 0.082262000000000002
	.quad	0x3fec9a1fd1569f49              # double 0.893814
	.quad	0x3fe59858bc59b802              # double 0.67484699999999997
	.quad	0x3feead6883771865              # double 0.95866799999999996
	.quad	0x3feb8e991ff7164c              # double 0.86115699999999995
	.quad	0x3fd2aeb80ecfa69c              # double 0.29191400000000001
	.quad	0x3fb90fe8ab4fa483              # double 0.097899
	.quad	0x3fe821b5c7cd898b              # double 0.75411499999999998
	.quad	0x3fef5629d8409e56              # double 0.97926800000000003
	.quad	0x3fef2cba732df506              # double 0.97421000000000002
	.quad	0x3fe0f81c714fce74              # double 0.53028699999999995
	.quad	0x3fe4370ac3a860dd              # double 0.63171900000000003
	.quad	0x3fe2a3465625a683              # double 0.58243100000000003
	.quad	0x3fc182773e24febd              # double 0.136794
	.quad	0x3fec61d4306e5cd5              # double 0.88694200000000001
	.quad	0x3fda0e3cd9a52264              # double 0.40711900000000001
	.quad	0x3fd02b1704ff4342              # double 0.25263000000000002
	.quad	0x3fe896a487336588              # double 0.76838899999999999
	.quad	0x3f7ad7518b0d0edc              # double 0.0065529999999999998
	.quad	0x3fc1a9b068123811              # double 0.137991
	.quad	0x3fe464d1a6506141              # double 0.63730699999999996
	.quad	0x3fe020c49ba5e354              # double 0.504
	.quad	0x3fd883f91e646f15              # double 0.38305499999999998
	.quad	0x3fecc623d0bfa094              # double 0.89918699999999995
	.quad	0x3fb42938de6ddf01              # double 0.078754000000000005
	.quad	0x3fa88e9b38d60a63              # double 0.047962999999999999
	.quad	0x3fdd6f9fcb0c026d              # double 0.45993800000000001
	.quad	0x3febc4b90214ad36              # double 0.86776399999999998
	.quad	0x3fe610adcd2d44dd              # double 0.68953600000000004
	.quad	0x3fe25495182a9931              # double 0.57282500000000003
	.quad	0x3fa690364388ebcc              # double 0.044068999999999997
	.quad	0x3fed9cb46bacf744              # double 0.92537899999999995
	.quad	0x3fc383d790752daa              # double 0.15246100000000001
	.quad	0x3fb8cb6c7a7c9de0              # double 0.096853999999999995
	.quad	0x3fe0c9e8815e3971              # double 0.52464699999999997
	.quad	0x3fea4e9c4545846f              # double 0.82209600000000005
	.quad	0x3fb89d495182a993              # double 0.096149999999999999
	.quad	0x3fe5590e23af31b1              # double 0.66712099999999996
	.quad	0x3fe45332acfb762e              # double 0.63515600000000005
	.quad	0x3fe17fac1d29dc72              # double 0.54683499999999996
	.quad	0x3fd00746455eaee2              # double 0.250444
	.quad	0x3fc82cc2d6a9c561              # double 0.18886600000000001
	.quad	0x3fed475e6362a5e8              # double 0.91496200000000005
	.quad	0x3fedc3f811f4f50a              # double 0.930172
	.quad	0x3fd411e85fd04a30              # double 0.31359300000000001
	.quad	0x3fbf79c842fa5094              # double 0.12295200000000001
	.quad	0x3fe2a1db877ab325              # double 0.58225800000000005
	.quad	0x3fee65de15ca6ca0              # double 0.94993499999999997
	.quad	0x3fe80a3f8982cb21              # double 0.751251
	.quad	0x3fec827525460aa6              # double 0.89092499999999997
	.quad	0x3fedaff08893b7d8              # double 0.92772699999999997
	.quad	0x3fce33b5393250b5              # double 0.235953
	.quad	0x3fd30ee49f51697f              # double 0.29778399999999999
	.quad	0x3fe15e39713ad5bf              # double 0.54275200000000001
	.quad	0x3faad9cf13cee9dd              # double 0.052442999999999997
	.quad	0x3fdba3d70a3d70a4              # double 0.43187500000000001
	.quad	0x3fe02999567dbb17              # double 0.50507800000000003
	.quad	0x3fd1b26394face68              # double 0.27651300000000001
	.quad	0x3fe619ce075f6fd2              # double 0.69064999999999999
	.quad	0x3fe029845dc83233              # double 0.50506799999999996
	.quad	0x3fefabc72e275ab8              # double 0.98971900000000001
	.quad	0x3f8f9acffa7eb6bf              # double 0.015432
	.quad	0x3fe35aa0cae642c0              # double 0.60481300000000005
	.quad	0x3facda6e75ff609e              # double 0.056354000000000001
	.quad	0x3fe9827b6fe2e6eb              # double 0.79717800000000005
	.quad	0x3fe1ce13f4a98aa8              # double 0.55640599999999996
	.quad	0x3fe9163dc486ad2e              # double 0.78396500000000002
	.quad	0x3fe2faf640639d5e              # double 0.59313499999999997
	.quad	0x3fe918efbb0e5e68              # double 0.78429400000000005
	.quad	0x3fd7be1eb4202d9d              # double 0.370979
	.quad	0x3fded22856605ee5              # double 0.48157699999999998
	.quad	0x3fc6085b18548a9c              # double 0.17213000000000001
	.quad	0x3f8ae147ae147ae1              # double 0.013125
	.quad	0x3fe646412cf0f9d3              # double 0.69607600000000003
	.quad	0x3fde3fd933e35c5b              # double 0.47264699999999998
	.quad	0x3fd246f587d6f976              # double 0.28558099999999997
	.quad	0x3fcc046412cf0f9d              # double 0.218884
	.quad	0x3fe3b649d388a8b1              # double 0.61600200000000005
	.quad	0x3fd7ec892ab68cef              # double 0.37381199999999998
	.quad	0x3fe569d7342edbb6              # double 0.66917000000000004
	.quad	0x3fded4a5df2239e7              # double 0.48172900000000002
	.quad	0x3fc21754b05b7cfe              # double 0.14133699999999999
	.quad	0x3fb7e4cd74927914              # double 0.093335000000000001
	.quad	0x3fdfec7000431bdf              # double 0.49880600000000003
	.quad	0x3fa7a7221858bc5a              # double 0.046197000000000002
	.quad	0x3fe44c07aaef2c73              # double 0.63428099999999998
	.quad	0x3fdf18c9fb6134ce              # double 0.48588799999999999
	.quad	0x3fe37caa7589efd8              # double 0.60896799999999995
	.quad	0x3fbc904f6dfc5cdd              # double 0.111577
	.quad	0x3fe8617a02fb5d03              # double 0.76189899999999999
	.quad	0x3fd73bd9cae21102              # double 0.36302800000000002
	.quad	0x3fe370dc768dfbd7              # double 0.60752700000000004
	.quad	0x3fe477985271bcdc              # double 0.63959900000000003
	.quad	0x3f9883ba3443d46b              # double 0.023939999999999999
	.quad	0x3fb2647fdc5931ca              # double 0.071845999999999993
	.quad	0x3fe18130164840e1              # double 0.54701999999999995
	.quad	0x3fd8bb906466b1e6              # double 0.38644800000000001
	.quad	0x3fee64a16a487336              # double 0.94978399999999996
	.quad	0x3fe7d1d25aab4741              # double 0.744363
	.quad	0x3fee414a4d2b2bfe              # double 0.94547000000000003
	.quad	0x3fa1cdc443914f48              # double 0.034772999999999998
	.quad	0x3fef6555c52e72da              # double 0.98111999999999999
	.quad	0x3fe34a31e7d9988d              # double 0.60280699999999998
	.quad	0x3fa362c77574f723              # double 0.037863000000000001
	.quad	0x3fe200f12c27a637              # double 0.56261499999999998
	.quad	0x3faec2ce4649906d              # double 0.060080000000000001
	.quad	0x3fecedf1e0828c37              # double 0.90404600000000002
	.quad	0x3fb6059a73b42cc3              # double 0.086023000000000002
	.quad	0x3fc7ebaf102363b2              # double 0.18687999999999999
	.quad	0x3fc21deacc92146a              # double 0.141538
	.quad	0x3fe856fb8f57f738              # double 0.76061800000000002
	.quad	0x3fe9f939a7c17a89              # double 0.81167299999999998
	.quad	0x3fc25a9a8049667b              # double 0.14338999999999999
	.quad	0x3fd7d7b634dad320              # double 0.37254100000000001
	.quad	0x3fd0bfec13b9f128              # double 0.261714
	.quad	0x3fd50a06e9ff0cbb              # double 0.328737
	.quad	0x3fe90e410b630a91              # double 0.78298999999999996
	.quad	0x3fd4f94c87980f56              # double 0.32771600000000001
	.quad	0x3fd92a62aa19439e              # double 0.39321200000000001
	.quad	0x3fcb7acc4ef88b97              # double 0.21468499999999999
	.quad	0x3fd80795f676ea42              # double 0.37546299999999999
	.quad	0x3feae392e1ef73c1              # double 0.84028000000000003
	.quad	0x3fe4c3dccea28fe2              # double 0.64890899999999996
	.quad	0x3fbdf10667f90d9d              # double 0.11695899999999999
	.quad	0x3f831e3a7daa4fca              # double 0.0093349999999999995
	.quad	0x3fb24a59c065b63d              # double 0.071446999999999997
	.quad	0x3fde73365881a155              # double 0.47578199999999998
	.quad	0x3fa517c5ef62f9ca              # double 0.041196999999999998
	.quad	0x3fdc3076c050bd88              # double 0.44045800000000002
	.quad	0x3fe2ded4a1ad6452              # double 0.58970100000000003
	.quad	0x3fdacfc829cfdd23              # double 0.41893200000000003
	.quad	0x3fe01ca5bd944aa5              # double 0.50349699999999997
	.quad	0x3fd9acf312b1b36c              # double 0.40118100000000001
	.quad	0x3fe300e6afcce1c6              # double 0.59386000000000005
	.quad	0x3fe3d43d03968d76              # double 0.61965800000000004
	.quad	0x3fedc5260f5e41d5              # double 0.93031600000000003
	.quad	0x3fd9b7c7820a30db              # double 0.40184199999999998
	.quad	0x3fe74c5fbf83382e              # double 0.72807299999999997
	.quad	0x3fe0a43fe5c91d15              # double 0.52005000000000001
	.quad	0x3fefdd00f776c482              # double 0.99572799999999995
	.quad	0x3fedd9146e4c0df6              # double 0.93274900000000005
	.quad	0x3fd1bddb9841aac5              # double 0.27721299999999999
	.quad	0x3fea91c2a0232096              # double 0.83029299999999995
	.quad	0x3fe2724fa8b4bf90              # double 0.57645400000000002
	.quad	0x3fed2a1d755bccaf              # double 0.91139099999999995
	.quad	0x3fd0ff69014b599b              # double 0.26558900000000002
	.quad	0x3fddeeb702602c91              # double 0.46769500000000003
	.quad	0x3fd8ae3e6c4c5975              # double 0.38563500000000001
	.quad	0x3fd1e75bc44bf4cb              # double 0.27974599999999999
	.quad	0x3fea7f3cf70153bd              # double 0.82803199999999999
	.quad	0x3f8c73eee5258927              # double 0.013893000000000001
	.quad	0x3fe940d6f544bb1b              # double 0.78916500000000001
	.quad	0x3f93d640e9d51b50              # double 0.019372
	.quad	0x3fb4e6e221c8a7a4              # double 0.081647999999999998
	.quad	0x3fe5ded6ba8c5868              # double 0.68345199999999995
	.quad	0x3fe27f23cc8de2ac              # double 0.57801999999999998
	.quad	0x3fec295421c04428              # double 0.88004499999999997
	.quad	0x3fe863c31df761cc              # double 0.76217800000000002
	.quad	0x3fd3a4acf312b1b3              # double 0.30692599999999998
	.quad	0x3fee29c560c7c0f4              # double 0.94259899999999996
	.quad	0x3feb69c23b7952d2              # double 0.85665999999999998
	.quad	0x3f9650a45d41fa76              # double 0.021791999999999999
	.quad	0x3fefe33eff195033              # double 0.99648999999999998
	.quad	0x3f922c01e68a0d35              # double 0.017746000000000001
	.quad	0x3fd03482be8bc16a              # double 0.25320500000000001
	.quad	0x3fd6f70153bd1676              # double 0.35882599999999998
	.quad	0x3fc81e57d9dba909              # double 0.18842600000000001
	.quad	0x3fee82c6ef3d3a1d              # double 0.95346399999999998
	.quad	0x3fdb3beec39799e5              # double 0.42553299999999999
	.quad	0x3fe93f3e0370cdc8              # double 0.78896999999999995
	.quad	0x3fe1892253111f0c              # double 0.54798999999999998
	.quad	0x3fd4b302f72b4528              # double 0.32342599999999999
	.quad	0x3fcd65ecc3e3193f              # double 0.22967299999999999
	.quad	0x3fee5de7a743a648              # double 0.948963
	.quad	0x3f8946c332f01755              # double 0.012342000000000001
	.quad	0x3fe7404c8bc9cd3e              # double 0.72659899999999999
	.quad	0x3fdd3b85e80bed74              # double 0.456758
	.quad	0x3fccbd556084a516              # double 0.22452800000000001
	.quad	0x3fc66940357a3550              # double 0.17508699999999999
	.quad	0x3fd74e4c942d490e              # double 0.36415399999999998
	.quad	0x3fa5249e44fa0514              # double 0.041294999999999998
	.quad	0x3fe6d959a30984e4              # double 0.714032
	.quad	0x3fe484189374bc6a              # double 0.64112499999999994
	.quad	0x3fee3dee78183f92              # double 0.94506000000000001
	.quad	0x3fb545b6c3760bf6              # double 0.083095000000000002
	.quad	0x3fe36050374ff866              # double 0.60550700000000002
	.quad	0x3fc75f99c38b04ab              # double 0.18260499999999999
	.quad	0x3fd7916440f23897              # double 0.36824899999999999
	.quad	0x3fdc6e86c6583e85              # double 0.44424599999999997
	.quad	0x3fb4c3f3e0370cdd              # double 0.081115000000000007
	.quad	0x3fe1693e1c9b413a              # double 0.54409700000000005
	.quad	0x3fdef94855da2728              # double 0.48396499999999998
	.quad	0x3fe193293d102bc7              # double 0.54921399999999998
	.quad	0x3fd928a6117720c9              # double 0.39310600000000001
	.quad	0x3fdeaaa7ded6ba8c              # double 0.47916599999999998
	.quad	0x3fecfb3b7521144d              # double 0.90566800000000003
	.quad	0x3fb1bfceb78897ea              # double 0.069333000000000006
	.quad	0x3fe121c25d074214              # double 0.53537100000000004
	.quad	0x3fe1c83cafb3b752              # double 0.55569299999999999
	.quad	0x3fefceebf65dbfcf              # double 0.99400900000000003
	.quad	0x3fee5464dc22ab26              # double 0.94780200000000003
	.quad	0x3fec268f4b61fe22              # double 0.87970700000000002
	.quad	0x3fd26eb91b3f20a7              # double 0.28800799999999999
	.quad	0x3fd50ea18372e6a7              # double 0.32901799999999998
	.quad	0x3feca14f0520d131              # double 0.89469100000000001
	.quad	0x3f91e215336deb96              # double 0.017464
	.quad	0x3fe2c9b413986339              # double 0.58712200000000003
	.quad	0x3fe532bfdb4cc250              # double 0.66244499999999995
	.quad	0x3fe92e0e30446b6a              # double 0.78687200000000002
	.quad	0x3fe026809d495183              # double 0.50470000000000004
	.quad	0x3fd70ac7da1ec4e7              # double 0.36003299999999999
	.quad	0x3fd597edc7ef177a              # double 0.33739799999999998
	.quad	0x3fee60370cdc8755              # double 0.94924500000000001
	.quad	0x3fd2295e9e1b089a              # double 0.283775
	.quad	0x3f8c23b7952d234f              # double 0.01374
	.quad	0x3fdf0f1b25f633ce              # double 0.48529699999999998
	.quad	0x3fe3fe47991bc558              # double 0.62478999999999996
	.quad	0x3fc01dc0db2702a3              # double 0.12590799999999999
	.quad	0x3fb054cdb7ae5797              # double 0.063794000000000003
	.quad	0x3fe287dd44135547              # double 0.57908499999999996
	.quad	0x3fe80754f3775b81              # double 0.75089499999999998
	.quad	0x3fe6e9c886162f16              # double 0.71603799999999995
	.quad	0x3feb7fd82773e250              # double 0.85935600000000001
	.quad	0x3fe03a5c1c6088d7              # double 0.50712400000000002
	.quad	0x3fe7f69a91105e1c              # double 0.74885299999999999
	.quad	0x3fe7f8982cb20fb2              # double 0.74909599999999998
	.quad	0x3fa0ccff21b3aeef              # double 0.032814000000000003
	.quad	0x3fce0fecdd0d8cb0              # double 0.23486099999999999
	.quad	0x3fe37a67a52ac754              # double 0.60869200000000001
	.quad	0x3fe34da4ce8101f3              # double 0.60322799999999999
	.quad	0x3fdb5a4acf312b1b              # double 0.42738599999999999
	.quad	0x3fe2a278d0cc35ce              # double 0.58233299999999999
	.quad	0x3fab7521144cbe1f              # double 0.053628000000000002
	.quad	0x3feb04189374bc6a              # double 0.84424999999999994
	.quad	0x3fe9784449dbec25              # double 0.79593100000000006
	.quad	0x3fe5fcaa7589efd8              # double 0.68709299999999995
	.quad	0x3fea209edbf8b9bb              # double 0.81648200000000004
	.quad	0x3fda78d4fdf3b646              # double 0.41362500000000002
	.quad	0x3fe9168d759ee88e              # double 0.78400300000000001
	.quad	0x3fe7577963992c8c              # double 0.72942799999999997
	.quad	0x3fe0b04ee7c49fd8              # double 0.52152200000000004
	.quad	0x3fe2469f8c21e1d2              # double 0.57112099999999999
	.quad	0x3fed4a07f66e86c6              # double 0.91528699999999996
	.quad	0x3fd538d1d8a54824              # double 0.33159300000000003
	.quad	0x3fe1fa1a0cf1800a              # double 0.56177999999999995
	.quad	0x3fe60f47304039ac              # double 0.68936500000000001
	.quad	0x3fedeaa087ca643d              # double 0.93489100000000003
	.quad	0x3fc29142b302f72b              # double 0.14505799999999999
	.quad	0x3fbfa81dc0db2703              # double 0.12365900000000001
	.quad	0x3fcc48a58b3f63c3              # double 0.220967
	.quad	0x3fe9aa0cae642bfa              # double 0.80200800000000005
	.quad	0x3fae9a2c669057d1              # double 0.059769999999999997
	.quad	0x3fcc98d477bbf940              # double 0.223414
	.quad	0x3fd75e4606748e47              # double 0.36512899999999998
	.quad	0x3feb4ff21b3aeee9              # double 0.85350899999999996
	.quad	0x3fe7d5a9eb2074eb              # double 0.74483200000000005
	.quad	0x3fcab0ea18372e6a              # double 0.20852399999999999
	.quad	0x3fef323571d1d474              # double 0.97487900000000005
	.quad	0x3fe09a3f4666ec9e              # double 0.51882899999999998
	.quad	0x3fda42bf9830e3ce              # double 0.41032400000000002
	.quad	0x3fc4fc3f811f4f51              # double 0.16394800000000001
	.quad	0x3fb32e1693c03bc5              # double 0.074922000000000002
	.quad	0x3fed24e592967019              # double 0.91075399999999995
	.quad	0x3fb79713ad5bee3d              # double 0.092148999999999995
	.quad	0x3fd17caa7589efd8              # double 0.27323399999999998
	.quad	0x3fefb86b15f88fc9              # double 0.99126199999999997
	.quad	0x3fb1e26916440f24              # double 0.069861000000000006
	.quad	0x3fd66c8f75536934              # double 0.35037600000000002
	.quad	0x3fd01b0468448cf8              # double 0.25164900000000001
	.quad	0x3fe48956c0d6f545              # double 0.64176500000000003
	.quad	0x3fe9eb0d9513f8db              # double 0.80994299999999997
	.quad	0x3febf8d92fb19e73              # double 0.87412699999999999
	.quad	0x3fc495b78cc9a77e              # double 0.16081899999999999
	.quad	0x3fe75573647baa9b              # double 0.72918099999999997
	.quad	0x3fd97036c9c0a8d2              # double 0.39747399999999999
	.quad	0x3fc16d4c33b53932              # double 0.13614799999999999
	.quad	0x3fe996bfca85cab0              # double 0.79965200000000003
	.quad	0x3fea48d3ae685db7              # double 0.82138999999999995
	.quad	0x3fc0f1a1986b9c30              # double 0.13237399999999999
	.quad	0x3feb800000000000              # double 0.859375
	.quad	0x3fd024b33daf8df8              # double 0.25224000000000002
	.quad	0x3fc36a26e5471716              # double 0.15167700000000001
	.quad	0x3fde70da5daf07c0              # double 0.47563800000000001
	.quad	0x3fe2b98e97071822              # double 0.58515099999999998
	.quad	0x3fe675be5d9e40c8              # double 0.70187299999999997
	.quad	0x3fee80e6afcce1c6              # double 0.95323500000000005
	.quad	0x3fd4a433508f648c              # double 0.32252199999999998
	.quad	0x3fd65d31337eb28e              # double 0.34943800000000003
	.quad	0x3fe31d96e9bbf0dc              # double 0.59736199999999995
	.quad	0x3fecf221858bc59c              # double 0.90455700000000005
	.quad	0x3fa18201cd5f99c4              # double 0.034195000000000003
	.quad	0x3feec84944ed6fdb              # double 0.96194900000000005
	.quad	0x3fe1b3fe9fadafd1              # double 0.55322199999999999
	.quad	0x3feb1f7f8ca8198f              # double 0.84759499999999999
	.quad	0x3fcc4a2fcefaa476              # double 0.22101399999999999
	.quad	0x3fe2bc05d52c16df              # double 0.58545199999999997
	.quad	0x3fe48a5482385404              # double 0.64188599999999996
	.quad	0x3fe201322f2734f8              # double 0.56264599999999998
	.quad	0x3feb7b24638c9753              # double 0.85878200000000005
	.quad	0x3fd4f43c7d5ed070              # double 0.327407
	.quad	0x3fb6e642bf9830e4              # double 0.089451000000000003
	.quad	0x3fea917b5286b591              # double 0.83025899999999997
	.quad	0x3fcbb4edb2f661f2              # double 0.21645900000000001
	.quad	0x3fc7fb7a5f41aef7              # double 0.187362
	.quad	0x3fec3267c6b8b695              # double 0.88115299999999996
	.quad	0x3fc0fdd22856605f              # double 0.132746
	.quad	0x3fde9e1b089a0275              # double 0.47839999999999999
	.quad	0x3fabeea209aaa3ad              # double 0.054554999999999999
	.quad	0x3fe4c1871e6cd291              # double 0.64862399999999998
	.quad	0x3fd9024f6598e10d              # double 0.390766
	.quad	0x3fce9ff0cbaf965b              # double 0.239256
	.quad	0x3fe84be61cffeb07              # double 0.75926499999999997
	.quad	0x3fe5b41bfbdf090f              # double 0.67823599999999995
	.quad	0x3fed0995aaf78fef              # double 0.90742
	.quad	0x3fdf176145953587              # double 0.48580200000000001
	.quad	0x3fe3d2ac753e707e              # double 0.61946699999999999
	.quad	0x3fe3c167a95c853c              # double 0.61735899999999999
	.quad	0x3fe2ee32e3821af8              # double 0.59157700000000002
	.quad	0x3fc8374ff865d7cb              # double 0.189188
	.quad	0x3fec9e4712e40853              # double 0.89432100000000003
	.quad	0x3fb64052d666a982              # double 0.086918999999999996
	.quad	0x3fb09acbc8c0ce92              # double 0.064862000000000003
	.quad	0x3fe78fadf2ecf206              # double 0.73628899999999997
	.quad	0x3fd389efd86a8fc1              # double 0.30529400000000001
	.quad	0x3fd55d3dc8b86b16              # double 0.333816
	.quad	0x3fe75e95b78cc9a7              # double 0.73029599999999995
	.quad	0x3fded6e47dc37a3e              # double 0.48186600000000002
	.quad	0x3feaf442c7fbacb4              # double 0.84231699999999998
	.quad	0x3fe3dfa00e27e0f0              # double 0.62104800000000004
	.quad	0x3fef4e3de6149c6f              # double 0.97830099999999997
	.quad	0x3fc1d2fa0d77b7c8              # double 0.13925100000000001
	.quad	0x3fe4f416bdb1a6d7              # double 0.65479600000000004
	.quad	0x3fed934efcbd5561              # double 0.92423200000000005
	.quad	0x3fb8870110a137f4              # double 0.095810000000000006
	.quad	0x3fbfeb399f5dfeb9              # double 0.124683
	.quad	0x3fe88303c07ee0b1              # double 0.76599300000000003
	.quad	0x3fdbecd4aa10e022              # double 0.43633
	.quad	0x3fd168d32830a0b2              # double 0.27202300000000001
	.quad	0x3fdea8b8f14db595              # double 0.47904799999999997
	.quad	0x3feadcaf2d7f950c              # double 0.83943900000000004
	.quad	0x3fec4cc46950fc72              # double 0.88437100000000002
	.quad	0x3febb549f94855da              # double 0.86587999999999998
	.quad	0x3fcbe61cffeb074a              # double 0.21795999999999999
	.quad	0x3fe1b27674d16335              # double 0.55303500000000005
	.quad	0x3fe8fb267c6b8b69              # double 0.78065799999999996
	.quad	0x3fe3b862b27cbf6e              # double 0.61625799999999997
	.quad	0x3fe86032db1e9f27              # double 0.76174299999999995
	.quad	0x3fe91e060fe47992              # double 0.78491500000000003
	.quad	0x3f6b584b1ab0856e              # double 0.0033379999999999998
	.quad	0x3fd7b4070329802c              # double 0.370363
	.quad	0x3fc8364388ebcc6c              # double 0.18915599999999999
	.quad	0x3fe0b8bac710cb29              # double 0.52254999999999996
	.quad	0x3fda71cda2b5a20e              # double 0.41319600000000001
	.quad	0x3fd2b22d0e560419              # double 0.29212500000000002
	.quad	0x3febf961804d9839              # double 0.87419199999999997
	.quad	0x3fec65eedcc20d56              # double 0.88744299999999998
	.quad	0x3f7f8a0902de00d2              # double 0.0077000000000000002
	.quad	0x3feef47d805e5f31              # double 0.96734500000000001
	.quad	0x3fdff19934efcbd5              # double 0.49912099999999998
	.quad	0x3fc49a91105e1c15              # double 0.160967
	.quad	0x3fd890abb44e50c6              # double 0.38383
	.quad	0x3fe838ac18f81e8a              # double 0.75691799999999998
	.quad	0x3fdeb8ed1bf7ad4b              # double 0.48003699999999999
	.quad	0x3fe3d44998d045fe              # double 0.61966399999999999
	.quad	0x3fc7cfd4bf0995ab              # double 0.18603
	.quad	0x3fe2c9dbec2480e9              # double 0.58714100000000002
	.quad	0x3fee7eaa2a0a9585              # double 0.95296199999999998
	.quad	0x3fda5019f3c70c99              # double 0.41113899999999998
	.quad	0x3fe9504e618ce2d2              # double 0.79105300000000001
	.quad	0x3fbca78290689870              # double 0.111931
	.quad	0x3fcdd30ad46f587d              # double 0.23300299999999999
	.quad	0x3fe245f9df548ece              # double 0.57104200000000005
	.quad	0x3fb1b7e0ac7da1ec              # double 0.069211999999999996
	.quad	0x3fe1575e2046c765              # double 0.54191500000000004
	.quad	0x3fb6a3cea6c1a049              # double 0.088437000000000002
	.quad	0x3fbcd8665e02ea96              # double 0.112677
	.quad	0x3f9aa2a0a958537e              # double 0.026010999999999999
	.quad	0x3fc92007dd441355              # double 0.19628999999999999
	.quad	0x3fea25cc426351df              # double 0.81711400000000001
	.quad	0x3fd12291fb3fa6df              # double 0.267735
	.quad	0x3fe656de33269df9              # double 0.69810399999999995
	.quad	0x3fe2d9af9ebe9c88              # double 0.58907299999999996
	.quad	0x3fcde52157689ca2              # double 0.23355500000000001
	.quad	0x3fd21d25aab47410              # double 0.28302899999999998
	.quad	0x3fd3d462c343b70f              # double 0.309838
	.quad	0x3fde0945f9df548f              # double 0.46931600000000001
	.quad	0x3febc42a66dbd72c              # double 0.86769600000000002
	.quad	0x3fede2eb1c432ca5              # double 0.93394999999999995
	.quad	0x3fce3760bf5d7881              # double 0.236065
	.quad	0x3fecca148ba83f4f              # double 0.89966800000000002
	.quad	0x3fd9371da37ef5a9              # double 0.39398899999999998
	.quad	0x3feff7e3d1cc100e              # double 0.99900999999999995
	.quad	0x3fe4d5ed06fef7c2              # double 0.65111399999999997
	.quad	0x3fe2fd1351159c49              # double 0.59339299999999995
	.quad	0x3fe6849a9973d9ec              # double 0.70368699999999995
	.quad	0x3fd4f284167a95c8              # double 0.32730199999999998
	.quad	0x3fe1492146a1a501              # double 0.54017700000000002
	.quad	0x3fec3866e43aa79c              # double 0.88188500000000002
	.quad	0x3fddf75d9a0f0a5f              # double 0.468223
	.quad	0x3fc864b2314013ec              # double 0.19057299999999999
	.quad	0x3feac59103c8e25d              # double 0.83661700000000006
	.quad	0x3fda0dcb9a9da598              # double 0.40709200000000001
	.quad	0x3fe3a8fc0d2c386d              # double 0.61437799999999998
	.quad	0x3f9abc947064ecea              # double 0.026110000000000001
	.quad	0x3fedeb0318b9346a              # double 0.93493800000000005
	.quad	0x3fed5aad601ffb48              # double 0.917319
	.quad	0x3fe330079a2834d2              # double 0.59961299999999995
	.quad	0x3fdea38b8ae31d71              # double 0.47873199999999999
	.quad	0x3feee75147f13059              # double 0.96573699999999995
	.quad	0x3fee21ee675147f1              # double 0.94164199999999998
	.quad	0x3feffab10ba62670              # double 0.99935200000000002
	.quad	0x3f9c46d82ba5a038              # double 0.027614
	.quad	0x3fe020a0f4d7add1              # double 0.50398299999999996
	.quad	0x3feee4a16a487336              # double 0.96540899999999996
	.quad	0x3fe2bde3fbbd7b20              # double 0.58567999999999998
	.quad	0x3fec2cf312b1b36c              # double 0.88048700000000001
	.quad	0x3fa6baade657b84e              # double 0.044393000000000002
	.quad	0x3fe3bfc43b2dd378              # double 0.61715900000000001
	.quad	0x3fb9625a682b6284              # double 0.099156999999999995
	.quad	0x3fc05a708ede54b5              # double 0.12776000000000001
	.quad	0x3fc6f3e468cac4b5              # double 0.17931800000000001
	.quad	0x3fdcf6db940fecdd              # double 0.452567
	.quad	0x3fa99439de481f54              # double 0.049959000000000003
	.quad	0x3fcec942d490e66d              # double 0.24051700000000001
	.quad	0x3fdf17481b21c476              # double 0.48579600000000001
	.quad	0x3fe309b951c5c572              # double 0.59493700000000005
	.quad	0x3fc9fb6134ce3de6              # double 0.202984
	.quad	0x3fe76d352220bc38              # double 0.73208099999999998
	.quad	0x3fde09246bf01323              # double 0.469308
	.quad	0x3fe5766c6de76428              # double 0.67070600000000002
	.quad	0x3fc9389b52007dd4              # double 0.19703999999999999
	.quad	0x3fe2c31bde82d7b6              # double 0.58631699999999998
	.quad	0x3feee568a50507a7              # double 0.96550400000000002
	.quad	0x3fd6574f722e1ac5              # double 0.34907899999999997
	.quad	0x3fd8862b27cbf6e4              # double 0.383189
	.quad	0x3fb094d50ebaade6              # double 0.064770999999999995
	.quad	0x3fc0c154c985f06f              # double 0.13089999999999999
	.quad	0x3fe44f50a02b8412              # double 0.63468199999999997
	.quad	0x3fe04eb9a176ddad              # double 0.50961000000000001
	.quad	0x3fe85188f42fe825              # double 0.75995299999999999
	.quad	0x3f9891e215336dec              # double 0.023994000000000001
	.quad	0x3fd29ef0f16f4385              # double 0.29095100000000002
	.quad	0x3feae8c8abd5dc40              # double 0.840916
	.quad	0x3fcda8c586876e1e              # double 0.231713
	.quad	0x3fc444b6e935b91f              # double 0.15834699999999999
	.quad	0x3fdf9a027525460b              # double 0.49377500000000002
	.quad	0x3feb706d50657321              # double 0.85747399999999996
	.quad	0x3fd9d530489d27c4              # double 0.40363700000000002
	.quad	0x3fef80eae18ac9f3              # double 0.984487
	.quad	0x3fe7747304039abf              # double 0.73296499999999998
	.quad	0x3fe4482e019b0ab3              # double 0.63381100000000001
	.quad	0x3fee38e8ea39c51e              # double 0.94444700000000004
	.quad	0x3febe5eaab042529              # double 0.87181600000000004
	.quad	0x3fe88c9d9d3458cd              # double 0.76716499999999999
	.quad	0x3fe8887ca643cc08              # double 0.76666100000000004
	.quad	0x3fdc3cc8de2ac322              # double 0.44120999999999999
	.quad	0x3fe47dbf487fcb92              # double 0.64034999999999997
	.quad	0x3fe533e35c5b4aa9              # double 0.66258399999999995
	.quad	0x3feedd377e1b8ed2              # double 0.96450400000000003
	.quad	0x3fdf630a915379fb              # double 0.49042000000000002
	.quad	0x3fc4158fb43d89ce              # double 0.15690799999999999
	.quad	0x3fef64dc22ab25b3              # double 0.98106199999999998
	.quad	0x3fce373f316e3715              # double 0.23606099999999999
	.quad	0x3fcd4d594f26aec0              # double 0.22892299999999999
	.quad	0x3fde542e557de0d6              # double 0.47388799999999998
	.quad	0x3fe0446950fc71d6              # double 0.508351
	.quad	0x3fef85a921ccd962              # double 0.985066
	.quad	0x3fee728e92d55a3a              # double 0.951484
	.quad	0x3fe504cf0739b025              # double 0.656837
	.quad	0x3fb52b90a7829069              # double 0.082696000000000006
	.quad	0x3fec41094a2b9d3d              # double 0.88293900000000003
	.quad	0x3fec8427418d690a              # double 0.89113200000000004
	.quad	0x3fe5393037d63023              # double 0.66323100000000001
	.quad	0x3fc88b11409a2403              # double 0.191744
	.quad	0x3fe5f3f748a15981              # double 0.68603099999999995
	.quad	0x3fcc72085b18548b              # double 0.22223000000000001
	.quad	0x3fa495bff04577d9              # double 0.040204999999999998
	.quad	0x3fe074cf4a558ea8              # double 0.51425900000000002
	.quad	0x3fdb1e6cd29131ec              # double 0.423732
	.quad	0x3fe3250f840181e0              # double 0.59827399999999997
	.quad	0x3feb0cd423d9231c              # double 0.84531599999999995
	.quad	0x3fcf0af5fd47bedb              # double 0.24252199999999999
	.quad	0x3fbf34c5da6a4441              # double 0.12189899999999999
	.quad	0x3fca6e86c6583e85              # double 0.20649799999999999
	.quad	0x3fa308787485e3da              # double 0.037173999999999999
	.quad	0x3fd87f6f4be835df              # double 0.38277800000000001
	.quad	0x3fe0aa1b5c7cd899              # double 0.52076500000000003
	.quad	0x3fee577fae3608d1              # double 0.94818100000000005
	.quad	0x3fec86748e475600              # double 0.89141300000000001
	.quad	0x3feb69728a611772              # double 0.85662199999999999
	.quad	0x3f908d4bad7d7c2d              # double 0.016164000000000001
	.quad	0x3fe178012dfd694d              # double 0.54589900000000002
	.quad	0x3fe2ef6f8f041462              # double 0.59172800000000003
	.quad	0x3fec760bf5d78812              # double 0.88941000000000003
	.quad	0x3feb03b3e9a6f827              # double 0.84420200000000001
	.quad	0x3fe560e51d25aab4              # double 0.66807799999999995
	.quad	0x3fd33d5347a5b0ff              # double 0.300618
	.quad	0x3fdd72a7bd48cb4b              # double 0.460123
	.quad	0x3feaa81fd9ba1b19              # double 0.83302299999999996
	.quad	0x3fec1aef6f8f0414              # double 0.87828799999999995
	.quad	0x3fd7a27f1b691212              # double 0.36929299999999998
	.quad	0x3fdef8bdec5f394b              # double 0.48393199999999997
	.quad	0x3fc4ba6aca793576              # double 0.161939
	.quad	0x3fdd7d34df04ddb5              # double 0.46076699999999998
	.quad	0x3feb76102795703f              # double 0.85816199999999998
	.quad	0x3fb00852b4d8ba41              # double 0.062627000000000002
	.quad	0x3fe181adea897636              # double 0.54708000000000001
	.quad	0x3fe7223e18698351              # double 0.72292999999999996
	.quad	0x3feabd2d87f88766              # double 0.83559300000000003
	.quad	0x3fd37dd441355476              # double 0.30455500000000002
	.quad	0x3fe5d23f67f4dbe0              # double 0.68191500000000005
	.quad	0x3fefb1ab0856e697              # double 0.99043800000000004
	.quad	0x3fd15bff04577d95              # double 0.27123999999999998
	.quad	0x3fe655fdcdf69878              # double 0.69799699999999998
	.quad	0x3fd160e51d25aab4              # double 0.27153899999999997
	.quad	0x3febfb5aea3161a2              # double 0.87443300000000002
	.quad	0x3fcbce2089e34331              # double 0.217228
	.quad	0x3fdca048e043a216              # double 0.44728299999999999
	.quad	0x3fd766fd651b0ccc              # double 0.36566100000000001
	.quad	0x3fe23cf4e874c900              # double 0.56994100000000003
	.quad	0x3fef6a63b688bda9              # double 0.98173699999999997
	.quad	0x3f70afe60c38f367              # double 0.0040740000000000004
	.quad	0x3fe5353b4b2fa93b              # double 0.662748
	.quad	0x3fe83bfd71b04684              # double 0.75732299999999996
	.quad	0x3fe2cb31c219eb64              # double 0.58730400000000005
	.quad	0x3f92413db7f17375              # double 0.017826999999999999
	.quad	0x3fd37ded6ba8c587              # double 0.30456100000000003
	.quad	0x3fe86e73e681a9b9              # double 0.76348300000000002
	.quad	0x3feac81f53825e14              # double 0.83692900000000003
	.quad	0x3fc0c82e019b0ab3              # double 0.131109
	.quad	0x3faff04577d95571              # double 0.062379999999999998
	.quad	0x3fdf5e892253111f              # double 0.490145
	.quad	0x3fd0f733a8a3f898              # double 0.26508799999999999
	.quad	0x3febc562e09fe868              # double 0.86784499999999998
	.quad	0x3fd6b784662bae04              # double 0.35495100000000002
	.quad	0x3fe60130164840e1              # double 0.68764499999999995
	.quad	0x3fcbd451fc4c1659              # double 0.217417
	.quad	0x3fe18f7db6e503fb              # double 0.54876599999999998
	.quad	0x3fe499806f262889              # double 0.64373800000000003
	.quad	0x3fd1a5f41aef6f8f              # double 0.275754
	.quad	0x3fe0d4562e09fe87              # double 0.52592000000000005
	.quad	0x3feb47e6b3fe9fae              # double 0.85252700000000003
	.quad	0x3fe00dc11e42e126              # double 0.50167899999999999
	.quad	0x3fe3265061416378              # double 0.59842700000000004
	.quad	0x3fdcf09d8c6d612c              # double 0.45218599999999998
	.quad	0x3fec091e215336df              # double 0.87611300000000003
	.quad	0x3fef7a376922d949              # double 0.98366900000000001
	.quad	0x3f9848beb5b2d4d4              # double 0.023715
	.quad	0x3fda8e29f9ce8d97              # double 0.41492699999999999
	.quad	0x3fe6adfd694ccab4              # double 0.70873900000000001
	.quad	0x3fe53413986338b4              # double 0.66260699999999995
	.quad	0x3fe06e9142b302f7              # double 0.51349699999999998
	.quad	0x3fac727dcbddb984              # double 0.055560999999999999
	.quad	0x3fdf88f861a60d45              # double 0.49273499999999998
	.quad	0x3fda29b280f12c28              # double 0.40879500000000002
	.quad	0x3fc3df1172ef0ae5              # double 0.15524499999999999
	.quad	0x3fe6586ca89fc6da              # double 0.69829399999999997
	.quad	0x3fdb2aa5c5f7c676              # double 0.42447800000000002
	.quad	0x3fed0b7a1c25d074              # double 0.90765099999999998
	.quad	0x3fe7d740c4156e26              # double 0.74502599999999997
	.quad	0x3feb010e8858ff76              # double 0.84387900000000005
	.quad	0x3fda9e98dcdb37ca              # double 0.41593000000000002
	.quad	0x3fed4e09784ec637              # double 0.91577600000000003
	.quad	0x3fe615af294dd723              # double 0.69014699999999995
	.quad	0x3fb52c8c5004fb12              # double 0.082711000000000006
	.quad	0x3fc0328f9f44d445              # double 0.12654299999999999
	.quad	0x3faeb76709fa54c5              # double 0.059992999999999998
	.quad	0x3fdc9285a921ccd9              # double 0.44644299999999998
	.quad	0x3feb425aee631f8a              # double 0.85185
	.quad	0x3fc0e653868fd19a              # double 0.13202900000000001
	.quad	0x3fee5ed288ce703b              # double 0.949075
	.quad	0x3fead8c2a454de7f              # double 0.83896000000000004
	.quad	0x3fe10da7f3cf7015              # double 0.53291699999999997
	.quad	0x3fefe39d5e4a3832              # double 0.99653499999999995
	.quad	0x3fe45031055b8994              # double 0.63478900000000005
	.quad	0x3fc458ff75968512              # double 0.158966
	.quad	0x3fad4434e3369b9d              # double 0.057160999999999997
	.quad	0x3fc63ed0f627392a              # double 0.173792
	.quad	0x3fb13b7d84901d19              # double 0.067313999999999999
	.quad	0x3fea3becaab8a5ce              # double 0.81981499999999996
	.quad	0x3fe901a1554fbdad              # double 0.78144899999999995
	.quad	0x3fb6baf102363b25              # double 0.088789999999999994
	.quad	0x3f9c1b54195cc858              # double 0.027448
	.quad	0x3fd6cc6822ff0889              # double 0.35622599999999999
	.quad	0x3fee55f56a7ac81d              # double 0.94799299999999997
	.quad	0x3fe03ea0ba1f4b1f              # double 0.50764500000000001
	.quad	0x3f823704790b8499              # double 0.0088940000000000008
	.quad	0x3fd1de26916440f2              # double 0.27918399999999999
	.quad	0x3fd56a875d56f32c              # double 0.33462700000000001
	.quad	0x3fe3d2c59fb1e18f              # double 0.619479
	.quad	0x3fe38de8f6cefed6              # double 0.61107299999999998
	.quad	0x3fecb5bf6a0dbad4              # double 0.89718600000000003
	.quad	0x3f86ebd4cfd08d4c              # double 0.011192000000000001
	.quad	0x3fd7b2314013ec46              # double 0.370251
	.quad	0x3fab81f969e3c969              # double 0.053726000000000003
	.quad	0x3feeb36bd2b6f199              # double 0.95940199999999997
	.quad	0x3fe3949a5657fb6a              # double 0.61189000000000004
	.quad	0x3fe66a012599ed7c              # double 0.70043999999999995
	.quad	0x3fea705c896dd26b              # double 0.82621599999999995
	.quad	0x3fe9f32bdc26dce4              # double 0.81093400000000004
	.quad	0x3fe1885f4a1272c9              # double 0.54789699999999997
	.quad	0x3fe26e7c49fd7a14              # double 0.57598700000000003
	.quad	0x3fc5c1a47a9e2bd0              # double 0.16997200000000001
	.quad	0x3fc3f65dbfceb789              # double 0.15595600000000001
	.quad	0x3fe503d790752daa              # double 0.65671900000000005
	.quad	0x3fbe424a276b7ed4              # double 0.118199
	.quad	0x3fecf6b3bb83cf2d              # double 0.905115
	.quad	0x3fe5a51e321a2e7f              # double 0.67640599999999995
	.quad	0x3fc83bf727136a40              # double 0.18933
	.quad	0x3fe5a2fad6cb5350              # double 0.676145
	.quad	0x3fddb2e59af9ebea              # double 0.46404400000000001
	.quad	0x3fd2695d91ab8e8f              # double 0.28768100000000002
	.quad	0x3fb61cac083126e9              # double 0.086374999999999993
	.quad	0x3fe17cdab191dde3              # double 0.54649099999999995
	.quad	0x3fef6a209aaa3ad2              # double 0.98170500000000005
	.quad	0x3fee00d3cff64cf9              # double 0.93760100000000002
	.quad	0x3fc467dfe32a0664              # double 0.15942000000000001
	.quad	0x3fcde5753a3ec02f              # double 0.23356499999999999
	.quad	0x3fef01e8a2ec28b3              # double 0.96898300000000003
	.quad	0x3fed5e13b18dac26              # double 0.91773400000000005
	.quad	0x3fdeffcdab191dde              # double 0.48436299999999999
	.quad	0x3fe760ce0b912dba              # double 0.73056699999999997
	.quad	0x3feeee5471715c64              # double 0.96659300000000003
	.quad	0x3fde233df2a9d628              # double 0.47090100000000001
	.quad	0x3fc10a569b17481b              # double 0.133128
	.quad	0x3fefa69df97aaac1              # double 0.98908899999999999
	.quad	0x3fe88e1b4bb5e0f8              # double 0.767347
	.quad	0x3fe9e694898f605b              # double 0.80939700000000003
	.quad	0x3fd8c176577531db              # double 0.38680799999999999
	.quad	0x3f92e019b0ab2e17              # double 0.018433000000000001
	.quad	0x3fa569b17481b21c              # double 0.041821999999999998
	.quad	0x3fbc083126e978d5              # double 0.1095
	.quad	0x3feadf28848387df              # double 0.83974099999999996
	.quad	0x3fe381fd9ba1b196              # double 0.60961799999999999
	.quad	0x3fb482f0e0a84be4              # double 0.080123
	.quad	0x3fdaf15a4acf312b              # double 0.42098099999999999
	.quad	0x3fd2482be8bc169c              # double 0.28565499999999999
	.quad	0x3fe915ad106ee30d              # double 0.78389600000000004
	.quad	0x3fe7439ffd60e94f              # double 0.72700500000000001
	.quad	0x3fd0d8cb07d0aeda              # double 0.26323200000000002
	.quad	0x3fef52934acaff6d              # double 0.97882999999999997
	.quad	0x3fd2b7d84901d191              # double 0.29247099999999998
	.quad	0x3fe9bc3a42f1ed18              # double 0.80422700000000003
	.quad	0x3fe3c4284dfce315              # double 0.61769499999999999
	.quad	0x3febbb9ae0c17657              # double 0.86665099999999995
	.quad	0x3fc58a222d5171e3              # double 0.16827800000000001
	.quad	0x3fe808b11409a240              # double 0.75106099999999998
	.quad	0x3fea3a94bbe4473d              # double 0.81965100000000002
	.quad	0x3fdbaa0cae642bfa              # double 0.43225400000000003
	.quad	0x3fda878316a05575              # double 0.41452099999999997
	.quad	0x3fd82ab25b317efe              # double 0.377606
	.quad	0x3fc99b2c40d0aaa8              # double 0.200048
	.quad	0x3fd9cef240fa9c13              # double 0.403256
	.quad	0x3fc8187a4a48f96e              # double 0.188247
	.quad	0x3fbe97aeddce7cd0              # double 0.119502
	.quad	0x3fe2c5b291b823c8              # double 0.58663299999999996
	.quad	0x3fe1da5fc7e6b3ff              # double 0.55790700000000004
	.quad	0x3fb803254e6e221d              # double 0.093798000000000006
	.quad	0x3fc5e050374ff866              # double 0.170908
	.quad	0x3fdb5e1c15097c81              # double 0.42761900000000003
	.quad	0x3feed230b9dc2f40              # double 0.96315799999999995
	.quad	0x3fd234549b62c775              # double 0.28444399999999997
	.quad	0x3fc9f809917939a8              # double 0.20288200000000001
	.quad	0x3fe6c9c90c4dec1c              # double 0.71213199999999999
	.quad	0x3fa6731d2e0e3044              # double 0.043846999999999997
	.quad	0x3fa1a005c4651f3f              # double 0.034424000000000003
	.quad	0x3fc4964628027d89              # double 0.16083600000000001
	.quad	0x3fdebd61f5be5d9e              # double 0.48030899999999999
	.quad	0x3fed87aaef2c7326              # double 0.92281100000000005
	.quad	0x3fdf3400b88ca3e8              # double 0.48754900000000001
	.quad	0x3fcce6fb4c3c18b5              # double 0.225799
	.quad	0x3fb6d5cfaacd9e84              # double 0.089200000000000002
	.quad	0x3fe7a33bd9cae211              # double 0.738676
	.quad	0x3fd589e34330d738              # double 0.33654099999999998
	.quad	0x3fc78a4c1ebc83a9              # double 0.18390799999999999
	.quad	0x3fec0ad8a116659d              # double 0.87632399999999999
	.quad	0x3fe1584d338f7985              # double 0.54202899999999998
	.quad	0x3fa0aa00192a7371              # double 0.032547
	.quad	0x3fc32c16df3f9618              # double 0.149783
	.quad	0x3fe3c866a11ec919              # double 0.61821300000000001
	.quad	0x3fd5fa8f7db6e504              # double 0.343418
	.quad	0x3fea87af20ea5b53              # double 0.82906299999999999
	.quad	0x3fd12556d19dece5              # double 0.26790399999999998
	.quad	0x3fe0a64c2f837b4a              # double 0.52029999999999998
	.quad	0x3fd46a4873365882              # double 0.31898700000000002
	.quad	0x3fc7dc8323358f2e              # double 0.186417
	.quad	0x3fe85288ce703afb              # double 0.76007499999999995
	.quad	0x3fc4e1cde5d18091              # double 0.16314100000000001
	.quad	0x3f9f6598e10cf5b2              # double 0.030661000000000001
	.quad	0x3fee0f12c27a6373              # double 0.93933999999999995
	.quad	0x3fe94bab649d388b              # double 0.79048700000000005
	.quad	0x3fd24477ff151e75              # double 0.28542899999999999
	.quad	0x3fd1636f3b213e3e              # double 0.27169399999999999
	.quad	0x3fd3f705857afea4              # double 0.31195200000000001
	.quad	0x3fe465625a682b63              # double 0.63737600000000005
	.quad	0x3fce25f202107b78              # double 0.23553299999999999
	.quad	0x3fdcc636b0963561              # double 0.449598
	.quad	0x3fec52aa5c5f7c67              # double 0.88509099999999996
	.quad	0x3fe048f96e158751              # double 0.50890800000000003
	.quad	0x3fe884ea4a8c154d              # double 0.76622500000000004
	.quad	0x3fc426916440f239              # double 0.15742700000000001
	.quad	0x3fc36262cba732df              # double 0.15143999999999999
	.quad	0x3fafbf83382e44b7              # double 0.062008000000000001
	.quad	0x3fd53968d759ee89              # double 0.33162900000000001
	.quad	0x3fc1e97d06bbdbe4              # double 0.13993800000000001
	.quad	0x3fd08b8f14db5958              # double 0.25851800000000003
	.quad	0x3fecc54152b0a6fc              # double 0.89907899999999996
	.quad	0x3fee57a786c22681              # double 0.94820000000000004
	.quad	0x3fea074a771c970f              # double 0.81338999999999995
	.quad	0x3fc87a9e2bcf91a3              # double 0.191242
	.quad	0x3f54445aa2e3c537              # double 0.001237
	.quad	0x3fd136006d0d4995              # double 0.26892100000000002
	.quad	0x3fde18d25edd0529              # double 0.47026499999999999
	.quad	0x3fc3ef6b5d462c34              # double 0.15574399999999999
	.quad	0x3fecb68ad6883772              # double 0.89728300000000005
	.quad	0x3fe600b45ae5ffa4              # double 0.68758600000000003
	.quad	0x3fe22aed1394317b              # double 0.56774000000000002
	.quad	0x3fd073b85e80bed7              # double 0.25706299999999999
	.quad	0x3fe822d2fe3f35a0              # double 0.754251
	.quad	0x3fe430e5e679463d              # double 0.630969
	.quad	0x3fd1c1376d549731              # double 0.277418
	.quad	0x3fd4e7bc3c5bd0e1              # double 0.32664399999999999
	.quad	0x3fe225f633ce63a6              # double 0.56713400000000003
	.quad	0x3fec50331e3a7daa              # double 0.88478999999999997
	.quad	0x3fe2d338f7985272              # double 0.58828400000000003
	.quad	0x3fc4eff5c6c11a11              # double 0.163573
	.quad	0x3fc04aa53fc00970              # double 0.127278
	.quad	0x3fece3bcd35a8588              # double 0.90280000000000005
	.quad	0x3fb6529bae46cfc8              # double 0.087197999999999998
	.quad	0x3fb9e34330d73861              # double 0.10112400000000001
	.quad	0x3fd4ecbfb15b573f              # double 0.32695000000000002
	.quad	0x3fc838194c016052              # double 0.18921199999999999
	.quad	0x3fc3bdd76683c298              # double 0.15423100000000001
	.quad	0x3fcf27dcbddb9842              # double 0.24340400000000001
	.quad	0x3fee38e8ea39c51e              # double 0.94444700000000004
	.quad	0x3fede53c9abb01c9              # double 0.93423299999999998
	.quad	0x3fb046f9b994e1a4              # double 0.063583000000000001
	.quad	0x3fda95feda661284              # double 0.41540500000000002
	.quad	0x3fef8919ef954eb1              # double 0.98548599999999997
	.quad	0x3f9bef49cf56eac8              # double 0.027279999999999999
	.quad	0x3fb0ce5f7403dddb              # double 0.065648999999999999
	.quad	0x3fb9a6f826edaa93              # double 0.100204
	.quad	0x3fdce5f7403dddb1              # double 0.45153599999999999
	.quad	0x3fe76b8305d95dd5              # double 0.73187400000000002
	.quad	0x3fe84dd50a88effe              # double 0.75950099999999998
	.quad	0x3fd01672324c8366              # double 0.25136999999999998
	.quad	0x3fda878316a05575              # double 0.41452099999999997
	.quad	0x3fcc9a2403148777              # double 0.22345400000000001
	.quad	0x3fa6f47b677f6b1a              # double 0.044833999999999999
	.quad	0x3fceddce7cd03537              # double 0.241144
	.quad	0x3feacb1ab0856e69              # double 0.83729299999999995
	.quad	0x3fd74db59578a2a9              # double 0.364118
	.quad	0x3f89e3864cb5bb38              # double 0.012640999999999999
	.quad	0x3fc3dc2f405f6ba0              # double 0.15515699999999999
	.quad	0x3fea4f7caa7589f0              # double 0.82220300000000002
	.quad	0x3f9e4ef0281ba7fc              # double 0.029597999999999999
	.quad	0x3fe88b673c4f3ba7              # double 0.76701699999999995
	.quad	0x3fe50e219652bd3c              # double 0.65797499999999998
	.quad	0x3fe934c3c18b502b              # double 0.78769100000000003
	.quad	0x3feb8bdec5f394b8              # double 0.86082400000000003
	.quad	0x3fd60d9513f8db49              # double 0.34457900000000002
	.quad	0x3feea84be40420f7              # double 0.958044
	.quad	0x3fbc42fa5093964a              # double 0.110397
	.quad	0x3fd2a2ca9ac36545              # double 0.291186
	.quad	0x3fc9b1e9f2778141              # double 0.200742
	.quad	0x3fe859e83e425aee              # double 0.76097499999999996
	.quad	0x3fe2fa4c61d8622c              # double 0.59305399999999997
	.quad	0x3fe81ea78af3e469              # double 0.75374200000000002
	.quad	0x3fecc080f98fa377              # double 0.89849900000000005
	.quad	0x3fdd24e160d887ec              # double 0.455376
	.quad	0x3fd4acaff6d33094              # double 0.32303999999999999
	.quad	0x3fbbb0e5e679463d              # double 0.108168
	.quad	0x3f9f90d9d7774aba              # double 0.030825999999999999
	.quad	0x3fe8d4562e09fe87              # double 0.77592000000000005
	.quad	0x3fe3a0ccff21b3af              # double 0.61337900000000001
	.quad	0x3fc9b5c7cd898b2f              # double 0.20086000000000001
	.quad	0x3fd8b1209edbf8ba              # double 0.38581100000000002
	.quad	0x3fe156238da3c212              # double 0.54176500000000005
	.quad	0x3fc1dabe27179bfe              # double 0.139488
	.quad	0x3fe2ffeb074a771d              # double 0.59374000000000005
	.quad	0x3fe991e42e126202              # double 0.79905899999999996
	.quad	0x3fa4426351deefe5              # double 0.039569
	.quad	0x3fe31a543f1c7582              # double 0.59696400000000005
	.quad	0x3fe5bf9830e3cd9a              # double 0.67963799999999996
	.quad	0x3fd50f6273929ed4              # double 0.32906400000000002
	.quad	0x3fe1a9c779a6b50b              # double 0.55197499999999999
	.quad	0x3fe000dc33721d54              # double 0.50010500000000002
	.quad	0x3febf8359bc33f85              # double 0.87404899999999996
	.quad	0x3fea55a7d24180d4              # double 0.82295600000000002
	.quad	0x3fd741b328b6d86f              # double 0.36338500000000001
	.quad	0x3fdcad18d25edd05              # double 0.44806499999999999
	.quad	0x3f79f3c70c996b76              # double 0.0063359999999999996
	.quad	0x3f81361dc93ea2d3              # double 0.008404
	.quad	0x3fb1c8fb86f47b67              # double 0.069472999999999993
	.quad	0x3fb16e9bbf0dc769              # double 0.068094000000000002
	.quad	0x3fcd67ec7863beec              # double 0.22973399999999999
	.quad	0x3fde1337eb28d866              # double 0.46992299999999998
	.quad	0x3feaea8da7f3cf70              # double 0.84113199999999999
	.quad	0x3fb8a7a41e57d9dc              # double 0.096308000000000004
	.quad	0x3feb7eb4a66559f7              # double 0.85921700000000001
	.quad	0x3fd7b9a9da597d4a              # double 0.37070700000000001
	.quad	0x3feb9d7774aba387              # double 0.86297199999999996
	.quad	0x3fe04c4ac6cdaf4b              # double 0.50931300000000002
	.quad	0x3fee57c4e2f37fbf              # double 0.948214
	.quad	0x3fcc1333b96af039              # double 0.219336
	.quad	0x3fed66ddf00abf77              # double 0.91880700000000004
	.quad	0x3fd969984a0e410b              # double 0.39706999999999998
	.quad	0x3fafd77fae3608d1              # double 0.062191000000000003
	.quad	0x3fe457b84db9c737              # double 0.63570800000000005
	.quad	0x3fb0b545c78a6dad              # double 0.065266000000000005
	.quad	0x3fe2ac6ac215b9a6              # double 0.58354700000000004
	.quad	0x3fe6ee264e48626f              # double 0.71657099999999996
	.quad	0x3fd99c304ccee5ac              # double 0.40015800000000001
	.quad	0x3fe91eafee6fb4c4              # double 0.78499600000000002
	.quad	0x3fe2dd9e40c8472c              # double 0.58955299999999999
	.quad	0x3fa7a89331a08bfc              # double 0.046207999999999999
	.quad	0x3fe0b6fc158fb43e              # double 0.52233700000000005
	.quad	0x3fe14a03c4b09e99              # double 0.54028500000000002
	.quad	0x3fe9495182a9930c              # double 0.79020000000000001
	.quad	0x3fe901f969e3c969              # double 0.78149100000000005
	.quad	0x3fe3a0afa2f05a71              # double 0.61336500000000005
	.quad	0x3fde3892ee84ad79              # double 0.47220299999999998
	.quad	0x3fe6c43f5f91600f              # double 0.71145599999999998
	.quad	0x3feb6e17a02fb5d0              # double 0.85718899999999998
	.quad	0x3fd6d4e09784ec63              # double 0.35674299999999998
	.quad	0x3fefd6a161e4f766              # double 0.99495
	.quad	0x3fe0e43ed959a30a              # double 0.52786200000000005
	.quad	0x3fce1a719b4dcec0              # double 0.235182
	.quad	0x3fe2fa6bd6e8af81              # double 0.59306899999999996
	.quad	0x3fe47f13059641f6              # double 0.64051199999999997
	.quad	0x3feaa7243137b070              # double 0.83290299999999995
	.quad	0x3f942c7fbacb4289              # double 0.019701
	.quad	0x3fbdc0b9991361dd              # double 0.11622200000000001
	.quad	0x3fe032bdc26dce3a              # double 0.50619400000000003
	.quad	0x3fdf924af0bf1a5d              # double 0.49330400000000002
	.quad	0x3fe7c78e9f6a93f3              # double 0.74311000000000005
	.quad	0x3fecdd249e44fa05              # double 0.90199499999999999
	.quad	0x3fc68e820e629952              # double 0.17622399999999999
	.quad	0x3fc74df8b1572581              # double 0.18206700000000001
	.quad	0x3fe6ee7a311e85fd              # double 0.716611
	.quad	0x3fd2c475e6362a5e              # double 0.29324099999999997
	.quad	0x3fc1714b9cb6848c              # double 0.13627
	.quad	0x3fb7eb18116ebd4d              # double 0.093431
	.quad	0x3fdc0ff10ecb74de              # double 0.438473
	.quad	0x3fe891233df2a9d6              # double 0.76771699999999998
	.quad	0x3fe2ceb9a176ddad              # double 0.58773500000000001
	.quad	0x3fef7e3d1cc100e7              # double 0.98416000000000003
	.quad	0x3fe06a76965f5276              # double 0.51299600000000001
	.quad	0x3fdab5fa22706d50              # double 0.41735699999999998
	.quad	0x3fedf1b8aa00192a              # double 0.93575699999999995
	.quad	0x3fe9c2070b8cfbfc              # double 0.80493499999999995
	.quad	0x3fed59f2ba9d1f60              # double 0.91722999999999998
	.quad	0x3fdeafb3b7521145              # double 0.47947400000000001
	.quad	0x3fdd3aeab7995ee1              # double 0.45672099999999999
	.quad	0x3fdf7c393682730c              # double 0.49195699999999998
	.quad	0x3fd16a7ac81d3aa3              # double 0.27212399999999998
	.quad	0x3fca0e7bc3c5bd0e              # double 0.203567
	.quad	0x3febfeac42e9899c              # double 0.874838
	.quad	0x3feb62131a8ef77f              # double 0.85572199999999998
	.quad	0x3fdc0420f6f08cc5              # double 0.43775199999999997
	.quad	0x3fe010752da98677              # double 0.50200900000000004
	.quad	0x3fc300b45ae5ffa4              # double 0.14845900000000001
	.quad	0x3fdb6705c896dd27              # double 0.42816300000000002
	.quad	0x3fe6eaab042528ae              # double 0.71614599999999995
	.quad	0x3fe83a237cdcca71              # double 0.75709700000000002
	.quad	0x3fd56787ce95faa9              # double 0.33444400000000002
	.quad	0x3fc528bf3bea91da              # double 0.16530600000000001
	.quad	0x3fedaf2734f82f51              # double 0.92763099999999998
	.quad	0x3fe60feac42e989a              # double 0.68944300000000003
	.quad	0x3fed3291b823c85c              # double 0.91242299999999998
	.quad	0x3fe6ac16df3f9618              # double 0.708507
	.quad	0x3fe73f9a49c2c1b1              # double 0.72651399999999999
	.quad	0x3fe1f00abf76a2f5              # double 0.56055200000000005
	.quad	0x3fed7340d4dc65c7              # double 0.920319
	.quad	0x3fedfd06bbdbe3c1              # double 0.937137
	.quad	0x3fd35fe111276fb1              # double 0.30272700000000002
	.quad	0x3fdb3eb7cbb3c819              # double 0.425703
	.quad	0x3fe269d94d0dcfcc              # double 0.57542099999999996
	.quad	0x3fef3ff47735c183              # double 0.976557
	.quad	0x3fe18e219652bd3c              # double 0.54859999999999998
	.quad	0x3fe9f316e3715400              # double 0.81092399999999998
	.quad	0x3fe4d87b56b87379              # double 0.65142599999999995
	.quad	0x3fd575b813016484              # double 0.33531
	.quad	0x3fea4b124d099e0e              # double 0.82166399999999995
	.quad	0x3fe6fad080b673c5              # double 0.71811700000000001
	.quad	0x3fea78d0cc35ce18              # double 0.82724799999999998
	.quad	0x3fd6c6088d6d3b6d              # double 0.35583700000000001
	.quad	0x3fc85f06f6944674              # double 0.19040000000000001
	.quad	0x3fc2594af4f0d845              # double 0.14335000000000001
	.quad	0x3fd638476f2a5a47              # double 0.34718500000000002
	.quad	0x3fea41615ebfa8f8              # double 0.82048100000000002
	.quad	0x3fe1523d4f15e7c9              # double 0.54128900000000002
	.quad	0x3fd4a79bbadc0981              # double 0.32273000000000002
	.quad	0x3fd5ff92f2b66b61              # double 0.34372399999999997
	.quad	0x3fe6b50f40e5a35d              # double 0.70960199999999996
	.quad	0x3fc09f2fdb8fde2f              # double 0.129858
	.quad	0x3fcaaed99cbee808              # double 0.20846100000000001
	.quad	0x3fc804c059210386              # double 0.18764500000000001
	.quad	0x3fae29f9ce8d972d              # double 0.058914000000000001
	.quad	0x3fd4c08fa7a85016              # double 0.32425300000000001
	.quad	0x3fe630c026cc1ca4              # double 0.69345100000000004
	.quad	0x3fed6c764adff823              # double 0.91949000000000003
	.quad	0x3fdfca925fe974a3              # double 0.49673899999999999
	.quad	0x3fa3c64345cfede9              # double 0.038621999999999997
	.quad	0x3fcc76b7ed41b75a              # double 0.22237299999999999
	.quad	0x3fdd7a311e85fd05              # double 0.46058300000000002
	.quad	0x3fe2bee807bbb624              # double 0.58580399999999999
	.quad	0x3fd80624dd2f1aa0              # double 0.37537500000000001
	.quad	0x3fc68900c521dda0              # double 0.17605599999999999
	.quad	0x3fa5cdb37c99ae92              # double 0.042584999999999998
	.quad	0x3fd60b30b5aa7158              # double 0.34443299999999999
	.quad	0x3fe177ad4b2745bf              # double 0.54585899999999998
	.quad	0x3fe3294573a79789              # double 0.59878799999999999
	.quad	0x3fe9f88333fc86cf              # double 0.81158600000000003
	.quad	0x3fcbd3f5b5fa2270              # double 0.21740599999999999
	.quad	0x3febb86f47b677f7              # double 0.86626400000000003
	.quad	0x3fede90ff9724745              # double 0.93469999999999998
	.quad	0x3f8bb2fec56d5cfb              # double 0.013525000000000001
	.quad	0x3fd3366516db0dd8              # double 0.30019499999999999
	.quad	0x3f9c4b4d056c508b              # double 0.027630999999999999
	.quad	0x3fa0b780346dc5d6              # double 0.032649999999999998
	.quad	0x3fd74c165907d912              # double 0.36401899999999998
	.quad	0x3fcde02ea960b6fa              # double 0.233404
	.quad	0x3fe81eb4202d9cf1              # double 0.75374799999999997
	.quad	0x3fdc27631b584b1b              # double 0.43990400000000002
	.quad	0x3fca2ce4649906cd              # double 0.20449500000000001
	.quad	0x3fc23a860dcb9a9e              # double 0.14241100000000001
	.quad	0x3fea795f676ea423              # double 0.82731600000000005
	.quad	0x3fe7c959e6256367              # double 0.74332900000000002
	.quad	0x3fa3474107314ca9              # double 0.037652999999999999
	.quad	0x3fbab90a7829068a              # double 0.10438600000000001
	.quad	0x3fdec532a497fa5d              # double 0.48078599999999999
	.quad	0x3fe3740c4156e265              # double 0.60791600000000001
	.quad	0x3fe9cc0bdcad14a1              # double 0.80615800000000004
	.quad	0x3fcada22f6a50d6b              # double 0.209782
	.quad	0x3fd100c521dda05a              # double 0.26567200000000002
	.quad	0x3fc60999dcb5781c              # double 0.17216799999999999
	.quad	0x3fee996744b2b778              # double 0.95622600000000002
	.quad	0x3f99d9d3458cd20b              # double 0.025245
	.quad	0x3f9d783dff3f0fe0              # double 0.028778999999999999
	.quad	0x3fd7f3ade225fa66              # double 0.37424800000000003
	.quad	0x3fde0713f077ccc0              # double 0.46918199999999999
	.quad	0x3fd12e9ccb7d4174              # double 0.26846999999999999
	.quad	0x3fe354ed2cbea4ec              # double 0.60411700000000002
	.quad	0x3f823e5b8561d430              # double 0.0089079999999999993
	.quad	0x3fbe57a786c22681              # double 0.11852500000000001
	.quad	0x3fe5638433d6c722              # double 0.66839800000000005
	.quad	0x3fe99b30728e92d5              # double 0.80019399999999996
	.quad	0x3fdcb20fb224aada              # double 0.44836799999999999
	.quad	0x3fc09b30728e92d5              # double 0.12973599999999999
	.quad	0x3fe299aa60913a50              # double 0.58125800000000005
	.quad	0x3fdf3b7d84901d19              # double 0.488006
	.quad	0x3fe0ba7daa4fca43              # double 0.52276500000000004
	.quad	0x3fc1d4306e5cd4ed              # double 0.139288
	.quad	0x3fef57cb2d905c03              # double 0.97946699999999997
	.quad	0x3fe5eadb402d16b9              # double 0.68491899999999994
	.quad	0x3fc328954a7f8013              # double 0.149676
	.quad	0x3fbecd6c2efd438d              # double 0.120322
	.quad	0x3fb7bd9cae21101b              # double 0.092737
	.quad	0x3fd7b55ef1fddebe              # double 0.37044500000000002
	.quad	0x3fbe02a77a2cecc8              # double 0.117228
	.quad	0x3fe88effe2a3cea7              # double 0.76745600000000003
	.quad	0x3fb3f562174c4ce0              # double 0.077963000000000005
	.quad	0x3fecffcb923a29c7              # double 0.90622499999999995
	.quad	0x3fe59672324c8366              # double 0.67461499999999996
	.quad	0x3febf2c94b380cb7              # double 0.87338700000000002
	.quad	0x3fd8068986fcdee3              # double 0.37539899999999998
	.quad	0x3fee18a65492ff4c              # double 0.94050900000000003
	.quad	0x3fd1750c1b97353b              # double 0.27276899999999998
	.quad	0x3feb24723aafff37              # double 0.84819900000000004
	.quad	0x3fd8883ba3443d47              # double 0.38331500000000002
	.quad	0x3fd1cb790fb65669              # double 0.27804400000000001
	.quad	0x3fda290257c914b1              # double 0.40875299999999998
	.quad	0x3fdec1c1d6cf850e              # double 0.480576
	.quad	0x3fe7fb9170d62bf1              # double 0.74945899999999999
	.quad	0x3fd62107b784662c              # double 0.34576600000000002
	.quad	0x3fed6faa4766c6de              # double 0.91988099999999995
	.quad	0x3feea799a1fd156a              # double 0.957959
	.quad	0x3fe369707182235b              # double 0.60662099999999997
	.quad	0x3fde40746455eaee              # double 0.47268399999999999
	.quad	0x3f9289118c197e56              # double 0.018100999999999999
	.quad	0x3fc9336deb95e5b0              # double 0.196882
	.quad	0x3fe82059a73b42cc              # double 0.75394899999999998
	.quad	0x3fc9c01a36e2eb1c              # double 0.20117499999999999
	.quad	0x3fca8398a65492ff              # double 0.20714099999999999
	.quad	0x3fcd7c3d68405b3a              # double 0.230354
	.quad	0x3fe30a65492ff4ba              # double 0.59501899999999996
	.quad	0x3fe07ef177a7008a              # double 0.51549599999999995
	.quad	0x3fbcfd4bf0995aaf              # double 0.11323999999999999
	.quad	0x3fdaedfa43fe5c92              # double 0.42077500000000001
	.quad	0x3feca908a265f0f6              # double 0.89563400000000004
	.quad	0x3fddf84449dbec25              # double 0.46827800000000003
	.quad	0x3fc2c050bd87b56c              # double 0.14649400000000001
	.quad	0x3fa521144cbe1eb4              # double 0.041267999999999999
	.quad	0x3fec2fa7221858bc              # double 0.88081699999999996
	.quad	0x3fe96edcc20d562a              # double 0.79478300000000002
	.quad	0x3fe477caa7589efe              # double 0.63962300000000005
	.quad	0x3fda909f1f14983d              # double 0.41507699999999997
	.quad	0x3fe6cdea033e78e2              # double 0.71263600000000005
	.quad	0x3fc2452c59fb1e19              # double 0.142736
	.quad	0x3fecdf8d2e514c23              # double 0.90228900000000001
	.quad	0x3fc1e96c3fc43b2e              # double 0.139936
	.quad	0x3fd7955f78359bc3              # double 0.36849199999999999
	.quad	0x3fe7a17f4128bf3c              # double 0.73846400000000001
	.quad	0x3fef821af7d30ad4              # double 0.98463199999999995
	.quad	0x3feb0639d5e4a383              # double 0.84450999999999998
	.quad	0x3fa5530489d27c39              # double 0.041648999999999999
	.quad	0x3fe26bdb1a6d6990              # double 0.57566600000000001
	.quad	0x3fe095e39713ad5c              # double 0.51829700000000001
	.quad	0x3fd0821af7d30ad4              # double 0.25794099999999998
	.quad	0x3fecc7496aad1d04              # double 0.89932699999999998
	.quad	0x3fca34549b62c775              # double 0.20472199999999999
	.quad	0x3fcdcad14a0a0f4d              # double 0.23275199999999999
	.quad	0x3fd424bfd2e94680              # double 0.31474299999999999
	.quad	0x3fafb634dad31fcd              # double 0.061936999999999999
	.quad	0x3feecfd6d7e889c2              # double 0.96287100000000003
	.quad	0x3fc7935fc3b4f616              # double 0.18418499999999999
	.quad	0x3fedab4959e62563              # double 0.92715899999999996
	.quad	0x3fc23e39f77292c5              # double 0.14252400000000001
	.quad	0x3fe21988d2a1f8e4              # double 0.56561700000000004
	.quad	0x3fbcc73abc947065              # double 0.112415
	.quad	0x3fb6d666a98244e9              # double 0.089208999999999997
	.quad	0x3fdd9070fbeb9e49              # double 0.46194099999999999
	.quad	0x3fee6fef7c243dcd              # double 0.95116400000000001
	.quad	0x3fe3eece13f4a98b              # double 0.62290100000000004
	.quad	0x3fe7587d6f976790              # double 0.72955199999999998
	.quad	0x3f76e158750c1b97              # double 0.0055859999999999998
	.quad	0x3fefebca5375c8da              # double 0.997533
	.quad	0x3fbf37eb28d8665e              # double 0.121947
	.quad	0x3fd7c43f5f91600f              # double 0.37135299999999999
	.quad	0x3fc8a46e08f21709              # double 0.19251799999999999
	.quad	0x3fd4c3a42f1ed17c              # double 0.32444099999999998
	.quad	0x3fcb9baa1511dffc              # double 0.21568799999999999
	.quad	0x3fe1092684cf073a              # double 0.53236700000000003
	.quad	0x3fe033fa6defc7a4              # double 0.50634500000000005
	.quad	0x3fd85fc3b4f61672              # double 0.38084499999999999
	.quad	0x3fc78da3c21187e8              # double 0.18401000000000001
	.quad	0x3fee04e3ffef3908              # double 0.93809699999999995
	.quad	0x3fee1c27e9531551              # double 0.94093700000000002
	.quad	0x3fe51465e8922531              # double 0.65873999999999999
	.quad	0x3fe5e71476af89c6              # double 0.68445800000000001
	.quad	0x3fcd0f062d40aaeb              # double 0.227021
	.quad	0x3fe5fc5479d4d834              # double 0.687052
	.quad	0x3fd7e6c8f7553693              # double 0.37346099999999999
	.quad	0x3fdc5de15ca6ca04              # double 0.44323000000000001
	.quad	0x3fed942917507e9e              # double 0.92433600000000005
	.quad	0x3fed3bd3804534bd              # double 0.91355299999999995
	.quad	0x3fb002e2328f9f45              # double 0.062544000000000002
	.quad	0x3fe656d3b6cbd988              # double 0.69809900000000003
	.quad	0x3fe0ea209aaa3ad2              # double 0.52858000000000005
	.quad	0x3fb757c4e2f37fbf              # double 0.091183
	.quad	0x3fe24f7ec3547e07              # double 0.57220400000000005
	.quad	0x3fe09b9b66f9335d              # double 0.51899499999999998
	.quad	0x3fd668b19a415f46              # double 0.35014000000000001
	.quad	0x3fe035c9e6687f45              # double 0.50656599999999996
	.quad	0x3fcbc52e72da1230              # double 0.21695500000000001
	.quad	0x3fd4356da0168b5d              # double 0.31576100000000001
	.quad	0x3fe3d2674080f990              # double 0.61943400000000004
	.quad	0x3fceec0724b76f6d              # double 0.24157799999999999
	.quad	0x3fd65d9e40c8472c              # double 0.349464
	.quad	0x3fe9cb4070329803              # double 0.80606100000000003
	.quad	0x3fe48b47c73eee52              # double 0.64200199999999996
	.quad	0x3fd01101b003686a              # double 0.25103799999999998
	.quad	0x3fe025cc426351df              # double 0.50461400000000001
	.quad	0x3fefff0aa21a719b              # double 0.99988299999999996
	.quad	0x3fcc1f5be5d9e40d              # double 0.21970700000000001
	.quad	0x3fbf7e3d1cc100e7              # double 0.12302
	.quad	0x3fd9a697aeddce7d              # double 0.40079300000000001
	.quad	0x3fe59df548ecd8dc              # double 0.67553200000000002
	.quad	0x3fd3a775fb2edfe7              # double 0.30709599999999998
	.quad	0x3f973083558a7610              # double 0.022645999999999999
	.quad	0x3fe5544998d045fe              # double 0.66653899999999999
	.quad	0x3fe40c4588a04d12              # double 0.626498
	.quad	0x3fe7cd5f99c38b05              # double 0.74382000000000004
	.quad	0x3fd833764f11b60b              # double 0.378141
	.quad	0x3feee9d0e991ff71              # double 0.96604199999999995
	.quad	0x3fe88329802c0a4a              # double 0.766011
	.quad	0x3fdd23aafff36ac6              # double 0.45530199999999998
	.quad	0x3fe045fbf83382e4              # double 0.50854299999999997
	.quad	0x3fdf61ae70c1333c              # double 0.49033700000000002
	.quad	0x3fe7803ab862b27d              # double 0.73440300000000003
	.quad	0x3f9ff540895d0b74              # double 0.031209000000000001
	.quad	0x3fe9fdb09a671ef3              # double 0.812218
	.quad	0x3fea10e453d20f2c              # double 0.814562
	.quad	0x3fef44f1a1986b9c              # double 0.97716599999999997
	.quad	0x3fcdc68661ae70c1              # double 0.23262099999999999
	.quad	0x3faf68dfbd6a593a              # double 0.061346999999999999
	.quad	0x3f6a1554fbdad752              # double 0.0031840000000000002
	.quad	0x3fb0a7a41e57d9dc              # double 0.065058000000000005
	.quad	0x3fb45c03361565c3              # double 0.079529000000000002
	.quad	0x3fbf5579af1886e0              # double 0.12239800000000001
	.quad	0x3fc7abb8800eae19              # double 0.18492800000000001
	.quad	0x3fe5fc5260f5e41d              # double 0.68705099999999997
	.quad	0x3fac8472c0e7bc3c              # double 0.055697999999999998
	.quad	0x3fe4c7064ece9a2c              # double 0.64929499999999996
	.quad	0x3fe48da7f3cf7015              # double 0.64229199999999997
	.quad	0x3fec63886594af4f              # double 0.88714999999999999
	.quad	0x3feba8049667b5f2              # double 0.86426000000000003
	.quad	0x3fdc9e3864cb5bb4              # double 0.44715700000000003
	.quad	0x3fe5d8e864020818              # double 0.682728
	.quad	0x3fe8417ebaf10236              # double 0.75799499999999997
	.quad	0x3fa72d5e071c53f4              # double 0.045268000000000003
	.quad	0x3fe8a87c200c0f02              # double 0.770567
	.quad	0x3fa6f34d6a161e4f              # double 0.044824999999999997
	.quad	0x3fd71a5870da5daf              # double 0.360983
	.quad	0x3fe488c3f3e0370d              # double 0.64169500000000002
	.quad	0x3fcc37ef5a964e8b              # double 0.22045699999999999
	.quad	0x3fca713f077ccc03              # double 0.20658099999999999
	.quad	0x3fda3ad18d25edd0              # double 0.40983999999999998
	.quad	0x3fd47d3910c2c5e3              # double 0.32014300000000001
	.quad	0x3fd539ef0f16f438              # double 0.33166099999999998
	.quad	0x3fd030f49491f2dc              # double 0.25298799999999999
	.quad	0x3feee8c0485a0be5              # double 0.96591199999999999
	.quad	0x3febaa27f1b69121              # double 0.86452099999999998
	.quad	0x3fa8817fc7607c42              # double 0.047863000000000003
	.quad	0x3fe836544fe36d22              # double 0.75663199999999997
	.quad	0x3fd17bd05af6c69b              # double 0.27318199999999998
	.quad	0x3fe97e3f359ff4fd              # double 0.79666099999999995
	.quad	0x3fd0e6e221c8a7a4              # double 0.26409199999999999
	.quad	0x3fee422036006d0d              # double 0.94557199999999997
	.quad	0x3fdd3a8a3f8982cb              # double 0.45669799999999999
	.quad	0x3fe21973d9ec7000              # double 0.56560699999999997
	.quad	0x3fb469728a611772              # double 0.079733999999999999
	.quad	0x3feed3a3ec02f2fa              # double 0.96333500000000005
	.quad	0x3fdcecdd0d8cb07d              # double 0.451957
	.quad	0x3fe8f3c4f3ba7760              # double 0.77975700000000003
	.quad	0x3f94e69f05ea24cc              # double 0.020410999999999999
	.quad	0x3fd66ff3ade225fa              # double 0.35058299999999998
	.quad	0x3fc87b80a9de8b3b              # double 0.19126899999999999
	.quad	0x3fd63825e13b18db              # double 0.34717700000000001
	.quad	0x3fd0c1e364bec67a              # double 0.26183400000000001
	.quad	0x3fee76d97b30f8c6              # double 0.95200799999999997
	.quad	0x3fecb4395810624e              # double 0.89700000000000002
	.quad	0x3fdf05ab3aabcd79              # double 0.48472100000000001
	.quad	0x3fe3261bf37b8d3f              # double 0.59840199999999999
	.quad	0x3fe527ce0fc2eba2              # double 0.66110899999999995
	.quad	0x3fcf6f544bb1af3a              # double 0.245585
	.quad	0x3fbf484d76ab5808              # double 0.122197
	.quad	0x3fbbd82773e24fec              # double 0.108767
	.quad	0x3fd61d10b1feeb2d              # double 0.345524
	.quad	0x3fdfb4d8ba40d90e              # double 0.49541299999999999
	.quad	0x3fb08398a65492ff              # double 0.064507999999999996
	.quad	0x3f5efb6dca07f66f              # double 0.0018910000000000001
	.quad	0x3fd0f1a5ca29845e              # double 0.26474900000000001
	.quad	0x3fbc625e99e94ab2              # double 0.110876
	.quad	0x3fe807ca643cc07b              # double 0.75095100000000004
	.quad	0x3fd23b3e9a6f826f              # double 0.28486600000000001
	.quad	0x3fbf3354c122749f              # double 0.121877
	.quad	0x3fcd5c31593e5fb7              # double 0.229376
	.quad	0x3fe57c9795b35b0c              # double 0.67145900000000003
	.quad	0x3fef41bb8c32a8ca              # double 0.97677400000000003
	.quad	0x3fead24180d3cff6              # double 0.83816599999999997
	.quad	0x3feca854477ff152              # double 0.89554800000000001
	.quad	0x3fda281344806291              # double 0.408696
	.quad	0x3fbf8897e996312f              # double 0.123178
	.quad	0x3fc02a12f901083e              # double 0.12628400000000001
	.quad	0x3fdcbf9830e3cd9a              # double 0.44919399999999998
	.quad	0x3fe2909d0635a427              # double 0.58015300000000003
	.quad	0x3feddd3fe1975f2d              # double 0.93325800000000003
	.quad	0x3fec946a1a500d5f              # double 0.89311700000000005
	.quad	0x3fd7193708aac96d              # double 0.36091400000000001
	.quad	0x3fe3c7b24638c975              # double 0.61812699999999998
	.quad	0x3fd0f2ae07e5a78f              # double 0.26481199999999999
	.quad	0x3fe38767d34df04e              # double 0.61027900000000002
	.quad	0x3fafa1c25d074214              # double 0.061781000000000003
	.quad	0x3fe7f4f93bc0a06f              # double 0.74865400000000004
	.quad	0x3fe7d48882f0e0a8              # double 0.74469399999999997
	.quad	0x3fc59bd4067cf1c3              # double 0.168818
	.quad	0x3fdbfa8b4bf8fcd6              # double 0.43716699999999997
	.quad	0x3f8d0a67620ee8d1              # double 0.01418
	.quad	0x3fd3b2031ceaf252              # double 0.30774000000000001
	.quad	0x3fb1bff04577d955              # double 0.069334999999999994
	.quad	0x3fd8bf83382e44b7              # double 0.386689
	.quad	0x3fed2d8c2a454de8              # double 0.91181000000000001
	.quad	0x3fea541743e963dc              # double 0.82276499999999996
	.quad	0x3fe09873ffac1d2a              # double 0.51861000000000002
	.quad	0x3fb6e18ac9f2fdb9              # double 0.089379
	.quad	0x3fe1102de00d1b71              # double 0.53322499999999995
	.quad	0x3fc1f3387160956c              # double 0.140235
	.quad	0x3fe507ad080b673c              # double 0.65718699999999997
	.quad	0x3fe032ce89656ef0              # double 0.50620200000000004
	.quad	0x3fe7017dae81882b              # double 0.71893200000000002
	.quad	0x3fe233311a543f1c              # double 0.56874899999999995
	.quad	0x3fea06d2ed783dff              # double 0.81333299999999997
	.quad	0x3fe6d59b3d07c84b              # double 0.71357499999999996
	.quad	0x3fd8b10fd7e45804              # double 0.38580700000000001
	.quad	0x3fa14a4d2b2bfdb5              # double 0.033770000000000001
	.quad	0x3fd0c6c54bcf0b6b              # double 0.26213199999999998
	.quad	0x3fef0b3d4ae429e1              # double 0.97012200000000003
	.quad	0x3fe0970f7b9e0610              # double 0.51844000000000001
	.quad	0x3fe92e90364388ec              # double 0.78693400000000002
	.quad	0x3fc9604189374bc7              # double 0.19825000000000001
	.quad	0x3fe5dd6e04c05921              # double 0.68328
	.quad	0x3fe31b8cb8e086be              # double 0.597113
	.quad	0x3fee3ccd0fe8ab50              # double 0.94492200000000004
	.quad	0x3feb40b9991361dd              # double 0.85165100000000005
	.quad	0x3fe46ca686e7e62e              # double 0.63826300000000002
	.quad	0x3fe08bfe3b03e20d              # double 0.51708900000000002
	.quad	0x3fcb0fc71d606317              # double 0.211419
	.quad	0x3fe46f9db22d0e56              # double 0.638625
	.quad	0x3fd66c6de76427c8              # double 0.35036800000000001
	.quad	0x3fea21db877ab325              # double 0.81663300000000005
	.quad	0x3fc500bcbe61cfff              # double 0.16408500000000001
	.quad	0x3feb9f40a2877ee5              # double 0.86319000000000001
	.quad	0x3fe48f7db6e503fb              # double 0.64251599999999998
	.quad	0x3fb7f3f0fe047d3d              # double 0.093565999999999996
	.quad	0x3fe22ab8a5ce5b42              # double 0.56771499999999997
	.quad	0x3fdbab68cef672b9              # double 0.43233700000000003
	.quad	0x3fd376577531db44              # double 0.30409799999999998
	.quad	0x3fd7870110a137f4              # double 0.36761500000000003
	.quad	0x3fef9a6506141637              # double 0.98759699999999994
	.quad	0x3fd04aada33bd9cb              # double 0.25455800000000001
	.quad	0x3fdb2da122fad6cb              # double 0.42465999999999998
	.quad	0x3fba5e56cd6c2efd              # double 0.103002
	.quad	0x3fe624052d666a98              # double 0.69189699999999998
	.quad	0x3fe6d9e83e425aee              # double 0.71409999999999996
	.quad	0x3fa87980f55de58e              # double 0.047801999999999997
	.quad	0x3fe77bf61aa3f035              # double 0.73388200000000003
	.quad	0x3fd37a24894c447c              # double 0.30432999999999999
	.quad	0x3fdfb702602c9082              # double 0.49554500000000001
	.quad	0x3fe945b6c3760bf6              # double 0.78976000000000002
	.quad	0x3fd50edc3bd59924              # double 0.32903199999999999
	.quad	0x3fa06ca89fc6da45              # double 0.032079000000000003
	.quad	0x3fdf01040bfe3b04              # double 0.48443700000000001
	.quad	0x3fde2abef06b3786              # double 0.47135899999999997
	.quad	0x3fd4441fea8112ba              # double 0.316658
	.quad	0x3fd6a21a719b4dcf              # double 0.35364400000000001
	.quad	0x3fc3b29a1b9f98b7              # double 0.153888
	.quad	0x3fd8bd1244a6223e              # double 0.38653999999999999
	.quad	0x3fec6b50b0f27bb3              # double 0.8881
	.quad	0x3fe0a9a1b9f98b72              # double 0.52070700000000003
	.quad	0x3fedb484d76ab580              # double 0.92828599999999994
	.quad	0x3fd00713f077ccc0              # double 0.25043199999999999
	.quad	0x3fe76a832b990afe              # double 0.73175199999999996
	.quad	0x3fe22f0bf1a5ca2a              # double 0.56824300000000005
	.quad	0x3fe8211ec918e326              # double 0.75404300000000002
	.quad	0x3febef5caf2d7f95              # double 0.87296899999999999
	.quad	0x3fe209d27c393682              # double 0.56369899999999995
	.quad	0x3fddada76d97b310              # double 0.46372400000000003
	.quad	0x3fd7422036006d0d              # double 0.36341099999999998
	.quad	0x3fd5ebaf102363b2              # double 0.34250999999999998
	.quad	0x3fb9e80bed740c41              # double 0.101197
	.quad	0x3fdfaf5ba2be058a              # double 0.49507800000000002
	.quad	0x3fe3ba237cdcca71              # double 0.61647200000000002
	.quad	0x3fe9458255b035bd              # double 0.78973499999999996
	.quad	0x3fd03a8e71476af9              # double 0.25357400000000002
	.quad	0x3fef0461f9f01b86              # double 0.96928499999999995
	.quad	0x3fbdb25f633ce63a              # double 0.116003
	.quad	0x3fea9131ec0b5675              # double 0.83022399999999996
	.quad	0x3fec7829068986fd              # double 0.88966800000000001
	.quad	0x3fe30dc11e42e126              # double 0.59542899999999999
	.quad	0x3fa7d566cf41f213              # double 0.046550000000000001
	.quad	0x3fea8eb67c286f8b              # double 0.82992100000000002
	.quad	0x3fc3c33721d53cde              # double 0.154395
	.quad	0x3fdaae89eba6aca8              # double 0.41690300000000002
	.quad	0x3fe88d8a979e16d7              # double 0.76727800000000002
	.quad	0x3fc02003ab862b28              # double 0.12597700000000001
	.quad	0x3fd0e87d2c7b890d              # double 0.26418999999999998
	.quad	0x3fcbc9e6687f455a              # double 0.21709899999999999
	.quad	0x3fe9d953586ca8a0              # double 0.80777900000000002
	.quad	0x3fd51da7b0b39192              # double 0.32993499999999998
	.quad	0x3fd376145953586d              # double 0.30408200000000002
	.quad	0x3f71d25aab474107              # double 0.0043509999999999998
	.quad	0x3fd3dae81882adc5              # double 0.31023600000000001
	.quad	0x3fdfc77dd872f33d              # double 0.49655100000000002
	.quad	0x3fb02e9899bf5947              # double 0.063211000000000003
	.quad	0x3fe29bcdbbe0157f              # double 0.58151900000000001
	.quad	0x3faefbd273d5bab2              # double 0.060514999999999999
	.quad	0x3fc90b524399b2c4              # double 0.195658
	.quad	0x3fb2f09d8c6d612c              # double 0.073983999999999994
	.quad	0x3fd4b16c1e364bec              # double 0.32332899999999998
	.quad	0x3fdeedd4845132f8              # double 0.48326599999999997
	.quad	0x3fcd197a24894c44              # double 0.22733999999999999
	.quad	0x3fda31f03d145d85              # double 0.409298
	.quad	0x3fc4d45e9185cee1              # double 0.16273099999999999
	.quad	0x3fa3b1af3a14cec4              # double 0.038464999999999999
	.quad	0x3fda5dbfceb78898              # double 0.411972
	.quad	0x3fbec3a860dcb9aa              # double 0.120173
	.quad	0x3fe5f162ae4b0186              # double 0.68571599999999999
	.quad	0x3fef018a43bb40b3              # double 0.96893799999999996
	.quad	0x3fe07aacd9e83e42              # double 0.51497499999999996
	.quad	0x3fe7ddcc63f14120              # double 0.74582499999999996
	.quad	0x3f987ad080b673c5              # double 0.023906
	.quad	0x3fc49ec2ce464990              # double 0.16109499999999999
	.quad	0x3fb50bc7b45f17be              # double 0.082211000000000006
	.quad	0x3fde1b0468448cf8              # double 0.47039900000000001
	.quad	0x3fed95b9a5a89b95              # double 0.92452699999999999
	.quad	0x3fec3845564b6630              # double 0.88186900000000001
	.quad	0x3fb0b295e9e1b08a              # double 0.065225000000000005
	.quad	0x3fd84dec1c1d6cf8              # double 0.37975599999999998
	.quad	0x3fe4c753e707e176              # double 0.64933200000000002
	.quad	0x3fd7019f3c70c997              # double 0.35947400000000002
	.quad	0x3fb2dbf8b9baa151              # double 0.073668999999999998
	.quad	0x3fac01e68a0d349c              # double 0.054702000000000001
	.quad	0x3fdc0e496ededaec              # double 0.43837199999999998
	.quad	0x3fe9af405f6ba062              # double 0.802643
	.quad	0x3feb56f976790321              # double 0.85436699999999999
	.quad	0x3fcc3254e6e221c9              # double 0.22028600000000001
	.quad	0x3fd707075b3e1438              # double 0.35980400000000001
	.quad	0x3fe34e054690de09              # double 0.60327399999999998
	.quad	0x3fcd64cf8d716d2b              # double 0.22963900000000001
	.quad	0x3fa19285a921ccd9              # double 0.034320999999999997
	.quad	0x3fee90a99b6f5caf              # double 0.95515899999999998
	.quad	0x3fe931db445ed4a2              # double 0.78733600000000004
	.quad	0x3feb7212d77318fc              # double 0.85767499999999996
	.quad	0x3fd75f0b28522ea1              # double 0.365176
	.quad	0x3fdb59d99029ae4f              # double 0.42735899999999999
	.quad	0x3fe2da038194c016              # double 0.589113
	.quad	0x3fe4953dea465a57              # double 0.64321799999999996
	.quad	0x3feae310dbf0563f              # double 0.84021800000000002
	.quad	0x3fd86c050bd87b57              # double 0.38159300000000002
	.quad	0x3fe33d9231c64ba9              # double 0.60126599999999997
	.quad	0x3fc4cab3edd8b60f              # double 0.162436
	.quad	0x3fee89289dadfb50              # double 0.95424299999999995
	.quad	0x3fe3001f75104d55              # double 0.59376499999999999
	.quad	0x3fe8f1de69ad42c4              # double 0.77952500000000002
	.quad	0x3fef999dcb5781c7              # double 0.98750199999999999
	.quad	0x3feb18e325d4a5df              # double 0.84678799999999999
	.quad	0x3fec8b6523704791              # double 0.89201600000000003
	.quad	0x3fef5b3bfb58d152              # double 0.97988699999999995
	.quad	0x3fe98f29d40ee06e              # double 0.79872600000000005
	.quad	0x3fd8fef7c243dccf              # double 0.39056200000000002
	.quad	0x3fe11e0a41a261bf              # double 0.53491699999999998
	.quad	0x3fda0fcb4f1e4b45              # double 0.40721400000000002
	.quad	0x3fce59ea57214f05              # double 0.237119
	.quad	0x3fd5cef240fa9c13              # double 0.340756
	.quad	0x3faa50f840181e04              # double 0.051399
	.quad	0x3fbce0c9d9d3458d              # double 0.112805
	.quad	0x3fb5e8e60807357e              # double 0.085584999999999994
	.quad	0x3fda1a60d4562e0a              # double 0.40786
	.quad	0x3fdd251c193b3a69              # double 0.45539000000000002
	.quad	0x3fd42c450268900c              # double 0.31520199999999998
	.quad	0x3feeca8c154c985f              # double 0.96222499999999999
	.quad	0x3fb2f9b994e1a3f4              # double 0.074122999999999994
	.quad	0x3fec64e26d4801f7              # double 0.88731499999999996
	.quad	0x3fe30a936c58eeaf              # double 0.59504100000000004
	.quad	0x3fecf9e3864cb5bb              # double 0.90550399999999998
	.quad	0x3fd9b502ababead5              # double 0.401673
	.quad	0x3fb45faebc408d8f              # double 0.079585000000000003
	.quad	0x3fe4f4eca686e7e6              # double 0.65489799999999998
	.quad	0x3fdf94573a797892              # double 0.49342900000000001
	.quad	0x3fd3011d3671ac15              # double 0.29694300000000001
	.quad	0x3feec100e6afcce2              # double 0.96106000000000003
	.quad	0x3fe2e8a71de69ad4              # double 0.59089999999999998
	.quad	0x3fd6a6ca03c4b09f              # double 0.35393000000000002
	.quad	0x3fee8effe2a3cea7              # double 0.95495600000000003
	.quad	0x3fdfecfe9b7bf1e9              # double 0.49884000000000001
	.quad	0x3fe7f3bea91d9b1b              # double 0.74850399999999995
	.quad	0x3fe57d3b29a1b9fa              # double 0.67153700000000005
	.quad	0x3fdd05186db50f41              # double 0.45343600000000001
	.quad	0x3fe51ea35935fc3b              # double 0.65998999999999997
	.quad	0x3fd66006d0d4994a              # double 0.34961100000000001
	.quad	0x3fcd3165d3996fa8              # double 0.22806999999999999
	.quad	0x3fcaef911cf355ce              # double 0.21043600000000001
	.quad	0x3fea2326e115592e              # double 0.81679100000000004
	.quad	0x3fe0c50ce4ead0c4              # double 0.52405400000000002
	.quad	0x3fda9dbec2480e8d              # double 0.41587800000000003
	.quad	0x3fb1b994e1a3f466              # double 0.069237999999999994
	.quad	0x3fe09c75818c5c9a              # double 0.51909899999999998
	.quad	0x3febf785729b280f              # double 0.87396499999999999
	.quad	0x3feaca558ea7ce10              # double 0.83719900000000003
	.quad	0x3fe754b2745bf26f              # double 0.72908899999999999
	.quad	0x3fe95a33bd9cae21              # double 0.79226099999999999
	.quad	0x3fbeb063e07a28bb              # double 0.119879
	.quad	0x3fd5153bd1676641              # double 0.32942100000000002
	.quad	0x3fe961f5be5d9e41              # double 0.79320800000000002
	.quad	0x3fc7014b599aa609              # double 0.179727
	.quad	0x3febba3443d46b27              # double 0.86648000000000003
	.quad	0x3fc2b2e1693c03bc              # double 0.14608399999999999
	.quad	0x3fea705857afea3e              # double 0.826214
	.quad	0x3fdc5e310dbf0564              # double 0.443249
	.quad	0x3fe75d441355475a              # double 0.73013499999999998
	.quad	0x3fb62b5a20ddc619              # double 0.086598999999999995
	.quad	0x3f99c38b04ab606b              # double 0.025159999999999998
	.quad	0x3fe1970b49e01de2              # double 0.54968799999999995
	.quad	0x3fe29c62a1b5c7ce              # double 0.58159000000000005
	.quad	0x3fee61672324c836              # double 0.94938999999999996
	.quad	0x3fe48ecb74ddf86e              # double 0.64243099999999997
	.quad	0x3feb0870110a137f              # double 0.84477999999999998
	.quad	0x3fc925c3dee78184              # double 0.196465
	.quad	0x3fdeff540895d0b7              # double 0.48433399999999999
	.quad	0x3fd48e25c810a56a              # double 0.32117600000000002
	.quad	0x3fde5347a5b0ff11              # double 0.473833
	.quad	0x3fe03a53b8e4b87c              # double 0.50712000000000002
	.quad	0x3fed2d38476f2a5a              # double 0.91176999999999997
	.quad	0x3fd3d1f601797cc4              # double 0.30969000000000002
	.quad	0x3fce0b5675579af2              # double 0.23472100000000001
	.quad	0x3fe7a6f60e0eb67c              # double 0.73913099999999998
	.quad	0x3fc0245f5ad96a6a              # double 0.12611
	.quad	0x3fce7fc32ebe596d              # double 0.23827400000000001
	.quad	0x3fb748a159817b96              # double 0.090952000000000005
	.quad	0x3fe60b86b15f88fd              # double 0.68890700000000005
	.quad	0x3fe9e6e86c6583e8              # double 0.80943699999999996
	.quad	0x3fd0d495182a9931              # double 0.26297500000000001
	.quad	0x3fc748882f0e0a85              # double 0.18190100000000001
	.quad	0x3fe2f720c8cd63cc              # double 0.59266700000000005
	.quad	0x3fef3eec39799e52              # double 0.97643100000000005
	.quad	0x3fe7686c6583e857              # double 0.73149699999999995
	.quad	0x3fd8d141a6937d20              # double 0.38777200000000001
	.quad	0x3fc75d4e8fb00bcc              # double 0.182535
	.quad	0x3fc77164c729f59d              # double 0.18314800000000001
	.quad	0x3fe7492ff4ba51a0              # double 0.727684
	.quad	0x3fcde92923e5b856              # double 0.233678
	.quad	0x3fe0814727dcbddc              # double 0.51578100000000004
	.quad	0x3fa5c2f405f6ba06              # double 0.042502999999999999
	.quad	0x3fef76b3bb83cf2d              # double 0.98324
	.quad	0x3fdef8e7ddca4b12              # double 0.48394199999999998
	.quad	0x3fdf93faf42784a9              # double 0.49340699999999998
	.quad	0x3fdf1240746455eb              # double 0.485489
	.quad	0x3fe033df2a9d627c              # double 0.506332
	.quad	0x3fb2fcce1c58255b              # double 0.07417
	.quad	0x3f843fa2ad3e920c              # double 0.009887
	.quad	0x3fee5c63ae2541d9              # double 0.94877800000000001
	.quad	0x3fe0b4f1e4b44a1f              # double 0.522088
	.quad	0x3fee321815a07b35              # double 0.94361499999999998
	.quad	0x3fdc9207d4e09785              # double 0.446413
	.quad	0x3fe473b645a1cac1              # double 0.63912500000000005
	.quad	0x3f9f8726d04e618d              # double 0.030789
	.quad	0x3fea0b39192641b3              # double 0.81386999999999998
	.quad	0x3fc043d46b26bf87              # double 0.12706999999999999
	.quad	0x3fdcc193b3a68b1a              # double 0.44931500000000002
	.quad	0x3fe57737da61e0c6              # double 0.67080300000000004
	.quad	0x3fe9151c5c5718ec              # double 0.78382700000000005
	.quad	0x3fbe1e603d577964              # double 0.11765100000000001
	.quad	0x3fd83c1ce6c093d9              # double 0.37866899999999998
	.quad	0x3fe7a8deb0fadf2f              # double 0.73936400000000002
	.quad	0x3fd325918a009f62              # double 0.29916799999999999
	.quad	0x3fdb53b8e4b87bdd              # double 0.426985
	.quad	0x3fd8f61672324c83              # double 0.39001999999999998
	.quad	0x3fd7ee957470eb25              # double 0.37393700000000002
	.quad	0x3fe5fe80389f83be              # double 0.68731699999999996
	.quad	0x3fda7c8d1958969a              # double 0.413852
	.quad	0x3fe8bed0f627392a              # double 0.77329300000000001
	.quad	0x3faa86d71f36262d              # double 0.051810000000000002
	.quad	0x3fd050f840181e04              # double 0.254942
	.quad	0x3fe20a5accd53049              # double 0.56376400000000004
	.quad	0x3ee92a737110e454              # double 1.2E-5
	.quad	0x3fcf7f51efb6dca0              # double 0.24607299999999999
	.quad	0x3fcc1e14bdfd2631              # double 0.219668
	.quad	0x3fed4bb7f9d6f113              # double 0.915493
	.quad	0x3fdd7aa68f4b61fe              # double 0.46061099999999999
	.quad	0x3fe75bdb5d894813              # double 0.72996300000000003
	.quad	0x3febaeab7995ee13              # double 0.86507199999999995
	.quad	0x3fbb966be7afa722              # double 0.107764
	.quad	0x3feba027525460aa              # double 0.86329999999999996
	.quad	0x3fb99274e22a2c23              # double 0.099890999999999994
	.quad	0x3fea95f88fc9363f              # double 0.83080699999999996
	.quad	0x3fdf23315d701d9f              # double 0.48652299999999998
	.quad	0x3fed5e093532e7b4              # double 0.91772900000000001
	.quad	0x3fd042bb6672fba0              # double 0.25407299999999999
	.quad	0x3fdb74c09c3ce209              # double 0.42900100000000002
	.quad	0x3fe86be596c82e02              # double 0.76317100000000004
	.quad	0x3fab2617c1bda512              # double 0.053025000000000003
	.quad	0x3fd362f166e008ea              # double 0.30291400000000002
	.quad	0x3fb00da1a93293d1              # double 0.062708
	.quad	0x3fe7dd095af294dd              # double 0.74573199999999995
	.quad	0x3feaae90364388ec              # double 0.83380900000000002
	.quad	0x3fec2b9b23dd54da              # double 0.88032299999999997
	.quad	0x3fe648e4755ffe6d              # double 0.69639799999999996
	.quad	0x3fe3b30b5aa71583              # double 0.61560599999999999
	.quad	0x3fdad97f62b6ae7d              # double 0.41952499999999998
	.quad	0x3f787b56b8737974              # double 0.0059769999999999997
	.quad	0x3fe1e9f05ea24cc7              # double 0.55980700000000005
	.quad	0x3fe0dd074213a0c7              # double 0.52698100000000003
	.quad	0x3f6e30014f8b588e              # double 0.0036849999999999999
	.quad	0x3fd693b3a68b19a4              # double 0.352765
	.quad	0x3fc498915bdd7668              # double 0.16090599999999999
	.quad	0x3fe428198f1d3ed5              # double 0.62989499999999998
	.quad	0x3fe44ec41dd1a21f              # double 0.63461500000000004
	.quad	0x3fd0dc8323358f2e              # double 0.263459
	.quad	0x3fcedd616f86a099              # double 0.24113100000000001
	.quad	0x3fc7aecd07852f7f              # double 0.18502199999999999
	.quad	0x3fec02b841248d7e              # double 0.875332
	.quad	0x3fd00cd855970b4a              # double 0.25078400000000001
	.quad	0x3fd16c2acb85a4f0              # double 0.272227
	.quad	0x3fede8f6cefed634              # double 0.93468799999999996
	.quad	0x3fd36b441bb8c32b              # double 0.30342200000000003
	.quad	0x3fc50dc768dfbd6a              # double 0.16448299999999999
	.quad	0x3fef7518b0d0edc4              # double 0.98304400000000002
	.quad	0x3fdf769ec2ce464a              # double 0.49161500000000002
	.quad	0x3fdc8beb5b2d4d40              # double 0.44603999999999999
	.quad	0x3fc146455eaee200              # double 0.13495699999999999
	.quad	0x3febf43c7d5ed070              # double 0.87356400000000001
	.quad	0x3fdeaf20ea5b530d              # double 0.479439
	.quad	0x3fe3459103c8e25d              # double 0.60224200000000006
	.quad	0x3fe373c70c996b76              # double 0.60788299999999995
	.quad	0x3fe28d801b435265              # double 0.57977299999999998
	.quad	0x3fa09b0ee49f5169              # double 0.032432999999999997
	.quad	0x3fed574b40703298              # double 0.916906
	.quad	0x3fe22c16df3f9618              # double 0.567882
	.quad	0x3fe97beb9e492bc3              # double 0.796377
	.quad	0x3fb82cb20fb224ab              # double 0.094432000000000002
	.quad	0x3fc15e74299d883c              # double 0.13569500000000001
	.quad	0x3fda353b4b2fa93b              # double 0.409499
	.quad	0x3feade2ef4e0114d              # double 0.83962199999999998
	.quad	0x3fe9e1d6494d50ec              # double 0.80881800000000003
	.quad	0x3fee755de58e64b2              # double 0.95182699999999998
	.quad	0x3fde2bbecaab8a5d              # double 0.47142000000000001
	.quad	0x3fe19b54195cc858              # double 0.55021100000000001
	.quad	0x3fe73065f9591cd2              # double 0.72465800000000002
	.quad	0x3fe5815a07b352a8              # double 0.67203999999999997
	.quad	0x3fe0f9c62a1b5c7d              # double 0.53049000000000002
	.quad	0x3faaef2c7325918a              # double 0.052606
	.quad	0x3fe27d60e94ee393              # double 0.57780500000000001
	.quad	0x3feecdbdf8f47304              # double 0.96261499999999999
	.quad	0x3fb8cd20afa2f05a              # double 0.096879999999999993
	.quad	0x3fdbf0281ba7fc33              # double 0.436533
	.quad	0x3fea5da8bd230b9e              # double 0.82393300000000003
	.quad	0x3fb5b1d92b7fe08b              # double 0.084745000000000001
	.quad	0x3fc80ddc6195464e              # double 0.18792300000000001
	.quad	0x3fd04c09c3ce208a              # double 0.25464100000000001
	.quad	0x3fd221101b003687              # double 0.28326800000000002
	.quad	0x3f9ed740c4156e26              # double 0.030117999999999999
	.quad	0x3fe1145953586ca9              # double 0.53373400000000004
	.quad	0x3fe72658c4bd33d3              # double 0.72343100000000005
	.quad	0x3fadd41fa7653437              # double 0.058258999999999998
	.quad	0x3fd1148fd9fd36f8              # double 0.26688000000000001
	.quad	0x3fd411d798d8a97a              # double 0.31358900000000001
	.quad	0x3fe9b3aabcd78c43              # double 0.80318199999999995
	.quad	0x3fe7aa4fca42aed1              # double 0.73953999999999998
	.quad	0x3feef15e7c8d1959              # double 0.96696400000000004
	.quad	0x3fd82cb641700cd8              # double 0.37772899999999998
	.quad	0x3fed62f37fbefd00              # double 0.91832899999999995
	.quad	0x3fa9cae21101b003              # double 0.050375999999999997
	.quad	0x3fa6312f4cf4a559              # double 0.043344000000000001
	.quad	0x3fe466fd651b0ccc              # double 0.63757200000000003
	.quad	0x3fe2a1c68ec52a41              # double 0.58224799999999999
	.quad	0x3fed3242070b8cfc              # double 0.912385
	.quad	0x3fe82c57e23f24d9              # double 0.755413
	.quad	0x3fd3479d4d834092              # double 0.30124600000000001
	.quad	0x3fe72e7d566cf41f              # double 0.72442499999999999
	.quad	0x3fc1d9ba1b1960fa              # double 0.139457
	.quad	0x3fd4e2a80064a9ce              # double 0.32633400000000001
	.quad	0x3fe7b44c37e6f71a              # double 0.74075899999999995
	.quad	0x3fe62be27179bfdf              # double 0.69285699999999995
	.quad	0x3fda0cb6c7a7c9de              # double 0.407026
	.quad	0x3fd9a76965f5275f              # double 0.400843
	.quad	0x3fd169270b06c43f              # double 0.27204299999999998
	.quad	0x3feffd2849cb252d              # double 0.99965300000000001
	.quad	0x3fc786d2ed783dff              # double 0.18380199999999999
	.quad	0x3fec59f90539fba4              # double 0.88598299999999996
	.quad	0x3fb0b4f1e4b44a1f              # double 0.065261
	.quad	0x3fe4d03b81b64e05              # double 0.65041899999999997
	.quad	0x3fc04fb97bb73083              # double 0.12743299999999999
	.quad	0x3fec4651f3e89a89              # double 0.88358400000000004
	.quad	0x3fceb9884c6a3bde              # double 0.240037
	.quad	0x3f7a32b12d3415b1              # double 0.0063959999999999998
	.quad	0x3fd434330d73860a              # double 0.31568600000000002
	.quad	0x3fe804af922962d0              # double 0.75057200000000002
	.quad	0x3fb617e34b945309              # double 0.086302000000000004
	.quad	0x3fd599f1ae2da555              # double 0.33752100000000002
	.quad	0x3fe093a2df9378ee              # double 0.51802199999999998
	.quad	0x3fbcebbba55d1c3b              # double 0.112972
	.quad	0x3fdd4690de093533              # double 0.45743200000000001
	.quad	0x3fe106b37867f0aa              # double 0.53206799999999999
	.quad	0x3fd521dda059a73b              # double 0.33019199999999999
	.quad	0x3fc2382a12f90108              # double 0.14233899999999999
	.quad	0x3fd2347e8ccdd93c              # double 0.28445399999999998
	.quad	0x3fe8ca6eb91b3f21              # double 0.77471100000000004
	.quad	0x3fecf1327243137b              # double 0.904443
	.quad	0x3fd6f4be835dedf2              # double 0.35868800000000001
	.quad	0x3fdeb68cef672b88              # double 0.47989199999999999
	.quad	0x3fed2b14ec204f2b              # double 0.91150900000000001
	.quad	0x3fda142b302f72b4              # double 0.40748099999999998
	.quad	0x3feb4eee0f3cb3e5              # double 0.85338499999999995
	.quad	0x3fe7b0db6a1e81cb              # double 0.74033899999999997
	.quad	0x3fec2d16b97fe8ee              # double 0.88050399999999995
	.quad	0x3fe56ba8c586876e              # double 0.66939199999999999
	.quad	0x3feab2ebe596c82e              # double 0.834341
	.quad	0x3fc2b8a5ce5b4246              # double 0.14626
	.quad	0x3fb0ccdd93c46d83              # double 0.065626000000000004
	.quad	0x3fe80fc9363f572e              # double 0.75192700000000001
	.quad	0x3fea40420f6f08cc              # double 0.82034399999999996
	.quad	0x3fe1731098d477bc              # double 0.545296
	.quad	0x3fe73dc054ef459e              # double 0.72628800000000004
	.quad	0x3fc4d7c6fbd273d6              # double 0.16283500000000001
	.quad	0x3fed5ebb7739f341              # double 0.91781400000000002
	.quad	0x3fbc82adc4c9c90c              # double 0.111369
	.quad	0x3fee4422036006d1              # double 0.94581700000000002
	.quad	0x3fe8a02b841248d8              # double 0.76955200000000001
	.quad	0x3fd456b441bb8c33              # double 0.31779200000000002
	.quad	0x3fe417c1bda5119d              # double 0.62790000000000001
	.quad	0x3fdbd76ab5807fed              # double 0.43502299999999999
	.quad	0x3feec41dd1a21ea3              # double 0.96143999999999996
	.quad	0x3fd987b99d451fc5              # double 0.39890900000000001
	.quad	0x3fec69e3c968943e              # double 0.88792599999999999
	.quad	0x3fd38848387df5cf              # double 0.30519299999999999
	.quad	0x3fd16ab9b23dd54e              # double 0.27213900000000002
	.quad	0x3fc39d12cadddf44              # double 0.15323100000000001
	.quad	0x3fec525aab474107              # double 0.88505299999999998
	.quad	0x3fd273d188f42fe8              # double 0.28831899999999999
	.quad	0x3fe529307af20ea6              # double 0.66127800000000003
	.quad	0x3fe52469d7342edc              # double 0.66069500000000003
	.quad	0x3fc7381d7dbf4880              # double 0.18140000000000001
	.quad	0x3fed176ff3ade226              # double 0.909111
	.quad	0x3fad9ddc1e7967cb              # double 0.057845000000000001
	.quad	0x3fd485e80bed740c              # double 0.32067299999999999
	.quad	0x3fe0e523704790b8              # double 0.52797099999999997
	.quad	0x3fd947e49b1fab97              # double 0.395013
	.quad	0x3fe856f544bb1af4              # double 0.76061500000000004
	.quad	0x3fe53a81dc0db270              # double 0.66339199999999998
	.quad	0x3fe1a7aa68f4b620              # double 0.55171700000000001
	.quad	0x3fefc10f94c87981              # double 0.992317
	.quad	0x3fe0a09cc319c5a4              # double 0.51960600000000001
	.quad	0x3fe2c122749f0e4e              # double 0.58607600000000004
	.quad	0x3fbf4d7add15f02c              # double 0.122276
	.quad	0x3feaa34eb9a176de              # double 0.83243500000000004
	.quad	0x3fec574f722e1ac5              # double 0.88565799999999995
	.quad	0x3fdf84a9478c868c              # double 0.49247200000000002
	.quad	0x3fe195592d98bf7f              # double 0.549481
	.quad	0x3fbd86013660e51d              # double 0.115326
	.quad	0x3fe4b62413db7f17              # double 0.64723399999999998
	.quad	0x3f962d83c6c97d8d              # double 0.021658
	.quad	0x3f9679cc74b838c1              # double 0.021949
	.quad	0x3fcdf383f0bae89f              # double 0.23399400000000001
	.quad	0x3fe6e26f60e0eb68              # double 0.71514100000000003
	.quad	0x3fc5cc20d5629d84              # double 0.170292
	.quad	0x3fedbc6c97d8cf3a              # double 0.92925100000000005
	.quad	0x3fc7611ba3ca7504              # double 0.18265100000000001
	.quad	0x3fc3ad4b2745bf27              # double 0.153726
	.quad	0x3fb2c2ce4649906d              # double 0.073285000000000003
	.quad	0x3fc6414e7ee9142b              # double 0.17386799999999999
	.quad	0x3fb6ac753e707e17              # double 0.088568999999999995
	.quad	0x3fd8352eb5f5f0b3              # double 0.37824600000000003
	.quad	0x3fc54edb2f661f19              # double 0.16646900000000001
	.quad	0x3fea2027525460aa              # double 0.81642499999999996
	.quad	0x3f82999567dbb16c              # double 0.0090819999999999998
	.quad	0x3fec599aa60913a5              # double 0.885938
	.quad	0x3fdf50e779207d4e              # double 0.489313
	.quad	0x3fee44028e4fb97c              # double 0.94580200000000003
	.quad	0x3fa3efd00713f078              # double 0.038939000000000001
	.quad	0x3f8992c8c5004fb1              # double 0.012487
	.quad	0x3fde7ce0fc2eba28              # double 0.47637200000000002
	.quad	0x3fbafc371da37ef6              # double 0.105411
	.quad	0x3fe14b380cb6c7a8              # double 0.54043200000000002
	.quad	0x3fe78b71b8aa0019              # double 0.73577199999999998
	.quad	0x3fe27e47991bc558              # double 0.57791499999999996
	.quad	0x3fc5c6c11a11233e              # double 0.170128
	.quad	0x3fd4a658c4bd33d3              # double 0.32265300000000002
	.quad	0x3fe5205ff1d81f10              # double 0.66020199999999996
	.quad	0x3fc6c43f5f91600f              # double 0.17786399999999999
	.quad	0x3fc3f609dcf893fb              # double 0.155946
	.quad	0x3fcedab191dde376              # double 0.24104900000000001
	.quad	0x3feb0d4dc65c7043              # double 0.84537399999999996
	.quad	0x3fd75fe974a3400c              # double 0.36522900000000003
	.quad	0x3fe1932d6ece13f5              # double 0.54921600000000004
	.quad	0x3fa35f3d7d3910c3              # double 0.037836000000000002
	.quad	0x3fd6cde5d18090b4              # double 0.35631699999999999
	.quad	0x3fa8130164840e17              # double 0.047019999999999999
	.quad	0x3fdf2352eb5f5f0b              # double 0.48653099999999999
	.quad	0x3fdb614df8b15726              # double 0.42781400000000003
	.quad	0x3f8f88765ba6efc3              # double 0.015396999999999999
	.quad	0x3fe1394b7b28954a              # double 0.53824399999999994
	.quad	0x3fec3a40d90e23af              # double 0.88211099999999998
	.quad	0x3fefed7c6fbd273d              # double 0.99773999999999996
	.quad	0x3fcfae89eba6aca8              # double 0.24751400000000001
	.quad	0x3fecd49731098d47              # double 0.90095099999999995
	.quad	0x3fe0e833c60029f1              # double 0.52834499999999995
	.quad	0x3fe9a9691a75cd0c              # double 0.80193000000000003
	.quad	0x3fe1dfbb517a4617              # double 0.55856099999999997
	.quad	0x3fe455a9eb2074eb              # double 0.63545700000000005
	.quad	0x3fd2f0dc768dfbd7              # double 0.29595100000000002
	.quad	0x3fd71ecd4aa10e02              # double 0.36125499999999999
	.quad	0x3fdcc5a8155d5f57              # double 0.44956400000000002
	.quad	0x3fe1e4020817fc76              # double 0.559083
	.quad	0x3fef5d4e8fb00bcc              # double 0.98014000000000001
	.quad	0x3fe6acf312b1b36c              # double 0.70861200000000002
	.quad	0x3f98f7985271bcdc              # double 0.024382000000000001
	.quad	0x3fe111ea78af3e47              # double 0.53343700000000005
	.quad	0x3fe1692923e5b856              # double 0.54408699999999999
	.quad	0x3fe366e653868fd2              # double 0.60631100000000004
	.quad	0x3fd2fd3b29a1b9fa              # double 0.29670600000000003
	.quad	0x3fe8e410b630a915              # double 0.77783999999999998
	.quad	0x3fe2ad0c3d25247d              # double 0.58362400000000003
	.quad	0x3fee330b5aa71583              # double 0.94373099999999999
	.quad	0x3feb175f2cb64170              # double 0.84660299999999999
	.quad	0x3fcc390c9107faa0              # double 0.22049099999999999
	.quad	0x3fd4a11ec918e326              # double 0.32233400000000001
	.quad	0x3fdae618ce2d1f1d              # double 0.420294
	.quad	0x3fe2b1b152f3c2db              # double 0.58419100000000002
	.quad	0x3fcb1d1d4738a3b5              # double 0.21182599999999999
	.quad	0x3fe1b97bb7308356              # double 0.55389200000000005
	.quad	0x3feff89a459103c9              # double 0.99909700000000001
	.quad	0x3fbf42cc2d6a9c56              # double 0.122113
	.quad	0x3feed028a1dfb939              # double 0.96291000000000004
	.quad	0x3fe16a6e32e3821b              # double 0.544242
	.quad	0x3fce280ae1049236              # double 0.235597
	.quad	0x3fd869df97aaac11              # double 0.38146200000000002
	.quad	0x3fe7646cfc829cfe              # double 0.73100900000000002
	.quad	0x3fed5c422036006d              # double 0.91751199999999999
	.quad	0x3fc0cb5bb384fd2a              # double 0.13120599999999999
	.quad	0x3fde242d05f28848              # double 0.47095799999999999
	.quad	0x3fe751c9f72f76e6              # double 0.72873399999999999
	.quad	0x3fe12aa19439de48              # double 0.53645399999999999
	.quad	0x3fe83f6a0dbad3a6              # double 0.757741
	.quad	0x3f8f63c31df761cc              # double 0.015327
	.quad	0x3fe1e2a1b5c7cd8a              # double 0.55891500000000005
	.quad	0x3fd1775b81301648              # double 0.27290999999999999
	.quad	0x3fda63065f9591cd              # double 0.41229399999999999
	.quad	0x3fe6ce8101f31f47              # double 0.71270800000000001
	.quad	0x3feae8c47a17f413              # double 0.84091400000000005
	.quad	0x3fd48487b99d4520              # double 0.32058900000000001
	.quad	0x3fd344fe36d22425              # double 0.30108600000000002
	.quad	0x3feca47a9e2bcf92              # double 0.89507800000000004
	.quad	0x3fc4784230fcf80e              # double 0.15992000000000001
	.quad	0x3fc17b17ce52deca              # double 0.136569
	.quad	0x3f9026cc1ca3a4b5              # double 0.015772999999999999
	.quad	0x3fe67f7dfa00e27e              # double 0.70306299999999999
	.quad	0x3fe2bf37b8d3f184              # double 0.58584199999999997
	.quad	0x3fe908e581cf7879              # double 0.78233600000000003
	.quad	0x3fd103d145d85165              # double 0.26585799999999998
	.quad	0x3fc81d8622c45027              # double 0.18840100000000001
	.quad	0x3fd4ea24cc6822ff              # double 0.326791
	.quad	0x3fe55f0b28522ea1              # double 0.667852
	.quad	0x3fdfdc26dce39b45              # double 0.49781199999999998
	.quad	0x3fe4b27aa68f4b62              # double 0.646787
	.quad	0x3fc3f162ae4b0186              # double 0.155804
	.quad	0x3fd9c5de9c0229a6              # double 0.402702
	.quad	0x3fad7e45803cd142              # double 0.057604000000000002
	.quad	0x3fe1da836eb4e981              # double 0.55792399999999998
	.quad	0x3fc972b4528283d3              # double 0.19881299999999999
	.quad	0x3fc9e657b84db9c7              # double 0.20234199999999999
	.quad	0x3fefb7b6bb129025              # double 0.99117599999999994
	.quad	0x3fd1d15f02c4d65e              # double 0.27840399999999998
	.quad	0x3fbf83be6601bc99              # double 0.12310400000000001
	.quad	0x3fe669be09bb6aa5              # double 0.70040800000000003
	.quad	0x3fee7ff9b56323bc              # double 0.95312200000000002
	.quad	0x3fdc7eae5bc87db3              # double 0.44523200000000002
	.quad	0x3fe74985f06f6944              # double 0.72772499999999996
	.quad	0x3fe7f90fb65668c2              # double 0.74915299999999996
	.quad	0x3fd9ec2480e8c8ac              # double 0.40503800000000001
	.quad	0x3fb3720c8cd63cb8              # double 0.075958999999999999
	.quad	0x3fe8a67c6b8b6955              # double 0.77032299999999998
	.quad	0x3fe3a9845dc83233              # double 0.61444299999999996
	.quad	0x3fe8916ca46e08f2              # double 0.76775199999999999
	.quad	0x3fec9db65ecc3e32              # double 0.89425200000000005
	.quad	0x3fe7b009b30728e9              # double 0.74023899999999998
	.quad	0x3feb11b3f20a73f7              # double 0.84591099999999997
	.quad	0x3fb9801b43526528              # double 0.099611000000000005
	.quad	0x3fd63bc0a06e9ff1              # double 0.34739700000000001
	.quad	0x3fbd0342aa9f7b5b              # double 0.113331
	.quad	0x3fe1d703f2d3c793              # double 0.55749700000000002
	.quad	0x3fe675ee99a62ed3              # double 0.70189599999999996
	.quad	0x3fe8245b291b823d              # double 0.75443800000000005
	.quad	0x3fe51bcba3012168              # double 0.65964299999999998
	.quad	0x3fdc72b884406c01              # double 0.44450200000000001
	.quad	0x3fba675147f13059              # double 0.10313899999999999
	.quad	0x3fe02bfdb4cc2507              # double 0.50536999999999999
	.quad	0x3feef3647baa9b4a              # double 0.96721100000000004
	.quad	0x3fbe11dbca9691a7              # double 0.11745999999999999
	.quad	0x3fe511afc04c8bca              # double 0.65840900000000002
	.quad	0x3fc0eea63b688bdb              # double 0.13228300000000001
	.quad	0x3fd7b9f98b71b8aa              # double 0.370726
	.quad	0x3fe5deb0fadf2ecf              # double 0.68343399999999999
	.quad	0x3fec7b677f6b1a2a              # double 0.89006399999999997
	.quad	0x3fea6b3dd11be6e6              # double 0.82559099999999996
	.quad	0x3fcee74f2f123c43              # double 0.24143400000000001
	.quad	0x3fed26fa3fcc9eaa              # double 0.91100800000000004
	.quad	0x3fe7b38b47c73eee              # double 0.74066699999999996
	.quad	0x3fe22a9b499d0204              # double 0.56770100000000001
	.quad	0x3fd7b24638c97529              # double 0.37025599999999997
	.quad	0x3fef4827b6fe2e6f              # double 0.97755800000000003
	.quad	0x3fe9c28d434a01ac              # double 0.80499900000000002
	.quad	0x3fd5aaac1094a2ba              # double 0.33854200000000001
	.quad	0x3fc758298cc14403              # double 0.18237800000000001
	.quad	0x3fd96f9fcb0c026d              # double 0.39743800000000001
	.quad	0x3fddae5796bfca86              # double 0.46376600000000001
	.quad	0x3f9411c2a0232096              # double 0.019598999999999998
	.quad	0x3fa7ca42aed13943              # double 0.046464999999999999
	.quad	0x3fd813c68661ae71              # double 0.37620700000000001
	.quad	0x3fd768b19a415f46              # double 0.36576500000000001
	.quad	0x3fdee6ab9b23dd55              # double 0.48282900000000001
	.quad	0x3fd3fb69984a0e41              # double 0.31222
	.quad	0x3fc99a2834d26fa4              # double 0.200017
	.quad	0x3fec4adddf43c7d6              # double 0.88413900000000001
	.quad	0x3fab96f21f6cacd2              # double 0.053886000000000003
	.quad	0x3fde04c059210386              # double 0.46904000000000001
	.quad	0x3febafab53d640ea              # double 0.86519400000000002
	.quad	0x3fe4d5c0fcb4f1e5              # double 0.65109300000000003
	.quad	0x3fe93a08398a6549              # double 0.78833399999999998
	.quad	0x3fdd1df3300de4c5              # double 0.454953
	.quad	0x3fd0261bf37b8d3f              # double 0.25232599999999999
	.quad	0x3fe62b3aabcd78c4              # double 0.69277699999999998
	.quad	0x3f97c286f8ad2568              # double 0.023203000000000001
	.quad	0x3fcaf36694898f60              # double 0.21055299999999999
	.quad	0x3febd972cd7cf5f5              # double 0.87029400000000001
	.quad	0x3fbd377e1b8ed1bf              # double 0.11412799999999999
	.quad	0x3fd6a5a469d7342f              # double 0.35386000000000001
	.quad	0x3fe9108e581cf788              # double 0.78327100000000005
	.quad	0x3fc33c4f3ba775fb              # double 0.15027799999999999
	.quad	0x3f9dd334c5da6a44              # double 0.029125999999999999
	.quad	0x3fc0cb9ecf638002              # double 0.131214
	.quad	0x3fcaefdc9c4da900              # double 0.21044499999999999
	.quad	0x3fcffb3fa6defc7a              # double 0.24985499999999999
	.quad	0x3fe3de26916440f2              # double 0.62086799999999998
	.quad	0x3fe221554fbdad75              # double 0.56656899999999999
	.quad	0x3fd79e6256366d7a              # double 0.36904199999999998
	.quad	0x3fec0d4fdf3b645a              # double 0.87662499999999999
	.quad	0x3feaa2163fdd65a1              # double 0.83228599999999997
	.quad	0x3fe8781626b2f230              # double 0.76465899999999998
	.quad	0x3fd23e78e1932d6f              # double 0.28506300000000001
	.quad	0x3fd33dbc23315d70              # double 0.30064299999999999
	.quad	0x3fd0785729b280f1              # double 0.25734499999999999
	.quad	0x3fdcc3dab5c39bcc              # double 0.44945400000000002
	.quad	0x3fcbb5286b59146e              # double 0.21646599999999999
	.quad	0x3feb6b18116ebd4d              # double 0.856823
	.quad	0x3fe8781a5870da5e              # double 0.76466100000000004
	.quad	0x3fcb6238da3c2118              # double 0.21393499999999999
	.quad	0x3fe4954434e3369c              # double 0.64322100000000004
	.quad	0x3fe4f8897e996313              # double 0.655339
	.quad	0x3faa6ca03c4b09ea              # double 0.051610000000000003
	.quad	0x3fd77724fa8b4bf9              # double 0.366647
	.quad	0x3fde07faa044ae86              # double 0.46923700000000002
	.quad	0x3fd1ad7d7c2ca149              # double 0.27621400000000002
	.quad	0x3fdccd530489d27c              # double 0.45003199999999999
	.quad	0x3fe7b68ad6883772              # double 0.74103300000000005
	.quad	0x3f9dd8f92af9a8ce              # double 0.029148
	.quad	0x3f7892684cf0739b              # double 0.005999
	.quad	0x3fe0935daad60200              # double 0.51798900000000003
	.quad	0x3fe6092253111f0c              # double 0.68861499999999998
	.quad	0x3fd52135daad6020              # double 0.330152
	.quad	0x3fd0fc829cfdd228              # double 0.26541199999999998
	.quad	0x3fc21040bfe3b03e              # double 0.141121
	.quad	0x3fe7b9cd8127b2cc              # double 0.74143099999999995
	.quad	0x3fb3a2cecc814d72              # double 0.076702999999999993
	.quad	0x3fb567fd3f5b5fa2              # double 0.083617999999999997
	.quad	0x3fe961fe21d96e9c              # double 0.79321200000000002
	.quad	0x3feadac471b47842              # double 0.83920499999999998
	.quad	0x3fd492d55a3a083a              # double 0.32146200000000003
	.quad	0x3fecca9478c868ba              # double 0.899729
	.quad	0x3fea7b4a2339c0ec              # double 0.82755
	.quad	0x3fef962ae4b01861              # double 0.98708099999999998
	.quad	0x3fe3e071c53f39d2              # double 0.62114800000000003
	.quad	0x3fcac1871e6cd291              # double 0.20903099999999999
	.quad	0x3fda40895d0b73d2              # double 0.41018900000000003
	.quad	0x3fd8b4c7f3493858              # double 0.38603399999999999
	.quad	0x3fc23bbc6eb0b7c3              # double 0.14244799999999999
	.quad	0x3fd35c13fd0d0679              # double 0.30249500000000001
	.quad	0x3feed99029ae4f33              # double 0.96405799999999997
	.quad	0x3fe4c5bf26f1dc51              # double 0.64913900000000002
	.quad	0x3fe9033c60029f17              # double 0.78164500000000003
	.quad	0x3febd19157abb880              # double 0.86933199999999999
	.quad	0x3fc557ff9b56323c              # double 0.16674800000000001
	.quad	0x3fe634e3369b9d80              # double 0.69395600000000002
	.quad	0x3f9ef6f8f041461b              # double 0.030238999999999999
	.quad	0x3fb75d35653c9abb              # double 0.091266
	.quad	0x3fdb9f559b3d07c8              # double 0.43159999999999998
	.quad	0x3fee6b50b0f27bb3              # double 0.9506
	.quad	0x3fce3526527a2058              # double 0.23599700000000001
	.quad	0x3fe6696a26e54717              # double 0.70036799999999999
	.quad	0x3fef7f77af64063a              # double 0.98431000000000002
	.quad	0x3fe7f8705425f202              # double 0.74907699999999999
	.quad	0x3fea16872b020c4a              # double 0.81525000000000003
	.quad	0x3fc3d8383ad9f0a2              # double 0.15503600000000001
	.quad	0x3fef3039ef0f16f4              # double 0.97463699999999997
	.quad	0x3fe3d4c985f06f69              # double 0.61972499999999997
	.quad	0x3fe9d1d25aab4741              # double 0.806863
	.quad	0x3fdd113836a832ba              # double 0.45417600000000002
	.quad	0x3fdbb29a1b9f98b7              # double 0.43277599999999999
	.quad	0x3feb1e0a41a261bf              # double 0.84741699999999998
	.quad	0x3fe0383cf2cf95d5              # double 0.50686500000000001
	.quad	0x3fe325ebb7739f34              # double 0.59837899999999999
	.quad	0x3feba3ec02f2f987              # double 0.86375999999999997
	.quad	0x3fd6591cd1c7de51              # double 0.34918900000000003
	.quad	0x3fe94c8de2ac3223              # double 0.79059500000000005
	.quad	0x3fe0c1248d7e0264              # double 0.52357699999999996
	.quad	0x3fe12cc92146a1a5              # double 0.536717
	.quad	0x3fe9092ab68cef67              # double 0.78236899999999998
	.quad	0x3fe245f5ad96a6a0              # double 0.57103999999999999
	.quad	0x3fe6a2d2fe3f35a0              # double 0.707376
	.quad	0x3fb47192ea52ef91              # double 0.079857999999999998
	.quad	0x3fe669e7fb267c6c              # double 0.70042800000000005
	.quad	0x3febb8a7e73a365d              # double 0.86629100000000003
	.quad	0x3fdbe379b77c02b0              # double 0.43575900000000001
	.quad	0x3fe18323358f2e06              # double 0.54725800000000002
	.quad	0x3fd0763a19008206              # double 0.257216
	.quad	0x3fe542efd438d1d9              # double 0.66442100000000004
	.quad	0x3fc2d338f7985272              # double 0.14707100000000001
	.quad	0x3fd34883fd502257              # double 0.30130099999999999
	.quad	0x3fc133764f11b60b              # double 0.134383
	.quad	0x3fe68fb65668c261              # double 0.70504299999999998
	.quad	0x3fc6ca70d1fa3337              # double 0.17805299999999999
	.quad	0x3fe5a619da9c9928              # double 0.67652599999999996
	.quad	0x3fe680389f83be66              # double 0.703152
	.quad	0x3fdb3e81450efdca              # double 0.42569000000000001
	.quad	0x3fe2ff4fd6d7e88a              # double 0.59366600000000003
	.quad	0x3fa169a0ad8a1166              # double 0.034008999999999998
	.quad	0x3fe27bc5de9c022a              # double 0.57760900000000004
	.quad	0x3fc97b28954a7f80              # double 0.199071
	.quad	0x3fdfc4bd33d29564              # double 0.49638300000000002
	.quad	0x3fd66bdf4c2b51bd              # double 0.35033399999999998
	.quad	0x3fe8912556d19ded              # double 0.76771800000000001
	.quad	0x3fe24ab3edd8b60f              # double 0.57161899999999999
	.quad	0x3fe83d1cc100e6b0              # double 0.75746000000000002
	.quad	0x3fe36e9142b302f7              # double 0.60724699999999998
	.quad	0x3fdd80f55de58e65              # double 0.46099600000000002
	.quad	0x3fe835158b827fa2              # double 0.75648000000000004
	.quad	0x3fdb8919ef954eb1              # double 0.43024299999999999
	.quad	0x3fd5fb58d1526d8b              # double 0.34346599999999999
	.quad	0x3fe901d3aa369fcf              # double 0.78147299999999997
	.quad	0x3fead5fbb517a461              # double 0.83862099999999995
	.quad	0x3fe20d10f51ac9b0              # double 0.56409500000000001
	.quad	0x3fe45b2d4d4024b3              # double 0.63612999999999997
	.quad	0x3fe8903c8e25c811              # double 0.76760700000000004
	.quad	0x3fe28bbb1f255f35              # double 0.57955699999999999
	.quad	0x3feec430b178b370              # double 0.961449
	.quad	0x3fe1252ef911cf35              # double 0.53578899999999996
	.quad	0x3fb41c6088d6d3b7              # double 0.078558000000000003
	.quad	0x3fe792bc2fc69729              # double 0.73666200000000004
	.quad	0x3faba109d0635a42              # double 0.053962999999999997
	.quad	0x3fd04812be48a58b              # double 0.25439899999999999
	.quad	0x3fde2ec28b2a6b0e              # double 0.47160400000000002
	.quad	0x3fc96e935b91f70e              # double 0.198687
	.quad	0x3fc2de1198aeb80f              # double 0.14740200000000001
	.quad	0x3fe2a45b291b823d              # double 0.58256300000000005
	.quad	0x3faec2ce4649906d              # double 0.060080000000000001
	.quad	0x3feabeec39799e52              # double 0.83580600000000005
	.quad	0x3fc6bd6e8af81627              # double 0.17765600000000001
	.quad	0x3fd2e77d523b3637              # double 0.295379
	.quad	0x3fe3646f15619115              # double 0.60601000000000005
	.quad	0x3fe559ee88df3733              # double 0.66722800000000004
	.quad	0x3fe559b8023a6ce3              # double 0.66720199999999996
	.quad	0x3fe532e1693c03bc              # double 0.66246099999999997
	.quad	0x3fe0b68f08461f9f              # double 0.522285
	.quad	0x3fe7f1737542a23c              # double 0.748224
	.quad	0x3fc64a38327674d1              # double 0.17413999999999999
	.quad	0x3fe49f3c70c996b7              # double 0.64443799999999996
	.quad	0x3fef5b18548a9bd0              # double 0.97987000000000002
	.quad	0x3fea870fbeb9e493              # double 0.82898700000000003
	.quad	0x3fd5062d40aaeafb              # double 0.32850200000000002
	.quad	0x3fe9f251c193b3a7              # double 0.81083000000000005
	.quad	0x3feaffc32ebe596d              # double 0.84372100000000005
	.quad	0x3fdb23033a4723ab              # double 0.424012
	.quad	0x3fcc036006d0d499              # double 0.21885299999999999
	.quad	0x3fc7b352a8438088              # double 0.18515999999999999
	.quad	0x3fe260ce0b912dba              # double 0.57431699999999997
	.quad	0x3f8c504816f0068e              # double 0.013825
	.quad	0x3fb8f26aec0724b7              # double 0.097448999999999994
	.quad	0x3fbe8b6d86ec17ec              # double 0.119315
	.quad	0x3fd1a5daf07bfe7e              # double 0.27574799999999999
	.quad	0x3fd55119ce075f70              # double 0.33307500000000001
	.quad	0x3fdce4217d2849cb              # double 0.45142399999999999
	.quad	0x3fd962e09fe86834              # double 0.39666000000000001
	.quad	0x3fd356d5cfaacd9f              # double 0.30217500000000003
	.quad	0x3fdb65b63d3e4ef0              # double 0.42808299999999999
	.quad	0x3fe1cbd987c6327f              # double 0.55613400000000002
	.quad	0x3fd7b05faebc408e              # double 0.37014000000000002
	.quad	0x3fe5cda4ce8101f3              # double 0.68135299999999999
	.quad	0x3fe7a2749f0e4da1              # double 0.73858100000000004
	.quad	0x3fe5db573eab367a              # double 0.68302499999999999
	.quad	0x3fe59a4bdba0a527              # double 0.67508500000000005
	.quad	0x3fe7c9b1fab96f22              # double 0.743371
	.quad	0x3fe12c12ad81adeb              # double 0.53663000000000005
	.quad	0x3fe85c2b0ea18373              # double 0.76125100000000001
	.quad	0x3fe55959a30984e4              # double 0.667157
	.quad	0x3fec157eed45e918              # double 0.87762399999999996
	.quad	0x3fe2238da3c21188              # double 0.56684000000000001
	.quad	0x3fd21dd5d3dc8b87              # double 0.28307100000000002
	.quad	0x3f8cd78c436fc159              # double 0.014083
	.quad	0x3fe7f77292c49342              # double 0.74895599999999996
	.quad	0x3fda9c0ebedfa440              # double 0.41577500000000001
	.quad	0x3fc59991361dc93f              # double 0.16874900000000001
	.quad	0x3fe5ddf6555c52e7              # double 0.68334499999999998
	.quad	0x3fbf502ababead4f              # double 0.122317
	.quad	0x3fd5ce67d77fae36              # double 0.340723
	.quad	0x3fac7778dd616f87              # double 0.055599000000000003
	.quad	0x3fea66d58c8eef1c              # double 0.82505300000000003
	.quad	0x3fc30ecb74ddf86e              # double 0.14888899999999999
	.quad	0x3f75ad106ee30caa              # double 0.0052919999999999998
	.quad	0x3fca3fc43b2dd378              # double 0.205071
	.quad	0x3fdbd2849cb252ce              # double 0.434724
	.quad	0x3fe3186fcdee34fc              # double 0.59673299999999996
	.quad	0x3feda5d8d79d0a67              # double 0.92649499999999996
	.quad	0x3fc50a67620ee8d1              # double 0.16438
	.quad	0x3fd6c96030c23fab              # double 0.356041
	.quad	0x3fef47fbacb42891              # double 0.97753699999999998
	.quad	0x3fe88b1dd5d3dc8c              # double 0.76698200000000005
	.quad	0x3fc5c0ca600b0293              # double 0.16994600000000001
	.quad	0x3f7bb7b6bb129025              # double 0.0067669999999999996
	.quad	0x3fd419c5a3e39f77              # double 0.31407299999999999
	.quad	0x3fd61615ebfa8f7e              # double 0.34509800000000002
	.quad	0x3fedd5992428d435              # double 0.93232400000000004
	.quad	0x3fd415a8deb0fadf              # double 0.31382199999999999
	.quad	0x3fe54dfaca361998              # double 0.66576900000000006
	.quad	0x3fd2ab649d388a8b              # double 0.291711
	.quad	0x3fe4fd8cf398e970              # double 0.65595099999999995
	.quad	0x3fc86c54bcf0b6b7              # double 0.190806
	.quad	0x3fe51c0229a5ebb7              # double 0.65966899999999995
	.quad	0x3fed24e7ab756430              # double 0.91075499999999998
	.quad	0x3feff5bc44bf4cb2              # double 0.99874700000000005
	.quad	0x3fe9a7ded6ba8c58              # double 0.80174199999999995
	.quad	0x3feccac29bf162ae              # double 0.89975099999999997
	.quad	0x3fef00e496ededaf              # double 0.96885900000000002
	.quad	0x3fe31272c94b380d              # double 0.59600200000000003
	.quad	0x3fb1b39e279dd3bb              # double 0.069147
	.quad	0x3f81bef49cf56ead              # double 0.0086650000000000008
	.quad	0x3fe05019f3c70c99              # double 0.50977799999999995
	.quad	0x3fe2d783dff3f0fe              # double 0.588808
	.quad	0x3fec1129888f861a              # double 0.87709499999999996
	.quad	0x3fdd5abc0e38a7e7              # double 0.45866299999999999
	.quad	0x3fe3cb07d0aed99d              # double 0.61853400000000003
	.quad	0x3fe5f5147f130596              # double 0.68616699999999997
	.quad	0x3fc2c069e7fb267c              # double 0.14649699999999999
	.quad	0x3fe149e01de26916              # double 0.54026799999999997
	.quad	0x3fe5627bf61aa3f0              # double 0.66827199999999998
	.quad	0x3fee5b530ced4e4d              # double 0.94864800000000005
	.quad	0x3fe126a012599ed8              # double 0.53596500000000002
	.quad	0x3fc41c9b41398634              # double 0.15712300000000001
	.quad	0x3fec6b441bb8c32b              # double 0.88809400000000005
	.quad	0x3feaa87e38eb0319              # double 0.83306800000000003
	.quad	0x3fdedca07f66e86c              # double 0.48221599999999998
	.quad	0x3fc93e9a6f826edb              # double 0.19722300000000001
	.quad	0x3fedbf0995aaf790              # double 0.92957000000000001
	.quad	0x3fd28e4fb97bb731              # double 0.28993600000000003
	.quad	0x3fba055757d5a9eb              # double 0.101644
	.quad	0x3fe2133e35c5b4ab              # double 0.56484900000000005
	.quad	0x3feff8fcd67fd3f6              # double 0.99914400000000003
	.quad	0x3fb5eafee6fb4c3c              # double 0.085616999999999999
	.quad	0x3fdd57646ae3a3a9              # double 0.45845900000000001
	.quad	0x3fb14f26aec0724b              # double 0.067613999999999994
	.quad	0x3fb92684cf0739b0              # double 0.098243999999999997
	.quad	0x3fe47bd6a593a2e0              # double 0.64011700000000005
	.quad	0x3fc15e39713ad5bf              # double 0.135688
	.quad	0x3fe20f3a9b068124              # double 0.56435900000000006
	.quad	0x3fd17d1bb4916ca4              # double 0.27326099999999998
	.quad	0x3fa8b5aa715831f0              # double 0.048260999999999998
	.quad	0x3fea5cf67b1c0011              # double 0.82384800000000002
	.quad	0x3fdd09fa54c55433              # double 0.45373400000000003
	.quad	0x3fe47ebf22c01e69              # double 0.64047200000000004
	.quad	0x3fc4b33daf8df7a5              # double 0.16172
	.quad	0x3fda80f55de58e65              # double 0.41412100000000002
	.quad	0x3fdccd035371971c              # double 0.450013
	.quad	0x3fbc959e6256366d              # double 0.11165799999999999
	.quad	0x3fddb18548a9bcfd              # double 0.46395999999999998
	.quad	0x3fc075e6362a5e78              # double 0.12859799999999999
	.quad	0x3fc98cda6e75ff61              # double 0.19961100000000001
	.quad	0x3fdfec13b9f127f6              # double 0.49878400000000001
	.quad	0x3f82839042d8c2a4              # double 0.0090399999999999994
	.quad	0x3fe63e9424e59296              # double 0.69513899999999995
	.quad	0x3fe0263f9a49c2c2              # double 0.50466900000000003
	.quad	0x3fba658c4bd33d29              # double 0.103112
	.quad	0x3fe6c2d05f288484              # double 0.71128100000000005
	.quad	0x3fee5f6555c52e73              # double 0.94914500000000002
	.quad	0x3fe6dd0fa58f7122              # double 0.71448500000000004
	.quad	0x3fdcb5e529bae46d              # double 0.448602
	.quad	0x3fd28beb5b2d4d40              # double 0.28978999999999999
	.quad	0x3fa1f10667f90d9d              # double 0.035041999999999997
	.quad	0x3fc8694898f605ab              # double 0.19071299999999999
	.quad	0x3facbe40420f6f09              # double 0.056139000000000001
	.quad	0x3fd33d46b26bf877              # double 0.30061500000000002
	.quad	0x3fea8151a437824d              # double 0.82828599999999997
	.quad	0x3fe0978b3700474e              # double 0.51849900000000004
	.quad	0x3fb8b8f14db59579              # double 0.096572000000000005
	.quad	0x3fea0902de00d1b7              # double 0.81359999999999999
	.quad	0x3fe13ae685db76b4              # double 0.53844000000000003
	.quad	0x3fe996030c23fab1              # double 0.79956199999999999
	.quad	0x3fe185942917507f              # double 0.54755600000000004
	.quad	0x3fda530489d27c39              # double 0.41131699999999999
	.quad	0x3feda3f67f4dbdf9              # double 0.92626500000000001
	.quad	0x3fd31272c94b380d              # double 0.29800100000000002
	.quad	0x3fd5f40a2877ee4e              # double 0.34301999999999999
	.quad	0x3fccbcdfefbf401c              # double 0.22451399999999999
	.quad	0x3fda866e43aa79bc              # double 0.41445500000000002
	.quad	0x3fadfc3b4f616723              # double 0.058564999999999999
	.quad	0x3fd0c4da9003eea2              # double 0.262015
	.quad	0x3fc9e1eb4202d9cf              # double 0.202207
	.quad	0x3fe8b4fe79ee02a7              # double 0.77209399999999995
	.quad	0x3fe2e1c58255b036              # double 0.59006000000000003
	.quad	0x3fe2c743201040c0              # double 0.58682400000000001
	.quad	0x3fece0a2014727dd              # double 0.90242100000000003
	.quad	0x3fe1597d49d7ba67              # double 0.54217400000000004
	.quad	0x3fef962cfd8f0c78              # double 0.98708200000000001
	.quad	0x3fd854c122749f0e              # double 0.38017299999999998
	.quad	0x3fb9454152b0a6fc              # double 0.098712999999999995
	.quad	0x3fe53d96638433d7              # double 0.66376800000000002
	.quad	0x3fe7185f06f69446              # double 0.72172499999999995
	.quad	0x3fd3bcd35a858794              # double 0.30840000000000001
	.quad	0x3f9b93037d63022e              # double 0.026928000000000001
	.quad	0x3fded78c436fc159              # double 0.481906
	.quad	0x3fe42b3461309c80              # double 0.630274
	.quad	0x3fb1615ebfa8f7db              # double 0.067891999999999994
	.quad	0x3fef82b1f687b13a              # double 0.98470400000000002
	.quad	0x3fdb117b5286b591              # double 0.42294199999999998
	.quad	0x3fe6fc43b2dd377e              # double 0.71829399999999999
	.quad	0x3fddf16f4384ba0f              # double 0.46786100000000003
	.quad	0x3fd86e04c0592104              # double 0.38171500000000003
	.quad	0x3fe67d7a13c254a4              # double 0.70281700000000003
	.quad	0x3fee305100a393ee              # double 0.94339799999999996
	.quad	0x3fed988f42fe8251              # double 0.92487299999999995
	.quad	0x3feb5dbb9cf9a06a              # double 0.85519199999999995
	.quad	0x3fd8f81626b2f230              # double 0.39014199999999999
	.quad	0x3fd4019f3c70c997              # double 0.31259900000000002
	.quad	0x3fc8c460ed80a17b              # double 0.193493
	.quad	0x3fd88262456f75da              # double 0.38295800000000002
	.quad	0x3fccedcc20d5629e              # double 0.22600700000000001
	.quad	0x3fbbe8ab4fa48302              # double 0.109019
	.quad	0x3f88e757928e0c9e              # double 0.012160000000000001
	.quad	0x3f9572de43ed959a              # double 0.020945999999999999
	.quad	0x3faa8b08dd1e53a8              # double 0.051841999999999999
	.quad	0x3fef09070fbeb9e5              # double 0.96985200000000004
	.quad	0x3f99a8049667b5f2              # double 0.025055000000000001
	.quad	0x3fe46a875d56f32c              # double 0.63800400000000002
	.quad	0x3fd20f3cb3e5753a              # double 0.28217999999999999
	.quad	0x3fe68f81e8a2ec29              # double 0.70501800000000003
	.quad	0x3fcf97cc39ffd60f              # double 0.24682000000000001
	.quad	0x3fc85b39e279dd3c              # double 0.19028400000000001
	.quad	0x3fe910b1feeb2d0a              # double 0.78328799999999998
	.quad	0x3fc33bd9cae21102              # double 0.15026400000000001
	.quad	0x3fe74faacd9e83e4              # double 0.72847499999999998
	.quad	0x3fe8f8d2e514c22f              # double 0.78037400000000001
	.quad	0x3fea9d5c31593e60              # double 0.83170900000000003
	.quad	0x3fec33e1437c5693              # double 0.88133300000000003
	.quad	0x3fd58726d04e618d              # double 0.33637400000000001
	.quad	0x3fd9204295a6c5d2              # double 0.392594
	.quad	0x3fc0a8112ba16e7a              # double 0.13012899999999999
	.quad	0x3fe306d938151a43              # double 0.59458599999999995
	.quad	0x3fa5801b43526528              # double 0.041993000000000003
	.quad	0x3fea7b6dca07f66f              # double 0.82756700000000005
	.quad	0x3feb1741d084e832              # double 0.84658900000000004
	.quad	0x3fe32f76e6106ab1              # double 0.59954399999999997
	.quad	0x3fea1f601797cc3a              # double 0.81633
	.quad	0x3fd1c9c4da9003ef              # double 0.27794000000000002
	.quad	0x3fb31b9b66f9335d              # double 0.074639999999999998
	.quad	0x3fbeed352220bc38              # double 0.120807
	.quad	0x3fe9d823422467be              # double 0.80763399999999996
	.quad	0x3fefc22036006d0d              # double 0.99244699999999996
	.quad	0x3fe68b19a415f45e              # double 0.70448
	.quad	0x3fb739c0ebedfa44              # double 0.090725
	.quad	0x3fdcf080303c07ee              # double 0.452179
	.quad	0x3fe4b899392189be              # double 0.64753400000000005
	.quad	0x3feb0aed99cbee80              # double 0.84508399999999995
	.quad	0x3fe65bcec84f8f8a              # double 0.69870699999999997
	.quad	0x3fe4fb56b8737974              # double 0.65568099999999996
	.quad	0x3fe292e83a109d06              # double 0.58043299999999998
	.quad	0x3fe2ea550870110a              # double 0.59110499999999999
	.quad	0x3fee84167a95c854              # double 0.95362400000000002
	.quad	0x3fea619fc2a8869c              # double 0.82441699999999995
	.quad	0x3fdfeb5b2d4d4025              # double 0.49874000000000002
	.quad	0x3f948a159817b95a              # double 0.020057999999999999
	.quad	0x3fd8544fe36d2242              # double 0.38014599999999998
	.quad	0x3fea1fd9ba1b1961              # double 0.816388
	.quad	0x3fe0a1a0cf1800a8              # double 0.51973000000000003
	.quad	0x3fd6d46b26bf876a              # double 0.356715
	.quad	0x3fe069014b599aa6              # double 0.512818
	.quad	0x3fc5d68c692f6e83              # double 0.17061000000000001
	.quad	0x3fd719934efcbd55              # double 0.36093599999999998
	.quad	0x3fe89f16b11c6d1e              # double 0.76941999999999999
	.quad	0x3fe3cc5b8dc55001              # double 0.61869600000000002
	.quad	0x3fdf6e71cda2b5a2              # double 0.491116
	.quad	0x3fe5db37c99ae925              # double 0.68301000000000001
	.quad	0x3feb43675ddd2ae9              # double 0.85197800000000001
	.quad	0x3fd68800eae18aca              # double 0.352051
	.quad	0x3fedfebaf102363b              # double 0.93734499999999998
	.quad	0x3f7a1ec4e7253da7              # double 0.0063769999999999999
	.quad	0x3fd78a1dfb9389b5              # double 0.36780499999999999
	.quad	0x3fec9231c64ba94c              # double 0.89284600000000002
	.quad	0x3fefc36113404ea5              # double 0.99260000000000003
	.quad	0x3fd2a1be2b4959e6              # double 0.29112199999999999
	.quad	0x3fe6b12d3415b142              # double 0.70912799999999998
	.quad	0x3fe56f5a964e8b7e              # double 0.66984299999999997
	.quad	0x3fcb6a0dbad3a605              # double 0.214174
	.quad	0x3fe5f66c6de76428              # double 0.68633100000000002
	.quad	0x3fbc426351deefe5              # double 0.110388
	.quad	0x3fed35fc3b4f6167              # double 0.91283999999999998
	.quad	0x3fe8615ca6ca03c5              # double 0.76188500000000003
	.quad	0x3fe157689ca18bd6              # double 0.54191999999999996
	.quad	0x3fe1a76965f5275f              # double 0.55168600000000001
	.quad	0x3fef95f02c4d65e4              # double 0.98705299999999995
	.quad	0x3fce196d8f4f93bc              # double 0.235151
	.quad	0x3feb8303c07ee0b1              # double 0.85974300000000003
	.quad	0x3fa77164c729f59d              # double 0.045787000000000001
	.quad	0x3fefd64d7f0ed3d8              # double 0.99490999999999996
	.quad	0x3fd3e5aff2a172ac              # double 0.310894
	.quad	0x3fef2c14c660a201              # double 0.97413099999999996
	.quad	0x3fe5685b9e8c47a1              # double 0.66898899999999994
	.quad	0x3fc16238da3c2118              # double 0.13580999999999999
	.quad	0x3fec9f4d37c1376d              # double 0.89444599999999996
	.quad	0x3fee988094e5d5b2              # double 0.95611599999999997
	.quad	0x3fe14463065f9592              # double 0.53959800000000002
	.quad	0x3fcc3bbc6eb0b7c3              # double 0.22057299999999999
	.quad	0x3fc1a7b0b3919264              # double 0.13793
	.quad	0x3fe8170b49e01de2              # double 0.75281299999999995
	.quad	0x3fee228997c3d684              # double 0.94171599999999999
	.quad	0x3fc52074ea8da7f4              # double 0.16505300000000001
	.quad	0x3fda38c111ada76e              # double 0.40971400000000002
	.quad	0x3f988c60cbf2b23a              # double 0.023973000000000001
	.quad	0x3fca3f4666ec9e23              # double 0.20505599999999999
	.quad	0x3fe22d794a6eb91b              # double 0.56805099999999997
	.quad	0x3fcadd50a88effe3              # double 0.20987900000000001
	.quad	0x3fa2eff5c6c11a11              # double 0.036986999999999999
	.quad	0x3fd21b5c7cd898b3              # double 0.28292
	.quad	0x3fe8d7f0ed3d859d              # double 0.77636000000000005
	.quad	0x3fe5eda22f6a50d7              # double 0.68525800000000003
	.quad	0x3fa20902de00d1b7              # double 0.035224999999999999
	.quad	0x3fe171cfbb949625              # double 0.54514300000000004
	.quad	0x3fa68c26138fffbd              # double 0.044038000000000001
	.quad	0x3fed41248d7e0264              # double 0.91420199999999995
	.quad	0x3fe2601797cc3a00              # double 0.57423000000000002
	.quad	0x3feef4c2b51bd61f              # double 0.96737799999999996
	.quad	0x3fed8b06c43f5f91              # double 0.92322099999999996
	.quad	0x3feba79bbadc0981              # double 0.86421000000000003
	.quad	0x3fe67d6733ebbfd7              # double 0.70280799999999999
	.quad	0x3fe97bd05af6c69b              # double 0.79636399999999996
	.quad	0x3fc7d15f02c4d65e              # double 0.18607699999999999
	.quad	0x3fcedd4845132f88              # double 0.24112800000000001
	.quad	0x3fe9b78897e99631              # double 0.80365399999999998
	.quad	0x3fe37d1351159c49              # double 0.60901799999999995
	.quad	0x3fe62f78feef5ec8              # double 0.69329499999999999
	.quad	0x3fe08010c6f7a0b6              # double 0.51563300000000001
	.quad	0x3fed2cc70867ad8e              # double 0.91171599999999997
	.quad	0x3fb53c148344c37e              # double 0.082947999999999993
	.quad	0x3fd73ca7503b81b6              # double 0.36307699999999998
	.quad	0x3fe7f1ac14c660a2              # double 0.748251
	.quad	0x3fc0bcf0b6b6e0d2              # double 0.13076599999999999
	.quad	0x3fdee71476af89c6              # double 0.48285400000000001
	.quad	0x3fd080b242070b8d              # double 0.257855
	.quad	0x3fe9beb18116ebd5              # double 0.80452800000000002
	.quad	0x3fa5dd6e04c05921              # double 0.042705
	.quad	0x3fd742b302f72b45              # double 0.36344599999999999
	.quad	0x3fc298cc144028e5              # double 0.145288
	.quad	0x3fd52a9d627bf61b              # double 0.33072600000000002
	.quad	0x3fd57991bc558644              # double 0.33554499999999998
	.quad	0x3fe013db7f173754              # double 0.50242399999999998
	.quad	0x3fd7a109d0635a42              # double 0.36920399999999998
	.quad	0x3fe33df2a9d627bf              # double 0.60131199999999996
	.quad	0x3feb94b7b28954a8              # double 0.861904
	.quad	0x3fb026bb55ac03ff              # double 0.063090999999999994
	.quad	0x3fe3ef86a098915c              # double 0.62298900000000001
	.quad	0x3fe69bf37b8d3f18              # double 0.70653699999999997
	.quad	0x3fe4a47cb70ac3a8              # double 0.64507899999999996
	.quad	0x3fd1f86a098915be              # double 0.28078700000000001
	.quad	0x3fc4d538ac18f81f              # double 0.16275700000000001
	.quad	0x3fd60abf76a2f48c              # double 0.34440599999999999
	.quad	0x3fed939eadd590c1              # double 0.92427000000000004
	.quad	0x3fda63dc486ad2dd              # double 0.41234500000000002
	.quad	0x3fb7db8fde2ef4e0              # double 0.093193999999999999
	.quad	0x3fc2d3ae685db76b              # double 0.14708499999999999
	.quad	0x3fe8979e16d6dc1a              # double 0.76850799999999997
	.quad	0x3fd0204af922962d              # double 0.251971
	.quad	0x3fef3c70c996b767              # double 0.97612799999999999
	.quad	0x3f91709310129cbb              # double 0.017031000000000001
	.quad	0x3fe46c2ce4649907              # double 0.63820500000000002
	.quad	0x3fe6a5332acfb763              # double 0.70766600000000002
	.quad	0x3febd1697f1f9ad0              # double 0.869313
	.quad	0x3fcee0f3cb3e5754              # double 0.24124000000000001
	.quad	0x3fb639c51dabe271              # double 0.086818999999999993
	.quad	0x3fe3218def416bdb              # double 0.59784599999999999
	.quad	0x3fe9077036c9c0a9              # double 0.78215800000000002
	.quad	0x3fe08bbd3804534c              # double 0.51705800000000002
	.quad	0x3fe42a12f901083e              # double 0.63013600000000003
	.quad	0x3fc4c985f06f6944              # double 0.16239999999999999
	.quad	0x3fe4dc3bd5992429              # double 0.65188400000000002
	.quad	0x3fdf000000000000              # double 0.484375
	.quad	0x3fe7aa715831f03d              # double 0.73955599999999999
	.quad	0x3fcd7bd05af6c69b              # double 0.23034099999999999
	.quad	0x3fe690a137f38c54              # double 0.70515499999999998
	.quad	0x3fea2799a1fd156a              # double 0.817334
	.quad	0x3fe3c1f212d77319              # double 0.617425
	.quad	0x3fd2cd4ed2cbea4f              # double 0.29378100000000001
	.quad	0x3fbd38fffbce4218              # double 0.114151
	.quad	0x3fde9888f861a60d              # double 0.47805999999999998
	.quad	0x3fdefde2ef4e0115              # double 0.48424600000000001
	.quad	0x3fd0b2d905c03361              # double 0.26091599999999998
	.quad	0x3fd2ba237cdcca71              # double 0.29261100000000001
	.quad	0x3fb4ec636b096356              # double 0.081731999999999999
	.quad	0x3fb66fc58ab92c06              # double 0.087642999999999998
	.quad	0x3fc64028e4fb97bb              # double 0.17383299999999999
	.quad	0x3fd597d06bbdbe3c              # double 0.337391
	.quad	0x3fefadf9378ee286              # double 0.98998699999999995
	.quad	0x3fef3dcf0307f23d              # double 0.97629500000000002
	.quad	0x3fe1be1c9b413986              # double 0.55445699999999998
	.quad	0x3fe053f39d1b2e5a              # double 0.51024800000000003
	.quad	0x3fd326f1dc50ce4f              # double 0.29925200000000002
	.quad	0x3fe9cdd93c46d82c              # double 0.80637800000000003
	.quad	0x3fc5964a59c065b6              # double 0.16864899999999999
	.quad	0x3fe6f961804d9839              # double 0.71794199999999997
	.quad	0x3fdae8c0485a0be5              # double 0.420456
	.quad	0x3fe68e4da09cc31a              # double 0.70487100000000003
	.quad	0x3feaf91c4b90214b              # double 0.84290900000000002
	.quad	0x3fea834091c08744              # double 0.82852199999999998
	.quad	0x3fe343201040bfe4              # double 0.60194400000000003
	.quad	0x3fa5fdac68a936c6              # double 0.042951000000000003
	.quad	0x3fe11f383f0bae8a              # double 0.53506100000000001
	.quad	0x3f95b4edb2f661f2              # double 0.021198000000000002
	.quad	0x3fe83b2788db0575              # double 0.75722100000000003
	.quad	0x3fede72da122fad7              # double 0.93447000000000002
	.quad	0x3fea5ca07f66e86c              # double 0.82380699999999995
	.quad	0x3fd2224edf612407              # double 0.28334399999999998
	.quad	0x3fce2730c67168f9              # double 0.235571
	.quad	0x3fe3e9dd7ecbb7fa              # double 0.62229800000000002
	.quad	0x3fb041248d7e0264              # double 0.063493999999999995
	.quad	0x3fed78c868b9fdbd              # double 0.92099399999999998
	.quad	0x3fce8bd230b9dc2f              # double 0.23864199999999999
	.quad	0x3fe517b0f6ad70e7              # double 0.65914200000000001
	.quad	0x3fe42938de6ddf01              # double 0.63003200000000004
	.quad	0x3feadfe542e557de              # double 0.83983099999999999
	.quad	0x3fd3857f3061c79b              # double 0.30502299999999999
	.quad	0x3fce7a9e2bcf91a3              # double 0.238117
	.quad	0x3fd285ad538ac190              # double 0.28940900000000003
	.quad	0x3fd39ca5bd944aa5              # double 0.30643599999999999
	.quad	0x3fe693faf42784a9              # double 0.70556399999999997
	.quad	0x3fe572a5a469d734              # double 0.67024499999999998
	.quad	0x3fe45349be8ff328              # double 0.63516700000000004
	.quad	0x3fb9600f345069a5              # double 0.099122000000000002
	.quad	0x3f9b8fde2ef4e011              # double 0.026915999999999999
	.quad	0x3fcf56eac8605682              # double 0.24484
	.quad	0x3fee9a9973d9ec70              # double 0.956372
	.quad	0x3fe4e6cf41f212d7              # double 0.65317499999999995
	.quad	0x3fc1f141205bc01a              # double 0.14017499999999999
	.quad	0x3fdd024f6598e10d              # double 0.453266
	.quad	0x3fb23f572de43ed9              # double 0.071278999999999995
	.quad	0x3fc97b634dad31fd              # double 0.199078
	.quad	0x3fe8e4e48626f60e              # double 0.77794099999999999
	.quad	0x3fe73c0e38a7e73a              # double 0.72608099999999998
	.quad	0x3fe585ff1d81f106              # double 0.67260699999999995
	.quad	0x3fdf5f2452c59fb2              # double 0.49018200000000001
	.quad	0x3fe1212513b5bf6a              # double 0.53529599999999999
	.quad	0x3fe1bf572de43ed9              # double 0.55460699999999996
	.quad	0x3fe9deaee2003ab8              # double 0.80843299999999996
	.quad	0x3fb4cad57bc7f77b              # double 0.081220000000000001
	.quad	0x3fe1c254a3c64346              # double 0.55497200000000002
	.quad	0x3fef352c9d16fc9c              # double 0.97524100000000002
	.quad	0x3fe649a34ca0c283              # double 0.69648900000000002
	.quad	0x3fe0132f87ad080b              # double 0.50234199999999996
	.quad	0x3fed34b945308bb9              # double 0.912686
	.quad	0x3fbf42fe82517e78              # double 0.122116
	.quad	0x3fd900c9539b8887              # double 0.39067299999999999
	.quad	0x3fe565f30e7ff584              # double 0.66869500000000004
	.quad	0x3fd450870110a138              # double 0.317415
	.quad	0x3fc0d2674080f990              # double 0.13142100000000001
	.quad	0x3fd98255b035bd51              # double 0.39857999999999999
	.quad	0x3fd80d0edc3bd599              # double 0.37579699999999999
	.quad	0x3fed4812be48a58b              # double 0.91504799999999997
	.quad	0x3febd8127b2cc708              # double 0.87012599999999996
	.quad	0x3fd2ec2ce4649907              # double 0.29566500000000001
	.quad	0x3fad6eac8605681f              # double 0.057485000000000001
	.quad	0x3fe022120e1f7d74              # double 0.50415900000000002
	.quad	0x3fe14d983947496b              # double 0.54072200000000004
	.quad	0x3fe62dddf43c7d5f              # double 0.69309900000000002
	.quad	0x3fe15bf26f1dc50d              # double 0.54247400000000001
	.quad	0x3fe3645e4e69f05f              # double 0.60600200000000004
	.quad	0x3fd03d4f15e7c8d2              # double 0.25374200000000002
	.quad	0x3fef7202107b7846              # double 0.98266699999999996
	.quad	0x3fe8555c52e72da1              # double 0.76041999999999998
	.quad	0x3fda256798958d9b              # double 0.40853299999999998
	.quad	0x3fc0fc8b0079a283              # double 0.13270699999999999
	.quad	0x3fd02135daad6020              # double 0.252027
	.quad	0x3fec823e9ea14057              # double 0.890899
	.quad	0x3fe5fdcbddb9841b              # double 0.68723100000000004
	.quad	0x3fc31159c4977425              # double 0.14896699999999999
	.quad	0x3fe917efe0ce0b91              # double 0.78417199999999998
	.quad	0x3fcefcb4f1e4b44a              # double 0.242087
	.quad	0x3fcbdd11be6e6538              # double 0.21768399999999999
	.quad	0x3fdffc3f811f4f51              # double 0.49977100000000002
	.quad	0x3fd1d506573215fd              # double 0.27862700000000001
	.quad	0x3fd614445aa2e3c5              # double 0.34498699999999999
	.quad	0x3fe12a715831f03d              # double 0.53643099999999999
	.quad	0x3fe1bbeec39799e5              # double 0.55419099999999999
	.quad	0x3fe52bcf91a32b13              # double 0.66159800000000002
	.quad	0x3fd3bc72e275ab7e              # double 0.30837700000000001
	.quad	0x3fe9f8f8a4c1ebc8              # double 0.81164199999999997
	.quad	0x3fd3436fc158fb44              # double 0.30099100000000001
	.quad	0x3feaadf505d0fa59              # double 0.833735
	.quad	0x3fdc8a9bcfd4bf0a              # double 0.44596000000000002
	.quad	0x3fe6ea7264a16a48              # double 0.71611899999999995
	.quad	0x3fd0477ff151e753              # double 0.25436399999999998
	.quad	0x3fc7632c1f42bb66              # double 0.18271399999999999
	.quad	0x3f8b413986338b48              # double 0.013308
	.quad	0x3f95f91600f34507              # double 0.021458000000000001
	.quad	0x3fddb9cf9a06a6e3              # double 0.46446599999999999
	.quad	0x3fb93c148344c37e              # double 0.098572999999999993
	.quad	0x3fd2fe60c38f3669              # double 0.29677599999999998
	.quad	0x3f9d538ac18f81e9              # double 0.028639000000000001
	.quad	0x3fe7e76640a6b93d              # double 0.74699700000000002
	.quad	0x3fea64217d2849cb              # double 0.82472299999999998
	.quad	0x3fd7ccab3edd8b61              # double 0.371867
	.quad	0x3fbbc0a06e9ff0cc              # double 0.108408
	.quad	0x3fead78e5c4eb570              # double 0.83881300000000003
	.quad	0x3fe6a6527a20578e              # double 0.70780299999999996
	.quad	0x3fc39aa60913a4f8              # double 0.15315699999999999
	.quad	0x3fb9014b599aa609              # double 0.097675999999999999
	.quad	0x3faf7fcfc3f811f5              # double 0.061522
	.quad	0x3fbae88df37329c3              # double 0.105111
	.quad	0x3fea6412cf0f9d2c              # double 0.824716
	.quad	0x3fe50a222d5171e3              # double 0.65748700000000004
	.quad	0x3feb36a619da9c99              # double 0.85042099999999998
	.quad	0x3feb17d6b65a9a80              # double 0.84665999999999997
	.quad	0x3fdfcef240fa9c13              # double 0.497006
	.quad	0x3fd342396073de1e              # double 0.30091699999999999
	.quad	0x3fa4b252ce032db2              # double 0.040423000000000001
	.quad	0x3fe47be9856a37ac              # double 0.64012599999999997
	.quad	0x3fec60bf5d78811b              # double 0.88680999999999999
	.quad	0x3fb3b83cf2cf95d5              # double 0.077030000000000001
	.quad	0x3fe0b9ffd60e94ee              # double 0.52270499999999998
	.quad	0x3fea7589efd86a90              # double 0.82684800000000003
	.quad	0x3fdd1359791819d2              # double 0.45430599999999999
	.quad	0x3fedd1dcd7060bb3              # double 0.93186800000000003
	.quad	0x3fe27625204af923              # double 0.57692200000000005
	.quad	0x3fe3ce7685985ad5              # double 0.61895299999999998
	.quad	0x3feb492146a1a501              # double 0.85267700000000002
	.quad	0x3fe98c0ce91c8eac              # double 0.798346
	.quad	0x3fdf86c226809d49              # double 0.49259999999999998
	.quad	0x3fb8d76ab5807fed              # double 0.097036999999999998
	.quad	0x3fe1078316a05575              # double 0.53216699999999995
	.quad	0x3fed92e1ef73c0c2              # double 0.92418
	.quad	0x3fca14e7ee9142b3              # double 0.203763
	.quad	0x3f921e1d2178f68c              # double 0.017693
	.quad	0x3feaca9ac36544fe              # double 0.83723199999999998
	.quad	0x3fdb7304039abf34              # double 0.42889500000000003
	.quad	0x3f8caafbc1acde1a              # double 0.013998
	.quad	0x3fbe64c2f837b4a2              # double 0.118725
	.quad	0x3fe1a8b4bf8fcd68              # double 0.551844
	.quad	0x3fd0645a1cac0831              # double 0.25612499999999999
	.quad	0x3fc420d5629d840a              # double 0.157252
	.quad	0x3f6205bc01a36e2f              # double 0.0022000000000000001
	.quad	0x3fde7ecbb7f9d6f1              # double 0.476489
	.quad	0x3fdbb163baba7b91              # double 0.43270199999999998
	.quad	0x3fd28049667b5f1c              # double 0.28908
	.quad	0x3fee6bd6e8af8162              # double 0.95066399999999995
	.quad	0x3fd17570c564f97f              # double 0.27279300000000001
	.quad	0x3fd4cae21101b003              # double 0.32488299999999998
	.quad	0x3fea1a2a4db163bb              # double 0.81569400000000003
	.quad	0x3fd21a5ca29845dd              # double 0.28285900000000003
	.quad	0x3fddfefbf401c4fc              # double 0.46868799999999999
	.quad	0x3fd5b35b0bbf50e3              # double 0.33907199999999998
	.quad	0x3fdb3d816aceaaf3              # double 0.42562899999999998
	.quad	0x3fdba1a0cf1800a8              # double 0.43174000000000001
	.quad	0x3fbcedc3bd599243              # double 0.11300300000000001
	.quad	0x3fdbfeef5ec80c74              # double 0.43743500000000002
	.quad	0x3fdb0d413122b7bb              # double 0.422684
	.quad	0x3fce1cbccf28c79f              # double 0.23525199999999999
	.quad	0x3fe7a964e8b7e4de              # double 0.73942799999999997
	.quad	0x3fe6df19d66adb40              # double 0.71473399999999998
	.quad	0x3fae946801711948              # double 0.059726000000000001
	.quad	0x3fa6991ff7164c73              # double 0.044137000000000003
	.quad	0x3fda23a6ce358299              # double 0.40842600000000001
	.quad	0x3fdb9b9d7fd82774              # double 0.43137300000000001
	.quad	0x3fd4e9e5e2478855              # double 0.32677600000000001
	.quad	0x3fe436b4c7f34938              # double 0.63167799999999996
	.quad	0x3fefad6451b93038              # double 0.98991600000000001
	.quad	0x3fedb9841aac53b1              # double 0.92889600000000005
	.quad	0x3fea4091c087442c              # double 0.82038199999999994
	.quad	0x3fe6d77318fc5048              # double 0.71379999999999999
	.quad	0x3fdfc436fc158fb4              # double 0.49635099999999999
	.quad	0x3fe79d4306e5cd4f              # double 0.73794700000000002
	.quad	0x3feba617c1bda512              # double 0.86402500000000004
	.quad	0x3fe0803eea209aaa              # double 0.51565499999999997
	.quad	0x3feb4f5f4e4430b1              # double 0.85343899999999995
	.quad	0x3fce6d612c6ac216              # double 0.23771300000000001
	.quad	0x3fe64b124d099e0e              # double 0.69666399999999995
	.quad	0x3fe8ee2435696e59              # double 0.77907000000000004
	.quad	0x3fde9b1b79d909f2              # double 0.478217
	.quad	0x3fec3526527a2058              # double 0.88148800000000005
	.quad	0x3fb5a6c5d206c871              # double 0.084575999999999998
	.quad	0x3fd1e536501e2585              # double 0.279615
	.quad	0x3fd8a4a8c154c986              # double 0.38505
	.quad	0x3fe3287e38eb0319              # double 0.59869300000000003
	.quad	0x3fec8fe260b2c83f              # double 0.89256400000000002
	.quad	0x3fdb840e1719f7f9              # double 0.42993500000000001
	.quad	0x3fe712f4cf4a558f              # double 0.72106400000000004
	.quad	0x3feea8bb0a2ca9ac              # double 0.95809699999999997
	.quad	0x3fb5eff9f87f023f              # double 0.085693000000000005
	.quad	0x3fbc7d6f97679032              # double 0.111289
	.quad	0x3fea9cf9a06a6e33              # double 0.83166200000000001
	.quad	0x3fece312f4cf4a56              # double 0.90271900000000005
	.quad	0x3fb699a62ed35222              # double 0.088281999999999999
	.quad	0x3fc3579af1886df8              # double 0.151111
	.quad	0x3fd35b0bbf50e347              # double 0.30243199999999998
	.quad	0x3f97b28954a7f801              # double 0.023141999999999999
	.quad	0x3fe46ed45e9185cf              # double 0.63852900000000001
	.quad	0x3fd1ca5bd944aa54              # double 0.277976
	.quad	0x3f9e90ff97247454              # double 0.029850000000000002
	.quad	0x3febd36d655e28aa              # double 0.86955899999999997
	.quad	0x3fd4c28f5c28f5c3              # double 0.32437500000000002
	.quad	0x3fdf2bf5515054ac              # double 0.48705799999999999
	.quad	0x3fe5785f8d2e514c              # double 0.67094399999999998
	.quad	0x3fbd1233df2a9d62              # double 0.11355899999999999
	.quad	0x3f77ff9b56323bbc              # double 0.0058589999999999996
	.quad	0x3fe3ea67e846a5d7              # double 0.62236400000000003
	.quad	0x3fd3f36ef8055fbb              # double 0.31173299999999998
	.quad	0x3fdd64020817fc76              # double 0.459229
	.quad	0x3fe48a8f3a9b0681              # double 0.64191399999999998
	.quad	0x3fd6459d99029ae5              # double 0.347999
	.quad	0x3fe82fb7e90ff972              # double 0.75582499999999997
	.quad	0x3fe8f3d3a1d323ff              # double 0.77976400000000001
	.quad	0x3feeec82e019b0ab              # double 0.96637099999999998
	.quad	0x3fddc18b502ababf              # double 0.46493800000000002
	.quad	0x3fef19439de481f5              # double 0.97183399999999997
	.quad	0x3fc66aa8eb463498              # double 0.17513000000000001
	.quad	0x3fde76b7ed41b75a              # double 0.47599599999999997
	.quad	0x3fad0f1f57b41bfc              # double 0.056756000000000001
	.quad	0x3fb3c99ae924f228              # double 0.077295000000000003
	.quad	0x3fc4e29f9ce8d973              # double 0.16316600000000001
	.quad	0x3fd4feac42e9899c              # double 0.328044
	.quad	0x3fd29cae21101b00              # double 0.29081299999999999
	.quad	0x3fe581abd1aa821f              # double 0.67207899999999998
	.quad	0x3fd160807357e671              # double 0.27151500000000001
	.quad	0x3fd5b191dde37586              # double 0.33896300000000001
	.quad	0x3fc761804d983947              # double 0.18266299999999999
	.quad	0x3fe1d8d1526d8b1e              # double 0.55771700000000002
	.quad	0x3fc241bb8c32a8ca              # double 0.14263100000000001
	.quad	0x3fc4f1455219a848              # double 0.16361300000000001
	.quad	0x3fe47a46173b85e8              # double 0.63992599999999999
	.quad	0x3fc1547e06961c37              # double 0.13539100000000001
	.quad	0x3fd9029f16b11c6d              # double 0.39078499999999999
	.quad	0x3fac55eaee2003ac              # double 0.055343000000000003
	.quad	0x3fe987b784662bae              # double 0.797817
	.quad	0x3fdd56bca5375c8e              # double 0.45841900000000002
	.quad	0x3fec0c0485a0be51              # double 0.876467
	.quad	0x3fee0008637bd05b              # double 0.937504
	.quad	0x3fe2307af20ea5b5              # double 0.56841799999999998
	.quad	0x3fdd9085f4a1272d              # double 0.46194600000000002
	.quad	0x3fe21f1ae2da554c              # double 0.56629700000000005
	.quad	0x3fd9e0370cdc8755              # double 0.40431
	.quad	0x3fc1ea91d9b1b79e              # double 0.13997100000000001
	.quad	0x3fdad955714b9cb7              # double 0.41951500000000003
	.quad	0x3fe395011904b3c4              # double 0.61193900000000001
	.quad	0x3fe117268d32830a              # double 0.534076
	.quad	0x3fe52ebe596c82e0              # double 0.66195599999999999
	.quad	0x3fed87e9d94d0dd0              # double 0.92284100000000002
	.quad	0x3fdb1287c200c0f0              # double 0.42300599999999999
	.quad	0x3fcf8c197e564734              # double 0.24646299999999999
	.quad	0x3fe437f9d6f112fd              # double 0.63183299999999998
	.quad	0x3fdcb8c75c4a83b2              # double 0.44877800000000001
	.quad	0x3fd1c88e79aae6c9              # double 0.277866
	.quad	0x3fe128283d35eb74              # double 0.53615199999999996
	.quad	0x3fb87570c564f97f              # double 0.095542000000000002
	.quad	0x3fa397353b4b2fa9              # double 0.038262999999999998
	.quad	0x3fb193f6c2699c7c              # double 0.068664000000000003
	.quad	0x3fe738a3b57c4e2f              # double 0.72566399999999998
	.quad	0x3fe28f16f4384ba1              # double 0.57996700000000001
	.quad	0x3fe7c8bc9cd3e0bd              # double 0.74325399999999997
	.quad	0x3fef5cd2d44dca8e              # double 0.98008099999999998
	.quad	0x3fc26db50f40e5a3              # double 0.14397299999999999
	.quad	0x3fec2c8c5004fb12              # double 0.88043800000000005
	.quad	0x3fef45c13fd0d068              # double 0.97726500000000005
	.quad	0x3fe9e17a02fb5d03              # double 0.80877399999999999
	.quad	0x3fe35ce39b456b44              # double 0.60508899999999999
	.quad	0x3fd31bd1ed9dfdac              # double 0.29857299999999998
	.quad	0x3fe5cf95d4e8fb01              # double 0.68159000000000003
	.quad	0x3fb9f3a57eaa2a0b              # double 0.10137400000000001
	.quad	0x3fc9eb399f5dfeb9              # double 0.202491
	.quad	0x3fe74eee0f3cb3e5              # double 0.72838499999999995
	.quad	0x3fb833c60029f16b              # double 0.094539999999999999
	.quad	0x3fefbd29563a9f38              # double 0.99184099999999997
	.quad	0x3feb9c8eabffcdab              # double 0.86286099999999999
	.quad	0x3fe06d4e4c942d49              # double 0.51334299999999999
	.quad	0x3fbb07af20ea5b53              # double 0.105586
	.quad	0x3fef4bad7d7c2ca1              # double 0.97798799999999996
	.quad	0x3fb3f8982cb20fb2              # double 0.078011999999999998
	.quad	0x3fef4a5df2239e6b              # double 0.97782800000000003
	.quad	0x3fda32bdc26dce3a              # double 0.40934700000000002
	.quad	0x3fb90a137f38c543              # double 0.097809999999999994
	.quad	0x3fccda4ce8101f32              # double 0.225412
	.quad	0x3faa107b784662bb              # double 0.050907000000000001
	.quad	0x3fcabbc2b94d9408              # double 0.20885500000000001
	.quad	0x3fea7eac42e9899c              # double 0.827963
	.quad	0x3fc3a8ef77f27fe5              # double 0.15359300000000001
	.quad	0x3feedb59578a2a91              # double 0.96427600000000002
	.quad	0x3fc680ae10492360              # double 0.17580200000000001
	.quad	0x3fe168b3b320535d              # double 0.54403100000000004
	.quad	0x3fe6284167a95c85              # double 0.69241399999999997
	.quad	0x3fd70746455eaee2              # double 0.359819
	.quad	0x3fe20e9b38d60a63              # double 0.56428299999999998
	.quad	0x3fc297e132b55ef2              # double 0.14526
	.quad	0x3fd5a79fec99f1ae              # double 0.33835599999999999
	.quad	0x3fe96bca5375c8da              # double 0.794408
	.quad	0x3fe815592d98bf7f              # double 0.752606
	.quad	0x3fe3a0ddc6195465              # double 0.61338700000000002
	.quad	0x3feb8ffb8b263950              # double 0.86132600000000004
	.quad	0x3fe6b73f316e3715              # double 0.70986899999999997
	.quad	0x3fe34cee5abc0e39              # double 0.60314100000000004
	.quad	0x3fec1170d62bf120              # double 0.87712900000000004
	.quad	0x3fbb4a87e38eb032              # double 0.10660600000000001
	.quad	0x3fe0515054ac29bf              # double 0.50992599999999999
	.quad	0x3fd1cc35ce182667              # double 0.27808899999999998
	.quad	0x3fd4503b81b64e05              # double 0.31739699999999998
	.quad	0x3fc22bbecaab8a5d              # double 0.14196
	.quad	0x3fe74087442c7fbb              # double 0.72662700000000002
	.quad	0x3fef01dc0db2702a              # double 0.96897699999999998
	.quad	0x3fed132f87ad080b              # double 0.90859199999999996
	.quad	0x3fe5c49ba5e353f8              # double 0.68025000000000002
	.quad	0x3fae5fd8adab9f56              # double 0.059325000000000003
	.quad	0x3fc81a1db877ab32              # double 0.18829699999999999
	.quad	0x3fe2fe64f54d1e97              # double 0.59355400000000003
	.quad	0x3fef4406c00da1a9              # double 0.97705399999999997
	.quad	0x3fbef240fa9c12f1              # double 0.12088400000000001
	.quad	0x3fdbc9d16fc9bc77              # double 0.434193
	.quad	0x3fc31b93037d6302              # double 0.149279
	.quad	0x3fea54f15e7c8d19              # double 0.82286899999999996
	.quad	0x3fde80303c07ee0b              # double 0.476574
	.quad	0x3fdbfa7221858bc6              # double 0.43716100000000002
	.quad	0x3fec3cc4ac6cdaf5              # double 0.88241800000000004
	.quad	0x3fe00d9d7774aba4              # double 0.50166200000000005
	.quad	0x3fe5abead4f5903a              # double 0.67723599999999995
	.quad	0x3fd03a9b06812381              # double 0.253577
	.quad	0x3fe5381d7dbf4880              # double 0.66310000000000002
	.quad	0x3fe316a8b8f14db6              # double 0.59651600000000005
	.quad	0x3fe5e9185cee17a0              # double 0.68470399999999998
	.quad	0x3fb98e432441fea8              # double 0.099826999999999999
	.quad	0x3feb2c215b9a5a8a              # double 0.84913700000000003
	.quad	0x3fe405fd04a2fcf0              # double 0.62573100000000004
	.quad	0x3fdc83f0bae89eba              # double 0.44555299999999998
	.quad	0x3fea3ead4f5903a7              # double 0.82015099999999996
	.quad	0x3fe71a9973d9ec70              # double 0.721997
	.quad	0x3fd0b4c3c18b502b              # double 0.26103300000000002
	.quad	0x3fcfadc0980b2420              # double 0.24748999999999999
	.quad	0x3fa41461b6d43d04              # double 0.039218000000000003
	.quad	0x3fd692ab68cef673              # double 0.35270200000000002
	.quad	0x3fe76a098915bdd7              # double 0.73169399999999996
	.quad	0x3fead64b662fdfc2              # double 0.83865900000000004
	.quad	0x3fc08a6117720c8d              # double 0.129223
	.quad	0x3fdc3cea6c1a048e              # double 0.441218
	.quad	0x3fdd2a9930be0ded              # double 0.45572499999999999
	.quad	0x3fe05e80bed740c4              # double 0.51153599999999999
	.quad	0x3fe0bc169c23b795              # double 0.52295999999999998
	.quad	0x3fa0e51d25aab474              # double 0.032998
	.quad	0x3fd184b5dcc63f14              # double 0.273725
	.quad	0x3fb5cc20d5629d84              # double 0.085145999999999999
	.quad	0x3fea23b9ae0c1765              # double 0.81686099999999995
	.quad	0x3fc2e7253da72a7c              # double 0.147679
	.quad	0x3fe6cfb3311a543f              # double 0.71285399999999999
	.quad	0x3fe5dd6bebe1650a              # double 0.68327899999999997
	.quad	0x3fe8bb14a90470a8              # double 0.772837
	.quad	0x3fe090b1feeb2d0a              # double 0.51766299999999998
	.quad	0x3fe89b4fe79ee02a              # double 0.76895899999999995
	.quad	0x3fe77950b955f783              # double 0.73355899999999996
	.quad	0x3fec1dbca9691a76              # double 0.87863000000000002
	.quad	0x3fe365796bfca85d              # double 0.60613700000000004
	.quad	0x3fee19806f262889              # double 0.94061300000000003
	.quad	0x3fe53d9231c64ba9              # double 0.66376599999999997
	.quad	0x3fd4e62dc6e2a800              # double 0.32654899999999998
	.quad	0x3feecda09cc319c6              # double 0.96260100000000004
	.quad	0x3fa9426fe718a86d              # double 0.049334999999999997
	.quad	0x3fcad5171e29b6b3              # double 0.20962800000000001
	.quad	0x3fec9d9d3458cd21              # double 0.89424000000000003
	.quad	0x3fba8c692f6e8295              # double 0.10370500000000001
	.quad	0x3fa28f7db6e503fb              # double 0.036250999999999999
	.quad	0x3fc8ed916872b021              # double 0.19475000000000001
	.quad	0x3fd48a222d5171e3              # double 0.32093100000000002
	.quad	0x3fdfd86a8fc0d2c4              # double 0.49758400000000003
	.quad	0x3fd479b34a44c7b0              # double 0.31992799999999999
	.quad	0x3fce99392189bd84              # double 0.23905100000000001
	.quad	0x3fe40b60f1b25f63              # double 0.62638899999999997
	.quad	0x3fea4d9e83e425af              # double 0.82197500000000001
	.quad	0x3fe00d173fb7a5f4              # double 0.50159799999999999
	.quad	0x3fa1d0e991ff7165              # double 0.034797000000000002
	.quad	0x3feabc148344c37e              # double 0.83545899999999995
	.quad	0x3fea2a0663c74fb5              # double 0.81762999999999997
	.quad	0x3fe67a97e132b55f              # double 0.70246500000000001
	.quad	0x3feedc358afc47e5              # double 0.96438100000000004
	.quad	0x3febc1fc8f32378b              # double 0.86743000000000003
	.quad	0x3f83cbc48f10a99b              # double 0.0096659999999999992
	.quad	0x3fa335f3d7d3910c              # double 0.037520999999999999
	.quad	0x3fd0f0dc768dfbd7              # double 0.26470100000000002
	.quad	0x3fd22730c67168f9              # double 0.28364200000000001
	.quad	0x3fe7189df1172ef1              # double 0.72175500000000004
	.quad	0x3fe06e675147f130              # double 0.51347699999999996
	.quad	0x3fde6eb91b3f20a7              # double 0.47550799999999999
	.quad	0x3fba37ef5a964e8b              # double 0.10241599999999999
	.quad	0x3fdbd2b6f19934f0              # double 0.43473600000000001
	.quad	0x3fad32830a0b1bbd              # double 0.057026
	.quad	0x3fc9da9c99285a92              # double 0.201984
	.quad	0x3fe80ea5b530ced5              # double 0.75178800000000001
	.quad	0x3fdcc69b5a63f9a5              # double 0.44962200000000002
	.quad	0x3f9697f1f9acffa8              # double 0.022064
	.quad	0x3fd39ff4fd6d7e89              # double 0.30663800000000002
	.quad	0x3fa8f190d173fb7a              # double 0.048717999999999997
	.quad	0x3fde14983d790753              # double 0.47000700000000001
	.quad	0x3fd47e308787485e              # double 0.32020199999999999
	.quad	0x3fed898b2e9ccb7d              # double 0.92303999999999997
	.quad	0x3fdee81cb46bacf7              # double 0.48291699999999999
	.quad	0x3fe732b990afe60c              # double 0.72494199999999998
	.quad	0x3fec25daf07bfe7e              # double 0.87962099999999999
	.quad	0x3fd05072085b1855              # double 0.25491000000000003
	.quad	0x3fe8a0afa2f05a71              # double 0.76961500000000005
	.quad	0x3fbbcea6c1a048e0              # double 0.108622
	.quad	0x3fdeb37c99ae924f              # double 0.47970499999999999
	.quad	0x3fe2a7c17a89331a              # double 0.582978
	.quad	0x3fd5c18b502ababf              # double 0.33993800000000002
	.quad	0x3fe4265492ff4ba5              # double 0.62967899999999999
	.quad	0x3fe8654b48d3ae68              # double 0.76236499999999996
	.quad	0x3fb4bb906466b1e6              # double 0.080987000000000003
	.quad	0x3fd92502eec7c958              # double 0.39288400000000001
	.quad	0x3fdb8fe69270b06c              # double 0.43065799999999999
	.quad	0x3fe2d3c579f23465              # double 0.58835099999999996
	.quad	0x3fe0406e19b90eaa              # double 0.50786500000000001
	.quad	0x3fa5e28aa433508f              # double 0.042743999999999997
	.quad	0x3fd61a47a9e2bcf9              # double 0.34535399999999999
	.quad	0x3fe32ff4ba51a006              # double 0.59960400000000003
	.quad	0x3fe39758e219652c              # double 0.61222500000000002
	.quad	0x3fc5933e35c5b4ab              # double 0.16855600000000001
	.quad	0x3fc0e09784ec636b              # double 0.131854
	.quad	0x3fe1e61cffeb074a              # double 0.55933999999999995
	.quad	0x3fc90435efa615a9              # double 0.195441
	.quad	0x3feecb4d056c508b              # double 0.96231699999999997
	.quad	0x3fe95df43c7d5ed0              # double 0.79271899999999995
	.quad	0x3fb07863beec397a              # double 0.064337000000000005
	.quad	0x3fe29bb6aa4b9885              # double 0.58150800000000002
	.quad	0x3fd8109070fbeb9e              # double 0.37601099999999998
	.quad	0x3fecc9fd7a13c255              # double 0.89965700000000004
	.quad	0x3fc3d3c36113404f              # double 0.15490000000000001
	.quad	0x3fee499285a921cd              # double 0.94648100000000002
	.quad	0x3fd3359bc33f8551              # double 0.300147
	.quad	0x3f98333fc86cebbc              # double 0.023633000000000001
	.quad	0x3fe6b779e9d0e992              # double 0.709897
	.quad	0x3fb0cc0379314446              # double 0.065613000000000005
	.quad	0x3fee4998d045fe11              # double 0.94648399999999999
	.quad	0x3fb0cee5abc0e38a              # double 0.065656999999999993
	.quad	0x3fea3b0c4588a04d              # double 0.81970799999999999
	.quad	0x3feb56e04c059210              # double 0.85435499999999998
	.quad	0x3fd727674d163348              # double 0.36177999999999999
	.quad	0x3fe005dfa871a3b1              # double 0.50071699999999997
	.quad	0x3fd37179bfdf7e80              # double 0.30380099999999999
	.quad	0x3feada7f3cf70154              # double 0.83917200000000002
	.quad	0x3fe226698bb4d489              # double 0.56718900000000005
	.quad	0x3fda5af6c69b5a64              # double 0.411802
	.quad	0x3fa2f901083dbc23              # double 0.037055999999999999
	.quad	0x3fef0aa433508f65              # double 0.97004900000000005
	.quad	0x3feeea1e81cb46bb              # double 0.96607900000000002
	.quad	0x3fed91be6e653869              # double 0.924041
	.quad	0x3fe9bbe4473cd573              # double 0.80418599999999996
	.quad	0x3fabb0c4588a04d1              # double 0.054082999999999999
	.quad	0x3fef6fe4ffc9795b              # double 0.98240899999999997
	.quad	0x3fc08fa7a85015c2              # double 0.129384
	.quad	0x3fd1163baba7b917              # double 0.266982
	.quad	0x3fd0113c68661ae7              # double 0.251052
	.quad	0x3fda21426fe718a8              # double 0.40827999999999998
	.quad	0x3fc165c2d2780779              # double 0.13591800000000001
	.quad	0x3f9dfeb8d8234224              # double 0.029291999999999999
	.quad	0x3fd2a0c6b484d76b              # double 0.29106300000000002
	.quad	0x3fc9996fa82e87d3              # double 0.19999500000000001
	.quad	0x3fe2b7f5a5332ad0              # double 0.58495600000000003
	.quad	0x3fefabef06b37868              # double 0.989738
	.quad	0x3febaf33ca31e7da              # double 0.86513700000000004
	.quad	0x3fead8e64b231401              # double 0.83897699999999997
	.quad	0x3fe6934267839cd8              # double 0.70547599999999999
	.quad	0x3fe4ee99a62ed352              # double 0.65412599999999999
	.quad	0x3fefdb09a671ef31              # double 0.99548800000000003
	.quad	0x3fd8af0bf1a5ca2a              # double 0.38568400000000003
	.quad	0x3fcbb1a6d698fe69              # double 0.216359
	.quad	0x3fd06c8b43958106              # double 0.25662499999999999
	.quad	0x3fed90ba6266fd65              # double 0.92391699999999999
	.quad	0x3feb65a9a8049668              # double 0.85616000000000003
	.quad	0x3fe30e453d20f2bf              # double 0.59549200000000002
	.quad	0x3fddf9873ffac1d3              # double 0.46835500000000002
	.quad	0x3fe78b88ca3e7d13              # double 0.73578299999999996
	.quad	0x3feb0c176577531e              # double 0.84522600000000003
	.quad	0x3fddff2a172abef0              # double 0.46869899999999998
	.quad	0x3fe353bd1676640a              # double 0.60397199999999995
	.quad	0x3fe7caea747d805e              # double 0.74351999999999996
	.quad	0x3fd53eb399f5dfec              # double 0.33195200000000002
	.quad	0x3fd539756c93a711              # double 0.33163199999999998
	.quad	0x3fe79ec0b567557a              # double 0.73812900000000004
	.quad	0x3fd9e3d5fdcdf698              # double 0.40453099999999997
	.quad	0x3fea011f4f50a02c              # double 0.81263700000000005
	.quad	0x3fe341d29dc725c4              # double 0.60178500000000001
	.quad	0x3fadc65c70435efa              # double 0.058153999999999997
	.quad	0x3fd244fa05143bf7              # double 0.28545999999999999
	.quad	0x3feb158b827fa1a1              # double 0.84638000000000002
	.quad	0x3fe902b841248d7e              # double 0.781582
	.quad	0x3fe17a2ad3e920c0              # double 0.54616299999999995
	.quad	0x3fd51a1986b9c305              # double 0.32971800000000001
	.quad	0x3febc105186db50f              # double 0.86731199999999997
	.quad	0x3fe9ec3116228134              # double 0.81008199999999996
	.quad	0x3fe85b4245f5ad97              # double 0.76114000000000004
	.quad	0x3fe94fce746cb967              # double 0.79099200000000003
	.quad	0x3f7336deb95e5aff              # double 0.0046909999999999999
	.quad	0x3fedc0a2877ee4e2              # double 0.92976499999999995
	.quad	0x3fcc2c12ad81adeb              # double 0.22009500000000001
	.quad	0x3fa02645e4e69f06              # double 0.031542000000000001
	.quad	0x3fdf577531db445f              # double 0.48971300000000001
	.quad	0x3fec0caa326e1156              # double 0.87654600000000005
	.quad	0x3fe650b524399b2c              # double 0.69735199999999997
	.quad	0x3fd8861a60d4562e              # double 0.383185
	.quad	0x3fae8bc169c23b79              # double 0.059659999999999998
	.quad	0x3fc8e95faa8a82a5              # double 0.19462199999999999
	.quad	0x3fe2b83cf2cf95d5              # double 0.58499000000000001
	.quad	0x3fdd93250b52439a              # double 0.46210600000000002
	.quad	0x3fe5eb24a6a875d5              # double 0.68495399999999995
	.quad	0x3fdd3b2dd377e1b9              # double 0.456737
	.quad	0x3feafd5885d31338              # double 0.84342600000000001
	.quad	0x3f9db0142f61ed5b              # double 0.028992
	.quad	0x3fd023810e8858ff              # double 0.25216699999999997
	.quad	0x3fe099f7f8ca8199              # double 0.51879500000000001
	.quad	0x3fc34959e6256367              # double 0.150676
	.quad	0x3fb52c061847f562              # double 0.082702999999999998
	.quad	0x3fea1f3e89a88ace              # double 0.81631399999999998
	.quad	0x3fc68b75ea67e847              # double 0.17613100000000001
	.quad	0x3fb38e086bdf4c2b              # double 0.076385999999999996
	.quad	0x3fea3d8be7296f65              # double 0.82001299999999999
	.quad	0x3fe94d9a52263d81              # double 0.79072299999999995
	.quad	0x3fe2a771c970f7ba              # double 0.58294000000000001
	.quad	0x3fef8793dd97f62b              # double 0.98529999999999995
	.quad	0x3fea2ba9d1f60179              # double 0.81782999999999995
	.quad	0x3fa8ce0b912dba4d              # double 0.048446999999999997
	.quad	0x3fe47e4ffc9795b3              # double 0.64041899999999996
	.quad	0x3fd2b4e9813879c4              # double 0.292292
	.quad	0x3fcd8f4f93bc0a07              # double 0.230936
	.quad	0x3fda88ace24bba13              # double 0.41459200000000002
	.quad	0x3fe3f2ae07e5a78f              # double 0.62337399999999998
	.quad	0x3f833f42352eb5f6              # double 0.0093980000000000001
	.quad	0x3feea4cc6822ff09              # double 0.95761700000000005
	.quad	0x3fcce1932d6ece14              # double 0.225634
	.quad	0x3fe0a7807789a459              # double 0.52044699999999999
	.quad	0x3fe628a6117720c9              # double 0.69246200000000002
	.quad	0x3fecf53825e13b19              # double 0.90493400000000002
	.quad	0x3fd914c660a20147              # double 0.39189299999999999
	.quad	0x3fe5f151e75360d0              # double 0.68570799999999998
	.quad	0x3fe3ab66b6177ea2              # double 0.61467300000000002
	.quad	0x3fe086573215fcc2              # double 0.51639900000000005
	.quad	0x3fdeb45f17bd8be7              # double 0.47975899999999999
	.quad	0x3fac51dabe27179c              # double 0.055312
	.quad	0x3fe0e525892684cf              # double 0.527972
	.quad	0x3fdc2f87ad080b67              # double 0.44040099999999999
	.quad	0x3fe7d3ac4f7ec354              # double 0.74458899999999995
	.quad	0x3fcd3910c2c5e2ce              # double 0.22830400000000001
	.quad	0x3fe0caafbc1acde2              # double 0.52474200000000004
	.quad	0x3fc721682f944242              # double 0.18070700000000001
	.quad	0x3fe9e1f18c9fb613              # double 0.80883099999999997
	.quad	0x3fd0ca1cef240faa              # double 0.26233600000000001
	.quad	0x3fc603b3e9a6f827              # double 0.171988
	.quad	0x3fe8c308feac42ea              # double 0.77380800000000005
	.quad	0x3fde721d53cddd6e              # double 0.475715
	.quad	0x3fedf46455eaee20              # double 0.93608299999999999
	.quad	0x3fdc1ca3a4b5568f              # double 0.43924800000000003
	.quad	0x3fe271737542a23c              # double 0.576349
	.quad	0x3f14f8b588e368f1              # double 8.0000000000000007E-5
	.quad	0x3fd4d1958969a0ae              # double 0.32529200000000003
	.quad	0x3fee8164840e171a              # double 0.953295
	.quad	0x3fde8e9707182236              # double 0.47745300000000002
	.quad	0x3fe5721f6cacd185              # double 0.67018100000000003
	.quad	0x3fef370ef566490a              # double 0.97547099999999998
	.quad	0x3fe0ad72ffd1dcd7              # double 0.521173
	.quad	0x3f96e32e3821af7d              # double 0.022350999999999999
	.quad	0x3fec74ea8da7f3cf              # double 0.88927199999999995
	.quad	0x3fe6c63497b7414a              # double 0.71169499999999997
	.quad	0x3feee5796bfca85d              # double 0.96551200000000003
	.quad	0x3fe8e644d87724fb              # double 0.77810900000000005
	.quad	0x3fb29b499d0203e6              # double 0.072681999999999997
	.quad	0x3fe1d70e6f2e8c05              # double 0.55750200000000005
	.quad	0x3fe0c34c1a8ac5c1              # double 0.52383999999999997
	.quad	0x3febc97fa5d28d00              # double 0.86834699999999998
	.quad	0x3fe99e731d2e0e30              # double 0.80059199999999997
	.quad	0x3fce75ff609dcf89              # double 0.23797599999999999
	.quad	0x3fef0bdec5f394b8              # double 0.97019900000000003
	.quad	0x3fdc0c8cd63cb817              # double 0.43826599999999999
	.quad	0x3fea5527e5215769              # double 0.82289500000000004
	.quad	0x3fe6baf533f42353              # double 0.71032200000000001
	.quad	0x3fba657b84db9c73              # double 0.10311099999999999
	.quad	0x3fe11c4da9003eea              # double 0.53470499999999999
	.quad	0x3f99784ec636b096              # double 0.024872999999999999
	.quad	0x3fe6d9c065b63d3e              # double 0.71408099999999997
	.quad	0x3fe4e27e0ef99807              # double 0.65264800000000001
	.quad	0x3fca6edaa92e6213              # double 0.206508
	.quad	0x3fe55c9a34ca0c28              # double 0.66755399999999998
	.quad	0x3fef94ab1d4f9c20              # double 0.98689800000000005
	.quad	0x3fd6ed7c6fbd273d              # double 0.35824499999999998
	.quad	0x3fe51c5c5718eb89              # double 0.65971199999999997
	.quad	0x3fee1ee88df3732a              # double 0.94127300000000003
	.quad	0x3fe6a6d698fe6927              # double 0.707866
	.quad	0x3fe23508f648c719              # double 0.56897399999999998
	.quad	0x3fd875ea67e846a6              # double 0.38219700000000001
	.quad	0x3fdfca686e7e62dc              # double 0.49672899999999998
	.quad	0x3f78e864020817fc              # double 0.0060809999999999996
	.quad	0x3fc66cebbba55d1c              # double 0.17519899999999999
	.quad	0x3fe54edf61240746              # double 0.66587799999999997
	.quad	0x3f65b9a5a89b951c              # double 0.0026519999999999998
	.quad	0x3fe4e50a45d41fa7              # double 0.65295899999999996
	.quad	0x3fb04c9c90c4dec2              # double 0.063669000000000003
	.quad	0x3fdeb035bd512ec7              # double 0.47950500000000001
	.quad	0x3fef82c2bd7f51f0              # double 0.98471200000000003
	.quad	0x3fdffa871a3b14a9              # double 0.499666
	.quad	0x3fd4b9884c6a3bde              # double 0.323824
	.quad	0x3fe20a71de69ad43              # double 0.56377500000000003
	.quad	0x3fdb5e6ff7dfa00e              # double 0.42763899999999999
	.quad	0x3fed7e9fadafd114              # double 0.92170700000000005
	.quad	0x3fd55c4651f3e89b              # double 0.33375700000000003
	.quad	0x3fecc1355475a31a              # double 0.89858499999999997
	.quad	0x3fc01b21c475e636              # double 0.125828
	.quad	0x3fed83e63e8dda49              # double 0.92235100000000003
	.quad	0x3fc903211cb039ef              # double 0.195408
	.quad	0x3fee95c853c14834              # double 0.95578399999999996
	.quad	0x3fed9fa54c554328              # double 0.92573799999999995
	.quad	0x3fcb173fb7a5f41b              # double 0.211647
	.quad	0x3fd785d744f5d356              # double 0.36754399999999998
	.quad	0x3fe97eb6bf444e0e              # double 0.79671800000000004
	.quad	0x3faa1fd1569f4906              # double 0.051024
	.quad	0x3fa660a2014727dd              # double 0.043706000000000002
	.quad	0x3fa4755ffe6d58c9              # double 0.039958
	.quad	0x3fe311ada76d97b3              # double 0.59590799999999999
	.quad	0x3fd56af038e29f9d              # double 0.33465200000000001
	.quad	0x3fe65612c6ac215c              # double 0.69800700000000004
	.quad	0x3fd0faa044ae85ba              # double 0.26529700000000001
	.quad	0x3fe29151611ba3ca              # double 0.58023899999999995
	.quad	0x3fe592d1287c200c              # double 0.67417199999999999
	.quad	0x3fd064adff822bbf              # double 0.25614500000000001
	.quad	0x3fe5ce3de6149c6f              # double 0.68142599999999998
	.quad	0x3fe460f1b25f633d              # double 0.63683400000000001
	.quad	0x3fd9d5bab21815a0              # double 0.40366999999999997
	.quad	0x3fd72ae07e5a78f2              # double 0.36199199999999998
	.quad	0x3fc855f3519bd406              # double 0.19012299999999999
	.quad	0x3fd063ed0f627393              # double 0.25609900000000002
	.quad	0x3fe4560c7c0f4517              # double 0.63550399999999996
	.quad	0x3fbdc15097c80842              # double 0.116231
	.quad	0x3fd33929ed3953df              # double 0.30036400000000002
	.quad	0x3fd4707e175d13d7              # double 0.31936599999999998
	.quad	0x3fe4c306e5cd4ed3              # double 0.64880700000000002
	.quad	0x3fea4eca686e7e63              # double 0.82211800000000002
	.quad	0x3f986833c60029f1              # double 0.023834999999999999
	.quad	0x3faf56861e92923e              # double 0.061206999999999998
	.quad	0x3fcf7268d32830a1              # double 0.24567900000000001
	.quad	0x3fed7442c7fbacb4              # double 0.92044199999999998
	.quad	0x3fe166a76965f527              # double 0.54378099999999996
	.quad	0x3fdc6698bb4d4888              # double 0.44376199999999999
	.quad	0x3fe38f98fa376923              # double 0.61127900000000002
	.quad	0x3feb895d0b73d189              # double 0.86051800000000001
	.quad	0x3fe34ce5f7403dde              # double 0.60313700000000003
	.quad	0x3fe169c0229a5ebb              # double 0.54415899999999995
	.quad	0x3fe225204af92296              # double 0.56703199999999998
	.quad	0x3febc49ba5e353f8              # double 0.86775000000000002
	.quad	0x3fc4aeafab53d641              # double 0.161581
	.quad	0x3fcd271bcdbbe015              # double 0.22775599999999999
	.quad	0x3fda56a37ac3eb7d              # double 0.41153800000000001
	.quad	0x3fe5ef6f8f041462              # double 0.68547800000000003
	.quad	0x3fea0476f2a5a46a              # double 0.81304500000000002
	.quad	0x3fe7139c94f69caa              # double 0.72114400000000001
	.quad	0x3fe51799e518f3ed              # double 0.65913100000000002
	.quad	0x3fe84af2d7f950b9              # double 0.75914899999999996
	.quad	0x3fde90d173fb7a5f              # double 0.47758899999999999
	.quad	0x3fe1a8e2e2b8c75c              # double 0.55186599999999997
	.quad	0x3fe52d2dcb1465e9              # double 0.66176500000000005
	.quad	0x3fcfc9363f572de4              # double 0.24832799999999999
	.quad	0x3fb54c447c30d307              # double 0.083195000000000005
	.quad	0x3fd622424a276b7f              # double 0.34584100000000001
	.quad	0x3fe6dc725c3dee78              # double 0.71440999999999999
	.quad	0x3fe347a7c9de0503              # double 0.60249699999999995
	.quad	0x3feddd4e8fb00bcc              # double 0.93326500000000001
	.quad	0x3fb9845dc8323359              # double 0.099676000000000001
	.quad	0x3fe70aac96cc5fc0              # double 0.72005300000000005
	.quad	0x3fd96f71a7e30878              # double 0.39742699999999997
	.quad	0x3fe77837b4a2339c              # double 0.73342499999999999
	.quad	0x3fed40d4dc65c704              # double 0.91416399999999997
	.quad	0x3fe18cb4aec8d5c7              # double 0.54842599999999997
	.quad	0x3fd2c308feac42ea              # double 0.29315400000000003
	.quad	0x3fe97df19d66adb4              # double 0.79662399999999999
	.quad	0x3fe5895af294dd72              # double 0.67301699999999998
	.quad	0x3fea5cf0307f23cd              # double 0.82384500000000005
	.quad	0x3fe7173b85e80bed              # double 0.72158599999999995
	.quad	0x3fe30941c8216c61              # double 0.59487999999999996
	.quad	0x3fd856798958d9b6              # double 0.380278
	.quad	0x3fbee48e8a71de6a              # double 0.120675
	.quad	0x3fd7a79357603926              # double 0.36960300000000001
	.quad	0x3fb80767d34df04e              # double 0.093863000000000001
	.quad	0x3fea0d8ec95bff04              # double 0.81415499999999996
	.quad	0x3feb79ca5bd944aa              # double 0.85861699999999996
	.quad	0x3fd7e132b55ef1fe              # double 0.37312000000000001
	.quad	0x3fe158e864020818              # double 0.542103
	.quad	0x3fc8cb3a2595bbbf              # double 0.19370200000000001
	.quad	0x3fea8f88333fc86d              # double 0.83002100000000001
	.quad	0x3fc0978d4fdf3b64              # double 0.12962499999999999
	.quad	0x3fb59fd36f7e3d1d              # double 0.084470000000000003
	.quad	0x3fb3a3b9ae0c1765              # double 0.076716999999999994
	.quad	0x3fb178c436fc1590              # double 0.068249000000000004
	.quad	0x3f86bb1290257c91              # double 0.011098999999999999
	.quad	0x3fee2f23033a4724              # double 0.94325400000000003
	.quad	0x3fe842ce4649906d              # double 0.75815500000000002
	.quad	0x3fec03ec892ab68d              # double 0.87547900000000001
	.quad	0x3fe6c881e4712e41              # double 0.71197600000000005
	.quad	0x3fe2fbd6a593a2e0              # double 0.59324200000000005
	.quad	0x3fd9fbd6a593a2e0              # double 0.40599600000000002
	.quad	0x3fc561ed5ae1cde6              # double 0.16705100000000001
	.quad	0x3fed0c154c985f07              # double 0.907725
	.quad	0x3fb9bda5119ce076              # double 0.10055
	.quad	0x3fe1e3a5c1c6088d              # double 0.55903899999999995
	.quad	0x3fb9f72f76e6106b              # double 0.101428
	.quad	0x3fe8d66f0cfe1544              # double 0.77617599999999997
	.quad	0x3fe71fb1e18efbb1              # double 0.72261900000000001
	.quad	0x3fd7c27631b584b2              # double 0.37124400000000002
	.quad	0x3fddb9f127f5e84f              # double 0.464474
	.quad	0x3fe44c09c3ce208a              # double 0.63428200000000001
	.quad	0x3fe643504c48adef              # double 0.69571700000000003
	.quad	0x3fe8452a411c2a02              # double 0.75844299999999998
	.quad	0x3fe0fa26a22b3893              # double 0.53053600000000001
	.quad	0x3fee17c80841ede1              # double 0.94040299999999999
	.quad	0x3fec144cbe1eb420              # double 0.87747799999999998
	.quad	0x3fefcae21101b003              # double 0.99351599999999995
	.quad	0x3fd21290257c914b              # double 0.282383
	.quad	0x3fee81626b2f2303              # double 0.95329399999999997
	.quad	0x3fe02f533f42352f              # double 0.50577700000000003
	.quad	0x3fcfa5093964a59c              # double 0.247224
	.quad	0x3fbe44e93e1c9b41              # double 0.118239
	.quad	0x3fe2ed6ba8c58687              # double 0.59148199999999995
	.quad	0x3fef3e63e8dda48b              # double 0.97636599999999995
	.quad	0x3fee46cfc829cfdd              # double 0.94614399999999999
	.quad	0x3fcc01eeed8904f7              # double 0.218809
	.quad	0x3fe1b4aa9717df1a              # double 0.55330400000000002
	.quad	0x3fc70d9513f8db49              # double 0.18010200000000001
	.quad	0x3fd1ea9e6eeb7026              # double 0.279945
	.quad	0x3fe6cc7d1bb4916d              # double 0.71246200000000004
	.quad	0x3fec55454152b0a7              # double 0.885409
	.quad	0x3fe9b7542a23bff9              # double 0.80362900000000004
	.quad	0x3fdbfc2a8869c66d              # double 0.43726599999999999
	.quad	0x3fc1ed30f062d40b              # double 0.14005100000000001
	.quad	0x3fd7af8df7a4e7ab              # double 0.37008999999999997
	.quad	0x3fcefdd22856605f              # double 0.242121
	.quad	0x3fdf95aaf78feef6              # double 0.49351
	.quad	0x3fe1b8bac710cb29              # double 0.55379999999999996
	.quad	0x3fd0c97d8cf398e9              # double 0.26229799999999998
	.quad	0x3fe34a1f080303c0              # double 0.60279799999999994
	.quad	0x3fcc67e846a5d6bf              # double 0.22192100000000001
	.quad	0x3fed9e9f2778140e              # double 0.92561300000000002
	.quad	0x3fe3e9ea14057082              # double 0.62230399999999997
	.quad	0x3fdb52e2fbe33acd              # double 0.42693399999999998
	.quad	0x3feb7202107b7846              # double 0.85766699999999996
	.quad	0x3fe085f06f694467              # double 0.51634999999999998
	.quad	0x3fc0e37154003255              # double 0.131941
	.quad	0x3fd7363b256ffc11              # double 0.36268499999999998
	.quad	0x3fe91ee88df3732a              # double 0.78502300000000003
	.quad	0x3fef13a71151611c              # double 0.97114900000000003
	.quad	0x3fd65f17bd8be729              # double 0.34955399999999998
	.quad	0x3fd7b3f20a73f749              # double 0.37035800000000002
	.quad	0x3fb112018a43bb41              # double 0.066681000000000004
	.quad	0x3fd31044f1a1986c              # double 0.29786800000000002
	.quad	0x3fe853e920c069e8              # double 0.760243
	.quad	0x3fde34df04ddb552              # double 0.47197699999999998
	.quad	0x3fd6f809917939a8              # double 0.35888900000000001
	.quad	0x3fd701b003686a4d              # double 0.35947800000000002
	.quad	0x3fd9052502eec7c9              # double 0.39093899999999998
	.quad	0x3fddc36da87a072d              # double 0.46505299999999999
	.quad	0x3fe37c2656abde40              # double 0.60890500000000003
	.quad	0x3fe670bae89eba6b              # double 0.70126100000000002
	.quad	0x3feaf85510d38cda              # double 0.84281399999999995
	.quad	0x3fe5873ffac1d29e              # double 0.67276000000000002
	.quad	0x3fa992c8c5004fb1              # double 0.049947999999999999
	.quad	0x3fee9a176ddaceee              # double 0.95630999999999999
	.quad	0x3fe9411c2a023209              # double 0.78919799999999996
	.quad	0x3fe55436b8f9b131              # double 0.66652999999999996
	.quad	0x3fe21e2bcf91a32b              # double 0.56618299999999999
	.quad	0x3fb0e746cb966be8              # double 0.066029000000000004
	.quad	0x3fd61eb4202d9cf1              # double 0.34562399999999999
	.quad	0x3fdb5532617c1bda              # double 0.42707499999999998
	.quad	0x3fe6e8b7e4de3b8a              # double 0.71590799999999999
	.quad	0x3fb8dcfcc5b8dc55              # double 0.097122
	.quad	0x3fabc44bf4cb1898              # double 0.054232000000000002
	.quad	0x3fecfb65668c2614              # double 0.90568800000000004
	.quad	0x3fedcb05b7cfe586              # double 0.931033
	.quad	0x3fe36f5019f3c70d              # double 0.60733800000000004
	.quad	0x3fce2a6f3f52fc26              # double 0.23566999999999999
	.quad	0x3fe5bb9f127f5e85              # double 0.67915300000000001
	.quad	0x3fd9a732df505d10              # double 0.40083000000000002
	.quad	0x3fd10242d05f2885              # double 0.26576300000000003
	.quad	0x3fc10164840e171a              # double 0.132855
	.quad	0x3fd3cbea4ebdd335              # double 0.30932100000000001
	.quad	0x3fd74245f5ad96a7              # double 0.36342000000000002
	.quad	0x3fe3f97891e21533              # double 0.62420299999999995
	.quad	0x3fe471950331e3a8              # double 0.63886500000000002
	.quad	0x3fcd4b2fa93af74d              # double 0.228857
	.quad	0x3fc4d0d49949e881              # double 0.16262299999999999
	.quad	0x3fbd6f544bb1af3a              # double 0.11498
	.quad	0x3fbd5c0fcb4f1e4b              # double 0.114686
	.quad	0x3fd307789a459104              # double 0.29733100000000001
	.quad	0x3fc9c9bc77143394              # double 0.20146900000000001
	.quad	0x3fe2e0d4562e09ff              # double 0.58994500000000005
	.quad	0x3fa27eb6bf444e0e              # double 0.036123000000000002
	.quad	0x3fe039f127f5e84f              # double 0.507073
	.quad	0x3fdb2d8c2a454de8              # double 0.424655
	.quad	0x3fe7b0c67168f8e8              # double 0.74032900000000001
	.quad	0x3fd87df19d66adb4              # double 0.382687
	.quad	0x3fe9f98d8a979e17              # double 0.81171300000000002
	.quad	0x3fd78ff759685122              # double 0.36816199999999999
	.quad	0x3fe4301a79fec99f              # double 0.63087199999999999
	.quad	0x3fe18969a0ad8a11              # double 0.54802399999999996
	.quad	0x3fb5142b302f72b4              # double 0.082338999999999996
	.quad	0x3fde601bc98a222d              # double 0.47461599999999998
	.quad	0x3fda0c67168f8e7e              # double 0.40700700000000001
	.quad	0x3fd48dd1e53a81dc              # double 0.321156
	.quad	0x3fe266490a350d28              # double 0.574986
	.quad	0x3feb03d9a95421c0              # double 0.84421999999999997
	.quad	0x3fe13777d0f1f57b              # double 0.53802099999999997
	.quad	0x3fbef87ad080b674              # double 0.120979
	.quad	0x3fe1e35a426bb55b              # double 0.55900300000000003
	.quad	0x3fc3f1cfbb949625              # double 0.15581700000000001
	.quad	0x3fcbf2e48e8a71de              # double 0.21834999999999999
	.quad	0x3f991a75cd0bb6ed              # double 0.024514999999999999
	.quad	0x3fed118e325d4a5e              # double 0.90839300000000001
	.quad	0x3fe4db573eab367a              # double 0.65177499999999999
	.quad	0x3fe70b08dd1e53a8              # double 0.72009699999999999
	.quad	0x3fe63035bd512ec7              # double 0.69338500000000003
	.quad	0x3fe5872b020c49ba              # double 0.67274999999999996
	.quad	0x3fdda5375c8d9f90              # double 0.46320899999999998
	.quad	0x3fc935b91f70de8f              # double 0.19695199999999999
	.quad	0x3fb7ff25e56cd6c3              # double 0.093737000000000001
	.quad	0x3feae94ee392e1ef              # double 0.84097999999999995
	.quad	0x3fba96c3fc43b2dd              # double 0.103863
	.quad	0x3fcd5ebfa8f7db6e              # double 0.22945399999999999
	.quad	0x3fe674c09c3ce209              # double 0.70175200000000004
	.quad	0x3fe04da09cc319c6              # double 0.50947600000000004
	.quad	0x3fdee2b8c75c4a84              # double 0.48258800000000002
	.quad	0x3fd2f1bac2df0d41              # double 0.29600399999999999
	.quad	0x3fc3e28aa433508f              # double 0.15535099999999999
	.quad	0x3fd95d5b24e9c454              # double 0.39632299999999998
	.quad	0x3fec04cad57bc7f7              # double 0.87558499999999995
	.quad	0x3fcfe4b44a1f0803              # double 0.249167
	.quad	0x3fe317c5ef62f9ca              # double 0.59665199999999996
	.quad	0x3fefebb55ac03ff7              # double 0.99752300000000004
	.quad	0x3fc28c154c985f07              # double 0.1449
	.quad	0x3fed8329802c0a4a              # double 0.922261
	.quad	0x3fef34ca0c282c6f              # double 0.975194
	.quad	0x3fbacffa7eb6bf44              # double 0.104736
	.quad	0x3fd379e59f2ba9d2              # double 0.304315
	.quad	0x3fec8a009f623077              # double 0.89184600000000003
	.quad	0x3fee8bd87b56b873              # double 0.95457099999999995
	.quad	0x3fc55f6fd21ff2e5              # double 0.16697500000000001
	.quad	0x3fcd73a797891e21              # double 0.23009199999999999
	.quad	0x3fc1482be8bc169c              # double 0.135015
	.quad	0x3fd7f583a53b8e4c              # double 0.37436000000000003
	.quad	0x3fdd5c39bcba3012              # double 0.458754
	.quad	0x3fca1da7b0b39192              # double 0.20402999999999999
	.quad	0x3fda4280ae104923              # double 0.41030899999999998
	.quad	0x3fd930ec31162281              # double 0.39361099999999999
	.quad	0x3fcd631b584b1ab1              # double 0.22958700000000001
	.quad	0x3feb1f340d4dc65c              # double 0.84755899999999995
	.quad	0x3fc4cfd08d4bad7d              # double 0.16259199999999999
	.quad	0x3fe7b191dde37586              # double 0.74042600000000003
	.quad	0x3fe57d1fe64f54d2              # double 0.67152400000000001
	.quad	0x3fe9b75ea67e846a              # double 0.80363399999999996
	.quad	0x3feaa817763e4abe              # double 0.83301899999999995
	.quad	0x3f7c4c9c90c4dec2              # double 0.0069090000000000002
	.quad	0x3fbef8bdec5f394b              # double 0.12098299999999999
	.quad	0x3fe691947cfa26a2              # double 0.70527099999999998
	.quad	0x3fedff3f0fe047d4              # double 0.93740800000000001
	.quad	0x3fe484a515ce9e5e              # double 0.64119199999999998
	.quad	0x3fc4f88b9778572a              # double 0.16383500000000001
	.quad	0x3fd23c42a66dbd73              # double 0.28492800000000001
	.quad	0x3fe09aac53b0813d              # double 0.51888100000000004
	.quad	0x3fea19d883ba3444              # double 0.81565500000000001
	.quad	0x3fd7147f13059642              # double 0.360626
	.quad	0x3fe44d74927913e8              # double 0.63445499999999999
	.quad	0x3fe01f127f5e84f1              # double 0.50379300000000005
	.quad	0x3fd12b3892ee84ad              # double 0.26826299999999997
	.quad	0x3feeb1f8a0902de0              # double 0.95922499999999999
	.quad	0x3fda288ce703afb8              # double 0.408725
	.quad	0x3fd2cc964628027e              # double 0.29373700000000003
	.quad	0x3fe733fc86cebbba              # double 0.72509599999999996
	.quad	0x3fe51f1cfbb94962              # double 0.66004799999999997
	.quad	0x3fdd14d72799a1fd              # double 0.454397
	.quad	0x3fe4532617c1bda5              # double 0.63514999999999999
	.quad	0x3fe7c7ae147ae148              # double 0.74312500000000004
	.quad	0x3fdfdbdf8f473040              # double 0.49779499999999999
	.quad	0x3fb42e2328f9f44d              # double 0.078828999999999996
	.quad	0x3feb020a30db6a1f              # double 0.84399900000000005
	.quad	0x3fe5ac061847f562              # double 0.67724899999999999
	.quad	0x3fee7559b3d07c85              # double 0.95182500000000003
	.quad	0x3fd13532e7b3d8e0              # double 0.268872
	.quad	0x3fdf0c564f97edc8              # double 0.485128
	.quad	0x3fe7c766c6de7642              # double 0.74309099999999995
	.quad	0x3fe7a7243137b070              # double 0.73915299999999995
	.quad	0x3fea549b62c77575              # double 0.822828
	.quad	0x3fcad466f5019f3c              # double 0.20960699999999999
	.quad	0x3fb7c371da37ef5b              # double 0.092826000000000006
	.quad	0x3fe1e18efbb0e5e6              # double 0.55878399999999995
	.quad	0x3fcb2d6ece13f4aa              # double 0.21232400000000001
	.quad	0x3fb243675ddd2ae9              # double 0.071341000000000002
	.quad	0x3fd8fa58f7121ab5              # double 0.39028000000000002
	.quad	0x3fd59081c2e33eff              # double 0.33694499999999999
	.quad	0x3fe5afc2656abde4              # double 0.677705
	.quad	0x3fb0c0053e2d6239              # double 0.065430000000000002
	.quad	0x3fbfc6540cc78e9f              # double 0.12411999999999999
	.quad	0x3fe87b3743632c1f              # double 0.76504099999999997
	.quad	0x3fca4d2b2bfdb4cc              # double 0.20548
	.quad	0x3fecf507e9d94d0e              # double 0.90491100000000002
	.quad	0x3fec6a1e81cb46bb              # double 0.88795400000000002
	.quad	0x3fc4eddce7cd0353              # double 0.16350899999999999
	.quad	0x3fe778e5c4eb56fc              # double 0.73350800000000005
	.quad	0x3fc26299524bfd2f              # double 0.14363400000000001
	.quad	0x3fd24751ce28ed5f              # double 0.285603
	.quad	0x3fdb011904b3c3e7              # double 0.42194199999999998
	.quad	0x3fe85cd2d44dca8e              # double 0.76133099999999998
	.quad	0x3fc46da4484944ed              # double 0.15959599999999999
	.quad	0x3fd96a832b990afe              # double 0.39712599999999998
	.quad	0x3fe2eea209aaa3ad              # double 0.59162999999999999
	.quad	0x3fef0e53eb399f5e              # double 0.970499
	.quad	0x3fcd54f3775b8130              # double 0.229155
	.quad	0x3fd8d86a8fc0d2c4              # double 0.38820900000000003
	.quad	0x3fd515379fa97e13              # double 0.32941999999999999
	.quad	0x3feb4573a797891e              # double 0.85222799999999999
	.quad	0x3fee8f8e7ddca4b1              # double 0.95502399999999998
	.quad	0x3fe2d7dbf487fcb9              # double 0.58884999999999998
	.quad	0x3f80739b024f6599              # double 0.0080330000000000002
	.quad	0x3fe83fbbd7b2031d              # double 0.75778000000000001
	.quad	0x3fb69b9d7fd82774              # double 0.088312000000000002
	.quad	0x3fe6fa5d28d002e2              # double 0.71806199999999998
	.quad	0x3fdd3acd5b6805a3              # double 0.45671400000000001
	.quad	0x3fd94f69ca9ef523              # double 0.39547199999999999
	.quad	0x3fec8e779207d4e1              # double 0.89239100000000005
	.quad	0x3fdde74f2f123c43              # double 0.46724300000000002
	.quad	0x3fd878a6dacabc51              # double 0.38236399999999998
	.quad	0x3fd1443d46b26bf8              # double 0.26978999999999997
	.quad	0x3fe19172ef0ae536              # double 0.54900499999999997
	.quad	0x3fd1f7dfa00e27e1              # double 0.280754
	.quad	0x3fc582e44b6e935c              # double 0.16805700000000001
	.quad	0x3fe4573647baa9b5              # double 0.63564600000000004
	.quad	0x3fea18aeb80ecfa7              # double 0.81551300000000004
	.quad	0x3feb81bc98a222d5              # double 0.85958699999999999
	.quad	0x3fd45579af1886e0              # double 0.31771700000000003
	.quad	0x3fe9519157abb880              # double 0.79120699999999999
	.quad	0x3fe5a3033a4723ab              # double 0.676149
	.quad	0x3fe96681a9b8cb8e              # double 0.793763
	.quad	0x3fe58f840181e03f              # double 0.67376899999999995
	.quad	0x3fdc2856605ee569              # double 0.43996200000000002
	.quad	0x3fcc49c2c1b10fd8              # double 0.221001
	.quad	0x3fecf969e3c96894              # double 0.90544599999999997
	.quad	0x3fc720f2becedd48              # double 0.18069299999999999
	.quad	0x3fe192d3415b1423              # double 0.54917300000000002
	.quad	0x3fe0474107314ca9              # double 0.50869799999999998
	.quad	0x3fcda4acf312b1b3              # double 0.23158799999999999
	.quad	0x3fe08dcfcc5b8dc5              # double 0.51731099999999997
	.quad	0x3fe41e603d577964              # double 0.62870800000000004
	.quad	0x3fe55d0d8cb07d0b              # double 0.66760900000000001
	.quad	0x3fc2f3a9b0681238              # double 0.148061
	.quad	0x3fb264a16a487336              # double 0.071847999999999995
	.quad	0x3fd293708aac96cc              # double 0.29024899999999998
	.quad	0x3fecf31b152f3c2e              # double 0.90467600000000004
	.quad	0x3fe57d7c2ca148bb              # double 0.67156800000000005
	.quad	0x3fe62337a80cf9e4              # double 0.69179900000000005
	.quad	0x3fe8947f13059642              # double 0.768127
	.quad	0x3fb8c426351deefe              # double 0.096742999999999995
	.quad	0x3fec58cf398e9707              # double 0.88584099999999999
	.quad	0x3fe1f820a30db6a2              # double 0.56153900000000001
	.quad	0x3fdd4ead0c3d2524              # double 0.45792699999999997
	.quad	0x3fd1c9e236c15d2d              # double 0.277947
	.quad	0x3fc9efd86a8fc0d3              # double 0.20263200000000001
	.quad	0x3fc303d145d85165              # double 0.14855399999999999
	.quad	0x3fe91f559b3d07c8              # double 0.78507499999999997
	.quad	0x3fdea18372e6a769              # double 0.47860799999999998
	.quad	0x3fecdef416bdb1a7              # double 0.90221600000000002
	.quad	0x3fea8ec95bff0457              # double 0.82992999999999995
	.quad	0x3fc6af922962cfd9              # double 0.177233
	.quad	0x3fe0af3c2dadb835              # double 0.52139100000000005
	.quad	0x3fe70deb0fadf2ed              # double 0.72044900000000001
	.quad	0x3fe80d32830a0b1c              # double 0.75161100000000002
	.quad	0x3fef7a355043e532              # double 0.98366799999999999
	.quad	0x3fd743fe5c91d14e              # double 0.36352499999999999
	.quad	0x3feebf6e3f78bbd4              # double 0.96086800000000005
	.quad	0x3fd3c0bdcad14a0a              # double 0.308639
	.quad	0x3fd9a8ef77f27fe5              # double 0.40093600000000001
	.quad	0x3fd198fa376922d9              # double 0.27496199999999998
	.quad	0x3f858d9b5e95b78d              # double 0.010524
	.quad	0x3fe3b6177ea1c68f              # double 0.61597800000000003
	.quad	0x3fe00198f1d3ed52              # double 0.50019499999999995
	.quad	0x3fe6eaf89c5e6ff8              # double 0.71618300000000001
	.quad	0x3fe2a600b0292817              # double 0.58276399999999995
	.quad	0x3fec59a73b42cc2d              # double 0.88594399999999995
	.quad	0x3fc565f5275ee99a              # double 0.16717399999999999
	.quad	0x3fe2a925fe974a34              # double 0.583148
	.quad	0x3fe66994185058de              # double 0.70038800000000001
	.quad	0x3fefb7564302b40f              # double 0.99112999999999995
	.quad	0x3fea6f262888b546              # double 0.82606800000000002
	.quad	0x3fe4d1f601797cc4              # double 0.65063000000000004
	.quad	0x3fd3ee5abc0e38a8              # double 0.31142300000000001
	.quad	0x3fe658f0c77dd873              # double 0.69835700000000001
	.quad	0x3fea6aa4b9884c6a              # double 0.82551799999999997
	.quad	0x3fec498c3b0c4589              # double 0.88397800000000004
	.quad	0x3fb7faf42784a948              # double 0.093673000000000006
	.quad	0x3fea1db22d0e5604              # double 0.81612499999999998
	.quad	0x3fd43c21187e7c07              # double 0.31617000000000001
	.quad	0x3fd00a88effe2a3d              # double 0.250643
	.quad	0x3fe7d6323bbc6eb1              # double 0.74489700000000003
	.quad	0x3fe5e35e74299d88              # double 0.68400499999999997
	.quad	0x3fe268a0d349be90              # double 0.57527200000000001
	.quad	0x3fe85a74c09c3ce2              # double 0.761042
	.quad	0x3fd73cff64cf8d71              # double 0.36309799999999998
	.quad	0x3fca687f455a7d24              # double 0.206314
	.quad	0x3fc3f02c4d65e460              # double 0.15576699999999999
	.quad	0x3fe07dbf487fcb92              # double 0.51534999999999997
	.quad	0x3fe572cb641700ce              # double 0.67026300000000005
	.quad	0x3fde9a34ca0c282c              # double 0.47816199999999998
	.quad	0x3fedd2977c88e79b              # double 0.93195700000000004
	.quad	0x3fe92133c1ce6c09              # double 0.78530299999999997
	.quad	0x3fc6809d495182aa              # double 0.17580000000000001
	.quad	0x3fbdb7ae5796bfcb              # double 0.11608400000000001
	.quad	0x3fc58705425f2021              # double 0.168183
	.quad	0x3fdf02602c9081c3              # double 0.48452000000000001
	.quad	0x3fd9f1a1986b9c30              # double 0.40537299999999998
	.quad	0x3fea1070fbeb9e49              # double 0.81450699999999998
	.quad	0x3fd87c73eee52589              # double 0.38259599999999999
	.quad	0x3feb051654d61b2a              # double 0.84437099999999998
	.quad	0x3fd8e1693c03bc4d              # double 0.38875799999999999
	.quad	0x3fe93868fd199bb2              # double 0.78813599999999995
	.quad	0x3fd4c16df3f96180              # double 0.32430599999999998
	.quad	0x3fd75be5d9e40c84              # double 0.36498399999999998
	.quad	0x3fd68f648c7192ea              # double 0.35250199999999998
	.quad	0x3fd9f6ec5b078d93              # double 0.405696
	.quad	0x3fb1881a1554fbdb              # double 0.068483000000000002
	.quad	0x3fdc83a109d0635a              # double 0.44553399999999999
	.quad	0x3fe094db59578a2b              # double 0.51817100000000005
	.quad	0x3fd5f2a5a469d734              # double 0.34293499999999999
	.quad	0x3fecdc4007570c56              # double 0.90188599999999997
	.quad	0x3fe748fd9fd36f7e              # double 0.72765999999999997
	.quad	0x3fd8a250f840181e              # double 0.384907
	.quad	0x3fca6fcdee34fc61              # double 0.206537
	.quad	0x3fe11626b2f23034              # double 0.53395400000000004
	.quad	0x3fc45e80bed740c4              # double 0.159134
	.quad	0x3fb293f290abb44e              # double 0.072569999999999996
	.quad	0x3fef2eddce7cd035              # double 0.97447099999999997
	.quad	0x3fc11ff7164c729f              # double 0.13378799999999999
	.quad	0x3feb2c083126e979              # double 0.84912500000000002
	.quad	0x3feda65add9c27e9              # double 0.92655699999999996
	.quad	0x3fed6f34d6a161e5              # double 0.919825
	.quad	0x3fe054c76d117b53              # double 0.51034900000000005
	.quad	0x3fe70f3eccc46951              # double 0.720611
	.quad	0x3feadb39e279dd3c              # double 0.83926100000000003
	.quad	0x3fd6ba27ae9ab29e              # double 0.35511199999999998
	.quad	0x3fd6083dbc23315d              # double 0.34425299999999998
	.quad	0x3fd9c7ef177a7009              # double 0.40282800000000002
	.quad	0x3fd345a5fc7e6b40              # double 0.301126
	.quad	0x3fc11676640a6b94              # double 0.13349800000000001
	.quad	0x3fea2aa3ad18d25f              # double 0.81770500000000002
	.quad	0x3fecce7685985ad5              # double 0.90020299999999998
	.quad	0x3fe3734d6a161e4f              # double 0.60782499999999995
	.quad	0x3feea8438088509c              # double 0.95804
	.quad	0x3fee7f1950331e3a              # double 0.95301499999999995
	.quad	0x3fc5c2224edf6124              # double 0.169987
	.quad	0x3fe198aeb80ecfa7              # double 0.54988800000000004
	.quad	0x3fd5136e71cda2b6              # double 0.32931100000000002
	.quad	0x3fde21709310129d              # double 0.47079100000000002
	.quad	0x3fd1235b4edb2f66              # double 0.26778299999999999
	.quad	0x3fcddb0142f61ed6              # double 0.23324600000000001
	.quad	0x3fe3f296f6512a95              # double 0.623363
	.quad	0x3fce2b6ae7d566cf              # double 0.23569999999999999
	.quad	0x3fd0f8db4890928a              # double 0.26518900000000001
	.quad	0x3fdce892253111f1              # double 0.45169500000000001
	.quad	0x3feaba3a8e71476b              # double 0.835233
	.quad	0x3fe430e5e679463d              # double 0.630969
	.quad	0x3fdc27179bfdf7e8              # double 0.439886
	.quad	0x3feafede97d06bbe              # double 0.84361200000000003
	.quad	0x3f85992428d434a0              # double 0.010546
	.quad	0x3fee82539756c93a              # double 0.95340899999999995
	.quad	0x3fde9f0a1be2b496              # double 0.47845700000000002
	.quad	0x3fd8319c5a3e39f7              # double 0.37802799999999998
	.quad	0x3fd1b2074ea8da7f              # double 0.27649099999999999
	.quad	0x3fefd742dcf4623d              # double 0.99502699999999999
	.quad	0x3feda8848387df5d              # double 0.92682100000000001
	.quad	0x3fd3603925bb7b6c              # double 0.30274800000000002
	.quad	0x3fe11d4f9c1f85d7              # double 0.53482799999999997
	.quad	0x3fd80a99b6f5caf3              # double 0.37564700000000001
	.quad	0x3fba0fe47991bc56              # double 0.10180500000000001
	.quad	0x3fda53825e13b18e              # double 0.41134700000000002
	.quad	0x3fe387a8d64d7f0f              # double 0.61031000000000002
	.quad	0x3fc557603925bb7b              # double 0.16672899999999999
	.quad	0x3fed438f36694899              # double 0.914497
	.quad	0x3fe2a2ccb3a2595c              # double 0.58237300000000003
	.quad	0x3fdb05532617c1be              # double 0.42220000000000002
	.quad	0x3fedc11e42e12620              # double 0.92982399999999998
	.quad	0x3fe00d73860999dd              # double 0.50164200000000003
	.quad	0x3fe5cc4cdfaca362              # double 0.68118900000000004
	.quad	0x3fe7461f9f01b867              # double 0.72731000000000001
	.quad	0x3fcf2b5e529bae47              # double 0.24351100000000001
	.quad	0x3feffc9bc7714339              # double 0.99958599999999997
	.quad	0x3fcbdc1615ebfa8f              # double 0.21765399999999999
	.quad	0x3f9d51f81a5870da              # double 0.028632999999999999
	.quad	0x3fc4bae89eba6aca              # double 0.16195399999999999
	.quad	0x3fdcf4a98aa8650e              # double 0.45243299999999997
	.quad	0x3fdb5781c714fce7              # double 0.42721599999999998
	.quad	0x3fef7963992c8c50              # double 0.983568
	.quad	0x3fed3d31b9b66f93              # double 0.91371999999999998
	.quad	0x3fec41cc532a4980              # double 0.88303200000000004
	.quad	0x3fe9ed634549b62c              # double 0.81022799999999994
	.quad	0x3fc302d59d55e6bc              # double 0.14852399999999999
	.quad	0x3fe6ad9274e22a2c              # double 0.70868799999999998
	.quad	0x3fd93c4b09e98dce              # double 0.39430500000000002
	.quad	0x3fe620232096787d              # double 0.69142300000000001
	.quad	0x3fe229ed3953dea4              # double 0.56761799999999996
	.quad	0x3f9e7afa7221858c              # double 0.029766000000000001
	.quad	0x3fc3f6f4be835dee              # double 0.155974
	.quad	0x3fbf30a4e379b77c              # double 0.121836
	.quad	0x3fee6f911cf355ce              # double 0.95111900000000005
	.quad	0x3fef6ea63b688bdb              # double 0.98225700000000004
	.quad	0x3fecc679cc74b839              # double 0.89922800000000003
	.quad	0x3fe8f160956c0d6f              # double 0.77946499999999996
	.quad	0x3fd117ca2120e1f8              # double 0.26707700000000001
	.quad	0x3fd160780fdc1616              # double 0.271513
	.quad	0x3fe9a314013ec461              # double 0.80115700000000001
	.quad	0x3fc3d495182a9931              # double 0.15492500000000001
	.quad	0x3fe3c25d074213a1              # double 0.61747600000000002
	.quad	0x3fe91abd1aa821f3              # double 0.78451400000000004
	.quad	0x3fed7a2f05a708ee              # double 0.92116500000000001
	.quad	0x3faac94b380cb6c8              # double 0.052317000000000002
	.quad	0x3fec87f66e86c658              # double 0.89159699999999997
	.quad	0x3fe9bb384fd2a62b              # double 0.80410400000000004
	.quad	0x3fd75b8130164841              # double 0.36496000000000001
	.quad	0x3fdbf1c75818c5ca              # double 0.43663200000000002
	.quad	0x3fc75db3397dd00f              # double 0.18254699999999999
	.quad	0x3fbc216c61522a6f              # double 0.109885
	.quad	0x3fe8455eaee2003b              # double 0.75846800000000003
	.quad	0x3fd6c54bcf0b6b6e              # double 0.355792
	.quad	0x3fe80c6d612c6ac2              # double 0.75151699999999999
	.quad	0x3fd69478c868b9fe              # double 0.35281200000000001
	.quad	0x3fe69539b888722a              # double 0.70571600000000001
	.quad	0x3fe1f2c3009b3073              # double 0.56088400000000005
	.quad	0x3fec95c853c14834              # double 0.89328399999999996
	.quad	0x3fbae12620253975              # double 0.10499799999999999
	.quad	0x3fd9dc1e7967caea              # double 0.40405999999999997
	.quad	0x3fd240357a355044              # double 0.28516900000000001
	.quad	0x3fee2d7d7c2ca149              # double 0.94305300000000003
	.quad	0x3feaf4e22a2c2374              # double 0.84239299999999994
	.quad	0x3f9ab7995ee136e7              # double 0.026091
	.quad	0x3feb8fadf2ecf206              # double 0.86128899999999997
	.quad	0x3febb311a543f1c7              # double 0.86560899999999996
	.quad	0x3fe16c1e364bec68              # double 0.54444800000000004
	.quad	0x3fa344c37e6f71a8              # double 0.037634000000000001
	.quad	0x3fdae29f9ce8d973              # double 0.42008200000000001
	.quad	0x3fc2e807bbb62414              # double 0.147706
	.quad	0x3fd07f8012dfd695              # double 0.25778200000000001
	.quad	0x3fd525072085b185              # double 0.33038499999999998
	.quad	0x3fde61e92923e5b8              # double 0.47472599999999998
	.quad	0x3fb43a2163fdd65a              # double 0.079011999999999998
	.quad	0x3fee5bb9cf9a06a7              # double 0.94869700000000001
	.quad	0x3fd5f0739b024f66              # double 0.34280100000000002
	.quad	0x3fcfbd61f5be5d9e              # double 0.24796699999999999
	.quad	0x3fe85c8fb86f47b6              # double 0.76129899999999995
	.quad	0x3fc1d712a0ec7432              # double 0.139376
	.quad	0x3fedb1a08bfc2225              # double 0.92793300000000001
	.quad	0x3fd5985271bcdbbe              # double 0.337422
	.quad	0x3fe0507852f7f499              # double 0.50982300000000003
	.quad	0x3fdb4ce8101f31f4              # double 0.42656899999999998
	.quad	0x3fe812a305532618              # double 0.75227500000000003
	.quad	0x3feeb1bde82d7b63              # double 0.95919699999999996
	.quad	0x3fb4486ad2dcb146              # double 0.079229999999999994
	.quad	0x3fedf5dbb9cf9a07              # double 0.93626200000000004
	.quad	0x3fbe51e321a2e7f7              # double 0.118437
	.quad	0x3fed0902de00d1b7              # double 0.90734999999999999
	.quad	0x3fc687ebf22c01e7              # double 0.17602300000000001
	.quad	0x3fc694bbe4473cd5              # double 0.17641399999999999
	.quad	0x3feb6f8f041461b7              # double 0.85736800000000002
	.quad	0x3fd3969a0ad8a116              # double 0.30606699999999998
	.quad	0x3fbbedd8b60f1b26              # double 0.109098
	.quad	0x3fd89fb6134ce3de              # double 0.38474799999999998
	.quad	0x3fe3a5093964a59c              # double 0.613896
	.quad	0x3fe75074213a0c6b              # double 0.72857099999999997
	.quad	0x3fed455eaee2003b              # double 0.91471800000000003
	.quad	0x3feaf204295a6c5d              # double 0.84204299999999999
	.quad	0x3fcf438d1d8a5482              # double 0.24424899999999999
	.quad	0x3fe4f2bcb5fe542e              # double 0.65463099999999996
	.quad	0x3fcd06705c896dd2              # double 0.22675899999999999
	.quad	0x3fe809fc6da44849              # double 0.75121899999999997
	.quad	0x3fefc0ee06d93815              # double 0.99230099999999998
	.quad	0x3fd0be121ee67514              # double 0.26160099999999997
	.quad	0x3fb3de1e2de87097              # double 0.077607999999999996
	.quad	0x3fe6ffe8ee6b8306              # double 0.71873900000000002
	.quad	0x3fe65a0dfdef8488              # double 0.69849300000000003
	.quad	0x3fcd6e47dc37a3db              # double 0.22992799999999999
	.quad	0x3fd692b3cc4ac6ce              # double 0.35270400000000002
	.quad	0x3fe8189bd8383ada              # double 0.75300400000000001
	.quad	0x3fee1b845564b663              # double 0.940859
	.quad	0x3fbde90795f676ea              # double 0.116837
	.quad	0x3fea32bdc26dce3a              # double 0.81869400000000003
	.quad	0x3feb49f72f76e610              # double 0.85277899999999995
	.quad	0x3fd453f39d1b2e5a              # double 0.31762400000000002
	.quad	0x3fbcc059210385c6              # double 0.11230999999999999
	.quad	0x3feb52bf5515054b              # double 0.85385100000000003
	.quad	0x3fe95c24c404a72f              # double 0.79249800000000004
	.quad	0x3fe22fc8b0079a28              # double 0.56833299999999998
	.quad	0x3fef480841ede11a              # double 0.97754300000000005
	.quad	0x3fee391b3f20a73f              # double 0.94447099999999995
	.quad	0x3fde1376d5497311              # double 0.46993800000000002
	.quad	0x3fd4186db50f40e6              # double 0.31399100000000002
	.quad	0x3fe826b0d9513f8e              # double 0.75472300000000003
	.quad	0x3fead7be9856a37b              # double 0.83883600000000003
	.quad	0x3fd4374bc6a7ef9e              # double 0.31587500000000002
	.quad	0x3fc8a1b5c7cd898b              # double 0.19243499999999999
	.quad	0x3fe07301eabbcb1d              # double 0.51403900000000002
	.quad	0x3f9d87f88765ba6f              # double 0.028839
	.quad	0x3fba756861e92924              # double 0.103354
	.quad	0x3fe47926c7eae5bd              # double 0.63978900000000005
	.quad	0x3fde199fe43675de              # double 0.47031400000000001
	.quad	0x3fc7328b6d86ec18              # double 0.18123
	.quad	0x3fb2c636b0963561              # double 0.073336999999999999
	.quad	0x3fe6a491afc04c8c              # double 0.70758900000000002
	.quad	0x3fee8c8abd5dc400              # double 0.95465599999999995
	.quad	0x3fe9fa0f9096bb99              # double 0.81177500000000002
	.quad	0x3fe541b75a74c09c              # double 0.66427199999999997
	.quad	0x3fea7266ba493c8a              # double 0.82646500000000001
	.quad	0x3fe06c636b096356              # double 0.51323099999999999
	.quad	0x3fe116e9bbf0dc77              # double 0.53404700000000005
	.quad	0x3fd43ffef39085f5              # double 0.31640600000000002
	.quad	0x3fecdd6bebe1650a              # double 0.90202899999999997
	.quad	0x3f9a7503b81b64e0              # double 0.025836999999999999
	.quad	0x3fe2e8ab4fa48302              # double 0.59090200000000004
	.quad	0x3fde77ea1c68ec53              # double 0.47606900000000002
	.quad	0x3fefd3910c2c5e2d              # double 0.99457600000000001
	.quad	0x3fd108c8259e1f3a              # double 0.26616099999999998
	.quad	0x3fbadefc7a398202              # double 0.104965
	.quad	0x3fe1e5d9e40c8473              # double 0.55930800000000003
	.quad	0x3fc22f7b17ce52df              # double 0.14207400000000001
	.quad	0x3fda4488c60cbf2b              # double 0.41043299999999999
	.quad	0x3fe0f0867ad8e432              # double 0.52936099999999997
	.quad	0x3fcc6b723ee1bd1f              # double 0.222029
	.quad	0x3fd24aec8d5c7475              # double 0.28582299999999999
	.quad	0x3feadfc3b4f61672              # double 0.83981499999999998
	.quad	0x3fdd27dcbddb9842              # double 0.45555800000000002
	.quad	0x3fed1083dbc23316              # double 0.90826600000000002
	.quad	0x3fdc1e0828c36da8              # double 0.43933299999999997
	.quad	0x3fb895d0b73d188f              # double 0.096035999999999996
	.quad	0x3fef68ec52a411c3              # double 0.98155800000000004
	.quad	0x3fed36113404ea4b              # double 0.91285000000000005
	.quad	0x3fe02cd39da16617              # double 0.50547200000000003
	.quad	0x3fd607af20ea5b53              # double 0.344219
	.quad	0x3fcf9578a2a90cd4              # double 0.246749
	.quad	0x3fef1815a07b352b              # double 0.97169000000000005
	.quad	0x3fcbb506dd69d302              # double 0.21646199999999999
	.quad	0x3fc8d04e618ce2d2              # double 0.193857
	.quad	0x3fed04f4c6e6d9be              # double 0.90685499999999997
	.quad	0x3fe5e512a94ff002              # double 0.68421299999999996
	.quad	0x3fed15dd4c76d118              # double 0.90891900000000003
	.quad	0x3fe3d8a761027957              # double 0.620197
	.quad	0x3fdb1522a6f3f530              # double 0.42316500000000001
	.quad	0x3fdaf51697f1f9ad              # double 0.421209
	.quad	0x3fe1a7008a697aee              # double 0.55163600000000002
	.quad	0x3fab7da61e0c5a81              # double 0.053692999999999998
	.quad	0x3f9161a1db877ab3              # double 0.016974
	.quad	0x3fd065e4606748e4              # double 0.25621899999999997
	.quad	0x3fe1e759ab6d00b4              # double 0.55949099999999996
	.quad	0x3febecfa69be09bb              # double 0.87267799999999995
	.quad	0x3f9e3150dae3e6c5              # double 0.029485000000000001
	.quad	0x3fe8705ea24cc682              # double 0.76371699999999998
	.quad	0x3f9e054690de0935              # double 0.029316999999999999
	.quad	0x3fe9695d91ab8e8f              # double 0.79411200000000004
	.quad	0x3fc3033a4723ab00              # double 0.148536
	.quad	0x3fd1e43ed959a30a              # double 0.27955600000000003
	.quad	0x3f915097c80841ee              # double 0.016909
	.quad	0x3fef82b628459967              # double 0.98470599999999997
	.quad	0x3fbe81ba7fc32ebe              # double 0.119167
	.quad	0x3fee31a6d698fe69              # double 0.94356099999999998
	.quad	0x3fc26e115592d98c              # double 0.143984
	.quad	0x3fe44845132f87ad              # double 0.633822
	.quad	0x3fe466a76965f527              # double 0.63753099999999996
	.quad	0x3fd8095f2452c5a0              # double 0.37557200000000002
	.quad	0x3fe560d66f0cfe15              # double 0.66807099999999997
	.quad	0x3fd39a49c2c1b110              # double 0.30629200000000001
	.quad	0x3fc0a832b990afe6              # double 0.130133
	.quad	0x3feb29cbab649d39              # double 0.84885200000000005
	.quad	0x3fef264a16a48733              # double 0.97342399999999995
	.quad	0x3fb6b1704ff4341a              # double 0.088645000000000001
	.quad	0x3fe59ef954eb13e0              # double 0.67565600000000003
	.quad	0x3fd30e90bc7b45f1              # double 0.29776399999999997
	.quad	0x3fa67ff583a53b8e              # double 0.043944999999999998
	.quad	0x3fdc906034f3fd93              # double 0.44631199999999999
	.quad	0x3fdc0af1cb89d6ae              # double 0.438168
	.quad	0x3fec980b242070b9              # double 0.89356000000000002
	.quad	0x3fd4a4a8c154c986              # double 0.32255
	.quad	0x3fe104d338f79852              # double 0.53183899999999995
	.quad	0x3fe33823c85c24c4              # double 0.600603
	.quad	0x3fc5f51efb6dca08              # double 0.171543
	.quad	0x3fa806290eed02cd              # double 0.046921999999999998
	.quad	0x3fdaf737da61e0c6              # double 0.42133900000000002
	.quad	0x3f76b11c6d1e108c              # double 0.0055399999999999998
	.quad	0x3fee5f0f5a1016ce              # double 0.94910399999999995
	.quad	0x3fde1711947cfa27              # double 0.47015800000000002
	.quad	0x3fc25058dde7a744              # double 0.14307700000000001
	.quad	0x3fe553586ca89fc7              # double 0.66642400000000002
	.quad	0x3fea49a77e5eaab0              # double 0.82149099999999997
	.quad	0x3fe78b827fa1a0cf              # double 0.73577999999999999
	.quad	0x3fe5ff7dfa00e27e              # double 0.68743799999999999
	.quad	0x3fade69ad42c3c9f              # double 0.058400000000000001
	.quad	0x3fe6d527e5215769              # double 0.71352000000000004
	.quad	0x3fea388a8b08dd1e              # double 0.81940199999999996
	.quad	0x3fe953b8e4b87bdd              # double 0.79147000000000001
	.quad	0x3fb17c914b167ec8              # double 0.068307000000000007
	.quad	0x3fef209edbf8b9bb              # double 0.97273200000000004
	.quad	0x3fe99733226c3b92              # double 0.79970699999999995
	.quad	0x3fa7d438d1d8a548              # double 0.046540999999999999
	.quad	0x3fd446801711947d              # double 0.316803
	.quad	0x3fee72452c59fb1e              # double 0.95144899999999999
	.quad	0x3fe27f3f0fe047d4              # double 0.57803300000000002
	.quad	0x3fb87f23cc8de2ac              # double 0.095689999999999997
	.quad	0x3fe31819d2391d58              # double 0.596692
	.quad	0x3fb898915bdd7668              # double 0.096077999999999997
	.quad	0x3fe82708ede54b49              # double 0.75476500000000002
	.quad	0x3fd31dc50ce4ead1              # double 0.29869200000000001
	.quad	0x3fc974256bca5376              # double 0.19885700000000001
	.quad	0x3fe11b21c475e636              # double 0.53456199999999998
	.quad	0x3fd3e4d5d80e496f              # double 0.31084200000000001
	.quad	0x3fe2a81ba7fc32ec              # double 0.58302100000000001
	.quad	0x3fca0192a737110e              # double 0.20317299999999999
	.quad	0x3fe06e17a02fb5d0              # double 0.51343899999999998
	.quad	0x3fe540b9991361dd              # double 0.66415100000000005
	.quad	0x3feafc5692b3cc4b              # double 0.84330300000000002
	.quad	0x3fa3f077ccc03793              # double 0.038943999999999999
	.quad	0x3fec74b407032980              # double 0.88924599999999998
	.quad	0x3fde41e57d9dba91              # double 0.47277200000000003
	.quad	0x3fa55bab21815a08              # double 0.041715000000000002
	.quad	0x3feaad40aaeafab5              # double 0.83364899999999997
	.quad	0x3fcc37ef5a964e8b              # double 0.22045699999999999
	.quad	0x3feb8e043a2163fe              # double 0.86108600000000002
	.quad	0x3fd4b07075b3e143              # double 0.32326899999999997
	.quad	0x3fc70b955f78359c              # double 0.18004100000000001
	.quad	0x3fe8c2b302f72b45              # double 0.77376699999999998
	.quad	0x3fe0241a261bf37c              # double 0.50440700000000005
	.quad	0x3fea221426fe718b              # double 0.81666000000000005
	.quad	0x3fc4655193708aad              # double 0.15934200000000001
	.quad	0x3fcd45a5fc7e6b40              # double 0.228688
	.quad	0x3fed0c1333b96af0              # double 0.90772399999999998
	.quad	0x3fe031ad2135daad              # double 0.50606399999999996
	.quad	0x3fe18268900c521e              # double 0.54716900000000002
	.quad	0x3f9ceee0f3cb3e57              # double 0.028254999999999999
	.quad	0x3fd7b88ca3e7d135              # double 0.370639
	.quad	0x3fe609289dadfb50              # double 0.68861799999999995
	.quad	0x3fedc18d6909aed5              # double 0.92987699999999995
	.quad	0x3fbc52f7f498c3b1              # double 0.110641
	.quad	0x3fdddfbd6a593a2e              # double 0.466781
	.quad	0x3fe27c02afdda8bd              # double 0.57763799999999998
	.quad	0x3fbee158750c1b97              # double 0.120626
	.quad	0x3fbd5c74751ce28f              # double 0.114692
	.quad	0x3fef65eedcc20d56              # double 0.98119299999999998
	.quad	0x3f856eac8605681f              # double 0.010465
	.quad	0x3feb805c4651f3e9              # double 0.85941900000000004
	.quad	0x3fd4d3dc8b86b160              # double 0.32543100000000003
	.quad	0x3fdf7160956c0d6f              # double 0.49129499999999998
	.quad	0x3f9f5ad96a6a0126              # double 0.030620000000000001
	.quad	0x3fba6202539756c9              # double 0.103058
	.quad	0x3f81fddebd9018e7              # double 0.0087849999999999994
	.quad	0x3fdff13059641f64              # double 0.49909599999999998
	.quad	0x3fe9374794ea0770              # double 0.78799799999999998
	.quad	0x3fda5bea0ba1f4b2              # double 0.41186
	.quad	0x3fd399fe43675ddd              # double 0.30627399999999999
	.quad	0x3fbbf4a98aa8650e              # double 0.10920199999999999
	.quad	0x3fd006b37867f0aa              # double 0.25040899999999999
	.quad	0x3fdb55f78359bc34              # double 0.427122
	.quad	0x3fe07f8ec0f88334              # double 0.515571
	.quad	0x3fc1ec99f1ae2da5              # double 0.14003299999999999
	.quad	0x3fec14812be48a59              # double 0.87750300000000003
	.quad	0x3fa5d616f86a0989              # double 0.042648999999999999
	.quad	0x3fb7b4c3c18b502b              # double 0.092602000000000004
	.quad	0x3fe94a36199780bb              # double 0.79030900000000004
	.quad	0x3fa0d08919ef954f              # double 0.032841000000000002
	.quad	0x3fc3ef8ceb356da0              # double 0.155748
	.quad	0x3fe38561d4306e5d              # double 0.61003200000000002
	.quad	0x3fecbc968943e100              # double 0.89802099999999996
	.quad	0x3fce20bc382a12f9              # double 0.235374
	.quad	0x3fa0d759ee88df37              # double 0.032892999999999999
	.quad	0x3fcbc1f85d744f5d              # double 0.21685699999999999
	.quad	0x3fe569c66d373b00              # double 0.66916200000000003
	.quad	0x3fdf22f2734f82f5              # double 0.486508
	.quad	0x3fe931550ca1cef2              # double 0.78727199999999997
	.quad	0x3faa647fdc5931ca              # double 0.051547999999999997
	.quad	0x3fb04d87724fa8b5              # double 0.063683000000000003
	.quad	0x3fa38f57f737da62              # double 0.038203000000000001
	.quad	0x3fc68dd1e53a81dc              # double 0.176203
	.quad	0x3fd669a4df47f994              # double 0.35019800000000001
	.quad	0x3fc69070fbeb9e49              # double 0.176283
	.quad	0x3fd42fa5093964a6              # double 0.31540800000000002
	.quad	0x3fd2d67ba237cdcd              # double 0.29434100000000002
	.quad	0x3fe2ec56d5cfaace              # double 0.59135000000000004
	.quad	0x3fce7980f55de58e              # double 0.23808299999999999
	.quad	0x3fe4ebdf4c2b51bd              # double 0.65379299999999996
	.quad	0x3fed980f55de58e6              # double 0.92481199999999997
	.quad	0x3fdef1c3265add9c              # double 0.48350599999999999
	.quad	0x3fbd871e6cd29132              # double 0.115343
	.quad	0x3fe19782d38476f3              # double 0.54974500000000004
	.quad	0x3fda40bbb1f255f3              # double 0.41020099999999998
	.quad	0x3fd0080f98fa3769              # double 0.25049199999999999
	.quad	0x3feef1950331e3a8              # double 0.96699000000000001
	.quad	0x3fec4da09cc319c6              # double 0.88447600000000004
	.quad	0x3fdb6c508b32ce89              # double 0.42848599999999998
	.quad	0x3fd2d0dcfcc5b8dc              # double 0.29399799999999998
	.quad	0x3fd17cb70ac3a861              # double 0.27323700000000001
	.quad	0x3fadfc19c17225b7              # double 0.058563999999999998
	.quad	0x3fef0e0c9d9d3459              # double 0.97046500000000002
	.quad	0x3fd2b91f70de8f6d              # double 0.292549
	.quad	0x3fdba6aca7935760              # double 0.43204799999999999
	.quad	0x3fa3e20ccff21b3b              # double 0.038834
	.quad	0x3fe85f1172ef0ae5              # double 0.76160499999999998
	.quad	0x3fd6d3f5b5fa2270              # double 0.35668699999999998
	.quad	0x3fe0fce0fc2eba28              # double 0.53086900000000004
	.quad	0x3fe5c15d2d01c0ca              # double 0.67985399999999996
	.quad	0x3fc630fcf80dc337              # double 0.17337
	.quad	0x3fe5e7ff583a53b9              # double 0.68457000000000001
	.quad	0x3fe82eb3dd11be6e              # double 0.75570099999999996
	.quad	0x3fdc0a24463065f9              # double 0.43811899999999998
	.quad	0x3fc04e1e71044f1a              # double 0.127384
	.quad	0x3fef0ce703afb7e9              # double 0.97032499999999999
	.quad	0x3fe9099e0e73604a              # double 0.78242400000000001
	.quad	0x3fcafa2f05a708ee              # double 0.21076
	.quad	0x3fd9117f84449dbf              # double 0.39169300000000001
	.quad	0x3fdda90cd423d923              # double 0.46344299999999999
	.quad	0x3fdb1233df2a9d62              # double 0.42298599999999997
	.quad	0x3fcf9817b95a2941              # double 0.24682899999999999
	.quad	0x3fea50f840181e04              # double 0.822384
	.quad	0x3fb363d3e4ef0282              # double 0.075742000000000004
	.quad	0x3feb0364388ebcc7              # double 0.84416400000000003
	.quad	0x3fe2c091c087442c              # double 0.58600699999999994
	.quad	0x3fe18e0008637bd0              # double 0.54858399999999996
	.quad	0x3f95c810a569b175              # double 0.021271000000000002
	.quad	0x3feef26f1dc50ce5              # double 0.967094
	.quad	0x3fd577e1b8ed1bf8              # double 0.33544200000000002
	.quad	0x3fd3771001d5c316              # double 0.30414200000000002
	.quad	0x3fda22af5771001d              # double 0.40836699999999998
	.quad	0x3fc5631b584b1ab1              # double 0.16708700000000001
	.quad	0x3fee2014727dcbde              # double 0.94141600000000003
	.quad	0x3fea15a4acf312b2              # double 0.81514200000000003
	.quad	0x3fdb569b17481b22              # double 0.42716100000000001
	.quad	0x3fd0ef8487b99d45              # double 0.26461899999999999
	.quad	0x3fe1f9b994e1a3f4              # double 0.56173399999999996
	.quad	0x3fc9cf893faf4278              # double 0.20164599999999999
	.quad	0x3fdb92d55a3a083a              # double 0.43083700000000003
	.quad	0x3fd59a62ed352221              # double 0.33754800000000001
	.quad	0x3fec56e47dc37a3e              # double 0.88560700000000003
	.quad	0x3fec3dea465a5764              # double 0.88255799999999995
	.quad	0x3fe3b23fee2c98e5              # double 0.61550899999999997
	.quad	0x3fe0d2630ec31162              # double 0.52568199999999998
	.quad	0x3fd3323fee2c98e5              # double 0.29994199999999999
	.quad	0x3feb7b56b8737974              # double 0.85880599999999995
	.quad	0x3fc5b7281fd9ba1b              # double 0.169652
	.quad	0x3fc512231832fcad              # double 0.16461600000000001
	.quad	0x3fdbcf5b1c864884              # double 0.434531
	.quad	0x3fde04c059210386              # double 0.46904000000000001
	.quad	0x3fc32aae297396d1              # double 0.14974000000000001
	.quad	0x3fe497d49d7ba66a              # double 0.64353400000000005
	.quad	0x3fe9d6a37ac3eb7d              # double 0.80745100000000003
	.quad	0x3f69d883ba3443d4              # double 0.0031549999999999998
	.quad	0x3fec0a5efe931876              # double 0.87626599999999999
	.quad	0x3fef182ecaeea63b              # double 0.97170199999999995
	.quad	0x3fd39af1886df82b              # double 0.30633199999999999
	.quad	0x3fcd044f1a1986ba              # double 0.22669400000000001
	.quad	0x3fea4d39da16616b              # double 0.82192699999999996
	.quad	0x3fcaf954eb13dfb1              # double 0.210734
	.quad	0x3fd098e53eb399f6              # double 0.25933200000000001
	.quad	0x3fe0c4567125dd09              # double 0.52396699999999996
	.quad	0x3fef478a6dacabc5              # double 0.97748299999999999
	.quad	0x3fc2dd4845132f88              # double 0.14737800000000001
	.quad	0x3fe0ea161e4f7660              # double 0.52857500000000002
	.quad	0x3fddc881e4712e41              # double 0.46536300000000003
	.quad	0x3fcbfb82c2bd7f52              # double 0.218613
	.quad	0x3fc621ea35935fc4              # double 0.17291000000000001
	.quad	0x3fc3b584b1ab0857              # double 0.153977
	.quad	0x3fd64e7685985ad5              # double 0.34853899999999999
	.quad	0x3fec1ac57e23f24e              # double 0.87826800000000005
	.quad	0x3fd9c27631b584b2              # double 0.40249400000000002
	.quad	0x3fe4a96b3354c122              # double 0.64568099999999995
	.quad	0x3fde751ce28ed5f1              # double 0.47589799999999999
	.quad	0x3fe3968f8e7ddca5              # double 0.61212900000000003
	.quad	0x3fecd929670196d9              # double 0.901509
	.quad	0x3fb3d9988d2a1f8e              # double 0.077538999999999996
	.quad	0x3feffb4c3c18b503              # double 0.99942600000000003
	.quad	0x3fd3baf533f42353              # double 0.308286
	.quad	0x3fe59c49774256bd              # double 0.67532800000000004
	.quad	0x3fd120f6f08cc576              # double 0.26763700000000001
	.quad	0x3fc58359bc33f855              # double 0.168071
	.quad	0x3fe772a7bd48cb4b              # double 0.73274600000000001
	.quad	0x3feb4df04ddb5526              # double 0.85326400000000002
	.quad	0x3fe4884406c00da2              # double 0.64163400000000004
	.quad	0x3fc7d5d3dc8b86b1              # double 0.18621299999999999
	.quad	0x3fe1e9424e592967              # double 0.559724
	.quad	0x3feb4edf61240746              # double 0.85337799999999997
	.quad	0x3fe96c69b5a63f9a              # double 0.79448399999999997
	.quad	0x3fe994c22ee4191a              # double 0.79940900000000004
	.quad	0x3fe9958969a0ad8a              # double 0.79950399999999999
	.quad	0x3fe51731098d477c              # double 0.65908100000000003
	.quad	0x3fecf3387160956c              # double 0.90468999999999999
	.quad	0x3fe287e9d94d0dd0              # double 0.57909100000000002
	.quad	0x3fc746cb966be7b0              # double 0.18184800000000001
	.quad	0x3fdf77681669ced1              # double 0.49166300000000002
	.quad	0x3fe17ea3df6db941              # double 0.546709
	.quad	0x3fea1b62c77574f7              # double 0.81584299999999998
	.quad	0x3fed8d8cb07d0aee              # double 0.92352900000000004
	.quad	0x3fb973215fcc1872              # double 0.099413000000000001
	.quad	0x3fe6f5ec80c73abd              # double 0.71752000000000005
	.quad	0x3fe8f9aae6c8f755              # double 0.78047699999999998
	.quad	0x3fe66e392e1ef73c              # double 0.70095499999999999
	.quad	0x3fe78b60f1b25f63              # double 0.73576399999999997
	.quad	0x3fbe0eb67c286f8b              # double 0.117412
	.quad	0x3fef5a426bb55ac0              # double 0.97976799999999997
	.quad	0x3fdc670196d8f4f9              # double 0.44378699999999999
	.quad	0x3feaeb5d462c343b              # double 0.84123099999999995
	.quad	0x3fd4f69878316a05              # double 0.32755099999999998
	.quad	0x3fedda4484944ed7              # double 0.932894
	.quad	0x3fd0915bdd76683c              # double 0.25887199999999999
	.quad	0x3fe19758e219652c              # double 0.54972500000000002
	.quad	0x3fc8c78e9f6a93f3              # double 0.19359000000000001
	.quad	0x3fd3024f6598e10d              # double 0.297016
	.quad	0x3fea602a77a2cecd              # double 0.82423900000000005
	.quad	0x3fd4a333764f11b6              # double 0.322461
	.quad	0x3fe143675ddd2ae9              # double 0.53947800000000001
	.quad	0x3fc167f4dbdf8f47              # double 0.13598499999999999
	.quad	0x3fec48de2ac32229              # double 0.88389499999999999
	.quad	0x3fd8142b302f72b4              # double 0.37623099999999998
	.quad	0x3fee44dec1c1d6d0              # double 0.94590700000000005
	.quad	0x3fee4bf6e3f78bbd              # double 0.94677299999999998
	.quad	0x3fe917fa5d28d003              # double 0.78417700000000001
	.quad	0x3fe81d8409e55c10              # double 0.75360300000000002
	.quad	0x3fe6d5992428d435              # double 0.71357400000000004
	.quad	0x3fc582e44b6e935c              # double 0.16805700000000001
	.quad	0x3fe28bf7f06705c9              # double 0.57958600000000005
	.quad	0x3fb7fc115df6555c              # double 0.093689999999999996
	.quad	0x3fc015db3397dd01              # double 0.125667
	.quad	0x3fde4c76d117b528              # double 0.47341699999999998
	.quad	0x3fcb9f90539fba45              # double 0.215807
	.quad	0x3fd56fef7c243dcd              # double 0.334957
	.quad	0x3fc232a8c9b84556              # double 0.14217099999999999
	.quad	0x3feb38fffbce4218              # double 0.85070800000000002
	.quad	0x3fd2e6d58c8eef1c              # double 0.29533900000000002
	.quad	0x3fc1dcf0307f23cd              # double 0.13955500000000001
	.quad	0x3fec7bc1acde19fc              # double 0.89010699999999998
	.quad	0x3fd70bed740c4157              # double 0.36010300000000001
	.quad	0x3fd6ad42c3c9eecc              # double 0.354325
	.quad	0x3fbb6427c7c5260f              # double 0.10699699999999999
	.quad	0x3fde8c9b845564b6              # double 0.47733199999999998
	.quad	0x3f9f88333fc86cec              # double 0.030793000000000001
	.quad	0x3fcb0fe8ab4fa483              # double 0.211423
	.quad	0x3fd604a2fcefaa47              # double 0.34403299999999998
	.quad	0x3fe0cc63f141205c              # double 0.52495000000000003
	.quad	0x3fbca9de8b3b3205              # double 0.111967
	.quad	0x3fedb845564b6630              # double 0.92874400000000001
	.quad	0x3fd601fb82c2bd7f              # double 0.34387099999999998
	.quad	0x3fe60e6f2e8c0486              # double 0.68926200000000004
	.quad	0x3fcb1947cfa26a23              # double 0.21170900000000001
	.quad	0x3fe7b78897e99631              # double 0.74115399999999998
	.quad	0x3fdb9e12a51e321a              # double 0.43152299999999999
	.quad	0x3fe169270b06c43f              # double 0.54408599999999996
	.quad	0x3fd9fe931876188b              # double 0.406163
	.quad	0x3fd141c8216c6152              # double 0.26963999999999999
	.quad	0x3fe250a45d41fa76              # double 0.57234399999999996
	.quad	0x3fe9c165907d9125              # double 0.80485799999999996
	.quad	0x3fd8bb2fec56d5d0              # double 0.38642500000000002
	.quad	0x3fe10b88ca3e7d13              # double 0.53265799999999996
	.quad	0x3fef79873ffac1d3              # double 0.98358500000000004
	.quad	0x3fd54f9c1f85d745              # double 0.332984
	.quad	0x3f926cc1ca3a4b55              # double 0.017992999999999999
	.quad	0x3fd528283d35eb74              # double 0.33057599999999998
	.quad	0x3fe205c03361565c              # double 0.56320199999999998
	.quad	0x3feeb2a6b0d95140              # double 0.95930800000000004
	.quad	0x3fedb6ac647778dd              # double 0.92854899999999996
	.quad	0x3f9b291b823c85c2              # double 0.026523999999999999
	.quad	0x3fd648909289dae0              # double 0.34817900000000002
	.quad	0x3fe8e4f3343fa2ad              # double 0.77794799999999997
	.quad	0x3fe7c2b51bd61f5c              # double 0.74251800000000001
	.quad	0x3fef690364388ebd              # double 0.98156900000000002
	.quad	0x3fef21294573a798              # double 0.97279800000000005
	.quad	0x3fe1fdc7abfb9bed              # double 0.56222899999999998
	.quad	0x3fed50507a6bd6e9              # double 0.91605400000000003
	.quad	0x3fe2c4bf4cb1897a              # double 0.58651699999999996
	.quad	0x3fc0fd2a62aa1944              # double 0.13272600000000001
	.quad	0x3fe3710667f90d9d              # double 0.60754699999999995
	.quad	0x3feb7a95c853c148              # double 0.85871399999999998
	.quad	0x3fd9ba4d6e47dc38              # double 0.40199600000000002
	.quad	0x3fedfa15db3397dd              # double 0.936778
	.quad	0x3fec40a4a05dd8f9              # double 0.88289099999999998
	.quad	0x3fe007c6327ed84d              # double 0.50094899999999998
	.quad	0x3fd778fabda0dfdf              # double 0.366759
	.quad	0x3fe7f5b813016484              # double 0.74874499999999999
	.quad	0x3fc1987c6327ed85              # double 0.137466
	.quad	0x3fec3c2dadb8348f              # double 0.88234599999999996
	.quad	0x3fd811b1d92b7fe1              # double 0.37608000000000003
	.quad	0x3fe78bc9cd3e0bd4              # double 0.73581399999999997
	.quad	0x3fa41dd1a21ea359              # double 0.039289999999999999
	.quad	0x3fd663065f9591cd              # double 0.34979399999999999
	.quad	0x3fc19695d91ab8e9              # double 0.137408
	.quad	0x3fe169185cee17a0              # double 0.54407899999999998
	.quad	0x3feade353f7ced91              # double 0.83962499999999995
	.quad	0x3fcc7faa044ae85c              # double 0.22264600000000001
	.quad	0x3fee641f644955b4              # double 0.94972199999999995
	.quad	0x3fd44ad362e90364              # double 0.31706699999999999
	.quad	0x3fd8278d0cc35ce2              # double 0.37741400000000003
	.quad	0x3fd02a38b8ae31d7              # double 0.252577
	.quad	0x3f7a77e5eaab0425              # double 0.0064619999999999999
	.quad	0x3fc7a95c853c1483              # double 0.18485599999999999
	.quad	0x3fe18008637bd05b              # double 0.546879
	.quad	0x3fe6539b8887229f              # double 0.69770600000000005
	.quad	0x3fa242d05f288484              # double 0.035666000000000003
	.quad	0x3fd19ed7c6fbd274              # double 0.27532000000000001
	.quad	0x3fcd629d8409e55c              # double 0.229572
	.quad	0x3fee2c710cb295ea              # double 0.94292500000000001
	.quad	0x3fc520c069e7fb26              # double 0.16506199999999999
	.quad	0x3fd5a437824d4cba              # double 0.338148
	.quad	0x3fc16e503fb37436              # double 0.13617899999999999
	.quad	0x3fd1883ba3443d47              # double 0.27394000000000002
	.quad	0x3febe8815e39713b              # double 0.87213200000000002
	.quad	0x3fd72c8c5004fb12              # double 0.36209400000000003
	.quad	0x3fdf89a027525461              # double 0.49277500000000002
	.quad	0x3fd636d655e28aa4              # double 0.34709699999999999
	.quad	0x3fe344178705425f              # double 0.60206199999999999
	.quad	0x3febc1743e963dc5              # double 0.86736500000000005
	.quad	0x3fe7c7021d10b1ff              # double 0.74304300000000001
	.quad	0x3fe4523d4f15e7c9              # double 0.63503900000000002
	.quad	0x3febcf4e874c8ffc              # double 0.86905600000000005
	.quad	0x3fe4e8cef672b884              # double 0.65341899999999997
	.quad	0x3fe30d2806af46aa              # double 0.595356
	.quad	0x3fe4cd530489d27c              # double 0.65006399999999998
	.quad	0x3fedaa369fcf3dc0              # double 0.92702799999999996
	.quad	0x3fe80f9d2bf55150              # double 0.75190599999999996
	.quad	0x3f83860999dcb578              # double 0.0095329999999999998
	.quad	0x3f8f8f47304039ac              # double 0.01541
	.quad	0x3fde4178705425f2              # double 0.472746
	.quad	0x3fe80c996b7670a0              # double 0.75153800000000003
	.quad	0x3fc3ed3953dea466              # double 0.15567700000000001
	.quad	0x3fe926efc371da38              # double 0.78600300000000001
	.quad	0x3feb26f60e0eb67c              # double 0.84850599999999998
	.quad	0x3fb8cb8e086bdf4c              # double 0.096855999999999997
	.quad	0x3fee64345cfede98              # double 0.94973200000000002
	.quad	0x3fe13f22c01e68a1              # double 0.53895700000000002
	.quad	0x3fec3854046412cf              # double 0.88187599999999999
	.quad	0x3fb85996744b2b77              # double 0.095116999999999993
	.quad	0x3febec3fc43b2dd3              # double 0.87258899999999995
	.quad	0x3feb9ebc83a96d4c              # double 0.86312699999999997
	.quad	0x3fe9d78811b1d92b              # double 0.80755999999999994
	.quad	0x3fcd80dc33721d54              # double 0.23049500000000001
	.quad	0x3fe4669f05ea24cc              # double 0.63752699999999995
	.quad	0x3fdb364bec679cc7              # double 0.42518899999999998
	.quad	0x3fd9b53d640e9d52              # double 0.40168700000000002
	.quad	0x3feee05681ecd4aa              # double 0.96488499999999999
	.quad	0x3fe59b0ee49f5169              # double 0.67517799999999994
	.quad	0x3fefce8533b10774              # double 0.99395999999999995
	.quad	0x3fe3584901d19158              # double 0.60452700000000004
	.quad	0x3fe2710880d801b4              # double 0.57629799999999998
	.quad	0x3fde6317268d3283              # double 0.474798
	.quad	0x3fefcacf312b1b37              # double 0.99350700000000002
	.quad	0x3fed64755ffe6d59              # double 0.91851300000000002
	.quad	0x3fbb9c94f69ca9ef              # double 0.107858
	.quad	0x3fe744c7b02d59d5              # double 0.72714599999999996
	.quad	0x3fd02b6f19934efd              # double 0.25265100000000001
	.quad	0x3fe51e3a7daa4fca              # double 0.65993999999999997
	.quad	0x3fdf16659d12cade              # double 0.48574200000000001
	.quad	0x3fe8374bc6a7ef9e              # double 0.75675000000000003
	.quad	0x3fe33cc4ac6cdaf5              # double 0.60116800000000004
	.quad	0x3fdc99806f262889              # double 0.44686900000000002
	.quad	0x3fe4d17e77d523b3              # double 0.65057299999999996
	.quad	0x3fbe2d6238da3c21              # double 0.11788
	.quad	0x3feae3beec39799e              # double 0.84030099999999996
	.quad	0x3fe161a8262456f7              # double 0.54317099999999996
	.quad	0x3fe0252ce032db1f              # double 0.50453800000000004
	.quad	0x3fa3b7f9d6f112fd              # double 0.038512999999999999
	.quad	0x3f984a0e410b630b              # double 0.023720000000000001
	.quad	0x3feec743201040c0              # double 0.96182400000000001
	.quad	0x3fe9adba4d6e47dc              # double 0.80245699999999997
	.quad	0x3fcf3f85510d38ce              # double 0.24412600000000001
	.quad	0x3fcfdf7e80389f84              # double 0.24900800000000001
	.quad	0x3fcffc4c165907d9              # double 0.249887
	.quad	0x3feb4dbdf8f47304              # double 0.85323999999999999
	.quad	0x3faa53543aeab799              # double 0.051416999999999997
	.quad	0x3fa2582dbe7f2c30              # double 0.035829
	.quad	0x3fed86a8fc0d2c38              # double 0.92268799999999995
	.quad	0x3fbb99a1fd1569f5              # double 0.10781300000000001
	.quad	0x3fc26c8f75536934              # double 0.14393800000000001
	.quad	0x3feaa977c88e79ab              # double 0.83318700000000001
	.quad	0x3fd56872b020c49c              # double 0.33450000000000002
	.quad	0x3fd3873797460243              # double 0.30512800000000001
	.quad	0x3fe96299524bfd2f              # double 0.79328600000000005
	.quad	0x3fb1acbc8c0ce91d              # double 0.069042000000000006
	.quad	0x3fba65cf67b1c001              # double 0.103116
	.quad	0x3fbe1ea35935fc3b              # double 0.117655
	.quad	0x3fe81b66f9335d25              # double 0.75334500000000004
	.quad	0x3fe0e3ae2541d8e8              # double 0.52779299999999996
	.quad	0x3fe627b2cc70867b              # double 0.69234600000000002
	.quad	0x3fee5eaee2003ab8              # double 0.94905799999999995
	.quad	0x3fe45052934acaff              # double 0.63480499999999995
	.quad	0x3fd107cc7d1bb491              # double 0.26610099999999998
	.quad	0x3fd6df97aaac1095              # double 0.35739700000000002
	.quad	0x3fe101fb82c2bd7f              # double 0.53149199999999996
	.quad	0x3fed8e9d51b4fe7a              # double 0.92365900000000001
	.quad	0x3fcfbf2f55582129              # double 0.24802199999999999
	.quad	0x3fc904ccee5abc0e              # double 0.19545899999999999
	.quad	0x3fed51f3e89a88ad              # double 0.91625400000000001
	.quad	0x3fa2fe1da7b0b392              # double 0.037095000000000003
	.quad	0x3fe24026cc1ca3a5              # double 0.57033100000000003
	.quad	0x3f9ffc115df6555c              # double 0.031234999999999999
	.quad	0x3fe5bfc6540cc78f              # double 0.67966000000000004
	.quad	0x3fe7cec84f8f8a4c              # double 0.74399199999999999
	.quad	0x3feae74afd545415              # double 0.84073399999999998
	.quad	0x3fe6a116659d12cb              # double 0.70716400000000001
	.quad	0x3fe0fd566cf41f21              # double 0.53092499999999998
	.quad	0x3fd224851a869403              # double 0.28347899999999998
	.quad	0x3fee498a222d5172              # double 0.94647700000000001
	.quad	0x3fd569ec2ce46499              # double 0.33459
	.quad	0x3fceea209aaa3ad2              # double 0.24152000000000001
	.quad	0x3fd7af3e468cac4b              # double 0.37007099999999998
	.quad	0x3fd7e9fadafd1138              # double 0.37365599999999999
	.quad	0x3fe24b4aec8d5c74              # double 0.57169099999999995
	.quad	0x3fdc7e7c06e19b91              # double 0.44522
	.quad	0x3fe8f5579af1886e              # double 0.779949
	.quad	0x3fe67985271bcdbc              # double 0.70233400000000001
	.quad	0x3fe589613d31b9b6              # double 0.67301999999999995
	.quad	0x3fe99eba6aca7935              # double 0.80062599999999995
	.quad	0x3fc3d944aa53fc01              # double 0.15506800000000001
	.quad	0x3fee74eca686e7e6              # double 0.95177299999999998
	.quad	0x3fdf90f301eabbcb              # double 0.49322199999999999
	.quad	0x3fdbf62f9ca5bd94              # double 0.43690099999999998
	.quad	0x3fb64b2314013ec4              # double 0.087083999999999995
	.quad	0x3fa7f90d9d7774ac              # double 0.046822000000000003
	.quad	0x3fe4b33fc86cebbc              # double 0.64688100000000004
	.quad	0x3fe85171e29b6b2b              # double 0.75994200000000001
	.quad	0x3fe22cc4ef88b978              # double 0.56796500000000005
	.quad	0x3fef4e2089e34331              # double 0.97828700000000001
	.quad	0x3fdd0c804102ff8f              # double 0.45388800000000001
	.quad	0x3fbb22e1ac57e23f              # double 0.106001
	.quad	0x3fde2428d434a01b              # double 0.47095700000000001
	.quad	0x3fbe0e0eb67c2870              # double 0.11740200000000001
	.quad	0x3fcf60a63305100a              # double 0.24513699999999999
	.quad	0x3fc4c1ebc83a96d5              # double 0.16216800000000001
	.quad	0x3fd8ed634549b62c              # double 0.38948899999999997
	.quad	0x3fc1f1c75818c5ca              # double 0.14019100000000001
	.quad	0x3fe1ab191dde3758              # double 0.55213599999999996
	.quad	0x3feac7496aad1d04              # double 0.83682699999999998
	.quad	0x3fdab630a91537a0              # double 0.41737000000000002
	.quad	0x3fb9fb506dd69d30              # double 0.101491
	.quad	0x3fc8377186551937              # double 0.189192
	.quad	0x3fef6c7a7c9de050              # double 0.98199199999999998
	.quad	0x3fec13404ea4a8c1              # double 0.87734999999999996
	.quad	0x3feb13be22e5de16              # double 0.84616000000000002
	.quad	0x3fe83a0e8427418d              # double 0.75708699999999995
	.quad	0x3fe3d681ecd4aa11              # double 0.61993500000000001
	.quad	0x3fd91fe64f54d1e9              # double 0.39257199999999998
	.quad	0x3fe563193f6c269a              # double 0.66834700000000002
	.quad	0x3fe68ef1348b2208              # double 0.70494900000000005
	.quad	0x3fbec5197a24894c              # double 0.120195
	.quad	0x3fd1d130df9bdc6a              # double 0.278393
	.quad	0x3fc1f1950331e3a8              # double 0.140185
	.quad	0x3fd963f9a49c2c1b              # double 0.396727
	.quad	0x3fe96e978d4fdf3b              # double 0.79474999999999996
	.quad	0x3fede4ffc9795b36              # double 0.93420400000000003
	.quad	0x3fb07b99d451fc4c              # double 0.064385999999999999
	.quad	0x3fe726634117f844              # double 0.72343599999999997
	.quad	0x3fec4968943e1006              # double 0.883961
	.quad	0x3fe6bfe5c91d14e4              # double 0.71092500000000003
	.quad	0x3fd84f00ef1348b2              # double 0.37982199999999999
	.quad	0x3fdde34330d73861              # double 0.46699600000000002
	.quad	0x3fe2c443914f483d              # double 0.58645800000000003
	.quad	0x3fc941d084e831ad              # double 0.197321
	.quad	0x3fc6696a26e54717              # double 0.175092
	.quad	0x3f94751ce28ed5f1              # double 0.019977999999999999
	.quad	0x3fe971b4784230fd              # double 0.79513
	.quad	0x3fdf5b24e9c45458              # double 0.48993799999999998
	.quad	0x3fe27008a697aede              # double 0.57617600000000002
	.quad	0x3fed90c9107faa04              # double 0.92392399999999996
	.quad	0x3fa3d8e0008637bd              # double 0.038764
	.quad	0x3fd06ec9e236c15d              # double 0.25676199999999999
	.quad	0x3fe14d22c881e471              # double 0.54066599999999998
	.quad	0x3fe0b08feac42e99              # double 0.52155300000000004
	.quad	0x3fdb892253111f0c              # double 0.43024499999999999
	.quad	0x3fe0c29e0a41a262              # double 0.52375700000000003
	.quad	0x3fdd72b884406c01              # double 0.46012700000000001
	.quad	0x3fde81a1554fbdad              # double 0.47666199999999997
	.quad	0x3fbc9c5e6ff7dfa0              # double 0.111761
	.quad	0x3fb63b8a19c9d5a2              # double 0.086846000000000006
	.quad	0x3fda2877ee4e26d5              # double 0.40872000000000003
	.quad	0x3fdcacf7446f9b99              # double 0.44805699999999998
	.quad	0x3fee7fa7eb6bf445              # double 0.95308300000000001
	.quad	0x3fe789118c197e56              # double 0.73548199999999997
	.quad	0x3fe2dbff04577d95              # double 0.58935499999999996
	.quad	0x3fcb57cd466f501a              # double 0.213617
	.quad	0x3fdadf5cf2495e18              # double 0.41988300000000001
	.quad	0x3fe2f89c5e6ff7e0              # double 0.59284800000000004
	.quad	0x3fe637d63022dd7b              # double 0.69431600000000004
	.quad	0x3f9d49949e8815e4              # double 0.028601000000000001
	.quad	0x3fb5ab9f559b3d08              # double 0.084650000000000003
	.quad	0x3fec7824d4cb9ecf              # double 0.88966599999999996
	.quad	0x3fe575a964e8b7e5              # double 0.67061300000000001
	.quad	0x3fe4050374ff865d              # double 0.62561199999999995
	.quad	0x3fdc44955b4677b4              # double 0.44168600000000002
	.quad	0x3fdfad256798958e              # double 0.49494300000000002
	.quad	0x3fcd031055b89939              # double 0.226656
	.quad	0x3fec93dfb0d51f82              # double 0.89305100000000004
	.quad	0x3fa380a9de8b3b32              # double 0.038091
	.quad	0x3feefa398201cd60              # double 0.96804500000000004
	.quad	0x3fea5b0142f61ed6              # double 0.82360900000000004
	.quad	0x3fd4b0ee49f51698              # double 0.323299
	.quad	0x3fec04cad57bc7f7              # double 0.87558499999999995
	.quad	0x3fe7d22424a276b8              # double 0.74440200000000001
	.quad	0x3fe3870329802c0a              # double 0.61023099999999997
	.quad	0x3fd1c322291fb3fa              # double 0.27753499999999998
	.quad	0x3fe6fe846a5d6bec              # double 0.71856900000000001
	.quad	0x3fead81cf7878b7a              # double 0.83888099999999999
	.quad	0x3fd9049a9973d9ec              # double 0.39090599999999998
	.quad	0x3fcc832b990afe61              # double 0.22275300000000001
	.quad	0x3fdbc11e42e12620              # double 0.43366199999999999
	.quad	0x3fe492146a1a500d              # double 0.64283199999999996
	.quad	0x3fe2e3f78bbd3804              # double 0.59032799999999996
	.quad	0x3fc1423d9231c64c              # double 0.13483400000000001
	.quad	0x3fefa14488c60cbf              # double 0.98843599999999998
	.quad	0x3fe614db59578a2b              # double 0.69004600000000005
	.quad	0x3fe5f227d028a1e0              # double 0.68581000000000003
	.quad	0x3fcaf345069a4df4              # double 0.21054899999999999
	.quad	0x3fe61a3f4666ec9e              # double 0.69070399999999998
	.quad	0x3fe3dc65c70435f0              # double 0.62065400000000004
	.quad	0x3f817efe0ce0b913              # double 0.0085430000000000002
	.quad	0x3fe57cfc3f811f4f              # double 0.67150699999999997
	.quad	0x3fec254823854046              # double 0.87955099999999997
	.quad	0x3fe076b1a2a4db16              # double 0.51448899999999997
	.quad	0x3fcc606748e47560              # double 0.221692
	.quad	0x3fcb1351159c4977              # double 0.21152699999999999
	.quad	0x3fda90c9107faa04              # double 0.41508699999999998
	.quad	0x3fe95fe32a0663c7              # double 0.79295499999999997
	.quad	0x3fa66cf41f212d77              # double 0.043799999999999999
	.quad	0x3fd7d1e108c3f3e0              # double 0.37218499999999999
	.quad	0x3fe89afe1da7b0b4              # double 0.76892000000000004
	.quad	0x3fe0fa919695d91b              # double 0.53058700000000003
	.quad	0x3fc2f9767903211d              # double 0.14823800000000001
	.quad	0x3fbefaf859429175              # double 0.121017
	.quad	0x3fd3bf2b239a38fc              # double 0.30854300000000001
	.quad	0x3fa99ce075f6fd22              # double 0.050025
	.quad	0x3fe2d73a797891e2              # double 0.58877299999999999
	.quad	0x3fe79656eefa1e3f              # double 0.73710200000000003
	.quad	0x3fd9fb2aae297397              # double 0.40595500000000001
	.quad	0x3fedaba9d1f60179              # double 0.92720499999999995
	.quad	0x3feec9949e8815e4              # double 0.96210700000000004
	.quad	0x3fc3e58e64b23140              # double 0.155443
	.quad	0x3fc4642396073de2              # double 0.159306
	.quad	0x3faf30a4e379b77c              # double 0.060918
	.quad	0x3fe003dbc23315d7              # double 0.500471
	.quad	0x3fe1ce24bba12b5e              # double 0.55641399999999996
	.quad	0x3fe8415b1422ccb4              # double 0.75797800000000004
	.quad	0x3fc650507a6bd6e9              # double 0.17432600000000001
	.quad	0x3fdc368f08461f9f              # double 0.44083
	.quad	0x3fee7b2aae297397              # double 0.95253500000000002
	.quad	0x3feafef5a964e8b8              # double 0.84362300000000001
	.quad	0x3fe0217b0f6ad70e              # double 0.50408699999999995
	.quad	0x3fd9f04ddb5525cc              # double 0.40529199999999999
	.quad	0x3fd4a89fc6da4485              # double 0.32279200000000002
	.quad	0x3fe015e5aff2a173              # double 0.50267300000000004
	.quad	0x3fe24651f3e89a89              # double 0.57108400000000004
	.quad	0x3fc287442c7fbacb              # double 0.14475299999999999
	.quad	0x3fc72d7f950b955f              # double 0.18107599999999999
	.quad	0x3fe711fb3fa6defc              # double 0.72094499999999995
	.quad	0x3feccb6a619da9ca              # double 0.89983100000000005
	.quad	0x3fcacb31c219eb64              # double 0.20932600000000001
	.quad	0x3fe2b49e01de2691              # double 0.58454799999999996
	.quad	0x3fe39bbadc0980b2              # double 0.61275999999999997
	.quad	0x3fcaecaeea63b689              # double 0.21034800000000001
	.quad	0x3fc723f67f4dbdf9              # double 0.180785
	.quad	0x3fe4f5c28f5c28f6              # double 0.65500000000000003
	.quad	0x3f984db9c7368ad7              # double 0.023734000000000002
	.quad	0x3fd67b7414a4d2b3              # double 0.35128500000000001
	.quad	0x3fd0e4b44a1f0803              # double 0.263959
	.quad	0x3fecc5692b3cc4ac              # double 0.89909799999999995
	.quad	0x3fee809b30728e93              # double 0.95319900000000002
	.quad	0x3fedd8adab9f559b              # double 0.93269999999999997
	.quad	0x3fe75a74c09c3ce2              # double 0.729792
	.quad	0x3fe002773e24febd              # double 0.500301
	.quad	0x3fe99b7e0ac7da1f              # double 0.80023100000000003
	.quad	0x3fd1563a9f383f0c              # double 0.27088800000000002
	.quad	0x3fcd7cfe58601366              # double 0.230377
	.quad	0x3fcff9830e3cd9a5              # double 0.249802
	.quad	0x3fe8a3df6db940ff              # double 0.77000400000000002
	.quad	0x3fe8086594af4f0e              # double 0.75102500000000005
	.quad	0x3fe49bb2788db057              # double 0.64400599999999997
	.quad	0x3fc3b2edfe75bc45              # double 0.15389800000000001
	.quad	0x3fee4204f2ae07e6              # double 0.94555900000000004
	.quad	0x3fe06494d50ebaae              # double 0.51227800000000001
	.quad	0x3fd69767903211cb              # double 0.352991
	.quad	0x3fcfb96af038e2a0              # double 0.24784600000000001
	.quad	0x3fbccfaeff5c6c12              # double 0.11254400000000001
	.quad	0x3fe9f71001d5c316              # double 0.81140900000000005
	.quad	0x3feea089e34330d7              # double 0.95709699999999998
	.quad	0x3fba1719f7f8ca82              # double 0.10191500000000001
	.quad	0x3fdb4eb56fb8f57f              # double 0.42667899999999997
	.quad	0x3fe2eab14ec204f3              # double 0.59114900000000004
	.quad	0x3fd0b90214ad362f              # double 0.26129200000000002
	.quad	0x3fe27e175d13d74d              # double 0.57789199999999996
	.quad	0x3fed2189bd8383ae              # double 0.91034400000000004
	.quad	0x3fd9c1f42bb66730              # double 0.40246300000000002
	.quad	0x3fda2ead9274e22a              # double 0.40909899999999999
	.quad	0x3fc191e646f15619              # double 0.137265
	.quad	0x3feb36d86ec17ebb              # double 0.85044500000000001
	.quad	0x3fd663d816aceaaf              # double 0.34984399999999999
	.quad	0x3fe15f3519bd4068              # double 0.54287200000000002
	.quad	0x3f74bcf0b6b6e0d2              # double 0.0050629999999999998
	.quad	0x3fdc4c09c3ce208a              # double 0.44214100000000001
	.quad	0x3fe18642396073de              # double 0.54763899999999999
	.quad	0x3fed9af9ebe9c886              # double 0.92516799999999999
	.quad	0x3fd77cbb3c81908e              # double 0.36698799999999998
	.quad	0x3fec11b1d92b7fe1              # double 0.87716000000000005
	.quad	0x3fe599fa11a975b0              # double 0.67504600000000003
	.quad	0x3fe3d46d3f9e7b81              # double 0.61968100000000004
	.quad	0x3fe78b2c83ec892b              # double 0.73573900000000003
	.quad	0x3fdbe5471715c63b              # double 0.43586900000000001
	.quad	0x3fb2efe4ffc9795b              # double 0.073972999999999997
	.quad	0x3fedda3e39f77293              # double 0.93289100000000003
	.quad	0x3fdf76965f5275ef              # double 0.49161300000000002
	.quad	0x3fe6c1d8e8640208              # double 0.71116299999999999
	.quad	0x3fef2877ee4e26d5              # double 0.97369000000000005
	.quad	0x3fc830db6a1e81cb              # double 0.18899099999999999
	.quad	0x3fe6f0bf1a5ca298              # double 0.71688799999999997
	.quad	0x3fedd9e6256366d8              # double 0.93284900000000004
	.quad	0x3fef83cd141a6938              # double 0.98483900000000001
	.quad	0x3fdf1cb89d6adf72              # double 0.486128
	.quad	0x3fed7e5c91d14e3c              # double 0.92167500000000002
	.quad	0x3fe1b94b7b28954a              # double 0.55386899999999994
	.quad	0x3fb7605ab3aabcd8              # double 0.091314000000000006
	.quad	0x3feb993f6c2699c8              # double 0.86245700000000003
	.quad	0x3fe5d8969a0ad8a1              # double 0.68268899999999999
	.quad	0x3fba9c23b7952d23              # double 0.103945
	.quad	0x3fe18f605ab3aabd              # double 0.54875200000000002
	.quad	0x3fdd080b673c4f3c              # double 0.45361600000000002
	.quad	0x3fe2646ae3a3a8e7              # double 0.57475799999999999
	.quad	0x3fa1e9f2778140dd              # double 0.034987999999999998
	.quad	0x3fd8fc71d6063172              # double 0.39040799999999998
	.quad	0x3fd91f57b41bfbdf              # double 0.392538
	.quad	0x3fcc58d5842b734b              # double 0.22146099999999999
	.quad	0x3fde8522ea0fd3b3              # double 0.47687600000000002
	.quad	0x3fd58201cd5f99c4              # double 0.33606000000000003
	.quad	0x3fe70a86d71f3626              # double 0.72003499999999998
	.quad	0x3fe6009b30728e93              # double 0.68757400000000002
	.quad	0x3fbc5af6c69b5a64              # double 0.110763
	.quad	0x3fdc008a697aeddd              # double 0.43753300000000001
	.quad	0x3fe525e13b18dac2              # double 0.66087399999999996
	.quad	0x3fda02f72b452828              # double 0.40643099999999999
	.quad	0x3fc5b97353b4b2fb              # double 0.16972200000000001
	.quad	0x3fdb7b634dad31fd              # double 0.42940600000000001
	.quad	0x3fe87eb6bf444e0e              # double 0.76546800000000004
	.quad	0x3fe14065b63d3e4f              # double 0.53911100000000001
	.quad	0x3fd1f47b677f6b1a              # double 0.28054699999999999
	.quad	0x3fdbc4b4d056c509              # double 0.43388100000000002
	.quad	0x3f9c87980f55de59              # double 0.027861
	.quad	0x3f7db5525cc42635              # double 0.0072529999999999999
	.quad	0x3febb63f572de43f              # double 0.86599700000000002
	.quad	0x3fabe4cd74927914              # double 0.054480000000000001
	.quad	0x3f7670196d8f4f94              # double 0.0054780000000000002
	.quad	0x3fdb26cc1ca3a4b5              # double 0.42424299999999998
	.quad	0x3fe2aca148ba83f5              # double 0.58357300000000001
	.quad	0x3fd537b8d3f1843c              # double 0.33152599999999999
	.quad	0x3fd46e2a80064a9d              # double 0.31922400000000001
	.quad	0x3fc2fb3311a543f2              # double 0.14829100000000001
	.quad	0x3fe7460cbf2b239a              # double 0.72730099999999998
	.quad	0x3fd069db65ecc3e3              # double 0.25646099999999999
	.quad	0x3fd429f59ccfaeff              # double 0.31506099999999998
	.quad	0x3fe592ab68cef673              # double 0.67415400000000003
	.quad	0x3fe62393ee5eedcc              # double 0.69184299999999999
	.quad	0x3fd24ff865d7cb2e              # double 0.28613100000000002
	.quad	0x3fd7ae642bf9830e              # double 0.37001899999999999
	.quad	0x3fc5c27631b584b2              # double 0.16999700000000001
	.quad	0x3fea2e05ccc89b0f              # double 0.81811800000000001
	.quad	0x3fd0044284dfce31              # double 0.25025999999999998
	.quad	0x3fb0e9f6a93f290b              # double 0.066070000000000004
	.quad	0x3fd2e410b630a915              # double 0.29516999999999999
	.quad	0x3feae26b2f23033a              # double 0.84013899999999997
	.quad	0x3fed5bccaf709b74              # double 0.91745600000000004
	.quad	0x3fdc655193708aad              # double 0.44368400000000002
	.quad	0x3fca1858bc59b802              # double 0.20386799999999999
	.quad	0x3fec070110a137f4              # double 0.87585500000000005
	.quad	0x3fd832830a0b1bbd              # double 0.378083
	.quad	0x3fd97457c0b13598              # double 0.39772600000000002
	.quad	0x3fd1c82e019b0ab3              # double 0.27784300000000001
	.quad	0x3fe7e62131a8ef78              # double 0.74684200000000001
	.quad	0x3fc57ae5796bfca8              # double 0.16781299999999999
	.quad	0x3fc2c08b75ea67e8              # double 0.14650099999999999
	.quad	0x3fc07baa9b499d02              # double 0.128774
	.quad	0x3fe8a7bf61aa3f03              # double 0.77047699999999997
	.quad	0x3fc429f16b11c6d2              # double 0.15753
	.quad	0x3fe907789a459104              # double 0.78216200000000002
	.quad	0x3fe592556d19dece              # double 0.67411299999999996
	.quad	0x3fe3e9014b599aa6              # double 0.622193
	.quad	0x3fc8d66f0cfe1544              # double 0.19404399999999999
	.quad	0x3fcdbac2df0d4131              # double 0.232262
	.quad	0x3fefbd8383ad9f0a              # double 0.99188399999999999
	.quad	0x3fcfd5ed06fef7c2              # double 0.24871599999999999
	.quad	0x3fe5720c8cd63cb8              # double 0.67017199999999999
	.quad	0x3fd1752da98676a7              # double 0.27277699999999999
	.quad	0x3fe66f262888b546              # double 0.70106800000000002
	.quad	0x3fdcc6583e8576cd              # double 0.44960600000000001
	.quad	0x3fddbcec84f8f8a5              # double 0.46465600000000001
	.quad	0x3fc3ac57e23f24d9              # double 0.153697
	.quad	0x3fecc4dca8e2e2b9              # double 0.89903100000000002
	.quad	0x3fe3f60e0eb67c28              # double 0.62378599999999995
	.quad	0x3fe544ef88b97785              # double 0.66466499999999995
	.quad	0x3fee1b003686a4ca              # double 0.94079599999999997
	.quad	0x3fea709741d084e8              # double 0.82624399999999998
	.quad	0x3fe689203a322af5              # double 0.70423899999999995
	.quad	0x3fdb6d00b45ae600              # double 0.42852800000000002
	.quad	0x3fba0a41a261bf38              # double 0.101719
	.quad	0x3fdef483cafb3b75              # double 0.48367399999999999
	.quad	0x3feaaa92e62131a9              # double 0.83332200000000001
	.quad	0x3fe229de8b3b3205              # double 0.56761099999999998
	.quad	0x3fd9fd08d4bad7d8              # double 0.40606900000000001
	.quad	0x3fbfd8383ad9f0a2              # double 0.124393
	.quad	0x3fa6cd4aa10e0221              # double 0.044534999999999998
	.quad	0x3fe9c054ef459d99              # double 0.804728
	.quad	0x3fde0639d5e4a383              # double 0.46912999999999999
	.quad	0x3fdab912dba4d6e4              # double 0.41754599999999997
	.quad	0x3fe3a0f9096bb98c              # double 0.61339999999999995
	.quad	0x3fe15714b9cb6849              # double 0.54188000000000003
	.quad	0x3fdc31f8a0902de0              # double 0.44055
	.quad	0x3fe899695d91ab8f              # double 0.76872700000000005
	.quad	0x3fdb3d790752da98              # double 0.42562699999999998
	.quad	0x3fe4bd07c84b5dcc              # double 0.64807499999999996
	.quad	0x3fd1a8f7db6e5040              # double 0.27593800000000002
	.quad	0x3fdb745bf26f1dc5              # double 0.428977
	.quad	0x3fed24a48f96e158              # double 0.91072299999999995
	.quad	0x3fcd9a7c17a89332              # double 0.23127700000000001
	.quad	0x3fd679bfdf7e8039              # double 0.35118100000000002
	.quad	0x3fd6385c67dfe32a              # double 0.34719
	.quad	0x3fe6f30a4e379b78              # double 0.71716800000000003
	.quad	0x3fd2c7c0f4517614              # double 0.29344199999999998
	.quad	0x3fd482fd75e2046c              # double 0.32049499999999997
	.quad	0x3fe423ee1bd1ed9e              # double 0.629386
	.quad	0x3fb7c85c24c404a7              # double 0.092900999999999997
	.quad	0x3fd4f0739b024f66              # double 0.32717600000000002
	.quad	0x3fe6052934acaff7              # double 0.68813000000000002
	.quad	0x3fb29c0229a5ebb7              # double 0.072692999999999994
	.quad	0x3fcf57f737da61e1              # double 0.24487200000000001
	.quad	0x3fc60ec743201041              # double 0.17232600000000001
	.quad	0x3fde5cb790fb6567              # double 0.47440900000000003
	.quad	0x3febb4fc610f0e91              # double 0.86584300000000003
	.quad	0x3fc6ababead4f590              # double 0.17711399999999999
	.quad	0x3fce280ae1049236              # double 0.235597
	.quad	0x3fe9f807789a4591              # double 0.811527
	.quad	0x3fd18f4f93bc0a07              # double 0.274372
	.quad	0x3fe43e0370cdc875              # double 0.63256999999999997
	.quad	0x3fe71869835158b8              # double 0.72172999999999998
	.quad	0x3fed796e158750c2              # double 0.92107300000000003
	.quad	0x3fe77a2f05a708ee              # double 0.73366500000000001
	.quad	0x3fd55000c9539b89              # double 0.33300800000000003
	.quad	0x3fed03cf2cf95d4f              # double 0.90671500000000005
	.quad	0x3f5e3eaf6837f7be              # double 0.001846
	.quad	0x3fe84d466f5019f4              # double 0.75943300000000002
	.quad	0x3fbba6defc7a3982              # double 0.108015
	.quad	0x3fe8321a2e7f6f4c              # double 0.75611600000000001
	.quad	0x3fe9c2dadb8348f5              # double 0.80503599999999997
	.quad	0x3f892d98bf7f0670              # double 0.012293999999999999
	.quad	0x3fd0102363b25700              # double 0.25098500000000001
	.quad	0x3fd65daad601ffb5              # double 0.34946700000000003
	.quad	0x3fdd704ff43419e3              # double 0.45998
	.quad	0x3f9da33bd9cae211              # double 0.028943
	.quad	0x3fefab3cc4ac6cdb              # double 0.989653
	.quad	0x3fe14883fd502257              # double 0.54010199999999997
	.quad	0x3fe1c842fa509396              # double 0.55569599999999997
	.quad	0x3fecd5a3a08398a6              # double 0.90107899999999996
	.quad	0x3fee8398a65492ff              # double 0.95356399999999997
	.quad	0x3fd880fdc1615ec0              # double 0.38287300000000002
	.quad	0x3fc56787ce95faa9              # double 0.16722200000000001
	.quad	0x3fd4b0292817763e              # double 0.32325199999999998
	.quad	0x3fe70c9320d9945b              # double 0.72028499999999995
	.quad	0x3fe98cb6c7a7c9de              # double 0.798427
	.quad	0x3fd4705857afea3e              # double 0.319357
	.quad	0x3fd5e6256366d7a5              # double 0.34217199999999998
	.quad	0x3fedb2e3821af7d3              # double 0.928087
	.quad	0x3fd85d28d002e233              # double 0.38068600000000002
	.quad	0x3fde21426fe718a8              # double 0.47077999999999998
	.quad	0x3f83f748a159817c              # double 0.0097490000000000007
	.quad	0x3fe5c3760bf5d788              # double 0.68010999999999999
	.quad	0x3fdcca0c282c6ef4              # double 0.44983200000000001
	.quad	0x3fdffc3b4f616723              # double 0.49976999999999999
	.quad	0x3fc34373f316e371              # double 0.15049599999999999
	.quad	0x3fd4c985f06f6944              # double 0.32479999999999998
	.quad	0x3fd0600f345069a5              # double 0.25586300000000001
	.quad	0x3fee57d5a9eb2075              # double 0.94822200000000001
	.quad	0x3fed055757d5a9eb              # double 0.90690199999999999
	.quad	0x3fe08a8f3a9b0681              # double 0.51691399999999998
	.quad	0x3fe1a400fba8826b              # double 0.55127000000000004
	.quad	0x3fdabfca85caafbc              # double 0.41795599999999999
	.quad	0x3fefefd438d1d8a5              # double 0.99802599999999996
	.quad	0x3fed30468448cf7d              # double 0.91214300000000004
	.quad	0x3fd956eac8605682              # double 0.39593
	.quad	0x3fda40357a355044              # double 0.41016900000000001
	.quad	0x3f82e8c0485a0be5              # double 0.0092329999999999998
	.quad	0x3fe61b25f633ce64              # double 0.69081400000000004
	.quad	0x3fdb67caea747d80              # double 0.42820999999999998
	.quad	0x3fd144e93e1c9b41              # double 0.26983099999999999
	.quad	0x3fea71001d5c3159              # double 0.82629399999999997
	.quad	0x3f943675ddd2ae8e              # double 0.019739
	.quad	0x3fdd34ca0c282c6f              # double 0.456347
	.quad	0x3feac27a63736cdf              # double 0.83623999999999998
	.quad	0x3fef314ec204f2ae              # double 0.974769
	.quad	0x3fe70f8e7ddca4b1              # double 0.72064899999999998
	.quad	0x3fec5a2d72ffd1dd              # double 0.88600800000000002
	.quad	0x3fe535b4edb2f662              # double 0.66280600000000001
	.quad	0x3fdc36a832b990b0              # double 0.44083600000000001
	.quad	0x3f9a4e379b77c02b              # double 0.025689
	.quad	0x3fdf11ada76d97b3              # double 0.485454
	.quad	0x3fd4d2391d57ff9b              # double 0.32533099999999998
	.quad	0x3fd5fb82c2bd7f52              # double 0.343476
	.quad	0x3fe14a31e7d9988d              # double 0.54030699999999998
	.quad	0x3fbed655e28aa433              # double 0.120458
	.quad	0x3fb213f4a98aa865              # double 0.070616999999999999
	.quad	0x3fb29a8049667b5f              # double 0.072669999999999998
	.quad	0x3fd0e6644d877250              # double 0.26406200000000002
	.quad	0x3fba052502eec7c9              # double 0.101641
	.quad	0x3fd76ef3d3a1d324              # double 0.366147
	.quad	0x3fe4b74ddf86e3b4              # double 0.64737599999999995
	.quad	0x3fc63c31df761cbd              # double 0.17371200000000001
	.quad	0x3fde868fd199bb28              # double 0.47696300000000003
	.quad	0x3fea0064a9cdc444              # double 0.81254800000000004
	.quad	0x3fe98de2ac322292              # double 0.79857
	.quad	0x3fd1232096787ce9              # double 0.26776899999999998
	.quad	0x3f9d234eb9a176de              # double 0.028455000000000001
	.quad	0x3fe6a1c8a7a41e58              # double 0.70724900000000002
	.quad	0x3fd41294573a7979              # double 0.31363400000000002
	.quad	0x3fe377ec3547e069              # double 0.60838899999999996
	.quad	0x3fe0858793dd97f6              # double 0.51629999999999998
	.quad	0x3fefb09635610add              # double 0.99030600000000001
	.quad	0x3fe71e3eaf6837f8              # double 0.72244200000000003
	.quad	0x3fee1552e2fbe33b              # double 0.94010300000000002
	.quad	0x3fb60d9945b6c376              # double 0.086144999999999999
	.quad	0x3fc05f17bd8be729              # double 0.12790199999999999
	.quad	0x3fdf9c5e6ff7dfa0              # double 0.493919
	.quad	0x3fe0797cc39ffd61              # double 0.51483000000000001
	.quad	0x3fe21bbadc0980b2              # double 0.56588499999999997
	.quad	0x3fee33a2595bbbe8              # double 0.94380299999999994
	.quad	0x3fea64e48626f60e              # double 0.82481599999999999
	.quad	0x3fd1fe0ce0b912dc              # double 0.28113100000000002
	.quad	0x3fd5b9b23dd54da5              # double 0.33945900000000001
	.quad	0x3fecc95e17e34b94              # double 0.89958099999999996
	.quad	0x3fe8890b417ca212              # double 0.76672899999999999
	.quad	0x3fe81ab8e8ea39c5              # double 0.75326199999999999
	.quad	0x3fef33eff1950332              # double 0.97509000000000001
	.quad	0x3fd2f7d73c925786              # double 0.296377
	.quad	0x3fd6fe08aefb2aae              # double 0.35925499999999999
	.quad	0x3feab7457c0b1359              # double 0.83487199999999995
	.quad	0x3fc4c4827b6fe2e7              # double 0.162247
	.quad	0x3fe083ea704bc276              # double 0.51610299999999998
	.quad	0x3fe376ea4228997c              # double 0.60826599999999997
	.quad	0x3fee3641700cd856              # double 0.94412300000000005
	.quad	0x3fd783dbc23315d7              # double 0.367423
	.quad	0x3fe068ff327aa68f              # double 0.51281699999999997
	.quad	0x3fb2b723ee1bd1ee              # double 0.073107000000000005
	.quad	0x3fe9e1d2178f68be              # double 0.80881599999999998
	.quad	0x3fc4df3f961804da              # double 0.16306300000000001
	.quad	0x3fdc3f705857afea              # double 0.44137199999999999
	.quad	0x3fee6c1a048e043a              # double 0.95069599999999999
	.quad	0x3fe43ac710cb295f              # double 0.63217500000000004
	.quad	0x3fc58023a6ce3583              # double 0.16797300000000001
	.quad	0x3fa990d173fb7a5f              # double 0.049932999999999998
	.quad	0x3fde8c26138fffbd              # double 0.47730400000000001
	.quad	0x3f991bc558644524              # double 0.02452
	.quad	0x3fee5e1e2de87097              # double 0.94898899999999997
	.quad	0x3fed6358298cc144              # double 0.91837699999999999
	.quad	0x3fe2f2fba01eeed9              # double 0.59216100000000005
	.quad	0x3fecc3ac929aa1d7              # double 0.89888599999999996
	.quad	0x3fd6e73e681a9b8d              # double 0.35786400000000002
	.quad	0x3fe0813879c4113c              # double 0.51577399999999995
	.quad	0x3fe0387160956c0d              # double 0.50688999999999995
	.quad	0x3fef1522a6f3f530              # double 0.97133000000000003
	.quad	0x3fd595ee136e71ce              # double 0.33727600000000002
	.quad	0x3fece15ebfa8f7db              # double 0.90251099999999995
	.quad	0x3fcddc054ef459da              # double 0.23327700000000001
	.quad	0x3fbe440f23897204              # double 0.118226
	.quad	0x3fcbc87db2b34613              # double 0.217056
	.quad	0x3f90b30b5aa71583              # double 0.016308
	.quad	0x3feacb70ac3a860e              # double 0.83733400000000002
	.quad	0x3fb7bb517a46173c              # double 0.092702000000000007
	.quad	0x3f93dd54da4ce810              # double 0.019399
	.quad	0x3fe5bffef39085f5              # double 0.67968700000000004
	.quad	0x3fac8d1958969a0b              # double 0.055764000000000001
	.quad	0x3fc060b2c83ec893              # double 0.12795100000000001
	.quad	0x3fe26364bec679cc              # double 0.57463299999999995
	.quad	0x3fe5fbd48cb4aec9              # double 0.68699100000000002
	.quad	0x3faa3f8982cb20fb              # double 0.051265999999999999
	.quad	0x3fe7948fd9fd36f8              # double 0.73688500000000001
	.quad	0x3feafcb4f1e4b44a              # double 0.84334799999999999
	.quad	0x3fd4c60cbf2b239a              # double 0.32458799999999999
	.quad	0x3f9dfb0d51f81a58              # double 0.029277999999999998
	.quad	0x3fa32ebe596c82e0              # double 0.037465999999999999
	.quad	0x3fc2a4d2b2bfdb4d              # double 0.14565500000000001
	.quad	0x3fa4bc27631b584b              # double 0.040497999999999999
	.quad	0x3fd53c4f3ba775fb              # double 0.33180599999999999
	.quad	0x3fd885d31337eb29              # double 0.38316800000000001
	.quad	0x3fea92dfd694ccab              # double 0.83042899999999997
	.quad	0x3fecd371971c10d8              # double 0.90081100000000003
	.quad	0x3fc5f46ed245b292              # double 0.17152200000000001
	.quad	0x3fea8b47c73eee52              # double 0.82950199999999996
	.quad	0x3fd12702a3486f05              # double 0.26800600000000002
	.quad	0x3fe8e6a550870111              # double 0.77815500000000004
	.quad	0x3feb8e8a71de69ad              # double 0.86114999999999997
	.quad	0x3fe4494f69ca9ef5              # double 0.63394899999999998
	.quad	0x3fc91715c63ae254              # double 0.196017
	.quad	0x3fcb6cce5f7403de              # double 0.214258
	.quad	0x3fe7ebe7afa72218              # double 0.74754699999999996
	.quad	0x3fc76ece13f4a98b              # double 0.18306900000000001
	.quad	0x3fe867f6f4be835e              # double 0.76269100000000001
	.quad	0x3fd11eff9f87f024              # double 0.267517
	.quad	0x3fe938759253543b              # double 0.78814200000000001
	.quad	0x3fbc24a276b7ed42              # double 0.109934
	.quad	0x3fe1a6bd6e8af816              # double 0.55160399999999998
	.quad	0x3fe7454152b0a6fc              # double 0.72720399999999996
	.quad	0x3fe88909289dadfb              # double 0.76672799999999997
	.quad	0x3feccf6598e10cf6              # double 0.90031700000000003
	.quad	0x3fee6fcdee34fc61              # double 0.95114799999999999
	.quad	0x3fc4263d816aceab              # double 0.157417
	.quad	0x3fd9001d5c31593e              # double 0.39063199999999998
	.quad	0x3fd881669ced0b31              # double 0.38289800000000002
	.quad	0x3fd522f6a50d6b23              # double 0.33025900000000002
	.quad	0x3fe2081a1554fbdb              # double 0.56348900000000002
	.quad	0x3fb67631b584b1ab              # double 0.087741
	.quad	0x3fc382fd75e2046c              # double 0.15243499999999999
	.quad	0x3fe7eba27ae9ab2a              # double 0.74751400000000001
	.quad	0x3fea3dccea28fe26              # double 0.820044
	.quad	0x3fb9668c26139000              # double 0.099221000000000004
	.quad	0x3fe2ec2acb85a4f0              # double 0.59132899999999999
	.quad	0x3fe87000431bde83              # double 0.76367200000000002
	.quad	0x3fcebf01322f2735              # double 0.240204
	.quad	0x3fc31c5c5718eb89              # double 0.14930299999999999
	.quad	0x3fcef4be835dedf2              # double 0.241844
	.quad	0x3fdc8123810e8859              # double 0.445382
	.quad	0x3fde65c70435efa6              # double 0.474962
	.quad	0x3fecd92b7fe08af0              # double 0.90151000000000003
	.quad	0x3fe66785b5b70692              # double 0.70013700000000001
	.quad	0x3fee9c12f09d8c6d              # double 0.95655199999999996
	.quad	0x3fd9d63022dd7a9a              # double 0.403698
	.quad	0x3fd1bc27631b584b              # double 0.27710899999999999
	.quad	0x3fdeb927d45a5fc8              # double 0.48005100000000001
	.quad	0x3fc1cdcca70d1fa3              # double 0.13909299999999999
	.quad	0x3fba5a250f840182              # double 0.102938
	.quad	0x3fe6d204af922963              # double 0.71313700000000002
	.quad	0x3fe4198d045fe111              # double 0.62811899999999998
	.quad	0x3fe6241a261bf37c              # double 0.69190700000000005
	.quad	0x3fe48370cdc8754f              # double 0.64104499999999998
	.quad	0x3fe8c7d3d4280ae1              # double 0.774393
	.quad	0x3f81960fa15db339              # double 0.0085869999999999991
	.quad	0x3fde79fec99f1ae3              # double 0.47619600000000001
	.quad	0x3fe0710a99b6f5cb              # double 0.51379900000000001
	.quad	0x3fc98b0d0edc3bd6              # double 0.19955600000000001
	.quad	0x3fe66c4827b6fe2e              # double 0.70071799999999995
	.quad	0x3fefec6bce8533b1              # double 0.99760999999999999
	.quad	0x3fe1645e4e69f05f              # double 0.54350200000000004
	.quad	0x3fa851c9f72f76e6              # double 0.047499
	.quad	0x3fca710cb295e9e2              # double 0.20657500000000001
	.quad	0x3f95475a31a4bdba              # double 0.02078
	.quad	0x3fed373d188f42ff              # double 0.91299300000000005
	.quad	0x3fe5051c9f72f76e              # double 0.65687399999999996
	.quad	0x3fb4996b76709fa5              # double 0.080465999999999996
	.quad	0x3fddf9767903211d              # double 0.46835100000000002
	.quad	0x3fb5d041cc532a49              # double 0.085208999999999993
	.quad	0x3fb62b6ae7d566cf              # double 0.086599999999999996
	.quad	0x3fe7dd616f86a099              # double 0.74577400000000005
	.quad	0x3fc08672756861e9              # double 0.129103
	.quad	0x3fc0228134480629              # double 0.126053
	.quad	0x3fed6da4484944ed              # double 0.91963399999999995
	.quad	0x3fe4685985ad538b              # double 0.63773800000000003
	.quad	0x3fdadd8b60f1b25f              # double 0.41977199999999998
	.quad	0x3fccb50b0f27bb30              # double 0.224275
	.quad	0x3fe42e07e5a78f26              # double 0.63061900000000004
	.quad	0x3fddd6ba8c586877              # double 0.46623100000000001
	.quad	0x3fcc8f10a99b6f5d              # double 0.22311600000000001
	.quad	0x3fe3e7f2c3009b30              # double 0.62206399999999995
	.quad	0x3fecc925785f8d2e              # double 0.89955399999999996
	.quad	0x3fe99b6b2af14552              # double 0.80022199999999999
	.quad	0x3fbeb28d8665e02f              # double 0.119912
	.quad	0x3fd800218def416c              # double 0.37500800000000001
	.quad	0x3fca577d955714ba              # double 0.20579500000000001
	.quad	0x3fd8df1172ef0ae5              # double 0.38861499999999999
	.quad	0x3fde9f9ce8d972cd              # double 0.47849199999999997
	.quad	0x3fe56d02cd39da16              # double 0.66955699999999996
	.quad	0x3fb116ebd4cfd08d              # double 0.066755999999999996
	.quad	0x3fefbf705857afea              # double 0.99211899999999997
	.quad	0x3fda9ccfaeff5c6c              # double 0.415821
	.quad	0x3feb15a4acf312b2              # double 0.84639200000000003
	.quad	0x3fe45e481f53825e              # double 0.63650899999999999
	.quad	0x3fe0e01bc98a222d              # double 0.52735699999999996
	.quad	0x3fc34024b33daf8e              # double 0.150395
	.quad	0x3fe594b7b28954a8              # double 0.674404
	.quad	0x3fd3d99029ae4f33              # double 0.31015399999999999
	.quad	0x3fe6e3a9f383f0bb              # double 0.71529100000000001
	.quad	0x3fe95944aa53fc01              # double 0.79214700000000005
	.quad	0x3fd5730c67168f8e              # double 0.33514699999999997
	.quad	0x3fe5800eae18ac9f              # double 0.67188199999999998
	.quad	0x3fd998f605ab3aac              # double 0.39996100000000001
	.quad	0x3fef7449129888f8              # double 0.98294499999999995
	.quad	0x3f4c8a7a41e57d9e              # double 8.7100000000000003E-4
	.quad	0x3fe76c0724b76f6d              # double 0.73193699999999995
	.quad	0x3fd4333333333333              # double 0.31562499999999999
	.quad	0x3febcd8127b2cc71              # double 0.86883600000000005
	.quad	0x3fe0e978d4fdf3b6              # double 0.52849999999999997
	.quad	0x3fe98b86b15f88fd              # double 0.79828200000000005
	.quad	0x3fe0ae9899bf5947              # double 0.52131300000000003
	.quad	0x3fdb887229e90796              # double 0.430203
	.quad	0x3fedc2cc2d6a9c56              # double 0.93002899999999999
	.quad	0x3fda160956c0d6f5              # double 0.40759499999999999
	.quad	0x3fefa8d21bc126a6              # double 0.98935799999999996
	.quad	0x3feb23443d46b26c              # double 0.848055
	.quad	0x3fe8ad6451b93038              # double 0.77116600000000002
	.quad	0x3fcbe0d66f0cfe15              # double 0.21779899999999999
	.quad	0x3fe5a61bf37b8d3f              # double 0.67652699999999999
	.quad	0x3fcf34d6a161e4f7              # double 0.24379999999999999
	.quad	0x3fe4da89b951c5c5              # double 0.65167699999999995
	.quad	0x3fd8ef1bac2df0d4              # double 0.389594
	.quad	0x3fe26b0fadf2ecf2              # double 0.575569
	.quad	0x3fc0b7fe08aefb2b              # double 0.13061500000000001
	.quad	0x3fc80e736049ecb3              # double 0.187941
	.quad	0x3fd43a53b8e4b87c              # double 0.31606000000000001
	.quad	0x3fe3cfede97d06bc              # double 0.61913200000000002
	.quad	0x3fd4f7446f9b994e              # double 0.32759199999999999
	.quad	0x3fb076188b11409a              # double 0.064301999999999998
	.quad	0x3fd4d50a88effe2a              # double 0.32550299999999999
	.quad	0x3fd5a76965f5275f              # double 0.338343
	.quad	0x3fe8940dd3fe1976              # double 0.76807300000000001
	.quad	0x3fbb28b6d86ec17f              # double 0.10609
	.quad	0x3fdb39eadd590c0b              # double 0.42541000000000001
	.quad	0x3fee936c58eeae9f              # double 0.95549600000000001
	.quad	0x3fe8525247cb70ac              # double 0.76004899999999997
	.quad	0x3fed2d7518b0d0ee              # double 0.91179900000000003
	.quad	0x3fe1200e27e0ef9a              # double 0.53516300000000006
	.quad	0x3fed97e56473471f              # double 0.92479199999999995
	.quad	0x3fea8a8f3a9b0681              # double 0.82941399999999998
	.quad	0x3fea086162f166e0              # double 0.81352299999999999
	.quad	0x3fee86db50f40e5a              # double 0.95396199999999998
	.quad	0x3fe7f5d13d74d595              # double 0.74875700000000001
	.quad	0x3fde9bae46cfc82a              # double 0.47825200000000001
	.quad	0x3fc906bbdbe3c105              # double 0.195518
	.quad	0x3fcbbd1676640a6c              # double 0.21670800000000001
	.quad	0x3fcf6d97b30f8c65              # double 0.245532
	.quad	0x3fd24345cfede97d              # double 0.285356
	.quad	0x3fe066a76965f527              # double 0.51253099999999996
	.quad	0x3fd25dedf1e0828c              # double 0.28698299999999999
	.quad	0x3fd391819d2391d5              # double 0.30575599999999997
	.quad	0x3fc3fc2224edf612              # double 0.15613199999999999
	.quad	0x3fc62d27807789a4              # double 0.17325299999999999
	.quad	0x3fd97add15f02c4d              # double 0.39812399999999998
	.quad	0x3fb4de5d18090b41              # double 0.081517999999999993
	.quad	0x3fd2093532e7b3d9              # double 0.28181200000000001
	.quad	0x3fb308cc575c0768              # double 0.074353000000000002
	.quad	0x3fd3615a8deb0fae              # double 0.302817
	.quad	0x3fbf7f8ca8198f1d              # double 0.12304
	.quad	0x3fed8b220791c4b9              # double 0.923234
	.quad	0x3fe994940bbb1f25              # double 0.79938699999999996
	.quad	0x3f8f359ff4fd6d7f              # double 0.015239000000000001
	.quad	0x3feef8b9baa1511e              # double 0.967862
	.quad	0x3fcbe364bec679cc              # double 0.21787699999999999
	.quad	0x3fd72834d26fa3fd              # double 0.36182900000000001
	.quad	0x3fea4163779e9d0f              # double 0.82048200000000004
	.quad	0x3fed509bf9c62a1b              # double 0.91608999999999996
	.quad	0x3fd24a3c64345cff              # double 0.28578100000000001
	.quad	0x3fe38d9f90539fba              # double 0.61103799999999997
	.quad	0x3feb1d9f4d37c137              # double 0.84736599999999995
	.quad	0x3fdba7b0b3919264              # double 0.43210999999999999
	.quad	0x3fc48b4395810625              # double 0.1605
	.quad	0x3fec655c0fcb4f1e              # double 0.88737299999999997
	.quad	0x3fb05a5fc7e6b3ff              # double 0.063879000000000005
	.quad	0x3fbb68ad68837718              # double 0.10706599999999999
	.quad	0x3fc2d30f062d40ab              # double 0.147066
	.quad	0x3fec2ea52ef911cf              # double 0.88069399999999998
	.quad	0x3fef73b645a1cac1              # double 0.98287500000000005
	.quad	0x3febb0142f61ed5b              # double 0.86524400000000001
	.quad	0x3fda6e9bbf0dc769              # double 0.41300100000000001
	.quad	0x3fa827fa1a0cf180              # double 0.04718
	.quad	0x3fab8b26394face6              # double 0.053795999999999997
	.quad	0x3fe235fa22706d50              # double 0.56908899999999996
	.quad	0x3fefae642bf9830e              # double 0.99003799999999997
	.quad	0x3fe0db8dc55000c9              # double 0.52680099999999996
	.quad	0x3fd41d9b1b79d90a              # double 0.314307
	.quad	0x3fe4866e43aa79bc              # double 0.64141000000000004
	.quad	0x3feb25657fb69985              # double 0.84831500000000004
	.quad	0x3fba99d883ba3444              # double 0.10391
	.quad	0x3fe9f1a5ca29845e              # double 0.81074800000000002
	.quad	0x3fe67e047d3d4281              # double 0.70288300000000004
	.quad	0x3fe88f4517614595              # double 0.76748899999999998
	.quad	0x3fd15e785b5b7069              # double 0.27139099999999999
	.quad	0x3fe5aa64c2f837b5              # double 0.67705000000000004
	.quad	0x3fd0fba450acc0be              # double 0.26535900000000001
	.quad	0x3fd3946801711948              # double 0.30593300000000001
	.quad	0x3fe26fb4c3c18b50              # double 0.57613599999999998
	.quad	0x3f72deca25529fe0              # double 0.004607
	.quad	0x3fbf30728e92d55a              # double 0.121833
	.quad	0x3f92784a9478c869              # double 0.018037000000000001
	.quad	0x3fda5b6c3760bf5d              # double 0.41182999999999997
	.quad	0x3fc4054ef459d990              # double 0.156412
	.quad	0x3fd9dfd694ccab3f              # double 0.40428700000000001
	.quad	0x3fd09b9d7fd82774              # double 0.25949800000000001
	.quad	0x3fcc12cf0f9d2bf5              # double 0.21932399999999999
	.quad	0x3fbb6933a0407cc8              # double 0.107074
	.quad	0x3fe995faa8a82a56              # double 0.79955799999999999
	.quad	0x3fc0308787485e3e              # double 0.12648100000000001
	.quad	0x3fe63c558644523f              # double 0.69486499999999995
	.quad	0x3fe8e0e94ee392e2              # double 0.77745500000000001
	.quad	0x3fd3fbb0e5e67946              # double 0.31223699999999999
	.quad	0x3fbe47778dd616f8              # double 0.11827799999999999
	.quad	0x3feea4b9884c6a3c              # double 0.95760800000000001
	.quad	0x3fe9dd18090b417d              # double 0.80823900000000004
	.quad	0x3fc2dea033e78e19              # double 0.14741899999999999
	.quad	0x3fb6396073de1e2e              # double 0.086813000000000001
	.quad	0x3feb9e12a51e321a              # double 0.86304599999999998
	.quad	0x3fe47ab10ba62670              # double 0.63997700000000002
	.quad	0x3fe97e69270b06c4              # double 0.79668099999999997
	.quad	0x3fa0f32378ab0c89              # double 0.033105000000000002
	.quad	0x3fcc43e5321e603d              # double 0.22082199999999999
	.quad	0x3fe860d23d4f15e8              # double 0.76181900000000002
	.quad	0x3feb07c200c0f020              # double 0.84469700000000003
	.quad	0x3fe36e568a50507a              # double 0.60721899999999995
	.quad	0x3fdcbdb5d894812c              # double 0.44907900000000001
	.quad	0x3fda0eb24a6a875d              # double 0.40714699999999998
	.quad	0x3fda40f238972043              # double 0.41021400000000002
	.quad	0x3feb74ddf86e3b47              # double 0.858016
	.quad	0x3fe72ee2003ab863              # double 0.72447300000000003
	.quad	0x3fe6f164c729f59d              # double 0.71696700000000002
	.quad	0x3fe0d1a437824d4d              # double 0.52559100000000003
	.quad	0x3fead0a88effe2a4              # double 0.83797100000000002
	.quad	0x3fe4cc6822ff0889              # double 0.64995199999999997
	.quad	0x3fe027589efd86a9              # double 0.504803
	.quad	0x3fcd6bb1290257c9              # double 0.229849
	.quad	0x3fd0d4d4024b33db              # double 0.26299
	.quad	0x3fecaca57a786c22              # double 0.89607499999999995
	.quad	0x3fe86fcdee34fc61              # double 0.76364799999999999
	.quad	0x3fde811f4f50a02c              # double 0.47663100000000003
	.quad	0x3fc5960fa15db339              # double 0.16864199999999999
	.quad	0x3fcc6f049a9973da              # double 0.222138
	.quad	0x3fcdd606317268d3              # double 0.233094
	.quad	0x3fc7b7952d234eba              # double 0.18529000000000001
	.quad	0x3fc0007dd4413554              # double 0.12501499999999999
	.quad	0x3fbed549731098d4              # double 0.12044199999999999
	.quad	0x3fd02b3892ee84ad              # double 0.25263799999999997
	.quad	0x3fde73abc947064f              # double 0.47581000000000001
	.quad	0x3f936d22424a276b              # double 0.018970999999999998
	.quad	0x3fc5530ced4e4c94              # double 0.166597
	.quad	0x3fd6b70691ea78af              # double 0.35492099999999999
	.quad	0x3fcaf177a7008a69              # double 0.21049399999999999
	.quad	0x3fe64d423d9231c6              # double 0.69693099999999997
	.quad	0x3fd6d9a0f0a5efe9              # double 0.35703299999999999
	.quad	0x3fe559fd36f7e3d2              # double 0.66723500000000002
	.quad	0x3fd4031055b89939              # double 0.31268699999999999
	.quad	0x3fe255347a5b0ff1              # double 0.57290099999999999
	.quad	0x3fea551b4fe79ee0              # double 0.82288899999999998
	.quad	0x3facd76ab5807fed              # double 0.056330999999999999
	.quad	0x3fed3edd8b60f1b2              # double 0.91392399999999996
	.quad	0x3fd7ba98eda22f6a              # double 0.37076399999999998
	.quad	0x3fdb34eb9a176ddb              # double 0.42510500000000001
	.quad	0x3f83e5753a3ec02f              # double 0.0097149999999999996
	.quad	0x3fef04fd2a62aa19              # double 0.96935899999999997
	.quad	0x3fc88101f31f46ed              # double 0.191437
	.quad	0x3fd6d34df04ddb55              # double 0.35664699999999999
	.quad	0x3fd1efd86a8fc0d3              # double 0.28026400000000001
	.quad	0x3fdc42e126202539              # double 0.44158199999999997
	.quad	0x3fbd0331e3a7daa5              # double 0.11333
	.quad	0x3fe922af5771001d              # double 0.78548399999999996
	.quad	0x3fc92e72da122fad              # double 0.19672999999999999
	.quad	0x3fd237867f0aa21a              # double 0.28463899999999998
	.quad	0x3fd17d6b65a9a805              # double 0.27328000000000002
	.quad	0x3fe6cc39ffd60e95              # double 0.71243000000000001
	.quad	0x3fc37403dddb120a              # double 0.151978
	.quad	0x3fcaa209aaa3ad19              # double 0.20807
	.quad	0x3fc5036c9c0a8d22              # double 0.16416700000000001
	.quad	0x3fe4191361dc93ea              # double 0.62806099999999998
	.quad	0x3fe1a14f0520d131              # double 0.55094100000000001
	.quad	0x3fe1c6fbd273d5bb              # double 0.55554000000000003
	.quad	0x3fe4da4484944ed7              # double 0.651644
	.quad	0x3fdd6e115592d98c              # double 0.459843
	.quad	0x3fe945718eb89507              # double 0.78972699999999996
	.quad	0x3faeb6390c9107fb              # double 0.059984000000000003
	.quad	0x3fe325e13b18dac2              # double 0.59837399999999996
	.quad	0x3fed436544fe36d2              # double 0.91447699999999998
	.quad	0x3fe7a747d805e5f3              # double 0.73916999999999999
	.quad	0x3fe39d084e831ad2              # double 0.61291899999999999
	.quad	0x3fe86dbd72bcb5fe              # double 0.76339599999999996
	.quad	0x3fec521ff2e48e8a              # double 0.88502499999999995
	.quad	0x3fce3d0bfa0945fa              # double 0.236238
	.quad	0x3fb678e1932d6ece              # double 0.087781999999999998
	.quad	0x3fd12d9cf13cee9e              # double 0.26840900000000001
	.quad	0x3fb0ab81f969e3c9              # double 0.065116999999999994
	.quad	0x3fd33c03bc4d22c9              # double 0.30053800000000003
	.quad	0x3fc7f2239e6ab9b2              # double 0.18707699999999999
	.quad	0x3fd4724b76f6d762              # double 0.31947599999999998
	.quad	0x3fe17ae5796bfca8              # double 0.54625199999999996
	.quad	0x3fd5a7f3cf70153c              # double 0.33837600000000001
	.quad	0x3fdf5accd530489d              # double 0.48991699999999999
	.quad	0x3feed6861e92923e              # double 0.96368699999999996
	.quad	0x3fdebeb5b2d4d402              # double 0.48038999999999998
	.quad	0x3fdc7b7c7820a30e              # double 0.44503700000000002
	.quad	0x3feb2e7f6f4be836              # double 0.84942600000000001
	.quad	0x3fee6bfa8f7db6e5              # double 0.950681
	.quad	0x3fa22be0589acbc9              # double 0.035491000000000002
	.quad	0x3fe02d2bb23571d2              # double 0.50551400000000002
	.quad	0x3fcaff8ec0f88334              # double 0.210924
	.quad	0x3fe534a44c7b02d6              # double 0.66267600000000004
	.quad	0x3fe63191dde37586              # double 0.69355100000000003
	.quad	0x3feb474751ce28ed              # double 0.85245099999999996
	.quad	0x3fd132a8c9b84556              # double 0.26871699999999998
	.quad	0x3fdf595feda66128              # double 0.48982999999999999
	.quad	0x3fecbba55d1c3ac9              # double 0.89790599999999998
	.quad	0x3fbea9b499d0203e              # double 0.11977699999999999
	.quad	0x3fefc21187e7c06e              # double 0.99243999999999999
	.quad	0x3fa5360d0247021d              # double 0.041428
	.quad	0x3fd3c471b4784231              # double 0.308865
	.quad	0x3fe78dc981beb181              # double 0.73605799999999999
	.quad	0x3fdc828c36da87a0              # double 0.44546799999999998
	.quad	0x3fe2bff8a8f3a9b0              # double 0.58593399999999995
	.quad	0x3fdd3953dea465a5              # double 0.45662399999999997
	.quad	0x3fed9eeed8904f6e              # double 0.925651
	.quad	0x3fe225e56cd6c2f0              # double 0.56712600000000002
	.quad	0x3f8c243dccea28fe              # double 0.013741
	.quad	0x3fd38a697aeddce8              # double 0.30532300000000001
	.quad	0x3fe763369b9d7fd8              # double 0.73086099999999998
	.quad	0x3fea621b7e0ac7da              # double 0.82447599999999999
	.quad	0x3fcac050bd87b56c              # double 0.20899400000000001
	.quad	0x3fd2c3efae7924af              # double 0.293209
	.quad	0x3fb4bbd3804534bd              # double 0.080990999999999994
	.quad	0x3fe6bc169c23b795              # double 0.71045999999999998
	.quad	0x3fd3bf1a5ca29846              # double 0.30853900000000001
	.quad	0x3fc63cc07aaef2c7              # double 0.17372899999999999
	.quad	0x3fcea99b6f5caf2d              # double 0.23955099999999999
	.quad	0x3fdde4b87bdcf030              # double 0.46708499999999997
	.quad	0x3f9d9f90539fba45              # double 0.028929
	.quad	0x3fc914db59578a2b              # double 0.19594900000000001
	.quad	0x3fe923ca7503b81b              # double 0.78561899999999996
	.quad	0x3f967c286f8ad256              # double 0.021957999999999998
	.quad	0x3fe62b302f72b453              # double 0.69277200000000005
	.quad	0x3fdf9cd3e0bd449a              # double 0.49394700000000002
	.quad	0x3fe445931ca7d673              # double 0.63349299999999997
	.quad	0x3fcea2120e1f7d74              # double 0.23932100000000001
	.quad	0x3fe38a3f8982cb21              # double 0.610626
	.quad	0x3fd2236c15d2d01c              # double 0.283412
	.quad	0x3fb03c6c97d8cf3a              # double 0.063422000000000006
	.quad	0x3fd41c92ddbdb5d9              # double 0.31424400000000002
	.quad	0x3fef5bc664d3bf2f              # double 0.97995299999999996
	.quad	0x3fd571a7e3087875              # double 0.33506200000000003
	.quad	0x3fe1e28ed5f138bd              # double 0.55890600000000001
	.quad	0x3fdbd2c386d2ed78              # double 0.43473899999999999
	.quad	0x3f64d940789613d3              # double 0.002545
	.quad	0x3f957689ca18bd66              # double 0.020959999999999999
	.quad	0x3fe6634549b62c77              # double 0.69961799999999996
	.quad	0x3fe4586876e1dead              # double 0.63579200000000002
	.quad	0x3fd96afcce1c5825              # double 0.39715499999999998
	.quad	0x3fb205143bf72713              # double 0.070389999999999994
	.quad	0x3fd6d184c271fff8              # double 0.35653800000000002
	.quad	0x3fe7ba8e71476af9              # double 0.74152300000000004
	.quad	0x3fee02be8bc169c2              # double 0.93783499999999997
	.quad	0x3fe269b5a63f9a4a              # double 0.57540400000000003
	.quad	0x3fe2bb3a68b19a41              # double 0.58535499999999996
	.quad	0x3fc05d3996fa82e8              # double 0.12784499999999999
	.quad	0x3f410a137f38c543              # double 5.1999999999999995E-4
	.quad	0x3feecbff47735c18              # double 0.96240199999999997
	.quad	0x3fe5d6f976790321              # double 0.68249199999999999
	.quad	0x3fd15a5b9628cbd1              # double 0.27113999999999999
	.quad	0x3fe18d4fdf3b645a              # double 0.54849999999999999
	.quad	0x3fe3ca1f080303c0              # double 0.61842299999999994
	.quad	0x3fe8c45ed4a1ad64              # double 0.77397099999999996
	.quad	0x3f92d6a9c560c7c1              # double 0.018397
	.quad	0x3fe23b42cc2d6a9c              # double 0.56973399999999996
	.quad	0x3fe2441bb8c32a8d              # double 0.57081400000000004
	.quad	0x3fd27fa5d28d002e              # double 0.28904099999999999
	.quad	0x3fdb74afd5454153              # double 0.42899700000000002
	.quad	0x3fe732bdc26dce3a              # double 0.72494400000000003
	.quad	0x3fd6cb81733226c4              # double 0.35617100000000002
	.quad	0x3fea714983d79075              # double 0.82632899999999998
	.quad	0x3fd9bbd7b2031ceb              # double 0.40209
	.quad	0x3fea143bf727136a              # double 0.81496999999999997
	.quad	0x3fe0b0ab2e1693c0              # double 0.52156599999999997
	.quad	0x3fe01212513b5bf7              # double 0.50220600000000004
	.quad	0x3feec4523f67f4dc              # double 0.96146500000000001
	.quad	0x3fee599029ae4f33              # double 0.94843299999999997
	.quad	0x3fe9fccc03793144              # double 0.81210899999999996
	.quad	0x3fd63e7d1351159c              # double 0.34756399999999998
	.quad	0x3fddf10ecb74ddf8              # double 0.46783799999999998
	.quad	0x3fec671ef30a4e38              # double 0.88758800000000004
	.quad	0x3fea3e40420f6f09              # double 0.82009900000000002
	.quad	0x3fa37457c0b13598              # double 0.037997000000000003
	.quad	0x3fd656eac8605682              # double 0.349055
	.quad	0x3fefdd5b24e9c454              # double 0.99577099999999996
	.quad	0x3fb7b81b64e05469              # double 0.092652999999999999
	.quad	0x3fe307442c7fbacb              # double 0.59463699999999997
	.quad	0x3fe53d5347a5b0ff              # double 0.66373599999999999
	.quad	0x3fc7502ababead4f              # double 0.18213399999999999
	.quad	0x3fe32e6a76965f52              # double 0.59941599999999995
	.quad	0x3fc1595feda66128              # double 0.13553999999999999
	.quad	0x3fde67d77fae3609              # double 0.47508800000000001
	.quad	0x3fcbf0025bfad29a              # double 0.21826200000000001
	.quad	0x3fd80a73f748a15a              # double 0.37563800000000003
	.quad	0x3fd46fac6045baf5              # double 0.31931599999999999
	.quad	0x3fd7bc77143393ab              # double 0.37087799999999999
	.quad	0x3fa74cd31769a911              # double 0.045508
	.quad	0x3fee5db3397dd00f              # double 0.94893799999999995
	.quad	0x3fcb8904f6dfc5ce              # double 0.215119
	.quad	0x3f77e02645e4e69f              # double 0.005829
	.quad	0x3fe3e15ca6ca03c5              # double 0.62126000000000003
	.quad	0x3fe7ba7fc32ebe59              # double 0.74151599999999995
	.quad	0x3fe42a715831f03d              # double 0.63018099999999999
	.quad	0x3fecbe0589acbc8c              # double 0.89819599999999999
	.quad	0x3fe2356fb8f57f73              # double 0.56902299999999995
	.quad	0x3fdada0168b5cbff              # double 0.41955599999999998
	.quad	0x3fc987a4a48f96e1              # double 0.19945199999999999
	.quad	0x3fd13b7d84901d19              # double 0.269256
	.quad	0x3fe7857f3061c79b              # double 0.73504599999999998
	.quad	0x3fec6cc3e3193f6c              # double 0.88827699999999998
	.quad	0x3fe9806af46aa088              # double 0.79692600000000002
	.quad	0x3feda231832fcac9              # double 0.92604900000000001
	.quad	0x3fe1b4267839cd81              # double 0.55324099999999998
	.quad	0x3fd361bb05faebc4              # double 0.30284
	.quad	0x3fd150ce4ead0c3d              # double 0.27055699999999999
	.quad	0x3febc5bd0e12e83a              # double 0.86788799999999999
	.quad	0x3fefdaa92e62131b              # double 0.99544200000000004
	.quad	0x3fe66a91d9b1b79e              # double 0.70050900000000005
	.quad	0x3fe04e9e5e247885              # double 0.50959699999999997
	.quad	0x3faee5471715c63b              # double 0.060343000000000001
	.quad	0x3fed48c7192ea52f              # double 0.915134
	.quad	0x3fe712513b5bf6a1              # double 0.72098600000000002
	.quad	0x3fde0f840181e03f              # double 0.46969699999999998
	.quad	0x3fc3aa60913a4f87              # double 0.153637
	.quad	0x3fe92a8c9b845565              # double 0.78644400000000003
	.quad	0x3fc42e5de15ca6ca              # double 0.157665
	.quad	0x3fd389f83be6601c              # double 0.30529600000000001
	.quad	0x3fefdc8d9f9053a0              # double 0.99567300000000003
	.quad	0x3fdfbae46cfc829d              # double 0.495782
	.quad	0x3fea4ca4f440af1d              # double 0.82185600000000003
	.quad	0x3fe7f383f0bae89f              # double 0.74847600000000003
	.quad	0x3fd7962cfd8f0c78              # double 0.36854100000000001
	.quad	0x3febba71151611ba              # double 0.86650899999999997
	.quad	0x3fde6412cf0f9d2c              # double 0.474858
	.quad	0x3fe7bcf4e874c900              # double 0.74181600000000003
	.quad	0x3fd6ca25529fe005              # double 0.35608800000000002
	.quad	0x3feb4577d955714c              # double 0.85223000000000004
	.quad	0x3fe0aa715831f03d              # double 0.52080599999999999
	.quad	0x3fc42ccb3a2595bc              # double 0.15761700000000001
	.quad	0x3fc366516db0dd83              # double 0.15156
	.quad	0x3fd27c49fd7a13c2              # double 0.28883599999999998
	.quad	0x3fbc03ab862b27cc              # double 0.109431
	.quad	0x3fe0306e5cd4ed2d              # double 0.50591200000000003
	.quad	0x3fce0d5e8d5410f9              # double 0.23478299999999999
	.quad	0x3fc5cb35f3d7d391              # double 0.170264
	.quad	0x3fd92b6284599674              # double 0.39327299999999998
	.quad	0x3fe8059a73b42cc3              # double 0.75068400000000002
	.quad	0x3feaa5f41aef6f8f              # double 0.832758
	.quad	0x3fe11b0ccbc05d53              # double 0.53455200000000003
	.quad	0x3fe33c33f85510d4              # double 0.60109900000000005
	.quad	0x3fdf4877681669cf              # double 0.48879800000000001
	.quad	0x3fe06e0d23d4f15e              # double 0.51343399999999995
	.quad	0x3fc0e18266772d5e              # double 0.131882
	.quad	0x3fd740d90e23af32              # double 0.36333300000000002
	.quad	0x3fa00e496ededaec              # double 0.031358999999999998
	.quad	0x3fe2ea1405708249              # double 0.59107399999999999
	.quad	0x3fcb95bbbe878fac              # double 0.215507
	.quad	0x3feb8a569b17481b              # double 0.86063699999999999
	.quad	0x3fd9d44dca8e2e2c              # double 0.40358300000000003
	.quad	0x3f79e6256366d7a5              # double 0.0063229999999999996
	.quad	0x3feafebd09e12a52              # double 0.84359600000000001
	.quad	0x3fe37985271bcdbc              # double 0.60858400000000001
	.quad	0x3fd256d19dece571              # double 0.286549
	.quad	0x3fede48e8a71de6a              # double 0.93415000000000004
	.quad	0x3fdf88a04d12018a              # double 0.49271399999999999
	.quad	0x3fe37b58d1526d8b              # double 0.60880699999999999
	.quad	0x3fecfd30ad46f588              # double 0.90590700000000002
	.quad	0x3fe0394b7b28954a              # double 0.50699399999999994
	.quad	0x3fef0d887ebf22c0              # double 0.97040199999999998
	.quad	0x3fcbe071c53f39d2              # double 0.21778700000000001
	.quad	0x3fecf63a19008206              # double 0.905057
	.quad	0x3fe6b67a0f9096bc              # double 0.70977500000000004
	.quad	0x3fedbb0813cab820              # double 0.92908100000000004
	.quad	0x3fe8fded6ba8c587              # double 0.78099700000000005
	.quad	0x3fa0e0221426fe72              # double 0.032960000000000003
	.quad	0x3fc546c332f01755              # double 0.16622200000000001
	.quad	0x3fd4125dd095af29              # double 0.31362099999999998
	.quad	0x3fdb6ab14ec204f3              # double 0.42838700000000002
	.quad	0x3fd4d98bf7f06706              # double 0.32577800000000001
	.quad	0x3fd689f83be6601c              # double 0.35217100000000001
	.quad	0x3fe089741d084e83              # double 0.51677899999999999
	.quad	0x3fe46f0cfe154435              # double 0.63855600000000001
	.quad	0x3fe2b3d07c84b5dd              # double 0.58445000000000003
	.quad	0x3fa7a15db3397dd0              # double 0.046153
	.quad	0x3fca223e18698351              # double 0.20416999999999999
	.quad	0x3fd99d12cadddf44              # double 0.40021200000000001
	.quad	0x3fdeca42aed13943              # double 0.48109499999999999
	.quad	0x3fe7acc2d6a9c561              # double 0.73983900000000002
	.quad	0x3fe265cb35f3d7d4              # double 0.57492600000000005
	.quad	0x3fee69142b302f73              # double 0.95032700000000003
	.quad	0x3fe05ee568a50508              # double 0.51158400000000004
	.quad	0x3fce3d46b26bf877              # double 0.23624500000000001
	.quad	0x3fd3a3a8e71476b0              # double 0.30686400000000003
	.quad	0x3fe74be835dedf1e              # double 0.728016
	.quad	0x3fd3827b6fe2e6eb              # double 0.30483900000000003
	.quad	0x3fbe4fb97bb73083              # double 0.118404
	.quad	0x3fea209edbf8b9bb              # double 0.81648200000000004
	.quad	0x3fd0658c4bd33d29              # double 0.25619799999999998
	.quad	0x3fe6a6b93ccd0fe9              # double 0.70785200000000004
	.quad	0x3fedea4441787054              # double 0.93484699999999998
	.quad	0x3fe72a0cae642bfa              # double 0.72388300000000005
	.quad	0x3fa9c4b90214ad36              # double 0.050328999999999999
	.quad	0x3fe0ef6f8f041462              # double 0.52922800000000003
	.quad	0x3fe46dd8b60f1b26              # double 0.638409
	.quad	0x3fc279dd3bafd977              # double 0.144344
	.quad	0x3fe4136c58eeae9f              # double 0.62737100000000001
	.quad	0x3fe90cf5b1c86488              # double 0.78283199999999997
	.quad	0x3fae27179bfdf7e8              # double 0.058892
	.quad	0x3fc22645e4e69f06              # double 0.141793
	.quad	0x3fdf8a009f623077              # double 0.49279800000000001
	.quad	0x3fd1ec80c73abc94              # double 0.28005999999999998
	.quad	0x3fd92617c1bda512              # double 0.39295000000000002
	.quad	0x3fb4b7c3504c48ae              # double 0.080929
	.quad	0x3fd4069a4df47f99              # double 0.31290299999999999
	.quad	0x3fe186e5cd4ed2cc              # double 0.54771700000000001
	.quad	0x3fe9d52c16df3f96              # double 0.80727199999999999
	.quad	0x3fe38d5410f94c88              # double 0.61100200000000005
	.quad	0x3fe28f6cefed6345              # double 0.58000799999999997
	.quad	0x3fedb721d53cddd7              # double 0.92860500000000001
	.quad	0x3fe8e17e34b94531              # double 0.77752600000000005
	.quad	0x3fb14a6eb91b3f21              # double 0.067542000000000005
	.quad	0x3fcbf16b11c6d1e1              # double 0.218305
	.quad	0x3fdf3686a4ca4f44              # double 0.487703
	.quad	0x3fb00a393ee5eedd              # double 0.062656000000000003
	.quad	0x3fea295c853c1483              # double 0.81754899999999997
	.quad	0x3fed40c62e4d1a65              # double 0.914157
	.quad	0x3fe61ca18bd66278              # double 0.69099500000000003
	.quad	0x3fd0d8a548238540              # double 0.26322299999999998
	.quad	0x3fc97952d234eb9a              # double 0.199015
	.quad	0x3fc6b780346dc5d6              # double 0.17747499999999999
	.quad	0x3fe386df82b1f688              # double 0.61021400000000003
	.quad	0x3fd77fb267c6b8b7              # double 0.36716900000000002
	.quad	0x3fa24e5929670197              # double 0.035754000000000001
	.quad	0x3fecbedfa43fe5c9              # double 0.89829999999999999
	.quad	0x3fdb3c64345cfedf              # double 0.42556100000000002
	.quad	0x3fb62c55c96030c2              # double 0.086613999999999996
	.quad	0x3fe4a8826aa8eb46              # double 0.64556999999999998
	.quad	0x3fd753f7ced91687              # double 0.36449999999999999
	.quad	0x3fd29cb252ce032e              # double 0.29081400000000002
	.quad	0x3fec92f09d8c6d61              # double 0.89293699999999998
	.quad	0x3fd40bcbe61cffeb              # double 0.31322
	.quad	0x3fd7ea960b6f9fcb              # double 0.373693
	.quad	0x3fd09652bd3c3611              # double 0.25917499999999999
	.quad	0x3fd74195cc857f30              # double 0.36337799999999998
	.quad	0x3fdbb9dc2f405f6c              # double 0.43321900000000002
	.quad	0x3fea64a59c065b64              # double 0.82478600000000001
	.quad	0x3fd197d06bbdbe3c              # double 0.274891
	.quad	0x3fd2bcd78c436fc1              # double 0.29277599999999998
	.quad	0x3fde74213a0c6b48              # double 0.47583799999999998
	.quad	0x3feb84f4c6e6d9be              # double 0.85997999999999997
	.quad	0x3feae5a35d67ba23              # double 0.84053199999999995
	.quad	0x3fe45432873bc904              # double 0.63527800000000001
	.quad	0x3fdd46e08f217093              # double 0.457451
	.quad	0x3feeeb76709fa54c              # double 0.96624299999999996
	.quad	0x3feeb4c5da6a4441              # double 0.95956699999999994
	.quad	0x3fa0b6d86ec17ebb              # double 0.032645
	.quad	0x3fe05a31a4bdba0a              # double 0.51100999999999996
	.quad	0x3f984be40420f6f1              # double 0.023727000000000002
	.quad	0x3fe14122749f0e4e              # double 0.53920100000000004
	.quad	0x3fb796f21f6cacd2              # double 0.092147000000000006
	.quad	0x3fdfeaf6837f7be1              # double 0.49871599999999999
	.quad	0x3fc77a5f41aef6f9              # double 0.183422
	.quad	0x3fd2311e85fd04a3              # double 0.284248
	.quad	0x3fc837de939eadd6              # double 0.18920500000000001
	.quad	0x3fef337c99ae924f              # double 0.97503499999999998
	.quad	0x3fb735e310dbf056              # double 0.090665999999999996
	.quad	0x3fef300bcbe61d00              # double 0.97461500000000001
	.quad	0x3fe5ddbdb5d89481              # double 0.68331799999999998
	.quad	0x3fd1820a30db6a1f              # double 0.27356200000000003
	.quad	0x3fe7b7e4de3b8a1a              # double 0.74119800000000002
	.quad	0x3fed8dfdef8487ba              # double 0.92358300000000004
	.quad	0x3fc4a6a012599ed8              # double 0.16133500000000001
	.quad	0x3feb415f45e0b4e1              # double 0.85172999999999999
	.quad	0x3fd289e34330d738              # double 0.28966599999999998
	.quad	0x3fe544d87724fa8b              # double 0.66465399999999997
	.quad	0x3fcae0f3cb3e5754              # double 0.20999000000000001
	.quad	0x3fefeb8305d95dd5              # double 0.99749900000000002
	.quad	0x3fe52513b5bf6a0e              # double 0.66077600000000003
	.quad	0x3fdc528ae74f2f12              # double 0.44253799999999999
	.quad	0x3fe0596e9bbf0dc7              # double 0.51091699999999995
	.quad	0x3fe2f672b884406c              # double 0.592584
	.quad	0x3fe209656eefa1e4              # double 0.56364700000000001
	.quad	0x3fb720b8066c2acc              # double 0.090343000000000007
	.quad	0x3fd93c70c996b767              # double 0.394314
	.quad	0x3fe46657b84db9c7              # double 0.63749299999999998
	.quad	0x3fe887852f7f498c              # double 0.76654299999999997
	.quad	0x3fc73eee52589268              # double 0.18160799999999999
	.quad	0x3fee50e560418937              # double 0.94737499999999997
	.quad	0x3fe0cf41f212d773              # double 0.52529999999999999
	.quad	0x3feb66f9335d249e              # double 0.85631999999999997
	.quad	0x3fe40cf1800a7c5b              # double 0.62658000000000003
	.quad	0x3fab8b26394face6              # double 0.053795999999999997
	.quad	0x3fda6d5cfaacd9e8              # double 0.41292499999999999
	.quad	0x3fa9f85d744f5d35              # double 0.050722999999999997
	.quad	0x3fd622f6a50d6b23              # double 0.34588400000000002
	.quad	0x3f801f31f46ed246              # double 0.0078720000000000005
	.quad	0x3facec636b096356              # double 0.056491
	.quad	0x3fe7e0fa15db3398              # double 0.74621300000000002
	.quad	0x3fecf18a86d71f36              # double 0.90448499999999998
	.quad	0x3fc6b32ce89656ef              # double 0.177343
	.quad	0x3fe0a584f4c6e6da              # double 0.52020500000000003
	.quad	0x3fc358537e2c55c9              # double 0.15113299999999999
	.quad	0x3fec19fc2a8869c6              # double 0.87817199999999995
	.quad	0x3fee6da4484944ed              # double 0.95088399999999995
	.quad	0x3fa42e1262025397              # double 0.039413999999999998
	.quad	0x3fea59ddc1e7967d              # double 0.82347000000000004
	.quad	0x3fbde7fb267c6b8b              # double 0.11682099999999999
	.quad	0x3fd6abf76a2f48c3              # double 0.35424600000000001
	.quad	0x3fea68ec52a411c3              # double 0.82530800000000004
	.quad	0x3fdfcc532a497fa6              # double 0.49684600000000001
	.quad	0x3fea961c36976bc2              # double 0.83082400000000001
	.quad	0x3fe07aaef2c73259              # double 0.51497599999999999
	.quad	0x3fc0cb641700cd85              # double 0.13120699999999999
	.quad	0x3fe8310dbf0563ed              # double 0.75598799999999999
	.quad	0x3fe5d0a88effe2a4              # double 0.68172100000000002
	.quad	0x3fe97b02d59d55e7              # double 0.79626600000000003
	.quad	0x3fd6a68b19a415f4              # double 0.35391499999999998
	.quad	0x3fe3606b7aa25d8d              # double 0.60551999999999995
	.quad	0x3feb30728e92d55a              # double 0.84966399999999997
	.quad	0x3fe17bdad7518b0d              # double 0.54636899999999999
	.quad	0x3fe5443b2dd377e2              # double 0.66457900000000003
	.quad	0x3fcf7df19d66adb4              # double 0.246031
	.quad	0x3fae75bc44bf4cb2              # double 0.059492000000000003
	.quad	0x3fcba8155d5f56a8              # double 0.21606700000000001
	.quad	0x3fe7d24bfd2e9468              # double 0.744421
	.quad	0x3fe0a2be0589acbd              # double 0.51986600000000005
	.quad	0x3fb16bb98c7e2824              # double 0.068049999999999999
	.quad	0x3fc52f87ad080b67              # double 0.16551299999999999
	.quad	0x3fe780ae10492360              # double 0.73445800000000005
	.quad	0x3fd69f3c70c996b7              # double 0.35346899999999998
	.quad	0x3fe972c3009b3073              # double 0.79525900000000005
	.quad	0x3fd62e1ac57e23f2              # double 0.34656399999999998
	.quad	0x3fe60f29d40ee06e              # double 0.68935100000000005
	.quad	0x3fedfb19e731d2e1              # double 0.93690200000000001
	.quad	0x3fe95ac03ff69015              # double 0.79232800000000003
	.quad	0x3fe5edacabc51548              # double 0.68526299999999996
	.quad	0x3fd43f8982cb20fb              # double 0.31637799999999999
	.quad	0x3fed9d10b1feeb2d              # double 0.925423
	.quad	0x3fdcd41b75a74c0a              # double 0.45044600000000001
	.quad	0x3fe7d65e4606748e              # double 0.74491799999999997
	.quad	0x3fdacdab191dde37              # double 0.41880299999999998
	.quad	0x3fef6d740c4156e2              # double 0.98211099999999996
	.quad	0x3fd01a2a4db163bb              # double 0.25159700000000002
	.quad	0x3fc272ead9274e23              # double 0.14413200000000001
	.quad	0x3fe45a16616b54e3              # double 0.63599700000000003
	.quad	0x3fc7c46d82ba5a04              # double 0.18568200000000001
	.quad	0x3fe1503b81b64e05              # double 0.54104399999999997
	.quad	0x3fb5a6d698fe6927              # double 0.084576999999999999
	.quad	0x3fd72ed783dff3f1              # double 0.362234
	.quad	0x3fe65907d912556d              # double 0.69836799999999999
	.quad	0x3fe7e534373f316e              # double 0.74672899999999998
	.quad	0x3fee45e9185cee18              # double 0.94603400000000004
	.quad	0x3fdf5104d551d68c              # double 0.48931999999999998
	.quad	0x3fec9c065b63d3e5              # double 0.89404600000000001
	.quad	0x3feb9eb851eb851f              # double 0.86312500000000003
	.quad	0x3fe312f09d8c6d61              # double 0.59606199999999998
	.quad	0x3fef6d1bf7ad4b27              # double 0.98206899999999996
	.quad	0x3fe4cedf61240746              # double 0.65025299999999997
	.quad	0x3fa7d5ed06fef7c2              # double 0.046553999999999998
	.quad	0x3fd31b328b6d86ec              # double 0.29853499999999999
	.quad	0x3fe1f90b84988095              # double 0.56165100000000001
	.quad	0x3f3d9f4d37c1376d              # double 4.5199999999999998E-4
	.quad	0x3fd11acde19fc2a9              # double 0.26726100000000003
	.quad	0x3fbcd1c7de5082cf              # double 0.112576
	.quad	0x3febb441bb8c32a9              # double 0.86575400000000002
	.quad	0x3fbe6f9335d249e4              # double 0.11889
	.quad	0x3fea4afb3b752114              # double 0.82165299999999996
	.quad	0x3fe3293f290abb45              # double 0.59878500000000001
	.quad	0x3fef5ae81882adc5              # double 0.97984700000000002
	.quad	0x3fea3c297bfa4c62              # double 0.81984400000000002
	.quad	0x3fe61cd5f99c38b0              # double 0.69101999999999997
	.quad	0x3fdb226809d49518              # double 0.42397499999999999
	.quad	0x3fcb66277c45cbbc              # double 0.214055
	.quad	0x3fe954434e3369ba              # double 0.79153600000000002
	.quad	0x3fdf6b54e2b063e0              # double 0.49092599999999997
	.quad	0x3fd78288051c9f73              # double 0.367342
	.quad	0x3fdd2f5dbb9cf9a0              # double 0.45601599999999998
	.quad	0x3fd7f9d2bf551505              # double 0.37462299999999998
	.quad	0x3fe81d55e6bc621b              # double 0.75358099999999995
	.quad	0x3fd10014f8b588e3              # double 0.26562999999999998
	.quad	0x3fe8fcb4f1e4b44a              # double 0.78084799999999999
	.quad	0x3fd326a65cf67b1c              # double 0.299234
	.quad	0x3fd1641f644955b4              # double 0.27173599999999998
	.quad	0x3fc0acc92146a1a5              # double 0.130273
	.quad	0x3fe28db6a1e81cb4              # double 0.57979899999999995
	.quad	0x3fe719fc2a8869c6              # double 0.72192199999999995
	.quad	0x3fda3e5b8561d430              # double 0.41005599999999998
	.quad	0x3fc163c31df761cc              # double 0.13585700000000001
	.quad	0x3fba30a915379fa9              # double 0.10230499999999999
	.quad	0x3fe43fa4c61d8623              # double 0.63276900000000003
	.quad	0x3fda76295208e150              # double 0.413462
	.quad	0x3fe1bb7b6bb12902              # double 0.55413599999999996
	.quad	0x3fda8198f1d3ed52              # double 0.41415999999999997
	.quad	0x3faa5b530ced4e4d              # double 0.051478000000000003
	.quad	0x3fbcef34d6a161e5              # double 0.113025
	.quad	0x3fc31550ca1cef24              # double 0.149088
	.quad	0x3fd31ca7d6733ebc              # double 0.298624
	.quad	0x3fe63022dd7a99fa              # double 0.69337599999999999
	.quad	0x3fd1c560c7c0f451              # double 0.27767199999999997
	.quad	0x3fe0616b54e2b064              # double 0.51189200000000001
	.quad	0x3f92d0a244630660              # double 0.018374000000000001
	.quad	0x3fa4504816f0068e              # double 0.039675000000000002
	.quad	0x3fb3c914b167ec78              # double 0.077286999999999995
	.quad	0x3fecf6a2f48c2e77              # double 0.90510699999999999
	.quad	0x3fe5fbd273d5bab2              # double 0.68698999999999999
	.quad	0x3fd599567dbb16c2              # double 0.33748400000000001
	.quad	0x3fea69728a611772              # double 0.82537199999999999
	.quad	0x3fd09d451fc4c166              # double 0.25959900000000002
	.quad	0x3fc7264a16a48733              # double 0.18085599999999999
	.quad	0x3fc58ad256798959              # double 0.168299
	.quad	0x3fefafb5d031055c              # double 0.99019900000000005
	.quad	0x3fe8a6f1dc50ce4f              # double 0.77037900000000004
	.quad	0x3fef73e89a88ace2              # double 0.98289899999999997
	.quad	0x3fe4927d45a5fc7e              # double 0.64288199999999995
	.quad	0x3fe99b823c85c24c              # double 0.80023299999999997
	.quad	0x3fa66ba493c89f41              # double 0.043790000000000003
	.quad	0x3fefee49f51697f2              # double 0.997838
	.quad	0x3fefdabe27179bfe              # double 0.995452
	.quad	0x3fb295faa8a82a56              # double 0.072600999999999999
	.quad	0x3fd68c2a454de7ea              # double 0.35230499999999998
	.quad	0x3fef26138fffbce4              # double 0.97339799999999998
	.quad	0x3fd7c4ac6cdaf4ae              # double 0.37137900000000001
	.quad	0x3fb05308bb906467              # double 0.063767000000000004
	.quad	0x3fbcb8066c2acb86              # double 0.112183
	.quad	0x3fe7c58cd20afa2f              # double 0.742865
	.quad	0x3fe10da7f3cf7015              # double 0.53291699999999997
	.quad	0x3fd978316a055758              # double 0.39796100000000001
	.quad	0x3fc5b4916ca46e09              # double 0.169573
	.quad	0x3fe7979e16d6dc1a              # double 0.73725799999999997
	.quad	0x3fe13ef49cf56ead              # double 0.53893500000000005
	.quad	0x3fe652c59fb1e18f              # double 0.697604
	.quad	0x3fe3fc19c17225b7              # double 0.62452399999999997
	.quad	0x3fdaeb0fadf2ecf2              # double 0.420597
	.quad	0x3fdbd5ae1cde5d18              # double 0.434917
	.quad	0x3fe6c660a2014728              # double 0.71171600000000002
	.quad	0x3fee1a8ac5c13fd1              # double 0.94074000000000002
	.quad	0x3fe33a08398a6549              # double 0.60083399999999998
	.quad	0x3fd2948dc11e42e1              # double 0.29031699999999999
	.quad	0x3fed6414e7ee9143              # double 0.91846700000000003
	.quad	0x3fdf3c7d5ed06fef              # double 0.48806699999999997
	.quad	0x3fda6ce358298cc1              # double 0.41289599999999999
	.quad	0x3fd4b940fecdd0d9              # double 0.32380700000000001
	.quad	0x3feecbfd2e946801              # double 0.96240099999999995
	.quad	0x3feea34a87e38eb0              # double 0.95743299999999998
	.quad	0x3fefedefc7a39820              # double 0.99779499999999998
	.quad	0x3fee8c521dda059a              # double 0.95462899999999995
	.quad	0x3fe2a0d77b7c7821              # double 0.58213400000000004
	.quad	0x3fe2b1704ff4341a              # double 0.58416000000000001
	.quad	0x3fce4fd2a62aa194              # double 0.23681099999999999
	.quad	0x3fb0bb5e0f7fcfc4              # double 0.065359
	.quad	0x3fe8c280ae104923              # double 0.77374299999999996
	.quad	0x3fef13d96638433d              # double 0.97117299999999995
	.quad	0x3fee6878fabda0e0              # double 0.95025300000000001
	.quad	0x3fc2e3150dae3e6c              # double 0.14755499999999999
	.quad	0x3fd0f6a50d6b228e              # double 0.26505400000000001
	.quad	0x3fecc35ce1826677              # double 0.89884799999999998
	.quad	0x3fe6ca2339c0ebee              # double 0.712175
	.quad	0x3fd196dd26b723ee              # double 0.27483299999999999
	.quad	0x3fb9a437824d4cba              # double 0.100162
	.quad	0x3fe3029f16b11c6d              # double 0.59406999999999999
	.quad	0x3fed07f88765ba6f              # double 0.907223
	.quad	0x3fd8dcc20d5629d8              # double 0.38847399999999999
	.quad	0x3fe22f0e0a84be40              # double 0.56824399999999997
	.quad	0x3fe63cdfefbf401c              # double 0.69493099999999997
	.quad	0x3fd8964628027d89              # double 0.38417200000000001
	.quad	0x3fedd712a0ec7432              # double 0.932504
	.quad	0x3fa41fc8f32378ab              # double 0.039305
	.quad	0x3fea2bf11f926c7f              # double 0.81786400000000004
	.quad	0x3fe1be6c4c5974e6              # double 0.55449499999999996
	.quad	0x3fe8e4adff822bbf              # double 0.77791500000000002
	.quad	0x3fdd35c182ecaeea              # double 0.45640599999999998
	.quad	0x3fd1b5f1bef49cf5              # double 0.27672999999999998
	.quad	0x3fdffdcdf6987831              # double 0.49986599999999998
	.quad	0x3fe148adeebb341e              # double 0.54012199999999999
	.quad	0x3fe19e68a0d349bf              # double 0.55058700000000005
	.quad	0x3fdae9d0e991ff71              # double 0.42052099999999998
	.quad	0x3fdcfc86cebbba56              # double 0.45291300000000001
	.quad	0x3fcbe69ad42c3c9f              # double 0.217975
	.quad	0x3fd066a11ec918e3              # double 0.25626399999999999
	.quad	0x3fe5270b06c43f60              # double 0.66101600000000005
	.quad	0x3fd8b78cc9a77e5f              # double 0.38620300000000002
	.quad	0x3fe1f6ff3ade2260              # double 0.56140100000000004
	.quad	0x3fe5e9707182235b              # double 0.68474599999999997
	.quad	0x3feeda5daf07bfe8              # double 0.96415600000000001
	.quad	0x3fb865625a682b63              # double 0.095297000000000007
	.quad	0x3fea5f6124074645              # double 0.82414299999999996
	.quad	0x3fe0b1e5c0b99913              # double 0.52171599999999996
	.quad	0x3fd39e30014f8b59              # double 0.30653000000000002
	.quad	0x3fe49b79d909f1f1              # double 0.64397899999999997
	.quad	0x3fe79c92ddbdb5d9              # double 0.73786300000000005
	.quad	0x3fee58ab92c06184              # double 0.94832399999999994
	.quad	0x3fcff0025bfad29a              # double 0.24951200000000001
	.quad	0x3fd87839cd8127b3              # double 0.38233800000000001
	.quad	0x3fc8e7ab7564302b              # double 0.19456999999999999
	.quad	0x3fd5af1886df82b2              # double 0.338812
	.quad	0x3f99e0a41a261bf3              # double 0.025270999999999998
	.quad	0x3fece8a71de69ad4              # double 0.90339999999999998
	.quad	0x3fd8763e4abe6a33              # double 0.38221699999999997
	.quad	0x3fd526e115592d99              # double 0.33049800000000001
	.quad	0x3fee007fed20296b              # double 0.93756099999999998
	.quad	0x3fe67f77af64063a              # double 0.70306000000000002
	.quad	0x3fbc6705c896dd27              # double 0.110947
	.quad	0x3fd213db7f173754              # double 0.28246199999999999
	.quad	0x3fd24d9c6b053198              # double 0.28598699999999999
	.quad	0x3fd4ce8d972cd7cf              # double 0.32510699999999998
	.quad	0x3fe77b7a5f41aef7              # double 0.733823
	.quad	0x3fd379207d4e0978              # double 0.30426799999999998
	.quad	0x3feaeedaa92e6213              # double 0.84165699999999999
	.quad	0x3fe17bd8be7296f6              # double 0.54636799999999996
	.quad	0x3fdf0268900c521e              # double 0.48452200000000001
	.quad	0x3fbcc9752977c88e              # double 0.11244899999999999
	.quad	0x3fe8062b27cbf6e4              # double 0.750753
	.quad	0x3fe28afc47e49b20              # double 0.57946600000000004
	.quad	0x3fe2bc536d655e29              # double 0.58548900000000004
	.quad	0x3f9d983947496aad              # double 0.028901
	.quad	0x3f9ddb9841aac53b              # double 0.029158
	.quad	0x3fdb122749f0e4da              # double 0.422983
	.quad	0x3fe730b5aa715832              # double 0.72469600000000001
	.quad	0x3fe4a4ce8101f31f              # double 0.64511799999999997
	.quad	0x3fe7bfdb4cc25072              # double 0.74217
	.quad	0x3fe0de050374ff86              # double 0.52710199999999996
	.quad	0x3fe19c0ebedfa440              # double 0.55030000000000001
	.quad	0x3fe10ae536501e26              # double 0.53258000000000005
	.quad	0x3fd45faa8a82a561              # double 0.31833899999999998
	.quad	0x3febbf4eca686e7e              # double 0.86710299999999996
	.quad	0x3fdefec99f1ae2da              # double 0.48430099999999998
	.quad	0x3feabe89a88ace25              # double 0.83575900000000003
	.quad	0x3fed426dce39b457              # double 0.91435900000000003
	.quad	0x3fe713fd0d0678c0              # double 0.72119
	.quad	0x3fbffdc5931ca7d6              # double 0.12496599999999999
	.quad	0x3fe03721d53cddd7              # double 0.50673000000000001
	.quad	0x3fce2a4db163baba              # double 0.23566599999999999
	.quad	0x3fd07a0b5ed8d36b              # double 0.25744899999999998
	.quad	0x3fe0dd4c76d117b5              # double 0.52701399999999998
	.quad	0x3fee22b7baecd078              # double 0.94173799999999996
	.quad	0x3fe45573647baa9b              # double 0.63543099999999997
	.quad	0x3fe20e53eb399f5e              # double 0.564249
	.quad	0x3fe765dbfceb7889              # double 0.73118399999999995
	.quad	0x3fbe009f623076c0              # double 0.117197
	.quad	0x3fe64792d1287c20              # double 0.69623699999999999
	.quad	0x3fd584d76ab58080              # double 0.336233
	.quad	0x3fd4a1c68ec52a41              # double 0.32237399999999999
	.quad	0x3fd6e835dedf1e08              # double 0.35792299999999999
	.quad	0x3fefcf97edc7ef17              # double 0.99409099999999994
	.quad	0x3fb974f722e1ac58              # double 0.099441000000000002
	.quad	0x3fe15e225fa658c5              # double 0.54274100000000003
	.quad	0x3fd161ed5ae1cde6              # double 0.27160200000000001
	.quad	0x3fe1acb20fb224ab              # double 0.55233100000000002
	.quad	0x3fea5bd512ec6bcf              # double 0.82371000000000005
	.quad	0x3fda8ffb8b263950              # double 0.41503800000000002
	.quad	0x3fd9c17ebaf10236              # double 0.40243499999999999
	.quad	0x3fce3a860dcb9a9e              # double 0.23616100000000001
	.quad	0x3fe86daec4a4095f              # double 0.76338899999999998
	.quad	0x3fd324180d3cff65              # double 0.29907800000000001
	.quad	0x3fd8add590c0ad04              # double 0.38561000000000001
	.quad	0x3fb321a2e7f6f4bf              # double 0.074732000000000007
	.quad	0x3febac2bd7f51efb              # double 0.86476699999999995
	.quad	0x3fb9c5718eb89507              # double 0.10066899999999999
	.quad	0x3fe0d2fa0d77b7c8              # double 0.52575400000000005
	.quad	0x3fe2b927d45a5fc8              # double 0.58510200000000001
	.quad	0x3fe132f23033a472              # double 0.53746899999999997
	.quad	0x3fc8c2efd438d1d9              # double 0.19344900000000001
	.quad	0x3fe51a7e30878748              # double 0.65948399999999996
	.quad	0x3fbfc45cbbc2b94e              # double 0.12409000000000001
	.quad	0x3fedb6390c9107fb              # double 0.92849400000000004
	.quad	0x3fdb90de093532e8              # double 0.43071700000000002
	.quad	0x3fea1b8cb8e086be              # double 0.815863
	.quad	0x3fe15d63886594af              # double 0.54264999999999997
	.quad	0x3fe6be0bd44998d0              # double 0.71069899999999997
	.quad	0x3f3797cc39ffd60f              # double 3.6000000000000002E-4
	.quad	0x3fe2e4fdb09a671f              # double 0.59045300000000001
	.quad	0x3fda7a4a48f96e16              # double 0.41371400000000003
	.quad	0x3fc37cbb3c81908e              # double 0.15224399999999999
	.quad	0x3fe93417ca2120e2              # double 0.787609
	.quad	0x3fd4de1e2de87097              # double 0.32605699999999999
	.quad	0x3fc8107b784662bb              # double 0.188003
	.quad	0x3fd7a3b57c4e2f38              # double 0.369367
	.quad	0x3fc0dad31fcd24e1              # double 0.13167799999999999
	.quad	0x3fd5aee2003ab863              # double 0.33879900000000002
	.quad	0x3fe06da87a072d1b              # double 0.51338600000000001
	.quad	0x3fe72656abde3fbc              # double 0.72343000000000002
	.quad	0x3fe7c27418d6909b              # double 0.74248700000000001
	.quad	0x3fd7f84cad57bc7f              # double 0.37452999999999997
	.quad	0x3fe22fad6cb53501              # double 0.56832000000000005
	.quad	0x3fd73aeee957470f              # double 0.36297200000000002
	.quad	0x3feef9e7b80a9de9              # double 0.96800600000000003
	.quad	0x3fe017ce52deca25              # double 0.50290599999999996
	.quad	0x3fe4262ed352220c              # double 0.62966100000000003
	.quad	0x3fe59b66f9335d25              # double 0.67522000000000004
	.quad	0x3fe807724fa8b4c0              # double 0.75090900000000005
	.quad	0x3fe28b4e11dbca97              # double 0.57950500000000005
	.quad	0x3fefa77e5eaab042              # double 0.98919599999999996
	.quad	0x3fd4724b76f6d762              # double 0.31947599999999998
	.quad	0x3fba6ba493c89f41              # double 0.10320500000000001
	.quad	0x3fdad80e496ededb              # double 0.419437
	.quad	0x3fd5666666666666              # double 0.33437499999999998
	.quad	0x3fe560e0eb67c287              # double 0.668076
	.quad	0x3fc1839cd8127b2d              # double 0.13682900000000001
	.quad	0x3fdbca7935760392              # double 0.43423299999999998
	.quad	0x3fa1f70de8f6ceff              # double 0.035088000000000001
	.quad	0x3fe0b039ef0f16f4              # double 0.52151199999999998
	.quad	0x3fe1f30c67168f8e              # double 0.56091899999999995
	.quad	0x3fea43fe5c91d14e              # double 0.82079999999999997
	.quad	0x3fea07182235b4ee              # double 0.81336600000000003
	.quad	0x3fe665c70435efa6              # double 0.69992399999999999
	.quad	0x3fe184a72ead9275              # double 0.54744300000000001
	.quad	0x3fd18b97785729b3              # double 0.27414500000000003
	.quad	0x3fed9290257c914b              # double 0.92414099999999999
	.quad	0x3fe1d6c2efd438d2              # double 0.55746600000000002
	.quad	0x3fe28bd87b56b873              # double 0.57957099999999995
	.quad	0x3fa9e731d2e0e304              # double 0.050591999999999998
	.quad	0x3fb7074a771c970f              # double 0.089954999999999993
	.quad	0x3fc1491f2dc2b0ea              # double 0.135044
	.quad	0x3fe2782d38476f2a              # double 0.57716999999999996
	.quad	0x3fd05ebb7739f341              # double 0.25578200000000001
	.quad	0x3fec26b93ccd0fe9              # double 0.87972700000000004
	.quad	0x3fe6fdb09a671ef3              # double 0.718468
	.quad	0x3fbf85510d38cda7              # double 0.123128
	.quad	0x3fc58e086bdf4c2b              # double 0.16839699999999999
	.quad	0x3fe075e41d4b6a62              # double 0.51439100000000004
	.quad	0x3fc467620ee8d10f              # double 0.15940499999999999
	.quad	0x3fed258b3f63c31e              # double 0.910833
	.quad	0x3febe1cffeb074a7              # double 0.87131499999999995
	.quad	0x3f91db877ab32485              # double 0.017439
	.quad	0x3feaead70e6f2e8c              # double 0.84116699999999999
	.quad	0x3fdc2c27a63736ce              # double 0.440195
	.quad	0x3fcf1fab96f21f6d              # double 0.24315400000000001
	.quad	0x3fd05a2d72ffd1dd              # double 0.25550400000000001
	.quad	0x3f861672324c8366              # double 0.010784999999999999
	.quad	0x3fe73e89a88ace25              # double 0.72638400000000003
	.quad	0x3f9f123c42a66dbd              # double 0.030342999999999998
	.quad	0x3fc6ab367a0f9097              # double 0.17710000000000001
	.quad	0x3fe4cc39ffd60e95              # double 0.64993000000000001
	.quad	0x3fe2ea4228997c3d              # double 0.59109599999999995
	.quad	0x3fd85aa2e3c536d6              # double 0.38053199999999998
	.quad	0x3fe719c38b04ab60              # double 0.72189499999999995
	.quad	0x3fea273f748a1598              # double 0.81729099999999999
	.quad	0x3faa42aed1394318              # double 0.051290000000000002
	.quad	0x3fc542d490e66cb1              # double 0.166102
	.quad	0x3fc67e414e7ee914              # double 0.175728
	.quad	0x3fe1f84449dbec25              # double 0.56155600000000006
	.quad	0x3fe07ac6045baf53              # double 0.51498699999999997
	.quad	0x3fd8aa2a0a958538              # double 0.38538600000000001
	.quad	0x3fe8875f6fd21ff3              # double 0.76652500000000001
	.quad	0x3fe63cc2938de6de              # double 0.69491700000000001
	.quad	0x3fd3f865d7cb2d90              # double 0.31203599999999998
	.quad	0x3fee8a04d12018a4              # double 0.95434799999999997
	.quad	0x3fa67afa7221858c              # double 0.043907000000000002
	.quad	0x3fe0a7418d6909af              # double 0.52041700000000002
	.quad	0x3fd010b630a91538              # double 0.25102000000000002
	.quad	0x3fe82bd7f51efb6e              # double 0.75535200000000002
	.quad	0x3fe59d19157abb88              # double 0.675427
	.quad	0x3fe906df82b1f688              # double 0.78208900000000003
	.quad	0x3fe583968d759ee9              # double 0.67231300000000005
	.quad	0x3fe2ff88765ba6f0              # double 0.59369300000000003
	.quad	0x3fd0e60807357e67              # double 0.26404
	.quad	0x3fbdcb89d6adf71f              # double 0.116387
	.quad	0x3fee18a222d5171e              # double 0.94050699999999998
	.quad	0x3fd62fad6cb53501              # double 0.34666000000000002
	.quad	0x3fd54d2b2bfdb4cc              # double 0.33283499999999999
	.quad	0x3feac4d44567125e              # double 0.83652700000000002
	.quad	0x3fcf83f0bae89eba              # double 0.24621399999999999
	.quad	0x3fb96db0dd82fd76              # double 0.099330000000000001
	.quad	0x3fc1ca31e7d9988d              # double 0.138983
	.quad	0x3fee602645e4e69f              # double 0.949237
	.quad	0x3fc4563ed0f62739              # double 0.158882
	.quad	0x3fc4d1958969a0ae              # double 0.16264600000000001
	.quad	0x3fdb34a01abd1aa8              # double 0.42508699999999999
	.quad	0x3fc374b407032980              # double 0.151999
	.quad	0x3fe942e770bd017e              # double 0.78941700000000004
	.quad	0x3fe4a9307af20ea6              # double 0.64565300000000003
	.quad	0x3fe1c723aafff36b              # double 0.55555900000000003
	.quad	0x3fe891819d2391d5              # double 0.76776199999999994
	.quad	0x3fe80578e5c4eb57              # double 0.750668
	.quad	0x3febdd0b73d188f4              # double 0.87073299999999997
	.quad	0x3feea326e115592e              # double 0.95741600000000004
	.quad	0x3fe0eafab53d640f              # double 0.52868400000000004
	.quad	0x3fe99c4545846e8f              # double 0.80032599999999998
	.quad	0x3fea7b02d59d55e7              # double 0.82751600000000003
	.quad	0x3fcaa51e321a2e7f              # double 0.20816399999999999
	.quad	0x3fd1bf401c4fc1df              # double 0.27729799999999999
	.quad	0x3fef9f212d773190              # double 0.98817500000000003
	.quad	0x3fef09acbc8c0ce9              # double 0.96993099999999998
	.quad	0x3fb07f562174c4ce              # double 0.064443
	.quad	0x3fdf02c0a4a05dd9              # double 0.484543
	.quad	0x3fe427ef9db22d0e              # double 0.62987499999999996
	.quad	0x3fe6588a04d12019              # double 0.69830800000000004
	.quad	0x3fefd681ecd4aa11              # double 0.99493500000000001
	.quad	0x3fc02c55c96030c2              # double 0.12635299999999999
	.quad	0x3fefc47c30d306a3              # double 0.99273500000000003
	.quad	0x3fbfc254a3c64346              # double 0.124059
	.quad	0x3fd345aa2e3c536d              # double 0.30112699999999998
	.quad	0x3fe47533f42352eb              # double 0.63930699999999996
	.quad	0x3fbbc9bc77143394              # double 0.108547
	.quad	0x3fd1306a2b1704ff              # double 0.26857999999999999
	.quad	0x3fe96ff3ade225fa              # double 0.79491599999999996
	.quad	0x3fd5a322af577100              # double 0.33808199999999999
	.quad	0x3fe99040bfe3b03e              # double 0.79885899999999999
	.quad	0x3fc243dccea28fe2              # double 0.14269599999999999
	.quad	0x3fcc736049ecb31c              # double 0.222271
	.quad	0x3fea16e58a32f449              # double 0.81529499999999999
	.quad	0x3fec0c8eef1bac2e              # double 0.87653300000000001
	.quad	0x3fe3cf893faf4278              # double 0.61908399999999997
	.quad	0x3fd4e0b4e11dbca9              # double 0.32621499999999998
	.quad	0x3feed96a6a01259a              # double 0.96404000000000001
	.quad	0x3fd6c9f2fdb8fde3              # double 0.356076
	.quad	0x3fd1b3700474d9c7              # double 0.27657700000000002
	.quad	0x3fef87bdcf0307f2              # double 0.98531999999999997
	.quad	0x3fe60d9d7774aba4              # double 0.68916200000000005
	.quad	0x3fc6a7503b81b64e              # double 0.176981
	.quad	0x3fea25785f8d2e51              # double 0.81707399999999997
	.quad	0x3fd97a2cecc814d7              # double 0.39808199999999999
	.quad	0x3fdb704790b84988              # double 0.428728
	.quad	0x3fa9cc532a497fa6              # double 0.050387000000000001
	.quad	0x3fec92231832fcad              # double 0.89283900000000005
	.quad	0x3fe200f345069a4e              # double 0.562616
	.quad	0x3feaf0bf1a5ca298              # double 0.84188799999999997
	.quad	0x3fe10b19a415f45e              # double 0.532605
	.quad	0x3fe3d4d1e96c3fc4              # double 0.61972899999999997
	.quad	0x3fbcd1e96c3fc43b              # double 0.112578
	.quad	0x3fe7f9d909f1f14a              # double 0.74924900000000005
	.quad	0x3fea3ddfc9ff92f3              # double 0.82005300000000003
	.quad	0x3fe351372a38b8ae              # double 0.60366399999999998
	.quad	0x3fe8fcc9ea9a3d2e              # double 0.78085800000000005
	.quad	0x3fdd11cb039ef0f1              # double 0.45421099999999998
	.quad	0x3fd70ecfa69be09c              # double 0.36027900000000002
	.quad	0x3fd692ccf6be37df              # double 0.35271000000000002
	.quad	0x3fe8da2d72ffd1dd              # double 0.77663300000000002
	.quad	0x3fdaccd530489d28              # double 0.41875200000000001
	.quad	0x3fc8503fb3743633              # double 0.18994900000000001
	.quad	0x3fda3d74d594f26b              # double 0.410001
	.quad	0x3feb5eedcc20d563              # double 0.85533800000000004
	.quad	0x3fe646f36ef80560              # double 0.69616100000000003
	.quad	0x3fb2974a3400b88d              # double 0.072621000000000005
	.quad	0x3fd8e0f3cb3e5754              # double 0.38873000000000002
	.quad	0x3fe455e28aa43351              # double 0.63548400000000005
	.quad	0x3fe91cae21101b00              # double 0.78475099999999998
	.quad	0x3fef7570c564f97f              # double 0.98308600000000001
	.quad	0x3fdc1e4f765fd8ae              # double 0.43935000000000002
	.quad	0x3fd3054ac29bf163              # double 0.29719800000000002
	.quad	0x3fe9d8afc47e49b2              # double 0.807701
	.quad	0x3fcaf63800218def              # double 0.21063899999999999
	.quad	0x3fde88b545c78a6e              # double 0.47709400000000002
	.quad	0x3fe10b0f27bb2fec              # double 0.53259999999999996
	.quad	0x3fe4041aac53b081              # double 0.62550099999999997
	.quad	0x3fef80c73abc9470              # double 0.98446999999999996
	.quad	0x3fdc2f5126634118              # double 0.440388
	.quad	0x3fd7f0f5a1016ce8              # double 0.37408200000000003
	.quad	0x3fd128283d35eb74              # double 0.26807599999999998
	.quad	0x3feb2bf11f926c7f              # double 0.84911400000000004
	.quad	0x3fd11a9fbe76c8b4              # double 0.26724999999999999
	.quad	0x3fde3bf727136a40              # double 0.47241
	.quad	0x3fd5f99806f26289              # double 0.34335900000000003
	.quad	0x3fd75e28aa433509              # double 0.365122
	.quad	0x3fdd92bc2fc69729              # double 0.46208100000000002
	.quad	0x3fb97ce52deca255              # double 0.099561999999999998
	.quad	0x3fe5fc47e49b1fac              # double 0.68704600000000005
	.quad	0x3f9b8d3f1843c3a4              # double 0.026905999999999999
	.quad	0x3fdc9a9da597d49d              # double 0.44693699999999997
	.quad	0x3fe201450efdc9c5              # double 0.56265500000000002
	.quad	0x3fe346d3f9e7b80b              # double 0.60239600000000004
	.quad	0x3fd820bc382a12f9              # double 0.376998
	.quad	0x3fccb7cbb3c81909              # double 0.224359
	.quad	0x3fef101b003686a5              # double 0.97071600000000002
	.quad	0x3fc496c3fc43b2dd              # double 0.16085099999999999
	.quad	0x3fde9270b06c43f6              # double 0.477688
	.quad	0x3fef4faeff5c6c12              # double 0.97847700000000004
	.quad	0x3fe91b1960fa15db              # double 0.78455799999999998
	.quad	0x3fe9bde82d7b634e              # double 0.80443200000000004
	.quad	0x3fef942917507e9e              # double 0.98683600000000005
	.quad	0x3faf398e97071822              # double 0.060985999999999999
	.quad	0x3fef579af1886df8              # double 0.97944399999999998
	.quad	0x3feabd7f51efb6dd              # double 0.83563200000000004
	.quad	0x3fddb61fe21d96ea              # double 0.46424100000000001
	.quad	0x3fe4a684cf0739b0              # double 0.64532699999999998
	.quad	0x3fd0f09d8c6d612c              # double 0.26468599999999998
	.quad	0x3fdd61cbccf28c7a              # double 0.459094
	.quad	0x3fe649ba5e353f7d              # double 0.69650000000000001
	.quad	0x3fd35fcc1871e6cd              # double 0.30272199999999999
	.quad	0x3fe89e8815e39714              # double 0.76935200000000003
	.quad	0x3fdb3760bf5d7881              # double 0.42525499999999999
	.quad	0x3fca504816f0068e              # double 0.20557500000000001
	.quad	0x3fe3ff06705c896e              # double 0.62488100000000002
	.quad	0x3fd1bda0dfdef848              # double 0.27719899999999997
	.quad	0x3fe02a68f4b61fe2              # double 0.50517699999999999
	.quad	0x3fdd47ecfe9b7bf2              # double 0.45751500000000001
	.quad	0x3fb96744b2b777d1              # double 0.099232000000000001
	.quad	0x3fea1a91105e1c15              # double 0.815743
	.quad	0x3feac8e68e3ef284              # double 0.83702399999999999
	.quad	0x3fbd8cb07d0aed9a              # double 0.115428
	.quad	0x3feb145d851654d6              # double 0.84623599999999999
	.quad	0x3fdb09c7ffde7211              # double 0.42247200000000001
	.quad	0x3fcb042d8c2a454e              # double 0.211065
	.quad	0x3fd8518f3eccc469              # double 0.37997799999999998
	.quad	0x3fe9f2d3c792d128              # double 0.81089199999999995
	.quad	0x3fdf7caea747d806              # double 0.49198500000000001
	.quad	0x3fdc460242d05f29              # double 0.44177300000000003
	.quad	0x3f96052502eec7c9              # double 0.021503999999999999
	.quad	0x3fe95f84cad57bc8              # double 0.79291
	.quad	0x3fc582dbe7f2c301              # double 0.16805600000000001
	.quad	0x3fe47c19c17225b7              # double 0.64014899999999997
	.quad	0x3fd55d894812be49              # double 0.33383400000000002
	.quad	0x3fec447e49b1fab9              # double 0.88336099999999995
	.quad	0x3fb7dd441355475a              # double 0.093219999999999997
	.quad	0x3fe15b50f40e5a36              # double 0.54239700000000002
	.quad	0x3feaea012599ed7c              # double 0.84106499999999995
	.quad	0x3fc6cadddf43c7d6              # double 0.178066
	.quad	0x3f713c68661ae70c              # double 0.0042079999999999999
	.quad	0x3fdca70d1fa33376              # double 0.44769599999999998
	.quad	0x3fb4a16a48733659              # double 0.080588000000000007
	.quad	0x3fec09c5e6ff7dfa              # double 0.876193
	.quad	0x3fe1d0e560418937              # double 0.55674999999999997
	.quad	0x3fcb3de1e2de8709              # double 0.21282599999999999
	.quad	0x3fe6075d56f32bdc              # double 0.68839899999999998
	.quad	0x3fe2950b955f7836              # double 0.58069400000000004
	.quad	0x3fe3f23aafff36ac              # double 0.62331899999999996
	.quad	0x3fd7548a9bcfd4bf              # double 0.364535
	.quad	0x3fe2a7aa68f4b620              # double 0.58296700000000001
	.quad	0x3fccdeb0fadf2ecf              # double 0.225546
	.quad	0x3feab107746887a9              # double 0.83411000000000002
	.quad	0x3fc83a9f383f0baf              # double 0.18928900000000001
	.quad	0x3fe9bade225fa659              # double 0.80406100000000003
	.quad	0x3fd0f911cf355cd9              # double 0.26520199999999999
	.quad	0x3fe2e8c8abd5dc40              # double 0.590916
	.quad	0x3fd1419e30014f8b              # double 0.26962999999999998
	.quad	0x3fa1d55e6bc621b8              # double 0.034831000000000001
	.quad	0x3fe09231c64ba94c              # double 0.51784600000000003
	.quad	0x3fec7b0b39192642              # double 0.89002000000000003
	.quad	0x3fe3916ebd4cfd09              # double 0.61150300000000002
	.quad	0x3fd7f93ff25e56cd              # double 0.37458799999999998
	.quad	0x3fe3ede1198aeb81              # double 0.62278800000000001
	.quad	0x3fc0cbd1244a6224              # double 0.13122
	.quad	0x3fe27c914b167ec8              # double 0.57770600000000005
	.quad	0x3fd1e1c58255b036              # double 0.27940500000000001
	.quad	0x3fef44c7b02d59d5              # double 0.97714599999999995
	.quad	0x3fce7b6fe2e6ea85              # double 0.23814199999999999
	.quad	0x3fe427f8012dfd69              # double 0.62987899999999997
	.quad	0x3fead0a02b841249              # double 0.83796700000000002
	.quad	0x3fd0e364bec679cc              # double 0.26387899999999997
	.quad	0x3fd233f85510d38d              # double 0.28442200000000001
	.quad	0x3fd2f672b884406c              # double 0.296292
	.quad	0x3fe605729b280f13              # double 0.68816500000000003
	.quad	0x3fe7ec8d5c74751d              # double 0.74762600000000001
	.quad	0x3fea9c193b3a68b2              # double 0.83155500000000004
	.quad	0x3fe67d8adab9f55a              # double 0.70282500000000003
	.quad	0x3fd5c43f5f91600f              # double 0.34010299999999999
	.quad	0x3fda5c5718eb8950              # double 0.41188599999999997
	.quad	0x3fd1775b81301648              # double 0.27290999999999999
	.quad	0x3fe1f2606fac6046              # double 0.56083700000000003
	.quad	0x3fea089a02752546              # double 0.81355
	.quad	0x3fea025e13b18dac              # double 0.81278899999999998
	.quad	0x3fd8f89c5e6ff7e0              # double 0.39017400000000002
	.quad	0x3fea6006d0d4994a              # double 0.82422200000000001
	.quad	0x3fe52771c970f7ba              # double 0.66106500000000001
	.quad	0x3fe2b84db9c7368b              # double 0.58499800000000002
	.quad	0x3fdffc610f0e90bc              # double 0.49977899999999997
	.quad	0x3fa949e8815e3971              # double 0.049391999999999998
	.quad	0x3fe78caa326e1156              # double 0.73592100000000005
	.quad	0x3fe3d7eaa2a0a958              # double 0.62010699999999996
	.quad	0x3fee6a8112ba16e8              # double 0.95050100000000004
	.quad	0x3fe5e84cf0739b02              # double 0.68460699999999997
	.quad	0x3fe020642396073e              # double 0.50395400000000001
	.quad	0x3fc221ea35935fc4              # double 0.14166000000000001
	.quad	0x3f87ebaf102363b2              # double 0.011679999999999999
	.quad	0x3fe04b44a1f08030              # double 0.50918799999999997
	.quad	0x3fe64784230fcf81              # double 0.69623000000000002
	.quad	0x3fdc50763a190082              # double 0.442411
	.quad	0x3fe801f31f46ed24              # double 0.75023799999999996
	.quad	0x3fe4c7e49b1fab97              # double 0.64940100000000001
	.quad	0x3fdb9667b5f1bef5              # double 0.43105500000000002
	.quad	0x3fd2d8e0008637bd              # double 0.294487
	.quad	0x3fedf4128bf3bea9              # double 0.93604399999999999
	.quad	0x3fde3a7daa4fca43              # double 0.47232000000000002
	.quad	0x3fab061c79b34a45              # double 0.052781000000000002
	.quad	0x3fd669f4906034f4              # double 0.350217
	.quad	0x3fd028954a7f8013              # double 0.25247700000000001
	.quad	0x3fa04ec636b09635              # double 0.031850999999999997
	.quad	0x3fecf521144cbe1f              # double 0.90492300000000003
	.quad	0x3fec3762d83c6c98              # double 0.88176100000000002
	.quad	0x3fcebddb9841aac5              # double 0.24016899999999999
	.quad	0x3fd98869c66d373b              # double 0.398951
	.quad	0x3fee8a4c1ebc83a9              # double 0.95438199999999995
	.quad	0x3fc958969a0ad8a1              # double 0.198016
	.quad	0x3fb287b139c94f6a              # double 0.072383000000000003
	.quad	0x3fd4bd3804534bd7              # double 0.32404899999999998
	.quad	0x3fba13e3e29307af              # double 0.101866
	.quad	0x3fe1afa5093964a6              # double 0.55269100000000004
	.quad	0x3fb19fe43675ddd3              # double 0.068846000000000004
	.quad	0x3fe9d4562e09fe87              # double 0.80717000000000005
	.quad	0x3fdc93ccd0fe8ab5              # double 0.446521
	.quad	0x3fe57296f6512a95              # double 0.670238
	.quad	0x3fede6cd29131ec1              # double 0.93442400000000003
	.quad	0x3fba13a0c6b484d7              # double 0.10186199999999999
	.quad	0x3fe6ad4f5903a754              # double 0.70865599999999995
	.quad	0x3fd29bf9c62a1b5c              # double 0.29076999999999997
	.quad	0x3fe512923e5b8562              # double 0.65851700000000002
	.quad	0x3fc43e5321e603d5              # double 0.15815199999999999
	.quad	0x3fdd4e7253da72a8              # double 0.45791300000000001
	.quad	0x3fb98c08b75ea67f              # double 0.099793000000000007
	.quad	0x3fe57d3b29a1b9fa              # double 0.67153700000000005
	.quad	0x3feee3065f9591cd              # double 0.96521299999999998
	.quad	0x3fea94d940789614              # double 0.83067000000000001
	.quad	0x3fcabee807bbb624              # double 0.208951
	.quad	0x3fe4c6ac215b9a5b              # double 0.64925200000000005
	.quad	0x3fe69bc558644524              # double 0.706515
	.quad	0x3fe3e12e83a109d0              # double 0.62123799999999996
	.quad	0x3fcd06466b1e5c0c              # double 0.22675400000000001
	.quad	0x3fdc726d04e618ce              # double 0.44448399999999999
	.quad	0x3fecfc08fa7a8501              # double 0.90576599999999996
	.quad	0x3fd143675ddd2ae9              # double 0.26973900000000001
	.quad	0x3fe2550ebaade658              # double 0.57288300000000003
	.quad	0x3fda6adf71eafee7              # double 0.412773
	.quad	0x3fd31bc98a222d51              # double 0.29857099999999998
	.quad	0x3fe7150dae3e6c4c              # double 0.72131999999999996
	.quad	0x3fd42b777d0f1f58              # double 0.31515300000000002
	.quad	0x3fdac49ba5e353f8              # double 0.41825000000000001
	.quad	0x3fed20ab71327243              # double 0.91023799999999999
	.quad	0x3fee125bb7b6bb13              # double 0.93974100000000005
	.quad	0x3fc52e6a76965f52              # double 0.16547899999999999
	.quad	0x3fee6553ac4f7ec3              # double 0.94986899999999996
	.quad	0x3fead564b662fdfc              # double 0.83854899999999998
	.quad	0x3fde01eeed8904f7              # double 0.46886800000000001
	.quad	0x3fe07b99d451fc4c              # double 0.51508799999999999
	.quad	0x3fed570c564f97ee              # double 0.91687600000000002
	.quad	0x3fe04dd72367e415              # double 0.50950200000000001
	.quad	0x3fea7f5e84f09529              # double 0.82804800000000001
	.quad	0x3fbd774256bca537              # double 0.11510099999999999
	.quad	0x3fe99dffc5479d4e              # double 0.80053700000000005
	.quad	0x3fb16861e92923e6              # double 0.067999000000000004
	.quad	0x3fe1a6a444178705              # double 0.55159199999999997
	.quad	0x3fe2892ab68cef67              # double 0.57924399999999998
	.quad	0x3fe4913a4f8726d0              # double 0.64272799999999997
	.quad	0x3fe89c842fa50939              # double 0.76910599999999996
	.quad	0x3fee1cf355cd91ef              # double 0.94103400000000004
	.quad	0x3fd86b37867f0aa2              # double 0.38154399999999999
	.quad	0x3fbd4cfd08d4bad8              # double 0.114456
	.quad	0x3fee027fa1a0cf18              # double 0.93780499999999999
	.quad	0x3fc85d3996fa82e8              # double 0.19034499999999999
	.quad	0x3fe9db3bfb58d152              # double 0.80801199999999995
	.quad	0x3fe75c182ecaeea6              # double 0.72999199999999997
	.quad	0x3fe0a799a1fd156a              # double 0.520459
	.quad	0x3fc87ac81d3aa36a              # double 0.191247
	.quad	0x3fec80c73abc9470              # double 0.89071999999999996
	.quad	0x3fc7154003254e6e              # double 0.180336
	.quad	0x3feb199780baa583              # double 0.84687400000000002
	.quad	0x3fde99780baa582e              # double 0.47811700000000001
	.quad	0x3fefb93ab430f495              # double 0.99136100000000004
	.quad	0x3fac2e557de0d66f              # double 0.055041
	.quad	0x3fc2d66f0cfe1544              # double 0.14716899999999999
	.quad	0x3fdfb3e9a6f826ee              # double 0.49535600000000002
	.quad	0x3fec63992c8c5005              # double 0.887158
	.quad	0x3fdc376922d948dc              # double 0.440882
	.quad	0x3fcea8da7f3cf701              # double 0.23952799999999999
	.quad	0x3fc81c714fce746d              # double 0.18836800000000001
	.quad	0x3fb96cd6c2efd439              # double 0.099317000000000003
	.quad	0x3fe03fd50225742e              # double 0.50779200000000002
	.quad	0x3fecc3b0c4588a05              # double 0.89888800000000002
	.quad	0x3fb7676ea4228998              # double 0.091422000000000003
	.quad	0x3fedc4dec1c1d6d0              # double 0.93028200000000005
	.quad	0x3fe4c6e2a80064aa              # double 0.64927800000000002
	.quad	0x3fe7972abef06b38              # double 0.73720300000000005
	.quad	0x3fde7060bb2bba99              # double 0.475609
	.quad	0x3fd31a975afaf859              # double 0.29849799999999999
	.quad	0x3fe4004b7f5a5333              # double 0.62503600000000004
	.quad	0x3fea54bf0995aaf8              # double 0.82284500000000005
	.quad	0x3fdd7c49fd7a13c2              # double 0.46071099999999998
	.quad	0x3fd618b934699418              # double 0.34525899999999998
	.quad	0x3fae366d7a56de33              # double 0.059008999999999999
	.quad	0x3fec33f42352eb5f              # double 0.88134199999999996
	.quad	0x3fcb6ef8055fbb51              # double 0.21432399999999999
	.quad	0x3fe58642396073de              # double 0.67263899999999999
	.quad	0x3fc63b3636f3b214              # double 0.173682
	.quad	0x3fceb862b27cbf6e              # double 0.24000199999999999
	.quad	0x3fc2d594f26aec07              # double 0.147143
	.quad	0x3fe0d145d851654d              # double 0.52554599999999996
	.quad	0x3fe788893b7d8490              # double 0.73541699999999999
	.quad	0x3fd52f1a9fbe76c9              # double 0.33100000000000002
	.quad	0x3fefeb76709fa54c              # double 0.99749299999999996
	.quad	0x3fd96c8711d798d9              # double 0.39724900000000002
	.quad	0x3fecaabef06b3786              # double 0.89584299999999994
	.quad	0x3fe98945f9df548f              # double 0.79800700000000002
	.quad	0x3feb438f36694899              # double 0.851997
	.quad	0x3fd62674080f98fa              # double 0.34609699999999999
	.quad	0x3fe2fa6bd6e8af81              # double 0.59306899999999996
	.quad	0x3fe14f7878b7a1c2              # double 0.54095099999999996
	.quad	0x3fdc681ecd4aa10e              # double 0.443855
	.quad	0x3fcfdb5525cc4263              # double 0.24888099999999999
	.quad	0x3fdb969e3c968944              # double 0.43106800000000001
	.quad	0x3fbb94c87980f55e              # double 0.107739
	.quad	0x3f906ee30caa326e              # double 0.016048
	.quad	0x3fc1eee525892685              # double 0.14010300000000001
	.quad	0x3fe485b5b70691ea              # double 0.64132199999999995
	.quad	0x3fe9fd47bedb7282              # double 0.812168
	.quad	0x3fb3dd334c5da6a4              # double 0.077593999999999996
	.quad	0x3fd2a1c68ec52a41              # double 0.29112399999999999
	.quad	0x3fe829a1b9f98b72              # double 0.75508200000000003
	.quad	0x3fd024af0bf1a5ca              # double 0.25223899999999999
	.quad	0x3f8bf401c4fc1df3              # double 0.013649
	.quad	0x3fe828e0c9d9d346              # double 0.75499000000000005
	.quad	0x3feadadfb506dd6a              # double 0.83921800000000002
	.quad	0x3fe9343fa2ad3e92              # double 0.78762799999999999
	.quad	0x3fe8433f85510d39              # double 0.75820900000000002
	.quad	0x3fbd72abef06b378              # double 0.11503099999999999
	.quad	0x3fe6c4ed6fda836f              # double 0.71153900000000003
	.quad	0x3fc65fc7e6b3fea0              # double 0.17479800000000001
	.quad	0x3fd264ba94bbe447              # double 0.28739799999999999
	.quad	0x3fefd62174c4cdfb              # double 0.99488900000000002
	.quad	0x3fe91e1b089a0275              # double 0.78492499999999998
	.quad	0x3fe8fa69be09bb6b              # double 0.78056800000000004
	.quad	0x3fbb641700cd8559              # double 0.10699599999999999
	.quad	0x3fe1cf7878b7a1c2              # double 0.55657599999999996
	.quad	0x3fea8a47ecfe9b7c              # double 0.82938
	.quad	0x3fe65d5b24e9c454              # double 0.69889599999999996
	.quad	0x3fe2f1348b220792              # double 0.59194400000000003
	.quad	0x3fd78398a65492ff              # double 0.36740699999999998
	.quad	0x3fee7f151e75360d              # double 0.953013
	.quad	0x3fb1f85d744f5d35              # double 0.070195999999999995
	.quad	0x3fe4e61f18c9fb61              # double 0.65309099999999998
	.quad	0x3fec25aee631f8a1              # double 0.87960000000000005
	.quad	0x3fc8867ad8e43244              # double 0.191604
	.quad	0x3fe0930df9bdc6a0              # double 0.51795100000000005
	.quad	0x3fe80856e696a26e              # double 0.75101799999999996
	.quad	0x3feffa311e85fd05              # double 0.99929100000000004
	.quad	0x3fda38151a437825              # double 0.40967300000000001
	.quad	0x3fa1be2b4959e625              # double 0.034653999999999997
	.quad	0x3fcc1c68ec52a412              # double 0.21961700000000001
	.quad	0x3fe167381d7dbf48              # double 0.54384999999999994
	.quad	0x3fd26801711947d0              # double 0.28759800000000002
	.quad	0x3fc15818c5c9a34d              # double 0.13550100000000001
	.quad	0x3fe4e9595feda661              # double 0.65348499999999998
	.quad	0x3fede5eaab042529              # double 0.93431600000000004
	.quad	0x3fed21ee675147f1              # double 0.91039199999999998
	.quad	0x3feb520d130df9be              # double 0.85376600000000002
	.quad	0x3fecbebbfd71b047              # double 0.89828300000000005
	.quad	0x3fe75069a4df47fa              # double 0.72856600000000005
	.quad	0x3fb9323fee2c98e5              # double 0.098422999999999997
	.quad	0x3fe3086594af4f0e              # double 0.59477500000000005
	.quad	0x3fc468a936c58eeb              # double 0.159444
	.quad	0x3fd1eebb341e14be              # double 0.280196
	.quad	0x3fa0e757928e0c9e              # double 0.033015000000000003
	.quad	0x3fd15a89b951c5c5              # double 0.27115099999999998
	.quad	0x3fdbdeb0fadf2ecf              # double 0.43546699999999999
	.quad	0x3fdb3471f79420b4              # double 0.42507600000000001
	.quad	0x3fe8a7a41e57d9dc              # double 0.77046400000000003
	.quad	0x3facc100e6afcce2              # double 0.056160000000000002
	.quad	0x3fcf1c3ac929aa1d              # double 0.24304899999999999
	.quad	0x3fbf3797460242d0              # double 0.12194199999999999
	.quad	0x3fe366106ab14ec2              # double 0.606209
	.quad	0x3fd0db2f661f18ca              # double 0.263378
	.quad	0x3fb43eb7cbb3c819              # double 0.079082
	.quad	0x3fabc9eecbfb15b5              # double 0.054274999999999997
	.quad	0x3fcf5568e820e62a              # double 0.24479400000000001
	.quad	0x3fe067903211cb04              # double 0.51264200000000004
	.quad	0x3fe0a85caafbc1ad              # double 0.52055200000000001
	.quad	0x3fe930ea18372e6a              # double 0.78722099999999995
	.quad	0x3fc2e642bf9830e4              # double 0.14765200000000001
	.quad	0x3fe34a70d1fa3337              # double 0.60283699999999996
	.quad	0x3fecc100e6afcce2              # double 0.89856000000000003
	.quad	0x3fdf25072085b185              # double 0.48663499999999998
	.quad	0x3fa17460242d05f3              # double 0.034091000000000003
	.quad	0x3fef1774256bca53              # double 0.97161299999999994
	.quad	0x3fecd102bc72e276              # double 0.90051400000000004
	.quad	0x3fdd8ce703afb7e9              # double 0.461725
	.quad	0x3fe76baf102363b2              # double 0.73189499999999996
	.quad	0x3fea41f85d744f5d              # double 0.82055299999999998
	.quad	0x3fee8379314445aa              # double 0.95354899999999998
	.quad	0x3fefeaa6d2674081              # double 0.997394
	.quad	0x3fed1dadfb506dd7              # double 0.90987300000000004
	.quad	0x3f483f91e646f156              # double 7.3999999999999999E-4
	.quad	0x3fe5a1b9f98b71b9              # double 0.67599200000000004
	.quad	0x3fc0d44567125dd1              # double 0.13147800000000001
	.quad	0x3fba490a350d2807              # double 0.102677
	.quad	0x3f758b827fa1a0cf              # double 0.0052599999999999999
	.quad	0x3fe491a543f1c758              # double 0.64277899999999999
	.quad	0x3fd11394317acc4f              # double 0.26682
	.quad	0x3fed3cf4e874c900              # double 0.91369100000000003
	.quad	0x3fcaa9b499d0203e              # double 0.20830399999999999
	.quad	0x3fe93d44998d0460              # double 0.78872900000000001
	.quad	0x3fead6e47dc37a3e              # double 0.83873200000000003
	.quad	0x3fca0d90e23af31b              # double 0.203539
	.quad	0x3fd118a86d71f362              # double 0.26712999999999998
	.quad	0x3fec4026cc1ca3a5              # double 0.88283100000000003
	.quad	0x3fe9a2b9d3cbc48f              # double 0.80111399999999999
	.quad	0x3fc2e22a2c237479              # double 0.14752699999999999
	.quad	0x3fea351372a38b8b              # double 0.81897900000000001
	.quad	0x3fc4a8b08dd1e53b              # double 0.16139800000000001
	.quad	0x3fcdedf1e0828c37              # double 0.233824
	.quad	0x3fef923c42a66dbd              # double 0.98660099999999995
	.quad	0x3fed3465625a682b              # double 0.91264599999999996
	.quad	0x3fe639cb6848beb6              # double 0.69455500000000003
	.quad	0x3fe6665bea0ba1f5              # double 0.69999500000000003
	.quad	0x3febf570c564f97f              # double 0.87371100000000002
	.quad	0x3fcfd7774aba3876              # double 0.24876300000000001
	.quad	0x3f98c154c985f06f              # double 0.024174999999999999
	.quad	0x3fdff4128bf3bea9              # double 0.49927199999999999
	.quad	0x3fe0ec84f8f8a4c2              # double 0.52887200000000001
	.quad	0x3fd4610f0e90bc7b              # double 0.31842399999999998
	.quad	0x3fe1f1e4b44a1f08              # double 0.560778
	.quad	0x3fd41afc04c8bc9d              # double 0.31414700000000001
	.quad	0x3fd37dfe32a0663c              # double 0.30456499999999997
	.quad	0x3fe92becedd48451              # double 0.78661199999999998
	.quad	0x3fb3b320535c9e67              # double 0.076952000000000007
	.quad	0x3fdd1e53a81dc0db              # double 0.45497599999999999
	.quad	0x3fee710880d801b4              # double 0.95129799999999997
	.quad	0x3fe26d6fda836eb5              # double 0.57585900000000001
	.quad	0x3fb896249a133c1d              # double 0.096041000000000001
	.quad	0x3fe728b08dd1e53b              # double 0.72371700000000005
	.quad	0x3fe299eb6390c910              # double 0.58128899999999994
	.quad	0x3feb887229e90796              # double 0.860406
	.quad	0x3fea563a9f383f0c              # double 0.82302600000000003
	.quad	0x3fe3f7b5aea3161a              # double 0.62398799999999999
	.quad	0x3feca871a3b14a90              # double 0.89556199999999997
	.quad	0x3fdf08637bd05af7              # double 0.48488700000000001
	.quad	0x3f6be09bb6aa4b99              # double 0.0034030000000000002
	.quad	0x3fd7ac8a372606fb              # double 0.36990600000000001
	.quad	0x3fe377a2cecc814d              # double 0.60835399999999995
	.quad	0x3fd3c3c9eecbfb16              # double 0.30882500000000002
	.quad	0x3f7aa92e62131a8f              # double 0.006509
	.quad	0x3fd40a06e9ff0cbb              # double 0.313112
	.quad	0x3fc8ee0f3cb3e575              # double 0.19476499999999999
	.quad	0x3fd2d27c39368273              # double 0.294097
	.quad	0x3fd8bccf28c79f66              # double 0.38652399999999998
	.quad	0x3fd702f72b452828              # double 0.35955599999999999
	.quad	0x3fef459d99029ae5              # double 0.977248
	.quad	0x3febe9a4df47f994              # double 0.87227100000000001
	.quad	0x3f8bacb4289118c2              # double 0.013513000000000001
	.quad	0x3fe2c6da4484944f              # double 0.58677400000000002
	.quad	0x3fe8668c26139000              # double 0.76251800000000003
	.quad	0x3fd62ad3e920c06a              # double 0.34636400000000001
	.quad	0x3fe0e698bb4d4888              # double 0.52814899999999998
	.quad	0x3febf4623d0bfa09              # double 0.87358199999999997
	.quad	0x3fbe48301a79feca              # double 0.11828900000000001
	.quad	0x3fdd90de093532e8              # double 0.46196700000000002
	.quad	0x3fdcdd334c5da6a4              # double 0.45100099999999999
	.quad	0x3fe2f0eb24a6a876              # double 0.59190900000000002
	.quad	0x3fc9606317268d33              # double 0.19825400000000001
	.quad	0x3fc8e7e62dc6e2a8              # double 0.194577
	.quad	0x3fec21ccd9620685              # double 0.87912599999999996
	.quad	0x3fed41a47a9e2bd0              # double 0.91426300000000005
	.quad	0x3fc97204295a6c5d              # double 0.198792
	.quad	0x3feff7bbf93ff25e              # double 0.99899099999999996
	.quad	0x3fee6f6512a94ff0              # double 0.951098
	.quad	0x3fe104e3ffef3908              # double 0.53184699999999996
	.quad	0x3fd825edd052934b              # double 0.37731500000000001
	.quad	0x3fd1fdc9c4da9004              # double 0.281115
	.quad	0x3fdd32d6ece13f4b              # double 0.45622800000000002
	.quad	0x3fe5de6ddf00abf7              # double 0.68340199999999995
	.quad	0x3fe060f7fcfc3f81              # double 0.51183699999999999
	.quad	0x3fe288509bf9c62a              # double 0.57913999999999999
	.quad	0x3fe949ba5e353f7d              # double 0.79025000000000001
	.quad	0x3feafe34b945308c              # double 0.84353100000000003
	.quad	0x3fe4be61cffeb075              # double 0.64824000000000004
	.quad	0x3fd1e52deca2552a              # double 0.279613
	.quad	0x3fe4c8605681ecd5              # double 0.64946000000000004
	.quad	0x3fd6bc4d22c881e4              # double 0.35524299999999998
	.quad	0x3fd910ba6266fd65              # double 0.39164599999999999
	.quad	0x3febaf5dbb9cf9a0              # double 0.86515699999999995
	.quad	0x3fed955714b9cb68              # double 0.92447999999999997
	.quad	0x3fe77544bb1af3a1              # double 0.73306499999999997
	.quad	0x3fe786034f3fd934              # double 0.73510900000000001
	.quad	0x3fb27a0f9096bb99              # double 0.072175000000000003
	.quad	0x3fee7c829cfdd228              # double 0.95269899999999996
	.quad	0x3fdc70153bd16766              # double 0.44434099999999999
	.quad	0x3fda4384ba0e8427              # double 0.41037099999999999
	.quad	0x3fae09fe86833c60              # double 0.05867
	.quad	0x3feb5306a2b17050              # double 0.85388500000000001
	.quad	0x3fec7c5479d4d834              # double 0.89017699999999999
	.quad	0x3fe69a5657fb6998              # double 0.70633999999999997
	.quad	0x3fe063fdd65a1449              # double 0.51220600000000005
	.quad	0x3fd25c4eb56fb8f5              # double 0.28688399999999997
	.quad	0x3fccb302f72b4528              # double 0.224213
	.quad	0x3fcf9799e518f3ed              # double 0.24681400000000001
	.quad	0x3fb0e874c8ffb8b2              # double 0.066046999999999995
	.quad	0x3fe32bc5154866a1              # double 0.59909299999999999
	.quad	0x3fdc1d8a54823854              # double 0.439303
	.quad	0x3fe3761ed5ae1cde              # double 0.60816899999999996
	.quad	0x3fcaef99806f2629              # double 0.21043700000000001
	.quad	0x3fdae79ee02a77a3              # double 0.42038700000000001
	.quad	0x3fc08f648c7192ea              # double 0.12937599999999999
	.quad	0x3fee01cb46bacf74              # double 0.93771899999999996
	.quad	0x3fd0a61e0c5a8156              # double 0.26013900000000001
	.quad	0x3fb7fb9bed30f063              # double 0.093683000000000002
	.quad	0x3fd4af5771001d5c              # double 0.32320199999999999
	.quad	0x3fe7eca03c4b09ea              # double 0.74763500000000005
	.quad	0x3fc6d44567125dd1              # double 0.17835300000000001
	.quad	0x3fe39f77292c4934              # double 0.61321599999999998
	.quad	0x3f946bacf7446f9c              # double 0.019942000000000001
	.quad	0x3fecca9478c868ba              # double 0.899729
	.quad	0x3fc9275ee99a62ed              # double 0.19651399999999999
	.quad	0x3fe5f17df19d66ae              # double 0.68572900000000003
	.quad	0x3fe43de3fbbd7b20              # double 0.63255499999999998
	.quad	0x3fcc858793dd97f6              # double 0.222825
	.quad	0x3fae019b0ab2e169              # double 0.058605999999999998
	.quad	0x3feef6c8b4395810              # double 0.96762499999999996
	.quad	0x3faf0c77dd872f34              # double 0.060642000000000001
	.quad	0x3fd523c85c24c405              # double 0.33030900000000002
	.quad	0x3fde2b302f72b453              # double 0.47138600000000003
	.quad	0x3fe0cd29131ec0b5              # double 0.52504399999999996
	.quad	0x3fd23914f483cafb              # double 0.28473399999999999
	.quad	0x3fb9d872f33ca31e              # double 0.10095899999999999
	.quad	0x3fc5612c6ac215ba              # double 0.16702800000000001
	.quad	0x3fd2ff8a8f3a9b07              # double 0.29684700000000003
	.quad	0x3fe8477143393ab4              # double 0.75872099999999997
	.quad	0x3fec28d002e23290              # double 0.87998200000000004
	.quad	0x3fccf7a0b5ed8d37              # double 0.22630700000000001
	.quad	0x3fdfd3d859c8c932              # double 0.497305
	.quad	0x3fe5a12513b5bf6a              # double 0.67592099999999999
	.quad	0x3fd3490e66cb1034              # double 0.30133399999999999
	.quad	0x3fddd606317268d3              # double 0.46618799999999999
	.quad	0x3fe7e317268d3283              # double 0.746471
	.quad	0x3fe10afe60c38f36              # double 0.53259199999999995
	.quad	0x3fec069835158b82              # double 0.87580499999999994
	.quad	0x3f971c53f39d1b2e              # double 0.022568999999999999
	.quad	0x3fc8927913e81451              # double 0.19197
	.quad	0x3fe8fbb73083558a              # double 0.78072699999999995
	.quad	0x3febff7596851223              # double 0.87493399999999999
	.quad	0x3fe05f2cb641700d              # double 0.51161800000000002
	.quad	0x3fee11ff7164c72a              # double 0.939697
	.quad	0x3fb0653005814941              # double 0.064044000000000004
	.quad	0x3febcb8bef8ceb35              # double 0.86859699999999995
	.quad	0x3fe5d7a99fa11a97              # double 0.68257599999999996
	.quad	0x3fc0b239a38fbca1              # double 0.130439
	.quad	0x3fec3864cb5bb385              # double 0.881884
	.quad	0x3fe54c25072085b2              # double 0.66554500000000005
	.quad	0x3fecc2aa9f7b5aea              # double 0.89876299999999998
	.quad	0x3feb731f46ed245b              # double 0.85780299999999998
	.quad	0x3fe1ed8904f6dfc6              # double 0.56024600000000002
	.quad	0x3fdd12e40852b4d9              # double 0.45427800000000002
	.quad	0x3fb1f01b866e43aa              # double 0.070069999999999993
	.quad	0x3fcedab191dde376              # double 0.24104900000000001
	.quad	0x3fec67c49fd7a13c              # double 0.88766699999999998
	.quad	0x3fe00474d9c6b053              # double 0.50054399999999999
	.quad	0x3fd0c8a7a41e57da              # double 0.26224700000000001
	.quad	0x3fde947496aad1d0              # double 0.47781099999999999
	.quad	0x3fa3734b51372a39              # double 0.037989000000000002
	.quad	0x3fd8923e5b8561d4              # double 0.38392599999999999
	.quad	0x3fd59c62a1b5c7ce              # double 0.33767000000000003
	.quad	0x3fe430db6a1e81cb              # double 0.63096399999999997
	.quad	0x3fe9bbc0a06e9ff1              # double 0.80416900000000002
	.quad	0x3f8886df82b1f688              # double 0.011976000000000001
	.quad	0x3fdd934699418506              # double 0.46211400000000002
	.quad	0x3fc0a5e785b5b707              # double 0.13006300000000001
	.quad	0x3fef5054ac29bf16              # double 0.97855599999999998
	.quad	0x3fd377292c493426              # double 0.30414799999999997
	.quad	0x3fe8603f705857b0              # double 0.76174900000000001
	.quad	0x3fbc5baf533f4235              # double 0.110774
	.quad	0x3fdee731d2e0e304              # double 0.48286099999999998
	.quad	0x3fdaabbcb1cc9646              # double 0.41673199999999999
	.quad	0x3fd6f32bdc26dce4              # double 0.35859200000000002
	.quad	0x3fbd4b380cb6c7a8              # double 0.114429
	.quad	0x3fe2022bbecaab8a              # double 0.56276499999999996
	.quad	0x3fd1923e5b8561d4              # double 0.27455099999999999
	.quad	0x3fc13eab367a0f91              # double 0.13472500000000001
	.quad	0x3fcd7d41743e963e              # double 0.23038500000000001
	.quad	0x3febaa454de7ea60              # double 0.86453500000000005
	.quad	0x3feecdf47f993d53              # double 0.96264099999999996
	.quad	0x3fe7c62a1b5c7cd9              # double 0.74294000000000004
	.quad	0x3fed8c0053e2d624              # double 0.92334000000000004
	.quad	0x3fe12a4db163baba              # double 0.53641399999999995
	.quad	0x3fc18090b417ca21              # double 0.136736
	.quad	0x3fc5d3ed527e5215              # double 0.17052999999999999
	.quad	0x3fcb87bdcf0307f2              # double 0.21507999999999999
	.quad	0x3fe3ed84d338f798              # double 0.62274399999999996
	.quad	0x3fb3dec5f394b7b3              # double 0.077618000000000006
	.quad	0x3fd07a46173b85e8              # double 0.257463
	.quad	0x3fdecce1c58255b0              # double 0.48125499999999999
	.quad	0x3fe936f5caf2d7f9              # double 0.78795899999999996
	.quad	0x3fdb8b2a6b0d9514              # double 0.430369
	.quad	0x3fe880b88ca3e7d1              # double 0.76571299999999998
	.quad	0x3fe160c5a8155d5f              # double 0.54306299999999996
	.quad	0x3feff02c4d65e460              # double 0.99806799999999995
	.quad	0x3fe79804d9839475              # double 0.73730700000000005
	.quad	0x3fe962b063e07a29              # double 0.79329700000000003
	.quad	0x3fd7367a0f9096bc              # double 0.36270000000000002
	.quad	0x3fde8ac5c13fd0d0              # double 0.47721999999999998
	.quad	0x3fe1ae48e8a71de7              # double 0.55252500000000004
	.quad	0x3fc79aae6c8f7553              # double 0.18440799999999999
	.quad	0x3fcb1e7d9988d2a2              # double 0.211868
	.quad	0x3fe114445aa2e3c5              # double 0.53372399999999998
	.quad	0x3fcf72f76e6106ab              # double 0.245696
	.quad	0x3fc5d35653c9abb0              # double 0.170512
	.quad	0x3fd8460242d05f29              # double 0.37927300000000003
	.quad	0x3fd9b9170d62bf12              # double 0.401922
	.quad	0x3fe32749f0e4da0a              # double 0.59854600000000002
	.quad	0x3fc06801711947d0              # double 0.12817400000000001
	.quad	0x3feddf84cad57bc8              # double 0.933535
	.quad	0x3fc4d594f26aec07              # double 0.162768
	.quad	0x3fe68746455eaee2              # double 0.704013
	.quad	0x3fe0ba96d4c33b54              # double 0.52277700000000005
	.quad	0x3fb384ba0e842742              # double 0.076244000000000006
	.quad	0x3fede1bf37b8d3f2              # double 0.93380700000000005
	.quad	0x3fee978b3700474e              # double 0.95599900000000004
	.quad	0x3fdf63779e9d0e99              # double 0.49044599999999999
	.quad	0x3febb827fa1a0cf2              # double 0.86623000000000006
	.quad	0x3fe88e0eb67c2870              # double 0.76734100000000005
	.quad	0x3fe60b30b5aa7158              # double 0.68886599999999998
	.quad	0x3fe2eefc371da37f              # double 0.591673
	.quad	0x3fee1d3cbc48f10b              # double 0.94106900000000004
	.quad	0x3fe02c1d29dc725c              # double 0.50538499999999997
	.quad	0x3f94d8ba40d90e24              # double 0.020358000000000001
	.quad	0x3fe3b71758e21965              # double 0.61609999999999998
	.quad	0x3fe6b804534bd76f              # double 0.70996300000000001
	.quad	0x3fe8d87724fa8b4c              # double 0.776424
	.quad	0x3fd78b7a1c25d074              # double 0.36788799999999999
	.quad	0x3feba7b0b3919264              # double 0.86421999999999998
	.quad	0x3feb77be121ee675              # double 0.85836699999999999
	.quad	0x3fa44241c3efae79              # double 0.039567999999999999
	.quad	0x3fd07f1b69121251              # double 0.25775799999999999
	.quad	0x3fe135fe542e557e              # double 0.53784100000000001
	.quad	0x3fe49e2bcf91a32b              # double 0.64430799999999999
	.quad	0x3fee3a6698bb4d49              # double 0.94462900000000005
	.quad	0x3fee9205bc01a36e              # double 0.95532499999999998
	.quad	0x3fee12ec6bce8534              # double 0.93981000000000003
	.quad	0x3feedcfcc5b8dc55              # double 0.96447599999999999
	.quad	0x3fd9897a67a52ac7              # double 0.39901599999999998
	.quad	0x3fdc825e13b18dac              # double 0.44545699999999999
	.quad	0x3fd21d53cddd6e05              # double 0.28304000000000001
	.quad	0x3feffc08fa7a8501              # double 0.99951599999999996
	.quad	0x3fecb280f12c27a6              # double 0.89678999999999998
	.quad	0x3fd1675579af1887              # double 0.27193200000000001
	.quad	0x3fd015336deb95e6              # double 0.25129400000000002
	.quad	0x3fd9a77e5eaab042              # double 0.40084799999999998
	.quad	0x3fbe8f5c28f5c28f              # double 0.119375
	.quad	0x3fcc4dd2f1a9fbe7              # double 0.22112499999999999
	.quad	0x3fd020e6299524c0              # double 0.25200800000000001
	.quad	0x3fca76f2a5a469d7              # double 0.20675499999999999
	.quad	0x3fee9dadfb506dd7              # double 0.95674800000000004
	.quad	0x3fc6b30b5aa71583              # double 0.177339
	.quad	0x3fd30aa21a719b4e              # double 0.29752400000000001
	.quad	0x3fddbc382a12f901              # double 0.464613
	.quad	0x3fd6fa376922d949              # double 0.35902200000000001
	.quad	0x3fec4f440af1cb8a              # double 0.88467600000000002
	.quad	0x3fed250507a6bd6f              # double 0.91076900000000005
	.quad	0x3fef1d12cadddf44              # double 0.97229900000000002
	.quad	0x3fcc800eae18ac9f              # double 0.22265799999999999
	.quad	0x3feb234a87e38eb0              # double 0.84805799999999998
	.quad	0x3fe016787ce95fab              # double 0.50274300000000005
	.quad	0x3fe198e53eb399f6              # double 0.54991400000000001
	.quad	0x3faa2ec28b2a6b0e              # double 0.051138000000000003
	.quad	0x3fd4f7878b7a1c26              # double 0.32760800000000001
	.quad	0x3fe77587d6f97679              # double 0.733097
	.quad	0x3fd14388ebcc6c55              # double 0.26974700000000001
	.quad	0x3fe289edbf8b9baa              # double 0.57933699999999999
	.quad	0x3fec00d5e8d54110              # double 0.87510200000000005
	.quad	0x3fbe328f9f44d445              # double 0.11795899999999999
	.quad	0x3fc3e5f30e7ff584              # double 0.15545500000000001
	.quad	0x3fedb87df5cf2496              # double 0.92877100000000001
	.quad	0x3fe7abe27179bfdf              # double 0.73973199999999995
	.quad	0x3fe30913a4f8726d              # double 0.594858
	.quad	0x3fe6babc947064ed              # double 0.71029500000000001
	.quad	0x3fca8bc9cd3e0bd4              # double 0.20739099999999999
	.quad	0x3febc2a8869c66d3              # double 0.86751199999999995
	.quad	0x3fd7f4b61fe21d97              # double 0.374311
	.quad	0x3fc70f6273929ed4              # double 0.18015700000000001
	.quad	0x3fe8967ec7863bef              # double 0.76837100000000003
	.quad	0x3fb40303c07ee0b1              # double 0.078171000000000004
	.quad	0x3fea5f5275ee99a6              # double 0.82413599999999998
	.quad	0x3fc30164840e171a              # double 0.14848
	.quad	0x3fedaa51e321a2e8              # double 0.927041
	.quad	0x3fef06d2ed783dff              # double 0.96958299999999997
	.quad	0x3fd1781c714fce74              # double 0.27295599999999998
	.quad	0x3fe321a0cf1800a8              # double 0.59785500000000003
	.quad	0x3fe2892ccf6be37e              # double 0.57924500000000001
	.quad	0x3fccfa2f05a708ee              # double 0.226385
	.quad	0x3fe24306e5cd4ed3              # double 0.57068200000000002
	.quad	0x3fb1884c6a3bddfd              # double 0.068486000000000005
	.quad	0x3fdead2135daad60              # double 0.47931699999999999
	.quad	0x3fe833eff1950332              # double 0.75634000000000001
	.quad	0x3fe049b413986339              # double 0.50899700000000003
	.quad	0x3fe30fcb4f1e4b45              # double 0.59567800000000004
	.quad	0x3fd609289dadfb50              # double 0.34430899999999998
	.quad	0x3fdb88a04d12018a              # double 0.43021399999999999
	.quad	0x3fdb4f09528f190d              # double 0.42669899999999999
	.quad	0x3fdaeff1950331e4              # double 0.42089500000000002
	.quad	0x3fb01de26916440f              # double 0.062955999999999998
	.quad	0x3f923ee1bd1ed9e0              # double 0.017818000000000001
	.quad	0x3fcde1b089a02752              # double 0.23344999999999999
	.quad	0x3fc8b0b7c3504c49              # double 0.19289300000000001
	.quad	0x3fbc2b1f687b139d              # double 0.11003300000000001
	.quad	0x3feafc6327ed84d3              # double 0.84330899999999998
	.quad	0x3feca09cc319c5a4              # double 0.89460600000000001
	.quad	0x3fdc965b20b8066c              # double 0.44667699999999999
	.quad	0x3fed3a98eda22f6a              # double 0.91340299999999996
	.quad	0x3fc0e581cf7878b8              # double 0.13200400000000001
	.quad	0x3fef3399f5dfeb8e              # double 0.97504900000000005
	.quad	0x3fe5fbefd00713f0              # double 0.68700399999999995
	.quad	0x3fe1c4a6223e186a              # double 0.55525500000000005
	.quad	0x3feac0379314445b              # double 0.83596400000000004
	.quad	0x3fe47e36d22424a2              # double 0.64040699999999995
	.quad	0x3feabfe7e1fc08fa              # double 0.83592599999999995
	.quad	0x3fd6d34df04ddb55              # double 0.35664699999999999
	.quad	0x3fd681a9b8cb8e08              # double 0.35166399999999998
	.quad	0x3fe2a7ac81d3aa37              # double 0.58296800000000004
	.quad	0x3fe604816f0068dc              # double 0.68805000000000005
	.quad	0x3fd019ac79702e66              # double 0.25156699999999999
	.quad	0x3fe8d6e8af81626b              # double 0.77623399999999998
	.quad	0x3fe23a9d1f601798              # double 0.56965500000000002
	.quad	0x3fd5db65ecc3e319              # double 0.34151599999999999
	.quad	0x3fdb1b7e0ac7da1f              # double 0.42355300000000001
	.quad	0x3fe80ff972474539              # double 0.75195000000000001
	.quad	0x3fc2dbdf8f473040              # double 0.14733499999999999
	.quad	0x3fef28b2a6b0d951              # double 0.97371799999999997
	.quad	0x3fe205f6ba0620ab              # double 0.56322799999999995
	.quad	0x3fa12dba4d6e47dc              # double 0.033551999999999998
	.quad	0x3fde5881a1554fbe              # double 0.47415200000000002
	.quad	0x3feb0995aaf78fef              # double 0.84492
	.quad	0x3fecbc0e38a7e73a              # double 0.89795599999999998
	.quad	0x3febf85729b280f1              # double 0.87406499999999998
	.quad	0x3fc4387df5cf2496              # double 0.157974
	.quad	0x3fe3c52c59fb1e19              # double 0.61781900000000001
	.quad	0x3fba0157eed45e92              # double 0.10158300000000001
	.quad	0x3fadd1a21ea35936              # double 0.05824
	.quad	0x3fe0c55eaee2003b              # double 0.52409300000000003
	.quad	0x3fee82adc4c9c90c              # double 0.95345199999999996
	.quad	0x3fe3db6e503fb374              # double 0.62053599999999998
	.quad	0x3fdb09a240314877              # double 0.42246299999999998
	.quad	0x3fcfac6045baf534              # double 0.247448
	.quad	0x3fcccc89b0ee49f5              # double 0.224992
	.quad	0x3fe61888f861a60d              # double 0.69049499999999997
	.quad	0x3fe947de5082cf53              # double 0.79002300000000003
	.quad	0x3fd4444e0daa0cae              # double 0.31666899999999998
	.quad	0x3fc9e97d06bbdbe4              # double 0.20243800000000001
	.quad	0x3fe765b20b8066c3              # double 0.73116400000000004
	.quad	0x3fe239f98b71b8aa              # double 0.569577
	.quad	0x3f8623076c050bd8              # double 0.010808999999999999
	.quad	0x3fee68f29d40ee07              # double 0.95031100000000002
	.quad	0x3fdbcc89b0ee49f5              # double 0.434359
	.quad	0x3fece679463cfb33              # double 0.90313399999999999
	.quad	0x3fef5653c9abb01d              # double 0.97928800000000004
	.quad	0x3fbbd29563a9f384              # double 0.108682
	.quad	0x3fddf2ecf2064239              # double 0.46795199999999998
	.quad	0x3fe36b441bb8c32b              # double 0.60684400000000005
	.quad	0x3fe9cccee5abc0e4              # double 0.80625100000000005
	.quad	0x3fe8bd1ed9dfdac7              # double 0.77308600000000005
	.quad	0x3fc37878b7a1c25d              # double 0.152114
	.quad	0x3fe23d4ae429e0a4              # double 0.56998199999999999
	.quad	0x3fe6feb8d8234224              # double 0.71859399999999996
	.quad	0x3fdea57214f0520d              # double 0.478848
	.quad	0x3fb926202539756d              # double 0.098238000000000006
	.quad	0x3feac9eecbfb15b5              # double 0.83714999999999995
	.quad	0x3fdbf47735c182ed              # double 0.43679600000000002
	.quad	0x3fe5bf9e7b80a9df              # double 0.67964100000000005
	.quad	0x3feae8a50507a6bd              # double 0.84089899999999995
	.quad	0x3fd4e30014f8b589              # double 0.32635500000000001
	.quad	0x3fc59a62ed352221              # double 0.16877400000000001
	.quad	0x3fed86c00da1a933              # double 0.92269900000000005
	.quad	0x3fe7cb9cb6848beb              # double 0.74360499999999996
	.quad	0x3fedda4484944ed7              # double 0.932894
	.quad	0x3fde3ef284167a96              # double 0.47259200000000001
	.quad	0x3fe6e412cf0f9d2c              # double 0.715341
	.quad	0x3fdd0357a355043e              # double 0.45332899999999998
	.quad	0x3fc86876e1deacc9              # double 0.190688
	.quad	0x3fb9933e35c5b4ab              # double 0.099903000000000006
	.quad	0x3fe98cd855970b4a              # double 0.79844300000000001
	.quad	0x3fe52873bc903ea7              # double 0.661188
	.quad	0x3febd55a3a08398a              # double 0.86979399999999996
	.quad	0x3fa9ae4f3343fa2b              # double 0.050158000000000001
	.quad	0x3fed926634117f84              # double 0.92412099999999997
	.quad	0x3f9a5ce5b4245f5b              # double 0.025745000000000001
	.quad	0x3fe0870b8cfbfc65              # double 0.51648499999999997
	.quad	0x3fb1e33269df97ab              # double 0.069873000000000005
	.quad	0x3fea989df1172ef1              # double 0.83113000000000004
	.quad	0x3fd69c12f09d8c6d              # double 0.35327599999999998
	.quad	0x3fc37a13c254a3c6              # double 0.15216299999999999
	.quad	0x3fe442aed1394318              # double 0.63314000000000004
	.quad	0x3fdec18b502ababf              # double 0.48056300000000002
	.quad	0x3fee3ad18d25edd0              # double 0.94467999999999996
	.quad	0x3fb23c42a66dbd73              # double 0.071232000000000004
	.quad	0x3fe7a60f5e41d4b7              # double 0.73902100000000004
	.quad	0x3feb3ac710cb295f              # double 0.85092500000000004
	.quad	0x3fc6de3b8a19c9d6              # double 0.17865700000000001
	.quad	0x3f9a95421c044285              # double 0.02596
	.quad	0x3fe1ce28ed5f138c              # double 0.55641600000000002
	.quad	0x3fd0185058dde7a7              # double 0.25148399999999999
	.quad	0x3fdf578a2a90cd42              # double 0.48971799999999999
	.quad	0x3fe29ab8e8ea39c5              # double 0.58138699999999999
	.quad	0x3fe6e86e7e62dc6e              # double 0.71587299999999998
	.quad	0x3fedc562e09fe868              # double 0.93034499999999998
	.quad	0x3fe46ae7d566cf42              # double 0.63805000000000001
	.quad	0x3fe3311a543f1c76              # double 0.59974400000000005
	.quad	0x3fe67fed20296b33              # double 0.70311599999999996
	.quad	0x3fd08240b780346e              # double 0.25795000000000001
	.quad	0x3fe29f0e4da09cc3              # double 0.58191599999999999
	.quad	0x3fc9199bb2788db0              # double 0.19609399999999999
	.quad	0x3fd131ceaf251c19              # double 0.26866499999999999
	.quad	0x3fc751bd61f5be5e              # double 0.18218200000000001
	.quad	0x3fa6f47b677f6b1a              # double 0.044833999999999999
	.quad	0x3fe0de5f30e7ff58              # double 0.52714499999999997
	.quad	0x3fd3d36f7e3d1cc1              # double 0.30978
	.quad	0x3fe51652bd3c3611              # double 0.65897499999999998
	.quad	0x3fe48a82a5614df9              # double 0.64190800000000003
	.quad	0x3fed78ceb356da01              # double 0.92099699999999995
	.quad	0x3fe5c8a159817b96              # double 0.68074100000000004
	.quad	0x3fe8e060fe47991c              # double 0.77739000000000002
	.quad	0x3fdb67d77fae3609              # double 0.42821300000000001
	.quad	0x3fe2170f7b9e0610              # double 0.56531500000000001
	.quad	0x3fe7795d4e8fb00c              # double 0.73356500000000002
	.quad	0x3f9de6ddf00abf77              # double 0.029201000000000001
	.quad	0x3fdd4eb13dfb0d52              # double 0.457928
	.quad	0x3fee5d2f1a9fbe77              # double 0.94887500000000002
	.quad	0x3fda8b97785729b3              # double 0.41477000000000003
	.quad	0x3fdb54152b0a6fc6              # double 0.42700700000000003
	.quad	0x3fe64b44a1f08030              # double 0.69668799999999997
	.quad	0x3fb803eea209aaa4              # double 0.093810000000000004
	.quad	0x3fea51e321a2e7f7              # double 0.822496
	.quad	0x3fede68e3ef28416              # double 0.93439399999999995
	.quad	0x3fe2fe1b8ed1bf7b              # double 0.59351900000000002
	.quad	0x3fc5f4eca686e7e6              # double 0.171537
	.quad	0x3fd44fdf3b645a1d              # double 0.31737500000000002
	.quad	0x3fe13790fb65668c              # double 0.53803299999999998
	.quad	0x3fe00c34c1a8ac5c              # double 0.50148999999999999
	.quad	0x3fbf80fdc1615ec0              # double 0.123062
	.quad	0x3fd6e82517e77d52              # double 0.35791899999999999
	.quad	0x3fd1b3e1437c5693              # double 0.27660400000000002
	.quad	0x3fe9e3e4abe6a338              # double 0.80906900000000004
	.quad	0x3fb3da61e0c5a815              # double 0.077550999999999995
	.quad	0x3fdbea5b530ced4e              # double 0.43617899999999998
	.quad	0x3fea169a0ad8a116              # double 0.81525899999999996
	.quad	0x3fef52178f68be2f              # double 0.97877099999999994
	.quad	0x3fe71e6eeb702603              # double 0.72246500000000002
	.quad	0x3fd795f2452c59fb              # double 0.36852699999999999
	.quad	0x3fe6e705c896dd27              # double 0.71570100000000003
	.quad	0x3f9e94ab1d4f9c20              # double 0.029864000000000002
	.quad	0x3feba7b4e54f7a92              # double 0.86422200000000005
	.quad	0x3fed5b22d0e56042              # double 0.91737500000000005
	.quad	0x3fe59424e5929670              # double 0.67433399999999999
	.quad	0x3fd2466b1e5c0b9a              # double 0.28554800000000002
	.quad	0x3fbc6aa087ca643d              # double 0.111002
	.quad	0x3fb4c144028e4fb9              # double 0.081073999999999993
	.quad	0x3fe799d883ba3444              # double 0.73753000000000002
	.quad	0x3fec8c0ce91c8eac              # double 0.892096
	.quad	0x3fe2bb384fd2a62b              # double 0.58535400000000004
	.quad	0x3fda466b1e5c0b9a              # double 0.41054800000000002
	.quad	0x3fd514057082491b              # double 0.329347
	.quad	0x3feffffbce4217d3              # double 0.99999800000000005
	.quad	0x3fe2b7cdcca70d20              # double 0.58493700000000004
	.quad	0x3fd5b0ccbc05d52c              # double 0.338916
	.quad	0x3fe4a3d2d87f8876              # double 0.64499799999999996
	.quad	0x3fb766d7a56de332              # double 0.091412999999999994
	.quad	0x3fe820e410b630a9              # double 0.75401499999999999
	.quad	0x3fe8cfd08d4bad7d              # double 0.77536799999999995
	.quad	0x3fee0e368f084620              # double 0.93923500000000004
	.quad	0x3fea1fbc5de9c023              # double 0.81637400000000004
	.quad	0x3fd8e353f7ced917              # double 0.38887500000000003
	.quad	0x3fdc2ae4b0186120              # double 0.44011800000000001
	.quad	0x3fe7b87df5cf2496              # double 0.74127100000000001
	.quad	0x3fd18327674d1633              # double 0.27362999999999998
	.quad	0x3fed58409e55c0fd              # double 0.91702300000000003
	.quad	0x3fed59ec7000431c              # double 0.91722700000000001
	.quad	0x3fe52dba4d6e47dc              # double 0.66183199999999998
	.quad	0x3fd8f1950331e3a8              # double 0.38974500000000001
	.quad	0x3fd3af640639d5e5              # double 0.30758000000000002
	.quad	0x3fd6edd8b60f1b26              # double 0.358267
	.quad	0x3fdc829068986fce              # double 0.445469
	.quad	0x3fee4102ff8ec0f9              # double 0.94543600000000005
	.quad	0x3fca2a80064a9cdc              # double 0.20442199999999999
	.quad	0x3fe2b04039abf338              # double 0.58401499999999995
	.quad	0x3fc0e4fb97bb7308              # double 0.13198799999999999
	.quad	0x3fee9ef30a4e379b              # double 0.95690299999999995
	.quad	0x3fe8f1eafee6fb4c              # double 0.77953099999999997
	.quad	0x3fe460029f16b11c              # double 0.63671999999999995
	.quad	0x3feff90752da9867              # double 0.99914899999999995
	.quad	0x3fe03b0e5e679464              # double 0.50720900000000002
	.quad	0x3fef48ffb8b26395              # double 0.977661
	.quad	0x3fd1337eb28d8666              # double 0.26876800000000001
	.quad	0x3fce528283d35eb7              # double 0.23689299999999999
	.quad	0x3fdf1d19157abb88              # double 0.486151
	.quad	0x3fe3c0181e03f706              # double 0.61719900000000005
	.quad	0x3fad1654d61b2a28              # double 0.056811
	.quad	0x3fed6481f53825e1              # double 0.91851899999999997
	.quad	0x3fe3dbff04577d95              # double 0.62060499999999996
	.quad	0x3fe19cc964628028              # double 0.55038900000000002
	.quad	0x3fd3a8f7db6e5040              # double 0.30718800000000002
	.quad	0x3fd82b0ea18372e7              # double 0.37762800000000002
	.quad	0x3fedb08bb906466b              # double 0.92780099999999999
	.quad	0x3fd0b1e5c0b99913              # double 0.26085799999999998
	.quad	0x3fecb47c73eee526              # double 0.89703200000000005
	.quad	0x3fe44b2fa93af74d              # double 0.63417800000000002
	.quad	0x3fec8969a0ad8a11              # double 0.89177399999999996
	.quad	0x3fea8e368f084620              # double 0.82986000000000004
	.quad	0x3fe234fe79ee02a7              # double 0.56896899999999995
	.quad	0x3fd1418d6909aed5              # double 0.26962599999999998
	.quad	0x3fe0731b152f3c2e              # double 0.51405100000000004
	.quad	0x3fed0b49e01de269              # double 0.90762799999999999
	.quad	0x3fe4f2734f82f512              # double 0.65459599999999996
	.quad	0x3fed377186551937              # double 0.913018
	.quad	0x3fdb082cf52b90a8              # double 0.42237400000000003
	.quad	0x3fa5688377186552              # double 0.041813000000000003
	.quad	0x3fc71cd1c7de5083              # double 0.18056700000000001
	.quad	0x3fef62584f4c6e6e              # double 0.98075500000000004
	.quad	0x3fb7a8c586876e1e              # double 0.092419000000000001
	.quad	0x3fe83178b3700475              # double 0.75603900000000002
	.quad	0x3fc5571d1d4738a4              # double 0.16672100000000001
	.quad	0x3fea4ead0c3d2524              # double 0.82210399999999994
	.quad	0x3fe94acd184c2720              # double 0.790381
	.quad	0x3fa0c9fb6134ce3e              # double 0.032791000000000001
	.quad	0x3fe7c59d99029ae5              # double 0.74287300000000001
	.quad	0x3fb4bdcad14a0a0f              # double 0.081020999999999996
	.quad	0x3fecb456b441bb8c              # double 0.89701399999999997
	.quad	0x3fe5ce52deca2553              # double 0.68143600000000004
	.quad	0x3fc5a35d67ba237d              # double 0.169048
	.quad	0x3fe68094e5d5b24f              # double 0.70319600000000004
	.quad	0x3feee3e6c4c5974e              # double 0.96531999999999996
	.quad	0x3fa0ce91c8eabffd              # double 0.032826000000000001
	.quad	0x3fecd5a7d24180d4              # double 0.90108100000000002
	.quad	0x3fd8fc1df3300de5              # double 0.39038800000000001
	.quad	0x3fe249ea9a3d2d88              # double 0.571523
	.quad	0x3fe50b8066c2acb8              # double 0.65765399999999996
	.quad	0x3fea4067cf1c3266              # double 0.82036200000000004
	.quad	0x3fe45e3fbbd7b203              # double 0.63650499999999999
	.quad	0x3fec2e1ac57e23f2              # double 0.88062799999999997
	.quad	0x3feddaaf78feef5f              # double 0.93294500000000002
	.quad	0x3feaacbea4ebdd33              # double 0.83358699999999997
	.quad	0x3fcc9cdc443914f5              # double 0.22353700000000001
	.quad	0x3f4f10667f90d9d7              # double 9.4799999999999994E-4
	.quad	0x3fd27243137b0707              # double 0.28822399999999998
	.quad	0x3fe370cdc8754f37              # double 0.60751999999999995
	.quad	0x3fec861a60d4562e              # double 0.89137
	.quad	0x3fd93f077ccc0379              # double 0.39447199999999999
	.quad	0x3fe69f623076c051              # double 0.70695600000000003
	.quad	0x3fdbe7c06e19b90f              # double 0.43602000000000002
	.quad	0x3fe2fd9988d2a1f9              # double 0.59345700000000001
	.quad	0x3feafecdd0d8cb08              # double 0.84360400000000002
	.quad	0x3fea3af31b152f3c              # double 0.81969599999999998
	.quad	0x3fe0e45a1cac0831              # double 0.52787499999999998
	.quad	0x3feea697aeddce7d              # double 0.95783600000000002
	.quad	0x3fd285fd04a2fcf0              # double 0.28942800000000002
	.quad	0x3fe77fb480a5accd              # double 0.73433899999999996
	.quad	0x3fe2df548ecd8dbd              # double 0.58976200000000001
	.quad	0x3fd7a9c560c7c0f4              # double 0.36973699999999998
	.quad	0x3fe4f42352eb5f5f              # double 0.654802
	.quad	0x3fda59c065b63d3e              # double 0.41172799999999998
	.quad	0x3fd94f93bc0a06ea              # double 0.395482
	.quad	0x3faa37ef5a964e8b              # double 0.051207999999999997
	.quad	0x3fc09b30728e92d5              # double 0.12973599999999999
	.quad	0x3fe935b2d4d4024b              # double 0.78780499999999998
	.quad	0x3fd3404ea4a8c155              # double 0.30080000000000001
	.quad	0x3fd9bf50e3476295              # double 0.40230199999999999
	.quad	0x3fc9d7b2031ceaf2              # double 0.20189499999999999
	.quad	0x3fd48bb4d48882f1              # double 0.32102700000000001
	.quad	0x3fe7828c36da87a0              # double 0.73468599999999995
	.quad	0x3fe40a0d349be8ff              # double 0.62622699999999998
	.quad	0x3fdb54ac29bf162b              # double 0.42704300000000001
	.quad	0x3fd963886594af4f              # double 0.3967
	.quad	0x3fe7cb2314013ec4              # double 0.74354699999999996
	.quad	0x3fd619b4dcebfec1              # double 0.34531899999999999
	.quad	0x3fd06466b1e5c0ba              # double 0.25612800000000002
	.quad	0x3fb841fea8112ba1              # double 0.094756999999999994
	.quad	0x3fd21715c63ae254              # double 0.28265899999999999
	.quad	0x3fefd466f5019f3c              # double 0.99467799999999995
	.quad	0x3f812fd32c625e9a              # double 0.0083920000000000002
	.quad	0x3fae833c60029f17              # double 0.059595000000000002
	.quad	0x3fe9f47f993d5348              # double 0.81109600000000004
	.quad	0x3fe6cf1a1986b9c3              # double 0.712781
	.quad	0x3fb7affb04ee7c4a              # double 0.092529
	.quad	0x3fd6fe4ffc9795b3              # double 0.35927199999999998
	.quad	0x3f8c914b167ec786              # double 0.013949
	.quad	0x3fd282a9930be0df              # double 0.28922500000000001
	.quad	0x3fa13d5347a5b0ff              # double 0.033671
	.quad	0x3fe71496249a133c              # double 0.72126299999999999
	.quad	0x3fd805814940bbb2              # double 0.375336
	.quad	0x3fdd6d612c6ac216              # double 0.45980100000000002
	.quad	0x3fec394d94078961              # double 0.88199499999999997
	.quad	0x3fe37138bcdfefbf              # double 0.60757099999999997
	.quad	0x3fea4fd8f0c77dd8              # double 0.82224699999999995
	.quad	0x3fe634e3369b9d80              # double 0.69395600000000002
	.quad	0x3fe215ebfa8f7db7              # double 0.56517600000000001
	.quad	0x3f90ac7da1ec4e72              # double 0.016282999999999999
	.quad	0x3fdf6006d0d4994a              # double 0.49023600000000001
	.quad	0x3fa2a8650e779208              # double 0.036441000000000001
	.quad	0x3fce387df5cf2496              # double 0.236099
	.quad	0x3fe52e8c0485a0be              # double 0.66193199999999996
	.quad	0x3fea09c5e6ff7dfa              # double 0.813693
	.quad	0x3fdd81cf7878b7a2              # double 0.46104800000000001
	.quad	0x3fabc2b94d940789              # double 0.054219999999999997
	.quad	0x3fd9f3061c79b34a              # double 0.40545799999999999
	.quad	0x3fe9560e94ee392e              # double 0.79175499999999999
	.quad	0x3fdc7021d10b1fef              # double 0.44434400000000002
	.quad	0x3fc2a7a41e57d9dc              # double 0.14574100000000001
	.quad	0x3fb26266fd651b0d              # double 0.071814000000000003
	.quad	0x3fe706013660e51d              # double 0.71948299999999998
	.quad	0x3fe8897204295a6c              # double 0.76677799999999995
	.quad	0x3fe4a602c9081c2e              # double 0.64526499999999998
	.quad	0x3fec9a06a6e32e38              # double 0.89380199999999999
	.quad	0x3fd91f212d773190              # double 0.39252500000000001
	.quad	0x3f50a569b17481b2              # double 0.001016
	.quad	0x3fbb53f7ced91687              # double 0.10675
	.quad	0x3fe142e770bd017e              # double 0.53941700000000004
	.quad	0x3fdee2584f4c6e6e              # double 0.48256500000000002
	.quad	0x3f97ec7863beec39              # double 0.023362999999999998
	.quad	0x3fed6fda836eb4ea              # double 0.91990400000000005
	.quad	0x3fdcdddf43c7d5ed              # double 0.451042
	.quad	0x3fe8311c6d1e108c              # double 0.75599499999999997
	.quad	0x3fbad5bee3d5fdce              # double 0.104824
	.quad	0x3fa792d1287c200c              # double 0.046042
	.quad	0x3fe3060999dcb578              # double 0.59448699999999999
	.quad	0x3f7148fd9fd36f7e              # double 0.0042199999999999998
	.quad	0x3fe8e801711947d0              # double 0.77832100000000004
	.quad	0x3fce671ef30a4e38              # double 0.23752200000000001
	.quad	0x3fee427e9531550d              # double 0.94561700000000004
	.quad	0x3fe621d323fee2ca              # double 0.69162900000000005
	.quad	0x3fa9a34ca0c282c7              # double 0.050074
	.quad	0x3fe8d933e35c5b4b              # double 0.77651400000000004
	.quad	0x3fa0a3d70a3d70a4              # double 0.032500000000000001
	.quad	0x3fb8bff47735c183              # double 0.096679000000000001
	.quad	0x3fe8bf22c01e68a1              # double 0.77333200000000002
	.quad	0x3fd24f8f8a4c1ebd              # double 0.28610600000000003
	.quad	0x3fdb01eeed8904f7              # double 0.42199300000000001
	.quad	0x3fd99e060fe47992              # double 0.40027000000000001
	.quad	0x3feffaebc408d8ed              # double 0.99938000000000004
	.quad	0x3fcd7e4de3b8a19d              # double 0.23041700000000001
	.quad	0x3fe0db9e8c47a17f              # double 0.52680899999999997
	.quad	0x3fe1feaa2a0a9585              # double 0.56233699999999998
	.quad	0x3fe3d1b0ccbc05d5              # double 0.61934699999999998
	.quad	0x3fc84d65e4606749              # double 0.189862
	.quad	0x3fe162ac322291fb              # double 0.54329499999999997
	.quad	0x3fedf2cf95d4e8fb              # double 0.93589
	.quad	0x3fb3ae9ab29e4d5e              # double 0.076883000000000006
	.quad	0x3fec57060bb2bbaa              # double 0.88562300000000005
	.quad	0x3fc783be6601bc99              # double 0.18370800000000001
	.quad	0x3fcb061c79b34a45              # double 0.21112400000000001
	.quad	0x3fc7bd9cae21101b              # double 0.185474
	.quad	0x3fedb0b9dc2f405f              # double 0.92782299999999995
	.quad	0x3feb6de76427c7c5              # double 0.85716599999999998
	.quad	0x3fdb180d3cff64d0              # double 0.42334300000000002
	.quad	0x3fe2b08787485e3e              # double 0.58404900000000004
	.quad	0x3feb1094a2b9d3cc              # double 0.84577400000000002
	.quad	0x3fe7c477ff151e75              # double 0.74273299999999998
	.quad	0x3fd06a7264a16a48              # double 0.25649699999999998
	.quad	0x3fd08a65492ff4ba              # double 0.25844699999999998
	.quad	0x3fb657eaa2a0a958              # double 0.087278999999999995
	.quad	0x3fea8c1fc8f32379              # double 0.82960500000000004
	.quad	0x3fd69e0e736049ed              # double 0.35339700000000002
	.quad	0x3fd7c12ad81adea9              # double 0.37116500000000002
	.quad	0x3fe51ff92f2b66b6              # double 0.66015299999999999
	.quad	0x3fe31676640a6b94              # double 0.59649200000000002
	.quad	0x3fe91af1886df82b              # double 0.78453899999999999
	.quad	0x3fe96275ab7dc7ac              # double 0.793269
	.quad	0x3fed78705425f202              # double 0.92095199999999999
	.quad	0x3fe67e06961c3697              # double 0.70288399999999995
	.quad	0x3fe7caec8d5c7475              # double 0.74352099999999999
	.quad	0x3fe4b07d0aed99cc              # double 0.64654400000000001
	.quad	0x3fe0792af9a8cdea              # double 0.514791
	.quad	0x3fea925785f8d2e5              # double 0.83036399999999999
	.quad	0x3fe3230b9dc2f406              # double 0.598028
	.quad	0x3fa0e23af31b152f              # double 0.032975999999999998
	.quad	0x3fd2b9496249a134              # double 0.29255900000000001
	.quad	0x3fd75604189374bc              # double 0.36462499999999998
	.quad	0x3fe174a1272c94b4              # double 0.54548700000000006
	.quad	0x3fe855d5f56a7ac8              # double 0.76047799999999999
	.quad	0x3fd5525460aa64c3              # double 0.33315
	.quad	0x3fe609ca18bd6627              # double 0.68869499999999995
	.quad	0x3fecaf533f42352f              # double 0.89640200000000003
	.quad	0x3fe123db3bfb58d1              # double 0.53562699999999996
	.quad	0x3fdd8f041461b6d4              # double 0.46185399999999999
	.quad	0x3febf1a3b14a9047              # double 0.873247
	.quad	0x3fe6054cdb7ae579              # double 0.68814699999999995
	.quad	0x3fe4e90bc7b45f18              # double 0.65344800000000003
	.quad	0x3fd931b584b1ab08              # double 0.39365899999999998
	.quad	0x3fe88ffda4052d66              # double 0.76757699999999995
	.quad	0x3fe23124d099e0e7              # double 0.56849899999999998
	.quad	0x3fd545846e8f29d4              # double 0.332368
	.quad	0x3feb874ea8da7f3d              # double 0.860267
	.quad	0x3fcc56eefa1e3eaf              # double 0.22140299999999999
	.quad	0x3fc0f533f42352eb              # double 0.13248299999999999
	.quad	0x3fc73aabcd78c437              # double 0.181478
	.quad	0x3fd83c18b502abac              # double 0.378668
	.quad	0x3fbc07fed20296b3              # double 0.109497
	.quad	0x3fd2ec7863beec39              # double 0.29568299999999997
	.quad	0x3fbcf9a06a6e32e4              # double 0.11318400000000001
	.quad	0x3fd32e09fe86833c              # double 0.29968499999999998
	.quad	0x3fe3a2b1704ff434              # double 0.61360999999999999
	.quad	0x3fec37b28954a7f8              # double 0.881799
	.quad	0x3fe0cc5fbf83382e              # double 0.52494799999999997
	.quad	0x3fe316c1e364bec6              # double 0.59652799999999995
	.quad	0x3fe1dc0980b24207              # double 0.55810999999999999
	.quad	0x3fbdb71758e21965              # double 0.116075
	.quad	0x3feb6baf102363b2              # double 0.85689499999999996
	.quad	0x3fed411c2a023209              # double 0.91419799999999996
	.quad	0x3fe57aacd9e83e42              # double 0.67122499999999996
	.quad	0x3fc0b85a4f00ef13              # double 0.13062599999999999
	.quad	0x3fd79bf9c62a1b5c              # double 0.36889499999999997
	.quad	0x3fc0c2699c7bcc29              # double 0.13093299999999999
	.quad	0x3febb70691ea78af              # double 0.86609199999999997
	.quad	0x3fd9cc07aaef2c73              # double 0.40307799999999999
	.quad	0x3fe4917f84449dbf              # double 0.64276100000000003
	.quad	0x3fc3da9435ac8a37              # double 0.155108
	.quad	0x3fe0cd940789613d              # double 0.52509499999999998
	.quad	0x3fe0060999dcb578              # double 0.50073699999999999
	.quad	0x3fe7afb3b7521145              # double 0.74019800000000002
	.quad	0x3fa924d099e0e736              # double 0.049109
	.quad	0x3fb304bc27631b58              # double 0.074290999999999996
	.quad	0x3fe67adf2ecf2064              # double 0.70249899999999998
	.quad	0x3fd6c35ce1826677              # double 0.35567399999999999
	.quad	0x3fd5435696e58a33              # double 0.332235
	.quad	0x3fef24f227d028a2              # double 0.97326000000000001
	.quad	0x3feb240b780346dc              # double 0.84814999999999995
	.quad	0x3fc279463cfb3312              # double 0.14432600000000001
	.quad	0x3fdeb0468448cf7d              # double 0.47950900000000002
	.quad	0x3fa4e89656eefa1e              # double 0.040836999999999998
	.quad	0x3fe8da1016ce789e              # double 0.77661899999999995
	.quad	0x3fe8a95208e15012              # double 0.77066900000000005
	.quad	0x3fe84e3de6149c6f              # double 0.75955099999999998
	.quad	0x3fed9e1d2178f68c              # double 0.92555100000000001
	.quad	0x3fdcde225fa658c5              # double 0.45105800000000001
	.quad	0x3f9507e9d94d0dd0              # double 0.020538000000000001
	.quad	0x3feb6e43aa79bbae              # double 0.85721000000000003
	.quad	0x3fe9fcd466f5019f              # double 0.81211299999999997
	.quad	0x3fe112af9a8cdea0              # double 0.53353099999999998
	.quad	0x3feec2f837b4a234              # double 0.96130000000000004
	.quad	0x3feaa3cea6c1a049              # double 0.83249600000000001
	.quad	0x3fe7ba1d323fee2d              # double 0.74146900000000004
	.quad	0x3f93fc43b2dd377e              # double 0.019517
	.quad	0x3feac5f9df548ece              # double 0.83666700000000005
	.quad	0x3fec1b4fe79ee02a              # double 0.87833399999999995
	.quad	0x3fe4c8cf7caa758a              # double 0.64951300000000001
	.quad	0x3fedb022dd7a99fa              # double 0.92775099999999999
	.quad	0x3feaf924af0bf1a6              # double 0.84291300000000002
	.quad	0x3fd0bbecaab8a5ce              # double 0.26146999999999998
	.quad	0x3fd375b3e1437c57              # double 0.30405900000000002
	.quad	0x3fe2d7be9856a37b              # double 0.58883600000000003
	.quad	0x3fe211fd5885d313              # double 0.56469599999999998
	.quad	0x3fd54febd09e12a5              # double 0.33300299999999999
	.quad	0x3fe249b845564b66              # double 0.57149899999999998
	.quad	0x3fe8af5dbb9cf9a0              # double 0.77140699999999995
	.quad	0x3fc350dae3e6c4c6              # double 0.15090500000000001
	.quad	0x3fe39103c8e25c81              # double 0.611452
	.quad	0x3fd2f52b90a78290              # double 0.29621399999999998
	.quad	0x3fefac8a372606fb              # double 0.98981200000000002
	.quad	0x3fd17a919695d91b              # double 0.27310600000000002
	.quad	0x3feeeb9c304ccee6              # double 0.96626100000000004
	.quad	0x3fe5ed97b30f8c65              # double 0.685253
	.quad	0x3fed5b7f1737542a              # double 0.91741899999999998
	.quad	0x3fd861522a6f3f53              # double 0.38094
	.quad	0x3fefa148ba83f4ed              # double 0.98843800000000003
	.quad	0x3febf31b152f3c2e              # double 0.87342600000000004
	.quad	0x3fefa3810e8858ff              # double 0.98870899999999994
	.quad	0x3fe75c054ef459da              # double 0.72998300000000005
	.quad	0x3fd11a1db877ab32              # double 0.26721899999999998
	.quad	0x3fe5929cbab649d4              # double 0.67414700000000005
	.quad	0x3fe89b8cb8e086be              # double 0.768988
	.quad	0x3fda39e279dd3bb0              # double 0.40978300000000001
	.quad	0x3f87ec3547e06962              # double 0.011681
	.quad	0x3fc0b4202d9cf13d              # double 0.130497
	.quad	0x3fd0f19d66adb403              # double 0.26474700000000001
	.quad	0x3fead49b62c77575              # double 0.838453
	.quad	0x3fe099d2391d5800              # double 0.51877700000000004
	.quad	0x3fb0dc65c70435f0              # double 0.065863000000000005
	.quad	0x3fee59a73b42cc2d              # double 0.94844399999999995
	.quad	0x3fe03b5e0f7fcfc4              # double 0.507247
	.quad	0x3fd8e8a2ec28b2a7              # double 0.38919900000000002
	.quad	0x3fecd983947496ab              # double 0.90155200000000002
	.quad	0x3fe7c25f202107b8              # double 0.74247700000000005
	.quad	0x3fd417fc7607c41a              # double 0.31396400000000002
	.quad	0x3fec015a07b352a8              # double 0.87516499999999997
	.quad	0x3fd8867f0aa21a72              # double 0.38320900000000002
	.quad	0x3fa92fd32c625e9a              # double 0.049193000000000001
	.quad	0x3fe783cf2cf95d4f              # double 0.73484000000000005
	.quad	0x3fa1b30728e92d56              # double 0.034569000000000003
	.quad	0x3fea56605ee568a5              # double 0.823044
	.quad	0x3fd02f05a708ede5              # double 0.25286999999999998
	.quad	0x3fd4365cb35f3d7d              # double 0.31581799999999999
	.quad	0x3feba157689ca18c              # double 0.86344500000000001
	.quad	0x3fe7cf41f212d773              # double 0.74404999999999999
	.quad	0x3fd83b9ae0c17657              # double 0.37863799999999997
	.quad	0x3fd4c77143393ab4              # double 0.32467299999999999
	.quad	0x3fedaa62aa19439e              # double 0.92704900000000001
	.quad	0x3fd87a0f9096bb99              # double 0.38245000000000001
	.quad	0x3fce84d76ab58080              # double 0.238429
	.quad	0x3fee3256ffc115df              # double 0.94364499999999996
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	107                             # 0x6b
	.quad	128                             # 0x80
	.quad	141                             # 0x8d
	.quad	153                             # 0x99
	.quad	166                             # 0xa6
	.quad	180                             # 0xb4
	.quad	194                             # 0xc2
	.quad	217                             # 0xd9
	.quad	231                             # 0xe7
	.quad	249                             # 0xf9
	.quad	262                             # 0x106
	.quad	283                             # 0x11b
	.quad	304                             # 0x130
	.quad	319                             # 0x13f
	.quad	330                             # 0x14a
	.quad	343                             # 0x157
	.quad	356                             # 0x164
	.quad	375                             # 0x177
	.quad	384                             # 0x180
	.quad	396                             # 0x18c
	.quad	404                             # 0x194
	.quad	420                             # 0x1a4
	.quad	435                             # 0x1b3
	.quad	460                             # 0x1cc
	.quad	470                             # 0x1d6
	.quad	483                             # 0x1e3
	.quad	494                             # 0x1ee
	.quad	506                             # 0x1fa
	.quad	521                             # 0x209
	.quad	533                             # 0x215
	.quad	550                             # 0x226
	.quad	566                             # 0x236
	.quad	583                             # 0x247
	.quad	597                             # 0x255
	.quad	620                             # 0x26c
	.quad	635                             # 0x27b
	.quad	656                             # 0x290
	.quad	677                             # 0x2a5
	.quad	689                             # 0x2b1
	.quad	707                             # 0x2c3
	.quad	721                             # 0x2d1
	.quad	734                             # 0x2de
	.quad	750                             # 0x2ee
	.quad	766                             # 0x2fe
	.quad	778                             # 0x30a
	.quad	796                             # 0x31c
	.quad	816                             # 0x330
	.quad	829                             # 0x33d
	.quad	844                             # 0x34c
	.quad	857                             # 0x359
	.quad	872                             # 0x368
	.quad	882                             # 0x372
	.quad	896                             # 0x380
	.quad	912                             # 0x390
	.quad	924                             # 0x39c
	.quad	936                             # 0x3a8
	.quad	957                             # 0x3bd
	.quad	974                             # 0x3ce
	.quad	987                             # 0x3db
	.quad	1009                            # 0x3f1
	.quad	1029                            # 0x405
	.quad	1040                            # 0x410
	.quad	1056                            # 0x420
	.quad	1073                            # 0x431
	.quad	1092                            # 0x444
	.quad	1104                            # 0x450
	.quad	1117                            # 0x45d
	.quad	1135                            # 0x46f
	.quad	1149                            # 0x47d
	.quad	1163                            # 0x48b
	.quad	1178                            # 0x49a
	.quad	1195                            # 0x4ab
	.quad	1204                            # 0x4b4
	.quad	1218                            # 0x4c2
	.quad	1231                            # 0x4cf
	.quad	1244                            # 0x4dc
	.quad	1262                            # 0x4ee
	.quad	1274                            # 0x4fa
	.quad	1289                            # 0x509
	.quad	1301                            # 0x515
	.quad	1314                            # 0x522
	.quad	1326                            # 0x52e
	.quad	1343                            # 0x53f
	.quad	1361                            # 0x551
	.quad	1376                            # 0x560
	.quad	1391                            # 0x56f
	.quad	1403                            # 0x57b
	.quad	1416                            # 0x588
	.quad	1423                            # 0x58f
	.quad	1432                            # 0x598
	.quad	1446                            # 0x5a6
	.quad	1467                            # 0x5bb
	.quad	1486                            # 0x5ce
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	14                              # 0xe
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	63                              # 0x3f
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	41                              # 0x29
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	93                              # 0x5d
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	32                              # 0x20
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	28                              # 0x1c
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1500xf64, 12000

	.section	".note.GNU-stack","",@progbits
