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
	.quad	40                              # 0x28
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
	lui	a6, %hi(.L__constant_40xindex)
	addi	a6, a6, %lo(.L__constant_40xindex)
	lui	a7, %hi(.L__constant_40xf64)
	addi	a7, a7, %lo(.L__constant_40xf64)
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
	addi	a1, a1, -2048
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_40xindex,@object   # @__constant_40xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_40xindex:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x4007fb0e5e679464              # double 2.9975860000000001
	.quad	0x3fd9855da272862f              # double 0.39876499999999998
	.quad	0x401541e8a2ec28b3              # double 5.3143640000000003
	.quad	0x400fcd740c4156e2              # double 3.9753189999999998
	.quad	0x401cbc8b43958106              # double 7.1841249999999999
	.quad	0x3faddb76b3bb83cf              # double 0.058314999999999999
	.quad	0x3fd1f1ed17c5ef63              # double 0.280391
	.quad	0x401f204f6dfc5cdd              # double 7.7815529999999997
	.quad	0x401739b7bf1e8e61              # double 5.8063650000000004
	.quad	0x4013e22f6a50d6b2              # double 4.9708839999999999
	.quad	0x40234ada122fad6d              # double 9.6461950000000005
	.quad	0x3ff9e1b3aeee9574              # double 1.6176029999999999
	.quad	0x4023cef5caf2d7f9              # double 9.9042189999999994
	.quad	0x40233637bd05af6c              # double 9.6058939999999992
	.quad	0x3fffb3882278d0cc              # double 1.981331
	.quad	0x401aba58f7121ab5              # double 6.6819800000000003
	.quad	0x4000c85e3da2f8be              # double 2.097836
	.quad	0x3fefb9c0ebedfa44              # double 0.991425
	.quad	0x400a4e8ea39c51db              # double 3.2883580000000001
	.quad	0x3fea284dfce3150e              # double 0.81742000000000004
	.quad	0x401a442cc2d6a9c5              # double 6.5665769999999997
	.quad	0x401c4d76ab5807ff              # double 7.0756480000000002
	.quad	0x400f79cb6848beb6              # double 3.9344700000000001
	.quad	0x4022348fb86f47b6              # double 9.1026589999999992
	.quad	0x3ff4b8af3e468cac              # double 1.2950889999999999
	.quad	0x40176d7ecbb7f9d7              # double 5.8569290000000001
	.quad	0x4011a4bf8fcd67fd              # double 4.4108869999999998
	.quad	0x401c23b213e3e293              # double 7.034859
	.quad	0x401095f3d7d3910c              # double 4.1464379999999998
	.quad	0x401f9fcbd556084a              # double 7.9060509999999997
	.quad	0x400f479702e6644e              # double 3.9099560000000002
	.quad	0x40212fb58d1526d9              # double 8.5931820000000005
	.quad	0x401617e5eaab0425              # double 5.5233379999999999
	.quad	0x4022640b13597918              # double 9.1953969999999998
	.quad	0x3ff8c123810e8859              # double 1.547153
	.quad	0x402147d5885d3133              # double 8.6403009999999991
	.quad	0x401b4a393ee5eedd              # double 6.8224840000000002
	.quad	0x40228d49d7ba6699              # double 9.2759540000000005
	.quad	0x400a2c7da1ec4e72              # double 3.2717239999999999
	.quad	0x40216a12d77318fc              # double 8.7071749999999994
	.size	.L__constant_40xf64, 320

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fe510b55ed534c6              # double 0.65828960916555768
	.quad	0x400f7bb5b73efa12              # double 3.9354051891416555
	.quad	0x400e27cae4978165              # double 3.7694299563155931
	.quad	0x40217a09fcacb244              # double 8.7383574448405241
	.quad	0x4019b21c6c9b26f0              # double 6.4239365548798872
	.quad	0x4020cac07c2b330d              # double 8.3959997942670501
	.quad	0x4021d18c2ea26529              # double 8.9092726300464893
	.quad	0x401aa1fed9eec959              # double 6.6581987430566523
	.quad	0x4022584485cb4e15              # double 9.1723977862048205
	.quad	0x3ff3c01b2949b7f5              # double 1.2344009030161918
	.quad	0x4007844dfbdf7726              # double 2.9396018674441562
	.quad	0x400c9cd27aaf35d3              # double 3.5765733322830129
	.quad	0x40226e0654372fe1              # double 9.2148920361868836
	.quad	0x401521f1e2b33c02              # double 5.2831492826362609
	.quad	0x401fc8948a915d80              # double 7.9458791400169275
	.quad	0x3fead7db9cf021c4              # double 0.83884983684497926
	.quad	0x4005be1eb7e22e84              # double 2.7178320279979875
	.quad	0x401d9934f4749284              # double 7.3996160694265463
	.quad	0x3fa9aac05b685b20              # double 0.050130854757460819
	.quad	0x4016740fa3d86918              # double 5.6133409119450093
	.quad	0x3fb85260a9f390c0              # double 0.095006982318923683
	.quad	0x40147c604835063a              # double 5.1214610369075277
	.quad	0x4020417a0015e4a4              # double 8.1278839136815079
	.quad	0x40200cf5615977d3              # double 8.0253096029008812
	.quad	0x402193c48c9352e8              # double 8.788608925804013
	.quad	0x40206e48ca486507              # double 8.2153990949032174
	.quad	0x401c5f99d8d8bf6a              # double 7.0933603174488358
	.quad	0x3fc7de97af427c18              # double 0.18648048455813249
	.quad	0x40092a224fa5cae4              # double 3.1455732557745808
	.quad	0x40235c812849517e              # double 9.6806728925228036
	.quad	0x4010faa2a4ef904f              # double 4.24476106369191
	.quad	0x40214a56840489a7              # double 8.645191312364501
	.quad	0x3ff498a279ab70ca              # double 1.2872643234941727
	.quad	0x401d4434548fcaea              # double 7.3166058743251856
	.quad	0x4011f838cee63586              # double 4.4924042060860128
	.quad	0x401013d171d17a4e              # double 4.0193536552529405
	.quad	0x4000899e65234536              # double 2.0671966458691271
	.quad	0x40211b480c2ff55f              # double 8.5532840546172206
	.quad	0x4022949a74ecb7e4              # double 9.2902409113848491
	.quad	0x3ffa99eecbdd7fac              # double 1.6625812495694658
	.quad	0x40135feaf4713219              # double 4.8436697191323441
	.quad	0x4019df0431ad1b16              # double 6.467789436522045
	.quad	0x4020da2f92f31681              # double 8.4261442109811941
	.quad	0x4000f1eaf66b2aba              # double 2.1181239367918723
	.quad	0x4002e813cc9d5516              # double 2.3633190141214397
	.quad	0x40139115402392e1              # double 4.8916826268875591
	.quad	0x400bd5f6d6575c1c              # double 3.4794747109804245
	.quad	0x40017e9cddbde2d4              # double 2.186822635991442
	.quad	0x40147106ac44b9ce              # double 5.1103770176836871
	.quad	0x401f1bad5ee57229              # double 7.7770285441916167
	.quad	0x402080f6b85a0b69              # double 8.2518823251645745
	.quad	0x401fdb17e4652bbd              # double 7.9639583288907802
	.quad	0x401fba38e17c78b8              # double 7.9318576080533418
	.quad	0x40048efc9a6f4282              # double 2.5698177399829669
	.quad	0x401058731ce5430c              # double 4.0863766207628593
	.quad	0x401531637eb9f7a6              # double 5.2982311059003333
	.quad	0x400424693631cc9d              # double 2.5177788003871471
	.quad	0x4016211b0d4faa4d              # double 5.5323297576783945
	.quad	0x4000886e87cd2907              # double 2.0666170701489395
	.quad	0x4021bfed9fd7c285              # double 8.8748598051909173
	.quad	0x401491da415ebc70              # double 5.1424341405937497
	.quad	0x40213b130bfc4af9              # double 8.6153796906923947
	.quad	0x3fe5fd420fe866ce              # double 0.6871652899455627
	.quad	0x400e24b4f5229916              # double 3.7679232741530866
	.quad	0x40078c68f8cdea10              # double 2.9435595929946956
	.quad	0x40050f6fb4b35192              # double 2.6325372807716088
	.quad	0x4003942bc42f94b0              # double 2.4473491026897918
	.quad	0x40214ab5d9843b1d              # double 8.6459186529078185
	.quad	0x40207869c2554e89              # double 8.2351818780073405
	.quad	0x3fd515fbe4d87a74              # double 0.32946679447369509
	.quad	0x4022856ac6c6b954              # double 9.2605802648146564
	.quad	0x400bcf75f375cdef              # double 3.4762991924596842
	.quad	0x40151b1ec75ede67              # double 5.2764845992711349
	.quad	0x40226fa47be69c85              # double 9.2180517882354795
	.quad	0x401cefdc97ecade4              # double 7.2342399347503239
	.quad	0x401d85815ef2efae              # double 7.3803763232971686
	.quad	0x4015dbc1d9b14e37              # double 5.4646066679447847
	.quad	0x3fb8ec01322fea30              # double 0.09735114550850521
	.quad	0x401355f0ae592eee              # double 4.8339259378369501
	.quad	0x40014d3fba4b21c0              # double 2.1627192072084824
	.quad	0x40223bf06bb72064              # double 9.1170686398547289
	.quad	0x402122e18be0f007              # double 8.568127032478527
	.quad	0x40211b562750498d              # double 8.5533916745669334
	.quad	0x401715daded0639a              # double 5.7713427366915315
	.quad	0x401798238121f2fe              # double 5.8985729386301937
	.quad	0x401ef40c7e5dd54e              # double 7.7383289093753103
	.quad	0x401c2c95dce0e99e              # double 7.0435404312396752
	.quad	0x4009321b06fa4fe2              # double 3.1494656129016088
	.quad	0x3ff88e9681c15381              # double 1.5348115032731757
	.quad	0x401e6a98b6bf39da              # double 7.6040981821265294
	.quad	0x401530de2564bee4              # double 5.2977224200001025
	.quad	0x40128c9b32f651b3              # double 4.6373107874718924
	.quad	0x402066d7f8a8bc90              # double 8.2008664804436933
	.quad	0x4010f5539d23901d              # double 4.23957677392539
	.quad	0x40070b820a094b50              # double 2.8806191238485681
	.quad	0x401750953cb8a0d6              # double 5.8286942947090292
	.quad	0x4018233a14b3e942              # double 6.0344012484368381
	.quad	0x4020ec0751c24e38              # double 8.4609933423699744
	.quad	0x402357fcea3c8d3c              # double 9.6718514632144589
	.quad	0x3fec5fb656dba1ea              # double 0.88668362583581239
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
