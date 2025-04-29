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
	.quad	35                              # 0x23
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
	lui	a6, %hi(.L__constant_35xindex)
	addi	a6, a6, %lo(.L__constant_35xindex)
	lui	a7, %hi(.L__constant_35xf64)
	addi	a7, a7, %lo(.L__constant_35xf64)
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
	.quad	0x4021fe1ce21369fc              # double 8.9963141106318218
	.quad	0x40207c8b709d556c              # double 8.243251342016002
	.quad	0x3ff75575de5dd39f              # double 1.4583643613998232
	.quad	0x40057ffa73faf28a              # double 2.6874894200285029
	.quad	0x4021c21e5ea84758              # double 8.8791379528444594
	.quad	0x3fcdbec55a19a0e0              # double 0.23238436602992518
	.quad	0x3fd4449b0ab2c7b4              # double 0.31668735546838467
	.quad	0x402137f4576d92d6              # double 8.6092860528237161
	.quad	0x400bb4aaa2804498              # double 3.4632160849947233
	.quad	0x40213154d5c469ed              # double 8.5963503649008661
	.quad	0x3ff40c2de733fc2c              # double 1.2529734641427792
	.quad	0x401f3f37c0a6b623              # double 7.8117361165764434
	.quad	0x4000581222632e0e              # double 2.0430033384816459
	.quad	0x40229e066660141b              # double 9.3086425773890848
	.quad	0x4023b99428d28f59              # double 9.862458491995925
	.quad	0x3feca889cadb81c0              # double 0.89557351704211641
	.quad	0x401e6998a6957e99              # double 7.6031213787788596
	.quad	0x4013a77608e4a721              # double 4.9135362042959807
	.quad	0x3fe840313f04f52e              # double 0.75783598240346861
	.quad	0x4005d43e88349ec4              # double 2.7286348954256443
	.quad	0x400af490de7ad225              # double 3.3694169408065755
	.quad	0x4006aa53e48b5c42              # double 2.8331678252248205
	.quad	0x4020cb08d2800701              # double 8.3965516835482976
	.quad	0x4008aaabce2bfd00              # double 3.0833355052160414
	.quad	0x402160eef27dab3c              # double 8.6893230226902389
	.quad	0x3fe740cbe261f99e              # double 0.7266597196137814
	.quad	0x4012f2b1fde0d050              # double 4.7370071094956785
	.quad	0x4010a772d313b3c6              # double 4.1635239582801145
	.quad	0x4006d6a1850719c6              # double 2.8548002617637591
	.quad	0x4020405eace4c366              # double 8.1257223157169385
	.quad	0x401103cf2391c988              # double 4.2537198598605599
	.quad	0x400d33a888e97978              # double 3.6502237983942756
	.quad	0x400b827a9861f575              # double 3.4387103943724306
	.quad	0x40206f6e7e57a51a              # double 8.2176398736942708
	.quad	0x401137ba8e698c24              # double 4.3044225932999645
	.quad	0x4019615cff349710              # double 6.3450813175056879
	.quad	0x4010339486853482              # double 4.0503712672044703
	.quad	0x401eefbc4b6b61d6              # double 7.7341167244234921
	.quad	0x401bc59ae2d60b08              # double 6.9429736560002837
	.quad	0x400558c7e720905a              # double 2.668350034409781
	.quad	0x402352b697002490              # double 9.6615492999719947
	.quad	0x4017d42c52955c35              # double 5.9572003272688123
	.quad	0x401db684fd4cc770              # double 7.4282416895019736
	.quad	0x3ff6dbf2cb6d0019              # double 1.4286983438796652
	.quad	0x40227c1a1cec94c0              # double 9.2423867262644989
	.quad	0x40081bfbbf5aad45              # double 3.0136637639567732
	.quad	0x402279aa48880d64              # double 9.2376272836760975
	.quad	0x4021313b5a3e2835              # double 8.5961559487223926
	.quad	0x4013b4efe530dc64              # double 4.9266963778564765
	.quad	0x401970054d45e0bc              # double 6.3593952249431673
	.quad	0x3ffdaef1ec9be24f              # double 1.8552111856971754
	.quad	0x4000c5a5f740f5f4              # double 2.0965079609584283
	.quad	0x4016efded2b2ae7a              # double 5.7342484399374545
	.quad	0x3ffbe65cbc66b410              # double 1.7437407836362162
	.quad	0x40234e8b92ca5694              # double 9.6534086105341785
	.quad	0x401cf591b3fe85f0              # double 7.2398136257265691
	.quad	0x401caf04fff66231              # double 7.1709175104265777
	.quad	0x4007638aff35b3e9              # double 2.9236049593223368
	.quad	0x4023e020d6b3e16b              # double 9.9377505392628417
	.quad	0x3fe4141e936959e0              # double 0.62745598594011298
	.quad	0x3fed7f778ee794d6              # double 0.92180993948991374
	.quad	0x400b92acd19e31b8              # double 3.4466186882402461
	.quad	0x401fe82f9da31034              # double 7.9767441397453247
	.quad	0x40233a3fd8f1f817              # double 9.6137683673260152
	.quad	0x3fe77bc6b78b82a4              # double 0.73385940407395767
	.quad	0x402362355fc63018              # double 9.6918134622028873
	.quad	0x40097c34c408aded              # double 3.185647517695307
	.quad	0x3ffd42941ffb2346              # double 1.8287545441873632
	.quad	0x3ff5482a57458411              # double 1.3301185044331343
	.quad	0x401cd8e84d560f40              # double 7.2118236621643632
	.quad	0x3fe3e370e1760a9a              # double 0.62151378665324164
	.quad	0x40078ff15dd4b31d              # double 2.9452845888648782
	.quad	0x401d3fec3948ee6c              # double 7.312424559666038
	.quad	0x400ab9244d6ec61c              # double 3.340401272719431
	.quad	0x4012236a95db2777              # double 4.5345862784396251
	.quad	0x402099356d58f463              # double 8.299235741718979
	.quad	0x401a489664e2f8b3              # double 6.5708862079174422
	.quad	0x4022444794d271ff              # double 9.1333586222544891
	.quad	0x402246babfbc7d16              # double 9.1381435315693516
	.quad	0x4018b2b05dae7aa6              # double 6.1745009076827611
	.quad	0x40231d2d3a2c1401              # double 9.5569856814199756
	.quad	0x40011451424ca29e              # double 2.1349206142079558
	.quad	0x4009fd53b6a8ec7e              # double 3.2486948271085216
	.quad	0x4020dac24d53b250              # double 8.4272636570614452
	.quad	0x401e0119157357b6              # double 7.5010722495698499
	.quad	0x4020f503b8644025              # double 8.4785440084816148
	.quad	0x401825ba22866251              # double 6.036842860653068
	.quad	0x401f36d90be008d1              # double 7.8035623412599344
	.quad	0x3ffb28d2d9f5d107              # double 1.6974667085715411
	.quad	0x401a5653c395f9be              # double 6.584303909329206
	.quad	0x3ffd62a844b6efb5              # double 1.8365862545169709
	.quad	0x4016d01d35807453              # double 5.7032364234592761
	.quad	0x401c4a6c8e4c7e4a              # double 7.0726797327220741
	.quad	0x4021bf9f9c5a16f0              # double 8.874264608380571
	.quad	0x4023946b897fe443              # double 9.7898829430215581
	.quad	0x401321df49d5b2a4              # double 4.7830783402138515
	.quad	0x402150f0634badb9              # double 8.6580840139275654
	.quad	0x4012ea584785b8aa              # double 4.7288523841254264
	.quad	0x401147daa93f3aa4              # double 4.320170063480564
	.quad	0x401f3938fc6d33c2              # double 7.8058814469958993
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x3fd1e935b91f70df              # double 0.27985900000000002
	.quad	0x4004ca5614df8b15              # double 2.5987969999999998
	.quad	0x3fe905532617c1be              # double 0.78190000000000004
	.quad	0x3fedd9b5e95b78cd              # double 0.93282600000000004
	.quad	0x3fe857c0b1359792              # double 0.76071200000000005
	.quad	0x4019fcab81f969e4              # double 6.4967480000000002
	.quad	0x402093a5a038194c              # double 8.2883729999999999
	.quad	0x40200edfa43fe5c9              # double 8.0290499999999998
	.quad	0x3ff0ddf97aaac109              # double 1.0541929999999999
	.quad	0x4022e0ce703afb7f              # double 9.4390750000000007
	.quad	0x402334ba30121683              # double 9.602983
	.quad	0x401e8c1f85d744f6              # double 7.6368390000000002
	.quad	0x3fe93a3a8e71476b              # double 0.788358
	.quad	0x4020a44f1a1986ba              # double 8.3209160000000004
	.quad	0x401ac22a2c237479              # double 6.6896139999999997
	.quad	0x40204d564b662fe0              # double 8.1510490000000004
	.quad	0x401e534699418506              # double 7.5813240000000004
	.quad	0x402121bd8383ad9f              # double 8.5658989999999999
	.quad	0x3ff2f1172ef0ae53              # double 1.1838599999999999
	.quad	0x401bfd8b1dd5d3dd              # double 6.9976010000000004
	.quad	0x4016e3558a761028              # double 5.7220060000000004
	.quad	0x4016a36ef8055fbb              # double 5.6596029999999997
	.quad	0x4001cbd76ee73e68              # double 2.224532
	.quad	0x401714690de09353              # double 5.7699319999999998
	.quad	0x402350157eed45e9              # double 9.6564139999999998
	.quad	0x40158de8f6cefed6              # double 5.3885839999999998
	.quad	0x401389f98b71b8aa              # double 4.884741
	.quad	0x40138b0079a2834d              # double 4.8857439999999999
	.quad	0x40225034f3fd933e              # double 9.1566539999999996
	.quad	0x4021d9b10fd7e458              # double 8.925179
	.quad	0x4022fd1f3e89a88b              # double 9.4943790000000003
	.quad	0x402180a47ecfe9b8              # double 8.7512550000000005
	.quad	0x40209368cef672b9              # double 8.2879090000000009
	.quad	0x40224fd566cf41f2              # double 9.1559249999999999
	.quad	0x3ff7a845996744b3              # double 1.4785820000000001
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
