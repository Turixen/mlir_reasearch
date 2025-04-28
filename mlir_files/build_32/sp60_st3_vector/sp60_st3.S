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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x401d6b78897e9963              # double 7.3549519999999999
	.quad	0x401ef0e8858ff759              # double 7.7352619999999996
	.quad	0x4010834df04ddb55              # double 4.1282269999999999
	.quad	0x400b123b3636f3b2              # double 3.383902
	.quad	0x4013254a3c64345d              # double 4.786416
	.quad	0x3fc1a3b14a90470b              # double 0.13780800000000001
	.quad	0x4020e0183f91e647              # double 8.4376850000000001
	.quad	0x401cc0c308feac43              # double 7.1882440000000001
	.quad	0x4015d3c74fb549f9              # double 5.4568149999999997
	.quad	0x3ff942e87d2c7b89              # double 1.578835
	.quad	0x3fe04eb78897e996              # double 0.50960899999999998
	.quad	0x40170d9988d2a1f9              # double 5.7632810000000001
	.quad	0x40222c128bf3bea9              # double 9.0860789999999998
	.quad	0x3ff544955b4677b4              # double 1.3292440000000001
	.quad	0x40176f5903a7546d              # double 5.8587379999999998
	.quad	0x3ffc447a17f4128c              # double 1.766718
	.quad	0x4020787e7c06e19c              # double 8.2353400000000007
	.quad	0x40164a9a8049667b              # double 5.5728549999999997
	.quad	0x400409abb01c92de              # double 2.5047220000000001
	.quad	0x4017f1094a2b9d3d              # double 5.9853870000000002
	.quad	0x401b926bf8769ec3              # double 6.8929900000000002
	.quad	0x4012ac98e53eb39a              # double 4.668552
	.quad	0x401b3bbc6eb0b7c3              # double 6.8083359999999997
	.quad	0x400becbf2b239a39              # double 3.490599
	.quad	0x40108f1e8e608073              # double 4.1397649999999997
	.quad	0x400c19641f644956              # double 3.5123980000000001
	.quad	0x4014f7a67a52ac75              # double 5.2418459999999998
	.quad	0x4013b5b2d4d4024b              # double 4.9274399999999998
	.quad	0x40102a8049667b5f              # double 4.0415049999999999
	.quad	0x3ff974aba3875925              # double 1.590984
	.quad	0x4006af81626b2f23              # double 2.835696
	.quad	0x4005b07b784662bb              # double 2.7111730000000001
	.quad	0x4021476d7625204b              # double 8.639507
	.quad	0x400a1ab324851a87              # double 3.2630370000000002
	.quad	0x3fe9290cd423d923              # double 0.78626099999999999
	.quad	0x400bdfd933e35c5b              # double 3.4843009999999999
	.quad	0x401654c271fff79d              # double 5.5827730000000004
	.quad	0x40233f9830e3cd9a              # double 9.6242079999999994
	.quad	0x402321b8ed1bf7ad              # double 9.5658639999999994
	.quad	0x4006b21dda059a74              # double 2.8369710000000001
	.size	.L__constant_40xf64, 320

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x4023df34aeaf5b9b              # double 9.9359488095340591
	.quad	0x40206b1aa9296724              # double 8.2091877806702271
	.quad	0x401b5fab947ac46f              # double 6.843427963250277
	.quad	0x401775ccb2fa2d6e              # double 5.8650386777111247
	.quad	0x401151fb6bfd3692              # double 4.3300606606768657
	.quad	0x401a9ec83a2cb1c6              # double 6.6550606813220323
	.quad	0x402001a87fc2794b              # double 8.0032386708159233
	.quad	0x3ff6b4e7ea1a4440              # double 1.419166483367249
	.quad	0x401bf76019884bf5              # double 6.9915775289000424
	.quad	0x400041835e80f218              # double 2.0319888480282877
	.quad	0x40215009c564ec85              # double 8.6563245473573804
	.quad	0x4022041f653ce50b              # double 9.0080520283541059
	.quad	0x4012462007920510              # double 4.5684815581200979
	.quad	0x40035d80fcd293da              # double 2.4206561805499236
	.quad	0x4000ab5b429e3e62              # double 2.0836701588194027
	.quad	0x3fe9d0a949926d50              # double 0.80672134751822888
	.quad	0x40214c5f01afb31a              # double 8.6491623427369184
	.quad	0x4023687613962ea5              # double 9.7040258522823226
	.quad	0x3ff0db052bcb4208              # double 1.0534717283918571
	.quad	0x40115386b252ee2c              # double 4.3315685141674685
	.quad	0x4016012648409d0b              # double 5.5011225976406974
	.quad	0x401f6304757a7ac2              # double 7.8466966968541687
	.quad	0x401dc0994b9e5be7              # double 7.4380847754864368
	.quad	0x401dbf3e1e0f4406              # double 7.4367603966538862
	.quad	0x3ffa624bd87d9c04              # double 1.6489981133142928
	.quad	0x402310efaf1ab8e9              # double 9.5330786438102723
	.quad	0x402186a473a73018              # double 8.7629734174334288
	.quad	0x40133183a3a40ab2              # double 4.7983537262795597
	.quad	0x4018bcbf8c4a2ffa              # double 6.184324447658577
	.quad	0x4018103ce01e321a              # double 6.0158572214536665
	.quad	0x400d94817da16b08              # double 3.6975126089940922
	.quad	0x401009059d3acc5e              # double 4.0088104788911476
	.quad	0x40145bd1d9e0bdab              # double 5.0896677058621362
	.quad	0x4023b6ba53c1ed11              # double 9.8568903135515331
	.quad	0x4022d280db46b908              # double 9.4111393474418179
	.quad	0x4001bb03da1cfbb5              # double 2.2163159408659916
	.quad	0x400d8dde9e272520              # double 3.6942722659774887
	.quad	0x4008bb35af1334b2              # double 3.0914109876381071
	.quad	0x401eeb346614d2d3              # double 7.7296920728883433
	.quad	0x40137275319c51f6              # double 4.8617751838360075
	.quad	0x401d40190d626c8e              # double 7.3125955668757694
	.quad	0x40196aed5c8eb7ca              # double 6.3544210874660596
	.quad	0x3fee80fb973b9214              # double 0.9532449678195598
	.quad	0x402264f01cd3da42              # double 9.1971444138154119
	.quad	0x40130e4ea50bce1c              # double 4.7639718807654639
	.quad	0x40177ab3a9afa0e3              # double 5.8698259843297107
	.quad	0x40161f7b2468af35              # double 5.5307431877989091
	.quad	0x40003ced8d917a13              # double 2.0297499713917744
	.quad	0x400258f03f1a1778              # double 2.2934269838178203
	.quad	0x3ffdbe7a3971b0c1              # double 1.8590032810125623
	.quad	0x401b1f16634c237c              # double 6.7803588404866524
	.quad	0x400114b44dd4814b              # double 2.1351095276333232
	.quad	0x4019c6999de066b8              # double 6.4439453762258196
	.quad	0x4012a22884079b37              # double 4.658357680286648
	.quad	0x40005238eec3c54a              # double 2.0401476529592957
	.quad	0x401466674246bd95              # double 5.1000032764126404
	.quad	0x401e1b530931e86c              # double 7.5266839443885196
	.quad	0x4000447b04c59067              # double 2.0334377644340296
	.quad	0x4008c5618b4c44a2              # double 3.0963774569177795
	.quad	0x4000744e2d2cb88e              # double 2.0567897347710362
	.quad	0x3ffbc5dcd8e4e260              # double 1.7358063194680184
	.quad	0x4021524f55f9f816              # double 8.6607615344656033
	.quad	0x401a8f9c374b78ab              # double 6.6402443542303144
	.quad	0x3ffab7387162ca4d              # double 1.6697315625321096
	.quad	0x40205ddf52ff48c1              # double 8.1833444534898963
	.quad	0x40135f222d56177f              # double 4.8429038127704862
	.quad	0x40216655c24774f2              # double 8.6998730385043679
	.quad	0x4011aec20604c313              # double 4.4206620159536838
	.quad	0x3ffbea507df8f452              # double 1.7447056694793628
	.quad	0x3fe850e76dd431e6              # double 0.7598759789557874
	.quad	0x401db1a864b898aa              # double 7.4234939325016658
	.quad	0x40069ff0efd0c0fa              # double 2.8280962691861733
	.quad	0x3feb8902a794b850              # double 0.86047489863063653
	.quad	0x3fe596ab554b617e              # double 0.67464224490235813
	.quad	0x3ff0c688d0f84d7a              # double 1.0484703219306923
	.quad	0x4008e5ac5ac0ddb1              # double 3.1121451463802363
	.quad	0x401b984ceba411a6              # double 6.8987309283151372
	.quad	0x3ffc3e4c88df31e2              # double 1.7652097078854401
	.quad	0x3feeb2c27f0e9d0a              # double 0.95932125869595208
	.quad	0x4021fe400b2a99b5              # double 8.9965823640348876
	.quad	0x4011fb13f8fe9c9f              # double 4.4951933770563803
	.quad	0x3fdabd1d68b9d568              # double 0.41779265620365047
	.quad	0x400747012731cbef              # double 2.9096701681205484
	.quad	0x4020cd57cb238e73              # double 8.4010604363349781
	.quad	0x4008d544e1be0e9c              # double 3.1041352878690542
	.quad	0x4012348b40dae8ae              # double 4.5513124593364136
	.quad	0x3fea2d493ffc9f8e              # double 0.81802809235976937
	.quad	0x402330f07c3f816e              # double 9.5955847575684992
	.quad	0x3ff3f09ec3cb4c5e              # double 1.2462451599319802
	.quad	0x4020b3082d8f7892              # double 8.3496717679629775
	.quad	0x4018b2adb7347cdc              # double 6.1744907975946397
	.quad	0x401512c69430eea0              # double 5.2683356432786752
	.quad	0x4016b55736a1dd8f              # double 5.6770905052466238
	.quad	0x401ea71edad15aca              # double 7.6632036390571532
	.quad	0x3fd5ce59ab991284              # double 0.34071962125407418
	.quad	0x4019252cdc392f18              # double 6.2863039407636947
	.quad	0x4006ecb8d99806d8              # double 2.8655869483489873
	.quad	0x4020a954b546489f              # double 8.330724396543074
	.quad	0x401e8e8bda49c164              # double 7.6392053706661933
	.quad	0x4019b1d321c62eaf              # double 6.4236569668970978
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
