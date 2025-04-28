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
	li	s3, 0
	li	t5, 0
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s5, 304(a1)
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 400(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 392(a1)
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 384(a1)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 376(a1)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 368(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s8, 360(a1)
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 352(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 68
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t6, 224(a1)
	csrr	t4, vlenb
	li	s4, 99
	li	s2, 800
	vsetvli	a1, zero, e32, m8, ta, ma
	vid.v	v8
	slli	s9, t4, 5
	slli	t2, t4, 2
	slli	a1, t4, 1
	slli	t0, t4, 3
	vadd.vx	v8, v8, a1
	addi	a1, sp, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	sub	t3, s9, t0
	slli	t4, t4, 4
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	s3, s3, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s4, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	a4, 4(a1)
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a4, a4, 32
	or	s6, a4, a5
	slli	s0, s0, 32
	or	s7, s0, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s6, s6, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s6, s7, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a6, 0
	slli	a1, s6, 3
	add	a4, a7, a1
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a1, a1, t6
	fld	fa5, 0(a1)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	a5, a4, s2
	li	a4, 100
	mv	s1, s3
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a3, zero, e32, m8, ta, ma
	vmv.v.x	v8, a1
	add	a1, s8, a5
	vsetvli	a3, zero, e64, m8, ta, ma
	vmv.v.i	v16, 0
	addi	a3, sp, 80
	vl8r.v	v24, (a3)                       # Unknown-size Folded Reload
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vv	v5, v24, v8
	csrr	a3, vlenb
	li	t1, 43
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs1r.v	v5, (a3)                        # Unknown-size Folded Spill
	vmslt.vv	v4, v28, v12
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v24
	vsetvli	a3, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v8
	vmslt.vv	v3, v28, v12
	add	s11, a1, t3
	csrr	a3, vlenb
	li	t1, 60
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v16, (a3)                       # Unknown-size Folded Spill
	add	ra, a1, t4
	vmv8r.v	v24, v16
	add	s10, a1, t0
	csrr	a3, vlenb
	slli	t1, a3, 5
	add	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs1r.v	v4, (a3)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v4
	csrr	a3, vlenb
	li	t1, 60
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v8, (a3)                        # Unknown-size Folded Reload
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v8, (s11), v0.t
	csrr	a3, vlenb
	li	t1, 60
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v5
	vle64.v	v24, (ra), v0.t
	csrr	a3, vlenb
	li	t1, 52
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v24, (a3)                       # Unknown-size Folded Spill
	vmv8r.v	v8, v16
	vmv1r.v	v0, v3
	csrr	a3, vlenb
	slli	a3, a3, 5
	add	a3, a3, sp
	addi	a3, a3, 80
	vs1r.v	v3, (a3)                        # Unknown-size Folded Spill
	vle64.v	v8, (s10), v0.t
	csrr	a3, vlenb
	li	t1, 44
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	vmv8r.v	v8, v16
	csrr	a3, vlenb
	li	t1, 42
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs1r.v	v7, (a3)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	vle64.v	v8, (a1), v0.t
	csrr	a3, vlenb
	li	t1, 34
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	add	a3, s5, s1
	add	t1, a3, t3
	vmv8r.v	v8, v16
	vmv1r.v	v0, v4
	vle64.v	v8, (t1), v0.t
	csrr	t1, vlenb
	li	s0, 24
	mul	t1, t1, s0
	add	t1, t1, sp
	addi	t1, t1, 80
	vs8r.v	v8, (t1)                        # Unknown-size Folded Spill
	vmv8r.v	v24, v16
	vmv1r.v	v0, v7
	vle64.v	v24, (a3), v0.t
	add	s0, a3, t0
	vmv8r.v	v8, v16
	vmv1r.v	v0, v3
	vle64.v	v8, (s0), v0.t
	csrr	t1, vlenb
	li	s0, 24
	mul	t1, t1, s0
	add	t1, t1, sp
	addi	t1, t1, 80
	vl8r.v	v0, (t1)                        # Unknown-size Folded Reload
	vfmul.vf	v0, v0, fa5
	vfmul.vf	v24, v24, fa5
	csrr	t1, vlenb
	slli	t1, t1, 4
	add	t1, t1, sp
	addi	t1, t1, 80
	vs8r.v	v24, (t1)                       # Unknown-size Folded Spill
	csrr	t1, vlenb
	li	s0, 60
	mul	t1, t1, s0
	add	t1, t1, sp
	addi	t1, t1, 80
	vl8r.v	v24, (t1)                       # Unknown-size Folded Reload
	vfadd.vv	v24, v24, v0
	csrr	t1, vlenb
	li	s0, 24
	mul	t1, t1, s0
	add	t1, t1, sp
	addi	t1, t1, 80
	vs8r.v	v24, (t1)                       # Unknown-size Folded Spill
	vfmul.vf	v8, v8, fa5
	csrr	t1, vlenb
	slli	t1, t1, 3
	add	t1, t1, sp
	addi	t1, t1, 80
	vs8r.v	v8, (t1)                        # Unknown-size Folded Spill
	add	a3, a3, t4
	csrr	t1, vlenb
	li	s0, 43
	mul	t1, t1, s0
	add	t1, t1, sp
	addi	t1, t1, 80
	vl1r.v	v7, (t1)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v7
	vle64.v	v16, (a3), v0.t
	csrr	a3, vlenb
	li	t1, 34
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v24, (a3)                       # Unknown-size Folded Reload
	csrr	a3, vlenb
	slli	a3, a3, 4
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v8, (a3)                        # Unknown-size Folded Reload
	vfadd.vv	v24, v24, v8
	csrr	a3, vlenb
	li	t1, 60
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vs8r.v	v24, (a3)                       # Unknown-size Folded Spill
	csrr	a3, vlenb
	slli	t1, a3, 5
	add	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl1r.v	v0, (a3)                        # Unknown-size Folded Reload
	csrr	a3, vlenb
	li	t1, 24
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v24, (a3)                       # Unknown-size Folded Reload
	vse64.v	v24, (s11), v0.t
	csrr	a3, vlenb
	li	t1, 44
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v24, (a3)                       # Unknown-size Folded Reload
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v8, (a3)                        # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vfmul.vf	v16, v16, fa5
	csrr	a3, vlenb
	li	t1, 52
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v24, (a3)                       # Unknown-size Folded Reload
	vfadd.vv	v16, v24, v16
	vmv1r.v	v0, v7
	vse64.v	v16, (ra), v0.t
	csrr	a3, vlenb
	slli	a3, a3, 5
	add	a3, a3, sp
	addi	a3, a3, 80
	vl1r.v	v0, (a3)                        # Unknown-size Folded Reload
	vse64.v	v8, (s10), v0.t
	csrr	a3, vlenb
	li	t1, 42
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl1r.v	v0, (a3)                        # Unknown-size Folded Reload
	csrr	a3, vlenb
	li	t1, 60
	mul	a3, a3, t1
	add	a3, a3, sp
	addi	a3, a3, 80
	vl8r.v	v8, (a3)                        # Unknown-size Folded Reload
	vse64.v	v8, (a1), v0.t
	add	a6, a6, t2
	add	a5, a5, s9
	add	s1, s1, s9
	sub	a4, a4, t2
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s4, a6, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a1, a4
	blt	a4, t2, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a1, t2
	j	.LBB0_7
.LBB0_11:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 0(a0)
	sd	s8, 8(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 16(a0)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	sd	a1, 24(a0)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
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
	lui	a0, 20
	addiw	a0, a0, -1856
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	test_assemble
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
	call	matmul
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
	.p2align	5, 0x0                          # -- Begin function test_assemble
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.size	test_assemble, .Lfunc_end2-test_assemble
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	116                             # 0x74
	.quad	122                             # 0x7a
	.quad	177                             # 0xb1
	.quad	186                             # 0xba
	.quad	237                             # 0xed
	.quad	241                             # 0xf1
	.quad	295                             # 0x127
	.quad	303                             # 0x12f
	.quad	354                             # 0x162
	.quad	362                             # 0x16a
	.quad	417                             # 0x1a1
	.quad	421                             # 0x1a5
	.quad	474                             # 0x1da
	.quad	480                             # 0x1e0
	.quad	530                             # 0x212
	.quad	536                             # 0x218
	.quad	593                             # 0x251
	.quad	598                             # 0x256
	.quad	651                             # 0x28b
	.quad	660                             # 0x294
	.quad	716                             # 0x2cc
	.quad	725                             # 0x2d5
	.quad	777                             # 0x309
	.quad	781                             # 0x30d
	.quad	834                             # 0x342
	.quad	843                             # 0x34b
	.quad	898                             # 0x382
	.quad	903                             # 0x387
	.quad	962                             # 0x3c2
	.quad	970                             # 0x3ca
	.quad	1025                            # 0x401
	.quad	1031                            # 0x407
	.quad	1083                            # 0x43b
	.quad	1090                            # 0x442
	.quad	1143                            # 0x477
	.quad	1149                            # 0x47d
	.quad	1203                            # 0x4b3
	.quad	1211                            # 0x4bb
	.quad	1264                            # 0x4f0
	.quad	1267                            # 0x4f3
	.quad	1323                            # 0x52b
	.quad	1330                            # 0x532
	.quad	1384                            # 0x568
	.quad	1393                            # 0x571
	.quad	1446                            # 0x5a6
	.quad	1453                            # 0x5ad
	.quad	1505                            # 0x5e1
	.quad	1510                            # 0x5e6
	.quad	1564                            # 0x61c
	.quad	1572                            # 0x624
	.quad	1628                            # 0x65c
	.quad	1636                            # 0x664
	.quad	1689                            # 0x699
	.quad	1697                            # 0x6a1
	.quad	1752                            # 0x6d8
	.quad	1758                            # 0x6de
	.quad	1809                            # 0x711
	.quad	1822                            # 0x71e
	.quad	1877                            # 0x755
	.quad	1884                            # 0x75c
	.quad	1939                            # 0x793
	.quad	1945                            # 0x799
	.quad	1996                            # 0x7cc
	.quad	2000                            # 0x7d0
	.quad	2052                            # 0x804
	.quad	2054                            # 0x806
	.quad	2108                            # 0x83c
	.quad	2117                            # 0x845
	.quad	2171                            # 0x87b
	.quad	2178                            # 0x882
	.quad	2234                            # 0x8ba
	.quad	2238                            # 0x8be
	.quad	2289                            # 0x8f1
	.quad	2295                            # 0x8f7
	.quad	2346                            # 0x92a
	.quad	2351                            # 0x92f
	.quad	2405                            # 0x965
	.quad	2413                            # 0x96d
	.quad	2469                            # 0x9a5
	.quad	2473                            # 0x9a9
	.quad	2525                            # 0x9dd
	.quad	2532                            # 0x9e4
	.quad	2586                            # 0xa1a
	.quad	2590                            # 0xa1e
	.quad	2643                            # 0xa53
	.quad	2649                            # 0xa59
	.quad	2701                            # 0xa8d
	.quad	2702                            # 0xa8e
	.quad	2753                            # 0xac1
	.quad	2764                            # 0xacc
	.quad	2816                            # 0xb00
	.quad	2824                            # 0xb08
	.quad	2877                            # 0xb3d
	.quad	2880                            # 0xb40
	.quad	2934                            # 0xb76
	.quad	2940                            # 0xb7c
	.quad	2994                            # 0xbb2
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	33                              # 0x21
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	57                              # 0x39
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	57                              # 0x39
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	34                              # 0x22
	.quad	53                              # 0x35
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	29                              # 0x1d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	20                              # 0x14
	.quad	48                              # 0x30
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	27                              # 0x1b
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	46                              # 0x2e
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	38                              # 0x26
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	20                              # 0x14
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	72                              # 0x48
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	50                              # 0x32
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	52                              # 0x34
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	31                              # 0x1f
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_3000xf64, 24000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fe59cba1cb319a1              # double 0.67538171391861479
	.quad	0x3fe775f4ce10f1c9              # double 0.73314895865728957
	.quad	0x3fc97b0fee8d719c              # double 0.19906806133338939
	.quad	0x3fc8b4b563ed4198              # double 0.1930147874759427
	.quad	0x3fd31984171b94b4              # double 0.29843237167944925
	.quad	0x3fdea02e1bd57c34              # double 0.4785266181770027
	.quad	0x3fdd98413c61d082              # double 0.4624178971928431
	.quad	0x3fe2c823f20a03e4              # double 0.58693120263353338
	.quad	0x3fe4ae10777abc58              # double 0.64624808631732389
	.quad	0x3fef4c93eb5f1d2e              # double 0.97809787722591124
	.quad	0x3fca19ba26fe5a40              # double 0.20391013053877494
	.quad	0x3fdffc5ddfbdee44              # double 0.49977824067875454
	.quad	0x3fe8c41561e2677e              # double 0.77393597715420959
	.quad	0x3fdd5a45d7fdc28a              # double 0.45863481610198475
	.quad	0x3fe06840bbaa0922              # double 0.51272617962994027
	.quad	0x3fdf9c0430d021fa              # double 0.49389748350998242
	.quad	0x3fb7d2370fd89a10              # double 0.093051377648045496
	.quad	0x3fed0bdfcf52fa60              # double 0.90769949429506979
	.quad	0x3fef1a4967575631              # double 0.97195882972545721
	.quad	0x3fdc0ff61b5ae768              # double 0.43847420379062507
	.quad	0x3fefb8ce32f03b11              # double 0.9913092608347559
	.quad	0x3fe55fcd30ac9403              # double 0.66794452196757026
	.quad	0x3fe8fe023b1d164a              # double 0.78100692315701647
	.quad	0x3fdd22bd3358f6b6              # double 0.45524530424504961
	.quad	0x3fe38470a9ade6af              # double 0.60991700306404606
	.quad	0x3feca2fac23847a4              # double 0.8948949616771995
	.quad	0x3fe71ba71a9d46ae              # double 0.72212557981602798
	.quad	0x3fe131367342bf47              # double 0.53725740920888476
	.quad	0x3fd268be69b13a82              # double 0.28764305421365333
	.quad	0x3fed0af9693b14fc              # double 0.90758963158501115
	.quad	0x3fdb844c962b0c46              # double 0.42994990029200542
	.quad	0x3fe0a87b54ec16bc              # double 0.52056662165042367
	.quad	0x3fe188ffb5ea9650              # double 0.54797349482096003
	.quad	0x3feb1932cbcb681e              # double 0.84682597926735403
	.quad	0x3fc66113e71ec704              # double 0.17483757767836761
	.quad	0x3fe5c925f6f10b8b              # double 0.68080423575189408
	.quad	0x3fd0d8653c99904a              # double 0.26320773046450496
	.quad	0x3fdbd6ff4e998d14              # double 0.43499739337694732
	.quad	0x3fac496ccf33daa0              # double 0.05524768857315121
	.quad	0x3fe39e782a2e69b4              # double 0.61309440840277896
	.quad	0x3fe7266f2cd044ab              # double 0.72344168427129796
	.quad	0x3fde2abb9a4c3ce2              # double 0.47135820453782007
	.quad	0x3fea162269141877              # double 0.81520195506233406
	.quad	0x3feca02134774c84              # double 0.89454708335178212
	.quad	0x3febe241143f10ec              # double 0.87136892275205246
	.quad	0x3fee8daf01cb394e              # double 0.95479536390647879
	.quad	0x3fd63b9d6739c7b0              # double 0.34738860207209665
	.quad	0x3fcf77c570b9fd04              # double 0.24584262851929151
	.quad	0x3fcf3a17cc7c37fc              # double 0.24396035656576476
	.quad	0x3fe1b7de4b68bf13              # double 0.55369486549713753
	.quad	0x3fcf2104894be0c8              # double 0.24319512084890094
	.quad	0x3fd9c3649f09ea02              # double 0.40255084544301678
	.quad	0x3feba807e45ba29d              # double 0.86426157570993534
	.quad	0x3fed0408dc3e06ab              # double 0.90674250618049734
	.quad	0x3feda5e278ccc085              # double 0.9264995917674389
	.quad	0x3fe112e5cd890afd              # double 0.53355684417360261
	.quad	0x3fd17210a557e5a8              # double 0.2725869764977582
	.quad	0x3feedeb5bfdf1d06              # double 0.96468627428922171
	.quad	0x3febfe77d0f49d27              # double 0.87481299220681741
	.quad	0x3fee7e384cf19702              # double 0.9529077055746884
	.quad	0x3fe8e097d8178c33              # double 0.77741615491357263
	.quad	0x3fe3b841839c7083              # double 0.61624217706004492
	.quad	0x3fe6379747abbf7d              # double 0.69428600309582544
	.quad	0x3fe14610c56c14a5              # double 0.53980291899701582
	.quad	0x3fd19709f7a29ae0              # double 0.27484368498919132
	.quad	0x3fe7a6abfbbfeedb              # double 0.73909567994948178
	.quad	0x3fddbc059ad4a17c              # double 0.46460094566511834
	.quad	0x3fe43745d4fcfb85              # double 0.63174716567287759
	.quad	0x3fa08ff50ba668c0              # double 0.032348306343196409
	.quad	0x3fe4669aa0cce833              # double 0.63752490431148201
	.quad	0x3fe48ae14e332477              # double 0.64195313714402757
	.quad	0x3fea9a948bd96ffa              # double 0.83136966051415517
	.quad	0x3fc4c90e712d1a8c              # double 0.16238575483494733
	.quad	0x3fe474b6ce631dd6              # double 0.6392473250388615
	.quad	0x3fcbb4556a44fe40              # double 0.21644084633770611
	.quad	0x3fb5adf49b4b6208              # double 0.084685600198447841
	.quad	0x3fd484d631af257c              # double 0.32060770847291287
	.quad	0x3fba843df7f87e20              # double 0.10358035377475305
	.quad	0x3feb86db007cf940              # double 0.86021185012194934
	.quad	0x3fd8319b0b4909da              # double 0.37802768804627151
	.quad	0x3fcb93af7ae6e134              # double 0.21544450284069117
	.quad	0x3fe8bc8bf1e8a97c              # double 0.7730159497053104
	.quad	0x3fd09cec03662330              # double 0.25957775432520958
	.quad	0x3fd04157c3e65164              # double 0.25398821001842564
	.quad	0x3fa8c5e1d19965d0              # double 0.048384720645752943
	.quad	0x3fe4ceceb3fd5c41              # double 0.65024504808651085
	.quad	0x3fc9e5d90810bef8              # double 0.20232689756220856
	.quad	0x3fd7d367357314aa              # double 0.37227802486115513
	.quad	0x3fe4061e68cb20f0              # double 0.62574692218279715
	.quad	0x3fd1e57906e598cc              # double 0.27963090585252526
	.quad	0x3fb845d1265438e0              # double 0.094815322740234631
	.quad	0x3fe28140f11bba34              # double 0.57827803698984903
	.quad	0x3fee90f39a816d3e              # double 0.95519428421849972
	.quad	0x3fc948107d6c2b38              # double 0.19751173137805167
	.quad	0x3febda75127abec2              # double 0.87041715249321094
	.quad	0x3fc6b7b65608bc90              # double 0.17748145295033568
	.quad	0x3fea49bcf5e61e76              # double 0.82150123622063975
	.quad	0x3fd0c068f6bf9396              # double 0.26174377533453119
	.quad	0x3fe2bdee195219bc              # double 0.58568482346964101
	.quad	0x3fe4de8e20a00e9a              # double 0.65216738102067784
	.quad	0x3fedf724d873a2d7              # double 0.93641893649791086
	.quad	0x3fe06700ebbf3826              # double 0.51257368130041381
	.quad	0x3fec90641e595183              # double 0.89262586524505172
	.quad	0x3fe0b688d7b17862              # double 0.52228204848848869
	.quad	0x3fde129f880dac2e              # double 0.46988666807618784
	.quad	0x3fe1d340576378ae              # double 0.55703751628950271
	.quad	0x3fe89eca8a97312d              # double 0.76938368862605488
	.quad	0x3fc332e87a529f4c              # double 0.14999109242239184
	.quad	0x3fe8d68f6a385ce3              # double 0.77619143243910249
	.quad	0x3fe4ef086bf13196              # double 0.65417882044271169
	.quad	0x3fea3bc098474dfe              # double 0.81979398481274735
	.quad	0x3fccacd9d21baae8              # double 0.22402498969252993
	.quad	0x3fe5a434a52d4a0a              # double 0.67629463444819859
	.quad	0x3feff58530afb214              # double 0.99872073658986204
	.quad	0x3fba913ac4348200              # double 0.10377852716602121
	.quad	0x3fd3f108ee07c8e0              # double 0.31158660168797603
	.quad	0x3feec5cc8375787a              # double 0.96164537120399918
	.quad	0x3fe11b8a717c8e01              # double 0.53461191335048863
	.quad	0x3fd4ba3002a4fa32              # double 0.32386398561712604
	.quad	0x3fe9636f1d8f0911              # double 0.7933879449194895
	.quad	0x3fd515428f464ecc              # double 0.32942260734237716
	.quad	0x3fe0fec080f80420              # double 0.53109765233250883
	.quad	0x3facb0fe405a7ba0              # double 0.056037850719113935
	.quad	0x3fe011ceb33e2f08              # double 0.50217375763301764
	.quad	0x3fed16bca370a4b3              # double 0.9090254966914898
	.quad	0x3fc1cc0d17dbdb28              # double 0.13903964676838965
	.quad	0x3fe8861a3ee1341b              # double 0.76636993676368392
	.quad	0x3fd3888f80988bda              # double 0.30520999487106126
	.quad	0x3f9a4aa780b271c0              # double 0.025675408582729764
	.quad	0x3fe7de1e00c1b873              # double 0.74586391589924828
	.quad	0x3fbaa4903b93d580              # double 0.10407353834655986
	.quad	0x3fe32f6087a2dec0              # double 0.59953333369681872
	.quad	0x3fa5629a819f7b70              # double 0.041767910311810819
	.quad	0x3fe732ecbaf6b4f4              # double 0.72496639744136226
	.quad	0x3fe7fea18da28e5c              # double 0.74983289397318797
	.quad	0x3feed3c7ef25c73a              # double 0.96335217197904588
	.quad	0x3feb315ac89f80e8              # double 0.84977473434630912
	.quad	0x3fe71e3a6d0b62d8              # double 0.72243996904134189
	.quad	0x3fd9262407e05538              # double 0.39295292634172396
	.quad	0x3fe8d99144029376              # double 0.77655852587905261
	.quad	0x3fe2b4c44822f421              # double 0.58456625069777968
	.quad	0x3fc48a7518ca3dc8              # double 0.16047538481187318
	.quad	0x3fd08ae6710d28f6              # double 0.25847779312302011
	.quad	0x3fe0da73160f6b49              # double 0.52666620548857523
	.quad	0x3fdd3969a76dc27c              # double 0.4566291937872291
	.quad	0x3fd933a062df8c6e              # double 0.39377603202428346
	.quad	0x3fd12e47b72da7ac              # double 0.26844971550473917
	.quad	0x3fdcd8629bfb3236              # double 0.45070710403959724
	.quad	0x3fd315edb9d1febe              # double 0.29821341654313105
	.quad	0x3fe0b4cfeeab7ac1              # double 0.52207180609897119
	.quad	0x3f9d615ddc2274c0              # double 0.028691736756276454
	.quad	0x3fe36337298d383d              # double 0.6058612643771607
	.quad	0x3fa28204a1ff2400              # double 0.036148209357243388
	.quad	0x3fe3eedc96f90783              # double 0.62290791975850401
	.quad	0x3fb84a65183e82c8              # double 0.094885176104536062
	.quad	0x3fec33d89681b9d2              # double 0.88132886310432412
	.quad	0x3fb03f5683de8c28              # double 0.063466460413608261
	.quad	0x3fec5764b4eaab37              # double 0.88566813788688747
	.quad	0x3fdf2450ff569990              # double 0.48659157691363308
	.quad	0x3feb9644f688d27c              # double 0.86209343100797708
	.quad	0x3fb080dbc385a150              # double 0.064466223940717216
	.quad	0x3fe0b3fc026187a6              # double 0.52197075333628074
	.quad	0x3fc884ea4d83ac74              # double 0.19155625138168697
	.quad	0x3fdf6f1f0ada820a              # double 0.49115730342785524
	.quad	0x3feacb8e86e28834              # double 0.83734823555665238
	.quad	0x3fdab7ede5e36fc6              # double 0.41747615289727624
	.quad	0x3fe4c5a0563f9f9f              # double 0.64912430615821737
	.quad	0x3fec725c5c772196              # double 0.88896005687370194
	.quad	0x3feda467c1800ed5              # double 0.92631900589955285
	.quad	0x3fec3a5f5db83701              # double 0.88212555222136768
	.quad	0x3fe64dede6576f6b              # double 0.69701285351355347
	.quad	0x3fd3baf9d1546cbc              # double 0.30828710024224981
	.quad	0x3fe388e3a723c2b5              # double 0.61046011585684445
	.quad	0x3fbbeac504145f78              # double 0.10905104970549739
	.quad	0x3fecd3386c8d1757              # double 0.90078374101060887
	.quad	0x3fd2ce790741f2d8              # double 0.29385209759474895
	.quad	0x3fd81fa6f2f3f5a8              # double 0.37693189359546375
	.quad	0x3fe1ce1a3d3a907c              # double 0.55640899618857942
	.quad	0x3fd8b2b892d3955c              # double 0.38590826357388663
	.quad	0x3fecaaf8943cb99d              # double 0.89587048485354936
	.quad	0x3fd62fae46c90676              # double 0.34666020310041945
	.quad	0x3fdee646c6bb3dd4              # double 0.48280496032108755
	.quad	0x3fbfd39322e19208              # double 0.12432212449636648
	.quad	0x3fbf03a298c60ab0              # double 0.12114921789001687
	.quad	0x3fc2ff11168c875c              # double 0.14840901947996599
	.quad	0x3fe460dd89b3e4f4              # double 0.63682438750325199
	.quad	0x3fe9796da97ef399              # double 0.79607279877346848
	.quad	0x3fee37319f79c1ac              # double 0.94423752925472603
	.quad	0x3fed64dbd003a2f5              # double 0.91856184604429691
	.quad	0x3fdcabbc0c1b8dbe              # double 0.44798184568773169
	.quad	0x3fd46c3f7c05e7ce              # double 0.31910693275096669
	.quad	0x3fec0f66f6a87c16              # double 0.87688015151423104
	.quad	0x3fe4699798e02bec              # double 0.6378896699765142
	.quad	0x3fd8002b5f804944              # double 0.37501034094124841
	.quad	0x3f9f3aeaf02bdd00              # double 0.030498190792937585
	.quad	0x3fc6fd59ef22a420              # double 0.1796066682484545
	.quad	0x3fe322003b015596              # double 0.59790050053077226
	.quad	0x3fedf13ac3844757              # double 0.93569696604593389
	.quad	0x3fed221fe3d9c6cf              # double 0.91041559698188645
	.quad	0x3fe3518e8a6b5712              # double 0.60370566401499759
	.quad	0x3fd75cdbfafbd3fc              # double 0.36504268179061206
	.quad	0x3fec343b7cc8afd0              # double 0.8813760220705209
	.quad	0x3fe1a70ce1bb1dd0              # double 0.55164188469000841
	.quad	0x3fcc784cf9905e24              # double 0.22242128549326978
	.quad	0x3fd4d1210b97a4f2              # double 0.32526422626558749
	.quad	0x3fd5e672005f0c4c              # double 0.34219026600130031
	.quad	0x3fe8a172b806c9a6              # double 0.76970802252462955
	.quad	0x3fd8a10f4c53328c              # double 0.38483030751812275
	.quad	0x3fe34c8aeb6041f4              # double 0.60309358569980853
	.quad	0x3fe29c33765dfa46              # double 0.58156750792097323
	.quad	0x3fee6f96b6ea1081              # double 0.95112167096569078
	.quad	0x3fbce9a924510cd8              # double 0.11294037949214741
	.quad	0x3fe5bc72c5e17ff6              # double 0.67925394676785689
	.quad	0x3fa1481ec0403b60              # double 0.033753357856872723
	.quad	0x3fe2d4ead6de2e2c              # double 0.58849088636765634
	.quad	0x3fc028171cd299f4              # double 0.12622345836025739
	.quad	0x3fdbd6031f42d118              # double 0.43493726780731512
	.quad	0x3fc0d5e547688770              # double 0.13152757632002077
	.quad	0x3feb2e13b2332a0e              # double 0.84937462620411153
	.quad	0x3fe13542bc9a7908              # double 0.53775154911616685
	.quad	0x3fd7dfe9cf93e21e              # double 0.37304158469444981
	.quad	0x3fea21216d4579a2              # double 0.81654425947254006
	.quad	0x3fca31e6eaf75558              # double 0.2046478888793597
	.quad	0x3fd23f57ca4c19f8              # double 0.28511614566414734
	.quad	0x3f9eb3b250b1bc80              # double 0.029982362914264815
	.quad	0x3fe4c012db2153dd              # double 0.64844649123062548
	.quad	0x3fe78c4467d326e1              # double 0.73587246206554024
	.quad	0x3fe9bf4c16072a49              # double 0.80460171034185024
	.quad	0x3fc30bbd583f3100              # double 0.14879576500823788
	.quad	0x3feb67d7b9a8d649              # double 0.85642610799431751
	.quad	0x3fee6316a5334558              # double 0.94959575906447479
	.quad	0x3fe4b513071d1c21              # double 0.64710379971882415
	.quad	0x3fea1817ab5ebb93              # double 0.81544097395623039
	.quad	0x3fef1658992ae993              # double 0.9714777938418585
	.quad	0x3fe559d45de15811              # double 0.6672155221556314
	.quad	0x3fee623b8b2f7c11              # double 0.94949128327050591
	.quad	0x3fdee7d4dffbf2e2              # double 0.48289987443403792
	.quad	0x3fc74615b2add374              # double 0.18182631706772734
	.quad	0x3fe0a780abb0498c              # double 0.52044709713872939
	.quad	0x3fe8598c0cb2dd58              # double 0.76093103866780165
	.quad	0x3fed475dc82992db              # double 0.91496171087473088
	.quad	0x3fecde03225200e3              # double 0.90210110381306341
	.quad	0x3fd0064b359d9a4e              # double 0.25038414226438455
	.quad	0x3feda94e708ac4a2              # double 0.92691728573676735
	.quad	0x3fa003a7f9555b10              # double 0.031277894197662914
	.quad	0x3fe53404bbae41fa              # double 0.66259991318116751
	.quad	0x3fecedb569fd198a              # double 0.90401716900741858
	.quad	0x3fe09759248e7cbc              # double 0.5184751237865366
	.quad	0x3fe0d9a8ea73c30e              # double 0.52656980315632196
	.quad	0x3fece209aaa1333a              # double 0.90259249998198432
	.quad	0x3fb3d6d3c73bf3c0              # double 0.077496753827246856
	.quad	0x3fd90b14dfe1bafc              # double 0.39130136359646861
	.quad	0x3fe57caec31f62e5              # double 0.67147005185969688
	.quad	0x3fdc0c6733a366c6              # double 0.43825702708054981
	.quad	0x3fc0a6757166ec28              # double 0.13007991826256782
	.quad	0x3fe54e72ed8cbb9c              # double 0.66582628628190177
	.quad	0x3fc6cf3cb4059b20              # double 0.17819937505847694
	.quad	0x3fe3413df165d94e              # double 0.60171410701767925
	.quad	0x3fe8ebec1391b61d              # double 0.7787990934572836
	.quad	0x3fd481dbfe26f6a0              # double 0.32042598552275514
	.quad	0x3fe2cea297ddb243              # double 0.58772401486709958
	.quad	0x3fe8fbf1cd2aec28              # double 0.78075494834718473
	.quad	0x3fd0ac9981bb4602              # double 0.26053464573951157
	.quad	0x3fe46feed79e4879              # double 0.63866369355152053
	.quad	0x3fe18f21d7e32573              # double 0.54872219243513454
	.quad	0x3fedd524a4dabd09              # double 0.93226844976553125
	.quad	0x3fbbb720bdf1b0a0              # double 0.10826305997187768
	.quad	0x3fdae839e5005212              # double 0.42042395938304467
	.quad	0x3fe537906ac10e60              # double 0.66303273058333545
	.quad	0x3fa9e30d1c384920              # double 0.050560388274009549
	.quad	0x3fb6242b5dbcc520              # double 0.086489401230910534
	.quad	0x3fe4c4c025f76640              # double 0.64901740470231317
	.quad	0x3fd02981a8e21576              # double 0.25253335468763483
	.quad	0x3fe7e883d203ea41              # double 0.74713316935169172
	.quad	0x3fdae2c50c492848              # double 0.42009092521459879
	.quad	0x3fdd7aee60f0c904              # double 0.46062812296726485
	.quad	0x3fcdb1d564275078              # double 0.2319895495444404
	.quad	0x3fe3a3dfc2406cde              # double 0.61375415744569373
	.quad	0x3fd0fcb933138b4c              # double 0.26542501438068622
	.quad	0x3f8d58cfe37d3000              # double 0.014329551820672748
	.quad	0x3fdeff0f7039355c              # double 0.48431764563868795
	.quad	0x3fd214ca126cbd92              # double 0.28251888083738053
	.quad	0x3fe85d67c6890cb8              # double 0.76140202309070215
	.quad	0x3fe19a06fdfbc52e              # double 0.55005216222904152
	.quad	0x3feb51d7d3421113              # double 0.85374060880033864
	.quad	0x3fd5af6a34b11ce4              # double 0.33883147378624145
	.quad	0x3feae956cc068eae              # double 0.84098377083542686
	.quad	0x3fd6f25d4a89e004              # double 0.35854275015981352
	.quad	0x3fe5c26b274c6307              # double 0.67998273539987586
	.quad	0x3fe7255878ed3047              # double 0.72330878847561386
	.quad	0x3fee2013489a7e04              # double 0.94141544514053565
	.quad	0x3f8d6e6d9a8ada00              # double 0.014370781210669925
	.quad	0x3fe51e1170551625              # double 0.65992042484203195
	.quad	0x3fde39a08bb33f0c              # double 0.47226728098483828
	.quad	0x3fe1b7242e5b3e29              # double 0.55360611967075102
	.quad	0x3feb35b020f5a69d              # double 0.85030371129433358
	.quad	0x3fe3176d51f410c7              # double 0.59660974508781173
	.quad	0x3fc209784c6f7fa0              # double 0.14091399891094358
	.quad	0x3feb51f997313d0c              # double 0.85375670938256709
	.quad	0x3fdcc0a23129eeba              # double 0.44925741959717025
	.quad	0x3fdb395725a504ee              # double 0.42537478138190365
	.quad	0x3fef4690bc4617d0              # double 0.97736393711306313
	.quad	0x3fe12dc47fc959cd              # double 0.53683686216646154
	.quad	0x3fec90b305bb355e              # double 0.89266348952666497
	.quad	0x3fd48f60b7e9f676              # double 0.32125108681052639
	.quad	0x3fe4a1faee95dc7c              # double 0.64477297400198053
	.quad	0x3fe65041f2f531cd              # double 0.69729707195943436
	.quad	0x3fcc258295e6a398              # double 0.21989471740132838
	.quad	0x3fe9699c98fdc140              # double 0.79414205437755214
	.quad	0x3feb4c7f4795962f              # double 0.85308803540528355
	.quad	0x3fc881ba89e6f124              # double 0.19145900472165878
	.quad	0x3fd58ac8a861cb52              # double 0.33659569209628615
	.quad	0x3fd0e7b6dd621b6c              # double 0.26414271945434709
	.quad	0x3fd927a3c6009e42              # double 0.39304441772626231
	.quad	0x3fe1d5b4c572ee4f              # double 0.55733717502830327
	.quad	0x3fcc8eec92f59cec              # double 0.22311169791939933
	.quad	0x3fdc17f360878682              # double 0.43896183420847745
	.quad	0x3fc15094bafb89b0              # double 0.13527163629539762
	.quad	0x3fea65bf66fde67e              # double 0.82492036929689028
	.quad	0x3fd44a18bc85ce6c              # double 0.31702249918382708
	.quad	0x3fe200939dfbbc6d              # double 0.56257038932916503
	.quad	0x3fd954f07d97b484              # double 0.39580929055120628
	.quad	0x3fcb35980b12623c              # double 0.21257305660835069
	.quad	0x3fe3f387a5f6e03f              # double 0.62347776808656608
	.quad	0x3fe49b10ed365723              # double 0.6439289696743099
	.quad	0x3fe2c7eba5a46095              # double 0.58690435745212943
	.quad	0x3fd5f2b0fa6ed268              # double 0.34293770271623325
	.quad	0x3fefae16da7be9c7              # double 0.99000113175071013
	.quad	0x3fb41875ebda6df8              # double 0.078498239594800512
	.quad	0x3fe9b1952001cef7              # double 0.80292755366687529
	.quad	0x3fe0628a2d1d00b6              # double 0.51202877818288672
	.quad	0x3fab493450eb9c40              # double 0.05329287994191434
	.quad	0x3fd6e952c63e9ddc              # double 0.3579909263594041
	.quad	0x3fe153060f836ed0              # double 0.54138472585642639
	.quad	0x3fc3736f849ca258              # double 0.15196031546772093
	.quad	0x3fe9be3e3b1d6300              # double 0.80447303338868892
	.quad	0x3feb8f41143f5324              # double 0.86123708681643451
	.quad	0x3fe6c066b4bdf683              # double 0.71098647404842585
	.quad	0x3feac68d04943f5c              # double 0.83673716444352974
	.quad	0x3fd1f49de9e38832              # double 0.28055522766783547
	.quad	0x3fd04c12df05b0b4              # double 0.25464317111505896
	.quad	0x3fea091d1062b983              # double 0.81361249161072668
	.quad	0x3fee38ec81421f2a              # double 0.94444871183165913
	.quad	0x3fe09f65bd75aa20              # double 0.519457693136534
	.quad	0x3fd7449181199d22              # double 0.36356008155276431
	.quad	0x3fe8dd8b27ef1534              # double 0.77704389381020755
	.quad	0x3fbcc41c17104f50              # double 0.1123673969562422
	.quad	0x3fed608fe38332a8              # double 0.91803736148866211
	.quad	0x3fe16e294eafefd2              # double 0.54469743126491665
	.quad	0x3fe5ccf9c0c53ecf              # double 0.68127143526541001
	.quad	0x3fe4266c216f7c35              # double 0.62969023256653733
	.quad	0x3fe7ee17ad4fc89b              # double 0.74781402444775169
	.quad	0x3fe797a834469f22              # double 0.73726282320146574
	.quad	0x3fd2a0ab1531799a              # double 0.29105641431478946
	.quad	0x3fcf8acab855081c              # double 0.24642309189408784
	.quad	0x3fa3e973fd232480              # double 0.038890480661913251
	.quad	0x3fe1ff96f82be9f2              # double 0.56244991751674278
	.quad	0x3fdf40555ad6dcdc              # double 0.48830160017992141
	.quad	0x3fe8e8b0e6c79180              # double 0.778404665700279
	.quad	0x3fd4d31224e663a6              # double 0.32538274386893773
	.quad	0x3fbe30d8d983c140              # double 0.11793284712235153
	.quad	0x3fd8ac899ae0a290              # double 0.38553085446123081
	.quad	0x3fe58b16db9f2794              # double 0.67322867293227029
	.quad	0x3fd1a65836ef984a              # double 0.27577786793552106
	.quad	0x3fe9cea6c0b376da              # double 0.80647599827690475
	.quad	0x3fc60595e0280e88              # double 0.17204545445575925
	.quad	0x3fd95ff88df768e0              # double 0.39648259986792134
	.quad	0x3fec52bac6e20671              # double 0.88509882778471483
	.quad	0x3fd806b62a51cab8              # double 0.37540964253200171
	.quad	0x3fecf332931138ba              # double 0.90468720172955064
	.quad	0x3fec37b99c1cb309              # double 0.88180237284322616
	.quad	0x3fd3a44315db4d62              # double 0.30690076002539091
	.quad	0x3fe08eca2f5ebbce              # double 0.51743039371455679
	.quad	0x3fed3129440b0da8              # double 0.91225112237628014
	.quad	0x3fdc24ccf0ce3716              # double 0.43974612728276108
	.quad	0x3fec5904cd2d2aee              # double 0.88586654733202663
	.quad	0x3fe3217977cf576a              # double 0.59783624077202302
	.quad	0x3fbf0f56741c94b0              # double 0.12132778486973694
	.quad	0x3fe8e25bde786b7a              # double 0.77763169718978919
	.quad	0x3fe30e99410d0f3c              # double 0.59553206162716021
	.quad	0x3fbc51b5b4be6568              # double 0.11062179243744696
	.quad	0x3fd06520c9ac2dec              # double 0.25617236799800369
	.quad	0x3fcb069b523214d8              # double 0.2111391211839535
	.quad	0x3fc7165d31545208              # double 0.18036999615345928
	.quad	0x3fdcea73630f7ef4              # double 0.45180973695640536
	.quad	0x3fe7f3132f67878a              # double 0.74842223414110376
	.quad	0x3fdbb7c738847c86              # double 0.43309193152703818
	.quad	0x3fea7c1b5a6902fa              # double 0.82764976175539506
	.quad	0x3fb086479c2fa0b8              # double 0.064548946029051701
	.quad	0x3fd6caf3d56c9cc8              # double 0.35613723604405978
	.quad	0x3fec224a8e7cfc51              # double 0.87918594197970823
	.quad	0x3fd2b3b50091bf2c              # double 0.29221844726179103
	.quad	0x3fe675ab0e37b785              # double 0.70186379219897843
	.quad	0x3fdfa75c9b56b9ce              # double 0.49458995027353303
	.quad	0x3feb4a5dcbb1449a              # double 0.85282792838747246
	.quad	0x3fd650f1e598b930              # double 0.34869048520603751
	.quad	0x3fdd6b854b3dbebc              # double 0.45968754146359081
	.quad	0x3fedb6968f1381fc              # double 0.92853858894892438
	.quad	0x3fdeb3bd0469a8fc              # double 0.47972035818987968
	.quad	0x3fcc2b064fc70a14              # double 0.2200630082644045
	.quad	0x3fb7b293d4ba0330              # double 0.092568625865180775
	.quad	0x3feb4b8c86e658a8              # double 0.85297228191008845
	.quad	0x3fd4a0253f7e5616              # double 0.32227450562035764
	.quad	0x3fecaf731f1813aa              # double 0.89641719887787485
	.quad	0x3fa6acba06fffb70              # double 0.044286549906238259
	.quad	0x3fd7b75f147fc7a2              # double 0.3705671024500764
	.quad	0x3f83afd56077bbc0              # double 0.0096127195419891675
	.quad	0x3feedbccb70afac9              # double 0.96433101416172306
	.quad	0x3fe5a97c15bf1f16              # double 0.67693905112625674
	.quad	0x3fc80ef175d27688              # double 0.18795603039773234
	.quad	0x3fe688fddb896b94              # double 0.70422261122017682
	.quad	0x3fe9ac01523c24fe              # double 0.80224672376166928
	.quad	0x3fdf393cfb93c17c              # double 0.48786854332049479
	.quad	0x3fe049fb5d857e8a              # double 0.50903099313650668
	.quad	0x3fb58fe24bbbd9f0              # double 0.084226745118804791
	.quad	0x3fe6138a36eb18c9              # double 0.68988524175872457
	.quad	0x3fefe1e076cf38a5              # double 0.99632285313579826
	.quad	0x3fd6a1ba0ca65fe4              # double 0.35362101779310096
	.quad	0x3fc0ccf48d84a790              # double 0.13125473890368911
	.quad	0x3fe565cdfd62d8b3              # double 0.6686773251483572
	.quad	0x3feafab384ca20dc              # double 0.84310317931615541
	.quad	0x3fa761eacbc7fa60              # double 0.04566892373621978
	.quad	0x3fe0a5f3e1682ea0              # double 0.52025789284512669
	.quad	0x3febff46d85c99db              # double 0.87491171129368739
	.quad	0x3fc2bfa2f5f77c3c              # double 0.14647328386397074
	.quad	0x3fe6500bfcc10a57              # double 0.69727134099987154
	.quad	0x3fe6d9eb7e4d827a              # double 0.71410154980192364
	.quad	0x3fe0bdd6c65463b0              # double 0.52317370163210875
	.quad	0x3fea56df9b115ace              # double 0.82310467039754953
	.quad	0x3fe1705399cfa5fe              # double 0.5449617389796797
	.quad	0x3fdeba33bf694b16              # double 0.48011487667570074
	.quad	0x3fe97554b73010e9              # double 0.79557262209757795
	.quad	0x3fe93bfc6bcd9c92              # double 0.78857251220041946
	.quad	0x3fcc4c168cf5eb98              # double 0.22107202418177674
	.quad	0x3fc4227263b6e444              # double 0.15730123394840423
	.quad	0x3fe654e7862755b2              # double 0.69786430551419287
	.quad	0x3fe3d8c52a4ce49a              # double 0.62021120321073231
	.quad	0x3fad6e98de14ca50              # double 0.057484414205096201
	.quad	0x3fe5aa51addd4b9c              # double 0.67704090078256085
	.quad	0x3fdc5e010291ad16              # double 0.44323754549869088
	.quad	0x3fe815f244a27544              # double 0.75267899899669332
	.quad	0x3fdd7fe2df8e2f94              # double 0.46093055564483021
	.quad	0x3fed1493f5adbf75              # double 0.90876195892449962
	.quad	0x3fe14a1054a9ae87              # double 0.54029099021632099
	.quad	0x3fe849bd7c340a89              # double 0.75900148638204812
	.quad	0x3feaefb90056b163              # double 0.84176302019254157
	.quad	0x3fb739285d46e738              # double 0.090715906880089459
	.quad	0x3feac68b42475e39              # double 0.83673632569384104
	.quad	0x3fe7e9ceaf39c2b8              # double 0.74729093765025478
	.quad	0x3fb2a77f0140a218              # double 0.072868287854938152
	.quad	0x3fab58b0ae498a90              # double 0.053411027217198925
	.quad	0x3fc8d12a57d2a0cc              # double 0.19388322151394843
	.quad	0x3fd4e160dbff772c              # double 0.32625600322886572
	.quad	0x3fe5ad2989c8740d              # double 0.67738797102686166
	.quad	0x3fbe8a5e8a0814b0              # double 0.11929884786521217
	.quad	0x3fcc26e6c9b7d1b8              # double 0.21993718003763063
	.quad	0x3febf4a7fdc96943              # double 0.87361526077010188
	.quad	0x3fcebbf41c4709b8              # double 0.24011088734375874
	.quad	0x3fbda2fc3f4996a8              # double 0.1157682089338673
	.quad	0x3fe41d066e82d1a1              # double 0.62854310592824814
	.quad	0x3feb077e4a076e7b              # double 0.84466471155924638
	.quad	0x3fe85560f27bf531              # double 0.76042220459172516
	.quad	0x3fe03a9f1bb0fe17              # double 0.50715594681236353
	.quad	0x3fbedf26d9202568              # double 0.12059252549092536
	.quad	0x3fe726a2227daeb2              # double 0.72346598373902382
	.quad	0x3fc07446c5f18288              # double 0.12854847588734608
	.quad	0x3fd46386963a2182              # double 0.31857456846821475
	.quad	0x3fec1cc109d7fcad              # double 0.87851001665685191
	.quad	0x3fecd80d588ad2a3              # double 0.90137355130589858
	.quad	0x3fe20c3653ee5cd6              # double 0.56399074929040682
	.quad	0x3fe037446ff0ea36              # double 0.50674650062075588
	.quad	0x3fe69996d2983a26              # double 0.70624867564931004
	.quad	0x3fe6c9ee424bd4d3              # double 0.71214974354247784
	.quad	0x3febe526c1c1c3ae              # double 0.87172258227484689
	.quad	0x3fed0e1b4457eab8              # double 0.90797198627782105
	.quad	0x3f848012b217f800              # double 0.010009904918657497
	.quad	0x3fd44624464886c8              # double 0.31678110946277771
	.quad	0x3fd051d36e4591de              # double 0.25499425667501707
	.quad	0x3fe5d8ca9fc69e91              # double 0.68271380621168209
	.quad	0x3fd8a0835fc15892              # double 0.38479694701289546
	.quad	0x3fea320ab417c2aa              # double 0.8186086194455886
	.quad	0x3fbf4fd8f9d107f8              # double 0.12231212710415196
	.quad	0x3fde92b8229163d8              # double 0.47770503402494802
	.quad	0x3fe6a65386266edb              # double 0.70780349923321795
	.quad	0x3fd8bd4f63dd60c2              # double 0.38655457260530224
	.quad	0x3fd23b2d605f927a              # double 0.28486189280946628
	.quad	0x3fe4e748a3c63d5c              # double 0.6532328795164335
	.quad	0x3fe1e807b857efbb              # double 0.55957399372663674
	.quad	0x3fe7e516728265d8              # double 0.74671480527029654
	.quad	0x3fd1fa199bed8c90              # double 0.2808898947461751
	.quad	0x3feb18a7f871dbc2              # double 0.84675978206984603
	.quad	0x3fe530528e0effc2              # double 0.66214874025171633
	.quad	0x3fe8214ca46264c6              # double 0.75406486612623591
	.quad	0x3fe5db137b7081ff              # double 0.68299268826746118
	.quad	0x3febcea7e1afd02a              # double 0.86897653655478746
	.quad	0x3fee894948abee14              # double 0.95425857728645491
	.quad	0x3fe3f63e32e8dff5              # double 0.62380895560545346
	.quad	0x3fd1ea9f9ef1c7ae              # double 0.27994528314513445
	.quad	0x3fe39d643a8a3ada              # double 0.61296283181749378
	.quad	0x3fd82bbbda57abb6              # double 0.37766929934030757
	.quad	0x3fd7959e370be40c              # double 0.36850695968274816
	.quad	0x3fb70fc3bd1bf388              # double 0.090084298772081906
	.quad	0x3fe14ca0ed2bf010              # double 0.54060407946190203
	.quad	0x3feae1ee29692f95              # double 0.84007938468993137
	.quad	0x3fd0137b233b6966              # double 0.25118902626640816
	.quad	0x3fe013b7e113a5a4              # double 0.50240701637556073
	.quad	0x3fed6763868f8844              # double 0.91887069970494694
	.quad	0x3fc073e08557c6a0              # double 0.12853628645784898
	.quad	0x3fe7425f0cc40e9d              # double 0.72685196393327411
	.quad	0x3fda67639216cefe              # double 0.41256036058915402
	.quad	0x3fe01d069858212c              # double 0.50354318384873897
	.quad	0x3fe7ac2830d03a88              # double 0.73976525815835803
	.quad	0x3fec4b451b975e2f              # double 0.8841882265941815
	.quad	0x3fed9c6ea431ce8a              # double 0.92534572667359893
	.quad	0x3fc624e272e3066c              # double 0.17300062761028145
	.quad	0x3fd7aa81706de832              # double 0.36978183726717184
	.quad	0x3fd9da984925e1fa              # double 0.40396697181088792
	.quad	0x3fe002b2e3225129              # double 0.5003294407092983
	.quad	0x3fd0d2d0a17bee10              # double 0.2628671242707421
	.quad	0x3fd942a5a9e175e2              # double 0.39469281759178731
	.quad	0x3f7f31a514cea800              # double 0.0076157043921885048
	.quad	0x3fbeb9e70ddb7918              # double 0.12002414787591353
	.quad	0x3fe28e07318d3890              # double 0.57983741453223736
	.quad	0x3fd838e62e92c3ea              # double 0.3784728483979608
	.quad	0x3feb8ed1489cb10b              # double 0.86118377859159645
	.quad	0x3fc7c78ea30ede9c              # double 0.18577750169582863
	.quad	0x3fde5f39fc79d73a              # double 0.47456216483930158
	.quad	0x3fa3e887e097a870              # double 0.038883443990770483
	.quad	0x3fd9be9d38b2bba8              # double 0.40225916420871011
	.quad	0x3fe665fb0f2cdfec              # double 0.6999488159553926
	.quad	0x3fce1bbf69b7872c              # double 0.23522179281194988
	.quad	0x3fe4cc562ec8c762              # double 0.64994343888814066
	.quad	0x3fefb59de8a2e2e3              # double 0.99092002331516615
	.quad	0x3fec5d44bb598524              # double 0.88638531295524503
	.quad	0x3fe46db639c96fe2              # double 0.63839255606171386
	.quad	0x3fe5412474cb4af4              # double 0.66420195399618231
	.quad	0x3fc33bb532dc5208              # double 0.15025963767460859
	.quad	0x3fc1f5ca5eccd788              # double 0.14031343106188054
	.quad	0x3fe434b750496f68              # double 0.63143506699587437
	.quad	0x3fdac6bfdccae50c              # double 0.41838070451520148
	.quad	0x3fe225a74e2f0e41              # double 0.56709637899661669
	.quad	0x3f8c962ed221c100              # double 0.013958326137271104
	.quad	0x3fe8eeee070fc1c9              # double 0.77916623477181546
	.quad	0x3fef3cb09744a426              # double 0.97615842384869178
	.quad	0x3fe6414a20c1f768              # double 0.69546991727814333
	.quad	0x3fcdc4921c75ab44              # double 0.23256136312132913
	.quad	0x3fc48079d778f3bc              # double 0.16017077466122298
	.quad	0x3fec408097c59443              # double 0.88287381785324504
	.quad	0x3fdedc416a721f98              # double 0.48219333071801307
	.quad	0x3fe7fab562ba6f1b              # double 0.74935406954634531
	.quad	0x3fc8d9052b2b97b8              # double 0.19412293060230268
	.quad	0x3fe428a58da944ca              # double 0.6299617544956615
	.quad	0x3fc18848634b3dc0              # double 0.13697151993117807
	.quad	0x3fc1a566a3795058              # double 0.13786013586161761
	.quad	0x3feea3cc88738690              # double 0.95749498987807335
	.quad	0x3feaab52c4f8cfbe              # double 0.83341349097326378
	.quad	0x3fdfa304dabba174              # double 0.4943248878539841
	.quad	0x3fef268a46df986b              # double 0.973454607414863
	.quad	0x3fe5d7a201c82114              # double 0.68257236812590572
	.quad	0x3fc9474f9fdf4688              # double 0.19748874002702999
	.quad	0x3fce83af72ec55f8              # double 0.23839371787532548
	.quad	0x3fd6ef78856e143c              # double 0.35836613683960983
	.quad	0x3fd39adeb833ec9e              # double 0.30632751453931373
	.quad	0x3fef5d530a098722              # double 0.98014213524240668
	.quad	0x3fec09f0a4bcf1dc              # double 0.87621338057902731
	.quad	0x3f9f7fe4ec137ee0              # double 0.030761315258927335
	.quad	0x3fed976741954023              # double 0.92473185357267018
	.quad	0x3fb8cfe385a3d358              # double 0.0969221307057756
	.quad	0x3fed222fe1fe82a4              # double 0.91042322291840038
	.quad	0x3fe1444833b4006e              # double 0.53958520982997782
	.quad	0x3fe5b90a8070f354              # double 0.67883801542448419
	.quad	0x3fc9b82096f89114              # double 0.20093161937359894
	.quad	0x3fe8a2cb13583901              # double 0.76987222460027749
	.quad	0x3fe262f988344012              # double 0.57458187677730366
	.quad	0x3fedcfb572801564              # double 0.93160507548661231
	.quad	0x3fd5e50964b20e94              # double 0.34210429032848677
	.quad	0x3f95c8dfc11b2dc0              # double 0.021274086152329508
	.quad	0x3fdeec35219355a6              # double 0.48316696432933737
	.quad	0x3fde2e9dc4feaa88              # double 0.47159523237011358
	.quad	0x3fec8bbe765fb788              # double 0.89205859298611845
	.quad	0x3fef03e6a8161a6f              # double 0.96922619656909414
	.quad	0x3fcd95ac70727804              # double 0.23113017550070947
	.quad	0x3fcb2e32d9ecc894              # double 0.21234737053743358
	.quad	0x3fcc2acb7f601350              # double 0.2200559970807725
	.quad	0x3fe523cd2a86f4aa              # double 0.66062029176796
	.quad	0x3fe6785cb071c3bd              # double 0.70219263517184738
	.quad	0x3fa57c0d481178a0              # double 0.04196206574191419
	.quad	0x3fdaefb19363c84a              # double 0.42087973969967563
	.quad	0x3fefcb71c4dee05b              # double 0.99358452273646535
	.quad	0x3fe64fb9800f388b              # double 0.69723200809109309
	.quad	0x3fb22c3b2c6095b8              # double 0.070987413725183468
	.quad	0x3fa1c0d68b880340              # double 0.034674362690572114
	.quad	0x3fe1e185d4599263              # double 0.55877963518703344
	.quad	0x3fe6e93202d02b39              # double 0.7159662299103281
	.quad	0x3fedf4797d5c7bc6              # double 0.93609308704969219
	.quad	0x3fc8dac7e2b35688              # double 0.19417666024553548
	.quad	0x3fcd0926dc298d38              # double 0.22684179067719312
	.quad	0x3fed470358a62018              # double 0.91491858782046886
	.quad	0x3fdcc81088a12b32              # double 0.4497109731934642
	.quad	0x3fcf84aaf034c288              # double 0.24623619774640226
	.quad	0x3fec67eda4e5781e              # double 0.88768655973740684
	.quad	0x3fd134524e5e4fe0              # double 0.26881845143475225
	.quad	0x3fd953688bd887dc              # double 0.39571584374254853
	.quad	0x3f6f25c58280b000              # double 0.0038021905529799227
	.quad	0x3fe7671c79047b97              # double 0.73133681904060921
	.quad	0x3feee7e2551f4f02              # double 0.96580616593789181
	.quad	0x3fe99ece6489a8ff              # double 0.80063552509571412
	.quad	0x3fbab79375888b28              # double 0.10436364764659045
	.quad	0x3fc8e7ed2320f938              # double 0.19457782950662206
	.quad	0x3f8ce6f729590440              # double 0.01411240668233138
	.quad	0x3fdad4aa780a46a2              # double 0.41923009607953976
	.quad	0x3fd890b8492b99a6              # double 0.3838329996637192
	.quad	0x3fb65522a828a668              # double 0.087236562780753979
	.quad	0x3fb00f884093de60              # double 0.062737003103273903
	.quad	0x3fe47d9df5359516              # double 0.64033410923426248
	.quad	0x3fec6db987ac6f12              # double 0.88839413164848424
	.quad	0x3fe48fbf60688e51              # double 0.64254731015939559
	.quad	0x3fb8605689c1c8d0              # double 0.09522000182349477
	.quad	0x3feffb259e43c61c              # double 0.99940758620340686
	.quad	0x3fe6a3c85cddda47              # double 0.7074930013466848
	.quad	0x3fe8ec8f769a1bf8              # double 0.77887700237704305
	.quad	0x3fea6228e95c542f              # double 0.82448239877942864
	.quad	0x3fb9c14235290da8              # double 0.10060514257297959
	.quad	0x3fa483ea00780530              # double 0.040068924481611368
	.quad	0x3fe56143c7c80395              # double 0.66812314052377764
	.quad	0x3f8723136acf79c0              # double 0.011297370621773051
	.quad	0x3fdbe3639396f888              # double 0.43575372136172819
	.quad	0x3fe04f9f5b9e89e9              # double 0.50971954244988382
	.quad	0x3fc6329898718038              # double 0.17341906970523424
	.quad	0x3fe105ad7086ebaf              # double 0.53194305398880271
	.quad	0x3fe25fc0c369e90c              # double 0.57418859640827824
	.quad	0x3fe5d0d977794802              # double 0.68174432120054029
	.quad	0x3fe4861552e7fec4              # double 0.64136758988021159
	.quad	0x3fe73ff967c5a3f3              # double 0.72655935543036632
	.quad	0x3fc2258ea36c2254              # double 0.14177115420922581
	.quad	0x3fef7c8386bfe617              # double 0.98394943540842205
	.quad	0x3fe4b873b96253c9              # double 0.64751611907797113
	.quad	0x3fcb2265dc9b4314              # double 0.21198724052239781
	.quad	0x3fe92bc96ad4f0f9              # double 0.78659506669603652
	.quad	0x3fee0a1946d427d5              # double 0.93873275598275063
	.quad	0x3fd641a2d2e4169e              # double 0.3477561053735857
	.quad	0x3fbb6ef016705830              # double 0.10716152713607197
	.quad	0x3fe36fd52a981445              # double 0.60740145033981519
	.quad	0x3fd2d46cade4344c              # double 0.29421536428055073
	.quad	0x3fd7fd18d7d87df0              # double 0.37482281759909508
	.quad	0x3fe2bf436d1665da              # double 0.58584758096838674
	.quad	0x3fb56f2c5202de80              # double 0.083727617285029865
	.quad	0x3fe7c0d4488aef1e              # double 0.74228872459886808
	.quad	0x3fdbaaa0e240ca72              # double 0.43228933424976568
	.quad	0x3fe38840e44a0754              # double 0.61038250529984817
	.quad	0x3fd87839342c15f2              # double 0.3823378571981656
	.quad	0x3fcab837a743ecb0              # double 0.20874686877491433
	.quad	0x3f9cd050a9b6cf60              # double 0.028138409002806397
	.quad	0x3fe2f67020765977              # double 0.59258276310246927
	.quad	0x3fe488cb09cb1efe              # double 0.64169837868482182
	.quad	0x3fd04cfddeb1386a              # double 0.2546991991738482
	.quad	0x3fca3ca0eba26554              # double 0.20497523789962691
	.quad	0x3fe4858513dbb3c6              # double 0.64129880789334304
	.quad	0x3fd4c0853ce5a452              # double 0.32425051638580726
	.quad	0x3fd8407c6596134e              # double 0.37893590851335979
	.quad	0x3fdab373ac6df464              # double 0.4172028716928422
	.quad	0x3fde73d418a13e78              # double 0.47581961064586364
	.quad	0x3fd0518d7adfd83a              # double 0.25497757911159946
	.quad	0x3fe3365e5a971ae0              # double 0.60038678830536796
	.quad	0x3fe9ecc9d3bd66b4              # double 0.8101548324150003
	.quad	0x3fd78f9e99762b9a              # double 0.36814084040150308
	.quad	0x3fd123511da38824              # double 0.26778056997693711
	.quad	0x3fe41523e0685f21              # double 0.62758058385495386
	.quad	0x3fb54f98e00b7be0              # double 0.083245806406452072
	.quad	0x3fc2dcb12d937d8c              # double 0.14735998845479192
	.quad	0x3f9f5434cc403a20              # double 0.030594658819660947
	.quad	0x3fcc95c8c9fcf030              # double 0.22332105505654587
	.quad	0x3fd184b0749b4ce0              # double 0.2737237108933197
	.quad	0x3fec5c601b00b5ec              # double 0.88627629541377705
	.quad	0x3fef160ca0c5bbb4              # double 0.9714415683828208
	.quad	0x3fec2f7f67d3891e              # double 0.88079805639816633
	.quad	0x3f6a5fade12cf300              # double 0.0032194515310081107
	.quad	0x3fec110facd02854              # double 0.87708266975938409
	.quad	0x3fd78ce6cffef08e              # double 0.36797495185943141
	.quad	0x3fe040c45f9f8695              # double 0.5079061381949993
	.quad	0x3fbaf60599878fa8              # double 0.10531649587897951
	.quad	0x3fd5d74ddc9494f2              # double 0.34126612225584474
	.quad	0x3fe4fd89c4446644              # double 0.65594948132929476
	.quad	0x3fe16de25f5fe2ef              # double 0.5446636069092089
	.quad	0x3fc42955115e8e40              # double 0.15751136158097445
	.quad	0x3fe13aad1cd089fa              # double 0.53841262462475403
	.quad	0x3f81213494972600              # double 0.008364115509624348
	.quad	0x3fd704c41bc5afaa              # double 0.35966589653139158
	.quad	0x3fd672aa43ff1e7c              # double 0.35074860229767757
	.quad	0x3fe37644c96140f9              # double 0.60818709690104733
	.quad	0x3feefb2a51f6d698              # double 0.96815982826838631
	.quad	0x3fed43a73b113573              # double 0.91450845276419412
	.quad	0x3fc13d15c957902c              # double 0.1346766694179008
	.quad	0x3fbc620d56990440              # double 0.11087115635111022
	.quad	0x3fe238b7be60c5d2              # double 0.56942355330664385
	.quad	0x3fe2ce764edfd3c7              # double 0.58770289807454723
	.quad	0x3fee1fe9a2f753a4              # double 0.94139558629341424
	.quad	0x3fef47c33f6589de              # double 0.97751009351878415
	.quad	0x3fd33d4db0b86db4              # double 0.30061666734556103
	.quad	0x3fef568cca953513              # double 0.97931518141709472
	.quad	0x3f80f60965ad4d00              # double 0.0082817777780861412
	.quad	0x3fef2b1cb05956bd              # double 0.97401270335350143
	.quad	0x3fd1b0f5edc8ab84              # double 0.27642582150536321
	.quad	0x3fee64147bf0153c              # double 0.94971679884535076
	.quad	0x3fe363b5e4ac0945              # double 0.60592169439795696
	.quad	0x3fe2c387ec0ce212              # double 0.58636852363184944
	.quad	0x3fd098d39d39284a              # double 0.25932779649577198
	.quad	0x3feee76c7c6ebb08              # double 0.96574997237425552
	.quad	0x3fe8f53eca724ddf              # double 0.77993716755230114
	.quad	0x3fa83c8f895a70d0              # double 0.047337041394003188
	.quad	0x3feaae2e3625935b              # double 0.83376226974051393
	.quad	0x3fe19a4e1df1600f              # double 0.55008607719628511
	.quad	0x3fe0ff8c7919093d              # double 0.531194912451873
	.quad	0x3fe5989d1a046880              # double 0.67487959939468567
	.quad	0x3fbdcfc6ac866188              # double 0.11645166122469253
	.quad	0x3fc2919969b54e20              # double 0.14506833707365363
	.quad	0x3fe47bd022858c7d              # double 0.6401138948680366
	.quad	0x3fb15c33b9de7f40              # double 0.067813141706662527
	.quad	0x3fdb4cac8f82067a              # double 0.42655481352276292
	.quad	0x3fe87968a47d2c29              # double 0.76482040526150741
	.quad	0x3fd78db4b83792d4              # double 0.3680240439410174
	.quad	0x3feb77ee7840a519              # double 0.8583900784189239
	.quad	0x3feebf910df621e7              # double 0.96088459708067552
	.quad	0x3feb090e6be3e06e              # double 0.84485550949376687
	.quad	0x3fe84d13298b4c00              # double 0.75940855135047514
	.quad	0x3fe5bb857e89bec6              # double 0.67914080347505812
	.quad	0x3fd3fcef5ac501a8              # double 0.31231292595114235
	.quad	0x3fd5d6bd3b2bbc62              # double 0.34123163965609227
	.quad	0x3fd27d74f43d0c7a              # double 0.288907278551228
	.quad	0x3fc73350a3f4e80c              # double 0.1812535095758111
	.quad	0x3fe2fa3aa71397ec              # double 0.59304554588447678
	.quad	0x3fee1de88922edd6              # double 0.94115092071973083
	.quad	0x3fc841ef6a458890              # double 0.1895121830849047
	.quad	0x3fe6400a010102d0              # double 0.69531727024158307
	.quad	0x3fd5c44f4c4be1c8              # double 0.34010679674932165
	.quad	0x3fe482e8f08d384a              # double 0.6409802149080488
	.quad	0x3fe8cad73d7769e3              # double 0.77476083760421621
	.quad	0x3fe629658b2da9e1              # double 0.6925533026054006
	.quad	0x3fe262a8a41186a2              # double 0.57454330486890037
	.quad	0x3fec7557da93dc47              # double 0.88932411852773263
	.quad	0x3fe5345741cf3505              # double 0.6626392636623285
	.quad	0x3fe05b2aff70e555              # double 0.51112890139408285
	.quad	0x3fc5b088e4150424              # double 0.16944991242238061
	.quad	0x3fd58b1fb951fae6              # double 0.33661645028762022
	.quad	0x3fef807ac47f0efd              # double 0.98443354013622264
	.quad	0x3fb9dc9d64881da0              # double 0.10102256492984063
	.quad	0x3faaf2807220aad0              # double 0.052631391460030152
	.quad	0x3fe51f2b86791361              # double 0.66005493416069438
	.quad	0x3fdd85eb7e8aa606              # double 0.46129882199838368
	.quad	0x3fbf83bbb26283f0              # double 0.12310383896921429
	.quad	0x3fca51c42d2b3ef0              # double 0.20562030988229862
	.quad	0x3fc047e48e2a0918              # double 0.12719399396525755
	.quad	0x3fda7ecd6334e7ae              # double 0.41398939788961797
	.quad	0x3fe587df34bb4dc4              # double 0.67283592509414136
	.quad	0x3fd6bd1401f5cba4              # double 0.35529041472835332
	.quad	0x3fe2a3a9b7a6a7c7              # double 0.58247838849387612
	.quad	0x3fe90da37946d468              # double 0.78291486441470415
	.quad	0x3feaa77a9557718c              # double 0.83294419449116352
	.quad	0x3fd86550054865b8              # double 0.38118362918757098
	.quad	0x3fea13914a93c750              # double 0.81488861623641107
	.quad	0x3fdb29cd24d5fbf0              # double 0.42442635152104824
	.quad	0x3fd48caeeae3d676              # double 0.32108662546611499
	.quad	0x3fe57831a2d6fb90              # double 0.67092210583347089
	.quad	0x3fecc6cb34f1b9f2              # double 0.89926681843445366
	.quad	0x3fdea0b84e4e641c              # double 0.47855956694690049
	.quad	0x3fcaa112039bf5bc              # double 0.20804047752601018
	.quad	0x3fdba4d771d68170              # double 0.43193613163932465
	.quad	0x3fd72b1fc1a80162              # double 0.36200708305115914
	.quad	0x3fe7ffc9d906aa32              # double 0.7499741781987892
	.quad	0x3fe8faf496c32276              # double 0.78063420720816512
	.quad	0x3fd56222c1bcad22              # double 0.33411473197584673
	.quad	0x3f9cb433b3d5f7e0              # double 0.02803116593485544
	.quad	0x3fe2b26af3ae5000              # double 0.58427951425483116
	.quad	0x3fd3b2affe37f380              # double 0.3077812178233259
	.quad	0x3fdbdc96b611ccba              # double 0.43533866672732879
	.quad	0x3fdacff305e4170e              # double 0.41894221854487135
	.quad	0x3fd49b9822b8c0f8              # double 0.32199672117987133
	.quad	0x3fe2bac5fe88cdea              # double 0.58529948915241659
	.quad	0x3fe5b15b9f1c5e33              # double 0.67790013386087933
	.quad	0x3fa95d9976eb4cb0              # double 0.049542232290741395
	.quad	0x3fd73263829a19c0              # double 0.36245048288438042
	.quad	0x3fc8646184ad13f0              # double 0.19056338289570318
	.quad	0x3feb8189358d4e09              # double 0.85956249675149465
	.quad	0x3f86eddca908c980              # double 0.011195873173254212
	.quad	0x3fe62527ffaa4dc7              # double 0.69203567442530634
	.quad	0x3fc0b8e5a868d5c8              # double 0.1306426117240973
	.quad	0x3fe21fac1f083393              # double 0.56636625348038405
	.quad	0x3fe48e2fb0e8711c              # double 0.64235672523821874
	.quad	0x3fe3c9e7440bb701              # double 0.61839640894115189
	.quad	0x3fd5e3fbe84f4308              # double 0.3420400398872947
	.quad	0x3fd04bf6f6a576fa              # double 0.2546365173965196
	.quad	0x3fe1d19398b1344c              # double 0.55683307478614941
	.quad	0x3fd9b8f1e3589df8              # double 0.40191313936017492
	.quad	0x3fca9e2f4e965424              # double 0.20795241677538556
	.quad	0x3fd3c042d34969ce              # double 0.30860968240235997
	.quad	0x3fe7a23560b71e5f              # double 0.73855084314068253
	.quad	0x3fe71457bb1920ef              # double 0.72123323958024155
	.quad	0x3fba791e9f2cb300              # double 0.10341063867663181
	.quad	0x3fbfa82e530fec70              # double 0.12365998771558551
	.quad	0x3fe001bcd64e3de6              # double 0.50021211487358808
	.quad	0x3fb0dd8450d1cf90              # double 0.065880079013196147
	.quad	0x3fb7d4a97cc13568              # double 0.093088715512939069
	.quad	0x3fe983bfa51e31ae              # double 0.79733259439085713
	.quad	0x3fe8a75d82a330df              # double 0.77043033137445238
	.quad	0x3fca8f49191c6b24              # double 0.20749772764323737
	.quad	0x3feb36376cca9578              # double 0.85036822555836888
	.quad	0x3fe8e39a670609d1              # double 0.7777835857562484
	.quad	0x3fd15ee757f57d28              # double 0.27141746129741984
	.quad	0x3fe5f6d99a71278a              # double 0.68638305820899004
	.quad	0x3fe03a3089ccef5e              # double 0.50710322298207777
	.quad	0x3fdb896da9c6a03e              # double 0.43026296214748416
	.quad	0x3f9f4ceffe6144a0              # double 0.030566930676574899
	.quad	0x3fd1fd68aaba6a14              # double 0.28109184906648577
	.quad	0x3fef43898d7f4b20              # double 0.97699430118732166
	.quad	0x3fefec96bcbba619              # double 0.99763047086634337
	.quad	0x3fee2f7cc9e2c88e              # double 0.94329680853685871
	.quad	0x3fe1462ed3494425              # double 0.53981724993548552
	.quad	0x3fe2ac7c2ef884b1              # double 0.58355530904750286
	.quad	0x3fe36b869e7c6990              # double 0.60687571481985181
	.quad	0x3fee4a447db8e71f              # double 0.94656586222774652
	.quad	0x3fe223f7071b42a2              # double 0.56689025295243689
	.quad	0x3fda0da577ab71cc              # double 0.40708290754789966
	.quad	0x3fea362df9e56c20              # double 0.81911372001502869
	.quad	0x3fedeae7e7fe211f              # double 0.93492503462860899
	.quad	0x3fee02c61be1d739              # double 0.93783860631695071
	.quad	0x3fdb4f90bf5e3e12              # double 0.42673128784460446
	.quad	0x3fd724bfee50ef22              # double 0.36161802552281774
	.quad	0x3fe380630af7272e              # double 0.60942222730338869
	.quad	0x3fe9fdfbb13d02c9              # double 0.81225380532131297
	.quad	0x3fc68ae174ef2220              # double 0.17611330232308919
	.quad	0x3fee080853921312              # double 0.93848053285964483
	.quad	0x3fcba064fba0d064              # double 0.2158323506024572
	.quad	0x3fea4b15b7e11109              # double 0.82166562951945921
	.quad	0x3fdec21fa55d708c              # double 0.48059836529660838
	.quad	0x3fe94e3371b95afb              # double 0.7907960148976082
	.quad	0x3fe06f6354a8a2d2              # double 0.51359716925534316
	.quad	0x3fec935cc892b4fd              # double 0.89298857855251834
	.quad	0x3fea9172e8e80d99              # double 0.83025498857061841
	.quad	0x3fc2cbbd39d4e678              # double 0.14684262584505681
	.quad	0x3fd7bc6ddb0e992e              # double 0.37087580101287443
	.quad	0x3fd2cae863f697cc              # double 0.2936345077708864
	.quad	0x3feaf53834c47c93              # double 0.84243402773053544
	.quad	0x3fe9a23274cf47d8              # double 0.80104945005791262
	.quad	0x3fef4469c5f0ca2b              # double 0.97710121784468151
	.quad	0x3f85c45482dbffc0              # double 0.010628376239310344
	.quad	0x3fe86e421cab6285              # double 0.76345925902849443
	.quad	0x3fb2d576d8837488              # double 0.073569705829372833
	.quad	0x3fd31eddd64a6936              # double 0.29875894476721798
	.quad	0x3fe7fe9e30b912fc              # double 0.74983129039955498
	.quad	0x3fe4883f63cd3a54              # double 0.64163178913606567
	.quad	0x3fcf733b0e81f010              # double 0.2457040615880719
	.quad	0x3fe55b2adb6e73d5              # double 0.66737883432107969
	.quad	0x3fa0b8acda955080              # double 0.032658960039641194
	.quad	0x3fd74c1827adcbae              # double 0.36401943087474364
	.quad	0x3fe7d2f06e1fbdbc              # double 0.74449941166488243
	.quad	0x3fd024e422cc5ab0              # double 0.25225165746943912
	.quad	0x3fc3e2b4ce550074              # double 0.15535602640921164
	.quad	0x3fd42365647c6e50              # double 0.31466040433017373
	.quad	0x3feae15c4b863652              # double 0.84000983000596308
	.quad	0x3fc78bc638ec7b14              # double 0.18395307330589417
	.quad	0x3fe1ddb2c6e10e8b              # double 0.5583127865179035
	.quad	0x3fe86c9688ac2ad4              # double 0.76325537389615272
	.quad	0x3fe0bad85a9fdf2d              # double 0.5228082437524556
	.quad	0x3f660b6972582c00              # double 0.0026909884934460671
	.quad	0x3f9e6209a0f7eb00              # double 0.029670858812077761
	.quad	0x3fa1fdc697cd6150              # double 0.035139280348348678
	.quad	0x3fe5e3f1fd2b8465              # double 0.68407535025847876
	.quad	0x3feadf28c4143a16              # double 0.83974111839944743
	.quad	0x3fecc0a064fa35a4              # double 0.89851398203034138
	.quad	0x3fe939f1e06a1cba              # double 0.78832334357220835
	.quad	0x3fe9126e17ffe34e              # double 0.78349976241507036
	.quad	0x3fd500cd64f574fa              # double 0.32817396983394043
	.quad	0x3fd0ba7cabd0da1a              # double 0.26138226298226785
	.quad	0x3fa43a8944638cd0              # double 0.039509095762491619
	.quad	0x3fef074ddda36b6d              # double 0.96964162148229393
	.quad	0x3fdaedf0a320694e              # double 0.42077270441372583
	.quad	0x3fe4285cfc2f11ef              # double 0.629927151247612
	.quad	0x3f99e24b742f8680              # double 0.025277308432015477
	.quad	0x3fe3a21e5a17b24d              # double 0.61353986355022416
	.quad	0x3febdf8cc2980e75              # double 0.87103879934916384
	.quad	0x3fe5f8763f888090              # double 0.68657982262449657
	.quad	0x3fe23c2199311044              # double 0.56984023971791276
	.quad	0x3fe379ba56727cf1              # double 0.60860936054441883
	.quad	0x3feaa7e41553b328              # double 0.83299450078411486
	.quad	0x3fe8fc80ce14a7f4              # double 0.7808231377614434
	.quad	0x3fd8f31237ae8512              # double 0.38983588636081479
	.quad	0x3fe7a983b17f3d38              # double 0.73944267909420258
	.quad	0x3fec36dd548dddfa              # double 0.8816973353813744
	.quad	0x3fe8a4c6ef2b06f4              # double 0.77011439049257868
	.quad	0x3fe9dbe9394fe0f6              # double 0.80809460824732926
	.quad	0x3feec329b234b0c1              # double 0.96132359319519633
	.quad	0x3fead83f0a164358              # double 0.83889724702940338
	.quad	0x3fd543b3603f5366              # double 0.33225712203175417
	.quad	0x3fed1fd7c236c60b              # double 0.91013706142820305
	.quad	0x3fd79bdf30f33744              # double 0.36888866215018745
	.quad	0x3fe474f4b00b67bc              # double 0.63927683242513167
	.quad	0x3fe2445b40ce0a3d              # double 0.57084429413982429
	.quad	0x3feca856c4c2e864              # double 0.89554918699219543
	.quad	0x3fd93aabb57772f2              # double 0.39420597764346532
	.quad	0x3fea04e18c1c17c1              # double 0.81309583058531854
	.quad	0x3f80626c210b8800              # double 0.0080002257904574492
	.quad	0x3fe46ccaa2b1ad05              # double 0.63828021789723322
	.quad	0x3fd791f176795284              # double 0.36828266687124533
	.quad	0x3fa520c4b4dc1c00              # double 0.041265627935040072
	.quad	0x3fe32605d0c5acf0              # double 0.59839144492926089
	.quad	0x3fdfcff4fe4c788a              # double 0.49706768831118409
	.quad	0x3fe2ed9c5176ab26              # double 0.5915052023968641
	.quad	0x3fe24401037c5ecf              # double 0.57080126458000702
	.quad	0x3fdd5502924a0c94              # double 0.45831360136089327
	.quad	0x3fe19b6e29cb5db6              # double 0.55022342837303628
	.quad	0x3fe788589b5bdea3              # double 0.73539381354835986
	.quad	0x3fe598918b0a0fbe              # double 0.67487408786882219
	.quad	0x3fd56f3c351b9a32              # double 0.33491425691900922
	.quad	0x3fea176ddfa64b38              # double 0.81536000901755923
	.quad	0x3fe9afc88bcc93cd              # double 0.80270793251531247
	.quad	0x3fbe1987c3a48750              # double 0.11757706190522055
	.quad	0x3fcb08deba7fceac              # double 0.21120819193275986
	.quad	0x3fd6509bba972454              # double 0.34866994115561067
	.quad	0x3fee6dd881a59827              # double 0.95090890237475356
	.quad	0x3fd7c16f0ee298b4              # double 0.37118126348139957
	.quad	0x3fcf1df03ec1c094              # double 0.24310114921855031
	.quad	0x3fe8d95ab39f9fbe              # double 0.7765325077316374
	.quad	0x3fe401cacede9127              # double 0.62521877674274584
	.quad	0x3fdc7abc4f34a4f2              # double 0.4449911855213734
	.quad	0x3fb8e80227b58670              # double 0.097290167517280812
	.quad	0x3febf7c137f48a7b              # double 0.87399350098378592
	.quad	0x3fd5c4091acf5d3a              # double 0.3400900613609853
	.quad	0x3fd00ebd4cad84b4              # double 0.25089962471072202
	.quad	0x3fe01670ab47b448              # double 0.50273927167075616
	.quad	0x3fe5c4af91e92d5d              # double 0.68025949953281961
	.quad	0x3feca237aa770122              # double 0.89480193418424769
	.quad	0x3faf7d64435cb610              # double 0.061503537390631746
	.quad	0x3fc762b7e75aafb0              # double 0.18270014568895254
	.quad	0x3fefed57a9ace781              # double 0.99772246494033833
	.quad	0x3fcb3a6fb5112044              # double 0.21272083607823522
	.quad	0x3fddb88fecbcabea              # double 0.46438978308532219
	.quad	0x3fb2d2ff28f8fc98              # double 0.07353205442722055
	.quad	0x3fe5c572ddc7464c              # double 0.68035262409302666
	.quad	0x3fec9720dc9ddca3              # double 0.89344828690709155
	.quad	0x3fe8448a335ead25              # double 0.75836668046159572
	.quad	0x3fa1bba2afdff530              # double 0.034634670228096076
	.quad	0x3fefc0e37dd3bcfe              # double 0.9922959764061543
	.quad	0x3fb990f8ac9c5490              # double 0.099868337765956605
	.quad	0x3feb61ee004075fa              # double 0.85570430802516673
	.quad	0x3fe7ea76beda4279              # double 0.74737107540029435
	.quad	0x3fe2bfa82a6ea404              # double 0.58589561736619133
	.quad	0x3fd87299660673a8              # double 0.3819945808734766
	.quad	0x3fc13ef4faace854              # double 0.13473379364023919
	.quad	0x3fb061c6d4de7510              # double 0.063991953821148195
	.quad	0x3fd4cc06fb7f1de4              # double 0.32495283661088892
	.quad	0x3fd6ddd9612c1fc2              # double 0.35729059686172715
	.quad	0x3fddea6f5f573b36              # double 0.46743377981777046
	.quad	0x3fdea48852065ff4              # double 0.47879226694340038
	.quad	0x3fd2ef4b2b08fd6c              # double 0.2958553238167585
	.quad	0x3fdfaad51b19a806              # double 0.49480178495889537
	.quad	0x3fe92bf6190d014d              # double 0.78661637203917112
	.quad	0x3fb29a2aed83aea0              # double 0.072664912211332311
	.quad	0x3fe0211557db358e              # double 0.50403849753790708
	.quad	0x3fe495ec7f86a8bc              # double 0.64330124766754393
	.quad	0x3fdd6930172bf956              # double 0.45954515707844246
	.quad	0x3fd064f9d6f43378              # double 0.2561630820426255
	.quad	0x3fe4e31318514aa7              # double 0.65271906613846375
	.quad	0x3fcadab7077b0df0              # double 0.20979965081470153
	.quad	0x3fbee0cc7882a370              # double 0.12061765615602638
	.quad	0x3fb183f279e06e90              # double 0.068419604067850637
	.quad	0x3fc4999813dbe124              # double 0.16093731851265958
	.quad	0x3fb04019e002b908              # double 0.063478104772659916
	.quad	0x3fee5ac59a155b38              # double 0.94858055204790669
	.quad	0x3fe0531ae4749cdd              # double 0.51014465923517671
	.quad	0x3fbf49d58e415008              # double 0.12222037051225254
	.quad	0x3fee367bb0ff07f8              # double 0.94415077752660092
	.quad	0x3fef0db187802085              # double 0.97042156662884393
	.quad	0x3fda11db0d6d0fd2              # double 0.40733982382903122
	.quad	0x3fd48e91e2159ed2              # double 0.32120177343902612
	.quad	0x3fe95095d3399756              # double 0.79108706717372956
	.quad	0x3fcccd38742fb998              # double 0.2250128333393604
	.quad	0x3fba0e1ae6d8dd30              # double 0.10177772651592387
	.quad	0x3feb5150446b0dea              # double 0.85367596972394932
	.quad	0x3fe9c7da1c3ca700              # double 0.80564599528335634
	.quad	0x3fd7fd54ea01f9bc              # double 0.37483713962856391
	.quad	0x3fd4ee130e3f4b58              # double 0.32703091040928234
	.quad	0x3fe3fa91bfaa064a              # double 0.6243370765152545
	.quad	0x3feaeb53eebb30b4              # double 0.84122654559316467
	.quad	0x3feafb17f02e9735              # double 0.8431510630659661
	.quad	0x3feec9621ac6e625              # double 0.96208291272995849
	.quad	0x3fe93649e83aee91              # double 0.78787703855000946
	.quad	0x3fce63d1ca9c6010              # double 0.23742124932391606
	.quad	0x3fe938788f779534              # double 0.78814342518732027
	.quad	0x3fd4129c4f357cbe              # double 0.31363589987990881
	.quad	0x3fcc6b8b82043d9c              # double 0.22203201149430363
	.quad	0x3fe20cf7d123ee61              # double 0.56408301208234601
	.quad	0x3fe4e4e51a97fe44              # double 0.65294127649389866
	.quad	0x3fd05e914c3f69e0              # double 0.25577194639268264
	.quad	0x3f88b967cd19ee80              # double 0.012072382876105126
	.quad	0x3fe7e86a8b2e3aaa              # double 0.74712111648280666
	.quad	0x3fa4b9661bb698e0              # double 0.040476981051414063
	.quad	0x3fcb0309c05eeb08              # double 0.21103021519760312
	.quad	0x3feb906da5c5e737              # double 0.86138040902662893
	.quad	0x3fc7570d6a204a28              # double 0.18234412843647019
	.quad	0x3fe7dc07bd72335d              # double 0.74560915948095963
	.quad	0x3fe22bab8b000479              # double 0.5678308214993556
	.quad	0x3fe3838b9c8d6c41              # double 0.6098077829041203
	.quad	0x3fe24ca16a4e522a              # double 0.57185431254271646
	.quad	0x3f854e161fb90300              # double 0.010402844279384649
	.quad	0x3fe595395fe2e45d              # double 0.67446583488266365
	.quad	0x3fe55f73e8148286              # double 0.66790194824359683
	.quad	0x3fe6012332d763be              # double 0.6876388543124603
	.quad	0x3fdaef8837a2d3b0              # double 0.42086987908561024
	.quad	0x3faddb6c8f5f3340              # double 0.058314697743844679
	.quad	0x3fd5e169cd575e7e              # double 0.34188313534603043
	.quad	0x3fe3ed84ac58fa6a              # double 0.62274392758974995
	.quad	0x3fd9f843f429e5fc              # double 0.40577792018993342
	.quad	0x3fcd711ce9599208              # double 0.23001443285024004
	.quad	0x3fdc6ab577242dbe              # double 0.44401299128432103
	.quad	0x3fe92cbb3e0c2a19              # double 0.78671037787109122
	.quad	0x3fe9ee3d34b37982              # double 0.81033191960504802
	.quad	0x3fefa0223c999eb6              # double 0.98829757533982021
	.quad	0x3fc003f7a26f7b2c              # double 0.1251210730688056
	.quad	0x3fe8ebedb251b1ab              # double 0.7787998659892329
	.quad	0x3fe179afdfbcba8c              # double 0.54610437105823584
	.quad	0x3fd6579f6b208794              # double 0.34909806691768464
	.quad	0x3fe95aabe4f82ddd              # double 0.79231829376788776
	.quad	0x3fe216ff413343a0              # double 0.56530726179527235
	.quad	0x3fe83baa691df80f              # double 0.75728340655018822
	.quad	0x3fb1ae5e88b4f5d8              # double 0.069066913963033882
	.quad	0x3fe1d87d208369f1              # double 0.55767685270558165
	.quad	0x3fef5d5154e242a4              # double 0.98014132098076744
	.quad	0x3fe09e4ef0f959c6              # double 0.51932475152244062
	.quad	0x3fbd483e96797978              # double 0.11438361333555302
	.quad	0x3fe648889f88ea92              # double 0.69635420951029148
	.quad	0x3fe71e1d1e253e42              # double 0.72242599380292227
	.quad	0x3fe8843226642846              # double 0.76613719461716623
	.quad	0x3fa78ae8a1c29800              # double 0.045981664415464252
	.quad	0x3fe1e2f67b11dc50              # double 0.55895542180122426
	.quad	0x3fe3b4a575e09161              # double 0.6158015539445324
	.quad	0x3fac4aa676feef60              # double 0.055257036233767876
	.quad	0x3fdf2901a0edf1d2              # double 0.48687782970207849
	.quad	0x3fe759ff2a345411              # double 0.72973592989967717
	.quad	0x3feff72ae367ec41              # double 0.99892181792473178
	.quad	0x3fd0f8b885f12b1a              # double 0.26518071251182251
	.quad	0x3f94853c2a43d880              # double 0.020039501266147841
	.quad	0x3fcd7ed92e5d0a54              # double 0.23043360484924114
	.quad	0x3fdd7836eaa60730              # double 0.46046231188676057
	.quad	0x3feefcf1c4df31f3              # double 0.96837700320753439
	.quad	0x3fe50359246772a5              # double 0.65665871725248748
	.quad	0x3fee0452baaff44b              # double 0.93802772962920622
	.quad	0x3fdc7715c90e10e4              # double 0.44476837763092036
	.quad	0x3fd6a58043819b32              # double 0.35385138122949222
	.quad	0x3fefd8d4260c4558              # double 0.99521834784733709
	.quad	0x3fe3e295cb13ab48              # double 0.62140931762164886
	.quad	0x3fc678b35a2952f4              # double 0.17555848982251343
	.quad	0x3feb905888002a7d              # double 0.86137033999086976
	.quad	0x3fe22483d881169f              # double 0.56695740018831831
	.quad	0x3fe5d4fec0a08845              # double 0.68225038168407848
	.quad	0x3fd90405b70ad282              # double 0.39087050318929795
	.quad	0x3fce32cdcdf77514              # double 0.23592541272129408
	.quad	0x3fbb4793fcf06e40              # double 0.1065609447982121
	.quad	0x3fee9bfdada9a2b1              # double 0.95654186171039701
	.quad	0x3fef0456163a1367              # double 0.96927933064635574
	.quad	0x3fc24c0425a61ab4              # double 0.14294483030626781
	.quad	0x3fa94dc9b5623390              # double 0.049421599761536261
	.quad	0x3fe08b7dc7836587              # double 0.51702774970469612
	.quad	0x3fd578fa02420204              # double 0.33550882549755578
	.quad	0x3fac04c2531b2ad0              # double 0.054723808903494153
	.quad	0x3fde5a5541197e42              # double 0.47426349027043468
	.quad	0x3feb1e447f0e3407              # double 0.84744477096103388
	.quad	0x3feba27e04f64d35              # double 0.86358548134959412
	.quad	0x3fe9a95f4af6fa84              # double 0.80192532197527599
	.quad	0x3fe74eee3a084c2c              # double 0.72838507971244359
	.quad	0x3fd5db6923fa952e              # double 0.34151676667746045
	.quad	0x3fc7175722d38e24              # double 0.18039979172236642
	.quad	0x3fee6985bfa43a3f              # double 0.95038115911467702
	.quad	0x3fb1946ef6c1f9e8              # double 0.068671164744933955
	.quad	0x3fee922376d199d3              # double 0.95533917624271181
	.quad	0x3fe86711a52b6a68              # double 0.7625816560715295
	.quad	0x3fdda23944e5c578              # double 0.46302634933734721
	.quad	0x3fd36203745a6acc              # double 0.30285726893059173
	.quad	0x3fe0d60325e46d4b              # double 0.52612454796636976
	.quad	0x3fe43214dd8b973a              # double 0.63111346502839827
	.quad	0x3fe947efc09cfd33              # double 0.79003131503842494
	.quad	0x3f9a510c74444ac0              # double 0.025699801060066418
	.quad	0x3fddc8f0daef031c              # double 0.46538945560682676
	.quad	0x3fcdf9438474bd94              # double 0.23416942565516463
	.quad	0x3fe4d43759f7196e              # double 0.65090529986700374
	.quad	0x3feb4ebdd43e9bcf              # double 0.85336200193420975
	.quad	0x3fd2c62fb405cf1a              # double 0.29334633426991419
	.quad	0x3fde2d116a95b26c              # double 0.47150073441188201
	.quad	0x3fe5b768eb5fe108              # double 0.67863889667117494
	.quad	0x3fe80a034ec75d4f              # double 0.7512222803733638
	.quad	0x3fe0af600b99586d              # double 0.52140810265951887
	.quad	0x3fe75fee8e12459b              # double 0.73046043155970908
	.quad	0x3fd226c4048ba23c              # double 0.28361607021227875
	.quad	0x3fc337a0e182c98c              # double 0.15013514529489347
	.quad	0x3fd25e7bde78b462              # double 0.28701683736546191
	.quad	0x3fdc31e1bd1ca892              # double 0.44054454296077339
	.quad	0x3fecbae808fb8d86              # double 0.89781572107715202
	.quad	0x3fd7630f4508613a              # double 0.36542112103917967
	.quad	0x3fe92c5a457a6d72              # double 0.78666413850753103
	.quad	0x3fcaa611eb3252e8              # double 0.20819305404861344
	.quad	0x3fd38401668052f4              # double 0.30493197450532183
	.quad	0x3fe9ee672dcbbc99              # double 0.8103519339037063
	.quad	0x3fd164b4f488de00              # double 0.27177165870986641
	.quad	0x3fc2480d41aaf3c4              # double 0.14282384592470809
	.quad	0x3fec844c2c658a3d              # double 0.89114960356921069
	.quad	0x3fdcdc7b42ac4366              # double 0.45095712195420956
	.quad	0x3fec9bb8acce17c1              # double 0.89400895834909744
	.quad	0x3fdd64082779898e              # double 0.45923045973736343
	.quad	0x3fe3a6068494725d              # double 0.61401677984720104
	.quad	0x3fddeb2729676e1c              # double 0.46747759860383709
	.quad	0x3fcc6fb02fb6ea80              # double 0.22215845422563874
	.quad	0x3fe01fd4c167569f              # double 0.50388562940743842
	.quad	0x3fd1df45ca01f06c              # double 0.27925247885992266
	.quad	0x3fb6c1c968d9f408              # double 0.088894451235276617
	.quad	0x3fe1e0595195f6a8              # double 0.55863634047246524
	.quad	0x3fc8629387ea88b8              # double 0.19050830971270272
	.quad	0x3fd6c5947d188182              # double 0.35580932823543077
	.quad	0x3fd3a1b7c84a731e              # double 0.30674547729158685
	.quad	0x3fe8dbf30e20eabf              # double 0.77684929618347798
	.quad	0x3fd33b4559137c52              # double 0.30049260805930544
	.quad	0x3fd419e866c159cc              # double 0.31408128771491017
	.quad	0x3fa568944d9af230              # double 0.041813501809404463
	.quad	0x3fd2788e66bc21fa              # double 0.28860816986755788
	.quad	0x3fdc2f9eb67538ee              # double 0.44040649240640917
	.quad	0x3fe7df0a25238af7              # double 0.74597651723556069
	.quad	0x3fdbd5aaeefe9826              # double 0.4349162420206788
	.quad	0x3fb74ba08aa7ed50              # double 0.090997728206209105
	.quad	0x3fe2c5284dc4bb27              # double 0.5865670699039115
	.quad	0x3fe46cdb1b6995dc              # double 0.63828807214730032
	.quad	0x3fca45ca07fe3fec              # double 0.20525479688922077
	.quad	0x3fe6850c7271c375              # double 0.70374128677768388
	.quad	0x3fe8a37dae74999e              # double 0.7699573905309085
	.quad	0x3fe9310addf68513              # double 0.78723662712232778
	.quad	0x3fef153008f22e45              # double 0.97133638140935174
	.quad	0x3fe4756e4bac8d87              # double 0.63933481960377569
	.quad	0x3fef15527f302445              # double 0.97135281411568341
	.quad	0x3fec417517d80b47              # double 0.88299040467277556
	.quad	0x3fe9c03e2ca1ab77              # double 0.80471714703649766
	.quad	0x3fe25107f4d5a01b              # double 0.57239148921235328
	.quad	0x3fea065037727b9b              # double 0.8132706721261117
	.quad	0x3fc63dd85e268960              # double 0.17376236531442668
	.quad	0x3fe19cc80e37c024              # double 0.55038836266431135
	.quad	0x3fa63be8716730c0              # double 0.043425811617994636
	.quad	0x3fdab0f8f09a3ebe              # double 0.41705153938617545
	.quad	0x3fdb428bc90f9670              # double 0.42593664774754014
	.quad	0x3fdd0ce15eb1f224              # double 0.45391115424698314
	.quad	0x3fb0c8a335cba730              # double 0.065561485894843896
	.quad	0x3fceabc86a5e2ccc              # double 0.23961739724868492
	.quad	0x3feb02ac1eab1316              # double 0.84407621374029662
	.quad	0x3fea3e81a1681dea              # double 0.82013017201182703
	.quad	0x3fe0e205cda9c03e              # double 0.5275906578881473
	.quad	0x3fe1f6a151b09772              # double 0.56135621981660067
	.quad	0x3fe5da05c6eb133d              # double 0.68286408282492739
	.quad	0x3fb0f089ffc86458              # double 0.066170334765403793
	.quad	0x3fef8238d4289dc3              # double 0.98464623868215317
	.quad	0x3fb8744629cb83e8              # double 0.095524201587536717
	.quad	0x3fe40135c72c01b5              # double 0.62514771366846011
	.quad	0x3fe7c36ce33e2af3              # double 0.74260563262336488
	.quad	0x3fd029da6cddfd88              # double 0.25255451804692841
	.quad	0x3fd51f492abc91da              # double 0.33003453420158524
	.quad	0x3fdd395edf02880e              # double 0.4566266229468291
	.quad	0x3fe7de2904c16099              # double 0.74586916855607222
	.quad	0x3fed03683d743bf1              # double 0.90666591646902195
	.quad	0x3feb113704308cb4              # double 0.84585142916002675
	.quad	0x3fddfe88f6f2adc2              # double 0.46866058460247129
	.quad	0x3fefa14d35b281cf              # double 0.98844013679268438
	.quad	0x3fd0cebfdd29d000              # double 0.26261898611051038
	.quad	0x3fe7a8876193b3f2              # double 0.73932236726761702
	.quad	0x3fecffac54dede3f              # double 0.90621010376248268
	.quad	0x3fa1f0ea4889c420              # double 0.035041161875490667
	.quad	0x3fe08f86dd495ebc              # double 0.51752036304511462
	.quad	0x3fceeaa96e917900              # double 0.24153631113853891
	.quad	0x3fe412cc50bb1f3b              # double 0.62729469077837707
	.quad	0x3fe4543f1fe6e6b1              # double 0.63528400641299332
	.quad	0x3fe09f89613d0863              # double 0.51947468749882508
	.quad	0x3fe336e1141709a8              # double 0.60044912265612016
	.quad	0x3fae92fbd8c8b840              # double 0.05971514722146809
	.quad	0x3fe3db0b7cbe5180              # double 0.62048887599898706
	.quad	0x3fe6174a3b910ab1              # double 0.69034301408858856
	.quad	0x3fda0c02adbb2882              # double 0.4069830605118413
	.quad	0x3fb88f602e05ed40              # double 0.0959377395974359
	.quad	0x3fc6f2fd261c0a24              # double 0.17929043160263902
	.quad	0x3f92932a518693c0              # double 0.018139516092236851
	.quad	0x3fe84370307d2f4e              # double 0.75823220701702509
	.quad	0x3fe363813101ed96              # double 0.60589656421454907
	.quad	0x3fe7b3e310986ec8              # double 0.74070885888382865
	.quad	0x3fee1964457beaf2              # double 0.94059957095245594
	.quad	0x3fe550fba6628351              # double 0.66613562104257984
	.quad	0x3fe2211fa4952a6a              # double 0.56654340882353194
	.quad	0x3febfd86ed3f075c              # double 0.87469812714719408
	.quad	0x3fd59098feee979e              # double 0.33695053954795096
	.quad	0x3fc6207c5242085c              # double 0.17286638275624255
	.quad	0x3fe8ea88787062d4              # double 0.77862952731364964
	.quad	0x3f920fd7255463c0              # double 0.017638551381512491
	.quad	0x3fed10d5ebd77502              # double 0.90830513060396378
	.quad	0x3fd307527ee6de74              # double 0.2973219146037771
	.quad	0x3fc635d2ff575cac              # double 0.17351758449396948
	.quad	0x3fd80cbcdea0753c              # double 0.37577745190522527
	.quad	0x3feea80f500f9bd2              # double 0.95801511418255303
	.quad	0x3fc03afc50d9027c              # double 0.12680009791985813
	.quad	0x3fe5c932436ba98e              # double 0.68081010025098165
	.quad	0x3fc5ad14332c9308              # double 0.16934444903122192
	.quad	0x3fe6d03d7c7f1996              # double 0.71291994395942271
	.quad	0x3fc4c364fec8b548              # double 0.16221296730638302
	.quad	0x3fe2f564346ff811              # double 0.59245500795054984
	.quad	0x3fe55e63df4f6ea6              # double 0.66777223220147586
	.quad	0x3fed95980ab23e0d              # double 0.92451097573388241
	.quad	0x3fe79c305f3a4a01              # double 0.73781603430899179
	.quad	0x3feea58739c16772              # double 0.95770608215683084
	.quad	0x3fdc16f48298dc3e              # double 0.43890106919883809
	.quad	0x3f98c8a4f9576040              # double 0.024202897757135355
	.quad	0x3fef2a91d0868d33              # double 0.97394648292212193
	.quad	0x3fe15864310511f0              # double 0.54203996252232223
	.quad	0x3fed003d29b56189              # double 0.90627916475482195
	.quad	0x3fde9bca675d874c              # double 0.47825870603820841
	.quad	0x3feb05329b139b7e              # double 0.84438448227307084
	.quad	0x3fc1e57bb0ebcd04              # double 0.13981577051854555
	.quad	0x3fed690b1fdb5168              # double 0.91907268735898828
	.quad	0x3fed5473c557afcd              # double 0.91655911010229263
	.quad	0x3fc86d9774874290              # double 0.19084447088109302
	.quad	0x3fd99874ac250438              # double 0.39993016062732378
	.quad	0x3fe81138495f664f              # double 0.75210203486057903
	.quad	0x3faceb6af8275b30              # double 0.056483595649913787
	.quad	0x3f96fe9911a55c60              # double 0.022455589010260346
	.quad	0x3fc5c48bf86799c8              # double 0.1700606310761954
	.quad	0x3fe253c5547435a7              # double 0.57272593016539453
	.quad	0x3fd840dadd03ea70              # double 0.37895843108677862
	.quad	0x3fc0eca5334a8c04              # double 0.13222184185460162
	.quad	0x3fd73431e02050fc              # double 0.36256071936919887
	.quad	0x3fee7f0aa5b401b5              # double 0.95300800670525254
	.quad	0x3fc0e3d1626aba90              # double 0.13195245080483575
	.quad	0x3fe438fb00602c1a              # double 0.63195562432645436
	.quad	0x3fdc896769abfc0e              # double 0.44588647193444408
	.quad	0x3fb66d8a5ff55a00              # double 0.087608955790848597
	.quad	0x3fc01a683b3fe968              # double 0.12580588238763402
	.quad	0x3fa8ce11e47a0b20              # double 0.048447188511110406
	.quad	0x3fede0994aaa49ba              # double 0.93366684515995435
	.quad	0x3fe8e9471e5fc1c6              # double 0.77847629482681024
	.quad	0x3fe17ff23510d401              # double 0.5468684231224189
	.quad	0x3fc8a8398766c724              # double 0.19263381110573008
	.quad	0x3fe26c9572c66306              # double 0.5757548562715733
	.quad	0x3fc905c5ec36c2b4              # double 0.19548868211633919
	.quad	0x3fd76ce8f81952d6              # double 0.36602234104547671
	.quad	0x3fe86e37d901e94c              # double 0.7634543646266052
	.quad	0x3f7f1279247aec80              # double 0.0075859768036777852
	.quad	0x3fdd118cf47b1e94              # double 0.45419620394793836
	.quad	0x3fe846764f0840ba              # double 0.75860133586868206
	.quad	0x3fc626b477ec5814              # double 0.17305618148446966
	.quad	0x3fd7c24c0a728416              # double 0.3712339498543441
	.quad	0x3fd110aa6a9f2114              # double 0.26664219295754887
	.quad	0x3fee7028d231983c              # double 0.95119134000265814
	.quad	0x3fe7505f02d906de              # double 0.72856092983439757
	.quad	0x3fe24bf63cf5c4b8              # double 0.57177268892532762
	.quad	0x3fb45c9ccd067b40              # double 0.07953815465451175
	.quad	0x3fc6b6f6103242cc              # double 0.17745853224598418
	.quad	0x3fe280e3bf5a9211              # double 0.57823359845912325
	.quad	0x3fefe6d498650b28              # double 0.99692754520979054
	.quad	0x3fe7207e18aff697              # double 0.72271637746571826
	.quad	0x3feb0066dec5a75e              # double 0.84379905233548036
	.quad	0x3fb1dc3abba29d00              # double 0.069766684350373254
	.quad	0x3fe33e264e4b827d              # double 0.60133662502273888
	.quad	0x3fcd525b69093190              # double 0.22907583836275736
	.quad	0x3fdaa3579f3269c8              # double 0.41621962114882338
	.quad	0x3fe19681e6642c31              # double 0.54962248800564428
	.quad	0x3fb4d0afb061edf8              # double 0.081309300005095397
	.quad	0x3feaf2e11ed349cd              # double 0.84214836140227478
	.quad	0x3fe0a8b7c6f23218              # double 0.52059544426589621
	.quad	0x3fe6008c138e9744              # double 0.68756679362989148
	.quad	0x3fe404bc74a4b260              # double 0.62557814390090627
	.quad	0x3febf2ca1a1454a8              # double 0.87338738530765614
	.quad	0x3fe91e47d78f9f90              # double 0.78494636632693648
	.quad	0x3fb4dad48e7a9250              # double 0.081464085373746941
	.quad	0x3fdd8ea6e7b65a50              # double 0.46183178547054116
	.quad	0x3fefcf438dda2a4b              # double 0.99405076699742644
	.quad	0x3fdb2cdb5d778aa8              # double 0.42461284759171258
	.quad	0x3fe0720f777ce1e0              # double 0.5139233907457843
	.quad	0x3fe4af6e53c5faf5              # double 0.64641491281494601
	.quad	0x3fed5f02f771dd61              # double 0.91784809426364344
	.quad	0x3fc1aef63e3c7cd0              # double 0.13815191306000552
	.quad	0x3fe9e0ef4e9b03dd              # double 0.80870786049501542
	.quad	0x3fcdf27ed97140e0              # double 0.23396287553123951
	.quad	0x3feb66b67f62c916              # double 0.85628819351248597
	.quad	0x3fe575c55752f7ba              # double 0.67062632613646334
	.quad	0x3fc98636de17edac              # double 0.19940839619071704
	.quad	0x3feed8417fefe414              # double 0.96389842021665339
	.quad	0x3fe916678e1267c8              # double 0.78398492573182299
	.quad	0x3fe06aa62a12764e              # double 0.51301868645868764
	.quad	0x3fe585b3cdac526a              # double 0.67257108850988101
	.quad	0x3fe4c24a6474b86f              # double 0.64871711368847496
	.quad	0x3fe5b8fcdd110f02              # double 0.67883151223256299
	.quad	0x3feb62713734fd98              # double 0.85576687605491752
	.quad	0x3fde34cf77561128              # double 0.47197329191137039
	.quad	0x3fe0677352d92355              # double 0.5126282327774826
	.quad	0x3fd328e4e78e4fda              # double 0.29937098133927764
	.quad	0x3fa6b10b4d111540              # double 0.044319489629325748
	.quad	0x3fe9cb2becc0be7c              # double 0.8060512184219557
	.quad	0x3fcc2b3fcb737ab4              # double 0.22006986078391366
	.quad	0x3fea6eb1500529f3              # double 0.82601228360118595
	.quad	0x3fe6545bd34fc0a4              # double 0.6977976920297988
	.quad	0x3fe88fd9619534a6              # double 0.7675597101130236
	.quad	0x3fdd1787e1697d18              # double 0.45456120503327346
	.quad	0x3fb383e5771c0658              # double 0.076231328563176048
	.quad	0x3fe1dce4964153a2              # double 0.55821446749415693
	.quad	0x3fe19a19c89546fe              # double 0.55006112266912033
	.quad	0x3fe359c5f591c6f1              # double 0.60470865214139569
	.quad	0x3fe607f0feda0851              # double 0.68846940780373178
	.quad	0x3fda5573cadab758              # double 0.4114655953406916
	.quad	0x3fbe1b5268fe9718              # double 0.11760439933149447
	.quad	0x3fe6fd1394a82e28              # double 0.71839312586366066
	.quad	0x3fde6d31c69d609a              # double 0.47541469951603121
	.quad	0x3fe88077df9499cc              # double 0.76568216007290734
	.quad	0x3fefb6a733d5a509              # double 0.99104652522979208
	.quad	0x3fae2cf748b15000              # double 0.058936812995540322
	.quad	0x3fd4835891e71032              # double 0.32051672218608751
	.quad	0x3fa749b4f011f400              # double 0.04548421316665241
	.quad	0x3fd13fefb76d400c              # double 0.26952736771363628
	.quad	0x3fe12ffaf2732d14              # double 0.53710696557519322
	.quad	0x3fa48cf1b982e6a0              # double 0.0401378191904318
	.quad	0x3fee35b1efc9508d              # double 0.94405457337644949
	.quad	0x3fc55e1bd13e0cbc              # double 0.16693446843064474
	.quad	0x3fc81c60fe701c2c              # double 0.18836605476119084
	.quad	0x3fd7817d09b341a0              # double 0.36727834651267166
	.quad	0x3fe0b18d6119781f              # double 0.5216738602136991
	.quad	0x3fe7df52fc7141f3              # double 0.74601125054510786
	.quad	0x3feda4f6a75bc38c              # double 0.9263871449203278
	.quad	0x3fe221f65eb16f45              # double 0.56664579863306896
	.quad	0x3fc408ca1c867a84              # double 0.15651823418462041
	.quad	0x3fcbaa137af231d4              # double 0.216127810508978
	.quad	0x3fe04c116a016330              # double 0.50928564743217031
	.quad	0x3fe14c87ea1ce1f1              # double 0.5405921528354708
	.quad	0x3fdbd85269f7993c              # double 0.43507824276311502
	.quad	0x3fe01227365a777e              # double 0.50221596351524034
	.quad	0x3fef75f4a54c06b8              # double 0.98314888271871492
	.quad	0x3fe24f60eb1fcbf7              # double 0.57218976900764928
	.quad	0x3feba1e2a271c048              # double 0.86351138808641625
	.quad	0x3fe4480c51f45611              # double 0.63379493719793534
	.quad	0x3fdb1d64cdc82344              # double 0.42366905303838487
	.quad	0x3fde41c56435c900              # double 0.47276434694425973
	.quad	0x3fb79db3b6434b28              # double 0.092250091550607594
	.quad	0x3fe25c75b7d37d21              # double 0.57378660110035551
	.quad	0x3fe9a172f9ce578b              # double 0.8009581450485127
	.quad	0x3fe78cf134e98c0c              # double 0.73595486006195321
	.quad	0x3fe12cf440c630cb              # double 0.5367375626679175
	.quad	0x3fe5e67613d0d2f8              # double 0.68438247556932108
	.quad	0x3fbe82e0af018f80              # double 0.11918453476533664
	.quad	0x3fc93b3a07206558              # double 0.19711995456672571
	.quad	0x3fdbe41a47d21f9c              # double 0.43579728139638418
	.quad	0x3fe40ce02f6e72fa              # double 0.62657174362138268
	.quad	0x3fd9380ddfc60524              # double 0.39404627659685532
	.quad	0x3fe6952be4338d85              # double 0.70570940561849282
	.quad	0x3fe80334d41dc9c0              # double 0.75039140156723505
	.quad	0x3fbb5a1470a104e8              # double 0.10684325933199867
	.quad	0x3fb4458a92c007a0              # double 0.07918611605421555
	.quad	0x3fed208ed33061e9              # double 0.91022435424662007
	.quad	0x3fe573af95b5e0f9              # double 0.67037181129765522
	.quad	0x3fced7fa146dc08c              # double 0.24096609113212641
	.quad	0x3fe1e9db245d1909              # double 0.55979687788274746
	.quad	0x3fdc2cd36673b1a4              # double 0.44023594861098503
	.quad	0x3febd91f0f87dd9a              # double 0.87025406869263411
	.quad	0x3fe55682b076530a              # double 0.66681036439203578
	.quad	0x3fe5185719a59f1c              # double 0.65922122010394757
	.quad	0x3f859e0f22940e80              # double 0.010555380099055656
	.quad	0x3fef08e8c2b03184              # double 0.96983755135583793
	.quad	0x3fef587ada4fde28              # double 0.97955076827105802
	.quad	0x3fe3c2799e4780fc              # double 0.6174896327393351
	.quad	0x3fe8ec842e931cec              # double 0.77887162300694745
	.quad	0x3fefa7136e9eb0dd              # double 0.98914500813910033
	.quad	0x3feae1983b2f072f              # double 0.84003840979878486
	.quad	0x3fe116adabbd4691              # double 0.53401835959285127
	.quad	0x3fee68359e3af195              # double 0.95022087959619006
	.quad	0x3fc43356855cda10              # double 0.15781671058512403
	.quad	0x3fe71ab89e72062f              # double 0.72201186128967787
	.quad	0x3fe7ea6b55d17c23              # double 0.74736563454996874
	.quad	0x3fe91ede911f956d              # double 0.78501823753746935
	.quad	0x3fc03edb6f5ee228              # double 0.12691824853915645
	.quad	0x3fe4b362a172ca7b              # double 0.64689761670008694
	.quad	0x3fed1af152684bfc              # double 0.90953889937588838
	.quad	0x3fee50c0d25843d3              # double 0.94735756953206829
	.quad	0x3fee084a5312aace              # double 0.93851200318507622
	.quad	0x3fd04245cde68b2e              # double 0.25404496295429879
	.quad	0x3fdb29323bc15ac8              # double 0.42438941798665697
	.quad	0x3fd755c0b9fd1b64              # double 0.36460893786391169
	.quad	0x3fe1055c0bed216b              # double 0.53190424279550308
	.quad	0x3feae4bbcb093577              # double 0.84042157798255246
	.quad	0x3fe5bd9d214cdb50              # double 0.67939621452283383
	.quad	0x3fd5b161b574a650              # double 0.33895151825217784
	.quad	0x3fd553869747e1f8              # double 0.33322300694956608
	.quad	0x3fc7f19a5daf9108              # double 0.18706063818456919
	.quad	0x3fe47267c036822f              # double 0.63896548787676533
	.quad	0x3fef90b289f465e3              # double 0.98641325897477505
	.quad	0x3fe962a72353962b              # double 0.79329258823117266
	.quad	0x3fedcd3260f5ae72              # double 0.93129843652191213
	.quad	0x3fe850a54cd6ee65              # double 0.75984444625596537
	.quad	0x3fd4d40253ebe6d2              # double 0.32544000812013707
	.quad	0x3fc4c211aac46b28              # double 0.16217251623387452
	.quad	0x3fc4c24e6af114f8              # double 0.16217975827945685
	.quad	0x3fd21c4bb6ca05bc              # double 0.28297703600409441
	.quad	0x3fe093e97383fa20              # double 0.51805565415981292
	.quad	0x3f9e520ae9e1bba0              # double 0.029609842801103903
	.quad	0x3fe41949facf315e              # double 0.62808703409386246
	.quad	0x3fe410653b8a15c3              # double 0.62700139645374298
	.quad	0x3fd2115b78dbfc60              # double 0.28230940630596102
	.quad	0x3fea2ede014b1646              # double 0.81822109463309611
	.quad	0x3fd56d309ff6b846              # double 0.33478942510089771
	.quad	0x3fee9c24a47bc191              # double 0.95656044126194406
	.quad	0x3fd152216a5fc8d4              # double 0.27063784969426519
	.quad	0x3fe5a29d39e03d18              # double 0.67610036186116229
	.quad	0x3fe8ff5744a3aa21              # double 0.78116954237095027
	.quad	0x3fec5c7b63651e1d              # double 0.88628930485805635
	.quad	0x3fd0fdba6f366f82              # double 0.26548634396180415
	.quad	0x3fe22753f716d276              # double 0.56730077991103545
	.quad	0x3fb5dde5ca34fd08              # double 0.085417138926448755
	.quad	0x3fe1da9a40639a00              # double 0.55793488098134958
	.quad	0x3fd6e428c4823a78              # double 0.35767573538115682
	.quad	0x3fcb8b25d4969424              # double 0.2151839530971823
	.quad	0x3fec6031a99ce038              # double 0.88674243094920424
	.quad	0x3fea3081bf04b541              # double 0.81842124279288708
	.quad	0x3fecbedb5a5464cd              # double 0.89829795496475529
	.quad	0x3fc97ebd9bc88e78              # double 0.19918031794178481
	.quad	0x3fd04223326c0c98              # double 0.25403671192197796
	.quad	0x3fabdf39922814b0              # double 0.054437445727708478
	.quad	0x3f977123562c98e0              # double 0.02289252484765647
	.quad	0x3fe45dc47cb5eee5              # double 0.63644623143724444
	.quad	0x3fea0ad56ebe147d              # double 0.81382247571367794
	.quad	0x3fe9e0bc6b4504c2              # double 0.80868359519094946
	.quad	0x3fd2544c0237dccc              # double 0.28639507500288341
	.quad	0x3fe359865fd9824f              # double 0.60467833252557479
	.quad	0x3fe872ee52a8c5b6              # double 0.76402965683353474
	.quad	0x3fd13f755cf5e1f0              # double 0.26949819639369732
	.quad	0x3fea754a7a2b795d              # double 0.82681774007123077
	.quad	0x3fe330d14537bcbf              # double 0.59970916289412191
	.quad	0x3fd099eed0444ff6              # double 0.25939531649169056
	.quad	0x3fd4cd0651566996              # double 0.3250137132942198
	.quad	0x3fe4672f30cd8a36              # double 0.63759574443640221
	.quad	0x3feb369cb2709468              # double 0.85041651584164146
	.quad	0x3fea1c354e0e2954              # double 0.81594338650874442
	.quad	0x3fcd17f7b5feccac              # double 0.22729393373956464
	.quad	0x3fdcebdab345c634              # double 0.45189540392957217
	.quad	0x3fbfcc17a7654e58              # double 0.12420795285043462
	.quad	0x3fe91243c82e00d2              # double 0.78347958657834682
	.quad	0x3fe2c78ed1c4b19a              # double 0.58686009378793647
	.quad	0x3fe0770fc39e5593              # double 0.51453388411271062
	.quad	0x3fee32883b0e246f              # double 0.94366847547747834
	.quad	0x3fd147dc301ec328              # double 0.27001099299654863
	.quad	0x3fd762c2a831e87e              # double 0.36540285516060311
	.quad	0x3fe824c734497fbc              # double 0.75448951923680551
	.quad	0x3feaabe9ff9ceb23              # double 0.83348560261160676
	.quad	0x3fec97cf97abab61              # double 0.89353160498772521
	.quad	0x3fdcf4dbee48ac26              # double 0.45244501371297685
	.quad	0x3fe56c6a73158f50              # double 0.66948435284982999
	.quad	0x3fe0f24557ae6c9a              # double 0.52957408070814727
	.quad	0x3fcef2632d6e0e6c              # double 0.24177207678086476
	.quad	0x3fe18c01a8c54310              # double 0.54834063494681295
	.quad	0x3fd6baa6d988d5f6              # double 0.35514231914143524
	.quad	0x3f833c9c5537e640              # double 0.0093929494387224865
	.quad	0x3fe53cea64f48e32              # double 0.66368598668890955
	.quad	0x3fb25b9d5bd2abb0              # double 0.071710429113109653
	.quad	0x3fc2fb7ba1359250              # double 0.14829964992090305
	.quad	0x3fef2e5fb4214fc4              # double 0.97441086942352983
	.quad	0x3fd60cd0598369c2              # double 0.3445320963052404
	.quad	0x3f80f7b9f99f5380              # double 0.0082850007346821908
	.quad	0x3fd526ffc35ca57e              # double 0.33050531462011878
	.quad	0x3fe044c58e4d92fc              # double 0.50839498323020349
	.quad	0x3fd7aa35f67c59b8              # double 0.36976384230493009
	.quad	0x3fc5acbd346a3e48              # double 0.16933407840086745
	.quad	0x3fe83d5d2d191c2b              # double 0.75749071891994413
	.quad	0x3fce8221ea6766d8              # double 0.23834632821563306
	.quad	0x3fd8465285d78592              # double 0.37929213591095234
	.quad	0x3fdbe49c6110239c              # double 0.43582829932034328
	.quad	0x3f8551f800ff2680              # double 0.010410249262253091
	.quad	0x3fecc23cb5dac6e3              # double 0.89871058958507566
	.quad	0x3fe7a9025287ed95              # double 0.73938099021272541
	.quad	0x3fdd3d219b81380a              # double 0.45685615716945505
	.quad	0x3fe586225b07aa49              # double 0.67262380389485898
	.quad	0x3f9f14f129a163e0              # double 0.030353325048370183
	.quad	0x3fc5afd991d30684              # double 0.16942901249244724
	.quad	0x3feadd4296c0e00f              # double 0.83950929111506578
	.quad	0x3fec18b242400756              # double 0.87801468791460979
	.quad	0x3fc055bd97c50c1c              # double 0.12761659536963144
	.quad	0x3fb63bfd73ebf1e8              # double 0.086852875519930373
	.quad	0x3fef5afd2207ddea              # double 0.97985703131319934
	.quad	0x3febc98cdd74c76f              # double 0.86835330250890574
	.quad	0x3fdb3f450312bcd4              # double 0.42573666858784276
	.quad	0x3fcd66d6dffcf950              # double 0.22970090805933774
	.quad	0x3fdb92cc2d8581de              # double 0.43083481259784928
	.quad	0x3fe446a8bacdcd80              # double 0.63362537846698785
	.quad	0x3fd8cc110ebc9a80              # double 0.38745523871549636
	.quad	0x3fd6c6733a9a6f48              # double 0.35586243365263615
	.quad	0x3fec16a470a7a074              # double 0.8777639580048473
	.quad	0x3fe25303005097d9              # double 0.57263326703536699
	.quad	0x3fe5c0271a53c86e              # double 0.67970614568754484
	.quad	0x3fe321dbb57d58ef              # double 0.59788308570094084
	.quad	0x3fec64a12fe75ab3              # double 0.88728389126011675
	.quad	0x3fc54a7023436238              # double 0.16633416864239492
	.quad	0x3fef870f5a5fdeb7              # double 0.98523681308048238
	.quad	0x3f814a65e6be9c00              # double 0.0084426842730191964
	.quad	0x3fb9524d98389d88              # double 0.098912095702521907
	.quad	0x3fe512dec60d1da4              # double 0.65855349237329053
	.quad	0x3fe89d1da9a17ccd              # double 0.76917918330209434
	.quad	0x3fac6ee5675bf260              # double 0.055533570162854984
	.quad	0x3fc405e73076c1f4              # double 0.15643014780427189
	.quad	0x3fbcd202cebe1f08              # double 0.11257951304844138
	.quad	0x3fac8e6a95ab2b80              # double 0.055774050493332616
	.quad	0x3feeabe5047cd795              # double 0.95848322750565506
	.quad	0x3fe5a0e7215ddeab              # double 0.67589146153382751
	.quad	0x3fe588d27f9a9305              # double 0.67295193598383263
	.quad	0x3fe7c5eab3e4e6cc              # double 0.74290976653647922
	.quad	0x3fed71686d07d40b              # double 0.92009373946223272
	.quad	0x3fdaed040941d4a2              # double 0.42071629432695989
	.quad	0x3fe5e2bff433f1a4              # double 0.68392942138557489
	.quad	0x3fe4f3026d27b2a4              # double 0.65466424292897729
	.quad	0x3fe012af671cf368              # double 0.50228090419078075
	.quad	0x3fe38e65781c62ab              # double 0.61113236865192755
	.quad	0x3fe96d04e396ff3c              # double 0.79455799533022952
	.quad	0x3fea6490adf45d00              # double 0.82477601981636894
	.quad	0x3fe8f3ac38be96a6              # double 0.77974520762355293
	.quad	0x3fe3f87141a26a4b              # double 0.62407744235253781
	.quad	0x3fb41a54d94b7b78              # double 0.078526785898686557
	.quad	0x3fdcb299a005ef3a              # double 0.44840088488830399
	.quad	0x3fd6cc05ce2f1f82              # double 0.35620255599177864
	.quad	0x3fc5d4b15ba2946c              # double 0.17055336927765852
	.quad	0x3fd7c07a2df80784              # double 0.3711228798784918
	.quad	0x3fe84ea54be826a8              # double 0.75960030389361055
	.quad	0x3fdca95d94d20c24              # double 0.44783725293399557
	.quad	0x3feb19e9a866a56f              # double 0.84691317454159598
	.quad	0x3fdc36d90651d1ca              # double 0.44084764115475805
	.quad	0x3fdbe15557140a4a              # double 0.43562825683344342
	.quad	0x3fe5bc467d6c81ba              # double 0.67923283097120835
	.quad	0x3fec0d6aa5899d13              # double 0.87663776713898967
	.quad	0x3fb9b4bed07b47c8              # double 0.10041420545465407
	.quad	0x3fe3564dafeda9f6              # double 0.60428509102831529
	.quad	0x3fe184ad9492eb5a              # double 0.54744605081883013
	.quad	0x3faae4c183bfa380              # double 0.052526519138900163
	.quad	0x3fe9f254ac2605e8              # double 0.81083139059790899
	.quad	0x3fc8e9fdc2ce7dd8              # double 0.19464084636727708
	.quad	0x3fd6e0e0728bafa2              # double 0.3574753874406672
	.quad	0x3fe24500b6761a69              # double 0.57092319142323078
	.quad	0x3fb5af52a0438430              # double 0.084706462981117836
	.quad	0x3facff28290e9fc0              # double 0.056634192478042689
	.quad	0x3fc0c64fc62e1490              # double 0.13105199028737902
	.quad	0x3fe41bf5252854c3              # double 0.62841279275257766
	.quad	0x3fef8d575076646c              # double 0.98600354876829277
	.quad	0x3fe2cdbc041e8698              # double 0.5876140671209269
	.quad	0x3fc4da81882bd054              # double 0.16291827343923393
	.quad	0x3fdb94064d20f086              # double 0.43090970546814622
	.quad	0x3fc62e809a2cf80c              # double 0.17329413917644876
	.quad	0x3fc3ce3844fa09f0              # double 0.15473082893375034
	.quad	0x3fe16f6844fa8043              # double 0.54484952423445809
	.quad	0x3fe4867972ed1030              # double 0.64141533323755162
	.quad	0x3fdefd631da73c80              # double 0.48421552558733794
	.quad	0x3fc5bc79a4d540b4              # double 0.16981430576789125
	.quad	0x3fc0fa59e17d6f20              # double 0.13264010915997293
	.quad	0x3fe07d0bc2e9da43              # double 0.51526439732590068
	.quad	0x3feef2d6c39996c2              # double 0.96714342311016588
	.quad	0x3fd73d6700672b7a              # double 0.36312270202022712
	.quad	0x3fd80b0234baad94              # double 0.37567191266381283
	.quad	0x3f9bbe4c5feba460              # double 0.027093118052026077
	.quad	0x3fc0e6f0b2116c88              # double 0.13204773611764531
	.quad	0x3fe42dc11c6f8cdd              # double 0.63058524659973225
	.quad	0x3fe3f71dca23fe5c              # double 0.62391557198129588
	.quad	0x3fe74c7cdbd34b64              # double 0.72808688101427466
	.quad	0x3fb245c8a49ac150              # double 0.071377315699242105
	.quad	0x3fc597adb34fe13c              # double 0.16869136100263826
	.quad	0x3fe654de292a0d7c              # double 0.69785984077354568
	.quad	0x3f5cbf4d32186800              # double 0.0017545942176924179
	.quad	0x3fe6c003e8fffaa9              # double 0.71093936450764261
	.quad	0x3fdfa63a41c486b0              # double 0.49452072546601311
	.quad	0x3fdb026820e055ea              # double 0.42202189646317712
	.quad	0x3fea6db70ccbb6ee              # double 0.82589294909641153
	.quad	0x3fd4bec336d1a61e              # double 0.32414322236454207
	.quad	0x3fc93965493b421c              # double 0.19706407619243371
	.quad	0x3fe7077d177056ae              # double 0.71966414049048466
	.quad	0x3fe335641a104c4a              # double 0.60026745882567778
	.quad	0x3fe58ea3030fbe01              # double 0.67366171453426216
	.quad	0x3fcb279a4e211144              # double 0.21214608015919556
	.quad	0x3fe5d8646f0111a7              # double 0.68266507797720954
	.quad	0x3fd6abef873b9fba              # double 0.35424411970461345
	.quad	0x3fd97cf6ef52f94c              # double 0.3982522332334113
	.quad	0x3fcb6de031a8edd4              # double 0.21429064202116754
	.quad	0x3fc70c3498c59e7c              # double 0.18005998096053932
	.quad	0x3fcf448984a85cec              # double 0.24427908875870885
	.quad	0x3fd5d95e786a2b58              # double 0.34139215239763621
	.quad	0x3fe6d5ea0006032a              # double 0.71361255650126521
	.quad	0x3fbcf586231c13b0              # double 0.11312139851732073
	.quad	0x3fe66f8b4c972161              # double 0.70111622771313986
	.quad	0x3fc8a63b01679314              # double 0.19257295197089574
	.quad	0x3fefed929443dd90              # double 0.99775055845286609
	.quad	0x3f71df43d305f580              # double 0.0043633126628014329
	.quad	0x3fbd04f50b75e1b0              # double 0.11335689096256973
	.quad	0x3fe5ea4a5d932c5d              # double 0.68484991337153256
	.quad	0x3fdc45ef7ed15526              # double 0.44176852592984728
	.quad	0x3fc15e39d9f315d8              # double 0.13568804876392337
	.quad	0x3fe85d11719d3e7c              # double 0.76136085691719257
	.quad	0x3fb8b2db2b086400              # double 0.096479127889679717
	.quad	0x3fe1d5ff173947ed              # double 0.55737261329545407
	.quad	0x3fe9f00a45e61f2c              # double 0.81055177356845353
	.quad	0x3fefd9af94bb33bd              # double 0.99532298134874219
	.quad	0x3fe607ba6a2f7794              # double 0.68844338168468022
	.quad	0x3fe57edc81b23403              # double 0.67173600512762766
	.quad	0x3fe68359091566a1              # double 0.70353366636409842
	.quad	0x3fd2efd41bc90312              # double 0.29588797295950642
	.quad	0x3fefec56da5415a0              # double 0.99760000841404306
	.quad	0x3fe94d044cde3cb0              # double 0.79065146458915159
	.quad	0x3f7a3b9323c05d80              # double 0.0064044711725935732
	.quad	0x3fece8f34b4d43c8              # double 0.90343632419000475
	.quad	0x3fde0450350bbeb4              # double 0.4690132635141524
	.quad	0x3fe475d3db722dcb              # double 0.63938324795292922
	.quad	0x3fa11148688c3120              # double 0.033334982645188527
	.quad	0x3fb8e84107feb108              # double 0.097293915225865502
	.quad	0x3fde7b201139ae38              # double 0.47626496965560561
	.quad	0x3fd0d4e7f20abdae              # double 0.26299475323591082
	.quad	0x3fc94e74543f119c              # double 0.19770673860160748
	.quad	0x3fefeeded8b1ab3a              # double 0.99790899584818438
	.quad	0x3fcafb829dfa810c              # double 0.21080048288150299
	.quad	0x3fd976e538183ef4              # double 0.39788179853438455
	.quad	0x3fec00875dd3a9bf              # double 0.87506454778240783
	.quad	0x3fed25da62724e78              # double 0.91087073543390229
	.quad	0x3feed9f65adf22a3              # double 0.96410672901500438
	.quad	0x3fee180a37d1c219              # double 0.94043455984325697
	.quad	0x3fdf4e3fea875a36              # double 0.48915098097987497
	.quad	0x3fe77f0de3b1fd49              # double 0.73425955268604881
	.quad	0x3fdbf1699d9174c4              # double 0.43660965335386615
	.quad	0x3fe8c4775537ad60              # double 0.77398268360176913
	.quad	0x3fc2c8b2a31d0330              # double 0.14674981083410321
	.quad	0x3fe6ae59d7aebf3b              # double 0.70878307462223888
	.quad	0x3fbb4d41a3b5e878              # double 0.10664758917656225
	.quad	0x3fe5f26a133a66b7              # double 0.68584159617895224
	.quad	0x3fdef58e30f4c66e              # double 0.48373751431345269
	.quad	0x3fe7f75d28f69e0d              # double 0.74894578934339651
	.quad	0x3feec8a07c3df0d8              # double 0.96199058786398961
	.quad	0x3fcfed6c1d5ddeb4              # double 0.24943305429382223
	.quad	0x3fd8a536d03cab24              # double 0.38508386932032779
	.quad	0x3faaa4e8969aebd0              # double 0.052039402374667199
	.quad	0x3fe96e4a4ad1b164              # double 0.79471315968616496
	.quad	0x3f6aca73527e1f00              # double 0.0032703640353622943
	.quad	0x3fd0c7ebc63eb122              # double 0.26220220908978054
	.quad	0x3fe7dfe1885cb160              # double 0.74607922204226539
	.quad	0x3fd2b5956c7fc5d6              # double 0.29233298869720892
	.quad	0x3fe4461504a7e37b              # double 0.63355494412745317
	.quad	0x3f983e75877f2480              # double 0.023675762553271529
	.quad	0x3feac218eb07d9c9              # double 0.83619352249552847
	.quad	0x3fcdcb1821f93fb0              # double 0.23276044520252759
	.quad	0x3fb9163e15196f68              # double 0.097995643759927753
	.quad	0x3fdadc0b6133e074              # double 0.41968044750638644
	.quad	0x3fd12d2ce13f0d30              # double 0.26838228222568983
	.quad	0x3fd1af2968df908a              # double 0.27631602517636422
	.quad	0x3fde75f802f70524              # double 0.47595024385016615
	.quad	0x3fd58c7203420e8e              # double 0.33669710462729874
	.quad	0x3fd0b6800ed7d2a6              # double 0.26113892983929998
	.quad	0x3fe429210b7f0b67              # double 0.63002063985218804
	.quad	0x3fe39f0025a0d327              # double 0.61315924977552505
	.quad	0x3fd9cc42ab8bb2ee              # double 0.40309206726560276
	.quad	0x3fe7c38b49c98dd2              # double 0.74262012874208438
	.quad	0x3fe3c65600184a11              # double 0.61796093004733355
	.quad	0x3fdd08be601821e8              # double 0.45365867027478979
	.quad	0x3fefe49be37c4cd3              # double 0.99665636473437257
	.quad	0x3fd6cf5e016bc1d4              # double 0.35640669001352632
	.quad	0x3fe6d65617768053              # double 0.71366409857365409
	.quad	0x3f807b3f336f3b40              # double 0.0080475747653544482
	.quad	0x3fe8465cb2f0b287              # double 0.75858912419569513
	.quad	0x3fdd71b4224bb650              # double 0.46006491994089505
	.quad	0x3f9f499bcb9b02a0              # double 0.030554231931776088
	.quad	0x3fee137450c3a2ff              # double 0.93987479948290786
	.quad	0x3fa75288cf36e000              # double 0.045551562590333106
	.quad	0x3fd499ca74e8a450              # double 0.32188664833899328
	.quad	0x3fe1bb312d24ef4a              # double 0.55410059754601915
	.quad	0x3fdc64b61ec75188              # double 0.44364693647119013
	.quad	0x3fd123ce24766e44              # double 0.26781037865450608
	.quad	0x3feebc42dbea2729              # double 0.96048109962541616
	.quad	0x3fdf9e07c4bc840e              # double 0.49402040684259496
	.quad	0x3fdb064f81227b3a              # double 0.42226016627130358
	.quad	0x3fe7484418f25d7b              # double 0.72757153389368001
	.quad	0x3fefc429249c41c5              # double 0.99269539976563037
	.quad	0x3fc1bb23a7450994              # double 0.13852353732552258
	.quad	0x3fe18307d8a678a9              # double 0.54724495234019799
	.quad	0x3fe5fc7d7e4f37e4              # double 0.68707155866445335
	.quad	0x3fccc35a86cae168              # double 0.22471171933808454
	.quad	0x3fe9479b5d3d1517              # double 0.78999107561745319
	.quad	0x3fe49d65cd13fd61              # double 0.64421358160317876
	.quad	0x3fc9368e1fa46e3c              # double 0.19697739167246364
	.quad	0x3fb1b4afc7e3d420              # double 0.069163309384592697
	.quad	0x3fe5ddeb7a14a1aa              # double 0.68333982318749986
	.quad	0x3fe1cfef4c6a0fef              # double 0.55663266110104626
	.quad	0x3fe8cd64f020481d              # double 0.77507254504803635
	.quad	0x3fef55272936366c              # double 0.97914464997456951
	.quad	0x3fe59a02f2d86044              # double 0.6750502341337854
	.quad	0x3fe2a849ae0bb105              # double 0.58304294579787153
	.quad	0x3fdb3b9bf26dcef8              # double 0.42551325487805469
	.quad	0x3fe91bc3d39673c3              # double 0.78463927579615989
	.quad	0x3fe19677fce5c255              # double 0.54961776155512132
	.quad	0x3fedc42925b0f80f              # double 0.93019540177897564
	.quad	0x3fea906de34158d7              # double 0.83013052354615524
	.quad	0x3fdaa076bb127ce2              # double 0.41604393261691375
	.quad	0x3fe48b811e988100              # double 0.64202934241987464
	.quad	0x3fe8d4c1565ae763              # double 0.77597109667042863
	.quad	0x3fe637cae556cb00              # double 0.69431061547069817
	.quad	0x3fecf95155c0a367              # double 0.90543429134878017
	.quad	0x3fd78e536b72815c              # double 0.3680618809976488
	.quad	0x3feba41e1540fa83              # double 0.86378387595307549
	.quad	0x3febdb48b3d02001              # double 0.87051806564068113
	.quad	0x3fde3cfbb12f3d06              # double 0.4724721174543024
	.quad	0x3fcc3f1ec86f0228              # double 0.22067627703474213
	.quad	0x3fe2dbf62fa28d8a              # double 0.5893507891054679
	.quad	0x3fb0e7ba961d3898              # double 0.066035901688538678
	.quad	0x3fef5ab3db4ee7d1              # double 0.97982209046971935
	.quad	0x3fe7ed94deecd3b4              # double 0.74775165119228015
	.quad	0x3fe294557878f670              # double 0.58060716180598426
	.quad	0x3fc10eb01ebb86ac              # double 0.13326074123965748
	.quad	0x3fd27a38d2216f68              # double 0.28870983620230684
	.quad	0x3fea4093a2aa8234              # double 0.82038289805138342
	.quad	0x3fdc304f66bda42e              # double 0.44044861825256276
	.quad	0x3feecd12cb1d4888              # double 0.96253337546137718
	.quad	0x3fde0398071a79fc              # double 0.46896935170835241
	.quad	0x3fe795f754589b95              # double 0.73705641244747488
	.quad	0x3fc11d6f72380aa4              # double 0.1337107951840909
	.quad	0x3fc21c299e416a1c              # double 0.14148445346184324
	.quad	0x3fe19ae863bc4fd3              # double 0.55015964011772167
	.quad	0x3feafaab5fda47ee              # double 0.84309929581854504
	.quad	0x3fdea755204f25c8              # double 0.47896316676323325
	.quad	0x3fe20f2a44465368              # double 0.56435120901970226
	.quad	0x3fa3a9f7fdc291b0              # double 0.038406133390967212
	.quad	0x3fe250703160a205              # double 0.57231912273442787
	.quad	0x3fdc2d8332ac2538              # double 0.4402778620575023
	.quad	0x3fe2e0a799e5c200              # double 0.58992366846183586
	.quad	0x3fd775344e8c993a              # double 0.36652858420201861
	.quad	0x3fd853787e2f51b2              # double 0.38009464571703255
	.quad	0x3fee6230940af58b              # double 0.94948605455981416
	.quad	0x3fc76bc757723ec8              # double 0.18297664422833848
	.quad	0x3fdf705c6a978fdc              # double 0.49123297128084942
	.quad	0x3fe0f40494cfdf2d              # double 0.52978734078258116
	.quad	0x3fde57848032cf04              # double 0.47409164924032177
	.quad	0x3fb96952d5aee638              # double 0.09926336018443116
	.quad	0x3fe3cb950d32a26f              # double 0.61860134675687373
	.quad	0x3fc8b79dc6986ff0              # double 0.19310352513355111
	.quad	0x3fecaf740efc1611              # double 0.89641764570905214
	.quad	0x3f993f7acebb58e0              # double 0.024656218402775987
	.quad	0x3fede7f8cc499735              # double 0.93456687831778729
	.quad	0x3fef7006129533c1              # double 0.98242477063615052
	.quad	0x3fdede9610c6a046              # double 0.48233558309812385
	.quad	0x3f9d854920e0dea0              # double 0.028828756934869859
	.quad	0x3fe6171a62594622              # double 0.69032019814239143
	.quad	0x3fed6a76ced73e26              # double 0.91924610518066596
	.quad	0x3fb7fe1bf1a64d80              # double 0.093721148010720511
	.quad	0x3fe69e844776f5cf              # double 0.70685018499323771
	.quad	0x3feadf8c41c25f49              # double 0.83978855937582708
	.quad	0x3fba16a33643f3e0              # double 0.10190792155113071
	.quad	0x3fef05efb51a9968              # double 0.96947465297561752
	.quad	0x3fdb25fe6816b87c              # double 0.42419395604054677
	.quad	0x3fe3ebf6f19c5442              # double 0.62255427541334307
	.quad	0x3fd3d2ae2b5a682e              # double 0.30973390802103296
	.quad	0x3fc5fc5c611cf9d8              # double 0.17176394216399049
	.quad	0x3fe90f959397f487              # double 0.78315237833852869
	.quad	0x3fe249be88ccfdcf              # double 0.57150198668380792
	.quad	0x3fe9cef6caf8cde8              # double 0.80651416438052781
	.quad	0x3fa4d16be3c8c770              # double 0.04066025882310853
	.quad	0x3fc7afdef8b28e5c              # double 0.18505465644294616
	.quad	0x3fb9001dd1327328              # double 0.097658027242186862
	.quad	0x3fc5a7a63b4a93a8              # double 0.16917875189861076
	.quad	0x3fb14a6f0ae27878              # double 0.067542019040475298
	.quad	0x3fcd81ae067be2e4              # double 0.23052001301382241
	.quad	0x3fe4acc9ab7667dd              # double 0.64609225739263432
	.quad	0x3fea3b708c442e44              # double 0.8197558154656197
	.quad	0x3fe3c5c1567204ae              # double 0.61789004215110821
	.quad	0x3fecaba767d017a6              # double 0.89595384860944161
	.quad	0x3fe08c2f6d78079f              # double 0.51711245899808833
	.quad	0x3fd27d3dffb288a8              # double 0.28889417620133395
	.quad	0x3feb31c26aac7951              # double 0.84982415041648995
	.quad	0x3fc283080290f824              # double 0.1446237576037116
	.quad	0x3fcb26d6161248e0              # double 0.21212268903452181
	.quad	0x3fe631d9d6703140              # double 0.69358531839819904
	.quad	0x3fe8b6b3bb7ac6a4              # double 0.7723024999342738
	.quad	0x3fb382891d3a0dc0              # double 0.076210565219347437
	.quad	0x3fb68400c1e37fe0              # double 0.087951705299473826
	.quad	0x3fd6505dc6a50990              # double 0.34865517043012861
	.quad	0x3feaa9811335f373              # double 0.83319143058871104
	.quad	0x3fe5a2520fec78c4              # double 0.67606452093220826
	.quad	0x3fd4e3ba284f5b6a              # double 0.32639936386606527
	.quad	0x3fec8f6d54d1331c              # double 0.89250818792206443
	.quad	0x3fd278ee7ccc3e2e              # double 0.28863107859885673
	.quad	0x3fd6c2622f70b03a              # double 0.35561422951537092
	.quad	0x3fc9f12b1c5a69b8              # double 0.20267237553055195
	.quad	0x3fe001ce8ab928d9              # double 0.50022055715933356
	.quad	0x3fe386f5bf0ec9e9              # double 0.61022460285158531
	.quad	0x3fd9ed94b97829be              # double 0.40512579071278398
	.quad	0x3fe900ab669fa8ed              # double 0.78133173030553638
	.quad	0x3fe81ac295b4a92b              # double 0.75326661338229906
	.quad	0x3fe58a0b7aae7051              # double 0.67310117684565729
	.quad	0x3fe0f95e4d81da10              # double 0.53044047487384383
	.quad	0x3fe01f8c6b1f9ca1              # double 0.50385113642268575
	.quad	0x3fca6832b144246c              # double 0.20630487113547546
	.quad	0x3fe68ad5e00e88b7              # double 0.70444768677795977
	.quad	0x3fcbf13fead41ae4              # double 0.21829985586392475
	.quad	0x3fd6fff8c6646c3e              # double 0.35937327741857306
	.quad	0x3fdb45bc308c6b2e              # double 0.42613129368844482
	.quad	0x3fd813ebc255aeb8              # double 0.37621587732312944
	.quad	0x3fefe136b0036615              # double 0.99624189736931845
	.quad	0x3fcdd950c667ac84              # double 0.23319444358580566
	.quad	0x3fee5b6eee1c4cc1              # double 0.94866129404035615
	.quad	0x3fcf9bca4aef5234              # double 0.24694183978012207
	.quad	0x3fc6f0ce6142389c              # double 0.17922382115324786
	.quad	0x3fd521bece30dc10              # double 0.33018465171647993
	.quad	0x3fdc76de466aa9ba              # double 0.44475514294267848
	.quad	0x3fc2a169626be908              # double 0.14555089288462164
	.quad	0x3fdca49806d8832e              # double 0.44754601162462648
	.quad	0x3fe2692b2efd2326              # double 0.57533797433379585
	.quad	0x3fe2bf62f81c9908              # double 0.58586262187307714
	.quad	0x3fefa26e56c83a1e              # double 0.98857800435672849
	.quad	0x3fb475860677a848              # double 0.079918266848523989
	.quad	0x3fabded803e731d0              # double 0.05443453834195433
	.quad	0x3fe5bdc0e3d83c27              # double 0.67941326619064035
	.quad	0x3fa485fc892ea8e0              # double 0.0400847356280154
	.quad	0x3fc938ebc56d02dc              # double 0.1970495904916082
	.quad	0x3fe25d73d8ed281e              # double 0.57390777939258775
	.quad	0x3fd8a40deff36300              # double 0.38501308853805938
	.quad	0x3fdd38a0383c79a0              # double 0.45658116809672755
	.quad	0x3f83b7b57112e500              # double 0.0096277403957736318
	.quad	0x3fe73ffc99083fae              # double 0.72656087769609257
	.quad	0x3fe76e4e7c170f35              # double 0.73221515880911758
	.quad	0x3f916def90232c20              # double 0.017020934269378896
	.quad	0x3fec4614d4e02ad4              # double 0.88355485512996745
	.quad	0x3fe0f37880af8e53              # double 0.52972054609240116
	.quad	0x3feb02d576f2605d              # double 0.84409592849534543
	.quad	0x3fe56e444d6a0e1d              # double 0.66971030349708693
	.quad	0x3fda9d2e13aaf576              # double 0.4158435051029622
	.quad	0x3fe879a911ff973f              # double 0.76485112681687173
	.quad	0x3fd8de396cb8d5fa              # double 0.38856349580177574
	.quad	0x3fd890f3446bc0be              # double 0.38384706193665952
	.quad	0x3fcf8bebcf7d3950              # double 0.24645755416208681
	.quad	0x3fe94bfd8d0620df              # double 0.79052617591608143
	.quad	0x3fe419239ff491b9              # double 0.62806874505309118
	.quad	0x3fec3ed4bf18a00e              # double 0.88266980479693458
	.quad	0x3fd312a9741e28d4              # double 0.29801403369550639
	.quad	0x3f97fcedbb280ea0              # double 0.023425783680080969
	.quad	0x3fa1f07e79601650              # double 0.035037948910070171
	.quad	0x3fc2c2a0a6cfb334              # double 0.14656456132015594
	.quad	0x3fdcaee0ec3e4924              # double 0.44817374296794044
	.quad	0x3fde1cd8eae38250              # double 0.47051070154524144
	.quad	0x3fd6d440594be21e              # double 0.35670479507783337
	.quad	0x3fceb6806b71adc4              # double 0.23994450804035072
	.quad	0x3fe876f8c651c25d              # double 0.76452292188885063
	.quad	0x3fdf45708bf8bf74              # double 0.4886132590208867
	.quad	0x3fcb36f969e37198              # double 0.21261518164000104
	.quad	0x3fcf0522ed957094              # double 0.24234425164002416
	.quad	0x3fd1d9374238726e              # double 0.27888280360074347
	.quad	0x3fc370f1c53e7fec              # double 0.15188429003774162
	.quad	0x3fdfbd22324d975a              # double 0.49591879761134339
	.quad	0x3fa62693cec2efe0              # double 0.043263072003781877
	.quad	0x3fca6b6450223c58              # double 0.20640233910350747
	.quad	0x3fe4de481999b0e6              # double 0.65213398933476863
	.quad	0x3fe607bdf52f5100              # double 0.68844507110273412
	.quad	0x3fead4ba5d580833              # double 0.83846777182794197
	.quad	0x3fd8440362e76786              # double 0.37915119799219388
	.quad	0x3fefd25699883a65              # double 0.9944260595965032
	.quad	0x3fd19780dc5632be              # double 0.27487203137642868
	.quad	0x3fbf46dcd5ebb5e0              # double 0.12217502806353009
	.quad	0x3f9fe19831579720              # double 0.03113401223335821
	.quad	0x3feac01d65ca467c              # double 0.83595151787649468
	.quad	0x3fe4374a0833fb93              # double 0.63174916841659223
	.quad	0x3fe63bcda8303cab              # double 0.69480021333028696
	.quad	0x3f71cc594fcf3580              # double 0.0043452728977632082
	.quad	0x3fe30f0908bbfbc5              # double 0.59558536249084482
	.quad	0x3fd6601cfd95c40e              # double 0.34961628688967117
	.quad	0x3fe566dbd139e177              # double 0.66880598892662035
	.quad	0x3fb2231d681e8eb0              # double 0.070848310394064695
	.quad	0x3fd9b54f9f8d3b78              # double 0.4016913469430885
	.quad	0x3fe3e4c94f2145af              # double 0.62167802290985275
	.quad	0x3fa3304da8436c40              # double 0.037477900304758283
	.quad	0x3fe9d53bbb3f3991              # double 0.80727945872949836
	.quad	0x3fef80bbef4628df              # double 0.9844646142312533
	.quad	0x3fe59f0cb7ea27a5              # double 0.67566524430116159
	.quad	0x3fb415b3778272a8              # double 0.078456131627215542
	.quad	0x3fe14d517e0202fb              # double 0.54068827258023988
	.quad	0x3fec53f72f2341fd              # double 0.8852497025164322
	.quad	0x3feddcf2bdaf09bd              # double 0.93322121665578772
	.quad	0x3fdd72cddf103cda              # double 0.46013209136522237
	.quad	0x3fda49ed1e7b7ec6              # double 0.41076209999844726
	.quad	0x3fcc4f2276d75100              # double 0.22116499712740989
	.quad	0x3fe774262133fb2f              # double 0.73292833790751455
	.quad	0x3fedd40fc5f092cf              # double 0.93213642749886982
	.quad	0x3fce532524cb1090              # double 0.23691238686126725
	.quad	0x3feeda4119b5fd88              # double 0.96414237043056605
	.quad	0x3feeac92c9444c0c              # double 0.95856608686369915
	.quad	0x3fc93816250c8ec4              # double 0.19702412423168003
	.quad	0x3fbc9a6254e9df48              # double 0.11173071454129258
	.quad	0x3feb12f083fe852b              # double 0.84606195240136139
	.quad	0x3f97dab367f30fc0              # double 0.023295214862414815
	.quad	0x3feda40d1ee804ab              # double 0.92627578770056596
	.quad	0x3fe11e2a219b1376              # double 0.534932199131261
	.quad	0x3fb0ddf48885eff8              # double 0.065886767702920568
	.quad	0x3fe79cb9b2c1d58b              # double 0.73788151658543322
	.quad	0x3fea15b6f9e50dc3              # double 0.81515072639052055
	.quad	0x3fc49089dc798390              # double 0.16066096558918419
	.quad	0x3fec75e0b4049f50              # double 0.88938937339569613
	.quad	0x3fdbbbe2bff6aa18              # double 0.43334263559759867
	.quad	0x3fcb5385d8286248              # double 0.21348641447618122
	.quad	0x3fe02687868dad07              # double 0.50470329551663518
	.quad	0x3fdd95c5b826249c              # double 0.46226637824345018
	.quad	0x3febd84b0e1e4111              # double 0.87015297658402535
	.quad	0x3fece296c544b359              # double 0.90265978363968735
	.quad	0x3fd6cf88bd8f51ac              # double 0.35641687881186601
	.quad	0x3fed1b3e2d1dd90f              # double 0.90957554637751226
	.quad	0x3fe6e2da7e02cbf9              # double 0.71519207583912625
	.quad	0x3fd954d438fc09ba              # double 0.39580255093474259
	.quad	0x3fe9fa1eaca53265              # double 0.81178220481667707
	.quad	0x3feffa3da3ca5ad5              # double 0.99929697027513475
	.quad	0x3fec06de58b939dc              # double 0.87583844498459084
	.quad	0x3fe69f4d094585a9              # double 0.70694591341832791
	.quad	0x3fc51e1083c68784              # double 0.16497999605513425
	.quad	0x3fc808b9a2db3fac              # double 0.18776627017950653
	.quad	0x3fde4dc031ac96e4              # double 0.4734955296611203
	.quad	0x3fda108ea6d172fa              # double 0.40726057329975129
	.quad	0x3feb3a36fe9b7f9b              # double 0.85085630157481107
	.quad	0x3fa2c631f9beeae0              # double 0.03666835950521885
	.quad	0x3fec35eccf18207f              # double 0.88158264587492841
	.quad	0x3fc79abca12b1cc0              # double 0.18440969342757363
	.quad	0x3fd070873bc3ab82              # double 0.25686817966805375
	.quad	0x3fe592a30d1ff7de              # double 0.67415001452877354
	.quad	0x3fe47fec0fcec79d              # double 0.6406154927010338
	.quad	0x3feffea57373694c              # double 0.99983475255002352
	.quad	0x3fe1822676bba362              # double 0.54713748159438702
	.quad	0x3fe1f405f20d8c51              # double 0.56103799129449261
	.quad	0x3fe5ed16f16ea7ee              # double 0.68519160418258962
	.quad	0x3fdfd966414caa88              # double 0.49764400841619549
	.quad	0x3fd9ee79635469b2              # double 0.40518030834359842
	.quad	0x3fe0e1d0163b3a60              # double 0.52756504385054015
	.quad	0x3fe598f72fe52bd8              # double 0.67492255548983859
	.quad	0x3fd989b28b8386d4              # double 0.3990293848456592
	.quad	0x3fda0cef3d96fdac              # double 0.40703946127538404
	.quad	0x3fe40f14a7e5c69d              # double 0.62684090416424321
	.quad	0x3fece9a36ee6924d              # double 0.90352031383788189
	.quad	0x3fd256781bd1cef0              # double 0.28652765957598003
	.quad	0x3fca8daa820ce2b8              # double 0.20744830465425479
	.quad	0x3fe654721df3746a              # double 0.69780832147411087
	.quad	0x3fed373aed1cc563              # double 0.91299196539891303
	.quad	0x3fc362b1cd495374              # double 0.15144941829444358
	.quad	0x3fd58d9bb3ec6f54              # double 0.33676807947789666
	.quad	0x3fdc6b5f8e6efa7a              # double 0.4440535441353074
	.quad	0x3fcf9a8d29b406fc              # double 0.24690403496065716
	.quad	0x3fedc21dba052f9b              # double 0.92994581539231846
	.quad	0x3fe8cfbfee0a01a8              # double 0.77536007396706896
	.quad	0x3fe2433ec840fd6d              # double 0.57070864784320252
	.quad	0x3fdaa588469da826              # double 0.41635329147414024
	.quad	0x3fda1475e41886e4              # double 0.4074988105295303
	.quad	0x3fca1ca58b3111e0              # double 0.2039992265364523
	.quad	0x3fdc8417c076ea88              # double 0.44556230349886805
	.quad	0x3fede61c49c8c589              # double 0.93433966074933139
	.quad	0x3fd3f4b7e4ff0d88              # double 0.31181142199439948
	.quad	0x3fec5b4768963170              # double 0.88614244868362668
	.quad	0x3feeb1964b27586a              # double 0.95917811087089189
	.quad	0x3fa3a3ee507b3430              # double 0.038360068630574395
	.quad	0x3fba8518ef68e1c0              # double 0.10359340519870042
	.quad	0x3fe737087f41d54a              # double 0.72546791891969886
	.quad	0x3fe2cd9b0c020b14              # double 0.58759834618863005
	.quad	0x3fe3cfcbc3cd1335              # double 0.61911571733853654
	.quad	0x3fdfcf72fbac2c4a              # double 0.49703669145009555
	.quad	0x3fe7e2afc504701e              # double 0.74642170410107034
	.quad	0x3fb52a48faf3aac0              # double 0.08267646910432358
	.quad	0x3fb588cf3ca7f828              # double 0.084118797596574368
	.quad	0x3fd1fbb0ee712edc              # double 0.28098700795520215
	.quad	0x3fcfa15df1100938              # double 0.2471120287955928
	.quad	0x3fb3f2b0c785cfc8              # double 0.077921913825604538
	.quad	0x3fd9cf6b9868856a              # double 0.40328493007299093
	.quad	0x3fd02b3e47752144              # double 0.25263936022067335
	.quad	0x3fd16081b2b8a368              # double 0.27151529744383263
	.quad	0x3fd9786f2edc2964              # double 0.39797572685406224
	.quad	0x3fe40cbaadcb7041              # double 0.62655385917924644
	.quad	0x3fb5b2e64823f260              # double 0.084761040317923086
	.quad	0x3fcc0023b4878be4              # double 0.21875425639072354
	.quad	0x3fd905822834c5cc              # double 0.39096120764142195
	.quad	0x3fa12b2bc974ce30              # double 0.033532493917303063
	.quad	0x3fcd2ac3acd9494c              # double 0.22786756458169533
	.quad	0x3fabe7259d6b98f0              # double 0.05449788614878226
	.quad	0x3fbdcdab0a76ce68              # double 0.11641949658842921
	.quad	0x3feeda1352c2ae84              # double 0.9641205421844039
	.quad	0x3fed83a3a5748355              # double 0.9223192435784805
	.quad	0x3fe3c6e1b9392777              # double 0.61802755524079955
	.quad	0x3fc1c6b2f0aadcec              # double 0.13887631179179694
	.quad	0x3fea4f6a272a95d9              # double 0.8221941723792795
	.quad	0x3fe5a0c3ee076ac0              # double 0.67587467660936085
	.quad	0x3fec009aa86629fb              # double 0.87507374659008919
	.quad	0x3fd9e7a7cfb76790              # double 0.40476413044745474
	.quad	0x3fe124c4fc9124ed              # double 0.53573846177564877
	.quad	0x3fd1deac369ea4c2              # double 0.2792158635516665
	.quad	0x3fd25f8e4f2bc1cc              # double 0.28708226901565292
	.quad	0x3fc1fed52ee6af44              # double 0.14058937826245643
	.quad	0x3fe4f2388d9cbc4b              # double 0.65456798227922641
	.quad	0x3fc6acd148434bf0              # double 0.17714897182904066
	.quad	0x3fd69db74c7fb144              # double 0.35337622137628366
	.quad	0x3feb4581e69744ee              # double 0.85223479306492123
	.quad	0x3fd5c0a20f478390              # double 0.33988238803981918
	.quad	0x3fe49b1acb929a1e              # double 0.64393367538724866
	.quad	0x3fc2f40d1a2eea4c              # double 0.14807285097579592
	.quad	0x3fcb3e61d959211c              # double 0.21284125435546108
	.quad	0x3fe4894d6a254f9e              # double 0.64176054698554075
	.quad	0x3fd4e5789dea76d0              # double 0.32650580808136187
	.quad	0x3f9c62f007630420              # double 0.027721167040685057
	.quad	0x3fcd1e0558290534              # double 0.22747866444300657
	.quad	0x3fbaff1e5314b520              # double 0.10545529869405756
	.quad	0x3fe6669c1380825b              # double 0.70002559479696502
	.quad	0x3fc88e79242e8580              # double 0.19184793726621407
	.quad	0x3fb002f1351f0af8              # double 0.062544894665773287
	.quad	0x3fcb4a1e5abf56b4              # double 0.21319941931749542
	.quad	0x3feae1936ce6a276              # double 0.84003611821851965
	.quad	0x3fa6d9899f675b00              # double 0.04462843008848516
	.quad	0x3fd13d613d078564              # double 0.26937132797146135
	.quad	0x3fe755eef6528244              # double 0.72923992261718995
	.quad	0x3f9f7e9dbeba9b20              # double 0.03075643993966104
	.quad	0x3fe28e52f63dd7e4              # double 0.57987354368264876
	.quad	0x3fe2596373068561              # double 0.57341167894280087
	.quad	0x3fa6bebf43063190              # double 0.044424035007156637
	.quad	0x3fde94f381c353a8              # double 0.4778412596909285
	.quad	0x3fd85338ef993416              # double 0.38007949255262596
	.quad	0x3fe5ebafaea3d58d              # double 0.68502029523249208
	.quad	0x3f9609c52a506800              # double 0.021521645267149836
	.quad	0x3fe9206203d68c43              # double 0.78520298719048076
	.quad	0x3feeebdef13112dd              # double 0.9662928305411601
	.quad	0x3fd2738cfade1146              # double 0.28830265520834464
	.quad	0x3fe4210ece5f41e3              # double 0.62903538043070417
	.quad	0x3fdd14326bf8b26a              # double 0.45435772461022472
	.quad	0x3fca04d05ba2e7b0              # double 0.20327190851622623
	.quad	0x3fdb142f99c308a6              # double 0.42310705200010046
	.quad	0x3fdb3fa0d9286c52              # double 0.42575856406046342
	.quad	0x3fc9652e0e049238              # double 0.19840026554551726
	.quad	0x3fe750d071c0374d              # double 0.72861501900636372
	.quad	0x3fea2294693727b7              # double 0.81672115850346116
	.quad	0x3fed6293a51b3de4              # double 0.91828329322191537
	.quad	0x3fea97806193c10f              # double 0.8309938340953823
	.quad	0x3fe28251c19e5fca              # double 0.57840812507765205
	.quad	0x3fd467d58bdfc0aa              # double 0.3188375345189437
	.quad	0x3fe5f1caf5e16d40              # double 0.68576572440671413
	.quad	0x3fe9f5c422740034              # double 0.81125075081945974
	.quad	0x3fe4ab9411fb0b0b              # double 0.64594462882846082
	.quad	0x3feca2ff0755fd29              # double 0.89489699776450948
	.quad	0x3fed9a3ad6a478ce              # double 0.92507688448292824
	.quad	0x3fe5912bd31fe501              # double 0.67397109256049259
	.quad	0x3fe0d7acfd8590f1              # double 0.52632760539975554
	.quad	0x3fd93760b6ac3464              # double 0.3940049919045292
	.quad	0x3f908ada629dc0a0              # double 0.016154682416016031
	.quad	0x3fd883bd807aa19e              # double 0.38304078623561988
	.quad	0x3fc81136a7137994              # double 0.18802531393062039
	.quad	0x3fe197b5e2f090bb              # double 0.54976934742128181
	.quad	0x3fd6e90304228df0              # double 0.35797191051298594
	.quad	0x3fb0390150424f38              # double 0.06336982926796686
	.quad	0x3fdabc4b8169cf12              # double 0.41774261129397516
	.quad	0x3fccdaa1072d25b8              # double 0.22542202806861922
	.quad	0x3fe3cf5a67c6c406              # double 0.61906166333039958
	.quad	0x3fd7012bbd8d7cbe              # double 0.35944646368984567
	.quad	0x3feef2bc521078a5              # double 0.96713081386748867
	.quad	0x3fe36e4cb09a8124              # double 0.60721430294873757
	.quad	0x3fe1eb1f606be598              # double 0.55995148498839153
	.quad	0x3fd337de2fb3788a              # double 0.30028490694338272
	.quad	0x3fd0f2b3fe697f9a              # double 0.26481342167789423
	.quad	0x3fd370ae91b2904a              # double 0.30375255802414769
	.quad	0x3fd7fdaf85af380c              # double 0.37485874228593796
	.quad	0x3fe29d7b04f1b608              # double 0.58172369924221901
	.quad	0x3fe7eb57983315f7              # double 0.74747829176402447
	.quad	0x3fc2fa13b7d35b6c              # double 0.1482567451082234
	.quad	0x3fb6d3a37dd7f230              # double 0.089166849349518129
	.quad	0x3fe1eca7a353a872              # double 0.56013852977527123
	.quad	0x3fef83ce5a72104a              # double 0.98483960786007541
	.quad	0x3f73162deb3a6700              # double 0.0046598237710442358
	.quad	0x3fc0b44903804f4c              # double 0.13050186797101515
	.quad	0x3fd49c561ea13bfe              # double 0.3220420168990471
	.quad	0x3faf7d66b239fc20              # double 0.061503609901585543
	.quad	0x3fbe1bc906ca7a48              # double 0.11761146941942358
	.quad	0x3fdbf624f0cf194a              # double 0.43689845577718656
	.quad	0x3fa908e8ea2b9550              # double 0.048896101556048621
	.quad	0x3fd0b872ea1e5d6c              # double 0.26125786650796701
	.quad	0x3fe35f4068e57b41              # double 0.6053773926504179
	.quad	0x3fe5241fd21f7fe5              # double 0.6606597045865753
	.quad	0x3fc75241bc6f0434              # double 0.1821977777563305
	.quad	0x3fe54831037a43c8              # double 0.66506243399828069
	.quad	0x3fcb4e040ce577f4              # double 0.21331835393624454
	.quad	0x3fdc8b46704fa1cc              # double 0.44600068061711506
	.quad	0x3fe33240bec1234d              # double 0.59988438851096648
	.quad	0x3fa90b7402f19790              # double 0.048915505751934707
	.quad	0x3fd4e73bf715f64a              # double 0.32661341790649046
	.quad	0x3fd6f443e305373a              # double 0.35865876359899895
	.quad	0x3fe05ca50768c6ca              # double 0.51130916068196908
	.quad	0x3fd9b83e073e2314              # double 0.4018702574472155
	.quad	0x3fd0488f4932b106              # double 0.25442869327777407
	.quad	0x3fd0fa4e84e4f642              # double 0.26527750947920847
	.quad	0x3fe862b347e62a4f              # double 0.76204837839879669
	.quad	0x3fb872247ba25c20              # double 0.095491676506171518
	.quad	0x3fe6ea16b0154d40              # double 0.71607527152301742
	.quad	0x3fe8478fa3b33cb7              # double 0.7587354848164044
	.quad	0x3fee539214d8b5af              # double 0.94770149299227124
	.quad	0x3fdd37bbd557bdbe              # double 0.45652671655895094
	.quad	0x3fd2b175ccdd5e62              # double 0.29208130842514468
	.quad	0x3fe24291ce58f0b6              # double 0.57062616636496588
	.quad	0x3fd59c655bb60452              # double 0.33767065006401709
	.quad	0x3fda841f0d48493e              # double 0.41431404397112093
	.quad	0x3fdcb7f94fdcbf6c              # double 0.44872887419750529
	.quad	0x3fd723b20988d396              # double 0.36155367785550518
	.quad	0x3fedca21bd34c95a              # double 0.93092429117522646
	.quad	0x3fef5317608ed206              # double 0.9788929830452282
	.quad	0x3fe07b35b274bb3d              # double 0.51504025320705404
	.quad	0x3fee228bb669f9f5              # double 0.94171701076248715
	.quad	0x3fd64747fd5b91d4              # double 0.348100659770606
	.quad	0x3f96d9111ff085a0              # double 0.022312419485506774
	.quad	0x3f95914b3e430040              # double 0.021062064814714399
	.quad	0x3f9fd68d88dbae40              # double 0.031091891744763567
	.quad	0x3fe6c2b79301eaf6              # double 0.71126917564774206
	.quad	0x3fe1c4391c04a627              # double 0.55520301315590792
	.quad	0x3fdac8a7b0297792              # double 0.41849701121633942
	.quad	0x3fef5a575f0192c3              # double 0.97977798992050002
	.quad	0x3fdac6dd50b585b0              # double 0.41838772660966139
	.quad	0x3fdc51d8faa9a9ec              # double 0.44249557951721274
	.quad	0x3fdd6ebe560c73cc              # double 0.45988424685657203
	.quad	0x3fe88400ff2c7228              # double 0.7661137565478997
	.quad	0x3fec4064dbb15e02              # double 0.88286059292562435
	.quad	0x3fe14d4ae9f179d4              # double 0.54068513576549515
	.quad	0x3fcdd41a554f3d1c              # double 0.23303536572937211
	.quad	0x3fe91a0518c8d344              # double 0.78442625847547065
	.quad	0x3fbc545f9ff6bd00              # double 0.11066243796698316
	.quad	0x3fe60d01248e5d57              # double 0.68908745899072243
	.quad	0x3fe4c43f80da8a2f              # double 0.64895606199963207
	.quad	0x3fe2bee5c24e4da9              # double 0.58580291700711939
	.quad	0x3fc44721700e4f94              # double 0.15842073413352564
	.quad	0x3faa2a73261c67a0              # double 0.051105116274086315
	.quad	0x3fe04c93c7542e37              # double 0.5093478100911345
	.quad	0x3fe9ef33430cf591              # double 0.81044924827408427
	.quad	0x3fd39981b87e9030              # double 0.30624430672674219
	.quad	0x3fe9be01439734b5              # double 0.80444396210955083
	.quad	0x3fd6d14e5fd2ddb8              # double 0.35652503354819087
	.quad	0x3fefecdd591996a0              # double 0.99766414072356113
	.quad	0x3fec63a8c3346440              # double 0.8871654331770813
	.quad	0x3fd732b5d9cd218c              # double 0.36247011441857846
	.quad	0x3fd5a054345be478              # double 0.33791070092372122
	.quad	0x3fe14a4daa61468a              # double 0.54032023694362974
	.quad	0x3fde29b17555273e              # double 0.47129475076927807
	.quad	0x3fe37496f45021f8              # double 0.60798213689218894
	.quad	0x3fe0d869044d59ec              # double 0.52641726341499639
	.quad	0x3fe316d46e1711f4              # double 0.59653684141136276
	.quad	0x3fd4d8998b38d8aa              # double 0.32572020145324621
	.quad	0x3fee8fd069aec46d              # double 0.9550554336657463
	.quad	0x3fd7e4f302ae5b7a              # double 0.3733489538366751
	.quad	0x3fea33ac6fb1cb4d              # double 0.81880780997594516
	.quad	0x3fd11034334b8322              # double 0.26661400803827651
	.quad	0x3fcf7453cd282048              # double 0.24573752896708556
	.quad	0x3fefe386d1113841              # double 0.99652424653482551
	.quad	0x3fe21acbcee9b64d              # double 0.5657710114734954
	.quad	0x3fb6e51e39efe408              # double 0.089433564324181813
	.quad	0x3fd5dc09df40c222              # double 0.34155508806273549
	.quad	0x3fea1bfb739fb46c              # double 0.8159157999304063
	.quad	0x3fc46a0dee49f748              # double 0.1594865239639438
	.quad	0x3fd2008643a1f2fa              # double 0.2812820110773796
	.quad	0x3fdbdb417abe2b1a              # double 0.43525731073957419
	.quad	0x3fe9b3c53c21a288              # double 0.80319463486110099
	.quad	0x3fe8d52e127005ef              # double 0.77602294541446593
	.quad	0x3feb2329e6669e39              # double 0.84804244041601529
	.quad	0x3fc37c14a24ef70c              # double 0.15222413945405611
	.quad	0x3fdeab5da25976e0              # double 0.47920933584633296
	.quad	0x3fe9679e1125ee2a              # double 0.79389861439944309
	.quad	0x3fd5b18e9d206a26              # double 0.33896222443005042
	.quad	0x3fca884c4497aeb0              # double 0.20728448247188203
	.quad	0x3febf32d6354e30c              # double 0.87343472862912241
	.quad	0x3fe191844dd5e1a1              # double 0.54901328279725103
	.quad	0x3fe64f8240285807              # double 0.69720566302089615
	.quad	0x3fcccb369d06c104              # double 0.22495157878211824
	.quad	0x3fd842d8e582ad72              # double 0.37908003247385758
	.quad	0x3fe713a6d5fa7c29              # double 0.72114888947169675
	.quad	0x3fe33e9df6e8dd65              # double 0.60139368271385918
	.quad	0x3fe7a137069bae29              # double 0.73842955866479543
	.quad	0x3fe7dd82fb5368b9              # double 0.74578999602387974
	.quad	0x3fb50e773baa0858              # double 0.082251979891254989
	.quad	0x3feaa566c95b900c              # double 0.83269061401051791
	.quad	0x3fed7bed1218adad              # double 0.92137769255116597
	.quad	0x3fd3fabab1ba0c70              # double 0.3121783004391494
	.quad	0x3fe057b51188522d              # double 0.51070645736996811
	.quad	0x3fd2e356a016530e              # double 0.29512563355938048
	.quad	0x3fe7675831ee374e              # double 0.73136529686028395
	.quad	0x3fedb1317b1987ef              # double 0.92788003962436771
	.quad	0x3fb965e038ca4730              # double 0.09921075235822907
	.quad	0x3fb8be32da78cbe8              # double 0.096652201021057871
	.quad	0x3fe3fa0f78f78543              # double 0.62427495600074001
	.quad	0x3fc57522eaa8fc4c              # double 0.16763721902859385
	.quad	0x3fea56a14416eb41              # double 0.82307494448409824
	.quad	0x3fd32bde2afd12a4              # double 0.29955248067953222
	.quad	0x3fe6ec56b083da5f              # double 0.71634993053050866
	.quad	0x3fe9499e2afc948f              # double 0.79023655315235597
	.quad	0x3fd5a7c4df629966              # double 0.33836480917888989
	.quad	0x3fd9b908fd33c82a              # double 0.40191864706787561
	.quad	0x3fd7606f27295104              # double 0.36526087593416912
	.quad	0x3fcba47c8cad5528              # double 0.21595723027227476
	.quad	0x3fe2331757a8c56a              # double 0.56873671647023838
	.quad	0x3fe9da1e5fd21cd8              # double 0.80787581171980616
	.quad	0x3fd1ec65c253b922              # double 0.28005355813265187
	.quad	0x3fdf2d4c1753538a              # double 0.48713972356682034
	.quad	0x3fe17c3f58e1f99e              # double 0.54641692504792494
	.quad	0x3fcb9c37240dc874              # double 0.2157048154873028
	.quad	0x3f7e85e61e20db00              # double 0.0074519146892757515
	.quad	0x3fe162a86f98f720              # double 0.54329320713415896
	.quad	0x3fe451b41d71ac6e              # double 0.63497358084476985
	.quad	0x3fe6d07339f9c16d              # double 0.7129455692611778
	.quad	0x3f7321fe456ce780              # double 0.0046710903614498589
	.quad	0x3fcca3aa34f8ddb0              # double 0.22374465548067013
	.quad	0x3fe54cdefa87e346              # double 0.66563366824912218
	.quad	0x3fe2ca5dfe460932              # double 0.58720302260215917
	.quad	0x3fd63011c8c1cc5e              # double 0.34668392758539379
	.quad	0x3fed0ae5d03dab71              # double 0.90758028671312563
	.quad	0x3fb279d2ec623698              # double 0.072171385489321671
	.quad	0x3fe00750b104e6ed              # double 0.5008929688840148
	.quad	0x3fe57962f118f5fa              # double 0.67106768693309893
	.quad	0x3fdaa8dff30cfe34              # double 0.41655729995179347
	.quad	0x3fe98b3012b51145              # double 0.79824069646614559
	.quad	0x3fe7223f55aa241b              # double 0.72293059092874346
	.quad	0x3fd35d647a9b9870              # double 0.30257522557656724
	.quad	0x3feed87d028c3b3d              # double 0.9639267968903834
	.quad	0x3fdc3385fa42652c              # double 0.4406447357119585
	.quad	0x3fe411152358291d              # double 0.62708527472685527
	.quad	0x3fdb8b443dc62338              # double 0.43037515671362625
	.quad	0x3fe67878be0e5cca              # double 0.70220601196606336
	.quad	0x3fc20b2f6823b9b0              # double 0.14096634468974178
	.quad	0x3fdacae63474d1ba              # double 0.41863398668945317
	.quad	0x3fa34706bb5da280              # double 0.037651262637898419
	.quad	0x3fd0aaa83c49fb4a              # double 0.26041608703228702
	.quad	0x3fe6474ce36b4bb5              # double 0.6962036554126515
	.quad	0x3fc2e6a67d6f3c10              # double 0.14766389012081094
	.quad	0x3fdec43551d4b2de              # double 0.48072560302061429
	.quad	0x3fb57af764758510              # double 0.083907568002832499
	.quad	0x3fc2b68c0f1e9188              # double 0.14619589555981016
	.quad	0x3fd31e85e5809254              # double 0.29873797809913083
	.quad	0x3fc9e081cddd7598              # double 0.20216391136174816
	.quad	0x3fee6292474bd4fa              # double 0.94953264164965323
	.quad	0x3febe12e656f2590              # double 0.8712379437576363
	.quad	0x3fd6f904f74e9930              # double 0.35894893790318161
	.quad	0x3fc94bc396e5a8e0              # double 0.197624634437779
	.quad	0x3fe4fd39aa2bbd4c              # double 0.65591128574843927
	.quad	0x3fcf266b3fc41a8c              # double 0.24335995305610358
	.quad	0x3fdb235dec16bd5e              # double 0.42403362327146066
	.quad	0x3fc5c7aa8a6015a8              # double 0.17015582806213314
	.quad	0x3fdc99aba7e02576              # double 0.44687930482958593
	.quad	0x3fce0664275c7518              # double 0.23457004472667431
	.quad	0x3fd142236ca04df4              # double 0.269661766128791
	.quad	0x3fb8c205d5c08678              # double 0.096710552869376687
	.quad	0x3fc1bb8c1452bd14              # double 0.13853598587363847
	.quad	0x3fea9b6b85361877              # double 0.83147216813882963
	.quad	0x3fe5fd838081d39c              # double 0.68719649409341654
	.quad	0x3fdafb08d8301b8e              # double 0.42157193290807349
	.quad	0x3fcf2028fe51844c              # double 0.24316894929782717
	.quad	0x3fdd73f959c86cd2              # double 0.46020349281179762
	.quad	0x3fe93e71d5cf4ced              # double 0.78887264022560333
	.quad	0x3fe4b87b33802424              # double 0.64751968439771135
	.quad	0x3fc8dd15a6e9ce88              # double 0.19424696588577128
	.quad	0x3fd176e9ccd7d79c              # double 0.27288289074146532
	.quad	0x3fca8c77cc76bfdc              # double 0.20741174205386315
	.quad	0x3fe4db25df088c59              # double 0.65175145684441838
	.quad	0x3fc9f6232a506ad0              # double 0.20282401624793645
	.quad	0x3fdfb222cfad34c4              # double 0.49524755745808258
	.quad	0x3fd02ba87b5fc59a              # double 0.25266468094113181
	.quad	0x3fed63ba58e37f1f              # double 0.91842381821695429
	.quad	0x3feb5493d9375ce8              # double 0.85407440590907147
	.quad	0x3fe19a6f47f9be47              # double 0.5501018911144876
	.quad	0x3feadc2ef59460c2              # double 0.83937786068693065
	.quad	0x3fe920dee43361f0              # double 0.78526253290607251
	.quad	0x3fd82edcb7e967ac              # double 0.37786024055605583
	.quad	0x3fc45287179848fc              # double 0.15876854564755394
	.quad	0x3fd6b28ca66c1552              # double 0.3546477914063263
	.quad	0x3fee795f5c4bfc85              # double 0.95231597925875688
	.quad	0x3fe5f73321d5b9e0              # double 0.68642574890492014
	.quad	0x3fe37f1d32d521f2              # double 0.60926685264808911
	.quad	0x3fe8379bb32b4341              # double 0.75678811067528085
	.quad	0x3fe23b82cb7bee73              # double 0.56976451628675162
	.quad	0x3feab289e84de572              # double 0.83429427501611841
	.quad	0x3fc1063412cc5758              # double 0.13300181310540427
	.quad	0x3fac87f4f0c27dc0              # double 0.055724768056502949
	.quad	0x3fed82e11cfaf5a8              # double 0.92222648296563126
	.quad	0x3fb7757dbcb6ff08              # double 0.091636522839504519
	.quad	0x3feca863083517df              # double 0.89555503466612751
	.quad	0x3fe2b17fcfcc5afb              # double 0.58416739068601886
	.quad	0x3fcf3fce0a130618              # double 0.24413466922673943
	.quad	0x3fecb32a572f1cde              # double 0.89687077549106298
	.quad	0x3fd9072ca62de53e              # double 0.39106289127774463
	.quad	0x3fc301e33abf471c              # double 0.14849510544313993
	.quad	0x3fb53615c65ad2e0              # double 0.082856522489986428
	.quad	0x3fd8c849b78c57e4              # double 0.3872246067488716
	.quad	0x3fdb1814d7881644              # double 0.4233448128510171
	.quad	0x3fc039bb68dc3f84              # double 0.12676184291967385
	.quad	0x3fdbc08936862b90              # double 0.43362646412486416
	.quad	0x3fc22acf2ea12064              # double 0.14193143631769367
	.quad	0x3fdeccab10202cc8              # double 0.48124195647023926
	.quad	0x3fe2c929a87c4b6e              # double 0.58705599696473398
	.quad	0x3fd5896766aa4d98              # double 0.33651146913435914
	.quad	0x3fefa5fb3502b4c4              # double 0.98901138642909147
	.quad	0x3f9899ba9680ea60              # double 0.024023929058083815
	.quad	0x3fe069eff25f959f              # double 0.51293179834890512
	.quad	0x3fed0999a1c4dbeb              # double 0.90742189021591224
	.quad	0x3fe197d25e383293              # double 0.54978292848825772
	.quad	0x3fead1dba3d7a184              # double 0.83811742783022724
	.quad	0x3fe9832b925e5072              # double 0.79726198756772093
	.quad	0x3fe0fabc95968481              # double 0.53060750214002905
	.quad	0x3fc4064b2c411e34              # double 0.15644206677301187
	.quad	0x3fc0c11b3d209c70              # double 0.13089313969360061
	.quad	0x3fe3782e1cf496c4              # double 0.6084204259429602
	.quad	0x3fe2d2e152fc2bb3              # double 0.58824220855728127
	.quad	0x3fdb77820f007004              # double 0.42916919198046366
	.quad	0x3fe914264207ad54              # double 0.78370964905244955
	.quad	0x3fabe210039e2c50              # double 0.054459095422395465
	.quad	0x3fb30938dc476f10              # double 0.074359468249380223
	.quad	0x3fdb07aa3cbf748a              # double 0.42234283382806181
	.quad	0x3fe05259e9c4a394              # double 0.51005263955913671
	.quad	0x3fe81d61858902f3              # double 0.75358654099554057
	.quad	0x3fe18dbd01a1d058              # double 0.5485520393253962
	.quad	0x3fb2f98d74507268              # double 0.074120369812996523
	.quad	0x3fe197c55658052e              # double 0.54977671493558034
	.quad	0x3febcfd908b66173              # double 0.86912204457898523
	.quad	0x3fe9a4326d44697c              # double 0.80129357663399458
	.quad	0x3fd7924cdbf36b20              # double 0.36830445746970675
	.quad	0x3fee0b83150dc7a2              # double 0.9389052783210341
	.quad	0x3fc6e150b934957c              # double 0.17875107806427681
	.quad	0x3fe25e7e9d9f8b80              # double 0.57403498445306411
	.quad	0x3fe9e978154837a0              # double 0.80974964291248241
	.quad	0x3f72cb0c318cd180              # double 0.0045881725607624935
	.quad	0x3fd50d0ac6b55528              # double 0.3289210262785951
	.quad	0x3fb44db089a30190              # double 0.079310449221344336
	.quad	0x3fdb3488dbc6c8d0              # double 0.42508145773457517
	.quad	0x3fef917fd5795dc2              # double 0.98651115125806421
	.quad	0x3fd6f8780fa9f850              # double 0.35891534356767796
	.quad	0x3fc9524183570fa0              # double 0.19782275117006254
	.quad	0x3fd5d5e47b082b4e              # double 0.34117996229968106
	.quad	0x3fb0c8d95c7c9a20              # double 0.065564713554160381
	.quad	0x3fd4aa63ac558fea              # double 0.32289974050058723
	.quad	0x3fe03d63969038ad              # double 0.50749377638728321
	.quad	0x3feadd89ff3fcbf2              # double 0.83954334119186869
	.quad	0x3fd87b1edd602db4              # double 0.38251468294830748
	.quad	0x3fe01e19105d3c8e              # double 0.50367406078466259
	.quad	0x3fd3abcf9511c6f6              # double 0.30736150319636069
	.quad	0x3fe7768417c38d3b              # double 0.73321728364354699
	.quad	0x3fe7e84096a72b63              # double 0.74710111069121543
	.quad	0x3fe661095ba69cf8              # double 0.69934528255990269
	.quad	0x3fe42e92047d4a76              # double 0.63068486096228926
	.quad	0x3fe074a9baa53d37              # double 0.51424108938400692
	.quad	0x3fcb5914a65391f0              # double 0.21365602609070278
	.quad	0x3fe18c26ed5f54ef              # double 0.54835840570254202
	.quad	0x3fee39114e1350a8              # double 0.94446625947104667
	.quad	0x3fa9513c3d938f10              # double 0.049447901264811134
	.quad	0x3fd6224f7d4e2b14              # double 0.34584414707994537
	.quad	0x3fdeef8a300bc40e              # double 0.48337034885395347
	.quad	0x3fe3943a23b2ce3c              # double 0.61184412929873799
	.quad	0x3fee608c842565da              # double 0.94928575334341336
	.quad	0x3fc535e611b97f24              # double 0.16570735803087999
	.quad	0x3fe7d771fdf8a889              # double 0.74504947284482725
	.quad	0x3fc6cb571e5beed4              # double 0.17808045370462955
	.quad	0x3fe81fc91a83d705              # double 0.75388007334433438
	.quad	0x3fae681833c49cd0              # double 0.059387928313577754
	.quad	0x3fd605aaecec4d14              # double 0.34409592759148322
	.quad	0x3fd97aa6b93f17a4              # double 0.39811103907083578
	.quad	0x3fc9ed21d201b10c              # double 0.20254919771412749
	.quad	0x3fcfff9d9dcf2708              # double 0.24998827176596472
	.quad	0x3fe4c3e4b80a53f6              # double 0.64891277261142366
	.quad	0x3fedce4847542c77              # double 0.93143094951064043
	.quad	0x3fdef1145ae208f2              # double 0.48346432566917408
	.quad	0x3fe6c13a4a7472ac              # double 0.71108736555068708
	.quad	0x3fec8a3c1cd416dc              # double 0.89187436705170908
	.quad	0x3fc618fdfb0e4fb0              # double 0.17263769873227153
	.quad	0x3fe2fe97a1cceaeb              # double 0.59357816316272982
	.quad	0x3fea0c83dc5c83d8              # double 0.81402771987279277
	.quad	0x3fc90959ebaf8fe8              # double 0.1955978775796432
	.quad	0x3fed1c844bb289e4              # double 0.90973105225230854
	.quad	0x3fe5b98758e98dc7              # double 0.67889754644095823
	.quad	0x3fb13fb24a774b58              # double 0.067378180675672694
	.quad	0x3fd9447acbeed50e              # double 0.39480466761899968
	.quad	0x3fded3ebe3017226              # double 0.48168465775032343
	.quad	0x3fe054687e6e98cb              # double 0.5103037328124399
	.quad	0x3fc2c521543a4f38              # double 0.14664093601879258
	.quad	0x3fd8e2afa12c1be0              # double 0.38883581866724448
	.quad	0x3fed0647cd874ef7              # double 0.90701666013998661
	.quad	0x3fd9f4211beb8e6a              # double 0.40552547194076871
	.quad	0x3fdc0f6592b728a6              # double 0.43843974425966292
	.quad	0x3fe79e56080f3a9a              # double 0.73807813238257158
	.quad	0x3fa34f91db2b1ea0              # double 0.037716444019278983
	.quad	0x3fe52ee0a4e16640              # double 0.66197235301223856
	.quad	0x3fe9bf4ad880e3d7              # double 0.80460111890635744
	.quad	0x3fd576b811c90320              # double 0.33537103401981661
	.quad	0x3fce1ab1d4c33398              # double 0.23518965615076293
	.quad	0x3fb7e5a4b91bb730              # double 0.093347830955931909
	.quad	0x3fe2e855316d03cd              # double 0.59086093572124698
	.quad	0x3fc9560d9224bc08              # double 0.19793862949288177
	.quad	0x3fe7795acc783596              # double 0.73356380401098664
	.quad	0x3fc04faceb2d664c              # double 0.12743150218266164
	.quad	0x3fd4109b62c9a0da              # double 0.31351360938289263
	.quad	0x3fe27cdcb402c483              # double 0.57774195822106866
	.quad	0x3f95474f7fd6d760              # double 0.020779840638815883
	.quad	0x3fe1114363bdb1ff              # double 0.53335732918418433
	.quad	0x3fdfd9f9ad71ff22              # double 0.49767915666596896
	.quad	0x3fdc274c947129ea              # double 0.43989862915319
	.quad	0x3fd4ab6b2a6b21c2              # double 0.32296256201200546
	.quad	0x3fe7ae6a8d035754              # double 0.74004104177104546
	.quad	0x3fee2dd53185d29d              # double 0.94309482262049793
	.quad	0x3feb7fc6178871b0              # double 0.85934738727842408
	.quad	0x3fda7fa7ccefbe12              # double 0.41404147160844318
	.quad	0x3fc7b1cab8f94914              # double 0.18511327773973874
	.quad	0x3fea1dd1295221aa              # double 0.81613977499460089
	.quad	0x3fea58f8d59a7a1d              # double 0.8233608409826193
	.quad	0x3feea73a6f521811              # double 0.95791360609359987
	.quad	0x3fc93904cd71cfe0              # double 0.19705257445786994
	.quad	0x3fea2a1fbe307edc              # double 0.81764208933233417
	.quad	0x3fe9b4d78a149fee              # double 0.80332543343410889
	.quad	0x3fe05b0c34499362              # double 0.51111421787627997
	.quad	0x3fc438b66cd935c8              # double 0.15798073115222011
	.quad	0x3fefc6df2eb27d8e              # double 0.9930263435416451
	.quad	0x3fbc79be9d36dd38              # double 0.11123267496337952
	.quad	0x3fc4e822608a5d08              # double 0.16333417619600987
	.quad	0x3fedac28f078f720              # double 0.92726561515130256
	.quad	0x3fd2833339a5d630              # double 0.28925781850498122
	.quad	0x3fe6f6ce20451303              # double 0.71762758543681604
	.quad	0x3fdb7b7601103608              # double 0.42941045860138205
	.quad	0x3fea13c4422c8585              # double 0.81491291927902465
	.quad	0x3fa70d7a8d99bd80              # double 0.045024709496710891
	.quad	0x3fed2567d0f7ad93              # double 0.91081610502208077
	.quad	0x3fd8b90c860d041a              # double 0.38629448977377623
	.quad	0x3f844eeda5691400              # double 0.009916168795038871
	.quad	0x3febb1a2d0bfef14              # double 0.86543408175882285
	.quad	0x3fdb35950c4b3dae              # double 0.42514539909913196
	.quad	0x3fe875ed8cc749c9              # double 0.7643954991893277
	.quad	0x3fe4b5a884aac2df              # double 0.64717508231668919
	.quad	0x3fcc484763219a70              # double 0.22095577564614954
	.quad	0x3fe2b251d0d49009              # double 0.58426752841160223
	.quad	0x3fdb7b3729c8d454              # double 0.42939547615543927
	.quad	0x3fec5726ed1a6d0a              # double 0.88563867863868606
	.quad	0x3fd7d071553cf5b6              # double 0.37209733318362781
	.quad	0x3fc062f39fe4ea4c              # double 0.12801976497014989
	.quad	0x3fa08674b2e09060              # double 0.032275816760631626
	.quad	0x3feb0ecd7c08c8d3              # double 0.84555696702434557
	.quad	0x3fd6aeba42a0f67e              # double 0.35441452509608229
	.quad	0x3fe8904e739c13de              # double 0.76761553363814605
	.quad	0x3fe8e82da977f9cd              # double 0.77834208583208808
	.quad	0x3f713c34c0eae300              # double 0.004207807606399383
	.quad	0x3fdebe1fc64dcf52              # double 0.48035425534839249
	.quad	0x3fc00fea46e36724              # double 0.12548569165556345
	.quad	0x3fe36d929c4e4696              # double 0.6071255734297718
	.quad	0x3fdfba890a568f40              # double 0.49576021203596454
	.quad	0x3fed43324e37d356              # double 0.91445269848791599
	.quad	0x3fee93d8db09eea3              # double 0.95554774075522564
	.quad	0x3fe75a3290aebeed              # double 0.72976043947525471
	.quad	0x3fd446d088c78180              # double 0.31682217938762136
	.quad	0x3fea762be3811324              # double 0.82692522463239415
	.quad	0x3fee9f997c0890db              # double 0.95698236680302828
	.quad	0x3fefedc790b0afa0              # double 0.99777582416344401
	.quad	0x3fe14e9eebd1e18f              # double 0.54084726389469207
	.quad	0x3fc6240bcaf2c31c              # double 0.17297503861984687
	.quad	0x3fe312e9c68dffba              # double 0.59605873851977909
	.quad	0x3fecc8ccdad0453c              # double 0.89951174485228291
	.quad	0x3feabeeae1e13115              # double 0.83580536000366357
	.quad	0x3fed050cc808fe77              # double 0.90686644620286827
	.quad	0x3fee5e608b68a961              # double 0.94902064541137687
	.quad	0x3feb09601c39ae0e              # double 0.84489446175342819
	.quad	0x3faac2c38ac494d0              # double 0.052267180146637338
	.quad	0x3fc8a9b3b6e02664              # double 0.19267889432403529
	.quad	0x3faf407349d523c0              # double 0.061038592112317769
	.quad	0x3faa02ad6a8a9a10              # double 0.050801676993888489
	.quad	0x3fec61a621ab48c6              # double 0.88692003799430874
	.quad	0x3fb5863edb0234d8              # double 0.084079674214268763
	.quad	0x3fee9aab22c9b4bd              # double 0.95638043207659218
	.quad	0x3fef93399a42033d              # double 0.98672180298317579
	.quad	0x3fe9351548523340              # double 0.78772987485135815
	.quad	0x3fe9fa3b211ca421              # double 0.81179577319301555
	.quad	0x3fefffa2544019e3              # double 0.99995533423571847
	.quad	0x3fd054cca5531dd2              # double 0.25517574448573754
	.quad	0x3fef2167fe35a2f3              # double 0.97282790804191987
	.quad	0x3feb48d5375e6d2f              # double 0.85264073194722367
	.quad	0x3fc1b9f6b1170e94              # double 0.13848765990234269
	.quad	0x3fcd3dd48bc8c4a8              # double 0.22844940972712391
	.quad	0x3fe229ee534b64e4              # double 0.56761852520426404
	.quad	0x3fe74e3bf2221f68              # double 0.72830006877573528
	.quad	0x3fdb9a3442b40f86              # double 0.43128687395095999
	.quad	0x3feb63d2650ec969              # double 0.85593528497547056
	.quad	0x3fe1553e7b18ea51              # double 0.5416557697529446
	.quad	0x3feb9b687b0ea2de              # double 0.86272071871379885
	.quad	0x3fc0bd83abb7a600              # double 0.13078351864469084
	.quad	0x3fea51022384e53b              # double 0.82238871514633816
	.quad	0x3f99b7770f2ba300              # double 0.025113926220828198
	.quad	0x3fe56817ea9f8be1              # double 0.66895671677445645
	.quad	0x3f7c599ab4298c00              # double 0.0069213908305725269
	.quad	0x3fc2abf746e68e8c              # double 0.14587298356956457
	.quad	0x3fb2fa1a1bfb4af0              # double 0.07412875350136594
	.quad	0x3fdd78c5bfbbab74              # double 0.46049636577543329
	.quad	0x3fddfb48e2cf4e46              # double 0.46846220158952112
	.quad	0x3fe673157fba32a3              # double 0.70154833742852352
	.quad	0x3fe2ee7c3e5354f0              # double 0.59161197827293499
	.quad	0x3fe2a3edbd864fb2              # double 0.58251082436117074
	.quad	0x3fe44268ec713e3c              # double 0.63310667209766036
	.quad	0x3fe5b1c83aafe244              # double 0.67795192205728272
	.quad	0x3fda635229c797d2              # double 0.41231206970257717
	.quad	0x3fec5914112d2f38              # double 0.88587382654939173
	.quad	0x3fb0c6131f7851b8              # double 0.065522380049805373
	.quad	0x3fee861bf84be9ee              # double 0.953870758966614
	.quad	0x3f91395425aee080              # double 0.016820254135126778
	.quad	0x3fe85398438a4af0              # double 0.76020444098898388
	.quad	0x3fc3ab812acdf0f4              # double 0.15367140379010602
	.quad	0x3fe34744b6ba38a7              # double 0.60244975747061325
	.quad	0x3feff1ca82c3aac8              # double 0.99826550998599206
	.quad	0x3fe072b700f8829b              # double 0.51400327863310069
	.quad	0x3fe4799d5036435c              # double 0.63984552065276601
	.quad	0x3fdaf525a2e81cee              # double 0.42121258648735604
	.quad	0x3fb7504c527071a0              # double 0.091069002272382793
	.quad	0x3fc515ebcc2cb184              # double 0.1647314783998689
	.quad	0x3fe616919b12c859              # double 0.69025497710959904
	.quad	0x3fe9ffabdaaf67bd              # double 0.81245987617443627
	.quad	0x3f8d3b746ae4b780              # double 0.014273557197693298
	.quad	0x3fe5f4af18cd47c9              # double 0.6861186489497807
	.quad	0x3fec2826c0210921              # double 0.87990129018024643
	.quad	0x3fe63ef3a02b0821              # double 0.69518452914076445
	.quad	0x3fce2f77c37837dc              # double 0.2358236030999582
	.quad	0x3fe68509d42c16ad              # double 0.70374003829848208
	.quad	0x3fdaf26feac831ea              # double 0.42104719093256782
	.quad	0x3fe60302fac0e63a              # double 0.68786763167663101
	.quad	0x3fe1a34c2b3bc78a              # double 0.55118378109021759
	.quad	0x3fe974db743d8e2f              # double 0.79551480010235831
	.quad	0x3fd6cff67f0db268              # double 0.35644304664200499
	.quad	0x3fd077f189c1c172              # double 0.25732077076738513
	.quad	0x3fd22087de34053a              # double 0.28323551845103945
	.quad	0x3fed7b63b6a5aeac              # double 0.92131219552307674
	.quad	0x3fdfff8d1104dfc6              # double 0.49997259771361902
	.quad	0x3fd3911e5901bd70              # double 0.30573233310766224
	.quad	0x3fb5f208ab8d4288              # double 0.085724393732798387
	.quad	0x3fb155eb40c6ef78              # double 0.067717269243926625
	.quad	0x3fbaed8b5574e398              # double 0.10518713795035095
	.quad	0x3fea358ced0774f9              # double 0.81903692526580507
	.quad	0x3fe523fb380fad9e              # double 0.6606422514864112
	.quad	0x3fc6befe567ff024              # double 0.17770365928288456
	.quad	0x3fc36eb54d28672c              # double 0.15181604640457047
	.quad	0x3fee53aa577cf20c              # double 0.94771306121362064
	.quad	0x3fddeb38d8e09a94              # double 0.46748181514195974
	.quad	0x3fe72ce40629ef2c              # double 0.72422982410305314
	.quad	0x3fd0c3b1efd7acb6              # double 0.26194427892796612
	.quad	0x3fd54cc2b45b3102              # double 0.33281009304916165
	.quad	0x3fefe76d82174b22              # double 0.99700045975109597
	.quad	0x3fd73aeb02235df4              # double 0.36297106941989843
	.quad	0x3fe4f077ca956ab3              # double 0.65435399596329658
	.quad	0x3fe2f15f8ab51081              # double 0.59196450320497729
	.quad	0x3fec57c760ef2307              # double 0.88571518833586615
	.quad	0x3f63e5e0f6ef5f00              # double 0.0024289506759308521
	.quad	0x3fda7820ba332f40              # double 0.41358202155673851
	.quad	0x3febb0e1fb2062df              # double 0.86534213112016889
	.quad	0x3fef9f3a9d48f599              # double 0.98818712920881346
	.quad	0x3fe6c9fad0e06f30              # double 0.71215573116521647
	.quad	0x3fea5a4cff26b276              # double 0.82352304300509505
	.quad	0x3fe0fcfba935ce3a              # double 0.53088172005522627
	.quad	0x3fec233aca6bdafe              # double 0.87930049453174752
	.quad	0x3fee2903f7edcdbe              # double 0.94250677512757597
	.quad	0x3fd67c39b824a5b2              # double 0.35133212073068443
	.quad	0x3fec1d8283f04dbf              # double 0.87860227364802046
	.quad	0x3fda8e19f7c2bdd4              # double 0.41492318339711898
	.quad	0x3fee18254af6ea58              # double 0.94044747010714058
	.quad	0x3fd2106e55b8784a              # double 0.28225286837721753
	.quad	0x3fed25e02fa355c4              # double 0.91087350181867821
	.quad	0x3fdcc79901d93202              # double 0.44968247585782717
	.quad	0x3fc1aa33065dd2cc              # double 0.13800657091964863
	.quad	0x3fd87f453a4b0908              # double 0.38276797001539409
	.quad	0x3fee9aac866d305c              # double 0.95638109450511477
	.quad	0x3fe33049d820eff5              # double 0.59964458668355169
	.quad	0x3fe9017ce0b41846              # double 0.78143161666299288
	.quad	0x3fd9096e00ad3164              # double 0.39120054308002339
	.quad	0x3fe19dc2a3b70823              # double 0.55050785041408223
	.quad	0x3fe251c5cf416e02              # double 0.57248201827627576
	.quad	0x3fb8cc6ef9e4e680              # double 0.096869407662689255
	.quad	0x3fe3a1f2d00946a8              # double 0.61351910240246799
	.quad	0x3fac0bd9e03c3010              # double 0.054777916548204186
	.quad	0x3fe8e8a13684cdc3              # double 0.77839718483158327
	.quad	0x3fefd7e9029dc2dd              # double 0.99510622511851531
	.quad	0x3fc952a41a335670              # double 0.19783450393031243
	.quad	0x3fdc9f0b39264af0              # double 0.44720726567281499
	.quad	0x3fabf579345c1f40              # double 0.054607188836654164
	.quad	0x3fd1fde523b7db08              # double 0.28112152565101711
	.quad	0x3fe275f350d0efe0              # double 0.57689824852377214
	.quad	0x3fe1dd87bb19bf75              # double 0.5582922605808408
	.quad	0x3fefc7f2b0b30deb              # double 0.9931577159081234
	.quad	0x3fc1c08d5c692664              # double 0.13868872654193176
	.quad	0x3fea77793120592e              # double 0.82708415598862017
	.quad	0x3fb7610b976c1860              # double 0.091324543445894246
	.quad	0x3fe92701ad6c4ffe              # double 0.78601154205034596
	.quad	0x3feea52138e35c05              # double 0.95765744315110679
	.quad	0x3fcf246cf4eb5b8c              # double 0.24329912146523858
	.quad	0x3fe1291bba53cb51              # double 0.53626810447745232
	.quad	0x3fc58ed125ac6780              # double 0.16842092837833533
	.quad	0x3fe14ae02268f891              # double 0.54039007874213685
	.quad	0x3fd793282ddeb8da              # double 0.36835674743168811
	.quad	0x3fe7bc24b8600e64              # double 0.74171672831330371
	.quad	0x3fb7a34985b4b5c8              # double 0.092335314887086573
	.quad	0x3fe4734906db0dd0              # double 0.63907290781974702
	.quad	0x3fe0bbe62667e83d              # double 0.52293689252042663
	.quad	0x3f9a448c842b9c20              # double 0.025652118269956614
	.quad	0x3fd633d7a4c6c196              # double 0.3469142064232299
	.quad	0x3fed8c1e76ebb9b4              # double 0.92335437037200174
	.quad	0x3fe22ebf1edccac7              # double 0.56820636775804523
	.quad	0x3fc042149f90a1d4              # double 0.12701661864527003
	.quad	0x3fb1ca55fb0e1c18              # double 0.0694936502387552
	.quad	0x3fb37195ad5eebe0              # double 0.075951914622165884
	.quad	0x3fe800c11ea6e17a              # double 0.75009208666510507
	.quad	0x3fe41201a68dd575              # double 0.62719805269322981
	.quad	0x3fe70adb5ba02c50              # double 0.72007530112876772
	.quad	0x3fea0f57f6cbbaf6              # double 0.81437299921330353
	.quad	0x3fdf0c2935dbb41c              # double 0.48511724719611649
	.quad	0x3fdb213b6ac2ec9a              # double 0.4239033262817401
	.quad	0x3fc46bd301117310              # double 0.15954053451687189
	.quad	0x3fe41e3ca0fcfd5e              # double 0.62869101946845851
	.quad	0x3fe990d640e62a24              # double 0.79893028903581297
	.quad	0x3fde812f74de9e4e              # double 0.47663484967276737
	.quad	0x3fb1e5adf2be33f8              # double 0.06991088081686303
	.quad	0x3fd6a7eba66b0584              # double 0.35399905444872837
	.quad	0x3feb496ea3a0596b              # double 0.8527138896777563
	.quad	0x3f924e03ddb1ad80              # double 0.017875728994494633
	.quad	0x3fd5f8b3680301ea              # double 0.34330449254414808
	.quad	0x3fedb2f0b2c4bb31              # double 0.92809328952521331
	.quad	0x3fed00e8db852569              # double 0.90636103510875643
	.quad	0x3fc76bb9fe9ba80c              # double 0.18297505313904627
	.quad	0x3feb1c64513e204e              # double 0.84721580379210493
	.quad	0x3fe8bf3187b2bea8              # double 0.77333904746588633
	.quad	0x3feded01d959de19              # double 0.93518154574752821
	.quad	0x3fbdc57ea1deaac8              # double 0.11629477931880239
	.quad	0x3fe07a8f9e47d6dc              # double 0.51496106065925629
	.quad	0x3fec6cfe36fd477a              # double 0.88830481281387041
	.quad	0x3fc91b19bf22b3a0              # double 0.1961395438460416
	.quad	0x3feddc666311cab9              # double 0.9331542906714595
	.quad	0x3fe223475c106b52              # double 0.5668064878585517
	.quad	0x3fe480e92268c464              # double 0.64073616715007775
	.quad	0x3fde3e3e26d6e44c              # double 0.47254899781143389
	.quad	0x3fe4d005bbed6b13              # double 0.65039335922787911
	.quad	0x3fc242954860b250              # double 0.14265695604389572
	.quad	0x3feaf64f48e77fb5              # double 0.84256710280532465
	.quad	0x3fc78e81c8f7316c              # double 0.18403646767400106
	.quad	0x3fd3102fc4d39b4e              # double 0.29786295148226294
	.quad	0x3fefe78c1d7c3674              # double 0.99701505431012416
	.quad	0x3fe3e5daa3b72827              # double 0.62180835700678905
	.quad	0x3fd0f78dc45d05d6              # double 0.26510948349104291
	.quad	0x3fe9ea460e9f7ffb              # double 0.80984785896362099
	.quad	0x3fd2e8937b40f12a              # double 0.2954453185700624
	.quad	0x3fd7c4e7cd6a3f42              # double 0.37139315662442496
	.quad	0x3feffec0c60f5846              # double 0.99984778102476279
	.quad	0x3fdea8988efbe502              # double 0.47904027903821611
	.quad	0x3fee6b3eddd3f9f2              # double 0.9505915005282175
	.quad	0x3fe7dffbb41cd46e              # double 0.74609170130010027
	.quad	0x3fdbfe7af5793ab8              # double 0.43740724536921105
	.quad	0x3fceb88660abc498              # double 0.24000625343572746
	.quad	0x3fe3718bd35f97f8              # double 0.60761061939115191
	.quad	0x3fefcd25035d2509              # double 0.99379206330300562
	.quad	0x3fdeb9c470882086              # double 0.48008833875110957
	.quad	0x3fe9e2f63d422bc2              # double 0.80895530666872895
	.quad	0x3fea8d2330ec5163              # double 0.82972869448944342
	.quad	0x3fef3992020d86d2              # double 0.97577762986130723
	.quad	0x3fdf321950eb9fc2              # double 0.48743279363997882
	.quad	0x3fe5fd640b864606              # double 0.68718149424438546
	.quad	0x3fcbed534df72e54              # double 0.2181800966921964
	.quad	0x3fc62f378c759758              # double 0.17331594808927764
	.quad	0x3fe67cf02a6b361b              # double 0.70275123867913025
	.quad	0x3fdd575d147654ca              # double 0.45845725057854436
	.quad	0x3fe54e2a5a0ae7f5              # double 0.66579167925306015
	.quad	0x3fe0d0031fc4a4c6              # double 0.52539211468424507
	.quad	0x3fcacaa9aa06e218              # double 0.20930977632612335
	.quad	0x3fd0388206f5cc08              # double 0.25344896964742292
	.quad	0x3fbb682bc77a1920              # double 0.10705827350657104
	.quad	0x3feebcd5c1159f39              # double 0.96055114471253155
	.quad	0x3fd58779b3fd067c              # double 0.33639376236906293
	.quad	0x3feb4280b953e8d0              # double 0.85186802098112402
	.quad	0x3feefba4e26421e4              # double 0.96821827141780802
	.quad	0x3fe4f5152419aeea              # double 0.65491730738491793
	.quad	0x3fee431a748a80ec              # double 0.94569132577819692
	.quad	0x3fe9de942ee5ebd8              # double 0.8084202686289883
	.quad	0x3fcefc4f8b56db90              # double 0.24207491210628662
	.quad	0x3fee8887a9ba2b50              # double 0.95416625165794677
	.quad	0x3fef303272bb68d3              # double 0.97463343056304052
	.quad	0x3fc534b92eb60544              # double 0.1656714895325796
	.quad	0x3fd600fe525e9628              # double 0.34381063503164677
	.quad	0x3fec4e71c2b9c81c              # double 0.88457572967877551
	.quad	0x3fe2f9c64b9737e3              # double 0.59299006236846841
	.quad	0x3fe26a073e644c9f              # double 0.57544290719888014
	.quad	0x3fd9a79b92e18ecc              # double 0.40085496276718113
	.quad	0x3fd1c383d949e97a              # double 0.27755829066850135
	.quad	0x3fd352f8cb9dc320              # double 0.3019392002525354
	.quad	0x3fc6d11096c98cb8              # double 0.17825515139256765
	.quad	0x3fe84e11b2cac7a7              # double 0.75952992363294392
	.quad	0x3fccf3f0e997f0f0              # double 0.22619449048932649
	.quad	0x3fb51107798cc318              # double 0.08229109494710618
	.quad	0x3fe311344dfbb92a              # double 0.59585013609993109
	.quad	0x3fda9995d860b31c              # double 0.41562410479200351
	.quad	0x3fe935b71fea4f39              # double 0.78780704720927652
	.quad	0x3fddd92ee3e37402              # double 0.46638080839858287
	.quad	0x3fc5616233f864e8              # double 0.16703441178905298
	.quad	0x3feeec9e80ff1787              # double 0.96638417429561307
	.quad	0x3fe511d8e39da9c1              # double 0.65842861610627079
	.quad	0x3fe8cb5bf27d6803              # double 0.77482411729147349
	.quad	0x3fd99cf0fa480e8c              # double 0.40020393792676923
	.quad	0x3fd01762c9a7f548              # double 0.25142736142136757
	.quad	0x3fa265cb920d0f90              # double 0.035932885721677299
	.quad	0x3fdb42c3d718a4b8              # double 0.42595001225943063
	.quad	0x3fd01d68c21c7b1a              # double 0.25179499584366882
	.quad	0x3fd3b64d52c87dda              # double 0.30800183376592616
	.quad	0x3fe82b5a7f149b5f              # double 0.7552921754876073
	.quad	0x3faa2b0a838a5740              # double 0.051109627301384908
	.quad	0x3fe63ced4170c286              # double 0.69493735104886478
	.quad	0x3fc63187815b487c              # double 0.17338651481856349
	.quad	0x3fb78ef919ef73c8              # double 0.092025345641970735
	.quad	0x3fd147f137a9f486              # double 0.27001600681234839
	.quad	0x3fe5a79f6ea0352e              # double 0.67671176535228539
	.quad	0x3fede08305624240              # double 0.93365622569587713
	.quad	0x3fd30053c1069772              # double 0.29689496851130237
	.quad	0x3fdedfd01268613c              # double 0.48241044805174105
	.quad	0x3fbadde99c42e200              # double 0.10494861664745514
	.quad	0x3fdddd03c05b6f6c              # double 0.4666146639335611
	.quad	0x3fe1c33dc086a1be              # double 0.55508315661159435
	.quad	0x3fd5f24706f1dc88              # double 0.34291244199943849
	.quad	0x3fe9343d0749d32b              # double 0.7876267568923131
	.quad	0x3fe1f73ef7e40465              # double 0.56143139282370369
	.quad	0x3feb9a9c1c6f70ab              # double 0.86262326768657738
	.quad	0x3f63cb3b293e5d00              # double 0.0024162440767657722
	.quad	0x3fe83cc20b4647b5              # double 0.75741674615914312
	.quad	0x3f5d13205fa14200              # double 0.0017745796344749154
	.quad	0x3febb76e34aaca35              # double 0.86614141737510997
	.quad	0x3fc0e688f4199998              # double 0.13203536910004909
	.quad	0x3feeafc155327845              # double 0.95895449295108703
	.quad	0x3fe064d3ba272ffa              # double 0.51230799062750454
	.quad	0x3fa27cc232453cb0              # double 0.036108082424669674
	.quad	0x3fe7c6a832863d3f              # double 0.74300012462655463
	.quad	0x3fd298de77c666b4              # double 0.29058038422372623
	.quad	0x3fefd08595fadf24              # double 0.99420432370149969
	.quad	0x3fc4af4177e5c240              # double 0.16159838060731779
	.quad	0x3feb50c9a1c530f9              # double 0.85361177058942339
	.quad	0x3fef65a4470b013d              # double 0.98115743518432163
	.quad	0x3fe89d1670a836d0              # double 0.76917573932015593
	.quad	0x3fe1c3f410ca7e2e              # double 0.55517009047975363
	.quad	0x3fb6080df0654e30              # double 0.086060401144373299
	.quad	0x3fe44a7587793a33              # double 0.6340892454116499
	.quad	0x3fe1a871c71caa06              # double 0.55181206597382082
	.quad	0x3fcd2ea8feda7f0c              # double 0.22798645442980392
	.quad	0x3fe9a31fe9e772b7              # double 0.80116267856973067
	.quad	0x3fda4af54d7b4116              # double 0.41082508627461445
	.quad	0x3fe809a28bb3adac              # double 0.75117614064713711
	.quad	0x3fd7abb36348094c              # double 0.36985478110741066
	.quad	0x3fcccbdc8147386c              # double 0.22497135460293138
	.quad	0x3fc3d9c8b4e14f2c              # double 0.15508374053990204
	.quad	0x3feef0f3e970b378              # double 0.96691318124577119
	.quad	0x3fdda84f14d48db0              # double 0.46339776071746552
	.quad	0x3fde417d9dd4b0c0              # double 0.47274723447004519
	.quad	0x3fe599f503f24513              # double 0.67504359026694016
	.quad	0x3fe9fd60bf374e30              # double 0.81217992159731089
	.quad	0x3fcfff0ae250b8bc              # double 0.24997077990105321
	.quad	0x3fdc39704299fdc8              # double 0.44100576881461651
	.quad	0x3fe1b6a0753d9192              # double 0.55354330919776573
	.quad	0x3fd1285d2e485b60              # double 0.26808862228192787
	.quad	0x3fda28be1ec95510              # double 0.40873673445214909
	.quad	0x3fcc77be9705e140              # double 0.22240431188743948
	.quad	0x3fefed113badb568              # double 0.9976888814541498
	.quad	0x3fdfb835db39bbc0              # double 0.4956183091043691
	.quad	0x3fe971fde6504c7f              # double 0.79516501410616047
	.quad	0x3fcb57a25fefc190              # double 0.21361188587571833
	.quad	0x3fe21caa7f6b85c2              # double 0.56599926840515757
	.quad	0x3fde90d746682848              # double 0.47759038806600929
	.quad	0x3fe566b00225c781              # double 0.66878509921501472
	.quad	0x3fead6ffbaf40936              # double 0.838744988577935
	.quad	0x3fd19989e5e8b65a              # double 0.27499625637105896
	.quad	0x3fe1919f9079763c              # double 0.54902628152530708
	.quad	0x3fcdc09d1bf6f628              # double 0.23244060388053467
	.quad	0x3fd72218d903eece              # double 0.36145611946970468
	.quad	0x3fdfbdb3fe9dfe1e              # double 0.49595355858761703
	.quad	0x3fd211e429c99f78              # double 0.28234199601001064
	.quad	0x3fe1aea4b9ca0f0f              # double 0.55256878172846935
	.quad	0x3fae164570e2bd80              # double 0.058763666181557817
	.quad	0x3feaba12ae4ae7b3              # double 0.83521398583910977
	.quad	0x3fe5bcd8fbe7817b              # double 0.6793026847845306
	.quad	0x3fd619798cb9840e              # double 0.34530485861438442
	.quad	0x3fec192cc2b4c786              # double 0.87807310131596306
	.quad	0x3fe5f182e0eda296              # double 0.68573135310460276
	.quad	0x3feac073b2db6d03              # double 0.83599266942056294
	.quad	0x3fb63a920d08f518              # double 0.08683121507870728
	.quad	0x3fe1f2c3ae55e39c              # double 0.56088432359603102
	.quad	0x3fdf13715795b570              # double 0.48556169083788969
	.quad	0x3fe0fbda64a28b43              # double 0.53074378638516639
	.quad	0x3fdfa6cbf62578ca              # double 0.4945554641507327
	.quad	0x3fda0baf8bc9fe5e              # double 0.40696324015877916
	.quad	0x3fd9c02889cbc96a              # double 0.40235341507572875
	.quad	0x3fef5a1ec0a6cdae              # double 0.97975099208126948
	.quad	0x3fc9fddba51cc1bc              # double 0.2030596309864573
	.quad	0x3fb6e7af77c44db0              # double 0.089472738971656751
	.quad	0x3fe31e13e3aa0820              # double 0.59742159333859846
	.quad	0x3fc368eaf64b2088              # double 0.15163933778808691
	.quad	0x3fd382d6503d53f4              # double 0.30486066661734346
	.quad	0x3fea7469141ad934              # double 0.82671026159986249
	.quad	0x3fe160216355858f              # double 0.54298467065034284
	.quad	0x3fdd16378774ed26              # double 0.45448101261327378
	.quad	0x3fc510728c5e0808              # double 0.16456443647263108
	.quad	0x3fe3e6dbceaba67e              # double 0.62193098416646797
	.quad	0x3fe272365a1c38b8              # double 0.57644193267494526
	.quad	0x3fa26f6ce7c6c990              # double 0.036006358426123986
	.quad	0x3fe11c1f6ea7402d              # double 0.53468295680977962
	.quad	0x3fd809525b383428              # double 0.37556895168455862
	.quad	0x3fe965427c7e1c0d              # double 0.79361080470050782
	.quad	0x3fe4a0e1de0f6d80              # double 0.64463895198007037
	.quad	0x3fed2b16500b4b2b              # double 0.91150966294876434
	.quad	0x3fe9afc819cd0253              # double 0.80270772017690672
	.quad	0x3fb83b13ff862af0              # double 0.094651460536777198
	.quad	0x3fdee32d4d0f3b56              # double 0.48261578107206071
	.quad	0x3fe952d20ff41323              # double 0.79135993114377745
	.quad	0x3fd8c34fd44b6138              # double 0.38692088825111481
	.quad	0x3fd4b4170bfd2a4e              # double 0.32349182291787748
	.quad	0x3f9a2997631cd5e0              # double 0.025549283432345749
	.quad	0x3fdc4fc82c194968              # double 0.44236950212975623
	.quad	0x3fe615d71c3ac1d4              # double 0.69016604913309232
	.quad	0x3fd4062d9f7d6924              # double 0.31287708831009042
	.quad	0x3fe777e2ba57b44f              # double 0.73338447947538465
	.quad	0x3fd6e375b9ee8760              # double 0.35763304860494394
	.quad	0x3fe33fa4865115fc              # double 0.60151888116587271
	.quad	0x3fe44464f7abec01              # double 0.63334892629006856
	.quad	0x3fef4e3a415ec54f              # double 0.97829926269165834
	.quad	0x3fe35208983d8aac              # double 0.60376386389210301
	.quad	0x3fd20079c6364b32              # double 0.28127903324746051
	.quad	0x3fa55565eff16790              # double 0.041667161502757399
	.quad	0x3fd218059c5e73cc              # double 0.28271618147283273
	.quad	0x3fe110d860917d8f              # double 0.53330630169868865
	.quad	0x3fd7037586176498              # double 0.35958612532483292
	.quad	0x3fe7deb755b59f2c              # double 0.74593703022126112
	.quad	0x3f99609ffc8f9860              # double 0.024782657423110144
	.quad	0x3fe475bee89c75f6              # double 0.63937325889463525
	.quad	0x3fef8a0228984991              # double 0.98559673241315881
	.quad	0x3fea55967cab9688              # double 0.82294773435269608
	.quad	0x3fc2d0f73c30f630              # double 0.14700212897325704
	.quad	0x3fda2815027b4302              # double 0.40869641535122991
	.quad	0x3fe89bf3c8df9ecb              # double 0.76903714402302492
	.quad	0x3fe3f0bbeda5024c              # double 0.62313648619608264
	.quad	0x3fa8a65574e4c500              # double 0.048144026297800124
	.quad	0x3fd1f3c0593e71fc              # double 0.28050240245082114
	.quad	0x3fdccd693e7bd2d2              # double 0.45003729917452262
	.quad	0x3fe16dab914a623f              # double 0.54463747384131256
	.quad	0x3f955cbe47440340              # double 0.020861600017272552
	.quad	0x3fd8e6aad2a9d7a2              # double 0.38907881329157068
	.quad	0x3fd60788b63d045c              # double 0.34420984074319505
	.quad	0x3fed4cba318ea757              # double 0.91561612776898016
	.quad	0x3fc8170b2aebbf7c              # double 0.18820323558565721
	.quad	0x3fede3aad29ce953              # double 0.93404141555155673
	.quad	0x3fd7c9e8fb94e7cc              # double 0.37169861382028269
	.quad	0x3fd12d6c210eee76              # double 0.26839736202575837
	.quad	0x3fd44d3c2ee6b56c              # double 0.31721405582614781
	.quad	0x3fedeaee201932a9              # double 0.93492800015663591
	.quad	0x3fc22cb8d51d8f10              # double 0.14198980718639875
	.quad	0x3fc9e79aa62984b0              # double 0.20238049615276088
	.quad	0x3fda67a92ae70fec              # double 0.41257695378976567
	.quad	0x3fd92805d8a9c4f8              # double 0.39306780012618914
	.quad	0x3fe2b6351794ee31              # double 0.58474211316883473
	.quad	0x3fc670f63a1bbe9c              # double 0.17532232129405123
	.quad	0x3fd2eba13dfdc38c              # double 0.29563170484384993
	.quad	0x3febebab288502ac              # double 0.872518138065137
	.quad	0x3fbe9f7ceed43878              # double 0.11962109404359633
	.quad	0x3fa5caf0e0fbcac0              # double 0.042563941444219378
	.quad	0x3fdafa6c86411a86              # double 0.42153466330311351
	.quad	0x3fe2c8e19208c72a              # double 0.58702162287065573
	.quad	0x3fe73954ebf95978              # double 0.72574850166965543
	.quad	0x3fe8f2975edd9995              # double 0.7796131947368844
	.quad	0x3fea5fb4d07d4ce1              # double 0.82418289871784733
	.quad	0x3fee04b5ff2c3964              # double 0.93807506407192109
	.quad	0x3fbf5b93f4d37830              # double 0.12249111869047691
	.quad	0x3fb3b2e0f328e500              # double 0.076948222508594455
	.quad	0x3fe28c2f2a5d95a1              # double 0.57961233400844858
	.quad	0x3fd7d46f1782a026              # double 0.37234093948291258
	.quad	0x3fdb485383d8c8b8              # double 0.42628944278397851
	.quad	0x3fed53c27910cf71              # double 0.91647456784856562
	.quad	0x3fd3f87f66f0899e              # double 0.31204209377951908
	.quad	0x3fd5c0947f5f5bb4              # double 0.33987915457458517
	.quad	0x3fd9c67acd702fb4              # double 0.40273923933340972
	.quad	0x3fe06dff712f095c              # double 0.51342746835897968
	.quad	0x3fecb1822648c5c3              # double 0.89666850545307175
	.quad	0x3fe087d399237b58              # double 0.51658039007075285
	.quad	0x3feb95bd94c5213c              # double 0.8620288758911907
	.quad	0x3fec55d378527346              # double 0.88547681332020356
	.quad	0x3faff1d6c5a6e660              # double 0.062391959788737905
	.quad	0x3fe154805a52c9b8              # double 0.54156510964667515
	.quad	0x3fd8dd7f40cd07aa              # double 0.38851910904133524
	.quad	0x3fe48f6301dfdeb3              # double 0.6425032650576753
	.quad	0x3fe788ff3286af74              # double 0.73547325008756426
	.quad	0x3fe601ff35d53449              # double 0.68774376405929971
	.quad	0x3fd367b6881cd3e0              # double 0.30320514003989096
	.quad	0x3fe1cb8834f7aaae              # double 0.55609522195057592
	.quad	0x3fe25f0cf0e6d6b7              # double 0.57410285044780707
	.quad	0x3fe88077cccb251e              # double 0.76568212507951094
	.quad	0x3fde67d527b21f6e              # double 0.47508744122068591
	.quad	0x3fe39276a903fd20              # double 0.61162884722572031
	.quad	0x3fe57b7386212144              # double 0.67131973454619542
	.quad	0x3fb9ae123bacef20              # double 0.10031236607477156
	.quad	0x3fc4fe96477c46d4              # double 0.16401937952519197
	.quad	0x3fc336d4343b82a0              # double 0.15011074591077023
	.quad	0x3fdd7d46d2ea150c              # double 0.46077128026111391
	.quad	0x3fe720d9dd66a589              # double 0.72276013605476053
	.quad	0x3fe5c0f635b5a6f2              # double 0.67980490198280408
	.quad	0x3fd5b3b8b7370756              # double 0.33909433261952893
	.quad	0x3fbad6af70168038              # double 0.10483833776970719
	.quad	0x3fd9978663448c22              # double 0.39987334913365846
	.quad	0x3fed7afe5bc60d33              # double 0.92126386570490693
	.quad	0x3fefcba60b6dddb1              # double 0.99360944969423858
	.quad	0x3fee8797b3d58dd6              # double 0.95405182956568058
	.quad	0x3fe09f7fc0cb1f8c              # double 0.51947009711237646
	.quad	0x3fea1d3aefa96831              # double 0.81606814202246458
	.quad	0x3fb39b2c7096b8d0              # double 0.076586511123170497
	.quad	0x3fe0f8c0f974f47c              # double 0.53036545488397691
	.quad	0x3fccdbdcb2a6e704              # double 0.22545965884437902
	.quad	0x3fd9490b807c3c46              # double 0.39508330867187558
	.quad	0x3fe2a802138ea9b3              # double 0.58300880260258336
	.quad	0x3fe2a6ca6034d031              # double 0.58286017217915831
	.quad	0x3fda2516696aa546              # double 0.408513644166835
	.quad	0x3fd19c1fb46942d4              # double 0.27515404337195304
	.quad	0x3fdef55b91373f28              # double 0.4837254446147079
	.quad	0x3fe5f68289e7ba2c              # double 0.68634154257398938
	.quad	0x3feb4b9e1c4ae80d              # double 0.85298066640757642
	.quad	0x3fdb6c616098e6d4              # double 0.42849001344039306
	.quad	0x3fd4f3bc1e1ee848              # double 0.32737639371373861
	.quad	0x3fe132c395423435              # double 0.53744677688667386
	.quad	0x3fe5879379310186              # double 0.67279981298638414
	.quad	0x3fdd4c297c60187a              # double 0.45777356287033621
	.quad	0x3fb094b565591ee0              # double 0.064769112818904073
	.quad	0x3fe33da236936b3e              # double 0.60127363833758074
	.quad	0x3fe8a6e0c11ca1f2              # double 0.77037084309728088
	.quad	0x3fd2f7d88950c196              # double 0.29637730989181799
	.quad	0x3fd8cca888989808              # double 0.38749135341129248
	.quad	0x3fdc7110f0695d0e              # double 0.44440101125424369
	.quad	0x3feb507d8185cf8c              # double 0.85357547089960084
	.quad	0x3fec23e5ee7a0a0e              # double 0.87938210084422663
	.quad	0x3fdb91b3c22becf4              # double 0.43076795541828905
	.quad	0x3febb79b4ef3c0dd              # double 0.86616292400688233
	.quad	0x3fedba2f922a5113              # double 0.92897776172552182
	.quad	0x3fdb547026692fcc              # double 0.42702869177878422
	.quad	0x3fc3966eb60c04f4              # double 0.15302833451281794
	.quad	0x3fea11d15870d4e1              # double 0.81467501901229522
	.quad	0x3fe2f73cbffd1ec1              # double 0.59268033502390705
	.quad	0x3fe6fce7ec2277f8              # double 0.71837230796859242
	.quad	0x3fe439cd3a77c335              # double 0.63205586833473737
	.quad	0x3fe194992b70dbb8              # double 0.54938944325009853
	.quad	0x3feafcecada6f179              # double 0.84337457577161878
	.quad	0x3feabd762ba2c274              # double 0.8356276371251412
	.quad	0x3fe750690f85acd5              # double 0.72856572181390311
	.quad	0x3fe079cdc07decd0              # double 0.51486861797402561
	.quad	0x3fd8836dd824a5e6              # double 0.38302179439287298
	.quad	0x3fe578b357299e4e              # double 0.67098395370425989
	.quad	0x3fccbb847a9f55c0              # double 0.22447257983610136
	.quad	0x3fbd8dcfd56ead90              # double 0.11544512711286914
	.quad	0x3fecd1ba21a011d9              # double 0.90060144965587619
	.quad	0x3fe5d7ff95082a8e              # double 0.68261698825638617
	.quad	0x3fcfd31fc82622ec              # double 0.24863049767397827
	.quad	0x3fe08d29191c9c0c              # double 0.51723151116027699
	.quad	0x3fd59290afe41450              # double 0.33707062889908901
	.quad	0x3fe1e4ede0923f5d              # double 0.55919545995309827
	.quad	0x3fe44fa84bda1ed8              # double 0.63472380461549971
	.quad	0x3fd44f3236d9f108              # double 0.31733374935699077
	.quad	0x3fd5e8d406a7a496              # double 0.34233570718658635
	.quad	0x3fe4804da681b6a8              # double 0.64066202660406635
	.quad	0x3fb113afac3f8898              # double 0.066706637909677347
	.quad	0x3fe689721cb2921d              # double 0.70427804570187258
	.quad	0x3fd565a7ccbb372a              # double 0.33432955735485115
	.quad	0x3fd3b8c0d4aebc72              # double 0.3081514431932596
	.quad	0x3fa9263820d5eb20              # double 0.049119714744810361
	.quad	0x3fe8ae8ca6510019              # double 0.77130730136559855
	.quad	0x3fafa4fe24386c50              # double 0.061805669709621314
	.quad	0x3fe710a746132b9f              # double 0.72078288733006335
	.quad	0x3fc854f07ce20dd4              # double 0.19009214494518167
	.quad	0x3fda3a23621305ea              # double 0.40979847505158651
	.quad	0x3f6e99cede667d00              # double 0.0037354507832813022
	.quad	0x3fd7fcbde76054c0              # double 0.37480113597241527
	.quad	0x3fd787390e489da8              # double 0.36762834925544974
	.quad	0x3fe133b60b4d2d75              # double 0.53756239135093031
	.quad	0x3fe2f8298f916bff              # double 0.59279325523982596
	.quad	0x3fc67fb8c7e38338              # double 0.17577276001159148
	.quad	0x3fdfc4535289762e              # double 0.49635775623559908
	.quad	0x3fd5827af2f22002              # double 0.33608888364005918
	.quad	0x3fdc322892eba814              # double 0.44056143138607351
	.quad	0x3fdbe0d9540efdb4              # double 0.43559869011729835
	.quad	0x3fcdaddb9d32a03c              # double 0.23186822105094673
	.quad	0x3fd14cb8c541987a              # double 0.27030772460273733
	.quad	0x3fbd43aba16bfee0              # double 0.11431381884539915
	.quad	0x3fd391f5a176a0e4              # double 0.30578366058263229
	.quad	0x3fe3a7d24a95bc64              # double 0.61423601691593577
	.quad	0x3fdc162feaf444f2              # double 0.43885419792884683
	.quad	0x3fef54ade92f1f8d              # double 0.97908683341755564
	.quad	0x3fee6d0d06069ba6              # double 0.95081187416950708
	.quad	0x3fe8ec7f936d5915              # double 0.77886942667353998
	.quad	0x3fea689cc785774d              # double 0.82527007073415748
	.quad	0x3fe3a1adaca46a21              # double 0.61348613471210822
	.quad	0x3f9943f9619a9200              # double 0.024673363287222472
	.quad	0x3fe3fb643cf21689              # double 0.6244374456734515
	.quad	0x3fed4cadd68b0214              # double 0.91561023619584824
	.quad	0x3fdde30b950d5d38              # double 0.46698274188880218
	.quad	0x3fea4f04ab320287              # double 0.82214578091232304
	.quad	0x3fea8a88663c2156              # double 0.82941074340582577
	.quad	0x3fca7f9e7ad8dcc8              # double 0.20701962469477153
	.quad	0x3fcb754b8a5c1ce8              # double 0.21451706176615137
	.quad	0x3fe47bc51d9d13a4              # double 0.64010864051725891
	.quad	0x3fdf75e33f5a78e4              # double 0.49157029330116431
	.quad	0x3fd6cd0901718698              # double 0.35626435414278879
	.quad	0x3fefcbb5fd87dc9d              # double 0.993617053200882
	.quad	0x3fe0dcc6e21db9f6              # double 0.52695030368141604
	.quad	0x3fb7bdfd06aa6790              # double 0.092742742659906562
	.quad	0x3fef163bfe4b768e              # double 0.97146415392826824
	.quad	0x3fef2c717e0547d7              # double 0.97417521108058735
	.quad	0x3fa3a0d7aaf6ef60              # double 0.038336505527211129
	.quad	0x3fe8765e45a16035              # double 0.76444924926454993
	.quad	0x3fe3bbea292e22b7              # double 0.61668880503665136
	.quad	0x3fd07dd1ace312b0              # double 0.25767938502785181
	.quad	0x3fd4be0926060908              # double 0.32409886086692596
	.quad	0x3fe53743df1f376b              # double 0.66299623087409765
	.quad	0x3fd5490c37cc57f8              # double 0.33258347939533861
	.quad	0x3fceb5012d354e20              # double 0.23989882190163403
	.quad	0x3fcef3fc77a50a34              # double 0.24182086793924074
	.quad	0x3fc17535b77048b8              # double 0.13638946015323028
	.quad	0x3fc8ffe1c9dbfc4c              # double 0.19530889851009403
	.quad	0x3fee6702393d5283              # double 0.95007430247876845
	.quad	0x3fe642bd74a11eef              # double 0.69564698008704606
	.quad	0x3fe7cbad625c2191              # double 0.74361294947543588
	.quad	0x3fe1e95593626971              # double 0.55973318849582487
	.quad	0x3fc8a446f0294898              # double 0.19251333929657188
	.quad	0x3fc1ff616c4da178              # double 0.14060609615558994
	.quad	0x3fea6bb7777512e4              # double 0.82564900714404787
	.quad	0x3fc3d56639acd680              # double 0.15494993034524285
	.quad	0x3fe9fd3a9702c061              # double 0.81216172689711297
	.quad	0x3fd1c57a71b03028              # double 0.27767811872831993
	.quad	0x3fef8c5abf28e250              # double 0.98588311515693228
	.quad	0x3feaadc27595546c              # double 0.83371088948719096
	.quad	0x3feae8764a53c4dc              # double 0.84087671772990857
	.quad	0x3fe1cfec3965b7f3              # double 0.55663119516770931
	.quad	0x3fe80fb4aec16137              # double 0.75191721088325536
	.quad	0x3fe7435bebe898c7              # double 0.72697254253287091
	.quad	0x3fedfefc1080dd9a              # double 0.93737605307881045
	.quad	0x3fea66d068a665d9              # double 0.82505054892970542
	.quad	0x3fe2fd7b427ed935              # double 0.59344256389048289
	.quad	0x3fe70b1ccbdaf0e9              # double 0.72010650458790082
	.quad	0x3fdfe5833371272e              # double 0.49838333152421199
	.quad	0x3fe7a98eb68ffa23              # double 0.73944793373795326
	.quad	0x3fc5533bb24ff460              # double 0.16660257536560419
	.quad	0x3fdc5bf48e93cf5a              # double 0.4431125061375859
	.quad	0x3fdc315f5dae8f04              # double 0.44051345966930477
	.quad	0x3fa9ad5407da4e50              # double 0.050150514563168103
	.quad	0x3fe7700b90e55543              # double 0.7324273900982593
	.quad	0x3fe3b05238f0ba48              # double 0.61527358170662527
	.quad	0x3fe2a73ff46c62ee              # double 0.58291623820249838
	.quad	0x3fe3c1c1c1d2e864              # double 0.61740196090910304
	.quad	0x3fe4c11a9bcef9fd              # double 0.64857225829456377
	.quad	0x3fef5efff60e09d3              # double 0.98034666116319113
	.quad	0x3fc2741431290860              # double 0.14416744614033217
	.quad	0x3feb9f702ffa1f83              # double 0.86321267481342578
	.quad	0x3feb080881028626              # double 0.84473061749685452
	.quad	0x3fed3530e8b0d522              # double 0.91274304816639451
	.quad	0x3fcbb1c94c5c96cc              # double 0.21636310795400104
	.quad	0x3fc9a18a91b99c80              # double 0.20024234881859471
	.quad	0x3fdd607b3d04c05e              # double 0.45901375731319216
	.quad	0x3feb210397eef3b7              # double 0.84778003382199685
	.quad	0x3fd8f2b7502151ca              # double 0.38981421303949715
	.quad	0x3fe0ea0b7c942939              # double 0.52856993037975208
	.quad	0x3fe5a40847d50282              # double 0.67627347974492147
	.quad	0x3fd516ae75aa7f1e              # double 0.32950936785526774
	.quad	0x3fe96e4e25f9942f              # double 0.79471499840713544
	.quad	0x3fea83b32b146dc6              # double 0.82857664503119888
	.quad	0x3feeedf2ad5669e6              # double 0.96654638152113814
	.quad	0x3fea0081a520774f              # double 0.81256181956607942
	.quad	0x3fe77c0391708761              # double 0.7338884201637762
	.quad	0x3fd69be9c40dcfb2              # double 0.35326618333715054
	.quad	0x3fe0f644e4113efd              # double 0.53006214661033335
	.quad	0x3fd911a9202c8074              # double 0.39170292036033705
	.quad	0x3fd46df032e2471a              # double 0.31921009987955673
	.quad	0x3fe61bc649d09c8e              # double 0.69089044968576885
	.quad	0x3fe1dd3ea514b097              # double 0.55825741045329635
	.quad	0x3fe179178a9a63a0              # double 0.54603173323549825
	.quad	0x3f8c002523598440              # double 0.013672151700293012
	.quad	0x3fd81a15ccb034a4              # double 0.37659211148349869
	.quad	0x3f86ed96c56fe540              # double 0.011195352459241747
	.quad	0x3fee8166fcda500b              # double 0.95329617867764804
	.quad	0x3fe8b16f1f3d2d3d              # double 0.77165943242417934
	.quad	0x3fdd7cf9c86fb58e              # double 0.46075291227210691
	.quad	0x3fdb574249323f72              # double 0.4272008623893192
	.quad	0x3fe155e53e061acc              # double 0.54173528780014513
	.quad	0x3fe7c186ddb5ed4d              # double 0.74237387945997002
	.quad	0x3fe523635ad5baeb              # double 0.66056983700931704
	.quad	0x3fecb766bae4249f              # double 0.89738785268959365
	.quad	0x3fcd72fcc99d6760              # double 0.23007163853145141
	.quad	0x3fdd1dbc634eaa2a              # double 0.4549399347112365
	.quad	0x3fe05bb871664bfa              # double 0.5111963476978183
	.quad	0x3fe9b4fb1f70770a              # double 0.80334240093699916
	.quad	0x3fe37c237683317d              # double 0.60890362879722171
	.quad	0x3fb0d68f2427ca10              # double 0.065773912741669216
	.quad	0x3f9a7b2efa9ed220              # double 0.02586053280511369
	.quad	0x3fc9750ef34b277c              # double 0.19888483886307629
	.quad	0x3f8d5445f94c7c00              # double 0.014320894880766488
	.quad	0x3fd9e570ef240824              # double 0.40462897637928763
	.quad	0x3fe24434904f7694              # double 0.5708258455812989
	.quad	0x3fecf930128b9d45              # double 0.90541843053953441
	.quad	0x3fe6a06d639bfc22              # double 0.70708341078705339
	.quad	0x3fe8fcf40cd88402              # double 0.78087809094370209
	.quad	0x3fe0f041f7e9c93c              # double 0.52932833118965261
	.quad	0x3fb2e9fccb8b45e8              # double 0.073882865613334681
	.quad	0x3fe659401acd41c2              # double 0.69839482531283914
	.quad	0x3fc62e61c247eef4              # double 0.17329046236397228
	.quad	0x3feaaa416cb57953              # double 0.83328315002635589
	.quad	0x3fefc70aa66d0c9a              # double 0.99304707055161434
	.quad	0x3fd130125655b28a              # double 0.26855905943993064
	.quad	0x3fa9bfc95aac0d30              # double 0.050291340177887611
	.quad	0x3fe3574e8910ef0d              # double 0.60440756579143484
	.quad	0x3feba6464bcffb73              # double 0.86404719168773025
	.quad	0x3fe2be018eac293e              # double 0.58569410196040628
	.quad	0x3fe6a4516956a8d3              # double 0.70755835126808575
	.quad	0x3fdf03afe42c2c6e              # double 0.48460004122234224
	.quad	0x3fd94f9e72ab5192              # double 0.39548455427327511
	.quad	0x3feb4500e84a56ae              # double 0.85217328423705907
	.quad	0x3fefafb22b40efcd              # double 0.9901972622678784
	.quad	0x3fdef8926f806782              # double 0.48392163170648683
	.quad	0x3f915d16e88186e0              # double 0.016956670704877719
	.quad	0x3fd65ab6f8a48ace              # double 0.34928678781049605
	.quad	0x3fde3016970d5c2a              # double 0.47168507338705246
	.quad	0x3fe0d382612b7dd2              # double 0.52581900576108809
	.quad	0x3fe62ded35e72e9e              # double 0.6931062748712582
	.quad	0x3fdb2102425d9304              # double 0.42388969880111937
	.quad	0x3fcfe59512dfe5bc              # double 0.24919379636393824
	.quad	0x3fe9d580cf11becd              # double 0.80731239741541005
	.quad	0x3fe6fc1fe80da07d              # double 0.71827693293472772
	.quad	0x3feac4048e176edc              # double 0.83642795326474184
	.quad	0x3fdf4983c559a506              # double 0.48886198303678474
	.quad	0x3fa6c2037590dd20              # double 0.044448955632498732
	.quad	0x3fa3b25583e88060              # double 0.038469955780102039
	.quad	0x3fe0eb1a7b82792f              # double 0.52869915125828537
	.quad	0x3fa5993a194558f0              # double 0.042184653839898334
	.quad	0x3fea906ef712ebcb              # double 0.83013103729842308
	.quad	0x3f8a2e1314723180              # double 0.012783192693199608
	.quad	0x3fdac17e02ee3c52              # double 0.41805982862655811
	.quad	0x3fd55d875f77afda              # double 0.33383354495049178
	.quad	0x3fce0ca58f1bcf4c              # double 0.23476094711042561
	.quad	0x3fdd0aca5cd6d696              # double 0.45378359857873229
	.quad	0x3fed956d83beae24              # double 0.92449069720664001
	.quad	0x3fc3afeb4075e944              # double 0.15380612037172103
	.quad	0x3fe2ddcbec6ca2e9              # double 0.58957477738030406
	.quad	0x3fe77c5aeaaab833              # double 0.73393007119535125
	.quad	0x3fec7f0dd6dcd2c3              # double 0.89050952878331946
	.quad	0x3fcb32fc4fc411bc              # double 0.21249345679110643
	.quad	0x3fe27e4d8fafcd69              # double 0.57791784347356867
	.quad	0x3fa91b9276840c90              # double 0.049038483588469295
	.quad	0x3fd45681dacf0bc6              # double 0.31777998321575429
	.quad	0x3fc5401f1105c8b4              # double 0.16601932841473899
	.quad	0x3fd92d5c5771b1ec              # double 0.39339359797921136
	.quad	0x3fe51e0bb6f2e104              # double 0.65991769535233447
	.quad	0x3fed66e66ddae53c              # double 0.91881104904238197
	.quad	0x3fe3d98c6f22c43e              # double 0.6203062220212201
	.quad	0x3fd44e278fc1fc38              # double 0.31727017439692728
	.quad	0x3fea1201e1e1031b              # double 0.81469816319449551
	.quad	0x3fd2fef876fb6574              # double 0.29681216830575541
	.quad	0x3fee52c8f73327d9              # double 0.94760559350219886
	.quad	0x3feeb250d95d08d0              # double 0.95926706746856816
	.quad	0x3fc99125727dc688              # double 0.19974201288600946
	.quad	0x3fd435fd57c04474              # double 0.3157952649062914
	.quad	0x3fc4c0f9cbaf04b8              # double 0.16213915296069614
	.quad	0x3fd06491dc537b26              # double 0.25613829151363843
	.quad	0x3fecc797e2c635bb              # double 0.89936441699835912
	.quad	0x3fc0ec583f19b840              # double 0.13221266823842548
	.quad	0x3fd43696a4617d14              # double 0.31583181431592888
	.quad	0x3fe128eeb34a9301              # double 0.53624663369973302
	.quad	0x3fef4d45300094a0              # double 0.97818240523760735
	.quad	0x3fc8b36b81fc0b20              # double 0.19297546240712737
	.quad	0x3fe8c8da99619c67              # double 0.77451829869540922
	.quad	0x3fca846e23ebce60              # double 0.20716645006142453
	.quad	0x3fe6d13bb2bffa26              # double 0.7130411616524881
	.quad	0x3fec71821cf35ee4              # double 0.88885598806788523
	.quad	0x3fe7f8db2a750cd1              # double 0.74912794392039406
	.quad	0x3fb9870381a13358              # double 0.099716395519135914
	.quad	0x3fe21e861b3085c0              # double 0.56622605619866562
	.quad	0x3fd16abd9b007286              # double 0.27213993203057674
	.quad	0x3fedc76f52037dc3              # double 0.93059507387436502
	.quad	0x3fe6f917f4d4226d              # double 0.71790693109603654
	.quad	0x3feeaca184b86d18              # double 0.95857311174350723
	.quad	0x3fece335f62adfac              # double 0.90273569182953883
	.quad	0x3fc7bcef3cd50e98              # double 0.18545332403492831
	.quad	0x3fe0b7e7294d2e90              # double 0.52244909350106816
	.quad	0x3fd3c010ed245e90              # double 0.30859778555302686
	.quad	0x3fe8b67f3ee66d30              # double 0.7722774723546646
	.quad	0x3fdf83eb58984db2              # double 0.49242671634530233
	.quad	0x3fd1c9faf7c54bbe              # double 0.27795290180545951
	.quad	0x3fefa6148d494781              # double 0.98902347178430727
	.quad	0x3fdb7953d86bf05e              # double 0.4292802442066711
	.quad	0x3f9301ea00cd45a0              # double 0.018561989115658428
	.quad	0x3fcf3dd8a1443484              # double 0.24407489656769965
	.quad	0x3fd1b7cc9953d4aa              # double 0.27684321378121501
	.quad	0x3fe08844d2d956d0              # double 0.51663438016358931
	.quad	0x3fc276cd6c59942c              # double 0.14425056257746982
	.quad	0x3f91c17ca8baaaa0              # double 0.017339656637583745
	.quad	0x3fd05442977acd88              # double 0.25514282982768366
	.quad	0x3fe0602f85b40810              # double 0.51174141038814192
	.quad	0x3fe3d291b63446bb              # double 0.61945424639471669
	.quad	0x3fc831d1f14e9e40              # double 0.18902038843701696
	.quad	0x3fe297e51f6df8e6              # double 0.58104187143888164
	.quad	0x3fda23368ce3046c              # double 0.40839923628306596
	.quad	0x3fc8d6e129b4a358              # double 0.19405760322959043
	.quad	0x3feb9e8c94f157ff              # double 0.86310414400463731
	.quad	0x3fe9c6ff7cbe8684              # double 0.80554174770459541
	.quad	0x3fcc043be3b9baf8              # double 0.21887920970353725
	.quad	0x3fd6687fb16c057a              # double 0.35012810064662114
	.quad	0x3fc4c32a6117a5bc              # double 0.16220597973669537
	.quad	0x3fde5606e5714fd2              # double 0.47400066763407012
	.quad	0x3feb42be4acbd099              # double 0.85189737900374773
	.quad	0x3fe23b5c07518048              # double 0.56974603108756927
	.quad	0x3fd9122fef69cdce              # double 0.39173506145672554
	.quad	0x3fd588c07fe6708a              # double 0.33647167673348888
	.quad	0x3fd11988e852a1be              # double 0.26718352020045788
	.quad	0x3fe59d022864d541              # double 0.67541606797627918
	.quad	0x3fd3b45c5e7b0d00              # double 0.30788335062625549
	.quad	0x3fb0bae975c56038              # double 0.065352050068555267
	.quad	0x3fdc70f53474a850              # double 0.44439439890505117
	.quad	0x3fe3f4421dec70ae              # double 0.62356668323947928
	.quad	0x3fe8049b28e85054              # double 0.75056226720563268
	.quad	0x3fecd6906ef13144              # double 0.90119191807165366
	.quad	0x3fdcf4829cd7bf5c              # double 0.45242371861148967
	.quad	0x3f9de11a85ca6da0              # double 0.029179014602602416
	.quad	0x3fcf31a3c1ee854c              # double 0.24370238274881684
	.quad	0x3fe896d40ef43acd              # double 0.76841166420657603
	.quad	0x3fc2f9b1e2d0c904              # double 0.14824508261660452
	.quad	0x3fe6e7fd8feeb6a7              # double 0.71581915008365093
	.quad	0x3fc85c1e86734210              # double 0.19031125607445221
	.quad	0x3fd31a3962ce7b6a              # double 0.29847559594229855
	.quad	0x3fb88f3559d878f0              # double 0.095935186800918392
	.quad	0x3feaaa7b53710987              # double 0.83331075951746036
	.quad	0x3fe1fc86b66fc874              # double 0.56207595474394489
	.quad	0x3febdae178400892              # double 0.87046884046891848
	.quad	0x3fca857d2199be90              # double 0.20719875469830074
	.quad	0x3feb66b5ab309bf7              # double 0.85628779826663404
	.quad	0x3fdf2dfb27a14ef8              # double 0.4871814620030217
	.quad	0x3fe35d95c14ba031              # double 0.6051739478398358
	.quad	0x3fd3f3e1605dd7f4              # double 0.31176027689741592
	.quad	0x3fefa88c5a393d11              # double 0.98932473775667706
	.quad	0x3fdc7ace3c8f0044              # double 0.44499545968938414
	.quad	0x3fce0148999ad0dc              # double 0.23441417217475802
	.quad	0x3fcba294ace39da0              # double 0.21589907113887552
	.quad	0x3fe2beeea37a957a              # double 0.58580715112172688
	.quad	0x3fda11d4030f7cee              # double 0.40733814524533229
	.quad	0x3feb438de217d504              # double 0.85199636610801166
	.quad	0x3fdda41c41289724              # double 0.46314150202884918
	.quad	0x3fd7fa2c6482b8ac              # double 0.37464437308779952
	.quad	0x3feb179dcea18fef              # double 0.84663286550175865
	.quad	0x3fed15bb63efe27e              # double 0.90890283125834492
	.quad	0x3fd0a172b264007a              # double 0.25985400601349051
	.quad	0x3fe8aca56874c6b0              # double 0.77107496644585716
	.quad	0x3fe6834c180fd1bb              # double 0.70352749538010728
	.quad	0x3fcbc8c96c589178              # double 0.21706502714472342
	.quad	0x3fbafc294ae10680              # double 0.10541017606831282
	.quad	0x3fefcf16a824ac36              # double 0.99402935829619454
	.quad	0x3fa48b3c61842d80              # double 0.040124785331580703
	.quad	0x3fcc0b0f48492128              # double 0.21908751515935276
	.quad	0x3fef6bee41edea7a              # double 0.98192513348415322
	.quad	0x3fee95791a88ed82              # double 0.95574622328369707
	.quad	0x3fe2d16ad3aa71b2              # double 0.58806363430954023
	.quad	0x3fcd3ff6ecee6458              # double 0.22851454323680076
	.quad	0x3fd16de66f92f566              # double 0.27233277221588137
	.quad	0x3fed81a296b92881              # double 0.92207459867610464
	.quad	0x3f8136d334c39240              # double 0.008405351684310891
	.quad	0x3fcf94fb6d2b2610              # double 0.24673407392974456
	.quad	0x3fca40ceb6a3e414              # double 0.20510276716211762
	.quad	0x3fd7af1ef07ee52e              # double 0.37006352888018312
	.quad	0x3fef232e0ee4566a              # double 0.9730444231851838
	.quad	0x3fdbf23271119312              # double 0.43665753404484164
	.quad	0x3f7412df3ce0b580              # double 0.0049008102633200101
	.quad	0x3fc7f0e097a4d8ec              # double 0.18703849224556934
	.quad	0x3fda80a9684ac166              # double 0.41410288986937471
	.quad	0x3fefbad56d931071              # double 0.99155684853805159
	.quad	0x3fe7bef5a2d80e46              # double 0.74206048779928646
	.quad	0x3fe2a7137daf0096              # double 0.58289503619745875
	.quad	0x3fe0709024a556af              # double 0.51374060780900332
	.quad	0x3fe3c72c34e5d77d              # double 0.61806307155232754
	.quad	0x3fd550ca72104f3e              # double 0.33305607928308578
	.quad	0x3feddf46ba2070bd              # double 0.93350540497660683
	.quad	0x3fe8bae331371d3a              # double 0.77281341183053276
	.quad	0x3fea456cc675ca5f              # double 0.82097471963636426
	.quad	0x3fe2a2498d5bff40              # double 0.58231046303988165
	.quad	0x3fd3ea9f2b4b4a74              # double 0.31119517543735431
	.quad	0x3fced58ef195025c              # double 0.24089228435515764
	.quad	0x3fe8fed10b6ab8d3              # double 0.78110553960666562
	.quad	0x3fcd617694243678              # double 0.22953684075803316
	.quad	0x3fe297b4693341d9              # double 0.58101864382666257
	.quad	0x3fec0753e3e777f1              # double 0.87589449417623488
	.quad	0x3fea0cd71597bca6              # double 0.81406740395859312
	.quad	0x3fecdbb4a785af76              # double 0.90181954116040575
	.quad	0x3fecb804b2d6963f              # double 0.89746317796079456
	.quad	0x3fd5021ae8be5f6a              # double 0.32825348595496584
	.quad	0x3fe97ba9f5d4b6c7              # double 0.79634569181299575
	.quad	0x3fe9da24fd829669              # double 0.80787896646206747
	.quad	0x3fdaf72806e199bc              # double 0.42133522674557944
	.quad	0x3f7c13b8a4a48300              # double 0.0068547451612921417
	.quad	0x3fdd62d82784ba60              # double 0.4591579805300281
	.quad	0x3fd7972677f70282              # double 0.36860048022575864
	.quad	0x3fed2d76c0fbcad5              # double 0.91179979030706682
	.quad	0x3fd73b04eed3ecda              # double 0.36297725031881856
	.quad	0x3fe5f59926586b9d              # double 0.68623025407156357
	.quad	0x3fed5e48525766ff              # double 0.9177590950232285
	.quad	0x3fe14f68e0c3fef9              # double 0.54094356441052505
	.quad	0x3fe3dc39e92b2b7a              # double 0.6206330827784392
	.quad	0x3fc52d946c89dd90              # double 0.16545348453267339
	.quad	0x3fee43073c787eb6              # double 0.94568216143303263
	.quad	0x3fd0e70defb3a08c              # double 0.26410244377485337
	.quad	0x3fddcb39fa229e80              # double 0.46552895953434614
	.quad	0x3fe044c10b36247a              # double 0.50839283170456828
	.quad	0x3fe29211f3e1f614              # double 0.58033082612354514
	.quad	0x3feaafc11cef1f69              # double 0.83395438815294398
	.quad	0x3fea416f6dfeea8a              # double 0.82048770412014105
	.quad	0x3fd9d090b7bb3452              # double 0.40335481588846733
	.quad	0x3fe4ef6dfa2d31b8              # double 0.65422724592786263
	.quad	0x3fce694789378358              # double 0.23758787345925714
	.quad	0x3fe001266aa67934              # double 0.5001403887761513
	.quad	0x3f66e81273062200              # double 0.0027962074602252418
	.quad	0x3feab02eac47bf23              # double 0.83400663040626843
	.quad	0x3fe41aaa0a11163e              # double 0.62825490919266946
	.quad	0x3fc8ffc959535090              # double 0.19530598508447783
	.quad	0x3fe54af25bcf2f1f              # double 0.66539876872545622
	.quad	0x3fe5453b7ca8d6e4              # double 0.66470121715130093
	.quad	0x3fc3a1d536382a50              # double 0.15337624690467289
	.quad	0x3feb3511ccfa7aff              # double 0.85022821459628506
	.quad	0x3fecb3f28591bcb1              # double 0.89696622932196679
	.quad	0x3fe479f3b34efd39              # double 0.63988671323014679
	.quad	0x3fd75cdb745c4680              # double 0.36504255641293781
	.quad	0x3fbf28de6b0ad8f8              # double 0.12171735871638478
	.quad	0x3fb4aceb2c351b30              # double 0.080763529103120346
	.quad	0x3fac29518082d7d0              # double 0.055002734124556363
	.quad	0x3fd67219b8b7e292              # double 0.35071414030930115
	.quad	0x3fed2fbdb9fde9b0              # double 0.91207777334721207
	.quad	0x3fe117692e6e3e12              # double 0.53410777157290767
	.quad	0x3fbb1aad6e4ffaa0              # double 0.10587581580328242
	.quad	0x3fd925979313728c              # double 0.39291943896186221
	.quad	0x3fed682b41dbd0a2              # double 0.91896593916910185
	.quad	0x3fe3b4cd4f15a1ab              # double 0.61582055517378842
	.quad	0x3fe40c6e570621e7              # double 0.62651745793214964
	.quad	0x3fba76b67906b890              # double 0.10337391333334467
	.quad	0x3fe812133c78c2a2              # double 0.75220643816836152
	.quad	0x3fe654c2b713d48a              # double 0.69784675366703763
	.quad	0x3fd1f99e87bb9de8              # double 0.28086055045284164
	.quad	0x3f913ebb7097eba0              # double 0.016840866801412724
	.quad	0x3fd18df11433bab2              # double 0.27428843472345499
	.quad	0x3fd7f67bc6c30fd8              # double 0.37441915903423029
	.quad	0x3fc8a2c5f10ee9b8              # double 0.19246744413778827
	.quad	0x3fe1ccf5ebf3f163              # double 0.55626960835028816
	.quad	0x3fd5bf7fdbf7ae12              # double 0.33981319886399419
	.quad	0x3febbd89b9058b2f              # double 0.86688696038286206
	.quad	0x3fb96e6f085c0500              # double 0.099341334858781493
	.quad	0x3feefac9ec76762c              # double 0.96811386283997569
	.quad	0x3fdf3ce20fdf218a              # double 0.48809100675546147
	.quad	0x3fe637145b6cda5f              # double 0.69422357422338254
	.quad	0x3fd5e7d8e8e63964              # double 0.34227583641122394
	.quad	0x3fceca355ce1ad38              # double 0.24054591212493803
	.quad	0x3fe06fd623991c9a              # double 0.51365191414597011
	.quad	0x3fea594946652e49              # double 0.8233991980463965
	.quad	0x3fa017913f3c1490              # double 0.031429804772451608
	.quad	0x3fec615c62cb4eb2              # double 0.88688487334953536
	.quad	0x3fec79a972abc975              # double 0.88985130688369785
	.quad	0x3fe44809602ed220              # double 0.63379353318902432
	.quad	0x3feaf0d949b0c8b9              # double 0.84190048592269939
	.quad	0x3fb1038e715f6fb0              # double 0.066460516623407129
	.quad	0x3fee8b844a6f2708              # double 0.95453085458686448
	.quad	0x3fe00a7dff412c24              # double 0.50128078321848024
	.quad	0x3fdb9ba98a8f8f7c              # double 0.43137587100340347
	.quad	0x3fc183cdde170fd4              # double 0.13683484405748791
	.quad	0x3fc59122adb14a1c              # double 0.16849168282586013
	.quad	0x3fd6186f4f532f22              # double 0.34524138208938571
	.quad	0x3fa973086833d5e0              # double 0.049705755920438355
	.quad	0x3fb340d5e92231f0              # double 0.075208062569977363
	.quad	0x3fe776ae1d66c2aa              # double 0.73323732130491703
	.quad	0x3f905824b59e22c0              # double 0.015961240372720509
	.quad	0x3fe3f73539f96fde              # double 0.62392674754255117
	.quad	0x3fdd28edfdb43b02              # double 0.45562314773353318
	.quad	0x3fd502bbde749aa6              # double 0.32829186176460678
	.quad	0x3fd159bc0b540c32              # double 0.27110196214943294
	.quad	0x3fe7776a668cf634              # double 0.73332710294170633
	.quad	0x3fe14bc63880da3c              # double 0.54049979244047774
	.quad	0x3feff9a511b726ae              # double 0.99922421894117064
	.quad	0x3feb470cfbe93403              # double 0.85242318345410728
	.quad	0x3fca210061cef01c              # double 0.20413212562368777
	.quad	0x3fe6211a2f0f8e82              # double 0.69154080573612497
	.quad	0x3fdcc79eabbcee08              # double 0.44968382617273095
	.quad	0x3fb24eafe18daac0              # double 0.071513168875450894
	.quad	0x3fe6fccf0656554d              # double 0.71836043584577569
	.quad	0x3feee15048137587              # double 0.96500410153719051
	.quad	0x3fdb9b79503a2ba8              # double 0.43136437258425042
	.quad	0x3fc578ed6c022d64              # double 0.16775291227200306
	.quad	0x3feb0136e0a9eabe              # double 0.84389823798786501
	.quad	0x3fc4c98aec76966c              # double 0.16240059419685637
	.quad	0x3feb85243f15bcbf              # double 0.86000263520499931
	.quad	0x3fe298235267bd1b              # double 0.58107153029223768
	.quad	0x3fdef5cd197e736c              # double 0.48375251283305576
	.quad	0x3fd7ebfa76acd206              # double 0.37377797688830616
	.quad	0x3fe44b4d1c897358              # double 0.63419204305283028
	.quad	0x3fe62981eebab4f5              # double 0.69256683947392494
	.quad	0x3fe6ae63fbd69fd6              # double 0.70878791033919231
	.quad	0x3feae94c413db265              # double 0.84097874395736183
	.quad	0x3fdf4813c060aef4              # double 0.48877424036866945
	.quad	0x3fc0b740f2befcb0              # double 0.13059245922884122
	.quad	0x3f90d08d38417180              # double 0.016420561369487441
	.quad	0x3fe6ab7ed6d57376              # double 0.7084345050785561
	.quad	0x3fe1edb0f8415de6              # double 0.56026504981394676
	.quad	0x3fee1f45b440f102              # double 0.94131741720005402
	.quad	0x3fe4bc31d3dc7510              # double 0.64797297839291623
	.quad	0x3fd5e7d40d279464              # double 0.34227467808370293
	.quad	0x3fef888282cac87e              # double 0.98541379494987758
	.quad	0x3fef09f9da37ada5              # double 0.96996777172664805
	.quad	0x3fd68faa9cc15c30              # double 0.35251870449195888
	.quad	0x3fef15962d5cb568              # double 0.97138508662980616
	.quad	0x3fe593a2a0a6b40a              # double 0.67427188279327877
	.quad	0x3fd8fc6d8303dadc              # double 0.39040696901740346
	.quad	0x3fed0b92765c167d              # double 0.90766261212475252
	.quad	0x3fd5b6f20abb7df0              # double 0.33929110572896004
	.quad	0x3fc4c39edbcbe5f8              # double 0.16221986515283482
	.quad	0x3fe96b9012a204e7              # double 0.7943802226947384
	.quad	0x3fc0fd0526a6f5cc              # double 0.1327215613109004
	.quad	0x3fc2e4a854032034              # double 0.14760307409437845
	.quad	0x3fef417e4031a722              # double 0.97674477136499527
	.quad	0x3febb1ea76686fb4              # double 0.86546824575952152
	.quad	0x3fdfce91d7de4c2e              # double 0.49698301392453714
	.quad	0x3fe779e40d41c22a              # double 0.73362925137741297
	.quad	0x3f93711c32704980              # double 0.018986168459443231
	.quad	0x3fe6826b1b7cff60              # double 0.7034202134018237
	.quad	0x3fb9aad4911f1b60              # double 0.1002629141140523
	.quad	0x3fbcd514a87680c8              # double 0.11262635338653404
	.quad	0x3fb794b7770eedc0              # double 0.092112986151668075
	.quad	0x3fd1d71c972df49c              # double 0.27875437511085877
	.quad	0x3fdd484c1b095476              # double 0.4575376762416633
	.quad	0x3fe1e4066b0ec4aa              # double 0.55908509168343312
	.quad	0x3fe670f752c15b78              # double 0.70128980792183793
	.quad	0x3fc45a5076dd0ab0              # double 0.15900617412451856
	.quad	0x3fe5fa0d9a8fe1fd              # double 0.68677406490229453
	.quad	0x3fc6f4a59f54ad80              # double 0.17934103278944846
	.quad	0x3fefeb9d62fa5e9d              # double 0.99751157123224098
	.quad	0x3fe73423734591e5              # double 0.72511456026091692
	.quad	0x3fdcd75f60ee5246              # double 0.45064529863273994
	.quad	0x3fe42f03bd35e874              # double 0.63073908763114028
	.quad	0x3fed47360c5e28fc              # double 0.91494276443088962
	.quad	0x3fc72bdbbc818bb0              # double 0.18102595047375081
	.quad	0x3fd152ccd4f1c92c              # double 0.27067871852263425
	.quad	0x3fe9794ddddac528              # double 0.7960576375100219
	.quad	0x3fd279a07aa837ce              # double 0.28867351511223382
	.quad	0x3fe33d8c2479ede5              # double 0.60126311420702605
	.quad	0x3fdb72012a82846e              # double 0.42883328582144642
	.quad	0x3fe46de2eeda9c8e              # double 0.63841387416040773
	.quad	0x3fefd758f03eddf3              # double 0.99503752634967523
	.quad	0x3fe414ca5e767a8c              # double 0.62753790330664705
	.quad	0x3fd4dcd4facaad3e              # double 0.32597851268174682
	.quad	0x3fb7907e2a96a3a0              # double 0.092048535726134251
	.quad	0x3f9a5ff7b3d595c0              # double 0.025756712294784156
	.quad	0x3fe81f31bf1865fd              # double 0.75380790065099712
	.quad	0x3fefc58a052ffe43              # double 0.99286366475275433
	.quad	0x3fbd04cab30c4c28              # double 0.11335436698236434
	.quad	0x3fb9320d7c05b448              # double 0.098419993189694854
	.quad	0x3fddbf3f6e006058              # double 0.46479783766108573
	.quad	0x3feff26d4b5d229b              # double 0.99834313125127793
	.quad	0x3fbbbb993da0f338              # double 0.10833127741439064
	.quad	0x3fdeffc666d81bfa              # double 0.48436126750351571
	.quad	0x3fe6e25592d4095b              # double 0.71512869527240797
	.quad	0x3fee17b5d8b91e6a              # double 0.94039432839140358
	.quad	0x3fee645f8f06f491              # double 0.94975259718889238
	.quad	0x3fcabb1dedfcb1b0              # double 0.20883535500014494
	.quad	0x3fd6f3a237f6da2a              # double 0.35862021889934914
	.quad	0x3fcc872a71a396fc              # double 0.22287493275432968
	.quad	0x3fe8aaadf72aeb22              # double 0.7708349063389941
	.quad	0x3fd248e12dfc59d2              # double 0.28569821825786079
	.quad	0x3feab54b2fdfb725              # double 0.83463057852143108
	.quad	0x3fd304780f440f4a              # double 0.29714776507193064
	.quad	0x3fc760ecfca50cdc              # double 0.18264543853920301
	.quad	0x3fe1acfb595b1447              # double 0.55236594631481573
	.quad	0x3fef77c1e65a04ac              # double 0.98336882582238649
	.quad	0x3fab76527463b5c0              # double 0.053637100894643464
	.quad	0x3fe829e22bf1556c              # double 0.75511272985992894
	.quad	0x3feb81ed27c473d1              # double 0.85961015479153435
	.quad	0x3fe240ba541c56de              # double 0.57040134837981404
	.quad	0x3fe4df65960828d1              # double 0.65227011969661863
	.quad	0x3fe3436dd2b7baf0              # double 0.60198107868003881
	.quad	0x3fe7fe57f2a2bb5a              # double 0.74979779615191977
	.quad	0x3fe296d51d83a26e              # double 0.58091216816417357
	.quad	0x3fd35bd5e8d55d76              # double 0.30248019921915359
	.quad	0x3fe2875b1a9c321d              # double 0.57902293393414406
	.quad	0x3fb0df63d5be5fd8              # double 0.065908660586841861
	.quad	0x3fe12a7a78f3ae55              # double 0.5364353525487312
	.quad	0x3fe43c13d8f7ca84              # double 0.63233368279027546
	.quad	0x3fe248b2514d76d5              # double 0.57137409095204339
	.quad	0x3fe64053b82899be              # double 0.69535242050624624
	.quad	0x3fe410f08e21bbab              # double 0.62706783065902039
	.quad	0x3fdd0e988de146fa              # double 0.45401586394756033
	.quad	0x3fe1509ad2e0b8ac              # double 0.54108945071290782
	.quad	0x3fe84b44feedc8a5              # double 0.75918817320623033
	.quad	0x3fc50f5f3056cc00              # double 0.16453161106400671
	.quad	0x3fe6927d02110818              # double 0.70538187411898701
	.quad	0x3fdf9c28724c2256              # double 0.4939061275659119
	.quad	0x3fee7a7b69d86882              # double 0.95245142624777679
	.quad	0x3fea79f81a44161b              # double 0.82738881235190165
	.quad	0x3fcd66bb304479f4              # double 0.2296976075821956
	.quad	0x3fc0173cd7754644              # double 0.12570915718474585
	.quad	0x3fcfb02e193664a0              # double 0.24756408911779193
	.quad	0x3fde7c6c36ec9a3e              # double 0.47634415973371691
	.quad	0x3f9455d0e9d34a00              # double 0.019858612319533009
	.quad	0x3fec2b1fda1afdba              # double 0.88026421164243307
	.quad	0x3fe66150de423caf              # double 0.69937938127431731
	.quad	0x3fe863b13dfee5af              # double 0.76216947659047729
	.quad	0x3fe8188a6644b568              # double 0.75299568151755825
	.quad	0x3fb55a95d7b7a448              # double 0.083413472333306093
	.quad	0x3fe406b0e64f0a89              # double 0.62581677419832815
	.quad	0x3fe23feeaa44f81b              # double 0.57030423408264441
	.quad	0x3fcc21d5a70304e4              # double 0.21978254942772601
	.quad	0x3feb8e5156d13990              # double 0.86112276989460845
	.quad	0x3fedc733609b9aa4              # double 0.93056649082867126
	.quad	0x3fd78733cb2c86ec              # double 0.36762709466175525
	.quad	0x3fe6bc8b885c56d8              # double 0.71051575310658688
	.quad	0x3fc08e227a2a1b68              # double 0.12933760609686407
	.quad	0x3fd089b4f27d388e              # double 0.25840495758610238
	.quad	0x3fdcb681647c09dc              # double 0.44863924801771105
	.quad	0x3fc5bb7da2bab360              # double 0.16978426404730396
	.quad	0x3feea2da69312d08              # double 0.95737953706103073
	.quad	0x3fe16ac702040c5d              # double 0.54428434747422794
	.quad	0x3feccf3b366c6bed              # double 0.9002967894515429
	.quad	0x3fe474e06b0f218b              # double 0.63926716718656118
	.quad	0x3fe39142ee900bba              # double 0.61148211092255811
	.quad	0x3fd08f22232f9f84              # double 0.25873616634498142
	.quad	0x3fcc62216c3573e0              # double 0.22174470695145398
	.quad	0x3fd7b4de4f36349e              # double 0.37041433082124253
	.quad	0x3fef9eba70866b52              # double 0.98812601068071104
	.quad	0x3fe39485a95f88e8              # double 0.61188014107417832
	.quad	0x3fe01524e216c3f8              # double 0.50258106382363987
	.quad	0x3fefa8a8464b18f3              # double 0.98933805207414449
	.quad	0x3fe6a16f05c60868              # double 0.70720625999116482
	.quad	0x3f99788c016218c0              # double 0.024873912414954402
	.quad	0x3fb10f21204adc68              # double 0.066637106307881333
	.quad	0x3feb8dd4d03ac336              # double 0.86106339139778387
	.quad	0x3fcdcfe6998122b8              # double 0.23290712828954496
	.quad	0x3fd62d7d3799a95e              # double 0.34652643613539691
	.quad	0x3fa08bf58227be00              # double 0.032317802560893227
	.quad	0x3fdb24921050eef6              # double 0.42410708993314417
	.quad	0x3fcf034b3a8f3ad4              # double 0.24228802069997946
	.quad	0x3fdb4730acd11cf6              # double 0.42622010113377884
	.quad	0x3fdf93826404cd1c              # double 0.49337825553375736
	.quad	0x3feaf77553939030              # double 0.84270731280822098
	.quad	0x3fdaef149eb826b0              # double 0.4208423185342367
	.quad	0x3fe1a79fbac322ee              # double 0.55171190716745655
	.quad	0x3fea0ba77e5eda30              # double 0.81392264062635
	.quad	0x3fee5e773d3bdf94              # double 0.94903146705381624
	.quad	0x3fd1437cba3ee89e              # double 0.26974409282741785
	.quad	0x3fcfadaa39f53df0              # double 0.24748733358363451
	.quad	0x3fea6a3901041ccf              # double 0.82546663473558535
	.quad	0x3fe595bd023ffa34              # double 0.67452860297618722
	.quad	0x3fc057c52f9db1cc              # double 0.12767853569984167
	.quad	0x3fd4d45533d6526a              # double 0.32545976698137358
	.quad	0x3fdeb6ba6a3926e2              # double 0.47990284322132315
	.quad	0x3fd7b56e09514918              # double 0.37044859800256935
	.quad	0x3fd6c212e187dc50              # double 0.35559532188876108
	.quad	0x3fe6d38ebb178c92              # double 0.71332489529995002
	.quad	0x3fd3714e2c101ac2              # double 0.30379061034220112
	.quad	0x3fe3b0c682809000              # double 0.61532903183660892
	.quad	0x3fdf7a661ae7e2a0              # double 0.49184563281554894
	.quad	0x3fef1c26e0a51223              # double 0.97218650699557362
	.quad	0x3f96877c9e0e6b60              # double 0.022001216074936436
	.quad	0x3fd8a9161b4ce8e4              # double 0.38532021204049571
	.quad	0x3fab6fb7c9b50610              # double 0.053586715099765425
	.quad	0x3fc6bdb8a2a6ed28              # double 0.17766483251566823
	.quad	0x3fb9d6706a00aa68              # double 0.10092833126024348
	.quad	0x3f86447ecd4c2a80              # double 0.010872831955130779
	.quad	0x3fccb9dd7008b5c8              # double 0.22442214937602345
	.quad	0x3fe8070987b4a42a              # double 0.75085903649335717
	.quad	0x3fe4b8c747f4ae19              # double 0.64755596212256983
	.quad	0x3fd14a7c989dddb2              # double 0.27017130760165309
	.quad	0x3f62d74bc601b300              # double 0.0022999267530877665
	.quad	0x3fcb89dc72628138              # double 0.21514468751139204
	.quad	0x3fdfcd97aff981c6              # double 0.49692337212584581
	.quad	0x3fdee448823504d8              # double 0.48268330302751172
	.quad	0x3fdc03b0ca2d393e              # double 0.43772525543035445
	.quad	0x3fc8a17b214dc59c              # double 0.19242800832902851
	.quad	0x3fe65a75e39d4f4b              # double 0.69854254203753763
	.quad	0x3fce78c58e697acc              # double 0.23806065992081071
	.quad	0x3feb517867b9186b              # double 0.8536951089706809
	.quad	0x3fed462c3e254b31              # double 0.91481601846530769
	.quad	0x3feb21b9a168aabf              # double 0.84786683583418909
	.quad	0x3fe2342ae96d223f              # double 0.56886811820101701
	.quad	0x3feaf64710adb4ee              # double 0.84256318337943781
	.quad	0x3fb8cd3ae7228848              # double 0.096881562642495145
	.quad	0x3fce763f074e6ed4              # double 0.23798358780628937
	.quad	0x3fef57868443fad8              # double 0.97943425973047748
	.quad	0x3fedf4304a03cfeb              # double 0.93605818229707205
	.quad	0x3fdb4f527ed01de0              # double 0.42671644577100487
	.quad	0x3fcf200f3b80cee0              # double 0.24316587834765979
	.quad	0x3fd9c85cd7f7be9c              # double 0.40285416689492037
	.quad	0x3fe508bcc606feb1              # double 0.65731657674037625
	.quad	0x3fec12255e3cc0fb              # double 0.87721508413053983
	.quad	0x3fed58db97cde805              # double 0.91709689759522972
	.quad	0x3fe9b3d613e08816              # double 0.8032026661132956
	.quad	0x3fd39e43d1de8994              # double 0.3065347241883043
	.quad	0x3fe78e5fe36c2f7c              # double 0.73612970751263118
	.quad	0x3fe853f1723fe681              # double 0.76024696649911061
	.quad	0x3fb9ddfc19e58308              # double 0.10104346878280179
	.quad	0x3fe8e8a2bc1b5956              # double 0.7783979104959069
	.quad	0x3f8383193ab9f300              # double 0.0095273943945755057
	.quad	0x3fe3db1ad9109dbf              # double 0.6204962005185094
	.quad	0x3fe1c358ab710221              # double 0.55509599194198611
	.quad	0x3feeeeda964c4122              # double 0.96665696482708463
	.quad	0x3fd4253877bfd6ba              # double 0.31477176374697147
	.quad	0x3fc2360377e63b30              # double 0.14227336267909996
	.quad	0x3feff8433c80c421              # double 0.99905549828520545
	.quad	0x3fef13aefe446491              # double 0.97115277921251863
	.quad	0x3fd36bde8f2a9222              # double 0.3034588239773105
	.quad	0x3fc48977a3f144ec              # double 0.16044517045023754
	.quad	0x3fe70a2eb5f264f2              # double 0.71999297653670014
	.quad	0x3fe64e06e34f0dbb              # double 0.69702476879358899
	.quad	0x3fd30cc0d9bf28c2              # double 0.29765340103461935
	.quad	0x3fa21ffcfed02a20              # double 0.035400301079864471
	.quad	0x3fd7f16c69c51c3e              # double 0.37411032036874647
	.quad	0x3fe5b269e269ceef              # double 0.67802900525427201
	.quad	0x3fa36668282852d0              # double 0.037890677358665692
	.quad	0x3fecea2365772449              # double 0.90358133141956742
	.quad	0x3fdaff45780cd7da              # double 0.42183052753114014
	.quad	0x3fe3d009907fdb16              # double 0.61914518568559873
	.quad	0x3fb3a8f67f260f60              # double 0.076796918909221912
	.quad	0x3feda0dba6d88fed              # double 0.92588598811243872
	.quad	0x3fe54a98345ebc1f              # double 0.66535577991988137
	.quad	0x3fe49a469cf695d1              # double 0.64383249909286111
	.quad	0x3fe56beacb20278a              # double 0.66942348168343924
	.quad	0x3fec84894fe52460              # double 0.89117875675686875
	.quad	0x3fe8b62acf4e3612              # double 0.77223721017225189
	.quad	0x3fdbfcd496dd64d6              # double 0.437306544617582
	.quad	0x3fa1885cd75e01b0              # double 0.034243489541953109
	.quad	0x3fe7209b4a10d6cf              # double 0.72273029771778308
	.quad	0x3fd570bc5f355c2c              # double 0.3350058488626384
	.quad	0x3fdfc9c92fe830a6              # double 0.49669103315751284
	.quad	0x3feb74ab09287306              # double 0.85799171246216654
	.quad	0x3fe412e6b15bf16f              # double 0.62730726852855223
	.quad	0x3fe5829015601529              # double 0.67218784499042272
	.quad	0x3fd75279001202b2              # double 0.36440873152609321
	.quad	0x3fbd221059b7f4a8              # double 0.11380102339167542
	.quad	0x3fd9e80e68f76642              # double 0.40478859186768912
	.quad	0x3fded027bdba4940              # double 0.48145478752225657
	.quad	0x3fe0d0c96e2a1ee1              # double 0.52548667446623309
	.quad	0x3feee590dda30685              # double 0.96552317894402561
	.quad	0x3fefeafa570c7fb9              # double 0.99743382455562035
	.quad	0x3f6840a7d5948800              # double 0.0029605176938654054
	.quad	0x3fee75569810e41c              # double 0.95182351780306673
	.quad	0x3fe44b3024e859ba              # double 0.63417823036689147
	.quad	0x3f59cfda4c7fcc00              # double 0.0015754348587477818
	.quad	0x3fe9cc94648d4a88              # double 0.80622310294195731
	.quad	0x3fc59ebc84760f40              # double 0.16890675037222458
	.quad	0x3fe1d3f35b0b0ec2              # double 0.55712287694810692
	.quad	0x3faf22ddf92f23b0              # double 0.060812889736161835
	.quad	0x3fd2462c0fc36abc              # double 0.28553296603574174
	.quad	0x3feb02d9e61d3e8d              # double 0.84409804290949497
	.quad	0x3fb4b51eae80a110              # double 0.080888669589175288
	.quad	0x3fe597a932fd627a              # double 0.67476329764310994
	.quad	0x3fe2d812a17e8e1b              # double 0.58887607137552622
	.quad	0x3fa5d236b8bcfb30              # double 0.042619428683329352
	.quad	0x3fedbe0715b3350a              # double 0.92944673765455943
	.quad	0x3fec10b08e240688              # double 0.87703731309757504
	.quad	0x3fc2593609de9fb8              # double 0.14334750635066285
	.quad	0x3fd90a82e590e5ee              # double 0.39126655977778924
	.quad	0x3fa32e849312cd60              # double 0.037464278176595256
	.quad	0x3fd56fced365aeac              # double 0.33494921345002626
	.quad	0x3fcb86f68f252d98              # double 0.21505624761117015
	.quad	0x3fdfce0ce4ed35f8              # double 0.49695131641496415
	.quad	0x3fdb7942e09f30e6              # double 0.42927619872786094
	.quad	0x3fe8645f4b4230bc              # double 0.7622524709600138
	.quad	0x3fe4792ac2e2a92e              # double 0.63979089797547828
	.quad	0x3f946d139adf4f40              # double 0.019947344138770307
	.quad	0x3fc466f4d5550820              # double 0.15939197937592642
	.quad	0x3feb65b662224138              # double 0.85616606871375378
	.quad	0x3fec08565c4a38d8              # double 0.87601774239899566
	.quad	0x3fca08b60f2a31f8              # double 0.20339084377737016
	.quad	0x3fefa75523a58c72              # double 0.98917633974305219
	.quad	0x3f81899e412efa80              # double 0.008563267101519445
	.quad	0x3fdf3575c84cb9a2              # double 0.4876379447986442
	.quad	0x3fe3776306681b37              # double 0.60832358599950609
	.quad	0x3fdccd753a767420              # double 0.45004015645264595
	.quad	0x3fe9378115ce2dd7              # double 0.78802541979660645
	.quad	0x3fdde01b152da67a              # double 0.46680333202548463
	.quad	0x3fe0b2ac98daeb12              # double 0.52181081633111348
	.quad	0x3fe7ec99b7b8804c              # double 0.74763189204169
	.quad	0x3fd45853d2f450e4              # double 0.31789107895862245
	.quad	0x3fe78643bf303c84              # double 0.73513972608078904
	.quad	0x3fc2788328cbc4ac              # double 0.14430274478903493
	.quad	0x3fed2fbd52f31526              # double 0.9120775814159614
	.quad	0x3fdec445262bb4d0              # double 0.48072937705621843
	.quad	0x3feafedb4b5be656              # double 0.84361042707969136
	.quad	0x3fd3a571b7c7c598              # double 0.30697291323948539
	.quad	0x3fc4fd492f751ee8              # double 0.16397967164288407
	.quad	0x3fd5ddcb4e61a83e              # double 0.34166224150124325
	.quad	0x3fee49fdf9de9c58              # double 0.94653223803187369
	.quad	0x3fed854566fd0976              # double 0.92251844515730741
	.quad	0x3fd59a986ba84b22              # double 0.33756075395028706
	.quad	0x3fdf285238e7d85a              # double 0.48683600957099815
	.quad	0x3fe91badff1ca0b5              # double 0.78462886644867658
	.quad	0x3feb5511c50dc2f1              # double 0.85413444983541187
	.quad	0x3fd552aba159f058              # double 0.33317080265965648
	.quad	0x3fdd3706e032cc90              # double 0.45648357290628727
	.quad	0x3fe5d95b16ffcd84              # double 0.68278269283330006
	.quad	0x3fc0743c5a256398              # double 0.12854723359739917
	.quad	0x3fef9f7f4928ee2f              # double 0.98821987427749558
	.quad	0x3fd2f5578f10c75c              # double 0.29622448893780073
	.quad	0x3fe639f2b68ae0be              # double 0.69457374241667202
	.quad	0x3fdf6d446280c744              # double 0.49104413623273424
	.quad	0x3fd99b63e45031c0              # double 0.40010926529137336
	.quad	0x3fd5b80274bca534              # double 0.33935605430686455
	.quad	0x3fe3a3c61581d777              # double 0.61374191475509476
	.quad	0x3fe910b0a158fa2c              # double 0.78328734887310735
	.quad	0x3fe7ebce7eb2292e              # double 0.7475349878816695
	.quad	0x3fe16d8f8342c2b3              # double 0.54462409626838448
	.quad	0x3fed4be0445b5b87              # double 0.91551221228552115
	.quad	0x3fd420c9802eb998              # double 0.31450116651367344
	.quad	0x3fc59451d4eb2cb8              # double 0.16858885666292678
	.quad	0x3fe5951ddc15a98f              # double 0.67445271477963498
	.quad	0x3f8680d7422da4c0              # double 0.01098793192587022
	.quad	0x3fe6685d7f5f7087              # double 0.70023989560606104
	.quad	0x3fedd3aed854d5c3              # double 0.93209020855163549
	.quad	0x3fe43eb2f376da67              # double 0.63265368987670179
	.quad	0x3fb494d3d37aa5e0              # double 0.080395926600111078
	.quad	0x3fe740a8b9ff9da5              # double 0.72664295509178045
	.quad	0x3fe5c4707b4dfec3              # double 0.68022941668456161
	.quad	0x3fd45dac56652640              # double 0.31821735798857631
	.quad	0x3fd7cb529de397ce              # double 0.37178483408785901
	.quad	0x3fde6b2322d45872              # double 0.47528913880649448
	.quad	0x3fe64616dff5206d              # double 0.69605582944587996
	.quad	0x3fed9a2bbc584c35              # double 0.92506968294254099
	.quad	0x3feb77e5d7b8ca66              # double 0.85838596470996431
	.quad	0x3fdc5e02a3f713b6              # double 0.44323793422909874
	.quad	0x3fd561d7470e7626              # double 0.33409673632727033
	.quad	0x3fd2a528d18aef12              # double 0.29133053267627063
	.quad	0x3fbc52f39620a040              # double 0.11064073958607512
	.quad	0x3fed9a53f35dfbe2              # double 0.92508885891572512
	.quad	0x3fe98ef3822cd46d              # double 0.7987000982744924
	.quad	0x3fd32ee90f6eb620              # double 0.2997381830890351
	.quad	0x3fe086a10d3a0609              # double 0.51643421729403471
	.quad	0x3fd8e7dd4579fe74              # double 0.38915187630480053
	.quad	0x3fcad8a36e7ed3a8              # double 0.20973627944263495
	.quad	0x3fddac7a1d5af916              # double 0.46365216128096287
	.quad	0x3fe37127ca21fae2              # double 0.60756291846322719
	.quad	0x3fcbb8688abb4e14              # double 0.21656519674307673
	.quad	0x3fddec3477b3a92e              # double 0.46754180612210205
	.quad	0x3fe0254217792b84              # double 0.5045481165374075
	.quad	0x3f92ae9c55fce9a0              # double 0.018244211910521835
	.quad	0x3fd51f70ae15281c              # double 0.3300439548517049
	.quad	0x3fe9f565f4e48d53              # double 0.81120584326382994
	.quad	0x3fe33accb6ad343e              # double 0.60092769316691608
	.quad	0x3fd5939c5c2d4ae0              # double 0.33713444711353979
	.quad	0x3fa76a85f33db190              # double 0.04573458284616827
	.quad	0x3fe3d3b1c4d2c0f7              # double 0.61959160272638669
	.quad	0x3fe13482d10f371a              # double 0.53766003448410804
	.quad	0x3fc9d0fa65d2d44c              # double 0.20169000598767395
	.quad	0x3fd8f4f00d46051a              # double 0.38994981094590886
	.quad	0x3fe56f40dbb7b198              # double 0.66983073152146044
	.quad	0x3fabf179c3554360              # double 0.054576687902801124
	.quad	0x3fc16e1dea3eb1a0              # double 0.13617299974192765
	.quad	0x3fe4763c2f169466              # double 0.63943299481310301
	.quad	0x3fb4694922cb1b48              # double 0.079731532091597335
	.quad	0x3fec468c330570df              # double 0.88361177411163883
	.quad	0x3fcc3e39182f8384              # double 0.22064889603555227
	.quad	0x3fdaa26aeb4cf6dc              # double 0.41616318682268427
	.quad	0x3fd8622519de0baa              # double 0.38099029089078817
	.quad	0x3fe8a9d1e102998a              # double 0.77072996089263879
	.quad	0x3fefd7fe7d94d8f0              # double 0.99511646773933471
	.quad	0x3fe627d8ec7ed1b9              # double 0.69236417952065843
	.quad	0x3fd2cc7cd5055d70              # double 0.29373093417003471
	.quad	0x3fed0da57ef51a7a              # double 0.90791582867025444
	.quad	0x3fe040fb3f29c12d              # double 0.50793230377715803
	.quad	0x3fecc56576fe3bdc              # double 0.89909623375740066
	.quad	0x3fc045b03fff776c              # double 0.12712672352693788
	.quad	0x3fe284ae823808cf              # double 0.57869649346710073
	.quad	0x3fee8a28aca023e4              # double 0.95436509815146708
	.quad	0x3fc0a528ca2d1b24              # double 0.13004026290783444
	.quad	0x3fc6a4f122a81f88              # double 0.17690862838957977
	.quad	0x3fe0cfdd95580dd0              # double 0.52537421387426697
	.quad	0x3fd5d498ea93a510              # double 0.34110091121563446
	.quad	0x3fe1c46df07700a1              # double 0.55522820440093679
	.quad	0x3fbe1d64a8ef0ff0              # double 0.11763600468026403
	.quad	0x3fa9ed86e251b0f0              # double 0.050640311362117774
	.quad	0x3fdb3c71b9fdf3b2              # double 0.42556422389298654
	.quad	0x3fe2bfb3e363727f              # double 0.58590120708284121
	.quad	0x3fd5e3ee924c3588              # double 0.34203686034091918
	.quad	0x3feae82fadc7e529              # double 0.84084304753847505
	.quad	0x3fd979b0c3f73d98              # double 0.39805239808352999
	.quad	0x3fe620937a9783b8              # double 0.69147657340737734
	.quad	0x3fe34e6a6bfcac4f              # double 0.60332223025523912
	.quad	0x3fd48799503fde36              # double 0.32077629887450898
	.quad	0x3fd2a6ba74e03724              # double 0.29142629064232239
	.quad	0x3fd3b2e5a038a250              # double 0.30779400488475961
	.quad	0x3fe44ecae8233329              # double 0.63461823787074423
	.quad	0x3fd6e94decb6807a              # double 0.35798977009290633
	.quad	0x3fe28c741059caea              # double 0.57964518731600134
	.quad	0x3fc283559c80ac24              # double 0.14463300840120141
	.quad	0x3fdf8a2b9c5cf508              # double 0.49280824918589916
	.quad	0x3fd8a7be34239ac8              # double 0.38523821918208201
	.quad	0x3fd833b57dcf9bf4              # double 0.37815606390216705
	.quad	0x3fed323661f4d85f              # double 0.91237944728960574
	.quad	0x3fd4fd7d4ceee5a6              # double 0.32797176850325582
	.quad	0x3fe92dd070205d46              # double 0.7868425550431446
	.quad	0x3fd39673e4a44128              # double 0.30605790451319814
	.quad	0x3fcc2370da817cd8              # double 0.21983156842450202
	.quad	0x3fb2e60e7cd4ff60              # double 0.07382288501412182
	.quad	0x3fd7b6c4a34b2eac              # double 0.37053028055809523
	.quad	0x3f9ed90c79e743c0              # double 0.030124850216285415
	.quad	0x3fd39b661b4fd5d6              # double 0.30635979334996699
	.quad	0x3fdd8862209b7d32              # double 0.46144917663874019
	.quad	0x3fe25b88c00074aa              # double 0.57367360592220007
	.quad	0x3fd23f0714a7d1e2              # double 0.28509690301078028
	.quad	0x3fceab85e4db8d14              # double 0.23960946726501986
	.quad	0x3fb4ff67e06433d0              # double 0.082022182734547088
	.quad	0x3fe5c6b5727078c3              # double 0.68050644256052129
	.quad	0x3fd2dd4f2db78d5c              # double 0.29475764717627384
	.quad	0x3fef21e4bdd7413e              # double 0.9728873927906887
	.quad	0x3fba389fcdbba828              # double 0.10242651722697416
	.quad	0x3fde3850e27109a6              # double 0.47218725312645871
	.quad	0x3fa7cc4f04edbfb0              # double 0.046480626441620543
	.quad	0x3fc501f1767b5d8c              # double 0.16412180218933903
	.quad	0x3fedb9e775d03288              # double 0.92894337664036275
	.quad	0x3fe983f185bc1f70              # double 0.79735637779320534
	.quad	0x3fc5a837c64169c8              # double 0.16919610195584611
	.quad	0x3fb59e9463f78bf8              # double 0.08445098343467794
	.quad	0x3fede892b979c241              # double 0.93464027620036216
	.quad	0x3fe00835e15a3bab              # double 0.50100225462107539
	.quad	0x3fe60911a4375928              # double 0.68860704492070557
	.quad	0x3fc586ff4f88c230              # double 0.16818229087358949
	.quad	0x3fddefdc7c100d16              # double 0.46776496997354522
	.quad	0x3fef896f7e997494              # double 0.98552679754688421
	.quad	0x3fc838aa03d4cc44              # double 0.18922925173828464
	.quad	0x3fdb2198bf35871e              # double 0.4239255778576182
	.quad	0x3feb5f3edcf3b234              # double 0.85537665514636396
	.quad	0x3fe381f0cf07b995              # double 0.6096118968542209
	.quad	0x3fd4d7f287c2d114              # double 0.32568038232717922
	.quad	0x3fd616de3722d03a              # double 0.34514575371145251
	.quad	0x3fdda77199e4da60              # double 0.46334495571810486
	.quad	0x3fda1ae6d40a53ae              # double 0.40789194781364813
	.quad	0x3fe90308cf89e594              # double 0.78162041220564271
	.quad	0x3fcf1c6d184cfe44              # double 0.24305499731598179
	.quad	0x3fcca8ba4c77e6d0              # double 0.22389916166121404
	.quad	0x3fdcf3e7aa0d59ec              # double 0.45238677603393174
	.quad	0x3feca1f58a22e2ef              # double 0.89477040271512276
	.quad	0x3fd2041002f7b19c              # double 0.28149795808601552
	.quad	0x3fd6b8c2cc8327ce              # double 0.35502691242129181
	.quad	0x3fef9ad7a5d7c118              # double 0.98765165702028223
	.quad	0x3fe68c7926a631b0              # double 0.70464761303587942
	.quad	0x3fe7b3e46ca90ced              # double 0.74070950720525064
	.quad	0x3fe9e74d18f86a50              # double 0.80948500515962429
	.quad	0x3fc26c60482d1a64              # double 0.1439323761389516
	.quad	0x3fd7c19822117734              # double 0.37119105650878059
	.quad	0x3fdaa89daf619ffe              # double 0.41654150130352707
	.quad	0x3fb01f526924ac70              # double 0.062977934522381096
	.quad	0x3fcacd5eebd6c114              # double 0.20939241900988093
	.quad	0x3fe8e0638948b346              # double 0.77739121259001176
	.quad	0x3fe093d25c010027              # double 0.51804464311135667
	.quad	0x3fce8d4605886e00              # double 0.23868632574236415
	.quad	0x3fd8deeaf4488d68              # double 0.38860582214166195
	.quad	0x3fdf05dd6bb4b14c              # double 0.48473296659610265
	.quad	0x3fb6d4f697172668              # double 0.089187061202346762
	.quad	0x3fdb80cd7699a9c2              # double 0.42973648626380279
	.quad	0x3fe7bc0694daa14e              # double 0.74170235703517462
	.quad	0x3fd1e565696e3820              # double 0.27962622924758485
	.quad	0x3fe37fd5e91b6d83              # double 0.6093549301980804
	.quad	0x3fd8c55f2c4c63ea              # double 0.38704661680236419
	.quad	0x3fe5025e6a0df753              # double 0.65653916085987374
	.quad	0x3fc9e63916e9d02c              # double 0.2023383485681064
	.quad	0x3fe96bd42c9e2a02              # double 0.79441269602222087
	.quad	0x3feb14a638d44f2d              # double 0.8462706670711434
	.quad	0x3fedaa1798b87ed4              # double 0.92701320484408222
	.quad	0x3fe8d973219ee030              # double 0.77654415670895638
	.quad	0x3fe8b3bb39796f04              # double 0.77193986154040361
	.quad	0x3feac501b08dd007              # double 0.83654865725702698
	.quad	0x3fef110dd122b7ea              # double 0.97083178374100254
	.quad	0x3faab1c1858e83f0              # double 0.05213742022829837
	.quad	0x3fd219d674766b14              # double 0.28282700894639956
	.quad	0x3fdbe367f24fa448              # double 0.43575476325219542
	.quad	0x3fecaba23b6aba38              # double 0.89595138172973687
	.quad	0x3fea447b02f352b2              # double 0.82085943771615733
	.quad	0x3fd0dcfbe6e8ddb8              # double 0.26348779248970855
	.quad	0x3fdd7ed527b0ee6a              # double 0.46086624981010138
	.quad	0x3fdc8a5eefa39630              # double 0.44594548609015572
	.quad	0x3fc7b16e7068b178              # double 0.18510227669447565
	.quad	0x3fccf21e3fa5cd40              # double 0.22613885982318926
	.quad	0x3fe1b813c02d41a4              # double 0.55372035536315822
	.quad	0x3fdaf95e942f4028              # double 0.42147030326032331
	.quad	0x3fe2a409acb55b3c              # double 0.58252414447893086
	.quad	0x3fe1a69cf2feccd2              # double 0.55158851108572038
	.quad	0x3fefe95da6632bd9              # double 0.99723703858887369
	.quad	0x3fe740be6bf9d215              # double 0.7266533001807739
	.quad	0x3fe391761b364fe4              # double 0.61150651278375934
	.quad	0x3fe5663a38081039              # double 0.66872893279697287
	.quad	0x3fe88d96a034645c              # double 0.76728373804065652
	.quad	0x3fe83a547cb769dc              # double 0.75712036474879651
	.quad	0x3fd6f6b8e67b3a6c              # double 0.35880873210854847
	.quad	0x3fd2ae2798c947fe              # double 0.29187955780537311
	.quad	0x3fa457e05cf7b790              # double 0.03973294386729187
	.quad	0x3fc4fe3929b8c894              # double 0.16400827920148642
	.quad	0x3fd4116d9e9a5818              # double 0.31356373299183948
	.quad	0x3fed3b2f13aeb9aa              # double 0.9134745964454869
	.quad	0x3fca91511823ec34              # double 0.20755971602179246
	.quad	0x3fec3e895dc55d31              # double 0.88263386072768502
	.quad	0x3fed5cadda817874              # double 0.91756336857703368
	.quad	0x3feb6a0088fdf154              # double 0.85668970829241652
	.quad	0x3fe4f32166104491              # double 0.65467901167189002
	.quad	0x3fcbf46f5a343374              # double 0.21839706329810904
	.quad	0x3fcd8218c7536230              # double 0.23053273899746918
	.quad	0x3fd57c3515ea79ba              # double 0.33570601597048333
	.quad	0x3facf44489928360              # double 0.056551114839072936
	.quad	0x3fe34a903866917e              # double 0.60285197273019242
	.quad	0x3fddbdc6cfb87db4              # double 0.4647080448648595
	.quad	0x3fe1133b82127550              # double 0.53359771160800484
	.quad	0x3fe90f4242678bbb              # double 0.78311264962791627
	.quad	0x3fc388ac89b64278              # double 0.15260845874992746
	.quad	0x3fe0e639c5386fb6              # double 0.52810371894474062
	.quad	0x3fc9bfd60b30dad8              # double 0.2011668734209795
	.quad	0x3fd7865f32b27ffa              # double 0.36757640791802226
	.quad	0x3fe6c5162faac68f              # double 0.71155843076685865
	.quad	0x3fef149f421e4c27              # double 0.97126734651317725
	.quad	0x3fdd78f63c450236              # double 0.46050792585086542
	.quad	0x3fc7951a5f675edc              # double 0.18423776300800554
	.quad	0x3fe430f54844668e              # double 0.63097633471189041
	.quad	0x3fa46e6141ad6cb0              # double 0.039904631869569385
	.quad	0x3fe193919191a888              # double 0.54926374846878989
	.quad	0x3fe648766da7b371              # double 0.69634553353317419
	.quad	0x3fc297d7678ed994              # double 0.14525883251708349
	.quad	0x3fe0c88deb54bbe7              # double 0.52448173487743766
	.quad	0x3fe6cdb2ef96921e              # double 0.71260973734439736
	.quad	0x3fe98eeb6d62b4bb              # double 0.79869624485367952
	.quad	0x3fe20920918fb99b              # double 0.5636141627308463
	.quad	0x3fe96ada94efd3f7              # double 0.79429368104194864
	.quad	0x3fcd7fd96cefe944              # double 0.23046415156552247
	.quad	0x3fca5f0f06618a98              # double 0.20602596103261273
	.quad	0x3fe74021bb5ac40b              # double 0.72657858460127167
	.quad	0x3fe6352fc1f557f6              # double 0.69399249918455896
	.quad	0x3fe212e862516b37              # double 0.56480807497732755
	.quad	0x3feb4b872234b8a1              # double 0.85296971016738976
	.quad	0x3fe927b328bb69b0              # double 0.78609617190823222
	.quad	0x3fc770f8e874c04c              # double 0.18313514089959637
	.quad	0x3fe13abf3cec4455              # double 0.53842126749999386
	.quad	0x3fb44c5852f908b0              # double 0.079289932496098058
	.quad	0x3fb630bbda9eab50              # double 0.086681118844962101
	.quad	0x3fc7f5a6d7a4db34              # double 0.18718419579973899
	.quad	0x3fe0162b588c514f              # double 0.50270621580652086
	.quad	0x3faa14b01b4c4760              # double 0.05093908627726651
	.quad	0x3fefbdc716f2e2f4              # double 0.99191622240240784
	.quad	0x3fe7703452f7227d              # double 0.73244682506727055
	.quad	0x3f977ca624b6d1a0              # double 0.022936435690739665
	.quad	0x3fd47ab751cf5436              # double 0.31998999585386245
	.quad	0x3fdfed7be0d42f04              # double 0.49886986690465585
	.quad	0x3fe91a7cf9978c57              # double 0.78448342083391764
	.quad	0x3feb814e2e952458              # double 0.85953435037766734
	.quad	0x3fe8085546d8b832              # double 0.7510172256204497
	.quad	0x3fca7779313c0174              # double 0.20677103904746341
	.quad	0x3fe9a50cbc3e81c3              # double 0.80139767424048391
	.quad	0x3fec7f232c35854c              # double 0.89051970133383795
	.quad	0x3fd37ec386b06e68              # double 0.30461204674950304
	.quad	0x3fcf7d72e6d1e600              # double 0.2460158946085329
	.quad	0x3fe2f2a5c01bf3a9              # double 0.59212005158734826
	.quad	0x3fd35acd86626254              # double 0.30241716502636007
	.quad	0x3fda949a524b3ec2              # double 0.41531999622837301
	.quad	0x3fb1cd41d2927de8              # double 0.069538225087391603
	.quad	0x3fb6b32b15979f70              # double 0.088671391269256494
	.quad	0x3fed35e8590dc4cd              # double 0.91283051865880227
	.quad	0x3fe94e9abd4db2a8              # double 0.79084526990262294
	.quad	0x3fb2eb37de57c4d8              # double 0.073901645453378406
	.quad	0x3fe92517c266e5c8              # double 0.78577793091897608
	.quad	0x3fd0360f9c174886              # double 0.2532996200872123
	.quad	0x3fe4989bc177f462              # double 0.64362895762282002
	.quad	0x3fd454f019cb3fc2              # double 0.31768419760646449
	.quad	0x3fb6bf73b90daaa0              # double 0.088858826331185359
	.quad	0x3fe981f2769348dd              # double 0.79711268576854943
	.quad	0x3fe6b0ff0868afbb              # double 0.70910598413819714
	.quad	0x3fee62beb2133dc3              # double 0.94955382137589373
	.quad	0x3f86ffb0a59ace00              # double 0.011229877523283527
	.quad	0x3fde1368428439ce              # double 0.46993452544930114
	.quad	0x3fcd4c2510138c78              # double 0.22888625416735286
	.quad	0x3fe650f3d1103181              # double 0.69738188584010186
	.quad	0x3fe3c00deca55c13              # double 0.61719413967046177
	.quad	0x3fd057242f84281c              # double 0.25531868591554185
	.quad	0x3fee9424bf5f3c4c              # double 0.95558392884584852
	.quad	0x3fed537a7093d173              # double 0.91644021976257617
	.quad	0x3fef07ae6024a1ab              # double 0.96968764093349102
	.quad	0x3fdcb2d0a09b5640              # double 0.44841399845367746
	.quad	0x3fdc9a4cc6985a76              # double 0.4469177188306398
	.quad	0x3f82a66ee88a5e00              # double 0.0091065087047317305
	.quad	0x3fe9031b658c4d27              # double 0.78162927468875842
	.quad	0x3fc27b60181ea6dc              # double 0.14439011743279806
	.quad	0x3fe3570fd04bf1df              # double 0.6043776577276353
	.quad	0x3fc76c03f2b1b9e4              # double 0.18298386907868214
	.quad	0x3fe03f44b3fddef6              # double 0.50772318987489373
	.quad	0x3fb98c422043ba88              # double 0.09979642188748461
	.quad	0x3fe0f58e96346011              # double 0.5299752172168174
	.quad	0x3fe493512463332b              # double 0.64298302752431391
	.quad	0x3fccfdc0c53da984              # double 0.22649392729665518
	.quad	0x3fd672390653d2e6              # double 0.35072160356439352
	.quad	0x3fe515a08add3fcd              # double 0.65889002916264305
	.quad	0x3fdda1a7f619c468              # double 0.46299170525805389
	.quad	0x3fedd27bbe1f7e79              # double 0.93194377072718659
	.quad	0x3fe472880ae27a79              # double 0.63898088575281442
	.quad	0x3fc4aaaa78321a44              # double 0.16145830983096421
	.quad	0x3fdbfa83689d08cc              # double 0.43716511932519775
	.quad	0x3fc7c117e18b498c              # double 0.18558023941893642
	.quad	0x3fe9b52fc2946c3c              # double 0.80336750034201243
	.quad	0x3fec1b1346ea9a96              # double 0.87830509043563398
	.quad	0x3fabeafc657ace20              # double 0.054527175319347032
	.quad	0x3fcb590e4b302bac              # double 0.21365526839539706
	.quad	0x3fee56c9871bb49a              # double 0.94809414280247784
	.quad	0x3fddda9194fcc280              # double 0.46646537351174544
	.quad	0x3fcaaec96e8f1c20              # double 0.20845907114400664
	.quad	0x3fdf7e80ead5f8be              # double 0.49209616597353179
	.quad	0x3fe6c6da8597b50e              # double 0.71177412121110861
	.quad	0x3fe76f09b4ac164d              # double 0.73230443275014923
	.quad	0x3fee62278a22aa44              # double 0.94948174457142231
	.quad	0x3fe8060d2e499aeb              # double 0.75073870697528144
	.quad	0x3fda9ab7940d90f6              # double 0.41569318254757037
	.quad	0x3fda2e2494c272b0              # double 0.4090663387994864
	.quad	0x3fe0d8d5d862e2b3              # double 0.52646915686553653
	.quad	0x3fe601ac4aae0adb              # double 0.68770422540577714
	.quad	0x3fdf23e99cc01f98              # double 0.48656692798294321
	.quad	0x3fd7927e00d24108              # double 0.3683161743183665
	.quad	0x3fd778469ff8a260              # double 0.3667160570353527
	.quad	0x3fc49ecc85736210              # double 0.16109615818165013
	.quad	0x3fece421e9be2ceb              # double 0.90284820225624907
	.quad	0x3fedb7f0b4a678e9              # double 0.92870364459284105
	.quad	0x3fdc668425bdbcca              # double 0.44375709233913752
	.quad	0x3fd4c86783fad978              # double 0.32473171127948985
	.quad	0x3fe10251e03d54c1              # double 0.53153318211357015
	.quad	0x3f7624a0ede0fc80              # double 0.0054060255334312801
	.quad	0x3fda5523b013f39e              # double 0.41144649691687529
	.quad	0x3fe9bfdcd324a291              # double 0.80467072714698606
	.quad	0x3fe2e0724cd7944a              # double 0.58989825256561201
	.quad	0x3fe4261e790c595f              # double 0.62965320245966072
	.quad	0x3fe00cf8f052cee3              # double 0.50158354700257879
	.quad	0x3fea9e068b3739d4              # double 0.8317902297074462
	.quad	0x3fe1d99d659d48ec              # double 0.55781431051789587
	.quad	0x3fdf7dd0f928a328              # double 0.49205421764286195
	.quad	0x3fdfc48c4411ec48              # double 0.49637133262121269
	.quad	0x3feadaca3afdc8a1              # double 0.83920775911089518
	.quad	0x3fa0bc6b5aa93460              # double 0.032687525574694787
	.quad	0x3fc86f7f32dafc2c              # double 0.19090261443304379
	.quad	0x3fe64b655746c041              # double 0.69670359655538772
	.quad	0x3fe48aa92f7c0b66              # double 0.64192637705160105
	.quad	0x3fdf42427416a558              # double 0.48841916405452457
	.quad	0x3fe5c94ae1a7e28c              # double 0.68082183907888938
	.quad	0x3fc1d0505dad08a4              # double 0.13916973661441034
	.quad	0x3fe06858e507d531              # double 0.51273770077265202
	.quad	0x3fdb8dba9b4baed0              # double 0.4305254475172946
	.quad	0x3fce99727196fffc              # double 0.23905783220652654
	.quad	0x3fef50a1bbe04367              # double 0.9785927457288438
	.quad	0x3fd448a2d2e0c392              # double 0.3169333514552416
	.quad	0x3fee27e03c417cdc              # double 0.94236766594613241
	.quad	0x3fa945bfcad6a390              # double 0.049360269079733787
	.quad	0x3fcf9a4c34efbeb0              # double 0.24689629158773618
	.quad	0x3fe286803c4a4b13              # double 0.57891856933051355
	.quad	0x3fd669e30c1a814a              # double 0.35021282369600171
	.quad	0x3fd86db4088c03d4              # double 0.38169575533544031
	.quad	0x3feb9624ebf1c129              # double 0.86207815249330111
	.quad	0x3fe85271cd936274              # double 0.76006403113849652
	.quad	0x3faac161b433c1c0              # double 0.052256634948097069
	.quad	0x3fd74f77a7a4e220              # double 0.364225305285375
	.quad	0x3fc64da82ad21ec8              # double 0.17424490061625009
	.quad	0x3fee3751c0b9d96b              # double 0.94425284997741465
	.quad	0x3fd697be9dcc7272              # double 0.35301175508519755
	.quad	0x3fe55a44f632c59b              # double 0.66726921163187869
	.quad	0x3fe151f9d716e5f8              # double 0.54125682840020684
	.quad	0x3fcf42e11ddd0318              # double 0.2442284961525949
	.quad	0x3fcc6706c8552644              # double 0.22189411908975576
	.quad	0x3fedd9d9c7d713cb              # double 0.93284310370710821
	.quad	0x3fd1eb36c09a344e              # double 0.27998131569694784
	.quad	0x3fe8488daa319124              # double 0.75885661354962907
	.quad	0x3fe46ea0dc62ce8f              # double 0.63850443882115993
	.quad	0x3fee71fda0d2f244              # double 0.95141488467158596
	.quad	0x3fdd573cc82dada8              # double 0.45844955013918787
	.quad	0x3fe826bd49c998d0              # double 0.75472893153780696
	.quad	0x3fe9b1b8039515c6              # double 0.80294419002228135
	.quad	0x3fdd7b321ecd302e              # double 0.46064427383385265
	.quad	0x3fb11de3ea697aa8              # double 0.066862339715479835
	.quad	0x3fd10ef87a58ee6e              # double 0.26653873394000172
	.quad	0x3fe590b28713a431              # double 0.6739132536141651
	.quad	0x3fe1a816058d50d9              # double 0.55176831325891407
	.quad	0x3f9573b7a8b63340              # double 0.020949239418359911
	.quad	0x3fe687375e823df2              # double 0.70400589426748028
	.quad	0x3fb2ec5255f7c5a0              # double 0.073918481815573589
	.quad	0x3fd411678f980b86              # double 0.31356228850216217
	.quad	0x3fea7bb8d1c5ea63              # double 0.82760277720747089
	.quad	0x3fca2fea29b03920              # double 0.20458724055829069
	.quad	0x3fd94ad86bea2aca              # double 0.39519320047899653
	.quad	0x3fb66ce7c3b8b278              # double 0.087599263461649701
	.quad	0x3fc7de1352a3eb84              # double 0.18646470580264574
	.quad	0x3fd956ab5d00e8ea              # double 0.39591487963083571
	.quad	0x3fddebceaa84a2aa              # double 0.4675175347534074
	.quad	0x3fe93e035fd52465              # double 0.78881996838857715
	.quad	0x3fd3b98d142243b2              # double 0.3082001396770081
	.quad	0x3feb27960fc91c42              # double 0.84858229716417832
	.quad	0x3fd5c4ad2e9519be              # double 0.34012918042244766
	.quad	0x3fdcb223219cd07a              # double 0.44837263376690084
	.quad	0x3fc66da48b2ae820              # double 0.17522103114407717
	.quad	0x3feb86acd16554c6              # double 0.86018982789632825
	.quad	0x3fed7bb6062c2bc0              # double 0.92135144429754944
	.quad	0x3fe5bbc693a93278              # double 0.6791718372347324
	.quad	0x3fbd7935a6721490              # double 0.11513076127637789
	.quad	0x3fcf352c3008e578              # double 0.24381019921728941
	.quad	0x3fe07efca499cd8f              # double 0.5155013289317355
	.quad	0x3fd2ab047a98dcac              # double 0.29168807957052922
	.quad	0x3fe63b2033521cca              # double 0.69471750281891187
	.quad	0x3fe73842e9c2c7d4              # double 0.72561784416597641
	.quad	0x3fed47b358d2ba0f              # double 0.91500251148483069
	.quad	0x3fe5ba96fee1dad7              # double 0.67902707845390864
	.quad	0x3fe05b1e7d6a4fff              # double 0.51112293715641488
	.quad	0x3fc9af21550feda8              # double 0.20065704968861309
	.quad	0x3fb5db6c6114f200              # double 0.085379384709945327
	.quad	0x3fda9a21511f9a40              # double 0.41565735742770826
	.quad	0x3fe32d0f41241e99              # double 0.59925043795461186
	.quad	0x3fe63d6b9b21686b              # double 0.6949975995915002
	.quad	0x3fe5a6f014465707              # double 0.67662815055766223
	.quad	0x3fc61db83e993684              # double 0.17278197342459489
	.quad	0x3fedbfd4e459f1ac              # double 0.92966694450256204
	.quad	0x3fddfba59fc83950              # double 0.46848431209300134
	.quad	0x3fe280b637bb0e86              # double 0.57821188816929303
	.quad	0x3fee25ab6078ea7b              # double 0.94209832041026631
	.quad	0x3fe4a3eef7de7225              # double 0.64501140987301098
	.quad	0x3fc5b394c6c4a22c              # double 0.16954288201783763
	.quad	0x3fbf189bdcc53400              # double 0.12146925105953699
	.quad	0x3fe5db4407621ffa              # double 0.68301583711672653
	.quad	0x3fe5d9baf9d02c03              # double 0.68282841483721801
	.quad	0x3feb315622179cd6              # double 0.84977251680984511
	.quad	0x3fdb98ee3530da48              # double 0.43120913690964757
	.quad	0x3feb8a1e9b77bb86              # double 0.86061029782091292
	.quad	0x3fcc9683327501a4              # double 0.22334327663157894
	.quad	0x3fee9f3c9b1ca5d9              # double 0.95693807883543081
	.quad	0x3feb4a479cdb501e              # double 0.85281735073158749
	.quad	0x3fef5ef298d1e80c              # double 0.98034028861661814
	.quad	0x3fe8632aecafa69e              # double 0.76210542896042788
	.quad	0x3feb11c3d7d628f3              # double 0.84591858058527547
	.quad	0x3fba4a812f0e65d8              # double 0.10269935034593602
	.quad	0x3fc56e7a869a55f4              # double 0.1674340398064228
	.quad	0x3fee8cc27d268a55              # double 0.95468258326975308
	.quad	0x3f8d722e716cfa00              # double 0.014377940021970126
	.quad	0x3fe5945f1f3adb7e              # double 0.67436176395027281
	.quad	0x3fc89d721ed9b080              # double 0.19230486399044722
	.quad	0x3fe323134986182a              # double 0.59803165779226686
	.quad	0x3fc8d55f4c437194              # double 0.19401160453606947
	.quad	0x3fea91dc6640b752              # double 0.83030528994798147
	.quad	0x3fcd528024722dac              # double 0.22908021716680815
	.quad	0x3fe94333d2413004              # double 0.78945342126235162
	.quad	0x3fe82a501c1deec1              # double 0.75516515246950899
	.quad	0x3fee0b316c1af274              # double 0.9388663398199939
	.quad	0x3fc30fd52f9c2b70              # double 0.14892067742070081
	.quad	0x3fea824b113a89b2              # double 0.82840493550275185
	.quad	0x3fbbd07c800a4118              # double 0.10864999891260074
	.quad	0x3fdbffcb6b165926              # double 0.43748746354812551
	.quad	0x3fd14fca11780e68              # double 0.27049495416597447
	.quad	0x3fe8e01cb287f156              # double 0.77735743398037971
	.quad	0x3fc597859f881e18              # double 0.16868658342012632
	.quad	0x3fe37399a6a60e06              # double 0.60786135243000738
	.quad	0x3fd53a0d5d788564              # double 0.33166822555548081
	.quad	0x3fe26fda4ff27e75              # double 0.57615390410133094
	.quad	0x3fd62a5a5211ff70              # double 0.34633501066854588
	.quad	0x3fed082dc04552bd              # double 0.90724837830438043
	.quad	0x3fc5b13d84b0ccb0              # double 0.16947144488367405
	.quad	0x3fc3009f4e22dbc8              # double 0.14845649066202626
	.quad	0x3fd92165849ab806              # double 0.39266336393018297
	.quad	0x3fef2bfbe3f1cb9a              # double 0.97411913414395035
	.quad	0x3fd7eea68875a4d4              # double 0.37394107175948688
	.quad	0x3fead46323a57f93              # double 0.83842617952540122
	.quad	0x3feea732ded5e50d              # double 0.95790999910892227
	.quad	0x3fd93f6c46d6b7b2              # double 0.39449603002401112
	.quad	0x3feca51074b89370              # double 0.89514944836683519
	.quad	0x3fe5bdf202af662d              # double 0.67943668865627205
	.quad	0x3fe409e81b15d317              # double 0.6262093094834168
	.quad	0x3fe6be2b692a3bfc              # double 0.71071405925783848
	.quad	0x3fd83cb29dc59e08              # double 0.37870469481865188
	.quad	0x3fd77608ad9ef1b0              # double 0.36657921748317346
	.quad	0x3fe4efeeeee59622              # double 0.65428873691115919
	.quad	0x3fe5998583b69b5c              # double 0.67499042248969543
	.quad	0x3fd66ec0739fc74e              # double 0.3505097512380545
	.quad	0x3fcb2ad9324032e0              # double 0.2122451300969237
	.quad	0x3fe2bc1329d9dc97              # double 0.58545835660960932
	.quad	0x3f91261e4998e320              # double 0.016746972314851338
	.quad	0x3fdada838d51f052              # double 0.41958702851093677
	.quad	0x3fe1b953821db433              # double 0.5538728276566246
	.quad	0x3fd12edf40871714              # double 0.26848584462673952
	.quad	0x3fdb2a973f187ae6              # double 0.42447453653032452
	.quad	0x3fc66814ca0cbd68              # double 0.17505130639754474
	.quad	0x3fa6db06cc3b0e60              # double 0.044639789991859358
	.quad	0x3fe9568ddb507f79              # double 0.79181568941929392
	.quad	0x3fd8a6996842e738              # double 0.38516841108104272
	.quad	0x3fdaff89d9a2435e              # double 0.42184683087639552
	.quad	0x3fd4e04a529bd094              # double 0.32618959491015542
	.quad	0x3fd83443df6cc43a              # double 0.3781900102504242
	.quad	0x3fe174987914e462              # double 0.54548286103012011
	.quad	0x3fe689e2d3a725f9              # double 0.70433179224454456
	.quad	0x3fe55c3a6fec62bf              # double 0.66750833377871988
	.quad	0x3feb22edfffdd46e              # double 0.84801387785286209
	.quad	0x3fab37fa416de520              # double 0.053161449896786062
	.quad	0x3fdbb4f78debf70a              # double 0.43292034968895676
	.quad	0x3fe8523cb51b6e0f              # double 0.76003871319284311
	.quad	0x3fdb90c310d8dc10              # double 0.4307105698130167
	.quad	0x3f91f5d3945c3940              # double 0.017539316110793068
	.quad	0x3fe409a7b3b2b0a0              # double 0.62617859933154207
	.quad	0x3fe7bf7b0d60be4f              # double 0.74212410557624675
	.quad	0x3fe495cc180d2ed7              # double 0.64328579614217574
	.quad	0x3fe1792b5e5c63dc              # double 0.54604118757117304
	.quad	0x3fd484d2f1be9832              # double 0.32060693366873061
	.quad	0x3f93ad99e37e0d20              # double 0.019216923246415551
	.quad	0x3fc5573a80822a38              # double 0.16672450327708233
	.quad	0x3fd8b7d687739de0              # double 0.38622058131883641
	.quad	0x3fc1d3c85f3715c8              # double 0.13927559518030663
	.quad	0x3fd72e378990a40a              # double 0.36219585832674339
	.quad	0x3fd140030420b7da              # double 0.26953196910005561
	.quad	0x3fe4ace979807d9d              # double 0.6461074231228171
	.quad	0x3fdfb686703014b8              # double 0.49551545101014538
	.quad	0x3fe1155137a4b91f              # double 0.53385220401631617
	.quad	0x3fefa7a2b41cabef              # double 0.98921332529186922
	.quad	0x3feeaa1497f62bb6              # double 0.95826177291870951
	.quad	0x3fdbf3e7d07d295e              # double 0.43676181183095319
	.quad	0x3fedffcd45d1d1c4              # double 0.93747581135408397
	.quad	0x3fed6b72aaed343d              # double 0.91936620124909718
	.quad	0x3fd6aba44f160caa              # double 0.35422618602042155
	.quad	0x3fddc177eeb17db0              # double 0.46493337926764422
	.quad	0x3fdba70e415cee28              # double 0.43207126982790323
	.quad	0x3feda162bd80d3b0              # double 0.92595040333127621
	.quad	0x3fe47827e423c9f4              # double 0.63966745909266232
	.quad	0x3fe17bb01e20afce              # double 0.54634862789452554
	.quad	0x3fe871e546d9c732              # double 0.76390327299143324
	.quad	0x3fe432c8ef1c1e35              # double 0.63119932843341664
	.quad	0x3f919b4056764fa0              # double 0.017193799283247935
	.quad	0x3faa487e5bdf30f0              # double 0.051334332194160726
	.quad	0x3fcb3c44ff9dfdb0              # double 0.21277677995020161
	.quad	0x3fe418994b612770              # double 0.62800278399048004
	.quad	0x3fe2ab0da807b3a4              # double 0.58338053530097911
	.quad	0x3fdc75c83ffd2c9e              # double 0.4446888565914352
	.quad	0x3fea29c59b1ce0ce              # double 0.81759910865278029
	.quad	0x3fe0f85820873675              # double 0.53031545975836869
	.quad	0x3fd0284240e40db2              # double 0.25245720231051927
	.quad	0x3fe3ba0b2c3b37f2              # double 0.61646040572099836
	.quad	0x3fbfe9d9b1699d48              # double 0.12466202336655841
	.quad	0x3fe90b098e25fbb8              # double 0.78259732974389973
	.quad	0x3fe2906ae21fb3fc              # double 0.58012909092724341
	.quad	0x3fcd615fcaa323c0              # double 0.22953412432096165
	.quad	0x3fe49eb1f7127130              # double 0.64437196975953803
	.quad	0x3fda1e346795c790              # double 0.40809354892473326
	.quad	0x3feb8e3e7ed39513              # double 0.8611137845115614
	.quad	0x3fef2884087750e2              # double 0.97369577077418179
	.quad	0x3fefd8bff71ef77a              # double 0.99520872369588109
	.quad	0x3fd9448baa5a6bde              # double 0.39480868946128378
	.quad	0x3fe663dca14a2dea              # double 0.69969016553789953
	.quad	0x3fe2d1c91fb987f3              # double 0.58810859867321452
	.quad	0x3fd4aedcae3886fa              # double 0.32317273153067527
	.quad	0x3fe2eb4372f87173              # double 0.59121868567630853
	.quad	0x3fd9045eb2e0ceec              # double 0.39089171856470162
	.quad	0x3fe0e947ed872695              # double 0.52847668068098363
	.quad	0x3fbafa192a9093f0              # double 0.10537869729212423
	.quad	0x3fe61ff22d8eb750              # double 0.69139965913721291
	.quad	0x3fe000cee036a3a5              # double 0.50009864608465604
	.quad	0x3fe519529ee10def              # double 0.65934115439489271
	.quad	0x3fe94b3163a94b3c              # double 0.79042882409189685
	.quad	0x3fe8f670e6cb6fe6              # double 0.78008313252530281
	.quad	0x3fe179d760da6d96              # double 0.54612320820472138
	.quad	0x3fd60378a92bed54              # double 0.34396187325156302
	.quad	0x3fb5ca6ef0af3ca8              # double 0.085120137940281837
	.quad	0x3fe6837b4e650611              # double 0.70355000792932476
	.quad	0x3fd532d60aace6fc              # double 0.33122778933066832
	.quad	0x3faa9f56041e8750              # double 0.051996887209738163
	.quad	0x3fd39590e114b0bc              # double 0.30600378017949104
	.quad	0x3fb080b2fb5122f0              # double 0.06446379314105477
	.quad	0x3fb38b14c1fa4490              # double 0.076340958936514491
	.quad	0x3fec4958dc154a1a              # double 0.88395350441925591
	.quad	0x3fdb60be58d4f970              # double 0.42777975726121209
	.quad	0x3fe3ceb08f007c83              # double 0.61898067407663893
	.quad	0x3fe4907ffe79a442              # double 0.64263915731601906
	.quad	0x3fe3f7180f521aab              # double 0.62391283981636059
	.quad	0x3fde8d24702a71d2              # double 0.47736464456263861
	.quad	0x3fbe46b2732690b0              # double 0.11826625167174387
	.quad	0x3fd49ae7732e9cc8              # double 0.32195459602594356
	.quad	0x3fe75d68b602f892              # double 0.73015246914998699
	.quad	0x3fe1d7786ed9434a              # double 0.55755254411824606
	.quad	0x3fe43f5e6c6c0f67              # double 0.63273545433228839
	.quad	0x3fe8f69642d3d181              # double 0.78010094692449183
	.quad	0x3faec69dfc1fe9d0              # double 0.060109078432975971
	.quad	0x3fd3b2034c596694              # double 0.30774004417399081
	.quad	0x3fe4a3c42241b509              # double 0.64499098482852546
	.quad	0x3febb68fbad7c84e              # double 0.86603533261064469
	.quad	0x3febf860e42e7c52              # double 0.87406963888850897
	.quad	0x3fc9061e2c297c18              # double 0.19549920231199347
	.quad	0x3fec69000a9059cf              # double 0.8878174024892419
	.quad	0x3feafca72ff52d0d              # double 0.84334143988363197
	.quad	0x3fb5e99820f40458              # double 0.085595615430081096
	.quad	0x3feff717629d7f5a              # double 0.99891251812730819
	.quad	0x3fc1fabb79aaae08              # double 0.14046424332387653
	.quad	0x3fd85eb26fae11ec              # double 0.38077984720464886
	.quad	0x3fe38416862b8cf5              # double 0.60987402157880288
	.quad	0x3fd0e8560b2bbe52              # double 0.26418067065148876
	.quad	0x3fb803c3b9975bc8              # double 0.09380744248424755
	.quad	0x3fd54190bc8744d0              # double 0.33212679301238968
	.quad	0x3fe4fc0ae2e0c6b9              # double 0.6557669097148483
	.quad	0x3fca2ad30b4f7124              # double 0.20443189670812345
	.quad	0x3fbc19e8bf5c13e0              # double 0.10977034255854745
	.quad	0x3fe76d900c43a970              # double 0.7321243514573279
	.quad	0x3fcc96d0353368f4              # double 0.22335245702453899
	.quad	0x3fe16220a9f4f6b0              # double 0.54322846598343766
	.quad	0x3fc562b09b9d5d1c              # double 0.16707427595495339
	.quad	0x3fbe2cfb7c331410              # double 0.11787387640204394
	.quad	0x3fe8c3bae3bb09ee              # double 0.77389282683026095
	.quad	0x3fd401189c0bc426              # double 0.31256690253127528
	.quad	0x3fe724baabeb8dca              # double 0.72323354318762623
	.quad	0x3fbebbb5b9ead800              # double 0.12005172528265007
	.quad	0x3fd2708a41cbc548              # double 0.2881189005411966
	.quad	0x3fed76ce9bcbb3ba              # double 0.92075281552171551
	.quad	0x3fe22ace0d70c77b              # double 0.56772520661455361
	.quad	0x3fc35f9175650544              # double 0.15135400993498582
	.quad	0x3fee091068537ef8              # double 0.93860645652963992
	.quad	0x3feefea8d4ec0015              # double 0.96858636461547809
	.quad	0x3fe08df68e8c9000              # double 0.51732948152175595
	.quad	0x3fe1a5e5123be86c              # double 0.55150083123522853
	.quad	0x3fd1cb1f449f521e              # double 0.27802259160424281
	.quad	0x3fdd408722a807d0              # double 0.45706346878443771
	.quad	0x3feae79039c9010d              # double 0.8407670143715521
	.quad	0x3fedc30077618b56              # double 0.93005393330200081
	.quad	0x3fe3aaa28f64cfef              # double 0.61457946783639084
	.quad	0x3fe5967412bcdd60              # double 0.67461589488713614
	.quad	0x3fe90c0fc953bcf1              # double 0.78272237130832256
	.quad	0x3fe39322cbe2f1aa              # double 0.61171092816907913
	.quad	0x3feba9b70ad510fb              # double 0.86446716418916425
	.quad	0x3fad56d9a6c2e170              # double 0.057303239447210497
	.quad	0x3feadaff10734429              # double 0.83923295224133654
	.quad	0x3fa91568d01691e0              # double 0.048991465951335078
	.quad	0x3fe8513bd9326655              # double 0.7599162332655377
	.quad	0x3fc1e0d92aa873dc              # double 0.13967432578002004
	.quad	0x3fd626d7724648fc              # double 0.34612070235847603
	.quad	0x3fc8a59f73868130              # double 0.19255440846337413
	.quad	0x3fe4dbf1f9e37eb8              # double 0.65184878164651305
	.quad	0x3f92c4f745fd3c40              # double 0.018329490324785036
	.quad	0x3fdb0625a02b05e2              # double 0.42225018159305538
	.quad	0x3feed2246e391b89              # double 0.9631521370691739
	.quad	0x3fe81e2584fdd75f              # double 0.75368000006595171
	.quad	0x3fe6256f2f16624e              # double 0.69206961819424762
	.quad	0x3fe6af4a034bfba0              # double 0.70889759677799091
	.quad	0x3fec849a8e58ca2a              # double 0.89118697931400459
	.quad	0x3fe1c3daeade5258              # double 0.55515809891455614
	.quad	0x3fd286b9a96c8eaa              # double 0.28947297616307799
	.quad	0x3fd372625a0b8034              # double 0.30385645669412331
	.quad	0x3fe14943bbb26080              # double 0.54019343051460567
	.quad	0x3fc9683e9eee7e44              # double 0.19849379310925219
	.quad	0x3f850d9926bb49c0              # double 0.010279842848295639
	.quad	0x3fedc80e9bebf6de              # double 0.9306710286470794
	.quad	0x3fd2fbb112aa6570              # double 0.29661204169095523
	.quad	0x3fe3f86914507739              # double 0.62407354323997943
	.quad	0x3fd682bb8a5fec90              # double 0.35172928345827703
	.quad	0x3faa16c4137d13b0              # double 0.050954940203644994
	.quad	0x3fc87b1ceae58e90              # double 0.19125710935178519
	.quad	0x3f8f6de7de73eb40              # double 0.015346347309323272
	.quad	0x3fd8cd3503672132              # double 0.38752484638509366
	.quad	0x3fedfb52713964f8              # double 0.9369289599809738
	.quad	0x3fd64da7992d17ca              # double 0.34848966559036099
	.quad	0x3fe9dc80312e5ed9              # double 0.8081665955132521
	.quad	0x3febd8639c2d945c              # double 0.8701646852829401
	.quad	0x3f87fb07e94edac0              # double 0.01170927220105733
	.quad	0x3fe05c3c61a70b07              # double 0.51125926087147
	.quad	0x3fdf4a70db7ae09c              # double 0.48891850885002852
	.quad	0x3fee83311484baef              # double 0.95351461417689432
	.quad	0x3fe99fcdfc577a54              # double 0.80075740132799433
	.quad	0x3fe9059b88992a60              # double 0.78193451575618766
	.quad	0x3fda0b41cd9845ec              # double 0.40693707540148583
	.quad	0x3feba73e887dc04d              # double 0.86416556032600911
	.quad	0x3fd37f88b802c09a              # double 0.30465906114387453
	.quad	0x3fee81de606b0bac              # double 0.95335310775441461
	.quad	0x3fe211a2e5634490              # double 0.56465287020013655
	.quad	0x3fdac5d3c8eaaa92              # double 0.41832441921966634
	.quad	0x3fe3a2c23f68cd19              # double 0.61361801514286463
	.quad	0x3fdf7845ebf56664              # double 0.49171588938552291
	.quad	0x3fd2841b9ac47d70              # double 0.28931322206513865
	.quad	0x3fe63220fe8cc277              # double 0.69361924855009149
	.quad	0x3fbacef592beba18              # double 0.10472044785158408
	.quad	0x3feffd26caa8fdbb              # double 0.99965228635840419
	.quad	0x3fe1555064218e73              # double 0.54166431004382642
	.quad	0x3faa9e26b3b33b20              # double 0.051987847744035642
	.quad	0x3fe1459e923d2faa              # double 0.53974846422487599
	.quad	0x3fcf3ad5662ec458              # double 0.24398295869244424
	.quad	0x3fe5165ba41752f4              # double 0.65897924469990565
	.quad	0x3fe9abbcd0fc5e2a              # double 0.80221405808965085
	.quad	0x3fddbd14d321f300              # double 0.46466560953540181
	.quad	0x3fd8d2afb1bf2f58              # double 0.38785927160346523
	.quad	0x3fd60ddb00dabdfc              # double 0.34459567149585246
	.quad	0x3fd737fba35869a8              # double 0.36279192878432776
	.quad	0x3feb3228375437b8              # double 0.84987269216957539
	.quad	0x3fdb65a735faf322              # double 0.42807941695700624
	.quad	0x3fee11067d3cdb42              # double 0.93957828960888201
	.quad	0x3fe06eba2b9f950f              # double 0.51351650734128096
	.quad	0x3fd4c4e5af8e3332              # double 0.32451765197838534
	.quad	0x3fd9ca8b10cb7f4c              # double 0.40298725738647501
	.quad	0x3fd70249c0ca07d8              # double 0.35951465441769193
	.quad	0x3fe964ce4843c0be              # double 0.79355539430800781
	.quad	0x3fecf90001894387              # double 0.90539551067387058
	.quad	0x3f82bf7e5f57d300              # double 0.009154307636870751
	.quad	0x3fccf171a49bc6d0              # double 0.22611828362965136
	.quad	0x3fcb0a5042f5a838              # double 0.21125224370490669
	.quad	0x3fc6889513fb84a4              # double 0.17604316211421633
	.quad	0x3fef8708085e5232              # double 0.98523332247220297
	.quad	0x3fb36a405b557598              # double 0.075840017603204024
	.quad	0x3fe0e2dd8a05dcf9              # double 0.52769352872465369
	.quad	0x3faec22fb6082130              # double 0.060075274439500226
	.quad	0x3fcb0447b486b7c8              # double 0.21106811823614025
	.quad	0x3fe013342d60e974              # double 0.50234421599388535
	.quad	0x3feb95ecb03150ae              # double 0.86205133831619718
	.quad	0x3fb58c7829b08ae0              # double 0.084174642732743887
	.quad	0x3feb04b8b123410b              # double 0.84432634923180794
	.quad	0x3fd8b4ae57d34882              # double 0.38602789475147159
	.quad	0x3fe2849cadbb0e33              # double 0.57868799144529814
	.quad	0x3fcb53b51f73bb3c              # double 0.21349205051179776
	.quad	0x3fe0cc9279857281              # double 0.52497218832611747
	.quad	0x3fe89a5dd8d3941f              # double 0.76884357785150204
	.quad	0x3fa63a77380c8d70              # double 0.04341480788414287
	.quad	0x3fe921c6ffd88e25              # double 0.78537321061998411
	.quad	0x3fb510e70be39b18              # double 0.082289162066086496
	.quad	0x3fcd5ab609f68e58              # double 0.22933078276138263
	.quad	0x3fe836b3f172e146              # double 0.75667760045966115
	.quad	0x3fc458ebe227bbf4              # double 0.15896366636977144
	.quad	0x3fe8f63cc4be26e9              # double 0.78005827356647928
	.quad	0x3fd29591c451abce              # double 0.29037899181156213
	.quad	0x3fd46c19973b8e4c              # double 0.31909789818584922
	.quad	0x3fe0bb1c92d01988              # double 0.5228407733382463
	.quad	0x3fa323cabcb9a0c0              # double 0.037382445848210377
	.quad	0x3fdaabade50ae9cc              # double 0.4167284714455064
	.quad	0x3fe8de0a6e3e7bf7              # double 0.77710458309218111
	.quad	0x3fe95a4fb34ef78f              # double 0.79227433224854049
	.quad	0x3fe5620e6b61ee5e              # double 0.6682197663607885
	.quad	0x3fefffc8e266f21c              # double 0.99997371882597319
	.quad	0x3fe3de44819a4e01              # double 0.62088227570569654
	.quad	0x3fe32ce4e8473cc8              # double 0.59923024527406543
	.quad	0x3fcae3919677cbac              # double 0.21006984564845987
	.quad	0x3fb6eb629e6eb260              # double 0.089529193572795318
	.quad	0x3fe71593f20fc018              # double 0.72138402249948097
	.quad	0x3fadf90478127650              # double 0.058540477425805038
	.quad	0x3fc7bcee37cee174              # double 0.18545320248609765
	.quad	0x3fcfb7f5a4a88c04              # double 0.24780149974785115
	.quad	0x3f8c02dda6e64980              # double 0.013677341132994014
	.quad	0x3fe721f0f4d680cf              # double 0.72289321727660105
	.quad	0x3fcd9af6687f3f90              # double 0.23129158117671667
	.quad	0x3fd4cb2cb35e47aa              # double 0.32490079418595974
	.quad	0x3fe6f9c2f402a97d              # double 0.71798846872597688
	.quad	0x3fe9c70a6b599e5c              # double 0.80554696051417407
	.quad	0x3fe4bd46c4c92a29              # double 0.64810503420568921
	.quad	0x3fcd5c78439b7c7c              # double 0.22938445378438022
	.quad	0x3fc09e35f576e834              # double 0.12982820973940223
	.quad	0x3fdcaffa4ebc56b6              # double 0.44824083031685846
	.quad	0x3fe6af5bcc1cb2ed              # double 0.70890607705731912
	.quad	0x3f8d3ad2f0c6d940              # double 0.014272354100154261
	.quad	0x3fe1af7cb2dfcd7b              # double 0.5526717656743324
	.quad	0x3fce9032c08a26e0              # double 0.23877558137274146
	.quad	0x3fcf30fd9bc441f0              # double 0.24368257623474632
	.quad	0x3fd0fec352e883a2              # double 0.26554949852475762
	.quad	0x3fef031133ef31f8              # double 0.96912441390446613
	.quad	0x3fe2e3866fcfa29b              # double 0.59027406538105553
	.quad	0x3fb455d399958268              # double 0.079434609409426593
	.quad	0x3fedd01b236ee82d              # double 0.93165356560280588
	.quad	0x3fd88a235b23776e              # double 0.3834312810921493
	.quad	0x3fcfa0c8e7372f90              # double 0.24709426202604989
	.quad	0x3fa0ebb84cd10cc0              # double 0.03304840028479239
	.quad	0x3fd0dc1c7e622592              # double 0.26343452779891507
	.quad	0x3fab25d5b55d1ea0              # double 0.053023031605843984
	.quad	0x3fc00a933fa2169c              # double 0.125322729178312
	.quad	0x3fd5357b9dce423a              # double 0.33138933573448848
	.quad	0x3fb568aff920ef80              # double 0.083628652880120668
	.quad	0x3fe6826e85bb49fc              # double 0.70342184180691403
	.quad	0x3fcf5dd24cbfcffc              # double 0.24505070445559329
	.quad	0x3fe6eea9beb8f14e              # double 0.71663367510294917
	.quad	0x3fd2cff61dbe5830              # double 0.29394295601503284
	.quad	0x3fb80436a52701f0              # double 0.09381429225960125
	.quad	0x3fe37915b6baba3c              # double 0.60853086175286064
	.quad	0x3fde2b45b6c12f78              # double 0.47139113280422107
	.quad	0x3fd931ba59d540b8              # double 0.39366015217548123
	.quad	0x3fc39b70710d286c              # double 0.15318112869346423
	.quad	0x3fe8742eca4b5781              # double 0.76418246756178132
	.quad	0x3fd5409dd5219590              # double 0.33206888021080605
	.quad	0x3fe9c78ee2011204              # double 0.80561012402955656
	.quad	0x3fe0af4b5f45b184              # double 0.52139824493274078
	.quad	0x3fbb64d00ee48068              # double 0.10700703013981328
	.quad	0x3feaa39097a5c5be              # double 0.83246640795385196
	.quad	0x3fc9ab1812f9db4c              # double 0.20053387571871395
	.quad	0x3fbeb9afc26a1268              # double 0.12002085205501489
	.quad	0x3fc233363046c368              # double 0.14218785626647024
	.quad	0x3fdb04e87ce005ea              # double 0.42217457003434211
	.quad	0x3fcfe6f2f373c6ec              # double 0.24923550498311131
	.quad	0x3fdaa976087ae6cc              # double 0.41659308269627782
	.quad	0x3fef75f3b0b586fc              # double 0.98314842713827443
	.quad	0x3fe8e9b8d60fd857              # double 0.77853051957095942
	.quad	0x3fe79d661be91d12              # double 0.7379637284401801
	.quad	0x3feda70a147cd3d3              # double 0.92664054872022417
	.quad	0x3fbb1ce0b12e7a20              # double 0.10590938878747425
	.quad	0x3fa098482d483200              # double 0.032411819007482023
	.quad	0x3fe667c3a520dad3              # double 0.70016653300884923
	.quad	0x3fe34a35835c9570              # double 0.60280872017453468
	.quad	0x3fe2cc9863b9f9a5              # double 0.58747500875306413
	.quad	0x3fe24082fa58be8c              # double 0.57037495513755365
	.quad	0x3fb5077fc8152368              # double 0.082145677898677882
	.quad	0x3fd03aa16ee56556              # double 0.25357852773375578
	.quad	0x3fef8e9ef0444688              # double 0.98615977217760164
	.quad	0x3fcdc663746c03cc              # double 0.23261683640160269
	.quad	0x3feb601cf9079a44              # double 0.85548256529438804
	.quad	0x3fcbfec09c577304              # double 0.21871192582957388
	.quad	0x3fee7890bf117026              # double 0.95221745794288348
	.quad	0x3fd0231adae0edce              # double 0.25214263319841457
	.quad	0x3fde290c982a4cca              # double 0.47125544414411691
	.quad	0x3fe8d17bc9af9c6e              # double 0.77557172195237256
	.quad	0x3fee346d5f9a3d0b              # double 0.94389980957376574
	.quad	0x3fc5d7dfe9bae68c              # double 0.17065047180749493
	.quad	0x3fde866319452dfe              # double 0.47695233791156955
	.quad	0x3fe3e93c7c84e87c              # double 0.6222212249770247
	.quad	0x3fe37f31601d2dbe              # double 0.60927647373448912
	.quad	0x3fe60cb63786140f              # double 0.6890517315338246
	.quad	0x3fdbf884f3851068              # double 0.43704341679791137
	.quad	0x3fe0e04662447730              # double 0.52737731163845147
	.quad	0x3fec9f63832aa50a              # double 0.89445663088295757
	.quad	0x3fe0fdc9789994dd              # double 0.5309798579661692
	.quad	0x3feccc69dab1ea7c              # double 0.8999528190027628
	.quad	0x3fdd6c32d1d126c4              # double 0.45972891321126164
	.quad	0x3fbd68ad40bc6570              # double 0.11487849073855272
	.quad	0x3fec4f69ffc4a923              # double 0.88469409899451923
	.quad	0x3fee469e10116bdd              # double 0.94612029207507542
	.quad	0x3fe571a92d5f0cef              # double 0.67012461530285161
	.quad	0x3fd643a4552f846e              # double 0.34787853545100844
	.quad	0x3fda8093a546c436              # double 0.41409770145679958
	.quad	0x3fd6de08d8112b98              # double 0.35730191326427407
	.quad	0x3fde8b7f3749d262              # double 0.47726421736959967
	.quad	0x3fea2a335a98e3c5              # double 0.81765144057055095
	.quad	0x3fea2d48b403dc6f              # double 0.81802783164211046
	.quad	0x3fcff583a1e07bd8              # double 0.249679998437357
	.quad	0x3fc51efd5229ff88              # double 0.16500822555462613
	.quad	0x3fb070ca84f50aa0              # double 0.064221055469753541
	.quad	0x3fc92a1c5f5c9e90              # double 0.1965976205476534
	.quad	0x3f988b2d688a0580              # double 0.023968419557154785
	.quad	0x3fb24126ec6dbec0              # double 0.07130664131340847
	.quad	0x3fe3531e594fa9b4              # double 0.60389630740728828
	.quad	0x3fdd575bc10e0642              # double 0.45845693448072578
	.quad	0x3fed088404ca8149              # double 0.90728951392888135
	.quad	0x3fe89e626e0fbb6c              # double 0.76933404442193653
	.quad	0x3fecd1e5f3959959              # double 0.90062234473297587
	.quad	0x3fe172b260d76250              # double 0.54525107302021958
	.quad	0x3fb9b34d558b8108              # double 0.10039218271731809
	.quad	0x3fe02f8175bee4bd              # double 0.50579903599932374
	.quad	0x3fd0496c4aaa49be              # double 0.25448138515016783
	.quad	0x3fe0ead2b5a99e10              # double 0.52866492730112391
	.quad	0x3fe33d83fe9423ee              # double 0.60125922891995542
	.quad	0x3fd339690c0e3854              # double 0.30037904908465873
	.quad	0x3fb6a70ca0e43420              # double 0.088486470489627767
	.quad	0x3fd516d0be527464              # double 0.32951754175321057
	.quad	0x3fcbcf5109230f90              # double 0.21726429887905541
	.quad	0x3fea5b949d756357              # double 0.82367926362631294
	.quad	0x3fdf92d3febaeedc              # double 0.49333667636868284
	.quad	0x3fcfa38aa1b939a4              # double 0.24717839142472287
	.quad	0x3fc8ae1e29fd1c28              # double 0.19281365442495368
	.quad	0x3fec27086ba60523              # double 0.87976475739575155
	.quad	0x3fdb1510d4259e24              # double 0.42316075055575397
	.quad	0x3fc4d55c867d4728              # double 0.16276127402175544
	.quad	0x3fe71c58d0779373              # double 0.72221031872014263
	.quad	0x3fecbe67bbee5219              # double 0.8982428236509491
	.quad	0x3fdd918b4a89ab38              # double 0.4620083072574519
	.quad	0x3fe3857adf2cca04              # double 0.61004394139155282
	.quad	0x3fee2396110fdd41              # double 0.94184401829162578
	.quad	0x3fed547a4f893a66              # double 0.91656222853073355
	.quad	0x3fd9959a57066f5a              # double 0.39975603579090591
	.quad	0x3fd8cd97c6154d4a              # double 0.38754839271606001
	.quad	0x3f99b7e86bdb4760              # double 0.025115615447084294
	.quad	0x3fef1253eb4b9558              # double 0.97098728138068235
	.quad	0x3fd973290db24808              # double 0.39765383088627049
	.quad	0x3fe39f98c2e4f60d              # double 0.61323202195461735
	.quad	0x3fdae8a8ef258c1c              # double 0.42045043329398069
	.quad	0x3fe04983757754eb              # double 0.50897381727795954
	.quad	0x3fec475048df2de2              # double 0.88370527489444961
	.quad	0x3febed55db684d78              # double 0.87272160389913633
	.quad	0x3fe89b2e06fc9a01              # double 0.76894284596056661
	.quad	0x3fc8e8fc6a9c8edc              # double 0.19461016851084068
	.quad	0x3fc38bc03bbe2d4c              # double 0.15270235936291454
	.quad	0x3fee5f05d62768e2              # double 0.94909946276609625
	.quad	0x3fe9fb66b03be012              # double 0.81193861408883294
	.quad	0x3feef25945d3bc24              # double 0.9670835841951697
	.quad	0x3fc8e6b35ba56f78              # double 0.19454042410768202
	.quad	0x3fec0d39f9caac96              # double 0.87661455905380836
	.quad	0x3fe4d0bbfc831ba6              # double 0.65048026388909785
	.quad	0x3f74e311bb374000              # double 0.0050993626241080392
	.quad	0x3fe6f5edf5f05c90              # double 0.71752069506591631
	.quad	0x3fbc50fd801169b8              # double 0.11061081291828756
	.quad	0x3f6f0dc8b314d200              # double 0.0037907524025746486
	.quad	0x3feb99e8c235e7d7              # double 0.86253774577857711
	.quad	0x3fd11f83667175d8              # double 0.26754841808528118
	.quad	0x3fdea29b49883df6              # double 0.47867471867445432
	.quad	0x3fcef29a16e416d8              # double 0.24177862279628104
	.quad	0x3fe224919e06d2f3              # double 0.56696396698552431
	.quad	0x3fdf48cd47095d5a              # double 0.48881847321668703
	.quad	0x3fc320136c3cdf88              # double 0.14941637787864814
	.quad	0x3fe92e693cd84ecb              # double 0.78691541560916656
	.quad	0x3fefdac16fad2cc9              # double 0.9954535657101583
	.quad	0x3fc2571c3b600890              # double 0.1432833948056822
	.quad	0x3fa00f3d338cbee0              # double 0.031366264860819504
	.quad	0x3fa4cd57367fdd00              # double 0.040629125025526847
	.quad	0x3fdedc3341f44040              # double 0.48218995514708141
	.quad	0x3fe57baa8509c540              # double 0.67134595855728918
	.quad	0x3fcd15b1372f7d54              # double 0.2272244948826293
	.quad	0x3fcc19096629cb0c              # double 0.21951405991020356
	.quad	0x3fd29b5f033255c6              # double 0.29073310196085023
	.quad	0x3fe3ad39fb6b3af0              # double 0.6148958120846526
	.quad	0x3fea34e0f1279814              # double 0.81895491695900313
	.quad	0x3fc0761029b70600              # double 0.12860300099241329
	.quad	0x3fd73f61c4ff1dc0              # double 0.36324352491325484
	.quad	0x3febf913dd4dbfe3              # double 0.87415497992878632
	.quad	0x3fd05ecba3510970              # double 0.25578585575944768
	.quad	0x3f9e25fac5453820              # double 0.029441755571774419
	.quad	0x3fe8c31082c13737              # double 0.77381158388172977
	.quad	0x3fc585646689c200              # double 0.16813330656761138
	.quad	0x3fd580eb3b76e142              # double 0.33599358374660337
	.quad	0x3fe67beb5804807f              # double 0.70262686911520678
	.quad	0x3fba3eaafea3a388              # double 0.10251873699929892
	.quad	0x3fbfddc8982cc1f8              # double 0.1244778987427323
	.quad	0x3fe204f4a97a6d70              # double 0.56310494519440901
	.quad	0x3fe18efc68ee6d4e              # double 0.54870434278874725
	.quad	0x3fc79f153991192c              # double 0.18454232512358126
	.quad	0x3fe8cc1ee400fcdd              # double 0.77491707355502693
	.quad	0x3fe068fb2d930028              # double 0.51281508351531091
	.quad	0x3fdcb26f298bea38              # double 0.44839076096801334
	.quad	0x3fe43624d2c0fee6              # double 0.63160935557240516
	.quad	0x3fdaadcee14e0970              # double 0.41685840609002067
	.quad	0x3fe97f10baacf1e4              # double 0.79676090679236866
	.quad	0x3fee18d9eb413ad6              # double 0.94053359935954961
	.quad	0x3fcbdcd3c5365ae0              # double 0.21767661218173995
	.quad	0x3fca879a9c7e4274              # double 0.20726330415029148
	.quad	0x3fd6f3fbe42a3810              # double 0.35864159852724331
	.quad	0x3fd404b2d5f80706              # double 0.31278677840610702
	.quad	0x3fd0033625f8dfb0              # double 0.25019601543635428
	.quad	0x3fedcd1e063f8b14              # double 0.93128873081545515
	.quad	0x3fed3bbea4ae4946              # double 0.91354305423946225
	.quad	0x3fe93eb2691be32e              # double 0.78890343216980852
	.quad	0x3fefb9ebdc8b5008              # double 0.99144547534024329
	.quad	0x3fc03265bbb437dc              # double 0.12653800645097035
	.quad	0x3fd48abb623678a4              # double 0.32096752730456957
	.quad	0x3fd60af6bb1293b2              # double 0.34441917675786293
	.quad	0x3fa5f87d9b9a9c40              # double 0.042911458248731993
	.quad	0x3fd36212f0d4675e              # double 0.30286096113706218
	.quad	0x3fef16e07d7ec20c              # double 0.97154259215136695
	.quad	0x3fa8b01982722980              # double 0.048218533681466447
	.quad	0x3fe7479dd9f5073e              # double 0.72749226159815072
	.quad	0x3fe418f5100b9ed1              # double 0.62804654249063152
	.quad	0x3fdc9a94ed634fd2              # double 0.44693492109695143
	.quad	0x3fe08670259dce38              # double 0.51641089770277571
	.quad	0x3fef545a7819d7b0              # double 0.97904704529968534
	.quad	0x3fea69bd933be17c              # double 0.82540777927992747
	.quad	0x3fe3f97b9aa28dc7              # double 0.62420444681304665
	.quad	0x3fc9f6b219e51b64              # double 0.20284105553056542
	.quad	0x3fc6653b528ac8b0              # double 0.17496434717538056
	.quad	0x3fc9e3669c2ce190              # double 0.20225222230670825
	.quad	0x3fd672c994f4fd74              # double 0.35075606867390907
	.quad	0x3fe9d66e8ac487ba              # double 0.80742575743737821
	.quad	0x3fa7fb42d56ed9f0              # double 0.04683884482749423
	.quad	0x3fef8afbc2d34921              # double 0.98571575214217344
	.quad	0x3fdf28d2bf090e2a              # double 0.48686665206716617
	.quad	0x3fec244aaaf13c0d              # double 0.87943013560459493
	.quad	0x3fe3ac3e0de97686              # double 0.6147756835668623
	.quad	0x3feda32d12f65b7c              # double 0.92616895392971754
	.quad	0x3fd7838f5dcce602              # double 0.36740478668397725
	.quad	0x3fc9229c8f6953f8              # double 0.19636876108657453
	.quad	0x3fc052252380cb44              # double 0.12750686868238337
	.quad	0x3fcf992626c5aec0              # double 0.24686123746083943
	.quad	0x3feb0e96bd7065b5              # double 0.84553086280646161
	.quad	0x3fec17e439e8768b              # double 0.87791644392173518
	.quad	0x3fd84b0ff746a59c              # double 0.37958144329112442
	.quad	0x3fb6de3776bad9f0              # double 0.089328257071293881
	.quad	0x3fb922fc4df6b078              # double 0.098190087350930599
	.quad	0x3fe0077cc4c435f8              # double 0.50091398650118801
	.quad	0x3fe143f756f1650d              # double 0.53954665165943683
	.quad	0x3fe941a8b9b41588              # double 0.78926502485471506
	.quad	0x3fdffbe0baff8f00              # double 0.49974840413618438
	.quad	0x3fe773283265b912              # double 0.73280725329621732
	.quad	0x3feb9d4d183352d3              # double 0.86295180060059307
	.quad	0x3fb3ed39b3b3d138              # double 0.077838522312792757
	.quad	0x3fed86a9cacd7afb              # double 0.9226883851041231
	.quad	0x3fed1c401d1d401c              # double 0.90969854055765919
	.quad	0x3fe184b2933d9ad0              # double 0.54744843252123054
	.quad	0x3fed905e3c50fb88              # double 0.9238730600408056
	.quad	0x3fe31ab1751709d4              # double 0.59700844639911077
	.quad	0x3fef1feaee0638c9              # double 0.97264620293733472
	.quad	0x3fd4b5defff46486              # double 0.32360053058216243
	.quad	0x3fe67359c9c75ecb              # double 0.70158090028686482
	.quad	0x3fb3be0de8aab508              # double 0.077118748954223659
	.quad	0x3fb0738890635780              # double 0.064262900591840477
	.quad	0x3fc0f13df5c99b2c              # double 0.13236212254852242
	.quad	0x3fe912a1dbb02c1c              # double 0.78352444560858058
	.quad	0x3fe4c94a267e1eed              # double 0.64957149046037232
	.quad	0x3fe9d3fc45653570              # double 0.80712712816027299
	.quad	0x3feee89f0391ee81              # double 0.96589613625788228
	.quad	0x3fe41553c0995ea4              # double 0.62760341279041088
	.quad	0x3febc8971182aaf5              # double 0.86823609752658959
	.quad	0x3fd5c51cb63a656e              # double 0.3401557712146176
	.quad	0x3fe8b81349170374              # double 0.77247013354654692
	.quad	0x3fc5095b329564d4              # double 0.16434802980328433
	.quad	0x3fdbbaafa01bd6da              # double 0.43326941142673336
	.quad	0x3fe77a2c9bc59e0b              # double 0.73366384910781457
	.quad	0x3f99deacbbe1b4c0              # double 0.025263499228846298
	.quad	0x3fde896c192a7c12              # double 0.47713758905041559
	.quad	0x3fbeaf4d07797280              # double 0.11986237938385536
	.quad	0x3fc4c7212c038db4              # double 0.16232695244899065
	.quad	0x3fdd893aeac64782              # double 0.46150086333465634
	.quad	0x3feaae0ddf9a68ea              # double 0.83374684975140423
	.quad	0x3fef53a130789ed7              # double 0.97895869700456727
	.quad	0x3feec6cfa5009c6f              # double 0.96176893450764378
	.quad	0x3fd7461fe31bde9a              # double 0.36365506342506537
	.quad	0x3fe3d0698d750e00              # double 0.61919095638626231
	.quad	0x3fd7c9326d61568a              # double 0.37165508920347945
	.quad	0x3fd6d78367c99488              # double 0.35690388808718199
	.quad	0x3f98e242e094d220              # double 0.024300618131024021
	.quad	0x3fd8d48c63817c0c              # double 0.38797292439807118
	.quad	0x3fc379e1e8b47ab4              # double 0.15215705740498253
	.quad	0x3febaaae667cb927              # double 0.86458511368781366
	.quad	0x3fecd86f4fa26e36              # double 0.90142026475536485
	.quad	0x3fbb88e389c58430              # double 0.10755750764430227
	.quad	0x3fe3308633d10506              # double 0.59967336769491975
	.quad	0x3fcf4f9a382cf474              # double 0.24461677306127039
	.quad	0x3fd07986c4e1622c              # double 0.25741738535501457
	.quad	0x3fe3cc355b7ef87f              # double 0.61867778654392669
	.quad	0x3fc17143575fa6d0              # double 0.13626901403704617
	.quad	0x3fe2b6d67a4c519e              # double 0.58481906782485615
	.quad	0x3fd6cfd901895c08              # double 0.35643601560644855
	.quad	0x3fa4c6972a6540e0              # double 0.040577625203356282
	.quad	0x3fb888ba66373f28              # double 0.09583630557540046
	.quad	0x3fe0086f4724664f              # double 0.5010296239372084
	.quad	0x3fc19fa6b22b9358              # double 0.13768466663091306
	.quad	0x3fe26f613ff8241f              # double 0.57609617704395422
	.quad	0x3fb272dbd997e8a8              # double 0.072065106032740744
	.quad	0x3fe7a73603f4a391              # double 0.73916149876196091
	.quad	0x3fee9f6a34d0b56e              # double 0.95695982280237302
	.quad	0x3fee5e87559bda0e              # double 0.94903914185016602
	.quad	0x3facafbf1a0859b0              # double 0.056028339317140463
	.quad	0x3f8540b90e4c3a80              # double 0.010377355336030236
	.quad	0x3fb615db56b5ecf0              # double 0.086271008176413976
	.quad	0x3fe42ffbbe71325d              # double 0.63085734554040196
	.quad	0x3feb61a9af265364              # double 0.85567173203399393
	.quad	0x3fea835c85e7a2a2              # double 0.82853532937322805
	.quad	0x3fd1e7fe7a4d9bd4              # double 0.27978479331653472
	.quad	0x3fe1f4003dff5033              # double 0.56103527172900269
	.quad	0x3fb6c50ab3896748              # double 0.088944119293413171
	.quad	0x3fb391ebf13128f8              # double 0.076445337662480628
	.quad	0x3fe13a97aabcd441              # double 0.53840239855947669
	.quad	0x3fe3f6b66138b572              # double 0.62386626232698306
	.quad	0x3fc8cef630c9d134              # double 0.19381596929782463
	.quad	0x3fed1295fddd00ce              # double 0.90851878721880452
	.quad	0x3fda9498aa80cb2e              # double 0.41531960154240977
	.quad	0x3fd5af11ff058956              # double 0.33881044296699281
	.quad	0x3f94906b322d0480              # double 0.0200821637511166
	.quad	0x3fedbb1c9eb3823f              # double 0.9290907954819615
	.quad	0x3fe496782ec1d932              # double 0.64336785442609412
	.quad	0x3fbd7fa366ba26a0              # double 0.11522885568606478
	.quad	0x3feea895c8acf805              # double 0.95807923502411596
	.quad	0x3fdbff0d45be90e8              # double 0.43744212923981118
	.quad	0x3fec255eda42dbed              # double 0.8795618307984775
	.quad	0x3fb2e9a19ac0f5d8              # double 0.073877430230786856
	.quad	0x3fedf6931961f8d1              # double 0.93634943921622427
	.quad	0x3fcf799903442cf8              # double 0.24589836749542093
	.quad	0x3fe7f12d084fe069              # double 0.74819041846695911
	.quad	0x3fa700b17ddf0c30              # double 0.044927164664408159
	.quad	0x3fec866b2aaafa1e              # double 0.89140852292604555
	.quad	0x3fe287686ce9f75f              # double 0.57902928611995808
	.quad	0x3fe37ad4184f4675              # double 0.6087437128828258
	.quad	0x3fe85156e6aaee13              # double 0.75992913296016906
	.quad	0x3fc64d5f331900a0              # double 0.17423620219233715
	.quad	0x3fd504d02ccc386a              # double 0.32841877341059578
	.quad	0x3fd1f4dc27469c52              # double 0.28057006679086272
	.quad	0x3fe3f6d4334f5d70              # double 0.62388048192489798
	.quad	0x3fa4cf1030c0ab70              # double 0.040642267180678426
	.quad	0x3fd83d40ca618d02              # double 0.37873859180236036
	.quad	0x3fdf165774b1739c              # double 0.48573862453286565
	.quad	0x3fe9d7bc976d900f              # double 0.80758504462983349
	.quad	0x3fde95c582c13f48              # double 0.4778913285162969
	.quad	0x3fd753cb99ba61d6              # double 0.36448946011071592
	.quad	0x3fdbc42396dc9ac4              # double 0.43384637577620944
	.quad	0x3fe14b65f3bfe744              # double 0.54045388800953065
	.quad	0x3fe6a7a2c3113f78              # double 0.70796335314842818
	.quad	0x3fe26bc830cbdd2e              # double 0.57565698175941349
	.quad	0x3fd216e0c97edaf6              # double 0.2826463668565532
	.quad	0x3fe8434a7ece4a5c              # double 0.75821423308145652
	.quad	0x3fd7139db8686842              # double 0.36057227142885406
	.quad	0x3fddc6b0e9a450b8              # double 0.46525214020335737
	.quad	0x3fe0093d47c3c3aa              # double 0.50112785355132883
	.quad	0x3fe7dac17c4ec344              # double 0.74545358923760618
	.quad	0x3fc316724bc8b158              # double 0.14912251186741332
	.quad	0x3fe8c465954e7a56              # double 0.77397421990810744
	.quad	0x3feb61978882e8f7              # double 0.85566307699562472
	.quad	0x3fcb61a4513319a8              # double 0.21391729321312636
	.quad	0x3fe8dfaa712117e5              # double 0.77730295272408212
	.quad	0x3feb20cb0544c852              # double 0.84775305775679954
	.quad	0x3fca7466e879ab0c              # double 0.20667730666476591
	.quad	0x3fe5de22675ebe1b              # double 0.68336601438017242
	.quad	0x3fe0ffeebbd62bc2              # double 0.53124176680409385
	.quad	0x3fc7472fe95fe610              # double 0.18185995955700252
	.quad	0x3fb3b4b7ee18f9d0              # double 0.076976295117652471
	.quad	0x3fdbf11faf980592              # double 0.43659202716670464
	.quad	0x3fe7965f239c1cbf              # double 0.73710591273347592
	.quad	0x3fe5bbe10e8bd302              # double 0.6791844638924831
	.quad	0x3fe6e8e2ba34149d              # double 0.71592842452868732
	.quad	0x3fe72ab5ac7a880d              # double 0.72396358191713406
	.quad	0x3fc3dbedbc3cc2f8              # double 0.15514918986584525
	.quad	0x3febff56c93ccf4c              # double 0.87491931251722965
	.quad	0x3fed6c93cc5ca2f9              # double 0.91950406946588636
	.quad	0x3fe0fac249b4cbb5              # double 0.53061022182224937
	.quad	0x3fdd445785a0997c              # double 0.45729625749154201
	.quad	0x3fdb438016bb3bf6              # double 0.42599489421712577
	.quad	0x3fc40bb75446e25c              # double 0.15660754790384857
	.quad	0x3fe2422b2bae0f67              # double 0.57057722598299854
	.quad	0x3fe4ba3b435ee791              # double 0.64773333700508051
	.quad	0x3feb1bee29ad1e56              # double 0.84715946330920633
	.quad	0x3fe53e0673a9ff82              # double 0.66382143583904019
	.quad	0x3fcc65bfc4ddafc0              # double 0.22185513603778695
	.quad	0x3fd9fb4be0d893ac              # double 0.4059629150163413
	.quad	0x3fe74193ab217aae              # double 0.72675498413066975
	.quad	0x3fea6456ce5b1204              # double 0.82474842361313038
	.quad	0x3fea56c67d84929c              # double 0.82309269442756116
	.quad	0x3fe3cbdbd2a4e55a              # double 0.61863509313040344
	.quad	0x3feeaa1fdcf54ade              # double 0.9582671466435746
	.quad	0x3fc7635c8749c070              # double 0.18271977048744104
	.quad	0x3fd0b9b6a51b7e94              # double 0.26133504985589551
	.quad	0x3fe7ecdd7018053d              # double 0.74766418355299147
	.quad	0x3fdf1501d35337d0              # double 0.48565717351163773
	.quad	0x3fb536a5a6949398              # double 0.08286509816077936
	.quad	0x3fefe987c4e92462              # double 0.99725712260363886
	.quad	0x3fd3341cf7cf7774              # double 0.30005573463664992
	.quad	0x3fe2a7009d1070db              # double 0.5828860347424113
	.quad	0x3fda882bbaaded76              # double 0.4145612071076451
	.quad	0x3fbaa820159ccaa8              # double 0.10412788894317748
	.quad	0x3fd041357e49a8c6              # double 0.25398003895555765
	.quad	0x3fcc31db7f4294c4              # double 0.22027152742263045
	.quad	0x3fe835ba68a90593              # double 0.75655861321881657
	.quad	0x3fe8333bf6ae444b              # double 0.75625417880849832
	.quad	0x3fdb4313b5988f3a              # double 0.42596905454614709
	.quad	0x3fe32668a16055a2              # double 0.59843856352624791
	.quad	0x3fe81bba786e424b              # double 0.75338481446858319
	.quad	0x3fe13723d905b6e4              # double 0.53798096072361234
	.quad	0x3fbcce35493ce530              # double 0.112521486645069
	.quad	0x3fe07fde2135a6ee              # double 0.5156088493942812
	.quad	0x3fe37e3daa8f9283              # double 0.60916026413595181
	.quad	0x3fdb2347b1e1185a              # double 0.42402832385085321
	.quad	0x3fcbf58a3f2e2690              # double 0.21843078694319162
	.quad	0x3fe866c1396154e1              # double 0.762543308325487
	.quad	0x3fdf23db35209682              # double 0.48656349361622386
	.quad	0x3fba513ec92057a0              # double 0.10280220423041309
	.quad	0x3fe7656a520fa61e              # double 0.73112979915203247
	.quad	0x3fe5cc5b4fb3b6f9              # double 0.68119588438796008
	.quad	0x3fe9d8953dbd4a29              # double 0.80768835123519012
	.quad	0x3fdbe26f996f9ae2              # double 0.43569555267315085
	.quad	0x3fd948879c02fe84              # double 0.39505186305539319
	.quad	0x3fee578c754988e9              # double 0.94818709285416702
	.quad	0x3fd11d8ab524a3d4              # double 0.2674280899978474
	.quad	0x3fc3e4e45b355444              # double 0.1554227300026999
	.quad	0x3fc49cbd4b5bac30              # double 0.16103330783457315
	.quad	0x3fec85364acd41bd              # double 0.89126124009822372
	.quad	0x3fee1f77ff489958              # double 0.94134139881206646
	.quad	0x3fd4748f413a6824              # double 0.31961423273026157
	.quad	0x3fc22306844ae2cc              # double 0.14169389209361893
	.quad	0x3fe5c6dd12a67dc4              # double 0.68052533762595901
	.quad	0x3fca0fb4ebe97ae0              # double 0.20360433119909427
	.quad	0x3fb81715f79b5038              # double 0.094102261496403439
	.quad	0x3fed53020ae6a54d              # double 0.91638280991643628
	.quad	0x3fe13de75fd4e978              # double 0.53880661694647269
	.quad	0x3fb8ba5bcc5f5448              # double 0.09659360637245229
	.quad	0x3fcc7bde7f8f25bc              # double 0.22253018597102237
	.quad	0x3fb5af73ac69ee10              # double 0.084708432763300089
	.quad	0x3fc26ba3982141ac              # double 0.14390988281458073
	.quad	0x3fea39f0f85a305f              # double 0.81957291132267673
	.quad	0x3fd615a67ab0fed0              # double 0.34507143003064034
	.quad	0x3fe771acb7a7204f              # double 0.73262630338377643
	.quad	0x3fe595732995eb94              # double 0.6744933902949577
	.quad	0x3fde28d1419f37a8              # double 0.47124129684822913
	.quad	0x3fdaf20c7b645040              # double 0.4210234837530642
	.quad	0x3fefed5a3aad6009              # double 0.99772368870162708
	.quad	0x3fef9ca959a18d3c              # double 0.9878737211805979
	.quad	0x3fecedb412cbd118              # double 0.90401652976155145
	.quad	0x3fd77c6bd40fc686              # double 0.36696906766074056
	.quad	0x3fe93a6276fbac40              # double 0.78837702978979252
	.quad	0x3fb6156b9687f288              # double 0.086264347315543444
	.quad	0x3fcda2b66969f7e0              # double 0.23152809283413855
	.quad	0x3fa3117ca8b21520              # double 0.037242789833763945
	.quad	0x3fecbf195ad47ddd              # double 0.89832751980059877
	.quad	0x3fef7ab57fcc1f9d              # double 0.98372912369176257
	.quad	0x3fe059edc7f7c6e0              # double 0.51097764068819274
	.quad	0x3fdc445810f465ca              # double 0.44167138725023547
	.quad	0x3fdc2236dc66a986              # double 0.43958827518022081
	.quad	0x3fefac0615ffdb12              # double 0.9897489957500929
	.quad	0x3fccc77b9b917ba0              # double 0.22483773323162115
	.quad	0x3feb101022f3c99f              # double 0.84571081949825444
	.quad	0x3fedaa77a0369114              # double 0.92705899516707512
	.quad	0x3fd63426aab5178e              # double 0.34693304701465244
	.quad	0x3fe24d52299504a2              # double 0.57193859216217313
	.quad	0x3fcb764f0b1adc60              # double 0.21454799692375826
	.quad	0x3fdfc52d88190c48              # double 0.49640978136830372
	.quad	0x3fd82ed2eb5be0b6              # double 0.37785790428416577
	.quad	0x3fe18db6d6d5611c              # double 0.54854909858389389
	.quad	0x3fe39b260dbed165              # double 0.61268904385228196
	.quad	0x3fe4d2bb39e6d044              # double 0.65072404202374701
	.quad	0x3fea4759c88238c1              # double 0.82120980417109746
	.quad	0x3fe25e051993fc2e              # double 0.57397704120365289
	.quad	0x3fec4a5b81d8e87c              # double 0.88407683716583518
	.quad	0x3fecf6bb228bc146              # double 0.90511852977037033
	.quad	0x3fd526fa04a3e9da              # double 0.33050394490387947
	.quad	0x3fd7a124eb000eb8              # double 0.36921046208611186
	.quad	0x3fe0e17593473ed8              # double 0.52752188458722582
	.quad	0x3feda9ebe82cc0fd              # double 0.92699237200397955
	.quad	0x3fd577bc49cb43a4              # double 0.33543307501263997
	.quad	0x3f9e112411eb7080              # double 0.029362262338381573
	.quad	0x3fe56f1814ffae98              # double 0.6698112878925313
	.quad	0x3fdeaf9e3776f5da              # double 0.47946887413476491
	.quad	0x3fc67af27bc07e5c              # double 0.17562705080580343
	.quad	0x3fdd692f56b46a6c              # double 0.45954497782955772
	.quad	0x3fda58a18747ac4a              # double 0.41165960513052779
	.quad	0x3fa95b64408f5310              # double 0.049525387650339536
	.quad	0x3fe22a969990e632              # double 0.56769876473771874
	.quad	0x3fe08222c4d24e34              # double 0.51588571969700192
	.quad	0x3fe4d3753d22660c              # double 0.65081273975664677
	.quad	0x3fdce2490bf14e88              # double 0.45131136099119162
	.quad	0x3f460cb8c5e81000              # double 6.7290327189128973E-4
	.quad	0x3feaacb4adf72447              # double 0.83358224847427997
	.quad	0x3fa9409d6da1ccc0              # double 0.04932109797746298
	.quad	0x3fc58d544a09f9a8              # double 0.16837552657302735
	.quad	0x3fc1bfe9fc317298              # double 0.13866925062292945
	.quad	0x3fcc4f2f39dae058              # double 0.22116651844931101
	.quad	0x3fdba65660dc4252              # double 0.4320274301435677
	.quad	0x3fefc5912a40a8cb              # double 0.99286707165199439
	.quad	0x3f7bf754dc128400              # double 0.0068276705580112562
	.quad	0x3fe97ab2108d7fc6              # double 0.79622748597102411
	.quad	0x3fdfb2092a60bfa8              # double 0.49524144304722961
	.quad	0x3feb8cea5e8fa829              # double 0.8609515997789049
	.quad	0x3fe86d6b2c3f995d              # double 0.76335676805755848
	.quad	0x3fdebc6e38030c4e              # double 0.48025088758385415
	.quad	0x3fd842e5eeaf91b2              # double 0.37908314046060376
	.quad	0x3fe98577af83e80b              # double 0.79754242210697279
	.quad	0x3fede93985ce218f              # double 0.93471981176212349
	.quad	0x3fe22aa33679305b              # double 0.56770477904639038
	.quad	0x3fe5f3cd27d4f56f              # double 0.68601091174757112
	.quad	0x3fd3c1ffa33678c8              # double 0.30871573389766782
	.quad	0x3fa66383449de220              # double 0.043727972150865435
	.quad	0x3fe202678f2c82c8              # double 0.56279352153441042
	.quad	0x3fec73e7bc95d466              # double 0.88914858658848739
	.quad	0x3fd822d1d84019da              # double 0.37712522619440636
	.quad	0x3fde22e48d180d40              # double 0.47087968615251796
	.quad	0x3fe07f0cc21a1d11              # double 0.5155090132765584
	.quad	0x3fd6e5b61ac1ea30              # double 0.35777046788249134
	.quad	0x3fe0e9e2fe7c4dc1              # double 0.52855062202655045
	.quad	0x3fe60310925a1551              # double 0.68787411293366507
	.quad	0x3fec0a1ff288a548              # double 0.87623593683125822
	.quad	0x3fb9fe49ba855950              # double 0.10153637698872342
	.quad	0x3fe1e5eab64290db              # double 0.55931602094326693
	.quad	0x3fd74c592c4fb89c              # double 0.3640349323967571
	.quad	0x3feb7c78277f684b              # double 0.858944012779156
	.quad	0x3fe1584e274d7054              # double 0.54202945400494196
	.quad	0x3fe576409d0e191e              # double 0.67068510699099071
	.quad	0x3fc7fd306b6c9400              # double 0.18741421933478364
	.quad	0x3fc764bbbed0e1b8              # double 0.18276163880524421
	.quad	0x3fd7eef7b6f776fa              # double 0.37396042697751819
	.quad	0x3fbf436bf2dc18b8              # double 0.12212252310937088
	.quad	0x3fc552758cd13b04              # double 0.16657895446629578
	.quad	0x3f8837257578e480              # double 0.011823933265178832
	.quad	0x3fe5a52d074077bf              # double 0.67641307274219986
	.quad	0x3fe2dc2c2e9114a2              # double 0.58937653632223808
	.quad	0x3fe60826782ff5ed              # double 0.68849490617838927
	.quad	0x3fddca3b3886d276              # double 0.46546822090321116
	.quad	0x3fd8db6687aa7d92              # double 0.38839114426260679
	.quad	0x3fa841ebc479f2c0              # double 0.047377937063151077
	.quad	0x3fd8e623380c9626              # double 0.38904648278762222
	.quad	0x3fd477d2c9bf10b6              # double 0.31981343938629025
	.quad	0x3fe99f265d6b7669              # double 0.80067747350740348
	.quad	0x3fb890f64c48f260              # double 0.095961946129088371
	.quad	0x3fb12277b6830bc8              # double 0.066932184275216078
	.quad	0x3fcc3628731cb374              # double 0.22040277119358687
	.quad	0x3fbc26c4ee859410              # double 0.10996657202993299
	.quad	0x3fdf4df14286184c              # double 0.48913222786393784
	.quad	0x3fcf2b6e6e1d22b8              # double 0.24351292015696457
	.quad	0x3fd837027e5a25de              # double 0.37835752810550882
	.quad	0x3fe286b4b57771df              # double 0.57894359057132394
	.quad	0x3fe3d6a334cd4d2d              # double 0.61995086968309965
	.quad	0x3fe0d9d4417050dd              # double 0.52659046917917929
	.quad	0x3fe9b494d1a821f7              # double 0.80329361866557647
	.quad	0x3fe1c74ba60af73f              # double 0.55557806425324674
	.quad	0x3fd90a78a189ccc0              # double 0.39126411223623947
	.quad	0x3fe428d76b0af9ae              # double 0.62998553187190054
	.quad	0x3fd34d1b123995e8              # double 0.30158116130618717
	.quad	0x3fba30ce9ededd00              # double 0.1023072374217584
	.quad	0x3fd47727bbdc2050              # double 0.31977265687647094
	.quad	0x3fd317be38b13368              # double 0.29832416092249625
	.quad	0x3fe9e4e7b21c767a              # double 0.8091925123914756
	.quad	0x3f87e6d21ce980c0              # double 0.011670724398925691
	.quad	0x3fe0a5bac2a1ba6e              # double 0.52023065580381256
	.quad	0x3fe29443c8340d26              # double 0.58059872724735295
	.quad	0x3fe6d0a489ba6c95              # double 0.71296908283274496
	.quad	0x3fe03394d374871f              # double 0.50629655170289201
	.quad	0x3fc85faa2eea7938              # double 0.19041945734802268
	.quad	0x3fc1c7beed582d04              # double 0.13890825833400566
	.quad	0x3fe2fcb582ae231b              # double 0.59334826968651855
	.quad	0x3fe02c4518b72c82              # double 0.50540404155016483
	.quad	0x3fd8cc02ac090b5a              # double 0.38745180893254416
	.quad	0x3fe013fc93886d5a              # double 0.50243977370284232
	.quad	0x3fe563c9d4cb5946              # double 0.66843120156662716
	.quad	0x3fe75556463e786e              # double 0.7291671153977981
	.quad	0x3fe3983402685ce6              # double 0.61232948751685679
	.quad	0x3fec110629aae23e              # double 0.87707813394724332
	.quad	0x3fdf7e0f0c0907d6              # double 0.49206901717491058
	.quad	0x3fa6a23ce3cba540              # double 0.044206526572291072
	.quad	0x3fa47d8389cebb50              # double 0.040020094463548816
	.quad	0x3f8b2548a6d79cc0              # double 0.013254706946965178
	.quad	0x3fc67b7ce622d284              # double 0.17564355122671682
	.quad	0x3fd646d7422525d2              # double 0.34807378253443944
	.quad	0x3fd09e94961b5458              # double 0.25967898043501725
	.quad	0x3fc283b2712afd8c              # double 0.14464407468583962
	.quad	0x3fe70aeb630ff347              # double 0.72008294437510123
	.quad	0x3fef29afe19719a7              # double 0.9738387495097428
	.quad	0x3feedb3f74997f87              # double 0.96426365636215016
	.quad	0x3fe339fa10ec41a0              # double 0.60082724862336434
	.quad	0x3fd2ff080848acf6              # double 0.29681587990735581
	.quad	0x3fce9bd6d4fc6404              # double 0.23913083457662776
	.quad	0x3fb430f337541178              # double 0.078871918685825437
	.quad	0x3fdd7b26b1d334de              # double 0.46064154973721638
	.quad	0x3fdda65c682d9ea6              # double 0.46327886747028868
	.quad	0x3fea5641813eebe1              # double 0.82302928202932091
	.quad	0x3fd8d92e5a2cd298              # double 0.38825568014298417
	.quad	0x3fec7936f87a0d81              # double 0.88979671984309061
	.quad	0x3fc9f25d1d2116a4              # double 0.20270885393454308
	.quad	0x3fe16917c84296a6              # double 0.54407872308066341
	.quad	0x3fe6559a023b1086              # double 0.6979494136399047
	.quad	0x3fd1da937bc75456              # double 0.27896582687146088
	.quad	0x3fe19fbe2faeb213              # double 0.55074986756295841
	.quad	0x3fdcf81b7c5ba59a              # double 0.45264327186904441
	.quad	0x3fb2c8330e9db030              # double 0.073367301052429168
	.quad	0x3fe03a9150a2c5bb              # double 0.50714936970887636
	.quad	0x3fde40f97075a3e2              # double 0.47271572096229708
	.quad	0x3fe2baa9f553db0a              # double 0.58528612056292784
	.quad	0x3fce9ff8596b22a8              # double 0.23925690046441628
	.quad	0x3fcc6bccc467d1a4              # double 0.22203979101290117
	.quad	0x3fc49bfd87b1ed1c              # double 0.16101044774755102
	.quad	0x3fbd24034eb42458              # double 0.1138307635448127
	.quad	0x3fd1631d64bd4196              # double 0.27167448842831143
	.quad	0x3f98236666073520              # double 0.023572540261558861
	.quad	0x3fdb0a7fac6013c4              # double 0.42251579125905558
	.quad	0x3fe5fa2552a86ecb              # double 0.68678537506226556
	.quad	0x3fdb86ac75bf02e8              # double 0.43009482859274195
	.quad	0x3f9a979980319120              # double 0.025968931626622838
	.quad	0x3fd083986d7a4b0c              # double 0.25803194705183397
	.quad	0x3fc79f892be6867c              # double 0.18455614703730194
	.quad	0x3fdc46849545a0fe              # double 0.4418040712103134
	.quad	0x3feaca32e7dab662              # double 0.83718247684528202
	.quad	0x3fee3053dc11dd94              # double 0.94339936239605259
	.quad	0x3fd4163ff285efc4              # double 0.31385801967530491
	.quad	0x3fe13483d9d5bdee              # double 0.53766052766689909
	.quad	0x3fc90ffae7426208              # double 0.19580017368276992
	.quad	0x3fd0ac6657c158e6              # double 0.26052244729852558
	.quad	0x3fbdc4eb2a5f0748              # double 0.11628598961308712
	.quad	0x3fe848334e50c6cd              # double 0.75881352706911687
	.quad	0x3fa509dbd4919250              # double 0.041090841005630652
	.quad	0x3fbb24374a9af7e0              # double 0.10602136203212309
	.quad	0x3fdd0714cff643ee              # double 0.4535572081450131
	.quad	0x3fe1f13ad4475745              # double 0.56069699726752076
	.quad	0x3feefbcd6a18db4c              # double 0.96823759767617323
	.quad	0x3fe5d42d10146a51              # double 0.68215039387298237
	.quad	0x3fcd7871a2f37540              # double 0.23023815590469532
	.quad	0x3f86e2d623c39900              # double 0.011174843756134312
	.quad	0x3fef50abdfc47dff              # double 0.97859758095358972
	.quad	0x3fea26c6fac7c541              # double 0.81723355274713338
	.quad	0x3fdff796e289a67e              # double 0.49948665736028619
	.quad	0x3fe066b314f07d4a              # double 0.5125365647290121
	.quad	0x3fe1c924d489aa51              # double 0.55580369483261383
	.quad	0x3fdc4cd61f3ba8cc              # double 0.44218972253896704
	.quad	0x3fc9bee8c70367c4              # double 0.20113858907171622
	.quad	0x3fd53a47014908a2              # double 0.33168196797863392
	.quad	0x3fb543a0ec9ef3c0              # double 0.083063180702949602
	.quad	0x3fec7605762690b8              # double 0.88940690113351817
	.quad	0x3f877664248e4c40              # double 0.011456282010646857
	.quad	0x3fe64ae262da9317              # double 0.69664115245231784
	.quad	0x3fc08cb79b775f7c              # double 0.12929434863212552
	.quad	0x3fc9b0beb6180000              # double 0.20070632830902468
	.quad	0x3fec1b0acc0b27fc              # double 0.87830104686986443
	.quad	0x3fd014d21766aad2              # double 0.25127079282053189
	.quad	0x3fe55ab53fd30bc8              # double 0.66732275453284107
	.quad	0x3fd36d73591f1636              # double 0.3035553331686488
	.quad	0x3fe8011427b29543              # double 0.75013168099818761
	.quad	0x3feedaa18f2f27f8              # double 0.96418836560883303
	.quad	0x3fd859f94620bd08              # double 0.38049156044412813
	.quad	0x3f887aaff98b1380              # double 0.011952757647472501
	.quad	0x3fe3261afbf1b853              # double 0.59840153892379033
	.quad	0x3fbbf05206d89de8              # double 0.1091357485498673
	.quad	0x3fe27afde0e3ff79              # double 0.57751363681744217
	.quad	0x3fed309595ddfbf4              # double 0.91218070288584707
	.quad	0x3fcd79066da19cb0              # double 0.23025589325991325
	.quad	0x3fd0b60bcc16889a              # double 0.2611112111136521
	.quad	0x3fe33d2f36c7ad0c              # double 0.60121880244460746
	.quad	0x3fe8ae5616ab44c2              # double 0.77128128459494172
	.quad	0x3fab93f59bf84d90              # double 0.05386321572236874
	.quad	0x3feeeae9dfbd704e              # double 0.96617597293107749
	.quad	0x3fd8780a9313d854              # double 0.38232673991240529
	.quad	0x3fe4f860dbbbd22d              # double 0.65531962315305281
	.quad	0x3fd77d61f2d4745a              # double 0.36702774728639087
	.quad	0x3fd1a3026cef9848              # double 0.27557430876038724
	.quad	0x3fe92360eb5218b9              # double 0.78556867562362875
	.quad	0x3fc1fbd5531f220c              # double 0.14049784239456675
	.quad	0x3fda919d7120ccf4              # double 0.41513763473194776
	.quad	0x3fefd8faba01f812              # double 0.99523674325587508
	.quad	0x3fc56ecc3401cba8              # double 0.16744377650647135
	.quad	0x3fe6b12d8f3bf647              # double 0.7091281697791566
	.quad	0x3fe1a6bf3021d1f6              # double 0.55160483742525801
	.quad	0x3fe79aa1c5db3575              # double 0.73762596744351916
	.quad	0x3fe4b306e1bf3aac              # double 0.64685386744698326
	.quad	0x3f9831a179340720              # double 0.023626826307924564
	.quad	0x3fefe316b3743376              # double 0.99647078561393587
	.quad	0x3fe31849165f68a4              # double 0.59671453828493215
	.quad	0x3fa49951a6e49660              # double 0.040232230780287592
	.quad	0x3fe83c5e1c5a1a67              # double 0.75736909425252186
	.quad	0x3fddb89a61c88434              # double 0.46439227627894586
	.quad	0x3feda7e79d24315e              # double 0.92674618426967093
	.quad	0x3fd7450b8f111e2a              # double 0.36358918162702258
	.quad	0x3fd584f3d876d3d0              # double 0.33623977793768933
	.quad	0x3fef2bc4bc13b89f              # double 0.9740928338412863
	.quad	0x3fe9f80d3c831e21              # double 0.81152974909577236
	.quad	0x3f8012b653c96900              # double 0.0078481907195748768
	.quad	0x3fde5dc8034233e8              # double 0.47447395628188227
	.quad	0x3fe2ad1aa77dfd15              # double 0.58363087380704093
	.quad	0x3fedb4b5f17ae20e              # double 0.92830941356720742
	.quad	0x3fa15067eef84e40              # double 0.03381657402146887
	.quad	0x3fa4d152b1b2a330              # double 0.040659507934213912
	.quad	0x3fed0667086ed356              # double 0.90703155180981798
	.quad	0x3fdeeb27fe9073ce              # double 0.48310279712478355
	.quad	0x3fc13738d8fc4a8c              # double 0.13449774355884292
	.quad	0x3fc316cdca5977d0              # double 0.14913341884942932
	.quad	0x3fe2c7d310ad9402              # double 0.58689263589315055
	.quad	0x3fc234752729bb38              # double 0.14222587978607648
	.quad	0x3fedac7a1f323ac7              # double 0.92730432599076884
	.quad	0x3fe8ff963fa68897              # double 0.78119957381956595
	.quad	0x3fe27c15b68e384a              # double 0.57764707236652524
	.quad	0x3fadba9bc28675c0              # double 0.058064334388500338
	.quad	0x3fece891f3f4cf49              # double 0.90338990829193577
	.quad	0x3fec90adcac86b7b              # double 0.89266099554093559
	.quad	0x3fe2de5c92e9bd86              # double 0.58964375204043118
	.quad	0x3fe1d5ba97efc3fb              # double 0.55733995127786728
	.quad	0x3fe0f1f97af85984              # double 0.52953790681458246
	.quad	0x3fd971d6c376e560              # double 0.3975731762726209
	.quad	0x3fdac3e941870806              # double 0.41820746802488917
	.quad	0x3fb1010a3dea71d8              # double 0.066422119251405731
	.quad	0x3fe7d655c3d6a519              # double 0.74491394281099865
	.quad	0x3fe4fb42edf3531a              # double 0.65567156290726136
	.quad	0x3fd2f80ed15fe4d2              # double 0.29639025160538524
	.quad	0x3fdc0cf8c56ced0c              # double 0.43829173354943474
	.quad	0x3fe67acc80576e0d              # double 0.70249009195998868
	.quad	0x3fd935684931c14a              # double 0.39388472698103227
	.quad	0x3fdbcbd807b6274c              # double 0.43431664231376454
	.quad	0x3fcc8706a615f088              # double 0.22287066564229385
	.quad	0x3fd4d5f9f6274062              # double 0.32556008375559575
	.quad	0x3fc6dd506f6a0cb8              # double 0.1786289733900952
	.quad	0x3fd91609ff658f3c              # double 0.39197015706143978
	.quad	0x3fe76398449b55c4              # double 0.73090756797562806
	.quad	0x3fea664555cbb159              # double 0.82498423344581362
	.quad	0x3fdb2364e8e4736e              # double 0.42403528922459699
	.quad	0x3fdea7bbeb949096              # double 0.47898767476932258
	.quad	0x3fe42167b922382d              # double 0.6290777793781267
	.quad	0x3fee4c7975db56ee              # double 0.94683526057153045
	.quad	0x3fd102bc4f0a9fe6              # double 0.26579196661850657
	.quad	0x3fe76a57837d74a9              # double 0.7317311828770886
	.quad	0x3febbb90e264160d              # double 0.86664623467430746
	.quad	0x3fcd91f02b1beac4              # double 0.23101617913183337
	.quad	0x3fd08545f27493dc              # double 0.25813435246737781
	.quad	0x3fee7ed7bd4064c7              # double 0.95298373187247243
	.quad	0x3fafb726f1e9db70              # double 0.061944214849907975
	.quad	0x3fe056d66047b07f              # double 0.51060026936239911
	.quad	0x3fe6d2505ead85f4              # double 0.71317308894884812
	.quad	0x3f9491faac6b82a0              # double 0.020088116429976766
	.quad	0x3f73acc92f7c9680              # double 0.0048034533317938832
	.quad	0x3fed094a01b3c6e7              # double 0.90738392193290174
	.quad	0x3fde9592e9f5fbc0              # double 0.4778792652868411
	.quad	0x3fbbd0b261daedb8              # double 0.10865321053545685
	.quad	0x3fec718f711cba04              # double 0.8888623437140386
	.quad	0x3fe40e43dc99bc06              # double 0.6267413433650979
	.quad	0x3fd45f300d293d0e              # double 0.31830979619276512
	.quad	0x3fe0809a1f70566c              # double 0.51569849148172642
	.quad	0x3fe749415356b09c              # double 0.72769228245808248
	.quad	0x3fb021f7efb81cd8              # double 0.063018318200295353
	.quad	0x3fe76a2d49378423              # double 0.73171104717414825
	.quad	0x3fc5d50e394b3b04              # double 0.17056443975021562
	.quad	0x3f73c89ac91a0080              # double 0.0048299833594002139
	.quad	0x3fdeadfb32c19ede              # double 0.47936897236512077
	.quad	0x3fef397ebe62a748              # double 0.97576844391481021
	.quad	0x3fdd4ff5bf71a576              # double 0.45800536819168458
	.quad	0x3fe2ede6023ee0a4              # double 0.59154034079167106
	.quad	0x3fee26d75b10018e              # double 0.94224136148118176
	.quad	0x3fdcfb306a847d1e              # double 0.45283136751273101
	.quad	0x3fe5f0353637f91a              # double 0.68557224835948039
	.quad	0x3fe553a3bc245c3b              # double 0.66645991083613099
	.quad	0x3fef4c8cbd46c373              # double 0.97809445350695367
	.quad	0x3f818d689ca82300              # double 0.0085704968269211257
	.quad	0x3fd51ec663c6590e              # double 0.33000335448868234
	.quad	0x3fe2e53244325cf5              # double 0.59047807044672018
	.quad	0x3fd31ac0273a2d54              # double 0.29850772696291483
	.quad	0x3fe9480886f89ef0              # double 0.79004312860067039
	.quad	0x3fd9e205c1ffe4e2              # double 0.40442031808158962
	.quad	0x3fc58b15ab665760              # double 0.16830702656869345
	.quad	0x3fea5d3aced365c6              # double 0.82388058086069615
	.quad	0x3fec3c41b55fdf34              # double 0.882355551001615
	.quad	0x3fd02cc057d8fd5a              # double 0.25273140505665526
	.quad	0x3fedbf1c804e4506              # double 0.92957902011599525
	.quad	0x3fd71f9d2751a97a              # double 0.36130455817933405
	.quad	0x3feac1bc477412e1              # double 0.83614934879059544
	.quad	0x3fe8d2ad73c48583              # double 0.77571747408744363
	.quad	0x3fb51faf2bcc2040              # double 0.082514713471142365
	.quad	0x3fca6feb5907cf0c              # double 0.20654050681297809
	.quad	0x3fe98c994fad780e              # double 0.79841294824632469
	.quad	0x3fc72960863f5d34              # double 0.18095022730879295
	.quad	0x3fef4e3e82ccbfd2              # double 0.97830129191242521
	.quad	0x3fe9a3f0ce5eec99              # double 0.80126228625103402
	.quad	0x3fdb4d25151ffa50              # double 0.42658354819278532
	.quad	0x3fcebd0a4eebf81c              # double 0.24014405110932635
	.quad	0x3fee2a529eeea359              # double 0.94266634980622677
	.quad	0x3fd379b897693b18              # double 0.304304263937341
	.quad	0x3fef1aed8d179cc1              # double 0.97203710133626242
	.quad	0x3faf915263babd10              # double 0.061655592607502752
	.quad	0x3fe1d3217373e17e              # double 0.55702278661105686
	.quad	0x3fe89f6c57d1f007              # double 0.76946084167821105
	.quad	0x3fc6994d9899da00              # double 0.17655343962879044
	.quad	0x3fd47d492f5e1bc0              # double 0.32014684320204978
	.quad	0x3fd2669572e981d0              # double 0.28751121732605345
	.quad	0x3fe1d883b7b5e035              # double 0.55767999535510759
	.quad	0x3fc34f489245ffd4              # double 0.15085703985459864
	.quad	0x3fd6a4726e88d4c2              # double 0.35378704828628937
	.quad	0x3fd6ad8629c08096              # double 0.35434106900539442
	.quad	0x3fe0f1da71f6e4fd              # double 0.52952310808828396
	.quad	0x3fda099997e1913e              # double 0.40683593589917055
	.quad	0x3fbbcc8280845040              # double 0.10858932149523159
	.quad	0x3fe1c9ed8caf6652              # double 0.55589940526551573
	.quad	0x3fba3c54b6e9d270              # double 0.10248307672174817
	.quad	0x3fd830bbb339a866              # double 0.37797443869079073
	.quad	0x3fd65f705550daa2              # double 0.34957512218117348
	.quad	0x3fe4d033f0738a9f              # double 0.65041539157057915
	.quad	0x3fe26cd45643c5e7              # double 0.57578484390813578
	.quad	0x3fdf031ce0b1bb66              # double 0.4845649904518069
	.quad	0x3fe938ba6894dba4              # double 0.78817482400960559
	.quad	0x3feac673eabef8ae              # double 0.83672519539665813
	.quad	0x3fd334c34443f252              # double 0.30009538332504804
	.quad	0x3fc2ad70824012c8              # double 0.14591795310857081
	.quad	0x3feee7682b00c677              # double 0.96574791335133525
	.quad	0x3f7519c567773a80              # double 0.0051515303707235782
	.quad	0x3fe0361a8dd7abb7              # double 0.50660445884329064
	.quad	0x3fe44dddd398e1a5              # double 0.63450518920494814
	.quad	0x3fc5b48afea5741c              # double 0.16957223352338324
	.quad	0x3fc0f9f37d20c3e8              # double 0.13262790307774641
	.quad	0x3fc0a4b275d9a6a0              # double 0.1300261569443153
	.quad	0x3fee84f00d0fc198              # double 0.95372774649699731
	.quad	0x3fe1db8e85c2a326              # double 0.55805135846194243
	.quad	0x3fefa17339564275              # double 0.98845826338408804
	.quad	0x3fd8bda4659decf4              # double 0.38657483981633267
	.quad	0x3f894483d1891d40              # double 0.012337713081378099
	.quad	0x3feb03469db0021a              # double 0.84414988325449092
	.quad	0x3fc8c6535e87b928              # double 0.19355241885882291
	.quad	0x3fe014e00a3a60cc              # double 0.50254823682464567
	.quad	0x3fa9c8b04a5d4e20              # double 0.050359257772154331
	.quad	0x3fa34da09f6a6580              # double 0.037701625308907971
	.quad	0x3fc6976468cff7fc              # double 0.1764951240328968
	.quad	0x3fd1e3da3182d78a              # double 0.27953200182980054
	.quad	0x3fe6bdc6e9f14347              # double 0.71066613857156191
	.quad	0x3feae93422c748dd              # double 0.8409672431246481
	.quad	0x3feec1e03b8f0a9c              # double 0.96116649277276478
	.quad	0x3fb0c7386c865288              # double 0.065539862151419936
	.quad	0x3fe19d97b27175b1              # double 0.55048737384975344
	.quad	0x3fdc3e2d685bb358              # double 0.44129500571471203
	.quad	0x3fed9e56f48ef6ee              # double 0.92557857289622603
	.quad	0x3fee243d5d0e169e              # double 0.94192379164515549
	.quad	0x3fe87f490cd639b9              # double 0.76553776271048612
	.quad	0x3fe168803044d70f              # double 0.54400643756409461
	.quad	0x3fe5eb9e29127764              # double 0.68501194021130773
	.quad	0x3fee57776dcce18d              # double 0.94817706532835333
	.quad	0x3fd1980936ff59ea              # double 0.27490454073759329
	.quad	0x3fc8ca9995056624              # double 0.19368285919590378
	.quad	0x3fb00829f1a32df0              # double 0.062624570363531751
	.quad	0x3fc26cf055e3c93c              # double 0.14394954866254206
	.quad	0x3fe9b3755be92f57              # double 0.80315654708236195
	.quad	0x3fe0c7ba42fb6efd              # double 0.52438080866292547
	.quad	0x3fea820263145bf9              # double 0.82837027884931935
	.quad	0x3fed3171853689e1              # double 0.91228557604000227
	.quad	0x3fdb2443c67dd280              # double 0.42408842452940831
	.quad	0x3fe149e2564d806e              # double 0.54026905876163567
	.quad	0x3fe8e1c3e4ac2046              # double 0.77755922949382561
	.quad	0x3fe1e81507fff0d2              # double 0.55958034098105203
	.quad	0x3fe1e2cdaedd3a2d              # double 0.55893596795232769
	.quad	0x3fe22ee80e8ab541              # double 0.56822588768196891
	.quad	0x3fd3bf94af60f49e              # double 0.30856816412762977
	.quad	0x3fea5044e1ff6c95              # double 0.82229847088037167
	.quad	0x3feded8be4f9b7d1              # double 0.93524737092752208
	.quad	0x3fe5add8d0b2da40              # double 0.67747154962018641
	.quad	0x3fe6d5b3f964f0ef              # double 0.71358679494690402
	.quad	0x3fd2a713eac89686              # double 0.29144761970597022
	.quad	0x3fda0ce4b6de96b6              # double 0.40703695162151676
	.quad	0x3fc8bf4549a810b4              # double 0.19333711716183688
	.quad	0x3fc14b184f173f38              # double 0.13510421621185187
	.quad	0x3fcd74919a26a0a0              # double 0.23011989619158602
	.quad	0x3fdb8165672e4c5e              # double 0.42977271152739671
	.quad	0x3fc4a7983a8e9500              # double 0.16136458262659659
	.quad	0x3fef217b19701410              # double 0.97283701866456518
	.quad	0x3fedd0b654e5bab3              # double 0.93172756749648611
	.quad	0x3fd561d05768fe6a              # double 0.33409508262773235
	.quad	0x3fc230722fb8cbc8              # double 0.1421034558312313
	.quad	0x3fd53adae7d42964              # double 0.33171723022009858
	.quad	0x3fef0a4774dd9cd9              # double 0.97000477624251424
	.quad	0x3fea4dcd6d829871              # double 0.82199736965846004
	.quad	0x3fee2e21a90694a0              # double 0.94313128483613084
	.quad	0x3feb5166cd03ac6e              # double 0.85368671457162093
	.quad	0x3fc4db01933d9278              # double 0.16293353738287286
	.quad	0x3fd18c5e4e49812a              # double 0.27419240613200435
	.quad	0x3fc74456ab4dd4f8              # double 0.18177302708105691
	.quad	0x3fe13f2e14946fa4              # double 0.53896240252969507
	.quad	0x3fe2266400ad0003              # double 0.56718635684956131
	.quad	0x3fe1d322709f91d7              # double 0.5570232581781579
	.quad	0x3faa970c772eea00              # double 0.051933660076844745
	.quad	0x3fe7c5c2069caac7              # double 0.74289037028696547
	.quad	0x3fd42a1ca4d69364              # double 0.31507030580023909
	.quad	0x3fe5b81a5a95fcf7              # double 0.67872350399548409
	.quad	0x3fdf1a9054814190              # double 0.48599632503921786
	.quad	0x3fdfe0c6b93b6abe              # double 0.49809425438949606
	.quad	0x3fd5bcbaf69726fc              # double 0.33964418488595505
	.quad	0x3fcc2f4d41e53f8c              # double 0.22019353597215419
	.quad	0x3fdbe6c5fa61b074              # double 0.43596028758361816
	.quad	0x3fed6c21c6abc33f              # double 0.91944969942969823
	.quad	0x3fdd10405daac668              # double 0.45411690852333786
	.quad	0x3fd11dc962f5839a              # double 0.2674430338284367
	.quad	0x3fe7b727a15cf174              # double 0.74110776439878956
	.quad	0x3fe9b58821736cec              # double 0.80340963872313642
	.quad	0x3fdc41a3008ee428              # double 0.44150614790447884
	.quad	0x3fb2baea67c75840              # double 0.07316460641536171
	.quad	0x3f8f5f22d334e400              # double 0.015318176336778677
	.quad	0x3fe8e31ce8a395ea              # double 0.77772374570184621
	.quad	0x3feaf4442945617c              # double 0.84231765805002067
	.quad	0x3fdf7f34306cdcac              # double 0.49213890770938451
	.quad	0x3f641b03cb625200              # double 0.0024542879210207591
	.quad	0x3fa09482db6e5500              # double 0.032383050237664079
	.quad	0x3fcdf82b9adb7f20              # double 0.23413605748555089
	.quad	0x3fe85aafe4cfa637              # double 0.76107020082162691
	.quad	0x3fe3e6b4413d10a4              # double 0.62191212407971763
	.quad	0x3fd22b8f83c5df10              # double 0.28390872829867053
	.quad	0x3fe477fec2a4ac32              # double 0.63964784637699368
	.quad	0x3fcd9b4afeff9644              # double 0.23130166483967873
	.quad	0x3fb8160bf14e6580              # double 0.094086405193953837
	.quad	0x3fdf210c5b17512a              # double 0.48639210601438043
	.quad	0x3fe5581e72931c28              # double 0.66700670602665912
	.quad	0x3feecc43b603b758              # double 0.96243463086805558
	.quad	0x3fdaec289d18c562              # double 0.42066397992592475
	.quad	0x3fe93ec817963d32              # double 0.78891377074061197
	.quad	0x3fd951eea22d507e              # double 0.39562574231718617
	.quad	0x3feab1f35a85dd74              # double 0.83422248535400322
	.quad	0x3fb55fabccaeb558              # double 0.083491075011541738
	.quad	0x3fdeb8cd18e57d76              # double 0.48002936774533767
	.quad	0x3fe736f2dfdec362              # double 0.72545760845796914
	.quad	0x3fd30755a0dd60a8              # double 0.29732266148995246
	.quad	0x3fedc1eb625f82b7              # double 0.92992181027883347
	.quad	0x3fe283fe8aaedc05              # double 0.57861258589298414
	.quad	0x3fea72262f900480              # double 0.82643422402919953
	.quad	0x3fd523fa62c0d7de              # double 0.33032092708469729
	.quad	0x3fe4711d1f69d74f              # double 0.6388078321021825
	.quad	0x3fef713ba3db4caf              # double 0.9825723839116075
	.quad	0x3fceb27193971404              # double 0.23982066828298809
	.quad	0x3fd8cf1e6dc9d316              # double 0.38764153214951713
	.quad	0x3fd04150ba826b78              # double 0.25398653234304147
	.quad	0x3fe224048b99e78b              # double 0.56689669862611092
	.quad	0x3fdd836cb4fe1664              # double 0.46114652323772121
	.quad	0x3fdfca06feaf2156              # double 0.49670576926702859
	.quad	0x3fbdeebf3c214cb8              # double 0.1169242402841516
	.quad	0x3fe5cec582bcd8a9              # double 0.6814906648130733
	.quad	0x3fe79ab91311cb1f              # double 0.73763707851898974
	.quad	0x3fe46fb5185c876b              # double 0.63863615758985526
	.quad	0x3fd11dba39d2c7fc              # double 0.26743941923916714
	.quad	0x3fe01ef21168b8c9              # double 0.5037775363942042
	.quad	0x3fee6578b2cfa3cb              # double 0.94988665508309944
	.quad	0x3fd5d56faf452360              # double 0.34115211597650408
	.quad	0x3fe105600511532a              # double 0.53190613736896819
	.quad	0x3fe08c8a56fc6868              # double 0.51715580930182359
	.quad	0x3fd458c6bf41ca16              # double 0.3179184787506143
	.quad	0x3fe13cffc27dabc5              # double 0.53869617449287743
	.quad	0x3feae4288ec71e9e              # double 0.84035137068072507
	.quad	0x3feb4ec9e0f93af3              # double 0.85336774768970114
	.quad	0x3fc62364ebb71f84              # double 0.17295514592683159
	.quad	0x3fe842e5710aa1f6              # double 0.75816604689049316
	.quad	0x3fe52057277a221e              # double 0.66019780836456099
	.quad	0x3fe4819dad42e9e0              # double 0.64082225647080904
	.quad	0x3fed6f34722d0d51              # double 0.91982481288907014
	.quad	0x3fe18abbae3ed4ee              # double 0.54818519623100115
	.quad	0x3fe3d4c566d3871f              # double 0.61972303469903867
	.quad	0x3fc58ad81d24de4c              # double 0.16829968855903343
	.quad	0x3fd277e20d94e6ac              # double 0.28856707884151933
	.quad	0x3fcb453e5ed2101c              # double 0.21305064802084039
	.quad	0x3fbb80cd9ce423a8              # double 0.10743413048125083
	.quad	0x3fed44a2a1b5ad74              # double 0.91462833007737609
	.quad	0x3fb9cb4093c5e768              # double 0.10075763328305032
	.quad	0x3fb215a4159d7328              # double 0.070642714764698966
	.quad	0x3fd677af2f947e26              # double 0.35105495115746732
	.quad	0x3fc806cc3a4c4478              # double 0.18770745131090272
	.quad	0x3fee39d9c0d54706              # double 0.94456184065549631
	.quad	0x3fd7fd4494b03312              # double 0.37483324547137997
	.quad	0x3fc392a5cdfce6b0              # double 0.15291283185961424
	.quad	0x3fde083d72c649d0              # double 0.46925293167546744
	.quad	0x3fe6a6f10d7eefe3              # double 0.70787861476810254
	.quad	0x3fe04cb992a287c1              # double 0.50936583175302286
	.quad	0x3f80dac2a42e1640              # double 0.0082297521928565986
	.quad	0x3fec96fb656eb002              # double 0.89343042193422684
	.quad	0x3fd4f45a1ffc6da2              # double 0.32741406558644759
	.quad	0x3fbc53a2a9750178              # double 0.11065117489943599
	.quad	0x3fe7a0f95ef055cc              # double 0.73840015928970493
	.quad	0x3f97e045ef49c280              # double 0.023316471796024363
	.quad	0x3fd1bbd92c6fce06              # double 0.27709035243535174
	.quad	0x3fefd24c23aa3009              # double 0.99442107167988169
	.quad	0x3fd24e7e819cb2d8              # double 0.28604090363914514
	.quad	0x3fcdfd9d7e003d90              # double 0.2343022217978441
	.quad	0x3fb2b6f748b97cf0              # double 0.073104338889141252
	.quad	0x3fd2c587d3c3c7a0              # double 0.29330630951073466
	.quad	0x3fe45d1e33bc6e1d              # double 0.63636694054315834
	.quad	0x3fc3ece60bf523f4              # double 0.15566707214227871
	.quad	0x3fe8329969f4fe05              # double 0.75617666907049907
	.quad	0x3fe6e88473ca1b83              # double 0.71588347067960034
	.quad	0x3fee143092d96218              # double 0.93996456796145633
	.quad	0x3f6432b1ae8c6200              # double 0.0024655790661081145
	.quad	0x3fca492ad8460908              # double 0.20535789070351762
	.quad	0x3fe04d3ecc8a3e06              # double 0.509429358951764
	.quad	0x3fe49ad7c1ad82d5              # double 0.64390170886698661
	.quad	0x3fe907c654ea07a1              # double 0.78219906410980766
	.quad	0x3faf34452e624f70              # double 0.060945665275680905
	.quad	0x3feba58aba923cea              # double 0.86395775260635088
	.quad	0x3fd5d725e58b213a              # double 0.34125659386019758
	.quad	0x3fc48982b879ac1c              # double 0.16044649131376409
	.quad	0x3fe164a7c77aa765              # double 0.54353703461422909
	.quad	0x3fc1bf0aa09e024c              # double 0.13864262430799312
	.quad	0x3fc3c94ec0e3ed30              # double 0.15458092134927304
	.quad	0x3fe535387171d21d              # double 0.66274664075041623
	.quad	0x3fe66f040d5bfa6c              # double 0.70105173691974931
	.quad	0x3fe711e54c789ae4              # double 0.72093453346027703
	.quad	0x3feb06369ab83a74              # double 0.84450845926933348
	.quad	0x3fe9350f408cb6f3              # double 0.78772699935299639
	.quad	0x3fdebebd35a6a76a              # double 0.48039179076533023
	.quad	0x3f6722f8c04dc300              # double 0.0028242929860698984
	.quad	0x3f93cb4111a566a0              # double 0.019330040647537516
	.quad	0x3fdc3eb4e430e23a              # double 0.44132730755112315
	.quad	0x3fd78eebd112c21a              # double 0.36809821526824893
	.quad	0x3feab8345da5b105              # double 0.83498590746378964
	.quad	0x3fd74b40ad0d1e12              # double 0.36396805667433896
	.quad	0x3fe2e1f4e2d41a03              # double 0.5900825910801476
	.quad	0x3fe24f8b0ed34e7b              # double 0.57220986266697993
	.quad	0x3fed18e59f7aef18              # double 0.90928918026426953
	.quad	0x3fce45ca974c8650              # double 0.23650486362116618
	.quad	0x3fe2219d227ff584              # double 0.56660324800729756
	.quad	0x3fddeb89a01a8d8c              # double 0.4675010741722978
	.quad	0x3fd8510faa910a2c              # double 0.37994758278742569
	.quad	0x3fc66c66b8775214              # double 0.17518314368375398
	.quad	0x3fdc2d8a1deed43e              # double 0.44027951167237578
	.quad	0x3fead42196292d8f              # double 0.8383949215726022
	.quad	0x3fe4909cef8fad21              # double 0.64265295781425291
	.quad	0x3fe7ae13d2049bd0              # double 0.73999968547001949
	.quad	0x3fd758828c500692              # double 0.36477721884157532
	.quad	0x3fd268330afa46bc              # double 0.28760982582125982
	.quad	0x3fb41ce04c43d320              # double 0.078565615290994817
	.quad	0x3feeec8e66cb765d              # double 0.96637649609665354
	.quad	0x3fa4e010f45a9070              # double 0.040771989658680563
	.quad	0x3fe8d8f4cd9aeec9              # double 0.77648391873614131
	.quad	0x3fe3ef157527d221              # double 0.6229350364870393
	.quad	0x3fe8cd7388aa2392              # double 0.77507950489335742
	.quad	0x3fec1de1065c744c              # double 0.87864733927166005
	.quad	0x3fe93826fd4b8418              # double 0.78810452911068563
	.quad	0x3fd0524faa7dad42              # double 0.2550238766622962
	.quad	0x3fd0388ccab4e8d2              # double 0.25345153613637905
	.quad	0x3fc799accf08b9ec              # double 0.18437728985868718
	.quad	0x3fcb765c1cac5f38              # double 0.21454955482544746
	.quad	0x3fe4aa61d1a6874b              # double 0.64579859683383611
	.quad	0x3fede2bc0729b7c4              # double 0.93392754935279542
	.quad	0x3fea987502dc41fc              # double 0.83111048277538612
	.quad	0x3f9ab3ba9d7930e0              # double 0.026076236592687319
	.quad	0x3fed2602de434910              # double 0.91089003954610526
	.quad	0x3fe1ae4adb859731              # double 0.55252592921599419
	.quad	0x3fc089132ec944ec              # double 0.12918319496615227
	.quad	0x3faa7e7ac93a4ac0              # double 0.051746213020256615
	.quad	0x3fe42f837de93a44              # double 0.6308000048828224
	.quad	0x3f9b88b1ffac6b40              # double 0.026888638715813373
	.quad	0x3febc6cbe8b1f6c9              # double 0.86801715324664841
	.quad	0x3feeeb1b395f04c4              # double 0.96619950490289641
	.quad	0x3fe075de539bb9a3              # double 0.51438824014421802
	.quad	0x3fed48588656800e              # double 0.91508127439374376
	.quad	0x3feae31e25e7335e              # double 0.84022433665232277
	.quad	0x3fd29e029334d0fa              # double 0.29089416862122131
	.quad	0x3fe578be33385510              # double 0.67098913196483245
	.quad	0x3fa337169621b070              # double 0.037529664827929632
	.quad	0x3fc5ba7cbe168c98              # double 0.16975363999981563
	.quad	0x3f9a956ad15d8460              # double 0.025960606602329128
	.quad	0x3f7d52d5937dd380              # double 0.0071590750520628132
	.quad	0x3fca45bddb6d1328              # double 0.20525334562457798
	.quad	0x3fe8efc0dae5b7eb              # double 0.77926676514993909
	.quad	0x3fc93e5926d71158              # double 0.19721521755685489
	.quad	0x3fe88b774baddfde              # double 0.76702465802281572
	.quad	0x3fbd854e4f93c7b8              # double 0.11531533663563109
	.quad	0x3feca66aa7ecbee0              # double 0.89531452939806044
	.quad	0x3fb95a292a7e30a0              # double 0.099031994699716907
	.quad	0x3fef030a93d494a1              # double 0.96912125466464626
	.quad	0x3fd48c1e4368b0da              # double 0.32105213721184855
	.quad	0x3fed129c503cdaf5              # double 0.90852180167607222
	.quad	0x3fb7d8cf3ffb1750              # double 0.093152001495665048
	.quad	0x3fe1394e2558f97f              # double 0.53824527067608574
	.quad	0x3fe8b1f1c7f12dc2              # double 0.77172173548881795
	.quad	0x3fe052c9083fa6f2              # double 0.51010562525809022
	.quad	0x3fdc4f22455f6a18              # double 0.44232994818381277
	.quad	0x3fd80f975b88a6e0              # double 0.37595161379668518
	.quad	0x3fd0797184887792              # double 0.25741231863673264
	.quad	0x3fed06c565615940              # double 0.90707654763063061
	.quad	0x3fcc8ca5f0a01818              # double 0.22304224252019433
	.quad	0x3fd386bc40e1ee78              # double 0.30509859405694995
	.quad	0x3fc8380e571d24d4              # double 0.18921069387059808
	.quad	0x3f97114e50edada0              # double 0.022526954354743389
	.quad	0x3fe2133afca8a62c              # double 0.56484746310633716
	.quad	0x3fdb7931f1f513f4              # double 0.42927216175695482
	.quad	0x3fe2be890991b4d8              # double 0.58575870388963391
	.quad	0x3fd61d0cfe8c01ca              # double 0.34552311761947563
	.quad	0x3fe2b3c71648be44              # double 0.58444551803945233
	.quad	0x3fc749e7860d0e04              # double 0.18194288297137018
	.quad	0x3f899808946a69c0              # double 0.01249701216629695
	.quad	0x3fef2466905fe937              # double 0.97319343755888254
	.quad	0x3fb0e5fed0f62298              # double 0.066009450927717928
	.quad	0x3fe4ce84e6fe4f29              # double 0.65020985713861024
	.quad	0x3fd206550d63fb28              # double 0.28163648898764615
	.quad	0x3fb176156023cf50              # double 0.06820806119122591
	.quad	0x3fe9fdd5154243d9              # double 0.81223539497488695
	.quad	0x3fd636e0db0f05bc              # double 0.34709950821351376
	.quad	0x3fe60ce7c2f8c5e8              # double 0.68907535629676619
	.quad	0x3fe535d38358d025              # double 0.6628205838555955
	.quad	0x3f9838b5e8b93420              # double 0.023653833703338845
	.quad	0x3fbebb1fc8efd578              # double 0.12004278808293189
	.quad	0x3fcc22bf6c7dd764              # double 0.21981041715087735
	.quad	0x3fe8f99ab59dd1a2              # double 0.78046927902191876
	.quad	0x3fdd72913f08b04e              # double 0.4601176372114012
	.quad	0x3fd85172c50cb968              # double 0.3799712108911053
	.quad	0x3fe25c7f9e197271              # double 0.57379132155217694
	.quad	0x3fed41bba9ebee4c              # double 0.91427405536473704
	.quad	0x3f7cd9596c436380              # double 0.0070432179529341665
	.quad	0x3fe250be22b8ddc2              # double 0.5723562887350726
	.quad	0x3fe3fec85728aa0b              # double 0.62485138915263982
	.quad	0x3fc3f8944c66ad34              # double 0.15602353792687895
	.quad	0x3fef86cb0533385b              # double 0.98520422950401653
	.quad	0x3fbcf72fdb1eea90              # double 0.11314677333477108
	.quad	0x3fcd8a72cdaefd08              # double 0.23078761141912474
	.quad	0x3fe88df920f376ef              # double 0.76733070789097535
	.quad	0x3f73a9ec6996ad00              # double 0.0048007235394991188
	.quad	0x3fa95cb29eaba650              # double 0.049535352581938086
	.quad	0x3fcee97bd1f2c210              # double 0.24150035621052313
	.quad	0x3feab17ce029ebee              # double 0.8341659906576504
	.quad	0x3feb492f71041af9              # double 0.85268375466770785
	.quad	0x3fec4e77bb23eec4              # double 0.88457857657291372
	.quad	0x3fa8eab6ee4ff670              # double 0.048665730086196457
	.quad	0x3fe25977a9325ec5              # double 0.57342131658784778
	.quad	0x3feb042565619932              # double 0.84425611306213555
	.quad	0x3fe21f6db9b534f1              # double 0.56633650084554976
	.quad	0x3fe622593bea225a              # double 0.69169294073169429
	.quad	0x3fe1e69cabe52e96              # double 0.55940087865151855
	.quad	0x3fcc0e227bb5f1ac              # double 0.21918135681688733
	.quad	0x3fe90cf4423421a2              # double 0.78283131533048711
	.quad	0x3fe3fd90b39ea370              # double 0.62470278818100944
	.quad	0x3fe18d014a277fdb              # double 0.54846252902279546
	.quad	0x3fd413769b913430              # double 0.31368794624433161
	.quad	0x3fedecafdf17a503              # double 0.93514245579459077
	.quad	0x3fc06d3337bcf1f0              # double 0.12833252164445197
	.quad	0x3fdfe5cb8cbe10f4              # double 0.49840058082942496
	.quad	0x3fe358dc508cadf6              # double 0.60459724170999496
	.quad	0x3fded053c72848e2              # double 0.48146528672181266
	.quad	0x3fe14a0981b866c4              # double 0.54028773628234505
	.quad	0x3feb22b26a0983a3              # double 0.84798546514877093
	.quad	0x3fea407d2a0e3694              # double 0.82037218297928626
	.quad	0x3fd9416f732002be              # double 0.39461885683708064
	.quad	0x3fd3a999c6fce838              # double 0.307226604770793
	.quad	0x3fce4f9e193a34ec              # double 0.23680473548703362
	.quad	0x3fe180d65aee1f44              # double 0.54697721252248543
	.quad	0x3fd3f6b85d09da2a              # double 0.31193360410489623
	.quad	0x3fe1db19bf9b807a              # double 0.55799567626310353
	.quad	0x3fe5abaaca8403ee              # double 0.67720546296925277
	.quad	0x3fdd98f3713ebbd2              # double 0.46246038493239638
	.quad	0x3fe1bce29288f726              # double 0.55430725689050031
	.quad	0x3fe474aa6adbcd13              # double 0.63924141760654363
	.quad	0x3fdf0289262d400e              # double 0.48452976921271407
	.quad	0x3fd59ce575459d8e              # double 0.33770119144761501
	.quad	0x3fb5d0da07faa550              # double 0.085218073795336524
	.quad	0x3fe3f9968f9a99cb              # double 0.62421730086935534
	.quad	0x3fec28d8b2540e72              # double 0.87998614148859944
	.quad	0x3febd3f4eaf584a2              # double 0.86962362184944575
	.quad	0x3fe3287eb0edc42c              # double 0.59869322353745735
	.quad	0x3fb11160da20eee0              # double 0.066671422246993739
	.quad	0x3fe3e6bb078c23f7              # double 0.62191535448175628
	.quad	0x3fdef41077886db0              # double 0.48364650414597588
	.quad	0x3fd2320eff03add8              # double 0.28430533317324835
	.quad	0x3fe97262b700e454              # double 0.79521308653705569
	.quad	0x3fe52cd4612c1410              # double 0.66172236422483088
	.quad	0x3fba81420a3781c0              # double 0.10353482007440729
	.quad	0x3fd4b58e34a36c0a              # double 0.32358126774278217
	.quad	0x3fed4f4b1acb7b50              # double 0.91592936738366326
	.quad	0x3fbf302bf834bad8              # double 0.12182879266468249
	.quad	0x3fda76a54e93c7f4              # double 0.41349156068383697
	.quad	0x3fea0eae573d3ad1              # double 0.8142921165361604
	.quad	0x3fddf9e59ca7a250              # double 0.46837749765703496
	.quad	0x3fdb600024b3ff40              # double 0.42773440918243821
	.quad	0x3fea6051f2338f6f              # double 0.82425782494509103
	.quad	0x3fd31311ded21dd4              # double 0.29803892860260572
	.quad	0x3fc7ea7d31be6ef4              # double 0.18684353760624328
	.quad	0x3feb6bf2c08f0cd2              # double 0.85692727669848012
	.quad	0x3fe3100a53aed3e0              # double 0.59570804924316789
	.quad	0x3fe43c4a0767602b              # double 0.63235951849037997
	.quad	0x3fe55886e291219a              # double 0.66705650569297181
	.quad	0x3fc42cbaf6cd7808              # double 0.15761506129177882
	.quad	0x3fc12b8bdd74bbe4              # double 0.13414142907410487
	.quad	0x3fe0d26ad4bad101              # double 0.52568570660380953
	.quad	0x3fa3a6540cb19920              # double 0.038378359365014214
	.quad	0x3f7ec2d6f1064d80              # double 0.0075100322868765223
	.quad	0x3fdfdf18c0b433f4              # double 0.49799174135915725
	.quad	0x3fb9c7bf7b8b0568              # double 0.10070416227519774
	.quad	0x3faefdbe4e133af0              # double 0.060529658346799908
	.quad	0x3fc6bce2922d52c8              # double 0.17763931405592914
	.quad	0x3fdde45d976ec6ac              # double 0.46706332958556618
	.quad	0x3fdd1fad3c60dddc              # double 0.45505839248968782
	.quad	0x3fdd2a896760a0de              # double 0.45572123618559413
	.quad	0x3fee10e7aaea8220              # double 0.93956359273949274
	.quad	0x3fef3da51c082227              # double 0.97627501940684602
	.quad	0x3fece8988b0e7b3f              # double 0.90339305076108889
	.quad	0x3fe1e1c606562d6c              # double 0.55881024587271844
	.quad	0x3fd923f301a90c7a              # double 0.39281916772978998
	.quad	0x3fee660c0f3e13d4              # double 0.94995692231224859
	.quad	0x3fd07e2b317c2a1e              # double 0.25770072777291542
	.quad	0x3fbd4cd931813118              # double 0.11445386370286703
	.quad	0x3fe2485989cf7139              # double 0.57133175769880673
	.quad	0x3feac2395728174b              # double 0.83620898268484589
	.quad	0x3fef002daa7eefd4              # double 0.96877177524538149
	.quad	0x3fc27ea19c818c48              # double 0.14448948041817489
	.quad	0x3fe666af40a3e5b7              # double 0.70003473877948508
	.quad	0x3fe5f5b4f47d4e4b              # double 0.6862435126481129
	.quad	0x3fccb07061c71aa0              # double 0.22413449072174263
	.quad	0x3fea4b0dffb8d99f              # double 0.82166194864003106
	.quad	0x3fe1b1f813b5ffbf              # double 0.55297473764220928
	.quad	0x3fee1e664c05fd6c              # double 0.94121088836975053
	.quad	0x3fe2b6310279c8b5              # double 0.58474016650713756
	.quad	0x3fe1bdc4b85b4d15              # double 0.55441509253651822
	.quad	0x3fdae376c9fe35ae              # double 0.42013330198173093
	.quad	0x3fc8b64c11ebb060              # double 0.19306326746971347
	.quad	0x3fc4579a09977d4c              # double 0.15892339199397509
	.quad	0x3fe617a1b1f88da3              # double 0.69038471946662516
	.quad	0x3fe6d47f5d04e59e              # double 0.71343963783072062
	.quad	0x3fe735bc19cb988f              # double 0.72530941999572629
	.quad	0x3fef47923a86e4d2              # double 0.9774867194274981
	.quad	0x3f9951a00450c480              # double 0.024725437415501705
	.quad	0x3fea1942f5d4a6e6              # double 0.81558368696024952
	.quad	0x3fc7b695239500b0              # double 0.18525947797207243
	.quad	0x3fe24f61afd858ed              # double 0.57219013542888109
	.quad	0x3fda49dfc7da46a8              # double 0.41075891987666546
	.quad	0x3fdcd2da2a3f3d3a              # double 0.45036939740835502
	.quad	0x3fca6861ea05fd98              # double 0.20631050040172449
	.quad	0x3fe85d86a8d10385              # double 0.76141674968685946
	.quad	0x3fd255246325109c              # double 0.28644666368587379
	.quad	0x3fe90d23f5c22499              # double 0.78285406112367462
	.quad	0x3fa72dda378000d0              # double 0.045271701121238572
	.quad	0x3fe9c1b506a2d331              # double 0.80489589019871322
	.quad	0x3feee8c4abfed5b1              # double 0.96591409294949504
	.quad	0x3fe5fb8876af85cf              # double 0.68695471936023889
	.quad	0x3fea9019a4f0465c              # double 0.83009035315098911
	.quad	0x3fd063f7cd275238              # double 0.25610156092196545
	.quad	0x3feb75a50389ab21              # double 0.85811091128320893
	.quad	0x3fd2bf337fb5b34c              # double 0.29291999313027328
	.quad	0x3fa0a044547e5ac0              # double 0.032472739519268767
	.quad	0x3fe89c675d825ed0              # double 0.76909225715186302
	.quad	0x3fcc3bf48e041cc4              # double 0.22057969030740854
	.quad	0x3fe0c5bf4a51e3c8              # double 0.52413906589128434
	.quad	0x3fc769a77aeb13bc              # double 0.18291181089275976
	.quad	0x3fddf36079ed2900              # double 0.4679795447051589
	.quad	0x3fe9116e0b47e831              # double 0.78337766841219125
	.quad	0x3fd55dc6723126ea              # double 0.33384858275949958
	.quad	0x3fe0d0324ed4b674              # double 0.52541461369192044
	.quad	0x3fc5b19480e31984              # double 0.16948181432071519
	.quad	0x3fe97bb5098ef171              # double 0.79635097376698927
	.quad	0x3fd679f49e194866              # double 0.35119357528049588
	.quad	0x3fc58f6b4fb84f00              # double 0.16843930618835401
	.quad	0x3feb23e8f2024aa4              # double 0.84813353793500256
	.quad	0x3fa50d924d4073b0              # double 0.041119167261263967
	.quad	0x3fef77156a46f490              # double 0.983286578724476
	.quad	0x3fec2de581677d5e              # double 0.88060260080593955
	.quad	0x3fe8cb9146f0a49d              # double 0.77484954696150832
	.quad	0x3fac1ec57ab89a90              # double 0.05492226718006521
	.quad	0x3fb9f643009bbfb8              # double 0.10141390576222775
	.quad	0x3fcf4850f2456b60              # double 0.24439441518446881
	.quad	0x3fe964d0ccf547dc              # double 0.79355659514316867
	.quad	0x3fdbfdb204601b8e              # double 0.43735933711325792
	.quad	0x3fee523cc48629a2              # double 0.94753874190910303
	.quad	0x3fc50ea83e45cb28              # double 0.16450980225234813
	.quad	0x3fe8fe4a9b38379f              # double 0.78104143444373964
	.quad	0x3fc63c8c5a7e4928              # double 0.17372278612726544
	.quad	0x3fe91d5f48bd0896              # double 0.78483547407838006
	.quad	0x3fef69f31f09405d              # double 0.98168331205125591
	.quad	0x3fe4ef97f0b55e7e              # double 0.65424725545285844
	.quad	0x3fd366f50ed7349e              # double 0.30315901231080911
	.quad	0x3fcb466542cd4f00              # double 0.21308580171409375
	.quad	0x3fe88c039185481a              # double 0.76709154531477286
	.quad	0x3fece1993fe7d5e7              # double 0.90253889543117516
	.quad	0x3fad0020a7e78530              # double 0.056641598220958378
	.quad	0x3fc1f814313db484              # double 0.14038326649043509
	.quad	0x3fe1dd10a619994b              # double 0.55823547784238181
	.quad	0x3fe15ccacd3dfd52              # double 0.54257717214924583
	.quad	0x3fe4277881e088c2              # double 0.62981820456141002
	.quad	0x3fbc0d1ac42b2828              # double 0.10957495965263375
	.quad	0x3fe2bb377603be21              # double 0.58535359430056044
	.quad	0x3fcba383ac966c3c              # double 0.21592756201866503
	.quad	0x3fd124cde3f3f8a6              # double 0.26787135373150261
	.quad	0x3febae1433bfebb5              # double 0.86499986750947377
	.quad	0x3fee65a77e53ff9b              # double 0.94990896867237795
	.quad	0x3fc3894876555220              # double 0.15262704637520219
	.quad	0x3fe3bcc45dc7b2b8              # double 0.61679285351200175
	.quad	0x3f8d772b791afbc0              # double 0.014387454636901498
	.quad	0x3fe0d85a1a781cfd              # double 0.52641015214695097
	.quad	0x3feba8a4e16eb0c3              # double 0.8643364336944831
	.quad	0x3f9ba5ae33f75e80              # double 0.026999208375711792
	.quad	0x3fcde84a36280a30              # double 0.23365142483096824
	.quad	0x3fe2474d1ae3a8c0              # double 0.57120375873389406
	.quad	0x3fe469af1ab34f96              # double 0.63790087904861781
	.quad	0x3fd7cdaadf987366              # double 0.37192794642924409
	.quad	0x3fdb563fdd0bd774              # double 0.42713924967335193
	.quad	0x3fe35e9e0e5ae974              # double 0.60529997638449951
	.quad	0x3fab456b55f972a0              # double 0.053264002079889794
	.quad	0x3fd85e3a3437ff6e              # double 0.38075118159758048
	.quad	0x3fd8c23ba938a020              # double 0.38685504460818443
	.quad	0x3fe74d0e8e5655b8              # double 0.72815635490649466
	.quad	0x3fcaa3dc030b1a54              # double 0.20812559269525599
	.quad	0x3fd006991bb959f0              # double 0.25040271480011622
	.quad	0x3fe809a106b9744c              # double 0.75117541612019911
	.quad	0x3f90a40c6a2b0ca0              # double 0.016250795345297164
	.quad	0x3fccffc2c97d2bb0              # double 0.22655520284965069
	.quad	0x3fe3177a1f08a87f              # double 0.59661584912579702
	.quad	0x3fcaa784fd4cbf1c              # double 0.2082372891250025
	.quad	0x3fd09f404165b6e0              # double 0.25971990953881452
	.quad	0x3fe6fbfaf678d84b              # double 0.71825931681701982
	.quad	0x3fd7bfa17559c176              # double 0.37107120952625594
	.quad	0x3fecc99ab7ac1d94              # double 0.89960990785123096
	.quad	0x3fe01cacfa19b300              # double 0.50350045058948467
	.quad	0x3fea984f57128c67              # double 0.83109251982058374
	.quad	0x3fe40e947c3d8682              # double 0.62677978769006892
	.quad	0x3fee37a0390691e3              # double 0.9442902673513881
	.quad	0x3fe4626819944eee              # double 0.6370125293346669
	.quad	0x3fdf075df873a554              # double 0.48482465041032197
	.quad	0x3fe6c10bbdc050c8              # double 0.71106516896045324
	.quad	0x3fb43a5698fc9018              # double 0.079015171385038108
	.quad	0x3fe364cdde61c04b              # double 0.60605519708588795
	.quad	0x3fe89f5b326fd5ec              # double 0.76945266581486526
	.quad	0x3fe5cac3b21eef58              # double 0.68100151814676746
	.quad	0x3f930de836691460              # double 0.01860773880095612
	.quad	0x3fd02ffb664be7b8              # double 0.25292859067814843
	.quad	0x3fe6930e688aa398              # double 0.70545120638154213
	.quad	0x3fd7f66fd704a252              # double 0.37441631315099244
	.quad	0x3fc0c7ec18aa338c              # double 0.13110114292467434
	.quad	0x3fef79a07580e1de              # double 0.98359702062503707
	.quad	0x3fe25d20419a5d6b              # double 0.57386792004664977
	.quad	0x3fe2789f8509982c              # double 0.57722450240976775
	.quad	0x3fce17e17d17fc74              # double 0.23510378463831538
	.quad	0x3fefc302302cd5ad              # double 0.99255475434499873
	.quad	0x3fd13e369af68622              # double 0.2694221986112969
	.quad	0x3fcd2b7caf11374c              # double 0.2278896193333203
	.quad	0x3fa7c0f0875543e0              # double 0.046393887062215589
	.quad	0x3fe8d67c4d6f4bb8              # double 0.77618231891607703
	.quad	0x3fb3aab99e04a958              # double 0.076823807791389753
	.quad	0x3fd18651475f60ec              # double 0.27382308931329535
	.quad	0x3febde528da1b20a              # double 0.87088897383142805
	.quad	0x3fe584fc13e5ac77              # double 0.67248348127522106
	.quad	0x3fd5cc32ce438ea8              # double 0.3405882849021773
	.quad	0x3fe076cb7d5f490e              # double 0.5145013283420512
	.quad	0x3fdc85655b875e28              # double 0.44564184130055873
	.quad	0x3fdf696d2582f110              # double 0.49080971396667028
	.quad	0x3fcb211de6d52cf0              # double 0.2119481446373821
	.quad	0x3fe3f46c620d6a8f              # double 0.62358683729992659
	.quad	0x3fe82dee08ffd6b0              # double 0.75560666806878451
	.quad	0x3fcf39fc743c5d38              # double 0.24395709682060285
	.quad	0x3fec3efa18bbc606              # double 0.8826876147342666
	.quad	0x3fc89be5d6f2d694              # double 0.19225762362991772
	.quad	0x3fde817e8ae1cf7c              # double 0.47665370524122586
	.quad	0x3fe654b00343d241              # double 0.69783783567124413
	.quad	0x3feadf242b5ad581              # double 0.83973892657984106
	.quad	0x3fdf42daf667140e              # double 0.48845552504309431
	.quad	0x3feeba150d39473b              # double 0.96021511633646328
	.quad	0x3fe449cb30c9c4c4              # double 0.63400802163064229
	.quad	0x3fd9a9c3fa7ca1b6              # double 0.40098666631322588
	.quad	0x3fdeb3e1ef701920              # double 0.47972916014295386
	.quad	0x3fd5a4bdb9b5d2ec              # double 0.33817999969259804
	.quad	0x3fe2d35067f64424              # double 0.58829517655442887
	.quad	0x3fe8d0bdb4e65789              # double 0.7754810841749854
	.quad	0x3fc838c954fb2f7c              # double 0.18923298501465158
	.quad	0x3fe3097beb1f4070              # double 0.59490772173195516
	.quad	0x3fea62e797949224              # double 0.82457332234895774
	.quad	0x3fe4497cd63b26f5              # double 0.63397065965656785
	.quad	0x3fd7f50041b57bc8              # double 0.37432867447745055
	.quad	0x3fd6817888360346              # double 0.35165227224210971
	.quad	0x3fe3738952875f33              # double 0.60785356635003607
	.quad	0x3fddf26d1644aa86              # double 0.46792151617652455
	.quad	0x3fd1c8978f1627e8              # double 0.27786816571517514
	.quad	0x3fd145b50300a300              # double 0.26987958234035148
	.quad	0x3fefd810387b840b              # double 0.99512492210135528
	.quad	0x3fd3f8c42f332e58              # double 0.31205849274986042
	.quad	0x3febe0c8486d794c              # double 0.87118925233861821
	.quad	0x3fe0cc44858587cf              # double 0.52493501738012494
	.quad	0x3fd7f5f10079a81a              # double 0.37438607260139778
	.quad	0x3fd60522a41b79a0              # double 0.34406343484979551
	.quad	0x3fcaf8da69ed03c4              # double 0.21071939632568448
	.quad	0x3fcdb8f023241540              # double 0.23220636096827185
	.quad	0x3fe3ce61d9aaaecf              # double 0.61894314301522424
	.quad	0x3fd2a01ef3f26426              # double 0.29102300475057274
	.quad	0x3fe2e61fc4f7a389              # double 0.59059132070716303
	.quad	0x3fe6b0d3c638cd79              # double 0.70908535685741392
	.quad	0x3fe4b8392a1b9fd9              # double 0.64748819565010785
	.quad	0x3fc9059c5415b6a0              # double 0.19548372369483946
	.quad	0x3fed7b7a804c36c4              # double 0.92132306154390919
	.quad	0x3fd8be091505c5d2              # double 0.38659884503348707
	.quad	0x3fc1e4fc18d915e0              # double 0.13980056012421382
	.quad	0x3fc2032c2cb993f8              # double 0.1407218187697763
	.quad	0x3fee4eea8ec21692              # double 0.94713333017780799
	.quad	0x3fde6875a3842f56              # double 0.47512570351022043
	.quad	0x3feb9d5f22b406f4              # double 0.86296040323233436
	.quad	0x3fe85d40141626f3              # double 0.76138309405470606
	.quad	0x3fd857c9852ec33a              # double 0.3803581047641732
	.quad	0x3fb80e05483d85b8              # double 0.093963937889859461
	.quad	0x3fecbaa977319c93              # double 0.89778588562048112
	.quad	0x3fe149980c438b5b              # double 0.54023363490373855
	.quad	0x3fdc071bcc10faea              # double 0.43793387344696433
	.quad	0x3fe3af992d24c53d              # double 0.61518534485927712
	.quad	0x3fc63de0699c455c              # double 0.17376332432517472
	.quad	0x3fd6a7e3cf033d92              # double 0.3539971849067679
	.quad	0x3fdb7e4b235e2c82              # double 0.42958334401982523
	.quad	0x3fedbf11f0317b9d              # double 0.92957398331406049
	.quad	0x3fb4743e7d09a9c0              # double 0.079898744131845056
	.quad	0x3fc40c169d08d5cc              # double 0.15661890666676326
	.quad	0x3fd5fab236215e8e              # double 0.34342627798239611
	.quad	0x3fd75ec01fe4cc98              # double 0.36515811075805393
	.quad	0x3fe3525414f52391              # double 0.60379985898281252
	.quad	0x3fd59ad85b55433e              # double 0.337575997536124
	.quad	0x3fe8a2fcdf2c1c43              # double 0.76989596927968085
	.quad	0x3feda9c3ac1e9c73              # double 0.92697318665604056
	.quad	0x3f708583eba0e980              # double 0.0040335801259580029
	.quad	0x3fac4bf0e3d30950              # double 0.055266883669463085
	.quad	0x3fb47e555b5f6628              # double 0.080052695091034409
	.quad	0x3fe1f215baa08610              # double 0.56080137682528353
	.quad	0x3fc1c378881c2ac8              # double 0.13877779623029185
	.quad	0x3fe26088bc298e21              # double 0.57428395033315749
	.quad	0x3fce8988ee6f6058              # double 0.23857223169648267
	.quad	0x3fef5de2b6a58d14              # double 0.98021064446621375
	.quad	0x3fcb67c76964649c              # double 0.21410458227254459
	.quad	0x3fe2e059710aebe4              # double 0.58988639906544593
	.quad	0x3fe9937c706d3aa8              # double 0.79925367315612039
	.quad	0x3fde43d4404c1e9e              # double 0.47288996008908579
	.quad	0x3fe092046b3859f4              # double 0.51782437268667403
	.quad	0x3fee0a8ad1b64869              # double 0.93878689727195053
	.quad	0x3fe3e26fda2ab5c3              # double 0.62139122591695928
	.quad	0x3feecacb9665f498              # double 0.96225528120671111
	.quad	0x3fef47a3c017b903              # double 0.97749507444476113
	.quad	0x3fdd8cb871938c8e              # double 0.46171389666978591
	.quad	0x3fe8108925b57de8              # double 0.75201852192907115
	.quad	0x3fed99909895084f              # double 0.92499570656969776
	.quad	0x3fec80a1c63bad85              # double 0.89070214002042347
	.quad	0x3fd18ceecc90e008              # double 0.27422685601368402
	.quad	0x3fd133c9fb84782c              # double 0.26878594934703659
	.quad	0x3fee66ca2698b3f6              # double 0.95004756487253306
	.quad	0x3fea8809a4d304d7              # double 0.82910616104359292
	.quad	0x3f9b41b8ba88d060              # double 0.026617895493658117
	.quad	0x3fe877b75754cfec              # double 0.76461379105466908
	.quad	0x3fdf23334ab4d2d2              # double 0.48652345939198682
	.quad	0x3fb8595de5d1fa58              # double 0.0951136289677178
	.quad	0x3fef53c4c5d97f8d              # double 0.97897566454411022
	.quad	0x3fedf19a14589916              # double 0.9357424161324015
	.quad	0x3fe906429ff4b839              # double 0.78201419106858971
	.quad	0x3fefb3ed443e949d              # double 0.9907137234591975
	.quad	0x3fef9ab2b97d6292              # double 0.987634050640809
	.quad	0x3fd8cce8d252434a              # double 0.38750668086236273
	.quad	0x3fe1fec7799f2780              # double 0.5623509765075454
	.quad	0x3fe4e39e058f6162              # double 0.65278531156495156
	.quad	0x3fe72040ee4d2350              # double 0.72268721144892289
	.quad	0x3fe11804f69d0ab4              # double 0.53418205420196907
	.quad	0x3fdcf074adb2a63a              # double 0.45217625582390364
	.quad	0x3fd2b877d13da432              # double 0.29250903543158124
	.quad	0x3fa44762022f83e0              # double 0.03960710789375077
	.quad	0x3fb37dda12bbcdb0              # double 0.076139096807131378
	.quad	0x3fe00fd7c70cc340              # double 0.5019339454357592
	.quad	0x3fe5023c7f8d465e              # double 0.65652298843833612
	.quad	0x3fee20e0d0bf158c              # double 0.94151345034394884
	.quad	0x3fe15e34a3133779              # double 0.54274970865820571
	.quad	0x3f60f7a69da5d000              # double 0.0020712141242089643
	.quad	0x3fcd89851bf0a368              # double 0.23075927604920854
	.quad	0x3fb6aa7807243340              # double 0.088538648360736438
	.quad	0x3fd27b68931e0ff6              # double 0.28878225676476121
	.quad	0x3fb669be0fac9e08              # double 0.087551001383524008
	.quad	0x3fd0c9aec3364756              # double 0.26230973304438032
	.quad	0x3fd2e72af268cb74              # double 0.29535936043537636
	.quad	0x3fea7a3117582d64              # double 0.82741598662816473
	.quad	0x3fc60423bce83b64              # double 0.17200133060438383
	.quad	0x3fec6506da482e1c              # double 0.8873323691672712
	.quad	0x3fecdc41f32bd5bf              # double 0.90188691610699567
	.quad	0x3fe774a8779e6c10              # double 0.73299048770002351
	.quad	0x3fe98829c925117f              # double 0.79787148748486902
	.quad	0x3fc2208afe1b342c              # double 0.1416181317094084
	.quad	0x3fefb72c96aea73d              # double 0.99111012869000314
	.quad	0x3fe5b07db2bc45d0              # double 0.67779431256547618
	.quad	0x3fcc12e2450411d8              # double 0.21932628984372005
	.quad	0x3fde1383fce00cf6              # double 0.46994113631099255
	.quad	0x3fefeb89ffbe7406              # double 0.99750232648841641
	.quad	0x3fe23777f6396fe0              # double 0.56927106943794215
	.quad	0x3fe1753bf5a0995b              # double 0.54556081747140739
	.quad	0x3fed54105e6098b0              # double 0.91651171143600685
	.quad	0x3febd9d7915e9a37              # double 0.87034204857338338
	.quad	0x3fecedd4bbd53abe              # double 0.90403210340613049
	.quad	0x3febbb8af534952e              # double 0.86664340869598333
	.quad	0x3fa70555f122a2c0              # double 0.044962583241902276
	.quad	0x3fe3fdb11478fb25              # double 0.62471822737265781
	.quad	0x3fe821f7d1ee5e71              # double 0.75414649011777446
	.quad	0x3fc183502adb7830              # double 0.13681985943452579
	.quad	0x3fe1d6b34da12027              # double 0.55745854532233785
	.quad	0x3fe3d540513bd8a4              # double 0.61978164545032088
	.quad	0x3fdf950ae1b11b8a              # double 0.49347183265893391
	.quad	0x3fd14322e04253c0              # double 0.26972267055799293
	.quad	0x3fe33b36a45e74c9              # double 0.60097820380510669
	.quad	0x3fc4065aca83f41c              # double 0.15644392860841172
	.quad	0x3fe1963d3eaa4a81              # double 0.54958975066467997
	.quad	0x3fea0cfb4c3c6fbe              # double 0.81408467187747369
	.quad	0x3fee59cba2c25255              # double 0.9484613589180052
	.quad	0x3fd2f270bfbf1a82              # double 0.29604738927120178
	.quad	0x3fb45be371f768b8              # double 0.079527106593931474
	.quad	0x3fed751d98fa40eb              # double 0.92054633978298506
	.quad	0x3fd8b23f20af8524              # double 0.38587930862384412
	.quad	0x3fdbc41aeddf2540              # double 0.43384431104330545
	.quad	0x3fc17fbbd820a7ec              # double 0.13671062520125987
	.quad	0x3f8755f4a5909940              # double 0.011394416144025699
	.quad	0x3fe28e59738873f3              # double 0.57987663807909795
	.quad	0x3fe3929933e41314              # double 0.61164531836456826
	.quad	0x3fa24d221aabc180              # double 0.035744729762771321
	.quad	0x3fef8a44158d79e1              # double 0.98562816819667997
	.quad	0x3feeed37465eec74              # double 0.96645702118202203
	.quad	0x3fece9fde784c3ae              # double 0.90356345385054282
	.quad	0x3fea4d9417c4f620              # double 0.82197003023583548
	.quad	0x3fe1e36634d8a233              # double 0.5590086967614013
	.quad	0x3fdb600605867c8c              # double 0.42773581065734656
	.quad	0x3fee47e32c509121              # double 0.9462753167650001
	.quad	0x3fe28b81eeff9c8f              # double 0.57952973060027257
	.quad	0x3fcab3b970311504              # double 0.20860975244628588
	.quad	0x3fe31fe89754ba32              # double 0.59764508778409309
	.quad	0x3fe6b31921e369c3              # double 0.70936256998839331
	.quad	0x3fe00b84411cc1f7              # double 0.50140583722355714
	.quad	0x3fdde56e98783144              # double 0.46712841882324008
	.quad	0x3fe09e33527f750f              # double 0.51931158173434422
	.quad	0x3fa18660481b82c0              # double 0.034228333284550327
	.quad	0x3fd4e5390c77d052              # double 0.32649065225200957
	.quad	0x3fee0a8f5297b1a7              # double 0.93878904467924407
	.quad	0x3feb5da290169226              # double 0.85518005506725525
	.quad	0x3fe7177b66e602a3              # double 0.7216164598213094
	.quad	0x3fd7f78ce2a7d2fa              # double 0.3744842732842667
	.quad	0x3fc961554d1bc12c              # double 0.19828287377414122
	.quad	0x3fd940f6cf769fb6              # double 0.39459009418578306
	.quad	0x3f964238dc1bfd60              # double 0.021736992296607638
	.quad	0x3fca46cb68f2608c              # double 0.20528547882418413
	.quad	0x3fc9264e6db01138              # double 0.19648151737067976
	.quad	0x3fe5e14baf6c373a              # double 0.68375190984963941
	.quad	0x3fe4d81fa1c47068              # double 0.65138227076705579
	.quad	0x3fdc5b77169e9572              # double 0.44308259209568412
	.quad	0x3fea959cd5d474f4              # double 0.83076326144842349
	.quad	0x3fd10e4ea2aec4b0              # double 0.26649824034673042
	.quad	0x3fe27c42daf564fc              # double 0.5776685978445637
	.quad	0x3fe895aae634f338              # double 0.76826996767304134
	.quad	0x3f9fc3caef900820              # double 0.031020327445738016
	.quad	0x3fe3b022991f4fee              # double 0.61525087267591316
	.quad	0x3fcef0ce9cb45d30              # double 0.24172384883488851
	.quad	0x3fd9521e03e949c4              # double 0.39563703901253811
	.quad	0x3fee1c1f359325af              # double 0.94093285049273401
	.quad	0x3fe2cf4978e74051              # double 0.58780358900004093
	.quad	0x3fb9eb8e74505cf0              # double 0.10125055637069003
	.quad	0x3fe5d04e38b401c1              # double 0.68167792391619042
	.quad	0x3fe3062252c6b11f              # double 0.59449878852095484
	.quad	0x3fd58dc612b6a0d4              # double 0.3367781813381161
	.quad	0x3fd19200e71567be              # double 0.27453634802588656
	.quad	0x3fb0387821b20ae8              # double 0.063361652590213091
	.quad	0x3fba9b98a33996b8              # double 0.10393671021446493
	.quad	0x3fe4c2de3c3343c6              # double 0.64878761060583012
	.quad	0x3fe58c5374b62b0f              # double 0.67337963862641625
	.quad	0x3fec603bf9432a47              # double 0.8867473476796669
	.quad	0x3fe361fae84d84e5              # double 0.60571046229975123
	.quad	0x3fe967dd4a82cb11              # double 0.79392876198684992
	.quad	0x3fde980d102a5768              # double 0.47803045824672674
	.quad	0x3fcd4b9dc178d288              # double 0.22887012431023757
	.quad	0x3fe13966cc44f8cf              # double 0.53825702568408385
	.quad	0x3fedcfae2900c071              # double 0.93160160072694798
	.quad	0x3fece1b0280bf061              # double 0.90254981824501723
	.quad	0x3feaae6b5741677d              # double 0.83379141847693428
	.quad	0x3fd01169ee27635e              # double 0.25106285340512169
	.quad	0x3fe52181befad827              # double 0.66034018803361938
	.quad	0x3fdb584876af7846              # double 0.4272633704221146
	.quad	0x3febaca31ff5f1fd              # double 0.86482387773827407
	.quad	0x3fe61de891177207              # double 0.69115093553733764
	.quad	0x3fefca4ac3306ee4              # double 0.99344385264290879
	.quad	0x3fd40dd2609679a2              # double 0.31334361488725382
	.quad	0x3faf8b62dabde2e0              # double 0.061610306932328163
	.quad	0x3fef57b78f530f55              # double 0.97945764535004775
	.quad	0x3feaf9c7a4186c6e              # double 0.84299070405849164
	.quad	0x3fd0dc140e553e90              # double 0.26343251609521534
	.quad	0x3fe9460c7faeb23a              # double 0.78980088174791452
	.quad	0x3fedc291efa43fae              # double 0.93000122838019705
	.quad	0x3fe9ec45ac607789              # double 0.81009181659077101
	.quad	0x3f8a90afb6636600              # double 0.012971279862926899
	.quad	0x3fe00a1ace955fa1              # double 0.50123348568284964
	.quad	0x3fe6de14fece3da9              # double 0.71460962073063172
	.quad	0x3fea8be7d9600354              # double 0.82957832771362882
	.quad	0x3fdb1ce744069b4c              # double 0.42363912242074231
	.quad	0x3fc9213ee0d9d1fc              # double 0.19632707575841823
	.quad	0x3fa25d371c6fc9e0              # double 0.035867426129602142
	.quad	0x3fbe992c73e71be0              # double 0.11952474431664895
	.quad	0x3fe03b54538f8e14              # double 0.50724235840283649
	.quad	0x3fe727debc95e58b              # double 0.72361695130455084
	.quad	0x3fcaf92179d6d62c              # double 0.21072786759548146
	.quad	0x3fe95dc50455c4c2              # double 0.7926964840572952
	.quad	0x3fecfe02f417fc8b              # double 0.90600726770925755
	.quad	0x3fe08d0be4c689c8              # double 0.51721758539888985
	.quad	0x3fe34c7e1abe5a7a              # double 0.60308747504571092
	.quad	0x3fe4c138644bb5e5              # double 0.64858646000874087
	.quad	0x3fd2f7add15616c6              # double 0.29636712496754247
	.quad	0x3fe3bb7f0af8bf79              # double 0.61663772719292276
	.quad	0x3fee9bfc4eebe1e4              # double 0.95654120840395906
	.quad	0x3fefaed8385182d0              # double 0.99009333610237071
	.quad	0x3faf1b3d196074c0              # double 0.06075468954825558
	.quad	0x3fea7842723cb52c              # double 0.82718012153569508
	.quad	0x3fdc384436d82242              # double 0.44093423229108819
	.quad	0x3fed85e19b5bd493              # double 0.9225929293012477
	.quad	0x3fa6496841f5c040              # double 0.043528802921060095
	.quad	0x3febac694e193532              # double 0.86479630712134381
	.quad	0x3f850816eccb1940              # double 0.010269335843429261
	.quad	0x3fe71a2b1a4688db              # double 0.72194438106478331
	.quad	0x3fe11e16d24d4cc3              # double 0.53492299151039224
	.quad	0x3fe880bb755717d4              # double 0.76571438711175199
	.quad	0x3fc1a79efdfc3a64              # double 0.13792788888572993
	.quad	0x3fd4789ffdc5e3da              # double 0.31986236364860832
	.quad	0x3fc92cd7a5b7b2e0              # double 0.19668098060301187
	.quad	0x3f976ef849d93120              # double 0.02288425398573779
	.quad	0x3fd787825f6c98e4              # double 0.36764582937975221
	.quad	0x3fcf1b5ce3f70828              # double 0.24302254801847423
	.quad	0x3fe037f68949475a              # double 0.50683142484397625
	.quad	0x3fec60d423b2fcb9              # double 0.88681990597242255
	.quad	0x3fecbda5d36880e4              # double 0.89815036097209288
	.quad	0x3fcf5329733962e4              # double 0.24472540022067968
	.quad	0x3fe306869091d3f4              # double 0.59454658733613863
	.quad	0x3fd827ede7da4c54              # double 0.37743709222667587
	.quad	0x3fdd4bb270630bc8              # double 0.45774517989428576
	.quad	0x3fe670fd49772041              # double 0.70129265164087695
	.quad	0x3fdd81b18e25161c              # double 0.46104086762747598
	.quad	0x3fdfa8341d3eaba8              # double 0.49464133125246201
	.quad	0x3fe8bbd91fa8cdc1              # double 0.77293068107103846
	.quad	0x3fd292efad703556              # double 0.29021827637992226
	.quad	0x3fcf066f8e877d14              # double 0.24238390407024524
	.quad	0x3fe77919f62d7013              # double 0.73353288728276522
	.quad	0x3fef12acd08f610f              # double 0.97102967008962248
	.quad	0x3fd7e8b79db6417a              # double 0.37357893373066242
	.quad	0x3fef292f5fb0a220              # double 0.97377747239540113
	.quad	0x3fc0bd4525b3d9b0              # double 0.1307760652632175
	.quad	0x3fbfd7a443698130              # double 0.1243841805057897
	.quad	0x3fe65e52493dff35              # double 0.69901384644615538
	.quad	0x3fe8292317352eca              # double 0.75502161534083112
	.quad	0x3fef5b3f1785d3ed              # double 0.97988848299303088
	.quad	0x3fdd6f9dad2455f4              # double 0.45993749531166306
	.quad	0x3fe0e523ef37464c              # double 0.5279712364374034
	.quad	0x3fd01e7f903e685a              # double 0.25186146818453425
	.quad	0x3fe327afc7cb24d2              # double 0.59859456083463614
	.quad	0x3fdc9289915fc084              # double 0.44644393154795403
	.quad	0x3fe95085f6cf1cc0              # double 0.79107950405968808
	.quad	0x3fe3cdfe10dfcaca              # double 0.61889556213130814
	.quad	0x3fea708810cd3477              # double 0.82623675614890046
	.quad	0x3fe0157383026a76              # double 0.50261855685978563
	.quad	0x3fc14d7db3c0eaec              # double 0.13517733838110446
	.quad	0x3fe18c02d40bb5e5              # double 0.54834119239029333
	.quad	0x3feb5c36e2e51f29              # double 0.85500664058142661
	.quad	0x3fdd3721fe311de8              # double 0.45649003814148026
	.quad	0x3fdbfa3931e67ff2              # double 0.43714742539486828
	.quad	0x3feed6295d630d8c              # double 0.96364277114519003
	.quad	0x3fe51f27e48303a9              # double 0.66005320197301842
	.quad	0x3fe9ec2d712bd807              # double 0.81008026222002705
	.quad	0x3fe3af87cf7eb599              # double 0.61517706419333529
	.quad	0x3fe246323e92510f              # double 0.57106888028150304
	.quad	0x3fec565932e2f410              # double 0.88554058016564063
	.quad	0x3feaf0eeb05128e4              # double 0.84191069065971335
	.quad	0x3fe1e9fe50fc5796              # double 0.55981365029832619
	.quad	0x3feb9923d6586bc3              # double 0.86244384636244609
	.quad	0x3fe9310180eb741f              # double 0.7872321622813877
	.quad	0x3fd87ba2a94e891a              # double 0.38254610570779024
	.quad	0x3fba0915e62b9818              # double 0.10170113438979944
	.quad	0x3fa470a1190d2bd0              # double 0.039921793277777007
	.quad	0x3fc41ddeccd992ac              # double 0.15716156961857075
	.quad	0x3fe7269828bee9e4              # double 0.72346122701793236
	.quad	0x3fdde6c88c18a7e8              # double 0.46721090012817834
	.quad	0x3feb5deec3ae96b2              # double 0.85521639079225609
	.quad	0x3fc79c4c8d8795dc              # double 0.18445736799837575
	.quad	0x3fd9761bf8df7dc4              # double 0.39783381752019076
	.quad	0x3fd9361292dab462              # double 0.3939253267406625
	.quad	0x3fec25954cf8c2a8              # double 0.87958779367007356
	.quad	0x3fd90046a8d8ffcc              # double 0.39064184655216816
	.quad	0x3fc9a49a1af1a4d4              # double 0.20033575358983191
	.quad	0x3fe5a0313014a0a8              # double 0.67580470457780439
	.quad	0x3feafb5a00c40e14              # double 0.84318256520822609
	.quad	0x3fe0bbf566d94720              # double 0.52294416511196928
	.quad	0x3fd08d91b1b91efe              # double 0.25864069324278194
	.quad	0x3fc153573d2de680              # double 0.13535585868139677
	.quad	0x3fe11055fedc5326              # double 0.53324413087338907
	.quad	0x3fc728cff8d3aea4              # double 0.18093299531698392
	.quad	0x3faa375c9f4ab3e0              # double 0.051203627056885415
	.quad	0x3fe683f7ea66189d              # double 0.70360942631738832
	.quad	0x3fc3f11e7cde6f00              # double 0.1557958707534155
	.quad	0x3fdc2e99579c3d16              # double 0.44034417682355931
	.quad	0x3fd0d0721b0e3f6a              # double 0.26272251741555996
	.quad	0x3fecc315e99f65bf              # double 0.8988141596739111
	.quad	0x3fef5e8054b9de27              # double 0.98028580234580864
	.quad	0x3fe6ca0c3d83f0dc              # double 0.71216403975224862
	.quad	0x3fd0511334d8ff16              # double 0.25494842682745522
	.quad	0x3fe72be375bf28d7              # double 0.72410748479276321
	.quad	0x3fd8d01efe08d252              # double 0.38770270164539966
	.quad	0x3fef83714ef4fce3              # double 0.98479524060521972
	.quad	0x3fe856c456fb8c75              # double 0.76059166897574804
	.quad	0x3fe9ef54d79fffeb              # double 0.81046526064164703
	.quad	0x3fe1c91027300b62              # double 0.55579383519976155
	.quad	0x3fd59346436c9b2e              # double 0.33711392006300656
	.quad	0x3fec0cb648443165              # double 0.87655176271941271
	.quad	0x3fab52f3563b8610              # double 0.053367237354688624
	.quad	0x3fe5e9c93500a485              # double 0.68478832580616766
	.quad	0x3fd60f675a5a7b3c              # double 0.34469016860559853
	.quad	0x3fdf24bfb1f4f0c6              # double 0.48661796930879253
	.quad	0x3fc61a29bdc61000              # double 0.17267343298237847
	.quad	0x3fe2f6f3567f8595              # double 0.59264532941976944
	.quad	0x3feb8d9d65548f99              # double 0.86103696623875969
	.quad	0x3fe8c460a44db391              # double 0.77397186365634429
	.quad	0x3fc5a1d311b0519c              # double 0.1690009914751841
	.quad	0x3fc4e37ee812041c              # double 0.16319261867104806
	.quad	0x3fde372c5aa49084              # double 0.4721175084289444
	.quad	0x3feb5308cc026a9d              # double 0.85388603063195812
	.quad	0x3fe1245b8d60cdc2              # double 0.53568818676870245
	.quad	0x3fed81871ee59295              # double 0.9220615008785723
	.quad	0x3fe6f82ac0c2287d              # double 0.71779382370119971
	.quad	0x3fee2a660af1a2e3              # double 0.94267561089972352
	.quad	0x3fd00b342087f2a4              # double 0.25068381478176094
	.quad	0x3fa626aa9fabf3c0              # double 0.043263751975224363
	.quad	0x3fe332c160092c94              # double 0.59994572407721813
	.quad	0x3fef7371b89578d3              # double 0.98284231235063612
	.quad	0x3f6da06be3858d00              # double 0.0036165339662815876
	.quad	0x3fd079aff840a512              # double 0.25742720836076771
	.quad	0x3fe91d07a25a4559              # double 0.78479367932792876
	.quad	0x3fec459b782fa2bd              # double 0.8834969851860347
	.quad	0x3febb283e69c61b8              # double 0.86554141083893565
	.quad	0x3fe3923f8e57f3a1              # double 0.61160257150151065
	.quad	0x3fc7bc1d024a4610              # double 0.18542826282332259
	.quad	0x3fefaf5c3e9f79cf              # double 0.9901562903503932
	.quad	0x3feb8c02a4ed2e41              # double 0.86084110462383745
	.quad	0x3feab979acfb3290              # double 0.83514102731131068
	.quad	0x3fefffa9380513e8              # double 0.99995861951231024
	.quad	0x3fac746eabb151a0              # double 0.055575808008742955
	.quad	0x3febca501b55e97c              # double 0.8684464010141677
	.quad	0x3fe50b21063c7883              # double 0.6576085206795742
	.quad	0x3fd938342d3818f2              # double 0.39405540862971045
	.quad	0x3fed939b2704148e              # double 0.92426831836987033
	.quad	0x3feed7b54d5e39dc              # double 0.96383156882239573
	.quad	0x3fe01ee8ef4d6c4d              # double 0.50377318133122062
	.quad	0x3fc5915b3b40a204              # double 0.16849842446505658
	.quad	0x3fe3ae910ac2b7fd              # double 0.61505939580615598
	.quad	0x3fcffb562e6caf10              # double 0.24985768572639033
	.quad	0x3fdf9f84764e3d3c              # double 0.49411117127688775
	.quad	0x3fe1b17c545db5f4              # double 0.5529157302641452
	.quad	0x3fef5bad3067d9dc              # double 0.97994098142845187
	.quad	0x3fcca7b61d127238              # double 0.22386814517530396
	.quad	0x3fd0a2b36bf923f0              # double 0.25993047279604209
	.quad	0x3fecfd5ed846bedd              # double 0.90592901460146502
	.quad	0x3fe8f50edb1fea41              # double 0.77991431043421511
	.quad	0x3fefad7b5b80458d              # double 0.98992698546696689
	.quad	0x3fd5eb2f2d657e74              # double 0.3424795096707165
	.quad	0x3fef809f2b8beebe              # double 0.98445089822003928
	.quad	0x3fa6c9d0495a0290              # double 0.044508465723088197
	.quad	0x3fdf9cd5499b7704              # double 0.49394733608447461
	.quad	0x3fec222200af2714              # double 0.87916660436278215
	.quad	0x3fcfd5bcb11c9778              # double 0.24871023796111635
	.quad	0x3fef15136d4ba123              # double 0.97132274004710372
	.quad	0x3fec344a146afc40              # double 0.8813829802310309
	.quad	0x3fccc305474e6f1c              # double 0.22470155698544481
	.quad	0x3fea185e98be6f49              # double 0.81547479470052864
	.quad	0x3feb45e53a576eae              # double 0.85228215594130119
	.quad	0x3fe2a60b6c091212              # double 0.58276911831541356
	.quad	0x3fec18a8bfbb51c0              # double 0.87801015327072918
	.quad	0x3fda1776f70effea              # double 0.40768217207732838
	.quad	0x3fd0d6b30d2345ca              # double 0.26310421259867367
	.quad	0x3fcf9283c3e0c180              # double 0.2466587740359607
	.quad	0x3fbc87cbf9969558              # double 0.11144709437811195
	.quad	0x3fecbf57cce791ec              # double 0.89835729618476767
	.quad	0x3fb1f61149ab89a8              # double 0.070160942540985816
	.quad	0x3fe7906276d3c3b3              # double 0.73637507637442068
	.quad	0x3fe74acbd2c858f8              # double 0.72788039368131674
	.quad	0x3fcb1b4a4f86e3cc              # double 0.21177033312940663
	.quad	0x3f3006dc0e54a800              # double 2.4454948864394144E-4
	.quad	0x3fe72671faffef1d              # double 0.72344302199732946
	.quad	0x3fe5cb89e2b88d54              # double 0.68109602242877054
	.quad	0x3fcc822304bf3740              # double 0.22272145969184898
	.quad	0x3f9d4f7e25f0db00              # double 0.028623553338742447
	.quad	0x3fd33299a010e60c              # double 0.2999633849281913
	.quad	0x3fef84b9179a2b7c              # double 0.98495154008683938
	.quad	0x3fee6afb50ad0f03              # double 0.95055928952248825
	.quad	0x3fe9af48c7f5eeb2              # double 0.80264700941866907
	.quad	0x3febda84db213c73              # double 0.87042467879099517
	.quad	0x3fc7aedf2b1da2c8              # double 0.1850241623426625
	.quad	0x3fe456cdc0a99e81              # double 0.63559615735444208
	.quad	0x3fa355f4589e1660              # double 0.037765155618256996
	.quad	0x3fd4dcc4ee61eb96              # double 0.32597468642750849
	.quad	0x3fe2b0cc9121021c              # double 0.58408192010398663
	.quad	0x3fc375423dbd1bfc              # double 0.15201595320306172
	.quad	0x3fea6cc1690731c1              # double 0.82577581895161967
	.quad	0x3fd63ae2453f964a              # double 0.347343986153963
	.quad	0x3fed430346274a2e              # double 0.91443027212000572
	.quad	0x3fdfe0b8d3b24e60              # double 0.49809094117629193
	.quad	0x3fde8256d2b24778              # double 0.47670527053661926
	.quad	0x3fee1131bf3d4a15              # double 0.93959891654441441
	.quad	0x3fe0b7ebd2b0bf12              # double 0.52245131636115816
	.quad	0x3fd62885a3f1c8c8              # double 0.34622326860620634
	.quad	0x3fab49f0a70cf7c0              # double 0.053298492805410103
	.quad	0x3fd0effe2d42cbfc              # double 0.26464800281536305
	.quad	0x3fe2c9d380b2108d              # double 0.58713698516705082
	.quad	0x3fc77abfb1960378              # double 0.18343349620047511
	.quad	0x3fc22fab84207e90              # double 0.14207977248678505
	.quad	0x3fecf7e5e1eb5504              # double 0.90526098370415342
	.quad	0x3fe3328f16931ee0              # double 0.59992174538725962
	.quad	0x3fee4aaec5da9151              # double 0.94661654132191064
	.quad	0x3fcea9b27055ce54              # double 0.23955374226680937
	.quad	0x3fde78122d26a95c              # double 0.47607855233458962
	.quad	0x3fe920827974b065              # double 0.78521846505965398
	.quad	0x3fe1d6efec767066              # double 0.55748745140182332
	.quad	0x3fd2e95770647070              # double 0.29549203849615591
	.quad	0x3fa9218d049a3670              # double 0.049084097682776995
	.quad	0x3fe9eb783f0d91d1              # double 0.80999386134186058
	.quad	0x3fd578d5aad27570              # double 0.33550016099783075
	.quad	0x3fd8a9f3594a6554              # double 0.38537296027933121
	.quad	0x3fb5e75338bc0e58              # double 0.085560990668505865
	.quad	0x3fe2817140f2a92a              # double 0.57830107388625618
	.quad	0x3fde9816919b6fc0              # double 0.47803272456598833
	.quad	0x3fcc10baa9bf602c              # double 0.21926053322272432
	.quad	0x3fbb2dab743883a0              # double 0.10616561496182308
	.quad	0x3fe587a8d4bd7964              # double 0.67280999708945588
	.quad	0x3fe095609dc68812              # double 0.51823454680948289
	.quad	0x3fe8c9a4f4d9115e              # double 0.77461479017123813
	.quad	0x3fce0cc50fdaca10              # double 0.23476470255043624
	.quad	0x3fbfcce2b8ae1080              # double 0.12422005661761837
	.quad	0x3fe8e4cf80270d19              # double 0.77793097524446175
	.quad	0x3fc6953fc69340a4              # double 0.17642972179465233
	.quad	0x3fee6ecc84cfdebf              # double 0.95102525653688719
	.quad	0x3fd714a058553b7e              # double 0.36063393236411645
	.quad	0x3fd8a32f4aee53a0              # double 0.38496000592686563
	.quad	0x3fe693e963533f8f              # double 0.70555562400294203
	.quad	0x3fef1409c9ff8375              # double 0.97119607403520424
	.quad	0x3fe90f3f446c032d              # double 0.78311122287423063
	.quad	0x3fc2261316e5ebf0              # double 0.1417869436080248
	.quad	0x3fd164253652447c              # double 0.27173738770313327
	.quad	0x3fc242f8ecea01f0              # double 0.14266883438177969
	.quad	0x3fdd10ffc9788eca              # double 0.45416254687209501
	.quad	0x3f91f93c82b41ce0              # double 0.017552323796761082
	.quad	0x3fdb4276b4e2a248              # double 0.42593162216738678
	.quad	0x3fd5ccbe7e22f4d0              # double 0.34062158887884397
	.quad	0x3fb48034c13816c0              # double 0.080081269428855073
	.quad	0x3fe079e4713044ec              # double 0.51487943751467702
	.quad	0x3fc6d09b95d539a4              # double 0.17824120346126648
	.quad	0x3fcd960915fd2764              # double 0.2311412198417272
	.quad	0x3fd4e63c7f08d1a8              # double 0.32655250936229629
	.quad	0x3fd6286e248abd14              # double 0.3462176663260419
	.quad	0x3fe63e8d084f322f              # double 0.69513560889169479
	.quad	0x3febda6efe610b54              # double 0.8704142540303601
	.quad	0x3fcd23c843c4b080              # double 0.22765448864936744
	.quad	0x3fd0be3f857013a2              # double 0.26161182433161845
	.quad	0x3fdf544addc4aea0              # double 0.48951980263766792
	.quad	0x3febf55823b7c27c              # double 0.87369925476202991
	.quad	0x3fd2527a8a69522e              # double 0.28628409878482131
	.quad	0x3fe885ddec36f122              # double 0.76634117255847323
	.quad	0x3fb6525f1ec9aea8              # double 0.08719439031272691
	.quad	0x3fe3ca9c64cf499c              # double 0.61848277749440994
	.quad	0x3fe1527736e1fb28              # double 0.54131661147389298
	.quad	0x3fe557232885a7e9              # double 0.66688688196631773
	.quad	0x3fd6ceb74805272e              # double 0.35636693986144763
	.quad	0x3fdd1fa01e16fb72              # double 0.45505526483969228
	.quad	0x3fc8c9802efee1c4              # double 0.19364931387623419
	.quad	0x3fe3fbdec12aef33              # double 0.62449586608952357
	.quad	0x3fb82ce22251e380              # double 0.094434865359188435
	.quad	0x3fe38992037bcac6              # double 0.61054325752623906
	.quad	0x3fe33a4f3528ac4d              # double 0.60086784727662634
	.quad	0x3fee2b394ef17bb3              # double 0.94277635019886075
	.quad	0x3fe4f32d24b3a4fc              # double 0.65468461197193006
	.quad	0x3fdea5b2cde2c764              # double 0.4788634310344746
	.quad	0x3fedc3a5cd4aaaf7              # double 0.93013277145413908
	.quad	0x3fc159e1f2ba2c94              # double 0.13555549957195423
	.quad	0x3fd2dff915ba7854              # double 0.29492022630609438
	.quad	0x3fd2ba4c2aee39b6              # double 0.29262069885671893
	.quad	0x3fde593ff2bee9d8              # double 0.47419737535133555
	.quad	0x3fd8733006dea478              # double 0.38203049345845086
	.quad	0x3fe55e7cb9d37a42              # double 0.66778408331067163
	.quad	0x3fea956a6e76eb20              # double 0.83073922705748159
	.quad	0x3feab91a3260c1ec              # double 0.83509549941487426
	.quad	0x3fed3a2a21dfd73f              # double 0.91335016838159067
	.quad	0x3fe35ce754ee5a3e              # double 0.60509077632998021
	.quad	0x3fe1329a164133d2              # double 0.53742698999996663
	.quad	0x3fd46e9905235e5a              # double 0.31925035001538549
	.quad	0x3fdd15a8ef61fda0              # double 0.45444701554512257
	.quad	0x3fe9a64de22c67ef              # double 0.80155080961708147
	.quad	0x3fe487eaeaac869d              # double 0.6415915091967751
	.quad	0x3feef8c81a0760cb              # double 0.96786885341409722
	.quad	0x3fdd734b7bcebeb6              # double 0.46016203966699309
	.quad	0x3fc437c6e0f631ac              # double 0.15795217499215874
	.quad	0x3fe42bc65ed5b843              # double 0.63034361383848425
	.quad	0x3fc5d21b64d03bb0              # double 0.1704744570019705
	.quad	0x3fdede55c7b62bec              # double 0.48232025626265229
	.quad	0x3f9bbaed2c20a520              # double 0.02708025533516889
	.quad	0x3fd24b3654182892              # double 0.28584058964100578
	.quad	0x3fe4adef01570c45              # double 0.64623213063931273
	.quad	0x3fe98c2825758a9d              # double 0.79835898700942531
	.quad	0x3fcdcea875104f58              # double 0.23286920276643275
	.quad	0x3fadf5bd2e408e10              # double 0.058515464683548513
	.quad	0x3fea3e88c2995e2a              # double 0.82013357169757239
	.quad	0x3fd0b393af407ed4              # double 0.26096050371596147
	.quad	0x3fe22c4e4490de78              # double 0.56790841476227083
	.quad	0x3fd2245b7cb74678              # double 0.28346907786644904
	.quad	0x3feab4731ca26914              # double 0.83452754585894917
	.quad	0x3fc1038dc9008a80              # double 0.13292095484310451
	.quad	0x3fef7d7651844e15              # double 0.98406520768407068
	.quad	0x3fc6c69f4e7d08e8              # double 0.17793647129480594
	.quad	0x3fdbcd0118f1ab66              # double 0.4343874686807595
	.quad	0x3fcbdff4bf899898              # double 0.21777209618011706
	.quad	0x3fe151f602756b4f              # double 0.5412550018330452
	.quad	0x3fbec431f3b64c80              # double 0.12018120002749022
	.quad	0x3fd0323bb40122be              # double 0.25306599215086212
	.quad	0x3fe7316cf2ffb5eb              # double 0.72478339634625166
	.quad	0x3fecb0643cedbc8a              # double 0.89653217220428982
	.quad	0x3fcf7f8bd01dac08              # double 0.24607989942464337
	.quad	0x3fcdbcaf52cec40c              # double 0.23232070487350176
	.quad	0x3fda0444afd8ae66              # double 0.40651051685811124
	.quad	0x3fe70a7791c46b8c              # double 0.72002771825951717
	.quad	0x3fed25265dc0a413              # double 0.91078489600215773
	.quad	0x3fda694d89e67390              # double 0.41267717806641091
	.quad	0x3fd1298fd55e7f58              # double 0.26816173397854959
	.quad	0x3fdff81b20630b98              # double 0.49951818621428279
	.quad	0x3fc2e3d8a134fd84              # double 0.14757831450877401
	.quad	0x3fe149ceed090503              # double 0.54025980277961627
	.quad	0x3fe19cbb66016676              # double 0.55038232729857728
	.quad	0x3fdfe42e4fc380a4              # double 0.49830205716535603
	.quad	0x3fce91768b60ff04              # double 0.23881418042764591
	.quad	0x3fc5ba2e064d0014              # double 0.1697442560925998
	.quad	0x3fe845bb1494b024              # double 0.75851205844583491
	.quad	0x3fd2d43cc7eb17cc              # double 0.29420394442820164
	.quad	0x3fef691f8e9546b7              # double 0.981582430346143
	.quad	0x3f82d92326ecdcc0              # double 0.0092032190565148885
	.quad	0x3fd2735f993d94ac              # double 0.28829183545014803
	.quad	0x3fe0400ae093580f              # double 0.507817686676164
	.quad	0x3fc71c8ea81d96c0              # double 0.18055899819153431
	.quad	0x3fe1efa6f7aacd7b              # double 0.56050442097186648
	.quad	0x3fe74bf9bcdbde5f              # double 0.72802435766693552
	.quad	0x3fe9bf7e6a89fd5a              # double 0.80462570961382629
	.quad	0x3fdd72452f3d8e92              # double 0.46009950269056177
	.quad	0x3fb0ddfd4e9884f8              # double 0.065887290657446473
	.quad	0x3feaa689a98f1e4e              # double 0.8328293143940273
	.quad	0x3fee72980770f241              # double 0.95148850873335544
	.quad	0x3fedf73d01d29da0              # double 0.93643045764922661
	.quad	0x3fe7c776478ca1cf              # double 0.74309839224320651
	.quad	0x3fe74447d11d9aea              # double 0.7270850261964743
	.quad	0x3fee4ab8a08e2209              # double 0.94662124021948657
	.quad	0x3fe31d559abf0091              # double 0.59733085845802425
	.quad	0x3fe710b59910a194              # double 0.72078971763135025
	.quad	0x3fb8d00bc68b0818              # double 0.096924530003008491
	.quad	0x3fe22f0e0db14cd1              # double 0.56824400591212954
	.quad	0x3fde90e2bcbcd6f0              # double 0.47759312087451544
	.quad	0x3fea0e1395751ded              # double 0.81421832266727068
	.quad	0x3fc271b7617745a8              # double 0.14409534701421234
	.quad	0x3fe39794676334fe              # double 0.61225338166119037
	.quad	0x3fc9a26d23309b54              # double 0.20026935785537126
	.quad	0x3fd5d870c2bfc674              # double 0.34133547800511299
	.quad	0x3fea1993dd23f19c              # double 0.8156222647808593
	.quad	0x3fea71cf4268a648              # double 0.82639277430025349
	.quad	0x3fe7b81dc2d4a408              # double 0.7412251286779119
	.quad	0x3feb72e6dd41e9b0              # double 0.85777610029554374
	.quad	0x3fe61618b25740e3              # double 0.69019732315248594
	.quad	0x3fe204f8bd67f748              # double 0.56310688966161937
	.quad	0x3fdee43e872d6018              # double 0.48268092347052649
	.quad	0x3fcdef47ee00d5e4              # double 0.23386477586033927
	.quad	0x3fee7fa5c328bebf              # double 0.95308197133086725
	.quad	0x3fec732083228800              # double 0.88905358898432496
	.quad	0x3f860a9a6adaad40              # double 0.010762411485606749
	.quad	0x3fdcc5ffbb72258c              # double 0.44958489709150551
	.quad	0x3fdfee981e27130e              # double 0.49893763489335263
	.quad	0x3fdf2829b91b38a0              # double 0.48682635380544959
	.quad	0x3fdc5eb598e2b594              # double 0.44328060083611232
	.quad	0x3fa656cbe1eeffa0              # double 0.043630954103263564
	.quad	0x3feb0abd2684f029              # double 0.84506089709566823
	.quad	0x3fc14e4a3298a880              # double 0.13520171614192478
	.quad	0x3fb044e731f03370              # double 0.063551377956356125
	.quad	0x3fed4064f5e37ecd              # double 0.91411064171912815
	.quad	0x3fb3dae6e7894960              # double 0.077558928992663478
	.quad	0x3fd121b5499ce202              # double 0.26768238247635179
	.quad	0x3fd19480cd070f4c              # double 0.27468891164993603
	.quad	0x3fd62d7241d6d4f2              # double 0.34652382306678853
	.quad	0x3feffa6d1d7ccf15              # double 0.99931960830005783
	.quad	0x3fc344ee2121d238              # double 0.15054108255175591
	.quad	0x3fe985ac6a304aff              # double 0.79756756534547424
	.quad	0x3fd7a4984caa3376              # double 0.36942107664872681
	.quad	0x3fe2e49f54ddbffd              # double 0.5904080064337901
	.quad	0x3fe7488af94c2f17              # double 0.72760533038078534
	.quad	0x3fef1da3d938aa75              # double 0.97236816812558279
	.quad	0x3fe9b73866f3fe90              # double 0.8036157618334574
	.quad	0x3fe8311fbb479328              # double 0.75599657609982263
	.quad	0x3fe1701863fa96cc              # double 0.54493350531694196
	.quad	0x3fe1cfe5ed933999              # double 0.55662819291483168
	.quad	0x3fdb121c094202a2              # double 0.42298031715476203
	.quad	0x3fd9b7dc6b8c4440              # double 0.40184698584295475
	.quad	0x3fe759d723525daf              # double 0.72971684359338507
	.quad	0x3fedf60fb3f42762              # double 0.93628678462230774
	.quad	0x3fe13c226e57400e              # double 0.53859063673917418
	.quad	0x3fe1bcd320a4d110              # double 0.5542998921942246
	.quad	0x3fe5284425ca0390              # double 0.66116530781447302
	.quad	0x3fe27c719cc6819d              # double 0.57769089336584367
	.quad	0x3fe7c5ac154a91a6              # double 0.74287990721181951
	.quad	0x3fc2c83a09ff9ec0              # double 0.14673543441971582
	.quad	0x3feed38ad381bb56              # double 0.96332303342738146
	.quad	0x3fd4b5654fdc41be              # double 0.32357151793351224
	.quad	0x3fe80f868f501a79              # double 0.75189521780778457
	.quad	0x3feefb02566d7bf9              # double 0.96814076309590213
	.quad	0x3fdba3b56d7d9664              # double 0.43186698620261255
	.quad	0x3fdc2b8e94e2eb92              # double 0.44015850581825433
	.quad	0x3fc6022945a5ae70              # double 0.17194095516912311
	.quad	0x3fcbfdc866979910              # double 0.21868233689674144
	.quad	0x3fdd9fc2a5a995c8              # double 0.46287599733326745
	.quad	0x3faf0cbbc72fbc70              # double 0.0606440239570184
	.quad	0x3fe2d12424556d7b              # double 0.5880299291269887
	.quad	0x3fb474d121549118              # double 0.079907484662332329
	.quad	0x3fe7b244229806d7              # double 0.74051100498783284
	.quad	0x3fce0ab1f181a2d8              # double 0.23470138828567744
	.quad	0x3fd58cda94eab178              # double 0.33672203581479421
	.quad	0x3fd510265223c4c0              # double 0.32911069890458222
	.quad	0x3fe5329b7460eda3              # double 0.66242764215660477
	.quad	0x3fe4d7b643a712fd              # double 0.65133202756314257
	.quad	0x3febf0936f5db921              # double 0.87311717749779316
	.quad	0x3fc3dbba7ce2ff40              # double 0.15514308069213634
	.quad	0x3fe577c3d4f79ffc              # double 0.67086974711582981
	.quad	0x3fd5dce84b353122              # double 0.34160811752805575
	.quad	0x3fe0996ba8241e9e              # double 0.51872809257561747
	.quad	0x3fa92feb91fea300              # double 0.049193727084746897
	.quad	0x3fe563be0abba6b7              # double 0.66842557998935248
	.quad	0x3feae631702b9433              # double 0.84059974582908692
	.quad	0x3fe2b14f83cafc9c              # double 0.58414436093143562
	.quad	0x3fc0debf093455c0              # double 0.13179767560420252
	.quad	0x3fe6d05299c0a90f              # double 0.71293001203346928
	.quad	0x3fbaf14a1666bce8              # double 0.10524428412348963
	.quad	0x3fd6f1ba2e3596e8              # double 0.35850386154775871
	.quad	0x3fdf58e8c4361c72              # double 0.48980158959643127
	.quad	0x3fc892df966e0574              # double 0.1919822201271405
	.quad	0x3fe9fbe0f8844984              # double 0.81199692285945035
	.quad	0x3fdd29a34b90a1d2              # double 0.4556663740100052
	.quad	0x3f9147796e31f9e0              # double 0.016874215460569775
	.quad	0x3fe720a420cf1822              # double 0.72273451240539921
	.quad	0x3fdbaf692e5b5394              # double 0.43258122946763788
	.quad	0x3fe7a3c928ac668a              # double 0.73874338096648384
	.quad	0x3fd8ec740d5af2cc              # double 0.3894319658682377
	.quad	0x3fe6fc3bd341fc21              # double 0.71829024564056365
	.quad	0x3feb53a80f1bc6f0              # double 0.85396197272186036
	.quad	0x3fb1a6e439b1b310              # double 0.068952812276347197
	.quad	0x3fe5e137654bfa9d              # double 0.68374223503618092
	.quad	0x3fa6ae1c4faa5790              # double 0.044297108387737372
	.quad	0x3fef5aada9817e4e              # double 0.97981913668258769
	.quad	0x3fe21ec6fb9c1137              # double 0.56625699179179534
	.quad	0x3fde60b1a4dc69e8              # double 0.47465172862726357
	.quad	0x3fe231f746932f92              # double 0.56859935554665442
	.quad	0x3fe33212320e0d74              # double 0.59986219192835089
	.quad	0x3fd15d4afe692758              # double 0.27131914944458435
	.quad	0x3fdc07b60dd5351e              # double 0.43797065115798428
	.quad	0x3fed847bbcaea463              # double 0.92242228366843582
	.quad	0x3fee076deebf9793              # double 0.93840691214130556
	.quad	0x3fc051d2564b6b88              # double 0.12749699796298963
	.quad	0x3fe73e7b83c9910c              # double 0.72637725581856349
	.quad	0x3fcdc480eca011bc              # double 0.23255931428879062
	.quad	0x3fc1ece38d2a1db8              # double 0.14004177468107826
	.quad	0x3fe51fc2ead6f858              # double 0.66012712351926961
	.quad	0x3fc9a055a63aa584              # double 0.20020552269606295
	.quad	0x3fed03e04f07fed3              # double 0.90672316966807853
	.quad	0x3fe3bc8886f47212              # double 0.61676431997654135
	.quad	0x3fd3deab41700daa              # double 0.31046563520814152
	.quad	0x3fe6940959e4cca1              # double 0.70557086522457635
	.quad	0x3fdb6a2de73c9e4a              # double 0.42835567075460246
	.quad	0x3fe3cef581aa593b              # double 0.61901355099943289
	.quad	0x3feb708f3e50da00              # double 0.85749017878589484
	.quad	0x3fdd724283f8328c              # double 0.46009886634491504
	.quad	0x3fee0a30741a03cf              # double 0.93874380756471421
	.quad	0x3feda6fb9c7b7c72              # double 0.926633649472832
	.quad	0x3fe9c2388255aaaa              # double 0.80495858627303574
	.quad	0x3fe66467db1ab8da              # double 0.6997565535910113
	.quad	0x3feeaaaf5efc30de              # double 0.95833557655125978
	.quad	0x3fdcf85fb0a04fda              # double 0.45265953301099915
	.quad	0x3fd33792798d920a              # double 0.30026685591136071
	.quad	0x3fed0c2e961b46bd              # double 0.90773705785451109
	.quad	0x3fe33d0ce463b7ce              # double 0.60120243651703631
	.quad	0x3feb0739a37d1842              # double 0.84463197642686105
	.quad	0x3fd3ee913a4f3e8a              # double 0.31143599218646811
	.quad	0x3fdef748d679651e              # double 0.48384304947610868
	.quad	0x3fd8c333808589f6              # double 0.38691413451138545
	.quad	0x3fe2e0d9c0e59597              # double 0.58994758296164462
	.quad	0x3fd1ea737fa9f6ac              # double 0.27993476359538749
	.quad	0x3fd8f87a8e443e12              # double 0.39016593831272062
	.quad	0x3fe461da369192e3              # double 0.63694487245501497
	.quad	0x3f504df27f8b1e00              # double 9.9514657465415989E-4
	.quad	0x3fd8d864c89b19f8              # double 0.38820762243668083
	.quad	0x3fe8b928bad5989b              # double 0.77260242930494216
	.quad	0x3fee89317ac61d69              # double 0.95424722651743565
	.quad	0x3f6ce815c428e800              # double 0.0035286355135015768
	.quad	0x3fe29d204de173b3              # double 0.58168044291561782
	.quad	0x3fea57ae6eb8a3fe              # double 0.8232032930874309
	.quad	0x3fe38eea00854c20              # double 0.6111955652398855
	.quad	0x3fb1ce07ceb84f50              # double 0.06955002591012982
	.quad	0x3fc762a9548ec718              # double 0.18269840840144336
	.quad	0x3fd7521bc70107ca              # double 0.36438650545107676
	.quad	0x3fe04cdbfe1c6e2f              # double 0.50938224440637281
	.quad	0x3feab5682fecd027              # double 0.83464440689431718
	.quad	0x3fe0c2d90aa42c92              # double 0.52378513410930538
	.quad	0x3fec2b90c59c0145              # double 0.88031805606446112
	.quad	0x3fe2e103f5b9af75              # double 0.58996770852307512
	.quad	0x3fc382f955135798              # double 0.15243450788574076
	.quad	0x3fe2a6ce43301f71              # double 0.58286202547695443
	.quad	0x3fe011c5784e4b07              # double 0.50216935631974102
	.quad	0x3fef0c30b1f933d2              # double 0.97023806343497143
	.quad	0x3fe8afc00abda555              # double 0.7714538774281815
	.quad	0x3fe61f2f6972ec1e              # double 0.69130678744784624
	.quad	0x3fe64509d76e77d7              # double 0.6959275443693923
	.quad	0x3fb964a5b8bd4060              # double 0.099192006685599576
	.quad	0x3fe088a292cec451              # double 0.51667908357024761
	.quad	0x3feebbd576a44e2d              # double 0.96042893573980381
	.quad	0x3febd2bad11e413a              # double 0.86947384684939455
	.quad	0x3fcd4a2f66c6b560              # double 0.22882645147675884
	.quad	0x3fde7c46d289c316              # double 0.47633524475445321
	.quad	0x3fcab9e082f4df08              # double 0.20879751581536987
	.quad	0x3fc447cb6aa4b71c              # double 0.1584409971923656
	.quad	0x3fe319e325958546              # double 0.59691006985318817
	.quad	0x3fc560e40ef6aee8              # double 0.16701937418598978
	.quad	0x3feefcd1ea9cf14a              # double 0.96836181471693661
	.quad	0x3fe10404d2286e0a              # double 0.53174058004827995
	.quad	0x3feab21240a681f4              # double 0.83423721911463966
	.quad	0x3fd1e872ff74e3ec              # double 0.27981257388051861
	.quad	0x3fd66eaa5dedc8dc              # double 0.35050448582400207
	.quad	0x3fddb04941feb18c              # double 0.46388465351881147
	.quad	0x3fdcb28958653864              # double 0.4483970034824607
	.quad	0x3feaec2e12a55417              # double 0.84133056298981301
	.quad	0x3fda941d4cbc7342              # double 0.41529018872988754
	.quad	0x3fdf3dda01a9d9cc              # double 0.48815012133073021
	.quad	0x3fa7d2d785ddc590              # double 0.046530470934963764
	.quad	0x3fd4693624713b0c              # double 0.31892159994906488
	.quad	0x3feb0a38ed07a270              # double 0.8449978475083082
	.quad	0x3fe35f123a3072c9              # double 0.60535537114227467
	.quad	0x3f99250b081be1e0              # double 0.024555370683602251
	.quad	0x3fb75b5cbd40a4a0              # double 0.091237827495791013
	.quad	0x3fc85076de3874f8              # double 0.18995557642566729
	.quad	0x3fcc237f5f7b1e64              # double 0.21983329927592188
	.quad	0x3fd4dfa56395f36e              # double 0.32615027165575483
	.quad	0x3fe1130796037ff1              # double 0.53357295321984399
	.quad	0x3fdec86cb91430a0              # double 0.48098295282466985
	.quad	0x3fd37325fa051332              # double 0.30390309730528309
	.quad	0x3fdf28bc6225a29a              # double 0.48686132034939933
	.quad	0x3fe9188074fa50c2              # double 0.78424094054437199
	.quad	0x3fef4f2bf156dd2d              # double 0.97841450821480224
	.quad	0x3fcc8a4045959538              # double 0.22296908757849976
	.quad	0x3fd275b5256d0230              # double 0.28843430189957342
	.quad	0x3fedce5b93a68250              # double 0.93144015157674609
	.quad	0x3fc8d05e61c319c0              # double 0.19385890744724854
	.quad	0x3fec6c7aec6795b7              # double 0.88824220822123479
	.quad	0x3fe5eae3c2aa4b02              # double 0.6849230577521157
	.quad	0x3fc2227f1ce89e08              # double 0.14167775069766742
	.quad	0x3fd896fe3896f300              # double 0.38421588445980603
	.quad	0x3fe07e0f1541048c              # double 0.51538805152098766
	.quad	0x3fe56537b3521a9e              # double 0.66860566161706791
	.quad	0x3fe96a14a4c50938              # double 0.7941992967755942
	.quad	0x3fe87c4d6893be0c              # double 0.76517363000124438
	.quad	0x3fc5f31b040655f0              # double 0.17148149200936258
	.quad	0x3fe5419ef8b2b2b2              # double 0.66426037381969238
	.quad	0x3fcdba8abdfae0c8              # double 0.23225530887953583
	.quad	0x3fe4b6e1ebdc6191              # double 0.64732452456068945
	.quad	0x3fd769a7c07860d2              # double 0.36582368656082764
	.quad	0x3febb0088d86b691              # double 0.86523845331039884
	.quad	0x3fe851f976681ddb              # double 0.76000664831456832
	.quad	0x3fe6171fde86fb80              # double 0.69032281362875381
	.quad	0x3fdf090e40fa73f0              # double 0.48492771478214447
	.quad	0x3fa08204092417e0              # double 0.032241941562503262
	.quad	0x3fd9ba00a9a197d6              # double 0.40197769704388742
	.quad	0x3feea0feafd41325              # double 0.95715269414413184
	.quad	0x3f955278035f3a00              # double 0.020822406011399508
	.quad	0x3fe89dc5056d596f              # double 0.769258986091513
	.quad	0x3fbd7a18d45eafe8              # double 0.11514430222331351
	.quad	0x3fc208c78c7e13b0              # double 0.14089292869553338
	.quad	0x3fe6de7ce94cbb07              # double 0.71465917173722537
	.quad	0x3fd4be0255a6c4c8              # double 0.32409723629377796
	.quad	0x3fbf7ef95ee09568              # double 0.12303122106876219
	.quad	0x3feccfe76959124e              # double 0.90037890029686607
	.quad	0x3f8d3b87e0d208c0              # double 0.014273702190852666
	.quad	0x3fc8dc0d27930b64              # double 0.19421543533652674
	.quad	0x3fe0374fb26fcbd2              # double 0.50675186968725883
	.quad	0x3fef6dc2cbb2e989              # double 0.98214854988991462
	.quad	0x3fe1c72cc2f2fc96              # double 0.55556333614358056
	.quad	0x3fe3226617b57808              # double 0.59794907217633497
	.quad	0x3fb0624327e64ce8              # double 0.063999364129177061
	.quad	0x3fc9d291682c056c              # double 0.2017385252620828
	.quad	0x3fda36890c474fda              # double 0.40957857321813906
	.quad	0x3fef2a0beac231fb              # double 0.97388263560566146
	.quad	0x3f97f7da1bd12f80              # double 0.023406417796919765
	.quad	0x3fd5e262c5a5f650              # double 0.34194249440756597
	.quad	0x3fe42d6456234ccf              # double 0.63054100822264469
	.quad	0x3fed2a4f9bac888d              # double 0.91141491322584189
	.quad	0x3fef55577098100a              # double 0.9791676711179218
	.quad	0x3fd6de142e7c192e              # double 0.35730461635138766
	.quad	0x3fe4dbb8c7b6244b              # double 0.65182150846624987
	.quad	0x3fdea33140144d00              # double 0.47871047265762456
	.quad	0x3feac8dc2a650742              # double 0.83701904564097895
	.quad	0x3fe8ed985a879e50              # double 0.7790033119353641
	.quad	0x3fed103ef8e3db23              # double 0.90823315249767622
	.quad	0x3fe78a775594f191              # double 0.73565260615537131
	.quad	0x3feab073faddca9c              # double 0.8340396785482258
	.quad	0x3fd7ddd6ba70eb60              # double 0.37291496474397512
	.quad	0x3fec39951f6e2c2d              # double 0.88202911509268278
	.quad	0x3fd8863bdf587dd6              # double 0.3831929856405315
	.quad	0x3fe026ee39491986              # double 0.50475226582129618
	.quad	0x3fb4b89340cd1690              # double 0.080941394157969748
	.quad	0x3fd3db6e328aabbc              # double 0.31026797233306147
	.quad	0x3fd759d4aa1822be              # double 0.36485783205766242
	.quad	0x3fcae7267e14d928              # double 0.21017914921112291
	.quad	0x3fd86b139c09ca38              # double 0.38153543699369008
	.quad	0x3fde103c2f00675a              # double 0.46974091138837581
	.quad	0x3fe826ee5a0d062a              # double 0.75475232685147842
	.quad	0x3fe01d625a5c78af              # double 0.50358693741488547
	.quad	0x3fe2e8d950c1595c              # double 0.59092393658174158
	.quad	0x3f9f8f399c740080              # double 0.030819797681943317
	.quad	0x3fe4864b8c9cf9e1              # double 0.6413934465743375
	.quad	0x3fa153943100ef40              # double 0.033840781194582892
	.quad	0x3fe9fd36ec5e08cc              # double 0.81215997853748822
	.quad	0x3fe36865badc9284              # double 0.60649382110985117
	.quad	0x3fd70d57e7396fa8              # double 0.36018941479209809
	.quad	0x3fe550a73d0018e7              # double 0.66609537042748179
	.quad	0x3fde26f354a1c738              # double 0.4711273504718636
	.quad	0x3fb1ef19cce6f1d0              # double 0.070054638409551062
	.quad	0x3fe112ec3b465226              # double 0.53355990960205157
	.quad	0x3feddbb0044e64c4              # double 0.93306732979831297
	.quad	0x3fd680affa5d207c              # double 0.35160445642078009
	.quad	0x3fe1a8fa20a9af12              # double 0.55187708262880819
	.quad	0x3feb95bd23548163              # double 0.86202866459283845
	.quad	0x3fe40e7b62b893be              # double 0.6267678192276589
	.quad	0x3fced6e3e1dc7aa0              # double 0.24093292740231664
	.quad	0x3fee985743a2386e              # double 0.95609629831029763
	.quad	0x3fc0337c40869320              # double 0.12657120848339165
	.quad	0x3fe1a5b998a53e4e              # double 0.55148010076113407
	.quad	0x3fea3b20f1d71810              # double 0.81971785768905825
	.quad	0x3fd19317615097ee              # double 0.27460274222755643
	.quad	0x3feda11b8c1ca747              # double 0.9259164558945735
	.quad	0x3fedbd301eb44b6f              # double 0.92934423443726455
	.quad	0x3fdf11c16d8b37fa              # double 0.48545871446265176
	.quad	0x3fe0f6fe8f32d4ea              # double 0.5301506802412892
	.quad	0x3feecc3c9d15aee7              # double 0.96243124657254675
	.quad	0x3fa83d5c6064fcd0              # double 0.047343146101860634
	.quad	0x3feba95b394a5df4              # double 0.86442338170576116
	.quad	0x3fe1a1bc09fbc5c7              # double 0.55099298429393506
	.quad	0x3fd30f3f3e80d856              # double 0.29780560592496863
	.quad	0x3fe450fe4225c394              # double 0.63488686484753254
	.quad	0x3fea9cd83f175afe              # double 0.83164608309274946
	.quad	0x3fd55108486f73e4              # double 0.33307082246557074
	.quad	0x3fe495690a4e2030              # double 0.64323856365900234
	.quad	0x3fcc326ea2325094              # double 0.22028906745675114
	.quad	0x3fa8fb2feb367fa0              # double 0.048791406118879665
	.quad	0x3fe26ac2cf4af477              # double 0.57553234564660627
	.quad	0x3fe87ca0a5aa10ea              # double 0.76521332126915564
	.quad	0x3feafc1053138795              # double 0.8432695028861753
	.quad	0x3fdc1e2512245f16              # double 0.43933989307105159
	.quad	0x3fe62292b1f99c27              # double 0.69172034035444063
	.quad	0x3fed3f843daa1f6a              # double 0.91400348705154255
	.quad	0x3fdef9d98d771cba              # double 0.48399962248772577
	.quad	0x3fe86546e85d50f5              # double 0.76236291297621384
	.quad	0x3fb143c277c09ef0              # double 0.067440180050308163
	.quad	0x3fb4643b7045a0f8              # double 0.079654421720650848
	.quad	0x3fed13462c326063              # double 0.90860279686149814
	.quad	0x3fea952ce82cd2fd              # double 0.83070988985727434
	.quad	0x3fe62f21231649de              # double 0.69325310566847143
	.quad	0x3fe37beefff1d75f              # double 0.6088786124152924
	.quad	0x3fe96cb527da8e83              # double 0.79451997550900477
	.quad	0x3fe6e5313d1754b4              # double 0.71547758037436049
	.quad	0x3fe5a531fe4f9dd8              # double 0.6764154402744067
	.quad	0x3fc2282ccb490ce8              # double 0.14185104299585949
	.quad	0x3fe10b2ab8725138              # double 0.53261314415661953
	.quad	0x3feac0b2e48ce77c              # double 0.83602280272246742
	.quad	0x3f92ffa2f0e53c80              # double 0.018553300812808704
	.quad	0x3fe9af93cc6d9889              # double 0.80268278052678099
	.quad	0x3fd00b1151c60532              # double 0.2506755159921169
	.quad	0x3fe168f7bacf8378              # double 0.54406343923993372
	.quad	0x3fd339a7b051e460              # double 0.30039398401965478
	.quad	0x3fd4f3a5ccefc980              # double 0.3273710728964474
	.quad	0x3fdeb0089d86bbbe              # double 0.47949424155643416
	.quad	0x3f9bd84c588433c0              # double 0.027192299749959181
	.quad	0x3fb4a6ef82286eb8              # double 0.080672234799233133
	.quad	0x3fe1c4de6fefa8f4              # double 0.55528184759648846
	.quad	0x3fe647b0514ac074              # double 0.69625106694549155
	.quad	0x3fc98ff924c5ca64              # double 0.19970621390855847
	.quad	0x3fe64ca6e4e033ad              # double 0.69685692503263896
	.quad	0x3fda055e0fc2de62              # double 0.4065776018064523
	.quad	0x3fe351529ffe9b63              # double 0.60367709397256097
	.quad	0x3fe3b4e134b6a50b              # double 0.61583004279705855
	.quad	0x3fdeca9469606f9e              # double 0.48111448565190951
	.quad	0x3febf8acb1a4c8e3              # double 0.87410578437836894
	.quad	0x3fe5c3dc4e1d8f6b              # double 0.68015876061370528
	.quad	0x3fd1e4b79f2f8338              # double 0.27958479447811468
	.quad	0x3fea656a04b51e68              # double 0.82487965506966265
	.quad	0x3fab5106390fda50              # double 0.053352541413847931
	.quad	0x3fe8555115b2262d              # double 0.76041464078406806
	.quad	0x3feac9c39b89516e              # double 0.8371294057674683
	.quad	0x3fd28d3517cfe286              # double 0.2898686153926423
	.quad	0x3fa1e31aed4df430              # double 0.034935800044856413
	.quad	0x3fd7b8e5be0b0f64              # double 0.37066024359613992
	.quad	0x3fc762d3a66d2494              # double 0.18270345331464866
	.quad	0x3fe850cf0ddd4aab              # double 0.75986435611624381
	.quad	0x3fecafe3f3bd4d60              # double 0.89647100072253849
	.quad	0x3fe64c70f6d0e940              # double 0.69683120924245401
	.quad	0x3fc16d93fbcf9268              # double 0.13615655703974316
	.quad	0x3fe4b41c87d4462e              # double 0.64698626069202247
	.quad	0x3fe4261bb2bafefb              # double 0.62965187938968314
	.quad	0x3fe3cd4aabd4800b              # double 0.61881002007066976
	.quad	0x3fd366b17412f88c              # double 0.30314289412843531
	.quad	0x3fe2158e349e09a5              # double 0.56513128544638802
	.quad	0x3fc531c1630d22d0              # double 0.16558091484536996
	.quad	0x3fa1a6e9301b4490              # double 0.034476554033639251
	.quad	0x3fac3113eea61290              # double 0.055061934358524245
	.quad	0x3fed43c5d24e21ff              # double 0.91452303958163828
	.quad	0x3fed8545c3054366              # double 0.92251861658051548
	.quad	0x3fc1d731e114a5b0              # double 0.1393797253634097
	.quad	0x3fa15db2b3218ab0              # double 0.033917984358386888
	.quad	0x3fef82ff2a8ef730              # double 0.98474081337164954
	.quad	0x3fe016ac85a6d8a8              # double 0.50276781181198249
	.quad	0x3fe0eb0fb275cbb9              # double 0.5286940084027868
	.quad	0x3fc07b56bb21fce0              # double 0.12876400124876053
	.quad	0x3fd38dc187a0af64              # double 0.30552709813013323
	.quad	0x3fd6239f6b9d95e6              # double 0.34592423924763549
	.quad	0x3fe60773b3b038ce              # double 0.6884096631563581
	.quad	0x3fb0a153f3123c20              # double 0.064961668819009777
	.quad	0x3fda67882d785cb0              # double 0.4125690883678983
	.quad	0x3fc661e3fac01cac              # double 0.17486238235162455
	.quad	0x3fea09af0e934466              # double 0.81368210646372741
	.quad	0x3fcf89264757f99c              # double 0.24637297137810499
	.quad	0x3fd79e983dced856              # double 0.36905485187469844
	.quad	0x3fd4a99254ee3b14              # double 0.3228498296165736
	.quad	0x3fc84a47a6989a0c              # double 0.18976684221816276
	.quad	0x3fee02eb35e3ba16              # double 0.9378562977343019
	.quad	0x3fb35c85e81609a0              # double 0.075630540048257533
	.quad	0x3feb8e1161ed1ec2              # double 0.86109227300854507
	.quad	0x3fa860b36a3a0470              # double 0.04761276885711474
	.quad	0x3fe62d33f11e7373              # double 0.69301793187660932
	.quad	0x3fd1e127aeb010c2              # double 0.27936737117148536
	.quad	0x3fc970ff6fac6c14              # double 0.19876091912087246
	.quad	0x3fe4fbda0fd688a0              # double 0.65574362843860357
	.quad	0x3fd71536788c6d6e              # double 0.36066972515410256
	.quad	0x3feb5dc2b9c12636              # double 0.85519539146588985
	.quad	0x3fefc56403698f7e              # double 0.9928455416343096
	.quad	0x3fd2a66ee6a14a72              # double 0.29140827677216585
	.quad	0x3febf0b7e39fd1a1              # double 0.87313456018323532
	.quad	0x3fa07d346116f210              # double 0.032205235339891058
	.quad	0x3fe96e3929a214d8              # double 0.79470499164076625
	.quad	0x3fed1a2c7e20cee6              # double 0.90944504389196079
	.quad	0x3fe3e7163767f39d              # double 0.62195883580681122
	.quad	0x3fca91f30ab2f9c0              # double 0.20757902166765341
	.quad	0x3fb8c420c0de01c8              # double 0.096742674910280546
	.quad	0x3fa63978fa9f1820              # double 0.043407230943145914
	.quad	0x3fed00dd87e8d33c              # double 0.90635563416308384
	.quad	0x3fc3966b148d6fe4              # double 0.15302790168323022
	.quad	0x3fe1dbc7689c5258              # double 0.55807848388446768
	.quad	0x3fecf9041732c0b7              # double 0.90539745837124641
	.quad	0x3fe5a37264d715d4              # double 0.67620200820300136
	.quad	0x3feebf1566967d0c              # double 0.96082563435257517
	.quad	0x3fb2a8130c2f4e28              # double 0.072877111887742374
	.quad	0x3fd041412366e32e              # double 0.25398281533448397
	.quad	0x3fefe92a1b5a0338              # double 0.99721246091949122
	.quad	0x3fe70a278685a2de              # double 0.71998955034095125
	.quad	0x3fe1e63491401fc2              # double 0.5593512379573371
	.quad	0x3fe438a4c3efbf6d              # double 0.63191450375414393
	.quad	0x3fe0ba98e6d29568              # double 0.52277798731362868
	.quad	0x3fdb9685b5b43d98              # double 0.431062152333618
	.quad	0x3fe1ed4a88446305              # double 0.56021620382952675
	.quad	0x3fcac97322d74aa8              # double 0.20927275849552029
	.quad	0x3fc75f43eb91bf78              # double 0.18259476663979135
	.quad	0x3fe6a0b85916e5ca              # double 0.70711915397912972
	.quad	0x3fe22a6a50ce4512              # double 0.56767764837619183
	.quad	0x3fafcf7576ae4bd0              # double 0.062129660355956795
	.quad	0x3febdbc3e08edec1              # double 0.87057679995538007
	.quad	0x3fc75160a7df1f20              # double 0.18217094609121265
	.quad	0x3fd550f30a3b9ce6              # double 0.33306575774481784
	.quad	0x3fb1f5b2beda0898              # double 0.07015530738320519
	.quad	0x3fe05cf3e49e9711              # double 0.51134676601643225
	.quad	0x3fd0ccf5e321c758              # double 0.26250979595999047
	.quad	0x3fea5a93ca6b2d0a              # double 0.82355680022138356
	.quad	0x3feab1154cee9051              # double 0.83411660218963324
	.quad	0x3fef2466ae22289d              # double 0.97319349298892954
	.quad	0x3fefef18215e8f6c              # double 0.99793631093460311
	.quad	0x3fef50be7de96f38              # double 0.97860645858916139
	.quad	0x3fe856f42ffa74b7              # double 0.76061448450823022
	.quad	0x3fb66ef901bdb0f8              # double 0.087630808758777934
	.quad	0x3f80951ebea4eb80              # double 0.0080969240121839814
	.quad	0x3fe139ed1291de2a              # double 0.53832105280793496
	.quad	0x3fd65aa7c3dd1fee              # double 0.34928316237755908
	.quad	0x3fefa200bd6cf72a              # double 0.98852574345776145
	.quad	0x3fded7bf21f23d5a              # double 0.48191812815726609
	.quad	0x3fd80f358636e6ac              # double 0.37592828852539628
	.quad	0x3fe51b1368b95ac3              # double 0.65955515340723314
	.quad	0x3faa5347b9001690              # double 0.051416627247857893
	.quad	0x3f772793c40eff80              # double 0.0056529781440416427
	.quad	0x3fdeff0df23ce314              # double 0.48431728988684708
	.quad	0x3fd35f4101152a3a              # double 0.30268883805971181
	.quad	0x3fe75615b375eeff              # double 0.7292583947268837
	.quad	0x3fe97810fcd03df2              # double 0.79590653779626863
	.quad	0x3fd5dc805b3d5f90              # double 0.34158333692675402
	.quad	0x3fe42978a28ca1d4              # double 0.63006240604323205
	.quad	0x3fd081ab89d9b38a              # double 0.25791443311646189
	.quad	0x3fe962868f1923ac              # double 0.79327705334536835
	.quad	0x3fdb8264bcc19414              # double 0.42983358796328841
	.quad	0x3fe76e774f14fbfc              # double 0.73223462529847394
	.quad	0x3f98b78a2b4d2740              # double 0.024137648480326179
	.quad	0x3f8da2568760f180              # double 0.014469791418485256
	.quad	0x3fd79800d605ee88              # double 0.36865254307461059
	.quad	0x3fea28f466280ad6              # double 0.81749935104775306
	.quad	0x3fe6dbf803fc0a03              # double 0.71435166147449569
	.quad	0x3fed75983328dcc2              # double 0.9206048011027621
	.quad	0x3fda4a7365391c32              # double 0.41079411397044219
	.quad	0x3fe987fccbe22577              # double 0.79785003491376372
	.quad	0x3fed8533fed15205              # double 0.92251014489244254
	.quad	0x3fcae70e1cb0cb90              # double 0.21017624283703329
	.quad	0x3fe244ce13de1f2e              # double 0.57089904671099645
	.quad	0x3fbf461f58dfc270              # double 0.12216373367096778
	.quad	0x3feb7cc34e5f8b33              # double 0.8589798479773435
	.quad	0x3fef4af74da12054              # double 0.97790112649910065
	.quad	0x3fc7e512945445d4              # double 0.1866782402289987
	.quad	0x3f723807a8e77780              # double 0.0044479655466299617
	.quad	0x3fe07b18da787366              # double 0.51502649946233414
	.quad	0x3faa2a25872b1200              # double 0.051102802991895402
	.quad	0x3fc7e4ffa88ce0ac              # double 0.18667598466868662
	.quad	0x3fed60bd8d8372c8              # double 0.91805913581227916
	.quad	0x3feebdad993f6965              # double 0.96065406733695779
	.quad	0x3fd726e732e9c226              # double 0.36174945804580927
	.quad	0x3fe64f5283f30c91              # double 0.69718290110940206
	.quad	0x3fd5d9bdaf16bd36              # double 0.34141485308187514
	.quad	0x3f85bc6a339ddec0              # double 0.010613279056755132
	.quad	0x3fe689fa01d0dc1f              # double 0.70434284548435133
	.quad	0x3fd9a984fe53e778              # double 0.40097164951986697
	.quad	0x3fdfb5cf3487d494              # double 0.49547176485004596
	.quad	0x3fd718e0de646cc8              # double 0.36089345663067407
	.quad	0x3fecb8203b4d592e              # double 0.89747630674790968
	.quad	0x3fbd985ce6b38400              # double 0.11560612327913589
	.quad	0x3feda83f33a3a097              # double 0.92678794942641474
	.quad	0x3fe2ac5883840a2b              # double 0.58353830038715182
	.quad	0x3fe4bcfea88f1a86              # double 0.64807064935378444
	.quad	0x3fe0bacf1a798350              # double 0.52280383272964492
	.quad	0x3fd2c523634f274e              # double 0.29328236292041232
	.quad	0x3fe417894e9c1bc2              # double 0.62787309030033378
	.quad	0x3fd58db78ad8ff4c              # double 0.33677471694317229
	.quad	0x3fde47214cfe7c3a              # double 0.473091435613188
	.quad	0x3fe7db04b091db6f              # double 0.74548563467292961
	.quad	0x3fe6dce5607a969e              # double 0.71446484416511047
	.quad	0x3fd68eb68ced85fe              # double 0.35246051561816205
	.quad	0x3fc513c02f4cce2c              # double 0.16466524419375739
	.quad	0x3fd44ffb1889c9c8              # double 0.31738164326011686
	.quad	0x3fdf8584bb8bc308              # double 0.49252432169946347
	.quad	0x3fef809c9e923aea              # double 0.98444968195857752
	.quad	0x3fc0adb93e5f6470              # double 0.13030162377870935
	.quad	0x3fe2cfdc611e874c              # double 0.58787363976100826
	.quad	0x3fce6a8de1dfb5a8              # double 0.23762677697179169
	.quad	0x3fc51c4d4ca52cd8              # double 0.16492620699350513
	.quad	0x3fd703b6a46ea956              # double 0.3596016507896328
	.quad	0x3f916a4805667360              # double 0.0170069936080951
	.quad	0x3fd95708af533f8e              # double 0.39593712922668878
	.quad	0x3fc272ae2d29c138              # double 0.14412476735334123
	.quad	0x3fbaf363a0459c18              # double 0.10527632391823294
	.quad	0x3fe170a80c7c04a0              # double 0.54500200689667011
	.quad	0x3fb4d8aa4d8126a0              # double 0.081431049272533418
	.quad	0x3fc298da0635ed0c              # double 0.14528966239218055
	.quad	0x3f8f435d6cffe600              # double 0.015265207184699925
	.quad	0x3fe3309fca7c6550              # double 0.59968556926757266
	.quad	0x3fb7545bc04f4080              # double 0.091130957079487373
	.quad	0x3fec46cce47154ed              # double 0.88364262216296441
	.quad	0x3fa038bec9f84c10              # double 0.031682932047395806
	.quad	0x3fc130de641d435c              # double 0.13430385483163831
	.quad	0x3fe67bf4ad4b9315              # double 0.70263131949158952
	.quad	0x3fd6f03cd2b7119e              # double 0.35841293885848724
	.quad	0x3fc842e63be048e8              # double 0.18954160617483429
	.quad	0x3fee16e8c7e4b2e7              # double 0.94029654542609087
	.quad	0x3feb4dac46aa4b33              # double 0.85323156167792147
	.quad	0x3fb3376415b575c0              # double 0.075063948917395429
	.quad	0x3fe00227b21b13cc              # double 0.50026306902202
	.quad	0x3fea7d674e4498f2              # double 0.82780804907522865
	.quad	0x3fee056d88fd8a25              # double 0.93816258197722802
	.quad	0x3feedb09bf4532ac              # double 0.96423804624062858
	.quad	0x3fa40b1ed34e5df0              # double 0.039147342008785446
	.quad	0x3fe40a81c768b8e0              # double 0.62628258654674696
	.quad	0x3fbf609ba019bfb0              # double 0.12256786974626155
	.quad	0x3fdb38cb963a6f62              # double 0.42534150763252943
	.quad	0x3fb2ad02d686d150              # double 0.07295243966547571
	.quad	0x3f97cae69dbf5820              # double 0.023234942796840241
	.quad	0x3fed5c3f08338143              # double 0.91751052476687567
	.quad	0x3faf31286cab2f60              # double 0.060921920075627467
	.quad	0x3fc7c1ec6bf3a5f8              # double 0.18560557623941043
	.quad	0x3fd4abcb86131956              # double 0.32298553555701426
	.quad	0x3fe5dca6e2af6652              # double 0.68318504595226615
	.quad	0x3fdb6cd30bd9f016              # double 0.42851711423259198
	.quad	0x3fc05a5932e9946c              # double 0.12775721536596352
	.quad	0x3fee87af2257772b              # double 0.95406300265651589
	.quad	0x3fd86504a076112c              # double 0.38116565389670387
	.quad	0x3fe10ea21a6cf37d              # double 0.53303628121612656
	.quad	0x3fe7ec0aca451e33              # double 0.74756373887880156
	.quad	0x3fdb5e1f3b88d9a0              # double 0.42761975110934181
	.quad	0x3fe63194048259f9              # double 0.69355202561092633
	.quad	0x3fa1e49a41d1db90              # double 0.034947224173200842
	.quad	0x3fe9b11e7fbe9b59              # double 0.80287098837002724
	.quad	0x3fe2ca202e750f59              # double 0.58717354844746261
	.quad	0x3fe37bafd3311953              # double 0.60884848831555372
	.quad	0x3fb6a55aadf7ae90              # double 0.088460605118308999
	.quad	0x3fee1885883fa58f              # double 0.9404933606248721
	.quad	0x3fea1daa0b438c31              # double 0.81612112235996481
	.quad	0x3fbcf4251618c028              # double 0.1131003550478914
	.quad	0x3fe7013230a582a4              # double 0.71889600278162336
	.quad	0x3fbaa8f82b584c18              # double 0.10414076860642785
	.quad	0x3fb7172f4c98dbe8              # double 0.09019752140089532
	.quad	0x3fec9bb92a6329dd              # double 0.89400919226437348
	.quad	0x3fea1b8f4275dd42              # double 0.81586420994327846
	.quad	0x3fe82f4dabf4bb56              # double 0.75577434144166022
	.quad	0x3fc7d15e119a50a8              # double 0.18607688769828212
	.quad	0x3fc3db144018787c              # double 0.15512326364200024
	.quad	0x3fb818f1171fc678              # double 0.094130581040895112
	.quad	0x3fe63dc0320b30a9              # double 0.695037935010551
	.quad	0x3fda7f1a3af55c0a              # double 0.41400771863612873
	.quad	0x3fed1a16bed40c96              # double 0.90943467398791955
	.quad	0x3fd512496365d95c              # double 0.32924112994023402
	.quad	0x3fc27ccf465d6ba4              # double 0.14443388877665797
	.quad	0x3fd1a3e7e33efd7c              # double 0.27562901679990381
	.quad	0x3fe82662772648c4              # double 0.75468562384983117
	.quad	0x3fe500509e693b87              # double 0.65628844203625725
	.quad	0x3fedf21ceafda195              # double 0.93580480476980432
	.quad	0x3fe8c221d63b8f6d              # double 0.77369777529064054
	.quad	0x3fd438d524b473f6              # double 0.31596878609144541
	.quad	0x3fc8ff2bc4d02168              # double 0.19528720006952516
	.quad	0x3fe4d368ad2f214d              # double 0.65080674958248041
	.quad	0x3fd0056e21d1dbc8              # double 0.25033143332205698
	.quad	0x3fd39ea3308d3252              # double 0.30655746213304724
	.quad	0x3fda211ce1f11220              # double 0.4082710463010546
	.quad	0x3fb44e65854c0870              # double 0.079321236651624493
	.quad	0x3fdc5e434e5b7ffe              # double 0.44325335170833557
	.quad	0x3feb8c2f90fc1139              # double 0.86086252515136785
	.quad	0x3fda1e06e75762e6              # double 0.40808270065239893
	.quad	0x3fe4d9002ecc5f91              # double 0.65148934498118838
	.quad	0x3fe6f37e445aeed6              # double 0.71722329474092805
	.quad	0x3fc4b4d940715144              # double 0.16176906248677814
	.quad	0x3fcd771b12190544              # double 0.23019731887510819
	.quad	0x3fe248c88bfcf764              # double 0.57138469067988895
	.quad	0x3feb4b6b550839c5              # double 0.85295645339811499
	.quad	0x3fd26023b1777684              # double 0.28711788492896795
	.quad	0x3fa93515a1c066f0              # double 0.049233127589287551
	.quad	0x3fe99d296a336d0b              # double 0.80043478720054517
	.quad	0x3fd276e78dc9df4e              # double 0.28850735518016257
	.quad	0x3fddcf13fbaa508a              # double 0.46576404167832008
	.quad	0x3febaa1a9c4a4724              # double 0.86451464200419936
	.quad	0x3fb5a41a1efb4cf0              # double 0.084535248340489976
	.quad	0x3fc71ff2790099bc              # double 0.1806624499160544
	.quad	0x3fe14f74ee29e709              # double 0.54094931141227776
	.quad	0x3fe94a00fe8c740e              # double 0.79028367725880044
	.quad	0x3fdd6a90f83ed58e              # double 0.45962929003447861
	.quad	0x3fe7337f70fd5f4d              # double 0.7250363547163744
	.quad	0x3fe3bf05874b57c5              # double 0.61706806587857754
	.quad	0x3fe048794838d095              # double 0.50884689431997521
	.quad	0x3fee37d881112453              # double 0.9443171044196198
	.quad	0x3fe5254e05ce9412              # double 0.66080380567712127
	.quad	0x3fec1d171c2cbea3              # double 0.87855105879676321
	.quad	0x3fbc1876d9871978              # double 0.10974829493270544
	.quad	0x3feb5bb88c37fc3a              # double 0.85494639765227665
	.quad	0x3fe93c6916a04c7c              # double 0.78862432879613164
	.quad	0x3feb14b6da440c28              # double 0.84627859716454612
	.quad	0x3fd7ecae68d4f736              # double 0.37382087934007602
	.quad	0x3fed104ce0ce74ff              # double 0.90823978335870936
	.quad	0x3fdf2eac0179c430              # double 0.48722362655741147
	.quad	0x3f84d7a06fee1d00              # double 0.010176900306545722
	.quad	0x3fdc59b2d7ead626              # double 0.44297476850201389
	.quad	0x3fd7cdabc195e5de              # double 0.37192815689885872
	.quad	0x3fd8838c7c1c9a42              # double 0.38302909965787901
	.quad	0x3fe9a9b2daab0e51              # double 0.80196516712789834
	.quad	0x3feafcb358391a05              # double 0.8433472369295606
	.quad	0x3fdd05f3de474e76              # double 0.45348831850899474
	.quad	0x3fe02cd809d41729              # double 0.50547410888313948
	.quad	0x3fde08c5dfc2333a              # double 0.46928545810151301
	.quad	0x3fe5557727dc8994              # double 0.66668279443210787
	.quad	0x3fae37c4be6abc90              # double 0.059019230121856059
	.quad	0x3fe305325dce931a              # double 0.59438436814943718
	.quad	0x3fdbac493bab6118              # double 0.43239050700278048
	.quad	0x3fe1b4d3e6e1faf5              # double 0.55332369894298827
	.quad	0x3fd4a70028a001d8              # double 0.3226929089287558
	.quad	0x3fdc4d5bfb297350              # double 0.44222163703471029
	.quad	0x3fe5d96d96a6f512              # double 0.68279151367429081
	.quad	0x3fd571e847acddc0              # double 0.33507735251938797
	.quad	0x3fd86d3e054e4000              # double 0.38166761892443901
	.quad	0x3fd4ca23942e79c4              # double 0.32483758421758702
	.quad	0x3fde82fd46cb1ecc              # double 0.47674495614454027
	.quad	0x3fe4a89f6312c1ea              # double 0.64558381414650268
	.quad	0x3fb25b20369ef878              # double 0.071702969870757971
	.quad	0x3fe3c4e24b275d57              # double 0.61778368643255532
	.quad	0x3fe6b76974705c48              # double 0.70988915197347868
	.quad	0x3fe06c4bf9336e1e              # double 0.51321982070971095
	.quad	0x3fe1d84b49326db1              # double 0.55765308662687663
	.quad	0x3faeaf235271afb0              # double 0.059929946722007243
	.quad	0x3fe00a9d1f97310e              # double 0.50129562540090133
	.quad	0x3fb6ed2b5d2404f0              # double 0.089556417693547052
	.quad	0x3fda819ab7d477e8              # double 0.41416042282241827
	.quad	0x3fd789ebbddb103a              # double 0.36779302158925342
	.quad	0x3fbee27a47fdeef0              # double 0.12064327485671433
	.quad	0x3fe2c097a7ecf6c6              # double 0.58600981519676831
	.quad	0x3fe6ed366beaf847              # double 0.71645661428170448
	.quad	0x3fdce2eeb0796418              # double 0.45135085328871716
	.quad	0x3fe91910535fc140              # double 0.7843095425032871
	.quad	0x3fe53c200ece0150              # double 0.66358950511497916
	.quad	0x3fef246d1654edaf              # double 0.97319654809637323
	.quad	0x3fea4713069ade52              # double 0.82117606439619295
	.quad	0x3fd4de99e8ca8746              # double 0.32608649953373392
	.quad	0x3fef39ed005a8a9f              # double 0.97582101887777017
	.quad	0x3fd982208ae8cd46              # double 0.39856732907647474
	.quad	0x3fd8d64c15244884              # double 0.38807966293928353
	.quad	0x3fae4be44ffd3bd0              # double 0.059172758831315897
	.quad	0x3fe5c33909365820              # double 0.6800809078147303
	.quad	0x3fc7868da183ffdc              # double 0.18379373919014952
	.quad	0x3fe0ac6998738422              # double 0.52104644561416458
	.quad	0x3fcef007cf9fc0a4              # double 0.24170014989750144
	.quad	0x3fe3c2fd1e5170a8              # double 0.61755233689793432
	.quad	0x3fdda21181a9b67e              # double 0.46301686918636864
	.quad	0x3fe6fd3cbbaba073              # double 0.71841274885538409
	.quad	0x3fd24d53be14a598              # double 0.28596967279971741
	.quad	0x3fcd33fceae74230              # double 0.22814904661073987
	.quad	0x3fe9af90249246eb              # double 0.80268103735781204
	.quad	0x3feaa1032918ddf2              # double 0.83215482737335678
	.quad	0x3feb97c80007dad5              # double 0.86227798467629191
	.quad	0x3fd11f47f34079fe              # double 0.2675342441088161
	.quad	0x3f97d771fa6f8860              # double 0.023282795820599111
	.quad	0x3fedc2bc31c32b21              # double 0.93002137870039203
	.quad	0x3fd946f604c94cfc              # double 0.39495611636557704
	.quad	0x3fe405ecb4338661              # double 0.62572322078285592
	.quad	0x3fe5bf4ebf3f29b0              # double 0.67960297921063351
	.quad	0x3fd6311e5858d9d6              # double 0.34674795749324738
	.quad	0x3fec37576ddf35b1              # double 0.88175555667264949
	.quad	0x3fc851c234110cd8              # double 0.18999507467569887
	.quad	0x3fceeb7dd1abf088              # double 0.24156162965653416
	.quad	0x3fe7a6d9ee1dfe44              # double 0.73911758906610503
	.quad	0x3fc8a0ab3e8fa8a0              # double 0.19240322642082663
	.quad	0x3f941f9cfe28de00              # double 0.01965184499041861
	.quad	0x3fefb4ec10dc473e              # double 0.99083522122439383
	.quad	0x3fcddff0bf173ea4              # double 0.23339661913495491
	.quad	0x3fce4b0909bafc50              # double 0.23666489577405736
	.quad	0x3fc7782cc66da5f8              # double 0.18335494698412425
	.quad	0x3feb6286a5b9142d              # double 0.85577709548727443
	.quad	0x3fb512b86f093e58              # double 0.082316901310372059
	.quad	0x3fdd79eda4654642              # double 0.46056691221483359
	.quad	0x3fedc4fefe2a2fac              # double 0.93029737130699663
	.quad	0x3fc2f6cecdeef468              # double 0.14815697722761745
	.quad	0x3fd52c29d3d3bba4              # double 0.33082051931608647
	.quad	0x3fd204a8ea6d315a              # double 0.28153441327301254
	.quad	0x3feb6f9790a1cc7e              # double 0.85737207649653135
	.quad	0x3fed9169375e0702              # double 0.92400036634373373
	.quad	0x3fec6e1c73878935              # double 0.88844130100577579
	.quad	0x3fec577ecbe08f5a              # double 0.88568057842028769
	.quad	0x3fdcb1cff47ffd76              # double 0.44835280301045743
	.quad	0x3fd3294a2f58a65e              # double 0.29939512847577088
	.quad	0x3feed187d36ed762              # double 0.96307746215346079
	.quad	0x3fe6a4f07fe8fb2d              # double 0.70763421041906371
	.quad	0x3fe3af7cfe148d58              # double 0.61517190575652148
	.quad	0x3fb1a793678cf960              # double 0.068963253765990995
	.quad	0x3fd8f626abfbecfa              # double 0.39002386851616644
	.quad	0x3fe9480241d3c400              # double 0.79004013878704882
	.quad	0x3fbaa861820aa340              # double 0.10413178849070182
	.quad	0x3fe16352175d08a9              # double 0.54337410510222128
	.quad	0x3fec6b4a044d5130              # double 0.88809681740034385
	.quad	0x3fce22aa17dcf844              # double 0.23543287434762494
	.quad	0x3fd4179812112dd0              # double 0.31394006504407646
	.quad	0x3fbea445c2702868              # double 0.11969409939789133
	.quad	0x3fd5df47c6b2e06c              # double 0.34175295261548544
	.quad	0x3fdbc4dabe0a3f96              # double 0.43389004286381672
	.quad	0x3fec292eeaaacf07              # double 0.88002725442353913
	.quad	0x3fe7a83a2c2796d2              # double 0.73928555129961127
	.quad	0x3fd2277c8ef276f0              # double 0.28366006812744526
	.quad	0x3fbeb5aa61d5c440              # double 0.11995949638891634
	.quad	0x3fa246cdb9448380              # double 0.035696438661267926
	.quad	0x3fb201d324df7c78              # double 0.070340343954272799
	.quad	0x3fd4a98cf0535036              # double 0.32284854382783423
	.quad	0x3fe666791ee95404              # double 0.70000892674818305
	.quad	0x3fededdd19dc703e              # double 0.93528609324449241
	.quad	0x3fd254cfe756e7fe              # double 0.28642652122255174
	.quad	0x3fec64f7db5e0f68              # double 0.88732521863174174
	.quad	0x3fedc321f23a4cb8              # double 0.93006989774803284
	.quad	0x3fe3c476b01c216e              # double 0.61773237606489118
	.quad	0x3fea23421040333f              # double 0.81680396245938158
	.quad	0x3fd2fe7221f0a1e4              # double 0.29678014101457806
	.quad	0x3f7f222656928380              # double 0.0076009271225822017
	.quad	0x3fe77e2b7fa22b81              # double 0.73415160110867828
	.quad	0x3fb483d7b3265e38              # double 0.080136758077394954
	.quad	0x3fe414d445a45082              # double 0.62754262544559958
	.quad	0x3fe7c4da626bc67d              # double 0.74277991507388175
	.quad	0x3fe578eb6aede24e              # double 0.67101069340339747
	.quad	0x3fedca9caa6f1aac              # double 0.93098290717974441
	.quad	0x3fe54b23ff9b990e              # double 0.66542243884467367
	.quad	0x3fe107cd8f1934cd              # double 0.53220251034658761
	.quad	0x3fba84a1dfe2f720              # double 0.10358630863171614
	.quad	0x3fa084af305769b0              # double 0.032262301112229053
	.quad	0x3fe6fa73cf2b6f3f              # double 0.71807280028176723
	.quad	0x3fe049d7a4815780              # double 0.50901395921640358
	.quad	0x3fe08f3021ba8b2d              # double 0.5174790056956674
	.quad	0x3fde77d15c6ac850              # double 0.47606309914693146
	.quad	0x3fe01a072a3b6d35              # double 0.50317724464858904
	.quad	0x3fb0a0303900cb80              # double 0.064944280545018884
	.quad	0x3fadd0ebc806d6c0              # double 0.058234565894435431
	.quad	0x3fc0e22933117ce0              # double 0.13190188401765734
	.quad	0x3fe0d33a60d78472              # double 0.52578467287470532
	.quad	0x3f70a31439470500              # double 0.004061774252876349
	.quad	0x3fd458256f68477e              # double 0.3178800189935983
	.quad	0x3fdcc454ccd5c46a              # double 0.44948310855313045
	.quad	0x3fed427543be718a              # double 0.91436255675539369
	.quad	0x3feec91a5aa4c360              # double 0.96204869941548665
	.quad	0x3fe022affa0686d4              # double 0.50423430283646065
	.quad	0x3feeaa64f0393b4e              # double 0.95830008429207125
	.quad	0x3fb15dc37dd716d8              # double 0.067836969587996676
	.quad	0x3fc519fe97f3968c              # double 0.16485578937060941
	.quad	0x3feeeac2bf2c9667              # double 0.96615731562333173
	.quad	0x3fd4cc865922d1b4              # double 0.32498320297898009
	.quad	0x3fdfd10cf05f8758              # double 0.49713443254414846
	.quad	0x3fd330dbc4214468              # double 0.29985708382907328
	.quad	0x3fce8bf7c52be184              # double 0.23864647986898657
	.quad	0x3f8101b6b089e5c0              # double 0.0083040497422527392
	.quad	0x3fe99e230211131f              # double 0.80055380252506214
	.quad	0x3fd23d4613c91278              # double 0.28498985225841222
	.quad	0x3fe255079bc9cdd2              # double 0.5728796046009228
	.quad	0x3f73e566593bde00              # double 0.0048574445715909853
	.quad	0x3fd26212a9ebf6da              # double 0.28723589509887193
	.quad	0x3fee7c088769afbd              # double 0.9526407856733311
	.quad	0x3fd187eb0f437c26              # double 0.27392078867518632
	.quad	0x3fe52fb1a020f6a9              # double 0.66207200312756698
	.quad	0x3fc412022b69f030              # double 0.15679957504096498
	.quad	0x3fe5beadc68064e1              # double 0.67952622194129841
	.quad	0x3fd15e0b82c7264e              # double 0.27136504908830694
	.quad	0x3fdb114d2f54e04e              # double 0.42293099996777961
	.quad	0x3fdbac8b3d729cb0              # double 0.43240624428512842
	.quad	0x3fe2a71ad904688a              # double 0.58289854417968567
	.quad	0x3fea8935386cdd63              # double 0.82924901028210873
	.quad	0x3fb8a25fbf4340a8              # double 0.09622763080119745
	.quad	0x3fdc500fb9c198b0              # double 0.44238656177766256
	.quad	0x3fee969b1069b45e              # double 0.95588448720594577
	.quad	0x3fe0343e45a74538              # double 0.50637734989337613
	.quad	0x3f8b95830b691b00              # double 0.013468765054438503
	.quad	0x3fe040cbb93cbc28              # double 0.50790964297437302
	.quad	0x3f8c4808c705a380              # double 0.013809269498510579
	.quad	0x3fe7a472e52da9ec              # double 0.73882431756402189
	.quad	0x3fe3f9e8d3b9c1ed              # double 0.62425652840289347
	.quad	0x3fe4c48c3b58eb53              # double 0.64899264899518483
	.quad	0x3fe7beec05a9672d              # double 0.74205590349013095
	.quad	0x3fd5cc586f27ebda              # double 0.34059725623199955
	.quad	0x3fd65bef5c0edd86              # double 0.34936126699491188
	.quad	0x3f93c6aeb94af540              # double 0.019312601146102226
	.quad	0x3fd202447a0fcb0a              # double 0.28138839645468805
	.quad	0x3fae95b178db37a0              # double 0.059735818865745971
	.quad	0x3fc67616b1029c70              # double 0.1754787792499175
	.quad	0x3fc3a5e8ed7ff6b4              # double 0.15350066754029046
	.quad	0x3fd8b7dd9489eee2              # double 0.38622226243727031
	.quad	0x3fe5b680b8d12206              # double 0.6785281762795996
	.quad	0x3fb2550e0ce08e10              # double 0.0716103345335386
	.quad	0x3fb0eaab7cf29df0              # double 0.066080778126540229
	.quad	0x3fe0c524058c1570              # double 0.52406502803266442
	.quad	0x3fec8c0ac1907e0e              # double 0.89209497266341642
	.quad	0x3fcb08719988a16c              # double 0.21119518276942573
	.quad	0x3f99d27703f4e5e0              # double 0.025216922394269647
	.quad	0x3fb9d9abf8d42730              # double 0.10097765755577082
	.quad	0x3fe3cf5b880f7d02              # double 0.61906220030132908
	.quad	0x3fddc67af1480aa6              # double 0.46523927271497667
	.quad	0x3f92c3df234e74e0              # double 0.018325315980850188
	.quad	0x3fe6bd0862d5e38f              # double 0.71057528785523683
	.quad	0x3fe8a4889ee31551              # double 0.77008467705369743
	.quad	0x3fe129dd39ace5ed              # double 0.53636037125323599
	.quad	0x3fe33e14fd6eda7a              # double 0.60132836817395163
	.quad	0x3fbf1e0df38ef330              # double 0.12155234524011571
	.quad	0x3fd48ab05fd73492              # double 0.32096490249097898
	.quad	0x3fd76ecaeabb6064              # double 0.36613724635163281
	.quad	0x3fe8c4a08204abcf              # double 0.77400231737316882
	.quad	0x3fe4bc6abc88b6b4              # double 0.64800011466078056
	.quad	0x3fcf99ea6aab8d9c              # double 0.24688463409902972
	.quad	0x3febeb36de447bdb              # double 0.8724626866495514
	.quad	0x3fb22d0dd9baeff0              # double 0.070999971062462697
	.quad	0x3fe2f26e165fc78b              # double 0.59209350938748295
	.quad	0x3fec0902b89c8319              # double 0.87609993035229927
	.quad	0x3febd13c64c0d330              # double 0.86929149320949328
	.quad	0x3fe2aaf35ebb5edd              # double 0.58336800100638764
	.quad	0x3fdb60e0e3fa3d1e              # double 0.42778799308230642
	.quad	0x3fc95b2502bd8d88              # double 0.19809401162920559
	.quad	0x3fd1d5fdd33045ea              # double 0.27868600486644246
	.quad	0x3fd7b8df81dd7c2a              # double 0.37065875703950957
	.quad	0x3fb99ea173871b08              # double 0.10007676191808568
	.quad	0x3fd929f4f53a6428              # double 0.39318584392600764
	.quad	0x3fef9800575dc0f0              # double 0.98730485023227565
	.quad	0x3fea20ff30b96d6b              # double 0.81652793423147096
	.quad	0x3feb3108e781292b              # double 0.84973569122056369
	.quad	0x3fcaabc99bf8ed00              # double 0.2083675395568676
	.quad	0x3fc739b0e7abfbe8              # double 0.1814480906686804
	.quad	0x3fbcb6d802ca2ca8              # double 0.11216497486218435
	.quad	0x3fd34dd1792c0bbc              # double 0.30162464936455158
	.quad	0x3fe7f985c141027d              # double 0.74920928711806278
	.quad	0x3fb9f94d65ba6a50              # double 0.10146030171964893
	.quad	0x3fe084740712111f              # double 0.51616860753032145
	.quad	0x3feab7d79639747a              # double 0.8349416669913261
	.quad	0x3fd45b9d5a252540              # double 0.31809171488983523
	.quad	0x3fdd972c4a0266ec              # double 0.46235186793783956
	.quad	0x3fe77e55c1f6d844              # double 0.73417175181999328
	.quad	0x3fe4ed55f7688a9e              # double 0.65397165605493845
	.quad	0x3fe5149c98865293              # double 0.65876607694606759
	.quad	0x3fdacfdca0d13e3a              # double 0.41893687920398615
	.quad	0x3fd0e08e47c06336              # double 0.26370579726203702
	.quad	0x3fc241d9718973dc              # double 0.14263456386370776
	.quad	0x3fc332d0e5f5735c              # double 0.14998828152138344
	.quad	0x3fc4236dd0d0df30              # double 0.15733120628441943
	.quad	0x3fadc665974d22e0              # double 0.05815427276553975
	.quad	0x3fb9e8a73ed3a478              # double 0.10120625766616509
	.quad	0x3fea500517610c88              # double 0.8222680527327535
	.quad	0x3feca70139dc9c5a              # double 0.89538632680058616
	.quad	0x3fe5c77563a9ac5d              # double 0.68059796777141524
	.quad	0x3fdcc27beef7adee              # double 0.44937036835355471
	.quad	0x3fe921aad533fadc              # double 0.785359779751015
	.quad	0x3fdba564f62faf42              # double 0.43196987191798908
	.quad	0x3fde774a072ba69e              # double 0.4760308332466624
	.quad	0x3fd976271dd4089a              # double 0.39783647454181337
	.quad	0x3fe1bf411c7edbc8              # double 0.5545964771798646
	.quad	0x3fd4c5822c14c6f8              # double 0.32455496125031358
	.quad	0x3fd4add02531d2f4              # double 0.32310870773589717
	.quad	0x3fe622b8b1ce3f0e              # double 0.69173845985094018
	.quad	0x3fd3165b858294c4              # double 0.298239593869152
	.quad	0x3fd13478068306d2              # double 0.26882744441909978
	.quad	0x3fce97e66bcd7050              # double 0.23901062263292028
	.quad	0x3fda6ba5e02d50c2              # double 0.41282030956541516
	.quad	0x3fb6ee4e9a7aeb88              # double 0.089573776926881732
	.quad	0x3fef545e1da30734              # double 0.97904878414576623
	.quad	0x3fe3b986669191a4              # double 0.61639709504065765
	.quad	0x3fb515b546777d58              # double 0.082362489417837081
	.quad	0x3fdf98691ba6b178              # double 0.49367740345294164
	.quad	0x3fca7726155c9ecc              # double 0.20676113169724031
	.quad	0x3febf523127d2818              # double 0.87367395030128403
	.quad	0x3fe147b4474cbd5c              # double 0.54000295568213685
	.quad	0x3fdbed5a41d4a510              # double 0.43636185101293368
	.quad	0x3fe6cea826c55369              # double 0.7127266652338281
	.quad	0x3fed54ec1b410ebc              # double 0.91661649058411098
	.quad	0x3fec5b90a3294812              # double 0.8861773668998032
	.quad	0x3fbbb8c0a8ece558              # double 0.10828785061030055
	.quad	0x3fb0adf059888f18              # double 0.06515409646868553
	.quad	0x3fe84852dd5ab0ea              # double 0.75882857545141502
	.quad	0x3fd11f84207b43c8              # double 0.26754859134694842
	.quad	0x3feaa616aaec7fa3              # double 0.83277448066290949
	.quad	0x3fd3d6efddf36f0c              # double 0.30999371218580118
	.quad	0x3fc5a013df09e088              # double 0.16894768133693483
	.quad	0x3fdc720b544acdc6              # double 0.44446070892010103
	.quad	0x3fda09c7ffe3e16a              # double 0.40684700001977225
	.quad	0x3fe9f753b4acba5d              # double 0.81144128120451919
	.quad	0x3febc6d960e8890a              # double 0.86802357604418146
	.quad	0x3fe76c71816f3a92              # double 0.73198771743939717
	.quad	0x3fcae7f71db7d224              # double 0.21020401907993957
	.quad	0x3feff562e62d9679              # double 0.99870438534408301
	.quad	0x3fed64b6f7b00ec8              # double 0.91854427696713348
	.quad	0x3fef71dc06b556f8              # double 0.98264886198259571
	.quad	0x3fd3290148d8103a              # double 0.29937774766608849
	.quad	0x3fe7b06ac77f44d0              # double 0.74028529133115661
	.quad	0x3fc90bfeb519be74              # double 0.19567855685044189
	.quad	0x3feb7e2be46addda              # double 0.85915178883345367
	.quad	0x3fe40979b48c785a              # double 0.6261566664068241
	.quad	0x3fe37a86e846d15a              # double 0.608706906953141
	.quad	0x3fe397984acab688              # double 0.61225523574621921
	.quad	0x3fea8e4bf6a249a3              # double 0.82987020655336996
	.quad	0x3fe42b9435551a51              # double 0.63031969467631133
	.quad	0x3fee716fbca3d97e              # double 0.95134722560651119
	.quad	0x3fe38e6cf0f3298a              # double 0.61113593159216006
	.quad	0x3fef337923c1da0f              # double 0.97503334983668021
	.quad	0x3fe444d2ce77851d              # double 0.63340130162774566
	.quad	0x3fa44b1eb85bd410              # double 0.039635620121693305
	.quad	0x3fd0fca2d70f3316              # double 0.26541968347446365
	.quad	0x3fe62c7a5c10652f              # double 0.69292943936594564
	.quad	0x3fe14481ff425e01              # double 0.53961276870080621
	.quad	0x3fe29b6d7647c2ac              # double 0.58147309400199765
	.quad	0x3fed2abc96cfcd1c              # double 0.91146687941946735
	.quad	0x3fda4b09bea41982              # double 0.4108299600342421
	.quad	0x3feb06883887d9b4              # double 0.84454737702508575
	.quad	0x3fc7fcec36c794d4              # double 0.18740608858857988
	.quad	0x3fe782770bea3394              # double 0.73467590643996283
	.quad	0x3fbd980e855a5340              # double 0.11560145145115275
	.quad	0x3fc254b0f3062250              # double 0.14320957056431149
	.quad	0x3fef673b9fa80601              # double 0.98135167296294423
	.quad	0x3fc4645bd3f11464              # double 0.15931270455090207
	.quad	0x3fc75ad4747aa9a0              # double 0.18245940864046606
	.quad	0x3febb0305291492b              # double 0.8652574169775894
	.quad	0x3fd9132865e9c31a              # double 0.39179429962591572
	.quad	0x3faa9d84c48023e0              # double 0.051983021723635892
	.quad	0x3fefe9a2214bf2fe              # double 0.99726969245202191
	.quad	0x3fc92b29e3cde768              # double 0.19662974951989587
	.quad	0x3fd48297a47712c2              # double 0.32047072468803262
	.quad	0x3fbc8cabfe4bb688              # double 0.11152148207085066
	.quad	0x3fdf0851425bd310              # double 0.4848826549562526
	.quad	0x3fe8c552b61910d3              # double 0.77408729139326693
	.quad	0x3fd1025b502490d2              # double 0.26576884104202947
	.quad	0x3fe8fb15603a08e5              # double 0.78064984125401493
	.quad	0x3fe4e142dea2d02f              # double 0.6524977062567866
	.quad	0x3fddf6923dd8524c              # double 0.46817451514769881
	.quad	0x3fe0136afe7f7d85              # double 0.50237035471575153
	.quad	0x3fb3544621473ad8              # double 0.075504668354578697
	.quad	0x3fe657017578f9a1              # double 0.69812081283435046
	.quad	0x3fe2e839b8e9d306              # double 0.59084783664602081
	.quad	0x3fd766fa22db65a6              # double 0.3656602230454048
	.quad	0x3fdce3e62c942be2              # double 0.45140985825918112
	.quad	0x3fdca410d3a233c0              # double 0.44751377742141685
	.quad	0x3fe235d9b9935c8a              # double 0.56907354588737857
	.quad	0x3fb7246d266c75a0              # double 0.090399572258738292
	.quad	0x3fd712b389bab620              # double 0.36051643800860411
	.quad	0x3fd5de1cf18c854e              # double 0.34168170536766673
	.quad	0x3fc952470822fe30              # double 0.19782340905475015
	.quad	0x3fa38896f9f4f350              # double 0.038151472103413853
	.quad	0x3fe0fd40a1e80f64              # double 0.53091460821495362
	.quad	0x3faa0eff424e8270              # double 0.0508956688347596
	.quad	0x3fac5c1702eb9480              # double 0.055390090090249977
	.quad	0x3fc584f7aa008184              # double 0.16812034417035815
	.quad	0x3fe1ae066dc9408c              # double 0.5524932998905725
	.quad	0x3fd7095ca71d7ece              # double 0.35994640655370069
	.quad	0x3fd5e5141e12d46e              # double 0.3421068471610117
	.quad	0x3f853ff719811300              # double 0.010375910249544429
	.quad	0x3fe741dac7f2035a              # double 0.72678889324024998
	.quad	0x3fe76f0b1bcfedc4              # double 0.7323051017005402
	.quad	0x3fec9d6d10568836              # double 0.89421704474467023
	.quad	0x3fdb9897e0a17ebc              # double 0.43118855415921664
	.quad	0x3fe3a709f295daf0              # double 0.6141404855723902
	.quad	0x3fd88f19bfe62ce4              # double 0.38373416652821235
	.quad	0x3fe561c0d07fee19              # double 0.6681827614078798
	.quad	0x3fd7725191581436              # double 0.3663524550796099
	.quad	0x3fd2ae81d7c3aadc              # double 0.29190107413039157
	.quad	0x3fdcf410bd1f27c2              # double 0.45239656895557456
	.quad	0x3fd6ff2e9e730de2              # double 0.35932507966592031
	.quad	0x3fe154fb15c40e2c              # double 0.5416236329187476
	.quad	0x3fe36d5738f046ee              # double 0.6070972549516378
	.quad	0x3fe462d9d731f26a              # double 0.63706676512044891
	.quad	0x3fe43b6e89e7ff7c              # double 0.6322548573952953
	.quad	0x3fe459ee3b41e7d8              # double 0.63597785543174279
	.quad	0x3fd0c50cb7ad151a              # double 0.26202695786590058
	.quad	0x3fb2d2faaabce760              # double 0.073531786617335282
	.quad	0x3feead69fc0a5a34              # double 0.95866870142601223
	.quad	0x3fb68b5fddd86e98              # double 0.088064185773357173
	.quad	0x3fe2a89642b67563              # double 0.58307946233587093
	.quad	0x3fc4336d8903b708              # double 0.15781945409928988
	.quad	0x3fdf5d7cb19d4ed0              # double 0.49008099885143697
	.quad	0x3fd7c9f031bc7c50              # double 0.37170033318574713
	.quad	0x3fe3529d0cd74ddc              # double 0.60383465297712346
	.quad	0x3fea00c9cc43c8be              # double 0.81259622474160387
	.quad	0x3fe30f5ee65d4eef              # double 0.5956263064676629
	.quad	0x3fb62369b193e168              # double 0.086477857450409368
	.quad	0x3fcf46c2b1e18b60              # double 0.24434693990323364
	.quad	0x3fed593cecc7308d              # double 0.91714330907554287
	.quad	0x3fd5200aaa38fed4              # double 0.33008066771797684
	.quad	0x3fc1941a7e8da344              # double 0.1373322599349881
	.quad	0x3fd15c6942aa014e              # double 0.27126533041157053
	.quad	0x3feb5a1629ff76bc              # double 0.85474689676967541
	.quad	0x3fe4123d4f34bea4              # double 0.62722650022438531
	.quad	0x3fee8ca0e2ae85ff              # double 0.95466655992294125
	.quad	0x3fe7e77b4157c9cf              # double 0.74700701486863774
	.quad	0x3fe4c87869abd124              # double 0.64947147978685793
	.quad	0x3fe391fffe5641e7              # double 0.61157226252731511
	.quad	0x3fe62fdd58cc0aec              # double 0.69334285109684179
	.quad	0x3fedd45c5754b841              # double 0.93217293793509992
	.quad	0x3fdca50a95f19960              # double 0.44757332461303712
	.quad	0x3fb018bdca752450              # double 0.062877523353692455
	.quad	0x3fd3b9d41e38b3a4              # double 0.30821707679097643
	.quad	0x3fa3b9484aae5110              # double 0.038522967449497014
	.quad	0x3fe00cf13c5db163              # double 0.5015798739455416
	.quad	0x3fd3ebec4a3cd070              # double 0.31127459764252929
	.quad	0x3fdf2c3cf9600682              # double 0.48707508423840562
	.quad	0x3fd1d1558019a7be              # double 0.27840173253809641
	.quad	0x3fdfbc9ed4fa85ba              # double 0.49588747786227894
	.quad	0x3fe30a6491978cfd              # double 0.59501865802704368
	.quad	0x3fbc615ed2fd4f48              # double 0.11086075450049038
	.quad	0x3fb87838e8892cd0              # double 0.095584446689076729
	.quad	0x3fe06ae1114e9761              # double 0.51304677372239038
	.quad	0x3fd6453cb1a45f72              # double 0.34797589633807668
	.quad	0x3f99b2edb92ebc60              # double 0.025096620967527961
	.quad	0x3fe3379b8b3d1f8c              # double 0.60053803629942726
	.quad	0x3fe311d75c40cdad              # double 0.59592788713637435
	.quad	0x3fe5b804ebaf5785              # double 0.67871328384602292
	.quad	0x3fbc53fac7598bc8              # double 0.11065642706812107
	.quad	0x3f869d84f3756cc0              # double 0.011042631797570812
	.quad	0x3feb06a341c7755e              # double 0.84456026885497315
	.quad	0x3fe7e98866b34391              # double 0.74725742396013761
	.quad	0x3fec08131ee1d7c1              # double 0.87598567992858289
	.quad	0x3fb74f89e7fe50c0              # double 0.091057414187448948
	.quad	0x3fed18ec4f5d2137              # double 0.90929236889591081
	.quad	0x3f98735f50fe1260              # double 0.023877610510242397
	.quad	0x3f7baa87e0b5c280              # double 0.0067544276929402125
	.quad	0x3fdfb95abcbac9e8              # double 0.49568813734654649
	.quad	0x3fc6876addbfaae0              # double 0.17600761249135299
	.quad	0x3fe436c193ebed50              # double 0.63168410197196501
	.quad	0x3fefd8c4fea9b39f              # double 0.99521112192961769
	.quad	0x3fe81ab265ba54de              # double 0.75325889462206042
	.quad	0x3fc0f9bccd1ca5e4              # double 0.13262138381223487
	.quad	0x3fa8158328440580              # double 0.047039126076934501
	.quad	0x3fe1ebeb05a46502              # double 0.56004859067903134
	.quad	0x3fe81ced4de7fa5f              # double 0.75353112426803281
	.quad	0x3fd85e2d1ccdd51a              # double 0.38074806034940567
	.quad	0x3fc2cd284a9537a8              # double 0.14688590661756717
	.quad	0x3fd7091e4a444d32              # double 0.35993153812997314
	.quad	0x3fe2e222c1f0b25f              # double 0.59010446433019215
	.quad	0x3fe991f27600c73b              # double 0.79906580970257524
	.quad	0x3f9090bbf9cafd00              # double 0.016177117463255009
	.quad	0x3fdf2d67cac1c6c8              # double 0.48714632797701229
	.quad	0x3fc0d6521819f300              # double 0.13154054810356541
	.quad	0x3fd9f439845a055e              # double 0.405531291246083
	.quad	0x3fc1243ffd450118              # double 0.13391876093556543
	.quad	0x3fc78b305a41e6fc              # double 0.18393520743466485
	.quad	0x3fce74117599c754              # double 0.23791712038251467
	.quad	0x3fd4c0d2f6b9e284              # double 0.32426904768320974
	.quad	0x3fdb633fef706dd2              # double 0.427932723834343
	.quad	0x3fd2d3b733cb6830              # double 0.29417209680616718
	.quad	0x3fef931e6e8ddd60              # double 0.98670884697541438
	.quad	0x3f6856f335761300              # double 0.0029711485073583566
	.quad	0x3fa264ad7ae33c70              # double 0.035924359560902341
	.quad	0x3fb1564bbafd2f38              # double 0.067723019744502788
	.quad	0x3fb664901489a718              # double 0.08747196675690494
	.quad	0x3fe4f51221cefe5d              # double 0.65491587260471429
	.quad	0x3fe62232839cb53a              # double 0.69167447762962486
	.quad	0x3fe1d7e9e591c3c6              # double 0.55760664785167857
	.quad	0x3fda364970273626              # double 0.40956340744455344
	.quad	0x3fd2ec8e6d0b29e4              # double 0.29568825386800612
	.quad	0x3fcd86ac57f14528              # double 0.23067240041795256
	.quad	0x3fddc45806bb43d6              # double 0.46510887772916243
	.quad	0x3fdc9a5efe96faf8              # double 0.4469220625141328
	.quad	0x3fc23d4ad98813c8              # double 0.14249549504907422
	.quad	0x3fb7f251e098e228              # double 0.093541257222462648
	.quad	0x3fd32e553edb522c              # double 0.29970294130660835
	.quad	0x3fe2d0284547351f              # double 0.5879098275269462
	.quad	0x3fec909f5e466f63              # double 0.89265411770928116
	.quad	0x3fd11ed891fe6fa8              # double 0.2675076890679926
	.quad	0x3feb65918fc8e5a8              # double 0.85614851077041454
	.quad	0x3fe1e66962ac659c              # double 0.55937642357018857
	.quad	0x3fe5c4b615855401              # double 0.680262605698431
	.quad	0x3fac5bb9df0a58e0              # double 0.055387314297307588
	.quad	0x3fe03fbf3d1049b0              # double 0.50778161932458055
	.quad	0x3fd072549d7ca83e              # double 0.25697818164428898
	.quad	0x3fe285d0e475c97f              # double 0.57883495923151418
	.quad	0x3feca2ff13d4c984              # double 0.89489702103883006
	.quad	0x3fe656cf06069053              # double 0.69809676339037663
	.quad	0x3fe8dcbe6cdc09c7              # double 0.77694627057672327
	.quad	0x3fccf29b22de05dc              # double 0.22615374758247142
	.quad	0x3feec8cc61584fb7              # double 0.96201151859940281
	.quad	0x3fc2c69813d73618              # double 0.14668560951979326
	.quad	0x3fe623fdbfdd6040              # double 0.69189345811447112
	.quad	0x3fd5f1788e4eef1e              # double 0.34286321542070819
	.quad	0x3fdacf271bc2d11a              # double 0.41889360152278388
	.quad	0x3feb4e7be63b1706              # double 0.85333056418377917
	.quad	0x3fe0ea8ec2e306fb              # double 0.52863252700646457
	.quad	0x3fec23be5e89db40              # double 0.87936323608924027
	.quad	0x3fc4ff8fcba6d98c              # double 0.16404912418302009
	.quad	0x3fecf2f1f802d939              # double 0.90465639533684972
	.quad	0x3fecb37c911b01c1              # double 0.89690998402516453
	.quad	0x3fb4e9a6a1bc2d10              # double 0.081690229879473941
	.quad	0x3fedff45e6892a33              # double 0.93741126085780591
	.quad	0x3fd01bda2789d35c              # double 0.25169996129198124
	.quad	0x3fd551b3f126701c              # double 0.33311174917048603
	.quad	0x3fec9df3ec17dcad              # double 0.89428135024981759
	.quad	0x3febebfb0113b95a              # double 0.87255621157036534
	.quad	0x3fe77c42a0a690ee              # double 0.7339184892375934
	.quad	0x3fee278f4c8c3a5f              # double 0.94232907248244746
	.quad	0x3fdecf569a1a49e4              # double 0.48140492486086672
	.quad	0x3fe315bfe9fb717f              # double 0.59640498828552768
	.quad	0x3fa46479998e00e0              # double 0.039829063410253829
	.quad	0x3fd958494004108c              # double 0.39601355792570625
	.quad	0x3fe335019b469510              # double 0.60022049262320998
	.quad	0x3fe4baebf77afe48              # double 0.64781759582542353
	.quad	0x3fef4fdb5a3d13f4              # double 0.97849815010761043
	.quad	0x3fd2e835cc8d8d82              # double 0.29542298293946356
	.quad	0x3f6b4f9ddb6f5c00              # double 0.0033338626048862174
	.quad	0x3fa1a25f0ad0d940              # double 0.034441919393815912
	.quad	0x3fda4f43253287b6              # double 0.41108778603131257
	.quad	0x3fe83d1cff0c0cfd              # double 0.75746011556512338
	.quad	0x3feeaf7827c2064e              # double 0.95891959920136016
	.quad	0x3fee575ebd8a79c4              # double 0.94816529292784723
	.quad	0x3fba18f1b6196748              # double 0.10194311805517231
	.quad	0x3fdb790c488e5104              # double 0.42926318250216888
	.quad	0x3fe4ab38aa2be161              # double 0.64590104328730658
	.quad	0x3fe4db7e40617287              # double 0.6517935998377461
	.quad	0x3f9a0f5924d76900              # double 0.025449173806785019
	.quad	0x3fe12611ad736487              # double 0.53589710118389255
	.quad	0x3fe30c0cdf2bac0f              # double 0.59522098148352309
	.quad	0x3fc3e755fb349998              # double 0.15549731031314873
	.quad	0x3f85e341b4bb0f40              # double 0.010687363937342931
	.quad	0x3fe8586d6aa6eead              # double 0.7607943614052225
	.quad	0x3fed7ba8cc89fbd7              # double 0.92134513806365248
	.quad	0x3fe86e5f3efdd2b5              # double 0.76347315123583448
	.quad	0x3fe0ea372aee8797              # double 0.52859075913532905
	.quad	0x3fed48811824ac0a              # double 0.9151006194637159
	.quad	0x3fe3c05b182c0200              # double 0.61723093720507904
	.quad	0x3fb3e90d3083e200              # double 0.077774834007762195
	.quad	0x3fecfcd8e1dd3854              # double 0.90586513628091802
	.quad	0x3fdac2e09f6251e6              # double 0.41814437451219388
	.quad	0x3fc56d1695790e6c              # double 0.16739160822372712
	.quad	0x3fe834ece5279885              # double 0.75646061665317232
	.quad	0x3fefd742387883e5              # double 0.99502669362493334
	.quad	0x3fe196d9eadf4223              # double 0.54966445802171326
	.quad	0x3fd92dba78774d08              # double 0.393416040079686
	.quad	0x3fd85ef35d415aa4              # double 0.38079532725297782
	.quad	0x3fee60014aa443d4              # double 0.94921936586808408
	.quad	0x3fca9d2e9a4d8978              # double 0.20792181524582154
	.quad	0x3fe9243ca91df6e1              # double 0.7856734564845419
	.quad	0x3fef07f30a073940              # double 0.96972038229595369
	.quad	0x3feba53f537dc5c5              # double 0.86392179781812983
	.quad	0x3fe88351f9994da3              # double 0.76603029966138469
	.quad	0x3fe6ec4318f95e2a              # double 0.71634058835747294
	.quad	0x3fc50de8708d622c              # double 0.16448693748204002
	.quad	0x3fd66e965d97d746              # double 0.35049971713975869
	.quad	0x3fd12695c08fb96c              # double 0.26798003964258643
	.quad	0x3fe86623bc23ff50              # double 0.7624682116147401
	.quad	0x3fe57eb7ffd97616              # double 0.67171859713170323
	.quad	0x3fca70ba40462d1c              # double 0.20656517160782861
	.quad	0x3fdd39e69b95759e              # double 0.45665898507817271
	.quad	0x3fdc685cab55240c              # double 0.44386975032517806
	.quad	0x3fca245a87fe2e0c              # double 0.20423442497518385
	.quad	0x3fe5f943c3bf1a75              # double 0.68667782050836357
	.quad	0x3fef42c6f7c7d30e              # double 0.97690151590959018
	.quad	0x3fc58398a0173064              # double 0.16807849709437328
	.quad	0x3faa8eca90e05bf0              # double 0.051870660958392878
	.quad	0x3fe5f1e3d8d1cc58              # double 0.68577759120524728
	.quad	0x3fb9bfcf31f9bca8              # double 0.10058302850824197
	.quad	0x3fbaefad882ee190              # double 0.10521969389708929
	.quad	0x3feddddd0acb81cf              # double 0.93333294018162316
	.quad	0x3fd1e0e562cb48b2              # double 0.27935156486376933
	.quad	0x3fd6b2796d967e3e              # double 0.35464320852222275
	.quad	0x3fdcbdd1c16028e4              # double 0.44908565410936618
	.quad	0x3fec0103c0a9da94              # double 0.87512385968769246
	.quad	0x3fe3c38ca92e8e08              # double 0.61762078326540948
	.quad	0x3fde94c6ecf5564a              # double 0.47783063068832077
	.quad	0x3fe34648d1286772              # double 0.60232964373720521
	.quad	0x3fe44897f563715a              # double 0.63386152198249168
	.quad	0x3fe17e1f1b99934e              # double 0.54664569273573149
	.quad	0x3fe179a502ca824d              # double 0.54609919114234062
	.quad	0x3fe6903a4f1b297d              # double 0.70510592890177259
	.quad	0x3fc4547435660f90              # double 0.15882732970578362
	.quad	0x3fe16ce5a8e8142d              # double 0.54454310407220918
	.quad	0x3fd4250bf47686d8              # double 0.31476115105952607
	.quad	0x3fdba1ced80ce340              # double 0.4317509755961062
	.quad	0x3fef9d9bd94ec3a2              # double 0.98798935358910378
	.quad	0x3fc9e7bafeab5cf8              # double 0.20238435206440619
	.quad	0x3fe884d788f0da1a              # double 0.76621605631118261
	.quad	0x3fe7cd8733fda0c7              # double 0.74383888391914688
	.quad	0x3fe43a384e18eac2              # double 0.63210692647347622
	.quad	0x3fe83ac841a10a9a              # double 0.75717556780030582
	.quad	0x3fe59fda1590263a              # double 0.67576317035236078
	.quad	0x3fe6ea31aa542324              # double 0.71608813540760652
	.quad	0x3fe95568f55e4b3a              # double 0.79167602466109277
	.quad	0x3fee5d5337f5a3fb              # double 0.94889222077938429
	.quad	0x3feaeea4035eb887              # double 0.84163094194606536
	.quad	0x3fe9ee14592f8001              # double 0.81031243723919044
	.quad	0x3fb40ea6e595bcc0              # double 0.078348570872310397
	.quad	0x3fe197050ac80232              # double 0.54968502145499643
	.quad	0x3fe2e740a749520a              # double 0.59072907136084152
	.quad	0x3fce8e8451148b40              # double 0.23872426947590419
	.quad	0x3fe5afd1ea933fde              # double 0.67771240058391036
	.quad	0x3fe1af7f28f8673b              # double 0.55267293931976924
	.quad	0x3fd4c5e6ff383322              # double 0.32457899974615334
	.quad	0x3fe227f3e16b9a5a              # double 0.56737703349501634
	.quad	0x3f9ab4df613276a0              # double 0.026080599124375881
	.quad	0x3fe2122241c86082              # double 0.56471360061824805
	.quad	0x3fe4afdff49c0196              # double 0.64646909499429017
	.quad	0x3feef53c4e2faeae              # double 0.96743598242524853
	.quad	0x3fececac09e3e10f              # double 0.90389062816305621
	.quad	0x3fcfda92834a5b70              # double 0.24885779772440797
	.quad	0x3fe6bf730f19f259              # double 0.71087029408915747
	.quad	0x3fe73d808c7a417c              # double 0.7262575858785989
	.quad	0x3fc723601c309c20              # double 0.18076707245310875
	.quad	0x3fe8c3913f2a71b0              # double 0.77387296998090527
	.quad	0x3fa2f7e5a3a93c10              # double 0.037047554233701985
	.quad	0x3feb153b45cc4721              # double 0.84634173996366624
	.quad	0x3fe3fc4d1b239564              # double 0.62454848576150512
	.quad	0x3fe0647ee3640a36              # double 0.51226753628026844
	.quad	0x3fe5eb25a898835b              # double 0.68495448044641749
	.quad	0x3fe815880f895c43              # double 0.75262835535512129
	.quad	0x3fce29537d3e7108              # double 0.23563617339539911
	.quad	0x3fcc14f5a9f08258              # double 0.2193896369726811
	.quad	0x3fa424bb115fb9e0              # double 0.039342733260003149
	.quad	0x3fe821fdff77105a              # double 0.75414943595434214
	.quad	0x3febb3a04552c36a              # double 0.86567700900751032
	.quad	0x3fd23e77621c20b6              # double 0.28506264287035366
	.quad	0x3f93acacf825bda0              # double 0.019213392873493995
	.quad	0x3fd5ff3365955bf0              # double 0.34370121879822957
	.quad	0x3fe5f1fa62154469              # double 0.68578833729601485
	.quad	0x3fca1ec10722cc08              # double 0.20406353805955768
	.quad	0x3fdc3168dd68be5c              # double 0.44051572439182052
	.quad	0x3fb6f9b2a305e958              # double 0.089747586060103912
	.quad	0x3fe225422f58aa6b              # double 0.56704816100439126
	.quad	0x3fdff457f4ea78e4              # double 0.49928854863709504
	.quad	0x3fe9fa97df31d80b              # double 0.81183999626841918
	.quad	0x3fab827c69329b30              # double 0.053729904023660402
	.quad	0x3fc25eb18b96abe0              # double 0.14351481738898908
	.quad	0x3fe638381e5ce995              # double 0.69436269693624075
	.quad	0x3fdfe6d3366fb34a              # double 0.49846344295547296
	.quad	0x3fd9365142ca79e0              # double 0.39394027254630082
	.quad	0x3fef85ca3d1c0972              # double 0.9850817864938064
	.quad	0x3fe286c096988994              # double 0.57894925511600315
	.quad	0x3fee8517a63800f8              # double 0.9537466284237146
	.quad	0x3fe2c658d4710f7b              # double 0.5867122792483167
	.quad	0x3fe697a3184ad086              # double 0.70601038689211815
	.quad	0x3fed7d183e7ac84f              # double 0.92152034953165607
	.quad	0x3fedf9adb10d5bf9              # double 0.93672833042626202
	.quad	0x3fe5561e3562f56d              # double 0.66676245142995827
	.quad	0x3fd48c6558f05044              # double 0.32106908498213138
	.quad	0x3fe8a0857326e567              # double 0.76959488382923957
	.quad	0x3fab7a24b37e1130              # double 0.053666254912089761
	.quad	0x3fcdc8ff605f7c24              # double 0.2326964588710051
	.quad	0x3fdaffe4b8fccd5c              # double 0.42186849656282788
	.quad	0x3fdf50a62aac1f3c              # double 0.48929742972585522
	.quad	0x3fe4bb5951028536              # double 0.64786973783717516
	.quad	0x3fe85b2ffd4a4eca              # double 0.76113128157381849
	.quad	0x3fec61c0fe0938fb              # double 0.88693284622584601
	.quad	0x3feded1cd7dac7c5              # double 0.93519441756347332
	.quad	0x3fee29f70e186100              # double 0.94262268784498815
	.quad	0x3fd78bddcda5246a              # double 0.36791176874664322
	.quad	0x3fd6f661b83b5aa0              # double 0.35878794661895519
	.quad	0x3fe67f7f81df6a66              # double 0.70306372991337862
	.quad	0x3fe8bc7b1fce3549              # double 0.77300792896282033
	.quad	0x3fd2a6c3db207ddc              # double 0.29142853163827254
	.quad	0x3fe0c30faeeb6c5b              # double 0.5238111893080587
	.quad	0x3fd01c8c770e4610              # double 0.25174247385538795
	.quad	0x3fe2cc199e163630              # double 0.58741455913849983
	.quad	0x3fb172da01d821b0              # double 0.068158746195087216
	.quad	0x3fa1fcfca9b05800              # double 0.035133262361497941
	.quad	0x3feb8b997dbef282              # double 0.86079096374267317
	.quad	0x3fed38a51a390cb5              # double 0.91316466447496814
	.quad	0x3fe178ecfa2eb5d1              # double 0.54601143707048483
	.quad	0x3fe840cb4e28d3ff              # double 0.75790944352650047
	.quad	0x3fe7f437ba8fa6c6              # double 0.74856172979090085
	.quad	0x3fe555b1f45898d9              # double 0.66671083186954683
	.quad	0x3fc3700b1b0ec478              # double 0.15185679265190166
	.quad	0x3fe48edaa911f453              # double 0.64243824979315389
	.quad	0x3fe4f7ff2e6f0c56              # double 0.65527304715250057
	.quad	0x3fdbc161221f8678              # double 0.43367794353807865
	.quad	0x3fc83ef4161e9e0c              # double 0.18942118721064138
	.quad	0x3feb3579325651f2              # double 0.85027751761896142
	.quad	0x3fdcdec60d3a87f2              # double 0.45109702388629025
	.quad	0x3fd898230d3cd57e              # double 0.38428570072877466
	.quad	0x3fe1ea5276c45826              # double 0.55985377499269329
	.quad	0x3fe42492fd0275fd              # double 0.62946462074222576
	.quad	0x3fe0fe1494e6c5f9              # double 0.53101567346874312
	.quad	0x3fea9cd6087da67c              # double 0.83164502771724313
	.quad	0x3fc969168dfa261c              # double 0.19851953442075476
	.quad	0x3fe523d5e7132e31              # double 0.66062445766278277
	.quad	0x3fe306afd3715aaa              # double 0.59456626222057207
	.quad	0x3fc1adb3a3205490              # double 0.13811345544005293
	.quad	0x3fd535c7a4c7d452              # double 0.33140746204236848
	.quad	0x3fd87dcdd061c86a              # double 0.38267846441079334
	.quad	0x3fea4a0de5f7a476              # double 0.82153983035563161
	.quad	0x3fe2d88b782fc1db              # double 0.58893369172988785
	.quad	0x3fccdb3e18c43790              # double 0.22544075211811476
	.quad	0x3fe7619fb4fd22e9              # double 0.73066697453859064
	.quad	0x3fec55aafdd3d0dc              # double 0.88545751166978048
	.quad	0x3fe5e9e4e50d4590              # double 0.68480152832687402
	.quad	0x3fc22cafcfd41f10              # double 0.14198873184090433
	.quad	0x3fed16e8a7900a04              # double 0.9090464852054656
	.quad	0x3fd7d8e1bd24cca2              # double 0.3726124140841397
	.quad	0x3fd68349842ca53e              # double 0.35176313312202356
	.quad	0x3fa5a9dc2ffa0960              # double 0.04231155477193016
	.quad	0x3fe85893927927a1              # double 0.76081255538996484
	.quad	0x3fc70ddb88ab6a34              # double 0.1801103989917735
	.quad	0x3fd696483decc186              # double 0.3529224972471855
	.quad	0x3fc3a737a7cc1818              # double 0.15354057019448031
	.quad	0x3feec1298e43fa0d              # double 0.96107938562619354
	.quad	0x3febb919ec9a2d14              # double 0.86634536944748896
	.quad	0x3fe964f93d37149b              # double 0.79357587772450999
	.quad	0x3fdc1d29130429e2              # double 0.43927981240326919
	.quad	0x3fdfcd540cd945c8              # double 0.49690724615819848
	.quad	0x3fe1a8f18641f8be              # double 0.55187298032958387
	.quad	0x3fe5620363371021              # double 0.66821450593898046
	.quad	0x3fe709f556b97233              # double 0.7199656194530405
	.quad	0x3fb262ab4b28bd78              # double 0.071818071221732782
	.quad	0x3fd31b1a61ecc60a              # double 0.29852923930147368
	.quad	0x3f95da2c1fdb1fa0              # double 0.021340074009259191
	.quad	0x3fe35d9bd49b9c1a              # double 0.60517684483500322
	.quad	0x3fc92f0de51f1eb0              # double 0.19674848258568067
	.quad	0x3fea9739ec21e721              # double 0.83096023673644848
	.quad	0x3fe3a9230f7d0254              # double 0.61439660096227522
	.quad	0x3fe49040921ea147              # double 0.64260891474717929
	.quad	0x3fc0e090680f349c              # double 0.13185315209412785
	.quad	0x3fa8717ce303f2b0              # double 0.047740843498080721
	.quad	0x3fe714fd68402d0a              # double 0.72131224023306229
	.quad	0x3fcf5764a80aa714              # double 0.2448545284763034
	.quad	0x3fd8211e4093670c              # double 0.37702137285451509
	.quad	0x3fdcb654ab519530              # double 0.44862858515110116
	.quad	0x3fede54f5745198c              # double 0.93424193425089319
	.quad	0x3fd2c465bba26cec              # double 0.29323714564971115
	.quad	0x3fca894317e5ede4              # double 0.2073139063539734
	.quad	0x3fe3af31abafbf1f              # double 0.61513598949929704
	.quad	0x3fea69469841f9bc              # double 0.82535104501567202
	.quad	0x3fc2696288bb0734              # double 0.14384109188363825
	.quad	0x3fe0104fef1ccad3              # double 0.50199124051718014
	.quad	0x3fbe8e3a30611c28              # double 0.11935771638046389
	.quad	0x3fea3190f14cfa62              # double 0.8185505593208513
	.quad	0x3fe0abbbfc34cc0f              # double 0.52096366175681108
	.quad	0x3fe92388f3701dda              # double 0.78558776422954257
	.quad	0x3feb240d5b3837c1              # double 0.84815090004280347
	.quad	0x3feecc4253320012              # double 0.96243396996578867
	.quad	0x3fe273599ba7fbec              # double 0.57658081437682318
	.quad	0x3fcdc7f25605d2ac              # double 0.23266438675240886
	.quad	0x3fe17f2b263c5362              # double 0.54677350490474574
	.quad	0x3fc43562e1b16e10              # double 0.15787921924753379
	.quad	0x3fe87655e6d8857a              # double 0.76444525801723207
	.quad	0x3fc4fc4386d283a0              # double 0.16394847949143543
	.quad	0x3fe338cba700b069              # double 0.60068304650986903
	.quad	0x3fdeae726c96e86a              # double 0.47939739803735526
	.quad	0x3fe6098b12f40865              # double 0.68866494848067517
	.quad	0x3fc17346e13c0b94              # double 0.13633047101765483
	.quad	0x3fe36ccc9d430f0f              # double 0.60703116145347902
	.quad	0x3febe7eed6e68543              # double 0.87206212971447206
	.quad	0x3fa4b4932df00300              # double 0.040440177304850167
	.quad	0x3fe719cacf7294f9              # double 0.72189846531969615
	.quad	0x3fe834ba70d35c07              # double 0.75643655811552513
	.quad	0x3fa66547741a86a0              # double 0.043741448328785681
	.quad	0x3fe44de4c27fb07d              # double 0.63450849521679198
	.quad	0x3fe9c9fbf2a42307              # double 0.80590627089358768
	.quad	0x3fe8796f5be55ca7              # double 0.76482360790659676
	.quad	0x3feac8b45516eca6              # double 0.83700005168011127
	.quad	0x3fd0af62e7f4c362              # double 0.26070473339046007
	.quad	0x3fed55ae587a62e9              # double 0.9167091110312785
	.quad	0x3fe431653c5b832a              # double 0.63102971829002752
	.quad	0x3fe69001a9671aad              # double 0.70507891737437023
	.quad	0x3fcb45b4fd709b10              # double 0.21306478857987843
	.quad	0x3fee6da12b653fbc              # double 0.95088251567539527
	.quad	0x3fa143985fbaa1b0              # double 0.033718835530922475
	.quad	0x3fd10521a3c8f02e              # double 0.26593819613094893
	.quad	0x3fcf83b8605e5464              # double 0.24620728211872056
	.quad	0x3fe07f2837adcc81              # double 0.51552210688386435
	.quad	0x3fd6c0c64fa7b416              # double 0.35551603106324714
	.quad	0x3fe856cc84d1c6f4              # double 0.76059556905076286
	.quad	0x3fcc4991c65dee98              # double 0.22099516092190608
	.quad	0x3fee417631ff9595              # double 0.94549093022640085
	.quad	0x3fae43b28ba41910              # double 0.059110240503331579
	.quad	0x3fe8c50263eeda3f              # double 0.77404899137656702
	.quad	0x3f784b4fa1fcdc80              # double 0.0059311972288959014
	.quad	0x3fcd61044f11bdd4              # double 0.22952321873479653
	.quad	0x3fe024c80d5a1a9a              # double 0.50448992355161981
	.quad	0x3fe13b4c5a2b9e71              # double 0.53848855601695622
	.quad	0x3fee3864e98be013              # double 0.94438405622986676
	.quad	0x3fd56d29f2257d1c              # double 0.33478783270943935
	.quad	0x3fde84fc390bfc80              # double 0.47686677523592635
	.quad	0x3fea97c4a475e157              # double 0.83102638360200387
	.quad	0x3fb96db8d27af7b0              # double 0.099330474268724655
	.quad	0x3fd9464d86a962f8              # double 0.39491594458154067
	.quad	0x3fe1101c416f3a7f              # double 0.53321659832165824
	.quad	0x3fe82382d8537dc3              # double 0.75433485270689749
	.quad	0x3fe8ddaf5eb7fb59              # double 0.77706116199247355
	.quad	0x3fd2d16a9ff2b414              # double 0.29403176898887406
	.quad	0x3fd13912ddf03a8c              # double 0.26910850213690973
	.quad	0x3fe1a0988ed711c2              # double 0.55085399530849366
	.quad	0x3fe0ba047d12e312              # double 0.52270721844169743
	.quad	0x3f7c0919d67cab00              # double 0.0068446168223015302
	.quad	0x3fc7d41c42794978              # double 0.18616059537687213
	.quad	0x3fe74b1567eb2b7d              # double 0.72791548058135869
	.quad	0x3f65d0d806d56a00              # double 0.002663061072479822
	.quad	0x3fe3e1b1defb245d              # double 0.62130063582402395
	.quad	0x3fede5665a5c1034              # double 0.93425290726054877
	.quad	0x3fe3c0ba9d027b0b              # double 0.61727648416476322
	.quad	0x3fe13e8773060045              # double 0.53888294663921299
	.quad	0x3fdef98652218514              # double 0.48397977848624518
	.quad	0x3fed2ef65f97faf2              # double 0.91198271437300904
	.quad	0x3fd872c598e09b22              # double 0.38200511865072617
	.quad	0x3fe191748e4d3573              # double 0.54900577348023061
	.quad	0x3fe897757aec5dfc              # double 0.76848863609751516
	.quad	0x3fdb476ac4ec6cb2              # double 0.42623395186246704
	.quad	0x3fe2f84506f80c06              # double 0.59280635224456613
	.quad	0x3fe86e7e5e481c5c              # double 0.76348799147025259
	.quad	0x3fe81184c16377f6              # double 0.75213849803162591
	.quad	0x3feabd4f904e084b              # double 0.83560922798665993
	.quad	0x3fd3505497f56a66              # double 0.30177798118317012
	.quad	0x3fe80c7c2e01d2ce              # double 0.75152405725256144
	.quad	0x3fc7c61d9b5c281c              # double 0.18573350988327852
	.quad	0x3fc268dd2d3c942c              # double 0.14382519444294084
	.quad	0x3fed2e3beb4af08c              # double 0.91189380603420167
	.quad	0x3fe85b59fc53bd5c              # double 0.76115130694044408
	.quad	0x3fd33f873af8555c              # double 0.30075245627206981
	.quad	0x3fe958f02f5acb2d              # double 0.79210671662290155
	.quad	0x3fbad519e9c47a78              # double 0.10481416661466791
	.quad	0x3fc2e388e72af9d4              # double 0.14756881034368396
	.quad	0x3fc2e8aff776816c              # double 0.1477260549845697
	.quad	0x3fef868cafc7c110              # double 0.98517450649345228
	.quad	0x3feaf22d3073461f              # double 0.84206256354281439
	.quad	0x3fef913a32187f2d              # double 0.98647794517817077
	.quad	0x3fc5ede9353bd0fc              # double 0.17132296656894386
	.quad	0x3fc5e4b7802d7a50              # double 0.17104238279985617
	.quad	0x3fdcbe7cfba31c0c              # double 0.44912647794666394
	.quad	0x3fef3948f2fd0903              # double 0.97574279268909014
	.quad	0x3fd76563eebaf052              # double 0.36556337655543303
	.quad	0x3fec83708f529c99              # double 0.89104488365855439
	.quad	0x3fec64e29a3ca8aa              # double 0.88731508373645807
	.quad	0x3fe30f79bbe6da93              # double 0.59563910197796799
	.quad	0x3feea6763ece610d              # double 0.95782005564527283
	.quad	0x3fdea1c58c7359a6              # double 0.478623759421135
	.quad	0x3fea6d017869828c              # double 0.82580636518476202
	.quad	0x3fe31444f3c6e223              # double 0.59622428524659588
	.quad	0x3fe8220425d36f3a              # double 0.75415236842989164
	.quad	0x3fbd37d7a89baeb0              # double 0.11413333765420464
	.quad	0x3fe44ba9346507cb              # double 0.6342359565098773
	.quad	0x3fd9dd1e9ab5346a              # double 0.40412106617151855
	.quad	0x3fdc49b4bfa3ec0c              # double 0.44199866022944501
	.quad	0x3fbdb6033a849260              # double 0.11605854204805999
	.quad	0x3feb15b36f606589              # double 0.84639903786880766
	.quad	0x3fd3aa50cbaea64a              # double 0.30727023974268219
	.quad	0x3f4b23141bebe400              # double 8.2815629852384109E-4
	.quad	0x3fdead16850c8cba              # double 0.47931445115154825
	.quad	0x3fd88804db18f298              # double 0.3833019389747192
	.quad	0x3fd53d3a4faa4c08              # double 0.33186204700285815
	.quad	0x3fe903b8e4194083              # double 0.78170437384143587
	.quad	0x3fe0c50ceb63b436              # double 0.52405401205545021
	.quad	0x3fefd2e98fae982f              # double 0.99449613631145961
	.quad	0x3fe04583f66bc5fd              # double 0.50848577622508595
	.quad	0x3fe24f711cc8dfea              # double 0.57219749090199667
	.quad	0x3fe79b6095ff0f10              # double 0.73771695419461203
	.quad	0x3fd0ec230936b96e              # double 0.2644126501062577
	.quad	0x3fdf89a314aec164              # double 0.49277569789685161
	.quad	0x3fc07d0f43eeef60              # double 0.12881651703889485
	.quad	0x3fd33c38b2c15f84              # double 0.30055062729433524
	.quad	0x3fdff07fbdc77174              # double 0.49905389340508255
	.quad	0x3fc4fbc524e90e5c              # double 0.16393341352714941
	.quad	0x3fedf0b86da868a3              # double 0.93563481729076547
	.quad	0x3fc74fb7b6ef5414              # double 0.18212028915755296
	.quad	0x3fe8e3f69d5a86b3              # double 0.77782755597237097
	.quad	0x3fed1a7b65ffe3c5              # double 0.90948266908446185
	.quad	0x3feb1593b156696b              # double 0.84638390194167579
	.quad	0x3fe5668bdff007c2              # double 0.66876786935630883
	.quad	0x3fef98fc95137616              # double 0.98742512813959382
	.quad	0x3fc15b14572b215c              # double 0.13559202438615159
	.quad	0x3fe0050601bfc21c              # double 0.50061321584331919
	.quad	0x3fd6476b67528272              # double 0.34810910310810705
	.quad	0x3fbe263f35fed300              # double 0.11777110164878124
	.quad	0x3fc5bbdb822e1f9c              # double 0.16979545456365208
	.quad	0x3fecd745e1e3dd4a              # double 0.90127843970450638
	.quad	0x3fea25d5e3946c51              # double 0.81711859177756641
	.quad	0x3fdd3e25ec9895e2              # double 0.45691822152215711
	.quad	0x3fd04def71e3b1fc              # double 0.2547567951394567
	.quad	0x3fe2e4e2c888851d              # double 0.59044016997009729
	.quad	0x3fed74a2cec9a205              # double 0.920487789041602
	.quad	0x3fd9f5da24112874              # double 0.40563062212152734
	.quad	0x3fec48534ae452bb              # double 0.88382877948114158
	.quad	0x3fe855e692ece583              # double 0.76048592277872762
	.quad	0x3f7366776d8ea600              # double 0.0047363915590863392
	.quad	0x3fecddacb8dd230a              # double 0.9020598993894009
	.quad	0x3fcfabc5261a96a0              # double 0.2474295078329094
	.quad	0x3fd3dde8c21eb56a              # double 0.31041926342989845
	.quad	0x3fd8575929c658d0              # double 0.3803313167530975
	.quad	0x3fe52591c473129d              # double 0.66083610886615285
	.quad	0x3feb01eece08019e              # double 0.84398594131930671
	.quad	0x3fdd85c8ecd29d08              # double 0.46129058005540502
	.quad	0x3fe9cbc86c86f9be              # double 0.80612584301689316
	.quad	0x3fd4f8dc731627cc              # double 0.32768927802009951
	.quad	0x3f706bbb70552480              # double 0.0040089914157955819
	.quad	0x3fe93a67cff0f0a2              # double 0.78837957967290984
	.quad	0x3fc76f54e5f15938              # double 0.18308507182764244
	.quad	0x3fb7e96e260fb930              # double 0.09340561322435259
	.quad	0x3fdc12dcdfbf1166              # double 0.43865129327993768
	.quad	0x3fe001d072f82a51              # double 0.50022146658859346
	.quad	0x3fea9741d8cddfbc              # double 0.83096401543206566
	.quad	0x3fd5183f150dff68              # double 0.32960488372918073
	.quad	0x3fe0251cf0676769              # double 0.50453040079012823
	.quad	0x3fe78e7755eb9a4e              # double 0.7361408880358995
	.quad	0x3fe39105492a3d41              # double 0.61145271577871807
	.quad	0x3fed304f8a58814e              # double 0.91214730282448797
	.quad	0x3fec4092ccc73f99              # double 0.88288249965443122
	.quad	0x3feb97be22be7952              # double 0.86227328096337374
	.quad	0x3feaf3170e84c910              # double 0.84217408023531171
	.quad	0x3fba69172129fd60              # double 0.10316605147999303
	.quad	0x3fd16287d592beda              # double 0.27163883072624417
	.quad	0x3fe0df3b7e139539              # double 0.52725004791560715
	.quad	0x3fe471395451f00d              # double 0.63882128208888533
	.quad	0x3fe5d52b85e32139              # double 0.68227172994469421
	.quad	0x3fd503290f36cdce              # double 0.3283178947997073
	.quad	0x3fb8baee7e2ee8e0              # double 0.096602350050406737
	.quad	0x3fd2867e33a4ea6a              # double 0.28945879977587785
	.quad	0x3fcfbe234b2a12bc              # double 0.2479900471700115
	.quad	0x3fecc4fa9e6604d1              # double 0.89904528557976893
	.quad	0x3fec7a7a2411acac              # double 0.88995081944212506
	.quad	0x3f95923670790e00              # double 0.021065569510268389
	.quad	0x3fe877765ab6b22e              # double 0.76458280293951986
	.quad	0x3fe2b5d335d4d8e2              # double 0.58469543947174096
	.quad	0x3fec0a80d4670550              # double 0.87628213391159626
	.quad	0x3fca111c25cb9d94              # double 0.20364715428807456
	.quad	0x3fd2540f7ac2d3e8              # double 0.28638064373381988
	.quad	0x3fe54bfa60958c99              # double 0.66552466262909882
	.quad	0x3fee90b66fb9ad41              # double 0.95516511746738086
	.quad	0x3fecfd0f540e698d              # double 0.90589109818692892
	.quad	0x3febd6900b475aba              # double 0.86994173243404949
	.quad	0x3fe975c78cb8505a              # double 0.79562737926836324
	.quad	0x3fe55b524babed89              # double 0.66739764003379876
	.quad	0x3fb12a46f077f208              # double 0.067051347454203492
	.quad	0x3fc7bcfc2b70ced4              # double 0.18545486565709857
	.quad	0x3fd609616892f6a6              # double 0.3443225404006206
	.quad	0x3fe7d762163c9d83              # double 0.7450418886482314
	.quad	0x3fed5cc92e0ba05e              # double 0.91757639878506914
	.quad	0x3fc166ec3243ad7c              # double 0.13595344976725332
	.quad	0x3feabb6315176631              # double 0.83537439460196172
	.quad	0x3fe4664f8102b565              # double 0.63748908231142976
	.quad	0x3fea54ad87785652              # double 0.82283665141103257
	.quad	0x3fd12bfac32079b8              # double 0.26830929808957249
	.quad	0x3fe024e3c5bca94a              # double 0.50450314159869802
	.quad	0x3fefd0918d1dbb93              # double 0.99421002923723944
	.quad	0x3feac9d3c2d76918              # double 0.83713710837335764
	.quad	0x3fc60bd27a97aa88              # double 0.17223578439673681
	.quad	0x3fdfdad5d743dc5a              # double 0.49773164770107814
	.quad	0x3fee5497927220ef              # double 0.94782618143747566
	.quad	0x3fe1c3ada71e82a1              # double 0.55513651504960049
	.quad	0x3fe5a7d389d1d91a              # double 0.67673661153711184
	.quad	0x3fd3a01d597cc1f0              # double 0.30664762248036848
	.quad	0x3fdef805217aaab2              # double 0.48388794202279961
	.quad	0x3fd882ea9bf92a3c              # double 0.38299050552146574
	.quad	0x3fe8d510a8b27b89              # double 0.77600892018004786
	.quad	0x3fdc5bf15c637428              # double 0.44311174413980092
	.quad	0x3fef42d3b11de6f9              # double 0.97690758317113968
	.quad	0x3fd97f1cab885588              # double 0.39838330031610569
	.quad	0x3fa419836142b710              # double 0.039257150290138765
	.quad	0x3fcef943cf67ef9c              # double 0.24198196055646981
	.quad	0x3fc9611dcf758518              # double 0.19827625875317589
	.quad	0x3fe87cb99187a27b              # double 0.76522520469468647
	.quad	0x3fc070827018b414              # double 0.12843351815664106
	.quad	0x3fe83060e705d3fa              # double 0.7559055816806215
	.quad	0x3fe5dcb162023399              # double 0.68319005148224499
	.quad	0x3fe38bafff5ecce2              # double 0.61080169560446174
	.quad	0x3fd0d8fdb1beca4c              # double 0.26324407918869919
	.quad	0x3fef40bbe79b1ce0              # double 0.97665209994820756
	.quad	0x3fd322714cd55178              # double 0.29897720816850137
	.quad	0x3fb4287bbf850fb0              # double 0.078742727525478839
	.quad	0x3fecd029e378d292              # double 0.90041059902303489
	.quad	0x3fd9fc62a8251c00              # double 0.40602938099294761
	.quad	0x3fc18487ffb5e784              # double 0.13685703264109972
	.quad	0x3fdd325a8be6e5c4              # double 0.4561983457784573
	.quad	0x3fdd2123f56c6ea2              # double 0.45514773337502323
	.quad	0x3fee3c816ccbbfef              # double 0.9448859333915588
	.quad	0x3fe95868d35ec086              # double 0.79204217227199147
	.quad	0x3f933189e14772c0              # double 0.018743662238068337
	.quad	0x3fdc5a5f7f5ec924              # double 0.44301593245031001
	.quad	0x3fd1874d1bd1ea40              # double 0.2738831302337168
	.quad	0x3feeb7ed80bd85e3              # double 0.95995211739153452
	.quad	0x3fede39e10bccc12              # double 0.93403533238449854
	.quad	0x3fd6c633dc5a94c8              # double 0.355847325505533
	.quad	0x3fefdd6be3758b96              # double 0.99577898431413092
	.quad	0x3fe7b514101a0454              # double 0.74085429329728436
	.quad	0x3fd8abdf3a2ccb32              # double 0.38549023324155762
	.quad	0x3feac8ddbb5e20d0              # double 0.8370197925114784
	.quad	0x3fee33582522ad02              # double 0.94376761677759213
	.quad	0x3fe32e73cae8f5f9              # double 0.59942044859752663
	.quad	0x3fd914bc463c4344              # double 0.39189059122968595
	.quad	0x3fe313d58611e586              # double 0.59617115197686199
	.quad	0x3fe1b6be5f19b335              # double 0.55355757307334008
	.quad	0x3fee5ede993fd7c6              # double 0.94908075267334691
	.quad	0x3feb3ae184902977              # double 0.8509376134036718
	.quad	0x3fe1b95b7309ea23              # double 0.55387661427022683
	.quad	0x3fbd4ae136fbb368              # double 0.11442382423747477
	.quad	0x3fc6778f6614179c              # double 0.17552368625927961
	.quad	0x3f9d4f1157d372c0              # double 0.028621932015868934
	.quad	0x3fd0825da44b0644              # double 0.25795689625019613
	.quad	0x3fd23393c93a4df0              # double 0.28439802790782576
	.quad	0x3feb2890c0dc8c02              # double 0.84870183628333984
	.quad	0x3feda9a94190857f              # double 0.92696059041570311
	.quad	0x3fefb52cb9547d54              # double 0.99086605260155602
	.quad	0x3fd90510c0def460              # double 0.39093417010355402
	.quad	0x3fd421c3affcd778              # double 0.31456081568045802
	.quad	0x3fdd207bbfeb313a              # double 0.45510762922346581
	.quad	0x3fd43aa21a3a8a64              # double 0.31607868729967081
	.quad	0x3fe4e8bd71c05124              # double 0.65341064660109227
	.quad	0x3fe55e610e155d61              # double 0.66777088881182689
	.quad	0x3fe3c251caad7527              # double 0.61747064195120493
	.quad	0x3fdc9fdc3092aec4              # double 0.4472570871682644
	.quad	0x3fea61367596e975              # double 0.82436678854655432
	.quad	0x3fc924a0355cc2ec              # double 0.19643023114760838
	.quad	0x3fe0d3b2e93fbb73              # double 0.52584214741169288
	.quad	0x3fc4e47948ac2674              # double 0.16322246597728773
	.quad	0x3fe920e616469d98              # double 0.78526596403837612
	.quad	0x3feda07730d4c703              # double 0.9258380845769526
	.quad	0x3fec487fb5f22371              # double 0.88384995971965286
	.quad	0x3feaea1bf0b43795              # double 0.84107777607435941
	.quad	0x3fd25a9aa64beb2a              # double 0.28678003539941932
	.quad	0x3fc6532fabf14098              # double 0.17441364188789943
	.quad	0x3fd668e2c8242a9e              # double 0.35015172524496474
	.quad	0x3fe3d0ea700d3cd3              # double 0.61925241360759242
	.quad	0x3fea073b7d367766              # double 0.81338285880677286
	.quad	0x3f7472ae651f1200              # double 0.0049921810440918257
	.quad	0x3fd7a2ab5332ad7a              # double 0.36930354237366425
	.quad	0x3fe308230ee0e888              # double 0.59474327951399264
	.quad	0x3fafd9a4f105d100              # double 0.062207369252890388
	.quad	0x3fed4f1a8fa516cf              # double 0.91590622001305089
	.quad	0x3fdb9cf403d34292              # double 0.43145466207082805
	.quad	0x3fe95054bbd66d7e              # double 0.79105602919609885
	.quad	0x3fdba9df7af61120              # double 0.4322432232659299
	.quad	0x3fe81c8cbc8a5b74              # double 0.75348507713611789
	.quad	0x3fb38aeecaeea570              # double 0.076338696044919052
	.quad	0x3fd4d62ba3769f68              # double 0.32557192767352783
	.quad	0x3fe017b8a278d4f4              # double 0.50289565785229096
	.quad	0x3feb2d4fe4da324e              # double 0.84928126046868058
	.quad	0x3fed8f2d540fda15              # double 0.9237276689371493
	.quad	0x3fe577e5478fb5da              # double 0.67088569619016458
	.quad	0x3fe3de4caff61675              # double 0.62088617675244839
	.quad	0x3fe07074934d95bb              # double 0.51372746248369283
	.quad	0x3fa1caacdff07a20              # double 0.034749414764736253
	.quad	0x3fb5cfc85f9948c8              # double 0.085201762523214986
	.quad	0x3fe79c352fa72ad7              # double 0.73781832988000928
	.quad	0x3fea8eb66497dc9d              # double 0.8299209561072477
	.quad	0x3fa3b4b1bb8a55e0              # double 0.038487962859260483
	.quad	0x3fcb4a6c23c7bd38              # double 0.21320869204598991
	.quad	0x3fe423de3aa1e5df              # double 0.62937842799800225
	.quad	0x3fdd0d77c56ce614              # double 0.4539470127088816
	.quad	0x3feeb059a167fb67              # double 0.95902711414951802
	.quad	0x3fe210bd8cdc4a26              # double 0.56454350959603938
	.quad	0x3fc789a22a73b930              # double 0.18388773987630591
	.quad	0x3fedd820af069b99              # double 0.93263277230004171
	.quad	0x3faf9c4cb6d1b000              # double 0.061739346806319872
	.quad	0x3fd852bde9fa4fd0              # double 0.38005016183273899
	.quad	0x3f9c2aea1b206160              # double 0.027507455735844899
	.quad	0x3fd4c565e7874776              # double 0.32454822168539665
	.quad	0x3fec089107489ed3              # double 0.8760457174548385
	.quad	0x3fedcebda23d02c8              # double 0.93148690879032703
	.quad	0x3fb0969a78b93000              # double 0.064798025582774699
	.quad	0x3fe06d8355587cd6              # double 0.51336828869889461
	.quad	0x3faaed3cc190f6c0              # double 0.052591227177328559
	.quad	0x3fe1a1e0563d49da              # double 0.55101029246935274
	.quad	0x3fe5eceabef5e95e              # double 0.6851705293368402
	.quad	0x3fb498443fef94b8              # double 0.080448403939572866
	.quad	0x3fefc7928359a0c9              # double 0.99311185507124222
	.quad	0x3f441ff44f4c6c00              # double 6.1416081607335027E-4
	.quad	0x3fe7aefcfa6442ec              # double 0.74011086372965229
	.quad	0x3fc5e90dbc862b70              # double 0.1711747332122644
	.quad	0x3febb4606893914c              # double 0.86576862740597837
	.quad	0x3fe3adaddddda3c0              # double 0.61495107014808781
	.quad	0x3fe90a0eeb717fda              # double 0.78247781739264188
	.quad	0x3fcd42f3b2407dcc              # double 0.22860571101862914
	.quad	0x3fea9cfd53ba56ab              # double 0.83166376450636414
	.quad	0x3fdfaf49ebf03d90              # double 0.49507377663481922
	.quad	0x3fd397c7459bda46              # double 0.30613881871923743
	.quad	0x3fe0e2d7f08a9bff              # double 0.52769085865736531
	.quad	0x3fe27e062330adbe              # double 0.57788378594471346
	.quad	0x3fed6163d44e33e8              # double 0.9181384226409337
	.quad	0x3fc21969b15e11d8              # double 0.14140053902168748
	.quad	0x3fe6d89aaeacf836              # double 0.71394094578113854
	.quad	0x3fc38e88fa141054              # double 0.15278732500894654
	.quad	0x3fed2394e2d4a630              # double 0.91059345534194414
	.quad	0x3fec82a9bcf6fd26              # double 0.89095007807910487
	.quad	0x3feab5bb6f3122be              # double 0.8346841022222049
	.quad	0x3fc3ee39a81a20dc              # double 0.15570755680187787
	.quad	0x3fe7cad22eb3d55d              # double 0.74350842591836008
	.quad	0x3feb7ffab6a4fc69              # double 0.85937247917889892
	.quad	0x3fdc73eb9e65e9c6              # double 0.44457521885456364
	.quad	0x3fe85810b5cefde5              # double 0.76075015553936665
	.quad	0x3fe851669f75082a              # double 0.75993662971473452
	.quad	0x3fe4add888186ee9              # double 0.64622141438618741
	.quad	0x3fe53431226558ec              # double 0.66262108533808606
	.quad	0x3fe7126c976dd66b              # double 0.72099904609667698
	.quad	0x3fd584d422f5ef4e              # double 0.3362322179234426
	.quad	0x3fde21fdfd6e5d16              # double 0.47082471608287457
	.quad	0x3fc9c4b50a8cb74c              # double 0.20131552710648248
	.quad	0x3fd44ec58289dcb8              # double 0.31730783222105741
	.quad	0x3fe3aa8761896a89              # double 0.614566507817771
	.quad	0x3fd287816e06e854              # double 0.28952060456106676
	.quad	0x3fed2b074d71b5dd              # double 0.91150250554863599
	.quad	0x3fdb5b2d5726c4b8              # double 0.4274400092209123
	.quad	0x3fd13ce2808daf46              # double 0.2693411116986123
	.quad	0x3fe7d9a80ec4ddcd              # double 0.74531939396450186
	.quad	0x3fcc1f564e7d1d14              # double 0.21970633346993707
	.quad	0x3fcc13ca970c21bc              # double 0.21935398459778621
	.quad	0x3fdb9a22b33c679e              # double 0.43128268722068153
	.quad	0x3fbecd88f4eedca8              # double 0.12032371501742267
	.quad	0x3fe045dad3ae6a64              # double 0.5085271963501552
	.quad	0x3fc434632d09a0a8              # double 0.15784873675443589
	.quad	0x3fed54ab5f6606b7              # double 0.91658562309768044
	.quad	0x3fc2a9abbdd371d8              # double 0.14580294388623716
	.quad	0x3fd5cb9cc4de24d0              # double 0.3405525133644689
	.quad	0x3fe0a6e9cd88f827              # double 0.52037515777170007
	.quad	0x3febde09faf96ffb              # double 0.87085436838560726
	.quad	0x3fe5dd871e8a8c61              # double 0.68329196896628386
	.quad	0x3fd381d09d455a40              # double 0.30479827269065041
	.quad	0x3fd02d6b0bb74400              # double 0.25277210373047865
	.quad	0x3f7073d1b04aaf80              # double 0.0040167036974415593
	.quad	0x3fef72f3eeb49509              # double 0.98278233167789708
	.quad	0x3fe9fdac62a0a743              # double 0.81221598876184264
	.quad	0x3fd57fb73e6fca34              # double 0.33592015359241434
	.quad	0x3fea903fdee83d28              # double 0.83010858093795026
	.quad	0x3fd84f54deb3eaf2              # double 0.37984201191254308
	.quad	0x3fd1185e09c4602a              # double 0.26711226419274914
	.quad	0x3fed3eee2edab290              # double 0.91393193389156302
	.quad	0x3fd7f2f119b476dc              # double 0.37420299062965312
	.quad	0x3fe28067c8b89fe9              # double 0.57817448809964589
	.quad	0x3fecad7b44ad7aa3              # double 0.89617694295505534
	.quad	0x3fd3b00cea628f9c              # double 0.30762026681099441
	.quad	0x3fe56055296c7831              # double 0.66800935831611785
	.quad	0x3fd3bd2a2f2a5b80              # double 0.30842070203782868
	.quad	0x3fd1cde7225cce1e              # double 0.27819231372561315
	.quad	0x3fec5564b88101df              # double 0.88542400394367948
	.quad	0x3fefa6e320c09783              # double 0.98912197491584696
	.quad	0x3fe0ea7c538a30d9              # double 0.52862373653763506
	.quad	0x3fd36e1ad24570ec              # double 0.30359526190092256
	.quad	0x3fee2e5bf53d1d7e              # double 0.94315908334912968
	.quad	0x3fe1a794e44c0e53              # double 0.55170673932338798
	.quad	0x3fd8e61af92fa954              # double 0.38904451689326902
	.quad	0x3fc97974bd6abdfc              # double 0.19901904343485899
	.quad	0x3fe5553d19c4fd50              # double 0.66665511162856639
	.quad	0x3fea77cf7999a6cc              # double 0.82712529897727327
	.quad	0x3fcb4867abc1e408              # double 0.21314712416258907
	.quad	0x3fae299d1e843780              # double 0.058911237692981011
	.quad	0x3fe4dae7e60988d8              # double 0.6517219059863022
	.quad	0x3fee83cd2cb0b116              # double 0.95358904579691983
	.quad	0x3fe7060e22ec69ed              # double 0.71948916264528651
	.quad	0x3fbc75a6d5088d68              # double 0.11117022229205065
	.quad	0x3fd9f43c099adf78              # double 0.40553189218507368
	.quad	0x3fd5eb2e455a5e12              # double 0.34247929356340123
	.quad	0x3fe4ac5fc963c2cf              # double 0.64604176839756089
	.quad	0x3fd4318bc53bb370              # double 0.31552404652648303
	.quad	0x3fd1e1c941df6a96              # double 0.27940589363940072
	.quad	0x3fef21c9f00de821              # double 0.97287461171731959
	.quad	0x3feeb869fda66a72              # double 0.96001147786166841
	.quad	0x3fd3ecae0dcdf5f0              # double 0.31132079456423778
	.quad	0x3fe6e6601b937bb1              # double 0.71562199960668782
	.quad	0x3fe584a876bffb67              # double 0.67244361108155892
	.quad	0x3fe295415b7370e1              # double 0.58071964131843512
	.quad	0x3fe2ebf1f479f7d4              # double 0.59130189656547794
	.quad	0x3fdb13436e1cebf8              # double 0.42305074456424974
	.quad	0x3fd3ce97b7706a02              # double 0.30948441423393558
	.quad	0x3fe9f6585ed4d28a              # double 0.8113214351820528
	.quad	0x3f897f0b9db8aec0              # double 0.012449351073051118
	.quad	0x3fd9c89cce4fe08c              # double 0.40286941669138154
	.quad	0x3fbdf480fba03290              # double 0.11701208251197159
	.quad	0x3fea11f9eb0d6f94              # double 0.81469436558426133
	.quad	0x3fefb4c7a5240a24              # double 0.99081785444315473
	.quad	0x3fee2f48e75570e5              # double 0.94327206785558515
	.quad	0x3fe11a94e18f6ad1              # double 0.53449482016307048
	.quad	0x3fe674be97eef33c              # double 0.70175103830806718
	.quad	0x3fea65ec35e9b1c0              # double 0.82494173555237893
	.quad	0x3fec488f5bb8ad90              # double 0.88385742105804077
	.quad	0x3fd3a545939df4c4              # double 0.30696238914226748
	.quad	0x3fdd5ce9166021f8              # double 0.458795806742756
	.quad	0x3fefdbec7c0578a3              # double 0.99559616301464293
	.quad	0x3fedff20f74fdfff              # double 0.93739364913108136
	.quad	0x3fe66262e760cbe3              # double 0.69951005164182012
	.quad	0x3fe618ca8fb29f22              # double 0.69052627626385665
	.quad	0x3fe6a2098dd6d399              # double 0.70727994635545877
	.quad	0x3f82b0b4dba17ac0              # double 0.0091261033559794091
	.quad	0x3fe2b377e7f2ebae              # double 0.58440776159783581
	.quad	0x3fe9549caf78f5ca              # double 0.79157861968968146
	.quad	0x3fe15bf39ba8089a              # double 0.54247455979954684
	.quad	0x3fefaa7e11a9a30e              # double 0.98956206750617226
	.quad	0x3fe5dde5d68a5de0              # double 0.68333713438454069
	.quad	0x3fec40db12651065              # double 0.88291696160059685
	.quad	0x3fc4867cb77f1df8              # double 0.16035422286789447
	.quad	0x3fb4ab6248fc6770              # double 0.08074011117824198
	.quad	0x3fefde1424c9e97a              # double 0.99585921464249272
	.quad	0x3fd858a30727b182              # double 0.38040996264205529
	.quad	0x3fed36e349cd5213              # double 0.912950176376912
	.quad	0x3fc4c988426ea340              # double 0.16240027660139766
	.quad	0x3fbbbd67d56cf440              # double 0.10835885010324464
	.quad	0x3fb50099dec89bf8              # double 0.082040421381506579
	.quad	0x3fe737e00a9a535b              # double 0.72557069846025557
	.quad	0x3fde4bf98088156e              # double 0.47338712264930549
	.quad	0x3f9c754d10b61080              # double 0.02779121794220929
	.quad	0x3feb1c88577df585              # double 0.84723298157011639
	.quad	0x3fbd569d1fa54f70              # double 0.11460287115670353
	.quad	0x3fc1e5cdcddf33f4              # double 0.13982555916155059
	.quad	0x3fdb4b225a6c8f56              # double 0.42646082716440981
	.quad	0x3fd17bc7f5b2fcd8              # double 0.27317999834117535
	.quad	0x3fe9af0b8bb89c89              # double 0.80261781014714118
	.quad	0x3fade45ffbb650c0              # double 0.058382987476905068
	.quad	0x3fdee4b9d59a6db0              # double 0.48271032199564967
	.quad	0x3fdfc44b05318f58              # double 0.49635577685534349
	.quad	0x3fed602ee11a4986              # double 0.91799110379570048
	.quad	0x3fee9cf2543d3a06              # double 0.95665852024996023
	.quad	0x3fe7afc148d03843              # double 0.74020446988448219
	.quad	0x3fd795be08f88fd4              # double 0.36851454616612256
	.quad	0x3fcb83b13aa7ba84              # double 0.21495643009207666
	.quad	0x3fc7f1dad22132d8              # double 0.18706832180250532
	.quad	0x3fdd42b1e9eb3b3e              # double 0.45719573825492776
	.quad	0x3fe231b2aef17c4f              # double 0.56856664818395497
	.quad	0x3fec34c4598977f4              # double 0.88144128310864156
	.quad	0x3fc2a78935f279ec              # double 0.14573779234065343
	.quad	0x3fe1ea600d69df89              # double 0.55986025447690324
	.quad	0x3fe4137bd9be2652              # double 0.62737839248547744
	.quad	0x3f9b22b5210ddc80              # double 0.026499586241211848
	.quad	0x3feb346101b48836              # double 0.85014391263053457
	.quad	0x3fcb24ff371b90b4              # double 0.21206655684284714
	.quad	0x3fcebcd94a9a2a68              # double 0.24013820784269346
	.quad	0x3fcdf2bf7a2a7978              # double 0.23397057976849189
	.quad	0x3fe94304455a11f1              # double 0.78943074746399422
	.quad	0x3fe57c9059f76a45              # double 0.67145555087638142
	.quad	0x3fe10cd8e3080826              # double 0.53281826345506
	.quad	0x3fec27e1216f3b13              # double 0.87986809282469591
	.quad	0x3fe7a7eae21da7d0              # double 0.73924774325609555
	.quad	0x3feb7e71e901148d              # double 0.85918517597805677
	.quad	0x3fe7ac274818e273              # double 0.73976482469067972
	.quad	0x3f7d6f81685db700              # double 0.0071864180552958512
	.quad	0x3fdf10ee5a82fbc2              # double 0.48540839041737283
	.quad	0x3fe20eaddbcdc1aa              # double 0.5642918866197324
	.quad	0x3fdf9076734e0e30              # double 0.49319230327839403
	.quad	0x3fe045253c9c8bf1              # double 0.50844060743508923
	.quad	0x3feb180e6122b884              # double 0.84668654414942112
	.quad	0x3fde8f9b56303614              # double 0.47751506249264364
	.quad	0x3fbd96584d7ec770              # double 0.11557533161137967
	.quad	0x3fe1d85c33d0f218              # double 0.5576611530337372
	.quad	0x3fe752ab6ee1d729              # double 0.72884151131322483
	.quad	0x3fee7f26e8e39023              # double 0.95302148328892533
	.quad	0x3fd073d88bc726c4              # double 0.25707067156018248
	.quad	0x3feef392db16769f              # double 0.96723311224532781
	.quad	0x3f9e4d9657c79da0              # double 0.029592846973086062
	.quad	0x3fedd9af43ffc68e              # double 0.932822830973423
	.quad	0x3feb801da53ae32a              # double 0.85938913604249945
	.quad	0x3fce527d300898b8              # double 0.23689236493482269
	.quad	0x3feb1c88e20e4a10              # double 0.84723323966528774
	.quad	0x3fe22e8e240beb41              # double 0.56818301239341207
	.quad	0x3fe3b13cb7b669c0              # double 0.61538539773328438
	.quad	0x3fae2e9f2d5a8880              # double 0.05894944599755636
	.quad	0x3febabafa7250c19              # double 0.86470778127147974
	.quad	0x3fb4f5a195f409d8              # double 0.081873034581838922
	.quad	0x3fe8bc7b8a88de7e              # double 0.77300812776134342
	.quad	0x3fb4b148d6e79f70              # double 0.080830147234903781
	.quad	0x3fdf28f96556624c              # double 0.48687586685403939
	.quad	0x3feca7b113377217              # double 0.89547017815818009
	.quad	0x3fdfdb5469a7572a              # double 0.497761824777046
	.quad	0x3fd06565423ef980              # double 0.25618869275412948
	.quad	0x3fdaf51be9101592              # double 0.42121026763955982
	.quad	0x3fe4d8000806a32a              # double 0.65136720244945434
	.quad	0x3fe5ef8f632771ce              # double 0.68549317708998969
	.quad	0x3fe19365b10ab81c              # double 0.54924282625666221
	.quad	0x3fe70c837060623c              # double 0.72027751873526524
	.quad	0x3fefa310ab6a1a8b              # double 0.98865540961635767
	.quad	0x3fbfe8d89205f688              # double 0.12464669766446879
	.quad	0x3fc8273580ac0e00              # double 0.18869656355683162
	.quad	0x3fe1844ec1fb1671              # double 0.54740083586575683
	.quad	0x3fded69878ce741a              # double 0.48184787557130593
	.quad	0x3fdba0d901b8d710              # double 0.43169236343543194
	.quad	0x3fd41272426d0958              # double 0.31362587439447998
	.quad	0x3fea7ef4aadf1b80              # double 0.82799752591459708
	.quad	0x3fea545bd75e3c67              # double 0.82279769958576032
	.quad	0x3fe74f037bb679ea              # double 0.72839521563201726
	.quad	0x3fca3b84e6129a84              # double 0.20494137987153149
	.quad	0x3fee2e480f57c3cc              # double 0.94314959522864105
	.quad	0x3fa4aa20bc4c3b80              # double 0.040360472665375902
	.quad	0x3fd8e90ab6ba154e              # double 0.38922374576971641
	.quad	0x3fe4d5ddc2b0e8d8              # double 0.6511067202148082
	.quad	0x3fd03d077806dda2              # double 0.25372492524499013
	.quad	0x3fcc7db6bc179034              # double 0.22258648094350664
	.quad	0x3fe1c4cbc7ec71d3              # double 0.55527295157986101
	.quad	0x3feea26dc3681b02              # double 0.95732772984851544
	.quad	0x3fb4083f9e04a718              # double 0.078250862196594162
	.quad	0x3fc62585f9a21ea0              # double 0.17302012147068968
	.quad	0x3fc43f132d8fa558              # double 0.15817489361442472
	.quad	0x3fd408a3b6b0c642              # double 0.31302731362220382
	.quad	0x3fc03ee9585c551c              # double 0.12691990675436038
	.quad	0x3fd50d97afc6fe46              # double 0.32895462194207814
	.quad	0x3fe2637688cd531e              # double 0.57464148253584191
	.quad	0x3fe411e646fcbd1f              # double 0.62718500008296363
	.quad	0x3fed6578731d5696              # double 0.91863653643914023
	.quad	0x3fda054529167c12              # double 0.40657166492923225
	.quad	0x3fe51226c9dc76e3              # double 0.65846576143277635
	.quad	0x3fedb34ca9b99da9              # double 0.92813714169908679
	.quad	0x3fe0d59351572488              # double 0.52607122313305954
	.quad	0x3fefd5ee54c5f733              # double 0.99486462170873435
	.quad	0x3fdd91a705cfefb2              # double 0.46201491897204072
	.quad	0x3fc958f20da90a78              # double 0.19802690188415162
	.quad	0x3fefe835b49ac279              # double 0.99709592127153634
	.quad	0x3feb055037c483c8              # double 0.8443986024104726
	.quad	0x3faa9376721e7400              # double 0.051906300955330664
	.quad	0x3fd4aa63bf1c0e8c              # double 0.32289975798651294
	.quad	0x3fe0583c7fe625ef              # double 0.51077103595997453
	.quad	0x3fce0491c639e494              # double 0.23451444796572629
	.quad	0x3fe643bc6f62d541              # double 0.69576856379595864
	.quad	0x3fb82ca7839cdd98              # double 0.094431371337910242
	.quad	0x3fcf3cdf147ea8d4              # double 0.24404514790268783
	.quad	0x3fa772cb4fa7a770              # double 0.045797685121057863
	.quad	0x3fc1ff051fbc2018              # double 0.14059509324602071
	.quad	0x3fdbbb0d4dac232c              # double 0.43329174599834874
	.quad	0x3fe4029985648be5              # double 0.62531734517358173
	.quad	0x3fe98f1948173e6d              # double 0.7987181098960271
	.quad	0x3fece2131ba16fc5              # double 0.90259700199703075
	.quad	0x3fe0a0eb2966fec5              # double 0.51964338385001752
	.quad	0x3fd97a15fbff515a              # double 0.39807653054346803
	.quad	0x3fc16a773937cddc              # double 0.13606157583090706
	.quad	0x3fd9e1c3d69684ea              # double 0.40440460162979142
	.quad	0x3fc0f94d0f849d88              # double 0.13260806329456565
	.quad	0x3fd774c22895075a              # double 0.366501369124412
	.quad	0x3fdd921ecd8818c6              # double 0.46204347678611801
	.quad	0x3fe569516303896c              # double 0.66910619104991786
	.quad	0x3fd2c32b8a5281f4              # double 0.29316223629032767
	.quad	0x3feb0a1d1bced0cb              # double 0.84498458319878844
	.quad	0x3fedc7a2d55a14dd              # double 0.93061963720597485
	.quad	0x3fe1d248e27d0cb2              # double 0.55691951976804988
	.quad	0x3fdf4c8129c6560a              # double 0.48904446677747215
	.quad	0x3fe7a4644239f576              # double 0.73881733832210617
	.quad	0x3fe5bf2233552009              # double 0.67958173776514841
	.quad	0x3fec6a71531f5093              # double 0.88799349055126908
	.quad	0x3f87affaa5fc6540              # double 0.011566122236717491
	.quad	0x3fec57c06bba7745              # double 0.88571187058162393
	.quad	0x3fd9eafdc979da72              # double 0.40496773410214992
	.quad	0x3fef0ca197130abf              # double 0.97029189593043685
	.quad	0x3fc17ab61f865170              # double 0.13655735530177138
	.quad	0x3febfa0b1c650011              # double 0.87427287622267802
	.quad	0x3f928da5bcd30340              # double 0.018118466997069094
	.quad	0x3fe983d52a261b87              # double 0.7973428557605623
	.quad	0x3fd4fe3995825cc4              # double 0.32801665878782793
	.quad	0x3fd94246dea2ef36              # double 0.39467021695940063
	.quad	0x3fec3fe9ff9cdc4c              # double 0.88280200886118498
	.quad	0x3fce1dad03d231c0              # double 0.23528063475204242
	.quad	0x3feedac4985636f0              # double 0.96420507195736427
	.quad	0x3fd111bdf22c9aac              # double 0.26670788431003234
	.quad	0x3feb7943c3e2bf4b              # double 0.858552820767707
	.quad	0x3fe9067ff544488a              # double 0.78204343703898016
	.quad	0x3fe5e8834ff060f0              # double 0.68463292706567636
	.quad	0x3fe1d4db26da6101              # double 0.55723340595707793
	.quad	0x3fec49b064de4aa2              # double 0.88399524403424246
	.quad	0x3fdf433d7daafc24              # double 0.48847901603943655
	.quad	0x3fe55d6e25b48cae              # double 0.66765506138144359
	.quad	0x3fa560a846d627f0              # double 0.041753061911620537
	.quad	0x3fea0982d1e37662              # double 0.81366101259090962
	.quad	0x3fb59d13bee70590              # double 0.084428056818998564
	.quad	0x3fcb6ece75095464              # double 0.21431904520673861
	.quad	0x3fb2ba5cc8b9f138              # double 0.073156165128186568
	.quad	0x3fcbdec43c958ae4              # double 0.21773579557619549
	.quad	0x3fe720472c0aaa96              # double 0.72269018747222691
	.quad	0x3fe10fb64222d9b6              # double 0.53316796223844309
	.quad	0x3fed62c7b94d0b07              # double 0.91830812636939718
	.quad	0x3fc5159105501570              # double 0.16472065696158777
	.quad	0x3fded5abbd3bd7b8              # double 0.48179143409594927
	.quad	0x3fee1b10cdc26a82              # double 0.94080391108884975
	.quad	0x3fd4ec4533bf5474              # double 0.32692079595046342
	.quad	0x3feb78d66a0792cf              # double 0.85850067814734554
	.quad	0x3fde15062e98982a              # double 0.4700332121886982
	.quad	0x3fe6025c9d55e9e4              # double 0.68778830270394709
	.quad	0x3f864b50f0cabb00              # double 0.010885841701875787
	.quad	0x3fbdcce160928e08              # double 0.11640747649885708
	.quad	0x3fe83b41662d299e              # double 0.75723333317118935
	.quad	0x3fe2f33f7c20f129              # double 0.59219335788615013
	.quad	0x3fe31adbcbd3d9d1              # double 0.59702863512102955
	.quad	0x3fb47d873e37bfd0              # double 0.080040409746060747
	.quad	0x3fed2834068c7a46              # double 0.91115762023020674
	.quad	0x3fe2d7ca494bca06              # double 0.5888415748179916
	.quad	0x3fe1ba0228f3e58b              # double 0.55395610807970408
	.quad	0x3fb99d03a1f0e458              # double 0.10005209640157042
	.quad	0x3fef3dd1a13d2300              # double 0.97629624835926165
	.quad	0x3fdd2217a3fdaab4              # double 0.45520583166823347
	.quad	0x3fdf7017c84e746e              # double 0.49121660767725117
	.quad	0x3fccf01f30542060              # double 0.22607793674274301
	.quad	0x3fecad464b145b3a              # double 0.89615168251007238
	.quad	0x3fc0889da3266d08              # double 0.12916918245614561
	.quad	0x3fe29f554d8101f3              # double 0.58194985520827769
	.quad	0x3fe1a714b8ccc86b              # double 0.5516456231473631
	.quad	0x3feb0f9293765a9c              # double 0.84565094758257286
	.quad	0x3fe6cc25e684da6f              # double 0.7124204160998725
	.quad	0x3fd3493672099cf8              # double 0.30134354721526746
	.quad	0x3fc6f6fa1f984128              # double 0.17941214125358695
	.quad	0x3fe55c908f0cb538              # double 0.66754939975149963
	.quad	0x3f95be6018bacfc0              # double 0.021234036931403244
	.quad	0x3f998aec5eafe9c0              # double 0.024944012908216129
	.quad	0x3fdbc15fd45a23e8              # double 0.43367763268957882
	.quad	0x3fe2fe24e3d615e5              # double 0.5935234498908214
	.quad	0x3fe4aacba9ece29b              # double 0.64584906757871197
	.quad	0x3fde2d36d17790fa              # double 0.4715096517159193
	.quad	0x3fe9846dd586455e              # double 0.79741565422061078
	.quad	0x3fd43f1d18788ffa              # double 0.31635215177288922
	.quad	0x3f8a21c5b0633f00              # double 0.012759727902817541
	.quad	0x3fe1b3976b148734              # double 0.5531727878007815
	.quad	0x3fe4d22d5f8efc85              # double 0.65065640128877134
	.quad	0x3fcb2feefa083ef8              # double 0.21240031441310925
	.quad	0x3fe17e50d5cdcbe4              # double 0.54666940458843927
	.quad	0x3fef88fb6ae85f5c              # double 0.98547144775782724
	.quad	0x3f56a997a53a2800              # double 0.0013832074081698842
	.quad	0x3fee86649e25a9db              # double 0.95390540016279191
	.quad	0x3fc5281ff320671c              # double 0.16528701182760919
	.quad	0x3fe1bcdd6ee4cdbd              # double 0.55430480631769508
	.quad	0x3fb88c3e70255b38              # double 0.095889952067733542
	.quad	0x3fefd8938e9376e3              # double 0.99518754813081178
	.quad	0x3fec10112d8154ee              # double 0.87696131599173355
	.quad	0x3fe2be557f7e92b9              # double 0.58573412801032199
	.quad	0x3fd972a98d469d5a              # double 0.3976234321257458
	.quad	0x3fe9f58ddb66c357              # double 0.81122486926879389
	.quad	0x3feb1360b8308fbc              # double 0.8461154553847261
	.quad	0x3fec454a29919928              # double 0.88345821494002497
	.quad	0x3fc973a04cb07960              # double 0.19884113068196552
	.quad	0x3fd09ab0e50d73fe              # double 0.25944158905423353
	.quad	0x3fe4fbcf984b7527              # double 0.65573863740033722
	.quad	0x3fc4a7af201e5f0c              # double 0.16136731212895261
	.quad	0x3fce5f589d3cdd74              # double 0.23728473355889046
	.quad	0x3fe8893f1964669c              # double 0.76675372085010762
	.quad	0x3fabe85e19d94d30              # double 0.054507198958754777
	.quad	0x3fec02aaea1238ae              # double 0.87532563893343762
	.quad	0x3fde628dde739d7a              # double 0.47476526950637032
	.quad	0x3fe463964cf013cd              # double 0.63715662981905441
	.quad	0x3fe9484325cfdade              # double 0.79007108101981394
	.quad	0x3fee65bf24774590              # double 0.94992024538275821
	.quad	0x3fe50b52077db071              # double 0.65763188803749817
	.quad	0x3fda2d01b52e255a              # double 0.40899698918709293
	.quad	0x3fccd4e1d4621d20              # double 0.22524664755130974
	.quad	0x3fe00829d59fe07b              # double 0.50099651073016049
	.quad	0x3fed57edf0780f44              # double 0.91698357550237874
	.quad	0x3fad5a11ee09ec60              # double 0.057327804858652298
	.quad	0x3fdff72be9f31a5a              # double 0.49946115347521458
	.quad	0x3fd5db28ab7f3ed6              # double 0.34150139568099058
	.quad	0x3fe0d56c5719139e              # double 0.52605263720817041
	.quad	0x3fe0877074f5a2ac              # double 0.51653311580328909
	.quad	0x3fe3936eb12892cb              # double 0.61174711800830417
	.quad	0x3feb7da33e9ad31b              # double 0.85908663012978381
	.quad	0x3fefef05186ff788              # double 0.99792723439144115
	.quad	0x3feaa876dc925206              # double 0.83306449013122186
	.quad	0x3fe7a769bb147e13              # double 0.73918615855285663
	.quad	0x3fe4586ae00c8222              # double 0.63579314956229305
	.quad	0x3f8313f78fbb8dc0              # double 0.0093154278506010212
	.quad	0x3fefade3d874e7e5              # double 0.98997680927936626
	.quad	0x3fef7b63352a5b65              # double 0.98381195434454282
	.quad	0x3fedf74254b918c0              # double 0.93643299624888953
	.quad	0x3fa7063cbb32f600              # double 0.044969461299370295
	.quad	0x3fb3041b05eaec88              # double 0.074281395859474242
	.quad	0x3f9077403dde4480              # double 0.016079906250130893
	.quad	0x3fed33cd133a963b              # double 0.91257337337146482
	.quad	0x3fd34c5f938a8332              # double 0.30153645904833859
	.quad	0x3fecfe973b9b76a3              # double 0.90607797281309777
	.quad	0x3feb0cceaf4c98f8              # double 0.84531339872481137
	.quad	0x3fef94c066580439              # double 0.9869081496145845
	.quad	0x3fe0feb36eb4421b              # double 0.53109141942883598
	.quad	0x3fe0c51f7b21a928              # double 0.52406286286467196
	.quad	0x3fe89030242e07ad              # double 0.76760108057373133
	.quad	0x3fe0ff0d6dad1ec2              # double 0.53113433285849276
	.quad	0x3fadd0126fedf7a0              # double 0.058228088534618694
	.quad	0x3fcfde2620d6a19c              # double 0.24896694758832616
	.quad	0x3febd039202899ae              # double 0.8691678646180685
	.quad	0x3fb238fa6942da20              # double 0.071181917856713017
	.quad	0x3fb7b6c1351fbc38              # double 0.092632365674703787
	.quad	0x3fe1fac20c000809              # double 0.56186010688566157
	.quad	0x3fb02d279b230448              # double 0.063189006209556031
	.quad	0x3fd50f3bc74f4192              # double 0.32905477966144148
	.quad	0x3fee0939c2bd4065              # double 0.93862617526066272
	.quad	0x3fc5901e7177eb9c              # double 0.16846066036654583
	.quad	0x3fec7db193396609              # double 0.89034346346596849
	.quad	0x3fee99365e64afc4              # double 0.95620268284027831
	.quad	0x3fd895199bab913e              # double 0.384100343724885
	.quad	0x3fe1a90633118692              # double 0.55188283895786783
	.quad	0x3fdba3dd62532d7e              # double 0.43187651254694248
	.quad	0x3fe3e6cc1f60feaa              # double 0.62192350510300298
	.quad	0x3fb7d4c449abb2f0              # double 0.093090312944422271
	.quad	0x3fe2083b33507942              # double 0.56350479147275956
	.quad	0x3feeab0cc572f206              # double 0.95838011326083072
	.quad	0x3fe20f9d420c270d              # double 0.56440604114433912
	.quad	0x3fe2fafde011c2d9              # double 0.593138635287768
	.quad	0x3fe239ef4ec90720              # double 0.56957211864230217
	.quad	0x3fec72ae7610efea              # double 0.88899920520588904
	.quad	0x3fd66e6411b3c7c0              # double 0.35048772553193075
	.quad	0x3fe0303857951ab2              # double 0.50588624101586377
	.quad	0x3fb6a26634308208              # double 0.088415515653203269
	.quad	0x3fe826e273c5c772              # double 0.75474665271597829
	.quad	0x3fedebe4e7050d5b              # double 0.93504567261735916
	.quad	0x3fa5d661baaab560              # double 0.042651227985838203
	.quad	0x3fb8f52fe8f87300              # double 0.097491258981289519
	.quad	0x3fe9cec1cb426966              # double 0.8064888925467073
	.quad	0x3fe65b6f16cbfe49              # double 0.69866136982450044
	.quad	0x3fdeeeb146504dc2              # double 0.48331863276072451
	.quad	0x3feab9aaad4bb848              # double 0.83516439291793976
	.quad	0x3fe6ba218967797f              # double 0.71022106968648291
	.quad	0x3fdbe58f2bd189d6              # double 0.43588618544722857
	.quad	0x3fd615e4aa1e30d4              # double 0.34508625615195609
	.quad	0x3fe505dcb8872eeb              # double 0.65696559944759991
	.quad	0x3fefa480928ee587              # double 0.98883083939215132
	.quad	0x3fed3c256431592c              # double 0.91359204834842477
	.quad	0x3f90111b8f77a3e0              # double 0.015690260535766387
	.quad	0x3fe1185e3f57e95a              # double 0.53422462817915606
	.quad	0x3feac12b086147a4              # double 0.83608008991926796
	.quad	0x3fe8463d2f2dbe9e              # double 0.75857409681880816
	.quad	0x3fc58424c677b3c0              # double 0.16809520426559565
	.quad	0x3fe7b34ce8e92355              # double 0.74063725939150038
	.quad	0x3fed0d8c520d1c7d              # double 0.90790382409694781
	.quad	0x3f9e59e4b0726080              # double 0.029639790791947451
	.quad	0x3fd9d387726f5e4a              # double 0.40353571105285779
	.quad	0x3fc55130c9c23268              # double 0.16654023982518429
	.quad	0x3fea16289ee293ea              # double 0.81520491630783209
	.quad	0x3fe6444b96d7fd44              # double 0.69583682500516675
	.quad	0x3fe8a4e851490bca              # double 0.77013030887644018
	.quad	0x3fb492061a579e28              # double 0.08035314696427831
	.quad	0x3fe212872d619cc7              # double 0.56476172317061291
	.quad	0x3fdd94e6811bd24e              # double 0.46221315964001952
	.quad	0x3fe49ac33acf8810              # double 0.64389192091425862
	.quad	0x3fdb15c0c4d5aa9c              # double 0.42320269796497612
	.quad	0x3fd29dd6eac86b6c              # double 0.29088375976578251
	.quad	0x3fdb6db3c595a4d4              # double 0.42857069297185757
	.quad	0x3fea5f47d2647b41              # double 0.82413092701231261
	.quad	0x3fdfd7896cb959b2              # double 0.4975303231962257
	.quad	0x3fd9d3382620c546              # double 0.40351680491865627
	.quad	0x3fc3e95f515c7e1c              # double 0.15555945847243968
	.quad	0x3fbfdb6d79fa5a28              # double 0.12444195011116987
	.quad	0x3f90906e1e343240              # double 0.016175957292079213
	.quad	0x3fec7f24efa6329f              # double 0.89052054220663368
	.quad	0x3fc40b5c3f08af60              # double 0.1565966899664728
	.quad	0x3fe9aadc31dfea48              # double 0.80210695019861422
	.quad	0x3fde343e98527fa0              # double 0.47193875193806356
	.quad	0x3fe5a2596e5a8a83              # double 0.67606803468181942
	.quad	0x3fc80e58df23919c              # double 0.18793784041839678
	.quad	0x3fd2012476b7cf78              # double 0.28131972878985989
	.quad	0x3fe13c7525b934f3              # double 0.53863007896293735
	.quad	0x3fdb0b11dfb127ae              # double 0.422550648164015
	.quad	0x3fea66383bf68aec              # double 0.82497798644575714
	.quad	0x3fa854c23cd22d70              # double 0.047521657871665179
	.quad	0x3fe63a75d2596cc2              # double 0.69463625987864241
	.quad	0x3fe4a69e9b5a1b59              # double 0.64533930151160768
	.quad	0x3fd0ee1d999fd212              # double 0.26453342440007177
	.quad	0x3fc244238604bc38              # double 0.14270443004486011
	.quad	0x3fe696cf2657002b              # double 0.7059093235802768
	.quad	0x3fe68cb0301987ca              # double 0.70467385668256921
	.quad	0x3feeb67c3d40ae73              # double 0.95977603877459072
	.quad	0x3fe14a4078d412d4              # double 0.54031394576358105
	.quad	0x3fe4bd041b1ee264              # double 0.64807324692726498
	.quad	0x3fbf811af0782ca8              # double 0.12306373949847915
	.quad	0x3fe12ee32c62d4ad              # double 0.53697355908538713
	.quad	0x3fe303f5daaca37d              # double 0.59423344335401362
	.quad	0x3fb74a58877d3eb0              # double 0.090978177145411676
	.quad	0x3fedbcc590e1310c              # double 0.92929342552955196
	.quad	0x3feb9714320412fb              # double 0.86219224709256481
	.quad	0x3fd8385f883a02b8              # double 0.3784407453859262
	.quad	0x3fe971726a451ffc              # double 0.7950985026918711
	.quad	0x3fd42e32bbfca612              # double 0.31531971319290719
	.quad	0x3fecb7c78d02ed3b              # double 0.89743402043624287
	.quad	0x3fb94290cb1c05b8              # double 0.098671960437079487
	.quad	0x3fc7c8bd728455b4              # double 0.18581359950682741
	.quad	0x3fe8c5f85af45578              # double 0.77416627659356063
	.quad	0x3fc85da0c9d24574              # double 0.19035730223235314
	.quad	0x3fdaa85e62ad49c4              # double 0.41652640949646647
	.quad	0x3fe421a840b105c1              # double 0.62910854945237571
	.quad	0x3fabfb6dacbf62f0              # double 0.054652621590951855
	.quad	0x3fb466d0e7561a08              # double 0.079693848112675991
	.quad	0x3fed97e5fb717cad              # double 0.92479228124638768
	.quad	0x3fa521a085a310f0              # double 0.041272178948504989
	.quad	0x3fd38c3b8cbb53a8              # double 0.3054341196378183
	.quad	0x3fd7bcf7e4fdc764              # double 0.37090871202882725
	.quad	0x3fe842f692df2179              # double 0.75817421613559965
	.quad	0x3fee28b1543d4c9d              # double 0.94246736958520538
	.quad	0x3fb788bd15280958              # double 0.091930215516219049
	.quad	0x3fe91ea469da1f96              # double 0.78499050783374247
	.quad	0x3fccc8a7034a4af4              # double 0.22487342510847663
	.quad	0x3fc9c2f92a1d47c0              # double 0.20126261288038272
	.quad	0x3fea906ecc23dceb              # double 0.83013095732795017
	.quad	0x3febfaff13b8eef1              # double 0.87438920833616696
	.quad	0x3fb20ece36967c38              # double 0.070538414313419007
	.quad	0x3fcb1173860518f8              # double 0.2114700703043082
	.quad	0x3fe61217751a52e4              # double 0.68970845100065192
	.quad	0x3fc45ba61fd9c9f4              # double 0.159046903183096
	.quad	0x3fec6160522b7c3d              # double 0.88688674973298698
	.quad	0x3fe274c452e479cd              # double 0.57675377073229017
	.quad	0x3fe60288dd6335d3              # double 0.68780940284494319
	.quad	0x3feea9f6e9b7443f              # double 0.95824762008317765
	.quad	0x3fda52065d2979e6              # double 0.41125640008786346
	.quad	0x3fe0ca306f347039              # double 0.52468129844374467
	.quad	0x3fdc5000b40d0fa0              # double 0.4423829801855792
	.quad	0x3fd9ed74c734cf56              # double 0.40511817411173945
	.quad	0x3fda707487074b58              # double 0.41311371981025991
	.quad	0x3fe4ee3fda916f0e              # double 0.65408318223077955
	.quad	0x3fe88b244392698c              # double 0.76698506543770994
	.quad	0x3fe0b175c1d0adce              # double 0.52166259626886258
	.quad	0x3fe02a29d3e2028d              # double 0.50514689811105173
	.quad	0x3fb34f1abad9e0f8              # double 0.07542578756136098
	.quad	0x3fd2010af61f8a9c              # double 0.28131364856214147
	.quad	0x3fdb3d66682c1012              # double 0.42562256024416556
	.quad	0x3fee9d7a0b862d35              # double 0.9567232346611606
	.quad	0x3fe38c6ffed13edc              # double 0.61089324730889016
	.quad	0x3fd520ddef580a4a              # double 0.33013103841236513
	.quad	0x3fe0f10ea4d1124e              # double 0.52942592802771471
	.quad	0x3fc12eed54995330              # double 0.13424460058981813
	.quad	0x3fe1a3103f69faa4              # double 0.55115520844977484
	.quad	0x3fd55d25e6d43cb0              # double 0.33381030599498285
	.quad	0x3fefe2883cbc2a77              # double 0.99640285360631153
	.quad	0x3fa2757e9a217f10              # double 0.036052662195969032
	.quad	0x3fd8d50e64c587f8              # double 0.38800391999222894
	.quad	0x3fe9d3cfb7ffb1be              # double 0.80710588395373128
	.quad	0x3fcae888d42ca03c              # double 0.21022138938974588
	.quad	0x3fdbeb9ba27d5f02              # double 0.43625536792886532
	.quad	0x3fc1fae0548484f4              # double 0.1404686367687088
	.quad	0x3fe64d1b5b3fdc33              # double 0.69691245863112383
	.quad	0x3fd365ed928bf64c              # double 0.30309619246677211
	.quad	0x3fd152c1e43d4800              # double 0.2706761101627535
	.quad	0x3feb50aa4972a570              # double 0.85359682412415161
	.quad	0x3fd6c037d32652dc              # double 0.35548205967033453
	.quad	0x3fe9c0f6785dff7b              # double 0.80480502614226113
	.quad	0x3fe96d761fd8f5ee              # double 0.79461199016776418
	.quad	0x3fafcf8a2657dd00              # double 0.062130276852196076
	.quad	0x3fe3d3c478cde002              # double 0.61960052103586372
	.quad	0x3fecbe2a0773b222              # double 0.89821340041595854
	.quad	0x3fe5055794995ed0              # double 0.65690211318266201
	.quad	0x3fdbb0a027368ed8              # double 0.43265537099271745
	.quad	0x3fe349dcab9640a1              # double 0.60276635659285571
	.quad	0x3fe96b84004ff964              # double 0.79437446652427157
	.quad	0x3fb46be4a28012b0              # double 0.079771318123742274
	.quad	0x3fea9560ac7cabb1              # double 0.83073457421175168
	.quad	0x3fb63174266325a8              # double 0.086692103740594662
	.quad	0x3fe4369b4d5aed38              # double 0.63166585071977632
	.quad	0x3fe0c5384944c447              # double 0.52407469091679892
	.quad	0x3fb7dbb1d2eb1238              # double 0.093196023935043892
	.quad	0x3fede9a72c5778c9              # double 0.93477209721074772
	.quad	0x3fdce898eb51ba62              # double 0.45169661503215341
	.quad	0x3fd69a3efd100168              # double 0.35316443169724332
	.quad	0x3f9b44f8733528e0              # double 0.026630289108006688
	.quad	0x3fd99e7f039d5d60              # double 0.40029883721350323
	.quad	0x3fd5ca342014779c              # double 0.340466529205395
	.quad	0x3fe0373826b98e99              # double 0.50674064219898007
	.quad	0x3fe3257c5963e421              # double 0.59832589587233909
	.quad	0x3fe011e0a0d0af95              # double 0.5021823063775509
	.quad	0x3fee093db3268573              # double 0.93862805357291135
	.quad	0x3fe8f664d1c726cf              # double 0.78007737133267507
	.quad	0x3fd99f6f1bdb9b70              # double 0.40035608025066605
	.quad	0x3feb728de0f0c62a              # double 0.85773366864868206
	.quad	0x3fe8103f797134c1              # double 0.75198339194471242
	.quad	0x3fec79cbd0f253cf              # double 0.88986769494897
	.quad	0x3fc3aac75bcd5cf8              # double 0.15364925367860116
	.quad	0x3fe5087b86d37c95              # double 0.65728546460367687
	.quad	0x3fe12fdbab15e475              # double 0.53709205069675525
	.quad	0x3fb30df86001cf08              # double 0.074431918563103605
	.quad	0x3fc03daef0315c20              # double 0.12688242653050086
	.quad	0x3feb8e760b056cfe              # double 0.86114027168824214
	.quad	0x3f94e20074359e20              # double 0.020393378346311164
	.quad	0x3fee54ee4256f961              # double 0.94786751706105232
	.quad	0x3fe7cc291194b41d              # double 0.74367192682041472
	.quad	0x3fe1bf4a34f64bb4              # double 0.55460081428679198
	.quad	0x3fef1eb4e29f91f7              # double 0.97249836218230611
	.quad	0x3fefd7a07acd81f8              # double 0.99507163987078595
	.quad	0x3fe52074112c1adf              # double 0.66021159509622496
	.quad	0x3fed01385853ca81              # double 0.9063989377157925
	.quad	0x3fe8a2057f1296e6              # double 0.769778011501981
	.quad	0x3fdfeb1735cffa60              # double 0.49872379546278545
	.quad	0x3fe3eb4ed30d7a86              # double 0.62247410985203611
	.quad	0x3fa82af535cbd1a0              # double 0.047202742401995623
	.quad	0x3f59bfb183fefc00              # double 0.001571582179152875
	.quad	0x3fe7370f07206ce8              # double 0.72547103301931504
	.quad	0x3fed2b60b9e4c0d6              # double 0.91154514605843917
	.quad	0x3fe68378786476c8              # double 0.70354865564487401
	.quad	0x3fe115b80fe59d8c              # double 0.53390124420995866
	.quad	0x3fee5b8a7663dd80              # double 0.94867442248407485
	.quad	0x3fed29cfc1c33a4b              # double 0.91135394901523037
	.quad	0x3fd124e741eeb9c2              # double 0.26787740172121854
	.quad	0x3fec690dea2b1184              # double 0.88782401786788556
	.quad	0x3fe6e86227b9bfcf              # double 0.71586711653616841
	.quad	0x3fdbf07918275958              # double 0.4365523086429639
	.quad	0x3fa37942ac958ff0              # double 0.038034518783007232
	.quad	0x3fd5e0aad41c35fc              # double 0.34183760370146365
	.quad	0x3fe532aa9b46e8f9              # double 0.66243486716783118
	.quad	0x3fb35ff608d6d520              # double 0.075682999761586434
	.quad	0x3fe6ee03f2bc12d2              # double 0.71655461701501566
	.quad	0x3fe49bd631c8d50f              # double 0.64402303432021479
	.quad	0x3fc01a9aaf1124dc              # double 0.12581189678375082
	.quad	0x3fee1a15026bf5a7              # double 0.94068384621612189
	.quad	0x3fd444e383c4a666              # double 0.31670463436112184
	.quad	0x3fd8df6f55a22c68              # double 0.38863738405843273
	.quad	0x3feb71d4ed7bc09b              # double 0.85764547713735639
	.quad	0x3fce9811ceaf0ed4              # double 0.23901579467757605
	.quad	0x3fea5de98153dcab              # double 0.82396388301176182
	.quad	0x3fc9aa255226d994              # double 0.20050493727985652
	.quad	0x3fd8ad3c3094a770              # double 0.38557343239027997
	.quad	0x3fa0aad92c6e5fb0              # double 0.032553469346736974
	.quad	0x3fd2ab7d81d26002              # double 0.29171693494708972
	.quad	0x3fe8ae349ac0d21d              # double 0.77126531815753518
	.quad	0x3fd0dbcccaaa1f3a              # double 0.26341552535494694
	.quad	0x3f88d2d119cae400              # double 0.012120851134897137
	.quad	0x3fb0524bc3df5ce8              # double 0.063755736656606055
	.quad	0x3fe453305b700fbf              # double 0.63515489443715711
	.quad	0x3fe09a881a50976b              # double 0.51886372699366967
	.quad	0x3fe9764ece3709e4              # double 0.79569187427869936
	.quad	0x3fe1a6a4cc642841              # double 0.5515922538772956
	.quad	0x3fdf2c1a33e81ada              # double 0.48706679409990061
	.quad	0x3fda547a1b844caa              # double 0.41140606581866257
	.quad	0x3fe0642e1da16eef              # double 0.51222902095056877
	.quad	0x3fc5c20ed6ccf940              # double 0.16998467911066406
	.quad	0x3fea9d18b5eb8afa              # double 0.83167682200686888
	.quad	0x3fe3a94148112cdc              # double 0.61441101146320021
	.quad	0x3fd90d8806dbb232              # double 0.39145088834519293
	.quad	0x3fdc6a0058ab6100              # double 0.4439698091423594
	.quad	0x3fdd233b4075ffe4              # double 0.45527535719884171
	.quad	0x3feb0a5166ed0176              # double 0.84500951864906315
	.quad	0x3fcb65142ddc02f0              # double 0.21402218093137249
	.quad	0x3fca7632bda930e0              # double 0.20673212300096733
	.quad	0x3fcf3bd1e3cde990              # double 0.24401305793055572
	.quad	0x3fc432ce2950ba5c              # double 0.15780045525885356
	.quad	0x3fcf0de347255ad4              # double 0.24261132215425241
	.quad	0x3fe7655f29355218              # double 0.73112447784893941
	.quad	0x3fe2ee3a56ed88f9              # double 0.59158055284595357
	.quad	0x3fe8babe9008c5f9              # double 0.77279594546979447
	.quad	0x3fe81a0b3e430429              # double 0.75317918930534689
	.quad	0x3fcd63abd215c4c8              # double 0.22960422285135551
	.quad	0x3fa86795617391c0              # double 0.047665279527595583
	.quad	0x3fe56f936a50b7b0              # double 0.669870097777439
	.quad	0x3fef563205182263              # double 0.97927189822173621
	.quad	0x3fe27604f7a73ed2              # double 0.57690666551385505
	.quad	0x3fb2897c1e647820              # double 0.072410352153810198
	.quad	0x3fecc4f6eb683b43              # double 0.89904352167091195
	.quad	0x3fed87254a88b03f              # double 0.92274727399263401
	.quad	0x3fe32bdbacd2e770              # double 0.5991037726846411
	.quad	0x3fe67a1ad51e91cf              # double 0.70240537285695293
	.quad	0x3fc6a73b64adb9a8              # double 0.17697851577709156
	.quad	0x3fb8de4227a01970              # double 0.097141394304434802
	.quad	0x3fd442295ed60bd8              # double 0.31653818379726095
	.quad	0x3fe8bcb67fced6cd              # double 0.77303624117367919
	.quad	0x3fc2e9ccaf9cfe38              # double 0.14775999617448732
	.quad	0x3fdaa2f50ddcfd9e              # double 0.41619612077553281
	.quad	0x3fed544a83ba099f              # double 0.91653943755982314
	.quad	0x3fc83261a4859a58              # double 0.18903751881880981
	.quad	0x3fee7c80cddc3a7b              # double 0.95269813735087838
	.quad	0x3fec039a62898d96              # double 0.87543982739991821
	.quad	0x3feb6394c809a23f              # double 0.85590590543603884
	.quad	0x3fdc318e96edb09e              # double 0.44052471865757947
	.quad	0x3fdc721b7046e632              # double 0.44446454968019389
	.quad	0x3fe51cddbb28c2c8              # double 0.65977369837318012
	.quad	0x3fe2a6312b3724e1              # double 0.5827871173907192
	.quad	0x3fd5fd70eb7e37fa              # double 0.34359381673209521
	.quad	0x3fe321ff5c9db5c9              # double 0.59790008629868752
	.quad	0x3fde0e06ca4beb36              # double 0.46960611110232564
	.quad	0x3fe4f297636468be              # double 0.65461320316833116
	.quad	0x3fdc1d3e448f892e              # double 0.43928486533526978
	.quad	0x3fe2bd1aeed5ff06              # double 0.58558413169518597
	.quad	0x3fe988d4dfc33e35              # double 0.79795306876798711
	.quad	0x3fddf5cb045ef98e              # double 0.46812701632361431
	.quad	0x3fef1005d6daa64d              # double 0.97070590938273826
	.quad	0x3fed920297e4c51e              # double 0.92407350222325468
	.quad	0x3fe62efa575a7e4b              # double 0.69323460637310441
	.quad	0x3fe5506245278d16              # double 0.66606248385179145
	.quad	0x3fcaee0675c7b6d4              # double 0.21038895369513588
	.quad	0x3fa1bb03b573c3f0              # double 0.034629932308128164
	.quad	0x3fd37dbb9d6dd57e              # double 0.3045491254227598
	.quad	0x3fd2a4c3cb9a97fe              # double 0.29130644686881613
	.quad	0x3fd18769421df5a4              # double 0.27388984162083774
	.quad	0x3fed8b7462102155              # double 0.92327326920443886
	.quad	0x3fb3ae23eb1f3650              # double 0.076875920203030689
	.quad	0x3fde07a0553635ee              # double 0.46921547242604233
	.quad	0x3f90d596ffb14fa0              # double 0.016439780575026597
	.quad	0x3fdda80bb0c1c8f4              # double 0.46338169347212887
	.quad	0x3fc23adf976580e4              # double 0.14242167370230796
	.quad	0x3fe32bb3d522b539              # double 0.59908477428476836
	.quad	0x3fe4bb24c0f30141              # double 0.6478446739711573
	.quad	0x3feae11c2e79004b              # double 0.83997925831500575
	.quad	0x3fdc7160168ecea0              # double 0.4444198818484697
	.quad	0x3fc2321dc7bc9b50              # double 0.14215442898531672
	.quad	0x3fe2d89680437427              # double 0.58893895198309998
	.quad	0x3f56ff5631ad9800              # double 0.0014036504496401925
	.quad	0x3fe8def736739ec9              # double 0.7772174895771623
	.quad	0x3f909cd8f7456c80              # double 0.016223325817332768
	.quad	0x3fcf01216739de6c              # double 0.24222199955305557
	.quad	0x3fcda3669ab38a8c              # double 0.23154909662033096
	.quad	0x3f94c4f91a80bfc0              # double 0.02028264259587309
	.quad	0x3fec5347f660ad01              # double 0.88516615028984813
	.quad	0x3fe39061a80868c8              # double 0.6113746911899165
	.quad	0x3fef21e869b2d86d              # double 0.97288914341221544
	.quad	0x3fe2163bdfab510d              # double 0.56521409688369462
	.quad	0x3fe4a807d6ecb7e0              # double 0.6455115506885214
	.quad	0x3fef841f7c830e8e              # double 0.98487829512346692
	.quad	0x3fc8a3ebaaf98418              # double 0.19250245903370522
	.quad	0x3fee2d640081316c              # double 0.94304084871832349
	.quad	0x3fcd9926c294d6b4              # double 0.23123631001515366
	.quad	0x3fef447fe93f6534              # double 0.97711177402667326
	.quad	0x3feca4e5bc87c427              # double 0.89512907812434583
	.quad	0x3fe8c73b8eec9c87              # double 0.77432039179701995
	.quad	0x3fc6d0276df1fa68              # double 0.17822735660952849
	.quad	0x3fea1c98357338b7              # double 0.81599054755658684
	.quad	0x3fd70029e14511e4              # double 0.35938498496059723
	.quad	0x3fd3a4d8a6b1d94c              # double 0.30693641928464355
	.quad	0x3fe5c0455a65b5e3              # double 0.6797205701420207
	.quad	0x3fcde02932d49800              # double 0.23340334875064173
	.quad	0x3feb040467e57c6f              # double 0.84424038212081409
	.quad	0x3fd4d79e4f8194c8              # double 0.32566030277514502
	.quad	0x3fe110e4d1f2d953              # double 0.53331223493186497
	.quad	0x3fe296aca7091bb7              # double 0.58089287399422218
	.quad	0x3fe321814f8f1d2e              # double 0.59783998049616627
	.quad	0x3fc52505ad9e3640              # double 0.16519232728426125
	.quad	0x3fc578a776c3b0ec              # double 0.16774457263034692
	.quad	0x3fd5639e1cfffe9c              # double 0.33420517761258295
	.quad	0x3fcc6a84560961cc              # double 0.2220006389714072
	.quad	0x3fec4689a16164e6              # double 0.88361054916017845
	.quad	0x3fe69a88675064b3              # double 0.70636387041590465
	.quad	0x3fc2cd34c3ca5ae0              # double 0.14688739357071423
	.quad	0x3fe493db399b0d46              # double 0.64304887057407067
	.quad	0x3fcddc6de4e311a0              # double 0.23328946758387037
	.quad	0x3fac7b881ff755a0              # double 0.055629972364538149
	.quad	0x3fe966c825721666              # double 0.79379660905460692
	.quad	0x3feb9e178c1171a8              # double 0.86304833752688115
	.quad	0x3fd896c61331994e              # double 0.38420249819173058
	.quad	0x3fed02bf1a3ceb98              # double 0.90658526539424411
	.quad	0x3fee42046405659c              # double 0.94555873427741543
	.quad	0x3fdeb1dd91010806              # double 0.47960604820775676
	.quad	0x3feb1b15f01637c7              # double 0.84705635921431444
	.quad	0x3fe5e8584962574f              # double 0.68461241085854307
	.quad	0x3feeb6922fb177d3              # double 0.95978650393566977
	.quad	0x3fca156629c128f4              # double 0.2037780479316279
	.quad	0x3fd3f276785dcf36              # double 0.31167375330481961
	.quad	0x3fd7613c85b051ce              # double 0.3653098397783453
	.quad	0x3fe7cc6caccf2a20              # double 0.74370416404537209
	.quad	0x3f9e52586a596a60              # double 0.029610997668309103
	.quad	0x3fccce5774c70fe0              # double 0.22504704668074194
	.quad	0x3fc005cd2dc68ad4              # double 0.12517704711088717
	.quad	0x3fe8c4b8a045ec0e              # double 0.77401381781908341
	.quad	0x3fedb10ae0df41da              # double 0.92786163254100562
	.quad	0x3fcb718f00335280              # double 0.21440303334988542
	.quad	0x3feee34e7d41d3e9              # double 0.96524738754544359
	.quad	0x3f87f3c2b9bf8f40              # double 0.011695405286395677
	.quad	0x3fe19c1dbd6250aa              # double 0.55030714978285755
	.quad	0x3f90d16d81b734e0              # double 0.016423903505530357
	.quad	0x3fa265fd36696da0              # double 0.035934365169590921
	.quad	0x3fe204ce53178e0c              # double 0.56308666447552147
	.quad	0x3fc41490404e5504              # double 0.15687754764500295
	.quad	0x3fed9468ead3f5a1              # double 0.9243664347156263
	.quad	0x3fc1aa1e3c715948              # double 0.13800409270579395
	.quad	0x3fee88944463dd51              # double 0.9541722617858942
	.quad	0x3fd9e3f5b44eecfe              # double 0.40453856094582352
	.quad	0x3fd7c0abe2f5873c              # double 0.37113473094915483
	.quad	0x3fe50cd78500365d              # double 0.65781761147236362
	.quad	0x3fe3127aacce3161              # double 0.59600576163351715
	.quad	0x3fe4d5d00110d3d8              # double 0.65110016067648768
	.quad	0x3fe980b56ac4156a              # double 0.7969615063927169
	.quad	0x3fd8cd5875db72fa              # double 0.38753329762930344
	.quad	0x3fdc584b9dbb739e              # double 0.44288912204302189
	.quad	0x3febf173459c70bb              # double 0.87322391124646204
	.quad	0x3fe63d8f2604e446              # double 0.69501454759223047
	.quad	0x3fe8624cffd8e854              # double 0.76199960680174649
	.quad	0x3fb4a2931ba37520              # double 0.080605692145998109
	.quad	0x3fe85a63cae1308f              # double 0.76103391289645284
	.quad	0x3fd1bda4a6cbf32e              # double 0.27719990051973553
	.quad	0x3fe4f90e0b4be4e6              # double 0.65540220457401399
	.quad	0x3fe757ca6d8e1744              # double 0.72946664235562553
	.quad	0x3fdaeda209295c9c              # double 0.42075396437344081
	.quad	0x3fd6c265c27096a2              # double 0.35561508167516298
	.quad	0x3fead591b80c3355              # double 0.83857046076591735
	.quad	0x3febf7ebb3c8317c              # double 0.8740137587897574
	.quad	0x3fd9a7ccff6e2aa6              # double 0.40086674637192699
	.quad	0x3fd5fc53546d7d34              # double 0.34352572674648063
	.quad	0x3fe188d588c85b79              # double 0.54795338359222889
	.quad	0x3fbb99246e250978              # double 0.10780551613883016
	.quad	0x3fb11605b3a1ebf8              # double 0.066742283206551067
	.quad	0x3fb5b8062ea093a0              # double 0.084839235671621882
	.quad	0x3fbc72811c2d1090              # double 0.11112219751254515
	.quad	0x3f8d1e4b61fb4a00              # double 0.014217938354168957
	.quad	0x3fd16c40cf2c7182              # double 0.27223224860951956
	.quad	0x3fecaa93dd68c8f1              # double 0.89582246059424453
	.quad	0x3fe7c23f20322f03              # double 0.74246174133574561
	.quad	0x3fef0f91c1f9703a              # double 0.97065055738085637
	.quad	0x3fd4defb2c06c082              # double 0.32610968875361135
	.quad	0x3fa2057f0ecef400              # double 0.035198183591525378
	.quad	0x3fd5734efb2ae960              # double 0.33516287353599772
	.quad	0x3fee2c8640acbfcc              # double 0.94293511039540467
	.quad	0x3fe53dbb81db8bf4              # double 0.66378569948972066
	.quad	0x3fe5069634eef8bd              # double 0.65705404604502571
	.quad	0x3fdceab80277d268              # double 0.45182609787960937
	.quad	0x3fcdb6fcb413c9a0              # double 0.23214682381474194
	.quad	0x3fe274fbbf78bb78              # double 0.57678019902037558
	.quad	0x3fd28580805eb590              # double 0.28939831291321472
	.quad	0x3fe5015ef3a2b95f              # double 0.65641734681211605
	.quad	0x3fee47011668fd74              # double 0.94616751076675464
	.quad	0x3fba7114f7d9d338              # double 0.10328799296423774
	.quad	0x3fee373bf9a1178d              # double 0.94424246555057467
	.quad	0x3f97800f80711980              # double 0.022949449743714379
	.quad	0x3fedbeb815c5a25a              # double 0.92953113796563547
	.quad	0x3fded70bc2babfca              # double 0.48187536255408914
	.quad	0x3fb86ea67209dd98              # double 0.095438387719573803
	.quad	0x3fb36cf69746a8e0              # double 0.075881397183056531
	.quad	0x3fce12eead3859e8              # double 0.23495276887906802
	.quad	0x3fcf5757e2456cc4              # double 0.24485300587079994
	.quad	0x3fb6dd896c2c4db0              # double 0.089317883405150011
	.quad	0x3feab737bafbe457              # double 0.8348654415159541
	.quad	0x3fe3a8bfac71fe20              # double 0.61434920960158834
	.quad	0x3fd655c1ec249fec              # double 0.34898422299238407
	.quad	0x3fed63fde22a17d8              # double 0.91845602200259702
	.quad	0x3feeaf3581c0c4b4              # double 0.95888781874068351
	.quad	0x3fda1d7d420d057c              # double 0.40804988336829928
	.quad	0x3fef8f934a22fdb0              # double 0.98627628784008969
	.quad	0x3fef1c8db82f6038              # double 0.9722355458607188
	.quad	0x3fe7fe1bf35f224f              # double 0.74976918729323383
	.quad	0x3fe6cb48aa16e0cf              # double 0.71231492252902651
	.quad	0x3fe1ac91bc13159e              # double 0.5523155854540851
	.quad	0x3fd72fdc2f95988e              # double 0.36229614874754013
	.quad	0x3fb7d507a73733d0              # double 0.093094328235749701
	.quad	0x3faff14c82c09620              # double 0.062387839280102719
	.quad	0x3fedfecd6b4624b1              # double 0.93735381080582247
	.quad	0x3fe300d31ff75279              # double 0.59385067218188603
	.quad	0x3fe455dea590a2fb              # double 0.6354821428004408
	.quad	0x3fd43603a2e66eb2              # double 0.31579676540580259
	.quad	0x3fe70f350adbef10              # double 0.72060634728356554
	.quad	0x3fe60600e804a6a0              # double 0.68823285404251422
	.quad	0x3fe2c0115ad93738              # double 0.5859457754502051
	.quad	0x3fee60ba80ec5213              # double 0.94930768184946357
	.quad	0x3fd3d03b0b5ddf10              # double 0.30958438978221725
	.quad	0x3fd8b33a6c50a13a              # double 0.38593922212250542
	.quad	0x3fdbeafdb5bdbe3e              # double 0.4362177157226802
	.quad	0x3fde4aad03849884              # double 0.47330785125303287
	.quad	0x3fe36a90d1e46e2c              # double 0.60675850863066705
	.quad	0x3faa3843f1521e90              # double 0.051210520942786109
	.quad	0x3feff6d48f386236              # double 0.99888065312104035
	.quad	0x3fd876b6f6e71dd2              # double 0.38224577056504672
	.quad	0x3feebc69876a086f              # double 0.96049953888019767
	.quad	0x3fcea8da0eeb5418              # double 0.23952794769744012
	.quad	0x3fba1295c1769ad0              # double 0.10184608433938114
	.quad	0x3fe69ea82d8f7f1b              # double 0.70686730288068433
	.quad	0x3fe4a609705b84c5              # double 0.64526817269156622
	.quad	0x3fe0aedbeaf81165              # double 0.52134509937654328
	.quad	0x3fc1698d6b0f4a58              # double 0.13603370406652249
	.quad	0x3f85e71197197bc0              # double 0.010694634841625361
	.quad	0x3fd6eded2391f5a4              # double 0.35827187036178487
	.quad	0x3fe80e0563ed187f              # double 0.75171155468775896
	.quad	0x3fe683862d764046              # double 0.70355519179612069
	.quad	0x3fef77151b4bcee6              # double 0.98328643161081852
	.quad	0x3feda04de4a5f0e0              # double 0.92581839235165475
	.quad	0x3fda95dee8d9dca4              # double 0.41539738406522475
	.quad	0x3fdd968811b1b6a4              # double 0.46231271484325931
	.quad	0x3fe8f04381051888              # double 0.77932906340790087
	.quad	0x3f974166c81a93a0              # double 0.022710424388282413
	.quad	0x3f877be8e39d0cc0              # double 0.011466807790958433
	.quad	0x3fef0d186618da27              # double 0.97034854832492534
	.quad	0x3fefba5404f445ab              # double 0.9914951416741834
	.quad	0x3fe9d26d58a6d294              # double 0.80693690600181122
	.quad	0x3fee3349280a6564              # double 0.94376046963149606
	.quad	0x3fcbe2fead1d95d0              # double 0.21786483242901378
	.quad	0x3fd0d6ec39ce92b0              # double 0.26311784405906291
	.quad	0x3fbdd8e5b4dd2db0              # double 0.11659084001183007
	.quad	0x3fe18a5e7d06bb83              # double 0.5481407586974999
	.quad	0x3feed30a07873f31              # double 0.96326161833164836
	.quad	0x3feb49dda0a413b1              # double 0.85276681304150348
	.quad	0x3fb1b3361c4441b8              # double 0.069140798474342513
	.quad	0x3fc8536f42766930              # double 0.19004622216454825
	.quad	0x3fc0429fcac83ff0              # double 0.12703320886112079
	.quad	0x3fd0b3c0b2d82c7c              # double 0.26097123589779136
	.quad	0x3fd71034ca4c555e              # double 0.36036414867097288
	.quad	0x3fd2da1886172dd6              # double 0.29456151098994832
	.quad	0x3fcc8d466598b408              # double 0.22306137047544916
	.quad	0x3fca988ecdb7e6c0              # double 0.20778069538919475
	.quad	0x3fc5f7bd85bb4f68              # double 0.17162293462626654
	.quad	0x3f81b2f8f3ccd640              # double 0.0086421441461467241
	.quad	0x3fb2991c33c38cd8              # double 0.072648775708830882
	.quad	0x3fea6bc8dffa9b89              # double 0.82565730806241888
	.quad	0x3f89139867d25c80              # double 0.012244406383884021
	.quad	0x3fb755c45a5962d0              # double 0.091152450616742486
	.quad	0x3fa5e725fccb7290              # double 0.042779147251825411
	.quad	0x3fc927d67deccc8c              # double 0.19652825497323467
	.quad	0x3fc757f5b70e1900              # double 0.18237182081447401
	.quad	0x3fd5584eecd58bc8              # double 0.33351491096817343
	.quad	0x3fd63aa9854fd47a              # double 0.34733045595869039
	.quad	0x3fcf8b1475d6ac68              # double 0.24643188241802538
	.quad	0x3fe49fb03c09771e              # double 0.64449321485492184
	.quad	0x3fe50aeebed4e0bb              # double 0.65758454582012094
	.quad	0x3fa21ae380d50cd0              # double 0.035361394383039646
	.quad	0x3fe3537a70cd1130              # double 0.6039402201791173
	.quad	0x3fe5097585074ba7              # double 0.65740467054489649
	.quad	0x3fd14337c44c872e              # double 0.26972765130823262
	.quad	0x3fdb8bd74bc2c042              # double 0.43041021727094997
	.quad	0x3febf4d707c304e0              # double 0.87363769069648
	.quad	0x3fc5ef1867cc4c44              # double 0.17135911052955255
	.quad	0x3fe243e41e6e14bd              # double 0.57078748648986954
	.quad	0x3fef06e78b7d78be              # double 0.96959283107914707
	.quad	0x3fb1b79af3f3b048              # double 0.069207844313212807
	.quad	0x3fa1119393037b60              # double 0.03333722276305795
	.quad	0x3fe3a5aae8040c56              # double 0.61397309604252359
	.quad	0x3fe35533f4f47301              # double 0.60415075152158704
	.quad	0x3fb047e8269cc8a8              # double 0.063597211291183897
	.quad	0x3fca48f2057c427c              # double 0.20535111682740481
	.quad	0x3fed4ca9c79d038f              # double 0.91560830103854751
	.quad	0x3fc84815e3eddd40              # double 0.18969987515786535
	.quad	0x3f9cb01e22718140              # double 0.028015585758454309
	.quad	0x3feb78e29b5cd680              # double 0.85850649208323659
	.quad	0x3fbf9a8abefa2780              # double 0.12345187342194031
	.quad	0x3fd5ecdc3553fbea              # double 0.34258179862803095
	.quad	0x3fe649f2a2c807f4              # double 0.6965268306087169
	.quad	0x3fe988b8e5ef5820              # double 0.79793972882430708
	.quad	0x3fd5019d3689fb18              # double 0.32822351766655933
	.quad	0x3fd3e625cae6e0d2              # double 0.31092209639201684
	.quad	0x3fed14b0e686518a              # double 0.90877575897552387
	.quad	0x3fe0bd48f03c8eee              # double 0.5231060688133462
	.quad	0x3fdaf30c6746e822              # double 0.42108450017588173
	.quad	0x3fdf374622d618c8              # double 0.48774865533813427
	.quad	0x3fd5aa434e915174              # double 0.33851702377912507
	.quad	0x3fbe74b7d629fdd8              # double 0.11896847704519276
	.quad	0x3fe4c0e6e335c384              # double 0.64854759575801824
	.quad	0x3fefb5576b179d51              # double 0.99088641087011286
	.quad	0x3fe7456ff39adff5              # double 0.72722623423669452
	.quad	0x3fdbcad7be0f39ce              # double 0.43425553856368715
	.quad	0x3fe5194c941d28be              # double 0.65933827332016626
	.quad	0x3fe6e3804a26d196              # double 0.71527113421193422
	.quad	0x3fe47a8adeddde67              # double 0.63995879677436285
	.quad	0x3fd7b15899eda20e              # double 0.37019934684806877
	.quad	0x3fedbb7a1ff1e0d5              # double 0.9291353820726963
	.quad	0x3fee960086dd6b5b              # double 0.95581079808048786
	.quad	0x3fead35702cc55ea              # double 0.83829832598229115
	.quad	0x3fee3efa24a65c6b              # double 0.94518763693021179
	.quad	0x3fee35e656a1846f              # double 0.94407956047156272
	.quad	0x3fde0886f428163a              # double 0.46927045672814283
	.quad	0x3fe1a8f21fea576f              # double 0.55187326653934388
	.quad	0x3fdeb78e887f11c8              # double 0.47995341615412856
	.quad	0x3fde2b173840ec1c              # double 0.47138004773631947
	.quad	0x3fc09dd2d56976d4              # double 0.12981639309412307
	.quad	0x3feec9ff6fae8464              # double 0.96215793431123275
	.quad	0x3fe0b57757fdca92              # double 0.52215163408102883
	.quad	0x3fd03c9f2839c544              # double 0.25370005539214824
	.quad	0x3fea5542ca66b22b              # double 0.82290782481647307
	.quad	0x3fbd208f51dc62e0              # double 0.11377807377392513
	.quad	0x3fa1793e9804a470              # double 0.034128147179509294
	.quad	0x3fd90fc7698588fa              # double 0.39158807091565928
	.quad	0x3fbafa19a86acd80              # double 0.10537872659442904
	.quad	0x3fd3df861f6e58d0              # double 0.31051781720578919
	.quad	0x3fdc8323d8c102dc              # double 0.44550415198686522
	.quad	0x3fe8ec7fa0010815              # double 0.77886945009982134
	.quad	0x3f83b217f3b87a80              # double 0.0096170302631979343
	.quad	0x3fe3c3ddff59c973              # double 0.6176595675772617
	.quad	0x3fcbd3ec7870dcb4              # double 0.21740489846135846
	.quad	0x3fdb3d373f69cc50              # double 0.42561131661131402
	.quad	0x3fe9e508509f0b78              # double 0.80920806642858079
	.quad	0x3fea6e4f582e246c              # double 0.8259655687590004
	.quad	0x3fd03e7c17c8f2a2              # double 0.25381376574277159
	.quad	0x3fd3a31180fafc20              # double 0.30682790370696189
	.quad	0x3fe1dedf8c96444c              # double 0.55845620592493495
	.quad	0x3fc944e81a58adb4              # double 0.19741536413617455
	.quad	0x3fe6f9224a2ef7ce              # double 0.71791185845335703
	.quad	0x3fda583ba4e47354              # double 0.41163531401416731
	.quad	0x3fd6ed28425df656              # double 0.35822493058353666
	.quad	0x3fe607f66f0a34c1              # double 0.68847200095628847
	.quad	0x3fcc1afcb74959fc              # double 0.21957358312165798
	.quad	0x3fec232b4ebd2f08              # double 0.87929311159811707
	.quad	0x3fe2ad613516b16c              # double 0.58366451615215231
	.quad	0x3fea7869b2da6d16              # double 0.82719883854170706
	.quad	0x3fe8f648414bdb5e              # double 0.78006375077425694
	.quad	0x3fe663cac405feaf              # double 0.69968164716552461
	.quad	0x3fce0a1a21cf3554              # double 0.23468329096651053
	.quad	0x3fd2bd9f36451fee              # double 0.29282360362822046
	.quad	0x3fc5dd2b920c6ddc              # double 0.1708120787742321
	.quad	0x3fe850796eeb5b4f              # double 0.75982352889955418
	.quad	0x3fdeb1b228da34ac              # double 0.47959569921006096
	.quad	0x3fd4b6d77e7eb37c              # double 0.32365977623958719
	.quad	0x3fe4afcac62eb6d6              # double 0.64645899493708714
	.quad	0x3fca027e4ba00dd8              # double 0.20320109074246662
	.quad	0x3fdb9551f321fe26              # double 0.43098877662120783
	.quad	0x3fdcd9bfc80b0750              # double 0.45079035315949501
	.quad	0x3fe0fefd2459b8e0              # double 0.53112656688406545
	.quad	0x3fecd46a91651271              # double 0.90092972180771203
	.quad	0x3fe0fe26e925e280              # double 0.53102441345897944
	.quad	0x3fdd10b6f8659c6e              # double 0.45414518601905385
	.quad	0x3fe608b385c02313              # double 0.68856216548110394
	.quad	0x3fe302bf1a27fc30              # double 0.59408526524192062
	.quad	0x3fd7e1eee4656bc2              # double 0.37316486648859037
	.quad	0x3feba3a0436665f3              # double 0.86372388042508275
	.quad	0x3fdc5526494d4de4              # double 0.44269711645503507
	.quad	0x3fe093ae95e86940              # double 0.51802758482816813
	.quad	0x3fe57da81829779a              # double 0.67158894271027525
	.quad	0x3fe744681fc40e57              # double 0.72710043148294801
	.quad	0x3fd09cff0cc0ad36              # double 0.2595822929894952
	.quad	0x3fea4faca02a0ac5              # double 0.82222586900783112
	.quad	0x3feb50ddb4eef857              # double 0.85362134302682591
	.quad	0x3fe4368e189c9fec              # double 0.63165955359454307
	.quad	0x3fcbcf305e20daec              # double 0.21726040454969764
	.quad	0x3fddd04ade6950fe              # double 0.46583816261160382
	.quad	0x3fb2ccfca8ba9d58              # double 0.073440352624506544
	.quad	0x3fe79694f71aeb6a              # double 0.73713157904363169
	.quad	0x3fe4857691d9042a              # double 0.64129189000971576
	.quad	0x3fd4dae1d5ad0514              # double 0.32585950724394874
	.quad	0x3fd10097c47ca95a              # double 0.26566118419818496
	.quad	0x3fea7bbc674286ad              # double 0.82760448615973348
	.quad	0x3fe5a4552bc860dd              # double 0.67631014396013323
	.quad	0x3fe2266703f62fff              # double 0.56718779348148007
	.quad	0x3fe3224f2ec846ec              # double 0.59793814789938216
	.quad	0x3fe5de603643b527              # double 0.68339548681766338
	.quad	0x3fe831e644a9cef4              # double 0.75609124575427566
	.quad	0x3fc9cab4250075c4              # double 0.20149852568367355
	.quad	0x3fe56960739c591a              # double 0.66911337452146147
	.quad	0x3fec25743bfb9587              # double 0.87957202639943055
	.quad	0x3fc18f74ef4c93c0              # double 0.13719045338180358
	.quad	0x3fb57810bd391030              # double 0.083863302418706764
	.quad	0x3fc951917b76a19c              # double 0.19780176666723726
	.quad	0x3f957d4e42287540              # double 0.020985815799680951
	.quad	0x3fee6bfd40bb6e65              # double 0.95068228381155662
	.quad	0x3fab5d5ac1dd21d0              # double 0.053446613469137483
	.quad	0x3fb0ebaea0db3368              # double 0.066096224090143374
	.quad	0x3fe9709d9af14e85              # double 0.79499702703692832
	.quad	0x3fca30609a23a2bc              # double 0.20460135961845605
	.quad	0x3fe58c93da81396a              # double 0.67341034580912873
	.quad	0x3fdd5ef7cea20cba              # double 0.45892138651852188
	.quad	0x3fbf529e944c3ff0              # double 0.12235442276528352
	.quad	0x3fe0f4ce0c4f608f              # double 0.52988340763387665
	.quad	0x3fec7f9eed9cb65b              # double 0.8905787125456287
	.quad	0x3fd4782ab3ac1140              # double 0.31983439966304061
	.quad	0x3fd94a21278c1396              # double 0.39514950620678613
	.quad	0x3fe62e03ac49e723              # double 0.69311698579915448
	.quad	0x3fd06a71d8f4ffb0              # double 0.25649686991891496
	.quad	0x3fd0779c87fc421a              # double 0.25730050353834744
	.quad	0x3fba0802b380ae78              # double 0.10168473131550992
	.quad	0x3fd2f8bffdaa05f6              # double 0.29643249294176088
	.quad	0x3fe574e3cbd23929              # double 0.67051877793145309
	.quad	0x3fd6eeb64da9d8d2              # double 0.35831983169863435
	.quad	0x3fef694f934ec895              # double 0.98160532733006056
	.quad	0x3fd2f5c8934264c4              # double 0.29625143414302735
	.quad	0x3fe1a3de4b2c9355              # double 0.55125345880933685
	.quad	0x3fe55a05c7418fac              # double 0.66723908345419636
	.quad	0x3fe7cadc457a0760              # double 0.74351323671019642
	.quad	0x3fe4d183f8612325              # double 0.65057562362298837
	.quad	0x3fdf5a75993cbc6c              # double 0.48989620174956516
	.quad	0x3fe50674c592a253              # double 0.6570381029933493
	.quad	0x3fe4cb63a361969c              # double 0.6498277846373699
	.quad	0x3fef4e0e3981dd80              # double 0.97827826721088229
	.quad	0x3fcdc7528e746100              # double 0.23264533954421296
	.quad	0x3fda722d52085b62              # double 0.41321881304741315
	.quad	0x3fb8df7074a0bd80              # double 0.097159412835699399
	.quad	0x3fee66c876487a1c              # double 0.95004675962610773
	.quad	0x3fd9cd02c6d57644              # double 0.40313786904684812
	.quad	0x3fbd6a2aa0f52140              # double 0.11490122251155288
	.quad	0x3fc3d383c98fc9d4              # double 0.15489241926077446
	.quad	0x3fd9376c1396647e              # double 0.39400770104254679
	.quad	0x3fecbdc4319a02bd              # double 0.89816484153569542
	.quad	0x3fcad39d52bbc98c              # double 0.20958296336864313
	.quad	0x3fece78d4cd4b085              # double 0.90326561933535798
	.quad	0x3feb7ba1df879152              # double 0.85884183557622351
	.quad	0x3fe490080f75f547              # double 0.64258196849520111
	.quad	0x3fdc7543cda7b844              # double 0.44465727885733863
	.quad	0x3fe7c98b8cfd5e49              # double 0.74335267579130815
	.quad	0x3fa3cb62f498cbd0              # double 0.038661091192259911
	.quad	0x3fe83ccdb1d96f12              # double 0.75742230163766266
	.quad	0x3fdbfea794762602              # double 0.43741788385577263
	.quad	0x3fcaa17064d58e44              # double 0.20805172847313902
	.quad	0x3fec210bc9ff0153              # double 0.87903394176832206
	.quad	0x3fd7b197289ff898              # double 0.37021426169656868
	.quad	0x3fe8dcea216dfc9e              # double 0.77696711091256865
	.quad	0x3fea09bd26c7188f              # double 0.81368882726452962
	.quad	0x3fd309d4dc341f9a              # double 0.29747506622560993
	.quad	0x3fef1cab7eefd563              # double 0.97224974434236022
	.quad	0x3fe136e5d932f87a              # double 0.53795139714908591
	.quad	0x3fde8ad1d6dda90e              # double 0.47722288115495892
	.quad	0x3fe02f3e2172f4cf              # double 0.50576693089501557
	.quad	0x3fdf5d10b7ca86e0              # double 0.49005525539733519
	.quad	0x3fdaeae49fba3c6a              # double 0.42058673475634711
	.quad	0x3fd1a9dfc43d5982              # double 0.27599329151180296
	.quad	0x3fe5576a01e81cbe              # double 0.66692066547775375
	.quad	0x3fe116e3cf569946              # double 0.53404417510754665
	.quad	0x3fedffaf1a5d8bd3              # double 0.93746142529959753
	.quad	0x3facf220238adc50              # double 0.056534771288561658
	.quad	0x3fe16dd857113194              # double 0.54465882306390023
	.quad	0x3fd513b312f53782              # double 0.32932736255030914
	.quad	0x3fe9f127eccda723              # double 0.81068798304224676
	.quad	0x3fd99d37d8b03b3a              # double 0.40022083435990263
	.quad	0x3fe23711f98ad44f              # double 0.56922243822794794
	.quad	0x3fd01eb93414f0cc              # double 0.25187521062958917
	.quad	0x3fcf4d043bd9e594              # double 0.24453785822315111
	.quad	0x3fb72e7d8633b160              # double 0.090553136123792566
	.quad	0x3fea73cb00ad7388              # double 0.8266348851426395
	.quad	0x3fe128628362ed69              # double 0.5361797872678099
	.quad	0x3fe43e0752829130              # double 0.63257185092201063
	.quad	0x3fe385e8d575dc4a              # double 0.61009637538416794
	.quad	0x3fe39a9243a4d5f4              # double 0.61261857234666062
	.quad	0x3fd200143f07a31c              # double 0.28125482707268801
	.quad	0x3fbb5f8850771930              # double 0.1069264599273978
	.quad	0x3fd8df0382857374              # double 0.38861167665691387
	.quad	0x3fbd64d062076110              # double 0.11481954949647766
	.quad	0x3fe17bef9ba94596              # double 0.54637890245992327
	.quad	0x3fe482f61b0f558b              # double 0.64098649296890764
	.quad	0x3fe0710cf82c3afa              # double 0.5138001296162138
	.quad	0x3fe3baab08a91c42              # double 0.6165366334106539
	.quad	0x3fe6e929b7bd7b74              # double 0.71596227537871338
	.quad	0x3fe29ab0307a8ec4              # double 0.58138284176353539
	.quad	0x3fee3180e0f5ee9a              # double 0.94354289949065451
	.quad	0x3fc7f45d922e0b28              # double 0.18714494359672895
	.quad	0x3fea0698b61299ef              # double 0.81330524025980633
	.quad	0x3fb518523161a280              # double 0.082402360015871423
	.quad	0x3fc2b561aabbb698              # double 0.14616032444557869
	.quad	0x3fd13b7a9144c57c              # double 0.26925529657736269
	.quad	0x3fe333e9a80d658f              # double 0.60008700201722032
	.quad	0x3fe1c7c0f1e67f29              # double 0.55563399549644032
	.quad	0x3fe5937accf58ecc              # double 0.67425289183707937
	.quad	0x3fd3c3a3849ff70e              # double 0.30881584121367289
	.quad	0x3fc432d8166aaa4c              # double 0.1578016385513642
	.quad	0x3fdcc8e2cc9e10da              # double 0.4497611044137223
	.quad	0x3fd084f1d8f6c926              # double 0.25811430156604087
	.quad	0x3fde2b38285a95ea              # double 0.47138790074163117
	.quad	0x3fdee4826b1f86b8              # double 0.4826971098064905
	.quad	0x3fdf698d1480ce0a              # double 0.49081732752094409
	.quad	0x3fedde1cedec9be1              # double 0.9333634039838864
	.quad	0x3fd3a5e4fc88c962              # double 0.3070003954082009
	.quad	0x3fda5df112247054              # double 0.41198374530518334
	.quad	0x3fe4a8a26ae512b9              # double 0.64558525922674115
	.quad	0x3fe2eb2270a0535c              # double 0.59120294568365805
	.quad	0x3fecbb318e13ffce              # double 0.89785077809937675
	.quad	0x3fd11d1530faa554              # double 0.26740007193673887
	.quad	0x3feb8b62d6c7c9f8              # double 0.8607649035387217
	.quad	0x3fe8992b930d9f33              # double 0.76869753571825183
	.quad	0x3fbf70412fd87d00              # double 0.1228066198168456
	.quad	0x3fe6aa810fb71ab1              # double 0.7083134943903443
	.quad	0x3fc2648e18130ab4              # double 0.14369369674212396
	.quad	0x3fe5096a868e74a7              # double 0.65739942818222097
	.quad	0x3fc3a87cff1a5e54              # double 0.15357935386849653
	.quad	0x3fd9371f4adaccd0              # double 0.39398939428356261
	.quad	0x3fd68a4c182e2c5e              # double 0.35219099389423103
	.quad	0x3fd071a1a4816f18              # double 0.25693551125526559
	.quad	0x3fe79b65b51a2fbc              # double 0.73771939631978212
	.quad	0x3fecb7fa52c9e9cb              # double 0.89745823068306529
	.quad	0x3fd5624d19a9c9b6              # double 0.33412482744384009
	.quad	0x3fd95ac3a2870ae6              # double 0.39616480705096391
	.quad	0x3fe2ec14217cbbaf              # double 0.59131819286800702
	.quad	0x3fe66590c78e037a              # double 0.69989813781295074
	.quad	0x3fd3a52fe4075e1e              # double 0.30695721882281812
	.quad	0x3f95aa400ab42240              # double 0.021157265332506947
	.quad	0x3fa9bd75c183c730              # double 0.050273589966208454
	.quad	0x3fec456758f57a34              # double 0.88347213148865089
	.quad	0x3fe666acc1572110              # double 0.70003354799067274
	.quad	0x3fe4be608e01922c              # double 0.6482394002492291
	.quad	0x3fec83d2929a81d9              # double 0.89109161981110241
	.quad	0x3feae1883bf5475e              # double 0.84003078184671742
	.quad	0x3fd05eb963ad89a8              # double 0.25578150495689522
	.quad	0x3fec8e3683da83c3              # double 0.89235997917796117
	.quad	0x3feceeeeb0a97eee              # double 0.904166550677443
	.quad	0x3fee522dd8eaab51              # double 0.94753162733591456
	.quad	0x3fef65aed2623ef4              # double 0.98116246309834176
	.quad	0x3fdbc0604e388b66              # double 0.43361671103246235
	.quad	0x3fd418b0e9529a00              # double 0.31400702271858449
	.quad	0x3fe00af342c21758              # double 0.50133669890122246
	.quad	0x3fd83165025a39e8              # double 0.3780148051236254
	.quad	0x3fe041ce530ae95e              # double 0.5080329534460295
	.quad	0x3fd2083b97b137be              # double 0.28175248922059015
	.quad	0x3fe40652376fa639              # double 0.62577162577981149
	.quad	0x3fd9bfa84d383c6c              # double 0.40232284108146277
	.quad	0x3fe7765579d9ec09              # double 0.73319505499910165
	.quad	0x3fe7381f2c1e288d              # double 0.72560080162772211
	.quad	0x3fe3f929b1fd6fe4              # double 0.62416538966817514
	.quad	0x3fc35bb34759d6b4              # double 0.1512359712975716
	.quad	0x3fed0eab22bce096              # double 0.90804058823325096
	.quad	0x3fe954ee0189fd26              # double 0.7916173963602986
	.quad	0x3fa35d71fdd53190              # double 0.037822305903861708
	.quad	0x3fc000029e5834f0              # double 0.12500031215350971
	.quad	0x3fd4d1dc3f7abfee              # double 0.32530885886353544
	.quad	0x3f9c5c2e9dae0500              # double 0.027695396780022641
	.quad	0x3fe417f1a8cb3279              # double 0.62792284934546594
	.quad	0x3fbad0fc48e78838              # double 0.10475136546986696
	.quad	0x3fe42d983e336449              # double 0.63056575916847024
	.quad	0x3febbe8a4f5c85e2              # double 0.8670093107249921
	.quad	0x3fe4437477d19837              # double 0.63323424722762567
	.quad	0x3fe70088c919eddc              # double 0.71881522443384993
	.quad	0x3fc2654c77178094              # double 0.14371639075307441
	.quad	0x3fe1bdcb132e0e2f              # double 0.55441812273097024
	.quad	0x3fe267305d7339d7              # double 0.57509630443547166
	.quad	0x3fd14cc80822be80              # double 0.27031136316779936
	.quad	0x3f973ceeb3fdadc0              # double 0.0226933762891528
	.quad	0x3fd4ea0b0b9ba5e6              # double 0.32678485997766271
	.quad	0x3fbc2f3da10712d8              # double 0.11009583646143584
	.quad	0x3f9129bb00271ac0              # double 0.016760751613925207
	.quad	0x3fe14a3f3a2bc5bf              # double 0.54031335221787191
	.quad	0x3fe665c1ac996cb5              # double 0.69992145262531003
	.quad	0x3fe3ba17dcce176a              # double 0.61646645666108424
	.quad	0x3fddb7a86482b7ec              # double 0.46433458152284746
	.quad	0x3fe0e6ca4bd96b8c              # double 0.52817263426128269
	.quad	0x3fdca059de408a8e              # double 0.44728705124195123
	.quad	0x3fe773593eb4b70d              # double 0.73283064124345432
	.quad	0x3fe1a08e1d76649b              # double 0.55084901575459655
	.quad	0x3fc51a1b22189114              # double 0.16485919155923823
	.quad	0x3feb46e71322a9fd              # double 0.85240510690101667
	.quad	0x3fe81f4c0066eca4              # double 0.75382042006039684
	.quad	0x3fe9fea1edc0e2cb              # double 0.81233307300780078
	.quad	0x3fda9870f57f7f48              # double 0.41555427526872224
	.quad	0x3fe35b1a7beffac2              # double 0.60487102705504747
	.quad	0x3fd608743ff90554              # double 0.34426599738443042
	.quad	0x3fe7a189d905e180              # double 0.73846905123996009
	.quad	0x3feb8788c47f882d              # double 0.86029470804738184
	.quad	0x3fd0c76e372e5070              # double 0.26217227352868289
	.quad	0x3fe73de11157f7fd              # double 0.7263036097281198
	.quad	0x3fe618d5b07411df              # double 0.69053158248476254
	.quad	0x3fe601e499bff1d3              # double 0.68773107556585911
	.quad	0x3fda89ccf0db83d8              # double 0.4146606781123956
	.quad	0x3fe2ba896649c65a              # double 0.58527059534226145
	.quad	0x3fece3648aad61bc              # double 0.90275790295986935
	.quad	0x3fe4432325db79b2              # double 0.63319547075280114
	.quad	0x3fb31f7d0221ff48              # double 0.074699223538115977
	.quad	0x3fe1dc9798fbdf23              # double 0.55817775611555864
	.quad	0x3f7e618890b6fa80              # double 0.0074172339040489144
	.quad	0x3fdefcf229aff1a4              # double 0.48418859549544835
	.quad	0x3fea7ae8e37e6a6b              # double 0.82750362808594724
	.quad	0x3fee6de183fc38c2              # double 0.95091319826476473
	.quad	0x3fe95b85b17ebfc1              # double 0.79242214838995306
	.quad	0x3f988ed86dd014a0              # double 0.023982412054483704
	.quad	0x3fbadaa740c31f08              # double 0.1048988850699254
	.quad	0x3fe72dd21fb9ab3b              # double 0.7243433589586411
	.quad	0x3fe880e9e84bf41a              # double 0.76573653574417055
	.quad	0x3fe7803c826fcc94              # double 0.73440385318680734
	.quad	0x3fd3607e6d2b2d88              # double 0.30276451741220756
	.quad	0x3fe25cf34f351426              # double 0.57384648771460856
	.quad	0x3fd067a1f7a849ec              # double 0.25632523713389221
	.quad	0x3fdfc3aedee7aad4              # double 0.49631854789792595
	.quad	0x3fd5ba31da3fb454              # double 0.33948942483295252
	.quad	0x3fe77fb04792f8a3              # double 0.73433698634450584
	.quad	0x3fe8bb283917f6ad              # double 0.7728463282689596
	.quad	0x3fc9f88929b2a918              # double 0.20289721046476283
	.quad	0x3fd93d31654262e4              # double 0.39435992134671793
	.quad	0x3fed47ae8d34a0a6              # double 0.91500022486890908
	.quad	0x3febecdc27fcf7f3              # double 0.87266357240855397
	.quad	0x3f8c30c6a349f940              # double 0.013764907701667384
	.quad	0x3fe03a5328423c51              # double 0.50711973059686433
	.quad	0x3fe83fa2deeeac62              # double 0.75776809255092936
	.quad	0x3fea9b4d35952a5c              # double 0.83145771470419616
	.quad	0x3fd616910e12aefa              # double 0.34512735723795596
	.quad	0x3fede96ded2aeb3a              # double 0.93474479982192027
	.quad	0x3fc1ae766b0b5e30              # double 0.13813667513635286
	.quad	0x3fee0b61654907bf              # double 0.93888921530037084
	.quad	0x3fb2d3d5a0e0c8c8              # double 0.073544837738867774
	.quad	0x3fef3b990a21abbf              # double 0.97602512339414448
	.quad	0x3fb2d4e4c36d6a88              # double 0.073560998641747699
	.quad	0x3fdb346d219b2140              # double 0.42507484704812626
	.quad	0x3fd498ce9f5d9156              # double 0.32182660639798166
	.quad	0x3fe7cb2bb4d292bb              # double 0.74355111424355103
	.quad	0x3fe4a4ed5e637229              # double 0.6451327174687026
	.quad	0x3fedc56919184084              # double 0.93034796620669668
	.quad	0x3fa498c3fbf3a9c0              # double 0.040228008752666522
	.quad	0x3feeace2dc73a099              # double 0.95860426957098632
	.quad	0x3fe919b5c2b2468b              # double 0.78438842798841912
	.quad	0x3fdd5b5a89fc5e22              # double 0.45870078540017023
	.quad	0x3fc620af8a2b4b6c              # double 0.17287248846568148
	.quad	0x3fe18ebf20616fa5              # double 0.54867512058580259
	.quad	0x3feb376ae0d0a3e9              # double 0.85051483067684075
	.quad	0x3fddc6cae503b33a              # double 0.465258334776809
	.quad	0x3fd1aa22825dadec              # double 0.27600920420692776
	.quad	0x3fdfecc078d4c6e8              # double 0.49882518577497459
	.quad	0x3fe71b3f7f548dd6              # double 0.72207617634961241
	.quad	0x3fcef5cf406e42c4              # double 0.24187651296644763
	.quad	0x3fe6bf5527526e69              # double 0.71085603408887466
	.quad	0x3fe89ee7954f05ea              # double 0.7693975368676409
	.quad	0x3febb2d057d3c863              # double 0.86557786134495662
	.quad	0x3fe8cf52fd90f261              # double 0.77530812763832213
	.quad	0x3f987498d25baec0              # double 0.02388228210376897
	.quad	0x3fe750743eb8db49              # double 0.72857105493935947
	.quad	0x3fd88bfd5eba294a              # double 0.38354429484083552
	.quad	0x3fe108c40c7d71d8              # double 0.53232004584747994
	.quad	0x3fd1dd9bba821a78              # double 0.27915089811032301
	.quad	0x3fcb744db20fe10c              # double 0.21448680109438845
	.quad	0x3fe5e260d142cbad              # double 0.68388405677102571
	.quad	0x3fd0d5a6f752ee22              # double 0.26304029610375512
	.quad	0x3fecb143993e7425              # double 0.89663867884121784
	.quad	0x3f8a63e514233c00              # double 0.012885846783687427
	.quad	0x3fe5d96db82d72ab              # double 0.68279157612012875
	.quad	0x3fd1f5358f798228              # double 0.28059138308711562
	.quad	0x3fef3a292d6963b0              # double 0.97584971303432688
	.quad	0x3fcd253ea0a93954              # double 0.22769911618019967
	.quad	0x3fd1c2638879e6ec              # double 0.27748955085517824
	.quad	0x3fe3a90370b81a7e              # double 0.61438152327976048
	.quad	0x3f913253f358cf60              # double 0.016793548324315011
	.quad	0x3fa05ad625a07250              # double 0.03194302758513301
	.quad	0x3fe278793c0c6ed1              # double 0.57720624664531262
	.quad	0x3fee789f1c8c0562              # double 0.95222430778100553
	.quad	0x3fc2bb2e11377698              # double 0.1463372787538233
	.quad	0x3fb7483e451fa540              # double 0.090946094394571908
	.quad	0x3fe55585fc703cb6              # double 0.66668986610775138
	.quad	0x3fe6c7c0c3b582e4              # double 0.71188390945834756
	.quad	0x3fd388ecfb290404              # double 0.30523228194584839
	.quad	0x3fe4144397426e2c              # double 0.62747363608236162
	.quad	0x3fc89b506f7e415c              # double 0.19223981327059902
	.quad	0x3fcd8169c885e2bc              # double 0.23051187792932193
	.quad	0x3fcc45b7d8764e54              # double 0.22087762898864816
	.quad	0x3fee0a9789fc102f              # double 0.9387929625522754
	.quad	0x3fee187e9d0478cd              # double 0.94049006144975922
	.quad	0x3fe96da9535b8714              # double 0.794636404807735
	.quad	0x3fd6c53df5caf47a              # double 0.35578869822695192
	.quad	0x3fe70204104a8705              # double 0.71899607831821355
	.quad	0x3fe1bab309a21a08              # double 0.55404044991956969
	.quad	0x3fdb557b7f6c26c0              # double 0.42709243243789885
	.quad	0x3feef34a6bcbce2a              # double 0.96719857267311693
	.quad	0x3f75904e36c17a00              # double 0.0052645735960070716
	.quad	0x3fcd0810595eba24              # double 0.226808589589795
	.quad	0x3fe64b85505ba45f              # double 0.6967188424579368
	.quad	0x3fde0bc78b08486c              # double 0.46946896149996209
	.quad	0x3fc259f7d1ea88c0              # double 0.14337060689746828
	.quad	0x3fe46c3e44759dc5              # double 0.63821328516944986
	.quad	0x3feac349bb2be819              # double 0.83633886868415452
	.quad	0x3fe7d17c104fd58e              # double 0.74432185350330982
	.quad	0x3fefc12e72672e8f              # double 0.99233171791407126
	.quad	0x3fdc3bc66e8689b0              # double 0.44114838403234113
	.quad	0x3fdb018c49a86d06              # double 0.42196948235660192
	.quad	0x3f864691d7bee440              # double 0.01087678851750884
	.quad	0x3fcd60fb0e6bd06c              # double 0.22952211574704806
	.quad	0x3fd79e01afe8deac              # double 0.3690189569347051
	.quad	0x3fd3b3e89844da26              # double 0.30785574789061554
	.quad	0x3fea67f8886f045b              # double 0.82519175193022976
	.quad	0x3febade09065e906              # double 0.86497524454833363
	.quad	0x3fd8bf84b3ac1004              # double 0.38668935342889221
	.quad	0x3fd68c09409cfe16              # double 0.35229712781799216
	.quad	0x3fe332fbeadb8bd0              # double 0.59997363920808233
	.quad	0x3feb754df9124559              # double 0.85806940695526202
	.quad	0x3feb9ef7c62e53f3              # double 0.86315525729389575
	.quad	0x3fc57299aee64c88              # double 0.16755982437152661
	.quad	0x3fe118983893032e              # double 0.53425227212583137
	.quad	0x3fb2ee9226b35508              # double 0.073952803085678309
	.quad	0x3fe11bf033ae9da4              # double 0.5346604356208684
	.quad	0x3fc71b41804c2730              # double 0.18051928295636221
	.quad	0x3fcd466ff119271c              # double 0.228712074970013
	.quad	0x3fec8671c6dd06c0              # double 0.89141167488579498
	.quad	0x3fb06b0665b8ce58              # double 0.064133071741531267
	.quad	0x3fcfa209ec92d90c              # double 0.24713253070303443
	.quad	0x3fe38ecab56e8fd6              # double 0.61118064342417244
	.quad	0x3fd841596e117964              # double 0.37898860691884395
	.quad	0x3fe94373435ef5f2              # double 0.78948367269884856
	.quad	0x3fe015c05f78b2c8              # double 0.50265520712636036
	.quad	0x3fa1cb9c072d0410              # double 0.03475654208751433
	.quad	0x3fdd92b9b2b90f5a              # double 0.46208040669829631
	.quad	0x3fef8dddd2302432              # double 0.98606768658021893
	.quad	0x3fee6a360825d946              # double 0.95046521750808988
	.quad	0x3fe41031dbcc763f              # double 0.62697689942769574
	.quad	0x3fde516361cc7c3e              # double 0.47371754217778406
	.quad	0x3fe547605c6d80f0              # double 0.66496294071478523
	.quad	0x3fd8e79218f0eae8              # double 0.38913395343449375
	.quad	0x3fb611774156d2a0              # double 0.086204007579747444
	.quad	0x3fae8d48325efc90              # double 0.059671646260079148
	.quad	0x3feac0a5624b1aed              # double 0.83601636121679024
	.quad	0x3fe3e932b34a2f24              # double 0.62221655862365255
	.quad	0x3fe124ede8035578              # double 0.5357579738144258
	.quad	0x3fefda4f480763eb              # double 0.99539913242472033
	.quad	0x3fecdebfb9e3a697              # double 0.90219103151794655
	.quad	0x3fd1ad7ebe123cd6              # double 0.27621429978985412
	.quad	0x3fe207b77d7bfa88              # double 0.56344198712015814
	.quad	0x3fe5f40c82ef3f4e              # double 0.68604112218052093
	.quad	0x3fdaf27b5fb2fe8c              # double 0.42104992242455164
	.quad	0x3fe6442f7268e932              # double 0.69582340570130996
	.quad	0x3fac243469623060              # double 0.054963720192149124
	.quad	0x3fde9874f7d6c84a              # double 0.47805523112322545
	.quad	0x3feb29ce07b733df              # double 0.8488531256385804
	.quad	0x3fae16b8de59b8a0              # double 0.058767106192008756
	.quad	0x3fc162d6793a12f8              # double 0.1358287898948658
	.quad	0x3fd001c43d80aafa              # double 0.25010782247652197
	.quad	0x3fa99fbad837c260              # double 0.05004676713349876
	.quad	0x3faabed519ab4420              # double 0.052237185843871936
	.quad	0x3fe8d24f630a377f              # double 0.77567262023670469
	.quad	0x3feb617b79ce27f0              # double 0.8556496981630044
	.quad	0x3fc5567dd7108ca8              # double 0.16670201302722387
	.quad	0x3fc46e099b3f009c              # double 0.15960807876945615
	.quad	0x3fee91f71e2b52a0              # double 0.95531803028514516
	.quad	0x3fd93a23b30b380a              # double 0.39417355046032354
	.quad	0x3fedd5b9a9ae4cae              # double 0.93233950749199379
	.quad	0x3fb63d2a5c650560              # double 0.086870811040190343
	.quad	0x3fd8886fed7debcc              # double 0.38332746689382868
	.quad	0x3fec731091e92bfb              # double 0.88904598711212601
	.quad	0x3fa62545fe1b2ad0              # double 0.043253123539746974
	.quad	0x3fe6242beb461c88              # double 0.69191547347954074
	.quad	0x3fe157e89aebc0c7              # double 0.54198103197088521
	.quad	0x3fdbe95aca7077ba              # double 0.43611783761468426
	.quad	0x3fcb0077fade20a4              # double 0.21095180272482594
	.quad	0x3fe8a3ab5f257fdb              # double 0.76997917731568621
	.quad	0x3fec02a3e3654173              # double 0.87532228863896788
	.quad	0x3fe31d05a8c5c7a3              # double 0.59729273761171375
	.quad	0x3fe5d9471f46b91f              # double 0.68277317150731054
	.quad	0x3fe5a0c74f0aae0c              # double 0.6758762878211555
	.quad	0x3feba01ea4668460              # double 0.86329586133446056
	.quad	0x3fe7fa41b77a2533              # double 0.74929891429306961
	.quad	0x3fec1e61b746ca07              # double 0.87870870395846701
	.quad	0x3fe74e62dd221ef4              # double 0.72831862630934419
	.quad	0x3fe83e040df01590              # double 0.75757029268486242
	.quad	0x3fe63334bf170e3f              # double 0.69375073740270199
	.quad	0x3fdad60e998bd16a              # double 0.41931500429861635
	.quad	0x3fc446d7cd5b404c              # double 0.15841195609255221
	.quad	0x3f606e6a49034400              # double 0.0020057750590258827
	.quad	0x3fa1132ced2e3cc0              # double 0.033349422409736373
	.quad	0x3fe635c1ee4d1ba9              # double 0.69406220000461361
	.quad	0x3fe50a0038c15471              # double 0.65747080883978815
	.quad	0x3faaf5b287a87370              # double 0.05265577226621232
	.quad	0x3fecd6213add1b4b              # double 0.9011388921434017
	.quad	0x3fe28567e4c13bc9              # double 0.57878489187884796
	.quad	0x3feb86baa7210b39              # double 0.86019642488859127
	.quad	0x3fe4f161970c84b0              # double 0.65446547986734593
	.quad	0x3febc5b67d8c7e16              # double 0.86788486977815427
	.quad	0x3febfc6652452089              # double 0.87456050938000474
	.quad	0x3fd99a6b9c658dae              # double 0.40005007050623476
	.quad	0x3fb15535bd0b4280              # double 0.067706450131717943
	.quad	0x3fdb0e93400bc99e              # double 0.42276459936615562
	.quad	0x3fdae77216fc0076              # double 0.42037632221764143
	.quad	0x3fe3dd57dae255f5              # double 0.62076943159871567
	.quad	0x3fe8c4ef1b59693f              # double 0.77403979627278108
	.quad	0x3fdb33e6ea1fabe0              # double 0.42504284728664565
	.quad	0x3fe3c6198af48f68              # double 0.61793210162839518
	.quad	0x3f94c458344318e0              # double 0.020280245008302056
	.quad	0x3fd47e025ff58d0a              # double 0.32019099589361188
	.quad	0x3fc1cd5d0379152c              # double 0.13907969159678524
	.quad	0x3f9b0169a5814820              # double 0.026372576452850294
	.quad	0x3fcb2266b91999b4              # double 0.21198734319768919
	.quad	0x3f896c3b4cdf4500              # double 0.01241346672387289
	.quad	0x3fe8c4f929358f3e              # double 0.77404459046054064
	.quad	0x3feead61baa9836a              # double 0.95866476495221531
	.quad	0x3fee92caa70b2980              # double 0.95541889787391199
	.quad	0x3fed3f6febc2122e              # double 0.91399379774572309
	.quad	0x3fec74017bd35c8e              # double 0.88916086373036918
	.quad	0x3fdeb568a4149870              # double 0.47982231162530464
	.quad	0x3fe868e2e8f1dee0              # double 0.7628035115912688
	.quad	0x3fe5bd18a661694d              # double 0.67933304306215236
	.quad	0x3feb8dd1b0a919d8              # double 0.86106190208448208
	.quad	0x3fd837c1c2823b26              # double 0.37840312952987387
	.quad	0x3feb3194d0c5599f              # double 0.84980240607801594
	.quad	0x3fe183377b779e9c              # double 0.54726766695690143
	.quad	0x3fe7f9461876f7a7              # double 0.7491789319826595
	.quad	0x3fe14e0b7a5a0e3f              # double 0.54077695748168952
	.quad	0x3fb1ac2f685888b0              # double 0.069033587431962529
	.quad	0x3fed659abf4692f6              # double 0.9186528907635807
	.quad	0x3f94940e1e05a860              # double 0.020096035559085457
	.quad	0x3fe6bd81c997f520              # double 0.71063317655321967
	.quad	0x3fea558cc3f9aae6              # double 0.82294309879702321
	.quad	0x3fe3035f64e8f4b2              # double 0.59416169842702105
	.quad	0x3feaa8d481a8ea1c              # double 0.83310914348777798
	.quad	0x3fc26bf678e1cabc              # double 0.1439197626346721
	.quad	0x3fb47c895ddc5be0              # double 0.080025277533749328
	.quad	0x3febe4942739c07f              # double 0.87165267621277553
	.quad	0x3fd3cfb842077eb0              # double 0.3095532078568608
	.quad	0x3fd2ff907d046f20              # double 0.29684841355059355
	.quad	0x3fe6d4ae281f5a11              # double 0.71346195064944784
	.quad	0x3fc41594c23d8b40              # double 0.15690860256571604
	.quad	0x3fbd2882161584c8              # double 0.11389935530816608
	.quad	0x3fe1419fdd9a16c1              # double 0.53926080018637645
	.quad	0x3fd69180b576c462              # double 0.35263078423583327
	.quad	0x3fb8780e77f991f8              # double 0.095581917086356216
	.quad	0x3feafb42f3e6adbe              # double 0.84317157399112097
	.quad	0x3fe7c12bc89bc1f0              # double 0.74233044797261805
	.quad	0x3fbb5780977d06d0              # double 0.10680392931410698
	.quad	0x3fcf4c3afad3f5a4              # double 0.24451386687716792
	.quad	0x3fd7cb11dd1cf778              # double 0.37176939576226387
	.quad	0x3fca0365a6bf8194              # double 0.20322867052074101
	.quad	0x3fe0fd00340937ed              # double 0.53088388598712088
	.quad	0x3fece7a36153361f              # double 0.90327614792630928
	.quad	0x3feccdc7bc6926eb              # double 0.90011965559935214
	.quad	0x3fe4a12af878cea8              # double 0.64467381028812998
	.quad	0x3fcbd8345299d624              # double 0.21753553422210914
	.quad	0x3fc51bbd4232c080              # double 0.16490903599106232
	.quad	0x3fcd2aa522c3ff78              # double 0.2278639240030278
	.quad	0x3fe5f9bba7833462              # double 0.68673498837746316
	.quad	0x3fc7342cb34adcc8              # double 0.18127974276078462
	.quad	0x3fea559683862c97              # double 0.82294774711899066
	.quad	0x3f9a743de6d8ba40              # double 0.025834052290685472
	.quad	0x3febb36a5533a24b              # double 0.8656512893767937
	.quad	0x3fe730e3a4ed7b41              # double 0.72471792423662162
	.quad	0x3fc6cd4a6bd90c70              # double 0.17813997522361857
	.quad	0x3fe790620a715ffb              # double 0.73637487449286654
	.quad	0x3f8991847a1a7bc0              # double 0.012484583832074736
	.quad	0x3fd45e046ef5a452              # double 0.31823836170093955
	.quad	0x3fe03a98c83c3288              # double 0.50715293034007036
	.quad	0x3feb59045ca1e80b              # double 0.85461633770251078
	.quad	0x3fe8a1618aa77bd5              # double 0.76969983178048074
	.quad	0x3feda880c04be43c              # double 0.92681920583630228
	.quad	0x3fe7ab809450c8c7              # double 0.73968533485301513
	.quad	0x3fee62fe079d73fc              # double 0.94958402144732145
	.quad	0x3fe0c69e4e4e7948              # double 0.52424540800328945
	.quad	0x3fda54aa659a0d98              # double 0.41141757890746922
	.quad	0x3fe0e9e71d680d19              # double 0.5285525869698261
	.quad	0x3fbce9ed47f7fea0              # double 0.11294444090889977
	.quad	0x3fe484a5fd05644c              # double 0.64119243066955667
	.quad	0x3fe2fda31dea2897              # double 0.59346156923972415
	.quad	0x3fec24820db8224c              # double 0.87945654563470432
	.quad	0x3fe927816db04397              # double 0.78607245849171903
	.quad	0x3fe5dfb4064849b2              # double 0.68355752207781095
	.quad	0x3fe0f2ea4dd6ba10              # double 0.52965274050603917
	.quad	0x3faa84199ee8bf30              # double 0.051789093635646544
	.quad	0x3fe4c74ff3cb25c5              # double 0.64933011642386218
	.quad	0x3fe7169920aec6fe              # double 0.72150856383652218
	.quad	0x3fc7c43574cc68d4              # double 0.18567531779337421
	.quad	0x3fea13710bfbd9f5              # double 0.81487324085793367
	.quad	0x3fdaa569b85bb320              # double 0.41634600642901098
	.quad	0x3fd1d209597bd310              # double 0.27844461191789183
	.quad	0x3fc21035f3f56550              # double 0.14111971294441128
	.quad	0x3fe73014f9c3ca90              # double 0.72461937696637513
	.quad	0x3fe5d638e9de9f5a              # double 0.68240018537197078
	.quad	0x3fd9f74020f0fb9e              # double 0.4057159730618255
	.quad	0x3fd6adad5b90fd28              # double 0.35435041372325538
	.quad	0x3fe01841e28c7361              # double 0.50296110389500026
	.quad	0x3fe66612ea9a102c              # double 0.69996019192376968
	.quad	0x3fdc6e6cc5570990              # double 0.44423980018123022
	.quad	0x3fedb5b4aab9f481              # double 0.92843087525365331
	.quad	0x3fe0ddbcbfee0b20              # double 0.52706754194545979
	.quad	0x3feefc355073c604              # double 0.96828714097335977
	.quad	0x3fdf02801afebf4c              # double 0.48452761303177705
	.quad	0x3fd8cf146f7d6d2a              # double 0.38763914954843648
	.quad	0x3febaf2400f24f4c              # double 0.8651294725882308
	.quad	0x3fc5e3d816a733a8              # double 0.17101574998960456
	.quad	0x3fe9a21d52550d84              # double 0.80103937225833066
	.quad	0x3fe217dafb11b56c              # double 0.56541203534076834
	.quad	0x3fe09be43bd310bb              # double 0.51902972874133668
	.quad	0x3fdc6c1fb7d66584              # double 0.44409935906295339
	.quad	0x3fec9cbb1d70712c              # double 0.8941321921334171
	.quad	0x3feb4ccc4a8755a1              # double 0.85312475735070248
	.quad	0x3fd3ea59df970b74              # double 0.31117865405047174
	.quad	0x3fdccfba631977f8              # double 0.45017871549305211
	.quad	0x3fef8afda9420967              # double 0.98571665819353604
	.quad	0x3feae65525ecfba7              # double 0.84061677367559617
	.quad	0x3fe9e5eb552c32db              # double 0.80931631694110295
	.quad	0x3fe53e955e1fe62c              # double 0.66388958343231286
	.quad	0x3fbc4f122c9af180              # double 0.11058152760501194
	.quad	0x3fd0c0a4c54940da              # double 0.2617580343840139
	.quad	0x3fe86e708469db50              # double 0.76348138677608723
	.quad	0x3fd59cbc6747b472              # double 0.33769140325495706
	.quad	0x3fc5747784a38134              # double 0.16761678673265978
	.quad	0x3fe6f2d83a0a6c41              # double 0.71714412056042687
	.quad	0x3fe56567c285d8d7              # double 0.66862857811681919
	.quad	0x3fe1ca0dba5567d1              # double 0.55591474908146143
	.quad	0x3fbe4756514594a0              # double 0.11827601894545348
	.quad	0x3fd443183af80518              # double 0.3165951324336489
	.quad	0x3fe94c267ea749cc              # double 0.79054569947248287
	.quad	0x3fe16ad44e6e2577              # double 0.54429068869028085
	.quad	0x3fed50df04cb88e4              # double 0.91612196861776995
	.quad	0x3fedf629bd7a5fd0              # double 0.93629920012880952
	.quad	0x3fe2ba5f8ad0e94b              # double 0.58525063622008966
	.quad	0x3fd63b130856beda              # double 0.34735561193791187
	.quad	0x3fea14039f8fb85a              # double 0.81494313396775486
	.quad	0x3fede2adedf1161e              # double 0.9339208266544039
	.quad	0x3fd1bd67fc01191a              # double 0.27718543634218096
	.quad	0x3fe89a563ed094aa              # double 0.76883995312222919
	.quad	0x3feab9ef8f3af1e9              # double 0.83519723868044793
	.quad	0x3fed923086cb8e04              # double 0.92409540488409946
	.quad	0x3fe645c1e158837e              # double 0.69601530087321328
	.quad	0x3fd090b70a3d3248              # double 0.25883270263583258
	.quad	0x3fdc9ffa9e01ef4a              # double 0.44726434164453066
	.quad	0x3fdab2b9b0f0092a              # double 0.41715853003565206
	.quad	0x3fd243c5018d6ec4              # double 0.28538632537468467
	.quad	0x3fc82b9e601d98a8              # double 0.18883113568444299
	.quad	0x3fea01b328a0f274              # double 0.81270749984066847
	.quad	0x3febb5df6dc76217              # double 0.86595126572780401
	.quad	0x3fdadbfe64f38040              # double 0.41967735155595065
	.quad	0x3fe539e10c55bb6f              # double 0.66331531914862107
	.quad	0x3fed1d6d66aa7add              # double 0.90984220554295414
	.quad	0x3fe3ad98468ca7c1              # double 0.61494077471910924
	.quad	0x3fc6ab9b2a18ce0c              # double 0.17711200290214923
	.quad	0x3fe5b9b5db6913e0              # double 0.67891972402196288
	.quad	0x3fef3b190072a5bf              # double 0.97596407020062503
	.quad	0x3fe1f026944ba186              # double 0.5605652710337814
	.quad	0x3fe44444f9db5095              # double 0.63333367157112497
	.quad	0x3fe58e431143ccbf              # double 0.67361596462287554
	.quad	0x3fe5ab18612c93cf              # double 0.67713564853021946
	.quad	0x3fcd3391c15ef0a4              # double 0.22813627187668317
	.quad	0x3fe73a24a192461b              # double 0.72584754521284667
	.quad	0x3fc75820fd85b50c              # double 0.18237697962778332
	.quad	0x3fd155d3d7010f1c              # double 0.27086349483964667
	.quad	0x3fe3e7f2f59127ee              # double 0.62206409418399544
	.quad	0x3fe50b30fbf7bad7              # double 0.65761613094749805
	.quad	0x3fb5800a58421120              # double 0.083984991595631886
	.quad	0x3fa0cfb3dae25790              # double 0.032834644765144749
	.quad	0x3fd1a6c4d30a68ac              # double 0.27580376252593441
	.quad	0x3fea59a7fec08239              # double 0.82344436413047284
	.quad	0x3fcdd29cab531524              # double 0.23298986783462639
	.quad	0x3fce74b09741bc30              # double 0.23793609033188678
	.quad	0x3fe111c664b9b34f              # double 0.53341979668548756
	.quad	0x3fe83d0acd765bdd              # double 0.75745144013751153
	.quad	0x3fd0cd356c19c17c              # double 0.26252494389247949
	.quad	0x3fe909742371b800              # double 0.78240401194284459
	.quad	0x3fe9fe99ac4be859              # double 0.81232913638747128
	.quad	0x3fce6c4d2ebe372c              # double 0.23768009931921463
	.quad	0x3fecb07e786231e9              # double 0.89654468071381388
	.quad	0x3fec8d7ad1550778              # double 0.89227047810730564
	.quad	0x3fcf371e2085768c              # double 0.24386955821949063
	.quad	0x3fe6458382b42ff4              # double 0.69598556068512929
	.quad	0x3fef0fced474f5f8              # double 0.97067967887386341
	.quad	0x3fed4946fcf287e6              # double 0.91519498256479603
	.quad	0x3fd812bbe7696140              # double 0.37614343260567651
	.quad	0x3fd80a92adda3d72              # double 0.37564532258780681
	.quad	0x3fc71cc959d484b4              # double 0.18056599508512294
	.quad	0x3fa51cd21fb77670              # double 0.041235510226880545
	.quad	0x3fdc2de610b400a4              # double 0.44030143386044984
	.quad	0x3fe015dab8ba1270              # double 0.50266777114354788
	.quad	0x3fef216cff80664a              # double 0.9728302946343288
	.quad	0x3fe7f90b3366a1bd              # double 0.7491508487628874
	.quad	0x3fdc0997f6e8933a              # double 0.43808554756315099
	.quad	0x3feaffc480dc9da7              # double 0.84372162979427834
	.quad	0x3fcaf0452e4fcb78              # double 0.21045746575654412
	.quad	0x3fe73fa365516aa1              # double 0.72651834286383032
	.quad	0x3f629177ca1a3e00              # double 0.0022666301382014975
	.quad	0x3fe4ab54a4288dba              # double 0.64591438352765995
	.quad	0x3feecb83c334092c              # double 0.96234310269963918
	.quad	0x3fe30adb85e24e9b              # double 0.59507537984105185
	.quad	0x3fb84c1f46d07d50              # double 0.09491153220050319
	.quad	0x3fe09985702f684c              # double 0.51874038611573203
	.quad	0x3fca204aa0aa6be4              # double 0.20411045880322753
	.quad	0x3fddfe41ae79c91c              # double 0.46864358938832296
	.quad	0x3fe7e8d238acc7fd              # double 0.74717055386849973
	.quad	0x3fe6b4711cb44d3f              # double 0.70952659231480897
	.quad	0x3fec1a24bffe0b4d              # double 0.87819135187633324
	.quad	0x3fe0087f9dfa7750              # double 0.50103741507676069
	.quad	0x3fa13628cb0e7f00              # double 0.033616328036485399
	.quad	0x3fef1357b4659c29              # double 0.97111115678570059
	.quad	0x3fe31db250465446              # double 0.59737506559998432
	.quad	0x3fd61710160422c6              # double 0.34515764379515834
	.quad	0x3fc9f6498f3e0ef0              # double 0.20282859319933477
	.quad	0x3fc204e7d4ce38b0              # double 0.14077470675369375
	.quad	0x3fd4ceceb0783990              # double 0.32512252076494352
	.quad	0x3fe8a6f51c319e64              # double 0.77038054949384759
	.quad	0x3f96ed40ca74d8c0              # double 0.022389423710784895
	.quad	0x3fc9169894b72dd4              # double 0.19600207578183293
	.quad	0x3fef4adedf0adb14              # double 0.97788947642297552
	.quad	0x3fe87548824c7a8f              # double 0.76431680153821613
	.quad	0x3fdd4a1f8905b340              # double 0.45764912015038206
	.quad	0x3fd9f1e12350574e              # double 0.40538814972511694
	.quad	0x3fb628815c4695a0              # double 0.086555562046291445
	.quad	0x3fee6983e9c40f4a              # double 0.95038028390306661
	.quad	0x3fc9981c686a63cc              # double 0.19995455835740328
	.quad	0x3fef44c74f458221              # double 0.97714581949918877
	.quad	0x3fb6c91753faf7e8              # double 0.089005907061590173
	.quad	0x3fee9a432a6731e8              # double 0.95633085519653793
	.quad	0x3fcf2e07230f4ba0              # double 0.2435921593847441
	.quad	0x3fe72409d1c798d5              # double 0.72314921352951933
	.quad	0x3feced4729b8c00b              # double 0.90396459721341793
	.quad	0x3fe445e74863b10a              # double 0.63353313578184722
	.quad	0x3fe40d8dc4bc945c              # double 0.62665451455235255
	.quad	0x3fe38700cfd08c84              # double 0.61022987927243877
	.quad	0x3fe4d17fd1ba305a              # double 0.65057364427913034
	.quad	0x3fe80202c346ead6              # double 0.75024545803111198
	.quad	0x3fecca5224d44495              # double 0.89969737237165026
	.quad	0x3fb783860a7513c8              # double 0.091850640824374996
	.quad	0x3fdddf2f8c322bec              # double 0.46674717608465133
	.quad	0x3fe9e54af91ee540              # double 0.8092398515356436
	.quad	0x3fe2013a14cd4ee5              # double 0.56264976561439239
	.quad	0x3fe20920c3f0b9f5              # double 0.56361425656888164
	.quad	0x3feff0a4ac20d41a              # double 0.99812539690776991
	.quad	0x3fcda543edfe4b3c              # double 0.23160599823730788
	.quad	0x3f8ed3a7aac30300              # double 0.015052137278304567
	.quad	0x3fe2be087d3e86f5              # double 0.58569740735785436
	.quad	0x3fd133f554f367ba              # double 0.26879628463722904
	.quad	0x3fee58e9a06f21bb              # double 0.94835358938967518
	.quad	0x3fe94148c04a839f              # double 0.78921926075792104
	.quad	0x3fe1b06da50ca022              # double 0.5527866576785565
	.quad	0x3fc4c9e785632370              # double 0.16241163266229419
	.quad	0x3fc8bffb4b1a5848              # double 0.19335881392606979
	.quad	0x3fefe816948de473              # double 0.99708107962136549
	.quad	0x3fcd97a204ce68b4              # double 0.23118996843988315
	.quad	0x3fed6eb5c3354aec              # double 0.91976440550419402
	.quad	0x3fd3018ecafed9b8              # double 0.29697007964878308
	.quad	0x3fe8e53eef14ac13              # double 0.77798411078890906
	.quad	0x3fe799d40db43ae3              # double 0.73752787281577203
	.quad	0x3fd1eed0a274d9d8              # double 0.2802011095513115
	.quad	0x3fea03921b848e25              # double 0.81293588041848308
	.quad	0x3feecbaeeb80309e              # double 0.96236368175734177
	.quad	0x3fd505135532c5f2              # double 0.32843478508138368
	.quad	0x3fe6c0fc5470362e              # double 0.71105782024250686
	.quad	0x3fb76320476886c8              # double 0.0913562940918623
	.quad	0x3fe8f61f769f4bb0              # double 0.78004429977806033
	.quad	0x3fe833c3a9d2b6fd              # double 0.75631888550353177
	.quad	0x3fd0afb49e6188a6              # double 0.26072421519178091
	.quad	0x3fcddf2a60ae644c              # double 0.23337297173273652
	.quad	0x3fdc492f5fd43174              # double 0.44196686132706664
	.quad	0x3fe8b5aa1d3b91a1              # double 0.77217584332952438
	.quad	0x3fe79674424dc482              # double 0.73711598348576524
	.quad	0x3fe4a1ffa971bf00              # double 0.64477522940248377
	.quad	0x3fe8967c4137ebdf              # double 0.76836979616143342
	.quad	0x3fba0068eab86bf0              # double 0.10156875353315775
	.quad	0x3fdb4ebf5a95991a              # double 0.42668136449937466
	.quad	0x3fe519664b2e74d6              # double 0.65935053523903764
	.quad	0x3fe88f3ab70667f7              # double 0.76748405215334869
	.quad	0x3fe351c9b4184e0a              # double 0.60373387503426668
	.quad	0x3fbbbbd96cfa1450              # double 0.10833510313575911
	.quad	0x3fed75ef1b50bcb3              # double 0.92064624152216934
	.quad	0x3fca110c82c91bfc              # double 0.20364529024138267
	.quad	0x3fe3d0a450d885b6              # double 0.61921897688096439
	.quad	0x3fc003588272baf0              # double 0.12510210389651588
	.quad	0x3fd2391e810739b4              # double 0.28473627663052103
	.quad	0x3fedbf856fb8abea              # double 0.92962905712681487
	.quad	0x3feaed16ab17bde5              # double 0.84144147316504514
	.quad	0x3fa765720c54bcd0              # double 0.045695842747926485
	.quad	0x3feedef5af3344a8              # double 0.96471676081468604
	.quad	0x3fe623fc2a452197              # double 0.69189270263545921
	.quad	0x3fe2cf5a74001558              # double 0.58781168609918222
	.quad	0x3fc5c69bf1665e98              # double 0.17012357031920966
	.quad	0x3fd552b41b607328              # double 0.33317282365333023
	.quad	0x3fcd4f8ff6b5c794              # double 0.22899055048361261
	.quad	0x3fea586805dc4c2d              # double 0.82329178948055459
	.quad	0x3fd5d62cdcb358de              # double 0.34119721939840797
	.quad	0x3fe7c2ddfbcf27d1              # double 0.74253749066815022
	.quad	0x3fdb938b46d530bc              # double 0.43088037411940738
	.quad	0x3fef7c03812a5107              # double 0.98388838985059201
	.quad	0x3fe860fe8263f931              # double 0.76184010950945524
	.quad	0x3fd74ab9e9e5c7c8              # double 0.36393592683372988
	.quad	0x3fe6679d8b1b752e              # double 0.70014836472879494
	.quad	0x3fe6cf4081e26907              # double 0.71279931419420073
	.quad	0x3fec8692f9d7f6f4              # double 0.89142750547008953
	.quad	0x3fcbdc7830f4c1a4              # double 0.2176656950991972
	.quad	0x3fd88b81d60866d4              # double 0.38351484204905018
	.quad	0x3fe64aabb809ff09              # double 0.69661508507849235
	.quad	0x3fea98156587dd63              # double 0.8310648901960288
	.quad	0x3fb63cf2b051eb60              # double 0.086867492720484218
	.quad	0x3fe8047a86d1ccad              # double 0.75054670650424316
	.quad	0x3fc5f804fdb29964              # double 0.17163145434933391
	.quad	0x3fc7f983548f9940              # double 0.18730203274680868
	.quad	0x3fd5b697dec7f212              # double 0.33926960712395371
	.quad	0x3fe53bae81313fe3              # double 0.66353535874258929
	.quad	0x3feaeeb375192f4f              # double 0.84163830633904435
	.quad	0x3fd9727cc38af79a              # double 0.39761275382977035
	.quad	0x3fe6f0d79b1e4ae0              # double 0.71689968391941861
	.quad	0x3fea0ff00e4fbc79              # double 0.81444552226265821
	.quad	0x3fc141987327ba24              # double 0.13481431601344795
	.quad	0x3fd8ddedd511d3ce              # double 0.38854547317106103
	.quad	0x3fccf8087b4ca1a4              # double 0.22631937046504647
	.quad	0x3fcf19c321db5950              # double 0.24297370103040317
	.quad	0x3fc0ace44721cbb4              # double 0.13027623627894303
	.quad	0x3fe87640311f13af              # double 0.76443490594885144
	.quad	0x3fb6a8bc3318d978              # double 0.088512194132681077
	.quad	0x3fe95c2c12452422              # double 0.79250148361564166
	.quad	0x3fe37ca72d58f51a              # double 0.60896643502170211
	.quad	0x3fe978e267ae1ad0              # double 0.79600639581698296
	.quad	0x3fe27f7c90cafccd              # double 0.57806232719294715
	.quad	0x3fdea289e4ba7394              # double 0.47867057167769045
	.quad	0x3fddaa984f3d2e6c              # double 0.46353728998358323
	.quad	0x3fb5a7e3c5bd6298              # double 0.084593044067683087
	.quad	0x3fb3cc718158f920              # double 0.077338308409683254
	.quad	0x3febbef03751848f              # double 0.86705790333157207
	.quad	0x3fe73f7d62b95f95              # double 0.72650021822026878
	.quad	0x3fe5cc6f206f92a2              # double 0.68120533309100417
	.quad	0x3fb0cc72ac745910              # double 0.065619628050942902
	.quad	0x3fe84c9a275a707b              # double 0.75935084997355717
	.quad	0x3fe7d05c329f56a9              # double 0.74418458831015244
	.quad	0x3f4b674e0c7a1c00              # double 8.3628951047465261E-4
	.quad	0x3febd26ddcd805ba              # double 0.86943715222894657
	.quad	0x3fecafe376fda841              # double 0.89647076836013906
	.quad	0x3fc863ca861a6880              # double 0.190545382957513
	.quad	0x3fdfb6619712668c              # double 0.49550666573632252
	.quad	0x3fea5be71d2030ce              # double 0.82371860207197201
	.quad	0x3fe89f29f373208e              # double 0.76942918347141798
	.quad	0x3fd22df08467e566              # double 0.28405392580278599
	.quad	0x3fe2841de1e35ae2              # double 0.57862753027697189
	.quad	0x3fd0e4632586d544              # double 0.26393965401378616
	.quad	0x3fef76f3232d22dd              # double 0.98327023382543254
	.quad	0x3fec10977a045785              # double 0.87702535468518816
	.quad	0x3fe251f9cdb9f886              # double 0.57250681096026379
	.quad	0x3fed20d0c6631f88              # double 0.91025580165386177
	.quad	0x3fc21f3bfa1969cc              # double 0.14157819473150679
	.quad	0x3feaebc766dae33a              # double 0.84128160561440457
	.quad	0x3feb9288dbdbbee7              # double 0.8616375249966638
	.quad	0x3fcfbd72b8d3f028              # double 0.24796899819182383
	.quad	0x3fe8d85dfca0c26e              # double 0.77641200391196974
	.quad	0x3feb46f9fbf3b98f              # double 0.85241412362465663
	.quad	0x3fd0180d6d5e6d2e              # double 0.2514680450492105
	.quad	0x3fd68cc49d709740              # double 0.35234179854375114
	.quad	0x3fe4c2a309ea3599              # double 0.64875938354969087
	.quad	0x3fe9a92bf883a160              # double 0.80190084970403674
	.quad	0x3fb270214e7e7a00              # double 0.072023469604097556
	.quad	0x3fe50555e007d051              # double 0.65690130001031311
	.quad	0x3fc203c7813cc7a0              # double 0.14074033556385945
	.quad	0x3fed82b3c5bd857b              # double 0.92220486279636249
	.quad	0x3fe767dea870088e              # double 0.73142941377615656
	.quad	0x3fe895fce01fe3c8              # double 0.76830905699090923
	.quad	0x3fe032470ffd1979              # double 0.50613740084445091
	.quad	0x3fc57361a3da4ae8              # double 0.16758366108532319
	.quad	0x3fd73ffd563d142e              # double 0.36328061506020759
	.quad	0x3fe5db792d36a951              # double 0.68304117995038827
	.quad	0x3fd297daacbc29e4              # double 0.29051844471601229
	.quad	0x3fd85551ac9f194e              # double 0.38020746095243829
	.quad	0x3fe225e63a7db260              # double 0.5671263830568698
	.quad	0x3fdb4f6d50486022              # double 0.42672283973797864
	.quad	0x3fd54e7df245d722              # double 0.33291577014402851
	.quad	0x3fe9e4b6c6f0ac08              # double 0.80916918616765177
	.quad	0x3fd448d9681e7122              # double 0.31694636504995988
	.quad	0x3fce9ae554437ac0              # double 0.23910204519684974
	.quad	0x3fd54d0471a9e86c              # double 0.33282576656313867
	.quad	0x3fd038ebfc18edf0              # double 0.25347423190007046
	.quad	0x3fe31adbf32beab5              # double 0.5970287084049547
	.quad	0x3fef5e8ce81b74da              # double 0.98029179891059504
	.quad	0x3fce93e75e04d550              # double 0.23888866511121387
	.quad	0x3fcc8e11e4974eb8              # double 0.2230856290976726
	.quad	0x3febb26fa1d02d0f              # double 0.8655317459501094
	.quad	0x3fbdb5678788d8a8              # double 0.11604926165532226
	.quad	0x3fd6b7d29f0160a2              # double 0.35496964958066191
	.quad	0x3fb2a742ce3e1c08              # double 0.072864699699593527
	.quad	0x3fec08d8185ff3d5              # double 0.87607960472780155
	.quad	0x3fd95966cc944680              # double 0.39608163813054631
	.quad	0x3fcd21ea42aa081c              # double 0.22759750609481066
	.quad	0x3fa3671fff38d690              # double 0.037896156220466826
	.quad	0x3fd667b83f45e5f8              # double 0.35008054903991548
	.quad	0x3fd588207461e310              # double 0.3364335190340606
	.quad	0x3fd2f25f7347598c              # double 0.29604326493917976
	.quad	0x3fcc805ef96baef0              # double 0.22266757181875318
	.quad	0x3fe2975dc73605e5              # double 0.58097733410266683
	.quad	0x3fe68bfce36bb037              # double 0.70458836000535185
	.quad	0x3fe153d0f76c1111              # double 0.54148147892604659
	.quad	0x3fe5414458058898              # double 0.66421715919229296
	.quad	0x3f80ba377fefda80              # double 0.0081676803510906115
	.quad	0x3fc2a11da39a91e4              # double 0.14554186333147279
	.quad	0x3fc7f9136065218c              # double 0.18728868681706634
	.quad	0x3fdd57b19e9030d0              # double 0.45847740635578038
	.quad	0x3fd538c7fac11d90              # double 0.33159064758043488
	.quad	0x3fd5c0d711882afa              # double 0.33989502632236646
	.quad	0x3fed0f0992e4dd04              # double 0.90808561983331559
	.quad	0x3fb39544ee09fcc8              # double 0.076496418108933928
	.quad	0x3fb680310469d0a8              # double 0.087893546655154808
	.quad	0x3fc28693cce60e10              # double 0.14473197464768406
	.quad	0x3fe3edada2b7dfe3              # double 0.6227634599772468
	.quad	0x3fe0bc368fd6f13a              # double 0.52297523587871031
	.quad	0x3fd946df032d4214              # double 0.39495063123925545
	.quad	0x3fe549adceba9772              # double 0.66524401070340233
	.quad	0x3fb67d4633735a90              # double 0.087849032937223237
	.quad	0x3fefcd02bac53bfe              # double 0.99377571562388289
	.quad	0x3fdaeb1257c49ab8              # double 0.42059763499348035
	.quad	0x3fe84aed210b357e              # double 0.75914627508033994
	.quad	0x3feeca062780a61f              # double 0.96216113772715405
	.quad	0x3fda17b853847624              # double 0.40769775539397046
	.quad	0x3fc3fc5a8ef87bd0              # double 0.15613872509945148
	.quad	0x3fe44c91fc8ebfa9              # double 0.63434695556315035
	.quad	0x3fe36ac4a0e8cbe9              # double 0.60678321292504933
	.quad	0x3fc3637a0e2bf49c              # double 0.15147329036691282
	.quad	0x3fd8f0c864cb8d22              # double 0.38969621508859309
	.quad	0x3fe895b410ac259d              # double 0.76827433830583269
	.quad	0x3fcb986876296404              # double 0.2155886246644344
	.quad	0x3fc718eab419cc54              # double 0.18044790071471317
	.quad	0x3fb355f7c43f44c8              # double 0.075530515109920704
	.quad	0x3fd2c9bab1cb95a2              # double 0.29356257784669471
	.quad	0x3febfd46529d7c84              # double 0.87466732154634074
	.quad	0x3fe27ef4db7b9ba2              # double 0.57799761646025538
	.quad	0x3f8580214e29cd80              # double 0.010498295019010895
	.quad	0x3fe235c5e5f47613              # double 0.56906409180709472
	.quad	0x3fe2ac8a5a8d5fef              # double 0.58356206594453208
	.quad	0x3fe26aaef3176d51              # double 0.57552287558375259
	.quad	0x3fef11b256a0aba7              # double 0.97091023368317486
	.quad	0x3fd98ad043498848              # double 0.39909750529307475
	.quad	0x3fdaf34bebb2ee88              # double 0.42109964387393761
	.quad	0x3fd3725747dfa350              # double 0.30385381716637472
	.quad	0x3fbb0a7c6027a328              # double 0.10562875125436888
	.quad	0x3fdab99b0ff9533e              # double 0.41757847366288903
	.quad	0x3fd53c90e5d4dbda              # double 0.331821655697636
	.quad	0x3faf74fe7de7e880              # double 0.061439469212886344
	.quad	0x3fe2234ec6ec7cef              # double 0.56681002476025621
	.quad	0x3fee7da016806ca0              # double 0.95283512492041566
	.quad	0x3fbd069db2eaeeb8              # double 0.11338220232112917
	.quad	0x3feedfb81ea272eb              # double 0.96480947478593515
	.quad	0x3fde7abe867be742              # double 0.47624171384051206
	.quad	0x3fc7f0ee01b49728              # double 0.1870400913550665
	.quad	0x3fe207a549f5b458              # double 0.5634333080794347
	.quad	0x3fe1276084472132              # double 0.53605676494138366
	.quad	0x3fd4c78e84e3a3ca              # double 0.32467997529471104
	.quad	0x3fdf3484c9a6681a              # double 0.48758048717866276
	.quad	0x3fdfdb1ff9ce8c80              # double 0.49774932284544349
	.quad	0x3feb38dc3b83b46f              # double 0.85069095252914717
	.quad	0x3fedf400c81b09db              # double 0.93603552897576081
	.quad	0x3fefb977454a69b5              # double 0.9913898804982667
	.quad	0x3fd67c9338bc50e2              # double 0.35135345974528154
	.quad	0x3fda13cf024257a4              # double 0.40745902271862122
	.quad	0x3fe5d566b2d8d18c              # double 0.68229994708103581
	.quad	0x3fea296754e447b9              # double 0.81755415516294427
	.quad	0x3fe8cdc77fef86a2              # double 0.77511954295569674
	.quad	0x3fdce1186d487056              # double 0.45123873397983993
	.quad	0x3fd8494eb080c5cc              # double 0.3794743274366652
	.quad	0x3fdfb0dd75988410              # double 0.49516998752557218
	.quad	0x3fe5cba136f4dd1a              # double 0.6811071465844265
	.quad	0x3fd33d73be34033c              # double 0.30062573980835672
	.quad	0x3fd6892dc3ab73ac              # double 0.35212272747394979
	.quad	0x3fd9821c58e8902e              # double 0.39856632883516141
	.quad	0x3fc6bfdb3bfd4f38              # double 0.17772999219106977
	.quad	0x3fc1203a72d472fc              # double 0.13379603011062347
	.quad	0x3fd1d038b94bce46              # double 0.27833383651088572
	.quad	0x3fe9e723f0793f89              # double 0.80946537940506957
	.quad	0x3fec8b1a349e1be9              # double 0.8919802692115556
	.quad	0x3fef79ad6dd15817              # double 0.98360320519236921
	.quad	0x3fe1324d98b1fbac              # double 0.53739051650324177
	.quad	0x3fbad1e5385beec0              # double 0.10476524949984434
	.quad	0x3fe0d95be3bd0325              # double 0.52653307418959072
	.quad	0x3fe4c96d4b9483c9              # double 0.64958824884171762
	.quad	0x3fe40bededee0584              # double 0.62645622702272918
	.quad	0x3fe2c0c8c017ed68              # double 0.58603322523360379
	.quad	0x3fd629b7880b7f8a              # double 0.34629619870792594
	.quad	0x3fe792a39757d1db              # double 0.73665027198017741
	.quad	0x3fd12023a3a60f58              # double 0.26758662205997075
	.quad	0x3fce45c22110c9f4              # double 0.23650385489015913
	.quad	0x3fd7e8241c536dd2              # double 0.37354376569939263
	.quad	0x3fefe4d28a63c3e7              # double 0.99668242482414093
	.quad	0x3feab6d9b9e43764              # double 0.83482061678817531
	.quad	0x3f8bb32e502af800              # double 0.013525354215172314
	.quad	0x3fdaa71aa01e6144              # double 0.41644921909894017
	.quad	0x3fd2c09535cd8836              # double 0.29300432447610392
	.quad	0x3fd27b76be40269e              # double 0.28878563479575259
	.quad	0x3fc44fcbb2bf41d8              # double 0.15868517139325777
	.quad	0x3fc7519c2f4dab4c              # double 0.18217804250465475
	.quad	0x3fd77bb20a7a639a              # double 0.36692477248430466
	.quad	0x3fbc79ac2af7ac20              # double 0.1112315754796076
	.quad	0x3fd1bd33e3416c7e              # double 0.27717301552701901
	.quad	0x3fe360e68103d299              # double 0.60557866285542439
	.quad	0x3fe4b0e33506e627              # double 0.64659271580530209
	.quad	0x3fc8dc962b48c9d8              # double 0.19423176873676939
	.quad	0x3fd538165d9d0500              # double 0.3315483011429734
	.quad	0x3fb6262cbbb52698              # double 0.086520000292831134
	.quad	0x3fb1c3427a5978b8              # double 0.069385676260455109
	.quad	0x3fbe95ca4b7a5090              # double 0.11947311728209997
	.quad	0x3feb35d4a3ab0fb3              # double 0.85032112089583334
	.quad	0x3f9f61814eb37640              # double 0.030645389965562098
	.quad	0x3fe5e401336a7ca3              # double 0.68408260385685471
	.quad	0x3fc215efa801b168              # double 0.14129443839500344
	.quad	0x3fdf5b4d6926bcf8              # double 0.48994765537913976
	.quad	0x3fe2b764ae3f6451              # double 0.58488687546481277
	.quad	0x3fe6f7ac4c3e57ef              # double 0.71773352519335087
	.quad	0x3fdd41fc4377c652              # double 0.45715242947253387
	.quad	0x3fea2e8e43fb5359              # double 0.81818307187732409
	.quad	0x3fcc74c6e851e84c              # double 0.22231375068423842
	.quad	0x3fc5ea5a2cb3e354              # double 0.17121436293362058
	.quad	0x3fe192f203498bb2              # double 0.54918766634033589
	.quad	0x3fe909720f7c8e8c              # double 0.78240302109448256
	.quad	0x3fe9713a2b811200              # double 0.79507168290052732
	.quad	0x3fe29fe037a85efd              # double 0.58201609488148132
	.quad	0x3feeea4ea53cc2e6              # double 0.96610195420188627
	.quad	0x3fe2cd5bc488c0bc              # double 0.58756817231735381
	.quad	0x3feb478b5fc577f4              # double 0.85248345094055233
	.quad	0x3fd14e7df21f60ca              # double 0.27041577000410355
	.quad	0x3fbbd514dad420b8              # double 0.10872011511321744
	.quad	0x3fbaa34c5c7a8aa0              # double 0.10405423410206049
	.quad	0x3fea404f35cb996e              # double 0.82035027033707109
	.quad	0x3f9410a7ae376c40              # double 0.019594783790904069
	.quad	0x3fc7ef9b89f082a8              # double 0.18699974284483756
	.quad	0x3fe3ad9e477ebfe3              # double 0.6149436375035261
	.quad	0x3fdd971029bcc1b6              # double 0.462345162161934
	.quad	0x3fe8af2bd8900548              # double 0.77138321206454297
	.quad	0x3fe48e729ae31282              # double 0.64238863231055654
	.quad	0x3fe859075c338957              # double 0.76086776741093842
	.quad	0x3fe80979a1177eb0              # double 0.7511566301654593
	.quad	0x3fda2c96e5140b58              # double 0.4089715230076556
	.quad	0x3fa5ab8ccdfd4aa0              # double 0.042324447770302642
	.quad	0x3fc0a3a195190584              # double 0.12999362735903841
	.quad	0x3fe4fe04267d264b              # double 0.65600783841473154
	.quad	0x3fe5a6035a1dd374              # double 0.67651527024155067
	.quad	0x3fef7b02c87422d2              # double 0.98376597548584699
	.quad	0x3fec8902ceee8498              # double 0.8917249719271636
	.quad	0x3fe5c3f7cd6af148              # double 0.6801718723359409
	.quad	0x3fe856842af04a33              # double 0.76056106935931778
	.quad	0x3fddc39fb839ab02              # double 0.46506493559597584
	.quad	0x3fee27005ffc4999              # double 0.94226092097442227
	.quad	0x3febd7cb1d7091d1              # double 0.87009196996637617
	.quad	0x3fe72225053f2936              # double 0.72291804337263588
	.quad	0x3fec84e996b0753f              # double 0.89122466498853459
	.quad	0x3faaef2ccfa45440              # double 0.05260601076785365
	.quad	0x3fe43a949bc47b52              # double 0.63215094016400486
	.quad	0x3fd3eccd200b84ee              # double 0.31132820252794502
	.quad	0x3fe3fd32ae793671              # double 0.62465795590260431
	.quad	0x3fe8e6406c5c9992              # double 0.77810689129255395
	.quad	0x3fcefb6173c3f6bc              # double 0.24204652931796555
	.quad	0x3fef644d2502eda3              # double 0.98099381665035811
	.quad	0x3fda3a46cfadb326              # double 0.40980692177872624
	.quad	0x3fd22ad25e0b254c              # double 0.28386363204898113
	.quad	0x3fe0ee430eab8a14              # double 0.52908470978974487
	.quad	0x3fd2f64a864dc73c              # double 0.29628241649253417
	.quad	0x3fb829baa7db03f8              # double 0.094386735897401652
	.quad	0x3fec8b89b6edb34c              # double 0.89203344085908886
	.quad	0x3fe682548d145a8d              # double 0.70340945772734786
	.quad	0x3fd9a54f3744de50              # double 0.40071468732228244
	.quad	0x3f98bd75d1d39be0              # double 0.024160233432578226
	.quad	0x3fe0aac70bde7ff4              # double 0.5208468658274783
	.quad	0x3f88644c1b5319c0              # double 0.011910051902657481
	.quad	0x3fef18443d94b633              # double 0.97171222713013205
	.quad	0x3fd0188dab3e4462              # double 0.25149862025234004
	.quad	0x3fe0cb6cf9c5e981              # double 0.52483223708922833
	.quad	0x3fef2f9bdbc91546              # double 0.97456162382938127
	.quad	0x3fe59c6c91d14b25              # double 0.67534473876944345
	.quad	0x3fe11b5b2cda14a3              # double 0.53458937416202834
	.quad	0x3fe3b8db3b4561f8              # double 0.6163154752385358
	.quad	0x3fb9555a13eb4a68              # double 0.098958616126120114
	.quad	0x3fdfba72a965038a              # double 0.49575487654151884
	.quad	0x3fb35ba90f922cf0              # double 0.075617376615060072
	.quad	0x3fd92c49985aee42              # double 0.3933280933231097
	.quad	0x3fc66fdd5cde25c0              # double 0.17528883966978803
	.quad	0x3fe3fbe3325adaa5              # double 0.62449798426572001
	.quad	0x3fe573ff2b331c07              # double 0.67040975987845364
	.quad	0x3fe9aa7c413a2058              # double 0.80206120242747669
	.quad	0x3fae2e7ade129e40              # double 0.058948363884436805
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
