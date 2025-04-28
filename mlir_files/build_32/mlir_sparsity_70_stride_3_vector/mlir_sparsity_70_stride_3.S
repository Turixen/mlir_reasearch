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
	.quad	41                              # 0x29
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	128                             # 0x80
	.quad	149                             # 0x95
	.quad	166                             # 0xa6
	.quad	215                             # 0xd7
	.quad	236                             # 0xec
	.quad	255                             # 0xff
	.quad	304                             # 0x130
	.quad	323                             # 0x143
	.quad	343                             # 0x157
	.quad	387                             # 0x183
	.quad	410                             # 0x19a
	.quad	435                             # 0x1b3
	.quad	483                             # 0x1e3
	.quad	506                             # 0x1fa
	.quad	525                             # 0x20d
	.quad	574                             # 0x23e
	.quad	590                             # 0x24e
	.quad	610                             # 0x262
	.quad	655                             # 0x28f
	.quad	671                             # 0x29f
	.quad	686                             # 0x2ae
	.quad	737                             # 0x2e1
	.quad	758                             # 0x2f6
	.quad	783                             # 0x30f
	.quad	827                             # 0x33b
	.quad	851                             # 0x353
	.quad	871                             # 0x367
	.quad	921                             # 0x399
	.quad	943                             # 0x3af
	.quad	965                             # 0x3c5
	.quad	1020                            # 0x3fc
	.quad	1050                            # 0x41a
	.quad	1073                            # 0x431
	.quad	1123                            # 0x463
	.quad	1145                            # 0x479
	.quad	1163                            # 0x48b
	.quad	1211                            # 0x4bb
	.quad	1229                            # 0x4cd
	.quad	1252                            # 0x4e4
	.quad	1299                            # 0x513
	.quad	1331                            # 0x533
	.quad	1355                            # 0x54b
	.quad	1405                            # 0x57d
	.quad	1425                            # 0x591
	.quad	1443                            # 0x5a3
	.quad	1489                            # 0x5d1
	.quad	1518                            # 0x5ee
	.quad	1539                            # 0x603
	.quad	1584                            # 0x630
	.quad	1608                            # 0x648
	.quad	1623                            # 0x657
	.quad	1671                            # 0x687
	.quad	1690                            # 0x69a
	.quad	1712                            # 0x6b0
	.quad	1758                            # 0x6de
	.quad	1783                            # 0x6f7
	.quad	1808                            # 0x710
	.quad	1859                            # 0x743
	.quad	1878                            # 0x756
	.quad	1903                            # 0x76f
	.quad	1950                            # 0x79e
	.quad	1970                            # 0x7b2
	.quad	1981                            # 0x7bd
	.quad	2031                            # 0x7ef
	.quad	2049                            # 0x801
	.quad	2067                            # 0x813
	.quad	2115                            # 0x843
	.quad	2132                            # 0x854
	.quad	2152                            # 0x868
	.quad	2201                            # 0x899
	.quad	2223                            # 0x8af
	.quad	2241                            # 0x8c1
	.quad	2290                            # 0x8f2
	.quad	2311                            # 0x907
	.quad	2331                            # 0x91b
	.quad	2377                            # 0x949
	.quad	2398                            # 0x95e
	.quad	2422                            # 0x976
	.quad	2473                            # 0x9a9
	.quad	2489                            # 0x9b9
	.quad	2509                            # 0x9cd
	.quad	2561                            # 0xa01
	.quad	2584                            # 0xa18
	.quad	2609                            # 0xa31
	.quad	2656                            # 0xa60
	.quad	2670                            # 0xa6e
	.quad	2690                            # 0xa82
	.quad	2734                            # 0xaae
	.quad	2747                            # 0xabb
	.quad	2763                            # 0xacb
	.quad	2809                            # 0xaf9
	.quad	2823                            # 0xb07
	.quad	2854                            # 0xb26
	.quad	2905                            # 0xb59
	.quad	2930                            # 0xb72
	.quad	2953                            # 0xb89
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	37                              # 0x25
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3fea506e74ff40e7              # double 0.82231829501145348
	.quad	0x3fe375d902af8f18              # double 0.60813570522847993
	.quad	0x3fe4591bc5e1d4d9              # double 0.63587750100000584
	.quad	0x3fe59eecfcfee5cf              # double 0.67565011418553833
	.quad	0x3f764942e7131f00              # double 0.0054409612068366808
	.quad	0x3fec8999e39d20d7              # double 0.89179701286141266
	.quad	0x3fd7de00bd444cf4              # double 0.37292498095594273
	.quad	0x3fb5b1d24982b9c0              # double 0.084744589754996547
	.quad	0x3fd035f9a3fbbecc              # double 0.25329438222887002
	.quad	0x3fdad54adfaf4d90              # double 0.41926833957878618
	.quad	0x3fdf7c109807e354              # double 0.49194731566199335
	.quad	0x3fe7642f961da74e              # double 0.73097972220896579
	.quad	0x3fd974fae291586e              # double 0.39776489377744084
	.quad	0x3fe6ef3dc938ef77              # double 0.71670426656008501
	.quad	0x3fded75a12b93fe4              # double 0.4818940337036095
	.quad	0x3fdc60d783e0be30              # double 0.44341075781537409
	.quad	0x3fcd6ce19deffbfc              # double 0.22988529407299996
	.quad	0x3fd2981e587522be              # double 0.29053457868989685
	.quad	0x3fe97661de7fffcf              # double 0.79570096451788597
	.quad	0x3fe9a12bbec3ff4f              # double 0.80092417963894913
	.quad	0x3fdfc09c7385573a              # double 0.49613105088552667
	.quad	0x3fd8bf12b9a99e5a              # double 0.38666217928991886
	.quad	0x3fe2895d91cdefb8              # double 0.57926825025014406
	.quad	0x3fe1f2f341a3616c              # double 0.56090700931512805
	.quad	0x3fe1c4172afde87a              # double 0.5551868285831596
	.quad	0x3fd1ac505fa71c12              # double 0.27614220944491408
	.quad	0x3fca73f583e3c350              # double 0.20666378917624195
	.quad	0x3fd1d18b41915c34              # double 0.27841454890352968
	.quad	0x3f9520edfd812720              # double 0.020633429143607107
	.quad	0x3fb0b4ae1ae22368              # double 0.065256959498709244
	.quad	0x3fe4e7bf9a1f6a2a              # double 0.65328960516064183
	.quad	0x3fd5527a4d6c355a              # double 0.33315904198464852
	.quad	0x3fb590a5e2d5f240              # double 0.084238403205696422
	.quad	0x3fe7767495659e4f              # double 0.73320988825884992
	.quad	0x3fe7c441e195d0b8              # double 0.74270719585049161
	.quad	0x3fe49e9ea5f80ba6              # double 0.64436275878721427
	.quad	0x3fbe5709d51473a0              # double 0.11851560070176825
	.quad	0x3fd5ea3356ddb908              # double 0.34241946681039837
	.quad	0x3fddd9413220c42e              # double 0.46638517279922354
	.quad	0x3fe5e529bae0d8e9              # double 0.68422399997396355
	.quad	0x3fe9aa6ea27b9cea              # double 0.80205470786031907
	.quad	0x3fd840f971b0cdb8              # double 0.37896572210885493
	.quad	0x3fd422b51dba1e92              # double 0.31461837676077054
	.quad	0x3fedd50f4a07af3b              # double 0.93225826701152614
	.quad	0x3fe4ecc0438a70a1              # double 0.65390027228888326
	.quad	0x3fe512ff62d82a60              # double 0.65856904321237764
	.quad	0x3fd9b09f3750e1ea              # double 0.40140514757106749
	.quad	0x3fe2b20588e0a226              # double 0.58423115476495435
	.quad	0x3fc4753078d9c84c              # double 0.15982633496202181
	.quad	0x3fa32196f68cb7f0              # double 0.037365644070049941
	.quad	0x3fe5e48f05559b61              # double 0.68415022889972132
	.quad	0x3fd06dcf4be59950              # double 0.25670225536159297
	.quad	0x3fe7ee5ca9878187              # double 0.74784691916652057
	.quad	0x3feb80318709842d              # double 0.85939861654708738
	.quad	0x3fb5ce16867093c0              # double 0.085175903150754628
	.quad	0x3fa499237a961a80              # double 0.040230854715493258
	.quad	0x3fce7cbeb2f824c4              # double 0.2381819127915944
	.quad	0x3fefee49deaead04              # double 0.99783795826570598
	.quad	0x3fd497618607cf10              # double 0.32173956002155624
	.quad	0x3f865231693854c0              # double 0.010898958228646172
	.quad	0x3feacae084352c8c              # double 0.83726526090448905
	.quad	0x3fb18280fd3e97e0              # double 0.068397580935737334
	.quad	0x3fe924231de926ee              # double 0.78566127626365101
	.quad	0x3fe1cb662cd6b6f1              # double 0.55607899434627772
	.quad	0x3fde947a081ebdfc              # double 0.47781229775407019
	.quad	0x3febc7c2cfe1c289              # double 0.86813488580635678
	.quad	0x3fe7434cb5f24dcc              # double 0.72696528946328831
	.quad	0x3fefa497603a0f25              # double 0.98884171289725897
	.quad	0x3fea043b16c24ed5              # double 0.81301645703430359
	.quad	0x3f75d81c3b334880              # double 0.005333051946950218
	.quad	0x3fc0c8aac7a5c718              # double 0.1311238741723677
	.quad	0x3fd2b5de8eb737fa              # double 0.29235042512016174
	.quad	0x3fd42443f5a96fee              # double 0.31471346846023962
	.quad	0x3fe2311cc35f1089              # double 0.56849516066041972
	.quad	0x3fe365a2fde053dc              # double 0.60615682206354959
	.quad	0x3fef00d00e1bc3da              # double 0.96884920840795563
	.quad	0x3fe9f5195d58dae8              # double 0.81116932136395992
	.quad	0x3fd244e50a792bb6              # double 0.28545499823365661
	.quad	0x3fef504a72d3697d              # double 0.97855112482947925
	.quad	0x3feb7b9f06adea83              # double 0.85884047798693108
	.quad	0x3fd80ca0a6a3016c              # double 0.37577072404021439
	.quad	0x3fedc25b15dc6ace              # double 0.92997507352569087
	.quad	0x3fe179b0fa2ee479              # double 0.54610489715481869
	.quad	0x3f93693d0ce15cc0              # double 0.018956140433456836
	.quad	0x3fd39a6d30418a06              # double 0.30630044662953571
	.quad	0x3fd76eff2c74b75a              # double 0.36614970532797531
	.quad	0x3fd37b2fac4c5f5a              # double 0.30439369035729202
	.quad	0x3fee62a3942ec86a              # double 0.94954089109365936
	.quad	0x3fe2ab168f5be27b              # double 0.58338478088178591
	.quad	0x3fe1588ed60fafbe              # double 0.54206029709666104
	.quad	0x3fc24a011c98f48c              # double 0.14288343330727959
	.quad	0x3fc0221fe3c3ee18              # double 0.12604139920573298
	.quad	0x3fedb3809fc61523              # double 0.92816191869556908
	.quad	0x3fda9d5284b1df12              # double 0.41585219343640845
	.quad	0x3fd82b465df5d55c              # double 0.37764128852662338
	.quad	0x3fd6c9e80cabcfa2              # double 0.35607339131751747
	.quad	0x3fe498e3284d52c7              # double 0.64366300460331949
	.quad	0x3fe1b413caf09fc6              # double 0.55323209416109687
	.quad	0x3fee2539794975d8              # double 0.94204400719507486
	.quad	0x3fd0055f1f541652              # double 0.25032785472317187
	.quad	0x3fa401623150c6d0              # double 0.039073055763208964
	.quad	0x3fc09b4baefc0760              # double 0.12973924678959303
	.quad	0x3fc9eaed555ddee0              # double 0.20248190563483259
	.quad	0x3fd19a17fdde95f6              # double 0.27503013412419308
	.quad	0x3febeaae6b4dc230              # double 0.87239762265932619
	.quad	0x3feae00ec53889f6              # double 0.83985079307268395
	.quad	0x3fe4289c29b6a2d4              # double 0.62995727679398295
	.quad	0x3fd0e94014c46b1a              # double 0.26423646953632984
	.quad	0x3fb4cd34dcf40918              # double 0.081256202644031439
	.quad	0x3f75d700b9a6b280              # double 0.0053319958046073035
	.quad	0x3fe5110bb17e51f3              # double 0.65833077112853144
	.quad	0x3fd52cf678bb2a92              # double 0.33086931028507494
	.quad	0x3fc3d76a605d3578              # double 0.1550114603545969
	.quad	0x3fe6edc4969f8cdb              # double 0.71652440470316081
	.quad	0x3fedc1af824ac217              # double 0.92989325950299218
	.quad	0x3fd85a4bb84e4dfa              # double 0.38051121710415681
	.quad	0x3fd26c904062513e              # double 0.28787618911271184
	.quad	0x3fc50713a6aaa730              # double 0.1642784656335663
	.quad	0x3fe6db98bb19776a              # double 0.71430622618548267
	.quad	0x3fe4dcbdbbb5fa34              # double 0.65194594061160283
	.quad	0x3fe116d41f20b5be              # double 0.53403669433253476
	.quad	0x3fe3857e0368a1be              # double 0.61004543939366562
	.quad	0x3fd34d6c4b1d5eb6              # double 0.30160052619383337
	.quad	0x3fdb9c937305d520              # double 0.43143163902944259
	.quad	0x3fc8f4e987c18bc0              # double 0.19497412804329706
	.quad	0x3fe14cb4220e230e              # double 0.54061323787127136
	.quad	0x3fa2acbf17f4b090              # double 0.036474200891775443
	.quad	0x3fe228e5f59a397f              # double 0.56749246567942169
	.quad	0x3fe738a3bfbd6308              # double 0.72566401909998124
	.quad	0x3fda43570661319a              # double 0.41036010382665611
	.quad	0x3fe0a5652263779f              # double 0.52018982616913323
	.quad	0x3fdcd2c62b732794              # double 0.45036463015696282
	.quad	0x3fd531039d7cde8e              # double 0.33111658458390358
	.quad	0x3fd542cd478144be              # double 0.33220226271539477
	.quad	0x3fe32fa6252a8568              # double 0.59956652888301409
	.quad	0x3fe3ad64e0d56a51              # double 0.61491626656363441
	.quad	0x3fe62d18f662fe35              # double 0.69300506708527243
	.quad	0x3fe44ef3e7c46fd3              # double 0.63463778750473876
	.quad	0x3fe630b43fa2ecaf              # double 0.69344532422055305
	.quad	0x3fd42608a43b1b4c              # double 0.31482139623806371
	.quad	0x3fecf26c6e145bea              # double 0.90459271907718386
	.quad	0x3fc66ce874e0ab74              # double 0.17519860941805698
	.quad	0x3fe2841cd748a29d              # double 0.57862703368762747
	.quad	0x3fddfae9d7bc00e6              # double 0.46843954150973699
	.quad	0x3fd6dcd61bf1239a              # double 0.35722878197389607
	.quad	0x3fb287a8c808ab10              # double 0.07238249667777219
	.quad	0x3fdb1765ce27ed8e              # double 0.42330308086794666
	.quad	0x3fc3576b21531fc4              # double 0.15110530020888124
	.quad	0x3fd9cca6f8640b40              # double 0.40311598069108712
	.quad	0x3fd4530f120cbe2a              # double 0.31756951105760101
	.quad	0x3fd398ea2053cada              # double 0.30620816380466709
	.quad	0x3fe02feb80805f5a              # double 0.50584960077228946
	.quad	0x3fe83ac9a65311ce              # double 0.75717623219730412
	.quad	0x3fe3ae845b7537c4              # double 0.61505334723346339
	.quad	0x3fe358e32bcce8da              # double 0.60460051111956692
	.quad	0x3fe62e6f77225480              # double 0.6931683852041175
	.quad	0x3fd8ee7071b5210c              # double 0.38955317596675409
	.quad	0x3fdc44c43d34cd54              # double 0.44169717766927374
	.quad	0x3fd6d168edd79c22              # double 0.35653136469631097
	.quad	0x3fe2593f36112972              # double 0.57339439926117408
	.quad	0x3fd714f2d3c95f26              # double 0.3606535976627917
	.quad	0x3fd35697c44559c8              # double 0.30216020743446537
	.quad	0x3fd14044862e4298              # double 0.26954758742889728
	.quad	0x3fe50ea8c02a0a32              # double 0.65803945095132677
	.quad	0x3fe349c79f839f9c              # double 0.60275632052524797
	.quad	0x3fcf5cfb1888d644              # double 0.24502505014395315
	.quad	0x3fe78fb14591f2e7              # double 0.7362905844489348
	.quad	0x3fea9363881acd71              # double 0.8304917963309163
	.quad	0x3fe552ab75d385ad              # double 0.66634152424756155
	.quad	0x3fabb374354b9610              # double 0.054103499894875395
	.quad	0x3fe0920cf9168988              # double 0.51782845163352054
	.quad	0x3fe3e37765448e26              # double 0.62151689318529146
	.quad	0x3fe89d2b284779cb              # double 0.76918561808616326
	.quad	0x3fea0ff61301b5ec              # double 0.81444839203112229
	.quad	0x3fe4608f07f054eb              # double 0.63678695250078243
	.quad	0x3fe4936516458691              # double 0.64299253797453748
	.quad	0x3fe1b9057bc93992              # double 0.5538356225677481
	.quad	0x3fe421379abd9aec              # double 0.62905483458311329
	.quad	0x3fdcae7642eb940a              # double 0.44814831290415269
	.quad	0x3fef118eca1e3447              # double 0.97089328266304952
	.quad	0x3fb587a5e823b6e8              # double 0.084101075339016895
	.quad	0x3fd2aab99dec760a              # double 0.29167023107751844
	.quad	0x3fd3dc7a6073035a              # double 0.31033191126703275
	.quad	0x3fe3eaeaf9f2e906              # double 0.62242649858606636
	.quad	0x3fea1b296c11d47f              # double 0.81581565005639323
	.quad	0x3fee0057014f22e7              # double 0.93754148727120146
	.quad	0x3fd1915e33761fa6              # double 0.2744975569298681
	.quad	0x3fc7db3adcc5841c              # double 0.18637786655293176
	.quad	0x3fe8b61047a6008b              # double 0.77222455972516124
	.quad	0x3fe4c14029be99f3              # double 0.64859016564588357
	.quad	0x3fe239ee4acfbed8              # double 0.56957163440344072
	.quad	0x3fe5351730d10cbf              # double 0.66273078474514324
	.quad	0x3fe88fd54bc1899f              # double 0.7675577621087547
	.quad	0x3feb2530e0810f3e              # double 0.84828990791763892
	.quad	0x3fe4669475629af1              # double 0.63752196242134407
	.quad	0x3fa8c4d0243a0e80              # double 0.04837656442853433
	.quad	0x3fd19abdcf4a54a4              # double 0.27506966822813639
	.quad	0x3fdde3a3e6262b50              # double 0.46701905704019442
	.quad	0x3fea2b0fe1d3b983              # double 0.81775659663053124
	.quad	0x3fe4910d68767a30              # double 0.64270658877268794
	.quad	0x3fe5ead584155f01              # double 0.68491626546435225
	.quad	0x3faa9db5ac6786e0              # double 0.05198447923227234
	.quad	0x3fb2d1d103063bf0              # double 0.073514044988982397
	.quad	0x3f8bb85d539c2180              # double 0.013535241235800965
	.quad	0x3fdf439e732b192a              # double 0.48850213286313482
	.quad	0x3fd608967ae5a5ce              # double 0.34427415849367271
	.quad	0x3fdfb10511961954              # double 0.49517943112768603
	.quad	0x3fd1155ec85366b4              # double 0.26692933619561221
	.quad	0x3fcf26c5fd80fae0              # double 0.24337077024571041
	.quad	0x3fd324813fcdd458              # double 0.29910308104382954
	.quad	0x3fefe76feac95343              # double 0.99700160843585938
	.quad	0x3fea872e4c5428ab              # double 0.82900156887014498
	.quad	0x3fe6491f4e550dab              # double 0.6964260606695708
	.quad	0x3fd6308d642baef8              # double 0.34671339781083033
	.quad	0x3fda3f8738030344              # double 0.41012745351695323
	.quad	0x3fb8766fc103c220              # double 0.095557198164677448
	.quad	0x3fe4fffdb27aff26              # double 0.65624890193428054
	.quad	0x3fe03d7fd92783c0              # double 0.50750725186309609
	.quad	0x3feb20a50dfd49a0              # double 0.84773495418840028
	.quad	0x3fe4a117fbb67883              # double 0.64466475641872056
	.quad	0x3fb180eef6499ba0              # double 0.068373618248740886
	.quad	0x3feb1a6bed5bd9b8              # double 0.84697529181612818
	.quad	0x3fe16844078f9622              # double 0.54397775151000283
	.quad	0x3fcafdd50d20f8c0              # double 0.21087134495787119
	.quad	0x3fec6ac9e0648e8c              # double 0.88803571535795944
	.quad	0x3fe8c1872412baee              # double 0.77362401052036289
	.quad	0x3fe1503d497339d9              # double 0.54104484887812554
	.quad	0x3fea3d0836a0af80              # double 0.81995020551174491
	.quad	0x3fde7c79ba69ba6e              # double 0.47634738163370727
	.quad	0x3fd2b1fdc15c8b70              # double 0.29211372263869517
	.quad	0x3fd371135fa244cc              # double 0.30377659167522775
	.quad	0x3fe1922fd400ea78              # double 0.54909507185887119
	.quad	0x3fee22d574f08a82              # double 0.94175217475670103
	.quad	0x3fe3cc7c83271290              # double 0.61871171584842166
	.quad	0x3fa4dce886c95e60              # double 0.040747896626893931
	.quad	0x3fe2f1560a99bde9              # double 0.59195997305317605
	.quad	0x3f91fde50e0ead60              # double 0.017570094092360988
	.quad	0x3fcf8f906cb34610              # double 0.24656873042708627
	.quad	0x3fe7784df101f05c              # double 0.73343560287276999
	.quad	0x3fb0dfed9ef4f458              # double 0.065916873271775756
	.quad	0x3fce5cfff00e1388              # double 0.23721312734064903
	.quad	0x3fd5ce6cb4c3f03e              # double 0.34072415974492631
	.quad	0x3fb8ae2753ac1b38              # double 0.096407373359494453
	.quad	0x3fe9d5faae7b3df3              # double 0.80737051084901024
	.quad	0x3fee2ca96598bde5              # double 0.94295186846823908
	.quad	0x3fe815d69780472a              # double 0.75266580190711818
	.quad	0x3fd7228fc4e6bdf6              # double 0.36148447254797078
	.quad	0x3fc0f78519afe870              # double 0.13255370859389215
	.quad	0x3fcd5492c04b3ccc              # double 0.22914347066259777
	.quad	0x3fc619877fa01144              # double 0.17265409213735883
	.quad	0x3fe989a76c688afb              # double 0.79805346654424569
	.quad	0x3fd687aff72415b4              # double 0.35203169951304436
	.quad	0x3fe5e4cfe5c6a5e8              # double 0.68418116453284217
	.quad	0x3fe5e75d539183fb              # double 0.68449274370152524
	.quad	0x3fd030e81c64e214              # double 0.2529850270543943
	.quad	0x3fb0b8eab6224470              # double 0.065321607080720545
	.quad	0x3fc82526f5c61de0              # double 0.1886337947910155
	.quad	0x3fe20bcf69fab109              # double 0.56394167613100976
	.quad	0x3fec6a3a7d23df71              # double 0.88796734277182854
	.quad	0x3fa629950ca59ca0              # double 0.043285997194112413
	.quad	0x3fe32fb36baf7a68              # double 0.5995728591186209
	.quad	0x3fd2542b58f08ca8              # double 0.28638728795540169
	.quad	0x3fe5d3744d9045fc              # double 0.68206229352125503
	.quad	0x3fb69a5eb3f1de08              # double 0.088292998248896137
	.quad	0x3fe8d8eeaf6c6673              # double 0.77648100149526866
	.quad	0x3fdc0ef579ff3c78              # double 0.43841301835795532
	.quad	0x3fd4f22c27d36ef4              # double 0.32728103532075115
	.quad	0x3fea82f7a33bf693              # double 0.82848722345052506
	.quad	0x3fc36fb023e33b04              # double 0.15184594871831092
	.quad	0x3fe62aa6686d4197              # double 0.69270630260330079
	.quad	0x3fee8154389d6d89              # double 0.95328723008735594
	.quad	0x3fe93f73eeeaf4ed              # double 0.78899571097977417
	.quad	0x3fe206f05e4b6a10              # double 0.56334703843032408
	.quad	0x3fea0c6807fbf752              # double 0.8140144496862638
	.quad	0x3fe40133ed4a2868              # double 0.62514683099403801
	.quad	0x3fdacba752ae6444              # double 0.41868002962434425
	.quad	0x3fd59c6d18688b42              # double 0.33767249473219263
	.quad	0x3fd9dff118847268              # double 0.40429332155489428
	.quad	0x3fef30adc55f595d              # double 0.97469223546321936
	.quad	0x3fe67125f9fda1d7              # double 0.70131205393141272
	.quad	0x3fd120eebb5fe9d6              # double 0.26763504312807862
	.quad	0x3feae2a3b65f8105              # double 0.8401659547780872
	.quad	0x3fd2ab823d25ed9e              # double 0.29171806308269221
	.quad	0x3fc8a119790f810c              # double 0.19241636668358131
	.quad	0x3fbd9e09f4f73428              # double 0.11569273214918552
	.quad	0x3fd2d7f1bf05abe4              # double 0.29443019537455783
	.quad	0x3fe4dc37d60bb802              # double 0.65188209348502846
	.quad	0x3f9142845e008520              # double 0.016855304944447203
	.quad	0x3feeda80ff2548c0              # double 0.96417283852704116
	.quad	0x3fe532cd6092184d              # double 0.66245144711934645
	.quad	0x3fe315ca805fdaa4              # double 0.59641003678446625
	.quad	0x3fde30c8f91f983e              # double 0.47172760323008223
	.quad	0x3fa28123a3ed8230              # double 0.036141504059518659
	.quad	0x3fee51bd5e8f8b01              # double 0.94747799366845709
	.quad	0x3faf0940e896bb00              # double 0.060617473976313008
	.quad	0x3fde19f1c8cd951c              # double 0.47033352479623303
	.quad	0x3fee6e05523d6272              # double 0.95093027174432465
	.quad	0x3fe560ebe79ecc81              # double 0.66808123815862086
	.quad	0x3fe60b61ba4bf3c1              # double 0.68888937364646818
	.quad	0x3fe057aed46d11c2              # double 0.51070348252738307
	.quad	0x3fbc0eb686fc55e0              # double 0.10959950252102812
	.quad	0x3fee8ad13ba53c28              # double 0.954445473189371
	.quad	0x3fdd6e717aeb8388              # double 0.45986592296508677
	.quad	0x3fcc573f24e9ace4              # double 0.22141255667097604
	.quad	0x3fe9266a3cf027b9              # double 0.7859393301198373
	.quad	0x3fe844916244d547              # double 0.7583701056779909
	.quad	0x3fec72f0f6824c90              # double 0.88903091570172599
	.quad	0x3fbcaa5f2702a0d8              # double 0.11197466566466419
	.quad	0x3fe12cfeca1fd86b              # double 0.53674258687420939
	.quad	0x3fe9b70ea1d79258              # double 0.8035958443620741
	.quad	0x3fde19fcfc9bcfaa              # double 0.4703361956483102
	.quad	0x3fed9dd8facc19c4              # double 0.92551850303498683
	.quad	0x3fdd0695e1748810              # double 0.45352694527730453
	.quad	0x3feb562bee9cebd5              # double 0.85426899532410039
	.quad	0x3fda9bd5e00e1b5a              # double 0.41576144104367574
	.quad	0x3fe919cdf6d675f8              # double 0.78439996920104615
	.quad	0x3fe66af29f02ce42              # double 0.700555143898278
	.quad	0x3fd3ae343af1673e              # double 0.30750756984854266
	.quad	0x3fc49170a9c443f4              # double 0.160688479322317
	.quad	0x3fe1f200fef2800a              # double 0.56079149050128874
	.quad	0x3fe0f21b818c01de              # double 0.52955413152818287
	.quad	0x3fd3acd44cc149c6              # double 0.3074236630974635
	.quad	0x3fd142ad747ab40c              # double 0.26969467520649526
	.quad	0x3fd07a263d0c8ac0              # double 0.25745540582481041
	.quad	0x3fdc26854c2a70b2              # double 0.43985111654343279
	.quad	0x3fe2266416ac325f              # double 0.56718639782190994
	.quad	0x3fd28ff5162aeafa              # double 0.29003646054086085
	.quad	0x3feea2764e121611              # double 0.95733180282758401
	.quad	0x3fa67694dcedfa40              # double 0.043873455017991336
	.quad	0x3fd4450f7e7d8a66              # double 0.31671511986329504
	.quad	0x3fdbc9b2c9684a70              # double 0.43418569248857519
	.quad	0x3fe4a18cb51203b1              # double 0.6447204147844926
	.quad	0x3fdd391bad158a96              # double 0.45661060240505813
	.quad	0x3fecd779a6a8cf82              # double 0.90130312491099596
	.quad	0x3fe4567c1dab0f5a              # double 0.63555722994395158
	.quad	0x3f7d637b2412b500              # double 0.0071749506179632494
	.quad	0x3fe1b81f7e7e5cf2              # double 0.55372595506460542
	.quad	0x3fc38de1bc94b6a4              # double 0.15276738842060411
	.quad	0x3fecd02bb78c30fd              # double 0.90041147088189144
	.quad	0x3fb849517a247db0              # double 0.094868748016316173
	.quad	0x3fe2a790b1ac2f8d              # double 0.58295473767928885
	.quad	0x3fb9dc7e843a35c8              # double 0.10102072456557842
	.quad	0x3fe016715485503b              # double 0.50273958690605214
	.quad	0x3f90d7610fa204a0              # double 0.016446606234698735
	.quad	0x3fc9a8efa5affbb4              # double 0.20046802129942665
	.quad	0x3fe6ba5c013c9194              # double 0.71024894944689487
	.quad	0x3fe841419f2d8a7b              # double 0.75796586121971588
	.quad	0x3fb3f7119398f8d8              # double 0.077988718542630564
	.quad	0x3feba2e4430a5c43              # double 0.86363423436967712
	.quad	0x3fd3b798d5a02b4a              # double 0.30808087217217361
	.quad	0x3fd854058594958c              # double 0.38012826962434398
	.quad	0x3fec0db02c468b5f              # double 0.87667091987200851
	.quad	0x3fd0408937a29dfa              # double 0.25393896515967607
	.quad	0x3fdc6e5f8f8e5244              # double 0.44423665064940487
	.quad	0x3fe36b0b39357337              # double 0.6068168752059141
	.quad	0x3fe752e08b51c291              # double 0.72886683665099572
	.quad	0x3fcb03718e959790              # double 0.21104258978010337
	.quad	0x3fcc2321e194ecb4              # double 0.21982215418561213
	.quad	0x3fda004a54adf1ec              # double 0.40626772183875803
	.quad	0x3fae8be4c6100380              # double 0.059661053826864041
	.quad	0x3fb89b7c624920d0              # double 0.096122526164552413
	.quad	0x3fe800323bf32654              # double 0.75002395352312101
	.quad	0x3fdc9f02daafc032              # double 0.44720527034860702
	.quad	0x3fe53a1a43008967              # double 0.66334260069224349
	.quad	0x3fed64e1729b8f02              # double 0.91856453308398067
	.quad	0x3fe3cbf306d6dbf7              # double 0.61864615760612096
	.quad	0x3fe62c636183b820              # double 0.69291848226362518
	.quad	0x3fd0d935dacdd95a              # double 0.26325746886813806
	.quad	0x3fd04bfab40e64dc              # double 0.25463740905395382
	.quad	0x3fd18b3682f3cdd0              # double 0.27412188328090981
	.quad	0x3fdf4f47c1e0ed38              # double 0.48921388562640145
	.quad	0x3feeb212ff9e189a              # double 0.95923757481866123
	.quad	0x3feb19ca84ba5dc5              # double 0.84689832614360994
	.quad	0x3fef020eca60674b              # double 0.96900119330096268
	.quad	0x3fb205e31708da28              # double 0.070402329562832322
	.quad	0x3fe26d1b7b36fdb7              # double 0.57581876817123756
	.quad	0x3fdab4c083bf1fd6              # double 0.41728222719075114
	.quad	0x3fe0aaeb2eb4309b              # double 0.52086409684990842
	.quad	0x3fdea6cad02464fe              # double 0.47893019033797646
	.quad	0x3fe60d2e80cb7dce              # double 0.68910908847095143
	.quad	0x3fca8c56cb7e9058              # double 0.20740780769586098
	.quad	0x3fd564baa31ff2b2              # double 0.3342730134025188
	.quad	0x3fe5885dded539db              # double 0.67289632341435934
	.quad	0x3fb63bebbb1755f0              # double 0.086851819206763769
	.quad	0x3fe88349e18630f5              # double 0.76602644012157717
	.quad	0x3fab5111f38aad30              # double 0.053352890948497822
	.quad	0x3fd5aee81d4ed1c8              # double 0.33880045759294974
	.quad	0x3fe31d384f05c1bb              # double 0.5973168891342121
	.quad	0x3fe889e09c0d0d63              # double 0.7668307350035487
	.quad	0x3fe1c9e9bfadf0c5              # double 0.55589759290116858
	.quad	0x3feab60a704a1ea8              # double 0.83472177440213091
	.quad	0x3feafa070a683c6a              # double 0.84302093536997558
	.quad	0x3fe840f1f3e4f003              # double 0.7579278720436381
	.quad	0x3fe00be4ae0f6b13              # double 0.50145181652200888
	.quad	0x3feee2d5d68d932e              # double 0.96518985657585232
	.quad	0x3fe00037666eae79              # double 0.50002641683882054
	.quad	0x3fe593a01c0f4938              # double 0.67427068214809704
	.quad	0x3fecf7752b6d98eb              # double 0.90520723802617675
	.quad	0x3fb29600565a2e90              # double 0.072601338464830301
	.quad	0x3fe51e4ada6df644              # double 0.65994780218142823
	.quad	0x3fd89cb36e29fcf0              # double 0.38456426389889398
	.quad	0x3fe511a8280f056b              # double 0.65840537857017745
	.quad	0x3feb160a84840b5b              # double 0.84644056207649088
	.quad	0x3fd3b6698688b9e0              # double 0.30800855768293722
	.quad	0x3fbb87e90403c900              # double 0.10754257534043532
	.quad	0x3f9ceec3b54e54c0              # double 0.028254564229048595
	.quad	0x3fdbe16399b2a742              # double 0.43563165673787207
	.quad	0x3fee9e142d21f843              # double 0.9567967301843584
	.quad	0x3fed01c71cb02847              # double 0.90646701434275989
	.quad	0x3fcc56cc4e3bd948              # double 0.22139886684426302
	.quad	0x3fce8916e2281070              # double 0.23855863611982242
	.quad	0x3fea8dc913da63d1              # double 0.82980779531055238
	.quad	0x3fe593cd6f3d4afa              # double 0.67429229475450758
	.quad	0x3fb0d20849190f98              # double 0.065704839559712958
	.quad	0x3fe747649b70f2e1              # double 0.72746496543512873
	.quad	0x3fc0adaae88767d4              # double 0.1302999148745686
	.quad	0x3fdd62cfac26a6c2              # double 0.45915595828646982
	.quad	0x3fa5846301582df0              # double 0.042025655664556072
	.quad	0x3fe114f492ce7c5b              # double 0.53380802796517501
	.quad	0x3feb7d899fc43e5d              # double 0.85907441334161272
	.quad	0x3feadb96849218a5              # double 0.83930517094338042
	.quad	0x3fec052e4ddc4ee9              # double 0.87563243109840727
	.quad	0x3fdafe202f535d54              # double 0.42176060315747077
	.quad	0x3feed731159a741e              # double 0.96376852244759781
	.quad	0x3fe92e8f82d575e4              # double 0.78693366578562207
	.quad	0x3fd48e6290c532f8              # double 0.32119049203610883
	.quad	0x3fe015a5b190f70e              # double 0.50264248543655454
	.quad	0x3fe3f62d0ac99842              # double 0.62380077464036554
	.quad	0x3fe7d3b3ef4ac3f9              # double 0.74459263550499977
	.quad	0x3fe2551a754304c2              # double 0.57288859274572013
	.quad	0x3fdd497e189750ec              # double 0.45761063004944336
	.quad	0x3fdf9ae309bde592              # double 0.49382854415269961
	.quad	0x3fc27f11c3034828              # double 0.14450284978971806
	.quad	0x3fec97eb29998cb3              # double 0.89354475140534928
	.quad	0x3fe08670b5d41d06              # double 0.51641116631881867
	.quad	0x3fec514b90352f95              # double 0.88492372670724484
	.quad	0x3febced10d870cc0              # double 0.86899616853806805
	.quad	0x3fedbcd276321946              # double 0.92929957470986646
	.quad	0x3fd7dacbac77c85a              # double 0.3727292236573071
	.quad	0x3fd0e5e49a395ed2              # double 0.26403155384967392
	.quad	0x3fdf8a6b69187e26              # double 0.49282346022843837
	.quad	0x3fd4b714542186ce              # double 0.32367428031839729
	.quad	0x3f86cb6d36649bc0              # double 0.011130192968790698
	.quad	0x3fe5cfd2b40b11f7              # double 0.68161902584739564
	.quad	0x3fec0d74a529376b              # double 0.87664253480919052
	.quad	0x3fa58db57f3112d0              # double 0.042096778656320333
	.quad	0x3fef2886add74974              # double 0.97369703248322858
	.quad	0x3fde7d8a1dbcb9c0              # double 0.47641232399010036
	.quad	0x3f95ad941f384740              # double 0.021169962316043511
	.quad	0x3feab92e546e5a32              # double 0.83510509958688872
	.quad	0x3fc4d4188113edc4              # double 0.16272264769200551
	.quad	0x3fdeebc3d0a57f4e              # double 0.48313994765884594
	.quad	0x3fe909843ed1cb09              # double 0.78241169232782781
	.quad	0x3fe434f654f5d61e              # double 0.6314651164418057
	.quad	0x3fe70af8d5b78ed8              # double 0.72008935681921127
	.quad	0x3fc80879c443ee08              # double 0.18775865634221156
	.quad	0x3fe45c7aab272005              # double 0.6362889616802937
	.quad	0x3fe2936f45b77bdf              # double 0.58049739471959672
	.quad	0x3fdda6500fae20b2              # double 0.46327592402713969
	.quad	0x3fe7db790332f6c9              # double 0.74554110169238996
	.quad	0x3fcab2bc89f9cd30              # double 0.20857960450266821
	.quad	0x3fade28aa1312a50              # double 0.058368999649776598
	.quad	0x3fef329cf7c9e04d              # double 0.97492836376387403
	.quad	0x3fd9f364dcc5759e              # double 0.40548059043597984
	.quad	0x3fe283695acd9019              # double 0.57854144797284157
	.quad	0x3fa1cfe695c304d0              # double 0.034789281636685154
	.quad	0x3fcdefa47ef2f7f4              # double 0.23387581061064078
	.quad	0x3fe50945ee8c8498              # double 0.65738197890836414
	.quad	0x3fc16d0e66b2b6b4              # double 0.13614063276820831
	.quad	0x3fd94702614e8214              # double 0.39495906355480881
	.quad	0x3fd2db584956f0ea              # double 0.29463774835654866
	.quad	0x3fbb1749d99b7ff8              # double 0.10582410395318209
	.quad	0x3fc076e09a633ef8              # double 0.12862784899197499
	.quad	0x3fccc173597528f8              # double 0.22465364330339077
	.quad	0x3fe6140548758440              # double 0.68994392540128757
	.quad	0x3fe0bf23b593446f              # double 0.52333245719831989
	.quad	0x3fd04d6a35386de2              # double 0.25472502896601956
	.quad	0x3feb273d21cebd8d              # double 0.84853989222567494
	.quad	0x3fc6053bf2e0eacc              # double 0.17203473433786198
	.quad	0x3fd78247593dd9b0              # double 0.36732658114433558
	.quad	0x3fd7e5e1679f1bf2              # double 0.37340579146660879
	.quad	0x3fe1f569a0cb40e0              # double 0.56120759396619846
	.quad	0x3fda40cd0b5586b2              # double 0.41020513636440648
	.quad	0x3faa6c393684a6d0              # double 0.051606929688501446
	.quad	0x3fe2d32def70edef              # double 0.58827873960347954
	.quad	0x3fd8abf9d231c238              # double 0.38549657370370793
	.quad	0x3fedf7b37198ed97              # double 0.93648693263041849
	.quad	0x3fe8ba24aea830d2              # double 0.77272256958669971
	.quad	0x3fe03e7e6747a411              # double 0.50762863323064
	.quad	0x3fea928279d36eae              # double 0.83038448137400223
	.quad	0x3fa5551c863424f0              # double 0.041664973623548707
	.quad	0x3fe4597784af57a8              # double 0.63592124857926979
	.quad	0x3fe9e4c650b0bb24              # double 0.80917659530482355
	.quad	0x3fe6f7e111b9768f              # double 0.71775868856248504
	.quad	0x3fec74c62346c14b              # double 0.88925463571471519
	.quad	0x3fbe494ecc4f06c8              # double 0.11830608833318046
	.quad	0x3fe782fd45a75acb              # double 0.7347399101662061
	.quad	0x3fc95fb903cec610              # double 0.19823372541354489
	.quad	0x3fd2771a7e47cdb6              # double 0.28851950008467087
	.quad	0x3fd1b9598d760336              # double 0.27693785490560019
	.quad	0x3fd2db48153e80ee              # double 0.29463388514160627
	.quad	0x3fe1cec06428a6d4              # double 0.55648822366966977
	.quad	0x3fea46f6128b5d4f              # double 0.82116225835754075
	.quad	0x3fdc396dbc5b22c0              # double 0.441005166951566
	.quad	0x3fe2c11e5497ade5              # double 0.58607403299305061
	.quad	0x3fe88c8ec800b5cb              # double 0.76715792716066156
	.quad	0x3fd4a551fd55eade              # double 0.32259034862333447
	.quad	0x3fc2350b47429250              # double 0.14224377612585437
	.quad	0x3fc4c229ccaa00c0              # double 0.16217539304125772
	.quad	0x3fd7e793d1693280              # double 0.37350936365400145
	.quad	0x3fdd377370a162e8              # double 0.45650945662559517
	.quad	0x3fe0729c865cbfab              # double 0.51399065249096532
	.quad	0x3fdb050fd71224ce              # double 0.42218395236029671
	.quad	0x3fd3674684f0db8a              # double 0.30317843420510171
	.quad	0x3fd46ab0bb63dac2              # double 0.31901186275301197
	.quad	0x3fee719baab23de8              # double 0.95136817301857679
	.quad	0x3fe1c68cc13cbbf4              # double 0.55548703900956165
	.quad	0x3fb2959b2150d628              # double 0.072595306047184338
	.quad	0x3fb96c041a701938              # double 0.099304443792878838
	.quad	0x3fe2a124a75c72bc              # double 0.58217079818458428
	.quad	0x3fbfa80fc2bb4660              # double 0.12365816597164203
	.quad	0x3fe5389bf4b7a160              # double 0.66316030308102469
	.quad	0x3fe62b6a2055ba77              # double 0.69279962840467035
	.quad	0x3fe2505fe7e5cd28              # double 0.57231135647308395
	.quad	0x3fd9c602754186da              # double 0.40271054697778441
	.quad	0x3fe9f3fd0249455e              # double 0.81103372999693213
	.quad	0x3fd4946b309ea4c8              # double 0.32155875919358978
	.quad	0x3fd56330e33b066e              # double 0.33417913618550343
	.quad	0x3fad92a7233cdb00              # double 0.057759497691611372
	.quad	0x3fdbaac026c89d96              # double 0.43229678904978053
	.quad	0x3fe1f29319cf2647              # double 0.56086115876059572
	.quad	0x3fe7fbe082dbac29              # double 0.7494967037031347
	.quad	0x3fe566dea3404abe              # double 0.66880733380306601
	.quad	0x3fd931f3a3223286              # double 0.3936738103009606
	.quad	0x3fe8a09e3b20835c              # double 0.769606700403624
	.quad	0x3fef88322b54e451              # double 0.98537548506932115
	.quad	0x3fcdc8f6e85c4b98              # double 0.2326954493115323
	.quad	0x3f9f4e6e7f7aae00              # double 0.030572630434717141
	.quad	0x3fe847ba27dd9c67              # double 0.75875575815451846
	.quad	0x3fe3cbb6eb942f31              # double 0.61861749660008603
	.quad	0x3fef58f25cf240ab              # double 0.9796077552182586
	.quad	0x3fc3cbcb7da2ca8c              # double 0.15465682634893019
	.quad	0x3fd6109688784654              # double 0.34476245238429226
	.quad	0x3fdaab2a7a6f60aa              # double 0.4166971393256157
	.quad	0x3feecc82cd1e581c              # double 0.96246471464360494
	.quad	0x3facdf9cac084350              # double 0.056393524169954135
	.quad	0x3fc9375eba171bb8              # double 0.19700225912512592
	.quad	0x3fe99ebbd3f4670b              # double 0.80062667271997279
	.quad	0x3fed3d281e4b5adb              # double 0.91371541897646169
	.quad	0x3fcf1130c52d0060              # double 0.24271211269115422
	.quad	0x3fcbf223be490dc4              # double 0.2183270148399129
	.quad	0x3fd4aaf352037e0e              # double 0.32293398865837808
	.quad	0x3f8f758d066b1000              # double 0.015360929258697809
	.quad	0x3fea054c6fb5e0d7              # double 0.81314679926347366
	.quad	0x3fc8f25b74a90454              # double 0.19489615627574841
	.quad	0x3fbc42f76b4d5728              # double 0.11039682740860413
	.quad	0x3fdfc37549393006              # double 0.49630481863710008
	.quad	0x3f752781856b2180              # double 0.005164628927282755
	.quad	0x3fd55aed0ffb3d10              # double 0.33367468414958612
	.quad	0x3fec54b002ca14bd              # double 0.8853378347854669
	.quad	0x3fd8f1ccbaa83fca              # double 0.38975828388447253
	.quad	0x3fd6396b8e3621c6              # double 0.34725464713895027
	.quad	0x3fcac9f0464bb8f8              # double 0.20928767616664579
	.quad	0x3fd6116ee3ac3088              # double 0.34481403573659763
	.quad	0x3f94e60f36066700              # double 0.020408857033181071
	.quad	0x3fe31bfa31087c6c              # double 0.59716519905840704
	.quad	0x3fd74362650da702              # double 0.36348781460274904
	.quad	0x3fb84af53ce3af80              # double 0.094893767705512388
	.quad	0x3fe3e45bf6b0b968              # double 0.6216258829279413
	.quad	0x3fdbe2110637f426              # double 0.43567300421983857
	.quad	0x3fc10062c8b762c0              # double 0.13282427597621016
	.quad	0x3fe23aa5e4f728e7              # double 0.56965918273752159
	.quad	0x3fdf9c2958ded836              # double 0.49390634230383357
	.quad	0x3fe56f52e499f0f6              # double 0.66983933113763672
	.quad	0x3fe1617204dde809              # double 0.54314518881369722
	.quad	0x3fd49651f5ec848a              # double 0.3216748143768845
	.quad	0x3fd570b0f9b2d8d6              # double 0.33500313171988461
	.quad	0x3fdd53a0775e19da              # double 0.45822917611113001
	.quad	0x3fe02ffaf57f77cf              # double 0.50585697125256412
	.quad	0x3fd390a9b0c21560              # double 0.30570451985871294
	.quad	0x3fe0dd38ed069b78              # double 0.52700468343833418
	.quad	0x3fdfc2ec31f45c88              # double 0.4962721336209559
	.quad	0x3fd10c244dea3560              # double 0.26636607750773145
	.quad	0x3fdc8a1eb29f9540              # double 0.44593017047585093
	.quad	0x3fd43860cdc71fb6              # double 0.31594104857912997
	.quad	0x3fbed37a42198970              # double 0.12041439164889822
	.quad	0x3fe3f9b9f6106cf9              # double 0.6242341810169868
	.quad	0x3fe23673b6193dea              # double 0.56914697233326916
	.quad	0x3febc40093f45d52              # double 0.86767605683682292
	.quad	0x3fec33d0ce9388b2              # double 0.88132515284475788
	.quad	0x3fbc4792e4df2368              # double 0.11046712958990457
	.quad	0x3fe7f172acef635b              # double 0.74822362686527855
	.quad	0x3fd0e8439f94ccd0              # double 0.26417627891642059
	.quad	0x3feeac42393b4132              # double 0.95852767160434937
	.quad	0x3feff5f10362912f              # double 0.99877215062273261
	.quad	0x3fe06bd9d23fc77f              # double 0.51316538872036677
	.quad	0x3fb1bdd54a574700              # double 0.06930287423099557
	.quad	0x3fdbcc052c48f9be              # double 0.43432740521157231
	.quad	0x3fe8d289b409c5ee              # double 0.77570042766290981
	.quad	0x3fe0dec827f4499e              # double 0.52719505122722743
	.quad	0x3fe47912aaa71d0d              # double 0.63977940874693362
	.quad	0x3fcbcc9106dba0d0              # double 0.21718037447795391
	.quad	0x3fe463f47e2c7f28              # double 0.6372015442211465
	.quad	0x3fededd7ce5345c6              # double 0.93528356836230198
	.quad	0x3fcbe8f6bbf7fb0c              # double 0.2180469911399644
	.quad	0x3fd78f1cdc617e12              # double 0.36810990830960677
	.quad	0x3fd5401b0c87ca82              # double 0.33203769897151159
	.quad	0x3fea28b0e3e613f3              # double 0.81746716033432987
	.quad	0x3fd91cdd67739482              # double 0.39238677122768462
	.quad	0x3fc32be38bd0dff8              # double 0.14977688147496315
	.quad	0x3fd01884933fce62              # double 0.25149645213898542
	.quad	0x3fee286b810f420b              # double 0.9424340744681684
	.quad	0x3fb199e8ef8240c8              # double 0.068754728769138684
	.quad	0x3fe68707b331c0f1              # double 0.70398316382309478
	.quad	0x3fac4078a16e0830              # double 0.05517937632159009
	.quad	0x3fefa40d538f66c3              # double 0.98877588577598662
	.quad	0x3fa3cdb91be92350              # double 0.038678917557780523
	.quad	0x3fd5121a55e59532              # double 0.32922991169319282
	.quad	0x3fe97ee22794d21d              # double 0.79673869829872823
	.quad	0x3fdfa6cb48b614c0              # double 0.49455530262669001
	.quad	0x3fe21101887b9c8a              # double 0.56457592636879039
	.quad	0x3fdd7f4d3b116f7e              # double 0.46089487808580276
	.quad	0x3fe992ef8ef1d852              # double 0.79918649596107572
	.quad	0x3fc1c27e3893af74              # double 0.1387479568724036
	.quad	0x3fdc85e871a347c8              # double 0.44567309472506311
	.quad	0x3fe7d66afff3f7e5              # double 0.74492406836338587
	.quad	0x3fee17923b740544              # double 0.9403773461528222
	.quad	0x3fcfc052953e712c              # double 0.24805671965885645
	.quad	0x3fe2f457d6a2b7fe              # double 0.59232704087276011
	.quad	0x3fb0e5398b993678              # double 0.065997692662870366
	.quad	0x3fe4d024ca967955              # double 0.65040816848685756
	.quad	0x3fe5941c5404a3c3              # double 0.67432991418638044
	.quad	0x3fb40bb6d9654c60              # double 0.078303745341416597
	.quad	0x3fdeff31fed134ec              # double 0.48432588467114956
	.quad	0x3f96257b8519d920              # double 0.021627359389151057
	.quad	0x3fdb5c3a2764493c              # double 0.4275040993390069
	.quad	0x3fc488f0cc7ff74c              # double 0.1604290960821636
	.quad	0x3fcfa65e308d6e08              # double 0.24726464625096889
	.quad	0x3fcca75c4d0a0440              # double 0.22385743867565289
	.quad	0x3fcab9fe2932f114              # double 0.20880105029744611
	.quad	0x3fe642bc7f05e67f              # double 0.69564652260960702
	.quad	0x3fcffb044b0830d8              # double 0.24984792388602872
	.quad	0x3fd6e954f6666e36              # double 0.35799144804488792
	.quad	0x3fdc6fdaa5b221fa              # double 0.44432703191026202
	.quad	0x3fe923b9c1054b04              # double 0.78561103534079324
	.quad	0x3fc928f79278403c              # double 0.19656271602480213
	.quad	0x3feb80d6e50262a1              # double 0.85947746971494976
	.quad	0x3fab044a956fee10              # double 0.052767115346764482
	.quad	0x3fda8d01fabc6c3a              # double 0.41485642896595076
	.quad	0x3fe9f12979432514              # double 0.81068872150459236
	.quad	0x3fef3c822469c2e8              # double 0.97613627540530689
	.quad	0x3fe8a426709ca165              # double 0.77003786081790493
	.quad	0x3fc534d9bf80b7ac              # double 0.16567537165377411
	.quad	0x3fea8a184c7f1ab9              # double 0.82935728970263434
	.quad	0x3fe2719aca628883              # double 0.57636775520610717
	.quad	0x3fd47963287349ba              # double 0.31990889501789932
	.quad	0x3f97e10e4c5d5720              # double 0.023319457446027703
	.quad	0x3fdb008eaa8dd8ca              # double 0.42190901427910588
	.quad	0x3fe0e1f2240b3f38              # double 0.52758128204184285
	.quad	0x3fe1b0716bc0a14b              # double 0.552788458303476
	.quad	0x3f8dd8d17e77f7c0              # double 0.014573704406753651
	.quad	0x3fd1716a90225b64              # double 0.27254737926107553
	.quad	0x3fe5a492dcfccb85              # double 0.67633956109635618
	.quad	0x3fefb3208cc53eb3              # double 0.99061610693202906
	.quad	0x3fe841853616b2a0              # double 0.75799809040252696
	.quad	0x3fe5457f048d4318              # double 0.66473341835998934
	.quad	0x3fe14ab483725f26              # double 0.54036927865215456
	.quad	0x3fef0f010c6e986a              # double 0.9705815546810872
	.quad	0x3fed7f692aeb5ab5              # double 0.92180307753263568
	.quad	0x3fe1378b52b130a7              # double 0.53803030157861975
	.quad	0x3feee1e18101dc36              # double 0.96507334896785468
	.quad	0x3fc0a82cd09ad2f4              # double 0.13013229547291127
	.quad	0x3fe42342ae34afbd              # double 0.62930425667354195
	.quad	0x3fe291fee9350eea              # double 0.580321746333053
	.quad	0x3fcab2be58a72fb0              # double 0.208579819953568
	.quad	0x3f9dcd014ea7fbc0              # double 0.029102344919006873
	.quad	0x3fe3a6a01d118f68              # double 0.61409001996478896
	.quad	0x3fed38abc4bd4188              # double 0.91316784310952048
	.quad	0x3fe1f5fb4720872b              # double 0.56127704517368693
	.quad	0x3fef1a664e274a45              # double 0.97197261108733157
	.quad	0x3fd154757f2ce1f8              # double 0.27077996654000414
	.quad	0x3fe4247e635dfab4              # double 0.62945479781759284
	.quad	0x3fe83a08b3397c70              # double 0.75708422665401365
	.quad	0x3fe4858353e5b448              # double 0.64129797350109019
	.quad	0x3fc30e3d8f69b260              # double 0.148872084642238
	.quad	0x3fe6fa5ea870b82b              # double 0.71806271456239779
	.quad	0x3fe4a860f9c0edaf              # double 0.64555405406956889
	.quad	0x3fde32d5740a7714              # double 0.47185264904133928
	.quad	0x3fc1114efda24d54              # double 0.13334071526024138
	.quad	0x3fe3cd3f5c97a3a3              # double 0.61880462727014096
	.quad	0x3fe528e85bb0a428              # double 0.66124360950664585
	.quad	0x3fe47e256ac8d5bf              # double 0.64039870125150589
	.quad	0x3fdbaa22ac3064b0              # double 0.43225924315772613
	.quad	0x3fe7a874dc531c30              # double 0.73931353599699001
	.quad	0x3fe2472eedb3d5ab              # double 0.57118936945214693
	.quad	0x3fd631d75bddfc0c              # double 0.34679206820868624
	.quad	0x3fbb062b08fdca48              # double 0.1055628678275663
	.quad	0x3feba9f206dadb00              # double 0.86449529017303917
	.quad	0x3fd475ad72b6157c              # double 0.31968246652862553
	.quad	0x3fecc84aa59b4788              # double 0.89944965691596312
	.quad	0x3fef144eaebb3733              # double 0.97122892501076873
	.quad	0x3fe2bac6ddd63007              # double 0.58529990508532215
	.quad	0x3fdba2a0ed50c6f4              # double 0.43180106330247203
	.quad	0x3fbdbd4c158e1ea0              # double 0.116169696104516
	.quad	0x3fd0550d3631e38e              # double 0.25519113819569206
	.quad	0x3fee733655a42395              # double 0.951563994663149
	.quad	0x3fdeb25250888c64              # double 0.47963388313855249
	.quad	0x3fe35a510f6f6d93              # double 0.60477498068523727
	.quad	0x3fe0fe4dc67e27e6              # double 0.53104294555782583
	.quad	0x3fe168e4bce244c2              # double 0.544054383195679
	.quad	0x3fd23064e95dd918              # double 0.28420374669748716
	.quad	0x3fecffb0615c15ac              # double 0.90621203437392727
	.quad	0x3fefba62d483de83              # double 0.99150220400675015
	.quad	0x3fe7fc3b65a53d8d              # double 0.74954004147177644
	.quad	0x3fd093f1fe0b52c2              # double 0.25902986344344126
	.quad	0x3fc8b629f31dcf88              # double 0.19305920000953969
	.quad	0x3fe6e8e213017c84              # double 0.71592811309882665
	.quad	0x3fd32cd48580b218              # double 0.29961121594786411
	.quad	0x3fe59b695d06877c              # double 0.67522113961261665
	.quad	0x3fd82a3007cf7af4              # double 0.37757492792836378
	.quad	0x3feb616e4a8a62a7              # double 0.85564341124252941
	.quad	0x3fa24a465884d920              # double 0.035722921662840301
	.quad	0x3fa29a97e3c55990              # double 0.03633570342451542
	.quad	0x3fd4b1492675c82e              # double 0.32332066303127049
	.quad	0x3fde6cf73f150236              # double 0.47540074501378926
	.quad	0x3fd38357efe6cc9a              # double 0.30489157131086986
	.quad	0x3fefcfc331549ba9              # double 0.99411162981856648
	.quad	0x3fd8771b61de700c              # double 0.38226971204289906
	.quad	0x3fe47480281e7081              # double 0.63922126613353225
	.quad	0x3fc41cf8e5931078              # double 0.15713416299525185
	.quad	0x3fcc7e90f4c27a34              # double 0.22261249495655167
	.quad	0x3fd4807501ea7fc6              # double 0.32034039675818027
	.quad	0x3fac728245a16a90              # double 0.055561133384533723
	.quad	0x3fe2116556e96d7b              # double 0.5646235177513711
	.quad	0x3fd06b0a650424f0              # double 0.25653323998319788
	.quad	0x3fc5f9d57223b74c              # double 0.1716868216821531
	.quad	0x3fd545900ebc19f8              # double 0.33237077177946572
	.quad	0x3fddfae101ede54a              # double 0.4684374350395798
	.quad	0x3fcfff6341608b38              # double 0.24998131458513639
	.quad	0x3fe85162aeefcd28              # double 0.75993475119904463
	.quad	0x3fe8329fdc33a259              # double 0.75617974289077516
	.quad	0x3fe6d6f33c5d0092              # double 0.71373903073983258
	.quad	0x3fb61b9506f0cca0              # double 0.086358370012748598
	.quad	0x3fe0f148ff125f49              # double 0.52945375269607908
	.quad	0x3fd4453fc2635bb4              # double 0.31672662718977596
	.quad	0x3fef887abbd06697              # double 0.98541008646425864
	.quad	0x3fdec1b716b30eb0              # double 0.48057343689672916
	.quad	0x3fb42274692ea9f8              # double 0.078650737456577136
	.quad	0x3fe2b3dca1653290              # double 0.58445579073448251
	.quad	0x3fec86e223c5bc4a              # double 0.89146525370404928
	.quad	0x3fe0dc1c242c3dc1              # double 0.52686888756755235
	.quad	0x3fc927cff71f98a8              # double 0.19652747694562334
	.quad	0x3fdbd1d74d29a41c              # double 0.43468267951408435
	.quad	0x3fd59d1b7acb1174              # double 0.33771407119299757
	.quad	0x3fd01eb1727d4590              # double 0.25187336140251038
	.quad	0x3feafe6f5b92e42e              # double 0.8435589588690442
	.quad	0x3fd82747564d4ee8              # double 0.37739737918785332
	.quad	0x3fe65d3935f0e96f              # double 0.6988798192535749
	.quad	0x3fe97fa1ef45efb4              # double 0.79683014615101521
	.quad	0x3fe72ca0da96c76c              # double 0.72419779484901659
	.quad	0x3fe2abc928741fcc              # double 0.5834699430570196
	.quad	0x3fda920dbee79a74              # double 0.41516441004788551
	.quad	0x3fdc8fcfd41f94e2              # double 0.44627757754490294
	.quad	0x3fe47b694438c6b2              # double 0.64006484341208236
	.quad	0x3fd7cd5e1b8f30be              # double 0.3719096440443187
	.quad	0x3fdc7426135eead0              # double 0.44458915607144167
	.quad	0x3fe8fac1f5886bc2              # double 0.78061006503718766
	.quad	0x3fe5f9e9dc2b969a              # double 0.68675702096944069
	.quad	0x3f82fbb52b6a5d40              # double 0.0092691568254809064
	.quad	0x3febb37012987552              # double 0.86565402633611144
	.quad	0x3feb625d772fbe22              # double 0.85575745848285956
	.quad	0x3fe39916f395ebd9              # double 0.61243770194357261
	.quad	0x3feefb4c1ca56320              # double 0.96817594141893792
	.quad	0x3fb3a3cf8a076250              # double 0.076718302916000569
	.quad	0x3fec45925c2e9a27              # double 0.88349264149002671
	.quad	0x3feed3a875f42250              # double 0.96333716428586946
	.quad	0x3fe5f4db89652ab6              # double 0.68613983950611757
	.quad	0x3fee0dcc5383814d              # double 0.93918434439914622
	.quad	0x3fe1299e93e95199              # double 0.5363304985899503
	.quad	0x3fea4f3785e9b97b              # double 0.82217003016357582
	.quad	0x3fe07e45ce4b582b              # double 0.51541414539201946
	.quad	0x3fc5596f23d2dbd8              # double 0.16679181336596005
	.quad	0x3fcde5832b4b4930              # double 0.23356666196793574
	.quad	0x3fe2d67b28ea31b9              # double 0.58868177405525224
	.quad	0x3fe8d2d9f50663d3              # double 0.77573869568288456
	.quad	0x3fb4ee6589b89828              # double 0.081762643931683088
	.quad	0x3fcc459ce6e93b74              # double 0.22087441706613797
	.quad	0x3fe9339bff2bb2f8              # double 0.78754997098948731
	.quad	0x3fc4dcaa6d189ee8              # double 0.16298418356858879
	.quad	0x3fe967e71b3b785b              # double 0.79393344229516616
	.quad	0x3fe9c141f76fcbbb              # double 0.80484102561455673
	.quad	0x3fe127f48a5d2be4              # double 0.53612734817704366
	.quad	0x3fe37fd568f38222              # double 0.60935469148904908
	.quad	0x3feb3956f53e0222              # double 0.85074947260733702
	.quad	0x3fbf875e7bc1d2e0              # double 0.12315931817449721
	.quad	0x3fe19d928103fbc0              # double 0.55048489759780495
	.quad	0x3fdb3b69ff8da46c              # double 0.42550134617210378
	.quad	0x3fd7500641732a20              # double 0.36425930396640815
	.quad	0x3fd4c02141dd4460              # double 0.32422667915404269
	.quad	0x3fe18e6005d65178              # double 0.54862977161478366
	.quad	0x3f937f3a41f2b240              # double 0.019040022158764325
	.quad	0x3fa861877eb97560              # double 0.047619089335720899
	.quad	0x3fe783bef43260c0              # double 0.73483226484952269
	.quad	0x3fe4604022846053              # double 0.63674933187122418
	.quad	0x3feaa0330894b0c1              # double 0.83205558467809493
	.quad	0x3fb371832471bc30              # double 0.075950809857872725
	.quad	0x3fb9267a6ba7ad58              # double 0.098243380816417925
	.quad	0x3fbd5ffd40492108              # double 0.11474592990373733
	.quad	0x3fdb16f0d3b5c984              # double 0.42327519106688549
	.quad	0x3fea43ac0df962ff              # double 0.82076075295762496
	.quad	0x3fed715062184564              # double 0.92008227500097605
	.quad	0x3fee68cbf8fd7448              # double 0.95029257422323443
	.quad	0x3fe4962a0daa213f              # double 0.64333059948788918
	.quad	0x3febb18bd8a34dcf              # double 0.86542312919703501
	.quad	0x3feb8f87abbeaba5              # double 0.86127074760348832
	.quad	0x3fbb8fc6721f7340              # double 0.10766258512690019
	.quad	0x3fe994d5dea0271a              # double 0.79941838723718495
	.quad	0x3fe5824a11ba34de              # double 0.67215445959450526
	.quad	0x3fe406712a190b93              # double 0.62578638288720112
	.quad	0x3fd8b029d23b0892              # double 0.38575215845424637
	.quad	0x3fb3f94371872fb0              # double 0.078022208420576388
	.quad	0x3fe9c1b83d7d7de7              # double 0.80489742288403654
	.quad	0x3fcf091447f1e9bc              # double 0.24246457589090464
	.quad	0x3fd0a86b3fe43dc0              # double 0.26027947654162276
	.quad	0x3fd59bb84b7322c0              # double 0.33762938850535917
	.quad	0x3fd53f77508cfa3c              # double 0.33199866167334213
	.quad	0x3fef2048fbacfbde              # double 0.97269105105794629
	.quad	0x3fe68ac9058ca6a6              # double 0.70444155773039507
	.quad	0x3fc3399168a35d3c              # double 0.15019433602604149
	.quad	0x3fcc6883e1b2eff4              # double 0.22193954964120588
	.quad	0x3fea96a659d2c4c0              # double 0.83088986915222307
	.quad	0x3fe0b16743774a3d              # double 0.52165568520496886
	.quad	0x3fe333b979053f1e              # double 0.60006402623000432
	.quad	0x3fe08a621762c9a0              # double 0.51689247672611671
	.quad	0x3fb72b3c83459b50              # double 0.090503484772495257
	.quad	0x3fecf426d3151e13              # double 0.90480366923378808
	.quad	0x3fd47fa232cc65bc              # double 0.32029013596328659
	.quad	0x3fb21313207601e8              # double 0.070603557038345977
	.quad	0x3fd0125c70bac65e              # double 0.25112067230938873
	.quad	0x3fe6f1666af57e32              # double 0.71696778192921884
	.quad	0x3fd2d1fe904e8b16              # double 0.29406704037153142
	.quad	0x3fe70802cc31707d              # double 0.71972789651364588
	.quad	0x3faa2d51aa3cfa50              # double 0.051127006560353849
	.quad	0x3fd92e79ae176004              # double 0.39346162797073725
	.quad	0x3fc4bbb72d1ab768              # double 0.16197862341271763
	.quad	0x3fd2455a3cab07b2              # double 0.28548293995492735
	.quad	0x3fe194374b051831              # double 0.54934277202915471
	.quad	0x3fcd4151fa614a94              # double 0.22855591512287232
	.quad	0x3fda097c6e79bd9e              # double 0.40682898319843186
	.quad	0x3fd89a2f08e2cf5a              # double 0.38441062801142822
	.quad	0x3fddf82b71b6c348              # double 0.46827207665323956
	.quad	0x3fcae48cbadb1d00              # double 0.21009978412460129
	.quad	0x3fd0bac741979434              # double 0.26140004544714945
	.quad	0x3feca33acd568003              # double 0.89492549996430204
	.quad	0x3fa91ae639612040              # double 0.049033350471802795
	.quad	0x3feb659898c23090              # double 0.85615186534552556
	.quad	0x3feec57659e1af28              # double 0.96160428576465495
	.quad	0x3fd0133094bb80fe              # double 0.25117125057842304
	.quad	0x3fe169807172a6cd              # double 0.54412862928185179
	.quad	0x3fba15f08d80d200              # double 0.10189727263134074
	.quad	0x3f9ace49495ca140              # double 0.026177544691706744
	.quad	0x3fb8e2874b4ade78              # double 0.097206550485560927
	.quad	0x3febee94f392b205              # double 0.87287375996453476
	.quad	0x3feac3eec33084bd              # double 0.83641756174997506
	.quad	0x3fc64148aa78fcc8              # double 0.17386730502946635
	.quad	0x3fcf5435f39b7158              # double 0.24475740809328772
	.quad	0x3fc526ed6d9b50ec              # double 0.16525047160997219
	.quad	0x3fda05b73259af5e              # double 0.40659885327362655
	.quad	0x3fe84c4184b42a63              # double 0.75930858534531998
	.quad	0x3fce06808865a7c8              # double 0.23457342777265766
	.quad	0x3fba987f74645910              # double 0.10388943282700702
	.quad	0x3fecdb4a9a864213              # double 0.90176897221141628
	.quad	0x3feb321838d6c833              # double 0.84986506558767017
	.quad	0x3fe0eacf455b680b              # double 0.52866328760433257
	.quad	0x3fd08534d68733d6              # double 0.25813027334225802
	.quad	0x3fda3bd414f901a0              # double 0.40990163848985084
	.quad	0x3fd0e220969bc60a              # double 0.26380171497211846
	.quad	0x3fd6e01604997a00              # double 0.35742712449237501
	.quad	0x3fe1db333b406695              # double 0.55800782749720901
	.quad	0x3fcbb5dfc9ded5d4              # double 0.21648785931544856
	.quad	0x3fdc169c499301fe              # double 0.43888003525719899
	.quad	0x3fd788e41b218b6a              # double 0.36773016595377916
	.quad	0x3fd7bd2a8151f36a              # double 0.3709207785503198
	.quad	0x3fe11952887b99ad              # double 0.53434111267852347
	.quad	0x3fe29bc6705dd58f              # double 0.58151552149381469
	.quad	0x3fe27a45b79a4e84              # double 0.57742582187570735
	.quad	0x3fe5f9aac7462c8b              # double 0.68672694130636225
	.quad	0x3fcc83451658a0dc              # double 0.22275603858111637
	.quad	0x3fd4f6276ba99ee2              # double 0.32752404703067672
	.quad	0x3fea1bd454897a25              # double 0.81589714537750935
	.quad	0x3f902a52ae3ec9a0              # double 0.015786449322783391
	.quad	0x3fe1bd9c0296cb33              # double 0.5543956804816389
	.quad	0x3fe86d267cee1304              # double 0.76332401657472859
	.quad	0x3fee973242603250              # double 0.9559565826799119
	.quad	0x3feeb0846af8e4b5              # double 0.95904751675620636
	.quad	0x3fe55384da9a1e3b              # double 0.66644518562038202
	.quad	0x3fe15392254b9beb              # double 0.54145152363059645
	.quad	0x3fe89b874f311cb0              # double 0.76898541896016148
	.quad	0x3fd4b37fd54d0f10              # double 0.32345577078034271
	.quad	0x3fea7e5f4d08522f              # double 0.82792630238924925
	.quad	0x3fe6bf489b34ad44              # double 0.71085005105616306
	.quad	0x3fcf36743f381218              # double 0.24384930693499096
	.quad	0x3fee805563c288ef              # double 0.9531657169757447
	.quad	0x3fd5031617f76546              # double 0.3283133729979294
	.quad	0x3f90d7ecc0752240              # double 0.016448687788655159
	.quad	0x3fb371b63a3487e8              # double 0.075953854761365514
	.quad	0x3fe63a1db66f7b04              # double 0.69459424621513266
	.quad	0x3fcec4495622de50              # double 0.24036518770093318
	.quad	0x3fb36f66222df9b0              # double 0.075918563217760803
	.quad	0x3fe1ebdf8b5aa248              # double 0.56004311769090354
	.quad	0x3fe3536cf9e557d3              # double 0.6039337998179185
	.quad	0x3fe41811ffaa8ee1              # double 0.62793826994717616
	.quad	0x3fde87a55f264f8a              # double 0.47702917377431986
	.quad	0x3feec1528921a201              # double 0.96109892638656913
	.quad	0x3fe8d496a38b5489              # double 0.77595073644865054
	.quad	0x3fc256b030533fd0              # double 0.14327051505688226
	.quad	0x3fc1645cc0d6d010              # double 0.13587531486484794
	.quad	0x3fe25f57a4c80051              # double 0.57413847144926866
	.quad	0x3fe5ca121f3b9862              # double 0.68091684436945976
	.quad	0x3feb0a576dc28748              # double 0.84501239240146564
	.quad	0x3fe6a8b59c63ac78              # double 0.70809441132349971
	.quad	0x3fc48e850ae74368              # double 0.16059935600653863
	.quad	0x3fad8eb8db8f33c0              # double 0.057729508210833114
	.quad	0x3fe9d09fd4a82186              # double 0.80671683821223961
	.quad	0x3fe2f1e597fdd943              # double 0.59202842412813828
	.quad	0x3fd89895f558ae42              # double 0.3843130966149354
	.quad	0x3fc17f76a0e20148              # double 0.13670237403494867
	.quad	0x3fc8e9221fe93b6c              # double 0.19461466367871638
	.quad	0x3fcbddb2e4e76088              # double 0.21770321061081099
	.quad	0x3feb5a69b82e81ed              # double 0.85478673909170555
	.quad	0x3fe23516d4cdf07d              # double 0.5689806133591585
	.quad	0x3fefdc9da2a0969e              # double 0.99568063510078608
	.quad	0x3fe984df33374eb6              # double 0.79746971133359668
	.quad	0x3fe00051b7defd62              # double 0.50003896629634093
	.quad	0x3fcf72041119e8d8              # double 0.24566698870677928
	.quad	0x3fda8f94ad075d0a              # double 0.41501347443905046
	.quad	0x3fdb13f2358faf4a              # double 0.42309241514771101
	.quad	0x3fe9f28c469fa00c              # double 0.81085790437373495
	.quad	0x3fb1f1e9c32455c8              # double 0.070097551481317244
	.quad	0x3fd41dc162f162b2              # double 0.31431612646478435
	.quad	0x3fc0df4d96bc05dc              # double 0.13181466922837515
	.quad	0x3fee7af3fcd61cb7              # double 0.95250892049889202
	.quad	0x3fefdec493dd2305              # double 0.99594334487582669
	.quad	0x3fd5e9a61743ad8e              # double 0.34238579055701102
	.quad	0x3fdef710f2d8192c              # double 0.48382972445723982
	.quad	0x3fbb32829f07c338              # double 0.10623947508407816
	.quad	0x3fdb853d3e3d7868              # double 0.4300072772802026
	.quad	0x3fd102857ef953d2              # double 0.26577889823721279
	.quad	0x3fd9a73eb1648e0c              # double 0.40083281825556649
	.quad	0x3fbbecea86086178              # double 0.10908380291255593
	.quad	0x3fda3322f9287c18              # double 0.40937113124704316
	.quad	0x3fee397dbb7aa8e0              # double 0.94451796166438484
	.quad	0x3fe3f4cede5a8505              # double 0.6236337988704298
	.quad	0x3fc19847cee42cc0              # double 0.13745973207583084
	.quad	0x3fd6adbf7fdf2aa8              # double 0.35435473906970083
	.quad	0x3febc0c343f2e96b              # double 0.86728060981049049
	.quad	0x3fecbf7d7d0671cc              # double 0.89837526720980909
	.quad	0x3fb274196fe278c8              # double 0.072084035697545734
	.quad	0x3fae35b1f0d65510              # double 0.059003410958363145
	.quad	0x3fd5c01d48972774              # double 0.33985073174391478
	.quad	0x3fefb9b9fb140033              # double 0.99142169035622484
	.quad	0x3fd5ade8010ea52a              # double 0.33873939612620296
	.quad	0x3fe611e040956b33              # double 0.68968212713239152
	.quad	0x3fe68663bc177cd3              # double 0.70390497910184491
	.quad	0x3fe8e59ddcfe0066              # double 0.77802937662637528
	.quad	0x3fd2e67f2c3b8ace              # double 0.29531840629185246
	.quad	0x3fec8955340b80ca              # double 0.89176426091219096
	.quad	0x3fea34b0525d6136              # double 0.81893173300617295
	.quad	0x3fc031e60578dbf4              # double 0.12652278201286971
	.quad	0x3fe799dc989cb51e              # double 0.73753194624956442
	.quad	0x3fedbbc018cee35f              # double 0.92916874738066813
	.quad	0x3fe5686251aba1dc              # double 0.66899219466455007
	.quad	0x3fd639a8b7c0f560              # double 0.34726922936154914
	.quad	0x3fc6afc5216f4550              # double 0.1772390759711393
	.quad	0x3fdfca35ae5bea7e              # double 0.49671690013170877
	.quad	0x3fe92524ff978cf3              # double 0.78578424377738398
	.quad	0x3fee1148070e5a59              # double 0.93960954073083791
	.quad	0x3fe7c2b61b51eef6              # double 0.74251847587535624
	.quad	0x3fde60747f721440              # double 0.47463715024816011
	.quad	0x3fdfbdcecef4fe18              # double 0.49595995150227301
	.quad	0x3fd4f27a254d3f6a              # double 0.32729962961911119
	.quad	0x3fe284dd0b3c070d              # double 0.57871868318781738
	.quad	0x3fe22a9199bd0ec6              # double 0.56769638087322316
	.quad	0x3fe282aff96d27b5              # double 0.57845305172053563
	.quad	0x3fe1fbfeae2a993f              # double 0.5620110894858853
	.quad	0x3fd97cce745c472c              # double 0.39824258197141904
	.quad	0x3fcc6dedd48cc780              # double 0.22210476759351749
	.quad	0x3fcd191a0b3a6348              # double 0.2273285441231343
	.quad	0x3fed7dc4137d07ed              # double 0.92160228544548561
	.quad	0x3fdf2d9914e0f646              # double 0.48715807951871104
	.quad	0x3fd32975d20769e6              # double 0.29940553198471631
	.quad	0x3fe526eed8fde5ff              # double 0.66100256329735874
	.quad	0x3fe2cb8bda797030              # double 0.5873469607427122
	.quad	0x3fdea64e4cf8a7e0              # double 0.47890050427178998
	.quad	0x3fe8ec6527365870              # double 0.77885682734155459
	.quad	0x3fe1903aae130a96              # double 0.54885610579397581
	.quad	0x3fd680d9020de638              # double 0.35161423874487552
	.quad	0x3fd4a17c864ecdbe              # double 0.32235634914396971
	.quad	0x3feeaa693da32c69              # double 0.95830213583520873
	.quad	0x3fdead37dc91ea52              # double 0.47932240047490382
	.quad	0x3fe460dd5c8a3b39              # double 0.63682430338108198
	.quad	0x3fdcef3800c461f6              # double 0.45210075449861564
	.quad	0x3fe25c99957a7263              # double 0.57380370326025021
	.quad	0x3fef3b5741b3e5cc              # double 0.975993755651126
	.quad	0x3fe3d688ba2d2260              # double 0.61993824350890847
	.quad	0x3febab43ec773c17              # double 0.86465641197890164
	.quad	0x3fe0ab3a68230aa2              # double 0.52090187396273202
	.quad	0x3fe9c506fc3ec5fc              # double 0.80530118242876325
	.quad	0x3fd57868da72220c              # double 0.33547421772576125
	.quad	0x3fea027104c0b5df              # double 0.8127980320766105
	.quad	0x3fd77ad42d4a30f0              # double 0.36687187598069126
	.quad	0x3fe866936c4c5eef              # double 0.76252146865860293
	.quad	0x3fc0b05f7c06662c              # double 0.13038247638614686
	.quad	0x3fdb3968c43a2924              # double 0.4253789821892886
	.quad	0x3fdff63c8bb1f69c              # double 0.49940408365351074
	.quad	0x3fecd8c8cd946934              # double 0.90146293785372799
	.quad	0x3fc8b56395f785dc              # double 0.19303555319406385
	.quad	0x3fc88546345353c0              # double 0.19156720690685169
	.quad	0x3fc6f9b541c97f7c              # double 0.17949548446904007
	.quad	0x3fcf6644771155e0              # double 0.24530845464566564
	.quad	0x3fe14e83d0d1d23a              # double 0.54083433899956579
	.quad	0x3fd907969366896c              # double 0.39108814615806042
	.quad	0x3fdc010d49fd10aa              # double 0.43756420350497172
	.quad	0x3fe810dd991f7240              # double 0.75205879122547259
	.quad	0x3feac5dc675bdab2              # double 0.8366529482580829
	.quad	0x3fd31725727ab7f2              # double 0.2982877366983977
	.quad	0x3fdc8a0712c676c6              # double 0.44592453797836773
	.quad	0x3fcd20918ecc8748              # double 0.22755641434292273
	.quad	0x3fee0478f7dd82e0              # double 0.93804596339404255
	.quad	0x3fc05d51c788a9ac              # double 0.12784788363326294
	.quad	0x3fb1d69069696750              # double 0.069680238471304223
	.quad	0x3fe4fa28afe6bb5a              # double 0.65553697925302434
	.quad	0x3feeb160fae231bd              # double 0.95915268898675487
	.quad	0x3fd9b86e1216e3c4              # double 0.40188171164077979
	.quad	0x3fceaaf8e9e63938              # double 0.23959266110291266
	.quad	0x3fe1c417b33d31f6              # double 0.55518708236337377
	.quad	0x3fa8d5a9d183e9f0              # double 0.048505122018429492
	.quad	0x3f805d0009a6cc40              # double 0.0079898837037487568
	.quad	0x3fed2069c29b8082              # double 0.91020668038619612
	.quad	0x3fd2dc2bf584a228              # double 0.29468821503044973
	.quad	0x3fe18112030e27c3              # double 0.54700565907227661
	.quad	0x3fb7a0ad26858a60              # double 0.092295476822565004
	.quad	0x3fc7c26cb73c3878              # double 0.18562087008507766
	.quad	0x3fe5d1599a430469              # double 0.68180542115454756
	.quad	0x3fe1c4b3dc76620e              # double 0.55526154574460107
	.quad	0x3fee3107366e2a20              # double 0.94348488455699808
	.quad	0x3fb2b1c1498849f8              # double 0.073024826481095206
	.quad	0x3fe9d5e4b751f2c4              # double 0.807360036894885
	.quad	0x3fba6bc618f04398              # double 0.10320699795580734
	.quad	0x3fa3be510603bb50              # double 0.03856137464923981
	.quad	0x3fd2c49f5ae9cc24              # double 0.29325088384865894
	.quad	0x3fea664dacc4e29e              # double 0.82498821014367585
	.quad	0x3febfd8aa13e2735              # double 0.87469989292842476
	.quad	0x3fbe5bd31726ce00              # double 0.11858863177513257
	.quad	0x3fe6958c6eae2eef              # double 0.70575543992296541
	.quad	0x3febbec9cc985c5b              # double 0.86703958473197973
	.quad	0x3fe2427ecff9454e              # double 0.57061710948816269
	.quad	0x3fae44ebc132ce40              # double 0.059119574865146962
	.quad	0x3fcbfe2d69c3133c              # double 0.21869437851105455
	.quad	0x3fc4db6587a6e8cc              # double 0.16294545291549978
	.quad	0x3fefc6acc5180140              # double 0.99300230498196384
	.quad	0x3fbcf03039ec4c98              # double 0.11303998388420877
	.quad	0x3fec74e848f5ed4b              # double 0.88927091837050776
	.quad	0x3fe015fb93161ced              # double 0.50268343665893911
	.quad	0x3fd7924102e77f34              # double 0.36830163272496752
	.quad	0x3fac77f02f256430              # double 0.055602555995115543
	.quad	0x3f818b432b526300              # double 0.0085664031596919266
	.quad	0x3fdeff6279c3fe56              # double 0.48433744326755368
	.quad	0x3fe27a062b5241eb              # double 0.57739551984019266
	.quad	0x3fee13b37ca9a80c              # double 0.93990492199122988
	.quad	0x3fefcb231fedbd18              # double 0.99354702220981305
	.quad	0x3fefde41c13cbffb              # double 0.99588096372281087
	.quad	0x3fe4d50af7c18d5d              # double 0.6510062064157115
	.quad	0x3fe0c4e6e022f71a              # double 0.52403587128330575
	.quad	0x3fa266d2b42ec050              # double 0.035940727705906839
	.quad	0x3fc83e7763772f98              # double 0.1894063220664719
	.quad	0x3fcca741e9baa7dc              # double 0.22385429298930049
	.quad	0x3fb0d2585e081d20              # double 0.065709612805325168
	.quad	0x3fe5bc129835e72b              # double 0.67920808533310628
	.quad	0x3fe497aaeaa3a0b3              # double 0.64351411655390789
	.quad	0x3fe45faa2f27801c              # double 0.63667782983611998
	.quad	0x3fe7ea922b3b3855              # double 0.74738415187472163
	.quad	0x3feb8b753639d1f2              # double 0.86077366438854441
	.quad	0x3fe914b5d82d8e9d              # double 0.78377811643845841
	.quad	0x3fe56734b592ed36              # double 0.66884837592753033
	.quad	0x3fdae5c334ba2042              # double 0.42027359151007115
	.quad	0x3fec56aefeda430b              # double 0.88558149124045948
	.quad	0x3fcec24f5816bda8              # double 0.24030486870968315
	.quad	0x3fd1879b613709b4              # double 0.2739017915120272
	.quad	0x3fae1535fb1b4770              # double 0.058755576040893653
	.quad	0x3fd831a080b11ab6              # double 0.37802898948249763
	.quad	0x3fd973622828c9c2              # double 0.39766744539079124
	.quad	0x3fdcfaea39039ad8              # double 0.45281463210851092
	.quad	0x3fda22b5a67e3a10              # double 0.40836850413407522
	.quad	0x3fd1935478d7a86c              # double 0.27461730767266235
	.quad	0x3fe2675e3fb3f335              # double 0.57511818353632427
	.quad	0x3fcf2c1133944b8c              # double 0.24353232401389524
	.quad	0x3fef30d13563c7ca              # double 0.97470913341225551
	.quad	0x3fd46ddbf57bf8e8              # double 0.31920527432511259
	.quad	0x3fe5b614d5568aca              # double 0.67847673099125783
	.quad	0x3fed81f02a64dae2              # double 0.9221115901953818
	.quad	0x3feb5a57a100d4e2              # double 0.85477811284968319
	.quad	0x3fab0abde1829a30              # double 0.052816327837082233
	.quad	0x3fe6f5c821697ca5              # double 0.71750265622894871
	.quad	0x3fcfc006f290e628              # double 0.24804770320933867
	.quad	0x3fe1c933dae9f666              # double 0.55581085926651208
	.quad	0x3fdbf59b542ed988              # double 0.43686564656254534
	.quad	0x3fe9e989aa3b6003              # double 0.80975802658485951
	.quad	0x3fe0a181c2fdab3c              # double 0.5197151955047512
	.quad	0x3fd712634e767ae8              # double 0.36049730932601998
	.quad	0x3fefb5483442afb9              # double 0.99087915618064592
	.quad	0x3fe9e8f969ec94d3              # double 0.80968924225148908
	.quad	0x3fecee95cbf6c64e              # double 0.90412416302405929
	.quad	0x3fe0271fd41737ca              # double 0.50477591918910858
	.quad	0x3fee08abc9a525db              # double 0.93855847724733665
	.quad	0x3fb1770f5df33210              # double 0.068222961842544061
	.quad	0x3fd7f78438ebb9ee              # double 0.37448220785782282
	.quad	0x3fdd65822fb13dcc              # double 0.45932058961349465
	.quad	0x3feece7597922066              # double 0.96270255664513793
	.quad	0x3fc523309c24dcf8              # double 0.16513640999048795
	.quad	0x3fe441703bb86a27              # double 0.63298808731207579
	.quad	0x3fc2f4082ea3d594              # double 0.14807226445524846
	.quad	0x3fd009f5f4298664              # double 0.25060795635190503
	.quad	0x3fe8f5933215c96f              # double 0.77997741491553352
	.quad	0x3fc2afa51029df24              # double 0.14598525323139555
	.quad	0x3fca42af82bda5d4              # double 0.20516008266285601
	.quad	0x3fe68d63c892f954              # double 0.7047594945395681
	.quad	0x3fb597da1b1ac210              # double 0.084348327271762224
	.quad	0x3fea5fdb0f928bba              # double 0.8242011360310848
	.quad	0x3fe458a6741b593d              # double 0.63582155873408619
	.quad	0x3fdcbd105b3324d0              # double 0.44903954416492997
	.quad	0x3fe78f62e1418eca              # double 0.73625320430115804
	.quad	0x3fe37d2b3dc5d63c              # double 0.60902940812110939
	.quad	0x3fea85998eeee113              # double 0.82880857388139118
	.quad	0x3fc9ca1c7fcfb670              # double 0.20148044815816801
	.quad	0x3fdc5ea87a25d35a              # double 0.44327747276775187
	.quad	0x3fcdfaa80248f2c4              # double 0.2342119227559093
	.quad	0x3fe4dcebaae23955              # double 0.651967843777849
	.quad	0x3fe3d8d5affbcb9a              # double 0.62021908160965045
	.quad	0x3fe4c59604a954ed              # double 0.64911938581886164
	.quad	0x3fd59ae3be485612              # double 0.33757871229440284
	.quad	0x3fe9b22d96987030              # double 0.80300025380302564
	.quad	0x3fc0353dc8ea9794              # double 0.12662479696626561
	.quad	0x3fee8862b9c85c4d              # double 0.95414863858867138
	.quad	0x3fb36cb769e99170              # double 0.075877631528390443
	.quad	0x3fe06e396f7b1385              # double 0.51345512174212671
	.quad	0x3fe3c75a13e98984              # double 0.61808494462120267
	.quad	0x3fd2eaf3208165c4              # double 0.29559019255028951
	.quad	0x3fe0b4b2bad311d4              # double 0.52205788125189168
	.quad	0x3fdfaacecb3567f0              # double 0.49480028004256749
	.quad	0x3fe66241913df454              # double 0.69949415557460748
	.quad	0x3fe12a77a7a2e129              # double 0.53643400899367066
	.quad	0x3fefa415c4f37108              # double 0.98877991168004175
	.quad	0x3fd4cda7f05e9ba4              # double 0.32505224679555966
	.quad	0x3fcc882b83231ce0              # double 0.22290557768994912
	.quad	0x3feef0146439d6cf              # double 0.96680659842851379
	.quad	0x3fda5b7060111b9c              # double 0.41183099156881453
	.quad	0x3fce0a1a89ec9da0              # double 0.23468333944877617
	.quad	0x3fe386489fc2c3ba              # double 0.61014205172806801
	.quad	0x3fd53139df933488              # double 0.33112952073572233
	.quad	0x3fe54e976ed33d17              # double 0.66584369321381842
	.quad	0x3fe3c569830085c3              # double 0.61784816347442761
	.quad	0x3fd032ca9fef6a5a              # double 0.25310006731675616
	.quad	0x3fe7f7299cd02966              # double 0.74892120959820541
	.quad	0x3fc71614fded1f44              # double 0.18036138914816935
	.quad	0x3fed599bf902ff1f              # double 0.91718863139246654
	.quad	0x3fdecd6826ab9b66              # double 0.48128703857803712
	.quad	0x3fd4fb60fcde6156              # double 0.32784294790464708
	.quad	0x3fd545d1c19fe94c              # double 0.33238643559129311
	.quad	0x3fe98cf93b61b9d6              # double 0.79845868680950605
	.quad	0x3fb625abbc73e818              # double 0.086512311467146552
	.quad	0x3fe207c7ad3ca745              # double 0.56344970546090478
	.quad	0x3fee1fec7a7dff79              # double 0.94139694141629982
	.quad	0x3fe92ceb5ed8f3f5              # double 0.78673332714936228
	.quad	0x3fddd90e077400c4              # double 0.46637297370763187
	.quad	0x3fd7eb808dcaa904              # double 0.3737489113506316
	.quad	0x3fbe41fd391d7d90              # double 0.1181944145623588
	.quad	0x3fc2577b3034eca0              # double 0.14329471448750031
	.quad	0x3fd5226b3e613a74              # double 0.33022576419617811
	.quad	0x3fec4502d7af8912              # double 0.88342420698271185
	.quad	0x3fdde62208eb3610              # double 0.46717120047546334
	.quad	0x3fd9c0d089f7b2b2              # double 0.40239346955676603
	.quad	0x3fe54ffe3c7290eb              # double 0.66601478391797053
	.quad	0x3fba7388dfd10548              # double 0.10332541908521364
	.quad	0x3fd4c48a2e1f7b86              # double 0.32449583534428716
	.quad	0x3fc3a8b302bba454              # double 0.1535857928604708
	.quad	0x3f65ea29ea2ad600              # double 0.002675134529762202
	.quad	0x3fde1120ae29cf7e              # double 0.46979538925301501
	.quad	0x3fde71301ca49eec              # double 0.4756584434239659
	.quad	0x3fcf2c2e654cbac0              # double 0.24353580423617949
	.quad	0x3fe3795d3d626e9e              # double 0.60856496800575477
	.quad	0x3fca52b617f1adb4              # double 0.20564914864676853
	.quad	0x3fc10a52b08ee174              # double 0.13312753315927817
	.quad	0x3fe9bdb2568e250e              # double 0.80440632729838213
	.quad	0x3f92268d09271660              # double 0.017725185092578477
	.quad	0x3fed98994e421267              # double 0.92487778935226295
	.quad	0x3fdc11485ddc5710              # double 0.43855485120853732
	.quad	0x3fe51e2d4ac88ee7              # double 0.65993370634211324
	.quad	0x3fd8170defe7eb94              # double 0.37640713146509452
	.quad	0x3fa15db15d4cd180              # double 0.033917944564026747
	.quad	0x3fd10cebb34dc882              # double 0.26641361723080348
	.quad	0x3fd097cae248acc6              # double 0.25926467989002011
	.quad	0x3fc6321fa9a5b534              # double 0.17340465339240441
	.quad	0x3fe2258706228285              # double 0.56708098600582046
	.quad	0x3fbb25beeef44658              # double 0.10604470571367963
	.quad	0x3fe0a7c80a34eec0              # double 0.5204811286307276
	.quad	0x3fd663097a40e082              # double 0.34979474009333711
	.quad	0x3fe89d67dc1e22a4              # double 0.76921456329099102
	.quad	0x3fd3bfe38f84c240              # double 0.30858696952330789
	.quad	0x3f974b168e51b920              # double 0.022747375904537681
	.quad	0x3feeb6ebd2f1b83b              # double 0.959829246521401
	.quad	0x3fd5e3304879dfaa              # double 0.34199149205914614
	.quad	0x3fbb729118d1d6f0              # double 0.10721690040540088
	.quad	0x3fcffd53656abe1c              # double 0.24991838886261142
	.quad	0x3fe3b1fd53c97443              # double 0.61547724117884461
	.quad	0x3fd08dc3d56992b4              # double 0.25865264740995575
	.quad	0x3fd8052cac0e0ac2              # double 0.37531582643729788
	.quad	0x3fedcb9206939f3b              # double 0.93109990391255992
	.quad	0x3fb76463dd92d730              # double 0.091375581355205737
	.quad	0x3fbbaadeaeb0bcc0              # double 0.10807601704503877
	.quad	0x3feef7f311e1c53c              # double 0.96776727192460709
	.quad	0x3feca15fb3316c53              # double 0.89469895361561169
	.quad	0x3fe48b991e53edb1              # double 0.64204078601271963
	.quad	0x3fe3b30d9ee1fdb6              # double 0.61560708076279158
	.quad	0x3fe28fd949025727              # double 0.58005966434095491
	.quad	0x3fe0ad0f72bf901b              # double 0.52112553035522369
	.quad	0x3fe03703027e8b25              # double 0.50671530234499029
	.quad	0x3fd5fd881b16ddd4              # double 0.34359934468690523
	.quad	0x3fa4ca4eefa14b40              # double 0.040605990173068651
	.quad	0x3fea6c0b4ffa60e6              # double 0.82568898792945045
	.quad	0x3fe019695595645a              # double 0.50310198512591886
	.quad	0x3fd837e8d1b2162a              # double 0.37841244199839486
	.quad	0x3fe07e0f29d22398              # double 0.5153880898297869
	.quad	0x3fecc73096665dd4              # double 0.89931516051268056
	.quad	0x3feb421d58d31059              # double 0.85182063435105271
	.quad	0x3fefd61e1073c310              # double 0.99488738263434762
	.quad	0x3fe513c8a89b149b              # double 0.65866501742188477
	.quad	0x3fe3bcb43ae08a5e              # double 0.61678515910564236
	.quad	0x3fc0e0dac1e31940              # double 0.13186201541084053
	.quad	0x3f9b8c697bba4920              # double 0.026902816941011598
	.quad	0x3fe1d199617980a5              # double 0.55683583295833172
	.quad	0x3fee05a9ef1c8a10              # double 0.93819138242207778
	.quad	0x3fb964b89e8e92d8              # double 0.099193133077800311
	.quad	0x3fbb5113caac8198              # double 0.10670589159099675
	.quad	0x3fe1e14e4e0b8099              # double 0.55875315898085198
	.quad	0x3fd8f9e95af327f6              # double 0.39025339013880911
	.quad	0x3f91a6bc185c7c00              # double 0.017237605082410568
	.quad	0x3fe5d48590e8fa99              # double 0.68219259550808709
	.quad	0x3fe0441e6ff203e8              # double 0.50831529487925042
	.quad	0x3fc657c2f7798088              # double 0.1745532711383968
	.quad	0x3fd709edc7590d1a              # double 0.35998100726665572
	.quad	0x3f99abcb4dbd2200              # double 0.025069405193137939
	.quad	0x3fe52b570263e7e9              # double 0.66154051272246506
	.quad	0x3fb6b55d439a5b28              # double 0.088704899792315772
	.quad	0x3fc6dac62159874c              # double 0.17855145100025493
	.quad	0x3fe0d4cc30f7687b              # double 0.52597627223737164
	.quad	0x3f97967e1a193ba0              # double 0.023035021155290658
	.quad	0x3fef3caff3a60dce              # double 0.97615811908365813
	.quad	0x3fe0347cc9ee67ab              # double 0.50640716018391652
	.quad	0x3feab6559e6137e6              # double 0.83475762303873746
	.quad	0x3fe5059798f2852f              # double 0.6569326388600184
	.quad	0x3fd9fc5485228aaa              # double 0.40602601052720877
	.quad	0x3fc67ed52c844664              # double 0.17574562715212771
	.quad	0x3fd0a31b5a52c2da              # double 0.25995525189050073
	.quad	0x3f9d46869b734220              # double 0.028589347112587871
	.quad	0x3fc208b145b1e77c              # double 0.14089027312348523
	.quad	0x3fddd66c303c57c8              # double 0.46621231756705273
	.quad	0x3fd59e837d3f7a4e              # double 0.33779990416761485
	.quad	0x3feb8c8ca74f63f0              # double 0.86090691259152941
	.quad	0x3fd5cd8a730441b4              # double 0.34067021591274771
	.quad	0x3fef9c5a784aa44e              # double 0.98783610815474687
	.quad	0x3fece9481afe6263              # double 0.90347676536755406
	.quad	0x3fd5f3134632fa8e              # double 0.34296113829979269
	.quad	0x3fc210231fced150              # double 0.14111746838683326
	.quad	0x3fedad142bb87494              # double 0.92737778224149503
	.quad	0x3fdb8fe80289b94a              # double 0.43065834281778292
	.quad	0x3fea55f475d77120              # double 0.82299254432613011
	.quad	0x3fe84c4414765101              # double 0.75930980679052607
	.quad	0x3f9ef7fd6b2b8920              # double 0.030242881456509996
	.quad	0x3fe1883a08af91d9              # double 0.5478792352337748
	.quad	0x3fd64b52a476f3ec              # double 0.3483473402118864
	.quad	0x3fe53b4926d7636a              # double 0.6634870298977209
	.quad	0x3fe4b0beb8cf1e2c              # double 0.64657531829374681
	.quad	0x3fe51d5cf7ea1fcd              # double 0.65983436985788446
	.quad	0x3fe4d77d30d086d2              # double 0.65130481275647356
	.quad	0x3fdaff0b4c4c34a6              # double 0.42181665850587036
	.quad	0x3fe2936557737a60              # double 0.58049265938081973
	.quad	0x3fe3de7c344f8cff              # double 0.62090883461897295
	.quad	0x3fe560156aaa5e06              # double 0.66797896226029319
	.quad	0x3feafd7ec50719a2              # double 0.84344423753718822
	.quad	0x3feaa3dbd25d95a3              # double 0.83250228011154481
	.quad	0x3fbd12c6bf6acc00              # double 0.11356775449057466
	.quad	0x3fe2f1c0695b50a3              # double 0.59201069428901965
	.quad	0x3fce5a3ee88ff164              # double 0.23712908130245147
	.quad	0x3fef44066d91bf6c              # double 0.97705384636172487
	.quad	0x3fd5b2c03e1cbeae              # double 0.33903509202626025
	.quad	0x3fb1b68eecee65c8              # double 0.069191868633786346
	.quad	0x3fe8e6026004e509              # double 0.77807730439886413
	.quad	0x3fe532ea6f8fddbd              # double 0.66246530332039522
	.quad	0x3fdeffda4f4efbd8              # double 0.4843660139558188
	.quad	0x3fd15e173da6cf86              # double 0.27136784573234995
	.quad	0x3fda3f70b3db4e7a              # double 0.41012208522918281
	.quad	0x3fe6304aefbcb38d              # double 0.69339510749488087
	.quad	0x3fd10f8e7871c2ac              # double 0.26657449495454943
	.quad	0x3fe7ba78ffde223b              # double 0.74151277517473291
	.quad	0x3fd9054d539c0e88              # double 0.39094861187934571
	.quad	0x3fe97f49bb7e61e0              # double 0.79678808803424416
	.quad	0x3fd6fef9b8f59766              # double 0.35931246817050633
	.quad	0x3fa75a384c047cd0              # double 0.045610198287471371
	.quad	0x3fd51c008d665b88              # double 0.3298341160638576
	.quad	0x3fe5bf155b05e2c4              # double 0.6795756128113557
	.quad	0x3fe072b9587f96c5              # double 0.51400439534037246
	.quad	0x3fc0931973036944              # double 0.12948911777386674
	.quad	0x3fd5f265bbcfc124              # double 0.34291976300211702
	.quad	0x3fea685f856b229d              # double 0.82524086054134538
	.quad	0x3fe91f9e37c0b885              # double 0.78510962380620752
	.quad	0x3fe37e02636f031c              # double 0.60913199825890585
	.quad	0x3fefcf1d16b99afd              # double 0.99403242529373836
	.quad	0x3fe030f5dc4fa639              # double 0.50597661046521758
	.quad	0x3feec9fa95b8275b              # double 0.96215562097607276
	.quad	0x3fb6f1fb333a45f8              # double 0.089629840857263221
	.quad	0x3fef5fab4498a2df              # double 0.98042834661199751
	.quad	0x3fe694eeea8e6085              # double 0.7056803303885465
	.quad	0x3f554fc778917200              # double 0.001300759120815731
	.quad	0x3fd17e4b7032d7aa              # double 0.27333341557402469
	.quad	0x3fdd314579605272              # double 0.45613228657865712
	.quad	0x3fdb5df7a9fb1646              # double 0.4276103172272524
	.quad	0x3f91f0ff88810200              # double 0.017520897585429296
	.quad	0x3fc01cfce9a5a71c              # double 0.12588464172886737
	.quad	0x3fdb2da104304a3a              # double 0.42465997132345346
	.quad	0x3fe1827645de25d2              # double 0.54717553754852077
	.quad	0x3fe067afd2d75e91              # double 0.51265708141268551
	.quad	0x3fe2b7104140c2e3              # double 0.58484661812516625
	.quad	0x3fd334178d277f80              # double 0.30005444321249541
	.quad	0x3fad210fcd831aa0              # double 0.056892865979127238
	.quad	0x3fcc93f4a0f97858              # double 0.22326524601061482
	.quad	0x3fc954d83b2e311c              # double 0.19790175332708138
	.quad	0x3fd7a12487b85e18              # double 0.36921036962437048
	.quad	0x3fe6e43052c08a83              # double 0.71535507357141659
	.quad	0x3fdb6f957ab93de2              # double 0.42868554100729572
	.quad	0x3fe1e8df6606ff70              # double 0.55967683722700023
	.quad	0x3fe04a7aa44de93f              # double 0.50909168329898324
	.quad	0x3fe6c58be580e4c6              # double 0.71161455941105412
	.quad	0x3f96053ed1dcf900              # double 0.021504384573966639
	.quad	0x3fce64c2736b21b0              # double 0.23744993816059212
	.quad	0x3fec3f070209261c              # double 0.88269377133946447
	.quad	0x3febb878d6675402              # double 0.86626855731685759
	.quad	0x3fa1412ed64a8b30              # double 0.033700431498138506
	.quad	0x3fd5cab10103a0b4              # double 0.34049630259552122
	.quad	0x3fe9d9964b3e1fda              # double 0.80781092353663131
	.quad	0x3fe0dfe85cf7c189              # double 0.52733247907421898
	.quad	0x3fc0d28c548e1b24              # double 0.13142542008082458
	.quad	0x3fdaf1181b3f349e              # double 0.42096522007779835
	.quad	0x3fe70531eb9e7527              # double 0.719384155457793
	.quad	0x3fb927a93a522db8              # double 0.098261429537322864
	.quad	0x3fba0438d878fb38              # double 0.10162692341780832
	.quad	0x3fe3ce64ff72f5c2              # double 0.61894464390177739
	.quad	0x3fc85c45e6a47f48              # double 0.19031595002979373
	.quad	0x3fe8d6beb805e4dd              # double 0.77621398870465053
	.quad	0x3feb1408b69d7eda              # double 0.84619556109461347
	.quad	0x3fe7bdf530a3b610              # double 0.74193820476438255
	.quad	0x3fdf4513d79c622e              # double 0.48859115653752638
	.quad	0x3fe2f250a97158b6              # double 0.592079478209391
	.quad	0x3fd6d78bb0f992f8              # double 0.35690586359696352
	.quad	0x3fe91c6d1a7a2c68              # double 0.78471999331794695
	.quad	0x3fba6e7e0dc05350              # double 0.10324848018383403
	.quad	0x3fedbb8de3b44bae              # double 0.92914480660907883
	.quad	0x3fec086330bd81e5              # double 0.87602386016447709
	.quad	0x3fe3ada2a985b66f              # double 0.61494572744204656
	.quad	0x3fd9de2674068064              # double 0.40418397265057693
	.quad	0x3fd841fd47420db6              # double 0.37902767142096694
	.quad	0x3fe6b1ddb99077bf              # double 0.70921217196495678
	.quad	0x3fe84d6b93744492              # double 0.75945071029322464
	.quad	0x3feb47b56c407018              # double 0.85250350134765807
	.quad	0x3fea3d7374b9824a              # double 0.82000134275228587
	.quad	0x3fefd0e37770be2c              # double 0.99424908950999713
	.quad	0x3fc01e984ea16df8              # double 0.1259336837709808
	.quad	0x3fd6b1c340295166              # double 0.35459977403413345
	.quad	0x3fda0ec0fa8aa920              # double 0.40715050188977564
	.quad	0x3fd89ad4df027012              # double 0.38445016649507224
	.quad	0x3fe0f4914992ddcf              # double 0.52985443467962934
	.quad	0x3fe5165fc6486277              # double 0.65898121573543633
	.quad	0x3fe0e2773217d9b2              # double 0.52764472755261793
	.quad	0x3fe04fec0a3cd881              # double 0.5097561073259983
	.quad	0x3fe1e95a3ac6d36f              # double 0.55973540763680585
	.quad	0x3fd0472d7e90aa48              # double 0.25434434280274276
	.quad	0x3fd2a0ee514ad004              # double 0.29107244433112123
	.quad	0x3feb0e756aa60d09              # double 0.84551497297107503
	.quad	0x3fb60f5b65101060              # double 0.086171829389117161
	.quad	0x3fe146e2aab172aa              # double 0.53990300501353272
	.quad	0x3f8bb7a9ffbd5980              # double 0.013533905140928892
	.quad	0x3fd1645b2927e0f0              # double 0.27175025004500153
	.quad	0x3fe07f4d0a84add2              # double 0.51553966574049981
	.quad	0x3fe1c6ee0c3c11b0              # double 0.5555334319074543
	.quad	0x3fdbfcc9d368c3f2              # double 0.437303978399597
	.quad	0x3fe3178dd69b96f9              # double 0.59662525096493291
	.quad	0x3fde2b33f0e54a4c              # double 0.47138689541785506
	.quad	0x3fd7c0a2615d50e4              # double 0.37113246448758574
	.quad	0x3fec388e652dd8f4              # double 0.88190383683720918
	.quad	0x3fec6d535db16839              # double 0.88834541606343642
	.quad	0x3fee9d0821091c0d              # double 0.95666891529333642
	.quad	0x3fd87b224790104c              # double 0.38251549709844279
	.quad	0x3fe4f2916dc77a5b              # double 0.65461036149265384
	.quad	0x3fd4a69803b0b844              # double 0.322668078998394
	.quad	0x3fe4b23405415dae              # double 0.64675332094605209
	.quad	0x3fea1aeb571cbde8              # double 0.81578604711642999
	.quad	0x3fe26d4412e05e29              # double 0.5758381241493612
	.quad	0x3fcf54b843ce5bdc              # double 0.24477294264644811
	.quad	0x3faaa49e0812b990              # double 0.052037180409899908
	.quad	0x3fa0db9ad4f293a0              # double 0.032925451750350776
	.quad	0x3fe19748684cd391              # double 0.549717143736972
	.quad	0x3fc1555cd24e469c              # double 0.13541755932651689
	.quad	0x3fcbdd904489e984              # double 0.21769908281914863
	.quad	0x3fdb1c04c73ea5f0              # double 0.42358512361042155
	.quad	0x3fee5289a12d0cd7              # double 0.94757539252932588
	.quad	0x3fe104d8934316ec              # double 0.53184155237314945
	.quad	0x3f9f2c9644dfb880              # double 0.030443523362855718
	.quad	0x3fe21e2788b07813              # double 0.56618096062789147
	.quad	0x3fe5570489801ffd              # double 0.66687228065074999
	.quad	0x3fcc392b990a9c94              # double 0.22049469921805509
	.quad	0x3fed8df9829bd076              # double 0.92358088979246022
	.quad	0x3fe46c6f14d24870              # double 0.63823656145747343
	.quad	0x3fed5c4193a93352              # double 0.91751173820521559
	.quad	0x3fec7805d21a71fd              # double 0.88965121303368699
	.quad	0x3fe5d769b23d3a6c              # double 0.68254551708544176
	.quad	0x3fb48dc674506cc8              # double 0.080288318058978736
	.quad	0x3fd9c8f1a945ea48              # double 0.40288964777542846
	.quad	0x3fed405434c7ed4f              # double 0.9141026526334971
	.quad	0x3fd857b069a8a32a              # double 0.38035211866604135
	.quad	0x3fee8ac37da3e9f8              # double 0.95443892039412414
	.quad	0x3fc9f0f04ad6b71c              # double 0.20266536382899225
	.quad	0x3fd7af7051bb8930              # double 0.37008293134398951
	.quad	0x3febd060364fe627              # double 0.86918650253136753
	.quad	0x3f7e8d103aec9c80              # double 0.0074587472907189367
	.quad	0x3fde9307792cdf8c              # double 0.4777239497520831
	.quad	0x3fefe4f614c519ed              # double 0.99669937187792145
	.quad	0x3febe8254ec2011c              # double 0.87208810217274246
	.quad	0x3fcbced182b5dde8              # double 0.21724909670204728
	.quad	0x3fe8d1d8461286ec              # double 0.77561582265863426
	.quad	0x3fd3f65b70acbd1c              # double 0.31191144946474636
	.quad	0x3fdbf8fdf91aafd0              # double 0.43707227064691967
	.quad	0x3fe113e23a91f28d              # double 0.53367721023058012
	.quad	0x3fe9e6a8194f2b99              # double 0.80940632765974663
	.quad	0x3fd758ded147e32c              # double 0.36479921758250344
	.quad	0x3feec15c859b2aca              # double 0.9611036881918491
	.quad	0x3fe1f849c501dea1              # double 0.56155861356724668
	.quad	0x3fea8bb9bf7bb9b4              # double 0.82955634497721186
	.quad	0x3fd58d337194d67a              # double 0.33674322215970387
	.quad	0x3fd171ec3befcbf8              # double 0.27257829526132538
	.quad	0x3feb1300a6dc3706              # double 0.84606964673886931
	.quad	0x3fe5e50745ee06fa              # double 0.68420756967699892
	.quad	0x3fde27fd0b0f9938              # double 0.47119070129555807
	.quad	0x3fee7286279172a1              # double 0.95147998550563184
	.quad	0x3fefe818af686118              # double 0.99708208331415715
	.quad	0x3fd2715dd62add8e              # double 0.288169345043081
	.quad	0x3fed29ae53b81637              # double 0.91133800841698231
	.quad	0x3feb76a86f1794da              # double 0.85823461244276733
	.quad	0x3fc7a83db8d60970              # double 0.18482181096267025
	.quad	0x3fdf5e19f31229f8              # double 0.4901184915294432
	.quad	0x3fe559c049fb6f33              # double 0.66720594834939673
	.quad	0x3fde4bb96960e06e              # double 0.47337184229718943
	.quad	0x3f4204df1ec18000              # double 5.4989714181985505E-4
	.quad	0x3fee2f2c102d1396              # double 0.94325831565275808
	.quad	0x3fd501037ab0531e              # double 0.32818686467480684
	.quad	0x3fe81806e2aa246a              # double 0.75293297071870069
	.quad	0x3feec95cc2290c07              # double 0.96208036348286973
	.quad	0x3fe7d5c88585c0dd              # double 0.74484659269912934
	.quad	0x3fe1c3895ba00367              # double 0.55511920829313233
	.quad	0x3fda056df058e00e              # double 0.40658138724711612
	.quad	0x3fdd7e12d794daa6              # double 0.46081992199780542
	.quad	0x3fd97f0fb11be192              # double 0.39838020606796321
	.quad	0x3fde3dfbedc496fc              # double 0.47253320903324414
	.quad	0x3fe9dd14801e414a              # double 0.80823731444437752
	.quad	0x3fe6b63ed3c30f19              # double 0.70974675521617592
	.quad	0x3fe34ae7c8887d72              # double 0.60289372603067037
	.quad	0x3fdb4f11580e254a              # double 0.42670091246744291
	.quad	0x3fd20dec19aeb658              # double 0.28209974773458191
	.quad	0x3fd53d7f9fba1c42              # double 0.33187857244815089
	.quad	0x3fe0b0beade098e5              # double 0.52157529793182944
	.quad	0x3faed8f9d6b2fff0              # double 0.060249144991303072
	.quad	0x3fe03e834c5ebb37              # double 0.50763096729301693
	.quad	0x3fd24f3424e06f56              # double 0.2860842094539654
	.quad	0x3fddf8bea01d878c              # double 0.46830716739906886
	.quad	0x3fd7e68bb6c06eca              # double 0.37344639632077004
	.quad	0x3fe3a402713f1dbf              # double 0.61377069586244903
	.quad	0x3fe112ab1f72a4e5              # double 0.53352886335519811
	.quad	0x3f94551e27276860              # double 0.019855948581472993
	.quad	0x3fcc8bb53fe52944              # double 0.22301354999428658
	.quad	0x3fc126c711e7f294              # double 0.13399589895552266
	.quad	0x3fe0035c22fcaae8              # double 0.50041014512438853
	.quad	0x3fd64935252e6044              # double 0.34821823721859269
	.quad	0x3fab15f0850c7cb0              # double 0.052901760331445558
	.quad	0x3fee096376120d3a              # double 0.93864605961463288
	.quad	0x3fe7683395e89016              # double 0.73146991042131293
	.quad	0x3fe352e541ed9465              # double 0.6038690841347828
	.quad	0x3fea0f1b7c57193f              # double 0.81434416089249584
	.quad	0x3feb60616a86b63e              # double 0.85551520162488948
	.quad	0x3fdf1355d9bc085a              # double 0.48555513632903102
	.quad	0x3feb70a106f8c320              # double 0.85749865876832487
	.quad	0x3fc845df6705ad9c              # double 0.18963234453563593
	.quad	0x3fe5f33ead564495              # double 0.68594297270660098
	.quad	0x3fdf8239e1e88bbc              # double 0.49232337056508491
	.quad	0x3fcf000dd54be23c              # double 0.24218914904465005
	.quad	0x3fe5f1463c909b4a              # double 0.68570243672443465
	.quad	0x3fe7b398e81dcf63              # double 0.74067349753611855
	.quad	0x3f9ccf48be8eb7e0              # double 0.028134476309496281
	.quad	0x3fe739cfc28bde0e              # double 0.72580707547507628
	.quad	0x3fe68a0c066d44b3              # double 0.70435143714180126
	.quad	0x3fef8a610a1b33c5              # double 0.98564197515371942
	.quad	0x3feaaaa72597a65a              # double 0.83333165495168804
	.quad	0x3fea5433076b5f96              # double 0.82277823876482858
	.quad	0x3fb27632a9710078              # double 0.072116056792767114
	.quad	0x3fef3636bb1c36fb              # double 0.97536789460147532
	.quad	0x3fe3187ae7d62daa              # double 0.59673829346268303
	.quad	0x3f514b0af71a0c00              # double 0.0010554892618592771
	.quad	0x3fe47f9e0a9df5fa              # double 0.64057828973426401
	.quad	0x3fc34e7aeed913b4              # double 0.15083252584932227
	.quad	0x3fc376b84723ac9c              # double 0.15206054185486984
	.quad	0x3fe833d56f75223b              # double 0.75632735985806876
	.quad	0x3fc7bbec354d79f4              # double 0.18542244532268592
	.quad	0x3fec518a6b9b1447              # double 0.88495369927171275
	.quad	0x3fdffaacc0a3c50a              # double 0.49967497646783043
	.quad	0x3fd80199c2a3eaa6              # double 0.37509769447175711
	.quad	0x3fd9121152a2add0              # double 0.39172776288861844
	.quad	0x3fd3061249ebfa96              # double 0.29724557131695784
	.quad	0x3fbf088c0d278b28              # double 0.1212241680255316
	.quad	0x3fbe38fbfebbb9d0              # double 0.11805701226305776
	.quad	0x3fdb4809f0d6487e              # double 0.42627190131418746
	.quad	0x3fdfdfdc135e408a              # double 0.49803830996916842
	.quad	0x3fdd0fc63e238038              # double 0.45408779209356309
	.quad	0x3feda7a411e906bc              # double 0.92671397684190237
	.quad	0x3fb874743e7857b0              # double 0.095526948214994744
	.quad	0x3f96c76b82979560              # double 0.022245101781569132
	.quad	0x3fdaedfb56622e46              # double 0.42077525554552542
	.quad	0x3fe06a5c3e2704cd              # double 0.51298343791145273
	.quad	0x3fd9718c020b1026              # double 0.39755535316021662
	.quad	0x3fe4090acae01817              # double 0.62610377906890136
	.quad	0x3fe29cdbabbcc5f4              # double 0.5816477159734732
	.quad	0x3fe1e31928b1150e              # double 0.55897195766070396
	.quad	0x3fe6b28c4fff9bff              # double 0.70929542183591809
	.quad	0x3fd6970964ec441a              # double 0.35296854835275016
	.quad	0x3fe66f913eeb050b              # double 0.70111906326943207
	.quad	0x3fdae6eb1d949476              # double 0.42034414185247415
	.quad	0x3fed890443fb851f              # double 0.9229756667884067
	.quad	0x3fed802f0cf9667c              # double 0.92189743551280356
	.quad	0x3f891edcede15380              # double 0.012265897759940136
	.quad	0x3fa4bc1f13b7b260              # double 0.040497752339295756
	.quad	0x3fd27b2882ec2afe              # double 0.28876698289302272
	.quad	0x3f67e77f240a8f00              # double 0.0029180033892134416
	.quad	0x3fda93a8115d5c8e              # double 0.41526223846217014
	.quad	0x3fe9323a3c6139f5              # double 0.78738128464629986
	.quad	0x3fe08dc2783f1aa0              # double 0.51730464444775137
	.quad	0x3fed3775ed0a4e2e              # double 0.91302009865689171
	.quad	0x3fe83152037e7581              # double 0.75602055246751843
	.quad	0x3f969c1ae4708fc0              # double 0.022079868500568756
	.quad	0x3fedf51f33523b4a              # double 0.93617210410762053
	.quad	0x3fc0221ea4353e3c              # double 0.12604125040023628
	.quad	0x3fe4de8c54b54005              # double 0.65216652435810885
	.quad	0x3fd969f057dec0c0              # double 0.3970909937006688
	.quad	0x3fe976fc6de0775f              # double 0.79577466450039569
	.quad	0x3fe56234fa9dcbdf              # double 0.66823815296663358
	.quad	0x3fe33228567bfa98              # double 0.59987275020087605
	.quad	0x3fe09622a2022fbb              # double 0.51832706110280158
	.quad	0x3fe25b462590e5d6              # double 0.57364184701071497
	.quad	0x3fe8603243f38d15              # double 0.76174271842720265
	.quad	0x3feb1cf17fe68536              # double 0.84728312473831724
	.quad	0x3f64bd99be2b2100              # double 0.0025318148412659669
	.quad	0x3fc006887827d920              # double 0.12519937388396674
	.quad	0x3fe119b459b34a3a              # double 0.5343877555809009
	.quad	0x3fd2bb200db8d23e              # double 0.29267121639285054
	.quad	0x3feb336775c94905              # double 0.8500249195588202
	.quad	0x3fe1b378a6d8882a              # double 0.55315811717105601
	.quad	0x3fe9546a606e188e              # double 0.79155463060375708
	.quad	0x3feaec77156da117              # double 0.84136537728503213
	.quad	0x3fe7569843f62e26              # double 0.72932065271146906
	.quad	0x3fed5f6d6c61ad0a              # double 0.91789885681410621
	.quad	0x3fdefc7a608701ec              # double 0.484160036339772
	.quad	0x3f9d440ebe62bfc0              # double 0.028579931612227716
	.quad	0x3fd5416629c1d1a0              # double 0.33211664274065278
	.quad	0x3feddfcf02ad6ad2              # double 0.93357038996631503
	.quad	0x3fed4113b3b061a4              # double 0.91419396491533122
	.quad	0x3fe0c6fe9106fb4c              # double 0.52429130864752826
	.quad	0x3fbc82372aa13968              # double 0.11136193075910727
	.quad	0x3fd00e9b92834830              # double 0.25089158351795771
	.quad	0x3fe83bd1f28c8d88              # double 0.75730225918634719
	.quad	0x3fe4ad1639a9ef14              # double 0.64612876188718582
	.quad	0x3fd8283a0a259c10              # double 0.37745524397763663
	.quad	0x3fa80be405ea25a0              # double 0.046965718957902469
	.quad	0x3fd34fb80cc6e2ce              # double 0.30174065826171848
	.quad	0x3fdec6f6560f5222              # double 0.48089369205743726
	.quad	0x3f8e36a3ca72a500              # double 0.0147526546628165
	.quad	0x3fd1831bc13bea38              # double 0.27362722273361184
	.quad	0x3fefd2e76c0f1b2e              # double 0.9944951162841329
	.quad	0x3fa5c02b059d3e50              # double 0.042481750903445303
	.quad	0x3fc14c3f72bd3ee8              # double 0.13513939955236443
	.quad	0x3fe9792d993737b2              # double 0.7960422508710876
	.quad	0x3fe38e3265da7aff              # double 0.61110801594972475
	.quad	0x3fef708f42825fee              # double 0.98249018659680387
	.quad	0x3fc0404dcc205888              # double 0.12696239916903473
	.quad	0x3fe202806e755e46              # double 0.56280538152618287
	.quad	0x3fdcfcd9bf491e70              # double 0.45293277435528179
	.quad	0x3fd213e65e84321e              # double 0.28246459226719078
	.quad	0x3fe92b81666e30a9              # double 0.78656072622245177
	.quad	0x3fec560d6f382fab              # double 0.88550445292047664
	.quad	0x3fcd70b2355eccb4              # double 0.23000171285602777
	.quad	0x3fefe232fecca5d4              # double 0.99636220708378653
	.quad	0x3fd337935f67eb90              # double 0.30026706997858188
	.quad	0x3fbddc57e0d2cd18              # double 0.11664342154363216
	.quad	0x3fe3bc45e37d2ca0              # double 0.61673254424512791
	.quad	0x3fe08878753b301b              # double 0.51665900131911557
	.quad	0x3febae35cdc87e68              # double 0.86501589004542456
	.quad	0x3fd4884dd2421a16              # double 0.32081933529880879
	.quad	0x3fecf832bf6e99c6              # double 0.9052976359278595
	.quad	0x3fe71d4de2226e83              # double 0.72232717673200886
	.quad	0x3fd662a7c5b1586e              # double 0.34977144533093607
	.quad	0x3fe5838e3e0af4d0              # double 0.67230903737768166
	.quad	0x3fe08ac1487b7afd              # double 0.51693786770542227
	.quad	0x3fd259abcc7b826a              # double 0.28672308892240628
	.quad	0x3f8e8c155beced40              # double 0.014915625446170311
	.quad	0x3fce92415a62ec28              # double 0.23883835709952561
	.quad	0x3fe13a80f257fffa              # double 0.53839156468165972
	.quad	0x3fe174f19dd0c3de              # double 0.54552536795938145
	.quad	0x3fb849e7191e1cd0              # double 0.09487766612265891
	.quad	0x3fd901d86b3a1384              # double 0.39073763343213153
	.quad	0x3fe98f722f3aaa91              # double 0.7987605020947105
	.quad	0x3fe9b23b5cd4343f              # double 0.80300682192467565
	.quad	0x3fdcfdd1cd91f962              # double 0.45299191546646089
	.quad	0x3fc0a59671547bb0              # double 0.13005333455745705
	.quad	0x3f98295980379720              # double 0.023595236254457252
	.quad	0x3fe8633c0e300b36              # double 0.76211359759358888
	.quad	0x3fbbe93fde0e3f10              # double 0.10902785464554321
	.quad	0x3fe8f2f06b52d146              # double 0.77965565644857615
	.quad	0x3fe11105c035a508              # double 0.53332793751647589
	.quad	0x3fe74ec6d7947319              # double 0.7283662996811443
	.quad	0x3f5cd303d86cc000              # double 0.0017592942765070063
	.quad	0x3fb454e6f1f299c8              # double 0.079420503682377519
	.quad	0x3fcf29fa9d105f90              # double 0.24346859616411765
	.quad	0x3fdeb232c23b3eac              # double 0.47962635963356592
	.quad	0x3fcfd6d01a1d2500              # double 0.24874306941118363
	.quad	0x3fed27ad2fbdf5ba              # double 0.91109332394233111
	.quad	0x3fd51e2f45fc41a8              # double 0.32996732553967911
	.quad	0x3fe3d7918f89408e              # double 0.62006452593233674
	.quad	0x3fe4285c76aabad4              # double 0.62992690255290507
	.quad	0x3fdacc6a19e87f5c              # double 0.4187264683732701
	.quad	0x3fe8887dde7938ce              # double 0.76666158153400388
	.quad	0x3fef911dfcdc6dd3              # double 0.98646449458049756
	.quad	0x3fbbfba6713a2c78              # double 0.10930862678849163
	.quad	0x3fcd546d377dfc30              # double 0.22913899621559741
	.quad	0x3feb37221efe0424              # double 0.8504801373784443
	.quad	0x3fe094e04973bf2e              # double 0.51817335458870217
	.quad	0x3fde711090e0c048              # double 0.4756509222816061
	.quad	0x3fe03ec5de4c96f9              # double 0.50766271035965282
	.quad	0x3fd0fd98a38df98c              # double 0.26547828647735439
	.quad	0x3fead0331624f893              # double 0.83791498494226102
	.quad	0x3fd46bd367c6f86e              # double 0.31908116468901582
	.quad	0x3fe3f38cfe6ad010              # double 0.62348031702868134
	.quad	0x3fe0540f0d1fa4d4              # double 0.51026108325199937
	.quad	0x3fea1b3e72228c60              # double 0.81582567493422786
	.quad	0x3feed1e04f5b7401              # double 0.96311965465031346
	.quad	0x3fe3106fc1cb5774              # double 0.59575641489457931
	.quad	0x3fec6982bef8615c              # double 0.88787972735284936
	.quad	0x3fef4f86949003ce              # double 0.97845772758602734
	.quad	0x3fdf2a3c2705e8de              # double 0.48695281802032564
	.quad	0x3fe3bd4aa380138c              # double 0.61685687955524449
	.quad	0x3f791ca30530c480              # double 0.0061308258037097163
	.quad	0x3fc28e8bc059f3e8              # double 0.14497515575558784
	.quad	0x3fd43614b3908b14              # double 0.31580083404166825
	.quad	0x3fc4078852ac8418              # double 0.15647987400828423
	.quad	0x3fef0801b5c0e8c5              # double 0.96972737787952978
	.quad	0x3fe54a47f286b458              # double 0.66531751030346253
	.quad	0x3fe88e39bb655bd1              # double 0.76736151314514178
	.quad	0x3fdea79eabb601f6              # double 0.47898070114754832
	.quad	0x3fdeb03ef8ef105a              # double 0.47950720128961211
	.quad	0x3fe8626baa1a6810              # double 0.76201422904273564
	.quad	0x3f859e182af977c0              # double 0.010555447398640783
	.quad	0x3fc32534b7d329ec              # double 0.14957293487380185
	.quad	0x3fe19f7cc3114c72              # double 0.55071867083678527
	.quad	0x3fd344a1d0090a22              # double 0.30106396976421668
	.quad	0x3fdf8c3953f5c530              # double 0.49293358992788949
	.quad	0x3fee4e8a725039d6              # double 0.94708750082809945
	.quad	0x3fef8c281c0a11f4              # double 0.98585896946366213
	.quad	0x3fe1cf515336b0d7              # double 0.55655733349478964
	.quad	0x3fe5c6d393b1c4c4              # double 0.68052080961765471
	.quad	0x3fcdc33be08fa4d4              # double 0.23252056565187351
	.quad	0x3fd70d19f710acc0              # double 0.36017464759306606
	.quad	0x3fde494e5804ef3c              # double 0.47322424502975813
	.quad	0x3fd1c4f1450549b2              # double 0.27764541378305829
	.quad	0x3fe7709144296e8f              # double 0.73249114334926613
	.quad	0x3fe91668ec84fe64              # double 0.78398557849136496
	.quad	0x3fd6e2b40046af84              # double 0.35758686091389102
	.quad	0x3fe29aa83ec1649b              # double 0.58137905365869658
	.quad	0x3fd8fbe0197405f0              # double 0.39037325368562303
	.quad	0x3fd2a2ab1f5098b8              # double 0.29117849405373475
	.quad	0x3f9482dd8d7c5620              # double 0.020030462036706109
	.quad	0x3fea63221e7eb19a              # double 0.82460123020205178
	.quad	0x3fd3c0db497a6c90              # double 0.30864603210074737
	.quad	0x3feba8a4dc90de73              # double 0.86433642462993843
	.quad	0x3fc5e79d1abcfc84              # double 0.17113078885629218
	.quad	0x3fe7adae27d3fcfc              # double 0.73995120791360547
	.quad	0x3fe37e53b06b0a51              # double 0.6091707654634978
	.quad	0x3fd290d75e2387f8              # double 0.29009041016809034
	.quad	0x3fecbb71edf113bc              # double 0.89788147423734399
	.quad	0x3fe64ade9b04df36              # double 0.69663934971956709
	.quad	0x3fd652bf4b525894              # double 0.34880049090987453
	.quad	0x3fe260a5b154b5a9              # double 0.57429775843563846
	.quad	0x3fcfa9f96ba43494              # double 0.24737470394066874
	.quad	0x3fcae8a6d4798068              # double 0.21022496580826844
	.quad	0x3fe5036d04c7792a              # double 0.65666819508968399
	.quad	0x3fbb2694c2471aa8              # double 0.10605745070561545
	.quad	0x3fd4e77d483e262e              # double 0.32662899069746032
	.quad	0x3fa8883edb11b4c0              # double 0.047914470903245299
	.quad	0x3fc7b5d1915efa1c              # double 0.18523616407578991
	.quad	0x3fa7a68d26778d70              # double 0.046192561097792573
	.quad	0x3fd2e5bf880dd6d2              # double 0.29527271544007505
	.quad	0x3fed512eceb6fa58              # double 0.91616001485801757
	.quad	0x3fe92991d03585ed              # double 0.78632441202006265
	.quad	0x3fe18b3b96b29ced              # double 0.54824618752618692
	.quad	0x3fe8af472e492a20              # double 0.77139624633975145
	.quad	0x3fe1c1c6c79606c8              # double 0.55490435582779529
	.quad	0x3fe521f3ccecbe58              # double 0.66039457344408969
	.quad	0x3fd0fb70f3848f94              # double 0.26534675389324858
	.quad	0x3fd979524dbf67e0              # double 0.39802987663790468
	.quad	0x3fc205cf2b8f6d48              # double 0.14080228449788934
	.quad	0x3fafbc3cb63e6d10              # double 0.061983010527194904
	.quad	0x3fe3155aa8334751              # double 0.59635670520422412
	.quad	0x3fb5f96ed9ee03d8              # double 0.085837295728210861
	.quad	0x3fe8bb500c2a9b14              # double 0.77286531807189584
	.quad	0x3fe2b2443626ec17              # double 0.58426104141779234
	.quad	0x3fa4c9b68e19f070              # double 0.040601448866227297
	.quad	0x3fb68b97fe9e5b30              # double 0.088067531264056198
	.quad	0x3fe32d0701cb2301              # double 0.59924650526326684
	.quad	0x3fee607a339b0754              # double 0.9492770202561851
	.quad	0x3fc6241f31bdbefc              # double 0.17297735146302518
	.quad	0x3fe48c8e718ce429              # double 0.64215776613048547
	.quad	0x3fdb28af930ad400              # double 0.42435826644515373
	.quad	0x3f84904eed4a95c0              # double 0.010040871254498707
	.quad	0x3fdc169c657df0ba              # double 0.43888006125758816
	.quad	0x3fccf67ae3ecaca0              # double 0.22627197388769549
	.quad	0x3fda695b673f6008              # double 0.41268048365373078
	.quad	0x3fe4b0a73c0d366a              # double 0.64656411866026287
	.quad	0x3fe967bbc9887b8f              # double 0.79391278612080096
	.quad	0x3fd4dd111100520a              # double 0.32599283848074434
	.quad	0x3fe06595e58048f8              # double 0.51240057777820791
	.quad	0x3fe9c2fcb0fc86b3              # double 0.80505213325178315
	.quad	0x3fe7a5b0ae5f15ce              # double 0.73897584969443542
	.quad	0x3fe04b5ba3ccc6f0              # double 0.50919897072000531
	.quad	0x3fd92b5b4eb6a31a              # double 0.39327128111703902
	.quad	0x3fb03aa5c9b7b3a8              # double 0.063394891498048112
	.quad	0x3fd9e14e97321e24              # double 0.40437664761745595
	.quad	0x3fe2a2c2d4c7133f              # double 0.58236829336292562
	.quad	0x3fd48b8f48a1931c              # double 0.32101804821859203
	.quad	0x3fc0d37f87c25b74              # double 0.13145441178195549
	.quad	0x3fd7ff96b8ded4a2              # double 0.37497489980462195
	.quad	0x3fbfe6fa81b66a68              # double 0.12461820284662795
	.quad	0x3fe64572700173b1              # double 0.69597741962535598
	.quad	0x3fe1eba8d90d08ab              # double 0.56001703636890932
	.quad	0x3fd6f99879372944              # double 0.35898410642098022
	.quad	0x3fdc847251f9d18c              # double 0.44558389668898069
	.quad	0x3fe3003de72ef6ed              # double 0.59377951767939197
	.quad	0x3fd1f3945d6a165c              # double 0.28049191591739997
	.quad	0x3fe13563f6189d75              # double 0.537767391830967
	.quad	0x3fe83f1a3ac8217e              # double 0.75770293694317536
	.quad	0x3fdeabc13ee629a0              # double 0.47923308508384288
	.quad	0x3feb1ba59703dfad              # double 0.84712485785620617
	.quad	0x3fb70a3f03185130              # double 0.090000093703854089
	.quad	0x3fe662906fcb4982              # double 0.69953176340850143
	.quad	0x3fd4a1f70be0e038              # double 0.32238556060793
	.quad	0x3fefeb9f5cb30d71              # double 0.99751251321178646
	.quad	0x3fe6821d055c6106              # double 0.70338297888795931
	.quad	0x3fe9efaf5188ade5              # double 0.81050840305891525
	.quad	0x3fec0e83470843fc              # double 0.87677158235067009
	.quad	0x3feb6cd2a74447fd              # double 0.85703404111177373
	.quad	0x3fec869d4859a303              # double 0.89143242007148193
	.quad	0x3fc0de0b505ce964              # double 0.13177625106784341
	.quad	0x3fe4a294c5d31f49              # double 0.6448463310016247
	.quad	0x3fe3533f65b6566a              # double 0.60391206613230719
	.quad	0x3f89ba7dd71d6a80              # double 0.012562735678945502
	.quad	0x3fd42e08f7832d14              # double 0.31530975505002456
	.quad	0x3faedc3465855ee0              # double 0.060273778336236594
	.quad	0x3fe52198a1b40c2b              # double 0.66035110075643411
	.quad	0x3fb69a3f258f1c78              # double 0.088291117353138548
	.quad	0x3fe8415f5b822dd5              # double 0.75798004029041499
	.quad	0x3fc4d79d928a987c              # double 0.16283006339398642
	.quad	0x3fb73c03a7724498              # double 0.090759495144327906
	.quad	0x3fe389ada7c31cf3              # double 0.61055643812224358
	.quad	0x3fe1a37da6f4215e              # double 0.55120737655765217
	.quad	0x3fc1dd2db180198c              # double 0.1395623318387148
	.quad	0x3fe0939c96720b76              # double 0.51801900276073698
	.quad	0x3fd00d308c844882              # double 0.25080503198945092
	.quad	0x3fd4b3369d363798              # double 0.32343831398690659
	.quad	0x3fe3f089ab83df68              # double 0.62311252116249438
	.quad	0x3fe1f7f85e822739              # double 0.56151979883836767
	.quad	0x3fe3c144f884e79f              # double 0.61734245814226429
	.quad	0x3feea07f437efedb              # double 0.95709193404033088
	.quad	0x3fdccb50104106d6              # double 0.44990922534280509
	.quad	0x3fea79b702db1e44              # double 0.82735777433203638
	.quad	0x3fce6323d0124048              # double 0.23740050945025559
	.quad	0x3fe28f44364b1b9f              # double 0.57998858074357773
	.quad	0x3fc6cbdf984b1490              # double 0.17809672294803081
	.quad	0x3fe47fa768b78f01              # double 0.6405827565435801
	.quad	0x3fd47c9c6fafd244              # double 0.32010565668977997
	.quad	0x3fd4f1558e95be26              # double 0.32722987102804024
	.quad	0x3fe5a5c4ed82833a              # double 0.67648550404201235
	.quad	0x3fd9e611542005f4              # double 0.40466721740094092
	.quad	0x3feb16dde6a8dd4f              # double 0.84654135752399806
	.quad	0x3fe9c0c3ffb6c76d              # double 0.80478095955025497
	.quad	0x3fe9a260a4753e7d              # double 0.80107147331905504
	.quad	0x3fcc973e5402acac              # double 0.22336558439324017
	.quad	0x3fefaffe11f8cf65              # double 0.99023345480098312
	.quad	0x3febad5a0183e28d              # double 0.86491108222897284
	.quad	0x3fc5d8a85a502d88              # double 0.17067436609100306
	.quad	0x3fe2fd05b0598194              # double 0.59338650172508034
	.quad	0x3fe22f765ee25722              # double 0.56829374820765488
	.quad	0x3fe00c26f1b60698              # double 0.50148341378390437
	.quad	0x3fd152087442126e              # double 0.27063189843491997
	.quad	0x3fee22e62234c15d              # double 0.9417601268851673
	.quad	0x3fb9fbaa91b99190              # double 0.10149637277351631
	.quad	0x3fe31692f718bcb4              # double 0.59650562535343576
	.quad	0x3fe827e56deb89f0              # double 0.75487014263882024
	.quad	0x3febc4449bf9b646              # double 0.86770849670364991
	.quad	0x3fe35fcc366bfbfc              # double 0.60544405583630079
	.quad	0x3fe25d41ada5a1e8              # double 0.57388385692052868
	.quad	0x3fe426103af6c027              # double 0.62964641109829678
	.quad	0x3fe8c89632122e56              # double 0.77448568133827211
	.quad	0x3fb57496a1956640              # double 0.083810247849577912
	.quad	0x3fe8fb6decb4c082              # double 0.78069206458714313
	.quad	0x3fd3a85fda53bcfa              # double 0.30715175934797367
	.quad	0x3fe768a5d741af2a              # double 0.73152439157772631
	.quad	0x3fd83d7717834bae              # double 0.378751538240233
	.quad	0x3fdd90ea8a534622              # double 0.46196998127297395
	.quad	0x3fc4a00781cce7bc              # double 0.16113370740805333
	.quad	0x3fbf058a53c56fc8              # double 0.12117828889080251
	.quad	0x3fe8fd07f4bfc807              # double 0.78088758280341686
	.quad	0x3fe375a40e2596be              # double 0.60811045420697218
	.quad	0x3fecb0c0c481524d              # double 0.89657629375376191
	.quad	0x3fbc66b1555849a0              # double 0.11094196637740206
	.quad	0x3fb1f615576900d0              # double 0.070161184158681111
	.quad	0x3feb8e7a1be849fe              # double 0.86114221048984496
	.quad	0x3fdf7d6e53e0d25a              # double 0.49203069869262139
	.quad	0x3fe89326b11b4d4c              # double 0.76796278563635089
	.quad	0x3fd878dad17d7124              # double 0.38237638910301741
	.quad	0x3fe612c7bde42b2b              # double 0.68979250991956087
	.quad	0x3fc5ab3e6ef72494              # double 0.16928844850761904
	.quad	0x3fe6947f2d15c5cd              # double 0.70562704854654046
	.quad	0x3fc9376a5d4c79ec              # double 0.1970036464271766
	.quad	0x3fe92f716e290078              # double 0.78704139247567095
	.quad	0x3fdbd8c4a4d4162c              # double 0.43510547729997273
	.quad	0x3fccf9630c05e4ac              # double 0.22636068427144573
	.quad	0x3fa5ddf46356d380              # double 0.04270900452266968
	.quad	0x3fed651afef2705d              # double 0.91859197420445649
	.quad	0x3fd5da5e355d7334              # double 0.34145312510900117
	.quad	0x3fdfc7db83ee9086              # double 0.49657333263372327
	.quad	0x3fd9d11fe7c64f26              # double 0.40338895448916146
	.quad	0x3fec771f3766ffd1              # double 0.88954125233430592
	.quad	0x3f9df52eeb2b9640              # double 0.029255612472203874
	.quad	0x3fc27388a32f78b4              # double 0.14415080993689389
	.quad	0x3fe054025f33ba21              # double 0.51025503725196952
	.quad	0x3fbfeb08f680e690              # double 0.12468009966041849
	.quad	0x3faf27836de62d00              # double 0.060848338284893444
	.quad	0x3fd7f5059eba6540              # double 0.3743299532012152
	.quad	0x3fdf16ef52e8e85c              # double 0.4857748326936695
	.quad	0x3fef13638c5b5d9e              # double 0.97111680425125591
	.quad	0x3fdd4e1e5aa4e85c              # double 0.45789297916383531
	.quad	0x3fd53a75ede4e3cc              # double 0.33169315559240142
	.quad	0x3fd4f077e62e5c70              # double 0.32717702368376589
	.quad	0x3fdcb5d4dd0625b8              # double 0.44859811386467241
	.quad	0x3fb0c149ae217320              # double 0.065449337971085431
	.quad	0x3fe1cd28a25063c7              # double 0.55629378988225475
	.quad	0x3fddb7e60c3fd6a6              # double 0.46434928127505726
	.quad	0x3fd0fa09f1f695ca              # double 0.26526116017552381
	.quad	0x3fec17596a3246bf              # double 0.8778502535007745
	.quad	0x3fdb1fac4d75fa02              # double 0.42380816998039006
	.quad	0x3fbbbaec51a658b8              # double 0.10832097047236544
	.quad	0x3fd0aa35680dbd58              # double 0.2603887096547246
	.quad	0x3fd33b6d616b6c04              # double 0.30050215257296053
	.quad	0x3fe656a71b30afb1              # double 0.69807772932607837
	.quad	0x3fe4047162bbb93c              # double 0.62554234775397033
	.quad	0x3fbb5635ad9223c0              # double 0.10678420531816268
	.quad	0x3fc82ea947e25014              # double 0.18892398843729608
	.quad	0x3fe847ec8f6ec01e              # double 0.75877979292090791
	.quad	0x3fe53502a096f144              # double 0.66272097935829111
	.quad	0x3fd503a9ead526a6              # double 0.32834861691353934
	.quad	0x3fea99e26a8f09c8              # double 0.83128472149137966
	.quad	0x3fd56dca8a8a91da              # double 0.33482612161085756
	.quad	0x3fe5e354ed2cf4bc              # double 0.68400045703278733
	.quad	0x3feb3596b333a928              # double 0.85029158592559373
	.quad	0x3fdf9a455541476c              # double 0.49379094434436044
	.quad	0x3fd706c2b7c66194              # double 0.35978763529558333
	.quad	0x3fe25b175e04b106              # double 0.57361954081491784
	.quad	0x3fe1f347f8a58039              # double 0.56094740451590674
	.quad	0x3fd1f79fd17d2c2a              # double 0.2807387872496202
	.quad	0x3fef64ff5cbf13d6              # double 0.9810787974789672
	.quad	0x3fe1b9749985b6b4              # double 0.55388860688045449
	.quad	0x3feea482bd5868da              # double 0.95758187276376394
	.quad	0x3fc40aea14852228              # double 0.15658308031039891
	.quad	0x3fbde6e2ddd16198              # double 0.1168042937800976
	.quad	0x3fc96f0843908b40              # double 0.19870093630842156
	.quad	0x3fce3a41849e2d5c              # double 0.23615282989008335
	.quad	0x3fc81944bb1215a8              # double 0.18827113279637087
	.quad	0x3fe48677b92d5a45              # double 0.64141451041616249
	.quad	0x3fd8443928e46b28              # double 0.37916401856789372
	.quad	0x3fc9df72da9d9460              # double 0.20213161158168003
	.quad	0x3fd48901c1c506f8              # double 0.32086223528686686
	.quad	0x3fd5e3617de136b0              # double 0.34200322430556707
	.quad	0x3fd239f10608ca30              # double 0.28478646840372601
	.quad	0x3fe77db4438f738e              # double 0.73409474559194776
	.quad	0x3fe1175fec4ef194              # double 0.53410335687617527
	.quad	0x3fcbc4eded9e7680              # double 0.21694730856409095
	.quad	0x3fe101894d9ccaa8              # double 0.53143754156765954
	.quad	0x3fdef6bfd5282c8a              # double 0.48381038490396888
	.quad	0x3fd4a5c74dfb8b0e              # double 0.32261831870543822
	.quad	0x3fec8f7ca36ff4fa              # double 0.89251548692087046
	.quad	0x3fc16cc59c5bf4ac              # double 0.13613195547796886
	.quad	0x3fec62332ce6636e              # double 0.88698729295275114
	.quad	0x3fc6a7a8a8ca5184              # double 0.17699154130663086
	.quad	0x3fe163894b6fadab              # double 0.54340042813912726
	.quad	0x3fcad1a0a156fa00              # double 0.20952232244412983
	.quad	0x3fa0e963dc41bff0              # double 0.033030624996967961
	.quad	0x3fe74a766ca10f7c              # double 0.72783967224721335
	.quad	0x3fec174c8968b0e1              # double 0.87784411275563567
	.quad	0x3fec10d1618b2ada              # double 0.87705296565521995
	.quad	0x3fe3c3b0c183a159              # double 0.61763799472559378
	.quad	0x3fdb1dfbd5f4efe6              # double 0.42370506185738888
	.quad	0x3fec96fdd1ebd59b              # double 0.89343157768478265
	.quad	0x3fe6e19541a85568              # double 0.71503699134579524
	.quad	0x3fca9726e96418a4              # double 0.20773779293103189
	.quad	0x3fc082b1e1f00008              # double 0.12898849041084781
	.quad	0x3fdf3cc913b54348              # double 0.48808504986395862
	.quad	0x3fe0bde142980899              # double 0.52317870146386547
	.quad	0x3fb4b34f273d1448              # double 0.080861041145071089
	.quad	0x3febec358006f9fc              # double 0.87258410458872459
	.quad	0x3fdb35c5f4fb7538              # double 0.42515705989883967
	.quad	0x3fee2123ee4d2b07              # double 0.94154545348405427
	.quad	0x3fd35fba4839e91c              # double 0.30271775296536574
	.quad	0x3fb1086b8da074c8              # double 0.066534730984545765
	.quad	0x3fefe34757a4ea3e              # double 0.99649397962577502
	.quad	0x3febdd5ef13b2c0b              # double 0.87077281108338533
	.quad	0x3fd34b09faabcbfc              # double 0.30145501594159874
	.quad	0x3fe6bb6f3d732fdb              # double 0.71038019182150991
	.quad	0x3fe177c6647f5fa4              # double 0.54587096813610403
	.quad	0x3fe3f964837e7348              # double 0.62419343645488201
	.quad	0x3fd6786da49259a6              # double 0.35110035964444319
	.quad	0x3fbc55808ed0d1e0              # double 0.11067965971671567
	.quad	0x3fe2b906235b43a8              # double 0.58508593469206449
	.quad	0x3fe13fae6e42c6a2              # double 0.53902360472985245
	.quad	0x3fd5e2d5fdce2b90              # double 0.34196996484450271
	.quad	0x3fddbf8f250e191c              # double 0.46481684321078531
	.quad	0x3fd96821d739af9c              # double 0.39698072450732425
	.quad	0x3fc9de8476c8c5b8              # double 0.20210319328320536
	.quad	0x3f84ad8ec1b97780              # double 0.010096659934045737
	.quad	0x3fdb5fc4eec789a2              # double 0.42772029226594033
	.quad	0x3fe41c9669c0847a              # double 0.62848969130222021
	.quad	0x3fe84cd533f2507f              # double 0.75937900682266946
	.quad	0x3f96e03fc46e3440              # double 0.022339817394414263
	.quad	0x3fa05c0e5782b4d0              # double 0.03195233171695977
	.quad	0x3fecc380c221984a              # double 0.89886510769134387
	.quad	0x3fee310d26e9f5cb              # double 0.94348771667835629
	.quad	0x3fe44e736a3f13f8              # double 0.63457651854753205
	.quad	0x3fe398361561db52              # double 0.61233047653409245
	.quad	0x3fe5079d1085718e              # double 0.65717938639459006
	.quad	0x3fea05cb108abbf1              # double 0.81320718031736139
	.quad	0x3fcf5b4b38bd40cc              # double 0.2449735667273728
	.quad	0x3f8a6a1651fe0b40              # double 0.012897657754142977
	.quad	0x3fecca3c21225229              # double 0.8996868750714998
	.quad	0x3fbb0459cf4d3bb0              # double 0.10553513823582139
	.quad	0x3fe2e5db1c84c2ef              # double 0.59055858202017741
	.quad	0x3fd7253505fb3e7c              # double 0.36164594253657589
	.quad	0x3fad8bb15d612e90              # double 0.057706396721724507
	.quad	0x3fa4a888e14250b0              # double 0.040348317620698793
	.quad	0x3fefcf0032d77807              # double 0.99401864938749973
	.quad	0x3fdf4eedf1f71baa              # double 0.48919247273846145
	.quad	0x3fe7e497e61ddaf2              # double 0.74665446228649857
	.quad	0x3fecbef7a828affe              # double 0.89831145137350155
	.quad	0x3fc8e69aed78f784              # double 0.19453751178110334
	.quad	0x3fec14039ecf8c2b              # double 0.87744313256951523
	.quad	0x3fead64bf8597103              # double 0.83865927224863446
	.quad	0x3fc2916fb65da918              # double 0.14506336597998692
	.quad	0x3fdc589700e21114              # double 0.44290709577787024
	.quad	0x3fec78231d2bb434              # double 0.88966518113523429
	.quad	0x3fc49c047fd1af28              # double 0.16101127854505504
	.quad	0x3fe248e6d6406f67              # double 0.57139913412127619
	.quad	0x3fe7eaf5aa16e539              # double 0.7474315950450211
	.quad	0x3fe5ff13d690fcb0              # double 0.6873873892544875
	.quad	0x3fdc38f2a42bc106              # double 0.44097581894222093
	.quad	0x3fd429e6df1a8a00              # double 0.31505748546092605
	.quad	0x3fb71a3c3fcecf30              # double 0.09024406965073406
	.quad	0x3fefc30661feac9a              # double 0.99255675449002756
	.quad	0x3fe1fdd116b0d409              # double 0.56223349029335268
	.quad	0x3fb828aff2fb8f60              # double 0.094370838949143998
	.quad	0x3fd819667ecbc6cc              # double 0.37655031568929753
	.quad	0x3fe5f4aed329dddd              # double 0.68611851923827383
	.quad	0x3fc1919473f5eb7c              # double 0.13725524580135218
	.quad	0x3fd4425633dd0afc              # double 0.31654887261190345
	.quad	0x3fc7031cb571f350              # double 0.17978247508645007
	.quad	0x3fefc8a26cc53fa8              # double 0.99324151272047789
	.quad	0x3fab828d2ff84960              # double 0.053730404000946974
	.quad	0x3fcba73d94060f14              # double 0.21604127624242919
	.quad	0x3fcf06c91804e530              # double 0.24239457772072504
	.quad	0x3fed5fa882b2b069              # double 0.91792703177408186
	.quad	0x3fdf1fb3ff772ef2              # double 0.48631000469025232
	.quad	0x3fea424dd01f0648              # double 0.82059374474210589
	.quad	0x3fec345d352f7829              # double 0.88139210117129096
	.quad	0x3fc4d685dbcabfb8              # double 0.16279671890288028
	.quad	0x3fe774792fc014e7              # double 0.73296794248804253
	.quad	0x3fe33a94d0355593              # double 0.60090103784266302
	.quad	0x3fd8aeeabf781916              # double 0.38567608545453547
	.quad	0x3fda9809bf5c6320              # double 0.41552966773592637
	.quad	0x3fea660fed6c3760              # double 0.82495876666665068
	.quad	0x3fe4d090c63ed1ac              # double 0.6504596588115894
	.quad	0x3febacc42e6bc1f6              # double 0.86483964029872484
	.quad	0x3fed4cbb34ee85cd              # double 0.9156166108916125
	.quad	0x3fdd3456d9774386              # double 0.45631953465368047
	.quad	0x3fb46b1c763c16f8              # double 0.079759386888408446
	.quad	0x3f9748ba586654a0              # double 0.022738372464648493
	.quad	0x3fd9178358213186              # double 0.39206012350475594
	.quad	0x3fddad4115a5c672              # double 0.46369959939975225
	.quad	0x3fc598848dc18ed8              # double 0.16871697351154213
	.quad	0x3feafc4150dfb6ec              # double 0.84329286380463264
	.quad	0x3fe113a0ea1bcfd5              # double 0.53364606594413522
	.quad	0x3fe302a241f909e9              # double 0.59407151112855872
	.quad	0x3fa07f5cc03721e0              # double 0.032221697295941487
	.quad	0x3feb8525e0b3aa07              # double 0.86000341307709582
	.quad	0x3fed85a218b7b49b              # double 0.92256264522224585
	.quad	0x3fe4654d417ace07              # double 0.63736593998913882
	.quad	0x3fe2a460f010ca6d              # double 0.58256575477419192
	.quad	0x3fe9506ed57fec1a              # double 0.79106847476157616
	.quad	0x3fee52ccabf1c894              # double 0.94760736067680051
	.quad	0x3fe17eb7d348d776              # double 0.54671851412307038
	.quad	0x3fedd62dadf89dfc              # double 0.93239482859365763
	.quad	0x3fe3c0a480f23fc2              # double 0.61726594147511826
	.quad	0x3fe9b2855c505d81              # double 0.80304210691512889
	.quad	0x3fe620c7d1ee241b              # double 0.6915015316200227
	.quad	0x3fbe400c641067b0              # double 0.11816480105372196
	.quad	0x3fef13411274bc2f              # double 0.97110036472975547
	.quad	0x3fe42dfefc0e485d              # double 0.63061475019118129
	.quad	0x3fe5246c0da964fb              # double 0.66069605510997975
	.quad	0x3fdb14e9e17d9682              # double 0.42315146465839615
	.quad	0x3fd671722b72ed04              # double 0.35067419283923607
	.quad	0x3fa1aed038029bc0              # double 0.034536845051938325
	.quad	0x3fb3fb8d24d5d5f0              # double 0.078057118885986431
	.quad	0x3fe005ccb9f04be5              # double 0.50070797268051292
	.quad	0x3fe22b81f6bf7baa              # double 0.56781099503483756
	.quad	0x3fcd5dc17dcd8fb4              # double 0.22942370074008311
	.quad	0x3fd47592bbfaef36              # double 0.31967609746401437
	.quad	0x3fe3a4c3254c4706              # double 0.61386258396871152
	.quad	0x3fe79b65fe70cbf8              # double 0.73771953292305081
	.quad	0x3fe830ce1a69b946              # double 0.75595765265260506
	.quad	0x3fe053349fa04359              # double 0.51015692879637264
	.quad	0x3fe444d56873dcdb              # double 0.633402542122805
	.quad	0x3fef038f153d00c3              # double 0.96918443821052624
	.quad	0x3fe8723b313f2aad              # double 0.76394424074654455
	.quad	0x3fe957b1bb8f1528              # double 0.79195486672020809
	.quad	0x3fc3d008a8ce7cb0              # double 0.15478618853101045
	.quad	0x3fa5ae9b66b17aa0              # double 0.042347770963478526
	.quad	0x3fece3b9e753423b              # double 0.90279860668858392
	.quad	0x3fe4ff54232ac127              # double 0.65616804951244923
	.quad	0x3feea426204ae76b              # double 0.95753771121165465
	.quad	0x3fdd03058ef9816e              # double 0.45330943071714713
	.quad	0x3fba74647d6a4f98              # double 0.10333850919624721
	.quad	0x3fec354e4c1f5c23              # double 0.88150706165004455
	.quad	0x3fe782337e88241c              # double 0.73464369500391369
	.quad	0x3fa1ad8178475160              # double 0.034526868755764495
	.quad	0x3fedc408a387cebe              # double 0.93017990054655519
	.quad	0x3fce4a54c1e959cc              # double 0.23664340465866329
	.quad	0x3fd5235fc8474dda              # double 0.3302840667576824
	.quad	0x3fe44c90c7ce206e              # double 0.63434638046693492
	.quad	0x3fcde42446e12c3c              # double 0.23352483235280086
	.quad	0x3feebeec5f3c55b6              # double 0.96080607033461862
	.quad	0x3fe19d5ce5323d9c              # double 0.55045933499234279
	.quad	0x3fea650551d8a4d4              # double 0.82483163819883964
	.quad	0x3fed1e99e1b6cd77              # double 0.9099854858854276
	.quad	0x3fdddadd13751b3e              # double 0.46648337268964102
	.quad	0x3fe4603216df33ce              # double 0.63674263446011437
	.quad	0x3fe0e80772878fe6              # double 0.52832386368799855
	.quad	0x3fe88b7b23b0f769              # double 0.76702649088813957
	.quad	0x3fdf37df052f8db8              # double 0.48778510576650147
	.quad	0x3fe7eb065e07071c              # double 0.74743955960022701
	.quad	0x3fcb155b34d437c0              # double 0.21158924178638294
	.quad	0x3f94e78a46706a20              # double 0.0204145055287005
	.quad	0x3fd7a65dda637858              # double 0.3695292122555478
	.quad	0x3fe9fffdb01880be              # double 0.81249889749235371
	.quad	0x3fe42c8d4c6ec237              # double 0.63043847015621324
	.quad	0x3fcfc64f40990e40              # double 0.24823942808335353
	.quad	0x3fe21f4e29224dcc              # double 0.56632144960388464
	.quad	0x3fe46717ad3c0933              # double 0.6375845321165684
	.quad	0x3fa5cc834613ef70              # double 0.042575933746745842
	.quad	0x3fb8ba4c0c60ab70              # double 0.096592667600516213
	.quad	0x3fc2c514ee23a328              # double 0.14663945796862632
	.quad	0x3fe3fca4c42718ae              # double 0.62459028540685835
	.quad	0x3fead4496c35de05              # double 0.83841391692016087
	.quad	0x3fcf6d0006a4dac0              # double 0.2455139191094613
	.quad	0x3fbd2aebc1de3d68              # double 0.11393617137058742
	.quad	0x3fe6a915fe4769d8              # double 0.70814037002429142
	.quad	0x3fc86e0f06114c6c              # double 0.19085872455852682
	.quad	0x3fe7020c151129e6              # double 0.71899990191132868
	.quad	0x3fda896d5ef216de              # double 0.41463789245640992
	.quad	0x3fc737236aa8d22c              # double 0.18137018878918931
	.quad	0x3fec83998d640000              # double 0.89106443038326688
	.quad	0x3fd3a3582fba2134              # double 0.30684475575300785
	.quad	0x3fcdfe8a8f1bca5c              # double 0.23433048236582266
	.quad	0x3fc9f75f5fddae38              # double 0.20286171132043918
	.quad	0x3fed180e4a8839a2              # double 0.90918650204712415
	.quad	0x3fdb42e43cc058b2              # double 0.425957736327642
	.quad	0x3fc045787aa2067c              # double 0.1271200751107705
	.quad	0x3fe6fc1eda676511              # double 0.71827643067368474
	.quad	0x3fe604823648c84d              # double 0.6880503711929663
	.quad	0x3fee5fc487d98481              # double 0.94919039281025175
	.quad	0x3fe856585ad67492              # double 0.76054017774335336
	.quad	0x3fe596bbfee20ed0              # double 0.67465019018023931
	.quad	0x3fecb41b599d9696              # double 0.89698569777529502
	.quad	0x3feb8e6971c93257              # double 0.86113426421941142
	.quad	0x3fa906434c7a4d60              # double 0.048875907025968557
	.quad	0x3fd86d19907dca3a              # double 0.38165892706379945
	.quad	0x3fdae37b8bf484f6              # double 0.42013443629737368
	.quad	0x3fee18b90bb21870              # double 0.94051792415917923
	.quad	0x3f902f0fe6ed6520              # double 0.015804527730641671
	.quad	0x3fd8ff7f4ec3ffd2              # double 0.39059431735949801
	.quad	0x3febf4b856ef54b4              # double 0.87362305621595348
	.quad	0x3fe26a11ed145dcc              # double 0.57544800095177484
	.quad	0x3fe07a2d27a912c1              # double 0.51491410967044982
	.quad	0x3fe3a091748abac7              # double 0.61335060846416745
	.quad	0x3feb23de105b630d              # double 0.84812834925387082
	.quad	0x3fd1cae36e76c9c0              # double 0.2780083254575878
	.quad	0x3fe6ec73f17f1f8a              # double 0.71636387984561734
	.quad	0x3fd5cd19b942b294              # double 0.34064334003304819
	.quad	0x3fcf8bebb7fb73e4              # double 0.2464575432158248
	.quad	0x3fcd5e038ee04170              # double 0.22943157650344004
	.quad	0x3fea596fdeb1a3c3              # double 0.82341760153678256
	.quad	0x3feba91e20f197f9              # double 0.86439424928971598
	.quad	0x3fd155553d71c64c              # double 0.27083331108506026
	.quad	0x3fcd62603143e664              # double 0.22956468968895927
	.quad	0x3fe58f56787aa246              # double 0.67374728709280229
	.quad	0x3fd1764721a43bc0              # double 0.2728441074877388
	.quad	0x3fa774c7b86f2870              # double 0.045812836898748155
	.quad	0x3fe8cd94b342f2e5              # double 0.77509531986251246
	.quad	0x3fc991a8009c21dc              # double 0.19975757627277246
	.quad	0x3fef7ec6ec41d7a7              # double 0.98422571319564589
	.quad	0x3fd035c7ce5c9b36              # double 0.25328250076784131
	.quad	0x3fcaa478076f7154              # double 0.20814419138958817
	.quad	0x3fe58bb98cd809ea              # double 0.67330625065397709
	.quad	0x3fe78e18b56010e4              # double 0.73609576630454088
	.quad	0x3fe548b28ffe0bab              # double 0.66512420772084135
	.quad	0x3fe47e6deb865674              # double 0.64043327332428968
	.quad	0x3fc2ff6f50eadf88              # double 0.14842025233314993
	.quad	0x3fe5bd77c0bec66e              # double 0.67937839170026648
	.quad	0x3fea4fb6d0c67e71              # double 0.8222307279247173
	.quad	0x3fe6091fb4944156              # double 0.68861375111922984
	.quad	0x3fee9de86e682673              # double 0.95677587093196192
	.quad	0x3fd3de4179bc9e28              # double 0.31044041527136068
	.quad	0x3fc164262f1538b0              # double 0.135868809690185
	.quad	0x3feef484ac549a92              # double 0.96734841974542207
	.quad	0x3feca3fe41b88555              # double 0.89501869999018402
	.quad	0x3fe5111cee324809              # double 0.65833899042832045
	.quad	0x3fc03c9e5a1ca834              # double 0.12684993171689174
	.quad	0x3fb40bfa1ad63c08              # double 0.078307754089323223
	.quad	0x3f59d446ff895000              # double 0.0015764897672356781
	.quad	0x3fc5f9d9d4ac0d98              # double 0.1716873444021132
	.quad	0x3fe62358df55676c              # double 0.69181483859868598
	.quad	0x3fd608829aaaf4e8              # double 0.34426941971089642
	.quad	0x3fdbe8faf0d331f8              # double 0.43609498518051693
	.quad	0x3fde8423adb72a3c              # double 0.47681514706042427
	.quad	0x3fe6c89db69f0170              # double 0.71198926609217317
	.quad	0x3fed4c9c336ea5a3              # double 0.91560182614664531
	.quad	0x3fe5909654c8fb8e              # double 0.67389980849826414
	.quad	0x3fedfeaffef24945              # double 0.93733978075241764
	.quad	0x3fec842b7b4a0994              # double 0.89113401489184917
	.quad	0x3fc6e2ef77dad354              # double 0.17880051948818709
	.quad	0x3fe21435d9661c64              # double 0.56496708355633674
	.quad	0x3fdf71d46acc4ae8              # double 0.4913226168584246
	.quad	0x3fe4a816eaac635c              # double 0.64551874003073406
	.quad	0x3fc81571846558b4              # double 0.18815440144198237
	.quad	0x3fb8910f89644c18              # double 0.095963450472752121
	.quad	0x3fd778b8cb3d2912              # double 0.36674327704953769
	.quad	0x3fe087368c7a7625              # double 0.51650550305538856
	.quad	0x3fe36e14613c9390              # double 0.60718745223549497
	.quad	0x3fd1386ffca388b8              # double 0.26906966850050251
	.quad	0x3fddad4133ea627a              # double 0.46369962758902938
	.quad	0x3fe752b658ba6a0a              # double 0.72884671525690803
	.quad	0x3feb79a383e0d01d              # double 0.8585984779115311
	.quad	0x3fcb4a2c6dcb1278              # double 0.21320109711645663
	.quad	0x3f8a563a9391f880              # double 0.012859780910954521
	.quad	0x3fe21c2286da30e4              # double 0.56593443239537722
	.quad	0x3fea9b366de3f577              # double 0.83144685233098314
	.quad	0x3f9b6383347159e0              # double 0.026746797633984687
	.quad	0x3fd96c893cde44c2              # double 0.39724951690829979
	.quad	0x3fa597b47c792390              # double 0.042173042482836043
	.quad	0x3fd39f555d44a2b2              # double 0.30659994228566767
	.quad	0x3fccaaa4afea7438              # double 0.22395762052193091
	.quad	0x3fc17579dbd67dc8              # double 0.13639758333464003
	.quad	0x3fd3cdeccbb2257c              # double 0.30944366352249353
	.quad	0x3fd8eb1157027e0a              # double 0.3893473958687258
	.quad	0x3fd0f78ea463ca98              # double 0.26510969213192359
	.quad	0x3fdeacc22d70f0d2              # double 0.47929434239973745
	.quad	0x3fe099f714d025e4              # double 0.51879457535795526
	.quad	0x3fcafaf132924a68              # double 0.21078314751919724
	.quad	0x3fe97bdc78f74bc7              # double 0.79636977792903785
	.quad	0x3fd75d07d3df1d3c              # double 0.36505313578205167
	.quad	0x3fe04687b559b856              # double 0.5086096326829288
	.quad	0x3fe0f194ad866d54              # double 0.52948984042761049
	.quad	0x3feca1f010d5dba1              # double 0.89476779258881234
	.quad	0x3fe0bdc1e58f606c              # double 0.52316374622297479
	.quad	0x3fe382bf4d82c09b              # double 0.60971036089724195
	.quad	0x3fdc730a9e183288              # double 0.44452157439153739
	.quad	0x3fe354d851998525              # double 0.60410705506743467
	.quad	0x3fd5803e11d636d6              # double 0.3359522985636948
	.quad	0x3face97583fbac80              # double 0.056468651162355776
	.quad	0x3fe091165517bc64              # double 0.51771084422751956
	.quad	0x3fe942fb643cdeef              # double 0.78942651345911752
	.quad	0x3fc31f7a6d9bf2f8              # double 0.14939813949595027
	.quad	0x3fdcad038912cd5a              # double 0.44805992494658187
	.quad	0x3fddd96d897e0108              # double 0.46639574458096478
	.quad	0x3fd7dcca35c058fa              # double 0.37285094498783133
	.quad	0x3fe3938f2b4a34ba              # double 0.61176260428478391
	.quad	0x3fd8428bd8a2f87e              # double 0.37906166225355509
	.quad	0x3fb2fbf157152b68              # double 0.074156841049597966
	.quad	0x3fef2612f5c46a90              # double 0.9733977127210256
	.quad	0x3fdaf6e1487fc688              # double 0.42131836013786783
	.quad	0x3fe9e677d6d36471              # double 0.80938331564096988
	.quad	0x3fe1b71a98e26744              # double 0.55360154972297737
	.quad	0x3fa930f4b68e34b0              # double 0.049201628956418886
	.quad	0x3fab7fc51e970140              # double 0.053709182724107851
	.quad	0x3fb4ae0196208798              # double 0.08078012385570188
	.quad	0x3fbbaacacdfc9cf8              # double 0.10807483223890191
	.quad	0x3fea332383b83b9f              # double 0.81874252058502239
	.quad	0x3f96ea934121cd00              # double 0.022379208422035113
	.quad	0x3fe7377a212018d0              # double 0.72552210302162656
	.quad	0x3fb07355739466f0              # double 0.064259854047488352
	.quad	0x3fc4bc6803fd3704              # double 0.16199970431119237
	.quad	0x3feda1e8577e9887              # double 0.92601410950443686
	.quad	0x3fbb81c6e5b231b0              # double 0.10744898898901201
	.quad	0x3fb035bb21bf2228              # double 0.063319869746131574
	.quad	0x3fdf5cb2be5f944a              # double 0.49003285018108456
	.quad	0x3fe242ddaed34bc5              # double 0.57066234727459941
	.quad	0x3fda3a15d36cf3e6              # double 0.40979524275809209
	.quad	0x3fe01a859ac95ee7              # double 0.50323753577955876
	.quad	0x3fd59fe2b5172536              # double 0.33788364109621527
	.quad	0x3fe8a50c684b199b              # double 0.77014751786991853
	.quad	0x3fe125d421b662e6              # double 0.53586775383436414
	.quad	0x3fe95266812d8feb              # double 0.79130864362786946
	.quad	0x3fe17b4609c008a6              # double 0.54629804519961023
	.quad	0x3fe09f4efa2d57a1              # double 0.51944683897703581
	.quad	0x3fea0f298972c931              # double 0.81435086102854914
	.quad	0x3faef16bbf277960              # double 0.060435645183803954
	.quad	0x3fdbc5a22c847e36              # double 0.4339375910512645
	.quad	0x3fe976366fd2d0c5              # double 0.79568025436903922
	.quad	0x3fe3af469b4fd63b              # double 0.6151459725794618
	.quad	0x3feaef61776ecc25              # double 0.84172128035277594
	.quad	0x3fc2524b9107a29c              # double 0.1431364496377413
	.quad	0x3fa400ed72765e00              # double 0.039069576475579737
	.quad	0x3fc9805960a7474c              # double 0.19922940463453143
	.quad	0x3fe68a5615199aca              # double 0.70438675042245191
	.quad	0x3fe2d573e6485084              # double 0.58855624177023502
	.quad	0x3fdfc94e65f3fe80              # double 0.49666175800664547
	.quad	0x3fe4df5d6ab7365c              # double 0.65226622431664394
	.quad	0x3fdd70ddd619926a              # double 0.46001382740204255
	.quad	0x3fb93f0967d0ce38              # double 0.098618114324204309
	.quad	0x3fdfe4d61d13655e              # double 0.49834206427984451
	.quad	0x3fd6171486b67144              # double 0.34515870242627877
	.quad	0x3fc49cdb1a79ac98              # double 0.16103686135042916
	.quad	0x3fecf4b190aa5d60              # double 0.90486982588747011
	.quad	0x3fe535b4e5bc2c44              # double 0.66280598516585387
	.quad	0x3fe58cd27ac0b29a              # double 0.67344020819799089
	.quad	0x3fefcf16e6d45e24              # double 0.99402947505854344
	.quad	0x3fecfd3ef689e4e0              # double 0.90591381218032651
	.quad	0x3fe740b1dfcaf354              # double 0.72664731702352947
	.quad	0x3fe83ed551ce41b8              # double 0.75767007806466946
	.quad	0x3fe2d0107fad31c2              # double 0.58789849221062007
	.quad	0x3fe23149d5a071b8              # double 0.56851665233585091
	.quad	0x3fde17a31c782954              # double 0.47019269733632041
	.quad	0x3feca822551e0809              # double 0.89552418350672369
	.quad	0x3fe1b6abb78062de              # double 0.55354867782724759
	.quad	0x3fa61cf15ef7c510              # double 0.043189566462283335
	.quad	0x3fe70a679ac29455              # double 0.72002010561539953
	.quad	0x3fe7283eac15d786              # double 0.72366269693769492
	.quad	0x3fe22a5f28bed35d              # double 0.56767232854927452
	.quad	0x3fd36f45f75912d4              # double 0.30366658358643162
	.quad	0x3fe786c0399cfd8a              # double 0.73519908192240391
	.quad	0x3fe37cfb3ede3d01              # double 0.60900652197770466
	.quad	0x3fe4b0b269effc96              # double 0.64656944933803362
	.quad	0x3fe02d2c683104e7              # double 0.50551433896921771
	.quad	0x3fda37cf43bcb448              # double 0.40965634932473849
	.quad	0x3fdd823f14ec44ea              # double 0.46107461016897722
	.quad	0x3fe578a735837b48              # double 0.67097816898226714
	.quad	0x3fdbe0c22e9b61a4              # double 0.43559317161045841
	.quad	0x3fefdc4772436830              # double 0.99563953702022978
	.quad	0x3fdf7017a838a814              # double 0.49121657779562722
	.quad	0x3fec399712008122              # double 0.88203004375467153
	.quad	0x3fcff9e9b1c50e0c              # double 0.24981423549807891
	.quad	0x3fad98babd3420e0              # double 0.057805858226915197
	.quad	0x3fe9add0f7872d95              # double 0.80246780724830791
	.quad	0x3fd0649ffbc16472              # double 0.2561416586446007
	.quad	0x3fe08a496ee3e146              # double 0.51688071878656028
	.quad	0x3fd5bfa9ef5d545e              # double 0.33982323050924446
	.quad	0x3fd67a4b4316178a              # double 0.35121423293491516
	.quad	0x3fec604541034c4b              # double 0.88675177285984697
	.quad	0x3fea09889c59f4c6              # double 0.81366377389317601
	.quad	0x3fec55257b1db115              # double 0.88539384885874262
	.quad	0x3fe5bb6f3b2234a3              # double 0.67913018750700294
	.quad	0x3fcd8652dff97e3c              # double 0.23066173492678554
	.quad	0x3fe8b58de43ee665              # double 0.77216238574255824
	.quad	0x3f867df75ebd18c0              # double 0.010982449129766869
	.quad	0x3fd84353fb97a62e              # double 0.37910937852447801
	.quad	0x3fd82c0d614f2610              # double 0.37768873694275928
	.quad	0x3fe15046a3cb104f              # double 0.54104930868971646
	.quad	0x3fd960c72631c0fa              # double 0.39653185586850237
	.quad	0x3fe93a07cff4f149              # double 0.78833380333484471
	.quad	0x3fee02b857e809e3              # double 0.93783204240054052
	.quad	0x3fe9afa4ce04c0f2              # double 0.80269088972093372
	.quad	0x3fd43d92232e3b5c              # double 0.31625798640827951
	.quad	0x3fb57ca3260796e0              # double 0.083933064255315326
	.quad	0x3fe1169a5a823981              # double 0.53400914838293556
	.quad	0x3fb6148f68998d28              # double 0.086251223599493998
	.quad	0x3fd2c8bbf3ca14d8              # double 0.29350184257084555
	.quad	0x3fc55c8dd52d31bc              # double 0.16688702496538876
	.quad	0x3fd1a7c0175aca88              # double 0.27586366921165295
	.quad	0x3fc24df224db0a90              # double 0.14300371932593636
	.quad	0x3fe0e8ed4aa45c0f              # double 0.5284334619381087
	.quad	0x3fe1b72cdbcdcf5a              # double 0.55361025743921322
	.quad	0x3fe71ca210f8243a              # double 0.7222452479774184
	.quad	0x3fd5a822e94eed58              # double 0.33838722976698454
	.quad	0x3fe1e3e7f83eccf0              # double 0.55907057271397598
	.quad	0x3fc2aa6ef392d6bc              # double 0.14582621472589163
	.quad	0x3fe520bcbe0a6297              # double 0.66024624936388221
	.quad	0x3fb672ce5032cb70              # double 0.087689299182597713
	.quad	0x3fed973daefce579              # double 0.92471203019446968
	.quad	0x3fbd11004eedce88              # double 0.1135406677911367
	.quad	0x3fbab0a804e47970              # double 0.10425806159444106
	.quad	0x3fe786c12d0f0316              # double 0.73519953537479199
	.quad	0x3fd5b98b06ec2164              # double 0.33944965053571807
	.quad	0x3fc67c2e13152ac8              # double 0.17566467220088655
	.quad	0x3fc4457dd4f3d008              # double 0.15837071321550433
	.quad	0x3fe7622b9f3074ab              # double 0.73073369113594333
	.quad	0x3fd80a045d06dfc4              # double 0.37561139187482362
	.quad	0x3fde1256d380cf40              # double 0.46986933378797247
	.quad	0x3fe0f01d9a2a0858              # double 0.52931099043076824
	.quad	0x3fdaddca5a1eb2c2              # double 0.4197870140149399
	.quad	0x3fd9c0a54328449c              # double 0.40238315161065841
	.quad	0x3fefec626f414b11              # double 0.99760553102018623
	.quad	0x3fb536465cad6200              # double 0.082859418512619243
	.quad	0x3fc0dea5c95903e0              # double 0.13179466563636222
	.quad	0x3fc584d5aee90d0c              # double 0.16811629334015554
	.quad	0x3fd2d5be8dfdd9f2              # double 0.29429592005126815
	.quad	0x3fc29c7875aa7ca8              # double 0.14540010209473064
	.quad	0x3fed50bd11d0fbfa              # double 0.91610578040842872
	.quad	0x3fbe9a3f1c4281e0              # double 0.11954111518799193
	.quad	0x3feb72e77033e273              # double 0.85777637400231155
	.quad	0x3fe85e54dd4cc095              # double 0.76151507589931333
	.quad	0x3fe974ff43f8cfa7              # double 0.79553187633290612
	.quad	0x3f2b2337c268e000              # double 2.0704322487730131E-4
	.quad	0x3fe264f8502b47b6              # double 0.57482543619175064
	.quad	0x3fe5321b474a6f4f              # double 0.66236652301766152
	.quad	0x3fafc81638dc1210              # double 0.062073416176677054
	.quad	0x3fbf5c78fca34c58              # double 0.12250476997296411
	.quad	0x3fdd61f2214edaf2              # double 0.45910313847291129
	.quad	0x3fedc8d15443be9b              # double 0.93076387842116348
	.quad	0x3fca7689a0531908              # double 0.2067424805483784
	.quad	0x3fd5f8a211c47144              # double 0.34330035910695167
	.quad	0x3fe567383b4915a0              # double 0.6688500554961827
	.quad	0x3fe2884e64af54eb              # double 0.57913894333856086
	.quad	0x3fa4aa1dfee80460              # double 0.040360391012662644
	.quad	0x3fee263c557a7e9e              # double 0.94216744132059538
	.quad	0x3fe9514dc6899091              # double 0.79117478157833621
	.quad	0x3fd9fec08e7d1efc              # double 0.40617383875768076
	.quad	0x3fc4dffa20b3a4b0              # double 0.16308523747219317
	.quad	0x3fe19cee92d86dc4              # double 0.5504067295145707
	.quad	0x3fe4f1c75932ff49              # double 0.65451400205345422
	.quad	0x3fd3678611cc248c              # double 0.30319358575850042
	.quad	0x3fe8eb863bea0c49              # double 0.77875053121568627
	.quad	0x3fedb0cc2309894f              # double 0.92783171504223982
	.quad	0x3fb0095223a95700              # double 0.062642224985520301
	.quad	0x3fe5514ae5fc097e              # double 0.66617340964175731
	.quad	0x3fec5cfd3080f1cd              # double 0.88635119889618752
	.quad	0x3fa3da28fdc1f210              # double 0.038773804641980658
	.quad	0x3fe72ef6d3467e99              # double 0.72448292984695961
	.quad	0x3fd26814fa87303a              # double 0.28760265794403816
	.quad	0x3fe5b27c33dffb42              # double 0.67803774005719952
	.quad	0x3f9910b1c0ada080              # double 0.024477746377130405
	.quad	0x3fe027f06d54996f              # double 0.5048753867493313
	.quad	0x3fc3ee26cb231adc              # double 0.15570530813984973
	.quad	0x3fdca58346b8ee8a              # double 0.44760209948047047
	.quad	0x3fdb05059e6474b4              # double 0.42218151538856863
	.quad	0x3fe18f5c7f6e0909              # double 0.54875016106260077
	.quad	0x3fe014cf586f24b2              # double 0.50254027626319542
	.quad	0x3fbe9667db01d5b0              # double 0.11948250862936649
	.quad	0x3fe18944f04fb588              # double 0.54800650535405371
	.quad	0x3fe2ddd7eeac2ce6              # double 0.58958050361379999
	.quad	0x3fd3931fff5539ca              # double 0.30585479674200811
	.quad	0x3fcbb665cbbf8b14              # double 0.21650383423465114
	.quad	0x3fe69650de81cc23              # double 0.70584910829927983
	.quad	0x3fb796770bb67320              # double 0.092139664039177394
	.quad	0x3fe8ec69ae3d6235              # double 0.77885898619849192
	.quad	0x3f4b76c304ab1000              # double 8.3813211798444697E-4
	.quad	0x3fe1a75a5b5e6dfc              # double 0.55167882771951282
	.quad	0x3fd93b82e717bfdc              # double 0.39425728385594794
	.quad	0x3feccc584b53f21c              # double 0.89994444572909371
	.quad	0x3fef9ad115c76bf2              # double 0.98764852765759614
	.quad	0x3fee7237b225d5d7              # double 0.95144257349482586
	.quad	0x3fdff06486ed9658              # double 0.49904740501947265
	.quad	0x3fe4b0e1acc6a142              # double 0.6465919851807842
	.quad	0x3feeb2e2ca112d52              # double 0.95933665720205341
	.quad	0x3feb55dde1b61cf6              # double 0.85423177799466887
	.quad	0x3fe18ae4312203c9              # double 0.54820451351417276
	.quad	0x3fa5ce9ca34e7050              # double 0.042591948447097239
	.quad	0x3fe984cfe192a3af              # double 0.7974624067038486
	.quad	0x3fe0316b3f20a1f4              # double 0.50603258447250576
	.quad	0x3fe94e206dd57d44              # double 0.790786947745723
	.quad	0x3fd44f665aff4c1a              # double 0.31734618078661614
	.quad	0x3fd25427232b4c4c              # double 0.2863862842033924
	.quad	0x3feca12f7c55e95c              # double 0.89467596325202292
	.quad	0x3fe18fff83f7db52              # double 0.54882789397275134
	.quad	0x3fde51b3dee815aa              # double 0.47373673217983969
	.quad	0x3fe7117d163e0041              # double 0.72088484138658526
	.quad	0x3fe3dd11b71c528c              # double 0.6207359863643247
	.quad	0x3fee952f5517440f              # double 0.9557110464030546
	.quad	0x3fe5974a8dce1c0a              # double 0.67471816726981726
	.quad	0x3fc09039adb7a3ec              # double 0.12940140707294689
	.quad	0x3fe588aef4588253              # double 0.67293498729493206
	.quad	0x3fcb59cef5f1a1a8              # double 0.21367823609331293
	.quad	0x3fda7b47e4059de8              # double 0.4137744642998471
	.quad	0x3fbb8196bb1a9a70              # double 0.10744611804930471
	.quad	0x3feb8ecc26b1dfdc              # double 0.86118133122999607
	.quad	0x3fec5d9ddc81f7aa              # double 0.88642781322390829
	.quad	0x3febc8b5b9d54b7e              # double 0.86825071616691196
	.quad	0x3fdd08268b0967fa              # double 0.45362247064406314
	.quad	0x3fb9a11dbc98eb98              # double 0.10011468748500219
	.quad	0x3fda5ae1cda160b6              # double 0.41179699975101458
	.quad	0x3fb84f247335c7c8              # double 0.094957616927586419
	.quad	0x3fc207e5fc468a30              # double 0.14086603944913767
	.quad	0x3fd3a761fbebcac4              # double 0.30709123231569557
	.quad	0x3fe09d13558a8528              # double 0.51917425830121022
	.quad	0x3fecd96993d58a35              # double 0.90153960107665532
	.quad	0x3fcaeea311ffba30              # double 0.2104076230893539
	.quad	0x3fca956a18c3c3f0              # double 0.20768476685728343
	.quad	0x3fd0dcc69b2ba7bc              # double 0.26347508576747791
	.quad	0x3fab61f93b9600d0              # double 0.05348185398452332
	.quad	0x3fa7da293f30a120              # double 0.046586312259309759
	.quad	0x3fe7384ed221c8b2              # double 0.72562352219963189
	.quad	0x3fd0a82d9a368d78              # double 0.26026477870819731
	.quad	0x3fdaa3aa11c555c4              # double 0.41623927817758166
	.quad	0x3fe4d9f112edf34e              # double 0.65160421082655673
	.quad	0x3fbd3945eae741a8              # double 0.11415516838974915
	.quad	0x3fafcb4d7b446030              # double 0.06209795121884587
	.quad	0x3fc085b91b247278              # double 0.12908090424834362
	.quad	0x3fe87524c281200c              # double 0.76429975499286362
	.quad	0x3fea84a4adf64f81              # double 0.82869180657370134
	.quad	0x3fca8b62ea9e1bcc              # double 0.20737873512209004
	.quad	0x3fba7d10558ede80              # double 0.10347082222767234
	.quad	0x3fdae5177ce4ad50              # double 0.42023265072449068
	.quad	0x3fc9d14f6855920c              # double 0.20170013994642522
	.quad	0x3fe1c1a7239559ae              # double 0.55488926839716668
	.quad	0x3fed8a5b9828a685              # double 0.92313937872423024
	.quad	0x3fcb43c1715543bc              # double 0.21300523790207915
	.quad	0x3fd81fd2a5ace544              # double 0.37694231204257655
	.quad	0x3fd898f451acdcb4              # double 0.38433559394929806
	.quad	0x3fef07ea4f84a329              # double 0.96971622019655001
	.quad	0x3fcf86bd90b714d8              # double 0.24629945341272363
	.quad	0x3f71201ca1964f80              # double 0.0041810148626558741
	.quad	0x3fed822203d6dc10              # double 0.92213536023962384
	.quad	0x3fdf3c8c9f2b94d8              # double 0.48807063621491187
	.quad	0x3fcea4c0689d0e34              # double 0.23940281971054989
	.quad	0x3f9ddf803fb41e20              # double 0.029172901046903843
	.quad	0x3fe6254a3a55bda2              # double 0.69205199616947177
	.quad	0x3fe4c2f70b9736fd              # double 0.64879944099240527
	.quad	0x3fe94d167e1adf1a              # double 0.7906601393687851
	.quad	0x3fa7a0ba5bc9d530              # double 0.046148132042541312
	.quad	0x3fdd7f6239679f5e              # double 0.46089988332686527
	.quad	0x3fd9c5ff597dff3e              # double 0.4027098058650046
	.quad	0x3fb1c37e51c32340              # double 0.069389243089188035
	.quad	0x3fead736df9789e9              # double 0.83877128286650049
	.quad	0x3fedbce9a5c1b6cf              # double 0.9293106305537665
	.quad	0x3fd3a09a03ee9faa              # double 0.30667734512325728
	.quad	0x3fd306fba34b1062              # double 0.29730120607951538
	.quad	0x3f899387aedd9f80              # double 0.012488422416666145
	.quad	0x3fd7885ce901effa              # double 0.36769793276448548
	.quad	0x3febf15f27a2593b              # double 0.87321431866693133
	.quad	0x3fe743d803a6294b              # double 0.7270317145605899
	.quad	0x3fef35c53f6a59a2              # double 0.97531378160310944
	.quad	0x3fde8172de9e50e0              # double 0.4766509222038291
	.quad	0x3fe8737ab4de0798              # double 0.76409659696240606
	.quad	0x3fe1f4621c542537              # double 0.56108193905780623
	.quad	0x3fe5896d04e162d4              # double 0.67302561715322406
	.quad	0x3fca636b44b305e4              # double 0.20615902761896543
	.quad	0x3fb28c466a17ab48              # double 0.072452927495459396
	.quad	0x3fd7a05853d086c6              # double 0.36916168389334947
	.quad	0x3fe9c58e52235992              # double 0.80536571543307134
	.quad	0x3fd33998c34a69f4              # double 0.3003904254088916
	.quad	0x3fee71bc5d6c3524              # double 0.95138376471155483
	.quad	0x3fe03660e5639699              # double 0.50663800051252672
	.quad	0x3fb2c2efbfd5e0f0              # double 0.073286995253400766
	.quad	0x3fe8a1bf9d5d0d12              # double 0.76974468932204076
	.quad	0x3fe3eae4cc77a88f              # double 0.62242355284731044
	.quad	0x3fe54afca35bf5d8              # double 0.66540367036912595
	.quad	0x3fe473ee6c7ce16a              # double 0.63915177525545386
	.quad	0x3fd9ae03aaca0f4a              # double 0.40124599150316398
	.quad	0x3fdd15e71297a160              # double 0.45446183028845688
	.quad	0x3fe1c68bc032309a              # double 0.55548656023303811
	.quad	0x3fc254c42b5e6540              # double 0.14321186177839174
	.quad	0x3f913c6ba74fbee0              # double 0.016832048498996666
	.quad	0x3fe29428314b3af6              # double 0.58058557155331303
	.quad	0x3fe6abaaab3d224e              # double 0.70845540471152346
	.quad	0x3f7908e7f3f18a00              # double 0.0061120091114355013
	.quad	0x3fc2b40bc59c90e4              # double 0.14611956738475051
	.quad	0x3fe6fc749282d949              # double 0.71831730475859346
	.quad	0x3fdb537d7bcdd74e              # double 0.42697083559265969
	.quad	0x3fe2c726e17c421d              # double 0.58681053199876809
	.quad	0x3fe913183409e2da              # double 0.78358087695877576
	.quad	0x3fe5139e73649b44              # double 0.65864489114469693
	.quad	0x3feb21ce4a95609a              # double 0.84787668768969415
	.quad	0x3fece4beea996033              # double 0.90292306728497918
	.quad	0x3fe94f1ee07340c5              # double 0.79090827787333551
	.quad	0x3fd19fe75e329724              # double 0.27538475226389125
	.quad	0x3fc77072477ff3bc              # double 0.18311909190370368
	.quad	0x3fe2765ea8e8f50d              # double 0.57694943418724309
	.quad	0x3fec4c0c7c0f6848              # double 0.88428329687600016
	.quad	0x3fd50da8d70bddaa              # double 0.32895871163006041
	.quad	0x3fe45b0b0513956c              # double 0.636113653101956
	.quad	0x3fe337f377f0fdfa              # double 0.60057996202516439
	.quad	0x3fe0d05ec020021e              # double 0.52543580555363056
	.quad	0x3fc9aaefe46bdb90              # double 0.20052908566841809
	.quad	0x3fcd1b5b035c58b0              # double 0.22739732421968517
	.quad	0x3feec9552c949e2e              # double 0.9620767470086713
	.quad	0x3fb650398f56bab0              # double 0.087161633963414031
	.quad	0x3fd0bc5194c2693c              # double 0.26149405982291163
	.quad	0x3fd15fcf86ae401c              # double 0.27147281792076838
	.quad	0x3fee4362ca8b3af4              # double 0.9457258182463577
	.quad	0x3fe128102f955040              # double 0.53614053052525179
	.quad	0x3fede3a9c0fca996              # double 0.93404090588346622
	.quad	0x3fd08b65fc6ab194              # double 0.25850820207667735
	.quad	0x3fe21eb3e3572400              # double 0.56624788668079873
	.quad	0x3fa7822f5e10e060              # double 0.045915107948929501
	.quad	0x3f8c4f1e7c3b3f00              # double 0.013822782675020573
	.quad	0x3feb373484d1b557              # double 0.85048891011471539
	.quad	0x3fe4a7009d10da2f              # double 0.6453860347454049
	.quad	0x3fe28f59930420a4              # double 0.57999876703344855
	.quad	0x3fea9f7372dfc29d              # double 0.83196422993031016
	.quad	0x3fa5237fd6a7d8d0              # double 0.041286463692743802
	.quad	0x3fe73686836d78dc              # double 0.72540593785722818
	.quad	0x3fe9ddd9c0f46715              # double 0.80833137213196216
	.quad	0x3f6f83afc6b37600              # double 0.003846972763865919
	.quad	0x3fedbe00413dbfc1              # double 0.92944348089621809
	.quad	0x3fa6f7cbce3f8b70              # double 0.044859284331116522
	.quad	0x3fca955a3d377e7c              # double 0.20768287648296624
	.quad	0x3fed531b26375678              # double 0.91639478172392241
	.quad	0x3fb15cb75f9814d8              # double 0.06782098850097229
	.quad	0x3fd7dd8b1d6fd8f0              # double 0.3728969371289983
	.quad	0x3f9f1358c1540ba0              # double 0.030347239303420204
	.quad	0x3fdafbef29616b7c              # double 0.42162684479779222
	.quad	0x3fe5c432ea07cc0c              # double 0.68020005902360614
	.quad	0x3feb4e3ff78b58ed              # double 0.85330198620320419
	.quad	0x3fe4d9857628abc1              # double 0.65155289724258847
	.quad	0x3fd63e876fd39260              # double 0.34756647034217814
	.quad	0x3fe7fee7dcd45ea1              # double 0.74986642008567028
	.quad	0x3fe563cfad2b807a              # double 0.66843398878337656
	.quad	0x3fb76159e7e7f8c0              # double 0.091329211347303207
	.quad	0x3fe2b6a021523a85              # double 0.58479315288589417
	.quad	0x3fe3e8b18fc66f18              # double 0.62215498047905538
	.quad	0x3fd142c8056d2aaa              # double 0.26970100908207917
	.quad	0x3fe21bbaf257450e              # double 0.56588504154402286
	.quad	0x3fe2675a949dceac              # double 0.57511643435141968
	.quad	0x3feff683efff9ba8              # double 0.99884220957470848
	.quad	0x3fe700d600f198df              # double 0.71885204490970611
	.quad	0x3fb9e285a1a932e8              # double 0.10111270138549922
	.quad	0x3fe31a43c9622fc1              # double 0.5969561513206757
	.quad	0x3fbe751ee2792c20              # double 0.11897461918958685
	.quad	0x3fedb184e51ff0cf              # double 0.92791981459552086
	.quad	0x3fea3a198aae08c5              # double 0.81959225736525154
	.quad	0x3fdf2af00e4b588a              # double 0.48699571033410705
	.quad	0x3f9e65b312814100              # double 0.029684827808808656
	.quad	0x3fc8d01dcada1adc              # double 0.19385120777970755
	.quad	0x3fe50a5ae9a1ec21              # double 0.65751405364369842
	.quad	0x3fe506b11a0595f7              # double 0.65706687052141788
	.quad	0x3feb514b4bff5153              # double 0.85367359965543199
	.quad	0x3feed1fa43b3e3e2              # double 0.96313203070814901
	.quad	0x3fdfd5d2a1fa6538              # double 0.49742570703672895
	.quad	0x3fe40859163a82b6              # double 0.62601904241099393
	.quad	0x3fe86dda0af9e1cf              # double 0.76340963500757109
	.quad	0x3fe923cab56a4ccb              # double 0.78561911995566314
	.quad	0x3f60a7d51ad02500              # double 0.0020331537439274294
	.quad	0x3fc60e460455d740              # double 0.17231059276280725
	.quad	0x3fde588e6e2e4520              # double 0.47415505180204498
	.quad	0x3fcfd27710001b70              # double 0.2486103847624821
	.quad	0x3fd9ece61aa828ee              # double 0.40508415797434238
	.quad	0x3fd87f1d20292c3e              # double 0.38275840893465218
	.quad	0x3fcad16fddc53f54              # double 0.20951650932920052
	.quad	0x3f967c0e1ae4aae0              # double 0.021957607642586363
	.quad	0x3fe71b3e2c478ea9              # double 0.7220755448183428
	.quad	0x3fe7693b064174e8              # double 0.7315955278569648
	.quad	0x3fd19c3093674018              # double 0.27515806574683799
	.quad	0x3fedd170508356a4              # double 0.93181625104144361
	.quad	0x3fe39dd30c766440              # double 0.61301567491603492
	.quad	0x3fb3aa96c4c6fd30              # double 0.076821730653126918
	.quad	0x3fe5a84ed1399430              # double 0.67679539551011736
	.quad	0x3fdb1254f8bdf8b2              # double 0.4229938916322552
	.quad	0x3fb6bf30efa7ea30              # double 0.088854845533128168
	.quad	0x3fca87152ef8a3cc              # double 0.207247398314648
	.quad	0x3fcde9bbd84abbd0              # double 0.23369548855904876
	.quad	0x3f9c7d588d829220              # double 0.027821906697356735
	.quad	0x3fc5acf244b11da0              # double 0.16934040407271045
	.quad	0x3f7ad532f604eb80              # double 0.0065509787239602657
	.quad	0x3fb02026826a4398              # double 0.062990576591131719
	.quad	0x3fe52ce4548f6521              # double 0.66172997012759904
	.quad	0x3fe11bee2a998993              # double 0.53465946502938022
	.quad	0x3fdd85a029e9e0fe              # double 0.4612808617889782
	.quad	0x3fdc430ee4829562              # double 0.44159290614546454
	.quad	0x3fceace7e73ec134              # double 0.23965166846529373
	.quad	0x3feae14bd923fd44              # double 0.84000198755521937
	.quad	0x3fc85672da17dce8              # double 0.19013820313532581
	.quad	0x3fcbd4da153c8b58              # double 0.21743322407663856
	.quad	0x3fea74bc7529c7b9              # double 0.82675001986921537
	.quad	0x3fc8fc4a55e10be0              # double 0.19519929116549317
	.quad	0x3feca80e7eee4ca9              # double 0.89551472464736037
	.quad	0x3fc36b3fc81658ac              # double 0.15171048421752198
	.quad	0x3fda932e3ef342e8              # double 0.41523319385036794
	.quad	0x3fd9219e7d8ba144              # double 0.39267694721504065
	.quad	0x3fc2bac5c6e06b3c              # double 0.14632484637044196
	.quad	0x3fedadd32e14121a              # double 0.92746886253059135
	.quad	0x3fdbc5ecf93900a2              # double 0.43395542467261283
	.quad	0x3fef25526591d761              # double 0.97330589139776801
	.quad	0x3fe79030929ac737              # double 0.73635128625594504
	.quad	0x3fe4028b9d4473a9              # double 0.62531071392333104
	.quad	0x3fe70409b3f90f85              # double 0.71924290801006008
	.quad	0x3fb57d364ca45648              # double 0.083941835128222952
	.quad	0x3fea0bde94839913              # double 0.81394890791560426
	.quad	0x3fe774a6b58b2dfe              # double 0.73298964936969901
	.quad	0x3fd012bfb8ed892e              # double 0.25114434298861255
	.quad	0x3fc188fa232defc8              # double 0.13699270932909102
	.quad	0x3fe04c2e0cf820bc              # double 0.50929930241638699
	.quad	0x3fc0bc3fadca891c              # double 0.13074489580055448
	.quad	0x3fd2409ac1efb32e              # double 0.28519314707846177
	.quad	0x3fd189118a7559ee              # double 0.27399099847153152
	.quad	0x3fe8e6d6bf4199e3              # double 0.77817857126938994
	.quad	0x3fe22a3e863f1aaa              # double 0.56765676708240176
	.quad	0x3fe14313280c6c3c              # double 0.53943784543969953
	.quad	0x3fe0ec6aa20e1cf9              # double 0.52885944033997057
	.quad	0x3fe9e8d5d68ed893              # double 0.80967227846010059
	.quad	0x3fb9d5818d3a96c0              # double 0.10091409395189554
	.quad	0x3fe224449859d061              # double 0.56692723995230321
	.quad	0x3fb5c446342b2fb8              # double 0.085026157127855551
	.quad	0x3feaadb43ead75db              # double 0.83370411149706614
	.quad	0x3fdbb54a6f7640f6              # double 0.43294011006311395
	.quad	0x3fed9ae536264c79              # double 0.92515812469572645
	.quad	0x3fe2edcba85289da              # double 0.59152777553054681
	.quad	0x3fba1be6ce1bc9a8              # double 0.10198824436137122
	.quad	0x3fc31fb526541720              # double 0.14940513965137203
	.quad	0x3f9144519aa9dca0              # double 0.016862177910721088
	.quad	0x3fe55bef8fad53b6              # double 0.66747263013768676
	.quad	0x3fbbde8721a70350              # double 0.1088642556342283
	.quad	0x3fe9d2ff4901b8f3              # double 0.80700649508597022
	.quad	0x3fc0568737dc7398              # double 0.12764063098520917
	.quad	0x3fd2357783f9eca0              # double 0.28451335800463973
	.quad	0x3fecdc41b8cd0425              # double 0.90188680738367977
	.quad	0x3fd89156d09f9bc0              # double 0.38387079594980023
	.quad	0x3fe1092667771598              # double 0.53236694534341478
	.quad	0x3fe403e1c22cb882              # double 0.62547386097664082
	.quad	0x3feff925da5061f6              # double 0.99916355742885687
	.quad	0x3fdf5d8275c95fe8              # double 0.49008237364387108
	.quad	0x3fd03dbff8982240              # double 0.2537689140013164
	.quad	0x3fe216f56a6ce648              # double 0.56530257021149399
	.quad	0x3fe8301481405fbe              # double 0.75586915249277076
	.quad	0x3feb3940607794b6              # double 0.8507387050746249
	.quad	0x3fe1509223d43d9e              # double 0.54108530996193216
	.quad	0x3fe2ad682663261e              # double 0.58366782662887196
	.quad	0x3fe72dd077ad5495              # double 0.72434256910732364
	.quad	0x3fe4967c50f809dc              # double 0.64336982549894683
	.quad	0x3fdad64864bb1396              # double 0.41932878338803314
	.quad	0x3fbdf8d82bc850a8              # double 0.11707831448467465
	.quad	0x3f70eec3a0a3f700              # double 0.0041339532565396464
	.quad	0x3fe895cd2d7a38d7              # double 0.76828631288824567
	.quad	0x3feaed127724e3f6              # double 0.84143946905453393
	.quad	0x3fdd922e1d930f78              # double 0.46204712761049604
	.quad	0x3febfb0192d9dec0              # double 0.87439039880606373
	.quad	0x3fdc343b2115417c              # double 0.4406879256321401
	.quad	0x3fe7ca741a9a43db              # double 0.74346356578655148
	.quad	0x3fbd39313bd37090              # double 0.11415393553346775
	.quad	0x3facb1e14526d560              # double 0.056044616404885117
	.quad	0x3fe44f7caab82740              # double 0.63470300048468431
	.quad	0x3fde2ae0c8afa548              # double 0.47136706922772875
	.quad	0x3fe1c55f5a5d6a95              # double 0.55534331941028603
	.quad	0x3fd679fe8cfd4850              # double 0.3511959435319385
	.quad	0x3fccdfa38292d358              # double 0.22557491183911327
	.quad	0x3fca8ec919f81edc              # double 0.20748246925381053
	.quad	0x3fecd8481f290d7e              # double 0.90140157781608798
	.quad	0x3fabfb60d010a700              # double 0.054652238272252518
	.quad	0x3fdc796cfc20c6c8              # double 0.44491123792532195
	.quad	0x3fed96243033cecd              # double 0.92457780279661395
	.quad	0x3fe2bfd059c5aa59              # double 0.58591477903002975
	.quad	0x3fef0ad038666ded              # double 0.97006999030730656
	.quad	0x3fbcca70d7518e80              # double 0.11246400124360356
	.quad	0x3fe5b08c945e4e31              # double 0.67780140855979287
	.quad	0x3fb5085feade2d20              # double 0.082159037438192417
	.quad	0x3fd41a165c637ae0              # double 0.31409224531482316
	.quad	0x3fe484f8dd261c6a              # double 0.64123194878710632
	.quad	0x3fc28e415a7d7564              # double 0.14496628683529444
	.quad	0x3fe3874e29d063b0              # double 0.61026676337052344
	.quad	0x3febb4e1bae8a61a              # double 0.86583029275533652
	.quad	0x3fd3a44ff0fd3dee              # double 0.30690382513145564
	.quad	0x3fec0f9919d95e49              # double 0.87690405892039636
	.quad	0x3fec02c46c6c8768              # double 0.87533780266333583
	.quad	0x3fe8f628395331a0              # double 0.78004847713741654
	.quad	0x3fe5ab916e4e3fcb              # double 0.67719337028574367
	.quad	0x3fe7626ca2393b53              # double 0.73076469120301579
	.quad	0x3fe151d81d5a307a              # double 0.54124074681159517
	.quad	0x3fc6bff8af77b904              # double 0.17773350303418323
	.quad	0x3fe012bb1e1195ec              # double 0.50228649018089078
	.quad	0x3fe7da757c990e06              # double 0.74541735015412836
	.quad	0x3febbf759559b213              # double 0.8671214978217584
	.quad	0x3fc0deb7080092b0              # double 0.13179672137007037
	.quad	0x3fc56cfa860e3a28              # double 0.16738826318437927
	.quad	0x3fe3ebbdd2a5d320              # double 0.62252703802241527
	.quad	0x3fde657062e8a690              # double 0.47494134577809977
	.quad	0x3fe1df63eafc20f1              # double 0.5585193242596046
	.quad	0x3feed225523cc5d7              # double 0.96315256177893615
	.quad	0x3fd7987de6affd90              # double 0.36868236091682949
	.quad	0x3febd5b655c78ab8              # double 0.86983792070198884
	.quad	0x3fe097cd22f029fa              # double 0.51853043388228959
	.quad	0x3fed551d5b92de31              # double 0.91663997540940134
	.quad	0x3fed044cab2f0805              # double 0.90677483972854189
	.quad	0x3feb743f87cac559              # double 0.85794044992341434
	.quad	0x3fbc48e27fbda0d8              # double 0.11048713320417691
	.quad	0x3fe1fa8cb70055d6              # double 0.56183467619365035
	.quad	0x3fd8c039f37d17cc              # double 0.38673256662547995
	.quad	0x3fb9ac8faee48748              # double 0.10028932590333028
	.quad	0x3fc38ad8cd4e2bb4              # double 0.15267477059054857
	.quad	0x3fd83f7b4b92d03c              # double 0.37887461071227668
	.quad	0x3fe0cb8e360cc115              # double 0.52484808498960211
	.quad	0x3fd8fe07ae74f6d8              # double 0.3905047610931951
	.quad	0x3fe54e9f5c2950fc              # double 0.665847473147124
	.quad	0x3fdc30397d034846              # double 0.44044339378627162
	.quad	0x3fcafaa20c619bf8              # double 0.21077371220164287
	.quad	0x3fd084f26e62fcae              # double 0.2581144407267385
	.quad	0x3fefe10ea5ea09ad              # double 0.99622280507201355
	.quad	0x3fe1baa00c50fea3              # double 0.55403139501136811
	.quad	0x3fdddf468714671c              # double 0.46675265494705953
	.quad	0x3fe4fcbf60ca9918              # double 0.65585297493524575
	.quad	0x3fd749a511bc5606              # double 0.36386992198944801
	.quad	0x3fe5b8976a87c046              # double 0.67878313833899351
	.quad	0x3fd678db3b859c86              # double 0.35112648785293066
	.quad	0x3fe66c9be062d100              # double 0.7007579214610189
	.quad	0x3fe2778452fa08b8              # double 0.57708946424852225
	.quad	0x3fe72228d05a01e9              # double 0.72291985219640964
	.quad	0x3fcfcefec718882c              # double 0.24850449296451538
	.quad	0x3fedb9a634a4b141              # double 0.92891226083660439
	.quad	0x3fe48eb978c752a9              # double 0.64242242421695039
	.quad	0x3fd1f1f730de5b34              # double 0.28039340755769904
	.quad	0x3fb06a6eb97113e0              # double 0.06412403132806288
	.quad	0x3fed2c7b27a32e1c              # double 0.9116798185509114
	.quad	0x3fee8ba7cd8018ba              # double 0.95454778801720086
	.quad	0x3fd41b07cf9cb324              # double 0.31414981150264709
	.quad	0x3fece5a65dab276b              # double 0.90303343100206968
	.quad	0x3fe72fb592c2a5a4              # double 0.72457388557557012
	.quad	0x3fdb08e9720ca8fe              # double 0.42241893899576144
	.quad	0x3fecea76df7f0429              # double 0.9036211362037011
	.quad	0x3fd54dda22e0bc3e              # double 0.33287671476404401
	.quad	0x3fe40bd693596d4d              # double 0.62644509104885915
	.quad	0x3fecaed98fae7b55              # double 0.89634397566610835
	.quad	0x3fcc461007c496fc              # double 0.22088814143460656
	.quad	0x3fe6961dd5fdccf7              # double 0.7058247737426474
	.quad	0x3fee3d369efa61d0              # double 0.94497233438874595
	.quad	0x3fe0d376735f3fc0              # double 0.52581331761938799
	.quad	0x3fe845a906e0a06f              # double 0.75850344985248153
	.quad	0x3fe5fdbb6d948637              # double 0.68722316172006159
	.quad	0x3fb1a2cc444881b0              # double 0.068890349074087309
	.quad	0x3fe683afddf1a585              # double 0.70357507084297366
	.quad	0x3f4d30f78fb57000              # double 8.9084709126607819E-4
	.quad	0x3fe21166e2b2af67              # double 0.56462425496054613
	.quad	0x3fc856e60249597c              # double 0.19015193092009131
	.quad	0x3fe1157f5fe386ea              # double 0.53387421348835784
	.quad	0x3fbd4b0711dc2e60              # double 0.11442608057057546
	.quad	0x3feca04eb18d93ee              # double 0.8945687740166457
	.quad	0x3fd63b3560782d54              # double 0.34736380024761115
	.quad	0x3fdc010c268c966c              # double 0.43756393208091171
	.quad	0x3fdf6d2bbf8fb962              # double 0.49103826243562854
	.quad	0x3fe032754250def8              # double 0.50615942909550338
	.quad	0x3fe204613e7b37f0              # double 0.56303465083487758
	.quad	0x3fda94d6c9b50d2c              # double 0.41533441255542658
	.quad	0x3fe355b9361ed3ce              # double 0.60421429224390422
	.quad	0x3fe5a13fd4e855bd              # double 0.67593375762469743
	.quad	0x3fefb6f160503f07              # double 0.99108189402792923
	.quad	0x3fd657e7e8d6334a              # double 0.3491153501316161
	.quad	0x3fec878af505cdb2              # double 0.89154575210561959
	.quad	0x3fe77ceba52968d2              # double 0.73399908311992079
	.quad	0x3fe85fd23e9524a9              # double 0.76169693205988154
	.quad	0x3f65b9cbe2381200              # double 0.0026520711996929069
	.quad	0x3fc6c38f1fd5fc00              # double 0.17784298948751598
	.quad	0x3fe83cf566f16e52              # double 0.75744123560020626
	.quad	0x3fe010d4918768d3              # double 0.50205448554631926
	.quad	0x3fc4d40740afd620              # double 0.16272059114969384
	.quad	0x3fbd3650a0057790              # double 0.11411003023883226
	.quad	0x3fc40ba828eabac4              # double 0.15660573957344159
	.quad	0x3fde32472b46d904              # double 0.47181872583622941
	.quad	0x3fe5a740db6ae71b              # double 0.6766666684627326
	.quad	0x3febb706e6ad083d              # double 0.86609215787780836
	.quad	0x3fd048354aa85be0              # double 0.25440723696504897
	.quad	0x3fe9d3c0632fa5b2              # double 0.80709857342042413
	.quad	0x3fb013a5d9365d00              # double 0.062799802332268229
	.quad	0x3fedcee53177cb17              # double 0.93150577222545194
	.quad	0x3fd42066dcd2f4ce              # double 0.31447764935348921
	.quad	0x3fe6d86f48fa68bf              # double 0.71392025235697776
	.quad	0x3fc8c8cfa75ee78c              # double 0.19362826988600224
	.quad	0x3fe10c293b6e26e2              # double 0.53273450477101059
	.quad	0x3fe2dba2b99e3445              # double 0.58931099179756841
	.quad	0x3fe84ce84ef455e1              # double 0.75938811703479925
	.quad	0x3fea73f1d524e879              # double 0.82665340070458548
	.quad	0x3feec52f9a8d02b7              # double 0.96157055078227571
	.quad	0x3fe73720e027f14c              # double 0.72547954349969634
	.quad	0x3fd254282f343814              # double 0.28638653383029689
	.quad	0x3fdf136300766ff4              # double 0.4855582718389535
	.quad	0x3fe10f51b7755585              # double 0.53312002021509441
	.quad	0x3fefd1e0d7844316              # double 0.99436990826697769
	.quad	0x3fc5179d2a219674              # double 0.16478313977420422
	.quad	0x3fe43a7653319183              # double 0.63213649986987297
	.quad	0x3fe577334aef2322              # double 0.67080082545826181
	.quad	0x3fe690b014292136              # double 0.70516208589200491
	.quad	0x3fea1df34787186c              # double 0.81615604372269734
	.quad	0x3fcb8881ee173248              # double 0.21510337949293246
	.quad	0x3fe8d98181d019ae              # double 0.7765510116012615
	.quad	0x3fcbb88c28f85e60              # double 0.21656944275376855
	.quad	0x3fe34da07d2e4a5d              # double 0.60322594117526374
	.quad	0x3fcf1654563eda00              # double 0.2428689404602693
	.quad	0x3fed755f9244a201              # double 0.92057779853809063
	.quad	0x3fec27aa3414bc32              # double 0.87984190151281028
	.quad	0x3fefb3f456c384e9              # double 0.99071709581417366
	.quad	0x3fe22ec7bf0f6b56              # double 0.56821048084689596
	.quad	0x3fd17d2696f386da              # double 0.27326359502158726
	.quad	0x3fd29c749cbb85b6              # double 0.2907992868986996
	.quad	0x3feffd5593ce6e59              # double 0.99967459553176774
	.quad	0x3fd5e8456c8725e2              # double 0.34230170820646155
	.quad	0x3fedc83babebff71              # double 0.93069251612176462
	.quad	0x3fecb410ab38f317              # double 0.89698060457121442
	.quad	0x3fd43de8d4856fbc              # double 0.3162786555674264
	.quad	0x3fc94563a1b6db5c              # double 0.1974300899143725
	.quad	0x3fd3785eb17784cc              # double 0.30422179537533789
	.quad	0x3fee9f7a149cf680              # double 0.95696739221575911
	.quad	0x3fe10c9c6b79656b              # double 0.532789430532984
	.quad	0x3fcf397cc761fa7c              # double 0.24394187674984724
	.quad	0x3fb8b10b46a51c08              # double 0.096451477763466298
	.quad	0x3febbbcc4c9a9cd7              # double 0.86667456590375991
	.quad	0x3fe12fb01ab9b194              # double 0.53707127780721686
	.quad	0x3feedd343eae1eda              # double 0.96450245134561929
	.quad	0x3fc340cae1a2d424              # double 0.15041481034646254
	.quad	0x3fea349de124f055              # double 0.81892293904776159
	.quad	0x3fef90531ddf3862              # double 0.98636775812498123
	.quad	0x3fe1a8f89a8388b4              # double 0.55187635591962314
	.quad	0x3fd255836d734f50              # double 0.2864693230487676
	.quad	0x3fcf647b43f361cc              # double 0.24525395219713031
	.quad	0x3fbae9df22195b88              # double 0.10513109762665185
	.quad	0x3f87a335be11a780              # double 0.011541766989654922
	.quad	0x3fe0db6e343faac6              # double 0.52678594784568911
	.quad	0x3fe1a2cdf5cc96f9              # double 0.55112360007907946
	.quad	0x3fb0d105bbe33cf8              # double 0.065689428683288642
	.quad	0x3fc79ad38349fbb4              # double 0.18441242132754854
	.quad	0x3fef80033a14b927              # double 0.98437653869567476
	.quad	0x3fdfe3e1ce69fb72              # double 0.49828381688705925
	.quad	0x3fe35adaa5702895              # double 0.60484058677799857
	.quad	0x3fe068869d9e537d              # double 0.51275950226646183
	.quad	0x3fe7a9ed1d7fbd46              # double 0.73949294816512956
	.quad	0x3fe2160c3b16a84a              # double 0.56519137898181637
	.quad	0x3feaa61d7632ad7b              # double 0.83277772031344399
	.quad	0x3fc736727d4a3c88              # double 0.18134909742045502
	.quad	0x3fc21254ec1d06a8              # double 0.14118443993543406
	.quad	0x3fdfb4573cb2b05a              # double 0.49538212707080265
	.quad	0x3f8ee6e0d37d8f40              # double 0.015088802770783283
	.quad	0x3fe9833d71496dec              # double 0.79727050901732132
	.quad	0x3f9f0f5f53cb0240              # double 0.030332078446692501
	.quad	0x3fc8d782b5532cdc              # double 0.19407686094050447
	.quad	0x3fc64ed5f1aa0f4c              # double 0.17428087520613145
	.quad	0x3fee7fbd671becd6              # double 0.9530932439660329
	.quad	0x3fefc633229ce857              # double 0.99294430504165631
	.quad	0x3fc1013a7312c470              # double 0.13284998530210457
	.quad	0x3fc0e27f3925f778              # double 0.1319121388477773
	.quad	0x3fe54bfd9da675db              # double 0.66552620688497244
	.quad	0x3fde2bd6f6c1565a              # double 0.47142576310338813
	.quad	0x3feed2a0b8983101              # double 0.96321140340435829
	.quad	0x3fd50f8ca3821760              # double 0.3290740582236733
	.quad	0x3fe3332a8e78632c              # double 0.59999587846968927
	.quad	0x3feb703f04d03e50              # double 0.85745192470671761
	.quad	0x3fef813182718f0f              # double 0.98452067830337053
	.quad	0x3feb18a2e861c67f              # double 0.84675736796471301
	.quad	0x3fdde387b7b70692              # double 0.46701233807480336
	.quad	0x3feccc0dc57365f1              # double 0.89990891041378351
	.quad	0x3f9adee849a9fd80              # double 0.026240949150176274
	.quad	0x3fecc93bab7f593a              # double 0.89956458564373709
	.quad	0x3fed64d9f3c91fd7              # double 0.91856095899947376
	.quad	0x3fbeb4d2cb414a88              # double 0.11994664633065544
	.quad	0x3fd578f8148aadfc              # double 0.33550836568858222
	.quad	0x3fe2fa90992dcb01              # double 0.59308652799367689
	.quad	0x3fda6587e140cb94              # double 0.41244694707273166
	.quad	0x3fee2ca4bda180d0              # double 0.94294964825896876
	.quad	0x3fe47d5e59f84eed              # double 0.64030377933747007
	.quad	0x3fe06a667e619bc7              # double 0.51298832591862087
	.quad	0x3fe0efafc965e4f1              # double 0.52925862632323917
	.quad	0x3fca8a0379a577f4              # double 0.20733684005511999
	.quad	0x3fe1440448668877              # double 0.5395528234551098
	.quad	0x3fe0e980898b86d7              # double 0.52850367416632593
	.quad	0x3fec6944bea0c01d              # double 0.88785016281144957
	.quad	0x3fdfc08f40f41a8a              # double 0.49612790434950027
	.quad	0x3fdc0763ccdeec40              # double 0.43795104033387489
	.quad	0x3fb1cbd19e503280              # double 0.069516278410626242
	.quad	0x3fe4e7c29d9ce1c2              # double 0.65329104217294565
	.quad	0x3fe7ed7e5c36550f              # double 0.74774091730310654
	.quad	0x3fd9e9f260db0d74              # double 0.40490397890626828
	.quad	0x3fbc68951c0de4c8              # double 0.11097080168646578
	.quad	0x3fe77055224e5d75              # double 0.73246247005856324
	.quad	0x3fd5814508112c80              # double 0.33601499355126663
	.quad	0x3fe4b043872ab027              # double 0.64651657485729153
	.quad	0x3fd68da97db915f0              # double 0.35239636685977782
	.quad	0x3fe7389e92288c28              # double 0.72566155001220967
	.quad	0x3fdcf05659f14ac6              # double 0.45216902526332736
	.quad	0x3fc34b5b639e0fa4              # double 0.15073721279270302
	.quad	0x3fc8ba83d9680a6c              # double 0.19319198718592945
	.quad	0x3fe47367de83ddab              # double 0.63908761463146868
	.quad	0x3fbf73d335b98418              # double 0.12286109983098503
	.quad	0x3fd36843ecf06b64              # double 0.30323885096156844
	.quad	0x3fecc4f88f31b492              # double 0.89904430358514476
	.quad	0x3fb7b5f156c9dd38              # double 0.092619975746733085
	.quad	0x3feacbb9e670dd64              # double 0.83736891754135145
	.quad	0x3fd52b958729114e              # double 0.33078516196498675
	.quad	0x3fec174e383fb0fd              # double 0.87784491525738384
	.quad	0x3fdd305d893cb8b6              # double 0.4560769882399528
	.quad	0x3fccaf8cd69e3364              # double 0.22410736541169307
	.quad	0x3fdfe8c212f44f08              # double 0.49858142710694198
	.quad	0x3fe6d097dd61601e              # double 0.71296303976396636
	.quad	0x3fe56e8a02243bc5              # double 0.66974354189175556
	.quad	0x3fc4724abbc4e2d8              # double 0.15973791283047123
	.quad	0x3fd12a21d5342a64              # double 0.26819654293709605
	.quad	0x3fb48425b5ad6e60              # double 0.080141407828187905
	.quad	0x3fef1f0289e39335              # double 0.9725353902000281
	.quad	0x3fc7c76dd4a28e0c              # double 0.18577359087531453
	.quad	0x3fe0f22b6c6ba853              # double 0.52956172157179038
	.quad	0x3fd43681b6b954e4              # double 0.31582682460914513
	.quad	0x3fd22b0d1658b1a0              # double 0.2838776319720413
	.quad	0x3fef8edda8281350              # double 0.98618967860293516
	.quad	0x3fef1a903b603026              # double 0.97199260327170545
	.quad	0x3fd310e29f30ef68              # double 0.29790559335719147
	.quad	0x3fee0c3f5b24695f              # double 0.93899505425660468
	.quad	0x3fd5a08b02d874ae              # double 0.33792376783260181
	.quad	0x3feddd16e870c95b              # double 0.93323846243428521
	.quad	0x3fe97ff0d95d8111              # double 0.79686777547979848
	.quad	0x3fc64d3e5fed5060              # double 0.17423228916107103
	.quad	0x3fd3a1feaa2f1ae2              # double 0.30676237697154651
	.quad	0x3fe52c4e52a58ebc              # double 0.66165844098983184
	.quad	0x3feb672e4cf16426              # double 0.85634532001416086
	.quad	0x3fe006e30aaee2e1              # double 0.50084068380882851
	.quad	0x3fed951f130f5359              # double 0.92445329401617038
	.quad	0x3fe37392d36bd345              # double 0.60785809796525625
	.quad	0x3f74ec09a07a7500              # double 0.005107915501551874
	.quad	0x3fe13fcabe4146ac              # double 0.53903710517098125
	.quad	0x3fe88bddf9803bae              # double 0.76707361918112382
	.quad	0x3fe510077f135262              # double 0.65820669955662603
	.quad	0x3fc795ec9737caf8              # double 0.18426282294929996
	.quad	0x3fe9938a8f7b0367              # double 0.79926040671862786
	.quad	0x3fead25d380cc8d7              # double 0.83817921588186095
	.quad	0x3fbc53d839c86cc8              # double 0.11065436754909108
	.quad	0x3fdf214af270814e              # double 0.48640702892045773
	.quad	0x3fd9d52cc19f15f8              # double 0.40363615902273819
	.quad	0x3fbcfe17f1361850              # double 0.11325215949008904
	.quad	0x3febe726000f5207              # double 0.87196636211098244
	.quad	0x3fa6c043280f0430              # double 0.044435595169041497
	.quad	0x3fe03329d2a6be68              # double 0.5062455286296883
	.quad	0x3fe1ba0100668fc9              # double 0.5539555557083925
	.quad	0x3fde607127343414              # double 0.47463635281093386
	.quad	0x3fd388c666b3e550              # double 0.30522308377802165
	.quad	0x3fa7ea8409c50b00              # double 0.04671108836421034
	.quad	0x3fdef72539367d88              # double 0.48383455836479827
	.quad	0x3fe99fd59471211d              # double 0.8007610224968037
	.quad	0x3fa468ec1cdc9970              # double 0.039862993739279484
	.quad	0x3fe8e3ad93936797              # double 0.77779272864721605
	.quad	0x3fe07c2bf7a5aff5              # double 0.5151576840266886
	.quad	0x3fe4e73e87638b2b              # double 0.65322805827267894
	.quad	0x3fe027d537074f5a              # double 0.50486241100086748
	.quad	0x3f9d9ecd396728c0              # double 0.028926092747305843
	.quad	0x3fdf7d04a16d4804              # double 0.49200549854606401
	.quad	0x3feb01b5fd537f2c              # double 0.84395884969487644
	.quad	0x3fec549a510e9176              # double 0.88532749015261802
	.quad	0x3fdf5440cb987266              # double 0.48951740152714363
	.quad	0x3fefeb8d0623f8da              # double 0.99750376891440884
	.quad	0x3fefad42636a0cac              # double 0.98989982048842284
	.quad	0x3fe805ed876c1612              # double 0.75072361421251999
	.quad	0x3fee79d6e9ab2d5c              # double 0.95237298620615318
	.quad	0x3fe9d507aec2cd80              # double 0.80725463994023983
	.quad	0x3fc973f3a98875a4              # double 0.19885106828671184
	.quad	0x3fa89d74bea901f0              # double 0.048076294206570114
	.quad	0x3fdd058a7a174592              # double 0.45346319125118228
	.quad	0x3fead8b8313f4118              # double 0.83895501726695709
	.quad	0x3fe7ee1534cdfb3e              # double 0.74781284631158207
	.quad	0x3fd9c2202adcc9fa              # double 0.40247348962580498
	.quad	0x3fea2664a0055993              # double 0.81718665365296983
	.quad	0x3fd3015dda199e4c              # double 0.29695841120562672
	.quad	0x3fe7a1ef0f62d050              # double 0.73851731305195223
	.quad	0x3f97e0228820a800              # double 0.023315944250647647
	.quad	0x3fbe06fc802241b8              # double 0.11729410293833709
	.quad	0x3f54a2c229fd0400              # double 0.0012595077641466279
	.quad	0x3fea30bc79c3588a              # double 0.81844924718713341
	.quad	0x3feaacd494e0c433              # double 0.83359746053441197
	.quad	0x3fbd576bb14e5408              # double 0.11461518362769152
	.quad	0x3fdecdf39e486316              # double 0.48132029015828104
	.quad	0x3fd8328f6632a150              # double 0.37808594684840546
	.quad	0x3fe173fba5303bb4              # double 0.54540807975160144
	.quad	0x3fe46a4cafa05773              # double 0.63797601987856323
	.quad	0x3fd446f3a883da98              # double 0.31683055359409584
	.quad	0x3fd582b25dcc5990              # double 0.33610209617599995
	.quad	0x3fe32c76fb612d9e              # double 0.59917782876566483
	.quad	0x3fda0d2c52682bd0              # double 0.407054024196154
	.quad	0x3fe35b979441aa5d              # double 0.60493067699765002
	.quad	0x3fe6cc9f92796b9a              # double 0.71247843368779518
	.quad	0x3fc2764ab7e05ae8              # double 0.14423498133029189
	.quad	0x3fa713c00854e180              # double 0.045072556511914108
	.quad	0x3fd640af9bfffddc              # double 0.34769811853763399
	.quad	0x3fe863cee2877def              # double 0.7621836113357271
	.quad	0x3fbf1d8b61d38420              # double 0.1215445627053815
	.quad	0x3fec44423f976987              # double 0.88333237095075468
	.quad	0x3fea6fb0ce4d5732              # double 0.82613411229497147
	.quad	0x3fefcfb4b75459e5              # double 0.99410472685377426
	.quad	0x3fefa0fcd700a3b5              # double 0.9884018134372271
	.quad	0x3fe18b433978a127              # double 0.54824982857556825
	.quad	0x3fe42072f1174653              # double 0.62896105850286188
	.quad	0x3fe5534c6345eaa1              # double 0.66641826047210284
	.quad	0x3fe5fcaee69036db              # double 0.68709511787320865
	.quad	0x3feaa7037cc40020              # double 0.83288740509306435
	.quad	0x3fca0fdfb5a147c4              # double 0.20360943192150505
	.quad	0x3fe407773d6e08d6              # double 0.62591135023128674
	.quad	0x3fedb2ea57773fe8              # double 0.9280902584378028
	.quad	0x3fed78cee9a5c75a              # double 0.92099710115710853
	.quad	0x3f2a5adf524a6000              # double 2.010724648655593E-4
	.quad	0x3fa0660405d354c0              # double 0.032028318129655897
	.quad	0x3fde10e21af3a830              # double 0.46978047019968283
	.quad	0x3fd82d0de18c0b88              # double 0.37774989152983851
	.quad	0x3fd8545e310d6298              # double 0.38014941015493653
	.quad	0x3fccad5f20f0ddc0              # double 0.2240408812374266
	.quad	0x3fd7b2c630032de2              # double 0.37028650940621166
	.quad	0x3fe92780d8577eab              # double 0.78607218031171067
	.quad	0x3fee62824f1b82d1              # double 0.94952502680470208
	.quad	0x3fdfce255fa2a75c              # double 0.49695715274230223
	.quad	0x3fe54b0a864a44bd              # double 0.66541029194390655
	.quad	0x3fea3b2c9aa77c9b              # double 0.81972341733844034
	.quad	0x3fd52cd16eacadd2              # double 0.33086047943171792
	.quad	0x3fec3452bdea090a              # double 0.88138711063973685
	.quad	0x3fd4f391ecfdb72e              # double 0.32736633437785911
	.quad	0x3fd2710a1d39aea2              # double 0.28814938406024215
	.quad	0x3fde8bb9c58c9054              # double 0.47727817813779905
	.quad	0x3fe4833d9303aa44              # double 0.64102057183965444
	.quad	0x3fc66d8f4b7724f8              # double 0.17521849808534973
	.quad	0x3fef52b649529808              # double 0.97884668656183837
	.quad	0x3fedfc671b86a473              # double 0.9370608842483662
	.quad	0x3fe16e6518391bc0              # double 0.54472594004698038
	.quad	0x3fea969deb2581e4              # double 0.8308858483033501
	.quad	0x3fcbb3985375b044              # double 0.21641830516034777
	.quad	0x3fdb901da7cf6d80              # double 0.43067113292428161
	.quad	0x3feaabeb5106ef44              # double 0.8334862310943909
	.quad	0x3feff9cdfe57c118              # double 0.99924373318029591
	.quad	0x3fe9629bc7a66ffa              # double 0.79328717226189771
	.quad	0x3f619d4b8192ba00              # double 0.0021501993874928349
	.quad	0x3fdaf06f23b25b0c              # double 0.42092493520742447
	.quad	0x3fd08cd51caeb246              # double 0.25859573174492245
	.quad	0x3fe5971b8496985f              # double 0.67469573875565547
	.quad	0x3fdd8f26d159f7dc              # double 0.46186228222347636
	.quad	0x3fef8d50ef10fa39              # double 0.98600050633087399
	.quad	0x3fd3c599b1336dac              # double 0.3089355688550437
	.quad	0x3fcbaf7c0a1b9548              # double 0.21629286283056559
	.quad	0x3fe957da1e8fe50e              # double 0.79197412461431482
	.quad	0x3fe2bb51f4a4ff41              # double 0.58536622793324267
	.quad	0x3fe1a14758d30008              # double 0.5509373411987335
	.quad	0x3fe51df2bcb9a55d              # double 0.65990578518282528
	.quad	0x3fe947344b1ba672              # double 0.78994192761929427
	.quad	0x3fe2d09dc8eaf1b7              # double 0.58796586267231177
	.quad	0x3fe087adef1137e7              # double 0.51656243031333993
	.quad	0x3fea296f7eba7492              # double 0.81755804778699059
	.quad	0x3fe353edb187798e              # double 0.60399517701789462
	.quad	0x3fe29844d17618de              # double 0.58108750257886377
	.quad	0x3fcb4f50065532a8              # double 0.21335792836398082
	.quad	0x3fea36e4718456bb              # double 0.81920072718886361
	.quad	0x3fe670f571dab56e              # double 0.70128891217397693
	.quad	0x3fe63f1573b882b6              # double 0.69520065881450566
	.quad	0x3fe77316213eecf2              # double 0.73279863828011416
	.quad	0x3fe40c79b7b72975              # double 0.62652288324288341
	.quad	0x3fc928c78a178a98              # double 0.19655699007769978
	.quad	0x3fa2bc672dbed380              # double 0.036593651136548111
	.quad	0x3fe2e3b2471991df              # double 0.5902949703855106
	.quad	0x3fecad92fa8a0c71              # double 0.89618824895332072
	.quad	0x3fd7f946cbe1faa8              # double 0.37458963308737703
	.quad	0x3fab925cb624d120              # double 0.053851029619553126
	.quad	0x3fcb0ac97404dff0              # double 0.21126669087402616
	.quad	0x3fd4bb7a05e33272              # double 0.32394266676855132
	.quad	0x3feac77140c35ec9              # double 0.83684599541717219
	.quad	0x3fc2d6081835ec2c              # double 0.14715672666702184
	.quad	0x3fc4892cddfcc664              # double 0.16043625678280471
	.quad	0x3fef66fc964f5174              # double 0.98132161481275526
	.quad	0x3fd922763a1445de              # double 0.39272838279529576
	.quad	0x3fe1869373049e96              # double 0.54767773117505913
	.quad	0x3fe94dba01071542              # double 0.79073810768810682
	.quad	0x3fbe908d189290e8              # double 0.11939317560114981
	.quad	0x3fead81bae6f6580              # double 0.83888038701404355
	.quad	0x3fb07b77ecf41848              # double 0.064383979177450645
	.quad	0x3fe5912f58b358e8              # double 0.67397277187663196
	.quad	0x3fde4f94fda2227a              # double 0.47360729950791092
	.quad	0x3febe66b24bc1a8c              # double 0.87187726187478764
	.quad	0x3fcb031da864a9b0              # double 0.21103258821797288
	.quad	0x3fa4bb73a240d2c0              # double 0.040492642933178669
	.quad	0x3fea5453f500afeb              # double 0.82279394008719231
	.quad	0x3fcdc81285dbe9f4              # double 0.23266822372518414
	.quad	0x3fe793be0d2e6c9d              # double 0.73678495954972656
	.quad	0x3fef5e0edcbbbf7f              # double 0.98023169624319439
	.quad	0x3fd8a735891300ae              # double 0.38520563493876636
	.quad	0x3fc7ae94103a3c44              # double 0.18501520912511371
	.quad	0x3fd79735ddf7c588              # double 0.36860415150211923
	.quad	0x3fed738630571a8b              # double 0.92035207215742909
	.quad	0x3feeed74563d2fbd              # double 0.96648613780552461
	.quad	0x3fcde7d821d24dd4              # double 0.23363782550278123
	.quad	0x3fe1260b5681d36d              # double 0.53589407821583068
	.quad	0x3fb6805c9cf5ad18              # double 0.0878961451723409
	.quad	0x3fe0486d2e014f3b              # double 0.50884112344144883
	.quad	0x3fe596a4fb13aca5              # double 0.67463921583602782
	.quad	0x3fe15d0d258b311e              # double 0.54260880787618126
	.quad	0x3fe0c5ed31fdfcb9              # double 0.52416095508660654
	.quad	0x3fd6714974d31214              # double 0.3506644860138135
	.quad	0x3fd10527f75bec42              # double 0.26593970447692439
	.quad	0x3feb279f4de5a780              # double 0.84858670439028572
	.quad	0x3fad7ed23edd9080              # double 0.057608194517144717
	.quad	0x3fe1b8958e397a95              # double 0.55378225115039703
	.quad	0x3fe255e3df7554a1              # double 0.57298463482097273
	.quad	0x3fd3459994c7a03c              # double 0.30112304238582843
	.quad	0x3fe762d51d78d617              # double 0.73081451183560631
	.quad	0x3f8a379caa4f8200              # double 0.012801383922067977
	.quad	0x3fb2186dd80f75d0              # double 0.070685258149260521
	.quad	0x3fdf0af56f3f62c6              # double 0.48504386772178198
	.quad	0x3fb72a80745d6238              # double 0.090492275628442864
	.quad	0x3fb4c22291992b88              # double 0.081087265535798037
	.quad	0x3fe12b2694da5f60              # double 0.53651742050986329
	.quad	0x3feebe7a16879e37              # double 0.96075157547324507
	.quad	0x3fda95da04f5438c              # double 0.41539621814904915
	.quad	0x3fec18ed30e51b74              # double 0.87804278898043586
	.quad	0x3fd96e77201c4f3c              # double 0.39736726890372487
	.quad	0x3fe6954454d43815              # double 0.70572105949554731
	.quad	0x3fd93ecd62793614              # double 0.39445814720679206
	.quad	0x3fe3f0e1dd0b0207              # double 0.62315457508526684
	.quad	0x3fbc2655e5068de8              # double 0.10995995370335943
	.quad	0x3fe5e7e74c042071              # double 0.68455853316210213
	.quad	0x3fd92708ac914a20              # double 0.39300743915842595
	.quad	0x3fe8028778688d4c              # double 0.75030873791949082
	.quad	0x3fac084ee6859ff0              # double 0.054750886573685764
	.quad	0x3f64e3cb19741d00              # double 0.0025500265870764816
	.quad	0x3fdc08079446a472              # double 0.43799008827279018
	.quad	0x3fd1d02191ce3848              # double 0.27832831610510711
	.quad	0x3fe794e147d5653d              # double 0.73692382841105764
	.quad	0x3feeab66c49e371a              # double 0.95842302705725335
	.quad	0x3fe913cb39ba832d              # double 0.7836662414084451
	.quad	0x3fe66dfd66cb7565              # double 0.70092649533368656
	.quad	0x3fee6c458972cc21              # double 0.95071675153156232
	.quad	0x3fef8bf38c934d71              # double 0.98583390670903103
	.quad	0x3fe2b331afe4eae5              # double 0.58437427858674751
	.quad	0x3fd8acacdd93dbe0              # double 0.38553926123080196
	.quad	0x3fe3da0be079c0b3              # double 0.62036699145212137
	.quad	0x3fd879eab39d5f12              # double 0.38244121113301432
	.quad	0x3fdcfb5032db9a08              # double 0.45283894507011313
	.quad	0x3fbe8c316b0a1480              # double 0.11932667601839064
	.quad	0x3fea21fbee2f2a6e              # double 0.81664845009193043
	.quad	0x3feac753c75f326f              # double 0.83683194103066494
	.quad	0x3fd95d907dd65e3a              # double 0.39633571900182896
	.quad	0x3fc6fff6c1658568              # double 0.17968639796439878
	.quad	0x3febe42339f128e0              # double 0.87159882847597813
	.quad	0x3fdb818fadd4da92              # double 0.42978279090622451
	.quad	0x3fe7fad6954f7a71              # double 0.74936989938926335
	.quad	0x3fe4737be1b192e0              # double 0.6390971572951365
	.quad	0x3fd6625b7f722978              # double 0.34975326009648411
	.quad	0x3fef114606d8bb7e              # double 0.97085858666638081
	.quad	0x3fd23a616fc1f5fc              # double 0.28481326974710419
	.quad	0x3fe0b207e842f9ec              # double 0.52173228610609845
	.quad	0x3fa05619922526c0              # double 0.031906890001278665
	.quad	0x3fe163b12856bf57              # double 0.54341943625147848
	.quad	0x3fc983e3fc82aa14              # double 0.19933748082742453
	.quad	0x3fd06b0c1e422834              # double 0.25653365092205438
	.quad	0x3feb9f577194fcf1              # double 0.86320087608319629
	.quad	0x3fe23f74c1ae15ec              # double 0.57024610355500505
	.quad	0x3fe4c91a4b314a86              # double 0.64954867063563948
	.quad	0x3fe804dd352d2f20              # double 0.75059376131091326
	.quad	0x3fef02f47aa98600              # double 0.96911071736775511
	.quad	0x3fd08dc36e61db3a              # double 0.25865255145565735
	.quad	0x3fec00c02241d9c0              # double 0.87509161654343615
	.quad	0x3fe692e313999691              # double 0.70543054416767081
	.quad	0x3fd9e007f28442ea              # double 0.40429876979128088
	.quad	0x3fe9e02c21e27ffb              # double 0.80861479395025471
	.quad	0x3fe6bfcc4f2413ac              # double 0.71091285187923381
	.quad	0x3fe3948ca48cc57d              # double 0.61188346995019993
	.quad	0x3fdffb0ab2b36ab0              # double 0.49969737483267362
	.quad	0x3fecfee5e395f3a4              # double 0.90611547899571975
	.quad	0x3fe79c59b86aaf35              # double 0.73783575076001873
	.quad	0x3fb0e931dc731018              # double 0.066058269806547165
	.quad	0x3fee68577bc91d02              # double 0.95023702790140896
	.quad	0x3fdc0eac708d0cf8              # double 0.43839560500437313
	.quad	0x3fef799bf65c6172              # double 0.98359487645488586
	.quad	0x3fce6e2342ac20b0              # double 0.23773613696562768
	.quad	0x3feed38c4c90ab9d              # double 0.96332373575329521
	.quad	0x3fb4bc8270c843c0              # double 0.081001427206742527
	.quad	0x3fdc818ca27558ac              # double 0.44540706505848493
	.quad	0x3fdca34be1c7ea9e              # double 0.4474668221370538
	.quad	0x3fd60f8f25519d8e              # double 0.34469965595641205
	.quad	0x3fec8187aa87b2a8              # double 0.89081176096586479
	.quad	0x3fe7e524ac4406cc              # double 0.74672158857011928
	.quad	0x3fbc3170def0f5f0              # double 0.11012940829183271
	.quad	0x3fee366fea52e9ab              # double 0.94414516226179523
	.quad	0x3fcd8cd8c6d72cbc              # double 0.23086080273637843
	.quad	0x3fee07d037f7f1b3              # double 0.93845377856592049
	.quad	0x3fe613a51f695d27              # double 0.68989807257722624
	.quad	0x3fe153edeeeca911              # double 0.54149529137547081
	.quad	0x3fe0cf00e70e7169              # double 0.52526898506361619
	.quad	0x3fb98acf02e3a620              # double 0.099774301724800285
	.quad	0x3fea1d503ee5ba28              # double 0.81607830319064067
	.quad	0x3fb3a87bc3524750              # double 0.076789603410614803
	.quad	0x3fd1dbd2429ec8ee              # double 0.27904182916530729
	.quad	0x3fa4b2a60da02f20              # double 0.040425480998321328
	.quad	0x3fe74be43adc48c2              # double 0.72801410194576754
	.quad	0x3fca1d1eec1439b4              # double 0.20401369597716512
	.quad	0x3fe39e21296c4a81              # double 0.61305292215759277
	.quad	0x3fd3b17c0ef4ef96              # double 0.30770780048964619
	.quad	0x3fed9ffbeb867ef4              # double 0.92577930451440559
	.quad	0x3fef9e25e9a06daa              # double 0.98805518751344334
	.quad	0x3feb1cd7c67c97d0              # double 0.84727085844928673
	.quad	0x3feb0e2252908da7              # double 0.84547535062704504
	.quad	0x3feb7b3d86846395              # double 0.85879398606185708
	.quad	0x3fee396d28164ae7              # double 0.94451005773075003
	.quad	0x3fecab8a443c4d91              # double 0.89593995406396421
	.quad	0x3f8659b025ff0a80              # double 0.010913253936341905
	.quad	0x3fb6259fb0f7b5d0              # double 0.086511593537316189
	.quad	0x3fdbfabf921318bc              # double 0.43717946305367739
	.quad	0x3fcc8994fc6af4a8              # double 0.22294866871917418
	.quad	0x3fe85c19c731aa28              # double 0.76124276070669783
	.quad	0x3fdd01857da2b4ac              # double 0.4532178618345124
	.quad	0x3fe5dcf08c151d7b              # double 0.68322017059192264
	.quad	0x3fe0fa179a7f9fc7              # double 0.53052883315557942
	.quad	0x3fb86e572671b898              # double 0.095433661351963628
	.quad	0x3fee3f5bab1cbd76              # double 0.94523414059032862
	.quad	0x3fb308e3176ed278              # double 0.07435435602276097
	.quad	0x3fed68c871650f06              # double 0.9190408911458412
	.quad	0x3fe2e0aad52a5d2e              # double 0.58992520936854986
	.quad	0x3fea0819a0413a76              # double 0.81348878192677776
	.quad	0x3f97bedf2b7ca220              # double 0.023189055470682729
	.quad	0x3f7145b68af4d000              # double 0.0042168741777466323
	.quad	0x3fd8b4b18b56d948              # double 0.38602865798329278
	.quad	0x3fe96e17d1825c54              # double 0.79468909187097347
	.quad	0x3fe52811e193ad49              # double 0.66114133890133886
	.quad	0x3fd9faea99640144              # double 0.40593972186617955
	.quad	0x3fe8a6e6a647930c              # double 0.7703736541412538
	.quad	0x3fe338b23c6604a0              # double 0.60067092701514824
	.quad	0x3fd98c776e0164b8              # double 0.39919839613646557
	.quad	0x3fea168c801ec686              # double 0.81525254271964864
	.quad	0x3fee53c71e4a5ff5              # double 0.94772678295248503
	.quad	0x3fe7e7cb083f0aac              # double 0.74704505549046507
	.quad	0x3fcfc395826f47b8              # double 0.24815625065690283
	.quad	0x3fe3dde64984b2f5              # double 0.62083734854749528
	.quad	0x3fe1655f6bad1293              # double 0.54362460165482884
	.quad	0x3fed91c0e60bf9fb              # double 0.92404217654239973
	.quad	0x3fea08d7c7c643fa              # double 0.81357945459796999
	.quad	0x3fd2f801413f443c              # double 0.29638701793470879
	.quad	0x3fdf6207540b14b6              # double 0.49035819251396207
	.quad	0x3fde92e47b0901b8              # double 0.47771560683397807
	.quad	0x3fd2fe4614555788              # double 0.29676963792496069
	.quad	0x3fe41f85a79e0536              # double 0.62884791124103034
	.quad	0x3fd25d73c7ae74ea              # double 0.28695387363570879
	.quad	0x3fbc8e46e13d9c60              # double 0.11154597281493883
	.quad	0x3fe91f25fb703ea1              # double 0.78505229100297325
	.quad	0x3fdf3d1ffe9d692e              # double 0.48810577263579347
	.quad	0x3fe227a259a12769              # double 0.56733815675509647
	.quad	0x3fee89df5d62f073              # double 0.954330141444656
	.quad	0x3fdb3b4c867b21d0              # double 0.42549431927593862
	.quad	0x3fed37773630c4a2              # double 0.91302071174699884
	.quad	0x3fef2cc788400bd8              # double 0.97421623813022062
	.quad	0x3fdd820c978352c6              # double 0.46106257244290949
	.quad	0x3fd91c759bbf9040              # double 0.39236202440065782
	.quad	0x3fc7e3ce567e3978              # double 0.18663958762449417
	.quad	0x3fee8d0b81a44b28              # double 0.9547174007478576
	.quad	0x3fe8fecb4db86bea              # double 0.78110280208363503
	.quad	0x3fda69c12ad9890a              # double 0.41270474609895358
	.quad	0x3fe93d8b210db5b8              # double 0.78876263099453237
	.quad	0x3fc93f120cf127a0              # double 0.19723725921568036
	.quad	0x3fd64d094882d6d6              # double 0.34845192032967753
	.quad	0x3fee9e13036a80e9              # double 0.95679617564385666
	.quad	0x3fe2986cecb096fa              # double 0.58110662678220071
	.quad	0x3fce13b34670fc80              # double 0.23497620524901563
	.quad	0x3fe452fa26bd2949              # double 0.63512904707139584
	.quad	0x3fda0987580e2bc8              # double 0.40683158492236915
	.quad	0x3fe2bb582d33b742              # double 0.58536919430273593
	.quad	0x3fef978e9eebf233              # double 0.98725062407863217
	.quad	0x3fc96ca5c1d18674              # double 0.19862815822402846
	.quad	0x3fe320578dadc9fa              # double 0.5976979987302109
	.quad	0x3fe3a2409dc31b25              # double 0.61355620205799666
	.quad	0x3fe06c9543227b4f              # double 0.51325476753468446
	.quad	0x3fe873ee81822ed6              # double 0.76415181440958224
	.quad	0x3fd2f528e950a680              # double 0.29621336731597836
	.quad	0x3fe23e021edc2319              # double 0.57006937053037909
	.quad	0x3fe7a1962e8f4725              # double 0.73847493261039132
	.quad	0x3fee25eee4838fdd              # double 0.94213051444648566
	.quad	0x3fc2b1134987aba0              # double 0.14602891054468348
	.quad	0x3fe0e4d94ab73f45              # double 0.52793564408236959
	.quad	0x3fcb05ecd5f25b20              # double 0.2111183209096561
	.quad	0x3fd94d1b57639296              # double 0.39533122572019275
	.quad	0x3fda82db2d3f1720              # double 0.41423682612036039
	.quad	0x3fdb2b2b572ab1e4              # double 0.42450984489803845
	.quad	0x3fd1a6abfcf308e6              # double 0.27579784109197047
	.quad	0x3fe056a341d5ca96              # double 0.51057589395925862
	.quad	0x3fcf2b560043c27c              # double 0.24351000798153055
	.quad	0x3fe859d2b7724382              # double 0.76096473531116282
	.quad	0x3fe014057a1b5a50              # double 0.50244401787751691
	.quad	0x3fe34aa5d4cb3461              # double 0.60286227761538325
	.quad	0x3fdf7147807648e0              # double 0.49128902001497288
	.quad	0x3fecf09a4a24d2f1              # double 0.90437044602603411
	.quad	0x3fd6252553a93e20              # double 0.34601720018415172
	.quad	0x3fdcd828c18619b4              # double 0.45069331072627539
	.quad	0x3fda164c2352c29a              # double 0.40761092614688155
	.quad	0x3f91ebb1607cb2a0              # double 0.01750065947924162
	.quad	0x3fb197c1404aed58              # double 0.068721845814186167
	.quad	0x3fb4fe644cf40640              # double 0.082006710803420368
	.quad	0x3fe8e7770e09e3d6              # double 0.77825501195831737
	.quad	0x3fd695f1e7108912              # double 0.35290191235448376
	.quad	0x3fe90fd6975ac978              # double 0.78318337975933527
	.quad	0x3f90f387d639ed40              # double 0.0165539955619185
	.quad	0x3fdd6fe2e25c58d6              # double 0.4599539957574853
	.quad	0x3fe63acafffc3366              # double 0.69467687604047224
	.quad	0x3fb08602283d1b68              # double 0.06454480631246684
	.quad	0x3fd325a9e3c7a574              # double 0.29917380565765161
	.quad	0x3fe7435f138c783c              # double 0.72697404687983846
	.quad	0x3fc1f1cefcd3da30              # double 0.14019191117377394
	.quad	0x3fcf19ef993a1154              # double 0.2429790018251291
	.quad	0x3fe9e19dd845f156              # double 0.80879108658659038
	.quad	0x3f9a6e964b857700              # double 0.025812481269318788
	.quad	0x3fe10267209ceab3              # double 0.53154331559865964
	.quad	0x3fec76ce9482e37f              # double 0.88950280195341225
	.quad	0x3fb58250a5724840              # double 0.084019699470702314
	.quad	0x3fd65b5c790e9a8a              # double 0.34932624647118671
	.quad	0x3fe4a84250c9d29d              # double 0.64553943423250681
	.quad	0x3f982b0f096121e0              # double 0.023601756045794064
	.quad	0x3fe13c9d40037b96              # double 0.53864920141846784
	.quad	0x3fe6d093a22a0e75              # double 0.71296102211677115
	.quad	0x3fb596747cb5f5b0              # double 0.084327011534660156
	.quad	0x3fe070456a8810b1              # double 0.51370497519430647
	.quad	0x3fe3eee95c8e7b44              # double 0.62291400983290446
	.quad	0x3fc15428d95b03b4              # double 0.13538084614813573
	.quad	0x3fc5d873e36b1ebc              # double 0.17066811184326081
	.quad	0x3fdd7981e845a57e              # double 0.46054122622316374
	.quad	0x3fda0b6bd9734b22              # double 0.40694710002314782
	.quad	0x3feb4704cf3e56dd              # double 0.85241928555725688
	.quad	0x3fe31ac0aae1257f              # double 0.59701569914720654
	.quad	0x3fd5c7a1762d0a1e              # double 0.34030949154490198
	.quad	0x3fde23d6a7deba8c              # double 0.47093740838582998
	.quad	0x3fcfd0f8d1d788f0              # double 0.24856481786907336
	.quad	0x3fb58bd6741aa128              # double 0.084165004106243502
	.quad	0x3fe650f2ab5f3b21              # double 0.69738133879750219
	.quad	0x3fe9e9ec74ea9355              # double 0.80980513415543476
	.quad	0x3f9d8be8f1c28180              # double 0.02885402656159064
	.quad	0x3fcce6481868dcbc              # double 0.22577763740421186
	.quad	0x3fc92e647003ab28              # double 0.19672828168344236
	.quad	0x3fe08da770d83f3d              # double 0.51729175605758082
	.quad	0x3feb6e3efd028b29              # double 0.85720776954653843
	.quad	0x3fe7c24259725146              # double 0.74246327848462879
	.quad	0x3fe84ab0f1fcf698              # double 0.75911757720287465
	.quad	0x3fbf919778ca5b00              # double 0.12331530283914205
	.quad	0x3fcd2c3db7339dbc              # double 0.2279126305140674
	.quad	0x3fbdacccd2011698              # double 0.11591796996170911
	.quad	0x3fdd834d8c0a521a              # double 0.46113909412204779
	.quad	0x3fcc7f313a8ac58c              # double 0.22263160093784184
	.quad	0x3fee69c6e163b1ce              # double 0.95041221639035611
	.quad	0x3fe2dd672efc9fdb              # double 0.58952674080955647
	.quad	0x3fd3110813f35208              # double 0.29791452358520631
	.quad	0x3fd65f5153244bc2              # double 0.34956772918047474
	.quad	0x3fe38c7beed76038              # double 0.61089893959707009
	.quad	0x3fdd517c45cf10da              # double 0.45809847657461733
	.quad	0x3f6117b98a24c700              # double 0.0020865081616187053
	.quad	0x3fb8035f2b534870              # double 0.093801448895904249
	.quad	0x3fec29b4cf4e53fc              # double 0.88009109963843412
	.quad	0x3fe3295a6fada2eb              # double 0.59879800617372092
	.quad	0x3fe036c5bb2778e2              # double 0.50668608239700696
	.quad	0x3fee0f5863ff4e08              # double 0.93937320261687862
	.quad	0x3f99a1127733e5a0              # double 0.025028503919178768
	.quad	0x3fdc47b374302d08              # double 0.44187628122809075
	.quad	0x3fd2b8cd9c62066e              # double 0.29252949020165075
	.quad	0x3feb557235428c2a              # double 0.85418043520292497
	.quad	0x3fe19b110ca31082              # double 0.55017902820738152
	.quad	0x3fe96694a339cdd7              # double 0.79377204780615329
	.quad	0x3fd3b5c4d1bd4b24              # double 0.30796928865781781
	.quad	0x3fef6cbb50ec90d0              # double 0.98202291303143774
	.quad	0x3fb2529e34cb73f0              # double 0.071573150529232299
	.quad	0x3fd3805dd9d37874              # double 0.30470987579418041
	.quad	0x3fbc2c0e9f1f2fe8              # double 0.11004725823221373
	.quad	0x3fee7cf3b4180fec              # double 0.95275292563064573
	.quad	0x3fe7bb7427cd6db4              # double 0.74163253568570164
	.quad	0x3feb64f23a38c02c              # double 0.85607253428861929
	.quad	0x3fecbf03a06e581b              # double 0.89831715902505793
	.quad	0x3fe748a9d3da1111              # double 0.72762004258450663
	.quad	0x3fc87dbc43c22558              # double 0.19133714016451608
	.quad	0x3fe920998839ec80              # double 0.78522945982639669
	.quad	0x3fe6534766b5f8fc              # double 0.69766588268956253
	.quad	0x3fda234b0531a13c              # double 0.40840411669934773
	.quad	0x3faba6bc88bdf6e0              # double 0.054006473247665943
	.quad	0x3fdd5e4b5ef2fc34              # double 0.45888027450922952
	.quad	0x3fad3981c96ec790              # double 0.057079368437725653
	.quad	0x3fa3aaf0553d4560              # double 0.038413534550850725
	.quad	0x3fe9be7452207063              # double 0.80449882545827867
	.quad	0x3fdbe576ab03df98              # double 0.43588034344383564
	.quad	0x3fc9fa94e41e8170              # double 0.20295964373236641
	.quad	0x3fe16b52f29ecb8e              # double 0.54435107599998545
	.quad	0x3fcbb11cfdb970e4              # double 0.21634256733785329
	.quad	0x3fe02afc5ac28932              # double 0.50524728514236572
	.quad	0x3fda842b3e6d1b5c              # double 0.41431695076282948
	.quad	0x3fdab911823bb75e              # double 0.41754567831127598
	.quad	0x3fd365a42c7ddd42              # double 0.30307869286430755
	.quad	0x3fe9f76728686b77              # double 0.81145055668035482
	.quad	0x3fe9e8c450965164              # double 0.80966392268832665
	.quad	0x3fd319845d0df438              # double 0.29843243682245513
	.quad	0x3fc1f91efd11dbb4              # double 0.14041507107660112
	.quad	0x3fe453221c9e100d              # double 0.63514810170500058
	.quad	0x3feab4873cb41e21              # double 0.83453714233559506
	.quad	0x3fe709c375568cdd              # double 0.719941834617568
	.quad	0x3fca062d06191bd8              # double 0.20331347272642009
	.quad	0x3fed8a6ab935c605              # double 0.92314659284437595
	.quad	0x3fd6a9b9ee404102              # double 0.35410927073191101
	.quad	0x3fddebe67999b776              # double 0.46752321124119278
	.quad	0x3f7975fedcee9f80              # double 0.0062160449587408406
	.quad	0x3fd5df6ea110a388              # double 0.34176221589091726
	.quad	0x3fc45d13261d760c              # double 0.15909041749084485
	.quad	0x3fec5917222be5db              # double 0.88587528871647281
	.quad	0x3fe28a88163d45a5              # double 0.57941059440252174
	.quad	0x3fe0bb82e1b65200              # double 0.52288955768977985
	.quad	0x3fea638db7efa0b8              # double 0.82465253758439072
	.quad	0x3fb107bb8337cf90              # double 0.066524238143584435
	.quad	0x3fe80d46dc93d421              # double 0.75162070352110188
	.quad	0x3fca6826bad60d20              # double 0.20630344508035936
	.quad	0x3fe5573e799d3f26              # double 0.66689990761549178
	.quad	0x3fd8fb0733a95740              # double 0.39032154126231333
	.quad	0x3fe2d36949010d3c              # double 0.58830703981985932
	.quad	0x3fd46c419bf850a6              # double 0.31910743934100549
	.quad	0x3fe4d1c172ef568d              # double 0.65060493896699401
	.quad	0x3fd2ce5df2c25dea              # double 0.29384564120252199
	.quad	0x3fec79588c52372c              # double 0.88981273085093937
	.quad	0x3fd6eeb4a4d7f270              # double 0.35831943605425121
	.quad	0x3fefdc659fe89d5f              # double 0.99565392715605216
	.quad	0x3fd4b7575013c48a              # double 0.32369025058785239
	.quad	0x3fcb0dff1769f09c              # double 0.21136463778737358
	.quad	0x3fcb84fae3d87a0c              # double 0.21499572873376882
	.quad	0x3fca5e01e524d814              # double 0.20599387825649329
	.quad	0x3fe770d39ca8bbc6              # double 0.73252277944072186
	.quad	0x3feb0c696a8098bb              # double 0.84526511002766058
	.quad	0x3fd53e79c19f3790              # double 0.33193820866005641
	.quad	0x3fe04b15e78e131b              # double 0.50916571832258073
	.quad	0x3fe0eff37d892655              # double 0.52929090994548267
	.quad	0x3fbff8178b390908              # double 0.12487933300966259
	.quad	0x3fd632b5b38ec61e              # double 0.34684507880146664
	.quad	0x3fb6ed8f69e1acd0              # double 0.089562381124483225
	.quad	0x3fcdfbd16fee6f08              # double 0.23424737897300241
	.quad	0x3fdff3224a2e3a4e              # double 0.49921471828648556
	.quad	0x3febf9461ea7743e              # double 0.87417894351131742
	.quad	0x3fc4ab2e70f4a6b8              # double 0.16147404208577654
	.quad	0x3fe3cb85fa6c2f0e              # double 0.61859415922796912
	.quad	0x3fd03dc66f1d09fa              # double 0.25377045489236105
	.quad	0x3fe92f5f7da9a46b              # double 0.78703283828248283
	.quad	0x3fe483c24379a8ec              # double 0.64108384302860832
	.quad	0x3fe4560a56790a40              # double 0.63550297631474706
	.quad	0x3fdd813dd8111b44              # double 0.46101327991748442
	.quad	0x3fea467980020d18              # double 0.82110285760464574
	.quad	0x3fbef30e6e7f2a30              # double 0.12089624593424086
	.quad	0x3fd336be464e351a              # double 0.30021626344462649
	.quad	0x3fc4c37883a5e030              # double 0.16221529415247593
	.quad	0x3fe049841016402b              # double 0.50897410528160003
	.quad	0x3fe88fdeb9f80e80              # double 0.7675622589308233
	.quad	0x3fc9cfc9f1ccd06c              # double 0.20165371233599971
	.quad	0x3fef4998a2e80f01              # double 0.97773391549750965
	.quad	0x3fefd2dbd787757f              # double 0.99448959441694728
	.quad	0x3fed86b9d47eef10              # double 0.92269603255360444
	.quad	0x3fe5b9222654f428              # double 0.67884929167451435
	.quad	0x3fe6972c3f396e6d              # double 0.70595371578697341
	.quad	0x3feefa51f974411c              # double 0.96805666657931821
	.quad	0x3feb39ea997b6c5d              # double 0.85081987359025002
	.quad	0x3fcc966fad086a9c              # double 0.22334094952460226
	.quad	0x3fd1ac813cc5ff02              # double 0.27615385947136428
	.quad	0x3fe1d88541b223e1              # double 0.55768072921011591
	.quad	0x3fac1fbc56dc1740              # double 0.054929624178881031
	.quad	0x3fcb167630ee6e98              # double 0.21162297620036408
	.quad	0x3fe90fb87a869d64              # double 0.78316902094676921
	.quad	0x3fe37538726019d2              # double 0.60805914248413218
	.quad	0x3fdec2cc6c7ae8c2              # double 0.48063955873261588
	.quad	0x3fdc7c22cad138e0              # double 0.44507665449499534
	.quad	0x3fe41e05936d54aa              # double 0.62866476816511363
	.quad	0x3fead3b006c6ab2c              # double 0.83834077189871925
	.quad	0x3fd9baced240d810              # double 0.40202684910343667
	.quad	0x3fe806e0fda43171              # double 0.75083970584232251
	.quad	0x3feab1bc326ac357              # double 0.83419618460730305
	.quad	0x3fb0eba1e39bb3d0              # double 0.066095464771662948
	.quad	0x3fca0c3018e0102c              # double 0.20349694456683787
	.quad	0x3fcdb9b964c3a898              # double 0.23223035259372149
	.quad	0x3fe28663ed9fa2a2              # double 0.57890507136206204
	.quad	0x3fe2b5af1cae0cb7              # double 0.58467822648562773
	.quad	0x3fec2743a3b35df9              # double 0.87979299519332621
	.quad	0x3feae9fc27f978d7              # double 0.84106262023467593
	.quad	0x3fe3ec1dee4361f1              # double 0.62257286582740623
	.quad	0x3fefa6a327acfb1b              # double 0.98909147023354948
	.quad	0x3f81a2ff2b8dbb80              # double 0.0086116728941456611
	.quad	0x3feec004776e3d20              # double 0.96093962980549818
	.quad	0x3fe49cd51137b007              # double 0.64414456713484547
	.quad	0x3fef5392ae238452              # double 0.97895177852127291
	.quad	0x3fc625994f2667c4              # double 0.17302242626902686
	.quad	0x3fd3522ced6f416e              # double 0.30189059435817611
	.quad	0x3fd4bb14c78613d6              # double 0.32391852841129543
	.quad	0x3fe51d0242b8d57f              # double 0.65979111701624038
	.quad	0x3fefcddb2d625dc4              # double 0.99387892593488702
	.quad	0x3fd08b2bf135da22              # double 0.25849436336230458
	.quad	0x3fe20870e7c4e7a5              # double 0.56353039996541965
	.quad	0x3fafe6bd812066b0              # double 0.062307283413429615
	.quad	0x3fe84d4c006bf05a              # double 0.7594356544718821
	.quad	0x3fd1e46b95d1eee4              # double 0.2795666659437599
	.quad	0x3fc3cf2f8f09354c              # double 0.15476030811479757
	.quad	0x3fbc3772e772f858              # double 0.11022108221638527
	.quad	0x3feb2eefd50fd0ee              # double 0.84947959531430484
	.quad	0x3fe5537c3108eca4              # double 0.66644105507966289
	.quad	0x3fe463ce2e28bb22              # double 0.63718327537012365
	.quad	0x3fe0f85449d6bc7c              # double 0.53031362935679693
	.quad	0x3fc7e347cf9f69b4              # double 0.18662355077578996
	.quad	0x3fe0520bd3e8eeaa              # double 0.51001540554667213
	.quad	0x3fe42a52288bb1ad              # double 0.63016612929418658
	.quad	0x3fe24a87ebf6c683              # double 0.57159801565849511
	.quad	0x3fea2b272d097cc7              # double 0.81776770397473164
	.quad	0x3fd5d46a15e68348              # double 0.34108974589075958
	.quad	0x3fd763203c47234a              # double 0.36542516600143371
	.quad	0x3fe72aa811a9f459              # double 0.72395709466912728
	.quad	0x3feb5f4a811dc3ea              # double 0.85538220613500227
	.quad	0x3fed2337477940ca              # double 0.91054882011123905
	.quad	0x3fdc4241fb29a51e              # double 0.44154405143361142
	.quad	0x3fd608658ead0038              # double 0.3442624944036683
	.quad	0x3fee1d44cb7a124c              # double 0.94107284299440996
	.quad	0x3fe5923bd6f61dbe              # double 0.67410079941412682
	.quad	0x3fee1f137e38db8c              # double 0.94129347470048818
	.quad	0x3fc51bd0119141a8              # double 0.16491127832206343
	.quad	0x3fe63bd9039a2daf              # double 0.6948056288105614
	.quad	0x3fde8e663078a8ee              # double 0.47744135602501003
	.quad	0x3fcc6285bb43cc18              # double 0.22175666469374344
	.quad	0x3feba86c3685182c              # double 0.86430941246431336
	.quad	0x3fe66b7343c0cc6a              # double 0.70061648591071202
	.quad	0x3fef1f7c737db1c5              # double 0.97259352261385656
	.quad	0x3fdac27a5a67041e              # double 0.41811999157295243
	.quad	0x3f90be8a7d0023a0              # double 0.016351856116702757
	.quad	0x3fcf9189d2da286c              # double 0.2466289786864907
	.quad	0x3fdef36fe2ea024c              # double 0.48360821876125182
	.quad	0x3feddb3f2f4daccf              # double 0.93301352728794906
	.quad	0x3f7bec3efc506900              # double 0.0068170986533238054
	.quad	0x3fe62ca9f7f5bb16              # double 0.69295214109101511
	.quad	0x3fe18a7558216c08              # double 0.54815165722845993
	.quad	0x3fc305370df053b4              # double 0.14859665089229923
	.quad	0x3fe18463437954be              # double 0.5474106138086865
	.quad	0x3fefd17818908807              # double 0.99431996152657198
	.quad	0x3fe6434922ce3333              # double 0.69571358488028634
	.quad	0x3fe587d2e1914444              # double 0.67283004814283531
	.quad	0x3fef32a670bcbd8b              # double 0.97493288058278559
	.quad	0x3fd523030c66f444              # double 0.33026195727490326
	.quad	0x3fc48b21d146d288              # double 0.1604959747179644
	.quad	0x3fc996c8ddc29cc4              # double 0.19991408184180248
	.quad	0x3fcf642883071ea4              # double 0.24524408719866131
	.quad	0x3fe93e274ecd0d96              # double 0.78883710280244901
	.quad	0x3fefae8dca94d121              # double 0.99005784575141231
	.quad	0x3fd5cf03141ffa52              # double 0.34076001134227341
	.quad	0x3feb26717056f3d8              # double 0.84844276372279648
	.quad	0x3fe891415cb6a2d6              # double 0.76773136241998929
	.quad	0x3fd3dd5d30cc581c              # double 0.31038598790598981
	.quad	0x3fc5f84df99747c0              # double 0.17164015471513316
	.quad	0x3fd6b48ccec6f548              # double 0.35476989930233005
	.quad	0x3fe3f119bb7e47ea              # double 0.62318121547491256
	.quad	0x3fe3f6f9035e5cbb              # double 0.6238980356019036
	.quad	0x3f56387f70b58000              # double 0.0013562435659295602
	.quad	0x3fc68b20485b4d4c              # double 0.17612079175033057
	.quad	0x3fed7988543ac544              # double 0.92108551455582032
	.quad	0x3fe795e9831a1608              # double 0.73704982381667694
	.quad	0x3fe0653f3c1a4877              # double 0.51235925425341022
	.quad	0x3fd1d77c7c287428              # double 0.27877723812872768
	.quad	0x3fd88c43538c4486              # double 0.38356097372986431
	.quad	0x3fec628ff2b09c11              # double 0.88703153038375337
	.quad	0x3fe1b0e40c641860              # double 0.55284311695210064
	.quad	0x3fe823ac9e06eac0              # double 0.75435477127697226
	.quad	0x3f916b73df32e020              # double 0.017011461732835298
	.quad	0x3fd2ceb427842682              # double 0.29386619433407912
	.quad	0x3fee3a7afc1427f9              # double 0.94463872179153363
	.quad	0x3fd44a413975290e              # double 0.3170321522817553
	.quad	0x3fb4786259c448a8              # double 0.079961916843134362
	.quad	0x3fca43cebccfc888              # double 0.20519432277030014
	.quad	0x3fe13e526ef4657f              # double 0.53885766669115742
	.quad	0x3fdf4ab8eec03ed0              # double 0.488935692935212
	.quad	0x3fec8d7d1cb64b37              # double 0.89227157218770159
	.quad	0x3fe2d5080929b4fb              # double 0.58850480832703
	.quad	0x3fdd3a4d99e44598              # double 0.45668354061589289
	.quad	0x3fd900cab293588a              # double 0.3906733268644379
	.quad	0x3fc489b6fba94960              # double 0.16045272148273693
	.quad	0x3fe8f70b17d724b8              # double 0.78015665680245316
	.quad	0x3fdb069ba6525db0              # double 0.42227832071645377
	.quad	0x3fc2f8be7460ec40              # double 0.14821606333302562
	.quad	0x3fcd7ee569eeeaa0              # double 0.23043506310007889
	.quad	0x3fe68a2177604ecf              # double 0.70436166110672527
	.quad	0x3fda3b332187ae4c              # double 0.40986326479353319
	.quad	0x3fd3976531862ae6              # double 0.3061154349931442
	.quad	0x3fb31f7dca86d3d8              # double 0.074699270195949352
	.quad	0x3fc3bded96bd15c4              # double 0.15423364506038528
	.quad	0x3fe7acc631c059c9              # double 0.73984060017647224
	.quad	0x3fe0c0101a65d298              # double 0.52344517856416228
	.quad	0x3fec1c835e186b29              # double 0.87848060968403729
	.quad	0x3fed59bd0b792209              # double 0.91720440140585524
	.quad	0x3fec78d42de3c967              # double 0.88974961245393736
	.quad	0x3fe887c9cc2f2d6d              # double 0.76657571677917036
	.quad	0x3fe658de3742e6d5              # double 0.69834814828137814
	.quad	0x3fc1c53c65360778              # double 0.13883166257806656
	.quad	0x3fe1185b2cf05f3e              # double 0.53422316338671982
	.quad	0x3feca159e75f7079              # double 0.89469618978502219
	.quad	0x3fdcf34ecea7b146              # double 0.45235033208043196
	.quad	0x3fe20fc9a3b3875f              # double 0.56442720387370204
	.quad	0x3fd038e6b9c7c538              # double 0.25347297804463009
	.quad	0x3fe7ca5ae5fb6c07              # double 0.74345154684431314
	.quad	0x3fe143012168fbe2              # double 0.53942925000580666
	.quad	0x3fe9cab78391ff11              # double 0.805995709393729
	.quad	0x3fe3d3f33fac5563              # double 0.61962282596747931
	.quad	0x3fecf623bb5907e9              # double 0.90504633513796506
	.quad	0x3fc17fc00b3c199c              # double 0.13671112583706424
	.quad	0x3fe7c47c241c5fbb              # double 0.7427349763192902
	.quad	0x3fd006d004ff242a              # double 0.25041580665544194
	.quad	0x3fd8d68cff677ba8              # double 0.38809513990229982
	.quad	0x3fe9b0f0f2b20a20              # double 0.80284926797350308
	.quad	0x3fc662fc67d2ddb4              # double 0.17489581174389246
	.quad	0x3feaf54b3e72652c              # double 0.84244310566569913
	.quad	0x3fe6c0811c6297eb              # double 0.710999064864834
	.quad	0x3fabc27e7c310140              # double 0.054218247089468097
	.quad	0x3fef8eb2da34f30f              # double 0.98616926783106062
	.quad	0x3fecfda2a86e5ec0              # double 0.90596135040956227
	.quad	0x3fc780430fd77f90              # double 0.18360174439930832
	.quad	0x3fddc596e9da5882              # double 0.46518490636061227
	.quad	0x3fbf1f94691ba838              # double 0.12157561842073583
	.quad	0x3fec2cf9b48b143c              # double 0.88049016249045264
	.quad	0x3fc525001ed99814              # double 0.1651916647562649
	.quad	0x3febf5b090ae4918              # double 0.87374141939133931
	.quad	0x3fe9dafb0b7a8550              # double 0.80798103563226142
	.quad	0x3fcdffcc834111b4              # double 0.2343688622369321
	.quad	0x3fe51d8983e70af1              # double 0.65985561144074556
	.quad	0x3fded4206755cad0              # double 0.48169717875786677
	.quad	0x3feb7c4c7a445a77              # double 0.85892318611406793
	.quad	0x3febbf079fc01692              # double 0.8670690651058115
	.quad	0x3fe39cd9308f7fc0              # double 0.61289653286439005
	.quad	0x3fecd6c981e44391              # double 0.90121913308586177
	.quad	0x3fd2e08f531386e8              # double 0.29495604622762395
	.quad	0x3fb275b4b33a73f8              # double 0.072108548886219981
	.quad	0x3fe74613db5b2c5d              # double 0.72730439036366656
	.quad	0x3fed9a55aa6ce017              # double 0.92508967672529507
	.quad	0x3fd69d7922489290              # double 0.35336140010830608
	.quad	0x3fdbb687885b5fe8              # double 0.43301571193796784
	.quad	0x3fd6300889898486              # double 0.3466817229401119
	.quad	0x3f9a74187e91cb40              # double 0.025833494877996133
	.quad	0x3fd6838b05563108              # double 0.35177875062142094
	.quad	0x3f4ffabd601f6c00              # double 9.7593542909224506E-4
	.quad	0x3fea28922a9678cd              # double 0.81745251005102093
	.quad	0x3fef9c90b15550c7              # double 0.98786196360972489
	.quad	0x3fe3c9d728347838              # double 0.61838872768908626
	.quad	0x3fc0f55fe433bdd4              # double 0.1324882377880231
	.quad	0x3fca844bf3b31718              # double 0.20716237449067232
	.quad	0x3fd01015e81e3cea              # double 0.25098178546700345
	.quad	0x3fba9e37b7db70f0              # double 0.10397670973492601
	.quad	0x3fc5fcd68f12b190              # double 0.17177850709903142
	.quad	0x3fc732f7f4f9bd00              # double 0.18124293767639443
	.quad	0x3fe10e22258036c1              # double 0.5329752666891282
	.quad	0x3fea50d90fc8b849              # double 0.82236912806343654
	.quad	0x3fd825fe2b869114              # double 0.37731889963676335
	.quad	0x3fbd26d6b81744c8              # double 0.1138738822403581
	.quad	0x3fccc0a96804f544              # double 0.22462956980772664
	.quad	0x3fefdf34c66972df              # double 0.99599684479070649
	.quad	0x3fe1f4c485ad0b21              # double 0.56112886532386963
	.quad	0x3fe7a364b942d70a              # double 0.7386954897289979
	.quad	0x3fb4ad5a93794818              # double 0.08077016926225189
	.quad	0x3fb0402ef49f2cf8              # double 0.063479361269106138
	.quad	0x3fefb4faa246b1f2              # double 0.9908421678024395
	.quad	0x3fe62702ab5c3356              # double 0.69226201504498408
	.quad	0x3fe5b362321f5ae8              # double 0.67814740933939976
	.quad	0x3fd1b7b3f28613fe              # double 0.2768373363872455
	.quad	0x3f90f452c4756dc0              # double 0.016557019463432132
	.quad	0x3fe617f501fb2b9d              # double 0.69042444598140984
	.quad	0x3fa0eb06b4587740              # double 0.033043107523765602
	.quad	0x3fe3514a23a20314              # double 0.60367304763357987
	.quad	0x3fcb145651da5fe8              # double 0.21155814167718678
	.quad	0x3fd31f60f8644988              # double 0.29879020936018508
	.quad	0x3fce02366ea13418              # double 0.23444252397385479
	.quad	0x3fc173b1d0f0cb80              # double 0.13634321882417666
	.quad	0x3fdd2dabf6e73212              # double 0.45591258155471437
	.quad	0x3fd6e0cf4b8a4d54              # double 0.35747129799820709
	.quad	0x3fc469072e95d10c              # double 0.15945520186108586
	.quad	0x3fd8abf2b7d674c0              # double 0.38549488022711031
	.quad	0x3fe206cdbbf51954              # double 0.56333052359040403
	.quad	0x3fe835c4c04f0146              # double 0.75656354484821331
	.quad	0x3fe6df55090ba35e              # double 0.71476222769443232
	.quad	0x3fe0337cfb327c69              # double 0.50628518163638347
	.quad	0x3fe4ac3ae45a9361              # double 0.64602417564729475
	.quad	0x3fc1ffc3a5a4d40c              # double 0.14061780536727075
	.quad	0x3fea4a3f6baffbb6              # double 0.8215634444494444
	.quad	0x3fd7f2b954fef004              # double 0.3741896944081875
	.quad	0x3fcdb8bbf90f61fc              # double 0.2322001424897876
	.quad	0x3f712120ebaf9300              # double 0.0041819845164112746
	.quad	0x3fe505b05ac9b1d6              # double 0.65694444400792906
	.quad	0x3fd4a14b3ee5360e              # double 0.32234460012554755
	.quad	0x3fedba45165f6b48              # double 0.92898802156137439
	.quad	0x3fd4d38172a2008c              # double 0.32540928072558795
	.quad	0x3fdc63eb32675208              # double 0.44359855577684515
	.quad	0x3fe6d03293a62f28              # double 0.71291474187589632
	.quad	0x3fbaa54367220708              # double 0.10408421771901655
	.quad	0x3fd7807c29e3e600              # double 0.36721710291712384
	.quad	0x3fdee8d564d7be04              # double 0.48296103332447182
	.quad	0x3fd450ba86c438ae              # double 0.3174272838667872
	.quad	0x3fb5fef0929fb678              # double 0.085921321675152984
	.quad	0x3fee085eb0b06474              # double 0.93852171430184094
	.quad	0x3fdf8ab865b95794              # double 0.49284181531890536
	.quad	0x3fe3d0dac68ae057              # double 0.6192449453146861
	.quad	0x3f942a9fc885db00              # double 0.019693848241753464
	.quad	0x3fee4a5975842c25              # double 0.94657586052324361
	.quad	0x3fdb3fc0eb828c98              # double 0.42576621054667774
	.quad	0x3fe55120729220f0              # double 0.66615316750633546
	.quad	0x3fcbb529b8521c74              # double 0.21646615505253275
	.quad	0x3fa15b07ebd90050              # double 0.033897635974881823
	.quad	0x3fb28cda1b571368              # double 0.072461730646933398
	.quad	0x3fe3e13e5e4d2877              # double 0.62124555986635144
	.quad	0x3fe3a79e6d53b721              # double 0.61421128609592668
	.quad	0x3fc3c1bdf16f4830              # double 0.15435003556064109
	.quad	0x3fd203c686dd27e6              # double 0.28148043794919742
	.quad	0x3fe47ea406898a04              # double 0.64045907284554504
	.quad	0x3feb0970a4158312              # double 0.84490234420454358
	.quad	0x3fe21ac303e11e58              # double 0.56576681859673794
	.quad	0x3fe91b6254221227              # double 0.78459278518909492
	.quad	0x3febd9560d73329e              # double 0.87028029086066616
	.quad	0x3fd9cf613d5e1032              # double 0.40328246109880006
	.quad	0x3fed263a59c3fdaf              # double 0.91091649563161592
	.quad	0x3fdff6a55f306970              # double 0.49942907615481769
	.quad	0x3fedf50eb4e172e7              # double 0.93616423919919789
	.quad	0x3fdcbe30f915f204              # double 0.44910835575845476
	.quad	0x3fe7aef382a45e96              # double 0.7401063491442581
	.quad	0x3fcb588b94bede08              # double 0.21363968623130369
	.quad	0x3fec1bfc1be21344              # double 0.87841611333770019
	.quad	0x3fef2a26381fd093              # double 0.97389517747662279
	.quad	0x3feb03c7cce6b31a              # double 0.84421148319015349
	.quad	0x3fb39fa801a39118              # double 0.076654911422853522
	.quad	0x3fc42985419eef14              # double 0.15751710609571801
	.quad	0x3fd9594a4aa492cc              # double 0.39607484139768867
	.quad	0x3fccdde7bcfd68e0              # double 0.22552201011678275
	.quad	0x3feb8a750337ae47              # double 0.86065149906557614
	.quad	0x3feee35a3266c6bd              # double 0.9652529701617919
	.quad	0x3fde7d38da626fcc              # double 0.47639294935811161
	.quad	0x3fc60660c7ee9f2c              # double 0.17206964266119351
	.quad	0x3fd64864d98e37a2              # double 0.34816857572229243
	.quad	0x3fe6a2e37e3c647c              # double 0.70738386779261431
	.quad	0x3fe67f556df2fa2b              # double 0.70304366564216048
	.quad	0x3fe65551f10a723a              # double 0.69791504934580151
	.quad	0x3fcf446a8477e7fc              # double 0.24427539318259039
	.quad	0x3fe5cd2c8c2f34b0              # double 0.68129565601124931
	.quad	0x3fe437a46a7d06ae              # double 0.63179226683151568
	.quad	0x3fc9850799dd9160              # double 0.19937224400485842
	.quad	0x3fd26e304daa5b72              # double 0.28797538361089103
	.quad	0x3fca700816c54818              # double 0.2065439330277179
	.quad	0x3fdcbaff4098a054              # double 0.44891339596006685
	.quad	0x3fd4a691cfb2d418              # double 0.32266660006581693
	.quad	0x3fee27fbd6948520              # double 0.94238082800089628
	.quad	0x3fe64cec1bfdee71              # double 0.69688992945834916
	.quad	0x3fd2c0389682f356              # double 0.29298224161521114
	.quad	0x3fd0385cb4834000              # double 0.25344007137482549
	.quad	0x3fb9bd1393b3b928              # double 0.10054132801062521
	.quad	0x3fe2cf6dd0c8bdd3              # double 0.58782091882852183
	.quad	0x3fe126e544eee298              # double 0.53599799598221676
	.quad	0x3febc2bb7c18e3ce              # double 0.86752104032268007
	.quad	0x3fda3c4239d57258              # double 0.40992789886312186
	.quad	0x3feb7dd0780aee2a              # double 0.85910819478835276
	.quad	0x3fd46b3cd46324a2              # double 0.3190452646345624
	.quad	0x3fe3bf8dd987c09c              # double 0.61713306890853259
	.quad	0x3fe5f41d8ced4e20              # double 0.68604924702453118
	.quad	0x3febd90e74e91405              # double 0.87024615129541927
	.quad	0x3fd61606f41e11c0              # double 0.34509443130107442
	.quad	0x3fea589864d2a239              # double 0.82331485454512354
	.quad	0x3fe36061370afab7              # double 0.60551510572971423
	.quad	0x3feb501aa2526f8b              # double 0.85352832511442622
	.quad	0x3fecc944fd1ff327              # double 0.89956902922094606
	.quad	0x3fe05b8c7564a292              # double 0.51117537430134719
	.quad	0x3fc8a64016216630              # double 0.19257355766858231
	.quad	0x3fd9f97d9e339d20              # double 0.40585270356537428
	.quad	0x3fbac8b1b0100f20              # double 0.10462484882742418
	.quad	0x3fe29bed465f8654              # double 0.5815340399241884
	.quad	0x3fcbe4c9239b08c4              # double 0.2179194854598504
	.quad	0x3fef8f21d90b7b71              # double 0.98622219459126203
	.quad	0x3fe7cdb1b3d8419c              # double 0.74385914922645524
	.quad	0x3fe595f42c2781c5              # double 0.67455490707293875
	.quad	0x3fe60f38959057e6              # double 0.68935803615272273
	.quad	0x3fe0923e608529a0              # double 0.51785200931162834
	.quad	0x3fe2cea938785591              # double 0.58772717503841154
	.quad	0x3fe29e6c5d82c629              # double 0.58183878196559136
	.quad	0x3fd71b25c457c47c              # double 0.36103195356469775
	.quad	0x3fe600541e7408bd              # double 0.68754011104490298
	.quad	0x3fe17c3a527b902a              # double 0.54641452894111819
	.quad	0x3fd9dff0d2a7c572              # double 0.40429325649082337
	.quad	0x3fee4c2308c0c948              # double 0.94679404935440292
	.quad	0x3fad5cc1d430ea20              # double 0.057348305847387815
	.quad	0x3fd7fcbed461111c              # double 0.3748013566985422
	.quad	0x3fe4cd171ce3d786              # double 0.65003543512897077
	.quad	0x3fce97ff58b79cb0              # double 0.23901359397789212
	.quad	0x3fda451d89b45876              # double 0.41046846816732996
	.quad	0x3fb6310a81284e58              # double 0.086685806782321406
	.quad	0x3fe2bdc07c2fcb95              # double 0.58566307311262966
	.quad	0x3fd791af5b527a12              # double 0.36826690595799605
	.quad	0x3fc3a31c7b9780fc              # double 0.15341526064640465
	.quad	0x3fdf79c04951781a              # double 0.49180609855636848
	.quad	0x3fa82812bd5c2160              # double 0.047180734267444846
	.quad	0x3fa09e1a05a65670              # double 0.032456219854037793
	.quad	0x3fe8ccf1f83bee81              # double 0.77501772387718415
	.quad	0x3fe22046e77f4af9              # double 0.56644005979828116
	.quad	0x3fddebda19ed3ea8              # double 0.46752026111514988
	.quad	0x3fb896496f690568              # double 0.0960431954381612
	.quad	0x3fd85c6c9d320ae4              # double 0.38064112998124089
	.quad	0x3fb6a37cf373a7f8              # double 0.088432130276174692
	.quad	0x3fedec316aa24843              # double 0.93508215739189671
	.quad	0x3fe669b8ea2cf6b8              # double 0.7004055570357286
	.quad	0x3fde81f01964cf86              # double 0.47668077926504571
	.quad	0x3fe58cccfee6de0f              # double 0.67343759332192288
	.quad	0x3fdbf3110c4e86e2              # double 0.43671060754614477
	.quad	0x3fb14131cb44bbc8              # double 0.067401039243789929
	.quad	0x3fefc83bdf24cb03              # double 0.99319261152990667
	.quad	0x3fd594d643b30026              # double 0.33720928775074055
	.quad	0x3fc16e4fd19a90b4              # double 0.1361789487319861
	.quad	0x3fe992d010405e3d              # double 0.79917147802456834
	.quad	0x3fd56f02deccd87e              # double 0.33490058667974398
	.quad	0x3fd370501a7d57ae              # double 0.30373003565670842
	.quad	0x3fed5a99923a2724              # double 0.91730955657951485
	.quad	0x3fe897dd6b5ad53d              # double 0.76853819816339064
	.quad	0x3fd189811728ac84              # double 0.27401759397134406
	.quad	0x3fe5dc3f9bd0db25              # double 0.68313579972059257
	.quad	0x3fe253d523e8c469              # double 0.57273346913838197
	.quad	0x3f9c8f72b632bec0              # double 0.027890961046692864
	.quad	0x3fedc34555ff0b61              # double 0.9300867728819463
	.quad	0x3fde2abfabd06c90              # double 0.47135917452551102
	.quad	0x3fc02533384db3a0              # double 0.12613525628276268
	.quad	0x3fdf65359ef75154              # double 0.49055233501464568
	.quad	0x3fdd86db5a9400b4              # double 0.46135600896378581
	.quad	0x3fe63912f9b186c3              # double 0.69446705597166447
	.quad	0x3fd74fca5b44fd8a              # double 0.36424502289806837
	.quad	0x3fe0345917b1cb7c              # double 0.50639013889154638
	.quad	0x3fc3b96700528c18              # double 0.15409553066010129
	.quad	0x3fe4e93b5c20e6f1              # double 0.65347068780758211
	.quad	0x3fe912ef50130e20              # double 0.78356137885606713
	.quad	0x3fbb897152250ef8              # double 0.10756595855223938
	.quad	0x3fe3e9439682da05              # double 0.62222461125094297
	.quad	0x3fe329942f9db639              # double 0.5988255434037405
	.quad	0x3fda2a658cb1a20c              # double 0.40883768787037478
	.quad	0x3fa4c7f76ce06f00              # double 0.04058812336026385
	.quad	0x3fea003d14a8204d              # double 0.8125291255428323
	.quad	0x3fe35730434669ed              # double 0.60439313068064637
	.quad	0x3fd88f5b931307c2              # double 0.38374986040809855
	.quad	0x3feb11cf3652f63d              # double 0.84592400179071314
	.quad	0x3fd0deb4fba6078e              # double 0.26359295439771635
	.quad	0x3fd9cc3ba9423b50              # double 0.40309039620563158
	.quad	0x3fe729cdb2c5aab9              # double 0.72385296741898408
	.quad	0x3fe6fa8953379eaa              # double 0.71808305981990839
	.quad	0x3fe700352c2fc6e0              # double 0.71877535467339371
	.quad	0x3fdbc229856cf0b8              # double 0.43372571973646812
	.quad	0x3fc93a846172e318              # double 0.19709830053559396
	.quad	0x3fe335caac1bb978              # double 0.60031636824514489
	.quad	0x3fe52a8cef8f632b              # double 0.66144415654261957
	.quad	0x3fe926ecb76f67e4              # double 0.78600154711898229
	.quad	0x3fee2710b6e850bf              # double 0.94226871227376552
	.quad	0x3fd33792c600f704              # double 0.30026692711167891
	.quad	0x3f58fbc0e77a9a00              # double 0.0015248664694041958
	.quad	0x3feca33bda597984              # double 0.89492600103749042
	.quad	0x3fe49b3b44b791a6              # double 0.64394915982534395
	.quad	0x3fe10ce84ed7860b              # double 0.53282561682516538
	.quad	0x3fe7791983026e82              # double 0.73353267276566236
	.quad	0x3fdadd3545ff9882              # double 0.41975147090705189
	.quad	0x3fd3f1ecc7f4d558              # double 0.31164092566480894
	.quad	0x3fd679450c7109ce              # double 0.35115171637530984
	.quad	0x3fb8ddc5159bd410              # double 0.097133939529001844
	.quad	0x3fe0d4412e56b8dd              # double 0.52590998697794655
	.quad	0x3f9b62380fd94f80              # double 0.026741863219583717
	.quad	0x3fd4240b6c78949a              # double 0.31469998925087739
	.quad	0x3fb88609bfa620d8              # double 0.095795258797923721
	.quad	0x3fc25917853ea2d8              # double 0.1433438683136703
	.quad	0x3fed3de9147a4548              # double 0.91380743026290023
	.quad	0x3fc72b18d8bc7b04              # double 0.18100271780800636
	.quad	0x3fa0c22bd815fc80              # double 0.03273140919463291
	.quad	0x3fde4cdc8d04764a              # double 0.47344125529511827
	.quad	0x3fe50fb3d79143c8              # double 0.65816681006446576
	.quad	0x3fe6f178d603d196              # double 0.71697656440533097
	.quad	0x3fe7ded1bb9b463d              # double 0.74594961778547708
	.quad	0x3fa81e9d226153e0              # double 0.047108564802932795
	.quad	0x3fe8543198a6b8a6              # double 0.76027755560587162
	.quad	0x3fc52e3e41e57828              # double 0.16547373025508816
	.quad	0x3fd1585f581430d6              # double 0.27101882554485479
	.quad	0x3fe85c72c5f8e968              # double 0.76128519693820085
	.quad	0x3fc11637fa637f1c              # double 0.13349055982598024
	.quad	0x3fd414a5eddde8c2              # double 0.31376026372130295
	.quad	0x3fe6409b90dcc8c4              # double 0.69538667958683975
	.quad	0x3fbdfdee8c53f070              # double 0.11715594221090142
	.quad	0x3fe5769de528dc5f              # double 0.67072958715187869
	.quad	0x3fbbe38c48ef1048              # double 0.10894085674868947
	.quad	0x3fe31ab17dc10d2b              # double 0.59700846253727968
	.quad	0x3fe5c92387109918              # double 0.68080307369089876
	.quad	0x3fe6a6464a245f94              # double 0.70779718857646623
	.quad	0x3fe4e1231d1b2bc1              # double 0.65248256382744085
	.quad	0x3feffbb97e0f27e5              # double 0.99947809811532961
	.quad	0x3fe97daa05f6cbd3              # double 0.79658986248829888
	.quad	0x3fe3082814bc0666              # double 0.594745674607293
	.quad	0x3fd703024c1b4132              # double 0.35955865318557578
	.quad	0x3fd8825fe616c658              # double 0.38295743436456098
	.quad	0x3fed898eab726d82              # double 0.92304166303385693
	.quad	0x3fc28deffa539f74              # double 0.14495658610325857
	.quad	0x3fd376f01f997aec              # double 0.30413439832584177
	.quad	0x3fd08d4f7ca8f21e              # double 0.25862490819761941
	.quad	0x3fe4f9c02542d302              # double 0.65548712995095593
	.quad	0x3fb7c92182a73830              # double 0.092912763974908996
	.quad	0x3fe3744253564e07              # double 0.60794178272993882
	.quad	0x3fd8bde3394bf720              # double 0.38658981891045308
	.quad	0x3fc15af5d74fb844              # double 0.13558838856937616
	.quad	0x3fec4809446fe762              # double 0.88379348150850157
	.quad	0x3fe260d505151848              # double 0.57432032578140824
	.quad	0x3fde1308ddb543f6              # double 0.46991178179911175
	.quad	0x3fc4cd02bb2925bc              # double 0.16250642908771151
	.quad	0x3fc9521c5833e100              # double 0.19781832033891789
	.quad	0x3fed2bd5c2e31b85              # double 0.91160095275778075
	.quad	0x3fef90b971ab74e6              # double 0.98641655160068065
	.quad	0x3fd282e9f6ece0f4              # double 0.28924035180854379
	.quad	0x3fd3dcba067ea61a              # double 0.31034708627939411
	.quad	0x3fec9922d1b307ae              # double 0.89369336087132978
	.quad	0x3febf120e3d8a68d              # double 0.87318462849835188
	.quad	0x3fe3e36078973b4d              # double 0.62150596192246044
	.quad	0x3fe76c262fb374dc              # double 0.73195180241205149
	.quad	0x3fd5a9abf4963f3c              # double 0.33848093877258001
	.quad	0x3f7d8618867dc000              # double 0.0072079618474703011
	.quad	0x3fc2d39e4fd188e0              # double 0.14708308122050706
	.quad	0x3fd1986b54008a86              # double 0.27492793277102867
	.quad	0x3fd83b3d945cea16              # double 0.37861575592583685
	.quad	0x3fd34de38ef0d2f4              # double 0.30162896117262439
	.quad	0x3fd8531435933482              # double 0.38007073623595755
	.quad	0x3fe002b0a5885248              # double 0.50032837229316218
	.quad	0x3fe9b82767ece774              # double 0.80372972772532458
	.quad	0x3fdcc0bdbe127302              # double 0.44926398812985735
	.quad	0x3fdfb7bdeb6ff27a              # double 0.49558971397326668
	.quad	0x3fc40482a993bfb4              # double 0.15638764648565273
	.quad	0x3fe9d8f182df816d              # double 0.8077323490252134
	.quad	0x3f70693c09cb6080              # double 0.0040066094631684424
	.quad	0x3fc8b820cd773e34              # double 0.19311914474973124
	.quad	0x3fd4c0d8df8ba928              # double 0.32427045660610299
	.quad	0x3fe21f55da4c6f63              # double 0.56632511745872838
	.quad	0x3fec2e782ce25a96              # double 0.88067253843731197
	.quad	0x3feb2657c2ef54c9              # double 0.84843051980228623
	.quad	0x3fef9efe89365e0f              # double 0.98815848159114405
	.quad	0x3fb9a1691e9e5fe8              # double 0.10011918065572412
	.quad	0x3fe0175871cce25e              # double 0.50284979082705283
	.quad	0x3fabcd029a4a1d10              # double 0.054298478445213516
	.quad	0x3fe713a93d23150c              # double 0.72115003529384714
	.quad	0x3fdba1bc52a27b46              # double 0.4317465598086766
	.quad	0x3fd7f2e37449a47c              # double 0.37419973713128463
	.quad	0x3fcdf6fddcd147e8              # double 0.23410008699516927
	.quad	0x3f9c64a6c090a860              # double 0.02772770452808293
	.quad	0x3fd5d4419095619a              # double 0.34108008498653819
	.quad	0x3fd13de5b9ba03dc              # double 0.26940291535725946
	.quad	0x3fd3b34829dda448              # double 0.30781749809699877
	.quad	0x3fe6b4bb3c3c581a              # double 0.70956193699635439
	.quad	0x3fe09618d42ec95a              # double 0.51832238618798532
	.quad	0x3fe2dc518599d5cf              # double 0.58939434141091762
	.quad	0x3fe095636e98e33b              # double 0.51823588944453236
	.quad	0x3fe36194afbe4d41              # double 0.60566171955944281
	.quad	0x3fd8c7c3ccae2b5a              # double 0.3871926783401044
	.quad	0x3fdbcad3a9590736              # double 0.43425456560008813
	.quad	0x3fefc95b384a87d3              # double 0.99332962984430606
	.quad	0x3fd7c589daa045be              # double 0.37143179273797589
	.quad	0x3fddc6ac80330f6a              # double 0.46525108832815099
	.quad	0x3fb93ef3366ef198              # double 0.098616791524312908
	.quad	0x3fa5603a1d35bfa0              # double 0.041749778810184823
	.quad	0x3fc211be4ba4cdc0              # double 0.1411664838175124
	.quad	0x3fe15ed22c4be963              # double 0.54282482768693929
	.quad	0x3fda49c3af7a3738              # double 0.41075222145524348
	.quad	0x3feccf8a321f214a              # double 0.90033445157409031
	.quad	0x3fd5d0aaf6748b0c              # double 0.34086107318778214
	.quad	0x3fc772149a7722f4              # double 0.18316896002058736
	.quad	0x3fe27f80ef361dad              # double 0.57806441040968581
	.quad	0x3fcaee65e18af2c0              # double 0.21040032875852965
	.quad	0x3fd32d281e13e522              # double 0.29963114678646907
	.quad	0x3fd43c34f4230558              # double 0.31617473451122668
	.quad	0x3fd8dd6df38ac158              # double 0.38851498397254636
	.quad	0x3fede045b02dd6d5              # double 0.93362697992298627
	.quad	0x3fe5330b08fa2fda              # double 0.66248084786775085
	.quad	0x3fe73261f40636b4              # double 0.72490022335997262
	.quad	0x3fdc750df86af9ee              # double 0.44464444407995429
	.quad	0x3fe64afb5453652b              # double 0.69665304632068137
	.quad	0x3fd44a3fd1ca9bbe              # double 0.31703181731648644
	.quad	0x3fce450696840e70              # double 0.23648149823576459
	.quad	0x3fe8ccb819709474              # double 0.77499012917236465
	.quad	0x3fe1e64a4d00c754              # double 0.55936160125404877
	.quad	0x3fe2d14f958dd9ea              # double 0.5880506440142288
	.quad	0x3fbf689a2e339d20              # double 0.12268985393494747
	.quad	0x3fdb0e2838e91922              # double 0.42273908193273446
	.quad	0x3fe42a6657813b7a              # double 0.63017575350555366
	.quad	0x3fc78dbc743011d0              # double 0.18401294396620793
	.quad	0x3fc60419493d0614              # double 0.17200008464901428
	.quad	0x3fed48e5ad8f591a              # double 0.91514858148983369
	.quad	0x3fc9627d3e38d7f4              # double 0.19831815279184151
	.quad	0x3fbf61567746b518              # double 0.12257900630966778
	.quad	0x3fc9a27cc97c89c8              # double 0.20027122343260673
	.quad	0x3fe3632edd2780d6              # double 0.60585730737877941
	.quad	0x3fbba1537daf6838              # double 0.10793039148794115
	.quad	0x3fe31c33773a056b              # double 0.59719250952200065
	.quad	0x3fdf189558338e6a              # double 0.48587545026223344
	.quad	0x3fc0d31823c579e8              # double 0.13144208666467638
	.quad	0x3fbba023200eaf70              # double 0.10791224987650394
	.quad	0x3fe57a6e1ed13209              # double 0.67119508761385405
	.quad	0x3fcf60c72dbd9a24              # double 0.24514093144826277
	.quad	0x3fe938d41ca111c4              # double 0.78818708030353734
	.quad	0x3fc7d06e791d9958              # double 0.18604832567070662
	.quad	0x3fb6248d15a1bf00              # double 0.086495225697714062
	.quad	0x3fefa064bf7dae16              # double 0.98832929039548634
	.quad	0x3feb6b4dd2f5758a              # double 0.85684863284011326
	.quad	0x3fe7dcf9a468a5af              # double 0.74572450743760565
	.quad	0x3fe51a9b9dbe9ab4              # double 0.65949803170663879
	.quad	0x3fecd8a56f53d04b              # double 0.9014460729945396
	.quad	0x3fd25d584bcb7796              # double 0.28694732095561315
	.quad	0x3fc415739743dc58              # double 0.15690464864721565
	.quad	0x3fdeb730ac84ca1c              # double 0.47993103835611506
	.quad	0x3feb41b6fcde2911              # double 0.85177182567830034
	.quad	0x3fe04238d5cba327              # double 0.50808374173093263
	.quad	0x3fc806cd58c8a2ec              # double 0.1877075847162567
	.quad	0x3fccce0bf3fb78cc              # double 0.22503804600905253
	.quad	0x3fe92020203653ae              # double 0.78517156878898731
	.quad	0x3fe3ff8e9ce8a253              # double 0.62494593282924382
	.quad	0x3fea37eb19d4ce7d              # double 0.81932597203417823
	.quad	0x3fefc6e3b859b5be              # double 0.99302850728934522
	.quad	0x3fdeac027d14aabe              # double 0.479248640202666
	.quad	0x3fe59eb7e97c06f0              # double 0.67562480547368686
	.quad	0x3fe4c504af005e63              # double 0.64905008487671656
	.quad	0x3fe58eac1e926d93              # double 0.67366605731096951
	.quad	0x3fd497ef0c60ed84              # double 0.32177330216264743
	.quad	0x3fe6232900def3fc              # double 0.69179201288318337
	.quad	0x3f70089a612a8000              # double 0.0039144545031888356
	.quad	0x3fe457cc3ab778eb              # double 0.63571750133612903
	.quad	0x3fd9981c4d7b05a4              # double 0.39990909162960464
	.quad	0x3fa1502753769e40              # double 0.033814648569486128
	.quad	0x3fb73cea36745f50              # double 0.090773237509322202
	.quad	0x3fd43916918674c2              # double 0.31598438464591194
	.quad	0x3feb7afa14e7609a              # double 0.85876182635094556
	.quad	0x3fa744ef6e6171f0              # double 0.045447809433173947
	.quad	0x3fddc28d3006422c              # double 0.46499948205840513
	.quad	0x3fdd5bf4971a3de8              # double 0.45873751407722674
	.quad	0x3fdf5ddb0c91e3f0              # double 0.49010349490669025
	.quad	0x3fef8d4d30318089              # double 0.98599872029082391
	.quad	0x3fe1c9887b85d031              # double 0.5558512127449885
	.quad	0x3fe1b920a346b086              # double 0.55384857072705596
	.quad	0x3fda0ca5e4a13c0c              # double 0.40702197386866668
	.quad	0x3fe4a697965d1bbc              # double 0.64533595436011337
	.quad	0x3fe05bf6b1a850f7              # double 0.51122603129127142
	.quad	0x3fe5cb1af2931caf              # double 0.6810431230341204
	.quad	0x3fe32c6ad4ff5695              # double 0.59917203522737117
	.quad	0x3fef241e865baf39              # double 0.97315908662628836
	.quad	0x3feb01e9594aa358              # double 0.84398333968884298
	.quad	0x3fe8781174a7cf20              # double 0.76465676101949853
	.quad	0x3fe872bcc30abbc5              # double 0.76400602430464259
	.quad	0x3fd94515761b9c28              # double 0.39484154256791948
	.quad	0x3fed4c67e7c0fe03              # double 0.9155768896525277
	.quad	0x3fc04e04cd187338              # double 0.12738094343594653
	.quad	0x3fe2887707154a74              # double 0.57915831931525341
	.quad	0x3fec9d5fcc681eee              # double 0.89421071932971841
	.quad	0x3feeac3c242e0035              # double 0.95852477136941749
	.quad	0x3fedd8e5d142a749              # double 0.93272677298703244
	.quad	0x3fe7f17058ad418c              # double 0.7482225162475955
	.quad	0x3fe9009c258f03bf              # double 0.78132445655511862
	.quad	0x3fcf81ac4faeffc0              # double 0.2461448086814908
	.quad	0x3fa2977cf9803d10              # double 0.036312013107926089
	.quad	0x3fa1fee56bdad340              # double 0.035147828498713896
	.quad	0x3fcba61af686265c              # double 0.21600663220697214
	.quad	0x3fe5b7fa5f200f75              # double 0.67870825366160992
	.quad	0x3fceb06d90c4d2c0              # double 0.2397591549758058
	.quad	0x3fd87da3e7300bf0              # double 0.38266847206995092
	.quad	0x3fe43f8d2e5aad2c              # double 0.63275775006824153
	.quad	0x3fef6c4b0474e75a              # double 0.98196936483803232
	.quad	0x3fdc17124876f8da              # double 0.43890816761621709
	.quad	0x3fe6332338cf89ad              # double 0.69374238105620167
	.quad	0x3fbec511fa3b8de8              # double 0.12019455298609893
	.quad	0x3feba9c317af2141              # double 0.86447291017342576
	.quad	0x3fe62116aceb3690              # double 0.69153913281634694
	.quad	0x3fc5a3c894d18108              # double 0.16906077639124129
	.quad	0x3fed4d100770c95f              # double 0.91565705731617786
	.quad	0x3fa1486148bca450              # double 0.033755340699209158
	.quad	0x3fe679995e06cfb7              # double 0.70234363903590846
	.quad	0x3fd9bb801db4057e              # double 0.4020691194601439
	.quad	0x3fee395da923c3dd              # double 0.9445026687154684
	.quad	0x3fd9dfeb48163ffc              # double 0.40429193534600905
	.quad	0x3fecdf008c2cae06              # double 0.90222194078290907
	.quad	0x3fe635d31b5d7adb              # double 0.69407039017445571
	.quad	0x3fc4a0f763d84cf4              # double 0.16116230368843498
	.quad	0x3fe8566be73d5690              # double 0.76054949916825088
	.quad	0x3fe1f2395c326da8              # double 0.56081836707328581
	.quad	0x3fe7f034a2146480              # double 0.74807197242911627
	.quad	0x3fefc35f82869755              # double 0.99259925359067813
	.quad	0x3fe6655d40d92ad6              # double 0.69987356820760271
	.quad	0x3fdf2e7044bf65a0              # double 0.48720938409459258
	.quad	0x3fd5f07bf39eac3c              # double 0.34280298987386337
	.quad	0x3fd0cee69bd48e50              # double 0.26262822358896631
	.quad	0x3fe044af13a9f783              # double 0.50838426437961493
	.quad	0x3fd7da6309aba012              # double 0.37270427650810334
	.quad	0x3fe518d219ee4b91              # double 0.65927987160317703
	.quad	0x3fe56fca63c39e76              # double 0.66989631161864227
	.quad	0x3fe8a744aed7f03d              # double 0.77041849278567265
	.quad	0x3fe4a29e7c2bff8b              # double 0.64485096218412374
	.quad	0x3fe0fd806eb26ff1              # double 0.53094503040801844
	.quad	0x3fc736224a13681c              # double 0.18133953682883053
	.quad	0x3fe7e5efb12d7512              # double 0.74681839566224739
	.quad	0x3fe0a60148926100              # double 0.52026428388765567
	.quad	0x3fdbf73cc928977a              # double 0.43696517605200536
	.quad	0x3fe30c209b9a962a              # double 0.59523039237382602
	.quad	0x3fd0cb547e3010b8              # double 0.2624102814008995
	.quad	0x3fe0be59812e2914              # double 0.52323603849916589
	.quad	0x3fe20dd957099e6d              # double 0.56419054984594441
	.quad	0x3fe686d1cb701c90              # double 0.70395745977374879
	.quad	0x3fe649cf138e72ac              # double 0.69650987453095103
	.quad	0x3fc8ec1ce334814c              # double 0.1947055920982258
	.quad	0x3fdedb485e788070              # double 0.48213395333914999
	.quad	0x3fd073be172c80e8              # double 0.25706436408110145
	.quad	0x3fed7ba17fa2ccc9              # double 0.92134165696043013
	.quad	0x3f9797733524fe20              # double 0.023038673514063857
	.quad	0x3fda7d42c11c036a              # double 0.41389531000463953
	.quad	0x3fe215255372338f              # double 0.56508127496782545
	.quad	0x3fd5bde008ed2b5a              # double 0.33971405860636639
	.quad	0x3fd5be919b151b46              # double 0.33975639481325393
	.quad	0x3fe7f9621beacdb8              # double 0.7491922898538439
	.quad	0x3fd49a0621e89944              # double 0.32190087615380869
	.quad	0x3fd28c6c0ef3cb34              # double 0.28982068500697555
	.quad	0x3fefb46b5a86623b              # double 0.99077384644176136
	.quad	0x3fd1fb609316de68              # double 0.28096784938995834
	.quad	0x3fe37d2298b8149b              # double 0.60902528598730343
	.quad	0x3facfcd670fa0f60              # double 0.056616498271096161
	.quad	0x3fe92ecb2b26d886              # double 0.78696211269449701
	.quad	0x3fb2280d6be2f650              # double 0.070923651542181831
	.quad	0x3fd004bdaf1698d2              # double 0.25028936480010799
	.quad	0x3fee5e052373243b              # double 0.9489770595911361
	.quad	0x3fec749e685125dc              # double 0.8892356908265202
	.quad	0x3fea568f34a77f26              # double 0.8230663326648695
	.quad	0x3fedf88905d9b848              # double 0.93658877508801996
	.quad	0x3fe1ee680771c30f              # double 0.56035233930569628
	.quad	0x3fe9f5918bb81c1f              # double 0.81122662819769065
	.quad	0x3fec90b95b9e1500              # double 0.89266651052517432
	.quad	0x3fc5bd981f96b4bc              # double 0.16984845678726923
	.quad	0x3fd31dc3f165520c              # double 0.2986917359715171
	.quad	0x3fee06821b966149              # double 0.93829446209114409
	.quad	0x3fedc9803200eb6f              # double 0.93084726110769889
	.quad	0x3fb470b303e3a548              # double 0.07984465451194922
	.quad	0x3fc2823cca6e2664              # double 0.1445995319775647
	.quad	0x3fceea66909a48bc              # double 0.24152833996465073
	.quad	0x3fed65471d680bfb              # double 0.91861301177448185
	.quad	0x3fe832e43d5a09b2              # double 0.75621234877353616
	.quad	0x3fd1a47cbb4d6de4              # double 0.27566450396781605
	.quad	0x3fd9390bcd6d4ba2              # double 0.39410681782936241
	.quad	0x3fa2f50feeb75cc0              # double 0.037025926485222183
	.quad	0x3fde83bf9b1a9b7a              # double 0.47679128786915437
	.quad	0x3f89c99797cd28c0              # double 0.012591537780867745
	.quad	0x3fd2009eeb49a182              # double 0.2812878892641707
	.quad	0x3fd52bb261ac53ba              # double 0.330792041191042
	.quad	0x3fdac811f4270bcc              # double 0.41846131175060175
	.quad	0x3feee2851734061a              # double 0.96515135318640266
	.quad	0x3fbc2a1cdb0822d8              # double 0.11001758906798942
	.quad	0x3fec37bbab930b60              # double 0.88180335531829356
	.quad	0x3fe862341ced8975              # double 0.76198774003959946
	.quad	0x3fa04bc9ba243d30              # double 0.031828216526373132
	.quad	0x3fa9f8e32ded02c0              # double 0.050726985317401496
	.quad	0x3fe48e3c47560cd0              # double 0.64236272747839429
	.quad	0x3feecf549b953678              # double 0.96280889880445297
	.quad	0x3fe4a642e17c9e31              # double 0.6452955631293148
	.quad	0x3fd91918e2d956a2              # double 0.39215681222172283
	.quad	0x3fc1ab55f36ec294              # double 0.13804125200615103
	.quad	0x3fd5f1b9c7f62998              # double 0.34287876632211001
	.quad	0x3fc6b80af1ef00dc              # double 0.17749153912701032
	.quad	0x3fe655ed5c9e9a17              # double 0.69798915948632867
	.quad	0x3fe09f7f694185fa              # double 0.51946993406107755
	.quad	0x3fc6a3acee4e2a78              # double 0.17686998020174705
	.quad	0x3fe29d86ce4388ce              # double 0.58172931943797734
	.quad	0x3fe25066a4ad6818              # double 0.57231456912564038
	.quad	0x3fc40b325c508974              # double 0.15659169681118679
	.quad	0x3fc74c559dfd4d8c              # double 0.18201704229668925
	.quad	0x3fe673e8f8cc051e              # double 0.70164917557864093
	.quad	0x3fec8af85afff3d1              # double 0.89196412824059668
	.quad	0x3fe96a0c4b0f8f04              # double 0.79419531498248874
	.quad	0x3fead807abeb4232              # double 0.83887084558415936
	.quad	0x3feb2fb1554dff10              # double 0.84957186375683769
	.quad	0x3fded835a11495ae              # double 0.48194637995251355
	.quad	0x3fd15050fb4f65ba              # double 0.2705271200371403
	.quad	0x3fefdc03b1326d52              # double 0.99560722931657097
	.quad	0x3fe5226d2ce456d7              # double 0.66045244949301718
	.quad	0x3fe704588d4b7fec              # double 0.7192805061022205
	.quad	0x3fdefe9be645200e              # double 0.48429009902292897
	.quad	0x3fee3fc42bac1043              # double 0.94528397111617612
	.quad	0x3fd454f2f1e4bca8              # double 0.3176848757020232
	.quad	0x3fe7dd92d6468c68              # double 0.74579755640696721
	.quad	0x3fd59d18f4c04a6e              # double 0.33771346951940628
	.quad	0x3fe0cb0e461964c4              # double 0.52478707972763816
	.quad	0x3feddce31ed11d93              # double 0.93321376818578228
	.quad	0x3fee3dd1b4822eff              # double 0.94504628425190151
	.quad	0x3fc495943fb4fb10              # double 0.16081479178134162
	.quad	0x3fcac5151fccc150              # double 0.20913948109365288
	.quad	0x3fea25aeadac9f62              # double 0.8170998947216328
	.quad	0x3fedb8f2e6f05214              # double 0.9288267622492321
	.quad	0x3fdf4453ca70d486              # double 0.48854536790469927
	.quad	0x3f93faccd2624fe0              # double 0.01951141389925215
	.quad	0x3fe9965b65ca259c              # double 0.79960412865436891
	.quad	0x3feee70490df12fc              # double 0.96570041938011241
	.quad	0x3fe91d66cfd08174              # double 0.78483906353726107
	.quad	0x3fe7c7521df2bb23              # double 0.74308114861728247
	.quad	0x3fea3d931de07c6a              # double 0.82001643977481575
	.quad	0x3fb1b0d7f7e2a410              # double 0.069104669588924361
	.quad	0x3fcad5c89d4d16d8              # double 0.20964915924758176
	.quad	0x3fe1bd7ab9456fa6              # double 0.5543798082903677
	.quad	0x3fe292a78f0eec92              # double 0.5804021638972634
	.quad	0x3fdfcb213bd50cb0              # double 0.49677306025496204
	.quad	0x3fe8c3c2e34c8201              # double 0.77389664072330799
	.quad	0x3f867d34da510c80              # double 0.010980999863141827
	.quad	0x3fe5d8b81ce0dbb0              # double 0.68270497932723195
	.quad	0x3fe278152d5a834b              # double 0.57715853555792174
	.quad	0x3fe9dfd9da5b0bf0              # double 0.80857556006992404
	.quad	0x3fc5011334212f58              # double 0.16409530682937645
	.quad	0x3feb349e4116dd27              # double 0.85017311775928739
	.quad	0x3fe419a96cf1ab52              # double 0.62813254621628745
	.quad	0x3f88b5944075d040              # double 0.012065084664506398
	.quad	0x3fc2d7b9b0157180              # double 0.1472084150108337
	.quad	0x3faa230da0646b30              # double 0.051048684910901421
	.quad	0x3febf5d17adbda7a              # double 0.87375711437091685
	.quad	0x3fc8277acaf383dc              # double 0.18870482358673157
	.quad	0x3fe338c2e5e03104              # double 0.60067887208563819
	.quad	0x3fe0b622e170da94              # double 0.5222334292546571
	.quad	0x3fbfc8e2db9a9d88              # double 0.12415902959275205
	.quad	0x3fe754d8b701eadc              # double 0.72910724395418525
	.quad	0x3fd5935f63a5c5aa              # double 0.33711991053777501
	.quad	0x3fe3e9d0964b575c              # double 0.62229184488635836
	.quad	0x3fc95512e3f09b50              # double 0.19790874605061015
	.quad	0x3fe38c431d3dd337              # double 0.61087184630614544
	.quad	0x3fc29909aeb54a50              # double 0.14529534369156005
	.quad	0x3fe8fe79b60b181c              # double 0.7810638957532805
	.quad	0x3fc31140c8cb1690              # double 0.14896402172432888
	.quad	0x3fd251d581629eea              # double 0.28624475131299099
	.quad	0x3fefcdc9230005a2              # double 0.99387032352403915
	.quad	0x3feddce1e4a6fb15              # double 0.93321318300863487
	.quad	0x3fc2de2c9e091fe4              # double 0.14740522114357113
	.quad	0x3faee24533dac6a0              # double 0.060320055560976416
	.quad	0x3fd126b4a4e2ac3c              # double 0.26798740484327133
	.quad	0x3fd1bf4d2e00e9c4              # double 0.27730111591850126
	.quad	0x3fe2d6cb3ef9e8a2              # double 0.58871996212043975
	.quad	0x3fc25a2238553f88              # double 0.14337566137919233
	.quad	0x3fec3e71f9cee0d4              # double 0.88262270727775637
	.quad	0x3fde1842356ba29e              # double 0.47023062912789182
	.quad	0x3fe7c092b6db7162              # double 0.74225745882317207
	.quad	0x3fe04816b9e131e5              # double 0.50879989914534163
	.quad	0x3fe208366a639fac              # double 0.56350250987178674
	.quad	0x3fbaa4c32d638d48              # double 0.10407657487990207
	.quad	0x3fc96bb8f02d6f04              # double 0.19859992721000463
	.quad	0x3feb3c1b2ee69a65              # double 0.85108718071280676
	.quad	0x3fd8e09c77c46252              # double 0.38870917984016728
	.quad	0x3fe4c76cc6a03b9f              # double 0.64934386057017324
	.quad	0x3fe88aad82d93a63              # double 0.76692843967778079
	.quad	0x3f9529a0aa5ebea0              # double 0.02066660919052643
	.quad	0x3fef70d2b6cfb24e              # double 0.98252235131583077
	.quad	0x3fd98d647fc9de2e              # double 0.39925491790151824
	.quad	0x3feabb85189d551f              # double 0.83539061362776923
	.quad	0x3fea0645704953eb              # double 0.81326553278870273
	.quad	0x3fe3a9527012be7b              # double 0.61441919221211039
	.quad	0x3fe16ac4abeba336              # double 0.5442832334348171
	.quad	0x3fdb5896a87c92ea              # double 0.42728201345225492
	.quad	0x3fdc9f161b3168f4              # double 0.44720986037795218
	.quad	0x3fd7185b9c433ee6              # double 0.3608616853716583
	.quad	0x3fe91ed90b154a35              # double 0.78501560368233092
	.quad	0x3fe24f02422e87e4              # double 0.57214463163495255
	.quad	0x3fe227335e0aa3ed              # double 0.56728523604863101
	.quad	0x3faaa5bd52f44da0              # double 0.052045742393740158
	.quad	0x3fd5971e06394332              # double 0.33734846694737819
	.quad	0x3fc477021269adbc              # double 0.15988183878958562
	.quad	0x3fed50689b0c4b38              # double 0.91606550486390059
	.quad	0x3fea7cc98088c901              # double 0.82773280243262104
	.quad	0x3fe725020b195166              # double 0.72326757591012547
	.quad	0x3fe4c114d8e23739              # double 0.64856951103295224
	.quad	0x3fd6aaa3f81da42a              # double 0.35416506986672636
	.quad	0x3fcf25b951ef08bc              # double 0.2433387422625567
	.quad	0x3fc9328cf4110988              # double 0.19685518185913176
	.quad	0x3fd9b081b49f1646              # double 0.40139811171352269
	.quad	0x3fd29359eb1c0d82              # double 0.29024360618515044
	.quad	0x3fe4b45c51b2e8af              # double 0.6470166774445455
	.quad	0x3fe9183f73bcb8c8              # double 0.78420994381829079
	.quad	0x3fce53af30cdf30c              # double 0.23692884333640796
	.quad	0x3fe4ba3d3776439c              # double 0.64773426849761817
	.quad	0x3fe9b2f92fe75b44              # double 0.80309733730505472
	.quad	0x3fdca30fbf1e560a              # double 0.44745248474041033
	.quad	0x3fedaebe28ccb37b              # double 0.92758090943026106
	.quad	0x3f8759a2b1044d80              # double 0.011401434924244169
	.quad	0x3fe472aa8a6cebce              # double 0.63899733577943052
	.quad	0x3fcf05f0357684cc              # double 0.24236872301574974
	.quad	0x3fa86ac7b8fa9340              # double 0.047689668016835274
	.quad	0x3fd6b77b14a06dce              # double 0.35494877828906801
	.quad	0x3fd3e094ce76d448              # double 0.3105823532344556
	.quad	0x3fead870f57154bd              # double 0.83892105043437193
	.quad	0x3fbb322d2e028c08              # double 0.10623438237466598
	.quad	0x3fcbe73f2d36b588              # double 0.21799459178638991
	.quad	0x3fe2ca9fcdb915bd              # double 0.58723440342207989
	.quad	0x3fe3b6ce3e5e439a              # double 0.61606514149945046
	.quad	0x3fe2a84cd9396296              # double 0.58304445673555239
	.quad	0x3fe379aa6ee5e535              # double 0.6086017766930697
	.quad	0x3f3dba7dc399f800              # double 4.5362062846965312E-4
	.quad	0x3fe481e92fd2fe63              # double 0.64085826244986455
	.quad	0x3fd9ad30f98d2e2e              # double 0.40119575853597922
	.quad	0x3fa74c8fe1491240              # double 0.045505996943152827
	.quad	0x3fe1c7a62dc6c02a              # double 0.55562123242089467
	.quad	0x3fee1c4004b522b1              # double 0.94094849509663991
	.quad	0x3fd99803be04cb78              # double 0.39990323597446986
	.quad	0x3fee20396db4d567              # double 0.94143363406207647
	.quad	0x3fbef7826bb8f140              # double 0.12096419458334129
	.quad	0x3fc6f83348856c10              # double 0.1794494728190732
	.quad	0x3fd59f45697d7208              # double 0.33784613897094617
	.quad	0x3fe504628dd86c45              # double 0.656785275499154
	.quad	0x3fe0cae22842d6e9              # double 0.52476604331488119
	.quad	0x3fc18c19c980afe8              # double 0.13708803500173805
	.quad	0x3fd2c2273626d0ac              # double 0.29310016906971259
	.quad	0x3fe5bcd56e5fcbe7              # double 0.67930099065267491
	.quad	0x3fe9076592264652              # double 0.78215292496515532
	.quad	0x3fa4533c34f3f4a0              # double 0.039697534049971894
	.quad	0x3fe5ad01767d6f18              # double 0.67736886160443799
	.quad	0x3fea75dbf2de0e5e              # double 0.82688710627594353
	.quad	0x3fef15761e510a4f              # double 0.971369799816168
	.quad	0x3fe03d6593a5b176              # double 0.5074947246298922
	.quad	0x3fcff6a5d872d6cc              # double 0.24971459454325495
	.quad	0x3fe06f84a9796ec0              # double 0.51361306286295161
	.quad	0x3fc07d41cc7e9c20              # double 0.12882254109465041
	.quad	0x3fea771655eca81a              # double 0.82703701765172188
	.quad	0x3fe0f83429b976e4              # double 0.53029831075010891
	.quad	0x3fe6e6141750f9f7              # double 0.71558575204818353
	.quad	0x3fe9604ed78c276f              # double 0.79300634478680176
	.quad	0x3fd4c67d2a8a9294              # double 0.3246148028795599
	.quad	0x3feb1c1b918422d2              # double 0.84718111439823418
	.quad	0x3fe8cbfb1a04ed32              # double 0.77490000802882819
	.quad	0x3feaf7a1b335410a              # double 0.84272847177092669
	.quad	0x3fe0c82dd0306c55              # double 0.52443590795463513
	.quad	0x3fe7e5b6e432552c              # double 0.7467913109746056
	.quad	0x3fe0c3bcb8c953f5              # double 0.52389370051480333
	.quad	0x3fe36ae2b5a3e635              # double 0.60679755665404989
	.quad	0x3fe2c89ee172694b              # double 0.58698982269860644
	.quad	0x3fe70c1895a88a1b              # double 0.72022656660221018
	.quad	0x3fde9c9bdc8c5198              # double 0.47830864465620371
	.quad	0x3feff8378c250c9a              # double 0.99904992458359065
	.quad	0x3fe1c596adf5063b              # double 0.55536970115662798
	.quad	0x3fcb4cc3d07688f8              # double 0.21328017882212413
	.quad	0x3fbd508c787609f0              # double 0.11451032582230147
	.quad	0x3fc0c36d19b3ad54              # double 0.13096393351529889
	.quad	0x3f81caaf8da66400              # double 0.0086873736479891051
	.quad	0x3fd960479b57ced6              # double 0.39650144739355875
	.quad	0x3fea9adea1ae70ab              # double 0.83140498712920896
	.quad	0x3fed316b199e4d4b              # double 0.91228251460635457
	.quad	0x3fea578cbc6d292f              # double 0.82318722536118638
	.quad	0x3f967c88c070e920              # double 0.021959435220403667
	.quad	0x3fd2ae8a4373b682              # double 0.29190308177098967
	.quad	0x3fb01c5b136cee48              # double 0.062932674639278763
	.quad	0x3fe87c945c7b6d9c              # double 0.76520746291082586
	.quad	0x3fe7f4b8839c00a6              # double 0.74862313942869174
	.quad	0x3fdc39f95c1f6d1a              # double 0.44103845592845092
	.quad	0x3fddb563d114fa04              # double 0.46419616144331166
	.quad	0x3fd59ec18c4c065c              # double 0.33781470013500381
	.quad	0x3fbf8d8530ac3c08              # double 0.12325317800808488
	.quad	0x3fd04a13d962e298              # double 0.25452133397224364
	.quad	0x3fec3ca709ca4cbc              # double 0.88240386879115062
	.quad	0x3fd5e0316bb4e02a              # double 0.34180865781991321
	.quad	0x3f89c3853e7ebbc0              # double 0.012579956979463236
	.quad	0x3fe71e91714d84c3              # double 0.72248146180586337
	.quad	0x3fd16fec0fb04ac2              # double 0.27245618373960323
	.quad	0x3fd4f8b0b2747c14              # double 0.32767884661910895
	.quad	0x3fb957536e0dcab0              # double 0.098988737457868181
	.quad	0x3feb486778dff55a              # double 0.85258840187422469
	.quad	0x3fe91c1a16a82566              # double 0.78468040871773037
	.quad	0x3fce9a42b67230b8              # double 0.2390826598024256
	.quad	0x3fb9409f1bff6790              # double 0.098642296157235742
	.quad	0x3fd31e69c1b437b6              # double 0.29873126903919045
	.quad	0x3fdfd9c58d358e08              # double 0.49766672887764729
	.quad	0x3fd69a1ce70bf4de              # double 0.35315630496172712
	.quad	0x3fe6d8e9ade8b68f              # double 0.71397861448868294
	.quad	0x3fd79da301d8e350              # double 0.36899638347999986
	.quad	0x3fed9bb06bb78dc0              # double 0.92525502241590373
	.quad	0x3fca0c1debaad704              # double 0.20349477774805547
	.quad	0x3fd4da3c7b777c68              # double 0.32582008416461017
	.quad	0x3fd142c8ad58bfce              # double 0.26970116546999356
	.quad	0x3fca70a4715e2d30              # double 0.20656257186451787
	.quad	0x3fdb232c80ec3c6a              # double 0.42402184095494155
	.quad	0x3fe67f3a62cbf20d              # double 0.7030307702657993
	.quad	0x3fe5524cd58a6a99              # double 0.66629640299955206
	.quad	0x3fd76aa9f204d328              # double 0.36588524469998385
	.quad	0x3fc36ba320b843c4              # double 0.15172232720990853
	.quad	0x3fb375283c096430              # double 0.076006426484483524
	.quad	0x3feb91debb37f3cd              # double 0.8615564018833709
	.quad	0x3fdc8d6d7b6929ec              # double 0.44613205959163227
	.quad	0x3fb3ad41e8b6a900              # double 0.076862448992560672
	.quad	0x3fe9b30cc5240258              # double 0.80310667518649392
	.quad	0x3fc11b14f98f46c4              # double 0.13363897500544486
	.quad	0x3fcf23e3cd57658c              # double 0.24328277136264054
	.quad	0x3fd6ccaa93992c2e              # double 0.35624184049510432
	.quad	0x3fdc1bd58c8085a8              # double 0.43919886322881974
	.quad	0x3fe8f0339697b9f3              # double 0.77932147419579534
	.quad	0x3fe669bcafbdc7b1              # double 0.70040735554197486
	.quad	0x3feec08bfd7a028a              # double 0.96100425250195198
	.quad	0x3fdb58272462c512              # double 0.42725542596152011
	.quad	0x3fd0978e72d29fd6              # double 0.25925027096900288
	.quad	0x3fe08b2dc2394300              # double 0.51698959287941193
	.quad	0x3fde7df174d9d658              # double 0.47643696223471954
	.quad	0x3fd9af4624309e1c              # double 0.40132287534876965
	.quad	0x3fef1536464fb580              # double 0.97133935673416261
	.quad	0x3fdcf403da6c8cd8              # double 0.45239349680396179
	.quad	0x3fc5809d89a7e510              # double 0.16798752995945465
	.quad	0x3fead6685ec061a8              # double 0.83867281442785657
	.quad	0x3fec236d33a5c3e5              # double 0.87932453238874742
	.quad	0x3fe968b4b0696431              # double 0.79403147178084599
	.quad	0x3fd5695f256b6c80              # double 0.33455637602100552
	.quad	0x3fe09623da3c68d7              # double 0.51832764267171683
	.quad	0x3fc1eb49ecc85ec8              # double 0.13999294339804735
	.quad	0x3fe3bf6523fa4122              # double 0.61711365725389933
	.quad	0x3f758af950244000              # double 0.0052594889441621717
	.quad	0x3fb404cc95d88ff0              # double 0.078198229392512308
	.quad	0x3fd8607feab6c546              # double 0.38088987275394393
	.quad	0x3fd7aa7bf19b3822              # double 0.36978052706115438
	.quad	0x3fe229857b6de695              # double 0.56756853205952729
	.quad	0x3fe5c73186b27608              # double 0.68056560810117706
	.quad	0x3fec069d34b192e4              # double 0.87580738345840503
	.quad	0x3fd6b9f50f24313c              # double 0.3550999305596354
	.quad	0x3fb0915088e6c950              # double 0.064717324660511055
	.quad	0x3fe54e069f035b4f              # double 0.66577464158295097
	.quad	0x3fa1dccb35013100              # double 0.034887647838873548
	.quad	0x3fec4db76b311fda              # double 0.88448687492290934
	.quad	0x3fe0ca791ecb19ac              # double 0.52471595777824609
	.quad	0x3fbe52bc71416768              # double 0.11844995274569003
	.quad	0x3fe97e900399572e              # double 0.79669953062941601
	.quad	0x3fee2ae3ea906543              # double 0.94273563206949296
	.quad	0x3fb7fb9d18430f20              # double 0.093683069632842563
	.quad	0x3fb33e8048506f88              # double 0.075172441153368408
	.quad	0x3fed2ff4c7373535              # double 0.91210402402217616
	.quad	0x3fe099c96e8b3a60              # double 0.51877280798528247
	.quad	0x3fe3f39fce47e01d              # double 0.62348928727351771
	.quad	0x3fe6b86761963308              # double 0.71001023349671843
	.quad	0x3fd4323797d8e448              # double 0.31556501225310685
	.quad	0x3fed61160ff1978a              # double 0.91810134042747049
	.quad	0x3fea85eb582c761f              # double 0.82884757253095021
	.quad	0x3fee15cdbcbf5371              # double 0.94016157974929915
	.quad	0x3fcdc548f6babdf0              # double 0.23258316085183095
	.quad	0x3fc2e5d89567a514              # double 0.14763934416922864
	.quad	0x3fa99a30e1198550              # double 0.050004508474340015
	.quad	0x3fe76673bb66e57b              # double 0.73125635721150617
	.quad	0x3feb2e3f40d0d264              # double 0.84939539584463519
	.quad	0x3feab386a8787a34              # double 0.83441479591767242
	.quad	0x3fe67f6e13faabfe              # double 0.70305541898903789
	.quad	0x3fe6b7c7ac8f6bc2              # double 0.70993407920047269
	.quad	0x3fd66ed911e75ed0              # double 0.35051562069336928
	.quad	0x3fd5c147de641654              # double 0.33992191999309296
	.quad	0x3fee144e640f6817              # double 0.93997878592495254
	.quad	0x3fd9bbf567dc85ce              # double 0.40209708349911188
	.quad	0x3fee9e8905b9f9d4              # double 0.95685244673205227
	.quad	0x3fdb1dd543692800              # double 0.42369586546976734
	.quad	0x3fe82705fba499a8              # double 0.75476359509484769
	.quad	0x3fcda5c5ba509a38              # double 0.23162147138028089
	.quad	0x3fec230b117c485e              # double 0.87927773871548331
	.quad	0x3fd217a4ad894bf6              # double 0.28269307085901063
	.quad	0x3fd5fe79465c7a02              # double 0.3436568438645794
	.quad	0x3fc55fe833028544              # double 0.16698935023036132
	.quad	0x3fe6c02553c69bdd              # double 0.71095529901947041
	.quad	0x3fefc6f5c1f4a22b              # double 0.99303710824921631
	.quad	0x3fc9c2852fe2693c              # double 0.2012487872896801
	.quad	0x3fe7d86be8cf41db              # double 0.74516864271759731
	.quad	0x3fd2f510703675f2              # double 0.29620753248477094
	.quad	0x3fe6a4fe2e098a3a              # double 0.70764073363927271
	.quad	0x3fd5b4861513eede              # double 0.33914329584488978
	.quad	0x3fe4b469845ee882              # double 0.64702297071131931
	.quad	0x3fc289c4d07b051c              # double 0.14482937030519671
	.quad	0x3fe1900cf889968d              # double 0.54883430998298055
	.quad	0x3feaec87bcf7c445              # double 0.84137331874638532
	.quad	0x3fe979db676f767d              # double 0.79612512781359579
	.quad	0x3fe5b0457c07aadc              # double 0.67776750778770234
	.quad	0x3fb5f778a8847580              # double 0.085807362691829425
	.quad	0x3fc44efa2feff2a4              # double 0.15866019573868073
	.quad	0x3fd1eaf672f844d0              # double 0.27996598460692912
	.quad	0x3fd2d68bec257266              # double 0.29434488354835364
	.quad	0x3fe80cda7259c56d              # double 0.7515690072452067
	.quad	0x3fc9713aaa8feb7c              # double 0.19876797989112649
	.quad	0x3fe4395a0005cc7e              # double 0.63200092319893009
	.quad	0x3fc405a0fe3352d8              # double 0.1564217797482772
	.quad	0x3fdd3809887ea86c              # double 0.45654524163786081
	.quad	0x3fc3e327073adbd4              # double 0.15536964276335985
	.quad	0x3f8f576c31ba72c0              # double 0.015303464191043559
	.quad	0x3fd5086e92d07018              # double 0.32863964402508961
	.quad	0x3fe5c10dfce54f1c              # double 0.67981624025057696
	.quad	0x3fd9a15c6806760e              # double 0.40047369154658063
	.quad	0x3f83e0347c4b9540              # double 0.0097049808914088098
	.quad	0x3fee02a620111715              # double 0.9378233553222538
	.quad	0x3fe8cfc84a1ec25a              # double 0.7753640601786842
	.quad	0x3fba93baa5e50350              # double 0.10381666708145798
	.quad	0x3fe7b096150254ae              # double 0.74030593970623726
	.quad	0x3fc4caeefcde43ec              # double 0.16244304034310575
	.quad	0x3fc8bc0f1a9b3db8              # double 0.19323910521641863
	.quad	0x3fe36d05a7048c04              # double 0.60705835934311425
	.quad	0x3fd9063a232c5628              # double 0.39100507197267342
	.quad	0x3fdbf51e9ab4ce98              # double 0.4368359099200716
	.quad	0x3fe15073d8dd3573              # double 0.54107086521405134
	.quad	0x3fdea33a6e88ee6c              # double 0.47871266168997439
	.quad	0x3fc5f41ab7aae158              # double 0.17151197403087326
	.quad	0x3fb9fa7d6c71d0d0              # double 0.10147842309544619
	.quad	0x3fd777cdee0fcacc              # double 0.36668728111469018
	.quad	0x3fedb95d71aeb96a              # double 0.92887756541840116
	.quad	0x3fd81ba660028dd6              # double 0.37668761611913959
	.quad	0x3fd5865e44389e02              # double 0.33632618581984286
	.quad	0x3fdd66f118eab9be              # double 0.45940806802073186
	.quad	0x3fe74513b97f8c1a              # double 0.72718225698588701
	.quad	0x3fe12ea71a05ac05              # double 0.53694491465046268
	.quad	0x3febd8583535a869              # double 0.87015924828052704
	.quad	0x3fee4e1790681909              # double 0.94703272060795129
	.quad	0x3fe939b2dabb2b42              # double 0.78829329224513622
	.quad	0x3fe810edc8bc4cb2              # double 0.75206650930558383
	.quad	0x3fd41a6d07b53e18              # double 0.31411290886623666
	.quad	0x3fecd42553f3b50a              # double 0.90089670559760404
	.quad	0x3fdc3fb50c9cf0b4              # double 0.44138838035338357
	.quad	0x3feab5f7551559f0              # double 0.83471266382076514
	.quad	0x3fef6edcf58a673d              # double 0.9822830959048826
	.quad	0x3feab39d8a9e5809              # double 0.8344257075684719
	.quad	0x3fdf43f504c0c8e8              # double 0.48852277244726716
	.quad	0x3f9f2e3b635085c0              # double 0.030449798523596305
	.quad	0x3febf4c38f362a4f              # double 0.87362840624821014
	.quad	0x3fe58d79e50d1ae3              # double 0.67352003799973337
	.quad	0x3fe7dcd1e4acad23              # double 0.74570555365554403
	.quad	0x3fc80b73d178d8a0              # double 0.18784949997070033
	.quad	0x3feb9fbbcf6dafdd              # double 0.86324873460170759
	.quad	0x3fef67b61d5e2cb9              # double 0.9814100812522134
	.quad	0x3fe6fc2edad16495              # double 0.71828406083945373
	.quad	0x3fe2ee532df0799d              # double 0.59159239742784886
	.quad	0x3fe2d42171b1c025              # double 0.58839485364842814
	.quad	0x3fdccc5dbf6f2a94              # double 0.44997352308988892
	.quad	0x3fdc2b0a0d7c10be              # double 0.44012690846308178
	.quad	0x3fe3900053b2a624              # double 0.61132828089938984
	.quad	0x3fcbb32189aa3e9c              # double 0.2164041444961996
	.quad	0x3fee5e20845ef15b              # double 0.94899011472402195
	.quad	0x3fefd6cc7cfa0ee9              # double 0.99497055444268511
	.quad	0x3fd1c00cc99b4b0a              # double 0.2773467987837398
	.quad	0x3fc63455f970e564              # double 0.17347216300712909
	.quad	0x3fe66b2f3fc7e0b1              # double 0.70058405358488163
	.quad	0x3fe94f0de2f48d19              # double 0.79090017630770426
	.quad	0x3fe69a25366d80ab              # double 0.70631657247942792
	.quad	0x3fe4a869a31f9338              # double 0.64555818424250955
	.quad	0x3fe6a5ab0dde9a0d              # double 0.70772316655058065
	.quad	0x3fc4fcce93513b38              # double 0.16396505540111561
	.quad	0x3fea600bac16a8ba              # double 0.82422431574857247
	.quad	0x3fd9764d9a33e5ce              # double 0.39784565028056995
	.quad	0x3febad48b02de1d0              # double 0.86490282449727296
	.quad	0x3fd8d6846ea949fe              # double 0.38809309775129452
	.quad	0x3fc84e9c6f6b7764              # double 0.189899019626803
	.quad	0x3fddac871a88c0ee              # double 0.46365525809507246
	.quad	0x3fd1699396942d84              # double 0.2720688791748318
	.quad	0x3fe4146d14613516              # double 0.62749341946042381
	.quad	0x3fd5964fef1675b0              # double 0.33729933117305233
	.quad	0x3fe3a4ec7922d67b              # double 0.61388229045287745
	.quad	0x3fd5983195372a2a              # double 0.33741416522812762
	.quad	0x3fb9d7674742f7b0              # double 0.10094304551873168
	.quad	0x3fe73261bb8365c4              # double 0.72490011810003141
	.quad	0x3f793743b9b98780              # double 0.0061562200095027775
	.quad	0x3fe5da1b59a1f5a4              # double 0.68287436968210047
	.quad	0x3fd15e917fe35dfe              # double 0.2713969944865936
	.quad	0x3fead6e20cd0a268              # double 0.83873083594251074
	.quad	0x3fe43934c71bbe6f              # double 0.63198317421297456
	.quad	0x3fc94cd1376bd498              # double 0.19765677648652935
	.quad	0x3fef53e566b6d33f              # double 0.97899122296676199
	.quad	0x3fd6992a97a94a22              # double 0.35309853373215294
	.quad	0x3fc9d08d2942744c              # double 0.20167698397281908
	.quad	0x3fe5882e63013a3f              # double 0.67287368142007853
	.quad	0x3fe2bfca024f25c1              # double 0.58591175509462101
	.quad	0x3fde4c75bb323b50              # double 0.47341674118881816
	.quad	0x3fedbe03ed73f10f              # double 0.9294452321769614
	.quad	0x3fe60b6aa869f27a              # double 0.68889363187152175
	.quad	0x3fe6f9699ce954f4              # double 0.71794586798446725
	.quad	0x3fe36ae5fb385ea4              # double 0.60679911676830445
	.quad	0x3fe7c338c16d114b              # double 0.74258077410244405
	.quad	0x3fd2297f4d4eadd8              # double 0.28378279256386696
	.quad	0x3fd87fb1af835f86              # double 0.38279382839163423
	.quad	0x3fe8f12a75bd47de              # double 0.77943919177982557
	.quad	0x3fb7bb9b01eccc50              # double 0.092706382722824942
	.quad	0x3febd6cae25b5f8c              # double 0.8699697896035885
	.quad	0x3fcc60f5e7666ff4              # double 0.2217090015300297
	.quad	0x3fe53ea284e37c16              # double 0.66389585451895772
	.quad	0x3fa25fd1c6e45500              # double 0.035887294319914886
	.quad	0x3fe4c1f4642e0402              # double 0.64867610517842444
	.quad	0x3fcf6d6040d38450              # double 0.24552539029449116
	.quad	0x3feddb3c1fdebace              # double 0.93301206802956371
	.quad	0x3fe46e1134c32b11              # double 0.63843593888427297
	.quad	0x3fccd4a31878beb0              # double 0.22523916907220132
	.quad	0x3fe2a20bd2aa3194              # double 0.58228102822754346
	.quad	0x3fe84b0e14acdb33              # double 0.75916198766831255
	.quad	0x3fe1e4a694366f23              # double 0.55916146228580421
	.quad	0x3fe6ba20f35ecc2f              # double 0.71022079022657703
	.quad	0x3f6efd03dc39e300              # double 0.0037827563663167529
	.quad	0x3fe20764ba090dfa              # double 0.56340252242119893
	.quad	0x3fdee9a3d902d8e8              # double 0.48301025574200063
	.quad	0x3fec18c4ecf9c7a3              # double 0.87802358898465049
	.quad	0x3fe2dad713afb437              # double 0.5892138847826861
	.quad	0x3fc787f4b68268d8              # double 0.18383654510109326
	.quad	0x3fdff4ce9a0866aa              # double 0.49931683580653419
	.quad	0x3fed5d4d535285bf              # double 0.91763941072365884
	.quad	0x3fea2e8308940d64              # double 0.81817771602110811
	.quad	0x3fcbfc54419833d8              # double 0.2186379738126607
	.quad	0x3fd0fe916b2093ea              # double 0.26553760015150252
	.quad	0x3fe6340c01d861bd              # double 0.69385338173292832
	.quad	0x3feeecad200d6758              # double 0.96639114628053857
	.quad	0x3f8d2fee23a25440              # double 0.014251575911013004
	.quad	0x3fe817c5e0acf952              # double 0.75290197259873026
	.quad	0x3fed6eea296920f1              # double 0.91978939140338245
	.quad	0x3fe968c96e296970              # double 0.79404136196107622
	.quad	0x3fe0b7db780282bc              # double 0.522443518060832
	.quad	0x3fdb912312a16ea0              # double 0.43073345965761156
	.quad	0x3fd16112dd0dd33e              # double 0.27154990756325847
	.quad	0x3fd729876f861e00              # double 0.36190973177914998
	.quad	0x3fe61bdf6ec217d1              # double 0.69090243942695839
	.quad	0x3fe34d7fc35c4c6a              # double 0.60321033626895582
	.quad	0x3fe402f6867587c1              # double 0.62536169301551336
	.quad	0x3fe273d8b730b6fa              # double 0.57664142398218066
	.quad	0x3fe7ed394d632693              # double 0.74770798792561022
	.quad	0x3fdf0c95c62e968e              # double 0.48514313081464244
	.quad	0x3feb8c6dc8cbb9e8              # double 0.86089219301157716
	.quad	0x3fc7e5ea981347f8              # double 0.18670399117996772
	.quad	0x3fe1e3bb12fe44b8              # double 0.55904916486374301
	.quad	0x3fe211cd38a24a99              # double 0.56467305241888532
	.quad	0x3fc650a2cb90db3c              # double 0.17433581294764078
	.quad	0x3fecd4a4bd3178ed              # double 0.90095745994383736
	.quad	0x3fe8674c1f8a233f              # double 0.76260954055860697
	.quad	0x3fe1a60d76e778a3              # double 0.55152009223435916
	.quad	0x3fbdf432438f8778              # double 0.11700739049368092
	.quad	0x3fefcd319bfb46fd              # double 0.99379806962153305
	.quad	0x3fedff519730cdbd              # double 0.93741683511182539
	.quad	0x3fe3120ffb622b9a              # double 0.59595488642058858
	.quad	0x3fc68eaa1a97c194              # double 0.17622877405620996
	.quad	0x3fd266c2d5ecf150              # double 0.28752203837554635
	.quad	0x3fbcf2a5cb9e0430              # double 0.11307750912784864
	.quad	0x3fdff94f26d41dde              # double 0.4995916251359328
	.quad	0x3fe9420c78a4f929              # double 0.78931258738865495
	.quad	0x3fc86b0be7fd06c0              # double 0.19076680018956971
	.quad	0x3fa0b931f9b983f0              # double 0.03266292737385601
	.quad	0x3fd4d74525c359c0              # double 0.32563904464532456
	.quad	0x3f95c0195f20caa0              # double 0.021240612441213558
	.quad	0x3fea7dc725f325f5              # double 0.82785375034398945
	.quad	0x3fdbbe3739d404d6              # double 0.43348484656605757
	.quad	0x3fb0a014a56df108              # double 0.064942636859942948
	.quad	0x3feeb55f90436cda              # double 0.95964029480401369
	.quad	0x3fecb7d8bc154c59              # double 0.89744221434592497
	.quad	0x3fe9a7c72b22c94e              # double 0.80173071312882782
	.quad	0x3fea666f57361d0c              # double 0.8250042632434158
	.quad	0x3fe7ecba32bb6ddf              # double 0.74764737995741004
	.quad	0x3feddc136ec5c396              # double 0.93311473498589481
	.quad	0x3fe8febdf37809a7              # double 0.7810964350940609
	.quad	0x3fc417251c5fc07c              # double 0.1569563282532761
	.quad	0x3fcf126c6f346d14              # double 0.24274974279328687
	.quad	0x3fe25fe531cdd8c7              # double 0.57420596816407332
	.quad	0x3fe14249aefcaf08              # double 0.5393417756763208
	.quad	0x3fe3acc2bda196ef              # double 0.61483895337434358
	.quad	0x3feba63233e57424              # double 0.86403761039730797
	.quad	0x3fd8b4eca742d55a              # double 0.38604275068367644
	.quad	0x3fc6bc653953abe0              # double 0.17762437152063537
	.quad	0x3fec11999574ec1d              # double 0.87714842978255414
	.quad	0x3fbf29e58b3a39f8              # double 0.12173304223163217
	.quad	0x3fcc99ecd0ba2b38              # double 0.22344742004164586
	.quad	0x3fe9dd4c333a45ca              # double 0.80826387410541511
	.quad	0x3fb46de796844a08              # double 0.079802011725668476
	.quad	0x3fe94ec89771cae9              # double 0.79086713389400842
	.quad	0x3fe05c36607cb9b3              # double 0.51125639767797393
	.quad	0x3fed237170f524fc              # double 0.91057655393629444
	.quad	0x3fe52df4afad757c              # double 0.66185983955408245
	.quad	0x3f8adf81156bdc80              # double 0.013121612993457044
	.quad	0x3fd82fbe08b99d56              # double 0.37791395999962185
	.quad	0x3fd86be50000de44              # double 0.38158535957652284
	.quad	0x3fd84ebeca656e2a              # double 0.37980623021369075
	.quad	0x3fe4c21d1cca61b4              # double 0.6486955225291724
	.quad	0x3fdfc6fabdf8f874              # double 0.49651974250799147
	.quad	0x3fabc3e91a08ff30              # double 0.054229053905599733
	.quad	0x3fdb16acb87c93de              # double 0.42325895324966989
	.quad	0x3fe901d122b6e8b0              # double 0.78147179393933719
	.quad	0x3fd6955d04fc9ae8              # double 0.35286641585336875
	.quad	0x3fef6e41023ec024              # double 0.98220873297214383
	.quad	0x3fc36fd3762d8d54              # double 0.15185015936286084
	.quad	0x3fedebb51f85da66              # double 0.93502288967904401
	.quad	0x3fd5737e47fd228c              # double 0.33517415075451917
	.quad	0x3fe9795d14f27d71              # double 0.79606489268546288
	.quad	0x3fe3754f59eb3dcd              # double 0.60807006418502285
	.quad	0x3fe9ebf6bd3b5ebf              # double 0.81005417785032552
	.quad	0x3fc3d4e047c568fc              # double 0.15493396286439765
	.quad	0x3fa2068f9c115dd0              # double 0.035206306267976495
	.quad	0x3fe2dea34dde14e7              # double 0.58967747887132027
	.quad	0x3fd59354d9f3458a              # double 0.33711739811141028
	.quad	0x3fef94374904a9ee              # double 0.98684276830073059
	.quad	0x3fc95a1b46c47c84              # double 0.19806233363576464
	.quad	0x3fedb2bba59a32f9              # double 0.92806799263197981
	.quad	0x3fddcfc04cd69dbe              # double 0.46580512527222229
	.quad	0x3fd92607c53d451c              # double 0.39294618856099972
	.quad	0x3fe3d77e6cb3b4b9              # double 0.62005540114264257
	.quad	0x3fea828fff23836c              # double 0.82843780357152985
	.quad	0x3fe8c8b31b455b9c              # double 0.77449946714738215
	.quad	0x3fed244fac26a0bb              # double 0.91068252204151834
	.quad	0x3fe1efdbe0f0730d              # double 0.56052965100715968
	.quad	0x3fb464dd14086ad8              # double 0.079664056197013777
	.quad	0x3fb7f0003e0dd2e8              # double 0.093505873823072627
	.quad	0x3fdb1eb92c55d0ae              # double 0.42375020341502079
	.quad	0x3fea8126cb342310              # double 0.82826556862082334
	.quad	0x3fc8ecfd49f7dce0              # double 0.19473234283189012
	.quad	0x3fe6a1528c2d9008              # double 0.70719268206130526
	.quad	0x3fe5f818b7522a41              # double 0.68653522305368864
	.quad	0x3fe01b9733cdb675              # double 0.50336799734004833
	.quad	0x3fa5c31f73aab590              # double 0.042504294270979348
	.quad	0x3fe24140943293b7              # double 0.57046536393010328
	.quad	0x3fe82f2e3369ba07              # double 0.75575933496094272
	.quad	0x3fdab7c0568b2078              # double 0.41746529056081938
	.quad	0x3fdd5e644bebe526              # double 0.45888621725278467
	.quad	0x3fe262b831521070              # double 0.57455072052881739
	.quad	0x3fdf288f066e0d0c              # double 0.48685050609511005
	.quad	0x3fb0769f903aa998              # double 0.064310047828860184
	.quad	0x3fa7ab627b522360              # double 0.04622943644887445
	.quad	0x3fe45ce1c03f6bca              # double 0.63633811519991323
	.quad	0x3fa098d279efef20              # double 0.032415940651814745
	.quad	0x3fd5d9d8ad96635c              # double 0.34142128898525015
	.quad	0x3fea594eb66de6d8              # double 0.82340179091189736
	.quad	0x3fca692af9e9d010              # double 0.20633446886824958
	.quad	0x3fd909ba6f859dc8              # double 0.39121876612486206
	.quad	0x3fdaa6f9bb558b58              # double 0.41644137663222613
	.quad	0x3fd7a3d95aeb0a9c              # double 0.36937555197452254
	.quad	0x3fde8876652d8bba              # double 0.4770790088716087
	.quad	0x3fddae544a4b4ad4              # double 0.46376521353992683
	.quad	0x3fec1ecea71da32f              # double 0.87876064910697049
	.quad	0x3feed148e86caafe              # double 0.96304746051222856
	.quad	0x3fdde42eec181052              # double 0.4670522027593097
	.quad	0x3fd0f105919ce328              # double 0.26471080036167161
	.quad	0x3fddf20e43d46566              # double 0.46789890884391239
	.quad	0x3fc5743c53891dbc              # double 0.16760973051917272
	.quad	0x3fefaafe965bd8aa              # double 0.98962334982822608
	.quad	0x3fe9876efe3af447              # double 0.79778241781571857
	.quad	0x3fe9f2ff940d2c3a              # double 0.81091288486766833
	.quad	0x3fddac73827b6ec6              # double 0.46365058653257696
	.quad	0x3feb4482938dc488              # double 0.85211304492089912
	.quad	0x3fddb2f92cfaa45e              # double 0.46404866592872007
	.quad	0x3fc5734f7e3f88f4              # double 0.16758149780714116
	.quad	0x3fd9eabf6b3ed064              # double 0.40495286439113998
	.quad	0x3fc9b53869725358              # double 0.200842906463232
	.quad	0x3fe2238c00d44ce5              # double 0.56683921968433693
	.quad	0x3fe368827b81307e              # double 0.60650753137589652
	.quad	0x3fe74210d6492a4c              # double 0.72681466915794024
	.quad	0x3fef4bb5d49591d6              # double 0.97799197693216899
	.quad	0x3fd80a9e118878a0              # double 0.37564803802696112
	.quad	0x3fdc4455433676b0              # double 0.44167071880097364
	.quad	0x3fe53c2d24713a05              # double 0.66359574430117674
	.quad	0x3fe7d1930b40a46e              # double 0.74433281133418716
	.quad	0x3fb5a80479ccbab0              # double 0.08459499333978715
	.quad	0x3fe382306a5a1519              # double 0.60964222690441539
	.quad	0x3fee226834a72ff3              # double 0.94170007976344861
	.quad	0x3fe59176cf6297d0              # double 0.67400684838207248
	.quad	0x3fd8829c6cacbad6              # double 0.38297186482206536
	.quad	0x3fd9ca167b5689c0              # double 0.40295946163874063
	.quad	0x3fd831705e998e5c              # double 0.37801751364006519
	.quad	0x3fe12ab59ca7230d              # double 0.53646355243935917
	.quad	0x3fe751317ae94619              # double 0.72866128927325058
	.quad	0x3feea513d3e7ff15              # double 0.95765105617462842
	.quad	0x3feb84acd471dfc0              # double 0.85994569295052514
	.quad	0x3fe5dc3b790c43b0              # double 0.68313382761163233
	.quad	0x3fece4442084cbf8              # double 0.90286451674762613
	.quad	0x3f940f10b3b5fe40              # double 0.019588719338115235
	.quad	0x3fdd8babea2c1cb6              # double 0.4616498743857379
	.quad	0x3fd52257c125a872              # double 0.3302211176111377
	.quad	0x3fe6508ebe37a468              # double 0.69733369018389357
	.quad	0x3fb26117272875a0              # double 0.071793982563085113
	.quad	0x3fd6ee8351dfb61c              # double 0.35830767627234805
	.quad	0x3fec94e5a4d40a82              # double 0.89317590897583465
	.quad	0x3fe8e554978434d5              # double 0.77799443810513458
	.quad	0x3fd2030b66b155d0              # double 0.28143582371316445
	.quad	0x3fe14b7479d13115              # double 0.54046081344998476
	.quad	0x3fdd947694c3889e              # double 0.46218647506442234
	.quad	0x3fa914ad6e8ff800              # double 0.04898588156355288
	.quad	0x3fd810487429f180              # double 0.37599383682370302
	.quad	0x3f9b6ad0ddfd8220              # double 0.026774657773218746
	.quad	0x3fe7795218622dae              # double 0.73355965387729838
	.quad	0x3fc824f7cb87528c              # double 0.18862817228241047
	.quad	0x3fd33129f0185e94              # double 0.2998757214240666
	.quad	0x3fce6733499eca54              # double 0.23752442450275402
	.quad	0x3fbd559d1d753dc8              # double 0.11458761185826127
	.quad	0x3fe301d9f3946ca8              # double 0.59397599767853126
	.quad	0x3fe017896a51f7b6              # double 0.50287314191495258
	.quad	0x3fe0fef558b75af0              # double 0.53112284972561774
	.quad	0x3fe195b24194041c              # double 0.54952347572555338
	.quad	0x3fde272dbc4539ba              # double 0.47114127527029448
	.quad	0x3fe1ffc5de1ff083              # double 0.56247228034727959
	.quad	0x3fe12bc59d34abe8              # double 0.53659325317619011
	.quad	0x3febe1f35eb0e906              # double 0.87133186811777885
	.quad	0x3fc34b39687f3a68              # double 0.15073316194907993
	.quad	0x3fcc369f0c832168              # double 0.220416909322249
	.quad	0x3fd06a767f1640f4              # double 0.25649797831375953
	.quad	0x3fea17d6b9204377              # double 0.81541000516345619
	.quad	0x3fd8e9ceee2409b8              # double 0.38927052741942303
	.quad	0x3fd3ca1803491952              # double 0.30920982666829844
	.quad	0x3fc39ddc1307f7e4              # double 0.15325499467138493
	.quad	0x3fd66e49a185287a              # double 0.35048142217113532
	.quad	0x3f9778064aebbc20              # double 0.022918794939808973
	.quad	0x3fc1312d812449f8              # double 0.13431328588247005
	.quad	0x3fba3e296862ede8              # double 0.10251101301667342
	.quad	0x3fe77a8123fae244              # double 0.73370415713640869
	.quad	0x3fc9d4e0df8a0aa0              # double 0.20180903353692248
	.quad	0x3fbee66d44bf2d48              # double 0.12070353439701365
	.quad	0x3feed54e8491ade9              # double 0.96353841678995622
	.quad	0x3faf67be3a58c9d0              # double 0.061338371870437336
	.quad	0x3fd9f7c4cb634668              # double 0.40574760305489699
	.quad	0x3fef843472ae21df              # double 0.98488829039075287
	.quad	0x3fd6ad8bb6e8fe96              # double 0.35434239256208266
	.quad	0x3fd76867e58659d6              # double 0.36574742712528285
	.quad	0x3fee275c8a9b7d31              # double 0.94230486938241687
	.quad	0x3fd1ff9858c1372a              # double 0.28122528712707384
	.quad	0x3fec373f4c330474              # double 0.88174404986069854
	.quad	0x3fe07e4498595b8a              # double 0.51541356807398242
	.quad	0x3fc7c57e2d4a99a4              # double 0.18571450435156323
	.quad	0x3fe2cc23703d4211              # double 0.58741924211250496
	.quad	0x3fc843a6502d0578              # double 0.1895645038112368
	.quad	0x3fe390c78f62f242              # double 0.61142328267266799
	.quad	0x3fe157006b868292              # double 0.54187031746922032
	.quad	0x3fe961fed1cc9655              # double 0.79321232773208783
	.quad	0x3fe06338a1c5f7f6              # double 0.51211196514463952
	.quad	0x3fe9b63be7c646f1              # double 0.80349536198101934
	.quad	0x3fd9913e6c9cf46e              # double 0.3994899807619906
	.quad	0x3fdc2101caf3f7cc              # double 0.43951458758953943
	.quad	0x3fe67b45c50b59a8              # double 0.70254791722509413
	.quad	0x3fd4b6c6710a247e              # double 0.32365571059251141
	.quad	0x3fe0f554d9aa75a4              # double 0.52994768631804279
	.quad	0x3fb94a395eac2370              # double 0.098788819898016688
	.quad	0x3fe0b273bee78203              # double 0.52178370748521308
	.quad	0x3fe81294e1d5472c              # double 0.75226825817137443
	.quad	0x3fec49f1f9c69e20              # double 0.8840265158114029
	.quad	0x3fe11456888a2e8e              # double 0.53373266857075108
	.quad	0x3fcc571ab754d9a4              # double 0.22140821410876044
	.quad	0x3fd67f094a973e02              # double 0.35150368007904842
	.quad	0x3fe075b7ab03478f              # double 0.51436980629863338
	.quad	0x3fe10b8818d81e21              # double 0.53265766956696237
	.quad	0x3fd27db1d04e66a6              # double 0.28892178862006757
	.quad	0x3fea76a38dda8bae              # double 0.82698228555488185
	.quad	0x3fe41d671f3783a4              # double 0.62858921143571367
	.quad	0x3fe5dce74ce3e788              # double 0.68321576135279916
	.quad	0x3fda258aa536e3fe              # double 0.40854135641308165
	.quad	0x3fe55a3b3f25a6b0              # double 0.66726457913792636
	.quad	0x3fe3c020f8d6abf0              # double 0.6172032222870012
	.quad	0x3fc6e5909b849624              # double 0.17888076394699326
	.quad	0x3fd66d13be80d468              # double 0.35040753940422187
	.quad	0x3fde91101113ec88              # double 0.4776039282584823
	.quad	0x3fc245f194937830              # double 0.14275951151552269
	.quad	0x3feaa083ead2d6af              # double 0.8320941530607423
	.quad	0x3fd0231340181d38              # double 0.25214082011412442
	.quad	0x3fef112abeaf885c              # double 0.97084557765289103
	.quad	0x3fd8b956256c482a              # double 0.38631204275691522
	.quad	0x3fd1efbd06fb429c              # double 0.2802574699572149
	.quad	0x3fe7ad7f5b5d3d99              # double 0.73992889256071515
	.quad	0x3fe94a95b9dbb25f              # double 0.7903545980494292
	.quad	0x3fe78863d0a8df47              # double 0.73539915803755995
	.quad	0x3fe66a38c1e6e8b5              # double 0.70046651717645736
	.quad	0x3feb4e1a84f73b33              # double 0.85328412980911705
	.quad	0x3fa4129cdb54bf20              # double 0.039204503797348744
	.quad	0x3fc1ef568043d3d4              # double 0.14011651289879856
	.quad	0x3fea2845dcae26e2              # double 0.81741612531297059
	.quad	0x3f99596107a6a120              # double 0.024755016414617192
	.quad	0x3fe932a0629b28c9              # double 0.78742999323846974
	.quad	0x3fe345fe03cebc32              # double 0.60229397529281514
	.quad	0x3fe0ba1a65ae4eef              # double 0.52271766528653341
	.quad	0x3fea9af77ac638ed              # double 0.83141683558804191
	.quad	0x3fe005af298fdb04              # double 0.5006938754803234
	.quad	0x3fda52f64ccf411c              # double 0.41131360531746153
	.quad	0x3fc7224156821d10              # double 0.18073288654361663
	.quad	0x3fe2228b82d171c1              # double 0.56671691465776786
	.quad	0x3fed1317f2e1a36c              # double 0.90858075559399997
	.quad	0x3feb8a95adb9f130              # double 0.8606670754520902
	.quad	0x3fe887bcb65d7b7a              # double 0.76656947725483282
	.quad	0x3f4ff140768a2c00              # double 9.7480437860164581E-4
	.quad	0x3fd8230dd149cac4              # double 0.37713952482515034
	.quad	0x3fd4d47aad82d8fa              # double 0.32546870178647647
	.quad	0x3fefed198251bc6f              # double 0.99769282773003264
	.quad	0x3fc690e258e14000              # double 0.17629651393735912
	.quad	0x3fd2d95540283462              # double 0.29451495423638197
	.quad	0x3fd86386143996a6              # double 0.38107444739430674
	.quad	0x3fe3948132fdd3d6              # double 0.61187801322250368
	.quad	0x3fc1236eb021bbf8              # double 0.1338938102739744
	.quad	0x3fd11b1373860a0a              # double 0.26727758676148083
	.quad	0x3febd6303368d7bb              # double 0.86989603081632738
	.quad	0x3fef590861af3ae7              # double 0.97961825446131178
	.quad	0x3fea43444fcaffae              # double 0.82071128449023489
	.quad	0x3fe18efd231fd243              # double 0.5487046896001363
	.quad	0x3fcfe8a9a8d75250              # double 0.24928780311769794
	.quad	0x3feaa5c22f182813              # double 0.83273419569127538
	.quad	0x3fd5e43501d1a52c              # double 0.34205365350369976
	.quad	0x3fd599d343659eac              # double 0.33751374799474365
	.quad	0x3fba15d389224128              # double 0.10189554307931259
	.quad	0x3fe21bcb4067178c              # double 0.56589281633999766
	.quad	0x3fec9011714795a0              # double 0.8925864422314369
	.quad	0x3fec845b15ac9422              # double 0.89115671380261952
	.quad	0x3fe15a239863805b              # double 0.54225330127156768
	.quad	0x3fe5bc78efa363fd              # double 0.67925688556999797
	.quad	0x3feb850c9c19a218              # double 0.85999136436754764
	.quad	0x3fec47d301ed92fb              # double 0.8837676084191054
	.quad	0x3fe6c3542eace35f              # double 0.71134385219839291
	.quad	0x3fe22589b88a7de6              # double 0.56708227198754169
	.quad	0x3fd8fda1658d1228              # double 0.39048037449927842
	.quad	0x3fdc0f0f54d1948a              # double 0.43841918261598123
	.quad	0x3fe031aeec1f8550              # double 0.50606485479162622
	.quad	0x3fe56284c8d73954              # double 0.66827620722487291
	.quad	0x3fd68eba052774ac              # double 0.35246134284336494
	.quad	0x3fe29649eac6bbb5              # double 0.58084579329248831
	.quad	0x3fea0b91318d0d24              # double 0.81391200712133526
	.quad	0x3fe9356b51b2d0c1              # double 0.78777090031373842
	.quad	0x3fe48f98a90204f3              # double 0.64252884873726968
	.quad	0x3fe53f0c0076eec6              # double 0.66394615259874779
	.quad	0x3fcfccc7302a6c94              # double 0.24843683101503145
	.quad	0x3fd3bf3afb7060c4              # double 0.30854677729213287
	.quad	0x3fd04859d2a4fa36              # double 0.25441594668146494
	.quad	0x3fdc0f849b5c7910              # double 0.43844714328760492
	.quad	0x3fe6d102c45d5435              # double 0.71301401474432302
	.quad	0x3fdf13681812fb30              # double 0.48555948592177156
	.quad	0x3fe4b6ed6f87faf1              # double 0.64733001502449217
	.quad	0x3fc2a75d229ff2c0              # double 0.14573253813423115
	.quad	0x3fcd63d74b04e630              # double 0.2296094051651365
	.quad	0x3fe78a26b96e723f              # double 0.73561416832996673
	.quad	0x3fd99d367da34224              # double 0.40022051114377377
	.quad	0x3fce2653cc0aa79c              # double 0.23554465735406616
	.quad	0x3fe859bdf2a4f81d              # double 0.76095483199583536
	.quad	0x3fe44c5e00a917b3              # double 0.6343221676731815
	.quad	0x3fefd6becf3fd6fe              # double 0.99496403196710026
	.quad	0x3feabbcc9a867cea              # double 0.83542471104365501
	.quad	0x3fdf85bce877f76e              # double 0.49253771497739407
	.quad	0x3fedbfbe322a9b20              # double 0.92965612218981519
	.quad	0x3fe48733141a4761              # double 0.64150384832667495
	.quad	0x3fba07f76ec651a0              # double 0.10168405966243776
	.quad	0x3fd5677b45ebf552              # double 0.33444101169864837
	.quad	0x3fe1a8d215948cf3              # double 0.55185798849961853
	.quad	0x3fec40c134dc9b14              # double 0.88290462803419922
	.quad	0x3fe146081a31bce3              # double 0.53979878536292991
	.quad	0x3fd80197e7d2a2f4              # double 0.37509725226350032
	.quad	0x3fc67bd7d40a5aac              # double 0.17565439084565548
	.quad	0x3f834616a3f2b880              # double 0.0094110268385885209
	.quad	0x3fcbf7a013719404              # double 0.2184944243373651
	.quad	0x3fe17e358d8a68c5              # double 0.54665639538441069
	.quad	0x3fe356eff5c75dca              # double 0.60436246875445332
	.quad	0x3fe148b0ed4d8ea2              # double 0.54012342785104672
	.quad	0x3fcc1e972375de80              # double 0.21968354445901994
	.quad	0x3fc98b5710299bcc              # double 0.19956482209383208
	.quad	0x3fab8496be6aca70              # double 0.053745947593957122
	.quad	0x3fd68ffbd53b1b6e              # double 0.35253806899384343
	.quad	0x3fe12d9f2001f8aa              # double 0.53681904078964249
	.quad	0x3fde620efd4cbc02              # double 0.47473501907637694
	.quad	0x3fe65c79f0240dca              # double 0.69878861334330478
	.quad	0x3fd1d99c1aaa0058              # double 0.27890684703743807
	.quad	0x3fdd536d4dd39d54              # double 0.45821697807555961
	.quad	0x3fde23dc12d6e374              # double 0.47093870010171845
	.quad	0x3fe539e063597250              # double 0.66331500438861646
	.quad	0x3fd1101b42d01b00              # double 0.26660806202600895
	.quad	0x3fd8358d0cba0d9e              # double 0.37826849215363179
	.quad	0x3fe48740c42c384d              # double 0.64151037516581655
	.quad	0x3fe320bcc005e0a4              # double 0.5977462530563753
	.quad	0x3feb40daf2ff18f6              # double 0.85166690311669302
	.quad	0x3fe7d23bf0798fc5              # double 0.74441334693664685
	.quad	0x3fc0b72b9e18fb74              # double 0.13058991641625151
	.quad	0x3fe2abc699b45e6c              # double 0.58346872349188805
	.quad	0x3f939f25c4467380              # double 0.019161787132918828
	.quad	0x3fb4ccc9ce9c24a8              # double 0.081249821607473849
	.quad	0x3fd748df0e904d46              # double 0.36382271215662276
	.quad	0x3fe364813d809dd6              # double 0.60601865780057085
	.quad	0x3fde727fc4c89868              # double 0.47573847024103211
	.quad	0x3fe38b0f9cf45391              # double 0.61072521834522508
	.quad	0x3fe5f73a6fa7dbaf              # double 0.68642923171761605
	.quad	0x3fdc5c3a7dca295c              # double 0.44312917980336919
	.quad	0x3fe873d749c40f14              # double 0.7641407433261258
	.quad	0x3fa50e46f2cd7e50              # double 0.041124550951960104
	.quad	0x3fe9d32609e65569              # double 0.80702497418921582
	.quad	0x3fe1263f9f951848              # double 0.53591900986135332
	.quad	0x3fed8d917ec9a488              # double 0.923531291610872
	.quad	0x3fe9379a24364476              # double 0.78803736755993614
	.quad	0x3fed0eae52a58069              # double 0.90804210798161222
	.quad	0x3fc94d7fe4e18154              # double 0.197677599676363
	.quad	0x3fbc3570ade4ffc8              # double 0.11019043202850221
	.quad	0x3fd1a2978faff09e              # double 0.27554883033713817
	.quad	0x3fdf972a3009068c              # double 0.49360136691039069
	.quad	0x3fe5006b43394de9              # double 0.65630114679009666
	.quad	0x3febc45f86fcb18c              # double 0.86772133221306679
	.quad	0x3fd87266980befe0              # double 0.3819824681120263
	.quad	0x3fd40ffd80bdc3dc              # double 0.31347596714391357
	.quad	0x3fdef9cbed1df374              # double 0.48399637371021886
	.quad	0x3fd4d7ef72945864              # double 0.32567964734460575
	.quad	0x3fd7381b1c0a5386              # double 0.36279943216623456
	.quad	0x3fd12a61897dbab6              # double 0.26821173121326625
	.quad	0x3fd8ce944635d63e              # double 0.3876085935256447
	.quad	0x3fdbd74c5250f960              # double 0.43501575506879497
	.quad	0x3fc41fb5263acb34              # double 0.15721763960535784
	.quad	0x3fe71eaf1a32bafc              # double 0.72249560467557172
	.quad	0x3fc7b3a94c30fb3c              # double 0.18517032833366354
	.quad	0x3fe6f9c2ca7cfeb6              # double 0.71798839138496962
	.quad	0x3fede3599ed54398              # double 0.93400269529421376
	.quad	0x3fe2280da0bddcba              # double 0.56738931078770993
	.quad	0x3fed7b8dd0e59138              # double 0.92133227157731934
	.quad	0x3fe2f42250c075a9              # double 0.59230151912531881
	.quad	0x3fbb066adfb5b698              # double 0.10556667291322197
	.quad	0x3fde6392488c6eea              # double 0.47482735714741742
	.quad	0x3fc3a3de329476dc              # double 0.15343835324977462
	.quad	0x3fef37f4476f89e4              # double 0.97558034851345754
	.quad	0x3fd9fce585d1142a              # double 0.4060605818561408
	.quad	0x3fef81fbbe018d25              # double 0.98461711035307486
	.quad	0x3fee668df2eeac71              # double 0.95001885841101175
	.quad	0x3fe9c3a45429d4fb              # double 0.80513206899800538
	.quad	0x3fb2dea9a5c9c840              # double 0.07371006295741811
	.quad	0x3fd38084e2e14fc0              # double 0.30471918255102182
	.quad	0x3fe1607a5dbee0e5              # double 0.54302709874812349
	.quad	0x3fe5e53ed4e39d8a              # double 0.68423406200320014
	.quad	0x3fdb34f3e6e1685a              # double 0.425106978863942
	.quad	0x3fd803563a74a948              # double 0.37520366390767323
	.quad	0x3f932c39e2ea1280              # double 0.018723396754028787
	.quad	0x3fe59d6f32deb0d8              # double 0.6754680627396068
	.quad	0x3fed0049d34b69bd              # double 0.9062852026793774
	.quad	0x3fdb7c716e57b9be              # double 0.4294704034390654
	.quad	0x3fe6e9a90438a65d              # double 0.71602297615499888
	.quad	0x3fe81966ac698cf9              # double 0.75310071634558462
	.quad	0x3fde405efe772d78              # double 0.47267889833593513
	.quad	0x3fe58872b33c72b6              # double 0.67290625578933461
	.quad	0x3fe37174c5841c89              # double 0.60759962632518338
	.quad	0x3fd8f1da83ad6ce4              # double 0.38976157054066918
	.quad	0x3fe2ad57afe3b01a              # double 0.58365997651481227
	.quad	0x3fd8237b8d818dbe              # double 0.37716568774177606
	.quad	0x3fe718841f9e0649              # double 0.72174268889666238
	.quad	0x3fea02fdac3602b4              # double 0.81286510119396959
	.quad	0x3fb9929d12fe81e8              # double 0.099893395554779496
	.quad	0x3fe7acd09d8423ba              # double 0.73984556927563649
	.quad	0x3fd3f41804a19db6              # double 0.31177330448414453
	.quad	0x3fe43ca8f1820c64              # double 0.63240477723628574
	.quad	0x3fd8549da07671cc              # double 0.38016453428442953
	.quad	0x3fd143fefa9df4ac              # double 0.26977514719312512
	.quad	0x3fb3d961d6ad7980              # double 0.077535738860637692
	.quad	0x3fe9cc2fbbe20c67              # double 0.80617510505579737
	.quad	0x3fa7e411d9de1720              # double 0.046661908955725417
	.quad	0x3fd50580c7234d7a              # double 0.32846087882099761
	.quad	0x3fd723a8b4b5e53c              # double 0.36155145308983427
	.quad	0x3feb14718d56366f              # double 0.84624555210912245
	.quad	0x3fb31890f030ed68              # double 0.074593599930201315
	.quad	0x3fddcc8b0c1bd89a              # double 0.46560932333466953
	.quad	0x3fa8bad080ee7a40              # double 0.048300281275477364
	.quad	0x3fd826748154f392              # double 0.37734711294233947
	.quad	0x3fe2d33ecbe59542              # double 0.58828677962871034
	.quad	0x3fef66b56d9a7f1a              # double 0.98128768355306595
	.quad	0x3fdc37cf286d471e              # double 0.44090632389007733
	.quad	0x3fe944e184c7f7c8              # double 0.78965831693471333
	.quad	0x3feb5a4a90d0a1dc              # double 0.85477188381360802
	.quad	0x3fd3ade9f8aacf86              # double 0.30748986514958465
	.quad	0x3fb1048c0871a0e8              # double 0.066475631772508259
	.quad	0x3fe7f23d79d5b967              # double 0.74832032962676187
	.quad	0x3fcc9b10514bf7bc              # double 0.22348216981475655
	.quad	0x3fc8bde5882a2e30              # double 0.19329518459959294
	.quad	0x3feaa656d4597866              # double 0.83280507540235926
	.quad	0x3fd45b2d9046e30c              # double 0.31806506242314536
	.quad	0x3fe6e93be688512b              # double 0.71597094560505548
	.quad	0x3fef35bdb4c10688              # double 0.9753101854659727
	.quad	0x3fda80a14b216e34              # double 0.41410095536204783
	.quad	0x3fe4cd95d36169a9              # double 0.65009585652596968
	.quad	0x3fe8b41f3cfaff4d              # double 0.77198755178685874
	.quad	0x3fee6e7936c5b34f              # double 0.95098553369244054
	.quad	0x3fd0a38629d7f076              # double 0.25998071752815777
	.quad	0x3fe018413f7b975e              # double 0.50296080016117251
	.quad	0x3fc2733bd557cc0c              # double 0.14414165417801461
	.quad	0x3fe8daa033fc9554              # double 0.77668771890300059
	.quad	0x3fea010a149ba296              # double 0.81262687706937942
	.quad	0x3fede6ccb559e60e              # double 0.93442378444814422
	.quad	0x3fe50ecc4633180b              # double 0.65805638991219106
	.quad	0x3fd028107e0af182              # double 0.25244533833372185
	.quad	0x3fea535c5c12959c              # double 0.8226758764546278
	.quad	0x3fb0f096eb55a338              # double 0.066171104864804486
	.quad	0x3fe944384b9c894b              # double 0.78957762496819706
	.quad	0x3fd97931ce5e799e              # double 0.39802212861277464
	.quad	0x3fcad6df9548a5e4              # double 0.20968241490599759
	.quad	0x3fd0944075d42872              # double 0.25904857165063
	.quad	0x3fe6e3c25ba3373c              # double 0.71530263803445093
	.quad	0x3fa5595b5b7d5b40              # double 0.041697363775418328
	.quad	0x3fbb3b49fa02ffe8              # double 0.10637342790414517
	.quad	0x3fefd85b097ab501              # double 0.99516059733801409
	.quad	0x3fd82f97eac66570              # double 0.37790487220043811
	.quad	0x3fb66613699b4b20              # double 0.087495053561081892
	.quad	0x3fb548422e1bf008              # double 0.083133827454673903
	.quad	0x3fe48f0671f08642              # double 0.64245912793939675
	.quad	0x3fe2c341452e8e2b              # double 0.58633483421403321
	.quad	0x3fbd10cdfaf76d78              # double 0.11353766800987397
	.quad	0x3fe2ff7901233d42              # double 0.5936856291026873
	.quad	0x3fa55aed6cb4e450              # double 0.041709346313333229
	.quad	0x3fd292b7c5a8f818              # double 0.29020494749772885
	.quad	0x3fe2ae623272e833              # double 0.58378705838482003
	.quad	0x3fec11cecc0e01ca              # double 0.87717380384861454
	.quad	0x3fe85f2d20d372a1              # double 0.76161819850274892
	.quad	0x3fed7e5dff1b4899              # double 0.92167568040374015
	.quad	0x3fe89572798bf4c1              # double 0.76824306239691265
	.quad	0x3fed90fc049428ce              # double 0.92394829649244925
	.quad	0x3fdf28bae1d63530              # double 0.48686096243257548
	.quad	0x3fe8aa2cc40094bd              # double 0.77077329904263758
	.quad	0x3fe465971556776a              # double 0.63740114371806311
	.quad	0x3feb03847872b260              # double 0.84417937779432961
	.quad	0x3fe67d4f09ad4d2e              # double 0.70279647722273864
	.quad	0x3fd9798633fa7eb0              # double 0.39804225040459595
	.quad	0x3fe8d2e0d34c4ff4              # double 0.77574197072180917
	.quad	0x3fcb521afc0eda98              # double 0.21344315822144178
	.quad	0x3f881d41270afbc0              # double 0.011774548534388418
	.quad	0x3fec9945f43751b2              # double 0.89371011446433202
	.quad	0x3fe68bd40cbd575d              # double 0.70456888664441986
	.quad	0x3fec32cf1a0aa40a              # double 0.88120226942294377
	.quad	0x3fd975ecc3cdead4              # double 0.39782256242294278
	.quad	0x3fa08b3cd7d78710              # double 0.032312299106491804
	.quad	0x3fef8fc6eda2da12              # double 0.98630091107662765
	.quad	0x3fd39050324cb150              # double 0.30568318283146301
	.quad	0x3fd280d3c2916e2e              # double 0.28911298752584258
	.quad	0x3fee572b0f94f71f              # double 0.9481406502088453
	.quad	0x3feba5b7c5f77ce8              # double 0.86397923150425715
	.quad	0x3fcc35be4b9a1e6c              # double 0.22039011661057673
	.quad	0x3fbded082bbab930              # double 0.11689807002651231
	.quad	0x3fd24240a71e1e12              # double 0.28529373474199915
	.quad	0x3fd6d63ae02da2bc              # double 0.35682556049736625
	.quad	0x3fde456772e99a06              # double 0.47298608991550883
	.quad	0x3fe162ae7e13b154              # double 0.54329609512709931
	.quad	0x3fe7729ad8cc6625              # double 0.73273985236591399
	.quad	0x3f873415c35e8380              # double 0.011329813027090685
	.quad	0x3fe9d9a7289e0cb4              # double 0.80781896527368823
	.quad	0x3fe4deb1b6013f61              # double 0.65218434856249641
	.quad	0x3f877b4ac21fa080              # double 0.011465629624538787
	.quad	0x3fc0f5abd6a06264              # double 0.13249729137239108
	.quad	0x3fe498672f0a8243              # double 0.64360388934807877
	.quad	0x3fc2be22f10a7240              # double 0.14642750520296666
	.quad	0x3fbd99f445c713d0              # double 0.11563040450626194
	.quad	0x3fefd07044e1e790              # double 0.99419415906526076
	.quad	0x3fad430412606760              # double 0.05715191578219847
	.quad	0x3fe20332d7a14f5e              # double 0.56289045443780217
	.quad	0x3fe097a2c8cfed16              # double 0.51851023884902037
	.quad	0x3fe104f314f6e5b7              # double 0.53185419172876081
	.quad	0x3fe02d03a63f5cff              # double 0.50549490423409782
	.quad	0x3fd02bc0ed5ba34a              # double 0.25267050914276423
	.quad	0x3fd85a479118769e              # double 0.38051022691238667
	.quad	0x3fea5bb1903defde              # double 0.82369306728605429
	.quad	0x3fd78b572c7a98ac              # double 0.36787967055932813
	.quad	0x3fa75b5354bb4c10              # double 0.045618633359161831
	.quad	0x3fed3709603ea086              # double 0.91296833799152988
	.quad	0x3fdb9f6d5d67e772              # double 0.43160566445987236
	.quad	0x3fed8e37fd7eeadc              # double 0.92361068259136969
	.quad	0x3fa872a6c2fedcc0              # double 0.04774972086254925
	.quad	0x3fe4164c3795cff1              # double 0.62772189003453438
	.quad	0x3fd42d32ed6d50bc              # double 0.31525872408134226
	.quad	0x3fe1d7cb2f181109              # double 0.5575920028500444
	.quad	0x3fc1d7ebab4b0d4c              # double 0.13940187324451825
	.quad	0x3fcdab64a806f380              # double 0.23179300503207045
	.quad	0x3fc0775991ef008c              # double 0.12864226937927403
	.quad	0x3f9fcb7ccaa61840              # double 0.031049680584622985
	.quad	0x3fcac3e8257e1e14              # double 0.20910360174842479
	.quad	0x3feec298a0e3b3f0              # double 0.96125441955302726
	.quad	0x3fef4159165c42e2              # double 0.97672705046906239
	.quad	0x3fb285b5233b8450              # double 0.072352715589219629
	.quad	0x3fbc1c2ed872e448              # double 0.10980503830332211
	.quad	0x3fdfc88908b0d5f4              # double 0.49661470268924224
	.quad	0x3fdf8d2e9d638c46              # double 0.49299207086568619
	.quad	0x3fea9a029f4e06a6              # double 0.83130007852760879
	.quad	0x3fc034f1217cf1a4              # double 0.12661565909537587
	.quad	0x3fe7ba8878e01845              # double 0.74152015312643782
	.quad	0x3fde31dc73d87a60              # double 0.4717932826332909
	.quad	0x3fdd1dec4edfbe02              # double 0.45495135977304824
	.quad	0x3feca209fb38adfe              # double 0.89478015009575507
	.quad	0x3fee7b4c3a37a9b8              # double 0.95255099649994345
	.quad	0x3fe5de1a1f1aef15              # double 0.68336206507908293
	.quad	0x3fef80c9d6793dac              # double 0.98447124375700445
	.quad	0x3fbee80849ee71c0              # double 0.12072803311315905
	.quad	0x3feea9ce1864dab4              # double 0.9582281567043851
	.quad	0x3fd7bbc67401e612              # double 0.37083588913773824
	.quad	0x3fca049f20cd18d0              # double 0.2032660398637689
	.quad	0x3fe34d51b98d9066              # double 0.60318838349168113
	.quad	0x3fc1266a2aad076c              # double 0.13398482402595435
	.quad	0x3fd86704bf77779c              # double 0.38128775308529739
	.quad	0x3fea533a3edca152              # double 0.82265960958197071
	.quad	0x3fcd1064b3bc6364              # double 0.22706278587500173
	.quad	0x3fefd6536fd63838              # double 0.99491283267139518
	.quad	0x3fe4b7c8a881b8fd              # double 0.64743454848738191
	.quad	0x3fe61352827af8e2              # double 0.68985867962308256
	.quad	0x3f959c94352cd3a0              # double 0.02110511374049262
	.quad	0x3fe26949bd37f481              # double 0.57535254437210892
	.quad	0x3fe6f639a23ced8b              # double 0.71755677878484059
	.quad	0x3fe17f91df71b5bc              # double 0.54682248727265614
	.quad	0x3fe9dc3782526ff1              # double 0.80813193753738066
	.quad	0x3fc9de3a9587625c              # double 0.20209438611233821
	.quad	0x3fe3b7cddf4eb35c              # double 0.61618703474742231
	.quad	0x3fe6f733eda9a8d3              # double 0.71767612856390384
	.quad	0x3fe1709df56cf8fb              # double 0.54499719557477933
	.quad	0x3fe654a4fdba0fb5              # double 0.6978325801469426
	.quad	0x3fb47cc887f5c7a0              # double 0.080029042428377384
	.quad	0x3fd9145a8583d0c2              # double 0.39186728514256342
	.quad	0x3fb29622ff6d4a70              # double 0.072603404388510873
	.quad	0x3fcb11f690c89e8c              # double 0.21148569173350429
	.quad	0x3fbd439fa6526e38              # double 0.11431310473056377
	.quad	0x3feef14189052b85              # double 0.96695019494778533
	.quad	0x3fbfee0b02f8f1b0              # double 0.12472599814004215
	.quad	0x3fc0d437cc340f9c              # double 0.13147637816302626
	.quad	0x3fe9e22c00511574              # double 0.80885887204992323
	.quad	0x3fe72e6f53abf78e              # double 0.72441831915033261
	.quad	0x3feb2ab95ba7e70e              # double 0.84896533872162805
	.quad	0x3fc7c7445c47ee20              # double 0.18576864725024311
	.quad	0x3fe5cf8404b45771              # double 0.68158150595512101
	.quad	0x3fa0a924b5f98f00              # double 0.032540461744046567
	.quad	0x3fc76b088dd07d50              # double 0.18295390057117311
	.quad	0x3fddd4e8342a4912              # double 0.46611981481795894
	.quad	0x3fd2120be950576c              # double 0.28235147270731065
	.quad	0x3fe52a36d8ae8be2              # double 0.66140310593288754
	.quad	0x3fe96bb790221046              # double 0.79439905310619774
	.quad	0x3fec02cdfeb70567              # double 0.87534236668595333
	.quad	0x3fe8e0ab038f41a4              # double 0.77742529578431573
	.quad	0x3fd6980a86cc311c              # double 0.35302985347586158
	.quad	0x3fe69e99903532cc              # double 0.70686033406817605
	.quad	0x3fe81c047cd9c48d              # double 0.75342010865110043
	.quad	0x3fd128568dd4cc52              # double 0.26808704233844083
	.quad	0x3fdad5b5c86e1136              # double 0.41929382870900456
	.quad	0x3fe0d0ea23b6cd0a              # double 0.5255022714176516
	.quad	0x3fe74eb7b5df717e              # double 0.72835908433948737
	.quad	0x3fec62bdb66ff388              # double 0.88705335266387042
	.quad	0x3fe44471695a170c              # double 0.63335486008210884
	.quad	0x3fd2499b36063466              # double 0.28574257160000227
	.quad	0x3fb300f2f36eacc0              # double 0.074233231002540201
	.quad	0x3fcad84ab2b7f1f4              # double 0.20972570158473014
	.quad	0x3fdc7520a09fe4f4              # double 0.44464889226908544
	.quad	0x3fbfcd361a954bc8              # double 0.12422502659801105
	.quad	0x3fe2995bee64243f              # double 0.58122059403206794
	.quad	0x3fe84f6105acef9a              # double 0.75968981846334604
	.quad	0x3fca3fdf4ba66adc              # double 0.20507422632075289
	.quad	0x3fe0fd41b03a892b              # double 0.53091511172923356
	.quad	0x3fc18bcac0718824              # double 0.13707861324934456
	.quad	0x3fb1505b9798e918              # double 0.067632412444173062
	.quad	0x3f9f3a404f8fbfc0              # double 0.030495648246812612
	.quad	0x3fbf31c3ca6975e0              # double 0.12185310069749944
	.quad	0x3fe3433bfbd82181              # double 0.60195731342632552
	.quad	0x3f9a7bbe15ebb720              # double 0.025862665260255047
	.quad	0x3fe86ced3318d86d              # double 0.76329669933217092
	.quad	0x3fd7b4c85ce76bee              # double 0.37040909836440405
	.quad	0x3fea7fd79f64af17              # double 0.82810574656966451
	.quad	0x3fcd07c6c014c058              # double 0.22679981593091969
	.quad	0x3fdbf4ad4b97d6b0              # double 0.43680889494076336
	.quad	0x3fc6aa08c454eb14              # double 0.17706403337964416
	.quad	0x3fdd0274302ee094              # double 0.45327477174169784
	.quad	0x3fed9d118336eb23              # double 0.9254233897002887
	.quad	0x3febcdc15eb957d8              # double 0.86886662007122606
	.quad	0x3fed17379b89cc60              # double 0.90908413294381418
	.quad	0x3feb7b6116aec562              # double 0.85881094389166557
	.quad	0x3fe8621f62742713              # double 0.76197785596125056
	.quad	0x3fde63a241613880              # double 0.47483116516821866
	.quad	0x3fe59c2289489031              # double 0.67530943692373147
	.quad	0x3fec617e1bae4eff              # double 0.88690095335411445
	.quad	0x3fd9252c95de1ed8              # double 0.3928939307738637
	.quad	0x3fb40e33db111bd8              # double 0.078341713889229836
	.quad	0x3fe0eef50b07b9e7              # double 0.52916958002407177
	.quad	0x3fddfc3817bee504              # double 0.46851923293031938
	.quad	0x3fd4559631571230              # double 0.31772379701968401
	.quad	0x3fc158c6b74cde90              # double 0.13552173567017123
	.quad	0x3fb4a30ae19c1e58              # double 0.080612831192519052
	.quad	0x3fadb5ba71ccca60              # double 0.058027101890179678
	.quad	0x3fd3b1632cda75b2              # double 0.30770186786852627
	.quad	0x3fea58985596aee8              # double 0.82331482616924934
	.quad	0x3fccebda25af1a04              # double 0.2259476360324727
	.quad	0x3fa5bac1c900a160              # double 0.042440467630799672
	.quad	0x3fda23468b8a6d94              # double 0.40840304972672326
	.quad	0x3fdf2616e60bb114              # double 0.48669979539296659
	.quad	0x3fe54ac6dbb8ccb3              # double 0.665378026146206
	.quad	0x3feca8c7f8752954              # double 0.89560316588294108
	.quad	0x3fcbe8646acf6ea0              # double 0.21802954879136838
	.quad	0x3fe843015d48c372              # double 0.75817936153008092
	.quad	0x3fe12c5eb1ed92e5              # double 0.53666624785963946
	.quad	0x3fdf638810d28d00              # double 0.49044992106264829
	.quad	0x3fddef52b344a6ae              # double 0.4677321196237284
	.quad	0x3fbc66083dd8d5e8              # double 0.11093188772141327
	.quad	0x3fb789665d4c6358              # double 0.091940305498053987
	.quad	0x3fdcaeaea8c204fe              # double 0.44816175918829504
	.quad	0x3fe01e7339ad27ba              # double 0.50371705307883663
	.quad	0x3fccf31c58c804cc              # double 0.22616915068650767
	.quad	0x3fee7676826b2410              # double 0.95196080658308979
	.quad	0x3fe148f515160568              # double 0.54015592687953262
	.quad	0x3fedca30a8ae7776              # double 0.93093140550239073
	.quad	0x3fe283f64636ca93              # double 0.57860864366223763
	.quad	0x3fedbca5f921445e              # double 0.92927836092179539
	.quad	0x3feff46c4715db89              # double 0.9985867870699262
	.quad	0x3fe1a197492cc2e4              # double 0.55097545902216583
	.quad	0x3fb72ba96ac610d0              # double 0.090509975974842449
	.quad	0x3fef5317a01abbdb              # double 0.97889310140987662
	.quad	0x3fe698fb5dea2261              # double 0.70617454855625905
	.quad	0x3fafe75a77043600              # double 0.062311961201071853
	.quad	0x3fb37be50d0f1008              # double 0.076109233558838807
	.quad	0x3fe92751b8fec0fa              # double 0.78604971057759987
	.quad	0x3fc66962863aa8b0              # double 0.17509109071881346
	.quad	0x3fddd9854aaa7488              # double 0.46640140811525344
	.quad	0x3fee251d86e56d11              # double 0.94203068110383203
	.quad	0x3f9eb9d63b18f360              # double 0.030005786282561231
	.quad	0x3fc65105533fbf34              # double 0.17434755864041451
	.quad	0x3fd02566732ac9c2              # double 0.2522827267340767
	.quad	0x3fed9da0b216b0e1              # double 0.92549166472374733
	.quad	0x3fec203362a0a19d              # double 0.87893075240303953
	.quad	0x3fd6f96939c27384              # double 0.35897284164985188
	.quad	0x3fcae1172fed2ab8              # double 0.2099942192092692
	.quad	0x3fc7dd7d1b279010              # double 0.18644679857163782
	.quad	0x3fcf1920c811d0bc              # double 0.24295434731505405
	.quad	0x3fde1a8f466fcba4              # double 0.4703710735186013
	.quad	0x3fe0d5a6f95976fe              # double 0.52608059598034607
	.quad	0x3fc256b2bd0729c8              # double 0.14327081899530314
	.quad	0x3fd057a61ed0e0a8              # double 0.25534966477745025
	.quad	0x3fe0afbb2d432690              # double 0.52145155754370087
	.quad	0x3fef31662f241cad              # double 0.97478017050970822
	.quad	0x3fc9164b7d48d094              # double 0.1959928857555765
	.quad	0x3fe1462af4e6cc21              # double 0.53981540520033289
	.quad	0x3fae246ff0f7ee60              # double 0.058871744313333307
	.quad	0x3fdd385ea31c64ee              # double 0.45656553200531291
	.quad	0x3fb6ffd1d451b788              # double 0.089840998016113116
	.quad	0x3fe433257c4af2ca              # double 0.63124346042567336
	.quad	0x3fd90f1837264274              # double 0.39154630075157759
	.quad	0x3fb71075ed86db70              # double 0.090094919671953155
	.quad	0x3fb2baf1ebe31c60              # double 0.073165054406773233
	.quad	0x3f7dd51daade7400              # double 0.0072833212742837716
	.quad	0x3f6c5b245423dd00              # double 0.003461428598821592
	.quad	0x3fef7427a3c747e3              # double 0.98292905796028795
	.quad	0x3fefd7cbb3c630c7              # double 0.99509224998612288
	.quad	0x3fe87fb5888069d8              # double 0.7655894914672059
	.quad	0x3fdd6d5ce37ecc84              # double 0.45979997841204345
	.quad	0x3fc03cbeeb82f89c              # double 0.12685381412115226
	.quad	0x3f8b8b3e543c1f00              # double 0.013449179597514682
	.quad	0x3fd8d73cac00117e              # double 0.38813702389622751
	.quad	0x3fd200146c5c33fe              # double 0.28125486928985299
	.quad	0x3fe91758641710d2              # double 0.78409976528976189
	.quad	0x3fe6a9382f0ce3f8              # double 0.70815667333147214
	.quad	0x3fe3871e73469b08              # double 0.61024401202016154
	.quad	0x3fd6c751bd63050c              # double 0.35591548437885545
	.quad	0x3fd23799496b851c              # double 0.28464348001405582
	.quad	0x3fdb7323c83b3e9a              # double 0.42890257409906385
	.quad	0x3fed3cb0513976f9              # double 0.91365829338221183
	.quad	0x3fe18fd856421212              # double 0.5488092121818815
	.quad	0x3fea768178fa2f74              # double 0.82696603420616421
	.quad	0x3feb7467d8a0c78f              # double 0.85795967397847217
	.quad	0x3fc470c3c15482e8              # double 0.15969130458781611
	.quad	0x3fecb536c630f477              # double 0.89712084492897659
	.quad	0x3fdcea72d804576a              # double 0.45180960746198784
	.quad	0x3fe50a09e8427ab3              # double 0.65747542727679897
	.quad	0x3fe5f9371fae0922              # double 0.68667179286447699
	.quad	0x3fceff4cc8e58e34              # double 0.24216613587769731
	.quad	0x3fe83e9d57d27f84              # double 0.75764338639054118
	.quad	0x3faa85c1dce46b60              # double 0.051801737036121009
	.quad	0x3fd5201390f2ba0a              # double 0.33008278994648832
	.quad	0x3fef4791eb3eeb7a              # double 0.97748657175485154
	.quad	0x3fdabd925619ff1e              # double 0.41782053383211515
	.quad	0x3fe9229ccabbc5dc              # double 0.7854751548422274
	.quad	0x3fd80fadcaa0ca62              # double 0.37595696247004728
	.quad	0x3fd632d9ec46ff56              # double 0.34685371469457971
	.quad	0x3fdda96c2bb59330              # double 0.4634657313202295
	.quad	0x3fe24212724ba13b              # double 0.57056543658567394
	.quad	0x3f88b8bbdcbd2a40              # double 0.0120711018313574
	.quad	0x3fe87f67e262aa27              # double 0.76555246559047851
	.quad	0x3fe521cfc3bbeb99              # double 0.66037739018735231
	.quad	0x3fec81d543c822cb              # double 0.89084876288060266
	.quad	0x3fd9a606f3c9b4b4              # double 0.40075849349416193
	.quad	0x3f7d572dbd4b8f80              # double 0.0071632181831978725
	.quad	0x3feb0aad1a4f0d7d              # double 0.84505324495732703
	.quad	0x3feb9ff9ad08ce70              # double 0.86327823444157836
	.quad	0x3f9e24270c15c640              # double 0.02943478595029192
	.quad	0x3fe237dae0356bda              # double 0.56931823530919279
	.quad	0x3fe49894f461d13f              # double 0.6436257145965455
	.quad	0x3f9fdaf98a735a20              # double 0.031108759951928744
	.quad	0x3fdb44c654e951de              # double 0.42607267658357084
	.quad	0x3fedb7750bd9b88f              # double 0.92864467920823468
	.quad	0x3fec6ceb0969880e              # double 0.88829566801382653
	.quad	0x3fdb0f61312ca180              # double 0.42281369974309513
	.quad	0x3fed85faed574a91              # double 0.92260500293407877
	.quad	0x3fa2b84cef299a30              # double 0.036562351412431915
	.quad	0x3fc996efc0944fe0              # double 0.19991871741569778
	.quad	0x3fe55d8894543534              # double 0.66766766520019027
	.quad	0x3fdeed2f7666a38e              # double 0.48322664797392967
	.quad	0x3fe13694fe833843              # double 0.53791284284103147
	.quad	0x3fe01bea2aa835a6              # double 0.50340755778750146
	.quad	0x3febcc4eca3d298d              # double 0.86868991374767435
	.quad	0x3fb25e7b89127320              # double 0.071754189457760464
	.quad	0x3fec017b32509620              # double 0.87518081500155986
	.quad	0x3fc624b4cfcb9f20              # double 0.17299518724689111
	.quad	0x3feac2269b620793              # double 0.83620004986026897
	.quad	0x3fc49eead50f102c              # double 0.16109977153075883
	.quad	0x3feed5f23df21515              # double 0.96361648653752018
	.quad	0x3fc8683d7f5b989c              # double 0.19068115919725848
	.quad	0x3fd1d58071a6a91a              # double 0.27865611170513349
	.quad	0x3fb156c878b50458              # double 0.06773045489264129
	.quad	0x3fc04c624ea41260              # double 0.12733105506790121
	.quad	0x3fcd8ce5a6944754              # double 0.23086233743429807
	.quad	0x3fca241e4254dbc4              # double 0.20422723997918812
	.quad	0x3feb55b7dcc8e2d0              # double 0.85421364900602192
	.quad	0x3fea70f90c6f4af3              # double 0.82629063061389585
	.quad	0x3fe2be8f22c475b0              # double 0.58576161184799069
	.quad	0x3feac41c618ec2b7              # double 0.83643931440572927
	.quad	0x3fea661c33f0f8fc              # double 0.82496462006363868
	.quad	0x3fe0e701dea48c20              # double 0.52819913372912097
	.quad	0x3fe59440f69e036b              # double 0.67434738318853016
	.quad	0x3fc15b005249d680              # double 0.1355896379279109
	.quad	0x3f98ec1271cc77c0              # double 0.024338043399545262
	.quad	0x3fdc54d8ca4ce94c              # double 0.44267863994504775
	.quad	0x3fdfad18818b750c              # double 0.49493992472510295
	.quad	0x3fe989e6944ff442              # double 0.79808358161211168
	.quad	0x3fec7f4b0a07139c              # double 0.89053871115230576
	.quad	0x3fe17ddcdefff73a              # double 0.54661410860692361
	.quad	0x3fcdc853fba9406c              # double 0.23267602718488278
	.quad	0x3fc9bbd98626df14              # double 0.20104521799452668
	.quad	0x3fe8db4df57aecf6              # double 0.77677057214114487
	.quad	0x3fc9e50adb77f948              # double 0.20230231968157342
	.quad	0x3fef9c778e462562              # double 0.98784997737781688
	.quad	0x3fac8648b3e7ce60              # double 0.055712005578155255
	.quad	0x3fd3dea79ef4315a              # double 0.31046476862754491
	.quad	0x3fb96a04082e22f0              # double 0.09927392196381013
	.quad	0x3fea6ce2ec2a0bae              # double 0.8257917988379313
	.quad	0x3fed7d1360ef58b8              # double 0.92151802952391559
	.quad	0x3fe4966cae14fd33              # double 0.64336236954105741
	.quad	0x3fe910ca7038d9ae              # double 0.7832996551358542
	.quad	0x3fd147ebc2dd6f64              # double 0.27001470594199461
	.quad	0x3fa781985b1d4420              # double 0.045910607454637153
	.quad	0x3fd93a8e8355d568              # double 0.39419901681625058
	.quad	0x3fd868b7d324bc58              # double 0.38139148349268259
	.quad	0x3fecedc09e33041a              # double 0.90402251146599899
	.quad	0x3fc02b685a4011a8              # double 0.12632469565154492
	.quad	0x3fe8e5cceda8b55f              # double 0.77805181901718956
	.quad	0x3fc085c05e9cd52c              # double 0.12908177013165678
	.quad	0x3fd61d9ede0bb6c8              # double 0.34555789646297486
	.quad	0x3fecd0f2b23f01ea              # double 0.90050635160156145
	.quad	0x3fee554021406649              # double 0.94790655607648333
	.quad	0x3fe30b0d857ef966              # double 0.59509922097622048
	.quad	0x3fbf8b538cfd9f98              # double 0.12321970169216312
	.quad	0x3fe76252a68e923f              # double 0.73075230150840997
	.quad	0x3fc3a4e1b2b56670              # double 0.15346928812032301
	.quad	0x3fd3297998481bee              # double 0.29940643187768401
	.quad	0x3fd801f714532bf8              # double 0.37511994347431665
	.quad	0x3fd7d841b061bf22              # double 0.37257425522601484
	.quad	0x3fe7545faa0b779f              # double 0.72904952251314004
	.quad	0x3fec7148f9a3c449              # double 0.88882874257809263
	.quad	0x3fd2b0ec72d5c726              # double 0.29204856123316103
	.quad	0x3fc5d885411f5774              # double 0.17067018203550399
	.quad	0x3fe88e31692cf9a5              # double 0.76735754530073008
	.quad	0x3fdcf4f59262b812              # double 0.4524511270091135
	.quad	0x3fc3fb926c0b1cb4              # double 0.15611486697728127
	.quad	0x3fdbbe82a3b5e194              # double 0.43350282657004269
	.quad	0x3fe7f22fc00ac160              # double 0.74831378467755982
	.quad	0x3fe111434d85a608              # double 0.53335728779819735
	.quad	0x3f8548166c40c680              # double 0.010391402414913431
	.quad	0x3fddaf8932e4f5ac              # double 0.46383886308816602
	.quad	0x3fe4d9c65fd56268              # double 0.65158385007368924
	.quad	0x3fe1507fb22a8e6a              # double 0.54107651517956623
	.quad	0x3fe37f0774e612b7              # double 0.60925648528844689
	.quad	0x3fccb1ee63bc9084              # double 0.22418002958250238
	.quad	0x3fe32337a1e80ec7              # double 0.59804898855551236
	.quad	0x3fe94bbbe4889a80              # double 0.7904948676630994
	.quad	0x3fc6cb09b853296c              # double 0.17807122707592826
	.quad	0x3fc0c530f1700720              # double 0.13101779736467112
	.quad	0x3fe2a1f279ae5478              # double 0.58226894155326558
	.quad	0x3fc4e6af4a577854              # double 0.16328993921246371
	.quad	0x3fe292a986f172ce              # double 0.58040310245595506
	.quad	0x3fddc22402f5abc6              # double 0.46497440613773866
	.quad	0x3fef691a42faf633              # double 0.98157990533917993
	.quad	0x3fe4b8236a7f61cd              # double 0.64747782516774921
	.quad	0x3feb6e2afdf22288              # double 0.85719823454663047
	.quad	0x3fd3b025f4ef1f9e              # double 0.30762623710006121
	.quad	0x3fe0f5e1d067f484              # double 0.53001490310965993
	.quad	0x3fde9333839162dc              # double 0.47773444984845326
	.quad	0x3fecccc74d0e946d              # double 0.89999737787424083
	.quad	0x3fead14ec07a20a3              # double 0.83805024712730292
	.quad	0x3fe7182edb6a6cb3              # double 0.72170203070290595
	.quad	0x3fce3ae2de1ea5c4              # double 0.23617206426324178
	.quad	0x3fe749613725e952              # double 0.7277074887381707
	.quad	0x3feace36a258f844              # double 0.83767253597739754
	.quad	0x3fd807ac795367ee              # double 0.37546836708281617
	.quad	0x3fea37f0f9bf284e              # double 0.81932877329496434
	.quad	0x3fe18261e4322455              # double 0.54716581887727023
	.quad	0x3fd7d7941786ab9e              # double 0.37253286645380423
	.quad	0x3fcde75935f2bd78              # double 0.23362269529523494
	.quad	0x3fdc79b8e5bef9fa              # double 0.44492933689244263
	.quad	0x3fd5e7b799a3710e              # double 0.34226789478067665
	.quad	0x3fceb21229e31978              # double 0.23980929417866625
	.quad	0x3fedfd7f8b6a37ae              # double 0.93719460706210156
	.quad	0x3f913ce96d0a8ec0              # double 0.01683392265353123
	.quad	0x3fe0a40448e033a6              # double 0.520021574340366
	.quad	0x3fe517d2f8eefb13              # double 0.65915821666553354
	.quad	0x3fd445269b1b2728              # double 0.3167206301410368
	.quad	0x3fe95e2553625d03              # double 0.7927424076650883
	.quad	0x3fce9d15e3658e00              # double 0.23916886905054469
	.quad	0x3fe2a56a0633cfd1              # double 0.58269215785412076
	.quad	0x3fe09dd5b0684f9c              # double 0.51926693396170576
	.quad	0x3fe1c64b0d612241              # double 0.55545570958299362
	.quad	0x3fdf460e235a5e66              # double 0.48865083172265711
	.quad	0x3fe1c32ac43462f0              # double 0.55507410355775555
	.quad	0x3fe0905054defc28              # double 0.51761643005727809
	.quad	0x3fdb23f88ae25bb6              # double 0.42407048762236899
	.quad	0x3fe5af38c330cd4d              # double 0.67763937113924444
	.quad	0x3fd1ca88e3cb76d4              # double 0.2779867386396806
	.quad	0x3fed536fa0dc9dc4              # double 0.91643506449047906
	.quad	0x3fe00d61e33ccfc2              # double 0.50163359052975687
	.quad	0x3febcfe71fa0ef03              # double 0.86912876298399089
	.quad	0x3fed4cc62fca9f03              # double 0.91562184652590906
	.quad	0x3fde343097cd7334              # double 0.47193541359392843
	.quad	0x3f9676fd5d33d160              # double 0.021938284696220278
	.quad	0x3fe12562bc7b3f8c              # double 0.53581368267804086
	.quad	0x3fd36f821037ce96              # double 0.30368091186321899
	.quad	0x3fe6b851e30913c1              # double 0.70999998419630839
	.quad	0x3fb099571cd112c8              # double 0.064839787040067098
	.quad	0x3f8c6a4e0daa2300              # double 0.013874635498056787
	.quad	0x3fe5ff08d59ee6ca              # double 0.68738214228434313
	.quad	0x3fb6f8d3f03da148              # double 0.089734312202954247
	.quad	0x3fe0fe6386b7436e              # double 0.53105331718152882
	.quad	0x3fea9f1fdd1d71bd              # double 0.83192437349821768
	.quad	0x3fc037190aafe190              # double 0.12668145200565251
	.quad	0x3fd291b02554c5cc              # double 0.29014209409350822
	.quad	0x3fbc84b3b621a498              # double 0.11139987179344002
	.quad	0x3fedbd0911c51bf5              # double 0.9293256136960496
	.quad	0x3fe3dab698201602              # double 0.6204483958433118
	.quad	0x3fee7926863ebb07              # double 0.95228887767538672
	.quad	0x3fda3a7da8a57144              # double 0.40981999844895634
	.quad	0x3fd89c9c1161fa36              # double 0.38455869386226327
	.quad	0x3fd0c9d700b4fae8              # double 0.26231932705915861
	.quad	0x3f9eaf32593a06e0              # double 0.029965197273219668
	.quad	0x3fe5aa5b4d3a407e              # double 0.67704548915391149
	.quad	0x3fee00c4b78db3ae              # double 0.93759380197808695
	.quad	0x3fdc97f15bf765d6              # double 0.44677385312169571
	.quad	0x3fc3f51ed6c3ebbc              # double 0.15591798292720493
	.quad	0x3f997a4e998ad800              # double 0.024880626794320904
	.quad	0x3fe2296dac07dba0              # double 0.56755717849488363
	.quad	0x3fdbe62daf92e83a              # double 0.43592397828945517
	.quad	0x3fd71725b10d4e8a              # double 0.3607877949736823
	.quad	0x3feb21ec0234bd79              # double 0.84789085799086117
	.quad	0x3fe12670ace4c695              # double 0.53594239967624679
	.quad	0x3fe33499a5d99b8f              # double 0.60017092125495874
	.quad	0x3fe113c387971949              # double 0.533662571739833
	.quad	0x3fb89e11d2dae820              # double 0.096161951044365867
	.quad	0x3fe7e839e4fff6f7              # double 0.74709791876349996
	.quad	0x3fd32259adb68fde              # double 0.29897157634900207
	.quad	0x3fe58d888325b5a3              # double 0.67352700819690303
	.quad	0x3fdc25ecff2057ba              # double 0.43981480517083649
	.quad	0x3fec7c0dfda480d0              # double 0.89014339007919752
	.quad	0x3fe0d2dc22c7a285              # double 0.52573973458227441
	.quad	0x3febd51242524c56              # double 0.86975968316472563
	.quad	0x3fe8168da078e2ac              # double 0.75275307981708783
	.quad	0x3fe9dd906248d09b              # double 0.80829638668230375
	.quad	0x3fd16de5bfbb949c              # double 0.27233260845088991
	.quad	0x3febefd1f4f2a7e8              # double 0.87302491990453479
	.quad	0x3fb268a29dc3af40              # double 0.071909106747338747
	.quad	0x3fdfc7d272ea8116              # double 0.4965711710192563
	.quad	0x3fd87203c3cf19e4              # double 0.3819589054295689
	.quad	0x3fcfc49725ec47b4              # double 0.24818696357448078
	.quad	0x3fe30a12c2813a96              # double 0.59497964848727025
	.quad	0x3fddd52e1aab433a              # double 0.46613648037332533
	.quad	0x3fd6970de4eee6de              # double 0.35296962124594511
	.quad	0x3fe177ac805e8114              # double 0.54585862228489868
	.quad	0x3fb2f5cb37fbc280              # double 0.074063016097861478
	.quad	0x3fe4b58587f5e909              # double 0.64715839915086903
	.quad	0x3fe3877548e5ece9              # double 0.6102854179183882
	.quad	0x3fdeeaa479e5cc6a              # double 0.48307144073550623
	.quad	0x3fd6c8922e40d52c              # double 0.35599188343924726
	.quad	0x3fa3dc8c158edbd0              # double 0.038792016631695625
	.quad	0x3fe02302a0baf34d              # double 0.50427371399528342
	.quad	0x3fe2b009202f62d6              # double 0.5839887264838477
	.quad	0x3fbe170dbd292638              # double 0.11753927105123629
	.quad	0x3fed615b176793eb              # double 0.91813425608836263
	.quad	0x3fe8bc33a2fe3fc0              # double 0.77297384104348765
	.quad	0x3fddd9dce91c7774              # double 0.46642229809537317
	.quad	0x3fea444816d28dac              # double 0.82083515603556156
	.quad	0x3fb227248d47a130              # double 0.070909771434916946
	.quad	0x3fe1c5b95b228aae              # double 0.55538623618880023
	.quad	0x3fd5cdf190f51540              # double 0.34069480091087101
	.quad	0x3fe27029064f4103              # double 0.57619143707600562
	.quad	0x3fc62f9073e133dc              # double 0.17332654627025945
	.quad	0x3feaef084598de1b              # double 0.8416787490195391
	.quad	0x3fe144165f82df69              # double 0.53956144957099383
	.quad	0x3fe927228ab03131              # double 0.78602721297787614
	.quad	0x3fd2414b1e0c3ae8              # double 0.28523519453385271
	.quad	0x3fe6cc40a393dde2              # double 0.71243316601515638
	.quad	0x3fe2142f7cc9a7f0              # double 0.5649640500316746
	.quad	0x3fecdecee9c2a2cb              # double 0.90219827324207225
	.quad	0x3feceb3b35effc47              # double 0.90371475729615092
	.quad	0x3fd7da9b016638b6              # double 0.37271762024546307
	.quad	0x3fe30f9fd18b51f7              # double 0.59565726210217818
	.quad	0x3feb1da012ff1e25              # double 0.84736636839165114
	.quad	0x3fe2b8f85d97900e              # double 0.58507936744399713
	.quad	0x3fc20f6afb8b8e24              # double 0.14109551699139999
	.quad	0x3fbf95574f7de300              # double 0.12337251368252211
	.quad	0x3fb24fc2edf28aa0              # double 0.071529563038476685
	.quad	0x3fdcdb7f74960160              # double 0.45089708695743091
	.quad	0x3fe2062bc5bb9f38              # double 0.56325329417902648
	.quad	0x3fd4ab95a34f107a              # double 0.32297268818025027
	.quad	0x3fb3f25abcb67ea8              # double 0.077916785309293801
	.quad	0x3fd55b79fe8b50aa              # double 0.3337082849295806
	.quad	0x3fe56f5144c254ed              # double 0.66983855657113411
	.quad	0x3fdc0de12f4746c8              # double 0.43834714524301122
	.quad	0x3fdf5d21e93a5782              # double 0.49005935455476657
	.quad	0x3fdd1e9cab5d2534              # double 0.45499340758086082
	.quad	0x3fdb914e8e432b32              # double 0.43074382679758394
	.quad	0x3fcc2e8577e89780              # double 0.22016971926603546
	.quad	0x3fcc5662633e8ae8              # double 0.22138624044335775
	.quad	0x3fa2c25ee7aef110              # double 0.036639180928860537
	.quad	0x3fe584152832f77e              # double 0.67237336970696027
	.quad	0x3fdf0c090bde6f2a              # double 0.48510957869597127
	.quad	0x3fedf67675f97e92              # double 0.93633578340446122
	.quad	0x3fe676e5d12a0072              # double 0.70201388218266758
	.quad	0x3fc8096de2457118              # double 0.18778775738145081
	.quad	0x3fc40836ca300c2c              # double 0.15650067207761376
	.quad	0x3fe8c893cf2165f4              # double 0.77448454337280603
	.quad	0x3fd1381b0a437cfc              # double 0.2690494156103822
	.quad	0x3fee17c20f17d43e              # double 0.94040015170924796
	.quad	0x3f820f2d61da6b80              # double 0.0088180108535220736
	.quad	0x3fd8f2a6858e5eb8              # double 0.38981020968047231
	.quad	0x3fe71a55750ee573              # double 0.72196457732131447
	.quad	0x3fdb7eae7a6494c2              # double 0.42960702850752963
	.quad	0x3fdf38d1e4ef6ea2              # double 0.48784301144562836
	.quad	0x3fee47de7b66864f              # double 0.94627307988793941
	.quad	0x3fdbad746070d32c              # double 0.4324618284038475
	.quad	0x3fdc7eade7d99ff8              # double 0.445231892028914
	.quad	0x3fec86c4bdc6720e              # double 0.89145123544182225
	.quad	0x3fc2717e1fed80a4              # double 0.14408852156612284
	.quad	0x3fe1b179e35b2793              # double 0.55291456609232836
	.quad	0x3fefbe86252c0f9b              # double 0.9920073247926554
	.quad	0x3fe3f90b5795c290              # double 0.6241509161610157
	.quad	0x3fd4a852cc6f309a              # double 0.32277364696779787
	.quad	0x3fd13e34fc9c934e              # double 0.2694218127165201
	.quad	0x3fd033118d67c092              # double 0.25311697777852615
	.quad	0x3fec30c79b4387a0              # double 0.8809545547958244
	.quad	0x3fe6977147df5312              # double 0.7059866336590821
	.quad	0x3fdf1de3eec8da80              # double 0.48619936293417965
	.quad	0x3fde11b061bc7a74              # double 0.46982965035014179
	.quad	0x3fdd9f28c65d6f4e              # double 0.4628393113286976
	.quad	0x3fefd0e3497b5f6d              # double 0.99424900390566295
	.quad	0x3fe835c86c58071a              # double 0.75656529580030285
	.quad	0x3fe7676d0ba4fd8d              # double 0.73137523912730418
	.quad	0x3f93319fce335ba0              # double 0.018743988953101032
	.quad	0x3fdf2a73afccced0              # double 0.4869660584256339
	.quad	0x3fbd9cec660a4630              # double 0.11567571154798695
	.quad	0x3fefbc5534a5f483              # double 0.99173984797347747
	.quad	0x3fd4880a43b125d0              # double 0.32080322847886311
	.quad	0x3fe15d1c5cf1c412              # double 0.54261606362536186
	.quad	0x3fe78d5eb9af996c              # double 0.7360070826223768
	.quad	0x3fc2e9b435f11c74              # double 0.14775707849387099
	.quad	0x3f69edf1a3837900              # double 0.003165218306192874
	.quad	0x3f9961c0c35ace60              # double 0.02478696052885565
	.quad	0x3f99caed854cd560              # double 0.025188170681948008
	.quad	0x3fba72dd67f6a658              # double 0.10331519878550333
	.quad	0x3fdfa508c6c7ac46              # double 0.49444789325815852
	.quad	0x3fe3b2edb409d181              # double 0.61559186137905908
	.quad	0x3fe91f5d22c90104              # double 0.78507859033564431
	.quad	0x3fe07d91a533f0c9              # double 0.51532823816480644
	.quad	0x3f996f14b9bbb800              # double 0.024837802730807823
	.quad	0x3fd8b4a7d565219e              # double 0.38602634276733194
	.quad	0x3feabf904a8d7f69              # double 0.83588423310355353
	.quad	0x3fe2228c58ad709f              # double 0.56671731300186312
	.quad	0x3fe85cea5864f1d6              # double 0.76134221329226182
	.quad	0x3fe3687f350c947d              # double 0.60650596963081649
	.quad	0x3fe4c6026f294f63              # double 0.64917108260349854
	.quad	0x3fd079366ebffec8              # double 0.2573982316534793
	.quad	0x3fe66da1f0a1683b              # double 0.7008828830541981
	.quad	0x3fda94ba2d3c9744              # double 0.41532759111065709
	.quad	0x3fe289a2e94a296b              # double 0.57930131496804671
	.quad	0x3fee3f1f094a4f8f              # double 0.94520522894389269
	.quad	0x3fa13d42e4d633c0              # double 0.033670511659785074
	.quad	0x3fed1383c3d94d33              # double 0.90863216640210565
	.quad	0x3fd3eaf5834f3622              # double 0.31121576140580676
	.quad	0x3fe3d95e10bae645              # double 0.62028411166756625
	.quad	0x3fe08c715fd57cc0              # double 0.51714390485349071
	.quad	0x3fef9cd843807ce2              # double 0.98789609130826883
	.quad	0x3fefd29be0ce4771              # double 0.99445909411791266
	.quad	0x3fe6f727405e2f1c              # double 0.71767008373123842
	.quad	0x3fd07e19c4b34b92              # double 0.25769657334347429
	.quad	0x3fef677a06cfd261              # double 0.98138142900877423
	.quad	0x3fe9938ee8373154              # double 0.79926247934921912
	.quad	0x3fde887cd39d5a04              # double 0.47708054223531371
	.quad	0x3fee464640944573              # double 0.94607842076417936
	.quad	0x3fb7d3381babe230              # double 0.093066698795049473
	.quad	0x3fe8e091c1256411              # double 0.77741325115050774
	.quad	0x3fd883007f64eba4              # double 0.38299572411386351
	.quad	0x3fe7bc1ff7093533              # double 0.74171446084225179
	.quad	0x3fdd0a4e40de06d0              # double 0.4537540086240428
	.quad	0x3fed88aa0c1f4669              # double 0.92293264739619219
	.quad	0x3facc0caa898a340              # double 0.056158383446307969
	.quad	0x3fee23e1816171eb              # double 0.94187999028832559
	.quad	0x3fea128973f5a5e4              # double 0.8147628083071905
	.quad	0x3fe8087eb98d2cfd              # double 0.75103698959847487
	.quad	0x3fec48061fc594b3              # double 0.88379198270253878
	.quad	0x3fe2b81affc42611              # double 0.58497381166779594
	.quad	0x3fed026568a6089e              # double 0.90654249610112791
	.quad	0x3fd7a95af28ac002              # double 0.36971162496320187
	.quad	0x3fe829467c66c891              # double 0.75503849312942084
	.quad	0x3fe841f78302f47c              # double 0.7580525931185913
	.quad	0x3fc9bb22ef443a70              # double 0.2010234516423739
	.quad	0x3fd55f8153b35034              # double 0.33395417379256576
	.quad	0x3fe4dc91d30a96bb              # double 0.65192500323310953
	.quad	0x3f9e0d58df9c8800              # double 0.029347790382537653
	.quad	0x3fc9962b250795cc              # double 0.19989527996146561
	.quad	0x3fb465132c0d6140              # double 0.079667280440280486
	.quad	0x3fbfda5ded4a6d58              # double 0.12442576449614273
	.quad	0x3fcc13ab5d9bb0c4              # double 0.21935026236258726
	.quad	0x3fd8ccec1f48bc88              # double 0.38750746779528145
	.quad	0x3fec9722be99f71a              # double 0.89344918467370182
	.quad	0x3fd9ac757a1f935e              # double 0.40115105558498054
	.quad	0x3fd10f544fcde7dc              # double 0.2665606288279585
	.quad	0x3fe3bd8fba5ff4c3              # double 0.61688982392629332
	.quad	0x3fdd84dda4d30fa8              # double 0.4612344846357197
	.quad	0x3fe14c8abfd804ed              # double 0.54059350461480238
	.quad	0x3fe5d5706d2cdda1              # double 0.68230458567898122
	.quad	0x3fe41ae969c34ade              # double 0.62828512818154159
	.quad	0x3fb2b1aa0d1ec338              # double 0.073023441508451081
	.quad	0x3fdeaebd6d2ebbca              # double 0.4794152799831265
	.quad	0x3fb33eb590b14fd0              # double 0.075175617051456145
	.quad	0x3fbb30d72e1f4540              # double 0.10621399761227668
	.quad	0x3fc55f5496825f40              # double 0.16697175358853578
	.quad	0x3fbbfe548a06e140              # double 0.10934952134892217
	.quad	0x3fb006d5d153b668              # double 0.062604297261452779
	.quad	0x3fec31de90a8219f              # double 0.88108757260583903
	.quad	0x3fe726e5df52ba9a              # double 0.72349828355602885
	.quad	0x3fed9e87fb7a88b4              # double 0.92560195080684204
	.quad	0x3fe44846adcc3223              # double 0.63382276482440536
	.quad	0x3fc28736159eb440              # double 0.14475132041607885
	.quad	0x3fd0a48b99e1a97e              # double 0.26004304912080289
	.quad	0x3fa2fbc396a72d60              # double 0.037077057018531034
	.quad	0x3fe2c57c8e564554              # double 0.58660724449343116
	.quad	0x3fd449d4e5e8545c              # double 0.31700632526309902
	.quad	0x3fb6f30d873213d8              # double 0.089646192080251708
	.quad	0x3fec6391dce7a605              # double 0.88715451379283705
	.quad	0x3fdc515ac9f4b4ee              # double 0.44246549341444463
	.quad	0x3f88db8bc3236000              # double 0.012137500660557521
	.quad	0x3fe39107986c6047              # double 0.61145381708320989
	.quad	0x3f66f10d9ca90400              # double 0.0028004899843669939
	.quad	0x3fc193dc081cf078              # double 0.13732481380600681
	.quad	0x3fd6c94d9dd40968              # double 0.35603657162587021
	.quad	0x3fe96c0d0a0e7d5f              # double 0.7944398113649348
	.quad	0x3fd5c1c403df63da              # double 0.33995151880440988
	.quad	0x3fbd50c90f3a07c0              # double 0.11451393720383773
	.quad	0x3fcdf4996ea7ee04              # double 0.23402707961200531
	.quad	0x3fd2081d62bac97e              # double 0.28174528733793369
	.quad	0x3fecb05b8c837ba3              # double 0.89652802890838179
	.quad	0x3fb98f9cb1127118              # double 0.099847596388319082
	.quad	0x3f95a6264b52dfc0              # double 0.021141622874637056
	.quad	0x3fd53a3b638445ae              # double 0.33167919844080529
	.quad	0x3fd788a79fd4c6c6              # double 0.36771574600707557
	.quad	0x3fe7c7d37ac8f76e              # double 0.74314283353281296
	.quad	0x3fe89a4da46babee              # double 0.76883585084340011
	.quad	0x3fb57ec995cbdb60              # double 0.083965872832647559
	.quad	0x3fe4449eda1476e9              # double 0.63337652772653741
	.quad	0x3fe6c290825e68e1              # double 0.7112505480065715
	.quad	0x3fe803165ba5dabe              # double 0.75037687206243908
	.quad	0x3fe5854a2b6e1fee              # double 0.67252071840721128
	.quad	0x3fe90f4fae42783c              # double 0.78311904940688448
	.quad	0x3fd97593ec6350bc              # double 0.39780138096581275
	.quad	0x3fe860d0ebe1c96d              # double 0.76181837149333165
	.quad	0x3fe1601d9faefe5e              # double 0.54298287571141279
	.quad	0x3febf85c8328d087              # double 0.87406755082203424
	.quad	0x3fe4d3c7012fa279              # double 0.65085172874121533
	.quad	0x3fef0c9c5ca2dee8              # double 0.97028940289507392
	.quad	0x3fe80bb1851fd400              # double 0.75142742157788689
	.quad	0x3feaf63ffed3299f              # double 0.8425598122642447
	.quad	0x3fd369aeb929105e              # double 0.3033253486830797
	.quad	0x3fe5dd07463519cb              # double 0.6832310076941267
	.quad	0x3fbdcb9b3fb21c38              # double 0.11638803772994855
	.quad	0x3fe9a7bed0995a3a              # double 0.80172672979353554
	.quad	0x3fe7f22d83d00848              # double 0.74831271881726824
	.quad	0x3fd115f124537248              # double 0.26696423099000244
	.quad	0x3fea3e0995bb9940              # double 0.82007292980851076
	.quad	0x3fc81cdf0350b060              # double 0.18838107740282606
	.quad	0x3fd05baf4a634f54              # double 0.25559599174925052
	.quad	0x3fe322d0d043c93a              # double 0.59799996067730565
	.quad	0x3fd6b8e29b3b04b6              # double 0.35503449591858371
	.quad	0x3fe26357b9d1fbf5              # double 0.57462679188745247
	.quad	0x3feb0676ceda8218              # double 0.84453907395442496
	.quad	0x3fe4ed9d661d874b              # double 0.65400571770099114
	.quad	0x3fd32e6b115c2674              # double 0.29970814414318814
	.quad	0x3fe820994e18c615              # double 0.75397935155177953
	.quad	0x3fb53f332fa8adf0              # double 0.082995604644274356
	.quad	0x3fae2fecd28bda00              # double 0.058959389401866957
	.quad	0x3f8336e8aa4280c0              # double 0.0093820740660820467
	.quad	0x3fe2340cee4da3eb              # double 0.56885382217035152
	.quad	0x3fdbb2f5f7956d12              # double 0.43279790094466464
	.quad	0x3fe38f047e8cb839              # double 0.6112081977532916
	.quad	0x3feb060473237548              # double 0.84448454368581682
	.quad	0x3fd3401d663064ac              # double 0.30078825930975017
	.quad	0x3fe2a169a51c6868              # double 0.58220369575725517
	.quad	0x3fd55c0e71286422              # double 0.33374367762150048
	.quad	0x3fe35fd144b347d4              # double 0.60544646661787249
	.quad	0x3fe3b18e88df3e47              # double 0.61542441113301372
	.quad	0x3fe79aeff6ade94a              # double 0.7376632516818884
	.quad	0x3fecc8f01f119dd5              # double 0.89952856128814551
	.quad	0x3fe273e35b2a7130              # double 0.57664649778192789
	.quad	0x3febc1ddff519347              # double 0.86741542689251439
	.quad	0x3f9bc84e4b577560              # double 0.027131293629158448
	.quad	0x3fdc23ffd1af66ce              # double 0.43969722249094623
	.quad	0x3fe44ad5dd435584              # double 0.63413518157419491
	.quad	0x3fc0bbfcdae71ca8              # double 0.1307369297848926
	.quad	0x3fe4a65926003def              # double 0.64530618116435601
	.quad	0x3fec46ecab520d03              # double 0.8836577745536548
	.quad	0x3fd5b16df980a286              # double 0.33895444264866403
	.quad	0x3fc8ae83614755b8              # double 0.19282572030958334
	.quad	0x3febe4996b49eee5              # double 0.87165518717617074
	.quad	0x3fd734ea4149f0da              # double 0.36260467887747228
	.quad	0x3fe55e2a13415b1d              # double 0.66774467240142921
	.quad	0x3fe882d1547970c7              # double 0.76596895693685318
	.quad	0x3fe9e94dc865dad4              # double 0.80972947254380267
	.quad	0x3fb565ad9195dd20              # double 0.083582733195602277
	.quad	0x3fe14667fa9f058d              # double 0.53984450292061725
	.quad	0x3feaff90254dd393              # double 0.84369666372241381
	.quad	0x3fe592e372a42042              # double 0.67418072119563299
	.quad	0x3fc1755354ec6134              # double 0.13639299055717802
	.quad	0x3fa5f93394cd50d0              # double 0.042916881479557412
	.quad	0x3fe609e7f5fd5c5f              # double 0.6887092403875491
	.quad	0x3fd0265f76ed725a              # double 0.25234209646240446
	.quad	0x3fe6e7fd31ba4e76              # double 0.71581897461369581
	.quad	0x3fed8db9bf1994c4              # double 0.92355048488811819
	.quad	0x3fe8fceab8b4a684              # double 0.78087364268613201
	.quad	0x3fe571e496462faf              # double 0.67015294409201498
	.quad	0x3fe0ad708c173999              # double 0.52117183076352369
	.quad	0x3fe5a3c62e889b8b              # double 0.67624196137045212
	.quad	0x3fe80dc82be438e2              # double 0.75168236324841708
	.quad	0x3fe488547e36c916              # double 0.64164185191319478
	.quad	0x3fd32431e6e312b0              # double 0.29908416316565489
	.quad	0x3fe124cb8bb6ef3a              # double 0.53574158943181449
	.quad	0x3fd9de448c876686              # double 0.40419114802862344
	.quad	0x3fd2611c25395fe6              # double 0.2871771205441277
	.quad	0x3fec67e515ea69ab              # double 0.887682478717854
	.quad	0x3fefe24a67a91c1b              # double 0.99637336965759304
	.quad	0x3fe1e68ca7cbe88f              # double 0.55939324162251747
	.quad	0x3fc3650b88ff42b0              # double 0.15152115048706127
	.quad	0x3fbb8fb085220d58              # double 0.1076612782508638
	.quad	0x3fe3f3f4f94e51a5              # double 0.62352989857258889
	.quad	0x3fe850ac3b27d28f              # double 0.75984775117702152
	.quad	0x3fe970ba9dfd6076              # double 0.79501086099027307
	.quad	0x3fb08491d8582128              # double 0.064522853201314789
	.quad	0x3fcb3bd9ff5b53e4              # double 0.2127640244349599
	.quad	0x3fdab30d0c297b8e              # double 0.41717840373706216
	.quad	0x3fb55644f9ffc610              # double 0.083347617182674804
	.quad	0x3f9d21c26c4fcb00              # double 0.028449094639607431
	.quad	0x3fcbe4c87eb19388              # double 0.21791940866674175
	.quad	0x3fe68814e4465c9c              # double 0.70411152443820724
	.quad	0x3fd783b388520122              # double 0.36741340935260969
	.quad	0x3fa5e727970ce350              # double 0.042779195011866222
	.quad	0x3fdfb5ba3ab56a12              # double 0.49546676381365373
	.quad	0x3fe47c090488e75a              # double 0.64014101873111007
	.quad	0x3fef9c743acbb469              # double 0.98784839137591717
	.quad	0x3fba338486929ac8              # double 0.10234859738794022
	.quad	0x3fdd9a22a8c2deba              # double 0.46253267746531501
	.quad	0x3fefb9f4c8f8fa6d              # double 0.99144973041968642
	.quad	0x3fd7fa8454c35c0a              # double 0.3746653392567515
	.quad	0x3fead526caa5eb71              # double 0.83851947383605652
	.quad	0x3fd1a74e699cc67a              # double 0.27583656610213547
	.quad	0x3fe81e99202a2f9e              # double 0.75373512537179344
	.quad	0x3fd705de2094a59e              # double 0.35973313504890736
	.quad	0x3fe94611943cdf49              # double 0.78980330422107514
	.quad	0x3fe09a4ba5e5e038              # double 0.51883489992088183
	.quad	0x3fde1ee0a5fbf9e2              # double 0.47063461503412729
	.quad	0x3fbdaac72ef72468              # double 0.11588711639991944
	.quad	0x3fe5fa56ea545793              # double 0.68680902259323984
	.quad	0x3fcbb1f3b6b4a34c              # double 0.21636816426441852
	.quad	0x3fe61f32c6b0aa89              # double 0.69130839163456514
	.quad	0x3fe946efb0c4a681              # double 0.78990921521217683
	.quad	0x3feacdc972652895              # double 0.83762047140887097
	.quad	0x3fea006b4cdc9831              # double 0.81255116474199529
	.quad	0x3fc55ce518c83844              # double 0.1668974276548757
	.quad	0x3fe4daf95b619814              # double 0.65173023078819137
	.quad	0x3fe357bee0c98192              # double 0.60446113494622211
	.quad	0x3fe2221fa3b6ec34              # double 0.5666654775190012
	.quad	0x3fe248b9cd178d85              # double 0.57137765938789242
	.quad	0x3fd5745d0d3d52ec              # double 0.33522726338314501
	.quad	0x3fe19771ad680154              # double 0.54973682278072511
	.quad	0x3fe4c805d16e19e5              # double 0.64941683677971851
	.quad	0x3fb214faf49ea8e8              # double 0.070632633897421138
	.quad	0x3fea511eaf6d8468              # double 0.8224023271869898
	.quad	0x3fd8029531eada64              # double 0.37515764116998285
	.quad	0x3fe1d3142a2185f0              # double 0.55701645115567366
	.quad	0x3fea0be78ce329b6              # double 0.81395318524419369
	.quad	0x3fcae384980ec480              # double 0.21006829666797344
	.quad	0x3fe9abf19b989b8d              # double 0.80223923101299166
	.quad	0x3fe13c6d4e251f25              # double 0.53862633955666139
	.quad	0x3f92b425688d0900              # double 0.018265327936441089
	.quad	0x3fdbb70daff1f25c              # double 0.4330476968969259
	.quad	0x3fe8082c2bf0dbcf              # double 0.75099762518117952
	.quad	0x3fd9ec3718a50688              # double 0.40504243284895169
	.quad	0x3fcf5d4c697a1110              # double 0.24503474378810397
	.quad	0x3fb0aabddc27da70              # double 0.065105310677475492
	.quad	0x3fee32f9ea51c675              # double 0.94372268453135055
	.quad	0x3fc636160bcb4aa8              # double 0.17352557731517959
	.quad	0x3fd810ab3e060efe              # double 0.37601738984106692
	.quad	0x3feeb43d92557ee7              # double 0.95950201588490535
	.quad	0x3fe48c5d7b15b503              # double 0.64213441886900602
	.quad	0x3fe5883210813864              # double 0.67287543510043379
	.quad	0x3fc9bba7c27190e8              # double 0.20103928560559514
	.quad	0x3fed6fe9390abe60              # double 0.91991101399430519
	.quad	0x3fd07815630c276e              # double 0.25732931778531209
	.quad	0x3fdea710d3cfc410              # double 0.4789468830559267
	.quad	0x3fe354fbc0f25e1e              # double 0.60412395176803435
	.quad	0x3fe356e18cbc3f7f              # double 0.60435559737560129
	.quad	0x3fe2cecf799c878f              # double 0.5877454161857133
	.quad	0x3fef58652c2ae5f3              # double 0.97954043032149085
	.quad	0x3fd9def0e14e77b2              # double 0.40423223497952698
	.quad	0x3fd8166836c855f8              # double 0.37636761998996304
	.quad	0x3fa8c709e4e28540              # double 0.048393544378323217
	.quad	0x3fe48f2b98c95086              # double 0.64247684327212151
	.quad	0x3f97430dd62e1c00              # double 0.022716728398815889
	.quad	0x3fd27d01c3257876              # double 0.28887981469404822
	.quad	0x3fd3b6332c5c3880              # double 0.30799559909872443
	.quad	0x3fcea4a0266e6960              # double 0.23939897419479461
	.quad	0x3fdc597eba7cfb8a              # double 0.44296234332789963
	.quad	0x3fe621d7b3ad11b8              # double 0.69163117497423965
	.quad	0x3fd143f358dbf344              # double 0.26977237394003262
	.quad	0x3fe9043e6116ad01              # double 0.7817680259953762
	.quad	0x3fcdd8f0a7c14f28              # double 0.23318298522155456
	.quad	0x3fe4c5b068620e87              # double 0.64913196933089601
	.quad	0x3fbdb03193ca3e00              # double 0.11596975191263681
	.quad	0x3fcf5997707abee4              # double 0.24492161743318441
	.quad	0x3fed655ca1fef856              # double 0.91862327232207508
	.quad	0x3fda8b2819f1a20e              # double 0.41474344762403426
	.quad	0x3feca34c649748f1              # double 0.89493388792678108
	.quad	0x3f9aa986d15add20              # double 0.026037317779551761
	.quad	0x3fd8296b83b81b98              # double 0.37752807486725137
	.quad	0x3fe2d598fc4246eb              # double 0.58857392567935329
	.quad	0x3fd590c2c2fb9d6e              # double 0.33696049729629507
	.quad	0x3feaa7ee25709e7d              # double 0.83299929916843463
	.quad	0x3fe50ad5a982f064              # double 0.65757258517943429
	.quad	0x3fe20687d928ddf5              # double 0.56329719938270151
	.quad	0x3f9136847cb4b820              # double 0.016809530364462089
	.quad	0x3fe23ec547394e1e              # double 0.57016242895992142
	.quad	0x3fd9486acde10c46              # double 0.39504499535923221
	.quad	0x3fc1d94c58257564              # double 0.13944391540546086
	.quad	0x3fef7721d036ef13              # double 0.98329249064360835
	.quad	0x3fe122fbfb74567b              # double 0.53552054512211045
	.quad	0x3fea71dd5ef0c7dd              # double 0.8263995031650172
	.quad	0x3fe3cea5e00de27b              # double 0.61897557983964135
	.quad	0x3fc109b288fa7974              # double 0.13310844124221044
	.quad	0x3fe19e7b0556bc8d              # double 0.55059577028977602
	.quad	0x3fec0a5541607fcc              # double 0.8762613560575061
	.quad	0x3fbeaf18cd287bd8              # double 0.11985926636451383
	.quad	0x3fdc9049245bbf22              # double 0.44630650091765933
	.quad	0x3fd658236c22a1f8              # double 0.34912953910909961
	.quad	0x3fd6690b8b3fb450              # double 0.35016144369621305
	.quad	0x3fd14370cff60f56              # double 0.26974125202854304
	.quad	0x3feda4e1b592a859              # double 0.92637715781644225
	.quad	0x3fdd292edb7f83b4              # double 0.45563861308442744
	.quad	0x3fe18057f04cb0bb              # double 0.54691693242559525
	.quad	0x3fe734c556dab51f              # double 0.72519175494895538
	.quad	0x3f7cb934de10e980              # double 0.0070125641951171991
	.quad	0x3fe8ac93d7269402              # double 0.77106658956165597
	.quad	0x3fe7cae5736eedef              # double 0.74351761384553849
	.quad	0x3fb9fc8d81804ea0              # double 0.10150989925051102
	.quad	0x3fdbb4ea4b37f24a              # double 0.43291718812523483
	.quad	0x3f7f2a0b17c5b280              # double 0.0076084550204141843
	.quad	0x3f70a3c743559400              # double 0.0040624412261864862
	.quad	0x3fe500677de14303              # double 0.65629934869693363
	.quad	0x3fea6045e37e965d              # double 0.82425207550540913
	.quad	0x3fd1d7dad3869ae0              # double 0.27879973084274745
	.quad	0x3fd30a241c12514e              # double 0.29749396077501877
	.quad	0x3fe266fa3c808b32              # double 0.57507049385853848
	.quad	0x3f9d45c4bf0ce2e0              # double 0.028586458359515343
	.quad	0x3fd3d54d756cacce              # double 0.30989395587193946
	.quad	0x3fdea5b0eb56f27a              # double 0.47886298162828889
	.quad	0x3fd2aa3f742b0ec4              # double 0.29164110512304497
	.quad	0x3fdb1a628b0f3656              # double 0.42348540859243167
	.quad	0x3fe01f603bd154e1              # double 0.50383006747383885
	.quad	0x3fd0b6dcfb679846              # double 0.26116108466374433
	.quad	0x3fe48bf7028a386d              # double 0.64208555694655234
	.quad	0x3fde9a4dfe7ceb58              # double 0.47816800930347858
	.quad	0x3fe3bfc99b073ea3              # double 0.6171615627190089
	.quad	0x3fd7045807194e6c              # double 0.35964012807128287
	.quad	0x3fea72691093af4c              # double 0.82646611440348172
	.quad	0x3fd517061d2a71c6              # double 0.3295302662679912
	.quad	0x3fd559b296558354              # double 0.33359970742281075
	.quad	0x3fb2badb8cc05ce8              # double 0.073163720954073974
	.quad	0x3fe12b1864c3cc59              # double 0.53651065521843144
	.quad	0x3f984ae777e79480              # double 0.023723236745258891
	.quad	0x3f978efc55598fe0              # double 0.023006384572354821
	.quad	0x3fe056d0a2248ee0              # double 0.51059753101841565
	.quad	0x3faf2a45da1c0d60              # double 0.060869391321854094
	.quad	0x3fe28449555c72e0              # double 0.57864824936003956
	.quad	0x3fb7aca8c116c498              # double 0.092478320256093816
	.quad	0x3fe034092128b6c9              # double 0.50635200954794712
	.quad	0x3fdbb4ffb21e4e48              # double 0.43292229074834099
	.quad	0x3fd9807900e84778              # double 0.398466349493098
	.quad	0x3fe8dfab1a4b26b5              # double 0.77730326781712356
	.quad	0x3fe473cd7887d130              # double 0.63913606206054929
	.quad	0x3fd44517089c4626              # double 0.3167169174276715
	.quad	0x3fe1d23972ba6f57              # double 0.55691215904105718
	.quad	0x3fea9141f41e78ff              # double 0.83023164443491726
	.quad	0x3fc36190de13e98c              # double 0.15141497462884634
	.quad	0x3fe0cbcc07164c2a              # double 0.52487756141852526
	.quad	0x3fb699c1f31b9f90              # double 0.088283655025973795
	.quad	0x3fd3a789194c29ac              # double 0.30710055799922986
	.quad	0x3fdd02822650f936              # double 0.45327810041262084
	.quad	0x3fe256b2a6d6c6dc              # double 0.57308323465096178
	.quad	0x3fe0758e85fa937e              # double 0.51435018699395108
	.quad	0x3fc18d06ea8df8c0              # double 0.13711630299434852
	.quad	0x3fd1f6fad311a520              # double 0.28069944965553084
	.quad	0x3fea274649ef6f7d              # double 0.81729425850379267
	.quad	0x3fd764d137bc671e              # double 0.36552839701617923
	.quad	0x3f8d2f261fb5e8c0              # double 0.014250085680704294
	.quad	0x3feac73aa31c2eea              # double 0.8368199525588953
	.quad	0x3fee18972eef0d0a              # double 0.94050177733189
	.quad	0x3fc2fdc0eb5778ec              # double 0.14836894503873255
	.quad	0x3fe59c53988dce9f              # double 0.67533283038797609
	.quad	0x3fcc5d4942256a54              # double 0.22159686784546528
	.quad	0x3fb28113592b6210              # double 0.072282037038697178
	.quad	0x3fe1ba5c32ba5e15              # double 0.55399904163181424
	.quad	0x3fd24635dc814d58              # double 0.28553530248355719
	.quad	0x3fa5d00894eb2cc0              # double 0.042602794817491851
	.quad	0x3fd4c599fbc6e8fa              # double 0.32456063830944937
	.quad	0x3fee6b5e3e1252a6              # double 0.95060646174768659
	.quad	0x3fe1f54bd68f1ebc              # double 0.56119338899676263
	.quad	0x3fed68762085da7f              # double 0.91900163986322514
	.quad	0x3fed165fb2d3efe8              # double 0.90898117949791146
	.quad	0x3fe88eb31c14d87b              # double 0.76741939053205444
	.quad	0x3fe3981caf9471b7              # double 0.6123183659834045
	.quad	0x3fd8d9a86747c89e              # double 0.38828477941491168
	.quad	0x3fc24b8dd249e1e0              # double 0.14293072479246316
	.quad	0x3fc41c857b6b41c8              # double 0.15712040449444786
	.quad	0x3feb1b7594afaa58              # double 0.84710196533462589
	.quad	0x3feddd73dcef0a84              # double 0.93328278685687893
	.quad	0x3fe9b245870e387e              # double 0.80301166894948017
	.quad	0x3fc17fc74614173c              # double 0.1367119877033306
	.quad	0x3fe9089dd712d7f5              # double 0.78230182653965008
	.quad	0x3fdca782e71097a8              # double 0.44772408070491077
	.quad	0x3fdae206272df892              # double 0.42004541231279646
	.quad	0x3fc01f913ccb288c              # double 0.12596335857808005
	.quad	0x3fae7114f9503af0              # double 0.059456496652378621
	.quad	0x3fe6530b9c8b9f93              # double 0.69763737273477699
	.quad	0x3fcff03ae1022800              # double 0.24951873766650579
	.quad	0x3fe42ef32b6677d2              # double 0.63073118664373795
	.quad	0x3fe3ad32116d71cb              # double 0.61489203838169126
	.quad	0x3fd7dc41c80d361e              # double 0.3728184178952193
	.quad	0x3fe3e37fe7f0d45a              # double 0.62152095127988649
	.quad	0x3fb63ff3ac2afaa8              # double 0.086913327725577916
	.quad	0x3fe4ed1cd3bfe2c6              # double 0.65394440991720937
	.quad	0x3fd6452f3995df8a              # double 0.34797268508509005
	.quad	0x3fe05ec13db0f1b9              # double 0.51156675385532602
	.quad	0x3fd5cfe8b6745d0e              # double 0.34081476037813807
	.quad	0x3fe7ae9f3211b09c              # double 0.74006614474412258
	.quad	0x3fd52ef6279cd826              # double 0.33099130505013574
	.quad	0x3fd9ddc25860c22e              # double 0.40416010504398769
	.quad	0x3fed905b9d5623d1              # double 0.92387181024343523
	.quad	0x3fea62bea03b48de              # double 0.82455378813963498
	.quad	0x3fdc7030c1841e64              # double 0.44434756181769886
	.quad	0x3f9226cb4dfdcaa0              # double 0.017726112971511498
	.quad	0x3fc74bf37aaf20a0              # double 0.18200534334596785
	.quad	0x3fe07d373c2ffd21              # double 0.51528512721407449
	.quad	0x3fe6b6e6f63192a8              # double 0.70982692799278357
	.quad	0x3fe8bb9ac39f90f5              # double 0.77290094573666457
	.quad	0x3fe18f2953420d73              # double 0.54872576009112917
	.quad	0x3fe46df02c13ebec              # double 0.63842018708180381
	.quad	0x3fee0b696ecfcefb              # double 0.93889304774208371
	.quad	0x3fb38ff7b2a37900              # double 0.076415520775729107
	.quad	0x3fda76d854772386              # double 0.4135037255151065
	.quad	0x3fdcb4ba2de52128              # double 0.44853071672379707
	.quad	0x3feec2358ba45f48              # double 0.96120717309802561
	.quad	0x3feecba34db2e2a0              # double 0.96235814261952512
	.quad	0x3fddbb8106982d90              # double 0.46456933635700981
	.quad	0x3fef8041a1c5d490              # double 0.98440629574055727
	.quad	0x3fe9b6be1689f6ca              # double 0.80355743791707224
	.quad	0x3fa2b14cde762e90              # double 0.036508943706477059
	.quad	0x3fe7ca541e60be90              # double 0.74344831402955158
	.quad	0x3fba26e3fb5fe150              # double 0.10215592276643304
	.quad	0x3fe06d61afbfd217              # double 0.51335224462542584
	.quad	0x3fefd4215b713450              # double 0.9946448122005993
	.quad	0x3fe72bf04d04baef              # double 0.72411360781356204
	.quad	0x3fb3fa8147f49e08              # double 0.078041153018254872
	.quad	0x3fea1658009ee0cf              # double 0.81522750970091262
	.quad	0x3fc573fe014c301c              # double 0.16760230124816722
	.quad	0x3fec664211bddcf1              # double 0.88748267617384446
	.quad	0x3fda294af239228a              # double 0.40877030996902219
	.quad	0x3f9c147cb4cbfcc0              # double 0.027421902213060845
	.quad	0x3fd4c995da74bd1e              # double 0.32480379422755046
	.quad	0x3fd77603d0c739ba              # double 0.36657805813311095
	.quad	0x3f98853c11711700              # double 0.023945749821243645
	.quad	0x3fe75ee5f8d12f57              # double 0.73033426854224615
	.quad	0x3fd962db9f7d991e              # double 0.39665880751853588
	.quad	0x3fd50c9df6d4ac5c              # double 0.32889508347097318
	.quad	0x3fe4216e50a877e9              # double 0.62908092263728321
	.quad	0x3fd180132db32de4              # double 0.27344207251436914
	.quad	0x3fe48dff27146819              # double 0.6423335803294804
	.quad	0x3fe8cda39cdd92ae              # double 0.77510243070408591
	.quad	0x3fe4ee9f2d1fb711              # double 0.65412863553294376
	.quad	0x3fec0ad2982563c1              # double 0.87632112232233095
	.quad	0x3fd44f21453412de              # double 0.31732970960756102
	.quad	0x3fe1fb488d24f953              # double 0.56192424361487736
	.quad	0x3fd060e206118964              # double 0.25591326325061048
	.quad	0x3fe08b21bbc9efd3              # double 0.5169838588476473
	.quad	0x3fd19d284d6561e8              # double 0.2752171283550795
	.quad	0x3fe3039a230acb2c              # double 0.59418970913097757
	.quad	0x3fedd7ca90be9c01              # double 0.93259170790122436
	.quad	0x3fe4ca235953c2dc              # double 0.64967505881039811
	.quad	0x3fb074218fe5d798              # double 0.06427201998834986
	.quad	0x3fcee8a6870aab24              # double 0.24147492975074514
	.quad	0x3fea851034f0e882              # double 0.82874307956741711
	.quad	0x3fe6acf2d062cb8e              # double 0.70861187649130541
	.quad	0x3fee2e8708141151              # double 0.94317962243852993
	.quad	0x3fe5d95622bcaf14              # double 0.68278033051089659
	.quad	0x3fdc4476b6562a58              # double 0.44167869383151048
	.quad	0x3fd8758a05343376              # double 0.38217401989168509
	.quad	0x3fc599f461e8c5f8              # double 0.16876082211233245
	.quad	0x3fdc10b6d7fe61e4              # double 0.43852015584118775
	.quad	0x3fea2e3d9862e988              # double 0.81814460528339428
	.quad	0x3fe3c4a9da61d8c6              # double 0.61775677349830782
	.quad	0x3fe4375e1d09e966              # double 0.63175874396919762
	.quad	0x3fde08ec2b0d6114              # double 0.46929458813021196
	.quad	0x3fdcb6d7050e97ce              # double 0.44865966314170869
	.quad	0x3f7b95d833f93d80              # double 0.0067346997671643427
	.quad	0x3fde6f264d3f67cc              # double 0.47553403419226181
	.quad	0x3fe5390f2ca593a4              # double 0.66321524353098882
	.quad	0x3fe2272161156f0d              # double 0.56727665864625154
	.quad	0x3fe2e9f4ab62e9e5              # double 0.59105905031111361
	.quad	0x3feba8c84d8fdca9              # double 0.86435332440205059
	.quad	0x3fe1b262b4b2b8ed              # double 0.55302558224300713
	.quad	0x3fdd511d38374a6e              # double 0.45807581415025467
	.quad	0x3fe2b96ab30df862              # double 0.58513388606639816
	.quad	0x3feb8e163ec41dc7              # double 0.86109459170341374
	.quad	0x3fddbbbe2be05fb8              # double 0.4645839146119175
	.quad	0x3fa5130ae98d2040              # double 0.041160908708264277
	.quad	0x3feed947d706fd87              # double 0.96402351377030093
	.quad	0x3fd536aebbe7a5fa              # double 0.3314625582703169
	.quad	0x3f96e5a94bc65be0              # double 0.022360463380746043
	.quad	0x3fc81ff73cccc1ec              # double 0.18847551792852302
	.quad	0x3feaa6f838d1292a              # double 0.83288203332020783
	.quad	0x3fe21a57a64f9eb0              # double 0.56571562273616927
	.quad	0x3fd5f7903874001a              # double 0.34323506844521179
	.quad	0x3fed8ed72b5737dd              # double 0.92368658509235113
	.quad	0x3fc52d046ba5eaa0              # double 0.16543631798034131
	.quad	0x3fc84e157df6e314              # double 0.18988293314557636
	.quad	0x3fe0ba4afe293387              # double 0.52274083748635369
	.quad	0x3fdacbd428904dcc              # double 0.41869071923539702
	.quad	0x3fb3da2f7f5fe180              # double 0.077547997090624321
	.quad	0x3fb64942c17ff820              # double 0.087055370560819245
	.quad	0x3fe8dea750433806              # double 0.7771793906811133
	.quad	0x3fe541ab7cecb143              # double 0.66426634215671532
	.quad	0x3fefce635f58f0c0              # double 0.99394386885207808
	.quad	0x3fe303773c320610              # double 0.59417306668200531
	.quad	0x3fd3e2fe38bf1042              # double 0.31072955648074096
	.quad	0x3f75eadf282d8a80              # double 0.0053509442394409357
	.quad	0x3fee7145a16bfa64              # double 0.95132714774792903
	.quad	0x3fe5933c9114d54a              # double 0.67422321640212002
	.quad	0x3f7dd2401a8a8380              # double 0.0072805885362478007
	.quad	0x3fc40612304efb00              # double 0.15643527373136834
	.quad	0x3fbd32e8eb031478              # double 0.11405807244871535
	.quad	0x3f948eb68b787b20              # double 0.020075657141315095
	.quad	0x3fce35fa8d2cf2ec              # double 0.2360222997030158
	.quad	0x3fc153709ec7adb0              # double 0.1353588843625011
	.quad	0x3febb755589b85f8              # double 0.86612956339030145
	.quad	0x3fc9eb7b6bbf8cc0              # double 0.20249884377617455
	.quad	0x3fed52ddfdb5e6f4              # double 0.91636561920969805
	.quad	0x3fea5f9b8d60e7a0              # double 0.82417085278506263
	.quad	0x3fc2e62f4b1b9fec              # double 0.14764968078020446
	.quad	0x3fe7ffde50bcd9c8              # double 0.74998393792230278
	.quad	0x3fb73ccc97d78698              # double 0.090771472044730905
	.quad	0x3fcb7a2072952edc              # double 0.21466451258526476
	.quad	0x3fe27f61e1879c3e              # double 0.57804960297369923
	.quad	0x3fed8bebbfecd094              # double 0.92333018765795538
	.quad	0x3fe275df843a065e              # double 0.5768888075401255
	.quad	0x3fe7cee0bc9a4d87              # double 0.74400364719842649
	.quad	0x3fe21dd5f04d8908              # double 0.56614205297617648
	.quad	0x3fdc0dbe74ca6080              # double 0.43833886533094102
	.quad	0x3fea673dc6ba35f6              # double 0.82510269941275172
	.quad	0x3fe497fe2404e171              # double 0.64355380091642023
	.quad	0x3fc63d6ab1f018c0              # double 0.17374929130909855
	.quad	0x3fe2ab65af9bff36              # double 0.58342251108840659
	.quad	0x3fda4ff556d3efd6              # double 0.4111302707603931
	.quad	0x3fddbeb348b905a2              # double 0.46476442434149068
	.quad	0x3fee1cf15287eea3              # double 0.94103304023106593
	.quad	0x3fd6d1eba0c5c10a              # double 0.35656252575337588
	.quad	0x3f86624ec8f81cc0              # double 0.01092969466027538
	.quad	0x3f9f7a91da5ef640              # double 0.030741003945641276
	.quad	0x3fedddf086495093              # double 0.93334223010835371
	.quad	0x3feb22a198bd63de              # double 0.84797744590752777
	.quad	0x3fd6003b5bb499b2              # double 0.34376415210354161
	.quad	0x3fc71289dd49dab4              # double 0.18025325112440316
	.quad	0x3fcfe387aafa446c              # double 0.24913116310611672
	.quad	0x3fa2a097746b9210              # double 0.0363814668287753
	.quad	0x3fdfe7a5566858d6              # double 0.49851354063265541
	.quad	0x3fe5aa90f8908d32              # double 0.67707108066352917
	.quad	0x3fb594c71343ecd8              # double 0.084301416591120115
	.quad	0x3fe024e129a25be3              # double 0.50450189716036353
	.quad	0x3fea81d3523a6acd              # double 0.8283478361148241
	.quad	0x3fc614d4843d18e4              # double 0.1725106855103099
	.quad	0x3fef0a76415dcb96              # double 0.97002709166405299
	.quad	0x3fe227a37a0c9775              # double 0.56733869397861147
	.quad	0x3fd2f6ca539d2f9e              # double 0.29631288686209156
	.quad	0x3fab6022752dd060              # double 0.053467823795387615
	.quad	0x3fe765c84af7648a              # double 0.73117460862990069
	.quad	0x3fedb0e51dd34e0b              # double 0.92784362626338301
	.quad	0x3fa5ad060618c900              # double 0.042335689777603491
	.quad	0x3fefe4ade883e08a              # double 0.99666495717157599
	.quad	0x3fe1e34cbbad8cca              # double 0.55899655013890848
	.quad	0x3feea200f520a25f              # double 0.95727584721050707
	.quad	0x3fde5ec90a6140a4              # double 0.4745352364889277
	.quad	0x3fbf325261a3d930              # double 0.12186159976758826
	.quad	0x3fd595b258ffbfb8              # double 0.33726175967512573
	.quad	0x3fb3b9dd2caca090              # double 0.077054809004609703
	.quad	0x3fed383eac1a7458              # double 0.91311582197125585
	.quad	0x3fc829466bd6f2e8              # double 0.18875961557014098
	.quad	0x3fe439c728443ca0              # double 0.63205297340927658
	.quad	0x3fcbcb937f527b54              # double 0.21715015141395588
	.quad	0x3fb326edcf6bc678              # double 0.07481275857915104
	.quad	0x3fd2d6d92eb50f3a              # double 0.29436330376869402
	.quad	0x3fde1dcfee705baa              # double 0.47056959424065303
	.quad	0x3febcd7a2c083e74              # double 0.86883267021217003
	.quad	0x3fe94455411c418a              # double 0.78959143368597151
	.quad	0x3febbf99c91709df              # double 0.86713876033200765
	.quad	0x3fcd1d229cfc5260              # double 0.22745163598360119
	.quad	0x3fe0996202db2eb1              # double 0.51872349317405597
	.quad	0x3fe131dcd76d98e2              # double 0.53733675075343634
	.quad	0x3fc7ec14d938947c              # double 0.18689213377470881
	.quad	0x3fe64ed78c19ec3e              # double 0.69712426532294791
	.quad	0x3fe1176ddfc3f11a              # double 0.53411000923327667
	.quad	0x3fd6a886364b38d0              # double 0.3540359049046744
	.quad	0x3fe885f8d7d71efb              # double 0.76635400921165286
	.quad	0x3fec66155c276ea2              # double 0.88746135710558272
	.quad	0x3fda20d44f35ec5e              # double 0.40825374350942478
	.quad	0x3fd2c6205ad8016e              # double 0.2933426749368867
	.quad	0x3feda130bc817a21              # double 0.92592655961545145
	.quad	0x3fd3b4e41562d438              # double 0.30791570747834696
	.quad	0x3fee93c04f257d61              # double 0.9555360360936157
	.quad	0x3fe5026da34c6f98              # double 0.65654642004254793
	.quad	0x3fdcf9482f148022              # double 0.45271496389068677
	.quad	0x3fe85d47204cc72b              # double 0.76138645466401067
	.quad	0x3f9472b3799c2520              # double 0.019968799874765186
	.quad	0x3fd70648ace88b36              # double 0.35975853810866754
	.quad	0x3fc991ac410842d0              # double 0.19975808310893806
	.quad	0x3fb8af0f8200a1a8              # double 0.096421212424167124
	.quad	0x3fef075290111a52              # double 0.96964386117981349
	.quad	0x3fd5a02e8227e532              # double 0.33790171347171161
	.quad	0x3fe092cb81264485              # double 0.51791930412777332
	.quad	0x3fce57caaea6d2c4              # double 0.23705419090187807
	.quad	0x3fe875b1d39b0912              # double 0.76436702088565966
	.quad	0x3feeb417b9616fdf              # double 0.95948396880293873
	.quad	0x3feb432dc15382f5              # double 0.85195052870775945
	.quad	0x3fe032dfce9d7bdd              # double 0.50621023516202579
	.quad	0x3fd28e7f05af1ec8              # double 0.28994727664074249
	.quad	0x3fc99588f80abae0              # double 0.19987594710752088
	.quad	0x3fed8669857b81de              # double 0.92265773840705001
	.quad	0x3fd9a664f05e6148              # double 0.40078090165618052
	.quad	0x3f95293057a42e80              # double 0.020664935445025012
	.quad	0x3fd6968c0b00daa0              # double 0.35293866228622939
	.quad	0x3fcb9ca500231cd4              # double 0.21571791178414534
	.quad	0x3fe10f472566d0a4              # double 0.53311497979168054
	.quad	0x3fe0d3da54ade3da              # double 0.52586094416539741
	.quad	0x3fd87a3d13ec3f04              # double 0.38246085115041262
	.quad	0x3fd518af56cd7d2c              # double 0.32963164784264865
	.quad	0x3fef364e1f2f26d5              # double 0.97537904825841315
	.quad	0x3feb4914ea7d726e              # double 0.85267110632737597
	.quad	0x3fdfa14a5cc54d62              # double 0.49421938953056188
	.quad	0x3fe37d34cd9c3f68              # double 0.60903396757383366
	.quad	0x3fe6895c1cf6a14d              # double 0.70426755577958888
	.quad	0x3fef7a978b42c69b              # double 0.98371483992942232
	.quad	0x3f81afa610af8c00              # double 0.0086358045427399333
	.quad	0x3fdb577187544c28              # double 0.42721212592840851
	.quad	0x3fdd42a4c94bb9b0              # double 0.45719260843079734
	.quad	0x3fa1f46fc5f92ea0              # double 0.035068028370543347
	.quad	0x3fea7b7a6eed55e4              # double 0.8275730291886103
	.quad	0x3fe35934bbdf6196              # double 0.60463940328468158
	.quad	0x3fe9d2bd46e754bd              # double 0.80697501991621545
	.quad	0x3fdd6ab1f7187ac4              # double 0.459637156776733
	.quad	0x3fd24e9c6fa7dd1e              # double 0.28604803947333035
	.quad	0x3fe05a7eef922768              # double 0.51104685584253406
	.quad	0x3fe29342c80e5f20              # double 0.58047617982353827
	.quad	0x3fdf01a6ca638e68              # double 0.48447580112972455
	.quad	0x3fef34992dfd922a              # double 0.9751706979992083
	.quad	0x3fc6ae05e9e0df24              # double 0.17718576354831683
	.quad	0x3fe0ebed57024f2d              # double 0.52879969591092435
	.quad	0x3fe8030885e2e514              # double 0.75037027501744768
	.quad	0x3fe7416291578317              # double 0.72673157107428465
	.quad	0x3fd39c4b18ca7e82              # double 0.30641438885684391
	.quad	0x3fe7d003bf463f97              # double 0.74414241178782248
	.quad	0x3fc47f9d2d7a61a0              # double 0.16014446945770278
	.quad	0x3fa7a5e9f5fdcf30              # double 0.046187697675945549
	.quad	0x3fd97c0a7e84e17c              # double 0.39819586139085295
	.quad	0x3fe9986d3fe39eed              # double 0.79985678175304786
	.quad	0x3fd8b4c242cc3fa8              # double 0.38603264353968791
	.quad	0x3fe67527fc6e720d              # double 0.70180129340184438
	.quad	0x3fe83b60381e8301              # double 0.75724802933481794
	.quad	0x3fe37ba980c8caad              # double 0.60884547379676734
	.quad	0x3fe8f5ecbb7110a8              # double 0.78002010926913545
	.quad	0x3fb0e4e44d798fa0              # double 0.065992611803777468
	.quad	0x3fe51dc0a5f8d950              # double 0.6598819009439385
	.quad	0x3fcebdb76a117808              # double 0.24016468695748494
	.quad	0x3fe91833754b7cd9              # double 0.78420422467379602
	.quad	0x3fe5407375393fbc              # double 0.66411755461921684
	.quad	0x3fe371a282877f36              # double 0.60762143606186814
	.quad	0x3fe79f1f20039b26              # double 0.73817402127028653
	.quad	0x3fe1b0dd707dd162              # double 0.55283996554366532
	.quad	0x3fdc0f54ba91f49c              # double 0.43843572826137645
	.quad	0x3fe73275be2d0786              # double 0.72490965980272004
	.quad	0x3fe01ac602fa4033              # double 0.50326824742842857
	.quad	0x3fe8aa668fc86654              # double 0.77080085833149292
	.quad	0x3fe787fbe7082bd2              # double 0.73534960864469157
	.quad	0x3fd33c5b11828658              # double 0.3005588217730284
	.quad	0x3fe5d4ea9481bd0b              # double 0.68224076276047307
	.quad	0x3fe4fc647880c561              # double 0.65580962692017064
	.quad	0x3fb2dc320c704350              # double 0.073672416722059042
	.quad	0x3fca5f19b0070af0              # double 0.20602723212331098
	.quad	0x3fe4068d610ad6e8              # double 0.6257998366697537
	.quad	0x3fd161222696c2d0              # double 0.27155355232666256
	.quad	0x3fe4b428b006bab3              # double 0.64699205761083645
	.quad	0x3fc4f441f4173db4              # double 0.16370415132995009
	.quad	0x3fe96cce5c30df2e              # double 0.79453199392353269
	.quad	0x3fe132a117f5cadd              # double 0.53743033103668447
	.quad	0x3fef11d56ee36a8f              # double 0.97092696817283463
	.quad	0x3fde8c6525fc18ac              # double 0.47731903752754579
	.quad	0x3fe3d5f4693a86c4              # double 0.61986752083267804
	.quad	0x3fef1611b57ca8be              # double 0.97144399115247615
	.quad	0x3fee4bd0d2c343fb              # double 0.94675484814263144
	.quad	0x3fed4bc8232e0021              # double 0.91550070639641856
	.quad	0x3fe17470312f3d55              # double 0.54546365362504423
	.quad	0x3fe4623142c7f3d3              # double 0.63698638003517727
	.quad	0x3fd8cb611431d966              # double 0.38741328212872472
	.quad	0x3fd97fbd96ef05c8              # double 0.39842166652314548
	.quad	0x3fe6873e4303f181              # double 0.70400918091722542
	.quad	0x3fcafe3f359d59f0              # double 0.21088399999526031
	.quad	0x3fe1daf0e43b5f3f              # double 0.55797619415805133
	.quad	0x3fd4eab5e3ff2a68              # double 0.32682559266382905
	.quad	0x3fb98676260c8eb0              # double 0.099707969941443819
	.quad	0x3fd1ae22fb1363e0              # double 0.27625345725169659
	.quad	0x3fd77719dd96aa96              # double 0.36664435042863752
	.quad	0x3fd27d093b4175d2              # double 0.28888159548463677
	.quad	0x3fea507cb0e8740d              # double 0.82232508232448398
	.quad	0x3fc40af1a3707100              # double 0.1565839813273513
	.quad	0x3fe19a377933f82e              # double 0.55007527992689176
	.quad	0x3fe020eeaa67e894              # double 0.50402005464936162
	.quad	0x3fd74d3fa60c6a7a              # double 0.36408988204644965
	.quad	0x3fe8e11f38a93404              # double 0.77748070780364786
	.quad	0x3fe809e7de14b29f              # double 0.75120919585386392
	.quad	0x3fdfa3bfd792bfee              # double 0.49436946918558433
	.quad	0x3fecece12c844f22              # double 0.90391596502965776
	.quad	0x3fd811be81acdc86              # double 0.3760830179557576
	.quad	0x3feba153cb1fadb4              # double 0.86344327614408777
	.quad	0x3fe64553bbd264f0              # double 0.69596277889209368
	.quad	0x3fefc3e2d2c7bff6              # double 0.99266186874410667
	.quad	0x3fe08243b3408a55              # double 0.51590142259767424
	.quad	0x3fdfde4340588b94              # double 0.49794083865907024
	.quad	0x3fdb86f55ca269c4              # double 0.43011220976191233
	.quad	0x3fee0aecd5783a0d              # double 0.93883363431251754
	.quad	0x3fd8bde2c79f6468              # double 0.38658971304318479
	.quad	0x3feeba5982bc776e              # double 0.96024776014722391
	.quad	0x3feb2de890320fb7              # double 0.84935405886834914
	.quad	0x3fecbe74601f72b4              # double 0.89824885152810063
	.quad	0x3fe687c3f9a125cb              # double 0.70407294040449508
	.quad	0x3fd13fd6123f434c              # double 0.26952125341363309
	.quad	0x3fa2b05de05f3640              # double 0.036501821173811511
	.quad	0x3feb28d539459ff5              # double 0.8487344854920581
	.quad	0x3fc4b298d3b2bbb4              # double 0.16170034729790717
	.quad	0x3fee8f3947d925e3              # double 0.95498336823328278
	.quad	0x3fe4119fd71ced5e              # double 0.62715141309983458
	.quad	0x3fe1eedd3497fcae              # double 0.56040821335036184
	.quad	0x3fb2d15ab1116f48              # double 0.073506992558972972
	.quad	0x3feb0f249cf87c1f              # double 0.84559851320580381
	.quad	0x3fe187d3543b244c              # double 0.54783026172038651
	.quad	0x3f9515412098e940              # double 0.020588891615468841
	.quad	0x3fec8a2903a75a88              # double 0.89186526025407975
	.quad	0x3f81c859f50d4740              # double 0.0086829212101836583
	.quad	0x3fe0b650a56c3aca              # double 0.52225525197158018
	.quad	0x3fada7e8fadb9a70              # double 0.057921677229207158
	.quad	0x3fe2146c211bc6b8              # double 0.56499296633247464
	.quad	0x3fbfacf8040f0008              # double 0.1237330446156194
	.quad	0x3feafbde23889722              # double 0.84324557247302701
	.quad	0x3fe27408ee936812              # double 0.57666441532933477
	.quad	0x3fe3c4adf2b4e058              # double 0.61775872615454386
	.quad	0x3fea32c7a13d673e              # double 0.81869870655211918
	.quad	0x3fa9e96340cf1b40              # double 0.050608731900459336
	.quad	0x3fe9c990edc53cbb              # double 0.80585524024527133
	.quad	0x3fc87a55816593b4              # double 0.1912333375759353
	.quad	0x3fe406475f0ed7a2              # double 0.62576645437251366
	.quad	0x3f927b0baf8a2260              # double 0.018047506894193766
	.quad	0x3fe70817b81d57e3              # double 0.71973787269484679
	.quad	0x3fdb20b34886c1b4              # double 0.4238708694711264
	.quad	0x3fe11ca2e0d63821              # double 0.53474563516079254
	.quad	0x3fc59a041202cb44              # double 0.16876269225539364
	.quad	0x3fecf420068c1726              # double 0.90480042723422538
	.quad	0x3fe1a739b14a4bf3              # double 0.55166325213428846
	.quad	0x3fc0ae847efed610              # double 0.13032585335683722
	.quad	0x3fe8e4412129224a              # double 0.77786308743186194
	.quad	0x3fd70a538f1f5f7c              # double 0.36000527359782786
	.quad	0x3fbddd61fec38a40              # double 0.11665928335018183
	.quad	0x3fe46bfbba15aa57              # double 0.6381815561738432
	.quad	0x3fecba375d9bfa45              # double 0.89773147852958657
	.quad	0x3fef2737e800495b              # double 0.97353740036696068
	.quad	0x3fe7bda61af383b5              # double 0.74190049423133664
	.quad	0x3fea3c7f004d1d0f              # double 0.81988477763016643
	.quad	0x3fdcbb7c02859f56              # double 0.44894314047131922
	.quad	0x3fe2293a0845acef              # double 0.56753255477579312
	.quad	0x3fec13f1ec77b222              # double 0.87743469414778397
	.quad	0x3fe0ca3cd3efd2c8              # double 0.52468720811756331
	.quad	0x3fcb297fbe2a7694              # double 0.21220394883578264
	.quad	0x3fee5bc229ab287d              # double 0.94870098245998202
	.quad	0x3feea44b48cd9976              # double 0.95755542964324891
	.quad	0x3fe8a7609b1c6082              # double 0.77043180747115536
	.quad	0x3fd27ce30b3a4ddc              # double 0.28887249084911359
	.quad	0x3fbac6c43253dcf0              # double 0.10459543446255615
	.quad	0x3fefd5cb95fee762              # double 0.994848053894412
	.quad	0x3fe04e157c79f2bb              # double 0.50953172981061046
	.quad	0x3fc86ac046841298              # double 0.19075778430137258
	.quad	0x3fd050ba327b0d2e              # double 0.25492720536950031
	.quad	0x3fe168c634233bbe              # double 0.54403982337122847
	.quad	0x3fdd7ccf63ccabee              # double 0.46074280496639985
	.quad	0x3f936d1c16c72ea0              # double 0.018970908060323866
	.quad	0x3fc03f7f3a01a284              # double 0.12693777401297635
	.quad	0x3fbe3fd4d5bf8a50              # double 0.11816148966276185
	.quad	0x3fef76b04edd09ff              # double 0.98323836710943612
	.quad	0x3fea17dc4b151d35              # double 0.8154126612143161
	.quad	0x3fec10f9417642ef              # double 0.87707197938479264
	.quad	0x3fe07950ade53485              # double 0.51480897869045406
	.quad	0x3feecf170070ffaa              # double 0.96277952276431233
	.quad	0x3fe8b56ca5dbb82b              # double 0.77214653391070465
	.quad	0x3faa30e640c44ee0              # double 0.051154323011500358
	.quad	0x3fe4b6ce423cce1c              # double 0.64731514870658513
	.quad	0x3f912b4dde95afc0              # double 0.016766754827969299
	.quad	0x3fe8eaacbe62f22c              # double 0.77864682373871607
	.quad	0x3fdb08761c09e8ac              # double 0.42239144075541435
	.quad	0x3fe8fb326944996a              # double 0.78066368637227623
	.quad	0x3fed3bda5281422a              # double 0.91355625261536955
	.quad	0x3fe41a0a2abeee67              # double 0.62817867611688605
	.quad	0x3fe6ad5c06af0edd              # double 0.70866204553064061
	.quad	0x3fe4038971b80b5c              # double 0.62543174944617475
	.quad	0x3fef26528154e914              # double 0.97342801342100182
	.quad	0x3fe875a73a1aae2d              # double 0.76436196659546385
	.quad	0x3fbd8c7b5506a078              # double 0.11542483163668915
	.quad	0x3fe1e8aa81851714              # double 0.55965161606647706
	.quad	0x3fe3ca8d906038b5              # double 0.61847570608531177
	.quad	0x3fe7db49360a8b33              # double 0.74551830820960274
	.quad	0x3fad9be6fe4516a0              # double 0.057830065287402421
	.quad	0x3fec712f1e9f8f84              # double 0.88881641369924624
	.quad	0x3feb7a88fcc5d861              # double 0.85870789880460674
	.quad	0x3fed63e6ebee802e              # double 0.91844507294081779
	.quad	0x3fd3ad4e94d8671c              # double 0.30745281730342966
	.quad	0x3fb0ab3aac2b9638              # double 0.065112750085597138
	.quad	0x3fe0099c863c5d42              # double 0.50117326944283769
	.quad	0x3feb155d86eb4a86              # double 0.84635807372463101
	.quad	0x3fd7d549d67fefca              # double 0.3723930926059863
	.quad	0x3fda14d895335a3a              # double 0.40752234049196867
	.quad	0x3fc0ba0a5bd5043c              # double 0.13067750438679748
	.quad	0x3fd6e171bc19644e              # double 0.35751002663670739
	.quad	0x3fc46144e892471c              # double 0.15921841960931082
	.quad	0x3fe65e013615d34b              # double 0.69897518695379668
	.quad	0x3fe591c81c5e5a86              # double 0.67404561558471765
	.quad	0x3fe6178d9f6e0a76              # double 0.69037514818803802
	.quad	0x3fdc298b9efd582e              # double 0.44003572965937365
	.quad	0x3fcbd3d42b15ad4c              # double 0.21740200141662525
	.quad	0x3fad99434eb4ff40              # double 0.057809928281584266
	.quad	0x3fe7c8571f4f99ca              # double 0.7432056056539349
	.quad	0x3fc22d71284bd278              # double 0.14201178042971541
	.quad	0x3fe2d614d46bed2d              # double 0.58863297928420411
	.quad	0x3fd88d9ffb5391e8              # double 0.38364409965131907
	.quad	0x3fe17a1c42f845a3              # double 0.54615605430642622
	.quad	0x3f9a95ff91495e00              # double 0.025962823145475156
	.quad	0x3fec05a59575ac5c              # double 0.87568930808391653
	.quad	0x3fe641f802c7be52              # double 0.69555283110634947
	.quad	0x3fe984c6e656072d              # double 0.79745812404164484
	.quad	0x3fad3612d2da62d0              # double 0.057053173293018511
	.quad	0x3fd39f006fa98afc              # double 0.30657969383734929
	.quad	0x3fa96f8d922b8d60              # double 0.04967920693686767
	.quad	0x3fc62de75237693c              # double 0.17327586664652894
	.quad	0x3fc758541e58291c              # double 0.18238307458552405
	.quad	0x3fcb21228a83a7a0              # double 0.21194869769470603
	.quad	0x3fe964b983b61e42              # double 0.79354549145586639
	.quad	0x3fd2c51e4323ea6a              # double 0.29328114086789603
	.quad	0x3fb54a5cb2789838              # double 0.08316592557147906
	.quad	0x3fee09c24311146a              # double 0.93869126414268789
	.quad	0x3fd4fc929f1fe0ae              # double 0.32791581668380843
	.quad	0x3fec1dcfe5c09f09              # double 0.87863917230149113
	.quad	0x3fec8a38f2a6d472              # double 0.89187285797983251
	.quad	0x3fdd7ba341f6f7b2              # double 0.46067124788157365
	.quad	0x3fdf65fac5752698              # double 0.49059933932276456
	.quad	0x3fea337b8bb220e6              # double 0.81878449711169021
	.quad	0x3fc20e3035a3c954              # double 0.14105799311762246
	.quad	0x3fe7a64b0e4e0fcb              # double 0.73904946130687088
	.quad	0x3fdb0d7b8974e392              # double 0.42269791053291172
	.quad	0x3fea6cf0a2f2b14b              # double 0.82579833818230364
	.quad	0x3fe58d0dd426c528              # double 0.67346850810841818
	.quad	0x3fd84d33aea6ee8e              # double 0.37971202903620671
	.quad	0x3fe81a5df6ca50a1              # double 0.75321863366345465
	.quad	0x3fd6690fe0fd9042              # double 0.3501624772236519
	.quad	0x3fbd7936f9875700              # double 0.11513084022530151
	.quad	0x3fe2b45f746ec8fa              # double 0.58451817265293404
	.quad	0x3fe2aa23099911e7              # double 0.58326866030307378
	.quad	0x3fe2da08c9f72e58              # double 0.58911551901241932
	.quad	0x3fd5f1ff56552de8              # double 0.34289534979754288
	.quad	0x3fd3a38aab2b1c72              # double 0.3068567916456636
	.quad	0x3fd2aa82981a0c18              # double 0.29165711263357386
	.quad	0x3fd298c8b753c29a              # double 0.29057519820256916
	.quad	0x3fd8a72efeb71a72              # double 0.38520407557044856
	.quad	0x3fdafcd03277ca10              # double 0.42168049744137281
	.quad	0x3f92d3822b48d6a0              # double 0.018384965793493024
	.quad	0x3fe4a7445639a2be              # double 0.64541832772109564
	.quad	0x3fd0af43ff7357b0              # double 0.26069736429542001
	.quad	0x3fd184006da3fd92              # double 0.27368174273575463
	.quad	0x3fcc91c61fa6e7c0              # double 0.22319866700655489
	.quad	0x3fb1b3a9699224b0              # double 0.069147671007288691
	.quad	0x3fd4bf075375dc9a              # double 0.32415946150235586
	.quad	0x3fe634b979c8fd26              # double 0.69393609796671707
	.quad	0x3fe0d4fca0d8e038              # double 0.52599936881507059
	.quad	0x3fe3c8eb6a034ffc              # double 0.61827631669666472
	.quad	0x3fe3a169dac70837              # double 0.61345379571890291
	.quad	0x3fcf494b3493d3b8              # double 0.24442424838312404
	.quad	0x3fefe188b397db5e              # double 0.99628100468440173
	.quad	0x3fe8def4dbbb3cba              # double 0.77721636692321927
	.quad	0x3fb2ce1d440d45f0              # double 0.073457554926129154
	.quad	0x3fdfedd624fd2454              # double 0.49889138805571531
	.quad	0x3fe73fcc039a0334              # double 0.7265377111762974
	.quad	0x3fe724e5df3d0607              # double 0.72325414277310152
	.quad	0x3fc27612994afd78              # double 0.14422829136854509
	.quad	0x3f915a239849ce00              # double 0.016945415658893737
	.quad	0x3fe347db57464348              # double 0.60252158208650375
	.quad	0x3fca1ae1d5b81094              # double 0.20394537864206497
	.quad	0x3feac487e0ec3a1e              # double 0.83649057321764864
	.quad	0x3fd58973f58bd608              # double 0.33651446322559808
	.quad	0x3fee10440346a157              # double 0.93948555602859585
	.quad	0x3fed78c4df85f391              # double 0.92099231392750103
	.quad	0x3fb729dc587c89b0              # double 0.090482493975776234
	.quad	0x3fd875074b639ba8              # double 0.38214285242286872
	.quad	0x3fe1a0b6f47aef83              # double 0.55086848974268354
	.quad	0x3fe297a8f7fe20fa              # double 0.58101318775246047
	.quad	0x3fe8434d0b5a339a              # double 0.75821544854408107
	.quad	0x3fe107825e415940              # double 0.53216665658218432
	.quad	0x3fda3b2b0a039482              # double 0.40986133554390147
	.quad	0x3fe112bd159b6bb5              # double 0.53353742809428317
	.quad	0x3fe1188880db5cfa              # double 0.534244777368172
	.quad	0x3fedec3c02bf6d93              # double 0.93508720909760468
	.quad	0x3fdd486acd618e1e              # double 0.45754499489541611
	.quad	0x3fe5d1fb6034c586              # double 0.68188256063710706
	.quad	0x3fe8f86f25f041eb              # double 0.7803264370905344
	.quad	0x3fb70891708c62e8              # double 0.089974489190705165
	.quad	0x3fd06ad71ab46d86              # double 0.25652101142778638
	.quad	0x3fb8f03134a5ef08              # double 0.0974150422607033
	.quad	0x3fe2422491f02032              # double 0.57057407859338682
	.quad	0x3fe7a83abda9f305              # double 0.73928582233165285
	.quad	0x3fe9ba4a7c2e97bb              # double 0.80399059538171203
	.quad	0x3face9ca910b8190              # double 0.056471185880357599
	.quad	0x3fe110b70013ff29              # double 0.53329038634544645
	.quad	0x3fe9d92bdd3eb6e1              # double 0.80776017391118782
	.quad	0x3fe701626b3117ff              # double 0.71891900001423881
	.quad	0x3fcec9ad75977450              # double 0.24052971116808175
	.quad	0x3fcd2d6addc1425c              # double 0.22794853046299834
	.quad	0x3fc1086799ad6e80              # double 0.13306899074347101
	.quad	0x3fe29b3263862b78              # double 0.58144492567349371
	.quad	0x3fea7dba2438e61f              # double 0.82784754824314521
	.quad	0x3fdc3f93d84dd748              # double 0.44138046382373775
	.quad	0x3fd7f66b0d132242              # double 0.37441517140226577
	.quad	0x3f9695237ec2c6c0              # double 0.022053293811672203
	.quad	0x3fe4f8a6b9bf9984              # double 0.65535293845168541
	.quad	0x3fe10c67fc3cdffe              # double 0.53276442780679623
	.quad	0x3fec19ef3b7f5056              # double 0.87816583271570425
	.quad	0x3faaae461927a590              # double 0.052110853739416929
	.quad	0x3fe00bca64753f8d              # double 0.50143928166106522
	.quad	0x3fc12d6e8ca79658              # double 0.1341989695348953
	.quad	0x3fdecad16e78dc7e              # double 0.48112903393070627
	.quad	0x3fe244202fef5861              # double 0.57081612932485026
	.quad	0x3fe25516ab9eeb9a              # double 0.57288678664859849
	.quad	0x3fd714f466525a5e              # double 0.36065397255280185
	.quad	0x3fa093858d68ec20              # double 0.032375501167244858
	.quad	0x3fe7848ccccfec63              # double 0.73493041994460062
	.quad	0x3febf9d5edd6eef0              # double 0.87424751713794357
	.quad	0x3fe07c10a0f9fa80              # double 0.51514464798658821
	.quad	0x3fdcba7b7a4b8394              # double 0.44888197844380184
	.quad	0x3fe7cb258a867eea              # double 0.74354817443596954
	.quad	0x3f8f0784ba068240              # double 0.01515105908112091
	.quad	0x3fbf6bdb81340b78              # double 0.12273952392938081
	.quad	0x3fd31223156a6274              # double 0.29798199740756748
	.quad	0x3fead6323804dd79              # double 0.83864699307643698
	.quad	0x3fea0f10c010e64f              # double 0.81433904183286099
	.quad	0x3facab88eaa9d030              # double 0.055996206899095902
	.quad	0x3fb3921ce4a6ac38              # double 0.076448255370153428
	.quad	0x3fedb44f15e096c3              # double 0.92826036713514559
	.quad	0x3fd122d2dd918c88              # double 0.26775046956590431
	.quad	0x3fd84434e55e12f4              # double 0.37916300200622222
	.quad	0x3fd18a488698b876              # double 0.27406514305301444
	.quad	0x3feddef786278fc6              # double 0.9334676380353748
	.quad	0x3fe3b886da71bdb5              # double 0.61627524056341676
	.quad	0x3fec31496b31c39d              # double 0.88101645409016138
	.quad	0x3fe8ef71d25ba11d              # double 0.77922907910854955
	.quad	0x3fea485ce96c5fb4              # double 0.82133336630339792
	.quad	0x3fe33229f9f23ef2              # double 0.59987353150969924
	.quad	0x3fee2bd3a262dd5a              # double 0.94284993854573007
	.quad	0x3fe76687182416c0              # double 0.73126558985742207
	.quad	0x3fb40076194ff288              # double 0.078132039241561313
	.quad	0x3fdce64bb4c2a95a              # double 0.45155613567717057
	.quad	0x3fe4fe4f1aa6ce5e              # double 0.6560435791529462
	.quad	0x3fee950a3e4f5f9b              # double 0.95569336099559921
	.quad	0x3fef185089f4e686              # double 0.97171809143692722
	.quad	0x3fd2afaa329f1ace              # double 0.29197173064714554
	.quad	0x3fead381e6e4e22d              # double 0.83831877800463916
	.quad	0x3fd7554ec8958464              # double 0.36458177173887507
	.quad	0x3fcb39a5b16ead28              # double 0.21269675410926792
	.quad	0x3fe1ba42568e26bd              # double 0.55398671059921123
	.quad	0x3fbc4508e51d5018              # double 0.110428386627348
	.quad	0x3fe83aceb8b39619              # double 0.75717865061295975
	.quad	0x3fe1ff9d671a7521              # double 0.56245298516629216
	.quad	0x3fde7167da54505e              # double 0.47567173310495103
	.quad	0x3fe46a34197fcf84              # double 0.63796429615329986
	.quad	0x3fd4c60c34956d68              # double 0.3245878709328367
	.quad	0x3fddd41937675398              # double 0.4660704651881189
	.quad	0x3fe731f85557ed2f              # double 0.72484985989232154
	.quad	0x3fa246b820889320              # double 0.035695795031904121
	.quad	0x3fdc46fce08d69ea              # double 0.44183275155015045
	.quad	0x3fe34baaf8e5f481              # double 0.60298679936353505
	.quad	0x3fb8b633d2697c20              # double 0.096530188436631636
	.quad	0x3fb3120421b80278              # double 0.074493654472471138
	.quad	0x3fe9e6e0511c4ffe              # double 0.80943313447869492
	.quad	0x3feb9a52b700eb1c              # double 0.86258826964271717
	.quad	0x3fa0ff3d643c9e60              # double 0.033197325216232754
	.quad	0x3fc853fb8e943eb4              # double 0.19006294690961101
	.quad	0x3fe85a17f0a1a300              # double 0.7609977435905364
	.quad	0x3fd4aca37773479a              # double 0.32303702035016502
	.quad	0x3fe90caf019eb2f7              # double 0.78279829327001849
	.quad	0x3fdd2dc79c3edb6a              # double 0.4559191728434856
	.quad	0x3fddb03e0467c62e              # double 0.46388197355472272
	.quad	0x3fd4032ebf955aa2              # double 0.31269425114934724
	.quad	0x3fe6160b8e7ced47              # double 0.690191057488314
	.quad	0x3fbeadddaa68c4e8              # double 0.11984048281080428
	.quad	0x3f964173dfd16ec0              # double 0.021734056983730765
	.quad	0x3fe2f103390f72cd              # double 0.59192048210715031
	.quad	0x3f66c1305ead8600              # double 0.0027776665423722147
	.quad	0x3fe312a1c416e3b7              # double 0.59602440165246307
	.quad	0x3fe3b808a514a583              # double 0.61621505968393853
	.quad	0x3fea79f3e7c930f7              # double 0.82738681097683198
	.quad	0x3fd2882f97ea7a56              # double 0.28956212840595208
	.quad	0x3fe76b1ecfdbc4da              # double 0.73182621571882156
	.quad	0x3fd58a5aaa591838              # double 0.33656946788358111
	.quad	0x3fea192865c3a827              # double 0.81557102084957911
	.quad	0x3fefec6e877ad695              # double 0.9976112981882631
	.quad	0x3f80cc67e6f688c0              # double 0.0082023732528039294
	.quad	0x3fdd2d552b38ee3c              # double 0.45589188786445667
	.quad	0x3fca5dbd237f5358              # double 0.205985681851099
	.quad	0x3fd22b3a1892f5c2              # double 0.28388836288271702
	.quad	0x3fe79fd72e094339              # double 0.73826178542558474
	.quad	0x3fb3d71e7b86d0e0              # double 0.077501206548564294
	.quad	0x3fdddce53317b098              # double 0.46660737981324862
	.quad	0x3feb4cdff7c840bc              # double 0.85313413996666254
	.quad	0x3fd622250b778282              # double 0.34583402747924918
	.quad	0x3fdfc839143f349a              # double 0.49659563996540046
	.quad	0x3fe228c2fc93e725              # double 0.5674757893714043
	.quad	0x3fecee3e55fbe6b6              # double 0.90408245843646884
	.quad	0x3fe9065f1669824f              # double 0.78202776315090172
	.quad	0x3fe8966c4a5e100a              # double 0.76836218380822285
	.quad	0x3fc4c796c53111cc              # double 0.16234097126483815
	.quad	0x3fd57a6cbe0139ca              # double 0.33559721522479136
	.quad	0x3fdd87ee70d7a4ae              # double 0.46142159480821021
	.quad	0x3fe69e455e58bc41              # double 0.70682018687319481
	.quad	0x3fde621197ebb1ea              # double 0.47473563991550682
	.quad	0x3fdd1f00bf360ace              # double 0.45501726792296615
	.quad	0x3fedfac864530f66              # double 0.93686313242549768
	.quad	0x3fc9087737805394              # double 0.19557085237525185
	.quad	0x3fb02a62d1702ca8              # double 0.063146759159439569
	.quad	0x3fec74ab3b4e7ea6              # double 0.8892418058712408
	.quad	0x3fe8e82ac2bcd768              # double 0.77834070238780573
	.quad	0x3fd0b418a720df16              # double 0.26099220582135396
	.quad	0x3fe46ca5f586228e              # double 0.6382627292051255
	.quad	0x3fd877b806202d38              # double 0.38230705831729805
	.quad	0x3fe42dd1079e7482              # double 0.63059283721999315
	.quad	0x3fea5c9dadf45ad6              # double 0.82380565619936408
	.quad	0x3fe21342fcbf517c              # double 0.56485127796854284
	.quad	0x3fd1f95429ba35da              # double 0.28084281992854943
	.quad	0x3fe0a17b41a268d8              # double 0.51971209353657866
	.quad	0x3fe93ffac261faa4              # double 0.78906000104310125
	.quad	0x3febebc29f244ba6              # double 0.87252932627085467
	.quad	0x3fc7eec3441564d0              # double 0.18697396110909503
	.quad	0x3fcb48150f4a2150              # double 0.21313727613984179
	.quad	0x3f9b15f15c6edde0              # double 0.026450892702738815
	.quad	0x3fd6a87e1c2d1256              # double 0.3540339732319685
	.quad	0x3fddb27f77941e8c              # double 0.46401964833828724
	.quad	0x3fb45fdb99510f70              # double 0.079587674074955705
	.quad	0x3fd3afe51353c1a6              # double 0.30761076819819733
	.quad	0x3fda61bffda7fad2              # double 0.41221618434057661
	.quad	0x3feb9819893e2757              # double 0.862316864063568
	.quad	0x3fd9b012191853fe              # double 0.40137150240599329
	.quad	0x3fcf469af2d31ac4              # double 0.24434220177336929
	.quad	0x3feee0b07c0f2eb9              # double 0.96492790441830955
	.quad	0x3fd6765de4e5a282              # double 0.35097453454230998
	.quad	0x3fecf240a662e14a              # double 0.90457184312166672
	.quad	0x3feee860ce79fa0e              # double 0.96586647345958609
	.quad	0x3fc3195103eec1d0              # double 0.14921009723685907
	.quad	0x3fdc5cf191841678              # double 0.4431728287748693
	.quad	0x3fe1d4479d3ac1a9              # double 0.55716305455103055
	.quad	0x3fc87af4b46e5c64              # double 0.19125231561767742
	.quad	0x3fc66ea683d4023c              # double 0.1752517837230857
	.quad	0x3fe045bb30665de5              # double 0.50851211026286747
	.quad	0x3fc61d7221af4c3c              # double 0.17277361531032109
	.quad	0x3fe19debf996e747              # double 0.55052756069128683
	.quad	0x3fb5c8361e023cd0              # double 0.085086233450272219
	.quad	0x3fefde92cd436e2f              # double 0.99591960993297401
	.quad	0x3fe2da55fe604fc5              # double 0.58915233309607429
	.quad	0x3fec190757c1739f              # double 0.87805525913028137
	.quad	0x3feb06f4cc377d95              # double 0.84459915052495893
	.quad	0x3fbc7ef5b65bd970              # double 0.11131225301855863
	.quad	0x3fdee263d07a9fe8              # double 0.48256774291303239
	.quad	0x3fd4db450a78a966              # double 0.32588315985289851
	.quad	0x3fb2db0fe2e968e0              # double 0.073655121706369453
	.quad	0x3fe6df385accdcb9              # double 0.71474855169699147
	.quad	0x3fe079d6a1d72877              # double 0.51487285241570546
	.quad	0x3fdc70ad760d8cfa              # double 0.4443772938595455
	.quad	0x3fe85328f553361b              # double 0.76015136637733194
	.quad	0x3f932fc7fe83af60              # double 0.018736958417249538
	.quad	0x3fbf2262ac12fba8              # double 0.12161843014744866
	.quad	0x3fd2372c465893fc              # double 0.28461748952605581
	.quad	0x3fa393e0ba1ee880              # double 0.038237593383613877
	.quad	0x3fcb6ac49d23cccc              # double 0.21419580147594386
	.quad	0x3fe9eff3d0d842f9              # double 0.81054106512064472
	.quad	0x3fb6b7dfef36c7f0              # double 0.088743205930569279
	.quad	0x3fd9c8f184005a74              # double 0.40288961306342874
	.quad	0x3fdcafa1457eea96              # double 0.448219602457962
	.quad	0x3fd1b86c39e057fc              # double 0.27688127185808731
	.quad	0x3fd3c9ae6d26026c              # double 0.30918465289145192
	.quad	0x3fb9640d0ebf60c8              # double 0.099182907200318415
	.quad	0x3fafe0ec3cbb7360              # double 0.062262899793245507
	.quad	0x3fe5958c9816d675              # double 0.67450551705287742
	.quad	0x3fc70137c322fff0              # double 0.1797246649566655
	.quad	0x3fe58249c4cbf9a0              # double 0.67215431630011224
	.quad	0x3fc7b874ff744fbc              # double 0.18531668160778547
	.quad	0x3fb93fcdc233ef80              # double 0.098629817879496428
	.quad	0x3fc8e3525ca55390              # double 0.1944373085376836
	.quad	0x3fe52dd9d7fe51e4              # double 0.66184704004495787
	.quad	0x3fe2bcb015268ec7              # double 0.58553318148593625
	.quad	0x3fc85442f1f81588              # double 0.19007145705124295
	.quad	0x3fdb651a769a20c4              # double 0.42804586012108481
	.quad	0x3fd234d63bd48174              # double 0.28447490542205078
	.quad	0x3fb00040d7352c40              # double 0.062503864804214437
	.quad	0x3fe647bf8484c04e              # double 0.69625831491976853
	.quad	0x3fe6ffa86fecd9a3              # double 0.71870824680700129
	.quad	0x3fc3be0aaaeadb9c              # double 0.15423711152626829
	.quad	0x3fb15220fc95fbe8              # double 0.067659436861489675
	.quad	0x3fe043907c9a39c0              # double 0.50824760757841858
	.quad	0x3fe07097b2eb4262              # double 0.51374421067346199
	.quad	0x3fe1066cabd2ac16              # double 0.53203424033324853
	.quad	0x3fbc58d15c31e758              # double 0.11073025227406441
	.quad	0x3fdcbf8e04007d68              # double 0.44919157400905485
	.quad	0x3feb7d5d8e82fd91              # double 0.85905340036690536
	.quad	0x3fee9fbc276906f6              # double 0.9569988984805764
	.quad	0x3fb5e6918881f510              # double 0.085549445941030421
	.quad	0x3fe57dc7ec04b24d              # double 0.67160411927540908
	.quad	0x3fe38a03245582e1              # double 0.61059720131387618
	.quad	0x3fc151496f802a6c              # double 0.13529317802779717
	.quad	0x3fd6645311fb6a00              # double 0.34987332111418823
	.quad	0x3fd244490aff9fc4              # double 0.28541780542445516
	.quad	0x3fea13ca4e16efd5              # double 0.81491580249666618
	.quad	0x3fb45a6316591068              # double 0.079504197078735239
	.quad	0x3fde3162b0e08368              # double 0.47176425240654973
	.quad	0x3fce60fafdc4a730              # double 0.23733460799240325
	.quad	0x3fdd5e1145d7efbc              # double 0.45886642285017465
	.quad	0x3fee896649a0b523              # double 0.95427240734503405
	.quad	0x3fee5f11c7a8afed              # double 0.94910515781293514
	.quad	0x3fe51b8600455e45              # double 0.6596097951214196
	.quad	0x3feed35080046655              # double 0.96329522136074763
	.quad	0x3fda1bdaba049810              # double 0.40795009771170587
	.quad	0x3fe2d0aaccabdc01              # double 0.58797206854694661
	.quad	0x3fde2653ddccbb1e              # double 0.47108933124666119
	.quad	0x3fd090eed5ceb500              # double 0.25884600524553036
	.quad	0x3fb447fed50b77a8              # double 0.079223563206567094
	.quad	0x3fe3ff652e444038              # double 0.6249261764187457
	.quad	0x3fe689b7a12cf76b              # double 0.70431119422549437
	.quad	0x3fdff6a488965104              # double 0.49942887629119093
	.quad	0x3fe8d2d844baa73c              # double 0.77573789046912322
	.quad	0x3fe993fd82cb4696              # double 0.79931521936142036
	.quad	0x3fdac224f33c7fb4              # double 0.41809962991282679
	.quad	0x3fe280f65d525fdb              # double 0.57824247576626975
	.quad	0x3fc9c6ab1a9b8904              # double 0.20137537764737357
	.quad	0x3fbd55db300e7910              # double 0.11459131167655223
	.quad	0x3fe801a406036b0a              # double 0.75020028280718631
	.quad	0x3fec5e6281ad297d              # double 0.88652158095764799
	.quad	0x3fe111fd4b953911              # double 0.53344597589765119
	.quad	0x3faae7ef8ea4ef60              # double 0.05255077949774889
	.quad	0x3fc23999ee83a138              # double 0.14238285204124579
	.quad	0x3fe84d7f65c9abcf              # double 0.75946016197610244
	.quad	0x3fdf5ad528543520              # double 0.48991898477909679
	.quad	0x3feb09d31efa2c31              # double 0.84494930315248074
	.quad	0x3fefa13c78c2d267              # double 0.98843215547692586
	.quad	0x3fd2021d48eaa636              # double 0.28137905236016836
	.quad	0x3fea08a93cd65571              # double 0.8135572612979286
	.quad	0x3fc0820cc2c05580              # double 0.12896880635586783
	.quad	0x3fb01f30bebf6ac0              # double 0.062975927895801753
	.quad	0x3fd2d7a68e6ed9de              # double 0.2944122687289602
	.quad	0x3fcc0bbc92efcc10              # double 0.21910817312854691
	.quad	0x3febc48fb3ce4cb4              # double 0.86774430387813206
	.quad	0x3fef3be57ea8112a              # double 0.97606158006286603
	.quad	0x3fe366ddfb0fbff7              # double 0.60630702052549068
	.quad	0x3fe2dba7bae771c7              # double 0.58931337837889763
	.quad	0x3fe9a2a2a23b0e2d              # double 0.80110294042282748
	.quad	0x3fd9785dee0a3a64              # double 0.39797161336983877
	.quad	0x3fd5fc4c7e992118              # double 0.34352409709073717
	.quad	0x3fb4233379adaa08              # double 0.078662125784525583
	.quad	0x3fedb964d0ae5c28              # double 0.92888108022714722
	.quad	0x3fd654490308d058              # double 0.34889436050730671
	.quad	0x3fc16f5cc0ca2e1c              # double 0.13621100820124432
	.quad	0x3fe4639759b3a937              # double 0.63715713043101274
	.quad	0x3fd634ca55c38c06              # double 0.34697206855179308
	.quad	0x3fe721623327ad1a              # double 0.72282514563758871
	.quad	0x3fe7511808fc0338              # double 0.72864915613909087
	.quad	0x3fe8c3160723f678              # double 0.77381421465516009
	.quad	0x3fef44903f6a8626              # double 0.97711956392248989
	.quad	0x3fed60b6962ff28c              # double 0.91805581410842895
	.quad	0x3fd8540c0952996c              # double 0.38012982283034691
	.quad	0x3fe1f8d4e9f93f28              # double 0.56162496278736729
	.quad	0x3fd6ce11fa05193e              # double 0.35632752815253699
	.quad	0x3fc6c99efb31dd00              # double 0.17802798524255792
	.quad	0x3fe7c1b1151d4d4a              # double 0.74239400981824955
	.quad	0x3fd90248ab9b2c9c              # double 0.39076439627087622
	.quad	0x3fe4e1d616b7e6d3              # double 0.65256790578060941
	.quad	0x3fe6f7d3380bf40c              # double 0.71775208422298098
	.quad	0x3fd453987b4dca9e              # double 0.31760227242845385
	.quad	0x3fb94e09f970aeb8              # double 0.098847030065992381
	.quad	0x3fa5fcaf44b394b0              # double 0.042943455826198629
	.quad	0x3fd11094cc0993ac              # double 0.26663703847435261
	.quad	0x3fe75f38e5f70e50              # double 0.73037381091166687
	.quad	0x3fe46613acb06834              # double 0.6374605534395017
	.quad	0x3fe485442093cab9              # double 0.64126783716923008
	.quad	0x3fd8a57caae49158              # double 0.38510052384142091
	.quad	0x3fc6f745df2ea500              # double 0.17942117116516698
	.quad	0x3f9efa8c4b0b9aa0              # double 0.030252639847186402
	.quad	0x3fa3db4bdbd32f70              # double 0.038782473167514264
	.quad	0x3fb0b3ea7672ca78              # double 0.065245298307482602
	.quad	0x3fde677050eabc84              # double 0.47506339933438135
	.quad	0x3fe611e20f841a68              # double 0.68968298941110806
	.quad	0x3fcdf297e129c3cc              # double 0.2339658593587316
	.quad	0x3fe7606899795a4c              # double 0.73051862693211822
	.quad	0x3fdd9c2a06b08630              # double 0.4626565041854489
	.quad	0x3fef8f8a15bff63d              # double 0.98627189872758658
	.quad	0x3fef0f57bf90204e              # double 0.97062289633414323
	.quad	0x3fd1a28cb3d64db8              # double 0.27554624139994699
	.quad	0x3fe1355eaab7f6cb              # double 0.53776486724356098
	.quad	0x3fd0557e3c635a48              # double 0.25521808526301415
	.quad	0x3fe81d74a11e13e0              # double 0.75359565227756419
	.quad	0x3fc929011a282b84              # double 0.19656385209267679
	.quad	0x3fe6a5341ceddb9b              # double 0.70766645097943426
	.quad	0x3fc5bbea176ec00c              # double 0.1697971929947929
	.quad	0x3fb9dd59ff41e650              # double 0.10103380662794703
	.quad	0x3fc3d53707f584b0              # double 0.15494430435777451
	.quad	0x3fee796e966fab41              # double 0.95232324010917335
	.quad	0x3fbc8bd12222c860              # double 0.11150843699832214
	.quad	0x3fe1c557900ee141              # double 0.55533960472443067
	.quad	0x3feb4dde4a98b093              # double 0.85325541085832624
	.quad	0x3fee0aacd83a0450              # double 0.93880312186969128
	.quad	0x3fe975a20fadaa93              # double 0.79560950338539482
	.quad	0x3fef52d834609eba              # double 0.97886286001172285
	.quad	0x3fcbcefa9f759ae4              # double 0.2172539976702047
	.quad	0x3fdcd1d619aa114a              # double 0.45030739313394419
	.quad	0x3fb76602e924c088              # double 0.09140031997663034
	.quad	0x3fc0aed370737c28              # double 0.13033526411797536
	.quad	0x3fe0a1348d7398c1              # double 0.51967837931876926
	.quad	0x3fed544190d9c333              # double 0.91653517047061539
	.quad	0x3fe3d7ee8ac06915              # double 0.62010886287615341
	.quad	0x3fd5aafcde407fda              # double 0.33856126503269268
	.quad	0x3fe9a0fe9e4b754d              # double 0.80090266148514788
	.quad	0x3fc0827cceebb304              # double 0.12898216346311397
	.quad	0x3fdf155ce2e75190              # double 0.48567888411096138
	.quad	0x3fedd335fc9fed0a              # double 0.93203257885707669
	.quad	0x3fe1041479aa05ac              # double 0.53174804461030112
	.quad	0x3fe3235f57861c37              # double 0.59806792349343751
	.quad	0x3fdf23a4db8f786e              # double 0.48655053559730888
	.quad	0x3feee9b8680fa0ea              # double 0.96603031467841771
	.quad	0x3fe89652c2c9acd5              # double 0.76835001034251127
	.quad	0x3fc2c6cf066b7db8              # double 0.14669215978117989
	.quad	0x3fa41ef54d6535c0              # double 0.039298692414927228
	.quad	0x3feb5619d37663b8              # double 0.85426036168347874
	.quad	0x3f79f6dc0d6b3780              # double 0.0063389392659710664
	.quad	0x3fc52f8f179e3a00              # double 0.16551388409830281
	.quad	0x3fcb162dbe6fa244              # double 0.21161433981548516
	.quad	0x3fdf372a35b8251a              # double 0.48774199720408407
	.quad	0x3fdf1a4e9296fdb8              # double 0.4859806472340682
	.quad	0x3fe0919b2602b2fb              # double 0.517774175872176
	.quad	0x3fca0147bcfd97c0              # double 0.20316406944328769
	.quad	0x3fe6949732bf9c49              # double 0.70563850318729593
	.quad	0x3fdb79586214d65e              # double 0.42928132608662917
	.quad	0x3fefa2776cae68ce              # double 0.98858233668149764
	.quad	0x3fe73bd706a9c07b              # double 0.72605468083749203
	.quad	0x3fe137705967d4f8              # double 0.5380174394801136
	.quad	0x3fd9b7cec08c5a98              # double 0.4018437271455837
	.quad	0x3fe800363d6d75be              # double 0.75002586362432289
	.quad	0x3fe519830d4b6f1c              # double 0.65936424824346629
	.quad	0x3fe3a8d44839154b              # double 0.61435903650332457
	.quad	0x3fca64817c253f34              # double 0.20619219362060337
	.quad	0x3fe30e4e2b53dc7c              # double 0.59549625837725229
	.quad	0x3fda5320a973a57a              # double 0.41132370517751549
	.quad	0x3fca094e98b6b85c              # double 0.20340902764059166
	.quad	0x3fd8e4b96ded3814              # double 0.38896022543929232
	.quad	0x3feca543e21e426a              # double 0.89517397083006967
	.quad	0x3fd00eb7b1e722ca              # double 0.25089828847243878
	.quad	0x3feaed2daa9b91ca              # double 0.84145243951621151
	.quad	0x3feb1d72d914f98a              # double 0.84734480284514402
	.quad	0x3fc108b78eaa3444              # double 0.13307852235849016
	.quad	0x3fee21f91f935cef              # double 0.94164711157909931
	.quad	0x3fbdb47e632281c0              # double 0.11603536529810921
	.quad	0x3fb9cc0c815b0da8              # double 0.10076978834245287
	.quad	0x3feea2ac7607ec22              # double 0.95735762646598155
	.quad	0x3fd1de4192a3f58c              # double 0.27919043846471747
	.quad	0x3feef3ebbbc801ad              # double 0.96727549243955979
	.quad	0x3fc7893e3c5b6704              # double 0.18387582728501439
	.quad	0x3fe1d6e1ead416c7              # double 0.55748077263771101
	.quad	0x3fe6648b55a2e90a              # double 0.69977347112515642
	.quad	0x3fdc72c0fee334f8              # double 0.44450402156219537
	.quad	0x3fe4a22580dcbca5              # double 0.64479327362450489
	.quad	0x3fef60d56d38bcf5              # double 0.98057051975584264
	.quad	0x3fd5d1de93aaa2e4              # double 0.34093441410600023
	.quad	0x3fd930471d289936              # double 0.39357164237516729
	.quad	0x3feffa09eb54aa9c              # double 0.99927230799706334
	.quad	0x3fec1eaa93802986              # double 0.87874344643323421
	.quad	0x3fc88676a8083fdc              # double 0.19160350041101892
	.quad	0x3fc6173164058590              # double 0.17258279212823568
	.quad	0x3fa13df1b3b651e0              # double 0.033675721347353749
	.quad	0x3fe5f55c539299cd              # double 0.68620125124726317
	.quad	0x3fcb86a2eb056660              # double 0.21504627681388211
	.quad	0x3fd30456a81cd22a              # double 0.29713980118984529
	.quad	0x3fe100770a9489d0              # double 0.53130676332903626
	.quad	0x3fd71afc3a01c8b6              # double 0.36102204956763317
	.quad	0x3fcc2dd1ac3de2f4              # double 0.22014828596345348
	.quad	0x3fd496260d52de2a              # double 0.32166434575217073
	.quad	0x3fc1e8e314633c34              # double 0.13991964812746149
	.quad	0x3feb1500151ae3ab              # double 0.84631351587369374
	.quad	0x3fd2c8e0440f960e              # double 0.29351050039835591
	.quad	0x3feee7dc9e3f8fc7              # double 0.96580344112270999
	.quad	0x3fae66b1e624e0f0              # double 0.059377250045544616
	.quad	0x3fd8472d0a925eae              # double 0.3793442347755257
	.quad	0x3febea21dda9e564              # double 0.87233060163195519
	.quad	0x3fdabd306e31cafe              # double 0.41779719124967574
	.quad	0x3fbc84c8dc2ef268              # double 0.11140113235064464
	.quad	0x3fdf92b53ddb356c              # double 0.49332934418347096
	.quad	0x3fdb450ea318d52e              # double 0.42608991553727804
	.quad	0x3fe0e69e35d28de6              # double 0.5281516123981731
	.quad	0x3fd0e3925ae60fa6              # double 0.26388987423728805
	.quad	0x3fe6f0d8389809f7              # double 0.71689997724052901
	.quad	0x3fe37dcdf470816f              # double 0.60910699598393403
	.quad	0x3febc402b0672da3              # double 0.86767706350058338
	.quad	0x3fd4115f25785e34              # double 0.31356028231809607
	.quad	0x3fc3b6e336fe337c              # double 0.15401878533557667
	.quad	0x3fe095f24b25e216              # double 0.51830401112880753
	.quad	0x3fefd29fcdcb4a46              # double 0.99446096605454026
	.quad	0x3fe53bba6cc414b0              # double 0.66354104274127756
	.quad	0x3fec3f61263aa0e2              # double 0.88273675409893948
	.quad	0x3fc0d780cfbf11c0              # double 0.13157663482537707
	.quad	0x3fdbb631d87a47c2              # double 0.43299528255840525
	.quad	0x3fd8b29301594ada              # double 0.38589930659979432
	.quad	0x3fde5f7abde14118              # double 0.47457760374983726
	.quad	0x3fed093d9eddbfcf              # double 0.90737801579052213
	.quad	0x3fe4ed921939bc05              # double 0.65400032927379981
	.quad	0x3fcb33dd71a92564              # double 0.21252029466476607
	.quad	0x3fead4fec7804080              # double 0.83850039448772407
	.quad	0x3fe5cee74d1d6350              # double 0.68150677739604681
	.quad	0x3fd2c61157478cf0              # double 0.29333909533870806
	.quad	0x3fe383b49d4a5318              # double 0.60982733460204752
	.quad	0x3fe407712259f8cd              # double 0.6259084387709436
	.quad	0x3fd540ff0e34650e              # double 0.33209205996679791
	.quad	0x3fea30715fd28abe              # double 0.81841343608206052
	.quad	0x3fec9bde7f98cd29              # double 0.89402699395433161
	.quad	0x3fe1bbc1f4e9f6ee              # double 0.5541696341967659
	.quad	0x3fdf9c70e682e112              # double 0.49392340193618722
	.quad	0x3fdbf23c0ea5ad5e              # double 0.43665982656849234
	.quad	0x3fdb3954b300b8b0              # double 0.42537419777625995
	.quad	0x3fe9a4c4384ee8dc              # double 0.80136309621527912
	.quad	0x3fec601fd5209041              # double 0.88673392893225167
	.quad	0x3fd0100c7176067c              # double 0.2509795291917738
	.quad	0x3fe785008b5f77a4              # double 0.73498561116479211
	.quad	0x3fe0295b25510185              # double 0.50504834450116276
	.quad	0x3fe9c1f8a114c213              # double 0.80492812596463847
	.quad	0x3fcd4fdd539ab740              # double 0.22899977285617901
	.quad	0x3fed75b720c4c1ca              # double 0.92061954879869146
	.quad	0x3fd482469dfb01de              # double 0.32045140674384054
	.quad	0x3fd2f89ec8a00fce              # double 0.29642457573231418
	.quad	0x3fe2892ca0ba7691              # double 0.57924491302738279
	.quad	0x3fe5ac14d80fe617              # double 0.67725603294019521
	.quad	0x3fe836c2cc921dd8              # double 0.75668468432643987
	.quad	0x3fc72babeaa46934              # double 0.18102024991169119
	.quad	0x3fe7ec449f083c82              # double 0.74759131489726394
	.quad	0x3fc61977a6165dac              # double 0.17265220269903858
	.quad	0x3fb47ea707c27cb0              # double 0.080057563204251946
	.quad	0x3fde3b06034992c2              # double 0.47235250779185034
	.quad	0x3fe9484eebfcb338              # double 0.79007669535858494
	.quad	0x3fc8668a13dea380              # double 0.19062925310324985
	.quad	0x3fd6618c6697490a              # double 0.34970388430259958
	.quad	0x3fd32ee66834fc7c              # double 0.29973755051100404
	.quad	0x3faea87e54020770              # double 0.059879253153680589
	.quad	0x3fb7392471102ec8              # double 0.090715673068355263
	.quad	0x3fe846e12aa2e0e4              # double 0.75865228965178888
	.quad	0x3fe08d457f190fc3              # double 0.51724505256469688
	.quad	0x3f950c1596ddb100              # double 0.020553910573128498
	.quad	0x3fd9547bbcb786dc              # double 0.39578145436654011
	.quad	0x3fd3e70a338ff2a4              # double 0.31097655330067142
	.quad	0x3fd1e9fe7e447b38              # double 0.2799068673211198
	.quad	0x3fec1522f9da4b5c              # double 0.87758015441282166
	.quad	0x3f91852b4a7116e0              # double 0.01710956231933991
	.quad	0x3fe3916d084d8f54              # double 0.6115021860282277
	.quad	0x3fe48dca28803ac2              # double 0.64230831060725557
	.quad	0x3fecc3e569d9e7d4              # double 0.89891310380994093
	.quad	0x3fc49a0d6778ebcc              # double 0.16095130493508092
	.quad	0x3fe4001e74873319              # double 0.62501452216528997
	.quad	0x3fe32b99ab91d219              # double 0.59907229909601079
	.quad	0x3fd0b03bec365e10              # double 0.26075647418608217
	.quad	0x3fe29807363100c7              # double 0.5810581262994895
	.quad	0x3fedd37ee824de17              # double 0.93206734982135486
	.quad	0x3fd4faf4e8fa95ce              # double 0.32781718017426165
	.quad	0x3fe1e377fe9a2396              # double 0.55901717879270296
	.quad	0x3fe44633241387e8              # double 0.63356930776739961
	.quad	0x3feae7555273745a              # double 0.84073892692289154
	.quad	0x3fde0d2a2c3f7db6              # double 0.46955351182074467
	.quad	0x3fea7945339a3262              # double 0.82730350569324806
	.quad	0x3fe5f58c44409aa3              # double 0.68622411089457491
	.quad	0x3fd6880ad7f1df0e              # double 0.35205336655006725
	.quad	0x3fef2e876c70a3e2              # double 0.97442980937659862
	.quad	0x3fdccf09f27dc40e              # double 0.45013664894855843
	.quad	0x3fe8202ee8457762              # double 0.7539286171483861
	.quad	0x3fd147d314dd840a              # double 0.27000882184626163
	.quad	0x3fda8d0ffc619a86              # double 0.41485976835830518
	.quad	0x3f97d7b5926cdec0              # double 0.023283803045358153
	.quad	0x3fc59645c9f2ad4c              # double 0.16864845619907454
	.quad	0x3fe5c9783c163838              # double 0.68084346519186223
	.quad	0x3fe6ab1623afb988              # double 0.70838458032612639
	.quad	0x3feb2b1c944327d0              # double 0.84901265103803247
	.quad	0x3fd18845b1f499b8              # double 0.27394239786590502
	.quad	0x3fde8710f05edab4              # double 0.4769937846535115
	.quad	0x3fa2ff592fb1e870              # double 0.037104403564584554
	.quad	0x3fecf73b257f5a17              # double 0.90517957042431163
	.quad	0x3fd5404c4feeb456              # double 0.3320494442548968
	.quad	0x3fd34985f3521450              # double 0.30136250268725906
	.quad	0x3fefff051263b4ee              # double 0.99988034812636584
	.quad	0x3fd97516e4de19d0              # double 0.39777157163953536
	.quad	0x3fe4b9c3cbb1e479              # double 0.64767637046965298
	.quad	0x3fee4a126ceefb10              # double 0.94654198909833731
	.quad	0x3fe5cb974cbfeeb9              # double 0.68110241880591282
	.quad	0x3fe5d4282104ab9f              # double 0.68214804123759964
	.quad	0x3fd04fba65183b16              # double 0.25486621735119408
	.quad	0x3feb730d86c23db7              # double 0.85779453582829646
	.quad	0x3fd139742e298afc              # double 0.26913170345339643
	.quad	0x3fd03d1526e5a688              # double 0.25372818754713267
	.quad	0x3fd81f615b72bc34              # double 0.37691530161368125
	.quad	0x3fd2e9c27a684030              # double 0.29551755861121176
	.quad	0x3fb4ea6ac9f7e398              # double 0.081701921757384333
	.quad	0x3fe1ea4e740653f2              # double 0.55985186253621877
	.quad	0x3fe377d6f6bf04d1              # double 0.60837886993990697
	.quad	0x3fdf661f893893b4              # double 0.49060810471047067
	.quad	0x3fe5568d161bc0a3              # double 0.66681532209442584
	.quad	0x3fe75fa7c2c86bb5              # double 0.73042667430433161
	.quad	0x3fca3f18b80fc434              # double 0.20505055415518003
	.quad	0x3fd6f9553888929e              # double 0.35896807213638648
	.quad	0x3fcd1864b71d6cb8              # double 0.22730692807349384
	.quad	0x3f8f2cbd4602a1c0              # double 0.015222052287143906
	.quad	0x3fe341dae52d6fdc              # double 0.60178894768932478
	.quad	0x3fe3f2c7e25d0d2f              # double 0.62338632785432491
	.quad	0x3fe625701b8c96a2              # double 0.69207005863855309
	.quad	0x3fc883a82f765b1c              # double 0.19151785199638816
	.quad	0x3fc7640bc44beb84              # double 0.18274066052239502
	.quad	0x3fdf12c23f40f6c0              # double 0.48551994492650508
	.quad	0x3fed49737a8751bf              # double 0.91521619731297921
	.quad	0x3fd5dc6daf53756c              # double 0.34157888528519353
	.quad	0x3fd6828c19edde28              # double 0.35171797306199659
	.quad	0x3fef7adaf90aaf05              # double 0.98374699250186437
	.quad	0x3fc918ec2fa38ba4              # double 0.19607307745090197
	.quad	0x3fd84ac7b1821d4e              # double 0.37956421217719061
	.quad	0x3fe01d748191c1ca              # double 0.50359559351459748
	.quad	0x3feb20f873d61e73              # double 0.84777472137734688
	.quad	0x3fd93d13991ee9c8              # double 0.39435281708906844
	.quad	0x3fc88f820e049c04              # double 0.19187951740715914
	.quad	0x3fda6e765829a4d6              # double 0.41299208268772014
	.quad	0x3fed07d87377e98e              # double 0.90720770409034102
	.quad	0x3fc779304ef98160              # double 0.18338588577445147
	.quad	0x3fd23ead5aa95fec              # double 0.28507551053689784
	.quad	0x3fe8623fcab77944              # double 0.76199330895523376
	.quad	0x3fd5818160380a5e              # double 0.3360293807637954
	.quad	0x3fe0d7fbdc6098cd              # double 0.52636521379897661
	.quad	0x3fec9423830b9b96              # double 0.89308333964150921
	.quad	0x3fda5c31db6b3b88              # double 0.41187712123512954
	.quad	0x3fed87c04f5d6356              # double 0.92282119275032914
	.quad	0x3fe9b170f504e615              # double 0.80291030745792347
	.quad	0x3fc0737515495ca0              # double 0.12852347888358384
	.quad	0x3fd0c6c9f95f4640              # double 0.26213311531782679
	.quad	0x3fce1e7c2cb3dd48              # double 0.23530533011192234
	.quad	0x3fdf04b6377b0d8e              # double 0.48466258447680211
	.quad	0x3fef2859c68dd83c              # double 0.9736756208428754
	.quad	0x3fd0d702efb69f7c              # double 0.26312325868138209
	.quad	0x3fee0e1dfe1e2b3b              # double 0.93922328598396321
	.quad	0x3fdb35862158f038              # double 0.42514184242805042
	.quad	0x3fe30907e255bcf6              # double 0.59485239225423814
	.quad	0x3fe1fd104ebf4fd1              # double 0.56214156513532931
	.quad	0x3fea62c5bec631f2              # double 0.82455718288980351
	.quad	0x3fecc1e771623bad              # double 0.89866993088968672
	.quad	0x3fe575a7b8e6276a              # double 0.67061220276921785
	.quad	0x3fc052e4de9c198c              # double 0.12752972478501723
	.quad	0x3febd1a0a6adf4ce              # double 0.86933929972260571
	.quad	0x3feffd555b1460b7              # double 0.99967448986992379
	.quad	0x3fdbdf3019c7699a              # double 0.43549730794406971
	.quad	0x3fe18c8ff6aa5795              # double 0.54840849091373178
	.quad	0x3fefe186d9a67395              # double 0.9962801218967906
	.quad	0x3fed9f62ae2ebeb2              # double 0.92570623416937381
	.quad	0x3fdd6fb9250c9e2e              # double 0.45994404428572266
	.quad	0x3fc039cd5e678584              # double 0.12676398381794851
	.quad	0x3fdc00a71d873fdc              # double 0.43753984340309926
	.quad	0x3fab427d6fd885b0              # double 0.053241653349924589
	.quad	0x3fe5bbbc9f65d75b              # double 0.6791670907248134
	.quad	0x3fcacf844c3f5c50              # double 0.20945790980360579
	.quad	0x3fd4dc498d99ca5a              # double 0.32594527080724378
	.quad	0x3fe8f46bafb05a0c              # double 0.77983650507195667
	.quad	0x3fd325d9faf51568              # double 0.2991852713351677
	.quad	0x3f94740d8aa24ee0              # double 0.019973956667469817
	.quad	0x3feb7cea4fd0fc01              # double 0.85899844731454789
	.quad	0x3fe32a1e6afd0908              # double 0.59889145752120587
	.quad	0x3fecd9f0be6f7bdf              # double 0.90160405344419903
	.quad	0x3fdf02bfcdba77de              # double 0.48454279986060367
	.quad	0x3fdd3e654bfeba1e              # double 0.45693333073987386
	.quad	0x3fc1eaa343cea120              # double 0.13997307597060971
	.quad	0x3fdfbec4e44d0eb0              # double 0.49601862235088401
	.quad	0x3fe2a5a38f7a1e1b              # double 0.58271959326606593
	.quad	0x3fdc87f2c9da3756              # double 0.44579763137959583
	.quad	0x3fee633ea135f037              # double 0.94961482511963069
	.quad	0x3fcbede4dd6dcf88              # double 0.21819744884453152
	.quad	0x3fd35fdb094dc4da              # double 0.30272556217739821
	.quad	0x3fc8fde58d88d184              # double 0.1952483121000449
	.quad	0x3fdcf36705a9e91c              # double 0.45235610535714144
	.quad	0x3fdce9c5f7a0a088              # double 0.45176839048736683
	.quad	0x3fd8aa2c18f91ba4              # double 0.38538649023797178
	.quad	0x3fb46e846cbbf418              # double 0.079811359926637571
	.quad	0x3fe2176248664fed              # double 0.56535448208387395
	.quad	0x3fa782ae5a83d260              # double 0.045918892430482527
	.quad	0x3fe78dc72c77e678              # double 0.73605688748575826
	.quad	0x3fc3c055d5487ec8              # double 0.15430710710733408
	.quad	0x3fdfd376012f48fc              # double 0.49728155246442873
	.quad	0x3fbd57b3a97b87e8              # double 0.11461947334058176
	.quad	0x3fd904c65b2cf226              # double 0.3909164324175286
	.quad	0x3feb6b9d6f12e69f              # double 0.85688659376247134
	.quad	0x3fe6cca5a1e20352              # double 0.71248132341143333
	.quad	0x3fd7e172f30fd50e              # double 0.37313531624325058
	.quad	0x3face0d111ceedd0              # double 0.056402715133539894
	.quad	0x3fd360481557cc8e              # double 0.30275156101488043
	.quad	0x3fc79c55b2871158              # double 0.18445845811050776
	.quad	0x3feca0037da01a0e              # double 0.894532914507012
	.quad	0x3fd8d30c7b68abe6              # double 0.38788139392516852
	.quad	0x3fdeb84edfa2ba30              # double 0.47999927367610251
	.quad	0x3fe1d71a57af131a              # double 0.55750767827757675
	.quad	0x3fd9d7e92be7f4c0              # double 0.40380315101340258
	.quad	0x3fe6c2ea7dd7d195              # double 0.71129345492095075
	.quad	0x3fb8d7274ba09568              # double 0.097032981837931964
	.quad	0x3fe42aa3fa9fd2fb              # double 0.6302051444059481
	.quad	0x3fda82854ca0986a              # double 0.41421635134827872
	.quad	0x3fd1c4b5751014a8              # double 0.27763115341105982
	.quad	0x3fee93e9f0fa3829              # double 0.95555588785078271
	.quad	0x3fe20de5d5da4840              # double 0.56419650810335753
	.quad	0x3fad137436dbbe10              # double 0.05678904695184539
	.quad	0x3fd2be495763b6aa              # double 0.29286416563159412
	.quad	0x3fdd0e9c82aebc70              # double 0.45401680719346071
	.quad	0x3fdb48f63a7d80b6              # double 0.42632823669374476
	.quad	0x3fe14aec229e3cb6              # double 0.54039580117559782
	.quad	0x3fea7e1b030b8c81              # double 0.82789373965023583
	.quad	0x3fc6312ecc0434a4              # double 0.17337593995799694
	.quad	0x3feb1b4a4074c933              # double 0.84708130444622609
	.quad	0x3fc37faffe3c4dd0              # double 0.15233421243520562
	.quad	0x3fcd58be4202e540              # double 0.22927072737892651
	.quad	0x3fe02ec5c0dd0d44              # double 0.50570953053139833
	.quad	0x3fc27592a27cba18              # double 0.14421303686090492
	.quad	0x3fef83ac1b75db33              # double 0.98482327807764702
	.quad	0x3fb5a182d2249938              # double 0.08449571257060462
	.quad	0x3fe8a6d7cc728da5              # double 0.77036657267710906
	.quad	0x3fdb013e5bd7c14e              # double 0.42195090264342106
	.quad	0x3fb3ef2e7af1c258              # double 0.077868371024814365
	.quad	0x3fde61fb164cf3ee              # double 0.47473027398865397
	.quad	0x3fdfbfdedfad412e              # double 0.49608585208354128
	.quad	0x3fed67bb6fa510f8              # double 0.91891261869071084
	.quad	0x3fe9ee1695b84443              # double 0.81031350366732402
	.quad	0x3fe4a20aa2789167              # double 0.6447804616223437
	.quad	0x3fe3e8f733f06abf              # double 0.62218818802224252
	.quad	0x3fb5984170ffc2c8              # double 0.084354486549055641
	.quad	0x3fcec211c8c24e24              # double 0.24029753019986899
	.quad	0x3feb79767167aac8              # double 0.85857698583034736
	.quad	0x3fef2c2911c55fbe              # double 0.97414067717453867
	.quad	0x3fcc39407457cee0              # double 0.22049718552408759
	.quad	0x3fecae9319473ea0              # double 0.89631037652175749
	.quad	0x3fd5d0be246fcdc4              # double 0.34086564596438174
	.quad	0x3fe854453c3fda90              # double 0.76028692023722222
	.quad	0x3fd07535aec26cd6              # double 0.25715391222338491
	.quad	0x3fe9ca0ee51f7e92              # double 0.80591530562010605
	.quad	0x3fbc722fab448240              # double 0.11111734324777789
	.quad	0x3fdf4f0f0693fe4c              # double 0.48920035974876863
	.quad	0x3fdd024c7e59c00c              # double 0.45326530779766538
	.quad	0x3fd2e44de7a8a6ae              # double 0.29518458960465466
	.quad	0x3fd987d86c025d6a              # double 0.39891634509827745
	.quad	0x3fc3962fcb9d9aa4              # double 0.15302083437128033
	.quad	0x3fcb7ccc76460664              # double 0.21474605345797493
	.quad	0x3fda5108c7701956              # double 0.41119594074588883
	.quad	0x3fd8141b3f100728              # double 0.3762271991582673
	.quad	0x3fbd4c4890a02d10              # double 0.11444524317646576
	.quad	0x3fe241e73281841d              # double 0.5705448137706558
	.quad	0x3fe900f51f13212a              # double 0.78136688298494517
	.quad	0x3fecbf578f803951              # double 0.89835718181147162
	.quad	0x3fb34c33b0c46250              # double 0.075381498962437065
	.quad	0x3fda5cd109af604a              # double 0.41191507287795004
	.quad	0x3fe57ca211844cf5              # double 0.6714639989972101
	.quad	0x3fe1a6094cffc130              # double 0.55151810683131508
	.quad	0x3fec5af69dcd07b1              # double 0.88610392399299631
	.quad	0x3fcd5c5d60ebb5e8              # double 0.22938124878366684
	.quad	0x3fab8bc9a99a4810              # double 0.053800870850992166
	.quad	0x3fa0c3db69ccb370              # double 0.032744270958892652
	.quad	0x3fc1fc0474c76814              # double 0.14050346090408594
	.quad	0x3f48a4edec45c800              # double 7.520829899887449E-4
	.quad	0x3fe4325531a3064f              # double 0.63114413923921997
	.quad	0x3fd19cda029221e4              # double 0.27519846201951581
	.quad	0x3fd2d7e851d9d50e              # double 0.2944279479336992
	.quad	0x3fda3226278894e8              # double 0.40931085453696747
	.quad	0x3fdb523722a5a6ba              # double 0.42689302810195395
	.quad	0x3fe8cf640fe36290              # double 0.77531626799744124
	.quad	0x3fc3c6306e0fa444              # double 0.15448575376584206
	.quad	0x3fe7a3b8885c54f4              # double 0.73873545296615228
	.quad	0x3fd7c512958ce330              # double 0.37140335659528301
	.quad	0x3fe21d5184fde1aa              # double 0.56607891058870519
	.quad	0x3fd47946a3caa9c0              # double 0.31990209574965078
	.quad	0x3fe971274938fbbb              # double 0.79506267834937405
	.quad	0x3fe0dd23741f952d              # double 0.52699444465966894
	.quad	0x3fe565013b03711b              # double 0.66857968832076453
	.quad	0x3fedc165485917c6              # double 0.92985786562416517
	.quad	0x3fd433b51eacf510              # double 0.31565597530045952
	.quad	0x3fe2899ee6096c51              # double 0.57929940156044257
	.quad	0x3fd96f7741aa6ffc              # double 0.39742833531067823
	.quad	0x3fe6b6492166e30b              # double 0.70975166820343938
	.quad	0x3fb8844fd8c11f38              # double 0.095768919390249674
	.quad	0x3fe824deaa8c509f              # double 0.75450070676972192
	.quad	0x3fd5b2a79d603e56              # double 0.33902922028298599
	.quad	0x3fbcfa1e3b7c91c0              # double 0.11319149925527139
	.quad	0x3f73e9c2177fd300              # double 0.0048616010390005737
	.quad	0x3fd8ae19c9e551dc              # double 0.38562626568207548
	.quad	0x3fd999d47e852c50              # double 0.40001404147614483
	.quad	0x3fed742dad9ac383              # double 0.92043193728578421
	.quad	0x3fea6f63c96a666d              # double 0.82609738673199973
	.quad	0x3fe837a996edd962              # double 0.75679473379458906
	.quad	0x3feb5718a9f553e9              # double 0.85438187785132158
	.quad	0x3fd95a8c2439b72c              # double 0.39615157640115473
	.quad	0x3fd7a66166e0d598              # double 0.36953005835251806
	.quad	0x3fd7d224e3374f5c              # double 0.37220117749278869
	.quad	0x3fc2093b0fc31000              # double 0.14090669889094443
	.quad	0x3fb3083f1550bd38              # double 0.074344580367996183
	.quad	0x3febbcacfccb3619              # double 0.86678170560634549
	.quad	0x3fe45a0bf89f1881              # double 0.63599203642731095
	.quad	0x3fd45ed9866c2dfc              # double 0.31828916670994523
	.quad	0x3fc4c9895e3b0790              # double 0.16240040875532857
	.quad	0x3feff5ab14f5f14b              # double 0.99873880475892329
	.quad	0x3fe15a5ecc333eeb              # double 0.54228153117034361
	.quad	0x3fe4742c4590adbb              # double 0.63918126666015185
	.quad	0x3febb5ab08bd6443              # double 0.86592628199571953
	.quad	0x3fef196fc8aa60a6              # double 0.9718550605057501
	.quad	0x3fe8ac1837839f64              # double 0.77100764124496068
	.quad	0x3facb73fcf99dcc0              # double 0.056085580913469268
	.quad	0x3fccdd7a2c3fb98c              # double 0.22550894890396156
	.quad	0x3fb67ab075ffe740              # double 0.08780959015703349
	.quad	0x3fcf6c3b5b36c614              # double 0.2454904742603935
	.quad	0x3fa18316a9de9f30              # double 0.034203251110112354
	.quad	0x3fd6bd7c70c9b402              # double 0.35531531347697876
	.quad	0x3fe6364127d6b19c              # double 0.69412286549554691
	.quad	0x3fe476d4a80270c7              # double 0.63950569929468137
	.quad	0x3fb21c7781d63b68              # double 0.070746869276474222
	.quad	0x3fe92b06395be7dd              # double 0.78650199129992482
	.quad	0x3fd0236ca1364cb8              # double 0.25216212981576858
	.quad	0x3fda20d5a3dd65b8              # double 0.40825406076836712
	.quad	0x3fe91d9f51ea33c8              # double 0.78486600874895718
	.quad	0x3fd53dc1bc6d88ae              # double 0.33189433480414265
	.quad	0x3fe6f3dabec21ca6              # double 0.71726739175291665
	.quad	0x3feffb6a4f9a9a4a              # double 0.99944034145011895
	.quad	0x3fd64a62f669088e              # double 0.34829019607071465
	.quad	0x3fb88ec50e2bb108              # double 0.095928493461261977
	.quad	0x3fb407bdfbaf9360              # double 0.07824313540147676
	.quad	0x3fdb368a3db351c8              # double 0.42520385766445346
	.quad	0x3fca0caf9e7f3680              # double 0.20351214636905368
	.quad	0x3f921d6e1d9cb160              # double 0.017690392072084449
	.quad	0x3fe2ea09441b30bb              # double 0.59106887151712983
	.quad	0x3fce622c92fafdf0              # double 0.23737103630808987
	.quad	0x3fb2160701c44a28              # double 0.070648611003243489
	.quad	0x3fb88c4910fa4598              # double 0.095890585560729824
	.quad	0x3fef2e59ce088b2d              # double 0.97440805664914409
	.quad	0x3feea49c9f591ede              # double 0.95759421465569594
	.quad	0x3fe9c13ff938ffa0              # double 0.80484007526682788
	.quad	0x3fe75461db4840f6              # double 0.72905056789934863
	.quad	0x3feb606ed95e6d68              # double 0.85552160696844926
	.quad	0x3fcc5bcdade68be8              # double 0.22155161849249727
	.quad	0x3fac71e85e40c8f0              # double 0.055556546693326214
	.quad	0x3fe4560115c16817              # double 0.63549856423492457
	.quad	0x3fe20c7234a69387              # double 0.56401930125558486
	.quad	0x3fbb4738c31cb620              # double 0.10655550731163332
	.quad	0x3fa7eac4647786a0              # double 0.046713006271386748
	.quad	0x3fc3d20f6807f1e4              # double 0.1548480279888188
	.quad	0x3fc4a7d342e95c54              # double 0.16137161986509574
	.quad	0x3fb1dc73bf7b5a60              # double 0.069770082710741033
	.quad	0x3fd7423573af9e6c              # double 0.36341606423818607
	.quad	0x3fdaeba0d82f5996              # double 0.42063161002934046
	.quad	0x3fe2e6ed5461bd24              # double 0.59068933945483026
	.quad	0x3fed3648b123c161              # double 0.91287645909873671
	.quad	0x3fc8b6e772ff4f14              # double 0.19308179011442717
	.quad	0x3fce8cdc6a8fde74              # double 0.23867373660299374
	.quad	0x3fc30d0de3ebc2ac              # double 0.14883588437034712
	.quad	0x3f9432146258e0a0              # double 0.019722288611064287
	.quad	0x3fe24cb51a93cc44              # double 0.57186370077977999
	.quad	0x3fdf31d0c77422d4              # double 0.48741549947639595
	.quad	0x3fe1f9c64cc467d1              # double 0.56174006455989389
	.quad	0x3fd84029280697bc              # double 0.3789160624386303
	.quad	0x3fc095041981a9a8              # double 0.1295476078551705
	.quad	0x3fdd623129171ac4              # double 0.45911816609115541
	.quad	0x3fd3973560e15d30              # double 0.30610403500527905
	.quad	0x3fe820188b5b2ca6              # double 0.75391795366285375
	.quad	0x3fd9be8895ce237a              # double 0.40225424413124922
	.quad	0x3fc87c7327553b04              # double 0.19129790707162198
	.quad	0x3fe26b982ae38a05              # double 0.57563408257220827
	.quad	0x3fe4a99cf9aa0531              # double 0.64570473444488219
	.quad	0x3fd8e3c217234f94              # double 0.38890125522197505
	.quad	0x3fe9c0b021bbb51a              # double 0.80477148617288496
	.quad	0x3fd049ea63446546              # double 0.25451144880351639
	.quad	0x3fa350ce335f1f40              # double 0.037725871821349788
	.quad	0x3fe0b4c804c01cc3              # double 0.52206803253002254
	.quad	0x3fea6e57d721c12b              # double 0.82596961992206752
	.quad	0x3fca1ed905908058              # double 0.20406639835073537
	.quad	0x3fcb4910c6a2cc6c              # double 0.21316728304882149
	.quad	0x3fe18181b19ad69e              # double 0.54705891312069688
	.quad	0x3fdd87672539081e              # double 0.46138933787381287
	.quad	0x3fb9c4781cb64588              # double 0.10065413189865613
	.quad	0x3fe4e392ddbbcce1              # double 0.65277999217360272
	.quad	0x3fed927f8136913b              # double 0.92413306462234546
	.quad	0x3feee06418d97e0a              # double 0.96489148000176894
	.quad	0x3fe3d975eedd20e6              # double 0.62029549267847695
	.quad	0x3fd1d1890b666898              # double 0.27841402161869544
	.quad	0x3fe8bdbe64295655              # double 0.77316207468784148
	.quad	0x3fcc47d33c5b4d74              # double 0.22094192931272583
	.quad	0x3fc22f3869b25de0              # double 0.14206605111097215
	.quad	0x3febf4637c2ae7ba              # double 0.8735825944088369
	.quad	0x3fefebdfd640fbce              # double 0.99754325720265924
	.quad	0x3fc5fc1b99369ac4              # double 0.17175621968381993
	.quad	0x3fed122e198882b4              # double 0.90846924769365111
	.quad	0x3fda70f3a720cefa              # double 0.41314402886494828
	.quad	0x3fdb3bb0475c7214              # double 0.42551810234888987
	.quad	0x3fa0ed4859610780              # double 0.033060322676205622
	.quad	0x3fe1a8dfc7e2d52f              # double 0.55186451950308946
	.quad	0x3fd69a54dc7610a6              # double 0.35316964654362903
	.quad	0x3fe2effb6ec067bc              # double 0.59179469710510757
	.quad	0x3fe27528f7ae94cf              # double 0.576801761392426
	.quad	0x3f80d93a49fae280              # double 0.0082268289400968531
	.quad	0x3fe4659ee15a3c3a              # double 0.6374048615852026
	.quad	0x3fdd553857c69a7c              # double 0.45832642146925884
	.quad	0x3fb63998c492d080              # double 0.086816356650901482
	.quad	0x3fdb2005d04aa9e4              # double 0.42382951107961575
	.quad	0x3fb53f3f9a8c62c8              # double 0.082996344787157672
	.quad	0x3fd7e704d2eecc36              # double 0.37347527121454804
	.quad	0x3fd3f36461a84c7e              # double 0.31173047577721735
	.quad	0x3feb154a1cbbcf66              # double 0.8463488160327699
	.quad	0x3fd2a69455487ef6              # double 0.29141720131336457
	.quad	0x3fecca98d46935ae              # double 0.89973107801931973
	.quad	0x3fb1a65d7442d930              # double 0.06894477928549203
	.quad	0x3fd03d8e32d129c8              # double 0.25375704729654247
	.quad	0x3fe2d04ba4ff5d09              # double 0.58792669511868312
	.quad	0x3fcec0df1968ec24              # double 0.24026097050395478
	.quad	0x3fdf93a23499eb9c              # double 0.4933858407672973
	.quad	0x3fa6fa557c366020              # double 0.04487864629044247
	.quad	0x3fea45283c235e5b              # double 0.82094203706487734
	.quad	0x3feb61e4f49d8173              # double 0.85569999481599124
	.quad	0x3fec77fd644bb1c1              # double 0.8896471938037892
	.quad	0x3fe339766d889b37              # double 0.60076447861943094
	.quad	0x3fe11e2f07604109              # double 0.53493453446029193
	.quad	0x3fe0e7ef034457d3              # double 0.52831221235350723
	.quad	0x3fbe12ad365a7670              # double 0.1174724824618012
	.quad	0x3fce8f2d2487592c              # double 0.2387443950999083
	.quad	0x3fc6373406c925cc              # double 0.1735596688397848
	.quad	0x3fe2733c1f46292c              # double 0.57656675441947902
	.quad	0x3fc32ae0830dad18              # double 0.14974600218861478
	.quad	0x3fe07ea775fafa82              # double 0.51546071093601165
	.quad	0x3fd76f2deb86ae16              # double 0.36616085053057768
	.quad	0x3fae2af0e2da59f0              # double 0.058921363536842963
	.quad	0x3fd24666eddeda92              # double 0.28554700116675591
	.quad	0x3fed749727428d00              # double 0.92048223178827016
	.quad	0x3fda531790820266              # double 0.41132153617949141
	.quad	0x3fed90dbb09b63bc              # double 0.9239328812938008
	.quad	0x3fe88d3e8bb84577              # double 0.76724173821473485
	.quad	0x3fd387c691d94ac6              # double 0.30516208880468942
	.quad	0x3fcf756844cb1bb0              # double 0.2457704864411574
	.quad	0x3fe868e203940d36              # double 0.76280308436290656
	.quad	0x3fdb1e16dae8403e              # double 0.42371150376948552
	.quad	0x3fdc472a68785f1c              # double 0.44184360696952907
	.quad	0x3fec58121bcf011b              # double 0.88575082236642133
	.quad	0x3fdd63da07c4d7a2              # double 0.45921946295436034
	.quad	0x3fd6099ed2050e42              # double 0.34433718213788123
	.quad	0x3fe1ed06118151a4              # double 0.56018355769133565
	.quad	0x3fcc73b2ec1d77c0              # double 0.22228085068758041
	.quad	0x3fa44ce2ab504660              # double 0.039649089252759451
	.quad	0x3f4348da75ee5400              # double 5.8851878189847273E-4
	.quad	0x3fe1325fc5fa43d1              # double 0.53739918391704056
	.quad	0x3fe48f2a4b2ed383              # double 0.6424762218872363
	.quad	0x3fe1bb729a782f52              # double 0.55413179559534798
	.quad	0x3fd718a1cd18f118              # double 0.36087842015310079
	.quad	0x3fb726c27f6435f8              # double 0.090435176946094376
	.quad	0x3fd725627ff306fc              # double 0.36165678496409703
	.quad	0x3fe58b7492111150              # double 0.67327335861822668
	.quad	0x3fbf8d693424a850              # double 0.12325150988604716
	.quad	0x3fdb7c6960e49b74              # double 0.42946848356444112
	.quad	0x3fd3f319c9ee7c54              # double 0.3117126914966708
	.quad	0x3fd3f694bcb8fbf4              # double 0.31192511014881963
	.quad	0x3fee72095bf0ff6d              # double 0.95142047841362187
	.quad	0x3fc97a6496ab43a8              # double 0.19904763562092609
	.quad	0x3fe23dddb18a0f83              # double 0.57005200076717732
	.quad	0x3fe515dd8479e463              # double 0.6589191043305046
	.quad	0x3fc4f6618aa8b3e4              # double 0.16376895208796249
	.quad	0x3fe738e51ca01ecc              # double 0.72569518652832121
	.quad	0x3feaab269c01fda7              # double 0.83339243383664019
	.quad	0x3fc233e8a302e170              # double 0.14220912894758042
	.quad	0x3fd14652734ac57a              # double 0.26991711863509915
	.quad	0x3fc26c02a2701bf0              # double 0.14392121249713297
	.quad	0x3fda5d6c1c6ba926              # double 0.41195204520649253
	.quad	0x3fd1d8e170615152              # double 0.27886234259246578
	.quad	0x3feda1490c740647              # double 0.92593815262098011
	.quad	0x3fe8798a0f70cf32              # double 0.76483634010080537
	.quad	0x3fe3475378bfb315              # double 0.60245679458384649
	.quad	0x3fecddc8c9d02fc6              # double 0.90207328240057261
	.quad	0x3fe64ee533df4d6f              # double 0.69713077670387047
	.quad	0x3fb82936caeeec40              # double 0.094378876251469457
	.quad	0x3fe2cca0af336df4              # double 0.58747896403241251
	.quad	0x3fdb5342be44c52e              # double 0.42695683079644453
	.quad	0x3feed186ff28d81c              # double 0.96307706676339277
	.quad	0x3fed821d2644c410              # double 0.92213304018344111
	.quad	0x3fd9e591065372d0              # double 0.404636627366739
	.quad	0x3fe345c661344c63              # double 0.60226744637692453
	.quad	0x3fe25e1b8a06d1f9              # double 0.57398774107292561
	.quad	0x3fddd75a58c3c654              # double 0.46626909893447999
	.quad	0x3fefe0b01b8b99c0              # double 0.99617772464699072
	.quad	0x3fe40443fd54cb5a              # double 0.6255207012057824
	.quad	0x3febe745cc5da3c3              # double 0.8719815246123449
	.quad	0x3fe503bdbafff219              # double 0.65670668147464817
	.quad	0x3fe0ed8ee0cc5141              # double 0.528998793658083
	.quad	0x3fedfe24b4e00535              # double 0.93727336241878467
	.quad	0x3fd19e58ebdff660              # double 0.27528975519803645
	.quad	0x3fc08a02190d7b9c              # double 0.12921167586588644
	.quad	0x3fed37db67fb0894              # double 0.91306848820410602
	.quad	0x3feca6a738a955e7              # double 0.89534340922062661
	.quad	0x3fe9028fa8902d22              # double 0.78156264231202877
	.quad	0x3f9534e8bb2217a0              # double 0.020709644719793752
	.quad	0x3fdcb11d85271334              # double 0.44831026080310044
	.quad	0x3fe7238ad056bdc2              # double 0.72308865252664867
	.quad	0x3fe238c804ff32ad              # double 0.56943131423903071
	.quad	0x3fdb44b1b99fe232              # double 0.42606776358983034
	.quad	0x3fa2f377f6e4f4e0              # double 0.037013768089744437
	.quad	0x3fe101129505586d              # double 0.53138093095436789
	.quad	0x3fcb541f827586cc              # double 0.21350473280022297
	.quad	0x3fea974b694063be              # double 0.83096857602060203
	.quad	0x3fe1e2f6dc13dceb              # double 0.55895560249237286
	.quad	0x3fd68d1c4cfe4698              # double 0.35236270445703033
	.quad	0x3fd102dd9103bc78              # double 0.265799895873847
	.quad	0x3fbcd4b07bca2fb0              # double 0.11262038252078699
	.quad	0x3fe4ea21d8ed91ec              # double 0.65358059281112224
	.quad	0x3fc1a7c70c32896c              # double 0.13793266387535696
	.quad	0x3fd78cf7768e801e              # double 0.36797892167851554
	.quad	0x3fcea72bbaf673f8              # double 0.23947664860762052
	.quad	0x3febb51ca1dc5521              # double 0.8658583794919289
	.quad	0x3fe0fa22938553f9              # double 0.53053406536730485
	.quad	0x3fe136b7e0232c03              # double 0.537929475563374
	.quad	0x3fe343af1d5e3f99              # double 0.60201221214264244
	.quad	0x3feaf1fd9085fa4e              # double 0.84203985430924333
	.quad	0x3feb8099f2960288              # double 0.85944840793679678
	.quad	0x3fe16174c35016e2              # double 0.54314649722138264
	.quad	0x3fc65684a8d1de1c              # double 0.17451532595781394
	.quad	0x3faccbcf7778ad90              # double 0.056242450078879291
	.quad	0x3fd86d1475b67640              # double 0.38165771003136584
	.quad	0x3fef89eae5cc752b              # double 0.98558564074088417
	.quad	0x3fecabdceb72997b              # double 0.8959793661677361
	.quad	0x3fdec45b540c9c9c              # double 0.48073466499267581
	.quad	0x3fd3099d14929abe              # double 0.29746176728296436
	.quad	0x3febc51a7193b908              # double 0.86781046088233982
	.quad	0x3f5fd4a2ebd75600              # double 0.0019427863147617463
	.quad	0x3fd5b493447badd0              # double 0.33914643943600442
	.quad	0x3fa38e835ce6e3e0              # double 0.038196663942876574
	.quad	0x3fd3e14c2f2bd2b0              # double 0.31062607389984986
	.quad	0x3fd7785cb19cf826              # double 0.36672131867442415
	.quad	0x3fe749f2fe8448df              # double 0.72777700147915059
	.quad	0x3fe76683a8d44e24              # double 0.73126395201183358
	.quad	0x3fde910423186148              # double 0.47760108401555046
	.quad	0x3fe4b6efd09a070a              # double 0.64733114950669912
	.quad	0x3fe16ae3fd6da2df              # double 0.54429816720684332
	.quad	0x3feefa616ae9dced              # double 0.96806403047130873
	.quad	0x3f5e1bed84852c00              # double 0.0018377131946916148
	.quad	0x3fcc9821a3bd5fd8              # double 0.22339268202881502
	.quad	0x3fe53180d215e8c5              # double 0.66229287178364216
	.quad	0x3feb6daee5cdca5a              # double 0.85713906177108901
	.quad	0x3fed9348ad471123              # double 0.92422899096758149
	.quad	0x3fc0971b543a4b2c              # double 0.12961141216927652
	.quad	0x3fe0fe2cbc19cf22              # double 0.531027190575035
	.quad	0x3fd4197edbc09926              # double 0.31405612430752894
	.quad	0x3fd7cab5d22d92ee              # double 0.37174745106885509
	.quad	0x3febd24140723bdc              # double 0.86941588008073322
	.quad	0x3fd4446e6a1249d2              # double 0.31667671545542675
	.quad	0x3fdb444b10475a8a              # double 0.42604328717917694
	.quad	0x3fea2b8975efb5b7              # double 0.8178145698017748
	.quad	0x3fdc6856a0e38268              # double 0.44386831008708905
	.quad	0x3fcbcc2504e084f4              # double 0.21716749895225684
	.quad	0x3fe156463ff14b4b              # double 0.54178154457836436
	.quad	0x3fe9f1415898c88e              # double 0.810700104752202
	.quad	0x3fcda742d5daab40              # double 0.23166690294359604
	.quad	0x3fdd996740f17388              # double 0.46248799650293693
	.quad	0x3fba9fedaec529b8              # double 0.10400281445359993
	.quad	0x3fdc235180bd61c2              # double 0.43965566227191399
	.quad	0x3fd1ba6d380e16ce              # double 0.27700357889294203
	.quad	0x3fe7bbe66c4d50b9              # double 0.74168702271210585
	.quad	0x3fc76b750d0ec39c              # double 0.18296683442670492
	.quad	0x3fd986c690ce6578              # double 0.39885105267747845
	.quad	0x3fefa681df78f699              # double 0.98907560011840012
	.quad	0x3fe09054f954bfd2              # double 0.51761864373656352
	.quad	0x3fb9ad901b7c0748              # double 0.10030460997589075
	.quad	0x3fda5fb5ba81c968              # double 0.41209166730472768
	.quad	0x3fe6cc306b82cc9d              # double 0.71242543218831467
	.quad	0x3fceb6db52ead1d0              # double 0.23995534466452151
	.quad	0x3fef40e14f6f1d92              # double 0.97666993631803423
	.quad	0x3feb6c6ced53b85a              # double 0.85698553421913037
	.quad	0x3fd961201bbfc000              # double 0.3965530653940732
	.quad	0x3fdea8f5946eb2ca              # double 0.47906245704033934
	.quad	0x3fd82512c36e2032              # double 0.37726277432421107
	.quad	0x3feb0117e71e609c              # double 0.84388346805919267
	.quad	0x3febe9ab31fcb8fc              # double 0.87227401507496393
	.quad	0x3fd29a98fefe11ce              # double 0.29068589116675703
	.quad	0x3fe475afbf759a3c              # double 0.6393660296860797
	.quad	0x3fd274ed5164ca50              # double 0.28838665913204853
	.quad	0x3fd4f03eb84de240              # double 0.3271633910985976
	.quad	0x3fe32f7d7dbd678d              # double 0.59954714354101812
	.quad	0x3fd3d1fa0dd3d946              # double 0.30969096517892003
	.quad	0x3fd10571691e3848              # double 0.26595721497949798
	.quad	0x3fd525e74d0710aa              # double 0.33043844721056337
	.quad	0x3fd7326438b8f9aa              # double 0.36245065249741037
	.quad	0x3fe340acfa1587c8              # double 0.60164498180915249
	.quad	0x3fef3214e7be4c65              # double 0.97486348402379674
	.quad	0x3fe4f758f0ad3659              # double 0.65519377715254301
	.quad	0x3fecabdefe8ff524              # double 0.89598035544591825
	.quad	0x3fe4672a88883c15              # double 0.6375935236591227
	.quad	0x3fd3e6238d9a44ec              # double 0.31092156246547975
	.quad	0x3fc83a3cbfbca754              # double 0.18927726137308787
	.quad	0x3fee2d8ac11bd8e6              # double 0.94305932728346131
	.quad	0x3fd6b7bf837efb60              # double 0.35496509400757326
	.quad	0x3fc051015fe4272c              # double 0.12747208769024476
	.quad	0x3fdccd12880eb6f8              # double 0.45001662527907582
	.quad	0x3fe68c828921f21e              # double 0.70465208800993984
	.quad	0x3feaadb5acf4e031              # double 0.83370479374480599
	.quad	0x3fe6f3ba09432280              # double 0.71725179490120183
	.quad	0x3fd7a26b48182a38              # double 0.3692882732436007
	.quad	0x3fedab453c5ee5ec              # double 0.92715703765059975
	.quad	0x3fd816ac92b40d6e              # double 0.3763839180612284
	.quad	0x3fee8d4d2a2aaab5              # double 0.95474870906521991
	.quad	0x3feab3872b9e3716              # double 0.83441504019876578
	.quad	0x3fe4503eb74b6ba5              # double 0.63479553031662717
	.quad	0x3fd0d464f2211a26              # double 0.26296352048339811
	.quad	0x3feb85d446df5865              # double 0.86008657305025038
	.quad	0x3fef8f7ee8112f36              # double 0.98626656842814131
	.quad	0x3fb956978d784f48              # double 0.098977539099277867
	.quad	0x3feb188060d2f7ff              # double 0.8467409030051839
	.quad	0x3fc9a90523f410a4              # double 0.20047058349166946
	.quad	0x3fef01ad4e6c83d5              # double 0.96895470921674109
	.quad	0x3fd1227b43c525de              # double 0.26772958391356194
	.quad	0x3fca53a07020b044              # double 0.20567708468422741
	.quad	0x3fe7ff0967121992              # double 0.74988241320606819
	.quad	0x3fe24b1620bd3198              # double 0.57166582483619077
	.quad	0x3fef86e4d12503a5              # double 0.98521653030922051
	.quad	0x3f8dc8e61b874880              # double 0.014543340411283134
	.quad	0x3fbd92088db39c20              # double 0.11550954303275818
	.quad	0x3febc0ed7cdeecab              # double 0.86730074299648174
	.quad	0x3fef3404b1ff522e              # double 0.97509989514452911
	.quad	0x3fec2b66ad679252              # double 0.88029798381882984
	.quad	0x3fd08ded5f914340              # double 0.25866255123860427
	.quad	0x3fd1382cb0bc1234              # double 0.2690536237644523
	.quad	0x3fdf4652f838662a              # double 0.48866724243416348
	.quad	0x3fe43330e95fed35              # double 0.63124890881537132
	.quad	0x3fd0e93d91f40bca              # double 0.26423587086918288
	.quad	0x3fe7e84082bbf664              # double 0.74710107358960132
	.quad	0x3fd088ebbb5859e8              # double 0.2583569840948301
	.quad	0x3febf22293ab75da              # double 0.87330750314475414
	.quad	0x3fe4f8117c63075a              # double 0.65528177542021671
	.quad	0x3fdd3bd41a193f7e              # double 0.45677664326375822
	.quad	0x3feb5913dd812e19              # double 0.85462373030299255
	.quad	0x3fe8f3eb302f9c7a              # double 0.77977523242306224
	.quad	0x3fdee73c32c0ffba              # double 0.48286347347675085
	.quad	0x3fe455fff2f046c2              # double 0.6354980225462088
	.quad	0x3feaa6f4e6004e85              # double 0.83288044855221754
	.quad	0x3fc289fa4fe64958              # double 0.14483574773164309
	.quad	0x3fe5490ed146ea49              # double 0.66516819834152685
	.quad	0x3fe2a91ca6d0f945              # double 0.58314354497250831
	.quad	0x3fe0f434063d9b55              # double 0.52980996340634567
	.quad	0x3fc7d0eb52cf0274              # double 0.18606320899381823
	.quad	0x3fadc40a1d154c50              # double 0.058136287737078463
	.quad	0x3fe05f5f2b5abc74              # double 0.51164205997146306
	.quad	0x3fdecf62eee40f14              # double 0.48140786484894815
	.quad	0x3fd1ed343e381632              # double 0.28010278774340513
	.quad	0x3fed7e525ed68aee              # double 0.92167013667162023
	.quad	0x3fea78b61993504f              # double 0.82723526950076998
	.quad	0x3fb9dfd644e2cfa8              # double 0.10107173139368675
	.quad	0x3fedaa2c06b821aa              # double 0.92702294647556482
	.quad	0x3fc67c9bf32496b0              # double 0.1756777703496275
	.quad	0x3fde963704600178              # double 0.47791839053390772
	.quad	0x3fd4411a50b3c3fc              # double 0.31647355919909592
	.quad	0x3fcfd50360956ce8              # double 0.24868814674378048
	.quad	0x3fb5b94570c9c450              # double 0.084858264957589968
	.quad	0x3fe62da8cefeeb3e              # double 0.69307365826475809
	.quad	0x3fe3618634d3f6ca              # double 0.6056548148914882
	.quad	0x3feead4d2f23a714              # double 0.95865496832741081
	.quad	0x3fe2b06cdcff0b5a              # double 0.58403628505071059
	.quad	0x3fd7e442b92d4c3c              # double 0.37330692371068941
	.quad	0x3fee21745fc40993              # double 0.94158381180050055
	.quad	0x3fef7762425d4687              # double 0.98332322084225232
	.quad	0x3feda99d1f9b3897              # double 0.92695480511771933
	.quad	0x3fe330ad67ffa7cd              # double 0.59969206154095789
	.quad	0x3fdb526a763ec25e              # double 0.42690526530626538
	.quad	0x3fc48de635319cd8              # double 0.16058042142251483
	.quad	0x3fe99944ad48e86f              # double 0.79995950550734374
	.quad	0x3fe06190f50081fc              # double 0.51190994121503719
	.quad	0x3fdbf509755afbb4              # double 0.43683086834419815
	.quad	0x3feac3a1cccd4b7b              # double 0.83638086319329774
	.quad	0x3fd54f44b1c4046a              # double 0.33296315536433119
	.quad	0x3fe1c88bc0b7731a              # double 0.55573070182763051
	.quad	0x3fb18fd28c4eea98              # double 0.068600806479404475
	.quad	0x3fed7a4d04b17039              # double 0.92117930332779629
	.quad	0x3fd1a96ed444ec2a              # double 0.27596636514107564
	.quad	0x3fd2a6ddd0e713fa              # double 0.29143472099923395
	.quad	0x3fe4ede046bfbd6f              # double 0.65403760736618988
	.quad	0x3fd924b36ece26ec              # double 0.39286504574611913
	.quad	0x3fe5bdf4b2421156              # double 0.67943796936064405
	.quad	0x3fdd4f84d4a843f2              # double 0.45797844664872323
	.quad	0x3fe5801411b31711              # double 0.6718845697111836
	.quad	0x3fe3c3ecacefa26c              # double 0.61766656662537178
	.quad	0x3fe829c6ada92a18              # double 0.75509962003826825
	.quad	0x3fccc2081e9aa044              # double 0.22467137808166815
	.quad	0x3f973723f7a29920              # double 0.022671281804513943
	.quad	0x3fe870cedf2ad689              # double 0.7637705191361458
	.quad	0x3fe02b504db0dc0b              # double 0.50528731512065528
	.quad	0x3f7aab47e230f500              # double 0.0065110023452323862
	.quad	0x3feaad5129f7dec9              # double 0.83365686604425904
	.quad	0x3fcd66109ab8e2b8              # double 0.22967727236552604
	.quad	0x3fe068b3d2436a8c              # double 0.5127810579973171
	.quad	0x3fc9fa03c3763990              # double 0.20294234317811943
	.quad	0x3fe8db6c08b3fee8              # double 0.77678491306138842
	.quad	0x3fd38147adf57fca              # double 0.30476562488729242
	.quad	0x3fefe25789dd8b0a              # double 0.99637963225208748
	.quad	0x3fe7b163ff083a1b              # double 0.74040412722553428
	.quad	0x3fe8f456a6ed31ca              # double 0.77982647517051729
	.quad	0x3fee23c9cb14e15b              # double 0.94186868347518826
	.quad	0x3fea8f7150fa7099              # double 0.83001008812017851
	.quad	0x3faffa21f7b68660              # double 0.062455235947038501
	.quad	0x3fe125e4c531f850              # double 0.5358756877392441
	.quad	0x3fd160abbf421254              # double 0.27152532270000518
	.quad	0x3fb08d5d6b2a5ed0              # double 0.064657057441191101
	.quad	0x3fc6a9884de72890              # double 0.1770487194428978
	.quad	0x3fb7385b287680b0              # double 0.090703675631177871
	.quad	0x3fe3f0ec0358b750              # double 0.62315941480276571
	.quad	0x3fe3278bbddb0f1e              # double 0.59857737618628781
	.quad	0x3fa464d5fcfcfa40              # double 0.039831816799495545
	.quad	0x3fe60e9fe18472f2              # double 0.68928522154200622
	.quad	0x3fed1de838d19885              # double 0.90990077111634149
	.quad	0x3fd73c5afd266bbc              # double 0.36305880281150471
	.quad	0x3fee987148c2386d              # double 0.95610870562246719
	.quad	0x3fe413d11cad433f              # double 0.62741904831828055
	.quad	0x3fe7e8c91fcbd983              # double 0.7471662159939999
	.quad	0x3fd6b1aea6c24514              # double 0.35459486279531061
	.quad	0x3fedf8ff02ac1b49              # double 0.9366450359528723
	.quad	0x3fe280c8c6bcc8b5              # double 0.57822073760896464
	.quad	0x3fb4beac2492bbb8              # double 0.081034430436132676
	.quad	0x3fec1b9b9e50ddd0              # double 0.87837010308333596
	.quad	0x3fc5ba313d4d3d98              # double 0.16974463933227635
	.quad	0x3fe260635b7ba4e1              # double 0.57426612727899962
	.quad	0x3febf69f8b9c3f93              # double 0.87385537402768632
	.quad	0x3fcf7fd1c3d5132c              # double 0.24608823835492311
	.quad	0x3febcbd9612dcfe2              # double 0.86863392811073603
	.quad	0x3fda37c129fb5130              # double 0.40965298747802859
	.quad	0x3fe657dba6ea5065              # double 0.69822485542910029
	.quad	0x3fd389927f32bfe6              # double 0.30527174398139179
	.quad	0x3faddc50f8bc2eb0              # double 0.058321504939241264
	.quad	0x3fa46141e505d820              # double 0.0398045150822528
	.quad	0x3fb8f0253ce793a8              # double 0.097414328927313165
	.quad	0x3fedfaa66201ad8f              # double 0.93684691564469513
	.quad	0x3fb32175142eeff0              # double 0.074729268481803279
	.quad	0x3fb1c5dd96af55a8              # double 0.069425439155870294
	.quad	0x3fc1519fc16f4968              # double 0.13530346818022143
	.quad	0x3fb7161721882c30              # double 0.090180822073464339
	.quad	0x3fdc3298a22a3886              # double 0.44058814846437888
	.quad	0x3fe22bffe9787159              # double 0.56787105178549802
	.quad	0x3fe95106721aad84              # double 0.79114076887110273
	.quad	0x3fe5d6580483be3a              # double 0.68241501695405948
	.quad	0x3fe0c2485bf8ce62              # double 0.52371614421140245
	.quad	0x3fe4666b345f9bff              # double 0.63750229100412514
	.quad	0x3fe181abfc90effe              # double 0.54707907990768923
	.quad	0x3fb3d36015399db0              # double 0.07744408147993087
	.quad	0x3fc3498545222b04              # double 0.15068117023141536
	.quad	0x3fe68b8696d7ffaa              # double 0.7045319505850689
	.quad	0x3fe1e151c2524468              # double 0.55875480607404615
	.quad	0x3fe75b1c5d609e3e              # double 0.72987192380691801
	.quad	0x3f41dfefc9d02000              # double 5.4549415983817795E-4
	.quad	0x3fe1375859e4ee70              # double 0.53800599629853529
	.quad	0x3fe6fcdd9ea11e92              # double 0.71836739523219451
	.quad	0x3fe757f4fdb66384              # double 0.72948693803037701
	.quad	0x3fe5aaacaf202c8c              # double 0.67708429531320879
	.quad	0x3fbd8b45d30ae088              # double 0.11540638353733546
	.quad	0x3fd4654e7af18e8c              # double 0.31868326193055263
	.quad	0x3fee4b025f441643              # double 0.94665640455850342
	.quad	0x3fe163b57f899f5c              # double 0.54342150602040418
	.quad	0x3fc37735b9ad762c              # double 0.15207549635208417
	.quad	0x3fe71eaaea3fbada              # double 0.72249360801455542
	.quad	0x3fd8cd94dd02a232              # double 0.38754769881282691
	.quad	0x3fec38e6e6896a64              # double 0.88194603945460103
	.quad	0x3fe0e9ba60eac4e1              # double 0.52853125504602982
	.quad	0x3fb329b70b322a70              # double 0.07485527060831898
	.quad	0x3fcaf6f840112700              # double 0.21066191795608091
	.quad	0x3fc9de60b606a2a0              # double 0.20209893119797062
	.quad	0x3fe0cb23ceddf267              # double 0.52479734805781397
	.quad	0x3fc0112f65face90              # double 0.12552444915273897
	.quad	0x3fef69e796c2684a              # double 0.98167781300731716
	.quad	0x3fb276ed34064cf8              # double 0.072127175523110654
	.quad	0x3fdd8f2855a8003c              # double 0.46186264386051668
	.quad	0x3fe95f6172154bc4              # double 0.79289314538834121
	.quad	0x3fe472b018785551              # double 0.63899998454386708
	.quad	0x3fe906850097b9d9              # double 0.78204584232099272
	.quad	0x3fe3ed86ed8ae248              # double 0.62274500269911304
	.quad	0x3fd434d0798a22fa              # double 0.31572353238202278
	.quad	0x3fdf29f74ceb32e6              # double 0.48693640243145209
	.quad	0x3fb326c8bc3a80e0              # double 0.074810548738699634
	.quad	0x3fd501f856324c2a              # double 0.3282452432405899
	.quad	0x3fe005b11ad9b389              # double 0.50069480175226133
	.quad	0x3fe949ae6d6ad8fc              # double 0.79024430628376718
	.quad	0x3fdad5fd06c6e04a              # double 0.41931081449320529
	.quad	0x3fe6be182a260a69              # double 0.71070488197467541
	.quad	0x3fc35305a60c4528              # double 0.1509711323529157
	.quad	0x3fe6b2d677ae7853              # double 0.70933078170106467
	.quad	0x3fe9e0f011054722              # double 0.80870822262133779
	.quad	0x3fe78d38c8c41f89              # double 0.7359889908993732
	.quad	0x3fd704c307f9407e              # double 0.35966563967395604
	.quad	0x3fc5ea96208292d4              # double 0.17122150981335571
	.quad	0x3fe6a07dea27ac91              # double 0.70709129079240729
	.quad	0x3fb3e5f19c914920              # double 0.077727413868420303
	.quad	0x3fdf9a627f45e68c              # double 0.49379789761551574
	.quad	0x3fe95bfc26e9a5aa              # double 0.79247863388188944
	.quad	0x3fe28b89ddde3b17              # double 0.57953351338969383
	.quad	0x3feaf0700bd02e26              # double 0.84185030276552619
	.quad	0x3f90feef9a957120              # double 0.016597503480953013
	.quad	0x3fe89a62b5f6532b              # double 0.76884589709752527
	.quad	0x3fec5159f84beeed              # double 0.88493059630806459
	.quad	0x3fe15153649fce82              # double 0.54117746022389235
	.quad	0x3fb265f7a3355570              # double 0.071868398042473691
	.quad	0x3fee6a7af71c5cc5              # double 0.95049808753801612
	.quad	0x3fe8f948979939c3              # double 0.78043012246217136
	.quad	0x3fee5344c3a97452              # double 0.94766462531300477
	.quad	0x3fea201061075334              # double 0.8164140601244072
	.quad	0x3fec4166bc665f98              # double 0.88298355862478939
	.quad	0x3fdda81dfe095d7c              # double 0.4633860569787982
	.quad	0x3fea73e958bf21d2              # double 0.8266493542988036
	.quad	0x3fe8202dba9c4379              # double 0.75392805526108397
	.quad	0x3fe49811161ca861              # double 0.64356283491839517
	.quad	0x3fe7ce45b2781e72              # double 0.7439297185637328
	.quad	0x3fd5ea694b195108              # double 0.34243233045459975
	.quad	0x3fe275f190d019f8              # double 0.5768974140526657
	.quad	0x3fdbafce271aaa64              # double 0.43260530298963418
	.quad	0x3fe6ee724ef62403              # double 0.71660724088826588
	.quad	0x3fd839269ab7a284              # double 0.37848820790399196
	.quad	0x3fab6ed8f2d788a0              # double 0.053580073970594499
	.quad	0x3fe16231d2f1626b              # double 0.54323664855753628
	.quad	0x3fda015db79d3738              # double 0.40633337908808498
	.quad	0x3fcfc115dad744e0              # double 0.24807999787893831
	.quad	0x3fcc0c83ebc6a67c              # double 0.21913193714617651
	.quad	0x3fe35f0db2754af9              # double 0.6053532109748111
	.quad	0x3f9766e5f8c45800              # double 0.022853463467150448
	.quad	0x3fc0cfb202e82658              # double 0.1313383592790156
	.quad	0x3fd692a55e1c39b0              # double 0.35270055952505697
	.quad	0x3fd613cc0a62c5e6              # double 0.34495831503144669
	.quad	0x3fe721369a5e6b74              # double 0.72280435705338997
	.quad	0x3fe8be2f2d10f906              # double 0.77321585466396026
	.quad	0x3fef70d25f24dc97              # double 0.98252218802271584
	.quad	0x3fd9611b037a7f74              # double 0.3965518506974981
	.quad	0x3fd3db80e45750de              # double 0.31027242945607536
	.quad	0x3fc31ac4088cbb98              # double 0.1492543260332837
	.quad	0x3fea761fa7ca21f2              # double 0.82691939135935244
	.quad	0x3fa5d0b4a3ea4490              # double 0.042607922562759915
	.quad	0x3fe4c142adba2c82              # double 0.64859136515714533
	.quad	0x3feedf3629fb20fd              # double 0.96474750708969703
	.quad	0x3fd36e844915d474              # double 0.30362040650590605
	.quad	0x3fee2ef211558901              # double 0.94323066125460298
	.quad	0x3fedbff4715b22d4              # double 0.92968198909610544
	.quad	0x3feebbcfbac17d0c              # double 0.96042620158905966
	.quad	0x3fbc10d43c469430              # double 0.1096317908437221
	.quad	0x3fdbb2969ee535d6              # double 0.43277516858219423
	.quad	0x3fb338f481e77120              # double 0.075087815966473404
	.quad	0x3fe195ce6e289ca2              # double 0.54953691020354634
	.quad	0x3fe1e3f901cdf628              # double 0.55907869675110522
	.quad	0x3fe7365f8dc78c50              # double 0.72538736048989882
	.quad	0x3fe785a46f1972e7              # double 0.73506375979522154
	.quad	0x3fec838236cf7c00              # double 0.89105330186055198
	.quad	0x3fe95a88ef14b878              # double 0.79230162330146836
	.quad	0x3fa6bc64e981c620              # double 0.044406083587898104
	.quad	0x3fc94b89aaa3feec              # double 0.1976177294927689
	.quad	0x3fd800affa0cb6c4              # double 0.37504195612823943
	.quad	0x3fe6189bee4b79d4              # double 0.69050404111822639
	.quad	0x3fd3f321b30af2d8              # double 0.31171457752843201
	.quad	0x3fd139c919787674              # double 0.26915194976195456
	.quad	0x3fe6315147a81dc0              # double 0.69352020259332647
	.quad	0x3fd9fbc595fbd52e              # double 0.40599193236205877
	.quad	0x3fd4ff4e59bf1d3e              # double 0.32808264507589857
	.quad	0x3fd3a12c6b450864              # double 0.30671225047638573
	.quad	0x3fc8c24b5ea9f920              # double 0.19342939493430666
	.quad	0x3fe8ca781660657c              # double 0.77471546526355394
	.quad	0x3fda50cb94cf87e2              # double 0.41118135006229128
	.quad	0x3fd01a94cd387a76              # double 0.25162239113880192
	.quad	0x3fdfdb03b8dd733c              # double 0.49774258664347193
	.quad	0x3fe22d383258be8e              # double 0.568019960721317
	.quad	0x3fea887253041d2d              # double 0.8291560765655156
	.quad	0x3febd56c16391f55              # double 0.86980251636939931
	.quad	0x3fe836fbaee81b24              # double 0.7567118087907585
	.quad	0x3fcc1fe64949512c              # double 0.21972349718510864
	.quad	0x3fe0120675d360b6              # double 0.50220034611540743
	.quad	0x3fb241ce01a659b8              # double 0.07131660023001174
	.quad	0x3fb0a69f8ff7a0d0              # double 0.065042469642892842
	.quad	0x3f9cbd4bf8909560              # double 0.028065859838667051
	.quad	0x3fc73d1c4973f0a4              # double 0.18155244432990003
	.quad	0x3fd194d73b4a9efe              # double 0.27470951833900858
	.quad	0x3feb02761f30b092              # double 0.84405046550593199
	.quad	0x3fec48fac2cc8bfc              # double 0.88390863463098368
	.quad	0x3fef365e36ac50f2              # double 0.97538672140447447
	.quad	0x3fdc830c35416c6e              # double 0.44549851608980517
	.quad	0x3fcae9101b20e368              # double 0.21023751568443605
	.quad	0x3fe15f23e073ee8f              # double 0.54286378706406591
	.quad	0x3fdc0ed757c8ed54              # double 0.43840583393803922
	.quad	0x3fef9c1865f0d1b1              # double 0.98780460272114656
	.quad	0x3fe16c4d6b044ebd              # double 0.54447050954555432
	.quad	0x3fcced10f6b2566c              # double 0.22598468824132867
	.quad	0x3fcce1a4a21c4e80              # double 0.22563608089022935
	.quad	0x3fc627be2974a558              # double 0.17308785461618004
	.quad	0x3fb76d6a3ef41658              # double 0.091513290757654686
	.quad	0x3feb191f62484861              # double 0.846816722829555
	.quad	0x3fe343b7d706b0cc              # double 0.60201637265483887
	.quad	0x3fec7f93d80771d8              # double 0.89057342713527543
	.quad	0x3fe4e98a9d2dab10              # double 0.65350847910790044
	.quad	0x3fd7705a098485b8              # double 0.36623240403613577
	.quad	0x3fe33370c178c0f7              # double 0.60002935206833186
	.quad	0x3fe59e9fa13a8435              # double 0.67561322679478641
	.quad	0x3fe6a81f0b1ea63c              # double 0.70802261516400433
	.quad	0x3fe3e794cc46b83b              # double 0.62201919458107768
	.quad	0x3fe61a2c9e284f02              # double 0.69069510355117836
	.quad	0x3fce5af99ca2dea0              # double 0.23715133808376709
	.quad	0x3fd05c95fbe0cac6              # double 0.2556509933230412
	.quad	0x3fe5710c4fb77fa9              # double 0.67004981584249379
	.quad	0x3fd79a992b1d7de8              # double 0.36881093225926387
	.quad	0x3fea60c75f33a5ee              # double 0.82431381792156144
	.quad	0x3fd54e03d157c29a              # double 0.33288665240892501
	.quad	0x3fec82798f2ddbf3              # double 0.89092710461306834
	.quad	0x3fe90bed68047b45              # double 0.78270597759169702
	.quad	0x3fe41cf447d9ff3c              # double 0.62853445085054416
	.quad	0x3fe76ad14a8384fd              # double 0.7317892508837357
	.quad	0x3feed8a54b49a695              # double 0.96394600586536915
	.quad	0x3fe4973c4229697b              # double 0.64346135065288423
	.quad	0x3fec7f82af5896a4              # double 0.89056524512553325
	.quad	0x3fef5fd8aa644844              # double 0.98044999389299691
	.quad	0x3fe2d58549f12cd5              # double 0.5885645336324169
	.quad	0x3fedcca30498f80b              # double 0.93123007677036307
	.quad	0x3fcb8c2dd834febc              # double 0.21521542603476529
	.quad	0x3fe934b626943062              # double 0.78768451247152549
	.quad	0x3fe90f3254f2b3fb              # double 0.78310505477349979
	.quad	0x3fe58238790d79e7              # double 0.67214606898397455
	.quad	0x3fe3f778baf3ad72              # double 0.62395893587146944
	.quad	0x3fe98c1db97fccb7              # double 0.79835401754680546
	.quad	0x3fd3b2dfd8c16bfc              # double 0.30779262702498023
	.quad	0x3f88c5a776cab080              # double 0.012095745384918866
	.quad	0x3fe9acbb4b0eeaa0              # double 0.80233540210550202
	.quad	0x3fe21c3ebc5e0a14              # double 0.5659478835153231
	.quad	0x3fd08311cfbbd2f6              # double 0.25799985205166764
	.quad	0x3fec27224fd6c098              # double 0.87977710336237447
	.quad	0x3fd6a2d0476ab9d0              # double 0.35368735288912223
	.quad	0x3fed68c9b7e8128f              # double 0.91904149932141077
	.quad	0x3fc01058d92b7518              # double 0.12549887279502836
	.quad	0x3fc746ea11d01b28              # double 0.18185163373728952
	.quad	0x3fdb21da19d9d5f2              # double 0.42394115948204025
	.quad	0x3fd3d05aae90407c              # double 0.30959193274703245
	.quad	0x3fc171a40f672970              # double 0.13628054382418098
	.quad	0x3fc82fe8d3213620              # double 0.18896208104199363
	.quad	0x3fddbf5f9ec2f062              # double 0.46480551246691537
	.quad	0x3fde617c063dda16              # double 0.47469997987300994
	.quad	0x3fed75866ecd132a              # double 0.92059632912478162
	.quad	0x3fb7ea4d7c34ace8              # double 0.093418925117180529
	.quad	0x3fe943162b60e50a              # double 0.7894392821537235
	.quad	0x3fa99d9da1ee8040              # double 0.05003063775734562
	.quad	0x3fe5d22f7ab9cc60              # double 0.6819074055660046
	.quad	0x3fba02f9b7a8e6c8              # double 0.10160790189629687
	.quad	0x3fc46d8e68467b38              # double 0.15959339229171987
	.quad	0x3fed2dc015e9b4db              # double 0.91183475761286148
	.quad	0x3f94458c17f47f00              # double 0.01979655166826344
	.quad	0x3fe525b1b7e36fd5              # double 0.6608513442583851
	.quad	0x3fb7372e0124bdf0              # double 0.090685725478344414
	.quad	0x3feb1484174c2e03              # double 0.84625439215000176
	.quad	0x3fc9ffd66d65de68              # double 0.2031200441522174
	.quad	0x3fe4af74a2a8762f              # double 0.6464179207720856
	.quad	0x3fe9dd82df4d1520              # double 0.80828994382378382
	.quad	0x3fd1400956ede10e              # double 0.26953347672635253
	.quad	0x3fd206c58cf375e8              # double 0.28166331066844785
	.quad	0x3fd9bb7202eec4c4              # double 0.40206575666804789
	.quad	0x3fedfc3483a2606d              # double 0.93703675947018683
	.quad	0x3fcc2b940bf8b40c              # double 0.22007990440889136
	.quad	0x3fd3432485a72538              # double 0.30097306301157145
	.quad	0x3fe3b10acdc2c70b              # double 0.61536159694353054
	.quad	0x3fd0e40c9ebc742a              # double 0.26391902448250681
	.quad	0x3fde3dac5f46509e              # double 0.47251424125830421
	.quad	0x3fc9c5a1d758c904              # double 0.20134375586491882
	.quad	0x3fa08300f2311740              # double 0.032249478878425553
	.quad	0x3fef45c0881873d1              # double 0.97726465779452997
	.quad	0x3fcf3a020ee60d44              # double 0.24395776488754894
	.quad	0x3fe65d0f39c064c1              # double 0.69885979919049401
	.quad	0x3fd7043d0d037b78              # double 0.3596336962781872
	.quad	0x3fea7828c4963ccc              # double 0.82716787715789896
	.quad	0x3fe4470acceea15d              # double 0.63367214227495661
	.quad	0x3fe607d2c8ac0c24              # double 0.68845500177156227
	.quad	0x3feccfddcf3611d1              # double 0.90037432166041687
	.quad	0x3fc9af73b0df98d4              # double 0.20066686760328045
	.quad	0x3fd0a6880db7c462              # double 0.26016427363999217
	.quad	0x3fd78c9bdf13fd9e              # double 0.3679570845124206
	.quad	0x3fe4c0c9a5263022              # double 0.64853365188310286
	.quad	0x3fe27ad477f36c65              # double 0.57749389102845028
	.quad	0x3fd974f1cca479c2              # double 0.39776272759072751
	.quad	0x3fd1c51b69ec70d8              # double 0.27765546173192268
	.quad	0x3fdd829ad93569f4              # double 0.46109648906499889
	.quad	0x3fe711a957aafd93              # double 0.72090594408648412
	.quad	0x3fea0e51657f5ea9              # double 0.81424779723871155
	.quad	0x3fbea5612f80f998              # double 0.11971099290619802
	.quad	0x3fcee6c9c9f94ebc              # double 0.24141809808735626
	.quad	0x3fe1b9c858b9e438              # double 0.55392854050945228
	.quad	0x3fda79257fb7ff16              # double 0.41364419434101884
	.quad	0x3fdaae5b55a6d42c              # double 0.41689189304753671
	.quad	0x3fe91307ed1bd732              # double 0.78357311544707486
	.quad	0x3fe4ca5f955aac86              # double 0.64970378084889613
	.quad	0x3fd5051d2e96aca8              # double 0.32843713330903279
	.quad	0x3fe865b1e0b87d92              # double 0.7624139203143605
	.quad	0x3feaf0ab8b86dce5              # double 0.841878674042985
	.quad	0x3f9d0c383b327720              # double 0.028366926777940837
	.quad	0x3fd3781b1e04839e              # double 0.30420568400773529
	.quad	0x3fcbe84541265064              # double 0.21802583390365549
	.quad	0x3fb4316a36ff86e0              # double 0.07887901156166377
	.quad	0x3fe3f74668449593              # double 0.62393494000268601
	.quad	0x3fd7b0f23be0d2fc              # double 0.37017494056208
	.quad	0x3fee22f10d6160c1              # double 0.94176533330303169
	.quad	0x3feebebdbf5f0356              # double 0.96078383805443468
	.quad	0x3fedf4312734fb47              # double 0.9360585942994043
	.quad	0x3fcaa69059e58774              # double 0.20820812596781091
	.quad	0x3fe2daef0a2ce0d3              # double 0.58922531115879406
	.quad	0x3fe7080a8fbccd63              # double 0.71973159860355584
	.quad	0x3fec1c674d4e349f              # double 0.87846722696999169
	.quad	0x3fe89f341a53c350              # double 0.76943402425795604
	.quad	0x3fde66cc29ae2df2              # double 0.47502426214552351
	.quad	0x3fe9060746f8c435              # double 0.7819858919302819
	.quad	0x3fec1faeba155947              # double 0.87886749596035763
	.quad	0x3fdcbca2cebb57c8              # double 0.44901342571881431
	.quad	0x3fecd5849de1333e              # double 0.9010642131412181
	.quad	0x3fb6aa84ecd2fe90              # double 0.088539417093665528
	.quad	0x3fad8d6f6d11f090              # double 0.057719690384119393
	.quad	0x3fc01616861612cc              # double 0.12567407176188394
	.quad	0x3fe89912700f1763              # double 0.76868554960740842
	.quad	0x3feaad234968aacd              # double 0.83363499009768705
	.quad	0x3fd86c8b975df112              # double 0.38162507802896173
	.quad	0x3fab9c639d76b660              # double 0.053927529307981059
	.quad	0x3feb35f2629de7a8              # double 0.85033530484291919
	.quad	0x3fe23b26ba714439              # double 0.56972061552563169
	.quad	0x3fc4c2c9f0ea4480              # double 0.1621944834082889
	.quad	0x3fe6486b461a6554              # double 0.696340214653143
	.quad	0x3fe916d0b39c90f0              # double 0.78403506355655672
	.quad	0x3fc07c81ea652360              # double 0.12879966683456257
	.quad	0x3fc5697c9242c3ec              # double 0.16728169576302265
	.quad	0x3fd497b4bd23c704              # double 0.32175940008811232
	.quad	0x3fd946dfb615ab22              # double 0.39495079786017773
	.quad	0x3fe471a8239fcd87              # double 0.63887412031037705
	.quad	0x3fdc43a769475348              # double 0.44162926941981029
	.quad	0x3fb5fa0847ff1e78              # double 0.085846440865788298
	.quad	0x3fe9cc26601fb8b2              # double 0.80617064260675009
	.quad	0x3feede73f0f6671c              # double 0.96465489447584529
	.quad	0x3fbd6f525c48ab88              # double 0.11497988465332132
	.quad	0x3f83331c05d02380              # double 0.009374827315711931
	.quad	0x3fbd77724d095040              # double 0.11510385876437201
	.quad	0x3fe3164186ef3628              # double 0.59646679262522628
	.quad	0x3fe22a2bdc1d383c              # double 0.56764786711733661
	.quad	0x3fe653aae71fe342              # double 0.69771332875743775
	.quad	0x3fde947f08b3e056              # double 0.47781349038951271
	.quad	0x3fec600cd3d3e450              # double 0.88672486660574101
	.quad	0x3fed5e699357d241              # double 0.91777495172443235
	.quad	0x3fe1b4ef925e3eed              # double 0.55333689296273081
	.quad	0x3fd1df16a084b33c              # double 0.27924123454686245
	.quad	0x3fe3419a04e5fc09              # double 0.60175801235880144
	.quad	0x3fdefcc5aabb93b6              # double 0.48417798684232183
	.quad	0x3fd2cd2e66dd118e              # double 0.29377327008503407
	.quad	0x3fed05e432ca0727              # double 0.90696916503677449
	.quad	0x3fb35f16b1c0f1e0              # double 0.075669687649628781
	.quad	0x3fb86c7a48f56f98              # double 0.095405237972441603
	.quad	0x3fe7a244b530a699              # double 0.73855815304451078
	.quad	0x3fb8d2e93dfdf8a0              # double 0.096968248019012381
	.quad	0x3fb9bee921c6c710              # double 0.10056931566830607
	.quad	0x3fe932192cebfbaa              # double 0.78736552022734441
	.quad	0x3fecd243e23147b5              # double 0.9006671350309633
	.quad	0x3fbdd9dec6cabaa0              # double 0.11660568574255104
	.quad	0x3fb250c20cb97b20              # double 0.071544769388748097
	.quad	0x3fce65579048dea8              # double 0.2374677137865906
	.quad	0x3fefa9cb7eb3feee              # double 0.98947691675854599
	.quad	0x3fe44c1620c89ef0              # double 0.63428789523183404
	.quad	0x3fe2d9e354c7629e              # double 0.58909765776032308
	.quad	0x3fe5ff6d81b6a824              # double 0.68743014654797152
	.quad	0x3fe405d011679fbb              # double 0.62570956611033723
	.quad	0x3fd4ad3fcc67f23c              # double 0.32307429276969279
	.quad	0x3fe6803898fbcbd1              # double 0.70315198783498023
	.quad	0x3fe000801e42f485              # double 0.50006109152276734
	.quad	0x3fd8b9a71661af34              # double 0.38633134065343033
	.quad	0x3fe0bc13d0d28625              # double 0.52295866761796062
	.quad	0x3fe81b127881a14a              # double 0.75330470596694821
	.quad	0x3fc094d17aedc578              # double 0.12954157354719675
	.quad	0x3fdfeb3131fa8b32              # double 0.49872999077540492
	.quad	0x3fe25e9d4a4cf021              # double 0.57404961120437659
	.quad	0x3fa0836f659fbf20              # double 0.032252770571970624
	.quad	0x3fe0795d0d825267              # double 0.51481487883081634
	.quad	0x3fe95b9144e2d332              # double 0.79242766813567855
	.quad	0x3fe2a8ca42ab1b24              # double 0.58310425778549702
	.quad	0x3f99c3dd21103c60              # double 0.025161223547965128
	.quad	0x3fd20f6afec75bc8              # double 0.28219103699433079
	.quad	0x3fdfccc1bfc3ebc6              # double 0.49687236525613476
	.quad	0x3f97943c88ced620              # double 0.023026414728255173
	.quad	0x3fd16dca81afbd7a              # double 0.27232611336417956
	.quad	0x3fbdf11fef02c750              # double 0.11696052155710146
	.quad	0x3fb966ce196c8fe0              # double 0.099224930960701396
	.quad	0x3fdd666438221618              # double 0.45937448007347959
	.quad	0x3fe87294f50a5a5d              # double 0.76398704394780348
	.quad	0x3feda672ce29da7c              # double 0.92656841532045985
	.quad	0x3fe7df162c5dbf39              # double 0.74598225274346597
	.quad	0x3fde0fcd72db3ef8              # double 0.46971451012085152
	.quad	0x3fd5709143dbf27e              # double 0.33499557139274561
	.quad	0x3fd7c4fa854c6b5c              # double 0.37139761941368987
	.quad	0x3fea61177cfa629c              # double 0.82435202035692922
	.quad	0x3fcdfd48371bfd60              # double 0.23429205599675651
	.quad	0x3fe3e9b7d0b39b62              # double 0.62228003274945487
	.quad	0x3fe7a4cf80c9cd83              # double 0.73886847642863562
	.quad	0x3fe03a9e14aa022d              # double 0.50715545688587371
	.quad	0x3fe1fa6951c6fa2c              # double 0.56181779834861834
	.quad	0x3fe1af7df1fa767c              # double 0.55267236005211329
	.quad	0x3fc0314aaef43dd8              # double 0.12650426428488859
	.quad	0x3fb0e3b858e629a8              # double 0.065974733070254588
	.quad	0x3fee1c5ca555fc54              # double 0.9409621457306323
	.quad	0x3feeec258caf6bd0              # double 0.96632649877153121
	.quad	0x3fee945227c67a56              # double 0.95560558098425008
	.quad	0x3fe0baa440ab24c9              # double 0.52278339987346911
	.quad	0x3fc39b167344823c              # double 0.15317040088940981
	.quad	0x3fe6f24c433d45a2              # double 0.71707738049206093
	.quad	0x3fef077e7912603f              # double 0.96966479918319936
	.quad	0x3fd31a888f02560c              # double 0.29849447217688474
	.quad	0x3fea3f64798e0468              # double 0.82023833981669458
	.quad	0x3fd7f975fa7647ea              # double 0.374600882140952
	.quad	0x3fe8d8f152ebc88c              # double 0.77648225970757911
	.quad	0x3fedd7e1f939df8b              # double 0.93260286976782092
	.quad	0x3fee4268592b522c              # double 0.94560639778007304
	.quad	0x3fec590b50deaa6b              # double 0.88586965365295833
	.quad	0x3fdc78ae01bd68a4              # double 0.44486570520315127
	.quad	0x3fc94930b7135cb4              # double 0.19754609050025851
	.quad	0x3fc83a66a281a8ec              # double 0.18928225455176262
	.quad	0x3fc49b6b854fa028              # double 0.16099304208114629
	.quad	0x3fd4a31dcea5db70              # double 0.32245583706337921
	.quad	0x3fcc6803c5281edc              # double 0.2219242775611211
	.quad	0x3fd6c407b4cb7a42              # double 0.35571472793336423
	.quad	0x3fc9a0f2aac47f48              # double 0.20022424066791644
	.quad	0x3fdbe287e7d9e500              # double 0.43570134774888913
	.quad	0x3feea031927a7154              # double 0.95705488785783154
	.quad	0x3fe0e913db2f3e40              # double 0.5284518509815328
	.quad	0x3fb5ce445a597f80              # double 0.085178634698875654
	.quad	0x3fd98ee05687a46a              # double 0.39934547853642377
	.quad	0x3fe417341c1e8d66              # double 0.62783246509608825
	.quad	0x3fb39c9a8087a120              # double 0.076608330134722014
	.quad	0x3fdb41544e5987b2              # double 0.42586238528576381
	.quad	0x3fe406e07e0bb629              # double 0.62583946817693914
	.quad	0x3fea8b3a6299a0e5              # double 0.82949561364969482
	.quad	0x3fd4200f71a5f14a              # double 0.31445680712183288
	.quad	0x3fca928d6e88e180              # double 0.2075974263878031
	.quad	0x3fd2abce686ea0a2              # double 0.29173622320605308
	.quad	0x3fe5bdc8ba27d92a              # double 0.6794170032360729
	.quad	0x3fddb824ef35769c              # double 0.46436427459944141
	.quad	0x3fce4f39850757a8              # double 0.23679274554768637
	.quad	0x3fb79a7edcb7b7b8              # double 0.092201165090698534
	.quad	0x3feaa359914fb4ba              # double 0.83244017010806393
	.quad	0x3fbf46aa04dd2e90              # double 0.12217199915647314
	.quad	0x3fbed431b5d01488              # double 0.12042532624043834
	.quad	0x3fe19ec6f3efa41c              # double 0.55063197749871362
	.quad	0x3fe792f5d7fae4f2              # double 0.73668949302296327
	.quad	0x3f914d463555c200              # double 0.016896340375241792
	.quad	0x3fea4f36c9d43c90              # double 0.82216967982994227
	.quad	0x3fdd965f3f793766              # double 0.46230298231681954
	.quad	0x3fbc7b4fdb5f2e78              # double 0.1112565908981028
	.quad	0x3fe90a0eea6991d4              # double 0.78247781547229999
	.quad	0x3fdf9a7a1cde638c              # double 0.49380352801522842
	.quad	0x3fc94eb4ad10a34c              # double 0.19771440935553597
	.quad	0x3fe7234a7d033a2c              # double 0.7230579797413319
	.quad	0x3fdadd28ae45445c              # double 0.41974846857653403
	.quad	0x3fe6006fe2f2abb6              # double 0.68755335164802633
	.quad	0x3fe1f8d40fca227c              # double 0.56162455638793984
	.quad	0x3fd05371ff480cea              # double 0.255093097017563
	.quad	0x3fe8fbb720048c3b              # double 0.78072696927518537
	.quad	0x3fef308cd4625483              # double 0.97467652779836588
	.quad	0x3fe6e34845fc1497              # double 0.71524442356953244
	.quad	0x3fce5955718ba8f0              # double 0.23710125011650218
	.quad	0x3fec52b42efa4c65              # double 0.88509568381631409
	.quad	0x3fe0a2c8fdf88ee9              # double 0.51987123111436262
	.quad	0x3fee40cf9dfcbcd5              # double 0.94541149956594472
	.quad	0x3fedb13c0bdf97eb              # double 0.92788507765794515
	.quad	0x3fe05464ebc9341a              # double 0.51030202915137868
	.quad	0x3fc85530f3b26130              # double 0.19009982966668693
	.quad	0x3fd6e0b8a715a16a              # double 0.35746589962811604
	.quad	0x3feb7e34b0c67fec              # double 0.85915598417704819
	.quad	0x3fcf59a9bcd8ac38              # double 0.24492379876150649
	.quad	0x3fe26f76ccdff328              # double 0.57610645308122788
	.quad	0x3fe4140756cac970              # double 0.62744490577305889
	.quad	0x3fb62a481262b768              # double 0.086582664955782485
	.quad	0x3fd336af4a1aca9a              # double 0.30021269070417989
	.quad	0x3fda2a56a9ae01aa              # double 0.4088341385868498
	.quad	0x3fea42e0f2557d9e              # double 0.82066390353059027
	.quad	0x3fd6005362fde9aa              # double 0.34376988093540695
	.quad	0x3feb953e92304cd7              # double 0.86196831276393027
	.quad	0x3fed55cbc3af0da0              # double 0.91672313899509916
	.quad	0x3feba4cbbc19a5f0              # double 0.86386667955701846
	.quad	0x3fefef4a2609cdcc              # double 0.99796016148905541
	.quad	0x3fe3297c319d4cab              # double 0.59881410303423388
	.quad	0x3fdbbebbd90f5d44              # double 0.43351646611468575
	.quad	0x3feb3990be99bfa0              # double 0.85077702738452742
	.quad	0x3fc4384914265aa8              # double 0.1579676960361287
	.quad	0x3fdacc14526c240a              # double 0.41870601700844701
	.quad	0x3feef8d2b2d107cf              # double 0.96787390637495629
	.quad	0x3fdafb22245a3230              # double 0.42157796430618344
	.quad	0x3f85d16a084ade00              # double 0.010653332117143144
	.quad	0x3fee3d58428cd7b4              # double 0.94498837469176644
	.quad	0x3fc88d6411cb58e4              # double 0.19181490773070842
	.quad	0x3fda7b9c8bafc984              # double 0.41379464761043772
	.quad	0x3fea8ac2ce871198              # double 0.82943859422134647
	.quad	0x3fe2a4156ea5b486              # double 0.58252975092695247
	.quad	0x3febc7b35b05fbb5              # double 0.86812751558306067
	.quad	0x3fee7962ff587ee7              # double 0.95231771347240801
	.quad	0x3fea35a8d12084a0              # double 0.81905022473451438
	.quad	0x3fdd7ff5e1314606              # double 0.46093508712246523
	.quad	0x3fe575f615024b88              # double 0.67064956763566475
	.quad	0x3fee51ec533464d2              # double 0.94750038386259861
	.quad	0x3f9f84b5f0fd1b60              # double 0.030779688676627059
	.quad	0x3fba69d058fbac08              # double 0.10317709133566677
	.quad	0x3f97b6089b2d0e80              # double 0.023155340644065436
	.quad	0x3fea297e9eac3e52              # double 0.81756525984560313
	.quad	0x3fd9651be4a00f96              # double 0.39679620100673085
	.quad	0x3fa5712268aeedb0              # double 0.041878772047734159
	.quad	0x3fe91826c550e3d3              # double 0.78419817484165788
	.quad	0x3fe602bc357dc824              # double 0.68783388564611814
	.quad	0x3fdbd61a899cc5a4              # double 0.4349428504820827
	.quad	0x3fe8a10c3ad0cb13              # double 0.76965915191098799
	.quad	0x3fef608dcb852b8f              # double 0.9805363631252123
	.quad	0x3fee837d14daff3c              # double 0.95355085442859133
	.quad	0x3feeda156c76c65c              # double 0.96412154373519909
	.quad	0x3fd27a0b76bda1c4              # double 0.28869902225281074
	.quad	0x3feb7196eed24cad              # double 0.85761591572590634
	.quad	0x3fd2ea09d739a338              # double 0.29553457277374973
	.quad	0x3fe8e4180577092c              # double 0.77784348552112225
	.quad	0x3fd9764c10132ab8              # double 0.39784528322040158
	.quad	0x3fc4cdde9886728c              # double 0.16253263900297943
	.quad	0x3fd152a5cceae22a              # double 0.270669412722358
	.quad	0x3fd806cef9fc5b0c              # double 0.37541555798218051
	.quad	0x3fbf168b1fe220d8              # double 0.12143773582841122
	.quad	0x3fea879cb6a78425              # double 0.82905421900443754
	.quad	0x3fdf2e0e2f82c3d2              # double 0.48718599929548845
	.quad	0x3feba5dbcc435135              # double 0.86399640936955413
	.quad	0x3fef5370cec12d96              # double 0.97893562680967494
	.quad	0x3fe9109d3a4137f3              # double 0.78327809694178396
	.quad	0x3fa4a51295eaa9d0              # double 0.040321903992054708
	.quad	0x3febbddcc9ed10d7              # double 0.86692656935386025
	.quad	0x3fec790a83bf42bd              # double 0.8897755215822013
	.quad	0x3fdc5f908faf4e70              # double 0.44333280593602975
	.quad	0x3fa81e54a9215910              # double 0.047106404920372325
	.quad	0x3fd3b4ac202b7370              # double 0.30790236608100141
	.quad	0x3fe5bf2b9dbe4b5a              # double 0.67958622750516473
	.quad	0x3febb7b772d2d8b6              # double 0.86617634226310858
	.quad	0x3fe71e720f20be80              # double 0.72246649698895737
	.quad	0x3fd74f553ac2858a              # double 0.36421709764734855
	.quad	0x3fe4115241ef93f2              # double 0.62711441877456608
	.quad	0x3fbe1f6f315085b0              # double 0.11766715005844364
	.quad	0x3fe98142b59ffb02              # double 0.79702887986772475
	.quad	0x3fd1a1e301006f9a              # double 0.27550578210661458
	.quad	0x3fde0281cee9f816              # double 0.46890301901282905
	.quad	0x3fe28580a297ae92              # double 0.57879668957089536
	.quad	0x3fe69185bae4989f              # double 0.70526396276979486
	.quad	0x3fd7817a3471c9c4              # double 0.36727767106563314
	.quad	0x3fe1bc31d39d5542              # double 0.55422297793362696
	.quad	0x3febb5b515444b56              # double 0.86593107370058919
	.quad	0x3fe6d4ca9ec74f6f              # double 0.71347552310406381
	.quad	0x3fb11aab969eafe8              # double 0.066813205978803247
	.quad	0x3fce17a2c845fed0              # double 0.23509630946136051
	.quad	0x3fe4934561fedd44              # double 0.64297742023237747
	.quad	0x3fe3e05838b2e537              # double 0.62113581727968536
	.quad	0x3fe6bee9fabbe301              # double 0.71080492946120455
	.quad	0x3fe897a0db3577ba              # double 0.76850931944112877
	.quad	0x3fdbae86c0201de6              # double 0.43252724420787414
	.quad	0x3fe0703d69668fbb              # double 0.5137011583906238
	.quad	0x3fe757b439e8b128              # double 0.72945605573980732
	.quad	0x3fe82c9e8e2dc6c4              # double 0.75544669884967463
	.quad	0x3fea933e738524b8              # double 0.83047411501424673
	.quad	0x3fdac25b06c77a06              # double 0.41811252271682553
	.quad	0x3fec3e2fb770081b              # double 0.88259111240063548
	.quad	0x3fe11b5ffd10b88f              # double 0.53459166933841284
	.quad	0x3fdceb050c6fbbbe              # double 0.45184446539400003
	.quad	0x3fe7973ffffe74dc              # double 0.73721313475439443
	.quad	0x3fe82dc905ce4a07              # double 0.75558901914547583
	.quad	0x3fd790249a545260              # double 0.36817278929928499
	.quad	0x3fe6f506d80f60ab              # double 0.71741049002868829
	.quad	0x3fcab889a9bce6a4              # double 0.20875664508803482
	.quad	0x3f9d73212ac274a0              # double 0.028759496912802107
	.quad	0x3fe09766741cf94e              # double 0.51848147085528651
	.quad	0x3fe2450c3182b3d9              # double 0.57092866582899682
	.quad	0x3fed5d1131e8ebc0              # double 0.91761073825852434
	.quad	0x3fde37f881d7eb82              # double 0.47216618232749152
	.quad	0x3fddc45994793ff8              # double 0.46510924815538557
	.quad	0x3fea6cd3d382e915              # double 0.82578460036100643
	.quad	0x3feeebd5603f299f              # double 0.96628826902569986
	.quad	0x3fe554986c40064c              # double 0.66657658712956325
	.quad	0x3fe3a33a77394f85              # double 0.6136753395644382
	.quad	0x3fe8024eb6a00812              # double 0.75028167408913959
	.quad	0x3fdbb43c8c5dd054              # double 0.43287576396619909
	.quad	0x3fde11093355d5c4              # double 0.46978979123317921
	.quad	0x3febfdf03d2212f5              # double 0.8747483438497442
	.quad	0x3fe7dd7d52f2c428              # double 0.74578729821053447
	.quad	0x3fc308d44c341a10              # double 0.14870694847941524
	.quad	0x3fe188d591e01587              # double 0.54795340052867025
	.quad	0x3fd9171364eccbe8              # double 0.39203343254047107
	.quad	0x3fe8f9d89fa7baa3              # double 0.78049880201964006
	.quad	0x3fdac218df647c90              # double 0.4180967504089006
	.quad	0x3fd26b42e01b5e10              # double 0.28779670606078955
	.quad	0x3fec288361f1c63c              # double 0.87994546060344402
	.quad	0x3fec2805d2b2cf6b              # double 0.87988558914228798
	.quad	0x3fd6da559f4bdaae              # double 0.35707607799796903
	.quad	0x3fd307ef8cbb25cc              # double 0.29735935920015488
	.quad	0x3fed5db492fd124c              # double 0.91768864353850565
	.quad	0x3fe0fcea2e39d15f              # double 0.53087338474737666
	.quad	0x3fe9b053660e88c8              # double 0.80277414257968704
	.quad	0x3fd642764d1b26c6              # double 0.34780652551544866
	.quad	0x3fca7e3e93995414              # double 0.20697767455081417
	.quad	0x3fd902c65f558eea              # double 0.39079436597806583
	.quad	0x3fd102a47b09959c              # double 0.26578628554701722
	.quad	0x3fb9469f90207410              # double 0.09873387593002314
	.quad	0x3fbda13f9e645268              # double 0.11574170701016728
	.quad	0x3fe699b44408aff2              # double 0.70626271522405504
	.quad	0x3fe87c2cc63b9dab              # double 0.76515806882246318
	.quad	0x3fd6238b840f48b6              # double 0.34591949364142793
	.quad	0x3fec9fc663a5d4d1              # double 0.89450377905327561
	.quad	0x3fe9e28885f49d0b              # double 0.80890298999011756
	.quad	0x3fe4cac457566b88              # double 0.64975182588692437
	.quad	0x3fe1a9d1e9486815              # double 0.55197997630171136
	.quad	0x3fc74de54e6ba918              # double 0.18206468896034589
	.quad	0x3fd89eb0aa90294a              # double 0.38468567520671526
	.quad	0x3fc0e73ac69703b8              # double 0.13205656716129766
	.quad	0x3fce916827b6f634              # double 0.23881246508783394
	.quad	0x3faddfaf1a05feb0              # double 0.058347198416411117
	.quad	0x3fdcfd2bae01bede              # double 0.45295230858662971
	.quad	0x3fc5eb1337c6c57c              # double 0.17123642180881038
	.quad	0x3fe3339bc48a68fa              # double 0.6000498617825365
	.quad	0x3fdbf7a8cfd71b46              # double 0.43699093148136503
	.quad	0x3fec915cee6a4fd3              # double 0.89274450841412045
	.quad	0x3feb7e5182e8adb9              # double 0.85916972702164351
	.quad	0x3fe9fd667d96b618              # double 0.81218266037984943
	.quad	0x3fe7bdb1bccf5295              # double 0.74190604092526036
	.quad	0x3f767c49619ee600              # double 0.0054896227319942703
	.quad	0x3fd4adc443056b1e              # double 0.32310587449107853
	.quad	0x3fd4d96c5562dc22              # double 0.32577045763486201
	.quad	0x3fe0624372ae9d72              # double 0.51199505232663811
	.quad	0x3fea4a87c341edc5              # double 0.82159793983685658
	.quad	0x3fb2a65743638438              # double 0.072850660278633295
	.quad	0x3fdc27550906e226              # double 0.43990064507991844
	.quad	0x3fe49532cb576c5a              # double 0.6432126971734633
	.quad	0x3fdf362d30c641e4              # double 0.48768167269829932
	.quad	0x3fbd86888b01ec30              # double 0.11533406633127252
	.quad	0x3fdbd2d2b18fbf80              # double 0.43474261608115938
	.quad	0x3fe90de799c504ad              # double 0.7829473498642493
	.quad	0x3fe7edce11ef08eb              # double 0.74777892592126471
	.quad	0x3feb8c88dbb5da24              # double 0.86090510284595156
	.quad	0x3fecb2b50b95a831              # double 0.89681484472862938
	.quad	0x3fdf29c394ffb73a              # double 0.48692407179520425
	.quad	0x3fe332ba0751ea50              # double 0.59994222097095395
	.quad	0x3fb3790ad5815550              # double 0.076065709233565259
	.quad	0x3feec4792babb2cf              # double 0.96148355988915479
	.quad	0x3fd1c3bb7f72791e              # double 0.27757155843745973
	.quad	0x3fa65f0b87d160e0              # double 0.043693886117297742
	.quad	0x3fe20d9c19c31fe1              # double 0.56416134864502621
	.quad	0x3fc191445eb0fb3c              # double 0.13724569915390272
	.quad	0x3fed2f78135a427b              # double 0.91204456119346788
	.quad	0x3fe7a86cbf1a1a31              # double 0.73930966686822874
	.quad	0x3fe99baf3327107f              # double 0.80025444021931935
	.quad	0x3feeed4206850af3              # double 0.96646214745882585
	.quad	0x3fed1dbd3294f2bc              # double 0.9098802555013985
	.quad	0x3fe0ddeca2364b71              # double 0.527090374775396
	.quad	0x3fc874782e9778b0              # double 0.19105436587319025
	.quad	0x3fe96a27844fa02e              # double 0.79420829622268285
	.quad	0x3fdb82197b584ce0              # double 0.42981564565088881
	.quad	0x3fe4ef41e10bfa7f              # double 0.65420621828509684
	.quad	0x3fa9ea18e0a7c9f0              # double 0.050614144729383415
	.quad	0x3fdfec9c5007142e              # double 0.49881656470489844
	.quad	0x3fe403d4309a55c7              # double 0.62546739094494164
	.quad	0x3fdf71dcf2aacee8              # double 0.49132465074511211
	.quad	0x3fd7e9f5bf1413bc              # double 0.37365478191378165
	.quad	0x3fc1e23fd7303884              # double 0.13971708304638153
	.quad	0x3feb1d6c76e38b14              # double 0.84734175892330876
	.quad	0x3fed2d336b22269a              # double 0.91176768230907901
	.quad	0x3fe30127bd7dbf70              # double 0.59389101991653881
	.quad	0x3fef79ffc5e25328              # double 0.98364246987566605
	.quad	0x3fe13a11f322194d              # double 0.53833863722756237
	.quad	0x3fe7d76921976319              # double 0.74504524765788738
	.quad	0x3fe3f8753efa6712              # double 0.62407934475342786
	.quad	0x3fc9495bbbe77408              # double 0.19755121874814585
	.quad	0x3fb59e1ccb2345e8              # double 0.084443854898630044
	.quad	0x3fd1592429c1da52              # double 0.27106575086455564
	.quad	0x3fec67a7d83464aa              # double 0.887653276705483
	.quad	0x3fe16ca5ac75c9f2              # double 0.54451259311309586
	.quad	0x3fd93cd0b082c4d6              # double 0.39433686482796071
	.quad	0x3fd8eb4b42ca4f26              # double 0.38936120531546903
	.quad	0x3f9ed35edfb6abe0              # double 0.030103189854042145
	.quad	0x3fef93f3d2f6a3af              # double 0.98681060031696243
	.quad	0x3fd850c2fbdb2f1a              # double 0.37992930026369864
	.quad	0x3fecbfcf9d358a7a              # double 0.89841442780409797
	.quad	0x3fdaf464f24a5b98              # double 0.42116664563348527
	.quad	0x3f935e12abe106e0              # double 0.018913547268545439
	.quad	0x3fc9be357016ce48              # double 0.20111721013164385
	.quad	0x3fd533b22c538e4e              # double 0.33128027275799787
	.quad	0x3fc2e24c86012ac4              # double 0.14753109496299122
	.quad	0x3fe8e644e2142875              # double 0.77810901790623055
	.quad	0x3fc56b6d710e64bc              # double 0.16734092731784311
	.quad	0x3fe2cfae5898884a              # double 0.5878516893756196
	.quad	0x3fcdd11f801c4028              # double 0.23294442897213341
	.quad	0x3fde6d43ead3e654              # double 0.47541902477641895
	.quad	0x3fd8d85b67c484c4              # double 0.38820538648185399
	.quad	0x3fd986a0f852a298              # double 0.39884208917877961
	.quad	0x3f9fe4c4934d2ce0              # double 0.031146117678230278
	.quad	0x3fe1e23264d185c8              # double 0.55886192027190251
	.quad	0x3fd200f0e3e00628              # double 0.28130743268420355
	.quad	0x3fed36acb5b6cb51              # double 0.91292415133498583
	.quad	0x3fb2e14d48640a28              # double 0.073750333951502101
	.quad	0x3fd95d11d546194e              # double 0.39630552127382124
	.quad	0x3fd02030082f4c86              # double 0.25196457671444994
	.quad	0x3fd9a0dc1ff1d682              # double 0.40044310683820339
	.quad	0x3fad556ebb5c9870              # double 0.057292423602391618
	.quad	0x3fd5638bfce93a58              # double 0.3342008561930121
	.quad	0x3fd0c87e1ab23f68              # double 0.26223709685381502
	.quad	0x3fd8e69b948423c0              # double 0.38907517913372303
	.quad	0x3fcf04c999330e94              # double 0.24233360271874871
	.quad	0x3fc7d2c37c21e3f0              # double 0.18611949502135827
	.quad	0x3fe6112c79084340              # double 0.68959640158764302
	.quad	0x3fee7ad51c2a9b96              # double 0.95249419690377368
	.quad	0x3fec1544e97030fb              # double 0.87759633630187694
	.quad	0x3feca6aa97abf5e9              # double 0.89534501670249
	.quad	0x3fed8b78ce09ac71              # double 0.92327537767176981
	.quad	0x3feeb53e8e82a2cc              # double 0.95962455591242123
	.quad	0x3fdd07da1fdeafec              # double 0.45360425102512525
	.quad	0x3fe77934fe951dc4              # double 0.73354577754155814
	.quad	0x3fea8b2443f022ca              # double 0.8294850661196389
	.quad	0x3fe0ce396ea41d85              # double 0.52517387017808004
	.quad	0x3fe767d58538e981              # double 0.73142505664809232
	.quad	0x3fb42c7c9f17e6f8              # double 0.078803814736513433
	.quad	0x3fd4bb55be833d1e              # double 0.32393401722670656
	.quad	0x3fa63f9ab3e8d7e0              # double 0.043454012357343919
	.quad	0x3fc6e6e75d6b8338              # double 0.17892162381670018
	.quad	0x3fee7b0aafb44f4e              # double 0.95251974408390949
	.quad	0x3fef6eefb6746ef8              # double 0.98229203830439271
	.quad	0x3fd85a1aa656ec98              # double 0.3804995178613324
	.quad	0x3fe454c7704bb174              # double 0.63534900601147948
	.quad	0x3fe21372863d1745              # double 0.56487394541247993
	.quad	0x3fb3dbd81029dcc0              # double 0.077573303171322827
	.quad	0x3fd016d9e90535b2              # double 0.25139472728627787
	.quad	0x3fe31ae7c3306f0e              # double 0.59703434107675135
	.quad	0x3fc9abde118883ec              # double 0.20055747848621708
	.quad	0x3fe10dd9b830a842              # double 0.53294073080656568
	.quad	0x3fe58bcefb50a831              # double 0.6733164700028792
	.quad	0x3fd73c9c08fe0ca0              # double 0.36307431104814647
	.quad	0x3fdf9cee446d3a42              # double 0.49395329172412883
	.quad	0x3fd0314594a4f320              # double 0.25300731197403259
	.quad	0x3fdf24b4fa1f0546              # double 0.48661541391273422
	.quad	0x3fdb668d49ab6d88              # double 0.42813427156735218
	.quad	0x3fd24ce31943c884              # double 0.2859428164221145
	.quad	0x3fceae30f028518c              # double 0.23969089247169639
	.quad	0x3fd53a56fc82b89c              # double 0.33168577822915224
	.quad	0x3feeb669648f540e              # double 0.95976705208397717
	.quad	0x3fe12c9efabb57e8              # double 0.53669690104538592
	.quad	0x3feb2ab6126573ca              # double 0.8489637717535683
	.quad	0x3fdeb7b2140a6bba              # double 0.47996189076519225
	.quad	0x3fc4168a66613948              # double 0.15693788527500829
	.quad	0x3fe7c05a3bf8fcb4              # double 0.74223052705192183
	.quad	0x3fcead457fb3b54c              # double 0.23966282592247479
	.quad	0x3fddecc069c12800              # double 0.46757517173375618
	.quad	0x3fdf8d2d9da91a68              # double 0.49299183270014746
	.quad	0x3fdab185c781d076              # double 0.41708511813272453
	.quad	0x3fdf1301690acc70              # double 0.48553500421548446
	.quad	0x3fb22a8e1645f3b0              # double 0.070961838186078152
	.quad	0x3fe87d787ebd4483              # double 0.76531624559187639
	.quad	0x3fe2c8be05f04458              # double 0.58700467262145661
	.quad	0x3fdb39e74eded84a              # double 0.42540915205188823
	.quad	0x3fe8ff517b0e23ac              # double 0.78116678270554507
	.quad	0x3fdde57142d31f20              # double 0.46712905431603424
	.quad	0x3f82a24643e15840              # double 0.0090985764947327796
	.quad	0x3fb6450b2738b1d8              # double 0.086991021228363663
	.quad	0x3fee6b6a152b7742              # double 0.95061210760807335
	.quad	0x3fea57d72b490cfc              # double 0.82322271780176903
	.quad	0x3fef8695940fc472              # double 0.98517874639777703
	.quad	0x3fd38422d824cad4              # double 0.30493994815621517
	.quad	0x3fef84418fa567cf              # double 0.98489454322702296
	.quad	0x3fec72c870242f86              # double 0.88901159193618251
	.quad	0x3fd6c6f83b57babe              # double 0.35589414401230701
	.quad	0x3fe627b5be642cc2              # double 0.69234740434458097
	.quad	0x3fee1574c8cfd69d              # double 0.94011916371410431
	.quad	0x3fe589b789da42f0              # double 0.67306115078289785
	.quad	0x3fc1ccf4c6358ca0              # double 0.13906726530249092
	.quad	0x3fea371209285993              # double 0.81922246731373816
	.quad	0x3fe4615ac483fceb              # double 0.63688410169552634
	.quad	0x3fed186176a766c7              # double 0.90922616171447934
	.quad	0x3fd05d41554bed3c              # double 0.25569184617753016
	.quad	0x3fb0a534bddeced8              # double 0.065020843844475151
	.quad	0x3f888f7f84b6b800              # double 0.011992450940706334
	.quad	0x3fd8c12fce802f06              # double 0.38679118314824767
	.quad	0x3fea4ae5fd92f377              # double 0.82164287115266077
	.quad	0x3fe7c1eeba09d288              # double 0.74242340407961738
	.quad	0x3fb8b4a5d14cc318              # double 0.096506465529057173
	.quad	0x3fe76f5d25bdcf32              # double 0.73234422084212825
	.quad	0x3fdc58651459c99c              # double 0.44289519297958591
	.quad	0x3fe4086ac30de27f              # double 0.62602747055559849
	.quad	0x3fe429f4035abc92              # double 0.63012123732723269
	.quad	0x3feeee983db34b74              # double 0.96662532854894189
	.quad	0x3fcc368896475bd0              # double 0.22041423166112262
	.quad	0x3fe4c267b7ec3655              # double 0.64873109743502744
	.quad	0x3fe443f74a7bed53              # double 0.63329662845300516
	.quad	0x3fe772bb395d0465              # double 0.73275529102114645
	.quad	0x3fed1f6aa03fd1e0              # double 0.91008502291384374
	.quad	0x3fd683c109fff302              # double 0.35179162956755772
	.quad	0x3fe21dafba1dd8ac              # double 0.56612383223434426
	.quad	0x3fdf6a7b39a3bc9c              # double 0.49087410572878709
	.quad	0x3fe08e920394ff48              # double 0.51740360927213036
	.quad	0x3fccfe35798ec1d4              # double 0.22650783954078568
	.quad	0x3fde4806c4482c44              # double 0.47314614456326276
	.quad	0x3fc26fb08139899c              # double 0.14403349218180217
	.quad	0x3fdd0b49f1b99eee              # double 0.4538140163990495
	.quad	0x3fdf0d87b2afe5d4              # double 0.48520080995475934
	.quad	0x3fe0a6bdefe769bf              # double 0.52035424095384275
	.quad	0x3fe8352e2d8e6885              # double 0.75649174592696566
	.quad	0x3fecff89ae0391df              # double 0.90619358050440357
	.quad	0x3fe7a0f3d7ef1542              # double 0.7383975236377085
	.quad	0x3fe0d2f60c5c2546              # double 0.52575209058810723
	.quad	0x3fb8c09a28a5c2f8              # double 0.09668887607928045
	.quad	0x3fe5ed563fd3765a              # double 0.68522179094334068
	.quad	0x3fc0e23e9fef7d90              # double 0.13190443810797747
	.quad	0x3fe1b571e924a04b              # double 0.553399043424187
	.quad	0x3fd6ec0fe81897fc              # double 0.35815808930999515
	.quad	0x3fe81fa8fd311d59              # double 0.75386475993665691
	.quad	0x3fedca4c4f0e799a              # double 0.93094459000330976
	.quad	0x3fe57f3434ac3170              # double 0.67177782333014413
	.quad	0x3fbb4041c2336160              # double 0.10644923201778544
	.quad	0x3fdcfb834d30edb8              # double 0.45285112894245172
	.quad	0x3fe88e6ade4e3d68              # double 0.76738494319026263
	.quad	0x3fce3cd947f453e8              # double 0.23623195660971352
	.quad	0x3fd18cc1fd753454              # double 0.27421617271176513
	.quad	0x3fe9ca643324468f              # double 0.80595598209966279
	.quad	0x3fe1d343986640b2              # double 0.55703906789314872
	.quad	0x3fa03e503d828360              # double 0.031725413807413672
	.quad	0x3fe331a1b83e409e              # double 0.59980855927462406
	.quad	0x3fb41187f7729d30              # double 0.078392503654516998
	.quad	0x3fd64530952204ca              # double 0.34797300876386983
	.quad	0x3fb64494fe784ce0              # double 0.086983978392072725
	.quad	0x3fd9d9cd63f2f2c6              # double 0.4039185977997416
	.quad	0x3fd89757a2207632              # double 0.3842372020024839
	.quad	0x3fe03aeca9851e45              # double 0.50719292744992883
	.quad	0x3fe1a803902fb11b              # double 0.55175951157937975
	.quad	0x3fd03d63d42d8754              # double 0.25374694557659905
	.quad	0x3fe94f0873da719d              # double 0.79089758517834563
	.quad	0x3fd0399526ce11aa              # double 0.25351456441446862
	.quad	0x3fe6ecf71749ffe2              # double 0.71642641590733214
	.quad	0x3fdbd09917b38658              # double 0.4346068126161291
	.quad	0x3f97b3891f4edec0              # double 0.023145811592000909
	.quad	0x3fd09ababf2ac626              # double 0.25944393795643561
	.quad	0x3fde1f3e8c2e6620              # double 0.47065700234961305
	.quad	0x3fedced607266ea3              # double 0.93149854084500239
	.quad	0x3fed3c3d7ecfcc8e              # double 0.91360354202187621
	.quad	0x3fef2ef1e96f7ad8              # double 0.97448058693756944
	.quad	0x3fec36f84bfdc7de              # double 0.88171019403511841
	.quad	0x3fad20dbc3805c70              # double 0.056891315092962524
	.quad	0x3febb88585fd30b1              # double 0.86627460641604703
	.quad	0x3fe8ccabeeebf571              # double 0.77498432793042416
	.quad	0x3f572e40a3cff000              # double 0.0014148360489789624
	.quad	0x3fe4a45c92db2d30              # double 0.6450636738094655
	.quad	0x3fee09ec4dc99e87              # double 0.93871131127248553
	.quad	0x3fe5e58b5d2bc93f              # double 0.68427055547207505
	.quad	0x3fef53f4822c7faa              # double 0.97899842667174153
	.quad	0x3fe9bcc8df33cf8f              # double 0.80429500192848191
	.quad	0x3fecafcad027aab1              # double 0.89645901351226176
	.quad	0x3fe9bff9ddc063a9              # double 0.80468457518428693
	.quad	0x3fe98d09fee8caaa              # double 0.79846668040257396
	.quad	0x3fe468ff25faec1a              # double 0.63781697671891213
	.quad	0x3fdd4ca9a2b777bc              # double 0.4578041161565769
	.quad	0x3fdda9b23473b710              # double 0.463482428763073
	.quad	0x3fb2e74e0c168e78              # double 0.073841932250212738
	.quad	0x3fa96e8717cf2f90              # double 0.04967138448372943
	.quad	0x3febf08e15d941e3              # double 0.87311462657276839
	.quad	0x3fa6c93d8b3392a0              # double 0.044504092447629207
	.quad	0x3fe054be705f1f20              # double 0.51034471461841591
	.quad	0x3fec3386a73f8437              # double 0.88128979364058224
	.quad	0x3fed4b551f780fac              # double 0.91544586321150722
	.quad	0x3fe1c78bb81b13c2              # double 0.5556086154762101
	.quad	0x3fe860d31cadd189              # double 0.76181941605914105
	.quad	0x3fcf181fe69befc0              # double 0.24292372474871904
	.quad	0x3fd5506274acc086              # double 0.33303128618263889
	.quad	0x3fdda86b2c6b9072              # double 0.46340445840747357
	.quad	0x3fe1f071a52c9060              # double 0.5606010652595721
	.quad	0x3fe0a8e7e1c76c70              # double 0.52061838242970104
	.quad	0x3fefd5d9c9582a08              # double 0.99485482525898394
	.quad	0x3fe101333f5a198b              # double 0.53139650700977492
	.quad	0x3feafb67416dcd0d              # double 0.8431888845356369
	.quad	0x3fd0d684ee1843fa              # double 0.26309321643299166
	.quad	0x3fed5ec8074f0dde              # double 0.91781999042035145
	.quad	0x3fd6dfbb1b32d272              # double 0.35740544944864105
	.quad	0x3fd4bba38b169462              # double 0.32395256598312561
	.quad	0x3fe4ccb9cf92236d              # double 0.64999094525511014
	.quad	0x3fc83571e9b2c974              # double 0.18913101111463571
	.quad	0x3fed541a5196623c              # double 0.91651645598455599
	.quad	0x3fafad5c60d236f0              # double 0.061869513339031346
	.quad	0x3fcfea6783e91454              # double 0.24934095326367134
	.quad	0x3f718f0a0ef5de00              # double 0.0042868035228518231
	.quad	0x3fc5cfcd2a65a5fc              # double 0.1704040963189043
	.quad	0x3fdf79dedcdfad90              # double 0.49181338853551271
	.quad	0x3fe751a175525871              # double 0.72871468462359534
	.quad	0x3fd4cf5f401578c2              # double 0.32515698679152305
	.quad	0x3fbe46b6785c72b0              # double 0.11826649130348232
	.quad	0x3fe555ddb57c66b4              # double 0.66673169561837264
	.quad	0x3fecda4ce6371cf2              # double 0.9016479965584081
	.quad	0x3fed5be533ae41fc              # double 0.91746769040952314
	.quad	0x3fed3c86eab592aa              # double 0.91363855210928091
	.quad	0x3fd47345d981eb12              # double 0.31953569642034652
	.quad	0x3fdf3e121b3de5b8              # double 0.48816349659281455
	.quad	0x3fee5bea6f35d039              # double 0.94872018547767489
	.quad	0x3fe21925802fd406              # double 0.56556963955392869
	.quad	0x3fdeca756ec136e8              # double 0.48110709968464827
	.quad	0x3fee207b44e4a5d0              # double 0.94146502929396014
	.quad	0x3fc8a0970947bd24              # double 0.19240081742416593
	.quad	0x3fe0b2f066d4b8b2              # double 0.52184314808052634
	.quad	0x3fda7649a9dd8a50              # double 0.41346971119324838
	.quad	0x3fec3fa44208d6c8              # double 0.88276875398033727
	.quad	0x3fef890c201eb198              # double 0.98547941468636945
	.quad	0x3fef809bcea7922c              # double 0.9844492946836616
	.quad	0x3fd1fd8cc4faca6c              # double 0.28110045658392013
	.quad	0x3fe69616928a48fc              # double 0.70582131024482875
	.quad	0x3fd5a9d03af5e91c              # double 0.33848958738202994
	.quad	0x3fdbb4f3cd272f86              # double 0.432919454903406
	.quad	0x3fd76381d10007ee              # double 0.36544843111198488
	.quad	0x3fd0360dfc904250              # double 0.25329923309712843
	.quad	0x3fb2dff68984f2e8              # double 0.073729904722266704
	.quad	0x3fe8bbd3f7c099ab              # double 0.77292822255258409
	.quad	0x3fd67f647de9ac14              # double 0.35152542396707642
	.quad	0x3fc4383e8e255eb8              # double 0.15796644154283057
	.quad	0x3fd924e608f85718              # double 0.39287711025223038
	.quad	0x3fe4fb24e023d3d6              # double 0.655657232068388
	.quad	0x3fe38bd471f97310              # double 0.61081907520892464
	.quad	0x3fb365978440d530              # double 0.075768918789283601
	.quad	0x3fd853839e0fdaae              # double 0.3800972980092564
	.quad	0x3fe4b2549d504c74              # double 0.64676886296582703
	.quad	0x3fdb795fc80b29c4              # double 0.42928308997639086
	.quad	0x3fea21032f439b3a              # double 0.81652983886019759
	.quad	0x3fec2053afe432f8              # double 0.87894615510739893
	.quad	0x3feffe173acce8fa              # double 0.99976693615397427
	.quad	0x3fed560d91c3134b              # double 0.91675451726096335
	.quad	0x3feaa2c1790b0e54              # double 0.83236764565703902
	.quad	0x3fda912fd6ce9dbc              # double 0.41511150338416392
	.quad	0x3fe398471b9baad6              # double 0.61233859436228033
	.quad	0x3fe45927ca6ddd4a              # double 0.63588323151535886
	.quad	0x3fe1a132319a47b1              # double 0.55092725456255753
	.quad	0x3fd83349f64eecc8              # double 0.37813042691750498
	.quad	0x3febcb411c8ee502              # double 0.86856132104654216
	.quad	0x3fd91ae222c174ce              # double 0.39226582903013429
	.quad	0x3fcbd9b5883fd5f8              # double 0.21758145478058544
	.quad	0x3fc5f140976ac32c              # double 0.17142493623171029
	.quad	0x3fd0bff757870ce8              # double 0.26171668574916263
	.quad	0x3fdfbbb297f12e8c              # double 0.49583115423295321
	.quad	0x3fd3fce6fe8f1896              # double 0.31231093272470767
	.quad	0x3fe558e0dc08e116              # double 0.66709940886997532
	.quad	0x3fe74bb94bd34e28              # double 0.72799362954760216
	.quad	0x3fe8bf47ae91d074              # double 0.77334961028692683
	.quad	0x3fe8591d677209e2              # double 0.76087827877227832
	.quad	0x3fe0be8bf8d668d3              # double 0.52326010323602146
	.quad	0x3fd3bb4c6490d2e0              # double 0.30830678768988484
	.quad	0x3fc8cda10f1b6460              # double 0.19377530324598791
	.quad	0x3fe32ebbdd7706ef              # double 0.59945481543419799
	.quad	0x3fd39ccd0006bf44              # double 0.30644536020826174
	.quad	0x3fcb600468d4f4bc              # double 0.21386771315329678
	.quad	0x3fe4844bbf8bcdec              # double 0.6411494008192995
	.quad	0x3fdef65c8744dadc              # double 0.48378670892581765
	.quad	0x3fddda9cdfed232a              # double 0.46646806590847467
	.quad	0x3fda98cc57a8b016              # double 0.41557606277888348
	.quad	0x3fd91e88a2c236a8              # double 0.3924886311950595
	.quad	0x3fe813ac9969e808              # double 0.75240163768398904
	.quad	0x3fe6859e1d39fb68              # double 0.7038107462720804
	.quad	0x3fec3cbaf50ce5e2              # double 0.8824133669033325
	.quad	0x3fe24a220d406ca0              # double 0.57154944027151444
	.quad	0x3fe06f539f8ab8a0              # double 0.5135896793415391
	.quad	0x3fcde3508ffc2ea8              # double 0.23349959402581999
	.quad	0x3f95fee681c90380              # double 0.02148018042703681
	.quad	0x3fe32e082e70c3ee              # double 0.5993691355744184
	.quad	0x3fef9719997d38dd              # double 0.98719482401227376
	.quad	0x3fecfd0dec3657c8              # double 0.90589042792520846
	.quad	0x3fea4997cd35bc09              # double 0.8214835174566143
	.quad	0x3fc8e6d89ae32410              # double 0.19454486430029805
	.quad	0x3fca092d467e3fb0              # double 0.20340505544709009
	.quad	0x3fe9799d2e1c07df              # double 0.79609545713196528
	.quad	0x3feae65f5e76f53f              # double 0.84062164735920664
	.quad	0x3fe1c77bc5d867ab              # double 0.55560101167360665
	.quad	0x3fd8be4082c2ddb2              # double 0.38661206025741557
	.quad	0x3fe1838f735f8284              # double 0.54730961355024066
	.quad	0x3fd6dd4c8e08d9ec              # double 0.357257021623268
	.quad	0x3fb6ce94e538b8c8              # double 0.089089685404107333
	.quad	0x3fe5e0a4b5cd2a04              # double 0.68367228992548279
	.quad	0x3fcdc58653d08c94              # double 0.23259047596466031
	.quad	0x3fde18874b14d9fc              # double 0.47024710018322913
	.quad	0x3fd5237ec6260250              # double 0.33029145574986263
	.quad	0x3fd439552ee55dfe              # double 0.31599931316074492
	.quad	0x3fe7791b197f5cb0              # double 0.73353342990858117
	.quad	0x3fe87468511f94df              # double 0.76420989841849607
	.quad	0x3fe84864f7af9923              # double 0.75883720756681716
	.quad	0x3fea326e307f7dc7              # double 0.81865605804699093
	.quad	0x3fcec47f905b88bc              # double 0.24037165211399791
	.quad	0x3fe9c1d6f327083f              # double 0.80491206637112345
	.quad	0x3fb4c32c306bbd10              # double 0.08110309774541613
	.quad	0x3fe3164db03b10db              # double 0.59647259159148847
	.quad	0x3fd90d492c46cea2              # double 0.39143590282331264
	.quad	0x3feff4bbc9b93698              # double 0.99862470053786278
	.quad	0x3fd909a2a214a488              # double 0.39121309116541925
	.quad	0x3fc9f9f11efafcdc              # double 0.20294012081828938
	.quad	0x3fde97fa7589897e              # double 0.4780260227036236
	.quad	0x3fd8d851638bad8e              # double 0.38820299836398753
	.quad	0x3fd547acdb7333d8              # double 0.33249970846810362
	.quad	0x3fc1fa2ff92aade8              # double 0.14044761339515266
	.quad	0x3fcd137a514a42a0              # double 0.22715691537134308
	.quad	0x3fe274ba8d91accd              # double 0.57674911165431697
	.quad	0x3fb9b7b89c401bb8              # double 0.10045961203296272
	.quad	0x3fed2f3ec2fc4291              # double 0.91201723177990079
	.quad	0x3fe5240e0c911dd5              # double 0.66065123037781837
	.quad	0x3fbbdd8031d88c80              # double 0.1088485833829953
	.quad	0x3fe13c745cd0efe1              # double 0.53862970474392224
	.quad	0x3fe61fe99d5a6ffe              # double 0.69139557583866895
	.quad	0x3fe13ac1e33a914d              # double 0.53842253094311732
	.quad	0x3fdae3d78d7755ee              # double 0.42015637221388047
	.quad	0x3fe3fbe5ee46bdd0              # double 0.62449928797098586
	.quad	0x3febe7ee400d330b              # double 0.87206184873648007
	.quad	0x3fe8e2f500fd83c4              # double 0.77770471757332204
	.quad	0x3fadb5d965ba1800              # double 0.058028024356687524
	.quad	0x3fc8e0618da08330              # double 0.19434756675129838
	.quad	0x3fe96aaa21c82827              # double 0.79427057836551718
	.quad	0x3fc3598be443e9ac              # double 0.15117024083867869
	.quad	0x3fd892cd851d5e7a              # double 0.38396013259396222
	.quad	0x3fe6a5e589583bc5              # double 0.70775105309609698
	.quad	0x3fd45a4d0ad528b0              # double 0.31801153238178426
	.quad	0x3fd9bb37ec435708              # double 0.40205190727770956
	.quad	0x3fd2d1e37e0bc2c6              # double 0.29406058606313612
	.quad	0x3feccdd502c068ac              # double 0.90012598550244637
	.quad	0x3fccdaac3b45fa88              # double 0.22542336363035909
	.quad	0x3fe6c4fb3402591b              # double 0.71154556425134119
	.quad	0x3fd1719897c7a008              # double 0.27255835363621417
	.quad	0x3feb921885277906              # double 0.86158395773580376
	.quad	0x3fe8ca6e9725fbb0              # double 0.7747109367481837
	.quad	0x3fa6b6d4b5d0ac60              # double 0.044363639063100591
	.quad	0x3fea7adabe8b8abf              # double 0.82749688354336814
	.quad	0x3fe839cc9bc30e01              # double 0.75705557272198132
	.quad	0x3fecf53f6fd9ecf8              # double 0.90493747564269622
	.quad	0x3fd770be8a7e7bf0              # double 0.36625636601269118
	.quad	0x3fd5f24409858308              # double 0.34291172914349533
	.quad	0x3fef2062ef8729ae              # double 0.97270342619713346
	.quad	0x3fdcf7dfb3f11e32              # double 0.4526290185208125
	.quad	0x3fdf7e0c606e8786              # double 0.49206838051951995
	.quad	0x3fd86940a42a3da4              # double 0.38142410308588581
	.quad	0x3fe65539ca2cc4e0              # double 0.69790353286057538
	.quad	0x3fe749c592a0fcfb              # double 0.72775534285020116
	.quad	0x3fdddafb1e0bbe00              # double 0.46649053510824956
	.quad	0x3fdce4568a2cbde0              # double 0.45143664830808738
	.quad	0x3fe1363d6ed2947a              # double 0.53787109036478786
	.quad	0x3fa2f4f1343693c0              # double 0.037025010703735983
	.quad	0x3fed444531f7bc8f              # double 0.91458377608604902
	.quad	0x3fd2f03005b622f4              # double 0.2959098869110186
	.quad	0x3fe96f5b9d0d9e3e              # double 0.79484348940326988
	.quad	0x3fe61714b0e3dff6              # double 0.69031748341421806
	.quad	0x3f9d11513e54c7a0              # double 0.028386372975723995
	.quad	0x3fe5f5cdf14b4b95              # double 0.6862554276252576
	.quad	0x3fe002fc46738d2c              # double 0.50036443481477511
	.quad	0x3fe711e5665e091e              # double 0.72093458169573288
	.quad	0x3fbfb0a07ee8e288              # double 0.12378886316663273
	.quad	0x3fef6464036183a8              # double 0.98100472126326554
	.quad	0x3fd20cdb385b50c6              # double 0.28203468803009135
	.quad	0x3fcfbcb67660fdb8              # double 0.24794655590265591
	.quad	0x3fdb9f9d479f0bfe              # double 0.43161708826318079
	.quad	0x3febd7558c892d8d              # double 0.87003591011436898
	.quad	0x3fd68a541b7efd2c              # double 0.35219290433083716
	.quad	0x3febe64b8dc03079              # double 0.87186219869319281
	.quad	0x3fe8ca711866d368              # double 0.77471213117551674
	.quad	0x3feedcfa3a8c4810              # double 0.96447478709365164
	.quad	0x3fdb7dc62bf85398              # double 0.4295516423601895
	.quad	0x3fd12970d5d1e15c              # double 0.26815434342235789
	.quad	0x3fe451657f9803ad              # double 0.6349360935274625
	.quad	0x3fd185363dc3a59a              # double 0.27375560790695774
	.quad	0x3fec4a306feb205c              # double 0.88405629977297506
	.quad	0x3fcf661b875e7230              # double 0.24530357465563801
	.quad	0x3fa084995e54e0e0              # double 0.032261650815088805
	.quad	0x3fd6f05e28bb1fd0              # double 0.35842088678009265
	.quad	0x3fd305b72501dcf8              # double 0.29722384084693898
	.quad	0x3fb6b8f38c3acaa0              # double 0.088759633765941093
	.quad	0x3fe7d37ebd804ea8              # double 0.74456727039292492
	.quad	0x3fec57e075dff180              # double 0.88572714826982235
	.quad	0x3fe7c7c0fc55a4e9              # double 0.74313401493159603
	.quad	0x3fe6f8b32f9eab22              # double 0.71785888005010556
	.quad	0x3feb42eb41dfc77f              # double 0.851918820057321
	.quad	0x3fe8d2c63be4df2c              # double 0.77572929094364928
	.quad	0x3fd6200380b5fc34              # double 0.34570396012708504
	.quad	0x3fe14a1c2f55995f              # double 0.54029664273256717
	.quad	0x3fe78093200faa1f              # double 0.73444515478087513
	.quad	0x3fe74db8c8f9d472              # double 0.72823752644639073
	.quad	0x3feebd93a454233d              # double 0.9606416902107423
	.quad	0x3fdbcde9bc25a35e              # double 0.4344429337857515
	.quad	0x3feeda54146e2377              # double 0.96415142050055535
	.quad	0x3fee19e99ae18805              # double 0.94066314935867068
	.quad	0x3fd2dfeb55d10afa              # double 0.29491694813275127
	.quad	0x3fd91ce54d4e53d2              # double 0.39238865422640601
	.quad	0x3fe3f730bb1d35c7              # double 0.62392460389826787
	.quad	0x3fdae06409348f32              # double 0.41994572543102315
	.quad	0x3fcd54e797f63364              # double 0.22915358467107716
	.quad	0x3fe1666ac3e39ad6              # double 0.54375208148561671
	.quad	0x3fdb7eae31c1b4ce              # double 0.42960696085976913
	.quad	0x3fe2eda747ebb95a              # double 0.59151042983084356
	.quad	0x3fe4cc676b188f22              # double 0.64995165745901695
	.quad	0x3fef60e2fb019428              # double 0.98057698273317317
	.quad	0x3fe8e839aba79c4a              # double 0.77834781194986502
	.quad	0x3feb999a670e7b2d              # double 0.86250038269267792
	.quad	0x3fdcf8378b04d3ac              # double 0.45264996124324841
	.quad	0x3fbdb1bf1dd33d00              # double 0.11599344709542336
	.quad	0x3f9cda9f99d18380              # double 0.028177732241946085
	.quad	0x3fef9855f2c70432              # double 0.98734567086660818
	.quad	0x3fd3c8d7521208b8              # double 0.30913336767856547
	.quad	0x3fef216911e7ebd7              # double 0.97282842156652804
	.quad	0x3fd42577a67bd7de              # double 0.31478682764224952
	.quad	0x3fe9cb176555c005              # double 0.80604142944321266
	.quad	0x3fd6f8f534f0bba8              # double 0.35894518060643543
	.quad	0x3f7cb37d82055b80              # double 0.0070071127559775404
	.quad	0x3fa7ae3fac77eca0              # double 0.046251287272718544
	.quad	0x3faf5d1df3568c40              # double 0.061257301287036103
	.quad	0x3fe05dd957c69366              # double 0.51145617622078698
	.quad	0x3fe59928944a69b9              # double 0.67494610751173589
	.quad	0x3fd5b6007f3933c4              # double 0.3392335169235674
	.quad	0x3fe2e20dde50e1e6              # double 0.5900945036037768
	.quad	0x3fe71f633ecb5e54              # double 0.72258150352986172
	.quad	0x3fe9d20643d358ac              # double 0.80688775298292148
	.quad	0x3fda8906b3545436              # double 0.41461341393125239
	.quad	0x3fddea275c18fa04              # double 0.46741661065962625
	.quad	0x3fd5b07627bcf574              # double 0.33889535790134251
	.quad	0x3fd0fd8980c5d34e              # double 0.26547467780556111
	.quad	0x3fdc2b91c103d0e2              # double 0.44015926217185897
	.quad	0x3fe2bd122c2b490b              # double 0.58557995440267641
	.quad	0x3fd6cc7141bc4014              # double 0.35622817439525645
	.quad	0x3fd6b520bcf64350              # double 0.35480516866032463
	.quad	0x3fcc801d02d9504c              # double 0.22265970839601079
	.quad	0x3feb4f3a6ec7eaef              # double 0.85342141758823498
	.quad	0x3fe6ea64c30472fe              # double 0.71611250008899652
	.quad	0x3fba41b4c3433ee0              # double 0.1025650955882571
	.quad	0x3fc79214db944c90              # double 0.18414555284161738
	.quad	0x3faca041828a2330              # double 0.055910155472764678
	.quad	0x3fe33132f63ea93c              # double 0.59975574583703617
	.quad	0x3fde8efed5214282              # double 0.47747774899929862
	.quad	0x3fe2eae57df4c811              # double 0.59117388344589206
	.quad	0x3feab916534269b0              # double 0.83509365331274488
	.quad	0x3fe032214671536c              # double 0.50611938246093535
	.quad	0x3fe081b5a2bd578c              # double 0.51583368096429316
	.quad	0x3fe43255fa8bb3b5              # double 0.63114451346120026
	.quad	0x3fc6525573bb64b8              # double 0.17438762808777653
	.quad	0x3fe19a108ec8de9d              # double 0.55005672347666101
	.quad	0x3fe83fdebbc04b98              # double 0.75779663725039637
	.quad	0x3feaf4f596f78005              # double 0.84240226255133221
	.quad	0x3fe6140cd2f425de              # double 0.68994752122778968
	.quad	0x3fc64b07fcb20a04              # double 0.17416477049489754
	.quad	0x3fdd80716261398a              # double 0.46096453292275241
	.quad	0x3fb2f37e7078c590              # double 0.074027922114302536
	.quad	0x3fe9b6a83cf506b2              # double 0.80354701905908699
	.quad	0x3fd31c5f0676cd0a              # double 0.29860664016014538
	.quad	0x3fe325eb61c4fdb6              # double 0.5983788404045558
	.quad	0x3fb1ae42d8e92b80              # double 0.069065263706916014
	.quad	0x3fec82513263fef8              # double 0.89090785829463837
	.quad	0x3fbb92eed5f74950              # double 0.10771076892641429
	.quad	0x3fd8cdb7faf3974c              # double 0.38755607134804815
	.quad	0x3fd9b548951a3dde              # double 0.40168966828147556
	.quad	0x3fbd4fd9904eb168              # double 0.11449966214303731
	.quad	0x3fd97f79d0e575c2              # double 0.3984055080416874
	.quad	0x3fc9c6a4b4c04574              # double 0.2013746149610075
	.quad	0x3fd465bc3c538f04              # double 0.31870942965746019
	.quad	0x3fe02cf872ef4066              # double 0.50548956344756557
	.quad	0x3fd3cb36b528486e              # double 0.30927818003795593
	.quad	0x3fc04a6d425154fc              # double 0.12727132547539799
	.quad	0x3fed6fe50c02e49e              # double 0.91990902276951991
	.quad	0x3fae5d187f805dc0              # double 0.059304013790263621
	.quad	0x3feb5d42d8aceab5              # double 0.85513441390442912
	.quad	0x3fe1931ee4d39df6              # double 0.54920906727505669
	.quad	0x3fb372e652a10a38              # double 0.075971980260001071
	.quad	0x3fe45d59a8c49538              # double 0.63639529192429389
	.quad	0x3fea7487b081d524              # double 0.82672485803656003
	.quad	0x3fc1ea8418b333e8              # double 0.13996936040930952
	.quad	0x3fe57e524c984340              # double 0.67167010269086092
	.quad	0x3fe6d7af149beec0              # double 0.71382860207764764
	.quad	0x3fc72a034379007c              # double 0.18096962732852606
	.quad	0x3fcce644ed4665a8              # double 0.22577725969021611
	.quad	0x3fa411db4995e920              # double 0.039198734982124117
	.quad	0x3fd17cc5dce4d19a              # double 0.27324053355848721
	.quad	0x3fe91134c6c005b5              # double 0.78335036104561218
	.quad	0x3fee5be4a5fdb5bc              # double 0.94871742649200241
	.quad	0x3fd73b316775b2b6              # double 0.36298785308353432
	.quad	0x3fe48f12b9bd8d24              # double 0.64246498372486771
	.quad	0x3fe2a60812991988              # double 0.58276752121382547
	.quad	0x3f78b0f0ec164500              # double 0.006028119184877001
	.quad	0x3fe5f18636485f9b              # double 0.6857329426011235
	.quad	0x3feb55a30372d3c1              # double 0.85420370744270013
	.quad	0x3fe903acef1b455f              # double 0.7816986722993241
	.quad	0x3fd3619fead19f10              # double 0.30283353740240759
	.quad	0x3fb49fe037685608              # double 0.080564511801945682
	.quad	0x3fc293f506fcc22c              # double 0.14514029351404767
	.quad	0x3fd98f1af5fcb45e              # double 0.39935945532017125
	.quad	0x3fe5a962ca9bc485              # double 0.6769269902416829
	.quad	0x3fdd9af50e1eb92c              # double 0.46258283976466674
	.quad	0x3fcb3cc3bdb5580c              # double 0.2127918888388084
	.quad	0x3fd448fb4b2364a8              # double 0.31695444429130726
	.quad	0x3fcfec5e78e8af70              # double 0.24940091041332435
	.quad	0x3fe2326e6313dddf              # double 0.56865615225882127
	.quad	0x3feb34c156a0cc86              # double 0.85018984717898216
	.quad	0x3f9a50274f0ba200              # double 0.025696386527586768
	.quad	0x3fe490d5c5643a50              # double 0.64268005898504477
	.quad	0x3fbb5921c790c3f8              # double 0.10682879564480163
	.quad	0x3fe07af982bcd115              # double 0.51501155409508448
	.quad	0x3fe9128595d5b4d5              # double 0.78351096405608678
	.quad	0x3fc6805ca332d27c              # double 0.17579229324987355
	.quad	0x3fc6250cb9abf9b8              # double 0.17300566736225931
	.quad	0x3f9796880824e2a0              # double 0.023035169121814136
	.quad	0x3fd02aa9dccc33fc              # double 0.252603974936221
	.quad	0x3fbc8f61a60b8118              # double 0.11156282714683063
	.quad	0x3fe3a128f37c3a5f              # double 0.61342284732547714
	.quad	0x3fe4a543a33046dc              # double 0.64517385361451884
	.quad	0x3fe01c0a4620c79f              # double 0.50342286774524669
	.quad	0x3fd4a9a8831e8f72              # double 0.32285511784197418
	.quad	0x3fd84519981bcc9a              # double 0.37921752790789187
	.quad	0x3fd01338fb31c78e              # double 0.25117325335224272
	.quad	0x3fd9feed99b39216              # double 0.4061845780363752
	.quad	0x3fe37a09400aeb43              # double 0.6086469889481595
	.quad	0x3f9ba72cdfa87740              # double 0.027004910613064981
	.quad	0x3fe22ec0630b202f              # double 0.56820697159219502
	.quad	0x3fe3fa192bbde6c1              # double 0.6242795805294109
	.quad	0x3f9651759e0a8a60              # double 0.021795118113582368
	.quad	0x3fc7ea47c3c64bcc              # double 0.1868371683054576
	.quad	0x3fd89396accc8c92              # double 0.38400809168724337
	.quad	0x3fc2acc56a0e4350              # double 0.14589755705358209
	.quad	0x3feffd83de757ce9              # double 0.99969666909228493
	.quad	0x3fdfee0bde75e148              # double 0.49890419697432664
	.quad	0x3fe3a04d55b640ac              # double 0.6133181261120817
	.quad	0x3fcf909e527e8a40              # double 0.24660090473214957
	.quad	0x3fe5f7cde0a28fba              # double 0.68649953722023516
	.quad	0x3fd47fdbadad1bcc              # double 0.320303840261144
	.quad	0x3f4a1164714f4800              # double 7.9553036141022382E-4
	.quad	0x3fd44e9ce88a6164              # double 0.31729815205610223
	.quad	0x3fd4d4d4a6279118              # double 0.32549015260726
	.quad	0x3fd7cb5d7e99bc16              # double 0.37178742755253447
	.quad	0x3f95f095ae80a2a0              # double 0.021425570274149153
	.quad	0x3fd141c9b192b912              # double 0.26964037266852003
	.quad	0x3fe2ab99ac099522              # double 0.58344729996739297
	.quad	0x3fd010467ef3ecde              # double 0.25099337003457645
	.quad	0x3fd8f05b7c0c9740              # double 0.38967024912050263
	.quad	0x3fc72399b19acff0              # double 0.18077393695932598
	.quad	0x3fe956527ee82f6c              # double 0.79178738390463143
	.quad	0x3fdb7771b8286a1e              # double 0.42916529640356937
	.quad	0x3fa9b235fc9e1ea0              # double 0.050187766158214631
	.quad	0x3fe58915a391a15c              # double 0.67298395106358155
	.quad	0x3f80ff3090f0c540              # double 0.0082992357475598632
	.quad	0x3fdcfcf0a842397c              # double 0.45293823653710041
	.quad	0x3fe1a139df35a4dc              # double 0.5509309157906972
	.quad	0x3fc1dd365ba68338              # double 0.13956336474532249
	.quad	0x3fa3b857d3fda150              # double 0.038515801074768263
	.quad	0x3fe112df739dfdfa              # double 0.53355381566501525
	.quad	0x3fe85fc0dbce35d6              # double 0.76168864184154006
	.quad	0x3fe9916b4b1421ec              # double 0.79900135673329719
	.quad	0x3fe0705b59a56c0e              # double 0.51371543416041887
	.quad	0x3fa12afd289b45a0              # double 0.033531104285098978
	.quad	0x3fd7926ce9a1d932              # double 0.36831209960600397
	.quad	0x3fc9327dcb789238              # double 0.19685337481600285
	.quad	0x3fd615ae319735de              # double 0.34507326929892013
	.quad	0x3fea3f240d9f7659              # double 0.82020762119982316
	.quad	0x3fa1a333b5946fc0              # double 0.034448257365709889
	.quad	0x3fc10980386bbaf8              # double 0.13310244326517995
	.quad	0x3fec19c5f04ac1cf              # double 0.87814614231143107
	.quad	0x3fcf36fb17c6f05c              # double 0.24386538182250461
	.quad	0x3fe11ff753930501              # double 0.53515211413483155
	.quad	0x3fdd58b7d6c65340              # double 0.45853992437450941
	.quad	0x3fdcb8be03739590              # double 0.44877577149448999
	.quad	0x3fc5517049d8616c              # double 0.1665478096554226
	.quad	0x3fae252cc4eb7660              # double 0.05887737182432029
	.quad	0x3fe253f624d3cd20              # double 0.5727492064747004
	.quad	0x3f63f6c6504cfb00              # double 0.0024370072664220421
	.quad	0x3fe669d695ee114e              # double 0.70041970523065245
	.quad	0x3fcd525a8723801c              # double 0.22907573317115826
	.quad	0x3fec73cd41de75a4              # double 0.88913596024547247
	.quad	0x3feb38ac10e8e4f8              # double 0.85066798498806317
	.quad	0x3fa168815816a720              # double 0.034000436785687649
	.quad	0x3fa872692c33d860              # double 0.047747885366263842
	.quad	0x3fcc3a1ce28155fc              # double 0.22052346286606894
	.quad	0x3feddadaf4fcc744              # double 0.93296573495010948
	.quad	0x3fe9c458f385f135              # double 0.80521819651725102
	.quad	0x3feaf87ef29dbe64              # double 0.84283397088979628
	.quad	0x3fe3d5296e5cd7e0              # double 0.61977073245247638
	.quad	0x3fd84f6857143092              # double 0.37984665397449036
	.quad	0x3fcc3d5d3cae8270              # double 0.22062268698666143
	.quad	0x3fee811c45283579              # double 0.95326055056800307
	.quad	0x3fe4723d640584c6              # double 0.63894528899631875
	.quad	0x3fe266ea78d1e438              # double 0.57506297681459895
	.quad	0x3fd531ff07ebfcb4              # double 0.33117652677169507
	.quad	0x3fe30bba6315cc0b              # double 0.59518164970938991
	.quad	0x3fdfe8f6c6424040              # double 0.49859399186334841
	.quad	0x3fe819692e04bbd3              # double 0.75310191143023031
	.quad	0x3fbfaa16dc3ff600              # double 0.1236891067237238
	.quad	0x3fed6207227c76b8              # double 0.91821629272063543
	.quad	0x3fb7edf75edcb7c0              # double 0.09347482744189417
	.quad	0x3fd982f86d993a24              # double 0.39861880019171481
	.quad	0x3fda88b604c2ecae              # double 0.41459417786581809
	.quad	0x3fc3ab45e94f43ac              # double 0.15366433994361495
	.quad	0x3fe075ab41e38472              # double 0.51436388844389413
	.quad	0x3fe7210cd70dd710              # double 0.72278444292780542
	.quad	0x3fd40f3202515ba8              # double 0.31342745043132902
	.quad	0x3fb54914c3dd98d0              # double 0.083146379297974748
	.quad	0x3fba60b4532e2f90              # double 0.10303809195300873
	.quad	0x3fe50e4300817bec              # double 0.65799093340672021
	.quad	0x3fca2dafac0040c4              # double 0.20451923273549799
	.quad	0x3fecf28f7708a8c9              # double 0.90460942505640063
	.quad	0x3fe0c7b44c6643ac              # double 0.52437796518107893
	.quad	0x3fed34f280500bbf              # double 0.91271328984327471
	.quad	0x3fd4e6c9046f2aea              # double 0.32658601220161521
	.quad	0x3fed5fcd0cf02f8c              # double 0.91794445540425462
	.quad	0x3fe1a1d9f381003e              # double 0.55100724753720676
	.quad	0x3fe2742087741cf3              # double 0.57667566734099152
	.quad	0x3fec6d8f66bd4883              # double 0.88837404314314516
	.quad	0x3fe2f4ccfaaa3e05              # double 0.59238289793023624
	.quad	0x3fe527d3a5a53cc6              # double 0.66111166336659077
	.quad	0x3fdf3486e906e3f0              # double 0.48758099323782655
	.quad	0x3fc9d551eba6c578              # double 0.20182250982683647
	.quad	0x3fee0e9b0fe1dd0c              # double 0.93928292371757171
	.quad	0x3fb0550c215c4a00              # double 0.063797720093397459
	.quad	0x3fe75863aa3595a0              # double 0.72953971141821583
	.quad	0x3fe5b4f197a219d2              # double 0.67833785644398348
	.quad	0x3fdac552766e01be              # double 0.41829358640100256
	.quad	0x3fd8121c823d45a8              # double 0.37610542982755613
	.quad	0x3fdfe7bdb5c79b6c              # double 0.49851935150075266
	.quad	0x3fae7dfa58bedf50              # double 0.059554885228350174
	.quad	0x3f5793e91f33e200              # double 0.0014390732365524572
	.quad	0x3fa841f125cd9810              # double 0.047378097405086916
	.quad	0x3fe04f913cc310d4              # double 0.50971280925343843
	.quad	0x3fd5a7433976a050              # double 0.33833389865549623
	.quad	0x3fe2724ba0b567c5              # double 0.57645207775498675
	.quad	0x3fea67c3effab729              # double 0.8251666724297354
	.quad	0x3febcf8cc219a70f              # double 0.86908567342945442
	.quad	0x3fe8cb7c1acc39da              # double 0.77483945115983066
	.quad	0x3fdf3ba16467c934              # double 0.4880145531198139
	.quad	0x3fbdf7759f8fe510              # double 0.1170571817928201
	.quad	0x3fea818baf0979b3              # double 0.82831367670933387
	.quad	0x3fdcec2b83f8d6ae              # double 0.45191467178242817
	.quad	0x3fe7d3cf6ab5366e              # double 0.74460573998812918
	.quad	0x3fea7f7da77f8f72              # double 0.82806284632213889
	.quad	0x3feb2c1e6b4d0bc6              # double 0.84913559872836042
	.quad	0x3fdf7cfeed572468              # double 0.4920041387345635
	.quad	0x3fe303ff74a84c5b              # double 0.59423802170421014
	.quad	0x3fdc9c13068c6eb8              # double 0.44702602042682882
	.quad	0x3fed5c8a36ef3bac              # double 0.91754637460131993
	.quad	0x3fede25484617f8c              # double 0.93387819152484174
	.quad	0x3fea8baf461b299d              # double 0.82955135052297957
	.quad	0x3fe2057a940e43b7              # double 0.56316880147107085
	.quad	0x3fdac6602c73678e              # double 0.4183578905191262
	.quad	0x3fd765ad1080a2b4              # double 0.3655808125645692
	.quad	0x3feabe9d21468212              # double 0.83576828478914167
	.quad	0x3fe82f568c2dfcc9              # double 0.75577857378802904
	.quad	0x3fe05832de2874c8              # double 0.51076644315949071
	.quad	0x3fc121e0b50810fc              # double 0.13384636725834997
	.quad	0x3fe3763882b670ab              # double 0.60818124322715528
	.quad	0x3fda3f86c6a71ee6              # double 0.41012734794320094
	.quad	0x3fe269ae99a95b63              # double 0.57540063869496938
	.quad	0x3fe4e0b81c6a478c              # double 0.65243154096445855
	.quad	0x3fdb2ceb5672bf9c              # double 0.4246166557522828
	.quad	0x3febdc789be687cd              # double 0.87066297959631245
	.quad	0x3f82216c57f2f600              # double 0.0088528122272419906
	.quad	0x3fd05dec84536430              # double 0.25573265955387381
	.quad	0x3fb5cc474f797698              # double 0.08514829340262009
	.quad	0x3fda4c78952c68c6              # double 0.41091742103311579
	.quad	0x3fdc85275a5d6e58              # double 0.44562705826476678
	.quad	0x3fd25c2731b98b80              # double 0.28687457900939961
	.quad	0x3fe803416c754d45              # double 0.75039740737194249
	.quad	0x3f9fb084945e8ac0              # double 0.030946799808257763
	.quad	0x3fda2f0e883636bc              # double 0.40912211706095625
	.quad	0x3fe19ec92a2f039f              # double 0.55063303221696802
	.quad	0x3fa8f9cd29b91320              # double 0.048780833571561155
	.quad	0x3fe478d50b9e0d69              # double 0.63975002545377635
	.quad	0x3fea5c39ffe8ccbc              # double 0.82375812513637169
	.quad	0x3fe3e1c125e0e028              # double 0.62130792043808913
	.quad	0x3fb9e1d219f18a80              # double 0.1011020005549117
	.quad	0x3fee5d77e6138e5c              # double 0.94890971123499978
	.quad	0x3fe6f549593a5cb5              # double 0.71744220187510754
	.quad	0x3fb8474df138ff90              # double 0.094838019745109969
	.quad	0x3feee5d4c1753547              # double 0.96555555138335413
	.quad	0x3fb963da1681c318              # double 0.099179869170040624
	.quad	0x3fede1b4656c9eb3              # double 0.93380183991845056
	.quad	0x3fe90e677c35b831              # double 0.78300832996115421
	.quad	0x3fed4936acdbb04d              # double 0.91518720399245412
	.quad	0x3fec3d01c13fda0d              # double 0.88244712585475471
	.quad	0x3fb5796a12529280              # double 0.083883885834959315
	.quad	0x3fc99464b6074434              # double 0.19984110725502691
	.quad	0x3fe9f099757a9beb              # double 0.81062004990678582
	.quad	0x3fb605e9cd3db618              # double 0.086027729613953219
	.quad	0x3fe4f1c8c03a2a2d              # double 0.65451467079521353
	.quad	0x3febaf24102ee018              # double 0.86512950096858088
	.quad	0x3fe043d6703cf51a              # double 0.50828096314913584
	.quad	0x3fd8197dcee2a394              # double 0.37655587390559586
	.quad	0x3fd54d77dc10c1d8              # double 0.33285328379409185
	.quad	0x3fd5fc65225e8794              # double 0.34352997166035348
	.quad	0x3fcafcd8916e2d84              # double 0.21084124661534187
	.quad	0x3fea59f26418e0e2              # double 0.82347983885031462
	.quad	0x3fe4215604ed23d3              # double 0.62906933748410621
	.quad	0x3fe5dc87c32bee5a              # double 0.68317020530180206
	.quad	0x3fe26c6a05589206              # double 0.57573414844642978
	.quad	0x3febb22aeac39c7d              # double 0.86549898006786885
	.quad	0x3fde56d394738256              # double 0.47404946801365122
	.quad	0x3fc8b08dedb56a04              # double 0.19288801295154212
	.quad	0x3fd9f602803e3be0              # double 0.40564024471035331
	.quad	0x3feb036545ebdab5              # double 0.84416450172905988
	.quad	0x3fe698bfecd8a719              # double 0.70614620455782806
	.quad	0x3fc8f31d92808f70              # double 0.19491929677416975
	.quad	0x3fe24be9e4b161c0              # double 0.57176680246907807
	.quad	0x3fbf9767a118d948              # double 0.1234040039351828
	.quad	0x3fe9e6367eb64fc3              # double 0.80935215710132302
	.quad	0x3fc4c4f89089c0ac              # double 0.16226107652210453
	.quad	0x3fd08b3da95f0cee              # double 0.25849858799138203
	.quad	0x3fddf061e6e5af7c              # double 0.46779677914195594
	.quad	0x3fe9818508720112              # double 0.7970605053851918
	.quad	0x3fd9af3f08fcccec              # double 0.40132118108449677
	.quad	0x3fcb4ee424fb1728              # double 0.2133450680323048
	.quad	0x3fe232bb42fe5cfc              # double 0.56869280895889984
	.quad	0x3fecb2ac9c7962ed              # double 0.89681082307205673
	.quad	0x3fb0a626f96e2ae0              # double 0.065035282035903474
	.quad	0x3fe5e2d806a4a765              # double 0.68394089982505746
	.quad	0x3fd9092188a7ea90              # double 0.39118231149010629
	.quad	0x3fdbbd123c507fda              # double 0.43341499223788349
	.quad	0x3fe02698ab556ff9              # double 0.50471147025700624
	.quad	0x3fe1b2ec8ed7a269              # double 0.55309131525889399
	.quad	0x3fe9fe35464e2f76              # double 0.81228126269841883
	.quad	0x3fdfc971fb2259ec              # double 0.49667024159262385
	.quad	0x3f9d196de48257c0              # double 0.028417317459193958
	.quad	0x3fd759718c43ed40              # double 0.36483420083796503
	.quad	0x3fe3a46fbb11e5c3              # double 0.61382280861942495
	.quad	0x3fef7317fb9752e6              # double 0.98279952181709684
	.quad	0x3fefa5795090d369              # double 0.98894944892400105
	.quad	0x3fbcec4d405525c0              # double 0.11298067875500006
	.quad	0x3feba4333b9e977c              # double 0.86379396099503891
	.quad	0x3fe96ad6c59d84ac              # double 0.79429186436404597
	.quad	0x3fe014007610316a              # double 0.50244162615994736
	.quad	0x3f8a9a2e10634900              # double 0.012989387393109286
	.quad	0x3fe43521dff8d492              # double 0.63148587936906808
	.quad	0x3feb963d1e93428c              # double 0.86208969089246201
	.quad	0x3fd0270cc0901d60              # double 0.25238341145491994
	.quad	0x3fb2231ab82d2ca0              # double 0.070848150219875894
	.quad	0x3feef32896765eee              # double 0.96718243968186157
	.quad	0x3faa2260413e2e90              # double 0.051043518032284685
	.quad	0x3fe462b56252e7dc              # double 0.63704938129307775
	.quad	0x3fe01ddf1ea67dea              # double 0.50364643083952143
	.quad	0x3fec7837e1683f82              # double 0.88967508339736434
	.quad	0x3fe24157a522f8ce              # double 0.57047636273616731
	.quad	0x3fe41258f70113bd              # double 0.62723968737611069
	.quad	0x3fcd26e35f7543d0              # double 0.22774927292860392
	.quad	0x3fdba49f8f25d272              # double 0.43192280749580114
	.quad	0x3fb52f48ee3dd2d0              # double 0.082752760090282651
	.quad	0x3fe78758d96edbbd              # double 0.73527185885801993
	.quad	0x3fe61f5ee1cffb5a              # double 0.69132942298879674
	.quad	0x3fdec934c8dea820              # double 0.4810306512468987
	.quad	0x3fcbea0674e9245c              # double 0.21807938297777951
	.quad	0x3fe0b4b44d6e73a0              # double 0.52205863116579465
	.quad	0x3fea48c180f58539              # double 0.82138133227650834
	.quad	0x3fd48d8f62c9596c              # double 0.32114014289017834
	.quad	0x3fec5cfa8bb3ca46              # double 0.88634993825537189
	.quad	0x3f9dd03507ddb6a0              # double 0.029114559750658686
	.quad	0x3feb58118c793afe              # double 0.85450055538407788
	.quad	0x3fdfa591fdef04d0              # double 0.49448060796937643
	.quad	0x3fe54c0500b626da              # double 0.66552972926111953
	.quad	0x3fefd507a7cc9ab9              # double 0.99475462697304017
	.quad	0x3fb88745ba479080              # double 0.095814092615514212
	.quad	0x3fc1c08f33a9a1a0              # double 0.13868894598568904
	.quad	0x3fa9f1d6c9ceb470              # double 0.05067321027250038
	.quad	0x3fd514cd809707d2              # double 0.3293946986924513
	.quad	0x3feed5b09ea0a453              # double 0.96358519536910092
	.quad	0x3fd05d82f9376920              # double 0.25570749604743703
	.quad	0x3fe98f84f09f749d              # double 0.79876944538741024
	.quad	0x3fce7d7ea7f84174              # double 0.23820479585311782
	.quad	0x3fca6703748a556c              # double 0.20626872244308048
	.quad	0x3fe803e990bf465e              # double 0.75047758360797068
	.quad	0x3fdbf42a346550a6              # double 0.43677764050267809
	.quad	0x3fd6efdfcd45904c              # double 0.35839076086108856
	.quad	0x3fe6d9c8f9e2e929              # double 0.71408509069377601
	.quad	0x3fe498345e4ee5d5              # double 0.6435796586949275
	.quad	0x3fcc2d33930e8760              # double 0.22012943916802907
	.quad	0x3feba2c6d0f7a3eb              # double 0.86362019361433562
	.quad	0x3feb3bceab95390c              # double 0.85105069649014941
	.quad	0x3fdf263d76926356              # double 0.48670898989944555
	.quad	0x3feec46707de9ae7              # double 0.96147491013547614
	.quad	0x3fc687197d4f52e4              # double 0.17599791163106382
	.quad	0x3fcc72aea0fd4b44              # double 0.22224982128917692
	.quad	0x3fc1eced3db40b9c              # double 0.14004292977196264
	.quad	0x3fe4e7dab7cadfb7              # double 0.65330253502815239
	.quad	0x3febfe137bc85730              # double 0.87476514984402876
	.quad	0x3fe0476e07982678              # double 0.50871945842045729
	.quad	0x3fdd200e71e5c4d0              # double 0.45508156893545237
	.quad	0x3f787d9e2c2e5e00              # double 0.0059791735283378777
	.quad	0x3fddb86bd11b1b82              # double 0.4643811742829983
	.quad	0x3fe9fc6d1307a320              # double 0.81206372944606997
	.quad	0x3fb619f209fb1478              # double 0.086333396374429827
	.quad	0x3fc92366cdb8200c              # double 0.19639287037739483
	.quad	0x3fba87a5cc14fa40              # double 0.10363231880635571
	.quad	0x3fe4252f38bc4f30              # double 0.62953911858719458
	.quad	0x3fda9fbb4dbe6370              # double 0.4159992465225093
	.quad	0x3fec7e0ac87e4dd7              # double 0.89038600119459488
	.quad	0x3fc8d01387c80cbc              # double 0.19384998445466362
	.quad	0x3fe711207e6e3217              # double 0.72084068959663028
	.quad	0x3fd17a4ae304b0d0              # double 0.27308914346464253
	.quad	0x3fc97f75db11b0dc              # double 0.19920228192075384
	.quad	0x3fe89ab376ac802b              # double 0.76888440302355343
	.quad	0x3fb8edb0680d7e28              # double 0.097376847651951537
	.quad	0x3fdab4254331944a              # double 0.41724521219140753
	.quad	0x3fc45eda3d19368c              # double 0.15914466842007291
	.quad	0x3fe0a6c44a2762f5              # double 0.52035727008032373
	.quad	0x3fe99f2f2034f16a              # double 0.80068165102379152
	.quad	0x3fbdfeb8b4e2b750              # double 0.11716799179222659
	.quad	0x3fd27c568aeb48ea              # double 0.28883899275127922
	.quad	0x3fd8b2089865d592              # double 0.38586630709263503
	.quad	0x3fdd9639319efcec              # double 0.46229390950970983
	.quad	0x3fc773f4c4e39aa8              # double 0.1832262002346472
	.quad	0x3fb4f4f60db03128              # double 0.081862810460908819
	.quad	0x3fd28c6fefd58d8e              # double 0.28982160970027671
	.quad	0x3fd5d65a5407dfda              # double 0.34120805936936238
	.quad	0x3fe0847757a2e36d              # double 0.51617018810712312
	.quad	0x3fb967d7b2cca758              # double 0.099240761902050223
	.quad	0x3f84d2b2db7ffb00              # double 0.010167500804525442
	.quad	0x3fd457cd180498e8              # double 0.31785895677093245
	.quad	0x3fddcca039a1c650              # double 0.46561437252157578
	.quad	0x3fc02fbff2dedafc              # double 0.12645720824158235
	.quad	0x3fdad89972138642              # double 0.41947017803440556
	.quad	0x3fee03b1e8a5d3ea              # double 0.93795104445473254
	.quad	0x3fea4ff215ec46ed              # double 0.82225899011447512
	.quad	0x3fe8862d1ffdd012              # double 0.76637893913584976
	.quad	0x3fe0238a9e8f4f24              # double 0.50433855980597686
	.quad	0x3fde3865857c0e94              # double 0.47219217334370822
	.quad	0x3fd346b0afd462c6              # double 0.30118958636152759
	.quad	0x3fbf9f4957631858              # double 0.12352426894639856
	.quad	0x3fec570e153de2f8              # double 0.88562683247354723
	.quad	0x3fdf5af8bfbabbe4              # double 0.48992747043206308
	.quad	0x3fd0d63eaf9c47ec              # double 0.26307646893940162
	.quad	0x3fcae0c5bb706534              # double 0.20998450901314814
	.quad	0x3fc03e236ef1cfac              # double 0.12689631383147792
	.quad	0x3fecdc4b9e573afd              # double 0.90189152646948367
	.quad	0x3fd16b57d724a40e              # double 0.27217670450278397
	.quad	0x3fed0ad19bf294a2              # double 0.90757065256606873
	.quad	0x3fd49b8e63ba01e0              # double 0.32199439753460801
	.quad	0x3fd979b89b87b71a              # double 0.39805426777353292
	.quad	0x3feabe6264622a9a              # double 0.83574027639527348
	.quad	0x3fc828a0d78d3588              # double 0.18873987698536276
	.quad	0x3fe66a883c73db75              # double 0.70050441558019705
	.quad	0x3fc5cdbb9c0be014              # double 0.17034096831753287
	.quad	0x3fda930edc1e5a80              # double 0.41522571083024928
	.quad	0x3fd9f98e54f55e8c              # double 0.40585668846822709
	.quad	0x3fe6f88e25699649              # double 0.71784121806258228
	.quad	0x3fdce7c205aa7cae              # double 0.45164537957493678
	.quad	0x3fa98af2590df2b0              # double 0.04988820397463678
	.quad	0x3fe308165cbe9591              # double 0.59473722566751708
	.quad	0x3fd8a00b29ee88f2              # double 0.38476828665638074
	.quad	0x3fe4985f418ce451              # double 0.64360010912708721
	.quad	0x3fe15841b542fdd8              # double 0.54202351954148309
	.quad	0x3fdee2c5c63aeb04              # double 0.48259109838879533
	.quad	0x3fec186c4aa4f8d9              # double 0.87798132494915671
	.quad	0x3fece225dc396fc7              # double 0.90260594379969283
	.quad	0x3fc7826e4865bfd4              # double 0.18366793189079422
	.quad	0x3fc1e20b0d8feeec              # double 0.13971079027384492
	.quad	0x3fbeb150a810f490              # double 0.11989311316661344
	.quad	0x3fc8651335f086f0              # double 0.19058456548469094
	.quad	0x3fd07b010268cece              # double 0.25750756488126292
	.quad	0x3fec9959b79c5d5f              # double 0.89371953832134554
	.quad	0x3fd20cacb1cd66c0              # double 0.282023595461947
	.quad	0x3fa41667707e03a0              # double 0.039233429414714083
	.quad	0x3feeb8b1ff8ff11f              # double 0.96004581369883001
	.quad	0x3fe58aee5091a8d4              # double 0.67320934044007652
	.quad	0x3fd1abf343c7c66e              # double 0.27612001055886182
	.quad	0x3fd296e54d6f2c8c              # double 0.2904599434084012
	.quad	0x3fc18d71a8a654fc              # double 0.1371290276989966
	.quad	0x3fbee563347b8cf0              # double 0.12068767577470729
	.quad	0x3fedd38cc953c80a              # double 0.93207396814091337
	.quad	0x3fdbadeb118130de              # double 0.43249012669981635
	.quad	0x3fd9bacf1e5519fe              # double 0.40202691995764883
	.quad	0x3fa49cd1e05db590              # double 0.040258940351900141
	.quad	0x3fe5a18337f23170              # double 0.67596589018789466
	.quad	0x3fef65b7432365f1              # double 0.98116648781723203
	.quad	0x3feed188bac75fe4              # double 0.96307789306865432
	.quad	0x3fd42ecca7c31b44              # double 0.31535641081830001
	.quad	0x3fc9e23e78c010b4              # double 0.20221691986092127
	.quad	0x3fd2e0b5b56a3268              # double 0.29496519771854546
	.quad	0x3fef035d5aaf6cf3              # double 0.96916072570766542
	.quad	0x3fa6b3b262221870              # double 0.044339727858685118
	.quad	0x3fd572d97beb886a              # double 0.3351348600537053
	.quad	0x3fc6f3a7d013c798              # double 0.17931077632925674
	.quad	0x3fef3fc0a61e9810              # double 0.97653229184357038
	.quad	0x3fef0a5170f6574b              # double 0.97000953734343775
	.quad	0x3fe2f243ce367286              # double 0.59207334781565701
	.quad	0x3fe404d2248f3150              # double 0.62558848515031151
	.quad	0x3fc5c1bf7c245c80              # double 0.1699752193605697
	.quad	0x3f9834d370d5c940              # double 0.023639014970691763
	.quad	0x3fe3d1dd8b1dba0d              # double 0.61936833544842929
	.quad	0x3fc3ffb2f1ed69d0              # double 0.15624081433163761
	.quad	0x3fe873c66b7e13cf              # double 0.76413269991518884
	.quad	0x3fcb4ad08477c848              # double 0.21322065799864931
	.quad	0x3fe11fe47154bf30              # double 0.53514310965508649
	.quad	0x3fe4b928b06ef936              # double 0.64760240993181273
	.quad	0x3fee65b63b6328a2              # double 0.94991599654283143
	.quad	0x3fe5a51794b052ed              # double 0.67640284577154619
	.quad	0x3fd921c17b6aa722              # double 0.39268528988269413
	.quad	0x3fbed645340ca600              # double 0.12045700569856166
	.quad	0x3fead2253c33e962              # double 0.83815252073626945
	.quad	0x3fdda8a9ba6ed3d0              # double 0.46341937261905475
	.quad	0x3fe3887945793a85              # double 0.61040938920071197
	.quad	0x3fc1ec931bf2a970              # double 0.14003218521731808
	.quad	0x3fbf4d626e7bcb70              # double 0.12227454373696189
	.quad	0x3fcd90349fc098d8              # double 0.23096330452353331
	.quad	0x3fec912a22ea9afa              # double 0.89272028751005839
	.quad	0x3fb0947ec696d150              # double 0.064765857204126975
	.quad	0x3fe02177e7331ad9              # double 0.50408549457719254
	.quad	0x3fec28efc989f5f8              # double 0.87999715197628259
	.quad	0x3fd80e42e51f7918              # double 0.37587044120108848
	.quad	0x3fe0693fa8dd768b              # double 0.51284773808920769
	.quad	0x3fe898a930469313              # double 0.76863536290020062
	.quad	0x3fe27796b3fa453e              # double 0.57709822799566957
	.quad	0x3fe5a67a5f868718              # double 0.67657202393840787
	.quad	0x3fec515d88d4ece8              # double 0.88493229603718948
	.quad	0x3fe04408b0ae3dd1              # double 0.50830492504058544
	.quad	0x3fcf76ff07e700c4              # double 0.24581897626740645
	.quad	0x3fe79d8da61cbeb8              # double 0.73798258251004878
	.quad	0x3fd5e96a59db44a6              # double 0.34237154746103682
	.quad	0x3fee86f53f005985              # double 0.95397436432794847
	.quad	0x3fdf0d3eacd28746              # double 0.48518339993653503
	.quad	0x3fea4edd39859927              # double 0.82212697252979161
	.quad	0x3fe4a92100640e39              # double 0.6456456191667207
	.quad	0x3fe27cdc5cbf85cc              # double 0.57774179568166906
	.quad	0x3fb26589133fed30              # double 0.071861808013569783
	.quad	0x3fb0980886e62478              # double 0.064819844183277797
	.quad	0x3fc9cd63cc08d6f8              # double 0.2015805002462725
	.quad	0x3feaeff0d3ab1587              # double 0.84178963986839583
	.quad	0x3fd917ca6e463b3a              # double 0.3920770718477119
	.quad	0x3fb990978c679058              # double 0.099862548616841962
	.quad	0x3fd0717c2529c814              # double 0.25692657117099427
	.quad	0x3fa3d796a4924430              # double 0.038754184331203922
	.quad	0x3fb5bd19c5347c88              # double 0.084916697164304833
	.quad	0x3fe0331c32610d31              # double 0.50623903121632996
	.quad	0x3faae1007be6e110              # double 0.052497878193607517
	.quad	0x3fd2c99e0f99c49e              # double 0.29355575107099152
	.quad	0x3fd0e809334d206c              # double 0.26416234979524833
	.quad	0x3fe8c9d5db31bbd7              # double 0.7746381074083456
	.quad	0x3fe68dc1b3b41948              # double 0.70480427835790582
	.quad	0x3fd32f2737abfa4e              # double 0.29975300251672798
	.quad	0x3fafc15e4c607530              # double 0.062022158454264065
	.quad	0x3fe1fa6409cff05a              # double 0.56181528011758108
	.quad	0x3fd7837fee58ffb8              # double 0.36740110660684477
	.quad	0x3fd5ce85a4e59b36              # double 0.34073010543072557
	.quad	0x3fe62954add15e7e              # double 0.69254526089476065
	.quad	0x3feed13db1caccaa              # double 0.96304211354290215
	.quad	0x3fc76235ebe27e00              # double 0.1826846505909856
	.quad	0x3fe9cb3c3f888294              # double 0.80605900200687807
	.quad	0x3fe767d1ed46dbab              # double 0.73142334311602519
	.quad	0x3fc8980063ee58fc              # double 0.19213871840901919
	.quad	0x3fd5f505ee022520              # double 0.3430800270367218
	.quad	0x3fde42e681519fb6              # double 0.4728332770232514
	.quad	0x3fe67678bdf73ffb              # double 0.70196187117289754
	.quad	0x3fd74a9d2cfcaf68              # double 0.36392907517687556
	.quad	0x3fc0a2fad24ce9c4              # double 0.12997374790741223
	.quad	0x3fef10779929c3af              # double 0.97076015391040992
	.quad	0x3fbf5fd85c02e5d0              # double 0.12255623098726365
	.quad	0x3fbfcf1cfae381c8              # double 0.1242540466805685
	.quad	0x3fde7a03cbb22daa              # double 0.4761971940249291
	.quad	0x3fe4b957ddc7a831              # double 0.6476249057425375
	.quad	0x3fde957cd3bb4c5e              # double 0.47787399937550912
	.quad	0x3fc624fabffc9dc8              # double 0.1730035245357
	.quad	0x3fd6cd4a7f5a74a8              # double 0.35627996861314637
	.quad	0x3fcb4b563ce50fb4              # double 0.21323659871461376
	.quad	0x3fcaaf403dbf7514              # double 0.20847323432000364
	.quad	0x3fd1e163ae562932              # double 0.27938167595916064
	.quad	0x3feb063bff7aafc0              # double 0.84451103113450898
	.quad	0x3fe69b1216b2cac5              # double 0.70642952378542445
	.quad	0x3fd2c69057d9342a              # double 0.29336937502813731
	.quad	0x3fbec4945d9ec2e8              # double 0.12018706594131923
	.quad	0x3f9bcb9034f51e40              # double 0.027143719894665574
	.quad	0x3fe6b7fdf632ad79              # double 0.70995996556796037
	.quad	0x3fdf3ce581af37ca              # double 0.48809182800766548
	.quad	0x3fdf3f57d7596638              # double 0.48824115781971811
	.quad	0x3fdfb7d465046a8c              # double 0.4955950724121656
	.quad	0x3fb1460eb6307eb8              # double 0.067475242118684942
	.quad	0x3fe9adb21855dfc3              # double 0.80245308640495983
	.quad	0x3fe3a9d3d34d2fe6              # double 0.61448088903261744
	.quad	0x3fe5a0d2361d8774              # double 0.67588148660091329
	.quad	0x3fd6a548e2467ba8              # double 0.35383817765426295
	.quad	0x3fe235251882fb2c              # double 0.56898741519385032
	.quad	0x3fe5942816825d6b              # double 0.674335521663051
	.quad	0x3fe35dc676e3bc6e              # double 0.6051971742689497
	.quad	0x3fe9b85b9974dbf2              # double 0.80375461551636662
	.quad	0x3fd1544ea0188ffe              # double 0.2707706988751396
	.quad	0x3fa26bfa5c445450              # double 0.035980056536722871
	.quad	0x3f8e4ce68d2744c0              # double 0.014795113737735455
	.quad	0x3fec8135be878c98              # double 0.89077269757071331
	.quad	0x3fe874651d196643              # double 0.76420837100449324
	.quad	0x3fc57790a2a34e1c              # double 0.16771133366874913
	.quad	0x3fe8551c1e3d2163              # double 0.76038938432706649
	.quad	0x3fecbcca637e53de              # double 0.89804572517698111
	.quad	0x3fe9c57482cb0095              # double 0.8053534082937569
	.quad	0x3fe3144e67baf239              # double 0.59622879276100271
	.quad	0x3feb330dc72eb644              # double 0.84998215582681568
	.quad	0x3feb8a6998052288              # double 0.86064605418603524
	.quad	0x3fe226c1a5ebf7e9              # double 0.5672310104998789
	.quad	0x3fe460911727cf28              # double 0.63678793451842797
	.quad	0x3fd90871f581c10e              # double 0.391140451195512
	.quad	0x3faf5f531490f890              # double 0.061274143467458519
	.quad	0x3fce0997c2f4a818              # double 0.2346677495891647
	.quad	0x3fb9f0ed44554688              # double 0.10133250158585316
	.quad	0x3fe47470920f0d44              # double 0.63921383406742693
	.quad	0x3fd86b8622e05d96              # double 0.38156274228955434
	.quad	0x3fdaab781146822a              # double 0.41671563803723422
	.quad	0x3fcca0470bb0f48c              # double 0.22364128180371201
	.quad	0x3fee92f3ddd3196f              # double 0.95543855023497126
	.quad	0x3fe7e4b0c910e3f4              # double 0.74666632910441288
	.quad	0x3fa6d26a20daf2c0              # double 0.044574085722592027
	.quad	0x3fbac116decf85b0              # double 0.10450880946839081
	.quad	0x3fcf7206ad31a958              # double 0.24566729981172375
	.quad	0x3f87b0bf26f2c240              # double 0.011567586303813049
	.quad	0x3fdea164a28e989a              # double 0.47860065340717883
	.quad	0x3fe4f8a2a24fd079              # double 0.65535098744886888
	.quad	0x3fefd8f79f354a30              # double 0.99523526282638919
	.quad	0x3fcc13b09b692db0              # double 0.21935088718815399
	.quad	0x3fe6bfff3ad49c88              # double 0.71093713274321235
	.quad	0x3feb160ce6ccd91e              # double 0.84644169881974896
	.quad	0x3fd1deb4d63ac04e              # double 0.27921791954850483
	.quad	0x3fc83df603761ba8              # double 0.18939089936267561
	.quad	0x3fd17e05871f4972              # double 0.27331674762276414
	.quad	0x3fe2d6529361842c              # double 0.58866242204033403
	.quad	0x3fe8761f101eeb1b              # double 0.76441910885418751
	.quad	0x3fcaba19bf5976d8              # double 0.20880433886752914
	.quad	0x3fd70a75633a6532              # double 0.36001333894963061
	.quad	0x3fd586ca733539be              # double 0.33635197878620804
	.quad	0x3fea724bbfd26809              # double 0.82645213570799669
	.quad	0x3fd9e3de804f6762              # double 0.40453302889146958
	.quad	0x3fd064e74af49b98              # double 0.25615866012452093
	.quad	0x3fe0d28d98c4a812              # double 0.52570228421723386
	.quad	0x3fead3324e542ed4              # double 0.83828082369424317
	.quad	0x3fc68ea1f4a9ef64              # double 0.17622780271983196
	.quad	0x3fe50cdab9c84d3b              # double 0.65781914029722743
	.quad	0x3fe908996a28b894              # double 0.78229971632187522
	.quad	0x3fcc687b8d88172c              # double 0.22193855677340346
	.quad	0x3fe3681e402ec79d              # double 0.60645973716440305
	.quad	0x3fe3a3bd87edc4a7              # double 0.61373783634748669
	.quad	0x3fcb9e27216bb1c4              # double 0.21576394206875993
	.quad	0x3fd2b9a55d1b6aec              # double 0.29258092968454608
	.quad	0x3fda9a7a3685c01a              # double 0.41567855190715053
	.quad	0x3fce3b14f30f9e4c              # double 0.23617803447926844
	.quad	0x3fcd124efa232240              # double 0.22712123121006478
	.quad	0x3fe2fdb9684e664d              # double 0.59347219822229536
	.quad	0x3fdb4e27bd4dd5a2              # double 0.42664521681521184
	.quad	0x3fb7b5837e52d420              # double 0.092613428440771361
	.quad	0x3fef2d2b7bc67388              # double 0.97426389860957929
	.quad	0x3f70c04c63d55500              # double 0.0040896400435788127
	.quad	0x3fdf705a35a5460c              # double 0.49123244513347752
	.quad	0x3fed7a390d09a08f              # double 0.92116978212745149
	.quad	0x3fec356d67c2956d              # double 0.88152189508097722
	.quad	0x3fc20ae490bc455c              # double 0.14095742289695579
	.quad	0x3fc15c629d3a6d54              # double 0.13563187291297629
	.quad	0x3fe38288e87ae7b3              # double 0.60968442350644236
	.quad	0x3feaba2a0da608fe              # double 0.83522513070809601
	.quad	0x3fed7fca4b4c9e22              # double 0.92184939104931041
	.quad	0x3f990bc70ca81d00              # double 0.024458990237715916
	.quad	0x3fb6ec94fa2fdab8              # double 0.089547453957360967
	.quad	0x3fe50d15bba47d7b              # double 0.65784727715428859
	.quad	0x3fe87931c3a5e667              # double 0.76479423725613749
	.quad	0x3fade1540fcdd570              # double 0.058359744004443992
	.quad	0x3fa6bd38b2004440              # double 0.044412395218508482
	.quad	0x3fe3ffea50f5eded              # double 0.62498966038350334
	.quad	0x3fe36e0b8e7d8f10              # double 0.60718324499291221
	.quad	0x3fd1ef347e272518              # double 0.28022491759891599
	.quad	0x3fef3a921c94ffe0              # double 0.97589974958827596
	.quad	0x3fcf18a01d676c40              # double 0.24293900905363053
	.quad	0x3f9cecb0efd712e0              # double 0.02824665511959068
	.quad	0x3fd17e8fb9f13f6a              # double 0.27334969671664189
	.quad	0x3fd7cd35a80ca38c              # double 0.3718999997241148
	.quad	0x3fcce64cf4df6704              # double 0.22577821690247657
	.quad	0x3fddb6d5add83944              # double 0.46428434350027126
	.quad	0x3fef7b2455508f52              # double 0.98378197348618301
	.quad	0x3fdb063b0c6dbda6              # double 0.42225528920877264
	.quad	0x3fe39f0ee6b5a34e              # double 0.61316628513768889
	.quad	0x3fcef81a32fa97e8              # double 0.2419464825554194
	.quad	0x3fca32766e6b8930              # double 0.20466499702076524
	.quad	0x3fed46bbb380bda0              # double 0.91488442477377773
	.quad	0x3fda7e530163b97a              # double 0.41396021972368369
	.quad	0x3fe4ebc3820763f8              # double 0.653779748880992
	.quad	0x3fee7b3fc6e8dbb0              # double 0.95254505967647241
	.quad	0x3fe0ec6fac4e2c30              # double 0.52886184361830679
	.quad	0x3fe889f145f74871              # double 0.76683868088936269
	.quad	0x3fe5f87beac4b091              # double 0.68658252576052992
	.quad	0x3fc19af9db0a0084              # double 0.13754199214236362
	.quad	0x3fec3a1414ff0c23              # double 0.88208965397678119
	.quad	0x3fd6673188e442b8              # double 0.35004843109440342
	.quad	0x3fed1c00b0f954ab              # double 0.90966829838966612
	.quad	0x3fefc9fafa39a044              # double 0.99340580818262269
	.quad	0x3fddab972fdf7ca4              # double 0.46359805750939587
	.quad	0x3fe2af5c61150bee              # double 0.58390635453576833
	.quad	0x3fc101e8d6341edc              # double 0.13287077387962298
	.quad	0x3fdc5db9c53dd2e4              # double 0.44322056066384463
	.quad	0x3fe8bb2fc6de81b0              # double 0.77284993020662363
	.quad	0x3fbaffb4ab4287c8              # double 0.10546425992154618
	.quad	0x3fe100bb6d571d1e              # double 0.53133937221074112
	.quad	0x3fe83af6b46b4d57              # double 0.75719771612277043
	.quad	0x3fd0a0d82e16b3ac              # double 0.25981716633651319
	.quad	0x3fda09403217e4da              # double 0.40681462184836692
	.quad	0x3fa2b2d4c72580f0              # double 0.036520623502612426
	.quad	0x3fe69c73d76d1b4a              # double 0.70659820628575543
	.quad	0x3fd7b5f1372d35ca              # double 0.37047987354602852
	.quad	0x3fb5634e09b93ff8              # double 0.083546521543439556
	.quad	0x3fd8b4fe525dfc30              # double 0.38604696315445874
	.quad	0x3fe21d16e6e4bfeb              # double 0.56605095955273776
	.quad	0x3fe21156a3c72cac              # double 0.56461650836845001
	.quad	0x3fcf34834fccb448              # double 0.24379006763902766
	.quad	0x3faf236265d718a0              # double 0.060816836291949672
	.quad	0x3feeb7241b375280              # double 0.9598560840191368
	.quad	0x3fe33786838774ab              # double 0.60052800835878395
	.quad	0x3fe932c2c50638ad              # double 0.78744638902005237
	.quad	0x3fe3a27a40075c80              # double 0.61358368402115104
	.quad	0x3fef26b94456cf37              # double 0.97347701404075948
	.quad	0x3fda37cff50c32b4              # double 0.40965651445803108
	.quad	0x3fd3a5be3eecf860              # double 0.30699115891537154
	.quad	0x3fea823863375f49              # double 0.82839602831061498
	.quad	0x3fa0f6dcede19bd0              # double 0.033133415258638999
	.quad	0x3fc6d6fce87bd608              # double 0.17843591071839193
	.quad	0x3fe2a8efe0332d53              # double 0.583122194185686
	.quad	0x3fe84ca447b7e904              # double 0.75935567862987385
	.quad	0x3fe03c1b4960f001              # double 0.50733723003168063
	.quad	0x3fe6be63f2c7b1f7              # double 0.71074101846676185
	.quad	0x3fd7d380994fa700              # double 0.37228407832900245
	.quad	0x3fb9bba04f3a8478              # double 0.10051919874469373
	.quad	0x3fe7abf1d072f850              # double 0.73973932945933463
	.quad	0x3fe38e97693f62f9              # double 0.61115618282482764
	.quad	0x3fe943f674d2473c              # double 0.78954623047523098
	.quad	0x3fe0334cda401ef2              # double 0.50626223208470678
	.quad	0x3fd567409c75a98c              # double 0.33442702559718707
	.quad	0x3fe7c548f83156a8              # double 0.74283264613287248
	.quad	0x3fec364eac0721b2              # double 0.88162931060019489
	.quad	0x3fe25698b4f45632              # double 0.57307086317695721
	.quad	0x3fd7c794ccf1d69a              # double 0.37155647291306482
	.quad	0x3fc1181f610976e0              # double 0.13354866254933651
	.quad	0x3fd342b66510ca9e              # double 0.30094680661856354
	.quad	0x3fd7f62c0113aa1a              # double 0.37440013985784193
	.quad	0x3fc0172d0f744d5c              # double 0.12570727591137654
	.quad	0x3fd3c0e6160a6642              # double 0.30864860680012296
	.quad	0x3fea9f5d24c8cc0a              # double 0.83195359405942892
	.quad	0x3fd1ebc8ed3e66ac              # double 0.28001616638503424
	.quad	0x3fdc5ffb492be8f8              # double 0.44335825105339621
	.quad	0x3fcb1cb4cfd1ba84              # double 0.21181354663299967
	.quad	0x3fa8adcf2fdef860              # double 0.048201059907555743
	.quad	0x3fc91f266664a394              # double 0.19626312255539047
	.quad	0x3fcac9984a3ce994              # double 0.20927718758487102
	.quad	0x3fce723e56218660              # double 0.2378614349900543
	.quad	0x3fe67dc2820c51b3              # double 0.70285153770469433
	.quad	0x3fe23b9963e77537              # double 0.56977529060865251
	.quad	0x3fe5e6c81329aa87              # double 0.6844215750000594
	.quad	0x3fed07891cc4ddfa              # double 0.90716987246463465
	.quad	0x3fdbe899e610ce1e              # double 0.43607184855793146
	.quad	0x3fecf6012b38635b              # double 0.9050298542161771
	.quad	0x3f95cd16ed1d55a0              # double 0.021290167066884913
	.quad	0x3fe60c45d6816957              # double 0.68899814506157042
	.quad	0x3fea6f8f73ca7c82              # double 0.82611820807859737
	.quad	0x3fe6edd0a2a0fb56              # double 0.71653014911121704
	.quad	0x3faff8ec344a05a0              # double 0.062446004279091527
	.quad	0x3fefded56148b96e              # double 0.99595135689541592
	.quad	0x3fe1f38972cf78f1              # double 0.56097862647928143
	.quad	0x3fd8fcd4724e91da              # double 0.39043151057037806
	.quad	0x3fea9b15ef09e10b              # double 0.83143135726189266
	.quad	0x3fddb62701fa1c96              # double 0.46424269860330847
	.quad	0x3fb91103838a1e98              # double 0.097915858854430105
	.quad	0x3fe3a129fc8f1be0              # double 0.61342334106381813
	.quad	0x3fe0ccff5e7eb7ba              # double 0.52502411323597831
	.quad	0x3f8b1c30df4b4f40              # double 0.013237363638303301
	.quad	0x3fe7eda394d46d6e              # double 0.74775866573638239
	.quad	0x3fe4d6fe52f5adc7              # double 0.6512443180376345
	.quad	0x3fca1e6fe7277628              # double 0.20405386721442764
	.quad	0x3fd7120bd9f010a2              # double 0.36047645838722009
	.quad	0x3fd877fea0c85498              # double 0.38232389165325165
	.quad	0x3fe7733853b005ee              # double 0.73281494469864383
	.quad	0x3fe97a3370ad87af              # double 0.7961671066989221
	.quad	0x3fd14e0b4bf147bc              # double 0.27038843551883551
	.quad	0x3fd014b2072cd3b6              # double 0.25126314831441776
	.quad	0x3fea221cbcbd1219              # double 0.8166640936183881
	.quad	0x3fe3eb9abeea82e4              # double 0.62251031196873585
	.quad	0x3fb29df0c4c401c8              # double 0.07272248081063204
	.quad	0x3fe0fb1451e5a46c              # double 0.53064933772578859
	.quad	0x3fe9e19ec7ffe640              # double 0.80879153311179408
	.quad	0x3feee2c54d54a6a9              # double 0.96518197158475971
	.quad	0x3fe4a2498b8556c2              # double 0.64481045961539274
	.quad	0x3fee15f7977e8dc6              # double 0.94018153752079381
	.quad	0x3fec44c278a001f9              # double 0.8833935123403186
	.quad	0x3fcddb311b4234e8              # double 0.23325170355784697
	.quad	0x3fee838c07f1ec99              # double 0.95355798293839478
	.quad	0x3fe2cf9392d127f6              # double 0.58783892321775855
	.quad	0x3fd740f3de4bfcbc              # double 0.36333939274477323
	.quad	0x3fbd6660ee11e980              # double 0.1148434239602576
	.quad	0x3fe79f6410932fd4              # double 0.73820689427656783
	.quad	0x3fe41c44c88339d4              # double 0.62845076716058168
	.quad	0x3fcb02aff61e6c40              # double 0.21101951138993691
	.quad	0x3fea5889e77386d9              # double 0.82330794530227103
	.quad	0x3fc652d6e40944a8              # double 0.17440305838184611
	.quad	0x3fedc2940ed7c84c              # double 0.93000224017146981
	.quad	0x3fc83ba0475b81bc              # double 0.18931964382410438
	.quad	0x3feec4718307e038              # double 0.96147990791269588
	.quad	0x3fdd4899cd464acc              # double 0.45755620046945178
	.quad	0x3fd4786708cb8d52              # double 0.31984878405474604
	.quad	0x3fd325748c844a56              # double 0.29916108820285581
	.quad	0x3fd79ed2805d7fb2              # double 0.36906874213854757
	.quad	0x3fd797f48d0a416a              # double 0.36864961408084318
	.quad	0x3fc3a7259eccfc80              # double 0.15353842023793973
	.quad	0x3fe9b885971076fb              # double 0.8037746382212555
	.quad	0x3fef1f37ef6b4383              # double 0.9725608516838381
	.quad	0x3fe778dd0653c4d8              # double 0.7335038302973329
	.quad	0x3fd3d043b7d66172              # double 0.30958645775674321
	.quad	0x3fcf1d770031f108              # double 0.24308669576192465
	.quad	0x3fc8c99199f16380              # double 0.19365139023537026
	.quad	0x3f8768922c6f3100              # double 0.01142992208578919
	.quad	0x3fd0919c5ce84abc              # double 0.25888737748133983
	.quad	0x3fd039f60643f4bc              # double 0.2535376607118669
	.quad	0x3fe6ef7863bdd62e              # double 0.71673221092959749
	.quad	0x3fec85f4bfb6cb1b              # double 0.89135205692432196
	.quad	0x3fac6ef02c74a260              # double 0.055533891131123836
	.quad	0x3fe535b84297a2f7              # double 0.66280758863749056
	.quad	0x3fd85854a32dcb1c              # double 0.3803912728828196
	.quad	0x3fb63dbc6f356280              # double 0.08687951769878488
	.quad	0x3fd8b6624ee5551e              # double 0.38613183693571951
	.quad	0x3fbf551e92e273d0              # double 0.12239256940888699
	.quad	0x3fe33ad37114f353              # double 0.60093090139671756
	.quad	0x3f9334a0da62fcc0              # double 0.018755448655380702
	.quad	0x3fe9e0f127b00a1f              # double 0.80870874167914397
	.quad	0x3fe75aebf338114d              # double 0.72984883788789434
	.quad	0x3fdde1af9e31712e              # double 0.4668997807364289
	.quad	0x3fec10758e1cbd01              # double 0.87700917965221958
	.quad	0x3fe620a5e4ab26b3              # double 0.69148535405948619
	.quad	0x3fe4c3ac193041fb              # double 0.64888577384596091
	.quad	0x3f85b50033636e00              # double 0.010599137848138263
	.quad	0x3fd8555c20b84b66              # double 0.38020995326330931
	.quad	0x3fd332fbb72f7624              # double 0.29998677148054953
	.quad	0x3fee151929ce7654              # double 0.94007547536211655
	.quad	0x3fdae4f10eab50c2              # double 0.42022348816432153
	.quad	0x3fe5358577faa82a              # double 0.66278336938308269
	.quad	0x3fe4dc3173bb0476              # double 0.65187904933567498
	.quad	0x3f946520d6c9c4c0              # double 0.019917023763302621
	.quad	0x3fd4fd6acf9470c8              # double 0.32796736022443129
	.quad	0x3fa32b98f8d92cb0              # double 0.037441997887606049
	.quad	0x3fdc3d9035f2bd54              # double 0.44125752704981847
	.quad	0x3fd2ad5c7f64d71e              # double 0.2918311351853492
	.quad	0x3fb22aca98f84650              # double 0.070965444894931951
	.quad	0x3fd6e85648d69fa8              # double 0.35793072808382442
	.quad	0x3fce0eba34dc9b24              # double 0.23482444363727339
	.quad	0x3fd59c685a0daf8a              # double 0.33767136377604656
	.quad	0x3fbef8c5396a2e90              # double 0.1209834351704393
	.quad	0x3fe974327fd63d12              # double 0.79543423622263476
	.quad	0x3fb0895dec2edc68              # double 0.06459605232417831
	.quad	0x3feca1c303b8cbf4              # double 0.89474631049085795
	.quad	0x3fd21d2bc6761bbe              # double 0.28303045636169688
	.quad	0x3fed5165dd0882b0              # double 0.91618626757197852
	.quad	0x3feeaf2fc4852d18              # double 0.9588850820813688
	.quad	0x3fe7594dedd4e02a              # double 0.72965141726945615
	.quad	0x3fe594e9cf0c4104              # double 0.67442789496456657
	.quad	0x3fefc94167aba75e              # double 0.99331732032917919
	.quad	0x3fe720fb27fe6dce              # double 0.72277601062108388
	.quad	0x3fe6e1a12ac721a1              # double 0.71504267077493833
	.quad	0x3fd94736eccbab70              # double 0.39497159123009506
	.quad	0x3fc1bb1e218a6da4              # double 0.13852287900668359
	.quad	0x3fda25702a886cf4              # double 0.40853504327397094
	.quad	0x3fd9828676cf3ed6              # double 0.39859162905211798
	.quad	0x3fe04bc95c342014              # double 0.50925128944891407
	.quad	0x3fd912f010ea95f6              # double 0.39178086902606368
	.quad	0x3fe105a98698166e              # double 0.53194118774326937
	.quad	0x3fef14fbd780319d              # double 0.97131149377814873
	.quad	0x3fd0a98a6c361c2e              # double 0.26034794394985539
	.quad	0x3fe1ee4b6e20482f              # double 0.56033870228771387
	.quad	0x3fe44f3325536ac4              # double 0.63466794290737782
	.quad	0x3fdd11a8eba5ac5a              # double 0.45420287144105986
	.quad	0x3fee1281b22d5882              # double 0.9397591094991784
	.quad	0x3fe1f3aaefd24211              # double 0.56099459495641402
	.quad	0x3fdf55ae3c3e81e8              # double 0.48960452922076891
	.quad	0x3fd4335ba4015c98              # double 0.31563464180130429
	.quad	0x3fd7eccbc5643608              # double 0.37382787968167053
	.quad	0x3fc38f6583a00874              # double 0.15281361510284663
	.quad	0x3febd6b8a4365a06              # double 0.86996109078137418
	.quad	0x3fe525d60b286719              # double 0.66086866549742063
	.quad	0x3fd9d8e7cd800270              # double 0.40386385982859618
	.quad	0x3feedb224422698e              # double 0.96424973781113166
	.quad	0x3fee7f697b38f0f0              # double 0.95305322710876617
	.quad	0x3feaf17c78de1750              # double 0.84197829825346027
	.quad	0x3fc7d894ede48758              # double 0.18629705062726987
	.quad	0x3fe8551468ab3462              # double 0.76038570826643714
	.quad	0x3fed89b6567cffc5              # double 0.92306057827226395
	.quad	0x3feef09f9bce50ac              # double 0.96687298231929252
	.quad	0x3fc74aa854cc487c              # double 0.18196586742903154
	.quad	0x3fe8539bda049785              # double 0.76020615178707429
	.quad	0x3fe756981dea3231              # double 0.72932058184375681
	.quad	0x3fef387ff5155b45              # double 0.9756469523225425
	.quad	0x3fec6b415398c2b7              # double 0.88809267356381028
	.quad	0x3fbf37102e063c40              # double 0.12193394778863453
	.quad	0x3fe7be407ca43da9              # double 0.74197410911613304
	.quad	0x3fe188a7ee1279d3              # double 0.54793163774939513
	.quad	0x3fa69051ba496910              # double 0.044069818487246448
	.quad	0x3fe30274ad349742              # double 0.59404977635561118
	.quad	0x3f8c98bbdab03cc0              # double 0.013963191615430026
	.quad	0x3fc6aec272bd1b0c              # double 0.17720823862529078
	.quad	0x3fda5e2a59072f3a              # double 0.41199740118166839
	.quad	0x3fc4900cf4b47f84              # double 0.16064607571115286
	.quad	0x3fdf7a6ea504f5bc              # double 0.49184766879246999
	.quad	0x3fb615e2ff8eaa20              # double 0.086271464721598523
	.quad	0x3fe8be10c9123a47              # double 0.77320136329382982
	.quad	0x3fd448c07689c37a              # double 0.31694041801443229
	.quad	0x3fe2df6e9b0e4909              # double 0.58977442058883967
	.quad	0x3fe16735f94f1ccc              # double 0.54384897893114603
	.quad	0x3fe2ee850e64683e              # double 0.59161618052463161
	.quad	0x3fe2fc94b15b2bc4              # double 0.59333262100096151
	.quad	0x3febb777149fb51d              # double 0.86614564922425397
	.quad	0x3feae0dc4cc70dfa              # double 0.83994879718414883
	.quad	0x3fe44d4f7664e80a              # double 0.63443730472431636
	.quad	0x3febf8fe406d1c2f              # double 0.87414467414135355
	.quad	0x3fec5fdced34c6dd              # double 0.88670202569320689
	.quad	0x3fd329c7bd583df6              # double 0.29942506304448047
	.quad	0x3fe3cb561dd2cee4              # double 0.61857133698364608
	.quad	0x3fd8c1768e219500              # double 0.3868080509185603
	.quad	0x3fa403b3c38e4b50              # double 0.039090745564996809
	.quad	0x3fe2213c31d7fac8              # double 0.56655702338306302
	.quad	0x3fca25bed001e2e8              # double 0.20427689701661866
	.quad	0x3fcd91f9142ae140              # double 0.23101724133244694
	.quad	0x3fd7b2ddb1b04a76              # double 0.37029211380391958
	.quad	0x3fe606448cae329a              # double 0.68826510883953351
	.quad	0x3fe78fb39684e75c              # double 0.73629168890259278
	.quad	0x3fc8385cb27ee93c              # double 0.18922003474819771
	.quad	0x3fc9ba1fed0eb1b0              # double 0.20099257540767956
	.quad	0x3fe3793daceba044              # double 0.60854991696852112
	.quad	0x3fe10c926c05674a              # double 0.53278466318008921
	.quad	0x3fe208ec5d8fd9d6              # double 0.56358927034198802
	.quad	0x3fdb2a6e9ce1d7f4              # double 0.42446484871413692
	.quad	0x3fcfd87a65720458              # double 0.24879388764751087
	.quad	0x3febf10206836808              # double 0.8731699111187945
	.quad	0x3fc7914c9c3eae30              # double 0.1841216814913067
	.quad	0x3fadc06816f087b0              # double 0.058108570862045794
	.quad	0x3fe8292453231a0f              # double 0.75502220380514184
	.quad	0x3fee04c1e506e1cf              # double 0.93808073741734599
	.quad	0x3fd7c73d99d37512              # double 0.37153568288870631
	.quad	0x3feaa1454ae9dd6d              # double 0.83218636161374848
	.quad	0x3fe015bb433aea6d              # double 0.50265277033697731
	.quad	0x3fd78c46f6aebd0a              # double 0.36793684091658518
	.quad	0x3fc7b5c689e152e4              # double 0.185234849285414
	.quad	0x3fd2d855705279b8              # double 0.29445396393739598
	.quad	0x3febf787a57fc430              # double 0.87396604846992965
	.quad	0x3feb51e3ff56a0f9              # double 0.85374641295223264
	.quad	0x3fd4998d91cd97a4              # double 0.32187213171561724
	.quad	0x3fee818d651b5c39              # double 0.95331449267803869
	.quad	0x3fe5d44dd48e9627              # double 0.68216601862940685
	.quad	0x3fdf3cde196c7124              # double 0.48809006197713445
	.quad	0x3fd5810b554416ca              # double 0.33600123717074537
	.quad	0x3fe3a2d60c8cc720              # double 0.6136274571528908
	.quad	0x3fbfde8cc6c99e18              # double 0.1244895921059811
	.quad	0x3fe881b433cbf3a6              # double 0.76583299747982347
	.quad	0x3fe4aeec9fa17f81              # double 0.64635306527996772
	.quad	0x3fe0ec3e13fae0db              # double 0.52883819486944661
	.quad	0x3fe5aa127612aad0              # double 0.67701075612179729
	.quad	0x3fe9f0800d41c962              # double 0.81060793484929783
	.quad	0x3fe4fe03226f4827              # double 0.65600735402609167
	.quad	0x3fe75d5f53ce29e6              # double 0.73014799469211478
	.quad	0x3fd805da0ff60a76              # double 0.37535716589642421
	.quad	0x3fe3747db13abd81              # double 0.60797009101035837
	.quad	0x3fa8db8bb8fab720              # double 0.048550001459586989
	.quad	0x3fe2c6583583352e              # double 0.58671198321977669
	.quad	0x3fdab9c3414c73ae              # double 0.41758805634327245
	.quad	0x3fe974cd73dcb4d1              # double 0.79550812367747359
	.quad	0x3f967158c23cb280              # double 0.021916758399287861
	.quad	0x3fe89013ff45dcf2              # double 0.76758766038883963
	.quad	0x3fba4809e0a44838              # double 0.10266172155778086
	.quad	0x3fbeca81ebeaf060              # double 0.12027751931867803
	.quad	0x3fe6f9097cbc1ef3              # double 0.71790003168368199
	.quad	0x3fef977e9fb7071d              # double 0.98724299616171473
	.quad	0x3fe0d1a4efe73a07              # double 0.52559134346103142
	.quad	0x3fc23ea3fc44a2c4              # double 0.14253663842943898
	.quad	0x3fecbe4d1174d78d              # double 0.89823010835128658
	.quad	0x3fc021fda869dd70              # double 0.12603731845204491
	.quad	0x3fe0006897f49427              # double 0.50004987410341506
	.quad	0x3fc269790252a430              # double 0.14384377110880697
	.quad	0x3fdb5935d1710d18              # double 0.42731996014863816
	.quad	0x3feba7944e2c3ce8              # double 0.8642064596951089
	.quad	0x3fe3b41cd1eb1c52              # double 0.61573639869392083
	.quad	0x3fe578a036282a42              # double 0.6709748323203899
	.quad	0x3fdffa46220a9090              # double 0.49965051006643879
	.quad	0x3fea4f11041b4d8f              # double 0.82215166856842525
	.quad	0x3feb19fdde4280d8              # double 0.84692281160462368
	.quad	0x3fee5b51129fa2af              # double 0.94864705693642815
	.quad	0x3fedf807042db872              # double 0.93652678314334836
	.quad	0x3fe0240fd95c8e15              # double 0.50440208867479674
	.quad	0x3fc16d9532336c54              # double 0.13615670157637061
	.quad	0x3fca4da0fe13381c              # double 0.20549404531487958
	.quad	0x3fee4f80065e0843              # double 0.94720460170379572
	.quad	0x3fc612c4146a48e4              # double 0.1724476909335585
	.quad	0x3fc0014be368afac              # double 0.12503956417037665
	.quad	0x3fd9647bd10a2902              # double 0.39675803579361013
	.quad	0x3fc66929adc9f228              # double 0.17508431421073678
	.quad	0x3fe63dfd14e822fd              # double 0.69506696780544497
	.quad	0x3f7451ffd928d880              # double 0.004961013228742428
	.quad	0x3fc61e4e5c189414              # double 0.1727998685538813
	.quad	0x3febe6347926cd43              # double 0.8718511930696099
	.quad	0x3fc559e8a0881430              # double 0.16680629576163275
	.quad	0x3fd3e0f7466fa1f0              # double 0.31060582998773523
	.quad	0x3f9caf6745115d80              # double 0.028012860861364342
	.quad	0x3fe3b51bdc8b876e              # double 0.61585801196291157
	.quad	0x3fd4752b05200b2a              # double 0.31965137005333821
	.quad	0x3fb6dcd7dfdc78a8              # double 0.089307300714127735
	.quad	0x3fee389369c516f2              # double 0.94440622957401232
	.quad	0x3fc6a3856a50b4cc              # double 0.1768652695767855
	.quad	0x3fe5b00566ea56f2              # double 0.67773695088064145
	.quad	0x3fb03b98ccde6310              # double 0.063409376160404429
	.quad	0x3fe6d09b7117efe8              # double 0.71296474541258892
	.quad	0x3fd2bc32fcc61786              # double 0.29273676571789797
	.quad	0x3fe51acc3db9d866              # double 0.65952121787883011
	.quad	0x3fe07c11cfc59db0              # double 0.51514521198708074
	.quad	0x3fe7c23e944320dc              # double 0.74246148068871376
	.quad	0x3fe58f5b6be77f14              # double 0.67374964785628544
	.quad	0x3fc46e7ab9c15798              # double 0.15962156362610069
	.quad	0x3fd6b83aaa600870              # double 0.35499445570179144
	.quad	0x3fe6e2c121b55277              # double 0.71517998298311525
	.quad	0x3fc8406b0a29a6b8              # double 0.18946588512635798
	.quad	0x3fe05e55cb521eb7              # double 0.51151551924791405
	.quad	0x3fda58e5db6fd332              # double 0.41167589597107501
	.quad	0x3fc38f302d81f4a0              # double 0.15280725690891916
	.quad	0x3fed27a26ef43f8f              # double 0.91108819647523542
	.quad	0x3feb391ce3fb9e1d              # double 0.85072178390413777
	.quad	0x3fd3bb95337e9c36              # double 0.30832414654509266
	.quad	0x3fe72e4b95566749              # double 0.72440127532466037
	.quad	0x3fd1d770b41b0b8a              # double 0.27877442921106221
	.quad	0x3feaed4d3e8fd91e              # double 0.84146749705431367
	.quad	0x3fe98713492970bd              # double 0.79773868836812023
	.quad	0x3fcc56cdf5a7cf58              # double 0.2213990640153678
	.quad	0x3fd0ab5c9bb3e3d4              # double 0.26045909123746225
	.quad	0x3fd18a697d4fdf38              # double 0.27407300221919995
	.quad	0x3fee76d816d996a5              # double 0.95200733626252954
	.quad	0x3fdb20391f806fc2              # double 0.42384174419725806
	.quad	0x3fa4e2a9dd0ef440              # double 0.040791805491132482
	.quad	0x3fe00a058a7495fb              # double 0.50122334520409539
	.quad	0x3fe6d02196ab2b3d              # double 0.71290664126841075
	.quad	0x3fd4d69044afe3ca              # double 0.32559591968270907
	.quad	0x3fcc4c0910bec278              # double 0.22107041661867632
	.quad	0x3feefe35f5c115cb              # double 0.96853158949732554
	.quad	0x3fe66cdc1fc7156e              # double 0.70078855711532895
	.quad	0x3fe72ea82b227288              # double 0.72444542336195727
	.quad	0x3fc9a302af041f5c              # double 0.20028718515117816
	.quad	0x3fcbd7e10a9b8b78              # double 0.21752560632657114
	.quad	0x3fde9ba5aae54442              # double 0.47824994744320659
	.quad	0x3fec5c7227c0ab19              # double 0.88628490223104273
	.quad	0x3fe2b46215805232              # double 0.58451942634071075
	.quad	0x3fab1deed9e2d280              # double 0.052962745759406182
	.quad	0x3fe3fdd232be6c8b              # double 0.62473401938349704
	.quad	0x3fd5c39f936ef7bc              # double 0.3400649013309438
	.quad	0x3fc0c6ee75a6d744              # double 0.1310709070655155
	.quad	0x3fd92ded9e8d0ffc              # double 0.39342823489664602
	.quad	0x3fb7235112918240              # double 0.090382639916705365
	.quad	0x3fca36fe791f27f0              # double 0.20480328477998411
	.quad	0x3fbee12ed127b630              # double 0.12062351805044425
	.quad	0x3fdcb6b6f27980c0              # double 0.44865201644098462
	.quad	0x3fee00f4eb5ccbda              # double 0.93761678666339354
	.quad	0x3f9eb22a321baa60              # double 0.02997651987872485
	.quad	0x3fd166236bd55c84              # double 0.27185903101548825
	.quad	0x3fd0b8fa0f7176e6              # double 0.26129008777739526
	.quad	0x3fd21bf20d078b66              # double 0.28295565864953287
	.quad	0x3fe0acfe7ecccb02              # double 0.52111744657153758
	.quad	0x3fec410aff74a684              # double 0.88293981450733882
	.quad	0x3fdfc38f9420b616              # double 0.49631108728030549
	.quad	0x3fb187df47895b08              # double 0.068479495015122294
	.quad	0x3fef77b8daa3c604              # double 0.98336451247286094
	.quad	0x3fd5292c30eec32c              # double 0.33063797739582657
	.quad	0x3fd9721b727e7a76              # double 0.39758955174503485
	.quad	0x3fde4bbacac9eac6              # double 0.47337217143619303
	.quad	0x3fe2d69c64d27660              # double 0.58869762126751013
	.quad	0x3fe31fe5a3db9a34              # double 0.59764368060570527
	.quad	0x3fe5f479a0012a07              # double 0.6860931515778369
	.quad	0x3fe3b13c6234c2c6              # double 0.6153852384651024
	.quad	0x3fe1a64d6676c0c6              # double 0.55155057919002881
	.quad	0x3fd9150bec73570c              # double 0.3919095810973523
	.quad	0x3fedeef3af9a178b              # double 0.93541893288851108
	.quad	0x3fd043d5271b842e              # double 0.25414017504778286
	.quad	0x3fe8d72c79cb5899              # double 0.77626632488206149
	.quad	0x3fef006663032539              # double 0.96879882181489229
	.quad	0x3fd29304da19d6de              # double 0.29022332476539059
	.quad	0x3fcecefb1a945358              # double 0.24069155500242334
	.quad	0x3fc1e7c821328f94              # double 0.13988591786357729
	.quad	0x3fd2eec49647150c              # double 0.29582323718598569
	.quad	0x3fe69c3e7f48d74d              # double 0.70657276973973071
	.quad	0x3fd8d2021281929e              # double 0.38781787688484737
	.quad	0x3fc3755d4bea32d4              # double 0.15201917845515445
	.quad	0x3fe4d663ebf36120              # double 0.65117069324609034
	.quad	0x3feb3539a5a96602              # double 0.85024721484950327
	.quad	0x3fc602ab8f48d46c              # double 0.17195648666680385
	.quad	0x3fd071e3a33c0af8              # double 0.25695124569772032
	.quad	0x3fe343c82afe0d21              # double 0.60202415844870327
	.quad	0x3fca0280060fcf48              # double 0.20320129676803789
	.quad	0x3fd851d2b2ddb6b4              # double 0.37999408213986929
	.quad	0x3feceae4531b7849              # double 0.90367332679648726
	.quad	0x3fb1b75d6a8320f0              # double 0.069204176429710662
	.quad	0x3fa1cc84bc4d8000              # double 0.034763477312253599
	.quad	0x3fd7fb26a2e29f40              # double 0.37470403582345924
	.quad	0x3fe79f61d7d34a4d              # double 0.7382058348978916
	.quad	0x3fd4e2cafaca6b16              # double 0.32634233943251567
	.quad	0x3fedc5dff5023a0e              # double 0.93040464261304279
	.quad	0x3fe9a741726561fe              # double 0.80166694968198704
	.quad	0x3fec90ca85506212              # double 0.89267469442262581
	.quad	0x3feb607bfe0a1dc3              # double 0.85552787415593234
	.quad	0x3fe2fab493305b29              # double 0.59310368297415039
	.quad	0x3fe58d68097deb2e              # double 0.67351152280693838
	.quad	0x3fe27e3c647a555d              # double 0.57790965675910011
	.quad	0x3fb59ffc9a94a530              # double 0.0844724538225321
	.quad	0x3fe4a771d8a71798              # double 0.64544002833348468
	.quad	0x3fe472c87a96ea54              # double 0.63901161139740248
	.quad	0x3fc6220303cdc2a0              # double 0.17291295705537824
	.quad	0x3fe64fd0d16f9d14              # double 0.69724312692133816
	.quad	0x3fcb1ec30ed76fdc              # double 0.21187628006634796
	.quad	0x3febf13058a5b936              # double 0.8731919986146639
	.quad	0x3f6e166768582400              # double 0.0036727924041355386
	.quad	0x3fe4561e8734db2b              # double 0.63551260383142016
	.quad	0x3fe42ef2492f4d2b              # double 0.6307307652845443
	.quad	0x3fdae292efb48cde              # double 0.42007897766798219
	.quad	0x3fe5a8f386d3e616              # double 0.67687393506565985
	.quad	0x3fe36ad6fcef2ac6              # double 0.60679196740360264
	.quad	0x3fd4537636f00cec              # double 0.31759410252580156
	.quad	0x3f8e89316f85aac0              # double 0.01491011258686592
	.quad	0x3fc12b1c61111ca4              # double 0.13412813891975361
	.quad	0x3fd767fee6ed07de              # double 0.36572239447934674
	.quad	0x3fe6bd3e5917ec32              # double 0.71060101891578697
	.quad	0x3fd4a217f17a1292              # double 0.32239340383265713
	.quad	0x3feb41e97cd0b38b              # double 0.85179590585686193
	.quad	0x3fef927f794045db              # double 0.98663304979180155
	.quad	0x3fe30f3702d4f310              # double 0.59560728600590274
	.quad	0x3fad7e6f67cf72c0              # double 0.057605248853837221
	.quad	0x3fdfe6eb486f5fe8              # double 0.4984691817639928
	.quad	0x3fea42e65d638baa              # double 0.82066648712167489
	.quad	0x3fd48a6d3da3a9d2              # double 0.32094889659370296
	.quad	0x3fe6ee60334febfc              # double 0.71659860631859784
	.quad	0x3fc3b80ea1722298              # double 0.15405447848413156
	.quad	0x3fbeb4cee6457988              # double 0.11994641420230867
	.quad	0x3fb10dd7ecabe388              # double 0.066617484360803059
	.quad	0x3fb6356dce7d99d0              # double 0.086752760803938899
	.quad	0x3fef8d940b343556              # double 0.9860325068308764
	.quad	0x3fecb72cc7398e90              # double 0.89736021910762709
	.quad	0x3fc9a556933b60f0              # double 0.20035822094974476
	.quad	0x3fbdd186da2d2f28              # double 0.11647837473463751
	.quad	0x3fe9ac8964257a10              # double 0.80231160697786841
	.quad	0x3fb9b13391cdcdc8              # double 0.10036012944856687
	.quad	0x3fc1537e79527674              # double 0.13536053584987295
	.quad	0x3fe9fb1cc066ebaa              # double 0.81190335825464399
	.quad	0x3fd64a6af0b97ae4              # double 0.34829209812407513
	.quad	0x3f9a9d74dc9b3b00              # double 0.025991273846382335
	.quad	0x3fe6c4997ce77a2c              # double 0.71149896998742213
	.quad	0x3fa2d90760a600a0              # double 0.03681204848089803
	.quad	0x3fe1ea448f7ced0b              # double 0.55984714531897006
	.quad	0x3fe81a8fd9967503              # double 0.75324242112733975
	.quad	0x3fe8094579185b45              # double 0.75113176013369609
	.quad	0x3fe6ad66b1122bf7              # double 0.70866713127304493
	.quad	0x3fd3c974ab16309a              # double 0.30917088229831224
	.quad	0x3fb21122f4a6d008              # double 0.070573982934377111
	.quad	0x3fe408c26e7228ec              # double 0.62606927463028006
	.quad	0x3fe1b9766fa442cb              # double 0.55388948254593495
	.quad	0x3fd29380e212f5fe              # double 0.29025289609475624
	.quad	0x3fe5e9840837a9a8              # double 0.6847553406235436
	.quad	0x3fdaedd679f656cc              # double 0.42076646719338551
	.quad	0x3fd04f3132bffd2c              # double 0.25483350711870645
	.quad	0x3fe1c55c40485889              # double 0.55534184031672951
	.quad	0x3fc8ff64ccfa3750              # double 0.19529399880087306
	.quad	0x3fe922a376db3af4              # double 0.78547833646902498
	.quad	0x3fd518fa76290ba4              # double 0.32964955844016175
	.quad	0x3f78aa14265a7700              # double 0.0060215746977101414
	.quad	0x3fb209b0d3a2df58              # double 0.070460368794440398
	.quad	0x3fd3223ebfd30a14              # double 0.2989651559147728
	.quad	0x3fc9039c7aa96fa4              # double 0.19542270650242444
	.quad	0x3fe1b98997174e67              # double 0.55389861593216672
	.quad	0x3fcad9c28699b368              # double 0.20977050373349049
	.quad	0x3fccd9922fdbdc08              # double 0.22538974129540201
	.quad	0x3fd770198bebecf6              # double 0.36621702827660785
	.quad	0x3fe5b94f95a68c3e              # double 0.67887095669392017
	.quad	0x3fe9b85a2bc8bc8d              # double 0.80375393439853016
	.quad	0x3fe87dc4287a11e7              # double 0.76535232453948943
	.quad	0x3fea11549af6d89b              # double 0.81461553827718391
	.quad	0x3fdd960577be9556              # double 0.46228157705112005
	.quad	0x3febccbf0a87912a              # double 0.86874343926004838
	.quad	0x3facbb0b2919df30              # double 0.056114529387683354
	.quad	0x3fea1a8126563b60              # double 0.81573541152634376
	.quad	0x3fd7d7e840e55992              # double 0.37255293214311636
	.quad	0x3fb349db1db32980              # double 0.075345701933803965
	.quad	0x3fe771e7805666b3              # double 0.73265433374327527
	.quad	0x3fefabf5aab23667              # double 0.98974116648760179
	.quad	0x3fc1dba6617367a0              # double 0.13951568373050538
	.quad	0x3fdae25755367d74              # double 0.42006476708953433
	.quad	0x3fed9e187f4c26d9              # double 0.92554879057680772
	.quad	0x3feb039281ba6fb1              # double 0.84418607080032448
	.quad	0x3feab5e95f9a5fe5              # double 0.83470600769487346
	.quad	0x3fe004740f9fca4e              # double 0.50054362346265591
	.quad	0x3fe2a376524e86c6              # double 0.58245388103042539
	.quad	0x3feb026bdfc99718              # double 0.84404557903755784
	.quad	0x3fe865f8f955472e              # double 0.76244782159685598
	.quad	0x3fde8ca07f97b39a              # double 0.47733318767751032
	.quad	0x3fcec3369f58ada4              # double 0.24033243923746028
	.quad	0x3fe09dba7c4bdedf              # double 0.51925396229395548
	.quad	0x3fefeb9a9ae450bd              # double 0.99751024486842931
	.quad	0x3fe22818dfcb0c18              # double 0.56739467343902827
	.quad	0x3fca74742938acb0              # double 0.2066788865352911
	.quad	0x3fef0fc2c40c9f0b              # double 0.97067392626647241
	.quad	0x3f72ae93b2404900              # double 0.0045610207926236601
	.quad	0x3fe7fc20032aebb8              # double 0.7495269834392877
	.quad	0x3fdec03f28c39fa8              # double 0.4804838083350611
	.quad	0x3fbb8829122f2030              # double 0.10754639333674798
	.quad	0x3fbf84b9dae69688              # double 0.12311898798233234
	.quad	0x3fe801dbe7233b3f              # double 0.75022692817751835
	.quad	0x3fdd10dfb1a281bc              # double 0.45415489527843156
	.quad	0x3fefdd6b56af2a3e              # double 0.99577872210040375
	.quad	0x3fd1b6b38a0637ae              # double 0.27677620390829361
	.quad	0x3fdac5ea327697c8              # double 0.41832976272632694
	.quad	0x3feafab56a6ea589              # double 0.84310408389608071
	.quad	0x3fdb8110cd0716ea              # double 0.4297525408004349
	.quad	0x3fe9891f60b62dcc              # double 0.79798859490386453
	.quad	0x3fc0925497966dd8              # double 0.12946565057505555
	.quad	0x3fe161cca38de5eb              # double 0.54318839973637745
	.quad	0x3fdd3afdbe78c422              # double 0.45672553635364654
	.quad	0x3fddf66f2a44ea32              # double 0.46816615226603908
	.quad	0x3fe055b6103e1f97              # double 0.51046279117962257
	.quad	0x3fdc7b1d6c47f444              # double 0.44501433920214972
	.quad	0x3febf779a2d084d0              # double 0.8739593677493307
	.quad	0x3fe5270b4cd0406b              # double 0.66101613047250163
	.quad	0x3fda354108244a5e              # double 0.40950036807149626
	.quad	0x3fde8526243f12ea              # double 0.47687676944433
	.quad	0x3fe25d5f520b37bd              # double 0.57389799141105124
	.quad	0x3fee41fe973fac74              # double 0.94555596867338786
	.quad	0x3fed3828e1c75985              # double 0.91310543153194657
	.quad	0x3fdc3bbc4c2edfd8              # double 0.4411459678626648
	.quad	0x3febca0136b9b55d              # double 0.86840878189620307
	.quad	0x3f9e91ffea8c4e80              # double 0.029853819552114746
	.quad	0x3fe9bced02aa8bf6              # double 0.80431223412267516
	.quad	0x3fe3623bb0eb18a4              # double 0.60574135355343062
	.quad	0x3fdc26e836864346              # double 0.43987469982771576
	.quad	0x3fe74fc96c7a0f9a              # double 0.7284896010100852
	.quad	0x3fd68ceb0ca9c166              # double 0.35235096203452654
	.quad	0x3fdc930aa058ae9a              # double 0.44647470148877633
	.quad	0x3fdd26d09fe82d0c              # double 0.45549407592689373
	.quad	0x3fc3a2497b8c4430              # double 0.15339010746586856
	.quad	0x3fe522467de3b468              # double 0.66043400371348771
	.quad	0x3fec7b40330c9140              # double 0.89004526110196736
	.quad	0x3fea309d1452c129              # double 0.81843427628885934
	.quad	0x3fd5d4f718eba544              # double 0.34112336572305346
	.quad	0x3fee9be9cf45a3cc              # double 0.95653238756960368
	.quad	0x3fe39644232dab51              # double 0.61209303732662523
	.quad	0x3fb2ed3511599808              # double 0.07393199609359169
	.quad	0x3fd1443ac60f05e8              # double 0.26978940335911128
	.quad	0x3fd320b101a594d2              # double 0.29887032662220492
	.quad	0x3fe54981fadc8573              # double 0.66522311207169904
	.quad	0x3fe16ac7dd0b6e5c              # double 0.54428475544723254
	.quad	0x3fed9648d7568d96              # double 0.92459528024885418
	.quad	0x3fea1beb8bd5ff27              # double 0.81590821563438432
	.quad	0x3fc149545830f5a4              # double 0.13505033785069742
	.quad	0x3fdefa78249069b4              # double 0.48403743334497595
	.quad	0x3fe93c9a5c03d5cf              # double 0.78864782306362169
	.quad	0x3fbf9742a9f335b8              # double 0.12340180062456951
	.quad	0x3fecb828b9525b90              # double 0.89748035617491162
	.quad	0x3fe1bf36d7b8f8ba              # double 0.55459158070859549
	.quad	0x3feca4fc47915f26              # double 0.89513982751939092
	.quad	0x3fe014b0a6cdcedb              # double 0.50252564028638902
	.quad	0x3fd669e649335994              # double 0.35021359585280121
	.quad	0x3feee9e385a350fa              # double 0.96605087376749954
	.quad	0x3fe3fcd8193b4d2c              # double 0.62461476257377546
	.quad	0x3fd7a8f92d39e94a              # double 0.36968831459639218
	.quad	0x3fe07f548f055e1e              # double 0.51554325040610016
	.quad	0x3feb590800220c91              # double 0.85461807275750534
	.quad	0x3fc1c5192d022c2c              # double 0.13882746408157354
	.quad	0x3fcf8d0d89f3f8e4              # double 0.24649209247576842
	.quad	0x3fdc225a880d9b10              # double 0.43959677969398658
	.quad	0x3fded0131e2b3d10              # double 0.48144987054998101
	.quad	0x3fbf82c4db6950e0              # double 0.12308912617419621
	.quad	0x3fd9ec4f908cd2b0              # double 0.40504826656551085
	.quad	0x3fdfb30df036bdd0              # double 0.49530361612684448
	.quad	0x3fe5a18ed9671322              # double 0.67597143613292965
	.quad	0x3fd17af49f342652              # double 0.27312961146580961
	.quad	0x3fe4dcdbe1721ea2              # double 0.65196031601313487
	.quad	0x3fd4c43edb13c1d8              # double 0.32447787660842442
	.quad	0x3fe1a119dca73e19              # double 0.55091565224023775
	.quad	0x3fe724ebf449f9c9              # double 0.72325704300583837
	.quad	0x3fde24c96fbec7dc              # double 0.47099529183026134
	.quad	0x3fee6692f0918f99              # double 0.95002123819402862
	.quad	0x3fe477050c9f6999              # double 0.63952877488491133
	.quad	0x3fd92619f51d5072              # double 0.3929505246826529
	.quad	0x3fea768fd59e545f              # double 0.82697288248403911
	.quad	0x3fef208cb8494faf              # double 0.97272335046226554
	.quad	0x3fef5f611ecfdee5              # double 0.98039299028365844
	.quad	0x3fd995ed58be812e              # double 0.39977582613393536
	.quad	0x3fddc624fd266010              # double 0.46521877977056736
	.quad	0x3fec7f1b63f3f64c              # double 0.89051599046769913
	.quad	0x3fdb97dbf9d98976              # double 0.43114375495328916
	.quad	0x3fed2ab4bc6f2002              # double 0.91146313479930563
	.quad	0x3fee57b80a15a37e              # double 0.9482078740085027
	.quad	0x3fb068da6f759d10              # double 0.064099933826231359
	.quad	0x3fee79e471bff167              # double 0.95237943856004115
	.quad	0x3fed3146c349c3cb              # double 0.912265187666088
	.quad	0x3fb57d39df051be8              # double 0.083942048023444849
	.quad	0x3fd641a9b2d1fe22              # double 0.34775774443548546
	.quad	0x3fd681a550e8d33a              # double 0.35166294957462052
	.quad	0x3fed13e0499f1fea              # double 0.90867628459181771
	.quad	0x3fe14f6edb8805df              # double 0.54094641568388713
	.quad	0x3fd52a55b61c991c              # double 0.33070891174647143
	.quad	0x3feadaf6abe94d52              # double 0.83922895027573419
	.quad	0x3fec793fe1b136aa              # double 0.88980096893802352
	.quad	0x3fe9b352d59a63aa              # double 0.80314008445121954
	.quad	0x3fd01406876de406              # double 0.25122225976480228
	.quad	0x3fe6990a2c14b644              # double 0.70618160829116805
	.quad	0x3fc2677efb927870              # double 0.14378344806476973
	.quad	0x3fe2801ca3e74bac              # double 0.57813865673448595
	.quad	0x3fe873e3c29de206              # double 0.76414669047432038
	.quad	0x3fdf7a0bef18f568              # double 0.49182413434376437
	.quad	0x3fe5cbc785525b71              # double 0.68112541236301472
	.quad	0x3fe98b9b390e39bc              # double 0.7982917894712993
	.quad	0x3fd2107fa8166e4e              # double 0.28225699820334149
	.quad	0x3fd4bf630ec8c756              # double 0.32418133205202559
	.quad	0x3fec68bfed6aa48d              # double 0.88778683062004549
	.quad	0x3fe66fede31995a7              # double 0.70116323810059533
	.quad	0x3fd4dba731ff3b8e              # double 0.32590656168479704
	.quad	0x3fecc3a097ee5b8f              # double 0.8988802878765102
	.quad	0x3feb205a91b26b54              # double 0.84769943672595582
	.quad	0x3fe29141daee2dd5              # double 0.58023159751740627
	.quad	0x3fdcf72b137a37f8              # double 0.45258595373240906
	.quad	0x3fdc793e3847bf32              # double 0.44490008827323202
	.quad	0x3fe60bf671c38514              # double 0.68896028727991387
	.quad	0x3fe76cfa8aa51e13              # double 0.73205306128596914
	.quad	0x3feb9440c59b97f2              # double 0.86184729190131137
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
