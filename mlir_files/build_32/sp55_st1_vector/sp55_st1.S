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
	.quad	45                              # 0x2d
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
	lui	a6, %hi(.L__constant_45xindex)
	addi	a6, a6, %lo(.L__constant_45xindex)
	lui	a7, %hi(.L__constant_45xf64)
	addi	a7, a7, %lo(.L__constant_45xf64)
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
	addi	a1, a1, -768
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
	.quad	0x40179025ba56212e              # double 5.8907689204282132
	.quad	0x402291881826e902              # double 9.2842414424417292
	.quad	0x40073c9912c4a49a              # double 2.9045888391743349
	.quad	0x401c3240e8217cbd              # double 7.049075724643612
	.quad	0x3fdc870e61610c20              # double 0.44574317464520341
	.quad	0x4011a5de34043b39              # double 4.4119804503996471
	.quad	0x40139ff5489977ea              # double 4.9062091201467215
	.quad	0x402393f3cc711290              # double 9.7889694107082335
	.quad	0x4003417a002487c1              # double 2.4069709788463745
	.quad	0x40066b1511417daa              # double 2.8022862766371945
	.quad	0x4007544a10985600              # double 2.916156892441677
	.quad	0x402105637da1b4c7              # double 8.510524679173967
	.quad	0x4021aa6d6331745a              # double 8.832865810191084
	.quad	0x400b568f419967c4              # double 3.4172654271069138
	.quad	0x401ca6398b530cc3              # double 7.1623288888396841
	.quad	0x4017dd38f76d8536              # double 5.9660376225086136
	.quad	0x3feef3f127573b42              # double 0.96727807697048029
	.quad	0x4021a7dfd4565b58              # double 8.8278795581260709
	.quad	0x3fe75eac3bd2459e              # double 0.73030673679220448
	.quad	0x3fc2b71d16d58278              # double 0.14621318449919207
	.quad	0x400f64822e663768              # double 3.9240764260238628
	.quad	0x400188ab6d870208              # double 2.191733222658744
	.quad	0x40190e9df43867b6              # double 6.2642744216372446
	.quad	0x401460eb7b7a4db6              # double 5.0946482938192528
	.quad	0x40183508fc28c616              # double 6.0517920875440918
	.quad	0x4013935924af9e28              # double 4.8938947422207448
	.quad	0x4017940b73bafa3c              # double 5.8945749361869808
	.quad	0x3ff0c653ac8c9c2d              # double 1.0484196415143388
	.quad	0x40106edf59a3e3cb              # double 4.1082738882332235
	.quad	0x3ff4c0fb1060aacd              # double 1.2971144332647555
	.quad	0x4018877bb5932efa              # double 6.1323078509410553
	.quad	0x401fa37e9d8a4feb              # double 7.9096626868886046
	.quad	0x400ffd68cb98732f              # double 3.9987350374125508
	.quad	0x4015d715e988fca7              # double 5.4600445260868247
	.quad	0x400d8aed9c5de44c              # double 3.6928360191491603
	.quad	0x401d2f53344b66cf              # double 7.2962158366223795
	.quad	0x40233ff89adaa4aa              # double 9.6249435798548184
	.quad	0x4020c103e551a428              # double 8.3769828474197112
	.quad	0x4015682df8c883fe              # double 5.3517378685364729
	.quad	0x3ff9060e219a2d03              # double 1.5639783203685631
	.quad	0x401fcd299dd5213e              # double 7.9503540669759882
	.quad	0x3fc15cad72894e68              # double 0.1356407937297377
	.quad	0x402070dc9f737011              # double 8.2204332188048586
	.quad	0x401ca3dcda33725c              # double 7.1600221723461708
	.quad	0x3fff32443e5d03d0              # double 1.949772113425059
	.quad	0x3fd8893115cdd6a0              # double 0.3833735192232357
	.quad	0x3ff4562646e26540              # double 1.2710325974388326
	.quad	0x401a9505f33a750d              # double 6.6455305103711568
	.quad	0x3fee05b965aec77e              # double 0.93819875583561418
	.quad	0x4012d3508040a7d2              # double 4.706361774393331
	.quad	0x3ffdf3f9d777ad84              # double 1.8720644394587405
	.quad	0x401733cad776469b              # double 5.8005784669818707
	.quad	0x40007b7ecaa6f276              # double 2.0603004295538154
	.quad	0x4012eec1090330e8              # double 4.7331582458684593
	.quad	0x401464d81daedf78              # double 5.0984806669219935
	.quad	0x3fef632071b19856              # double 0.98085043149763851
	.quad	0x401859a94a264f25              # double 6.0875598512537055
	.quad	0x400b3666089fdb5e              # double 3.4015618013176399
	.quad	0x3fe3bb7ef7ebcc8e              # double 0.61663769170844929
	.quad	0x400d935a7c4cd50e              # double 3.6969499312350598
	.quad	0x402120a7664bcefe              # double 8.5637771575488806
	.quad	0x40168617692b6954              # double 5.630948680185913
	.quad	0x4006dd787ace6c24              # double 2.8581399530644536
	.quad	0x3ffabb03b783dd09              # double 1.6706578415449391
	.quad	0x400a7d38aaea49e7              # double 3.311143241190837
	.quad	0x40000fc9dcac5c66              # double 2.00770923996929
	.quad	0x401743b93a873c1e              # double 5.8161362786331932
	.quad	0x40226962b51bdf64              # double 9.2058312031292146
	.quad	0x401ba4e43dac32a8              # double 6.9110269199706309
	.quad	0x4022a30dd0210249              # double 9.3184647598547077
	.quad	0x40221f1052f7018c              # double 9.0606714178582237
	.quad	0x4012a6e1ab1b92ac              # double 4.6629702315882859
	.quad	0x3fe26ef361254b78              # double 0.57604378675237822
	.quad	0x401586293d94a63b              # double 5.3810166952112537
	.quad	0x40086aedc9e5519a              # double 3.0522113583667307
	.quad	0x401fcf6a60caf7da              # double 7.9525542377359333
	.quad	0x400c6f909bb42f14              # double 3.5544750370371592
	.quad	0x400db30eb6940e9c              # double 3.7124304069455558
	.quad	0x401953f381bdb150              # double 6.331983592226905
	.quad	0x402314ae9a074edf              # double 9.5403946050568588
	.quad	0x4016be81640f9870              # double 5.6860404619711602
	.quad	0x401ec6c1bde51451              # double 7.694098441225905
	.quad	0x401192dc5838aebe              # double 4.3934186729999833
	.quad	0x402223f4d0e57cf0              # double 9.0702271728646053
	.quad	0x400cd4f9c7c7382a              # double 3.6039920432731565
	.quad	0x402068d0b429b072              # double 8.204717283333796
	.quad	0x40174f9dcc2f0a27              # double 5.8277503875456551
	.quad	0x4017615533ac19d3              # double 5.8450515817443884
	.quad	0x402358eab3874369              # double 9.6736656286827429
	.quad	0x4012c9c5744689ed              # double 4.6970422905019236
	.quad	0x400f235ae401b8e4              # double 3.8922632039094527
	.quad	0x4017f67fbdd2aeac              # double 5.9907216701355246
	.quad	0x4011823209192310              # double 4.3771439954368958
	.quad	0x4015337fa46dca92              # double 5.3002916042338644
	.quad	0x4003a0bcdd155c45              # double 2.4534852287429509
	.quad	0x3fd1b71cddfab280              # double 0.27680131604828517
	.quad	0x40160385661a9429              # double 5.5034385637018568
	.quad	0x400b4285133cce02              # double 3.4074803831988456
	.quad	0x3fd5edc31e6f3544              # double 0.34263685199842464
	.quad	0x4020335b915d91d2              # double 8.1003079821320263
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x401ff810a569b175              # double 7.9922510000000004
	.quad	0x400832734f82f512              # double 3.0246339999999998
	.quad	0x4011c8e2e2b8c75c              # double 4.4461779999999997
	.quad	0x40230ab4fa48301a              # double 9.5209119999999992
	.quad	0x4003caab8a5ce5b4              # double 2.4739599999999999
	.quad	0x3fee614df8b15726              # double 0.94937800000000006
	.quad	0x4019d8194c016052              # double 6.4610339999999997
	.quad	0x401c87357e670e2c              # double 7.1320399999999999
	.quad	0x401dd95c853c1483              # double 7.4622669999999998
	.quad	0x400a463cfb3311a5              # double 3.2842959999999999
	.quad	0x3fdc6a7ac81d3aa3              # double 0.44399899999999998
	.quad	0x4022d4c660a20147              # double 9.4155759999999997
	.quad	0x400c9794a6eb91b4              # double 3.574014
	.quad	0x4013fad18d25edd0              # double 4.9949399999999997
	.quad	0x4017c353b4b2fa94              # double 5.9407490000000003
	.quad	0x401ef03afb7e9100              # double 7.7346000000000004
	.quad	0x402394a72ead9275              # double 9.7903380000000002
	.quad	0x40180c08fa7a8501              # double 6.0117529999999997
	.quad	0x4014316440f23897              # double 5.0482339999999999
	.quad	0x40168210be9424e6              # double 5.6270170000000004
	.quad	0x4009f83382e44b6f              # double 3.2461920000000002
	.quad	0x40186785b5b70692              # double 6.1010960000000001
	.quad	0x4004e16bdb1a6d6a              # double 2.6100690000000002
	.quad	0x40183565c2d27807              # double 6.0521459999999996
	.quad	0x401d00fa58f7121b              # double 7.2509550000000003
	.quad	0x40201dba4d6e47dc              # double 8.0580619999999996
	.quad	0x40221a2d948dc11e              # double 9.0511289999999995
	.quad	0x4023c355ef1fddec              # double 9.8815150000000002
	.quad	0x40014ed6fda836eb              # double 2.1634959999999999
	.quad	0x400991422ccb3a26              # double 3.1959270000000002
	.quad	0x401c6d490e66cb10              # double 7.1067239999999998
	.quad	0x4017811233df2a9d              # double 5.8760459999999997
	.quad	0x3ff0bd102bc72e27              # double 1.0461579999999999
	.quad	0x400194c55432873c              # double 2.1976420000000001
	.quad	0x40090daf4adbc665              # double 3.1316820000000001
	.quad	0x402071b23dd54da5              # double 8.2220630000000003
	.quad	0x40202a8cbd1244a6              # double 8.0831049999999998
	.quad	0x4012b3365881a155              # double 4.6750119999999997
	.quad	0x3fbbd102bc72e276              # double 0.108658
	.quad	0x401b93c579f23465              # double 6.8943079999999997
	.quad	0x4015b6638433d6c7              # double 5.4281139999999999
	.quad	0x3f33660e51d25aab              # double 2.9599999999999998E-4
	.quad	0x401224e50c5eb314              # double 4.5360300000000002
	.quad	0x401bfa960b6f9fcb              # double 6.994713
	.quad	0x401d2face67d77fb              # double 7.2965580000000001
	.size	.L__constant_45xf64, 360

	.section	".note.GNU-stack","",@progbits
