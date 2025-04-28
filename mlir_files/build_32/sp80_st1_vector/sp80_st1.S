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
	.quad	19                              # 0x13
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
	lui	a6, %hi(.L__constant_19xindex)
	addi	a6, a6, %lo(.L__constant_19xindex)
	lui	a7, %hi(.L__constant_19xf64)
	addi	a7, a7, %lo(.L__constant_19xf64)
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
	lui	a1, 40977
	addi	a1, a1, 768
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
	.quad	0x3fe7c127c56809fa              # double 0.74232853465974746
	.quad	0x4017f9f7fe4c859f              # double 5.9941100820737168
	.quad	0x401071ac0ae1052b              # double 4.1110078525391982
	.quad	0x401e0d7cee6866f5              # double 7.513171887514308
	.quad	0x401cc6b590362c70              # double 7.1940519841256076
	.quad	0x4006e11e3a2426f4              # double 2.8599209348948254
	.quad	0x401b6dff268f9434              # double 6.8574186349042527
	.quad	0x402313d910de1467              # double 9.5387654563039188
	.quad	0x3ff6a1438e6233e0              # double 1.414371067224458
	.quad	0x4020e6cbf4df613f              # double 8.4507748148613455
	.quad	0x3fc777f561d5c178              # double 0.18334834363077923
	.quad	0x401c64f5429cd993              # double 7.0985918434365827
	.quad	0x3fc6a464730f6e18              # double 0.17689185732057022
	.quad	0x401280d245a3110e              # double 4.6258021240976301
	.quad	0x401b4db0c3af4822              # double 6.8258696151479246
	.quad	0x3ff7421a3b0ba3de              # double 1.45363829674374
	.quad	0x40120947c16a8202              # double 4.5090627881295422
	.quad	0x4008ab3f5470f14e              # double 3.0836168858496995
	.quad	0x402234b50f6723d9              # double 9.1029438794520718
	.quad	0x401be337b4da79d5              # double 6.9718921907755957
	.quad	0x3fff97a11e02cbfc              # double 1.9745188877393494
	.quad	0x402167d60b59c643              # double 8.7028049037063564
	.quad	0x3ffde0fcfd0521a9              # double 1.8674287685008528
	.quad	0x4018aeac3e2f7dea              # double 6.1705789295660711
	.quad	0x3fd4fc2b9267bc58              # double 0.3278912477243856
	.quad	0x402187d243e2f82a              # double 8.7652760710298772
	.quad	0x401b0ee2f64b0a62              # double 6.7645376666356203
	.quad	0x4012d368a698131e              # double 4.7064538984602944
	.quad	0x402238f5868666ee              # double 9.1112482108178163
	.quad	0x3fefbef652a74654              # double 0.99206081526990397
	.quad	0x401d57c1ea34458e              # double 7.3357006639865983
	.quad	0x4006c4afcf6ca5fe              # double 2.8460384564430106
	.quad	0x400c7eec785422fe              # double 3.5619744682957153
	.quad	0x40182b154fe5a22b              # double 6.0420734867007395
	.quad	0x40224726b504f253              # double 9.1389671867883973
	.quad	0x400e02905630715e              # double 3.7512518628629286
	.quad	0x400e12e1324d64c3              # double 3.7592185907238629
	.quad	0x401fabca289c172a              # double 7.917763361479766
	.quad	0x401ee94e87fccf78              # double 7.7278386352589834
	.quad	0x40237f44da07026f              # double 9.7485721715504194
	.quad	0x3ff063b5e8212728              # double 1.0243434016760578
	.quad	0x3ff2d331b621051b              # double 1.1765610803998416
	.quad	0x401365ad0d5cf772              # double 4.849292954253416
	.quad	0x4016c9a108e49b06              # double 5.6969033612756501
	.quad	0x3fc8e311e64abc78              # double 0.19442962403033781
	.quad	0x3ff8cbc364a7e0d4              # double 1.5497468883386789
	.quad	0x40167c59840e81f5              # double 5.6214352258543743
	.quad	0x40239eb3ac10049a              # double 9.8099645394852821
	.quad	0x3fdec2990e1d0eb0              # double 0.48062731149932869
	.quad	0x401b84c4de58529d              # double 6.8796572438629058
	.quad	0x3fe4e82c28ff64c2              # double 0.65334136969899981
	.quad	0x40235f9aa3233e70              # double 9.6867266636392912
	.quad	0x40009ada3e254efc              # double 2.0756115775237713
	.quad	0x4004126077db1d45              # double 2.5089730609649075
	.quad	0x4011e4f13162a183              # double 4.4735763279389884
	.quad	0x3fffbf9ac27db23e              # double 1.9842784497551658
	.quad	0x3fb59b6a3d5ffca0              # double 0.084402694687002455
	.quad	0x402020e5898c3e02              # double 8.0642512305921663
	.quad	0x400eddee9d53d2a1              # double 3.8583652774053268
	.quad	0x400b8face21f55ea              # double 3.4451539674580447
	.quad	0x401d2b106a81dee7              # double 7.2920548097388069
	.quad	0x4018d9341d21baec              # double 6.212112860854841
	.quad	0x4016331c3e4c66fe              # double 5.5499124273426315
	.quad	0x4012953687503c69              # double 4.6457158224794535
	.quad	0x3fe4fb87f98752d0              # double 0.65570448623710753
	.quad	0x3fd508dd9aeb2694              # double 0.32866611603513118
	.quad	0x3ff24045a8eb7c43              # double 1.1406914328033657
	.quad	0x4015897b4ce05a4e              # double 5.3842594158109716
	.quad	0x40141c500e3021b5              # double 5.0276491371991385
	.quad	0x3ffe02e9da0f7feb              # double 1.8757112997045577
	.quad	0x4017c29c8a7f6e66              # double 5.9400502815511569
	.quad	0x401b827e286d33fc              # double 6.8774343792583714
	.quad	0x40031d3a0ea80a20              # double 2.3892708916694261
	.quad	0x3ff3a4da6f4dd86e              # double 1.2277473781409998
	.quad	0x4003566dc989c669              # double 2.4172015900774579
	.quad	0x400e43b0961c07b1              # double 3.7830516555122462
	.quad	0x40026fcdc84ba4ed              # double 2.3045917175373831
	.quad	0x402083489e0cbcef              # double 8.2564134016560882
	.quad	0x40139b44c73f5019              # double 4.9016295559304348
	.quad	0x4017551598507eb3              # double 5.8330901908045005
	.quad	0x3ffbf8dfead281c2              # double 1.7482604191537665
	.quad	0x401da5778f478f46              # double 7.4115888965059806
	.quad	0x4021e106f989b47b              # double 8.9395063381764341
	.quad	0x4022d68b1d456ab2              # double 9.4190301081883696
	.quad	0x40217a505be2f019              # double 8.7388943399928838
	.quad	0x3fb8a7547c1d3ef0              # double 0.096303253461197391
	.quad	0x4014b7129cc0d908              # double 5.1787819378571456
	.quad	0x3ff75b1b6132e79c              # double 1.4597429081754631
	.quad	0x3ff4157441eefaaf              # double 1.2552378249671781
	.quad	0x400b893421532709              # double 3.4419939616681217
	.quad	0x40042b54d0808e50              # double 2.5211578644973898
	.quad	0x401955188dfd86f4              # double 6.3331014810553263
	.quad	0x40187dbd7f5e4279              # double 6.122793188217309
	.quad	0x40122b04f59c3537              # double 4.5420111061660497
	.quad	0x40083c6151ae707f              # double 3.029482496391267
	.quad	0x3ffb5ffd263703f9              # double 1.7109347813386633
	.quad	0x40221bd17d3676f5              # double 9.0543326500878525
	.quad	0x3ffdab8c5e7678e9              # double 1.8543819131805839
	.quad	0x3ff74a5437b9485c              # double 1.455646722479762
	.quad	0x40038db3dcd2beb2              # double 2.4441907169164887
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_19xindex,@object   # @__constant_19xindex
	.p2align	6, 0x0
.L__constant_19xindex:
	.quad	9                               # 0x9
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.size	.L__constant_19xindex, 152

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.size	.L__constant_11xindex, 88

	.type	.L__constant_19xf64,@object     # @__constant_19xf64
	.p2align	6, 0x0
.L__constant_19xf64:
	.quad	0x40147766c6de7642              # double 5.1166029999999996
	.quad	0x3fc29ea140570825              # double 0.14546600000000001
	.quad	0x40019940fecdd0d9              # double 2.1998310000000001
	.quad	0x4019fe7c06e19b91              # double 6.4985200000000001
	.quad	0x40103fd1dcd7060c              # double 4.0623240000000003
	.quad	0x4022aecf63800219              # double 9.3414260000000002
	.quad	0x401ec90de093532e              # double 7.6963419999999996
	.quad	0x3fb55d1c3ac929aa              # double 0.083451999999999998
	.quad	0x400d3f56a7ac81d4              # double 3.6559270000000001
	.quad	0x400261da7b0b3919              # double 2.2977799999999999
	.quad	0x4001516b11c6d1e1              # double 2.164755
	.quad	0x4018bcd855970b4a              # double 6.1844190000000001
	.quad	0x402333cd78c436fc              # double 9.6011769999999998
	.quad	0x40126a90470a808d              # double 4.6040660000000004
	.quad	0x400204d013a92a30              # double 2.2523499999999999
	.quad	0x401422396073de1e              # double 5.0334219999999998
	.quad	0x401d5e9c886162f1              # double 7.3423939999999996
	.quad	0x401cfa62ed352221              # double 7.2445180000000002
	.quad	0x4023973c70c996b7              # double 9.7953829999999992
	.size	.L__constant_19xf64, 152

	.section	".note.GNU-stack","",@progbits
