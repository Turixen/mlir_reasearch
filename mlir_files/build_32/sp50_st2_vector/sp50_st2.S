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
	.quad	50                              # 0x32
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
	lui	a6, %hi(.L__constant_50xindex)
	addi	a6, a6, %lo(.L__constant_50xindex)
	lui	a7, %hi(.L__constant_50xf64)
	addi	a7, a7, %lo(.L__constant_50xf64)
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
	lui	a1, 40979
	addi	a1, a1, 512
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
	.quad	0x400c9f01668af6a6              # double 3.577639390102223
	.quad	0x4000fab97521c78c              # double 2.1224240446981124
	.quad	0x4005769ae81885ec              # double 2.6829126484378687
	.quad	0x400367e1c34b85d4              # double 2.425723577253601
	.quad	0x400db3c680de6a03              # double 3.7127809589267158
	.quad	0x401e9bef69180101              # double 7.6522804661656218
	.quad	0x3fd804623b58b45c              # double 0.37526756091648905
	.quad	0x400fb11a4e3433d7              # double 3.9614759549790324
	.quad	0x40177a3fc7fa3562              # double 5.869383930822865
	.quad	0x401123dfc01d51b4              # double 4.2850332277197829
	.quad	0x402038bf6eff3ac4              # double 8.1108355223235619
	.quad	0x401dcda61b8f00d7              # double 7.4508289629013325
	.quad	0x4020073f09598ec0              # double 8.0141528055022491
	.quad	0x4012db5170b34377              # double 4.7141778573430804
	.quad	0x3fec51ff1bd8fd82              # double 0.8850093406580728
	.quad	0x401d3d4660a5f36e              # double 7.3098387814796819
	.quad	0x40213d9507576690              # double 8.620277623576186
	.quad	0x3fd9034b44f5d40c              # double 0.39082605108643587
	.quad	0x4004743af4205ed0              # double 2.5567530701044703
	.quad	0x401b309f47fd9017              # double 6.7974826096069796
	.quad	0x401fd9c2eece2586              # double 7.9626576722452054
	.quad	0x40152b5bb9a31c58              # double 5.2923420911602861
	.quad	0x4015b3e7cc0d05f0              # double 5.4256889231632925
	.quad	0x4019345992d1a76a              # double 6.3011229458296416
	.quad	0x40124a1c3a1534e6              # double 4.5723733020251753
	.quad	0x4022278733b27fcb              # double 9.0772033839602013
	.quad	0x4015ddec550da524              # double 5.4667218484476372
	.quad	0x401266183e0896ce              # double 4.5997018521063193
	.quad	0x401f766a4642319f              # double 7.8656397798444279
	.quad	0x4022f74f8da57a04              # double 9.4830288185594397
	.quad	0x40232468525d6d02              # double 9.5711084116978817
	.quad	0x40177cb2ddef68c5              # double 5.8717760732053579
	.quad	0x4021108b46460482              # double 8.5323125801535333
	.quad	0x3fbabce2df6ee0d0              # double 0.10444467501554588
	.quad	0x4013028e89549a7c              # double 4.7524968583953715
	.quad	0x40130890a619e360              # double 4.7583642915058988
	.quad	0x400dfe3d661a55b2              # double 3.7491405464922645
	.quad	0x4011f85088d246c4              # double 4.4924947145788714
	.quad	0x401af765ce7147c5              # double 6.7415992981568182
	.quad	0x40138540f25cd15f              # double 4.8801305646087192
	.quad	0x4013cef84485cc4e              # double 4.9521189409889086
	.quad	0x401f728883659d97              # double 7.8618488817950469
	.quad	0x3ff6090fe90fe8a4              # double 1.3772124389638885
	.quad	0x40239a92a6e59df6              # double 9.8019001155180199
	.quad	0x4010008328a2e980              # double 4.0005003308709775
	.quad	0x400c2e289f6206ee              # double 3.5225384189405906
	.quad	0x400c0e2b5f2ebacb              # double 3.5069186626563797
	.quad	0x4007273dbbd5c7d2              # double 2.894160716497006
	.quad	0x3fe3e71f6c175b16              # double 0.62196322547501626
	.quad	0x40040cdbfdb392b8              # double 2.5062789745737426
	.quad	0x4012d521e4c93121              # double 4.7081371066854283
	.quad	0x401b689b7473ecdf              # double 6.8521555133586096
	.quad	0x40021279eb40cebc              # double 2.2590216044571587
	.quad	0x400d6e8cc26802e2              # double 3.6789794147483557
	.quad	0x401ce05336cb6920              # double 7.2190674363758092
	.quad	0x3f6e1fcbe6d7b000              # double 0.0036772711234700495
	.quad	0x401e7bd9429250d5              # double 7.6209459687999769
	.quad	0x402138cb9495e3db              # double 8.6109281952830568
	.quad	0x4014602e5e053c13              # double 5.0939268770880686
	.quad	0x4010cbf15ae3c230              # double 4.1991628839028152
	.quad	0x400bda229256a606              # double 3.4815112526600869
	.quad	0x40129a40a774c9a9              # double 4.6506372609168602
	.quad	0x40232f76cdec8e0c              # double 9.5927032805693883
	.quad	0x401a7ee104ea63d8              # double 6.6239052551327049
	.quad	0x3fd55726c747ef28              # double 0.33344430409464332
	.quad	0x40117acd840a0b6b              # double 4.3699246054774035
	.quad	0x40047d3b62d96988              # double 2.5611484263037632
	.quad	0x400137a9d71612ca              # double 2.152179413186194
	.quad	0x40236aafc02f7488              # double 9.7083721216133795
	.quad	0x402221dd50b26ef9              # double 9.0661416261495891
	.quad	0x4021c45619932ceb              # double 8.8834693901212258
	.quad	0x4019c0a59fc825ad              # double 6.4381318059835566
	.quad	0x401573d18eea1922              # double 5.3631040888197123
	.quad	0x3fd924ced3535cfc              # double 0.39287157666463179
	.quad	0x3fd47f189bde807c              # double 0.32025733205410467
	.quad	0x402090c1fa93212d              # double 8.2827299408532671
	.quad	0x4017e140ebce73f7              # double 5.9699742169150261
	.quad	0x4010b56c656e6524              # double 4.1771713112478075
	.quad	0x40185f779ca0afac              # double 6.0932297204089245
	.quad	0x401270a78fcdc09a              # double 4.6100141972857731
	.quad	0x40140ab740980c02              # double 5.0104646771242205
	.quad	0x3fddef5ac36fea34              # double 0.46773404203091506
	.quad	0x4018cec9ec7f2c85              # double 6.2019421532269279
	.quad	0x401b080a005d88e8              # double 6.7578506524170976
	.quad	0x4012af69c8849f76              # double 4.6713019686647979
	.quad	0x401797a684c374df              # double 5.8980961555764386
	.quad	0x3fbbcb34fce790b0              # double 0.10856944250514533
	.quad	0x400e31dbf43c8db4              # double 3.7743453103045912
	.quad	0x400c69afe725c47b              # double 3.551605039444039
	.quad	0x40107c6e2d5f396b              # double 4.1215140427942556
	.quad	0x4022ff33c15edf16              # double 9.4984417370138026
	.quad	0x4021934b9dd592d8              # double 8.787686283417699
	.quad	0x40104fb78ff9c25c              # double 4.0778486725035599
	.quad	0x4012a028f1d25130              # double 4.6564061913125414
	.quad	0x4012b6ec13243690              # double 4.6786349287846321
	.quad	0x3fdf1d31c021964c              # double 0.48615688097774945
	.quad	0x4001edc8caad592c              # double 2.2411056360389434
	.quad	0x40147a3aada9c970              # double 5.1193644652251891
	.quad	0x401b36cc2f06fefc              # double 6.8035132740039863
	.quad	0x400aa01e0352d2de              # double 3.3281822452212131
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x3fcac3c9eecbfb16              # double 0.20910000000000001
	.quad	0x3ff346d3f9e7b80b              # double 1.2047920000000001
	.quad	0x400cf8bef8ceb357              # double 3.6214580000000001
	.quad	0x40135e8c47a17f41              # double 4.8423319999999999
	.quad	0x400f455b035bd513              # double 3.908865
	.quad	0x401241b0468448cf              # double 4.5641489999999996
	.quad	0x400866ae3a3a8e71              # double 3.0501369999999999
	.quad	0x3fefd88a04d12019              # double 0.99518300000000003
	.quad	0x4017b4ddb5525cc4              # double 5.9266269999999999
	.quad	0x400380c4156e264e              # double 2.4378739999999999
	.quad	0x4013863022dd7a9a              # double 4.881043
	.quad	0x4021c35568e820e6              # double 8.8815109999999997
	.quad	0x4022f3c3c5bd0e13              # double 9.4761030000000001
	.quad	0x4018782a5614df8b              # double 6.1173489999999999
	.quad	0x4019b138bcdfefbf              # double 6.4230679999999998
	.quad	0x3ffc5285a921ccd9              # double 1.7701469999999999
	.quad	0x4021f82afdda8bd2              # double 8.9847029999999997
	.quad	0x4023a2d6ece13f4b              # double 9.8180460000000007
	.quad	0x4021d73f748a1598              # double 8.9204059999999998
	.quad	0x402387db4cc25072              # double 9.7653449999999999
	.quad	0x3fff5287c200c0f0              # double 1.957649
	.quad	0x401a2eda22f6a50d              # double 6.5457539999999996
	.quad	0x4004c496ededaec5              # double 2.5959910000000002
	.quad	0x401184b945308bb9              # double 4.379613
	.quad	0x3fb16323bbc6eb0b              # double 0.067918999999999993
	.quad	0x401af72ead9274e2              # double 6.7413889999999999
	.quad	0x401c2387df5cf249              # double 7.0346979999999997
	.quad	0x3fff3c23315d701e              # double 1.9521820000000001
	.quad	0x401edb93ccd0fe8b              # double 7.7144310000000002
	.quad	0x401adf676ea4228a              # double 6.7181680000000004
	.quad	0x402158e94ee392e2              # double 8.6736550000000001
	.quad	0x4022aa53b8e4b87c              # double 9.3326700000000002
	.quad	0x40170b2c83ec892b              # double 5.7609120000000003
	.quad	0x401d6d3ed527e521              # double 7.3566849999999997
	.quad	0x4002895b78cc9a78              # double 2.317069
	.quad	0x3fef8856e696a26e              # double 0.98539299999999996
	.quad	0x400b4621b7e0ac7e              # double 3.4092440000000002
	.quad	0x400267fb267c6b8b              # double 2.3007719999999998
	.quad	0x4017cc91d14e3bcd              # double 5.9497749999999998
	.quad	0x3fe9eacc92146a1a              # double 0.80991199999999997
	.quad	0x401ce2aa9f7b5aea              # double 7.2213539999999998
	.quad	0x3fe37c69728a6117              # double 0.60893699999999995
	.quad	0x3ffc0f96e158750c              # double 1.753806
	.quad	0x40104e17e34b9453              # double 4.076263
	.quad	0x3fe47cdee34fc611              # double 0.64024300000000001
	.quad	0x4011ee7924af0bf2              # double 4.4828840000000003
	.quad	0x40099068986fcdee              # double 3.1955119999999999
	.quad	0x400a47021d10b1ff              # double 3.284672
	.quad	0x400293d20f2becee              # double 2.3221780000000001
	.quad	0x40132fb7a5f41aef              # double 4.7965989999999996
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
