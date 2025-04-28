	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
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
	li	a3, 68
	mul	a1, a1, a3
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0f, 0x72, 0x00, 0x11, 0xc0, 0x01, 0x22, 0x11, 0xc4, 0x00, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 192 + 68 * vlenb
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	s10, 304(a0)
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 400(a0)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 392(a0)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 384(a0)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 376(a0)
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 368(a0)
	sd	a0, 24(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	s11, 360(a0)
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	a0, 352(a0)
	sd	a0, 16(sp)                      # 8-byte Folded Spill
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	a0, a0, sp
	ld	s4, 224(a0)
	lwu	a3, 0(a2)
	lwu	a4, 4(a2)
	lwu	a5, 8(a2)
	lwu	a2, 12(a2)
	csrr	t1, vlenb
	li	t6, 80
	li	s5, 9
	vsetvli	a1, zero, e32, m8, ta, ma
	vid.v	v8
	slli	ra, t1, 5
	slli	a1, t1, 1
	vadd.vx	v8, v8, a1
	addi	a0, sp, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	slli	a1, t1, 2
	slli	a4, a4, 32
	or	s2, a4, a3
	slli	t2, t1, 3
	slli	a2, a2, 32
	or	s3, a2, a5
	sub	t5, ra, t2
	slli	t1, t1, 4
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s2, s2, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s2, s3, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	t4, 0
	li	s7, 0
	slli	a2, s2, 3
	add	a2, a2, a7
	lwu	a3, 4(a2)
	lwu	a2, 0(a2)
	slli	a3, a3, 32
	or	a2, a2, a3
	li	a0, 10
	mul	s8, s2, a0
	mul	t0, a2, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s7, s7, 1
	addi	t4, t4, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s5, s7, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s0, 0
	add	a2, s7, s8
	slli	a2, a2, 3
	add	a2, a2, s4
	fld	fa5, 0(a2)
	li	a4, 10
	mv	s6, t4
	mv	a6, t0
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a5, zero, e32, m8, ta, ma
	vmv.v.x	v8, a2
	add	s9, s11, a6
	vsetvli	a2, zero, e64, m8, ta, ma
	vmv.v.i	v16, 0
	addi	a0, sp, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vv	v5, v24, v8
	csrr	a0, vlenb
	li	a2, 43
	mul	a0, a0, a2
	add	a0, a0, sp
	addi	a0, a0, 80
	vs1r.v	v5, (a0)                        # Unknown-size Folded Spill
	vmslt.vv	v4, v28, v12
	vsetvli	a2, zero, e32, m8, ta, ma
	vid.v	v24
	vsetvli	a2, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v8
	vmslt.vv	v3, v28, v12
	add	a5, s9, t5
	csrr	a0, vlenb
	li	a2, 60
	mul	a0, a0, a2
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v16, (a0)                       # Unknown-size Folded Spill
	add	a2, s9, t1
	vmv8r.v	v24, v16
	add	s1, s9, t2
	csrr	a0, vlenb
	slli	a3, a0, 5
	add	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs1r.v	v4, (a0)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v4
	csrr	a0, vlenb
	li	a3, 60
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v8, (a0)                        # Unknown-size Folded Reload
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v8, (a5), v0.t
	csrr	a0, vlenb
	li	a3, 60
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v5
	vle64.v	v24, (a2), v0.t
	csrr	a0, vlenb
	li	a3, 52
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v24, (a0)                       # Unknown-size Folded Spill
	vmv8r.v	v8, v16
	vmv1r.v	v0, v3
	csrr	a0, vlenb
	slli	a0, a0, 5
	add	a0, a0, sp
	addi	a0, a0, 80
	vs1r.v	v3, (a0)                        # Unknown-size Folded Spill
	vle64.v	v8, (s1), v0.t
	csrr	a0, vlenb
	li	a3, 44
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vmv8r.v	v8, v16
	csrr	a0, vlenb
	li	a3, 42
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs1r.v	v7, (a0)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	vle64.v	v8, (s9), v0.t
	csrr	a0, vlenb
	li	a3, 34
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a3, s10, s6
	add	t3, a3, t5
	vmv8r.v	v8, v16
	vmv1r.v	v0, v4
	vle64.v	v8, (t3), v0.t
	csrr	a0, vlenb
	li	t3, 24
	mul	a0, a0, t3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vmv8r.v	v24, v16
	vmv1r.v	v0, v7
	vle64.v	v24, (a3), v0.t
	add	a0, a3, t2
	vmv8r.v	v8, v16
	vmv1r.v	v0, v3
	vle64.v	v8, (a0), v0.t
	csrr	a0, vlenb
	li	t3, 24
	mul	a0, a0, t3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v0, (a0)                        # Unknown-size Folded Reload
	vfmul.vf	v0, v0, fa5
	vfmul.vf	v24, v24, fa5
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v24, (a0)                       # Unknown-size Folded Spill
	csrr	a0, vlenb
	li	t3, 60
	mul	a0, a0, t3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	vfadd.vv	v24, v24, v0
	csrr	a0, vlenb
	li	t3, 24
	mul	a0, a0, t3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v24, (a0)                       # Unknown-size Folded Spill
	vfmul.vf	v8, v8, fa5
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a3, a3, t1
	csrr	a0, vlenb
	li	t3, 43
	mul	a0, a0, t3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl1r.v	v7, (a0)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v7
	vle64.v	v16, (a3), v0.t
	csrr	a0, vlenb
	li	a3, 34
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v8, (a0)                        # Unknown-size Folded Reload
	vfadd.vv	v24, v24, v8
	csrr	a0, vlenb
	li	a3, 60
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vs8r.v	v24, (a0)                       # Unknown-size Folded Spill
	csrr	a0, vlenb
	slli	a3, a0, 5
	add	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl1r.v	v0, (a0)                        # Unknown-size Folded Reload
	csrr	a0, vlenb
	li	a3, 24
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	vse64.v	v24, (a5), v0.t
	csrr	a0, vlenb
	li	a3, 44
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v8, (a0)                        # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vfmul.vf	v16, v16, fa5
	csrr	a0, vlenb
	li	a3, 52
	mul	a0, a0, a3
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	vfadd.vv	v16, v24, v16
	vmv1r.v	v0, v7
	vse64.v	v16, (a2), v0.t
	csrr	a0, vlenb
	slli	a0, a0, 5
	add	a0, a0, sp
	addi	a0, a0, 80
	vl1r.v	v0, (a0)                        # Unknown-size Folded Reload
	vse64.v	v8, (s1), v0.t
	csrr	a0, vlenb
	li	a2, 42
	mul	a0, a0, a2
	add	a0, a0, sp
	addi	a0, a0, 80
	vl1r.v	v0, (a0)                        # Unknown-size Folded Reload
	csrr	a0, vlenb
	li	a2, 60
	mul	a0, a0, a2
	add	a0, a0, sp
	addi	a0, a0, 80
	vl8r.v	v8, (a0)                        # Unknown-size Folded Reload
	vse64.v	v8, (s9), v0.t
	add	s0, s0, a1
	add	a6, a6, ra
	add	s6, s6, ra
	sub	a4, a4, a1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s5, s0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a2, a4
	blt	a4, a1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a2, a1
	j	.LBB0_7
.LBB0_11:
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 0(a0)
	sd	s11, 8(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 16(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 24(a0)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	li	a1, 68
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 192
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 192
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
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
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	assemble_sparse
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
	lui	t1, %hi(.L__constant_10x10xf64)
	addi	t1, t1, %lo(.L__constant_10x10xf64)
	lui	s1, 228023
	lui	t2, 4257
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 41121
	addi	s1, t2, -1526
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, -1536
	vmv.s.x	v11, a0
	addi	s0, sp, 64
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v12, v10
	vse64.v	v12, (t3)
	addi	a0, sp, 224
	vsext.vf8	v12, v11
	vse64.v	v12, (s1)
	vse64.v	v8, (s0)
	call	matmul
	ld	a0, 232(sp)
	fld	fa5, 88(a0)
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
	.p2align	5, 0x0                          # -- Begin function assemble_sparse
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	30                              # 0x1e
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse
	.p2align	1
	.type	assemble_sparse,@function
assemble_sparse:                        # @assemble_sparse
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	li	t3, 10
	lui	a6, %hi(.L__constant_30xindex)
	addi	a6, a6, %lo(.L__constant_30xindex)
	lui	a7, %hi(.L__constant_30xf64)
	addi	a7, a7, %lo(.L__constant_30xf64)
	li	t0, 2
	lui	t2, 228023
	lui	a4, %hi(.LCPI2_0)
	addi	a4, a4, %lo(.LCPI2_0)
	addi	a5, a0, 56
	lui	t1, %hi(.LCPI2_1)
	addi	t1, t1, %lo(.LCPI2_1)
	addi	a3, a0, 16
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a4)
	addi	a4, a1, %lo(.L__constant_11xindex)
	ld	a1, %lo(.L__constant_11xindex+8)(a1)
	slli	t2, t2, 2
	addi	a2, t2, -273
	sd	a2, 0(a0)
	sd	a4, 8(a0)
	sd	a6, 48(a0)
	sd	a7, 88(a0)
	mul	a2, a1, t3
	sd	t3, 128(a0)
	sd	t0, 136(a0)
	sd	a1, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a5)
	vle64.v	v8, (t1)
	addi	a0, a0, 96
	lui	a1, 40978
	addi	a1, a1, -512
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40099a7fe8b577bb              # double 3.2004392795924708
	.quad	0x401f5ec49bb1ad98              # double 7.8425468756862741
	.quad	0x3fe156e50f689c12              # double 0.54185727128504113
	.quad	0x400a9a79ae2cfae4              # double 3.3254273993946857
	.quad	0x4012f26c94a4f045              # double 4.7367423272772315
	.quad	0x4022cfa8c21be6bc              # double 9.4055843981799327
	.quad	0x400fda811a275000              # double 3.9816915553328727
	.quad	0x40222850d16e6108              # double 9.0787415930976891
	.quad	0x4020e483fa2ed177              # double 8.4463194067145491
	.quad	0x40040b1c0f5a3cd6              # double 2.5054246138966887
	.quad	0x4005ef7e3b83cc1e              # double 2.7419399880977968
	.quad	0x4021460be9c7a330              # double 8.6368096405218182
	.quad	0x401d62f9bc81588c              # double 7.3466557935663666
	.quad	0x40056ce38981b07f              # double 2.6781683676436496
	.quad	0x40105d3a358e4cf1              # double 4.0910423629859318
	.quad	0x400dffad91c83901              # double 3.7498427762249098
	.quad	0x4022a78c49213050              # double 9.3272421696675849
	.quad	0x3ffaf73f631b12be              # double 1.6853631850546402
	.quad	0x4011b6b2142106f4              # double 4.4284136910589389
	.quad	0x401da833e5574512              # double 7.4142604670062315
	.quad	0x401f695d8a99c95f              # double 7.8528958946575064
	.quad	0x3fd581a37cd29fa4              # double 0.33603751363488699
	.quad	0x40102245e788ed84              # double 4.0334697892498106
	.quad	0x401eb1302dd5445f              # double 7.6730353509347812
	.quad	0x400bf35a2a8409f4              # double 3.4938243218941754
	.quad	0x4006754a42573418              # double 2.8072705443251031
	.quad	0x4017a6b55f58385c              # double 5.9128012559504803
	.quad	0x3ff16b65b8218541              # double 1.0887200539221598
	.quad	0x4014773c2f3948fa              # double 5.1164405230249432
	.quad	0x4001b678bd2f8994              # double 2.2140974788791912
	.quad	0x4023032ddd829256              # double 9.5062092992676916
	.quad	0x401d47206f43edc2              # double 7.3194596657953657
	.quad	0x40039cfadf46aabe              # double 2.4516503756943555
	.quad	0x40128e2db46e8fd9              # double 4.6388462250215179
	.quad	0x4002833bce66a2bb              # double 2.3140789151260299
	.quad	0x3ffb5a5075156b21              # double 1.7095493863659572
	.quad	0x400252d98e3c2072              # double 2.2904540168856835
	.quad	0x4022e03d8744fd2d              # double 9.4379694244113014
	.quad	0x400bda9bbd63277b              # double 3.4817423625835864
	.quad	0x401444f03af27994              # double 5.0673226557249968
	.quad	0x3fca3b93129a2630              # double 0.20494306953723784
	.quad	0x4008d948b756dd96              # double 3.1060957263359326
	.quad	0x3ff407f37f1312b0              # double 1.2519412006233033
	.quad	0x40145c5b52b34de9              # double 5.0901921197832758
	.quad	0x4022e32fe0d869d9              # double 9.443724657457027
	.quad	0x3ff1d3d8e5d0450a              # double 1.1142205216495449
	.quad	0x402039b7972ae2b3              # double 8.1127288093424337
	.quad	0x4013888679c84482              # double 4.8833254841312073
	.quad	0x4011380db73187f6              # double 4.3047398208600409
	.quad	0x3fdf75e22acb1c6c              # double 0.49157003573458868
	.quad	0x4023ea23afb41d32              # double 9.957303515183046
	.quad	0x4023dfe516cfa549              # double 9.9372946861718833
	.quad	0x4002b1b6b0f02f20              # double 2.3367742369936337
	.quad	0x400ce2cbd8cc1bd3              # double 3.6107403695382145
	.quad	0x3ff65bfc7712a6d4              # double 1.3974575663836974
	.quad	0x401724b7c33b7726              # double 5.7858572487873854
	.quad	0x3fdcb99bf6c878c4              # double 0.44882868862067604
	.quad	0x40153def6a54280e              # double 5.3104836095681218
	.quad	0x4019ddd5ad08a207              # double 6.4666354214209667
	.quad	0x401b81cc8ea0b644              # double 6.8767568860617452
	.quad	0x401ed0138b0999fe              # double 7.7031995510683355
	.quad	0x4004de2a9d1cda5d              # double 2.6084797167234641
	.quad	0x40133c75bc69f486              # double 4.8090428771657852
	.quad	0x40193985cc69a2f6              # double 6.3061744632220691
	.quad	0x40231bc098632e0b              # double 9.5542037602490577
	.quad	0x3fc7ed5ffe4bd530              # double 0.18693160931403829
	.quad	0x401c136a1afc968f              # double 7.0189594475429109
	.quad	0x4017ed9761047260              # double 5.9820227774585817
	.quad	0x3fe1446f6d554326              # double 0.53960391382324668
	.quad	0x3fe9f08c5eb5e29a              # double 0.8106138086141812
	.quad	0x40210ccdca765939              # double 8.5250075597256103
	.quad	0x3fe9a3e56d71bf00              # double 0.80125686050266154
	.quad	0x401a5eb49d6db575              # double 6.5924858663760135
	.quad	0x401687c10900aa43              # double 5.6325723082214294
	.quad	0x40011e9cfab6a9bf              # double 2.139947851848063
	.quad	0x40166a98a9199939              # double 5.6040979787706471
	.quad	0x401e3e07267a6ae0              # double 7.5605741512506199
	.quad	0x401340f400276c34              # double 4.8134307884275138
	.quad	0x40224b50677db267              # double 9.1470978108347492
	.quad	0x402257b80bb64485              # double 9.1713260326380439
	.quad	0x401b3629b0c22c45              # double 6.8028934114946127
	.quad	0x3ff93cb3ca057002              # double 1.5773198977904035
	.quad	0x3ffa7d954a646951              # double 1.6556599527308047
	.quad	0x40223318780f68ac              # double 9.0997960585412656
	.quad	0x4017b5caeda5aaf1              # double 5.9275319225659908
	.quad	0x4022443292fe526a              # double 9.1331983504726004
	.quad	0x401d85af50e68c39              # double 7.3805515900340248
	.quad	0x401fba545126a211              # double 7.9319622688131099
	.quad	0x3fd611189c9a6510              # double 0.344793465550155
	.quad	0x4013265898bae3de              # double 4.7874473442143124
	.quad	0x401840a7f7028a80              # double 6.0631407351780808
	.quad	0x401dbff8830ae062              # double 7.4374714351070867
	.quad	0x402006e820776af0              # double 8.0134897371076192
	.quad	0x400fd575aa05be09              # double 3.9792283328058642
	.quad	0x401c2e6a20b7ba1a              # double 7.045326720441631
	.quad	0x400e1029a451e1ba              # double 3.7578919255722356
	.quad	0x3fd0cdf74a8e3ff8              # double 0.26257116585566065
	.quad	0x3fd55d37458ac3cc              # double 0.33381444731918175
	.quad	0x401819ddb6919e4b              # double 6.0252598310831429
	.quad	0x3fed1eb8643628bc              # double 0.91000003407068374
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_30xindex,@object   # @__constant_30xindex
	.p2align	6, 0x0
.L__constant_30xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_30xindex, 240

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.size	.L__constant_11xindex, 88

	.type	.L__constant_30xf64,@object     # @__constant_30xf64
	.p2align	6, 0x0
.L__constant_30xf64:
	.quad	0x401af73365881a15              # double 6.7414069999999997
	.quad	0x401127efe0ce0b91              # double 4.2890009999999998
	.quad	0x3fc520b8066c2acc              # double 0.16506100000000001
	.quad	0x401413f4eca686e8              # double 5.0194890000000001
	.quad	0x4016aeb5f5f0b285              # double 5.6706159999999999
	.quad	0x3ffc3cbd556084a5              # double 1.764829
	.quad	0x40119539b888722a              # double 4.3957280000000001
	.quad	0x40116de093532e7b              # double 4.3573019999999998
	.quad	0x3ff3e603d577963a              # double 1.2436560000000001
	.quad	0x402111ec0b567558              # double 8.5350040000000007
	.quad	0x401dcdf090f733a9              # double 7.4511130000000003
	.quad	0x40005edf1e0828c3              # double 2.0463239999999998
	.quad	0x4006957c4e2f37fc              # double 2.822991
	.quad	0x4005fa89331a08c0              # double 2.7473320000000001
	.quad	0x4010be3193f6c26a              # double 4.1857360000000003
	.quad	0x401ce6ef3d3a1d32              # double 7.2255219999999998
	.quad	0x40114011d3671ac1              # double 4.3125679999999997
	.quad	0x401ffd13d74d594f              # double 7.9971459999999998
	.quad	0x3fefa3aafff36ac6              # double 0.98872899999999997
	.quad	0x40152787485e3da3              # double 5.288602
	.quad	0x400b563fdd65a145              # double 3.4171140000000002
	.quad	0x40219f70de8f6cf0              # double 8.8114080000000001
	.quad	0x4021350d49949e88              # double 8.6036169999999998
	.quad	0x4021f06fac6045bb              # double 8.9696020000000001
	.quad	0x401b81016ce789e7              # double 6.8759819999999996
	.quad	0x40233aad81adea89              # double 9.6146049999999991
	.quad	0x400196f0068db8bb              # double 2.1987000000000001
	.quad	0x40236b471f79420b              # double 9.7095269999999995
	.quad	0x3fbf82c2bd7f51f0              # double 0.123089
	.quad	0x40163b58d1526d8b              # double 5.5579559999999999
	.size	.L__constant_30xf64, 240

	.section	".note.GNU-stack","",@progbits
