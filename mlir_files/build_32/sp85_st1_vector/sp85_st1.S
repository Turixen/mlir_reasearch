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
	.quad	15                              # 0xf
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
	lui	a6, %hi(.L__constant_15xindex)
	addi	a6, a6, %lo(.L__constant_15xindex)
	lui	a7, %hi(.L__constant_15xf64)
	addi	a7, a7, %lo(.L__constant_15xf64)
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
	addi	a1, a1, -256
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_15xindex,@object   # @__constant_15xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_15xindex:
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	.L__constant_15xindex, 120

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.size	.L__constant_11xindex, 88

	.type	.L__constant_15xf64,@object     # @__constant_15xf64
	.p2align	6, 0x0
.L__constant_15xf64:
	.quad	0x3fe4d17c5ef62f9d              # double 0.65057200000000004
	.quad	0x3ffc1a38fbca105a              # double 1.756402
	.quad	0x4021f337867f0aa2              # double 8.9750329999999998
	.quad	0x3fe984816f0068dc              # double 0.79742500000000005
	.quad	0x3fd8c044284dfce3              # double 0.386735
	.quad	0x4014dcffeb074a77              # double 5.2158199999999999
	.quad	0x3ffd60029f16b11c              # double 1.8359399999999999
	.quad	0x3fe49c842fa50939              # double 0.64410599999999996
	.quad	0x400f3fec99f1ae2e              # double 3.9062130000000002
	.quad	0x400be78c868b9fdc              # double 3.4880610000000001
	.quad	0x401bdbf26f1dc50d              # double 6.9647920000000001
	.quad	0x4022ba9fbe76c8b4              # double 9.3644999999999996
	.quad	0x402315831f03d146              # double 9.5420160000000003
	.quad	0x401685bb7b6bb129              # double 5.630598
	.quad	0x4018f2c94b380cb7              # double 6.2370960000000002
	.size	.L__constant_15xf64, 120

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3ff6a569a7d8812e              # double 1.4153839642022592
	.quad	0x401fdc6cdb78fbf1              # double 7.9652590077011931
	.quad	0x40142c5c72d4182a              # double 5.043321413226332
	.quad	0x40158afc73857c75              # double 5.3857286501143919
	.quad	0x3fe27c71d8be4118              # double 0.57769100506451121
	.quad	0x401372ad7475e6c2              # double 4.8619898030244162
	.quad	0x40212fa0e3abba60              # double 8.5930243632439556
	.quad	0x40202a7843fa7b4f              # double 8.0829488032592547
	.quad	0x4020a741b2aee66e              # double 8.3266731108189695
	.quad	0x40214d4926c685f3              # double 8.6509487264001788
	.quad	0x40141f1603c5d1a2              # double 5.0303574170579015
	.quad	0x401d8d26e5d49098              # double 7.387843695734908
	.quad	0x4010cfacb0686aa6              # double 4.2028071941119034
	.quad	0x401f0866c9a0f896              # double 7.7582046036242414
	.quad	0x4011d0998f072238              # double 4.4537107799629254
	.quad	0x4021fef2cf6e6c01              # double 8.9979462454120966
	.quad	0x401d0b9cdc2350af              # double 7.2613405605845136
	.quad	0x400a669c74ebd09a              # double 3.3001031050171834
	.quad	0x3ffd79244b25f57f              # double 1.8420756278495387
	.quad	0x40112bc4aeb9575c              # double 4.2927424717543907
	.quad	0x401119efeb3c4e2d              # double 4.2753292804295997
	.quad	0x400efe64bbfac820              # double 3.8742155729205621
	.quad	0x40223e2df659acc1              # double 9.1214444145647366
	.quad	0x401f0e8c5fbc7358              # double 7.7642073591967672
	.quad	0x3fb119837f7539b0              # double 0.066795557611135647
	.quad	0x40056792aa77477d              # double 2.6755727117205752
	.quad	0x40222af73cc5a507              # double 9.0839175215974262
	.quad	0x3ff139c61f5fff9d              # double 1.0766049600206096
	.quad	0x40143bcc21f3bf65              # double 5.0583958916684866
	.quad	0x40046421152e6d3a              # double 2.5488912253182692
	.quad	0x401bf728558c71ed              # double 6.9913648001643027
	.quad	0x3fed3ae9d3610458              # double 0.91344157490687916
	.quad	0x401c05dbf1838dd3              # double 7.0057218300384703
	.quad	0x4002ffb7b204992c              # double 2.3748620898869799
	.quad	0x400864e4aaf3ed78              # double 3.0492642741862106
	.quad	0x4012d242989d0f89              # double 4.7053321691381678
	.quad	0x400b1afd997accda              # double 3.3881790152168891
	.quad	0x3fd0bf4078412cb4              # double 0.26167308562862535
	.quad	0x4015cab3cd3431e0              # double 5.4479515135867302
	.quad	0x40222909485ba600              # double 9.0801489459872755
	.quad	0x3ffb6fae79c7c682              # double 1.7147660023732958
	.quad	0x401f34e7b3d08244              # double 7.8016651245130255
	.quad	0x401703e51bf32ce2              # double 5.7538036696598471
	.quad	0x40217c935b1ed097              # double 8.7433117365947464
	.quad	0x4022108aa64dbc8d              # double 9.0323078126805516
	.quad	0x40092fae6dfd3ec0              # double 3.1482819168957974
	.quad	0x3fe9985539d48bf0              # double 0.79984532637570105
	.quad	0x3fda99e59c1a6b30              # double 0.41564312214329657
	.quad	0x4004ab23c5cd9b89              # double 2.5835643247004936
	.quad	0x3fed1843e4991cc4              # double 0.90921206138673271
	.quad	0x402295aee79a45a8              # double 9.2923500419445446
	.quad	0x400db006eb44ef68              # double 3.710950696984515
	.quad	0x3fe76a6d348174be              # double 0.73174152617470845
	.quad	0x4008778b9e647f99              # double 3.0583717703265845
	.quad	0x401c38ae893a0788              # double 7.055353302161059
	.quad	0x4020c5fecb77aec2              # double 8.3867095550152762
	.quad	0x4002085e1929c234              # double 2.2540857282513347
	.quad	0x4015e32b6dc0892c              # double 5.4718453549160522
	.quad	0x40079318efd4cc6a              # double 2.9468249069992014
	.quad	0x4009962f20582756              # double 3.1983320738699303
	.quad	0x401a22af81970a48              # double 6.5338726280629729
	.quad	0x401aee6c105f5e80              # double 6.7328341062744812
	.quad	0x401c814d3b7a7575              # double 7.1262711804860048
	.quad	0x401e5ca794fd49d0              # double 7.5904830245585373
	.quad	0x401683c9012337c2              # double 5.6286964586014978
	.quad	0x4015ae7a444f6f7d              # double 5.4203882859691221
	.quad	0x401658d390454f60              # double 5.5867445509246352
	.quad	0x4020dc3a19d0207f              # double 8.4301307741700366
	.quad	0x3febf60252eff9f0              # double 0.87378040503227616
	.quad	0x4011af42acca76fb              # double 4.4211527823042571
	.quad	0x400b571fc40c6f65              # double 3.4175410572333242
	.quad	0x4021c6ca76abb815              # double 8.8882634243600851
	.quad	0x401f028048ff87fe              # double 7.7524424940074805
	.quad	0x40225b00dce9b128              # double 9.1777409587162566
	.quad	0x3fea6f70efd71f92              # double 0.82610365718663759
	.quad	0x4016d517470da59e              # double 5.7080966093139107
	.quad	0x40064a2cbbf257a9              # double 2.7862181361515082
	.quad	0x4021b93ea1c16b94              # double 8.8618059681519198
	.quad	0x3ffa70a9b60989f0              # double 1.6525055991011151
	.quad	0x40084e0598eb4c02              # double 3.038096613579456
	.quad	0x40196b8f1be37c62              # double 6.355038104781757
	.quad	0x401684ef37ebc37e              # double 5.6298187959336001
	.quad	0x4011c9704683fab2              # double 4.4467173593572387
	.quad	0x3fefb90eecc96f70              # double 0.99134012458260479
	.quad	0x3fece78099f2b7e6              # double 0.90325956409446628
	.quad	0x3fd8d43d9fe0cbd4              # double 0.38795414555641838
	.quad	0x402264a515661b71              # double 9.1965719878332681
	.quad	0x4016f360e6e0e6cc              # double 5.7376743387955678
	.quad	0x3fea87e9970ea862              # double 0.829090876611428
	.quad	0x401ab669e9347833              # double 6.6781383932375773
	.quad	0x40065044c75c9174              # double 2.7891936850666585
	.quad	0x3fec3a028712e2e4              # double 0.8820812833938274
	.quad	0x40108fe564091166              # double 4.1405234938177724
	.quad	0x4016abc0ec33a602              # double 5.6677281290553783
	.quad	0x4019ec78901e925c              # double 6.480928661218595
	.quad	0x401ba931a4ce4a1b              # double 6.9152284384640792
	.quad	0x40172cea8d8e88d6              # double 5.7938634985204853
	.quad	0x402165b013937fd1              # double 8.6986089818528018
	.quad	0x401af024c893b78c              # double 6.7345153179320612
	.quad	0x3ff41ac5e1e3750d              # double 1.2565363715905875
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
